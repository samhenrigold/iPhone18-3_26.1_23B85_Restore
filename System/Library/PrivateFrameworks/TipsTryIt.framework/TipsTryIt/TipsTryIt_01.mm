uint64_t TipsTryItView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_26F17FEF4();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F0, &qword_26F1827D8);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = v18 - v7;
  v23 = v1;
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F8, &qword_26F1827E0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A00, &qword_26F1827E8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A08, &qword_26F1827F0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A10, &qword_26F1827F8);
  v12 = sub_26F13AC54(&qword_2806D4A18, &qword_2806D4A08, &qword_26F1827F0, MEMORY[0x277CE1198]);
  v13 = sub_26F13AC54(&qword_2806D4A20, &qword_2806D4A10, &qword_26F1827F8, MEMORY[0x277CDF028]);
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v9;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26F17FA74();
  sub_26F17FEE4();
  sub_26F13AC54(&qword_2806D4A28, &qword_2806D49F0, &qword_26F1827D8, MEMORY[0x277CDD978]);
  sub_26F159C8C(&qword_2806D4A30, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v16 = v19;
  v15 = v20;
  sub_26F1801D4();
  (*(v21 + 8))(v5, v15);
  return (*(v6 + 8))(v8, v16);
}

uint64_t sub_26F154A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A10, &qword_26F1827F8);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = type metadata accessor for TipsTryItView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A00, &qword_26F1827E8);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = sub_26F17FD74();
  sub_26F158FA4(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipsTryItView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_26F158884(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v31 = v14;
  v32 = 0;
  LOBYTE(v33) = 1;
  v34 = sub_26F1588E8;
  v35 = v16;
  sub_26F158FA4(a1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipsTryItView);
  v17 = swift_allocObject();
  sub_26F158884(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A80, &qword_26F182888);
  sub_26F1589C8();
  sub_26F180464();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A08, &qword_26F1827F0);
  v19 = sub_26F13AC54(&qword_2806D4A18, &qword_2806D4A08, &qword_26F1827F0, MEMORY[0x277CE1198]);
  v20 = sub_26F13AC54(&qword_2806D4A20, &qword_2806D4A10, &qword_26F1827F8, MEMORY[0x277CDF028]);
  v21 = v26;
  sub_26F1802A4();
  (*(v27 + 8))(v6, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AA0, &qword_26F182890);
  sub_26F17FB34();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26F1826D0;
  sub_26F17FB24();
  v31 = v18;
  v32 = v21;
  v33 = v19;
  v34 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v28;
  MEMORY[0x274389EA0](2, v22, v28, OpaqueTypeConformance2);

  return (*(v29 + 8))(v13, v24);
}

uint64_t sub_26F154ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_26F180564();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AA8, &qword_26F1828C8);
  return sub_26F154F38(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_26F154F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v84 = a3;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB0, &qword_26F1828D0);
  MEMORY[0x28223BE20](v81);
  v79 = (&v63 - v5);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB8, &qword_26F1828D8) - 8;
  v6 = MEMORY[0x28223BE20](v82);
  v83 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v63 - v8;
  v9 = type metadata accessor for TipsTryItView(0);
  v10 = *(v9 - 8);
  v78 = v9 - 8;
  v86 = v10;
  v87 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26F17FE54();
  MEMORY[0x28223BE20](v13);
  v14 = sub_26F17F8F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AC0, &qword_26F1828E0);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v19 = &v63 - v18;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AC8, &qword_26F1828E8);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v63 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AD0, &qword_26F1828F0);
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v63 - v21;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AD8, &qword_26F1828F8);
  v76 = *(v77 - 8);
  v22 = MEMORY[0x28223BE20](v77);
  v75 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v88 = &v63 - v24;
  v72 = a1;
  sub_26F17F9C4();
  sub_26F17F9C4();
  sub_26F180564();
  sub_26F17F9A4();
  v95 = v99;
  *&v90 = v96;
  BYTE8(v90) = v97;
  *&v91 = v98;
  BYTE8(v91) = v99;
  v92 = v100;
  v93 = xmmword_26F1826E0;
  v94 = 0;
  sub_26F17FE94();
  sub_26F17F8D4();
  v89 = type metadata accessor for TipsTryItView;
  v25 = a2;
  v65 = a2;
  v85 = v12;
  sub_26F158FA4(a2, v12, type metadata accessor for TipsTryItView);
  v86 = *(v86 + 80);
  v26 = (v86 + 16) & ~v86;
  v27 = swift_allocObject();
  sub_26F158884(v12, v27 + v26);
  sub_26F159C8C(&qword_2806D4AE0, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_26F1804C4();

  (*(v15 + 8))(v17, v14);
  sub_26F17F924();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AE8, &qword_26F182900);
  v29 = sub_26F158B98();
  v30 = sub_26F13AC54(&qword_2806D4B40, &qword_2806D4AC0, &qword_26F1828E0, MEMORY[0x277CDF728]);
  v31 = v66;
  v32 = v68;
  sub_26F180304();
  (*(v69 + 8))(v19, v32);
  v33 = v85;
  sub_26F158FA4(v25, v85, v89);
  v64 = v26;
  v34 = swift_allocObject() + v26;
  sub_26F158884(v33, v34);
  *&v90 = v28;
  *(&v90 + 1) = v32;
  *&v91 = v29;
  *(&v91 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v67;
  v37 = v70;
  sub_26F180254();

  (*(v71 + 8))(v31, v37);
  v38 = v65;
  sub_26F158FA4(v65, v33, v89);
  v39 = v64;
  v40 = swift_allocObject();
  sub_26F158884(v33, v40 + v39);
  *&v90 = v37;
  *(&v90 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v73;
  sub_26F1802B4();

  (*(v74 + 8))(v36, v41);
  v42 = sub_26F180544();
  v43 = v79;
  *v79 = v42;
  *(v43 + 8) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B48, &qword_26F182928);
  sub_26F155ABC(v38, v72, v43 + *(v45 + 44));
  type metadata accessor for TrainingManager(0);
  sub_26F13AC54(&qword_2806D4B50, &qword_2806D4AB0, &qword_26F1828D0, MEMORY[0x277CE11A8]);
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  v46 = v80;
  sub_26F180244();
  sub_26F13AB10(v43, &qword_2806D4AB0, &qword_26F1828D0);
  sub_26F17F9C4();
  sub_26F17F9C4();
  sub_26F180564();
  sub_26F17F9A4();
  v47 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B58, &qword_26F182930) + 36)];
  v48 = v91;
  *v47 = v90;
  *(v47 + 1) = v48;
  *(v47 + 2) = v92;
  v49 = v85;
  sub_26F158FA4(v38, v85, v89);
  v50 = swift_allocObject();
  sub_26F158884(v49, v50 + v39);
  v51 = &v46[*(v82 + 44)];
  v52 = v46;
  *v51 = 0;
  *(v51 + 1) = 0;
  *(v51 + 2) = sub_26F15A1AC;
  *(v51 + 3) = v50;
  v53 = v76;
  v54 = *(v76 + 16);
  v55 = v75;
  v56 = v88;
  v57 = v77;
  v54(v75, v88, v77);
  v58 = v83;
  sub_26F158ECC(v52, v83);
  v59 = v84;
  v54(v84, v55, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B60, &qword_26F182938);
  sub_26F158ECC(v58, &v59[*(v60 + 48)]);
  sub_26F158F3C(v52);
  v61 = *(v53 + 8);
  v61(v56, v57);
  sub_26F158F3C(v58);
  return (v61)(v55, v57);
}

uint64_t sub_26F155ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InstructionView(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v25 - v10);
  v12 = (a1 + *(type metadata accessor for TipsTryItView(0) + 36));
  v13 = *v12;
  v14 = v12[1];
  v31[0] = v13;
  v31[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180434();
  v15 = v32[0];
  v16 = v32[1];
  v17 = *&v32[2];
  type metadata accessor for TrainingManager(0);
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  v18 = sub_26F17F914();
  sub_26F167438(v18, v19 & 1, v15, v16, v11, v17);
  v20 = sub_26F180564();
  v22 = v21;
  sub_26F155DDC(a1, a2, v32);
  memcpy(v28, v32, sizeof(v28));
  memcpy(v29, v32, 0x160uLL);
  sub_26F13A854(v28, v31, &qword_2806D4B68, &qword_26F182940);
  sub_26F13AB10(v29, &qword_2806D4B68, &qword_26F182940);
  memcpy(v27, v28, sizeof(v27));
  LOBYTE(a2) = sub_26F180014();
  v26 = v9;
  sub_26F158FA4(v11, v9, type metadata accessor for InstructionView);
  sub_26F158FA4(v9, a3, type metadata accessor for InstructionView);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B70, &qword_26F182948) + 48);
  v31[0] = v20;
  v31[1] = v22;
  memcpy(&v31[2], v27, 0x160uLL);
  LOBYTE(v31[46]) = a2;
  *(&v31[46] + 1) = *v30;
  HIDWORD(v31[46]) = *&v30[3];
  v31[47] = 0xBFF0000000000000;
  memcpy((a3 + v23), v31, 0x180uLL);
  sub_26F13A854(v31, v32, &qword_2806D4B78, &qword_26F182950);
  sub_26F15900C(v11);
  v32[0] = v20;
  v32[1] = v22;
  memcpy(&v32[2], v27, 0x160uLL);
  v33 = a2;
  *v34 = *v30;
  *&v34[3] = *&v30[3];
  v35 = 0xBFF0000000000000;
  sub_26F13AB10(v32, &qword_2806D4B78, &qword_26F182950);
  return sub_26F15900C(v26);
}

uint64_t sub_26F155DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a2;
  v36 = a3;
  v37 = sub_26F17F9E4();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v30 = v5;
  v31 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TipsTryItView(0);
  v7 = v6 - 8;
  v29 = *(v6 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TrainingManager(0);
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  v35 = sub_26F17F914();
  v28 = v10;
  v11 = *(v7 + 52);
  v33 = a1;
  v12 = *(a1 + v11);
  swift_getKeyPath();
  *&v74 = v12;
  sub_26F17F7C4();

  if (*(v12 + 48) == 1)
  {
    swift_getKeyPath();
    *&v74 = v12;
    sub_26F17F7C4();

    v13 = *(v12 + 50);
  }

  else
  {
    v13 = 0;
  }

  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v13;
  v14 = v33;
  sub_26F158FA4(v33, &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TipsTryItView);
  v15 = v31;
  v16 = v37;
  (*(v4 + 16))(v31, v32, v37);
  v17 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v18 = (v8 + *(v4 + 80) + v17) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_26F158884(v9, v19 + v17);
  (*(v4 + 32))(v19 + v18, v15, v16);
  v20 = sub_26F180564();
  v31 = v20;
  v37 = v21;
  v77 = v28 & 1;
  LOBYTE(v16) = v28 & 1;
  LODWORD(v32) = v28 & 1;
  v22 = sub_26F17FD74();
  LOBYTE(v39) = 1;
  sub_26F1569D4(v14, &v74);
  v63 = *&v75[176];
  v64 = *&v75[192];
  v65 = *&v75[208];
  v66 = *&v75[224];
  v59 = *&v75[112];
  v60 = *&v75[128];
  v61 = *&v75[144];
  v62 = *&v75[160];
  v55 = *&v75[48];
  v56 = *&v75[64];
  v57 = *&v75[80];
  v58 = *&v75[96];
  v51 = v74;
  v52 = *v75;
  v53 = *&v75[16];
  v54 = *&v75[32];
  v67[12] = *&v75[176];
  v67[13] = *&v75[192];
  v67[14] = *&v75[208];
  v67[15] = *&v75[224];
  v67[8] = *&v75[112];
  v67[9] = *&v75[128];
  v67[10] = *&v75[144];
  v67[11] = *&v75[160];
  v67[4] = *&v75[48];
  v67[5] = *&v75[64];
  v67[6] = *&v75[80];
  v67[7] = *&v75[96];
  v67[0] = v74;
  v67[1] = *v75;
  v67[2] = *&v75[16];
  v67[3] = *&v75[32];
  sub_26F13A854(&v51, v73, &qword_2806D4B80, &qword_26F1829B0);
  sub_26F13AB10(v67, &qword_2806D4B80, &qword_26F1829B0);
  *&v50[199] = v63;
  *&v50[215] = v64;
  *&v50[231] = v65;
  *&v50[247] = v66;
  *&v50[135] = v59;
  *&v50[151] = v60;
  *&v50[167] = v61;
  *&v50[183] = v62;
  *&v50[71] = v55;
  *&v50[87] = v56;
  *&v50[103] = v57;
  *&v50[119] = v58;
  *&v50[7] = v51;
  *&v50[23] = v52;
  *&v50[39] = v53;
  *&v50[55] = v54;
  v23 = v39;
  v24 = v35;
  *&v68 = v35;
  BYTE8(v68) = v16;
  HIDWORD(v68) = *&v76[3];
  *(&v68 + 9) = *v76;
  *&v69 = KeyPath;
  *(&v69 + 1) = sub_26F1590D8;
  v25 = v34;
  *&v70 = v34;
  *(&v70 + 1) = sub_26F159480;
  *&v71 = v19;
  *(&v71 + 1) = v20;
  v72 = v37;
  *&v49[4] = v37;
  v49[2] = v70;
  v49[3] = v71;
  v49[0] = v68;
  v49[1] = v69;
  v73[0] = v22;
  v73[1] = 0;
  LOBYTE(v73[2]) = v39;
  memcpy(&v73[2] + 1, v50, 0x107uLL);
  memcpy(&v49[4] + 8, v73, 0x118uLL);
  memcpy(v36, v49, 0x160uLL);
  v74 = v22;
  v75[0] = v23;
  memcpy(&v75[1], v50, 0x107uLL);
  sub_26F13A854(&v68, &v39, &qword_2806D4B88, &qword_26F1829B8);
  sub_26F13A854(v73, &v39, &qword_2806D4B90, &qword_26F1829C0);
  sub_26F13AB10(&v74, &qword_2806D4B90, &qword_26F1829C0);
  v39 = v24;
  v40 = v32;
  *v41 = *v76;
  *&v41[3] = *&v76[3];
  v42 = KeyPath;
  v43 = sub_26F1590D8;
  v44 = v25;
  v45 = sub_26F159480;
  v46 = v19;
  v47 = v31;
  v48 = v37;
  return sub_26F13AB10(&v39, &qword_2806D4B88, &qword_26F1829B8);
}

uint64_t sub_26F1564A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v6 = sub_26F17F9E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = type metadata accessor for TipsTryItView(0);
  v24 = *(v13 - 8);
  v14 = *(v24 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26F180354();
  sub_26F158FA4(a2, v15, type metadata accessor for TipsTryItView);
  v16 = *(v7 + 16);
  v16(v12, v26, v6);
  v16(v10, v27, v6);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = *(v7 + 80);
  v19 = (v14 + v18 + v17) & ~v18;
  v20 = (v8 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  sub_26F158884(v15, v21 + v17);
  v22 = *(v7 + 32);
  v22(v21 + v19, v12, v6);
  result = (v22)(v21 + v20, v10, v6);
  *a4 = v25;
  a4[1] = sub_26F15A080;
  a4[2] = v21;
  a4[3] = 0;
  a4[4] = 0;
  return result;
}

void sub_26F156708(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_26F17FE54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F17FE64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TipsTryItView(0);
  v12 = *(a1 + v11[11]);
  MinY = *(v12 + 64);
  if (MinY != 0.0)
  {
    if (MinY <= 0.0)
    {
      sub_26F17FEA4();
      sub_26F17F9D4();
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      (*(v8 + 8))(v10, v7);
      v42.origin.x = v15;
      v42.origin.y = v17;
      v42.size.width = v19;
      v42.size.height = v21;
      MinY = CGRectGetMinY(v42);
    }

    sub_26F17F9B4();
    v22 = (a1 + v11[9]);
    v23 = *v22;
    v24 = v22[1];
    v39 = MinY - v25;
    v40 = v23;
    v41 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    sub_26F180424();
  }

  if (*(v12 + 56) != 0.0)
  {
    sub_26F17FE94();
    sub_26F17F9D4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    (*(v4 + 8))(v6, v3);
    v43.origin.x = v27;
    v43.origin.y = v29;
    v43.size.width = v31;
    v43.size.height = v33;
    MaxY = CGRectGetMaxY(v43);
    v35 = (a1 + v11[10]);
    v36 = *v35;
    v37 = v35[1];
    v39 = MaxY * 0.5 - *(v12 + 56);
    v40 = v36;
    v41 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    sub_26F180424();
  }
}

uint64_t sub_26F1569D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = sub_26F17FE84();
  v96 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  MEMORY[0x28223BE20](v85);
  v86 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v82 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v80 - v10;
  MEMORY[0x28223BE20](v9);
  v95 = (&v80 - v11);
  KeyPath = sub_26F17FD64();
  v12 = *(KeyPath - 8);
  v13 = MEMORY[0x28223BE20](KeyPath);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v80 - v16);
  v18 = type metadata accessor for TipsTryItView(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_26F158FA4(a1, &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipsTryItView);
  v21 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v93 = swift_allocObject();
  sub_26F158884(&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v93 + v21);
  type metadata accessor for TrainingManager(0);
  v98 = sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  *&v92 = COERCE_DOUBLE(sub_26F17F914());
  v23 = v22;
  v97 = v18;
  v24 = *(v18 + 40);
  v25 = a1;
  v26 = a1 + v24;
  v28 = *(v26 + 8);
  v117 = *v26;
  v27 = v117;
  v118 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  sub_26F180554();
  sub_26F17FB44();
  v91 = v23 & 1;
  v150 = v23 & 1;
  v29 = v25;
  sub_26F1537D4(v17);
  v30 = KeyPath;
  (*(v12 + 104))(v15, *MEMORY[0x277CE0278], KeyPath);
  v88 = sub_26F159864(v17, v15);
  v31 = *(v12 + 8);
  v31(v15, v30);
  v31(v17, v30);
  KeyPath = swift_getKeyPath();
  v89 = sub_26F180034();
  v117 = v27;
  v118 = v28;
  sub_26F180414();
  v32 = v29;
  if (*&v102 <= 0.0 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868), sub_26F17F944(), v117 <= 0.0))
  {
    v83 = v29;
    v84 = a2;
    v33 = v95;
    sub_26F15340C(v95);
    v34 = v96;
    v35 = v94;
    v36 = v87;
    (*(v96 + 104))(v94, *MEMORY[0x277CE0558], v87);
    (*(v34 + 56))(v35, 0, 1, v36);
    v37 = v86;
    v38 = *(v85 + 48);
    sub_26F13A854(v33, v86, &qword_2806D4200, &qword_26F181B88);
    sub_26F13A854(v35, v37 + v38, &qword_2806D4200, &qword_26F181B88);
    v39 = *(v34 + 48);
    if (v39(v37, 1, v36) == 1)
    {
      sub_26F13AB10(v35, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v33, &qword_2806D4200, &qword_26F181B88);
      v40 = v39(v37 + v38, 1, v36);
      v32 = v83;
      a2 = v84;
      if (v40 == 1)
      {
        sub_26F13AB10(v37, &qword_2806D4200, &qword_26F181B88);
        goto LABEL_12;
      }
    }

    else
    {
      v41 = v82;
      sub_26F13A854(v37, v82, &qword_2806D4200, &qword_26F181B88);
      if (v39(v37 + v38, 1, v36) != 1)
      {
        v42 = v96;
        v43 = v81;
        (*(v96 + 32))(v81, v37 + v38, v36);
        sub_26F159C8C(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        sub_26F1806F4();
        v44 = *(v42 + 8);
        v44(v43, v36);
        sub_26F13AB10(v94, &qword_2806D4200, &qword_26F181B88);
        sub_26F13AB10(v95, &qword_2806D4200, &qword_26F181B88);
        v44(v41, v36);
        sub_26F13AB10(v37, &qword_2806D4200, &qword_26F181B88);
        v32 = v83;
        a2 = v84;
        goto LABEL_12;
      }

      sub_26F13AB10(v94, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v95, &qword_2806D4200, &qword_26F181B88);
      (*(v96 + 8))(v41, v36);
      v32 = v83;
      a2 = v84;
    }

    sub_26F13AB10(v37, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_12;
  }

  v117 = v27;
  v118 = v28;
  sub_26F180414();
  sub_26F17F944();
LABEL_12:
  sub_26F17F894();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v151 = 0;
  v53 = *(v32 + *(v97 + 44));
  swift_getKeyPath();
  v117 = v53;
  sub_26F17F7C4();

  if (*(*&v53 + 53) != 1 || (v54 = 1.0, (sub_26F15AF20() & 1) == 0))
  {
    v54 = 0.0;
  }

  if (v88)
  {
    v55 = 0.5;
  }

  else
  {
    v55 = 1.0;
  }

  v56 = sub_26F1805C4();
  swift_getKeyPath();
  v117 = v53;
  sub_26F17F7C4();

  v57 = *(*&v53 + 53) == 0;
  v58 = 0.0;
  v101 = 1;
  if (!v57)
  {
    v58 = 1.0;
  }

  v59 = *&v92;
  *&v102 = v92;
  v60 = v91;
  BYTE8(v102) = v91;
  *(&v102 + 9) = *v149;
  HIDWORD(v102) = *&v149[3];
  v61 = v146;
  v62 = v147;
  v108 = v146;
  v109 = v147;
  v63 = v148;
  v110 = v148;
  v64 = v142;
  v65 = v143;
  v104 = v142;
  v105 = v143;
  v66 = v145;
  v67 = v144;
  v107 = v145;
  v106 = v144;
  v68 = KeyPath;
  *&v111 = KeyPath;
  *(&v111 + 1) = v55;
  v69 = v89;
  LOBYTE(v112) = v89;
  DWORD1(v112) = *&v152[3];
  *(&v112 + 1) = *v152;
  *(&v112 + 1) = v46;
  *&v113 = v48;
  *(&v113 + 1) = v50;
  *&v114 = v52;
  BYTE8(v114) = 0;
  *(&v114 + 9) = v153[0];
  HIDWORD(v114) = *(v153 + 3);
  *&v115 = v54;
  *(&v115 + 1) = v56;
  *&v100[183] = v113;
  *&v100[215] = v115;
  *&v100[199] = v114;
  *&v100[119] = v147;
  *&v100[135] = v148;
  *&v100[151] = v111;
  *&v100[167] = v112;
  *&v100[55] = v143;
  *&v100[71] = v144;
  *&v103 = sub_26F159860;
  v70 = v93;
  *(&v103 + 1) = v93;
  *&v100[87] = v145;
  *&v100[103] = v146;
  *&v100[7] = v102;
  *&v116 = v58;
  *(&v116 + 1) = 0x4000000000000000;
  *&v100[23] = v103;
  *&v100[39] = v142;
  *&v100[231] = v116;
  v71 = *&v100[208];
  *(a2 + 201) = *&v100[192];
  *(a2 + 217) = v71;
  *(a2 + 233) = *&v100[224];
  v72 = *&v100[144];
  *(a2 + 137) = *&v100[128];
  *(a2 + 153) = v72;
  v73 = *&v100[176];
  *(a2 + 169) = *&v100[160];
  *(a2 + 185) = v73;
  v74 = *&v100[80];
  *(a2 + 73) = *&v100[64];
  *(a2 + 89) = v74;
  v75 = *&v100[112];
  *(a2 + 105) = *&v100[96];
  *(a2 + 121) = v75;
  v76 = *&v100[16];
  *(a2 + 9) = *v100;
  *(a2 + 25) = v76;
  v77 = *&v100[48];
  *(a2 + 41) = *&v100[32];
  *(a2 + 57) = v77;
  v125 = v61;
  v126 = v62;
  v127 = v63;
  v121 = v64;
  v122 = v65;
  v78 = v101;
  *a2 = 0;
  *(a2 + 8) = v78;
  *(a2 + 248) = *&v100[239];
  v117 = v59;
  LOBYTE(v118) = v60;
  *(&v118 + 1) = *v149;
  HIDWORD(v118) = *&v149[3];
  v119 = sub_26F159860;
  v120 = v70;
  v124 = v66;
  v123 = v67;
  v128 = v68;
  v129 = v55;
  v130 = v69;
  *&v131[3] = *&v152[3];
  *v131 = *v152;
  v132 = v46;
  v133 = v48;
  v134 = v50;
  v135 = v52;
  v136 = 0;
  *v137 = v153[0];
  *&v137[3] = *(v153 + 3);
  v138 = v54;
  v139 = v56;
  v140 = v58;
  v141 = 0x4000000000000000;
  sub_26F13A854(&v102, &v99, &qword_2806D4B98, &qword_26F182A48);
  return sub_26F13AB10(&v117, &qword_2806D4B98, &qword_26F182A48);
}

uint64_t sub_26F1576FC(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for TipsTryItView(0) + 44)) + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask))
  {

    sub_26F180924();
  }

  sub_26F15CAF4();
  return sub_26F15C7B0();
}

