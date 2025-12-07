double sub_1CF56BFE0(char a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v3;
  *(v7 + 40) = a3;

  v8 = a3;
  sub_1CF92DE44("requestCompleted(isIgnored:db:error:)", 37, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF574E98, v7);

  return result;
}

uint64_t sub_1CF56C0D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v35 = a5;
  v9 = *(*a3 + 88);
  v10 = *(*a3 + 96);
  v11 = *(*a3 + 104);
  v37 = *(*a3 + 80);
  v8 = v37;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v12 = type metadata accessor for PersistenceTrigger(0, &v37);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v36 = v15;
  v34 = v8;
  if (a2)
  {
    v16 = *(*a4 + 576);
    v33 = a4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(v14, v33 + v16, AssociatedTypeWitness);
    v18 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    a4 = v33;
    v20 = swift_getAssociatedConformanceWitness();
    v37 = AssociatedTypeWitness;
    v38 = v18;
    v39 = AssociatedConformanceWitness;
    v40 = v20;
    type metadata accessor for ReconciliationID(0, &v37);
    swift_storeEnumTagMultiPayload();
    v21 = v36;
    swift_storeEnumTagMultiPayload();
    (*(*a3 + 312))(v14);
    (*(v41 + 8))(v14, v21);
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedConformanceWitness();
  }

  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v37 = v22;
  v38 = v18;
  v39 = v23;
  v40 = v20;
  type metadata accessor for ReconciliationID(255, &v37);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = *(TupleTypeMetadata3 + 48);
  v26 = *(TupleTypeMetadata3 + 64);
  *v14 = sub_1CF03D760();
  (*(*(v22 - 8) + 16))(&v14[v25], a4 + *(*a4 + 576), v22);
  swift_storeEnumTagMultiPayload();
  v27 = v35;
  *&v14[v26] = v35;
  v28 = v36;
  swift_storeEnumTagMultiPayload();
  v29 = *(*a3 + 312);
  v30 = v27;
  v29(v14);
  return (*(v41 + 8))(v14, v28);
}

uint64_t sub_1CF56C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v143 = a8;
  v144 = a4;
  v145 = a7;
  v139 = a6;
  v140 = a5;
  v128 = a3;
  v135 = a2;
  v142 = a1;
  v10 = *v8;
  v123 = v10;
  v11 = v10[76];
  v141 = v10[78];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v10[77];
  v14 = v10[75];
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v146 = AssociatedTypeWitness;
  v147 = v15;
  v148 = AssociatedConformanceWitness;
  v149 = v17;
  v127 = type metadata accessor for ReconciliationID(0, &v146);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v117 - v18;
  v136 = v15;
  v146 = v15;
  v147 = AssociatedTypeWitness;
  v129 = AssociatedTypeWitness;
  v130 = v17;
  v148 = v17;
  v149 = AssociatedConformanceWitness;
  v131 = AssociatedConformanceWitness;
  v126 = type metadata accessor for ReconciliationID(0, &v146);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v117 - v19;
  v122 = type metadata accessor for ItemReconciliationHalf(0, v14, v13, v20);
  v137 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v22 = &v117 - v21;
  v146 = v14;
  v147 = v11;
  v133 = v11;
  v134 = v13;
  v148 = v13;
  v149 = v141;
  v23 = type metadata accessor for ItemReconciliation(255, &v146);
  v24 = sub_1CF9E75D8();
  v132 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v117 - v29;
  v31 = v10;
  v32 = *(v142 + 32);
  v33 = *(*v32 + 440);
  v34 = *(v143 + 8);
  v138 = v31[72];
  v35 = v33(&v9[v138], v144, v145, v34, v28);
  v118 = v26;
  v117 = v22;
  v120 = v30;
  v121 = v9;
  v119 = v24;
  v37 = v136;
  v38 = v142;
  if (v35)
  {
    v39 = v144;
    v40 = v121;
    v41 = v137;
  }

  else
  {
    v40 = v121;
    v39 = v144;
    v56 = (*(*v32 + 448))(&v121[v138], v144, v145, v34);
    v41 = v137;
    if ((v56 & 1) == 0)
    {
      v72 = v145;
      v149 = v145;
      v150 = v143;
      v73 = __swift_allocate_boxed_opaque_existential_0(&v146);
      (*(*(v72 - 8) + 16))(v73, v39, v72);
      v140(&v146, 0, 0xD000000000000017, 0x80000001CFA52F80, 0);
      return sub_1CEFCCC44(&v146, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  if (v135)
  {
    v42 = v120;
    v43 = v145;
    sub_1CF68DDB0(&v40[v138], v39, v145, v34, v120);
    v44 = v132;
    v45 = v118;
    v46 = v42;
    v47 = v119;
    (*(v132 + 16))(v118, v46, v119);
    v48 = v23;
    v49 = v45;
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {
      (*(v44 + 8))(v49, v47);
      v51 = v47;
      v52 = v128;
      v53 = v141;
      v54 = v133;
      v55 = v134;
LABEL_18:
      v146 = v14;
      v147 = v54;
      v148 = v55;
      v149 = v53;
      type metadata accessor for JobResult(0, &v146);
      v146 = v14;
      v147 = v54;
      v148 = v55;
      v149 = v53;
      type metadata accessor for Ingestion.ReSnapshotChildren(0, &v146);
      v102 = *(v40 + 15);
      v103 = *(v40 + 16);
      v104 = *(v40 + 17);
      v105 = v40;
      v106 = v138;
      v107 = sub_1CF656FE0(v105 + v138, v102, v103, v104);
      v108 = v51;
      sub_1CF803A0C(v52, v107);

      v109 = v105[15];
      v110 = v105[16];
      v111 = v39;
      v112 = v105[17];
      swift_allocObject();
      v113 = sub_1CF052464(v105 + v106, v109, v110, v112);
      sub_1CF803A0C(v52, v113);

      v149 = v43;
      v150 = v143;
      v114 = __swift_allocate_boxed_opaque_existential_0(&v146);
      (*(*(v43 - 8) + 16))(v114, v111, v43);
      sub_1CF4810BC();
      v115 = swift_allocError();
      *v116 = 3;
      v140(&v146, 0, 0, 0, v115);

      (*(v132 + 8))(v120, v108);
      return sub_1CEFCCC44(&v146, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v92 = *(v41 + 16);
    v144 = v48;
    v93 = v117;
    v94 = v49;
    v95 = v41;
    v96 = v49;
    v97 = v122;
    v92(v117, v94, v122);
    (*(v50 + 8))(v96, v144);
    v98 = v93[*(v97 + 52)];
    (*(v95 + 8))(v93, v97);
    v99 = v98 == 2;
    v52 = v128;
    v100 = v44;
    v53 = v141;
    v54 = v133;
    v55 = v134;
    v51 = v119;
    if (!v99)
    {
      goto LABEL_18;
    }

    v149 = v43;
    v150 = v143;
    v101 = __swift_allocate_boxed_opaque_existential_0(&v146);
    (*(*(v43 - 8) + 16))(v101, v39, v43);
    v140(&v146, 0, 0, 0, 0);
    (*(v100 + 8))(v120, v51);
  }

  else
  {
    if (sub_1CF056558())
    {
      v146 = v14;
      v147 = v133;
      v148 = v134;
      v149 = v141;
      type metadata accessor for ConcreteDatabase(0, &v146);
      v141 = swift_dynamicCastClassUnconditional();
      v57 = v37;
      v146 = v37;
      v147 = v129;
      v148 = v130;
      v149 = v131;
      type metadata accessor for FPFSID(0, &v146);
      v58 = *(*(v37 - 8) + 16);
      v59 = v138;
      v60 = v121;
      v61 = v124;
      v58(v124, &v121[v138], v57);
      swift_storeEnumTagMultiPayload();
      v62 = sub_1CF554514(v61);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v64 = swift_allocBox();
      v66 = v65;
      v67 = *(TupleTypeMetadata2 + 48);
      v58(v65, &v60[v59], v57);
      swift_storeEnumTagMultiPayload();
      *&v66[v67] = *(v60 + 15);
      v68 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      v69 = swift_allocObject();
      v70 = v145;
      v71 = v143;
      *(v69 + 16) = v145;
      *(v69 + 24) = v71;
      *(v69 + 32) = v141;
      *(v69 + 40) = v60;
      *(v69 + 48) = v142;
      swift_retain_n();

      sub_1CF52C114(v62, 0, 0, 1, v64 | 0x5000000000000002, 0, v68, sub_1CF574E78, v69);
    }

    else
    {
      (*(*v38 + 176))();
      v146 = v133;
      v147 = v14;
      v148 = v141;
      v149 = v134;
      type metadata accessor for ConcreteDatabase(0, &v146);
      v141 = swift_dynamicCastClassUnconditional();
      v146 = v129;
      v147 = v37;
      v74 = v37;
      v148 = v131;
      v149 = v130;
      type metadata accessor for FPFSID(0, &v146);
      v75 = *(*(v37 - 8) + 16);
      v76 = v138;
      v77 = v121;
      v78 = v125;
      v75(v125, &v121[v138], v37);
      swift_storeEnumTagMultiPayload();
      v79 = sub_1CF554514(v78);
      v80 = swift_getTupleTypeMetadata2();
      v81 = swift_allocBox();
      v83 = v82;
      v84 = *(v80 + 48);
      v85 = v74;
      v86 = v79;
      v87 = v81;
      v75(v82, &v77[v76], v85);
      swift_storeEnumTagMultiPayload();
      *&v83[v84] = *(v77 + 15);
      v88 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      v89 = swift_allocObject();
      v70 = v145;
      v71 = v143;
      *(v89 + 16) = v145;
      *(v89 + 24) = v71;
      *(v89 + 32) = v77;
      *(v89 + 40) = v142;

      sub_1CF52C114(v86, 0, 0, 1, v87 | 0x5000000000000002, 0, v88, sub_1CF574E24, v89);
    }

    v149 = v70;
    v150 = v71;
    v90 = __swift_allocate_boxed_opaque_existential_0(&v146);
    (*(*(v70 - 8) + 16))(v90, v144, v70);
    type metadata accessor for RequestContinuation();
    v91 = swift_allocObject();
    v140(&v146, v91, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v146, &unk_1EC4C1B30, &qword_1CFA05300);
}

void sub_1CF56D30C(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v39 = a4;
  v8 = *a2;
  v9 = *(*a2 + 616);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v34 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v34 - v15);
  (*(v17 + 16))(&v34 - v15, a1, v13, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    v19 = *v16;
    sub_1CF56BFE0(0, v39, v18);
  }

  else
  {
    (*(v10 + 32))(v12, v16, v9);
    v20 = *(v8 + 632);
    v35 = v12;
    v34 = v20;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v36 = v10;
    v22 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = swift_getAssociatedConformanceWitness();
    v40[0] = AssociatedTypeWitness;
    v40[1] = v22;
    v40[2] = AssociatedConformanceWitness;
    v40[3] = v24;
    type metadata accessor for ReconciliationID(255, v40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26 = swift_allocBox();
    v28 = v27;
    v29 = *(TupleTypeMetadata2 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v27, &a3[*(*a3 + 576)], AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    *(v28 + v29) = *(a3 + 15);
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v37;
    v30[3] = v31;
    v32 = v39;
    v30[4] = a3;
    v30[5] = v32;

    v33 = v35;
    sub_1CF53ECA4(v35, v26 | 0x5000000000000002, sub_1CF574E88, v30, v9, v34);

    (*(v36 + 8))(v33, v9);
  }
}

double sub_1CF56D708(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();
    LOBYTE(a1) = 0;
  }

  return sub_1CF56BFE0(a1 & 1, a4, 0);
}

double sub_1CF56D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v5 = sub_1CF9E8238();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v13 - v8);
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    sub_1CF56BFE0(0, a3, v10);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return sub_1CF56BFE0(0, a3, 0);
  }

  return result;
}

double sub_1CF56D908(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v11 = *v7;
  v12 = *a1;
  v27 = sub_1CF9E75D8();
  v13 = *(v27 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v27);
  v17 = &v25 - v16;
  (*(v13 + 16))(&v25 - v16, a2, v15);
  v18 = (*(v13 + 80) + 112) & ~*(v13 + 80);
  v26 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = v11[75];
  *(v20 + 3) = v11[76];
  *(v20 + 4) = v12[77];
  *(v20 + 5) = v12[78];
  *(v20 + 6) = v11[77];
  *(v20 + 7) = v11[78];
  *(v20 + 8) = v12[79];
  *(v20 + 9) = v12[80];
  *(v20 + 10) = a1;
  v21 = v28;
  v22 = v29;
  *(v20 + 11) = a3;
  *(v20 + 12) = v21;
  *(v20 + 13) = v22;
  (*(v13 + 32))(&v20[v18], v17, v27);
  *&v20[v26] = v7;
  v23 = v30;
  *&v20[v19] = v30;

  sub_1CEFD09A0(v23);
  sub_1CF53AC20(a3, v23, sub_1CF574BC8, v20);

  return result;
}

double sub_1CF56DBA0(unint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8)
{
  v44 = a5;
  v45 = a8;
  v42 = a3;
  v43 = a4;
  v36 = a1;
  v11 = *a2;
  v40 = *a7;
  v41 = v11;
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v39 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v38 = v12;
  v37 = sub_1CF9E8238();
  v17 = *(v37 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v37);
  v21 = &v34 - v20;
  (*(v17 + 16))(&v34 - v20, v36, v19);
  (*(v13 + 16))(v16, a6, v12);
  v22 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v36 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v13 + 80) + v24 + 16) & ~*(v13 + 80);
  v35 = (v14 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v28 = v40;
  v27 = v41;
  *(v26 + 2) = v40[75];
  *(v26 + 3) = v28[76];
  *(v26 + 4) = v27[77];
  *(v26 + 5) = v27[78];
  *(v26 + 6) = v28[77];
  *(v26 + 7) = v28[78];
  *(v26 + 8) = v27[79];
  *(v26 + 9) = v27[80];
  (*(v17 + 32))(&v26[v22], v21, v37);
  v29 = v43;
  *&v26[v36] = v42;
  *&v26[v23] = a2;
  v30 = &v26[v24];
  v31 = v44;
  *v30 = v29;
  v30[1] = v31;
  (*(v13 + 32))(&v26[v34], v39, v38);
  *&v26[v35] = a7;
  v32 = v45;
  *&v26[v25] = v45;

  sub_1CEFD09A0(v32);
  sub_1CF92DE44("backgroundMaterialize(concreteDB:lastMaterializedLevel:id:request:requestCompleted:)", 84, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF574C9C, v26);

  return result;
}

void sub_1CF56DFA0(void *a1, uint64_t a2, uint64_t *a3, void *a4, void (*a5)(id), uint64_t a6, char *a7, uint64_t a8, unint64_t a9)
{
  v83 = a8;
  v85 = a7;
  v95 = a6;
  v96 = a5;
  v90 = a4;
  v94 = a2;
  v87 = a1;
  v10 = *a3;
  v11 = *a3;
  v12 = *(*a3 + 80);
  v13 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v81 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v86 = v72 - v14;
  v93 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v82 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v80 = v72 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v88 = v72 - v20;
  v91 = a3;
  v21 = *(v10 + 88);
  v97[0] = v12;
  v97[1] = v21;
  v79 = *(v11 + 96);
  v98 = v79;
  v22 = type metadata accessor for ReconciliationID(255, v97);
  v23 = sub_1CF9E75D8();
  v84 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v72 - v24;
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v78 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v72 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v92 = v72 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v34 = sub_1CF9E8238();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = (v72 - v36);
  (*(v38 + 16))(v72 - v36, v94, v34, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v37;
    v40 = *v37;
    v96(v39);

    return;
  }

  v77 = *(v26 + 48);
  if (v77(v37, 1, v12) == 1)
  {
    v96(0);
    return;
  }

  v76 = v26 + 48;
  v94 = v26;
  v41 = v26 + 32;
  v42 = *(v26 + 32);
  v43 = v92;
  v72[1] = v41;
  v72[0] = v42;
  v42(v92, v37, v12);
  v44 = v87[3];
  v45 = v87[4];
  v46 = __swift_project_boxed_opaque_existential_1(v87, v44);
  v47 = v99;
  sub_1CF554678(v90, 1, v46, v44, *(v45 + 8), v25);
  if (v47)
  {

    (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
    v99 = 0;
    v22 = v23;
    v48 = v93;
    v49 = v84;
LABEL_9:
    (*(v49 + 8))(v25, v22);
    goto LABEL_10;
  }

  v99 = 0;
  v49 = *(v22 - 8);
  (*(v49 + 56))(v25, 0, 1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v93;
    goto LABEL_9;
  }

  (v72[0])(v31, v25, v12);
  v70 = sub_1CF9E6868();
  v71 = *(v94 + 8);
  v71(v31, v12);
  if (v70)
  {
    v96(0);
    v71(v43, v12);
    return;
  }

  v48 = v93;
LABEL_10:
  v50 = v94;
  v51 = *(v94 + 16);
  v52 = v88;
  v84 = v94 + 16;
  v74 = v51;
  v51(v88, v43, v12);
  v53 = *(v50 + 56);
  v75 = v50 + 56;
  v73 = v53;
  v53(v52, 0, 1, v12);
  v54 = *(TupleTypeMetadata2 + 48);
  v55 = v48;
  v56 = *(v48 + 16);
  v57 = v86;
  v56(v86, v52, v13);
  v87 = v54;
  v56(v54 + v57, v85, v13);
  v58 = v77;
  if (v77(v57, 1, v12) != 1)
  {
    v60 = v80;
    v56(v80, v57, v13);
    v61 = v87;
    if (v58(v87 + v57, 1, v12) != 1)
    {
      v67 = v78;
      (v72[0])(v78, v61 + v57, v12);
      v68 = sub_1CF9E6868();
      v69 = *(v94 + 8);
      v69(v67, v12);
      v59 = *(v93 + 8);
      v59(v88, v13);
      v69(v60, v12);
      v59(v57, v13);
      v63 = v95;
      v62 = v96;
      if (v68)
      {
        v96(0);
        goto LABEL_19;
      }

LABEL_16:
      v64 = v82;
      v65 = v92;
      v74(v82, v92, v12);
      v73(v64, 0, 1, v12);
      v66 = sub_1CF56D908(v90, v64, v91, a9, v62, v63);
      (v59)(v64, v13, v66);
      (*(v94 + 8))(v65, v12);
      return;
    }

    v59 = *(v93 + 8);
    v59(v88, v13);
    (*(v94 + 8))(v60, v12);
LABEL_15:
    v62 = v96;
    (*(v81 + 8))(v57, TupleTypeMetadata2);
    v63 = v95;
    goto LABEL_16;
  }

  v59 = *(v55 + 8);
  v59(v52, v13);
  if (v58(v87 + v57, 1, v12) != 1)
  {
    goto LABEL_15;
  }

  v59(v57, v13);
  v96(0);
LABEL_19:
  (*(v94 + 8))(v92, v12);
}

uint64_t sub_1CF56E9AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v130 = a8;
  v131 = a4;
  v124 = a7;
  v126 = a6;
  v127 = a5;
  v110 = a3;
  v123 = a2;
  v129 = a1;
  v10 = *v8;
  v111 = v10;
  v11 = v10[76];
  v128 = v10[78];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v10[77];
  v14 = v10[75];
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v132 = AssociatedTypeWitness;
  v133 = v15;
  v134 = AssociatedConformanceWitness;
  v135 = v17;
  v106 = type metadata accessor for ReconciliationID(0, &v132);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v95 - v18;
  v108 = sub_1CF9E75D8();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v115 = &v95 - v19;
  v132 = v15;
  v133 = AssociatedTypeWitness;
  v117 = AssociatedTypeWitness;
  v114 = v17;
  v134 = v17;
  v135 = AssociatedConformanceWitness;
  v116 = AssociatedConformanceWitness;
  v102 = type metadata accessor for ReconciliationID(0, &v132);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v95 - v20;
  v122 = v15;
  v104 = sub_1CF9E75D8();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v113 = &v95 - v21;
  v100 = type metadata accessor for ItemReconciliationHalf(0, v14, v13, v22);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v95 - v23;
  v120 = v14;
  v121 = v11;
  v132 = v14;
  v133 = v11;
  v119 = v13;
  v134 = v13;
  v135 = v128;
  v112 = type metadata accessor for ItemReconciliation(255, &v132);
  v118 = sub_1CF9E75D8();
  v109 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  v29 = swift_allocObject();
  v30 = v10;
  v31 = v124;
  v33 = v129;
  v32 = v130;
  v29[2] = v124;
  v29[3] = v32;
  v29[4] = v33;
  v29[5] = v9;
  v125 = v29;
  v34 = v33[4];
  v35 = v30[72];
  v36 = *(*v34 + 440);
  v37 = *(v32 + 8);

  v38 = v31;
  v39 = v36(v9 + v35, v131, v31, v37);
  v41 = v37;
  v95 = v25;
  v42 = v123;
  v96 = v28;
  v43 = v129;
  v97 = v35;
  v44 = v122;
  if (v39)
  {
    v45 = v131;
    v46 = v9;
    v47 = v41;
  }

  else
  {
    v46 = v9;
    v45 = v131;
    v47 = v41;
    if (((*(*v34 + 448))(v9 + v97, v131, v31, v41) & 1) == 0 && (*(v9 + 140) & 0x40) == 0)
    {
      v135 = v31;
      v136 = v130;
      v60 = __swift_allocate_boxed_opaque_existential_0(&v132);
      (*(*(v31 - 8) + 16))(v60, v45, v31);
      v127(&v132, 0, 0xD000000000000017, 0x80000001CFA52F80, 0);
      goto LABEL_15;
    }
  }

  if (v42)
  {
    v48 = v97;
    v49 = v96;
    sub_1CF68DDB0(v46 + v97, v45, v31, v47, v96);
    v50 = v109;
    v51 = v95;
    v52 = v49;
    v53 = v118;
    (*(v109 + 16))(v95, v52, v118);
    v54 = *(v112 - 8);
    if ((*(v54 + 48))(v51, 1, v112) == 1)
    {
      (*(v50 + 8))(v51, v53);
      v55 = v128;
      v56 = v110;
      v57 = v50;
      v59 = v120;
      v58 = v121;
    }

    else
    {
      v86 = v99;
      v87 = v98;
      v88 = v100;
      (*(v99 + 16))(v98, v51, v100);
      (*(v54 + 8))(v51, v112);
      v89 = v87[*(v88 + 52)];
      (*(v86 + 8))(v87, v88);
      v55 = v128;
      v56 = v110;
      v57 = v50;
      v59 = v120;
      v58 = v121;
      if (v89 == 2)
      {
        v135 = v38;
        v136 = v130;
        v90 = __swift_allocate_boxed_opaque_existential_0(&v132);
        (*(*(v38 - 1) + 16))(v90, v45, v38);
        v127(&v132, 0, 0, 0, 0);

LABEL_19:
        (*(v57 + 8))(v96, v118);
        return sub_1CEFCCC44(&v132, &unk_1EC4C1B30, &qword_1CFA05300);
      }
    }

    v132 = v59;
    v133 = v58;
    v134 = v119;
    v135 = v55;
    type metadata accessor for JobResult(0, &v132);
    v91 = sub_1CF57488C(v46 + v48, v46[15], v46[16], v46[17], 0x400000);
    sub_1CF803A0C(v56, v91);

    v135 = v38;
    v136 = v130;
    v92 = __swift_allocate_boxed_opaque_existential_0(&v132);
    (*(*(v38 - 1) + 16))(v92, v45, v38);
    sub_1CF4810BC();
    v93 = swift_allocError();
    *v94 = 3;
    v127(&v132, 0, 0, 0, v93);

    goto LABEL_19;
  }

  if (sub_1CF056558())
  {
    v132 = v120;
    v133 = v121;
    v134 = v119;
    v135 = v128;
    type metadata accessor for ConcreteDatabase(0, &v132);
    v129 = swift_dynamicCastClassUnconditional();
    v61 = *(v44 - 8);
    (*(v61 + 56))(v113, 1, 1, v44);
    v132 = v44;
    v133 = v117;
    v134 = v114;
    v135 = v116;
    type metadata accessor for FPFSID(0, &v132);
    v62 = *(v61 + 16);
    v63 = v97;
    v64 = v9;
    v65 = v101;
    v62(v101, v9 + v97, v44);
    swift_storeEnumTagMultiPayload();
    v128 = sub_1CF554514(v65);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v67 = swift_allocBox();
    v69 = v68;
    v70 = *(TupleTypeMetadata2 + 48);
    v62(v68, v64 + v63, v44);
    swift_storeEnumTagMultiPayload();
    *&v69[v70] = v64[15];
    v71 = v113;
    sub_1CF56D908(v129, v113, v128, v67 | 0x8000000000000004, sub_1CF574B78, v125);

    (*(v103 + 8))(v71, v104);
  }

  else
  {
    v129 = (*(*v43 + 176))();
    v132 = v121;
    v133 = v120;
    v134 = v128;
    v135 = v119;
    type metadata accessor for ConcreteDatabase(0, &v132);
    v128 = swift_dynamicCastClassUnconditional();
    v72 = v117;
    (*(*(v117 - 8) + 56))(v115, 1, 1, v117);
    v132 = v72;
    v133 = v44;
    v134 = v116;
    v135 = v114;
    type metadata accessor for FPFSID(0, &v132);
    v73 = *(*(v44 - 8) + 16);
    v74 = v97;
    v75 = v9;
    v76 = v9 + v97;
    v77 = v105;
    v73(v105, v76, v44);
    swift_storeEnumTagMultiPayload();
    v124 = sub_1CF554514(v77);
    v78 = swift_getTupleTypeMetadata2();
    v79 = swift_allocBox();
    v81 = v80;
    v82 = *(v78 + 48);
    v73(v80, v75 + v74, v44);
    swift_storeEnumTagMultiPayload();
    *&v81[v82] = v75[15];
    v83 = v115;
    sub_1CF56D908(v128, v115, v124, v79 | 0x8000000000000004, sub_1CF574B78, v125);

    (*(v107 + 8))(v83, v108);
  }

  v135 = v38;
  v136 = v130;
  v84 = __swift_allocate_boxed_opaque_existential_0(&v132);
  (*(*(v38 - 1) + 16))(v84, v131, v38);
  type metadata accessor for RequestContinuation();
  v85 = swift_allocObject();
  v127(&v132, v85, 0, 0, 0);

LABEL_15:

  return sub_1CEFCCC44(&v132, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF56F844(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v27 = a1;
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 96);
  v6 = *(*a2 + 104);
  v28 = *(*a2 + 80);
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v7 = type metadata accessor for PersistenceTrigger(0, &v28);
  v8 = *(v7 - 8);
  v25 = v7;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = v12;
  v30 = AssociatedConformanceWitness;
  v31 = v14;
  type metadata accessor for ReconciliationID(255, &v28);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = *(TupleTypeMetadata3 + 48);
  v17 = *(TupleTypeMetadata3 + 64);
  v18 = v24;
  *v10 = sub_1CF03D760();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v10[v16], v18 + *(*v18 + 576), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v19 = v27;
  *&v10[v17] = v27;
  v20 = v25;
  swift_storeEnumTagMultiPayload();
  v21 = *(*a2 + 312);
  v22 = v19;
  v21(v10);
  return (*(v26 + 8))(v10, v20);
}

uint64_t sub_1CF56FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, unint64_t, unint64_t, id), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v252 = a8;
  v250 = a7;
  v249 = a6;
  v248 = a5;
  v253 = a4;
  v236 = a3;
  v231 = a2;
  v251 = a1;
  v246 = *v8;
  v9 = *(v246 + 77);
  v10 = *(v246 + 75);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(v246 + 78);
  v247 = v8;
  v13 = *(v246 + 76);
  v14 = v12;
  *&v260 = AssociatedTypeWitness;
  *(&v260 + 1) = swift_getAssociatedTypeWitness();
  v228 = *(&v260 + 1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v261 = AssociatedConformanceWitness;
  *(&v261 + 1) = swift_getAssociatedConformanceWitness();
  v226 = *(&v261 + 1);
  v213 = type metadata accessor for ThrottlingKey(255, &v260);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v212 = sub_1CF9E75D8();
  v215 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v211 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v214 = &v204 - v17;
  v233 = AssociatedTypeWitness;
  v232 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v217 = &v204 - v19;
  v230 = sub_1CF9E5CF8();
  v224 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for SnapshotMutation(0, v10, v9, v21);
  v222 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v221 = &v204 - v22;
  *&v260 = v10;
  *(&v260 + 1) = v13;
  *&v261 = v9;
  *(&v261 + 1) = v14;
  v220 = type metadata accessor for ReconciliationMutation(0, &v260);
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v218 = &v204 - v23;
  v25 = type metadata accessor for SnapshotItem(255, v10, v9, v24);
  v235 = sub_1CF9E75D8();
  v234 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v27 = &v204 - v26;
  *&v260 = v10;
  *(&v260 + 1) = v13;
  *&v261 = v9;
  *(&v261 + 1) = v14;
  v28 = type metadata accessor for ItemReconciliation(255, &v260);
  v29 = sub_1CF9E75D8();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v204 - v31;
  v245 = v28;
  v33 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v244 = &v204 - v35;
  v241 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v225 = &v204 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  *&v239 = &v204 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v240 = &v204 - v41;
  *&v242 = v10;
  *&v260 = v10;
  *(&v260 + 1) = v13;
  *&v238 = v13;
  *&v243 = v9;
  v237 = v14;
  *&v261 = v9;
  *(&v261 + 1) = v14;
  type metadata accessor for ConcreteDatabase(0, &v260);
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    v46 = v250;
    *(&v261 + 1) = v250;
    *&v262 = v252;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v260);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_0, v253, v46);
    v48 = FPNotSupportedError();
    v248(&v260, 0, 0xD000000000000013, 0x80000001CFA52E30, v48);

