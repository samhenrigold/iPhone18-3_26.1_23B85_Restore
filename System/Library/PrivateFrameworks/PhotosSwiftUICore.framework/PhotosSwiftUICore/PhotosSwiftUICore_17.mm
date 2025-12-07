double sub_1C1137B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1 = sub_1C1265A30();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C1262EA0();

  return result;
}

double sub_1C1137C20(uint64_t *a1, uint64_t a2)
{
  v17[1] = a2;
  v2 = *a1;
  v19 = *(*a1 + 88);
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v17 - v4;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v18 = *(v2 + 96);
  v11 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v17 - v12;
  v17[0] = sub_1C1137470();
  sub_1C1137340(v10);
  v14 = sub_1C12663A0();
  v15 = v19;
  (*(v3 + 16))(v5);
  v14(v20, 0);
  (*(v7 + 8))(v10, v6);
  sub_1C11374A0();
  swift_getAtKeyPath();

  (*(v3 + 8))(v5, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
  sub_1C111E418(v13);

  return result;
}

double sub_1C1137EC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1C1137588();

  return result;
}

uint64_t PhotosItemsPageControl.Coordinator.deinit()
{
  OUTLINED_FUNCTION_15_1();
  (*(v1 + 8))(v0 + v2);

  return v0;
}

uint64_t PhotosItemsPageControl.Coordinator.__deallocating_deinit()
{
  PhotosItemsPageControl.Coordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1138018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PhotosItemsPageControl.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C1138040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C11380BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1C1138138(uint64_t a1)
{
  swift_getWitnessTable();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t PhotosLoopingItemsPageControl.init(_:id:scrollViewModel:pageImages:showBackground:disableAnimation:nonLoopingItemIdentifierResolver:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(*a3 + 88);
  v19 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v27 = a10;
  v28 = v19;
  v29 = a11;
  v30 = v18;
  v20 = type metadata accessor for PhotosLoopingItemsPageControl(0, &v27);
  v21 = v20[16];
  *(a9 + v20[20]) = 2;
  OUTLINED_FUNCTION_15_1();
  result = (*(v22 + 32))(a9, a1, a10);
  *(a9 + v20[15]) = a2;
  *(a9 + v21) = a4;
  *(a9 + v20[17]) = a5;
  v24 = (a9 + v20[18]);
  *v24 = a7;
  v24[1] = a8;
  *(a9 + v20[21]) = a6;
  *(a9 + v20[19]) = a3;
  return result;
}

uint64_t sub_1C11383E4(uint64_t a1)
{
  v1 = sub_1C1266790();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - v3;
  sub_1C11383BC();
  sub_1C11384E4();
  v6 = v5;
  (*(v2 + 8))(v4, v1);
  return v6;
}

void sub_1C11384E4()
{
  OUTLINED_FUNCTION_23();
  v45 = v1;
  v47 = v0;
  v3 = v2;
  v49 = v2[5];
  v50 = v4;
  OUTLINED_FUNCTION_19_16();
  v5 = v3[2];
  v46 = v6;
  v48 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v42 = v9;
  v43 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  OUTLINED_FUNCTION_1();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v41 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = v3[4];
  v21 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v32 = v31 - v30;
  (*(v23 + 16))(v26, v50, v21);
  if (__swift_getEnumTagSinglePayload(v26, 1, v20) == 1)
  {
    (*(v23 + 8))(v26, v21);
  }

  else
  {
    v33 = (*(v28 + 32))(v32, v26, v20);
    MEMORY[0x1EEE9AC00](v33);
    v34 = v3[3];
    v35 = v47;
    *(&v40 - 8) = v48;
    *(&v40 - 7) = v34;
    v36 = v49;
    *(&v40 - 6) = v20;
    *(&v40 - 5) = v36;
    *(&v40 - 4) = v3[6];
    *(&v40 - 3) = v35;
    *(&v40 - 2) = v32;
    sub_1C1266330();
    if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v12, v43);
    }

    else
    {
      v37 = v44;
      (*(v44 + 32))(v19, v12, AssociatedTypeWitness);
      v38 = v41;
      sub_1C12662D0();
      sub_1C12662C0();
      v39 = *(v37 + 8);
      v39(v38, AssociatedTypeWitness);
      v39(v19, AssociatedTypeWitness);
    }

    (*(v28 + 8))(v32, v20);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11388CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v14 = v13 - v12;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v20(0, v23);
  swift_getAtKeyPath();
  v21 = sub_1C1265DE0();
  (*(v10 + 8))(v14, a6);
  return v21 & 1;
}

void PhotosLoopingItemsPageControl.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v91 = v4;
  v90 = sub_1C1265650();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v89 = v7 - v6;
  v72[1] = sub_1C1265900();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v72[0] = v10 - v9;
  v11 = *(v3 + 32);
  v12 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v81 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v72 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94960, &unk_1C12BA920);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v72 - v23;
  v25 = *(v3 + 48);
  v99 = *(v25 + 8);
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  v77 = v12;
  v74 = WitnessTable;
  sub_1C12639F0();
  OUTLINED_FUNCTION_19_1();
  v78 = v21;
  v75 = v27;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v79 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  v76 = v72 - v30;
  v80 = v31;
  v32 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v85 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  v82 = v72 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BE8, &unk_1C12AC0F8);
  OUTLINED_FUNCTION_19_1();
  v86 = v32;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v87 = v37;
  v88 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v83 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v84 = v72 - v41;
  *v24 = sub_1C12638E0();
  *(v24 + 1) = 0x4020000000000000;
  v24[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE94968, &qword_1C12BA930);
  sub_1C113912C(v1, *(v3 + 16), *(v3 + 24), v11, *(v3 + 40), v25, &v24[*(v42 + 44)]);
  if ((*(v1 + *(v3 + 84)) & 1) == 0)
  {
    sub_1C1265A30();
  }

  v43 = (v1 + *(v3 + 72));
  v73 = v1;
  v44 = *v43;
  sub_1C11383BC();
  v44(v17);
  v45 = *(v81 + 8);
  v46 = v17;
  v47 = v77;
  v45(v46, v77);
  OUTLINED_FUNCTION_8_34();
  v52 = sub_1C0FDB6D4(v48, v49, v50, v51);
  v53 = v76;
  sub_1C1265040();

  v45(v20, v47);
  sub_1C0FBD6A4(v24);
  sub_1C1264470();
  OUTLINED_FUNCTION_6_29();
  v54 = swift_getWitnessTable();
  v97 = v52;
  v98 = v54;
  v55 = v80;
  v56 = swift_getWitnessTable();
  v57 = v82;
  sub_1C1264FB0();
  (*(v79 + 8))(v53, v55);
  if (*(v73 + *(v3 + 68)) == 1)
  {
    sub_1C12658E0();
  }

  else
  {
    v96 = sub_1C1265170();
  }

  v96 = sub_1C1262C90();
  v58 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v60 = v89;
  (*(v59 + 104))(v89, v58);
  v94 = v56;
  v95 = MEMORY[0x1E697E5D8];
  v61 = v86;
  v62 = swift_getWitnessTable();
  sub_1C113B1F8(&qword_1EDE7B7B0, MEMORY[0x1E6981998], MEMORY[0x1E6981970]);
  v63 = v83;
  sub_1C1264970();
  sub_1C113934C(v60);

  (*(v85 + 8))(v57, v61);
  OUTLINED_FUNCTION_61_0();
  v68 = sub_1C0FDB6D4(v64, v65, v66, v67);
  v92 = v62;
  v93 = v68;
  v69 = v88;
  swift_getWitnessTable();
  v70 = v84;
  OUTLINED_FUNCTION_17_23();
  sub_1C0FDBA4C();
  v71 = *(v87 + 8);
  v71(v63, v69);
  OUTLINED_FUNCTION_17_23();
  sub_1C0FDBA4C();
  v71(v70, v69);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C113912C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v21 = a4;
  v22 = a6;
  v27 = a5;
  v28 = a6;
  v11 = type metadata accessor for PhotosLoopingItemsPageControl(0, &v24);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v16 = *(a1 + *(v15 + 80));
  if (__OFSUB__(0, v16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = sub_1C12662E0();
  if (__OFADD__(v17, v16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 + v16 >= -v16)
  {
    v24 = -v16;
    v25 = v17 + v16;
    swift_getKeyPath();
    (*(v12 + 16))(v14, a1, v11);
    v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = a2;
    *(v19 + 3) = a3;
    v20 = v22;
    *(v19 + 4) = v21;
    *(v19 + 5) = a5;
    *(v19 + 6) = v20;
    (*(v12 + 32))(&v19[v18], v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D40, &qword_1C12C9740);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE949F0, &qword_1C12BAB20);
    sub_1C100EF98();
    sub_1C113B324();
    sub_1C1265680();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C113934C(uint64_t a1)
{
  v2 = sub_1C1265650();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C11393A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a3;
  v61 = a4;
  v66[0] = a3;
  v66[1] = a4;
  v66[2] = a5;
  v66[3] = a6;
  v62 = a6;
  v63 = a7;
  v66[4] = a7;
  v12 = type metadata accessor for PhotosLoopingItemsPageControl(0, v66);
  v56 = *(v12 - 8);
  v54 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A30, &qword_1C12BAB68);
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v45 - v15;
  v64 = sub_1C1266790();
  v59 = *(v64 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = *a1;
  if ((sub_1C11398CC(v20, v12) & 1) == 0)
  {
    return __swift_storeEnumTagSinglePayload(a8, 1, 1, v14);
  }

  v53 = a8;
  sub_1C1139944();
  v50 = v19;
  v51 = a5;
  sub_1C1139BCC(v19, a2, v60, v61, a5, v62, v63, v66);
  v48 = v66[1];
  v49 = v66[0];
  v47 = LOWORD(v66[2]);
  v21 = BYTE2(v66[2]);
  sub_1C12659A0();
  sub_1C1262C80();
  LOBYTE(v66[0]) = v21;
  *&v67[5] = v68;
  *&v67[21] = v69;
  *&v67[37] = v70;
  v46 = sub_1C12651F0();
  KeyPath = swift_getKeyPath();
  v52 = v14;
  v23 = KeyPath;
  v24 = sub_1C11383E4(v12) != v20;
  v26 = 1.0;
  if ((v25 | v24))
  {
    v27 = 0.25;
  }

  else
  {
    v27 = 1.0;
  }

  if ((sub_1C113A260(v20, v12) & 1) == 0)
  {
    v26 = 0.5;
  }

  sub_1C1265B90();
  *(&v65[2] + 3) = *v67;
  v65[0] = v49;
  v65[1] = v48;
  LOWORD(v65[2]) = v47;
  BYTE2(v65[2]) = v21;
  *(&v65[4] + 3) = *&v67[16];
  *(&v65[6] + 3) = *&v67[32];
  v65[8] = *&v67[45];
  v65[9] = v23;
  v65[10] = v46;
  *&v65[11] = v27;
  *&v65[12] = v26;
  *&v65[13] = v26;
  v65[14] = v28;
  v65[15] = v29;
  v30 = v59;
  v31 = *(v59 + 16);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v64;
  v31(v49, v19);
  v34 = v55;
  v33 = v56;
  (*(v56 + 16))(v55, a2, v12);
  v35 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v36 = (v16 + *(v33 + 80) + v35) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v61;
  *(v37 + 2) = v60;
  *(v37 + 3) = v38;
  v40 = v62;
  v39 = v63;
  *(v37 + 4) = v51;
  *(v37 + 5) = v40;
  *(v37 + 6) = v39;
  (*(v30 + 32))(&v37[v35], v49, v32);
  (*(v33 + 32))(&v37[v36], v34, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE949F8, &qword_1C12BAB28);
  sub_1C113B3E4();
  v41 = v58;
  sub_1C1264AF0();

  memcpy(v66, v65, sizeof(v66));
  sub_1C0FD1A5C(v66, &qword_1EBE949F8, &qword_1C12BAB28);
  v43 = v52;
  v42 = v53;
  (*(v57 + 32))(v53, v41, v52);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  return (*(v30 + 8))(v50, v64);
}

uint64_t sub_1C11398CC(uint64_t a1, uint64_t a2)
{
  result = sub_1C11383E4(a2);
  if (v6)
  {
    return 0;
  }

  v7 = *(v2 + *(a2 + 80));
  v8 = result - v7;
  if (__OFSUB__(result, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(result, v7);
  v10 = result + v7;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return v8 <= a1 && v10 >= a1;
}

void sub_1C1139944()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v32 = *(v0 + 24);
  v33 = v4;
  OUTLINED_FUNCTION_1();
  v31 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v30 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  if (v3 < 0 || sub_1C12662E0() <= v3)
  {
    OUTLINED_FUNCTION_22_0();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }

  else
  {
    sub_1C12662D0();
    sub_1C12662B0();
    v19 = *(v30 + 8);
    v19(v15, AssociatedTypeWitness);
    v20 = v19;
    v21 = sub_1C12663A0();
    v23 = v31;
    v22 = v32;
    (*(v31 + 16))(v9);
    v21(&v34, 0);
    v24 = v33;
    swift_getAtKeyPath();
    (*(v23 + 8))(v9, v22);
    v20(v18, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, *(v1 + 32));
    OUTLINED_FUNCTION_22_0();
  }
}

uint64_t sub_1C1139BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a6;
  v59 = a7;
  *&v57 = a3;
  *(&v57 + 1) = a4;
  v60 = a2;
  v61 = a1;
  v10 = sub_1C1265300();
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A38, &qword_1C12BABA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v51 - v13;
  v14 = sub_1C1266790();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v56 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  (*(v15 + 16))(v23, v61, v14, v28);
  if (__swift_getEnumTagSinglePayload(v23, 1, a5) == 1)
  {
    (*(v15 + 8))(v23, v14);
LABEL_10:
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A28, &unk_1C12BAB58);
    sub_1C113B750();
    sub_1C113B7D4();
    result = sub_1C1263C20();
    v47 = v62;
    v48 = v63;
    v49 = BYTE2(v63);
    goto LABEL_11;
  }

  v61 = a8;
  v31 = *(v24 + 32);
  v51 = v10;
  v52 = v31;
  v31(v30, v23, a5);
  v62 = v57;
  v63 = a5;
  v64 = v58;
  v65 = v59;
  v58 = type metadata accessor for PhotosLoopingItemsPageControl(0, &v62);
  v32 = *(v60 + *(v58 + 72));
  (*(v24 + 16))(v17, v30, a5);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a5);
  v32(v17);
  v33 = *(v15 + 8);
  v33(v17, v14);
  if (__swift_getEnumTagSinglePayload(v20, 1, a5) == 1)
  {
    (*(v24 + 8))(v30, a5);
    v33(v20, v14);
LABEL_9:
    a8 = v61;
    goto LABEL_10;
  }

  v34 = v30;
  v35 = v24;
  v36 = v56;
  v52(v56, v20, a5);
  if (!*(v60 + *(v58 + 64)) || (sub_1C0FDE8F8(0, &qword_1EDE7B5F0, 0x1E69DCAB8), sub_1C1265D00(), !v62))
  {
    v50 = *(v24 + 8);
    v50(v36, a5);
    v50(v34, a5);
    goto LABEL_9;
  }

  v37 = v62;
  sub_1C12652D0();
  v38 = *MEMORY[0x1E6981698];
  v39 = sub_1C1265330();
  v40 = v53;
  (*(*(v39 - 8) + 104))(v53, v38, v39);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
  sub_1C1265310();

  sub_1C0FD1A5C(v40, &qword_1EBE94A38, &qword_1C12BABA0);
  v42 = v54;
  v41 = v55;
  v43 = v51;
  (*(v55 + 104))(v54, *MEMORY[0x1E6981630], v51);
  v44 = sub_1C1265350();

  (*(v41 + 8))(v42, v43);
  v66 = v44;
  v67 = 0;
  v68 = 1;
  v69 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A28, &unk_1C12BAB58);
  sub_1C113B750();
  sub_1C113B7D4();
  sub_1C1263C20();

  v45 = *(v35 + 8);
  v45(v36, a5);
  result = (v45)(v34, a5);
  v47 = v62;
  v48 = v63;
  v49 = BYTE2(v63);
  a8 = v61;
LABEL_11:
  *a8 = v47;
  *(a8 + 16) = v48;
  *(a8 + 18) = v49;
  return result;
}

uint64_t sub_1C113A260(uint64_t a1, uint64_t a2)
{
  result = sub_1C11383E4(a2);
  if (v4)
  {
    return 0;
  }

  if (result == a1)
  {
    return 1;
  }

  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == a1 - 1)
    {
      return 1;
    }

    if (!__OFADD__(a1, 1))
    {
      return result == a1 + 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C113A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v12 = sub_1C1266790();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v18);
  if (__swift_getEnumTagSinglePayload(v15, 1, a5) == 1)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v22 = (*(v16 + 32))(v20, v15, a5);
  MEMORY[0x1EEE9AC00](v22);
  *(&v25 - 8) = a3;
  *(&v25 - 7) = a4;
  v24 = v26;
  v23 = v27;
  *(&v25 - 6) = a5;
  *(&v25 - 5) = v24;
  *(&v25 - 4) = v23;
  *(&v25 - 3) = a2;
  *(&v25 - 2) = v20;
  sub_1C1265A30();
  sub_1C1262EA0();

  return (*(v16 + 8))(v20, a5);
}

uint64_t sub_1C113A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v18[-1] - v14;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  type metadata accessor for PhotosLoopingItemsPageControl(0, v18);
  (*(*(a5 - 8) + 16))(v15, a2, a5);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, a5);
  return sub_1C111E418(v15);
}

void PhotosLoopingItemsPageControl<>.init(_:scrollViewModel:pageImages:showBackground:disableAnimation:nonLoopingItemIdentifierResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_23();
  v23 = v22;
  v46 = v24;
  v47 = v25;
  v44 = v26;
  v45 = v27;
  v43 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  v40 = v39 - v38;
  (*(v36 + 16))(v39 - v38, v32, v41);
  KeyPath = swift_getKeyPath();
  PhotosLoopingItemsPageControl.init(_:id:scrollViewModel:pageImages:showBackground:disableAnimation:nonLoopingItemIdentifierResolver:)(v40, KeyPath, v30, v43, v44, v45, v46, v47, v34, v23, a22);
  (*(v36 + 8))(v32, v23);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C113A7E0(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[4];
    result = sub_1C1266F10();
    if (v5 <= 0x3F)
    {
      sub_1C0FDE8F8(255, &qword_1EDE7B5F0, 0x1E69DCAB8);
      v6 = a1[6];
      sub_1C1265CF0();
      result = sub_1C1266790();
      if (v8 <= 0x3F)
      {
        result = type metadata accessor for PhotosScrollViewModel(319, v4, v6, v7);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C113A8EC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C113AA30(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
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

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C113AC0C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1C113ACC8(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[4];
    result = sub_1C1266F10();
    if (v5 <= 0x3F)
    {
      sub_1C0FDE8F8(255, &qword_1EDE7B5F0, 0x1E69DCAB8);
      v6 = a1[6];
      sub_1C1265CF0();
      result = sub_1C1266790();
      if (v7 <= 0x3F)
      {
        result = sub_1C1007F88();
        if (v9 <= 0x3F)
        {
          result = type metadata accessor for PhotosScrollViewModel(319, v4, v6, v8);
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C113ADFC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
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

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C113AF68(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
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

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
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
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
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
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

double sub_1C113B16C()
{
  OUTLINED_FUNCTION_19_16();
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  return sub_1C1137B84(v2, v3, v4);
}

uint64_t sub_1C113B1F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C113B25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for PhotosLoopingItemsPageControl(0, v13) - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return sub_1C11393A8(a1, v11, v5, v6, v7, v8, v9, a2);
}

unint64_t sub_1C113B324()
{
  result = qword_1EDE76D10;
  if (!qword_1EDE76D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE949F0, &qword_1C12BAB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE949F8, &qword_1C12BAB28);
    sub_1C113B3E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76D10);
  }

  return result;
}

unint64_t sub_1C113B3E4()
{
  result = qword_1EDE77058;
  if (!qword_1EDE77058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE949F8, &qword_1C12BAB28);
    sub_1C113B470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77058);
  }

  return result;
}

unint64_t sub_1C113B470()
{
  result = qword_1EDE770F8;
  if (!qword_1EDE770F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A00, &qword_1C12BAB30);
    sub_1C113B4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770F8);
  }

  return result;
}

unint64_t sub_1C113B4FC()
{
  result = qword_1EDE771C8;
  if (!qword_1EDE771C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A08, &qword_1C12BAB38);
    sub_1C113B5B4();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771C8);
  }

  return result;
}

unint64_t sub_1C113B5B4()
{
  result = qword_1EDE77340;
  if (!qword_1EDE77340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A10, &qword_1C12BAB40);
    sub_1C113B640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77340);
  }

  return result;
}

unint64_t sub_1C113B640()
{
  result = qword_1EDE76CD8;
  if (!qword_1EDE76CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A18, &qword_1C12BAB48);
    sub_1C113B6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76CD8);
  }

  return result;
}

unint64_t sub_1C113B6C4()
{
  result = qword_1EDE76EB0;
  if (!qword_1EDE76EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A20, &qword_1C12BAB50);
    sub_1C113B750();
    sub_1C113B7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EB0);
  }

  return result;
}

unint64_t sub_1C113B750()
{
  result = qword_1EDE77330;
  if (!qword_1EDE77330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A28, &unk_1C12BAB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77330);
  }

  return result;
}

unint64_t sub_1C113B7D4()
{
  result = qword_1EDE76C60;
  if (!qword_1EDE76C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76C60);
  }

  return result;
}