uint64_t sub_26F157774()
{
  v0 = sub_26F17FB04();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo");
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_26F1535EC((&v5 - v2));
  MEMORY[0x27438A090](v1);
  sub_26F17FAF4();
  sub_26F180484();
  sub_26F13AB10(v3, &qword_2806D4A68, "Vo");
  type metadata accessor for TipsTryItView(0);
  return sub_26F15D704();
}

uint64_t sub_26F1578A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26F1803B4();
  sub_26F180084();
  sub_26F1800C4();
  v3 = sub_26F1800E4();

  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_26F15791C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_26F17FEF4();
  v3 = *(v2 - 8);
  v20 = v2;
  v21 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F0, &qword_26F1827D8);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = v18 - v7;
  v23 = v1;
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F8, &qword_26F1827E0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A00, &qword_26F1827E8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A08, &qword_26F1827F0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A10, &qword_26F1827F8);
  v12 = sub_26F13AC54(&qword_2806D4A18, &qword_2806D4A08, &qword_26F1827F0, MEMORY[0x277CE1198]);
  v13 = sub_26F13AC54(&qword_2806D4A20, &qword_2806D4A10, &qword_26F1827F8, MEMORY[0x277CDF028]);
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v9;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26F17FA74();
  sub_26F17FEE4();
  sub_26F13AC54(&qword_2806D4A28, &qword_2806D49F0, &qword_26F1827D8, MEMORY[0x277CDD978]);
  sub_26F159C8C(&qword_2806D4A30, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  v16 = v19;
  v15 = v20;
  sub_26F1801D4();
  (*(v21 + 8))(v5, v15);
  return (*(v6 + 8))(v8, v16);
}

uint64_t sub_26F157C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_26F157D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 40);
}

uint64_t sub_26F157E4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F13A854(a1, &v5 - v3, &qword_2806D4200, &qword_26F181B88);
  return sub_26F17FC04();
}

uint64_t type metadata accessor for TipsTryItView(uint64_t a1)
{
  result = qword_2806D4A50;
  if (!qword_2806D4A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F157FD4(uint64_t a1)
{
  v2 = sub_26F17FD64();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26F17FB84();
}

unint64_t sub_26F1580A0()
{
  result = qword_2806D49E8;
  if (!qword_2806D49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49E8);
  }

  return result;
}

uint64_t sub_26F1581A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A38, &qword_26F182858);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A40, &qword_26F182860);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_26F158384(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A38, &qword_26F182858);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A40, &qword_26F182860);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_26F15854C(uint64_t a1)
{
  sub_26F158698(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88);
  if (v1 <= 0x3F)
  {
    sub_26F158698(319, &qword_2806D4A60, &qword_2806D4A68, "Vo");
    if (v2 <= 0x3F)
    {
      sub_26F1586EC(319);
      if (v3 <= 0x3F)
      {
        sub_26F158744(319);
        if (v4 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D4210, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_26F13FF30(319, &unk_2806D4218, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for TrainingManager(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F158698(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26F17F904();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26F1586EC(uint64_t a1)
{
  if (!qword_2806D4A70)
  {
    sub_26F17FD64();
    v1 = sub_26F17F904();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D4A70);
    }
  }
}

void sub_26F158744(uint64_t a1)
{
  if (!qword_2806D4A78)
  {
    sub_26F1580A0();
    v1 = sub_26F17F954();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D4A78);
    }
  }
}

uint64_t sub_26F1587A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49F0, &qword_26F1827D8);
  sub_26F17FEF4();
  sub_26F13AC54(&qword_2806D4A28, &qword_2806D49F0, &qword_26F1827D8, MEMORY[0x277CDD978]);
  sub_26F159C8C(&qword_2806D4A30, MEMORY[0x277CDE2A0], MEMORY[0x277CDE298]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F158884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsTryItView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1588E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TipsTryItView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F154ED8(a1, v6, a2);
}

uint64_t sub_26F158968()
{
  type metadata accessor for TipsTryItView(0);

  return sub_26F157774();
}

unint64_t sub_26F1589C8()
{
  result = qword_2806D4A88;
  if (!qword_2806D4A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A80, &qword_26F182888);
    sub_26F13AC54(&qword_2806D4A90, &qword_2806D4A98, &qword_26F183110, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4A88);
  }

  return result;
}

uint64_t sub_26F158A80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F17FC34();
  *a1 = result;
  return result;
}

uint64_t sub_26F158AAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F17FC34();
  *a1 = result;
  return result;
}

unint64_t sub_26F158B98()
{
  result = qword_2806D4AF0;
  if (!qword_2806D4AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4AE8, &qword_26F182900);
    sub_26F158C50();
    sub_26F13AC54(&qword_2806D4658, &qword_2806D4660, &qword_26F182178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4AF0);
  }

  return result;
}

unint64_t sub_26F158C50()
{
  result = qword_2806D4AF8;
  if (!qword_2806D4AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4B00, &qword_26F182908);
    sub_26F158D08();
    sub_26F13AC54(&qword_2806D4B30, &qword_2806D4B38, &qword_26F182920, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4AF8);
  }

  return result;
}

unint64_t sub_26F158D08()
{
  result = qword_2806D4B08;
  if (!qword_2806D4B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4B10, &qword_26F182910);
    sub_26F158D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4B08);
  }

  return result;
}

unint64_t sub_26F158D94()
{
  result = qword_2806D4B18;
  if (!qword_2806D4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4B20, &qword_26F182918);
    sub_26F158E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4B18);
  }

  return result;
}

unint64_t sub_26F158E20()
{
  result = qword_2806D4B28;
  if (!qword_2806D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4B28);
  }

  return result;
}

uint64_t sub_26F158ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB8, &qword_26F1828D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F158F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB8, &qword_26F1828D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F158FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F15900C(uint64_t a1)
{
  v2 = type metadata accessor for InstructionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F159070@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F17FC54();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F1590F0()
{
  v1 = type metadata accessor for TipsTryItView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = sub_26F17F9E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v22 = *(v5 + 64);
  v7 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
  }

  v10 = v7 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo") + 32);
    v13 = sub_26F17FB04();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  v14 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26F17FD64();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
  }

  v16 = v2 | v6;
  v17 = (v3 + v21 + v6) & ~v6;
  v18 = v1[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  (*(*(v19 - 8) + 8))(v7 + v18, v19);

  (*(v5 + 8))(v0 + v17, v4);

  return MEMORY[0x2821FE8E8](v0, v17 + v22, v16 | 7);
}

uint64_t sub_26F159480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TipsTryItView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17F9E4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F1564A8(a1, v2 + v6, v9, a2);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for TipsTryItView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v5 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo") + 32);
    v11 = sub_26F17FB04();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  v12 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F17FD64();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
  }

  v14 = v1[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

BOOL sub_26F159864(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_26F17FD64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_26F159C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F159CD4()
{
  v1 = type metadata accessor for TipsTryItView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v23 = sub_26F17F9E4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 80);
  v24 = *(v5 + 64);
  v7 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
  }

  v10 = v7 + v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo") + 32);
    v13 = sub_26F17FB04();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  v14 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26F17FD64();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
  }

  v16 = (v3 + v4 + v6) & ~v6;
  v17 = (v24 + v6 + v16) & ~v6;
  v18 = v2 | v6;
  v19 = v1[7];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  (*(*(v20 - 8) + 8))(v7 + v19, v20);

  v21 = *(v5 + 8);
  v21(v0 + v16, v23);
  v21(v0 + v17, v23);

  return MEMORY[0x2821FE8E8](v0, v17 + v24, v18 | 7);
}

void sub_26F15A080()
{
  v1 = *(type metadata accessor for TipsTryItView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F17F9E4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_26F156708(v0 + v2, v5);
}

uint64_t sub_26F15A1B4()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26F15A234(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_26F180B44() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }
}

uint64_t sub_26F15A364()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 32);
}

uint64_t sub_26F15A3D4(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A4B0()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();
}

uint64_t sub_26F15A524(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 40) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A678()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 48);
}

uint64_t sub_26F15A6E8(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A7D0()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 49);
}

uint64_t sub_26F15A840(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A920()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 50);
}

uint64_t sub_26F15A990(uint64_t result)
{
  if (*(v1 + 50) == (result & 1))
  {
    *(v1 + 50) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15AA78()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 51);
}

uint64_t sub_26F15AAE8(uint64_t result)
{
  if (*(v1 + 51) == (result & 1))
  {
    *(v1 + 51) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15ABD0()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 52);
}

uint64_t sub_26F15AC40(uint64_t result)
{
  if (*(v1 + 52) == (result & 1))
  {
    *(v1 + 52) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15AD28()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 53);
}

uint64_t sub_26F15AD98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  *a2 = *(v3 + 53);
  return result;
}

uint64_t sub_26F15AE38(uint64_t result)
{
  if (*(v1 + 53) == (result & 1))
  {
    *(v1 + 53) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15AF20()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v1 = *(v0 + 32);
  swift_getKeyPath();
  sub_26F17F7C4();

  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  if (v3 && v1 == *(v2 + 8 * v3 + 24))
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_26F17F7C4();

    v4 = sub_26F15B034(*(v0 + 40), MEMORY[0x277D84F90]);
  }

  return v4 & 1;
}

uint64_t sub_26F15B034(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F15B090(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F15B0EC(char a1, int a2, int a3)
{
  v62 = a2;
  v63 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v51 - v6;
  v7 = sub_26F17F6C4();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_26F17F7A4();
  v54 = *(v61 - 8);
  v9 = MEMORY[0x28223BE20](v61);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - v11;
  v13 = sub_26F180714();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v20 - 8);
  v55 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask;
  v64 = v3;
  if (*(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask))
  {

    sub_26F180924();
  }

  v22 = v64;
  v23 = a1 & 1;
  if (*(v64 + 48) == (a1 & 1))
  {
    *(v64 + 48) = v23;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v56 = &v51;
    MEMORY[0x28223BE20](KeyPath);
    *(&v51 - 2) = v22;
    *(&v51 - 8) = v23;
    v65 = v22;
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  sub_26F180704();
  sub_26F1427C4();
  v25 = sub_26F1809E4();
  v56 = 0;
  if (!v25)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v25;
  sub_26F17F794();
  v27 = *(v14 + 16);
  v28 = v17;
  v53 = v19;
  v29 = v13;
  v27(v28, v19, v13);
  v30 = v54;
  v31 = v61;
  (*(v54 + 16))(v57, v12, v61);
  v32 = [v26 bundleURL];
  v33 = v58;
  sub_26F17F714();

  (*(v59 + 104))(v33, *MEMORY[0x277CC9118], v60);
  sub_26F17F6E4();

  (*(v30 + 8))(v12, v31);
  (*(v14 + 8))(v53, v29);
  v34 = sub_26F180774();
  v35 = v64;
  sub_26F15A234(v34, v36);
  v37 = v35 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
  *(v37 + 48) = 0;
  *(v37 + 56) = 0;

  sub_26F15D9C8();
  *(v37 + 48) = 0;
  *(v37 + 56) = 0;

  if (*(v35 + 51))
  {
    v39 = swift_getKeyPath();
    MEMORY[0x28223BE20](v39);
    *(&v51 - 2) = v35;
    *(&v51 - 8) = 0;
    v65 = v35;
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  else
  {
    *(v35 + 51) = 0;
  }

  v40 = v62 & 1;
  if (*(v35 + 50) == (v62 & 1))
  {
    *(v35 + 50) = v40;
    if ((v63 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v41 = swift_getKeyPath();
    MEMORY[0x28223BE20](v41);
    *(&v51 - 2) = v35;
    *(&v51 - 8) = v40;
    v65 = v35;
    sub_26F15E0CC();
    sub_26F17F7B4();

    if ((v63 & 1) == 0)
    {
LABEL_13:
      v42 = *(v37 + 64);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (!v43)
      {
        *(v37 + 64) = v44;
        *(v37 + 88) = 1;
LABEL_18:
        v47 = sub_26F180914();
        v48 = v52;
        (*(*(v47 - 8) + 56))(v52, 1, 1, v47);
        v49 = swift_allocObject();
        v49[2] = 0;
        v49[3] = 0;
        v49[4] = v35;

        v50 = sub_26F1726AC(0, 0, v48, &unk_26F182C88, v49);
        *(v35 + v51) = v50;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v45 = *(v37 + 72);
  v43 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (!v43)
  {
    *(v37 + 72) = v46;
    *(v37 + 89) = 1;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26F15B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26F180AA4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F15B944, 0, 0);
}

uint64_t sub_26F15B944()
{
  sub_26F180B84();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26F15BA10;

  return sub_26F14A55C(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26F15BA10()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_26F15BBE8;
  }

  else
  {
    v5 = sub_26F15BB80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F15BB80()
{
  sub_26F15C40C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F15BBE8()
{
  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2._object = 0x800000026F184B20;
  v2._countAndFlagsBits = 0xD000000000000038;
  TryItLog.log(_:)(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F15BCB8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v55 = a3;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v41 - v7;
  v54 = sub_26F17F6C4();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_26F17F7A4();
  v51 = *(v53 - 8);
  v9 = MEMORY[0x28223BE20](v53);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = sub_26F180714();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v46 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - v19;
  v21 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v21 - 8);
  v48 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask))
  {

    sub_26F180924();
  }

  if (a2)
  {
    v23 = v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 48) = xmmword_26F182A50;

    sub_26F15D9C8();
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
  }

  swift_getKeyPath();
  v57 = v3;
  sub_26F15E0CC();
  sub_26F17F7C4();

  if ((*(v3 + 48) & 1) == 0)
  {
    v25 = a2 & 1;
    if (*(v4 + 49) == (a2 & 1))
    {
      *(v4 + 49) = v25;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v41 = &v41;
      MEMORY[0x28223BE20](KeyPath);
      *(&v41 - 2) = v4;
      *(&v41 - 8) = v25;
      v57 = v4;
      sub_26F17F7B4();
    }

    v27 = *(v14 + 16);
    v27(v20, v47, v13);
    sub_26F1427C4();
    v28 = sub_26F1809E4();
    v44 = v14;
    if (!v28)
    {
      v28 = [objc_opt_self() mainBundle];
    }

    v29 = v28;
    sub_26F17F794();
    v42 = v13;
    v43 = v20;
    v27(v46, v20, v13);
    v30 = v51;
    v31 = v53;
    (*(v51 + 16))(v49, v12, v53);
    v32 = [v29 bundleURL];
    v33 = v50;
    sub_26F17F714();

    (*(v52 + 104))(v33, *MEMORY[0x277CC9118], v54);
    sub_26F17F6E4();

    (*(v30 + 8))(v12, v31);
    v34 = v44;
    v35 = *(v44 + 8);
    v36 = v42;
    v35(v43, v42);
    v37 = sub_26F180774();
    sub_26F15A234(v37, v38);
    v39 = v56;
    sub_26F15E1BC(v55, v56);
    if ((*(v34 + 48))(v39, 1, v36) == 1)
    {
      return sub_26F15E22C(v39);
    }

    else
    {
      v40 = v45;
      (*(v34 + 32))(v45, v39, v36);
      sub_26F15CC90(v40);
      return (v35)(v40, v36);
    }
  }

  return result;
}

uint64_t sub_26F15C2EC(char a1)
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(v1 + 49) == (a1 & 1))
    {
      *(v1 + 49) = a1 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_26F17F7B4();
    }
  }

  return result;
}

uint64_t sub_26F15C40C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v2 = *(v0 + 40);
  swift_getKeyPath();

  sub_26F17F7C4();

  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_5:

    if (qword_2806D3FE8 != -1)
    {
      swift_once();
    }

    sub_26F180A74();
    MEMORY[0x27438A3F0](0xD000000000000038, 0x800000026F184AC0);
    swift_getKeyPath();
    sub_26F17F7C4();

    v5 = sub_26F180784();
    MEMORY[0x27438A3F0](v5);

    MEMORY[0x27438A3F0](0xD000000000000012, 0x800000026F184B00);
    swift_getKeyPath();
    sub_26F17F7C4();

    v7 = MEMORY[0x27438A4A0](v6, &type metadata for TryItLesson);
    v9 = v8;

    MEMORY[0x27438A3F0](v7, v9);

    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    TryItLog.error(_:)(v10);
  }

  v4 = 0;
  while (*(v2 + 8 * v4 + 32) != *(v1 + 32))
  {
    if (v3 == ++v4)
    {
      goto LABEL_5;
    }
  }

  v12 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_getKeyPath();
  sub_26F17F7C4();

  if (v12 >= *(*(v1 + 40) + 16))
  {
    return result;
  }

  swift_getKeyPath();
  sub_26F17F7C4();

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v13 = *(v1 + 40);
  if (v12 >= *(v13 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (*(v1 + 32) != *(v13 + 8 * v12 + 32))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F17F7B4();
  }

  return sub_26F15C7B0();
}

uint64_t sub_26F15C7B0()
{
  v1 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 48))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v11 - 2) = v0;
    *(&v11 - 8) = 0;
    v12 = v0;
    sub_26F15E0CC();
    sub_26F17F7B4();

    if ((*(v0 + 49) & 1) == 0)
    {
LABEL_3:
      *(v0 + 49) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(v0 + 48) = 0;
    if ((*(v0 + 49) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v5 = swift_getKeyPath();
  MEMORY[0x28223BE20](v5);
  *(&v11 - 2) = v0;
  *(&v11 - 8) = 0;
  v12 = v0;
  sub_26F15E0CC();
  sub_26F17F7B4();

LABEL_6:
  if (*(v0 + 51) == 1)
  {
    *(v0 + 51) = 1;
  }

  else
  {
    v6 = swift_getKeyPath();
    MEMORY[0x28223BE20](v6);
    *(&v11 - 2) = v0;
    *(&v11 - 8) = 1;
    v12 = v0;
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  swift_getKeyPath();
  v12 = v0;
  sub_26F15E0CC();
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v0 + 32), v3);
  v7 = sub_26F180774();
  result = sub_26F15A234(v7, v8);
  if (*(v0 + 53))
  {
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    *(&v11 - 2) = v0;
    *(&v11 - 8) = 0;
    v12 = v0;
    sub_26F17F7B4();
  }

  else
  {
    *(v0 + 53) = 0;
  }

  return result;
}

uint64_t sub_26F15CAF4()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v2 = *(v0 + 40);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    swift_getKeyPath();
    sub_26F17F7C4();

    v4 = *(v0 + 32);
    swift_getKeyPath();
    sub_26F17F7C4();

    v5 = *(v0 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      if (v4 == *(v5 + 8 * v6 + 24) && *(v0 + 32) != v3)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_26F17F7B4();
      }
    }
  }

  return result;
}

