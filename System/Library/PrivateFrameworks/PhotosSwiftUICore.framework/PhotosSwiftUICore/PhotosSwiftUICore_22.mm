uint64_t sub_1C11B4B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1C1263130();
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v26 - v6;
  v29 = a1[7];
  v30 = a1 + 5;
  v27 = a1[3];
  sub_1C12655A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  v28 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0, &qword_1C12C1600);
  v7 = a1[4];
  v8 = a1[2];
  v26 = a1[6];
  type metadata accessor for PhotosCellBadgeView(255, v8, v26, v9);
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v10 = sub_1C12654C0();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  sub_1C12638E0();
  *&v13 = v7;
  *(&v13 + 1) = *v30;
  *&v14 = v8;
  *(&v14 + 1) = v27;
  v36 = v14;
  v37 = v13;
  v38 = v26;
  v39 = v29;
  v40 = a1[8];
  v41 = v32;
  v30 = v12;
  sub_1C12654B0();
  v15 = v31;
  sub_1C11B016C(a1, v31);
  v17 = v33;
  v16 = v34;
  (*(v34 + 104))(v33, *MEMORY[0x1E697E6E8], v3);
  sub_1C11BF2B8(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  LOBYTE(v12) = sub_1C1265D90();
  v18 = *(v16 + 8);
  v18(v17, v3);
  v18(v15, v3);
  if ((v12 & 1) == 0)
  {
    sub_1C11AFD4C(a1, v42);
    sub_1C100C7D0(v42);
  }

  WitnessTable = swift_getWitnessTable();
  sub_1C10A0734(v10, WitnessTable, v19, v20, v21, v22);
  v23 = v30;
  sub_1C1264EA0();
  return (*(v28 + 8))(v23, v10);
}

uint64_t sub_1C11B50B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v36 = a3;
  v34 = *(a1 + 16);
  v33 = *(a1 + 40);
  type metadata accessor for PhotosFavoriteBadge(255, v34, *(*(v33 + 8) + 8), a2);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v4 = sub_1C12655C0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8, &qword_1C12C1608);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0, &qword_1C12C1610);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8, &qword_1C12C1618);
  v8 = *(a1 + 32);
  v9 = sub_1C11B248C();
  v10 = sub_1C11B26B8();
  v11 = sub_1C11B2B94();
  v12 = *(a1 + 64);
  v47[0] = v5;
  v47[1] = v6;
  v47[2] = v7;
  v47[3] = v8;
  v47[4] = v9;
  v47[5] = v10;
  v47[6] = v11;
  v47[7] = v12;
  v13 = type metadata accessor for PhotosTitleAccessoryStack(255, v47);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v47[0] = v4;
  v47[1] = v13;
  v47[2] = WitnessTable;
  v47[3] = v15;
  v16 = type metadata accessor for PhotosContentTitleCard(0, v47);
  v32 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  *&v19 = v8;
  *(&v19 + 1) = v33;
  v40[1] = v34;
  v40[2] = v19;
  v41 = *(a1 + 48);
  v42 = v12;
  v43 = v35;
  v37[1] = v34;
  v37[2] = v19;
  v37[3] = v41;
  v38 = v12;
  v39 = v35;
  PhotosContentTitleCard.init(content:titleStack:)(sub_1C11BF4DC, v40, sub_1C11BF4F4, v37, v4, v13, WitnessTable, v15);
  swift_getKeyPath();
  if (qword_1EDE82B50 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDE82B58;
  v21 = qword_1EDE82B60;
  v22 = unk_1EDE82B68;
  v23 = qword_1EDE82B70;
  v24 = qword_1EDE82B78;

  if (v24 != -1)
  {
    swift_once();
  }

  v44[0] = 0x402E000000000000;
  v44[1] = v20;
  v44[2] = v21;
  v44[3] = v22;
  v44[4] = v23;
  __asm { FMOV            V1.2D, #16.0 }

  *&v44[5] = _Q1;
  *&v44[7] = _Q1;
  __asm { FMOV            V1.2D, #10.0 }

  *&v44[9] = _Q1;
  *&v44[11] = _Q1;
  memset(&v44[14], 0, 40);
  v44[13] = 0x4052000000000000;
  v44[19] = 0x8000000000000000;
  LOWORD(v44[20]) = 1;
  HIWORD(v44[20]) = v46;
  *(&v44[20] + 2) = v45;
  v44[21] = 0;
  v44[22] = qword_1EDE82B80;
  *&v44[23] = *&qword_1EDE82B88;
  v44[25] = qword_1EDE82B98;

  swift_getWitnessTable();
  sub_1C1264A30();

  memcpy(v47, v44, 0xD0uLL);
  sub_1C100C7D0(v47);
  return (*(v32 + 8))(v18, v16);
}

uint64_t sub_1C11B5538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v19 = *(a1 + 24);
  v20 = (a1 + 40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868, &unk_1C12C1690);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  type metadata accessor for PhotosCellBadgeView(255, v4, v5, v6);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v7 = sub_1C1265B00();
  swift_getWitnessTable();
  v8 = sub_1C12655A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  *&v15 = v3;
  *(&v15 + 1) = *v20;
  *&v16 = v4;
  *(&v16 + 1) = v19;
  v23 = v16;
  v24 = v15;
  v25 = v5;
  v26 = *(a1 + 56);
  v27 = v21;
  sub_1C10A7F5C(v7);
  sub_1C1265590();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1C0FDBA4C();
  return (v17)(v14, v8);
}

uint64_t sub_1C11B5878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v77 = a5;
  v78 = a8;
  v62 = a7;
  v74 = a4;
  v75 = a6;
  v72 = a9;
  v73 = a2;
  v76 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96868, &unk_1C12C1690);
  type metadata accessor for PhotosCellBadgeView(255, a2, a6, v12);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  v65 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v67 = sub_1C12654C0();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v54 - v13;
  v69 = sub_1C1263190();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v54 - v16;
  v17 = a3;
  v18 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C1263190();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v54 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  v26 = sub_1C1263190();
  v27 = *(v26 - 8);
  v56 = v26;
  v57 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v79 = &v54 - v31;
  *&v92 = v73;
  *(&v92 + 1) = v17;
  *&v93 = v74;
  *(&v93 + 1) = v77;
  v32 = v62;
  v94 = v75;
  v95 = v62;
  v96 = v78;
  v59 = type metadata accessor for PhotosAlbumCell(0, &v92);
  v33 = *(v76 + *(v59 + 84));
  v92 = 0u;
  v93 = 0u;
  v33(&v92);
  v54 = v17;
  sub_1C12649E0();
  (*(v18 + 8))(v21, v17);
  v91[6] = v32;
  v91[7] = MEMORY[0x1E697F568];
  v34 = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v23 + 8))(v25, v22);
  v35 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030, &qword_1C12BBF40, MEMORY[0x1E697FDC0]);
  v91[4] = v34;
  v91[5] = v35;
  v36 = v56;
  v58 = swift_getWitnessTable();
  v55 = v29;
  sub_1C0FDBA4C();
  v37 = v57;
  v60 = *(v57 + 8);
  v61 = v57 + 8;
  v38 = v29;
  v39 = v36;
  v60(v38, v36);
  v80 = v73;
  v81 = v54;
  v82 = v74;
  v83 = v77;
  v84 = v75;
  v85 = v32;
  v86 = v78;
  v87 = v76;
  sub_1C1012734(v65);
  v40 = v63;
  sub_1C12654B0();
  sub_1C11AFD4C(v59, &v92);
  sub_1C100C7D0(&v92);
  v41 = v67;
  v42 = swift_getWitnessTable();
  v43 = v66;
  sub_1C1264FA0();
  (*(v70 + 8))(v40, v41);
  v91[2] = v42;
  v91[3] = MEMORY[0x1E697E5D8];
  v44 = v69;
  v45 = swift_getWitnessTable();
  v46 = v68;
  v47 = v43;
  sub_1C0FDBA4C();
  v48 = v71;
  v49 = *(v71 + 8);
  v49(v47, v44);
  v50 = *(v37 + 16);
  v51 = v55;
  v50(v55, v79, v39);
  v91[0] = v51;
  (*(v48 + 16))(v47, v46, v44);
  v91[1] = v47;
  v90[0] = v39;
  v90[1] = v44;
  v88 = v58;
  v89 = v45;
  sub_1C119EE80(v91, 2, v90);
  v49(v46, v44);
  v52 = v60;
  v60(v79, v39);
  v49(v47, v44);
  return v52(v51, v39);
}

uint64_t sub_1C11B602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v49 = a7;
  v47 = a5;
  v50 = a9;
  type metadata accessor for PhotosCellBadgeView(255, a2, a6, a4);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  v42 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C12655A0();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v40 - v17;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96868, &unk_1C12C1690);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  *v21 = sub_1C1263AB0();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96908, &qword_1C12C1920);
  v23 = a3;
  v24 = a3;
  v25 = a4;
  v26 = a4;
  v27 = v47;
  v28 = a6;
  v29 = a6;
  v30 = v49;
  v31 = v45;
  sub_1C11B64A4(a2, v24, v26, v47, v29, v49, v45, &v21[*(v22 + 44)]);
  v52 = a2;
  v53 = v23;
  v54 = v25;
  v55 = v27;
  v56 = v28;
  v57 = v30;
  v58 = v31;
  v59 = a1;
  sub_1C10A7F5C(v42);
  v32 = v41;
  sub_1C1265590();
  v33 = MEMORY[0x1E6981870];
  v49 = swift_getWitnessTable();
  v34 = v44;
  sub_1C0FDBA4C();
  v35 = v46;
  v36 = *(v46 + 8);
  v37 = v32;
  v36(v32, v14);
  v38 = v51;
  sub_1C0FE5654(v21, v51, &qword_1EBE96868, &unk_1C12C1690);
  v64 = 0;
  v65 = 1;
  v66[0] = v38;
  v66[1] = &v64;
  (*(v35 + 16))(v37, v34, v14);
  v66[2] = v37;
  v63[0] = v48;
  v63[1] = MEMORY[0x1E6981840];
  v63[2] = v14;
  v60 = sub_1C10239B0(&qword_1EBE96910, &qword_1EBE96868, &unk_1C12C1690, v33);
  v61 = MEMORY[0x1E6981838];
  v62 = v49;
  sub_1C119EE80(v66, 3, v63);
  v36(v34, v14);
  sub_1C0F9E27C(v21, &qword_1EBE96868);
  v36(v37, v14);
  return sub_1C0F9E27C(v51, &qword_1EBE96868);
}

uint64_t sub_1C11B64A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v37 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B0, &qword_1C12C1610);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = sub_1C1263130();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A8, &qword_1C12C1608);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v38[0] = a1;
  v38[1] = v32;
  v38[2] = v33;
  v38[3] = v34;
  v38[4] = v35;
  v38[5] = v36;
  v38[6] = a7;
  v26 = type metadata accessor for PhotosAlbumCell(0, v38);
  sub_1C11B016C(v26, v19);
  LOBYTE(a1) = sub_1C1263120();
  (*(v17 + 8))(v19, v16);
  if (a1)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  sub_1C11B67B4(v27, 0, 0, v26, v25);
  sub_1C11B6AA8(v26, v15);
  sub_1C0FE5654(v25, v22, &qword_1EBE967A8, &qword_1C12C1608);
  sub_1C0FE5654(v15, v12, &qword_1EBE967B0, &qword_1C12C1610);
  v28 = v37;
  sub_1C0FE5654(v22, v37, &qword_1EBE967A8, &qword_1C12C1608);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96918, &unk_1C12C1928);
  sub_1C0FE5654(v12, v28 + *(v29 + 48), &qword_1EBE967B0, &qword_1C12C1610);
  sub_1C0F9E27C(v15, &qword_1EBE967B0);
  sub_1C0F9E27C(v25, &qword_1EBE967A8);
  sub_1C0F9E27C(v12, &qword_1EBE967B0);
  return sub_1C0F9E27C(v22, &qword_1EBE967A8);
}

uint64_t sub_1C11B67B4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v32 = a2;
  v33 = a1;
  v36 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90CB0, &qword_1C12A76A0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967C8, &qword_1C12C1628);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967C0, &qword_1C12C1620);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  sub_1C11BC378(a4);
  sub_1C11BC428(a4);
  v16 = sub_1C1264870();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v38 = v16;
  v39 = v18;
  v23 = v20 & 1;
  v40 = v20 & 1;
  v41 = v22;
  v24 = v31;
  sub_1C1265090();
  sub_1C0FDB8E8(v16, v18, v23);

  KeyPath = swift_getKeyPath();
  (*(v34 + 32))(v11, v24, v35);
  v26 = &v11[*(v9 + 44)];
  *v26 = KeyPath;
  v26[8] = 0;
  LODWORD(KeyPath) = sub_1C1263E40();
  sub_1C0FE4040(v11, v15, &qword_1EBE967C8, &qword_1C12C1628);
  *&v15[*(v13 + 44)] = KeyPath;
  if (v37)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = v15;
  v29 = v36;
  sub_1C0FE4040(v28, v36, &qword_1EBE967C0, &qword_1C12C1620);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A8, &qword_1C12C1608);
  *(v29 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_1C11B6AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a3;
  v73 = a5;
  v71 = a9;
  v60 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PhotosCellBadgeView(0, v16, v18, v17);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v59 - v23;
  v24 = sub_1C1266790();
  v25 = *(v24 - 8);
  v65 = v24;
  v66 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v68 = &v59 - v29;
  v69 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v67 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v59 - v33;
  v79.n128_u64[0] = a2;
  v79.n128_u64[1] = v72;
  v80 = a4;
  v81 = v73;
  v64 = a6;
  v82 = a6;
  v83 = a7;
  v84 = a8;
  v35 = type metadata accessor for PhotosAlbumCell(0, &v79);
  v72 = a4;
  v73 = v34;
  v70 = a8;
  sub_1C0FDBA4C();
  v36 = (a1 + *(v35 + 80));
  v37 = *v36;
  if (*v36)
  {
    v38 = v20;
    v59 = v27;
    v39 = v36[2];
    v40 = v36[3];
    v41 = v36[1];
    v42 = v61;
    (*(v60 + 16))(v61, a1, a2);

    sub_1C0FCF1B4(v39, v40);
    v43 = sub_1C11B06B8(v35);
    v44 = 196611;
    if (!v43)
    {
      v44 = 196613;
    }

    v77 = v44;
    LODWORD(v78) = 17367552;
    v79.n128_u64[0] = v37;
    v79.n128_u64[1] = v41;
    v80 = v39;
    v81 = v40;
    v27 = v59;
    v45 = v63;
    PhotosCellBadgeView.init(model:font:configuration:)(v42, &v77, &v79, a2, v64, v63);
    swift_getWitnessTable();
    v46 = v62;
    sub_1C0FDBA4C();
    v47 = *(v38 + 8);
    v47(v45, v19);
    sub_1C0FDBA4C();
    v47(v46, v19);
    (*(v38 + 32))(v27, v45, v19);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v19);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v19);
    swift_getWitnessTable();
  }

  v48 = v68;
  sub_1C1170030(v27, v68);
  v49 = v66;
  v50 = *(v66 + 8);
  v51 = v27;
  v52 = v27;
  v53 = v65;
  v50(v51, v65);
  v54 = v69;
  v55 = v67;
  v56 = v72;
  (*(v69 + 16))(v67, v73, v72);
  v79.n128_u64[0] = v55;
  (*(v49 + 16))(v52, v48, v53);
  v79.n128_u64[1] = v52;
  v77 = v56;
  v78 = v53;
  v75 = v70;
  WitnessTable = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  sub_1C119EE80(&v79, 2, &v77);
  v50(v48, v53);
  v57 = *(v54 + 8);
  v57(v73, v56);
  v50(v52, v53);
  return (v57)(v55, v56);
}

uint64_t sub_1C11B70AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v78 = a1;
  v79 = a8;
  v76 = a6;
  v77 = a5;
  v74 = a4;
  v75 = a2;
  v70 = a9;
  v71 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A0, &qword_1C12C1600);
  type metadata accessor for PhotosCellBadgeView(255, a2, a6, v12);
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v60 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v63 = sub_1C12654C0();
  v68 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v58 = &v53 - v13;
  v64 = sub_1C1263190();
  v69 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v53 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  v15 = sub_1C1263190();
  v16 = *(v15 - 8);
  v66 = v15;
  v67 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v53 - v19;
  v20 = a7;
  v21 = sub_1C12655A0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v25 = sub_1C1263190();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v53 - v27;
  v29 = sub_1C1263190();
  v30 = *(v29 - 8);
  v72 = v29;
  v73 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v80 = &v53 - v34;
  v89 = v75;
  v90 = v71;
  v91 = v74;
  v92 = v77;
  v93 = v76;
  v94 = v20;
  v95 = v79;
  v96 = v78;
  v53 = v20;
  sub_1C10A7F5C(v71);
  sub_1C1265590();
  v35 = swift_getWitnessTable();
  sub_1C12649E0();
  (*(v22 + 8))(v24, v21);
  v100[8] = v35;
  v100[9] = MEMORY[0x1E697F568];
  v36 = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v26 + 8))(v28, v25);
  v54 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030, &qword_1C12BBF40, MEMORY[0x1E697FDC0]);
  v100[6] = v36;
  v100[7] = v54;
  v37 = v72;
  v55 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v56 = *(v73 + 8);
  v57 = v73 + 8;
  v56(v32, v37);
  v81 = v75;
  v82 = v71;
  v83 = v74;
  v84 = v77;
  v85 = v76;
  v86 = v53;
  v87 = v79;
  v88 = v78;
  sub_1C1012734(v60);
  v38 = v58;
  sub_1C12654B0();
  sub_1C1265940();
  v51 = v63;
  v52 = swift_getWitnessTable();
  v39 = v61;
  sub_1C1264EA0();
  (*(v68 + 8))(v38, v51);
  v100[4] = v52;
  v100[5] = MEMORY[0x1E697EBF8];
  v40 = v64;
  v41 = swift_getWitnessTable();
  v42 = v62;
  sub_1C1264B60();
  (*(v69 + 8))(v39, v40);
  v100[2] = v41;
  v100[3] = v54;
  v43 = v66;
  v44 = swift_getWitnessTable();
  v45 = v65;
  sub_1C0FDBA4C();
  v46 = v67;
  v47 = *(v67 + 8);
  v47(v42, v43);
  v48 = v72;
  (*(v73 + 16))(v32, v80, v72);
  v100[0] = v32;
  (*(v46 + 16))(v42, v45, v43);
  v100[1] = v42;
  v99[0] = v48;
  v99[1] = v43;
  v97 = v55;
  v98 = v44;
  sub_1C119EE80(v100, 2, v99);
  v47(v45, v43);
  v49 = v56;
  v56(v80, v48);
  v47(v42, v43);
  return v49(v32, v48);
}

uint64_t sub_1C11B7980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  *&v22 = v13;
  *(&v22 + 1) = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v18 = *(a1 + *(type metadata accessor for PhotosAlbumCell(0, &v21) + 84));
  v21 = 0u;
  v22 = 0u;
  v18(&v21);
  sub_1C0FDBA4C();
  v19 = *(v5 + 8);
  v19(v7, a3);
  sub_1C0FDBA4C();
  return (v19)(v10, a3);
}

uint64_t sub_1C11B7AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a8;
  v58 = a7;
  v54 = a6;
  v56 = a5;
  v55 = a3;
  v62 = a9;
  type metadata accessor for PhotosCellBadgeView(255, a2, a6, a4);
  sub_1C1266790();
  swift_getTupleTypeMetadata3();
  v51 = sub_1C1265B00();
  v12 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C12655A0();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v48 - v14;
  v15 = sub_1C1263190();
  v60 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v48 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A0, &qword_1C12C1600);
  MEMORY[0x1EEE9AC00](v61);
  v52 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v48 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96870, &qword_1C12C17D0);
  v24 = sub_1C10239B0(&qword_1EBE96878, &qword_1EBE96870, &qword_1C12C17D0, v12);
  *v22 = sub_1C1009330(v23, v24, v25, v26, v27, v28);
  v22[1] = v29;
  v63 = v22;
  v30 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96880, &qword_1C12C17D8) + 44);
  v31 = a1;
  v32 = a2;
  v33 = a2;
  v34 = v55;
  v35 = v56;
  v36 = v54;
  v37 = v58;
  v38 = v59;
  sub_1C11BAD14(v33, v55, a4, v56, v54, v58, v59, v30);
  v64 = v32;
  v65 = v34;
  v66 = a4;
  v67 = v35;
  v68 = v36;
  v69 = v37;
  v70 = v38;
  v71 = v31;
  sub_1C10A7F5C(v51);
  v39 = v49;
  sub_1C1265590();
  v40 = swift_getWitnessTable();
  v41 = v48;
  sub_1C1264F90();
  (*(v57 + 8))(v39, v13);
  v78[3] = v40;
  v78[4] = MEMORY[0x1E697E5D8];
  v42 = swift_getWitnessTable();
  v43 = v53;
  sub_1C0FDBA4C();
  v44 = v60;
  v45 = *(v60 + 8);
  v45(v41, v15);
  v46 = v52;
  sub_1C0FE5654(v63, v52, &qword_1EBE967A0, &qword_1C12C1600);
  v76 = 0;
  v77 = 1;
  v78[0] = v46;
  v78[1] = &v76;
  (*(v44 + 16))(v41, v43, v15);
  v78[2] = v41;
  v75[0] = v61;
  v75[1] = MEMORY[0x1E6981840];
  v75[2] = v15;
  v72 = sub_1C10239B0(&qword_1EBE96888, &qword_1EBE967A0, &qword_1C12C1600, MEMORY[0x1E6981880]);
  v73 = MEMORY[0x1E6981838];
  v74 = v42;
  sub_1C119EE80(v78, 3, v75);
  v45(v43, v15);
  sub_1C0F9E27C(v63, &qword_1EBE967A0);
  v45(v41, v15);
  return sub_1C0F9E27C(v46, &qword_1EBE967A0);
}

uint64_t sub_1C11B80B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968A0, &qword_1C12C17F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  *v9 = sub_1C1263AB0();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968A8, &qword_1C12C17F8);
  sub_1C11BC6F0(v3, a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], &v9[*(v10 + 44)], a2[8]);
  if (a1)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  sub_1C0FE4040(v9, a3, &qword_1EBE968A0, &qword_1C12C17F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96890, &qword_1C12C17E0);
  *(a3 + *(result + 36)) = v11;
  return result;
}

uint64_t sub_1C11B81EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a9;
  v72 = a5;
  v70 = a3;
  v59 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PhotosCellBadgeView(0, v16, v18, v17);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v61 = &v58 - v23;
  v64 = sub_1C1266790();
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v68 = &v58 - v27;
  v69 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v67 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v58 - v31;
  v82.n128_u64[0] = a2;
  v82.n128_u64[1] = v70;
  v83 = a4;
  v84 = v72;
  v63 = a6;
  v85 = a6;
  v86 = a7;
  v87 = a8;
  v33 = type metadata accessor for PhotosAlbumCell(0, &v82);
  v66 = v32;
  v72 = a4;
  v70 = a8;
  sub_1C0FDBA4C();
  v34 = (a1 + *(v33 + 80));
  v35 = *v34;
  if (*v34)
  {
    v36 = v20;
    v58 = v25;
    v37 = v34[2];
    v38 = v34[3];
    v39 = v34[1];
    v40 = v60;
    (*(v59 + 16))(v60, a1, a2);

    sub_1C0FCF1B4(v37, v38);
    v41 = sub_1C11B06B8(v33);
    v42 = 196611;
    if (!v41)
    {
      v42 = 196613;
    }

    v77 = v42;
    LODWORD(v78) = 17367552;
    v82.n128_u64[0] = v35;
    v82.n128_u64[1] = v39;
    v83 = v37;
    v84 = v38;
    v25 = v58;
    v43 = v62;
    PhotosCellBadgeView.init(model:font:configuration:)(v40, &v77, &v82, a2, v63, v62);
    swift_getWitnessTable();
    v44 = v61;
    sub_1C0FDBA4C();
    v45 = *(v36 + 8);
    v45(v43, v19);
    sub_1C0FDBA4C();
    v45(v44, v19);
    (*(v36 + 32))(v25, v43, v19);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v19);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v19);
    swift_getWitnessTable();
  }

  v46 = v68;
  sub_1C1170030(v25, v68);
  v47 = v65;
  v48 = *(v65 + 8);
  v49 = v25;
  v63 = v19;
  v50 = v25;
  v51 = v64;
  v48(v49, v64);
  v80 = 0;
  v81 = 1;
  v82.n128_u64[0] = &v80;
  v52 = v69;
  v53 = v67;
  v54 = v66;
  v55 = v72;
  (*(v69 + 16))(v67, v66, v72);
  v82.n128_u64[1] = v53;
  (*(v47 + 16))(v50, v46, v51);
  v83 = v50;
  v77 = MEMORY[0x1E6981840];
  v78 = v55;
  v79 = v51;
  v74 = MEMORY[0x1E6981838];
  v75 = v70;
  WitnessTable = swift_getWitnessTable();
  v76 = swift_getWitnessTable();
  sub_1C119EE80(&v82, 3, &v77);
  v48(v46, v51);
  v56 = *(v52 + 8);
  v56(v54, v55);
  v48(v50, v51);
  return (v56)(v53, v55);
}

