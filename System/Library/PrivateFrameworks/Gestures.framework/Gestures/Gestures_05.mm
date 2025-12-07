uint64_t sub_18E6CB950(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PanComponent.upstream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v99 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v7 = type metadata accessor for EventSource(255, *(a1 + 16), v6, a2);
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for DynamicCombinerComponent(255, v7, WitnessTable, v9);
  v11 = swift_getWitnessTable();
  v13 = type metadata accessor for TimeoutComponent(255, v10, v11, v12);
  v14 = swift_getWitnessTable();
  v15 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v15, v16, v17);
  v18 = swift_getWitnessTable();
  v19 = type metadata accessor for ExpirationComponent(255, v13, v14, v18);
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = *(v5 + 16);
  v109 = v19;
  v110 = v20;
  v111 = v21;
  v112 = v22;
  v23 = type metadata accessor for SeparationDistanceGate(255, &v109);
  v24 = swift_getWitnessTable();
  v25 = *(v6 + 8);
  v109 = v23;
  v110 = v24;
  v111 = v21;
  v112 = v22;
  v113 = v25;
  v26 = type metadata accessor for StationaryLocationFilter(255, &v109);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v28 = swift_getWitnessTable();
  v29 = type metadata accessor for MapComponent(0, v26, v27, v28);
  v96 = *(v29 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v95 = &v73 - v31;
  v108[0] = v30;
  v108[1] = type metadata accessor for ScrollPositionListener(255, *(a1 + 24), *(a1 + 40), v32);
  v97 = v29;
  v89 = swift_getWitnessTable();
  v107[0] = v89;
  v107[1] = &off_1EE4C9C68;
  v109 = 2;
  v110 = v108;
  v98 = v27;
  v111 = v27;
  v112 = v107;
  v33 = type metadata accessor for CombinerComponent(0, &v109);
  v93 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v92 = &v73 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v36 = swift_getWitnessTable();
  v94 = v33;
  v88 = v35;
  v86 = v36;
  v37 = type metadata accessor for ReduceComponent(0, v33, v35, v36);
  v90 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v87 = &v73 - v38;
  v39 = swift_getWitnessTable();
  v40 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v91 = v37;
  v84 = v39;
  v82 = v40;
  v41 = type metadata accessor for ThresholdComponent(0, v37, v39, v40);
  v85 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v83 = &v73 - v42;
  v43 = swift_getWitnessTable();
  v44 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  v76 = v41;
  v109 = v41;
  v110 = v43;
  v80 = v43;
  v79 = v44;
  v111 = v44;
  v112 = &off_1F01A6538;
  v45 = type metadata accessor for VelocityComponent(0, &v109);
  v81 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v78 = &v73 - v46;
  v77 = swift_getWitnessTable();
  v47 = type metadata accessor for MapComponent(255, v45, &type metadata for PanComponentValue, v77);
  v48 = sub_18E72B438();
  v49 = *(v48 - 8);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v52 = &v73 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v73 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v3;
  (*(v55 + 16))(v54, v3, a1);
  v57 = a1;
  v58 = v48;
  (*(v49 + 32))(v52, &v54[*(a1 + 84)], v48);
  v59 = *(v47 - 8);
  if ((*(v59 + 48))(v52, 1, v47) != 1)
  {
    return (*(v59 + 32))(v99, v52, v47);
  }

  v75 = *(v49 + 8);
  v74 = v58;
  v75(v52, v58);
  v60 = v95;
  v73 = v57;
  v61 = v56;
  sub_18E6CC4C8(v57, v62, v95);
  v106[0] = v60;
  sub_18E6CCAF4(&v105);
  v106[1] = &v105;
  v109 = 0;
  v110 = 0;
  v111 = sub_18E6CCB98;
  v112 = 0;
  v113 = sub_18E702EC0;
  v114 = 0;
  v104[0] = v89;
  v104[1] = &off_1EE4C9C68;
  v63 = v92;
  sub_18E6E7084(v106, 1, &v109, 2uLL, v108, v98, v104, v92);
  (*(v96 + 8))(v60, v97);
  v101 = MEMORY[0x1E69E7CD0];
  v102 = 0u;
  v103 = 0u;
  v64 = v87;
  v65 = v94;
  sub_18E6B89C8(&v101, sub_18E6CCCD0, 0, v94, v88, v86, v87);
  (*(v93 + 8))(v63, v65);
  v100 = *v56;
  v66 = v83;
  v67 = v91;
  sub_18E713918(&v100, v91, v84, v82, v83);
  (*(v90 + 8))(v64, v67);
  v68 = v78;
  v69 = v76;
  sub_18E705CA0(v76, v80, v79, &off_1F01A6538, 0.75, v78);
  (*(v85 + 8))(v66, v69);
  v70 = v99;
  sub_18E7131EC(sub_18E6CCEC8, 0, v45, &type metadata for PanComponentValue, v77, v99);
  (*(v81 + 8))(v68, v45);
  v71 = *(v73 + 21);
  v75(&v61[v71], v74);
  (*(v59 + 16))(&v61[v71], v70, v47);
  return (*(v59 + 56))(&v61[v71], 0, 1, v47);
}

uint64_t sub_18E6CC4C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v74 = a3;
  v71 = "Failure requirement";
  v72 = a1 + 3;
  v73 = a1 + 5;
  v5 = a1[2];
  v6 = *(a1[4] + 8);
  v67 = a1[4];
  v7 = v67;
  v8 = type metadata accessor for EventSource(255, v5, v6, a2);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(0, v8, WitnessTable, v10);
  v68 = v11;
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v66 = (&v53 - v12);
  v69 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v69, v13);
  v15 = swift_getWitnessTable();
  v57 = v5;
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(0, v14, v15, v19);
  v65 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v61 = &v53 - v21;
  v22 = swift_getWitnessTable();
  v60 = v22;
  v23 = swift_getWitnessTable();
  v24 = *(v7 + 16);
  v77 = v20;
  v78 = v22;
  v79 = v23;
  v80 = v24;
  v25 = v23;
  v56 = v23;
  v26 = v24;
  v55 = v24;
  v27 = type metadata accessor for SeparationDistanceGate(0, &v77);
  v62 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  v58 = swift_getWitnessTable();
  v59 = *(v6 + 8);
  v77 = v27;
  v78 = v58;
  v79 = v25;
  v80 = v26;
  v81 = v59;
  v30 = type metadata accessor for StationaryLocationFilter(0, &v77);
  v31 = *(v30 - 8);
  v63 = v30;
  v64 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v54 = &v53 - v32;
  sub_18E6BCAE4(&v77);
  v75 = v77;
  v76 = v78;
  v33 = v4;
  v34 = *(v4 + 32);
  v35 = *(v33 + 40);
  LODWORD(v5) = *(v33 + 48);
  swift_getAssociatedTypeWitness();
  v36 = sub_18E701540();
  v52 = WitnessTable;
  v37 = v66;
  sub_18E6D7C3C(&v75, v34, v35, 0, 1, v5, v36, v38, v66, v8, v52);

  v39 = v61;
  v40 = v68;
  sub_18E721B58(*(v33 + 16), *(v33 + 24), 0xD000000000000013, v71 | 0x8000000000000000, v68, v69, v61);
  (*(v70 + 8))(v37, v40);
  v41 = v56;
  v42 = v55;
  sub_18E71D170(v20, v60, v56, v55, v29, *(v33 + 8));
  (*(v65 + 8))(v39, v20);
  if (*(v33 + 51))
  {
    v43 = 1;
  }

  else
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v44 = v54;
  sub_18E6D9B28(v43, 0x7FFFFFFFFFFFFFFFLL, v27, v58, v41, v42, v59, v54);
  (*(v62 + 8))(v29, v27);
  v45 = swift_allocObject();
  *&v46 = v57;
  *(&v46 + 1) = *v72;
  *&v47 = v67;
  *(&v47 + 1) = *v73;
  *(v45 + 16) = v46;
  *(v45 + 32) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v49 = v63;
  v50 = swift_getWitnessTable();
  sub_18E7131EC(sub_18E6D4D34, v45, v49, v48, v50, v74);

  return (*(v64 + 8))(v44, v49);
}

uint64_t sub_18E6CCAF4@<X0>(uint64_t x8_0@<X8>)
{
  if (*(v2 + 49))
  {
    v4 = *(v2 + 50) | 2;
  }

  else
  {
    v4 = *(v2 + 50);
  }

  sub_18E6FC158(&v11);
  v9 = v11;
  v10 = v12;
  v5 = sub_18E6FC164();
  return sub_18E6FC174(&v9, v5, v7, v6 & 1, v4, x8_0);
}

char *sub_18E6CCB98@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = **a1;
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E900, &qword_18E72EA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;

  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  if (v8 != 1)
  {
    v11 = sub_18E6EE18C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_18E6EE18C((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[24 * v13];
    *(v14 + 4) = v5;
    *(v14 + 5) = v6;
    *(v14 + 6) = v7;
  }

  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = v10;
  }

  v17 = v15;
  result = sub_18E70144C(v11);
  *a2 = v17;
  return result;
}

double sub_18E6CCCD0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  v5 = *a2;

  sub_18E6D4CCC(v10, v8, &qword_1EAC8E7A8, &qword_18E72E768);
  sub_18E6CCD64(v5, v10, v8);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  return result;
}

uint64_t sub_18E6CCD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_18E6853AC(0, v6, 0);
    v7 = v21;
    v8 = (a1 + 32);
    v9 = *(v21 + 16);
    do
    {
      v11 = *v8;
      v8 += 3;
      v10 = v11;
      v12 = *(v21 + 24);
      if (v9 >= v12 >> 1)
      {
        sub_18E6853AC((v12 > 1), v9 + 1, 1);
      }

      *(v21 + 16) = v9 + 1;
      *(v21 + 8 * v9++ + 32) = v10;
      --v6;
    }

    while (v6);
  }

  v13 = sub_18E6BFA68(v7);

  v14 = sub_18E6DC574(a1);
  v16 = v15;

  v18 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = sub_18E6AB458(v13, *a2);
  result = sub_18E68B548(a2, &qword_1EAC8E7A8, &qword_18E72E768);
  if (v19)
  {
    v18 = v18 + v14 - *(a2 + 8);
    v17 = v17 + v16 - *(a2 + 16);
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = v16;
  *(a3 + 24) = v18;
  *(a3 + 32) = v17;
  return result;
}

__n128 sub_18E6CCEC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v2;
  result = *(a1 + 40);
  *(a2 + 32) = result;
  return result;
}

uint64_t PanComponent.upstream.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 84);
  v8 = *(a2 + 32);
  v9 = *(v8 + 8);
  v10 = type metadata accessor for EventSource(255, *(a2 + 16), v9, a4);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for DynamicCombinerComponent(255, v10, WitnessTable, v12);
  v14 = swift_getWitnessTable();
  v16 = type metadata accessor for TimeoutComponent(255, v13, v14, v15);
  v17 = swift_getWitnessTable();
  v18 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v18, v19, v20);
  v21 = swift_getWitnessTable();
  v22 = type metadata accessor for ExpirationComponent(255, v16, v17, v21);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = *(v8 + 16);
  v49 = v22;
  v50 = v23;
  v51 = v24;
  v52 = v25;
  v26 = type metadata accessor for SeparationDistanceGate(255, &v49);
  v27 = swift_getWitnessTable();
  v28 = *(v9 + 8);
  v49 = v26;
  v50 = v27;
  v51 = v24;
  v52 = v25;
  v53 = v28;
  v29 = type metadata accessor for StationaryLocationFilter(255, &v49);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v31 = swift_getWitnessTable();
  v54[0] = type metadata accessor for MapComponent(255, v29, v30, v31);
  v54[1] = type metadata accessor for ScrollPositionListener(255, *(a2 + 24), *(a2 + 40), v32);
  v48[0] = swift_getWitnessTable();
  v48[1] = &off_1EE4C9C68;
  v49 = 2;
  v50 = v54;
  v51 = v30;
  v52 = v48;
  v33 = type metadata accessor for CombinerComponent(255, &v49);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v35 = swift_getWitnessTable();
  v36 = type metadata accessor for ReduceComponent(255, v33, v34, v35);
  v37 = swift_getWitnessTable();
  v38 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v39 = type metadata accessor for ThresholdComponent(255, v36, v37, v38);
  v40 = swift_getWitnessTable();
  v41 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v52 = &off_1F01A6538;
  v42 = type metadata accessor for VelocityComponent(255, &v49);
  v43 = swift_getWitnessTable();
  v44 = type metadata accessor for MapComponent(255, v42, &type metadata for PanComponentValue, v43);
  v45 = sub_18E72B438();
  (*(*(v45 - 8) + 8))(v4 + v7, v45);
  v46 = *(v44 - 8);
  (*(v46 + 32))(v4 + v7, a1, v44);
  return (*(v46 + 56))(v4 + v7, 0, 1, v44);
}