uint64_t sub_26F15CC90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v34 - v3;
  v40 = sub_26F17F6C4();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_26F17F7A4();
  v5 = *(v39 - 8);
  v6 = MEMORY[0x28223BE20](v39);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = sub_26F180714();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v18 - 8);
  v35 = v12;
  v36 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v12 + 16);
  v20(v17, a1, v11);
  sub_26F1427C4();
  v21 = sub_26F1809E4();
  if (!v21)
  {
    v21 = [objc_opt_self() mainBundle];
  }

  v22 = v21;
  sub_26F17F794();
  v20(v15, v17, v11);
  v23 = v39;
  (*(v5 + 16))(v8, v10, v39);
  v24 = [v22 bundleURL];
  v25 = v37;
  sub_26F17F714();

  (*(v38 + 104))(v25, *MEMORY[0x277CC9118], v40);
  sub_26F17F6E4();

  (*(v5 + 8))(v10, v23);
  (*(v35 + 8))(v17, v11);
  v26 = sub_26F180774();
  v28 = v27;
  v29 = sub_26F180914();
  v30 = v41;
  (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v32 = v42;
  v31[4] = v42;
  v31[5] = v26;
  v31[6] = v28;

  *(v32 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask) = sub_26F1726AC(0, 0, v30, &unk_26F182B60, v31);
}

uint64_t sub_26F15D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_26F180AA4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F15D214, 0, 0);
}

uint64_t sub_26F15D214()
{
  sub_26F180B84();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_26F15D2E0;

  return sub_26F14A55C(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26F15D2E0()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_26F15D4D4;
  }

  else
  {
    v5 = sub_26F15D450;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F15D450()
{
  v1 = v0[3];
  v2 = v0[4];

  sub_26F15A234(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F15D4D4()
{
  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2._object = 0x800000026F184A90;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  TryItLog.log(_:)(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F15D5A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 40);
  v2 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 8);
  v3 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 16);
  v4 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 24);
  v13 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 32);
  v12 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  swift_getKeyPath();
  sub_26F15E0CC();

  sub_26F17F7C4();

  v5 = sub_26F180B34();
  v7 = v6;
  type metadata accessor for TryItLaunchAnalyticsEvent();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000001BLL;
  *(v8 + 24) = 0x800000026F184B80;
  *&v10 = v12;
  *&v9 = v13;
  *(&v10 + 1) = v2;
  *(&v9 + 1) = v1;
  *(v8 + 32) = v10;
  *(v8 + 48) = v9;
  *(v8 + 64) = v3;
  *(v8 + 72) = v4;

  *(v8 + 80) = v5;
  *(v8 + 88) = v7;

  sub_26F17B574(v8);
}

uint64_t sub_26F15D704()
{
  v1 = v0;
  v2 = sub_26F17F784();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17F774();
  sub_26F17F764();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  *&v9 = ceil(v7 / 60.0);
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*&v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*&v9 < 9.22337204e18)
  {
    v10 = v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v10 + 80) = *&v9;
    v11 = *(v10 + 40);
    v12 = *(v10 + 8);
    v28 = *(v10 + 16);
    v13 = *(v10 + 24);
    v24 = v11;
    v25 = v13;
    *&v9 = *(v10 + 32);
    v27 = v9;
    *&v9 = *v10;
    v26 = v9;
    swift_getKeyPath();
    v29 = v1;
    sub_26F15E0CC();

    sub_26F17F7C4();

    v29 = *(v1 + 32);
    v14 = sub_26F180B34();
    v16 = v15;
    v23 = *(v10 + 64);
    v17 = *(v10 + 80);
    v18 = *(v10 + 88);
    LOBYTE(v13) = *(v10 + 89);
    LOBYTE(v11) = *(v10 + 90);
    LOBYTE(v10) = *(v10 + 91);
    type metadata accessor for TryItSessionAnalyticsEvent();
    v19 = swift_allocObject();
    *(v19 + 96) = v23;
    *(v19 + 112) = v17;
    *(v19 + 120) = v18;
    *(v19 + 121) = v13;
    *(v19 + 122) = v11;
    *(v19 + 123) = v10;
    *(v19 + 16) = 0xD00000000000001CLL;
    *(v19 + 24) = 0x800000026F184B60;
    *&v21 = v26;
    *&v20 = v27;
    *(&v21 + 1) = v12;
    *(&v20 + 1) = v24;
    *(v19 + 32) = v21;
    *(v19 + 48) = v20;
    v22 = v25;
    *(v19 + 64) = v28;
    *(v19 + 72) = v22;

    *(v19 + 80) = v14;
    *(v19 + 88) = v16;

    sub_26F17B574(v19);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F15D9C8()
{
  v1 = (v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v2 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93);
  v3 = 0xEE00747865746572;
  v4 = 0x6F6D7463656C6573;
  if (v2 != 5)
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v2 != 5)
  {
    v3 = 0xE000000000000000;
  }

  v6 = v1[5];
  v26 = v1[4];
  v27 = *v1;
  v7 = 0xEB000000006D6F6FLL;
  v8 = 0x7A6F7468636E6970;
  v9 = v1[3];
  v25 = v1[2];
  if (v2 != 3)
  {
    v8 = 0x65747463656C6573;
    v7 = 0xEA00000000007478;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) > 4u)
  {
    v10 = v3;
  }

  else
  {
    v4 = v8;
    v10 = v7;
  }

  v11 = 0xE300000000000000;
  v12 = 7364980;
  v13 = 0xEC000000646C6F68;
  v14 = 0x646E616863756F74;
  if (v2 != 1)
  {
    v14 = 1734439524;
    v13 = 0xE400000000000000;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93))
  {
    v12 = v14;
    v11 = v13;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) <= 2u)
  {
    v15 = v12;
  }

  else
  {
    v15 = v4;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) <= 2u)
  {
    v16 = v11;
  }

  else
  {
    v16 = v10;
  }

  MEMORY[0x27438A3F0](v15, v16);

  v18 = v1[6];
  v17 = v1[7];
  type metadata accessor for TryItAttemptAnalyticsEvent();
  v19 = swift_allocObject();
  v20 = v19;
  if (v17)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  *(v19 + 96) = v21;
  *(v19 + 104) = v17;
  *(v19 + 112) = v17 == 0;
  *(v19 + 16) = 0xD00000000000001CLL;
  *(v19 + 24) = 0x800000026F184A70;
  *&v23 = v26;
  *&v22 = v27;
  *(&v22 + 1) = v5;
  *(&v23 + 1) = v6;
  *(v19 + 32) = v22;
  *(v19 + 48) = v23;
  *(v19 + 64) = v25;
  *(v19 + 72) = v9;

  *(v20 + 80) = 0;
  *(v20 + 88) = 0xE000000000000000;

  sub_26F17B574(v20);
}

uint64_t sub_26F15DBE8()
{

  v1 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager_startTime;
  v2 = sub_26F17F784();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 32);
  v8[3] = v3;
  v9[0] = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
  *(v9 + 14) = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 78);
  v4 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v8[1] = v4;
  sub_26F15E3C0(v8);

  v5 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager___observationRegistrar;
  v6 = sub_26F17F7E4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_26F15DD04()
{
  sub_26F15DBE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrainingManager(uint64_t a1)
{
  result = qword_2806D4BC8;
  if (!qword_2806D4BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F15DDB0(uint64_t a1)
{
  result = sub_26F17F784();
  if (v2 <= 0x3F)
  {
    result = sub_26F17F7E4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_26F15DEDC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0x10000;
  *(v1 + 52) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  sub_26F17F774();
  v3 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsManager;
  type metadata accessor for TryItAnalyticsManager();
  swift_allocObject();
  *(v1 + v3) = sub_26F17BCC8();
  v4 = v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
  *(v4 + 77) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 93) = 6;
  *(v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask) = 0;
  *(v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask) = 0;
  sub_26F17F7D4();
  return v1;
}

uint64_t sub_26F15DFB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26F15DFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F15E4A8;

  return sub_26F15D150(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_26F15E0CC()
{
  result = qword_2806D40F0;
  if (!qword_2806D40F0)
  {
    type metadata accessor for TrainingManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40F0);
  }

  return result;
}

uint64_t sub_26F15E1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F15E22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F15E2AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F15E2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F149E48;

  return sub_26F15B884(a1, v4, v5, v6);
}

uint64_t sub_26F15E414()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_26F15E450()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_26F15E530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F15E578(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_26F15E5E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a5@<X8>)
{
  v8 = sub_26F17FC84();
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F1803C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F1427C4();

  if (!sub_26F1809E4())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  sub_26F1803F4();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
  v16 = sub_26F1803E4();

  result = (*(v12 + 8))(v14, v11);
  if ((a2 & 1) == 0)
  {

    sub_26F180944();
    v18 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();
    sub_26F15E8A4(a1, 0);
    result = (*(v20 + 8))(v10, v21);
    LOBYTE(a1) = v22;
  }

  *a5 = v16;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 17) = a1 & 1;
  return result;
}

uint64_t sub_26F15E8A4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_26F15E8B4()
{
  result = qword_2806D4BE0;
  if (!qword_2806D4BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4BE8, &unk_26F182DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4BE0);
  }

  return result;
}

uint64_t sub_26F15E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26F15EA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for HapticTouchButtonView(uint64_t a1)
{
  result = qword_2806D4C08;
  if (!qword_2806D4C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F15EB3C(uint64_t a1)
{
  sub_26F13FE74(319);
  if (v1 <= 0x3F)
  {
    sub_26F13FED8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26F15EBDC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26F13A854(v2, &v13 - v9, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F140EA0(v10, a1);
  }

  sub_26F180944();
  v12 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26F15EDAC()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for HapticTouchButtonView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F15EEFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C60, &qword_26F182EB0);
  __swift_allocate_value_buffer(v0, qword_2806D4BF0);
  __swift_project_value_buffer(v0, qword_2806D4BF0);
  return sub_26F17F724();
}

uint64_t sub_26F15EF6C@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v2 = sub_26F17FE84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v75 = v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v6 = MEMORY[0x28223BE20](v5);
  v91 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v72 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v89 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = v72 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v88 = v72 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v77 = v72 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v72 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (v72 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C18, &qword_26F182E38);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v72 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C20, &qword_26F182E40);
  MEMORY[0x28223BE20](v84);
  v28 = v72 - v27;
  *v26 = sub_26F17FD74();
  *(v26 + 1) = 0;
  v26[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C28, &qword_26F182E48);
  sub_26F15F95C(v1, &v26[*(v29 + 44)]);
  v78 = sub_26F180024();
  v87 = v1;
  sub_26F15EBDC(v23);
  v30 = v3[13];
  v83 = *MEMORY[0x277CE0558];
  v81 = v30;
  v82 = v3 + 13;
  v30(v21);
  v79 = v3[7];
  v80 = v3 + 7;
  v79(v21, 0, 1, v2);
  v86 = v5;
  v31 = *(v5 + 48);
  sub_26F13A854(v23, v9, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v21, &v9[v31], &qword_2806D4200, &qword_26F181B88);
  v90 = v3;
  v32 = v3[6];
  v33 = v32(v9, 1, v2);
  v85 = v32;
  if (v33 == 1)
  {
    sub_26F13AB10(v21, &qword_2806D4200, &qword_26F181B88);
    v34 = v76;
    sub_26F13AB10(v23, &qword_2806D4200, &qword_26F181B88);
    if (v32(&v9[v31], 1, v2) == 1)
    {
      sub_26F13AB10(v9, &qword_2806D4200, &qword_26F181B88);
LABEL_7:
      v35 = v88;
      v36 = v89;
      goto LABEL_9;
    }

LABEL_6:
    sub_26F13AB10(v9, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_7;
  }

  v73 = v23;
  sub_26F13A854(v9, v77, &qword_2806D4200, &qword_26F181B88);
  if (v32(&v9[v31], 1, v2) == 1)
  {
    sub_26F13AB10(v21, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v73, &qword_2806D4200, &qword_26F181B88);
    (v90[1])(v77, v2);
    v34 = v76;
    goto LABEL_6;
  }

  v37 = v90;
  v38 = v90[4];
  v74 = v28;
  v39 = v75;
  v38(v75, &v9[v31], v2);
  sub_26F160EA8(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v40 = v77;
  v72[1] = sub_26F1806F4();
  v41 = v37[1];
  v42 = v39;
  v28 = v74;
  v41(v42, v2);
  sub_26F13AB10(v21, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v73, &qword_2806D4200, &qword_26F181B88);
  v41(v40, v2);
  sub_26F13AB10(v9, &qword_2806D4200, &qword_26F181B88);
  v35 = v88;
  v36 = v89;
  v34 = v76;
LABEL_9:
  sub_26F17F894();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_26F142810(v26, v28, &qword_2806D4C18, &qword_26F182E38);
  v51 = &v28[*(v84 + 36)];
  *v51 = v78;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  LODWORD(v89) = sub_26F180004();
  sub_26F15EBDC(v35);
  v81(v34, v83, v2);
  v79(v34, 0, 1, v2);
  v52 = v34;
  v53 = *(v86 + 48);
  v54 = v91;
  sub_26F13A854(v35, v91, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v52, v54 + v53, &qword_2806D4200, &qword_26F181B88);
  v55 = v85;
  if (v85(v54, 1, v2) != 1)
  {
    sub_26F13A854(v54, v36, &qword_2806D4200, &qword_26F181B88);
    if (v55(v54 + v53, 1, v2) != 1)
    {
      v56 = v35;
      v57 = v90;
      v58 = v90[4];
      v74 = v28;
      v59 = v75;
      v58(v75, v54 + v53, v2);
      sub_26F160EA8(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      sub_26F1806F4();
      v60 = v57[1];
      v60(v59, v2);
      sub_26F13AB10(v52, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v56, &qword_2806D4200, &qword_26F181B88);
      v60(v36, v2);
      v28 = v74;
      sub_26F13AB10(v54, &qword_2806D4200, &qword_26F181B88);
      goto LABEL_16;
    }

    sub_26F13AB10(v52, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v35, &qword_2806D4200, &qword_26F181B88);
    (v90[1])(v36, v2);
    goto LABEL_14;
  }

  sub_26F13AB10(v52, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v35, &qword_2806D4200, &qword_26F181B88);
  if (v55(v54 + v53, 1, v2) != 1)
  {
LABEL_14:
    sub_26F13AB10(v54, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_16;
  }

  sub_26F13AB10(v54, &qword_2806D4200, &qword_26F181B88);
LABEL_16:
  sub_26F17F894();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v92;
  sub_26F142810(v28, v92, &qword_2806D4C20, &qword_26F182E40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C30, &unk_26F182E50);
  v71 = v69 + *(result + 36);
  *v71 = v89;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  return result;
}

uint64_t sub_26F15F95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a1;
  v87 = a2;
  v2 = sub_26F17FD54();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v83 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HapticTouchButtonView(0);
  v74 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = v5;
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C38, &qword_26F182E60);
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6);
  v78 = &v69 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C40, &qword_26F182E68);
  v8 = MEMORY[0x28223BE20](v79);
  v84 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v82 = &v69 - v10;
  v11 = sub_26F17F6C4();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26F17F7A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v21 = sub_26F180714();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  v28 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v28 - 8);
  v71 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v30 = sub_26F1809E4();
  if (!v30)
  {
    v30 = [objc_opt_self() mainBundle];
  }

  v31 = v30;
  sub_26F17F794();
  (*(v22 + 16))(v25, v27, v21);
  (*(v15 + 16))(v18, v20, v14);
  v32 = [v31 bundleURL];
  v70 = v21;
  v33 = v14;
  v34 = v32;
  sub_26F17F714();

  (*(v72 + 104))(v13, *MEMORY[0x277CC9118], v73);
  sub_26F17F6E4();

  (*(v15 + 8))(v20, v33);
  (*(v22 + 8))(v27, v70);
  v35 = sub_26F1801A4();
  v37 = v36;
  v39 = v38;
  sub_26F1800F4();
  v40 = sub_26F180184();
  v42 = v41;
  v44 = v43;

  sub_26F142878(v35, v37, v39 & 1);

  sub_26F180384();
  v45 = sub_26F180174();
  v47 = v46;
  LODWORD(v73) = v48;
  v50 = v49;

  sub_26F142878(v40, v42, v44 & 1);

  KeyPath = swift_getKeyPath();
  v52 = v76;
  sub_26F160B08(v77, v76);
  v53 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v54 = swift_allocObject();
  sub_26F160CE4(v52, v54 + v53);
  v55 = v78;
  sub_26F180464();
  v56 = v83;
  sub_26F17FD44();
  sub_26F13AC54(&qword_2806D4C48, &qword_2806D4C38, &qword_26F182E60, MEMORY[0x277CDF028]);
  sub_26F160EA8(&qword_2806D4C50, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v58 = v81;
  v57 = v82;
  v59 = v86;
  sub_26F180214();
  (*(v85 + 8))(v56, v59);
  (*(v80 + 8))(v55, v58);
  LOBYTE(v37) = sub_26F180074();
  sub_26F17F894();
  v60 = v57 + *(v79 + 36);
  *v60 = v37;
  *(v60 + 8) = v61;
  *(v60 + 16) = v62;
  *(v60 + 24) = v63;
  *(v60 + 32) = v64;
  *(v60 + 40) = 0;
  v65 = v84;
  sub_26F160DA8(v57, v84);
  v66 = v87;
  *v87 = v45;
  v66[1] = v47;
  LOBYTE(v37) = v73 & 1;
  *(v66 + 16) = v73 & 1;
  v66[3] = v50;
  v66[4] = KeyPath;
  *(v66 + 40) = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C58, &unk_26F182EA0);
  sub_26F160DA8(v65, v66 + *(v67 + 48));
  sub_26F160E18(v45, v47, v37);

  sub_26F160E28(v57);
  sub_26F160E28(v65);
  sub_26F142878(v45, v47, v37);
}

