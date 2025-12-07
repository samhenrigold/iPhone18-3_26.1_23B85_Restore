uint64_t sub_23D96DB28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D91F2DC(v2, &v14 - v9, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9464();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t objectdestroyTm_4()
{
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v2 = v0 + ((*(*(CustomCategoryView - 8) + 80) + 16) & ~*(*(CustomCategoryView - 8) + 80));

  v3 = *(CustomCategoryView + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23D9D9464();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(CustomCategoryView + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D9D9574();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_23D96E04C()
{
  result = qword_27E2F59E0;
  if (!qword_27E2F59E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59D8, &qword_23D9DF228);
    sub_23D91F01C(&qword_27E2F59E8, &qword_27E2F59F0, &unk_23D9DF230, MEMORY[0x277CDF030]);
    sub_23D96E134(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F59E0);
  }

  return result;
}

uint64_t sub_23D96E134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D96E17C()
{
  v1 = *(type metadata accessor for LiveSpeechCreateCustomCategoryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D96B444(v2);
}

unint64_t sub_23D96E240()
{
  result = qword_27E2F5A50;
  if (!qword_27E2F5A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A48, &qword_23D9DF290);
    sub_23D96E2F8();
    sub_23D91F01C(&qword_27E2F5398, &qword_27E2F53A0, &qword_23D9DDFA0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5A50);
  }

  return result;
}

unint64_t sub_23D96E2F8()
{
  result = qword_27E2F5A58;
  if (!qword_27E2F5A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A60, &qword_23D9DF298);
    sub_23D970E48(&qword_27E2F5A68, &qword_27E2F5A70, &unk_23D9DF2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5A58);
  }

  return result;
}

uint64_t sub_23D96E3A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_23D9D9A84();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D9CE4();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5DC8, &qword_23D9DF918);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5DD0, &qword_23D9DF920);
  MEMORY[0x28223BE20](v35);
  v13 = &v30 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5DD8, &qword_23D9DF928);
  MEMORY[0x28223BE20](v41);
  v34 = &v30 - v14;
  v15 = sub_23D9DA734();
  v17 = v16;
  sub_23D96E9F0(v2, &v76);
  v71 = v88;
  v72 = v89;
  v67 = v84;
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  v59 = v76;
  v60 = v77;
  v61 = v78;
  v62 = v79;
  v74[12] = v88;
  v74[13] = v89;
  v74[8] = v84;
  v74[9] = v85;
  v74[10] = v86;
  v74[11] = v87;
  v74[4] = v80;
  v74[5] = v81;
  v74[6] = v82;
  v74[7] = v83;
  v74[0] = v76;
  v74[1] = v77;
  v73 = v90;
  v75 = v90;
  v74[2] = v78;
  v74[3] = v79;
  sub_23D91F2DC(&v59, &v43, &qword_27E2F5DE0, &qword_23D9DF930);
  sub_23D91F344(v74, &qword_27E2F5DE0, &qword_23D9DF930);
  v56 = v71;
  v57 = v72;
  v58 = v73;
  v52 = v67;
  v53 = v68;
  v55 = v70;
  v54 = v69;
  v48 = v63;
  v49 = v64;
  v51 = v66;
  v50 = v65;
  v44 = v59;
  v45 = v60;
  v47 = v62;
  v46 = v61;
  *&v43 = v15;
  *(&v43 + 1) = v17;
  sub_23D9D9CC4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5DE8, &qword_23D9DF938);
  v19 = sub_23D91F01C(&qword_27E2F5DF0, &qword_27E2F5DE8, &qword_23D9DF938, MEMORY[0x277CE11B0]);
  sub_23D9DA0D4();
  (*(v31 + 8))(v7, v32);
  v88 = v55;
  v89 = v56;
  v90 = v57;
  v91 = v58;
  v84 = v51;
  v85 = v52;
  v86 = v53;
  v87 = v54;
  v80 = v47;
  v81 = v48;
  v82 = v49;
  v83 = v50;
  v76 = v43;
  v77 = v44;
  v78 = v45;
  v79 = v46;
  sub_23D91F344(&v76, &qword_27E2F5DE8, &qword_23D9DF938);
  v20 = v38;
  sub_23D9D9A64();
  *&v43 = v18;
  *(&v43 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v36;
  sub_23D9DA104();
  (*(v39 + 8))(v20, v40);
  (*(v37 + 8))(v11, v21);
  v22 = type metadata accessor for SymbolImageView(0);
  v23 = v33;
  v13[*(v35 + 36)] = *(v33 + *(v22 + 24));
  v24 = (v23 + *(v22 + 20));
  v25 = *v24;
  v26 = v24[1];
  *&v43 = _s23AccessibilitySettingsUI20CategorySymbolSourceV17accessibilityName3forS2S_tFZ_0(*v24, v26);
  *(&v43 + 1) = v27;
  sub_23D97300C();
  sub_23D91B650();
  v28 = v34;
  sub_23D9DA0A4();

  sub_23D91F344(v13, &qword_27E2F5DD0, &qword_23D9DF920);
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  sub_23D9DAE64();

  *&v43 = 0xD000000000000011;
  *(&v43 + 1) = 0x800000023D9E44F0;
  MEMORY[0x23EEF3C30](v25, v26);
  sub_23D9D96A4();

  return sub_23D91F344(v28, &qword_27E2F5DD8, &qword_23D9DF928);
}

uint64_t sub_23D96E9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E18, &qword_23D9DF948);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v34 = *(a1 + *(type metadata accessor for SymbolImageView(0) + 24));
  if (v34 == 1)
  {
    v7 = sub_23D9DA284();
  }

  else
  {
    v7 = sub_23D9DA2B4();
  }

  v39 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  sub_23D9D94E4();
  sub_23D9D94A4();
  v8 = v90;
  v41 = v92;
  v42 = v91;
  v9 = v93;
  v40 = v94;
  v10 = v95;
  v11 = sub_23D9DA734();
  v37 = v12;
  v38 = v11;
  sub_23D9D94E4();
  sub_23D9D94E4();
  sub_23D9DA734();
  sub_23D9D9544();
  v35 = sub_23D971B44();

  sub_23D9D94E4();
  sub_23D9D94E4();
  sub_23D9DA734();
  sub_23D9D9544();
  *&v84[6] = v96;
  *&v84[22] = v97;
  *&v84[38] = v98;

  v33 = sub_23D9DA384();
  sub_23D9D94E4();
  sub_23D9D9E14();
  v13 = sub_23D9D9DE4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v36 = sub_23D9D9E24();
  sub_23D91F344(v6, &qword_27E2F5E18, &qword_23D9DF948);
  KeyPath = swift_getKeyPath();
  if (v34)
  {
    v15 = sub_23D9DA284();
  }

  else
  {
    v15 = sub_23D9DA2F4();
  }

  v16 = v15;
  v17 = swift_getKeyPath();
  *&v55 = v8 * 0.5;
  *(&v55 + 1) = v8;
  *&v56 = __PAIR64__(v41, v42);
  *(&v56 + 1) = v9;
  v18 = v39;
  *&v57 = v40;
  *(&v57 + 1) = v10;
  *&v58 = v39;
  WORD4(v58) = 256;
  HIWORD(v58) = v89;
  *(&v58 + 10) = v88;
  v20 = v37;
  v19 = v38;
  *&v59 = v38;
  *(&v59 + 1) = v37;
  v61 = v86;
  v62 = v87;
  v60 = v85;
  v45 = v57;
  v46 = v58;
  v43 = v55;
  v44 = v56;
  v49 = v86;
  v50 = v87;
  v47 = v59;
  v48 = v85;
  v21 = v35;
  *&v63[0] = v35;
  WORD4(v63[0]) = 256;
  *(v63 + 10) = *v84;
  *(&v63[3] + 1) = *&v84[46];
  *(&v63[2] + 10) = *&v84[32];
  *(&v63[1] + 10) = *&v84[16];
  v53 = v63[2];
  v54 = v63[3];
  v51 = v63[0];
  v52 = v63[1];
  v22 = v55;
  v23 = v56;
  v24 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v24;
  *a2 = v22;
  *(a2 + 16) = v23;
  v25 = v47;
  v26 = v48;
  v27 = v50;
  *(a2 + 96) = v49;
  *(a2 + 112) = v27;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  v28 = v51;
  v29 = v52;
  v30 = v54;
  *(a2 + 160) = v53;
  *(a2 + 176) = v30;
  *(a2 + 128) = v28;
  *(a2 + 144) = v29;
  *(a2 + 192) = v33;
  *(a2 + 200) = KeyPath;
  *(a2 + 208) = v36;
  *(a2 + 216) = v17;
  *(a2 + 224) = v16;
  sub_23D91F2DC(&v55, v69, &qword_27E2F5E20, &qword_23D9DF950);
  sub_23D91F2DC(v63, v69, &qword_27E2F5E28, &qword_23D9DF958);
  v64 = v21;
  v65 = 256;
  v66 = *v84;
  v67 = *&v84[16];
  *v68 = *&v84[32];
  *&v68[14] = *&v84[46];
  sub_23D91F344(&v64, &qword_27E2F5E28, &qword_23D9DF958);
  v69[0] = v8 * 0.5;
  v69[1] = v8;
  v70 = v42;
  v71 = v41;
  v72 = v9;
  v73 = v40;
  v74 = v10;
  v75 = v18;
  v76 = 256;
  v77 = v88;
  v78 = v89;
  v79 = v19;
  v80 = v20;
  v82 = v86;
  v83 = v87;
  v81 = v85;
  return sub_23D91F344(v69, &qword_27E2F5E20, &qword_23D9DF950);
}

uint64_t sub_23D96EF28()
{
  result = sub_23D9DA264();
  qword_27E2FB800 = result;
  return result;
}

uint64_t sub_23D96EF5C()
{
  v0 = sub_23D9DA254();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0ED8], v1);
  result = sub_23D9DA304();
  qword_27E2FB808 = result;
  return result;
}

uint64_t sub_23D96F044()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  sub_23D9DA244();
  v1 = sub_23D9DA2D4();

  qword_27E2FB810 = v1;
  return result;
}

uint64_t sub_23D96F0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v37 = a1;
  v38 = a7;
  type metadata accessor for BottomPocketModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  v9 = sub_23D9D9C34();
  swift_getOpaqueTypeMetadata2();
  sub_23D9DAD74();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_23D9DAD74();
  v59 = a6;
  swift_getWitnessTable();
  sub_23D9D9A34();
  v11 = sub_23D9D96C4();
  v12 = swift_getOpaqueTypeConformance2();
  v57 = WitnessTable;
  v58 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v49 = v9;
  v50 = MEMORY[0x277CE1358];
  v51 = OpaqueTypeMetadata2;
  v52 = v11;
  v53 = WitnessTable;
  v54 = MEMORY[0x277CE1348];
  v14 = WitnessTable;
  v55 = v12;
  v56 = v13;
  v15 = v12;
  v30 = v13;
  v32 = MEMORY[0x277CE0E58];
  v16 = swift_getOpaqueTypeMetadata2();
  v33 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  sub_23D9DA724();
  v44 = a5;
  v45 = a6;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v39 = a5;
  v40 = a6;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v22 = swift_checkMetadataState();
  v23 = swift_checkMetadataState();
  v24 = swift_checkMetadataState();
  v25 = v15;
  v26 = MEMORY[0x277CE1358];
  sub_23D9DA204();
  v49 = v22;
  v50 = v26;
  v51 = v23;
  v52 = v24;
  v53 = v14;
  v54 = MEMORY[0x277CE1348];
  v55 = v25;
  v56 = v30;
  swift_getOpaqueTypeConformance2();
  sub_23D91F510();
  v27 = *(v33 + 8);
  v27(v18, v16);
  sub_23D91F510();
  return (v27)(v21, v16);
}

uint64_t sub_23D96F568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a4;
  v26 = a3;
  v28 = a1;
  v29 = a7;
  type metadata accessor for BottomPocketModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  v10 = sub_23D9D9C34();
  swift_getOpaqueTypeMetadata2();
  v11 = sub_23D9DAD74();
  v25[0] = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v35 = v10;
  v36 = v11;
  v37 = v25[0];
  v38 = WitnessTable;
  v25[1] = MEMORY[0x277CDEE50];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  v30 = a5;
  v31 = a6;
  v32 = a2;
  v33 = v26;
  v34 = v27;
  sub_23D9D9AB4();
  v20 = swift_checkMetadataState();
  v21 = swift_checkMetadataState();
  v22 = v25[0];
  sub_23D9DA194();
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_23D91F510();
  v23 = *(v14 + 8);
  v23(v16, OpaqueTypeMetadata2);
  sub_23D91F510();
  return (v23)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_23D96F860@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a2;
  v38 = a1;
  v42 = a6;
  v9 = sub_23D9D9AA4();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a4;
  v46 = a5;
  v43 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v35 = &v35 - v20;
  v21 = sub_23D9DAD74();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v25);
  v41 = &v35 - v27;
  if (a3)
  {
    v38(v26);
    sub_23D9D9A94();
    v38 = v22;
    v28 = a4;
    v29 = v43;
    sub_23D9D9FF4();
    (*(v39 + 8))(v11, v40);
    (*(v36 + 8))(v14, v28);
    v45 = v28;
    v46 = v29;
    swift_getOpaqueTypeConformance2();
    v30 = v35;
    sub_23D91F510();
    v31 = *(v16 + 8);
    v31(v18, OpaqueTypeMetadata2);
    sub_23D91F510();
    v31(v30, OpaqueTypeMetadata2);
    a4 = v28;
    v22 = v38;
    (*(v16 + 32))(v24, v18, OpaqueTypeMetadata2);
    (*(v16 + 56))(v24, 0, 1, OpaqueTypeMetadata2);
  }

  else
  {
    (*(v16 + 56))(v24, 1, 1, OpaqueTypeMetadata2, v26);
    v45 = a4;
    v46 = v43;
    swift_getOpaqueTypeConformance2();
  }

  v32 = v41;
  sub_23D995250(v24, v41);
  v33 = *(v22 + 1);
  v33(v24, v21);
  v45 = a4;
  v46 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D91F510();
  return (v33)(v32, v21);
}

uint64_t sub_23D96FD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v22 = a3;
  v24 = a1;
  v25 = a7;
  type metadata accessor for BottomPocketModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  sub_23D9D9C34();
  sub_23D9DAD74();
  v33 = a6;
  swift_getWitnessTable();
  v21[1] = sub_23D9D9A34();
  v10 = sub_23D9D96C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v29 = v22;
  v30 = v23;
  sub_23D9D9AB4();
  WitnessTable = swift_getWitnessTable();
  sub_23D9DA014();
  v17 = swift_getWitnessTable();
  v31 = WitnessTable;
  v32 = v17;
  swift_getWitnessTable();
  sub_23D91F510();
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_23D91F510();
  return (v18)(v16, v10);
}

uint64_t sub_23D96FFD4@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(__n128)@<X8>)
{
  v28 = a1;
  v29 = a5;
  v27 = a2;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = sub_23D9DAD74();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v27 - v21;
  if (a3)
  {
    v28(v20);
    v27 = v16;
    sub_23D91F510();
    v28 = a6;
    v23 = *(v9 + 8);
    v23(v11, a4);
    v16 = v27;
    sub_23D91F510();
    v23(v14, a4);
    (*(v9 + 32))(v18, v11, a4);
    (*(v9 + 56))(v18, 0, 1, a4);
  }

  else
  {
    (*(v9 + 56))(v18, 1, 1, a4);
  }

  v24 = v29;
  sub_23D995250(v18, v22);
  v25 = *(v16 + 8);
  v25(v18, v15);
  v30 = v24;
  swift_getWitnessTable();
  sub_23D91F510();
  return (v25)(v22, v15);
}

uint64_t sub_23D9702F0@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a4 = v6;
  a4[1] = v7;
  return result;
}

uint64_t sub_23D970380(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

uint64_t sub_23D970400@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D9D9384();

  *a2 = v4;
  return result;
}

uint64_t sub_23D970480(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D9D9394();
}

uint64_t sub_23D9704F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9D9904();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D9705E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

unint64_t sub_23D9706F8()
{
  result = qword_27E2F5A90;
  if (!qword_27E2F5A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59F8, &qword_23D9DF240);
    sub_23D9707B0();
    sub_23D91F01C(&qword_27E2F5AB8, &qword_27E2F5A88, &qword_23D9DF2F0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5A90);
  }

  return result;
}

unint64_t sub_23D9707B0()
{
  result = qword_27E2F5A98;
  if (!qword_27E2F5A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A78, &qword_23D9DF2B0);
    sub_23D91F01C(&qword_27E2F5AA0, &qword_27E2F5AA8, &qword_23D9DF328, MEMORY[0x277CDF030]);
    sub_23D91F01C(&qword_27E2F5AB0, &qword_27E2F5A80, &qword_23D9DF2B8, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5A98);
  }

  return result;
}

uint64_t sub_23D970894@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EEF2BB0]();
  *a1 = result;
  return result;
}

unint64_t sub_23D9708F4()
{
  result = qword_27E2F5AD0;
  if (!qword_27E2F5AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A10, &qword_23D9DF258);
    sub_23D9709AC();
    sub_23D91F01C(&qword_27E2F5AE0, &qword_27E2F5AE8, &qword_23D9DF368, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5AD0);
  }

  return result;
}

unint64_t sub_23D9709AC()
{
  result = qword_27E2F5AD8;
  if (!qword_27E2F5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A08, &qword_23D9DF250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59F8, &qword_23D9DF240);
    sub_23D9D9D04();
    sub_23D9706F8();
    sub_23D96E134(&qword_27E2F5AC0, MEMORY[0x277CDE3F8], MEMORY[0x277CDE3F0]);
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F5AE0, &qword_27E2F5AE8, &qword_23D9DF368, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5AD8);
  }

  return result;
}

uint64_t sub_23D970AF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_23D970B74()
{
  result = qword_27E2F5B00;
  if (!qword_27E2F5B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A20, &qword_23D9DF268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5A10, &qword_23D9DF258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5AC8, &qword_23D9DF360);
    sub_23D9708F4();
    sub_23D9D9744();
    sub_23D96E134(&qword_27E2F5AF0, MEMORY[0x277CDFC00], MEMORY[0x277CDFBF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5B00);
  }

  return result;
}