uint64_t sub_1C113B828()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(sub_1C1266790() - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v13[0] = v1;
  v13[1] = v2;
  v9 = (v7 + 56) & ~v7;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v10 = *(type metadata accessor for PhotosLoopingItemsPageControl(0, v13) - 8);
  v11 = v0 + ((v9 + v8 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1C113A2CC(v0 + v9, v11, v1, v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return swift_getWitnessTable();
}

uint64_t PhotosMockVideoPlayerView.init(player:showProgessBar:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

void PhotosMockVideoPlayerView.body.getter(uint64_t *a7@<X8>)
{
  v9 = *v7;
  *a7 = sub_1C12659A0();
  a7[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A40, &qword_1C12BABC0);
  sub_1C113BAA8(v9, (a7 + *(v11 + 44)));
}

void sub_1C113BAA8(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A78, &qword_1C12BADB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A80, &qword_1C12BADC0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A88, &qword_1C12BADC8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810, &qword_1C12BADD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C12A3440;
  sub_1C113C53C();
  v21 = *(a1 + 16);
  sub_1C113C53C();
  *(v20 + 32) = sub_1C1265110();
  sub_1C113C53C();
  *(v20 + 40) = sub_1C1265110();
  v22 = MEMORY[0x1C68EF140](v20);
  sub_1C12658F0();
  *&v12[*(v10 + 64)] = 256;
  v23 = sub_1C1265160();
  sub_1C11C3558(v23);

  sub_1C0FD1A5C(v12, &qword_1EBE94A80, &qword_1C12BADC0);
  v24 = sub_1C113C53C() / v21;
  v25 = v24 * 360.0 * 0.0174532925;
  sub_1C1265B90();
  v27 = v26;
  v29 = v28;
  v30 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A90, &qword_1C12BADD8) + 36)];
  *v30 = v25;
  *(v30 + 1) = v27;
  *(v30 + 2) = v29;
  sub_1C12659A0();
  sub_1C1262C80();
  v31 = &v19[*(v14 + 44)];
  v39 = v19;
  v32 = v43;
  *v31 = v42;
  *(v31 + 1) = v32;
  *(v31 + 2) = v44;
  *v8 = sub_1C1263AA0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A98, &qword_1C12BADE0);
  sub_1C113BF10(a1, &v8[*(v33 + 44)]);
  sub_1C10D1A1C(v19, v16, &qword_1EBE94A88, &qword_1C12BADC8);
  v34 = v40;
  sub_1C10D1A1C(v8, v40, &qword_1EBE94A78, &qword_1C12BADB8);
  v35 = v41;
  *v41 = v22;
  *(v35 + 4) = 256;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AA0, &qword_1C12BADE8);
  sub_1C10D1A1C(v16, v36 + *(v37 + 48), &qword_1EBE94A88, &qword_1C12BADC8);
  sub_1C10D1A1C(v34, v36 + *(v37 + 64), &qword_1EBE94A78, &qword_1C12BADB8);

  sub_1C0FD1A5C(v8, &qword_1EBE94A78, &qword_1C12BADB8);
  sub_1C0FD1A5C(v39, &qword_1EBE94A88, &qword_1C12BADC8);
  sub_1C0FD1A5C(v34, &qword_1EBE94A78, &qword_1C12BADB8);
  sub_1C0FD1A5C(v16, &qword_1EBE94A88, &qword_1C12BADC8);
}

uint64_t sub_1C113BF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AA8, &qword_1C12BADF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v11 = sub_1C113C53C() / *(a1 + 16);
  *&v16[2] = v11;
  v17 = 0;
  v16[1] = 1065353216;
  sub_1C10FAA30();
  sub_1C1262BC0();
  v12 = *(v5 + 16);
  v12(v7, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AB0, &qword_1C12BADF8);
  v12((a2 + *(v13 + 48)), v7, v4);
  v14 = *(v5 + 8);
  v14(v10, v4);
  return (v14)(v7, v4);
}

uint64_t PhotosMockVideoPlayer.__allocating_init(duration:)(double a1)
{
  v2 = swift_allocObject();
  PhotosMockVideoPlayer.init(duration:)(v2, a1);
  return v2;
}

uint64_t PhotosMockVideoPlayer.init(duration:)(uint64_t a1, double a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  sub_1C1261F60();
  if (a2 <= 0.0)
  {
    result = sub_1C1266B70();
    __break(1u);
  }

  else
  {
    *(v2 + 16) = a2;
    return v2;
  }

  return result;
}

void sub_1C113C1AC(double a1)
{
  swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    OUTLINED_FUNCTION_10_26(v5, v6, v7);
  }
}

void sub_1C113C260(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
    sub_1C113C6DC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_10_26(v5, v6, v7);
  }
}

void sub_1C113C310(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 33) == v2)
  {
    *(v1 + 33) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_10_26(v5, v6, v7);
  }
}

void sub_1C113C3BC(void *a1)
{
  v3 = *(v1 + 40);
  v4 = v3;
  LOBYTE(v3) = sub_1C113CFE8(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_10_26(v7, v8, v9);
  }

  else
  {
    v10 = *(v1 + 40);
    *(v1 + 40) = a1;
  }
}

double sub_1C113C53C()
{
  swift_getKeyPath();
  v1 = sub_1C113CF44();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 24, v3);
  return *(v0 + 24);
}

uint64_t sub_1C113C5A4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

uint64_t (*sub_1C113C618())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C113CF44();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C113C4A4();
  return sub_1C113C6D0;
}

void sub_1C113C6DC()
{
  if (sub_1C113C7F4())
  {

    sub_1C113CC64();
  }

  else
  {

    sub_1C113CDF0();
  }
}

void (*sub_1C113C720(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6(v1 + 32);
  return sub_1C113C768;
}

void sub_1C113C768(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C113C6DC();
  }
}

uint64_t sub_1C113C79C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C113C7F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C113C7F4()
{
  swift_getKeyPath();
  v1 = sub_1C113CF44();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 32, v3);
  return *(v0 + 32);
}

void sub_1C113C85C(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  sub_1C113C6DC();
}

uint64_t (*sub_1C113C8B8())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C113CF44();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C113C720(v2);
  return sub_1C113C970;
}

uint64_t sub_1C113C9C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C113CA18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C113CA18()
{
  swift_getKeyPath();
  v1 = sub_1C113CF44();
  OUTLINED_FUNCTION_6(v1, v2);

  OUTLINED_FUNCTION_7_4(v0 + 33, v3);
  return *(v0 + 33);
}

uint64_t sub_1C113CA80(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 33) = a2;
  return result;
}

uint64_t (*sub_1C113CAD4())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C113CF44();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C113C97C();
  return sub_1C113CB8C;
}

void *sub_1C113CB98()
{
  swift_getKeyPath();
  v1 = sub_1C113CF44();
  OUTLINED_FUNCTION_6(v1, v2);

  v3 = *(v0 + 40);
  v4 = v3;
  return v3;
}

void sub_1C113CC00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C113C3BC(v1);
}

void sub_1C113CC30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  v3 = a2;
}

void sub_1C113CC64()
{
  v0 = sub_1C113CB98();
  if (v0)
  {
  }

  else
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_weakInit();
    v5[4] = sub_1C113D438;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C10CB7AC;
    v5[3] = &block_descriptor_11;
    v3 = _Block_copy(v5);

    v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.03];
    _Block_release(v3);
    sub_1C113C3BC(v4);
  }
}

double sub_1C113CD98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C113CE38();
  }

  return result;
}

void sub_1C113CDF0()
{
  v0 = sub_1C113CB98();
  [v0 invalidate];

  sub_1C113C3BC(0);
}

void sub_1C113CE38()
{
  v1 = sub_1C113C53C() + 0.03;
  v2 = *(v0 + 16);
  if (v2 < v1)
  {
    v1 = v1 - v2;
  }

  sub_1C113C1AC(v1);
}

unint64_t sub_1C113CF44()
{
  result = qword_1EBE94A50;
  if (!qword_1EBE94A50)
  {
    type metadata accessor for PhotosMockVideoPlayer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94A50);
  }

  return result;
}

uint64_t type metadata accessor for PhotosMockVideoPlayer(uint64_t a1)
{
  result = qword_1EBE94A58;
  if (!qword_1EBE94A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C113CFE8(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C0FE7B20();
    v5 = a1;
    v6 = a2;
    v2 = sub_1C12666B0();
  }

  return (v2 & 1) == 0;
}

uint64_t PhotosMockVideoPlayer.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockVideoPlayer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C113D194(uint64_t a1)
{
  result = sub_1C1261F70();
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

unint64_t sub_1C113D3D4()
{
  result = qword_1EBE94A68;
  if (!qword_1EBE94A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A70, &qword_1C12BAD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94A68);
  }

  return result;
}

uint64_t View.photosShapeOverlay<A>(color:shape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v24 = a3;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PhotosShapeOverlay(0, v13, v14, v13);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - v20;
  (*(v10 + 16))(v12, a2, a4, v19);
  sub_1C113D7B8(v12, a1, a4, a6, v21);

  MEMORY[0x1C68EE920](v21, v24, v15, v25);
  return (*(v17 + 8))(v21, v15);
}

uint64_t sub_1C113D624(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v12);
  (*(v8 + 16))(v10, a1, a4);
  return sub_1C12629B0();
}

uint64_t sub_1C113D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for PhotosShapeOverlay(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t PhotosShapeOverlay.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v38 = a3;
  v35 = *(a2 + 16);
  v4 = sub_1C100AE3C();
  v33 = *(a2 + 24);
  v34 = v4;
  v41 = MEMORY[0x1E6981EF8];
  v42 = v35;
  v43 = v4;
  v44 = v33;
  v5 = sub_1C12638F0();
  OUTLINED_FUNCTION_0();
  v36 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - v8;
  OUTLINED_FUNCTION_4_43();
  WitnessTable = swift_getWitnessTable();
  v41 = v5;
  v42 = MEMORY[0x1E69815C0];
  v43 = WitnessTable;
  v44 = MEMORY[0x1E6981568];
  v10 = sub_1C12629C0();
  OUTLINED_FUNCTION_0();
  v31 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - v13;
  OUTLINED_FUNCTION_1_39();
  swift_getWitnessTable();
  sub_1C1263DE0();
  OUTLINED_FUNCTION_3_38();
  v28[0] = swift_getWitnessTable();
  v28[1] = sub_1C12633A0();
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v30 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v28 - v21;
  v23 = v32;
  sub_1C113DBC8(v32, 0, MEMORY[0x1E6981EF8], v35, v9);
  v41 = *(v23 + *(a2 + 36));
  sub_1C113D624(&v41, 256, v5, MEMORY[0x1E69815C0], WitnessTable, MEMORY[0x1E6981568]);
  (*(v36 + 8))(v9, v5);
  v24 = OUTLINED_FUNCTION_6_30();
  sub_1C12659A0();
  sub_1C1264F80();
  (*(v31 + 8))(v14, v10);
  OUTLINED_FUNCTION_5_3();
  v25 = swift_getWitnessTable();
  v39 = v24;
  v40 = v25;
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v26 = *(v30 + 8);
  v26(v19, v15);
  sub_1C0FDBA4C();
  return (v26)(v22, v15);
}

uint64_t sub_1C113DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = a2;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  (*(v12 + 16))(v14, a1, a4);
  return sub_1C113E0A8(v18, v14, v9, a3, a4, x8_0);
}

uint64_t sub_1C113DDA0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C113DEDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C113E0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v12 = sub_1C12638F0();
  result = (*(*(a5 - 8) + 32))(a8 + *(v12 + 52), a2, a5);
  *(a8 + *(v12 + 56)) = a3;
  return result;
}

uint64_t sub_1C113E18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1C1264700();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = a4;
  v15[3] = a3;
  type metadata accessor for PhotosCircularButton(0);
  if (qword_1EDE7AB18 != -1)
  {
    swift_once();
  }

  v15[1] = qword_1EDE9B648;
  (*(v11 + 104))(v13, *MEMORY[0x1E6980EF8], v10);
  sub_1C100D418();
  sub_1C1262BD0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = sub_1C1262C90();
  result = sub_1C1262C90();
  a5[3] = result;
  return result;
}

uint64_t PhotosCircularButton.init<A, B>(symbolName:foregroundStyle:backgroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a8@<X8>)
{
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v15 = v14 - v13;
  v36 = v16;
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v22 = v21 - v20;
  v23 = sub_1C1264700();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v29 = v28 - v27;
  type metadata accessor for PhotosCircularButton(0);
  if (qword_1EDE7AB18 != -1)
  {
    swift_once();
  }

  (*(v25 + 104))(v29, *MEMORY[0x1E6980EF8], v23);
  sub_1C100D418();
  sub_1C1262BD0();
  *a8 = a1;
  a8[1] = a2;
  (*(v18 + 16))(v22, a3, v36);
  a8[2] = sub_1C1262C90();
  (*(v11 + 16))(v15, a4, a5);
  v30 = sub_1C1262C90();
  (*(v11 + 8))(a4, a5);
  result = (*(v18 + 8))(a3, v36);
  a8[3] = v30;
  return result;
}

uint64_t type metadata accessor for PhotosCircularButton(uint64_t a1)
{
  result = qword_1EBE94AD0;
  if (!qword_1EBE94AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosCircularButton.init(symbolName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C1263070();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  sub_1C1263060();
  v7 = sub_1C1262C90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AB8, &qword_1C12BAE80);
  sub_1C0FDB6D4(&qword_1EDE76D58, &qword_1EBE94AB8, &qword_1C12BAE80, MEMORY[0x1E69809C8]);
  v8 = sub_1C1262C90();
  return sub_1C113E18C(a1, a2, v7, v8, a3);
}

double PhotosCircularButton.makeBody(configuration:)@<D0>(uint64_t *a7@<X8>)
{
  *a7 = sub_1C12659A0();
  a7[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AC0, &unk_1C12BAE88);
  sub_1C113E844(v7, (a7 + *(v10 + 44)));
  type metadata accessor for PhotosCircularButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
  sub_1C1262BF0();
  sub_1C1262BF0();
  sub_1C12659A0();
  sub_1C1262C80();
  v11 = (a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AC8, &qword_1C12BAE98) + 36));
  *v11 = v13;
  v11[1] = v14;
  result = *&v15;
  v11[2] = v15;
  return result;
}

double sub_1C113E844@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v36 = sub_1C1264680();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AF8, &qword_1C12BAF00);
  MEMORY[0x1EEE9AC00](v35);
  v7 = (&v32 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B00, &qword_1C12BAF08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = a1[3];
  v32 = &v32 - v13;
  v33 = v12;

  v14 = sub_1C1265320();
  v15 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30, &qword_1C12B8F00) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v17 = *MEMORY[0x1E69816E0];
  v18 = sub_1C1265340();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  v19 = a1[2];
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B08, &qword_1C12BAF40) + 36)) = v19;

  sub_1C1264530();
  v20 = v36;
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v36);
  v21 = sub_1C12646C0();

  (*(v3 + 8))(v5, v20);
  KeyPath = swift_getKeyPath();
  v23 = (v7 + *(v35 + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  sub_1C12645B0();
  sub_1C113EE04();
  v24 = v32;
  sub_1C1264990();
  sub_1C113EF74(v7);
  v25 = *(v9 + 16);
  v26 = v34;
  v25(v34, v24, v8);
  v27 = v37;
  *v37 = v33;
  *(v27 + 4) = 256;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B28, &qword_1C12BAF78);
  v25(v28 + *(v29 + 48), v26, v8);
  v30 = *(v9 + 8);

  v30(v24, v8);
  v30(v26, v8);

  return result;
}

uint64_t sub_1C113EC44()
{
  result = MEMORY[0x1C68F0CE0]();
  v1 = 32.0;
  if (!result)
  {
    v1 = 30.0;
  }

  qword_1EDE9B648 = *&v1;
  return result;
}

void sub_1C113ECC0(uint64_t a1)
{
  sub_1C100D3BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C113ED4C()
{
  result = qword_1EBE94AE0;
  if (!qword_1EBE94AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94AC8, &qword_1C12BAE98);
    sub_1C0FDB6D4(&qword_1EBE94AE8, &qword_1EBE94AF0, &qword_1C12BAEF8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94AE0);
  }

  return result;
}

unint64_t sub_1C113EE04()
{
  result = qword_1EBE94B10;
  if (!qword_1EBE94B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94AF8, &qword_1C12BAF00);
    sub_1C113EEBC();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94B10);
  }

  return result;
}

unint64_t sub_1C113EEBC()
{
  result = qword_1EBE94B18;
  if (!qword_1EBE94B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B08, &qword_1C12BAF40);
    sub_1C100DB54();
    sub_1C0FDB6D4(&qword_1EDE7BA58, &qword_1EBE94B20, &qword_1C12C5DA0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94B18);
  }

  return result;
}

uint64_t sub_1C113EF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AF8, &qword_1C12BAF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C113EFDC()
{
  qword_1EDE7C280 = &type metadata for FallbackValues;
  unk_1EDE7C288 = &off_1F40793E8;
  v0 = swift_allocObject();
  qword_1EDE7C268 = v0;
  result = 0.75;
  *(v0 + 16) = xmmword_1C12BAF80;
  *(v0 + 32) = vdupq_n_s64(0x4059000000000000uLL);
  *(v0 + 48) = 0x4059000000000000;
  return result;
}

uint64_t photosCollectionTitleOverlaySettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7C260 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1EDE7C260);
  }

  swift_beginAccess();
  return sub_1C0FDB0A8(&qword_1EDE7C268, a1);
}

uint64_t photosCollectionTitleOverlaySettings.setter(uint64_t *a1)
{
  if (qword_1EDE7C260 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1EDE7C260);
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EDE7C268, a1, v2);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t (*photosCollectionTitleOverlaySettings.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDE7C260 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1EDE7C260);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t View.selectionStyle(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C0FDB0A8(a1, v6);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(v7, __src, sizeof(v7));
  KeyPath = swift_getKeyPath();
  v9 = 0;
  v10 = swift_getKeyPath();
  v11 = 0;
  v12 = swift_getKeyPath();
  v13 = 0;
  MEMORY[0x1C68EE920](v6, a2, &type metadata for PhotosSelectionStyle, a3);
  return sub_1C113F314(v6);
}

uint64_t sub_1C113F350()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C113F490()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *(v0 + 272);
  if (*(v0 + 280) != 1)
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v11[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C113F350();
    sub_1C0FDB0A8(v0, v11);
    PhotosSelection.isItemSelected(_:)();
    v6 = v8;

    sub_1C0FD1A5C(v11, &qword_1EBE91420, &unk_1C12B70C0);
    return v6 & 1;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 0;
  return v6 & 1;
}

BOOL sub_1C113F634()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 288);
  if (*(v0 + 296) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1C113F780()
{
  v0 = sub_1C1263AE0();
  MEMORY[0x1EEE9AC00](v0);
  if (sub_1C113F490())
  {
    sub_1C1263AD0();
    sub_1C10A06DC();
  }

  else
  {
    sub_1C1265170();
  }

  return sub_1C1262C90();
}

uint64_t PhotosSelectionStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B30, &unk_1C12BB090);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-v8 - 8];
  v10 = sub_1C113F634();
  sub_1C113F350();
  sub_1C0FDB0A8(v2, v22);
  PhotosSelection.isItemSelected(_:)();
  v12 = v11;

  sub_1C0FD1A5C(v22, &qword_1EBE91420, &unk_1C12B70C0);
  if (v10 || (v12 & 1) == 0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B38, &qword_1C12BB0A0);
  OUTLINED_FUNCTION_3();
  (*(v14 + 16))(v9, a1);
  *&v9[*(v7 + 44)] = v13;
  v15 = sub_1C12659A0();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B40, &qword_1C12BB0A8) + 36);
  sub_1C113FA08(v10, v3, v12 & 1, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B48, &qword_1C12BB0B0) + 36));
  *v19 = v15;
  v19[1] = v17;
  return sub_1C0FDB71C(v9, a2, &qword_1EBE94B30, &unk_1C12BB090);
}