uint64_t sub_26F1601E8()
{
  v0 = sub_26F180644();
  v15 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26F180684();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26F180654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(sub_26F15EDAC() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 91) = 1;

  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  (*(v7 + 104))(v9, *MEMORY[0x277D851A8], v6);
  v10 = sub_26F1809B4();
  (*(v7 + 8))(v9, v6);
  aBlock[4] = sub_26F160590;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);
  sub_26F180664();
  v16 = MEMORY[0x277D84F90];
  sub_26F160EA8(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  sub_26F180A44();
  MEMORY[0x27438A5B0](0, v5, v2, v11);
  _Block_release(v11);

  (*(v15 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v14);
}

void sub_26F160590()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C60, &qword_26F182EB0);
  MEMORY[0x28223BE20](v0);
  v2 = &v9 - v1;
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    if (qword_2806D3FD0 != -1)
    {
      swift_once();
    }

    v5 = __swift_project_value_buffer(v0, qword_2806D4BF0);
    sub_26F13A854(v5, v2, &qword_2806D4C60, &qword_26F182EB0);
    v6 = sub_26F17F734();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v2, 1, v6) != 1)
    {
      v8 = sub_26F17F704();
      (*(v7 + 8))(v2, v6);
    }

    [v4 openSensitiveURL:v8 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26F160738@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_26F17F6C4();
  v31 = *(v1 - 8);
  v32 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F17F7A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  v11 = sub_26F180714();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  v18 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v18 - 8);
  v30[1] = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v20 = sub_26F1809E4();
  if (!v20)
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v21 = v20;
  sub_26F17F794();
  (*(v12 + 16))(v15, v17, v11);
  (*(v5 + 16))(v8, v10, v4);
  v22 = [v21 bundleURL];
  v30[0] = v11;
  v23 = v4;
  v24 = v22;
  sub_26F17F714();

  (*(v31 + 104))(v3, *MEMORY[0x277CC9118], v32);
  sub_26F17F6E4();

  (*(v5 + 8))(v10, v23);
  (*(v12 + 8))(v17, v30[0]);
  result = sub_26F1801A4();
  v26 = v33;
  *v33 = result;
  v26[1] = v27;
  *(v26 + 16) = v28 & 1;
  v26[3] = v29;
  return result;
}

uint64_t sub_26F160B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HapticTouchButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F160B6C()
{
  v1 = *(type metadata accessor for HapticTouchButtonView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F160CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HapticTouchButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F160D48()
{
  type metadata accessor for HapticTouchButtonView(0);

  return sub_26F1601E8();
}

uint64_t sub_26F160DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C40, &qword_26F182E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F160E18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26F160E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C40, &qword_26F182E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F160EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_26F160F90()
{
  result = qword_2806D4C68;
  if (!qword_2806D4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C30, &unk_26F182E50);
    sub_26F16101C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C68);
  }

  return result;
}

unint64_t sub_26F16101C()
{
  result = qword_2806D4C70;
  if (!qword_2806D4C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C20, &qword_26F182E40);
    sub_26F13AC54(&qword_2806D4C78, &qword_2806D4C18, &qword_26F182E38, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C70);
  }

  return result;
}

uint64_t sub_26F1610EC()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_26F180944();
    v7 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t SelectTrainingView.body.getter()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C80, &qword_26F182EE0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = *v0;
  v9 = *(v0 + 8);
  sub_26F161468(v8, v9, &v12 - v6);

  if ((v9 & 1) == 0)
  {
    sub_26F180944();
    v10 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for TrainingManager(0);
  sub_26F162458();
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F180244();

  return sub_26F13AB10(v7, &qword_2806D4C80, &qword_26F182EE0);
}

uint64_t sub_26F161468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D08, "<~");
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CF8, &qword_26F182F08);
  MEMORY[0x28223BE20](v84);
  v75 = &v55 - v8;
  v63 = sub_26F17F834();
  v61 = *(v63 - 8);
  v9 = MEMORY[0x28223BE20](v63);
  v60 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v55 - v11;
  v12 = type metadata accessor for PinchZoomView(0);
  MEMORY[0x28223BE20](v12);
  v64 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for SelectTextView(0);
  MEMORY[0x28223BE20](v73);
  v62 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D10, &qword_26F183000);
  MEMORY[0x28223BE20](v69);
  v72 = &v55 - v15;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CD8, &qword_26F182F00);
  MEMORY[0x28223BE20](v78);
  v74 = &v55 - v16;
  v71 = type metadata accessor for TouchHoldView(0);
  MEMORY[0x28223BE20](v71);
  v58 = (&v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for TapView(0);
  MEMORY[0x28223BE20](v70);
  v57 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D18, &qword_26F183008);
  MEMORY[0x28223BE20](v81);
  v83 = &v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D20, &qword_26F183010);
  MEMORY[0x28223BE20](v20);
  v77 = &v55 - v21;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D28, &qword_26F183018);
  MEMORY[0x28223BE20](v65);
  v67 = &v55 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CB8, &qword_26F182EF8);
  MEMORY[0x28223BE20](v23);
  v68 = &v55 - v24;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CA8, &qword_26F182EF0);
  MEMORY[0x28223BE20](v82);
  v79 = &v55 - v25;
  v66 = type metadata accessor for DragView(0);
  MEMORY[0x28223BE20](v66);
  v56 = (&v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_26F17FC84();
  v27 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;

  if ((a2 & 1) == 0)
  {
    sub_26F180944();
    v31 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v27 + 8))(v29, v76);
    v30 = v86;
  }

  swift_getKeyPath();
  v86 = v30;
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v32 = *(v30 + 32);

  if (v32 <= 2)
  {
    if (v32 == 1)
    {
      v50 = v56;
      sub_26F14E32C(v56);
      v44 = type metadata accessor for DragView;
      sub_26F162BA0(v50, v67, type metadata accessor for DragView);
      swift_storeEnumTagMultiPayload();
      sub_26F162888(&qword_2806D4CC0, type metadata accessor for DragView, &unk_26F182380);
      sub_26F162888(&qword_2806D4CC8, type metadata accessor for TapView, &unk_26F182018);
      v51 = v68;
      sub_26F17FE44();
      sub_26F13A854(v51, v77, &qword_2806D4CB8, &qword_26F182EF8);
      swift_storeEnumTagMultiPayload();
      sub_26F1625F4();
      sub_26F1626E0();
      v52 = v79;
      sub_26F17FE44();
      sub_26F13AB10(v51, &qword_2806D4CB8, &qword_26F182EF8);
      sub_26F13A854(v52, v83, &qword_2806D4CA8, &qword_26F182EF0);
      swift_storeEnumTagMultiPayload();
      sub_26F162568();
      sub_26F1627CC();
      sub_26F17FE44();
      sub_26F13AB10(v52, &qword_2806D4CA8, &qword_26F182EF0);
      v41 = v50;
    }

    else
    {
      if (v32 != 2)
      {
        goto LABEL_18;
      }

      v43 = v57;
      sub_26F148DCC(v57);
      v44 = type metadata accessor for TapView;
      sub_26F162BA0(v43, v67, type metadata accessor for TapView);
      swift_storeEnumTagMultiPayload();
      sub_26F162888(&qword_2806D4CC0, type metadata accessor for DragView, &unk_26F182380);
      sub_26F162888(&qword_2806D4CC8, type metadata accessor for TapView, &unk_26F182018);
      v45 = v68;
      sub_26F17FE44();
      sub_26F13A854(v45, v77, &qword_2806D4CB8, &qword_26F182EF8);
      swift_storeEnumTagMultiPayload();
      sub_26F1625F4();
      sub_26F1626E0();
      v46 = v79;
      sub_26F17FE44();
      sub_26F13AB10(v45, &qword_2806D4CB8, &qword_26F182EF8);
      sub_26F13A854(v46, v83, &qword_2806D4CA8, &qword_26F182EF0);
      swift_storeEnumTagMultiPayload();
      sub_26F162568();
      sub_26F1627CC();
      sub_26F17FE44();
      sub_26F13AB10(v46, &qword_2806D4CA8, &qword_26F182EF0);
      v41 = v43;
    }

LABEL_15:
    v42 = v44;
    return sub_26F162C08(v41, v42);
  }

  if (v32 == 3)
  {
    v47 = v58;
    sub_26F1729AC(v58);
    v44 = type metadata accessor for TouchHoldView;
    sub_26F162BA0(v47, v72, type metadata accessor for TouchHoldView);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_26F162888(&qword_2806D4CE0, type metadata accessor for TouchHoldView, &unk_26F183B10);
    sub_26F162888(&qword_2806D4CE8, type metadata accessor for SelectTextView, &unk_26F181C08);
    v48 = v74;
    sub_26F17FE44();
    sub_26F13A854(v48, v77, &qword_2806D4CD8, &qword_26F182F00);
    swift_storeEnumTagMultiPayload();
    sub_26F1625F4();
    sub_26F1626E0();
    v49 = v79;
    sub_26F17FE44();
    sub_26F13AB10(v48, &qword_2806D4CD8, &qword_26F182F00);
    sub_26F13A854(v49, v83, &qword_2806D4CA8, &qword_26F182EF0);
    swift_storeEnumTagMultiPayload();
    sub_26F162568();
    sub_26F1627CC();
    sub_26F17FE44();
    sub_26F13AB10(v49, &qword_2806D4CA8, &qword_26F182EF0);
    v41 = v47;
    goto LABEL_15;
  }

  if (v32 == 4)
  {
    v47 = v62;
    sub_26F13DEB4(v62);
    v44 = type metadata accessor for SelectTextView;
    sub_26F162BA0(v47, v72, type metadata accessor for SelectTextView);
    goto LABEL_13;
  }

  if (v32 != 5)
  {
LABEL_18:
    swift_storeEnumTagMultiPayload();
    sub_26F162888(&qword_2806D4D00, type metadata accessor for PinchZoomView, &unk_26F182618);
    v54 = v75;
    sub_26F17FE44();
    sub_26F13A854(v54, v83, &qword_2806D4CF8, &qword_26F182F08);
    swift_storeEnumTagMultiPayload();
    sub_26F162568();
    sub_26F1627CC();
    sub_26F17FE44();
    return sub_26F13AB10(v54, &qword_2806D4CF8, &qword_26F182F08);
  }

  type metadata accessor for TrainingManager(0);
  v33 = sub_26F17F914();
  v34 = v64;
  *v64 = v33;
  *(v34 + 8) = v35 & 1;
  v85 = 0;
  sub_26F180404();
  v36 = v87;
  *(v34 + 16) = v86;
  *(v34 + 24) = v36;
  v37 = v59;
  sub_26F17F824();
  v38 = v61;
  v39 = v63;
  (*(v61 + 16))(v60, v37, v63);
  sub_26F180404();
  (*(v38 + 8))(v37, v39);
  sub_26F162BA0(v34, v7, type metadata accessor for PinchZoomView);
  swift_storeEnumTagMultiPayload();
  sub_26F162888(&qword_2806D4D00, type metadata accessor for PinchZoomView, &unk_26F182618);
  v40 = v75;
  sub_26F17FE44();
  sub_26F13A854(v40, v83, &qword_2806D4CF8, &qword_26F182F08);
  swift_storeEnumTagMultiPayload();
  sub_26F162568();
  sub_26F1627CC();
  sub_26F17FE44();
  sub_26F13AB10(v40, &qword_2806D4CF8, &qword_26F182F08);
  v41 = v34;
  v42 = type metadata accessor for PinchZoomView;
  return sub_26F162C08(v41, v42);
}

unint64_t sub_26F162458()
{
  result = qword_2806D4C88;
  if (!qword_2806D4C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C80, &qword_26F182EE0);
    sub_26F1624DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C88);
  }

  return result;
}

unint64_t sub_26F1624DC()
{
  result = qword_2806D4C90;
  if (!qword_2806D4C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C98, &qword_26F182EE8);
    sub_26F162568();
    sub_26F1627CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C90);
  }

  return result;
}

unint64_t sub_26F162568()
{
  result = qword_2806D4CA0;
  if (!qword_2806D4CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CA8, &qword_26F182EF0);
    sub_26F1625F4();
    sub_26F1626E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CA0);
  }

  return result;
}

unint64_t sub_26F1625F4()
{
  result = qword_2806D4CB0;
  if (!qword_2806D4CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CB8, &qword_26F182EF8);
    sub_26F162888(&qword_2806D4CC0, type metadata accessor for DragView, &unk_26F182380);
    sub_26F162888(&qword_2806D4CC8, type metadata accessor for TapView, &unk_26F182018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CB0);
  }

  return result;
}

unint64_t sub_26F1626E0()
{
  result = qword_2806D4CD0;
  if (!qword_2806D4CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CD8, &qword_26F182F00);
    sub_26F162888(&qword_2806D4CE0, type metadata accessor for TouchHoldView, &unk_26F183B10);
    sub_26F162888(&qword_2806D4CE8, type metadata accessor for SelectTextView, &unk_26F181C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CD0);
  }

  return result;
}

unint64_t sub_26F1627CC()
{
  result = qword_2806D4CF0;
  if (!qword_2806D4CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CF8, &qword_26F182F08);
    sub_26F162888(&qword_2806D4D00, type metadata accessor for PinchZoomView, &unk_26F182618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CF0);
  }

  return result;
}

uint64_t sub_26F162888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F1628EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C80, &qword_26F182EE0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_26F161468(v4, v5, &v7 - v2);
  v7 = v4;
  v8 = v5;
  sub_26F1610EC();
  type metadata accessor for TrainingManager(0);
  sub_26F162458();
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F180244();

  return sub_26F13AB10(v3, &qword_2806D4C80, &qword_26F182EE0);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26F162A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F162A90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26F162AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C80, &qword_26F182EE0);
  type metadata accessor for TrainingManager(255);
  sub_26F162458();
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F162BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F162C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F162C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D30, &unk_26F183050);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F162D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D30, &unk_26F183050);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SystemFontScaledSupport(uint64_t a1)
{
  result = qword_2806D4D38;
  if (!qword_2806D4D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F162DD0(uint64_t a1)
{
  sub_26F162E44(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26F162E44(uint64_t a1)
{
  if (!qword_2806D4D48)
  {
    sub_26F162EA0();
    v1 = sub_26F17F954();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D4D48);
    }
  }
}

unint64_t sub_26F162EA0()
{
  result = qword_2806D4D50;
  if (!qword_2806D4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D50);
  }

  return result;
}

uint64_t sub_26F162F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44D0, &qword_26F181FB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D30, &unk_26F183050);
  sub_26F17F944();
  v7 = sub_26F1800A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26F1800D4();
  sub_26F1630DC(v6);
  v8 = sub_26F1800E4();

  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D58, &qword_26F183100);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D60, &qword_26F183108);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v8;
  return result;
}

uint64_t sub_26F1630DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44D0, &qword_26F181FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F163150()
{
  result = qword_2806D4D68;
  if (!qword_2806D4D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4D60, &qword_26F183108);
    sub_26F13AC54(&qword_2806D4D70, &qword_2806D4D58, &qword_26F183100, MEMORY[0x277CE04B0]);
    sub_26F13AC54(&qword_2806D4A90, &qword_2806D4A98, &qword_26F183110, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D68);
  }

  return result;
}

uint64_t TryItLesson.initialInstruction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_26F17F6C4();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_26F17F7A4();
  v6 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v71 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - v9;
  v11 = sub_26F180714();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v67 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v67 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v67 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v30 = &v67 - v29;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v60 = v28;
      v61 = v27;
      sub_26F180704();
      sub_26F1427C4();
      v62 = sub_26F1809E4();
      if (!v62)
      {
        v62 = [objc_opt_self() mainBundle];
      }

      v63 = v62;
      sub_26F17F794();
      v64 = *(v60 + 16);
      v68 = v61;
      v64(v26, v30, v61);
      v65 = v73;
      (*(v6 + 16))(v71, v10, v73);
      v66 = [v63 bundleURL];
      sub_26F17F714();

      (*(v69 + 104))(v5, *MEMORY[0x277CC9118], v70);
      sub_26F17F6E4();

      (*(v6 + 8))(v10, v65);
      v45 = *(v60 + 8);
      v46 = v30;
    }

    else
    {
      if (a1 != 2)
      {
LABEL_24:

        return MEMORY[0x28211CB40](0, 0xE000000000000000);
      }

      v38 = v28;
      v39 = v27;
      sub_26F180704();
      sub_26F1427C4();
      v40 = sub_26F1809E4();
      if (!v40)
      {
        v40 = [objc_opt_self() mainBundle];
      }

      v41 = v40;
      sub_26F17F794();
      v42 = *(v38 + 16);
      v68 = v39;
      v42(v26, v23, v39);
      v43 = v73;
      (*(v6 + 16))(v71, v10, v73);
      v44 = [v41 bundleURL];
      sub_26F17F714();

      (*(v69 + 104))(v5, *MEMORY[0x277CC9118], v70);
      sub_26F17F6E4();

      (*(v6 + 8))(v10, v43);
      v45 = *(v38 + 8);
      v46 = v23;
    }

    return v45(v46, v68);
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        v31 = v28;
        v32 = v27;
        sub_26F180704();
        sub_26F1427C4();
        v33 = sub_26F1809E4();
        if (!v33)
        {
          v33 = [objc_opt_self() mainBundle];
        }

        v34 = v33;
        v35 = v73;
        sub_26F17F794();
        (*(v31 + 16))(v26, v14, v32);
        (*(v6 + 16))(v71, v10, v35);
        v36 = [v34 bundleURL];
        sub_26F17F714();

        (*(v69 + 104))(v5, *MEMORY[0x277CC9118], v70);
        sub_26F17F6E4();

        (*(v6 + 8))(v10, v73);
        return (*(v31 + 8))(v14, v32);
      }

      goto LABEL_24;
    }

    v53 = v28;
    v54 = v27;
    sub_26F180704();
    sub_26F1427C4();
    v55 = sub_26F1809E4();
    if (!v55)
    {
      v55 = [objc_opt_self() mainBundle];
    }

    v56 = v55;
    sub_26F17F794();
    v57 = *(v53 + 16);
    v68 = v54;
    v57(v26, v17, v54);
    v58 = v73;
    (*(v6 + 16))(v71, v10, v73);
    v59 = [v56 bundleURL];
    sub_26F17F714();

    (*(v69 + 104))(v5, *MEMORY[0x277CC9118], v70);
    sub_26F17F6E4();

    (*(v6 + 8))(v10, v58);
    v45 = *(v53 + 8);
    v46 = v17;
    return v45(v46, v68);
  }

  v47 = v28;
  v48 = v27;
  sub_26F180704();
  sub_26F1427C4();
  v49 = sub_26F1809E4();
  if (!v49)
  {
    v49 = [objc_opt_self() mainBundle];
  }

  v50 = v49;
  v51 = v73;
  sub_26F17F794();
  (*(v47 + 16))(v26, v20, v48);
  (*(v6 + 16))(v71, v10, v51);
  v52 = [v50 bundleURL];
  sub_26F17F714();

  (*(v69 + 104))(v5, *MEMORY[0x277CC9118], v70);
  sub_26F17F6E4();

  (*(v6 + 8))(v10, v73);
  return (*(v47 + 8))(v20, v48);
}

