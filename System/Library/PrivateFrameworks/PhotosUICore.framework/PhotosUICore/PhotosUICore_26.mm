uint64_t sub_1A3F7D768@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A5248C34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3F7D828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a6;
  v72 = a2;
  v59 = a1;
  v67 = a4;
  swift_getAssociatedTypeWitness();
  v66 = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v68 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v62 = &v52 - v9;
  v10 = a5;
  v53 = a5;
  v54 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, a3, a4, a5);
  v57 = *(v54 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v52 - v11;
  v12 = sub_1A52440D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = sub_1A5243334();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v22;
  sub_1A3F8A464(0);
  v24 = *(v23 - 8);
  v69 = v23;
  v70 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v63 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v59;
  v28 = AssociatedTypeWitness;
  v61 = (*(*(v10 + 8) + 72))(AssociatedTypeWitness, v25);
  v65 = v29;
  v30 = shouldUseNewCollectionsLayout()();
  v31 = MEMORY[0x1E69C2410];
  if (!v30)
  {
    v31 = MEMORY[0x1E69C2418];
  }

  (*(v20 + 104))(v22, *v31, v19);
  v32 = v54;
  v33 = v72;
  sub_1A3F8853C(sub_1A3F88AE4, sub_1A3F88AE4, MEMORY[0x1E69C2998], v18);
  (*(v13 + 104))(v15, *MEMORY[0x1E69C2988], v12);
  sub_1A52440C4();
  v34 = *(v13 + 8);
  v34(v15, v12);
  v34(v18, v12);
  v35 = v57;
  v36 = v56;
  v37 = v32;
  (*(v57 + 16))(v56, v33, v32);
  v38 = v64;
  v39 = v62;
  (*(v64 + 16))(v62, v27, v28);
  v40 = v35;
  v41 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v42 = v38;
  v43 = (v58 + v41 + *(v38 + 80)) & ~*(v38 + 80);
  v44 = swift_allocObject();
  v45 = v67;
  *(v44 + 2) = v66;
  *(v44 + 3) = v45;
  *(v44 + 4) = v53;
  (*(v40 + 32))(&v44[v41], v36, v37);
  (*(v42 + 32))(&v44[v43], v39, v28);
  sub_1A5247BA4();
  v46 = swift_allocObject();
  *(v46 + 16) = PXDisplayCollectionDetailedCountsMake;
  *(v46 + 24) = 0;
  sub_1A3F8A528(0);
  sub_1A3F8A8C0(&qword_1EB12F468, sub_1A3F8A528, sub_1A3F8A930, MEMORY[0x1E6982090]);
  v47 = v63;
  v48 = sub_1A52423E4();
  v73 = (*(**(v72 + *(v37 + 48)) + 232))(v48);
  v74 = v49;
  sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464, MEMORY[0x1E69C1E20]);
  sub_1A3D5F9DC();
  v50 = v69;
  sub_1A524ABB4();

  return (*(v70 + 8))(v47, v50);
}

uint64_t sub_1A3F7DFE4@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v106 = sub_1A5243474();
  v99 = *(v106 - 8);
  v5 = MEMORY[0x1EEE9AC00](v106);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8A668(0, v5);
  v105 = v7;
  v93 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v96 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8A564(0, v8);
  v107 = v10;
  v100 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1A5249234();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v102 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8B570(0, &qword_1EB12F480, MEMORY[0x1E697F948]);
  v109 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v110 = &v92 - v14;
  v115 = a2;
  v15 = *--a2;
  v114 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v17;
  v18 = a2[3];
  v104 = a2[4];
  swift_getAssociatedTypeWitness();
  v113 = v18;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v92 - v22;
  sub_1A3F8A7EC(0, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
  v108 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v103 = &v92 - v26;
  v27 = a2[5];
  v28 = a1;
  v29 = (*(v27 + 32))(AssociatedTypeWitness, v27, v25);
  v31 = v30;
  v32 = sub_1A437CA3C(v29, v30);
  v34 = v33;
  v36.n128_f64[0] = sub_1A3F8B60C(v29, v31);
  if (v34)
  {
    v102 = &v92;
    v37 = v115;
    v38 = *(v115 + 11);
    v101 = v34;
    v39 = v117;
    v99 = *(v117 + v38);
    v40 = MEMORY[0x1EEE9AC00](v35);
    v100 = &v92 - 4;
    v90 = v32;
    v91 = v41;
    (*(v20 + 16))(v23, v28, AssociatedTypeWitness, v40);
    v42 = v114;
    v43 = v111;
    (*(v114 + 16))(v111, v39, v37);
    v44 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v45 = (v21 + *(v42 + 80) + v44) & ~*(v42 + 80);
    v46 = swift_allocObject();
    v47 = v104;
    *(v46 + 2) = v113;
    *(v46 + 3) = v47;
    *(v46 + 4) = v27;
    (*(v20 + 32))(&v46[v44], v23, AssociatedTypeWitness);
    (*(v42 + 32))(&v46[v45], v43, v37);

    v49 = v103;
    sub_1A472916C(v48, sub_1A3F8B798, 0, 0, sub_1A3F8BB14, v46, MEMORY[0x1E6981148], v103, MEMORY[0x1E6981138]);

    sub_1A3F8BD04(v49, v110);
    swift_storeEnumTagMultiPayload();
    sub_1A3F8AA84();
    v50 = sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668, MEMORY[0x1E697D680]);
    v51 = sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v118 = v105;
    v119 = v106;
    v120 = v50;
    v121 = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v116;
    sub_1A5249744();
    sub_1A3F8BD94(v49);
LABEL_9:
    v67 = 0;
    goto LABEL_10;
  }

  v101 = v27;
  v53 = v102;
  v103 = v28;
  v54 = v111;
  v55 = v115;
  v56 = v117 + *(v115 + 14);
  v57 = *v56;
  if (*(v56 + 8) == 1)
  {
    LOBYTE(v118) = *v56;
  }

  else
  {

    v58 = v55;
    v59 = sub_1A524D254();
    v60 = sub_1A524A014();
    v61 = v59;
    v55 = v58;
    sub_1A5246DF4(v61, &dword_1A3C1C000, v60, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v57, 0);
    (*(v94 + 8))(v53, v95);
    LOBYTE(v57) = v118;
  }

  v62 = v113;
  v63 = AssociatedTypeWitness;
  v122[0] = v57;
  v64 = v101;
  v65 = v103;
  (*(v101 + 40))(v122, v63, v101, v36);
  if ((v66 & 1) == 0)
  {
    v68 = v54;
    v69 = v114;
    v70 = v117;
    (*(v114 + 16))(v54, v117, v55);
    v71 = v55;
    v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
    v73 = swift_allocObject();
    *(v73 + 2) = v62;
    v74 = v62;
    v75 = v104;
    *(v73 + 3) = v104;
    *(v73 + 4) = v64;
    v76 = (*(v69 + 32))(&v73[v72], v68, v71);
    v77 = MEMORY[0x1EEE9AC00](v76);
    *(&v92 - 6) = v74;
    *(&v92 - 5) = v75;
    *(&v92 - 4) = v64;
    *(&v92 - 3) = v70;
    v90 = v65;
    sub_1A3F8A6FC(0, v77);
    sub_1A3F87E74(&qword_1EB121A20, sub_1A3F8A6FC, MEMORY[0x1E69817F8]);
    v78 = v96;
    sub_1A524B704();
    v79 = v97;
    sub_1A5247D74();
    v80 = sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668, MEMORY[0x1E697D680]);
    v81 = sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v82 = v98;
    v84 = v105;
    v83 = v106;
    sub_1A524A944();
    v85 = v83;
    (*(v99 + 8))(v79, v83);
    (*(v93 + 8))(v78, v84);
    v86 = v100;
    v87 = v107;
    (v100[2])(v110, v82, v107);
    swift_storeEnumTagMultiPayload();
    sub_1A3F8AA84();
    v118 = v84;
    v119 = v85;
    v120 = v80;
    v121 = v81;
    swift_getOpaqueTypeConformance2();
    v52 = v116;
    sub_1A5249744();
    (v86[1])(v82, v87);
    goto LABEL_9;
  }

  v67 = 1;
  v52 = v116;
LABEL_10:
  sub_1A3F8B570(0, &qword_1EB12F458, MEMORY[0x1E697F960]);
  return (*(*(v88 - 8) + 56))(v52, v67, 1, v88);
}

uint64_t sub_1A3F7EBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a5;
  v23 = a2;
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E6530];
  v6 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  v7 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v6);
  v8 = sub_1A5248804();
  sub_1A3E73A2C(255);
  v9 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v5);
  WitnessTable = swift_getWitnessTable();
  v38 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v7);
  v35 = swift_getWitnessTable();
  v36 = sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C, MEMORY[0x1E697EC18]);
  v31 = v8;
  v32 = v9;
  v33 = v35;
  v34 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1A3C7E8B0(0, v17);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v18 enableShelfDrawBorders];

  v28 = v23;
  v29 = v24;
  v30 = v25;
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_1A524A584();
  v19 = *(v11 + 16);
  v19(v16, v13, OpaqueTypeMetadata2);
  v20 = *(v11 + 8);
  v20(v13, OpaqueTypeMetadata2);
  v19(v27, v16, OpaqueTypeMetadata2);
  return (v20)(v16, OpaqueTypeMetadata2);
}

void *sub_1A3F7EFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_1A5248B74();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, a2, a3, a4) + 64));
  v14 = *v13;
  v15 = *(v13 + 1);
  v52 = v14;
  LOBYTE(v57) = v14;
  v53 = v15;
  v58 = v15;
  sub_1A3F8C838(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v51 = v16;
  sub_1A524B6A4();
  if (v56 == 1)
  {
    v17 = sub_1A524C634();
    v18 = PXLocalizedString(v17);

    v19 = sub_1A524C674();
    v49 = v20;
    v50 = v19;

    sub_1A3F8C454(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F8E10;
    v48 = *(a4 + 80);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = v48(AssociatedTypeWitness, a4);
    v24 = MEMORY[0x1E69E65A8];
    *(v21 + 56) = MEMORY[0x1E69E6530];
    *(v21 + 64) = v24;
    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    *(v21 + 32) = v26;
    v27 = sub_1A524C644();
    v29 = v28;
  }

  else
  {
    v30 = sub_1A524C634();
    v31 = PXLocalizedString(v30);

    v27 = sub_1A524C674();
    v29 = v32;
  }

  v57 = v27;
  v58 = v29;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  v35 = v34;
  v37 = v36;
  sub_1A5248B64();
  v38 = sub_1A524A384();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1A3E04DF4(v33, v35, v37 & 1);

  (*(v54 + 8))(v12, v55);
  LOBYTE(v57) = v52;
  v58 = v53;
  result = sub_1A524B6A4();
  v46 = v56;
  *a5 = v38;
  *(a5 + 8) = v40;
  *(a5 + 16) = v42 & 1;
  *(a5 + 24) = v44;
  *(a5 + 32) = 0;
  *(a5 + 40) = v46;
  return result;
}

BOOL sub_1A3F7F430(uint64_t a1)
{
  (*(**(v1 + 8) + 216))();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v2 = sub_1A524CAF4();

  return v2 > 1;
}

uint64_t sub_1A3F7F518(uint64_t a1)
{
  v19[0] = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19[5] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19[4] = v19 - v4;
  v19[3] = swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v19[6] = *(v5 - 8);
  v19[7] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v19[1] = AssociatedConformanceWitness;
  v19[2] = v19 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  v12 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v19 - v15;
  v17 = *(v1 + 8);
  (*(*v17 + 192))(v14);
  if ((*(v12 + 48))(v11, 1, v7) != 1)
  {
    (*(v12 + 32))(v16, v11, v7);
    (*(*v17 + 352))(v16);
    swift_checkMetadataState();
    sub_1A5242604();
    sub_1A5246234();
  }

  (*(v9 + 8))(v11, v8);
  return 1;
}

uint64_t sub_1A3F7F9F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v64 = sub_1A5249234();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v4 = *(a1 + 16);
  v87 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  v86 = v4;
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  v6 = sub_1A5248804();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v5);
  v99 = AssociatedConformanceWitness;
  v100 = v8;
  v81 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A3D5F9DC();
  v11 = MEMORY[0x1E69E6158];
  v95 = v6;
  v96 = MEMORY[0x1E69E6158];
  v97 = WitnessTable;
  v98 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v95 = v6;
  v96 = v11;
  v97 = WitnessTable;
  v98 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeMetadata2;
  v96 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v95 = OpaqueTypeMetadata2;
  v96 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v95 = v14;
  v96 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  v16 = sub_1A524BE24();
  v17 = swift_getWitnessTable();
  v80 = v16;
  v76 = v17;
  v18 = sub_1A524B894();
  v83 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v62 - v19;
  v20 = swift_getWitnessTable();
  v95 = v18;
  v96 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v95 = v18;
  v96 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v95 = v18;
  v96 = v21;
  v97 = v20;
  v98 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v79 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v75 = &v62 - v25;
  sub_1A3F88B18(255, v24);
  v72 = *(v88 + 32);
  type metadata accessor for LemonadeSectionedFeedTabBar(255, v86, v87, v72);
  sub_1A5249754();
  sub_1A5249754();
  v26 = sub_1A5248804();
  v82 = v18;
  v95 = v18;
  v96 = v21;
  v73 = v21;
  v78 = v20;
  v97 = v20;
  v98 = v22;
  v74 = v22;
  v27 = swift_getOpaqueTypeConformance2();
  v29 = sub_1A3F88C24(v28);
  v30 = swift_getWitnessTable();
  v93 = v29;
  v94 = v30;
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E6981E60];
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x1E697E5D8];
  v31 = swift_getWitnessTable();
  v95 = v23;
  v96 = v26;
  v97 = v27;
  v98 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v95 = v23;
  v96 = v26;
  v97 = v27;
  v98 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v81 = v23;
  v95 = v23;
  v96 = v32;
  v67 = v32;
  v71 = v27;
  v97 = v27;
  v98 = v33;
  v68 = v33;
  v70 = swift_getOpaqueTypeMetadata2();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v84;
  v66 = &v62 - v38;
  v39 = *(v84 + 16);
  if ((*(v84 + 48) & 1) == 0)
  {
    v40 = *(v84 + 24);
    v41 = *(v84 + 32);
    v42 = *(v84 + 40);

    v43 = sub_1A524D254();
    v44 = sub_1A524A014();
    sub_1A5246DF4(v43, &dword_1A3C1C000, v44, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v45 = v62;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v39, v40, v41, v42, 0);
    v36 = (*(v63 + 8))(v45, v64);
  }

  MEMORY[0x1EEE9AC00](v36);
  v46 = v86;
  v47 = v87;
  *(&v62 - 4) = v86;
  *(&v62 - 3) = v47;
  v48 = v72;
  *(&v62 - 2) = v72;
  *(&v62 - 1) = v37;
  sub_1A5249574();
  v49 = v77;
  sub_1A524B884();
  v50 = sub_1A3F81B7C();
  MEMORY[0x1EEE9AC00](v50);
  *(&v62 - 4) = v46;
  *(&v62 - 3) = v47;
  *(&v62 - 2) = v48;
  *(&v62 - 1) = v37;
  swift_checkMetadataState();
  v51 = v75;
  v52 = v82;
  sub_1A524A584();
  (*(v83 + 8))(v49, v52);
  v53 = sub_1A3F81B7C();
  MEMORY[0x1EEE9AC00](v53);
  *(&v62 - 4) = v46;
  *(&v62 - 3) = v47;
  *(&v62 - 2) = v48;
  *(&v62 - 1) = v37;
  swift_checkMetadataState();
  v54 = v65;
  v55 = v81;
  sub_1A524A584();
  (*(v79 + 8))(v51, v55);
  v56 = v69;
  v57 = *(v69 + 16);
  v58 = v66;
  v59 = v70;
  v57(v66, v54, v70);
  v60 = *(v56 + 8);
  v60(v54, v59);
  v57(v85, v58, v59);
  return (v60)(v58, v59);
}

uint64_t sub_1A3F8044C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v158 = a3;
  v152 = a1;
  v147 = a5;
  v126 = a4;
  v6 = *(a4 + 8);
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v157 = swift_getAssociatedTypeWitness();
  v109 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v127 = v6;
  v92 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v91 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v120 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v91 - v11;
  v12 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  v13 = sub_1A5248804();
  v122 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v91 - v14;
  v124 = v7;
  v121 = v10;
  v15 = swift_getAssociatedConformanceWitness();
  v16 = sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v12);
  v105 = v15;
  v168[5] = v15;
  v168[6] = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1A3D5F9DC();
  v19 = MEMORY[0x1E69E6158];
  v159 = v13;
  v160 = MEMORY[0x1E69E6158];
  v161 = WitnessTable;
  v162 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v112 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v107 = &v91 - v21;
  v123 = v13;
  v159 = v13;
  v160 = v19;
  v113 = WitnessTable;
  v161 = WitnessTable;
  v162 = v18;
  v111 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v119 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v116 = &v91 - v24;
  v114 = OpaqueTypeMetadata2;
  v159 = OpaqueTypeMetadata2;
  v160 = OpaqueTypeConformance2;
  v106 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v151 = v23;
  v159 = v23;
  v160 = v25;
  v150 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v145 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v117 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v108 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v91 - v31;
  v102 = swift_checkMetadataState();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v91 - v32;
  v137 = swift_checkMetadataState();
  v104 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v91 - v33;
  v103 = *(AssociatedConformanceWitness + 16);
  v115 = AssociatedTypeWitness;
  v34 = swift_getAssociatedTypeWitness();
  v156 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v135 = &v91 - v35;
  v146 = v26;
  v143 = sub_1A524DF24();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v140 = &v91 - v38;
  v39 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = swift_getAssociatedTypeWitness();
  v133 = sub_1A524DF24();
  v132 = *(v133 - 1);
  MEMORY[0x1EEE9AC00](v133);
  v46 = &v91 - v45;
  v134 = sub_1A5248804();
  v157 = sub_1A524DF24();
  v47 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v138 = &v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v139 = &v91 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v155 = &v91 - v52;
  v148 = v34;
  v154 = sub_1A524DF24();
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v129 = &v91 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v91 - v56;
  v58 = v152;
  v59 = v152[1];
  (*(*v59 + 192))(v55);
  v60 = *(v39 + 16);
  v96 = v59 + *(*v59 + 96);
  v97 = v39 + 16;
  v95 = v60;
  v60(v42);
  v61 = *(v158 + 88);
  v128 = *v58;
  v61();
  v62 = *(v39 + 8);
  v98 = v42;
  v99 = v39 + 8;
  v94 = v62;
  v62(v42, v43);
  v63 = *(v44 - 8);
  v64 = (*(v63 + 48))(v46, 1, v44);
  v125 = v43;
  if (v64 == 1)
  {
    (*(v132 + 8))(v46, v133);
    v65 = v139;
    (*(*(v134 - 8) + 56))(v139, 1, 1, v134);
    v66 = swift_getAssociatedConformanceWitness();
    v67 = v148;
  }

  else
  {
    v67 = v148;
    v68 = (*(v156 + 48))(v57, 1, v148);
    LODWORD(v133) = v68 != 1;
    v69 = 0x7FF0000000000000;
    if (v68 != 1)
    {
      v69 = 0;
    }

    v132 = v69;
    sub_1A524BC74();
    v66 = swift_getAssociatedConformanceWitness();
    v70 = v139;
    sub_1A524AFE4();
    v65 = v70;
    (*(v63 + 8))(v46, v44);
    (*(*(v134 - 8) + 56))(v70, 0, 1, v134);
  }

  v168[3] = v66;
  v168[4] = MEMORY[0x1E697EBF8];
  v168[2] = swift_getWitnessTable();
  v71 = v157;
  v132 = swift_getWitnessTable();
  v72 = *(v47 + 16);
  v131 = v47 + 16;
  v130 = v72;
  v72(v155, v65, v71);
  v73 = *(v47 + 8);
  v139 = (v47 + 8);
  v133 = v73;
  v73(v65, v71);
  v74 = v153;
  v75 = *(v153 + 16);
  v76 = v129;
  v134 = v57;
  v77 = v154;
  v75(v129, v57, v154);
  v78 = v156;
  if ((*(v156 + 48))(v76, 1, v67) != 1)
  {
    v80 = v135;
    (*(v78 + 32))(v135, v76, v67);
    (*(*v59 + 352))(v80);
    swift_checkMetadataState();
    sub_1A5242604();
    sub_1A5246234();
  }

  (*(v74 + 8))(v76, v77);
  v79 = v141;
  (*(v145 + 56))(v141, 1, 1, v146);
  v81 = v142;
  v82 = *(v142 + 16);
  v83 = v140;
  v84 = v143;
  v82(v140, v79, v143);
  v85 = *(v81 + 8);
  v85(v79, v84);
  v86 = v138;
  v87 = v155;
  v88 = v157;
  v130(v138, v155, v157);
  v159 = v86;
  v82(v79, v83, v84);
  v160 = v79;
  v168[0] = v88;
  v168[1] = v84;
  v164 = v151;
  v165 = v150;
  v166 = v132;
  v163 = swift_getOpaqueTypeConformance2();
  v167 = swift_getWitnessTable();
  sub_1A3DF4988(&v159, 2uLL, v168);
  v85(v83, v84);
  v89 = v133;
  v133(v87, v88);
  (*(v153 + 8))(v134, v154);
  v85(v79, v84);
  return v89(v86, v88);
}