uint64_t sub_23D970CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9D9904();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D970E48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D970EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D970F1C()
{
  v2 = *(type metadata accessor for LiveSpeechCreateCustomCategoryView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D92A70C;

  return sub_23D968104(v4, v5, v0 + v3);
}

uint64_t objectdestroy_80Tm()
{
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v2 = (*(*(CustomCategoryView - 8) + 80) + 32) & ~*(*(CustomCategoryView - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(CustomCategoryView + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D9D9464();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(CustomCategoryView + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D9D9574();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D9711C0()
{
  v2 = *(type metadata accessor for LiveSpeechCreateCustomCategoryView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23D928310;

  return sub_23D96944C(v4, v5, v0 + v3);
}

uint64_t sub_23D9712BC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for LiveSpeechCreateCustomCategoryView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_23D96C078(v4, a1);
}

uint64_t sub_23D971330()
{
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v2 = (*(*(CustomCategoryView - 8) + 80) + 40) & ~*(*(CustomCategoryView - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(CustomCategoryView + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D9D9464();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = *(CustomCategoryView + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D9D9574();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D9714F8(uint64_t *a1)
{
  v3 = *(type metadata accessor for LiveSpeechCreateCustomCategoryView(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return sub_23D96C164(a1, v4, v5, v6, v7);
}

unint64_t sub_23D971570()
{
  result = qword_27E2F5BB8;
  if (!qword_27E2F5BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5B68, &qword_23D9DF5D0);
    sub_23D971628();
    sub_23D91F01C(&qword_27E2F5398, &qword_27E2F53A0, &qword_23D9DDFA0, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5BB8);
  }

  return result;
}

unint64_t sub_23D971628()
{
  result = qword_27E2F5BC0;
  if (!qword_27E2F5BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5BA8, &qword_23D9DF610);
    sub_23D91F01C(&qword_27E2F5BC8, &qword_27E2F5BD0, &qword_23D9DF620, MEMORY[0x277CDF1A0]);
    sub_23D91F01C(&qword_27E2F5BD8, &qword_27E2F5BB0, &qword_23D9DF618, MEMORY[0x277CDF4E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5BC0);
  }

  return result;
}

uint64_t sub_23D97170C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9D9854();
  *a1 = result;
  return result;
}

unint64_t sub_23D971768()
{
  result = qword_27E2F5BE0;
  if (!qword_27E2F5BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5B98, &qword_23D9DF600);
    sub_23D971820();
    sub_23D91F01C(&qword_27E2F5BD8, &qword_27E2F5BB0, &qword_23D9DF618, MEMORY[0x277CDF4E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5BE0);
  }

  return result;
}

unint64_t sub_23D971820()
{
  result = qword_27E2F5BE8;
  if (!qword_27E2F5BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5B90, &qword_23D9DF5F8);
    sub_23D970AF0(&qword_27E2F5BF0, &qword_27E2F5B88, &qword_23D9DF5F0, sub_23D971904);
    sub_23D91F01C(&qword_27E2F5C30, &qword_27E2F5C38, &qword_23D9DF698, MEMORY[0x277CE0720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5BE8);
  }

  return result;
}

unint64_t sub_23D971934()
{
  result = qword_27E2F5C00;
  if (!qword_27E2F5C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5B78, &qword_23D9DF5E0);
    sub_23D9719EC();
    sub_23D91F01C(&qword_27E2F5C20, &qword_27E2F5C28, &qword_23D9DF690, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5C00);
  }

  return result;
}

unint64_t sub_23D9719EC()
{
  result = qword_27E2F5C08;
  if (!qword_27E2F5C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5B70, &qword_23D9DF5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5B68, &qword_23D9DF5D0);
    sub_23D971570();
    swift_getOpaqueTypeConformance2();
    sub_23D91F01C(&qword_27E2F5C10, &qword_27E2F5C18, &qword_23D9DF688, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5C08);
  }

  return result;
}

uint64_t sub_23D971AE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_23D9D9924();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23D971B44()
{
  v1 = sub_23D9D9464();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  if (*(v0 + *(type metadata accessor for SymbolImageView(0) + 24)) == 1)
  {
    sub_23D96DB28(v7);
    (*(v2 + 104))(v4, *MEMORY[0x277CDF3C8], v1);
    v8 = sub_23D9D9454();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    if (v8)
    {
      if (qword_27E2F4198 != -1)
      {
        swift_once();
      }

      v10 = &qword_27E2FB808;
    }

    else
    {
      if (qword_27E2F4190 != -1)
      {
        swift_once();
      }

      v10 = &qword_27E2FB800;
    }
  }

  else
  {
    if (qword_27E2F41A0 != -1)
    {
      swift_once();
    }

    v10 = &qword_27E2FB810;
  }

  return *v10;
}

uint64_t sub_23D971D48(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_23D9DA924();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_23D971DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D971E34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23D971E7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D971EE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23D971FC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D972074(uint64_t a1)
{
  sub_23D934258(319);
  if (v1 <= 0x3F)
  {
    sub_23D94DF64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23D9720FC()
{
  result = qword_27E2F5D20;
  if (!qword_27E2F5D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59B0, &qword_23D9DF200);
    sub_23D91F01C(&qword_27E2F5D28, &qword_27E2F5D30, &qword_23D9DF788, MEMORY[0x277CDDA10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5D20);
  }

  return result;
}

unint64_t sub_23D9721B8()
{
  result = qword_27E2F5D38;
  if (!qword_27E2F5D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5C68, &qword_23D9DF6F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5C78, &qword_23D9DF708);
    sub_23D91F01C(&qword_27E2F5C80, &qword_27E2F5C78, &qword_23D9DF708, MEMORY[0x277CE11B0]);
    swift_getOpaqueTypeConformance2();
    sub_23D96E134(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5D38);
  }

  return result;
}

unint64_t sub_23D97234C()
{
  result = qword_27E2F5D60;
  if (!qword_27E2F5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5D58, &qword_23D9DF840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5D68, &qword_23D9DF848);
    sub_23D9D9BE4();
    sub_23D91F01C(&qword_27E2F5D70, &qword_27E2F5D68, &qword_23D9DF848, MEMORY[0x277CDF030]);
    sub_23D96E134(&qword_27E2F5D78, MEMORY[0x277CDE0B0], MEMORY[0x277CDE0A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5D60);
  }

  return result;
}

uint64_t sub_23D972490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D9724F8()
{
  v1 = (type metadata accessor for SymbolSelectorGrid(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[8], v4);

  return swift_deallocObject();
}

uint64_t sub_23D972618(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D972680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SymbolSelectorGrid(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D96CAD0(a1, v6, a2);
}

uint64_t sub_23D972700()
{
  v1 = (type metadata accessor for SymbolSelectorGrid(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[8], v4);

  return swift_deallocObject();
}

void sub_23D972838()
{
  v1 = *(type metadata accessor for SymbolSelectorGrid(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  sub_23D96CE50((v0 + v2), v4, v5);
}

uint64_t sub_23D9729A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_23D972AF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23D972C34(uint64_t a1)
{
  sub_23D96568C(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8]);
  if (v1 <= 0x3F)
  {
    sub_23D94DF64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_23D972CF4()
{
  result = qword_27E2F5DB8;
  if (!qword_27E2F5DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5D80, &unk_23D9DF850);
    sub_23D91F01C(&qword_27E2F5DC0, &qword_27E2F5D40, &qword_23D9DF830, MEMORY[0x277CDF178]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5DB8);
  }

  return result;
}

uint64_t sub_23D972DAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BottomPocketModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_23D9D9C34();
  swift_getOpaqueTypeMetadata2();
  sub_23D9DAD74();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D9DAD74();
  swift_getWitnessTable();
  sub_23D9D9A34();
  sub_23D9D96C4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D97300C()
{
  result = qword_27E2F5DF8;
  if (!qword_27E2F5DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5DD0, &qword_23D9DF920);
    sub_23D973098();
    sub_23D9731C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5DF8);
  }

  return result;
}

unint64_t sub_23D973098()
{
  result = qword_27E2F5E00;
  if (!qword_27E2F5E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5E08, &qword_23D9DF940);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5DE8, &qword_23D9DF938);
    sub_23D91F01C(&qword_27E2F5DF0, &qword_27E2F5DE8, &qword_23D9DF938, MEMORY[0x277CE11B0]);
    swift_getOpaqueTypeConformance2();
    sub_23D96E134(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5E00);
  }

  return result;
}

unint64_t sub_23D9731C4()
{
  result = qword_27E2F5E10;
  if (!qword_27E2F5E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5E10);
  }

  return result;
}

unint64_t sub_23D97321C()
{
  result = qword_27E2F5E30;
  if (!qword_27E2F5E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5DD8, &qword_23D9DF928);
    sub_23D97300C();
    sub_23D96E134(&qword_27E2F43A0, MEMORY[0x277CDE468], MEMORY[0x277CDE460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5E30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D973304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23D97334C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23D9733B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](v17, v8);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  type metadata accessor for LiveSpeechPreferredVoiceListItemView(0);
  sub_23D91F01C(&qword_27E2F5588, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83980]);
  sub_23D973A4C(&qword_27E2F5E38, type metadata accessor for LiveSpeechPreferredVoiceListItemView, &unk_23D9E2A60);
  sub_23D973A4C(&qword_27E2F55B0, MEMORY[0x277CE78C8], MEMORY[0x277CE78D8]);
  sub_23D9DA624();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23D973A94;
  *(v11 + 24) = v10;
  v12 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E40, &qword_23D9DFA08) + 36));
  *v12 = sub_23D973AF4;
  v12[1] = v11;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23D973B68;
  *(v14 + 24) = v13;
  v15 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E48, &qword_23D9DFA10) + 36));
  *v15 = sub_23D973BAC;
  v15[1] = v14;
  swift_retain_n();
  swift_retain_n();
  return swift_bridgeObjectRetain_n();
}

double sub_23D97368C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_23D9D90B4();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a1, v11);
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  sub_23D9DA584();
  return sub_23D9C3C10(v13, v16[0], v16[1], v16[2], a5);
}

uint64_t sub_23D9737A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](&v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83960]);
  sub_23D9DA884();
  sub_23D9DA564();
}

uint64_t sub_23D9738D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](&v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83960]);
  sub_23D91F01C(&qword_27E2F5610, &qword_27E2F4D78, qword_23D9DD470, MEMORY[0x277D83990]);
  sub_23D9DAAA4();
  sub_23D9DA564();
}

uint64_t sub_23D973A4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

uint64_t sub_23D973B74()
{

  return swift_deallocObject();
}

unint64_t sub_23D973BD8()
{
  result = qword_27E2F5E50;
  if (!qword_27E2F5E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5E48, &qword_23D9DFA10);
    sub_23D973C90();
    sub_23D91F01C(&qword_27E2F5098, &qword_27E2F50A0, &qword_23D9DEA30, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5E50);
  }

  return result;
}

unint64_t sub_23D973C90()
{
  result = qword_27E2F5E58;
  if (!qword_27E2F5E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5E40, &qword_23D9DFA08);
    sub_23D973D48();
    sub_23D91F01C(&qword_27E2F55E0, &qword_27E2F55E8, &unk_23D9DFA20, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5E58);
  }

  return result;
}

unint64_t sub_23D973D48()
{
  result = qword_27E2F5E60;
  if (!qword_27E2F5E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5E68, &qword_23D9DFA18);
    sub_23D973A4C(&qword_27E2F5E38, type metadata accessor for LiveSpeechPreferredVoiceListItemView, &unk_23D9E2A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5E60);
  }

  return result;
}

uint64_t AXSUIAudioEffectControl.body.getter@<X0>(uint64_t a1@<X8>)
{
  v145 = a1;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E70, &qword_23D9DFA30);
  v113 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v112 = &v109 - v2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E78, &qword_23D9DFA38);
  MEMORY[0x28223BE20](v121);
  v122 = &v109 - v3;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E80, &unk_23D9DFA40);
  MEMORY[0x28223BE20](v144);
  v124 = &v109 - v4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v111 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v110 = &v109 - v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E88, &qword_23D9DFA50);
  v115 = *(v132 - 1);
  MEMORY[0x28223BE20](v132);
  v114 = &v109 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E90, &qword_23D9DFA58);
  MEMORY[0x28223BE20](v128);
  KeyPath = &v109 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5E98, &qword_23D9DFA60);
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v126 = &v109 - v8;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EA0, &qword_23D9DFA68);
  MEMORY[0x28223BE20](v139);
  v10 = &v109 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EA8, &qword_23D9DFA70);
  v133 = *(v11 - 8);
  v134 = v11;
  MEMORY[0x28223BE20](v11);
  v131 = &v109 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EB0, &qword_23D9DFA78);
  MEMORY[0x28223BE20](v141);
  v143 = &v109 - v13;
  v136.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EB8, &qword_23D9DFA80);
  MEMORY[0x28223BE20](v136.n128_u64[0]);
  v137 = &v109 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EC0, &qword_23D9DFA88);
  MEMORY[0x28223BE20](v142);
  v138 = &v109 - v15;
  v16 = type metadata accessor for AXSUIAudioEffectControl(0);
  v140 = *(v16 - 8);
  v17 = *(v140 + 64);
  MEMORY[0x28223BE20](v16);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EC8, &qword_23D9DFA90);
  MEMORY[0x28223BE20](v117);
  v19 = &v109 - v18;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5ED0, &qword_23D9DFA98);
  MEMORY[0x28223BE20](v118);
  v116 = &v109 - v20;
  v135.n128_u64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5ED8, &qword_23D9DFAA0);
  v120 = *(v135.n128_u64[0] - 8);
  MEMORY[0x28223BE20](v135.n128_u64[0]);
  v119 = &v109 - v21;
  v22 = sub_23D9D8B44();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v1;
  (*(v23 + 16))(v26, v1, v22, v24);
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == *MEMORY[0x277D70120])
  {
    v125 = v10;
    (*(v23 + 96))(v26, v22);
    v30 = *(*v26 + 16);
    v29 = *(*v26 + 24);
    v124 = *v26;
    v146 = *(v124 + 4);
    swift_getKeyPath();
    sub_23D97D8B0(v27, &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIAudioEffectControl);
    v31 = (*(v140 + 80) + 16) & ~*(v140 + 80);
    v32 = swift_allocObject();
    sub_23D97DB40(&v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for AXSUIAudioEffectControl);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F38, &qword_23D9DFAD0);
    sub_23D91F01C(&qword_27E2F5F40, &qword_27E2F5F38, &qword_23D9DFAD0, MEMORY[0x277D83980]);
    sub_23D9769D4(&qword_27E2F5F48, MEMORY[0x277D70138], MEMORY[0x277D70140]);
    v107 = sub_23D9769D4(&qword_27E2F5F20, type metadata accessor for AXSUIAudioEffectControl, &protocol conformance descriptor for AXSUIAudioEffectControl);
    v33 = v131;
    v34 = sub_23D9DA614();
    if (v29)
    {
      v146 = v30;
      v147 = v29;
      MEMORY[0x28223BE20](v34);
      v107 = v33;
      sub_23D97671C();
      sub_23D91B650();
      v35 = v126;
      v36 = v134;
      sub_23D9DA654();
      v37 = v127;
      v38 = v130;
      (*(v127 + 16))(KeyPath, v35, v130);
    }

    else
    {
      MEMORY[0x28223BE20](v34);
      v107 = v33;
      sub_23D97671C();
      v35 = v114;
      v36 = v134;
      sub_23D9DA684();
      v37 = v115;
      v38 = v132;
      (*(v115 + 16))(KeyPath, v35, v132);
    }

    swift_storeEnumTagMultiPayload();
    sub_23D976698(&qword_27E2F5F10, &qword_27E2F5E98, &qword_23D9DFA60);
    sub_23D976698(&qword_27E2F5F28, &qword_27E2F5E88, &qword_23D9DFA50);
    v39 = v125;
    sub_23D9D9B14();
    (*(v37 + 8))(v35, v38);
    sub_23D91F2DC(v39, v137, &qword_27E2F5EA0, &qword_23D9DFA68);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F5F00, &qword_27E2F5ED8, &qword_23D9DFAA0, MEMORY[0x277CDD940]);
    sub_23D9765CC();
    v78 = v39;
    v79 = v138;
    sub_23D9D9B14();
    sub_23D976A1C(v79, v143);
    swift_storeEnumTagMultiPayload();
    sub_23D976514();
    sub_23D9767D0();
    sub_23D9D9B14();
    sub_23D976A8C(v79);
    sub_23D91F344(v78, &qword_27E2F5EA0, &qword_23D9DFA68);
    (v133[1])(v33, v36);
  }

  v40 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v140;
  v42 = v27;
  if (v28 == *MEMORY[0x277D70118])
  {
    v43 = (*(v23 + 96))(v26, v22);
    v133 = &v109;
    v134 = *v26;
    v44 = v134[3];
    v131 = v134[2];
    v130 = v44;
    v45 = v134[4];
    MEMORY[0x28223BE20](v43);
    v132 = &v109 - 4;
    v107 = v46;
    v108 = v47;
    v146 = v45;
    KeyPath = swift_getKeyPath();
    sub_23D97D8B0(v27, v40, type metadata accessor for AXSUIAudioEffectControl);
    v48 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v49 = swift_allocObject();
    sub_23D97DB40(v40, v49 + v48, type metadata accessor for AXSUIAudioEffectControl);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F38, &qword_23D9DFAD0);
    sub_23D91F01C(&qword_27E2F5F40, &qword_27E2F5F38, &qword_23D9DFAD0, MEMORY[0x277D83980]);
    sub_23D9769D4(&qword_27E2F5F48, MEMORY[0x277D70138], MEMORY[0x277D70140]);
    v107 = sub_23D9769D4(&qword_27E2F5F20, type metadata accessor for AXSUIAudioEffectControl, &protocol conformance descriptor for AXSUIAudioEffectControl);
    sub_23D9DA614();
    v146 = v131;
    v147 = v130;
    v50 = sub_23D91F01C(&qword_27E2F5F50, &qword_27E2F5EC8, &qword_23D9DFA90, &protocol conformance descriptor for AXSUIPlatformFormListView<A>);
    v51 = sub_23D91B650();
    v52 = MEMORY[0x277D837D0];
    v53 = v117;
    sub_23D9DA064();
    sub_23D91F344(v19, &qword_27E2F5EC8, &qword_23D9DFA90);
    v146 = v53;
    v147 = v52;
    v148 = v50;
    v149 = v51;
    swift_getOpaqueTypeConformance2();
    v54 = v119;
    sub_23D9D95C4();
    v55 = v120;
    v56 = v135.n128_u64[0];
    (*(v120 + 16))(v137, v54, v135.n128_u64[0]);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F5F00, &qword_27E2F5ED8, &qword_23D9DFAA0, MEMORY[0x277CDD940]);
    sub_23D9765CC();
    v57 = v138;
    sub_23D9D9B14();
    sub_23D976A1C(v57, v143);
    swift_storeEnumTagMultiPayload();
    sub_23D976514();
    sub_23D9767D0();
    sub_23D9D9B14();
    sub_23D976A8C(v57);
    (*(v55 + 8))(v54, v56);
  }

  v58 = v28 == *MEMORY[0x277D70130];
  v109 = v27;
  if (v58)
  {
    v59 = v140;
    (*(v23 + 96))(v26, v22);
    v60 = *v26;
    v61 = *(*v26 + 16);
    v62 = v60[3];
    v138 = v60[4];
    v139 = v60;
    v137 = v60[5];
    v63 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23D97D8B0(v42, v40, type metadata accessor for AXSUIAudioEffectControl);
    sub_23D9DA9B4();
    swift_bridgeObjectRetain_n();
    v64 = sub_23D9DA9A4();
    v65 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v66 = (v17 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = MEMORY[0x277D85700];
    *(v67 + 16) = v64;
    *(v67 + 24) = v68;
    sub_23D97DB40(v40, v67 + v65, type metadata accessor for AXSUIAudioEffectControl);
    v69 = (v67 + v66);
    *v69 = v61;
    v69[1] = v62;
    sub_23D97D8B0(v109, v40, type metadata accessor for AXSUIAudioEffectControl);
    v70 = sub_23D9DA9A4();
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = MEMORY[0x277D85700];
    sub_23D97DB40(v63, v71 + v65, type metadata accessor for AXSUIAudioEffectControl);
    v72 = (v71 + v66);
    *v72 = v61;
    v72[1] = v62;
    v73 = sub_23D9DA594();
    MEMORY[0x28223BE20](v73);
    v107 = v138;
    v108 = v137;

    v74 = v110;
    sub_23D9DA4B4();
    v75 = v111;
    v76 = v123;
    (*(v111 + 16))(v122, v74, v123);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    sub_23D976450();
    v77 = v124;
    sub_23D9D9B14();
    sub_23D91F2DC(v77, v143, &qword_27E2F5E80, &unk_23D9DFA40);
    swift_storeEnumTagMultiPayload();
    sub_23D976514();
    sub_23D9767D0();
    sub_23D9D9B14();

    sub_23D91F344(v77, &qword_27E2F5E80, &unk_23D9DFA40);
    (*(v75 + 8))(v74, v76);
  }

  if (v28 == *MEMORY[0x277D70128])
  {
    v81 = (*(v23 + 96))(v26, v22);
    v82 = *v26;
    v83 = *(*v26 + 16);
    v84 = *(*v26 + 24);
    v85 = *(*v26 + 40);
    v134 = *(*v26 + 32);
    v132 = v83;
    v133 = v85;
    v81.n128_u32[0] = *(v82 + 48);
    v135 = v81;
    v81.n128_u64[0] = *(v82 + 52);
    v136 = v81;
    v138 = *(v82 + 64);
    v139 = v82;
    v137 = *(v82 + 72);
    v86 = v27;
    v87 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23D97D8B0(v86, v40, type metadata accessor for AXSUIAudioEffectControl);
    sub_23D9DA9B4();
    swift_bridgeObjectRetain_n();
    v88 = sub_23D9DA9A4();
    v89 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v90 = (v17 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = swift_allocObject();
    v92 = MEMORY[0x277D85700];
    *(v91 + 16) = v88;
    *(v91 + 24) = v92;
    sub_23D97DB40(v40, v91 + v89, type metadata accessor for AXSUIAudioEffectControl);
    v93 = (v91 + v90);
    v94 = v132;
    *v93 = v132;
    v93[1] = v84;
    sub_23D97D8B0(v109, v40, type metadata accessor for AXSUIAudioEffectControl);
    v95 = sub_23D9DA9A4();
    v96 = swift_allocObject();
    *(v96 + 16) = v95;
    *(v96 + 24) = MEMORY[0x277D85700];
    sub_23D97DB40(v87, v96 + v89, type metadata accessor for AXSUIAudioEffectControl);
    v97 = (v96 + v90);
    *v97 = v94;
    v97[1] = v84;
    sub_23D9DA594();
    v98 = v146;
    v99 = v147;
    v146 = v134;
    v147 = v133;
    LODWORD(v100) = MEMORY[0x28223BE20](v133).n128_u32[0];
    DWORD1(v100) = v135.n128_u32[0];
    *(&v100 + 1) = v136.n128_u64[0];
    *(&v109 - 8) = v98;
    *(&v109 - 7) = v99;
    *(&v109 - 3) = v100;
    *(&v109 - 4) = v102;
    *(&v109 - 3) = v101;
    v107 = v138;
    v108 = v137;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EE0, &unk_23D9DFAA8);
    sub_23D91F01C(&qword_27E2F5EE8, &qword_27E2F5EE0, &unk_23D9DFAA8, MEMORY[0x277CE1140]);
    sub_23D91B650();
    v103 = v112;
    sub_23D9DA654();
    v104 = v113;
    v105 = v125;
    (*(v113 + 16))(v122, v103, v125);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    sub_23D976450();
    v106 = v124;
    sub_23D9D9B14();
    sub_23D91F2DC(v106, v143, &qword_27E2F5E80, &unk_23D9DFA40);
    swift_storeEnumTagMultiPayload();
    sub_23D976514();
    sub_23D9767D0();
    sub_23D9D9B14();

    sub_23D91F344(v106, &qword_27E2F5E80, &unk_23D9DFA40);
    (*(v104 + 8))(v103, v105);
  }

  result = sub_23D9DAFB4();
  __break(1u);
  return result;
}

uint64_t sub_23D9756B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23D9D8B44();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for AXSUIAudioEffectControl(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61E0, &qword_23D9E0010);
  sub_23D9DA584();
  v8 = *(a2 + *(v7 + 24));
  v9 = a3 + *(v7 + 20);
  *v9 = v11;
  *(v9 + 8) = v12;
  *(a3 + *(v7 + 24)) = v8;
}

uint64_t sub_23D975790@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, BOOL *a4@<X8>)
{
  v8 = type metadata accessor for AXSUIAudioEffectControl(0);
  v9 = a1 + *(v8 + 20);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61E0, &qword_23D9E0010);
  MEMORY[0x23EEF3850](v18, v10);
  v11 = v18[0];
  if (*(v18[0] + 16) && (v12 = sub_23D960590(a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);
  }

  else
  {

    v16 = *(a1 + *(v8 + 24));
    v14 = 0.0;
    if (*(v16 + 16))
    {
      result = sub_23D960590(a2, a3);
      if (v17)
      {
        v14 = *(*(v16 + 56) + 4 * result);
      }
    }
  }

  *a4 = v14 != 0.0;
  return result;
}