uint64_t TryItLesson.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 1734439492;
    }

    if (a1 == 2)
    {
      return 7364948;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return 0x6E61206863756F54;
      case 4:
        return 0x54207463656C6553;
      case 5:
        return 1836019546;
    }
  }

  return 0;
}

uint64_t sub_26F163CF4()
{
  v1 = *v0;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v1);
  return sub_26F180BB4();
}

uint64_t sub_26F163D68(uint64_t a1)
{
  v2 = *v1;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v2);
  return sub_26F180BB4();
}

unint64_t sub_26F163DAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26F163DFC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_26F163DFC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26F163E10()
{
  result = qword_2806D4D78;
  if (!qword_2806D4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D78);
  }

  return result;
}

unint64_t sub_26F163E68()
{
  result = qword_2806D4D80;
  if (!qword_2806D4D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4D88, &qword_26F1831B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D80);
  }

  return result;
}

uint64_t sub_26F163EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F163F24(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26F163F90@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DD8, &qword_26F1833C8);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v57 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DE0, &qword_26F1833D0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DE8, &qword_26F1833D8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DF0, &qword_26F1833E0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v57 = &v57 - v15;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DF8, &qword_26F1833E8);
  MEMORY[0x28223BE20](v58);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E00, &qword_26F1833F0);
  v60 = *(v18 - 8);
  v61 = v18;
  MEMORY[0x28223BE20](v18);
  v59 = &v57 - v19;
  sub_26F17FEC4();
  v20 = sub_26F180004();
  sub_26F17F894();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E08, &qword_26F1833F8) + 36)];
  *v29 = v20;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_26F180074();
  sub_26F17F894();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E10, &qword_26F183400) + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = [objc_opt_self() systemBlueColor];
  v41 = sub_26F1803A4();
  KeyPath = swift_getKeyPath();
  v43 = &v4[*(v2 + 44)];
  *v43 = KeyPath;
  v43[1] = v41;
  if (sub_26F17FED4())
  {
    v44 = 0.5;
  }

  else
  {
    v44 = 1.0;
  }

  sub_26F142810(v4, v8, &qword_2806D4DD8, &qword_26F1833C8);
  *&v8[*(v6 + 44)] = v44;
  v45 = &v12[*(v10 + 44)];
  sub_26F180524();
  v46 = sub_26F180014();
  v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E18, &qword_26F183438) + 36)] = v46;
  sub_26F142810(v8, v12, &qword_2806D4DE0, &qword_26F1833D0);
  v47 = v57;
  v48 = &v57[*(v14 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E20, &qword_26F183440);
  sub_26F17FB54();
  *v48 = swift_getKeyPath();
  sub_26F142810(v12, v47, &qword_2806D4DE8, &qword_26F1833D8);
  v49 = &v17[*(v58 + 36)];
  v50 = *MEMORY[0x277CE0118];
  v51 = sub_26F17FD14();
  (*(*(v51 - 8) + 104))(v49, v50, v51);
  *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E28, &qword_26F183478) + 36)] = 256;
  sub_26F142810(v47, v17, &qword_2806D4DF0, &qword_26F1833E0);
  sub_26F1800C4();
  sub_26F16523C();
  v52 = v59;
  sub_26F180204();
  sub_26F13AB10(v17, &qword_2806D4DF8, &qword_26F1833E8);
  v53 = sub_26F1805B4();
  v54 = v62;
  (*(v60 + 32))(v62, v52, v61);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E98, &qword_26F183488);
  v56 = (v54 + *(result + 36));
  *v56 = v53;
  v56[1] = 0;
  return result;
}

uint64_t sub_26F1644EC(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v6 = sub_26F17FC84();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v8);

  if ((a2 & 1) == 0)
  {
    sub_26F180944();
    v11 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v13[1];
  }

  *(a1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 90) = 1;
}

uint64_t sub_26F164660@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26F17FCB4();
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DB8, &qword_26F183318);
  return sub_26F1646B0(a2 + *(v3 + 44));
}

uint64_t sub_26F1646B0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = sub_26F17F6C4();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_26F17F7A4();
  v47 = *(v54 - 8);
  v2 = MEMORY[0x28223BE20](v54);
  v50 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v46 - v4;
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v13 - 8);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DC0, &qword_26F183320);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v51 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v46 - v19);
  v21 = sub_26F1803B4();
  v22 = (v20 + *(v16 + 44));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DC8, &qword_26F183328) + 28);
  v24 = *MEMORY[0x277CE1050];
  v25 = sub_26F1803D4();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  v49 = v20;
  *v20 = v21;
  sub_26F180704();
  sub_26F1427C4();
  v26 = sub_26F1809E4();
  if (!v26)
  {
    v26 = [objc_opt_self() mainBundle];
  }

  v27 = v26;
  sub_26F17F794();
  v28 = *(v7 + 16);
  v29 = v10;
  v46 = v12;
  v30 = v6;
  v28(v29, v12, v6);
  v31 = v47;
  v32 = v54;
  (*(v47 + 16))(v50, v5, v54);
  v33 = [v27 bundleURL];
  v34 = v53;
  sub_26F17F714();

  (*(v52 + 104))(v34, *MEMORY[0x277CC9118], v55);
  sub_26F17F6E4();

  (*(v31 + 8))(v5, v32);
  (*(v7 + 8))(v46, v30);
  v35 = sub_26F1801A4();
  v37 = v36;
  LOBYTE(v31) = v38;
  v40 = v39;
  v41 = v49;
  v42 = v51;
  sub_26F165038(v49, v51);
  v43 = v56;
  sub_26F165038(v42, v56);
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DD0, &unk_26F183360) + 48);
  *v44 = v35;
  *(v44 + 8) = v37;
  LOBYTE(v31) = v31 & 1;
  *(v44 + 16) = v31;
  *(v44 + 24) = v40;
  sub_26F160E18(v35, v37, v31);

  sub_26F13AB10(v41, &qword_2806D4DC0, &qword_26F183320);
  sub_26F142878(v35, v37, v31);

  return sub_26F13AB10(v42, &qword_2806D4DC0, &qword_26F183320);
}

uint64_t sub_26F164C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D90, &qword_26F183308);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = v0[2];
  v7 = v0[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D98, &qword_26F183310);
  sub_26F13AC54(&qword_2806D4DA0, &qword_2806D4D98, &qword_26F183310, MEMORY[0x277CE1138]);
  sub_26F180464();
  sub_26F13AC54(&qword_2806D4DA8, &qword_2806D4D90, &qword_26F183308, MEMORY[0x277CDF028]);
  sub_26F164EB0();
  sub_26F180224();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_26F164E58()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26F164EB0()
{
  result = qword_2806D4DB0;
  if (!qword_2806D4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4DB0);
  }

  return result;
}

uint64_t sub_26F164F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_26F165038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DC0, &qword_26F183320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1650B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4D90, &qword_26F183308);
  sub_26F13AC54(&qword_2806D4DA8, &qword_2806D4D90, &qword_26F183308, MEMORY[0x277CDF028]);
  sub_26F164EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F165180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F17FB94();
  *a1 = result;
  return result;
}

unint64_t sub_26F16523C()
{
  result = qword_2806D4E30;
  if (!qword_2806D4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DF8, &qword_26F1833E8);
    sub_26F1652F4();
    sub_26F13AC54(&qword_2806D4E90, &qword_2806D4E28, &qword_26F183478, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E30);
  }

  return result;
}

unint64_t sub_26F1652F4()
{
  result = qword_2806D4E38;
  if (!qword_2806D4E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DF0, &qword_26F1833E0);
    sub_26F1653AC();
    sub_26F13AC54(&qword_2806D4E88, &qword_2806D4E20, &qword_26F183440, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E38);
  }

  return result;
}

unint64_t sub_26F1653AC()
{
  result = qword_2806D4E40;
  if (!qword_2806D4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DE8, &qword_26F1833D8);
    sub_26F165464();
    sub_26F13AC54(&qword_2806D4E80, &qword_2806D4E18, &qword_26F183438, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E40);
  }

  return result;
}

unint64_t sub_26F165464()
{
  result = qword_2806D4E48;
  if (!qword_2806D4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DE0, &qword_26F1833D0);
    sub_26F1654F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E48);
  }

  return result;
}

unint64_t sub_26F1654F0()
{
  result = qword_2806D4E50;
  if (!qword_2806D4E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DD8, &qword_26F1833C8);
    sub_26F165604(&qword_2806D4E58, &qword_2806D4E10, &qword_26F183400, sub_26F1655D4);
    sub_26F13AC54(&qword_2806D4E70, &qword_2806D4E78, &qword_26F183480, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E50);
  }

  return result;
}

uint64_t sub_26F165604(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F165688()
{
  result = qword_2806D4E68;
  if (!qword_2806D4E68)
  {
    sub_26F17FEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E68);
  }

  return result;
}

unint64_t sub_26F1656E4()
{
  result = qword_2806D4EA0;
  if (!qword_2806D4EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4E98, &qword_26F183488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DF8, &qword_26F1833E8);
    sub_26F16523C();
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D4EA8, &qword_2806D4EB0, &unk_26F183490, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4EA0);
  }

  return result;
}

char *TryItViewController.init(lessonURL:tipID:collectionID:correlationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v58 = a4;
  v59 = a5;
  v56 = a2;
  v57 = a3;
  v9 = sub_26F17F6D4();
  MEMORY[0x28223BE20](v9 - 8);
  v55 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26F180104();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v62 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (v53 - v18);
  *&v7[OBJC_IVAR___TryItViewController_hostingController] = 0;
  *&v7[OBJC_IVAR___TryItViewController_delegate] = 0;
  v20 = OBJC_IVAR___TryItViewController_tryItView;
  v21 = type metadata accessor for TipsTryItView(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 56);
  v53[1] = v22 + 56;
  v54 = v23;
  v23(&v7[v20], 1, 1, v21);
  v24 = type metadata accessor for TryItViewController(0);
  v66.receiver = v7;
  v66.super_class = v24;
  v25 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
  v26 = sub_26F17DAB8(a1);
  *v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v27 = v21[5];
  *(v19 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v28 = v21[6];
  *(v19 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v63 = 0x3FF8000000000000;
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A68], v11);
  sub_26F1580A0();
  sub_26F17F934();
  v29 = v19 + v21[8];
  LOBYTE(v65) = 0;
  sub_26F180404();
  v30 = v64;
  *v29 = v63;
  *(v29 + 1) = v30;
  v31 = (v19 + v21[9]);
  v65 = 0;
  sub_26F180404();
  v32 = v64;
  *v31 = v63;
  v31[1] = v32;
  v33 = (v19 + v21[10]);
  v65 = 0;
  sub_26F180404();
  v34 = v64;
  *v33 = v63;
  v33[1] = v34;
  v35 = v21[11];
  type metadata accessor for TrainingManager(0);
  v36 = swift_allocObject();
  v37 = sub_26F15DEDC(v36);
  v38 = v37;
  *(v19 + v35) = v37;
  if (*(v26 + 2))
  {
    v39 = *(v26 + 4);
  }

  else
  {
    v39 = 0;
  }

  if (*(v37 + 32) == v39)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v53[0] = a1;
    MEMORY[0x28223BE20](KeyPath);
    v53[-2] = v38;
    v53[-1] = v39;
    v63 = v38;
    sub_26F15E0CC();

    sub_26F17F7B4();

    a1 = v53[0];
  }

  swift_getKeyPath();
  v63 = v38;
  sub_26F15E0CC();
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v38 + 32), v55);
  v41 = sub_26F180774();
  sub_26F15A234(v41, v42);
  sub_26F15A524(v26);
  v43 = (v38 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v44 = v57;
  *v43 = v56;
  v43[1] = v44;
  v45 = v59;
  v43[2] = v58;
  v43[3] = v45;
  v46 = v61;
  v43[4] = v60;
  v43[5] = v46;

  sub_26F15D5A4();

  v54(v19, 0, 1, v21);
  v47 = OBJC_IVAR___TryItViewController_tryItView;
  swift_beginAccess();
  sub_26F166A60(v19, &v25[v47]);
  swift_endAccess();
  sub_26F166AD0(&v25[v47], v62);
  v48 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4ED8, &qword_26F183588));
  v49 = sub_26F17FD84();
  v50 = sub_26F17F734();
  (*(*(v50 - 8) + 8))(a1, v50);
  v51 = *&v25[OBJC_IVAR___TryItViewController_hostingController];
  *&v25[OBJC_IVAR___TryItViewController_hostingController] = v49;

  return v25;
}

uint64_t type metadata accessor for TryItViewController(uint64_t a1)
{
  result = qword_2806D4EF0;
  if (!qword_2806D4EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F166138()
{
  v1 = type metadata accessor for TipsTryItView(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = OBJC_IVAR___TryItViewController_tryItView;
  swift_beginAccess();
  sub_26F166AD0(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    return sub_26F166B40(v7);
  }

  sub_26F166BA8(v7, v4);
  sub_26F166B40(v7);
  sub_26F15D704();
  return sub_26F166C0C(v4);
}

void sub_26F166434()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for TryItViewController(0);
  objc_msgSendSuper2(&v32, sel_loadView);
  v1 = *&v0[OBJC_IVAR___TryItViewController_hostingController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (!v3)
    {
LABEL_10:

      return;
    }

    v4 = v3;
    [v0 addChildViewController_];
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview_];

      v7 = [objc_opt_self() systemBackgroundColor];
      [v4 setBackgroundColor_];

      [v4 setTranslatesAutoresizingMaskIntoConstraints_];
      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EE0, &unk_26F183590);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_26F1834A0;
        v11 = [v4 leadingAnchor];
        v12 = [v0 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 leadingAnchor];

          v15 = [v11 constraintEqualToAnchor_];
          *(v10 + 32) = v15;
          v16 = [v4 topAnchor];
          v17 = [v0 view];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 topAnchor];

            v20 = [v16 constraintEqualToAnchor_];
            *(v10 + 40) = v20;
            v21 = [v4 trailingAnchor];
            v22 = [v0 view];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 trailingAnchor];

              v25 = [v21 constraintEqualToAnchor_];
              *(v10 + 48) = v25;
              v26 = [v4 bottomAnchor];
              v27 = [v0 view];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 bottomAnchor];

                v30 = [v26 constraintEqualToAnchor_];
                *(v10 + 56) = v30;
                sub_26F166C68();
                v31 = sub_26F180864();

                [v9 addConstraints_];

                [v2 didMoveToParentViewController_];
                goto LABEL_10;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id TryItViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26F180724();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TryItViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TryItViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F166A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F166AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F166B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F166BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsTryItView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F166C0C(uint64_t a1)
{
  v2 = type metadata accessor for TipsTryItView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F166C68()
{
  result = qword_2806D4EE8;
  if (!qword_2806D4EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D4EE8);
  }

  return result;
}

void sub_26F166CBC(uint64_t a1)
{
  sub_26F166DB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26F166DB8(uint64_t a1)
{
  if (!qword_2806D4F00)
  {
    type metadata accessor for TipsTryItView(255);
    v1 = sub_26F180A04();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D4F00);
    }
  }
}