uint64_t sub_1A3F81B7C()
{
  v0 = sub_1A5242D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  sub_1A3F8853C(sub_1A3E71AC8, sub_1A3E71AC8, MEMORY[0x1E69C2218], &v10 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C21F0], v0);
  v7 = sub_1A5242D04();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

void sub_1A3F81CFC(void *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1A3F894A4(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v18 = (*(v4 + 216))(v7);
  v16 = a2;
  v17 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = sub_1A524CB74();
  v9 = sub_1A5242F44();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1A3F3DF4C(sub_1A3F8961C, v15, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = v12;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  swift_retain_n();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F81FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a5;
  v9 = sub_1A5249234();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F88B18(255, v10);
  v45 = type metadata accessor for LemonadeSectionedFeedTabBar(255, a2, a3, a4);
  v46 = sub_1A5249754();
  v12 = sub_1A5249754();
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1A5248804();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for LemonadeSectionedTabbedFeed(0, a2, a3, a4);
  v23 = sub_1A3F82458(v22, v14);
  v24 = 0.0;
  if (MEMORY[0x1A590D320](v23))
  {
    v25 = a1 + *(v22 + 56);
    v26 = *(v25 + 8);
    if (*(v25 + 32) == 1)
    {
      v24 = *(v25 + 8);
    }

    else
    {
      v27 = *v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      v41 = v29;
      v40 = v28;

      v30 = sub_1A524D254();
      v31 = sub_1A524A014();
      sub_1A5246DF4(v30, &dword_1A3C1C000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

      v32 = v42;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35A84(v27, v26, v41, v40, 0);
      (*(v43 + 8))(v32, v44);
      v24 = v49;
    }
  }

  v33 = static EdgeInsets.symmetric(horizontal:vertical:)(v24, 12.0);
  v34 = sub_1A3F88C24(v33);
  WitnessTable = swift_getWitnessTable();
  v54 = v34;
  v55 = WitnessTable;
  v52 = swift_getWitnessTable();
  v53 = MEMORY[0x1E6981E60];
  v36 = swift_getWitnessTable();
  sub_1A524B0C4();
  (*(v47 + 8))(v14, v12);
  v50 = v36;
  v51 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v37 = *(v16 + 16);
  v37(v21, v18, v15);
  v38 = *(v16 + 8);
  v38(v18, v15);
  v37(v48, v21, v15);
  return (v38)(v21, v15);
}

uint64_t sub_1A3F82458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v80 = sub_1A5249A94();
  v84 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v72 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v70 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v70 - v12;
  sub_1A3F894A4(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1A3F88B78(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F88B18(0, v15);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v70 - v21;
  v79 = sub_1A5242F74();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v86 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  v24 = type metadata accessor for LemonadeSectionedFeedTabBar(255, a1[2], a1[3], v23);
  v87 = v18;
  v25 = sub_1A5249754();
  v90 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v89 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v88 = &v70 - v28;
  v29 = sub_1A5249754();
  v91 = *(v29 - 8);
  v92 = v29;
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v32 = &v70 - v31;
  v75 = v2;
  v33 = *(v2 + 8);
  v34 = (*(*v33 + 272))(v30);
  if (v35 == 1)
  {
    v38 = sub_1A3F88C24(v37);
    WitnessTable = swift_getWitnessTable();
    v130 = v38;
    v131 = WitnessTable;
    v40 = swift_getWitnessTable();
    sub_1A3DF4890(v40, v25, MEMORY[0x1E6981E70], v40, MEMORY[0x1E6981E60]);
    v42 = v93;
  }

  else
  {
    v43 = v36;
    v71 = v32;
    sub_1A3F894D8(v34, v35);
    if ((v43 & 1) == 0)
    {

      sub_1A3F81CFC(v57, v23);
    }

    KeyPath = swift_getKeyPath();
    *&v119[0] = 0;
    BYTE8(v119[0]) = 1;
    sub_1A3F8C838(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A524B694();
    v45 = v120;
    v46 = BYTE8(v120);
    v47 = v121;
    *&v119[0] = 0;
    BYTE8(v119[0]) = 1;
    sub_1A524B694();
    v48 = v120;
    v49 = v121;
    LOBYTE(v119[0]) = 0;
    LOBYTE(v118[0]) = v46 & 1;
    LOBYTE(v117[0]) = BYTE8(v120) & 1;
    v121 = 0uLL;
    *&v122 = 0;
    *&v120 = v33;
    *(&v120 + 1) = KeyPath;
    BYTE8(v122) = 0;
    *&v123 = v45;
    BYTE8(v123) = v46 & 1;
    *&v124 = v47;
    *(&v124 + 1) = v48;
    LOBYTE(v125) = v117[0];
    *(&v125 + 1) = v49;
    v50 = swift_getWitnessTable();
    v51 = *(v24 - 8);
    v52 = *(v51 + 16);
    v52(&v108, &v120, v24);
    v114[2] = v122;
    v114[3] = v123;
    v114[4] = v124;
    v114[5] = v125;
    v114[0] = v120;
    v114[1] = v121;
    v53 = *(v51 + 8);
    v53(v114, v24);
    v115[2] = v110;
    v115[3] = v111;
    v115[4] = v112;
    v115[5] = v113;
    v115[0] = v108;
    v115[1] = v109;
    v122 = v110;
    v123 = v111;
    v124 = v112;
    v125 = v113;
    v120 = v108;
    v121 = v109;
    v52(&v102, &v120, v24);
    v116[2] = v122;
    v116[3] = v123;
    v116[4] = v124;
    v116[5] = v125;
    v116[0] = v120;
    v116[1] = v121;
    v52(v119, v115, v24);
    v53(v116, v24);
    v117[2] = v104;
    v117[3] = v105;
    v117[4] = v106;
    v117[5] = v107;
    v117[0] = v102;
    v117[1] = v103;
    v98 = v104;
    v99 = v105;
    v100 = v106;
    v101 = v107;
    v96 = v102;
    v97 = v103;
    v54 = v52(&v120, v117, v24);
    v55 = sub_1A3F88C24(v54);
    v56 = v88;
    sub_1A3DF4890(&v96, v87, v24, v55, v50);
    v118[2] = v98;
    v118[3] = v99;
    v118[4] = v100;
    v118[5] = v101;
    v118[0] = v96;
    v118[1] = v97;
    v53(v118, v24);
    v119[2] = v104;
    v119[3] = v105;
    v119[4] = v106;
    v119[5] = v107;
    v119[0] = v102;
    v119[1] = v103;
    v53(v119, v24);
    v122 = v110;
    v123 = v111;
    v124 = v112;
    v125 = v113;
    v120 = v108;
    v121 = v109;
    v53(&v120, v24);
    v42 = v93;
    v32 = v71;
    v59 = sub_1A3F88C24(v58);
    v60 = swift_getWitnessTable();
    v94 = v59;
    v95 = v60;
    v61 = swift_getWitnessTable();
    v63 = v89;
    v62 = v90;
    (*(v90 + 16))(v89, v56, v25);
    sub_1A3DF4798(v63, v25, MEMORY[0x1E6981E70], v61, MEMORY[0x1E6981E60]);
    v64 = *(v62 + 8);
    v64(v63, v25);
    v41 = v64(v56, v25);
  }

  v65 = sub_1A3F88C24(v41);
  v66 = swift_getWitnessTable();
  v128 = v65;
  v129 = v66;
  v126 = swift_getWitnessTable();
  v127 = MEMORY[0x1E6981E60];
  v67 = v92;
  swift_getWitnessTable();
  v68 = v91;
  (*(v91 + 16))(v42, v32, v67);
  return (*(v68 + 8))(v32, v67);
}

uint64_t sub_1A3F83264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F895B4(a1, v9, sub_1A3DC7D88);
  return a5(v9);
}

uint64_t sub_1A3F8330C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v2 = *(a1 + 16);
  v46 = *(a1 + 24);
  v47 = a1;
  v45 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  sub_1A3F8BEF8(255);
  swift_getWitnessTable();
  v56[4] = swift_getAssociatedConformanceWitness();
  sub_1A524B9D4();
  sub_1A3F8BFFC(255);
  sub_1A5242084();
  sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC, MEMORY[0x1E697D6A8]);
  sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v56[20] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  v41 = MEMORY[0x1E69817F8];
  v56[18] = swift_getWitnessTable();
  v56[19] = MEMORY[0x1E697E5D8];
  v3 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v42 = sub_1A3E754D0();
  v56[16] = WitnessTable;
  v56[17] = v42;
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A5248804();
  sub_1A3F8C700(255);
  sub_1A5248804();
  sub_1A524B984();
  v56[14] = swift_getWitnessTable();
  v56[15] = MEMORY[0x1E697EBF8];
  v40 = v3;
  v56[12] = swift_getWitnessTable();
  v56[13] = sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700, MEMORY[0x1E697DDB0]);
  v5 = swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56[2] = v5;
  v56[3] = OpaqueTypeConformance2;
  v8 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v56[0] = OpaqueTypeMetadata2;
  v56[1] = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_1A524B784();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1A5248804();
  v39 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v34 - v13;
  v14 = sub_1A5248804();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v38 = &v34 - v18;
  v48 = v45;
  v49 = v46;
  v35 = *(v47 + 32);
  v19 = v43;
  v50 = v35;
  v51 = v43;
  sub_1A5249314();
  sub_1A524B774();
  sub_1A524BC74();
  v33 = swift_getWitnessTable();
  v20 = v34;
  sub_1A524AFE4();
  (*(v36 + 8))(v11, v9);
  v21 = swift_allocObject();
  v22 = v19[3];
  *(v21 + 72) = v19[2];
  *(v21 + 88) = v22;
  v23 = v19[5];
  *(v21 + 104) = v19[4];
  *(v21 + 120) = v23;
  v24 = v19[1];
  *(v21 + 40) = *v19;
  v25 = v46;
  *(v21 + 16) = v45;
  *(v21 + 24) = v25;
  *(v21 + 32) = v35;
  *(v21 + 56) = v24;
  (*(*(v47 - 8) + 16))(v56, v19);
  v54 = v33;
  v55 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  v27 = sub_1A3E75420();
  v28 = v37;
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3D35BB8, 0, sub_1A3F8C7A0, v21, v12, MEMORY[0x1E69E7DE0], v26, v27);

  (*(v39 + 8))(v20, v12);
  v52 = v26;
  v53 = v42;
  swift_getWitnessTable();
  v29 = *(v15 + 16);
  v30 = v38;
  v29(v38, v28, v14);
  v31 = *(v15 + 8);
  v31(v28, v14);
  v29(v44, v30, v14);
  return (v31)(v30, v14);
}

uint64_t sub_1A3F83C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v86 = a4;
  v90 = a5;
  v89 = sub_1A5249D04();
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524B984();
  MEMORY[0x1EEE9AC00](v8);
  v83 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v85 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524CB74();
  sub_1A3F8BEF8(255);
  v13 = v12;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v101 = v11;
  *(&v101 + 1) = AssociatedTypeWitness;
  v102 = v13;
  v103 = WitnessTable;
  v16 = a1;
  v104 = AssociatedConformanceWitness;
  sub_1A524B9D4();
  sub_1A3F8BFFC(255);
  v18 = v17;
  v19 = sub_1A5242084();
  v20 = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC, MEMORY[0x1E697D6A8]);
  v21 = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  *&v101 = v18;
  *(&v101 + 1) = v19;
  v102 = v20;
  v103 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v22 = sub_1A5248804();
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x1E697E5D8];
  v23 = swift_getWitnessTable();
  v24 = sub_1A3E754D0();
  v96 = v23;
  v97 = v24;
  v25 = swift_getWitnessTable();
  v75 = v22;
  v66[5] = v25;
  v26 = sub_1A5247D04();
  v72 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v67 = v66 - v27;
  v28 = sub_1A5248804();
  v78 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v68 = v66 - v29;
  sub_1A3F8C700(255);
  v30 = sub_1A5248804();
  v80 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v77 = v66 - v31;
  v66[0] = swift_getWitnessTable();
  v94 = v66[0];
  v95 = MEMORY[0x1E697EBF8];
  v73 = v28;
  v32 = swift_getWitnessTable();
  v33 = sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700, MEMORY[0x1E697DDB0]);
  v66[4] = v32;
  v92 = v32;
  v93 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  *&v101 = v30;
  *(&v101 + 1) = v8;
  v102 = v34;
  v103 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v101 = v30;
  *(&v101 + 1) = v8;
  v84 = v8;
  v102 = v34;
  v103 = v35;
  v66[1] = v35;
  v37 = swift_getOpaqueTypeConformance2();
  *&v101 = v30;
  *(&v101 + 1) = OpaqueTypeMetadata2;
  v102 = v34;
  v103 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v81 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v79 = v66 - v39;
  *&v101 = v30;
  *(&v101 + 1) = OpaqueTypeMetadata2;
  v66[2] = OpaqueTypeMetadata2;
  v102 = v34;
  v103 = v37;
  v66[3] = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v82 = v38;
  *&v101 = v38;
  *(&v101 + 1) = v40;
  v70 = v40;
  v76 = swift_getOpaqueTypeMetadata2();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v71 = v66 - v43;
  v101 = *(v16 + 72);
  v102 = *(v16 + 88);
  sub_1A3F880A8(0, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v91 & 1) == 0)
  {
    v101 = *(v16 + 48);
    v102 = *(v16 + 64);
    sub_1A524B6A4();
  }

  v44 = sub_1A524A024();
  sub_1A524A034();
  sub_1A524A034();
  v45 = sub_1A524A034();
  if (v45 != v44)
  {
    v45 = sub_1A524A034();
  }

  MEMORY[0x1EEE9AC00](v45);
  v46 = v67;
  sub_1A5247D14();
  sub_1A524BC74();
  v47 = v68;
  sub_1A524AFE4();
  (*(v72 + 8))(v46, v26);
  v48 = *MEMORY[0x1E697F468];
  v49 = sub_1A52494A4();
  v50 = v83;
  (*(*(v49 - 8) + 104))(v83, v48, v49);
  v51 = v77;
  v52 = v73;
  sub_1A524B194();
  sub_1A3F894EC(v50, MEMORY[0x1E6981998]);
  v53 = (*(v78 + 8))(v47, v52);
  MEMORY[0x1EEE9AC00](v53);
  swift_checkMetadataState();
  v54 = v79;
  sub_1A524A4B4();
  (*(v80 + 8))(v51, v30);
  v55 = v87;
  sub_1A5249CE4();
  sub_1A3F8C838(0, &qword_1EB12F500, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v47) = sub_1A524A044();
  *(inited + 32) = v47;
  v57 = sub_1A524A024();
  *(inited + 33) = v57;
  sub_1A524A034();
  sub_1A524A034();
  if (sub_1A524A034() != v47)
  {
    sub_1A524A034();
  }

  sub_1A524A034();
  if (sub_1A524A034() != v57)
  {
    sub_1A524A034();
  }

  v58 = v69;
  v59 = v82;
  sub_1A524ABF4();
  (*(v88 + 8))(v55, v89);
  (*(v81 + 8))(v54, v59);
  v60 = v74;
  v61 = *(v74 + 16);
  v62 = v71;
  v63 = v76;
  v61(v71, v58, v76);
  v64 = *(v60 + 8);
  v64(v58, v63);
  v61(v90, v62, v63);
  return (v64)(v62, v63);
}

uint64_t sub_1A3F849DC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a4;
  v47 = a3;
  v49 = a5;
  swift_getAssociatedTypeWitness();
  v7 = a2;
  v40 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  sub_1A3F8BEF8(255);
  swift_getWitnessTable();
  v58[4] = swift_getAssociatedConformanceWitness();
  v8 = sub_1A524B9D4();
  sub_1A3F8BFFC(255);
  v58[0] = v9;
  v58[1] = sub_1A5242084();
  v58[2] = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC, MEMORY[0x1E697D6A8]);
  v58[3] = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v58[12] = swift_getOpaqueTypeConformance2();
  v42 = v8;
  swift_getWitnessTable();
  v10 = sub_1A524B784();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1A5248804();
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v40 - v14;
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  v15 = sub_1A5248804();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v40 - v19;
  sub_1A3C7E8B0(0, v20);
  v21 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v21 sectionedFeedTabBarItemSpacing];

  v50 = v7;
  v22 = v47;
  v51 = v47;
  v23 = v48;
  v52 = v48;
  v53 = a1;
  sub_1A5249314();
  sub_1A524B774();
  WitnessTable = swift_getWitnessTable();
  v25 = v41;
  sub_1A524B0B4();
  (*(v43 + 8))(v12, v10);
  v26 = swift_allocObject();
  v27 = a1[3];
  *(v26 + 72) = a1[2];
  *(v26 + 88) = v27;
  v28 = a1[5];
  *(v26 + 104) = a1[4];
  *(v26 + 120) = v28;
  v29 = a1[1];
  *(v26 + 40) = *a1;
  v30 = v40;
  *(v26 + 16) = v40;
  *(v26 + 24) = v22;
  *(v26 + 32) = v23;
  *(v26 + 56) = v29;
  v31 = type metadata accessor for LemonadeSectionedFeedTabBar(0, v30, v22, v23);
  (*(*(v31 - 8) + 16))(v58, a1, v31);
  v56 = WitnessTable;
  v57 = MEMORY[0x1E697E5D8];
  v32 = swift_getWitnessTable();
  v33 = sub_1A3E75420();
  v34 = v44;
  sub_1A3E707DC(MEMORY[0x1E69E7DE0], sub_1A3F8D060, 0, sub_1A3F8C894, v26, v13, MEMORY[0x1E69E7DE0], v32, v33);

  (*(v46 + 8))(v25, v13);
  v35 = sub_1A3E754D0();
  v54 = v32;
  v55 = v35;
  swift_getWitnessTable();
  v36 = *(v16 + 16);
  v37 = v45;
  v36(v45, v34, v15);
  v38 = *(v16 + 8);
  v38(v34, v15);
  v36(v49, v37, v15);
  return (v38)(v37, v15);
}

uint64_t sub_1A3F850E4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v36 = a4;
  v40 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1A524CB74();
  sub_1A3F8BEF8(255);
  v11 = v10;
  v38 = v10;
  v39 = v9;
  WitnessTable = swift_getWitnessTable();
  v45 = v9;
  v46 = AssociatedTypeWitness;
  v47 = v11;
  v48 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_1A524B9D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &KeyPath - v18;
  v50 = (*(**a1 + 216))(v17);
  v41 = a2;
  v42 = a3;
  v20 = v36;
  v43 = v36;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  v22 = a1[3];
  *(v21 + 72) = a1[2];
  *(v21 + 88) = v22;
  v23 = a1[5];
  *(v21 + 104) = a1[4];
  *(v21 + 120) = v23;
  v24 = a1[1];
  *(v21 + 40) = *a1;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = v20;
  *(v21 + 56) = v24;
  v25 = type metadata accessor for LemonadeSectionedFeedTabBar(0, a2, a3, v20);
  (*(*(v25 - 8) + 16))(&v45, a1, v25);
  sub_1A3F8BFFC(255);
  v27 = v26;
  v28 = sub_1A5242084();
  v29 = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC, MEMORY[0x1E697D6A8]);
  v30 = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524B9B4();
  v44 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v31 = *(v13 + 16);
  v31(v19, v15, v12);
  v32 = *(v13 + 8);
  v32(v15, v12);
  v31(v40, v19, v12);
  return (v32)(v19, v12);
}