uint64_t sub_1C113FA08@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v48) = a3;
  LODWORD(v52) = a1;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B50, &qword_1C12BB318);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v45 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B58, &qword_1C12BB320);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1C12637E0();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C1263310();
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B60, &qword_1C12BB328);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  if (v52)
  {
    v45 = &v45 - v21;
    v48 = v10;
    v52 = v5;
    memcpy(v58, (a2 + 40), 0xD1uLL);
    memcpy(v59, (a2 + 40), 0xD1uLL);
    if (sub_1C100D688(v59) == 1)
    {
      nullsub_1();
      memcpy(v55, v58, sizeof(v55));
      nullsub_1();
      memcpy(v57, v22, sizeof(v57));
      memcpy(v56, v58, 0xD1uLL);
      nullsub_1();
      sub_1C100D690(v23, &v54);
    }

    else
    {
      nullsub_1();
      memcpy(v55, v58, sizeof(v55));
      nullsub_1();
      memcpy(v56, v58, 0xD1uLL);
      nullsub_1();

      sub_1C1266420();
      v29 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v58, &qword_1EBE91C80, &qword_1C12A75B0);
      (*(v46 + 8))(v13, v47);
    }

    memcpy(v56, v57, 0xD0uLL);
    sub_1C100C7D0(v56);
    v30 = v56[0];
    v31 = *(v49 + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_1C12639D0();
    (*(*(v33 - 8) + 104))(&v15[v31], v32, v33);
    *v15 = v30;
    *(v15 + 1) = v30;
    v34 = v51;
    sub_1C107CD70(v15, v51);
    *(v34 + *(v50 + 20)) = 0xC004000000000000;
    v35 = sub_1C113F780();
    sub_1C1262B10();
    sub_1C10A061C(v34, v19);
    v36 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A30, &unk_1C12B0240) + 36)];
    v37 = *&v55[16];
    *v36 = *v55;
    *(v36 + 1) = v37;
    *(v36 + 4) = *&v55[32];
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A38, &unk_1C12BB340);
    *&v19[*(v38 + 52)] = v35;
    *&v19[*(v38 + 56)] = 256;
    v39 = sub_1C12659A0();
    v41 = v40;
    sub_1C10A0680(v34);
    v42 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A40, &qword_1C12B0250) + 36)];
    *v42 = v39;
    v42[1] = v41;
    v26 = &qword_1EBE94B60;
    v27 = &qword_1C12BB328;
    v43 = v45;
    sub_1C0FDB71C(v19, v45, &qword_1EBE94B60, &qword_1C12BB328);
    sub_1C0FDB800(v43, v48, &qword_1EBE94B60, &qword_1C12BB328);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7BD08, &qword_1EBE94B60, &qword_1C12BB328, MEMORY[0x1E697E8C0]);
    sub_1C1140F78();
    sub_1C1263C20();
    v28 = v43;
  }

  else
  {
    *v7 = sub_1C12659A0();
    v7[1] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B68, &qword_1C12BB330);
    sub_1C11400FC(v48 & 1, a2, v7 + *(v25 + 44));
    *(v7 + *(v5 + 36)) = 0;
    v26 = &qword_1EBE94B50;
    v27 = &qword_1C12BB318;
    sub_1C0FDB800(v7, v10, &qword_1EBE94B50, &qword_1C12BB318);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7BD08, &qword_1EBE94B60, &qword_1C12BB328, MEMORY[0x1E697E8C0]);
    sub_1C1140F78();
    sub_1C1263C20();
    v28 = v7;
  }

  return sub_1C0FD1A5C(v28, v26, v27);
}

uint64_t sub_1C11400FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B78, &qword_1C12BB350);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B80, &qword_1C12BB358);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v46 - v10);
  v12 = sub_1C12637E0();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B88, &qword_1C12BB360);
  MEMORY[0x1EEE9AC00](v53);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B90, &qword_1C12BB368);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v46 - v26;
  if (a1)
  {
    v46 = v24;
    v47 = v25;
    v49 = v5;
    memcpy(v61, (a2 + 40), 0xD1uLL);
    v48 = a2;
    memcpy(v62, (a2 + 40), 0xD1uLL);
    if (sub_1C100D688(v62) == 1)
    {
      nullsub_1();
      memcpy(v58, v61, sizeof(v58));
      nullsub_1();
      memcpy(v60, v28, sizeof(v60));
      memcpy(v59, v61, 0xD1uLL);
      nullsub_1();
      sub_1C100D690(v29, &v57);
    }

    else
    {
      nullsub_1();
      memcpy(v58, v61, sizeof(v58));
      nullsub_1();
      memcpy(v59, v61, 0xD1uLL);
      nullsub_1();

      sub_1C1266420();
      v32 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v61, &qword_1EBE91C80, &qword_1C12A75B0);
      (*(v50 + 8))(v14, v51);
    }

    memcpy(v59, v60, 0xD0uLL);
    sub_1C100C7D0(v59);
    v33 = v59[0];
    v34 = *(v52 + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_1C12639D0();
    (*(*(v36 - 8) + 104))(&v16[v34], v35, v36);
    *v16 = v33;
    *(v16 + 1) = v33;
    v37 = sub_1C1265150();
    sub_1C107CD70(v16, v18);
    v38 = v53;
    *&v18[*(v53 + 52)] = v37;
    *&v18[*(v38 + 56)] = 256;
    sub_1C0FDB71C(v18, v22, &qword_1EBE94B88, &qword_1C12BB360);
    *&v22[*(v46 + 36)] = 0x3FC999999999999ALL;
    sub_1C0FDB71C(v22, v27, &qword_1EBE94B90, &qword_1C12BB368);
    *v11 = sub_1C12659A0();
    v11[1] = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B98, &qword_1C12BB370);
    sub_1C1140788(v11 + *(v40 + 44));
    v41 = v47;
    sub_1C0FDB800(v27, v47, &qword_1EBE94B90, &qword_1C12BB368);
    v42 = v54;
    sub_1C0FDB800(v11, v54, &qword_1EBE94B80, &qword_1C12BB358);
    v43 = v55;
    sub_1C0FDB800(v41, v55, &qword_1EBE94B90, &qword_1C12BB368);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BA0, &qword_1C12BB378);
    sub_1C0FDB800(v42, v43 + *(v44 + 48), &qword_1EBE94B80, &qword_1C12BB358);
    sub_1C0FD1A5C(v11, &qword_1EBE94B80, &qword_1C12BB358);
    sub_1C0FD1A5C(v27, &qword_1EBE94B90, &qword_1C12BB368);
    sub_1C0FD1A5C(v42, &qword_1EBE94B80, &qword_1C12BB358);
    sub_1C0FD1A5C(v41, &qword_1EBE94B90, &qword_1C12BB368);
    v45 = v56;
    sub_1C0FDB71C(v43, v56, &qword_1EBE94B78, &qword_1C12BB350);
    return __swift_storeEnumTagSinglePayload(v45, 0, 1, v49);
  }

  else
  {
    v30 = v56;

    return __swift_storeEnumTagSinglePayload(v30, 1, 1, v5);
  }
}

uint64_t sub_1C1140788@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1C12650F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BA8, &qword_1C12BB380);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BB0, &qword_1C12BB388);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BB8, &qword_1C12BB390);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44[-v15];
  v49 = sub_1C12652F0();
  v48 = sub_1C12650E0();
  KeyPath = swift_getKeyPath();
  v46 = sub_1C1140C14();
  v45 = sub_1C1264470();
  (*(v2 + 104))(v4, *MEMORY[0x1E69814C8], v1);
  v17 = sub_1C1265250();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BC0, &unk_1C12BB3C8) + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v20 = *MEMORY[0x1E69816C0];
  v21 = sub_1C1265340();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = KeyPath;
  *v8 = v49;
  *(v8 + 1) = v22;
  v23 = v46;
  *(v8 + 2) = v48;
  *(v8 + 3) = v23;
  v8[32] = v45;
  *(v8 + 33) = 256;
  *(v8 + 5) = v17;
  *(v8 + 6) = 0x4014000000000000;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BC8, &qword_1C12BB408) + 36)] = 0x3FF0000000000000;
  v8[*(v6 + 44)] = sub_1C12644C0();
  sub_1C1265970();
  sub_1C1263390();
  sub_1C0FDB71C(v8, v12, &qword_1EBE94BA8, &qword_1C12BB380);
  memcpy(&v12[*(v10 + 44)], __src, 0x70uLL);
  LOBYTE(v19) = sub_1C12644C0();
  sub_1C12628A0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1C0FDB71C(v12, v16, &qword_1EBE94BB0, &qword_1C12BB388);
  v32 = &v16[*(v14 + 44)];
  *v32 = v19;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v19) = sub_1C1264490();
  sub_1C12628A0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v50;
  sub_1C0FDB71C(v16, v50, &qword_1EBE94BB8, &qword_1C12BB390);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BD0, &unk_1C12BB410);
  v43 = v41 + *(result + 36);
  *v43 = v19;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_1C1140C14()
{
  v0 = UIAccessibilityDarkerSystemColorsEnabled();
  sub_1C1008F18();
  sub_1C12650E0();
  v1 = sub_1C1266680();
  v2 = v1;
  if (!v0)
  {
    [v1 px_luminance];
    if (v11 <= 0.85)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_1C1265160();
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  [v2 px:v4 contrastRatioToColor:?];
  v6 = v5;

  v7 = [v3 whiteColor];
  [v2 px:v7 contrastRatioToColor:?];
  v9 = v8;

  if (v9 < v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1C1265190();
LABEL_6:
  v12 = v10;

  return v12;
}

uint64_t sub_1C1140D28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 297))
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

uint64_t sub_1C1140D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1140E08()
{
  result = qword_1EDE77250;
  if (!qword_1EDE77250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B40, &qword_1C12BB0A8);
    sub_1C1140EC0();
    sub_1C0FDB6D4(&qword_1EDE76FB8, &qword_1EBE94B48, &qword_1C12BB0B0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77250);
  }

  return result;
}

unint64_t sub_1C1140EC0()
{
  result = qword_1EDE7BF10;
  if (!qword_1EDE7BF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B30, &unk_1C12BB090);
    sub_1C0FDB6D4(&qword_1EDE7BB30, &qword_1EBE94B38, &qword_1C12BB0A0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF10);
  }

  return result;
}

unint64_t sub_1C1140F78()
{
  result = qword_1EDE772E0;
  if (!qword_1EDE772E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B50, &qword_1C12BB318);
    sub_1C0FDB6D4(&qword_1EDE76BA8, &qword_1EBE94B70, &qword_1C12BB338, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772E0);
  }

  return result;
}

uint64_t sub_1C1141034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v91 = a2;
  v5 = sub_1C1265870();
  OUTLINED_FUNCTION_0();
  v89 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v88 = v9 - v8;
  v10 = type metadata accessor for PhotosKeySelection(0);
  v84 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v86 = v11;
  v87 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263820();
  OUTLINED_FUNCTION_0();
  v80 = v13;
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v79 = v15 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BD8, &qword_1C12BB518);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v76 = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BE0, &qword_1C12BB520);
  OUTLINED_FUNCTION_0();
  v78 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v77 = v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BE8, &qword_1C12BB528);
  OUTLINED_FUNCTION_0();
  v82 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v93 = v23;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BF0, &qword_1C12BB530);
  OUTLINED_FUNCTION_0();
  v85 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34();
  v83 = v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BF8, &qword_1C12BB538);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_34();
  v95 = v28;
  v29 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v35 = v34 - v33;
  v36 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_1C1266420();
    v67 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v36, 0);
    (*(v31 + 8))(v35, v29);
    if (v98 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C00, &unk_1C12BB540);
    OUTLINED_FUNCTION_3();
    (*(v69 + 16))(v95, a1, v68);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_46();
    sub_1C0FDB6D4(v70, &qword_1EBE94C00, &unk_1C12BB540, v71);
    v72 = sub_1C11420BC();
    v98 = v92;
    v99 = v72;
    v73 = OUTLINED_FUNCTION_4_44();
    v98 = v97;
    v99 = v73;
    v74 = OUTLINED_FUNCTION_3_39();
    v98 = v96;
    v99 = v74;
    OUTLINED_FUNCTION_5_29();
    return sub_1C1263C20();
  }

  if (v36)
  {
    goto LABEL_7;
  }

LABEL_3:
  v75[0] = v29;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C00, &unk_1C12BB540);
  OUTLINED_FUNCTION_3();
  v39 = *(v38 + 16);
  v40 = v76;
  v75[1] = v41;
  v39(v76, a1);
  v42 = v92;
  v43 = v40 + *(v92 + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 1;
  v44 = v79;
  sub_1C1263810();
  v45 = sub_1C11420BC();
  v46 = v77;
  sub_1C1265070();
  (*(v80 + 8))(v44, v81);
  sub_1C11421A0(v40);
  v98 = v42;
  v99 = v45;
  v47 = OUTLINED_FUNCTION_4_44();
  v48 = v97;
  sub_1C1264D00();
  (*(v78 + 8))(v46, v48);
  v49 = *(v3 + 16);
  LOBYTE(v48) = *(v3 + 24);

  if ((v48 & 1) == 0)
  {
    sub_1C1266420();
    v50 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v31 + 8))(v35, v75[0]);
    v49 = v98;
  }

  v51 = *(v49 + 16);

  v52 = v87;
  sub_1C1142208(v3, v87);
  v53 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v54 = swift_allocObject();
  sub_1C114226C(v52, v54 + v53);
  v55 = v88;
  sub_1C1141B80();
  v98 = v97;
  v99 = v47;
  v56 = OUTLINED_FUNCTION_3_39();
  v57 = v83;
  v58 = v96;
  v59 = v93;
  MEMORY[0x1C68EE2F0](v51, v55, sub_1C11422D0, v54, v96, v56);

  (*(v89 + 8))(v55, v5);
  (*(v82 + 8))(v59, v58);
  v60 = v85;
  v61 = v90;
  (*(v85 + 16))(v95, v57, v90);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_46();
  sub_1C0FDB6D4(v62, v63, v64, v65);
  v98 = v58;
  v99 = v56;
  OUTLINED_FUNCTION_5_29();
  sub_1C1263C20();
  return (*(v60 + 8))(v57, v61);
}

uint64_t sub_1C11418D0()
{
  sub_1C1142398();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1141948@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1C1263150();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);

  if ((v11 & 1) == 0)
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    v16 = v3;
    v13 = v12;
    sub_1C1262620();

    v3 = v16;
    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  type metadata accessor for PhotosKeySelection(0);
  sub_1C0FD7674(v6);
  sub_1C112D468();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C1141B80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C08, &qword_1C12BB550);
  sub_1C1265870();
  *(swift_allocObject() + 16) = xmmword_1C12A3440;
  sub_1C1265850();
  sub_1C1265860();
  sub_1C1142350(&unk_1EDE7B7A0, MEMORY[0x1E697D760], MEMORY[0x1E697D768]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C10, &qword_1C12BB558);
  sub_1C0FDB6D4(&qword_1EDE7B710, &qword_1EBE94C10, &qword_1C12BB558, MEMORY[0x1E69E6328]);
  return sub_1C1266870();
}

uint64_t View.photosKeySelection(scrollViewProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosKeySelection(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v12 = *(v11 + 28);
  sub_1C1263240();
  OUTLINED_FUNCTION_3();
  (*(v13 + 16))(v10 + v12, a1);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v14 = *(v6 + 24);
  *(v10 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1C68EE920](v10, a2, v6, a3);
  return sub_1C1141E8C(v10);
}

uint64_t type metadata accessor for PhotosKeySelection(uint64_t a1)
{
  result = qword_1EDE82878;
  if (!qword_1EDE82878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1141E8C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosKeySelection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1141F10(uint64_t a1)
{
  sub_1C1141FFC();
  if (v1 <= 0x3F)
  {
    sub_1C114204C(319, &qword_1EDE77638, type metadata accessor for PhotosSelectionCoordinator);
    if (v2 <= 0x3F)
    {
      sub_1C114204C(319, &qword_1EDE77570, MEMORY[0x1E697E7E0]);
      if (v3 <= 0x3F)
      {
        sub_1C1263240();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1141FFC()
{
  if (!qword_1EDE77540)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77540);
    }
  }
}

void sub_1C114204C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C11420BC()
{
  result = qword_1EDE77438;
  if (!qword_1EDE77438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BD8, &qword_1C12BB518);
    sub_1C0FDB6D4(&qword_1EDE7BB40, &qword_1EBE94C00, &unk_1C12BB540, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77438);
  }

  return result;
}

uint64_t sub_1C11421A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BD8, &qword_1C12BB518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1142208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosKeySelection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C114226C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosKeySelection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11422D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosKeySelection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C1141948(v4, a1);
}

uint64_t sub_1C1142350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1142398()
{
  result = qword_1EDE78C18;
  if (!qword_1EDE78C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78C18);
  }

  return result;
}

unint64_t sub_1C11423FC()
{
  result = qword_1EDE76ED8;
  if (!qword_1EDE76ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C18, &qword_1C12BB580);
    sub_1C0FDB6D4(&qword_1EDE7BB40, &qword_1EBE94C00, &unk_1C12BB540, MEMORY[0x1E697FDF8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BE8, &qword_1C12BB528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BE0, &qword_1C12BB520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BD8, &qword_1C12BB518);
    sub_1C11420BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76ED8);
  }

  return result;
}

uint64_t PhotosMockSelectableItem.__allocating_init(selectionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C1261F60();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t PhotosMockSelectableItem.init(selectionIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_1C1261F60();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double sub_1C1142614(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1C1266D50() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    v9[3] = a1;
    v9[4] = a2;
    sub_1C11429A4(v8, sub_1C0FDFE54, v9);
  }

  return result;
}

uint64_t sub_1C1142708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1142774();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1C1142734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C1142614(v1, v2);
}

uint64_t sub_1C1142774()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_52(&qword_1EBE94C28);
  sub_1C1261F30();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t (*sub_1C1142810(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore24PhotosMockSelectableItem___observationRegistrar;
  *v3 = v1;
  v3[6] = OUTLINED_FUNCTION_0_52(&qword_1EBE94C28);
  sub_1C1261F30();

  *v3 = v1;
  swift_getKeyPath();
  sub_1C1261F50();

  v3[7] = sub_1C109E940(v3);
  return sub_1C114290C;
}

void sub_1C114290C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v1);
}