uint64_t sub_23D975890(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  type metadata accessor for AXSUIAudioEffectControl(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61E0, &qword_23D9E0010);
  MEMORY[0x23EEF3850](&v11);
  v9 = 1065353216;
  if (!v8)
  {
    v9 = 0;
  }

  sub_23D95968C(v9, a5, a6);
  sub_23D9DA564();
}

uint64_t sub_23D9759A0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, _DWORD *a4@<X8>)
{
  v8 = type metadata accessor for AXSUIAudioEffectControl(0);
  v9 = a1 + *(v8 + 20);
  v18[1] = *v9;
  v19 = *(v9 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61E0, &qword_23D9E0010);
  MEMORY[0x23EEF3850](v18, v10);
  v11 = v18[0];
  if (*(v18[0] + 16) && (v12 = sub_23D960590(a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 4 * v12);
  }

  else
  {

    v16 = *(a1 + *(v8 + 24));
    v14 = 0;
    if (*(v16 + 16))
    {
      result = sub_23D960590(a2, a3);
      if (v17)
      {
        v14 = *(*(v16 + 56) + 4 * result);
      }
    }
  }

  *a4 = v14;
  return result;
}

uint64_t sub_23D975A9C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for AXSUIAudioEffectControl(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_23D9759A0(v1 + v4, v6, v7, a1);
}

uint64_t sub_23D975B40(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  type metadata accessor for AXSUIAudioEffectControl(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61E0, &qword_23D9E0010);
  MEMORY[0x23EEF3850](&v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23D963484(a5, a6, isUniquelyReferenced_nonNull_native, v8);
  sub_23D9DA564();
}

uint64_t objectdestroyTm_6()
{
  v1 = *(type metadata accessor for AXSUIAudioEffectControl(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_23D9D8B44();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_23D975D78(float *a1)
{
  v3 = *(type metadata accessor for AXSUIAudioEffectControl(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_23D975B40(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_23D975E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, float a6@<S0>, unsigned int a7@<S1>, unsigned int a8@<S2>, float a9@<S3>)
{
  v57 = a4;
  v56 = a3;
  v16 = sub_23D9D99F4();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61E8, &qword_23D9E0018);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  result = sub_23D9D99B4();
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  if (*&a7 > *&a8)
  {
    __break(1u);
  }

  else
  {
    v59 = v20;
    v54 = v17;
    MEMORY[0x28223BE20](result);
    v65 = a1;
    v66 = a2;
    *&v67 = a6;
    *&v60 = __PAIR64__(a8, a7);
    *(v25 + 80) = a9;
    sub_23D98048C();

    v26 = MEMORY[0x277D83A90];
    v58 = v23;
    sub_23D9DA4A4();
    v27 = v57;
    if (v57)
    {
      sub_23D9D99E4();
      sub_23D9D99D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4560, &qword_23D9DC3F0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_23D9DC3E0;
      v65 = a1;
      v66 = a2;
      *&v67 = a6;
      v29 = MEMORY[0x277D83B08];
      *(v28 + 56) = v26;
      *(v28 + 64) = v29;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6210, &unk_23D9E0040);
      MEMORY[0x23EEF3850](v30);
      sub_23D9DA8C4();
      sub_23D9D99C4();

      sub_23D9D99D4();
      sub_23D9D99C4();
      sub_23D9D99D4();
      sub_23D9D9A14();
      v55 = sub_23D9D9EF4();
      v53 = v31;
      v33 = v32;
      v52 = v34;
      sub_23D9DA734();
      sub_23D9D9544();
      LOBYTE(v65) = v33 & 1;
      v35 = v75;
      v51 = v76;
      v36 = v77;
      v27 = v78;
      v57 = v79;
      v56 = v80;
      v37 = v33 & 1;
    }

    else
    {
      v55 = 0;
      v53 = 0;
      v52 = 0;
      v35 = 0;
      v51 = 0;
      v36 = 0;
      v57 = 0;
      v56 = 0;
      v37 = 0;
    }

    v50 = v37;
    v38 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61F8, &qword_23D9E0020) + 44));
    v39 = *(v18 + 16);
    v40 = v59;
    v41 = v54;
    v39(v59, v58, v54);
    v39(v38, v40, v41);
    v42 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6200, &qword_23D9E0028) + 48)];
    v43 = v55;
    *&v60 = v55;
    v44 = v53;
    *(&v60 + 1) = v53;
    *&v61 = v37;
    v45 = v52;
    *(&v61 + 1) = v52;
    *&v62 = v35;
    v46 = v51;
    *(&v62 + 1) = v51;
    *&v63 = v36;
    *(&v63 + 1) = v27;
    *&v64 = v57;
    *(&v64 + 1) = v56;
    v47 = v61;
    *v42 = v60;
    *(v42 + 1) = v47;
    v48 = v63;
    *(v42 + 2) = v62;
    *(v42 + 3) = v48;
    *(v42 + 4) = v64;
    sub_23D91F2DC(&v60, &v65, &qword_27E2F6208, &unk_23D9E0030);
    v49 = *(v18 + 8);
    v49(v58, v41);
    v65 = v43;
    v66 = v44;
    v67 = v50;
    v68 = v45;
    v69 = v35;
    v70 = v46;
    v71 = v36;
    v72 = v27;
    v73 = v57;
    v74 = v56;
    sub_23D91F344(&v65, &qword_27E2F6208, &unk_23D9E0030);
    return (v49)(v59, v41);
  }

  return result;
}

unint64_t sub_23D976450()
{
  result = qword_27E2F5EF0;
  if (!qword_27E2F5EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5E70, &qword_23D9DFA30);
    sub_23D91F01C(&qword_27E2F5EE8, &qword_27E2F5EE0, &unk_23D9DFAA8, MEMORY[0x277CE1140]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5EF0);
  }

  return result;
}

unint64_t sub_23D976514()
{
  result = qword_27E2F5EF8;
  if (!qword_27E2F5EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5EC0, &qword_23D9DFA88);
    sub_23D91F01C(&qword_27E2F5F00, &qword_27E2F5ED8, &qword_23D9DFAA0, MEMORY[0x277CDD940]);
    sub_23D9765CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5EF8);
  }

  return result;
}

unint64_t sub_23D9765CC()
{
  result = qword_27E2F5F08;
  if (!qword_27E2F5F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5EA0, &qword_23D9DFA68);
    sub_23D976698(&qword_27E2F5F10, &qword_27E2F5E98, &qword_23D9DFA60);
    sub_23D976698(&qword_27E2F5F28, &qword_27E2F5E88, &qword_23D9DFA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5F08);
  }

  return result;
}

uint64_t sub_23D976698(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_23D97671C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D97671C()
{
  result = qword_27E2F5F18;
  if (!qword_27E2F5F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5EA8, &qword_23D9DFA70);
    sub_23D9769D4(&qword_27E2F5F20, type metadata accessor for AXSUIAudioEffectControl, &protocol conformance descriptor for AXSUIAudioEffectControl);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5F18);
  }

  return result;
}

unint64_t sub_23D9767D0()
{
  result = qword_27E2F5F30;
  if (!qword_27E2F5F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5E80, &unk_23D9DFA40);
    sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
    sub_23D976450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5F30);
  }

  return result;
}

uint64_t sub_23D976888@<X0>(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for AXSUIAudioEffectControl(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_23D975790(v1 + v4, v6, v7, a1);
}

uint64_t sub_23D97692C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for AXSUIAudioEffectControl(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_23D975890(a1, v5, v6, v1 + v4, v8, v9);
}

uint64_t sub_23D9769D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D976A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EC0, &qword_23D9DFA88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D976A8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EC0, &qword_23D9DFA88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D976AF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EA8, &qword_23D9DFA70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(type metadata accessor for AXSUIAudioEffectControl(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_23D9D8B44();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t AXSUIAudioEffectConfigurationView.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23D91F2DC(a1, a2, &qword_27E2F5F58, &qword_23D9DFAD8);
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  MEMORY[0x23EEF3850](v5);
  sub_23D91F344(a1, &qword_27E2F5F58, &qword_23D9DFAD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  *(v4 + *(result + 28)) = 0;
  return result;
}

uint64_t AXSUIAudioEffectConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F70, &qword_23D9DFAF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = sub_23D9D8ED4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9D8B64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F78, &qword_23D9DFAF8);
  MEMORY[0x28223BE20](v19[0]);
  v14 = v19 - v13;
  sub_23D9770CC(v1, v19 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  sub_23D9DA3B4();
  sub_23D9D8E74();
  (*(v6 + 8))(v8, v5);
  result = (*(v10 + 48))(v4, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    v16 = sub_23D9D8B34();
    v18 = v17;
    (*(v10 + 8))(v12, v9);
    v19[2] = v16;
    v19[3] = v18;
    sub_23D978320();
    sub_23D91B650();
    sub_23D9DA064();

    return sub_23D91F344(v14, &qword_27E2F5F78, &qword_23D9DFAF8);
  }

  return result;
}

uint64_t sub_23D9770CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61B8, &unk_23D9DFF78);
  MEMORY[0x28223BE20](v3 - 8);
  v143 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v141 = &v116 - v6;
  v7 = type metadata accessor for AXSUIAudioEffectConfigurationView(0);
  v135 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = v8;
  v137 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5EA8, &qword_23D9DFA70);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v116 - v11;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4368, &qword_23D9DC090);
  v129 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v128 = &v116 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61C0, &qword_23D9DFF88);
  MEMORY[0x28223BE20](v148);
  v149 = &v116 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  v15 = v14 - 8;
  v117 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v120 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v16;
  MEMORY[0x28223BE20](v17);
  v118 = &v116 - v18;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  MEMORY[0x28223BE20](v122);
  v121 = &v116 - v19;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4430, qword_23D9DC0D0);
  v124 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v123 = &v116 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F70, &qword_23D9DFAF0);
  MEMORY[0x28223BE20](v21 - 8);
  v127 = &v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v147 = &v116 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v116 - v26;
  v28 = sub_23D9D8ED4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v126 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v125 = &v116 - v32;
  MEMORY[0x28223BE20](v33);
  v134 = &v116 - v34;
  MEMORY[0x28223BE20](v35);
  v145 = &v116 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v116 - v38;
  v40 = sub_23D9D8B64();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v133 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v116 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61C8, &qword_23D9DFF90);
  MEMORY[0x28223BE20](v46 - 8);
  v157 = &v116 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v160 = &v116 - v49;
  v50 = *(v15 + 36);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  v52 = a1;
  v150 = v50;
  v53 = v28;
  v144 = v51;
  sub_23D9DA3B4();
  sub_23D9D8E74();
  v54 = *(v29 + 8);
  v152 = v29 + 8;
  v159 = v54;
  v54(v39, v28);
  v55 = v41 + 6;
  v156 = v41[6];
  result = v156(v27, 1, v40);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = v41[4];
    v132 = v41 + 4;
    v131 = v57;
    v57(v45, v27, v40);
    v58 = sub_23D9D8AF4();
    v60 = v59;
    v153 = v41[1];
    v154 = v41 + 1;
    v61 = v153(v45, v40);
    v155 = v40;
    if (v60)
    {
      MEMORY[0x28223BE20](v61);
      v62 = v52;
      v161 = v58;
      v162 = v60;
      sub_23D91B650();
      v161 = sub_23D9D9F04();
      v162 = v63;
      v163 = v64 & 1;
      v164 = v65;
      sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
      v66 = v128;
      sub_23D9DA694();
      v67 = v129;
      v68 = v151;
      (*(v129 + 16))(v149, v66, v151);
      swift_storeEnumTagMultiPayload();
      sub_23D91EF58();
      sub_23D9D9B14();
      (*(v67 + 8))(v66, v68);
    }

    else
    {
      v69._object = 0x800000023D9E4550;
      v69._countAndFlagsBits = 0xD000000000000013;
      v165 = AXSUILocString(_:)(v69);
      v70 = v118;
      sub_23D91F2DC(v52, v118, &qword_27E2F5F60, &qword_23D9DFAE0);
      v71 = v53;
      v72 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v73 = swift_allocObject();
      *(v73 + 16) = 0;
      *(v73 + 24) = 0;
      sub_23D92A2BC(v70, v73 + v72, &qword_27E2F5F60, &qword_23D9DFAE0);
      v74 = v120;
      sub_23D91F2DC(v52, v120, &qword_27E2F5F60, &qword_23D9DFAE0);
      v62 = v52;
      v75 = swift_allocObject();
      *(v75 + 16) = 0;
      *(v75 + 24) = 0;
      v76 = v75 + v72;
      v53 = v71;
      v55 = v41 + 6;
      sub_23D92A2BC(v74, v76, &qword_27E2F5F60, &qword_23D9DFAE0);
      v77 = v121;
      sub_23D9DA594();
      swift_getKeyPath();
      sub_23D9DA574();

      sub_23D91F344(v77, &qword_27E2F5F58, &qword_23D9DFAD8);
      sub_23D91B650();
      v78 = v123;
      sub_23D9DA4C4();
      v79 = v124;
      v80 = v146;
      (*(v124 + 16))(v149, v78, v146);
      swift_storeEnumTagMultiPayload();
      sub_23D91EF58();
      sub_23D91F01C(&qword_27E2F4428, &qword_27E2F4430, qword_23D9DC0D0, MEMORY[0x277CDF060]);
      sub_23D9D9B14();
      (*(v79 + 8))(v78, v80);
    }

    v130 = v53;
    v81 = v145;
    sub_23D9DA3B4();
    v82 = v147;
    sub_23D9D8E74();
    v159(v81, v53);
    v83 = v155;
    v151 = v55;
    result = v156(v82, 1, v155);
    if (result != 1)
    {
      v84 = v133;
      v85 = v131(v133, v82, v83);
      v86 = MEMORY[0x23EEF1E50](v85);
      v153(v84, v83);
      v161 = v86;
      swift_getKeyPath();
      v87 = v137;
      sub_23D97D8B0(v62, v137, type metadata accessor for AXSUIAudioEffectConfigurationView);
      v88 = (*(v135 + 80) + 16) & ~*(v135 + 80);
      v89 = swift_allocObject();
      sub_23D97DB40(v87, v89 + v88, type metadata accessor for AXSUIAudioEffectConfigurationView);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F38, &qword_23D9DFAD0);
      type metadata accessor for AXSUIAudioEffectControl(0);
      sub_23D91F01C(&qword_27E2F5F40, &qword_27E2F5F38, &qword_23D9DFAD0, MEMORY[0x277D83980]);
      sub_23D9769D4(&qword_27E2F5F48, MEMORY[0x277D70138], MEMORY[0x277D70140]);
      sub_23D9769D4(&qword_27E2F5F20, type metadata accessor for AXSUIAudioEffectControl, &protocol conformance descriptor for AXSUIAudioEffectControl);
      sub_23D9DA614();
      v90 = v134;
      sub_23D9DA3B4();
      v91 = sub_23D9D8E54();
      v92 = v130;
      v93 = v159;
      v159(v90, v130);
      v94 = *(v91 + 16);

      if (v94)
      {
        v95 = v125;
        sub_23D9DA3B4();
        v96 = sub_23D9D8E54();
        v93(v95, v92);
        v97 = v126;
        sub_23D9DA3B4();
        v98 = v127;
        sub_23D9D8E74();
        v93(v97, v92);
        v99 = v155;
        if (v156(v98, 1, v155) == 1)
        {
          sub_23D91F344(v98, &qword_27E2F5F70, &qword_23D9DFAF0);

LABEL_11:
          MEMORY[0x28223BE20](v100);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
          sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
          v104 = v141;
          sub_23D9DA684();
          v103 = 0;
          goto LABEL_12;
        }

        v101 = sub_23D9D8B04();
        v153(v98, v99);
        v102 = sub_23D95E898(v96, v101);

        if ((v102 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v103 = 1;
      v104 = v141;
LABEL_12:
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61D0, &qword_23D9DFFC8);
      (*(*(v105 - 8) + 56))(v104, v103, 1, v105);
      v106 = v157;
      sub_23D91F2DC(v160, v157, &qword_27E2F61C8, &qword_23D9DFF90);
      v107 = v139;
      v108 = *(v139 + 16);
      v109 = v138;
      v110 = v158;
      v111 = v140;
      v108(v138, v158, v140);
      v112 = v143;
      sub_23D91F2DC(v104, v143, &qword_27E2F61B8, &unk_23D9DFF78);
      v113 = v142;
      sub_23D91F2DC(v106, v142, &qword_27E2F61C8, &qword_23D9DFF90);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61D8, &unk_23D9DFFD0);
      v108((v113 + *(v114 + 48)), v109, v111);
      sub_23D91F2DC(v112, v113 + *(v114 + 64), &qword_27E2F61B8, &unk_23D9DFF78);
      sub_23D91F344(v104, &qword_27E2F61B8, &unk_23D9DFF78);
      v115 = *(v107 + 8);
      v115(v110, v111);
      sub_23D91F344(v160, &qword_27E2F61C8, &qword_23D9DFF90);
      sub_23D91F344(v112, &qword_27E2F61B8, &unk_23D9DFF78);
      v115(v109, v111);
      return sub_23D91F344(v157, &qword_27E2F61C8, &qword_23D9DFF90);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23D978320()
{
  result = qword_27E2F5F80;
  if (!qword_27E2F5F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5F78, &qword_23D9DFAF8);
    sub_23D91F01C(&qword_27E2F5F88, &qword_27E2F5F90, &qword_23D9DFB00, MEMORY[0x277CE14C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5F80);
  }

  return result;
}

uint64_t sub_23D9783D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - v10;
  v12._object = 0x800000023D9E4550;
  v12._countAndFlagsBits = 0xD000000000000013;
  v20 = AXSUILocString(_:)(v12);
  sub_23D91F2DC(a1, v9, &qword_27E2F5F60, &qword_23D9DFAE0);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_23D92A2BC(v9, v14 + v13, &qword_27E2F5F60, &qword_23D9DFAE0);
  sub_23D91F2DC(a1, v6, &qword_27E2F5F60, &qword_23D9DFAE0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_23D92A2BC(v6, v15 + v13, &qword_27E2F5F60, &qword_23D9DFAE0);
  sub_23D9D8ED4();
  sub_23D9DA594();
  swift_getKeyPath();
  sub_23D9DA574();

  sub_23D91F344(v11, &qword_27E2F5F58, &qword_23D9DFAD8);
  sub_23D91B650();
  return sub_23D9DA4C4();
}

uint64_t sub_23D97867C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F70, &qword_23D9DFAF0);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v38 - v4;
  v48 = sub_23D9D8ED4();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_23D9D8B64();
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  MEMORY[0x28223BE20](v46);
  v14 = &v38 - v13;
  v15 = sub_23D9D8B44();
  v16 = MEMORY[0x28223BE20](v15);
  v39 = v18;
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 16);
  v41 = v20;
  v19(v16);
  v21 = a1;
  v44 = a1;
  sub_23D91F2DC(a1, v12, &qword_27E2F5F60, &qword_23D9DFAE0);
  v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_23D92A2BC(v12, v23 + v22, &qword_27E2F5F60, &qword_23D9DFAE0);
  v24 = v21;
  v25 = v45;
  sub_23D91F2DC(v24, v45, &qword_27E2F5F60, &qword_23D9DFAE0);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = v47;
  sub_23D92A2BC(v25, v26 + v22, &qword_27E2F5F60, &qword_23D9DFAE0);
  v28 = v48;
  sub_23D9DA594();
  swift_getKeyPath();
  sub_23D9DA574();

  sub_23D91F344(v14, &qword_27E2F5F58, &qword_23D9DFAD8);
  v29 = v53;
  v46 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  v30 = v49;
  v31 = v50;
  v32 = v52;
  sub_23D9DA3B4();
  sub_23D9D8E74();
  (*(v51 + 8))(v31, v28);
  result = (*(v30 + 48))(v32, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v42;
    (*(v30 + 32))(v42, v32, v27);
    v35 = sub_23D9D8B04();
    (*(v30 + 8))(v34, v27);
    v36 = v43;
    (*(v39 + 32))(v43, v40, v41);
    result = type metadata accessor for AXSUIAudioEffectControl(0);
    v37 = v36 + *(result + 20);
    *v37 = v29;
    *(v37 + 8) = v46;
    *(v36 + *(result + 24)) = v35;
  }

  return result;
}

uint64_t sub_23D978BE8(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIAudioEffectConfigurationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F50C8, &qword_23D9DDAF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_23D9D93B4();
  v8 = sub_23D9D93E4();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_23D97D8B0(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIAudioEffectConfigurationView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23D97DB40(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AXSUIAudioEffectConfigurationView);
  return sub_23D9DA3F4();
}

uint64_t sub_23D978DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  MEMORY[0x28223BE20](v2);
  v35 = v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F70, &qword_23D9DFAF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = sub_23D9D8ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - v11;
  MEMORY[0x28223BE20](v13);
  v31 = v29 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v29 - v16;
  v18 = sub_23D9D8B64();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  v33 = a1;
  v29[1] = v22;
  sub_23D9DA3B4();
  sub_23D9D8E74();
  v30 = *(v8 + 8);
  v30(v17, v7);
  result = (*(v19 + 48))(v6, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v19 + 32))(v21, v6, v18);
    sub_23D9D8B04();
    (*(v19 + 8))(v21, v18);
    v24 = v35;
    sub_23D91F2DC(v33, v35, &qword_27E2F5F60, &qword_23D9DFAE0);
    v25 = v31;
    v33 = *(v32 + 28);
    sub_23D9DA3B4();
    sub_23D9D8E64();
    v26 = *(v8 + 16);
    v26(v12, v25, v7);
    v27 = v34;
    v26(v34, v12, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
    sub_23D9DA564();
    v28 = v30;
    v30(v12, v7);
    v26(v12, v25, v7);
    v26(v27, v12, v7);
    sub_23D9DA3C4();
    v28(v12, v7);
    v28(v25, v7);
    return sub_23D91F344(v24, &qword_27E2F5F60, &qword_23D9DFAE0);
  }

  return result;
}