void sub_1A3F85518(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v19 = a4;
  v29 = a6;
  v28 = sub_1A5242084();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8BFFC(0);
  v26 = v10;
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v24 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v33 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v17 - v12;
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v13);
  swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v22 = *(v23 - 8);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v20 = v17 - v15;
  v16 = *(**a2 + 352);
  v17[5] = a1;
  v21 = v16(a1, v14);
  swift_checkMetadataState();
  sub_1A5242604();
  sub_1A5246234();
}

uint64_t sub_1A3F85DCC@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a1;
  v98 = a5;
  sub_1A3F8C3D4(0);
  v87 = v8;
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8C2D0(0);
  v92 = v10;
  v78 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v76 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8CD04(0, &qword_1EB12F508, MEMORY[0x1E697F948], v11);
  v97 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v95 = (&v76 - v15);
  sub_1A3F8C15C(0, &qword_1EB12F510, MEMORY[0x1E697F948], v14);
  v88 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v90 = &v76 - v18;
  sub_1A3F8C15C(0, &qword_1EB12F4A8, MEMORY[0x1E697F960], v17);
  v96 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v76 - v20;
  v89 = sub_1A52438B4();
  v85 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E429B4();
  v86 = v23;
  v82 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F8C1CC(0);
  v91 = v26;
  v84 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a4 + 64);
  v81 = a3;
  swift_getAssociatedTypeWitness();
  v80 = a2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = v94;
  v28(AssociatedTypeWitness, a4);
  if (v31)
  {
    v99 = (*(a4 + 56))(AssociatedTypeWitness, a4);
    v100 = v32;
    sub_1A3D5F9DC();
    sub_1A524B614();
    sub_1A5247C64();
    v94 = MEMORY[0x1E697D658];
    v33 = sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    v34 = sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0], MEMORY[0x1E69C26A8]);
    v35 = v83;
    v36 = v86;
    v37 = v89;
    sub_1A524A904();
    (*(v85 + 8))(v22, v37);
    (*(v82 + 8))(v25, v36);
    v38 = v84;
    v39 = v91;
    (*(v84 + 16))(v90, v35, v91);
    swift_storeEnumTagMultiPayload();
    v99 = v36;
    v100 = v37;
    v101 = v33;
    v102 = v34;
    swift_getOpaqueTypeConformance2();
    v40 = sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4, v94);
    v99 = v87;
    v100 = v37;
    v101 = v40;
    v102 = v34;
    swift_getOpaqueTypeConformance2();
    v41 = v93;
    sub_1A5249744();
    sub_1A3CCF4C4(v41, v95, v42);
    swift_storeEnumTagMultiPayload();
    sub_1A3F8C554(v43);
    sub_1A5249744();
    sub_1A3CCF544(v41, v44);
    return (*(v38 + 8))(v35, v39);
  }

  else
  {
    v46 = v80;
    v47 = v81;
    v48 = v79;
    v49 = (*(a4 + 72))(AssociatedTypeWitness, a4);
    if (v50)
    {
      MEMORY[0x1EEE9AC00](v49);
      *(&v76 - 4) = v46;
      *(&v76 - 3) = v47;
      *(&v76 - 2) = a4;
      *(&v76 - 1) = v30;
      MEMORY[0x1EEE9AC00](v51);
      *(&v76 - 2) = v52;
      *(&v76 - 1) = v53;
      sub_1A3EE213C(0);
      sub_1A3F37498();
      v54 = v48;
      sub_1A524B5F4();

      v55 = v22;
      sub_1A5247C64();
      v56 = MEMORY[0x1E697D658];
      v57 = sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4, MEMORY[0x1E697D658]);
      v58 = sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0], MEMORY[0x1E69C26A8]);
      v59 = v76;
      v60 = v87;
      v61 = v89;
      sub_1A524A904();
      (*(v85 + 8))(v55, v61);
      (*(v77 + 8))(v54, v60);
      v62 = v78;
      v63 = v92;
      (*(v78 + 16))(v90, v59, v92);
      swift_storeEnumTagMultiPayload();
      v64 = sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4, v56);
      v99 = v86;
      v100 = v61;
      v101 = v64;
      v102 = v58;
      swift_getOpaqueTypeConformance2();
      v99 = v60;
      v100 = v61;
      v101 = v57;
      v102 = v58;
      swift_getOpaqueTypeConformance2();
      v65 = v93;
      sub_1A5249744();
      sub_1A3CCF4C4(v65, v95, v66);
      swift_storeEnumTagMultiPayload();
      sub_1A3F8C554(v67);
      sub_1A5249744();
      sub_1A3CCF544(v65, v68);
      return (*(v62 + 8))(v59, v63);
    }

    else
    {
      v99 = (*(a4 + 56))(AssociatedTypeWitness, a4);
      v100 = v69;
      sub_1A3D5F9DC();
      v70 = sub_1A524A464();
      v71 = v95;
      *v95 = v70;
      v71[1] = v72;
      *(v71 + 16) = v73 & 1;
      v71[3] = v74;
      swift_storeEnumTagMultiPayload();
      sub_1A3F8C554(v75);
      return sub_1A5249744();
    }
  }
}

uint64_t sub_1A3F868C8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v29 = a4;
  v30 = a1;
  v28 = sub_1A524B984();
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A524B8D4();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1A524CB74();
  sub_1A3F8BEF8(255);
  v12 = v11;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v10;
  v41 = AssociatedTypeWitness;
  v42 = v12;
  v43 = WitnessTable;
  v44 = AssociatedConformanceWitness;
  sub_1A524B9D4();
  sub_1A3F8BFFC(255);
  v16 = v15;
  v17 = sub_1A5242084();
  v18 = sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC, MEMORY[0x1E697D6A8]);
  v19 = sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1A524B784();
  sub_1A5248804();
  sub_1A3E753B8(255, &qword_1EB127B40, sub_1A3E75420, MEMORY[0x1E69E7DE0], MEMORY[0x1E69802D8]);
  sub_1A5248804();
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  v21 = sub_1A3E754D0();
  v35 = v20;
  v36 = v21;
  swift_getWitnessTable();
  sub_1A5247D04();
  sub_1A5248804();
  sub_1A3F8C700(255);
  sub_1A5248804();
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E697EBF8];
  v22 = swift_getWitnessTable();
  v23 = sub_1A3F87E74(&qword_1EB1245F0, sub_1A3F8C700, MEMORY[0x1E697DDB0]);
  v31 = v22;
  v32 = v23;
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  sub_1A524B8C4();
  v24 = *MEMORY[0x1E697F468];
  v25 = sub_1A52494A4();
  (*(*(v25 - 8) + 104))(v5, v24, v25);
  sub_1A524AA34();
  sub_1A3F894EC(v5, MEMORY[0x1E6981998]);
  return (*(v6 + 8))(v8, v27);
}

void sub_1A3F86E6C(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](v6);
  (*(v7 + 352))(a1, v5);
  swift_checkMetadataState();
  sub_1A5242604();
  sub_1A5246234();
}

uint64_t sub_1A3F871C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  v33 = a2;
  v4 = *a1;
  v5 = *a1;
  sub_1A3F8965C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1A524DF24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  (*(v5 + 192))(v17);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v12 + 8))(v14, v11);
    v21 = v33;
    if (*(v33 + 16))
    {
      v22 = sub_1A5242F44();
      return (*(*(v22 - 8) + 16))(v32, v21 + ((*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80)), v22);
    }

    __break(1u);
    goto LABEL_12;
  }

  v23 = (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v23);
  *(&v29 - 4) = v9;
  *(&v29 - 3) = v8;
  v24 = v31;
  *(&v29 - 2) = v30;
  *(&v29 - 1) = v19;
  v25 = v33;
  sub_1A3F877C0(sub_1A3F89690, v33, v24);
  v26 = sub_1A5242F44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  result = v28(v24, 1, v26);
  if (result == 1)
  {
    if (!*(v25 + 16))
    {
LABEL_12:
      __break(1u);
      return result;
    }

    (*(v27 + 16))(v32, v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v26);
    if (v28(v24, 1, v26) != 1)
    {
      sub_1A3F894EC(v24, sub_1A3F8965C);
    }
  }

  else
  {
    (*(v27 + 32))(v32, v24, v26);
  }

  return (*(v15 + 8))(v19, AssociatedTypeWitness);
}

uint64_t sub_1A3F87628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v10 - v7;
  sub_1A5242F34();
  (*(v6 + 16))(v8, a2, AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_1A524E384();
  LOBYTE(a2) = MEMORY[0x1A59096D0](v11, v10);
  sub_1A3D5FAFC(v10);
  sub_1A3D5FAFC(v11);
  return a2 & 1;
}

uint64_t sub_1A3F877C0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_1A5242F44();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_1A3F87994(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  sub_1A5242F34();
  swift_dynamicCast();
  (*(*a2 + 368))(v6);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

double PhotosSectionPickerContext.Item.hash(into:)(uint64_t a1, double a2)
{
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(v3);
  sub_1A5242F14();
  sub_1A524C794();

  return result;
}

uint64_t PhotosSectionPickerContext.Item.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(&v1);
  sub_1A5242F14();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F87C48()
{
  sub_1A524EC94();
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(&v1);
  sub_1A5242F14();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A3F87CC8(uint64_t a1, double a2)
{
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(v3);
  sub_1A5242F14();
  sub_1A524C794();

  return result;
}

uint64_t sub_1A3F87D40(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A5242F34();
  sub_1A524E374();
  sub_1A3D5FAFC(&v2);
  sub_1A5242F14();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F87DD4(uint64_t a1)
{
  result = sub_1A3F87E74(&qword_1EB12F3E8, MEMORY[0x1E69C2310], &protocol conformance descriptor for PhotosSectionPickerContext.Item);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A3F87E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3F87EC4(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = v2;
    type metadata accessor for LemonadeNavigationContext(319);
    if (v6 <= 0x3F)
    {
      type metadata accessor for LemonadeSectionedFeedViewModel(255, v4, *(a1 + 24), v5);
      sub_1A5247CB4();
      if (v7 <= 0x3F)
      {
        sub_1A3F8C838(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v8 <= 0x3F)
        {
          sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
          if (v9 <= 0x3F)
          {
            sub_1A3F8C454(319, &qword_1EB124848, MEMORY[0x1E69C28E8], MEMORY[0x1E697DCC0]);
            if (v10 <= 0x3F)
            {
              sub_1A3F880A8(319, &qword_1EB1246C8, &qword_1EB126D90, MEMORY[0x1E69E63B0], MEMORY[0x1E697DCC0]);
              if (v11 <= 0x3F)
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

void sub_1A3F880A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3F8C838(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3F88124(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for LemonadeSectionedFeedViewModel(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        sub_1A3F8C454(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v6 <= 0x3F)
        {
          sub_1A3F8C838(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
          if (v7 <= 0x3F)
          {
            sub_1A3F8C454(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
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

void sub_1A3F882DC(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for LemonadeSectionedFeedViewModel(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
      if (v5 <= 0x3F)
      {
        sub_1A3F8C454(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v6 <= 0x3F)
        {
          sub_1A3F8C454(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3F88488(uint64_t a1, double a2)
{
  if (!qword_1EB123B58)
  {
    sub_1A3F8A7EC(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v2 = sub_1A524DF24();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB123B58);
    }
  }
}

uint64_t sub_1A3F8853C@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1A3F895B4(v8, &v22 - v16, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a3(0);
    return (*(*(v18 - 8) + 32))(a4, v17, v18);
  }

  else
  {
    v20 = sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4(v20, &dword_1A3C1C000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1A3F8876C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for LemonadeSectionedStackedFeed(0, v5, v6, v7) - 8);
  v9 = (v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80)));

  return sub_1A3F7B3F0(a1, v9, v5, v6, v7, a2);
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for LemonadeSectionedStackedFeed(0, v0[2], v0[3], v0[4]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80));

  sub_1A3D35A84(*(v2 + 2), *(v2 + 3), *(v2 + 4), *(v2 + 5), v2[48]);
  v3 = *(v1 + 52);
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(&v2[v3], 1, v4))
    {
      (*(v5 + 8))(&v2[v3], v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1A3F889B4(uint64_t a1, uint64_t *a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(type metadata accessor for LemonadeSectionedStackedFeed(0, v4, v5, v6) - 8);
  v8 = v2 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_1A3F7B940(a2, v8, v4, v5, v6);
}

double sub_1A3F88A54()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for LemonadeSectionedStackedFeed(0, v1, v2, v3) - 8);
  v5 = v0 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_1A3F7BB4C(v5, v1, v2, v3);
}

void sub_1A3F88B18(uint64_t a1, double a2)
{
  if (!qword_1EB12F400)
  {
    sub_1A3F88B78(255);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB12F400);
    }
  }
}

void sub_1A3F88B78(uint64_t a1)
{
  if (!qword_1EB12F408)
  {
    v2 = sub_1A5242F44();
    v3 = sub_1A3F87E74(&qword_1EB12F410, MEMORY[0x1E69C2310], &protocol conformance descriptor for PhotosSectionPickerContext.Item);
    v5 = type metadata accessor for LemonadeSegmentedControl(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12F408);
    }
  }
}

unint64_t sub_1A3F88C24(double a1)
{
  result = qword_1EB12F418;
  if (!qword_1EB12F418)
  {
    sub_1A3F88B18(255, a1);
    sub_1A3F87E74(&qword_1EB12F420, sub_1A3F88B78, &protocol conformance descriptor for LemonadeSegmentedControl<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F418);
  }

  return result;
}

uint64_t sub_1A3F88CE0()
{
  v1 = type metadata accessor for LemonadeSectionedTabbedFeed(0, v0[2], v0[3], v0[4]);
  sub_1A3F7F430(v1);
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  v2 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v2);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  return sub_1A524A624();
}

uint64_t sub_1A3F88FF0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for LemonadeSectionedTabbedFeed(0, v1, v2, v3);
  sub_1A3F7F430(v4);
  swift_getAssociatedTypeWitness();
  sub_1A5248804();
  sub_1A524DF24();
  swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1E69E69B8];
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, v5);
  swift_getWitnessTable();
  sub_1A3D5F9DC();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B894();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F88B18(255, v6);
  type metadata accessor for LemonadeSectionedFeedTabBar(255, v1, v2, v3);
  sub_1A5249754();
  sub_1A5249754();
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3F88C24(v7);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1A524A544();
}

double sub_1A3F894D8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1A3F894EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F8954C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F895B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3F896C4()
{
  v1 = *(v0 + 32);

  sub_1A3F81CFC(v2, v1);
}

uint64_t sub_1A3F89710(uint64_t a1)
{
  sub_1A3F8C838(0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F89790(uint64_t a1, uint64_t a2)
{
  sub_1A3F8C838(0, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (type metadata accessor for LemonadeSectionedFeedView(0, v1, v2, v0[4]) - 8);
  v4 = v0 + ((*(*v3 + 80) + 40) & ~*(*v3 + 80));
  (*(*(v1 - 8) + 8))(v4, v1);

  v5 = &v4[v3[14]];
  type metadata accessor for LemonadeSectionedFeedViewModel(255, v1, v2, v6);
  v7 = sub_1A524BD74();
  (*(*(v7 - 8) + 8))(v5, v7);
  sub_1A524BD84();

  v8 = &v4[v3[16]];
  sub_1A3D35A84(*v8, *(v8 + 1), *(v8 + 2), *(v8 + 3), v8[32]);

  sub_1A3F1B4C4(*&v4[v3[18]], v4[v3[18] + 8], v4[v3[18] + 9]);

  return swift_deallocObject();
}

uint64_t sub_1A3F899D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for LemonadeSectionedFeedView(0, v5, v6, v7) - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1A3F786D8(a1, v9, v5, v6, v7, a2);
}

void sub_1A3F89A88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v3 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for LemonadeSectionedFeedViewModel(319, v2, v1, v4);
      if (v6 <= 0x3F)
      {
        sub_1A3F8C838(319, &qword_1EB124800, &type metadata for LemonadeStackSpecs, MEMORY[0x1E697DCC0]);
        if (v7 <= 0x3F)
        {
          sub_1A3F8C838(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
          if (v8 <= 0x3F)
          {
            sub_1A3F8C454(319, &qword_1EB12F438, MEMORY[0x1E69C2998], MEMORY[0x1E697DCC0]);
            if (v9 <= 0x3F)
            {
              sub_1A3F8C838(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v10 <= 0x3F)
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

uint64_t sub_1A3F89C9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1A52440D4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if (v7 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v6 + 48);

      return v21(a1, v7, AssociatedTypeWitness);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

void sub_1A3F89F40(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1A52440D4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v18 = 0;
    v19 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((v12 + ((v14 + ((((((v13 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) + 9) & ~v14) + 8) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v10 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 < 0x7FFFFFFF)
      {
        v22 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      else
      {
        v21 = *(v24 + 56);

        v21(a1, a2, v9, AssociatedTypeWitness);
      }

      return;
    }
  }

  if (v15)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v15)
  {
    bzero(a1, v15);
    *a1 = ~v10 + a2;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_1A3F8A224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A3F8A288(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A3F8A2D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A3F8A394(uint64_t a1)
{
  if (!qword_1EB12F440)
  {
    sub_1A3F8A464(255);
    sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464, MEMORY[0x1E69C1E20]);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F440);
    }
  }
}

void sub_1A3F8A464(uint64_t a1)
{
  if (!qword_1EB12F448)
  {
    sub_1A3F8A528(255);
    sub_1A3F8A8C0(&qword_1EB12F468, sub_1A3F8A528, sub_1A3F8A930, MEMORY[0x1E6982090]);
    v1 = sub_1A52423F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F448);
    }
  }
}

void sub_1A3F8A564(uint64_t a1, double a2)
{
  if (!qword_1EB12F460)
  {
    sub_1A3F8A668(255, a2);
    sub_1A5243474();
    sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668, MEMORY[0x1E697D680]);
    sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F460);
    }
  }
}

void sub_1A3F8A668(uint64_t a1, double a2)
{
  if (!qword_1EB121A78)
  {
    sub_1A3F8A6FC(255, a2);
    sub_1A3F87E74(&qword_1EB121A20, sub_1A3F8A6FC, MEMORY[0x1E69817F8]);
    v2 = sub_1A524B764();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB121A78);
    }
  }
}

void sub_1A3F8A6FC(uint64_t a1, double a2)
{
  if (!qword_1EB121A18)
  {
    sub_1A3F8A760(255, a2);
    sub_1A3F8A840(v2);
    v3 = sub_1A524B784();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB121A18);
    }
  }
}

void sub_1A3F8A760(uint64_t a1, double a2)
{
  if (!qword_1EB124028)
  {
    sub_1A3F8A7EC(255, &qword_1EB122E00, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124028);
    }
  }
}

void sub_1A3F8A7EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3F8A840(double a1)
{
  result = qword_1EB124030;
  if (!qword_1EB124030)
  {
    sub_1A3F8A760(255, a1);
    sub_1A3E734D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124030);
  }

  return result;
}

uint64_t sub_1A3F8A8C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3F8A930(double a1)
{
  result = qword_1EB12F470;
  if (!qword_1EB12F470)
  {
    sub_1A3F8B570(255, &qword_1EB12F458, MEMORY[0x1E697F960]);
    sub_1A3F8AA84();
    sub_1A3F8A668(255, v2);
    sub_1A5243474();
    sub_1A3F87E74(&qword_1EB121A80, sub_1A3F8A668, MEMORY[0x1E697D680]);
    sub_1A3F87E74(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F470);
  }

  return result;
}

unint64_t sub_1A3F8AA84()
{
  result = qword_1EB129718;
  if (!qword_1EB129718)
  {
    sub_1A3F8A7EC(255, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129718);
  }

  return result;
}

uint64_t sub_1A3F8AB08(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F880A8(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F8AB78@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v3, v4, v5) - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1A3F7D828(v1 + v7, v10, v3, v4, v5, a1);
}

uint64_t sub_1A3F8AD2C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v6);
  v7 = *(sub_1A5248804() - 8);
  v8 = v1 + ((*(v7 + 80) + 40) & ~*(v7 + 80));

  return sub_1A3F7EBF0(v8, v3, v4, v5, a1);
}

double sub_1A3F8AE64()
{
  sub_1A524B424();
  sub_1A3F8A394(255);
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E6530];
  v1 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v1);
  sub_1A5248804();
  sub_1A3E73A2C(255);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v0);
  swift_getWitnessTable();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  swift_getWitnessTable();
  sub_1A3F87E74(&qword_1EB128040, sub_1A3E73A2C, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F8A464(255);
  sub_1A3F87E74(&qword_1EB12F478, sub_1A3F8A464, MEMORY[0x1E69C1E20]);
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1A5243DD4();
  swift_getWitnessTable();
  sub_1A524B014();

  return result;
}

double sub_1A3F8B1C4()
{
  sub_1A524B464();
  swift_getAssociatedTypeWitness();
  v0 = MEMORY[0x1E69E6530];
  v1 = MEMORY[0x1E6980A08];
  sub_1A3F880A8(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  sub_1A3F880A8(255, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8], v1);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F8AB08(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, v0);
  swift_getWitnessTable();
  sub_1A3F8AB08(&qword_1EB1220A8, &qword_1EB1220A0, &qword_1EB126538, MEMORY[0x1E69E69B8]);
  swift_getWitnessTable();
  sub_1A524B014();

  return result;
}

uint64_t sub_1A3F8B3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v1[2], v1[3], v1[4]);
  v4 = ((*(*(v3 - 1) + 80) + 40) & ~*(*(v3 - 1) + 80)) + *(*(v3 - 1) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1A3F7DFE4(v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80)), v3, a1);
}

void sub_1A3F8B570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A3F8A7EC(255, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
    v7 = v6;
    sub_1A3F8A564(255, v8);
    v10 = a3(a1, v7, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

double sub_1A3F8B60C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

double sub_1A3F8B620()
{
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v0[2], v0[3], v0[4]);
  sub_1A524BD44();
  sub_1A52483D4();

  return result;
}

__n128 sub_1A3F8B6F0@<Q0>(uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = sub_1A5249314();
  v20 = 1;
  sub_1A3F7EFC4(v7, v4, v5, v6, &v15);
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  result = v15;
  v14 = v20;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 24) = result;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  return result;
}

uint64_t objectdestroy_99Tm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v1, v2, v3);
  v9 = *(*(v8 - 1) + 80);
  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);
  v10 = &v0[(v6 + v7 + v9) & ~v9];
  v11 = swift_getAssociatedTypeWitness();
  (*(*(v11 - 8) + 8))(v10, v11);

  v12 = &v10[v8[13]];
  sub_1A3D35A84(*v12, *(v12 + 1), *(v12 + 2), *(v12 + 3), v12[32]);
  sub_1A3DD15BC(*&v10[v8[14]], v10[v8[14] + 8]);
  v13 = v8[15];
  sub_1A3F88AE4(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A52440D4();
    (*(*(v14 - 8) + 8))(&v10[v13], v14);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_1A3F8BB14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v1, v2, v3);
  v5 = *(v3 + 48);

  v5(v6, AssociatedTypeWitness, v3);

  return result;
}