void (*PanComponent.upstream.modify(uint64_t **a1, void *a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0xD8uLL);
  }

  v8 = v6;
  *a1 = v6;
  v6[21] = a2;
  v6[22] = v2;
  v9 = a2[4];
  v10 = *(v9 + 8);
  v11 = type metadata accessor for EventSource(255, a2[2], v10, v7);
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for DynamicCombinerComponent(255, v11, WitnessTable, v13);
  v15 = swift_getWitnessTable();
  v17 = type metadata accessor for TimeoutComponent(255, v14, v15, v16);
  v18 = swift_getWitnessTable();
  v19 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v19, v20, v21);
  v22 = swift_getWitnessTable();
  v23 = type metadata accessor for ExpirationComponent(255, v17, v18, v22);
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = *(v9 + 16);
  v8[5] = v23;
  v8[6] = v24;
  v8[7] = v25;
  v8[8] = v26;
  v27 = type metadata accessor for SeparationDistanceGate(255, (v8 + 5));
  v28 = swift_getWitnessTable();
  v29 = *(v10 + 8);
  *v8 = v27;
  v8[1] = v28;
  v8[2] = v25;
  v8[3] = v26;
  v8[4] = v29;
  v30 = type metadata accessor for StationaryLocationFilter(255, v8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v32 = swift_getWitnessTable();
  v8[17] = type metadata accessor for MapComponent(255, v30, v31, v32);
  v8[18] = type metadata accessor for ScrollPositionListener(255, a2[3], a2[5], v33);
  v8[19] = swift_getWitnessTable();
  v8[20] = &off_1EE4C9C68;
  v8[9] = 2;
  v8[10] = (v8 + 17);
  v8[11] = v31;
  v8[12] = (v8 + 19);
  v34 = type metadata accessor for CombinerComponent(255, (v8 + 9));
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v36 = swift_getWitnessTable();
  v37 = type metadata accessor for ReduceComponent(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v40 = type metadata accessor for ThresholdComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  v8[13] = v40;
  v8[14] = v41;
  v8[15] = v42;
  v8[16] = &off_1F01A6538;
  v43 = type metadata accessor for VelocityComponent(255, (v8 + 13));
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(0, v43, &type metadata for PanComponentValue, v44);
  v8[23] = v45;
  v46 = *(v45 - 8);
  v8[24] = v46;
  v47 = *(v46 + 64);
  if (v5)
  {
    v8[25] = swift_coroFrameAlloc();
    v48 = swift_coroFrameAlloc();
  }

  else
  {
    v8[25] = malloc(*(v46 + 64));
    v48 = malloc(v47);
  }

  v8[26] = v48;
  PanComponent.upstream.getter(a2, v49, v48);
  return sub_18E6CD7E4;
}

void sub_18E6CD7E4(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[25];
  v6 = (*a1)[26];
  if (a2)
  {
    v7 = v4[23];
    v8 = v4[24];
    v9 = v4[21];
    (*(v8 + 16))((*a1)[25], v6, v7, a4);
    PanComponent.upstream.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    PanComponent.upstream.setter((*a1)[26], v4[21], a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*sub_18E6CD8A4(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  swift_getAssociatedTypeWitness();

  return sub_18E701540();
}

uint64_t sub_18E6CD8E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12[5] = a5;
  v12[7] = *a1;
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v7 = sub_18E72B278();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E908, &qword_18E72EA20);
  WitnessTable = swift_getWitnessTable();
  result = sub_18E6D9708(sub_18E6D4D54, v12, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  *a6 = result;
  return result;
}

Gestures::GestureTraitCollection_optional __swiftcall PanComponent.traits()()
{
  v1 = v0;
  if (qword_1EAC8D938 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAC8E798;
  v3 = sub_18E6CE470(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  result.value = GestureTraitCollection.init(traits:)(inited);
  *v1 = v6;
  return result;
}

unint64_t static GestureTrait.pan()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EAC8D938 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAC8E798;
  result = sub_18E6CE470(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

void (*sub_18E6CDAD8(char **a1, void *a2))(uint64_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xF8uLL);
  }

  v7 = v5;
  *a1 = v5;
  v8 = a2[4];
  v9 = *(v8 + 8);
  v10 = type metadata accessor for EventSource(255, a2[2], v9, v6);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for DynamicCombinerComponent(255, v10, WitnessTable, v12);
  v14 = swift_getWitnessTable();
  v16 = type metadata accessor for TimeoutComponent(255, v13, v14, v15);
  v17 = swift_getWitnessTable();
  v18 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v18, v19, v20);
  v21 = swift_getWitnessTable();
  v22 = type metadata accessor for ExpirationComponent(255, v16, v17, v21);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = *(v8 + 16);
  *(v7 + 40) = v22;
  *(v7 + 48) = v23;
  *(v7 + 56) = v24;
  *(v7 + 64) = v25;
  v26 = type metadata accessor for SeparationDistanceGate(255, v7 + 40);
  v27 = swift_getWitnessTable();
  v28 = *(v9 + 8);
  *v7 = v26;
  *(v7 + 8) = v27;
  *(v7 + 16) = v24;
  *(v7 + 24) = v25;
  *(v7 + 32) = v28;
  v29 = type metadata accessor for StationaryLocationFilter(255, v7);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v31 = swift_getWitnessTable();
  *(v7 + 168) = type metadata accessor for MapComponent(255, v29, v30, v31);
  *(v7 + 176) = type metadata accessor for ScrollPositionListener(255, a2[3], a2[5], v32);
  *(v7 + 184) = swift_getWitnessTable();
  *(v7 + 192) = &off_1EE4C9C68;
  *(v7 + 72) = 2;
  *(v7 + 80) = v7 + 168;
  *(v7 + 88) = v30;
  *(v7 + 96) = v7 + 184;
  v33 = type metadata accessor for CombinerComponent(255, v7 + 72);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v35 = swift_getWitnessTable();
  v36 = type metadata accessor for ReduceComponent(255, v33, v34, v35);
  v37 = swift_getWitnessTable();
  v38 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v39 = type metadata accessor for ThresholdComponent(255, v36, v37, v38);
  v40 = swift_getWitnessTable();
  v41 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  *(v7 + 104) = v39;
  *(v7 + 112) = v40;
  *(v7 + 120) = v41;
  *(v7 + 128) = &off_1F01A6538;
  v42 = type metadata accessor for VelocityComponent(255, v7 + 104);
  v43 = swift_getWitnessTable();
  v44 = type metadata accessor for MapComponent(0, v42, &type metadata for PanComponentValue, v43);
  *(v7 + 200) = v44;
  v45 = *(v44 - 8);
  if (v4)
  {
    v46 = swift_coroFrameAlloc();
  }

  else
  {
    v46 = malloc(*(*(v44 - 8) + 64));
  }

  v47 = v46;
  *(v7 + 208) = v46;
  *(v7 + 216) = PanComponent.upstream.modify((v7 + 136), a2);
  *(v7 + 224) = v48;
  v49 = *(v45 + 32);
  *(v7 + 232) = v49;
  *(v7 + 240) = (v45 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v49(v47);
  return sub_18E6CDF80;
}

void sub_18E6CDF80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 136;
  (*(*a1 + 232))(*(*a1 + 224), *(v3 + 208), *(v3 + 200));
  v5 = *(v3 + 208);
  (*(v3 + 216))(v4, a2);
  free(v5);

  free(v3);
}

double PanComponentValue.velocity.getter()
{
  __asm
  {
    FMOV            V2.2D, #0.25
    FMOV            V1.2D, #4.0
  }

  *&result = *&vmulq_f64(vsubq_f64(vaddq_f64(*v0, vmulq_f64(v0[2], _Q2)), *v0), _Q1);
  return result;
}

double PanComponentValue.predictedEndLocation.getter()
{
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(*v0, vmulq_f64(v0[2], _Q2));
  return result;
}

double PanComponentValue.predictedEndTranslation.getter()
{
  __asm { FMOV            V2.2D, #0.25 }

  *&result = *&vaddq_f64(v0[1], vmulq_f64(v0[2], _Q2));
  return result;
}

Gestures::GestureTraitID sub_18E6CE104()
{
  v0._countAndFlagsBits = 7233904;
  v0._object = 0xE300000000000000;
  return GestureTraitID.init(_:)(v0);
}

uint64_t static GestureTraitID.pan.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EAC8D938 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EAC8E798;
  return result;
}

uint64_t sub_18E6CE18C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6CE1E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

void (*sub_18E6CE288(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 56) = v2;
  *(v5 + 64) = a2;
  v7 = *v2;
  v8 = v2[1];
  *(v5 + 32) = *(v2 + 4);
  *v5 = v7;
  *(v5 + 16) = v8;
  *(v5 + 40) = sub_18E6CE234();
  *(v6 + 48) = v9;
  return sub_18E6CE31C;
}

void sub_18E6CE31C(uint64_t a1)
{
  v1 = *a1;
  sub_18E6CE23C(*(*a1 + 40), *(*a1 + 48));

  free(v1);
}

void *sub_18E6CE35C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E920, &qword_18E730EE0);
  v3 = sub_18E72B738();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_18E6EB450(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_18E6EB450(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E6CE470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E8F8, &qword_18E72EA10);
    v3 = sub_18E72B738();
    for (i = (a1 + 48); ; i += 24)
    {
      v11 = *(i - 1);
      v12 = *i;
      result = sub_18E6EBF18();
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v11;
      v7 = v3[7] + 16 * result;
      *v7 = *(&v11 + 1);
      *(v7 + 8) = v12;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18E6CE5AC(uint64_t a1)
{
  *(a1 + 8) = sub_18E6CE5DC();
  result = sub_18E6CE630();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6CE5DC()
{
  result = qword_1EAC8E7C0;
  if (!qword_1EAC8E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E7C0);
  }

  return result;
}

unint64_t sub_18E6CE630()
{
  result = qword_1EAC8E7C8;
  if (!qword_1EAC8E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E7C8);
  }

  return result;
}

uint64_t sub_18E6CE68C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49[2] = MEMORY[0x1E69E5D08] + 64;
  v49[3] = MEMORY[0x1E69E5D08] + 64;
  v49[4] = &unk_18E72E868;
  v49[5] = MEMORY[0x1E69E5D08] + 64;
  v49[6] = MEMORY[0x1E69E5D08] + 64;
  v49[7] = &unk_18E72E880;
  v49[8] = &unk_18E72E880;
  v49[9] = &unk_18E72E880;
  v49[10] = &unk_18E72E880;
  v5 = a1[4];
  v6 = *(v5 + 8);
  v7 = type metadata accessor for EventSource(255, a1[2], v6, a4);
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for DynamicCombinerComponent(255, v7, WitnessTable, v9);
  v11 = swift_getWitnessTable();
  v13 = type metadata accessor for TimeoutComponent(255, v10, v11, v12);
  v14 = swift_getWitnessTable();
  v15 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v15, v16, v17);
  v18 = swift_getWitnessTable();
  v19 = type metadata accessor for ExpirationComponent(255, v13, v14, v18);
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = *(v5 + 16);
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v47 = v22;
  v23 = type metadata accessor for SeparationDistanceGate(255, &v44);
  v24 = swift_getWitnessTable();
  v25 = *(v6 + 8);
  v44 = v23;
  v45 = v24;
  v46 = v21;
  v47 = v22;
  v48 = v25;
  v26 = type metadata accessor for StationaryLocationFilter(255, &v44);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v28 = swift_getWitnessTable();
  v49[0] = type metadata accessor for MapComponent(255, v26, v27, v28);
  v49[1] = type metadata accessor for ScrollPositionListener(255, a1[3], a1[5], v29);
  v43[0] = swift_getWitnessTable();
  v43[1] = &off_1EE4C9C68;
  v44 = 2;
  v45 = v49;
  v46 = v27;
  v47 = v43;
  v30 = type metadata accessor for CombinerComponent(255, &v44);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for ReduceComponent(255, v30, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v36 = type metadata accessor for ThresholdComponent(255, v33, v34, v35);
  v37 = swift_getWitnessTable();
  v38 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v47 = &off_1F01A6538;
  v39 = type metadata accessor for VelocityComponent(255, &v44);
  v40 = swift_getWitnessTable();
  type metadata accessor for MapComponent(255, v39, &type metadata for PanComponentValue, v40);
  result = sub_18E72B438();
  if (v42 <= 0x3F)
  {
    v49[11] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6CEACC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((((v5 & 0xF8) + 16) & ~v6) + v8) | 2) <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = ((((v5 & 0xF8) + 16) & ~v6) + v8) | 2;
  }

  if ((v5 & 0x1000F8) != 0 || (v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8, v13 = (v12 + 63) & 0xFFFFFFFFFFFFFFF8, v14 = (((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8, v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8, v17 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8, v18 = (((((v17 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8, v19 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8, v20 = (v19 + 95) & 0xFFFFFFFFFFFFFFF8, ((-53 - v6) | v6) - (((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 16) < 0xFFFFFFFFFFFFFFE7))
  {
    v37 = *a2;
    *a1 = *a2;
    a1 = (v37 + ((v6 + 16) & ~v6));

    return a1;
  }

  *a1 = *a2;
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v27 = *v28;
  *(v27 + 8) = *(v28 + 8);
  *(v27 + 9) = *(v28 + 9);
  *(v27 + 10) = *(v28 + 10);
  *(v27 + 11) = *(v28 + 11);
  v171 = v27 + 19;
  v29 = (v27 + 19) & 0xFFFFFFFFFFFFFFF8;
  v30 = ((v28 + 19) & 0xFFFFFFFFFFFFFFF8);
  v31 = v9 | 1;
  v172 = v28 + 19;
  v32 = ((((v28 + 19) | 7) + (v9 | 1)) & 0xFFFFFFFFFFFFFFF8);
  if (*v32 < 0xFFFFFFFFuLL)
  {
    memcpy(((v27 + 19) & 0xFFFFFFFFFFFFFFF8), v30, ((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    return a1;
  }

  v33 = v30[v9];
  v34 = v33 - 3;
  if (v33 >= 3)
  {
    if (v9 <= 3)
    {
      v35 = v9;
    }

    else
    {
      v35 = 4;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v36 = *v30;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v35 == 3)
        {
          v36 = *v30 | (v30[2] << 16);
          if (v9 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v33 = v36 + 3;
          goto LABEL_28;
        }

        v36 = *v30;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v33 = (v36 | (v34 << (8 * v9))) + 3;
      goto LABEL_28;
    }

    if (!v35)
    {
      goto LABEL_28;
    }

    v36 = *v30;
    if (v9 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_28:
  v169 = (v27 + 19) & 0xFFFFFFFFFFFFFFF8;
  v170 = (v28 + 19) & 0xFFFFFFFFFFFFFFF8;
  v167 = (v19 + 95) & 0xFFFFFFFFFFFFFFF8;
  v168 = a1;
  v165 = (((((v17 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v166 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v162 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v164 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
  v159 = (((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v160 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v33 != 2)
  {
    v38 = v8 | 1;
    if (v33 == 1)
    {
      v39 = *v30;
      *(v29 + 8) = v30[8];
      *v29 = v39;
      v40 = v27 + 35;
      v41 = ((v27 + 35) & 0xFFFFFFFFFFFFFFF8);
      v42 = v28 + 35;
      v43 = ((v28 + 35) & 0xFFFFFFFFFFFFFFF8);
      v44 = *(v43 + v8);
      if (v44 > 2)
      {
        v56 = v41;
        v57 = v43;
        memcpy(v41, v43, v8 | 1);
        v43 = v57;
        v41 = v56;
        v38 = v8 | 1;
        v31 = v9 | 1;
        v30 = v170;
        v47 = v171;
        v29 = v169;
      }

      else
      {
        if (v44 == 2)
        {
          v153 = v43;
          v155 = v41;
          (*(v4 + 16))(v41, v43);
          v60 = ((v40 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          v61 = ((v42 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v61 < 0xFFFFFFFFuLL)
          {
            v70 = *(v61 + 16);
            *v60 = *v61;
            *(v60 + 16) = v70;
          }

          else
          {
            *v60 = *v61;
            *(v60 + 8) = *(v61 + 8);
            *(v60 + 16) = *(v61 + 16);
            *(v60 + 24) = *(v61 + 24);
          }

          v30 = v170;
          v47 = v171;
          v29 = v169;
          v38 = v8 | 1;
          v31 = v9 | 1;
          v69 = 2;
        }

        else
        {
          if (v44 != 1)
          {
            *v41 = *v43;
            v62 = v43[1];
            v47 = v171;
            v29 = v169;
            if (v62)
            {
              v41[1] = v62;
              v157 = v41;
              v41[2] = v43[2];
              v41[3] = v43[3];
              v41[4] = v43[4];
              v63 = v43;

              v43 = v63;
              v41 = v157;
              v38 = v8 | 1;
              v31 = v9 | 1;
              v30 = v170;
            }

            else
            {
              v74 = *(v43 + 3);
              *(v41 + 1) = *(v43 + 1);
              *(v41 + 3) = v74;
            }

            *(v41 + v8) = 0;
            goto LABEL_63;
          }

          v153 = v43;
          v155 = v41;
          (*(v4 + 16))(v41, v43);
          v45 = ((v40 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          v46 = ((v42 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v46 < 0xFFFFFFFFuLL)
          {
            v68 = *(v46 + 16);
            *v45 = *v46;
            *(v45 + 16) = v68;
          }

          else
          {
            *v45 = *v46;
            *(v45 + 8) = *(v46 + 8);
            *(v45 + 16) = *(v46 + 16);
            *(v45 + 24) = *(v46 + 24);
          }

          v30 = v170;
          v47 = v171;
          v29 = v169;
          v38 = v8 | 1;
          v31 = v9 | 1;
          v69 = 1;
        }

        v43 = v153;
        v41 = v155;
        *(v155 + v8) = v69;
      }

LABEL_63:
      *(v41 + v38) = *(v43 + v38);
      *(v29 + v9) = 1;
      goto LABEL_67;
    }

    v48 = *v30;
    *(v29 + 8) = v30[8];
    *v29 = v48;
    v49 = v27 + 35;
    v50 = ((v27 + 35) & 0xFFFFFFFFFFFFFFF8);
    v51 = v28 + 35;
    v52 = ((v28 + 35) & 0xFFFFFFFFFFFFFFF8);
    v53 = *(v52 + v8);
    if (v53 > 2)
    {
      v58 = v50;
      v59 = v52;
      memcpy(v50, v52, v8 | 1);
      v52 = v59;
      v50 = v58;
      v38 = v8 | 1;
      v31 = v9 | 1;
      v30 = v170;
      v47 = v171;
      v29 = v169;
    }

    else
    {
      if (v53 == 2)
      {
        v154 = v52;
        v156 = v50;
        (*(v4 + 16))(v50, v52);
        v64 = ((v49 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        v65 = ((v51 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        if (*v65 < 0xFFFFFFFFuLL)
        {
          v73 = *(v65 + 16);
          *v64 = *v65;
          *(v64 + 16) = v73;
        }

        else
        {
          *v64 = *v65;
          *(v64 + 8) = *(v65 + 8);
          *(v64 + 16) = *(v65 + 16);
          *(v64 + 24) = *(v65 + 24);
        }

        v30 = v170;
        v47 = v171;
        v29 = v169;
        v38 = v8 | 1;
        v31 = v9 | 1;
        v72 = 2;
      }

      else
      {
        if (v53 != 1)
        {
          *v50 = *v52;
          v66 = v52[1];
          v47 = v171;
          v29 = v169;
          if (v66)
          {
            v50[1] = v66;
            v158 = v50;
            v50[2] = v52[2];
            v50[3] = v52[3];
            v50[4] = v52[4];
            v67 = v52;

            v52 = v67;
            v50 = v158;
            v38 = v8 | 1;
            v31 = v9 | 1;
            v30 = v170;
          }

          else
          {
            v75 = *(v52 + 3);
            *(v50 + 1) = *(v52 + 1);
            *(v50 + 3) = v75;
          }

          *(v50 + v8) = 0;
          goto LABEL_66;
        }

        v154 = v52;
        v156 = v50;
        (*(v4 + 16))(v50, v52);
        v54 = ((v49 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        v55 = ((v51 | 7) + v7) & 0xFFFFFFFFFFFFFFF8;
        if (*v55 < 0xFFFFFFFFuLL)
        {
          v71 = *(v55 + 16);
          *v54 = *v55;
          *(v54 + 16) = v71;
        }

        else
        {
          *v54 = *v55;
          *(v54 + 8) = *(v55 + 8);
          *(v54 + 16) = *(v55 + 16);
          *(v54 + 24) = *(v55 + 24);
        }

        v30 = v170;
        v47 = v171;
        v29 = v169;
        v38 = v8 | 1;
        v31 = v9 | 1;
        v72 = 1;
      }

      v52 = v154;
      v50 = v156;
      *(v156 + v8) = v72;
    }

LABEL_66:
    *(v50 + v38) = *(v52 + v38);
    *(v29 + v9) = 0;
    goto LABEL_67;
  }

  *v29 = *v30;
  *(v29 + v9) = 2;

  v31 = v9 | 1;
  v30 = v170;
  v47 = v171;
LABEL_67:
  v76 = (((v47 | 7) + v31) & 0xFFFFFFFFFFFFFFF8);
  v77 = v32[1];
  *v76 = *v32;
  v76[1] = v77;
  v78 = ((v32 + 23) & 0xFFFFFFFFFFFFFFF8);
  v79 = ((v76 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v79 = *v78;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v80 = *v81;
  *(v80 + 8) = *(v81 + 8);
  *(v80 + 9) = *(v81 + 9);
  v82 = v10 + 10 + v29;
  v83 = &v30[v10 + 10];
  *v82 = *v83;
  v82 &= 0xFFFFFFFFFFFFFFF8;
  v83 &= 0xFFFFFFFFFFFFFFF8;
  *(v82 + 8) = *(v83 + 8);
  v84 = ((v82 + 31) & 0xFFFFFFFFFFFFFFF8);
  v85 = ((v83 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v84 = *v85;
  v84[1] = v85[1];
  v86 = ((v84 + 23) & 0xFFFFFFFFFFFFFFF8);
  v87 = ((v85 + 23) & 0xFFFFFFFFFFFFFFF8);
  v88 = v87[1];
  *v86 = *v87;
  v86[1] = v88;
  v89 = (v11 + 16 + v47) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v11 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  v91 = *(v90 + 48);

  if (v91 == 1)
  {
    v92 = *v90;
    v93 = *(v90 + 16);
    v94 = *(v90 + 32);
    *(v89 + 48) = *(v90 + 48);
    *(v89 + 16) = v93;
    *(v89 + 32) = v94;
    *v89 = v92;
  }

  else
  {
    *v89 = *v90;
    *(v89 + 8) = *(v90 + 8);
    *(v89 + 24) = *(v90 + 24);
    *(v89 + 40) = *(v90 + 40);
    *(v89 + 48) = *(v90 + 48);
  }

  *((v12 + 56 + v47) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 56 + v172) & 0xFFFFFFFFFFFFFFF8);
  v95 = ((v13 + 8 + v47) & 0xFFFFFFFFFFFFFFF8);
  v96 = ((v13 + 8 + v172) & 0xFFFFFFFFFFFFFFF8);
  *v95 = *v96;
  v97 = ((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
  v98 = ((v96 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v97 = *v98;
  *((v97 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v98 + 15) & 0xFFFFFFFFFFFFFFF8);
  v99 = ((v159 + 8 + v47) & 0xFFFFFFFFFFFFFFF8);
  v100 = ((v159 + 8 + v172) & 0xFFFFFFFFFFFFFFF8);
  v101 = v100[1];
  *v99 = *v100;
  v99[1] = v101;
  v102 = (v160 + 16 + v47) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v160 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  v104 = *(v103 + 40);

  if (v104 == 255)
  {
    v110 = *v103;
    v111 = *(v103 + 16);
    *(v102 + 25) = *(v103 + 25);
    *v102 = v110;
    *(v102 + 16) = v111;
  }

  else
  {
    v105 = *v103;
    v106 = *(v103 + 8);
    v107 = *(v103 + 16);
    v108 = *(v103 + 24);
    v109 = *(v103 + 32);
    sub_18E6CF73C(*v103, v106, v107, v108, v109, v104);
    *v102 = v105;
    *(v102 + 8) = v106;
    *(v102 + 16) = v107;
    *(v102 + 24) = v108;
    *(v102 + 32) = v109;
    *(v102 + 40) = v104;
  }

  *(v102 + 41) = *(v103 + 41);
  v112 = v47 | 6;
  v113 = ((v47 | 6) + v162 + 42) & 0xFFFFFFFFFFFFFFF8;
  v114 = ((v172 | 6) + v162 + 42) & 0xFFFFFFFFFFFFFFF8;
  v115 = *v114;
  v116 = *(v114 + 32);
  *(v113 + 16) = *(v114 + 16);
  *(v113 + 32) = v116;
  *v113 = v115;
  v117 = *(v114 + 104);
  if (v117 == 255)
  {
    v123 = *(v114 + 48);
    v124 = *(v114 + 64);
    v125 = *(v114 + 80);
    *(v113 + 89) = *(v114 + 89);
    *(v113 + 64) = v124;
    *(v113 + 80) = v125;
    *(v113 + 48) = v123;
  }

  else
  {
    v118 = *(v114 + 56);
    v119 = *(v114 + 64);
    v120 = *(v114 + 72);
    v121 = *(v114 + 80);
    v122 = *(v114 + 88);
    v161 = *(v114 + 96);
    v163 = *(v114 + 48);
    sub_18E6CFC68(v163, v118, v119, v120, v121, v122, v161, v117, sub_18E6A9F20);
    *(v113 + 48) = v163;
    *(v113 + 56) = v118;
    *(v113 + 64) = v119;
    *(v113 + 72) = v120;
    *(v113 + 80) = v121;
    *(v113 + 88) = v122;
    *(v113 + 96) = v161;
    *(v113 + 104) = v117;
  }

  *(v113 + 105) = *(v114 + 105);
  v126 = (v112 + v164 + 106) & 0xFFFFFFFFFFFFFFF8;
  v127 = ((v172 | 6) + v164 + 106) & 0xFFFFFFFFFFFFFFF8;
  if (*v127)
  {
    v128 = *(v127 + 8);
    *v126 = *v127;
    *(v126 + 8) = v128;
  }

  else
  {
    *v126 = *v127;
  }

  v129 = *(v127 + 16);
  if (v129)
  {
    v130 = *(v127 + 24);
    *(v126 + 16) = v129;
    *(v126 + 24) = v130;
  }

  else
  {
    *(v126 + 16) = *(v127 + 16);
  }

  v131 = *(v127 + 40);
  *(v126 + 32) = *(v127 + 32);
  *(v126 + 40) = v131;
  *(v126 + 48) = *(v127 + 48);
  v132 = ((v164 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
  v133 = v132 + v169;
  v134 = v132 + v170;
  *(v133 + 7) = *(v134 + 7);
  *(v133 + 15) = *(v134 + 15);
  *(v133 + 31) = *(v134 + 31);
  v135 = (v133 + 54) & 0xFFFFFFFFFFFFFFF8;
  v136 = (v134 + 54) & 0xFFFFFFFFFFFFFFF8;
  *v135 = *v136;
  *(v135 + 8) = *(v136 + 8);
  *(v135 + 24) = *(v136 + 24);
  v137 = ((v135 + 47) & 0xFFFFFFFFFFFFFFF8);
  v138 = ((v136 + 47) & 0xFFFFFFFFFFFFFFF8);
  v139 = v138[1];
  *v137 = *v138;
  v137[1] = v139;
  v140 = (v165 + 16 + v171) & 0xFFFFFFFFFFFFFFF8;
  v141 = (v165 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  *v140 = *v141;
  *(v140 + 8) = *(v141 + 8);
  *(v140 + 24) = *(v141 + 24);
  v142 = *(v141 + 40);
  *(v140 + 56) = *(v141 + 56);
  *(v140 + 40) = v142;
  v143 = *(v141 + 72);
  *(v140 + 64) = *(v141 + 64);
  *(v140 + 72) = v143;
  v144 = (v166 + 16 + v171) & 0xFFFFFFFFFFFFFFF8;
  v145 = (v166 + 16 + v172) & 0xFFFFFFFFFFFFFFF8;
  *v144 = *v145;
  v146 = *(v145 + 16);
  v147 = *(v145 + 32);
  v148 = *(v145 + 48);
  *(v144 + 64) = *(v145 + 64);
  *(v144 + 32) = v147;
  *(v144 + 48) = v148;
  *(v144 + 16) = v146;
  *(v144 + 72) = *(v145 + 72);
  v149 = ((v167 + 8 + v171) & 0xFFFFFFFFFFFFFFF8);
  v150 = ((v167 + 8 + v172) & 0xFFFFFFFFFFFFFFF8);
  v151 = v150[1];
  *v149 = *v150;
  v149[1] = v151;

  return v168;
}

void sub_18E6CF73C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return;
    }
  }

  else
  {
  }

  sub_18E6A9F20(a2, a3, a4, a5);
}

uint64_t sub_18E6CF7BC(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = v3 | 7;
  v5 = ((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v3 | 7) + 12) & ~(v3 | 7));
  v6 = v3 + 16;
  v7 = (v3 + 16) & ~(v3 | 7);
  v8 = *(v2 + 64) + 7;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  if (((v7 + v9) | 2) <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = (v7 + v9) | 2;
  }

  if (*(&v5[v10 + 8] & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
    v11 = v5[v10];
    v12 = v11 - 3;
    if (v11 < 3)
    {
      goto LABEL_22;
    }

    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = *v5;
      if (v10 < 4)
      {
LABEL_31:
        if ((v14 | (v12 << (8 * v10))) == 0xFFFFFFFF)
        {
          goto LABEL_32;
        }

        goto LABEL_23;
      }
    }

    else if (v13 == 2)
    {
      v14 = *v5;
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    else if (v13 == 3)
    {
      v14 = *v5 | (v5[2] << 16);
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v14 = *v5;
      if (v10 < 4)
      {
        goto LABEL_31;
      }
    }

    v11 = v14 + 3;
LABEL_22:
    if (v11 == 2)
    {
LABEL_32:

      goto LABEL_33;
    }

LABEL_23:
    v15 = &v5[v6] & ~v4;
    v16 = *(v15 + v9);
    if (v16 <= 2)
    {
      if (v16 == 2 || v16 == 1)
      {
        (*(v2 + 8))(&v5[v6] & ~v4);
        if (*((v8 + v15) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
        {
LABEL_27:

          goto LABEL_32;
        }
      }

      else if (*((&v5[v6] & ~v4) + 8))
      {
        goto LABEL_27;
      }
    }

LABEL_33:

    v17 = ((((((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v18 = v5 + 16;
    if (*&v5[v17 + 64] != 1)
    {
    }

    v19 = (((((((((((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
    v20 = v18[v19 + 40];
    if (v20 != 255)
    {
      sub_18E6CFBE8(*&v18[v19], *&v18[v19 + 8], *&v18[v19 + 16], *&v18[v19 + 24], *&v18[v19 + 32], v20);
    }

    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v22 = &v5[v21 + 49] & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v22 + 104);
    if (v23 != 255)
    {
      sub_18E6CFC68(*(v22 + 48), *(v22 + 56), *(v22 + 64), *(v22 + 72), *(v22 + 80), *(v22 + 88), *(v22 + 96), v23, sub_18E6AF804);
    }

    v24 = (&v5[((v21 + 49) & 0xFFFFFFFFFFFFFFF8) + 113] & 0xFFFFFFFFFFFFFFF8);
    if (*v24)
    {
    }

    if (v24[2])
    {
    }
  }

  return result;
}

void sub_18E6CFBE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 - 1 >= 2)
  {
    if (a6)
    {
      return;
    }
  }

  else
  {
  }

  sub_18E6AF804(a2, a3, a4, a5);
}

uint64_t sub_18E6CFC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a8 == 2 || a8 == 1)
  {
    return a9(a4, a5, a6, a7);
  }

  if (!a8)
  {
    return a9(a2, a3, a4, a5);
  }

  return result;
}

void *sub_18E6CFCB8(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 9) = *(v11 + 9);
  *(v10 + 10) = *(v11 + 10);
  *(v10 + 11) = *(v11 + 11);
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 19 + v10;
  v15 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v13 + 19 + v11) & v15;
  v18 = v13 + 16;
  v19 = (v13 + 16) & v15;
  v20 = *(v12 + 64) + 7;
  if ((v20 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v21 = 40;
  }

  else
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((v19 + v21) | 2) <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = (v19 + v21) | 2;
  }

  v23 = (((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  if (*v23 < 0xFFFFFFFFuLL)
  {
    v28 = (((((((((((((((((((((((((((((((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    memcpy((v14 & v15), v17, v28);
    return a1;
  }

  v24 = *(v17 + v22);
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v22 <= 3)
    {
      v26 = v22;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *v17;
        if (v22 < 4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v26 == 3)
        {
          v27 = *v17 | (*(v17 + 2) << 16);
          if (v22 < 4)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v27 = *v17;
        if (v22 < 4)
        {
LABEL_24:
          v24 = (v27 | (v25 << (8 * v22))) + 3;
          goto LABEL_25;
        }
      }

LABEL_22:
      v24 = v27 + 3;
      goto LABEL_25;
    }

    if (v26)
    {
      v27 = *v17;
      if (v22 < 4)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

LABEL_25:
  v153 = v17;
  v150 = v17 | 7;
  if (v24 == 2)
  {
    *v16 = *v17;
    *(v16 + v22) = 2;
    v38 = v17;

    v39 = v38;
  }

  else
  {
    v31 = v21 | 1;
    if (v24 == 1)
    {
      v32 = *v17;
      *((v14 & v15) + 8) = *(v17 + 8);
      *v16 = v32;
      v33 = ((v18 + v16) & v15);
      v34 = ((v18 + v17) & v15);
      v35 = v34[v21];
      if (v35 > 2)
      {
        memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
      }

      else if (v35 == 2)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v46 = &v33[v20] & 0xFFFFFFFFFFFFFFF8;
        v47 = &v34[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v47 < 0xFFFFFFFFuLL)
        {
          v53 = *(v47 + 16);
          *v46 = *v47;
          *(v46 + 16) = v53;
        }

        else
        {
          *v46 = *v47;
          *(v46 + 8) = *(v47 + 8);
          *(v46 + 16) = *(v47 + 16);
          *(v46 + 24) = *(v47 + 24);
        }

        v33[v21] = 2;
      }

      else if (v35 == 1)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v36 = &v33[v20] & 0xFFFFFFFFFFFFFFF8;
        v37 = &v34[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v37 < 0xFFFFFFFFuLL)
        {
          v52 = *(v37 + 16);
          *v36 = *v37;
          *(v36 + 16) = v52;
        }

        else
        {
          *v36 = *v37;
          *(v36 + 8) = *(v37 + 8);
          *(v36 + 16) = *(v37 + 16);
          *(v36 + 24) = *(v37 + 24);
        }

        v33[v21] = 1;
      }

      else
      {
        *v33 = *v34;
        v48 = *(((v18 + v17) & v15) + 8);
        if (v48)
        {
          *(((v18 + v16) & v15) + 8) = v48;
          *(((v18 + v16) & v15) + 0x10) = *(((v18 + v17) & v15) + 0x10);
          *(((v18 + v16) & v15) + 0x18) = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
        }

        else
        {
          v56 = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 8) = *(((v18 + v17) & v15) + 8);
          *(((v18 + v16) & v15) + 0x18) = v56;
        }

        v33[v21] = 0;
      }

      v33[v31] = v34[v31];
      *(v16 + v22) = 1;
    }

    else
    {
      v40 = *v17;
      *((v14 & v15) + 8) = *(v17 + 8);
      *v16 = v40;
      v41 = ((v18 + v16) & v15);
      v42 = ((v18 + v17) & v15);
      v43 = v42[v21];
      if (v43 > 2)
      {
        memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
      }

      else if (v43 == 2)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v49 = &v41[v20] & 0xFFFFFFFFFFFFFFF8;
        v50 = &v42[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v50 < 0xFFFFFFFFuLL)
        {
          v55 = *(v50 + 16);
          *v49 = *v50;
          *(v49 + 16) = v55;
        }

        else
        {
          *v49 = *v50;
          *(v49 + 8) = *(v50 + 8);
          *(v49 + 16) = *(v50 + 16);
          *(v49 + 24) = *(v50 + 24);
        }

        v41[v21] = 2;
      }

      else if (v43 == 1)
      {
        (*(v12 + 16))((v18 + v16) & v15, (v18 + v17) & v15);
        v44 = &v41[v20] & 0xFFFFFFFFFFFFFFF8;
        v45 = &v42[v20] & 0xFFFFFFFFFFFFFFF8;
        if (*v45 < 0xFFFFFFFFuLL)
        {
          v54 = *(v45 + 16);
          *v44 = *v45;
          *(v44 + 16) = v54;
        }

        else
        {
          *v44 = *v45;
          *(v44 + 8) = *(v45 + 8);
          *(v44 + 16) = *(v45 + 16);
          *(v44 + 24) = *(v45 + 24);
        }

        v41[v21] = 1;
      }

      else
      {
        *v41 = *v42;
        v51 = *(((v18 + v17) & v15) + 8);
        if (v51)
        {
          *(((v18 + v16) & v15) + 8) = v51;
          *(((v18 + v16) & v15) + 0x10) = *(((v18 + v17) & v15) + 0x10);
          *(((v18 + v16) & v15) + 0x18) = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
        }

        else
        {
          v57 = *(((v18 + v17) & v15) + 0x18);
          *(((v18 + v16) & v15) + 8) = *(((v18 + v17) & v15) + 8);
          *(((v18 + v16) & v15) + 0x18) = v57;
        }

        v41[v21] = 0;
      }

      v41[v31] = v42[v31];
      *(v16 + v22) = 0;
    }

    v39 = v153;
  }

  v149 = v16 | 7;
  v58 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v59 = v23[1];
  *v58 = *v23;
  v58[1] = v59;
  v60 = ((v58 + 23) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v62 = *v63;
  *(v62 + 8) = *(v63 + 8);
  *(v62 + 9) = *(v63 + 9);
  v64 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v65 = v64 + 10 + v16;
  v66 = v64 + 10 + v39;
  *v65 = *v66;
  v65 &= 0xFFFFFFFFFFFFFFF8;
  v66 &= 0xFFFFFFFFFFFFFFF8;
  *(v65 + 8) = *(v66 + 8);
  v67 = ((v65 + 31) & 0xFFFFFFFFFFFFFFF8);
  v68 = ((v66 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v67 = *v68;
  v67[1] = v68[1];
  v69 = ((v67 + 23) & 0xFFFFFFFFFFFFFFF8);
  v70 = ((v68 + 23) & 0xFFFFFFFFFFFFFFF8);
  v71 = v70[1];
  *v69 = *v70;
  v69[1] = v71;
  v72 = (((((v64 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v152 = v16;
  v73 = (v72 + 16 + v16);
  v74 = (v72 + 16 + v39);
  v75 = *(v74 + 6);

  if (v75 == 1)
  {
    v76 = *v74;
    v77 = v74[1];
    v78 = v74[2];
    *(v73 + 6) = *(v74 + 6);
    *(v73 + 1) = v77;
    *(v73 + 2) = v78;
    *v73 = v76;
  }

  else
  {
    *v73 = *v74;
    *(v73 + 8) = *(v74 + 8);
    *(v73 + 24) = *(v74 + 24);
    *(v73 + 5) = *(v74 + 5);
    *(v73 + 6) = *(v74 + 6);
  }

  v79 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = v153;
  *(v79 + 56 + v152) = *(v79 + 56 + v153);
  v81 = (v79 + 63) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 8 + v152);
  v83 = (v81 + 8 + v153);
  *v82 = *v83;
  v84 = ((v82 + 15) & 0xFFFFFFFFFFFFFFF8);
  v85 = ((v83 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v84 = *v85;
  *((v84 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v85 + 15) & 0xFFFFFFFFFFFFFFF8);
  v86 = (((((v81 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 8 + v152);
  v88 = (v86 + 8 + v153);
  v89 = v88[1];
  *v87 = *v88;
  v87[1] = v89;
  v90 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = v90 + 16 + v152;
  v92 = v90 + 16 + v153;
  v93 = *(v92 + 40);

  if (v93 == 255)
  {
    v99 = *v92;
    v100 = *(v92 + 16);
    *(v91 + 25) = *(v92 + 25);
    *v91 = v99;
    *(v91 + 16) = v100;
  }

  else
  {
    v94 = *v92;
    v95 = *(v92 + 8);
    v96 = *(v92 + 16);
    v97 = *(v92 + 24);
    v98 = *(v92 + 32);
    sub_18E6CF73C(*v92, v95, v96, v97, v98, v93);
    *v91 = v94;
    *(v91 + 8) = v95;
    v80 = v153;
    *(v91 + 16) = v96;
    *(v91 + 24) = v97;
    *(v91 + 32) = v98;
    *(v91 + 40) = v93;
  }

  *(v91 + 41) = *(v92 + 41);
  v101 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v102 = v152 | 6;
  v103 = ((v152 | 6) + v101 + 42) & 0xFFFFFFFFFFFFFFF8;
  v104 = v80 | 6;
  v105 = (v104 + v101 + 42) & 0xFFFFFFFFFFFFFFF8;
  v106 = *v105;
  v107 = *(v105 + 32);
  *(v103 + 16) = *(v105 + 16);
  *(v103 + 32) = v107;
  *v103 = v106;
  v108 = *(v105 + 104);
  if (v108 == 255)
  {
    v113 = *(v105 + 48);
    v114 = *(v105 + 64);
    v115 = *(v105 + 80);
    *(v103 + 89) = *(v105 + 89);
    *(v103 + 64) = v114;
    *(v103 + 80) = v115;
    *(v103 + 48) = v113;
  }

  else
  {
    v147 = *(v105 + 56);
    v148 = *(v105 + 48);
    v109 = *(v105 + 64);
    v110 = *(v105 + 72);
    v111 = *(v105 + 80);
    v112 = *(v105 + 88);
    v146 = *(v105 + 96);
    sub_18E6CFC68(v148, v147, v109, v110, v111, v112, v146, v108, sub_18E6A9F20);
    v102 = v152 | 6;
    *(v103 + 48) = v148;
    *(v103 + 56) = v147;
    *(v103 + 64) = v109;
    *(v103 + 72) = v110;
    *(v103 + 80) = v111;
    *(v103 + 88) = v112;
    *(v103 + 96) = v146;
    *(v103 + 104) = v108;
  }

  *(v103 + 105) = *(v105 + 105);
  v116 = (v101 + 49) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v102 + v116 + 106) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v104 + v116 + 106) & 0xFFFFFFFFFFFFFFF8;
  if (*v118)
  {
    v119 = *(v118 + 8);
    *v117 = *v118;
    *(v117 + 8) = v119;
  }

  else
  {
    *v117 = *v118;
  }

  v120 = *(v118 + 16);
  if (v120)
  {
    v121 = *(v118 + 24);
    *(v117 + 16) = v120;
    *(v117 + 24) = v121;
  }

  else
  {
    *(v117 + 16) = *(v118 + 16);
  }

  v122 = *(v118 + 40);
  *(v117 + 32) = *(v118 + 32);
  *(v117 + 40) = v122;
  *(v117 + 48) = *(v118 + 48);
  v123 = ((v116 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
  v124 = v149 + v123;
  v125 = v150 + v123;
  *v124 = *v125;
  *(v124 + 8) = *(v125 + 8);
  *(v124 + 24) = *(v125 + 24);
  v126 = (v124 + 47) & 0xFFFFFFFFFFFFFFF8;
  v127 = (v125 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v126 = *v127;
  *(v126 + 8) = *(v127 + 8);
  *(v126 + 24) = *(v127 + 24);
  v128 = ((v126 + 47) & 0xFFFFFFFFFFFFFFF8);
  v129 = ((v127 + 47) & 0xFFFFFFFFFFFFFFF8);
  v130 = v129[1];
  *v128 = *v129;
  v128[1] = v130;
  v131 = (((((v116 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v132 = v131 + 16 + v152;
  v133 = v131 + 16 + v153;
  *v132 = *v133;
  *(v132 + 8) = *(v133 + 8);
  *(v132 + 24) = *(v133 + 24);
  v134 = *(v133 + 40);
  *(v132 + 56) = *(v133 + 56);
  *(v132 + 40) = v134;
  v135 = *(v133 + 72);
  *(v132 + 64) = *(v133 + 64);
  *(v132 + 72) = v135;
  v136 = (v131 + 87) & 0xFFFFFFFFFFFFFFF8;
  v137 = v136 + 16 + v152;
  v138 = v136 + 16 + v153;
  *v137 = *v138;
  v139 = *(v138 + 16);
  v140 = *(v138 + 32);
  v141 = *(v138 + 48);
  *(v137 + 64) = *(v138 + 64);
  *(v137 + 32) = v140;
  *(v137 + 48) = v141;
  *(v137 + 16) = v139;
  *(v137 + 72) = *(v138 + 72);
  v142 = ((v136 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
  v143 = (v142 + v152);
  v144 = (v142 + v153);
  v145 = v144[1];
  *v143 = *v144;
  v143[1] = v145;

  return a1;
}

void *sub_18E6D07FC(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 9) = *(v11 + 9);
  *(v10 + 10) = *(v11 + 10);
  *(v10 + 11) = *(v11 + 11);
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 80) & 0xF8;
  v15 = ~v14 & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + 19 + v10) & v15;
  v17 = (v14 + 19 + v11) & v15;
  v18 = v14 + 16;
  v19 = *(v13 + 64) + 7;
  if ((v19 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v20 = 40;
  }

  else
  {
    v20 = (v19 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v21 = v20 | 1;
  if (((((v14 + 16) & v15) + v20) | 2) <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = (((v14 + 16) & v15) + v20) | 2;
  }

  v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v24 = (((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v25 = *v24;
  __src = (v14 + 19 + v11) & v15;
  v347 = (v14 + 19 + v10) & v15;
  if (*v23 < 0xFFFFFFFFuLL)
  {
    if (v25 < 0xFFFFFFFF)
    {
      memcpy(v16, v17, (((((((((((((((((((((((((((((((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      return a1;
    }

    v30 = *(v17 + v22);
    v31 = v30 - 3;
    if (v30 < 3)
    {
LABEL_58:
      v344 = v16 | 7;
      v345 = a1;
      v342 = v17 | 7;
      if (v30 == 2)
      {
        *v16 = *v17;
        *(v16 + v22) = 2;

        v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
LABEL_159:
        v109 = *((((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8) + 8);
        *v23 = *v24;
        v23[1] = v109;
        v110 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
        v111 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v110 = *v111;
        v112 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
        v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
        *v112 = *v113;
        *(v112 + 8) = *(v113 + 8);
        *(v112 + 9) = *(v113 + 9);
        v114 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v115 = v114 + 10 + v16;
        v116 = v114 + 10 + v17;
        *v115 = *v116;
        v115 &= 0xFFFFFFFFFFFFFFF8;
        v116 &= 0xFFFFFFFFFFFFFFF8;
        *(v115 + 8) = *(v116 + 8);
        v117 = ((v115 + 31) & 0xFFFFFFFFFFFFFFF8);
        v118 = ((v116 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v117 = *v118;
        v117[1] = v118[1];
        v119 = ((v117 + 23) & 0xFFFFFFFFFFFFFFF8);
        v120 = ((v118 + 23) & 0xFFFFFFFFFFFFFFF8);
        v121 = v120[1];
        *v119 = *v120;
        v119[1] = v121;
        v122 = v17;
        v123 = (((((v114 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v124 = (v123 + 16 + v16);
        v125 = v123 + 16 + v122;
        v126 = *(v125 + 48);

        if (v126 == 1)
        {
          v127 = *v125;
          v128 = *(v125 + 16);
          v129 = *(v125 + 32);
          *(v124 + 6) = *(v125 + 48);
          *(v124 + 1) = v128;
          *(v124 + 2) = v129;
          *v124 = v127;
        }

        else
        {
          *v124 = *v125;
          *(v124 + 8) = *(v125 + 8);
          *(v124 + 24) = *(v125 + 24);
          *(v124 + 5) = *(v125 + 40);
          *(v124 + 6) = *(v125 + 48);
        }

        v130 = (v123 + 23) & 0xFFFFFFFFFFFFFFF8;
        *(v130 + 56 + v347) = *(v130 + 56 + __src);
        v131 = (v130 + 63) & 0xFFFFFFFFFFFFFFF8;
        v132 = (v131 + 8 + v347);
        v133 = (v131 + 8 + __src);
        *v132 = *v133;
        v134 = ((v132 + 15) & 0xFFFFFFFFFFFFFFF8);
        v135 = ((v133 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v134 = *v135;
        *((v134 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v135 + 15) & 0xFFFFFFFFFFFFFFF8);
        v136 = (((((v131 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v137 = (v136 + 8 + v347);
        v138 = (v136 + 8 + __src);
        v139 = v138[1];
        *v137 = *v138;
        v137[1] = v139;
        v140 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
        v141 = v140 + 16 + v347;
        v142 = v140 + 16 + __src;
        v143 = *(v142 + 40);

        if (v143 == 255)
        {
          v149 = *v142;
          v150 = *(v142 + 16);
          *(v141 + 25) = *(v142 + 25);
          *v141 = v149;
          *(v141 + 16) = v150;
        }

        else
        {
          v144 = *v142;
          v145 = *(v142 + 8);
          v146 = *(v142 + 16);
          v147 = *(v142 + 24);
          v148 = *(v142 + 32);
          sub_18E6CF73C(*v142, v145, v146, v147, v148, v143);
          *v141 = v144;
          *(v141 + 8) = v145;
          *(v141 + 16) = v146;
          *(v141 + 24) = v147;
          *(v141 + 32) = v148;
          *(v141 + 40) = v143;
        }

        *(v141 + 41) = *(v142 + 41);
        v151 = (v140 + 23) & 0xFFFFFFFFFFFFFFF8;
        v152 = v347 | 6;
        v153 = ((v347 | 6) + v151 + 42) & 0xFFFFFFFFFFFFFFF8;
        v154 = ((__src | 6) + v151 + 42) & 0xFFFFFFFFFFFFFFF8;
        v155 = *v154;
        v156 = *(v154 + 32);
        *(v153 + 16) = *(v154 + 16);
        *(v153 + 32) = v156;
        *v153 = v155;
        v157 = *(v154 + 104);
        if (v157 == 255)
        {
          v162 = *(v154 + 48);
          v163 = *(v154 + 64);
          v164 = *(v154 + 80);
          *(v153 + 89) = *(v154 + 89);
          *(v153 + 64) = v163;
          *(v153 + 80) = v164;
          *(v153 + 48) = v162;
        }

        else
        {
          v336 = *(v154 + 56);
          v340 = *(v154 + 48);
          v158 = *(v154 + 72);
          v335 = *(v154 + 64);
          v159 = *(v154 + 80);
          v160 = *(v154 + 88);
          v161 = *(v154 + 96);
          sub_18E6CFC68(v340, v336, v335, v158, v159, v160, v161, v157, sub_18E6A9F20);
          v152 = v347 | 6;
          *(v153 + 48) = v340;
          *(v153 + 56) = v336;
          *(v153 + 64) = v335;
          *(v153 + 72) = v158;
          *(v153 + 80) = v159;
          *(v153 + 88) = v160;
          *(v153 + 96) = v161;
          *(v153 + 104) = v157;
        }

        *(v153 + 105) = *(v154 + 105);
        v165 = (v151 + 49) & 0xFFFFFFFFFFFFFFF8;
        v166 = (v152 + v165 + 106) & 0xFFFFFFFFFFFFFFF8;
        v167 = ((__src | 6) + v165 + 106) & 0xFFFFFFFFFFFFFFF8;
        if (*v167)
        {
          v168 = *(v167 + 8);
          *v166 = *v167;
          *(v166 + 8) = v168;
        }

        else
        {
          *v166 = *v167;
        }

        v169 = *(v167 + 16);
        if (v169)
        {
          v170 = *(v167 + 24);
          *(v166 + 16) = v169;
          *(v166 + 24) = v170;
        }

        else
        {
          *(v166 + 16) = *(v167 + 16);
        }

        v171 = *(v167 + 40);
        *(v166 + 32) = *(v167 + 32);
        *(v166 + 40) = v171;
        *(v166 + 48) = *(v167 + 48);
        v172 = ((v165 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
        v173 = v344 + v172;
        v174 = v342 + v172;
        *v173 = *v174;
        *(v173 + 8) = *(v174 + 8);
        *(v173 + 24) = *(v174 + 24);
        v175 = (v173 + 47) & 0xFFFFFFFFFFFFFFF8;
        v176 = (v174 + 47) & 0xFFFFFFFFFFFFFFF8;
        *v175 = *v176;
        *(v175 + 8) = *(v176 + 8);
        *(v175 + 24) = *(v176 + 24);
        v177 = ((v175 + 47) & 0xFFFFFFFFFFFFFFF8);
        v178 = ((v176 + 47) & 0xFFFFFFFFFFFFFFF8);
        v179 = v178[1];
        *v177 = *v178;
        v177[1] = v179;
        v180 = (((((v165 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
        v181 = v180 + 16 + v347;
        v182 = v180 + 16 + __src;
        *v181 = *v182;
        *(v181 + 8) = *(v182 + 8);
        *(v181 + 24) = *(v182 + 24);
        v183 = *(v182 + 40);
        *(v181 + 56) = *(v182 + 56);
        *(v181 + 40) = v183;
        v184 = *(v182 + 72);
        *(v181 + 64) = *(v182 + 64);
        *(v181 + 72) = v184;
        v185 = (v180 + 87) & 0xFFFFFFFFFFFFFFF8;
        v186 = v185 + 16 + v347;
        v187 = v185 + 16 + __src;
        *v186 = *v187;
        v188 = *(v187 + 16);
        v189 = *(v187 + 32);
        v190 = *(v187 + 48);
        *(v186 + 64) = *(v187 + 64);
        *(v186 + 32) = v189;
        *(v186 + 48) = v190;
        *(v186 + 16) = v188;
        *(v186 + 72) = *(v187 + 72);
        v191 = ((v185 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
        v192 = (v191 + v347);
        v193 = (v191 + __src);
        v194 = v193[1];
        *v192 = *v193;
        v192[1] = v194;

        return v345;
      }

      if (v30 == 1)
      {
        v43 = *v17;
        *(v16 + 8) = *(v17 + 8);
        *v16 = v43;
        v44 = ((v18 + v16) & v15);
        v45 = ((v18 + v17) & v15);
        v46 = *(v45 + v20);
        v47 = v44;
        if (v46 > 2)
        {
          memcpy(v44, v45, v20 | 1);
          v44 = v47;
          v21 = v20 | 1;
          v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
        }

        else
        {
          if (v46 == 2)
          {
            (*(v13 + 16))(v44, v45, v12);
            v67 = (v47 + v19) & 0xFFFFFFFFFFFFFFF8;
            v68 = (v45 + v19) & 0xFFFFFFFFFFFFFFF8;
            if (*v68 < 0xFFFFFFFFuLL)
            {
              v44 = v47;
              v100 = *(v68 + 16);
              *v67 = *v68;
              *(v67 + 16) = v100;
            }

            else
            {
              *v67 = *v68;
              *(v67 + 8) = *(v68 + 8);
              *(v67 + 16) = *(v68 + 16);
              *(v67 + 24) = *(v68 + 24);

              v44 = v47;
            }

            v21 = v20 | 1;
            v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
            v99 = 2;
          }

          else
          {
            if (v46 != 1)
            {
              *v44 = *v45;
              v69 = v45[1];
              if (v69)
              {
                v44[1] = v69;
                v44[2] = v45[2];
                v44[3] = v45[3];
                v44[4] = v45[4];

                v44 = v47;
                v21 = v20 | 1;
                v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
                *(v47 + v20) = 0;
              }

              else
              {
                v200 = *(v45 + 3);
                *(v44 + 1) = *(v45 + 1);
                *(v44 + 3) = v200;
                *(v44 + v20) = 0;
              }

              goto LABEL_148;
            }

            (*(v13 + 16))(v44, v45, v12);
            v48 = (v47 + v19) & 0xFFFFFFFFFFFFFFF8;
            v49 = (v45 + v19) & 0xFFFFFFFFFFFFFFF8;
            if (*v49 < 0xFFFFFFFFuLL)
            {
              v44 = v47;
              v98 = *(v49 + 16);
              *v48 = *v49;
              *(v48 + 16) = v98;
            }

            else
            {
              *v48 = *v49;
              *(v48 + 8) = *(v49 + 8);
              *(v48 + 16) = *(v49 + 16);
              *(v48 + 24) = *(v49 + 24);

              v44 = v47;
            }

            v21 = v20 | 1;
            v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
            v99 = 1;
          }

          *(v44 + v20) = v99;
        }

LABEL_148:
        *(v44 + v21) = *(v45 + v21);
        *(v16 + v22) = 1;
        goto LABEL_159;
      }

      v50 = *v17;
      *(v16 + 8) = *(v17 + 8);
      *v16 = v50;
      v51 = ((v18 + v16) & v15);
      v52 = ((v18 + v17) & v15);
      v53 = *(v52 + v20);
      v54 = v51;
      if (v53 > 2)
      {
        memcpy(v51, v52, v20 | 1);
        v51 = v54;
        v21 = v20 | 1;
        v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
      }

      else
      {
        if (v53 == 2)
        {
          (*(v13 + 16))(v51, v52, v12);
          v70 = (v54 + v19) & 0xFFFFFFFFFFFFFFF8;
          v71 = (v52 + v19) & 0xFFFFFFFFFFFFFFF8;
          if (*v71 < 0xFFFFFFFFuLL)
          {
            v51 = v54;
            v108 = *(v71 + 16);
            *v70 = *v71;
            *(v70 + 16) = v108;
          }

          else
          {
            *v70 = *v71;
            *(v70 + 8) = *(v71 + 8);
            *(v70 + 16) = *(v71 + 16);
            *(v70 + 24) = *(v71 + 24);

            v51 = v54;
          }

          v21 = v20 | 1;
          v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
          v105 = 2;
        }

        else
        {
          if (v53 != 1)
          {
            *v51 = *v52;
            v72 = v52[1];
            if (v72)
            {
              v51[1] = v72;
              v51[2] = v52[2];
              v51[3] = v52[3];
              v51[4] = v52[4];

              v51 = v54;
              v21 = v20 | 1;
              v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
              *(v54 + v20) = 0;
            }

            else
            {
              v201 = *(v52 + 3);
              *(v51 + 1) = *(v52 + 1);
              *(v51 + 3) = v201;
              *(v51 + v20) = 0;
            }

            goto LABEL_158;
          }

          (*(v13 + 16))(v51, v52, v12);
          v55 = (v54 + v19) & 0xFFFFFFFFFFFFFFF8;
          v56 = (v52 + v19) & 0xFFFFFFFFFFFFFFF8;
          if (*v56 < 0xFFFFFFFFuLL)
          {
            v51 = v54;
            v104 = *(v56 + 16);
            *v55 = *v56;
            *(v55 + 16) = v104;
          }

          else
          {
            *v55 = *v56;
            *(v55 + 8) = *(v56 + 8);
            *(v55 + 16) = *(v56 + 16);
            *(v55 + 24) = *(v56 + 24);

            v51 = v54;
          }

          v21 = v20 | 1;
          v23 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
          v105 = 1;
        }

        *(v51 + v20) = v105;
      }

LABEL_158:
      *(v51 + v21) = *(v52 + v21);
      *(v16 + v22) = 0;
      goto LABEL_159;
    }

    if (v22 <= 3)
    {
      v32 = v22;
    }

    else
    {
      v32 = 4;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v33 = *v17;
        if (v22 >= 4)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v32 == 3)
        {
          v33 = *v17 | (*(v17 + 2) << 16);
          if (v22 < 4)
          {
            goto LABEL_57;
          }

LABEL_45:
          v30 = v33 + 3;
          goto LABEL_58;
        }

        v33 = *v17;
        if (v22 >= 4)
        {
          goto LABEL_45;
        }
      }

LABEL_57:
      v30 = (v33 | (v31 << (8 * v22))) + 3;
      goto LABEL_58;
    }

    if (!v32)
    {
      goto LABEL_58;
    }

    v33 = *v17;
    if (v22 < 4)
    {
      goto LABEL_57;
    }

    goto LABEL_45;
  }

  if (v25 >= 0xFFFFFFFF)
  {
    v343 = v16 | 7;
    v345 = a1;
    v341 = v17 | 7;
    if (v16 == v17)
    {
      goto LABEL_197;
    }

    v26 = *(v16 + v22);
    v27 = v26 - 3;
    if (v26 >= 3)
    {
      if (v22 <= 3)
      {
        v28 = v22;
      }

      else
      {
        v28 = 4;
      }

      if (v28 <= 1)
      {
        if (!v28)
        {
          goto LABEL_103;
        }

        v29 = *v16;
      }

      else if (v28 == 2)
      {
        v29 = *v16;
      }

      else if (v28 == 3)
      {
        v29 = *v16 | (*(v16 + 2) << 16);
      }

      else
      {
        v29 = *v16;
      }

      if (v22 < 4)
      {
        v26 = (v29 | (v27 << (8 * v22))) + 3;
      }

      else
      {
        v26 = v29 + 3;
      }
    }

LABEL_103:
    v339 = ((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8;
    if (v26 == 2)
    {
      v75 = v20 | 1;
    }

    else
    {
      v73 = (v18 + v16) & v15;
      v74 = *(v73 + v20);
      if (v74 > 2)
      {
        goto LABEL_111;
      }

      v75 = v20 | 1;
      if (v74 == 2 || v74 == 1)
      {
        (*(v13 + 8))((v18 + v347) & v15, v12);
        v21 = v20 | 1;
        if (*((v19 + v73) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_111;
        }
      }

      else if (!*(((v18 + v347) & v15) + 8))
      {
LABEL_111:
        v17 = __src;
        v76 = *(__src + v22);
        v77 = v76 - 3;
        if (v76 < 3)
        {
          goto LABEL_128;
        }

        if (v22 <= 3)
        {
          v78 = v22;
        }

        else
        {
          v78 = 4;
        }

        if (v78 <= 1)
        {
          if (!v78)
          {
            goto LABEL_128;
          }

          v79 = *__src;
        }

        else if (v78 == 2)
        {
          v79 = *__src;
        }

        else if (v78 == 3)
        {
          v79 = *__src | (*(__src + 2) << 16);
        }

        else
        {
          v79 = *__src;
        }

        if (v22 < 4)
        {
          v76 = (v79 | (v77 << (8 * v22))) + 3;
        }

        else
        {
          v76 = v79 + 3;
        }

LABEL_128:
        if (v76 == 2)
        {
          v16 = v347;
          *v347 = *__src;
          *(v347 + v22) = 2;

          v23 = v339;
        }

        else if (v76 == 1)
        {
          v80 = *__src;
          *(v347 + 8) = *(__src + 8);
          *v347 = v80;
          v81 = ((v18 + v347) & v15);
          v82 = ((v18 + __src) & v15);
          v83 = *(v82 + v20);
          if (v83 > 2)
          {
            v94 = v21;
            memcpy(v81, v82, v21);
            v21 = v94;
            v95 = v81;
            v16 = v347;
            v23 = v339;
          }

          else
          {
            if (v83 == 2)
            {
              v101 = v21;
              (*(v13 + 16))(v81, v82, v12);
              v102 = (v81 + v19) & 0xFFFFFFFFFFFFFFF8;
              v103 = (v82 + v19) & 0xFFFFFFFFFFFFFFF8;
              if (*v103 < 0xFFFFFFFFuLL)
              {
                v203 = *(v103 + 16);
                *v102 = *v103;
                *(v102 + 16) = v203;
              }

              else
              {
                *v102 = *v103;
                *(v102 + 8) = *(v103 + 8);
                *(v102 + 16) = *(v103 + 16);
                *(v102 + 24) = *(v103 + 24);
              }

              v23 = v339;
              v21 = v101;
              *(v81 + v20) = 2;
            }

            else if (v83 == 1)
            {
              v84 = v21;
              (*(v13 + 16))(v81, v82, v12);
              v85 = (v81 + v19) & 0xFFFFFFFFFFFFFFF8;
              v86 = (v82 + v19) & 0xFFFFFFFFFFFFFFF8;
              if (*v86 < 0xFFFFFFFFuLL)
              {
                v202 = *(v86 + 16);
                *v85 = *v86;
                *(v85 + 16) = v202;
              }

              else
              {
                *v85 = *v86;
                *(v85 + 8) = *(v86 + 8);
                *(v85 + 16) = *(v86 + 16);
                *(v85 + 24) = *(v86 + 24);
              }

              v23 = v339;
              v21 = v84;
              *(v81 + v20) = 1;
            }

            else
            {
              *v81 = *v82;
              v106 = v82[1];
              if (v106)
              {
                v81[1] = v106;
                v81[2] = v82[2];
                v81[3] = v82[3];
                v81[4] = v82[4];
                v107 = v21;

                v21 = v107;
              }

              else
              {
                v206 = *(v82 + 3);
                *(v81 + 1) = *(v82 + 1);
                *(v81 + 3) = v206;
              }

              v23 = v339;
              *(v81 + v20) = 0;
            }

            v95 = v81;
            v16 = v347;
          }

          *(v95 + v21) = *(v82 + v21);
          *(v16 + v22) = 1;
        }

        else
        {
          v87 = *__src;
          *(v347 + 8) = *(__src + 8);
          *v347 = v87;
          v88 = ((v18 + v347) & v15);
          v89 = ((v18 + __src) & v15);
          v90 = *(v89 + v20);
          if (v90 > 2)
          {
            v96 = v21;
            memcpy(v88, v89, v21);
            v21 = v96;
            v97 = v88;
            v16 = v347;
            v23 = v339;
          }

          else
          {
            if (v90 == 2)
            {
              v195 = v21;
              (*(v13 + 16))(v88, v89, v12);
              v196 = (v88 + v19) & 0xFFFFFFFFFFFFFFF8;
              v197 = (v89 + v19) & 0xFFFFFFFFFFFFFFF8;
              if (*v197 < 0xFFFFFFFFuLL)
              {
                v205 = *(v197 + 16);
                *v196 = *v197;
                *(v196 + 16) = v205;
              }

              else
              {
                *v196 = *v197;
                *(v196 + 8) = *(v197 + 8);
                *(v196 + 16) = *(v197 + 16);
                *(v196 + 24) = *(v197 + 24);
              }

              v23 = v339;
              v21 = v195;
              *(v88 + v20) = 2;
            }

            else if (v90 == 1)
            {
              v91 = v21;
              (*(v13 + 16))(v88, v89, v12);
              v92 = (v88 + v19) & 0xFFFFFFFFFFFFFFF8;
              v93 = (v89 + v19) & 0xFFFFFFFFFFFFFFF8;
              if (*v93 < 0xFFFFFFFFuLL)
              {
                v204 = *(v93 + 16);
                *v92 = *v93;
                *(v92 + 16) = v204;
              }

              else
              {
                *v92 = *v93;
                *(v92 + 8) = *(v93 + 8);
                *(v92 + 16) = *(v93 + 16);
                *(v92 + 24) = *(v93 + 24);
              }

              v23 = v339;
              v21 = v91;
              *(v88 + v20) = 1;
            }

            else
            {
              *v88 = *v89;
              v198 = v89[1];
              if (v198)
              {
                v88[1] = v198;
                v88[2] = v89[2];
                v88[3] = v89[3];
                v88[4] = v89[4];
                v199 = v21;

                v21 = v199;
              }

              else
              {
                v207 = *(v89 + 3);
                *(v88 + 1) = *(v89 + 1);
                *(v88 + 3) = v207;
              }

              v23 = v339;
              *(v88 + v20) = 0;
            }

            v97 = v88;
            v16 = v347;
          }

          *(v97 + v21) = *(v89 + v21);
          *(v16 + v22) = 0;
        }

LABEL_197:
        v208 = v24[1];
        *v23 = *v24;
        v23[1] = v208;
        v209 = v23;

        v210 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
        v211 = ((v209 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v211 = *v210;
        v212 = (v211 + 15) & 0xFFFFFFFFFFFFFFF8;
        v213 = (v210 + 15) & 0xFFFFFFFFFFFFFFF8;
        *v212 = *v213;
        *(v212 + 8) = *(v213 + 8);
        *(v212 + 9) = *(v213 + 9);
        v214 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v215 = v214 + 10 + v16;
        v216 = v214 + 10 + v17;
        *v215 = *v216;
        v215 &= 0xFFFFFFFFFFFFFFF8;
        v216 &= 0xFFFFFFFFFFFFFFF8;
        *(v215 + 8) = *(v216 + 8);
        *(v215 + 16) = *(v216 + 16);
        v217 = v17;
        v218 = ((v215 + 31) & 0xFFFFFFFFFFFFFFF8);
        v219 = ((v216 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v218 = *v219;
        v218[1] = v219[1];

        v220 = ((v218 + 23) & 0xFFFFFFFFFFFFFFF8);
        v221 = ((v219 + 23) & 0xFFFFFFFFFFFFFFF8);
        v222 = v221[1];
        *v220 = *v221;
        v220[1] = v222;

        v223 = (((((v214 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
        v224 = v223 + 16 + v347;
        v225 = v223 + 16 + v217;
        v226 = *(v225 + 48);
        if (*(v224 + 48) == 1)
        {
          if (v226 == 1)
          {
            v227 = *v225;
            v228 = *(v225 + 16);
            v229 = *(v225 + 32);
            *(v224 + 48) = *(v225 + 48);
            *(v224 + 16) = v228;
            *(v224 + 32) = v229;
            *v224 = v227;
          }

          else
          {
            *v224 = *v225;
            *(v224 + 8) = *(v225 + 8);
            *(v224 + 24) = *(v225 + 24);
            *(v224 + 40) = *(v225 + 40);
            *(v224 + 48) = *(v225 + 48);
          }
        }

        else if (v226 == 1)
        {
          sub_18E6AC114(v223 + 16 + v347);
          v231 = *(v225 + 16);
          v230 = *(v225 + 32);
          v232 = *v225;
          *(v224 + 48) = *(v225 + 48);
          *(v224 + 16) = v231;
          *(v224 + 32) = v230;
          *v224 = v232;
        }

        else
        {
          *v224 = *v225;
          *(v224 + 8) = *(v225 + 8);
          *(v224 + 16) = *(v225 + 16);
          *(v224 + 24) = *(v225 + 24);
          *(v224 + 32) = *(v225 + 32);
          *(v224 + 40) = *(v225 + 40);
          *(v224 + 48) = *(v225 + 48);
        }

        v233 = (v223 + 23) & 0xFFFFFFFFFFFFFFF8;
        *(v233 + 56 + v347) = *(v233 + 56 + __src);
        v234 = (v233 + 63) & 0xFFFFFFFFFFFFFFF8;
        v235 = v234 + 8 + v347;
        v236 = (v234 + 8 + __src);
        *v235 = *v236;
        v235 += 15;

        v237 = ((v236 + 15) & 0xFFFFFFFFFFFFFFF8);
        *(v235 & 0xFFFFFFFFFFFFFFF8) = *v237;
        *(((v235 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *((v237 + 15) & 0xFFFFFFFFFFFFFFF8);
        v238 = (((((v234 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        v239 = (v238 + 8 + v347);
        v240 = (v238 + 8 + __src);
        v241 = v240[1];
        *v239 = *v240;
        v239[1] = v241;

        v242 = (v238 + 15) & 0xFFFFFFFFFFFFFFF8;
        v243 = v242 + 16 + v347;
        v244 = v242 + 16 + __src;
        v245 = *(v244 + 40);
        if (*(v243 + 40) == 255)
        {
          if (v245 == 255)
          {
            v264 = *v244;
            v265 = *(v244 + 16);
            *(v243 + 25) = *(v244 + 25);
            *v243 = v264;
            *(v243 + 16) = v265;
          }

          else
          {
            v257 = *v244;
            v258 = *(v244 + 8);
            v259 = *(v244 + 16);
            v260 = *(v244 + 24);
            v261 = *(v244 + 32);
            sub_18E6CF73C(*v244, v258, v259, v260, v261, *(v244 + 40));
            *v243 = v257;
            *(v243 + 8) = v258;
            *(v243 + 16) = v259;
            *(v243 + 24) = v260;
            *(v243 + 32) = v261;
            *(v243 + 40) = v245;
          }
        }

        else if (v245 == 255)
        {
          sub_18E68B548(v242 + 16 + v347, &qword_1EAC8E7D0, &qword_18E72E840);
          v262 = *(v244 + 25);
          v263 = *(v244 + 16);
          *v243 = *v244;
          *(v243 + 16) = v263;
          *(v243 + 25) = v262;
        }

        else
        {
          v246 = *v244;
          v247 = *(v244 + 8);
          v248 = *(v244 + 16);
          v249 = *(v244 + 24);
          v250 = *(v244 + 32);
          sub_18E6CF73C(*v244, v247, v248, v249, v250, *(v244 + 40));
          v251 = *v243;
          v252 = *(v243 + 8);
          v253 = *(v243 + 16);
          v254 = *(v243 + 24);
          v255 = *(v243 + 32);
          *v243 = v246;
          *(v243 + 8) = v247;
          *(v243 + 16) = v248;
          *(v243 + 24) = v249;
          *(v243 + 32) = v250;
          v256 = *(v243 + 40);
          *(v243 + 40) = v245;
          sub_18E6CFBE8(v251, v252, v253, v254, v255, v256);
        }

        *(v243 + 41) = *(v244 + 41);
        v266 = (v242 + 23) & 0xFFFFFFFFFFFFFFF8;
        v267 = v347 | 6;
        v268 = ((v347 | 6) + v266 + 42) & 0xFFFFFFFFFFFFFFF8;
        v269 = __src | 6;
        v270 = ((__src | 6) + v266 + 42) & 0xFFFFFFFFFFFFFFF8;
        v271 = *v270;
        *(v268 + 8) = *(v270 + 8);
        *v268 = v271;
        v272 = *(v270 + 16);
        *(v268 + 32) = *(v270 + 32);
        *(v268 + 16) = v272;
        *(v268 + 40) = *(v270 + 40);
        v273 = *(v270 + 104);
        if (*(v268 + 104) == 255)
        {
          if (v273 == 255)
          {
            v299 = *(v270 + 48);
            v300 = *(v270 + 64);
            v301 = *(v270 + 80);
            *(v268 + 89) = *(v270 + 89);
            *(v268 + 64) = v300;
            *(v268 + 80) = v301;
            *(v268 + 48) = v299;
          }

          else
          {
            v338 = v266;
            v289 = *(v270 + 48);
            v290 = *(v270 + 56);
            v291 = *(v270 + 64);
            v292 = *(v270 + 72);
            v293 = *(v270 + 80);
            v294 = *(v270 + 88);
            v295 = *(v270 + 96);
            sub_18E6CFC68(v289, v290, v291, v292, v293, v294, v295, v273, sub_18E6A9F20);
            *(v268 + 48) = v289;
            *(v268 + 56) = v290;
            v266 = v338;
            v267 = v347 | 6;
            *(v268 + 64) = v291;
            *(v268 + 72) = v292;
            v269 = __src | 6;
            *(v268 + 80) = v293;
            *(v268 + 88) = v294;
            *(v268 + 96) = v295;
            *(v268 + 104) = v273;
          }
        }

        else if (v273 == 255)
        {
          sub_18E68B548(v268 + 48, qword_1EAC8E7D8, &unk_18E72E848);
          v297 = *(v270 + 64);
          v296 = *(v270 + 80);
          v298 = *(v270 + 48);
          *(v268 + 89) = *(v270 + 89);
          *(v268 + 64) = v297;
          *(v268 + 80) = v296;
          *(v268 + 48) = v298;
        }

        else
        {
          v337 = v266;
          v274 = *(v270 + 48);
          v275 = *(v270 + 56);
          v276 = *(v270 + 64);
          v277 = *(v270 + 72);
          v278 = *(v270 + 80);
          v279 = *(v270 + 88);
          v280 = *(v270 + 96);
          sub_18E6CFC68(v274, v275, v276, v277, v278, v279, v280, v273, sub_18E6A9F20);
          v281 = *(v268 + 48);
          v282 = *(v268 + 56);
          v283 = *(v268 + 64);
          v284 = *(v268 + 72);
          v285 = *(v268 + 80);
          v286 = *(v268 + 88);
          v287 = *(v268 + 96);
          *(v268 + 48) = v274;
          *(v268 + 56) = v275;
          v269 = __src | 6;
          v266 = v337;
          *(v268 + 64) = v276;
          *(v268 + 72) = v277;
          *(v268 + 80) = v278;
          *(v268 + 88) = v279;
          *(v268 + 96) = v280;
          v267 = v347 | 6;
          v288 = *(v268 + 104);
          *(v268 + 104) = v273;
          sub_18E6CFC68(v281, v282, v283, v284, v285, v286, v287, v288, sub_18E6AF804);
        }

        *(v268 + 105) = *(v270 + 105);
        v302 = (v266 + 49) & 0xFFFFFFFFFFFFFFF8;
        v303 = (v267 + v302 + 106) & 0xFFFFFFFFFFFFFFF8;
        v304 = (v269 + v302 + 106) & 0xFFFFFFFFFFFFFFF8;
        v305 = *v304;
        if (*v303)
        {
          if (v305)
          {
            v306 = *(v304 + 8);
            *v303 = v305;
            *(v303 + 8) = v306;

            goto LABEL_225;
          }
        }

        else if (v305)
        {
          v307 = *(v304 + 8);
          *v303 = v305;
          *(v303 + 8) = v307;

          goto LABEL_225;
        }

        *v303 = *v304;
LABEL_225:
        v308 = *(v304 + 16);
        if (*(v303 + 16))
        {
          if (v308)
          {
            v309 = *(v304 + 24);
            *(v303 + 16) = v308;
            *(v303 + 24) = v309;

LABEL_232:
            v311 = *(v304 + 40);
            *(v303 + 32) = *(v304 + 32);
            *(v303 + 40) = v311;

            *(v303 + 48) = *(v304 + 48);
            v312 = ((v302 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
            v313 = (v343 + v312);
            v314 = (v341 + v312);
            *(v343 + v312) = *(v341 + v312);

            v313[1] = v314[1];
            v313[2] = v314[2];
            v313[3] = v314[3];
            v313[4] = v314[4];
            v315 = ((v313 + 47) & 0xFFFFFFFFFFFFFFF8);
            v316 = ((v314 + 47) & 0xFFFFFFFFFFFFFFF8);
            *v315 = *v316;

            v315[1] = v316[1];
            v315[2] = v316[2];
            v315[3] = v316[3];
            v315[4] = v316[4];
            v317 = ((v315 + 47) & 0xFFFFFFFFFFFFFFF8);
            v318 = ((v316 + 47) & 0xFFFFFFFFFFFFFFF8);
            v319 = v318[1];
            *v317 = *v318;
            v317[1] = v319;

            v320 = (((((v302 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
            v321 = v320 + 16 + v347;
            v322 = v320 + 16 + __src;
            *v321 = *v322;

            *(v321 + 8) = *(v322 + 8);
            *(v321 + 16) = *(v322 + 16);
            *(v321 + 24) = *(v322 + 24);
            *(v321 + 32) = *(v322 + 32);
            v323 = *(v322 + 40);
            *(v321 + 56) = *(v322 + 56);
            *(v321 + 40) = v323;
            v324 = *(v322 + 72);
            *(v321 + 64) = *(v322 + 64);
            *(v321 + 72) = v324;

            v325 = (v320 + 87) & 0xFFFFFFFFFFFFFFF8;
            v326 = v325 + 16 + v347;
            v327 = v325 + 16 + __src;
            v328 = *v327;
            *(v326 + 16) = *(v327 + 16);
            *v326 = v328;
            v329 = *(v327 + 24);
            *(v326 + 40) = *(v327 + 40);
            *(v326 + 24) = v329;
            v330 = *(v327 + 48);
            *(v326 + 64) = *(v327 + 64);
            *(v326 + 48) = v330;
            *(v326 + 72) = *(v327 + 72);
            v331 = ((v325 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
            v332 = (v331 + v347);
            v333 = (v331 + __src);
            v334 = v333[1];
            *v332 = *v333;
            v332[1] = v334;

            return v345;
          }
        }

        else if (v308)
        {
          v310 = *(v304 + 24);
          *(v303 + 16) = v308;
          *(v303 + 24) = v310;

          goto LABEL_232;
        }

        *(v303 + 16) = *(v304 + 16);
        goto LABEL_232;
      }
    }

    v21 = v75;
    goto LABEL_111;
  }

  v34 = *(v16 + v22);
  v35 = v34 - 3;
  if (v34 >= 3)
  {
    if (v22 <= 3)
    {
      v36 = v22;
    }

    else
    {
      v36 = 4;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        goto LABEL_48;
      }

      v37 = *v16;
      if (v22 < 4)
      {
LABEL_74:
        if ((v37 | (v35 << (8 * v22))) == 0xFFFFFFFF)
        {
          goto LABEL_75;
        }

        goto LABEL_49;
      }
    }

    else if (v36 == 2)
    {
      v37 = *v16;
      if (v22 < 4)
      {
        goto LABEL_74;
      }
    }

    else if (v36 == 3)
    {
      v37 = *v16 | (*(v16 + 2) << 16);
      if (v22 < 4)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v37 = *v16;
      if (v22 < 4)
      {
        goto LABEL_74;
      }
    }

    v34 = v37 + 3;
  }

LABEL_48:
  if (v34 == 2)
  {
LABEL_75:
    v40 = a1;
    goto LABEL_76;
  }

LABEL_49:
  v40 = a1;
  v41 = (v18 + v16) & v15;
  v42 = *(v41 + v20);
  if (v42 <= 2)
  {
    if (v42 == 2 || v42 == 1)
    {
      (*(v13 + 8))(v41, v12);
      if (*((v19 + v41) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
LABEL_53:

LABEL_76:
      }
    }

    else if (*(v41 + 8))
    {
      goto LABEL_53;
    }
  }

  v57 = v40;

  v58 = ((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v16 + 16);
  if (*(v16 + 16 + v58 + 48) != 1)
  {
  }

  v60 = (((((((((((v58 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = v59[v60 + 40];
  if (v61 != 255)
  {
    sub_18E6CFBE8(*&v59[v60], *&v59[v60 + 8], *&v59[v60 + 16], *&v59[v60 + 24], *&v59[v60 + 32], v61);
  }

  v62 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v347 + v62 + 49) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(v63 + 104);
  if (v64 != 255)
  {
    sub_18E6CFC68(*(v63 + 48), *(v63 + 56), *(v63 + 64), *(v63 + 72), *(v63 + 80), *(v63 + 88), *(v63 + 96), v64, sub_18E6AF804);
  }

  v65 = (v62 + 49) & 0xFFFFFFFFFFFFFFF8;
  v66 = ((v347 + v65 + 113) & 0xFFFFFFFFFFFFFFF8);
  if (*v66)
  {
  }

  if (v66[2])
  {
  }

  memcpy(v347, __src, ((((((((((((v65 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v57;
}

__n128 sub_18E6D256C(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 9) = *(v11 + 9);
  *(v10 + 10) = *(v11 + 10);
  *(v10 + 11) = *(v11 + 11);
  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 80) & 0xF8;
  v14 = v13 + 19 + v10;
  v15 = ~v13 & 0xFFFFFFFFFFFFFFF8;
  v16 = v14 & v15;
  v17 = (v13 + 19 + v11) & v15;
  v18 = v13 + 16;
  v19 = (v13 + 16) & v15;
  v20 = *(v12 + 64) + 7;
  if ((v20 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v21 = 40;
  }

  else
  {
    v21 = (v20 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((v19 + v21) | 2) <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = (v19 + v21) | 2;
  }

  v23 = v17 | 7;
  v24 = (((v17 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  if (*v24 < 0xFFFFFFFFuLL)
  {
    memcpy((v14 & v15), v17, (((((((((((((((((((((((((((((((((((((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    return result;
  }

  v25 = *(v17 + v22);
  v26 = v25 - 3;
  if (v25 >= 3)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
        goto LABEL_23;
      }

      v28 = *v17;
      if (v22 < 4)
      {
LABEL_36:
        v45 = v28 | (v26 << (8 * v22));
        v25 = v45 + 3;
        if (v45 == -1)
        {
          goto LABEL_37;
        }

LABEL_24:
        v30 = v21 | 1;
        if (v25 == 1)
        {
          v31 = *v17;
          *((v14 & v15) + 8) = *(v17 + 8);
          *v16 = v31;
          v32 = ((v18 + v16) & v15);
          v33 = ((v18 + v17) & v15);
          v34 = *(v33 + v21);
          if (v34 > 2)
          {
            memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
            v23 = v17 | 7;
          }

          else if (v34 == 2)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v47 = ((v32 + v20) & 0xFFFFFFFFFFFFFFF8);
            v48 = ((v33 + v20) & 0xFFFFFFFFFFFFFFF8);
            v49 = v48[1];
            *v47 = *v48;
            v47[1] = v49;
            *(v32 + v21) = 2;
          }

          else if (v34 == 1)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v35 = ((v32 + v20) & 0xFFFFFFFFFFFFFFF8);
            v36 = ((v33 + v20) & 0xFFFFFFFFFFFFFFF8);
            v37 = v36[1];
            *v35 = *v36;
            v35[1] = v37;
            *(v32 + v21) = 1;
          }

          else
          {
            v50 = *v33;
            v51 = *(((v18 + v17) & v15) + 0x10);
            *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
            *v32 = v50;
            *(((v18 + v16) & v15) + 0x10) = v51;
            *(v32 + v21) = 0;
          }

          *(v32 + v30) = *(v33 + v30);
          v46 = 1;
        }

        else
        {
          v38 = *v17;
          *((v14 & v15) + 8) = *(v17 + 8);
          *v16 = v38;
          v39 = ((v18 + v16) & v15);
          v40 = ((v18 + v17) & v15);
          v41 = *(v40 + v21);
          if (v41 > 2)
          {
            memcpy(((v18 + v16) & v15), ((v18 + v17) & v15), v21 | 1);
            v23 = v17 | 7;
          }

          else if (v41 == 2)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v52 = ((v39 + v20) & 0xFFFFFFFFFFFFFFF8);
            v53 = ((v40 + v20) & 0xFFFFFFFFFFFFFFF8);
            v54 = v53[1];
            *v52 = *v53;
            v52[1] = v54;
            *(v39 + v21) = 2;
          }

          else if (v41 == 1)
          {
            (*(v12 + 32))((v18 + v16) & v15, (v18 + v17) & v15);
            v23 = v17 | 7;
            v42 = ((v39 + v20) & 0xFFFFFFFFFFFFFFF8);
            v43 = ((v40 + v20) & 0xFFFFFFFFFFFFFFF8);
            v44 = v43[1];
            *v42 = *v43;
            v42[1] = v44;
            *(v39 + v21) = 1;
          }

          else
          {
            v55 = *v40;
            v56 = *(((v18 + v17) & v15) + 0x10);
            *(((v18 + v16) & v15) + 0x20) = *(((v18 + v17) & v15) + 0x20);
            *v39 = v55;
            *(((v18 + v16) & v15) + 0x10) = v56;
            *(v39 + v21) = 0;
          }

          v46 = 0;
          *(v39 + v30) = *(v40 + v30);
        }

        goto LABEL_44;
      }
    }

    else if (v27 == 2)
    {
      v28 = *v17;
      if (v22 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v27 == 3)
    {
      v28 = *v17 | (*(v17 + 2) << 16);
      if (v22 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = *v17;
      if (v22 < 4)
      {
        goto LABEL_36;
      }
    }

    v25 = v28 + 3;
  }

LABEL_23:
  if (v25 != 2)
  {
    goto LABEL_24;
  }

LABEL_37:
  *v16 = *v17;
  v46 = 2;
LABEL_44:
  *(v16 + v22) = v46;
  v57 = (((v16 | 7) + (v22 | 1)) & 0xFFFFFFFFFFFFFFF8);
  *v57 = *v24;
  v58 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v58 = *v59;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  v62 = ((((v22 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v62 + 10 + v16;
  v64 = v62 + 10 + v17;
  *v63 = *v64;
  v63 &= 0xFFFFFFFFFFFFFFF8;
  v64 &= 0xFFFFFFFFFFFFFFF8;
  *(v63 + 8) = *(v64 + 8);
  v65 = ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  *((v65 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  v67 = (((((v62 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v67 + 16 + v16);
  v69 = (v67 + 16 + v17);
  v70 = *v69;
  v71 = *(v69 + 1);
  v72 = *(v69 + 2);
  *(v68 + 6) = *(v69 + 6);
  *(v68 + 1) = v71;
  *(v68 + 2) = v72;
  *v68 = v70;
  v73 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v73 + 56 + v16) = *(v73 + 56 + v17);
  v74 = (v73 + 63) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 8 + v17);
  v76 = (v74 + 8 + v16);
  *v76 = *v75;
  v77 = ((v75 + 15) & 0xFFFFFFFFFFFFFFF8);
  v78 = ((v76 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v78 = *v77;
  *((v78 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v77 + 15) & 0xFFFFFFFFFFFFFFF8);
  v79 = (((((v74 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v79 + 8 + v16) = *(v79 + 8 + v17);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 16 + v16);
  v82 = (v80 + 16 + v17);
  v83 = *v82;
  v84 = *(v82 + 1);
  *(v81 + 26) = *(v82 + 26);
  *v81 = v83;
  v81[1] = v84;
  v85 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = (((v16 | 6) + v85 + 42) & 0xFFFFFFFFFFFFFFF8);
  v87 = (((v17 | 6) + v85 + 42) & 0xFFFFFFFFFFFFFFF8);
  v89 = v87[4];
  v88 = v87[5];
  v90 = v87[3];
  *(v86 + 90) = *(v87 + 90);
  v86[4] = v89;
  v86[5] = v88;
  v86[3] = v90;
  v91 = *v87;
  v92 = v87[2];
  v86[1] = v87[1];
  v86[2] = v92;
  *v86 = v91;
  v93 = (v85 + 49) & 0xFFFFFFFFFFFFFFF8;
  v94 = ((v16 | 6) + v93 + 106) & 0xFFFFFFFFFFFFFFF8;
  v95 = ((v17 | 6) + v93 + 106) & 0xFFFFFFFFFFFFFFF8;
  v96 = *v95;
  v97 = *(v95 + 32);
  *(v94 + 16) = *(v95 + 16);
  *(v94 + 32) = v97;
  *v94 = v96;
  *(v94 + 48) = *(v95 + 48);
  v98 = ((v93 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
  v99 = (v16 | 7) + v98;
  v100 = v23 + v98;
  v101 = *v100;
  v102 = *(v100 + 16);
  *(v99 + 32) = *(v100 + 32);
  *v99 = v101;
  *(v99 + 16) = v102;
  v103 = (v99 + 47) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v100 + 47) & 0xFFFFFFFFFFFFFFF8;
  v105 = *v104;
  v106 = *(v104 + 16);
  *(v103 + 32) = *(v104 + 32);
  *v103 = v105;
  *(v103 + 16) = v106;
  *((v103 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v104 + 47) & 0xFFFFFFFFFFFFFFF8);
  v107 = (((((v93 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v107 + 16 + v16);
  v109 = (v107 + 16 + v17);
  v110 = *v109;
  v111 = *(v109 + 1);
  v112 = *(v109 + 2);
  *(v108 + 41) = *(v109 + 41);
  v108[1] = v111;
  v108[2] = v112;
  *v108 = v110;
  v108[4] = *(v109 + 4);
  v113 = (v107 + 87) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + 16 + v16);
  v115 = (v113 + 16 + v17);
  *v114 = *v115;
  v116 = *(v115 + 1);
  v117 = *(v115 + 2);
  v118 = *(v115 + 3);
  v114[64] = v115[64];
  *(v114 + 2) = v117;
  *(v114 + 3) = v118;
  *(v114 + 1) = v116;
  *(v114 + 9) = *(v115 + 9);
  v119 = ((v113 + 95) & 0xFFFFFFFFFFFFFFF8) + 8;
  result = *(v119 + v17);
  *(v119 + v16) = result;
  return result;
}

void *sub_18E6D2D3C(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 9) = *(v12 + 9);
  *(v11 + 10) = *(v12 + 10);
  *(v11 + 11) = *(v12 + 11);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80) & 0xF8;
  v16 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 19 + v11) & v16;
  v18 = (v15 + 19 + v12) & v16;
  v19 = v15 + 16;
  v20 = (v15 + 16) & v16;
  v21 = *(v14 + 64) + 7;
  if ((v21 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v22 = 40;
  }

  else
  {
    v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v23 = v22 | 1;
  if (((v20 + v22) | 2) <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = (v20 + v22) | 2;
  }

  v25 = v17 | 7;
  v26 = (((v17 | 7) + (v24 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v27 = v18 | 7;
  v28 = (((v18 | 7) + (v24 | 1)) & 0xFFFFFFFFFFFFFFF8);
  v29 = *v28;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v29 < 0xFFFFFFFF)
    {
      memcpy(v17, v18, (((((((((((((((((((((((((((((((((((((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v3;
    }

    v34 = *(v18 + v24);
    v35 = v34 - 3;
    if (v34 >= 3)
    {
      if (v24 <= 3)
      {
        v36 = v24;
      }

      else
      {
        v36 = 4;
      }

      if (v36 <= 1)
      {
        if (!v36)
        {
          goto LABEL_46;
        }

        v37 = *v18;
        if (v24 < 4)
        {
LABEL_69:
          v65 = v37 | (v35 << (8 * v24));
          v34 = v65 + 3;
          if (v65 == -1)
          {
            goto LABEL_70;
          }

          goto LABEL_47;
        }
      }

      else if (v36 == 2)
      {
        v37 = *v18;
        if (v24 < 4)
        {
          goto LABEL_69;
        }
      }

      else if (v36 == 3)
      {
        v37 = *v18 | (*(v18 + 2) << 16);
        if (v24 < 4)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v37 = *v18;
        if (v24 < 4)
        {
          goto LABEL_69;
        }
      }

      v34 = v37 + 3;
    }

LABEL_46:
    if (v34 == 2)
    {
LABEL_70:
      *v17 = *v18;
      v66 = 2;
LABEL_98:
      *(v17 + v24) = v66;
      *v26 = *v28;
      v89 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      v90 = ((v28 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v89 = *v90;
      v91 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v91 = *v92;
      *(v91 + 8) = *(v92 + 8);
      *(v91 + 9) = *(v92 + 9);
      v93 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = v93 + 10 + v17;
      v95 = v93 + 10 + v18;
      *v94 = *v95;
      v94 &= 0xFFFFFFFFFFFFFFF8;
      v95 &= 0xFFFFFFFFFFFFFFF8;
      *(v94 + 8) = *(v95 + 8);
      v96 = ((v94 + 31) & 0xFFFFFFFFFFFFFFF8);
      v97 = ((v95 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v96 = *v97;
      *((v96 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v97 + 23) & 0xFFFFFFFFFFFFFFF8);
      v98 = (((((v93 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v99 = (v98 + 16 + v17);
      v100 = (v98 + 16 + v18);
      v101 = *v100;
      v102 = *(v100 + 1);
      v103 = *(v100 + 2);
      *(v99 + 6) = *(v100 + 6);
      *(v99 + 1) = v102;
      *(v99 + 2) = v103;
      *v99 = v101;
      v104 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
      *(v104 + 56 + v17) = *(v104 + 56 + v18);
      v105 = (v104 + 63) & 0xFFFFFFFFFFFFFFF8;
      v106 = (v105 + 8 + v18);
      v107 = (v105 + 8 + v17);
      *v107 = *v106;
      v108 = ((v106 + 15) & 0xFFFFFFFFFFFFFFF8);
      v109 = ((v107 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v109 = *v108;
      *((v109 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v108 + 15) & 0xFFFFFFFFFFFFFFF8);
      v110 = (((((v105 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v110 + 8 + v17) = *(v110 + 8 + v18);
      v111 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v111 + 16 + v17);
      v113 = (v111 + 16 + v18);
      v114 = *v113;
      v115 = *(v113 + 1);
      *(v112 + 26) = *(v113 + 26);
      *v112 = v114;
      *(v112 + 1) = v115;
      v116 = (v111 + 23) & 0xFFFFFFFFFFFFFFF8;
      v117 = (((v17 | 6) + v116 + 42) & 0xFFFFFFFFFFFFFFF8);
      v118 = (((v18 | 6) + v116 + 42) & 0xFFFFFFFFFFFFFFF8);
      v120 = v118[4];
      v119 = v118[5];
      v121 = v118[3];
      *(v117 + 90) = *(v118 + 90);
      v117[4] = v120;
      v117[5] = v119;
      v117[3] = v121;
      v122 = *v118;
      v123 = v118[2];
      v117[1] = v118[1];
      v117[2] = v123;
      *v117 = v122;
      v124 = (v116 + 49) & 0xFFFFFFFFFFFFFFF8;
      v125 = ((v17 | 6) + v124 + 106) & 0xFFFFFFFFFFFFFFF8;
      v126 = ((v18 | 6) + v124 + 106) & 0xFFFFFFFFFFFFFFF8;
      v127 = *v126;
      v128 = *(v126 + 32);
      *(v125 + 16) = *(v126 + 16);
      *(v125 + 32) = v128;
      *v125 = v127;
      *(v125 + 48) = *(v126 + 48);
      v129 = ((v124 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
      v130 = v25 + v129;
      v131 = v27 + v129;
      v132 = *v131;
      v133 = *(v131 + 16);
      *(v130 + 32) = *(v131 + 32);
      *v130 = v132;
      *(v130 + 16) = v133;
      v134 = (v130 + 47) & 0xFFFFFFFFFFFFFFF8;
      v135 = (v131 + 47) & 0xFFFFFFFFFFFFFFF8;
      v136 = *v135;
      v137 = *(v135 + 16);
      *(v134 + 32) = *(v135 + 32);
      *v134 = v136;
      *(v134 + 16) = v137;
      *((v134 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v135 + 47) & 0xFFFFFFFFFFFFFFF8);
      v138 = (((((v124 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
      v139 = (v138 + 16 + v17);
      v140 = (v138 + 16 + v18);
      v141 = *v140;
      v142 = *(v140 + 1);
      v143 = *(v140 + 2);
      *(v139 + 41) = *(v140 + 41);
      *(v139 + 1) = v142;
      *(v139 + 2) = v143;
      *v139 = v141;
      *(v139 + 4) = *(v140 + 4);
      v144 = (v138 + 87) & 0xFFFFFFFFFFFFFFF8;
      v145 = (v144 + 16 + v17);
      v146 = (v144 + 16 + v18);
      *v145 = *v146;
      v147 = *(v146 + 1);
      v148 = *(v146 + 2);
      v149 = *(v146 + 3);
      v145[64] = v146[64];
      *(v145 + 2) = v148;
      *(v145 + 3) = v149;
      *(v145 + 1) = v147;
      *(v145 + 9) = *(v146 + 9);
      *(((v144 + 95) & 0xFFFFFFFFFFFFFFF8) + 8 + v17) = *(((v144 + 95) & 0xFFFFFFFFFFFFFFF8) + 8 + v18);
      return v3;
    }

LABEL_47:
    if (v34 == 1)
    {
      v42 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *v17 = v42;
      v43 = ((v19 + v17) & v16);
      v44 = ((v19 + v18) & v16);
      v45 = *(v44 + v22);
      if (v45 > 2)
      {
        v60 = v22 | 1;
        memcpy(v43, v44, v23);
        v27 = v18 | 7;
        v25 = v17 | 7;
LABEL_91:
        *(v43 + v60) = *(v44 + v60);
        v66 = 1;
LABEL_97:
        v3 = a1;
        goto LABEL_98;
      }

      if (v45 == 2)
      {
        v77 = v21;
        (*(v14 + 32))(v43, v44);
        v27 = v18 | 7;
        v25 = v17 | 7;
        v78 = ((v43 + v77) & 0xFFFFFFFFFFFFFFF8);
        v79 = ((v44 + v77) & 0xFFFFFFFFFFFFFFF8);
        v80 = v79[1];
        *v78 = *v79;
        v78[1] = v80;
        v50 = 2;
      }

      else
      {
        if (v45 != 1)
        {
          v81 = *v44;
          v82 = v44[1];
          *(v43 + 4) = *(v44 + 4);
          *v43 = v81;
          v43[1] = v82;
          *(v43 + v22) = 0;
          goto LABEL_90;
        }

        v46 = v21;
        (*(v14 + 32))(v43, v44);
        v27 = v18 | 7;
        v25 = v17 | 7;
        v47 = ((v43 + v46) & 0xFFFFFFFFFFFFFFF8);
        v48 = ((v44 + v46) & 0xFFFFFFFFFFFFFFF8);
        v49 = v48[1];
        *v47 = *v48;
        v47[1] = v49;
        v50 = 1;
      }

      *(v43 + v22) = v50;
LABEL_90:
      v60 = v22 | 1;
      goto LABEL_91;
    }

    v51 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *v17 = v51;
    v52 = ((v19 + v17) & v16);
    v53 = ((v19 + v18) & v16);
    v54 = *(v53 + v22);
    if (v54 > 2)
    {
      v61 = v22 | 1;
      memcpy(v52, v53, v23);
      v27 = v18 | 7;
      v25 = v17 | 7;
LABEL_96:
      v66 = 0;
      *(v52 + v61) = *(v53 + v61);
      goto LABEL_97;
    }

    if (v54 == 2)
    {
      v83 = v21;
      (*(v14 + 32))(v52, v53);
      v27 = v18 | 7;
      v25 = v17 | 7;
      v84 = ((v52 + v83) & 0xFFFFFFFFFFFFFFF8);
      v85 = ((v53 + v83) & 0xFFFFFFFFFFFFFFF8);
      v86 = v85[1];
      *v84 = *v85;
      v84[1] = v86;
      v59 = 2;
    }

    else
    {
      if (v54 != 1)
      {
        v87 = *v53;
        v88 = v53[1];
        *(v52 + 4) = *(v53 + 4);
        *v52 = v87;
        v52[1] = v88;
        *(v52 + v22) = 0;
        goto LABEL_95;
      }

      v55 = v21;
      (*(v14 + 32))(v52, v53);
      v27 = v18 | 7;
      v25 = v17 | 7;
      v56 = ((v52 + v55) & 0xFFFFFFFFFFFFFFF8);
      v57 = ((v53 + v55) & 0xFFFFFFFFFFFFFFF8);
      v58 = v57[1];
      *v56 = *v57;
      v56[1] = v58;
      v59 = 1;
    }

    *(v52 + v22) = v59;
LABEL_95:
    v61 = v22 | 1;
    goto LABEL_96;
  }

  if (v29 >= 0xFFFFFFFF)
  {
    v286 = v18 | 7;
    if (v17 == v18)
    {
      goto LABEL_156;
    }

    v30 = *(v17 + v24);
    v31 = v30 - 3;
    if (v30 >= 3)
    {
      if (v24 <= 3)
      {
        v32 = v24;
      }

      else
      {
        v32 = 4;
      }

      if (v32 <= 1)
      {
        if (!v32)
        {
          goto LABEL_104;
        }

        v33 = *v17;
      }

      else if (v32 == 2)
      {
        v33 = *v17;
      }

      else if (v32 == 3)
      {
        v33 = *v17 | (*(v17 + 2) << 16);
      }

      else
      {
        v33 = *v17;
      }

      if (v24 < 4)
      {
        v30 = (v33 | (v31 << (8 * v24))) + 3;
      }

      else
      {
        v30 = v33 + 3;
      }
    }

LABEL_104:
    v279 = *(*(v13 - 8) + 64) + 7;
    v280 = v13;
    if (v30 == 2)
    {
      v281 = v17 | 7;
    }

    else
    {
      v150 = (v19 + v17) & v16;
      v151 = *(v150 + v22);
      if (v151 > 2)
      {
        goto LABEL_115;
      }

      v281 = v17 | 7;
      if (v151 == 2 || v151 == 1)
      {
        (*(v14 + 8))((v19 + v17) & v16, v13);
        v25 = v17 | 7;
        v23 = v22 | 1;
        if (*((v279 + v150) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v25 = v17 | 7;
        v23 = v22 | 1;
        if (!*(((v19 + v17) & v16) + 8))
        {
          goto LABEL_115;
        }
      }
    }

    v25 = v281;
    v23 = v22 | 1;
LABEL_115:
    v152 = *(v18 + v24);
    v153 = v152 - 3;
    v3 = a1;
    if (v152 < 3)
    {
      v155 = v280;
      goto LABEL_131;
    }

    if (v24 <= 3)
    {
      v154 = v24;
    }

    else
    {
      v154 = 4;
    }

    v155 = v280;
    if (v154 <= 1)
    {
      if (!v154)
      {
        goto LABEL_131;
      }

      v156 = *v18;
    }

    else if (v154 == 2)
    {
      v156 = *v18;
    }

    else if (v154 == 3)
    {
      v156 = *v18 | (*(v18 + 2) << 16);
    }

    else
    {
      v156 = *v18;
    }

    if (v24 < 4)
    {
      v152 = (v156 | (v153 << (8 * v24))) + 3;
    }

    else
    {
      v152 = v156 + 3;
    }

LABEL_131:
    if (v152 == 2)
    {
      *v17 = *v18;
      v165 = 2;
LABEL_155:
      *(v17 + v24) = v165;
LABEL_156:
      v188 = v25;
      v190 = *v28;
      v189 = v28 + 23;
      *v26 = v190;

      v191 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v191 = *(v189 & 0xFFFFFFFFFFFFFFF8);
      v192 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
      v193 = ((v189 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      *v192 = *v193;
      *(v192 + 8) = *(v193 + 8);
      *(v192 + 9) = *(v193 + 9);
      v194 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v195 = v194 + 10 + v17;
      v196 = v194 + 10 + v18;
      *v195 = *v196;
      v195 &= 0xFFFFFFFFFFFFFFF8;
      v196 &= 0xFFFFFFFFFFFFFFF8;
      *(v195 + 8) = *(v196 + 8);
      *(v195 + 16) = *(v196 + 16);
      v197 = ((v195 + 31) & 0xFFFFFFFFFFFFFFF8);
      v198 = ((v196 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v197 = *v198;
      v197[1] = v198[1];

      *((v197 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v198 + 23) & 0xFFFFFFFFFFFFFFF8);

      v199 = (((((v194 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v200 = (v199 + 16 + v17);
      v201 = (v199 + 16 + v18);
      if (*(v200 + 6) == 1)
      {
        v202 = *v201;
        v203 = *(v201 + 1);
        v204 = *(v201 + 2);
        *(v200 + 6) = *(v201 + 6);
        *(v200 + 1) = v203;
        *(v200 + 2) = v204;
        *v200 = v202;
      }

      else if (*(v201 + 6) == 1)
      {
        sub_18E6AC114(v199 + 16 + v17);
        v206 = *(v201 + 1);
        v205 = *(v201 + 2);
        v207 = *v201;
        *(v200 + 6) = *(v201 + 6);
        *(v200 + 1) = v206;
        *(v200 + 2) = v205;
        *v200 = v207;
      }

      else
      {
        *v200 = *v201;
        *(v200 + 1) = *(v201 + 1);
        *(v200 + 2) = *(v201 + 2);
        *(v200 + 3) = *(v201 + 3);
        *(v200 + 4) = *(v201 + 4);
        *(v200 + 5) = *(v201 + 5);
        *(v200 + 6) = *(v201 + 6);
      }

      v208 = (v199 + 23) & 0xFFFFFFFFFFFFFFF8;
      *(v208 + 56 + v17) = *(v208 + 56 + v18);
      v209 = (v208 + 63) & 0xFFFFFFFFFFFFFFF8;
      v210 = v209 + 8 + v17;
      v211 = v209 + 8 + v18;
      v212 = *v211;
      v211 += 15;
      *v210 = v212;
      v210 += 15;

      *(v210 & 0xFFFFFFFFFFFFFFF8) = *(v211 & 0xFFFFFFFFFFFFFFF8);
      *(((v210 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *(((v211 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      v213 = (((((v209 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      *(v213 + 8 + v17) = *(v213 + 8 + v18);

      v214 = (v213 + 15) & 0xFFFFFFFFFFFFFFF8;
      v215 = (v214 + 16 + v17);
      v216 = (v214 + 16 + v18);
      v217 = v215[40];
      if (v217 == 255)
      {
        v219 = v3;
        v227 = *v216;
        v228 = *(v216 + 1);
        *(v215 + 25) = *(v216 + 25);
        *v215 = v227;
        *(v215 + 1) = v228;
      }

      else
      {
        v218 = v216[40];
        v219 = v3;
        if (v218 == 255)
        {
          sub_18E68B548(v214 + 16 + v17, &qword_1EAC8E7D0, &qword_18E72E840);
          v229 = *(v216 + 25);
          v230 = *(v216 + 1);
          *v215 = *v216;
          *(v215 + 1) = v230;
          *(v215 + 25) = v229;
        }

        else
        {
          v220 = *(v216 + 4);
          v221 = *v215;
          v222 = *(v215 + 1);
          v223 = *(v215 + 2);
          v224 = *(v215 + 3);
          v225 = *(v215 + 4);
          v226 = *(v216 + 1);
          *v215 = *v216;
          *(v215 + 1) = v226;
          *(v215 + 4) = v220;
          v215[40] = v218;
          sub_18E6CFBE8(v221, v222, v223, v224, v225, v217);
        }
      }

      v215[41] = v216[41];
      v231 = (v214 + 23) & 0xFFFFFFFFFFFFFFF8;
      v232 = ((v17 | 6) + v231 + 42) & 0xFFFFFFFFFFFFFFF8;
      v233 = ((v18 | 6) + v231 + 42) & 0xFFFFFFFFFFFFFFF8;
      v234 = *v233;
      *(v232 + 8) = *(v233 + 8);
      *v232 = v234;
      v235 = *(v233 + 16);
      *(v232 + 32) = *(v233 + 32);
      *(v232 + 16) = v235;
      *(v232 + 40) = *(v233 + 40);
      v236 = *(v232 + 104);
      if (v236 == 255)
      {
        v248 = *(v233 + 48);
        v249 = *(v233 + 64);
        v250 = *(v233 + 80);
        *(v232 + 89) = *(v233 + 89);
        *(v232 + 64) = v249;
        *(v232 + 80) = v250;
        *(v232 + 48) = v248;
      }

      else
      {
        v237 = *(v233 + 104);
        if (v237 == 255)
        {
          sub_18E68B548(v232 + 48, qword_1EAC8E7D8, &unk_18E72E848);
          v252 = *(v233 + 64);
          v251 = *(v233 + 80);
          v253 = *(v233 + 48);
          *(v232 + 89) = *(v233 + 89);
          *(v232 + 64) = v252;
          *(v232 + 80) = v251;
          *(v232 + 48) = v253;
        }

        else
        {
          v238 = *(v233 + 96);
          v239 = *(v232 + 48);
          v240 = *(v232 + 56);
          v241 = *(v232 + 64);
          v242 = *(v232 + 72);
          v243 = *(v232 + 80);
          v244 = *(v232 + 88);
          v245 = *(v232 + 96);
          v246 = *(v233 + 64);
          v247 = *(v233 + 80);
          *(v232 + 48) = *(v233 + 48);
          *(v232 + 64) = v246;
          *(v232 + 80) = v247;
          *(v232 + 96) = v238;
          *(v232 + 104) = v237;
          sub_18E6CFC68(v239, v240, v241, v242, v243, v244, v245, v236, sub_18E6AF804);
        }
      }

      *(v232 + 105) = *(v233 + 105);
      v254 = (v231 + 49) & 0xFFFFFFFFFFFFFFF8;
      v255 = ((v17 | 6) + v254 + 106) & 0xFFFFFFFFFFFFFFF8;
      v256 = ((v18 | 6) + v254 + 106) & 0xFFFFFFFFFFFFFFF8;
      v257 = *v256;
      if (*v255)
      {
        if (v257)
        {
          v258 = *(v256 + 8);
          *v255 = v257;
          *(v255 + 8) = v258;

          goto LABEL_178;
        }
      }

      else if (v257)
      {
        v259 = *(v256 + 8);
        *v255 = v257;
        *(v255 + 8) = v259;
        goto LABEL_178;
      }

      *v255 = *v256;
LABEL_178:
      v260 = *(v256 + 16);
      if (*(v255 + 16))
      {
        if (v260)
        {
          v261 = *(v256 + 24);
          *(v255 + 16) = v260;
          *(v255 + 24) = v261;

LABEL_185:
          v3 = v219;
          *(v255 + 32) = *(v256 + 32);

          *(v255 + 48) = *(v256 + 48);
          v263 = ((v254 + 113) & 0xFFFFFFFFFFFFFFF8) + 49;
          v264 = (v188 + v263);
          v265 = (v286 + v263);
          *(v188 + v263) = *(v286 + v263);

          v264[1] = v265[1];
          v264[2] = v265[2];
          v264[3] = v265[3];
          v264[4] = v265[4];
          v266 = ((v264 + 47) & 0xFFFFFFFFFFFFFFF8);
          v267 = ((v265 + 47) & 0xFFFFFFFFFFFFFFF8);
          *v266 = *v267;

          v266[1] = v267[1];
          v266[2] = v267[2];
          v266[3] = v267[3];
          v266[4] = v267[4];
          *((v266 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v267 + 47) & 0xFFFFFFFFFFFFFFF8);

          v268 = (((((v254 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
          v269 = (v268 + 16 + v17);
          v270 = (v268 + 16 + v18);
          *v269 = *v270;

          *(v269 + 1) = *(v270 + 1);
          *(v269 + 2) = *(v270 + 2);
          *(v269 + 3) = *(v270 + 3);
          *(v269 + 4) = *(v270 + 4);
          v271 = *(v270 + 40);
          v269[56] = v270[56];
          *(v269 + 40) = v271;
          *(v269 + 4) = *(v270 + 4);

          v272 = (v268 + 87) & 0xFFFFFFFFFFFFFFF8;
          v273 = (v272 + 16 + v17);
          v274 = (v272 + 16 + v18);
          v275 = *v274;
          v273[16] = v274[16];
          *v273 = v275;
          v276 = *(v274 + 24);
          v273[40] = v274[40];
          *(v273 + 24) = v276;
          v277 = *(v274 + 3);
          v273[64] = v274[64];
          *(v273 + 3) = v277;
          *(v273 + 9) = *(v274 + 9);
          *(((v272 + 95) & 0xFFFFFFFFFFFFFFF8) + 8 + v17) = *(((v272 + 95) & 0xFFFFFFFFFFFFFFF8) + 8 + v18);

          return v3;
        }
      }

      else if (v260)
      {
        v262 = *(v256 + 24);
        *(v255 + 16) = v260;
        *(v255 + 24) = v262;
        goto LABEL_185;
      }

      *(v255 + 16) = *(v256 + 16);
      goto LABEL_185;
    }

    if (v152 == 1)
    {
      v157 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *v17 = v157;
      v158 = ((v19 + v17) & v16);
      v159 = ((v19 + v18) & v16);
      v160 = *(v159 + v22);
      if (v160 > 2)
      {
        v174 = v23;
        v175 = v25;
        memcpy(v158, v159, v23);
        v25 = v175;
LABEL_148:
        *(v158 + v174) = *(v159 + v174);
        v165 = 1;
LABEL_154:
        v3 = a1;
        goto LABEL_155;
      }

      if (v160 == 2)
      {
        v284 = v25;
        (*(v14 + 32))(v158, v159, v155);
        v25 = v284;
        v178 = ((v158 + v279) & 0xFFFFFFFFFFFFFFF8);
        v179 = ((v159 + v279) & 0xFFFFFFFFFFFFFFF8);
        v180 = v179[1];
        *v178 = *v179;
        v178[1] = v180;
        v164 = 2;
      }

      else
      {
        if (v160 != 1)
        {
          v181 = *v159;
          v182 = v159[1];
          *(v158 + 4) = *(v159 + 4);
          *v158 = v181;
          v158[1] = v182;
          *(v158 + v22) = 0;
          goto LABEL_147;
        }

        v282 = v25;
        (*(v14 + 32))(v158, v159, v155);
        v25 = v282;
        v161 = ((v158 + v279) & 0xFFFFFFFFFFFFFFF8);
        v162 = ((v159 + v279) & 0xFFFFFFFFFFFFFFF8);
        v163 = v162[1];
        *v161 = *v162;
        v161[1] = v163;
        v164 = 1;
      }

      *(v158 + v22) = v164;
LABEL_147:
      v174 = v22 | 1;
      goto LABEL_148;
    }

    v166 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *v17 = v166;
    v167 = ((v19 + v17) & v16);
    v168 = ((v19 + v18) & v16);
    v169 = *(v168 + v22);
    if (v169 > 2)
    {
      v176 = v23;
      v177 = v25;
      memcpy(v167, v168, v23);
      v25 = v177;
LABEL_153:
      v165 = 0;
      *(v167 + v176) = *(v168 + v176);
      goto LABEL_154;
    }

    if (v169 == 2)
    {
      v285 = v25;
      (*(v14 + 32))(v167, v168, v155);
      v25 = v285;
      v183 = ((v167 + v279) & 0xFFFFFFFFFFFFFFF8);
      v184 = ((v168 + v279) & 0xFFFFFFFFFFFFFFF8);
      v185 = v184[1];
      *v183 = *v184;
      v183[1] = v185;
      v173 = 2;
    }

    else
    {
      if (v169 != 1)
      {
        v186 = *v168;
        v187 = v168[1];
        *(v167 + 4) = *(v168 + 4);
        *v167 = v186;
        v167[1] = v187;
        *(v167 + v22) = 0;
        goto LABEL_152;
      }

      v283 = v25;
      (*(v14 + 32))(v167, v168, v155);
      v25 = v283;
      v170 = ((v167 + v279) & 0xFFFFFFFFFFFFFFF8);
      v171 = ((v168 + v279) & 0xFFFFFFFFFFFFFFF8);
      v172 = v171[1];
      *v170 = *v171;
      v170[1] = v172;
      v173 = 1;
    }

    *(v167 + v22) = v173;
LABEL_152:
    v176 = v22 | 1;
    goto LABEL_153;
  }

  v38 = *(v17 + v24);
  v39 = v38 - 3;
  if (v38 >= 3)
  {
    if (v24 <= 3)
    {
      v40 = v24;
    }

    else
    {
      v40 = 4;
    }

    if (v40 <= 1)
    {
      if (!v40)
      {
        goto LABEL_60;
      }

      v41 = *v17;
      if (v24 < 4)
      {
LABEL_72:
        if ((v41 | (v39 << (8 * v24))) == 0xFFFFFFFF)
        {
          goto LABEL_73;
        }

        goto LABEL_61;
      }
    }

    else if (v40 == 2)
    {
      v41 = *v17;
      if (v24 < 4)
      {
        goto LABEL_72;
      }
    }

    else if (v40 == 3)
    {
      v41 = *v17 | (*(v17 + 2) << 16);
      if (v24 < 4)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v41 = *v17;
      if (v24 < 4)
      {
        goto LABEL_72;
      }
    }

    v38 = v41 + 3;
  }

LABEL_60:
  if (v38 == 2)
  {
LABEL_73:

    goto LABEL_74;
  }

LABEL_61:
  v62 = (v19 + v17) & v16;
  v63 = *(v62 + v22);
  if (v63 <= 2)
  {
    if (v63 == 2 || v63 == 1)
    {
      v64 = *(*(v13 - 8) + 64) + 7;
      (*(v14 + 8))(v62, v13);
      if (*((v64 + v62) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
LABEL_65:

        goto LABEL_73;
      }
    }

    else if (*(v62 + 8))
    {
      goto LABEL_65;
    }
  }

LABEL_74:

  v67 = ((((((((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v17 + 16);
  if (*(v17 + 16 + v67 + 48) != 1)
  {
  }

  v69 = (((((((((((v67 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = v68[v69 + 40];
  if (v70 != 255)
  {
    sub_18E6CFBE8(*&v68[v69], *&v68[v69 + 8], *&v68[v69 + 16], *&v68[v69 + 24], *&v68[v69 + 32], v70);
  }

  v71 = v3;
  v72 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v17 + v72 + 49) & 0xFFFFFFFFFFFFFFF8;
  v74 = *(v73 + 104);
  if (v74 != 255)
  {
    sub_18E6CFC68(*(v73 + 48), *(v73 + 56), *(v73 + 64), *(v73 + 72), *(v73 + 80), *(v73 + 88), *(v73 + 96), v74, sub_18E6AF804);
  }

  v75 = (v72 + 49) & 0xFFFFFFFFFFFFFFF8;
  v76 = ((v17 + v75 + 113) & 0xFFFFFFFFFFFFFFF8);
  if (*v76)
  {
  }

  if (v76[2])
  {
  }

  memcpy(v17, v18, ((((((((((((v75 + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v71;
}

uint64_t sub_18E6D42DC(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 <= 0x28)
  {
    v6 = 40;
  }

  v7 = v6 + ((v4 + 16) & ~(v4 | 7));
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v8 = ((v4 + 59) & ~v5) + ((((((((((((((((((((((((((((((((((((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483645;
  if ((v8 & 0xFFFFFFF8) != 0)
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
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_21:
      v15 = v13 - 1;
      if (v9)
      {
        v15 = 0;
        v16 = *a1;
      }

      else
      {
        v16 = 0;
      }

      return (v16 | v15) + 0x7FFFFFFF;
    }

    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  v17 = *((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 12) & ~v5) + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_18E6D44F8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = (v4 + 16) & ~(v4 | 7);
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = (v4 + 59) & ~v5;
  v9 = v7 + v6;
  if (v7 + v6 <= 8)
  {
    v9 = 8;
  }

  v10 = v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + 169) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v13 = 0;
  }

  else
  {
    v11 = a3 - 2147483645;
    if (v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 49) & 0xFFFFFFF8) + 169) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != -16)
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
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 49) & 0xFFFFFFF8) + 169) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == -16)
    {
      v14 = a2 - 2147483646;
    }

    else
    {
      v14 = 1;
    }

    if (v8 + ((((((((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 49) & 0xFFFFFFF8) + 169) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != -16)
    {
      v15 = a2 - 0x7FFFFFFF;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v13)
    {
      *(result + v10) = v14;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (v13)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_31:
        *((((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 12) & ~v5) + v9 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
        return result;
      }

LABEL_30:
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    if (v13 == 2)
    {
      *(result + v10) = 0;
      goto LABEL_30;
    }

    *(result + v10) = 0;
    if (a2)
    {
      goto LABEL_31;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PanComponentValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PanComponentValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_18E6D47E8(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);

  return a1;
}

uint64_t *sub_18E6D4828(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

uint64_t *sub_18E6D4890(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t sub_18E6D48F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6D496C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6D49AC()
{
  result = qword_1EAC8E8E0;
  if (!qword_1EAC8E8E0)
  {
    type metadata accessor for CGVector(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E8E0);
  }

  return result;
}

uint64_t sub_18E6D4A04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_18E6D4A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E918, &qword_18E72EA30);
  v3 = sub_18E72B738();
  LOWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_18E6EB564(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 2 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 4);
    v15 = *v10;

    v8 = sub_18E6EB564(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E6D4B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E910, &qword_18E72EA28);
  v3 = sub_18E72B738();
  LOWORD(v4) = *(a1 + 32);
  v16 = *(a1 + 56);
  v17 = *(a1 + 40);
  v15 = *(a1 + 72);
  v5 = *(a1 + 88);
  result = sub_18E6EB564(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 152);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 2 * result) = v4;
    v9 = v3[7] + 56 * result;
    *v9 = v17;
    *(v9 + 16) = v16;
    *(v9 + 32) = v15;
    *(v9 + 48) = v5 & 1;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 64;
    v4 = *(v8 - 28);
    v16 = *(v8 - 2);
    v17 = *(v8 - 3);
    v15 = *(v8 - 1);
    v5 = *v8;

    result = sub_18E6EB564(v4);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6D4CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_18E6D4D54(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  (*(*(v4 + 8) + 16))(&v8, v3);
  v5 = v8;
  v6 = (*(*(v4 + 16) + 8))(v3);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
}

uint64_t GestureNodeID.hashValue.getter(uint64_t a1)
{
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t EventID.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t _s8Gestures12GestureTraitV12AttributeKeyV9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6D5070(uint64_t a1)
{
  v2 = *v1;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v2);
  return sub_18E72B8E8();
}

void *MouseEvent.init(id:phase:timestamp:location:button:)@<X0>(void *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v8 = *a2;
  v9 = *a5;
  *a6 = *result;
  *(a6 + 8) = v8;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a7;
  *(a6 + 40) = a8;
  *(a6 + 48) = v9;
  return result;
}

Gestures::MouseEvent::Button __swiftcall MouseEvent.Button.init(rawValue:)(Gestures::MouseEvent::Button rawValue)
{
  if (rawValue.rawValue < 1)
  {
    __break(1u);
  }

  else
  {
    v1->rawValue = rawValue.rawValue;
  }

  return rawValue;
}

void *sub_18E6D5184@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result < 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 8) = 0;
  }

  return result;
}

unint64_t sub_18E6D51AC(uint64_t a1)
{
  result = sub_18E6D51D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6D51D4()
{
  result = qword_1EAC8E928;
  if (!qword_1EAC8E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E928);
  }

  return result;
}

unint64_t sub_18E6D5228(uint64_t a1)
{
  result = sub_18E6D5250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6D5250()
{
  result = qword_1EAC8E930;
  if (!qword_1EAC8E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E930);
  }

  return result;
}

unint64_t sub_18E6D52A4(uint64_t a1)
{
  *(a1 + 8) = sub_18E6D52D4();
  result = sub_18E6D5328();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_18E6D52D4()
{
  result = qword_1EAC8E938;
  if (!qword_1EAC8E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E938);
  }

  return result;
}

unint64_t sub_18E6D5328()
{
  result = qword_1EAC8E940[0];
  if (!qword_1EAC8E940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8E940);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MouseEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MouseEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

__n128 (*sub_18E6D5474(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_18E6D54A0;
}

__n128 sub_18E6D54A0(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

double sub_18E6D54F8@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 * a3;
  *a2 = result;
  return result;
}

double sub_18E6D5508@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_18E6D551C(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double sub_18E6D553C@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double (*sub_18E6D5548(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_18E6D5574;
}

double sub_18E6D5574(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*sub_18E6D5584(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_18E6D55B0;
}

uint64_t sub_18E6D55B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CombinerElement(255, *(a1 + 16), *(a1 + 24), a4);
  result = type metadata accessor for ReplicatingList.Storage(319, v4, &off_1F01A6EC0, v5);
  if (v7 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_18E6D5684(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = v10 & 0xF8 | 7;
  v12 = *(v9 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v7 + v11) & ~v11) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = (((v7 + v11) & ~v11) + v13) | 2;
  }

  v15 = *(v6 + 80) & 0xF8 | v11;
  v16 = (*(v6 + 80) | v10) & 0x100000;
  if (v15 == 7 && v16 == 0 && (((((v14 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10 <= 0x18)
  {
    v20 = a2[v14];
    v21 = v20 - 3;
    if (v20 < 3)
    {
      goto LABEL_30;
    }

    if (v14 <= 3)
    {
      v22 = v14;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = *a2;
      if (v14 < 4)
      {
LABEL_45:
        v43 = v23 | (v21 << (8 * v14));
        v20 = v43 + 3;
        if (v43 == -1)
        {
          goto LABEL_46;
        }

        goto LABEL_31;
      }
    }

    else if (v22 == 2)
    {
      v23 = *a2;
      if (v14 < 4)
      {
        goto LABEL_45;
      }
    }

    else if (v22 == 3)
    {
      v23 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v23 = *a2;
      if (v14 < 4)
      {
        goto LABEL_45;
      }
    }

    v20 = v23 + 3;
LABEL_30:
    if (v20 == 2)
    {
LABEL_46:
      *a1 = *a2;
      *(a1 + v14) = 2;

LABEL_67:
      v56 = ((a1 + v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      v57 = (&a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
      v58 = v57[1];
      *v56 = *v57;
      v56[1] = v58;
      v59 = ((v56 + 23) & 0xFFFFFFFFFFFFFFF8);
      v60 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v59 = *v60;
      v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
      v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v61 = *v62;
      *(v61 + 8) = *(v62 + 8);
      *(v61 + 9) = *(v62 + 9);
      goto LABEL_68;
    }

LABEL_31:
    __n = v13 | 1;
    v24 = AssociatedTypeWitness;
    if (v20 == 1)
    {
      (*(v6 + 16))(a1, a2, v5);
      v25 = a1 + v7 + 7;
      v26 = v25 & 0xFFFFFFFFFFFFFFF8;
      v27 = &a2[v7 + 7];
      v28 = v27 & 0xFFFFFFFFFFFFFFF8;
      v29 = *((v27 & 0xFFFFFFFFFFFFFFF8) + v13);
      if (v29 > 2)
      {
        v39 = (v27 & 0xFFFFFFFFFFFFFFF8);
        v40 = v13 | 1;
        memcpy((v25 & 0xFFFFFFFFFFFFFFF8), v39, __n);
        v26 = v25 & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        if (v29 == 2)
        {
          v66 = v25 & 0xFFFFFFFFFFFFFFF8;
          (*(v9 + 16))(v25 & 0xFFFFFFFFFFFFFFF8, v27 & 0xFFFFFFFFFFFFFFF8, v24);
          v44 = ((v25 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          v45 = ((v27 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          if (*v45 < 0xFFFFFFFFuLL)
          {
            v52 = *(v45 + 16);
            *v44 = *v45;
            *(v44 + 16) = v52;
          }

          else
          {
            *v44 = *v45;
            *(v44 + 8) = *(v45 + 8);
            *(v44 + 16) = *(v45 + 16);
            *(v44 + 24) = *(v45 + 24);
          }

          v40 = v13 | 1;
          v51 = 2;
        }

        else
        {
          if (v29 != 1)
          {
            *v26 = *v28;
            v46 = *(v28 + 8);
            v40 = v13 | 1;
            if (v46)
            {
              *(v26 + 8) = v46;
              *(v26 + 16) = *(v28 + 16);
              *(v26 + 24) = *(v28 + 24);
              *(v26 + 32) = *(v28 + 32);

              v26 = v25 & 0xFFFFFFFFFFFFFFF8;
              *((v25 & 0xFFFFFFFFFFFFFFF8) + v13) = 0;
            }

            else
            {
              v64 = *(v28 + 24);
              *(v26 + 8) = *(v28 + 8);
              *(v26 + 24) = v64;
              *(v26 + v13) = 0;
            }

            goto LABEL_60;
          }

          v66 = v25 & 0xFFFFFFFFFFFFFFF8;
          (*(v9 + 16))(v25 & 0xFFFFFFFFFFFFFFF8, v27 & 0xFFFFFFFFFFFFFFF8, v24);
          v30 = ((v25 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          v31 = ((v27 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
          if (*v31 < 0xFFFFFFFFuLL)
          {
            v50 = *(v31 + 16);
            *v30 = *v31;
            *(v30 + 16) = v50;
          }

          else
          {
            *v30 = *v31;
            *(v30 + 8) = *(v31 + 8);
            *(v30 + 16) = *(v31 + 16);
            *(v30 + 24) = *(v31 + 24);
          }

          v40 = v13 | 1;
          v51 = 1;
        }

        v26 = v66;
        *(v66 + v13) = v51;
      }

LABEL_60:
      *(v40 + v26) = *(v40 + v28);
      *(a1 + v14) = 1;
      goto LABEL_67;
    }

    (*(v6 + 16))(a1, a2, v5);
    v32 = a1 + v7 + 7;
    v33 = v32 & 0xFFFFFFFFFFFFFFF8;
    v34 = &a2[v7 + 7];
    v35 = v34 & 0xFFFFFFFFFFFFFFF8;
    v36 = *((v34 & 0xFFFFFFFFFFFFFFF8) + v13);
    if (v36 > 2)
    {
      v41 = (v34 & 0xFFFFFFFFFFFFFFF8);
      v42 = v13 | 1;
      memcpy((v32 & 0xFFFFFFFFFFFFFFF8), v41, __n);
      v33 = v32 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      if (v36 == 2)
      {
        v67 = v32 & 0xFFFFFFFFFFFFFFF8;
        (*(v9 + 16))(v32 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, v24);
        v47 = ((v32 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        v48 = ((v34 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        if (*v48 < 0xFFFFFFFFuLL)
        {
          v55 = *(v48 + 16);
          *v47 = *v48;
          *(v47 + 16) = v55;
        }

        else
        {
          *v47 = *v48;
          *(v47 + 8) = *(v48 + 8);
          *(v47 + 16) = *(v48 + 16);
          *(v47 + 24) = *(v48 + 24);
        }

        v42 = v13 | 1;
        v54 = 2;
      }

      else
      {
        if (v36 != 1)
        {
          *v33 = *v35;
          v49 = *(v35 + 8);
          v42 = v13 | 1;
          if (v49)
          {
            *(v33 + 8) = v49;
            *(v33 + 16) = *(v35 + 16);
            *(v33 + 24) = *(v35 + 24);
            *(v33 + 32) = *(v35 + 32);

            v33 = v32 & 0xFFFFFFFFFFFFFFF8;
            *((v32 & 0xFFFFFFFFFFFFFFF8) + v13) = 0;
          }

          else
          {
            v65 = *(v35 + 24);
            *(v33 + 8) = *(v35 + 8);
            *(v33 + 24) = v65;
            *(v33 + v13) = 0;
          }

          goto LABEL_66;
        }

        v67 = v32 & 0xFFFFFFFFFFFFFFF8;
        (*(v9 + 16))(v32 & 0xFFFFFFFFFFFFFFF8, v34 & 0xFFFFFFFFFFFFFFF8, v24);
        v37 = ((v32 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        v38 = ((v34 | 7) + v12) & 0xFFFFFFFFFFFFFFF8;
        if (*v38 < 0xFFFFFFFFuLL)
        {
          v53 = *(v38 + 16);
          *v37 = *v38;
          *(v37 + 16) = v53;
        }

        else
        {
          *v37 = *v38;
          *(v37 + 8) = *(v38 + 8);
          *(v37 + 16) = *(v38 + 16);
          *(v37 + 24) = *(v38 + 24);
        }

        v42 = v13 | 1;
        v54 = 1;
      }

      v33 = v67;
      *(v67 + v13) = v54;
    }

LABEL_66:
    *(v42 + v33) = *(v42 + v35);
    *(a1 + v14) = 0;
    goto LABEL_67;
  }

  v19 = *a2;
  *a1 = *a2;
  a1 = (v19 + ((v15 + 16) & ~v15));
LABEL_68:

  return a1;
}

uint64_t sub_18E6D5D44(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80) & 0xF8 | 7;
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  if ((v10 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v5 + v8) & ~v8) + v11) | 2) <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = (((v5 + v8) & ~v8) + v11) | 2;
  }

  v13 = a1[v12];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v16 = *a1;
    }

    else if (v15 == 2)
    {
      v16 = *a1;
    }

    else if (v15 == 3)
    {
      v16 = *a1 | (a1[2] << 16);
    }

    else
    {
      v16 = *a1;
    }

    v17 = (v16 | (v14 << (8 * v12))) + 3;
    v13 = v16 + 3;
    if (v12 < 4)
    {
      v13 = v17;
    }
  }

LABEL_21:
  if (v13 == 2)
  {
LABEL_27:

    goto LABEL_28;
  }

  v18 = ~v8;
  (*(v4 + 8))(a1, v3);
  v19 = &a1[v9] & v18;
  v20 = *(v19 + v11);
  if (v20 > 2)
  {
    goto LABEL_28;
  }

  if (v20 == 2 || v20 == 1)
  {
    (*(v7 + 8))(&a1[v9] & v18, AssociatedTypeWitness);
    if (*((v10 + v19) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (*((&a1[v9] & v18) + 8))
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_28:
}

void *sub_18E6D5FB4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80) & 0xF8 | 7;
  v11 = v7 + v10;
  v12 = *(v9 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((v11 & ~v10) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v11 & ~v10) + v13) | 2;
  }

  v15 = a2[v14];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *a2;
      if (v14 < 4)
      {
LABEL_36:
        v38 = v18 | (v16 << (8 * v14));
        v15 = v38 + 3;
        if (v38 == -1)
        {
          goto LABEL_37;
        }

        goto LABEL_22;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_36;
      }
    }

    v15 = v18 + 3;
  }

LABEL_21:
  if (v15 == 2)
  {
LABEL_37:
    *a1 = *a2;
    *(a1 + v14) = 2;

    goto LABEL_60;
  }

LABEL_22:
  v19 = ~v10;
  __n = v13 | 1;
  v60 = v13;
  if (v15 == 1)
  {
    (*(v6 + 16))(a1, a2, v5);
    v20 = v60;
    v21 = ((a1 + v11) & v19);
    v22 = (&a2[v11] & v19);
    v23 = v22[v60];
    if (v23 > 2)
    {
      v32 = ((a1 + v11) & v19);
      v33 = (&a2[v11] & v19);
      v34 = __n;
      memcpy(v32, v33, __n);
    }

    else if (v23 == 2)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v39 = &v21[v12] & 0xFFFFFFFFFFFFFFF8;
      v40 = &v22[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v40 < 0xFFFFFFFFuLL)
      {
        v46 = *(v40 + 16);
        *v39 = *v40;
        *(v39 + 16) = v46;
      }

      else
      {
        *v39 = *v40;
        *(v39 + 8) = *(v40 + 8);
        *(v39 + 16) = *(v40 + 16);
        *(v39 + 24) = *(v40 + 24);
      }

      v34 = __n;
      v21[v60] = 2;
    }

    else if (v23 == 1)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v24 = &v21[v12] & 0xFFFFFFFFFFFFFFF8;
      v25 = &v22[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v25 < 0xFFFFFFFFuLL)
      {
        v45 = *(v25 + 16);
        *v24 = *v25;
        *(v24 + 16) = v45;
      }

      else
      {
        *v24 = *v25;
        *(v24 + 8) = *(v25 + 8);
        *(v24 + 16) = *(v25 + 16);
        *(v24 + 24) = *(v25 + 24);
      }

      v34 = __n;
      v21[v60] = 1;
    }

    else
    {
      *v21 = *v22;
      v41 = *((&a2[v11] & v19) + 8);
      if (v41)
      {
        *(((a1 + v11) & v19) + 8) = v41;
        *(((a1 + v11) & v19) + 0x10) = *((&a2[v11] & v19) + 0x10);
        *(((a1 + v11) & v19) + 0x18) = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);

        v20 = v60;
      }

      else
      {
        v49 = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 8) = *((&a2[v11] & v19) + 8);
        *(((a1 + v11) & v19) + 0x18) = v49;
      }

      v34 = __n;
      v21[v20] = 0;
    }

    v21[v34] = v22[v34];
    *(a1 + v14) = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v26 = ((a1 + v11) & v19);
    v27 = (&a2[v11] & v19);
    v28 = v60;
    v29 = v27[v60];
    if (v29 > 2)
    {
      v35 = ((a1 + v11) & v19);
      v36 = (&a2[v11] & v19);
      v37 = __n;
      memcpy(v35, v36, __n);
    }

    else if (v29 == 2)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v42 = &v26[v12] & 0xFFFFFFFFFFFFFFF8;
      v43 = &v27[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v43 < 0xFFFFFFFFuLL)
      {
        v48 = *(v43 + 16);
        *v42 = *v43;
        *(v42 + 16) = v48;
      }

      else
      {
        *v42 = *v43;
        *(v42 + 8) = *(v43 + 8);
        *(v42 + 16) = *(v43 + 16);
        *(v42 + 24) = *(v43 + 24);
      }

      v37 = __n;
      v26[v60] = 2;
    }

    else if (v29 == 1)
    {
      (*(v9 + 16))((a1 + v11) & v19, &a2[v11] & v19, AssociatedTypeWitness);
      v30 = &v26[v12] & 0xFFFFFFFFFFFFFFF8;
      v31 = &v27[v12] & 0xFFFFFFFFFFFFFFF8;
      if (*v31 < 0xFFFFFFFFuLL)
      {
        v47 = *(v31 + 16);
        *v30 = *v31;
        *(v30 + 16) = v47;
      }

      else
      {
        *v30 = *v31;
        *(v30 + 8) = *(v31 + 8);
        *(v30 + 16) = *(v31 + 16);
        *(v30 + 24) = *(v31 + 24);
      }

      v37 = __n;
      v26[v60] = 1;
    }

    else
    {
      *v26 = *v27;
      v44 = *((&a2[v11] & v19) + 8);
      if (v44)
      {
        *(((a1 + v11) & v19) + 8) = v44;
        *(((a1 + v11) & v19) + 0x10) = *((&a2[v11] & v19) + 0x10);
        *(((a1 + v11) & v19) + 0x18) = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);

        v28 = v60;
      }

      else
      {
        v50 = *((&a2[v11] & v19) + 0x18);
        *(((a1 + v11) & v19) + 8) = *((&a2[v11] & v19) + 8);
        *(((a1 + v11) & v19) + 0x18) = v50;
      }

      v37 = __n;
      v26[v28] = 0;
    }

    v26[v37] = v27[v37];
    *(a1 + v14) = 0;
  }

LABEL_60:
  v51 = ((a1 + v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  v52 = (&a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  v53 = v52[1];
  *v51 = *v52;
  v51[1] = v53;
  v54 = ((v51 + 23) & 0xFFFFFFFFFFFFFFF8);
  v55 = ((v52 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v54 = *v55;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v56 = *v57;
  *(v56 + 8) = *(v57 + 8);
  *(v56 + 9) = *(v57 + 9);

  return a1;
}

unsigned __int16 *sub_18E6D65CC(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 == a2)
  {
    goto LABEL_86;
  }

  v7 = *(*(a3 + 16) - 8);
  v66 = v7;
  v8 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v64 = AssociatedTypeWitness;
  v10 = *(v63 + 80) & 0xF8 | 7;
  v11 = v8 + v10;
  v65 = *(v63 + 64) + 7;
  if ((v65 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v12 = 40;
  }

  else
  {
    v12 = (v65 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v8 + v10) & ~v10) + v12) | 2) <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = (((v8 + v10) & ~v10) + v12) | 2;
  }

  v14 = *(a1 + v13);
  v15 = v14 - 3;
  if (v14 >= 3)
  {
    if (v13 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v14 = v17 + 3;
          goto LABEL_24;
        }

        v17 = *a1;
        if (v13 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v14 = (v17 | (v15 << (8 * v13))) + 3;
      goto LABEL_24;
    }

    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = *a1;
    if (v13 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v18 = ~v10;
  if (v14 != 2)
  {
    (*(v7 + 8))(a1, v5);
    v19 = (a1 + v11) & v18;
    v20 = *(v19 + v12);
    if (v20 > 2)
    {
      goto LABEL_33;
    }

    if (v20 == 2 || v20 == 1)
    {
      (*(v63 + 8))((a1 + v11) & v18, v64);
      if (*((v65 + v19) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
      {
        goto LABEL_33;
      }
    }

    else if (!*(((a1 + v11) & v18) + 8))
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  v21 = *(a2 + v13);
  v22 = v21 - 3;
  if (v21 < 3)
  {
    goto LABEL_47;
  }

  if (v13 <= 3)
  {
    v23 = v13;
  }

  else
  {
    v23 = 4;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *a2;
      if (v13 < 4)
      {
        goto LABEL_62;
      }
    }

    else if (v23 == 3)
    {
      v24 = *a2 | (*(a2 + 2) << 16);
      if (v13 < 4)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v24 = *a2;
      if (v13 < 4)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_46;
  }

  if (!v23)
  {
    goto LABEL_47;
  }

  v24 = *a2;
  if (v13 >= 4)
  {
LABEL_46:
    v21 = v24 + 3;
LABEL_47:
    if (v21 == 2)
    {
LABEL_63:
      *a1 = *a2;
      *(a1 + v13) = 2;

      v6 = v7;
      goto LABEL_86;
    }

    goto LABEL_48;
  }

LABEL_62:
  v36 = v24 | (v22 << (8 * v13));
  v21 = v36 + 3;
  if (v36 == -1)
  {
    goto LABEL_63;
  }

LABEL_48:
  v25 = v12 | 1;
  if (v21 == 1)
  {
    (*(v7 + 16))(a1, a2, v5);
    v26 = ((a1 + v11) & v18);
    v27 = ((a2 + v11) & v18);
    v28 = *(v27 + v12);
    if (v28 > 2)
    {
      memcpy(v26, v27, v25);
      v6 = v66;
    }

    else if (v28 == 2)
    {
      (*(v63 + 16))(v26, v27, v64);
      v37 = (v26 + v65) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v27 + v65) & 0xFFFFFFFFFFFFFFF8;
      if (*v38 < 0xFFFFFFFFuLL)
      {
        v44 = *(v38 + 16);
        *v37 = *v38;
        *(v37 + 16) = v44;
      }

      else
      {
        *v37 = *v38;
        *(v37 + 8) = *(v38 + 8);
        *(v37 + 16) = *(v38 + 16);
        *(v37 + 24) = *(v38 + 24);
      }

      v6 = v66;
      *(v26 + v12) = 2;
    }

    else if (v28 == 1)
    {
      (*(v63 + 16))(v26, v27, v64);
      v29 = (v26 + v65) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v27 + v65) & 0xFFFFFFFFFFFFFFF8;
      if (*v30 < 0xFFFFFFFFuLL)
      {
        v43 = *(v30 + 16);
        *v29 = *v30;
        *(v29 + 16) = v43;
      }

      else
      {
        *v29 = *v30;
        *(v29 + 8) = *(v30 + 8);
        *(v29 + 16) = *(v30 + 16);
        *(v29 + 24) = *(v30 + 24);
      }

      v6 = v66;
      *(v26 + v12) = 1;
    }

    else
    {
      *v26 = *v27;
      v39 = v27[1];
      if (v39)
      {
        v26[1] = v39;
        v26[2] = v27[2];
        v26[3] = v27[3];
        v26[4] = v27[4];
      }

      else
      {
        v47 = *(v27 + 3);
        *(v26 + 1) = *(v27 + 1);
        *(v26 + 3) = v47;
      }

      v6 = v66;
      *(v26 + v12) = 0;
    }

    *(v26 + v25) = *(v27 + v25);
    *(a1 + v13) = 1;
  }

  else
  {
    (*(v7 + 16))(a1, a2, v5);
    v31 = ((a1 + v11) & v18);
    v32 = ((a2 + v11) & v18);
    v33 = *(v32 + v12);
    if (v33 > 2)
    {
      memcpy(v31, v32, v25);
      v6 = v66;
    }

    else if (v33 == 2)
    {
      (*(v63 + 16))(v31, v32, v64);
      v40 = (v31 + v65) & 0xFFFFFFFFFFFFFFF8;
      v41 = (v32 + v65) & 0xFFFFFFFFFFFFFFF8;
      if (*v41 < 0xFFFFFFFFuLL)
      {
        v46 = *(v41 + 16);
        *v40 = *v41;
        *(v40 + 16) = v46;
      }

      else
      {
        *v40 = *v41;
        *(v40 + 8) = *(v41 + 8);
        *(v40 + 16) = *(v41 + 16);
        *(v40 + 24) = *(v41 + 24);
      }

      v6 = v66;
      *(v31 + v12) = 2;
    }

    else if (v33 == 1)
    {
      (*(v63 + 16))(v31, v32, v64);
      v34 = (v31 + v65) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v32 + v65) & 0xFFFFFFFFFFFFFFF8;
      if (*v35 < 0xFFFFFFFFuLL)
      {
        v45 = *(v35 + 16);
        *v34 = *v35;
        *(v34 + 16) = v45;
      }

      else
      {
        *v34 = *v35;
        *(v34 + 8) = *(v35 + 8);
        *(v34 + 16) = *(v35 + 16);
        *(v34 + 24) = *(v35 + 24);
      }

      v6 = v66;
      *(v31 + v12) = 1;
    }

    else
    {
      *v31 = *v32;
      v42 = v32[1];
      if (v42)
      {
        v31[1] = v42;
        v31[2] = v32[2];
        v31[3] = v32[3];
        v31[4] = v32[4];
      }

      else
      {
        v48 = *(v32 + 3);
        *(v31 + 1) = *(v32 + 1);
        *(v31 + 3) = v48;
      }

      v6 = v66;
      *(v31 + v12) = 0;
    }

    *(v31 + v25) = *(v32 + v25);
    *(a1 + v13) = 0;
  }

LABEL_86:
  v49 = *(v6 + 64);
  v50 = *(swift_getAssociatedTypeWitness() - 8);
  v51 = (v49 + (*(v50 + 80) & 0xF8 | 7)) & ~(*(v50 + 80) & 0xF8 | 7);
  v52 = ((*(v50 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v52 <= 0x28)
  {
    v52 = 40;
  }

  v53 = (v51 + v52) | 2;
  if (v53 <= 8)
  {
    v53 = 8;
  }

  v54 = v53 + 8;
  v55 = ((a1 + v54) & 0xFFFFFFFFFFFFFFF8);
  v56 = ((a2 + v54) & 0xFFFFFFFFFFFFFFF8);
  v57 = v56[1];
  *v55 = *v56;
  v55[1] = v57;

  v58 = ((v56 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v55 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v59 = *v58;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  return a1;
}

void *sub_18E6D6E20(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80) & 0xF8 | 7;
  v11 = v7 + v10;
  v12 = *(v9 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((v11 & ~v10) + v13) | 2) <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = ((v11 & ~v10) + v13) | 2;
  }

  v15 = a2[v14];
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *a2;
      if (v14 < 4)
      {
LABEL_34:
        v33 = v18 | (v16 << (8 * v14));
        v15 = v33 + 3;
        if (v33 == -1)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }
    }

    else if (v17 == 2)
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_34;
      }
    }

    else if (v17 == 3)
    {
      v18 = *a2 | (a2[2] << 16);
      if (v14 < 4)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = *a2;
      if (v14 < 4)
      {
        goto LABEL_34;
      }
    }

    v15 = v18 + 3;
  }

LABEL_21:
  if (v15 == 2)
  {
LABEL_35:
    *a1 = *a2;
    v34 = 2;
LABEL_39:
    *(a1 + v14) = v34;
    goto LABEL_43;
  }

LABEL_22:
  v19 = ~v10;
  v20 = v13 | 1;
  v52 = AssociatedTypeWitness;
  v53 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  if (v15 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v21 = ((a1 + v11) & v19);
    v22 = (&a2[v11] & v19);
    v23 = *(v22 + v13);
    if (v23 > 2)
    {
      memcpy(((a1 + v11) & v19), (&a2[v11] & v19), v13 | 1);
    }

    else if (v23 == 2)
    {
      (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
      v35 = ((v21 + v53) & 0xFFFFFFFFFFFFFFF8);
      v36 = ((v22 + v53) & 0xFFFFFFFFFFFFFFF8);
      v37 = v36[1];
      *v35 = *v36;
      v35[1] = v37;
      *(v21 + v13) = 2;
    }

    else if (v23 == 1)
    {
      (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
      v24 = ((v21 + v53) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((v22 + v53) & 0xFFFFFFFFFFFFFFF8);
      v26 = v25[1];
      *v24 = *v25;
      v24[1] = v26;
      *(v21 + v13) = 1;
    }

    else
    {
      v38 = *v22;
      v39 = *((&a2[v11] & v19) + 0x10);
      *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);
      *v21 = v38;
      *(((a1 + v11) & v19) + 0x10) = v39;
      *(v21 + v13) = 0;
    }

    *(v21 + v20) = *(v22 + v20);
    v34 = 1;
    goto LABEL_39;
  }

  (*(v6 + 32))(a1, a2, v5);
  v27 = ((a1 + v11) & v19);
  v28 = (&a2[v11] & v19);
  v29 = *(v28 + v13);
  if (v29 > 2)
  {
    memcpy(((a1 + v11) & v19), (&a2[v11] & v19), v13 | 1);
  }

  else if (v29 == 2)
  {
    (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
    v40 = ((v27 + v53) & 0xFFFFFFFFFFFFFFF8);
    v41 = ((v28 + v53) & 0xFFFFFFFFFFFFFFF8);
    v42 = v41[1];
    *v40 = *v41;
    v40[1] = v42;
    *(v27 + v13) = 2;
  }

  else if (v29 == 1)
  {
    (*(v9 + 32))((a1 + v11) & v19, &a2[v11] & v19, v52);
    v30 = ((v27 + v53) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v28 + v53) & 0xFFFFFFFFFFFFFFF8);
    v32 = v31[1];
    *v30 = *v31;
    v30[1] = v32;
    *(v27 + v13) = 1;
  }

  else
  {
    v43 = *v28;
    v44 = *((&a2[v11] & v19) + 0x10);
    *(((a1 + v11) & v19) + 0x20) = *((&a2[v11] & v19) + 0x20);
    *v27 = v43;
    *(((a1 + v11) & v19) + 0x10) = v44;
    *(v27 + v13) = 0;
  }

  *(v27 + v20) = *(v28 + v20);
  *(a1 + v14) = 0;
LABEL_43:
  v45 = ((a1 + v14 + 8) & 0xFFFFFFFFFFFFFFF8);
  v46 = (&a2[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v45 = *v46;
  v47 = ((v46 + 23) & 0xFFFFFFFFFFFFFFF8);
  v48 = ((v45 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v48 = *v47;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v49 = *v50;
  *(v49 + 8) = *(v50 + 8);
  *(v49 + 9) = *(v50 + 9);
  return a1;
}

unsigned __int8 *sub_18E6D7268(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    v7 = *(*(a3 + 16) - 8);
    v68 = v7;
    v8 = *(v6 + 64);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v65 = *(AssociatedTypeWitness - 8);
    v66 = AssociatedTypeWitness;
    v10 = *(v65 + 80) & 0xF8 | 7;
    v11 = v8 + v10;
    v12 = (v8 + v10) & ~v10;
    v13 = *(v65 + 64) + 7;
    if ((v13 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
    {
      v14 = 40;
    }

    else
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFF8) + 32;
    }

    if (((v12 + v14) | 2) <= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = (v12 + v14) | 2;
    }

    v16 = a1[v15];
    v17 = v16 - 3;
    if (v16 < 3)
    {
LABEL_24:
      v69 = v14;
      v20 = ~v10;
      v67 = ~v10;
      if (v16 != 2)
      {
        (*(v7 + 8))(a1, v5);
        v21 = &a1[v11] & v20;
        v22 = *(v21 + v69);
        if (v22 > 2)
        {
          goto LABEL_33;
        }

        if (v22 == 2 || v22 == 1)
        {
          (*(v65 + 8))(v21, v66);
          if (*((v13 + v21) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
          {
            goto LABEL_33;
          }
        }

        else if (!*(v21 + 8))
        {
          goto LABEL_33;
        }
      }

LABEL_33:
      v23 = a2[v15];
      v24 = v23 - 3;
      if (v23 < 3)
      {
        goto LABEL_47;
      }

      if (v15 <= 3)
      {
        v25 = v15;
      }

      else
      {
        v25 = 4;
      }

      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_47;
        }

        v26 = *a2;
        if (v15 < 4)
        {
LABEL_60:
          v40 = v26 | (v24 << (8 * v15));
          v23 = v40 + 3;
          if (v40 == -1)
          {
            goto LABEL_61;
          }

          goto LABEL_48;
        }
      }

      else if (v25 == 2)
      {
        v26 = *a2;
        if (v15 < 4)
        {
          goto LABEL_60;
        }
      }

      else if (v25 == 3)
      {
        v26 = *a2 | (a2[2] << 16);
        if (v15 < 4)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v26 = *a2;
        if (v15 < 4)
        {
          goto LABEL_60;
        }
      }

      v23 = v26 + 3;
LABEL_47:
      if (v23 == 2)
      {
LABEL_61:
        *a1 = *a2;
        v41 = 2;
        v6 = v7;
LABEL_68:
        a1[v15] = v41;
        goto LABEL_69;
      }

LABEL_48:
      v27 = v69 | 1;
      if (v23 == 1)
      {
        (*(v7 + 32))(a1, a2, v5);
        v28 = (&a1[v11] & v67);
        v29 = (&a2[v11] & v67);
        v30 = *(v29 + v69);
        if (v30 > 2)
        {
          memcpy(v28, v29, v27);
        }

        else if (v30 == 2)
        {
          (*(v65 + 32))(v28, v29, v66);
          v42 = ((v28 + v13) & 0xFFFFFFFFFFFFFFF8);
          v43 = ((v29 + v13) & 0xFFFFFFFFFFFFFFF8);
          v44 = v43[1];
          *v42 = *v43;
          v42[1] = v44;
          *(v28 + v69) = 2;
        }

        else if (v30 == 1)
        {
          (*(v65 + 32))(v28, v29, v66);
          v31 = ((v28 + v13) & 0xFFFFFFFFFFFFFFF8);
          v32 = ((v29 + v13) & 0xFFFFFFFFFFFFFFF8);
          v33 = v32[1];
          *v31 = *v32;
          v31[1] = v33;
          *(v28 + v69) = 1;
        }

        else
        {
          v45 = *v29;
          v46 = v29[1];
          *(v28 + 4) = *(v29 + 4);
          *v28 = v45;
          v28[1] = v46;
          *(v28 + v69) = 0;
        }

        v6 = v68;
        *(v28 + v27) = *(v29 + v27);
        v41 = 1;
      }

      else
      {
        (*(v7 + 32))(a1, a2, v5);
        v34 = (&a1[v11] & v67);
        v35 = (&a2[v11] & v67);
        v36 = *(v35 + v69);
        if (v36 > 2)
        {
          memcpy(v34, v35, v27);
        }

        else if (v36 == 2)
        {
          (*(v65 + 32))(v34, v35, v66);
          v47 = ((v34 + v13) & 0xFFFFFFFFFFFFFFF8);
          v48 = ((v35 + v13) & 0xFFFFFFFFFFFFFFF8);
          v49 = v48[1];
          *v47 = *v48;
          v47[1] = v49;
          *(v34 + v69) = 2;
        }

        else if (v36 == 1)
        {
          (*(v65 + 32))(v34, v35, v66);
          v37 = ((v34 + v13) & 0xFFFFFFFFFFFFFFF8);
          v38 = ((v35 + v13) & 0xFFFFFFFFFFFFFFF8);
          v39 = v38[1];
          *v37 = *v38;
          v37[1] = v39;
          *(v34 + v69) = 1;
        }

        else
        {
          v50 = *v35;
          v51 = v35[1];
          *(v34 + 4) = *(v35 + 4);
          *v34 = v50;
          v34[1] = v51;
          *(v34 + v69) = 0;
        }

        v6 = v68;
        v41 = 0;
        *(v34 + v27) = *(v35 + v27);
      }

      goto LABEL_68;
    }

    if (v15 <= 3)
    {
      v18 = v15;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v19 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18 == 3)
        {
          v19 = *a1 | (a1[2] << 16);
          if (v15 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v16 = v19 + 3;
          goto LABEL_24;
        }

        v19 = *a1;
        if (v15 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v16 = (v19 | (v17 << (8 * v15))) + 3;
      goto LABEL_24;
    }

    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = *a1;
    if (v15 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_69:
  v52 = *(v6 + 64);
  v53 = *(swift_getAssociatedTypeWitness() - 8);
  v54 = (v52 + (*(v53 + 80) & 0xF8 | 7)) & ~(*(v53 + 80) & 0xF8 | 7);
  v55 = ((*(v53 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v55 <= 0x28)
  {
    v55 = 40;
  }

  v56 = (v54 + v55) | 2;
  if (v56 <= 8)
  {
    v56 = 8;
  }

  v57 = v56 + 8;
  v58 = (&a1[v57] & 0xFFFFFFFFFFFFFFF8);
  v59 = &a2[v57];
  v60 = (v59 & 0xFFFFFFFFFFFFFFF8) + 23;
  *v58 = *(v59 & 0xFFFFFFFFFFFFFFF8);

  v61 = ((v58 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v61 = *(v60 & 0xFFFFFFFFFFFFFFF8);
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = ((v60 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *v62 = *v63;
  *(v62 + 8) = *(v63 + 8);
  *(v62 + 9) = *(v63 + 9);
  return a1;
}

uint64_t sub_18E6D78E8(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = (v5 + v7) & ~v7;
  v9 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = (v8 + v9) | 2;
  if (v10 <= 8)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  v13 = (((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v13 > 3 || (a2 - 2147418112) >> 16 <= 0xFE)
  {
    v14 = *(a1 + v13);
    if (!*(a1 + v13))
    {
LABEL_7:
      v11 = *((a1 + v10 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11 >= 0xFFFFFFFF)
      {
        LODWORD(v11) = -1;
      }

      return (v11 + 1);
    }
  }

  else
  {
    v14 = *(a1 + v13);
    if (!*(a1 + v13))
    {
      goto LABEL_7;
    }
  }

  v15 = (v14 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return (v16 | v15) ^ 0x80000000;
}

void sub_18E6D7A74(_WORD *a1, int a2, int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = (v7 + v9) & ~v9;
  v11 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v11 <= 0x28)
  {
    v11 = 40;
  }

  v12 = (v10 + v11) | 2;
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v13 = (((((v12 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (a3 < 0)
  {
    if ((a3 - 2147418112) < 0xFF0000 || v13 > 3)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if ((a2 & 0x80000000) == 0)
    {
LABEL_7:
      if (v14)
      {
        if (v14 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_26;
        }

        *(a1 + v13) = 0;
      }

      if (!a2)
      {
        return;
      }

LABEL_26:
      *((a1 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
      return;
    }
  }

  else
  {
    v14 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  bzero(a1, v13);
  if (v13 <= 3)
  {
    v16 = (HIWORD(a2) & 0x7FFF) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = a2;
    if (!v14)
    {
      return;
    }
  }

  else
  {
    *a1 = a2 & 0x7FFFFFFF;
    if (!v14)
    {
      return;
    }
  }

  if (v14 == 2)
  {
    *(a1 + v13) = v16;
  }

  else
  {
    *(a1 + v13) = v16;
  }
}

int *sub_18E6D7C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v24 = a6;
  v13 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  if (a4)
  {
    v21 = a2;
  }

  else
  {
    v21 = a3;
  }

  return sub_18E6D7D6C(v19, a2, v21, a7, a8, v24, v13, a9, x8_0, a10);
}

int *sub_18E6D7D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v33 = a6;
  v34 = a7;
  v31 = a4;
  v32 = a5;
  v30 = a3;
  v14 = type metadata accessor for CombinerElement.State(0, a8, a10, a4);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  v18 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CombinerElement(0, a8, a10, v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  (*(v18 + 16))(v20, a1, a8);
  sub_18E6E7300(a8, a10);
  sub_18E6E7304(v20, v17, a8, a10, v24);
  sub_18E6C1510(v24, a2, v22, &off_1F01A6EC0, a9);
  (*(v18 + 8))(a1, a8);
  result = type metadata accessor for DynamicCombinerComponent(0, a8, a10, v25);
  *(a9 + result[10]) = a2;
  v27 = v31;
  *(a9 + result[11]) = v30;
  v28 = (a9 + result[9]);
  v29 = v32;
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v29) = v34;
  *(a9 + result[12]) = v33;
  *(a9 + result[13]) = v29;
  return result;
}

uint64_t sub_18E6D7F98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v114 = a2;
  v10 = type metadata accessor for CombinerElement(0, v8, v9, a4);
  v98 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v112 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v99 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v93 - v15;
  v95 = v9;
  v96 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v17, v18);
  v111 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v97 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v93 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v93 - v25;
  v27 = *a1;
  v108 = a1[1];
  v109 = v27;
  v28 = a1[2];
  v106 = a1[3];
  v107 = v28;
  v29 = a1[5];
  v102 = a1[4];
  v104 = a1[6];
  v105 = v29;
  v113 = v10;
  v31 = type metadata accessor for ReplicatingList(0, v10, &off_1F01A6EC0, v30);
  swift_getWitnessTable();
  result = sub_18E72B378();
  if (result)
  {
    v33 = MEMORY[0x1E69E7CC0];
    *a3 = 1;
    *(a3 + 8) = v33;
    *(a3 + 16) = v33;
    *(a3 + 24) = xmmword_18E72ED90;
    *(a3 + 40) = 0;
    return result;
  }

  v122 = sub_18E72AEB8();
  result = sub_18E6C1B4C(v31, v34, v35, v36);
  v100 = result;
  if (result < 0)
  {
    goto LABEL_45;
  }

  v93 = AssociatedTypeWitness;
  v94 = a3;
  v40 = 0;
  v41 = 0;
  v103 = (v111 + 16);
  v42 = (v111 + 8);
  do
  {
    if (v100 == v40)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v40, 1))
    {
      goto LABEL_43;
    }

    v111 = v41;
    v115 = v109;
    v116 = v108;
    v117 = v107;
    v118 = v106;
    v119 = v102;
    v120 = v105;
    v121 = v104;
    v43 = v26;
    v44 = v101;
    sub_18E6C17B8(v40, v31, v39, v101);
    v45 = v113;
    WitnessTable = swift_getWitnessTable();
    v47 = v110;
    GestureComponent.tracingUpdate(context:)(&v115, v45, WitnessTable, v43);
    v110 = v47;
    if (v47)
    {
      v67 = v112;
      (*(v98 + 32))(v112, v44, v113);
      v69 = v67;
      v70 = v40;
LABEL_26:
      sub_18E6C190C(v69, v70, v31, v68);
    }

    sub_18E6C190C(v44, v40, v31, v48);
    (*v103)(v24, v43, v19);
    sub_18E72B278();
    sub_18E72B238();
    sub_18E6FF240(v19, &v115);
    result = (*v42)(v43, v19);
    v49 = v115 != 3 && v115 == 0;
    ++v40;
    v41 = v111 + v49;
    v26 = v43;
  }

  while (!__OFADD__(v111, v49));
  __break(1u);
LABEL_14:
  if (!(v41 | v102))
  {
    v111 = *(v5 + v114[11]);
    for (i = v97; ; (*v42)(i, v19))
    {
      v51 = sub_18E6C1B4C(v31, v37, v38, v39);
      if (v51 >= v111 && *(v5 + v114[12]) != 1)
      {
        break;
      }

      sub_18E6C1E54(1, v31);
      result = sub_18E6C1B4C(v31, v52, v53, v54);
      v56 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_44;
      }

      v115 = v109;
      v116 = v108;
      v117 = v107;
      v118 = v106;
      v119 = 0;
      v120 = v105;
      v121 = v104;
      v57 = v99;
      sub_18E6C17B8(result - 1, v31, v55, v99);
      v58 = v113;
      v59 = swift_getWitnessTable();
      v60 = v110;
      GestureComponent.tracingUpdate(context:)(&v115, v58, v59, i);
      v110 = v60;
      if (v60)
      {
        v71 = v112;
        (*(v98 + 32))(v112, v57, v113);
        v69 = v71;
        v70 = v56;
        goto LABEL_26;
      }

      sub_18E6C190C(v57, v56, v31, v61);
      sub_18E6FF240(v19, &v115);
      if (!v115)
      {
        sub_18E6C2328(1, v31);
        (*v42)(i, v19);
        break;
      }

      if (*(v5 + v114[12]) == 1)
      {
        v65 = sub_18E6C1B4C(v31, v62, v63, v64);
        if (v111 < v65)
        {
          type metadata accessor for DynamicCombinerComponent.Failure(0, v96, v95, v66);
          swift_getWitnessTable();
          swift_allocError();
          swift_willThrow();
          (*v42)(i, v19);
        }
      }

      (*v103)(v24, i, v19);
      sub_18E72B278();
      sub_18E72B238();
    }
  }

  if (*(v5 + v114[13]) != 1)
  {
    goto LABEL_39;
  }

  v72 = v122;
  result = sub_18E72B228();
  if (result < 0)
  {
    goto LABEL_46;
  }

  v73 = result;
  if (!result)
  {
LABEL_39:
    sub_18E70155C(v122, *(v5 + v114[9]), *(v5 + v114[9] + 8), v93, v94);
  }

  v74 = result;
  v111 = result;
  while (v73 >= v74)
  {
    --v74;
    sub_18E72B298();
    v87 = GestureOutput.isFinal.getter(v19);
    result = (*v42)(v24, v19);
    if (v87)
    {
      v91 = sub_18E6C1B4C(v31, v88, v89, v90);
      if (*(v5 + v114[10]) >= v91)
      {
        v75 = v72;
        v76 = v24;
        v77 = v19;
        v78 = v42;
        v79 = v5;
        v80 = v31;
        v81 = v112;
        sub_18E6C17B8(v74, v80, v92, v112);
        sub_18E6E73D4(v113, v82, v83, v84);
        v85 = v81;
        v31 = v80;
        v5 = v79;
        v42 = v78;
        v19 = v77;
        v24 = v76;
        v72 = v75;
        v73 = v111;
        result = sub_18E6C190C(v85, v74, v31, v86);
      }

      else
      {
        result = sub_18E6C1B50(v74, v31);
      }
    }

    if (!v74)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_18E6D8820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for CombinerElement(0, *(a1 + 16), *(a1 + 24), a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = *(v5 + *(a1 + 40));
  v12 = type metadata accessor for ReplicatingList(0, v7, &off_1F01A6EC0, v11);
  sub_18E6C270C(v10, v12, v13, v14);
  result = sub_18E6C1B4C(v12, v15, v16, v17);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    if (result)
    {
      v21 = 0;
      do
      {
        sub_18E6C17B8(v21, v12, v19, v9);
        sub_18E6E73D4(v7, v22, v23, v24);
        result = sub_18E6C190C(v9, v21++, v12, v25);
      }

      while (v20 != v21);
    }
  }

  return result;
}

uint64_t sub_18E6D893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for CombinerElement(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v9 = type metadata accessor for ReplicatingList(0, v4, &off_1F01A6EC0, v8);
  sub_18E6C130C(v9, v7);
  sub_18E6E749C(v4, v10, v11, v12);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_18E6D8A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a3;
  v47 = a4;
  v45 = a1;
  v7 = *(a2 + 16);
  v40 = a2;
  v8 = type metadata accessor for CombinerElement(0, v7, *(a2 + 24), a4);
  v44 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v48 = v13;
  v15 = type metadata accessor for ReplicatingList(255, v13, &off_1F01A6EC0, v14);
  swift_getWitnessTable();
  v16 = sub_18E72AF18();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  swift_getWitnessTable();
  v20 = sub_18E72B6D8();
  v41 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  sub_18E72B398();
  (*(v17 + 16))(v22, v19, v16);
  v42 = v20;
  v23 = *(v20 + 36);
  sub_18E72AEE8();
  (*(v17 + 8))(v19, v16);
  v24 = 0;
  while (1)
  {
    sub_18E72AEF8();
    v25 = *&v22[v23];
    if (v25 == v49)
    {
      break;
    }

    sub_18E72AF08();
    sub_18E6C17B8(v25, v15, v26, v12);
    v27 = sub_18E6E7520(v45, v48, v46, v47);
    sub_18E6C190C(v12, v25, v15, v28);
    v29 = __OFADD__(v24, v27);
    v24 += v27;
    if (v29)
    {
      __break(1u);
      break;
    }
  }

  (*(v41 + 8))(v22, v42);
  v30 = v43;
  sub_18E6C130C(v15, v43);
  v31 = v48;
  v32 = sub_18E6E7520(v45, v48, v46, v47);
  if (v32 < 1)
  {
    (*(v44 + 8))(v30, v31);
    return v24;
  }

  v36 = v32;
  v37 = sub_18E6C1B4C(v15, v33, v34, v35);
  result = (*(v44 + 8))(v30, v31);
  v39 = *(v5 + *(v40 + 44));
  if (v37 >= v39 && *(v5 + *(v40 + 48)) != 1)
  {
    return v24;
  }

  if (!__OFADD__(v24, v36))
  {
    if (v39 < v24 + v36)
    {
      return *(v5 + *(v40 + 44));
    }

    v24 += v36;
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6D8EF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6D8F9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6D90C4(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t sub_18E6D9134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_18E6D91D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = v6 + a2;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  v7 += 15;

  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v9 & 0xFFFFFFFFFFFFFFF8);
  *(((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *(((v9 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6D9280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6D931C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v8 += 15;
  *v7 = v9;
  v7 += 15;

  *(v7 & 0xFFFFFFFFFFFFFFF8) = *(v8 & 0xFFFFFFFFFFFFFFF8);
  *(((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) = *(((v8 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6D93C0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_18E6D9518(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFE)
      {
        v19 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v20 = a2;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_18E6D9708(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_18E72B308();
  if (!v19)
  {
    return sub_18E72B1E8();
  }

  v41 = v19;
  v45 = sub_18E72B698();
  v32 = sub_18E72B6A8();
  sub_18E72B648();
  result = sub_18E72B2F8();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_18E72B3B8();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_18E72B688();
      result = sub_18E72B328();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

int *sub_18E6D9B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a2;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v21[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v8);
  (*(v16 + 32))(a8, v18, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  result = type metadata accessor for StationaryLocationFilter(0, v21);
  *(a8 + result[15]) = 0;
  *(a8 + result[16]) = a1;
  *(a8 + result[17]) = v20;
  return result;
}

uint64_t sub_18E6D9C64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18E682558();
  *a1 = result;
  return result;
}

uint64_t sub_18E6D9C9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6D9CF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6D9D44@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v10 + 16))(v17 - v9, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  v11 = sub_18E72B288();
  v12 = sub_18E6D9F28(v11, a3);
  v13 = *(a3 + 60);

  *(v4 + v13) = v11;
  if (sub_18E72B228() < 1)
  {

    v16 = MEMORY[0x1E69E7CC0];
    *a4 = 1;
    *(a4 + 8) = v16;
    *(a4 + 16) = v16;
    *(a4 + 24) = 0xD000000000000014;
    *(a4 + 32) = 0x800000018E73A730;
    *(a4 + 40) = 0;
  }

  else
  {
    v18 = v12;
    v14 = sub_18E72B278();
    memset(v17, 0, sizeof(v17));
    sub_18E6FEC1C(&v18, v17, v14, a4);
  }

  return result;
}

char *sub_18E6D9F28(char *a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (sub_18E72B228() >= *(v2 + *(a2 + 64)) && (v6 = *(v2 + *(a2 + 60))) != 0)
  {
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = sub_18E6DA074(a1, v6, AssociatedTypeWitness);
    a1 = sub_18E6DA194(a1, v9, AssociatedTypeWitness, v7, v8);
    v10 = *(v2 + *(a2 + 68));
    if (v10 < sub_18E72B228())
    {
      v11 = sub_18E6DA46C(v10, a1, v9, AssociatedTypeWitness, v7, v8);

      return v11;
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_18E6DA074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v13[7] = a1;
    MEMORY[0x1EEE9AC00](a1);
    v13[2] = v3;
    v13[3] = v4;
    v13[4] = v6;
    v13[5] = v5;
    v7 = sub_18E72B278();
    WitnessTable = swift_getWitnessTable();
    return sub_18E6D9708(sub_18E6DC394, v13, v7, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  }

  else
  {
    result = sub_18E72B228();
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v11 = result;
      v12 = sub_18E72B1F8();
      *(v12 + 16) = v11;
      bzero((v12 + 32), 8 * v11);
      return v12;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_18E6DA194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = *(a2 + 32);
    v11 = v9 - 1;
    if (v11)
    {
      v12 = (a2 + 40);
      do
      {
        v13 = *v12++;
        v14 = v13;
        if (v10 < v13)
        {
          v10 = v14;
        }

        --v11;
      }

      while (v11);
    }
  }

  v28 = a1;
  v15 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193AD1670](&v27, v15, WitnessTable);
  v26[8] = v27;
  v17 = sub_18E72B5E8();
  v18 = swift_getWitnessTable();
  MEMORY[0x193AD1640](&v29, v17, v18);

  v28 = v29;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v26[0] = a5;
  v26[1] = a2;
  MEMORY[0x1EEE9AC00](v20);
  sub_18E72B6F8();
  swift_getWitnessTable();
  v29 = sub_18E72B138();
  MEMORY[0x1EEE9AC00](v29);
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  swift_getTupleTypeMetadata2();
  v21 = sub_18E72B278();
  v22 = swift_getWitnessTable();
  v24 = sub_18E6D9708(sub_18E6DC370, v26, v21, a3, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);

  return v24;
}

uint64_t sub_18E6DA46C(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v43 = a2;
  v11 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193AD1670](&v42, v11, WitnessTable);
  v41 = v42;
  v13 = sub_18E72B5E8();
  v14 = swift_getWitnessTable();
  MEMORY[0x193AD1640](&v44, v13, v14);

  v15 = v44;
  v43 = v44;
  v35 = a4;
  v36 = a5;
  v32 = a5;
  v33 = a6;
  v37 = a6;
  v38 = a3;
  v16 = sub_18E72B6F8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAC8, &qword_18E72EFB8);
  v40 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v20 = sub_18E6D9708(sub_18E6DAB3C, v34, v16, v17, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);

  v44 = v20;

  sub_18E6DB028(&v44);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    swift_unknownObjectRelease();
    sub_18E6BEFDC(v20, (v20 + 32), v17, (2 * v15) | 1);
    goto LABEL_10;
  }

  v20 = v44;
  v15 = *(v44 + 2);
  if (v15 >= a1)
  {
    v17 = v15 - a1;
  }

  else
  {
    v17 = 0;
  }

  sub_18E72B7D8();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (v22 != (v15 - v17))
  {
    goto LABEL_12;
  }

  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x1E69E7CC0];
  }

LABEL_10:
  v44 = v23;
  sub_18E6DB184(&v44);
  v24 = swift_unknownObjectRelease();
  MEMORY[0x1EEE9AC00](v24);
  v30[2] = a4;
  v30[3] = v32;
  v30[4] = v33;
  v30[5] = v31;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAD0, &qword_18E72EFC0);
  v26 = sub_18E6DB314();
  v28 = sub_18E6D9708(sub_18E6DB2E0, v30, v25, a4, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);

  return v28;
}

uint64_t sub_18E6DA81C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 60);

  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_18E6DA884(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6DA8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v8[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t sub_18E6DA9E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = v15 - v9;
  result = (*(v11 + 16))(v15 - v9, a1, TupleTypeMetadata2);
  v13 = *(TupleTypeMetadata2 + 48);
  *a4 = *v10;
  v14 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(a2 + 16))
  {
    a4[1] = *(a2 + 8 * v14 + 32);
    return (*(*(a3 - 8) + 8))(&v10[v13], a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6DAB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v38 = a5;
  v40 = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18E72B438();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v45 = a2;
  v41 = a3;
  v42 = a4;
  v43 = v38;
  v44 = a1;
  v37 = a4;
  v38 = a1;
  sub_18E72B278();
  swift_getWitnessTable();
  v19 = v39;
  sub_18E72B128();
  v20 = *(v13 + 16);
  v39 = v12;
  v20(v16, v18, v12);
  v21 = v10;
  if ((*(v10 + 48))(v16, 1, a3) == 1)
  {
    v22 = *(v13 + 8);
    v23 = v39;
    v22(v18, v39);
    result = (v22)(v16, v23);
    v25 = 0.0;
  }

  else
  {
    v26 = v36;
    (*(v21 + 32))(v36, v16, a3);
    v27 = v37;
    v35 = v19;
    v28 = *(v37 + 8);
    v29 = v28(a3, v37);
    v31 = v30;
    v32 = v28(a3, v27);
    v34 = v33;
    (*(v21 + 8))(v26, a3);
    result = (*(v13 + 8))(v18, v39);
    v25 = (v29 - v32) * (v29 - v32) + (v31 - v34) * (v31 - v34);
  }

  *v40 = v25;
  return result;
}

uint64_t sub_18E6DAE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  sub_18E72B5D8();
  sub_18E72B5D8();
  swift_getAssociatedConformanceWitness();
  v12 = sub_18E72AFB8();
  v13 = *(v6 + 8);
  v13(v9, AssociatedTypeWitness);
  v13(v11, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t sub_18E6DB028(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E7265B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_18E72B768();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAC8, &qword_18E72EFB8);
      v7 = sub_18E72B1F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_18E6DB910(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_18E6DB184(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18E7265B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_18E72B768();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8EAC8, &qword_18E72EFB8);
      v7 = sub_18E72B1F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_18E6DB378(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_18E6DB314()
{
  result = qword_1EAC8EAD8[0];
  if (!qword_1EAC8EAD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8EAD0, &qword_18E72EFC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAC8EAD8);
  }

  return result;
}

uint64_t sub_18E6DB378(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18E7290FC(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_18E6DBEA4((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_18E6ED5B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_18E6ED5B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_18E6DBEA4((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}