uint64_t sub_23D979228@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4570;
  v2._countAndFlagsBits = 0xD000000000000012;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t AXSUIAudioEffectBuilder.init(configurations:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v5;
  return result;
}

uint64_t AXSUIAudioEffectBuilder.body.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F98, &qword_23D9DFB08);
  MEMORY[0x28223BE20](v30);
  v31 = &v29 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA0, &qword_23D9DFB10);
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  if (v11)
  {
    sub_23D9DA9B4();

    swift_bridgeObjectRetain_n();
    v13 = sub_23D9DA9A4();
    v14 = swift_allocObject();
    *&v29 = v2;
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    v14[5] = v9;
    v14[6] = v10;
    v14[7] = v12;
    v14[8] = v11;

    v16 = sub_23D9DA9A4();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = v9;
    v17[5] = v10;
    v17[6] = v12;
    v17[7] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD0, &qword_23D9DFB60);
    sub_23D9DA594();
    v18 = v34;
    v19 = v35;
    KeyPath = swift_getKeyPath();

    sub_23D97A4D0(v18, v19, *(&v19 + 1), KeyPath, sub_23D97A278, 0);
    v21 = v32;
    (*(v6 + 16))(v31, v8, v32);
    swift_storeEnumTagMultiPayload();
    sub_23D97D918();
    sub_23D9769D4(&qword_27E2F5FC8, type metadata accessor for AXSUIOpenEndedEffectsView, &protocol conformance descriptor for AXSUIOpenEndedEffectsView);
    sub_23D9D9B14();

    return (*(v6 + 8))(v8, v21);
  }

  else
  {
    v34 = *v1;
    *&v35 = v10;
    *(&v35 + 1) = v12;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
    sub_23D9DA584();
    v24 = v38;
    v29 = v39;
    *v4 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
    swift_storeEnumTagMultiPayload();
    v25 = v4 + *(v2 + 24);
    LOBYTE(v38) = 0;
    sub_23D9DA3A4();
    v26 = v35;
    *v25 = v34;
    *(v25 + 1) = v26;
    v34 = v24;
    v35 = v29;
    MEMORY[0x23EEF3850](&v38, v23);
    v27 = v38;
    v36 = v38;
    v37 = 0;
    v28 = v4 + *(v2 + 20);
    *v28 = v34;
    *(v28 + 8) = v35;
    *(v28 + 3) = v27;
    *(v28 + 4) = 0;
    sub_23D97D8B0(v4, v31, type metadata accessor for AXSUIOpenEndedEffectsView);
    swift_storeEnumTagMultiPayload();
    sub_23D97D918();
    sub_23D9769D4(&qword_27E2F5FC8, type metadata accessor for AXSUIOpenEndedEffectsView, &protocol conformance descriptor for AXSUIOpenEndedEffectsView);
    sub_23D9D9B14();
    return sub_23D97D9C8(v4);
  }
}

void sub_23D9797D8(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v67 = a4;
  v68 = a2;
  v8 = sub_23D9D88A4();
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23D9D8B64();
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61A0, &qword_23D9DFF68);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_23D9D8BA4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23D9D8ED4();
  MEMORY[0x28223BE20](v21);
  v74 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v50 = a5;
    v76 = MEMORY[0x277D84F90];
    v27 = v10;
    v28 = v22;
    v69 = v23;
    sub_23D964764(0, v25, 0);
    v73 = 0;
    v30 = *(v18 + 16);
    v29 = v18 + 16;
    v63 = v30;
    v26 = v76;
    v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v70 = (v69 + 32);
    v71 = (v69 + 48);
    v51 = (v27 + 8);
    v32 = *(v29 + 56);
    v61 = (v29 - 8);
    v62 = v32;
    v64 = v20;
    v65 = v29;
    v53 = a3;
    v66 = v17;
    v52 = v28;
    do
    {
      v72 = v26;
      v63(v20, v31, v17);
      v75[1] = v68;
      v75[2] = a3;
      v75[3] = v67;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
      v34 = MEMORY[0x23EEF3850](v75, v33);
      v35 = v75[0];
      MEMORY[0x28223BE20](v34);
      *(&v50 - 2) = v20;
      v36 = v16;
      v37 = v16;
      v38 = v73;
      sub_23D9932A4(sub_23D97FEAC, v35, v36);
      v73 = v38;
      v16 = v37;

      v39 = *v71;
      if ((*v71)(v37, 1, v28) == 1)
      {
        v60 = sub_23D9D8B94();
        v59 = v40;
        v41 = v54;
        sub_23D9D8B74();
        v58 = sub_23D9D8B04();
        v42 = *v51;
        v43 = v41;
        v44 = v56;
        (*v51)(v43, v56);
        v45 = v55;
        sub_23D9D8B74();
        sub_23D9D8B14();
        v46 = v44;
        v16 = v37;
        v42(v45, v46);
        sub_23D9D8894();
        a3 = v53;
        v28 = v52;
        sub_23D9D8E84();
        if (v39(v37, 1, v28) != 1)
        {
          sub_23D91F344(v37, &qword_27E2F61A0, &qword_23D9DFF68);
        }
      }

      else
      {
        (*v70)(v74, v37, v28);
      }

      v20 = v64;
      v17 = v66;
      (*v61)(v64, v66);
      v26 = v72;
      v76 = v72;
      v48 = *(v72 + 16);
      v47 = *(v72 + 24);
      v49 = v69;
      if (v48 >= v47 >> 1)
      {
        sub_23D964764((v47 > 1), v48 + 1, 1);
        v49 = v69;
        v26 = v76;
      }

      *(v26 + 16) = v48 + 1;
      (*(v49 + 32))(v26 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v74, v28);
      v31 += v62;
      --v25;
    }

    while (v25);
    a5 = v50;
  }

  *a5 = v26;
}

uint64_t sub_23D979DD4()
{
  v0 = sub_23D9D8B64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F61A8, &qword_23D9DFF70);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F70, &qword_23D9DFAF0);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  sub_23D9D8E74();
  sub_23D9D8B74();
  (*(v1 + 56))(v11, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_23D91F2DC(v14, v6, &qword_27E2F5F70, &qword_23D9DFAF0);
  sub_23D91F2DC(v11, &v6[v15], &qword_27E2F5F70, &qword_23D9DFAF0);
  v16 = v1;
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_23D91F2DC(v6, v24, &qword_27E2F5F70, &qword_23D9DFAF0);
    if (v17(&v6[v15], 1, v0) != 1)
    {
      v19 = v1;
      v20 = v23;
      (*(v16 + 32))(v23, &v6[v15], v0);
      sub_23D9769D4(&qword_27E2F61B0, MEMORY[0x277D70148], MEMORY[0x277D70150]);
      v18 = sub_23D9DA894();
      v21 = *(v19 + 8);
      v21(v20, v0);
      sub_23D91F344(v11, &qword_27E2F5F70, &qword_23D9DFAF0);
      sub_23D91F344(v14, &qword_27E2F5F70, &qword_23D9DFAF0);
      v21(v24, v0);
      sub_23D91F344(v6, &qword_27E2F5F70, &qword_23D9DFAF0);
      return v18 & 1;
    }

    sub_23D91F344(v11, &qword_27E2F5F70, &qword_23D9DFAF0);
    sub_23D91F344(v14, &qword_27E2F5F70, &qword_23D9DFAF0);
    (*(v1 + 8))(v24, v0);
    goto LABEL_6;
  }

  sub_23D91F344(v11, &qword_27E2F5F70, &qword_23D9DFAF0);
  sub_23D91F344(v14, &qword_27E2F5F70, &qword_23D9DFAF0);
  if (v17(&v6[v15], 1, v0) != 1)
  {
LABEL_6:
    sub_23D91F344(v6, &qword_27E2F61A8, &qword_23D9DFF70);
    v18 = 0;
    return v18 & 1;
  }

  sub_23D91F344(v6, &qword_27E2F5F70, &qword_23D9DFAF0);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_23D97A21C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  return sub_23D9DA564();
}

uint64_t sub_23D97A278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = sub_23D9D8ED4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEF3850](v3, v9);
  v12 = sub_23D9D8E94();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  sub_23D91F2DC(a1, v6, &qword_27E2F5F58, &qword_23D9DFAD8);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_23D92A2BC(v6, v16 + v15, &qword_27E2F5F58, &qword_23D9DFAD8);
  sub_23D91F2DC(a1, v6, &qword_27E2F5F58, &qword_23D9DFAD8);
  v17 = swift_allocObject();
  sub_23D92A2BC(v6, v17 + v15, &qword_27E2F5F58, &qword_23D9DFAD8);
  return sub_23D9BE808(v12, v14, sub_23D97FE38, v17, sub_23D97FCCC, v16, v20);
}

uint64_t sub_23D97A4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  MEMORY[0x23EEF3850](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_23D97F9D0;
  v18[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FC0, &qword_23D9DFB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD0, &qword_23D9DFB60);
  sub_23D91F01C(&qword_27E2F5FB8, &qword_27E2F5FC0, &qword_23D9DFB58, &protocol conformance descriptor for AXSUISpecifierLink<A, B>);
  sub_23D91F01C(&qword_27E2F6128, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83960]);
  sub_23D91F01C(&qword_27E2F6130, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83980]);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_23D97FA58;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6178, &qword_23D9DFF58);
  sub_23D97FAF4();
  return sub_23D9DA614();
}

uint64_t sub_23D97A758@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D91F2DC(v2, &v14 - v9, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9464();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AXSUIOpenEndedEffectsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD8, &unk_23D9DFB98);
  sub_23D91F01C(&qword_27E2F5FE0, &qword_27E2F5FD8, &unk_23D9DFB98, MEMORY[0x277CE14C8]);
  sub_23D9D9E84();
  v8 = v2 + *(v5 + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  v23 = v9;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v11 = v20;
  v12 = v21;
  v13 = v22;
  sub_23D97D8B0(v2, &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AXSUIOpenEndedEffectsView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_23D97DB40(&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for AXSUIOpenEndedEffectsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FE8, &qword_23D9DFBA8);
  v17 = a1 + *(result + 36);
  *v17 = v11;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;
  *(v17 + 24) = sub_23D97DBA8;
  *(v17 + 32) = v15;
  return result;
}

uint64_t sub_23D97AB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - v6;
  v7 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  v8 = v7 - 8;
  v40 = *(v7 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6110, &qword_23D9DFE78) - 8;
  MEMORY[0x28223BE20](v41);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v12;
  v13 = (a1 + *(v8 + 28));
  v14 = *v13;
  v15 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v18 = v13[4];
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v14;
  v19[5] = v15;
  v19[6] = v17;
  v19[7] = v16;
  v19[8] = v18;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v14;
  v20[5] = v15;
  v20[6] = v17;
  v20[7] = v16;
  v20[8] = v18;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD0, &qword_23D9DFB60);
  sub_23D9DA594();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  sub_23D9D88A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6118, &qword_23D9DFE80);
  sub_23D97F5D4();
  sub_23D91F01C(&qword_27E2F6138, &qword_27E2F6118, &qword_23D9DFE80, &protocol conformance descriptor for AXSUISpecifierLink<A, B>);
  sub_23D97F6C0();
  v21 = v48;
  sub_23D9DA624();
  sub_23D97D8B0(a1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIOpenEndedEffectsView);
  v22 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v23 = swift_allocObject();
  sub_23D97DB40(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AXSUIOpenEndedEffectsView);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_23D97F774;
  *(v24 + 24) = v23;
  v25 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6150, &qword_23D9DFE88) + 36));
  *v25 = sub_23D958C9C;
  v25[1] = v24;
  sub_23D97D8B0(a1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIOpenEndedEffectsView);
  v26 = swift_allocObject();
  sub_23D97DB40(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v22, type metadata accessor for AXSUIOpenEndedEffectsView);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_23D97F7F4;
  *(v27 + 24) = v26;
  v28 = (v21 + *(v41 + 44));
  *v28 = sub_23D94B0F8;
  v28[1] = v27;
  sub_23D97D8B0(a1, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIOpenEndedEffectsView);
  v29 = swift_allocObject();
  sub_23D97DB40(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v22, type metadata accessor for AXSUIOpenEndedEffectsView);
  v30 = v43;
  sub_23D9DA404();
  v31 = v42;
  sub_23D91F2DC(v21, v42, &qword_27E2F6110, &qword_23D9DFE78);
  v33 = v44;
  v32 = v45;
  v34 = *(v45 + 16);
  v35 = v46;
  v34(v44, v30, v46);
  v36 = v47;
  sub_23D91F2DC(v31, v47, &qword_27E2F6110, &qword_23D9DFE78);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6158, &qword_23D9DFE90);
  v34((v36 + *(v37 + 48)), v33, v35);
  v38 = *(v32 + 8);
  v38(v30, v35);
  sub_23D91F344(v48, &qword_27E2F6110, &qword_23D9DFE78);
  v38(v33, v35);
  return sub_23D91F344(v31, &qword_27E2F6110, &qword_23D9DFE78);
}

uint64_t sub_23D97B1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = sub_23D9D8ED4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x23EEF3850](v3, v11);
  v21 = sub_23D9D8E94();
  v15 = v14;
  (*(v10 + 8))(v13, v9);
  sub_23D91F2DC(a1, v8, &qword_27E2F5F58, &qword_23D9DFAD8);
  v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v17 = swift_allocObject();
  sub_23D92A2BC(v8, v17 + v16, &qword_27E2F5F58, &qword_23D9DFAD8);
  sub_23D91F2DC(a1, v5, &qword_27E2F5F58, &qword_23D9DFAD8);
  v18 = swift_allocObject();
  sub_23D92A2BC(v5, v18 + v16, &qword_27E2F5F58, &qword_23D9DFAD8);
  return sub_23D9BEA30(v21, v15, sub_23D980544, v18, sub_23D97F8D8, v17, v23);
}

uint64_t sub_23D97B420@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AXSUIAudioEffectConfigurationView(0);
  sub_23D9769D4(&qword_27E2F6168, type metadata accessor for AXSUIAudioEffectConfigurationView, &protocol conformance descriptor for AXSUIAudioEffectConfigurationView);
  sub_23D9D9E74();
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6170, &qword_23D9DFE98) + 36);
  type metadata accessor for AXSUINavigationManager(0);
  *(swift_allocObject() + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  sub_23D9DA3A4();
  *v3 = v8;
  *(v3 + 8) = v9;
  *(v3 + 16) = swift_getKeyPath();
  *(v3 + 24) = 0;
  v4 = type metadata accessor for AXNavigationSink(0);
  v5 = *(v4 + 24);
  *(v3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 28);
  *(v3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D97B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  sub_23D91F2DC(a1, &v9 - v5, &qword_27E2F5F58, &qword_23D9DFAD8);
  sub_23D91F2DC(v6, a2, &qword_27E2F5F58, &qword_23D9DFAD8);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0) + 28);
  MEMORY[0x23EEF3850](v4);
  sub_23D91F344(v6, &qword_27E2F5F58, &qword_23D9DFAD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  *(v7 + *(result + 28)) = 0;
  return result;
}

__n128 sub_23D97B6E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D99B4();
  sub_23D97B75C(a1, &v9);
  v5 = v10;
  v6 = v11;
  v7 = v12;
  result = v9;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_23D97B75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D8ED4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F70, &qword_23D9DFAF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  v39 = a1;
  MEMORY[0x23EEF3850]();
  sub_23D9D8E74();
  v17 = *(v5 + 8);
  v40 = v4;
  v37 = v17;
  v17(v10, v4);
  v18 = sub_23D9D8B64();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    sub_23D91F344(v16, &qword_27E2F5F70, &qword_23D9DFAF0);
    v21 = 0;
  }

  else
  {
    v36 = a2;
    sub_23D9D8B24();
    v23 = v22;
    (*(v19 + 8))(v16, v18);
    if (v23)
    {
      v21 = sub_23D9DA364();
    }

    else
    {
      v21 = 0;
    }

    a2 = v36;
  }

  MEMORY[0x23EEF3850](v38);
  sub_23D9D8E74();
  v37(v7, v40);
  if (v20(v13, 1, v18) == 1)
  {
    sub_23D91F344(v13, &qword_27E2F5F70, &qword_23D9DFAF0);
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v24 = sub_23D9D8B34();
    v25 = v26;
    (*(v19 + 8))(v13, v18);
  }

  v41 = v24;
  v42 = v25;
  sub_23D91B650();
  v27 = sub_23D9D9F04();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v31 &= 1u;
  sub_23D91E0AC(v27, v29, v31);

  *a2 = v21;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29;
  *(a2 + 24) = v31;
  *(a2 + 32) = v33;
  sub_23D9274BC(v27, v29, v31);
}

uint64_t sub_23D97BAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AXSUIOpenEndedEffectsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6108, &qword_23D9DFE70);
  sub_23D9DA3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD0, &qword_23D9DFB60);
  sub_23D91F01C(&qword_27E2F6128, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83960]);
  sub_23D9DA884();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  sub_23D9DA564();
  return sub_23D9DA3C4();
}

uint64_t sub_23D97BC4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AXSUIOpenEndedEffectsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6108, &qword_23D9DFE70);
  sub_23D9DA3B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD0, &qword_23D9DFB60);
  sub_23D91F01C(&qword_27E2F6128, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83960]);
  sub_23D91F01C(&qword_27E2F6160, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83990]);
  sub_23D9DAAA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  sub_23D9DA564();
  return sub_23D9DA3C4();
}

uint64_t sub_23D97BDD0@<X0>(uint64_t a1@<X8>)
{
  v2._object = 0x800000023D9E4510;
  v2._countAndFlagsBits = 0xD000000000000010;
  AXSUILocString(_:)(v2);
  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_23D97BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v35 = a2;
  v3 = sub_23D9D99A4();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60A0, &qword_23D9DFE18);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60A8, &qword_23D9DFE20);
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60B0, &qword_23D9DFE28);
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  MEMORY[0x28223BE20](v13);
  v28 = &v28 - v15;
  v37 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60B8, &qword_23D9DFE30);
  sub_23D97EAE0();
  sub_23D9D9E84();
  v16._object = 0x800000023D9E4510;
  v16._countAndFlagsBits = 0xD000000000000010;
  v38 = AXSUILocString(_:)(v16);
  v17 = sub_23D91F01C(&qword_27E2F60D8, &qword_27E2F60A0, &qword_23D9DFE18, MEMORY[0x277CDE5A8]);
  v18 = sub_23D91B650();
  v19 = MEMORY[0x277D837D0];
  sub_23D9DA064();

  (*(v7 + 8))(v9, v6);
  v21 = v31;
  v20 = v32;
  (*(v31 + 104))(v5, *MEMORY[0x277CDDDB8], v32);
  v38._countAndFlagsBits = v6;
  v38._object = v19;
  v39 = v17;
  v40 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_23D9DA144();
  (*(v21 + 8))(v5, v20);
  (*(v30 + 8))(v12, v10);
  v36 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B60, &unk_23D9DCF00);
  v38._countAndFlagsBits = v10;
  v38._object = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v25 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
  v38._countAndFlagsBits = v24;
  v38._object = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v33;
  sub_23D9DA1A4();
  return (*(v34 + 8))(v23, v26);
}

uint64_t sub_23D97C324(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v8[1] = sub_23D9D8B84();
  swift_getKeyPath();
  sub_23D97D8B0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIOpenEndedEffectsView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23D97DB40(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for AXSUIOpenEndedEffectsView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60E0, &qword_23D9DFE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60D0, &unk_23D9DFE38);
  sub_23D91F01C(&qword_27E2F60E8, &qword_27E2F60E0, &qword_23D9DFE60, MEMORY[0x277D83980]);
  sub_23D9769D4(&qword_27E2F60F0, MEMORY[0x277D70160], MEMORY[0x277D70168]);
  sub_23D91F01C(&qword_27E2F60C8, &qword_27E2F60D0, &unk_23D9DFE38, MEMORY[0x277CDF030]);
  return sub_23D9DA614();
}

uint64_t sub_23D97C55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_23D9D8BA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D97D8B0(a2, v12, type metadata accessor for AXSUIOpenEndedEffectsView);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_23D97DB40(v12, v15 + v13, type metadata accessor for AXSUIOpenEndedEffectsView);
  (*(v6 + 32))(v15 + v14, v8, v5);
  v17[4] = a1;
  v17[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F60F8, &qword_23D9DFE68);
  sub_23D91F01C(&qword_27E2F6100, &qword_27E2F60F8, &qword_23D9DFE68, MEMORY[0x277CE1140]);
  return sub_23D9DA404();
}