uint64_t sub_1A3F8BD04(uint64_t a1, uint64_t a2)
{
  sub_1A3F8A7EC(0, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F8BD94(uint64_t a1)
{
  sub_1A3F8A7EC(0, &qword_1EB129710, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for LemonadeDetailsNavigationButton);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A3F8BE1C()
{
  type metadata accessor for LemonadeSectionedStackedFeed.SectionView(0, v0[2], v0[3], v0[4]);
  sub_1A3F8C838(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();

  return result;
}

void sub_1A3F8BEF8(uint64_t a1)
{
  if (!qword_1EB12F488)
  {
    sub_1A3F8BFFC(255);
    sub_1A5242084();
    sub_1A3F87E74(&qword_1EB12F4F0, sub_1A3F8BFFC, MEMORY[0x1E697D6A8]);
    sub_1A3F87E74(&qword_1EB12F4F8, MEMORY[0x1E69C1CF8], MEMORY[0x1E69C1CF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F488);
    }
  }
}

void sub_1A3F8BFFC(uint64_t a1)
{
  if (!qword_1EB12F490)
  {
    sub_1A3F8C0A4(255);
    sub_1A3F8A8C0(&qword_1EB12F4D8, sub_1A3F8C0A4, sub_1A3F8C4B8, MEMORY[0x1E6981600]);
    v1 = sub_1A524B874();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F490);
    }
  }
}

void sub_1A3F8C0E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(255, a3, MEMORY[0x1E697F960]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A3F8C15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), double a4)
{
  if (!*a2)
  {
    sub_1A3F8C1CC(255);
    v8 = v7;
    sub_1A3F8C2D0(255);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3F8C1CC(uint64_t a1)
{
  if (!qword_1EB12F4B0)
  {
    sub_1A3E429B4();
    sub_1A52438B4();
    sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0], MEMORY[0x1E69C26A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F4B0);
    }
  }
}

void sub_1A3F8C2D0(uint64_t a1)
{
  if (!qword_1EB12F4C0)
  {
    sub_1A3F8C3D4(255);
    sub_1A52438B4();
    sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4, MEMORY[0x1E697D658]);
    sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0], MEMORY[0x1E69C26A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F4C0);
    }
  }
}

void sub_1A3F8C3D4(uint64_t a1)
{
  if (!qword_1EB12F4C8)
  {
    sub_1A3EE213C(255);
    sub_1A3F37498();
    v1 = sub_1A524B624();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F4C8);
    }
  }
}

void sub_1A3F8C454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A3F8C4B8(double a1)
{
  result = qword_1EB12F4E0;
  if (!qword_1EB12F4E0)
  {
    sub_1A3F8CD04(255, &qword_1EB12F4A0, MEMORY[0x1E697F960], a1);
    sub_1A3F8C554(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F4E0);
  }

  return result;
}

unint64_t sub_1A3F8C554(double a1)
{
  result = qword_1EB12F4E8;
  if (!qword_1EB12F4E8)
  {
    sub_1A3F8C15C(255, &qword_1EB12F4A8, MEMORY[0x1E697F960], a1);
    sub_1A3E429B4();
    sub_1A52438B4();
    v2 = MEMORY[0x1E697D658];
    sub_1A3F87E74(&qword_1EB1274F0, sub_1A3E429B4, MEMORY[0x1E697D658]);
    sub_1A3F87E74(&qword_1EB12F4B8, MEMORY[0x1E69C26B0], MEMORY[0x1E69C26A8]);
    swift_getOpaqueTypeConformance2();
    sub_1A3F8C3D4(255);
    sub_1A3F87E74(&qword_1EB12F4D0, sub_1A3F8C3D4, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F4E8);
  }

  return result;
}

void sub_1A3F8C700(uint64_t a1)
{
  if (!qword_1EB1245E0)
  {
    sub_1A524B984();
    sub_1A3F87E74(&qword_1EB127310, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
    v1 = sub_1A5247FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1245E0);
    }
  }
}