uint64_t sub_1C11B8848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v74 = a5;
  v75 = a8;
  v77 = a4;
  v78 = a7;
  v71 = a2;
  v72 = a6;
  v76 = a3;
  v73 = a1;
  v68 = a9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A0, &qword_1C12C1600);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = (&v61 - v13);
  type metadata accessor for PhotosCellBadgeView(255, a2, a6, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v69 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v15 = sub_1C1263190();
  v70 = MEMORY[0x1E6981880];
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v93[19] = WitnessTable;
  v93[20] = v17;
  v18 = MEMORY[0x1E697E858];
  v19 = swift_getWitnessTable();
  v20 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v93[17] = v19;
  v93[18] = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v93[15] = v21;
  v93[16] = v22;
  v64 = v18;
  v23 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v15, v23, v24);
  sub_1C1263190();
  sub_1C1263190();
  v25 = sub_1C1263190();
  v93[13] = v78;
  v93[14] = v17;
  v93[11] = swift_getWitnessTable();
  v93[12] = v20;
  v93[9] = swift_getWitnessTable();
  v93[10] = v22;
  v26 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v25, v26, v27);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  v28 = sub_1C1263C30();
  v29 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v93[7] = v29;
  v93[8] = v30;
  swift_getWitnessTable();
  v31 = sub_1C12655A0();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v61 - v33;
  v35 = sub_1C1263190();
  v62 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v61 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030, &qword_1C12BBF40);
  v38 = sub_1C1263190();
  v63 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v61 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v61 = &v61 - v42;
  v79 = v71;
  v80 = v76;
  v81 = v77;
  v82 = v74;
  v83 = v72;
  v84 = v78;
  v85 = v75;
  v86 = v73;
  sub_1C10A7F5C(v28);
  sub_1C1265590();
  v43 = swift_getWitnessTable();
  sub_1C12649E0();
  (*(v32 + 8))(v34, v31);
  v93[5] = v43;
  v93[6] = MEMORY[0x1E697F568];
  v44 = swift_getWitnessTable();
  sub_1C1264B60();
  (*(v62 + 8))(v37, v35);
  v45 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030, &qword_1C12BBF40, MEMORY[0x1E697FDC0]);
  v93[3] = v44;
  v93[4] = v45;
  v62 = swift_getWitnessTable();
  v46 = v61;
  sub_1C0FDBA4C();
  v47 = v63;
  v64 = *(v63 + 8);
  v64(v40, v38);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96870, &qword_1C12C17D0);
  v49 = sub_1C10239B0(&qword_1EBE96878, &qword_1EBE96870, &qword_1C12C17D0, v69);
  v54 = sub_1C1009330(v48, v49, v50, v51, v52, v53);
  v55 = v65;
  *v65 = v54;
  *(v55 + 8) = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96880, &qword_1C12C17D8);
  sub_1C11BAD14(v71, v76, v77, v74, v72, v78, v75, v55 + *(v57 + 44));
  (*(v47 + 16))(v40, v46, v38);
  v93[0] = v40;
  v58 = v66;
  sub_1C0FE5654(v55, v66, &qword_1EBE967A0, &qword_1C12C1600);
  v91 = 0;
  v92 = 0;
  v93[1] = v58;
  v93[2] = &v91;
  v90[0] = v38;
  v90[1] = v67;
  v90[2] = MEMORY[0x1E6981840];
  v87 = v62;
  v88 = sub_1C10239B0(&qword_1EBE96888, &qword_1EBE967A0, &qword_1C12C1600, v70);
  v89 = MEMORY[0x1E6981838];
  sub_1C119EE80(v93, 3, v90);
  sub_1C0F9E27C(v55, &qword_1EBE967A0);
  v59 = v64;
  v64(v46, v38);
  sub_1C0F9E27C(v58, &qword_1EBE967A0);
  return v59(v40, v38);
}

uint64_t sub_1C11B91B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v103 = a7;
  v104 = a8;
  v101 = a5;
  *&v102 = a6;
  v99 = a9;
  v100 = a4;
  v105 = a3;
  v94 = a2;
  v95 = a1;
  type metadata accessor for PhotosCellBadgeView(255, a2, a6, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v9 = sub_1C1265B00();
  v98 = MEMORY[0x1E6981F48];
  v85 = v9;
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C12655C0();
  v92 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v78 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v12 = sub_1C1263190();
  v90 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v78 - v13;
  v93 = v10;
  v14 = swift_getWitnessTable();
  v15 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v82 = v14;
  v128 = v14;
  v129 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v126 = v16;
  v127 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v124 = v18;
  v125 = v19;
  v20 = swift_getWitnessTable();
  v91 = v12;
  v81 = v20;
  v22 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v12, v20, v21);
  v88 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v78 - v25;
  sub_1C1263190();
  sub_1C1263190();
  v26 = sub_1C1263190();
  v27 = v103;
  v122 = v103;
  v123 = v15;
  v120 = swift_getWitnessTable();
  v121 = v17;
  v118 = swift_getWitnessTable();
  v119 = v19;
  v28 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v26, v28, v29);
  v30 = v100;
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v79 = swift_getWitnessTable();
  v31 = sub_1C12655C0();
  v80 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v78 - v35;
  v98 = v22;
  v37 = sub_1C1263C30();
  v96 = *(v37 - 8);
  v97 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v78 - v38;
  v40 = v94;
  v115[0].n128_u64[0] = v94;
  v115[0].n128_u64[1] = v105;
  v115[1] = __PAIR128__(v101, v30);
  v115[2].n128_u64[0] = v102;
  v115[2].n128_u64[1] = v27;
  v115[3].n128_u64[0] = v104;
  v41 = type metadata accessor for PhotosAlbumCell(0, v115);
  v42 = v95;
  v43 = (v95 + *(v41 + 80));
  v44 = *v43;
  if (*v43)
  {
    v45 = v41;
    v79 = v39;
    v80 = v31;
    v46 = v43[1];
    v47 = v43[2];
    v48 = v43[3];

    sub_1C0FCF1B4(v47, v48);
    v49 = sub_1C1265960();
    MEMORY[0x1EEE9AC00](v49);
    v50 = v105;
    *(&v78 - 12) = v40;
    *(&v78 - 11) = v50;
    v51 = v101;
    *(&v78 - 10) = v100;
    *(&v78 - 9) = v51;
    v53 = v103;
    v52 = v104;
    *(&v78 - 8) = v102;
    *(&v78 - 7) = v53;
    *(&v78 - 6) = v52;
    *(&v78 - 5) = v42;
    *(&v78 - 4) = v44;
    *(&v78 - 3) = v46;
    v104 = v47;
    v105 = v46;
    *(&v78 - 2) = v47;
    *(&v78 - 1) = v48;
    v103 = v48;
    v54 = v84;
    sub_1C12655B0();
    sub_1C11B0914(v45, v112);
    memcpy(v111, v113, sizeof(v111));
    sub_1C100D690(v112, v115);
    if (qword_1EDE82B00 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDE82B08;
    v56 = qword_1EDE82B10;
    v102 = xmmword_1EDE82B18;
    v57 = qword_1EDE82B28;

    sub_1C100C7D0(v112);

    v115[0].n128_u64[0] = v55;
    v115[0].n128_u64[1] = v56;
    v115[1] = v102;
    v115[2].n128_u64[0] = v57;
    memcpy(&v115[2].n128_i8[8], v111, 0xA8uLL);
    v58 = v89;
    v59 = v93;
    View.cellStyle(for:)(v115, v82, v89);
    memcpy(v114, v115, sizeof(v114));
    sub_1C100C7D0(v114);
    (*(v92 + 8))(v54, v59);
    v110 = 2;
    v109 = 2;
    sub_1C11B0914(v45, v115);
    v60 = v115[0];
    v102 = v115[1];
    v61 = v115[2].n128_u64[0];

    sub_1C100C7D0(v115);
    v106 = v60;
    v107 = v102;
    v108 = v61;
    v62 = v87;
    v63 = v91;
    View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v110, 0, 0, v91, v81, v87);

    (*(v90 + 8))(v58, v63);
    v64 = v98;
    swift_getWitnessTable();
    v65 = v86;
    sub_1C0FDBA4C();
    v66 = *(v88 + 8);
    v66(v62, v64);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    v67 = v79;
    sub_1C1112D68();
    sub_1C11BF3E4(v44, v105, v104, v103);
    v66(v62, v64);
    v66(v65, v64);
  }

  else
  {
    v68 = sub_1C1265970();
    MEMORY[0x1EEE9AC00](v68);
    v69 = v105;
    *(&v78 - 8) = v40;
    *(&v78 - 7) = v69;
    v70 = v101;
    *(&v78 - 6) = v100;
    *(&v78 - 5) = v70;
    v72 = v103;
    v71 = v104;
    *(&v78 - 4) = v102;
    *(&v78 - 3) = v72;
    *(&v78 - 2) = v71;
    *(&v78 - 1) = v42;
    sub_1C12655B0();
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v73 = *(v80 + 8);
    v73(v33, v31);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    sub_1C1112E18();
    v73(v33, v31);
    v73(v36, v31);
    v67 = v39;
  }

  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v116 = v74;
  v117 = v75;
  v76 = v97;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v96 + 8))(v67, v76);
}

uint64_t sub_1C11B9D6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t (*a8)(char *, unint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v77 = a8;
  v76 = a5;
  v74 = a4;
  v73.n128_u64[1] = a3;
  v73.n128_u64[0] = a2;
  v62 = a1;
  v81 = a9;
  v71 = a13;
  v82 = a12;
  v70 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a11;
  v69 = type metadata accessor for PhotosCellBadgeView(0, v17, a11, v16);
  v78 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v61 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  v72 = sub_1C1263190();
  v79 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = &v61 - v19;
  v20 = sub_1C1263190();
  v80 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v61 - v24;
  v64 = *(a7 - 8);
  v25 = v64;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v68 = &v61 - v30;
  v94.n128_u64[0] = a6;
  v94.n128_u64[1] = a7;
  *&v95 = v77;
  *(&v95 + 1) = a10;
  v96 = a11;
  v97 = v82;
  v98 = v71;
  v31 = type metadata accessor for PhotosAlbumCell(0, &v94);
  v32 = v62;
  v33 = *(v62 + *(v31 + 84));
  v94 = 0u;
  v95 = 0u;
  v33(&v94);
  v63 = a7;
  sub_1C0FDBA4C();
  v34 = *(v25 + 8);
  v71 = v25 + 8;
  v77 = v34;
  v34(v28, a7);
  sub_1C1265B90();
  v36 = v35;
  v38 = v37;
  sub_1C1265B80();
  v40 = v39;
  v42 = v41;
  v43 = v66;
  (*(v70 + 16))(v66, v32, a6);
  v87 = 196614;
  LODWORD(v88) = 17367552;
  v94 = v73;
  v44 = v74;
  v45 = v76;
  *&v95 = v74;
  *(&v95 + 1) = v76;
  v46 = v65;
  PhotosCellBadgeView.init(model:font:configuration:)(v43, &v87, &v94, a6, v61, v65);

  sub_1C0FCF1B4(v44, v45);
  v94.n128_u64[0] = sub_1C1265190();
  v47 = v69;
  WitnessTable = swift_getWitnessTable();
  v49 = v67;
  sub_1C1264BE0();

  (*(v78 + 8))(v46, v47);
  v50 = sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
  v92 = WitnessTable;
  v93 = v50;
  v51 = v72;
  v52 = swift_getWitnessTable();
  sub_1C1264F90();
  (*(v79 + 8))(v49, v51);
  v90 = v52;
  v91 = MEMORY[0x1E697E5D8];
  v53 = swift_getWitnessTable();
  v54 = v75;
  sub_1C0FDBA4C();
  v55 = v80;
  v56 = *(v80 + 8);
  v56(v22, v20);
  v57 = v68;
  v58 = v63;
  (*(v64 + 16))(v28, v68, v63);
  v94.n128_u64[0] = v36;
  v94.n128_u64[1] = v38;
  *&v95 = v40;
  *(&v95 + 1) = v42;
  v96 = 0x3FE6666666666666;
  LOBYTE(v97) = 0;
  v87 = v28;
  v88 = &v94;
  (*(v55 + 16))(v22, v54, v20);
  v89 = v22;
  v86[0] = v58;
  v86[1] = &type metadata for PhotosLegibilityGradient;
  v86[2] = v20;
  v83 = v82;
  v84 = sub_1C10B8F84();
  v85 = v53;
  sub_1C119EE80(&v87, 3, v86);
  v56(v54, v20);
  v59 = v77;
  v77(v57, v58);
  v56(v22, v20);
  return v59(v28, v58);
}

uint64_t sub_1C11BA534@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v72 = a8;
  v57 = a5;
  v58.n128_u64[0] = a6;
  v65 = a2;
  v69 = a9;
  v70 = sub_1C1263190();
  v66 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v54 - v15;
  v63.n128_u64[0] = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v18 = sub_1C1263190();
  v61 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v54 - v19;
  v20 = sub_1C10239B0(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v84 = a7;
  v85 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = sub_1C10239B0(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v82 = WitnessTable;
  v83 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_1C10239B0(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v80 = v23;
  v81 = v24;
  v55 = swift_getWitnessTable();
  v64 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v18, v55, v25);
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v71 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v73 = &v54 - v28;
  v89[0].n128_u64[0] = v65;
  v62 = a3;
  v89[0].n128_u64[1] = a3;
  v65 = a4;
  v89[1].n128_u64[0] = a4;
  v89[1].n128_u64[1] = v57;
  v89[2].n128_u64[0] = v58.n128_u64[0];
  v29 = a7;
  v89[2].n128_u64[1] = a7;
  v89[3].n128_u64[0] = v72;
  v30 = type metadata accessor for PhotosAlbumCell(0, v89);
  v31 = *(a1 + *(v30 + 84));
  memset(v89, 0, 32);
  v32 = v56;
  v31(v89);
  sub_1C11B0914(v30, v86);
  memcpy(v79, v87, sizeof(v79));
  sub_1C100D690(v86, v89);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v33 = qword_1EDE82B08;
  v34 = qword_1EDE82B10;
  v58 = xmmword_1EDE82B18;
  v35 = qword_1EDE82B28;

  sub_1C100C7D0(v86);

  v89[0].n128_u64[0] = v33;
  v89[0].n128_u64[1] = v34;
  v89[1] = v58;
  v89[2].n128_u64[0] = v35;
  memcpy(&v89[2].n128_i8[8], v79, 0xA8uLL);
  v36 = v60;
  v37 = v62;
  View.cellStyle(for:)(v89, v29, v60);
  memcpy(v88, v89, sizeof(v88));
  sub_1C100C7D0(v88);
  (*(v63.n128_u64[0] + 8))(v32, v37);
  LOBYTE(v76[0]) = 2;
  LOBYTE(v74) = 2;
  sub_1C11B0914(v30, v89);
  v38 = v89[0];
  v63 = v89[1];
  v39 = v89[2].n128_u64[0];

  sub_1C100C7D0(v89);
  v77[0] = v38;
  v77[1] = v63;
  v78 = v39;
  v40 = v71;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v76, 0, 0, v18, v55, v71);

  (*(v61 + 8))(v36, v18);
  v41 = v64;
  v61 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v42 = v59;
  v43 = *(v59 + 8);
  v62 = v59 + 8;
  v63.n128_u64[0] = v43;
  v43(v40, v41);
  v44 = v68;
  v45 = v72;
  sub_1C1264ED0();
  v76[2] = v45;
  v76[3] = MEMORY[0x1E697E270];
  v46 = v70;
  v72 = swift_getWitnessTable();
  v47 = v67;
  sub_1C0FDBA4C();
  v48 = v66;
  v49 = *(v66 + 8);
  v49(v44, v46);
  v50 = v71;
  (*(v42 + 16))(v71, v73, v41);
  *&v77[0] = v50;
  v51 = v50;
  (*(v48 + 16))(v44, v47, v46);
  *(&v77[0] + 1) = v44;
  v76[0] = v41;
  v76[1] = v46;
  v74 = v61;
  v75 = v72;
  sub_1C119EE80(v77, 2, v76);
  v49(v47, v46);
  v52 = v63.n128_u64[0];
  (v63.n128_u64[0])(v73, v41);
  v49(v44, v46);
  return v52(v51, v41);
}

uint64_t sub_1C11BAD14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v35 = a8;
  v11 = OUTLINED_FUNCTION_42_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_15(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v31 - v25;
  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v36[3] = v31;
  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v27 = type metadata accessor for PhotosAlbumCell(0, v36);
  sub_1C11B80B8(1, v27, v26);
  sub_1C11B80B8(0, v27, v23);
  OUTLINED_FUNCTION_41_7(v26, v20);
  OUTLINED_FUNCTION_41_7(v23, v17);
  v28 = v35;
  OUTLINED_FUNCTION_41_7(v20, v35);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96898, &qword_1C12C17E8);
  OUTLINED_FUNCTION_41_7(v17, v28 + *(v29 + 48));
  OUTLINED_FUNCTION_40_7(v23);
  OUTLINED_FUNCTION_40_7(v26);
  OUTLINED_FUNCTION_40_7(v17);
  return OUTLINED_FUNCTION_40_7(v20);
}

uint64_t sub_1C11BAED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[0] = a8;
  v25[1] = a1;
  v25[2] = a9;
  type metadata accessor for PhotosFavoriteBadge(255, a2, *(*(a5 + 8) + 8), a4);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v15 = sub_1C12655C0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v25 - v20;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v26[6] = v25[0];
  v22 = type metadata accessor for PhotosAlbumCell(0, v26);
  sub_1C11BB134(v22);
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v23 = *(v16 + 8);
  v23(v18, v15);
  sub_1C0FDBA4C();
  return (v23)(v21, v15);
}

void *sub_1C11BB134(uint64_t a1)
{
  sub_1C1265960();
  type metadata accessor for PhotosFavoriteBadge(255, *(a1 + 16), *(*(*(a1 + 40) + 8) + 8), v3);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  return sub_1C12655B0();
}

uint64_t sub_1C11BB29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v84 = a7;
  v83 = a6;
  v82 = a5;
  v85 = a2;
  v88 = a1;
  v74 = a9;
  v99 = a2;
  v100 = a3;
  v75 = a3;
  v101 = a4;
  v102 = a5;
  v103 = a6;
  v104 = a7;
  v105 = a8;
  v80 = a8;
  v63 = type metadata accessor for PhotosAlbumCell(0, &v99);
  v12 = *(v63 - 8);
  v81 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v87 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v62 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967A8, &qword_1C12C1608);
  v70 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B0, &qword_1C12C1610);
  v69 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE967B8, &qword_1C12C1618);
  v68 = v21;
  v22 = sub_1C11B248C();
  v67 = v22;
  v23 = sub_1C11B26B8();
  v66 = v23;
  v64 = sub_1C11B2B94();
  v99 = v19;
  v100 = v20;
  v101 = v21;
  v102 = a4;
  v24 = a4;
  v76 = a4;
  v103 = v22;
  v104 = v23;
  v105 = v64;
  v106 = a8;
  v72 = type metadata accessor for PhotosTitleAccessoryStack(0, &v99);
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v71 = &v62 - v28;
  LOBYTE(v99) = 0;
  v29 = v12;
  v89 = v12;
  v30 = v12 + 16;
  v31 = *(v12 + 16);
  v79 = v30;
  v32 = v18;
  v33 = v88;
  v34 = v63;
  v31(v32, v88, v63, v27);
  v35 = v31;
  v78 = *(v29 + 80);
  v36 = (v78 + 72) & ~v78;
  v37 = swift_allocObject();
  v38 = v85;
  *(v37 + 2) = v85;
  *(v37 + 3) = a3;
  v39 = v82;
  *(v37 + 4) = v24;
  *(v37 + 5) = v39;
  v40 = v83;
  v41 = v84;
  *(v37 + 6) = v83;
  *(v37 + 7) = v41;
  *(v37 + 8) = v80;
  v42 = *(v89 + 32);
  v89 += 32;
  v77 = v42;
  v42(&v37[v36], v62, v34);
  v35(v86, v33, v34);
  v43 = swift_allocObject();
  v44 = v75;
  *(v43 + 2) = v38;
  *(v43 + 3) = v44;
  v45 = v76;
  *(v43 + 4) = v76;
  *(v43 + 5) = v39;
  *(v43 + 6) = v40;
  *(v43 + 7) = v41;
  v46 = v80;
  *(v43 + 8) = v80;
  v47 = v34;
  v77(&v43[v36], v86, v34);
  v35(v87, v88, v34);
  v48 = swift_allocObject();
  v49 = v85;
  *(v48 + 2) = v85;
  *(v48 + 3) = v44;
  *(v48 + 4) = v45;
  v50 = v82;
  v51 = v83;
  *(v48 + 5) = v82;
  *(v48 + 6) = v51;
  v52 = v84;
  *(v48 + 7) = v84;
  *(v48 + 8) = v46;
  v77(&v48[v36], v87, v47);
  v91 = v49;
  v92 = v75;
  v93 = v76;
  v94 = v50;
  v95 = v51;
  v96 = v52;
  v97 = v46;
  v98 = v88;
  *(&v61 + 1) = v46;
  *&v61 = v64;
  *(&v60 + 1) = v66;
  *(&v59 + 1) = v76;
  *&v60 = v67;
  *&v59 = v68;
  *(&v58 + 1) = v69;
  *&v58 = v70;
  v53 = v65;
  PhotosTitleAccessoryStack.init(alignment:title:subtitle:combinedTitleAndSubtitle:accessory:useCombinedTitlesIfNeeded:)(&v99, sub_1C11BF50C, sub_1C11BF5E0, sub_1C11BF978, sub_1C11BF990, v65, v90, 1, v58, v59, v60, v61);
  v54 = v72;
  swift_getWitnessTable();
  v55 = v71;
  sub_1C0FDBA4C();
  v56 = *(v73 + 8);
  v56(v53, v54);
  sub_1C0FDBA4C();
  return v56(v55, v54);
}

uint64_t sub_1C11BB91C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a7;
  v9 = type metadata accessor for PhotosAlbumCell(0, v11);
  return sub_1C11B67B4(1, 0, 0, v9, a8);
}

uint64_t sub_1C11BB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a7;
  v11[6] = a8;
  v9 = type metadata accessor for PhotosAlbumCell(0, v11);
  return a9(v9);
}