uint64_t sub_23D97C7C8(uint64_t a1)
{
  v2 = sub_23D9D88A4();
  MEMORY[0x28223BE20](v2 - 8);
  v23 = sub_23D9D8ED4();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D9D8B94();
  v6 = MEMORY[0x277D84F90];
  sub_23D9B8534(MEMORY[0x277D84F90]);
  sub_23D9B8638(v6);
  sub_23D9D8894();
  sub_23D9D8E84();
  v22 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  v7 = *(v22 + 20);
  v24 = a1;
  v8 = (a1 + v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v8[4];
  v25 = *v8;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6108, &qword_23D9DFE70);
  sub_23D9DA3B4();
  v14 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_23D93C688(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_23D93C688((v15 > 1), v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v23);
  v29 = v13;
  v30 = v14;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  sub_23D9DA564();
  v29 = v13;
  v30 = v14;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  sub_23D9DA3C4();
  v17 = v24 + *(v22 + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v25) = v18;
  v26 = v19;
  LOBYTE(v30) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

__n128 sub_23D97CAB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23D9D99B4();
  v15 = 1;
  sub_23D97CB34(a1, a2, v12);
  v7 = v13;
  v8 = v14;
  result = v12[0];
  v10 = v12[1];
  v11 = v15;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = result;
  *(a3 + 40) = v10;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  return result;
}

uint64_t sub_23D97CB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v51 = a2;
  v4 = sub_23D9D9464();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_23D9D8B64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v48 = a1;
  sub_23D9D8B74();
  sub_23D9D8B24();
  v19 = v18;
  v46 = *(v12 + 8);
  v46(v17, v11);
  if (v19)
  {
    v52 = sub_23D9DA364();
    sub_23D97A758(v10);
    v20 = *(v5 + 104);
    v47 = *MEMORY[0x277CDF3C8];
    v20(v7);
    v21 = sub_23D9D9454();
    v22 = *(v5 + 8);
    v22(v7, v4);
    v22(v10, v4);
    if (v21)
    {
      v23 = sub_23D9DA2C4();
    }

    else
    {
      v23 = sub_23D9DA2A4();
    }

    v24 = v23;

    v49 = v24;
  }

  else
  {
    v52 = 0;
    v49 = 0;
    v47 = *MEMORY[0x277CDF3C8];
  }

  sub_23D9D8B74();
  v25 = sub_23D9D8B34();
  v27 = v26;
  v46(v14, v11);
  v53 = v25;
  v54 = v27;
  sub_23D91B650();
  v28 = sub_23D9D9F04();
  v30 = v29;
  v32 = v31;
  sub_23D97A758(v10);
  (*(v5 + 104))(v7, v47, v4);
  LOBYTE(v27) = sub_23D9D9454();
  v33 = *(v5 + 8);
  v33(v7, v4);
  v33(v10, v4);
  if (v27)
  {
    v34 = sub_23D9DA2C4();
  }

  else
  {
    v34 = sub_23D9DA2A4();
  }

  v53 = v34;
  v35 = sub_23D9D9EC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_23D9274BC(v28, v30, v32 & 1);

  v42 = v52;
  v43 = v49;
  sub_23D97EE88(v52, v49);
  sub_23D91E0AC(v35, v37, v39 & 1);

  sub_23D97EEC8(v42, v43);
  v44 = v50;
  *v50 = v42;
  v44[1] = v43;
  v44[2] = v35;
  v44[3] = v37;
  *(v44 + 32) = v39 & 1;
  v44[5] = v41;
  sub_23D9274BC(v35, v37, v39 & 1);

  return sub_23D97EEC8(v42, v43);
}

uint64_t sub_23D97CF68(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23D9D9BA4();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960, MEMORY[0x277CDF030]);
  sub_23D9D94B4();
  v7 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20, MEMORY[0x277CDD7A0]);
  MEMORY[0x23EEF2F00](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D97D154(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5._object = 0x800000023D9E4530;
  v5._countAndFlagsBits = 0xD000000000000013;
  v9 = AXSUILocString(_:)(v5);
  sub_23D97D8B0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXSUIOpenEndedEffectsView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23D97DB40(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AXSUIOpenEndedEffectsView);
  sub_23D91B650();
  return sub_23D9DA434();
}

uint64_t sub_23D97D2AC(uint64_t a1, char a2)
{
  type metadata accessor for AXSUIOpenEndedEffectsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D97D320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FD8, &unk_23D9DFB98);
  sub_23D91F01C(&qword_27E2F5FE0, &qword_27E2F5FD8, &unk_23D9DFB98, MEMORY[0x277CE14C8]);
  sub_23D9D9E84();
  v8 = v2 + *(v4 + 32);
  v9 = *v8;
  v10 = *(v8 + 8);
  v23 = v9;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v11 = v20;
  v12 = v21;
  v13 = v22;
  sub_23D97D8B0(v2, v7, type metadata accessor for AXSUIOpenEndedEffectsView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_23D97DB40(v7, v15 + v14, type metadata accessor for AXSUIOpenEndedEffectsView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FE8, &qword_23D9DFBA8);
  v17 = a2 + *(result + 36);
  *v17 = v11;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;
  *(v17 + 24) = sub_23D980540;
  *(v17 + 32) = v15;
  return result;
}

void *sub_23D97D51C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  return sub_23D9DA3B4();
}

uint64_t sub_23D97D580(char *a1)
{
  v2 = sub_23D9D8ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v3 + 16);
  v13(&v16 - v11, a1, v2, v10);
  (v13)(v8, v12, v2);
  (v13)(v5, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  sub_23D9DA564();
  v14 = *(v3 + 8);
  v14(v8, v2);
  (v13)(v8, v12, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  (v13)(v5, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);
  sub_23D9DA3C4();
  v14(v8, v2);
  return (v14)(v12, v2);
}

uint64_t sub_23D97D7E4(uint64_t a1)
{
  v2 = sub_23D9D9464();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_23D9D97C4();
}

uint64_t sub_23D97D8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23D97D918()
{
  result = qword_27E2F5FB0;
  if (!qword_27E2F5FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5FA0, &qword_23D9DFB10);
    sub_23D91F01C(&qword_27E2F5FB8, &qword_27E2F5FC0, &qword_23D9DFB58, &protocol conformance descriptor for AXSUISpecifierLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5FB0);
  }

  return result;
}

uint64_t sub_23D97D9C8(uint64_t a1)
{
  v2 = type metadata accessor for AXSUIOpenEndedEffectsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D97DA64()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D97DACC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9D8E94();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D97DB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D97DC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D9D8B44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D97DD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D9D8B44();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D97DDC0(uint64_t a1)
{
  sub_23D9D8B44();
  if (v1 <= 0x3F)
  {
    sub_23D97E574(319, &qword_27E2F6000, &qword_27E2F6008, &qword_23D9DFD18, MEMORY[0x277CE1200]);
    if (v2 <= 0x3F)
    {
      sub_23D97DE88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D97DE88()
{
  if (!qword_27E2F6010)
  {
    v0 = sub_23D9DA864();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F6010);
    }
  }
}

uint64_t sub_23D97DEFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23D97DF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_23D97E024(uint64_t a1)
{
  sub_23D97E510(319, &qword_27E2F6028, MEMORY[0x277CE6790], type metadata accessor for ReplicatedState);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D97E0CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23D97E114(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23D97E170(uint64_t *a1, unsigned int a2)
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

uint64_t sub_23D97E1C0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23D97E214(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_23D97E22C(void *result, int a2)
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

uint64_t sub_23D97E270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23D97E350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23D97E418(uint64_t a1)
{
  sub_23D97E510(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8], MEMORY[0x277CDF470]);
  if (v1 <= 0x3F)
  {
    sub_23D97E574(319, &qword_27E2F6040, &qword_27E2F5FD0, &qword_23D9DFB60, type metadata accessor for ReplicatedState);
    if (v2 <= 0x3F)
    {
      sub_23D9273D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D97E510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_23D97E574(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23D97E5DC()
{
  result = qword_27E2F6048;
  if (!qword_27E2F6048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6050, &qword_23D9DFDF0);
    sub_23D976514();
    sub_23D9767D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6048);
  }

  return result;
}

uint64_t sub_23D97E668()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5F78, &qword_23D9DFAF8);
  sub_23D978320();
  sub_23D91B650();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_23D97E6E4()
{
  result = qword_27E2F6058;
  if (!qword_27E2F6058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6060, &qword_23D9DFDF8);
    sub_23D97D918();
    sub_23D9769D4(&qword_27E2F5FC8, type metadata accessor for AXSUIOpenEndedEffectsView, &protocol conformance descriptor for AXSUIOpenEndedEffectsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6058);
  }

  return result;
}

unint64_t sub_23D97E7A4()
{
  result = qword_27E2F6068;
  if (!qword_27E2F6068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5FE8, &qword_23D9DFBA8);
    sub_23D97E85C();
    sub_23D91F01C(&qword_27E2F6090, &qword_27E2F6098, &qword_23D9DFE10, &unk_23D9E32A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6068);
  }

  return result;
}

unint64_t sub_23D97E85C()
{
  result = qword_27E2F6070;
  if (!qword_27E2F6070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6078, &qword_23D9DFE00);
    sub_23D91F01C(&qword_27E2F6080, &qword_27E2F6088, &qword_23D9DFE08, MEMORY[0x277CDE5A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6070);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(type metadata accessor for AXSUIOpenEndedEffectsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_23D9D9464();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_23D97EA68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AXSUIOpenEndedEffectsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D97BE40(v4, a1);
}

unint64_t sub_23D97EAE0()
{
  result = qword_27E2F60C0;
  if (!qword_27E2F60C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F60B8, &qword_23D9DFE30);
    sub_23D91F01C(&qword_27E2F60C8, &qword_27E2F60D0, &unk_23D9DFE38, MEMORY[0x277CDF030]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F60C0);
  }

  return result;
}

uint64_t sub_23D97EBD4()
{
  v1 = *(type metadata accessor for AXSUIOpenEndedEffectsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_23D9D8BA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D9D9464();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_23D97EDB4()
{
  v1 = *(type metadata accessor for AXSUIOpenEndedEffectsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_23D9D8BA4();

  return sub_23D97C7C8(v0 + v2);
}

uint64_t sub_23D97EE88(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D97EEC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_23D97EF08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23D9D8ED4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  result = MEMORY[0x23EEF3850](v15, v13);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v15[0] + 16) > a1)
  {
    (*(v10 + 16))(v12, v15[0] + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, v9);

    swift_getAtKeyPath();
    (*(v10 + 8))(v12, v9);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D97F080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v18 - v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a1;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a1;
  sub_23D9D8ED4();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_23D9DA594();
  a7(v14);
  return sub_23D91F344(v14, &qword_27E2F5F58, &qword_23D9DFAD8);
}

void *sub_23D97F204@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v9[1] = *a1;
  v10 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  result = MEMORY[0x23EEF3850](v9, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];
    if (v4 < *(v9[0] + 16))
    {
      v8 = sub_23D9D8ED4();
      (*(*(v8 - 8) + 16))(a3, v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v4, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D97F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a5;
  v10[1] = *a4;
  v11 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  MEMORY[0x23EEF3850](v10);
  v7 = v10[0];
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

  result = sub_23D9512D8(v7);
  v7 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v6 < v7[2])
  {
    v9 = sub_23D9D8ED4();
    (*(*(v9 - 8) + 24))(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v6, a1, v9);
    v10[0] = v7;
    return sub_23D9DA564();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_23D97F3E0@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6108, &qword_23D9DFE70);
  result = sub_23D9DA3B4();
  *a1 = v3;
  return result;
}

uint64_t sub_23D97F44C(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5FA8, &qword_23D9DFB18);
  sub_23D9DA564();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6108, &qword_23D9DFE70);
  return sub_23D9DA3C4();
}

uint64_t objectdestroy_20Tm(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(v2[4]);

  a2(v2[6]);

  a1(v2[8]);

  return swift_deallocObject();
}

unint64_t sub_23D97F5D4()
{
  result = qword_27E2F6120;
  if (!qword_27E2F6120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5FA8, &qword_23D9DFB18);
    sub_23D91F01C(&qword_27E2F6128, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83960]);
    sub_23D91F01C(&qword_27E2F6130, &qword_27E2F5FD0, &qword_23D9DFB60, MEMORY[0x277D83980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6120);
  }

  return result;
}

unint64_t sub_23D97F6C0()
{
  result = qword_27E2F6140;
  if (!qword_27E2F6140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5F58, &qword_23D9DFAD8);
    sub_23D9769D4(&qword_27E2F6148, MEMORY[0x277CE6790], MEMORY[0x277CE6798]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6140);
  }

  return result;
}

uint64_t sub_23D97F774(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXSUIOpenEndedEffectsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D97BAF0(a1, a2, v6);
}

uint64_t sub_23D97F7F4(uint64_t a1)
{
  v3 = *(type metadata accessor for AXSUIOpenEndedEffectsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D97BC4C(a1, v4);
}

uint64_t sub_23D97F8D8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8);

  return sub_23D97B420(a1);
}

uint64_t sub_23D97F980()
{

  return swift_deallocObject();
}

void *sub_23D97F9D0@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_23D97EF08(*a1, v2[2], v2[3], v2[4], v2[5]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_23D97FA08()
{

  return swift_deallocObject();
}

uint64_t sub_23D97FA74()
{

  return swift_deallocObject();
}

uint64_t sub_23D97FAAC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  v6[1] = a1[2];
  v7 = v3;
  v6[0] = v4;
  return v2(&v7, v6);
}

unint64_t sub_23D97FAF4()
{
  result = qword_27E2F6180;
  if (!qword_27E2F6180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6178, &qword_23D9DFF58);
    sub_23D97FB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6180);
  }

  return result;
}

unint64_t sub_23D97FB78()
{
  result = qword_27E2F6188;
  if (!qword_27E2F6188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6190, &qword_23D9DFF60);
    sub_23D97FC04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6188);
  }

  return result;
}

unint64_t sub_23D97FC04()
{
  result = qword_27E2F6198;
  if (!qword_27E2F6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6198);
  }

  return result;
}

uint64_t objectdestroy_131Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_105Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[10];
  v4 = sub_23D9D8ED4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

double sub_23D97FE3C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8) - 8);
  *&result = sub_23D97B6E0(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), a1).n128_u64[0];
  return result;
}

uint64_t sub_23D97FED8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23D9D8EB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23D97FF60(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_153Tm()
{
  v1 = *(type metadata accessor for AXSUIAudioEffectConfigurationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8) + 32);
  v4 = sub_23D9D8ED4();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);
  v5(v2 + *(v6 + 28), v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);

  return swift_deallocObject();
}

uint64_t sub_23D98016C()
{
  v1 = *(type metadata accessor for AXSUIAudioEffectConfigurationView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23D978DD0(v2);
}

void *sub_23D9801CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);

  return sub_23D97D51C();
}

uint64_t objectdestroy_143Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F58, &qword_23D9DFAD8) + 32);
  v4 = sub_23D9D8ED4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2 + v3, v4);
  v5(v0 + v2 + v1[9], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F68, &qword_23D9DFAE8);

  return swift_deallocObject();
}

uint64_t sub_23D9803B4(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5F60, &qword_23D9DFAE0);

  return sub_23D97D580(a1);
}

uint64_t sub_23D980434@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23D9D8E54();
  *a2 = result;
  return result;
}

unint64_t sub_23D98048C()
{
  result = qword_27E2F61F0;
  if (!qword_27E2F61F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F61F0);
  }

  return result;
}

void View.axSpecifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  KeyPath = swift_getKeyPath();
  v10 = 0;

  MEMORY[0x23EEF34C0](v8, a3, &type metadata for AXSUISpecifierModifier, a4);
  v6 = KeyPath;
  v7 = v10;

  sub_23D98504C(v6, v7);
}

uint64_t sub_23D9805F8()
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();
}

uint64_t sub_23D9806A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  *a2 = *(v3 + qword_27E2F62B0);
}

uint64_t sub_23D980784(uint64_t a1)
{
  v3 = qword_27E2F62B0;
  if (sub_23D990E24(*(v1 + qword_27E2F62B0), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();
  }
}

uint64_t sub_23D9808D0()
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v1 = *(v0 + qword_27E2F6290);

  return v1;
}

uint64_t sub_23D98098C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v4 = *(v3 + qword_27E2F6290 + 8);
  *a2 = *(v3 + qword_27E2F6290);
  a2[1] = v4;
}

uint64_t sub_23D980A44(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27E2F6290);
  v6 = *(v2 + qword_27E2F6290 + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_23D9DAFC4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23D980BC0()
{
  v0 = sub_23D9D8834();
  v1 = sub_23D9D8854();
  sub_23D980A44(v1, v2);
  if (*(v0 + 16))
  {

    return sub_23D980784(v0);
  }

  else
  {
  }
}

uint64_t sub_23D980C44()
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  return *(v0 + qword_27E2F6220);
}

uint64_t sub_23D980CEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  *a2 = *(v3 + qword_27E2F6220);
  return result;
}

uint64_t sub_23D980D9C(uint64_t result)
{
  if (*(v1 + qword_27E2F6220) == (result & 1))
  {
    *(v1 + qword_27E2F6220) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();
  }

  return result;
}

uint64_t sub_23D980EB4(uint64_t result)
{
  if (*(v1 + qword_27E2F6220) == (result & 1))
  {
    *(v1 + qword_27E2F6220) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();
  }

  return result;
}

void sub_23D980FCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_23D980EB4(a3);
}

BOOL sub_23D981020(void *a1)
{
  v2 = sub_23D9D8FE4();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D8FB4();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D9D8FC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v26 - v14;
  v16 = [a1 traitCollection];
  sub_23D9DAD34();

  (*(v9 + 104))(v11, *MEMORY[0x277D40278], v8);
  sub_23D9850BC(&qword_27E2F57F8, MEMORY[0x277D40290], MEMORY[0x277D402C8]);
  sub_23D9DA964();
  sub_23D9DA964();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v15, v8);
  v19 = v30;
  v18 = v31;
  if (v31 == v30)
  {
    type metadata accessor for AXSUIPreferenceController.ReferenceHolder(0);
    v20 = swift_allocObject();
    v20[2] = 0;
    sub_23D9D8A44();
    v21 = v26;
    v22 = v26;
    sub_23D981C74(v21);
    MEMORY[0x28223BE20](v23);
    *(&v26 - 2) = v20;
    *(&v26 - 1) = v22;
    sub_23D985174();
    sub_23D9D8FA4();
    v24 = [a1 traitCollection];
    sub_23D9DAD24();

    sub_23D9850BC(&qword_27E2F6250, MEMORY[0x277D40260], MEMORY[0x277D40268]);
    sub_23D9D8FD4();

    (*(v28 + 8))(v4, v29);
    (*(v27 + 8))(v7, v5);
  }

  return v18 == v19;
}

uint64_t sub_23D98142C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_23D981020(v4);

  return a1 & 1;
}

id sub_23D98147C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_27E2F62B0) = MEMORY[0x277D84F90];
  v5 = (v2 + qword_27E2F6290);
  *v5 = 0;
  v5[1] = 0;
  *(v2 + qword_27E2F6220) = 0;
  *(v2 + qword_27E2F6260) = 0;
  *(v2 + qword_27E2F6270) = 0;
  *(v2 + qword_27E2F6278) = 0;
  sub_23D9D8A44();
  type metadata accessor for AXSUIPreferenceController.ReferenceHolder(0);
  *(swift_allocObject() + 16) = 0;
  sub_23D9D8A44();
  v6 = (v2 + qword_27E2F62B8);
  *v6 = a1;
  v6[1] = a2;
  sub_23D985174();
  swift_retain_n();

  sub_23D9DA4D4();
  v7 = sub_23D9D9AF4();
  v8 = v7;
  sub_23D981C74(v7);

  return v8;
}

void sub_23D9815C8(void *a1)
{
  v2 = v1;
  v4 = qword_27E2F6260;
  v5 = *(v1 + qword_27E2F6260);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23D9866FC(0, &qword_27E2F6268, 0x277D3FAB8);
  v6 = v5;
  v7 = a1;
  v8 = sub_23D9DAD64();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_23D981760(void *a1)
{
  v2 = v1;
  v4 = qword_27E2F6278;
  v5 = *&v1[qword_27E2F6278];
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23D9866FC(0, &qword_27E2F6420, 0x277D3FAD8);
  v6 = v5;
  v7 = a1;
  v8 = sub_23D9DAD64();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *&v2[v4];
LABEL_8:
  *&v2[v4] = a1;
  v11 = v7;

  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v12 = *&v2[v4];
  if (v12)
  {
    v13 = [v12 name];
  }

  else
  {
    v13 = 0;
  }

  [v2 setTitle_];
}

id AXSUIPreferenceController.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = objc_allocWithZone(type metadata accessor for AXSUIPreferenceController(0));
  return sub_23D98147C(sub_23D985200, v8);
}

uint64_t sub_23D981A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10(v7);
  v11 = sub_23D964D1C(v9, a3, a4);
  (*(v6 + 8))(v9, a3);
  return v11;
}

void *sub_23D981B14()
{
  swift_getKeyPath();
  sub_23D9850BC(&qword_27E2F63B0, type metadata accessor for AXSUIPreferenceController.ReferenceHolder, &unk_23D9E0474);
  sub_23D9D8A14();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_23D981BBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D9850BC(&qword_27E2F63B0, type metadata accessor for AXSUIPreferenceController.ReferenceHolder, &unk_23D9E0474);
  sub_23D9D8A14();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_23D981C74(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&qword_27E2F63B0, type metadata accessor for AXSUIPreferenceController.ReferenceHolder, &unk_23D9E0474);
    sub_23D9D8A04();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for AXSUIPreferenceController(0);
  v5 = v4;
  v6 = a1;
  v7 = sub_23D9DAD64();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_23D981DF4()
{
  v1 = OBJC_IVAR____TtCC23AccessibilitySettingsUI25AXSUIPreferenceController15ReferenceHolder___observationRegistrar;
  v2 = sub_23D9D8A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_23D981E98(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A04();
}

id sub_23D981F78@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_23D98203C(char *a1, void *a2)
{
  v3 = qword_27E2F6278;
  v4 = *&a1[qword_27E2F6278];
  *&a1[qword_27E2F6278] = a2;
  v5 = a2;

  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v6 = *&a1[v3];
  if (v6)
  {
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  [a1 setTitle_];
}

void sub_23D982138(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6258, &unk_23D9E00A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_23D9D8864();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    return;
  }

  v17[1] = 1752457584;
  v17[2] = 0xE400000000000000;
  sub_23D9DAE24();
  if (!*(a1 + 16) || (v11 = sub_23D95EAA8(v18), (v12 & 1) == 0))
  {
    v13 = sub_23D939DE0(v18);
LABEL_9:
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  sub_23D939E34(*(a1 + 56) + 32 * v11, v19);
  sub_23D939DE0(v18);
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_23D9D8844();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v13 = sub_23D91F344(v6, &qword_27E2F6258, &unk_23D9E00A0);
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_23D9D8834();
  v15 = sub_23D9D8854();
  sub_23D980A44(v15, v16);
  if (*(v14 + 16))
  {
    sub_23D980784(v14);
    v13 = (*(v8 + 8))(v10, v7);
    if (!a2)
    {
      return;
    }

LABEL_10:
    a2(v13);
    return;
  }

  (*(v8 + 8))(v10, v7);

  if (a2)
  {
    goto LABEL_10;
  }
}

uint64_t sub_23D9823E0(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  if (a3)
  {
    a3 = sub_23D9DA854();
  }

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_23D986554;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = a1;
  sub_23D982138(a3, v8);
  sub_23D91F064(v8, v7);
}

void sub_23D9824C8(void *a1)
{
  v2 = a1;

  sub_23D981760(a1);
}

void sub_23D982500(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_23D981760(a3);
}

uint64_t sub_23D98255C(uint64_t a1)
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A04();
}

void sub_23D982624(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  v5 = a3;
  v6 = a1;
  sub_23D9D8A04();
}

void sub_23D982714(void *a1)
{
  v2 = v1;
  v4 = qword_27E2F6260;
  v5 = *(v1 + qword_27E2F6260);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_10;
    }

    v6 = a1;
    goto LABEL_8;
  }

  if (!a1)
  {
    v6 = 0;
    goto LABEL_8;
  }

  sub_23D9866FC(0, &qword_27E2F6268, 0x277D3FAB8);
  v6 = a1;
  v7 = v5;
  v8 = sub_23D9DAD64();

  if ((v8 & 1) == 0)
  {
LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();

    return;
  }

  v9 = *(v2 + v4);
LABEL_10:
  *(v2 + v4) = a1;
}