uint64_t type metadata accessor for PhotosMockSelectableItem(uint64_t a1)
{
  result = qword_1EBE94C40;
  if (!qword_1EBE94C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockSelectableItem.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore24PhotosMockSelectableItem___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockSelectableItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore24PhotosMockSelectableItem___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1142BAC(uint64_t a1)
{
  result = sub_1C1142C24(&qword_1EBE94C30, &protocol conformance descriptor for PhotosMockSelectableItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C1142C24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockSelectableItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1142C70(uint64_t a1)
{
  result = sub_1C1261F70();
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

id OneUpVideoScrubber.makeUIView(context:)()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x1E69585E0]) initWithSource_];
  swift_unknownObjectRelease();
  _s17PhotosSwiftUICore18OneUpVideoScrubberV12updateUIView_7contextySo22AVMediaTimelineControlC_0B2UI0I20RepresentableContextVyACGtF_0(v3);
  return v3;
}

void _s17PhotosSwiftUICore18OneUpVideoScrubberV12updateUIView_7contextySo22AVMediaTimelineControlC_0B2UI0I20RepresentableContextVyACGtF_0(void *a1)
{
  v3 = sub_1C12629F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  [a1 setUserInteractionEnabled_];
  v10 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  [a1 setSource_];
  swift_unknownObjectRelease();
  [a1 setDelegate_];
  swift_unknownObjectRelease();
  [a1 setFineScrubbingStyle_];
  v12 = [objc_opt_self() hiddenConfiguration];
  v13 = [objc_opt_self() defaultConfiguration];
  sub_1C114352C();
  v14 = sub_1C12239D8();

  [v13 setExtendedDynamicRangeGain_];
  sub_1C114367C(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  v15 = sub_1C12629D0();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  if (v15)
  {
    v17 = objc_opt_self();
    v18 = [v17 effectWithStyle_];
    v19 = [v17 effectWithStyle_];
LABEL_7:
    v31 = v19;
    [v13 setCurrentValueVisualEffect_];

    [v13 setMaxValueVisualEffect_];
    [v13 setLabelsConfiguration_];
    [a1 setConfiguration_];

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
  v20 = swift_allocObject();
  v32 = xmmword_1C12BB700;
  *(v20 + 16) = xmmword_1C12BB700;
  v21 = objc_opt_self();
  v22 = [v21 secondaryLabelColor];
  v23 = objc_opt_self();
  v24 = [v23 effectCompositingColor_];

  if (!v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C1143C64();
  *(v20 + 32) = v24;
  v25 = objc_opt_self();
  *(v20 + 40) = [v25 effectWithStyle_];
  v26 = sub_1C114386C(v20);
  if (!v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  v18 = v27;
  v29 = [v21 tertiarySystemFillColor];
  v30 = [v23 effectCompositingColor_];

  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v28 + 32) = v30;
  *(v28 + 40) = [v25 effectWithStyle_];
  v19 = sub_1C114386C(v28);
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
}

uint64_t type metadata accessor for OneUpVideoScrubber(uint64_t a1)
{
  result = qword_1EDE7D670;
  if (!qword_1EDE7D670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11433D4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for OneUpVideoScrubber(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1C114352C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for OneUpVideoScrubber(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1C114367C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpVideoScrubber(0);
  sub_1C101268C(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1C114386C(uint64_t a1)
{
  if (a1)
  {
    sub_1C1143C64();
    v1 = sub_1C12660A0();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() effectCombiningEffects_];

  return v2;
}

uint64_t sub_1C11438F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1143C20(&qword_1EDE7D688, &protocol conformance descriptor for OneUpVideoScrubber);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C1143974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1143C20(&qword_1EDE7D688, &protocol conformance descriptor for OneUpVideoScrubber);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11439F4(uint64_t a1)
{
  sub_1C1143C20(&qword_1EDE7D688, &protocol conformance descriptor for OneUpVideoScrubber);
  sub_1C1263BD0();
  __break(1u);
}

void sub_1C1143A60(uint64_t a1)
{
  sub_1C1143B4C();
  if (v1 <= 0x3F)
  {
    sub_1C1143BA4(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
    if (v2 <= 0x3F)
    {
      sub_1C1141FFC();
      if (v3 <= 0x3F)
      {
        sub_1C1143BA4(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1143B4C()
{
  result = qword_1EDE78668[0];
  if (!qword_1EDE78668[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDE78668);
  }

  return result;
}

void sub_1C1143BA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C1143C20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OneUpVideoScrubber(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1143C64()
{
  result = qword_1EDE7B690;
  if (!qword_1EDE7B690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B690);
  }

  return result;
}

uint64_t PhotosPlaybackOverlay.init(model:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  result = sub_1C1266610();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = (v7 == 2) | v7 & 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = result;
  *(a4 + 48) = v9;
  *(a4 + 52) = v10;
  *(a4 + 56) = v11;
  return result;
}

uint64_t sub_1C1143D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  if (a5)
  {
    v11 = sub_1C1263AA0();
    v19[0] = 1;
    sub_1C1143F9C(a1, a2, a3 & 1, a4, __src);
    memcpy(__dst, __src, 0xB1uLL);
    memcpy(v14, __src, 0xB1uLL);
    sub_1C102EFA0(__dst, v20, &qword_1EBE94D30, &qword_1C12BBC00);
    sub_1C0F9E21C(v14, &qword_1EBE94D30, &qword_1C12BBC00);
    memcpy(&v20[7], __dst, 0xB1uLL);
    v15[0] = v11;
    v15[1] = 0;
    LOBYTE(v15[2]) = v19[0];
    memcpy(&v15[2] + 1, v20, 0xB8uLL);
    v16[0] = v11;
    v16[1] = 0;
    v17 = v19[0];
    memcpy(v18, v20, sizeof(v18));
    sub_1C102EFA0(v15, __src, &qword_1EBE94D18, &qword_1C12BBBF0);
    sub_1C0F9E21C(v16, &qword_1EBE94D18, &qword_1C12BBBF0);
    memcpy(v20, v15, 0xC9uLL);
    sub_1C11462CC(v20);
  }

  else
  {
    sub_1C11462C0(v20);
  }

  memcpy(v19, v20, 0xCAuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94D18, &qword_1C12BBBF0);
  sub_1C0FDB6D4(&qword_1EBE94D20, &qword_1EBE94D18, &qword_1C12BBBF0, MEMORY[0x1E6981870]);
  sub_1C1263C20();
  memcpy(v19, __src, 0xCAuLL);
  memcpy(a6, __src, 0xCAuLL);
  memcpy(v20, __src, 0xCAuLL);
  sub_1C102EFA0(v19, v16, &qword_1EBE94D28, &qword_1C12BBBF8);
  return sub_1C0F9E21C(v20, &qword_1EBE94D28, &qword_1C12BBBF8);
}

uint64_t sub_1C1143F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = sub_1C12638E0();
  v42 = 1;
  sub_1C11442E4(a1, a2, a3 & 1, a4, __src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v46, __src, 0x59uLL);
  sub_1C102EFA0(__dst, v39, &qword_1EBE94D38, &qword_1C12BBC08);
  sub_1C0F9E21C(v46, &qword_1EBE94D38, &qword_1C12BBC08);
  memcpy(&v41[7], __dst, 0x59uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C12A3440;
  LOBYTE(a1) = sub_1C12644A0();
  *(v13 + 32) = a1;
  v14 = sub_1C12644C0();
  *(v13 + 33) = v14;
  v15 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != a1)
  {
    v15 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v14)
  {
    v15 = sub_1C12644B0();
  }

  v28[0] = v12;
  v28[1] = 0;
  v16 = v42;
  LOBYTE(v28[2]) = v42;
  memcpy(&v28[2] + 1, v41, 0x60uLL);
  sub_1C12628A0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  memcpy(v44, v28, 0x71uLL);
  v43 = 0;
  v29[0] = v12;
  v29[1] = 0;
  v30 = v16;
  memcpy(v31, v41, sizeof(v31));
  sub_1C102EFA0(v28, __src, &qword_1EBE94D40, &qword_1C12BBC10);
  sub_1C0F9E21C(v29, &qword_1EBE94D40, &qword_1C12BBC10);
  memcpy(v32, v44, 0x78uLL);
  LOBYTE(v32[15]) = v15;
  v32[16] = v18;
  v32[17] = v20;
  v32[18] = v22;
  v32[19] = v24;
  LOBYTE(v32[20]) = v43;
  memcpy(v33, v44, 0x78uLL);
  v33[120] = v15;
  v34 = v18;
  v35 = v20;
  v36 = v22;
  v37 = v24;
  v38 = v43;
  sub_1C102EFA0(v32, __src, &qword_1EBE94D48, &qword_1C12BBC18);
  sub_1C0F9E21C(v33, &qword_1EBE94D48, &qword_1C12BBC18);
  memcpy(__src, v32, 0xA1uLL);
  v27[168] = 1;
  memcpy(v39, v32, 0xA1uLL);
  memcpy(&v27[7], v32, 0xA1uLL);
  *a5 = 0;
  *(a5 + 8) = 1;
  memcpy((a5 + 9), v27, 0xA8uLL);
  sub_1C102EFA0(v39, v26, &qword_1EBE94D48, &qword_1C12BBC18);
  return sub_1C0F9E21C(__src, &qword_1EBE94D48, &qword_1C12BBC18);
}

uint64_t sub_1C11442E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = sub_1C1264490();
  sub_1C12628A0();
  __dst[0] = a3 & 1;
  v29[0] = 0;
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LOBYTE(__src[4]) = v12;
  __src[5] = v13;
  __src[6] = v14;
  __src[7] = v15;
  __src[8] = v16;
  LOBYTE(__src[9]) = 0;
  v20[0] = a1;
  v20[1] = a2;
  v21 = a3 & 1;
  v22 = a4;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = 0;
  sub_1C0FDB850(a1, a2, a3 & 1);

  sub_1C102EFA0(__src, v30, &qword_1EBE92060, &qword_1C12BBC20);
  sub_1C0F9E21C(v20, &qword_1EBE92060, &qword_1C12BBC20);
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v29, __src, 0x49uLL);
  memcpy(v30, __src, 0x49uLL);
  v18[80] = 0;
  memcpy(a5, v30, 0x50uLL);
  *(a5 + 80) = 0x4049000000000000;
  *(a5 + 88) = 0;
  sub_1C102EFA0(v29, v18, &qword_1EBE92060, &qword_1C12BBC20);
  return sub_1C0F9E21C(__dst, &qword_1EBE92060, &qword_1C12BBC20);
}

void *PhotosPlaybackOverlay.body.getter@<X0>(uint64_t a7@<X8>)
{
  v9 = v7[1];
  v24[0] = *v7;
  v24[1] = v9;
  v10 = v7[3];
  v24[2] = v7[2];
  v24[3] = v10;
  v11 = sub_1C12659A0();
  v13 = v12;
  sub_1C11445CC(v24, __src);
  memcpy(__dst, __src, 0x1C2uLL);
  memcpy(v26, __src, 0x1C2uLL);
  sub_1C102EFA0(__dst, &v22, &qword_1EBE94C58, &qword_1C12BB840);
  sub_1C0F9E21C(v26, &qword_1EBE94C58, &qword_1C12BB840);
  memcpy(__src, __dst, 0x1C2uLL);
  v14 = sub_1C12631E0();
  v15 = sub_1C1264470();
  v16 = *(&v24[0] + 1);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 8);
  if (v18(ObjectType, v16))
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v18(ObjectType, v16) & 1;
  *a7 = v11;
  *(a7 + 8) = v13;
  result = memcpy((a7 + 16), __src, 0x1C2uLL);
  *(a7 + 472) = v14;
  *(a7 + 480) = v15;
  *(a7 + 488) = v19;
  *(a7 + 496) = v20;
  return result;
}

uint64_t sub_1C11445CC@<X0>(__int128 *a1@<X0>, _OWORD *a3@<X8>)
{
  v38 = *a1;
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
    v37 = sub_1C1263AA0();
    v48[112] = 1;
    sub_1C1144B34(a1, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v50, __src, sizeof(v50));
    sub_1C102EFA0(__dst, v53, &qword_1EBE94D00, &unk_1C12BBBD0);
    sub_1C0F9E21C(v50, &qword_1EBE94D00, &unk_1C12BBBD0);
    memcpy(&v48[7], __dst, 0x68uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8, &unk_1C12B03B0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1C12A3440;
    v8 = sub_1C12644A0();
    *(v7 + 32) = v8;
    v9 = sub_1C12644C0();
    *(v7 + 33) = v9;
    v10 = sub_1C12644B0();
    sub_1C12644B0();
    if (sub_1C12644B0() != v8)
    {
      v10 = sub_1C12644B0();
    }

    sub_1C12644B0();
    if (sub_1C12644B0() != v9)
    {
      v10 = sub_1C12644B0();
    }

    sub_1C12628A0();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v48[120] = 0;
    v36 = sub_1C1264490();
    sub_1C12628A0();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v48[128] = 0;
    v35 = sub_1C1265190();
    v27 = *(a1 + 4);
    if (v27)
    {
      __src[0] = *(a1 + 3);
      __src[1] = v27;
      sub_1C0FDB9AC();

      v28 = sub_1C12648F0();
      v30 = v29;
      v32 = v31;
      sub_1C1143D14(v28, v29, v31 & 1, v33, 1, v39);
      sub_1C0FDB8E8(v28, v30, v32 & 1);

      memcpy(__src, v39, 0xCAuLL);
      nullsub_1();
      memcpy(v43, __src, 0xCAuLL);
    }

    else
    {
      sub_1C1146290(v43);
    }

    memcpy(v42, v43, 0xCAuLL);
    v51[0] = v37;
    v51[1] = 0;
    LOBYTE(v51[2]) = 1;
    memcpy(&v51[2] + 1, v48, 0x6FuLL);
    LOBYTE(v51[16]) = v10;
    *(&v51[16] + 1) = *v47;
    HIDWORD(v51[16]) = *&v47[3];
    v51[17] = v12;
    v51[18] = v14;
    v51[19] = v16;
    v51[20] = v18;
    LOBYTE(v51[21]) = 0;
    *(&v51[21] + 1) = *v46;
    HIDWORD(v51[21]) = *&v46[3];
    LOBYTE(v51[22]) = v36;
    *(&v51[22] + 1) = *v45;
    HIDWORD(v51[22]) = *&v45[3];
    v51[23] = v20;
    v51[24] = v22;
    v51[25] = v24;
    v51[26] = v26;
    LOBYTE(v51[27]) = 0;
    *(&v51[27] + 1) = *v44;
    HIDWORD(v51[27]) = *&v44[3];
    v51[28] = v35;
    memcpy(v40, v51, 0xE8uLL);
    memcpy(v41, v43, 0xCAuLL);
    memcpy(&v40[232], v43, 0xCAuLL);
    sub_1C102EFA0(v51, __src, &qword_1EBE94D08, &qword_1C12BBBE0);
    sub_1C102EFA0(v41, __src, &qword_1EBE94D10, &qword_1C12BBBE8);
    sub_1C0F9E21C(v42, &qword_1EBE94D10, &qword_1C12BBBE8);
    v52[0] = v37;
    v52[1] = 0;
    LOBYTE(v52[2]) = 1;
    memcpy(&v52[2] + 1, v48, 0x6FuLL);
    LOBYTE(v52[16]) = v10;
    *(&v52[16] + 1) = *v47;
    HIDWORD(v52[16]) = *&v47[3];
    v52[17] = v12;
    v52[18] = v14;
    v52[19] = v16;
    v52[20] = v18;
    LOBYTE(v52[21]) = 0;
    *(&v52[21] + 1) = *v46;
    HIDWORD(v52[21]) = *&v46[3];
    LOBYTE(v52[22]) = v36;
    *(&v52[22] + 1) = *v45;
    HIDWORD(v52[22]) = *&v45[3];
    v52[23] = v20;
    v52[24] = v22;
    v52[25] = v24;
    v52[26] = v26;
    LOBYTE(v52[27]) = 0;
    *(&v52[27] + 1) = *v44;
    HIDWORD(v52[27]) = *&v44[3];
    v52[28] = v35;
    sub_1C0F9E21C(v52, &qword_1EBE94D08, &qword_1C12BBBE0);
    memcpy(v53, v40, 0x1B2uLL);
    nullsub_1();
    memcpy(__src, v53, 0x1B2uLL);
  }

  else
  {
    sub_1C1146288(__src);
    swift_unknownObjectRetain();
  }

  memcpy(v53, __src, 0x1B2uLL);
  memcpy(v52, __src, 0x1B2uLL);
  *a3 = v38;
  memcpy(a3 + 1, __src, 0x1B2uLL);
  swift_unknownObjectRetain();
  sub_1C102EFA0(v52, v51, &qword_1EBE94CF8, &qword_1C12BBBC8);
  sub_1C0F9E21C(v53, &qword_1EBE94CF8, &qword_1C12BBBC8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1144B34@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  swift_unknownObjectRetain();
  v6 = sub_1C12638E0();
  result = swift_unknownObjectRetain_n();
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = v4;
  *(a3 + 64) = v5;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  *(a3 + 88) = v4;
  *(a3 + 96) = v5;
  return result;
}

uint64_t sub_1C1144BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263270();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CA8, &qword_1C12BBB10);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v15 = a1;
  v16 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CB0, &qword_1C12BBB18);
  sub_1C1145EDC();
  sub_1C1265480();
  v12 = &v10[*(v8 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C12633C0();
  *v12 = swift_getKeyPath();
  sub_1C1263260();
  sub_1C114615C();
  sub_1C1146240(&qword_1EBE94CE8, MEMORY[0x1E697C1D8], MEMORY[0x1E697C1D0]);
  sub_1C12649F0();
  (*(v5 + 8))(v7, v4);
  return sub_1C0F9E21C(v10, &qword_1EBE94CA8, &qword_1C12BBB10);
}

uint64_t sub_1C1144E30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 48))(v7, ObjectType, a2);
  *v5 = !*v5;
  return v4(v7, 0);
}

double sub_1C1144EB4@<D0>(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  sub_1C1144F30(a2, a1);
  sub_1C12659A0();
  sub_1C1262C80();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CB0, &qword_1C12BBB18) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_1C1144F30@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1C1265C00();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265BE0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  v26 = sub_1C12652F0();
  v19 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  v20 = sub_1C1264630();
  sub_1C0F9E21C(v17, &qword_1EBE96550, &qword_1C12AC4C0);
  KeyPath = swift_getKeyPath();
  sub_1C1265BD0();
  sub_1C1265BC0();
  v22 = *(v9 + 8);
  v22(v14, v8);
  sub_1C1265BF0();
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CC8, &qword_1C12BBB20) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A50, &qword_1C12A68A8);
  sub_1C1146240(&qword_1EBE94CF0, MEMORY[0x1E6982178], MEMORY[0x1E6982170]);
  sub_1C1263430();
  (*(v27 + 8))(v7, v28);
  v22(v11, v8);
  result = swift_getKeyPath();
  *v23 = result;
  *a3 = v26;
  a3[1] = KeyPath;
  a3[2] = v20;
  return result;
}

void sub_1C11452A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_unknownObjectRetain();
  sub_1C12659A0();
  sub_1C1262C80();
  LOBYTE(a2) = sub_1C12644D0();
  sub_1C12628A0();
  *a3 = sub_1C1145EC4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11;
  *(a3 + 24) = v12;
  *(a3 + 32) = v13;
  *(a3 + 40) = v14;
  *(a3 + 48) = v15;
  *(a3 + 56) = v16;
  *(a3 + 64) = a2;
  *(a3 + 72) = v7;
  *(a3 + 80) = v8;
  *(a3 + 88) = v9;
  *(a3 + 96) = v10;
  *(a3 + 104) = 0;
}

double sub_1C11453A0@<D0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1C1263AB0();
  v7 = sub_1C12638E0();
  sub_1C11454A0(a3, v14);
  v8 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CA0, &unk_1C12BBB00) + 36);
  v9 = *MEMORY[0x1E697F468];
  v10 = sub_1C12639D0();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40) + 36)) = 256;
  *a4 = v6;
  *(a4 + 8) = v7;
  v11 = v14[1];
  *(a4 + 16) = v14[0];
  *(a4 + 32) = v11;
  result = *&v15;
  v13 = v16;
  *(a4 + 48) = v15;
  *(a4 + 64) = v13;
  return result;
}

double sub_1C11454A0@<D0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.8 alpha:0.8];
  v5 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  v9 = sub_1C1265190();
  sub_1C0FDB76C();
  v6 = sub_1C1265270();
  sub_1C1262D40();
  ObjectType = swift_getObjectType();
  sub_1C11455C0(ObjectType, a2);
  sub_1C12659A0();
  sub_1C1262C80();
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  result = *&v13;
  *(a3 + 48) = v13;
  return result;
}

double sub_1C11455C0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  sub_1C1266620();
  v5 = v4;
  (*(a2 + 80))(a1, a2);
  sub_1C1266620();
  return v5 / v6;
}

uint64_t sub_1C114563C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(ObjectType, a2);
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 12) = v8;
  *(a3 + 16) = v9;
  return result;
}

double sub_1C11456A0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 56))(ObjectType, a2);
  v8 = v7;
  v10 = v9;
  v11 = HIDWORD(v7);
  v12 = (*(a2 + 80))(ObjectType, a2);
  rhs.epoch = v13;
  lhs.value = v6;
  lhs.timescale = v8;
  lhs.flags = v11;
  lhs.epoch = v10;
  rhs.value = v12;
  rhs.timescale = v14;
  rhs.flags = v15;
  CMTimeSubtract(&v18, &lhs, &rhs);
  epoch = v18.epoch;
  result = *&v18.timescale;
  *a3 = v18.value;
  *(a3 + 8) = result;
  *(a3 + 16) = epoch;
  return result;
}

void sub_1C114577C(CMTimeValue a1@<X0>, unint64_t a2@<X1>, CMTimeEpoch a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v28 - v9;
  v11 = sub_1C1264700();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = sub_1C11459B8(a1, a2, a3);
  v28[3] = v15;
  sub_1C0FDB9AC();
  v16 = sub_1C12648F0();
  v18 = v17;
  v20 = v19;
  (*(v12 + 104))(v14, *MEMORY[0x1E6980F20], v11);
  v21 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  sub_1C1264620();
  sub_1C1264640();
  sub_1C0F9E21C(v10, &qword_1EBE96550, &qword_1C12AC4C0);
  (*(v12 + 8))(v14, v11);
  v22 = sub_1C1264870();
  v24 = v23;
  LOBYTE(v10) = v25;
  v27 = v26;

  sub_1C0FDB8E8(v16, v18, v20 & 1);

  *a4 = v22;
  *(a4 + 8) = v24;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v27;
}

uint64_t sub_1C11459B8(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (qword_1EBE8FCF8 != -1)
  {
    swift_once();
  }

  time.value = a1;
  time.timescale = v4;
  time.flags = v6;
  time.epoch = a3;
  v7 = [qword_1EBE94C50 stringFromTimeInterval_];
  if (!v7)
  {
    return 63;
  }

  v8 = v7;
  v9 = sub_1C1265EA0();

  return v9;
}

uint64_t sub_1C1145AC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C1145B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosPlaybackOverlayConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1145C44()
{
  result = qword_1EBE94C60;
  if (!qword_1EBE94C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C68, &qword_1C12BB928);
    sub_1C1145CD0();
    sub_1C1069CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94C60);
  }

  return result;
}

unint64_t sub_1C1145CD0()
{
  result = qword_1EBE94C70;
  if (!qword_1EBE94C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C78, &qword_1C12BB930);
    sub_1C1145D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94C70);
  }

  return result;
}

unint64_t sub_1C1145D5C()
{
  result = qword_1EBE94C80;
  if (!qword_1EBE94C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C88, &qword_1C12BB938);
    sub_1C0FDB6D4(&qword_1EBE94C90, &qword_1EBE94C98, &qword_1C12BB940, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94C80);
  }

  return result;
}

unint64_t sub_1C1145EDC()
{
  result = qword_1EBE94CB8;
  if (!qword_1EBE94CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CB0, &qword_1C12BBB18);
    sub_1C1145F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94CB8);
  }

  return result;
}

unint64_t sub_1C1145F68()
{
  result = qword_1EBE94CC0;
  if (!qword_1EBE94CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CC8, &qword_1C12BBB20);
    sub_1C1062140();
    sub_1C0FDB6D4(&qword_1EBE90A90, &qword_1EBE90A50, &qword_1C12A68A8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94CC0);
  }

  return result;
}

id sub_1C1146020()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  result = [v0 setUnitsStyle_];
  qword_1EBE94C50 = v0;
  return result;
}

uint64_t sub_1C1146094(uint64_t a1)
{
  v2 = sub_1C12633D0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1263630();
}

unint64_t sub_1C114615C()
{
  result = qword_1EBE94CD0;
  if (!qword_1EBE94CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CA8, &qword_1C12BBB10);
    sub_1C0FDB6D4(&qword_1EBE94CD8, &qword_1EBE94CE0, &unk_1C12BBB58, MEMORY[0x1E697D680]);
    sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94CD0);
  }

  return result;
}

uint64_t sub_1C1146240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C11462E4()
{
  result = qword_1EBE94D50;
  if (!qword_1EBE94D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94D50);
  }

  return result;
}

unint64_t sub_1C1146338()
{
  result = qword_1EBE94D58;
  if (!qword_1EBE94D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94D60, &qword_1C12BBC50);
    sub_1C11463C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94D58);
  }

  return result;
}

unint64_t sub_1C11463C4()
{
  result = qword_1EBE94D68;
  if (!qword_1EBE94D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94D70, &qword_1C12BBC58);
    sub_1C0FDB6D4(&qword_1EBE94D78, qword_1EBE94D80, &qword_1C12BBC60, MEMORY[0x1E697E378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94D68);
  }

  return result;
}