uint64_t sub_1C11BB9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v81 = sub_1C1264680();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v77 = &v65 - v5;
  v78 = sub_1C1264700();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = a1;
  v93 = sub_1C11BC378(a1);
  v94 = v8;
  sub_1C0FDB9AC();
  v9 = sub_1C12648F0();
  v11 = v10;
  v13 = v12;
  LODWORD(v93) = sub_1C1263E40();
  v14 = sub_1C1264850();
  v90 = v15;
  v91 = v14;
  v89 = v16;
  v92 = v17;
  sub_1C0FDB8E8(v9, v11, v13 & 1);

  sub_1C12639A0();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDE7E630;
  v19 = sub_1C12648D0();
  v82 = v20;
  v83 = v19;
  v22 = v21;
  v24 = v23;
  sub_1C12639A0();
  v86 = sub_1C12648D0();
  v87 = v25;
  v88 = v26;
  v85 = v27;
  v93 = sub_1C11BC3BC(v84);
  v94 = v28;
  v29 = sub_1C12648F0();
  v31 = v30;
  v33 = v32;
  LODWORD(v93) = sub_1C1263E50();
  v84 = sub_1C1264850();
  v69 = v34;
  v70 = v35;
  v71 = v36;
  sub_1C0FDB8E8(v29, v31, v33 & 1);

  sub_1C1263980();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  v72 = v22;
  v73 = v24;
  sub_1C1263940();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  sub_1C1263940();
  sub_1C1263970();
  sub_1C12639B0();
  v37 = sub_1C12648D0();
  v68 = v37;
  v39 = v38;
  v67 = v38;
  LOBYTE(v31) = v40;
  v42 = v41;
  v43 = v76;
  v44 = v75;
  v45 = v78;
  (*(v76 + 104))(v75, *MEMORY[0x1E6980EF0], v78);
  v46 = *MEMORY[0x1E6980E20];
  v47 = sub_1C1264590();
  v48 = v77;
  (*(*(v47 - 8) + 104))(v77, v46, v47);
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v47);
  LOBYTE(v31) = v31 & 1;
  sub_1C0FDB850(v37, v39, v31);
  v66 = v42;

  sub_1C1264610();
  sub_1C1264640();
  sub_1C0F9E27C(v48, &qword_1EBE96550);
  (*(v43 + 8))(v44, v45);
  v49 = v80;
  v50 = v79;
  v51 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E6980EA8], v81);
  v78 = sub_1C12646C0();

  sub_1C0FDB8E8(v84, v69, v70 & 1);

  sub_1C0FDB8E8(v91, v90, v89 & 1);

  sub_1C0FDB8E8(v83, v82, v72 & 1);

  sub_1C0FDB8E8(v86, v87, v88 & 1);

  v52 = v68;
  v53 = v67;
  sub_1C0FDB8E8(v68, v67, v31);

  (*(v49 + 8))(v50, v51);
  KeyPath = swift_getKeyPath();
  LOBYTE(v93) = v31;
  v55 = swift_getKeyPath();
  v56 = swift_getKeyPath();
  LOBYTE(v93) = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B8, &qword_1C12C1618);
  v58 = v74;
  v59 = (v74 + *(v57 + 36));
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v61 = *MEMORY[0x1E6980FB0];
  v62 = sub_1C1264830();
  (*(*(v62 - 8) + 104))(&v59[v60], v61, v62);
  result = swift_getKeyPath();
  *v59 = result;
  *v58 = v52;
  *(v58 + 8) = v53;
  *(v58 + 16) = v31;
  *(v58 + 24) = v66;
  *(v58 + 32) = 256;
  v64 = v78;
  *(v58 + 40) = KeyPath;
  *(v58 + 48) = v64;
  *(v58 + 56) = v55;
  *(v58 + 64) = 0;
  *(v58 + 72) = v56;
  *(v58 + 80) = 2;
  *(v58 + 88) = 0;
  return result;
}

uint64_t sub_1C11BC268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  v17[6] = v14;
  type metadata accessor for PhotosAlbumCell(0, v17);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_1C11BC378(uint64_t a1)
{
  result = (*(*(*(a1 + 40) + 8) + 40))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C11BC3BC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 16));
  if (v1)
  {
    return 0;
  }

  sub_1C100DC5C();
  return sub_1C12667D0();
}

uint64_t sub_1C11BC428(uint64_t a1)
{
  v2 = sub_1C1264680();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1C1264700();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C11B06B8(a1);
  v14 = MEMORY[0x1E6980F10];
  if (!v13)
  {
    v14 = MEMORY[0x1E6980EF0];
  }

  (*(v10 + 104))(v12, *v14, v9);
  v15 = *MEMORY[0x1E6980E20];
  v16 = sub_1C1264590();
  (*(*(v16 - 8) + 104))(v8, v15, v16);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
  sub_1C1264610();
  sub_1C1264640();
  sub_1C0F9E27C(v8, &qword_1EBE96550);
  (*(v10 + 8))(v12, v9);
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v2);
  v17 = sub_1C12646C0();

  (*(v3 + 8))(v5, v2);
  return v17;
}

uint64_t sub_1C11BC6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v47 = a7;
  v46 = a6;
  v45 = a5;
  v44 = a4;
  v48 = a1;
  v53 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B0, &qword_1C12C1610);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v50 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968B0, &qword_1C12C1800);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v43 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967A8, &qword_1C12C1608);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v43 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968B8, &qword_1C12C1808);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v49 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v43 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v43 - v33;
  v55[0] = a3;
  v55[1] = v44;
  v55[2] = v45;
  v55[3] = v46;
  v55[4] = v47;
  v55[5] = a8;
  v55[6] = a10;
  v35 = type metadata accessor for PhotosAlbumCell(0, v55);
  sub_1C11B67B4(0, 1, a2, v35, v25);
  sub_1C1265940();
  sub_1C1263390();
  sub_1C0FE4040(v25, v31, &qword_1EBE967A8, &qword_1C12C1608);
  memcpy(&v31[*(v27 + 44)], __src, 0x70uLL);
  sub_1C0FE4040(v31, v34, &qword_1EBE968B8, &qword_1C12C1808);
  v36 = v50;
  sub_1C11BCBD4(a2, v35, v50);
  sub_1C1265940();
  sub_1C1263390();
  sub_1C0FE4040(v36, v20, &qword_1EBE967B0, &qword_1C12C1610);
  memcpy(&v20[*(v16 + 44)], v55, 0x70uLL);
  v37 = v51;
  sub_1C0FE4040(v20, v51, &qword_1EBE968B0, &qword_1C12C1800);
  v38 = v49;
  sub_1C0FE5654(v34, v49, &qword_1EBE968B8, &qword_1C12C1808);
  v39 = v52;
  sub_1C0FE5654(v37, v52, &qword_1EBE968B0, &qword_1C12C1800);
  v40 = v53;
  sub_1C0FE5654(v38, v53, &qword_1EBE968B8, &qword_1C12C1808);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968C0, &qword_1C12C1810);
  sub_1C0FE5654(v39, v40 + *(v41 + 48), &qword_1EBE968B0, &qword_1C12C1800);
  sub_1C0F9E27C(v37, &qword_1EBE968B0);
  sub_1C0F9E27C(v34, &qword_1EBE968B8);
  sub_1C0F9E27C(v39, &qword_1EBE968B0);
  return sub_1C0F9E27C(v38, &qword_1EBE968B8);
}

uint64_t sub_1C11BCBD4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967D8, &qword_1C12C1630);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968C8, &qword_1C12C1818);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  sub_1C11BD39C(v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], v8, a2[8]);
  v13 = sub_1C11BDD44(a2);
  KeyPath = swift_getKeyPath();
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967F0, &qword_1C12C1638) + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  *&v8[*(v6 + 36)] = sub_1C1263E50();
  sub_1C11B2780();
  sub_1C1265090();
  sub_1C0F9E27C(v8, &qword_1EBE967D8);
  if (v4)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v10 + 32))(a3, v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE967B0, &qword_1C12C1610);
  *(a3 + *(result + 36)) = v16;
  return result;
}

double sub_1C11BCDEC(uint64_t a1)
{
  v2 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1263980();
  sub_1C1263970();
  if (qword_1EDE833C0 != -1)
  {
    swift_once();
  }

  *&v10 = 0xD000000000000014;
  *(&v10 + 1) = 0x80000001C126D380;
  v11 = 262912;
  v12 = 0;
  v13 = 65280;

  sub_1C12192C4(&v10);

  sub_1C12652F0();
  sub_1C1263950();

  sub_1C1263970();
  sub_1C11BD010(a1);
  sub_1C1263960();

  sub_1C1263970();
  sub_1C12639B0();
  v3 = sub_1C12648D0();
  v5 = v4;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  v7 = v6 & 1;
  LOBYTE(v11) = v6 & 1;
  v12 = v8;
  sub_1C1264DF0();
  sub_1C0FDB8E8(v3, v5, v7);

  return result;
}

uint64_t sub_1C11BD010(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  if (((*(v1 + 40))(v2, v1) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(v1 + 24))(v2, v1);
  result = 0;
  if ((v5 & 1) == 0 && v3 >= 1)
  {
    sub_1C100DC5C();
    return sub_1C12667D0();
  }

  return result;
}

double sub_1C11BD0C4(uint64_t a1)
{
  v2 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C1263980();
  sub_1C1263970();
  if (qword_1EDE833C0 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1C12C1500;
  v11 = 262912;
  v12 = 0;
  v13 = 65280;

  sub_1C12192C4(&v10);

  sub_1C12652F0();
  sub_1C1263950();

  sub_1C1263970();
  sub_1C11BD2E8(a1);
  sub_1C1263960();

  sub_1C1263970();
  sub_1C12639B0();
  v3 = sub_1C12648D0();
  v5 = v4;
  *&v10 = v3;
  *(&v10 + 1) = v4;
  v7 = v6 & 1;
  LOBYTE(v11) = v6 & 1;
  v12 = v8;
  sub_1C1264DF0();
  sub_1C0FDB8E8(v3, v5, v7);

  return result;
}

uint64_t sub_1C11BD2E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  if (((*(v1 + 40))(v2, v1) & 1) == 0)
  {
    return 0;
  }

  v3 = (*(v1 + 32))(v2, v1);
  result = 0;
  if ((v5 & 1) == 0 && v3 >= 1)
  {
    sub_1C100DC5C();
    return sub_1C12667D0();
  }

  return result;
}

uint64_t sub_1C11BD39C@<X0>(int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v63 = a5;
  v64 = a7;
  v55 = a2;
  v62 = a9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878, &qword_1C12A4768);
  MEMORY[0x1EEE9AC00](v61);
  v14 = v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968D0, &qword_1C12C1850);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96838, &qword_1C12C1660);
  MEMORY[0x1EEE9AC00](v59);
  v19 = v53 - v18;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968D8, &qword_1C12C1858);
  MEMORY[0x1EEE9AC00](v56);
  v57 = (v53 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96820, &qword_1C12C1650);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v58 = v53 - v23;
  if ((*(a6 + 40))(a3, a6, v22))
  {
    v53[1] = v15;
    v54 = a10;
    v53[0] = v21;
    v24 = v60;
    if ((v55 & 1) == 0)
    {
      goto LABEL_9;
    }

    v65 = a3;
    v66 = a4;
    v67 = v63;
    v68 = a6;
    v69 = v64;
    v70 = v60;
    v71 = v54;
    v25 = type metadata accessor for PhotosAlbumCell(0, &v65);
    v26 = sub_1C11BD010(v25);
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      goto LABEL_9;
    }

    v30 = sub_1C11BD2E8(v25);
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
LABEL_9:
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968E0, &qword_1C12C1860);
      sub_1C10239B0(&qword_1EBE968E8, &qword_1EBE968E0, &qword_1C12C1860, MEMORY[0x1E6981F48]);
      *v19 = sub_1C1012734(v34);
      *(v19 + 1) = 0;
      v19[16] = 1;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968F0, &qword_1C12C1868);
      sub_1C11BDA30(a3, a4, v63, a6, v64, v24, v54, &v19[*(v35 + 44)]);
      sub_1C0FE5654(v19, v57, &qword_1EBE96838, &qword_1C12C1660);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96828, &qword_1C12C1658);
      sub_1C11B2E94(&qword_1EDE7BEB8, &qword_1EBE96828);
      sub_1C10239B0(&qword_1EBE96830, &qword_1EBE96838, &qword_1C12C1660, MEMORY[0x1E69817F8]);
      v36 = v58;
      sub_1C1263C20();
      sub_1C0F9E27C(v19, &qword_1EBE96838);
    }

    else
    {
      sub_1C12639A0();
      v48 = sub_1C12648D0();
      v49 = v57;
      *v57 = v48;
      v49[1] = v50;
      *(v49 + 16) = v51 & 1;
      v49[3] = v52;
      v49[4] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96828, &qword_1C12C1658);
      sub_1C11B2E94(&qword_1EDE7BEB8, &qword_1EBE96828);
      sub_1C10239B0(&qword_1EBE96830, &qword_1EBE96838, &qword_1C12C1660, MEMORY[0x1E69817F8]);
      v36 = v58;
      sub_1C1263C20();
    }

    v37 = &qword_1EBE96820;
    sub_1C0FE5654(v36, v17, &qword_1EBE96820, &qword_1C12C1650);
    swift_storeEnumTagMultiPayload();
    sub_1C11B2A00();
    sub_1C11B2AD8();
    sub_1C1263C20();
    v38 = v36;
  }

  else
  {
    v65 = a3;
    v66 = a4;
    v67 = v63;
    v68 = a6;
    v69 = v64;
    v70 = v60;
    v71 = a10;
    v39 = type metadata accessor for PhotosAlbumCell(0, &v65);
    v65 = sub_1C11BC3BC(v39);
    v66 = v40;
    sub_1C0FDB9AC();
    v41 = sub_1C12648F0();
    v43 = v42;
    v65 = v41;
    v66 = v42;
    v45 = v44 & 1;
    LOBYTE(v67) = v44 & 1;
    v68 = v46;
    sub_1C1264DF0();
    sub_1C0FDB8E8(v41, v43, v45);

    v37 = &qword_1EBE90878;
    sub_1C0FE5654(v14, v17, &qword_1EBE90878, &qword_1C12A4768);
    swift_storeEnumTagMultiPayload();
    sub_1C11B2A00();
    sub_1C11B2AD8();
    sub_1C1263C20();
    v38 = v14;
  }

  return sub_1C0F9E27C(v38, v37);
}

uint64_t sub_1C11BDA30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v43 = a5;
  v44 = a6;
  v42 = a4;
  v46 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878, &qword_1C12A4768);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE968F8, &qword_1C12C1870);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  v47[0] = a1;
  v47[1] = a2;
  v47[2] = a3;
  v47[3] = v42;
  v47[4] = v43;
  v47[5] = v44;
  v47[6] = a7;
  v26 = type metadata accessor for PhotosAlbumCell(0, v47);
  v27 = sub_1C11BD010(v26);
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_1C11BCDEC(v26);
    sub_1C11BF318(v14, v25);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  v33 = v12;
  __swift_storeEnumTagSinglePayload(v25, v31, 1, v12);
  v34 = sub_1C11BD2E8(v26);
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    sub_1C11BD0C4(v26);
    sub_1C11BF318(v14, v22);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v32, 1, v33);
  sub_1C0FE5654(v25, v19, &qword_1EBE968F8, &qword_1C12C1870);
  v38 = v45;
  sub_1C0FE5654(v22, v45, &qword_1EBE968F8, &qword_1C12C1870);
  v39 = v46;
  sub_1C0FE5654(v19, v46, &qword_1EBE968F8, &qword_1C12C1870);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96900, &unk_1C12C1878);
  sub_1C0FE5654(v38, v39 + *(v40 + 48), &qword_1EBE968F8, &qword_1C12C1870);
  sub_1C0F9E27C(v22, &qword_1EBE968F8);
  sub_1C0F9E27C(v25, &qword_1EBE968F8);
  sub_1C0F9E27C(v38, &qword_1EBE968F8);
  return sub_1C0F9E27C(v19, &qword_1EBE968F8);
}

uint64_t sub_1C11BDD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v72 = a6;
  v62 = a1;
  v70 = a9;
  v63 = *(*(a5 + 8) + 8);
  type metadata accessor for PhotosFavoriteBadge(255, a2, v63, a4);
  swift_getTupleTypeMetadata2();
  v55 = sub_1C1265B00();
  v53[1] = swift_getWitnessTable();
  v14 = sub_1C12655A0();
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v54 = v53 - v15;
  v74 = v16;
  v17 = sub_1C1263190();
  v61 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v60 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v56 = v53 - v20;
  v64 = sub_1C1266790();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = v53 - v24;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v53 - v30;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  v58 = a4;
  *&v84 = a4;
  *(&v84 + 1) = a5;
  v59 = a5;
  v85 = v72;
  v86 = a7;
  v87 = v71;
  v32 = type metadata accessor for PhotosAlbumCell(0, &v83);
  v33 = v62;
  v34 = *(v62 + *(v32 + 84));
  v83 = 0u;
  v84 = 0u;
  v34(&v83);
  v73 = v31;
  v35 = a3;
  sub_1C0FDBA4C();
  v65 = v25;
  v36 = *(v25 + 8);
  v68 = v25 + 8;
  v67 = v36;
  v36(v28, a3);
  v37 = (*(v63 + 8))(a2);
  if (v37)
  {
    MEMORY[0x1EEE9AC00](v37);
    v53[-8] = a2;
    v53[-7] = a3;
    v38 = v59;
    v53[-6] = v58;
    v53[-5] = v38;
    v53[-4] = v72;
    v53[-3] = a7;
    v53[0] = a7;
    v53[-2] = v71;
    v53[-1] = v33;
    sub_1C10A7F5C(v55);
    v39 = v54;
    sub_1C1265590();
    v40 = v74;
    WitnessTable = swift_getWitnessTable();
    v42 = v60;
    sub_1C1264F90();
    (*(v57 + 8))(v39, v40);
    v75 = WitnessTable;
    v76 = MEMORY[0x1E697E5D8];
    swift_getWitnessTable();
    v43 = v56;
    sub_1C0FDBA4C();
    v44 = v61;
    v45 = *(v61 + 8);
    v45(v42, v17);
    sub_1C0FDBA4C();
    v45(v43, v17);
    (*(v44 + 32))(v22, v42, v17);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v17);
    v46 = v53[0];
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v17);
    v82[2] = swift_getWitnessTable();
    v82[3] = MEMORY[0x1E697E5D8];
    swift_getWitnessTable();
    v46 = a7;
  }

  v47 = v69;
  sub_1C1170030(v22, v69);
  v48 = v66;
  v49 = *(v66 + 8);
  v50 = v64;
  v49(v22, v64);
  (*(v65 + 16))(v28, v73, v35);
  *&v83 = v28;
  (*(v48 + 16))(v22, v47, v50);
  *(&v83 + 1) = v22;
  v82[0] = v35;
  v82[1] = v50;
  v80 = v46;
  v78 = swift_getWitnessTable();
  v79 = MEMORY[0x1E697E5D8];
  v77 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  sub_1C119EE80(&v83, 2, v82);
  v49(v47, v50);
  v51 = v67;
  v67(v73, v35);
  v49(v22, v50);
  return v51(v28, v35);
}

uint64_t sub_1C11BE5A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v7 + 8) + 8);
  v11 = type metadata accessor for PhotosFavoriteBadge(0, v9, v8, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - v17;
  (*(v4 + 16))(v6, a1, a2, v16);
  v19 = sub_1C110DB44(a2);
  PhotosFavoriteBadge.init(_:tint:)(v19, v14, a2, v8);
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v21 = *(v12 + 8);
  v21(v14, v11);
  v25 = 0;
  v26 = 1;
  v27[0] = &v25;
  (*(v12 + 16))(v14, v18, v11);
  v27[1] = v14;
  v24[0] = MEMORY[0x1E6981840];
  v24[1] = v11;
  v23[0] = MEMORY[0x1E6981838];
  v23[1] = WitnessTable;
  sub_1C119EE80(v27, 2, v24);
  v21(v18, v11);
  return (v21)(v14, v11);
}