void sub_23D9828C0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_23D9815C8(a3);
}

void *sub_23D98296C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void *sub_23D982A28(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  v6 = a1;
  sub_23D9D8A14();

  v7 = *&v6[*a4];
  v8 = v7;

  return v7;
}

uint64_t sub_23D982AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_23D9DADA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return sub_23D91F344(v4, &qword_27E2F6440, &qword_23D9DD180);
}

double sub_23D982B60@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_23D982C0C()
{

  v1 = qword_27E2F6228;
  v2 = sub_23D9D8A54();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id AXSUIPreferenceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSUIPreferenceController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D982D14(uint64_t a1)
{

  v2 = qword_27E2F6228;
  v3 = sub_23D9D8A54();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

void sub_23D982DE8(void *a1)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_23D982E20(uint64_t a1, void *a2)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_23D982E58(void *a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6378, &qword_23D9E0550);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (&v52 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6380, &qword_23D9E0558);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6388, &qword_23D9E0560);
  MEMORY[0x28223BE20](v60);
  v59 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6390, &qword_23D9E0568);
  v56 = *(v13 - 8);
  v57 = v13;
  MEMORY[0x28223BE20](v13);
  v55 = &v52 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6398, &qword_23D9E0570);
  v15 = MEMORY[0x28223BE20](v53);
  v54 = &v52 - v16;
  v17 = a2(v15);
  v18 = v8 + *(v6 + 44);
  type metadata accessor for AXSUINavigationManager(0);
  v19 = swift_allocObject();
  *(v19 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  v61 = v19;
  sub_23D9DA3A4();
  v20 = v63;
  *v18 = v62;
  *(v18 + 1) = v20;
  *(v18 + 2) = swift_getKeyPath();
  v18[24] = 0;
  v21 = type metadata accessor for AXNavigationSink(0);
  v22 = *(v21 + 24);
  *&v18[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v23 = *(v21 + 28);
  *&v18[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  swift_storeEnumTagMultiPayload();
  *v8 = v17;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v62 = a1;
  sub_23D9850BC(&qword_27E2F63B0, type metadata accessor for AXSUIPreferenceController.ReferenceHolder, &unk_23D9E0474);
  sub_23D9D8A14();

  v25 = a1[2];
  if (!v25)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_23D92A2BC(v8, v11, &qword_27E2F6378, &qword_23D9E0550);
  v26 = &v11[*(v9 + 36)];
  *v26 = KeyPath;
  v26[1] = v25;
  v27 = swift_getKeyPath();
  swift_getKeyPath();
  v62 = a1;
  v28 = v25;
  sub_23D9D8A14();

  v29 = a1[2];
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  swift_getKeyPath();
  v62 = v29;
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  v30 = v29;
  sub_23D9D8A14();

  v31 = *&v30[qword_27E2F6278];
  v32 = v31;

  v33 = v11;
  v34 = v59;
  sub_23D92A2BC(v33, v59, &qword_27E2F6380, &qword_23D9E0558);
  v35 = (v34 + *(v60 + 36));
  *v35 = v27;
  v35[1] = v31;
  swift_getKeyPath();
  v62 = a1;
  sub_23D9D8A14();

  v36 = a1[2];
  if (!v36)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_getKeyPath();
  v62 = v36;
  v37 = v36;
  sub_23D9D8A14();

  v38 = *&v37[qword_27E2F6278];
  v39 = v38;

  if (!v38)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = [v39 name];

  if (v40)
  {
    v41 = sub_23D9DA8B4();
    v43 = v42;

    v62 = v41;
    v63 = v43;
    sub_23D98601C();
    sub_23D91B650();
    v44 = v55;
    sub_23D9DA064();

    sub_23D91F344(v34, &qword_27E2F6388, &qword_23D9E0560);
    v45 = swift_getKeyPath();
    v46 = v54;
    (*(v56 + 32))(v54, v44, v57);
    v47 = &v46[*(v53 + 36)];
    *v47 = v45;
    v47[8] = 0;
    v48 = swift_getKeyPath();
    v49 = v46;
    v50 = v58;
    sub_23D98624C(v49, v58);
    v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6400, &unk_23D9E06C0) + 36);
    *v51 = v48;
    *(v51 + 8) = 0;
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_23D983524@<X0>(void *a1@<X8>)
{
  sub_23D985430();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D983574(id *a1)
{
  v1 = *a1;
  sub_23D985430();
  v2 = v1;
  return sub_23D9D9974();
}

uint64_t sub_23D9835F0(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_23D9D9964();
  return v3;
}

void View.axSpecifierScrollModifierHook()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = 0;
  MEMORY[0x23EEF34C0](&KeyPath, a1, &type metadata for AXSUISpecifierScrollModifier, a2);
  sub_23D98504C(KeyPath, v5);
}

id AXSUISpecifierScrollModifier.body(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6288, &qword_23D9E0128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  (*(v6 + 16))(&v17 - v9, a1, v5, v8);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v10, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v11;
  *(v15 + 8) = v12;
  *a2 = sub_23D9853C0;
  a2[1] = v14;
  return sub_23D9853C4(v11, v12);
}

id sub_23D983860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_23D9D9704();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v14 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  a4 &= 1u;
  *(v15 + 24) = a4;
  (*(v11 + 32))(v15 + v14, &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6288, &qword_23D9E0128);
  (*(*(v16 - 8) + 16))(a5, a2, v16);
  v17 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64B0, &qword_23D9E0738) + 36));
  *v17 = sub_23D986A28;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return sub_23D9853C4(a3, a4);
}

void sub_23D983A20(void *a1, char a2)
{
  v4 = sub_23D9D9954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
  }

  else
  {

    sub_23D9DACD4();
    v9 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(a1, 0);
    (*(v5 + 8))(v7, v4);
    v8 = v12[0];
  }

  swift_getKeyPath();
  v12[0] = v8;
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v10 = *&v8[qword_27E2F6290];
  v11 = *&v8[qword_27E2F6290 + 8];

  if (v11)
  {
    v12[0] = v10;
    v12[1] = v11;
    sub_23D9DA7E4();
    sub_23D9D96F4();
  }
}

id sub_23D983C3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6288, &qword_23D9E0128);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  (*(v6 + 16))(&v17 - v9, a1, v5, v8);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v10, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v11;
  *(v15 + 8) = v12;
  *a2 = sub_23D986D2C;
  a2[1] = v14;
  return sub_23D9853C4(v11, v12);
}

id AXSUISpecifierModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D9D9954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  LODWORD(v12) = *(v2 + 24);
  if (v12 == 1)
  {
    v13 = v11;
  }

  else
  {

    sub_23D9DACD4();
    v14 = sub_23D9D9D24();
    v27 = v9;
    v15 = v11;
    v16 = v10;
    v17 = v12;
    v12 = a2;
    v18 = a1;
    v19 = v14;
    sub_23D9D91B4();

    a1 = v18;
    a2 = v12;
    LOBYTE(v12) = v17;
    v10 = v16;
    v11 = v15;
    v9 = v27;
    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(v11, 0);
    (*(v6 + 8))(v8, v5);
    v13 = v28;
  }

  swift_getKeyPath();
  v28 = v13;
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v21 = *&v13[qword_27E2F6290];
  v20 = *&v13[qword_27E2F6290 + 8];

  if (v20)
  {
    if (v21 == v10 && v20 == v9)
    {

      v22 = 1;
    }

    else
    {
      v22 = sub_23D9DAFC4();
    }
  }

  else
  {

    v22 = 0;
  }

  sub_23D9840D0(v22 & 1, a1);
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6298, &qword_23D9E0158) + 52));
  *v23 = v10;
  v23[1] = v9;
  v24 = swift_allocObject();
  *(v24 + 16) = v10;
  *(v24 + 24) = v9;
  *(v24 + 32) = v11;
  *(v24 + 40) = v12;
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F62A0, &qword_23D9E0160) + 36));
  *v25 = sub_23D985418;
  v25[1] = v24;
  v25[2] = 0;
  v25[3] = 0;

  return sub_23D9853C4(v11, v12);
}

uint64_t sub_23D9840D0(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6468, &qword_23D9E0710);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6470, &qword_23D9E0718);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  if (a1)
  {
    v10 = [objc_opt_self() systemGray3Color];
    v11 = sub_23D9DA244();
    v12 = sub_23D9DA754();
    v17[0] = v11;
    v17[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64A0, &qword_23D9E0730);
    sub_23D91F01C(&qword_27E2F64A8, &qword_27E2F64A0, &qword_23D9E0730, MEMORY[0x277CDF8F8]);
    v13 = sub_23D9DA4D4();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6478, &qword_23D9E0720);
    (*(*(v14 - 8) + 16))(v9, a2, v14);
    *&v9[*(v7 + 36)] = v13;
    sub_23D9868F0(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_23D98680C();
    sub_23D91F01C(&qword_27E2F6488, &qword_27E2F6478, &qword_23D9E0720, MEMORY[0x277CE04B8]);
    sub_23D9D9B14();
    return sub_23D91F344(v9, &qword_27E2F6470, &qword_23D9E0718);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6478, &qword_23D9E0720);
    (*(*(v16 - 8) + 16))(v6, a2, v16);
    swift_storeEnumTagMultiPayload();
    sub_23D98680C();
    sub_23D91F01C(&qword_27E2F6488, &qword_27E2F6478, &qword_23D9E0720, MEMORY[0x277CE04B8]);
    return sub_23D9D9B14();
  }
}

void sub_23D9843E8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v42 = a2;
  v7 = sub_23D9DA7F4();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v36 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_23D9DA814();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = sub_23D9DA834();
  v35 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v33[-v15];
  v17 = sub_23D9D9954();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = a4;
  if (a4)
  {
    v21 = a3;
  }

  else
  {

    sub_23D9DACD4();
    v22 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(a3, 0);
    (*(v18 + 8))(v20, v17);
    v21 = aBlock[0];
  }

  swift_getKeyPath();
  aBlock[0] = v21;
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v24 = *&v21[qword_27E2F6290];
  v23 = *&v21[qword_27E2F6290 + 8];

  v25 = v42;
  if (v23)
  {
    if (v24 == a1 && v23 == v42)
    {
    }

    else
    {
      v26 = sub_23D9DAFC4();

      if ((v26 & 1) == 0)
      {
        return;
      }
    }

    sub_23D9866FC(0, &qword_27E2F6448, 0x277D85C78);
    v27 = sub_23D9DAD14();
    sub_23D9DA824();
    sub_23D9DA844();
    v35 = *(v35 + 8);
    (v35)(v13, v41);
    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 24) = v25;
    *(v28 + 32) = a3;
    v29 = v34 & 1;
    *(v28 + 40) = v34 & 1;
    aBlock[4] = sub_23D986788;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D9A0AF4;
    aBlock[3] = &block_descriptor_1;
    v30 = _Block_copy(aBlock);

    sub_23D9853C4(a3, v29);

    sub_23D9DA804();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D9850BC(&qword_27E2F6450, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6458, &qword_23D9E0708);
    sub_23D91F01C(&qword_27E2F6460, &qword_27E2F6458, &qword_23D9E0708, MEMORY[0x277D83970]);
    v31 = v36;
    v32 = v40;
    sub_23D9DADD4();
    MEMORY[0x23EEF4000](v16, v11, v31, v30);
    _Block_release(v30);

    (*(v39 + 8))(v31, v32);
    (*(v37 + 8))(v11, v38);
    (v35)(v16, v41);
  }
}

uint64_t sub_23D9849E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_23D9DA744();
  sub_23D9D9594();
}

void sub_23D984A58(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v6 = sub_23D9D9954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v10 = a3;
  }

  else
  {

    sub_23D9DACD4();
    v11 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(a3, 0);
    (*(v7 + 8))(v9, v6);
    v10 = v15;
  }

  v12 = &v10[qword_27E2F6290];
  if (*&v10[qword_27E2F6290 + 8])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v14 - 3) = 0;
    *(&v14 - 2) = 0;
    *(&v14 - 4) = v10;
    v15 = v10;
    sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
    sub_23D9D8A04();
  }

  else
  {
    *v12 = 0;
    *(v12 + 1) = 0;
  }
}

id sub_23D984CA0()
{
  sub_23D985430();
  sub_23D9D9964();
  result = v2;
  if (!v2)
  {
    v1 = objc_allocWithZone(type metadata accessor for AXSUIPreferenceController(0));
    return sub_23D98147C(sub_23D981A1C, 0);
  }

  return result;
}

uint64_t sub_23D984D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D9863A8();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.psSpecifier.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_23D985368();
  sub_23D9D9964();
  return sub_23D984DD4;
}

void sub_23D984DD4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_23D9D9974();
    v5 = *a1;
  }

  else
  {
    sub_23D9D9974();
  }
}

uint64_t sub_23D984E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23D9862BC();

  return MEMORY[0x282130D38](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.axBuddySetupMode.getter()
{
  sub_23D985430();
  sub_23D9D9964();
  v0 = v4;
  if (!v4)
  {
    v1 = objc_allocWithZone(type metadata accessor for AXSUIPreferenceController(0));
    v0 = sub_23D98147C(sub_23D981A1C, 0);
  }

  swift_getKeyPath();
  sub_23D9850BC(&unk_27E2F6230, type metadata accessor for AXSUIPreferenceController, &protocol conformance descriptor for AXSUIPreferenceController);
  sub_23D9D8A14();

  v2 = v0[qword_27E2F6220];

  return v2;
}

id sub_23D984FCC@<X0>(void *a1@<X8>)
{
  sub_23D985430();
  sub_23D9D9964();
  result = v4;
  if (!v4)
  {
    v3 = objc_allocWithZone(type metadata accessor for AXSUIPreferenceController(0));
    result = sub_23D98147C(sub_23D981A1C, 0);
  }

  *a1 = result;
  return result;
}

void sub_23D98504C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_23D9850BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D985124@<X0>(void *a1@<X8>)
{
  v2 = (*(v1 + 24) + qword_27E2F62B8);
  v4 = *v2;
  v3 = v2[1];
  *a1 = *(v1 + 16);
  a1[1] = v4;
  a1[2] = v3;
}

unint64_t sub_23D985174()
{
  result = qword_27E2F6248;
  if (!qword_27E2F6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6248);
  }

  return result;
}

uint64_t sub_23D9851C8()
{

  return swift_deallocObject();
}

void sub_23D985238()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + qword_27E2F6270);
  *(v1 + qword_27E2F6270) = v2;
  v4 = v2;
}

void sub_23D9852A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23D9815C8(v1);
}

void sub_23D9852D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + qword_27E2F6260);
  *(v1 + qword_27E2F6260) = v2;
  v4 = v2;
}

void sub_23D985338(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23D981760(v1);
}

unint64_t sub_23D985368()
{
  result = qword_27E2F6280;
  if (!qword_27E2F6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6280);
  }

  return result;
}

id sub_23D9853C4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_23D9853D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D980A44(v1, v2);
}

unint64_t sub_23D985430()
{
  result = qword_27E2F6C60;
  if (!qword_27E2F6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6C60);
  }

  return result;
}

uint64_t sub_23D9854C4(uint64_t a1)
{
  result = sub_23D9D8A54();
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

uint64_t sub_23D985AA4(uint64_t a1)
{
  result = sub_23D9D8A54();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
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

uint64_t sub_23D985B60(uint64_t a1, unsigned int a2)
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

uint64_t sub_23D985BA8(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23D985C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23D985C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D985D10()
{
  result = qword_27E2F6358;
  if (!qword_27E2F6358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6358);
  }

  return result;
}

unint64_t sub_23D985D68()
{
  result = qword_27E2F6360;
  if (!qword_27E2F6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E2F62A0, &qword_23D9E0160);
    sub_23D91F01C(&qword_27E2F6368, &qword_27E2F6298, &qword_23D9E0158, MEMORY[0x277CE1150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6360);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx021AccessibilitySettingsB028AXSUISpecifierScrollModifierVGAaBHPxAaBHD1__AgA0cJ0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_23D9D96C4();
  a3();
  return swift_getWitnessTable();
}

uint64_t sub_23D985ED0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23D985F18(uint64_t result, int a2, int a3)
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

void *sub_23D985F94@<X0>(void *a1@<X8>)
{
  sub_23D985430();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

void sub_23D985FEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_23D981C74(v1);
}

unint64_t sub_23D98601C()
{
  result = qword_27E2F63B8;
  if (!qword_27E2F63B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6388, &qword_23D9E0560);
    sub_23D9860D4();
    sub_23D91F01C(&qword_27E2F63E8, &unk_27E2F63F0, &qword_23D9E0690, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F63B8);
  }

  return result;
}

unint64_t sub_23D9860D4()
{
  result = qword_27E2F63C0;
  if (!qword_27E2F63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6380, &qword_23D9E0558);
    sub_23D98618C();
    sub_23D91F01C(&qword_27E2F63D8, &qword_27E2F63E0, &qword_23D9E0688, MEMORY[0x277CE0870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F63C0);
  }

  return result;
}

unint64_t sub_23D98618C()
{
  result = qword_27E2F63C8;
  if (!qword_27E2F63C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6378, &qword_23D9E0550);
    sub_23D9850BC(&qword_27E2F63D0, type metadata accessor for AXNavigationSink, &unk_23D9DEED4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F63C8);
  }

  return result;
}

uint64_t sub_23D98624C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6398, &qword_23D9E0570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D9862BC()
{
  result = qword_27E2F6408;
  if (!qword_27E2F6408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6410, &qword_23D9E08C0);
    sub_23D986340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6408);
  }

  return result;
}

unint64_t sub_23D986340()
{
  result = qword_27E2F6418;
  if (!qword_27E2F6418)
  {
    sub_23D9866FC(255, &qword_27E2F6420, 0x277D3FAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6418);
  }

  return result;
}

unint64_t sub_23D9863A8()
{
  result = qword_27E2F6428;
  if (!qword_27E2F6428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6430, &unk_23D9E06D0);
    sub_23D9850BC(&qword_27E2F6438, type metadata accessor for AXSUIPreferenceController, MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6428);
  }

  return result;
}

void sub_23D98645C(uint64_t a1)
{
  *(v1 + qword_27E2F62B0) = MEMORY[0x277D84F90];
  v2 = (v1 + qword_27E2F6290);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_27E2F6220) = 0;
  *(v1 + qword_27E2F6260) = 0;
  *(v1 + qword_27E2F6270) = 0;
  *(v1 + qword_27E2F6278) = 0;
  sub_23D9D8A44();
  sub_23D9DAF24();
  __break(1u);
}

uint64_t sub_23D98651C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6288, &qword_23D9E0128);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  sub_23D98504C(*(v0 + v4), *(v0 + v4 + 8));

  return swift_deallocObject();
}

id sub_23D98663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6288, &qword_23D9E0128) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_23D983860(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_23D9866FC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  sub_23D98504C(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D98680C()
{
  result = qword_27E2F6480;
  if (!qword_27E2F6480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6470, &qword_23D9E0718);
    sub_23D91F01C(&qword_27E2F6488, &qword_27E2F6478, &qword_23D9E0720, MEMORY[0x277CE04B8]);
    sub_23D91F01C(&qword_27E2F6490, &qword_27E2F6498, &qword_23D9E0728, MEMORY[0x277CE04A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6480);
  }

  return result;
}

uint64_t sub_23D9868F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6470, &qword_23D9E0718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D986960()
{
  v1 = sub_23D9D9704();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  sub_23D98504C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_23D986A28()
{
  sub_23D9D9704();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_23D983A20(v1, v2);
}

void sub_23D986AAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_23D986AE4()
{
  *(*(v0 + 16) + qword_27E2F62B0) = *(v0 + 24);
}

uint64_t sub_23D986B28()
{
  v1 = v0[4];
  v2 = (v0[2] + qword_27E2F6290);
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_23D986B78()
{
  result = qword_27E2F64B8;
  if (!qword_27E2F64B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6400, &unk_23D9E06C0);
    sub_23D986C04();
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F64B8);
  }

  return result;
}

unint64_t sub_23D986C04()
{
  result = qword_27E2F64C0;
  if (!qword_27E2F64C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6398, &qword_23D9E0570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F6388, &qword_23D9E0560);
    sub_23D98601C();
    sub_23D91B650();
    swift_getOpaqueTypeConformance2();
    sub_23D985D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F64C0);
  }

  return result;
}