uint64_t sub_1C11464A0(uint64_t a1)
{
  v2 = sub_1C1265560();
  if (v3 <= 0x3F)
  {
    v4 = swift_checkMetadataState();
    v2 = v4;
    if (v6 <= 0x3F)
    {
      type metadata accessor for SpringModel.State(255, v4, *(a1 + 88), v5);
      v2 = sub_1C1266790();
      if (v7 <= 0x3F)
      {
        v2 = sub_1C1261F70();
        if (v8 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v2;
}

void sub_1C1146628(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v11 = *(v1 + v3);
  v4 = a1 & 1;
  v10 = a1;
  v5 = sub_1C0FA8038(&v11, &v10, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v9 = *(v2 + 80);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v9 = v1;
    BYTE8(v9) = v4;
    sub_1C11481E0(v7, sub_1C1148A64, &v8, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    *(v1 + v3) = v4;
  }
}

uint64_t sub_1C114676C(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  sub_1C1147098(&v14[-v8]);
  v10 = *(v6 + 8);
  v10(v9, v4);
  v17 = v4;
  OUTLINED_FUNCTION_20();
  v18 = *(v11 + 88);
  KeyPath = swift_getKeyPath();
  v15 = v1;
  v16 = a1;
  sub_1C11481E0(KeyPath, sub_1C1148A88, v14, MEMORY[0x1E69E7CA8] + 8);

  return v10(a1, v4);
}

void sub_1C11468C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = *(v2 + 80);
  v72 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v53 - v5;
  v6 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v68 = &v53 - v7;
  v64 = type metadata accessor for SpringModel.State(0, v4, v3, v8);
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v53 - v9;
  v10 = sub_1C1266790();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - v12;
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v67 = v6;
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  sub_1C1147210(v19);
  sub_1C12627B0();
  v56 = v14;
  v27 = *(v14 + 8);
  v28 = v1;
  v29 = AssociatedTypeWitness;
  v55 = v27;
  v27(v19, v4);
  v66 = v26;
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
  v30 = *(*v28 + 128);
  swift_beginAccess();
  v31 = *(v11 + 16);
  v63 = v28;
  v32 = v64;
  v31(v13, v28 + v30, v10);
  if (__swift_getEnumTagSinglePayload(v13, 1, v32))
  {
    (*(v11 + 8))(v13, v10);
    v33 = 1;
    v34 = v69;
  }

  else
  {
    v36 = v58;
    v35 = v59;
    (*(v59 + 16))(v58, v13, v32);
    (*(v11 + 8))(v13, v10);
    v37 = v57;
    (*(v56 + 16))(v57, v36, v4);
    (*(v35 + 8))(v36, v32);
    v34 = v69;
    sub_1C12627B0();
    v55(v37, v4);
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34, v33, 1, v29);
  v38 = v70;
  v39 = *(TupleTypeMetadata2 + 48);
  v40 = *(v70 + 16);
  v41 = v67;
  v42 = v68;
  v43 = v66;
  v40(v68, v66, v67);
  v40((v42 + v39), v34, v41);
  if (__swift_getEnumTagSinglePayload(v42, 1, v29) == 1)
  {
    v44 = *(v38 + 8);
    v44(v34, v41);
    v44(v43, v41);
    if (__swift_getEnumTagSinglePayload(v42 + v39, 1, v29) == 1)
    {
      v44(v42, v41);
      return;
    }

    goto LABEL_9;
  }

  v45 = v60;
  v40(v60, v42, v41);
  if (__swift_getEnumTagSinglePayload(v42 + v39, 1, v29) == 1)
  {
    v46 = *(v70 + 8);
    v46(v69, v41);
    v46(v43, v41);
    (*(v62 + 8))(v45, v29);
LABEL_9:
    (*(v61 + 8))(v42, TupleTypeMetadata2);
LABEL_10:
    sub_1C1146628(0);
    return;
  }

  v47 = v41;
  v48 = v62;
  v49 = v54;
  (*(v62 + 32))(v54, v42 + v39, v29);
  swift_getAssociatedConformanceWitness();
  v50 = sub_1C1265DE0();
  v51 = *(v48 + 8);
  v51(v49, v29);
  v52 = *(v70 + 8);
  v52(v69, v47);
  v52(v43, v47);
  v51(v45, v29);
  v52(v42, v47);
  if ((v50 & 1) == 0)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1C1147098@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C1147130(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1C11468C8();
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_1C1147210@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C1148148(KeyPath);

  return sub_1C1147098(a1);
}

uint64_t sub_1C1147290(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C114676C(v3);
}

uint64_t sub_1C1147350(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1147130(v3);
}

uint64_t sub_1C114741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v131 = a1;
  v127 = a2;
  v4 = *v2;
  v5 = sub_1C1261DE0();
  OUTLINED_FUNCTION_1();
  v123 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v124 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 80);
  OUTLINED_FUNCTION_1();
  v117 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_8();
  v125 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v129 = v102 - v16;
  v17 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v128 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_8();
  v132 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v134 = v9;
  v135 = v102 - v27;
  v133 = v17;
  v29 = type metadata accessor for SpringModel.State(255, v9, v17, v28);
  v30 = sub_1C1266790();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v102 - v34;
  OUTLINED_FUNCTION_1();
  v130 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v102 - v38;
  v40 = v4;
  v42 = v41;
  v43 = v3 + *(v40 + 128);
  swift_beginAccess();
  v44 = *(v42 + 16);
  v120 = v42 + 16;
  v119 = v44;
  v44(v35, v43, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v29);
  v126 = v5;
  v121 = v42;
  if (EnumTagSinglePayload == 1)
  {
    (*(v42 + 8))(v35, v30);
    v46 = v129;
    sub_1C1147210(v129);
    v47 = v133;
    v48 = v134;
    swift_getAssociatedConformanceWitness();
    sub_1C1266B90();
    sub_1C12627C0();
    v49 = v125;
    sub_1C1147210(v125);
    v50 = v124;
    (*(v123 + 16))(v124, v131, v126);
    v51 = v118;
    sub_1C1147FD8(v49, v46, v50, v48, v47, v118);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v29);
    swift_beginAccess();
    v52 = OUTLINED_FUNCTION_9_27();
    v53(v52, v51, v30);
    swift_endAccess();
    v54 = v29;
    v55 = v130;
  }

  else
  {
    v109 = v43;
    v111 = v30;
    (*(v130 + 32))(v39, v35, v29);
    sub_1C1261D60();
    v56 = v134;
    sub_1C12627B0();
    v108 = v29;
    v57 = *(v29 + 36);
    v114 = v39;
    v105 = &v39[v57];
    sub_1C12627B0();
    v58 = v129;
    sub_1C1147210(v129);
    sub_1C12627B0();
    v59 = *(v117 + 8);
    v113 = v117 + 8;
    v112 = v59;
    v59(v58, v56);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C1265540();
    v62 = v128 + 1;
    v61 = v128[1];
    v61(v23, AssociatedTypeWitness);
    sub_1C1263360();
    v64 = fabs(v63);
    v102[1] = *(*v3 + 104);
    sub_1C12627B0();
    v104 = AssociatedConformanceWitness;
    sub_1C1263360();
    v66 = v65;
    v61(v23, AssociatedTypeWitness);
    v110 = v3;
    v107 = v62;
    v106 = v61;
    if (v64 <= v66)
    {
      sub_1C1263360();
      v71 = v70;
      v72 = v129;
      sub_1C1147210(v129);
      sub_1C12627B0();
      OUTLINED_FUNCTION_7_32();
      v73();
      sub_1C1263360();
      v75 = v74;
      v61(v23, AssociatedTypeWitness);
      v76 = vabdd_f64(v71, v75);
      sub_1C12627B0();
      sub_1C1263360();
      v78 = v77;
      v61(v23, AssociatedTypeWitness);
      v69 = v72;
      if (v76 <= v78)
      {
        sub_1C1147210(v72);
        sub_1C12627B0();
        OUTLINED_FUNCTION_7_32();
        v79();
        v80 = v135;
        v61(v135, AssociatedTypeWitness);
        v81 = v128[4];
        v81(v80, v23, AssociatedTypeWitness);
        sub_1C1266B90();
        v82 = v132;
        v61(v132, AssociatedTypeWitness);
        v67 = v23;
        v68 = AssociatedTypeWitness;
        v81(v82, v23, AssociatedTypeWitness);
        LODWORD(v104) = 1;
      }

      else
      {
        v67 = v23;
        v68 = AssociatedTypeWitness;
        LODWORD(v104) = 0;
      }
    }

    else
    {
      v67 = v23;
      v68 = AssociatedTypeWitness;
      LODWORD(v104) = 0;
      v69 = v129;
    }

    v83 = *(v117 + 16);
    v84 = v134;
    (v83)(v69, v114, v134);
    v85 = v128[2];
    v103 = v68;
    v85(v67, v135, v68);
    v86 = v133;
    sub_1C12627C0();
    v87 = v125;
    v83();
    v85(v67, v132, v68);
    sub_1C12627C0();
    v88 = v115;
    (v83)(v115, v69, v84);
    v89 = v116;
    v90 = v87;
    (v83)(v116, v87, v84);
    v91 = v124;
    (*(v123 + 16))(v124, v131, v126);
    v92 = v118;
    sub_1C1147FD8(v88, v89, v91, v84, v86, v118);
    v54 = v108;
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v108);
    v43 = v109;
    swift_beginAccess();
    v93 = OUTLINED_FUNCTION_9_27();
    v30 = v111;
    v94(v93, v92, v111);
    swift_endAccess();
    sub_1C1146628(v104);
    v95 = v90;
    v96 = v112;
    v112(v95, v84);
    v96(v69, v84);
    v97 = v103;
    v98 = v106;
    v106(v132, v103);
    v98(v135, v97);
    v55 = v130;
    (*(v130 + 8))(v114, v54);
  }

  v99 = v127;
  v100 = v122;
  v119(v122, v43, v30);
  result = __swift_getEnumTagSinglePayload(v100, 1, v54);
  if (result != 1)
  {
    return (*(v55 + 32))(v99, v100, v54);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1147FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(*(a4 - 8) + 32);
  v11(a6, a1, a4);
  v13 = type metadata accessor for SpringModel.State(0, a4, a5, v12);
  v11(a6 + *(v13 + 36), a2, a4);
  v14 = *(v13 + 40);
  sub_1C1261DE0();
  OUTLINED_FUNCTION_3();
  v16 = *(v15 + 32);

  return v16(a6 + v14, a3);
}

uint64_t sub_1C11480C8()
{
  OUTLINED_FUNCTION_10_2();
  KeyPath = swift_getKeyPath();
  sub_1C1148148(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 120));
}

uint64_t sub_1C1148148(uint64_t a1)
{
  OUTLINED_FUNCTION_1_40();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11481E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_40();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

char *sub_1C11482B0()
{
  v1 = *v0;
  v2 = qword_1EBEA4888;
  sub_1C1265560();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(&v0[v2]);
  OUTLINED_FUNCTION_10_2();
  v5 = *(v1 + 80);
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[*(v4 + 104)], v5);
  OUTLINED_FUNCTION_10_2();
  v6(&v0[*(v7 + 112)], v5);
  OUTLINED_FUNCTION_10_2();
  v9 = *(v8 + 128);
  type metadata accessor for SpringModel.State(255, v5, *(v1 + 88), v10);
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v11 + 8))(&v0[v9]);
  OUTLINED_FUNCTION_10_2();
  v13 = *(v12 + 144);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v14 + 8))(&v0[v13]);
  return v0;
}

uint64_t sub_1C1148438()
{
  sub_1C11482B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C11484C0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1C1261DE0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1148548(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1C1261DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v6 + 64);
  v13 = *(v6 + 80);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = v12 + v13;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v24 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v24 = ((((a1 + v16) & ~v13) + v12 + v14) & ~v14);
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v15);
  }

  v17 = ((v12 + v14 + (v16 & ~v13)) & ~v14) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v20 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_24;
  }

LABEL_14:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v11 + (v23 | v21) + 1;
}

void sub_1C1148798(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1C1261DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v8 + 64);
  v15 = *(v8 + 80);
  v16 = v14 + v15;
  v17 = *(v11 + 80);
  v18 = ((v14 + v17 + ((v14 + v15) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  if (a3 <= v13)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v24 = ((a3 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v24))
    {
      v20 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v13 >= a2)
  {
    v23 = ~v15;
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v27 = a1;
            v28 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v27 = (((&a1[v16] & v23) + v14 + v17) & ~v17);
            v28 = a2;
          }

          __swift_storeEnumTagSinglePayload(v27, v28, v12, v10);
        }

        break;
    }
  }

  else
  {
    v21 = ~v13 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v26 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v18 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosPrefetchable(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C1148B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953D8, &unk_1C12BC400);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_22_8();
  sub_1C0FE5654(v1, v2, &qword_1EBE953D8, &unk_1C12BC400);
  return sub_1C1263650();
}

uint64_t static PhotosSearchOverlayViewComponent.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 2:
      if (v2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_15;
      }

LABEL_13:
      v3 = 1;
      break;
    default:
      if ((v2 - 2) >= 6)
      {
        v3 = v2 ^ *a1 ^ 1;
      }

      else
      {
LABEL_15:
        v3 = 0;
      }

      break;
  }

  return v3 & 1;
}

uint64_t PhotosSearchOverlayViewComponent.hash(into:)()
{
  switch(*v0)
  {
    case 2:
      v1 = 0;
      goto LABEL_8;
    case 3:
      v1 = 1;
      goto LABEL_8;
    case 4:
      v1 = 2;
      goto LABEL_8;
    case 5:
      v1 = 4;
      goto LABEL_8;
    case 6:
      v1 = 5;
      goto LABEL_8;
    case 7:
      v1 = 6;
LABEL_8:
      result = MEMORY[0x1C68F07E0](v1);
      break;
    default:
      MEMORY[0x1C68F07E0](3);
      result = sub_1C1266EB0();
      break;
  }

  return result;
}

uint64_t PhotosSearchOverlayViewComponent.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  switch(v1)
  {
    case 2:
      v2 = 0;
      goto LABEL_8;
    case 3:
      v2 = 1;
      goto LABEL_8;
    case 4:
      v2 = 2;
      goto LABEL_8;
    case 5:
      v2 = 4;
      goto LABEL_8;
    case 6:
      v2 = 5;
      goto LABEL_8;
    case 7:
      v2 = 6;
LABEL_8:
      MEMORY[0x1C68F07E0](v2);
      break;
    default:
      MEMORY[0x1C68F07E0](3);
      sub_1C1266EB0();
      break;
  }

  return sub_1C1266EE0();
}

uint64_t sub_1C1148E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0, &qword_1C12BC340);
  sub_1C1265610();
  return v1;
}

uint64_t sub_1C1148E78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t sub_1C1148F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  sub_1C1265610();
  return v1;
}

__n128 sub_1C1148F88@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952D8, &qword_1C12BC338);
  sub_1C1265610();
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  a1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_1C1149068()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68, &qword_1C12BDAF0);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t sub_1C114911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 196), &v15 - v10, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1149320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 204), &v14 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

void sub_1C1149504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 208);
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  v15 = *(v10 + 32);
  v16 = *(v10 + 40);
  if (*(v10 + 42) == 1)
  {
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
  }

  else
  {
    v21 = v6;
    v17 = v7;
    HIDWORD(v20) = v16;

    sub_1C1266420();
    v18 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v19 = sub_1C1022584(v12, v11, v14, v13, v15, HIDWORD(v20), 0);
    (*(v17 + 8))(v9, v21, v19);
  }
}

void sub_1C11496A0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 212);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1149804(uint64_t a1)
{
  sub_1C1266E90();
  PhotosSearchOverlayViewComponent.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1149880(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v2;
}

double sub_1C11498E0(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1149944(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v2;
}

double sub_1C11499A4(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1149A08(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v2;
}

double sub_1C1149A68(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1149ACC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v2;
}

double sub_1C1149B2C(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1149B90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265420();
  return v2;
}

double sub_1C1149BFC(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C1149C70(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  sub_1C1265410();
  return v3;
}

uint64_t sub_1C1149CC8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265420();
  return v2;
}

double sub_1C1149D34(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0, &qword_1C12B77F0);
  sub_1C1265430();
  return result;
}

double sub_1C1149DA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952A0, &qword_1C12BC2B0);
  sub_1C1265420();
  return v2;
}

double sub_1C1149E08(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952A0, &qword_1C12BC2B0);
  sub_1C1265430();
  return result;
}