uint64_t sub_1C11BE898(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v32 = 0;
    v42 = v2;
    v5 = *(a1 + 24);
    v6 = *(a1 + 64);
    v28[0] = v2;
    v28[1] = v5;
    v27 = *(a1 + 48);
    v29 = *(a1 + 32);
    v30 = v27;
    v31 = v6;
    v7 = type metadata accessor for PhotosAlbumCell.TitleAndContentLayoutStyle(319, v28);
    if (v9 > 0x3F)
    {
      return v7;
    }

    else
    {
      v33 = 0;
      v43 = v7;
      type metadata accessor for PhotosCellBadgeConfiguration(255, v3, v27, v8);
      v10 = sub_1C1266790();
      v3 = v10;
      if (v11 <= 0x3F)
      {
        v34 = 0;
        v44 = v10;
        v12 = sub_1C1007F88();
        v3 = v12;
        if (v13 <= 0x3F)
        {
          v35 = 0;
          v45 = v12;
          v14 = swift_checkMetadataState();
          v3 = v14;
          if (v15 <= 0x3F)
          {
            v36 = 0;
            v46 = v14;
            sub_1C100D318(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs);
            v3 = v16;
            if (v17 <= 0x3F)
            {
              v37 = 0;
              v47 = v16;
              sub_1C108B164(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
              v3 = v18;
              if (v19 <= 0x3F)
              {
                v38 = 0;
                v48 = v18;
                sub_1C108B164(319, &qword_1EDE77578, MEMORY[0x1E697E730]);
                v3 = v20;
                if (v21 <= 0x3F)
                {
                  v39 = 0;
                  v49 = v20;
                  sub_1C100D318(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom);
                  v3 = v22;
                  if (v23 <= 0x3F)
                  {
                    v40 = 0;
                    v50 = v22;
                    sub_1C100D318(319, &qword_1EDE77540, MEMORY[0x1E69E6370]);
                    v3 = v24;
                    if (v25 <= 0x3F)
                    {
                      v41 = 0;
                      v51 = v24;
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v3;
}

unint64_t sub_1C11BEAC0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v4 = *(v32 - 8);
  v5 = *(v4 + 84);
  v31 = *(a3 + 32);
  v6 = *(v31 - 8);
  v30 = *(v6 + 84);
  if (v5 <= v30)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v33 = *(sub_1C12629F0() - 8);
  v9 = *(v33 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v34 = v9;
  v10 = *(sub_1C1263130() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = v13 + 16;
  result = a1;
  if (v8 >= a2)
  {
LABEL_37:
    if (v5 == v8)
    {
      v25 = v5;
      v26 = v32;
    }

    else
    {
      v27 = (((&a1[v12] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) == 0)
      {
        v28 = *v27;
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }

      result = (v27 + v14) & ~v13;
      v25 = v30;
      v26 = v31;
    }

    return __swift_getEnumTagSinglePayload(result, v25, v26);
  }

  v16 = *(v33 + 80) & 0xF8 | 7;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = ((v11 + ((v34 + v17 + ((v16 + ((*(v6 + 64) + ((v14 + (((v12 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v16) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 <= 3)
  {
    v19 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  switch(v21)
  {
    case 1:
      v22 = a1[v18];
      if (!a1[v18])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    case 2:
      v22 = *&a1[v18];
      if (!*&a1[v18])
      {
        goto LABEL_37;
      }

      goto LABEL_30;
    case 3:
      __break(1u);
      return result;
    case 4:
      v22 = *&a1[v18];
      if (!v22)
      {
        goto LABEL_37;
      }

LABEL_30:
      v23 = v18 > 3;
      if (v18 <= 3)
      {
        v24 = (v22 - 1) << (8 * v18);
      }

      else
      {
        v24 = 0;
      }

      if (v23)
      {
        v29 = *a1;
      }

      else
      {
        v29 = *a1;
      }

      result = v8 + (v29 | v24) + 1;
      break;
    default:
      goto LABEL_37;
  }

  return result;
}

void sub_1C11BEE14(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v31 = *(a4 + 16);
  v5 = *(v31 - 8);
  v29 = *(a4 + 32);
  v6 = *(v29 - 8);
  v7 = *(v6 + 84);
  v32 = *(v5 + 84);
  v28 = v7;
  if (v32 > v7)
  {
    v7 = *(*(v31 - 8) + 84);
  }

  v30 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(sub_1C1263130() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 64);
  v14 = *(v6 + 80);
  v15 = *(v9 + 80) & 0xF8 | 7;
  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((v12 + ((v10 + v16 + ((v15 + ((*(v6 + 64) + ((v14 + 16 + (((v13 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 209) & ~v15) + 1) & ~v16) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v20 = 0;
  }

  else
  {
    if (v17 <= 3)
    {
      v18 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v20)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_39;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_38;
      default:
LABEL_38:
        if (!a2)
        {
          return;
        }

LABEL_39:
        v23 = v32;
        if (v32 == v8)
        {
          v24 = a1;
          v25 = v31;
        }

        else
        {
          v26 = ((((a1 + v13) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
          if ((v30 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
              v26[1] = 0;
            }

            else
            {
              v27 = a2 - 1;
            }

            *v26 = v27;
            return;
          }

          v24 = ((v26 + v14 + 16) & ~v14);
          v23 = v28;
          v25 = v29;
        }

        __swift_storeEnumTagSinglePayload(v24, a2, v23, v25);
        break;
    }
  }

  else
  {
    v21 = ~v8 + a2;
    bzero(a1, v17);
    if (v17 <= 3)
    {
      v22 = (v21 >> 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (v17 > 3)
    {
      *a1 = v21;
    }

    else
    {
      *a1 = v21;
    }

    switch(v20)
    {
      case 1:
        *(a1 + v17) = v22;
        break;
      case 2:
        *(a1 + v17) = v22;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *(a1 + v17) = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1C11BF1D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11BF2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C11BF318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878, &qword_1C12A4768);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11BF3E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1C0FCF004(a3, a4);
  }

  return result;
}

uint64_t sub_1C11BF430(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1C0FCF1B4(a3, a4);
  }

  return result;
}

uint64_t sub_1C11BF50C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[6] = v9;
  v10 = type metadata accessor for PhotosAlbumCell(0, v12);
  OUTLINED_FUNCTION_15(v10);

  return sub_1C11BB91C(v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t sub_1C11BF5F8(uint64_t (*a1)(uint64_t))
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v10 = type metadata accessor for PhotosAlbumCell(0, v13);
  OUTLINED_FUNCTION_15(v10);
  return sub_1C11BB97C(v1 + ((*(v11 + 80) + 72) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, a1);
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 64);
  v13 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v2 = *(v0 + 48);
  v14[1] = v13;
  v14[2] = v2;
  v15 = v1;
  v3 = type metadata accessor for PhotosAlbumCell(0, v14);
  v4 = v0 + ((*(*(v3 - 1) + 80) + 72) & ~*(*(v3 - 1) + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 8))(v4);
  v6 = (v4 + v3[20]);
  if (*v6)
  {

    if (v6[2])
    {
    }
  }

  (*(*(v13 - 8) + 8))(v4 + v3[22]);
  v7 = v4 + v3[23];
  sub_1C1001C10(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88), *(v7 + 96), *(v7 + 104), *(v7 + 112), *(v7 + 120), *(v7 + 128), *(v7 + 136), *(v7 + 144), *(v7 + 152), *(v7 + 160), *(v7 + 168), *(v7 + 176), *(v7 + 184), *(v7 + 192), *(v7 + 200), *(v7 + 208));
  v8 = v3[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v4 + v8);
  }

  else
  {
  }

  v10 = v3[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263130();
    OUTLINED_FUNCTION_3();
    (*(v11 + 8))(v4 + v10);
  }

  else
  {
  }

  sub_1C0FA03F4(*(v4 + v3[26]), *(v4 + v3[26] + 8));
  sub_1C0FA03F4(*(v4 + v3[27]), *(v4 + v3[27] + 8));
  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_32_11(uint64_t a1)
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1, uint64_t a2)
{

  return sub_1C0FE5654(a1, a2, v2, v3);
}

uint64_t PhotosScrollViewTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosScrollViewTracker.init()();
  return v0;
}

uint64_t View.photosScrollViewTracker(_:onScrollPhaseDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return MEMORY[0x1C68EE920](v6, a4, &type metadata for PhotosScrollViewSpeedometerModifier, a5);
}

uint64_t PhotosScrollViewTracker.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  v2 = sub_1C1261DE0();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker__speedometerObservation);
  *v3 = 0;
  v3[1] = 0;
  sub_1C1261F60();
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69C45B0]) init];
  sub_1C11BFE18(v0);
  return v0;
}

void sub_1C11BFB9C()
{
  OUTLINED_FUNCTION_39();
  if (OUTLINED_FUNCTION_13_24(v0[5], v0[6], v0[7], v0[8]))
  {
    *(v0 + 5) = v4;
    *(v0 + 6) = v3;
    *(v0 + 7) = v2;
    *(v0 + 8) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v0;
    v8[3] = v4;
    v8[4] = v3;
    v8[5] = v2;
    v8[6] = v1;
    OUTLINED_FUNCTION_6_33(v6, v7, v8);
  }
}

void sub_1C11BFC58(double a1, double a2)
{
  if (*(v2 + 72) == a1 && *(v2 + 80) == a2)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    *&v9[3] = a1;
    *&v9[4] = a2;
    OUTLINED_FUNCTION_6_33(v7, v8, v9);
  }
}

double sub_1C11BFD08(uint64_t a1)
{
  if (*(v1 + 88) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_6_33(v3, v4, v5);
  }

  return result;
}

double sub_1C11BFD90(uint64_t a1)
{
  if (*(v1 + 96) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_6_33(v3, v4, v5);
  }

  return result;
}

uint64_t sub_1C11BFE18(uint64_t a1)
{
  swift_allocObject();
  swift_weakInit();

  v1 = sub_1C12663E0();
  v3 = v2;

  return sub_1C11C1254(v1, v3);
}

void sub_1C11BFEE0()
{
  OUTLINED_FUNCTION_39();
  v0 = sub_1C11C0B58();
  if (!OUTLINED_FUNCTION_13_24(v0, v1, v2, v3))
  {

    sub_1C11BFB9C();
  }
}

void (*sub_1C11BFF44(double **a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  *v3 = sub_1C11C0B58();
  *(v3 + 1) = v4;
  *(v3 + 2) = v5;
  *(v3 + 3) = v6;
  return sub_1C11BFFAC;
}

void sub_1C11BFFAC(void **a1)
{
  v1 = *a1;
  v2 = sub_1C11C0B58();
  if (!OUTLINED_FUNCTION_12_22(v2, v3, v4, v5))
  {
    OUTLINED_FUNCTION_8_0();
    sub_1C11BFB9C();
  }

  free(v1);
}

void sub_1C11C0040(double a1, double a2)
{
  if (sub_1C11C0C40() != a1 || v4 != a2)
  {

    sub_1C11BFC58(a1, a2);
  }
}

void (*sub_1C11C0098(uint64_t a1))(double *a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_1C11C0C40();
  *(a1 + 8) = v3;
  return sub_1C11C00E0;
}

uint64_t sub_1C11C0108(uint64_t a1)
{
  v3 = sub_1C1261DE0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8, &qword_1C12B3B80);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31[-v20];
  v33 = v1;
  sub_1C11C0E00(&v31[-v20]);
  v22 = *(v10 + 56);
  sub_1C10641B8(v21, v12);
  sub_1C10641B8(a1, &v12[v22]);
  OUTLINED_FUNCTION_23_6(v12);
  if (v23)
  {
    sub_1C0FFC7B0(v21, &qword_1EBE91E68, &qword_1C12AC940);
    OUTLINED_FUNCTION_23_6(&v12[v22]);
    if (v23)
    {
      sub_1C0FFC7B0(v12, &qword_1EBE91E68, &qword_1C12AC940);
      return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
    }
  }

  else
  {
    sub_1C10641B8(v12, v18);
    OUTLINED_FUNCTION_23_6(&v12[v22]);
    if (!v23)
    {
      (*(v5 + 32))(v8, &v12[v22], v3);
      sub_1C11C2198(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v32 = sub_1C1265DE0();
      v29 = *(v5 + 8);
      v29(v8, v3);
      sub_1C0FFC7B0(v21, &qword_1EBE91E68, &qword_1C12AC940);
      v29(v18, v3);
      sub_1C0FFC7B0(v12, &qword_1EBE91E68, &qword_1C12AC940);
      v24 = v33;
      if (v32)
      {
        return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
      }

      goto LABEL_10;
    }

    sub_1C0FFC7B0(v21, &qword_1EBE91E68, &qword_1C12AC940);
    (*(v5 + 8))(v18, v3);
  }

  sub_1C0FFC7B0(v12, &qword_1EBE91EB8, &qword_1C12B3B80);
  v24 = v33;
LABEL_10:
  sub_1C10641B8(a1, v15);
  sub_1C11C0F44(v15);
  v25 = sub_1C11C04A8();
  if (v25)
  {
    v27 = v25;
    v28 = v26;
    v25(v24);
    sub_1C0FCF004(v27, v28);
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
}

uint64_t sub_1C11C04A8()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v4 = sub_1C11C2198(v2, v3, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v14, v0);
  sub_1C1261F30();

  v12 = *(v0 + 16);
  sub_1C0FCF1B4(v12, *(v1 + 24));
  return v12;
}

uint64_t sub_1C11C0544@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C11C04A8();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C11C2238;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

double sub_1C11C05B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C11C2200;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C11C0644(v4, v3);
}

double sub_1C11C0644(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C11C1430(KeyPath, sub_1C11C21E0, &v7);
  sub_1C0FCF004(a1, a2);

  return result;
}

uint64_t sub_1C11C06CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1C0FCF1B4(a2, a3);
  return sub_1C0FCF004(v3, v4);
}

double sub_1C11C071C(uint64_t a1)
{
  if (sub_1C11C0CF0() != a1)
  {

    return sub_1C11BFD08(a1);
  }

  return result;
}

uint64_t (*sub_1C11C0768(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1C11C0CF0();
  return sub_1C11C07B0;
}

double sub_1C11C07E0(uint64_t a1)
{
  if (sub_1C11C0D78() != a1)
  {

    return sub_1C11BFD90(a1);
  }

  return result;
}

uint64_t (*sub_1C11C082C(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1C11C0D78();
  return sub_1C11C0874;
}

uint64_t sub_1C11C08A0(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = *a1;
  result = a3();
  if (result != v5)
  {
    return a4(v5);
  }

  return result;
}

id sub_1C11C08F0(uint64_t a1)
{
  sub_1C11C1320(a1);
  v2 = *(v1 + 32);
  sub_1C1262F90();

  return [v2 handleScrollEventVisibleRect:0 didEnd:?];
}

uint64_t sub_1C11C0948(unsigned int a1, uint64_t a2)
{
  v18[3] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1C1262FB0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1264090();
  sub_1C11C1320(v11);
  v12 = *(v8 + 8);
  v12(v11, v6);
  [*(v2 + 32) setIsAnimatingScroll_];
  sub_1C1264090();
  sub_1C1262F90();
  OUTLINED_FUNCTION_5_1();
  v12(v11, v6);
  sub_1C1262AF0();
  v13 = OUTLINED_FUNCTION_8_0();
  [v14 v15];
  if (sub_1C1262B00() & 1) != 0 || (result = sub_1C1262B00(), (result))
  {
    sub_1C1261DA0();
    v17 = sub_1C1261DE0();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v17);
    return sub_1C11C0108(v5);
  }

  return result;
}

double sub_1C11C0B58()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 40);
}

void sub_1C11C0BE4()
{
  OUTLINED_FUNCTION_13_1();
  *v0 = v1();
  *(v0 + 8) = v2;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
}

double sub_1C11C0C40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 72);
}

uint64_t sub_1C11C0CF0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 88);
}

uint64_t sub_1C11C0D78()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + 96);
}

uint64_t sub_1C11C0E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v6 = sub_1C11C2198(v4, v5, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v16, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  swift_beginAccess();
  return sub_1C10641B8(v2 + v14, a1);
}

uint64_t sub_1C11C0EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C10641B8(a1, &v6 - v3);
  return sub_1C11C0F44(v4);
}

uint64_t sub_1C11C0F44(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  swift_beginAccess();
  sub_1C10641B8(v1 + v6, v5);
  v7 = sub_1C11C14D8(v5, a1);
  sub_1C0FFC7B0(v5, &qword_1EBE91E68, &qword_1C12AC940);
  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_6_33(v9, v10, v11);
  }

  else
  {
    sub_1C10641B8(a1, v5);
    swift_beginAccess();
    sub_1C1064FA4(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
}

uint64_t sub_1C11C10B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C10641B8(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate;
  swift_beginAccess();
  sub_1C1064FA4(v6, a1 + v7);
  return swift_endAccess();
}

double sub_1C11C117C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_68();
  v3 = sub_1C11C2198(v1, v2, &protocol conformance descriptor for PhotosScrollViewTracker);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1C11C1218(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C11C1254(v3, v2);
}

uint64_t sub_1C11C1254(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C11C1430(KeyPath, sub_1C11C215C, &v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C11C12D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker__speedometerObservation);
  *v3 = a2;
  v3[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C11C1320(uint64_t a1)
{
  sub_1C1262F90();
  OUTLINED_FUNCTION_5_1();
  v1 = sub_1C11C0B58();
  if (!OUTLINED_FUNCTION_12_22(v1, v2, v3, v4))
  {
    OUTLINED_FUNCTION_8_0();
    sub_1C11BFB9C();
  }

  sub_1C1262F80();

  sub_1C11C0040(v5, v6);
}

double sub_1C11C139C()
{
  v1 = *(v0 + 32);
  v2 = [v1 regime];
  if (sub_1C11C0CF0() != v2)
  {
    v3 = sub_1C11BFD08(v2);
  }

  v4 = [v1 previousRegime];
  if (sub_1C11C0D78() != v4)
  {

    return sub_1C11BFD90(v4);
  }

  return result;
}

uint64_t sub_1C11C1430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_68();
  sub_1C11C2198(v3, v4, &protocol conformance descriptor for PhotosScrollViewTracker);
  return sub_1C1261F20();
}

uint64_t sub_1C11C14D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8, &qword_1C12B3B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10641B8(a1, &v20 - v12);
  sub_1C10641B8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10641B8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C11C2198(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8, &qword_1C12B3B80);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
  v16 = 0;
  return v16 & 1;
}

uint64_t PhotosScrollViewTracker.deinit()
{
  sub_1C0FCF004(*(v0 + 16), *(v0 + 24));

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___lastScrollDate, &qword_1EBE91E68, &qword_1C12AC940);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore23PhotosScrollViewTracker___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosScrollViewTracker.__deallocating_deinit()
{
  PhotosScrollViewTracker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C11C1894@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96920, &qword_1C12C1AC8);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = sub_1C1262FB0();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;

  sub_1C0FCF1B4(a2, a3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96928, &qword_1C12C1AD0);
  v14 = sub_1C11C20A4();
  v18 = sub_1C11C2198(&qword_1EDE7BFB0, MEMORY[0x1E697E4B8], MEMORY[0x1E697E4C8]);
  sub_1C1264DE0();

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;

  sub_1C0FCF1B4(a2, a3);
  v23 = v13;
  v24 = v11;
  v25 = v14;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v16 = v20;
  sub_1C1264D20();

  return (*(v21 + 8))(v10, v16);
}

uint64_t sub_1C11C1B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1262FB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C11C1B74(uint64_t a1, uint64_t a2)
{
  sub_1C1262FB0();
  sub_1C11C2198(&qword_1EDE7BFB0, MEMORY[0x1E697E4B8], MEMORY[0x1E697E4C8]);
  result = sub_1C1265DE0();
  if ((result & 1) == 0)
  {
    return sub_1C11C08F0(a2);
  }

  return result;
}

uint64_t sub_1C11C1C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_1C1262B00();
  if ((result & 1) == 0)
  {
    result = sub_1C11C0948(a1, a2);
    if (a5)
    {
      return a5(a1, a2, a3);
    }
  }

  return result;
}

double sub_1C11C1C90(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C11C139C();
    }
  }

  return result;
}

uint64_t type metadata accessor for PhotosScrollViewTracker(uint64_t a1)
{
  result = qword_1EDE81680;
  if (!qword_1EDE81680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C11C1D44(uint64_t a1)
{
  sub_1C1065568(319);
  if (v1 <= 0x3F)
  {
    sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI11ScrollPhaseOAcA0cD13ChangeContextVIegyyn_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C11C20A4()
{
  result = qword_1EDE7BAE8;
  if (!qword_1EDE7BAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96928, &qword_1C12C1AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BAE8);
  }

  return result;
}

uint64_t objectdestroyTm_17()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C11C2198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C11C2200(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

__n128 sub_1C11C227C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

__n128 sub_1C11C228C()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 40) = result;
  *(v1 + 56) = v3;
  return result;
}

uint64_t PhotosOrderedSet.init()@<X0>(uint64_t *a3@<X8>)
{
  sub_1C1266130();
  result = sub_1C1262460();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t PhotosOrderedSet.formUnion<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_1C12624F0();
  return sub_1C12624D0();
}

uint64_t PhotosOrderedSet.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C1262450();
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t PhotosOrderedSet.elements.setter(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_1_48(a1, a2);

  return MEMORY[0x1EEDF5770](v2, v3);
}

uint64_t PhotosOrderedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1266790();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C12624F0();
  sub_1C1262480();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PhotosOrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_1_48(a1, a2);

  return MEMORY[0x1EEDF5758](v2, v3);
}

Swift::Void __swiftcall PhotosOrderedSet.removeAll()()
{
  v0 = sub_1C12624F0();

  MEMORY[0x1EEDF5780](0, v0);
}

uint64_t PhotosOrderedSet.isEmpty.getter(uint64_t a1)
{
  sub_1C1266AB0();
  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  return sub_1C1266370() & 1;
}

uint64_t sub_1C11C263C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for PhotosOrderedSet(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  result = PhotosOrderedSet.elements.getter(v5);
  *a3 = result;
  return result;
}

uint64_t sub_1C11C2688(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for PhotosOrderedSet(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);

  return PhotosOrderedSet.elements.setter(v5, v4);
}

uint64_t PhotosOrderedSet.elements.modify(uint64_t *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = PhotosOrderedSet.elements.getter(a2);
  return OUTLINED_FUNCTION_17_3();
}

void sub_1C11C2734(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    PhotosOrderedSet.elements.setter(v3, v2);
  }

  else
  {
    PhotosOrderedSet.elements.setter(*a1, v2);
  }
}

void *PhotosOrderedSet.makeIterator()(uint64_t a1)
{
  sub_1C12624F0();
  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  sub_1C1266D20();
  swift_initStackObject();

  v1 = sub_1C1266D10();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  swift_retain_n();
  swift_retain_n();
  v4 = sub_1C1266A20();

  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  sub_1C1266B20();
  OUTLINED_FUNCTION_17_3();
  swift_getWitnessTable();
  sub_1C12669B0();
  result = swift_allocObject();
  result[2] = v2;
  result[3] = v3;
  result[4] = v4;
  return result;
}

void sub_1C11C28F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = PhotosOrderedSet.makeIterator()(a1);

  *a2 = v3;
}

uint64_t sub_1C11C29BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t OneUpChromeElement.description.getter()
{
  result = 0x6142206567646142;
  switch(*v0)
  {
    case 1:
      result = 0x614220656C746954;
      break;
    case 2:
      result = 0x726142206C6F6F54;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6F43206F65646956;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OneUpChromeElement.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

unint64_t sub_1C11C2B5C()
{
  result = qword_1EDE7D6D8;
  if (!qword_1EDE7D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7D6D8);
  }

  return result;
}

unint64_t sub_1C11C2BB4()
{
  result = qword_1EBE96930;
  if (!qword_1EBE96930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96938, &qword_1C12C1D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96930);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpChromeElement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

double sub_1C11C2D44@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_0_69(v18);
  OUTLINED_FUNCTION_0_69(__src);
  OUTLINED_FUNCTION_0_69(v19);
  OUTLINED_FUNCTION_0_69(&__src[88]);
  OUTLINED_FUNCTION_0_69(v20);
  OUTLINED_FUNCTION_0_69(&__src[176]);
  v4 = *(a1 + 24);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = *(v4 + 32);
  memcpy(a2, __src, 0x108uLL);
  *(a2 + 264) = v5;
  *(a2 + 272) = v6;
  *(a2 + 280) = v7;
  *(a2 + 288) = v8;
  *(a2 + 296) = v9;
  *(a2 + 304) = *(v4 + 5);
  OUTLINED_FUNCTION_1_49(v18, v10, v11);
  OUTLINED_FUNCTION_1_49(v19, v12, v13);
  OUTLINED_FUNCTION_1_49(v20, v14, v15);

  return result;
}

double sub_1C11C2E3C@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[5];
  v6 = v2[6];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[5];
  v12 = v7[6];
  v13 = *v8;
  v14 = *(v2 + 16);
  v15 = *(v2 + 56);
  v16 = *(v7 + 16);
  v17 = *(v7 + 56);
  v21 = *(v8 + 8);
  v18 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v18;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v14;
  v19 = *(v7 + 3);
  *(a2 + 33) = *(v2 + 17);
  *(a2 + 36) = *(v2 + 5);
  *(a2 + 40) = *(v2 + 3);
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 72) = v15;
  *(a2 + 80) = v9;
  *(a2 + 88) = v10;
  *(a2 + 96) = v16;
  *(a2 + 100) = *(v7 + 5);
  *(a2 + 97) = *(v7 + 17);
  *(a2 + 104) = v19;
  *(a2 + 120) = v11;
  *(a2 + 128) = v12;
  *(a2 + 136) = v17;
  *(a2 + 144) = v13;
  *(a2 + 152) = v21;
  sub_1C1058CE4(v4, v3, v14 & 1);

  sub_1C1058CE4(v5, v6, v15 & 1);
  sub_1C1058CE4(v9, v10, v16 & 1);

  return sub_1C1058CE4(v11, v12, v17 & 1);
}

double sub_1C11C2F88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = v3[1];
  v8 = v3[3];
  v7 = *(v3 + 16);
  v9 = *v4;
  v10 = *(v4 + 8);
  v12 = *(v4 + 24);
  v11 = *(v4 + 16);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *v13;
  v16 = *(v13 + 8);
  v18 = *(v13 + 24);
  v17 = *(v13 + 16);
  v22 = *(v14 + 8);
  v23 = *v14;
  v33 = *(v14 + 16);
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  v27 = v20[1];
  v28 = *v20;
  v26 = v20[2];
  v24 = *(v14 + 24);
  v25 = v20[3];
  v31 = v19[1];
  v32 = *v19;
  v29 = v19[3];
  v30 = v19[2];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v12;
  *(a2 + 64) = v15;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v18;
  *(a2 + 96) = v23;
  *(a2 + 104) = v22;
  *(a2 + 112) = v33;
  *(a2 + 120) = v24;
  *(a2 + 128) = v28;
  *(a2 + 136) = v27;
  *(a2 + 144) = v26;
  *(a2 + 152) = v25;
  *(a2 + 160) = v32;
  *(a2 + 168) = v31;
  *(a2 + 176) = v30;
  *(a2 + 184) = v29;
  sub_1C0FDB850(v5, v6, v7);

  sub_1C0FDB850(v9, v10, v11);

  sub_1C0FDB850(v15, v16, v17);

  sub_1C0FDB850(v23, v22, v33);

  sub_1C0FDB860(v28, v27, v26, v25);

  return sub_1C0FDB860(v32, v31, v30, v29);
}

double sub_1C11C30FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v8 = *(v2 + 8);
  v10 = *(v2 + 24);
  v9 = *(v2 + 16);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = *(v11 + 8);
  v16 = *(v11 + 24);
  v15 = *(v11 + 16);
  v18 = *v12;
  v17 = v12[1];
  v21 = v12[2];
  v20 = v12[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v18;
  *(a2 + 104) = v17;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  sub_1C0FDB850(v4, v3, v5);

  sub_1C0FDB850(v7, v8, v9);

  sub_1C0FDB850(v13, v14, v15);

  return sub_1C0FDB860(v18, v17, v21, v20);
}

uint64_t sub_1C11C3210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_2_53();
  v15 = v14[2];
  v25 = v14[1];
  *v26 = v15;
  *&v26[10] = *(v14 + 42);
  v24 = *v14;
  __src[0] = v24;
  __src[1] = v25;
  __src[2] = *v26;
  __src[3] = *&v26[16];
  *&__src[4] = v16;
  *(&__src[4] + 1) = v17;
  sub_1C102EFA0(v8, v20, v18, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  memcpy((v11 + *(v21 + 36)), __src, 0x50uLL);
  v28[0] = v24;
  v28[1] = v25;
  v28[2] = *v26;
  v28[3] = *&v26[16];
  v29 = v10;
  v30 = v9;
  sub_1C102EFA0(v7, v23, &qword_1EBE96988, &qword_1C12C2020);
  sub_1C102EFA0(__src, v23, &qword_1EBE96990, &qword_1C12C2028);
  return sub_1C0F9E21C(v28, &qword_1EBE96990, &qword_1C12C2028);
}

uint64_t sub_1C11C3318@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a1[2];
  v13 = a1[1];
  *v14 = v9;
  *&v14[10] = *(a1 + 42);
  v12 = *a1;
  __src[0] = v12;
  __src[1] = v13;
  __src[2] = *v14;
  __src[3] = *&v14[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  *a6 = a4;
  *(a6 + 8) = a5 & 1;
  *(a6 + 9) = HIBYTE(a5) & 1;
  memcpy((a6 + 16), __src, 0x50uLL);
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = *v14;
  v16[3] = *&v14[16];
  v17 = a2;
  v18 = a3;
  sub_1C102EFA0(a1, v11, &qword_1EBE96988, &qword_1C12C2020);

  sub_1C102EFA0(__src, v11, &qword_1EBE96990, &qword_1C12C2028);
  return sub_1C0F9E21C(v16, &qword_1EBE96990, &qword_1C12C2028);
}

uint64_t sub_1C11C3414@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = a1[2];
  v16 = a1[1];
  *v17 = v10;
  *&v17[10] = *(a1 + 42);
  v15 = *a1;
  __src[0] = v15;
  __src[1] = v16;
  __src[2] = *v17;
  __src[3] = *&v17[16];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A88, &qword_1C12C2120);
  (*(*(v11 - 8) + 16))(a4, v5, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A90, &unk_1C12C2128);
  memcpy((a4 + *(v12 + 36)), __src, 0x50uLL);
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = *v17;
  v19[3] = *&v17[16];
  v20 = a2;
  v21 = a3;
  sub_1C102EFA0(a1, v14, &qword_1EBE96988, &qword_1C12C2020);
  sub_1C102EFA0(__src, v14, &qword_1EBE96990, &qword_1C12C2028);
  return sub_1C0F9E21C(v19, &qword_1EBE96990, &qword_1C12C2028);
}

uint64_t sub_1C11C357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_2_53();
  OUTLINED_FUNCTION_3_45(v9, v10, v11);

  v12 = sub_1C12659A0();
  v22[0] = v16 * 0.5;
  v22[1] = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28 = v5;
  v29 = 256;
  sub_1C11C3210(v22, v12, v13, v7, v6, a4, a5);
  v30[0] = v16 * 0.5;
  v30[1] = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v5;
  v37 = 256;
  return sub_1C0F9E21C(v30, &qword_1EBE96988, &qword_1C12C2020);
}

uint64_t sub_1C11C3694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C1262B10();

  v11 = sub_1C12659A0();
  *&v20 = v14 * 0.5;
  *(&v20 + 1) = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v26 = a1;
  v27 = 256;
  sub_1C11C3318(&v20, v11, v12, a2, a3 & 0x101, a4);
  v28[0] = v14 * 0.5;
  v28[1] = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = a1;
  v35 = 256;
  return sub_1C0F9E21C(v28, &qword_1EBE96988, &qword_1C12C2020);
}

uint64_t sub_1C11C37BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  OUTLINED_FUNCTION_3_45(a3, a4, a5);

  v7 = sub_1C12659A0();
  *&v16 = v10 * 0.5;
  *(&v16 + 1) = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = a1;
  v23 = 256;
  sub_1C11C3414(&v16, v7, v8, a2);
  v24[0] = v10 * 0.5;
  v24[1] = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = a1;
  v31 = 256;
  return sub_1C0F9E21C(v24, &qword_1EBE96988, &qword_1C12C2020);
}

uint64_t sub_1C11C38B8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_1C1265940();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96998, &qword_1C12C2030);
  sub_1C11C3960(a2 + *(v4 + 44));
  v5 = sub_1C12631E0();
  v6 = sub_1C1264470();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969A0, &qword_1C12C2038) + 36);
  *v7 = v5;
  v7[8] = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969A8, &qword_1C12C2040);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C11C3960@<X0>(_BYTE *a1@<X8>)
{
  v79 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969B0, &qword_1C12C2048);
  MEMORY[0x1EEE9AC00](v74);
  v2 = &v69[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969B8, &qword_1C12C2050);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v69[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969C0, &qword_1C12C2058);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v69[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969C8, &qword_1C12C2060);
  v81 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69[-v12];
  sub_1C11652F0();
  *&v93 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969D0, &qword_1C12C2068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969D8, &qword_1C12C2070);
  sub_1C0FDB6D4(&qword_1EBE969E0, &qword_1EBE969D0, &qword_1C12C2068, MEMORY[0x1E69E6338]);
  sub_1C11C549C();
  sub_1C11C57C0(&qword_1EBE96A30, type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem, &unk_1C12BC668);
  v89 = v13;
  sub_1C1265690();
  v15 = sub_1C11651FC();
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if ((v27 & 1) == 0)
  {
    v28 = v15;
    v29 = v16;
    v17 = sub_1C12651C0();
    sub_1C12659A0();
    sub_1C1262C80();
    v20 = v101;
    v21 = v102;
    v22 = v103;
    v23 = v104;
    v26 = 256;
    v18 = v28;
    v19 = v29;
    v24 = v105;
    v25 = v106;
  }

  v82 = v26;
  v83 = v25;
  v84 = v24;
  v85 = v19;
  v86 = v18;
  v87 = v23;
  v88 = v22;
  v76 = v21;
  v77 = v20;
  v78 = v17;
  sub_1C11653E4();
  if (*(v30 + 16))
  {
    v72 = sub_1C1263AA0();
    LOBYTE(v100[0]) = 1;
    sub_1C11C4BB8(&v93);

    *&__src[7] = v93;
    *&__src[23] = v94;
    *&__src[39] = v95;
    *&__src[55] = v96;
    v31 = v100[0];
    v32 = sub_1C1264470();
    LOBYTE(v92[0]) = 0;
    v33 = sub_1C1265190();
    KeyPath = swift_getKeyPath();
    v70 = sub_1C1264470();
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A38, &qword_1C12C20D0) + 36);
    v73 = v3;
    v35 = &v2[v34];
    v36 = *(sub_1C1263320() + 20);
    v37 = v9;
    v38 = *MEMORY[0x1E697F468];
    v39 = sub_1C12639D0();
    v40 = v38;
    v9 = v37;
    (*(*(v39 - 8) + 104))(&v35[v36], v40, v39);
    __asm { FMOV            V0.2D, #8.0 }

    *v35 = _Q0;
    *&v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010) + 36)] = 256;
    *v2 = v72;
    *(v2 + 1) = 0;
    v2[16] = v31;
    memcpy(v2 + 17, __src, 0x47uLL);
    v2[88] = v32;
    *(v2 + 89) = v92[0];
    *(v2 + 23) = *(v92 + 3);
    __asm { FMOV            V0.2D, #20.0 }

    *(v2 + 6) = _Q0;
    *(v2 + 7) = _Q0;
    v2[128] = 0;
    *(v2 + 129) = v100[0];
    *(v2 + 33) = *(v100 + 3);
    *(v2 + 17) = KeyPath;
    *(v2 + 18) = v33;
    *(v2 + 38) = 1045220557;
    v2[156] = v70;
    sub_1C1265120();
    v47 = sub_1C12651E0();

    v48 = sub_1C1264470();
    v49 = &v2[*(v74 + 36)];
    *v49 = v47;
    v49[8] = v48;
    v50 = sub_1C1265120();
    v51 = v75;
    sub_1C11C357C(v50, &qword_1EBE969B0, &qword_1C12C2048, &qword_1EBE96A50, &unk_1C12C20E8);

    sub_1C0F9E21C(v2, &qword_1EBE969B0, &qword_1C12C2048);
    v52 = v73;
    *(v51 + *(v73 + 36)) = xmmword_1C12C1E30;
    v53 = v90;
    sub_1C11C5750(v51, v90);
    v54 = v53;
    v55 = 0;
    v56 = v52;
  }

  else
  {

    v53 = v90;
    v54 = v90;
    v55 = 1;
    v56 = v3;
  }

  __swift_storeEnumTagSinglePayload(v54, v55, 1, v56);
  v57 = v81;
  v58 = *(v81 + 16);
  v59 = v91;
  v58(v91, v89, v9);
  v60 = v80;
  sub_1C102EFA0(v53, v80, &qword_1EBE969C0, &qword_1C12C2058);
  v61 = v79;
  v58(v79, v59, v9);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A40, &qword_1C12C20D8);
  v63 = *(v62 + 48);
  v65 = v77;
  v64 = v78;
  v92[0] = v78;
  v92[1] = v82;
  v92[2] = v86;
  v92[3] = v85;
  v66 = v76;
  v92[4] = v77;
  v92[5] = v76;
  v92[6] = v88;
  v92[7] = v87;
  v92[8] = v84;
  v92[9] = v83;
  memcpy(&v61[v63], v92, 0x50uLL);
  sub_1C102EFA0(v60, &v61[*(v62 + 64)], &qword_1EBE969C0, &qword_1C12C2058);
  sub_1C102EFA0(v92, &v93, &qword_1EBE96A48, &qword_1C12C20E0);
  sub_1C0F9E21C(v90, &qword_1EBE969C0, &qword_1C12C2058);
  v67 = *(v57 + 8);
  v67(v89, v9);
  sub_1C0F9E21C(v60, &qword_1EBE969C0, &qword_1C12C2058);
  *&v93 = v64;
  *(&v93 + 1) = v82;
  *&v94 = v86;
  *(&v94 + 1) = v85;
  *&v95 = v65;
  *(&v95 + 1) = v66;
  *&v96 = v88;
  *(&v96 + 1) = v87;
  v97 = v84;
  v98 = v83;
  sub_1C0F9E21C(&v93, &qword_1EBE96A48, &qword_1C12C20E0);
  return (v67)(v91, v9);
}