uint64_t sub_26F166E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_26F180164();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26F166F6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_26F180164();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for InstructionView(uint64_t a1)
{
  result = qword_2806D4F08;
  if (!qword_2806D4F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F1670EC(uint64_t a1)
{
  sub_26F14BF64(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26F167374(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_26F167324(319, &qword_2806D4F18, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_26F167324(319, &qword_2806D4210, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26F167324(319, &unk_2806D4218, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_26F167374(319, &qword_2806D4F20, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_26F14BF64(319, &qword_2806D4F28, &qword_2806D4F30, qword_26F183608, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_26F180164();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F167324(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26F167374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26F1673F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26F167438@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for InstructionView(0);
  v13 = a5 + v12[5];
  *v13 = a1;
  v13[8] = a2 & 1;
  v14 = a5 + v12[6];
  *v14 = a3;
  *(v14 + 1) = a4;
  *(v14 + 2) = a6;
  v15 = a5 + v12[7];
  sub_26F180404();
  *v15 = v21;
  *(v15 + 1) = *(&v21 + 1);
  v16 = a5 + v12[8];
  sub_26F180404();
  *v16 = v21;
  *(v16 + 1) = *(&v21 + 1);
  v17 = (a5 + v12[9]);
  sub_26F180404();
  *v17 = v21;
  v18 = a5 + v12[10];
  type metadata accessor for CGSize(0);
  sub_26F180404();
  *v18 = v21;
  *(v18 + 2) = v22;
  v19 = v12[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F30, qword_26F183608);
  sub_26F180404();
  *(a5 + v19) = v21;
  return sub_26F180154();
}

uint64_t sub_26F1675F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_26F1676A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_26F15A234(v1, v2);
}

uint64_t sub_26F1676E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_26F1677B4()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for InstructionView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26F167904@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v2 = type metadata accessor for InstructionView(0);
  v3 = *(v2 - 8);
  v116 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v101 = v4;
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F38, &qword_26F183660);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v97 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F40, &qword_26F183668);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v97 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F48, &qword_26F183670) - 8;
  MEMORY[0x28223BE20](v107);
  v102 = &v97 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F50, &qword_26F183678) - 8;
  MEMORY[0x28223BE20](v109);
  v103 = &v97 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F58, &qword_26F183680) - 8;
  MEMORY[0x28223BE20](v108);
  v104 = &v97 - v16;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F60, &qword_26F183688);
  MEMORY[0x28223BE20](v106);
  v105 = &v97 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F68, &qword_26F183690);
  v111 = *(v18 - 8);
  v112 = v18;
  MEMORY[0x28223BE20](v18);
  v117 = &v97 - v19;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F70, &qword_26F183698);
  MEMORY[0x28223BE20](v110);
  v118 = &v97 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F78, &qword_26F1836A0);
  MEMORY[0x28223BE20](v114);
  v113 = &v97 - v21;
  *v9 = sub_26F17FD74();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F80, &qword_26F1836A8) + 44)];
  v98 = v1;
  sub_26F168410(v1, v22);
  v23 = v1;
  v24 = v5;
  v99 = v5;
  sub_26F16A9D4(v23, v5);
  v100 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v25 = v100;
  v26 = swift_allocObject();
  sub_26F16AA3C(v24, v26 + v25);
  v27 = sub_26F180564();
  v29 = v28;
  v30 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F88, &qword_26F1836B0) + 36)];
  *v30 = sub_26F150C28;
  v30[1] = 0;
  v30[2] = v27;
  v30[3] = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26F16AAA0;
  *(v31 + 24) = v26;
  v32 = &v9[*(v7 + 44)];
  *v32 = sub_26F14B30C;
  v32[1] = v31;
  sub_26F180564();
  sub_26F17FB44();
  sub_26F142810(v9, v13, &qword_2806D4F38, &qword_26F183660);
  v33 = &v13[*(v11 + 44)];
  v34 = v141;
  *(v33 + 4) = v140;
  *(v33 + 5) = v34;
  *(v33 + 6) = v142;
  v35 = v137;
  *v33 = v136;
  *(v33 + 1) = v35;
  v36 = v139;
  *(v33 + 2) = v138;
  *(v33 + 3) = v36;
  LOBYTE(v24) = sub_26F180034();
  sub_26F17F894();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v102;
  sub_26F142810(v13, v102, &qword_2806D4F40, &qword_26F183668);
  v46 = v45 + *(v107 + 44);
  *v46 = v24;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  LOBYTE(v24) = sub_26F180004();
  sub_26F17F894();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v45;
  v56 = v103;
  sub_26F142810(v55, v103, &qword_2806D4F48, &qword_26F183670);
  v57 = v56 + *(v109 + 44);
  *v57 = v24;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v59 = v56;
  v60 = v104;
  sub_26F142810(v59, v104, &qword_2806D4F50, &qword_26F183678);
  v61 = v60 + *(v108 + 44);
  *v61 = KeyPath;
  *(v61 + 8) = 1;
  v62 = v98;
  v63 = (v98 + *(v116 + 36));
  v64 = *v63;
  v65 = *(v63 + 1);
  LODWORD(v108) = v64;
  LOBYTE(v127) = v64;
  v109 = v65;
  v128 = v65;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v122)
  {
    v66 = -10.0;
  }

  else
  {
    v66 = 0.0;
  }

  v67 = v105;
  sub_26F142810(v60, v105, &qword_2806D4F58, &qword_26F183680);
  v68 = v67 + *(v106 + 36);
  *v68 = v66;
  *(v68 + 8) = 0;
  v69 = sub_26F1677B4();
  swift_getKeyPath();
  v127 = v69;
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v70 = *(v69 + 49);

  LOBYTE(v127) = v70;
  v71 = v99;
  sub_26F16A9D4(v62, v99);
  v72 = v100;
  v73 = swift_allocObject();
  sub_26F16AA3C(v71, v73 + v72);
  sub_26F16B1BC();
  sub_26F180314();

  sub_26F16B640(v67);
  v74 = sub_26F1677B4();
  swift_getKeyPath();
  v127 = v74;
  sub_26F17F7C4();

  LODWORD(v71) = *(v74 + 52);

  if (v71 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4FF8, &qword_26F183758);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_26F181B20;
    v76 = [objc_opt_self() systemBackgroundColor];
    *(v75 + 32) = sub_26F1803A4();
    *(v75 + 40) = sub_26F180354();
    sub_26F180634();
    sub_26F180624();
    MEMORY[0x27438A100](v75);
    sub_26F17FA64();
    v116 = sub_26F17FAA4();
    v77 = sub_26F180014();
    v78 = v143[0];
    v79 = v143[1];
    v80 = v143[2];
    v81 = v143[3];
    v106 = v143[4];
  }

  else
  {
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v106 = 0;
    v116 = 0;
    v77 = 0;
  }

  LODWORD(v105) = v77;
  v82 = sub_26F180564();
  v84 = v83;
  *&v122 = v78;
  *(&v122 + 1) = v79;
  *&v123 = v80;
  *(&v123 + 1) = v81;
  v85 = v106;
  *&v124 = v106;
  *(&v124 + 1) = v116;
  LOBYTE(v125) = v77;
  *(&v125 + 1) = v82;
  v126 = v83;
  v86 = v81;
  v87 = v118;
  (*(v111 + 32))();
  v88 = v87 + *(v110 + 36);
  v89 = v125;
  *(v88 + 32) = v124;
  *(v88 + 48) = v89;
  *(v88 + 64) = v126;
  v90 = v123;
  *v88 = v122;
  *(v88 + 16) = v90;
  v127 = v78;
  v128 = v79;
  v129 = v80;
  v130 = v86;
  v131 = v85;
  v132 = v116;
  v133 = v105;
  v134 = v82;
  v135 = v84;
  sub_26F13A854(&v122, v120, &qword_2806D4FE8, &qword_26F183748);
  sub_26F13AB10(&v127, &qword_2806D4FE8, &qword_26F183748);
  sub_26F180604();
  v91 = sub_26F180594();

  v120[0] = v108;
  v121 = v109;
  sub_26F180414();
  v92 = v119;
  v93 = v113;
  sub_26F142810(v118, v113, &qword_2806D4F70, &qword_26F183698);
  v94 = v93 + *(v114 + 36);
  *v94 = v91;
  *(v94 + 8) = v92;
  v95 = v115;
  sub_26F142810(v93, v115, &qword_2806D4F78, &qword_26F1836A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4FF0, &qword_26F183750);
  *(v95 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26F168410@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v168 = a2;
  v172 = type metadata accessor for InstructionView(0);
  v165 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v166 = v3;
  v167 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_26F17FE84();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v135 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v5 = MEMORY[0x28223BE20](v145);
  v137 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v138 = &v132 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v134 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v136 = &v132 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v141 = (&v132 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v133 = &v132 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v139 = &v132 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = (&v132 - v19);
  v144 = sub_26F180104();
  v21 = *(v144 - 8);
  v22 = MEMORY[0x28223BE20](v144);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v132 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v132 - v28;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5010, &qword_26F183780);
  MEMORY[0x28223BE20](v143);
  v169 = &v132 - v30;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5018, &qword_26F183788);
  MEMORY[0x28223BE20](v149);
  v151 = &v132 - v31;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5020, &qword_26F183790);
  MEMORY[0x28223BE20](v150);
  v153 = &v132 - v32;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5028, &qword_26F183798);
  MEMORY[0x28223BE20](v152);
  v154 = &v132 - v33;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5030, &qword_26F1837A0);
  MEMORY[0x28223BE20](v161);
  v162 = &v132 - v34;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5038, &qword_26F1837A8);
  v163 = *(v164 - 8);
  v35 = MEMORY[0x28223BE20](v164);
  v171 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v170 = &v132 - v37;
  v38 = sub_26F1677B4();
  swift_getKeyPath();
  *&v177 = v38;
  v39 = sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v40 = *(v38 + 48);

  v173 = v39;
  v140 = v20;
  if (v40 == 1)
  {
    type metadata accessor for TrainingManager(0);
    v41 = sub_26F17F914();
    v43 = v42;
    v175 = 0.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4068, &qword_26F181A90);
    sub_26F180404();
    v44 = v177;
    v175 = 0.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4078, &qword_26F181AA0);
    sub_26F180404();
    v45 = v177;
    v155 = v43 & 1;
    v156 = *(&v177 + 1);

    v160 = v41;

    v158 = v44;
    v46 = v44;
    v159 = *(&v44 + 1);

    v157 = v45;
    v47 = v45;
  }

  else
  {
    v160 = 0;
    v155 = 0;
    v159 = 0;
    v157 = 0;
    v156 = 0;
    v158 = 1;
  }

  v48 = sub_26F1677B4();
  swift_getKeyPath();
  *&v177 = v48;
  sub_26F17F7C4();

  v49 = *(v48 + 24);
  v142 = *(v48 + 16);

  v50 = a1;
  v51 = v172;
  v52 = (v50 + *(v172 + 36));
  v53 = *v52;
  v54 = v52[1];
  *&v177 = v53;
  *(&v177 + 1) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  v55 = v175;
  v56 = v21;
  v57 = *(v21 + 104);
  v58 = v144;
  v57(v29, *MEMORY[0x277CE0A70], v144);
  sub_26F1800B4();
  v60 = v59;
  v61 = *(v56 + 16);
  v61(v27, v29, v58);
  *&v177 = v55;
  v61(v24, v27, v58);
  v62 = v169;
  v63 = v169 + *(v143 + 36);
  sub_26F162EA0();
  sub_26F17F934();
  v64 = *(v56 + 8);
  v64(v27, v58);
  v64(v29, v58);
  *(v63 + *(type metadata accessor for SystemFontScaledSupport(0) + 20)) = v60;
  *v62 = v142;
  *(v62 + 8) = v49;
  *(v62 + 16) = 0;
  *(v62 + 24) = MEMORY[0x277D84F90];
  v65 = *(v51 + 24);
  v66 = v50;
  v67 = (v50 + v65);
  v68 = *v67;
  v69 = v67[1];
  v70 = v67[2];
  *&v177 = *v67;
  *(&v177 + 1) = v69;
  *&v178 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4398, &qword_26F181EE8);
  MEMORY[0x27438A090](&v175);
  v146 = v66;
  if (v175 <= 0.0)
  {
    v81 = v141;
    sub_26F14E9B4(v141);
    v82 = v147;
    v83 = v136;
    v84 = v148;
    (*(v147 + 104))(v136, *MEMORY[0x277CE0558], v148);
    (*(v82 + 56))(v83, 0, 1, v84);
    v85 = *(v145 + 48);
    v77 = v137;
    sub_26F13A854(v81, v137, &qword_2806D4200, &qword_26F181B88);
    sub_26F13A854(v83, v77 + v85, &qword_2806D4200, &qword_26F181B88);
    v86 = *(v82 + 48);
    if (v86(v77, 1, v84) == 1)
    {
      sub_26F13AB10(v83, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v81, &qword_2806D4200, &qword_26F181B88);
      v87 = v86(v77 + v85, 1, v84);
      v80 = v146;
      if (v87 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    v89 = v134;
    sub_26F13A854(v77, v134, &qword_2806D4200, &qword_26F181B88);
    if (v86(v77 + v85, 1, v84) == 1)
    {
      sub_26F13AB10(v83, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v141, &qword_2806D4200, &qword_26F181B88);
      (*(v82 + 8))(v89, v84);
      v80 = v146;
LABEL_16:
      sub_26F13AB10(v77, &qword_2806D4308, &qword_26F182E30);
      goto LABEL_18;
    }

    v129 = v77 + v85;
    v130 = v135;
    (*(v82 + 32))(v135, v129, v84);
    sub_26F16C1C4(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    sub_26F1806F4();
    v131 = *(v82 + 8);
    v131(v130, v84);
    sub_26F13AB10(v83, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v141, &qword_2806D4200, &qword_26F181B88);
    v131(v89, v84);
    sub_26F13AB10(v77, &qword_2806D4200, &qword_26F181B88);
    v80 = v146;
  }

  else
  {
    *&v177 = v68;
    *(&v177 + 1) = v69;
    *&v178 = v70;
    MEMORY[0x27438A090](&v175, v71, v175);
    v72 = v140;
    sub_26F14E9B4(v140);
    v73 = v147;
    v74 = v139;
    v75 = v148;
    (*(v147 + 104))(v139, *MEMORY[0x277CE0558], v148);
    (*(v73 + 56))(v74, 0, 1, v75);
    v76 = *(v145 + 48);
    v77 = v138;
    sub_26F13A854(v72, v138, &qword_2806D4200, &qword_26F181B88);
    sub_26F13A854(v74, v77 + v76, &qword_2806D4200, &qword_26F181B88);
    v78 = *(v73 + 48);
    if (v78(v77, 1, v75) == 1)
    {
      sub_26F13AB10(v74, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v72, &qword_2806D4200, &qword_26F181B88);
      v79 = v78(v77 + v76, 1, v75);
      v80 = v146;
      if (v79 == 1)
      {
LABEL_7:
        sub_26F13AB10(v77, &qword_2806D4200, &qword_26F181B88);
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v88 = v133;
    sub_26F13A854(v77, v133, &qword_2806D4200, &qword_26F181B88);
    if (v78(v77 + v76, 1, v75) == 1)
    {
      sub_26F13AB10(v139, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v140, &qword_2806D4200, &qword_26F181B88);
      (*(v73 + 8))(v88, v75);
      v80 = v146;
      goto LABEL_16;
    }

    v90 = v77 + v76;
    v91 = v135;
    (*(v73 + 32))(v135, v90, v75);
    sub_26F16C1C4(&qword_2806D4318, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    sub_26F1806F4();
    v92 = *(v73 + 8);
    v92(v91, v75);
    sub_26F13AB10(v139, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v140, &qword_2806D4200, &qword_26F181B88);
    v92(v88, v75);
    sub_26F13AB10(v77, &qword_2806D4200, &qword_26F181B88);
    v80 = v146;
  }

LABEL_18:
  v93 = sub_26F1677B4();
  swift_getKeyPath();
  *&v177 = v93;
  sub_26F17F7C4();

  v94 = *(v93 + 48);

  if (v94 == 1)
  {
    sub_26F180544();
  }

  else
  {
    sub_26F180564();
  }

  sub_26F17F9A4();
  v95 = v151;
  sub_26F142810(v169, v151, &qword_2806D5010, &qword_26F183780);
  v96 = (v95 + *(v149 + 36));
  v97 = v178;
  *v96 = v177;
  v96[1] = v97;
  v96[2] = v179;
  KeyPath = swift_getKeyPath();
  v99 = v153;
  sub_26F142810(v95, v153, &qword_2806D5018, &qword_26F183788);
  v100 = (v99 + *(v150 + 36));
  *v100 = KeyPath;
  v100[1] = 0x3FE0000000000000;
  v101 = v80 + *(v172 + 32);
  v102 = *v101;
  v103 = *(v101 + 8);
  LOBYTE(v175) = v102;
  v176 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v174)
  {
    v104 = 1.0;
  }

  else
  {
    v104 = 0.0;
  }

  v105 = v154;
  sub_26F142810(v99, v154, &qword_2806D5020, &qword_26F183790);
  *(v105 + *(v152 + 36)) = v104;
  v106 = v167;
  sub_26F16A9D4(v80, v167);
  v107 = (*(v165 + 80) + 16) & ~*(v165 + 80);
  v108 = swift_allocObject();
  sub_26F16AA3C(v106, v108 + v107);
  v109 = v162;
  sub_26F142810(v105, v162, &qword_2806D5028, &qword_26F183798);
  v110 = (v109 + *(v161 + 36));
  *v110 = sub_26F16BA88;
  v110[1] = v108;
  v110[2] = 0;
  v110[3] = 0;
  *&v111 = COERCE_DOUBLE(sub_26F1677B4());
  swift_getKeyPath();
  v175 = *&v111;
  sub_26F17F7C4();

  v112 = *(v111 + 16);
  v113 = *(v111 + 24);

  v175 = v112;
  v176 = v113;
  sub_26F16A9D4(v80, v106);
  v114 = swift_allocObject();
  sub_26F16AA3C(v106, v114 + v107);
  sub_26F16BAB8();
  v115 = v170;
  sub_26F180324();

  sub_26F13AB10(v109, &qword_2806D5030, &qword_26F1837A0);
  v116 = v163;
  v173 = *(v163 + 16);
  v117 = v164;
  v173(v171, v115, v164);
  v118 = v168;
  v119 = v160;
  v120 = v155;
  *v168 = v160;
  v118[1] = v120;
  v121 = v158;
  v122 = v159;
  v118[2] = v158;
  v118[3] = v122;
  v123 = v157;
  v124 = v156;
  v118[4] = v157;
  v118[5] = v124;
  v125 = v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5080, &qword_26F183838) + 48);
  v126 = v171;
  v173(v125, v171, v117);
  sub_26F16BDD0(v119, v120, v121, v122, v123, v124);
  sub_26F16BE48(v119, v120, v121, v122, v123, v124);
  v127 = *(v116 + 8);
  v127(v170, v117);
  v127(v126, v117);
  return sub_26F16BE48(v119, v120, v121, v122, v123, v124);
}

uint64_t sub_26F1698B8(uint64_t a1)
{
  v29 = sub_26F180644();
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26F180684();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InstructionView(0);
  v7 = v6 - 8;
  v25 = *(v6 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = sub_26F1806A4();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = (a1 + *(v7 + 48));
  v17 = *(v16 + 2);
  aBlock = *v16;
  v34 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5008, &qword_26F183778);
  sub_26F180414();
  sub_26F169D5C(v38, v39);
  sub_26F16BEB0();
  v18 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v26 = *(v10 + 8);
  v26(v13, v9);
  sub_26F16A9D4(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v20 = swift_allocObject();
  sub_26F16AA3C(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v36 = sub_26F16C120;
  v37 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v34 = sub_26F1673F4;
  v35 = &block_descriptor_2;
  v21 = _Block_copy(&aBlock);

  sub_26F180664();
  *&aBlock = MEMORY[0x277D84F90];
  sub_26F16C1C4(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  v22 = v28;
  v23 = v29;
  sub_26F180A44();
  MEMORY[0x27438A580](v15, v5, v22, v21);
  _Block_release(v21);

  (*(v32 + 8))(v22, v23);
  (*(v30 + 8))(v5, v31);
  return (v26)(v15, v27);
}

void sub_26F169D5C(double a1, double a2)
{
  if (a1 != 0.0 || a2 != 0.0)
  {
    v3 = sub_26F1677B4();
    swift_getKeyPath();
    sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
    sub_26F17F7C4();

    v4 = *(v3 + 16);
    v5 = *(v3 + 24);

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = sub_26F180094();
      sub_26F16AB50(v7, a1);

      type metadata accessor for InstructionView(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
      sub_26F180424();
    }
  }
}

uint64_t sub_26F169EFC(uint64_t a1)
{
  sub_26F180604();
  sub_26F17FA44();
}

uint64_t sub_26F169F78(uint64_t a1)
{
  type metadata accessor for InstructionView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  sub_26F180424();
}

void sub_26F16A034(uint64_t a1)
{
  type metadata accessor for InstructionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5008, &qword_26F183778);
  sub_26F180414();
  sub_26F169D5C(v1, v2);
}

void sub_26F16A0A8(uint64_t a1, double a2, double a3)
{
  type metadata accessor for InstructionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5008, &qword_26F183778);
  sub_26F180424();
}

void sub_26F16A128(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v3 = MEMORY[0x27438A200](a1, 0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v3);
    sub_26F17FA44();
  }
}

void sub_26F16A1D8(uint64_t a1)
{
  v3 = type metadata accessor for InstructionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = (a1 + *(v3 + 28));
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v23) = v11;
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if ((v25 & 1) == 0)
  {
    v22[1] = v1;
    v13 = (a1 + *(v3 + 44));
    v15 = *v13;
    v14 = v13[1];
    v23 = *v13;
    v24 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5000, &qword_26F183760);
    sub_26F180414();
    if (v25)
    {
      sub_26F180924();
    }

    v16 = sub_26F180914();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    sub_26F16A9D4(a1, v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_26F1808E4();
    v17 = sub_26F1808D4();
    v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_26F16AA3C(v6, v19 + v18);
    v21 = sub_26F1726AC(0, 0, v9, &unk_26F183770, v19);
    v23 = v15;
    v24 = v14;
    v25 = v21;
    sub_26F180424();
  }
}

uint64_t sub_26F16A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_26F180AA4();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_26F1808E4();
  v4[10] = sub_26F1808D4();
  v7 = sub_26F1808C4();
  v4[11] = v7;
  v4[12] = v6;

  return MEMORY[0x2822009F8](sub_26F16A568, v7, v6);
}

uint64_t sub_26F16A568()
{
  v1 = *(v0 + 48);
  v2 = (v1 + *(type metadata accessor for InstructionView(0) + 28));
  v3 = *v2;
  *(v0 + 138) = *v2;
  v4 = *(v2 + 1);
  *(v0 + 16) = v3;
  *(v0 + 104) = v4;
  *(v0 + 24) = v4;
  *(v0 + 136) = 1;
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v5 = sub_26F180BC4();
  v7 = v6;
  sub_26F180B84();
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = sub_26F16A6B0;

  return sub_26F14A55C(v5, v7, 0, 0, 1);
}