void *sub_23D986D8C@<X0>(void *a1@<X8>)
{
  sub_23D985368();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D986DDC(id *a1)
{
  v1 = *a1;
  sub_23D985368();
  v2 = v1;
  return sub_23D9D9974();
}

uint64_t LiveSpeechVoiceSelectionView.keyboard.getter()
{
  if (!*(v0 + 32))
  {
    v2 = sub_23D986F6C();
    if (v2)
    {
      v3 = v2;
      v4 = sub_23D9DA8A4();
      v5 = [v3 propertyForKey_];

      if (v5)
      {
        sub_23D9DADA4();
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = 0u;
        v8 = 0u;
      }

      v9 = v7;
      v10 = v8;
      if (*(&v8 + 1))
      {
        if (swift_dynamicCast())
        {
          v1 = v7;
          goto LABEL_13;
        }

LABEL_12:
        v1 = 28261;
        goto LABEL_13;
      }
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    sub_23D91F344(&v9, &qword_27E2F6440, &qword_23D9DD180);
    goto LABEL_12;
  }

  v1 = *(v0 + 24);
LABEL_13:

  return v1;
}

void *sub_23D986F6C()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_23D9DACD4();
    v7 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D98504C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t LiveSpeechVoiceSelectionView.keyboard.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*LiveSpeechVoiceSelectionView.keyboard.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = LiveSpeechVoiceSelectionView.keyboard.getter();
  a1[1] = v3;
  return sub_23D98713C;
}

uint64_t sub_23D98713C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {

    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
  }

  else
  {

    *(v3 + 24) = v4;
    *(v3 + 32) = v2;
  }

  return result;
}

uint64_t LiveSpeechVoiceSelectionView.init(keyboardLanguage:selectionBinding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  sub_23D91F2DC(a3, a4 + *(v12 + 28), &qword_27E2F4760, &qword_23D9E0740);
  sub_23D9DAC94();
  v13 = MEMORY[0x23EEF3E90]();
  v14 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v15 = *&v13[v14];

  *(a4 + 8) = swift_getKeyPath();
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v16 = sub_23D9D8DA4();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_23D91F2DC(v11, v8, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(a3, &qword_27E2F4760, &qword_23D9E0740);
  result = sub_23D91F344(v11, &qword_27E2F5900, &unk_23D9DC640);
  *a4 = v15;
  v18 = v21;
  *(a4 + 24) = v20;
  *(a4 + 32) = v18;
  return result;
}

uint64_t LiveSpeechVoiceSelectionView.init(keyboardLanguage:selectionBinding:settings:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a4;
  v19 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  *(a5 + 8) = swift_getKeyPath();
  *(a5 + 16) = 0;
  v14 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  v15 = sub_23D9D8DA4();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_23D91F2DC(v13, v10, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(v13, &qword_27E2F5900, &unk_23D9DC640);
  result = sub_23D92A2BC(a3, a5 + *(v14 + 28), &qword_27E2F4760, &qword_23D9E0740);
  v17 = v19;
  *a5 = v18;
  *(a5 + 24) = a1;
  *(a5 + 32) = v17;
  return result;
}

uint64_t type metadata accessor for LiveSpeechVoiceSelectionView(uint64_t a1)
{
  result = qword_27E2F6500;
  if (!qword_27E2F6500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_23D987598@<X0>(void *a1@<X8>)
{
  sub_23D985368();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

void LiveSpeechVoiceSelectionView.init()(uint64_t a1@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v13);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  *(a1 + 8) = swift_getKeyPath();
  *(a1 + 16) = 0;
  type metadata accessor for LiveSpeechVoiceSelectionView(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = sub_23D9D8DA4();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  sub_23D91F2DC(v6, v3, &qword_27E2F5900, &unk_23D9DC640);
  sub_23D9DA3A4();
  sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
  v8(v6, 1, 1, v7);
  sub_23D9DA5A4();
  sub_23D91F344(v6, &qword_27E2F5900, &unk_23D9DC640);
  v9 = sub_23D9DAC94();
  v10 = MEMORY[0x23EEF3E90](v9);
  v11 = *MEMORY[0x277CE7910];
  swift_beginAccess();
  v12 = *&v10[v11];

  *a1 = v12;
}

void *sub_23D9877E0()
{
  type metadata accessor for LiveSpeechVoiceSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  return sub_23D9DA3B4();
}

uint64_t sub_23D987834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  sub_23D91F2DC(a1, &v16[-v12], &qword_27E2F5900, &unk_23D9DC640);

  v14 = sub_23D9DAB64();
  sub_23D959778(v13, a4, a5);
  v14(v16, 0);
  type metadata accessor for LiveSpeechVoiceSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3B4();
  sub_23D91F2DC(v13, v10, &qword_27E2F5900, &unk_23D9DC640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  sub_23D9DA564();
  return sub_23D91F344(v13, &qword_27E2F5900, &unk_23D9DC640);
}

uint64_t sub_23D9879D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v0 - 8);
  v27 = &v23 - v1;
  v2 = sub_23D9D89A4();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D89C4();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D9D8954();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v28 = MEMORY[0x277D84FA0];
  if (LiveSpeechVoiceSelectionView.keyboard.getter() == 7107949 && v17 == 0xE300000000000000)
  {
  }

  else
  {
    v18 = sub_23D9DAFC4();

    if ((v18 & 1) == 0)
    {
      LiveSpeechVoiceSelectionView.keyboard.getter();
      sub_23D9D8974();
      sub_23D9D89B4();
      (*(v23 + 8))(v7, v5);
      v19 = v27;
      sub_23D9D8994();
      (*(v24 + 8))(v4, v25);
      v20 = v26;
      if ((*(v26 + 48))(v19, 1, v8) == 1)
      {
        sub_23D91F344(v19, &qword_27E2F4210, &qword_23D9DBE60);
      }

      else
      {
        (*(v20 + 32))(v16, v19, v8);
        (*(v20 + 16))(v10, v16, v8);
        sub_23D93CAC4(v13, v10);
        v21 = *(v20 + 8);
        v21(v13, v8);
        v21(v16, v8);
      }
    }
  }

  return v28;
}

uint64_t LiveSpeechVoiceSelectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64C8, &qword_23D9E0770);
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v72 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64D0, &unk_23D9E0778);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v9 - 8);
  v68 = &v63 - v10;
  v11 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  *&v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v66);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = &v63 - v17;
  v18 = type metadata accessor for AXSUIVoiceSettings(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64D8, &qword_23D9E0788) - 8;
  MEMORY[0x28223BE20](v70);
  v69 = &v63 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3D4();
  v23 = LiveSpeechVoiceSelectionView.keyboard.getter();
  v25 = v24;
  v67 = v2;
  sub_23D98869C(v2, v13);
  v26 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  sub_23D988CA8(v13, v28 + v26, type metadata accessor for LiveSpeechVoiceSelectionView);
  v29 = (v28 + v27);
  *v29 = v23;
  v29[1] = v25;
  v30 = v64;
  sub_23D9DA524();

  sub_23D91F344(v15, &qword_27E2F4760, &qword_23D9E0740);
  v31 = sub_23D9D89C4();
  v32 = *(*(v31 - 8) + 56);
  v33 = v68;
  v32(v68, 1, 1, v31);
  *&v81 = sub_23D9879D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v66 = v84;
  v34 = &v21[v19[9]];
  LOBYTE(v79) = 0;
  v65 = v85;
  sub_23D9DA3A4();
  v35 = *(&v81 + 1);
  *v34 = v81;
  *(v34 + 1) = v35;
  sub_23D9D9C64();
  v36 = v19[12];
  v32(&v21[v36], 1, 1, v31);
  v37 = &v21[v19[14]];
  v38 = &v21[v19[15]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = &v21[v19[16]];
  LOBYTE(v79) = 0;
  sub_23D9DA3A4();
  v40 = *(&v81 + 1);
  *v39 = v81;
  *(v39 + 1) = v40;
  v41 = v19[17];
  v79 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *&v21[v41] = v81;
  sub_23D91F2DC(v30, v21, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v33, &v21[v36]);
  *&v21[v19[13]] = 85;
  v42 = &v21[v19[7]];
  *v42 = v66;
  *(v42 + 8) = v65;
  v43 = &v21[v19[11]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_23D9DA5A4();
  sub_23D91F344(v33, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v30, &qword_27E2F4760, &qword_23D9E0740);
  v44 = v82;
  v45 = v83;
  v46 = &v21[v19[8]];
  *v46 = v81;
  *(v46 + 2) = v44;
  *(v46 + 3) = v45;
  *v37 = 0;
  *(v37 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v48 = v69;
  sub_23D988CA8(v21, v69, type metadata accessor for AXSUIVoiceSettings);
  v49 = v48 + *(v70 + 44);
  *v49 = KeyPath;
  *(v49 + 8) = 0;
  v50 = v67;
  sub_23D9DAB84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64E0, &qword_23D9E07F8);
  sub_23D989344(&qword_27E2F64E8, MEMORY[0x277CE7908], MEMORY[0x277CE78F8]);
  sub_23D9D8E44();
  v51 = v72;
  sub_23D9D8DB4();

  LiveSpeechVoiceSelectionView.keyboard.getter();
  sub_23D9D8AE4();
  sub_23D9D8AD4();
  v52 = v71;
  sub_23D9D8DF4();

  (*(v76 + 8))(v51, v77);
  v53 = swift_getKeyPath();
  v54 = v73;
  v55 = v74;
  v56 = v75;
  (*(v74 + 16))(v73, v52, v75);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64F0, &qword_23D9E0828);
  v58 = v78;
  v59 = v78 + *(v57 + 36);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F64F8, &qword_23D9E0830);
  sub_23D98869C(v50, v59 + v60[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  sub_23D9D8E24();
  v61 = *(v55 + 8);
  v61(v54, v56);
  v61(v52, v56);
  *(v59 + v60[9]) = v53;
  *(v59 + v60[11]) = 1;
  return sub_23D92A2BC(v48, v58, &qword_27E2F64D8, &qword_23D9E0788);
}

uint64_t sub_23D98869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D988700()
{
  v1 = type metadata accessor for LiveSpeechVoiceSelectionView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_23D98504C(*(v2 + 8), *(v2 + 16));

  v3 = v2 + *(v1 + 28);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740) + 32);
  v5 = sub_23D9D8DA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v3 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v8 = v2 + *(v1 + 32);
  if (!v7(v8, 1, v5))
  {
    (*(v6 + 8))(v8, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);

  return swift_deallocObject();
}

uint64_t sub_23D988900(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LiveSpeechVoiceSelectionView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_23D987834(a1, a2, v2 + v6, v8, v9);
}

void *sub_23D9889B0()
{
  type metadata accessor for LiveSpeechVoiceSelectionView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  return sub_23D9DA3B4();
}

uint64_t sub_23D988A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_23D91F2DC(a1, &v9 - v6, &qword_27E2F5900, &unk_23D9DC640);
  type metadata accessor for LiveSpeechVoiceSelectionView(0);
  sub_23D91F2DC(v7, v4, &qword_27E2F5900, &unk_23D9DC640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
  sub_23D9DA3C4();
  return sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
}

uint64_t sub_23D988B2C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_23D9DA9B4();
  v2[4] = sub_23D9DA9A4();
  v4 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D988BC4, v4, v3);
}

uint64_t sub_23D988BC4()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_23D9D8DA4();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v2, v1, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_23D988CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D988D34@<X0>(uint64_t *a1@<X8>)
{
  result = LiveSpeechVoiceSelectionView.keyboard.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D988D60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_23D988DB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D988F08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4638, &unk_23D9E0790);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D989044(uint64_t a1)
{
  sub_23D9DAB84();
  if (v1 <= 0x3F)
  {
    sub_23D989194(319, &qword_27E2F6510, &qword_27E2F6410, &qword_23D9E08C0, MEMORY[0x277CDF470]);
    if (v2 <= 0x3F)
    {
      sub_23D95F008();
      if (v3 <= 0x3F)
      {
        sub_23D989194(319, &qword_27E2F6518, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE1200]);
        if (v4 <= 0x3F)
        {
          sub_23D989194(319, &qword_27E2F4660, &qword_27E2F5900, &unk_23D9DC640, MEMORY[0x277CE10B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23D989194(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23D9891FC()
{
  result = qword_27E2F6520;
  if (!qword_27E2F6520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F64F0, &qword_23D9E0828);
    sub_23D989288();
    sub_23D98938C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6520);
  }

  return result;
}

unint64_t sub_23D989288()
{
  result = qword_27E2F6528;
  if (!qword_27E2F6528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F64D8, &qword_23D9E0788);
    sub_23D989344(&qword_27E2F4718, type metadata accessor for AXSUIVoiceSettings, &protocol conformance descriptor for AXSUIVoiceSettings);
    sub_23D927AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6528);
  }

  return result;
}

uint64_t sub_23D989344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D98938C()
{
  result = qword_27E2F6530;
  if (!qword_27E2F6530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F64F8, &qword_23D9E0830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F6530);
  }

  return result;
}

uint64_t AXSUISystemDefaultVoiceSelectionCell.init(voiceTable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  LOBYTE(v27) = 0;
  sub_23D9DA3A4();
  v8 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v8;
  type metadata accessor for VoiceSelectionModel(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  v11 = sub_23D9D8DA4();
  v12 = *(*(v11 - 8) + 56);
  v12(v9 + v10, 1, 1, v11);
  v12(v9 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  v14 = sub_23D9D89C4();
  v15 = *(*(v14 - 8) + 56);
  v15(v9 + v13, 1, 1, v14);
  v15(v9 + v13, 1, 1, v14);
  *(v9 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceResolver) = 0;
  *(v9 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceTable) = 0;
  *(v9 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks) = MEMORY[0x277D84F90];
  sub_23D9D8A44();
  v27 = v9;
  sub_23D9DA3A4();
  v16 = v29;
  *(a2 + 24) = v28;
  *(a2 + 32) = v16;
  v17 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v18 = sub_23D9D8C74();
  v19 = *(*(v18 - 8) + 56);
  v19(v7, 1, 1, v18);
  v24 = v4;
  sub_23D91F2DC(v7, v4, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
  v20 = a2 + v17[8];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a2 + v17[9];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v17[10];
  *(a2 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  swift_storeEnumTagMultiPayload();
  v19(v7, 1, 1, v18);
  sub_23D91F2DC(v7, v24, &qword_27E2F4460, &qword_23D9DC2A0);
  sub_23D9DA3A4();
  result = sub_23D91F344(v7, &qword_27E2F4460, &qword_23D9DC2A0);
  *a2 = v26;
  return result;
}

uint64_t sub_23D9897D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23D91F2DC(a3, v22 - v9, qword_27E2F6C70, &unk_23D9E0A10);
  v11 = sub_23D9DA9F4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23D91F344(v10, qword_27E2F6C70, &unk_23D9E0A10);
  }

  else
  {
    sub_23D9DA9E4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23D9DA994();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23D9DA8F4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D91F344(a3, qword_27E2F6C70, &unk_23D9E0A10);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_23D989A7C@<X0>(void *a1@<X8>)
{
  sub_23D9589B0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

void *sub_23D989ACC@<X0>(void *a1@<X8>)
{
  sub_23D9589B0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D989B1C(uint64_t *a1)
{
  sub_23D9589B0();

  return sub_23D9D9974();
}

uint64_t sub_23D989B88()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23D989CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  sub_23D91F2DC(v1 + *(v10 + 40), v9, &qword_27E2F4D88, &qword_23D9DD4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D9664();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D9DACD4();
    v13 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D989EE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v4 = *(v0 + 32);
  v10 = *(v0 + 24);
  v11 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3D4();
  v5 = v13;
  v6 = v14;
  v7 = v15;
  swift_getKeyPath();
  v10 = v5;
  v11 = v6;
  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6660, &qword_23D9E0C28);
  sub_23D9DA574();

  swift_getKeyPath();
  sub_23D9DA504();

  sub_23D91F344(v3, &qword_27E2F6658, &qword_23D9E1E80);
  return v13;
}

uint64_t sub_23D98A070(uint64_t a1)
{
  v2 = sub_23D9D8DA4();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_23D98D65C(v5);
}

uint64_t sub_23D98A13C@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6668, &unk_23D9E0C60);
  MEMORY[0x28223BE20](v119);
  v120 = &v87 - v2;
  v97 = sub_23D9D9954();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4760, &qword_23D9E0740);
  MEMORY[0x28223BE20](v4 - 8);
  v102 = &v87 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6658, &qword_23D9E1E80);
  MEMORY[0x28223BE20](v99);
  v115 = &v87 - v6;
  v101 = type metadata accessor for AXSUIVoiceSettings(0);
  MEMORY[0x28223BE20](v101);
  v103 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6670, &qword_23D9E0C70);
  MEMORY[0x28223BE20](v100);
  v104 = &v87 - v8;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6678, &qword_23D9E0C78);
  MEMORY[0x28223BE20](v107);
  v108 = &v87 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6680, &qword_23D9E0C80);
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v106 = &v87 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6688, &qword_23D9E0C88);
  MEMORY[0x28223BE20](v118);
  v105 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v14 - 8);
  v113 = &v87 - v15;
  v122 = sub_23D9D8954();
  v116 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v117 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v114 = &v87 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  v24 = sub_23D9D89C4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 24);
  v29 = *(v1 + 32);
  v112 = v1;
  v125._countAndFlagsBits = v28;
  v125._object = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v30 = v132;
  swift_getKeyPath();
  v125._countAndFlagsBits = v30;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();
  v31 = v24;

  v32 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v30 + v32, v23, &qword_27E2F4670, &qword_23D9DC650);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v33 = &qword_27E2F4670;
    v34 = &qword_23D9DC650;
LABEL_5:
    sub_23D91F344(v23, v33, v34);
    swift_storeEnumTagMultiPayload();
    sub_23D99278C();
    return sub_23D9D9B14();
  }

  (*(v25 + 32))(v27, v23, v24);
  v125._countAndFlagsBits = v28;
  v125._object = v29;
  sub_23D9DA3B4();
  v23 = v113;
  sub_23D98E6E8(v113);

  v35 = v122;
  if ((*(v116 + 48))(v23, 1, v122) == 1)
  {
    (*(v25 + 8))(v27, v31);
    v33 = &qword_27E2F4210;
    v34 = &qword_23D9DBE60;
    goto LABEL_5;
  }

  v37 = v35;
  v38 = v116;
  (*(v116 + 32))(v117, v23, v37);
  v130._countAndFlagsBits = v28;
  v130._object = v29;
  sub_23D9DA3D4();
  v39 = v125;
  v40 = v126;
  swift_getKeyPath();
  v130 = v39;
  v131 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6660, &qword_23D9E0C28);
  sub_23D9DA574();

  v41 = *(v25 + 16);
  v42 = v114;
  v93 = v27;
  v41(v114, v27, v31);
  v94 = v25;
  v43 = *(v25 + 56);
  v44 = v42;
  v43(v42, 0, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v45 = v38;
  v46 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_23D9DC3E0;
  v48 = *(v38 + 16);
  v89 = v38 + 16;
  v90 = v48;
  v48((v47 + v46), v117, v122);
  v49 = sub_23D93D8F8(v47);
  swift_setDeallocating();
  v50 = *(v38 + 8);
  v92 = v38 + 8;
  v91 = v50;
  v50((v47 + v46), v122);
  swift_deallocClassInstance();
  v125._countAndFlagsBits = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v88 = v128;
  v87 = v129;
  v51 = v102;
  sub_23D9DA4E4();
  v52 = v44;
  v53 = v98;
  sub_23D91F2DC(v52, v98, &qword_27E2F4670, &qword_23D9DC650);
  v54 = v101;
  v55 = v103;
  v56 = &v103[*(v101 + 28)];
  LOBYTE(v123) = 0;
  sub_23D9DA3A4();
  object = v125._object;
  *v56 = v125._countAndFlagsBits;
  *(v56 + 1) = object;
  sub_23D9D9C64();
  v58 = v54[10];
  v113 = v31;
  v43(v55 + v58, 1, 1, v31);
  v59 = (v55 + v54[12]);
  v60 = v55 + v54[13];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  v61 = v55 + v54[14];
  LOBYTE(v123) = 0;
  sub_23D9DA3A4();
  v62 = v125._object;
  *v61 = v125._countAndFlagsBits;
  *(v61 + 8) = v62;
  v63 = v54[15];
  v123 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46B0, &qword_23D9E0CB0);
  sub_23D9DA3A4();
  *(v55 + v63) = v125;
  sub_23D91F2DC(v51, v55, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D929AE4(v53, v55 + v58);
  *(v55 + v54[11]) = 125;
  v64 = v55 + v54[5];
  *v64 = v88;
  *(v64 + 8) = v87;
  v65 = (v55 + v54[9]);
  *v65 = 0;
  v65[1] = 0;
  v123 = 0;
  v124 = 0xE000000000000000;
  sub_23D9DA5A4();
  sub_23D91F344(v53, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v51, &qword_27E2F4760, &qword_23D9E0740);
  sub_23D91F344(v114, &qword_27E2F4670, &qword_23D9DC650);
  sub_23D91F344(v115, &qword_27E2F6658, &qword_23D9E1E80);
  v66 = v126;
  v67 = v127;
  v68 = (v55 + v54[6]);
  *v68 = v125;
  v68[1]._countAndFlagsBits = v66;
  v68[1]._object = v67;
  *v59 = 0;
  v59[1] = 0;
  KeyPath = swift_getKeyPath();
  v70 = v104;
  v71 = &v104[*(v100 + 36)];
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F66B0, &unk_23D9E0C90) + 28);
  v90(v71 + v72, v117, v122);
  v73 = v122;
  (*(v45 + 56))(v71 + v72, 0, 1, v122);
  *v71 = KeyPath;
  sub_23D992A18(v55, v70, type metadata accessor for AXSUIVoiceSettings);
  v74 = swift_getKeyPath();
  v75 = v112 + *(type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0) + 36);
  v76 = *v75;
  if (*(v75 + 8) == 1)
  {
    LOBYTE(v125._countAndFlagsBits) = v76 & 1;
  }

  else
  {

    sub_23D9DACD4();
    v77 = sub_23D9D9D24();
    sub_23D9D91B4();

    v78 = v95;
    sub_23D9D9944();
    swift_getAtKeyPath();
    sub_23D91F080(v76, 0);
    (*(v96 + 8))(v78, v97);
    LOBYTE(v76) = v125._countAndFlagsBits;
  }

  v79 = v108;
  sub_23D92A2BC(v70, v108, &qword_27E2F6670, &qword_23D9E0C70);
  v80 = v79 + *(v107 + 36);
  *v80 = v74;
  *(v80 + 8) = v76 & 1;
  v81._countAndFlagsBits = 0x5F544C5541464544;
  v81._object = 0xED00004543494F56;
  v125 = AXSUILocString(_:)(v81);
  sub_23D992870();
  sub_23D91B650();
  v82 = v106;
  sub_23D9DA064();

  sub_23D91F344(v79, &qword_27E2F6678, &qword_23D9E0C78);
  v83 = swift_getKeyPath();
  v84 = v105;
  (*(v109 + 32))(v105, v82, v111);
  v85 = v84 + *(v118 + 36);
  *v85 = v83;
  *(v85 + 8) = 0;
  v86 = v110;
  sub_23D992A84(v84, v110);
  sub_23D91F2DC(v86, v120, &qword_27E2F6688, &qword_23D9E0C88);
  swift_storeEnumTagMultiPayload();
  sub_23D99278C();
  sub_23D9D9B14();
  sub_23D91F344(v86, &qword_27E2F6688, &qword_23D9E0C88);
  v91(v117, v73);
  return (*(v94 + 8))(v93, v113);
}