double sub_1C1149E68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C1149EC8(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C1149F28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C1149F88(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C1149FE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C114A048(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C114A0A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C114A108(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C114A168(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C114A1C8(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C114A228(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C114A288(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C114A2E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  return v2;
}

double sub_1C114A348(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  return result;
}

double sub_1C114A3A8(uint64_t a1)
{
  v2 = sub_1C1149FE8(a1);
  sub_1C1149504(a1, v5);
  v3 = 0.0;
  if ((v5[20] & 0x80000000) != 0)
  {
    v3 = sub_1C1149E68(a1);
  }

  return v2 - v3;
}

uint64_t sub_1C114A404(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25[-v17];
  sub_1C1149504(a1, v29);
  if ((v30 & 0x80000000) == 0)
  {
    v19 = sub_1C114A168(a1);
    return *&v19;
  }

  v27 = v1;
  sub_1C1149320(a1, v18);
  v21 = *MEMORY[0x1E697FF40];
  v28 = v4;
  (*(v4 + 104))(v15, v21, v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v22 = *(v7 + 48);
  sub_1C0FE5654(v18, v9, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v15, &v9[v22], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v3) == 1)
    {
      sub_1C0F9E27C(v9, &qword_1EBE902F0);
LABEL_13:
      v19 = sub_1C114A0A8(a1);
      return *&v19;
    }

    goto LABEL_9;
  }

  sub_1C0FE5654(v9, v12, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v3) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    (*(v28 + 8))(v12, v3);
LABEL_9:
    sub_1C0F9E27C(v9, &qword_1EBE902E8);
    return 0;
  }

  v23 = v28;
  (*(v28 + 32))(v6, &v9[v22], v3);
  sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v26 = sub_1C1265DE0();
  v24 = *(v23 + 8);
  v24(v6, v3);
  sub_1C0F9E27C(v15, &qword_1EBE902F0);
  sub_1C0F9E27C(v18, &qword_1EBE902F0);
  v24(v12, v3);
  sub_1C0F9E27C(v9, &qword_1EBE902F0);
  if (v26)
  {
    goto LABEL_13;
  }

  return 0;
}

double sub_1C114A868(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24[-v17];
  sub_1C1149504(a1, v28);
  if (v29 < 0)
  {
    v26 = v1;
    sub_1C1149320(a1, v18);
    v20 = *MEMORY[0x1E697FF40];
    v27 = v4;
    (*(v4 + 104))(v15, v20, v3);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    v21 = *(v7 + 48);
    sub_1C0FE5654(v18, v9, &qword_1EBE902F0, &qword_1C12B38C0);
    sub_1C0FE5654(v15, &v9[v21], &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
    {
      sub_1C0F9E27C(v15, &qword_1EBE902F0);
      sub_1C0F9E27C(v18, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v3) == 1)
      {
        sub_1C0F9E27C(v9, &qword_1EBE902F0);
        return sub_1C114A0A8(a1);
      }

      goto LABEL_7;
    }

    sub_1C0FE5654(v9, v12, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v3) == 1)
    {
      sub_1C0F9E27C(v15, &qword_1EBE902F0);
      sub_1C0F9E27C(v18, &qword_1EBE902F0);
      (*(v27 + 8))(v12, v3);
LABEL_7:
      sub_1C0F9E27C(v9, &qword_1EBE902E8);
      return result;
    }

    v22 = v27;
    (*(v27 + 32))(v6, &v9[v21], v3);
    sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
    v25 = sub_1C1265DE0();
    v23 = *(v22 + 8);
    v23(v6, v3);
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    v23(v12, v3);
    sub_1C0F9E27C(v9, &qword_1EBE902F0);
    if (v25)
    {
      return sub_1C114A0A8(a1);
    }
  }

  return result;
}

uint64_t sub_1C114ACC0(uint64_t a1)
{
  sub_1C1149504(a1, v3);
  if ((v3[20] & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return sub_1C114A168(a1);
  }
}

double sub_1C114AD18(uint64_t a1)
{
  v3 = *(v1 + 184);
  if (*(v3 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](3), sub_1C1266EB0(), v4 = sub_1C1266EE0(), v6 = -1 << *(v3 + 32), v7 = v4 & ~v6, ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v3 + 48) + v7);
      if ((v9 - 2) >= 6 && (v9 & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_1C1149504(a1, v10);
    if (v11 < 0)
    {
      return sub_1C114A228(a1);
    }
  }

  return result;
}

uint64_t sub_1C114AE1C(uint64_t a1)
{
  v3 = *(v1 + 184);
  if (!*(v3 + 16))
  {
    return sub_1C114A2E8(a1);
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](4);
  v4 = sub_1C1266EE0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return sub_1C114A2E8(a1);
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != 5)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return sub_1C114A2E8(a1);
    }
  }

  return 0;
}

BOOL sub_1C114AEF4()
{
  v1 = *(v0 + 184);
  if (!*(v1 + 16))
  {
    return *(*(v0 + 168) + 16) != 0;
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  v2 = sub_1C1266EE0();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return *(*(v0 + 168) + 16) != 0;
  }

  v5 = ~v3;
  while (*(*(v1 + 48) + v4) != 2)
  {
    v4 = (v4 + 1) & v5;
    if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return *(*(v0 + 168) + 16) != 0;
    }
  }

  return 0;
}

void PhotosSearchOverlayView.init(searchText:isEditing:selectedSuggestionIndex:selectedRange:canShowSearchSuggestions:searchSuggestions:initialSuggestions:recentSuggestions:hiddenComponents:scrolledToEdges:placeholder:content:titleLabel:bottomLabel:radarButton:doneAction:backAction:initialSuggestionSelectionHandler:recentSuggestionSelectionHandler:clearRecentSearchesHandler:intialSuggestionsOnAppearHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, __int128 a24, uint64_t a25, uint64_t a26, char a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, uint64_t a38, uint64_t a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_23();
  v47 = v46;
  v80 = v48;
  v79 = v49;
  v78 = v50;
  v77 = v51;
  v76 = v52;
  v54 = v53;
  v56 = v55;
  v75 = *v57;
  v58 = *(v57 + 2);
  v59 = *(v57 + 3);
  v60 = *(v57 + 32);
  v61 = *(v57 + 5);
  v81[0] = a40;
  v81[1] = a41;
  v81[2] = a42;
  v81[3] = a43;
  v81[4] = a44;
  v82 = a45;
  v83 = a46;
  v62 = type metadata accessor for PhotosSearchOverlayView(0, v81);
  v63 = v62[49];
  *(v56 + v63) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v64 = v62[50];
  *(v56 + v64) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v65 = v62[51];
  *(v56 + v65) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v66 = v56 + v62[52];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0u;
  *(v66 + 24) = 0u;
  *(v66 + 39) = 0;
  v67 = v56 + v62[53];
  *v67 = swift_getKeyPath();
  *(v67 + 8) = 0;
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  v68 = sub_1C1149C70(0, 1);
  OUTLINED_FUNCTION_71_0(v68, v69, v70);
  v71 = sub_1C1149C70(0, 1);
  OUTLINED_FUNCTION_71_0(v71, v72, v73);
  v84 = 0;
  sub_1C1265410();
  OUTLINED_FUNCTION_2_47();
  v84 = 0;
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  *v56 = v54;
  *(v56 + 8) = v76;
  *(v56 + 16) = v77;
  *(v56 + 24) = v78;
  *(v56 + 32) = v79;
  *(v56 + 40) = v80;
  v74 = *(v47 + 16);
  *(v56 + 48) = *v47;
  *(v56 + 64) = v74;
  *(v56 + 80) = *(v47 + 32);
  *(v56 + 88) = v75;
  *(v56 + 104) = v58;
  *(v56 + 112) = v59;
  *(v56 + 120) = v60;
  *(v56 + 128) = v61;
  *(v56 + 136) = a21;
  *(v56 + 144) = a22;
  *(v56 + 152) = a23;
  *(v56 + 160) = a24;
  *(v56 + 176) = a25;
  *(v56 + 184) = a26;
  *(v56 + 192) = a27;
  *(v56 + 200) = a28;
  *(v56 + 216) = a29;
  *(v56 + 232) = a30;
  *(v56 + 248) = a31;
  *(v56 + 264) = a32;
  *(v56 + 280) = a33;
  *(v56 + 296) = a34;
  *(v56 + 312) = a35;
  *(v56 + 328) = a36;
  *(v56 + 344) = a37;
  *(v56 + 360) = a38;
  *(v56 + 368) = a39;
  OUTLINED_FUNCTION_22_0();
}

void PhotosSearchOverlayView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v149 = v3;
  OUTLINED_FUNCTION_0();
  v160 = v0;
  v161 = v4;
  v162 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_4();
  v159 = v7;
  v211 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA0, &qword_1C12BBEE0);
  *&v170 = v2[2];
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8, &qword_1C12BBEE8);
  OUTLINED_FUNCTION_11_0();
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_20_0();
  v9 = sub_1C1263E60();
  v10 = sub_1C1263190();
  v11 = v2[8];
  v166 = v2;
  *&v167 = v11;
  v209 = v11;
  v210 = MEMORY[0x1E6980A30];
  v12 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_67();
  v18 = sub_1C10239B0(v14, v15, v16, v17);
  v207 = WitnessTable;
  v208 = v18;
  v19 = swift_getWitnessTable();
  *&v164 = MEMORY[0x1E697FEC8];
  v205 = swift_getWitnessTable();
  v206 = MEMORY[0x1E697E5C0];
  v20 = swift_getWitnessTable();
  v194 = v8;
  v195 = v10;
  v196 = v19;
  v197 = v20;
  *&v163 = MEMORY[0x1E6981480];
  OUTLINED_FUNCTION_52_2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8, &unk_1C12BBEF0);
  *&v169 = v2[4];
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v150 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_28_10();
  sub_1C1263E60();
  OUTLINED_FUNCTION_26();
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  v158 = v22;
  v203 = swift_getWitnessTable();
  v204 = MEMORY[0x1E6980A30];
  v165 = v12;
  v23 = swift_getWitnessTable();
  v201 = swift_getWitnessTable();
  v202 = MEMORY[0x1E697E5C0];
  v24 = swift_getWitnessTable();
  v194 = v9;
  v195 = v21;
  v196 = v23;
  v197 = v24;
  OUTLINED_FUNCTION_52_2();
  v213 = swift_getOpaqueTypeMetadata2();
  v25 = v166;
  v151 = v166[3];
  v26 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8, &qword_1C12BBF08);
  *&v168 = v25[6];
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v27 = sub_1C12654C0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0, &qword_1C12BBF10);
  v156 = v25[9];
  v157 = v28;
  v200 = v156;
  OUTLINED_FUNCTION_17();
  v154 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v29 = swift_getWitnessTable();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8, &qword_1C12BBF18);
  v31 = sub_1C1263C40();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0, &qword_1C12BBF20);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560, &qword_1C12A5E00);
  OUTLINED_FUNCTION_15_2();
  v36 = sub_1C10239B0(v34, &qword_1EBE90560, &qword_1C12A5E00, v35);
  v37 = sub_1C114C53C();
  v194 = v33;
  v195 = &type metadata for PhotosMaterialToolbarTextButtonStyle;
  v196 = v36;
  v197 = v37;
  OUTLINED_FUNCTION_14_20();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v194 = v32;
  v195 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_13_22();
  v39 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_17();
  v42 = sub_1C1162924(v40, v41, MEMORY[0x1E697C650]);
  v194 = v30;
  v195 = v31;
  v196 = v39;
  v197 = v42;
  OUTLINED_FUNCTION_11_25();
  v43 = swift_getOpaqueTypeConformance2();
  v194 = v26;
  v195 = v27;
  v196 = v157;
  v197 = v154;
  v198 = v29;
  v199 = v43;
  v44 = OUTLINED_FUNCTION_52_2();
  v46 = type metadata accessor for PhotosNotchToolbar(v44, v45);
  OUTLINED_FUNCTION_10_27();
  v47 = swift_getWitnessTable();
  v194 = v46;
  v195 = v47;
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_52_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v157 = sub_1C1266790();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0, &qword_1C12BBF28);
  v49 = v151;
  sub_1C1263190();
  v50 = OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_22_2(v50, v51, v48, v52);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  v53 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8, &qword_1C12BBF30);
  v54 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_2(v54, v55, v53, v56);
  OUTLINED_FUNCTION_22();
  v57 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v57);
  OUTLINED_FUNCTION_6_0();
  v58 = sub_1C1262C50();
  OUTLINED_FUNCTION_34_7();
  v59 = swift_getWitnessTable();
  v194 = v58;
  v195 = v59;
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_52_2();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v60 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00, &qword_1C12BBF38);
  v61 = v166[7];
  v194 = v166[5];
  v195 = v61;
  *&v62 = v170;
  *(&v62 + 1) = v49;
  v170 = v62;
  *&v62 = v169;
  *(&v62 + 1) = v194;
  v169 = v62;
  *&v62 = v168;
  *(&v62 + 1) = v61;
  v168 = v62;
  *&v62 = v167;
  *(&v62 + 1) = v156;
  v167 = v62;
  v63 = v166[13];
  v153 = v166[11];
  v154 = v63;
  v196 = v153;
  v197 = v63;
  v64 = OUTLINED_FUNCTION_52_2();
  v66 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(v64, v65);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263E60();
  OUTLINED_FUNCTION_37();
  v67 = sub_1C1263190();
  OUTLINED_FUNCTION_39_5();
  v68 = swift_getWitnessTable();
  v192 = swift_getWitnessTable();
  v193 = MEMORY[0x1E697E5C0];
  v69 = swift_getWitnessTable();
  v194 = v66;
  v195 = v67;
  v196 = v68;
  v197 = v69;
  OUTLINED_FUNCTION_52_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v70 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v70);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  v71 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_22_2(v71, v60, v72, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  v73 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v73);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_42_3();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v74 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v74);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_22();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08, &qword_1C12BBF48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v75 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v75);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v76 = sub_1C1265B00();
  OUTLINED_FUNCTION_18_12(v76);
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_28_10();
  v77 = sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1263E60();
  OUTLINED_FUNCTION_26();
  v78 = sub_1C1263190();
  v190 = swift_getWitnessTable();
  v79 = MEMORY[0x1E6980A30];
  v191 = MEMORY[0x1E6980A30];
  v188 = swift_getWitnessTable();
  v189 = v79;
  v80 = swift_getWitnessTable();
  v186 = swift_getWitnessTable();
  v187 = MEMORY[0x1E697E5C0];
  v81 = swift_getWitnessTable();
  v194 = v77;
  v195 = v78;
  v196 = v80;
  v197 = v81;
  OUTLINED_FUNCTION_52_2();
  v214 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  v82 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v139 = v83;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_34();
  v155 = v85;
  v138[1] = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v140 = v86;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_34();
  v156 = v88;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v141 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v144 = v89;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_34();
  v157 = v91;
  v143 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v147 = v92;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_34();
  v158 = v94;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F10, &qword_1C12BBF50);
  v146 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v148 = v95;
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_1_3();
  v142 = v97;
  MEMORY[0x1EEE9AC00](v98);
  v145 = v138 - v99;
  sub_1C1265980();
  v171 = v170;
  v172 = v169;
  v173 = v168;
  v174 = v167;
  v100 = v166;
  *&v101 = v166[10];
  *(&v101 + 1) = v153;
  *&v102 = v166[12];
  *(&v102 + 1) = v154;
  v163 = v102;
  v164 = v101;
  v175 = v101;
  v176 = v102;
  v177 = v160;
  sub_1C12655B0();
  v103 = v161;
  v153 = *(v161 + 16);
  v154 = v161 + 16;
  v104 = v159;
  OUTLINED_FUNCTION_56();
  v105();
  v152 = *(v103 + 80);
  v106 = (v152 + 112) & ~v152;
  v107 = swift_allocObject();
  v108 = OUTLINED_FUNCTION_18_25(v107);
  v109 = *(v103 + 32);
  v161 = v103 + 32;
  v151 = v109;
  v111 = v104;
  (v109)(v110 + v106, v104, v100, v108);
  OUTLINED_FUNCTION_13_0();
  v112 = swift_getWitnessTable();
  v113 = v155;
  sub_1C1264FF0();

  (*(v139 + 8))(v113, v82);
  v114 = v160;
  v115 = v153;
  v153(v111, v160, v100);
  v150 = v106;
  v116 = swift_allocObject();
  OUTLINED_FUNCTION_18_25(v116);
  OUTLINED_FUNCTION_56();
  v151();
  v184 = v112;
  v185 = MEMORY[0x1E69805D0];
  v139 = swift_getWitnessTable();
  v155 = sub_1C0FF9EE4();
  sub_1C1264C40();

  v117 = OUTLINED_FUNCTION_61_1();
  v118(v117);
  v119 = v159;
  v115(v159, v114, v166);
  v120 = swift_allocObject();
  OUTLINED_FUNCTION_18_25(v120);
  OUTLINED_FUNCTION_80_0();
  v121 = v151;
  v151();
  OUTLINED_FUNCTION_20_4();
  v156 = v122;
  v125 = sub_1C10239B0(v123, &qword_1EBE94EC0, &qword_1C12BBF00, v124);
  v182 = v139;
  v183 = v125;
  v126 = swift_getWitnessTable();
  sub_1C1264C40();

  v127 = OUTLINED_FUNCTION_61_1();
  v128(v127);
  v153(v119, v160, v166);
  v129 = swift_allocObject();
  OUTLINED_FUNCTION_18_25(v129);
  OUTLINED_FUNCTION_80_0();
  v121();
  v180 = v126;
  v181 = v125;
  v130 = v143;
  v131 = swift_getWitnessTable();
  v132 = v142;
  v133 = v158;
  sub_1C1264C40();

  (*(v147 + 8))(v133, v130);
  v134 = sub_1C10239B0(&qword_1EBE94F18, &qword_1EBE94F10, &qword_1C12BBF50, v156);
  v178 = v131;
  v179 = v134;
  v135 = v146;
  swift_getWitnessTable();
  v136 = v145;
  OUTLINED_FUNCTION_80_0();
  sub_1C0FDBA4C();
  v137 = *(v148 + 8);
  v137(v132, v135);
  OUTLINED_FUNCTION_80_0();
  sub_1C0FDBA4C();
  v137(v136, v135);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_1C114C53C()
{
  result = qword_1EBE94EE8;
  if (!qword_1EBE94EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94EE8);
  }

  return result;
}

uint64_t sub_1C114C590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v246 = a1;
  v247 = a8;
  v252 = a7;
  v249 = a6;
  v251 = a5;
  v258 = a4;
  v257 = a3;
  v255 = a2;
  v234 = a9;
  v248 = a14;
  v250 = a13;
  v256 = a12;
  v254 = a11;
  v253 = a10;
  v14 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8, &qword_1C12BBF08);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v244 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  v15 = sub_1C12654C0();
  v245 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0, &qword_1C12BBF10);
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8, &qword_1C12BBF18);
  sub_1C1263C40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0, &qword_1C12BBF20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560, &qword_1C12A5E00);
  sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
  sub_1C114C53C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1162924(&qword_1EDE76E08, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v277 = v14;
  v278 = v15;
  v279 = v245;
  v280 = WitnessTable;
  v281 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = type metadata accessor for PhotosNotchToolbar(255, &v277);
  v18 = swift_getWitnessTable();
  v277 = v17;
  v278 = v18;
  swift_getOpaqueTypeMetadata2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  sub_1C1263190();
  v241 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  sub_1C1263190();
  WitnessTable = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0, &qword_1C12BBF28);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8, &qword_1C12BBF30);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v20 = sub_1C1262C50();
  v21 = swift_getWitnessTable();
  v277 = v20;
  v278 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  v242 = v19;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00, &qword_1C12BBF38);
  v277 = v251;
  v278 = v252;
  v279 = a12;
  v280 = a14;
  v22 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(255, &v277);
  sub_1C1263E60();
  v23 = sub_1C1263190();
  v24 = swift_getWitnessTable();
  v245 = MEMORY[0x1E697FEC8];
  v305 = swift_getWitnessTable();
  v306 = MEMORY[0x1E697E5C0];
  v239 = MEMORY[0x1E697E858];
  v25 = swift_getWitnessTable();
  v277 = v22;
  v278 = v23;
  v279 = v24;
  v280 = v25;
  v240 = MEMORY[0x1E6981480];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1266790();
  sub_1C1263190();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1266790();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08, &qword_1C12BBF48);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  v217 = sub_1C1265B00();
  v215 = swift_getWitnessTable();
  v26 = sub_1C12655A0();
  v221 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v214 = &v187 - v27;
  v28 = sub_1C1263190();
  v226 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v224 = &v187 - v29;
  v30 = sub_1C1263190();
  v230 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v229 = &v187 - v31;
  sub_1C1263E60();
  v32 = sub_1C1263190();
  v223 = v26;
  v213 = swift_getWitnessTable();
  v303 = v213;
  v304 = MEMORY[0x1E6980A30];
  v33 = MEMORY[0x1E6980A30];
  v228 = v28;
  v216 = swift_getWitnessTable();
  v301 = v216;
  v302 = v33;
  v34 = swift_getWitnessTable();
  v299 = swift_getWitnessTable();
  v300 = MEMORY[0x1E697E5C0];
  v35 = swift_getWitnessTable();
  v231 = v30;
  v277 = v30;
  v222 = v32;
  v278 = v32;
  v219 = v35;
  v220 = v34;
  v279 = v34;
  v280 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v225 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v232 = &v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v218 = &v187 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v227 = &v187 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8, &unk_1C12BBEF0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v41 = sub_1C1265B00();
  v205 = swift_getWitnessTable();
  v206 = v41;
  v42 = sub_1C12655A0();
  v207 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v204 = &v187 - v43;
  v44 = sub_1C1263190();
  v210 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v209 = &v187 - v45;
  sub_1C1263E60();
  v46 = sub_1C1263190();
  v208 = v42;
  v200 = swift_getWitnessTable();
  v297 = v200;
  v298 = MEMORY[0x1E6980A30];
  v47 = swift_getWitnessTable();
  v295 = swift_getWitnessTable();
  v296 = MEMORY[0x1E697E5C0];
  v48 = swift_getWitnessTable();
  v212 = v44;
  v277 = v44;
  v202 = v46;
  v203 = v47;
  v278 = v46;
  v279 = v47;
  v201 = v48;
  v280 = v48;
  WitnessTable = swift_getOpaqueTypeMetadata2();
  v241 = *(WitnessTable - 8);
  MEMORY[0x1EEE9AC00](WitnessTable);
  v244 = &v187 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v242 = &v187 - v51;
  v52 = v255;
  v193 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v191 = &v187 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C1263190();
  v235 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v190 = &v187 - v56;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8, &qword_1C12BBEE8);
  v188 = v55;
  v57 = sub_1C1263190();
  v197 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v189 = &v187 - v58;
  sub_1C1263E60();
  v59 = sub_1C1263190();
  v60 = v247;
  v293 = v247;
  v294 = MEMORY[0x1E6980A30];
  v61 = swift_getWitnessTable();
  v187 = v61;
  v62 = sub_1C10239B0(&qword_1EBE94EB0, &qword_1EBE94EA8, &qword_1C12BBEE8, MEMORY[0x1E697EC18]);
  v291 = v61;
  v292 = v62;
  v63 = swift_getWitnessTable();
  v289 = swift_getWitnessTable();
  v290 = MEMORY[0x1E697E5C0];
  v64 = swift_getWitnessTable();
  v198 = v57;
  v277 = v57;
  v195 = v63;
  v196 = v59;
  v278 = v59;
  v279 = v63;
  v194 = v64;
  v280 = v64;
  v240 = swift_getOpaqueTypeMetadata2();
  v236 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v187 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v192 = &v187 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v245 = &v187 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94EA0, &qword_1C12BBEE0);
  MEMORY[0x1EEE9AC00](v70);
  v238 = &v187 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v187 - v73;
  v277 = v52;
  v278 = v257;
  v279 = v258;
  v280 = v251;
  v281 = v249;
  OpaqueTypeConformance2 = v252;
  v283 = v60;
  v75 = v60;
  v284 = v253;
  v285 = v254;
  v286 = v256;
  v287 = v250;
  v76 = v248;
  v288 = v248;
  v77 = type metadata accessor for PhotosSearchOverlayView(0, &v277);
  v78 = v246;
  sub_1C114E3B8(v77, v74);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94FF0, &qword_1C12BC0A8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94FF8, &qword_1C12BC0B0);
  v81 = sub_1C1160464();
  v277 = v80;
  v278 = v81;
  swift_getOpaqueTypeConformance2();
  v82 = sub_1C10F4FC0(v79);
  v83 = sub_1C1170094(v79);
  v211 = v70;
  v84 = *(v70 + 36);
  v237 = v74;
  v85 = &v74[v84];
  *v85 = v82;
  v85[8] = v83;
  v86 = *(v78 + 216);
  v87 = sub_1C114A3A8(v77);
  v88 = COERCE_DOUBLE(sub_1C114ACC0(v77));
  if (v89)
  {
    v90 = 0.0;
  }

  else
  {
    v90 = v88;
  }

  v91 = COERCE_DOUBLE(sub_1C114AE1C(v77));
  if (v92)
  {
    v93 = 0.0;
  }

  else
  {
    v93 = v91;
  }

  sub_1C114AD18(v77);
  v95 = v94;
  if (v96)
  {
    v95 = 0.0;
  }

  v97 = v93 + v95;
  v199 = v77;
  sub_1C114A868(v77);
  v98 = v191;
  v86(v87 + v90, 0.0, v97, 0.0);
  v99 = v255;
  sub_1C10F4FC0(v255);
  sub_1C1170094(v99);
  v100 = v190;
  sub_1C1264BF0();
  (v193[1])(v98, v99);
  v259 = v99;
  v260 = v257;
  v261 = v258;
  v101 = v251;
  v262 = v251;
  v263 = v249;
  v264 = v252;
  v265 = v75;
  v266 = v253;
  v267 = v254;
  v268 = v256;
  v269 = v250;
  v270 = v76;
  v271 = v78;
  v102 = v189;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95078, &qword_1C12BC0F0);
  v104 = sub_1C1160868();
  v105 = v188;
  sub_1C10A0734(v188, v103, v187, v104, v106, v107);
  sub_1C1264F60();
  v108 = (*(v235 + 8))(v100, v105);
  if (qword_1EBE8FC78 != -1)
  {
    v108 = swift_once();
  }

  v193 = &v187;
  v235 = qword_1EBEA4868;
  MEMORY[0x1EEE9AC00](v108);
  v109 = v257;
  *(&v187 - 14) = v255;
  *(&v187 - 13) = v109;
  *(&v187 - 12) = v258;
  *(&v187 - 11) = v101;
  v110 = v252;
  *(&v187 - 10) = v249;
  *(&v187 - 9) = v110;
  v111 = v253;
  *(&v187 - 8) = v247;
  *(&v187 - 7) = v111;
  v112 = v256;
  *(&v187 - 6) = v254;
  *(&v187 - 5) = v112;
  *(&v187 - 4) = v250;
  *(&v187 - 3) = v76;
  *(&v187 - 2) = v246;
  v113 = swift_checkMetadataState();
  v114 = v192;
  v115 = v198;
  v117 = v194;
  v116 = v195;
  sub_1C1265030();
  (*(v197 + 8))(v102, v115);
  v277 = v115;
  v278 = v113;
  v279 = v116;
  v280 = v117;
  v195 = MEMORY[0x1E6981480];
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v240;
  v196 = v118;
  sub_1C0FDBA4C();
  v197 = *(v236 + 8);
  v198 = v236 + 8;
  v120 = (v197)(v114, v119);
  MEMORY[0x1EEE9AC00](v120);
  v121 = v257;
  *(&v187 - 14) = v255;
  *(&v187 - 13) = v121;
  *(&v187 - 12) = v258;
  *(&v187 - 11) = v101;
  v123 = v248;
  v122 = v249;
  v124 = v252;
  *(&v187 - 10) = v249;
  *(&v187 - 9) = v124;
  v125 = v247;
  v126 = v253;
  *(&v187 - 8) = v247;
  *(&v187 - 7) = v126;
  *(&v187 - 6) = v254;
  *(&v187 - 5) = v112;
  *(&v187 - 4) = v250;
  *(&v187 - 3) = v123;
  *(&v187 - 2) = v246;
  sub_1C10A7F5C(v206);
  v127 = v204;
  sub_1C1265590();
  sub_1C12631F0();
  v128 = v208;
  sub_1C1170094(v208);
  v129 = v209;
  sub_1C1264BF0();
  v130 = (*(v207 + 8))(v127, v128);
  MEMORY[0x1EEE9AC00](v130);
  v131 = v257;
  *(&v187 - 14) = v255;
  *(&v187 - 13) = v131;
  v132 = v251;
  *(&v187 - 12) = v258;
  *(&v187 - 11) = v132;
  v133 = v252;
  *(&v187 - 10) = v122;
  *(&v187 - 9) = v133;
  v134 = v253;
  *(&v187 - 8) = v125;
  *(&v187 - 7) = v134;
  v135 = v256;
  *(&v187 - 6) = v254;
  *(&v187 - 5) = v135;
  v136 = v250;
  *(&v187 - 4) = v250;
  *(&v187 - 3) = v123;
  *(&v187 - 2) = v246;
  v137 = swift_checkMetadataState();
  v138 = v244;
  v139 = v212;
  v140 = v203;
  v141 = v201;
  sub_1C1265030();
  v210[1](v129, v139);
  v277 = v139;
  v278 = v137;
  v279 = v140;
  v280 = v141;
  v142 = swift_getOpaqueTypeConformance2();
  v143 = WitnessTable;
  v209 = v142;
  sub_1C0FDBA4C();
  v144 = *(v241 + 8);
  v212 = v241 + 8;
  v210 = v144;
  v145 = (v144)(v138, v143);
  MEMORY[0x1EEE9AC00](v145);
  v146 = v257;
  *(&v187 - 14) = v255;
  *(&v187 - 13) = v146;
  v147 = v251;
  *(&v187 - 12) = v258;
  *(&v187 - 11) = v147;
  v148 = v252;
  *(&v187 - 10) = v249;
  *(&v187 - 9) = v148;
  v149 = v246;
  v150 = v253;
  *(&v187 - 8) = v247;
  *(&v187 - 7) = v150;
  v151 = v256;
  *(&v187 - 6) = v254;
  *(&v187 - 5) = v151;
  v152 = v248;
  *(&v187 - 4) = v136;
  *(&v187 - 3) = v152;
  *(&v187 - 2) = v149;
  sub_1C10A7F5C(v217);
  v153 = v214;
  sub_1C1265590();
  sub_1C12631F0();
  v154 = v199;
  v155 = v149;
  sub_1C1149504(v199, &v277);
  if (OpaqueTypeConformance2 < 0)
  {
    sub_1C12644B0();
  }

  else
  {
    sub_1C1264470();
  }

  v156 = v223;
  v157 = v224;
  sub_1C1264BF0();
  (*(v221 + 8))(v153, v156);
  sub_1C1263200();
  v158 = v155;
  sub_1C1149504(v154, &v277);
  if (OpaqueTypeConformance2 < 0)
  {
    sub_1C1264480();
  }

  else
  {
    sub_1C12644B0();
  }

  v159 = v228;
  v160 = v229;
  sub_1C1264BF0();
  v161 = (*(v226 + 8))(v157, v159);
  MEMORY[0x1EEE9AC00](v161);
  v162 = v257;
  *(&v187 - 14) = v255;
  *(&v187 - 13) = v162;
  v163 = v251;
  *(&v187 - 12) = v258;
  *(&v187 - 11) = v163;
  *(&v187 - 10) = v249;
  *(&v187 - 9) = v148;
  v164 = v253;
  *(&v187 - 8) = v247;
  *(&v187 - 7) = v164;
  v165 = v256;
  *(&v187 - 6) = v254;
  *(&v187 - 5) = v165;
  v166 = v248;
  *(&v187 - 4) = v250;
  *(&v187 - 3) = v166;
  *(&v187 - 2) = v158;
  v167 = swift_checkMetadataState();
  v169 = v218;
  v168 = v219;
  v170 = v231;
  v171 = v220;
  sub_1C1265030();
  (*(v230 + 8))(v160, v170);
  v277 = v170;
  v278 = v167;
  v279 = v171;
  v280 = v168;
  v258 = swift_getOpaqueTypeConformance2();
  v172 = v227;
  v173 = OpaqueTypeMetadata2;
  sub_1C0FDBA4C();
  v174 = v225;
  v175 = *(v225 + 8);
  v175(v169, v173);
  v176 = v175;
  v257 = v175;
  v177 = v238;
  sub_1C0FE5654(v237, v238, &qword_1EBE94EA0, &qword_1C12BBEE0);
  v277 = v177;
  v178 = v239;
  v179 = v240;
  (*(v236 + 16))(v239, v245, v240);
  v278 = v178;
  v180 = v242;
  v181 = WitnessTable;
  v182 = v244;
  (*(v241 + 16))(v244, v242, WitnessTable);
  v279 = v182;
  v183 = v232;
  (*(v174 + 16))(v232, v172, v173);
  v280 = v183;
  v276[0] = v211;
  v276[1] = v179;
  v276[2] = v181;
  v276[3] = v173;
  v272 = sub_1C11609D0();
  v273 = v196;
  v274 = v209;
  v275 = v258;
  sub_1C119EE80(&v277, 4, v276);
  v176(v172, v173);
  v184 = v210;
  (v210)(v180, v181);
  v185 = v197;
  (v197)(v245, v179);
  sub_1C0F9E27C(v237, &qword_1EBE94EA0);
  (v257)(v183, v173);
  (v184)(v244, v181);
  v185(v239, v179);
  return sub_1C0F9E27C(v238, &qword_1EBE94EA0);
}