uint64_t sub_26F16A6B0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_26F16A8F8;
  }

  else
  {
    v8 = sub_26F16A848;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26F16A848()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 138);

  sub_26F1677B4();
  sub_26F15C2EC(0);

  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 137) = 0;
  sub_26F180424();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F16A8F8()
{

  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2._object = 0x800000026F1850B0;
  v2._countAndFlagsBits = 0xD000000000000023;
  TryItLog.log(_:)(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F16A9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F16AA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26F16AAA0(double a1, double a2)
{
  v5 = *(type metadata accessor for InstructionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_26F16A0A8(v6, a1, a2);
}

uint64_t sub_26F16AB18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F16AB50(uint64_t a1, double a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5088, &qword_26F183840);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5090, &qword_26F183848);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v39 - v6;
  v48 = sub_26F180144();
  v52 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F180184();
  v50 = v10;
  v51 = v9;
  v42 = v11;
  v49 = v12;
  v13 = sub_26F1677B4();
  swift_getKeyPath();
  v53 = v13;
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);

  v53 = v15;
  v54 = v14;
  sub_26F140F5C();
  v16 = sub_26F1801B4();
  v18 = v17;
  v20 = v19;
  v21 = sub_26F180184();
  v45 = v22;
  v46 = v21;
  v43 = v23;
  v44 = v24;
  sub_26F142878(v16, v18, v20 & 1);

  v39[1] = *(type metadata accessor for InstructionView(0) + 48);
  v25 = sub_26F180114();
  v26 = *(v25 - 8);
  v40 = *(v26 + 56);
  v41 = v26 + 56;
  v40(v7, 1, 1, v25);
  v27 = sub_26F180194();
  v39[0] = *(*(v27 - 8) + 56);
  (v39[0])(v4, 1, 1, v27);
  v28 = v47;
  sub_26F180134();
  sub_26F180124();
  v30 = v29;
  v31 = *(v52 + 8);
  v52 += 8;
  v32 = v48;
  v31(v28, v48);
  v40(v7, 1, 1, v25);
  (v39[0])(v4, 1, 1, v27);
  sub_26F180134();
  LOBYTE(v4) = v43;
  v34 = v45;
  v33 = v46;
  sub_26F180124();
  v36 = v35;
  v31(v28, v32);
  v37 = round(v36 / v30);
  sub_26F142878(v33, v34, v4 & 1);

  sub_26F142878(v51, v50, v42 & 1);

  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v37 < 9.22337204e18)
  {
    return v37;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F16B068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F17FC14();
  *a1 = result;
  return result;
}

uint64_t sub_26F16B094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F17FC14();
  *a1 = result;
  return result;
}

void sub_26F16B13C(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for InstructionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_26F16A128(a1, a2, v6);
}

unint64_t sub_26F16B1BC()
{
  result = qword_2806D4F90;
  if (!qword_2806D4F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F60, &qword_26F183688);
    sub_26F16B248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4F90);
  }

  return result;
}

unint64_t sub_26F16B248()
{
  result = qword_2806D4F98;
  if (!qword_2806D4F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F58, &qword_26F183680);
    sub_26F16B300();
    sub_26F13AC54(&qword_2806D4FD8, &qword_2806D4FE0, &qword_26F183718, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4F98);
  }

  return result;
}

unint64_t sub_26F16B300()
{
  result = qword_2806D4FA0;
  if (!qword_2806D4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F50, &qword_26F183678);
    sub_26F16B38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FA0);
  }

  return result;
}

unint64_t sub_26F16B38C()
{
  result = qword_2806D4FA8;
  if (!qword_2806D4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F48, &qword_26F183670);
    sub_26F16B418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FA8);
  }

  return result;
}

unint64_t sub_26F16B418()
{
  result = qword_2806D4FB0;
  if (!qword_2806D4FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F40, &qword_26F183668);
    sub_26F16B4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FB0);
  }

  return result;
}

unint64_t sub_26F16B4A4()
{
  result = qword_2806D4FB8;
  if (!qword_2806D4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F38, &qword_26F183660);
    sub_26F16B55C();
    sub_26F13AC54(&qword_2806D48F8, &qword_2806D4900, &qword_26F182480, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FB8);
  }

  return result;
}

unint64_t sub_26F16B55C()
{
  result = qword_2806D4FC0;
  if (!qword_2806D4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F88, &qword_26F1836B0);
    sub_26F13AC54(&qword_2806D4FC8, &qword_2806D4FD0, &qword_26F183710, MEMORY[0x277CE1198]);
    sub_26F13AC54(&qword_2806D48E8, &qword_2806D48F0, &qword_26F182478, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FC0);
  }

  return result;
}

uint64_t sub_26F16B640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F60, &qword_26F183688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F16B6CC()
{
  v1 = type metadata accessor for InstructionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 48);
  v8 = sub_26F180164();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F16B8F8(uint64_t a1)
{
  v4 = *(type metadata accessor for InstructionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F149E48;

  return sub_26F16A474(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F16B9F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_26F15A234(v1, v2);
}

unint64_t sub_26F16BAB8()
{
  result = qword_2806D5040;
  if (!qword_2806D5040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5030, &qword_26F1837A0);
    sub_26F16BB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5040);
  }

  return result;
}

unint64_t sub_26F16BB44()
{
  result = qword_2806D5048;
  if (!qword_2806D5048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5028, &qword_26F183798);
    sub_26F16BBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5048);
  }

  return result;
}

unint64_t sub_26F16BBD0()
{
  result = qword_2806D5050;
  if (!qword_2806D5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5020, &qword_26F183790);
    sub_26F16BC88();
    sub_26F13AC54(&qword_2806D5070, &qword_2806D5078, &qword_26F183830, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5050);
  }

  return result;
}

unint64_t sub_26F16BC88()
{
  result = qword_2806D5058;
  if (!qword_2806D5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5018, &qword_26F183788);
    sub_26F16BD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5058);
  }

  return result;
}

unint64_t sub_26F16BD14()
{
  result = qword_2806D5060;
  if (!qword_2806D5060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5010, &qword_26F183780);
    sub_26F16C1C4(&qword_2806D5068, type metadata accessor for SystemFontScaledSupport, &unk_26F183078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5060);
  }

  return result;
}

void sub_26F16BDD0(id result, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3 != 1)
  {

    v8 = a3;

    v9 = a5;
  }
}

uint64_t sub_26F16BE48(uint64_t result, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3 != 1)
  {
  }

  return v9;
}

unint64_t sub_26F16BEB0()
{
  result = qword_2806D4340;
  if (!qword_2806D4340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D4340);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for InstructionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26F17FE84();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v0 + v3, 1, v5))
    {
      (*(v6 + 8))(v0 + v3, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 48);
  v8 = sub_26F180164();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F16C138(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InstructionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F16C1C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F16C234()
{
  result = qword_2806D5098;
  if (!qword_2806D5098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4FF0, &qword_26F183750);
    sub_26F16C2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5098);
  }

  return result;
}

unint64_t sub_26F16C2C0()
{
  result = qword_2806D50A0;
  if (!qword_2806D50A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F78, &qword_26F1836A0);
    sub_26F16C378();
    sub_26F13AC54(&qword_2806D4678, &qword_2806D4680, &qword_26F182188, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D50A0);
  }

  return result;
}

unint64_t sub_26F16C378()
{
  result = qword_2806D50A8;
  if (!qword_2806D50A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F70, &qword_26F183698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F60, &qword_26F183688);
    sub_26F16B1BC();
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D50B0, &qword_2806D4FE8, &qword_26F183748, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D50A8);
  }

  return result;
}

uint64_t sub_26F16C4DC(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_26F180334();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_26F180394();
  *a5 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DraggableLocationItem.GestureState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DraggableLocationItem.GestureState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F16C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26F180714();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F16C810(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F180714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DraggableLocationItem(uint64_t a1)
{
  result = qword_2806D50B8;
  if (!qword_2806D50B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F16C900(uint64_t a1)
{
  sub_26F16CB0C(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26F16CAA8(319);
    if (v2 <= 0x3F)
    {
      sub_26F16CB0C(319, &qword_2806D50D0, type metadata accessor for CGRect, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_26F13FF30(319, &qword_2806D4210, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D4538, MEMORY[0x277D839F8]);
          if (v5 <= 0x3F)
          {
            sub_26F13FF30(319, &qword_2806D50D8, &type metadata for DraggableLocationItem.GestureState);
            if (v6 <= 0x3F)
            {
              sub_26F180714();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F16CAA8(uint64_t a1)
{
  if (!qword_2806D50C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4830, "~m");
    v1 = sub_26F1804A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2806D50C8);
    }
  }
}

void sub_26F16CB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F16CB74()
{
  result = qword_2806D50E0;
  if (!qword_2806D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D50E0);
  }

  return result;
}

uint64_t sub_26F16CBC8()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_26F180944();
    v7 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *sub_26F16CD08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v157 = a1;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = v128 - v3;
  v140 = sub_26F17FE54();
  MEMORY[0x28223BE20](v140);
  v138 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_26F17F8F4();
  v143 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v141 = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D50E8, &qword_26F1839A0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = v128 - v6;
  v169 = sub_26F17FAE4();
  v171 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v168 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_26F17F8C4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D50F0, &qword_26F1839A8);
  MEMORY[0x28223BE20](v142);
  v166 = v128 - v9;
  v10 = type metadata accessor for DraggableLocationItem(0);
  v11 = v10 - 8;
  v172 = *(v10 - 8);
  v170 = *(v172 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_26F17FF14();
  v14 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v16 = v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LocationItemView(0);
  MEMORY[0x28223BE20](v17);
  v19 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D50F8, &qword_26F1839B0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = v128 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5100, &qword_26F1839B8);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v159 = v128 - v26;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5108, &qword_26F1839C0) - 8;
  MEMORY[0x28223BE20](v160);
  v158 = v128 - v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5110, &qword_26F1839C8);
  MEMORY[0x28223BE20](v163);
  v164 = v128 - v28;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5118, &qword_26F1839D0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = v128 - v29;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5120, &qword_26F1839D8);
  MEMORY[0x28223BE20](v133);
  v136 = v128 - v30;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5128, &qword_26F1839E0);
  MEMORY[0x28223BE20](v167);
  v139 = v128 - v31;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5130, &qword_26F1839E8);
  v146 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v144 = v128 - v32;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5138, &qword_26F1839F0);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v150 = v128 - v33;
  v34 = *(v11 + 72);
  v35 = sub_26F180714();
  (*(*(v35 - 8) + 16))(v19, v2 + v34, v35);
  v36 = *(v2 + 224);
  v37 = &v19[*(v17 + 20)];
  *v37 = *(v2 + 216);
  *(v37 + 1) = v36;

  sub_26F17FF04();
  sub_26F171CDC(&qword_2806D5140, type metadata accessor for LocationItemView, &unk_26F181F34);
  sub_26F1802D4();
  (*(v14 + 8))(v16, v162);
  sub_26F170B34(v19);
  v38 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5148, &unk_26F1839F8) + 36)];
  v39 = *(sub_26F17FB14() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_26F17FD14();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #18.0 }

  *v38 = _Q0;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  v47 = sub_26F180354();
  LOBYTE(v38) = sub_26F180014();
  v48 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5150, &qword_26F183A08) + 36)];
  *v48 = v47;
  v48[8] = v38;
  v49 = v158;
  sub_26F170B90(v2, v13);
  v50 = *(v172 + 80);
  v51 = (v50 + 16) & ~v50;
  v52 = v51 + v170;
  v53 = swift_allocObject();
  sub_26F170BF8(v13, v53 + v51);
  v54 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5158, &qword_26F183A10) + 36)];
  *v54 = sub_26F16E358;
  v54[1] = 0;
  v54[2] = sub_26F170C5C;
  v54[3] = v53;
  sub_26F170B90(v2, v13);
  v172 = v50;
  v170 = v52;
  v55 = swift_allocObject();
  v165 = v13;
  sub_26F170BF8(v13, v55 + v51);
  v56 = sub_26F180564();
  v57 = &v23[*(v21 + 44)];
  *v57 = sub_26F170CCC;
  v57[1] = v55;
  v57[2] = v56;
  v57[3] = v58;
  v59 = *(v2 + 192);
  v60 = *(v2 + 200);
  LOBYTE(v173) = *(v2 + 192);
  *&v174 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180414();
  if (v176 == 1)
  {
    v62 = 1.03;
  }

  else
  {
    v62 = 1.0;
  }

  sub_26F180634();
  v64 = v63;
  v66 = v65;
  v67 = v23;
  v68 = v159;
  sub_26F142810(v67, v159, &qword_2806D50F8, &qword_26F1839B0);
  v69 = &v68[*(v25 + 44)];
  *v69 = v62;
  v69[1] = v62;
  *(v69 + 2) = v64;
  *(v69 + 3) = v66;
  v70 = sub_26F1805F4();
  LOBYTE(v173) = v59;
  v129 = v60;
  *&v174 = v60;
  v128[1] = v61;
  sub_26F180414();
  v71 = v176 == 1;
  sub_26F142810(v68, v49, &qword_2806D5100, &qword_26F1839B8);
  v72 = v49 + *(v160 + 44);
  *v72 = v70;
  *(v72 + 8) = v71;
  v73 = *(v2 + 208);
  v173 = *(v2 + 40);
  v74 = v2;
  v174 = *(v2 + 48);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  result = MEMORY[0x27438A090](&v176, v75);
  if ((v73 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = v176;
  if (v73 >= v176[2])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v77 = v176[v73 + 4];

  v78 = v164;
  sub_26F142810(v49, v164, &qword_2806D5108, &qword_26F1839C0);
  v79 = (v78 + *(v163 + 36));
  *v79 = 0;
  v79[1] = v77;
  v80 = v130;
  sub_26F17F8B4();
  v81 = v2;
  v82 = v165;
  sub_26F170B90(v81, v165);
  v83 = swift_allocObject();
  sub_26F170BF8(v82, v83 + v51);
  v84 = swift_allocObject();
  *(v84 + 16) = sub_26F170D4C;
  *(v84 + 24) = v83;
  v85 = v132;
  sub_26F1804C4();

  (*(v131 + 8))(v80, v85);
  LODWORD(v158) = v59;
  v86 = v168;
  sub_26F17FAD4();
  v87 = v74;
  sub_26F170B90(v74, v82);
  v88 = swift_allocObject();
  sub_26F170BF8(v82, v88 + v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5170, &unk_26F183A28);
  v160 = sub_26F171CDC(&qword_2806D4700, MEMORY[0x277CDDAD8], MEMORY[0x277CDDAD0]);
  v89 = v169;
  sub_26F1804C4();

  v90 = *(v171 + 8);
  v171 += 8;
  v159 = v90;
  (v90)(v86, v89);
  sub_26F17FE94();
  v91 = v141;
  sub_26F17F8D4();
  v92 = v87;
  v161 = v87;
  sub_26F170B90(v87, v82);
  v93 = swift_allocObject();
  sub_26F170BF8(v82, v93 + v51);
  sub_26F171CDC(&qword_2806D4AE0, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  sub_26F171CDC(&qword_2806D5178, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v94 = v147;
  v95 = v145;
  sub_26F1804D4();

  (*(v143 + 8))(v91, v95);
  sub_26F170B90(v92, v82);
  v96 = swift_allocObject();
  v162 = v51;
  v97 = v82;
  sub_26F170BF8(v82, v96 + v51);
  sub_26F13AC54(&qword_2806D5180, &qword_2806D50E8, &qword_26F1839A0, MEMORY[0x277CDFB18]);
  v98 = v166;
  v99 = v149;
  sub_26F1804C4();

  (*(v148 + 8))(v94, v99);
  sub_26F17F924();
  sub_26F170E90();
  sub_26F13AC54(&qword_2806D51E0, &qword_2806D50F0, &qword_26F1839A8, MEMORY[0x277CE02F8]);
  v100 = v134;
  v101 = v164;
  sub_26F180304();
  sub_26F13AB10(v98, &qword_2806D50F0, &qword_26F1839A8);
  sub_26F13AB10(v101, &qword_2806D5110, &qword_26F1839C8);
  LOBYTE(v173) = v158;
  *&v174 = v129;
  sub_26F180414();
  v102 = 1.0;
  if (v176)
  {
    v103 = 1.0;
  }

  else
  {
    v103 = 0.0;
  }

  v104 = v136;
  (*(v135 + 32))(v136, v100, v137);
  *(v104 + *(v133 + 36)) = v103;
  v105 = v161;
  v106 = *(v161 + 120);
  LOBYTE(v173) = *(v161 + 112);
  *&v174 = v106;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v176)
  {
    v102 = 0.85;
  }

  v107 = v139;
  sub_26F142810(v104, v139, &qword_2806D5120, &qword_26F1839D8);
  v108 = v168;
  *(v107 + *(v167 + 36)) = v102;
  sub_26F17FAD4();
  sub_26F170B90(v105, v97);
  v109 = swift_allocObject();
  sub_26F170BF8(v97, v109 + v51);
  v110 = v154;
  v111 = v169;
  sub_26F1804C4();

  (v159)(v108, v111);
  sub_26F17F924();
  v112 = sub_26F17143C();
  v113 = sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228, MEMORY[0x277CDF728]);
  v114 = v144;
  v115 = v156;
  sub_26F1802C4();
  (*(v155 + 8))(v110, v115);
  sub_26F13AB10(v107, &qword_2806D5128, &qword_26F1839E0);
  v116 = v161;
  v117 = *(v161 + 152);
  LOBYTE(v173) = *(v161 + 144);
  *&v174 = v117;
  sub_26F180414();
  v118 = v165;
  sub_26F170B90(v116, v165);
  v119 = swift_allocObject();
  v120 = v118;
  sub_26F170BF8(v118, v119 + v162);
  v173 = v167;
  *&v174 = v115;
  *(&v174 + 1) = v112;
  v175 = v113;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v122 = MEMORY[0x277D839B0];
  v123 = v150;
  v124 = v151;
  sub_26F180324();

  (*(v146 + 8))(v114, v124);
  v125 = sub_26F16CBC8();
  swift_getKeyPath();
  v173 = v125;
  sub_26F171CDC(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  LOBYTE(v118) = *(v125 + 51);

  LOBYTE(v176) = v118;
  sub_26F170B90(v116, v120);
  v126 = swift_allocObject();
  sub_26F170BF8(v120, v126 + v162);
  v173 = v124;
  *&v174 = v122;
  *(&v174 + 1) = OpaqueTypeConformance2;
  v175 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v127 = v153;
  sub_26F180324();

  return (*(v152 + 8))(v123, v127);
}

void sub_26F16E358(CGFloat *a1@<X8>)
{
  v2 = sub_26F17FE64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17FEA4();
  sub_26F17F9D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15.origin.x = v7;
  v15.origin.y = v9;
  v15.size.width = v11;
  v15.size.height = v13;
  *a1 = CGRectGetMidY(v15);
}

double sub_26F16E474(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180424();
  return result;
}

uint64_t sub_26F16E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_26F17F9E4();
  v6 = *(v5 - 8);
  v33 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DraggableLocationItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26F180354();
  v31 = v13;
  sub_26F170B90(a2, v12);
  v28 = *(v6 + 16);
  v14 = a1;
  v15 = v5;
  v28(v8, v14, v5);
  v16 = *(v10 + 80);
  v17 = *(v6 + 80);
  v18 = (v16 + 16) & ~v16;
  v27[0] = v18;
  v19 = (v11 + v17 + v18) & ~v17;
  v27[1] = v16 | v17;
  v20 = swift_allocObject();
  v30 = v20;
  sub_26F170BF8(v12, v20 + v18);
  v21 = *(v6 + 32);
  v21(v20 + v19, v8, v15);
  v38 = v13;
  v39 = sub_26F1718C4;
  v40 = v20;
  v41 = 0;
  v42 = 0;
  v22 = *(a2 + 72);
  *&v35 = *(a2 + 64);
  *(&v35 + 1) = v22;
  v23 = *(a2 + 96);
  v36 = *(a2 + 80);
  v37 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D51F8, &unk_26F183A98);
  MEMORY[0x27438A090](v34, v24);
  v35 = v34[0];
  v36 = v34[1];
  sub_26F170B90(a2, v12);
  v28(v8, v29, v15);
  v25 = swift_allocObject();
  sub_26F170BF8(v12, v25 + v27[0]);
  v21(v25 + v19, v8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5200, &qword_26F183AA8);
  type metadata accessor for CGRect(0);
  sub_26F171C58();
  sub_26F171CDC(&qword_2806D5210, type metadata accessor for CGRect, MEMORY[0x277CBF278]);
  sub_26F180314();
}