double sub_23D98B114@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D9D9664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D989CD8(v7);
  v8 = sub_23D9D9654();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v24 = sub_23D9D9AB4();
    LOBYTE(v25) = 1;
    sub_23D93FCC4();
  }

  else
  {
    v24 = sub_23D9D99B4();
    LOBYTE(v25) = 1;
    sub_23D93FC00();
  }

  v9 = sub_23D9DA764();

  sub_23D98B2E8(v2, &v14);
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v19 = v14;
  v20 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v24 = v14;
  v25 = v15;
  sub_23D91F2DC(&v19, v13, &qword_27E2F66B8, &qword_23D9E0D08);
  sub_23D91F344(&v24, &qword_27E2F66B8, &qword_23D9E0D08);

  *a1 = v9;
  v10 = v19;
  *(a1 + 24) = v20;
  v11 = v22;
  *(a1 + 40) = v21;
  *(a1 + 56) = v11;
  result = *&v23;
  *(a1 + 72) = v23;
  *(a1 + 8) = v10;
  return result;
}

uint64_t sub_23D98B2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D9D89C4();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D9D8C74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v53 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  v54 = a1;
  sub_23D9DA3B4();
  v16 = *(v7 + 48);
  v17 = v16(v15, 1, v6);
  v48 = v9;
  v49 = v7;
  if (v17)
  {
    sub_23D91F344(v15, &qword_27E2F4460, &qword_23D9DC2A0);
    v55 = 0;
    v56 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    (*(v7 + 16))(v9, v15, v6);
    sub_23D91F344(v15, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9BB28C();
    v21 = v20;
    v23 = v22;
    (*(v7 + 8))(v9, v6);
    v57 = v21;
    v58 = v23;
    sub_23D91B650();
    v24 = sub_23D9D9F04();
    v19 = v25;
    v18 = v26 & 1;
    v55 = v27;
    v56 = v24;
    sub_23D91E0AC(v24, v27, v26 & 1);
  }

  sub_23D9DA3B4();
  if (v16(v12, 1, v6))
  {
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v32 = v48;
    v33 = v49;
    (*(v49 + 16))(v48, v12, v6);
    sub_23D91F344(v12, &qword_27E2F4460, &qword_23D9DC2A0);
    v34 = v50;
    sub_23D9D8C04();
    (*(v33 + 8))(v32, v6);
    v35 = sub_23D9D8964();
    v29 = v36;
    (*(v51 + 8))(v34, v52);
    if (v29)
    {
      v57 = v35;
      v58 = v29;
      sub_23D91B650();
      v37 = sub_23D9D9F04();
      v53 = v38;
      v40 = v39;
      sub_23D9DA2F4();
      v28 = sub_23D9D9EB4();
      v29 = v41;
      LODWORD(v54) = v42;
      v31 = v43;

      sub_23D9274BC(v37, v53, v40 & 1);

      v30 = v54 & 1;
      sub_23D91E0AC(v28, v29, v54 & 1);

      goto LABEL_9;
    }

    v28 = 0;
  }

  v30 = 0;
  v31 = 0;
LABEL_9:
  LOBYTE(v57) = 1;
  v45 = v55;
  v44 = v56;
  sub_23D992AF4(v56, v55, v18, v19);
  sub_23D992AF4(v28, v29, v30, v31);
  sub_23D992B38(v44, v45, v18, v19);
  sub_23D992B38(v28, v29, v30, v31);
  v46 = v57;
  *a2 = v44;
  *(a2 + 8) = v45;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = 0;
  *(a2 + 40) = v46;
  *(a2 + 48) = v28;
  *(a2 + 56) = v29;
  *(a2 + 64) = v30;
  *(a2 + 72) = v31;
  sub_23D992B38(v28, v29, v30, v31);
  return sub_23D992B38(v44, v45, v18, v19);
}

uint64_t AXSUISystemDefaultVoiceSelectionCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v34 = sub_23D9D8DA4();
  v41 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6568, &unk_23D9E0950);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  sub_23D98BD90(v1, &v32 - v14);
  sub_23D9905EC(v1, v12);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v36 = v11;
  v17 = swift_allocObject();
  sub_23D992A18(v12, v17 + v16, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
  v37 = v15;
  v38 = v13;
  v18 = &v15[*(v13 + 36)];
  *v18 = sub_23D990654;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = *(v2 + 24);
  v20 = *(v2 + 32);
  v39 = v2;
  v42 = v19;
  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v21 = v44;
  swift_getKeyPath();
  v42 = v21;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v22 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v21 + v22, v7, &qword_27E2F5900, &unk_23D9DC640);
  v23 = *(v41 + 48);
  v24 = v34;
  if ((v23)(v7, 1) == 1)
  {
    v25 = sub_23D9D8954();
    (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
    LOBYTE(v44) = 1;
    v26 = v35;
    sub_23D9D8D74();

    v27 = v23(v7, 1, v24);
    v28 = v41;
    if (v27 != 1)
    {
      sub_23D91F344(v7, &qword_27E2F5900, &unk_23D9DC640);
    }
  }

  else
  {

    v28 = v41;
    v26 = v35;
    (*(v41 + 32))(v35, v7, v24);
  }

  sub_23D9905EC(v39, v12);
  v29 = swift_allocObject();
  sub_23D992A18(v12, v29 + v16, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
  sub_23D9909C8();
  sub_23D990C78(&qword_27E2F65D8, MEMORY[0x277CE6738], MEMORY[0x277CE6740]);
  v30 = v37;
  sub_23D9DA1F4();

  (*(v28 + 8))(v26, v24);
  return sub_23D91F344(v30, &qword_27E2F6568, &unk_23D9E0950);
}

uint64_t sub_23D98BD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65D0, &qword_23D9E09B0);
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v51 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6650, &qword_23D9E0BB8);
  MEMORY[0x28223BE20](v63);
  v64 = &v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - v7;
  v57 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v51 = *(v57 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v57);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65B0, &qword_23D9E09A0);
  MEMORY[0x28223BE20](v62);
  v58 = (&v51 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v51 - v16;
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  v59 = a1;
  v68 = v19;
  v69 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v20 = v72;
  swift_getKeyPath();
  v68 = v20;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v21 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v20 + v21, v17, &qword_27E2F4670, &qword_23D9DC650);

  v22 = sub_23D9D89C4();
  LODWORD(v21) = (*(*(v22 - 8) + 48))(v17, 1, v22);
  sub_23D91F344(v17, &qword_27E2F4670, &qword_23D9DC650);
  if (v21 == 1 || (v68 = v19, v69 = v18, sub_23D9DA3B4(), sub_23D98E6E8(v14), , v23 = sub_23D9D8954(), v24 = (*(*(v23 - 8) + 48))(v14, 1, v23), sub_23D91F344(v14, &qword_27E2F4210, &qword_23D9DBE60), v24 == 1))
  {
    v25 = v60;
    sub_23D9D94C4();
    v26 = v61;
    v27 = v66;
    (*(v61 + 16))(v64, v25, v66);
    swift_storeEnumTagMultiPayload();
    sub_23D990B90();
    sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
    sub_23D9D9B14();
    return (*(v26 + 8))(v25, v27);
  }

  else
  {
    v29 = v59;
    v30 = v52;
    sub_23D9905EC(v59, v52);
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = swift_allocObject();
    sub_23D992A18(v30, v32 + v31, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
    v33 = v53;
    sub_23D9905EC(v29, v53);
    v34 = swift_allocObject();
    sub_23D992A18(v33, v34 + v31, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
    KeyPath = swift_getKeyPath();
    v36 = v58;
    *v58 = KeyPath;
    *(v36 + 8) = 0;
    LOBYTE(v67[0]) = 0;
    sub_23D9DA3A4();
    v37 = v69;
    *(v36 + 80) = v68;
    *(v36 + 88) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65C0, &qword_23D9E09A8);
    v38 = sub_23D9D88A4();
    v39 = v54;
    (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
    sub_23D91F2DC(v39, v55, &unk_27E2F6A30, &qword_23D9E0BC0);
    sub_23D9DA3A4();
    sub_23D91F344(v39, &unk_27E2F6A30, &qword_23D9E0BC0);
    strcpy((v36 + 16), "voiceSelection");
    *(v36 + 31) = -18;
    *(v36 + 32) = sub_23D992628;
    *(v36 + 40) = v32;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_23D9926BC;
    *(v40 + 24) = v34;
    *(v36 + 48) = sub_23D99275C;
    *(v36 + 56) = v40;
    *(v36 + 64) = 0;
    *(v36 + 72) = 0;
    v68 = sub_23D989EE0();
    v69 = v41;
    v70 = v42;
    v71 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
    MEMORY[0x23EEF3850](v67, v44);
    v45 = v67[0];
    v46 = v67[1];

    v47 = (v36 + *(v62 + 36));
    v48 = type metadata accessor for AXSUIVoiceLoader(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3D4();
    v49 = swift_getKeyPath();
    *v47 = v45;
    v47[1] = v46;
    v50 = v47 + *(v48 + 24);
    *v50 = v49;
    v50[8] = 0;
    sub_23D91F2DC(v36, v64, &qword_27E2F65B0, &qword_23D9E09A0);
    swift_storeEnumTagMultiPayload();
    sub_23D990B90();
    sub_23D91F01C(&qword_27E2F65C8, &qword_27E2F65D0, &qword_23D9E09B0, MEMORY[0x277CDD7F0]);
    sub_23D9D9B14();
    return sub_23D91F344(v36, &qword_27E2F65B0, &qword_23D9E09A0);
  }
}

uint64_t sub_23D98C6B0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v2 = *a1;
  v3 = sub_23D989B88();
  sub_23D98EF0C(v2, v3);
}

uint64_t sub_23D98C73C(uint64_t a1)
{
  v2 = type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_23D9DA9F4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23D9905EC(a1, v5);
  sub_23D9DA9B4();
  v10 = sub_23D9DA9A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_23D992A18(v5, v12 + v11, type metadata accessor for AXSUISystemDefaultVoiceSelectionCell);
  sub_23D9BB718(0, 0, v8, &unk_23D9E0BB0, v12);
}

uint64_t sub_23D98C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v4[13] = swift_task_alloc();
  v5 = sub_23D9D8DA4();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_23D9DA9B4();
  v4[17] = sub_23D9DA9A4();
  v7 = sub_23D9DA994();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x2822009F8](sub_23D98CAB0, v7, v6);
}

uint64_t sub_23D98CAB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];
  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v0[5] = v6;
  v0[6] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6570, &qword_23D9E0960);
  sub_23D9DA3B4();
  v7 = v0[7];
  swift_getKeyPath();
  v0[8] = v7;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v8 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v7 + v8, v3, &qword_27E2F5900, &unk_23D9DC640);
  v9 = *(v2 + 48);
  v10 = v9(v3, 1, v1);
  v11 = v0[16];
  if (v10 == 1)
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    v15 = sub_23D9D8954();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_23D9D8D74();

    if (v9(v13, 1, v12) != 1)
    {
      sub_23D91F344(v0[13], &qword_27E2F5900, &unk_23D9DC640);
    }
  }

  else
  {
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[13];

    (*(v17 + 32))(v11, v18, v16);
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];
  v22 = sub_23D9D8D84();
  v24 = v23;
  v0[20] = v23;
  (*(v20 + 8))(v19, v21);
  if (v24)
  {
    v0[21] = sub_23D989B88();
    v33 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
    v25 = swift_task_alloc();
    v0[22] = v25;
    *v25 = v0;
    v25[1] = sub_23D98CEF8;
    v26 = v0[11];

    return v33(v26, v22, v24);
  }

  else
  {
    v28 = v0[11];

    v29 = sub_23D9D8C74();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v31 = v0[10];
    v30 = v0[11];
    type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
    sub_23D91F2DC(v30, v31, &qword_27E2F4460, &qword_23D9DC2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
    sub_23D9DA3C4();
    sub_23D91F344(v30, &qword_27E2F4460, &qword_23D9DC2A0);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_23D98CEF8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_23D98D058, v3, v2);
}

uint64_t sub_23D98D058()
{

  v2 = v0[10];
  v1 = v0[11];
  type metadata accessor for AXSUISystemDefaultVoiceSelectionCell(0);
  sub_23D91F2DC(v1, v2, &qword_27E2F4460, &qword_23D9DC2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4640, &unk_23D9DC610);
  sub_23D9DA3C4();
  sub_23D91F344(v1, &qword_27E2F4460, &qword_23D9DC2A0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_23D98D19C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v1 + v6, v5, &qword_27E2F5900, &unk_23D9DC640);
  v7 = sub_23D990EB4(v5, a1);
  sub_23D91F344(v5, &qword_27E2F5900, &unk_23D9DC640);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
    sub_23D9D8A04();
  }

  else
  {
    sub_23D91F2DC(a1, v5, &qword_27E2F5900, &unk_23D9DC640);
    swift_beginAccess();
    sub_23D992220(v5, v1 + v6, &qword_27E2F5900, &unk_23D9DC640);
    swift_endAccess();
  }

  return sub_23D91F344(a1, &qword_27E2F5900, &unk_23D9DC640);
}

uint64_t sub_23D98D3A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16[-v8];
  swift_getKeyPath();
  v17 = v1;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v10 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v2 + v10, v9, &qword_27E2F5900, &unk_23D9DC640);
  v11 = sub_23D9D8DA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  v14 = sub_23D9D8954();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v16[4] = 1;
  sub_23D9D8D74();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_23D91F344(v9, &qword_27E2F5900, &unk_23D9DC640);
  }

  return result;
}

uint64_t sub_23D98D65C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_23D98E6E8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v16 = sub_23D9D8DA4();
    (*(*(v16 - 8) + 8))(a1, v16);
    return sub_23D91F344(v8, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    swift_getKeyPath();
    v30[0] = v1;
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
    sub_23D9D8A14();

    if (*(v1 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__voiceTable))
    {
      v18 = sub_23D9D8DA4();
      v27 = v12;
      v19 = v18;
      v28 = *(v18 - 8);
      v20 = v28;
      v29 = v15;
      v25 = *(v28 + 16);
      v26 = v28 + 16;
      v25(v5, a1, v18);
      v24 = *(v20 + 56);
      v24(v5, 0, 1, v19);

      sub_23D98D19C(v5);
      v21 = v27;
      (*(v10 + 16))(v27, v29, v9);
      v25(v5, a1, v19);
      v24(v5, 0, 1, v19);
      v22 = sub_23D9D8DC4();
      sub_23D95914C(v5, v21);
      v22(v30, 0);

      (*(v28 + 8))(a1, v19);
      return (*(v10 + 8))(v29, v9);
    }

    else
    {
      v23 = sub_23D9D8DA4();
      (*(*(v23 - 8) + 8))(a1, v23);
      return (*(v10 + 8))(v15, v9);
    }
  }
}

void (*sub_23D98DAC0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 32) = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[5] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640) - 8) + 64);
  if (v4)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v6[6] = v11;
  v13 = sub_23D9D8DA4();
  v6[7] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v6[8] = v14;
  v16 = *(v14 + 64);
  if (v4)
  {
    v6[9] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v6[9] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v6[10] = v17;
  swift_getKeyPath();
  v6[3] = v2;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v19 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___selection;
  swift_beginAccess();
  sub_23D91F2DC(v2 + v19, v12, &qword_27E2F5900, &unk_23D9DC640);
  v20 = *(v15 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    v21 = sub_23D9D8954();
    (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
    sub_23D9D8D74();
    if (v20(v12, 1, v13) != 1)
    {
      sub_23D91F344(v12, &qword_27E2F5900, &unk_23D9DC640);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v12, v13);
  }

  return sub_23D98DE18;
}

void sub_23D98DE18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {
    v5 = v2[7];
    v6 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    (*(v6 + 16))(*(*a1 + 72), v4, v5);
    sub_23D98D65C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[5];
    v7 = v2[6];
    sub_23D98D65C(*(*a1 + 80));
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_23D98DF74@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v11 = *a3;
  swift_beginAccess();
  return sub_23D91F2DC(v10 + v11, a6, a4, a5);
}

uint64_t sub_23D98E080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - v12;
  sub_23D91F2DC(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_23D98E150@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v10 = *a2;
  swift_beginAccess();
  return sub_23D91F2DC(v12 + v10, a5, a3, a4);
}

uint64_t sub_23D98E230(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v1 + v6, v5, &qword_27E2F4670, &qword_23D9DC650);
  v7 = sub_23D9911D4(v5, a1);
  sub_23D91F344(v5, &qword_27E2F4670, &qword_23D9DC650);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
    sub_23D9D8A04();
  }

  else
  {
    sub_23D91F2DC(a1, v5, &qword_27E2F4670, &qword_23D9DC650);
    swift_beginAccess();
    sub_23D992220(v5, v1 + v6, &qword_27E2F4670, &qword_23D9DC650);
    swift_endAccess();
  }

  return sub_23D91F344(a1, &qword_27E2F4670, &qword_23D9DC650);
}

uint64_t sub_23D98E438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_23D91F2DC(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_23D992220(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t (*sub_23D98E51C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D9D8A34();

  v4[7] = sub_23D98DEEC(v4);
  return sub_23D98E654;
}

void sub_23D98E654(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_23D9D8A24();

  free(v1);
}

uint64_t sub_23D98E6E8@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = sub_23D9D89A4();
  v15 = *(v2 - 8);
  v16 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D9D89C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  swift_getKeyPath();
  v18 = v1;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  v12 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__systemLocale;
  swift_beginAccess();
  sub_23D91F2DC(v1 + v12, v11, &qword_27E2F4670, &qword_23D9DC650);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_23D91F344(v11, &qword_27E2F4670, &qword_23D9DC650);
    v13 = sub_23D9D8954();
    return (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_23D91F344(v11, &qword_27E2F4670, &qword_23D9DC650);
    sub_23D9D89B4();
    (*(v6 + 8))(v8, v5);
    sub_23D9D8994();
    return (*(v15 + 8))(v4, v16);
  }
}

uint64_t sub_23D98EA38(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();
}

uint64_t sub_23D98EADC@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  *a4 = *(v6 + *a3);
}

uint64_t sub_23D98EB94(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A04();
}

uint64_t sub_23D98EC50()
{
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();
}

uint64_t sub_23D98ECFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A14();

  *a2 = *(v3 + OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks);
}

uint64_t sub_23D98EDB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilitySettingsUI19VoiceSelectionModel__streamTasks;

  v5 = sub_23D990D24(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
    sub_23D9D8A04();
  }
}

uint64_t sub_23D98EF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  MEMORY[0x28223BE20](v6 - 8);
  v31 = v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F46C8, &qword_23D9DC748);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20);
  v11 = *(v30 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v26 = v25 - v14;
  sub_23D990190();
  swift_getKeyPath();
  v34 = v2;
  v35 = a2;
  v36 = v2;
  sub_23D990C78(&qword_27E2F6578, type metadata accessor for VoiceSelectionModel, &protocol conformance descriptor for VoiceSelectionModel);
  sub_23D9D8A04();

  swift_getKeyPath();
  v32 = v2;
  v33 = a1;
  v36 = v2;
  sub_23D9D8A04();

  sub_23D9D8DB4();
  v15 = v26;
  sub_23D9D8DE4();
  (*(v27 + 8))(v10, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E8, &qword_23D9E0A50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23D9DC3E0;
  v17 = v31;
  sub_23D9DA9C4();
  v18 = sub_23D9DA9F4();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = v29;
  v20 = v30;
  v21 = v15;
  (*(v11 + 16))(v29, v15, v30);
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v11 + 32))(v23 + v22, v19, v20);
  *(v23 + ((v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  *(v16 + 32) = sub_23D9897D0(0, 0, v17, &unk_23D9E0A60, v23);
  sub_23D98EDB0(v16);
  return (*(v11 + 8))(v21, v20);
}

uint64_t sub_23D98F358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_23D9D8DA4();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6620, &qword_23D9E0B80);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6628, &qword_23D9E0B88);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6630, &qword_23D9E0B90);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v5[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F6638, &qword_23D9E0B98);
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[35] = v9;
  v10 = swift_task_alloc();
  v5[36] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F65E0, &qword_23D9E0A20);
  v5[37] = v11;
  *v10 = v5;
  v10[1] = sub_23D98F66C;

  return MEMORY[0x282138898](v9, v11);
}