uint64_t sub_1C114E3B8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v58 = v4;
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94FF8, &qword_1C12BC0B0);
  MEMORY[0x1EEE9AC00](v61);
  v6 = (&v56 - v5);
  v7 = sub_1C12629F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  sub_1C114911C(a1, &v56 - v12);
  v14 = *MEMORY[0x1E697DBB8];
  v56 = *(v8 + 104);
  v56(v10, v14, v7);
  v15 = sub_1C12629D0();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v57 = v16;
  v16(v13, v7);
  v59 = v2;
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(v2 + 184);
  if (!*(v17 + 16))
  {
    goto LABEL_14;
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  v18 = sub_1C1266EE0();
  v19 = v17 + 56;
  v20 = -1 << *(v17 + 32);
  v21 = v18 & ~v20;
  if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = ~v20;
  while (*(*(v17 + 48) + v21) != 2)
  {
    v21 = (v21 + 1) & v22;
    if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (*(v17 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](1), v23 = sub_1C1266EE0(), v24 = -1 << *(v17 + 32), v25 = v23 & ~v24, ((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
  {
    v26 = ~v24;
    v27 = *(v17 + 48);
    do
    {
      v28 = *(v27 + v25);
      v29 = v28 == 3;
      if (v28 == 3)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
    }

    while (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
  }

  else
  {
LABEL_14:
    v29 = 0;
  }

  v30 = v59;
  v31 = sub_1C1149880(a1);
  v32 = 0.0;
  if (sub_1C1149880(a1))
  {
    sub_1C114911C(a1, v13);
    v56(v10, *MEMORY[0x1E697DBA8], v7);
    v33 = sub_1C12629D0();
    v34 = v10;
    v35 = v31;
    v36 = v57;
    v57(v34, v7);
    v36(v13, v7);
    v31 = v35;
    if (v33)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 0.05;
    }
  }

  LODWORD(v57) = sub_1C1264470();
  v37 = sub_1C1149880(a1);
  LODWORD(v56) = sub_1C1264470();
  if (qword_1EBE8FC78 != -1)
  {
    swift_once();
  }

  v38 = 0.4;
  if (v29)
  {
    v38 = 0.7;
  }

  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  if (v31)
  {
    v40 = 30.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = qword_1EBEA4868;
  v42 = v30;
  v43 = sub_1C1149880(a1) & 1;
  KeyPath = swift_getKeyPath();
  v45 = (v6 + *(v61 + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91808, &qword_1C12AA368) + 28);
  swift_retain_n();
  sub_1C12658C0();
  v47 = sub_1C1265900();
  __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
  *v45 = KeyPath;
  *v6 = v40;
  v6[2] = v32;
  *(v6 + 12) = v57;
  v6[4] = v39;
  *(v6 + 20) = v56;
  *(v6 + 3) = v41;
  *(v6 + 32) = v43;
  *(v6 + 5) = v41;
  *(v6 + 48) = v29;
  v48 = v62;
  v49 = v60;
  (*(v62 + 16))(v60, v42, a1);
  v50 = (*(v48 + 80) + 112) & ~*(v48 + 80);
  v51 = swift_allocObject();
  v52 = a1[2];
  *(v51 + 1) = a1[1];
  *(v51 + 2) = v52;
  v53 = a1[4];
  *(v51 + 3) = a1[3];
  *(v51 + 4) = v53;
  v54 = a1[6];
  *(v51 + 5) = a1[5];
  *(v51 + 6) = v54;
  (*(v48 + 32))(&v51[v50], v49, a1);
  sub_1C1160464();
  sub_1C1264AF0();

  return sub_1C0F9E27C(v6, &qword_1EBE94FF8);
}

uint64_t sub_1C114E9A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a12, uint64_t a14)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95308, &qword_1C12BC348);
  sub_1C10239B0(&qword_1EBE95310, &qword_1EBE95308, &qword_1C12BC348, MEMORY[0x1E6981F48]);
  *a9 = sub_1C10A7F5C(v17);
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95318, &qword_1C12BC350);
  sub_1C114EB58(a2, a3, a4, a5, a6, a7, a8, a9 + *(v18 + 44), a10, a12, a14);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95090, &qword_1C12BC0F8);
  sub_1C10239B0(&qword_1EBE95088, &qword_1EBE95090, &qword_1C12BC0F8, MEMORY[0x1E6981870]);
  v20 = sub_1C10F4FC0(v19);
  v21 = sub_1C1170094(v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95078, &qword_1C12BC0F0);
  v23 = a9 + *(result + 36);
  *v23 = v20;
  *(v23 + 8) = v21;
  return result;
}

uint64_t sub_1C114EB58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  v70 = a3;
  v68 = a2;
  v82 = a8;
  v69 = a10;
  v67 = a9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95320, &qword_1C12BC358);
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v67 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95328, &qword_1C12BC360) - 8;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v67 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95330, &qword_1C12BC368);
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95338, &qword_1C12BC370);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v75 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v71 = &v67 - v31;
  *&v83 = a1;
  *(&v83 + 1) = v68;
  *&v84 = v70;
  *(&v84 + 1) = a4;
  *&v85 = a5;
  *(&v85 + 1) = a6;
  v86 = a7;
  v87 = v67;
  v88 = v69;
  v89 = a11;
  v32 = type metadata accessor for PhotosSearchOverlayView(0, &v83);
  sub_1C114F264(v32, v23);
  sub_1C1149E68(v32);
  sub_1C114A3A8(v32);
  sub_1C114A404(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95340, &qword_1C12BC378);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95348, &qword_1C12BC380);
  v35 = sub_1C11627C8(&qword_1EBE95350, &qword_1EBE95340, &qword_1C12BC378, sub_1C1162868);
  v36 = sub_1C116296C();
  *&v83 = v33;
  *(&v83 + 1) = v34;
  *&v84 = v35;
  *(&v84 + 1) = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v72;
  sub_1C10A0734(v72, OpaqueTypeConformance2, v39, v40, v41, v42);
  sub_1C1262C80();
  (*(v73 + 32))(v29, v23, v38);
  v43 = &v29[*(v25 + 44)];
  v44 = v91;
  *v43 = v90;
  *(v43 + 1) = v44;
  *(v43 + 2) = v92;
  v45 = v71;
  sub_1C0FE4040(v29, v71, &qword_1EBE95338, &qword_1C12BC370);
  v46 = v74;
  sub_1C114FA14(v32);
  sub_1C1149F28(v32);
  sub_1C114AE1C(v32);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95380, &qword_1C12BC398);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95388, &qword_1C12BC3A0);
  v49 = sub_1C1162A24();
  v50 = sub_1C1162B68();
  *&v83 = v47;
  *(&v83 + 1) = v48;
  *&v84 = v49;
  *(&v84 + 1) = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v79;
  sub_1C10A0734(v79, v51, v53, v54, v55, v56);
  sub_1C1262C80();
  v57 = v76;
  (*(v81 + 32))(v76, v46, v52);
  v58 = (v57 + *(v78 + 44));
  v59 = v84;
  *v58 = v83;
  v58[1] = v59;
  v58[2] = v85;
  v60 = v77;
  sub_1C0FE4040(v57, v77, &qword_1EBE95328, &qword_1C12BC360);
  v61 = v75;
  sub_1C0FE5654(v45, v75, &qword_1EBE95338, &qword_1C12BC370);
  v62 = v80;
  sub_1C0FE5654(v60, v80, &qword_1EBE95328, &qword_1C12BC360);
  v63 = v82;
  sub_1C0FE5654(v61, v82, &qword_1EBE95338, &qword_1C12BC370);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953D0, &unk_1C12BC3C0);
  v65 = v63 + *(v64 + 48);
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_1C0FE5654(v62, v63 + *(v64 + 64), &qword_1EBE95328, &qword_1C12BC360);
  sub_1C0F9E27C(v60, &qword_1EBE95328);
  sub_1C0F9E27C(v45, &qword_1EBE95338);
  sub_1C0F9E27C(v62, &qword_1EBE95328);
  return sub_1C0F9E27C(v61, &qword_1EBE95338);
}

uint64_t sub_1C114F264@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_1C1263EB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45[-v17];
  v49 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  MEMORY[0x1EEE9AC00](v49);
  v20 = &v45[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for PhotosBlurLegibilityGradient(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v50 = &v45[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95360, &qword_1C12BC388);
  MEMORY[0x1EEE9AC00](v51);
  v24 = &v45[-v23];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95340, &qword_1C12BC378);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45[-v25];
  v54 = v2;
  sub_1C1149320(a1, v18);
  v26 = *MEMORY[0x1E697FF40];
  v48 = v5;
  (*(v5 + 104))(v15, v26, v4);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v4);
  v27 = *(v8 + 56);
  sub_1C0FE5654(v18, v10, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FE5654(v15, &v10[v27], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v4) == 1)
    {
      sub_1C0F9E27C(v10, &qword_1EBE902F0);
      v28 = 50.0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v10, v56, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v4) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    (*(v48 + 8))(v56, v4);
LABEL_6:
    sub_1C0F9E27C(v10, &qword_1EBE902E8);
    v28 = 20.0;
    goto LABEL_10;
  }

  v29 = v48;
  v30 = &v10[v27];
  v31 = v47;
  (*(v48 + 32))(v47, v30, v4);
  sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v46 = sub_1C1265DE0();
  v32 = *(v29 + 8);
  v32(v31, v4);
  sub_1C0F9E27C(v15, &qword_1EBE902F0);
  sub_1C0F9E27C(v18, &qword_1EBE902F0);
  v32(v56, v4);
  sub_1C0F9E27C(v10, &qword_1EBE902F0);
  if (v46)
  {
    v28 = 50.0;
  }

  else
  {
    v28 = 20.0;
  }

LABEL_10:
  v33 = v52;
  v34 = &v20[*(v49 + 40)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  v36 = *(v35 + 48);
  *v34 = sub_1C1265160();
  v37 = *MEMORY[0x1E6981DF0];
  v38 = sub_1C1265A90();
  (*(*(v38 - 8) + 104))(v34 + v36, v37, v38);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  *v20 = 1;
  *(v20 + 1) = 0x3FF8000000000000;
  *(v20 + 2) = v28;
  *(v20 + 3) = 1;
  *(v20 + 4) = 0;
  v20[40] = 0;
  v39 = v50;
  PhotosBlurLegibilityGradient.init(spec:)(v20, v50);
  sub_1C1162C38(v39, v24);
  v24[*(v51 + 36)] = 0;
  sub_1C1162868();
  sub_1C1264CE0();
  v40 = sub_1C0F9E27C(v24, &qword_1EBE95360);
  if (qword_1EBE8FC80 != -1)
  {
    v40 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v40);
  v41 = a1[2];
  *&v45[-112] = a1[1];
  *&v45[-96] = v41;
  v42 = a1[4];
  *&v45[-80] = a1[3];
  *&v45[-64] = v42;
  v43 = a1[6];
  *&v45[-48] = a1[5];
  *&v45[-32] = v43;
  *&v45[-16] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95348, &qword_1C12BC380);
  sub_1C11627C8(&qword_1EBE95350, &qword_1EBE95340, &qword_1C12BC378, sub_1C1162868);
  sub_1C116296C();
  sub_1C1265030();
  return sub_1C0F9E27C(v33, &qword_1EBE95340);
}

uint64_t sub_1C114FA14(_OWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953A0, &qword_1C12BC3A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95380, &qword_1C12BC398);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  sub_1C1265B70();
  v10 = v9;
  v12 = v11;
  sub_1C1265B80();
  v26[1] = v10;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = 0x3FE6666666666666;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953B0, &qword_1C12BC3B0);
  sub_1C1162ADC();
  sub_1C1264CE0();
  v15 = *(v1 + 184);
  v16 = 1.0;
  if (*(v15 + 16))
  {
    sub_1C1266E90();
    MEMORY[0x1C68F07E0](4);
    v17 = sub_1C1266EE0();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (*(*(v15 + 48) + v19) != 5)
      {
        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v16 = 0.0;
    }
  }

LABEL_8:
  v21 = sub_1C0FE4040(v5, v8, &qword_1EBE953A0, &qword_1C12BC3A8);
  *&v8[*(v6 + 36)] = v16;
  if (qword_1EBE8FC80 != -1)
  {
    v21 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v21);
  v22 = a1[2];
  *&v26[-14] = a1[1];
  *&v26[-12] = v22;
  v23 = a1[4];
  *&v26[-10] = a1[3];
  *&v26[-8] = v23;
  v24 = a1[6];
  *&v26[-6] = a1[5];
  *&v26[-4] = v24;
  v26[-2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95388, &qword_1C12BC3A0);
  sub_1C1162A24();
  sub_1C1162B68();
  sub_1C1265030();
  return sub_1C0F9E27C(v8, &qword_1EBE95380);
}

uint64_t sub_1C114FD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v31 = a7;
  v32 = a8;
  v33 = a2;
  v34 = a1;
  v35 = a9;
  v30 = a13;
  v29 = a11;
  v28 = a10;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8, &qword_1C12BBEE8);
  sub_1C1263190();
  sub_1C1263E60();
  v17 = sub_1C1263190();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  v38[0] = a3;
  v38[1] = a4;
  v38[2] = a5;
  v38[3] = a6;
  v38[4] = v31;
  v38[5] = v32;
  v39 = v28;
  v40 = v29;
  v41 = a12;
  v42 = v30;
  v24 = type metadata accessor for PhotosSearchOverlayView(0, v38);
  sub_1C1149880(v24);
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v26 = *(v18 + 8);
  v26(v20, v17);
  sub_1C0FDBA4C();
  return (v26)(v23, v17);
}

uint64_t sub_1C114FF94@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13)
{
  v41 = a8;
  v40 = a7;
  v39 = a6;
  v37 = a5;
  v34 = a3;
  v33 = a2;
  v43 = a9;
  v38 = a13;
  v36 = a12;
  v35 = a10;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  v42 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v14 = sub_1C1263190();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = sub_1C1264490();
  sub_1C12644B0();
  v22 = sub_1C12644B0();
  v48 = v33;
  v49 = v34;
  v23 = v22 != v21;
  v50 = a4;
  v51 = v37;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v55 = v35;
  v56 = a11;
  v57 = v36;
  v58 = v38;
  v24 = type metadata accessor for PhotosSearchOverlayView(0, &v48);
  sub_1C1150388(v23, v24, v17);
  v47[6] = a11;
  v47[7] = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v26 = sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
  v47[4] = WitnessTable;
  v47[5] = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
  v47[2] = v27;
  v47[3] = v28;
  v29 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v30 = *(v15 + 8);
  v30(v17, v14);
  v48 = 0;
  LOBYTE(v49) = 1;
  v50 = 0xBFF0000000000000;
  v47[0] = &v48;
  (*(v15 + 16))(v17, v20, v14);
  v47[1] = v17;
  v46[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94EB8, &unk_1C12BBEF0);
  v46[1] = v14;
  v44 = sub_1C11626F8();
  v45 = v29;
  sub_1C119EE80(v47, 2, v46);
  v30(v20, v14);
  return (v30)(v17, v14);
}