double sub_1C11C4118@<D0>(double *a1@<X0>, char *a2@<X8>)
{
  sub_1C1265140();
  v4 = sub_1C12651E0();

  v5 = sub_1C1265140();
  sub_1C11C3694(v5, v4, 256, __src);

  v6 = sub_1C1265990();
  v8 = v7;
  v9 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A08, &qword_1C12C2080) + 36)];
  sub_1C11C42E0(a1, v9);
  v10 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A28, &qword_1C12C2098) + 36)];
  *v10 = v6;
  v10[1] = v8;
  memcpy(a2, __src, 0x60uLL);
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  sub_1C1266590();
  v16 = v15;
  v18 = v17;
  v19 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969F8, &qword_1C12C2078) + 36)];
  *v19 = v16;
  *(v19 + 1) = v18;
  v26.origin.x = v11;
  v26.origin.y = v12;
  v26.size.width = v13;
  v26.size.height = v14;
  CGRectGetWidth(v26);
  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = v13;
  v27.size.height = v14;
  CGRectGetHeight(v27);
  sub_1C12659A0();
  sub_1C1262C80();
  v20 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969D8, &qword_1C12C2070) + 36)];
  *v20 = v22;
  *(v20 + 1) = v23;
  result = *&v24;
  *(v20 + 2) = v24;
  return result;
}

uint64_t sub_1C11C42E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1263AA0();
  v27 = 1;
  sub_1C11C4578(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v29, __src, sizeof(v29));
  sub_1C102EFA0(__dst, &v24, &qword_1EBE96A58, &qword_1C12C20F8);
  sub_1C0F9E21C(v29, &qword_1EBE96A58, &qword_1C12C20F8);
  memcpy(&v26[7], __dst, 0xC0uLL);
  v5 = v27;
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A60, &qword_1C12C2100) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v9 = *MEMORY[0x1E6980FB0];
  v10 = sub_1C1264830();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  memcpy((a2 + 17), v26, 0xC7uLL);
  *(a2 + 216) = KeyPath;
  *(a2 + 224) = 1;
  *(a2 + 232) = 0;
  LOBYTE(v4) = sub_1C1264470();
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A68, &qword_1C12C2108) + 36);
  *v11 = v4;
  __asm { FMOV            V0.2D, #20.0 }

  *(v11 + 8) = _Q0;
  *(v11 + 24) = _Q0;
  *(v11 + 40) = 0;
  LOBYTE(v4) = sub_1C1264470();
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A70, &qword_1C12C2110) + 36);
  *v17 = 1045220557;
  *(v17 + 4) = v4;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96A78, &qword_1C12C2118) + 36));
  v19 = *(sub_1C1263320() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1C12639D0();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #8.0 }

  *v18 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010);
  *&v18[*(result + 36)] = 256;
  return result;
}

double sub_1C11C4578@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_1C1261DE0();
  v29 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v63, "container: ");
  HIDWORD(v63[1]) = -352321536;
  MEMORY[0x1C68EF850](*a1, *(a1 + 8), v7);
  v37 = v63[0];
  v36 = v63[1];
  strcpy(v63, "colsPerPage: ");
  HIWORD(v63[1]) = -4864;
  v59 = *(a1 + 48);
  v10 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v10);

  v35 = v63[0];
  v34 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_1C1266940();

  v63[0] = 0xD000000000000016;
  v63[1] = 0x80000001C126D500;
  v11 = sub_1C1266260();
  MEMORY[0x1C68EF850](v11);

  v33 = v63[0];
  v32 = v63[1];
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  sub_1C1266940();

  v63[0] = 0xD000000000000016;
  v63[1] = 0x80000001C126D520;
  v12 = type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0);
  LOBYTE(v59) = *(a1 + *(v12 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93DF0, &unk_1C12B6BD0);
  v13 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v13);

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v31 = v63[0];
  v30 = v63[1];
  if ((*(a1 + 104) & 1) == 0)
  {
    strcpy(v63, "scrollSpeed: ");
    HIWORD(v63[1]) = -4864;
    v17 = PXScrollViewSpeedometerRegimeDescription();
    v18 = sub_1C1265EA0();
    v20 = v19;

    MEMORY[0x1C68EF850](v18, v20);

    v14 = v63[0];
    v15 = v63[1];

    v16 = MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1C102EFA0(a1 + *(v12 + 52), v5, &qword_1EBE91E68, &qword_1C12AC940);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C0F9E21C(v5, &qword_1EBE91E68, &qword_1C12AC940);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v29;
    (*(v29 + 32))(v9, v5, v6);
    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    sub_1C1266940();

    v63[0] = 0xD000000000000010;
    v63[1] = 0x80000001C126D540;
    sub_1C11C57C0(&qword_1EBE96A80, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v26 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v26);

    v22 = v63[0];
    v23 = v63[1];
    (*(v25 + 8))(v9, v6);

    v24 = MEMORY[0x1E69E7CC0];
  }

  v59 = v37;
  v60 = v36;
  v61 = 0;
  v55 = v35;
  v56 = v34;
  v57 = 0;
  v58 = v21;
  v62 = v21;
  v63[0] = &v59;
  v63[1] = &v55;
  v51 = v33;
  v52 = v32;
  v53 = 0;
  v54 = v21;
  v47 = v31;
  v48 = v30;
  v49 = 0;
  v50 = v21;
  v63[2] = &v51;
  v63[3] = &v47;
  v43 = v14;
  v44 = v15;
  v45 = 0;
  v46 = v16;
  v39 = v22;
  v40 = v23;
  v41 = 0;
  v42 = v24;
  v63[4] = &v43;
  v63[5] = &v39;
  sub_1C11C2F88(v63, v38);
  sub_1C0FDB8A4(v14, v15, 0, v16);
  sub_1C0FDB8A4(v22, v23, 0, v24);
  sub_1C0FDB8A4(v39, v40, v41, v42);
  sub_1C0FDB8A4(v43, v44, v45, v46);
  sub_1C0FDB8E8(v47, v48, v49);

  sub_1C0FDB8E8(v51, v52, v53);

  sub_1C0FDB8E8(v55, v56, v57);

  sub_1C0FDB8E8(v59, v60, v61);

  return result;
}

double sub_1C11C4BB8@<D0>(uint64_t a1@<X8>)
{
  sub_1C1266940();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0, &qword_1C12A3E60);
  sub_1C0FDB6D4(&qword_1EDE7B700, &qword_1EBE906A0, &qword_1C12A3E60, MEMORY[0x1E69E6310]);
  v2 = sub_1C1265D70();
  MEMORY[0x1C68EF850](v2);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  *a1 = xmmword_1C12C1E40;
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x80000001C126D4E0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  sub_1C0FDB850(0x6C61626F6C47, 0xE600000000000000, 0);

  sub_1C0FDB850(0xD000000000000011, 0x80000001C126D4E0, 0);

  sub_1C0FDB8E8(0xD000000000000011, 0x80000001C126D4E0, 0);

  sub_1C0FDB8E8(0x6C61626F6C47, 0xE600000000000000, 0);

  return result;
}

uint64_t sub_1C11C4D70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C1265940();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96940, &qword_1C12C1F70);
  sub_1C11C4DDC(a1, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96948, &qword_1C12C1F78);
  *(a2 + *(result + 36)) = 0;
  return result;
}

void *sub_1C11C4DDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C12651A0();
  v4 = sub_1C12651E0();

  v5 = sub_1C12651A0();
  sub_1C11C3694(v5, v4, 256, v12);

  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96950, &qword_1C12C1F80) + 36)];
  sub_1C11C4EC8(a1, v9);
  v10 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96958, &qword_1C12C1F88) + 36)];
  *v10 = v6;
  v10[1] = v8;
  return memcpy(a2, v12, 0x60uLL);
}

uint64_t sub_1C11C4EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1C1263AA0();
  v26 = 1;
  sub_1C11C5160(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v28, __src, sizeof(v28));
  sub_1C102EFA0(__dst, &v23, &qword_1EBE96960, &qword_1C12C1F90);
  sub_1C0F9E21C(v28, &qword_1EBE96960, &qword_1C12C1F90);
  memcpy(&v25[7], __dst, 0x80uLL);
  v4 = v26;
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96968, &unk_1C12C1FC8) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v8 = *MEMORY[0x1E6980FB0];
  v9 = sub_1C1264830();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  memcpy((a2 + 17), v25, 0x87uLL);
  *(a2 + 152) = KeyPath;
  *(a2 + 160) = 1;
  *(a2 + 168) = 0;
  LOBYTE(v3) = sub_1C1264470();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96970, &qword_1C12C2008) + 36);
  *v10 = v3;
  __asm { FMOV            V0.2D, #20.0 }

  *(v10 + 8) = _Q0;
  *(v10 + 24) = _Q0;
  *(v10 + 40) = 0;
  LOBYTE(v3) = sub_1C1264470();
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96978, &qword_1C12C2010) + 36);
  *v16 = 1061997773;
  *(v16 + 4) = v3;
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96980, &qword_1C12C2018) + 36));
  v18 = *(sub_1C1263320() + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1C12639D0();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #8.0 }

  *v17 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010);
  *&v17[*(result + 36)] = 256;
  return result;
}

double sub_1C11C5160@<D0>(uint64_t a2@<X8>)
{
  v2 = 0xE400000000000000;
  MEMORY[0x1C68EF850](540697705, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078, &qword_1C12A26B0);
  sub_1C1266B10();
  v38 = 0x6C62697369567369;
  v39 = 0xEB00000000203A65;
  v3 = sub_1C0FE75F0();
  v4 = (v3 & 1) == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1C68EF850](v5, v2);

  v6 = v38;
  v7 = v39;
  sub_1C1266940();

  v38 = 0xD000000000000012;
  v39 = 0x80000001C126D4C0;
  sub_1C0FE71FC(&v34);
  v8 = 0xE800000000000000;
  v9 = 0x64656C6261736964;
  switch(v34)
  {
    case 1:
      v9 = 0x646564616F6C6E75;
      break;
    case 2:
      v8 = 0xE600000000000000;
      v9 = 0x646573756170;
      break;
    case 3:
      v8 = 0xE700000000000000;
      v9 = 0x676E6979616C70;
      break;
    default:
      break;
  }

  MEMORY[0x1C68EF850](v9, v8);

  v10 = v38;
  v11 = v39;
  v12 = sub_1C0FE6C58();
  v13 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = v12;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1C1266940();

    v38 = 0x736F506575657571;
    v39 = 0xEF203A6E6F697469;
    v34 = v18;
    v19 = sub_1C1266CE0();
    MEMORY[0x1C68EF850](v19);

    v15 = v38;
    v16 = v39;

    v17 = MEMORY[0x1E69E7CC0];
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v36 = 0;
  v37 = v13;
  v30 = v6;
  v31 = v7;
  v32 = 0;
  v33 = v13;
  v38 = &v34;
  v39 = &v30;
  v26 = v10;
  v27 = v11;
  v28 = 0;
  v29 = v13;
  v22 = v15;
  v23 = v16;
  v24 = 0;
  v25 = v17;
  v40 = &v26;
  v41 = &v22;
  sub_1C11C30FC(&v38, a2);
  sub_1C0FDB8A4(v15, v16, 0, v17);
  sub_1C0FDB8A4(v22, v23, v24, v25);
  sub_1C0FDB8E8(v26, v27, v28);

  sub_1C0FDB8E8(v30, v31, v32);

  sub_1C0FDB8E8(v34, v35, v36);

  return result;
}

unint64_t sub_1C11C549C()
{
  result = qword_1EBE969E8;
  if (!qword_1EBE969E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969D8, &qword_1C12C2070);
    sub_1C11C5528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE969E8);
  }

  return result;
}

unint64_t sub_1C11C5528()
{
  result = qword_1EBE969F0;
  if (!qword_1EBE969F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969F8, &qword_1C12C2078);
    sub_1C11C55B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE969F0);
  }

  return result;
}

unint64_t sub_1C11C55B4()
{
  result = qword_1EBE96A00;
  if (!qword_1EBE96A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96A08, &qword_1C12C2080);
    sub_1C11C566C();
    sub_1C0FDB6D4(&qword_1EBE96A20, &qword_1EBE96A28, &qword_1C12C2098, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96A00);
  }

  return result;
}

unint64_t sub_1C11C566C()
{
  result = qword_1EBE96A10;
  if (!qword_1EBE96A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96A18, &unk_1C12C2088);
    sub_1C0FDB6D4(&qword_1EDE7C048, &unk_1EBE91B60, &qword_1C12AB760, MEMORY[0x1E697DB78]);
    sub_1C0FDB6D4(&unk_1EDE7BCC0, &qword_1EBE96990, &qword_1C12C2028, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96A10);
  }

  return result;
}

uint64_t sub_1C11C5750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE969B8, &qword_1C12C2050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11C57C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C11C5808()
{
  result = qword_1EBE96AA0;
  if (!qword_1EBE96AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96948, &qword_1C12C1F78);
    sub_1C0FDB6D4(&qword_1EBE96AA8, &qword_1EBE96AB0, &qword_1C12C2148, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96AA0);
  }

  return result;
}

unint64_t sub_1C11C58C0()
{
  result = qword_1EBE96AB8;
  if (!qword_1EBE96AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969A8, &qword_1C12C2040);
    sub_1C11C594C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96AB8);
  }

  return result;
}

unint64_t sub_1C11C594C()
{
  result = qword_1EBE96AC0;
  if (!qword_1EBE96AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE969A0, &qword_1C12C2038);
    sub_1C0FDB6D4(&qword_1EBE96AC8, &qword_1EBE96AD0, &qword_1C12C2150, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96AC0);
  }

  return result;
}

void PhotosNotchToolbar.init(content:leadingContent:trailingContent:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, uint64_t a8@<X6>, uint64_t a9@<X7>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v26[0] = a8;
  v26[1] = a9;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v19 = type metadata accessor for PhotosNotchToolbar(0, v26);
  v20 = v19[17];
  *(a7 + v20) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v21 = (a7 + v19[18]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a7 + v19[19]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a7 + v19[20]);
  *v23 = a5;
  v23[1] = a6;
}