void sub_1A3F8C838(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_122Tm()
{

  sub_1A3D35A84(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_1A3F8C980@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  result = (*(**(v1 + 56) + 360))(v1 + ((*(v3 + 80) + 152) & ~*(v3 + 80)));
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_131Tm()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 152) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  sub_1A3D35A84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A3F8CBE8(_BYTE *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  v5 = v6;
  if (*a1 == 1)
  {
    return (*(**(v1 + 56) + 368))(v1 + ((*(v5 + 80) + 152) & ~*(v5 + 80)));
  }

  return result;
}

void sub_1A3F8CD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void), double a4)
{
  if (!*a2)
  {
    sub_1A3F8C15C(255, &qword_1EB12F4A8, MEMORY[0x1E697F960], a4);
    v8 = a3(a1, v7, MEMORY[0x1E6981148]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A3F8CD88@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 56);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4(AssociatedTypeWitness, v3);
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1A3F8CF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t PhotoKitItemListMetadata.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id sub_1A3F8D0F4(void *a1, uint64_t a2)
{
  v2 = [a1 fetchedObjects];
  if (v2)
  {
    v3 = v2;
    sub_1A524CA34();

    MEMORY[0x1EEE9AC00](v4);
    sub_1A524CB74();
    swift_getWitnessTable();
    sub_1A524E504();
    sub_1A524E614();

    v5 = [a1 photoLibrary];
    v6 = [a1 fetchType];
    if (v6)
    {
      v7 = v6;
      sub_1A524C674();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = [a1 fetchPropertySets];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1A524CF44();
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_1A524CA14();

    if (v9)
    {
      v15 = sub_1A524C634();

      if (v13)
      {
LABEL_13:
        v16 = sub_1A524CF34();

LABEL_16:
        [objc_allocWithZone(MEMORY[0x1E69788E0]) initWithObjects:v14 photoLibrary:v5 fetchType:v15 fetchPropertySets:v16 identifier:0 registerIfNeeded:1];

        objc_opt_self();
        return swift_dynamicCastObjCClassUnconditional();
      }
    }

    else
    {
      v15 = 0;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    v16 = 0;
    goto LABEL_16;
  }

  return a1;
}

uint64_t sub_1A3F8D3B4(uint64_t result, uint64_t a2)
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

void *PhotoKitItemListImplementation.container.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *PhotoKitItemListImplementation.itemsFetchResult.getter()
{
  v0 = sub_1A3F91CE8();
  v1 = v0;
  return v0;
}

void *PhotoKitItemListImplementation.unfilteredSortedFetchResult.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t PhotoKitItemListImplementation.options.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1A3C6DB58(v9, v8);
}

double PhotoKitItemListImplementation.placeholderObject.getter()
{
  sub_1A3F91CF0();

  return result;
}

BOOL PhotoKitItemListImplementation.hasMetadataForAll.getter()
{
  v1 = *(v0 + qword_1EB1EB210);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (!v2)
    {
      break;
    }

    if (!*(*(v0 + 152) + 16))
    {
      break;
    }

    v5 = *v3++;
    sub_1A3CAB9BC(v5);
    v2 = v4 - 1;
  }

  while ((v6 & 1) != 0);
  return v4 == 0;
}

void PhotoKitItemListImplementation.replacing(sorter:)(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v3 = *v2;
  sub_1A5245EC4();
}

id PhotoKitItemListImplementation.representedValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v6 = *(v1 + 16);
    v3 = sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    v4 = v6;
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v3;

  return v4;
}

void PhotoKitItemListImplementation.itemIdentifiers.getter()
{
  sub_1A3C722F8();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void PhotoKitItemListImplementation.item(at:)(uint64_t a1)
{
  v3 = v1[3];
  if (v3)
  {
    v4 = v1;
    v5 = *v1;
    v6 = [v3 objectAtIndex_];
    v7 = v1[19];
    v8 = v6;
    v9 = PHObject.itemID.getter();

    if (*(v7 + 16))
    {
      sub_1A3CAB9BC(v9);
      if (v10)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v11 = sub_1A3CA36F4(MEMORY[0x1E69E7CC0]);
    type metadata accessor for PhotoKitItem(0, *(v5 + 80), v12, v13);
    v14 = *(v4 + 13);
    v22[2] = *(v4 + 11);
    v22[3] = v14;
    v22[4] = *(v4 + 15);
    v23 = v4[17];
    v15 = *(v4 + 9);
    v22[0] = *(v4 + 7);
    v22[1] = v15;
    v16 = *(v4 + 11);
    v17 = *(v4 + 15);
    v20[3] = *(v4 + 13);
    v20[4] = v17;
    v21 = v4[17];
    v18 = *(v4 + 9);
    v20[0] = *(v4 + 7);
    v20[1] = v18;
    v20[2] = v16;
    sub_1A3C6DB58(v22, v19);
    PhotoKitItem.__allocating_init(value:options:metadata:)(v8, v20, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t PhotoKitItemListImplementation.index(for:)(uint64_t a1)
{
  v3 = *(v1 + qword_1EB17CB20);
  v4 = *(v1 + qword_1EB17CB20 + 8);
  v5 = *(v4 + 16);
  if (v3)
  {
    return sub_1A3F90B8C(a1, v4 + 32, v5, (v3 + 16), v3 + 32);
  }

  result = 0;
  if (v5)
  {
    while (*(v4 + 32 + 8 * result) != a1)
    {
      if (v5 == ++result)
      {
        return 0;
      }
    }
  }

  return result;
}

{
  v3 = *v1;
  sub_1A3C2F0BC(a1, v10);
  if (swift_dynamicCast())
  {
    return PhotoKitItemListImplementation.index(for:)(v9[0]);
  }

  sub_1A3C2F0BC(a1, v9);
  type metadata accessor for PhotoKitItem(0, *(v3 + 80), v5, v6);
  if (swift_dynamicCast())
  {
    v7 = PhotoKitItem.id.getter();

    return PhotoKitItemListImplementation.index(for:)(v7);
  }

  sub_1A3C2F0BC(a1, v9);
  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  if (swift_dynamicCast())
  {
    v7 = PHObject.itemID.getter();

    return PhotoKitItemListImplementation.index(for:)(v7);
  }

  return 0;
}

void PhotoKitItemListImplementation.item(nearest:)(uint64_t a1)
{
  PhotoKitItemListImplementation.index(nearest:)(a1);
  if ((v2 & 1) == 0)
  {
    PhotoKitItemListImplementation.item(at:)(v1);
  }
}

void PhotoKitItemListImplementation.index(nearest:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1A3C7CE80(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v34 - v6;
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = PhotoKitItem.id.getter();
  PhotoKitItemListImplementation.index(for:)(v14);
  if (v15)
  {
    v16 = v1[3];
    if (v16)
    {
      v39 = v10;
      v40 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = v4;
      v17 = v16;
      v42 = a1;
      v18 = PhotoKitItem.keyAssets.getter();
      v19 = [v18 firstObject];

      if (v19)
      {
        v38 = v9;
        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        v20 = v17;
        v21 = v19;
        sub_1A45ECB7C(v21);
        v23 = v22;

        if (v23)
        {
          v34[1] = v20;
          v35 = v19;
          v36 = v17;
          v37 = v13;
          v34[2] = v8;
          v43 = v2;
          v44 = v2[19];
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
        v43 = v2;
        v24 = *(v2 + 114);
        if (v24 == 2)
        {
        }

        else
        {
          PhotoKitItem.creationDate.getter(v7);
          if ((*(v9 + 48))(v7, 1, v8) != 1)
          {
            v44 = *(v9 + 32);
            v44(v13, v7, v8);
            v25 = v40;
            (*(v9 + 16))(v40, v13, v8);
            v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
            v27 = swift_allocObject();
            v28 = v43;
            *(v27 + 16) = *(v41 + 80);
            *(v27 + 24) = v28;
            v45 = v27;
            v44((v27 + v26), v25, v8);
            LOBYTE(aBlock) = v24 & 1;
            v52[0] = 0;

            v29 = static PhotoKitItemListManagerOptions.PromisedSortOrder.== infix(_:_:)(&aBlock, v52);
            v36 = v17;
            v37 = v13;
            v35 = 0;
            if (v29)
            {
              v30 = swift_allocObject();
              v31 = v45;
              *(v30 + 16) = sub_1A3F91F54;
              *(v30 + 24) = v31;
              v50 = sub_1A3F923EC;
              v51 = v30;
              aBlock = MEMORY[0x1E69E9820];
              v47 = 1107296256;
              v48 = sub_1A3F8FAAC;
              v49 = &block_descriptor_10_0;
              _Block_copy(&aBlock);

              PXLastIndexInSortedRangePassingTest();
            }

            v32 = swift_allocObject();
            v33 = v45;
            *(v32 + 16) = sub_1A3F91F54;
            *(v32 + 24) = v33;
            v50 = sub_1A3F91FC8;
            v51 = v32;
            aBlock = MEMORY[0x1E69E9820];
            v47 = 1107296256;
            v48 = sub_1A3F8FAAC;
            v49 = &block_descriptor_60;
            _Block_copy(&aBlock);

            PXFirstIndexInSortedRangePassingTest();
          }

          sub_1A3F91EE4(v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        }
      }
    }
  }
}

uint64_t sub_1A3F8F778(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v24[1] = a3;
  v5 = *a2;
  v6 = sub_1A5241144();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CE80(0, &qword_1EB1260A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = sub_1A5240524();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a2;
  v19 = type metadata accessor for PhotoKitItemListImplementation(0, *(v5 + 80), v17, v18);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1A5901810](v25, a1, v19, WitnessTable);
  PhotoKitItem.dateInterval.getter(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_1A3F91EE4(v12, &qword_1EB1260A0, MEMORY[0x1E6968130]);
    v21 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_1A5240514();
    sub_1A3C49B48(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v22 = sub_1A524C534();

    (*(v7 + 8))(v9, v6);
    (*(v14 + 8))(v16, v13);
    v21 = v22 ^ 1;
  }

  return v21 & 1;
}

BOOL sub_1A3F8FFB0(void *a1, uint64_t a2)
{
  v7 = PHObject.itemID.getter();
  sub_1A3C6D46C(0, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
  sub_1A524C484();
  if (v8)
  {
    LOBYTE(v7) = 1;
    sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
    sub_1A3C6C300();
    sub_1A524C484();

    v3 = [v8 count];

    v4 = v3 <= 0;
  }

  else
  {
    v5 = [a1 estimatedAssetCount];
    if (v5 == sub_1A52403B4())
    {
      return 0;
    }

    v4 = [a1 estimatedAssetCount] <= 0;
  }

  return !v4;
}

uint64_t sub_1A3F9012C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v9 = PHObject.itemID.getter();
  sub_1A3C6D46C(0, &qword_1EB126FE0, MEMORY[0x1E69E5E28]);
  sub_1A524C484();
  if (aBlock[0])
  {
    LOBYTE(v9) = 2;
    sub_1A3C52C70(0, &qword_1EB126C40, 0x1E6978840);
    sub_1A3C6C300();
    sub_1A524C484();

    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = a2;
    v5[4] = v2;
    v5[5] = v2;
    aBlock[4] = sub_1A3F922D4;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3F90354;
    aBlock[3] = &block_descriptor_23_2;
    _Block_copy(aBlock);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v6 = *(v4 + 16);

  return v6;
}

void sub_1A3F90354(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1A3F90484@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A3F91CF0();

  return result;
}

void *sub_1A3F9052C()
{
  v0 = sub_1A3F91CE8();
  v1 = v0;
  return v0;
}

void sub_1A3F905A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A3C7B80C(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1A3C7B80C((v10 > 1), v11 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v11 + 1;
  *(v6 + 8 * v11 + 32) = a1;
  v3[1] = v6;
  v12 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1A5901C00](*(v12 + 16) & 0x3FLL) > v11)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v14 = *v3;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v15 = sub_1A52468B4();

        *v3 = v15;
        v14 = v15;
      }

      if (v14)
      {
        sub_1A5246854();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return;
  }

  sub_1A3F90710(v9);
}

void sub_1A3F90710(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  v5 = *(v4 + 16);
  if (v3 || v5 >= 0x10)
  {
    v7 = MEMORY[0x1A5901C30](v5);
    if (v3 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    v6 = sub_1A3F907B0(v4, v8, 0, v3);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
}

uint64_t sub_1A3F907B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1A5901C30](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1A5901C40](v8, a4);
    sub_1A3F90830(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void sub_1A3F90880(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        v7 = *a3;
        sub_1A524EC84();
        if (__OFSUB__(1 << v7, 1))
        {
          break;
        }

        if (sub_1A5246834())
        {
          while (1)
          {
            sub_1A5246884();
          }
        }

        sub_1A5246874();
        if (++v6 == a2)
        {
          return;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_1A3F90990(size_t result, int64_t a2, char a3, void *a4)
{
  if ((a3 & 1) == 0)
  {
    v5 = a2;
    goto LABEL_8;
  }

  v4 = a4[3];
  v5 = v4 >> 1;
  if ((v4 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v5 = a2;
    }

LABEL_8:
    if (v5 <= a4[2])
    {
      v6 = a4[2];
    }

    else
    {
      v6 = v5;
    }

    if (v6)
    {
      sub_1A3C7CE80(0, &qword_1EB126228, off_1E77210D0, MEMORY[0x1E69E6F90]);
      sub_1A5245EC4();
    }

    sub_1A5245EC4();
  }

  __break(1u);
}

uint64_t sub_1A3F90B8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *a4;
  result = sub_1A524EC84();
  if (__OFSUB__(1 << v7, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A5246834();
    result = sub_1A5246864();
    if ((v9 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_1A5246884();
        result = sub_1A5246864();
      }

      while ((v10 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

void sub_1A3F90C8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1A3C2E3D0(0, &qword_1EB126208, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A3F90D74(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    for (i = 0; ; ++i)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *a3;
      result = sub_1A524EC84();
      if (__OFSUB__(1 << v9, 1))
      {
        goto LABEL_15;
      }

      sub_1A5246834();
      while (1)
      {
        v10 = sub_1A5246864();
        if (v11)
        {
          break;
        }

        if (*(v6 + 8 * v10) == *(v6 + 8 * i))
        {
          return 0;
        }

        sub_1A5246884();
      }

      result = sub_1A5246874();
      if (v8 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A3F90EC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
  v32 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v20);
      v23 = sub_1A524ECE4();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A3F91160()
{
  v1 = v0;
  sub_1A3CAFF98(0, &qword_1EB126458, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = *(*(v2 + 56) + 8 * v16);
        *(*(v4 + 48) + 8 * v16) = *(*(v2 + 48) + 8 * v16);
        *(*(v4 + 56) + 8 * v16) = v17;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }
}

void sub_1A3F912CC()
{
  v1 = v0;
  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1A3F91438(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1A524EC84();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A3F91734(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1A3F9151C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A3F9206C();
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1A524EC84();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A3F91734(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3F9151C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1A3F91854();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A3F91988(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1A524EC84();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

void sub_1A3F91854()
{
  v1 = v0;
  sub_1A3F9206C();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A3F91988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A3F9206C();
  v4 = sub_1A524E3B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A524EC84();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1A3F91B6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v5 = a2;
  while (v5 < v4)
  {
    v8 = *(a1 + 8 * v5);
    v9 = v3[1];
    v10 = (v9 + 32);
    if (*v3)
    {
      v11 = *(*v3 + 16);
      v12 = sub_1A524EC84();
      if (__OFSUB__(1 << v11, 1))
      {
        goto LABEL_19;
      }

      v17 = ((1 << v11) - 1) & v12;
      sub_1A5246834();
      v13 = sub_1A5246864();
      v7 = v17;
      if ((v14 & 1) == 0)
      {
        while (v10[v13] != v8)
        {
          sub_1A5246884();
          v7 = v17;
          v13 = sub_1A5246864();
          if (v15)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      v16 = *(v9 + 16);
      if (v16)
      {
        while (*v10 != v8)
        {
          ++v10;
          if (!--v16)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_6;
      }

LABEL_4:
      v7 = 0;
    }

LABEL_5:
    sub_1A3F905A4(v8, v7);
LABEL_6:
    if (++v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1A3F91CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C6D46C(0, &qword_1EB126470, MEMORY[0x1E69E6EC8]);
  v5 = sub_1A524E764();
  v6 = v5;
  v7 = 0;
  v29 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v28 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v30 = *(*(v29 + 48) + v18);
      v19 = *(*(v29 + 56) + 8 * v18);
      sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
      v20 = v19;
      v21 = sub_1A524DC44();
      if (v21)
      {
        v22 = v21;
        sub_1A3F91438(&v31, a4);
        v23 = [v22 fetchResultAfterChanges];

        v20 = v23;
      }

      *(v28 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + v18) = v30;
      *(v6[7] + 8 * v18) = v20;
      v24 = v6[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v6[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A3F91EE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7CE80(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F91F54(uint64_t a1)
{
  v3 = *(sub_1A5241144() - 8);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1A3F8F778(a1, v4, v5);
}

uint64_t sub_1A3F91FF4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1A3F9206C()
{
  if (!qword_1EB126528)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126528);
    }
  }
}

id sub_1A3F920C4(void **a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *a1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
      v25 = 0;
      return (v25 & 1);
    }

    v21 = v20;
    v22 = v4;
    v23 = sub_1A3F9012C(v21, v3);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = v4;
  if (![v6 px_isAllLibraryDuplicatesSmartAlbum])
  {
    goto LABEL_5;
  }

  result = [v6 photoLibrary];
  if (result)
  {
    v9 = result;
    v10 = [result isInitialDuplicateDetectorProcessingCompleted];

    if ((v10 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_5:
    v11 = [v6 transientIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1A524C674();
      v15 = v14;

      v16 = sub_1A524C674();
      if (v15)
      {
        if (v13 != v16 || v15 != v17)
        {
          v19 = sub_1A524EAB4();

          if (v19)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }

LABEL_25:

LABEL_26:
        v25 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1A524C674();
    }

LABEL_17:
    if ([v6 px_isPrivacySensitiveAlbum])
    {
      v24 = [v6 px_isRecoveredSmartAlbum];

      if (!v24)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v23 = sub_1A3F8FFB0(v6, v3);
LABEL_22:
    v25 = v23;
LABEL_27:

    return (v25 & 1);
  }

  __break(1u);
  return result;
}

void sub_1A3F922D4(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  if ([a1 canContainCollections] && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = a1;
    v11 = sub_1A3F9012C(v9, v6);
  }

  else
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = v12;
    v10 = a1;
    v11 = sub_1A3F8FFB0(v13, v6);
  }

  v14 = v11;

  swift_beginAccess();
  *(v7 + 16) = v14 & 1;
LABEL_7:
  swift_beginAccess();
  if (*(v7 + 16) == 1)
  {
    *a3 = 1;
  }
}

uint64_t sub_1A3F92410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeFeedBodyStyle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F92494(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A3F933F0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  MEMORY[0x1A590A010](*(v1 + *(a1 + 24)));
  return sub_1A524ECE4();
}

uint64_t sub_1A3F92550(uint64_t a1, uint64_t a2)
{
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A3F933F0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  return MEMORY[0x1A590A010](*(v2 + *(a2 + 24)));
}

uint64_t sub_1A3F925F8(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  sub_1A524DC04();
  sub_1A5244EE4();
  sub_1A3F933F0(&qword_1EB128FA0, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12D0]);
  sub_1A524C4B4();
  MEMORY[0x1A590A010](*(v2 + *(a2 + 24)));
  return sub_1A524ECE4();
}

uint64_t sub_1A3F926B0(void *a1, void *a2)
{
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  if (sub_1A524DBF4())
  {
    sub_1A5244EE4();
    sub_1A3F933F0(&qword_1EB128F98, MEMORY[0x1E69C12C8], MEMORY[0x1E69C12E0]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v6 == v4 && v7 == v5)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_1A524EAB4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1A3F927DC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3F92838(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x1A590D320](v7))
  {

    LemonadePhotosPagingMemoryGridConfiguration.init(singleItem:photoLibraryContext:)(a1, a2);
  }

  v10 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(0);
  v11 = sub_1A3F933F0(&qword_1EB125120, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider, &unk_1A530BAF4);
  sub_1A3C66934(v3, v10, v11);

  LemonadePhotosPagingMemoryGridConfiguration.init(itemListManager:initialItem:selectionCoordinator:)(v9);
}

uint64_t sub_1A3F92A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider(0);
  v10 = v9[5];
  v11 = sub_1A5244EE4();
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  *&a5[v9[6]] = a3;
  result = sub_1A3F92B28(a4, &a5[v9[7]], type metadata accessor for LemonadeFeedBodyStyle);
  v13 = &a5[v9[8]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_1A3F92B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A3F92BD8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = *(a1 + 20);
  v7 = type metadata accessor for LemonadeGenerativeMemoriesFeedProvider.GenerativeMemoriesListManagerOptions(0);
  v8 = *(v7 + 20);
  v9 = sub_1A5244EE4();
  (*(*(v9 - 8) + 16))(&a2[v8], v2 + v6, v9);
  v10 = *(v2 + *(a1 + 24));
  *a2 = v5;
  *&a2[*(v7 + 24)] = v10;
  v11 = v5;

  return result;
}

double sub_1A3F92C94()
{
  type metadata accessor for LemonadeGenerativeMemoriesFeedProvider.GenerativeMemoriesListManagerOptions(0);

  return result;
}

uint64_t sub_1A3F92CD4(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_1A3C30368();
  sub_1A459D720(a1, 0, 1, v5 & 1, 2, v4);
  sub_1A3F933F0(&qword_1EB12A0C0, type metadata accessor for LemonadeMemoriesFeature.LemonadeMemoriesCell, &unk_1A534C998);
  sub_1A524A674();
  return sub_1A3F927DC(v4);
}

void sub_1A3F92DD4(uint64_t a1, uint64_t a2)
{
  (*(**(v2 + *(a2 + 24)) + 280))();
  PhotoKitItem.id.getter();
  sub_1A3F932F0(0, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A3F9378C(&qword_1EB125468, &qword_1EB125460, type metadata accessor for PhotoKitItemListImplementation, &protocol conformance descriptor for PhotoKitItemListImplementation<A>);
  sub_1A5246494();
}

uint64_t sub_1A3F92EE4()
{
  result = sub_1A5242E44();
  if (!v1)
  {
    return sub_1A3C38BD4(0xD00000000000001FLL);
  }

  return result;
}

uint64_t sub_1A3F92F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3F9378C(&qword_1EB12A7D8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A3F92FB4()
{
  sub_1A3F933F0(&qword_1EB125118, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider, &unk_1A530BAD8);

  return sub_1A3C47918();
}

void sub_1A3F930BC()
{
  if (!qword_1EB128070)
  {
    v0 = sub_1A5248A84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128070);
    }
  }
}

uint64_t sub_1A3F9322C(uint64_t a1)
{
  result = sub_1A3F933F0(&qword_1EB125120, type metadata accessor for LemonadeGenerativeMemoriesFeedProvider, &unk_1A530BAF4);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3F932F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB1265E0, 0x1E69788F0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A3F933F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A3F93438(uint64_t a1)
{
  if (!qword_1EB1291A0)
  {
    sub_1A3F932F0(255, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem);
    sub_1A3F9378C(&unk_1EB12A7C0, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for <> PhotoKitItem<A>);
    sub_1A3F9378C(&qword_1EB12A7B8, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    sub_1A3F9378C(&qword_1EB12A7D0, &qword_1EB12A7B0, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    v1 = sub_1A5242924();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1291A0);
    }
  }
}

void sub_1A3F935B4(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A5244EE4();
    if (v2 <= 0x3F)
    {
      sub_1A3F932F0(319, &qword_1EB129F88, type metadata accessor for PhotoKitItemListManager);
      if (v3 <= 0x3F)
      {
        type metadata accessor for LemonadeFeedBodyStyle(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A3F936C4(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A5244EE4();
    if (v2 <= 0x3F)
    {
      sub_1A3F932F0(319, &qword_1EB129F88, type metadata accessor for PhotoKitItemListManager);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3F9378C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F932F0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F937D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248C54();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1A3F93828()
{
  result = qword_1EB12AF20;
  if (!qword_1EB12AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF20);
  }

  return result;
}

uint64_t sub_1A3F9387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for LemonadeBookmarkListCell(0, a2, a4, a5);
  v8 = v7[7];
  *(a3 + v8) = swift_getKeyPath();
  v9 = MEMORY[0x1E697DCB8];
  sub_1A3C6B54C(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v7[8];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v7[9];
  *(a3 + v11) = swift_getKeyPath();
  sub_1A3C6B54C(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], v9);
  swift_storeEnumTagMultiPayload();
  sub_1A3F93828();
  result = sub_1A52480C4();
  *a3 = a1;
  return result;
}

void sub_1A3F939D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a1;
  v5 = sub_1A5244084();
  v13 = *(v5 - 8);
  v14 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v12 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v11);
  v10[3] = MEMORY[0x1E6980E30];
  sub_1A3C6B54C(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524A274();
  MEMORY[0x1EEE9AC00](v8);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1A3F947A4(0);
  sub_1A3F93E24(v2, *(a1 + 16), a2 + *(v9 + 44));
}

void sub_1A3F93E24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v5 = sub_1A5241FC4();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v103 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x1E69C27E0];
  v7 = MEMORY[0x1E69E6720];
  sub_1A3C6B54C(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v99 = &KeyPath - v9;
  v102 = MEMORY[0x1E69C27A0];
  sub_1A3C6B54C(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v7);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v98 = &KeyPath - v11;
  sub_1A3F94DCC(0);
  v97 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v96 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F94D48(0, v13);
  v101 = v15;
  v111 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &KeyPath - v18;
  sub_1A3F948CC(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v110 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&KeyPath - v22);
  v26 = type metadata accessor for LemonadeBookmarkListCell(0, a2, v24, v25);
  *v23 = sub_1A524BC74();
  v23[1] = v27;
  v108 = v23;
  sub_1A3F96760(0);
  v29 = v23 + *(v28 + 44);
  v30 = *(v26 + 16);
  v95 = sub_1A524B414();
  type metadata accessor for LemonadeBookmarkListCell(0, v30, v31, v32);
  sub_1A3F96054(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
  sub_1A52480D4();
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v33 = v115;
  v34 = v116;
  v35 = v117;
  LOBYTE(v23) = v118;
  v36 = v119;
  v94 = v120;
  v114 = v116;
  v113 = v118;
  v112 = 0;
  v37 = sub_1A524BC74();
  v39 = v38;
  sub_1A3F94E00(0, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
  v41 = &v29[*(v40 + 36)];
  sub_1A3F95980(a1, v41);
  sub_1A3F9499C(0);
  v43 = (v41 + *(v42 + 36));
  *v43 = v37;
  v43[1] = v39;
  *v29 = v95;
  *(v29 + 1) = v33;
  v29[16] = v34;
  *(v29 + 3) = v35;
  v29[32] = v23;
  v44 = v94;
  *(v29 + 5) = v36;
  *(v29 + 6) = v44;
  *(v29 + 7) = 0x3FF0000000000000;
  *(v29 + 32) = 0;
  (*(**a1 + 160))(&v115);
  v45 = v118;
  v46 = v119;
  __swift_project_boxed_opaque_existential_1(&v115, v118);
  v47 = (*(v46 + 56))(v45, v46);
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  sub_1A3F9670C(&v115);
  v115 = v49;
  v116 = v50;
  sub_1A3D5F9DC();
  v51 = sub_1A524A464();
  v53 = v52;
  v55 = v54;
  v115 = sub_1A524B484();
  v56 = sub_1A524A374();
  v94 = v57;
  v59 = v58;
  v95 = v60;
  sub_1A3E04DF4(v51, v53, v55 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v96;
  sub_1A3F951B0(v96);
  sub_1A3F94E74(0);
  v63 = v61 + *(v62 + 36);
  *v63 = 0x3FF0000000000000;
  *(v63 + 8) = 0;
  v64 = (v61 + *(v97 + 36));
  v65 = *(sub_1A5248A14() + 20);
  v66 = *MEMORY[0x1E697F468];
  v67 = sub_1A52494A4();
  (*(*(v67 - 8) + 104))(&v64[v65], v66, v67);
  __asm { FMOV            V0.2D, #8.0 }

  *v64 = _Q0;
  sub_1A3E42C88(0);
  *&v64[*(v73 + 36)] = 256;
  v74 = sub_1A5243A44();
  v75 = v98;
  (*(*(v74 - 8) + 56))(v98, 1, 1, v74);
  v76 = sub_1A5243B34();
  v77 = v99;
  (*(*(v76 - 8) + 56))(v99, 1, 1, v76);
  sub_1A3F94F70();
  v78 = v103;
  sub_1A5241FB4();
  v79 = v109;
  sub_1A524A6A4();
  (*(v105 + 8))(v78, v106);
  sub_1A3F9656C(v77, &unk_1EB129020, v104);
  sub_1A3F9656C(v75, &unk_1EB129030, v102);
  sub_1A3F966AC(v61, sub_1A3F94DCC);
  v80 = v110;
  sub_1A3F96644(v108, v110, sub_1A3F948CC);
  LOBYTE(v115) = v59 & 1;
  v114 = 0;
  v113 = 1;
  v81 = *(v111 + 16);
  v82 = v100;
  v83 = v101;
  v81(v100, v79, v101);
  v84 = v107;
  sub_1A3F96644(v80, v107, sub_1A3F948CC);
  sub_1A3F9483C(0, v85);
  v87 = v84 + v86[12];
  LOBYTE(v78) = v115;
  v88 = v114;
  v89 = v94;
  *v87 = v56;
  *(v87 + 8) = v89;
  *(v87 + 16) = v78;
  v90 = KeyPath;
  *(v87 + 24) = v95;
  *(v87 + 32) = v90;
  *(v87 + 40) = 2;
  *(v87 + 48) = v88;
  v91 = v84 + v86[16];
  v92 = v113;
  *v91 = 0;
  *(v91 + 8) = v92;
  v81((v84 + v86[20]), v82, v83);
  sub_1A3E75E68(v56, v89, v78);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F947A4(uint64_t a1)
{
  if (!qword_1EB12F520)
  {
    sub_1A3C6B54C(255, &qword_1EB12F528, sub_1A3F9483C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F520);
    }
  }
}

void sub_1A3F9483C(uint64_t a1, double a2)
{
  if (!qword_1EB12F530)
  {
    sub_1A3F948CC(255);
    sub_1A3DF14C0(255);
    sub_1A3F94D48(255, v2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB12F530);
    }
  }
}

void sub_1A3F948CC(uint64_t a1)
{
  if (!qword_1EB1215D8)
  {
    sub_1A3F94E00(255, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
    sub_1A3F94BB8();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1215D8);
    }
  }
}

void sub_1A3F9499C(uint64_t a1)
{
  if (!qword_1EB122F48)
  {
    v1 = MEMORY[0x1E69C2128];
    sub_1A3F94A54(255, &qword_1EB124310, &qword_1EB124E48, MEMORY[0x1E69C2128]);
    sub_1A3F950D8(&qword_1EB124318, &qword_1EB124310, &qword_1EB124E48, v1);
    v2 = sub_1A5248AE4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB122F48);
    }
  }
}

void sub_1A3F94A54(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3E72EF0(255, a3, a4);
    sub_1A3F94ADC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3F94ADC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3F960D0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3F94B48()
{
  result = qword_1EB127800;
  if (!qword_1EB127800)
  {
    sub_1A3F94ADC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127800);
  }

  return result;
}

unint64_t sub_1A3F94BB8()
{
  result = qword_1EB123370;
  if (!qword_1EB123370)
  {
    sub_1A3F94E00(255, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
    sub_1A3F961D8(&qword_1EB123740, sub_1A3F94960, sub_1A3F94CD0);
    sub_1A3F96308(&qword_1EB122F50, sub_1A3F9499C, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123370);
  }

  return result;
}

unint64_t sub_1A3F94CD0()
{
  result = qword_1EB128610;
  if (!qword_1EB128610)
  {
    sub_1A3EC2638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128610);
  }

  return result;
}

void sub_1A3F94D48(uint64_t a1, double a2)
{
  if (!qword_1EB12F538)
  {
    sub_1A3F94DCC(255);
    sub_1A3F94F70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F538);
    }
  }
}

void sub_1A3F94E00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3F94EEC(uint64_t a1)
{
  if (!qword_1EB123950)
  {
    sub_1A3F94A54(255, &qword_1EB124330, &qword_1EB124E58, MEMORY[0x1E69C2118]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123950);
    }
  }
}

unint64_t sub_1A3F94F70()
{
  result = qword_1EB1238C0;
  if (!qword_1EB1238C0)
  {
    sub_1A3F94DCC(255);
    sub_1A3F961D8(&qword_1EB124168, sub_1A3F94E74, sub_1A3F95058);
    sub_1A3F96308(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238C0);
  }

  return result;
}

unint64_t sub_1A3F95058()
{
  result = qword_1EB1227B0;
  if (!qword_1EB1227B0)
  {
    sub_1A3F94EB0(255);
    sub_1A3D6D344();
    sub_1A3F9515C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227B0);
  }

  return result;
}

uint64_t sub_1A3F950D8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F94A54(255, a2, a3, a4);
    swift_getOpaqueTypeConformance2();
    sub_1A3F94B48();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3F9515C()
{
  result = qword_1EB1297F8;
  if (!qword_1EB1297F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1297F8);
  }

  return result;
}

uint64_t sub_1A3F951B0@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  sub_1A3F96450(0, &qword_1EB122C28, sub_1A3F94EEC, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F948]);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - v3;
  sub_1A3C6B54C(0, &qword_1EB124F80, MEMORY[0x1E69C1D20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v45 = sub_1A5242234();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A5242274();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5242264();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3F94A54(0, &qword_1EB124330, &qword_1EB124E58, MEMORY[0x1E69C2118]);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  sub_1A3F94EEC(0);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v41 - v22;
  sub_1A3F94EB0(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**v1 + 160))(v56, v24);
  sub_1A3C34460(v56, v53);
  v26 = v54;
  v27 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  if (sub_1A4838C90(v26, v27))
  {
    *v14 = 0x6C69662E6B636F6CLL;
    v14[1] = 0xE90000000000006CLL;
    (*(v12 + 104))(v14, *MEMORY[0x1E69C1D38], v11);
    v28 = v42;
    v29 = v43;
    (*(v42 + 104))(v10, *MEMORY[0x1E69C1D48], v43);
    v30 = sub_1A52421C4();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    sub_1A52421D4();
    sub_1A3F9656C(v6, &qword_1EB124F80, MEMORY[0x1E69C1D20]);
    sub_1A5242B54();
    (*(v44 + 8))(v8, v45);
    (*(v28 + 8))(v10, v29);
    (*(v12 + 8))(v14, v11);
    v31 = sub_1A524B4A4();
    KeyPath = swift_getKeyPath();
    v33 = &v17[*(v41 + 36)];
    *v33 = KeyPath;
    v33[1] = v31;
    sub_1A524BC74();
    sub_1A5248AD4();
    sub_1A3CD0890(v17, v20);
    v34 = &v20[*(v48 + 36)];
    v35 = v56[5];
    *(v34 + 4) = v56[4];
    *(v34 + 5) = v35;
    *(v34 + 6) = v56[6];
    v36 = v56[1];
    *v34 = v56[0];
    *(v34 + 1) = v36;
    v37 = v56[3];
    *(v34 + 2) = v56[2];
    *(v34 + 3) = v37;
    v38 = v46;
    sub_1A3F965DC(v20, v46, sub_1A3F94EEC);
    sub_1A3F96644(v38, v50, sub_1A3F94EEC);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6D344();
    sub_1A3F9515C();
    v39 = v47;
    sub_1A5249744();
    sub_1A3F966AC(v38, sub_1A3F94EEC);
  }

  else
  {
    sub_1A3C341C8(v53, v52);
    sub_1A3CA2CF0(v52, v56);
    sub_1A3F964BC(v56, v50);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6D344();
    sub_1A3F9515C();
    v39 = v47;
    sub_1A5249744();
    sub_1A3F96518(v56);
  }

  sub_1A3F965DC(v39, v51, sub_1A3F94EB0);
  return __swift_destroy_boxed_opaque_existential_0(v53);
}

void sub_1A3F95980(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5242254();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5242264();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(**a1 + 160))(v24, v10);
  v13 = v25;
  v14 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v15 = (*(v14 + 88))(v13, v14);
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  sub_1A3F9670C(v24);
  *v12 = v17;
  v12[1] = v18;
  (*(v9 + 104))(v12, *MEMORY[0x1E69C1D40], v8);
  sub_1A5242244();
  sub_1A5242B74();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, v8);
  v19 = sub_1A524B324();
  KeyPath = swift_getKeyPath();
  sub_1A3F94A54(0, &qword_1EB124310, &qword_1EB124E48, MEMORY[0x1E69C2128]);
  v22 = (a2 + *(v21 + 36));
  *v22 = KeyPath;
  v22[1] = v19;
}

void sub_1A3F95BF8(uint64_t a1)
{
  if (!qword_1EB12F540)
  {
    sub_1A3F95C78(255);
    sub_1A3F94ADC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F540);
    }
  }
}

void sub_1A3F95C78(uint64_t a1)
{
  if (!qword_1EB12F548)
  {
    sub_1A3C6B54C(255, &qword_1EB12F528, sub_1A3F9483C, MEMORY[0x1E6981F40]);
    sub_1A3F95D0C();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F548);
    }
  }
}

unint64_t sub_1A3F95D0C()
{
  result = qword_1EB12F550;
  if (!qword_1EB12F550)
  {
    sub_1A3C6B54C(255, &qword_1EB12F528, sub_1A3F9483C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F550);
  }

  return result;
}

void sub_1A3F95DD0(uint64_t a1)
{
  if (!qword_1EB12F560)
  {
    sub_1A3F95D94(255);
    sub_1A3F96054(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F560);
    }
  }
}

void sub_1A3F95EB4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1A3C6B54C(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A3F960D0(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A3C6B54C(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1A3F96054(319, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DF08]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3F96054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3F960D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A3F96120()
{
  result = qword_1EB12F568;
  if (!qword_1EB12F568)
  {
    sub_1A3F95DD0(255);
    sub_1A3F961D8(&qword_1EB12F570, sub_1A3F95D94, sub_1A3F96258);
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F568);
  }

  return result;
}

uint64_t sub_1A3F961D8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3F96258()
{
  result = qword_1EB12F578;
  if (!qword_1EB12F578)
  {
    sub_1A3F95BF8(255);
    sub_1A3F96308(&qword_1EB12F580, sub_1A3F95C78, MEMORY[0x1E69817F8]);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F578);
  }

  return result;
}

uint64_t sub_1A3F96308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3F96350()
{
  result = qword_1EB127830;
  if (!qword_1EB127830)
  {
    sub_1A3F94ADC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127830);
  }

  return result;
}

unint64_t sub_1A3F963C0()
{
  result = qword_1EB127C80;
  if (!qword_1EB127C80)
  {
    sub_1A3F96054(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127C80);
  }

  return result;
}

void sub_1A3F96450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A3F9656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C6B54C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A3F965DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F96644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F966AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3F96760(uint64_t a1)
{
  if (!qword_1EB1243F8)
  {
    sub_1A3F94E00(255, &qword_1EB123368, sub_1A3F94960, sub_1A3F9499C);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243F8);
    }
  }
}

unint64_t sub_1A3F96814()
{
  result = qword_1EB19C7D0[0];
  if (!qword_1EB19C7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB19C7D0);
  }

  return result;
}

uint64_t type metadata accessor for PersonBanner(uint64_t a1)
{
  result = qword_1EB19C9E8;
  if (!qword_1EB19C9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A3F968B4@<D0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1A5243BE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *a1;
  v13 = MEMORY[0x1E69C2838];
  if (*(v12 + 48) < 0)
  {
    v13 = MEMORY[0x1E69C2830];
  }

  (*(v5 + 104))(v7, *v13, v4, v9);
  v14 = *(v5 + 32);
  v14(v11, v7, v4);
  *(a2 + 3) = &type metadata for PersonBannerView;
  *(a2 + 4) = sub_1A3F96814();
  *a2 = v12;
  v15 = type metadata accessor for PersonBanner(0);
  v14(&a2[*(v15 + 20)], v11, v4);

  return result;
}

uint64_t sub_1A3F96A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1A5243BE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A3F96AA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PersonActionBanner(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97810(0, &qword_1EB12F598, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for PersonSuggestionBanner.Style(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersonSuggestionBanner(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[6];
  if (v16 < 0)
  {
    swift_retain_n();
    sub_1A439A478(sub_1A3F97574, a1, v6);
    v20 = type metadata accessor for PersonActionBanner;
    sub_1A3F9764C(v6, v9, type metadata accessor for PersonActionBanner);
    swift_storeEnumTagMultiPayload();
    sub_1A3F97578(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
    sub_1A3F97578(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner, &unk_1A5334D20);
    sub_1A5249744();
    v21 = v6;
  }

  else
  {
    v23[1] = a2;
    v17 = a1[4];
    v18 = a1[5];
    sub_1A3F975FC(v17, v18, v16);

    sub_1A400703C(v19);
    sub_1A4000F28(v17, v18, v16, v12, sub_1A3F97884, a1, v15);
    v20 = type metadata accessor for PersonSuggestionBanner;
    sub_1A3F9764C(v15, v9, type metadata accessor for PersonSuggestionBanner);
    swift_storeEnumTagMultiPayload();
    sub_1A3F97578(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
    sub_1A3F97578(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner, &unk_1A5334D20);
    sub_1A5249744();

    v21 = v15;
  }

  return sub_1A3F976B4(v21, v20);
}

void sub_1A3F96E7C()
{
  sub_1A3F96FA8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A5245FB4();
}

void sub_1A3F96FA8(uint64_t a1)
{
  if (!qword_1EB124AC0)
  {
    sub_1A5245FB4();
  }
}

void sub_1A3F97018(uint64_t a1, void x1_0, void a3, uint64_t a4)
{
  v3 = type metadata accessor for PhotosViewBannerPreview(0, *(a1 + 16), *(a1 + 24), a4);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A5245FA4();
}

unint64_t sub_1A3F97260(uint64_t a1)
{
  result = sub_1A3F97288();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A3F97288()
{
  result = qword_1EB12F590;
  if (!qword_1EB12F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F590);
  }

  return result;
}

unint64_t sub_1A3F973E0()
{
  result = qword_1EB19C9E0;
  if (!qword_1EB19C9E0)
  {
    type metadata accessor for PersonBanner(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB19C9E0);
  }

  return result;
}

uint64_t sub_1A3F97460(uint64_t a1)
{
  result = sub_1A3F974E4();
  if (v2 <= 0x3F)
  {
    result = sub_1A5243BE4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A3F974E4()
{
  result = qword_1EB13FCC0;
  if (!qword_1EB13FCC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FCC0);
  }

  return result;
}

uint64_t sub_1A3F97578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3F975C0(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

double sub_1A3F975FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_1A3F9764C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F976B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A3F97714(double a1)
{
  result = qword_1EB12F5B0;
  if (!qword_1EB12F5B0)
  {
    sub_1A3F97810(255, &qword_1EB12F5B8, MEMORY[0x1E697F960]);
    sub_1A3F97578(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner, &unk_1A5311528);
    sub_1A3F97578(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner, &unk_1A5334D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F5B0);
  }

  return result;
}

void sub_1A3F97810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PersonSuggestionBanner(255);
    v7 = type metadata accessor for PersonActionBanner(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t String.init(forType:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_1A3F97900();
  v2 = sub_1A524C714();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_1A3F97900()
{
  result = qword_1EB12F5C0;
  if (!qword_1EB12F5C0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB12F5C0);
  }

  return result;
}

void String.firstWord.getter(uint64_t a1, unint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_1A3F97B00();
  sub_1A3D5F9DC();
  sub_1A3F97B58();

  sub_1A524DFC4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F97A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (a2)
  {
    swift_beginAccess();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A3F97B00()
{
  if (!qword_1EB12F5C8)
  {
    v0 = sub_1A524D104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12F5C8);
    }
  }
}

unint64_t sub_1A3F97B58()
{
  result = qword_1EB12F5D0;
  if (!qword_1EB12F5D0)
  {
    sub_1A3F97B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F5D0);
  }

  return result;
}

void sub_1A3F97BB0(uint64_t a1)
{
  if (!qword_1EB12F5D8)
  {
    sub_1A3C6B5B0(255, &qword_1EB12F5E0, sub_1A3F97C44, MEMORY[0x1E6981F40]);
    sub_1A3F98110();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F5D8);
    }
  }
}

void sub_1A3F97C44(uint64_t a1)
{
  if (!qword_1EB12F5E8)
  {
    sub_1A3F97CB4(255);
    sub_1A3F97F10(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12F5E8);
    }
  }
}

void sub_1A3F97CB4(uint64_t a1)
{
  if (!qword_1EB12F5F0)
  {
    sub_1A3F97D94(255);
    sub_1A3F97F8C(255, &qword_1EB12F5F8, MEMORY[0x1E69C2928], MEMORY[0x1E697F578]);
    sub_1A3F97E3C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12F5F0);
    }
  }
}

void sub_1A3F97D94(uint64_t a1)
{
  if (!qword_1EB140330)
  {
    sub_1A3F97F8C(255, &qword_1EB12F5F8, MEMORY[0x1E69C2928], MEMORY[0x1E697F578]);
    sub_1A3F97E3C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140330);
    }
  }
}

unint64_t sub_1A3F97E3C()
{
  result = qword_1EB140340;
  if (!qword_1EB140340)
  {
    sub_1A3F97F8C(255, &qword_1EB12F5F8, MEMORY[0x1E69C2928], MEMORY[0x1E697F578]);
    sub_1A3F99618(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140340);
  }

  return result;
}

void sub_1A3F97F10(uint64_t a1)
{
  if (!qword_1EB12F600)
  {
    sub_1A3F97F8C(255, &qword_1EB12F608, sub_1A3F97FF0, MEMORY[0x1E697E5E0]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F600);
    }
  }
}

void sub_1A3F97F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3F97FF0(uint64_t a1)
{
  if (!qword_1EB12F610)
  {
    sub_1A3F98058(255);
    sub_1A5249F54();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F610);
    }
  }
}

void sub_1A3F98058(uint64_t a1)
{
  if (!qword_1EB12F618)
  {
    sub_1A3F980B8();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F618);
    }
  }
}

void sub_1A3F980B8()
{
  if (!qword_1EB127AD0)
  {
    v0 = sub_1A5249C64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127AD0);
    }
  }
}

unint64_t sub_1A3F98110()
{
  result = qword_1EB12F620;
  if (!qword_1EB12F620)
  {
    sub_1A3C6B5B0(255, &qword_1EB12F5E0, sub_1A3F97C44, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F620);
  }

  return result;
}

uint64_t sub_1A3F98198@<X0>(void **a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v125 = a2;
  v128 = a3;
  v106 = sub_1A5242D14();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v103 = &v96 - v6;
  v99 = sub_1A5242264();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3F97FF0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97F8C(0, &qword_1EB12F608, sub_1A3F97FF0, MEMORY[0x1E697E5E0]);
  v130 = v10;
  v126 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v96 - v13;
  sub_1A3F97F10(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v129 = &v96 - v17;
  v121 = sub_1A5241FC4();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v117 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x1E69C27E0];
  v19 = MEMORY[0x1E69E6720];
  sub_1A3C6B5B0(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v116 = &v96 - v21;
  v118 = MEMORY[0x1E69C27A0];
  sub_1A3C6B5B0(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v19);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v115 = &v96 - v23;
  v113 = sub_1A5244084();
  v132 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A5243834();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B5B0(0, &unk_1EB129180, MEMORY[0x1E69C2060], v19);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v96 - v30;
  v110 = MEMORY[0x1E69C2928];
  sub_1A3F97F8C(0, &qword_1EB12F5F8, MEMORY[0x1E69C2928], MEMORY[0x1E697F578]);
  v33 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v96 - v34;
  sub_1A3F97D94(0);
  v112 = v36;
  v114 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F97CB4(0);
  v124 = v38;
  v123 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v122 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v131 = &v96 - v41;
  v42 = *a1;
  v135 = 0u;
  v136 = 0u;
  v137 = 1;
  v43 = sub_1A52429A4();
  (*(*(v43 - 8) + 56))(v31, 1, 1, v43);
  (*(v26 + 104))(v28, *MEMORY[0x1E69C2678], v25);
  v44 = v42;
  sub_1A5243ED4();
  v108 = v33;
  v45 = &v35[*(v33 + 36)];
  *v45 = 0;
  *(v45 + 4) = 257;
  v96 = type metadata accessor for LemonadeSharedWithYouGridCell(0);
  v107 = *(v96 + 20);
  v46 = MEMORY[0x1E69C2948];
  v47 = MEMORY[0x1E69C2948];
  v48 = v111;
  sub_1A3F99660(&qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E69C2948], v111);
  v49 = sub_1A3F97E3C();
  sub_1A524A784();
  v50 = *(v132 + 8);
  v132 += 8;
  v51 = v113;
  v50(v48, v113);
  sub_1A3C2C5F8(v35, &qword_1EB12F5F8, v110, MEMORY[0x1E697F578], sub_1A3F97F8C);
  v52 = sub_1A5243A44();
  v53 = v115;
  (*(*(v52 - 8) + 56))(v115, 1, 1, v52);
  v54 = sub_1A5243B34();
  v55 = v116;
  (*(*(v54 - 8) + 56))(v116, 1, 1, v54);
  v110 = a1;
  sub_1A3F99660(&qword_1EB128A90, v46, v47, v48);
  v56 = v117;
  sub_1A5244044();
  v50(v48, v51);
  v133 = v108;
  v134 = v49;
  swift_getOpaqueTypeConformance2();
  v57 = v112;
  v58 = v109;
  sub_1A524A6A4();
  (*(v120 + 8))(v56, v121);
  sub_1A3F994F8(v55, &unk_1EB129020, v119);
  sub_1A3F994F8(v53, &unk_1EB129030, v118);
  (*(v114 + 8))(v58, v57);
  v59 = 1;
  if ((v125 & 1) == 0)
  {
    v60 = v97;
    *v97 = 0x6567617373656DLL;
    v60[1] = 0xE700000000000000;
    v61 = v98;
    v62 = v99;
    (*(v98 + 104))(v60, *MEMORY[0x1E69C1D38], v99);
    v63 = sub_1A5242B94();
    (*(v61 + 8))(v60, v62);
    v64 = sub_1A524B434();
    v133 = v63;
    v134 = v64;
    sub_1A3F98058(0);
    sub_1A3F99568();
    v65 = v100;
    sub_1A524AAE4();

    sub_1A3C37060(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    LOBYTE(v60) = sub_1A524A094();
    *(inited + 32) = v60;
    v67 = sub_1A524A084();
    *(inited + 33) = v67;
    v68 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v60)
    {
      v68 = sub_1A524A0A4();
    }

    sub_1A524A0A4();
    if (sub_1A524A0A4() != v67)
    {
      v68 = sub_1A524A0A4();
    }

    v69 = v103;
    sub_1A3F99660(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v103);
    v70 = v105;
    v71 = v104;
    v72 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x1E69C2210], v106);
    sub_1A5242D04();
    v73 = *(v70 + 8);
    v73(v71, v72);
    v73(v69, v72);
    sub_1A5247BC4();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v102;
    sub_1A3F99878(v65, v102);
    v83 = v82 + *(v130 + 36);
    *v83 = v68;
    *(v83 + 8) = v75;
    *(v83 + 16) = v77;
    *(v83 + 24) = v79;
    *(v83 + 32) = v81;
    *(v83 + 40) = 0;
    v84 = v101;
    sub_1A3F998DC(v82, v101);
    sub_1A3F998DC(v84, v129);
    v59 = 0;
  }

  v85 = v129;
  (*(v126 + 56))(v129, v59, 1, v130);
  v86 = v123;
  v87 = *(v123 + 16);
  v88 = v122;
  v89 = v131;
  v90 = v124;
  v87(v122, v131, v124);
  v91 = v127;
  sub_1A3F99964(v85, v127);
  v92 = v128;
  v87(v128, v88, v90);
  sub_1A3F97C44(0);
  sub_1A3F99964(v91, &v92[*(v93 + 48)]);
  sub_1A3F999C8(v85);
  v94 = *(v86 + 8);
  v94(v89, v90);
  sub_1A3F999C8(v91);
  return (v94)(v88, v90);
}

void sub_1A3F99078(uint64_t a1)
{
  if (!qword_1EB12F628)
  {
    sub_1A3C6B5B0(255, &qword_1EB12F5E0, sub_1A3F97C44, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12F628);
    }
  }
}

uint64_t sub_1A3F99110@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for LemonadeSharedWithYouGridCell(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  sub_1A3C6B5B0(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = *(v3 + 24);
  *(a2 + v6) = swift_getKeyPath();
  sub_1A3C6B5B0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for LemonadeSharedWithYouGridCell(uint64_t a1)
{
  result = qword_1EB19CB90;
  if (!qword_1EB19CB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F99268()
{
  sub_1A3F97BB0(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *v0;
  v5 = PXDisplayAssetWasSavedThroughSyndication(*v0);
  *v3 = _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  v3[1] = v6;
  sub_1A3F99078(0);
  sub_1A3F98198(v0, v5, v3 + *(v7 + 44));
  v11[3] = sub_1A3DB58C8(0, v8);
  v11[0] = v4;
  sub_1A3F99618(&qword_1EB12F630, sub_1A3F97BB0, MEMORY[0x1E6981880]);
  v9 = v4;
  sub_1A524A534();
  sub_1A3CD0C64(v3);
  return sub_1A3C2C5F8(v11, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C37060);
}

void sub_1A3F993FC(uint64_t a1, uint64_t a2)
{
  sub_1A3DB58C8(319, a2);
  if (v2 <= 0x3F)
  {
    sub_1A3C6B5B0(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      sub_1A3C6B5B0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A3F994F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C6B5B0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3F99568()
{
  result = qword_1EB12F638;
  if (!qword_1EB12F638)
  {
    sub_1A3F98058(255);
    sub_1A3F99618(&qword_1EB127AD8, sub_1A3F980B8, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F638);
  }

  return result;
}

uint64_t sub_1A3F99618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A3F99660@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C6B5B0(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A3F99A24(v8, &v21 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1A3F99878(uint64_t a1, uint64_t a2)
{
  sub_1A3F97FF0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F998DC(uint64_t a1, uint64_t a2)
{
  sub_1A3F97F8C(0, &qword_1EB12F608, sub_1A3F97FF0, MEMORY[0x1E697E5E0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F99964(uint64_t a1, uint64_t a2)
{
  sub_1A3F97F10(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F999C8(uint64_t a1)
{
  sub_1A3F97F10(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F99A24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C6B5B0(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t PXAppIntentsError.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t PXAppIntentsUserPresentableError.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v3 = sub_1A5240BB4();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v62 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v62 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v62 - v33;
  v68 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v68);
  v37 = &v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v2;
  if (*(v2 + 16) <= 1u)
  {
    if (*(v2 + 16))
    {
      v54 = (v35 + 8);
      if (v38 == 1)
      {
        v55 = v19;
      }

      else
      {
        v55 = v13;
      }

      if (v38 == 2)
      {
        v56 = v16;
      }

      else
      {
        v56 = v55;
      }

      sub_1A524C5B4();
      sub_1A4896C94(v37, v57);
      (*v54)(v37, v68);
      v43 = *(v66 + 32);
      v58 = v56;
      v45 = v67;
      v43(v22, v58, v67);
      v46 = v69;
      v47 = v22;
    }

    else
    {
      v39 = (v35 + 8);
      if (v38 == 1)
      {
        v40 = v31;
      }

      else
      {
        v40 = v25;
      }

      if (v38 == 2)
      {
        v41 = v28;
      }

      else
      {
        v41 = v40;
      }

      sub_1A524C5B4();
      sub_1A4896C94(v37, v42);
      (*v39)(v37, v68);
      v43 = *(v66 + 32);
      v44 = v41;
      v45 = v67;
      v43(v34, v44, v67);
      v46 = v69;
      v47 = v34;
    }

    return (v43)(v46, v47, v45);
  }

  if (*(v2 + 16) == 2)
  {
    v48 = (v35 + 8);
    v49 = v64;
    if (v38 == 1)
    {
      v49 = v62;
    }

    if (v38 == 2)
    {
      v50 = v63;
    }

    else
    {
      v50 = v49;
    }

    sub_1A524C5B4();
    sub_1A4896C94(v37, v51);
    (*v48)(v37, v68);
    v52 = v65;
    v43 = *(v66 + 32);
    v53 = v50;
    v45 = v67;
    v43(v65, v53, v67);
    v46 = v69;
    v47 = v52;
    return (v43)(v46, v47, v45);
  }

  v60 = v35;
  sub_1A524C5B4();
  sub_1A4896C94(v37, v61);
  return (*(v60 + 8))(v37, v68);
}

void *PXAppIntentsTranslatedOrOriginalError(for:)(void *a1)
{
  v1 = a1;
  v25[0] = a1;
  v2 = a1;
  sub_1A3DBD9A0();
  type metadata accessor for PXAppIntentsNSError(0);
  if (!swift_dynamicCast())
  {
    v18 = v1;
    return v1;
  }

  sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);
  v3 = sub_1A5240B44();
  v4 = sub_1A524C674();
  if (!*(v3 + 16))
  {

    goto LABEL_12;
  }

  v6 = sub_1A3C5DCA4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  sub_1A3C2F0BC(*(v3 + 56) + 32 * v6, v25);

  sub_1A3F9ADFC(0, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v10 = 1;
    goto LABEL_14;
  }

  v10 = [v23 integerValue];
  v11 = sub_1A5240B44();
  v12 = sub_1A524C674();
  if (!*(v11 + 16))
  {

    goto LABEL_29;
  }

  v14 = sub_1A3C5DCA4(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_29:

    goto LABEL_30;
  }

  sub_1A3C2F0BC(*(v11 + 56) + 32 * v14, v25);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:

    goto LABEL_14;
  }

  if ([v23 integerValue] >= 1)
  {
    v17 = [v23 integerValue];

    goto LABEL_15;
  }

LABEL_14:
  v17 = 1;
LABEL_15:
  sub_1A5240B24();
  if (v23 <= -1003)
  {
    if (v23 == -1004 || v23 == -1003)
    {
      sub_1A523FBF4();
      sub_1A3F9A9E4(&qword_1EB12F648, MEMORY[0x1E6959D40], MEMORY[0x1E6959D50]);
      v1 = swift_allocError();
      sub_1A523FBE4();
LABEL_26:

      return v1;
    }
  }

  else
  {
    switch(v23)
    {
      case -1002:
        sub_1A3F5ADB4();
        v1 = swift_allocError();
        *v19 = v10;
        *(v19 + 8) = v17;
        v20 = 2;
        goto LABEL_23;
      case -1001:
        sub_1A3F5ADB4();
        v1 = swift_allocError();
        *v19 = v10;
        *(v19 + 8) = v17;
        v20 = 1;
LABEL_23:
        *(v19 + 16) = v20;
        goto LABEL_26;
      case -1000:
        sub_1A3F5ADB4();
        v1 = swift_allocError();
        *v21 = v10;
        *(v21 + 8) = v17;
        *(v21 + 16) = 0;
        goto LABEL_26;
    }
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000014, 0x80000001A53BF8A0);
  sub_1A5240B24();
  _s3__C4CodeOMa_0(0);
  sub_1A524E624();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3F9A624(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1A3F9A690(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1A3F9A6FC(void *a1, uint64_t a2)
{
  v4 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1A3F9A78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1A3F9A808(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F688, type metadata accessor for PXAppIntentsNSError, &unk_1A530C2CC);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A3F9A874(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F688, type metadata accessor for PXAppIntentsNSError, &unk_1A530C2CC);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A3F9A8E0(uint64_t a1)
{
  v2 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1A3F9A94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3F9A9E4(&qword_1EB12F640, type metadata accessor for PXAppIntentsNSError, &unk_1A530C3A4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1A3F9A9E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A3F9AA30()
{
  result = qword_1EB12F650;
  if (!qword_1EB12F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12F650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PXAppIntentsUserPresentableError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PXAppIntentsUserPresentableError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3F9AB20(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1A3F9AB38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A3F9ADFC(uint64_t a1, uint64_t a2)
{
  result = qword_1EB126610;
  if (!qword_1EB126610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126610);
  }

  return result;
}

uint64_t sub_1A3F9AE64()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A3C9D5A4(v1);
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A3F9AEC8(uint64_t a1)
{
  sub_1A3C9D5A4(*v1);
  sub_1A524C794();

  return result;
}

uint64_t sub_1A3F9AF1C(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A3C9D5A4(v2);
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3F9AF7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A3C9D5A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1A3F9B024()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244EB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C581A4(v1, v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(v7 + 32))(v9, v12, v6);
          v26 = 0;
          v27 = 0xE000000000000000;
          MEMORY[0x1A5907B60](0x207974696C697475, 0xE800000000000000);
          sub_1A524E624();
          v14 = v26;
          (*(v7 + 8))(v9, v6);
          return v14;
        }

        else
        {
          sub_1A3C582D4(v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          return 1801678701;
        }
      }

      v16 = *v12;
      v17 = v12[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1A524E404();

      v21 = 0x80000001A53BF940;
      v22 = 0xD00000000000001CLL;
      goto LABEL_22;
    }

    if (!EnumCaseMultiPayload)
    {
      v16 = *v12;
      v17 = v12[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1A524E404();

      v18 = "photoKitLocalIdentifier ";
LABEL_21:
      v21 = (v18 - 32) | 0x8000000000000000;
      v22 = 0xD000000000000018;
LABEL_22:
      v26 = v22;
      v27 = v21;
      MEMORY[0x1A5907B60](v16, v17);
      goto LABEL_23;
    }

    v20 = *v12;
    v26 = 0x49554764756F6C63;
    v27 = 0xEA00000000002044;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v16 = *v12;
      v17 = v12[1];
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1A524E404();

      v18 = "photoKitCloudIdentifier ";
      goto LABEL_21;
    }

    v19 = *v12;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1A524E404();

    v26 = 0xD000000000000013;
    v27 = 0x80000001A53BF920;
    v25[1] = v19;
    v20 = sub_1A524EA44();
LABEL_19:
    MEMORY[0x1A5907B60](v20);
LABEL_23:

    return v26;
  }

  if (EnumCaseMultiPayload == 7)
  {
    (*(v3 + 32))(v5, v12, v2);
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD00000000000003CLL, 0x80000001A53BF8C0);
    sub_1A3C4BBC8(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v23 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v23);

    v24 = v26;
    (*(v3 + 8))(v5, v2);
    return v24;
  }

  else if (EnumCaseMultiPayload == 8)
  {
    return 7364973;
  }

  else
  {
    return 0x736D6574496C6C61;
  }
}

uint64_t sub_1A3F9B534(uint64_t a1)
{
  v2 = sub_1A3C4BD3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B570(uint64_t a1)
{
  v2 = sub_1A3C4BD3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B5AC(uint64_t a1)
{
  v2 = sub_1A3C3E2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B5E8(uint64_t a1)
{
  v2 = sub_1A3C3E2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B624(uint64_t a1)
{
  v2 = sub_1A3C3E5E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B660(uint64_t a1)
{
  v2 = sub_1A3C3E5E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B6CC(uint64_t a1)
{
  v2 = sub_1A3C3DB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B708(uint64_t a1)
{
  v2 = sub_1A3C3DB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B744()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_1A3F9B780(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A53BFA30 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

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

uint64_t sub_1A3F9B860(uint64_t a1)
{
  v2 = sub_1A3C3D884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B89C(uint64_t a1)
{
  v2 = sub_1A3C3D884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B8DC(uint64_t a1)
{
  v2 = sub_1A3C4C5B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B918(uint64_t a1)
{
  v2 = sub_1A3C4C5B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B954(uint64_t a1)
{
  v2 = sub_1A3C4D450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9B990(uint64_t a1)
{
  v2 = sub_1A3C4D450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9B9CC(uint64_t a1)
{
  v2 = sub_1A3C3D7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BA08(uint64_t a1)
{
  v2 = sub_1A3C3D7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BA44(uint64_t a1)
{
  v2 = sub_1A3C3DE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BA80(uint64_t a1)
{
  v2 = sub_1A3C3DE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BABC(uint64_t a1)
{
  v2 = sub_1A3C3D5C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BAF8(uint64_t a1)
{
  v2 = sub_1A3C3D5C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1A3F9BB34(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A3F9BBB4(uint64_t a1)
{
  v2 = sub_1A3C3DD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9BBF0(uint64_t a1)
{
  v2 = sub_1A3C3DD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9BC2C(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_1A3C3BB98(0, &qword_1EB1262E0, sub_1A3C4BD3C, &type metadata for LemonadeBookmark.CollectionIdentifier.AllItemsCodingKeys, MEMORY[0x1E69E6F58]);
  v98 = v3;
  v96 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v67 - v4;
  sub_1A3C3BB98(0, &qword_1EB126310, sub_1A3C3D5C8, &type metadata for LemonadeBookmark.CollectionIdentifier.TripMiddleDateIdentifierCodingKeys, v2);
  v100 = *(v5 - 8);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v67 - v6;
  v99 = sub_1A5241144();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v93 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C3BB98(0, &qword_1EB126320, sub_1A3C4C5B8, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitCloudIdentifierCodingKeys, v2);
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v67 - v9;
  sub_1A3C3BB98(0, &qword_1EB1262D0, sub_1A3C3D7D8, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitSmartAlbumCodingKeys, v2);
  v87 = v10;
  v86 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v67 - v11;
  sub_1A3C3BB98(0, &qword_1EB1262F0, sub_1A3C3D884, &type metadata for LemonadeBookmark.CollectionIdentifier.MockCodingKeys, v2);
  v88 = *(v12 - 8);
  v89 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v67 - v13;
  sub_1A3C3BB98(0, &qword_1EB1262F8, sub_1A3C3DB20, &type metadata for LemonadeBookmark.CollectionIdentifier.MapCodingKeys, v2);
  v79 = v14;
  v77 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v67 - v15;
  sub_1A3C3BB98(0, &qword_1EB1262E8, sub_1A3C3DD34, &type metadata for LemonadeBookmark.CollectionIdentifier.UtilityCodingKeys, v2);
  v83 = v16;
  v82 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v67 - v17;
  v81 = sub_1A5244EB4();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C3BB98(0, &qword_1EB126308, sub_1A3C3DE58, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitTransientIdentifierCodingKeys, v2);
  v74 = v19;
  v73 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v67 - v20;
  sub_1A3C3BB98(0, &qword_1EB1262D8, sub_1A3C3E2A0, &type metadata for LemonadeBookmark.CollectionIdentifier.CloudGUIDCodingKeys, v2);
  v71 = v21;
  v70 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v67 - v22;
  sub_1A3C3BB98(0, &qword_1EB126318, sub_1A3C4D450, &type metadata for LemonadeBookmark.CollectionIdentifier.PhotoKitLocalIdentifierCodingKeys, v2);
  v68 = v23;
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C3BB98(0, &qword_1EB126300, sub_1A3C3E5E0, &type metadata for LemonadeBookmark.CollectionIdentifier.CodingKeys, v2);
  v30 = *(v29 - 8);
  v103 = v29;
  v104 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v67 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C3E5E0();
  v33 = v32;
  sub_1A524ED34();
  sub_1A3C581A4(v102, v28, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v35 = v32;
      if (!EnumCaseMultiPayload)
      {
        LOBYTE(v107) = 0;
        sub_1A3C4D450();
        v47 = v103;
        sub_1A524E944();
        v48 = v68;
        sub_1A524E994();

        (*(v67 + 8))(v25, v48);
        return (*(v104 + 8))(v32, v47);
      }

      LOBYTE(v107) = 1;
      sub_1A3C3E2A0();
      v54 = v69;
      v52 = v103;
      sub_1A524E944();
      v55 = v71;
      sub_1A524E994();

      v56 = &v102;
    }

    else
    {
      v35 = v32;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v36 = v80;
          v37 = v76;
          v38 = v28;
          v39 = v81;
          (*(v80 + 32))(v76, v38, v81);
          LOBYTE(v107) = 3;
          sub_1A3C3DD34();
          v40 = v78;
          v41 = v103;
          sub_1A524E944();
          sub_1A3C4BBC8(&qword_1EB124C18, MEMORY[0x1E69C1278], MEMORY[0x1E69C1280]);
          v42 = v83;
          sub_1A524E9D4();
          (*(v82 + 8))(v40, v42);
          (*(v36 + 8))(v37, v39);
          v43 = *(v104 + 8);
          v44 = v35;
LABEL_16:
          v62 = v41;
          return v43(v44, v62);
        }

        v63 = v28[2];
        LOBYTE(v107) = 5;
        sub_1A3C3D884();
        v54 = v85;
        v52 = v103;
        sub_1A524E944();
        LOBYTE(v107) = 0;
        v55 = v89;
        v64 = v105;
        sub_1A524E994();

        if (!v64)
        {
          v107 = v63;
          v106 = 1;
          sub_1A3E57C60();
          sub_1A524E9D4();
        }

        v66 = v88;
        goto LABEL_26;
      }

      LOBYTE(v107) = 2;
      sub_1A3C3DE58();
      v54 = v72;
      v52 = v103;
      sub_1A524E944();
      v55 = v74;
      sub_1A524E994();

      v56 = &v105;
    }

    v66 = *(v56 - 32);
LABEL_26:
    (*(v66 + 8))(v54, v55);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    v35 = v32;
    if (EnumCaseMultiPayload == 5)
    {
      v50 = *v28;
      LOBYTE(v107) = 6;
      sub_1A3C3D7D8();
      v51 = v84;
      v52 = v103;
      sub_1A524E944();
      v107 = v50;
      sub_1A3FA07D4();
      v53 = v87;
      sub_1A524E9D4();
      (*(v86 + 8))(v51, v53);
LABEL_27:
      v43 = *(v104 + 8);
      v44 = v35;
      v62 = v52;
      return v43(v44, v62);
    }

    LOBYTE(v107) = 7;
    sub_1A3C4C5B8();
    v54 = v90;
    v52 = v103;
    sub_1A524E944();
    v55 = v92;
    sub_1A524E994();

    v66 = v91;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v57 = v97;
    v58 = v93;
    v59 = v99;
    (*(v97 + 32))(v93, v28, v99);
    LOBYTE(v107) = 8;
    sub_1A3C3D5C8();
    v60 = v95;
    v41 = v103;
    sub_1A524E944();
    sub_1A3C4BBC8(&qword_1EB1387C0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    v61 = v101;
    sub_1A524E9D4();
    (*(v100 + 8))(v60, v61);
    (*(v57 + 8))(v58, v59);
    v43 = *(v104 + 8);
    v44 = v33;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 8)
  {
    LOBYTE(v107) = 4;
    sub_1A3C3DB20();
    v45 = v75;
    v46 = v103;
    sub_1A524E944();
    (*(v77 + 8))(v45, v79);
  }

  else
  {
    LOBYTE(v107) = 9;
    sub_1A3C4BD3C();
    v65 = v94;
    v46 = v103;
    sub_1A524E944();
    (*(v96 + 8))(v65, v98);
  }

  return (*(v104 + 8))(v32, v46);
}

void sub_1A3F9CC00(uint64_t a1)
{
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5244EB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C581A4(v1, v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v15 = 7;
        goto LABEL_21;
      }

      v16 = *v12;
      MEMORY[0x1A590A010](6);
      v14 = v16;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        (*(v3 + 32))(v5, v12, v2);
        MEMORY[0x1A590A010](8);
        sub_1A3C4BBC8(&qword_1EB12F6B0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
        sub_1A524C4B4();
        (*(v3 + 8))(v5, v2);
        return;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v14 = 4;
      }

      else
      {
        v14 = 9;
      }
    }

    MEMORY[0x1A590A010](v14);
    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v15 = EnumCaseMultiPayload != 0;
LABEL_21:
    MEMORY[0x1A590A010](v15);
    sub_1A524C794();

    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v15 = 2;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 3)
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x1A590A010](3);
    sub_1A3C4BBC8(&qword_1EB12F6B8, MEMORY[0x1E69C1278], MEMORY[0x1E69C1288]);
    sub_1A524C4B4();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v17 = v12[2];
    MEMORY[0x1A590A010](5);
    sub_1A524C794();

    v18 = 0.0;
    if (v17 != 0.0)
    {
      v18 = v17;
    }

    MEMORY[0x1A590A040](*&v18);
  }
}

uint64_t sub_1A3F9CFDC()
{
  sub_1A524EC94();
  sub_1A3F9CC00(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9D020(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A3F9CC00(v2);
  return sub_1A524ECE4();
}

void LemonadeBookmark.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1A3F9D0E8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for LemonadeBookmark(0);
  if (sub_1A3CA1BC4(v1 + *(v4 + 24), a1 + *(v4 + 24)))
  {
    v5 = sub_1A3C9D5A4(*(v1 + 16));
    v7 = v6;
    if (v5 == sub_1A3C9D5A4(v3) && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1A524EAB4();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1A3F9D198(unsigned __int8 a1, uint64_t a2)
{
  v5 = type metadata accessor for LemonadeBookmark(0);
  if (sub_1A3CA1BC4(v2 + *(v5 + 24), a2))
  {
    v6 = sub_1A3C9D5A4(*(v2 + 16));
    v8 = v7;
    if (v6 == sub_1A3C9D5A4(a1) && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1A524EAB4();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1A3F9D248(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C61765FLL && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1A3F9D2CC(uint64_t a1)
{
  v2 = sub_1A3C57EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9D308(uint64_t a1)
{
  v2 = sub_1A3C57EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3F9D344(void *a1)
{
  sub_1A3C3BB98(0, &qword_1EB1262C8, sub_1A3C57EE8, &type metadata for LemonadeBookmark.PhotoKitSmartAlbumSubtype.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C57EE8();
  sub_1A524ED34();
  sub_1A524E9C4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t LemonadeBookmark.description.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000014, 0x80000001A53BF9B0);
  MEMORY[0x1A5907B60](*v0, *(v0 + 8));
  MEMORY[0x1A5907B60](0x3A646E696B20, 0xE600000000000000);
  v1 = sub_1A3C9D5A4(*(v0 + 16));
  MEMORY[0x1A5907B60](v1);

  MEMORY[0x1A5907B60](0xD000000000000016, 0x80000001A53BF9D0);
  type metadata accessor for LemonadeBookmark(0);
  v2 = sub_1A3F9B024();
  MEMORY[0x1A5907B60](v2);

  return 0;
}

uint64_t static LemonadeBookmark.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = sub_1A3C9D5A4(*(a1 + 16));
  v8 = v7;
  if (v6 == sub_1A3C9D5A4(v5) && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1A524EAB4();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(type metadata accessor for LemonadeBookmark(0) + 24);

  return sub_1A3CA1BC4(a1 + v13, a2 + v13);
}

uint64_t sub_1A3F9D6A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A3FA0A08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A3F9D6CC(uint64_t a1)
{
  v2 = sub_1A3C4B384();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3F9D708(uint64_t a1)
{
  v2 = sub_1A3C4B384();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LemonadeBookmark.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A3C3BB98(0, &qword_1EB126328, sub_1A3C4B384, &type metadata for LemonadeBookmark.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3C4B384();
  sub_1A524ED34();
  v15 = 0;
  sub_1A524E994();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v13 = 1;
    sub_1A3FA0948();
    sub_1A524E9D4();
    type metadata accessor for LemonadeBookmark(0);
    v12 = 2;
    type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    sub_1A3C4BBC8(&qword_1EB12A598, type metadata accessor for LemonadeBookmark.CollectionIdentifier, &unk_1A530C588);
    sub_1A524E9D4();
  }

  return (*(v7 + 8))(v9, v6);
}

void LemonadeBookmark.hash(into:)(uint64_t a1)
{
  sub_1A524C794();
  sub_1A3C9D5A4(*(v1 + 16));
  sub_1A524C794();

  type metadata accessor for LemonadeBookmark(0);
  sub_1A3F9CC00(a1);
}

uint64_t LemonadeBookmark.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  type metadata accessor for LemonadeBookmark(0);
  sub_1A3F9CC00(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9DA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = type metadata accessor for LemonadeBookmark(0);
  return sub_1A3C5806C(a4, a5 + *(v7 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
}

uint64_t sub_1A3F9DAD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = sub_1A3C9D5A4(*(a1 + 16));
  v10 = v9;
  if (v8 == sub_1A3C9D5A4(v7) && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1A524EAB4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a3 + 24);

  return sub_1A3CA1BC4(a1 + v15, a2 + v15);
}

uint64_t sub_1A3F9DBCC()
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A3C9D5A4(*(v0 + 16));
  sub_1A524C794();

  sub_1A3F9CC00(v2);
  return sub_1A524ECE4();
}

void sub_1A3F9DC54(uint64_t a1)
{
  sub_1A524C794();
  sub_1A3C9D5A4(*(v1 + 16));
  sub_1A524C794();

  sub_1A3F9CC00(a1);
}

uint64_t sub_1A3F9DCC0(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();
  sub_1A3C9D5A4(*(v1 + 16));
  sub_1A524C794();

  sub_1A3F9CC00(v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F9DD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  sub_1A3FA099C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1A3F9E010(a3, v10);
  __swift_destroy_boxed_opaque_existential_0(a3);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {

    sub_1A3C2C658(v10, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720], sub_1A3CA0974);
    v19 = type metadata accessor for LemonadeBookmark(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    sub_1A3C5806C(v10, v18, sub_1A3FA099C);
    v21 = *v18;
    sub_1A3C5806C(v18, v15, sub_1A3FA099C);
    v22 = *(v12 + 48);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v21;
    v23 = type metadata accessor for LemonadeBookmark(0);
    sub_1A3C5806C(&v15[v22], a4 + *(v23 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  }
}

uint64_t sub_1A3F9E010@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v23 - v5);
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C341C8(a1, v24);
  sub_1A3C652C8(0, &qword_1EB128C70, off_1E77211E8, 1);
  sub_1A3C652C8(0, &qword_1EB1292C8, MEMORY[0x1E69C1DB8], 1);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v11 = a1[3];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    PhotosModel.collectionKind.getter(v11, v24);
    v12 = v24[0];
    if (v24[0] != 24)
    {
      v13 = a1[3];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      v14 = PhotosModel.photokitObject.getter(v13);
      if (v14)
      {
        v15 = v14;
        sub_1A3F9F66C(v14, v6);
      }

      else
      {
        sub_1A3C341C8(a1, v24);
        sub_1A3C652C8(0, &qword_1EB12F710, MEMORY[0x1E69C2900], 1);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v23);
          swift_storeEnumTagMultiPayload();
          (*(v8 + 56))(v6, 0, 1, v7);
        }

        else
        {
          (*(v8 + 56))(v6, 1, 1, v7);
        }
      }

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1A3C2C658(v6, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720], sub_1A3CA0974);
      }

      else
      {
        sub_1A3C5806C(v6, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        v24[0] = v12;
        v16 = sub_1A3FA0B20(v24, v10);
        if (v16 != 11)
        {
          v19 = v16;
          sub_1A3FA099C(0);
          v21 = v20;
          v22 = *(v20 + 48);
          *a2 = v19;
          sub_1A3C5806C(v10, &a2[v22], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
        }

        sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      }
    }
  }

  sub_1A3FA099C(0);
  return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t sub_1A3F9E430()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v4 = sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1A3F9E50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  sub_1A3FA099C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  sub_1A3F9E7D0(a3, v10);

  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {

    sub_1A3C2C658(v10, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720], sub_1A3CA0974);
    v19 = type metadata accessor for LemonadeBookmark(0);
    return (*(*(v19 - 8) + 56))(a4, 1, 1, v19);
  }

  else
  {
    sub_1A3C5806C(v10, v18, sub_1A3FA099C);
    v21 = *v18;
    sub_1A3C5806C(v18, v15, sub_1A3FA099C);
    v22 = *(v12 + 48);
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = v21;
    v23 = type metadata accessor for LemonadeBookmark(0);
    sub_1A3C5806C(&v15[v22], a4 + *(v23 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    return (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
  }
}

uint64_t sub_1A3F9E7D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A3CA0974(0, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v7 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  PHObject.photosPickerCollectionType.getter(&v23);
  v11 = v23;
  if (v23 != 24)
  {
    sub_1A3F9F66C(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1A3C2C658(v6, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720], sub_1A3CA0974);
    }

    else
    {
      sub_1A3C5806C(v6, v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      v22 = v11;
      v15 = sub_1A3FA0B20(&v22, v10);
      if (v15 != 11)
      {
        v17 = v15;
        sub_1A3FA099C(0);
        v19 = v18;
        v20 = *(v18 + 48);
        *a2 = v17;
        sub_1A3C5806C(v10, &a2[v20], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        return (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
      }

      sub_1A3C582D4(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    }

    sub_1A3FA099C(0);
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  sub_1A3FA099C(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, 1, 1, v12);
}

id sub_1A3F9EAF8(void *a1)
{
  v3 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for LemonadeBookmark(0) + 24);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1A3CA1BC4(v1 + v6, v5);
  sub_1A3C582D4(v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v7 & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    v8 = sub_1A3CA1BC4(v1 + v6, v5);
    sub_1A3C582D4(v5, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = [a1 px_virtualCollections];
  v10 = v9;
  v11 = *(v1 + 16);
  v12 = &selRef_px_rootAlbumCollectionList;
  v13 = &selRef_sharedAlbumsCollectionList;
  v14 = &selRef_featuredPhotosCollection;
  if (v11 != 9)
  {
    v14 = &selRef_mapCollection;
  }

  if (v11 != 8)
  {
    v13 = v14;
  }

  v15 = &selRef_mediaTypesCollectionList;
  if (v11 != 6)
  {
    v15 = &selRef_utilitiesCollectionList;
  }

  if (*(v1 + 16) <= 7u)
  {
    v13 = v15;
  }

  v16 = &selRef_peopleCollection;
  if ((v11 - 4) >= 2)
  {
    v16 = &selRef_eventsCollection;
  }

  v17 = &selRef_tripsCollection;
  if (v11 != 1)
  {
    v17 = &selRef_memoriesCollection;
  }

  if (*(v1 + 16))
  {
    v12 = v17;
    v18 = v9;
  }

  else
  {
    v18 = a1;
  }

  if (*(v1 + 16) <= 2u)
  {
    v19 = v18;
  }

  else
  {
    v12 = v16;
    v19 = v9;
  }

  if (*(v1 + 16) <= 5u)
  {
    v20 = v12;
  }

  else
  {
    v20 = v13;
  }

  if (*(v1 + 16) <= 5u)
  {
    v9 = v19;
  }

  v21 = [v9 *v20];

  return v21;
}

void *sub_1A3F9ECF0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A3CA0974(0, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v51 - v3);
  v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CA0974(0, &qword_1EB125B40, sub_1A3FA099C, v1);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - v8;
  sub_1A3FA099C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v51 - v15;
  v64 = sub_1A52411C4();
  v16 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for LemonadeBookmark(0);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v54 = (&v51 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v62 = &v51 - v23;
  v53 = sub_1A5240C64();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_1A5240C74();
  sub_1A5240C54();
  if (v73)
  {
    v65 = (v69 + 6);
    v69 = (v12 + 56);
    v70 = (v16 + 8);
    v59 = (v12 + 48);
    v60 = v6;
    v66 = MEMORY[0x1E69E7CC0];
    v26 = &qword_1EB1265D0;
    v27 = v64;
    v61 = v4;
    v68 = v25;
    while (1)
    {
      sub_1A3C57128(&v72, v74);
      sub_1A3C2F0BC(v74, &v72);
      sub_1A3C52C70(0, v26, 0x1E6978958);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v74);
LABEL_4:
      sub_1A5240C54();
      if (!v73)
      {
        goto LABEL_24;
      }
    }

    v28 = v26;
    v29 = v71;
    sub_1A52411B4();
    v30 = sub_1A5241164();
    v32 = v31;
    (*v70)(v18, v27);
    PHObject.photosPickerCollectionType.getter(&v72);
    v33 = v72;
    if (v72 == 24)
    {
    }

    else
    {
      sub_1A3F9F66C(v29, v4);
      if ((*v65)(v4, 1, v67) != 1)
      {
        v34 = v9;
        v35 = v60;
        sub_1A3C5806C(v4, v60, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        LOBYTE(v72) = v33;
        v36 = sub_1A3FA0B20(&v72, v35);

        if (v36 == 11)
        {
          sub_1A3C582D4(v35, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v37 = 1;
        }

        else
        {
          v38 = *(v11 + 48);
          *v34 = v36;
          sub_1A3C5806C(v35, &v34[v38], type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v37 = 0;
        }

        (*v69)(v34, v37, 1, v11);
        v9 = v34;
        if ((*v59)(v34, 1, v11) != 1)
        {
          v39 = v34;
          v40 = v57;
          sub_1A3C5806C(v39, v57, sub_1A3FA099C);
          v41 = *v40;
          v42 = v40;
          v43 = v58;
          sub_1A3C5806C(v42, v58, sub_1A3FA099C);
          v44 = *(v11 + 48);
          v45 = v54;
          *v54 = v30;
          *(v45 + 8) = v32;
          *(v45 + 16) = v41;
          sub_1A3C5806C(v43 + v44, v45 + *(v56 + 24), type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v46 = v62;
          sub_1A3C5806C(v45, v62, type metadata accessor for LemonadeBookmark);
          sub_1A3C581A4(v46, v63, type metadata accessor for LemonadeBookmark);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1A3FA05D8(0, v66[2] + 1, 1, v66);
          }

          v48 = v66[2];
          v47 = v66[3];
          v4 = v61;
          v27 = v64;
          if (v48 >= v47 >> 1)
          {
            v66 = sub_1A3FA05D8((v47 > 1), v48 + 1, 1, v66);
          }

          sub_1A3C582D4(v62, type metadata accessor for LemonadeBookmark);
          __swift_destroy_boxed_opaque_existential_0(v74);
          v49 = v66;
          v66[2] = v48 + 1;
          sub_1A3C5806C(v63, v49 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v48, type metadata accessor for LemonadeBookmark);
          goto LABEL_12;
        }

        v4 = v61;
        v27 = v64;
LABEL_11:
        __swift_destroy_boxed_opaque_existential_0(v74);
        sub_1A3C2C658(v9, &qword_1EB125B40, sub_1A3FA099C, MEMORY[0x1E69E6720], sub_1A3CA0974);
LABEL_12:
        v26 = v28;
        v25 = v68;
        goto LABEL_4;
      }

      sub_1A3C2C658(v4, &qword_1EB125B50, type metadata accessor for LemonadeBookmark.CollectionIdentifier, MEMORY[0x1E69E6720], sub_1A3CA0974);
    }

    (*v69)(v9, 1, 1, v11);
    goto LABEL_11;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_24:
  (*(v52 + 8))(v25, v53);
  sub_1A3C2C658(&v72, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C371F0);
  return v66;
}

uint64_t sub_1A3F9F66C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v90 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1A3CA0974(0, &qword_1EB124C08, MEMORY[0x1E69C1278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = &v81 - v5;
  v6 = sub_1A5244EB4();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3CA0974(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v81 - v9;
  v11 = sub_1A5241144();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5246F24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 localIdentifier];
  v20 = sub_1A524C674();
  v22 = v21;

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;

    v25 = [v24 cloudGUID];
LABEL_3:
    v26 = v25;
    v27 = sub_1A524C674();
    v29 = v28;

    v30 = v90;
    *v90 = v27;
    v30[1] = v29;
    v31 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    swift_storeEnumTagMultiPayload();
    v32 = *(*(v31 - 8) + 56);

    return v32(v30, 0, 1, v31);
  }

  v82 = v13;
  v83 = v18;
  v34 = v89;
  v84 = v22;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  v36 = a1;
  if (!v35)
  {
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (v50 && (v51 = v50, sub_1A5244D04(), v91[3] = sub_1A3C52C70(0, &qword_1EB126AA0, 0x1E69789F0), v91[0] = v51, v52 = a1, v53 = sub_1A5244E84(), __swift_destroy_boxed_opaque_existential_0(v91), (v53 & 1) != 0))
    {
      sub_1A5244E64();
      sub_1A5244E44();
      v54 = v86;
      v55 = v11;
      if ((*(v86 + 48))(v10, 1, v11) != 1)
      {

        v75 = *(v54 + 32);
        v76 = v82;
        v75(v82, v10, v55);
        v77 = v90;
        v75(v90, v76, v55);
        v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
        swift_storeEnumTagMultiPayload();
        v73 = *(*(v67 - 8) + 56);
        v74 = v77;
        return v73(v74, 0, 1, v67);
      }

      sub_1A3C2C658(v10, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3CA0974);
      v56 = v90;
    }

    else
    {
      objc_opt_self();
      v57 = swift_dynamicCastObjCClass();
      if (v57)
      {
        v58 = v57;
        sub_1A3FA00DC(v57, v34);
        v60 = v87;
        v59 = v88;
        if ((*(v87 + 48))(v34, 1, v88) != 1)
        {

          v71 = *(v60 + 32);
          v72 = v85;
          v71(v85, v34, v59);
          v56 = v90;
          v71(v90, v72, v59);
          v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
          goto LABEL_27;
        }

        sub_1A3C2C658(v34, &qword_1EB124C08, MEMORY[0x1E69C1278], MEMORY[0x1E69E6720], sub_1A3CA0974);
        v61 = [v58 transientIdentifier];
        v62 = v84;
        if (v61)
        {
          v63 = v61;

          v64 = sub_1A524C674();
          v66 = v65;

          if (![v58 px_isMapVirtualCollection])
          {
            v78 = [v58 px_isFeaturedPhotosCollection];
            v79 = v90;
            if ((v78 & 1) != 0 || ([v58 px_isPeopleVirtualCollection] & 1) != 0 || (objc_msgSend(v58, sel_px_isTripsVirtualCollection) & 1) != 0 || objc_msgSend(v58, sel_px_isMemoriesVirtualCollection))
            {

              v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
            }

            else
            {
              *v79 = v64;
              v79[1] = v66;
              v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
            }

            swift_storeEnumTagMultiPayload();
            v73 = *(*(v67 - 8) + 56);
            v74 = v79;
            return v73(v74, 0, 1, v67);
          }

          v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
          v56 = v90;
          goto LABEL_27;
        }

        if ([v58 assetCollectionType] == 2 && objc_msgSend(v58, sel_assetCollectionSubtype) != 1000000204)
        {

          v80 = [v58 assetCollectionSubtype];
          v56 = v90;
          *v90 = v80;
          v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
          goto LABEL_27;
        }

        v56 = v90;
        *v90 = v20;
        v56[1] = v62;
        goto LABEL_25;
      }

      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      v56 = v90;
      if (v68)
      {
        v69 = v68;
        if (([v68 px_isTopLevelFolder] & 1) != 0 || objc_msgSend(v69, sel_isTransient))
        {

          v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v73 = *(*(v67 - 8) + 56);
          v74 = v56;
          return v73(v74, 0, 1, v67);
        }
      }
    }

    v70 = v84;
    *v56 = v20;
    v56[1] = v70;
LABEL_25:
    v67 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
    goto LABEL_27;
  }

  v37 = v35;

  v25 = [v37 scopeIdentifier];
  if (v25)
  {
    goto LABEL_3;
  }

  v38 = sub_1A3C56D80();
  v39 = v83;
  v40 = v14;
  (*(v15 + 16))(v83, v38, v14);
  v41 = v36;
  v42 = sub_1A5246F04();
  v43 = sub_1A524D244();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v44 = 136446210;
    v45 = [v37 uuid];
    v46 = sub_1A524C674();
    v48 = v47;

    sub_1A3C2EF94(v46, v48, v91);
  }

  (*(v15 + 8))(v39, v40);
  v49 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  return (*(*(v49 - 8) + 56))(v90, 1, 1, v49);
}