uint64_t sub_1C1150388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v59 = a3;
  v58 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v7;
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1263190();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  v17 = sub_1C1263190();
  v54 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v48 = &v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v56 = v17;
  v50 = sub_1C1263190();
  v57 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v55 = &v46 - v22;
  v23 = a1;
  (*(v4 + 248))(a1, v21);
  v52 = v4;
  v24 = *(v4 + 184);
  if (*(v24 + 16))
  {
    sub_1C1266E90();
    MEMORY[0x1C68F07E0](4);
    v25 = sub_1C1266EE0();
    v26 = -1 << *(v24 + 32);
    v27 = v25 & ~v26;
    v28 = v47;
    if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v29 = ~v26;
      do
      {
        if (*(*(v24 + 48) + v27) == 5)
        {
          break;
        }

        v27 = (v27 + 1) & v29;
      }

      while (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
    }
  }

  else
  {
    v28 = v47;
  }

  v30 = *(a2 + 80);
  sub_1C1264F50();
  (*(v10 + 8))(v13, v9);
  if (qword_1EBE8FC80 != -1)
  {
    swift_once();
  }

  v66[0] = v23 & 1;
  v64 = v30;
  v65 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v32 = v48;
  sub_1C1265040();
  (*(v28 + 8))(v16, v14);
  v33 = v58;
  v34 = v49;
  (*(v58 + 16))(v49, v52, a2);
  v35 = (*(v33 + 80) + 112) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = *(a2 + 16);
  *(v36 + 32) = v9;
  *(v36 + 40) = *(a2 + 40);
  *(v36 + 56) = *(a2 + 56);
  *(v36 + 72) = *(a2 + 72);
  *(v36 + 80) = v30;
  *(v36 + 88) = *(a2 + 88);
  *(v36 + 104) = *(a2 + 104);
  (*(v33 + 32))(v36 + v35, v34, a2);
  v37 = sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
  v62 = WitnessTable;
  v63 = v37;
  v38 = v56;
  v39 = swift_getWitnessTable();
  sub_1C0FF9EE4();
  v40 = v53;
  sub_1C1264C40();

  (*(v54 + 8))(v32, v38);
  v41 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
  v60 = v39;
  v61 = v41;
  v42 = v50;
  swift_getWitnessTable();
  v43 = v55;
  sub_1C0FDBA4C();
  v44 = *(v57 + 8);
  v44(v40, v42);
  sub_1C0FDBA4C();
  return (v44)(v43, v42);
}

uint64_t sub_1C1150A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v31 = a7;
  v32 = a8;
  v33 = a2;
  v34 = a1;
  v35 = a9;
  v30 = a13;
  v29 = a11;
  v28 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8, &unk_1C12BBEF0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210, &unk_1C12A8430);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263E60();
  v17 = sub_1C1263190();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  v38[0] = a3;
  v38[1] = a4;
  v38[2] = a5;
  v38[3] = a6;
  v38[4] = v31;
  v38[5] = v32;
  v39 = v28;
  v40 = v29;
  v41 = a12;
  v42 = v30;
  v24 = type metadata accessor for PhotosSearchOverlayView(0, v38);
  sub_1C1149880(v24);
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697E5C0];
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v26 = *(v18 + 8);
  v26(v20, v17);
  sub_1C0FDBA4C();
  return (v26)(v23, v17);
}

uint64_t sub_1C1150DD8@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, char *a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(void, void), uint64_t a13, unint64_t a14)
{
  v125 = a4;
  v126 = a8;
  v117 = a5;
  v118 = a7;
  v132 = a6;
  v121 = a2;
  v142 = a1;
  v130 = a9;
  v124 = a11;
  v122 = a10;
  v120 = a14;
  v123 = a13;
  v119 = a12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  sub_1C1263190();
  sub_1C1266790();
  v169 = a5;
  v170 = a7;
  v171 = a12;
  v172 = a14;
  v17 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(255, &v169);
  sub_1C1263E60();
  v18 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v181 = swift_getWitnessTable();
  v182 = MEMORY[0x1E697E5C0];
  v20 = swift_getWitnessTable();
  v169 = v17;
  v170 = v18;
  v171 = WitnessTable;
  v172 = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  sub_1C1263190();
  sub_1C1266790();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08, &qword_1C12BBF48);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v21 = sub_1C12655A0();
  v111 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v109 = &v108 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0, &qword_1C12BBF28);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  v115 = a3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8, &qword_1C12BBF30);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v25 = sub_1C1262C50();
  v26 = swift_getWitnessTable();
  v169 = v25;
  v170 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00, &qword_1C12BBF38);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v137 = sub_1C12655A0();
  v139 = sub_1C1263190();
  v140 = sub_1C1263190();
  v27 = sub_1C1266790();
  v114 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v113 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v112 = &v108 - v30;
  v141 = v31;
  v144 = v21;
  v32 = sub_1C1263C30();
  v128 = *(v32 - 8);
  v129 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v127 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v138 = &v108 - v35;
  v36 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8, &qword_1C12BBF08);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v37 = sub_1C12654C0();
  v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0, &qword_1C12BBF10);
  v134 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8, &qword_1C12BBF18);
  v40 = sub_1C1263C40();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0, &qword_1C12BBF20);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560, &qword_1C12A5E00);
  v43 = sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560, &qword_1C12A5E00, MEMORY[0x1E697D680]);
  v44 = sub_1C114C53C();
  v169 = v42;
  v170 = &type metadata for PhotosMaterialToolbarTextButtonStyle;
  v171 = v43;
  v172 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v169 = v41;
  v170 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_1C1162924(&qword_1EDE76E08, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v169 = v39;
  v170 = v40;
  v171 = v46;
  v172 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v169 = v36;
  v170 = v37;
  v171 = v135;
  v172 = v134;
  v173 = v38;
  v174 = v48;
  v49 = type metadata accessor for PhotosNotchToolbar(255, &v169);
  v134 = swift_getWitnessTable();
  v135 = v49;
  v169 = v49;
  v170 = v134;
  swift_getOpaqueTypeMetadata2();
  v50 = sub_1C1263190();
  v108 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v108 - v51;
  v53 = sub_1C1263190();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v108 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v108 - v58;
  v136 = sub_1C1266790();
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v61 = &v108 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v143 = &v108 - v63;
  v169 = v121;
  v170 = v115;
  v171 = v125;
  v172 = v117;
  v173 = v132;
  v174 = v118;
  v175 = v126;
  v176 = v122;
  v177 = v124;
  v178 = v119;
  v179 = v123;
  v180 = v120;
  v64 = type metadata accessor for PhotosSearchOverlayView(0, &v169);
  v65 = sub_1C1149880(v64);
  v116 = v50;
  v131 = v53;
  if ((v65 & 1) != 0 && !sub_1C1149850(v64))
  {
    sub_1C11522CC();
    if (qword_1EBE8FC60 != -1)
    {
      swift_once();
    }

    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58, &qword_1C12B16D0);
    v126 = __swift_project_value_buffer(v132, qword_1EBEA4848);
    v169 = v135;
    v170 = v134;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    v147 = v70;
    v148 = v71;
    v125 = MEMORY[0x1E697E858];
    v72 = swift_getWitnessTable();
    v73 = sub_1C1263840();
    v74 = sub_1C1162924(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v169 = v73;
    v170 = v74;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = sub_1C122D670(v126, v50, v132, v72, v75);
    (*(v108 + 8))(v52, v50, v76);
    v77 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    v145 = v72;
    v146 = v77;
    v78 = v131;
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v79 = *(v54 + 8);
    v79(v56, v78);
    sub_1C0FDBA4C();
    v79(v59, v78);
    (*(v54 + 32))(v61, v56, v78);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v78);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v53);
    v169 = v135;
    v170 = v134;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
    v168[9] = v66;
    v168[10] = v67;
    v68 = swift_getWitnessTable();
    v69 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    v168[7] = v68;
    v168[8] = v69;
    swift_getWitnessTable();
  }

  v80 = v141;
  sub_1C1170030(v61, v143);
  v81 = *(v133 + 8);
  v132 = v61;
  v125 = v81;
  v126 = v133 + 8;
  v81(v61, v136);
  sub_1C1149504(v64, &v169);
  v82 = MEMORY[0x1E697E5D8];
  if (v174 < 0)
  {
    v89 = v110;
    sub_1C1153A98(v64, v110);
    swift_getWitnessTable();
    v90 = v109;
    sub_1C0FDBA4C();
    v142 = *(v111 + 8);
    v142(v89, v144);
    sub_1C0FDBA4C();
    v152 = swift_getWitnessTable();
    v153 = MEMORY[0x1E697E5D8];
    v91 = swift_getWitnessTable();
    v92 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    v150 = v91;
    v151 = v92;
    v149 = swift_getWitnessTable();
    swift_getWitnessTable();
    v88 = v138;
    sub_1C1112E18();
    v93 = v142;
    v142(v89, v144);
    v93(v90, v144);
  }

  else
  {
    v83 = v113;
    sub_1C1152CA8(v64, v113);
    v168[5] = swift_getWitnessTable();
    v168[6] = v82;
    v84 = swift_getWitnessTable();
    v85 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    v168[3] = v84;
    v168[4] = v85;
    v168[2] = swift_getWitnessTable();
    swift_getWitnessTable();
    v86 = v112;
    sub_1C0FDBA4C();
    v87 = *(v114 + 8);
    v87(v83, v80);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    v88 = v138;
    sub_1C1112D68();
    v87(v83, v80);
    v87(v86, v80);
  }

  v94 = v132;
  v95 = v136;
  (*(v133 + 16))(v132, v143, v136);
  v169 = v94;
  v96 = v127;
  v97 = v128;
  v98 = v129;
  (*(v128 + 16))(v127, v88, v129);
  v170 = v96;
  v168[0] = v95;
  v168[1] = v98;
  v166 = v135;
  v167 = v134;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0, &qword_1C12BBF00, MEMORY[0x1E69802E0]);
  v164 = v99;
  v165 = v100;
  v101 = swift_getWitnessTable();
  v102 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
  v162 = v101;
  v163 = v102;
  v161 = swift_getWitnessTable();
  v166 = swift_getWitnessTable();
  v159 = swift_getWitnessTable();
  v160 = MEMORY[0x1E697E5D8];
  v157 = swift_getWitnessTable();
  v158 = v102;
  v156 = swift_getWitnessTable();
  v103 = swift_getWitnessTable();
  v104 = swift_getWitnessTable();
  v154 = v103;
  v155 = v104;
  v167 = swift_getWitnessTable();
  sub_1C119EE80(&v169, 2, v168);
  v105 = *(v97 + 8);
  v105(v138, v98);
  v106 = v125;
  v125(v143, v95);
  v105(v96, v98);
  return v106(v94, v95);
}

void sub_1C11522CC()
{
  OUTLINED_FUNCTION_23();
  v102 = v0;
  v2 = v1;
  v96 = v3;
  OUTLINED_FUNCTION_0();
  v112 = v4;
  v111 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_11_1(v7);
  v110 = *(v8 + 24);
  v9 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8, &qword_1C12BBF08);
  v101 = *(v2 + 48);
  sub_1C1266790();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  v10 = sub_1C12654C0();
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0, &qword_1C12BBF10);
  v11.i64[0] = v101;
  v107 = v11;
  v99 = *(v2 + 72);
  v121 = v99;
  OUTLINED_FUNCTION_17();
  v88 = v9;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v87 = v10;
  v85 = swift_getWitnessTable();
  *&v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8, &qword_1C12BBF18);
  sub_1C1263C40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0, &qword_1C12BBF20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560, &qword_1C12A5E00);
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_67();
  sub_1C10239B0(v12, v13, v14, v15);
  sub_1C114C53C();
  OUTLINED_FUNCTION_14_20();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_22();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_17();
  sub_1C1162924(v16, v17, MEMORY[0x1E697C650]);
  OUTLINED_FUNCTION_11_25();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v9;
  v116 = v10;
  v117 = v103;
  v118 = WitnessTable;
  v119 = v85;
  v120 = OpaqueTypeConformance2;
  v83 = type metadata accessor for PhotosNotchToolbar(0, &v115);
  OUTLINED_FUNCTION_1();
  v90 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v20);
  OUTLINED_FUNCTION_10_27();
  v84 = swift_getWitnessTable();
  v115 = v83;
  v116 = v84;
  OUTLINED_FUNCTION_9_28();
  v91 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v93 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  v94 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_11_1(&v75 - v28);
  v29 = v112;
  v30 = v112 + 16;
  v106 = *(v112 + 16);
  v31 = v100;
  v32 = v102;
  v106(v100, v102, v2);
  v98 = *(v29 + 80);
  v33 = (v98 + 112) & ~v98;
  v34 = swift_allocObject();
  v97 = *(v2 + 16);
  *&v35 = v97;
  v36 = v110;
  *(&v35 + 1) = v110;
  v77 = *(v2 + 96);
  v105 = *(v2 + 104);
  v37 = v105;
  *(v34 + 96) = v77;
  *(v34 + 104) = v37;
  v109 = *(v2 + 32);
  v38 = v109;
  *(v34 + 16) = v35;
  *(v34 + 32) = v38;
  v108 = *(v2 + 56);
  v39 = vzip1q_s64(v107, v108);
  *&v38 = vdupq_laneq_s64(v108, 1).u64[0];
  *(&v38 + 1) = v99;
  *(v34 + 48) = v39;
  *(v34 + 64) = v38;
  v39.i64[0] = *(&v38 + 1);
  v76 = v39;
  v107 = *(v2 + 80);
  *(v34 + 80) = v107;
  v40 = *(v29 + 32);
  v112 = v29 + 32;
  v104 = v40;
  v75 = *(v2 + 88);
  v40(v34 + v33, v31, v2);
  v78 = v30;
  v106(v31, v32, v2);
  v41 = swift_allocObject();
  v42 = v97;
  *(v41 + 16) = v97;
  *(v41 + 24) = v36;
  v43 = v108;
  *(v41 + 32) = v109;
  v44 = v101;
  *(v41 + 48) = v101;
  *(v41 + 56) = v43;
  v45 = vzip1q_s64(v76, v107);
  *(v41 + 88) = v75;
  *(v41 + 72) = v45;
  *(v41 + 104) = v105;
  v46 = v100;
  OUTLINED_FUNCTION_74_0();
  v47();
  v106(v46, v32, v2);
  v48 = swift_allocObject();
  v49 = v110;
  *(v48 + 16) = v42;
  *(v48 + 24) = v49;
  v50 = v108;
  *(v48 + 32) = v109;
  *(v48 + 48) = v44;
  *(v48 + 56) = v50;
  v51 = v99;
  *(v48 + 72) = v99;
  *(v48 + 80) = v107;
  v52 = v77;
  v53 = v105;
  *(v48 + 96) = v77;
  *(v48 + 104) = v53;
  OUTLINED_FUNCTION_74_0();
  v54();
  *(&v74 + 1) = WitnessTable;
  *&v74 = v103;
  PhotosNotchToolbar.init(content:leadingContent:trailingContent:)(sub_1C1160A98, v34, sub_1C1160AB0, v41, sub_1C1160AC8, v48, v80, v88, v87, v74, v85, OpaqueTypeConformance2);
  sub_1C1264420();
  sub_1C12659A0();
  v55 = v79;
  v56 = v83;
  v57 = v84;
  sub_1C1264DB0();
  v58 = OUTLINED_FUNCTION_61_1();
  v59(v58);
  v106(v46, v102, v2);
  v60 = swift_allocObject();
  v61 = v110;
  *(v60 + 16) = v97;
  *(v60 + 24) = v61;
  v62 = v108;
  *(v60 + 32) = v109;
  *(v60 + 48) = v101;
  *(v60 + 56) = v62;
  *(v60 + 72) = v51;
  *(v60 + 80) = v107;
  v63 = v105;
  *(v60 + 96) = v52;
  *(v60 + 104) = v63;
  OUTLINED_FUNCTION_74_0();
  v64();
  v115 = v56;
  v116 = v57;
  v65 = swift_getOpaqueTypeConformance2();
  sub_1C0FF9EE4();
  v66 = v82;
  v67 = OpaqueTypeMetadata2;
  sub_1C1264C40();

  (*(v93 + 8))(v55, v67);
  OUTLINED_FUNCTION_20_4();
  v70 = sub_1C10239B0(v68, &qword_1EBE94EC0, &qword_1C12BBF00, v69);
  v113 = v65;
  v114 = v70;
  OUTLINED_FUNCTION_4_0();
  v71 = v94;
  swift_getWitnessTable();
  v72 = v92;
  sub_1C0FDBA4C();
  v73 = *(v95 + 8);
  v73(v66, v71);
  sub_1C0FDBA4C();
  v73(v72, v71);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1152CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58, &qword_1C12B16D0);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v70 - v3;
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0, &qword_1C12BBF28);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  v90 = v4;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8, &qword_1C12BBF30);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C1262C50();
  WitnessTable = swift_getWitnessTable();
  v99 = v5;
  v100 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0, &qword_1C12BBF00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00, &qword_1C12BBF38);
  v7 = *(a1 + 56);
  v8 = *(a1 + 88);
  v9 = *(a1 + 104);
  v81 = *(a1 + 40);
  v99 = v81;
  v100 = v7;
  v82 = v7;
  v83 = v8;
  v101 = v8;
  v102 = v9;
  v84 = v9;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated(255, &v99);
  sub_1C1263E60();
  v11 = sub_1C1263190();
  v12 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  v113 = MEMORY[0x1E697E5C0];
  v13 = swift_getWitnessTable();
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v102 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  v14 = sub_1C1265B00();
  v78 = swift_getWitnessTable();
  v15 = sub_1C12655A0();
  v80 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v70 - v16;
  v17 = sub_1C1263190();
  v87 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v77 = &v70 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8, &qword_1C12A9330);
  v92 = v17;
  v19 = sub_1C1263190();
  v89 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v70 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v86 = &v70 - v24;
  v25 = sub_1C1266790();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  v32 = v93;
  v33 = sub_1C1149880(a1);
  v34 = MEMORY[0x1E697E5D8];
  if (v33)
  {
    v73 = v26;
    v71 = v31;
    v72 = v25;
    v91 = v15;
    MEMORY[0x1EEE9AC00](v33);
    v35 = v90;
    *(&v70 - 14) = *(a1 + 16);
    *(&v70 - 13) = v35;
    v36 = v81;
    *(&v70 - 12) = *(a1 + 32);
    *(&v70 - 11) = v36;
    v37 = v82;
    *(&v70 - 10) = *(a1 + 48);
    *(&v70 - 9) = v37;
    *(&v70 - 4) = *(a1 + 64);
    v38 = v83;
    *(&v70 - 6) = *(a1 + 80);
    *(&v70 - 5) = v38;
    v39 = v84;
    *(&v70 - 4) = *(a1 + 96);
    *(&v70 - 3) = v39;
    *(&v70 - 2) = v32;
    sub_1C10A7F5C(v14);
    v40 = v79;
    sub_1C1265590();
    v41 = v91;
    sub_1C1264460();
    v42 = swift_getWitnessTable();
    v43 = v77;
    sub_1C1264FB0();
    (*(v80 + 8))(v40, v41);
    v44 = *(v32 + 184);
    v45 = v92;
    v46 = v28;
    if (*(v44 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](1), v47 = sub_1C1266EE0(), v48 = -1 << *(v44 + 32), v49 = v47 & ~v48, ((*(v44 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
    {
      v50 = ~v48;
      while (*(*(v44 + 48) + v49) != 3)
      {
        v49 = (v49 + 1) & v50;
        if (((*(v44 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (qword_1EBE8FC60 != -1)
      {
        swift_once();
      }

      v66 = v76;
      v67 = __swift_project_value_buffer(v76, qword_1EBEA4848);
      (*(v74 + 16))(v75, v67, v66);
      v68 = sub_1C1263840();
      v69 = sub_1C1162924(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
      v99 = v68;
      v100 = v69;
      swift_getOpaqueTypeConformance2();
      sub_1C1262CE0();
      v51 = MEMORY[0x1E697E5D8];
      v46 = v28;
    }

    else
    {
LABEL_7:
      if (qword_1EBE8FC68 != -1)
      {
        swift_once();
      }

      v51 = MEMORY[0x1E697E5D8];
    }

    v52 = v43;
    v97 = v42;
    v98 = v51;
    v53 = swift_getWitnessTable();
    v54 = v85;
    sub_1C12649D0();

    (*(v87 + 8))(v52, v45);
    v55 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    v95 = v53;
    v96 = v55;
    swift_getWitnessTable();
    v56 = v86;
    sub_1C0FDBA4C();
    v57 = v89;
    v58 = *(v89 + 8);
    v58(v54, v19);
    v59 = v88;
    sub_1C0FDBA4C();
    v58(v56, v19);
    (*(v57 + 32))(v46, v59, v19);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v19);
    v31 = v71;
    sub_1C1170030(v46, v71);
    v60 = *(v73 + 8);
    v25 = v72;
    v60(v46, v72);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v19);
    v110 = swift_getWitnessTable();
    v111 = v34;
    v61 = swift_getWitnessTable();
    v62 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    v108 = v61;
    v109 = v62;
    swift_getWitnessTable();
    sub_1C1170030(v28, v31);
    v60 = *(v26 + 8);
    v60(v28, v25);
  }

  v106 = swift_getWitnessTable();
  v107 = MEMORY[0x1E697E5D8];
  v63 = swift_getWitnessTable();
  v64 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
  v104 = v63;
  v105 = v64;
  v103 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (v60)(v31, v25);
}