uint64_t sub_1C11C5B38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C0FDB800(v2, &v13 - v9, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FDB71C(v10, a1, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v12 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C11C5D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FDB800(v2 + *(a1 + 68), &v14 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FDB71C(v11, a2, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

double sub_1C11C5EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_1C11C5B38(&v9 - v6);
  sub_1C11C5D18(a1, v4);
  return sub_1C11C5FBC(v7, v4);
}

double sub_1C11C5FBC(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v66[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v66[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v81 = &v66[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v66[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v83 = &v66[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v68 = &v66[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v74 = &v66[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66[-v28];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66[-v31];
  v76 = MGGetProductType();
  v33 = v4;
  v34 = *(v4 + 104);
  v79 = *MEMORY[0x1E697FF40];
  v80 = v4 + 104;
  v84 = v34;
  v34(v32);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v3);
  v85 = v6;
  v35 = *(v6 + 48);
  v78 = a1;
  sub_1C0FDB800(a1, v14, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v32, &v14[v35], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C0F9E27C(v32, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v3) != 1)
    {
      v36 = v33;
      v37 = v81;
      v38 = v77;
      v39 = v83;
LABEL_15:
      sub_1C0F9E27C(v14, &qword_1EBE902E8);
      goto LABEL_16;
    }

    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    v36 = v33;
    v37 = v81;
    v38 = v77;
    v39 = v83;
  }

  else
  {
    sub_1C0FDB800(v14, v29, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v14[v35], 1, v3) == 1)
    {
      v36 = v33;
      v37 = v81;
      v38 = v77;
      v39 = v83;
LABEL_13:
      sub_1C0F9E27C(v32, &qword_1EBE902F0);
      (*(v36 + 8))(v29, v3);
      goto LABEL_15;
    }

    v40 = v75;
    (*(v33 + 32))(v75, &v14[v35], v3);
    sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
    v67 = sub_1C1265DE0();
    v41 = *(v33 + 8);
    v41(v40, v3);
    sub_1C0F9E27C(v32, &qword_1EBE902F0);
    v41(v29, v3);
    v36 = v33;
    sub_1C0F9E27C(v14, &qword_1EBE902F0);
    v37 = v81;
    v38 = v77;
    v39 = v83;
    if ((v67 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v70 = v36;
  v42 = v74;
  v84(v74, *MEMORY[0x1E697FF38], v3);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v3);
  v43 = *(v85 + 48);
  v14 = v72;
  sub_1C0FDB800(v82, v72, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v42, &v14[v43], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
  {
    sub_1C0F9E27C(v42, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v14[v43], 1, v3) == 1)
    {
      sub_1C0F9E27C(v14, &qword_1EBE902F0);
LABEL_63:
      sub_1C0F9E27C(v82, &qword_1EBE902F0);
      sub_1C0F9E27C(v78, &qword_1EBE902F0);
      return 0.0;
    }

    v36 = v70;
    goto LABEL_15;
  }

  v44 = v68;
  sub_1C0FDB800(v14, v68, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(&v14[v43], 1, v3) == 1)
  {
    v32 = v74;
    v29 = v44;
    v36 = v70;
    goto LABEL_13;
  }

  v60 = v70;
  v61 = v75;
  (*(v70 + 32))(v75, &v14[v43], v3);
  sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  LODWORD(v77) = sub_1C1265DE0();
  v62 = *(v60 + 8);
  v62(v61, v3);
  sub_1C0F9E27C(v74, &qword_1EBE902F0);
  v62(v44, v3);
  v36 = v60;
  v39 = v83;
  v37 = v81;
  sub_1C0F9E27C(v14, &qword_1EBE902F0);
  if (v77)
  {
    goto LABEL_63;
  }

LABEL_16:
  v84(v39, v79, v3);
  __swift_storeEnumTagSinglePayload(v39, 0, 1, v3);
  v45 = *(v85 + 48);
  v46 = v78;
  sub_1C0FDB800(v78, v38, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v39, v38 + v45, &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v3) != 1)
  {
    v47 = v73;
    sub_1C0FDB800(v38, v73, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(v38 + v45, 1, v3) != 1)
    {
      v50 = v75;
      (*(v36 + 32))(v75, v38 + v45, v3);
      sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v51 = sub_1C1265DE0();
      v70 = v36;
      v52 = *(v36 + 8);
      v52(v50, v3);
      sub_1C0F9E27C(v83, &qword_1EBE902F0);
      v52(v47, v3);
      v37 = v81;
      sub_1C0F9E27C(v38, &qword_1EBE902F0);
      if (v51)
      {
        goto LABEL_24;
      }

LABEL_22:
      sub_1C0F9E27C(v82, &qword_1EBE902F0);
      v48 = v46;
      v49 = &qword_1EBE902F0;
      goto LABEL_30;
    }

    sub_1C0F9E27C(v83, &qword_1EBE902F0);
    (*(v36 + 8))(v47, v3);
LABEL_21:
    sub_1C0F9E27C(v38, &qword_1EBE902E8);
    goto LABEL_22;
  }

  sub_1C0F9E27C(v39, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v38 + v45, 1, v3) != 1)
  {
    goto LABEL_21;
  }

  v70 = v36;
  sub_1C0F9E27C(v38, &qword_1EBE902F0);
LABEL_24:
  v84(v37, v79, v3);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v3);
  v53 = *(v85 + 48);
  v54 = v82;
  v55 = v71;
  sub_1C0FDB800(v82, v71, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v37, &v55[v53], &qword_1EBE902F0, &qword_1C12B38C0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v3) == 1)
  {
    sub_1C0F9E27C(v54, &qword_1EBE902F0);
    sub_1C0F9E27C(v46, &qword_1EBE902F0);
    sub_1C0F9E27C(v37, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v55[v53], 1, v3) == 1)
    {
      sub_1C0F9E27C(v55, &qword_1EBE902F0);
      return 16.0;
    }
  }

  else
  {
    v56 = v69;
    sub_1C0FDB800(v55, v69, &qword_1EBE902F0, &qword_1C12B38C0);
    if (__swift_getEnumTagSinglePayload(&v55[v53], 1, v3) != 1)
    {
      v63 = v70;
      v64 = v75;
      (*(v70 + 32))(v75, &v55[v53], v3);
      sub_1C11CB3B0(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      LODWORD(v85) = sub_1C1265DE0();
      sub_1C0F9E27C(v54, &qword_1EBE902F0);
      sub_1C0F9E27C(v46, &qword_1EBE902F0);
      v65 = *(v63 + 8);
      v65(v64, v3);
      sub_1C0F9E27C(v37, &qword_1EBE902F0);
      v65(v69, v3);
      sub_1C0F9E27C(v55, &qword_1EBE902F0);
      if (v85)
      {
        return 16.0;
      }

      goto LABEL_31;
    }

    sub_1C0F9E27C(v54, &qword_1EBE902F0);
    sub_1C0F9E27C(v46, &qword_1EBE902F0);
    sub_1C0F9E27C(v37, &qword_1EBE902F0);
    (*(v70 + 8))(v56, v3);
  }

  v49 = &qword_1EBE902E8;
  v48 = v55;
LABEL_30:
  sub_1C0F9E27C(v48, v49);
LABEL_31:
  switch(v76)
  {
    case 133314240:
      return 37.0;
    case 330877086:
    case 574536383:
      return 50.0;
    case 689804742:
      return 30.0;
    case 851437781:
      return 37.0;
    case 1060988941:
      return 25.0;
    case 1169082144:
      return 20.0;
    case 1371389549:
      return 16.0;
    case 1434404433:
      return 30.0;
    case 2021146989:
      return 20.0;
    case 2078329141:
      return 10.0;
    case 2080700391:
      return 28.0;
    case 2159747553:
      return 10.0;
    case 2309863438:
      return 42.0;
    case 2688879999:
      return 50.0;
    case 4201643249:
      return 30.0;
    case 2793418701:
    case 2795618603:
    case 2940697645:
      return 37.0;
    case 2941181571:
      return 50.0;
    case 3001488778:
      return 20.0;
    case 3585085679:
      return 30.0;
    case 3825599860:
      return 50.0;
  }

  if (v76 != 3885279870)
  {
    if (v76 == 2722529672)
    {
      return 28.0;
    }

    return 30.0;
  }

  return 14.0;
}

uint64_t PhotosNotchToolbar.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96AF8, &qword_1C12C21D8);
  v4 = a1[6];
  v43 = a1[3];
  v44 = v4;
  sub_1C12654C0();
  v5 = a1[2];
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00, &qword_1C12C21E0);
  v7 = a1[5];
  OUTLINED_FUNCTION_4_6();
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v57 = sub_1C10239B0(v8, &qword_1EBE96B00, &qword_1C12C21E0, v9);
  OUTLINED_FUNCTION_2_54();
  swift_getOpaqueTypeMetadata2();
  v10 = sub_1C1263190();
  v11 = OUTLINED_FUNCTION_2_29(v10, MEMORY[0x1E6981840], v10);
  OUTLINED_FUNCTION_43_4(v11);
  v42 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12654C0();
  v12 = a1[4];
  v38 = a1[7];
  sub_1C12654C0();
  OUTLINED_FUNCTION_9_32();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v40 = OUTLINED_FUNCTION_43_4(TupleTypeMetadata3);
  OUTLINED_FUNCTION_6_1();
  sub_1C10239B0(v14, &qword_1EBE96AF8, &qword_1C12C21D8, v15);
  v16 = sub_1C1262E70();
  v41 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v38 - v20;
  v21 = sub_1C11C5EFC(a1);
  v22 = v5;
  v23 = v5;
  v25 = v43;
  v24 = v44;
  v26 = v38;
  v28 = sub_1C11C71E8(v23, v43, v12, v7, v44, v38, v21, v27);
  *&v29 = v22;
  *(&v29 + 1) = v25;
  *&v30 = v12;
  *(&v30 + 1) = v7;
  v47 = v29;
  v48 = v30;
  v49 = v24;
  v50 = v26;
  v51 = v2;
  (v28)(sub_1C11C7ADC, v46);

  OUTLINED_FUNCTION_5_0();
  v33 = sub_1C10239B0(v31, &qword_1EBE96AF8, &qword_1C12C21D8, v32);
  WitnessTable = swift_getWitnessTable();
  v52 = v33;
  v53 = WitnessTable;
  OUTLINED_FUNCTION_12_0();
  swift_getWitnessTable();
  v35 = v39;
  OUTLINED_FUNCTION_40_0();
  sub_1C0FDBA4C();
  v36 = *(v41 + 8);
  v36(v18, v16);
  OUTLINED_FUNCTION_40_0();
  sub_1C0FDBA4C();
  return (v36)(v35, v16);
}

uint64_t (*sub_1C11C71E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a6;
  *(v16 + 64) = a7;
  *(v16 + 72) = a8;
  return sub_1C11CB348;
}

uint64_t sub_1C11C7278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00, &qword_1C12C21E0);
  sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C12654C0();
  swift_getTupleTypeMetadata3();
  v11 = sub_1C1265B00();
  v12 = sub_1C11CB35C();
  WitnessTable = swift_getWitnessTable();
  return sub_1C121710C(a1, a2, &type metadata for PhotosNotchToolbarLayout, v11, v12, WitnessTable, x8_0);
}

uint64_t sub_1C11C7454@<X0>(void (*a1)(void, void)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a7;
  v72 = a1;
  v67 = a8;
  v13 = sub_1C12654C0();
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00, &qword_1C12C21E0);
  v19 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
  v103 = a2;
  v104 = v18;
  v20 = a2;
  v56 = a2;
  v105 = a5;
  v106 = v19;
  v21 = a5;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  v59 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v71 = sub_1C12654C0();
  v75 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v77 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v54 - v24;
  v25 = sub_1C12654C0();
  v26 = *(v25 - 8);
  v69 = v25;
  v70 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v73 = &v54 - v30;
  v92 = v20;
  v93 = a3;
  v94 = a4;
  v95 = a5;
  v31 = v63;
  v96 = a6;
  v97 = v63;
  v32 = v72;
  v98 = v72;
  sub_1C1012734(a3);
  v68 = v28;
  v55 = a3;
  sub_1C12654B0();
  v54 = MEMORY[0x1E69817F8];
  v33 = v69;
  v60 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v61 = *(v70 + 8);
  v62 = v70 + 8;
  v61(v28, v33);
  v34 = v56;
  v85 = v56;
  v86 = a3;
  v87 = a4;
  v88 = v21;
  v89 = a6;
  v90 = v31;
  v91 = v32;
  sub_1C1012734(v59);
  v35 = v77;
  sub_1C12654B0();
  v36 = v71;
  v57 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v37 = *(v75 + 8);
  WitnessTable = v75 + 8;
  v59 = v37;
  v37(v35, v36);
  v78 = v34;
  v79 = v55;
  v80 = a4;
  v81 = v21;
  v82 = a6;
  v83 = v31;
  v84 = v72;
  sub_1C1012734(a4);
  v38 = v76;
  sub_1C12654B0();
  v39 = v65;
  v63 = swift_getWitnessTable();
  v40 = v64;
  v41 = v38;
  v42 = v39;
  sub_1C0FDBA4C();
  v43 = v66;
  v72 = *(v66 + 8);
  v72(v41, v39);
  v44 = v69;
  v45 = v68;
  (*(v70 + 16))(v68, v73, v69);
  v103 = v45;
  v46 = v74;
  v47 = v77;
  v48 = v71;
  (*(v75 + 16))(v77, v74, v71);
  v104 = v47;
  (*(v43 + 16))(v41, v40, v42);
  v105 = v41;
  v102[0] = v44;
  v102[1] = v48;
  v49 = v48;
  v102[2] = v42;
  v99 = v60;
  v100 = v57;
  v101 = v63;
  sub_1C119EE80(&v103, 3, v102);
  v50 = v72;
  v72(v40, v42);
  v51 = v59;
  v59(v46, v49);
  v52 = v61;
  v61(v73, v44);
  v50(v76, v42);
  v51(v77, v49);
  return v52(v68, v44);
}

uint64_t sub_1C11C7AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = v16;
  v17 = type metadata accessor for PhotosNotchToolbar(0, v20);
  (*(a1 + *(v17 + 76)))();
  sub_1C0FDBA4C();
  v18 = *(v5 + 8);
  v18(v7, a3);
  sub_1C0FDBA4C();
  return (v18)(v10, a3);
}

uint64_t sub_1C11C7C50@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v84 = a6;
  v85 = a7;
  v83 = a4;
  v86 = a1;
  v80 = a8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v66 - v13;
  v14 = sub_1C1263130();
  v82 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v66 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v66 - v20;
  v70 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
  v97 = a2;
  v98 = v19;
  v73 = v19;
  v99 = a5;
  v100 = v24;
  v68 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v67 = &v66 - v26;
  v75 = v27;
  v28 = sub_1C1263190();
  v78 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v79 = &v66 - v32;
  v71 = a2;
  v97 = a2;
  v98 = a3;
  v99 = v83;
  v100 = a5;
  v83 = a5;
  v101 = v84;
  v102 = v85;
  v33 = type metadata accessor for PhotosNotchToolbar(0, &v97);
  v34 = *&v86[*(v33 + 72)];
  v86 = v23;
  v34();
  v35 = v82;
  v36 = *(v82 + 13);
  (v36)(v18, *MEMORY[0x1E697E6F0], v14);
  v37 = v81;
  (v36)(v81, *MEMORY[0x1E697E6E8], v14);
  sub_1C11CB3B0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v38 = v18;
  v39 = v37;
  v40 = v14;
  if ((sub_1C1265DA0() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v84 = v30;
  v85 = v28;
  v41 = v35;
  v42 = *(v35 + 4);
  v43 = v72;
  v44 = v14;
  v42(v72, v38, v14);
  v45 = v77;
  v42((v43 + *(v77 + 48)), v39, v40);
  v46 = v76;
  sub_1C0FDB800(v43, v76, &qword_1EBE96B88, &unk_1C12C4E60);
  v47 = *(v45 + 48);
  v48 = v69;
  v42(v69, v46, v40);
  v49 = *(v41 + 1);
  v50 = v46 + v47;
  v39 = v71;
  v49(v50, v44);
  sub_1C0FDB71C(v43, v46, &qword_1EBE96B88, &unk_1C12C4E60);
  v51 = *(v45 + 48);
  v14 = v73;
  v42((v48 + *(v73 + 36)), (v46 + v51), v44);
  v49(v46, v44);
  v18 = v83;
  v35 = v67;
  v36 = v68;
  v52 = v86;
  sub_1C1264BC0();
  sub_1C0F9E27C(v48, &qword_1EBE96B00);
  (*(v70 + 8))(v52, v39);
  if (qword_1EDE7B3A8 != -1)
  {
LABEL_5:
    swift_once();
  }

  v97 = v39;
  v98 = v14;
  v99 = v18;
  v100 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v75;
  sub_1C10A0734(v75, OpaqueTypeConformance2, v54, v55, v56, v57);
  v58 = v84;
  sub_1C1264EA0();
  (*(v74 + 8))(v35, v65);
  v95 = OpaqueTypeConformance2;
  v96 = MEMORY[0x1E697EBF8];
  v59 = v85;
  WitnessTable = swift_getWitnessTable();
  v61 = v79;
  sub_1C0FDBA4C();
  v62 = v78;
  v63 = *(v78 + 8);
  v63(v58, v59);
  v93 = 0;
  v94 = 1;
  v97 = &v93;
  (*(v62 + 16))(v58, v61, v59);
  v91 = 0;
  v92 = 1;
  v98 = v58;
  v99 = &v91;
  v90[0] = MEMORY[0x1E6981840];
  v90[1] = v59;
  v90[2] = MEMORY[0x1E6981840];
  v87 = MEMORY[0x1E6981838];
  v88 = WitnessTable;
  v89 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v97, 3, v90);
  v63(v61, v59);
  return (v63)(v58, v59);
}

uint64_t sub_1C11C84E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v21[0] = v12;
  v21[1] = v13;
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v17;
  v18 = type metadata accessor for PhotosNotchToolbar(0, v21);
  (*(a1 + *(v18 + 80)))();
  sub_1C0FDBA4C();
  v19 = *(v6 + 8);
  v19(v8, a4);
  sub_1C0FDBA4C();
  return (v19)(v11, a4);
}

void PhotosNotchToolbar<>.init(trailingContent:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *&v5 = a4;
  *(&v5 + 1) = MEMORY[0x1E6981E60];
  PhotosNotchToolbar.init(content:leadingContent:trailingContent:)(nullsub_1, 0, nullsub_1, 0, a1, a2, a3, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], v5, MEMORY[0x1E6981E60], a5);
}

void PhotosNotchToolbar<>.init(leadingContent:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *&v5 = MEMORY[0x1E6981E70];
  *(&v5 + 1) = MEMORY[0x1E6981E60];
  PhotosNotchToolbar.init(content:leadingContent:trailingContent:)(nullsub_1, 0, a1, a2, nullsub_1, 0, a3, MEMORY[0x1E6981E70], a4, v5, a5, MEMORY[0x1E6981E60]);
}

double sub_1C11C8750(__n128 a1)
{
  v1 = MGGetProductType();
  if (v1 == 133314240)
  {
    return 66.0;
  }

  if (v1 == 330877086 || v1 == 574536383)
  {
    return 68.0;
  }

  result = 60.0;
  switch(v1)
  {
    case 689804742:
      return result;
    case 851437781:
      return 66.0;
    case 1060988941:
      return 64.0;
    case 1169082144:
    case 1371389549:
    case 1434404433:
    case 2021146989:
    case 2078329141:
    case 2080700391:
    case 2159747553:
      return result;
    case 2309863438:
    case 2688879999:
      return 68.0;
    case 2722529672:
      return result;
    case 2793418701:
    case 2795618603:
    case 2940697645:
      return 66.0;
    case 2941181571:
      return 68.0;
  }

  if (v1 != 3001488778 && v1 != 3585085679)
  {
    if (v1 != 3825599860)
    {
      if (v1 == 3885279870)
      {
        return 58.0;
      }

      if (v1 == 4201643249)
      {
        return 66.0;
      }

      return 60.0;
    }

    return 68.0;
  }

  return result;
}

uint64_t sub_1C11C891C(__n128 a1)
{
  result = sub_1C11C8948(a1);
  qword_1EBE96AD8 = result;
  byte_1EBE96AE0 = v2 & 1;
  return result;
}

uint64_t sub_1C11C8948(__n128 a1)
{
  v1 = MGGetProductType();
  if (v1 == 133314240)
  {
    return 0x4078600000000000;
  }

  v2 = v1;
  if (v1 == 330877086 || v1 == 574536383)
  {
    return 0x407AC00000000000;
  }

  if (v1 == 689804742 || v1 == 851437781)
  {
    return 0x4078600000000000;
  }

  result = 0x4077700000000000;
  switch(v2)
  {
    case 1060988941:
      return result;
    case 1169082144:
      return 0x4078600000000000;
    case 1371389549:
      return result;
    case 1434404433:
    case 2021146989:
      return 0x4078600000000000;
  }

  if (v2 != 2078329141)
  {
    if (v2 == 2080700391)
    {
      return 0x4079E00000000000;
    }

    if (v2 != 2159747553)
    {
      if (v2 == 2309863438 || v2 == 2688879999 || v2 == 4201643249)
      {
        return 0x407AC00000000000;
      }

      if (v2 != 2793418701 && v2 != 2795618603 && v2 != 2940697645)
      {
        if (v2 == 2941181571)
        {
          return 0x407AC00000000000;
        }

        if (v2 != 3001488778 && v2 != 3585085679)
        {
          if (v2 != 3825599860)
          {
            if (v2 != 3885279870)
            {
              if (v2 == 2722529672)
              {
                return 0x4079E00000000000;
              }

              return 0;
            }

            return result;
          }

          return 0x407AC00000000000;
        }
      }

      return 0x4078600000000000;
    }
  }

  return result;
}

uint64_t PhotosMaterialToolbarTextButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B08, &qword_1C12C21E8);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  v7 = *v1;
  sub_1C1264070();
  v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B10, &qword_1C12C21F0) + 36)] = v7;
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B18, &qword_1C12C2228) + 36)];
  *v9 = KeyPath;
  v9[1] = 0x3FE999999999999ALL;
  LOBYTE(KeyPath) = sub_1C1264460();
  sub_1C12628A0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B20, &qword_1C12C2230) + 36)];
  *v18 = KeyPath;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = sub_1C1265190();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B28, &qword_1C12C2238) + 36)] = v19;
  v20 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B30, &unk_1C12C2240) + 36)];
  sub_1C1263060();
  v21 = sub_1C1264470();
  v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B38, &qword_1C12C4E50) + 36)] = v21;
  v22 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B40, &unk_1C12C2250) + 36)];
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v26 = *(v25 + 104);
  v26(v22, v23, v24);
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40) + 36)] = 256;
  v27 = &v6[*(v4 + 44)];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80, &qword_1C12C2260);
  sub_1C1263410();
  v26(v27, v23, v24);
  v27[*(v28 + 36)] = 0;
  if (sub_1C1264080())
  {
    v29 = 0.8;
  }

  else
  {
    v29 = 1.0;
  }

  sub_1C0FDB71C(v6, a1, &qword_1EBE96B08, &qword_1C12C21E8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B48, &qword_1C12C2268);
  *(a1 + *(result + 36)) = v29;
  return result;
}

uint64_t sub_1C11C8E18@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v70) = a2;
  v76 = a3;
  v77 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65 - v5;
  v7 = sub_1C1263130();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v65 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B90, &qword_1C12C24E8);
  MEMORY[0x1EEE9AC00](v71);
  v19 = &v65 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B98, &qword_1C12C24F0);
  MEMORY[0x1EEE9AC00](v75);
  v68 = &v65 - v20;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BA0, &qword_1C12C24F8);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v65 - v21;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BA8, &qword_1C12C2500);
  MEMORY[0x1EEE9AC00](v73);
  v23 = (&v65 - v22);
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 != 1 || (v70 & 1) == 0)
  {
    sub_1C12645B0();
    v46 = sub_1C1264590();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v46);
    v47 = sub_1C1264630();
    sub_1C0F9E27C(v17, &qword_1EBE96550);
    KeyPath = swift_getKeyPath();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BB0, &unk_1C12C2538);
    v23 = v19;
    (*(*(v49 - 8) + 16))(v19, v77, v49);
    v50 = &v19[*(v71 + 36)];
    *v50 = KeyPath;
    v50[1] = v47;
    v51 = *(v8 + 104);
    v51(v12, *MEMORY[0x1E697E718], v7);
    v52 = v69;
    v51(v69, *MEMORY[0x1E697E728], v7);
    sub_1C11CB3B0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
    if (sub_1C1265DA0())
    {
      v77 = v19;
      v53 = *(v8 + 32);
      v53(v6, v12, v7);
      v54 = v8;
      v55 = v65;
      v70 = v13;
      v56 = v67;
      v53(&v6[*(v67 + 48)], v52, v7);
      sub_1C0FDB800(v6, v55, &qword_1EBE96B88, &unk_1C12C4E60);
      v57 = *(v56 + 48);
      v58 = v66;
      v53(v66, v55, v7);
      v59 = *(v54 + 8);
      v59(v55 + v57, v7);
      sub_1C0FDB71C(v6, v55, &qword_1EBE96B88, &unk_1C12C4E60);
      v53((v58 + *(v70 + 36)), (v55 + *(v56 + 48)), v7);
      v59(v55, v7);
      sub_1C11CAEB8();
      sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
      v23 = v68;
      v60 = v77;
      sub_1C1264BC0();
      sub_1C0F9E27C(v58, &qword_1EBE96B00);
      sub_1C0F9E27C(v60, &qword_1EBE96B90);
      if (qword_1EDE7B3A8 == -1)
      {
LABEL_6:
        sub_1C12659A0();
        sub_1C1262C80();
        v61 = v74;
        v62 = (v23 + *(v75 + 36));
        v63 = v79;
        *v62 = v78;
        v62[1] = v63;
        v62[2] = v80;
        v45 = &qword_1EBE96B98;
        sub_1C0FDB800(v23, v61, &qword_1EBE96B98, &qword_1C12C24F0);
        swift_storeEnumTagMultiPayload();
        sub_1C11CAF9C(&qword_1EDE77178, &qword_1EBE96BA8, &qword_1C12C2500, sub_1C11CB01C);
        sub_1C11CB0D4();
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }

  *v23 = sub_1C12659A0();
  v23[1] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BC8, &qword_1C12C2558);
  sub_1C11C96F8(v77, v23 + *(v27 + 44));
  v28 = sub_1C1264460();
  sub_1C12628A0();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BB8, &qword_1C12C2548) + 36);
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_1C12644D0();
  sub_1C12628A0();
  v39 = v74;
  v40 = v23 + *(v73 + 36);
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v45 = &qword_1EBE96BA8;
  sub_1C0FDB800(v23, v39, &qword_1EBE96BA8, &qword_1C12C2500);
  swift_storeEnumTagMultiPayload();
  sub_1C11CAF9C(&qword_1EDE77178, &qword_1EBE96BA8, &qword_1C12C2500, sub_1C11CB01C);
  sub_1C11CB0D4();