LABEL_8:
    v60 = &v260;
    return sub_1CEFCCC44(v60, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v209 = v27;
  v43 = v42;
  v210 = v33;
  v208 = v25;
  v44 = *(v246 + 72);
  v45 = *(v252 + 8);

  sub_1CF68DDB0(v247 + v44, v253, v250, v45, v32);
  v207 = v45;
  v49 = v210;
  v50 = v245;
  v51 = (*(v210 + 48))(v32, 1, v245);
  if (v51 == 1)
  {
    (*(v30 + 8))(v32, v29);
    v52 = v250;
    *(&v261 + 1) = v250;
    *&v262 = v252;
    v53 = __swift_allocate_boxed_opaque_existential_0(&v260);
    (*(*(v52 - 8) + 16))(v53, v253, v52);
    v248(&v260, 0, 0xD00000000000001BLL, 0x80000001CFA52E50, 0);

    goto LABEL_8;
  }

  v206 = v43;
  v54 = v244;
  (*(v49 + 32))(v244, v32, v50);
  v56 = type metadata accessor for ItemReconciliationHalf(0, v242, v243, v55);
  v57 = v253;
  if ((v54[*(v56 + 36)] & 0x10) == 0)
  {
    v58 = v250;
    *(&v261 + 1) = v250;
    *&v262 = v252;
    v59 = __swift_allocate_boxed_opaque_existential_0(&v260);
    (*(*(v58 - 8) + 16))(v59, v57, v58);
    v248(&v260, 0, 0xD00000000000001BLL, 0x80000001CFA52E70, 0);

    (*(v49 + 8))(v54, v50);
    goto LABEL_8;
  }

  v62 = *(v251 + 32);
  v63 = v247;
  v64 = v250;
  v65 = v207;
  (*(*v62 + 328))(&v265, v247 + v44, v253, v250, v207);
  if (v266)
  {
LABEL_11:
    *(&v261 + 1) = v64;
    *&v262 = v252;
    v66 = __swift_allocate_boxed_opaque_existential_0(&v260);
    (*(*(v64 - 8) + 16))(v66, v57, v64);
    v248(&v260, 0, 0xD00000000000001BLL, 0x80000001CFA52E50, 0);

    (*(v210 + 8))(v244, v245);
    goto LABEL_8;
  }

  v67 = v265;
  v68 = v209;
  (*(*v62 + 240))(v63 + v44, 1, v57, v64, v65);
  v69 = v241;
  v70 = v208;
  if ((*(v241 + 48))(v68, 1, v208) == 1)
  {
    (*(v234 + 8))(v68, v235);
    goto LABEL_11;
  }

  v235 = v62;
  v71 = v239;
  (*(v69 + 32))(v239, v68, v70);
  v72 = *(v69 + 16);
  v72(v240, v71, v70);
  v73 = v71 + *(v70 + 48);
  v74 = type metadata accessor for ItemMetadata(0);
  v75 = v244;
  if (*(v73 + *(v74 + 60)) == 1 && !sub_1CF07CD80(v245) && !v67)
  {
    *&v260 = v242;
    *(&v260 + 1) = v238;
    *&v261 = v243;
    *(&v261 + 1) = v237;
    type metadata accessor for JobResult(0, &v260);
    v76 = v233;
    *&v260 = v233;
    *(&v260 + 1) = v228;
    *&v261 = AssociatedConformanceWitness;
    *(&v261 + 1) = v226;
    type metadata accessor for ReconciliationID(255, &v260);
    v77 = *(swift_getTupleTypeMetadata2() + 48);
    v78 = *(v232 + 16);
    v205 = v44;
    v79 = v218;
    v78(v218, v247 + v44, v76);
    swift_storeEnumTagMultiPayload();
    *(v79 + v77) = 3;
    v80 = v220;
    swift_storeEnumTagMultiPayload();
    v81 = v236;
    sub_1CF06EB44(v236, v79);
    (*(v219 + 8))(v79, v80);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v83 = *(TupleTypeMetadata3 + 48);
    v84 = v221;
    v85 = &v221[*(TupleTypeMetadata3 + 64)];
    v78(v221, v247 + v205, v76);
    *(v84 + v83) = 1;
    *v85 = 0xD000000000000029;
    *(v85 + 1) = 0x80000001CFA52F30;
    v86 = v223;
    swift_storeEnumTagMultiPayload();
    sub_1CF9491AC(v81, v84);
    (*(v222 + 8))(v84, v86);
    *&v260 = v242;
    *(&v260 + 1) = v238;
    *&v261 = v243;
    *(&v261 + 1) = v237;
    type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy(0, &v260);
    v87 = v229;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v89 = v88;
    v90 = *(v224 + 8);
    result = v90(v87, v230);
    v91 = v89 * 1000000000.0;
    if (COERCE__INT64(fabs(v89 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v92 = v253;
      v93 = v241;
      if (v91 > -9.22337204e18)
      {
        if (v91 < 9.22337204e18)
        {
          v94 = v247;
          v95 = sub_1CF559420();
          sub_1CF803A0C(v236, v95);

          v96 = v94[17];
          if ((v96 & 0x4000) == 0)
          {
            v94[17] = v96 | 0x4000;
          }

          v97 = v92;
          *&v260 = v242;
          *(&v260 + 1) = v238;
          *&v261 = v243;
          *(&v261 + 1) = v237;
          type metadata accessor for DiskImport.ContinueDiskImport(0, &v260);
          v98 = v217;
          sub_1CF046AB4();
          v99 = v229;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v101 = v100;
          result = v90(v99, v230);
          v102 = v101 * 1000000000.0;
          if (COERCE__INT64(fabs(v101 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v103 = v248;
            v104 = v252;
            if (v102 > -9.22337204e18)
            {
              if (v102 < 9.22337204e18)
              {
                v105 = sub_1CF559420();
                (*(v232 + 8))(v98, v233);
                sub_1CF803A0C(v236, v105);

                *(&v261 + 1) = v64;
                *&v262 = v104;
                v106 = __swift_allocate_boxed_opaque_existential_0(&v260);
                (*(*(v64 - 8) + 16))(v106, v97, v64);
                v103(&v260, 0, 0x6C6169726574616DLL, 0xEC00000064657A69, 0);

                v107 = *(v93 + 8);
                v108 = v208;
                v107(v239, v208);
                (*(v210 + 8))(v244, v245);
                v107(v240, v108);
                goto LABEL_8;
              }

              goto LABEL_60;
            }

LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

  if (!v231)
  {
    v115 = *(v241 + 8);
    v241 += 8;
    v246 = v115;
    v115(v239, v208);
    (*(v210 + 8))(v75, v245);
    v116 = v233;
    *&v260 = v233;
    *(&v260 + 1) = v228;
    *&v261 = AssociatedConformanceWitness;
    *(&v261 + 1) = v226;
    type metadata accessor for ReconciliationID(255, &v260);
    sub_1CF550180();
    v117 = swift_getTupleTypeMetadata2();
    v245 = swift_allocBox();
    v119 = v118;
    v120 = *(v117 + 48);
    (*(v232 + 16))(v118, v247 + v44, v116);
    swift_storeEnumTagMultiPayload();
    *(v119 + v120) = [objc_opt_self() requestForSelf];
    v121 = v64;
    v122 = *(**(v251 + 24) + 384);
    v123 = v122(v240, 1, 0, 1, v253, v121, v207);
    v244 = v74;
    v259 = v123;
    *&v243 = v123;
    v153 = TupleTypeMetadata2;
    v154 = sub_1CF9E6E58();
    WitnessTable = swift_getWitnessTable();
    v156 = v214;
    *&v242 = v154;
    *&v239 = WitnessTable;
    sub_1CF9E7118();
    v243, v157, v158, v159, v160, v161, v162, v163;
    v164 = (*(v153 - 8) + 48);
    v165 = v153;
    v166 = *v164;
    v167 = (*v164)(v156, 1, v165);
    if (v167 == 1)
    {
      v168 = *(v215 + 8);
      v169 = v156;
      v215 += 8;
      v170 = v168;
      v168(v169, v212);
      *&v260 = v122(v240, 0, 0, 1, v253, v250, v207);
      v174 = v211;
      v175 = v260;
      sub_1CF9E7118();
      v175, v176, v177, v178, v179, v180, v181, v182;
      v183 = v166(v174, 1, TupleTypeMetadata2);
      if (v183 == 1)
      {
        v170(v211, v212);
        v184 = 0;
        v243 = xmmword_1CF9FC980;
        v242 = 0u;
        v239 = 0u;
        v238 = 0u;
      }

      else
      {
        v185 = &v211[*(TupleTypeMetadata2 + 48)];
        v186 = *(v185 + 1);
        v242 = *v185;
        v239 = v186;
        v187 = *(v185 + 3);
        v243 = *(v185 + 2);
        v238 = v187;
        v184 = *(v185 + 8);
        (*(*(v213 - 8) + 8))();
      }

      v260 = v242;
      v261 = v239;
      v262 = v243;
      v263 = v238;
      v264 = v184;
    }

    else
    {
      v171 = &v156[*(TupleTypeMetadata2 + 48)];
      v172 = *(v171 + 3);
      v256 = *(v171 + 2);
      v257 = v172;
      v258 = *(v171 + 8);
      v173 = *v171;
      v255 = *(v171 + 1);
      v254 = v173;
      (*(*(v213 - 8) + 8))(v156);
      v262 = v256;
      v263 = v257;
      v264 = v258;
      v260 = v254;
      v261 = v255;
    }

    v188 = v250;
    v189 = v252;
    v190 = v208;
    v191 = v244;
    v192 = v240;
    v72(v225, v240, v208);
    if (v192[*(v190 + 48) + *(v191 + 16)])
    {
      v193 = 1;
      v194 = v247;
    }

    else
    {
      v194 = v247;
      v193 = *(&v262 + 1) != 1 && v263 == 6;
    }

    v195 = v194[17] == 0x40000000;
    v196 = swift_allocObject();
    v196[2] = v188;
    v196[3] = v189;
    v197 = v251;
    v196[4] = v206;
    v196[5] = v197;
    v196[6] = v194;
    swift_retain_n();

    v198 = v208;
    v199 = swift_getWitnessTable();
    v200 = v225;
    sub_1CF53E22C(v225, v193, v195, v245 | 0x4000000000000000, sub_1CF574AC4, v196, v198, v199);

    v201 = v246;
    v246(v200, v198);
    *(&v255 + 1) = v188;
    *&v256 = v189;
    v202 = __swift_allocate_boxed_opaque_existential_0(&v254);
    (*(*(v188 - 8) + 16))(v202, v253, v188);
    type metadata accessor for RequestContinuation();
    v203 = swift_allocObject();
    v248(&v254, v203, 0, 0, 0);

    sub_1CEFCCC44(&v260, qword_1EC4C17A0, "4\r\n");

    v201(v240, v198);
    v60 = &v254;
    return sub_1CEFCCC44(v60, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  if (v67)
  {
    *&v260 = v242;
    *(&v260 + 1) = v238;
    *&v261 = v243;
    *(&v261 + 1) = v237;
    type metadata accessor for JobResult(0, &v260);
    v109 = sub_1CF57488C(v247 + v44, v247[15], v247[16], v247[17], 0x10000);
    sub_1CF803A0C(v236, v109);

    *(&v261 + 1) = v64;
    *&v262 = v252;
    v110 = __swift_allocate_boxed_opaque_existential_0(&v260);
    (*(*(v64 - 8) + 16))(v110, v253, v64);
    sub_1CF4810BC();
    v111 = swift_allocError();
    *v112 = 3;
    v248(&v260, 0, 0xD000000000000023, 0x80000001CFA52EA0, v111);

    v113 = *(v241 + 8);
    v114 = v208;
    v113(v239, v208);
    (*(v210 + 8))(v75, v245);
LABEL_41:
    v113(v240, v114);
    goto LABEL_8;
  }

  v124 = v245;
  v125 = sub_1CF07CD80(v245);
  v126 = v253;
  if (v125)
  {
LABEL_40:
    *(&v261 + 1) = v64;
    *&v262 = v252;
    v152 = __swift_allocate_boxed_opaque_existential_0(&v260);
    (*(*(v64 - 8) + 16))(v152, v126, v64);
    v248(&v260, 0, 0x6C6169726574616DuLL, 0xEC00000064657A69, 0);

    v113 = *(v241 + 8);
    v114 = v208;
    v113(v239, v208);
    (*(v210 + 8))(v75, v124);
    goto LABEL_41;
  }

  *&v260 = v242;
  *(&v260 + 1) = v238;
  *&v261 = v243;
  *(&v261 + 1) = v237;
  type metadata accessor for JobResult(0, &v260);
  v127 = v233;
  *&v260 = v233;
  *(&v260 + 1) = v228;
  *&v261 = AssociatedConformanceWitness;
  *(&v261 + 1) = v226;
  type metadata accessor for ReconciliationID(255, &v260);
  v128 = *(swift_getTupleTypeMetadata2() + 48);
  v129 = *(v232 + 16);
  v205 = v44;
  v130 = v218;
  v129(v218, v247 + v44, v127);
  swift_storeEnumTagMultiPayload();
  *(v130 + v128) = 3;
  v131 = v220;
  swift_storeEnumTagMultiPayload();
  v132 = v236;
  sub_1CF06EB44(v236, v130);
  (*(v219 + 8))(v130, v131);
  v133 = swift_getTupleTypeMetadata3();
  v134 = *(v133 + 48);
  v135 = v221;
  v136 = &v221[*(v133 + 64)];
  v129(v221, v247 + v205, v127);
  *(v135 + v134) = 1;
  *v136 = 0xD000000000000036;
  *(v136 + 1) = 0x80000001CFA52EF0;
  v137 = v223;
  swift_storeEnumTagMultiPayload();
  sub_1CF9491AC(v132, v135);
  (*(v222 + 8))(v135, v137);
  *&v260 = v242;
  *(&v260 + 1) = v238;
  *&v261 = v243;
  *(&v261 + 1) = v237;
  type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy(0, &v260);
  v138 = v229;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v140 = v139;
  v141 = *(v224 + 8);
  result = v141(v138, v230);
  v142 = v140 * 1000000000.0;
  if (COERCE__INT64(fabs(v140 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v142 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v124 = v245;
  if (v142 >= 9.22337204e18)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v143 = v247;
  v144 = sub_1CF559420();
  sub_1CF803A0C(v236, v144);

  v145 = v143[17];
  if ((v145 & 0x4000) == 0)
  {
    v143[17] = v145 | 0x4000;
  }

  *&v260 = v242;
  *(&v260 + 1) = v238;
  *&v261 = v243;
  *(&v261 + 1) = v237;
  type metadata accessor for DiskImport.ContinueDiskImport(0, &v260);
  v146 = v217;
  sub_1CF046AB4();
  v147 = v229;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v149 = v148;
  result = v141(v147, v230);
  v150 = v149 * 1000000000.0;
  if (COERCE__INT64(fabs(v149 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_64;
  }

  v75 = v244;
  if (v150 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v150 < 9.22337204e18)
  {
    v151 = sub_1CF559420();
    (*(v232 + 8))(v146, v233);
    sub_1CF803A0C(v236, v151);

    v126 = v253;
    goto LABEL_40;
  }

LABEL_66:
  __break(1u);
  return result;
}

double sub_1CF571D24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(a2 + 32) + 16);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a3;
  v13[5] = a2;
  v13[6] = a1;
  v13[7] = a4;
  v14 = *(*v12 + 704);

  v15 = a1;

  v14(sub_1CF574AD4, v13);

  return result;
}

double sub_1CF571E3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a1;

  v13 = a3;

  sub_1CF92DE44("execute(on:continuation:result:with:completion:)", 48, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF574B54, v12);

  return result;
}

void sub_1CF571F44(void *a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v89 = a5;
  v93 = a4;
  v94 = a3;
  v6 = *(*a2 + 624);
  v7 = *(*a2 + 632);
  v8 = *(*a2 + 640);
  v95 = *(*a2 + 616);
  v99 = v95;
  v100 = v6;
  v91 = v8;
  v92 = v6;
  v90 = v7;
  v101 = v7;
  v102 = v8;
  v9 = type metadata accessor for PersistenceTrigger(0, &v99);
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v76 - v10;
  v12 = sub_1CF9E5CF8();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v21 = v96;
  sub_1CF5AD9F8(v20, v18, v19);
  if (!v21)
  {
    v81 = v15;
    v82 = v14;
    v83 = a1;
    v84 = v12;
    v80 = v11;
    v22 = v94;
    v96 = 0;
    if (!v94)
    {
      v51 = v89;
LABEL_12:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v63 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v65 = swift_getAssociatedConformanceWitness();
      v99 = AssociatedTypeWitness;
      v100 = v63;
      v101 = AssociatedConformanceWitness;
      v102 = v65;
      type metadata accessor for ReconciliationID(255, &v99);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v67 = *(TupleTypeMetadata3 + 48);
      v68 = *(TupleTypeMetadata3 + 64);
      v69 = v93;
      v70 = sub_1CF03D760();
      v71 = v80;
      *v80 = v70;
      (*(*(AssociatedTypeWitness - 8) + 16))(&v71[v67], &v69[*(*v69 + 576)], AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v72 = v94;
      *&v71[v68] = v94;
      v73 = v86;
      swift_storeEnumTagMultiPayload();
      v74 = *(*v51 + 312);
      v75 = v72;
      v74(v71);
      (*(v85 + 8))(v71, v73);
      return;
    }

    v23 = v94;
    v24 = fpfs_current_or_default_log();
    v25 = v17;
    sub_1CF9E6128();
    v26 = v22;
    v27 = v93;

    v28 = sub_1CF9E6108();
    v29 = sub_1CF9E72A8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v76 = v30;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v99 = v79;
      *v30 = 136446466;
      v77 = v29;
      v31 = v90;
      v32 = v95;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v33 = sub_1CF9E7F98();
      v35 = v34;

      v36 = sub_1CEFD0DF0(v33, v35, &v99);
      v35, v37, v38, v39, v40, v41, v42, v43;
      v44 = v76;
      *(v76 + 1) = v36;
      *(v44 + 6) = 2112;
      v45 = v44;
      swift_getErrorValue();
      v46 = Error.prettyDescription.getter(v97, v98);
      *(v45 + 14) = v46;
      v47 = v78;
      *v78 = v46;
      _os_log_impl(&dword_1CEFC7000, v28, v77, "ignored item %{public}s materialization failed asynchronously: %@", v45, 0x16u);
      sub_1CEFCCC44(v47, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v47, -1, -1);
      v48 = v79;
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1D386CDC0](v48, -1, -1);
      MEMORY[0x1D386CDC0](v45, -1, -1);

      (*(v87 + 8))(v25, v81);
      v50 = v91;
      v49 = v92;
    }

    else
    {

      (*(v87 + 8))(v25, v81);
      v50 = v91;
      v49 = v92;
      v32 = v95;
      v31 = v90;
    }

    v52 = v83[3];
    v53 = v83[4];
    v54 = __swift_project_boxed_opaque_existential_1(v83, v52);
    v99 = v32;
    v100 = v49;
    v101 = v31;
    v102 = v50;
    type metadata accessor for Materialization.MaterializeIgnoredItem(0, &v99);
    v55 = sub_1CF57488C(v27 + *(*v27 + 576), v27[15], v27[16], v27[17], 0x10000);
    v56 = v82;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v58 = v57;
    (*(v88 + 8))(v56, v84);
    v59 = v58 * 1000000000.0;
    if (COERCE__INT64(fabs(v58 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v60 = v96;
      if (v59 > -9.22337204e18)
      {
        if (v59 < 9.22337204e18)
        {
          v61 = v53;
          v51 = v89;
          sub_1CF5215C0(v55, v59, v54, v52, v61);

          if (v60)
          {
            return;
          }

          v96 = 0;
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1CF572770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v48 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v11 = type metadata accessor for JobLockRule(0, v9, v10, a4);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v43 - v12;
  v49 = type metadata accessor for SnapshotItem(255, v9, v10, v13);
  v14 = sub_1CF9E75D8();
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v43 - v23;
  v25 = *(a2 + 32);
  v26 = *(v8 + 576);
  v27 = v54;
  (*(*v25 + 240))(&v6[v26], 1, v50, v51, v52, v22);
  if (!v27)
  {
    v51 = v24;
    v52 = AssociatedTypeWitness;
    v54 = 0;
    v28 = *(v49 - 8);
    if ((*(v28 + 48))(v16, 1) == 1)
    {
      (*(v44 + 8))(v16, v14);
      return 0;
    }

    else
    {
      v29 = v49;
      v30 = *(v49 + 36);
      v43 = v18;
      v31 = *(v18 + 16);
      v32 = v52;
      v31(v20, &v16[v30], v52);
      (*(v28 + 8))(v16, v29);
      v33 = v51;
      (*(v43 + 32))(v51, v20, v32);
      swift_beginAccess();
      sub_1CEFCCBDC((v6 + 56), v53, &unk_1EC4C1BE0, &unk_1CF9FD400);
      v34 = *(v6 + 15);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v36 = *(TupleTypeMetadata3 + 48);
      v37 = *(TupleTypeMetadata3 + 64);
      v38 = &v6[v26];
      v39 = v45;
      v31(v45, v38, v32);
      v31((v39 + v36), v33, v32);
      v31((v39 + v37), v33, v32);
      v40 = v47;
      swift_storeEnumTagMultiPayload();
      v25 = sub_1CF052B3C(v53, v34, v39, v41);
      (*(v46 + 8))(v39, v40);
      sub_1CEFCCC44(v53, &unk_1EC4C1BE0, &unk_1CF9FD400);
      (*(v43 + 8))(v33, v32);
    }
  }

  return v25;
}

uint64_t sub_1CF572C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v87 = a7;
  v86 = a6;
  v85 = a5;
  v83 = a3;
  v13 = *v8;
  v14 = *(*v8 + 600);
  v15 = v13[76];
  v16 = v13[77];
  v17 = v13[78];
  *&v97 = v14;
  *(&v97 + 1) = v15;
  *&v98 = v16;
  *(&v98 + 1) = v17;
  v76 = type metadata accessor for ReconciliationMutation(0, &v97);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v72 = &v66 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v66 - v19;
  v78 = v14;
  *&v97 = v14;
  *(&v97 + 1) = v15;
  v74 = v15;
  v79 = v16;
  *&v98 = v16;
  *(&v98 + 1) = v17;
  v73 = v17;
  v20 = type metadata accessor for ItemReconciliation(255, &v97);
  v21 = sub_1CF9E75D8();
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  v84 = v20;
  v80 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v71 = a1;
  v27 = v13[72];
  v28 = a8;
  sub_1CF68DDB0(v9 + v27, a4, v87, *(a8 + 8), v23);
  v29 = v77;
  v67 = v27;
  v68 = v9;
  v30 = v78;
  v66 = a4;
  v69 = v28;
  v31 = v80;
  v32 = v84;
  if ((*(v80 + 48))(v23, 1, v84) == 1)
  {
    (*(v29 + 8))(v23, v21);
    v33 = AssociatedTypeWitness;
    v34 = v30;
    v35 = v79;
    v36 = v68;
  }

  else
  {
    (*(v31 + 32))(v26, v23, v32);
    v34 = v30;
    v35 = v79;
    v38 = type metadata accessor for ItemReconciliationHalf(0, v30, v79, v37);
    v39 = v26;
    v40 = &v26[*(v38 + 68)];
    v41 = *(v40 + 1);
    v97 = *v40;
    v98 = v41;
    v42 = *(v40 + 3);
    v99 = *(v40 + 2);
    v100 = v42;
    v43 = v68;
    if (*(&v41 + 1) >> 60 != 11)
    {
      v55 = v38;
      v56 = v71;
      v57 = *(*(v71 + 32) + 16);
      v79 = v39;
      (*(v81 + 16))(v70, v68 + v67, AssociatedTypeWitness);
      sub_1CEFCCBDC(&v97, v96, &unk_1EC4BF260, &unk_1CFA01B60);

      swift_dynamicCast();
      v92 = v94;
      v93 = v95;
      v88 = v97;
      v89 = v98;
      v91 = v100;
      v90 = v99;
      AssociatedTypeWitness = *(v55 + 48);
      v58 = swift_allocObject();
      v59 = v69;
      v58[2] = v87;
      v58[3] = v59;
      v60 = v85;
      v58[4] = v56;
      v58[5] = v60;
      v61 = v83;
      v58[6] = v86;
      v58[7] = v61;
      v58[8] = v43;
      v62 = v31;
      v63 = *(*v57 + 808);
      sub_1CEFCCBDC(&v97, v96, &unk_1EC4BF260, &unk_1CFA01B60);

      v64 = v79;
      v63(&v92, &v88, v79 + AssociatedTypeWitness, 0, sub_1CF574904, v58);

      sub_1CEFCCC44(&v97, &unk_1EC4BF260, &unk_1CFA01B60);
      v96[0] = v88;
      v96[1] = v89;
      v96[2] = v90;
      v96[3] = v91;
      sub_1CEFCCC44(v96, &unk_1EC4BF260, &unk_1CFA01B60);
      return (*(v62 + 8))(v64, v84);
    }

    (*(v31 + 8))(v26, v32);
    v33 = AssociatedTypeWitness;
    v36 = v43;
  }

  *&v97 = v34;
  *(&v97 + 1) = v74;
  *&v98 = v35;
  *(&v98 + 1) = v73;
  v84 = type metadata accessor for JobResult(0, &v97);
  v44 = swift_getAssociatedTypeWitness();
  v45 = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  *&v97 = v45;
  *(&v97 + 1) = v44;
  *&v98 = AssociatedConformanceWitness;
  *(&v98 + 1) = v47;
  type metadata accessor for ReconciliationID(255, &v97);
  type metadata accessor for ReconciliationSideMutation(255, v34, v35, v48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = v72;
  v51 = &v72[*(TupleTypeMetadata2 + 48)];
  (*(v81 + 16))(v72, v36 + v67, v45);
  swift_storeEnumTagMultiPayload();
  *v51 = 4;
  *(v51 + 8) = *(v36 + 120);
  swift_storeEnumTagMultiPayload();
  v52 = v76;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v83, v50);
  (*(v75 + 8))(v50, v52);
  v53 = v87;
  *(&v98 + 1) = v87;
  *&v99 = v69;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v97);
  (*(*(v53 - 8) + 16))(boxed_opaque_existential_0, v66, v53);
  v85(&v97, 0, 0, 0, 0);
  return sub_1CEFCCC44(&v97, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF5735F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v32 = a8;
  v33 = a5;
  v34 = a6;
  v29 = a4;
  v30 = a3;
  v12 = *a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v29 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_1CEFCCBDC(a1, v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = v12[10];
  v23[3] = v12[11];
  v23[4] = v31;
  v23[5] = v12[12];
  v23[6] = v12[13];
  v23[7] = v32;
  sub_1CEFE55D0(v17, v23 + v19, &unk_1EC4BF310, &unk_1CF9FDB30);
  v24 = v34;
  *(v23 + v20) = v33;
  *(v23 + v21) = v24;
  v25 = (v23 + v22);
  v26 = v29;
  *v25 = v30;
  v25[1] = v26;
  *(v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v27 = type metadata accessor for Continuation();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v18, sub_1CF574918, v23, v27, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF5738A8(void *a1, void *a2, uint64_t *a3, void *a4, void (*a5)(uint64_t *, void, void, void, id), uint64_t a6, void (*a7)(char *, uint64_t))
{
  v118 = a7;
  v125 = a6;
  v126 = a5;
  v127 = a2;
  v128 = a4;
  v130 = a1;
  v7 = *(*a3 + 80);
  v8 = *(*a3 + 88);
  v9 = *(*a3 + 96);
  v10 = *a3;
  v122 = a3;
  v11 = *(v10 + 104);
  v132 = v7;
  v133 = v8;
  v134 = v9;
  v135 = v11;
  v107 = type metadata accessor for PersistenceTrigger(0, &v132);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v96 - v14;
  v114 = type metadata accessor for SnapshotItem(255, v7, v9, v15);
  v16 = sub_1CF9E75D8();
  v116 = *(v16 - 8);
  v117 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v96 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v132 = AssociatedTypeWitness;
  v133 = v19;
  v134 = AssociatedConformanceWitness;
  v135 = v21;
  v108 = type metadata accessor for FileItemVersion(255, &v132);
  v111 = sub_1CF9E75D8();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v96 - v22;
  v23 = type metadata accessor for VFSItem(0);
  v119 = *(v23 - 8);
  v120 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v96 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v96 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v96 - v31);
  v132 = v7;
  v133 = v8;
  v129 = v8;
  v134 = v9;
  v135 = v11;
  v124 = v11;
  v123 = type metadata accessor for ReconciliationMutation(0, &v132);
  v131 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v34 = &v96 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v96 - v36);
  sub_1CEFCCBDC(v127, &v96 - v36, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v127 = *v37;
    v132 = v7;
    v133 = v129;
    v134 = v9;
    v135 = v124;
    v121 = type metadata accessor for JobResult(0, &v132);
    v38 = swift_getAssociatedTypeWitness();
    v39 = swift_getAssociatedTypeWitness();
    v40 = swift_getAssociatedConformanceWitness();
    v41 = swift_getAssociatedConformanceWitness();
    v132 = v38;
    v133 = v39;
    v134 = v40;
    v135 = v41;
    type metadata accessor for ReconciliationID(255, &v132);
    type metadata accessor for ReconciliationSideMutation(255, v7, v9, v42);
    v43 = &v34[*(swift_getTupleTypeMetadata2() + 48)];
    v44 = v128;
    (*(*(v38 - 8) + 16))(v34, v128 + *(*v128 + 576), v38);
    swift_storeEnumTagMultiPayload();
    *v43 = 4;
    *(v43 + 8) = *(v44 + 15);
    swift_storeEnumTagMultiPayload();
    v45 = v123;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v122, v34);
    (*(v131 + 8))(v34, v45);
    sub_1CF1A91AC(v130, &v132);
    v46 = v127;
    v47 = v127;
    v126(&v132, 0, 0, 0, v46);

    v48 = &unk_1EC4C1B30;
    v49 = &qword_1CFA05300;
    v50 = &v132;
  }

  else
  {
    v127 = v7;
    v104 = v34;
    v51 = v129;
    sub_1CEFE55D0(v37, v32, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v32, v29, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v52 = v32;
    if ((*(v119 + 48))(v29, 1, v120) == 1)
    {
      sub_1CEFCCC44(v29, &unk_1EC4BEC00, &unk_1CF9FCB60);
      sub_1CF1A91AC(v130, &v132);
      v53 = v128;
      v54 = *(*v128 + 576);
      v55 = v109;
      (*(*(v108 - 8) + 56))(v109, 1, 1);
      v56 = v127;
      type metadata accessor for FileTreeError(0, v127, v9, v57);
      swift_getWitnessTable();
      v58 = swift_allocError();
      sub_1CF72C4D8(v53 + v54, v55, 0, v56, v9, v59);
      v110[1](v55, v111);
      v126(&v132, 0, 0, 0, v58);

      sub_1CEFCCC44(&v132, &unk_1EC4C1B30, &qword_1CFA05300);
      v50 = v52;
      v48 = &unk_1EC4BEC00;
      v49 = &unk_1CF9FCB60;
    }

    else
    {
      v108 = v32;
      sub_1CF5634F4(v29, v121);
      v60 = v127;
      v132 = v127;
      v133 = v51;
      v134 = v9;
      v135 = v124;
      v119 = type metadata accessor for JobResult(0, &v132);
      v61 = swift_getAssociatedTypeWitness();
      v62 = swift_getAssociatedTypeWitness();
      v63 = swift_getAssociatedConformanceWitness();
      v64 = swift_getAssociatedConformanceWitness();
      v132 = v61;
      v133 = v62;
      v134 = v63;
      v135 = v64;
      v65 = type metadata accessor for ReconciliationID(255, &v132);
      v67 = type metadata accessor for ReconciliationSideMutation(255, v60, v9, v66);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v68 = v104;
      v69 = &v104[*(TupleTypeMetadata2 + 48)];
      v70 = v128;
      v71 = *(*v128 + 576);
      v72 = *(v61 - 8);
      v73 = *(v72 + 16);
      v111 = v61;
      v110 = v73;
      v109 = (v72 + 16);
      (v73)(v104, v128 + v71, v61);
      v100 = v65;
      swift_storeEnumTagMultiPayload();
      *v69 = 0;
      *(v69 + 1) = 0;
      *(v69 + 2) = 0;
      *(v69 + 3) = 0xB000000000000000;
      *(v69 + 2) = 0u;
      *(v69 + 3) = 0u;
      *(v69 + 32) = 257;
      v99 = v67;
      swift_storeEnumTagMultiPayload();
      v74 = v123;
      swift_storeEnumTagMultiPayload();
      v75 = v122;
      sub_1CF06EB44(v122, v68);
      v76 = *(v131 + 8);
      v131 += 8;
      v101 = v76;
      v76(v68, v74);
      v77 = v130[3];
      v102 = v130[4];
      v103 = __swift_project_boxed_opaque_existential_1(v130, v77);
      sub_1CF574A04(v121, v112);
      v78 = v113;
      swift_dynamicCast();
      v79 = v115;
      v80 = v60;
      v81 = v70;
      sub_1CF06B77C(v78, v80, v9, v115);
      (*(*(v114 - 8) + 56))(v79, 0, 1);
      v82 = v70[15];
      v83 = v70[16];
      v84 = v70 + v71;
      v95 = v70[17];
      v85 = v118;
      v86 = v136;
      sub_1CF611904(v79, v84, 5u, 0, 0, v118, v82, v83, v95, v75, v103, v77, v102);
      v136 = v86;
      (*(v116 + 8))(v79, v117);
      if (!v86)
      {
        v87 = v68 + *(TupleTypeMetadata2 + 48);
        v97 = v71;
        (v110)(v68, v81 + v71, v111);
        swift_storeEnumTagMultiPayload();
        *v87 = 1284;
        *(v87 + 8) = *(v81 + 15);
        swift_storeEnumTagMultiPayload();
        v88 = v123;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v75, v68);
        v101(v68, v88);
        type metadata accessor for ReconciliationSideMutation(255, v129, v124, v89);
        v90 = v68 + *(swift_getTupleTypeMetadata2() + 48);
        (v110)(v68, v81 + v97, v111);
        swift_storeEnumTagMultiPayload();
        *v90 = 8;
        *(v90 + 8) = *(v81 + 15);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v75, v68);
        v101(v68, v88);
        v91 = *(swift_getTupleTypeMetadata2() + 48);
        v92 = v105;
        (v110)(v105, v81 + v97, v111);
        swift_storeEnumTagMultiPayload();
        v92[v91] = 1;
        v93 = v107;
        swift_storeEnumTagMultiPayload();
        (*(*v85 + 312))(v92);
        (*(v106 + 8))(v92, v93);
        sub_1CF1A91AC(v130, &v132);
        v126(&v132, 0, 0, 0, 0);
        sub_1CEFCCC44(&v132, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      sub_1CF574A68(v121);
      v48 = &unk_1EC4BEC00;
      v49 = &unk_1CF9FCB60;
      v50 = v108;
    }
  }

  return sub_1CEFCCC44(v50, v48, v49);
}

uint64_t sub_1CF57484C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1CF572770(a1, a2, a3, a4, *(a5 + 8));
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1CF57488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_1CF052464(a1, a2, a3, a4);
  sub_1CF052548(a5);
  return v10;
}

uint64_t sub_1CF574918(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5738A8(a1, (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF574A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF574A68(uint64_t a1)
{
  v2 = type metadata accessor for VFSItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_17Tm(void (*a1)(void, __n128), void (*a2)(void))
{

  (a1)(*(v2 + 40));
  a2(*(v2 + 48));

  return swift_deallocObject();
}

double sub_1CF574B84(unint64_t a1)
{
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:

      break;
    default:
      return result;
  }

  return result;
}

double sub_1CF574BC8(unint64_t a1)
{
  swift_getAssociatedTypeWitness();
  v3 = *(sub_1CF9E75D8() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v10 = *(v1 + v5);
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF56DBA0(a1, v6, v7, v8, v9, v1 + v4, v10, v11);
}

void sub_1CF574C9C(void *a1)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v4 = *(sub_1CF9E8238() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(*(v3 - 8) + 80) + v8 + 16) & ~*(*(v3 - 8) + 80);
  v10 = (*(*(v3 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF56DFA0(a1, v1 + v5, *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8), (v1 + v9), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_14Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1CF574EBC()
{
  result = qword_1EDEAB460;
  if (!qword_1EDEAB460)
  {
    sub_1CF9E5248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB460);
  }

  return result;
}

uint64_t sub_1CF574F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1CF052464(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v8;
}

void sub_1CF574FF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setResourceIntensive_];
  [v3 setResources_];
  [v3 setRequiresExternalPower_];
  [v3 setScheduleAfter_];
  [v3 setTrySchedulingBefore_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBB818 = v4;
}

uint64_t sub_1CF575118()
{
  if (*v0)
  {
    return 0x6573616870;
  }

  else
  {
    return 0x4449776F72;
  }
}

void sub_1CF575144(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v12 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v12 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x6573616870 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF575218(uint64_t a1)
{
  v2 = sub_1CF597590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF575254(uint64_t a1)
{
  v2 = sub_1CF597590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF575290(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF5752E0(a1);
  return v2;
}

uint64_t sub_1CF5752E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C19A8, &unk_1CFA0C188);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF597590();
  sub_1CF9E8298();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MaintenanceContinuation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v12[0]) = 0;
    *(v1 + 16) = sub_1CF9E7CD8();
    *(v1 + 24) = v8 & 1;
    LOBYTE(v12[0]) = 1;
    *(v1 + 32) = sub_1CF9E7CD8();
    *(v1 + 40) = v10 & 1;
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t sub_1CF5754EC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C19B8, &unk_1CFA0C198);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF597590();
  sub_1CF9E82A8();
  v11 = *(v2 + 24);
  v20 = *(v2 + 16);
  v21 = v11;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
  sub_1CF1E13A4();
  v12 = v19;
  sub_1CF9E7F08();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v13 = *(v2 + 32);
  v14 = *(v2 + 40);
  v19 = v6;
  v20 = v13;
  v21 = v14;
  v23 = 1;
  sub_1CF9E7F08();
  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  sub_1CF1D6D18();
  v15 = v19;
  sub_1CF9E82A8();
  (*(v18 + 8))(v15, v4);
  (*(v8 + 8))(v10, v7);
  return __swift_destroy_boxed_opaque_existential_1(&v20);
}

uint64_t sub_1CF5757B8()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v2 = sub_1CF9E7F98();
    v4 = v3;
    MEMORY[0x1D3868CC0](v2);
    v4, v5, v6, v7, v8, v9, v10, v11;
    MEMORY[0x1D3868CC0](0x3A4449776F72, 0xE600000000000000);
    0xE600000000000000, v12, v13, v14, v15, v16, v17, v18;
    result = 0;
    if (*(v0 + 40))
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((*(v0 + 40) & 1) == 0)
  {
LABEL_5:
    v19 = sub_1CF9E7F98();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x3A6573616870, 0xE600000000000000);
    0xE600000000000000, v29, v30, v31, v32, v33, v34, v35;
    return 0;
  }

  return result;
}

uint64_t sub_1CF575970(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF1A91AC(a1, v4);
  sub_1CF5752E0(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF575A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v135 = a8;
  v136 = a4;
  v137 = a7;
  v13 = *(*v8 + 608);
  v14 = *(*v8 + 616);
  v15 = *(*v8 + 624);
  v142 = *(*v8 + 600);
  v12 = v142;
  v143 = v13;
  v131 = v15;
  v132 = v13;
  v144 = v14;
  v145 = v15;
  v16 = type metadata accessor for PersistenceTrigger(0, &v142);
  v130 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v118[-v17];
  v133 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v134 = *(AssociatedTypeWitness - 8);
  v128 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v138 = &v118[-v20];
  v21 = *(a1 + 32);
  if (*(v21 + 33) != 1 || (v22 = *(**(v21 + 16) + 848), v23 = , v24 = v22(v23), , (v24 & 1) != 0))
  {
    v25 = v137;
    v145 = v137;
    v146 = v135;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v142);
    (*(*(v25 - 8) + 16))(v26, v136, v25);
    a5(&v142, 0, 0xD00000000000001ALL, 0x80000001CFA53B30, 0);
    return sub_1CEFCCC44(&v142, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v120 = a6;
  v121 = a5;
  v28 = *(**(a1 + 16) + 288);
  v129 = a1;
  v29 = v28(v136, v137, *(v135 + 8));
  v119 = v30;
  v142 = v29;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if (sub_1CF9E7128())
  {
    v29, v31, v32, v33, v34, v35, v36, v37;
    v38 = v136;
    if ((v119 & 1) == 0)
    {
      v39 = v137;
      v145 = v137;
      v146 = v135;
      v40 = __swift_allocate_boxed_opaque_existential_0(&v142);
      (*(*(v39 - 8) + 16))(v40, v38, v39);
      v121(&v142, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v142, &unk_1EC4C1B30, &qword_1CFA05300);
    }

LABEL_23:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Maintenance.swift", 101, 2, 104);
  }

  v127 = v14;

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_18;
  }

  v48 = 0;
  v49 = (*v129 + 312);
  v125 = *v49;
  v124 = v49;
  v126 = (v134 + 16);
  v123 = (v134 + 32);
  v122 = (v130 + 8);
  while (1)
  {
    v50 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v50)
    {
      (*(v134 + 16))(v138, v29 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v48, AssociatedTypeWitness);
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      goto LABEL_12;
    }

    v55 = sub_1CF9E7998();
    if (v128 != 8)
    {
      __break(1u);
      goto LABEL_23;
    }

    v142 = v55;
    (*v126)(v138, &v142, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

LABEL_12:
    v130 = v51;
    (*v123)(v18, v138, AssociatedTypeWitness);
    v52 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v54 = swift_getAssociatedConformanceWitness();
    v142 = AssociatedTypeWitness;
    v143 = v52;
    v144 = AssociatedConformanceWitness;
    v145 = v54;
    type metadata accessor for ReconciliationID(0, &v142);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v125(v18);
    (*v122)(v18, v16);
    ++v48;
    if (v130 == sub_1CF9E6DF8())
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_18:
  v29, v41, v42, v43, v44, v45, v46, v47;
  v56 = v137;
  v145 = v137;
  v146 = v135;
  if (v119)
  {
    v57 = __swift_allocate_boxed_opaque_existential_0(&v142);
    (*(*(v56 - 8) + 16))(v57, v136, v56);
    type metadata accessor for MaintenanceContinuation();
    v58 = swift_allocObject();
    *(v58 + 16) = 0;
    *(v58 + 24) = 1;
    *(v58 + 32) = 0;
    *(v58 + 40) = 1;
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_1CF9E7948();
    v141, v59, v60, v61, v62, v63, v64, v65;
    v140 = 0x2064657461647075;
    v141 = 0xE800000000000000;
    v66 = sub_1CF9E6DF8();
    v29, v67, v68, v69, v70, v71, v72, v73;
    v139 = v66;
    v74 = sub_1CF9E7F98();
    v76 = v75;
    MEMORY[0x1D3868CC0](v74);
    v76, v77, v78, v79, v80, v81, v82, v83;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v84 = v141;
    v121(&v142, v58, v140, v141, 0);
  }

  else
  {
    v92 = __swift_allocate_boxed_opaque_existential_0(&v142);
    (*(*(v56 - 8) + 16))(v92, v136, v56);
    v140 = 0;
    v141 = 0xE000000000000000;
    sub_1CF9E7948();
    v141, v93, v94, v95, v96, v97, v98, v99;
    v140 = 0x2064657461647075;
    v141 = 0xE800000000000000;
    v100 = sub_1CF9E6DF8();
    v29, v101, v102, v103, v104, v105, v106, v107;
    v139 = v100;
    v108 = sub_1CF9E7F98();
    v110 = v109;
    MEMORY[0x1D3868CC0](v108);
    v110, v111, v112, v113, v114, v115, v116, v117;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v84 = v141;
    v121(&v142, 0, v140, v141, 0);
  }

  v84, v85, v86, v87, v88, v89, v90, v91;
  return sub_1CEFCCC44(&v142, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF57639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v135 = a6;
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v147 = *(*v8 + 600);
  v14 = v147;
  v148 = v15;
  v140 = v15;
  v149 = v16;
  v150 = v17;
  v138 = v17;
  v137 = type metadata accessor for PersistenceTrigger(0, &v147);
  v143 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v122 - v18;
  v139 = v16;
  v141 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = *(AssociatedTypeWitness - 8);
  v127 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v122 - v20;
  v22 = *(**(*(a1 + 32) + 16) + 848);

  LOBYTE(v16) = v22(v23);

  if (v16)
  {
    v150 = a7;
    v151 = a8;
    v24 = __swift_allocate_boxed_opaque_existential_0(&v147);
    (*(*(a7 - 8) + 16))(v24, a4, a7);
    a5(&v147, 0, 0xD000000000000017, 0x80000001CFA53AF0, 0);
    return sub_1CEFCCC44(&v147, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v126 = a5;
  v25 = a4;
  v26 = (*(**(a1 + 24) + 544))(a4, a7, *(a8 + 8));
  v27 = a1;
  v123 = v28;
  v124 = a8;
  v125 = v25;
  v147 = v26;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if (sub_1CF9E7128())
  {
    v26, v29, v30, v31, v32, v33, v34, v35;
    v36 = v126;
    if ((v123 & 1) == 0)
    {
      v150 = a7;
      v151 = v124;
      v37 = __swift_allocate_boxed_opaque_existential_0(&v147);
      (*(*(a7 - 8) + 16))(v37, v125, a7);
      v36(&v147, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v147, &unk_1EC4C1B30, &qword_1CFA05300);
    }

LABEL_22:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/Maintenance.swift", 101, 2, 141);
  }

  v122 = a7;

  if (!sub_1CF9E6DF8())
  {
    goto LABEL_16;
  }

  v45 = 0;
  v46 = (*a1 + 312);
  v132 = *v46;
  v131 = v46;
  v134 = (v142 + 16);
  v130 = (v142 + 32);
  v128 = (v143 + 8);
  v133 = v26;
  v129 = v21;
  while (1)
  {
    v47 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v47)
    {
      (*(v142 + 16))(v21, v26 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v45, AssociatedTypeWitness);
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      goto LABEL_10;
    }

    v56 = sub_1CF9E7998();
    if (v127 != 8)
    {
      __break(1u);
      goto LABEL_22;
    }

    v147 = v56;
    (*v134)(v21, &v147, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

LABEL_10:
    v143 = v48;
    v49 = v136;
    (*v130)(v136, v21, AssociatedTypeWitness);
    v50 = swift_getAssociatedTypeWitness();
    v51 = v27;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v53 = swift_getAssociatedConformanceWitness();
    v147 = AssociatedTypeWitness;
    v148 = v50;
    v149 = AssociatedConformanceWitness;
    v150 = v53;
    v27 = v51;
    type metadata accessor for ReconciliationID(0, &v147);
    swift_storeEnumTagMultiPayload();
    v54 = v137;
    swift_storeEnumTagMultiPayload();
    v132(v49);
    v55 = v54;
    v21 = v129;
    v26 = v133;
    (*v128)(v49, v55);
    ++v45;
    if (v143 == sub_1CF9E6DF8())
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  v26, v38, v39, v40, v41, v42, v43, v44;
  v57 = v122;
  v150 = v122;
  v151 = v124;
  if (v123)
  {
    v58 = __swift_allocate_boxed_opaque_existential_0(&v147);
    (*(*(v57 - 8) + 16))(v58, v125, v57);
    type metadata accessor for MaintenanceContinuation();
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = 1;
    *(v59 + 32) = 0;
    *(v59 + 40) = 1;
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1CF9E7948();
    v146, v60, v61, v62, v63, v64, v65, v66;
    v145 = 0x2064657461647075;
    v146 = 0xE800000000000000;
    v67 = sub_1CF9E6DF8();
    v26, v68, v69, v70, v71, v72, v73, v74;
    v144 = v67;
    v75 = sub_1CF9E7F98();
    v77 = v76;
    MEMORY[0x1D3868CC0](v75);
    v77, v78, v79, v80, v81, v82, v83, v84;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v85 = v146;
    v126(&v147, v59, v145, v146, 0);

    v93 = v85;
  }

  else
  {
    v94 = __swift_allocate_boxed_opaque_existential_0(&v147);
    (*(*(v57 - 8) + 16))(v94, v125, v57);
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_1CF9E7948();
    v146, v95, v96, v97, v98, v99, v100, v101;
    v145 = 0x2064657461647075;
    v146 = 0xE800000000000000;
    v102 = sub_1CF9E6DF8();
    v26, v103, v104, v105, v106, v107, v108, v109;
    v144 = v102;
    v110 = sub_1CF9E7F98();
    v112 = v111;
    MEMORY[0x1D3868CC0](v110);
    v112, v113, v114, v115, v116, v117, v118, v119;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v120 = v146;
    v126(&v147, 0, v145, v146, 0);
    v93 = v120;
  }

  v93, v86, v87, v88, v89, v90, v91, v92;
  return sub_1CEFCCC44(&v147, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF576D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125 = a5;
  v132 = a3;
  v16 = *(*v8 + 608);
  v17 = *(*v8 + 616);
  v18 = *(*v8 + 624);
  v145 = *(*v8 + 600);
  v15 = v145;
  v146 = v16;
  v136 = v16;
  v147 = v17;
  v148 = v18;
  v134 = v18;
  v131 = type metadata accessor for ReconciliationMutation(0, &v145);
  v19 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v118 - v20;
  v135 = v17;
  v137 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v138 = *(AssociatedTypeWitness - 8);
  v123 = *(v138 + 64);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v118 - v22;
  v124 = a6;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v24 = swift_dynamicCastClass()) != 0) && *(v24 + 24) != 1)
  {
    v25 = v19;
    v26 = *(v24 + 16);
  }

  else
  {
    v25 = v19;
    v26 = 0;
  }

  v27 = (*(**(a1 + 16) + 504))(v26, a4, a7, *(a8 + 8), v21);
  v119 = v28;
  v118 = v29;
  v120 = a8;
  v121 = a4;
  v122 = a7;

  v30 = AssociatedTypeWitness;
  if (sub_1CF9E6DF8())
  {
    v145 = v137;
    v146 = v136;
    v147 = v135;
    v148 = v134;
    v126 = type metadata accessor for JobResult(0, &v145);
    v38 = 0;
    v129 = (v138 + 16);
    v128 = (v138 + 32);
    v127 = (v25 + 8);
    v39 = v135;
    do
    {
      v40 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v40)
      {
        (*(v138 + 16))(v23, v27 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v38, v30);
        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v123 != 8)
        {
          __break(1u);
          return result;
        }

        v145 = result;
        (*v129)(v23, &v145, v30);
        swift_unknownObjectRelease();
        v41 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v139 = v41;
      v42 = swift_getAssociatedTypeWitness();
      v140 = v38;
      v43 = v137;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v45 = swift_getAssociatedConformanceWitness();
      v145 = AssociatedTypeWitness;
      v146 = v42;
      v147 = AssociatedConformanceWitness;
      v148 = v45;
      type metadata accessor for ReconciliationID(255, &v145);
      type metadata accessor for ReconciliationSideMutation(255, v43, v39, v46);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v48 = v130;
      v49 = &v130[*(TupleTypeMetadata2 + 48)];
      (*v128)(v130, v23, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      *v49 = 1028;
      *(v49 + 8) = *(v133 + 120);
      v30 = AssociatedTypeWitness;
      swift_storeEnumTagMultiPayload();
      v50 = v131;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v132, v48);
      v51 = v50;
      v52 = v140;
      (*v127)(v48, v51);
      v38 = v52 + 1;
    }

    while (v139 != sub_1CF9E6DF8());
  }

  v27, v31, v32, v33, v34, v35, v36, v37;
  v54 = v122;
  v148 = v122;
  v149 = v120;
  if (v119)
  {
    v55 = __swift_allocate_boxed_opaque_existential_0(&v145);
    (*(*(v54 - 8) + 16))(v55, v121, v54);
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1CF9E7948();
    v144, v56, v57, v58, v59, v60, v61, v62;
    v143 = 0x2064657461647075;
    v144 = 0xE800000000000000;
    v63 = sub_1CF9E6DF8();
    v27, v64, v65, v66, v67, v68, v69, v70;
    v142 = v63;
    v71 = sub_1CF9E7F98();
    v73 = v72;
    MEMORY[0x1D3868CC0](v71);
    v73, v74, v75, v76, v77, v78, v79, v80;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v81 = v144;
    v125(&v145, 0, v143, v144, 0);
    v89 = v81;
  }

  else
  {
    v90 = __swift_allocate_boxed_opaque_existential_0(&v145);
    (*(*(v54 - 8) + 16))(v90, v121, v54);
    type metadata accessor for MaintenanceContinuation();
    v91 = swift_allocObject();
    *(v91 + 16) = v118;
    *(v91 + 24) = 0;
    *(v91 + 32) = 0;
    *(v91 + 40) = 1;
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1CF9E7948();
    v144, v92, v93, v94, v95, v96, v97, v98;
    v143 = 0x2064657461647075;
    v144 = 0xE800000000000000;
    v99 = sub_1CF9E6DF8();
    v27, v100, v101, v102, v103, v104, v105, v106;
    v142 = v99;
    v107 = sub_1CF9E7F98();
    v109 = v108;
    MEMORY[0x1D3868CC0](v107);
    v109, v110, v111, v112, v113, v114, v115, v116;
    MEMORY[0x1D3868CC0](0x736D65746920, 0xE600000000000000);
    v117 = v144;
    v125(&v145, v91, v143, v144, 0);

    v89 = v117;
  }

  v89, v82, v83, v84, v85, v86, v87, v88;
  return sub_1CEFCCC44(&v145, &unk_1EC4C1B30, &qword_1CFA05300);
}

double sub_1CF5775F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = swift_allocObject();
  v15 = v13[75];
  *(v14 + 16) = sub_1CF9E6DA8();
  v16 = *(*(a1 + 32) + 16);
  v23 = *(*v8 + 576);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v13[76];
  v17[4] = a7;
  v17[5] = v13[77];
  v17[6] = v13[78];
  v17[7] = a8;
  v17[8] = v14;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a1;
  v18[5] = a5;
  v18[6] = a6;
  v18[7] = v14;
  v18[8] = a3;
  v18[9] = v8;
  v19 = *(*v16 + 144);
  swift_retain_n();

  v19(v8 + v23, a2, 0, 0, sub_1CF597504, v17, sub_1CF597518, v18);

  return result;
}

uint64_t sub_1CF577808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1CF9E6E58();

  swift_getWitnessTable();
  sub_1CF9E6E08();
  swift_endAccess();
  return 0;
}

double sub_1CF5778B0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a9;
  *(v17 + 24) = a10;
  *(v17 + 32) = a1;
  a2 &= 1u;
  *(v17 + 40) = a2;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a4;
  *(v17 + 80) = a5;
  *(v17 + 88) = a3;
  swift_retain_n();
  sub_1CF2B1868(a1, a2);
  v18 = type metadata accessor for Continuation();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559418, v16, sub_1CF597550, v17, v18, MEMORY[0x1E69E6158]);

  return result;
}

void sub_1CF577A30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(__int128 *, uint64_t, void, void, uint64_t), uint64_t a8, uint64_t a9)
{
  v73 = a8;
  v74 = a7;
  v76 = a6;
  v75 = a2;
  v13 = *a5;
  v78 = sub_1CF9E5CF8();
  v98 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v13[12];
  v16 = v13[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v81 = &v69 - v17;
  *&v18 = v16;
  v85 = v13[11];
  *(&v18 + 1) = v85;
  v19 = v13;
  v20 = v15;
  v91 = a5;
  *&v21 = v15;
  v84 = v19[13];
  *(&v21 + 1) = v84;
  v92 = v21;
  v104 = v18;
  v105 = v21;
  v93 = v18;
  v83 = type metadata accessor for ReconciliationMutation(0, &v104);
  v22 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v69 - v23;
  v24 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v69 - v30;
  if (a3)
  {
    sub_1CF1A91AC(a1, &v104);
    v74(&v104, 0, 0, 0, v75);
    sub_1CEFCCC44(&v104, &unk_1EC4C1B30, &qword_1CFA05300);
    return;
  }

  v70 = v29;
  swift_beginAccess();
  v31 = *(a4 + 16);

  v32 = sub_1CF9E6DF8();
  v40 = v87;
  if (!v32)
  {
LABEL_21:
    v31, v33, v34, v35, v36, v37, v38, v39;
    sub_1CF1A91AC(a1, &v104);
    v74(&v104, v75, 0, 0, 0);
    sub_1CEFCCC44(&v104, &unk_1EC4C1B30, &qword_1CFA05300);
    v67 = *(**(*(a9 + 32) + 16) + 920);

    v67(v68);

    return;
  }

  v41 = 0;
  v42 = *(v20 + 144);
  v102 = v20 + 144;
  v103 = (v24 + 16);
  v100 = (v24 + 32);
  v101 = v42;
  v89 = v20 + 64;
  v79 = (v22 + 8);
  v72 = v98 + 1;
  v71 = (v96 + 8);
  v98 = (v24 + 8);
  v88 = a1;
  v97 = v20;
  v80 = v24;
  v95 = v27;
  v99 = v31;
  while (1)
  {
    v45 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v45)
    {
      (*(v24 + 16))(v40, v31 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v41, v16);
      v31 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v66 = sub_1CF9E7998();
      if (v70 != 8)
      {
        goto LABEL_25;
      }

      *&v104 = v66;
      (*v103)(v40, &v104, v16);
      swift_unknownObjectRelease();
      v31 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    (*v100)(v27, v40, v16);
    v46 = v101(v16, v20);
    if (v47 >> 62 != 2 || v46 || v47 != 0x8000000000000000)
    {
      sub_1CF07638C(v46, v47);
      goto LABEL_6;
    }

    v104 = v93;
    v105 = v92;
    v96 = type metadata accessor for JobResult(0, &v104);
    v94 = v31;
    v48 = swift_getAssociatedTypeWitness();
    v49 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v51 = swift_getAssociatedConformanceWitness();
    *&v104 = v49;
    *(&v104 + 1) = v48;
    *&v105 = AssociatedConformanceWitness;
    *(&v105 + 1) = v51;
    type metadata accessor for ReconciliationID(255, &v104);
    type metadata accessor for ReconciliationSideMutation(255, v16, v20, v52);
    v31 = v94;
    v53 = *(swift_getTupleTypeMetadata2() + 48);
    v54 = v82;
    v86 = *(v97 + 64);
    v86(v16, v97);
    a1 = v88;
    swift_storeEnumTagMultiPayload();
    *(v54 + v53) = 1;
    v24 = v80;
    v20 = v97;
    swift_storeEnumTagMultiPayload();
    v55 = v83;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v91, v54);
    v56 = v54;
    v27 = v95;
    v57 = v55;
    v40 = v87;
    (*v79)(v56, v57);
    sub_1CF06D940(v16, v20, &v104);
    if (v104 != 1)
    {
      goto LABEL_6;
    }

    v104 = v93;
    v105 = v92;
    type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy(0, &v104);
    v86(v16, v20);
    v58 = v77;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v60 = v59;
    (*v72)(v58, v78);
    v61 = v60 * 1000000000.0;
    if (COERCE__INT64(fabs(v60 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v61 <= -9.22337204e18)
    {
      goto LABEL_23;
    }

    if (v61 >= 9.22337204e18)
    {
      goto LABEL_24;
    }

    v62 = v61;
    v63 = *(v76 + 136);
    swift_allocObject();
    v64 = v81;
    v65 = sub_1CF052464(v81, 0, v62, v63);
    (*v71)(v64, AssociatedTypeWitness);
    sub_1CF803A0C(v91, v65);
    v20 = v97;

    a1 = v88;
LABEL_6:
    (*v98)(v27, v16);
    v43 = v99;
    ++v41;
    v44 = v31 == sub_1CF9E6DF8();
    v31 = v43;
    if (v44)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1CF57842C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v142 = a5;
  v134 = a3;
  v156 = a1;
  v14 = *(*v8 + 600);
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v166 = v14;
  v167 = v15;
  v168 = v16;
  v169 = v17;
  v133 = type metadata accessor for ReconciliationMutation(0, &v166);
  v160 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v113 - v18;
  v20 = type metadata accessor for SnapshotItem(0, v14, v16, v19);
  v139 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v143 = &v113 - v21;
  v150 = v22;
  v144 = sub_1CF9E75D8();
  v138 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v113 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v162 = sub_1CF9E75D8();
  v129 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v148 = &v113 - v27;
  v158 = AssociatedTypeWitness;
  v128 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v113 - v29;
  v163 = v14;
  v166 = v14;
  v167 = v15;
  v132 = v15;
  v164 = v16;
  v168 = v16;
  v169 = v17;
  v131 = v17;
  v31 = type metadata accessor for ItemReconciliation(0, &v166);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v151 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v33;
  MEMORY[0x1EEE9AC00](v34);
  v165 = &v113 - v35;
  if (!a2)
  {
    v36 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
LABEL_5:
    v38 = 1;
    goto LABEL_6;
  }

  v37 = v36;
  v36 = *(v36 + 16);
  v38 = *(v37 + 24);
LABEL_6:
  v39 = a6;
  v40 = *(a8 + 8);
  v41 = (*(**(v156 + 16) + 184))(v36, v38, a4, a7, v40);
  v42 = a8;
  v45 = v41;
  v119 = v46;
  v141 = v40;
  v115 = v47;
  v155 = 0;
  v120 = v42;
  v145 = a4;
  v146 = a7;
  v121 = v39;
  v48 = sub_1CF9E6DF8();
  v56 = v144;
  v57 = v148;
  v58 = v151;
  if (!v48)
  {
LABEL_29:
    v45, v49, v50, v51, v52, v53, v54, v55;
    if (v119)
    {
      v106 = 0;
    }

    else
    {
      type metadata accessor for MaintenanceContinuation();
      v106 = swift_allocObject();
      *(v106 + 16) = v115;
      *(v106 + 24) = 0;
      *(v106 + 32) = 0;
      *(v106 + 40) = 1;
    }

    v107 = v142;
    v108 = v146;
    v109 = v145;
    v169 = v146;
    v170 = v120;
    v110 = __swift_allocate_boxed_opaque_existential_0(&v166);
    (*(*(v108 - 8) + 16))(v110, v109, v108);

    v107(&v166, v106, 0, 0, 0);

    return sub_1CEFCCC44(&v166, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v59 = 0;
  v161 = (v32 + 16);
  v159 = (v32 + 32);
  v154 = (v129 + 16);
  v153 = (v128 + 48);
  v140 = (v128 + 32);
  v137 = (v138 + 2);
  v136 = (v139 + 6);
  v125 = (v139 + 4);
  v123 = (v128 + 16);
  v122 = (v160 + 1);
  v124 = v139 + 1;
  v135 = v138 + 1;
  v139 = (v128 + 8);
  v160 = (v32 + 8);
  v138 = (v129 + 8);
  v152 = v32;
  v149 = v30;
  while (1)
  {
    v60 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v60)
    {
      result = (*(v32 + 16))(v165, v45 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v59, v31);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v126 != 8)
      {
        goto LABEL_36;
      }

      v166 = result;
      (*v161)(v165, &v166, v31);
      result = swift_unknownObjectRelease();
    }

    v62 = v59 + 1;
    v63 = v162;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    (*v159)(v58, v165, v31);
    if ((v58[*(type metadata accessor for ItemReconciliationHalf(0, v163, v164, v64) + 36)] & 0x10) != 0)
    {
      (*v154)(v57, v58, v63);
      v65 = v63;
      v66 = v158;
      if ((*v153)(v57, 1, v158) == 1)
      {
        (*v160)(v58, v31);
        (*v138)(v57, v65);
      }

      else
      {
        v67 = v149;
        (*v140)(v149, v57, v66);
        v68 = v157;
        v69 = v155;
        (*(**(v156 + 32) + 240))(v67, 1, v145, v146, v141);
        if (v69)
        {
          v45, v70, v71, v72, v73, v74, v75, v76;
          (*v139)(v67, v158);
          (*v160)(v151, v31);
          v111 = v146;
          v112 = v145;
          v169 = v146;
          v170 = v120;
          v43 = __swift_allocate_boxed_opaque_existential_0(&v166);
          (*(*(v111 - 8) + 16))(v43, v112, v111);
          v44 = v69;
          v142(&v166, 0, 0, 0, v69);

          return sub_1CEFCCC44(&v166, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        v155 = 0;
        v77 = v147;
        (*v137)(v147, v68, v56);
        v78 = v150;
        if ((*v136)(v77, 1, v150) == 1)
        {
          v79 = v77;
          v80 = *v135;
          (*v135)(v157, v56);
          (*v139)(v67, v158);
          v58 = v151;
          (*v160)(v151, v31);
          v81 = v79;
          v57 = v148;
          v80(v81, v56);
          v32 = v152;
          goto LABEL_9;
        }

        v82 = v143;
        (*v125)(v143, v77, v78);
        v83 = &v82[*(v78 + 48)];
        if ((v83[*(type metadata accessor for ItemMetadata(0) + 64)] & 1) == 0)
        {
          v84 = v163;
          v166 = v163;
          v167 = v132;
          v168 = v164;
          v169 = v131;
          v129 = type metadata accessor for JobResult(0, &v166);
          v85 = swift_getAssociatedTypeWitness();
          v86 = v158;
          v87 = v84;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v89 = swift_getAssociatedConformanceWitness();
          v166 = v86;
          v167 = v85;
          v168 = AssociatedConformanceWitness;
          v169 = v89;
          v90 = type metadata accessor for ReconciliationID(255, &v166);
          v92 = type metadata accessor for ReconciliationSideMutation(255, v87, v164, v91);
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v93 = *(TupleTypeMetadata2 + 48);
          v94 = v130;
          v95 = v149;
          v117 = *v123;
          v117(v130, v149, v86);
          v118 = v90;
          swift_storeEnumTagMultiPayload();
          *(v94 + v93) = 0;
          v128 = v92;
          swift_storeEnumTagMultiPayload();
          v96 = v133;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v134, v94);
          v97 = *v122;
          (*v122)(v94, v96);
          v98 = v151;
          if (sub_1CF07CD80(v31))
          {
            (*v124)(v143, v150);
            v99 = v144;
            (*v135)(v157, v144);
            v100 = v95;
            v56 = v99;
            (*v139)(v100, v86);
            (*v160)(v98, v31);
            v57 = v148;
            v32 = v152;
            v58 = v98;
          }

          else
          {
            v114 = v97;
            v101 = *(TupleTypeMetadata2 + 48);
            v117(v94, v95, v86);
            swift_storeEnumTagMultiPayload();
            v102 = v94;
            v103 = v157;
            v32 = v152;
            if (qword_1EDEABDE0 != -1)
            {
              swift_once();
            }

            v104 = v94 + v101;
            *v104 = qword_1EDEABDE8;
            *(v104 + 8) = *(v127 + 120);
            swift_storeEnumTagMultiPayload();
            v105 = v133;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v134, v102);
            v114(v102, v105);
            (*v124)(v143, v150);
            v56 = v144;
            (*v135)(v103, v144);
            (*v139)(v149, v158);
            v58 = v151;
            (*v160)(v151, v31);
            v57 = v148;
          }

          goto LABEL_9;
        }

        (*v124)(v82, v78);
        v56 = v144;
        (*v135)(v157, v144);
        (*v139)(v149, v158);
        v58 = v151;
        (*v160)(v151, v31);
      }

      v32 = v152;
    }

    else
    {
      (*v160)(v58, v31);
    }

LABEL_9:
    ++v59;
    if (v62 == sub_1CF9E6DF8())
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1CF57947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v51 = a2;
  v57 = a1;
  v11 = *v8;
  v12 = type metadata accessor for SnapshotItem(255, *(*v8 + 600), *(*v8 + 616), a4);
  v13 = sub_1CF9E75D8();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v56 = v12;
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v49 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  v26 = *(v19 + 16);
  v26(&v49 - v24, &v8[*(v11 + 576)], AssociatedTypeWitness, v23);
  (v26)(v21, v25, AssociatedTypeWitness);
  if (swift_dynamicCast())
  {
    v50 = v19;
    if (v62 != 1)
    {
      v63 = a7;
      v64 = a8;
      v30 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(a7 - 8) + 16))(v30, v60, a7);
      v31 = 0xD000000000000039;
      v32 = 0x80000001CFA539D0;
LABEL_6:
      v59(&v61, 0, v31, v32, 0);
LABEL_7:
      v19 = v50;
      goto LABEL_8;
    }

    v27 = v61;
    v28 = *(v57 + 32);
    (*(*v28 + 240))(v25, 1, v60, a7, *(a8 + 8));
    v57 = v27;
    v35 = v55;
    v34 = v56;
    v36 = (*(v55 + 48))(v15, 1, v56);
    if (v36 == 1)
    {
      (*(v52 + 8))(v15, v53);
      v63 = a7;
      v64 = a8;
      v37 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(a7 - 8) + 16))(v37, v60, a7);
      v32 = 0x80000001CFA53960;
      v31 = 0xD000000000000022;
      goto LABEL_6;
    }

    v38 = v54;
    (*(v35 + 32))();
    v39 = &v38[*(v34 + 48)];
    v40 = type metadata accessor for ItemMetadata(0);
    if (v39[*(v40 + 60)])
    {
      v63 = a7;
      v64 = a8;
      v41 = __swift_allocate_boxed_opaque_existential_0(&v61);
      (*(*(a7 - 8) + 16))(v41, v60, a7);
      v59(&v61, 0, 0xD000000000000033, 0x80000001CFA53990, 0);
      (*(v35 + 8))(v38, v34);
      goto LABEL_7;
    }

    v42 = *&v39[*(v40 + 76)];
    if (v51 && (type metadata accessor for MaintenanceContinuation(), (v43 = swift_dynamicCastClass()) != 0))
    {
      v44 = *(v43 + 16);
      v45 = *(v43 + 24);
    }

    else
    {
      v44 = 0;
      v45 = 1;
    }

    if ((*(*v28 + 648))(v57, v42, v60, a7, a8))
    {
      type metadata accessor for MaintenanceContinuation();
      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      *(v46 + 24) = v45;
      *(v46 + 32) = 0;
      *(v46 + 40) = 1;
    }

    else
    {
      v46 = 0;
    }

    v47 = v59;
    v19 = v50;
    v63 = a7;
    v64 = a8;
    v48 = __swift_allocate_boxed_opaque_existential_0(&v61);
    (*(*(a7 - 8) + 16))(v48, v60, a7);

    v47(&v61, v46, 0, 0, 0);

    (*(v35 + 8))(v54, v56);
  }

  else
  {
    v63 = a7;
    v64 = a8;
    v29 = __swift_allocate_boxed_opaque_existential_0(&v61);
    (*(*(a7 - 8) + 16))(v29, v60, a7);
    v59(&v61, 0, 0xD00000000000003BLL, 0x80000001CFA53920, 0);
  }

LABEL_8:
  (*(v19 + 8))(v25, AssociatedTypeWitness);
  return sub_1CEFCCC44(&v61, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF579C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v87 = a5;
  v64 = a6;
  v11 = type metadata accessor for SnapshotItem(255, *(*v6 + 600), *(*v6 + 616), a4);
  v12 = sub_1CF9E75D8();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v65 = *(v11 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - v17;
  v19 = *(a2 + 32);
  v20 = v66;
  result = (*(*v19 + 240))(a1, 1, a3, a4, v87, v16);
  if (!v20)
  {
    v22 = a1;
    v66 = 0;
    if ((*(v65 + 48))(v14, 1, v11) == 1)
    {
      (*(v62 + 8))(v14, v63);
      return (*(v65 + 56))(v64, 1, 1, v11);
    }

    v23 = v65;
    (*(v65 + 32))(v18, v14, v11);
    v24 = v66;
    (*(*v19 + 264))(&v71, v22, a3, a4, v87);
    if (v24)
    {
      return (*(v23 + 8))(v18, v11);
    }

    v25 = &v18[*(v11 + 52)];
    v26 = *(v25 + 13);
    v67[12] = *(v25 + 12);
    v67[13] = v26;
    v67[14] = *(v25 + 14);
    v68 = *(v25 + 30);
    v27 = *(v25 + 9);
    v67[8] = *(v25 + 8);
    v67[9] = v27;
    v28 = *(v25 + 11);
    v67[10] = *(v25 + 10);
    v67[11] = v28;
    v29 = *(v25 + 5);
    v67[4] = *(v25 + 4);
    v67[5] = v29;
    v30 = *(v25 + 7);
    v67[6] = *(v25 + 6);
    v67[7] = v30;
    v31 = *(v25 + 1);
    v67[0] = *v25;
    v67[1] = v31;
    v32 = *(v25 + 3);
    v67[2] = *(v25 + 2);
    v67[3] = v32;
    sub_1CEFCCC44(v67, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v33 = v83;
    v34 = v84;
    v35 = v82;
    *(v25 + 12) = v83;
    *(v25 + 13) = v34;
    v36 = v84;
    *(v25 + 14) = v85;
    v38 = v79;
    v37 = v80;
    v39 = v78;
    *(v25 + 8) = v79;
    *(v25 + 9) = v37;
    v40 = v80;
    v42 = v81;
    v41 = v82;
    *(v25 + 10) = v81;
    *(v25 + 11) = v41;
    v44 = v75;
    v43 = v76;
    v45 = v74;
    *(v25 + 4) = v75;
    *(v25 + 5) = v43;
    v46 = v76;
    v48 = v77;
    v47 = v78;
    *(v25 + 6) = v77;
    *(v25 + 7) = v47;
    v49 = v72;
    *v25 = v71;
    *(v25 + 1) = v49;
    v50 = v74;
    v52 = v71;
    v51 = v72;
    v53 = v73;
    *(v25 + 2) = v73;
    *(v25 + 3) = v50;
    v69[12] = v33;
    v69[13] = v36;
    v69[14] = v85;
    v69[8] = v38;
    v69[9] = v40;
    v69[10] = v42;
    v69[11] = v35;
    v69[4] = v44;
    v69[5] = v46;
    v69[6] = v48;
    v69[7] = v39;
    v69[0] = v52;
    v69[1] = v51;
    v54 = v86;
    *(v25 + 30) = v86;
    v70 = v54;
    v69[2] = v53;
    v69[3] = v45;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v69) == 1)
    {
      v55 = *(v23 + 56);
      v56 = v64;
    }

    else
    {
      v57 = v64;
      if (BYTE9(v69[0]) == 1 && (v69[0] & 0x40) != 0)
      {
        v58 = &v18[*(v11 + 48)];
        v59 = type metadata accessor for ItemMetadata(0);
        if (v58[*(v59 + 48)])
        {
          v60 = 5;
        }

        else
        {
          v60 = 4;
        }

        v58[*(v59 + 84)] = v60;
        (*(v23 + 16))(v57, v18, v11);
        (*(v23 + 56))(v57, 0, 1, v11);
        return (*(v23 + 8))(v18, v11);
      }

      v55 = *(v23 + 56);
      v56 = v64;
    }

    v55(v56, 1, 1, v11);
    return (*(v23 + 8))(v18, v11);
  }

  return result;
}

uint64_t sub_1CF57A0C8(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, _TtC18FileProviderDaemon8FSTester *a7, uint64_t a8)
{
  v80 = a8;
  v69 = a6;
  v68 = a5;
  v86 = a4;
  v72 = a3;
  v12 = type metadata accessor for SnapshotItem(255, *(*v8 + 600), *(*v8 + 616), a4);
  v81 = sub_1CF9E75D8();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v59 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v59 - v22;
  v63 = v12;
  if (!a2)
  {
    v23 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
LABEL_5:
    v25 = 1;
    goto LABEL_6;
  }

  v24 = v23;
  v23 = *(v23 + 16);
  v25 = *(v24 + 24);
LABEL_6:
  v26 = *(v80 + 8);
  v28 = (*(**(a1 + 32) + 360))(v23, v25, v86, a7, v26);
  v61 = v29;
  v79 = v26;
  v60 = v30;
  v83 = a1;
  v84 = a7;
  v31 = AssociatedTypeWitness;
  v32 = sub_1CF9E6DF8();
  v40 = v63;
  v41 = v73;
  if (v32)
  {
    v42 = 0;
    v78 = (v19 + 16);
    v76 = (v19 + 32);
    v74 = (v67 + 6);
    v66 = (v67 + 4);
    v65 = (v67 + 2);
    v64 = (v67 + 7);
    v75 = (v77 + 1);
    ++v67;
    v77 = (v19 + 8);
    while (1)
    {
      v43 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v43)
      {
        result = (*(v19 + 16))(v41, v28 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v42, v31);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v62 != 8)
        {
          goto LABEL_23;
        }

        v88[0] = result;
        (*v78)(v41, v88, v31);
        result = swift_unknownObjectRelease();
      }

      v44 = v42 + 1;
      v45 = v79;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v46 = v31;
      v47 = v87;
      (*v76)(v87, v41, v46);
      sub_1CF579C48(v47, v83, v86, v84, v45, v16);
      if ((*v74)(v16, 1, v40) == 1)
      {
        v31 = AssociatedTypeWitness;
        (*v77)(v87, AssociatedTypeWitness);
        (*v75)(v16, v81);
      }

      else
      {
        v48 = v19;
        v49 = v16;
        v50 = v70;
        v51 = v49;
        (*v66)(v70);
        v52 = v71;
        (*v65)(v71, v50, v40);
        (*v64)(v52, 0, 1, v40);
        v53 = v87;
        sub_1CF611904(v52, v87, 0, 0, 0, v83, *(v85 + 120), *(v85 + 128), 4096, v72, v86, v84, v80);
        (*v75)(v52, v81);
        (*v67)(v50, v40);
        v54 = v53;
        v31 = AssociatedTypeWitness;
        (*v77)(v54, AssociatedTypeWitness);
        v16 = v51;
        v19 = v48;
        v41 = v73;
      }

      ++v42;
      if (v44 == sub_1CF9E6DF8())
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
    v28, v33, v34, v35, v36, v37, v38, v39;
    v55 = v84;
    v88[3] = v84;
    v88[4] = v80;
    if (v61)
    {
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
      (*(*v55[-1].tester + 16))(boxed_opaque_existential_0, v86, v55);
      v68(v88, 0, 0, 0, 0);
    }

    else
    {
      v57 = __swift_allocate_boxed_opaque_existential_0(v88);
      (*(*v55[-1].tester + 16))(v57, v86, v55);
      type metadata accessor for MaintenanceContinuation();
      v58 = swift_allocObject();
      *(v58 + 16) = v60;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0;
      *(v58 + 40) = 1;
      v68(v88, v58, 0, 0, 0);
    }

    return sub_1CEFCCC44(v88, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF57A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a4;
  v106 = a7;
  v93 = a5;
  v89 = a3;
  v102 = a1;
  v12 = *(*v8 + 600);
  v13 = *(*v8 + 608);
  v14 = *(*v8 + 616);
  v15 = *(*v8 + 624);
  v108 = v12;
  v109 = v13;
  v110 = v14;
  v111 = v15;
  v84 = type metadata accessor for ReconciliationMutation(0, &v108);
  v103 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v75 - v16;
  v85 = v15;
  v87 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v98 = *(v17 - 8);
  v99 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v86 = v14;
  v88 = v12;
  v20 = swift_getAssociatedTypeWitness();
  v101 = *(v20 - 8);
  v21 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v75 - v23;
  if (!fpfs_supports_pkg_dataless_escape_prevention())
  {
    v28 = v106;
    v111 = v106;
    v112 = a8;
    v29 = __swift_allocate_boxed_opaque_existential_0(&v108);
    (*(*(v28 - 8) + 16))(v29, v105, v28);
    v30 = 0x80000001CFA538C0;
    v31 = 0xD000000000000018;
    goto LABEL_6;
  }

  v96 = v19;
  v80 = v21;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v24 = swift_dynamicCastClass();
    v25 = v97;
    if (v24)
    {
      v26 = v24;
      v24 = *(v24 + 16);
      v27 = *(v26 + 24);
    }

    else
    {
      v27 = 1;
    }

    v32 = v102;
    v33 = AssociatedTypeWitness;
  }

  else
  {
    v24 = 0;
    v27 = 1;
    v32 = v102;
    v33 = AssociatedTypeWitness;
    v25 = v97;
  }

  v34 = *(a8 + 8);
  v36 = (*(**(v32 + 32) + 368))(v24, v27, v105, v106, v34);
  v77 = v37;
  v76 = v38;
  v78 = a8;
  v79 = a6;
  if (!sub_1CF9E6DF8())
  {
LABEL_24:
    v36, v40, v41, v42, v43, v44, v45, v46;
    if ((v77 & 1) == 0)
    {
      v72 = v106;
      v111 = v106;
      v112 = v78;
      v73 = __swift_allocate_boxed_opaque_existential_0(&v108);
      (*(*(v72 - 8) + 16))(v73, v105, v72);
      type metadata accessor for MaintenanceContinuation();
      v74 = swift_allocObject();
      *(v74 + 16) = v76;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0;
      *(v74 + 40) = 1;
      v93(&v108, v74, 0, 0, 0);

      return sub_1CEFCCC44(&v108, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v70 = v106;
    v111 = v106;
    v112 = v78;
    v71 = __swift_allocate_boxed_opaque_existential_0(&v108);
    (*(*(v70 - 8) + 16))(v71, v105, v70);
    v31 = 0;
    v30 = 0;
LABEL_6:
    v93(&v108, 0, v31, v30, 0);
    return sub_1CEFCCC44(&v108, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v47 = 0;
  v100 = (v101 + 16);
  v95 = (v101 + 32);
  v92 = v33 - 8;
  v91 = (v98 + 8);
  v81 = (v103 + 8);
  v94 = (v101 + 8);
  while (1)
  {
    v49 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v49)
    {
      v50 = *(v101 + 16);
      v50(v25, (v36 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v47), v20);
      v51 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    result = sub_1CF9E7998();
    if (v80 != 8)
    {
      break;
    }

    v108 = result;
    v50 = *v100;
    (*v100)(v25, &v108, v20);
    swift_unknownObjectRelease();
    v51 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_18:
    v98 = v50;
    v103 = v51;
    v52 = v34;
    v53 = v107;
    v54 = v20;
    (*v95)(v107, v25, v20);
    v55 = v96;
    v56 = v53;
    v34 = v52;
    (*(**(v102 + 16) + 160))(v56, v105, v106, v52);
    if ((*(*(v33 - 8) + 48))(v55, 1, v33) == 1)
    {
      (*v94)(v107, v54);
      v48 = v55;
      v20 = v54;
      (*v91)(v48, v99);
    }

    else
    {
      (*v91)(v55, v99);
      v57 = v87;
      v108 = v88;
      v109 = v87;
      v58 = v85;
      v110 = v86;
      v111 = v85;
      v82 = type metadata accessor for JobResult(0, &v108);
      v59 = v54;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v61 = swift_getAssociatedConformanceWitness();
      v108 = v59;
      v109 = AssociatedTypeWitness;
      v110 = AssociatedConformanceWitness;
      v111 = v61;
      type metadata accessor for ReconciliationID(255, &v108);
      type metadata accessor for ReconciliationSideMutation(255, v57, v58, v62);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v64 = v83;
      v65 = &v83[*(TupleTypeMetadata2 + 48)];
      v66 = v107;
      v98(v83, v107, v59);
      swift_storeEnumTagMultiPayload();
      *v65 = 0x100000000000;
      *(v65 + 8) = *(v90 + 120);
      v34 = v52;
      v20 = v59;
      v67 = v84;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v89, v64);
      v68 = v64;
      v33 = AssociatedTypeWitness;
      (*v81)(v68, v67);
      v69 = v66;
      v25 = v97;
      (*v94)(v69, v59);
    }

    ++v47;
    if (v103 == sub_1CF9E6DF8())
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF57B420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a5;
  v62 = a6;
  v11 = type metadata accessor for SnapshotItem(255, *(*v6 + 600), *(*v6 + 616), a4);
  v12 = sub_1CF9E75D8();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v63 = *(v11 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - v17;
  v19 = *(a2 + 32);
  v20 = v64;
  result = (*(*v19 + 240))(a1, 1, a3, a4, v85, v16);
  if (!v20)
  {
    v22 = a1;
    v64 = 0;
    if ((*(v63 + 48))(v14, 1, v11) == 1)
    {
      (*(v60 + 8))(v14, v61);
      return (*(v63 + 56))(v62, 1, 1, v11);
    }

    v23 = v63;
    (*(v63 + 32))(v18, v14, v11);
    v24 = v64;
    (*(*v19 + 264))(&v69, v22, a3, a4, v85);
    if (v24)
    {
      return (*(v23 + 8))(v18, v11);
    }

    v25 = &v18[*(v11 + 52)];
    v26 = *(v25 + 13);
    v65[12] = *(v25 + 12);
    v65[13] = v26;
    v65[14] = *(v25 + 14);
    v66 = *(v25 + 30);
    v27 = *(v25 + 9);
    v65[8] = *(v25 + 8);
    v65[9] = v27;
    v28 = *(v25 + 11);
    v65[10] = *(v25 + 10);
    v65[11] = v28;
    v29 = *(v25 + 5);
    v65[4] = *(v25 + 4);
    v65[5] = v29;
    v30 = *(v25 + 7);
    v65[6] = *(v25 + 6);
    v65[7] = v30;
    v31 = *(v25 + 1);
    v65[0] = *v25;
    v65[1] = v31;
    v32 = *(v25 + 3);
    v65[2] = *(v25 + 2);
    v65[3] = v32;
    sub_1CEFCCC44(v65, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v33 = v81;
    v34 = v82;
    v35 = v80;
    *(v25 + 12) = v81;
    *(v25 + 13) = v34;
    v36 = v82;
    *(v25 + 14) = v83;
    v38 = v77;
    v37 = v78;
    v39 = v76;
    *(v25 + 8) = v77;
    *(v25 + 9) = v37;
    v40 = v78;
    v42 = v79;
    v41 = v80;
    *(v25 + 10) = v79;
    *(v25 + 11) = v41;
    v44 = v73;
    v43 = v74;
    v45 = v72;
    *(v25 + 4) = v73;
    *(v25 + 5) = v43;
    v46 = v74;
    v48 = v75;
    v47 = v76;
    *(v25 + 6) = v75;
    *(v25 + 7) = v47;
    v49 = v70;
    *v25 = v69;
    *(v25 + 1) = v49;
    v50 = v72;
    v52 = v69;
    v51 = v70;
    v53 = v71;
    *(v25 + 2) = v71;
    *(v25 + 3) = v50;
    v67[12] = v33;
    v67[13] = v36;
    v67[14] = v83;
    v67[8] = v38;
    v67[9] = v40;
    v67[10] = v42;
    v67[11] = v35;
    v67[4] = v44;
    v67[5] = v46;
    v67[6] = v48;
    v67[7] = v39;
    v67[0] = v52;
    v67[1] = v51;
    v54 = v84;
    *(v25 + 30) = v84;
    v68 = v54;
    v67[2] = v53;
    v67[3] = v45;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v67) == 1)
    {
      v55 = *(v23 + 56);
      v56 = v62;
    }

    else
    {
      v57 = v62;
      if ((v67[0] & 0xE) == 0)
      {
        v58 = &v18[*(v11 + 48)];
        v58[*(type metadata accessor for ItemMetadata(0) + 36)] = 1;
        (*(v23 + 16))(v57, v18, v11);
        (*(v23 + 56))(v57, 0, 1, v11);
        return (*(v23 + 8))(v18, v11);
      }

      v55 = *(v23 + 56);
      v56 = v62;
    }

    v55(v56, 1, 1, v11);
    return (*(v23 + 8))(v18, v11);
  }

  return result;
}

uint64_t sub_1CF57B888(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, _TtC18FileProviderDaemon8FSTester *a7, uint64_t a8)
{
  v80 = a8;
  v69 = a6;
  v68 = a5;
  v86 = a4;
  v72 = a3;
  v12 = type metadata accessor for SnapshotItem(255, *(*v8 + 600), *(*v8 + 616), a4);
  v81 = sub_1CF9E75D8();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v71 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v59 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v73 = &v59 - v22;
  v63 = v12;
  if (!a2)
  {
    v23 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
LABEL_5:
    v25 = 1;
    goto LABEL_6;
  }

  v24 = v23;
  v23 = *(v23 + 16);
  v25 = *(v24 + 24);
LABEL_6:
  v26 = *(v80 + 8);
  v28 = (*(**(a1 + 32) + 376))(v23, v25, v86, a7, v26);
  v61 = v29;
  v79 = v26;
  v60 = v30;
  v83 = a1;
  v84 = a7;
  v31 = AssociatedTypeWitness;
  v32 = sub_1CF9E6DF8();
  v40 = v63;
  v41 = v73;
  if (v32)
  {
    v42 = 0;
    v78 = (v19 + 16);
    v76 = (v19 + 32);
    v74 = (v67 + 6);
    v66 = (v67 + 4);
    v65 = (v67 + 2);
    v64 = (v67 + 7);
    v75 = (v77 + 1);
    ++v67;
    v77 = (v19 + 8);
    while (1)
    {
      v43 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v43)
      {
        result = (*(v19 + 16))(v41, v28 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v42, v31);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v62 != 8)
        {
          goto LABEL_23;
        }

        v88[0] = result;
        (*v78)(v41, v88, v31);
        result = swift_unknownObjectRelease();
      }

      v44 = v42 + 1;
      v45 = v79;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      v46 = v31;
      v47 = v87;
      (*v76)(v87, v41, v46);
      sub_1CF57B420(v47, v83, v86, v84, v45, v16);
      if ((*v74)(v16, 1, v40) == 1)
      {
        v31 = AssociatedTypeWitness;
        (*v77)(v87, AssociatedTypeWitness);
        (*v75)(v16, v81);
      }

      else
      {
        v48 = v19;
        v49 = v16;
        v50 = v70;
        v51 = v49;
        (*v66)(v70);
        v52 = v71;
        (*v65)(v71, v50, v40);
        (*v64)(v52, 0, 1, v40);
        v53 = v87;
        sub_1CF611904(v52, v87, 0, 0, 0, v83, *(v85 + 120), *(v85 + 128), 4096, v72, v86, v84, v80);
        (*v75)(v52, v81);
        (*v67)(v50, v40);
        v54 = v53;
        v31 = AssociatedTypeWitness;
        (*v77)(v54, AssociatedTypeWitness);
        v16 = v51;
        v19 = v48;
        v41 = v73;
      }

      ++v42;
      if (v44 == sub_1CF9E6DF8())
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
    v28, v33, v34, v35, v36, v37, v38, v39;
    v55 = v84;
    v88[3] = v84;
    v88[4] = v80;
    if (v61)
    {
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
      (*(*v55[-1].tester + 16))(boxed_opaque_existential_0, v86, v55);
      v68(v88, 0, 0, 0, 0);
    }

    else
    {
      v57 = __swift_allocate_boxed_opaque_existential_0(v88);
      (*(*v55[-1].tester + 16))(v57, v86, v55);
      type metadata accessor for MaintenanceContinuation();
      v58 = swift_allocObject();
      *(v58 + 16) = v60;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0;
      *(v58 + 40) = 1;
      v68(v88, v58, 0, 0, 0);
    }

    return sub_1CEFCCC44(v88, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF57C1B0(void **a1, void **a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, unint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v92 = a6;
  v93 = a8;
  v90 = a4;
  v91 = a7;
  v89 = a5;
  v94 = a2;
  v10 = *v8;
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(v10 + 624);
  v15 = *(v10 + 608);
  v99 = AssociatedTypeWitness;
  v100 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ReconciliationID(0, &v99);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v84 - v19;
  v99 = v12;
  v100 = v15;
  AssociatedConformanceWitness = v11;
  v102 = v14;
  v20 = type metadata accessor for PersistenceTrigger(0, &v99);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v84 - v23;
  if (((*a1)[20])(v22))
  {
    v28 = v91;
    v102 = v91;
    v103 = v93;
    v29 = __swift_allocate_boxed_opaque_existential_0(&v99);
    (*(*(v28 - 8) + 16))(v29, v90, v28);
    v30 = 0xD000000000000018;
    v31 = 0x80000001CFA53840;
LABEL_6:
    v89(&v99, 0, v30, v31, 0);
    return sub_1CEFCCC44(&v99, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v84 = v18;
  if (!v94)
  {
    sub_1CF046AB4();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    ((*a1)[39])(v24);
    (*(v21 + 8))(v24, v20);
  }

  v85 = v21;
  v25 = *(*a1[2] + 312);
  v94 = a1;
  v27 = v90;
  v26 = v91;
  v33 = v25(v90, v91, *(v93 + 8));
  v99 = v33;
  sub_1CF9E6E58();
  swift_getWitnessTable();
  v34 = sub_1CF9E7128();
  if (v34)
  {
    v33, v35, v36, v37, v38, v39, v40, v41;
    v102 = v26;
    v103 = v93;
    v42 = __swift_allocate_boxed_opaque_existential_0(&v99);
    (*(*(v26 - 8) + 16))(v42, v27, v26);
    v31 = 0x80000001CFA53860;
    v30 = 0xD000000000000012;
    goto LABEL_6;
  }

  if (!sub_1CF9E6DF8())
  {
LABEL_20:
    v33, v43, v44, v45, v46, v47, v48, v49;
    v55 = v91;
    v102 = v91;
    v103 = v93;
    v56 = __swift_allocate_boxed_opaque_existential_0(&v99);
    (*(*(v55 - 8) + 16))(v56, v90, v55);
    type metadata accessor for MaintenanceContinuation();
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 1;
    *(v57 + 32) = 0;
    *(v57 + 40) = 1;
    v97 = 0x6465737561706E75;
    v98 = 0xE900000000000020;
    v58 = sub_1CF9E6DF8();
    v33, v59, v60, v61, v62, v63, v64, v65;
    v96 = v58;
    v66 = sub_1CF9E7F98();
    v68 = v67;
    MEMORY[0x1D3868CC0](v66);
    v68, v69, v70, v71, v72, v73, v74, v75;
    v76 = v98;
    v89(&v99, v57, v97, v98, 0);

    v76, v77, v78, v79, v80, v81, v82, v83;
    return sub_1CEFCCC44(&v99, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v50 = 0;
  v51 = (*v94)[39];
  v86 = (*v94 + 39);
  v87 = v51;
  v88 = (v17 + 16);
  v52 = (v85 + 8);
  while (1)
  {
    v53 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v53)
    {
      (*(v17 + 16))(v95, v33 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v50, v16);
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    result = sub_1CF9E7998();
    if (v84 != 8)
    {
      break;
    }

    v99 = result;
    (*v88)(v95, &v99, v16);
    swift_unknownObjectRelease();
    v54 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_14:
    (*(v17 + 32))(v24, v95, v16);
    swift_storeEnumTagMultiPayload();
    v87(v24);
    (*v52)(v24, v20);
    ++v50;
    if (v54 == sub_1CF9E6DF8())
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF57C99C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, uint64_t, unint64_t, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v188 = a8;
  v189 = a7;
  v185 = a6;
  v186 = a5;
  v190 = a4;
  v169 = a3;
  *&v159 = a2;
  v187 = a1;
  v165 = *v8;
  v10 = v165;
  v167 = sub_1CF9E5CF8();
  *&v160 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v165 + 600);
  v157 = *(v165 + 616);
  v158 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v172 = sub_1CF9E75D8();
  v156 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v176 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v171 = &v145 - v16;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v175 = &v145 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v161 = &v145 - v24;
  v25 = *(v10 + 608);
  v26 = *(v10 + 624);
  v28 = type metadata accessor for SnapshotItem(255, v25, v26, v27);
  v163 = sub_1CF9E75D8();
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v182 = &v145 - v29;
  v174 = v28;
  v168 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v145 - v31;
  v154 = v26;
  v155 = v25;
  v32 = swift_getAssociatedTypeWitness();
  v178 = sub_1CF9E75D8();
  v180 = *(v178 - 1);
  MEMORY[0x1EEE9AC00](v178);
  v34 = &v145 - v33;
  v183 = v32;
  v184 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v179 = &v145 - v36;
  sub_1CF656CD8(AssociatedTypeWitness, AssociatedTypeWitness);
  v37 = *(v17 + 72);
  swift_allocObject();
  v38 = sub_1CF9E6D68();
  v39 = *(*v9 + 576);
  v173 = v18;
  v40 = *(v18 + 16);
  v40(v41, v9 + v39, AssociatedTypeWitness);
  v42 = sub_1CF045898(v38, AssociatedTypeWitness);
  v194 = v42;
  v43 = *(**(v187 + 16) + 160);
  v44 = *(v188 + 8);
  v181 = v34;
  v43(v9 + v39, v190, v189, v44);
  v48 = v180;
  v146 = v39;
  v151 = 0;
  v49 = v182;
  v153 = v42;
  v148 = v40;
  v149 = v18 + 16;
  v152 = v44;
  v147 = v37;
  v150 = AssociatedTypeWitness;
  v50 = v183;
  v51 = v184;
  v52 = v181;
  v53 = (*(v184 + 48))(v181, 1, v183);
  if (v53 == 1)
  {
    v153, v54, v55, v56, v57, v58, v59, v60;
    (v48[1])(v52, v178);
    v61 = v189;
    *(&v192 + 1) = v189;
    v193 = v188;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v191);
    (*(*(v61 - 8) + 16))(boxed_opaque_existential_0, v190, v61);
    v186(&v191, 0, 0x746F6E206D657469, 0xEE00646E756F6220, 0);
    return sub_1CEFCCC44(&v191, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v63 = v179;
  (*(v51 + 32))(v179, v52, v50);
  v64 = v187;
  v65 = v189;
  v66 = v151;
  (*(**(v187 + 40) + 240))(v63, 1, v190, v189, v152);
  v67 = v153;
  if (v66)
  {
    (*(v51 + 8))(v63, v50);
    v67, v68, v69, v70, v71, v72, v73, v74;
    v75 = v190;
    *(&v192 + 1) = v65;
    v193 = v188;
    v45 = __swift_allocate_boxed_opaque_existential_0(&v191);
    (*(*(v65 - 8) + 16))(v45, v75, v65);
    v46 = v66;
    v186(&v191, 0, 0, 0, v66);

    return sub_1CEFCCC44(&v191, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v76 = v168;
  v77 = v174;
  if ((*(v168 + 48))(v49, 1, v174) == 1)
  {
    v67, v78, v79, v80, v81, v82, v83, v84;
    (*(v162 + 8))(v49, v163);
    *(&v192 + 1) = v65;
    v193 = v188;
    v85 = __swift_allocate_boxed_opaque_existential_0(&v191);
    (*(*(v65 - 8) + 16))(v85, v190, v65);
    v186(&v191, 0, 0xD000000000000013, 0x80000001CFA53800, 0);
    (*(v184 + 8))(v179, v50);
    return sub_1CEFCCC44(&v191, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v86 = v164;
  (*(v76 + 32))(v164, v49, v77);
  v87 = *(v64 + 32);
  if (!sub_1CF056558())
  {
    v96 = 0;
    v97 = 1;
    v98 = v169;
    v90 = v187;
    v89 = v190;
LABEL_42:
    v134 = v194;
    sub_1CF595E40(v194, v98, v90, v89, v65, v152);
    v135 = v179;
    v134, v136, v137, v138, v139, v140, v141, v142;
    *(&v192 + 1) = v65;
    v193 = v188;
    v143 = __swift_allocate_boxed_opaque_existential_0(&v191);
    (*(*(v65 - 8) + 16))(v143, v89, v65);
    if (v97)
    {
      v186(&v191, 0, 0, 0, 0);
    }

    else
    {
      type metadata accessor for MaintenanceContinuation();
      v144 = swift_allocObject();
      *(v144 + 16) = v96;
      *(v144 + 24) = 0;
      *(v144 + 32) = 0;
      *(v144 + 40) = 1;
      v186(&v191, v144, 0, 0, 0);
    }

    (*(v76 + 8))(v86, v174);
    (*(v184 + 8))(v135, v183);
    return sub_1CEFCCC44(&v191, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v77, WitnessTable, &v191);
  v89 = v190;
  if (v191 != 1)
  {
    v96 = 0;
    v97 = 1;
    v98 = v169;
    v90 = v187;
    goto LABEL_42;
  }

  v148(v161, v9 + v146, v150);
  v90 = v187;
  if (v159)
  {
    type metadata accessor for MaintenanceContinuation();
    v91 = swift_dynamicCastClass();
    v92 = v152;
    v93 = v160;
    if (v91)
    {
      v94 = *(v91 + 16);
      v95 = *(v91 + 24);
    }

    else
    {
      v94 = 0;
      v95 = 1;
    }
  }

  else
  {
    v94 = 0;
    v95 = 1;
    v92 = v152;
    v93 = v160;
  }

  v99 = v161;
  v100 = (*(*v87 + 392))(v161, v94, v95, v89, v65, v92);
  LODWORD(v151) = v101;
  v153 = v102;
  v104 = v173 + 8;
  v103 = *(v173 + 8);
  v173 += 8;
  v178 = v103;
  result = v103(v99, v150);
  v105 = 0;
  v163 = v100;
  v106 = v100 + 64;
  v107 = 1 << *(v100 + 32);
  v108 = -1;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  v109 = v108 & *(v100 + 64);
  v110 = (v107 + 63) >> 6;
  v111 = TupleTypeMetadata2;
  v181 = (TupleTypeMetadata2 - 8);
  v182 = (v104 + 24);
  v180 = (v156 + 32);
  v161 = (v93 + 8);
  *&v112 = v157;
  *(&v112 + 1) = v154;
  v160 = v112;
  *&v112 = v158;
  *(&v112 + 1) = v155;
  v159 = v112;
  v162 = v106;
  while (1)
  {
    v113 = v176;
    if (!v109)
    {
      break;
    }

    v114 = v105;
LABEL_33:
    v117 = __clz(__rbit64(v109));
    v109 &= v109 - 1;
    v118 = v117 | (v114 << 6);
    v119 = v163;
    v120 = v175;
    v121 = v150;
    v148(v175, (*(v163 + 48) + v118 * v147), v150);
    LOBYTE(v118) = *(*(v119 + 56) + v118);
    v111 = TupleTypeMetadata2;
    v122 = *(TupleTypeMetadata2 + 48);
    v113 = v176;
    (*v182)(v176, v120, v121);
    v123 = 0;
    v113[v122] = v118;
    v90 = v187;
    v106 = v162;
LABEL_34:
    v124 = *(v111 - 8);
    (*(v124 + 56))(v113, v123, 1, v111);
    v125 = v171;
    (*v180)();
    if ((*(v124 + 48))(v125, 1, v111) == 1)
    {

      v65 = v189;
      v89 = v190;
      v76 = v168;
      v86 = v164;
      v96 = v153;
      v97 = v151;
      v98 = v169;
      goto LABEL_42;
    }

    v126 = v125[*(v111 + 48)];
    v127 = v170;
    (*v182)(v170, v125, v121);
    if (v126 == 1)
    {
      v191 = v159;
      v192 = v160;
      type metadata accessor for JobResult(0, &v191);
      v128 = v166;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v130 = v129;
      result = (*v161)(v128, v167);
      v131 = v130 * 1000000000.0;
      if (COERCE__INT64(fabs(v130 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_47;
      }

      result = v165;
      if (v131 <= -9.22337204e18)
      {
        goto LABEL_48;
      }

      if (v131 >= 9.22337204e18)
      {
        goto LABEL_49;
      }

      v132 = v131;
      swift_allocObject();
      v133 = sub_1CF052464(v127, 0, v132, 0);
      sub_1CF803A0C(v169, v133);

      v90 = v187;
      v121 = v150;
    }

    else
    {
      v148(v175, v127, v121);
      sub_1CF9E6E58();
      sub_1CF9E6E18();
    }

    result = v178(v127, v121);
    v111 = TupleTypeMetadata2;
  }

  if (v110 <= v105 + 1)
  {
    v115 = v105 + 1;
  }

  else
  {
    v115 = v110;
  }

  v116 = v115 - 1;
  while (1)
  {
    v114 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
      break;
    }

    if (v114 >= v110)
    {
      v109 = 0;
      v123 = 1;
      v105 = v116;
      v121 = v150;
      goto LABEL_34;
    }

    v109 = *(v106 + 8 * v114);
    ++v105;
    if (v109)
    {
      v105 = v114;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1CF57DC58(void *a1)
{
  sub_1CF1A91AC(a1, v4);
  v2 = sub_1CF487C6C(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1CF57DCEC(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v187 = a8;
  v182 = a2;
  v183 = a7;
  v178 = a6;
  v179 = a5;
  v181 = a3;
  v12 = *v8;
  v166 = v12;
  v13 = sub_1CF9E5CF8();
  v155 = *(v13 - 8);
  v156 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 616);
  v16 = *(v12 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v162 = *(AssociatedTypeWitness - 8);
  v163 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v160 = &v145 - v18;
  v165 = type metadata accessor for SnapshotMutation(0, v16, v15, v19);
  v172 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v145 - v20;
  v167 = v15;
  v168 = v16;
  v22 = type metadata accessor for SnapshotItem(255, v16, v15, v21);
  v174 = sub_1CF9E75D8();
  v171 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v145 - v23;
  v180 = v22;
  v177 = *(v22 - 8);
  v24 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v185 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v145 - v27;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v145 - v31;
  v33 = v12;
  v176 = a1;
  v34 = *(a1 + 32);
  v35 = *(v33 + 576);
  v36 = *(*v34 + 352);
  v37 = *(v187 + 8);
  v38 = v9;
  v39 = v35 + v9;
  v186 = a4;
  v40 = v183;
  v41 = v36(v39, a4, v30);
  v159 = v35;
  v173 = v38;
  v161 = v32;
  v147 = v24;
  v184 = v28;
  v42 = v180;
  v169 = v34;
  v170 = v37;
  if (v41 == 501)
  {
    v43 = fpfs_supports_indexAllRemoteItems() ^ 1;
    v45 = v162;
    v44 = v163;
    v47 = v170;
    v46 = v173;
    goto LABEL_6;
  }

  v43 = 1;
  v45 = v162;
  v44 = v163;
  v46 = v173;
  if (v41 == 502)
  {
    v47 = v170;
LABEL_6:
    v48 = v182;
    v49 = v159;
    goto LABEL_7;
  }

  v47 = v170;
  v48 = v182;
  v49 = v159;
  v43 = v41 == 1003;
LABEL_7:
  v148 = v43;
  v50 = v169;
  v51 = (*(*v169 + 496))(v49 + v46, v48, v186, v40, v47);
  v54 = v53;
  v55 = v51;
  v56 = sub_1CF9E6DF8();
  v146 = v54;
  if (v56)
  {
    v64 = 0;
    LODWORD(v173) = 0;
    v65 = v177;
    v182 = (v177 + 16);
    v152 = (v177 + 56);
    v153 = (v171 + 8);
    v149 = (v172 + 8);
    v150 = 0x80000001CFA537B0;
    v157 = (v177 + 32);
    v158 = (v177 + 8);
    v66 = v55;
    v159 = v55;
    do
    {
      v76 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      v172 = v64;
      if (v76)
      {
        v77 = v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64;
        v78 = v161;
        v180 = *(v65 + 16);
        result = (v180)(v161, v77, v42);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v147 != 8)
        {
          goto LABEL_43;
        }

        *&v193 = result;
        v113 = v161;
        v180 = *v182;
        (v180)(v161, &v193, v42);
        v78 = v113;
        result = swift_unknownObjectRelease();
        v64 = v172;
      }

      v79 = v186;
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      v171 = v64 + 1;
      v80 = v184;
      (*v157)(v184, v78, v42);
      (*(*v50 + 264))(v209, v80, v79, v40, v170);
      v81 = &v80[v42[13]];
      v82 = *(v81 + 13);
      v205 = *(v81 + 12);
      v206 = v82;
      v207 = *(v81 + 14);
      v208 = *(v81 + 30);
      v83 = *(v81 + 9);
      v201 = *(v81 + 8);
      v202 = v83;
      v84 = *(v81 + 11);
      v203 = *(v81 + 10);
      v204 = v84;
      v85 = *(v81 + 5);
      v197 = *(v81 + 4);
      v198 = v85;
      v86 = *(v81 + 7);
      v199 = *(v81 + 6);
      v200 = v86;
      v87 = *(v81 + 1);
      v193 = *v81;
      v194 = v87;
      v88 = *(v81 + 3);
      v195 = *(v81 + 2);
      v196 = v88;
      sub_1CEFCCC44(&v193, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v89 = v209[13];
      *(v81 + 12) = v209[12];
      *(v81 + 13) = v89;
      *(v81 + 14) = v209[14];
      *(v81 + 30) = v210;
      v90 = v209[9];
      *(v81 + 8) = v209[8];
      *(v81 + 9) = v90;
      v91 = v209[11];
      *(v81 + 10) = v209[10];
      *(v81 + 11) = v91;
      v92 = v209[5];
      *(v81 + 4) = v209[4];
      *(v81 + 5) = v92;
      v93 = v209[7];
      *(v81 + 6) = v209[6];
      *(v81 + 7) = v93;
      v94 = v209[1];
      *v81 = v209[0];
      *(v81 + 1) = v94;
      v95 = v209[3];
      *(v81 + 2) = v209[2];
      *(v81 + 3) = v95;
      v96 = v185;
      v97 = v40;
      v98 = v180;
      (v180)(v185, v80, v42);
      v192 = 2;
      v99 = v175;
      v100 = v80;
      v101 = v96;
      (v98)(v175, v100, v42);
      v40 = v97;
      (*v152)(v99, 0, 1, v42);
      v102 = sub_1CF6129E4(v99, v96, &v192, v176, v181, 0, v79, v97, v187);
      (*v153)(v99, v174);
      if ((v192 & 0x400000000000000) != 0)
      {
        v103 = *(v166 + 608);
        v104 = *(v166 + 624);
        v188 = v168;
        v189 = v103;
        v190 = v167;
        v191 = v104;
        v105 = type metadata accessor for JobResult(0, &v188);
        MEMORY[0x1EEE9AC00](v105);
        qmemcpy(&v145 - 4, "from to  reason ", 16);
        LOBYTE(v144) = 0;
        v188 = v42;
        v189 = v42;
        v190 = &type metadata for Fields;
        v191 = MEMORY[0x1E69E6158];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v107 = TupleTypeMetadata[12];
        v151 = TupleTypeMetadata[16];
        v108 = v164;
        v109 = &v164[TupleTypeMetadata[20]];
        v110 = v180;
        (v180)(v164, v184, v42);
        (v110)(v108 + v107, v185, v42);
        *(v108 + v151) = 0x400000000000000;
        *v109 = 0xD000000000000018;
        *(v109 + 1) = v150;
        v40 = v183;
        v111 = v165;
        swift_storeEnumTagMultiPayload();
        sub_1CF9491AC(v181, v108);
        v112 = v108;
        v101 = v185;
        (*v149)(v112, v111);
      }

      LODWORD(v173) = v102 | v173;
      v67 = *v158;
      (*v158)(v101, v42);
      v67(v184, v42);
      v66 = v159;
      v68 = sub_1CF9E6DF8();
      v64 = v172 + 1;
      v50 = v169;
      v65 = v177;
    }

    while (v171 != v68);
    v66, v69, v70, v71, v72, v73, v74, v75;
    v117 = v167;
    v45 = v162;
    v44 = v163;
    if (v146)
    {
      v114 = v168;
      v116 = v166;
      v115 = v173;
      goto LABEL_23;
    }

    v118 = 1;
    v114 = v168;
    v116 = v166;
    if (v173)
    {
      v119 = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v55, v57, v58, v59, v60, v61, v62, v63;
    v114 = v168;
    if (v54)
    {
      v115 = 0;
      v116 = v166;
      v117 = v167;
LABEL_23:
      v118 = 0;
      v119 = v148;
      if ((v148 | v115))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v118 = 1;
      v117 = v167;
    }
  }

  v120 = (*(*v176[3] + 168))(66, 0x800000, 0, 1, v186, v40, v170);
  v121 = sub_1CF9E6DF8();
  v120, v122, v123, v124, v125, v126, v127, v128;
  if (v121 <= 0)
  {
    ((*v176)[74])();
    if (v118)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v119 = 0;
  v114 = v168;
  v116 = v166;
LABEL_30:
  LODWORD(v185) = v118;
  v148 = v119;
  v129 = *(v116 + 608);
  v130 = *(v116 + 624);
  *&v193 = v114;
  *(&v193 + 1) = v129;
  *&v194 = v117;
  *(&v194 + 1) = v130;
  type metadata accessor for JobResult(0, &v193);
  *&v193 = v114;
  *(&v193 + 1) = v129;
  *&v194 = v117;
  *(&v194 + 1) = v130;
  type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy(0, &v193);
  sub_1CF046AB4();
  v131 = v154;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v133 = v132;
  result = (*(v155 + 8))(v131, v156);
  v134 = v133 * 1000000000.0;
  if (COERCE__INT64(fabs(v133 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v134 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v134 < 9.22337204e18)
  {
    v135 = v134;
    swift_allocObject();
    v136 = v160;
    sub_1CF052464(v160, 0, v135, 0);
    (*(v45 + 8))(v136, v44);
    v137 = sub_1CF052548(0x1000000);

    sub_1CF803A0C(v181, v137);

    v40 = v183;
    if (v185)
    {
LABEL_34:
      *(&v194 + 1) = v40;
      *&v195 = v187;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v193);
      (*(*(v40 - 8) + 16))(boxed_opaque_existential_0, v186, v40);
      v179(&v193, 0, 0, 0, 0);
      return sub_1CEFCCC44(&v193, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    if (v148)
    {
      *&v193 = v168;
      *(&v193 + 1) = v129;
      *&v194 = v117;
      *(&v194 + 1) = v130;
      type metadata accessor for Maintenance.InheritedContentPolicyContinuation(0, &v193);
      v139 = *(v146 + 16);
      v140 = swift_allocObject();
      *(v140 + 16) = v139;
      *(&v194 + 1) = v40;
      *&v195 = v187;
      v141 = __swift_allocate_boxed_opaque_existential_0(&v193);
      (*(*(v40 - 8) + 16))(v141, v186, v40);
      v179(&v193, v140, 0, 0, 0);

      return sub_1CEFCCC44(&v193, &unk_1EC4C1B30, &qword_1CFA05300);
    }

LABEL_38:
    *(&v194 + 1) = v40;
    *&v195 = v187;
    v142 = __swift_allocate_boxed_opaque_existential_0(&v193);
    (*(*(v40 - 8) + 16))(v142, v186, v40);
    v143 = v146;

    v179(&v193, v143, 0, 0, 0);

    return sub_1CEFCCC44(&v193, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1CF57EC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v88 = a4;
  v89 = a7;
  v79 = a6;
  v80 = a5;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v90 = *(*v8 + 600);
  v11 = v90;
  v91 = v12;
  v83 = v14;
  v84 = v12;
  v92 = v13;
  v93 = v14;
  v82 = type metadata accessor for PersistenceTrigger(0, &v90);
  v87 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v16 = &v69 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v18 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v69 - v19;
  v86 = a1;
  v21 = *(a1 + 24);
  v22 = [objc_opt_self() defaultStore];
  v23 = [v22 speculativeSetRefreshInheritedContentPolicyMaximumJobs];

  v24 = *(*v21 + 160);
  v81 = a8;
  v25 = *(a8 + 8);
  result = v24(1, 66, v23, 0, v88, v89, v25);
  v76 = v20;
  v77 = v18;
  v75 = v13;
  v78 = v11;
  if (result >= v23)
  {
    v49 = v89;
    v93 = v89;
    v94 = v81;
    v50 = __swift_allocate_boxed_opaque_existential_0(&v90);
    (*(*(v49 - 8) + 16))(v50, v88, v49);
    v80(&v90, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v90, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v69 = result;
  if (!__OFSUB__(v23, result))
  {
    v27 = (*(*v21 + 168))(66, 0x800000, 0, v23 - result, v88, v89, v25);
    v28 = v86;
    v29 = v87;
    v30 = v77;
    v31 = v76;
    v32 = v27;

    if (sub_1CF9E6DF8())
    {
      v40 = 0;
      v41 = (*v28 + 312);
      v73 = *v41;
      v72 = v41;
      v74 = (v85 + 16);
      v71 = (v85 + 32);
      v70 = (v29 + 8);
      while (1)
      {
        v42 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v42)
        {
          result = (*(v85 + 16))(v31, v32 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v40, AssociatedTypeWitness);
        }

        else
        {
          result = sub_1CF9E7998();
          if (v30 != 8)
          {
            goto LABEL_21;
          }

          v90 = result;
          (*v74)(v31, &v90, AssociatedTypeWitness);
          result = swift_unknownObjectRelease();
        }

        if (__OFADD__(v40, 1))
        {
          break;
        }

        v87 = v40 + 1;
        v43 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v45 = swift_getAssociatedConformanceWitness();
        v90 = AssociatedTypeWitness;
        v91 = v43;
        v92 = AssociatedConformanceWitness;
        v93 = v45;
        type metadata accessor for ReconciliationID(255, &v90);
        v46 = *(swift_getTupleTypeMetadata2() + 48);
        v31 = v76;
        (*v71)(v16, v76, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        v16[v46] = 66;
        v28 = v86;
        v47 = v82;
        swift_storeEnumTagMultiPayload();
        v73(v16);
        (*v70)(v16, v47);
        v48 = sub_1CF9E6DF8();
        ++v40;
        v30 = v77;
        if (v87 == v48)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v32, v33, v34, v35, v36, v37, v38, v39;
    if (v69)
    {
      v32, v51, v52, v53, v54, v55, v56, v57;
      v58 = v80;
    }

    else
    {
      v59 = sub_1CF9E6DF8();
      v32, v60, v61, v62, v63, v64, v65, v66;
      v58 = v80;
      if (!v59)
      {
        (*(*v28 + 592))();
      }
    }

    v67 = v89;
    v93 = v89;
    v94 = v81;
    v68 = __swift_allocate_boxed_opaque_existential_0(&v90);
    (*(*(v67 - 8) + 16))(v68, v88, v67);
    v58(&v90, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v90, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CF57F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a5;
  v56 = a8;
  v54 = a6;
  v57 = a4;
  v60 = a3;
  v12 = *v8;
  v13 = *v8;
  v14 = *(*v8 + 616);
  v61 = v8;
  v15 = *(v12 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v53 = *(v62 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v50 - v18;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v20 = swift_dynamicCastClass()) != 0) && *(v20 + 24) != 1)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = 0;
  }

  v22 = a7;
  v23 = (*(**(a1 + 32) + 632))(v21, v57, a7, *(v56 + 8), v17);
  v51 = v24;
  v50 = v25;
  v52 = v22;
  if (sub_1CF9E6DF8())
  {
    v33 = v13;
    v34 = *(v13 + 608);
    v35 = *(v33 + 624);
    v63 = v15;
    v64 = v34;
    v65 = v14;
    v66 = v35;
    v58 = type metadata accessor for JobResult(0, &v63);
    v63 = v15;
    v64 = v34;
    v65 = v14;
    v66 = v35;
    type metadata accessor for Maintenance.RefreshInheritedContentPolicy(0, &v63);
    v36 = 0;
    v59 = (v62 + 16);
    v37 = (v62 + 8);
    do
    {
      v38 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v38)
      {
        (*(v62 + 16))(v19, v23 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v36, AssociatedTypeWitness);
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v53 != 8)
        {
          __break(1u);
          return result;
        }

        v63 = result;
        (*v59)(v19, &v63, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v40 = v61[15];
      v41 = v61[16];
      v42 = v61[17];
      swift_allocObject();
      v43 = sub_1CF052464(v19, v40, v41, v42);
      (*v37)(v19, AssociatedTypeWitness);
      sub_1CF803A0C(v60, v43);

      ++v36;
    }

    while (v39 != sub_1CF9E6DF8());
  }

  v23, v26, v27, v28, v29, v30, v31, v32;
  v45 = v52;
  v46 = v57;
  v66 = v52;
  v67 = v56;
  if (v51)
  {
    v47 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    v55(&v63, 0, 0, 0, 0);
  }

  else
  {
    v48 = __swift_allocate_boxed_opaque_existential_0(&v63);
    (*(*(v45 - 8) + 16))(v48, v46, v45);
    type metadata accessor for MaintenanceContinuation();
    v49 = swift_allocObject();
    *(v49 + 16) = v50;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 40) = 1;
    v55(&v63, v49, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v63, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF57F90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a8;
  v73 = a7;
  v69 = a6;
  v70 = a5;
  v72 = a4;
  v86 = a3;
  v11 = *v8;
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v84 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v65 - v17;
  v18 = *(v11 + 624);
  v87 = v8;
  v19 = *(v11 + 608);
  v20 = swift_getAssociatedTypeWitness();
  *&v90 = v12;
  *&v89 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = v18;
  v22 = swift_getAssociatedConformanceWitness();
  v85 = AssociatedTypeWitness;
  *&v92 = AssociatedTypeWitness;
  *(&v92 + 1) = v20;
  *&v93 = AssociatedConformanceWitness;
  *(&v93 + 1) = v22;
  v23 = type metadata accessor for ReconciliationID(0, &v92);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v74 = v19;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v30 = *(v30 + 16);
      v32 = *(v31 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v30 = 0;
  }

  v32 = 1;
LABEL_6:
  v33 = (*(**(a1 + 16) + 320))(v30, v32, v72, v73, *(v71 + 8));
  v66 = v34;
  v65 = v35;
  if (sub_1CF9E6DF8())
  {
    v43 = 0;
    v44 = (v24 + 16);
    v91 = (v24 + 32);
    v77 = (v88 + 32);
    v76 = (v88 + 16);
    v75 = v88 + 8;
    *&v45 = v90;
    *(&v45 + 1) = v68;
    v90 = v45;
    *&v45 = v89;
    *(&v45 + 1) = v74;
    v89 = v45;
    v74 = (v24 + 8);
    v81 = v26;
    v82 = v24;
    v79 = v33;
    v80 = v29;
    v78 = (v24 + 16);
    v46 = (v88 + 8);
    do
    {
      v47 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v47)
      {
        (*(v24 + 16))(v29, v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v43, v23);
        v48 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v67 != 8)
        {
          __break(1u);
          return result;
        }

        *&v92 = result;
        (*v44)(v29, &v92, v23);
        swift_unknownObjectRelease();
        v48 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      (*v91)(v26, v29, v23);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v74)(v26, v23);
      }

      else
      {
        v49 = v83;
        v50 = v85;
        (*v77)(v83, v26, v85);
        v51 = v84;
        (*v76)(v84, v49, v50);
        v52 = v87[15];
        v53 = v87[16];
        v54 = v87[17];
        v93 = v90;
        v92 = v89;
        v88 = type metadata accessor for JobResult(0, &v92);
        v93 = v90;
        v92 = v89;
        type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v92);
        v55 = sub_1CF65707C(v51, v52, v53, v54 | 0x80000000);
        v56 = *v46;
        v57 = v51;
        v26 = v81;
        (*v46)(v57, v50);
        sub_1CF803A0C(v86, v55);
        v44 = v78;

        v58 = v49;
        v33 = v79;
        v59 = v50;
        v24 = v82;
        v56(v58, v59);
        v29 = v80;
      }

      ++v43;
    }

    while (v48 != sub_1CF9E6DF8());
  }

  v33, v36, v37, v38, v39, v40, v41, v42;
  v61 = v73;
  *(&v93 + 1) = v73;
  v94 = v71;
  if (v66)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
    (*(*(v61 - 8) + 16))(boxed_opaque_existential_0, v72, v61);
    v70(&v92, 0, 0, 0, 0);
  }

  else
  {
    v63 = __swift_allocate_boxed_opaque_existential_0(&v92);
    (*(*(v61 - 8) + 16))(v63, v72, v61);
    type metadata accessor for MaintenanceContinuation();
    v64 = swift_allocObject();
    *(v64 + 16) = v65;
    *(v64 + 24) = 0;
    *(v64 + 32) = 0;
    *(v64 + 40) = 1;
    v70(&v92, v64, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v92, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58013C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v68 = a8;
  v66 = a6;
  v67 = a5;
  v69 = a4;
  v77 = a3;
  v74 = a1;
  v12 = *v8;
  v14 = v12[76];
  v15 = v12[77];
  v16 = v12[78];
  v83 = v12[75];
  v13 = v83;
  v84 = v14;
  v78 = v16;
  v79 = v14;
  v85 = v15;
  v86 = v16;
  v76 = type metadata accessor for ReconciliationMutation(0, &v83);
  v17 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v19 = &v60 - v18;
  v80 = v15;
  v81 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v65 = sub_1CF9E75D8();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v27 = &v60 - v26;
  v70 = a7;
  v71 = v17;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v28 = swift_dynamicCastClass()) != 0))
  {
    v73 = *(v28 + 16);
    v29 = *(v28 + 24);
  }

  else
  {
    v73 = 0;
    v29 = 1;
  }

  v30 = v12[72];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v75 = AssociatedConformanceWitness;
  v32 = sub_1CF9E6868();
  (*(v21 + 8))(v25, AssociatedTypeWitness);
  if (v32)
  {
    v33 = 1;
  }

  else
  {
    (*(v21 + 16))(v27, &v9[v30], AssociatedTypeWitness);
    v33 = 0;
  }

  v34 = v69;
  v35 = v74;
  (*(v21 + 56))(v27, v33, 1, AssociatedTypeWitness);
  v36 = (*(**(v35 + 16) + 328))(v27, v73, v29, v34, v70, *(v68 + 8));
  v61 = v37;
  v60 = v38;
  v74 = v21;
  v62 = v27;
  if (sub_1CF9E6DF8())
  {
    v83 = v81;
    v84 = v79;
    v85 = v80;
    v86 = v78;
    type metadata accessor for JobResult(0, &v83);
    v46 = 0;
    v72 = (v74 + 32);
    v73 = (v74 + 16);
    ++v71;
    do
    {
      v47 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v47)
      {
        (*(v74 + 16))(v82, v36 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v46, AssociatedTypeWitness);
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v63 != 8)
        {
          __break(1u);
          return result;
        }

        v83 = result;
        (*v73)(v82, &v83, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v48 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      v49 = swift_getAssociatedTypeWitness();
      v50 = swift_getAssociatedConformanceWitness();
      v83 = AssociatedTypeWitness;
      v84 = v49;
      v85 = v75;
      v86 = v50;
      type metadata accessor for ReconciliationID(255, &v83);
      type metadata accessor for ReconciliationSideMutation(255, v81, v80, v51);
      v52 = *(swift_getTupleTypeMetadata2() + 48);
      (*v72)(v19, v82, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      v19[v52] = 0;
      swift_storeEnumTagMultiPayload();
      v53 = v76;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v77, v19);
      (*v71)(v19, v53);
      ++v46;
    }

    while (v48 != sub_1CF9E6DF8());
  }

  v36, v39, v40, v41, v42, v43, v44, v45;
  v55 = v70;
  v56 = v62;
  v86 = v70;
  v87 = v68;
  if (v61)
  {
    v57 = __swift_allocate_boxed_opaque_existential_0(&v83);
    (*(*(v55 - 8) + 16))(v57, v69, v55);
    v67(&v83, 0, 0, 0, 0);
  }

  else
  {
    v58 = __swift_allocate_boxed_opaque_existential_0(&v83);
    (*(*(v55 - 8) + 16))(v58, v69, v55);
    type metadata accessor for MaintenanceContinuation();
    v59 = swift_allocObject();
    *(v59 + 16) = v60;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 40) = 1;
    v67(&v83, v59, 0, 0, 0);
  }

  (*(v64 + 8))(v56, v65);
  return sub_1CEFCCC44(&v83, &unk_1EC4C1B30, &qword_1CFA05300);
}

void sub_1CF580A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v464 = a8;
  v409 = a7;
  v382 = a6;
  v383 = a5;
  v408 = a4;
  v398 = a3;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v472 = *(*v8 + 600);
  v11 = v472;
  v473 = v12;
  v474 = v13;
  v475 = v14;
  v397 = type metadata accessor for ReconciliationMutation(0, &v472);
  v459 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v396 = &v369 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedTypeWitness();
  v410 = v14;
  v412 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v411 = v13;
  v413 = v11;
  v469 = AssociatedTypeWitness;
  v19 = swift_getAssociatedConformanceWitness();
  v472 = AssociatedTypeWitness;
  v473 = v17;
  v474 = AssociatedConformanceWitness;
  v475 = v19;
  v445 = type metadata accessor for ReconciliationID(0, &v472);
  v20 = v445[-1].i64[1];
  MEMORY[0x1EEE9AC00](v445);
  v433 = &v369 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v444 = &v369 - v23;
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v423 = &v369 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v402 = &v369 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v422 = &v369 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v387 = &v369 - v32;
  v472 = v17;
  v473 = AssociatedTypeWitness;
  v454 = v19;
  v474 = v19;
  v475 = AssociatedConformanceWitness;
  v455 = AssociatedConformanceWitness;
  v33 = type metadata accessor for ReconciliationID(0, &v472);
  v418 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v395 = &v369 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v432 = &v369 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v407 = &v369 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v442 = &v369 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v406 = &v369 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v400 = &v369 - v44;
  v373 = v45;
  MEMORY[0x1EEE9AC00](v46);
  v447 = &v369 - v47;
  v461 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v425 = &v369 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v421 = &v369 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v401 = &v369 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v389 = &v369 - v55;
  v450 = sub_1CF9E75D8();
  v456 = *(v450 - 8);
  MEMORY[0x1EEE9AC00](v450);
  v386 = &v369 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v448 = &v369 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v403 = &v369 - v60;
  v61 = sub_1CF9E75D8();
  v453 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v431 = &v369 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v430 = &v369 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v388 = &v369 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v466 = &v369 - v68;
  v470 = v17;
  v69 = sub_1CF9E75D8();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v429 = &v369 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v428 = &v369 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v391 = &v369 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v465 = &v369 - v77;
  v446 = v33;
  v78 = v69;
  v390 = sub_1CF9E6E58();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v394 = *(TupleTypeMetadata3 - 8);
  v372 = *(v394 + 64);
  v79 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v399 = &v369 - v80;
  v457 = v24;
  v458 = v20;
  v460 = v70;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v81 = swift_dynamicCastClass()) != 0) && *(v81 + 24) != 1)
  {
    v82 = *(v81 + 16);
  }

  else
  {
    v82 = 0;
  }

  v83 = *(v464 + 8);
  v84 = (*(**(a1 + 16) + 488))(v82, v408, v409, v83, v79);
  v371 = v87;
  v404 = v83;
  v370 = v88;
  v416 = 0;
  v405 = a1;
  v89 = v84;
  v90 = TupleTypeMetadata3;
  v91 = sub_1CF9E6DF8();
  v99 = v469;
  v100 = v446;
  if (!v91)
  {
LABEL_109:
    v89, v92, v93, v94, v95, v96, v97, v98;
    v318 = v409;
    v475 = v409;
    v476 = v464;
    if (v371)
    {
      v319 = __swift_allocate_boxed_opaque_existential_0(&v472);
      (*(*(v318 - 8) + 16))(v319, v408, v318);
      v383(&v472, 0, 0, 0, 0);
    }

    else
    {
      v320 = __swift_allocate_boxed_opaque_existential_0(&v472);
      (*(*(v318 - 8) + 16))(v320, v408, v318);
      type metadata accessor for MaintenanceContinuation();
      v321 = swift_allocObject();
      *(v321 + 16) = v370;
      *(v321 + 24) = 0;
      *(v321 + 32) = 0;
      *(v321 + 40) = 1;
      v383(&v472, v321, 0, 0, 0);
    }

    goto LABEL_6;
  }

  v101 = v61;
  v102 = 0;
  v381 = (v394 + 16);
  v380 = *(v90 + 48);
  v379 = (v460 + 4);
  v378 = (v453 + 32);
  v377 = *(v90 + 64);
  v384 = (v418 + 56);
  v462 = (v461 + 6);
  v463 = v460 + 2;
  v449 = (v456 + 8);
  v441 = (v461 + 4);
  v427 = (v461 + 2);
  v451 = (v418 + 8);
  v439 = (v461 + 1);
  v437 = (v460 + 1);
  v460 = (v457 + 48);
  v461 = (v453 + 16);
  v440 = (v457 + 32);
  v426 = (v457 + 16);
  anon_8 = v458->_anon_8;
  v438 = (v457 + 8);
  v436 = (v453 + 8);
  v376 = (v456 + 16);
  v375 = (v418 + 48);
  v417 = (v418 + 32);
  v419 = (v418 + 16);
  v385 = (v459 + 8);
  v467 = v61;
  v468 = v78;
  v374 = v89;
  while (1)
  {
    v112 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v112)
    {
      (*(v394 + 16))(v399, v89 + ((*(v394 + 80) + 32) & ~*(v394 + 80)) + *(v394 + 72) * v102, v90);
      v113 = v391;
    }

    else
    {
      v317 = sub_1CF9E7998();
      v113 = v391;
      if (v372 != 8)
      {
        goto LABEL_127;
      }

      v472 = v317;
      (*v381)(v399, &v472, v90);
      swift_unknownObjectRelease();
    }

    v114 = v384;
    v115 = __OFADD__(v102, 1);
    v116 = v102 + 1;
    if (v115)
    {
      goto LABEL_125;
    }

    v117 = v399;
    v118 = *&v399[v377];
    v119 = v465;
    v120 = v468;
    (*v379)(v465, v399, v468);
    (*v378)(v466, &v117[v380], v101);
    v121 = v403;
    v453 = *v114;
    (v453)(v403, 1, 1, v100);
    v472 = v118;
    v414 = v118;

    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v452 = WitnessTable;
    v123 = sub_1CF9E7078();
    v471 = v123;
    v459 = *v463;
    (v459)(v113, v119, v120);
    v458 = *v462;
    v124 = (v458)(v113, 1, v470);
    v392 = v116;
    if (v124 == 1)
    {
      (*v437)(v113, v120);
    }

    else
    {
      v457 = *v449;
      v457(v121, v450);
      v125 = v389;
      v126 = v470;
      (*v441)(v389, v113, v470);
      (*v427)(v121, v125, v126);
      swift_storeEnumTagMultiPayload();
      (v453)(v121, 0, 1, v100);
      v127 = v416;
      v128 = (*(**(v405 + 24) + 280))(v125, v408, v409, v404);
      if (v127)
      {
        v414, v129, v130, v131, v132, v133, v134, v135;
        v374, v346, v347, v348, v349, v350, v351, v352;
        (*v439)(v389, v470);
        v457(v403, v450);
        (*v436)(v466, v467);
        (*v437)(v465, v468);
        v360 = v123;
LABEL_117:
        v360, v353, v354, v355, v356, v357, v358, v359;
        v344 = v409;
        v345 = v464;
        goto LABEL_118;
      }

      v136 = v128;
      v137 = v100;
      v416 = 0;
      v472 = v413;
      v473 = v412;
      v474 = v411;
      v475 = v410;
      type metadata accessor for Bouncing.BounceItem(0, &v472);
      if (sub_1CF9E6DF8())
      {
        v145 = 4;
        while (1)
        {
          v146 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v146)
          {
          }

          else
          {
            sub_1CF9E7998();
          }

          v147 = v145 - 3;
          if (__OFADD__(v145 - 4, 1))
          {
            break;
          }

          v148 = v447;
          sub_1CF9AD28C(v447);
          sub_1CF9E7068();
          v149 = v448;
          sub_1CF9E7008();

          (*v451)(v148, v137);
          v457(v149, v450);
          ++v145;
          if (v147 == sub_1CF9E6DF8())
          {
            goto LABEL_25;
          }
        }

LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        return;
      }

LABEL_25:
      v136, v138, v139, v140, v141, v142, v143, v144;
      (*v439)(v389, v470);
      v99 = v469;
      v100 = v137;
    }

    v150 = v467;
    v151 = v388;
    v457 = *v461;
    (v457)(v388, v466, v467);
    v456 = *v460;
    v152 = (v456)(v151, 1, v99);
    v153 = v442;
    v154 = v407;
    v155 = v406;
    if (v152 == 1)
    {
      (*v436)(v151, v150);
      goto LABEL_39;
    }

    v156 = v403;
    v157 = v450;
    v158 = *v449;
    (*v449)(v403, v450);
    v159 = v387;
    (*v440)(v387, v151, v99);
    (*v426)(v156, v159, v99);
    swift_storeEnumTagMultiPayload();
    (v453)(v156, 0, 1, v100);
    v127 = v416;
    v160 = (*(**(v405 + 24) + 272))(v159, v408, v409, v404);
    if (v127)
    {
      v414, v161, v162, v163, v164, v165, v166, v167;
      v374, v361, v362, v363, v364, v365, v366, v367;
      (*v438)(v387, v469);
      v158(v403, v157);
      (*v436)(v466, v467);
      (*v437)(v465, v468);
      v360 = v471;
      goto LABEL_117;
    }

    v168 = v160;
    v416 = 0;
    v472 = v412;
    v473 = v413;
    v474 = v410;
    v475 = v411;
    type metadata accessor for Bouncing.BounceItem(0, &v472);
    if (sub_1CF9E6DF8())
    {
      v176 = 4;
      do
      {
        v177 = v176 - 4;
        v178 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v178)
        {

          v179 = v176 - 3;
          if (__OFADD__(v177, 1))
          {
            goto LABEL_123;
          }
        }

        else
        {
          sub_1CF9E7998();
          v179 = v176 - 3;
          if (__OFADD__(v177, 1))
          {
            goto LABEL_123;
          }
        }

        v180 = v444;
        sub_1CF9AD28C(v444);
        v181 = v447;
        v182 = v445;
        sub_1CF050768(v445, v447);
        v183 = v180;
        v184 = v446;
        (*anon_8)(v183, v182);
        sub_1CF9E7068();
        v185 = v448;
        sub_1CF9E7008();

        v186 = v181;
        v100 = v184;
        (*v451)(v186, v184);
        v158(v185, v450);
        ++v176;
      }

      while (v179 != sub_1CF9E6DF8());
    }

    v168, v169, v170, v171, v172, v173, v174, v175;
    v99 = v469;
    (*v438)(v387, v469);
    v153 = v442;
    v154 = v407;
    v155 = v406;
LABEL_39:
    v187 = v386;
    v188 = v403;
    v189 = v450;
    (*v376)(v386, v403, v450);
    if ((*v375)(v187, 1, v100) != 1)
    {
      break;
    }

    v414, v190, v191, v192, v193, v194, v195, v196;
    v103 = *v449;
    (*v449)(v188, v189);
    v101 = v467;
    (*v436)(v466, v467);
    (*v437)(v465, v468);
    v471, v104, v105, v106, v107, v108, v109, v110;
    v103(v187, v189);
LABEL_10:
    v89 = v374;
    v90 = TupleTypeMetadata3;
    v111 = sub_1CF9E6DF8();
    v102 = v392;
    if (v392 == v111)
    {
      goto LABEL_109;
    }
  }

  v415 = *v417;
  v415(v400, v187, v100);
  v197 = v414;
  if (!sub_1CF9E6DF8())
  {
LABEL_94:
    v197, v198, v199, v200, v201, v202, v203, v204;
    v302 = 0;
    tester = v471[1].tester;
    v303 = *v471[1].tester;
    v458 = v471;
    v305 = 1 << LOBYTE(v471[1].super.isa);
    if (v305 < 64)
    {
      v306 = ~(-1 << v305);
    }

    else
    {
      v306 = -1;
    }

    v307 = v306 & v303;
    v308 = (v305 + 63) >> 6;
    v101 = v467;
    v309 = v468;
    if ((v306 & v303) != 0)
    {
      do
      {
        v310 = v302;
LABEL_103:
        v311 = __clz(__rbit64(v307));
        v307 &= v307 - 1;
        v312 = *(v418 + 16);
        v313 = v395;
        v100 = v446;
        v312(v395, *v458[1].tree + *(v418 + 72) * (v311 | (v310 << 6)), v446);
        v472 = v413;
        v473 = v412;
        v474 = v411;
        v475 = v410;
        v459 = type metadata accessor for JobResult(0, &v472);
        v314 = *(swift_getTupleTypeMetadata2() + 48);
        v315 = v396;
        v312(v396, v400, v100);
        v415((v315 + v314), v313, v100);
        v316 = v397;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v398, v315);
        (*v385)(v315, v316);
        v99 = v469;
        v101 = v467;
        v309 = v468;
      }

      while (v307);
    }

    while (1)
    {
      v310 = v302 + 1;
      if (__OFADD__(v302, 1))
      {
        break;
      }

      if (v310 >= v308)
      {
        (*v451)(v400, v100);
        (*v449)(v403, v450);
        (*v436)(v466, v101);
        (*v437)(v465, v309);

        goto LABEL_10;
      }

      v307 = *&tester[8 * v310];
      ++v302;
      if (v307)
      {
        v302 = v310;
        goto LABEL_103;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v205 = 0;
  v206 = v425;
  v207 = v464;
  while (1)
  {
    v209 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v209)
    {
      v210 = v197 + ((*(v418 + 80) + 32) & ~*(v418 + 80)) + *(v418 + 72) * v205;
      v211 = *(v418 + 16);
      v211(v155, v210, v100);
    }

    else
    {
      v301 = sub_1CF9E7998();
      if (v373 != 8)
      {
        goto LABEL_126;
      }

      v472 = v301;
      v211 = *v419;
      (*v419)(v155, &v472, v100);
      swift_unknownObjectRelease();
    }

    v115 = __OFADD__(v205, 1);
    v212 = v205 + 1;
    v99 = v469;
    if (v115)
    {
      goto LABEL_124;
    }

    v420 = v212;
    v213 = v207;
    v415(v153, v155, v100);
    v214 = v471;
    if ((sub_1CF9E7048() & 1) == 0)
    {
      v207 = v213;
      goto LABEL_43;
    }

    v211(v154, v153, v100);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    v215 = v402;
    v434 = *v440;
    v434(v402, v154, v99);
    v127 = v416;
    v216 = (*(**(v405 + 24) + 272))(v215, v408, v409, v404);
    v225 = v467;
    v224 = v468;
    if (v127)
    {
      v374, v217, v218, v219, v220, v221, v222, v223;
      v414, v322, v323, v324, v325, v326, v327, v328;
      (*v438)(v402, v469);
      goto LABEL_114;
    }

    v226 = v216;
    v416 = 0;
    v472 = v412;
    v473 = v413;
    v474 = v410;
    v475 = v411;
    v227 = type metadata accessor for Bouncing.BounceItem(0, &v472);
    v207 = v213;
    v235 = v226;
    if (sub_1CF9E6DF8())
    {
      v236 = 4;
      v424 = v235;
      v435 = v227;
      do
      {
        v237 = v236 - 4;
        v238 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v238)
        {

          v239 = (v236 - 3);
          if (__OFADD__(v237, 1))
          {
            goto LABEL_119;
          }
        }

        else
        {
          sub_1CF9E7998();
          v239 = (v236 - 3);
          if (__OFADD__(v237, 1))
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }
        }

        v453 = v239;
        v240 = v429;
        (v459)(v429, v465, v224);
        if ((v458)(v240, 1, v470) == 1)
        {
          (*v437)(v240, v224);
        }

        else
        {
          v241 = v206;
          v242 = v206;
          v243 = v470;
          (*v441)(v241, v240, v470);
          v244 = v444;
          sub_1CF9AD28C(v444);
          v245 = v433;
          (*v427)(v433, v242, v243);
          v246 = v445;
          swift_storeEnumTagMultiPayload();
          v247 = sub_1CF024490(v244, v245, v469, v243);
          v248 = *anon_8;
          (*anon_8)(v245, v246);
          v248(v244, v246);
          if (v247)
          {
            v100 = v446;
            sub_1CF9E7068();
            v249 = v448;
            sub_1CF9E7008();
            (*v449)(v249, v450);
            (*v439)(v242, v470);
            v207 = v464;
          }

          else
          {
            (*v439)(v242, v470);
            v207 = v464;
            v100 = v446;
          }

          v206 = v242;
          v225 = v467;
          v224 = v468;
        }

        v250 = v431;
        (v457)(v431, v466, v225);
        v251 = v469;
        if ((v456)(v250, 1, v469) == 1)
        {

          (*v436)(v250, v225);
        }

        else
        {
          v252 = v423;
          v434(v423, v250, v251);
          v253 = v444;
          sub_1CF9AD28C(v444);
          v254 = v433;
          (*v426)(v433, v252, v251);
          v255 = v445;
          swift_storeEnumTagMultiPayload();
          v256 = sub_1CF024490(v253, v254, v251, v470);
          v257 = *anon_8;
          (*anon_8)(v254, v255);
          v257(v253, v255);
          if (v256)
          {
            v100 = v446;
            sub_1CF9E7068();
            v258 = v448;
            sub_1CF9E7008();

            (*v449)(v258, v450);
            (*v438)(v252, v251);
            v207 = v464;
          }

          else
          {
            (*v438)(v252, v251);

            v207 = v464;
            v100 = v446;
          }

          v225 = v467;
          v224 = v468;
          v206 = v425;
          v235 = v424;
        }

        ++v236;
      }

      while (v453 != sub_1CF9E6DF8());
    }

    v235, v228, v229, v230, v231, v232, v233, v234;
    v99 = v469;
    (*v438)(v402, v469);
    v153 = v442;
    v154 = v407;
    v155 = v406;
LABEL_43:
    (*v451)(v153, v100);
    v197 = v414;
    v208 = sub_1CF9E6DF8();
    v205 = v420;
    if (v420 == v208)
    {
      goto LABEL_94;
    }
  }

  v259 = v401;
  v424 = *v441;
  (v424)(v401, v154, v470);
  v127 = v416;
  v260 = (*(**(v405 + 24) + 280))(v259, v408, v409, v404);
  v225 = v467;
  v224 = v468;
  if (!v127)
  {
    v268 = v260;
    v416 = 0;
    v472 = v413;
    v473 = v412;
    v474 = v411;
    v475 = v410;
    v269 = type metadata accessor for Bouncing.BounceItem(0, &v472);
    v270 = sub_1CF9E6DF8();
    v278 = v450;
    v207 = v213;
    if (v270)
    {
      v279 = 4;
      v435 = v268;
      v434 = v269;
      do
      {
        v280 = v279 - 4;
        v281 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v281)
        {

          v282 = (v279 - 3);
          if (__OFADD__(v280, 1))
          {
            goto LABEL_120;
          }
        }

        else
        {
          sub_1CF9E7998();
          v282 = (v279 - 3);
          if (__OFADD__(v280, 1))
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        v453 = v282;
        v283 = v428;
        (v459)(v428, v465, v224);
        if ((v458)(v283, 1, v470) == 1)
        {
          (*v437)(v283, v224);
        }

        else
        {
          v284 = v421;
          v285 = v470;
          (v424)(v421, v283, v470);
          v286 = v447;
          sub_1CF9AD28C(v447);
          v287 = v432;
          (*v427)(v432, v284, v285);
          swift_storeEnumTagMultiPayload();
          v288 = sub_1CF024490(v286, v287, v285, v469);
          v289 = v100;
          v290 = *v451;
          (*v451)(v287, v289);
          v290(v286, v289);
          if (v288)
          {
            sub_1CF9E7068();
            v291 = v448;
            sub_1CF9E7008();
            (*v449)(v291, v278);
          }

          (*v439)(v284, v470);
          v207 = v464;
          v225 = v467;
          v224 = v468;
          v100 = v289;
          v268 = v435;
        }

        v292 = v430;
        (v457)(v430, v466, v225);
        v293 = v469;
        if ((v456)(v292, 1, v469) == 1)
        {

          (*v436)(v292, v225);
        }

        else
        {
          v294 = v422;
          (*v440)(v422, v292, v293);
          v295 = v447;
          sub_1CF9AD28C(v447);
          v296 = v432;
          (*v426)(v432, v294, v293);
          swift_storeEnumTagMultiPayload();
          v297 = sub_1CF024490(v295, v296, v470, v293);
          v298 = v100;
          v299 = *v451;
          (*v451)(v296, v298);
          v299(v295, v298);
          if (v297)
          {
            sub_1CF9E7068();
            v300 = v448;
            sub_1CF9E7008();

            v278 = v450;
            (*v449)(v300, v450);
            (*v438)(v294, v293);
            v207 = v464;
          }

          else
          {
            (*v438)(v294, v293);

            v207 = v464;
            v278 = v450;
          }

          v225 = v467;
          v224 = v468;
          v100 = v298;
          v268 = v435;
        }

        ++v279;
      }

      while (v453 != sub_1CF9E6DF8());
    }

    v268, v271, v272, v273, v274, v275, v276, v277;
    (*v439)(v401, v470);
    v99 = v469;
    v153 = v442;
    v154 = v407;
    v155 = v406;
    v206 = v425;
    goto LABEL_43;
  }

  v374, v261, v262, v263, v264, v265, v266, v267;
  v414, v329, v330, v331, v332, v333, v334, v335;
  (*v439)(v401, v470);
LABEL_114:
  v336 = *v451;
  (*v451)(v153, v100);
  v336(v400, v100);
  (*v449)(v403, v450);
  (*v436)(v466, v225);
  (*v437)(v465, v224);
  v214, v337, v338, v339, v340, v341, v342, v343;
  v344 = v409;
  v345 = v213;
LABEL_118:
  v368 = v408;
  v475 = v344;
  v476 = v345;
  v85 = __swift_allocate_boxed_opaque_existential_0(&v472);
  (*(*(v344 - 8) + 16))(v85, v368, v344);
  v86 = v127;
  v383(&v472, 0, 0, 0, v127);

LABEL_6:
  sub_1CEFCCC44(&v472, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v70 = a7;
  v71 = a6;
  v68 = a5;
  v80 = a3;
  *&v84 = a1;
  v11 = *v8;
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v78 = &v61 - v15;
  v16 = *(v11 + 624);
  v81 = v8;
  v17 = *(v11 + 608);
  v18 = swift_getAssociatedTypeWitness();
  v67 = v12;
  *&v83 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = v16;
  v20 = swift_getAssociatedConformanceWitness();
  v79 = AssociatedTypeWitness;
  *&v85 = AssociatedTypeWitness;
  *(&v85 + 1) = v18;
  *&v86 = AssociatedConformanceWitness;
  *(&v86 + 1) = v20;
  v21 = type metadata accessor for ReconciliationID(0, &v85);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v61 - v26;
  v66 = v17;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v27 = *(v27 + 16);
      v29 = *(v28 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = 1;
LABEL_6:
  v30 = (*(**(v84 + 16) + 336))(v27, v29, a4);
  v62 = v31;
  v61 = v32;
  v63 = a4;
  v33 = sub_1CF9E6DF8();
  v41 = v82;
  if (v33)
  {
    v42 = v24;
    v43 = 0;
    v44 = (v22 + 16);
    v45 = (v22 + 32);
    v46 = v73++;
    v74 = (v46 + 4);
    v72 = (v22 + 8);
    *&v47 = v67;
    *(&v47 + 1) = v65;
    v84 = v47;
    *&v47 = v83;
    *(&v47 + 1) = v66;
    v83 = v47;
    v76 = v30;
    v77 = v22;
    v75 = (v22 + 32);
    do
    {
      v48 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v48)
      {
        (*(v22 + 16))(v41, v30 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v43, v21);
        v49 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v64 != 8)
        {
          __break(1u);
          return result;
        }

        *&v85 = result;
        (*v44)(v41, &v85, v21);
        swift_unknownObjectRelease();
        v49 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      (*v45)(v42, v41, v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v72)(v42, v21);
      }

      else
      {
        v50 = v78;
        v51 = v79;
        (*v74)(v78, v42, v79);
        v86 = v84;
        v85 = v83;
        type metadata accessor for JobResult(0, &v85);
        v86 = v84;
        v85 = v83;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v85);
        v52 = sub_1CF656F5C(v50, v81[15], v81[16], v81[17]);
        v30 = v76;
        sub_1CF803A0C(v80, v52);
        v41 = v82;

        v53 = v50;
        v22 = v77;
        v54 = v51;
        v45 = v75;
        (*v73)(v53, v54);
      }

      ++v43;
    }

    while (v49 != sub_1CF9E6DF8());
  }

  v30, v34, v35, v36, v37, v38, v39, v40;
  v56 = v70;
  v57 = v63;
  *(&v86 + 1) = v70;
  v87 = v69;
  if (v62)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v85);
    (*(*(v56 - 8) + 16))(boxed_opaque_existential_0, v57, v56);
    v68(&v85, 0, 0, 0, 0);
  }

  else
  {
    v59 = __swift_allocate_boxed_opaque_existential_0(&v85);
    (*(*(v56 - 8) + 16))(v59, v57, v56);
    type metadata accessor for MaintenanceContinuation();
    v60 = swift_allocObject();
    *(v60 + 16) = v61;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0;
    *(v60 + 40) = 1;
    v68(&v85, v60, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v85, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF583D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v163 = a8;
  v199 = a7;
  v161 = a6;
  v162 = a5;
  v194 = a4;
  v166 = a3;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v202 = *(*v8 + 600);
  v11 = v202;
  v203 = v12;
  v204 = v13;
  v205 = v14;
  v165 = type metadata accessor for ReconciliationMutation(0, &v202);
  v189 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v143 - v15;
  v17 = type metadata accessor for SnapshotItem(255, v12, v14, v16);
  v153 = sub_1CF9E75D8();
  v179 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v159 = &v143 - v18;
  v160 = v17;
  v172 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v143 - v20;
  v180 = v14;
  v182 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v169 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v167 = &v143 - v22;
  v181 = v13;
  v183 = v11;
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1CF9E75D8();
  v152 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v143 - v25;
  v156 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v143 - v28;
  v173 = AssociatedTypeWitness;
  v30 = sub_1CF9E75D8();
  v158 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v192 = &v143 - v33;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v196 = *(TupleTypeMetadata3 - 8);
  v197 = TupleTypeMetadata3;
  v151 = *(v196 + 64);
  v35 = MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v200 = &v143 - v36;
  v191 = v29;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v37 = swift_dynamicCastClass()) != 0) && *(v37 + 24) != 1)
  {
    v38 = *(v37 + 16);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v163 + 8);
  v44 = (*(**(a1 + 16) + 344))(0, v38, v194, v199, v39, v35);
  v176 = a1;
  v147 = v45;
  v175 = v39;
  v143 = v46;
  v198 = 0;
  v47 = v197;
  v48 = sub_1CF9E6DF8();
  v57 = v191;
  v56 = v192;
  if (v48)
  {
    v58 = 0;
    v190 = (v196 + 16);
    v59 = *(v47 + 48);
    v187 = *(v47 + 64);
    v188 = v59;
    v186 = v158 + 4;
    v185 = (v152 + 32);
    v184 = (v156 + 6);
    v170 = v156 + 4;
    v171 = (v156 + 1);
    v195 = (v158 + 1);
    v158 += 2;
    v157 = (v169 + 6);
    v150 = (v169 + 4);
    v148 = (v172 + 48);
    v146 = (v172 + 32);
    v156 += 2;
    anon_8 = v189->_anon_8;
    v145 = (v172 + 8);
    v149 = v169 + 1;
    v144 = (v179 + 8);
    v169 = (v152 + 8);
    v189 = v44;
    v193 = v23;
    v178 = v30;
    v177 = v24;
    v174 = v26;
    while (1)
    {
      v60 = v44;
      v44 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v44)
      {
        (*(v196 + 16))(v200, v60 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v58, v47);
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v151 != 8)
        {
          __break(1u);
          return result;
        }

        v202 = result;
        v44 = result;
        (*v190)(v200, &v202, v47);
        swift_unknownObjectRelease();
        v61 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v62 = v200;
      v63 = v200[v187];
      (*v186)(v56, &v200[v188], v30);
      (*v185)(v26, v62, v24);
      if ((*v184)(v26, 1, v23) != 1)
      {
        break;
      }

      (*v195)(v56, v30);
      (*v169)(v26, v24);
LABEL_10:
      v44 = v189;
      v47 = v197;
      ++v58;
      if (v61 == sub_1CF9E6DF8())
      {
        goto LABEL_41;
      }
    }

    v179 = v61;
    (*v170)(v57, v26, v23);
    v64 = *(v176 + 24);
    v65 = v183;
    v66 = v182;
    v202 = v183;
    v203 = v182;
    v67 = v181;
    v68 = v180;
    v204 = v181;
    v205 = v180;
    type metadata accessor for ItemJob(255, &v202);
    if (v63 == 1)
    {
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v70 = sub_1CF9E6D68();
      v72 = v71;
      v202 = v65;
      v203 = v66;
      v204 = v67;
      v205 = v68;
      ChildrenMetadata = type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v202);
    }

    else
    {
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v70 = sub_1CF9E6D68();
      v72 = v74;
      v202 = v65;
      v203 = v66;
      v204 = v67;
      v205 = v68;
      ChildrenMetadata = type metadata accessor for Ingestion.FetchContent(0, &v202);
    }

    *v72 = ChildrenMetadata;
    v75 = sub_1CF045898(v70, MetatypeMetadata);
    v57 = v191;
    v76 = v198;
    v77 = (*(*v64 + 312))(v191, v75, v194, v199, v175);
    if (v76)
    {
      v189, v78, v79, v80, v81, v82, v83, v84;
      v75, v133, v134, v135, v136, v137, v138, v139;
      v23 = v193;
      v30 = v178;
LABEL_47:
      v140 = v192;
      v141 = v195;
      (*v171)(v57, v23);
      (*v141)(v140, v30);
      v142 = v194;
      v40 = v199;
      v205 = v199;
      v206 = v163;
      v41 = __swift_allocate_boxed_opaque_existential_0(&v202);
      (*(*(v40 - 8) + 16))(v41, v142, v40);
      v42 = v76;
      v162(&v202, 0, 0, 0, v76);

      return sub_1CEFCCC44(&v202, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v85 = v77;
    v198 = 0;
    v75, v78, v79, v80, v81, v82, v83, v84;
    v202 = v85;
    sub_1CF9E6E58();
    swift_getWitnessTable();
    sub_1CF9E7118();
    v85, v86, v87, v88, v89, v90, v91, v92;
    v30 = v178;
    v56 = v192;
    if (v201)
    {
      v94 = *(v201 + 96);
      v93 = *(v201 + 104);
      v95 = *(v201 + 112);
      sub_1CF03C530(v94, v93, *(v201 + 112));

      v24 = v177;
      v26 = v174;
      if (v95 != 4)
      {
        v23 = v193;
        if (v95 == 3)
        {
          sub_1CF03D7A8(v94, v93, 3u);
          goto LABEL_23;
        }

        sub_1CF03D7A8(v94, v93, v95);
LABEL_30:
        (*v171)(v57, v23);
        (*v195)(v56, v30);
LABEL_35:
        v61 = v179;
        goto LABEL_10;
      }

      sub_1CF03D7A8(v94, v93, 4u);
      v23 = v193;
      if (v94 & 0xFFFFFFFFFFFFFFFELL | v93)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = v193;
      v24 = v177;
    }

LABEL_23:
    v96 = v168;
    (*v158)(v168, v56, v30);
    v97 = v173;
    if ((*v157)(v96, 1, v173) == 1)
    {
      (*v195)(v96, v30);
    }

    else
    {
      v98 = v167;
      (*v150)(v167, v96, v97);
      v99 = v159;
      v100 = v98;
      v76 = v198;
      (*(**(v176 + 40) + 240))(v100, 1, v194, v199, v175);
      if (v76)
      {
        v189, v101, v102, v103, v104, v105, v106, v107;
        (*v149)(v167, v97);
        goto LABEL_47;
      }

      v198 = 0;
      v108 = v160;
      if ((*v148)(v99, 1, v160) == 1)
      {
        (*v149)(v167, v97);
        (*v144)(v99, v153);
      }

      else
      {
        v109 = v154;
        (*v146)(v154, v99, v108);
        WitnessTable = swift_getWitnessTable();
        if ((sub_1CF937C7C(v108, WitnessTable) & 1) == 0)
        {
          v120 = v183;
          v202 = v183;
          v203 = v182;
          v121 = v181;
          v204 = v181;
          v205 = v180;
          v172 = type metadata accessor for JobResult(0, &v202);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v30 = v178;
          v123 = v173;
          v124 = swift_getAssociatedConformanceWitness();
          v202 = v23;
          v203 = v123;
          v204 = AssociatedConformanceWitness;
          v205 = v124;
          type metadata accessor for ReconciliationID(255, &v202);
          type metadata accessor for ReconciliationSideMutation(255, v120, v121, v125);
          v126 = *(swift_getTupleTypeMetadata2() + 48);
          v127 = v164;
          (*v156)(v164, v57, v193);
          swift_storeEnumTagMultiPayload();
          *(v127 + v126) = 2;
          v23 = v193;
          swift_storeEnumTagMultiPayload();
          v128 = v165;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v166, v127);
          (*anon_8)(v127, v128);
          (*v145)(v154, v160);
          (*v149)(v167, v173);
          (*v171)(v57, v23);
          v56 = v192;
          (*v195)(v192, v30);
          goto LABEL_34;
        }

        (*v145)(v109, v108);
        (*v149)(v167, v97);
      }
    }

    v111 = v97;
    v112 = v183;
    v202 = v183;
    v203 = v182;
    v113 = v181;
    v204 = v181;
    v205 = v180;
    v172 = type metadata accessor for JobResult(0, &v202);
    v114 = swift_getAssociatedConformanceWitness();
    v115 = swift_getAssociatedConformanceWitness();
    v202 = v23;
    v203 = v111;
    v204 = v114;
    v205 = v115;
    type metadata accessor for ReconciliationID(255, &v202);
    type metadata accessor for ReconciliationSideMutation(255, v112, v113, v116);
    v117 = *(swift_getTupleTypeMetadata2() + 48);
    v118 = v164;
    v57 = v191;
    (*v156)(v164, v191, v193);
    swift_storeEnumTagMultiPayload();
    *(v118 + v117) = 0;
    v23 = v193;
    swift_storeEnumTagMultiPayload();
    v119 = v165;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v166, v118);
    (*anon_8)(v118, v119);
    (*v171)(v57, v23);
    v56 = v192;
    v30 = v178;
    (*v195)(v192, v178);
    v24 = v177;
LABEL_34:
    v26 = v174;
    goto LABEL_35;
  }

LABEL_41:
  v44, v49, v50, v51, v52, v53, v54, v55;
  v129 = v199;
  v205 = v199;
  v206 = v163;
  if (v147)
  {
    v130 = __swift_allocate_boxed_opaque_existential_0(&v202);
    (*(*(v129 - 8) + 16))(v130, v194, v129);
    v162(&v202, 0, 0, 0, 0);
  }

  else
  {
    v131 = __swift_allocate_boxed_opaque_existential_0(&v202);
    (*(*(v129 - 8) + 16))(v131, v194, v129);
    type metadata accessor for MaintenanceContinuation();
    v132 = swift_allocObject();
    *(v132 + 16) = v143;
    *(v132 + 24) = 0;
    *(v132 + 32) = 0;
    *(v132 + 40) = 1;
    v162(&v202, v132, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v202, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5851F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v123 = a8;
  v128 = a7;
  v138 = a3;
  v127 = a1;
  v14 = *(*v9 + 608);
  v15 = *(*v9 + 616);
  v16 = *(*v9 + 624);
  v146 = *(*v9 + 600);
  v152 = v146;
  v153 = v14;
  v144 = v15;
  v154 = v15;
  v155 = v16;
  v133 = type metadata accessor for ReconciliationMutation(0, &v152);
  v17 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v132 = &v119 - v18;
  v143 = v16;
  v145 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v147 = &v119 - v21;
  v150 = v22;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v139 = sub_1CF9E75D8();
  v141 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v119 - v27;
  v122 = a5;
  v121 = a6;
  v148 = v17;
  v142 = v20;
  if (!a2)
  {
    v29 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
LABEL_5:
    v31 = 1;
    goto LABEL_6;
  }

  v30 = v29;
  v29 = *(v29 + 16);
  v31 = *(v30 + 24);
LABEL_6:
  v32 = *(v123 + 8);
  v33 = 0;
  v34 = (*(**(v127 + 16) + 352))(v29, v31, a4, v128, v32);
  v120 = v38;
  v125 = v32;
  v119 = v39;
  v129 = 0;
  v126 = a4;
  v149 = TupleTypeMetadata3 - 8;
  v137 = (v141 + 32);
  v135 = (v142 + 32);
  v136 = (v142 + 8);
  v131 = (v142 + 16);
  v130 = (v148 + 8);
  v40 = v147;
  v134 = v25;
  v140 = v34;
  v141 = v28;
  v41 = v34;
  v124 = v9;
  while (1)
  {
    if (v33 == sub_1CF9E6DF8())
    {
      v48 = *(TupleTypeMetadata3 - 8);
      (*(v48 + 56))(v25, 1, 1, TupleTypeMetadata3);
      goto LABEL_15;
    }

    v49 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v49 & 1) == 0)
    {
      break;
    }

    v50 = *(TupleTypeMetadata3 - 8);
    (*(v50 + 16))(v25, v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v33, TupleTypeMetadata3);
    v58 = __OFADD__(v33++, 1);
    if (v58)
    {
      goto LABEL_34;
    }

LABEL_14:
    v48 = v50;
    (*(v50 + 56))(v25, 0, 1, TupleTypeMetadata3);
LABEL_15:
    (*v137)(v28, v25, v139);
    if ((*(v48 + 48))(v28, 1, TupleTypeMetadata3) == 1)
    {
      goto LABEL_35;
    }

    v59 = v28[*(TupleTypeMetadata3 + 48)];
    v60 = *&v28[*(TupleTypeMetadata3 + 64)];
    (*v135)(v40, v28, v150);
    if (v59)
    {
      v61 = v59 == 2;
    }

    else
    {
      v61 = 1;
    }

    if (v61)
    {
      v142 = v60;
      v148 = v33;
      goto LABEL_22;
    }

    if (v59 == 1)
    {
      v142 = v60;
      v148 = v33;
      v72 = *(v127 + 24);
      v73 = v145;
      v74 = v146;
      v152 = v145;
      v153 = v146;
      v75 = v143;
      v76 = v144;
      v154 = v143;
      v155 = v144;
      type metadata accessor for ItemJob(255, &v152);
      MetatypeMetadata = swift_getMetatypeMetadata();
      sub_1CF656CD8(MetatypeMetadata, MetatypeMetadata);
      swift_allocObject();
      v78 = sub_1CF9E6D68();
      v152 = v73;
      v153 = v74;
      v154 = v75;
      v155 = v76;
      v40 = v147;
      *v79 = type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v152);
      v80 = sub_1CF045898(v78, MetatypeMetadata);
      v81 = *v72;
      v82 = v129;
      v83 = (*(v81 + 304))(v40, v80, v126, v128, v125);
      if (v82)
      {
        (*v136)(v40, v150);
        v140, v103, v104, v105, v106, v107, v108, v109;
        v80, v110, v111, v112, v113, v114, v115, v116;
        v117 = v128;
        v118 = v126;
        v155 = v128;
        v156 = v123;
        v35 = __swift_allocate_boxed_opaque_existential_0(&v152);
        (*(*(v117 - 8) + 16))(v35, v118, v117);
        v36 = v82;
        v122(&v152, 0, 0, 0, v82);

        return sub_1CEFCCC44(&v152, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v91 = v83;
      v80, v84, v85, v86, v87, v88, v89, v90;
      v152 = v91;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      sub_1CF9E7118();
      v91, v92, v93, v94, v95, v96, v97, v98;
      v41 = v140;
      v129 = 0;
      if (!v151)
      {
        v9 = v124;
LABEL_22:
        v62 = v145;
        v152 = v146;
        v153 = v145;
        v63 = v143;
        v154 = v144;
        v155 = v143;
        type metadata accessor for JobResult(0, &v152);
        v64 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v66 = v150;
        v67 = swift_getAssociatedConformanceWitness();
        v152 = v64;
        v153 = v66;
        v154 = AssociatedConformanceWitness;
        v155 = v67;
        type metadata accessor for ReconciliationID(255, &v152);
        type metadata accessor for ReconciliationSideMutation(255, v62, v63, v68);
        v69 = *(swift_getTupleTypeMetadata2() + 48);
        v70 = v132;
        v40 = v147;
        (*v131)(v132, v147, v66);
        swift_storeEnumTagMultiPayload();
        *(v70 + v69) = 3;
        swift_storeEnumTagMultiPayload();
        v71 = v133;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v138, v70);
        (*v130)(v70, v71);
        v25 = v134;
        v41 = v140;
        v28 = v141;
        v33 = v148;
        if ((v142 & 4) != 0)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      (*v136)(v40, v150);
      v9 = v124;
      v25 = v134;
      v28 = v141;
      v33 = v148;
    }

    else
    {
      v41 = v140;
      if ((v60 & 4) != 0)
      {
LABEL_8:
        v42 = v145;
        v43 = v146;
        v152 = v146;
        v153 = v145;
        v44 = v144;
        v45 = v33;
        v46 = v143;
        v154 = v144;
        v155 = v143;
        type metadata accessor for JobResult(0, &v152);
        v152 = v42;
        v153 = v43;
        v28 = v141;
        v154 = v46;
        v155 = v44;
        v33 = v45;
        v40 = v147;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v152);
        v47 = sub_1CF656F5C(v40, v9[15], v9[16], v9[17]);
        sub_1CF8039C4(v138, v47);
      }

LABEL_9:
      (*v136)(v40, v150);
    }
  }

  result = sub_1CF9E7998();
  v50 = *(TupleTypeMetadata3 - 8);
  if (*(v50 + 64) == 8)
  {
    v152 = result;
    (*(v50 + 16))(v25, &v152, TupleTypeMetadata3);
    swift_unknownObjectRelease();
    v58 = __OFADD__(v33++, 1);
    if (v58)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      v140, v51, v52, v53, v54, v55, v56, v57;
      v99 = v128;
      v155 = v128;
      v156 = v123;
      if (v120)
      {
        v100 = __swift_allocate_boxed_opaque_existential_0(&v152);
        (*(*(v99 - 8) + 16))(v100, v126, v99);
        v122(&v152, 0, 0, 0, 0);
      }

      else
      {
        v101 = __swift_allocate_boxed_opaque_existential_0(&v152);
        (*(*(v99 - 8) + 16))(v101, v126, v99);
        type metadata accessor for MaintenanceContinuation();
        v102 = swift_allocObject();
        *(v102 + 16) = v119;
        *(v102 + 24) = 0;
        *(v102 + 32) = 0;
        *(v102 + 40) = 1;
        v122(&v152, v102, 0, 0, 0);
      }

      return sub_1CEFCCC44(&v152, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF585EA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v156 = a7;
  v126 = a6;
  v127 = a5;
  v155 = a4;
  v157 = a1;
  v11 = *(*v8 + 608);
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 624);
  v159 = *(*v8 + 600);
  v10 = v159;
  v160 = v11;
  v161 = v12;
  v162 = v13;
  v14 = type metadata accessor for ItemReconciliation(255, &v159);
  v15 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = &v112 - v16;
  v159 = v10;
  v160 = v11;
  v161 = v12;
  v162 = v13;
  v135 = type metadata accessor for ReconciliationTable.CachedEntry(0, &v159);
  v154 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v112 - v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  v138 = v12;
  v140 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v137 = v13;
  v139 = v11;
  v21 = swift_getAssociatedConformanceWitness();
  v159 = AssociatedTypeWitness;
  v160 = v19;
  v161 = AssociatedConformanceWitness;
  v162 = v21;
  v22 = type metadata accessor for ReconciliationID(0, &v159);
  v146 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v112 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v133 = sub_1CF9E75D8();
  v142 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v141 = &v112 - v26;
  v27 = a2;
  v132 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v112 - v28;
  v151 = v14;
  v124 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v130 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v129 = &v112 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v112 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v128 = &v112 - v37;
  v38 = *(v19 - 8);
  v114 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v112 - v41;
  if (v27 && (type metadata accessor for MaintenanceContinuation(), (v43 = swift_dynamicCastClass()) != 0) && *(v43 + 24) != 1)
  {
    v44 = *(v43 + 16);
  }

  else
  {
    v44 = 0;
  }

  v45 = v157[2];
  v46 = *(v152 + 8);
  v47 = (*(*v45 + 360))(v44, v155, v156, v46, v40);
  v113 = v52;
  v150 = v46;
  v157 = 0;
  v153 = v45;
  v112 = v53;
  v125 = v35;
  v54 = v47;
  v55 = sub_1CF9E6DF8();
  v63 = v141;
  if (v55)
  {
    v64 = 0;
    v148 = (v38 + 16);
    v145 = (v38 + 32);
    ++v146;
    v144 = TupleTypeMetadata2 - 8;
    v122 = (v124 + 4);
    v121 = (v124 + 2);
    v120 = (v124 + 7);
    v123 = (v154 + 8);
    ++v124;
    v119 = (v142 + 8);
    v118 = v19;
    v117 = v22;
    v116 = v24;
    v149 = TupleTypeMetadata2;
    v115 = v38;
    v143 = v42;
    v147 = v54;
    while (1)
    {
      v66 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v66)
      {
        result = (*(v38 + 16))(v42, v54 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v64, v19);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v114 != 8)
        {
          goto LABEL_28;
        }

        v159 = result;
        (*v148)(v42, &v159, v19);
        result = swift_unknownObjectRelease();
      }

      v67 = v153;
      v69 = v149;
      v68 = v150;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      v154 = v64 + 1;
      (*v145)(v24, v42, v19);
      swift_storeEnumTagMultiPayload();
      v70 = v63;
      v71 = v157;
      (*(*v67 + 168))(v24, 1, v155, v156, v68);
      if (v71)
      {
        (*v146)(v24, v22);
        v147, v102, v103, v104, v105, v106, v107, v108;
LABEL_6:
        v48 = v156;
        v162 = v156;
        v163 = v152;
        v49 = __swift_allocate_boxed_opaque_existential_0(&v159);
        (*(*(v48 - 8) + 16))(v49, v155, v48);
        v50 = v71;
        v127(&v159, 0, 0, 0, v71);

        return sub_1CEFCCC44(&v159, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v157 = 0;
      (*v146)(v24, v22);
      v63 = v70;
      if ((*(*(v69 - 8) + 48))(v70, 1, v69) == 1)
      {
        (*v119)(v70, v133);
      }

      else
      {
        v72 = *&v70[*(v69 + 48)];
        v73 = v151;
        v74 = v132;
        v75 = *(v132 + 48);
        v76 = *v122;
        v77 = v131;
        (*v122)(v131, v63, v151);
        *&v77[v75] = v72;
        v142 = *&v77[*(v74 + 48)];
        v78 = v128;
        v76(v128, v77, v73);
        v79 = *v121;
        v80 = v125;
        (*v121)(v125, v78, v73);
        v81 = &v80[*(v73 + 52)];
        v82 = v139;
        v83 = v137;
        v81[*(type metadata accessor for ItemReconciliationHalf(0, v139, v137, v84) + 56)] = 6;
        v85 = v129;
        v79(v129, v78, v73);
        v86 = v130;
        v79(v130, v80, v73);
        v158 = 0;
        v159 = 0;
        v87 = v136;
        (*v120)(v136, 1, 1, v73);
        v111 = v87;
        v88 = v134;
        sub_1CF079694(v142, 0, v85, v86, &v159, &v158, 0, 2, v134, v111, v140, v82, v138, v83);
        v71 = v157;
        sub_1CF695580(v88, v155, v156, v152);
        if (v71)
        {
          v147, v89, v90, v91, v92, v93, v94, v95;
          (*v123)(v88, v135);
          v109 = *v124;
          v110 = v151;
          (*v124)(v80, v151);
          v109(v78, v110);
          goto LABEL_6;
        }

        v157 = 0;
        (*v123)(v88, v135);
        v96 = *v124;
        v97 = v151;
        (*v124)(v80, v151);
        v96(v78, v97);
        v19 = v118;
        v22 = v117;
        v24 = v116;
        v63 = v141;
        v38 = v115;
      }

      v54 = v147;
      v65 = sub_1CF9E6DF8();
      ++v64;
      v42 = v143;
      if (v154 == v65)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_21:
    v54, v56, v57, v58, v59, v60, v61, v62;
    v98 = v156;
    v162 = v156;
    v163 = v152;
    if (v113)
    {
      v99 = __swift_allocate_boxed_opaque_existential_0(&v159);
      (*(*(v98 - 8) + 16))(v99, v155, v98);
      v127(&v159, 0, 0, 0, 0);
    }

    else
    {
      v100 = __swift_allocate_boxed_opaque_existential_0(&v159);
      (*(*(v98 - 8) + 16))(v100, v155, v98);
      type metadata accessor for MaintenanceContinuation();
      v101 = swift_allocObject();
      *(v101 + 16) = v112;
      *(v101 + 24) = 0;
      *(v101 + 32) = 0;
      *(v101 + 40) = 1;
      v127(&v159, v101, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v159, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF586C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 376))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF586E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 368))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58711C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v13 = *(v13 + 16);
      v15 = *(v14 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = 1;
LABEL_6:
  v16 = (*(**(a1 + 16) + 384))(v13, v15, a4, a7, a8);
  v23[3] = a7;
  v23[4] = a8;
  if (v17)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v23, 0, 0, 0, 0);
  }

  else
  {
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(v23);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(v23, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(v23, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v56 = a4;
  v57 = a7;
  v58 = a5;
  v53 = a6;
  v54 = a2;
  v61 = a3;
  v59 = a1;
  v10 = *(*v8 + 608);
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 624);
  v67 = *(*v8 + 600);
  v9 = v67;
  v68 = v10;
  v69 = v11;
  v70 = v12;
  v60 = type metadata accessor for ReconciliationMutation(0, &v67);
  v50 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v48 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  v51 = v11;
  v52 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v63 = v12;
  v64 = v10;
  v18 = swift_getAssociatedConformanceWitness();
  v67 = AssociatedTypeWitness;
  v68 = v16;
  v69 = AssociatedConformanceWitness;
  v70 = v18;
  v19 = v54;
  v20 = type metadata accessor for ReconciliationID(0, &v67);
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v48 - v22;
  if (v19)
  {
    type metadata accessor for MaintenanceContinuation();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v23 = *(v23 + 16);
      v25 = *(v24 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = 1;
LABEL_6:
  v26 = (*(**(v59 + 16) + 392))(v23, v25, v56, v57, *(v55 + 8));
  LODWORD(v54) = v27;
  v49 = v28;
  v48 = v21;
  if (sub_1CF9E6DF8())
  {
    v67 = v52;
    v68 = v64;
    v69 = v51;
    v70 = v63;
    type metadata accessor for JobResult(0, &v67);
    v36 = 0;
    v59 = v65 + 16;
    v37 = (v65 + 32);
    v38 = (v50 + 8);
    do
    {
      v39 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v39)
      {
        (*(v65 + 16))(v66, v26 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v36, v20);
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v48 != 8)
        {
          __break(1u);
          return result;
        }

        v67 = result;
        (*v59)(v66, &v67, v20);
        swift_unknownObjectRelease();
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      type metadata accessor for ReconciliationSideMutation(255, v64, v63, v31);
      v41 = *(swift_getTupleTypeMetadata2() + 48);
      (*v37)(v14, v66, v20);
      *&v14[v41] = *(v62 + 120);
      swift_storeEnumTagMultiPayload();
      v42 = v60;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v61, v14);
      (*v38)(v14, v42);
      ++v36;
    }

    while (v40 != sub_1CF9E6DF8());
  }

  v26, v29, v30, v31, v32, v33, v34, v35;
  v44 = v57;
  v70 = v57;
  v71 = v55;
  if (v54)
  {
    v45 = __swift_allocate_boxed_opaque_existential_0(&v67);
    (*(*(v44 - 8) + 16))(v45, v56, v44);
    v58(&v67, 0, 0, 0, 0);
  }

  else
  {
    v46 = __swift_allocate_boxed_opaque_existential_0(&v67);
    (*(*(v44 - 8) + 16))(v46, v56, v44);
    type metadata accessor for MaintenanceContinuation();
    v47 = swift_allocObject();
    *(v47 + 16) = v49;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 40) = 1;
    v58(&v67, v47, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v67, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF587A38(void **a1, _BYTE *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v219 = a8;
  v244 = a7;
  v205 = a6;
  v206 = a5;
  v243 = a4;
  v226 = a3;
  v257 = a2;
  v221 = a1;
  v9 = *v8;
  v10 = *(*v8 + 624);
  v11 = *(*v8 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v13 = *(v9 + 616);
  v233 = v8;
  v14 = *(v9 + 600);
  v227 = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v215 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v214 = &v191[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v217 = &v191[-v19];
  v195 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v228 = &v191[-v22];
  v203 = sub_1CF9E5CF8();
  v255 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = &v191[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v229 = v14;
  *&v24 = v14;
  v231 = v11;
  *(&v24 + 1) = v11;
  v25 = v257;
  v230 = v13;
  *&v26 = v13;
  v232 = v10;
  *(&v26 + 1) = v10;
  v224 = v26;
  v261 = v26;
  v225 = v24;
  v260 = v24;
  v223 = type metadata accessor for ReconciliationMutation(0, &v260);
  v200 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v222 = &v191[-v27];
  v199 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v191[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v191[-v32];
  v198 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v213 = &v191[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v216 = &v191[-v37];
  MEMORY[0x1EEE9AC00](v38);
  v247 = &v191[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v191[-v41];
  v197 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v191[-v44];
  v252 = v12;
  v46 = swift_getTupleTypeMetadata2();
  v248 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v246 = &v191[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v250 = &v191[-v49];
  v196 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v258 = &v191[-v52];
  v218 = TupleTypeMetadata2;
  v251 = v15;
  v204 = v30;
  if (v25 && (type metadata accessor for MaintenanceContinuation(), (v53 = swift_dynamicCastClass()) != 0))
  {
    v54 = *(v53 + 16);
    v55 = *(v53 + 24);
    if ((*(v53 + 40) & 1) == 0 && *(v53 + 32))
    {
      v194 = *(v53 + 16);
      v56 = 0;
LABEL_31:
      v128 = *(((*v221)[22])() + 16);

      *&v260 = 2;
      BYTE8(v260) = 0;
      v129 = (*(*v128 + 408))(2, 0, &v260, v194, v55, v243, v244, *(v219 + 8));
      v131 = v130;
      v133 = v132;

      v134 = v252;
      if (!v56)
      {
        LODWORD(v245) = v133;
        v238 = v131;
        if (!sub_1CF9E6DF8())
        {
LABEL_47:
          v129, v138, v139, v140, v141, v142, v143, v144;
          v181 = v244;
          *(&v261 + 1) = v244;
          v262 = v219;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v260);
          (*(*(v181 - 8) + 16))(boxed_opaque_existential_0, v243, v181);
          v206(&v260, 0, 0, 0, 0);
          return sub_1CEFCCC44(&v260, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        v145 = 0;
        v253 = *(TupleTypeMetadata2 + 48);
        v258 = (v215 + 16);
        v250 = v198 + 32;
        v248 = v197 + 8;
        v249 = (v197 + 32);
        v247 = v198 + 16;
        v246 = (v199 + 48);
        v241 = v199 + 32;
        v240 = (v199 + 16);
        v239 = (v200 + 8);
        v242 = (v199 + 8);
        v255 = v198 + 8;
        v256 = (v215 + 8);
        v254 = v129;
        while (1)
        {
          v148 = sub_1CF9E6DC8();
          sub_1CF9E6D78();
          if (v148)
          {
            v149 = TupleTypeMetadata2;
            v150 = *(v215 + 16);
            v150(v228, v129 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v145, v149);
            v151 = (v145 + 1);
            if (__OFADD__(v145, 1))
            {
              goto LABEL_46;
            }
          }

          else
          {
            result = sub_1CF9E7998();
            if (v195 != 8)
            {
              goto LABEL_58;
            }

            v180 = TupleTypeMetadata2;
            *&v260 = result;
            v150 = *v258;
            (*v258)(v228, &v260, v180);
            swift_unknownObjectRelease();
            v151 = (v145 + 1);
            if (__OFADD__(v145, 1))
            {
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }
          }

          v257 = v151;
          v152 = v218;
          v153 = *(v218 + 48);
          v154 = *v250;
          v155 = v217;
          v156 = v228;
          (*v250)(v217, v228, v134);
          (*v249)(&v155[v153], &v253[v156], v251);
          v157 = v214;
          v150(v214, v155, v152);
          TupleTypeMetadata2 = v152;
          v158 = *(v152 + 48);
          v159 = v216;
          v154(v216, v157, v134);
          v160 = AssociatedTypeWitness;
          (*v248)(&v157[v158], v251);
          v161 = v213;
          (*v247)(v213, v159, v134);
          if ((*v246)(v161, 1, v160) == 1)
          {
            v146 = v161;
            v147 = *v255;
            (*v255)(v159, v134);
            (*v256)(v155, TupleTypeMetadata2);
            v147(v146, v134);
          }

          else
          {
            v162 = v204;
            (*v241)(v204, v161, v160);
            v261 = v224;
            v260 = v225;
            type metadata accessor for JobResult(0, &v260);
            v163 = v227;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
            v165 = v232;
            v166 = v231;
            v167 = swift_getAssociatedConformanceWitness();
            *&v260 = v163;
            *(&v260 + 1) = v160;
            *&v261 = AssociatedConformanceWitness;
            *(&v261 + 1) = v167;
            type metadata accessor for ReconciliationID(255, &v260);
            type metadata accessor for ReconciliationSideMutation(255, v166, v165, v168);
            v169 = swift_getTupleTypeMetadata2();
            v170 = v222;
            v171 = &v222[*(v169 + 48)];
            (*v240)(v222, v162, v160);
            swift_storeEnumTagMultiPayload();
            *v171 = 0;
            *(v171 + 8) = *(v233 + 15);
            swift_storeEnumTagMultiPayload();
            v172 = v223;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v226, v170);
            (*v239)(v170, v172);
            if ((v245 & 1) == 0)
            {
              v254, v173, v174, v175, v176, v177, v178, v179;
              v184 = v244;
              *(&v261 + 1) = v244;
              v262 = v219;
              v185 = __swift_allocate_boxed_opaque_existential_0(&v260);
              (*(*(v184 - 8) + 16))(v185, v243, v184);
              type metadata accessor for MaintenanceContinuation();
              v186 = swift_allocObject();
              *(v186 + 16) = v238;
              *(v186 + 24) = 0;
              *(v186 + 32) = 1;
              *(v186 + 40) = 0;
              v206(&v260, v186, 0, 0, 0);

              (v242->super.isa)(v162, v160);
              (*v255)(v216, v252);
              (*v256)(v217, v218);
              return sub_1CEFCCC44(&v260, &unk_1EC4C1B30, &qword_1CFA05300);
            }

            (v242->super.isa)(v162, v160);
            v134 = v252;
            (*v255)(v216, v252);
            TupleTypeMetadata2 = v218;
            (*v256)(v217, v218);
          }

          v129 = v254;
          ++v145;
          if (v257 == sub_1CF9E6DF8())
          {
            goto LABEL_47;
          }
        }
      }

LABEL_52:
      v188 = v244;
      *(&v261 + 1) = v244;
      v262 = v219;
      v189 = __swift_allocate_boxed_opaque_existential_0(&v260);
      (*(*(v188 - 8) + 16))(v189, v243, v188);
      v190 = v56;
      v206(&v260, 0, 0, 0, v56);

      return sub_1CEFCCC44(&v260, &unk_1EC4C1B30, &qword_1CFA05300);
    }
  }

  else
  {
    v54 = 0;
    v55 = 1;
  }

  v57 = *(v219 + 8);
  v58 = (*(*v221[2] + 400))(0, v54, v55, v243, v244, v57);
  v192 = v59;
  v220 = 0;
  v194 = v60;
  if (!sub_1CF9E6DF8())
  {
LABEL_29:
    v58, v61, v62, v63, v64, v65, v66, v67;
    if ((v192 & 1) == 0)
    {
      v135 = v244;
      *(&v261 + 1) = v244;
      v262 = v219;
      v136 = __swift_allocate_boxed_opaque_existential_0(&v260);
      (*(*(v135 - 8) + 16))(v136, v243, v135);
      type metadata accessor for MaintenanceContinuation();
      v137 = swift_allocObject();
      *(v137 + 16) = v194;
      *(v137 + 24) = 0;
      *(v137 + 32) = 0;
      *(v137 + 40) = 0;
      v206(&v260, v137, 0, 0, 0);

      return sub_1CEFCCC44(&v260, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v55 = 1;
    TupleTypeMetadata2 = v218;
    v56 = v220;
    goto LABEL_31;
  }

  v201 = v57;
  v68 = 0;
  v241 = *(v46 + 48);
  v256 = (v248 + 16);
  v240 = (v197 + 32);
  v239 = (v198 + 32);
  v238 = (v198 + 16);
  v237 = (v199 + 48);
  v211 = (v199 + 32);
  v210 = (v199 + 16);
  v209 = (v200 + 8);
  v208 = v227 - 8;
  v193 = (v255 + 8);
  v207 = (v199 + 8);
  v234 = (v198 + 8);
  v235 = (v248 + 8);
  v236 = (v197 + 8);
  v257 = v45;
  v249 = v42;
  v245 = v46;
  v242 = v58;
  v212 = v33;
  while (1)
  {
    v72 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v72)
    {
      v73 = *(v248 + 16);
      (v73)(v258, v58 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v68, v46);
      v74 = &v68->super.isa + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = sub_1CF9E7998();
      if (v196 != 8)
      {
        goto LABEL_57;
      }

      *&v260 = result;
      v73 = *v256;
      (*v256)(v258, &v260, v46);
      swift_unknownObjectRelease();
      v74 = &v68->super.isa + 1;
      if (__OFADD__(v68, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v253 = v74;
    v254 = v68;
    v75 = *(v46 + 48);
    v255 = v73;
    v76 = *v240;
    v77 = v250;
    v78 = v258;
    (*v240)(v250, v258, v15);
    v79 = *v239;
    v80 = &v78[v241];
    v81 = v252;
    (*v239)(&v77[v75], v80, v252);
    v82 = v246;
    (v255)(v246, v77, v46);
    v83 = *(v46 + 48);
    v76(v257, v82, v15);
    v84 = &v82[v83];
    v85 = v249;
    (v79)(v249, v84, v81);
    v86 = AssociatedTypeWitness;
    v87 = v247;
    (*v238)(v247, v85, v81);
    if ((*v237)(v87, 1, v86) != 1)
    {
      break;
    }

    v69 = *v234;
    (*v234)(v85, v81);
    v70 = v245;
    (*v235)(v77, v245);
    v15 = v251;
    (*v236)(v257, v251);
    v69(v87, v81);
    v46 = v70;
    v58 = v242;
LABEL_10:
    v71 = sub_1CF9E6DF8();
    v68 = (&v254->super.isa + 1);
    if (v253 == v71)
    {
      goto LABEL_29;
    }
  }

  v88 = v212;
  (*v211)(v212, v87, v86);
  v261 = v224;
  v260 = v225;
  type metadata accessor for JobResult(0, &v260);
  v89 = v227;
  v90 = swift_getAssociatedConformanceWitness();
  v91 = v232;
  v92 = v231;
  v93 = swift_getAssociatedConformanceWitness();
  *&v260 = v89;
  *(&v260 + 1) = v86;
  *&v261 = v90;
  *(&v261 + 1) = v93;
  type metadata accessor for ReconciliationID(255, &v260);
  type metadata accessor for ReconciliationSideMutation(255, v92, v91, v94);
  v95 = swift_getTupleTypeMetadata2();
  v96 = v86;
  v97 = v222;
  v98 = &v222[*(v95 + 48)];
  (*v210)(v222, v88, v96);
  v99 = v257;
  swift_storeEnumTagMultiPayload();
  *v98 = 0;
  *(v98 + 8) = *(v233 + 15);
  swift_storeEnumTagMultiPayload();
  v100 = v223;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v226, v97);
  (*v209)(v97, v100);
  if ((*(*(v89 - 8) + 48))(v99, 1, v89) != 1)
  {
    v110 = AssociatedTypeWitness;
    v127 = v250;
    v15 = v251;
    v111 = v249;
    v46 = v245;
    v58 = v242;
    goto LABEL_24;
  }

  v101 = v220;
  v102 = (*(*v221[5] + 440))(v88, v243, v244, v201);
  v15 = v251;
  v46 = v245;
  v220 = v101;
  if (v101)
  {
    v242, v103, v104, v105, v106, v107, v108, v109;
    v183 = AssociatedTypeWitness;
    v111 = v249;
LABEL_51:
    v187 = v250;
    (*v207)(v88, v183);
    (*v234)(v111, v252);
    (*v235)(v187, v46);
    (*v236)(v99, v15);
    v56 = v220;
    goto LABEL_52;
  }

  v110 = AssociatedTypeWitness;
  v111 = v249;
  v58 = v242;
  if ((v102 & 1) == 0)
  {
LABEL_22:
    v127 = v250;
LABEL_24:
    (*v207)(v88, v110);
    (*v234)(v111, v252);
    (*v235)(v127, v46);
    (*v236)(v99, v15);
    goto LABEL_10;
  }

  v112 = AssociatedTypeWitness;
  ((*v221)[22])();
  *&v260 = v231;
  *(&v260 + 1) = v229;
  *&v261 = v232;
  *(&v261 + 1) = v230;
  type metadata accessor for Materialization.MaterializeParentHierarchy(0, &v260);
  v113 = sub_1CF559420();
  v114 = v202;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v116 = v115;
  result = (*v193)(v114, v203);
  v118 = v116 * 1000000000.0;
  if (COERCE__INT64(fabs(v116 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v118 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v118 >= 9.22337204e18)
    {
      goto LABEL_56;
    }

    v119 = v220;
    sub_1CF5215C0(v113, v118, v243, v244, v219);
    v220 = v119;
    if (v119)
    {
      v58, v120, v121, v122, v123, v124, v125, v126;

      v183 = v112;
      v99 = v257;
      v46 = v245;
      goto LABEL_51;
    }

    v110 = v112;
    v99 = v257;
    v46 = v245;
    goto LABEL_22;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1CF589418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a8;
  v56 = a4;
  v57 = a7;
  v58 = a6;
  v53 = a5;
  v54 = a2;
  v61 = a3;
  v59 = a1;
  v10 = *(*v8 + 608);
  v11 = *(*v8 + 616);
  v12 = *(*v8 + 624);
  v67 = *(*v8 + 600);
  v9 = v67;
  v68 = v10;
  v69 = v11;
  v70 = v12;
  v60 = type metadata accessor for ReconciliationMutation(0, &v67);
  v50 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v14 = &v48 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  v63 = v11;
  v64 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v12;
  v52 = v10;
  v18 = swift_getAssociatedConformanceWitness();
  v67 = AssociatedTypeWitness;
  v68 = v16;
  v69 = AssociatedConformanceWitness;
  v70 = v18;
  v19 = v54;
  v20 = type metadata accessor for ReconciliationID(0, &v67);
  v65 = *(v20 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v48 - v22;
  if (v19)
  {
    type metadata accessor for MaintenanceContinuation();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      v24 = v23;
      v23 = *(v23 + 16);
      v25 = *(v24 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v23 = 0;
  }

  v25 = 1;
LABEL_6:
  v26 = (*(**(v59 + 16) + 416))(v23, v25, v56, v57, *(v55 + 8));
  LODWORD(v54) = v27;
  v49 = v28;
  v48 = v21;
  if (sub_1CF9E6DF8())
  {
    v67 = v64;
    v68 = v52;
    v69 = v63;
    v70 = v51;
    type metadata accessor for JobResult(0, &v67);
    v36 = 0;
    v59 = v65 + 16;
    v37 = (v65 + 32);
    v38 = (v50 + 8);
    do
    {
      v39 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v39)
      {
        (*(v65 + 16))(v66, v26 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v36, v20);
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v48 != 8)
        {
          __break(1u);
          return result;
        }

        v67 = result;
        (*v59)(v66, &v67, v20);
        swift_unknownObjectRelease();
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      type metadata accessor for ReconciliationSideMutation(255, v64, v63, v31);
      v41 = &v14[*(swift_getTupleTypeMetadata2() + 48)];
      (*v37)(v14, v66, v20);
      *v41 = 0;
      *(v41 + 8) = *(v62 + 120);
      swift_storeEnumTagMultiPayload();
      v42 = v60;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v61, v14);
      (*v38)(v14, v42);
      ++v36;
    }

    while (v40 != sub_1CF9E6DF8());
  }

  v26, v29, v30, v31, v32, v33, v34, v35;
  v44 = v57;
  v70 = v57;
  v71 = v55;
  if (v54)
  {
    v45 = __swift_allocate_boxed_opaque_existential_0(&v67);
    (*(*(v44 - 8) + 16))(v45, v56, v44);
    v53(&v67, 0, 0, 0, 0);
  }

  else
  {
    v46 = __swift_allocate_boxed_opaque_existential_0(&v67);
    (*(*(v44 - 8) + 16))(v46, v56, v44);
    type metadata accessor for MaintenanceContinuation();
    v47 = swift_allocObject();
    *(v47 + 16) = v49;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0;
    *(v47 + 40) = 1;
    v53(&v67, v47, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v67, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF589ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v216 = a8;
  v243 = a7;
  v203 = a6;
  v204 = a5;
  v244 = a4;
  v231 = a3;
  v226 = a1;
  v11 = *(*v8 + 608);
  v12 = *(*v8 + 616);
  v13 = *(*v8 + 624);
  v248 = *(*v8 + 600);
  v10 = v248;
  v249 = v11;
  v250 = v12;
  v251 = v13;
  v230 = type metadata accessor for ReconciliationMutation(0, &v248);
  v197 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v229 = &v191 - v14;
  v248 = v10;
  v249 = v11;
  v250 = v12;
  v251 = v13;
  v15 = type metadata accessor for ItemReconciliation(255, &v248);
  v196 = sub_1CF9E75D8();
  v16 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v220 = &v191 - v17;
  v237 = v15;
  v208 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v236 = &v191 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v218 = sub_1CF9E75D8();
  v207 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v217 = &v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v221 = &v191 - v23;
  v202 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v200 = &v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v238 = &v191 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v233 = &v191 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v239 = &v191 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v227 = &v191 - v33;
  v34 = swift_getAssociatedTypeWitness();
  v240 = v12;
  v241 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v198 = v13;
  v199 = v11;
  v36 = AssociatedConformanceWitness;
  v37 = swift_getAssociatedConformanceWitness();
  v247 = AssociatedTypeWitness;
  v248 = AssociatedTypeWitness;
  v249 = v34;
  v250 = v36;
  v251 = v37;
  v38 = type metadata accessor for ReconciliationID(0, &v248);
  v246 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v206 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v219 = &v191 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v228 = &v191 - v43;
  v195 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v191 - v46;
  v205 = v16;
  if (!a2)
  {
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    a2 = 0;
LABEL_5:
    v49 = 1;
    goto LABEL_6;
  }

  a2 = *(v48 + 16);
  v49 = *(v48 + 24);
LABEL_6:
  v50 = v247;
  v51 = sub_1CF9E6DA8();
  v52 = *(v36 + 40);
  v53 = sub_1CF1B9600(v51, v50, v52);
  v55 = v54;
  v51, v54, v56, v57, v58, v59, v60, v61;
  v253 = v53;
  v254 = v55;
  v62 = *(v226 + 16);
  v63 = v49;
  v64 = *(v216 + 8);
  v65 = (*(*v62 + 424))(a2, v63, v244, v243, v64);
  v234 = v64;
  v214 = v62;
  v235 = 0;
  v193 = v66;
  v215 = v36;
  v245 = v52;
  v192 = v67;

  v68 = sub_1CF9E6DF8();
  v76 = v228;
  v242 = v38;
  if (v68)
  {
    v77 = 0;
    tree = v246->tree;
    v79 = &v246[1];
    v225 = (v202 + 32);
    v224 = (v202 + 8);
    anon_8 = v246->_anon_8;
    v223 = v65;
    while (1)
    {
      v80 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v80)
      {
        (*v246->tree)(v76, v65 + ((v246[2].tree[0] + 32) & ~v246[2].tree[0]) + *v246[2]._anon_8 * v77, v38);
      }

      else
      {
        result = sub_1CF9E7998();
        if (v195 != 8)
        {
          goto LABEL_56;
        }

        v248 = result;
        (*tree)(v76, &v248, v38);
        swift_unknownObjectRelease();
      }

      result = (*v79)(v47, v76, v38);
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*anon_8)(v47, v38);
      }

      else
      {
        v83 = v227;
        v84 = v247;
        (*v225)(v227, v47, v247);
        v86 = type metadata accessor for OrderedSet(0, v84, v245, v85);
        v87 = v239;
        sub_1CF1B87DC(v239, v83, v86);
        v88 = *v224;
        v89 = v87;
        v76 = v228;
        (*v224)(v89, v84);
        v90 = v83;
        v65 = v223;
        v91 = v84;
        v38 = v242;
        v88(v90, v91);
      }

      ++v77;
      if (v82 == sub_1CF9E6DF8())
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

LABEL_17:
  v65, v69, v70, v71, v72, v73, v74, v75;
  v92 = sub_1CF9E6DF8();
  v100 = v221;
  v101 = v233;
  v102 = v215;
  v103 = v206;
  if (!v92)
  {
LABEL_44:
    v65, v93, v94, v95, v96, v97, v98, v99;
    v143 = v253;
    v142 = v254;
    v144 = sub_1CF1B8DAC(v253, v254, v247);
    v152 = v200;
    if (!v144)
    {
LABEL_48:
      v143, v145, v146, v147, v148, v149, v150, v151;
      v142, v163, v164, v165, v166, v167, v168, v169;
      v170 = v243;
      v251 = v243;
      v252 = v216;
      if (v193)
      {
        v171 = __swift_allocate_boxed_opaque_existential_0(&v248);
        (*(*(v170 - 8) + 16))(v171, v244, v170);
        v204(&v248, 0, 0, 0, 0);
      }

      else
      {
        v172 = __swift_allocate_boxed_opaque_existential_0(&v248);
        (*(*(v170 - 8) + 16))(v172, v244, v170);
        type metadata accessor for MaintenanceContinuation();
        v173 = swift_allocObject();
        *(v173 + 16) = v192;
        *(v173 + 24) = 0;
        *(v173 + 32) = 0;
        *(v173 + 40) = 1;
        v204(&v248, v173, 0, 0, 0);
      }

      return sub_1CEFCCC44(&v248, &unk_1EC4C1B30, &qword_1CFA05300);
    }

    v248 = v241;
    v249 = v199;
    v250 = v240;
    v251 = v198;
    type metadata accessor for JobResult(0, &v248);
    v153 = 0;
    v242 = (v202 + 32);
    v239 = (v197 + 8);
    v246 = v143;
    while (1)
    {
      result = sub_1CF1B8DB8(v153, v143, v142, v247);
      v155 = v153 + 1;
      if (__OFADD__(v153, 1))
      {
        goto LABEL_54;
      }

      type metadata accessor for ReconciliationSideMutation(255, v241, v240, v154);
      v156 = v142;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v158 = v247;
      v159 = *(TupleTypeMetadata2 + 48);
      v160 = v229;
      (*v242)(v229, v152, v247);
      swift_storeEnumTagMultiPayload();
      *(v160 + v159) = *(v232 + 120);
      swift_storeEnumTagMultiPayload();
      v161 = v230;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v231, v160);
      v162 = v161;
      v142 = v156;
      v143 = v246;
      (*v239)(v160, v162);
      ++v153;
      if (v155 == sub_1CF1B8DAC(v143, v142, v158))
      {
        goto LABEL_48;
      }
    }
  }

  v104 = 0;
  v212 = v246->tree;
  v211 = &v246[1];
  v105 = (v202 + 32);
  v228 = (v215 + 64);
  v225 = (v215 + 72);
  v213 = (v202 + 48);
  v210 = (v208 + 6);
  v209 = (v208 + 4);
  ++v207;
  ++v208;
  v191 = (v205 + 8);
  v201 = v246->_anon_8;
  v227 = (v202 + 8);
  v194 = (v202 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  while (1)
  {
    v106 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v106)
    {
      (*v246->tree)(v103, v65 + ((v246[2].tree[0] + 32) & ~v246[2].tree[0]) + *v246[2]._anon_8 * v104, v38);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v195 != 8)
      {
        goto LABEL_57;
      }

      v248 = result;
      (*v212)(v103, &v248, v38);
      swift_unknownObjectRelease();
    }

    v107 = v219;
    result = (*v211)(v219, v103, v38);
    if (__OFADD__(v104++, 1))
    {
      goto LABEL_55;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    (*v201)(v107, v38);
LABEL_20:
    if (v104 == sub_1CF9E6DF8())
    {
      goto LABEL_44;
    }
  }

  v205 = v104;
  v109 = *v105;
  v110 = v247;
  (*v105)(v101, v107, v247);
  v224 = *(v102 + 64);
  if ((v224)(v110, v102))
  {
    v111 = *v227;
    v103 = v206;
    v104 = v205;
    v38 = v242;
LABEL_27:
    v112 = v233;
    v111(v233, v247);
    v101 = v112;
    goto LABEL_20;
  }

  anon_8 = *v225;
  v113 = v233;
  v38 = v242;
  while (1)
  {
    v101 = v113;
    if ((anon_8)(v247, v102))
    {
      (*v227)(v113, v247);
LABEL_41:
      v103 = v206;
      v104 = v205;
      goto LABEL_20;
    }

    v114 = v235;
    (*(**(v226 + 32) + 288))(v113, v244, v243, v234);
    if (v114)
    {
      break;
    }

    if ((*v213)(v100, 1, v247) == 1)
    {
      v235 = 0;
      v101 = v233;
      (*v227)(v233, v247);
      (*v207)(v100, v218);
      goto LABEL_41;
    }

    v122 = v238;
    v109(v238, v100, v247);
    v123 = v220;
    sub_1CF68DDB0(v122, v244, v243, v234, v220);
    v235 = 0;
    v124 = v237;
    if ((*v210)(v123, 1, v237) == 1)
    {
      v139 = *v227;
      v140 = v247;
      (*v227)(v238, v247);
      v101 = v233;
      v141 = v140;
      v38 = v242;
      v139(v233, v141);
      (*v191)(v123, v196);
      v100 = v221;
      goto LABEL_41;
    }

    v125 = v105;
    v126 = v236;
    (*v209)(v236, v123, v124);
    v129 = &v126[*(type metadata accessor for ItemReconciliationHalf(0, v241, v240, v127) + 64)];
    if (v129[16] || (*v129 & 8) == 0)
    {
      v137 = *v227;
      v138 = v247;
      (*v227)(v238, v247);
      v101 = v233;
      v137(v233, v138);
      (*v208)(v236, v237);
      v100 = v221;
      v103 = v206;
      v104 = v205;
      v38 = v242;
      goto LABEL_20;
    }

    v130 = v247;
    v131 = type metadata accessor for OrderedSet(0, v247, v245, v128);
    v132 = v217;
    v133 = v238;
    sub_1CF1B8AB8(v238, v131, v217);
    (*v207)(v132, v218);
    v134 = v239;
    sub_1CF1B87DC(v239, v133, v131);
    v111 = *v227;
    v135 = v134;
    v102 = v215;
    (*v227)(v135, v130);
    v113 = v233;
    v111(v233, v130);
    (*v208)(v236, v237);
    v105 = v125;
    v109(v113, v133, v130);
    v136 = (v224)(v130, v102);
    v100 = v221;
    v38 = v242;
    if (v136)
    {
      v103 = v206;
      v104 = v205;
      goto LABEL_27;
    }
  }

  v65, v115, v116, v117, v118, v119, v120, v121;
  (*v227)(v233, v247);
  v253, v174, v175, v176, v177, v178, v179, v180;
  v254, v181, v182, v183, v184, v185, v186, v187;
  v188 = v243;
  v251 = v243;
  v252 = v216;
  v189 = __swift_allocate_boxed_opaque_existential_0(&v248);
  (*(*(v188 - 8) + 16))(v189, v244, v188);
  v190 = v114;
  v204(&v248, 0, 0, 0, v114);

  return sub_1CEFCCC44(&v248, &unk_1EC4C1B30, &qword_1CFA05300);
}