uint64_t sub_26F16E848(void *a1)
{
  v2 = sub_26F17FE64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[26];
  sub_26F17FEA4();
  sub_26F17F9D4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  MidY = CGRectGetMidY(v23);
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[4];
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v22);
  v19 = v22;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26F1716A8(v19);
  v19 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 < *(v19 + 16))
  {
    *(v19 + 8 * v6 + 32) = MidY;
    v21[1] = v16;
    v21[2] = v17;
    v21[3] = v18;
    v21[0] = v19;
    sub_26F180484();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F16EA2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26F17FE64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3[26];
  sub_26F17FEA4();
  sub_26F17F9D4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  v25.origin.x = v10;
  v25.origin.y = v12;
  v25.size.width = v14;
  v25.size.height = v16;
  MidY = CGRectGetMidY(v25);
  v18 = a3[2];
  v19 = a3[3];
  v20 = a3[4];
  v23[4] = v18;
  v23[5] = v19;
  v23[6] = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v24);
  v21 = v24;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26F1716A8(v21);
  v21 = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8 < *(v21 + 16))
  {
    *(v21 + 8 * v8 + 32) = MidY;
    v23[1] = v18;
    v23[2] = v19;
    v23[3] = v20;
    v23[0] = v21;
    sub_26F180484();
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_26F16EC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_26F180714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26F16CBC8();
  sub_26F180704();
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_26F15BCB8(v8, 1, v4);

  sub_26F13AB10(v4, &qword_2806D4360, &qword_26F181DC0);
  (*(v6 + 8))(v8, v5);
  v9 = *(a1 + 120);
  v14 = *(a1 + 112);
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if ((v13 & 1) == 0)
  {
    v11 = *(a1 + 200);
    v14 = *(a1 + 192);
    v15 = v11;
    v13 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
    sub_26F180424();
  }

  return result;
}

uint64_t sub_26F16EE18(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_26F180644();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F180684();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DraggableLocationItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_26F1806A4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_26F16BEB0();
  v24 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v26 = *(v11 + 8);
  v26(v14, v10);
  sub_26F170B90(v25, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_26F170BF8(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_26F17181C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_3;
  v19 = _Block_copy(aBlock);

  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F171CDC(&qword_2806D40E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0, MEMORY[0x277D83970]);
  v20 = v27;
  sub_26F180A44();
  v21 = v24;
  MEMORY[0x27438A580](v16, v6, v3, v19);
  _Block_release(v19);

  (*(v30 + 8))(v3, v20);
  (*(v28 + 8))(v6, v29);
  return (v26)(v16, v10);
}

double sub_26F16F270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_26F180714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 120);
  v14 = *(a1 + 112);
  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if ((v13 & 1) == 0)
  {
    sub_26F16CBC8();
    sub_26F180704();
    sub_26F180704();
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_26F15BCB8(v8, 1, v4);

    sub_26F13AB10(v4, &qword_2806D4360, &qword_26F181DC0);
    (*(v6 + 8))(v8, v5);
    v11 = *(a1 + 200);
    v14 = *(a1 + 192);
    v15 = v11;
    v13 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
    sub_26F180424();
  }

  return result;
}

void *sub_26F16F4A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180414();
  LOBYTE(v5) = 0;
  sub_26F180424();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  sub_26F16F63C(*(a2 + 208), v5);
  sub_26F1805D4();
  sub_26F1805A4();

  MEMORY[0x28223BE20](v3);
  sub_26F17FA44();
}

double *sub_26F16F63C(unint64_t a1, double a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v35 = v7;
  v36 = v6;
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v34);
  v10 = *(v34 + 16);

  if (v10 <= a1)
  {
    goto LABEL_54;
  }

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  v11 = *(v34 + 16);

  if (v11 != 3)
  {
    goto LABEL_54;
  }

  v12 = sub_26F180894();
  v12[4] = 0.0;
  v13 = v12 + 4;
  *(v12 + 2) = 3;
  v12[5] = 0.0;
  v12[6] = 0.0;
  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (*(v34 + 16) <= a1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = *(v34 + 8 * a1 + 32);

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (*(v34 + 16) <= a1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = *(v34 + 8 * a1 + 32);

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (*(v34 + 16) < 2uLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = *(v34 + 40);

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (!*(v34 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v17 = *(v34 + 32);

  if (!a1)
  {
    v35 = v7;
    v36 = v6;
    v37 = v8;
    MEMORY[0x27438A090](&v34, v9);
    if (*(v34 + 16))
    {
      v20 = *(v34 + 32);

      if (v20 > a2)
      {
        return v12;
      }

LABEL_15:
      v19 = 1;
      goto LABEL_16;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a1 != 2)
  {
    goto LABEL_15;
  }

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (*(v34 + 16) < 3uLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v18 = *(v34 + 48);

  if (v18 < a2)
  {
    return v12;
  }

  v19 = 0;
LABEL_16:
  v21 = a2 + 55.0 - v14;
  v22 = a2 + -55.0 - v15;
  v23 = v16 - v17;
  v24 = fabs(v22);
  v25 = fabs(v21);
  if (v16 - v17 > v24 && v23 > v25)
  {
    return v12;
  }

  v27 = v3[17];
  LOBYTE(v35) = *(v3 + 128);
  v36 = v27;
  LOBYTE(v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v28 = v3[19];
  LOBYTE(v35) = *(v3 + 144);
  v36 = v28;
  LOBYTE(v34) = 1;
  sub_26F180424();
  if (v22 < 0.0)
  {
    if (v24 / v23 < 2.0)
    {
      v29 = 1;
    }

    else
    {
      v29 = v19;
    }

    v30 = *(v12 + 2);
    if ((v29 & 1) == 0)
    {
      if (v30 > a1)
      {
        v33 = &v13[a1];
        *(v33 - 1) = v23;
        *v33 = v23 * -2.0;
        *(v33 - 2) = v23;
        return v12;
      }

      goto LABEL_47;
    }

    if (v30 > a1)
    {
      v31 = &v13[a1];
      *v31 = -v23;
      if (a1)
      {
        *(v31 - 1) = v23;
        return v12;
      }

      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v21 <= 0.0)
  {
    return v12;
  }

  v32 = *(v12 + 2);
  if (a1 || v25 / v23 < 2.0)
  {
    if (v32 > a1)
    {
      v13[a1] = v23;
      if (a1 + 1 < v32)
      {
        v13[a1 + 1] = -v23;
        return v12;
      }

      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (!v32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *v13 = v23 + v23;
  if (v32 != 1)
  {
    v12[5] = -v23;
    if (v32 != 2)
    {
      v12[6] = -v23;
      return v12;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_26F180AC4();
  __break(1u);
  return result;
}

uint64_t sub_26F16FA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a1 + 200);
  LOBYTE(v21) = *(a1 + 192);
  *&v22 = v7;
  LOBYTE(v18) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180424();
  v8 = *(a2 + 16);
  v9 = *(v6 + 208);
  if (v8)
  {
    v3 = 0;
    v17 = a2 + 32;
    do
    {
      if (v9 != v3)
      {
        v4 = *(v17 + 8 * v3);
        v10 = *(v6 + 40);
        v11 = *(v6 + 48);
        v12 = *(v6 + 56);
        v21 = v10;
        *&v22 = v11;
        *(&v22 + 1) = v12;

        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
        MEMORY[0x27438A090](&v23);
        v13 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_26F1716A8(v13);
        }

        if (v3 >= *(v13 + 2))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        *&v13[8 * v3 + 32] = v4;
        v18 = v10;
        v19 = v11;
        v20 = v12;
        sub_26F180484();
      }

      ++v3;
    }

    while (v8 != v3);
  }

  v21 = *(v6 + 16);
  v22 = *(v6 + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v18);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (v9 >= *(v18 + 16))
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v15 = *(v18 + 8 * v9 + 32);

    v4 = sub_26F16FD3C(v15, 110.0);
    v8 = *(v6 + 40);
    v3 = *(v6 + 48);
    v6 = *(v6 + 56);
    v21 = v8;
    *&v22 = v3;
    *(&v22 + 1) = v6;

    MEMORY[0x27438A090](&v23, v14);
    a2 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_12;
    }
  }

  result = sub_26F1716A8(a2);
  a2 = result;
LABEL_12:
  if (v9 >= *(a2 + 16))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 8 * v9 + 32) = v4;
    v18 = v8;
    v19 = v3;
    v20 = v6;
    sub_26F180484();
  }

  return result;
}

double sub_26F16FD3C(double a1, double a2)
{
  sub_26F17F8E4();
  v6 = v5 + a1;
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v11 = *(v2 + 96);
  v12 = *(v2 + 104);
  v24 = *(v2 + 64);
  v7 = v24;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D51F8, &unk_26F183A98);
  MEMORY[0x27438A090](&v23);
  MinY = CGRectGetMinY(v23);
  v15 = a2 * 0.5;
  v24 = v7;
  v25 = v8;
  v16 = v15 + MinY + 2.0;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v12;
  MEMORY[0x27438A090](&v23, v13);
  v17 = CGRectGetMaxY(v23) - v15 + -2.0;
  v18 = v6 < v16;
  if (v6 > v16)
  {
    v19 = v6;
  }

  else
  {
    v19 = v16;
  }

  v20 = *(v2 + 168);
  LOBYTE(v24) = *(v2 + 160);
  if (v17 < v6)
  {
    v18 = 1;
  }

  v25 = v20;
  LOBYTE(v23.origin.x) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  if (v17 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  return v21 - a1;
}

void sub_26F16FE90(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F17FF44();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DraggableLocationItem(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = v6;
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_26F180714();
  v41 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *(a2 + 120);
  LOBYTE(v49) = *(a2 + 112);
  v50 = v16;
  LOBYTE(v48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v17 = *(a2 + 192);
  v18 = *(a2 + 200);
  LOBYTE(v49) = v17;
  v50 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180414();
  if (LOBYTE(v48) == 1)
  {
    LOBYTE(v49) = v17;
    v50 = v18;
    LOBYTE(v48) = 2;
    sub_26F180424();
    v19 = *(a2 + 128);
    v20 = *(a2 + 136);
    LOBYTE(v49) = v19;
    v50 = v20;
    sub_26F180414();
    if (LOBYTE(v48) == 1)
    {
      v21 = *(a2 + 184);
      v49 = *(a2 + 176);
      v50 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
      sub_26F180414();
      v22 = sub_26F16F63C(*(a2 + 208), v48);
      v23 = sub_26F180894();
      v23[2] = 3;
      v23[5] = 0;
      v23[6] = 0;
      v23[4] = 0;
      v24 = sub_26F15B090(v22, v23);

      if (v24)
      {
        LOBYTE(v49) = v19;
        v50 = v20;
        LOBYTE(v48) = 0;
        sub_26F180424();
        v25 = sub_26F16CBC8() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
        *(v25 + 48) = 0;
        *(v25 + 56) = 0;

        sub_26F15D9C8();
        *(v25 + 48) = 0;
        *(v25 + 56) = 0;

        sub_26F16CBC8();
        sub_26F180704();
        v26 = v41;
        (*(v41 + 56))(v9, 1, 1, v10);
        sub_26F15BCB8(v15, 0, v9);

        sub_26F13AB10(v9, &qword_2806D4360, &qword_26F181DC0);
        (*(v26 + 8))(v15, v10);
      }

      else
      {
        sub_26F16CBC8();
        sub_26F15B0EC(1, 1, 0);
      }
    }

    else
    {
      sub_26F16CBC8();
      v27 = *(a2 + 160);
      v28 = *(a2 + 168);
      LOBYTE(v49) = v27;
      v50 = v28;
      sub_26F180414();
      sub_26F180704();
      sub_26F180704();
      v29 = v41;
      (*(v41 + 56))(v9, 0, 1, v10);
      sub_26F15BCB8(v13, 1, v9);

      sub_26F13AB10(v9, &qword_2806D4360, &qword_26F181DC0);
      (*(v29 + 8))(v13, v10);
      LOBYTE(v49) = v27;
      v50 = v28;
      LOBYTE(v48) = 0;
      sub_26F180424();
    }

    v30 = sub_26F16CBC8() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    v31 = *(v30 + 64);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      __break(1u);
    }

    else
    {
      *(v30 + 64) = v33;

      sub_26F1805D4();
      sub_26F1805A4();

      MEMORY[0x28223BE20](v34);
      *(&v40 - 2) = a2;
      v35 = v44;
      sub_26F170B90(a2, v44);
      v36 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v37 = swift_allocObject();
      sub_26F170BF8(v35, v37 + v36);
      v38 = v45;
      sub_26F17FF34();
      sub_26F17FA34();

      (*(v46 + 8))(v38, v47);
      v39 = *(a2 + 152);
      LOBYTE(v49) = *(a2 + 144);
      v50 = v39;
      LOBYTE(v48) = 1;
      sub_26F180424();
    }
  }
}

uint64_t sub_26F17059C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  sub_26F16F63C(*(a1 + 208), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  return sub_26F180484();
}

double sub_26F17064C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180424();
  return result;
}

double sub_26F1706A8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180424();
  return result;
}

void *sub_26F170708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_26F180714();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 120);
  v13 = *(a1 + 112);
  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if (v12[15] == 1)
  {
    v11 = *(a1 + 152);
    v13 = *(a1 + 144);
    v14 = v11;
    sub_26F180414();
    sub_26F16CBC8();
    sub_26F180704();
    (*(v6 + 56))(v4, 1, 1, v5);
    sub_26F15BCB8(v8, 0, v4);

    sub_26F13AB10(v4, &qword_2806D4360, &qword_26F181DC0);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_26F17091C(uint64_t a1)
{
  v1 = sub_26F16CBC8();
  swift_getKeyPath();
  sub_26F171CDC(&qword_2806D40F0, type metadata accessor for TrainingManager, &unk_26F182B30);
  sub_26F17F7C4();

  v2 = *(v1 + 51);

  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
    sub_26F180424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
    sub_26F180424();
  }

  return result;
}

uint64_t sub_26F170A60()
{
  v1 = *v0;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v1);
  return sub_26F180BB4();
}

uint64_t sub_26F170AD4(uint64_t a1)
{
  v2 = *v1;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v2);
  return sub_26F180BB4();
}

uint64_t sub_26F170B34(uint64_t a1)
{
  v2 = type metadata accessor for LocationItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F170B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraggableLocationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F170BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraggableLocationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_26F170C5C(void *a1)
{
  v3 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26F16E474(a1, v4);
}

uint64_t sub_26F170CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F16E4D0(a1, v6, a2);
}

uint64_t sub_26F170D64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F170E0C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_26F170E90()
{
  result = qword_2806D5188;
  if (!qword_2806D5188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5110, &qword_26F1839C8);
    sub_26F170F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5188);
  }

  return result;
}

unint64_t sub_26F170F1C()
{
  result = qword_2806D5190;
  if (!qword_2806D5190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5108, &qword_26F1839C0);
    sub_26F170FD4();
    sub_26F13AC54(&qword_2806D4678, &qword_2806D4680, &qword_26F182188, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5190);
  }

  return result;
}

unint64_t sub_26F170FD4()
{
  result = qword_2806D5198;
  if (!qword_2806D5198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5100, &qword_26F1839B8);
    sub_26F171060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5198);
  }

  return result;
}

unint64_t sub_26F171060()
{
  result = qword_2806D51A0;
  if (!qword_2806D51A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D50F8, &qword_26F1839B0);
    sub_26F171118();
    sub_26F13AC54(&qword_2806D51D0, &qword_2806D51D8, &unk_26F183A40, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51A0);
  }

  return result;
}

unint64_t sub_26F171118()
{
  result = qword_2806D51A8;
  if (!qword_2806D51A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5158, &qword_26F183A10);
    sub_26F1711D0();
    sub_26F13AC54(&qword_2806D51C0, &qword_2806D51C8, &qword_26F183A38, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51A8);
  }

  return result;
}

unint64_t sub_26F1711D0()
{
  result = qword_2806D51B0;
  if (!qword_2806D51B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5150, &qword_26F183A08);
    sub_26F171288();
    sub_26F13AC54(&qword_2806D4380, &qword_2806D4388, &qword_26F181E00, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51B0);
  }

  return result;
}

unint64_t sub_26F171288()
{
  result = qword_2806D51B8;
  if (!qword_2806D51B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5148, &unk_26F1839F8);
    type metadata accessor for LocationItemView(255);
    sub_26F171CDC(&qword_2806D5140, type metadata accessor for LocationItemView, &unk_26F181F34);
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D4518, &qword_2806D44C8, &qword_26F181FB0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51B8);
  }

  return result;
}

uint64_t sub_26F1713B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_26F17143C()
{
  result = qword_2806D51E8;
  if (!qword_2806D51E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5128, &qword_26F1839E0);
    sub_26F1714C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51E8);
  }

  return result;
}

unint64_t sub_26F1714C8()
{
  result = qword_2806D51F0;
  if (!qword_2806D51F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5120, &qword_26F1839D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5110, &qword_26F1839C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D50F0, &qword_26F1839A8);
    sub_26F170E90();
    sub_26F13AC54(&qword_2806D51E0, &qword_2806D50F0, &qword_26F1839A8, MEMORY[0x277CE02F8]);
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D4658, &qword_2806D4660, &qword_26F182178, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D51F0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for DraggableLocationItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[18];
  v6 = sub_26F180714();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F171834(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F1718C4()
{
  v1 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_26F17F9E4();

  return sub_26F16E848((v0 + v2));
}

uint64_t objectdestroy_44Tm()
{
  v1 = (type metadata accessor for DraggableLocationItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26F17F9E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = v1[18];
  v12 = sub_26F180714();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_26F171B74(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DraggableLocationItem(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_26F17F9E4();

  return sub_26F16EA2C(a1, a2, (v2 + v6));
}

unint64_t sub_26F171C58()
{
  result = qword_2806D5208;
  if (!qword_2806D5208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5200, &qword_26F183AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5208);
  }

  return result;
}

uint64_t sub_26F171CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F171D24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5138, &qword_26F1839F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5130, &qword_26F1839E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5128, &qword_26F1839E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D46A8, &qword_26F182228);
  sub_26F17143C();
  sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228, MEMORY[0x277CDF728]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F171EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F17229C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.contentMode.getter()
{
  sub_26F171F50();
  sub_26F17FC94();
  return v1;
}

unint64_t sub_26F171F50()
{
  result = qword_2806D5218;
  if (!qword_2806D5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5218);
  }

  return result;
}

void *sub_26F171FA4@<X0>(_BYTE *a1@<X8>)
{
  sub_26F171F50();
  result = sub_26F17FC94();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.contentMode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_26F171F50();
  sub_26F17FC94();
  *(a1 + 16) = *(a1 + 17);
  return sub_26F1720E8;
}

void *sub_26F172120@<X0>(_BYTE *a1@<X8>)
{
  sub_26F171F50();
  result = sub_26F17FC94();
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentModeKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ContentModeKey(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_26F17229C()
{
  result = qword_2806D5220;
  if (!qword_2806D5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5220);
  }

  return result;
}

uint64_t sub_26F172304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26F1723E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for TouchHoldView(uint64_t a1)
{
  result = qword_2806D5228;
  if (!qword_2806D5228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F1724F8(uint64_t a1)
{
  sub_26F14BF64(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_26F13FED8(319);
    if (v2 <= 0x3F)
    {
      sub_26F13FF30(319, &qword_2806D4530, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_26F13FF30(319, &qword_2806D4210, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D5238, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_26F13FF30(319, &unk_2806D4218, MEMORY[0x277D85048]);
            if (v6 <= 0x3F)
            {
              sub_26F14BF64(319, &qword_2806D4F28, &qword_2806D4F30, qword_26F183608, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26F1726AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26F13A854(a3, v25 - v10, &qword_2806D4BD8, &qword_26F182B50);
  v12 = sub_26F180914();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F13AB10(v11, &qword_2806D4BD8, &qword_26F182B50);
  }

  else
  {
    sub_26F180904();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F1808C4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F180794() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26F13AB10(a3, &qword_2806D4BD8, &qword_26F182B50);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F13AB10(a3, &qword_2806D4BD8, &qword_26F182B50);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}