LABEL_7:
  sub_1C1263C20();
  return sub_1C0F9E27C(v23, v45);
}

uint64_t sub_1C11C96F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v84 = a2;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B90, &qword_1C12C24E8);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v73 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BD0, &qword_1C12C2560);
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v73 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B88, &unk_1C12C4E60);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v73 - v9;
  v10 = sub_1C1263130();
  v97 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96B00, &qword_1C12C21E0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v73 - v15;
  v16 = sub_1C1263050();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BD8, &qword_1C12C2568);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BE0, &qword_1C12C2570);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v79 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v88 = &v73 - v29;
  v99 = sub_1C12652F0();
  sub_1C1263020();
  sub_1C1262FE0();
  v30 = *(v17 + 8);
  v30(v22, v16);
  sub_1C1264B20();
  v30(v19, v16);

  v31 = sub_1C1264570();
  KeyPath = swift_getKeyPath();
  v85 = v23;
  v86 = v25;
  v33 = &v25[*(v23 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *MEMORY[0x1E697E6E8];
  v35 = v97;
  v36 = v97 + 104;
  v37 = *(v97 + 104);
  v37(v14, *MEMORY[0x1E697E6E8], v10);
  v38 = *MEMORY[0x1E697E720];
  v37(v98, *MEMORY[0x1E697E720], v10);
  v39 = sub_1C11CB3B0(&qword_1EDE7BF98, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  v96 = v14;
  result = sub_1C1265DA0();
  if (result)
  {
    v78 = v38;
    v77 = v37;
    v41 = *(v35 + 32);
    v42 = v92;
    v41(v92, v96, v10);
    v43 = v93;
    v41((v42 + *(v93 + 48)), v98, v10);
    v75 = v36;
    v44 = v91;
    sub_1C0FDB800(v42, v91, &qword_1EBE96B88, &unk_1C12C4E60);
    v76 = v39;
    v45 = *(v43 + 48);
    v74 = v34;
    v46 = v89;
    v41(v89, v44, v10);
    v47 = *(v35 + 8);
    v47(v44 + v45, v10);
    sub_1C0FDB71C(v42, v44, &qword_1EBE96B88, &unk_1C12C4E60);
    v41((v46 + *(v90 + 36)), (v44 + *(v43 + 48)), v10);
    v97 = v35 + 8;
    v73 = v47;
    v47(v44, v10);
    sub_1C11CB1FC();
    v48 = sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    v49 = v86;
    sub_1C1264BC0();
    sub_1C0F9E27C(v46, &qword_1EBE96B00);
    sub_1C0F9E27C(v49, &qword_1EBE96BD8);
    sub_1C12646E0();
    v50 = sub_1C1264540();

    v51 = swift_getKeyPath();
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BB0, &unk_1C12C2538);
    v53 = v95;
    (*(*(v52 - 8) + 16))(v95, v87, v52);
    v54 = &v53[*(v94 + 36)];
    *v54 = v51;
    v54[1] = v50;
    v55 = v77;
    v77(v96, v74, v10);
    v55(v98, v78, v10);
    result = sub_1C1265DA0();
    if (result)
    {
      v56 = v92;
      v41(v92, v96, v10);
      v96 = v48;
      v57 = v93;
      v41((v56 + *(v93 + 48)), v98, v10);
      v58 = v91;
      sub_1C0FDB800(v56, v91, &qword_1EBE96B88, &unk_1C12C4E60);
      v59 = *(v57 + 48);
      v60 = v89;
      v41(v89, v58, v10);
      v61 = v73;
      v73(v58 + v59, v10);
      sub_1C0FDB71C(v56, v58, &qword_1EBE96B88, &unk_1C12C4E60);
      v41((v60 + *(v90 + 36)), (v58 + *(v57 + 48)), v10);
      v61(v58, v10);
      sub_1C11CAEB8();
      v62 = v80;
      v63 = v95;
      sub_1C1264BC0();
      sub_1C0F9E27C(v60, &qword_1EBE96B00);
      sub_1C0F9E27C(v63, &qword_1EBE96B90);
      v64 = v88;
      v65 = v79;
      sub_1C0FDB800(v88, v79, &qword_1EBE96BE0, &qword_1C12C2570);
      v67 = v81;
      v66 = v82;
      v68 = *(v82 + 16);
      v69 = v83;
      v68(v81, v62, v83);
      v70 = v84;
      sub_1C0FDB800(v65, v84, &qword_1EBE96BE0, &qword_1C12C2570);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96BE8, &unk_1C12C2578);
      v68((v70 + *(v71 + 48)), v67, v69);
      v72 = *(v66 + 8);
      v72(v62, v69);
      sub_1C0F9E27C(v64, &qword_1EBE96BE0);
      v72(v67, v69);
      return sub_1C0F9E27C(v65, &qword_1EBE96BE0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C11CA170()
{
  if (qword_1EDE7B3A8 != -1)
  {
    swift_once();
  }

  result = *&xmmword_1EDE7B3B0;
  xmmword_1EDE7A460 = xmmword_1EDE7B3B0;
  return result;
}

uint64_t sub_1C11CA1D0()
{
  if (qword_1EBE8FD30 != -1)
  {
    result = swift_once();
  }

  qword_1EBE96AE8 = qword_1EBE96AD8;
  byte_1EBE96AF0 = byte_1EBE96AE0;
  return result;
}

double sub_1C11CA238(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1EBE8FD40 != -1)
    {
      swift_once();
    }

    if (byte_1EBE96AF0)
    {
      v2 = INFINITY;
    }

    else
    {
      v2 = *&qword_1EBE96AE8;
    }
  }

  else
  {
    v2 = *&a1;
  }

  if (qword_1EDE7A458 != -1)
  {
    swift_once();
  }

  return v2;
}

uint64_t sub_1C11CA2F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  v12 = sub_1C1262E10();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1262F50();
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMinY(v26);
  if (qword_1EDE7A458 != -1)
  {
    swift_once();
  }

  *&v18[1] = a6;
  sub_1C1265B40();
  v24 = 0;
  v23 = 0;
  sub_1C1262E00();
  v16 = *(v13 + 8);
  v16(v15, v12);
  sub_1C1262F50();
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMinX(v27);
  *v18 = a5;
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMinY(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetWidth(v29);
  sub_1C1265B40();
  v22 = 0;
  v21 = 0;
  sub_1C1262E00();
  v16(v15, v12);
  sub_1C1262F50();
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMaxX(v30);
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  CGRectGetMinY(v31);
  sub_1C1265B40();
  v20 = 0;
  v19 = 0;
  sub_1C1262E00();
  return (v16)(v15, v12);
}

void (*sub_1C11CA658(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C12627D0();
  return sub_1C10115B8;
}

void sub_1C11CA734(uint64_t a1)
{
  sub_1C0FDAAD8(319);
  if (v1 <= 0x3F)
  {
    sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C11CA7F8()
{
  result = qword_1EBE96B50;
  if (!qword_1EBE96B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B48, &qword_1C12C2268);
    sub_1C11CA884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B50);
  }

  return result;
}

unint64_t sub_1C11CA884()
{
  result = qword_1EBE96B58;
  if (!qword_1EBE96B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B08, &qword_1C12C21E8);
    sub_1C11CA93C();
    sub_1C10239B0(&qword_1EDE7BA30, &qword_1EBE91F80, &qword_1C12C2260, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B58);
  }

  return result;
}

unint64_t sub_1C11CA93C()
{
  result = qword_1EBE96B60;
  if (!qword_1EBE96B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B40, &unk_1C12C2250);
    sub_1C11CA9F4();
    sub_1C10239B0(&qword_1EDE7C028, &qword_1EBE91F88, &unk_1C12ACC40, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B60);
  }

  return result;
}

unint64_t sub_1C11CA9F4()
{
  result = qword_1EBE96B68;
  if (!qword_1EBE96B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B30, &unk_1C12C2240);
    sub_1C11CAAAC();
    sub_1C10239B0(&qword_1EDE76D88, &qword_1EBE96B38, &qword_1C12C4E50, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B68);
  }

  return result;
}

unint64_t sub_1C11CAAAC()
{
  result = qword_1EBE96B70;
  if (!qword_1EBE96B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B28, &qword_1C12C2238);
    sub_1C11CAF9C(&qword_1EBE96B78, &qword_1EBE96B20, &qword_1C12C2230, sub_1C11CAB90);
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B70);
  }

  return result;
}

unint64_t sub_1C11CAB90()
{
  result = qword_1EBE96B80;
  if (!qword_1EBE96B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B18, &qword_1C12C2228);
    sub_1C11CAC48();
    sub_1C10239B0(&qword_1EDE7B968, &qword_1EBE90778, &unk_1C12A44E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96B80);
  }

  return result;
}

unint64_t sub_1C11CAC48()
{
  result = qword_1EDE77400;
  if (!qword_1EDE77400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B10, &qword_1C12C21F0);
    sub_1C11CB3B0(&qword_1EDE7BA80, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1C11CAD04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77400);
  }

  return result;
}

unint64_t sub_1C11CAD04()
{
  result = qword_1EDE79238;
  if (!qword_1EDE79238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79238);
  }

  return result;
}

_BYTE *sub_1C11CAD58(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C11CAE48()
{
  result = qword_1EDE7A440;
  if (!qword_1EDE7A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A440);
  }

  return result;
}

unint64_t sub_1C11CAEB8()
{
  result = qword_1EDE77428;
  if (!qword_1EDE77428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B90, &qword_1C12C24E8);
    sub_1C10239B0(&qword_1EDE76DE8, &qword_1EBE96BB0, &unk_1C12C2538, MEMORY[0x1E697FDF8]);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77428);
  }

  return result;
}

uint64_t sub_1C11CAF9C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C11CB01C()
{
  result = qword_1EDE772D8;
  if (!qword_1EDE772D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96BB8, &qword_1C12C2548);
    sub_1C10239B0(&qword_1EDE76BA0, &unk_1EBE96BC0, &unk_1C12C2550, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772D8);
  }

  return result;
}

unint64_t sub_1C11CB0D4()
{
  result = qword_1EDE77360;
  if (!qword_1EDE77360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B98, &qword_1C12C24F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B90, &qword_1C12C24E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96B00, &qword_1C12C21E0);
    sub_1C11CAEB8();
    sub_1C10239B0(&qword_1EDE7B748, &qword_1EBE96B00, &qword_1C12C21E0, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77360);
  }

  return result;
}

unint64_t sub_1C11CB1FC()
{
  result = qword_1EDE77380;
  if (!qword_1EDE77380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96BD8, &qword_1C12C2568);
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77380);
  }

  return result;
}

unint64_t sub_1C11CB35C()
{
  result = qword_1EDE7A448;
  if (!qword_1EDE7A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A448);
  }

  return result;
}

uint64_t sub_1C11CB3B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C11CB408()
{
  result = qword_1EDE76E90;
  if (!qword_1EDE76E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96BF0, &qword_1C12C25B8);
    sub_1C11CAF9C(&qword_1EDE77178, &qword_1EBE96BA8, &qword_1C12C2500, sub_1C11CB01C);
    sub_1C11CB0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E90);
  }

  return result;
}

uint64_t View.visionHoverEffect<A>(shape:tint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v26 = a3;
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HoverEffectModifier(0, v15, v16, v15);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v25 - v22;
  (*(v11 + 16))(v14, a1, a4, v21);
  sub_1C11CB688(v14, a2, a4, a6, v23);

  MEMORY[0x1C68EE920](v23, v26, v17, v27);
  return (*(v19 + 8))(v23, v17);
}

uint64_t sub_1C11CB688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for HoverEffectModifier(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

void sub_1C11CB704(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C11CBAAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C11CB78C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
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

void sub_1C11CB8D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
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
LABEL_43:
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
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
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
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C11CBAAC()
{
  if (!qword_1EDE76CE0)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76CE0);
    }
  }
}

uint64_t sub_1C11CBB40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_70();
  swift_getWitnessTable();
  v2 = sub_1C1263DE0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  OUTLINED_FUNCTION_1_50();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1C11CBC74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_1C11CBCB4(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C11CBD40@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v2 = sub_1C1265650();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_8();
  v130 = v3;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C20, &qword_1C12C2848);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v123 = v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C28, &qword_1C12C2850);
  OUTLINED_FUNCTION_0();
  v108 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v107 = v8;
  sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v128 = v10;
  v129 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v127 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C30, &qword_1C12C2858);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C38, &qword_1C12C2860) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v109 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C40, &qword_1C12C2868) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v111 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C48, &qword_1C12C2870) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C50, &qword_1C12C2878) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  v110 = v27;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C58, &qword_1C12C2880);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  v113 = v29;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C60, &qword_1C12C2888);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34();
  v117 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C68, &qword_1C12C2890);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v114 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v125 = &v106 - v35;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C70, &qword_1C12C2898);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_34();
  v126 = v37;
  memcpy(v137, v1, 0x79uLL);
  *v14 = sub_1C12638E0();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C78, &qword_1C12C28A0);
  sub_1C11CC988(v137, &v14[*(v38 + 44)]);
  v39 = sub_1C1264460();
  v40 = v137[0];
  ObjectType = swift_getObjectType();
  v42 = *(*(&v40 + 1) + 56);
  v121 = ObjectType;
  v122 = v40;
  v120 = v42;
  v116 = *(&v40 + 1) + 56;
  v42(ObjectType, *(&v40 + 1));
  sub_1C12628A0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v109;
  sub_1C0FDB71C(v14, v109, &qword_1EBE96C30, &qword_1C12C2858);
  v52 = v51 + *(v15 + 44);
  *v52 = v39;
  *(v52 + 8) = v44;
  *(v52 + 16) = v46;
  *(v52 + 24) = v48;
  *(v52 + 32) = v50;
  *(v52 + 40) = 0;
  sub_1C12659A0();
  sub_1C1263390();
  v53 = v51;
  v54 = v111;
  sub_1C0FDB71C(v53, v111, &qword_1EBE96C38, &qword_1C12C2860);
  v55 = (v54 + *(v18 + 44));
  v56 = v54;
  memcpy(v55, v136, 0x70uLL);
  KeyPath = swift_getKeyPath();
  sub_1C0FDB71C(v56, v24, &qword_1EBE96C40, &qword_1C12C2868);
  v58 = *(v21 + 44);
  v59 = v110;
  v60 = &v24[v58];
  *v60 = KeyPath;
  v60[8] = 2;
  v61 = swift_getKeyPath();
  sub_1C0FDB71C(v24, v59, &qword_1EBE96C48, &qword_1C12C2870);
  v62 = v59 + *(v25 + 44);
  *v62 = v61;
  *(v62 + 8) = 1;
  v63 = swift_getKeyPath();
  v138 = *&v137[1];
  v139 = BYTE8(v137[1]);
  LOBYTE(v56) = BYTE8(v137[1]);

  if ((v56 & 1) == 0)
  {
    sub_1C1266420();
    v64 = sub_1C1264410();
    sub_1C1262620();

    v65 = v127;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v138, &qword_1EBE92928, &qword_1C12AF570);
    (*(v128 + 8))(v65, v129);
  }

  v66 = sub_1C12239D8();

  v67 = v113;
  sub_1C0FDB71C(v59, v113, &qword_1EBE96C50, &qword_1C12C2878);
  v68 = v67 + *(v112 + 36);
  *v68 = v63;
  *(v68 + 8) = v66;
  *(v68 + 16) = 0;
  v69 = swift_getKeyPath();
  v70 = [objc_opt_self() labelColor];
  v71 = v117;
  sub_1C0FDB71C(v67, v117, &qword_1EBE96C58, &qword_1C12C2880);
  v72 = (v71 + *(v115 + 36));
  *v72 = v69;
  v72[1] = v70;
  if (sub_1C1190B9C(0xD000000000000023, 0x80000001C126D560))
  {
    sub_1C0FDB800(v71, v123, &qword_1EBE96C60, &qword_1C12C2888);
    swift_storeEnumTagMultiPayload();
    sub_1C1263320();
    sub_1C11CE480();
    OUTLINED_FUNCTION_2_55();
    v75 = sub_1C11CEB00(v73, v74, MEMORY[0x1E697EAE0]);
    OUTLINED_FUNCTION_1_51(v75);
    v76 = v114;
    sub_1C1263C20();
  }

  else
  {
    v77 = v107;
    sub_1C11CD4F4(v71, v137);
    v78 = v108;
    v79 = v124;
    (*(v108 + 16))(v123, v77, v124);
    swift_storeEnumTagMultiPayload();
    sub_1C1263320();
    sub_1C11CE480();
    OUTLINED_FUNCTION_2_55();
    v82 = sub_1C11CEB00(v80, v81, MEMORY[0x1E697EAE0]);
    OUTLINED_FUNCTION_1_51(v82);
    v76 = v114;
    sub_1C1263C20();
    (*(v78 + 8))(v77, v79);
  }

  v83 = v125;
  sub_1C0FD1A5C(v71, &qword_1EBE96C60, &qword_1C12C2888);
  sub_1C0FDB71C(v76, v83, &qword_1EBE96C68, &qword_1C12C2890);
  v141 = v137[5];
  *v140 = v137[3];
  *&v140[16] = v137[4];
  v84 = *&v137[3];
  if (LOBYTE(v137[5]) == 1)
  {
    v133 = *v140;
    v134 = *&v140[8];
    v135 = *&v140[24];
    sub_1C0FDB800(v140, v132, &qword_1EBE96CC8, &qword_1C12C2970);
    if (v84)
    {
LABEL_8:
      v86 = *(&v134 + 1);
      v85 = v135;
      v87 = v134;
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C0FDB800(v140, v132, &qword_1EBE96CC8, &qword_1C12C2970);
    sub_1C1266420();
    v88 = sub_1C1264410();
    sub_1C1262620();

    v89 = v127;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v140, &qword_1EBE96CC8, &qword_1C12C2970);
    (*(v128 + 8))(v89, v129);
    v84 = v133;
    if (v133)
    {
      goto LABEL_8;
    }
  }

  if (qword_1EBE8FD50 != -1)
  {
    swift_once();
  }

  v84 = qword_1EBE96C00;
  v87 = qword_1EBE96C08;
  v86 = unk_1EBE96C10;
  v85 = qword_1EBE96C18;

LABEL_13:
  v90 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v92 = v130;
  (*(v91 + 104))(v130, v90);
  v93 = sub_1C12659A0();
  v95 = v94;
  v96 = v126;
  v97 = v126 + *(v119 + 36);
  sub_1C11CE8A4(v92, v97);
  v98 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CD0, &qword_1C12C2978) + 36));
  *v98 = v84;
  v98[1] = v87;
  v98[2] = 0;
  v98[3] = 0;
  v99 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CD8, &qword_1C12C2980) + 36));
  *v99 = v86;
  v99[1] = v85;
  v100 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CE0, &qword_1C12C2988) + 36));
  *v100 = v93;
  v100[1] = v95;
  sub_1C0FDB71C(v83, v96, &qword_1EBE96C68, &qword_1C12C2890);
  sub_1C11CE908(v92, MEMORY[0x1E6981998]);
  v101 = sub_1C1265A30();
  v102 = v120(v121, *(&v122 + 1));
  v103 = v131;
  sub_1C0FDB71C(v96, v131, &qword_1EBE96C70, &qword_1C12C2898);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CE8, &qword_1C12C2990);
  v105 = v103 + *(result + 36);
  *v105 = v101;
  *(v105 + 8) = v102 & 1;
  return result;
}

uint64_t sub_1C11CC988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CF0, &qword_1C12C2998);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 56);
  if (v11(ObjectType, v9))
  {
    v31 = 0x4028000000000000;
    v32 = 256;
  }

  else
  {
    v31 = (*(v9 + 16))(ObjectType, v9) & 1;
    v32 = 0;
  }

  sub_1C11CE960();
  sub_1C1263C20();
  v29 = v33;
  v27 = v35;
  v28 = v34;
  *v8 = sub_1C1263AA0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96CF8, &qword_1C12C29A0);
  sub_1C11CCCD8(a1, &v8[*(v12 + 44)]);
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D00, &qword_1C12C29A8) + 36)] = 256;
  v13 = sub_1C12644D0();
  v14 = &v8[*(v4 + 36)];
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v14[40] = 1;
  if (v11(ObjectType, v9))
  {
    v31 = 0x4028000000000000;
    v32 = 256;
  }

  else
  {
    (*(v9 + 40))(&v33, ObjectType, v9);
    v15 = v33;
    v16 = (*(v9 + 48))(ObjectType, v9);
    v17 = 256;
    if (v16)
    {
      v17 = 0;
    }

    v31 = v17 | v15;
    v32 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D08, &qword_1C12C29B0);
  sub_1C11CE9B4();
  sub_1C1263C20();
  v18 = v33;
  v19 = v34;
  v20 = v35;
  v21 = v30;
  sub_1C0FDB800(v8, v30, &qword_1EBE96CF0, &qword_1C12C2998);
  *a2 = v29;
  v22 = v27;
  *(a2 + 8) = v28;
  *(a2 + 9) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D10, &qword_1C12C29B8);
  sub_1C0FDB800(v21, a2 + *(v23 + 48), &qword_1EBE96CF0, &qword_1C12C2998);
  v24 = a2 + *(v23 + 64);
  *v24 = v18;
  *(v24 + 8) = v19;
  *(v24 + 9) = v20;
  sub_1C0FD1A5C(v8, &qword_1EBE96CF0, &qword_1C12C2998);
  return sub_1C0FD1A5C(v21, &qword_1EBE96CF0, &qword_1C12C2998);
}

uint64_t sub_1C11CCCD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1C12637E0();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OneUpVideoScrubber(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D18, &qword_1C12C29C0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v40 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D20, &qword_1C12C29C8);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v40 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D28, &qword_1C12C29D0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v40 - v14;
  v15 = *a1;
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 56);
  swift_unknownObjectRetain();
  if (v18(ObjectType, v16))
  {
    memcpy(v62, a1, 0x79uLL);
    sub_1C11CD358(v53);
    memcpy(v54, v53, 0xB0uLL);
    nullsub_1();
    memcpy(v62, v54, 0xB0uLL);
  }

  else
  {
    sub_1C11CEA94(v62);
  }

  v19 = *(v16 + 8);
  *v7 = v15;
  v7[1] = v19;
  v20 = v5[5];
  *(v7 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v21 = v7 + v5[6];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v7 + v5[7];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  sub_1C12659A0();
  sub_1C1263390();
  v23 = v7;
  v24 = v45;
  sub_1C11CEA9C(v23, v45);
  memcpy((v24 + *(v43 + 36)), v56, 0x70uLL);
  v25 = a1[4];
  v60 = v25;
  v61 = *(a1 + 40);
  if (v61 == 1)
  {
    v55 = v25 & 1;
  }

  else
  {

    sub_1C1266420();
    v26 = sub_1C1264410();
    sub_1C1262620();

    v27 = v40;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(&v60, &qword_1EBE96D30, &qword_1C12C30E0);
    (*(v41 + 8))(v27, v42);
    LOBYTE(v25) = v55;
  }

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v25 & 1) == 0;
  v30 = v48;
  sub_1C0FDB71C(v24, v48, &qword_1EBE96D18, &qword_1C12C29C0);
  v31 = (v30 + *(v44 + 36));
  *v31 = KeyPath;
  v31[1] = sub_1C1023064;
  v31[2] = v29;
  sub_1C12659A0();
  sub_1C1262C80();
  v32 = v46;
  sub_1C0FDB71C(v30, v46, &qword_1EBE96D20, &qword_1C12C29C8);
  v33 = (v32 + *(v47 + 36));
  v34 = v58;
  *v33 = v57;
  v33[1] = v34;
  v33[2] = v59;
  v35 = v49;
  sub_1C0FDB71C(v32, v49, &qword_1EBE96D28, &qword_1C12C29D0);
  memcpy(v52, v62, sizeof(v52));
  v36 = v50;
  sub_1C0FDB800(v35, v50, &qword_1EBE96D28, &qword_1C12C29D0);
  memcpy(v53, v52, sizeof(v53));
  v37 = v51;
  memcpy(v51, v52, 0xB0uLL);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96D38, &qword_1C12C2AA0);
  sub_1C0FDB800(v36, v37 + *(v38 + 48), &qword_1EBE96D28, &qword_1C12C29D0);
  sub_1C0FDB800(v53, v54, &qword_1EBE96D40, &qword_1C12C2AA8);
  sub_1C0FD1A5C(v35, &qword_1EBE96D28, &qword_1C12C29D0);
  sub_1C0FD1A5C(v36, &qword_1EBE96D28, &qword_1C12C29D0);
  memcpy(v54, v52, 0xB0uLL);
  return sub_1C0FD1A5C(v54, &qword_1EBE96D40, &qword_1C12C2AA8);
}

void *sub_1C11CD358@<X0>(uint64_t a1@<X8>)
{
  memcpy(__dst, v1, 0x79uLL);
  v3 = sub_1C12638E0();
  v10 = 1;
  sub_1C11CD750(__dst, __src);
  memcpy(v12, __src, 0x8BuLL);
  memcpy(v13, __src, 0x8BuLL);
  sub_1C0FDB800(v12, &v7, &qword_1EBE96D48, &qword_1C12C2AB0);
  sub_1C0FD1A5C(v13, &qword_1EBE96D48, &qword_1C12C2AB0);
  memcpy(&v9[7], v12, 0x8BuLL);
  v4 = v10;
  sub_1C1262CC0();
  sub_1C1265A60();
  sub_1C12659E0();

  sub_1C1262CD0();

  sub_1C1262CC0();
  sub_1C1265A60();
  sub_1C1262CD0();

  v5 = sub_1C1262CA0();

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  result = memcpy((a1 + 17), v9, 0x92uLL);
  *(a1 + 168) = v5;
  return result;
}

uint64_t sub_1C11CD4F4(uint64_t a1, void *a2)
{
  v3 = sub_1C1265290();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a2[1];
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 56))(ObjectType, v10);
  v13 = 23.76;
  if ((v12 & 1) == 0)
  {
    v13 = 22.0;
  }

  v14 = round(v13);
  v15 = *(v7 + 20);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1C12639D0();
  (*(*(v17 - 8) + 104))(v9 + v15, v16, v17);
  *v9 = v14;
  v9[1] = v14;
  sub_1C1265280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96C60, &qword_1C12C2888);
  sub_1C11CE480();
  sub_1C11CEB00(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1C1264A40();
  (*(v4 + 8))(v6, v3);
  return sub_1C11CE908(v9, MEMORY[0x1E697EAF0]);
}

uint64_t sub_1C11CD750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v77 = sub_1C1266D00();
  v69 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1266F40();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1266F50();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C12637E0();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 64);
  v13 = v12(ObjectType, v10);
  v14 = 0.0;
  if (v15)
  {
    v16 = 0;
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v81 = 0;
    v17 = 0.0;
    v86 = 1;
    v87 = 0;
  }

  else
  {
    v18 = sub_1C11CE01C(v13, 0, 1);
    v86 = v19;
    v87 = v18;
    if (qword_1EBE8FD48 != -1)
    {
      swift_once();
    }

    v20 = qword_1EBE96BF8;
    v21 = objc_opt_self();
    v16 = v20;
    v85 = [v21 labelColor];
    v22 = *(a1 + 16);
    v107 = v22;
    v108 = *(a1 + 24);
    if (v108 == 1)
    {
      *&v96 = v22;
    }

    else
    {

      sub_1C1266420();
      v23 = sub_1C1264410();
      v84 = a1;
      v24 = v16;
      v25 = v23;
      sub_1C1262620();

      v16 = v24;
      a1 = v84;
      v26 = v78;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v107, &qword_1EBE92928, &qword_1C12AF570);
      v79[1](v26, v80);
    }

    v17 = sub_1C12239D8();

    KeyPath = swift_getKeyPath();
    LOBYTE(v102[0]) = 0;
    v81 = 65792;
    v83 = 4;
    v84 = KeyPath;
  }

  *&v28 = COERCE_DOUBLE(v12(ObjectType, v10));
  if (v29 & 1) != 0 || (v37 = *&v28, v38 = COERCE_DOUBLE((*(v10 + 72))(ObjectType, v10)), (v39))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 1;
  }

  else
  {
    v40 = v38 - v37;
    sub_1C1266FA0();
    v41 = v69 + 104;
    v42 = v72;
    v43 = v77;
    (*(v69 + 104))(v72, *MEMORY[0x1E69E7030], v77);
    v44 = (v41 - 96);
    v45 = v70;
    if (v40 >= 3600.0)
    {
      sub_1C1266F30();
    }

    else
    {
      sub_1C1266F20();
    }

    v46 = a1;
    (*v44)(v42, v43);
    v47 = v71;
    sub_1C12618F0();
    (*(v73 + 8))(v45, v74);
    sub_1C11CEB00(&qword_1EBE96D58, MEMORY[0x1E696A188], MEMORY[0x1E696A180]);
    v48 = v76;
    sub_1C1266F60();
    (*(v75 + 8))(v47, v48);
    v36 = *(&v96 + 1);
    v30 = v96;
    if (qword_1EBE8FD48 != -1)
    {
      swift_once();
    }

    v49 = qword_1EBE96BF8;
    v50 = objc_opt_self();
    v31 = v49;
    v32 = [v50 labelColor];
    v51 = *(v46 + 16);
    v105 = v51;
    v106 = *(v46 + 24);
    if (v106 == 1)
    {
      *&v96 = v51;
    }

    else
    {

      sub_1C1266420();
      v52 = sub_1C1264410();
      sub_1C1262620();

      v53 = v32;
      v54 = v31;
      v55 = v36;
      v56 = v78;
      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v105, &qword_1EBE92928, &qword_1C12AF570);
      v57 = v56;
      v36 = v55;
      v31 = v54;
      v32 = v53;
      v79[1](v57, v80);
    }

    v14 = sub_1C12239D8();

    v34 = swift_getKeyPath();
    LOBYTE(v102[0]) = 0;
    v35 = 65792;
    v33 = 4;
  }

  *&v90 = v87;
  *(&v90 + 1) = v86;
  *&v91 = v16;
  *(&v91 + 1) = v85;
  *v92 = v17;
  *(&v92[0] + 1) = v83;
  *&v92[1] = v84;
  v79 = v16;
  v58 = v81;
  LODWORD(v80) = HIWORD(v81);
  BYTE10(v92[1]) = BYTE2(v81);
  WORD4(v92[1]) = v81;
  v96 = v90;
  v97 = v91;
  v98[0] = v92[0];
  *(v98 + 11) = *(v92 + 11);
  v89 = 1;
  *&v93 = v30;
  *(&v93 + 1) = v36;
  *&v94 = v31;
  *(&v94 + 1) = v32;
  *v95 = v14;
  *(&v95[0] + 1) = v33;
  *&v95[1] = v34;
  v59 = v32;
  v60 = v31;
  v61 = v36;
  v62 = v34;
  BYTE10(v95[1]) = BYTE2(v35);
  WORD4(v95[1]) = v35;
  *&v88[25] = *(v95 + 11);
  *(&v88[19] + 1) = v95[0];
  *(&v88[11] + 1) = v94;
  *(&v88[3] + 1) = v93;
  v63 = v90;
  v64 = v91;
  v65 = v98[1];
  v66 = v82;
  *(v82 + 32) = v98[0];
  *(v66 + 48) = v65;
  *v66 = v63;
  *(v66 + 16) = v64;
  *(v66 + 64) = 0;
  *(v66 + 72) = 1;
  memcpy((v66 + 73), v88, 0x42uLL);
  v99[0] = v30;
  v99[1] = v61;
  v99[2] = v60;
  v99[3] = v59;
  *&v99[4] = v14;
  v99[5] = v33;
  v99[6] = v62;
  v101 = BYTE2(v35);
  v100 = v35;
  sub_1C0FDB800(&v90, v102, &qword_1EBE96D50, &qword_1C12C2AB8);
  sub_1C0FDB800(&v93, v102, &qword_1EBE96D50, &qword_1C12C2AB8);
  sub_1C0FD1A5C(v99, &qword_1EBE96D50, &qword_1C12C2AB8);
  v102[0] = v87;
  v102[1] = v86;
  v102[2] = v79;
  v102[3] = v85;
  *&v102[4] = v17;
  v102[5] = v83;
  v102[6] = v84;
  v104 = v80;
  v103 = v58;
  return sub_1C0FD1A5C(v102, &qword_1EBE96D50, &qword_1C12C2AB8);
}

uint64_t sub_1C11CE01C(uint64_t a1, int a2, int a3)
{
  v23 = a3;
  LODWORD(v25) = a2;
  v22 = a1;
  v3 = sub_1C1265E50();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1266D00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C1266F40();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1266F50();
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v25)
  {
    sub_1C1265DF0();
    v18 = static String.photosSwiftUICoreLocalized(_:)(v6);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v25 = v15;
    v19 = *&v22;
    sub_1C1266FA0();
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7030], v7);
    v20 = (v8 + 8);
    if (v19 >= 3600.0)
    {
      sub_1C1266F30();
    }

    else
    {
      sub_1C1266F20();
    }

    (*v20)(v10, v7);
    sub_1C12618F0();
    (*(v11 + 8))(v13, v24);
    sub_1C11CEB00(&qword_1EBE96D58, MEMORY[0x1E696A188], MEMORY[0x1E696A180]);
    sub_1C1266F60();
    (*(v25 + 8))(v17, v14);
    return v26;
  }

  return v18;
}

id sub_1C11CE3E4()
{
  result = PXFontWithTextStyleSymbolicTraitsAndWeight();
  qword_1EBE96BF8 = result;
  return result;
}

double sub_1C11CE420(uint64_t a1)
{
  sub_1C1265160();
  v1 = sub_1C12651E0();

  qword_1EBE96C00 = v1;
  result = 12.0;
  *&qword_1EBE96C08 = xmmword_1C12C2650;
  qword_1EBE96C18 = 0x4000000000000000;
  return result;
}

unint64_t sub_1C11CE480()
{
  result = qword_1EBE96C80;
  if (!qword_1EBE96C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C60, &qword_1C12C2888);
    sub_1C11CE538();
    sub_1C0FDB6D4(&qword_1EDE76D40, &qword_1EBE96CC0, &qword_1C12C2968, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C80);
  }

  return result;
}

unint64_t sub_1C11CE538()
{
  result = qword_1EBE96C88;
  if (!qword_1EBE96C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C58, &qword_1C12C2880);
    sub_1C11CE5F0();
    sub_1C0FDB6D4(&qword_1EDE76D48, &qword_1EBE96CB8, &qword_1C12C2960, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C88);
  }

  return result;
}

unint64_t sub_1C11CE5F0()
{
  result = qword_1EBE96C90;
  if (!qword_1EBE96C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C50, &qword_1C12C2878);
    sub_1C11CE6A8();
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0, &qword_1C12A6E10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C90);
  }

  return result;
}

unint64_t sub_1C11CE6A8()
{
  result = qword_1EBE96C98;
  if (!qword_1EBE96C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C48, &qword_1C12C2870);
    sub_1C11CE760();
    sub_1C0FDB6D4(&unk_1EDE7B978, qword_1EBE96088, &unk_1C12C2950, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96C98);
  }

  return result;
}

unint64_t sub_1C11CE760()
{
  result = qword_1EBE96CA0;
  if (!qword_1EBE96CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C40, &qword_1C12C2868);
    sub_1C11CE7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96CA0);
  }

  return result;
}

unint64_t sub_1C11CE7EC()
{
  result = qword_1EBE96CA8;
  if (!qword_1EBE96CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C38, &qword_1C12C2860);
    sub_1C0FDB6D4(&qword_1EBE96CB0, &qword_1EBE96C30, &qword_1C12C2858, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96CA8);
  }

  return result;
}

uint64_t sub_1C11CE8A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265650();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11CE908(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C11CE960()
{
  result = qword_1EDE78A70;
  if (!qword_1EDE78A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A70);
  }

  return result;
}

unint64_t sub_1C11CE9B4()
{
  result = qword_1EDE77480;
  if (!qword_1EDE77480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96D08, &qword_1C12C29B0);
    sub_1C11CEA40();
    sub_1C0FF9130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77480);
  }

  return result;
}

unint64_t sub_1C11CEA40()
{
  result = qword_1EDE78A78;
  if (!qword_1EDE78A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A78);
  }

  return result;
}

uint64_t sub_1C11CEA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpVideoScrubber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11CEB00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C11CEB48()
{
  result = qword_1EBE96D60;
  if (!qword_1EBE96D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96CE8, &qword_1C12C2990);
    sub_1C11CEC00();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96D60);
  }

  return result;
}

unint64_t sub_1C11CEC00()
{
  result = qword_1EBE96D68;
  if (!qword_1EBE96D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C70, &qword_1C12C2898);
    sub_1C11CECB8();
    sub_1C0FDB6D4(&qword_1EDE76F20, &qword_1EBE96CE0, &qword_1C12C2988, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96D68);
  }

  return result;
}

unint64_t sub_1C11CECB8()
{
  result = qword_1EBE96D70;
  if (!qword_1EBE96D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C68, &qword_1C12C2890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE96C60, &qword_1C12C2888);
    sub_1C1263320();
    sub_1C11CE480();
    sub_1C11CEB00(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE96D70);
  }

  return result;
}

uint64_t PhotosMockMap.__allocating_init(identifier:title:subtitle:boundingRegion:)()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_16_24();
  v0 = swift_allocObject();
  PhotosMockMap.init(identifier:title:subtitle:boundingRegion:)();
  return v0;
}

uint64_t PhotosMockMap.init(identifier:title:subtitle:boundingRegion:)()
{
  OUTLINED_FUNCTION_16_24();
  OUTLINED_FUNCTION_39();
  v10 = v9;
  v12 = v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  sub_1C1261F60();

  *(v1 + 16) = v12;
  *(v1 + 24) = v10;
  v13 = 0x80000001C126AE30;
  v14 = 0xD000000000000013;
  if (v10)
  {
    v14 = v12;
    v13 = v10;
  }

  *(v1 + 32) = v14;
  *(v1 + 40) = v13;

  *(v1 + 48) = v4;
  *(v1 + 56) = v3;

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 80) = v8;
  *(v1 + 88) = v7;
  *(v1 + 96) = v6;
  *(v1 + 104) = v5;
  return v1;
}

double sub_1C11CEF34()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 16);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12(v8, v9, v10);
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }

  return result;
}

double sub_1C11CEFE0()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 32);
  v3 = *(v1 + 32) == v2 && *(v1 + 40) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12(v6, v7, v8);
  }

  return result;
}

double sub_1C11CF09C()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 48);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12(v8, v9, v10);
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }

  return result;
}

double sub_1C11CF148()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 64);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_21_12(v8, v9, v10);
  }

  else
  {
    *(v1 + 64) = v2;
    *(v1 + 72) = v0;
  }

  return result;
}

void sub_1C11CF1F4()
{
  OUTLINED_FUNCTION_39();
  KeyPath = swift_getKeyPath();
  v7 = v0;
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  sub_1C11CFAF8(KeyPath, sub_1C11CFBA8, &v6);
}

uint64_t sub_1C11CF278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF2BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF2BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  v3 = sub_1C11CFDB4(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 16, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t (*sub_1C11CF33C())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v5 = sub_1C11CFDB4(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  return sub_1C11CF3F0;
}

uint64_t sub_1C11CF3FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF468();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF468()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  v3 = sub_1C11CFDB4(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 32, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t (*sub_1C11CF4E8())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v5 = sub_1C11CFDB4(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  return sub_1C11CF59C;
}

uint64_t sub_1C11CF5A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF5EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF5EC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  v3 = sub_1C11CFDB4(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 48, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t (*sub_1C11CF66C())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v5 = sub_1C11CFDB4(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  return sub_1C11CF720;
}

uint64_t sub_1C11CF72C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C11CF7B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C11CF770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C11CF7B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  v3 = sub_1C11CFDB4(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 64, v5);

  return OUTLINED_FUNCTION_5_5();
}

uint64_t (*sub_1C11CF838())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v5 = sub_1C11CFDB4(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  return sub_1C11CF8EC;
}

void sub_1C11CF8F8(uint64_t a1@<X8>)
{
  *a1 = sub_1C11CF954();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

double sub_1C11CF954()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_71();
  v3 = sub_1C11CFDB4(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 80, v5);
  return *(v0 + 80);
}

uint64_t sub_1C11CF9CC(double *a1, double a2, double a3, double a4, double a5)
{
  result = swift_beginAccess();
  a1[10] = a2;
  a1[11] = a3;
  a1[12] = a4;
  a1[13] = a5;
  return result;
}

uint64_t (*sub_1C11CFA38())()
{
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_71();
  v5 = sub_1C11CFDB4(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  return sub_1C11CFAEC;
}

uint64_t sub_1C11CFAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_71();
  sub_1C11CFDB4(v3, v4);
  return sub_1C1261F20();
}

uint64_t type metadata accessor for PhotosMockMap(uint64_t a1)
{
  result = qword_1EBE96D98;
  if (!qword_1EBE96D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *PhotosMockMap.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore13PhotosMockMap___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockMap.__deallocating_deinit()
{
  PhotosMockMap.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C11CFDB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockMap(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C11CFE00(uint64_t a1)
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

objc_class *PhotosConcreteSelectableItem.__allocating_init(item:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1C0FDB0A8(a1, v3 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v6.receiver = v3;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v1;
}

id sub_1C11D01F0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PhotosMockSelectableItem(0);
  v6 = swift_allocObject();
  sub_1C1261F60();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = &v2[OBJC_IVAR___PXPhotosConcreteSelectableItem_item];
  *&v2[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24] = v5;
  v7[4] = sub_1C11D090C(&qword_1EBE96DC0, 255, type metadata accessor for PhotosMockSelectableItem, &protocol conformance descriptor for PhotosMockSelectableItem);
  *v7 = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for PhotosConcreteSelectableItem();
  return objc_msgSendSuper2(&v9, sel_init);
}

void *PhotosConcreteSelectableItem.init(item:)(uint64_t a1)
{
  sub_1C0FDB0A8(a1, v1 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PhotosConcreteSelectableItem();
  objc_msgSendSuper2(&v4, sel_init);
  v2 = OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v1;
}

uint64_t sub_1C11D0418()
{
  v1 = *(v0 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item), *(v0 + OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24));
  v2 = OUTLINED_FUNCTION_40();
  return v3(v2, v1) & 1;
}

uint64_t sub_1C11D0474(uint64_t a1)
{
  swift_getObjectType();
  sub_1C0FA49BC(a1, v14);
  if (!v15)
  {
    sub_1C0FA4B78(v14);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v11 = 0;
    return v11 & 1;
  }

  v2 = OUTLINED_FUNCTION_0_72(OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v4 = v3(v2);
  v6 = v5;
  v7 = *&v13[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 24];
  v8 = *&v13[OBJC_IVAR___PXPhotosConcreteSelectableItem_item + 32];
  __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR___PXPhotosConcreteSelectableItem_item], v7);
  if (v4 == (*(v8 + 16))(v7, v8) && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1266D50();
  }

  return v11 & 1;
}

uint64_t sub_1C11D0650()
{
  v1 = OUTLINED_FUNCTION_0_72(OBJC_IVAR___PXPhotosConcreteSelectableItem_item);
  v3 = v2(v1);
  MEMORY[0x1C68EF880](v3);
  OUTLINED_FUNCTION_40();

  return v0;
}

id PhotosConcreteSelectableItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosConcreteSelectableItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosConcreteSelectableItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C11D07A4(uint64_t a1, uint64_t a2)
{
  result = sub_1C11D090C(&qword_1EBE96DB0, a2, type metadata accessor for PhotosConcreteSelectableItem, &protocol conformance descriptor for PhotosConcreteSelectableItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D090C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C11D0AC8()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_0_73();
  v1();
  v2 = OUTLINED_FUNCTION_3_46();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4;
}

uint64_t sub_1C11D0C68()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_0_73();
  v1();
  v2 = OUTLINED_FUNCTION_3_46();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4;
}

uint64_t sub_1C11D0D54()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_0_73();
  v1();
  v2 = OUTLINED_FUNCTION_3_46();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4 & 1;
}

uint64_t sub_1C11D0E74(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D0EB0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D0EEC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C11D0F28(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1C11D104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6)
  {
    if (a3 != a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v13 = sub_1C1266D50();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a7)
  {
    return a4 == a8;
  }

  return result;
}

id sub_1C11D10E8()
{
  type metadata accessor for EDRImage.ImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setContentMode_];
  [v0 setUserInteractionEnabled_];
  [v0 bounds];
  OUTLINED_FUNCTION_5_1();

  v1 = OUTLINED_FUNCTION_7_37(objc_allocWithZone(MEMORY[0x1E69C44E0]), sel_initWithFrame_);
  [v1 setAutoresizingMask_];
  v2 = v1;
  sub_1C11D1600(v1);
  sub_1C11D11D4(v0);

  return v0;
}

void sub_1C11D11D4(char *a1)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = *&a1[OBJC_IVAR____TtCV17PhotosSwiftUICore8EDRImage9ImageView_edrGainView];
  if (v11)
  {
    v12 = *v2;
    v13 = *(v2 + 8);
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = v11;
    sub_1C11D1658(v12, v13, v14, 0, v15, 0);
    v17 = *(v2 + 32);
    if (v17)
    {
      v32 = *(v2 + 56);
      v18 = *(v2 + 48);
      v31 = v18;
      v19 = v17;
      if (v32 == 1)
      {
        if ((v18 & 1) == 0)
        {
LABEL_5:
          v20 = [v19 colorWithAlphaComponent_];
LABEL_11:
          v22 = v20;
          [a1 setTintColor_];

LABEL_15:
          [v16 setEdrGain_];

          OUTLINED_FUNCTION_22_0();
          return;
        }
      }

      else
      {
        sub_1C10D1A1C(&v31, v30, &qword_1EBE96D30, &qword_1C12C30E0);
        v23 = v16;
        v24 = sub_1C1266420();
        v25 = sub_1C1264410();
        v26 = v24;
        v16 = v23;
        OUTLINED_FUNCTION_78(v26, &dword_1C0F96000, v25, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

        sub_1C12637D0();
        swift_getAtKeyPath();
        sub_1C0FD1A5C(&v31, &qword_1EBE96D30, &qword_1C12C30E0);
        (*(v6 + 8))(v10, v4);
        if (v30[15] != 1)
        {
          goto LABEL_5;
        }
      }

      v20 = v19;
      goto LABEL_11;
    }

    v32 = *(v2 + 56);
    v21 = *(v2 + 48);
    v31 = v21;
    if (v32 == 1)
    {
      if (v21)
      {
LABEL_8:
        v22 = 0;
LABEL_14:
        [a1 setTintColor_];
        goto LABEL_15;
      }
    }

    else
    {

      v27 = sub_1C1266420();
      v28 = sub_1C1264410();
      OUTLINED_FUNCTION_78(v27, &dword_1C0F96000, v28, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(&v31, &qword_1EBE96D30, &qword_1C12C30E0);
      (*(v6 + 8))(v10, v4);
      if (v30[0])
      {
        goto LABEL_8;
      }
    }

    v29 = [objc_opt_self() labelColor];
    v22 = [v29 colorWithAlphaComponent_];

    goto LABEL_14;
  }

  sub_1C1266B70();
  __break(1u);
}