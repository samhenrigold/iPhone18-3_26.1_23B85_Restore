uint64_t sub_1CF58AF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v72 = a7;
  v68 = a6;
  v69 = a5;
  v71 = a4;
  v89 = a3;
  v11 = *(*v8 + 600);
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v101 = v11;
  v102 = v12;
  v103 = v13;
  v104 = v14;
  v84 = type metadata accessor for ReconciliationMutation(0, &v101);
  v94 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v64 - v15;
  v86 = v13;
  v88 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v93 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v64 - v18;
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v64 - v21;
  v85 = v14;
  v87 = v12;
  v82 = swift_getAssociatedTypeWitness();
  v22 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v100 = *(TupleTypeMetadata2 - 8);
  v67 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v91 = &v64 - v23;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v24 = swift_dynamicCastClass()) != 0))
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
    v26 = 1;
  }

  v27 = *(a1 + 16);
  v101 = 0;
  LOBYTE(v102) = 1;
  v28 = (*(*v27 + 408))(16, 0, &v101, v25, v26, v71, v72, *(v70 + 8));
  v66 = v29;
  v65 = v30;
  v31 = TupleTypeMetadata2;
  v32 = sub_1CF9E6DF8();
  v40 = v91;
  if (v32)
  {
    v41 = 0;
    v97 = *(v31 + 48);
    v98 = (v100 + 16);
    v96 = (v93 + 32);
    v95 = (v75 + 6);
    v78 = (v75 + 4);
    v77 = (v75 + 2);
    v76 = (v94 + 8);
    ++v75;
    v74 = (v93 + 8);
    v94 = v22 - 8;
    v81 = v17;
    v80 = v22;
    v79 = v28;
    v73 = v19;
    do
    {
      v57 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v57)
      {
        (*(v100 + 16))(v40, v28 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v41, v31);
        v58 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_16;
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

        v101 = result;
        (*v98)(v40, &v101, v31);
        swift_unknownObjectRelease();
        v58 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      (*v96)(v19, v40, v17);
      if ((*v95)(v19, 1, AssociatedTypeWitness) == 1)
      {
        (*v74)(v19, v17);
      }

      else
      {
        (*v78)(v99, v19, AssociatedTypeWitness);
        v42 = v88;
        v101 = v88;
        v102 = v87;
        v43 = AssociatedTypeWitness;
        v44 = v86;
        v103 = v86;
        v104 = v85;
        v93 = type metadata accessor for JobResult(0, &v101);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v46 = v82;
        v47 = swift_getAssociatedConformanceWitness();
        v101 = v43;
        v102 = v46;
        v103 = AssociatedConformanceWitness;
        v104 = v47;
        type metadata accessor for ReconciliationID(255, &v101);
        type metadata accessor for ReconciliationSideMutation(255, v42, v44, v48);
        v49 = swift_getTupleTypeMetadata2();
        v50 = v83;
        v51 = &v83[*(v49 + 48)];
        v52 = v99;
        (*v77)(v83, v99, v43);
        swift_storeEnumTagMultiPayload();
        *v51 = 0;
        *(v51 + 8) = *(v90 + 120);
        v40 = v91;
        v31 = TupleTypeMetadata2;
        v19 = v73;
        swift_storeEnumTagMultiPayload();
        v53 = v84;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v89, v50);
        v54 = v50;
        v17 = v81;
        v55 = v53;
        AssociatedTypeWitness = v43;
        v22 = v80;
        (*v76)(v54, v55);
        v56 = v52;
        v28 = v79;
        (*v75)(v56, AssociatedTypeWitness);
      }

      (*(*(v22 - 8) + 8))(&v40[v97], v22);
      ++v41;
    }

    while (v58 != sub_1CF9E6DF8());
  }

  v28, v33, v34, v35, v36, v37, v38, v39;
  v60 = v72;
  v104 = v72;
  v105 = v70;
  if (v66)
  {
    v61 = __swift_allocate_boxed_opaque_existential_0(&v101);
    (*(*(v60 - 8) + 16))(v61, v71, v60);
    v69(&v101, 0, 0, 0, 0);
  }

  else
  {
    v62 = __swift_allocate_boxed_opaque_existential_0(&v101);
    (*(*(v60 - 8) + 16))(v62, v71, v60);
    type metadata accessor for MaintenanceContinuation();
    v63 = swift_allocObject();
    *(v63 + 16) = v65;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0;
    *(v63 + 40) = 1;
    v69(&v101, v63, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v101, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58B948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a8;
  v76 = a7;
  v72 = a6;
  v73 = a5;
  v75 = a4;
  v94 = a3;
  v11 = *(*v8 + 600);
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 616);
  v14 = *(*v8 + 624);
  v105 = v11;
  v106 = v12;
  v107 = v13;
  v108 = v14;
  v89 = type metadata accessor for ReconciliationMutation(0, &v105);
  v98 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v68 - v15;
  v91 = v13;
  v93 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_1CF9E75D8();
  v97 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v68 - v21;
  v90 = v14;
  v92 = v12;
  v87 = swift_getAssociatedTypeWitness();
  v22 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v104 = *(TupleTypeMetadata2 - 8);
  v71 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v96 = &v68 - v24;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v25 = swift_dynamicCastClass()) != 0))
  {
    v26 = *(a1 + 16);
    if (*(v25 + 24) != 1)
    {
      v27 = TupleTypeMetadata2;
      v28 = *(v25 + 16);
      v29 = v75;
      goto LABEL_7;
    }
  }

  else
  {
    v26 = *(a1 + 16);
  }

  v29 = v75;
  v27 = TupleTypeMetadata2;
  v28 = 0;
LABEL_7:
  v30 = (*(*v26 + 496))(v28, v29);
  v70 = v31;
  v69 = v32;
  v33 = v30;
  v34 = v27;
  v35 = sub_1CF9E6DF8();
  v43 = v96;
  v44 = v33;
  if (v35)
  {
    v45 = 0;
    v101 = *(v34 + 48);
    v102 = (v104 + 16);
    v100 = (v97 + 32);
    v99 = (v78 + 6);
    v81 = (v78 + 4);
    v80 = (v78 + 2);
    v79 = (v98 + 8);
    ++v78;
    v77 = (v97 + 8);
    v98 = v22 - 8;
    v86 = v17;
    v85 = v22;
    v84 = v34;
    v83 = v19;
    v82 = v33;
    do
    {
      v61 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v61)
      {
        (*(v104 + 16))(v43, v44 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v45, v34);
        v62 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v71 != 8)
        {
          __break(1u);
          return result;
        }

        v105 = result;
        (*v102)(v43, &v105, v34);
        swift_unknownObjectRelease();
        v62 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      (*v100)(v19, v43, v17);
      if ((*v99)(v19, 1, AssociatedTypeWitness) == 1)
      {
        (*v77)(v19, v17);
      }

      else
      {
        (*v81)(v103, v19, AssociatedTypeWitness);
        v46 = v93;
        v105 = v93;
        v106 = v92;
        v47 = AssociatedTypeWitness;
        v48 = v91;
        v107 = v91;
        v108 = v90;
        v97 = type metadata accessor for JobResult(0, &v105);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v50 = v87;
        v51 = swift_getAssociatedConformanceWitness();
        v105 = v47;
        v106 = v50;
        v107 = AssociatedConformanceWitness;
        v108 = v51;
        type metadata accessor for ReconciliationID(255, &v105);
        type metadata accessor for ReconciliationSideMutation(255, v46, v48, v52);
        v53 = swift_getTupleTypeMetadata2();
        v54 = v88;
        v55 = &v88[*(v53 + 48)];
        v56 = v103;
        (*v80)(v88, v103, v47);
        swift_storeEnumTagMultiPayload();
        *v55 = 0;
        *(v55 + 8) = *(v95 + 120);
        v43 = v96;
        v34 = v84;
        v19 = v83;
        swift_storeEnumTagMultiPayload();
        v57 = v89;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v94, v54);
        v58 = v54;
        v17 = v86;
        v59 = v57;
        AssociatedTypeWitness = v47;
        v22 = v85;
        (*v79)(v58, v59);
        v60 = v56;
        v44 = v82;
        (*v78)(v60, AssociatedTypeWitness);
      }

      (*(*(v22 - 8) + 8))(&v43[v101], v22);
      ++v45;
    }

    while (v62 != sub_1CF9E6DF8());
  }

  v44, v36, v37, v38, v39, v40, v41, v42;
  v64 = v76;
  v108 = v76;
  v109 = v74;
  if (v70)
  {
    v65 = __swift_allocate_boxed_opaque_existential_0(&v105);
    (*(*(v64 - 8) + 16))(v65, v75, v64);
    v73(&v105, 0, 0, 0, 0);
  }

  else
  {
    v66 = __swift_allocate_boxed_opaque_existential_0(&v105);
    (*(*(v64 - 8) + 16))(v66, v75, v64);
    type metadata accessor for MaintenanceContinuation();
    v67 = swift_allocObject();
    *(v67 + 16) = v69;
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 40) = 1;
    v73(&v105, v67, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v105, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58C364(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v110 = a8;
  v120 = a7;
  v108 = a6;
  v119 = a4;
  v12 = *(*v8 + 608);
  v13 = *(*v8 + 600);
  v14 = *(*v8 + 624);
  v15 = *(*v8 + 616);
  v127 = v12;
  v128 = v13;
  v129 = v14;
  v130 = v15;
  v116 = type metadata accessor for ItemReconciliation(0, &v127);
  v122 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116 - 8);
  v17 = &v104 - v16;
  v127 = v13;
  v128 = v12;
  v129 = v15;
  v130 = v14;
  v18 = type metadata accessor for ItemReconciliation(0, &v127);
  v118 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v117 = &v104 - v22;
  v109 = a5;
  v115 = v17;
  if (a2)
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
  v26 = *(v110 + 8);
  v27 = (*(*a1[2] + 432))(v23, v25, v119, v120, v26);
  v106 = v28;
  v123 = v26;
  v105 = v29;

  if (sub_1CF9E6DF8())
  {
    v37 = 0;
    v114 = (v118 + 16);
    v112 = (v118 + 32);
    v111 = (v122 + 8);
    v113 = (v118 + 8);
    while (1)
    {
      v38 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v38)
      {
        v39 = v117;
        result = (*(v118 + 16))(v117, v27 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v37, v18);
        v41 = v20;
      }

      else
      {
        result = sub_1CF9E7998();
        v39 = v117;
        if (v107 != 8)
        {
          goto LABEL_20;
        }

        v41 = v20;
        v127 = result;
        (*v114)(v117, &v127, v18);
        result = swift_unknownObjectRelease();
      }

      v42 = v123;
      v43 = v37 + 1;
      v44 = v120;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v122 = v37;
      (*v112)(v41, v39, v18);
      v45 = v119;
      sub_1CF959528(a1, v119, v18, v44, v42);
      v121 = v43;
      v46 = v27;
      v47 = v115;
      v49 = sub_1CF07EE34(v18, v48, v115);
      v50 = ((*a1)[22])(v49);
      v51 = v45;
      v52 = v116;
      sub_1CF959528(v50, v51, v116, v44, v123);

      (*v111)(v47, v52);
      v20 = v41;
      (*v113)(v41, v18);
      v27 = v46;
      v53 = sub_1CF9E6DF8();
      v37 = v122 + 1;
      if (v121 == v53)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_15:
    v27, v30, v31, v32, v33, v34, v35, v36;
    v54 = v120;
    v130 = v120;
    v131 = v110;
    if (v106)
    {
      v55 = __swift_allocate_boxed_opaque_existential_0(&v127);
      (*(*(v54 - 8) + 16))(v55, v119, v54);
      v125 = 0x73656972746E653CLL;
      v126 = 0xE90000000000003ALL;
      v56 = sub_1CF9E6DF8();
      v27, v57, v58, v59, v60, v61, v62, v63;
      v124 = v56;
      v64 = sub_1CF9E7F98();
      v66 = v65;
      MEMORY[0x1D3868CC0](v64);
      v66, v67, v68, v69, v70, v71, v72, v73;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v74 = v126;
      v109(&v127, 0, v125, v126, 0);
      v82 = v74;
    }

    else
    {
      v83 = __swift_allocate_boxed_opaque_existential_0(&v127);
      (*(*(v54 - 8) + 16))(v83, v119, v54);
      type metadata accessor for MaintenanceContinuation();
      v84 = swift_allocObject();
      *(v84 + 16) = v105;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0;
      *(v84 + 40) = 1;
      v125 = 0x73656972746E653CLL;
      v126 = 0xE90000000000003ALL;
      v85 = sub_1CF9E6DF8();
      v27, v86, v87, v88, v89, v90, v91, v92;
      v124 = v85;
      v93 = sub_1CF9E7F98();
      v95 = v94;
      MEMORY[0x1D3868CC0](v93);
      v95, v96, v97, v98, v99, v100, v101, v102;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v103 = v126;
      v109(&v127, v84, v125, v126, 0);

      v82 = v103;
    }

    v82, v75, v76, v77, v78, v79, v80, v81;
    return sub_1CEFCCC44(&v127, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF58CB90(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void (**)(uint64_t, uint64_t, __n128)), uint64_t a6, char *a7, uint64_t a8)
{
  v119 = a6;
  v120 = a5;
  v14 = *(*v8 + 608);
  v15 = *(*v8 + 600);
  v16 = *(*v8 + 624);
  v17 = *(*v8 + 616);
  v145 = v14;
  v146 = v15;
  v147 = v16;
  v148 = v17;
  v131 = type metadata accessor for ItemReconciliation(0, &v145);
  v18 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v116 - v19;
  v145 = v15;
  v146 = v14;
  v133 = v17;
  v134 = v14;
  v147 = v17;
  v148 = v16;
  v132 = v16;
  v20 = type metadata accessor for ItemReconciliation(0, &v145);
  v135 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v118 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v116 - v23;
  v140 = v24;
  v141 = v18;
  if (!a2)
  {
    v26 = v20;
    v25 = 0;
LABEL_6:
    v28 = 1;
    goto LABEL_7;
  }

  type metadata accessor for MaintenanceContinuation();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    v26 = v20;
    goto LABEL_6;
  }

  v26 = v20;
  v27 = v25;
  v25 = *(v25 + 16);
  v28 = *(v27 + 24);
LABEL_7:
  v29 = a8;
  v32 = (*(*a1[2] + 440))(v25, v28, a4, a7, *(a8 + 8));
  v117 = v33;
  v116 = v34;
  v126 = a1;
  v127 = v29;
  v128 = a4;
  v129 = a7;

  v35 = v26;
  v36 = sub_1CF9E6DF8();
  v44 = v140;
  if (v36)
  {
    v45 = 0;
    v125 = (v135 + 16);
    v123 = (v135 + 32);
    v121 = v141 + 1;
    v124 = (v135 + 8);
    v122 = v32;
    v138 = v35;
    while (1)
    {
      v141 = 0;
      v46 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v46)
      {
        result = (*(v135 + 16))(v139, v32 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v45, v35);
        v48 = v133;
        v49 = v134;
        v50 = v15;
      }

      else
      {
        result = sub_1CF9E7998();
        v48 = v133;
        v49 = v134;
        if (v118 != 8)
        {
          goto LABEL_28;
        }

        v50 = v15;
        v145 = result;
        (*v125)(v139, &v145, v35);
        result = swift_unknownObjectRelease();
      }

      v51 = v132;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v136 = v45 + 1;
      v137 = v45;
      (*v123)(v44, v139, v35);
      v52 = v127;
      v53 = v44;
      v54 = v126;
      v55 = v128;
      v56 = v129;
      v57 = v48;
      v58 = v48;
      v59 = v141;
      sub_1CF596F84(v53, v126, v128, v50, v49, v129, v57, v51, v127);
      if (v59)
      {
        (*v124)(v140, v138);
        swift_bridgeObjectRelease_n();
        v115 = v120;
LABEL_8:
        v148 = v56;
        v149 = v52;
        v30 = __swift_allocate_boxed_opaque_existential_0(&v145);
        (*(*(v56 - 1) + 16))(v30, v55, v56);
        v31 = v59;
        v115(&v145, 0, 0, 0, v59);

        return sub_1CEFCCC44(&v145, &unk_1EC4C1B30, &qword_1CFA05300);
      }

      v61 = v130;
      v141 = 0;
      v62 = sub_1CF07EE34(v138, v60, v130);
      v63 = ((*v54)[22])(v62);
      v15 = v50;
      v59 = v141;
      sub_1CF596F84(v61, v63, v55, v50, v49, v56, v58, v51, v52);
      if (v59)
      {
        swift_bridgeObjectRelease_n();

        (*v121)(v61, v131);
        (*v124)(v140, v138);
        v115 = v120;
        v56 = v129;
        v55 = v128;
        v52 = v127;
        goto LABEL_8;
      }

      (*v121)(v61, v131);
      v44 = v140;
      v35 = v138;
      (*v124)(v140, v138);
      v32 = v122;
      v64 = sub_1CF9E6DF8();
      v45 = v137 + 1;
      if (v136 == v64)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_20:
    v32, v37, v38, v39, v40, v41, v42, v43;
    v65 = v129;
    v148 = v129;
    v149 = v127;
    if (v117)
    {
      v66 = __swift_allocate_boxed_opaque_existential_0(&v145);
      (*(*(v65 - 1) + 16))(v66, v128, v65);
      v143 = 0x73656972746E653CLL;
      v144 = 0xE90000000000003ALL;
      v67 = sub_1CF9E6DF8();
      v32, v68, v69, v70, v71, v72, v73, v74;
      v142 = v67;
      v75 = sub_1CF9E7F98();
      v77 = v76;
      MEMORY[0x1D3868CC0](v75);
      v77, v78, v79, v80, v81, v82, v83, v84;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v85 = v144;
      v120(&v145, 0, v143, v144, 0);
      v93 = v85;
    }

    else
    {
      v94 = __swift_allocate_boxed_opaque_existential_0(&v145);
      (*(*(v65 - 1) + 16))(v94, v128, v65);
      type metadata accessor for MaintenanceContinuation();
      v95 = swift_allocObject();
      *(v95 + 16) = v116;
      *(v95 + 24) = 0;
      *(v95 + 32) = 0;
      *(v95 + 40) = 1;
      v143 = 0x73656972746E653CLL;
      v144 = 0xE90000000000003ALL;
      v96 = sub_1CF9E6DF8();
      v32, v97, v98, v99, v100, v101, v102, v103;
      v142 = v96;
      v104 = sub_1CF9E7F98();
      v106 = v105;
      MEMORY[0x1D3868CC0](v104);
      v106, v107, v108, v109, v110, v111, v112, v113;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      v114 = v144;
      v120(&v145, v95, v143, v144, 0);

      v93 = v114;
    }

    v93, v86, v87, v88, v89, v90, v91, v92;
    return sub_1CEFCCC44(&v145, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF58D4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void (**)(char *, uint64_t, __n128)), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125 = a7;
  v15 = *(*v8 + 600);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v123 = *(*v8 + 608);
  v124 = v15;
  v129 = v15;
  v130 = v123;
  v121 = v17;
  v122 = v16;
  v131 = v16;
  v132 = v17;
  v119 = type metadata accessor for PersistenceTrigger(0, &v129);
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v106 - v18;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  v22 = *(a1 + 24);
  v23 = *(a8 + 8);
  v24 = 0;
  v28 = (*(*v22 + 512))(89, 256, v20, v21, a4, v125, v23);
  v108 = v29;
  v107 = v30;
  v115 = a1;
  v109 = a8;
  v120 = a4;
  v110 = a6;
  v111 = a5;

  v129 = v124;
  v130 = v123;
  v131 = v122;
  v132 = v121;
  type metadata accessor for ItemJob(0, &v129);
  if (sub_1CF9E6DF8())
  {
    v112 = v117 + 1;
    v38 = 4;
    v114 = v22;
    v113 = v23;
    do
    {
      v39 = v38 - 4;
      v40 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v40)
      {
        v41 = *(&v28->super.isa + v38);

        v42 = v38 - 3;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v41 = sub_1CF9E7998();
        v42 = v38 - 3;
        if (__OFADD__(v39, 1))
        {
LABEL_19:
          __break(1u);
          break;
        }
      }

      if (v41[112] || (v41[97] & 1) == 0)
      {
      }

      else
      {

        v44 = sub_1CF66E048(v43, 0, v120, v125, v23);
        if (v24)
        {

          swift_bridgeObjectRelease_n();
          v104 = v111;
          v105 = v120;
          v25 = v125;
          v132 = v125;
          v133 = v109;
          v26 = __swift_allocate_boxed_opaque_existential_0(&v129);
          (*(*(v25 - 8) + 16))(v26, v105, v25);
          v27 = v24;
          v104(&v129, 0, 0, 0, v24);

          return sub_1CEFCCC44(&v129, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        if (v44)
        {
        }

        else
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v117 = 0;
          v116 = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v47 = v116;
          v48 = swift_getAssociatedConformanceWitness();
          v129 = AssociatedTypeWitness;
          v130 = v47;
          v131 = AssociatedConformanceWitness;
          v132 = v48;
          type metadata accessor for ReconciliationID(255, &v129);
          v49 = *(swift_getTupleTypeMetadata2() + 48);
          v50 = v118;
          (*(*(AssociatedTypeWitness - 8) + 16))(v118, &v41[*(*v41 + 576)], AssociatedTypeWitness);
          swift_storeEnumTagMultiPayload();
          LOBYTE(v47) = sub_1CF03D760();

          v50[v49] = v47;
          v23 = v113;
          v51 = v119;
          swift_storeEnumTagMultiPayload();
          (*(*v115 + 312))(v50);

          v52 = v50;
          v24 = v117;
          (*v112)(v52, v51);
        }
      }

      ++v38;
    }

    while (v42 != sub_1CF9E6DF8());
  }

  v28, v31, v32, v33, v34, v35, v36, v37;
  v53 = v125;
  v132 = v125;
  v133 = v109;
  if (v108)
  {
    v54 = __swift_allocate_boxed_opaque_existential_0(&v129);
    (*(*(v53 - 8) + 16))(v54, v120, v53);
    v127 = 0x73656972746E653CLL;
    v128 = 0xE90000000000003ALL;
    v55 = sub_1CF9E6DF8();
    v28, v56, v57, v58, v59, v60, v61, v62;
    v126 = v55;
    v63 = sub_1CF9E7F98();
    v65 = v64;
    MEMORY[0x1D3868CC0](v63);
    v65, v66, v67, v68, v69, v70, v71, v72;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v73 = v128;
    v111(&v129, 0, v127, v128, 0);
    v81 = v73;
  }

  else
  {
    v82 = __swift_allocate_boxed_opaque_existential_0(&v129);
    (*(*(v53 - 8) + 16))(v82, v120, v53);
    type metadata accessor for MaintenanceContinuation();
    v83 = swift_allocObject();
    *(v83 + 16) = v107;
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;
    *(v83 + 40) = 1;
    v127 = 0x3A73626F6A3CLL;
    v128 = 0xE600000000000000;
    v84 = sub_1CF9E6DF8();
    v28, v85, v86, v87, v88, v89, v90, v91;
    v126 = v84;
    v92 = sub_1CF9E7F98();
    v94 = v93;
    MEMORY[0x1D3868CC0](v92);
    v94, v95, v96, v97, v98, v99, v100, v101;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v102 = v128;
    v111(&v129, v83, v127, v128, 0);

    v81 = v102;
  }

  v81, v74, v75, v76, v77, v78, v79, v80;
  return sub_1CEFCCC44(&v129, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58DCB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v138 = a5;
  v139 = a8;
  v142 = a4;
  v143 = a7;
  v137 = a6;
  v140 = a1;
  v10 = *v8;
  v11 = *(*v8 + 624);
  v12 = *(*v8 + 608);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(v10 + 616);
  v15 = *(v10 + 600);
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v149 = AssociatedTypeWitness;
  v150 = v16;
  v151 = AssociatedConformanceWitness;
  v152 = v18;
  v135 = type metadata accessor for ReconciliationID(255, &v149);
  v128 = sub_1CF9E75D8();
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v131 = &v112 - v19;
  v126 = v135[-1].i64[1];
  MEMORY[0x1EEE9AC00](v20);
  v132 = &v112 - v21;
  v149 = v15;
  v150 = v12;
  v144 = v12;
  v145 = v11;
  v151 = v14;
  v152 = v11;
  v133 = type metadata accessor for PersistenceTrigger(0, &v149);
  v124 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v112 - v22;
  v149 = v16;
  v150 = AssociatedTypeWitness;
  v151 = v18;
  v152 = AssociatedConformanceWitness;
  v23 = type metadata accessor for ReconciliationID(255, &v149);
  v130 = sub_1CF9E75D8();
  v125 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v134 = &v112 - v24;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v112 - v27;
  v141 = v23;
  if (!a2)
  {
    v28 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
LABEL_5:
    v30 = 1;
    goto LABEL_6;
  }

  v29 = v28;
  v28 = *(v28 + 16);
  v30 = *(v29 + 24);
LABEL_6:
  v31 = v140[3];
  v32 = *(v139 + 8);
  v33 = (*(*v31 + 504))(v28, v30, v142, v143, v32);
  v122 = v34;
  v123 = v32;
  v119 = v35;

  v149 = v15;
  v150 = v144;
  v151 = v14;
  v152 = v145;
  type metadata accessor for FSOrFPJob(0, &v149);
  if (!sub_1CF9E6DF8())
  {
    goto LABEL_30;
  }

  v121 = (v126 + 6);
  v116 = (v126 + 4);
  v118 = (v124 + 1);
  v117 = (v126 + 1);
  v115 = (v127 + 1);
  v127 = (v25 + 48);
  v124 = (v25 + 32);
  v114 = (v25 + 16);
  v126 = (v25 + 8);
  ++v125;
  v43 = 4;
  v120 = v31;
  while (1)
  {
    v44 = v43 - 4;
    v45 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v45 & 1) == 0)
    {
      break;
    }

    v46 = *(&v33->super.isa + v43);

    v47 = v43 - 3;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_29;
    }

LABEL_12:
    v48 = sub_1CF057B00(v46);
    if (v49 || (v48 & 0x100) == 0)
    {
    }

    else if (v46 < 0)
    {
      v54 = v46 & 0x7FFFFFFFFFFFFFFFLL;
      v55 = v131;
      (*(*v54 + 440))();
      v56 = v135;
      if ((*v121)(v55, 1, v135) == 1)
      {

        (*v115)(v55, v128);
      }

      else
      {
        v57 = (*v116)(v132, v55, v56);
        (*(*v140 + 176))(v57);

        v58 = sub_1CF66E048(v54, 0, v142, v143, v123);

        if (v58)
        {
        }

        else
        {
          v113 = *(swift_getTupleTypeMetadata2() + 48);
          v60 = v129;
          sub_1CF050768(v135, v129);
          *(v60 + v113) = sub_1CF03D760();
          swift_storeEnumTagMultiPayload();
          (*(*v140 + 312))(v60);

          (*v118)(v60, v133);
        }

        (*v117)(v132, v135);
      }
    }

    else
    {
      v50 = v134;
      (*(*v46 + 440))();
      v51 = v50;
      v52 = v50;
      v53 = v141;
      if ((*v127)(v52, 1, v141) == 1)
      {

        (*v125)(v51, v130);
      }

      else
      {
        (*v124)(v136, v51, v53);
        if (sub_1CF66E048(v46, 0, v142, v143, v123))
        {
        }

        else
        {
          v113 = *(swift_getTupleTypeMetadata2() + 48);
          v59 = v129;
          (*v114)(v129, v136, v141);
          *(v59 + v113) = sub_1CF03D760();
          swift_storeEnumTagMultiPayload();
          (*(*v140 + 312))(v59);

          (*v118)(v59, v133);
        }

        (*v126)(v136, v141);
      }
    }

    ++v43;
    if (v47 == sub_1CF9E6DF8())
    {
      goto LABEL_30;
    }
  }

  v46 = sub_1CF9E7998();

  swift_unknownObjectRelease();
  v47 = v43 - 3;
  if (!__OFADD__(v44, 1))
  {
    goto LABEL_12;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v33, v36, v37, v38, v39, v40, v41, v42;
  v61 = v143;
  v152 = v143;
  v153 = v139;
  if (v122)
  {
    v62 = __swift_allocate_boxed_opaque_existential_0(&v149);
    (*(*(v61 - 8) + 16))(v62, v142, v61);
    v147 = 0x73656972746E653CLL;
    v148 = 0xE90000000000003ALL;
    v63 = sub_1CF9E6DF8();
    v33, v64, v65, v66, v67, v68, v69, v70;
    v146 = v63;
    v71 = sub_1CF9E7F98();
    v73 = v72;
    MEMORY[0x1D3868CC0](v71);
    v73, v74, v75, v76, v77, v78, v79, v80;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v81 = v148;
    v138(&v149, 0, v147, v148, 0);
    v89 = v81;
  }

  else
  {
    v90 = __swift_allocate_boxed_opaque_existential_0(&v149);
    (*(*(v61 - 8) + 16))(v90, v142, v61);
    type metadata accessor for MaintenanceContinuation();
    v91 = swift_allocObject();
    *(v91 + 16) = v119;
    *(v91 + 24) = 0;
    *(v91 + 32) = 0;
    *(v91 + 40) = 1;
    v147 = 0x3A73626F6A3CLL;
    v148 = 0xE600000000000000;
    v92 = sub_1CF9E6DF8();
    v33, v93, v94, v95, v96, v97, v98, v99;
    v146 = v92;
    v100 = sub_1CF9E7F98();
    v102 = v101;
    MEMORY[0x1D3868CC0](v100);
    v102, v103, v104, v105, v106, v107, v108, v109;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v110 = v148;
    v138(&v149, v91, v147, v148, 0);

    v89 = v110;
  }

  v89, v82, v83, v84, v85, v86, v87, v88;
  return sub_1CEFCCC44(&v149, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58EA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (*(**(a1 + 24) + 456))(*(v8 + 128), 100, a4, a7, a8);
  v44[3] = a7;
  v44[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
  if (v13 > 99)
  {
    type metadata accessor for MaintenanceContinuation();
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 1;
    *(v32 + 32) = 0;
    *(v32 + 40) = 1;
    v33 = sub_1CF9E7F98();
    v35 = v34;
    MEMORY[0x1D3868CC0](v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    a5(v44, v32, 0x646572697078653CLL, 0xE90000000000003ALL, 0);
  }

  else
  {
    v15 = sub_1CF9E7F98();
    v17 = v16;
    MEMORY[0x1D3868CC0](v15);
    v17, v18, v19, v20, v21, v22, v23, v24;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    a5(v44, 0, 0x646572697078653CLL, 0xE90000000000003ALL, 0);
  }

  0xE90000000000003ALL, v25, v26, v27, v28, v29, v30, v31;
  return sub_1CEFCCC44(v44, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58ED34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
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
  v16 = (*(**(a1 + 16) + 456))(v13, v15, a4, a7, a8);
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

uint64_t sub_1CF58EFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v14 = *(v14 + 16);
      v16 = *(v15 + 24);
      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = 1;
LABEL_6:
  v17 = (*(*v8 + 632))(v14, v16, a1, a4, a7, a8);
  v24[3] = a7;
  v24[4] = a8;
  if (v18)
  {
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(v24, 0, 0, 0, 0);
  }

  else
  {
    v20 = v17;
    v21 = __swift_allocate_boxed_opaque_existential_0(v24);
    (*(*(a7 - 8) + 16))(v21, a4, a7);
    type metadata accessor for MaintenanceContinuation();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 1;
    a5(v24, v22, 0, 0, 0);
  }

  return sub_1CEFCCC44(v24, &unk_1EC4C1B30, &qword_1CFA05300);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF58F274(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v169 = a6;
  v170 = a5;
  v14 = *v8;
  v162 = sub_1CF9E6118();
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v14 + 600);
  v160 = *(v14 + 616);
  v159 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v166 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v158 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v163 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v156 - v22;
  v175 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v174 = sub_1CF9E75D8();
  v25 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v27 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v156 - v30;
  v32 = *(a1 + 32);
  if (*(*(v32[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext + 16) == 1)
  {
    v167 = a8;
    v168 = a7;
    v165 = a4;
    if (a2 && (type metadata accessor for MaintenanceContinuation(), (v33 = swift_dynamicCastClass()) != 0) && *(v33 + 24) != 1)
    {
      v34 = *(v33 + 16);
    }

    else
    {
      v34 = -1;
    }

    v35 = v175;
    v36 = 0;
    v38 = (*(*v32 + 616))(v34, v165, v168, *(v167 + 8), v29);
    v157 = v39;
    v156 = v40;
    v171 = (v166 + 32);
    v172 = (v166 + 8);
    v173 = (v25 + 32);
    while (1)
    {
      if (v36 == sub_1CF9E6DF8())
      {
        v41 = *(TupleTypeMetadata2 - 8);
        (*(v41 + 56))(v27, 1, 1, TupleTypeMetadata2);
      }

      else
      {
        v42 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v42)
        {
          v43 = *(TupleTypeMetadata2 - 8);
          (*(v43 + 16))(v27, v38 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v36, TupleTypeMetadata2);
          v51 = __OFADD__(v36++, 1);
          if (v51)
          {
            goto LABEL_21;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          v43 = *(TupleTypeMetadata2 - 8);
          if (*(v43 + 64) != 8)
          {
            __break(1u);
            return result;
          }

          v177[0] = result;
          a2 = result;
          (*(v43 + 16))(v27, v177, TupleTypeMetadata2);
          swift_unknownObjectRelease();
          v51 = __OFADD__(v36++, 1);
          if (v51)
          {
LABEL_21:
            __break(1u);
LABEL_22:
            v38, v44, v45, v46, v47, v48, v49, v50;
            v87 = fpfs_current_or_default_log();
            v88 = v164;
            sub_1CF9E6128();
            v89 = *(v166 + 16);
            v90 = v163;
            v91 = v175;
            v89(v163, v176, v175);

            v92 = sub_1CF9E6108();
            v93 = sub_1CF9E72A8();
            a2, v94, v95, v96, v97, v98, v99, v100;
            if (os_log_type_enabled(v92, v93))
            {
              v101 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              v177[0] = v174;
              *v101 = 136315394;
              v102 = v90;
              v103 = v158;
              v89(v158, v102, v175);
              v104 = *v172;
              LODWORD(v173) = v93;
              v104(v102, v175);
              swift_getAssociatedConformanceWitness();
              v105 = sub_1CF9E7F98();
              v107 = v106;
              v104(v103, v175);
              v108 = sub_1CEFD0DF0(v105, v107, v177);
              v107, v109, v110, v111, v112, v113, v114, v115;
              *(v101 + 4) = v108;
              *(v101 + 12) = 2080;
              v116 = sub_1CF9E6888();
              v117 = [v116 fp_obfuscatedFilename];

              v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v120 = v119;
              a2, v119, v121, v122, v123, v124, v125, v126;

              v127 = sub_1CEFD0DF0(v118, v120, v177);
              v120, v128, v129, v130, v131, v132, v133, v134;
              *(v101 + 14) = v127;
              _os_log_impl(&dword_1CEFC7000, v92, v173, "found package with .folder or .git extension, %s: %s", v101, 0x16u);
              v135 = v174;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v135, -1, -1);
              v136 = v101;
              v91 = v175;
              MEMORY[0x1D386CDC0](v136, -1, -1);

              (*(v161 + 8))(v164, v162);
            }

            else
            {
              v104 = *v172;
              (*v172)(v90, v91);

              a2, v139, v140, v141, v142, v143, v144, v145;
              (*(v161 + 8))(v88, v162);
            }

            v146 = v168;
            v147 = v167;
            sub_1CF24CD3C();
            v148 = swift_allocError();
            *v149 = 3;
            *(v149 + 8) = 0u;
            *(v149 + 24) = 0u;
            *(v149 + 40) = 0;
            *(v149 + 48) = 9;
            swift_willThrow();
            v104(v176, v91);
            v150 = v170;
            v151 = v165;
            v178 = v146;
            v179 = v147;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v177);
            (*(*(v146 - 8) + 16))(boxed_opaque_existential_0, v151, v146);
            v153 = v148;
            v150(v177, 0, 0, 0, v148);

            return sub_1CEFCCC44(v177, &unk_1EC4C1B30, &qword_1CFA05300);
          }
        }

        v41 = v43;
        (*(v43 + 56))(v27, 0, 1, TupleTypeMetadata2);
      }

      (*v173)(v31, v27, v174);
      if ((*(v41 + 48))(v31, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      a2 = *(v31 + 1);
      (*v171)(v176, &v31[*(TupleTypeMetadata2 + 48)], v35);
      sub_1CF9E6958();
      v60 = v59;
      v61 = sub_1CF9E6AF8();
      v60, v62, v63, v64, v65, v66, v67, v68;
      if (v61)
      {
        goto LABEL_22;
      }

      sub_1CF9E6958();
      v70 = v69;
      v71 = sub_1CF9E6AF8();
      v70, v72, v73, v74, v75, v76, v77, v78;
      if (v71)
      {
        goto LABEL_22;
      }

      v35 = v175;
      (*v172)(v176, v175);
      a2, v79, v80, v81, v82, v83, v84, v85;
    }

    v38, v52, v53, v54, v55, v56, v57, v58;
    v137 = v168;
    if (v157)
    {
      v178 = v168;
      v179 = v167;
      v138 = __swift_allocate_boxed_opaque_existential_0(v177);
      (*(*(v137 - 8) + 16))(v138, v165, v137);
      goto LABEL_8;
    }

    v178 = v168;
    v179 = v167;
    v154 = __swift_allocate_boxed_opaque_existential_0(v177);
    (*(*(v137 - 8) + 16))(v154, v165, v137);
    type metadata accessor for MaintenanceContinuation();
    v155 = swift_allocObject();
    *(v155 + 16) = v156;
    *(v155 + 24) = 0;
    *(v155 + 32) = 0;
    *(v155 + 40) = 1;
    v170(v177, v155, 0, 0, 0);
  }

  else
  {
    v178 = a7;
    v179 = a8;
    v37 = __swift_allocate_boxed_opaque_existential_0(v177);
    (*(*(a7 - 8) + 16))(v37, a4, a7);
LABEL_8:
    v170(v177, 0, 0, 0, 0);
  }

  return sub_1CEFCCC44(v177, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF58FDF0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, unint64_t, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v146 = a8;
  v145 = a6;
  v14 = *(*v8 + 600);
  v15 = *(*v8 + 608);
  v16 = *(*v8 + 616);
  v17 = *(*v8 + 624);
  v164 = v14;
  v165 = v15;
  v166 = v16;
  v167 = v17;
  v130 = type metadata accessor for PersistenceTrigger(0, &v164);
  v139 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &AssociatedConformanceWitness - v18;
  v20 = type metadata accessor for SnapshotItem(255, v14, v16, v19);
  v129 = sub_1CF9E75D8();
  v136 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v133 = &AssociatedConformanceWitness - v21;
  v131 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v132 = &AssociatedConformanceWitness - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = sub_1CF9E75D8();
  v140 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &AssociatedConformanceWitness - v25;
  v159 = v16;
  v160 = v14;
  v164 = v14;
  v165 = v15;
  v157 = v17;
  v158 = v15;
  v166 = v16;
  v167 = v17;
  v26 = type metadata accessor for ItemReconciliation(255, &v164);
  v147 = sub_1CF9E75D8();
  v27 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v29 = &AssociatedConformanceWitness - v28;
  v30 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v150 = &AssociatedConformanceWitness - v32;
  v135 = v22;
  v134 = v27;
  v137 = v30;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v33 = swift_dynamicCastClass()) != 0))
  {
    v34 = a5;
    v35 = *(v33 + 16);
    v36 = *(v33 + 24);
  }

  else
  {
    v34 = a5;
    v35 = 0;
    v36 = 1;
  }

  v37 = *(v146 + 8);
  v38 = a4;
  v39 = (*(*a1[3] + 512))(89, 32, v35, v36, a4, a7, v37);
  v126 = v40;
  v153 = v37;
  v125 = v41;
  v154 = a1;
  v155 = v38;
  v156 = a7;
  v127 = v34;

  v164 = v160;
  v165 = v158;
  v166 = v159;
  v167 = v157;
  v42 = type metadata accessor for ItemJob(0, &v164);
  if (sub_1CF9E6DF8())
  {
    v152 = (v137 + 6);
    v143 = (v137 + 4);
    v142 = (v140 + 2);
    v141 = AssociatedTypeWitness - 8;
    ++v137;
    ++v140;
    v124 = (v135 + 6);
    v123 = (v135 + 4);
    ++v135;
    v122 = v139 + 1;
    ++v136;
    v139 = (v134 + 8);
    v50 = 4;
    v144 = v29;
    v138 = v42;
    do
    {
      v51 = v50 - 4;
      v52 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v52)
      {
        v53 = *(&v39->super.isa + v50);

        v54 = v50 - 3;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v53 = sub_1CF9E7998();
        v54 = v50 - 3;
        if (__OFADD__(v51, 1))
        {
LABEL_32:
          __break(1u);
          break;
        }
      }

      v164 = v160;
      v165 = v158;
      v166 = v159;
      v167 = v157;
      type metadata accessor for Materialization.MaterializeItem(0, &v164);
      if (swift_dynamicCastClass())
      {
        v55 = *(*v53 + 576);
        sub_1CF68DDB0(v53 + v55, v155, v156, v153, v29);
        if ((*v152)(v29, 1, v26) == 1)
        {

          (*v139)(v29, v147);
        }

        else
        {
          v56 = v150;
          (*v143)(v150, v29, v26);
          v57 = &v56[*(v26 + 52)];
          v58 = v26;
          v59 = v148;
          v60 = v149;
          (*v142)(v148, v57, v149);
          if ((*(*(AssociatedTypeWitness - 8) + 48))(v59, 1) != 1)
          {
            (*v137)(v56, v58);

            (*v140)(v59, v60);
            v26 = v58;
            goto LABEL_19;
          }

          (*v140)(v59, v60);
          result = type metadata accessor for ItemReconciliationHalf(0, v160, v159, v61);
          if (v56[*(result + 44)])
          {
            v26 = v58;
LABEL_17:
            (*v137)(v56, v26);

LABEL_19:
            v29 = v144;
            goto LABEL_8;
          }

          v26 = v58;
          if (v56[*(result + 56)] != 6)
          {
            goto LABEL_17;
          }

          v63 = v56[*(v58 + 56)];
          v29 = v144;
          if (v63 == 2)
          {
            (*v137)(v56, v26);
          }

          else
          {
            if (v63 == 4)
            {
              __break(1u);
              return result;
            }

            (*(*v154[4] + 240))(v53 + v55, 1, v155, v156, v153);
            v64 = v131;
            if ((*v124)(v133, 1, v131) == 1)
            {
              (*v137)(v150, v26);

              (*v136)(v133, v129);
            }

            else
            {
              (*v123)(v132, v133, v64);
              WitnessTable = swift_getWitnessTable();
              if (sub_1CF937C7C(v64, WitnessTable))
              {
                v134 = swift_getAssociatedTypeWitness();
                AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                v66 = AssociatedTypeWitness;
                v67 = swift_getAssociatedConformanceWitness();
                v164 = v134;
                v165 = v66;
                v166 = AssociatedConformanceWitness;
                v167 = v67;
                type metadata accessor for ReconciliationID(255, &v164);
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                AssociatedConformanceWitness = *(swift_getTupleTypeMetadata2() + 48);
                v68 = v53 + v55;
                v69 = v128;
                (*(*(v134 - 8) + 16))(v128, v68);
                swift_storeEnumTagMultiPayload();
                type metadata accessor for FileTreeError(0, v160, v159, v70);
                swift_getWitnessTable();
                *&v69[AssociatedConformanceWitness] = swift_allocError();
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                ((*v154)[39])(v69);

                (*v122)(v69, v130);
              }

              else
              {
              }

              (*v135)(v132, v131);
              (*v137)(v150, v26);
            }
          }
        }
      }

      else
      {
      }

LABEL_8:
      ++v50;
    }

    while (v54 != sub_1CF9E6DF8());
  }

  v39, v43, v44, v45, v46, v47, v48, v49;
  v71 = v156;
  v167 = v156;
  v168 = v146;
  if (v126)
  {
    v72 = __swift_allocate_boxed_opaque_existential_0(&v164);
    (*(*(v71 - 8) + 16))(v72, v155, v71);
    v162 = 0x73656972746E653CLL;
    v163 = 0xE90000000000003ALL;
    v73 = sub_1CF9E6DF8();
    v39, v74, v75, v76, v77, v78, v79, v80;
    v161 = v73;
    v81 = sub_1CF9E7F98();
    v83 = v82;
    MEMORY[0x1D3868CC0](v81);
    v83, v84, v85, v86, v87, v88, v89, v90;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v91 = v163;
    v127(&v164, 0, v162, v163, 0);
    v99 = v91;
  }

  else
  {
    v100 = __swift_allocate_boxed_opaque_existential_0(&v164);
    (*(*(v71 - 8) + 16))(v100, v155, v71);
    type metadata accessor for MaintenanceContinuation();
    v101 = swift_allocObject();
    *(v101 + 16) = v125;
    *(v101 + 24) = 0;
    *(v101 + 32) = 0;
    *(v101 + 40) = 1;
    v162 = 0x3A73626F6A3CLL;
    v163 = 0xE600000000000000;
    v102 = sub_1CF9E6DF8();
    v39, v103, v104, v105, v106, v107, v108, v109;
    v161 = v102;
    v110 = sub_1CF9E7F98();
    v112 = v111;
    MEMORY[0x1D3868CC0](v110);
    v112, v113, v114, v115, v116, v117, v118, v119;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v120 = v163;
    v127(&v164, v101, v162, v163, 0);

    v99 = v120;
  }

  v99, v92, v93, v94, v95, v96, v97, v98;
  return sub_1CEFCCC44(&v164, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF590DF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(**(a3 + 16) + 464))(a1, a2 & 1, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

double sub_1CF590E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(*(a1 + 32) + 16);
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a1;
  v14[5] = a5;
  v14[6] = a6;
  v15 = *(*v13 + 952);

  v15(sub_1CF595E10, v14);

  return result;
}

double sub_1CF590F88(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  v9 = type metadata accessor for Continuation();
  swift_retain_n();
  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF045408, 0, sub_1CF559088, v7, sub_1CF595E20, v8, v9, MEMORY[0x1E69E6158]);

  return result;
}

uint64_t sub_1CF5910A4(uint64_t a1, char a2, void (*a3)(_BYTE *, uint64_t, void, void, void))
{
  if (a2)
  {
    sub_1CF1A91AC(a1, v6);
    type metadata accessor for MaintenanceContinuation();
    v4 = swift_allocObject();
    *(v4 + 16) = 100;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 1;
    a3(v6, v4, 0, 0, 0);
  }

  else
  {
    sub_1CF1A91AC(a1, v6);
    a3(v6, 0, 0, 0, 0);
  }

  return sub_1CEFCCC44(v6, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5911B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a5;
  v58 = a8;
  v59 = a4;
  v60 = a7;
  v56 = a6;
  v64 = a3;
  v11 = *v8;
  v12 = *v8;
  v66 = sub_1CF9E5CF8();
  v13 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 616);
  v16 = *(v11 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v54 = *(v18 + 64);
  v19 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v52 - v20;
  v55 = v13;
  v63 = v12;
  v61 = v15;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v22 = swift_dynamicCastClass()) != 0) && *(v22 + 24) != 1)
  {
    v23 = *(v22 + 16);
  }

  else
  {
    v23 = -1;
  }

  v24 = (*(**(a1 + 16) + 480))(v23, v59, v60, *(v58 + 8), v19);
  v53 = v25;
  v52 = v26;
  if (sub_1CF9E6DF8())
  {
    v34 = *(v63 + 608);
    v35 = *(v63 + 624);
    v67 = v16;
    v68 = v34;
    v36 = v61;
    v69 = v61;
    v70 = v35;
    v62 = type metadata accessor for JobResult(0, &v67);
    v67 = v16;
    v68 = v34;
    v69 = v36;
    v70 = v35;
    v61 = type metadata accessor for RemoteVersion.CleanRemoteVersions(0, &v67);
    v37 = 0;
    v63 = v18 + 16;
    v38 = (v55 + 8);
    while (1)
    {
      v39 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v39)
      {
        (*(v18 + 16))(v21, v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v37, AssociatedTypeWitness);
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v54 != 8)
        {
          goto LABEL_26;
        }

        v67 = result;
        (*v63)(v21, &v67, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      v41 = v65;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v43 = v42;
      result = (*v38)(v41, v66);
      v45 = v43 * 1000000000.0;
      if (COERCE__INT64(fabs(v43 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v45 <= -9.22337204e18)
      {
        goto LABEL_24;
      }

      if (v45 >= 9.22337204e18)
      {
        goto LABEL_25;
      }

      v46 = sub_1CF989304(v21, 0, v45, 2);
      (*(v18 + 8))(v21, AssociatedTypeWitness);
      sub_1CF803A0C(v64, v46);

      ++v37;
      if (v40 == sub_1CF9E6DF8())
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_18:
    v24, v27, v28, v29, v30, v31, v32, v33;
    v48 = v59;
    v47 = v60;
    v70 = v60;
    v71 = v58;
    if (v53)
    {
      v49 = __swift_allocate_boxed_opaque_existential_0(&v67);
      (*(*(v47 - 8) + 16))(v49, v48, v47);
      v57(&v67, 0, 0, 0, 0);
    }

    else
    {
      v50 = __swift_allocate_boxed_opaque_existential_0(&v67);
      (*(*(v47 - 8) + 16))(v50, v48, v47);
      type metadata accessor for MaintenanceContinuation();
      v51 = swift_allocObject();
      *(v51 + 16) = v52;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0;
      *(v51 + 40) = 1;
      v57(&v67, v51, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v67, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

uint64_t sub_1CF5917F0(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), NSObject *a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6)
{
  v122 = a6;
  v123 = a3;
  v124 = a4;
  v125[0] = a5;
  v96 = a2;
  v135 = a1;
  v7 = *v6;
  v92 = sub_1CF9E5CF8();
  v127 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v7[75];
  v10 = v7[76];
  v11 = v7[77];
  v12 = v7[78];
  v137 = v9;
  v138 = v10;
  v139 = v11;
  v140 = v12;
  v88 = type metadata accessor for ReconciliationMutation(0, &v137);
  v111 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v95 = v77 - v13;
  v15 = type metadata accessor for SnapshotItem(255, v9, v11, v14);
  v106 = sub_1CF9E75D8();
  v109 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v93 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v107 = v77 - v18;
  v108 = v15;
  v105 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v97 = v77 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v119 = sub_1CF9E75D8();
  *&v104 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v116 = v77 - v22;
  v120 = AssociatedTypeWitness;
  v103 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v117 = v77 - v24;
  v137 = v9;
  v138 = v10;
  v90 = v10;
  v139 = v11;
  v140 = v12;
  v89 = v12;
  v25 = type metadata accessor for ItemReconciliation(255, &v137);
  v115 = sub_1CF9E75D8();
  v102 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v134 = v77 - v26;
  v27 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v77 - v29;
  v31 = v11;
  v32 = swift_getAssociatedTypeWitness();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v34;
  MEMORY[0x1EEE9AC00](v36);
  v133 = v77 - v37;
  result = sub_1CF9E6DF8();
  if (!result)
  {
    return result;
  }

  v118 = v30;
  v84 = v6;
  v39 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = 0;
  v129 = *AssociatedConformanceWitness[2]._anon_8;
  anon_8 = AssociatedConformanceWitness[2]._anon_8;
  v136 = AssociatedConformanceWitness;
  v125[1] = AssociatedConformanceWitness + 2;
  v132 = (v33 + 16);
  v128 = (v33 + 32);
  v121 = (v27 + 48);
  v114 = (v27 + 32);
  v113 = (v104 + 16);
  v112 = (v103 + 6);
  v101 = (v103 + 4);
  v98 = (v105 + 6);
  v87 = (v105 + 4);
  v83 = (v105 + 2);
  v82 = (v105 + 7);
  v94 = v109 + 1;
  v80 = (v103 + 2);
  v79 = v127 + 1;
  v78 = v111 + 1;
  v86 = (v105 + 1);
  ++v103;
  v109 = (v27 + 8);
  v127 = (v33 + 8);
  v105 = (v104 + 8);
  v111 = (v102 + 8);
  v104 = xmmword_1CFA04E60;
  v42 = v135;
  v100 = v25;
  v81 = v9;
  v99 = v39;
  v131 = v33;
  v110 = v35;
  while (1)
  {
    v43 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v43)
    {
      v44 = v131;
      v45 = v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41;
      v46 = v133;
      (*(v131 + 16))(v133, v45, v32);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v85 != 8)
      {
        goto LABEL_35;
      }

      v137 = result;
      v46 = v133;
      v44 = result;
      (*v132)(v133, &v137, v32);
      swift_unknownObjectRelease();
    }

    v48 = v41 + 1;
    v49 = v134;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_28:
      ((*(v47 - 32))->super.isa)(v44, v106);
      (*v86)(v49, v25);
LABEL_29:
      (*v103)(v117, v120);
      (*v109)(v118, v100);
      return (*v127)(v35, v32);
    }

    (*v128)(v35, v46, v32);
    if (v129(v32, v136) & 1) != 0 || ((v136[2].super.isa)(v32))
    {
      goto LABEL_4;
    }

    v50 = *(v122 + 8);
    v51 = v126;
    sub_1CF68DDB0(v35, v124, v125[0], v50, v49);
    v126 = v51;
    if (v51)
    {
      return (*v127)(v35, v32);
    }

    if ((*v121)(v49, 1, v25) == 1)
    {
      (*v127)(v35, v32);
      (*v111)(v49, v115);
      goto LABEL_5;
    }

    v52 = v118;
    (*v114)(v118, v49, v25);
    v53 = v116;
    (*v113)(v116, &v52[*(v25 + 52)], v119);
    v54 = v120;
    if ((*v112)(v53, 1, v120) == 1)
    {
      (*v109)(v52, v25);
      v35 = v110;
      (*v127)(v110, v32);
      (*v105)(v53, v119);
      goto LABEL_5;
    }

    (*v101)(v117, v53, v54);
    v55 = v107;
    v35 = v110;
    v56 = v126;
    (*(**(v123 + 4) + 240))(v110, 1, v124, v125[0], v50);
    v126 = v56;
    if (v56)
    {
      goto LABEL_29;
    }

    v57 = v108;
    v58 = (*v98)(v55, 1, v108);
    v59 = v99;
    if (v58 == 1)
    {
      (*v103)(v117, v120);
      v60 = v100;
      (*v109)(v118, v100);
      (*v127)(v35, v32);
      v61 = v55;
      v25 = v60;
      (*v94)(v61, v106);
      goto LABEL_5;
    }

    v49 = v97;
    (*v87)(v97, v55, v57);
    v25 = v57;
    v62 = v49 + *(v57 + 48);
    v63 = *(type metadata accessor for ItemMetadata(0) + 84);
    if (*(v62 + v63) != 5)
    {
      break;
    }

    (*v86)(v49, v25);
    (*v103)(v117, v120);
    v25 = v100;
    (*v109)(v118, v100);
LABEL_4:
    (*v127)(v35, v32);
LABEL_5:
    v42 = v135;
    result = sub_1CF9E6DF8();
    ++v41;
    if (v48 == result)
    {
      return result;
    }
  }

  *(v62 + v63) = 5;
  v44 = v93;
  (*v83)(v93, v49, v25);
  (*v82)(v44, 0, 1, v25);
  v64 = v126;
  sub_1CF611904(v44, v35, 0, 0, 0, v123, v84[15], v84[16], 0x20000000, v96, v124, v125[0], v122);
  v126 = v64;
  v47 = v125;
  if (v64)
  {
    goto LABEL_28;
  }

  (*v94)(v44, v106);
  v65 = v90;
  v137 = v81;
  v138 = v90;
  v139 = v59;
  v66 = v89;
  v140 = v89;
  v77[1] = type metadata accessor for JobResult(0, &v137);
  v67 = v120;
  v68 = swift_getAssociatedConformanceWitness();
  v137 = v32;
  v138 = v67;
  v139 = v136;
  v140 = v68;
  type metadata accessor for ReconciliationID(255, &v137);
  type metadata accessor for ReconciliationSideMutation(255, v65, v66, v69);
  v102 = *(swift_getTupleTypeMetadata2() + 48);
  (*v80)(v95, v117, v67);
  swift_storeEnumTagMultiPayload();
  v70 = v91;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v72 = v71;
  result = (*v79)(v70, v92);
  v73 = v72 * 1000000000.0;
  if (COERCE__INT64(fabs(v72 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v73 <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    v25 = v100;
    if (v73 >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v74 = v95;
    v75 = &v95[v102];
    *v75 = v104;
    *(v75 + 2) = v73;
    swift_storeEnumTagMultiPayload();
    v76 = v88;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v96, v74);
    (*v78)(v74, v76);
    (*v86)(v49, v108);
    (*v103)(v117, v120);
    (*v109)(v118, v25);
    goto LABEL_4;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1CF5928B0(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, _TtC18FileProviderDaemon8FSTester *a7, uint64_t a8)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  v13 = *(v13 + 16);
  v15 = *(v14 + 24);
LABEL_6:
  v16 = (*(**(a1 + 32) + 624))(v13, v15, a4, a7, *(a8 + 8));
  v18 = v17;
  v30 = v19;
  sub_1CF5917F0(v16, a3, a1, a4, a7, a8);
  v16, v20, v21, v22, v23, v24, v25, v26;
  v32[3] = a7;
  v32[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  (*(*a7[-1].tester + 16))(boxed_opaque_existential_0, a4, a7);
  if (v18)
  {
    a5(v32, 0, 0, 0, 0);
  }

  else
  {
    type metadata accessor for MaintenanceContinuation();
    v29 = swift_allocObject();
    *(v29 + 16) = v30;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 40) = 1;
    a5(v32, v29, 0, 0, 0);
  }

  return sub_1CEFCCC44(v32, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF592B70(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = a6;
  v16 = *(*v8 + 608);
  v17 = *(*v8 + 616);
  v18 = *(*v8 + 624);
  v75 = *(*v8 + 600);
  v15 = v75;
  v76 = v16;
  v71 = v16;
  v77 = v17;
  v78 = v18;
  v69 = v18;
  v68 = type metadata accessor for PersistenceTrigger(0, &v75);
  v19 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v52 - v20;
  v70 = v17;
  v72 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v59 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v52 - v22;
  v74 = v19;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v24 = swift_dynamicCastClass()) != 0))
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
    v26 = 1;
  }

  v27 = (*(*a1[3] + 528))(25, v25, v26, a4, a7, *(a8 + 8));
  v54 = v28;
  v53 = v29;
  v55 = a8;
  v56 = a4;
  v57 = a7;
  v58 = a5;
  if (sub_1CF9E6DF8())
  {
    v37 = 0;
    v38 = (*a1)[39];
    v63 = *a1 + 39;
    v64 = v38;
    v65 = v27;
    v66 = (v73 + 16);
    v61 = (v74 + 8);
    v62 = (v73 + 32);
    do
    {
      v39 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v39)
      {
        (*(v73 + 16))(v23, v27 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v37, AssociatedTypeWitness);
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v59 != 8)
        {
          __break(1u);
          return result;
        }

        v75 = result;
        (*v66)(v23, &v75, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v74 = v40;
      v41 = v67;
      (*v62)(v67, v23, AssociatedTypeWitness);
      v42 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v44 = swift_getAssociatedConformanceWitness();
      v75 = AssociatedTypeWitness;
      v76 = v42;
      v77 = AssociatedConformanceWitness;
      v78 = v44;
      type metadata accessor for ReconciliationID(0, &v75);
      swift_storeEnumTagMultiPayload();
      v45 = v68;
      swift_storeEnumTagMultiPayload();
      v64(v41);
      v46 = v41;
      v27 = v65;
      (*v61)(v46, v45);
      ++v37;
    }

    while (v74 != sub_1CF9E6DF8());
  }

  v27, v30, v31, v32, v33, v34, v35, v36;
  v48 = v57;
  v78 = v57;
  v79 = v55;
  if (v54)
  {
    v49 = __swift_allocate_boxed_opaque_existential_0(&v75);
    (*(*(v48 - 8) + 16))(v49, v56, v48);
    v58(&v75, 0, 0, 0, 0);
  }

  else
  {
    v50 = __swift_allocate_boxed_opaque_existential_0(&v75);
    (*(*(v48 - 8) + 16))(v50, v56, v48);
    type metadata accessor for MaintenanceContinuation();
    v51 = swift_allocObject();
    *(v51 + 16) = v53;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    *(v51 + 40) = 1;
    v58(&v75, v51, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v75, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF593238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v58 = a7;
  v55 = a6;
  v56 = a5;
  v59 = a4;
  v63 = a3;
  v11 = *v8;
  v12 = *v8;
  v65 = sub_1CF9E5CF8();
  v13 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 616);
  v16 = *(v11 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v53 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v51 - v19;
  v54 = v13;
  v62 = v12;
  v60 = v15;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v21 = swift_dynamicCastClass()) != 0))
  {
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  v24 = (*(**(a1 + 24) + 528))(4, v22, v23, v59, v58, *(v57 + 8));
  v52 = v25;
  v51 = v26;
  if (sub_1CF9E6DF8())
  {
    v34 = *(v62 + 608);
    v35 = *(v62 + 624);
    v66 = v16;
    v67 = v34;
    v36 = v60;
    v68 = v60;
    v69 = v35;
    v61 = type metadata accessor for JobResult(0, &v66);
    v66 = v16;
    v67 = v34;
    v68 = v36;
    v69 = v35;
    v60 = type metadata accessor for Ingestion.ReSnapshotChildren(0, &v66);
    v37 = 0;
    v62 = v18 + 16;
    v38 = (v54 + 8);
    while (1)
    {
      v39 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v39)
      {
        (*(v18 + 16))(v20, v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v37, AssociatedTypeWitness);
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v53 != 8)
        {
          goto LABEL_25;
        }

        v66 = result;
        (*v62)(v20, &v66, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      v41 = v64;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v43 = v42;
      result = (*v38)(v41, v65);
      v45 = v43 * 1000000000.0;
      if (COERCE__INT64(fabs(v43 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v45 <= -9.22337204e18)
      {
        goto LABEL_23;
      }

      if (v45 >= 9.22337204e18)
      {
        goto LABEL_24;
      }

      v46 = sub_1CF656FE0(v20, 0, v45, 8);
      (*(v18 + 8))(v20, AssociatedTypeWitness);
      sub_1CF803A0C(v63, v46);

      ++v37;
      if (v40 == sub_1CF9E6DF8())
      {
        goto LABEL_18;
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

  else
  {
LABEL_18:
    v24, v27, v28, v29, v30, v31, v32, v33;
    v47 = v58;
    v69 = v58;
    v70 = v57;
    if (v52)
    {
      v48 = __swift_allocate_boxed_opaque_existential_0(&v66);
      (*(*(v47 - 8) + 16))(v48, v59, v47);
      v56(&v66, 0, 0, 0, 0);
    }

    else
    {
      v49 = __swift_allocate_boxed_opaque_existential_0(&v66);
      (*(*(v47 - 8) + 16))(v49, v59, v47);
      type metadata accessor for MaintenanceContinuation();
      v50 = swift_allocObject();
      *(v50 + 16) = v51;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0;
      *(v50 + 40) = 1;
      v56(&v66, v50, 0, 0, 0);
    }

    return sub_1CEFCCC44(&v66, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  return result;
}

void *sub_1CF593874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v95 = a8;
  v94 = a1;
  v14 = *v8;
  v93 = sub_1CF9E5CF8();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v14[76];
  v18 = v14[77];
  v19 = v14[78];
  v120 = v14[75];
  v16 = v120;
  v121 = v17;
  v111 = v17;
  v122 = v18;
  v123 = v19;
  v109 = v19;
  v107 = type metadata accessor for ReconciliationMutation(0, &v120);
  v20 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v83 - v21;
  v110 = v18;
  v112 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v99 = &v83 - v23;
  v116 = v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v108 = sub_1CF9E75D8();
  v26 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v114 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v83 - v29;
  v119 = v20;
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
  v33 = (*(**(v94 + 16) + 584))(v30, v32, a4, a7, *(v95 + 8));
  v85 = v34;
  v84 = v35;
  v86 = 0;
  v87 = a4;
  v88 = a7;
  v89 = a6;
  v90 = a5;
  v120 = v112;
  v121 = v111;
  v122 = v110;
  v123 = v109;
  type metadata accessor for ConcreteJobResult(0, &v120);
  result = sub_1CF056580();
  v102 = result;
  v37 = 0;
  v98 = v33;
  v38 = *(v33 + 64);
  v96 = v33 + 64;
  v39 = 1 << *(v33 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v105 = TupleTypeMetadata2;
  v104 = TupleTypeMetadata2 - 8;
  v97 = v100 + 16;
  v115 = (v100 + 32);
  v103 = (v26 + 32);
  v101 = (v119 + 8);
  if ((v40 & v38) == 0)
  {
LABEL_10:
    if (v42 <= v37 + 1)
    {
      v45 = v37 + 1;
    }

    else
    {
      v45 = v42;
    }

    v46 = v45 - 1;
    v44 = v105;
    v47 = v113;
    v48 = v114;
    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v42)
      {
        v41 = 0;
        v58 = 1;
        goto LABEL_18;
      }

      v41 = *(v96 + 8 * v43);
      ++v37;
      if (v41)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  while (1)
  {
    v43 = v37;
    v44 = v105;
LABEL_17:
    v49 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v50 = v49 | (v43 << 6);
    v51 = v98;
    v52 = v100;
    v53 = v99;
    v54 = v116;
    (*(v100 + 16))(v99, *(v98 + 48) + *(v100 + 72) * v50, v116);
    v55 = *(*(v51 + 56) + 8 * v50);
    v56 = *(v44 + 48);
    v57 = *(v52 + 32);
    v48 = v114;
    v57(v114, v53, v54);
    v58 = 0;
    *&v48[v56] = v55;
    v46 = v43;
    v47 = v113;
LABEL_18:
    v59 = *(v44 - 8);
    (*(v59 + 56))(v48, v58, 1, v44);
    (*v103)(v47, v48, v108);
    if ((*(v59 + 48))(v47, 1, v44) == 1)
    {
      break;
    }

    v119 = *&v47[*(v44 + 48)];
    v120 = v112;
    v121 = v111;
    v122 = v110;
    v123 = v109;
    v117 = type metadata accessor for JobResult(0, &v120);
    v60 = swift_getAssociatedTypeWitness();
    v118 = v46;
    v61 = v60;
    v62 = v116;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v64 = swift_getAssociatedConformanceWitness();
    v120 = v62;
    v121 = v61;
    v122 = AssociatedConformanceWitness;
    v123 = v64;
    type metadata accessor for ReconciliationID(255, &v120);
    v65 = *(swift_getTupleTypeMetadata2() + 48);
    v66 = v106;
    (*v115)(v106, v47, v62);
    swift_storeEnumTagMultiPayload();
    *(v66 + v65) = v119;
    v67 = v107;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v102, v66);
    result = (*v101)(v66, v67);
    v37 = v118;
    if (!v41)
    {
      goto LABEL_10;
    }
  }

  v68 = v91;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v70 = v69;
  result = (*(v92 + 8))(v68, v93);
  v71 = v70 * 1000000000.0;
  if (COERCE__INT64(fabs(v70 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  if (v71 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v71 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v72 = v87;
  v73 = v88;
  v74 = v95;
  v75 = v86;
  sub_1CF521850(v102, v71, v87, v88, v95);
  if (v75)
  {

    v76 = v90;
    v123 = v73;
    v124 = v74;
    v77 = __swift_allocate_boxed_opaque_existential_0(&v120);
    (*(*(v73 - 8) + 16))(v77, v72, v73);
    v78 = v75;
    v76(&v120, 0, 0, 0, v75);
  }

  else
  {
    v79 = v90;
    v123 = v73;
    v124 = v95;
    if (v85)
    {
      v80 = __swift_allocate_boxed_opaque_existential_0(&v120);
      (*(*(v73 - 8) + 16))(v80, v72, v73);
      v79(&v120, 0, 0, 0, 0);
    }

    else
    {
      v81 = __swift_allocate_boxed_opaque_existential_0(&v120);
      (*(*(v73 - 8) + 16))(v81, v72, v73);
      type metadata accessor for MaintenanceContinuation();
      v82 = swift_allocObject();
      *(v82 + 16) = v84;
      *(v82 + 24) = 0;
      *(v82 + 32) = 0;
      *(v82 + 40) = 1;
      v79(&v120, v82, 0, 0, 0);
    }
  }

  return sub_1CEFCCC44(&v120, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF594328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = a8;
  v79 = a7;
  v80 = a5;
  v13 = *v8;
  v14 = sub_1CF9E5CF8();
  v76 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[75];
  v17 = v13[76];
  v18 = v13[77];
  v19 = v13[78];
  v91 = v16;
  v93 = v16;
  v94 = v17;
  v89 = v18;
  v95 = v18;
  v96 = v19;
  v86 = type metadata accessor for ReconciliationMutation(0, &v93);
  v82 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v68 - v20;
  v88 = v19;
  v90 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v73 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v92 = &v68 - v22;
  v23 = v8[16];
  v78 = a6;
  v77 = v14;
  if (a2 && (type metadata accessor for MaintenanceContinuation(), (v24 = swift_dynamicCastClass()) != 0))
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
  }

  else
  {
    v25 = 0;
    v26 = 1;
  }

  v27 = *(v81 + 8);
  v28 = a4;
  v29 = (*(**(a1 + 40) + 736))(v23, v25, v26, 100, a4, v79, v27);
  v69 = v30;
  v68 = v31;
  v71 = v27;
  v70 = 0;
  v72 = a1;
  v74 = v28;
  v93 = v91;
  v94 = v90;
  v95 = v89;
  v96 = v88;
  type metadata accessor for ConcreteJobResult(0, &v93);
  v32 = sub_1CF056580();
  if (sub_1CF9E6DF8())
  {
    v93 = v91;
    v94 = v90;
    v95 = v89;
    v96 = v88;
    type metadata accessor for JobResult(0, &v93);
    v40 = 0;
    v83 = (v87 + 32);
    v84 = (v87 + 16);
    ++v82;
    do
    {
      v41 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v41)
      {
        (*(v87 + 16))(v92, v29 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v40, AssociatedTypeWitness);
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v73 != 8)
        {
          goto LABEL_34;
        }

        v93 = result;
        (*v84)(v92, &v93, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      v43 = swift_getAssociatedTypeWitness();
      v44 = v32;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v46 = swift_getAssociatedConformanceWitness();
      v93 = v43;
      v94 = AssociatedTypeWitness;
      v95 = AssociatedConformanceWitness;
      v96 = v46;
      type metadata accessor for ReconciliationID(255, &v93);
      v47 = *(swift_getTupleTypeMetadata2() + 48);
      v48 = v85;
      (*v83)(v85, v92, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      *(v48 + v47) = 0x7FFFFFFFFFFFFFFFLL;
      v32 = v44;
      v49 = v86;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v32, v48);
      (*v82)(v48, v49);
      ++v40;
    }

    while (v42 != sub_1CF9E6DF8());
  }

  v29, v33, v34, v35, v36, v37, v38, v39;
  v51 = v75;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v53 = v52;
  result = (*(v76 + 8))(v51, v77);
  v54 = v53 * 1000000000.0;
  v55 = v71;
  if (COERCE__INT64(fabs(v53 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v54 <= -9.22337204e18)
  {
    goto LABEL_32;
  }

  v56 = v80;
  if (v54 < 9.22337204e18)
  {
    v57 = v74;
    v58 = v79;
    v59 = v81;
    v60 = v70;
    sub_1CF521850(v32, v54, v74, v79, v81);
    if (v60)
    {

      v61 = v74;
      v96 = v58;
      v97 = v81;
      v62 = __swift_allocate_boxed_opaque_existential_0(&v93);
      (*(*(v58 - 8) + 16))(v62, v61, v58);
      v63 = v60;
      v56(&v93, 0, 0, 0, v60);
    }

    else
    {
      if (v69)
      {
        v93 = v91;
        v94 = v90;
        v95 = v89;
        v96 = v88;
        type metadata accessor for SQLDatabase(0, &v93);
        if (swift_dynamicCastClass())
        {
          sub_1CF478C28();

          v66 = sub_1CF37D558(v57, v58, v55);

          if (v66 == 1)
          {

            sub_1CF37DA54();
          }

          v56 = v80;
        }

        v96 = v58;
        v97 = v59;
        v67 = __swift_allocate_boxed_opaque_existential_0(&v93);
        (*(*(v58 - 8) + 16))(v67, v57, v58);
        v56(&v93, 0, 0, 0, 0);
      }

      else
      {
        v96 = v58;
        v97 = v59;
        v64 = __swift_allocate_boxed_opaque_existential_0(&v93);
        (*(*(v58 - 8) + 16))(v64, v57, v58);
        type metadata accessor for MaintenanceWaitingContinuation();
        v65 = swift_allocObject();
        *(v65 + 16) = v68;
        *(v65 + 24) = 0;
        *(v65 + 32) = 0;
        *(v65 + 40) = 1;
        v56(&v93, v65, 0, 0, 0);
      }
    }

    return sub_1CEFCCC44(&v93, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1CF594C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1CF052464(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_1CF594D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v8;
  if (a2)
  {
    type metadata accessor for MaintenanceContinuation();
    a1 = swift_dynamicCastClass();
  }

  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = *(a8 + 8);
  v16 = (*(*v14 + 712))(100, v13);
  if (v17)
  {
    v18 = *(v12 + 616);
    v26 = *(v12 + 600);
    v27 = v18;
    type metadata accessor for SQLDatabase(0, &v26);
    if (swift_dynamicCastClass())
    {
      sub_1CF478C28();

      v22 = sub_1CF37D558(a4, a7, v15);

      if (v22 == 1)
      {

        sub_1CF37DA54();
      }
    }

    *(&v27 + 1) = a7;
    v28 = a8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v26);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    a5(&v26, 0, 0, 0, 0);
  }

  else
  {
    *(&v27 + 1) = a7;
    v28 = a8;
    v19 = v16;
    v20 = __swift_allocate_boxed_opaque_existential_0(&v26);
    (*(*(a7 - 8) + 16))(v20, a4, a7);
    type metadata accessor for MaintenanceWaitingContinuation();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    a5(&v26, v21, 0, 0, 0);
  }

  return sub_1CEFCCC44(&v26, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5950F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v36 = a1;
  v37 = a6;
  v33 = a4;
  v8 = *a5;
  v9 = *(*a5 + 80);
  v10 = *(*a5 + 88);
  v11 = *(*a5 + 96);
  v12 = *(*a5 + 104);
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v41 = v12;
  v13 = type metadata accessor for ReconciliationMutation(0, &v38);
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v17 = a2[1];
  v38 = *a2;
  v39 = v17;
  if ((*(v8 + 608))(&v38, a3, v33, v14))
  {
    v38 = v9;
    v39 = v10;
    v40 = v11;
    v41 = v12;
    v33 = type metadata accessor for JobResult(0, &v38);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = swift_getAssociatedConformanceWitness();
    v38 = AssociatedTypeWitness;
    v39 = v19;
    v40 = AssociatedConformanceWitness;
    v41 = v21;
    type metadata accessor for ReconciliationID(255, &v38);
    v22 = 0;
    v23 = 4;
  }

  else
  {
    v38 = v9;
    v39 = v10;
    v40 = v11;
    v41 = v12;
    v33 = type metadata accessor for JobResult(0, &v38);
    v24 = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedTypeWitness();
    v25 = swift_getAssociatedConformanceWitness();
    v26 = swift_getAssociatedConformanceWitness();
    v38 = v24;
    v39 = v19;
    v40 = v25;
    v41 = v26;
    type metadata accessor for ReconciliationID(255, &v38);
    v23 = 0;
    v22 = 4;
  }

  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v28 = *(TupleTypeMetadata3 + 48);
  v29 = *(TupleTypeMetadata3 + 64);
  (*(*(v19 - 8) + 16))(v16, v36, v19);
  swift_storeEnumTagMultiPayload();
  *&v16[v28] = v22;
  *&v16[v29] = v23;
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v37, v16);
  return (*(v34 + 8))(v16, v30);
}

uint64_t sub_1CF5954E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_5;
  }

  type metadata accessor for MaintenanceContinuation();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_5:
    v15 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  v13 = *(v13 + 16);
  v15 = *(v14 + 24);
LABEL_6:
  v16 = (*(**(a1 + 16) + 576))(v13, v15, 100, a4, a7, *(a8 + 8));
  v18 = v17;
  v20 = v19;
  v21 = (**(a1 + 32) + 744);
  v22 = v16;
  (*v21)(v16, a4, a7, a8);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v33[3] = a7;
  v33[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
  if (v18)
  {
    a5(v33, 0, 0, 0, 0);
  }

  else
  {
    type metadata accessor for MaintenanceContinuation();
    v32 = swift_allocObject();
    *(v32 + 16) = v20;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 40) = 1;
    a5(v33, v32, 0, 0, 0);
  }

  return sub_1CEFCCC44(v33, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF5957C0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *, void, void, void, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a5;
  v59 = a6;
  v13 = *v8;
  v14 = sub_1CF9E5CF8();
  v55 = *(v14 - 8);
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v13[78];
  v17 = v13[76];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v49 - v18;
  v19 = v13[75];
  *&v20 = v19;
  *(&v20 + 1) = v17;
  v21 = v13[77];
  *&v22 = v21;
  *(&v22 + 1) = v16;
  v61 = v22;
  v60 = v20;
  v23 = type metadata accessor for PersistenceTrigger(0, &v60);
  v51 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v50 = (&v49 - v25);
  if (((*a1)[32])(v24))
  {
    goto LABEL_2;
  }

  v49 = v23;
  v27 = (*(*a1[3] + 520))(57, 0x400000, 0, 0, a4, a7, *(a8 + 8));
  *&v60 = v17;
  *(&v60 + 1) = v19;
  *&v61 = v16;
  *(&v61 + 1) = v21;
  v29 = v27;
  type metadata accessor for ItemJob(0, &v60);
  v30 = sub_1CF9E6DF8();
  v29, v31, v32, v33, v34, v35, v36, v37;
  if (v30 < 1)
  {
    goto LABEL_2;
  }

  *&v60 = v17;
  *(&v60 + 1) = v19;
  *&v61 = v16;
  *(&v61 + 1) = v21;
  type metadata accessor for DiskImport.DiskImportFinished(0, &v60);
  v38 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v54;
  (*(AssociatedConformanceWitness + 48))(v38, AssociatedConformanceWitness);
  v41 = v53;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v43 = v42;
  result = (*(v55 + 8))(v41, v56);
  v44 = v43 * 1000000000.0;
  if (COERCE__INT64(fabs(v43 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v44 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v44 < 9.22337204e18)
  {
    v45 = sub_1CF559420();
    (*(v52 + 8))(v40, v38);
    v46 = v45 | 0x8000000000000000;
    v47 = v49;
    v48 = v50;
    *v50 = v46;
    swift_storeEnumTagMultiPayload();
    ((*a1)[39])(v48);
    (*(v51 + 8))(v48, v47);
LABEL_2:
    *(&v61 + 1) = a7;
    v62 = a8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a4, a7);
    v58(&v60, 0, 0, 0, 0);
    return sub_1CEFCCC44(&v60, &unk_1EC4C1B30, &qword_1CFA05300);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF595D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    return v2;
  }

  return (*(a1 + 32) == *(a2 + 32)) & ~v2;
}

uint64_t sub_1CF595E40(uint64_t a1, void *a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v123 = a5;
  v124 = a6;
  v122 = a4;
  v125 = a3;
  v8 = *a2;
  v92 = sub_1CF9E5CF8();
  v136 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v8[10];
  v11 = v8[11];
  v12 = v8[12];
  v13 = v8[13];
  *&v147 = v10;
  *(&v147 + 1) = v11;
  *&v148 = v12;
  *(&v148 + 1) = v13;
  v94 = type metadata accessor for ReconciliationMutation(0, &v147);
  v110 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v79 - v14;
  v16 = type metadata accessor for SnapshotItem(255, v10, v12, v15);
  v93 = sub_1CF9E75D8();
  v105 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v79 - v17;
  v97 = v16;
  v104 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v79 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v117 = sub_1CF9E75D8();
  *&v103 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v79 - v21;
  v118 = AssociatedTypeWitness;
  v102 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v107 = v11;
  v108 = &v79 - v23;
  *&v147 = v10;
  *(&v147 + 1) = v11;
  *&v148 = v12;
  v106 = v13;
  *(&v148 + 1) = v13;
  v24 = type metadata accessor for ItemReconciliation(255, &v147);
  v115 = sub_1CF9E75D8();
  v101 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v121 = &v79 - v25;
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v79 - v28;
  v29 = swift_getAssociatedTypeWitness();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v134 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v126 = &v79 - v33;
  result = sub_1CF9E6DF8();
  if (!result)
  {
    return result;
  }

  v83 = a2;
  v87 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = 0;
  v131 = *(AssociatedConformanceWitness + 72);
  v132 = AssociatedConformanceWitness + 72;
  v135 = AssociatedConformanceWitness;
  v127 = AssociatedConformanceWitness + 64;
  v133 = (v30 + 16);
  v119 = (v26 + 48);
  v112 = (v103 + 16);
  v113 = (v26 + 32);
  v111 = (v102 + 6);
  v100 = (v102 + 4);
  v99 = v102 + 1;
  v109 = (v26 + 8);
  v129 = (v30 + 8);
  v130 = (v30 + 32);
  v89 = (v104 + 6);
  v88 = (v104 + 4);
  v85 = (v102 + 2);
  v84 = (v136 + 8);
  v82 = v110 + 1;
  v102 = v104 + 1;
  v104 = v105 + 1;
  v105 = (v103 + 8);
  v110 = (v101 + 8);
  v103 = xmmword_1CFA04E60;
  v37 = v10;
  v38 = v126;
  v114 = a1;
  v86 = v37;
  while (1)
  {
    v39 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v39)
    {
      (*(v30 + 16))(v38, a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v36, v29);
    }

    else
    {
      result = sub_1CF9E7998();
      if (v90 != 8)
      {
        goto LABEL_60;
      }

      *&v147 = result;
      (*v133)(v38, &v147, v29);
      swift_unknownObjectRelease();
    }

    v40 = v134;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_54:
      (*v99)(v108, v118);
      (*v109)(v120, v24);
      return (*v129)(v40, v29);
    }

    v136 = v36 + 1;
    (*v130)(v134, v38, v29);
    if (v131(v29, v135) & 1) != 0 || ((*(v135 + 64))(v29))
    {
      goto LABEL_11;
    }

    v43 = v30;
    v44 = v121;
    v45 = v128;
    sub_1CF68DDB0(v40, v122, v123, v124, v121);
    if (v45)
    {
      return (*v129)(v40, v29);
    }

    v128 = 0;
    if ((*v119)(v44, 1, v24) == 1)
    {
      (*v129)(v40, v29);
      (*v110)(v44, v115);
      goto LABEL_4;
    }

    v46 = v120;
    (*v113)(v120, v44, v24);
    v47 = &v46[*(v24 + 52)];
    v48 = v24;
    v49 = v116;
    v50 = v117;
    (*v112)(v116, v47, v117);
    v51 = v118;
    if ((*v111)(v49, 1, v118) != 1)
    {
      break;
    }

    (*v109)(v120, v48);
    (*v129)(v134, v29);
    (*v105)(v49, v50);
    a1 = v114;
    v24 = v48;
LABEL_4:
    v30 = v43;
    v38 = v126;
LABEL_5:
    result = sub_1CF9E6DF8();
    ++v36;
    if (v136 == result)
    {
      return result;
    }
  }

  v52 = v48;
  v53 = v108;
  (*v100)(v108, v49, v51);
  result = type metadata accessor for ItemReconciliationHalf(0, v107, v106, v54);
  if (*&v47[*(result + 36)])
  {
    (*v99)(v53, v51);
    v24 = v52;
    (*v109)(v120, v52);
    (*v129)(v134, v29);
    a1 = v114;
    goto LABEL_4;
  }

  v24 = v52;
  v55 = v120;
  v56 = v120[*(v52 + 56)];
  a1 = v114;
  if ((v56 - 1) < 2)
  {
    (*v99)(v108, v118);
    (*v109)(v55, v52);
    (*v129)(v134, v29);
    goto LABEL_4;
  }

  v40 = v134;
  if (v56 == 4)
  {
    goto LABEL_61;
  }

  v30 = v43;
  v57 = v128;
  (*(*v125[5] + 264))(&v147, v108, v122, v123, v124);
  v38 = v126;
  if (v57)
  {
    goto LABEL_54;
  }

  v128 = 0;
  v141[12] = v159;
  v141[13] = v160;
  v141[14] = v161;
  v141[8] = v155;
  v141[9] = v156;
  v141[10] = v157;
  v141[11] = v158;
  v141[4] = v151;
  v141[5] = v152;
  v141[6] = v153;
  v141[7] = v154;
  v141[0] = v147;
  v141[1] = v148;
  v141[2] = v149;
  v141[3] = v150;
  v143[12] = v159;
  v144 = v160;
  v145 = v161;
  v143[8] = v155;
  v143[9] = v156;
  v143[10] = v157;
  v143[11] = v158;
  v143[4] = v151;
  v143[5] = v152;
  v143[6] = v153;
  v143[7] = v154;
  v143[0] = v147;
  v143[1] = v148;
  v142 = v162;
  v146 = v162;
  v143[2] = v149;
  v143[3] = v150;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v143) == 1)
  {
    (*v99)(v108, v118);
    (*v109)(v120, v24);
LABEL_11:
    v41 = *v129;
    v42 = v40;
LABEL_12:
    v41(v42, v29);
    goto LABEL_5;
  }

  v58 = v40;
  v59 = v96;
  v60 = v128;
  (*(*v125[4] + 240))(v58, 1, v122, v123, v124);
  v128 = v60;
  if (v60)
  {
    sub_1CEFCCC44(v141, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*v99)(v108, v118);
    (*v109)(v120, v24);
    return (*v129)(v134, v29);
  }

  v61 = v97;
  if ((*v89)(v59, 1, v97) == 1)
  {
    sub_1CEFCCC44(v141, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*v99)(v108, v118);
    (*v109)(v120, v24);
    (*v129)(v134, v29);
    (*v104)(v59, v93);
    goto LABEL_5;
  }

  (*v88)(v98, v59, v61);
  v62 = &v98[*(v61 + 48)];
  v63 = type metadata accessor for ItemMetadata(0);
  if (v62[*(v63 + 48)])
  {
    v64 = *(v63 + 84);
    goto LABEL_30;
  }

  v101 = v63;
  v65 = ((*v125)[75])();
  if (*v62 - 1 <= 1 || (v62[*(v101 + 44)] & 1) != 0)
  {
    v66 = *(v101 + 84);
    goto LABEL_35;
  }

  v80 = *(&v144 + 1);
  LODWORD(v81) = v65;
  v77 = sub_1CEFF8538(v144, *(&v144 + 1), 0, v65, 0, 0);
  v78 = sub_1CEFF8538(v80, 0, 1, v81, 0, 0);
  if (v77 == 501)
  {
    v77 = v78;
    fpfs_supports_indexAllRemoteItems();
  }

  if (v77 == 3 || v77 == 1002)
  {
    v64 = *(v101 + 84);
LABEL_30:
    if (v62[v64] != 5)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  if (v77 != 500)
  {
    if (v62[*(v101 + 84)] != 4)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v66 = *(v101 + 84);
LABEL_35:
  if (!v62[v66])
  {
LABEL_31:
    sub_1CEFCCC44(v141, &qword_1EC4BECF0, &unk_1CF9FEEB0);
LABEL_40:
    (*v102)(v98, v97);
    (*v99)(v108, v118);
    (*v109)(v120, v24);
    v41 = *v129;
    v42 = v134;
    goto LABEL_12;
  }

LABEL_36:
  v67 = v106;
  v137 = v86;
  v138 = v107;
  v139 = v87;
  v140 = v106;
  v101 = type metadata accessor for JobResult(0, &v137);
  v68 = v118;
  v69 = swift_getAssociatedConformanceWitness();
  v137 = v29;
  v138 = v68;
  v139 = v135;
  v140 = v69;
  type metadata accessor for ReconciliationID(255, &v137);
  v81 = type metadata accessor for ReconciliationSideMutation(255, v107, v67, v70);
  v80 = *(swift_getTupleTypeMetadata2() + 48);
  (*v85)(v95, v108, v118);
  swift_storeEnumTagMultiPayload();
  v71 = v91;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v73 = v72;
  result = (*v84)(v71, v92);
  v74 = v73 * 1000000000.0;
  if (COERCE__INT64(fabs(v73 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v74 <= -9.22337204e18)
    {
      goto LABEL_58;
    }

    if (v74 >= 9.22337204e18)
    {
      goto LABEL_59;
    }

    v75 = v95;
    v76 = &v95[v80];
    *v76 = v103;
    *(v76 + 2) = v74;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v83, v75);
    sub_1CEFCCC44(v141, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*v82)(v75, v94);
    goto LABEL_40;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1CF596F84(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a3;
  v52 = a6;
  v10 = (*a2)[10];
  v11 = (*a2)[11];
  v12 = *a2;
  v13 = (*a2)[12];
  v53 = a2;
  v14 = v12[13];
  v57 = v10;
  v58 = v11;
  v54 = v14;
  v55 = v11;
  v59 = v13;
  v60 = v14;
  v15 = type metadata accessor for PersistenceTrigger(0, &v57);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v47 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1CF9E75D8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  (*(v19 + 16))(v21, a1, v18, v24);
  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v19 + 8))(v21, v18);
  }

  (*(v22 + 32))(v26, v21, AssociatedTypeWitness);
  v29 = a1 + *(type metadata accessor for ItemReconciliationHalf(0, v10, v13, v28) + 64);
  if (*(v29 + 16))
  {
    return (*(v22 + 8))(v26, AssociatedTypeWitness);
  }

  v30 = v61;
  if ((*(v29 + 1) & 1) == 0)
  {
    return (*(v22 + 8))(v26, AssociatedTypeWitness);
  }

  v47 = AssociatedTypeWitness;
  v31 = v26;
  v57 = v10;
  v58 = v55;
  v59 = v13;
  v60 = v54;
  v32 = a1;
  v33 = type metadata accessor for ItemReconciliation(0, &v57);
  v34 = v53;
  sub_1CF07DE7C(v53, 1, v33, v56);
  if (v30)
  {
    return (*(v22 + 8))(v31, v47);
  }

  v35 = LOBYTE(v56[0]);
  if (LOBYTE(v56[0]) == 89)
  {
    return (*(v22 + 8))(v31, v47);
  }

  v36 = (*(*v34[3] + 360))(LOBYTE(v56[0]), v31, *(v32 + *(v33 + 64)), 0, v51, v52, *(a9 + 8));
  v61 = 0;
  if (v36)
  {
    return (*(v22 + 8))(v31, v47);
  }

  v37 = swift_getAssociatedTypeWitness();
  v52 = v31;
  v38 = v37;
  v51 = v35;
  v39 = v47;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = swift_getAssociatedConformanceWitness();
  v57 = v39;
  v58 = v38;
  v59 = AssociatedConformanceWitness;
  v60 = v41;
  type metadata accessor for ReconciliationID(255, &v57);
  v42 = *(swift_getTupleTypeMetadata2() + 48);
  v43 = v22;
  v44 = v48;
  v45 = v52;
  (*(v22 + 16))(v48, v52, v39);
  swift_storeEnumTagMultiPayload();
  v46 = v50;
  v44[v42] = v51;
  swift_storeEnumTagMultiPayload();
  ((*v34)[39])(v44);
  (*(v49 + 8))(v44, v46);
  return (*(v43 + 8))(v45, v39);
}

unint64_t sub_1CF597590()
{
  result = qword_1EC4C19B0;
  if (!qword_1EC4C19B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19B0);
  }

  return result;
}

unint64_t sub_1CF5975F8()
{
  result = qword_1EC4C19C0;
  if (!qword_1EC4C19C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19C0);
  }

  return result;
}

unint64_t sub_1CF597650()
{
  result = qword_1EC4C19C8;
  if (!qword_1EC4C19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19C8);
  }

  return result;
}

unint64_t sub_1CF5976A8()
{
  result = qword_1EC4C19D0;
  if (!qword_1EC4C19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C19D0);
  }

  return result;
}

void sub_1CF597704(uint64_t a1)
{
  sub_1CF5C5128(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DBCounters(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void (*sub_1CF5978E4(void (*a1)(void, void, void), unint64_t a2, unint64_t a3, void (*a4)(__int128 *, id), uint64_t a5))(__int128 *, void)
{
  v124 = a4;
  v125 = a5;
  v119 = a3;
  v120 = a2;
  v115 = a1;
  v6 = *(*v5 + 616);
  v7 = *(*v5 + 624);
  v8 = *(*v5 + 632);
  v9 = *(*v5 + 640);
  *&v126 = v6;
  *(&v126 + 1) = v7;
  v113 = v7;
  *&v127 = v8;
  *(&v127 + 1) = v9;
  v112 = v9;
  *&v126 = type metadata accessor for UserRequest(255, &v126);
  *(&v126 + 1) = &type metadata for NSecTimestamp;
  *&v127 = sub_1CF9E6448();
  *(&v127 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0710, &unk_1CF9FE550);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v102 = *(TupleTypeMetadata - 8);
  v10 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v110 = v101 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v105 = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v101 - v16;
  v116 = sub_1CF9E63D8();
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v104 = v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v108 = v101 - v20;
  v123 = sub_1CF9E6448();
  v117 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v103 = v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v107 = v101 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v25 = (v101 - v11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v111 = v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v109 = v101 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v121 = v101 - v31;
  v32 = sub_1CF9E64A8();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v5 + 64);
  *v36 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x1E69E8020], v32, v34);
  v38 = v37;
  LOBYTE(v37) = sub_1CF9E64D8();
  result = (*(v33 + 8))(v36, v32);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 152) == 1)
  {
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v40 = FPDomainUnavailableError();
    v124(&v126, v40);

    return sub_1CEFCCC44(&v126, &unk_1EC4C1B30, &qword_1CFA05300);
  }

  v41 = qword_1EC4EBD78;
  swift_beginAccess();
  v101[1] = v41;
  v42 = *(v5 + v41);

  *&v126 = v6;
  *(&v126 + 1) = v113;
  *&v127 = v8;
  *(&v127 + 1) = v112;
  *&v126 = type metadata accessor for UserRequest(255, &v126);
  *(&v126 + 1) = &type metadata for NSecTimestamp;
  *&v127 = v123;
  *(&v127 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
  v43 = swift_getTupleTypeMetadata();
  v44 = sub_1CF9E6E58();
  v45 = *(swift_getAssociatedConformanceWitness() + 40);
  v46 = v115;
  v113 = v44;
  v112 = v45;
  sub_1CF9E6728();
  v42, v47, v48, v49, v50, v51, v52, v53;
  if (!v129)
  {
    (*(v122 + 16))(v111, v46, AssociatedTypeWitness);
    v122 = v43;
    sub_1CF9E7FA8();
    swift_allocObject();
    v121 = sub_1CF9E6D68();
    v66 = v65;
    qos_class_self();
    v67 = v105;
    sub_1CF9E63B8();
    v68 = v114;
    v69 = *(v114 + 48);
    v70 = v116;
    if (v69(v67, 1, v116) == 1)
    {
      (*(v68 + 104))(v104, *MEMORY[0x1E69E7FA0], v70);
      if (v69(v67, 1, v70) != 1)
      {
        sub_1CEFCCC44(v67, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v68 + 32))(v104, v67, v70);
    }

    v89 = v103;
    sub_1CF9E6428();
    v90 = TupleTypeMetadata;
    v91 = *(TupleTypeMetadata + 64);
    v92 = *(v117 + 32);
    v93 = v106;
    v94 = v89;
    v95 = v123;
    v92(&v106[v91], v94, v123);
    v96 = v119;
    v97 = v120;
    *v66 = v120;
    v66[1] = v96;
    v92(v66 + *(v90 + 64), &v93[v91], v95);
    v98 = (v66 + *(v90 + 80));
    v99 = swift_allocObject();
    v100 = v125;
    *(v99 + 16) = v124;
    *(v99 + 24) = v100;
    *v98 = sub_1CF5DE51C;
    v98[1] = v99;
    v129 = sub_1CF045898(v121, v122);
    swift_beginAccess();

    sub_1CEFD09A0(v97);
    sub_1CF9E6708();
    sub_1CF9E6738();
    return swift_endAccess();
  }

  v129, v54, v55, v56, v57, v58, v59, v60;
  v115 = *(v122 + 16);
  v115(v121, v46, AssociatedTypeWitness);
  qos_class_self();
  sub_1CF9E63B8();
  v61 = v114;
  v62 = *(v114 + 48);
  v63 = v116;
  v64 = v62(v17, 1, v116);
  v101[0] = AssociatedTypeWitness;
  if (v64 == 1)
  {
    (*(v61 + 104))(v108, *MEMORY[0x1E69E7FA0], v63);
    if (v62(v17, 1, v63) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v61 + 32))(v108, v17, v63);
  }

  v71 = v107;
  sub_1CF9E6428();
  v72 = TupleTypeMetadata;
  v73 = *(TupleTypeMetadata + 64);
  v74 = *(v117 + 32);
  v75 = v110;
  v76 = v71;
  v77 = v123;
  v74(&v110[v73], v76, v123);
  v78 = v119;
  v79 = v120;
  *v25 = v120;
  v25[1] = v78;
  v74(v25 + *(v72 + 64), &v75[v73], v77);
  v80 = (v25 + *(v72 + 80));
  v81 = swift_allocObject();
  v82 = v125;
  *(v81 + 16) = v124;
  *(v81 + 24) = v82;
  *v80 = sub_1CF5E14E4;
  v80[1] = v81;
  swift_beginAccess();
  v83 = v109;
  v84 = v121;
  v85 = v101[0];
  v115(v109, v121, v101[0]);

  sub_1CEFD09A0(v79);
  sub_1CF9E66E8();
  result = sub_1CF9E66F8();
  if (!*v86)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v87 = result;
  sub_1CF9E6E18();
  v87(&v126, 0);
  v88 = *(v122 + 8);
  v88(v83, v85);
  v88(v84, v85);
  return swift_endAccess();
}

id sub_1CF5984A8()
{
  v0 = sub_1CF042F4C();

  return v0;
}

uint64_t (*sub_1CF598538(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CF5D9178(v6, a2, a3);
  return sub_1CF5E158C;
}

uint64_t (*sub_1CF5985C0(uint64_t *a1, uint64_t a2))()
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_1CEFCCBDC(a2, v8, &unk_1EC4BF650, &unk_1CF9FCB40);
  v6[5] = sub_1CF5D9224(v6, v9);
  return sub_1CF5986A4;
}

void sub_1CF5986A4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1CEFCCC44(v2, &unk_1EC4BF650, &unk_1CF9FCB40);
  free(v2);

  free(v1);
}

uint64_t (*sub_1CF598710(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CF5D93B4(v6, a2, a3);
  return sub_1CF5E158C;
}

uint64_t (*sub_1CF598798(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1CF5D9580(v6, a2, a3);
  return sub_1CF598820;
}

void sub_1CF598824(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_1CF598870(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  *a1 = v4;
  v4[4] = a2;
  v4[5] = sub_1CF5D9460(v4, a2);
  return sub_1CF5988F4;
}

void sub_1CF5988F4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_1CF598944(uint64_t a1)
{
  sub_1CF5DA5A8(a1);
}

void sub_1CF59896C(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a5;
  v8 = v7;
  v80 = a4;
  LODWORD(v78) = a3;
  v76 = a1;
  v77 = a2;
  v75 = a7;
  v84 = a6;
  v9 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v73 - v10;
  v11 = sub_1CF9E6068();
  v79 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  v19 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E64A8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = fpfs_adopt_log();
  v25 = *(v8 + 64);
  *v24 = v25;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v26 = v25;
  LOBYTE(v25) = sub_1CF9E64D8();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_8;
  }

  if ((fp_task_tracker_is_cancelled(*(*(v8 + 168) + 16)) & 1) != 0 || *(v8 + 152) == 1)
  {
    sub_1CF2CA194();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v27 = v89;
    v28 = fpfs_adopt_log();
LABEL_6:
    v29 = v28;

    return;
  }

  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_19;
  }

LABEL_8:
  v30 = qword_1EDEBBE40;
  v31 = v79;
  (*(v79 + 56))(v18, 1, 1, v11);
  v87 = 0x63746162206E7572;
  v88 = 0xEA00000000002068;
  v32 = sub_1CF9E7988();
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  v77 = v88;
  v78 = v87;
  sub_1CEFCCBDC(v18, v15, &unk_1EC4BED20, &unk_1CFA00700);
  v42 = *(v31 + 48);
  v43 = v42(v15, 1, v11);
  v74 = v30;
  if (v43 == 1)
  {
    v44 = v30;
    v45 = v86;
    sub_1CF9E6048();
    v46 = v45;
    if (v42(v15, 1, v11) != 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v46 = v86;
    (*(v31 + 32))(v86, v15, v11);
  }

  v47 = v85;
  (*(v31 + 16))(v85, v46, v11);
  v48 = v74;
  *(v47 + *(v19 + 20)) = v74;
  v49 = v47 + *(v19 + 24);
  *v49 = "DB queue";
  *(v49 + 8) = 8;
  *(v49 + 16) = 2;
  v50 = v48;
  v51 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1CEFD51C4();
  v53 = v77;
  *(v52 + 32) = v78;
  *(v52 + 40) = v53;
  sub_1CF9E6028(v51, &dword_1CEFC7000, v50, "DB queue", 8, 2, v47, "%s", 2);
  v52, v54, v55, v56, v57, v58, v59, v60;
  (*(v31 + 8))(v86, v11);
  v61 = sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = v83;
  v63 = v84;
  v65 = v82;
  (*(*v8 + 2528))(sub_1CF5DFA40, v62);
  if (v65)
  {
    v87 = v65;
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {

      sub_1CF2CA194();
      swift_allocError();
      swift_willThrow();

      sub_1CF9E7458();
      v67 = v85;
      sub_1CF9E6038();
      sub_1CF043504(v67, type metadata accessor for Signpost);
    }

    else
    {

      v70 = *(*v8 + 496);
      v71 = v65;
      v70(v65, 1, "runBatch(function:updateBlock:)", 31, 2);

      sub_1CF9E7458();
      v72 = v85;
      sub_1CF9E6038();
      sub_1CF043504(v72, type metadata accessor for Signpost);
    }

    goto LABEL_5;
  }

  v68 = *(v63 - 8);
  if ((*(v68 + 48))(v64, 1, v63) != 1)
  {
    (*(v68 + 32))(v75, v64, v63);
    sub_1CF9E7458();
    v69 = v85;
    sub_1CF9E6038();
    sub_1CF043504(v69, type metadata accessor for Signpost);
    v27 = v89;
    v28 = fpfs_adopt_log();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1CF599234(uint64_t (*a1)(uint64_t a1), unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(void *, __n128), uint64_t a8, void (*a9)(void, void), uint64_t a10)
{
  v32 = a6;
  v27 = a8;
  v28 = a7;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v25 = a10;
  v26 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_1CF9E63D8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6448();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  qos_class_self();
  sub_1CF9E63B8();
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    (*(v14 + 104))(v16, *MEMORY[0x1E69E7FA0], v13);
    if (v21(v12, 1, v13) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  sub_1CF9E6428();
  v22 = sub_1CF5D2970(0, v26, v29, v30, v31, v20, 0, v32, v28, v27, a9, v25);
  (*(v18 + 8))(v20, v17);
  return v22;
}

uint64_t sub_1CF5994EC(uint64_t a1, uint64_t a2)
{
  v6 = v3[20];
  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v9;
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    v5 = qword_1EDEBBD00;
    swift_beginAccess();
    v4 = *(v3 + v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v5) = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v4 = sub_1CF1F6A6C(0, (*v4->tree + 1), 1, v4);
  *(v3 + v5) = v4;
LABEL_3:
  v14 = *v4->tree;
  v13 = *v4->tester;
  if (v14 >= v13 >> 1)
  {
    v4 = sub_1CF1F6A6C((v13 > 1), (v14 + 1), 1, v4);
  }

  *v4->tree = v14 + 1;
  v15 = v4 + 16 * v14;
  *(v15 + 4) = sub_1CF5E1588;
  *(v15 + 5) = v2;
  *(v3 + v5) = v4;
  v16 = swift_endAccess();
  return (*(*v3 + 2488))(v16);
}

void sub_1CF599648(void (**TupleTypeMetadata3)(char *, uint64_t), _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  v4 = v3;
  v307 = a3;
  v308 = a2;
  v6 = *v3;
  v295 = sub_1CF9E6118();
  v294 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v297 = &v284 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v296 = &v284 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v288 = &v284 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v289 = &v284 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v290 = &v284 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v291 = &v284 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v293 = &v284 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v292 = &v284 - v21;
  v22 = v6[77];
  v23 = v6[79];
  v300 = v6[78];
  v24 = v6[80];
  v301 = v22;
  v312 = v22;
  v313 = v300;
  v299 = v23;
  v314 = v23;
  v315 = v24;
  v298 = v24;
  v25 = type metadata accessor for PersistenceTrigger(0, &v312);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v284 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v309 = &v284 - v30;
  v31 = qword_1EDEBBCD8;
  swift_beginAccess();
  v32 = sub_1CF9E6E58();
  v303 = v31;
  v312 = *(v4 + v31);
  swift_getWitnessTable();
  v302 = v32;
  if (sub_1CF9E7128())
  {
LABEL_2:
    if (fp_task_tracker_is_cancelled(*(*(v4 + 168) + 16)))
    {
      v33 = 1;
    }

    else
    {
      v33 = *(v4 + 152);
    }

    v66 = v307;
    v67 = v308;
    v68 = v298;
    v69 = v301;
    LODWORD(v303) = v33;
    v70 = v33 ^ 1;
    v286 = (v4 + qword_1EDEBBCD0);
    if (*(v4 + qword_1EDEBBCD0) == 0 || (v71 = ~*(v4 + 80), LODWORD(v309) = v70, (v71 & 0x1C0) == 0))
    {
      LODWORD(v309) = 0;
    }

    v304 = TupleTypeMetadata3;
    v287 = (v4 + qword_1EDEBBCA8);
    if (*(v4 + qword_1EDEBBCA8) == 0 || (~*(v4 + 80) & 0x1C0) == 0)
    {
      v70 = 0;
    }

    LODWORD(v305) = v70;
    v72 = qword_1EDEBBC90;
    swift_beginAccess();
    v311[0] = *(v4 + v72);
    MEMORY[0x1EEE9AC00](v311[0]);
    v73 = v300;
    *(&v284 - 6) = v69;
    *(&v284 - 5) = v73;
    v74 = v299;
    *(&v284 - 4) = v67;
    *(&v284 - 3) = v74;
    v282 = v68;
    v283 = v66;

    v312 = v69;
    v313 = v73;
    v314 = v74;
    v315 = v68;
    type metadata accessor for UserRequest(255, &v312);
    type metadata accessor for FPStabilizationMode(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0720, &qword_1CFA05B30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    sub_1CF9E6E58();
    swift_getWitnessTable();
    v75 = v310;
    v76 = sub_1CF9E7A08();
    v77 = v75;
    v78 = v4;
    v302 = v72;
    v312 = *(v4 + v72);
    swift_getWitnessTable();
    if (!(v309 & 1 | ((sub_1CF9E7128() & 1) == 0)) && !v305)
    {
      v79 = v297;
LABEL_29:
      v80 = v296;
      goto LABEL_30;
    }

    v310 = v76;
    v99 = *(v307 + 8);
    v100 = sub_1CF5B901C(1, v304, v308, v99);
    if (v75)
    {
      v310, v101, v102, v103, v104, v105, v106, v107;
      return;
    }

    v285 = TupleTypeMetadata3;
    if ((v100 & 1) == 0)
    {
      v124 = sub_1CF9E6DF8();
      if (v124)
      {
        v309 = v124;
        v125 = sub_1CF5B901C(0, v304, v308, v99);
        if (v125)
        {
          v305 = &v284;
          v196 = v302;
          v312 = *&v78[v302];
          MEMORY[0x1EEE9AC00](v312);
          v197 = v300;
          *(&v284 - 6) = v301;
          *(&v284 - 5) = v197;
          v198 = v78;
          v199 = v307;
          v200 = v308;
          v201 = v299;
          *(&v284 - 4) = v308;
          *(&v284 - 3) = v201;
          v202 = v298;
          v282 = v298;
          v283 = v199;

          v203 = sub_1CF9E7A08();
          v284 = 0;
          v204 = *&v198[v196];
          *&v198[v196] = v203;
          v204, v205, v206, v207, v208, v209, v210, v211;
          v212 = v198;
          if ((v198[82] & 0x20) == 0)
          {
            v213 = fpfs_current_or_default_log();
            v214 = v288;
            sub_1CF9E6128();
            v215 = sub_1CF9E6108();
            v216 = sub_1CF9E72C8();
            if (os_log_type_enabled(v215, v216))
            {
              v217 = swift_slowAlloc();
              *v217 = 134217984;
              *(v217 + 4) = v309;
              _os_log_impl(&dword_1CEFC7000, v215, v216, "🚀  job scheduler is stable, calling %ld stabilization waiters with no noBackgroundWork", v217, 0xCu);
              MEMORY[0x1D386CDC0](v217, -1, -1);
            }

            (*(v294 + 8))(v214, v295);
            v76 = v310;

            v218 = sub_1CF9E6DF8();
            v79 = v297;
            if (v218)
            {
              v226 = v76;
              v227 = 0;
              TupleTypeMetadata3 = v226[1].tester;
              do
              {
                v228 = sub_1CF9E6DC8();
                sub_1CF9E6D78();
                if ((v228 & 1) == 0)
                {
                  goto LABEL_98;
                }

                v229 = v227 + 1;
                if (__OFADD__(v227, 1))
                {
                  goto LABEL_99;
                }

                v230 = *(TupleTypeMetadata3 - 1);
                v231 = *(TupleTypeMetadata3 - 3);
                v312 = 0;
                sub_1CEFD09A0(v231);

                v230(&v312);
                sub_1CF5DE5B8(v231);

                v232 = v310;
                v233 = sub_1CF9E6DF8();
                ++v227;
                TupleTypeMetadata3 += 4;
                v79 = v297;
              }

              while (v229 != v233);
              v232, v234, v235, v236, v237, v238, v239, v240;
              v77 = v284;
              v76 = v232;
            }

            else
            {
              v76, v219, v220, v221, v222, v223, v224, v225;
              v77 = v284;
            }

            v80 = v296;
            v78 = v212;
            goto LABEL_30;
          }

          v268 = swift_allocObject();
          v269 = v300;
          v268[2] = v301;
          v268[3] = v269;
          v268[4] = v200;
          v270 = v299;
          v268[5] = v299;
          v268[6] = v202;
          v268[7] = v199;
          v268[8] = v310;

          v271 = fpfs_current_or_default_log();
          v272 = v289;
          sub_1CF9E6128();
          v273 = sub_1CF9E6108();
          v274 = sub_1CF9E72C8();
          v275 = os_log_type_enabled(v273, v274);
          v79 = v297;
          if (v275)
          {
            v276 = swift_slowAlloc();
            *v276 = 0;
            _os_log_impl(&dword_1CEFC7000, v273, v274, "🚀  job scheduler is stable, waiting for db flush", v276, 2u);
            MEMORY[0x1D386CDC0](v276, -1, -1);
          }

          (*(v294 + 8))(v272, v295);
          v277 = swift_allocObject();
          v278 = v300;
          v277[2] = v301;
          v277[3] = v278;
          v277[4] = v308;
          v277[5] = v270;
          v78 = v198;
          v279 = v307;
          v277[6] = v298;
          v277[7] = v279;
          v280 = v310;
          v277[8] = v309;
          v277[9] = v280;
          v281 = *(*v212 + 456);

          v281("consumeTriggersAndReconciliations(with:)", 40, 2, 0, 0, 0, sub_1CF5E1598, v268, sub_1CF5DFAB4, v277);

          v76 = v280;

          v77 = v284;
          goto LABEL_29;
        }
      }

      else
      {
        v77 = 0;
      }

      v79 = v297;
      goto LABEL_82;
    }

    v108 = v301;
    if (v309)
    {
      if (*(v4 + 89) == 1)
      {
        LODWORD(v283) = 0;
        v282 = 1633;
        goto LABEL_105;
      }

      v109 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v110 = sub_1CF9E6108();
      v111 = sub_1CF9E72A8();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        *v112 = 0;
        _os_log_impl(&dword_1CEFC7000, v110, v111, "🤯  job scheduler is stable, upload jobs are not!", v112, 2u);
        v113 = v112;
        TupleTypeMetadata3 = v285;
        MEMORY[0x1D386CDC0](v113, -1, -1);
      }

      (*(v294 + 8))(v292, v295);
      v114 = v286;
      *v286 = 0;
      v114[1] = 0;
      *(v4 + qword_1EDEBBCA0) = vdupq_n_s64(1uLL);
    }

    v306 = v4;
    v76 = v310;
    v115 = v302;
    if (!v305)
    {
LABEL_48:
      v123 = v306;
      v312 = *&v306[v115];
      if (sub_1CF9E7128())
      {
        v77 = 0;
        v79 = v297;
        v80 = v296;
        v78 = v123;
LABEL_30:
        if (sub_1CF03BB04() || ((sub_1CF03B0B0() | v303) & 1) != 0)
        {
          goto LABEL_54;
        }

        v310 = v76;
        v284 = v77;
        v81 = type metadata accessor for StringDumper();
        TupleTypeMetadata3 = swift_allocObject();
        TupleTypeMetadata3[4] = 0;
        TupleTypeMetadata3[5] = 0xE000000000000000;
        TupleTypeMetadata3[2] = 0;
        TupleTypeMetadata3[3] = 0xE000000000000000;
        v315 = v81;
        v316 = &off_1F4C037A8;
        v312 = TupleTypeMetadata3;

        sub_1CF527F10();
        __swift_destroy_boxed_opaque_existential_1(&v312);
        v306 = v78;
        if ((v78[81] & 4) == 0)
        {
          v82 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v83 = sub_1CF9E6108();
          v84 = sub_1CF9E72B8();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v312 = v86;
            *v85 = 136315138;
            swift_beginAccess();
            v87 = TupleTypeMetadata3[2];
            v88 = TupleTypeMetadata3[3];

            v89 = v80;
            v90 = sub_1CEFD0DF0(v87, v88, &v312);
            v88, v91, v92, v93, v94, v95, v96, v97;
            *(v85 + 4) = v90;
            _os_log_impl(&dword_1CEFC7000, v83, v84, "🤯  there is no running jobs but the FS job lock is not empty!\n%s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v86);
            MEMORY[0x1D386CDC0](v86, -1, -1);
            v98 = v85;
            v79 = v297;
            MEMORY[0x1D386CDC0](v98, -1, -1);

            (*(v294 + 8))(v89, v295);
          }

          else
          {

            (*(v294 + 8))(v80, v295);
          }

          v77 = v284;
          sub_1CF52A8BC();
          v78 = v306;
          sub_1CF058CE4();

          v76 = v310;
LABEL_54:
          if (sub_1CF03BB04() || (sub_1CF03B0B0() & 1) != 0 || v303)
          {
            v76, v126, v127, v128, v129, v130, v131, v132;
          }

          else
          {
            v133 = v76;
            v284 = v77;
            v134 = type metadata accessor for StringDumper();
            v135 = swift_allocObject();
            v135[4] = 0;
            v135[5] = 0xE000000000000000;
            v135[2] = 0;
            v135[3] = 0xE000000000000000;
            v315 = v134;
            v316 = &off_1F4C037A8;
            v312 = v135;

            sub_1CF527F10();
            __swift_destroy_boxed_opaque_existential_1(&v312);
            if ((v78[81] & 4) != 0)
            {

              sub_1CF512254("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 1724, v135);
            }

            v133, v136, v137, v138, v139, v140, v141, v142;
            v143 = fpfs_current_or_default_log();
            sub_1CF9E6128();

            v144 = sub_1CF9E6108();
            v145 = sub_1CF9E72B8();

            if (os_log_type_enabled(v144, v145))
            {
              v146 = swift_slowAlloc();
              v147 = swift_slowAlloc();
              v317 = v147;
              *v146 = 136315138;
              swift_beginAccess();
              v148 = v135[2];
              v149 = v135[3];

              v150 = sub_1CEFD0DF0(v148, v149, &v317);
              v149, v151, v152, v153, v154, v155, v156, v157;
              *(v146 + 4) = v150;
              _os_log_impl(&dword_1CEFC7000, v144, v145, "🤯  there is no running jobs but the FP job lock is not empty!\n%s", v146, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v147);
              MEMORY[0x1D386CDC0](v147, -1, -1);
              MEMORY[0x1D386CDC0](v146, -1, -1);

              (*(v294 + 8))(v297, v295);
            }

            else
            {

              (*(v294 + 8))(v79, v295);
            }

            sub_1CF52A8BC();
            sub_1CF058CE4();
          }

          return;
        }

LABEL_101:

        sub_1CF511F88("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/sync-logic/ConcreteDatabase.swift", 106, 2, 1710, TupleTypeMetadata3);
      }

      v158 = *(v123 + v115);

      v159 = sub_1CF9E6DA8();
      v160 = *(v123 + v115);
      *(v123 + v115) = v159;
      v160, v161, v162, v163, v164, v165, v166, v167;
      v79 = v297;
      v78 = v123;
      if ((*(v123 + 82) & 0x20) != 0)
      {
        v182 = swift_allocObject();
        v183 = v300;
        v182[2] = v108;
        v182[3] = v183;
        v184 = v299;
        v182[4] = v308;
        v182[5] = v184;
        v185 = v307;
        v182[6] = v298;
        v182[7] = v185;
        v182[8] = v158;

        v186 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v187 = sub_1CF9E6108();
        v188 = sub_1CF9E72C8();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_1CEFC7000, v187, v188, "🚀  job scheduler is stable, waiting for db flush", v189, 2u);
          v190 = v189;
          v78 = v306;
          v108 = v301;
          MEMORY[0x1D386CDC0](v190, -1, -1);
        }

        v191 = v108;
        v77 = 0;

        (*(v294 + 8))(v291, v295);
        v192 = swift_allocObject();
        v193 = v300;
        v192[2] = v191;
        v192[3] = v193;
        v194 = v299;
        v192[4] = v308;
        v192[5] = v194;
        v195 = v307;
        v192[6] = v298;
        v192[7] = v195;
        v192[8] = v158;
        (*(*v78 + 456))("consumeTriggersAndReconciliations(with:)", 40, 2, 0, 0, 0, sub_1CF5DFAE8, v182, sub_1CF5DFAEC, v192);
      }

      else
      {
        v168 = fpfs_current_or_default_log();
        v169 = v290;
        sub_1CF9E6128();

        v170 = sub_1CF9E6108();
        v171 = sub_1CF9E72C8();
        v172 = os_log_type_enabled(v170, v171);
        v284 = 0;
        if (v172)
        {
          v173 = swift_slowAlloc();
          *v173 = 134217984;
          *(v173 + 4) = sub_1CF9E6DF8();
          v158, v174, v175, v176, v177, v178, v179, v180;
          _os_log_impl(&dword_1CEFC7000, v170, v171, "🚀  job scheduler is stable, calling %ld stabilization waiters", v173, 0xCu);
          v181 = v173;
          TupleTypeMetadata3 = v285;
          MEMORY[0x1D386CDC0](v181, -1, -1);
        }

        else
        {

          v158, v241, v242, v243, v244, v245, v246, v247;
        }

        (*(v294 + 8))(v169, v295);
        if (sub_1CF9E6DF8())
        {
          v255 = 0;
          tester = v158[1].tester;
          while (1)
          {
            v257 = sub_1CF9E6DC8();
            sub_1CF9E6D78();
            if ((v257 & 1) == 0)
            {
              break;
            }

            v258 = v255 + 1;
            if (__OFADD__(v255, 1))
            {
              goto LABEL_97;
            }

            v259 = *(tester - 1);
            v260 = *(tester - 3);
            v312 = 0;
            sub_1CEFD09A0(v260);

            v259(&v312);
            sub_1CF5DE5B8(v260);

            TupleTypeMetadata3 = v285;
            ++v255;
            tester += 32;
            if (v258 == sub_1CF9E6DF8())
            {
              v158, v261, v262, v263, v264, v265, v266, v267;
              v79 = v297;
              v77 = v284;
              v76 = v310;
              v80 = v296;
              v78 = v306;
              goto LABEL_30;
            }
          }

          sub_1CF9E7998();
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          sub_1CF9E7998();
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v158, v248, v249, v250, v251, v252, v253, v254;
        v77 = v284;
      }

LABEL_82:
      v76 = v310;
      goto LABEL_29;
    }

    v116 = v306;
    if (v306[89] != 1)
    {
      v117 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v118 = sub_1CF9E6108();
      v119 = sub_1CF9E72A8();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&dword_1CEFC7000, v118, v119, "🤯  job scheduler is stable, download jobs are not!", v120, 2u);
        v121 = v120;
        TupleTypeMetadata3 = v285;
        MEMORY[0x1D386CDC0](v121, -1, -1);
      }

      (*(v294 + 8))(v293, v295);
      v122 = v287;
      *v287 = 0;
      v122[1] = 0;
      *(v116 + qword_1EDEBBC80) = vdupq_n_s64(1uLL);
      v76 = v310;
      v115 = v302;
      goto LABEL_48;
    }

    LODWORD(v283) = 0;
    v282 = 1643;
LABEL_105:
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  v287 = v27;
  v304 = (v26 + 8);
  v305 = (v26 + 16);
  v34 = v303;
  v306 = v4;
  while (1)
  {
    v35 = *(v4 + v34);

    v36 = sub_1CF9E6DA8();
    v37 = *(v4 + v34);
    *(v4 + v34) = v36;
    v37, v38, v39, v40, v41, v42, v43, v44;
    if (sub_1CF9E6DF8())
    {
      break;
    }

LABEL_5:
    v35, v45, v46, v47, v48, v49, v50, v51;
    v4 = v306;
    v34 = v303;
    v312 = *&v306[v303];
    swift_getWitnessTable();
    if (sub_1CF9E7128())
    {
      goto LABEL_2;
    }
  }

  v52 = 0;
  while (1)
  {
    v53 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if ((v53 & 1) == 0)
    {
      break;
    }

    v54 = TupleTypeMetadata3;
    (*(v26 + 16))(v309, v35 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v52, v25);
    v62 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_17;
    }

LABEL_10:
    (*(v26 + 32))(v28, v309, v25);
    v53 = objc_autoreleasePoolPush();
    v63 = v310;
    sub_1CF5B84FC(v28, v306, v54, v308, v307, &v312);
    if (v63)
    {
      goto LABEL_18;
    }

    v310 = 0;
    objc_autoreleasePoolPop(v53);
    (*v304)(v28, v25);
    ++v52;
    v64 = v62 == sub_1CF9E6DF8();
    TupleTypeMetadata3 = v54;
    if (v64)
    {
      goto LABEL_5;
    }
  }

  v65 = sub_1CF9E7998();
  if (v287 != 8)
  {
    goto LABEL_100;
  }

  v54 = TupleTypeMetadata3;
  v312 = v65;
  v53 = v65;
  (*v305)(v309, &v312, v25);
  swift_unknownObjectRelease();
  v62 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v35, v55, v56, v57, v58, v59, v60, v61;
  objc_autoreleasePoolPop(v53);
  (*v304)(v28, v25);
}

void *sub_1CF59AF44()
{
  v1 = *v0;
  v2 = sub_1CF92E98C();

  sub_1CEFF7124(v2[12], v2[13]);
  swift_unknownObjectRelease();

  v2[24], v3, v4, v5, v6, v7, v8, v9;
  swift_unknownObjectRelease();
  sub_1CEFCCC44((v2 + 27), &qword_1EC4C1BF8, &unk_1CFA0CD70);

  sub_1CEFCCC44(v2 + qword_1EDEBBC18, &qword_1EC4BFB10, &unk_1CFA12AD0);
  *(v2 + qword_1EDEBBC70), v10, v11, v12, v13, v14, v15, v16;
  *(v2 + qword_1EC4EBD70), v17, v18, v19, v20, v21, v22, v23;
  *(v2 + qword_1EC4EBD78), v24, v25, v26, v27, v28, v29, v30;
  *(v2 + qword_1EDEBBC90), v31, v32, v33, v34, v35, v36, v37;
  *(v2 + qword_1EC4EBD80), v38, v39, v40, v41, v42, v43, v44;
  *(v2 + qword_1EDEBBCC0), v45, v46, v47, v48, v49, v50, v51;
  *(v2 + qword_1EDEBBCC8), v52, v53, v54, v55, v56, v57, v58;
  *(v2 + qword_1EDEBBD00), v59, v60, v61, v62, v63, v64, v65;
  *(v2 + qword_1EDEBBC60), v66, v67, v68, v69, v70, v71, v72;
  swift_unknownObjectRelease();
  type metadata accessor for FileTreeChangeAggregator(255, v1[77], v1[79], v73);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7068();
  sub_1CF9E6708();
  swift_getTupleTypeMetadata2();
  sub_1CF9E5EB8();
  sub_1CF9E75C8();
  type metadata accessor for FileTreeChangeAggregator(255, v1[78], v1[80], v74);
  sub_1CF9E5EB8();
  sub_1CF9E75C8();

  *(v2 + qword_1EDEBBCD8), v75, v76, v77, v78, v79, v80, v81;

  sub_1CF043504(v2 + qword_1EDEBBC30, type metadata accessor for DBCounters);
  sub_1CEFF7124(*(v2 + qword_1EDEBBC78), *(v2 + qword_1EDEBBC78 + 8));

  sub_1CEFF7124(*(v2 + qword_1EDEBBCF8), *(v2 + qword_1EDEBBCF8 + 8));
  return v2;
}

void sub_1CF59B2F0(char *a1, void (**a2)(void), _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4)
{
  v822 = a4;
  v824 = a3;
  v823 = a2;
  v860 = a1;
  v6 = *(*v4 + 616);
  v7 = *(*v4 + 640);
  v8 = *(*v4 + 632);
  *&v844 = *(*v4 + 624);
  v5 = v844;
  *(&v844 + 1) = v6;
  *&v845 = v7;
  *(&v845 + 1) = v8;
  v770 = type metadata accessor for DirectionalTestingOperation(0, &v844);
  v768 = *(v770 - 8);
  MEMORY[0x1EEE9AC00](v770);
  v748 = &v710 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v776 = &v710 - v11;
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v771 = type metadata accessor for DirectionalTestingOperation(0, &v844);
  v769 = *(v771 - 8);
  MEMORY[0x1EEE9AC00](v771);
  v747 = &v710 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v767 = &v710 - v14;
  *&v844 = v5;
  *(&v844 + 1) = v6;
  *&v845 = v7;
  *(&v845 + 1) = v8;
  v15 = type metadata accessor for TestingOperation(255, &v844);
  v16 = sub_1CF9E75D8();
  v722 = *(v16 - 8);
  v723 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v734 = &v710 - v17;
  v737 = v15;
  v736 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v735 = &v710 - v19;
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v20 = type metadata accessor for TestingOperation(255, &v844);
  v21 = sub_1CF9E75D8();
  v720 = *(v21 - 8);
  v721 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v731 = &v710 - v22;
  v805 = v20;
  v755 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v750 = &v710 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v733 = &v710 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v730 = &v710 - v28;
  v798 = type metadata accessor for SnapshotItem(0, v5, v7, v29);
  v797 = *(v798 - 8);
  MEMORY[0x1EEE9AC00](v798);
  v775 = (&v710 - v30);
  v752 = type metadata accessor for ItemReconciliationHalf(0, v6, v8, v31);
  v729 = *(v752 - 1);
  MEMORY[0x1EEE9AC00](v752);
  v728 = &v710 - v32;
  v34 = type metadata accessor for SnapshotItem(0, v6, v8, v33);
  v801 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v741 = &v710 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v781 = (&v710 - v37);
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v38 = type metadata accessor for ReconciliationMutation(0, &v844);
  v717 = *(v38 - 8);
  v718 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v714 = &v710 - v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_1CF9E75D8();
  v739 = *(v41 - 8);
  v740 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v753 = &v710 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v746 = &v710 - v44;
  v726 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v726);
  v713 = &v710 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v802 = v34;
  v808 = sub_1CF9E75D8();
  v806 = *(v808 - 1);
  MEMORY[0x1EEE9AC00](v808);
  v766 = &v710 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v796 = &v710 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v809 = &v710 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v807 = &v710 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v716 = &v710 - v54;
  v55 = swift_getAssociatedTypeWitness();
  v56 = sub_1CF9E75D8();
  v742 = *(v56 - 8);
  v743 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v749 = &v710 - v57;
  v816 = v55;
  v810 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v724 = (&v710 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v60);
  v795 = (&v710 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v765 = (&v710 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v794 = (&v710 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v725 = &v710 - v67;
  *&v844 = v6;
  *(&v844 + 1) = v5;
  *&v845 = v8;
  *(&v845 + 1) = v7;
  v68 = type metadata accessor for ItemReconciliation(255, &v844);
  v756 = sub_1CF9E75D8();
  v772 = *(v756 - 8);
  MEMORY[0x1EEE9AC00](v756);
  v764 = &v710 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v745 = &v710 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v774 = &v710 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v727 = &v710 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v715 = &v710 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v762 = &v710 - v79;
  v782 = v68;
  v779 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v738 = &v710 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v710 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v744 = &v710 - v86;
  v817 = AssociatedTypeWitness;
  v811 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v87);
  v773 = &v710 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v761 = &v710 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v732 = &v710 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v751 = (&v710 - v94);
  MEMORY[0x1EEE9AC00](v95);
  v754 = (&v710 - v96);
  MEMORY[0x1EEE9AC00](v97);
  v804 = &v710 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v763 = &v710 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v759 = (&v710 - v102);
  MEMORY[0x1EEE9AC00](v103);
  v803 = &v710 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v780 = &v710 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v719 = &v710 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v778 = &v710 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v757 = &v710 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v758 = &v710 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v760 = (&v710 - v116);
  MEMORY[0x1EEE9AC00](v117);
  v777 = &v710 - v118;
  v815 = v6;
  *&v844 = v6;
  v813 = v5;
  *(&v844 + 1) = v5;
  v814 = v8;
  *&v845 = v8;
  v812 = v7;
  *(&v845 + 1) = v7;
  v821 = type metadata accessor for PersistenceTrigger(0, &v844);
  v818 = *(v821 - 8);
  MEMORY[0x1EEE9AC00](v821);
  v793 = &v710 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v120);
  v791 = &v710 - v121;
  MEMORY[0x1EEE9AC00](v122);
  v789 = &v710 - v123;
  MEMORY[0x1EEE9AC00](v124);
  v783 = &v710 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v787 = &v710 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v792 = &v710 - v129;
  MEMORY[0x1EEE9AC00](v130);
  v785 = &v710 - v131;
  MEMORY[0x1EEE9AC00](v132);
  v800 = &v710 - v133;
  MEMORY[0x1EEE9AC00](v134);
  v788 = &v710 - v135;
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v710 - v137;
  MEMORY[0x1EEE9AC00](v139);
  v799 = &v710 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v710 - v142;
  MEMORY[0x1EEE9AC00](v144);
  v712 = &v710 - v145;
  MEMORY[0x1EEE9AC00](v146);
  v786 = &v710 - v147;
  MEMORY[0x1EEE9AC00](v148);
  v790 = &v710 - v149;
  MEMORY[0x1EEE9AC00](v150);
  v784 = &v710 - v151;
  MEMORY[0x1EEE9AC00](v152);
  v154 = &v710 - v153;
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v710 - v156;
  MEMORY[0x1EEE9AC00](v158);
  v820 = &v710 - v159;
  v160 = v825;
  v161 = *(v825 + qword_1EDEBBCF8);
  if (v161)
  {
    v162 = v84;
    v163 = *(v825 + qword_1EDEBBCF8 + 8);

    v161(v860);
    v164 = v163;
    v84 = v162;
    sub_1CEFF7124(v161, v164);
  }

  v165 = v819;
  sub_1CF9642A4(v860, v160, v823, v824, v822);
  if (!v165)
  {
    v711 = v84;
    v819 = 0;
    v166 = *(v818 + 16);
    v166(v820, v860, v821);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v166(v138, v820, v821);
        v167 = v817;
        v168 = v816;
        v169 = *(swift_getTupleTypeMetadata2() + 48);
        v170 = v811;
        v171 = v803;
        (*(v811 + 32))(v803, v138, v167);
        v172 = v810;
        v173 = v794;
        (*(v810 + 32))(v794, &v138[v169], v168);
        v174 = v823;
        v175 = v824;
        v176 = v822;
        v177 = v819;
        sub_1CF5BEE74(v171, 0, v823, v824, v822);
        if (v177)
        {
          goto LABEL_11;
        }

        v178 = v817;
        sub_1CF5C1260(v173, 0, v174, v175, v176);
        v819 = 0;
        (*(v810 + 8))(v173, v816);
        (*(v170 + 8))(v803, v178);
        goto LABEL_184;
      case 3u:
        v166(v157, v820, v821);
        v223 = v815;
        v224 = v817;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v226 = v816;
        v227 = swift_getAssociatedConformanceWitness();
        *&v844 = v224;
        *(&v844 + 1) = v226;
        *&v845 = AssociatedConformanceWitness;
        *(&v845 + 1) = v227;
        v228 = type metadata accessor for ReconciliationID(0, &v844);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v229 = *(*(v228 - 8) + 8);
          v230 = v157;
          goto LABEL_182;
        }

        v350 = v811;
        v351 = v777;
        (*(v811 + 32))(v777, v157, v224);
        v352 = *(v822 + 8);
        v353 = v762;
        v354 = v819;
        sub_1CF68DDB0(v351, v823, v824, v352, v762);
        v819 = v354;
        if (v354)
        {
          (*(v350 + 8))(v351, v224);
          goto LABEL_184;
        }

        v427 = v779;
        v428 = v353;
        v429 = v353;
        v430 = v782;
        if ((*(v779 + 48))(v428, 1, v782) == 1)
        {
          (*(v811 + 8))(v351, v817);
          v229 = *(v772 + 8);
          v230 = v429;
          goto LABEL_110;
        }

        v482 = v744;
        (*(v427 + 32))(v744, v429, v430);
        v483 = *(v742 + 16);
        v484 = v749;
        v860 = &v482[*(v430 + 52)];
        v483(v749);
        v485 = v816;
        v486 = (*(v810 + 48))(v484, 1, v816);
        v487 = v811;
        if (v486 == 1)
        {
          (*(v427 + 8))(v482, v430);
          (*(v487 + 8))(v777, v817);
          (*(v742 + 8))(v749, v743);
          goto LABEL_184;
        }

        v548 = v725;
        (*(v810 + 32))(v725, v749, v485);
        v549 = v812;
        v551 = type metadata accessor for ItemReconciliationHalf(0, v813, v812, v550);
        if ((v860[*(v551 + 52)] | 4) != 4)
        {
          goto LABEL_253;
        }

        v552 = v744;
        v553 = v811;
        if (v744[v752[14]] != 6 && v744[*(v782 + 56)] == 1)
        {
          v554 = v777;
          (*(v810 + 8))(v548, v816);
          (*(v779 + 8))(v552, v782);
          (*(v553 + 8))(v554, v817);
          goto LABEL_184;
        }

        v584 = v716;
        v585 = v819;
        (*(**(v825 + 32) + 240))(v777, 1, v823, v824, v352);
        if (v585)
        {

          v819 = 0;
          v586 = v814;
        }

        else
        {
          v819 = 0;
          v612 = v801;
          v613 = v802;
          v614 = (*(v801 + 48))(v584, 1, v802);
          v586 = v814;
          if (v614 == 1)
          {
            (*(v806 + 8))(v584, v808);
          }

          else
          {
            v638 = &v584[*(v613 + 48)];
            v639 = v713;
            sub_1CF043498(v638, v713, type metadata accessor for ItemMetadata);
            (*(v612 + 8))(v716, v613);
            v640 = *(v639 + v726[20]);
            sub_1CF043504(v639, type metadata accessor for ItemMetadata);
            if (v640 == 1)
            {
LABEL_253:
              (*(v810 + 8))(v548, v816);
              goto LABEL_254;
            }
          }
        }

        *&v844 = v223;
        v641 = v813;
        *(&v844 + 1) = v813;
        *&v845 = v586;
        *(&v845 + 1) = v549;
        type metadata accessor for Mutation(0, &v844);
        v860 = sub_1CF9E6DA8();
        v642 = v718;
        sub_1CF9E7FA8();
        swift_allocObject();
        v809 = sub_1CF9E6D68();
        v644 = v643;
        type metadata accessor for ReconciliationSideMutation(255, v641, v549, v645);
        v646 = *(swift_getTupleTypeMetadata2() + 48);
        v647 = v811;
        v648 = v777;
        v649 = v817;
        (*(v811 + 16))(v644, v777, v817);
        swift_storeEnumTagMultiPayload();
        *(v644 + v646) = 2;
        swift_storeEnumTagMultiPayload();
        v650 = v860;
        swift_storeEnumTagMultiPayload();
        v651 = sub_1CF045898(v809, v642);
        v652 = v819;
        sub_1CF92E0C4(v650, v651, v823, v824, v822);
        v819 = v652;
        v660 = v821;
        if (v652)
        {
          v650, v653, v654, v655, v656, v657, v658, v659;
          v651, v661, v662, v663, v664, v665, v666, v667;
          (*(v810 + 8))(v725, v816);
          (*(v779 + 8))(v744, v782);
          (*(v647 + 8))(v648, v649);
          (*(v818 + 8))(v820, v660);
          return;
        }

        v650, v653, v654, v655, v656, v657, v658, v659;
        v651, v668, v669, v670, v671, v672, v673, v674;
        v675 = v744;
        if (v744[*(v782 + 56)] > 1u)
        {
          v676 = v817;
          v677 = v811;
          v678 = v816;
          v679 = v725;
          v680 = v777;
LABEL_269:
          (*(v810 + 8))(v679, v678);
          (*(v779 + 8))(v675, v782);
          (*(v677 + 8))(v680, v676);
          goto LABEL_184;
        }

        v676 = v817;
        v677 = v811;
        v678 = v816;
        v679 = v725;
        v680 = v777;
        if (!v744[*(v782 + 56)])
        {
          goto LABEL_269;
        }

        v693 = v725;
        sub_1CF057B28();
        *&v844 = v813;
        *(&v844 + 1) = v815;
        *&v845 = v812;
        *(&v845 + 1) = v814;
        type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v844);
        v694 = sub_1CF93D7F4();
        v696 = sub_1CF65707C(v693, v694, v695, 0);
        v697 = sub_1CF4D3BC0();
        v698 = v819;
        sub_1CF5215C0(v696, v697, v823, v824, v822);
        v819 = v698;

        (*(v810 + 8))(v725, v816);
LABEL_254:
        (*(v779 + 8))(v744, v782);
        v229 = *(v811 + 8);
        v230 = v777;
        goto LABEL_128;
      case 4u:
        v251 = v166;
        v252 = v820;
        v253 = v821;
        v251(v154, v820, v821);
        v254 = v817;
        v255 = swift_getAssociatedConformanceWitness();
        v256 = v816;
        v257 = swift_getAssociatedConformanceWitness();
        *&v844 = v254;
        *(&v844 + 1) = v256;
        *&v845 = v255;
        *(&v845 + 1) = v257;
        v186 = type metadata accessor for ReconciliationID(255, &v844);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v229 = *(*(v186 - 8) + 8);
          v230 = v154;
          goto LABEL_51;
        }

        v361 = v154[*(swift_getTupleTypeMetadata2() + 48)];
        v263 = v811;
        v264 = v760;
        (*(v811 + 32))(v760, v154, v254);
        if (v361)
        {
          v362 = 4;
        }

        else
        {
          v362 = 0;
        }

        v407 = v819;
        sub_1CF5BBF10(v264, v362, 0, v823, v824, *(v822 + 8));
        if (v407)
        {
          (*(v263 + 8))(v264, v254);
          (*(v818 + 8))(v252, v253);
          return;
        }

        v819 = 0;
        goto LABEL_102;
      case 5u:
        v245 = v790;
        v232 = v820;
        v166(v790, v820, v821);
        v246 = v817;
        v247 = swift_getAssociatedConformanceWitness();
        v248 = v816;
        v249 = swift_getAssociatedConformanceWitness();
        *&v844 = v246;
        *(&v844 + 1) = v248;
        *&v845 = v247;
        *(&v845 + 1) = v249;
        v228 = type metadata accessor for ReconciliationID(255, &v844);
        v250 = *(swift_getTupleTypeMetadata2() + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v237 = *(*(v228 - 8) + 8);
          v237(&v245[v250], v228);
          v238 = v245;
          goto LABEL_27;
        }

        v357 = v811;
        v358 = v245;
        v359 = v757;
        (*(v811 + 32))(v757, v358, v246);
        v360 = v819;
        sub_1CF5BBF10(v359, 1, 0, v823, v824, *(v822 + 8));
        v819 = v360;
        if (v360)
        {
          (*(v357 + 8))(v359, v246);
          (*(*(v228 - 8) + 8))(&v358[v250], v228);
          goto LABEL_88;
        }

        (*(v357 + 8))(v359, v246);
        v229 = *(*(v228 - 8) + 8);
        v230 = &v358[v250];
        goto LABEL_182;
      case 6u:
        v166(v143, v820, v821);
        v200 = v808;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v202 = *(TupleTypeMetadata3 + 48);
        v816 = *&v143[*(TupleTypeMetadata3 + 64)];
        v203 = v806;
        v204 = *(v806 + 32);
        v205 = v807;
        v204(v807, v143, v200);
        v204(v809, &v143[v202], v200);
        v206 = v205;
        v207 = *(v203 + 16);
        v208 = v796;
        v860 = (v203 + 16);
        v817 = v207;
        v207(v796, v206, v200);
        v209 = v801;
        v211 = v801 + 48;
        v210 = *(v801 + 48);
        v212 = v802;
        if (v210(v208, 1, v802) == 1)
        {
          v213 = *(v203 + 8);
          v213(v206, v200);
          v213(v809, v200);
          v213(v208, v200);
          goto LABEL_184;
        }

        v330 = *(v209 + 32);
        v331 = v781;
        v810 = v209 + 32;
        v805 = v330;
        v330(v781, v208, v212);
        v332 = v809;
        v811 = v211;
        v333 = v210;
        if (v210(v809, 1, v212) == 1)
        {
          sub_1CF4810BC();
          v334 = swift_allocError();
          *v335 = 2;
          v336 = v823;
          v337 = v824;
          v338 = *(v822 + 8);
          v339 = v819;
          sub_1CF5BBF10(v331, 5, v334, v823, v824, v338);
          v819 = v339;
          v340 = v331;
          v341 = v766;
          if (v339)
          {

LABEL_132:
            (*(v801 + 8))(v340, v802);
            v477 = *(v806 + 8);
            v478 = v807;
LABEL_133:
            v479 = v808;
            v477(v478, v808);
            v477(v809, v479);
            goto LABEL_184;
          }

          v804 = v333;

          v475 = v727;
          v476 = v819;
          sub_1CF68DDB0(v340, v336, v337, v338, v727);
          v819 = v476;
          if (v476)
          {
            goto LABEL_132;
          }

          v565 = v779;
          v566 = v782;
          v567 = (*(v779 + 48))(v475, 1, v782);
          v568 = v807;
          if (v567 == 1)
          {
            (*(v772 + 8))(v475, v756);
            v569 = v824;
            v570 = v823;
            v571 = v822;
          }

          else
          {
            v591 = sub_1CF07CD80(v566);
            (*(v565 + 8))(v475, v566);
            v569 = v824;
            v570 = v823;
            v571 = v822;
            if (v591)
            {
              v399 = v801;
              v212 = v802;
              v332 = v809;
              v333 = v804;
              goto LABEL_84;
            }
          }

          v592 = v781;
          v593 = v819;
          sub_1CF5BEE74(v781, 0, v570, v569, v571);
          v819 = v593;
          v399 = v801;
          v212 = v802;
          v333 = v804;
          if (v593)
          {
            (*(v801 + 8))(v592, v802);
            v477 = *(v806 + 8);
            v478 = v568;
            goto LABEL_133;
          }

          v332 = v809;
        }

        else
        {
          v399 = v209;
          v341 = v766;
        }

LABEL_84:
        v400 = v332;
        v401 = v332;
        v402 = v808;
        v817(v341, v400, v808);
        if ((v333)(v341, 1, v212) == 1)
        {
          (*(v399 + 8))(v781, v212);
          v403 = v401;
          v404 = *(v806 + 8);
          v404(v807, v402);
          v404(v403, v402);
          v404(v341, v402);
          goto LABEL_184;
        }

        v442 = v741;
        v805(v741, v341, v212);
        v443 = v806;
        if ((v816 & 0x100000000000) == 0)
        {
          v444 = v401;
          v445 = *(v399 + 8);
          v445(v442, v212);
          v445(v781, v212);
          v446 = *(v443 + 8);
          v447 = v808;
          v446(v807, v808);
          v446(v444, v447);
          goto LABEL_184;
        }

        v521 = &v442[*(v212 + 48)];
        v522 = v821;
        v523 = v820;
        v524 = v808;
        if ((v521[v726[15]] & 1) == 0 && *&v521[v726[19]])
        {
          *&v844 = v815;
          *(&v844 + 1) = v813;
          *&v845 = v814;
          *(&v845 + 1) = v812;
          type metadata accessor for Maintenance.UpdateClosestSyncRoot(0, &v844);
          sub_1CF93DAB0();
          v525 = sub_1CF559420();
          v526 = sub_1CF4D3BC0();
          v527 = v819;
          sub_1CF5215C0(v525, v526, v823, v824, v822);
          v819 = v527;
          if (v527)
          {

            v528 = *(v801 + 8);
            v529 = v802;
            v528(v442, v802);
            v528(v781, v529);
            v530 = *(v443 + 8);
            v530(v807, v524);
            v530(v809, v524);
            (*(v818 + 8))(v523, v522);
            return;
          }

          v399 = v801;
        }

        v622 = *(v399 + 8);
        v623 = v802;
        v622(v442, v802);
        v622(v781, v623);
        v624 = *(v443 + 8);
        v624(v807, v524);
        v624(v809, v524);
        goto LABEL_184;
      case 7u:
        v231 = v800;
        v232 = v820;
        v166(v800, v820, v821);
        v233 = v798;
        v228 = sub_1CF9E75D8();
        v234 = swift_getTupleTypeMetadata3();
        v235 = *(v234 + 48);
        v236 = v797;
        if ((*(v797 + 48))(v231, 1, v233) == 1)
        {
          v237 = *(*(v228 - 8) + 8);
          v237(&v235[v231], v228);
          v238 = v231;
LABEL_27:
          v237(v238, v228);
          goto LABEL_184;
        }

        v860 = v235;
        v355 = *&v231[*(v234 + 64)];
        v356 = v775;
        (*(v236 + 32))(v775, v231, v233);
        if ((v355 & 2) == 0)
        {
          (*(v236 + 8))(v356, v233);
          v229 = *(*(v228 - 8) + 8);
          v230 = &v860[v231];
          goto LABEL_182;
        }

        v405 = v753;
        v406 = v819;
        (*(**(v825 + 16) + 152))(v356, v823, v824, *(v822 + 8));
        v819 = v406;
        if (v406)
        {
          goto LABEL_87;
        }

        if ((*(v811 + 48))(v405, 1, v817) == 1)
        {
          (*(v739 + 8))(v405, v740);
          v356 = v775;
          v488 = v819;
          sub_1CF5C1260(v775, 0, v823, v824, v822);
          v819 = v488;
          if (v488)
          {
LABEL_87:
            (*(v236 + 8))(v356, v233);
            (*(*(v228 - 8) + 8))(&v860[v800], v228);
            goto LABEL_88;
          }

          (*(v236 + 8))(v356, v233);
        }

        else
        {
          (*(v236 + 8))(v775, v233);
          (*(v739 + 8))(v405, v740);
        }

        v229 = *(*(v228 - 8) + 8);
        v230 = &v860[v800];
        goto LABEL_182;
      case 0xAu:
        v258 = v788;
        v259 = v820;
        v216 = v821;
        v166(v788, v820, v821);
        v260 = v817;
        v261 = swift_getAssociatedConformanceWitness();
        v254 = v816;
        v262 = swift_getAssociatedConformanceWitness();
        *&v844 = v260;
        *(&v844 + 1) = v254;
        *&v845 = v261;
        *(&v845 + 1) = v262;
        type metadata accessor for ReconciliationID(0, &v844);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v263 = v810;
          v264 = v765;
          (*(v810 + 32))(v765, v258, v254);
          v265 = v819;
          sub_1CF5C1260(v264, 0, v823, v824, v822);
          v819 = v265;
          if (v265)
          {
            (*(v263 + 8))(v264, v254);
LABEL_68:
            v348 = *(v818 + 8);
            v349 = v259;
            goto LABEL_69;
          }

LABEL_102:
          (*(v263 + 8))(v264, v254);
        }

        else
        {
          v363 = v811;
          v364 = v759;
          (*(v811 + 32))(v759, v258, v260);
          v365 = v819;
          sub_1CF5BEE74(v364, 0, v823, v824, v822);
          v819 = v365;
          if (v365)
          {
            (*(v363 + 8))(v364, v260);
            goto LABEL_68;
          }

          (*(v363 + 8))(v364, v260);
        }

        goto LABEL_184;
      case 0xFu:
        v266 = v784;
        v267 = v820;
        v166(v784, v820, v821);
        v268 = v817;
        v269 = swift_getAssociatedConformanceWitness();
        v270 = v816;
        v271 = swift_getAssociatedConformanceWitness();
        *&v844 = v268;
        *(&v844 + 1) = v270;
        *&v845 = v269;
        *(&v845 + 1) = v271;
        v186 = type metadata accessor for ReconciliationID(255, &v844);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v272 = *&v266[*(swift_getTupleTypeMetadata2() + 48)];
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v229 = *(*(v186 - 8) + 8);
          v230 = v266;
          goto LABEL_51;
        }

        v367 = v811;
        v368 = v758;
        (*(v811 + 32))(v758, v266, v268);
        v369 = v272;
        v370 = v819;
        sub_1CF5BBF10(v368, 0, v272, v823, v824, *(v822 + 8));
        v819 = v370;
        if (v370)
        {
          (*(v367 + 8))(v368, v268);

          v348 = *(v818 + 8);
          v349 = v267;
          goto LABEL_185;
        }

        (*(v367 + 8))(v368, v268);

        v385 = v272;
        goto LABEL_105;
      case 0x10u:
        v300 = v786;
        v166(v786, v820, v821);
        v301 = v817;
        v302 = swift_getAssociatedConformanceWitness();
        v303 = v816;
        v304 = swift_getAssociatedConformanceWitness();
        *&v844 = v301;
        *(&v844 + 1) = v303;
        *&v845 = v302;
        *(&v845 + 1) = v304;
        v186 = type metadata accessor for ReconciliationID(255, &v844);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v305 = swift_getTupleTypeMetadata3();
        v306 = *&v300[*(v305 + 48)];
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v229 = *(*(v186 - 8) + 8);
          v230 = v300;
          goto LABEL_51;
        }

        v816 = v302;
        v809 = v305;
        v810 = v186;
        v376 = v300;
        v377 = v811;
        v378 = *(v811 + 32);
        v379 = v778;
        (v378)(v778, v376, v301);
        v380 = v306;
        v381 = v823;
        v382 = v824;
        v860 = *(v822 + 8);
        v383 = v825;
        v384 = v819;
        sub_1CF5BBF10(v379, 1, v306, v823, v824, v860);
        v819 = v384;
        if (v384)
        {
          (*(v377 + 8))(v379, v817);

          v385 = v306;
          goto LABEL_105;
        }

        v808 = v378;

        v438 = v746;
        v439 = v860;
        v440 = v819;
        (*(**(v383 + 32) + 288))(v379, v381, v382, v860);
        if (v440)
        {
          (*(v811 + 8))(v379, v817);

          (*(v818 + 8))(v820, v821);
          return;
        }

        v517 = v439;
        v807 = v306;
        v518 = v817;
        if ((*(v811 + 48))(v438, 1, v817) == 1)
        {
          (*(v739 + 8))(v438, v740);
          v519 = v821;
          v520 = v823;
        }

        else
        {
          v577 = v719;
          (v808)(v719, v438, v518);
          v578 = sub_1CF9E6868();
          v520 = v823;
          if ((v578 & 1) == 0)
          {
            v594 = v715;
            sub_1CF68DDB0(v577, v823, v824, v517, v715);
            v519 = v821;
            v627 = v779;
            v628 = v782;
            if ((*(v779 + 48))(v594, 1, v782) == 1)
            {
              (*(v811 + 8))(v719, v817);
              (*(v772 + 8))(v594, v756);
            }

            else
            {
              v681 = v711;
              (*(v627 + 32))(v711, v594, v628);
              v682 = v627;
              if (v681[v752[11]] == 1)
              {
                v819 = *(v809 + 48);
                v816 = *(v809 + 64);
                v683 = v712;
                (*(v811 + 16))(v712, v719, v817);
                swift_storeEnumTagMultiPayload();
                v684 = v807;
                *(v819 + v683) = v807;
                *(v683 + v816) = 0;
                swift_storeEnumTagMultiPayload();
                v685 = v684;
                sub_1CF042D98(v683);
                (*(v818 + 8))(v683, v519);
              }

              (*(v682 + 8))(v681, v628);
              (*(v811 + 8))(v719, v817);
            }

            v579 = v815;
            v520 = v823;
            goto LABEL_205;
          }

          (*(v811 + 8))(v577, v518);
          v519 = v821;
        }

        v579 = v815;
LABEL_205:
        v580 = *(v825 + 24);
        *&v844 = v579;
        *(&v844 + 1) = v813;
        *&v845 = v814;
        *(&v845 + 1) = v812;
        v581 = type metadata accessor for Materialization.MaterializeItem(0, &v844);
        v582 = (*(*v580 + 328))(v778, v581, 0, v520, v824, v517);
        v819 = 0;
        if ((v582 & 1) == 0)
        {
          *&v844 = v579;
          v597 = v813;
          *(&v844 + 1) = v813;
          v598 = v814;
          *&v845 = v814;
          v599 = v812;
          *(&v845 + 1) = v812;
          type metadata accessor for ConcreteJobResult(0, &v844);
          v600 = sub_1CF056580();
          *&v844 = v579;
          *(&v844 + 1) = v597;
          *&v845 = v598;
          *(&v845 + 1) = v599;
          v860 = type metadata accessor for JobResult(0, &v844);
          type metadata accessor for ReconciliationSideMutation(255, v579, v598, v601);
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          v603 = v714;
          v604 = &v714[*(TupleTypeMetadata2 + 48)];
          v605 = v811;
          v606 = v817;
          (*(v811 + 16))(v714, v778, v817);
          swift_storeEnumTagMultiPayload();
          v607 = sub_1CF93D7F4();
          *v604 = 1281;
          *(v604 + 1) = v607;
          *(v604 + 2) = v608;
          swift_storeEnumTagMultiPayload();
          v609 = v718;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v600, v603);
          (*(v717 + 8))(v603, v609);
          v610 = sub_1CF4D3BC0();
          v611 = v819;
          sub_1CF521850(v600, v610, v823, v824, v822);
          v819 = v611;
          if (v611)
          {
            (*(v605 + 8))(v778, v606);

            (*(v818 + 8))(v820, v519);
            return;
          }

          (*(v605 + 8))(v778, v606);

          goto LABEL_184;
        }

        (*(v811 + 8))(v778, v817);
        v385 = v807;
LABEL_105:

        goto LABEL_184;
      case 0x11u:
        v290 = v785;
        v215 = v820;
        v216 = v821;
        v166(v785, v820, v821);
        v291 = v290[1];
        v844 = *v290;
        v845 = v291;
        v292 = v290[3];
        v846 = v290[2];
        v847 = v292;
        *&v828 = v815;
        *(&v828 + 1) = v813;
        *&v829 = v814;
        *(&v829 + 1) = v812;
        type metadata accessor for Ingestion.CollectCapturedContent(0, &v828);
        v293 = v290[1];
        v828 = *v290;
        v829 = v293;
        v294 = v290[3];
        v830 = v290[2];
        v831 = v294;
        sub_1CF1AE1DC(&v844, v826);
        v295 = sub_1CF93DAB0();
        v297 = sub_1CF65A0B4(&v828, v295, v296, 0x4000);
        v298 = sub_1CF4D3BC0();
        v299 = v819;
        sub_1CF5215C0(v297, v298, v823, v824, v822);
        v819 = v299;
        if (!v299)
        {
          goto LABEL_78;
        }

        sub_1CF1AE25C(&v844);
        goto LABEL_57;
      case 0x13u:
        v192 = v787;
        v166(v787, v820, v821);
        v193 = v817;
        v194 = v816;
        v195 = *(swift_getTupleTypeMetadata2() + 48);
        v170 = v811;
        v171 = v804;
        (*(v811 + 32))(v804, v192, v193);
        v172 = v810;
        v173 = v795;
        (*(v810 + 32))(v795, &v192[v195], v194);
        v196 = v823;
        v197 = v824;
        v198 = v822;
        v199 = v819;
        sub_1CF5BEE74(v171, 0, v823, v824, v822);
        if (v199)
        {
LABEL_11:
          (*(v172 + 8))(v173, v816);
          (*(v170 + 8))(v171, v817);
          (*(v818 + 8))(v820, v821);
          return;
        }

        v393 = v817;
        sub_1CF5C1260(v173, 0, v196, v197, v198);
        v819 = 0;
        (*(v810 + 8))(v173, v816);
        (*(v170 + 8))(v804, v393);
        goto LABEL_184;
      case 0x16u:
        v239 = v783;
        v240 = v820;
        v241 = v821;
        v166(v783, v820, v821);
        v242 = *v239;
        if (*v239 < 0)
        {
          v394 = v242 & 0x7FFFFFFFFFFFFFFFLL;
          v395 = v819;
          v396 = v815;
          if ((*((v242 & 0x7FFFFFFFFFFFFFFFLL) + 0x89) & 0x80) != 0)
          {
            sub_1CF5A5FB0();
            v397 = v814;
            v398 = v816;
            if (v395)
            {
LABEL_99:

              (*(v818 + 8))(v240, v241);
              return;
            }

            v819 = 0;
          }

          else
          {
            v397 = v814;
            v398 = v816;
          }

          *&v844 = v396;
          v503 = v813;
          *(&v844 + 1) = v813;
          *&v845 = v397;
          v504 = v812;
          *(&v845 + 1) = v812;
          type metadata accessor for Propagation.PropagationJob(0, &v844);
          v505 = swift_dynamicCastClass();
          if (v505)
          {
            v506 = v505;
            if (*(v505 + 112) == 3)
            {
              v507 = *(v505 + 96);
              v508 = v507;
            }

            else
            {
              v507 = 0;
            }

            v515 = v819;
            v516 = *(*v506 + 576);

            sub_1CF5BEE74((v506 + v516), v507, v823, v824, v822);
            v819 = v515;
            if (v515)
            {

LABEL_155:

LABEL_209:
              v348 = *(v818 + 8);
              v349 = v240;
LABEL_185:
              v366 = v821;
LABEL_186:
              v348(v349, v366);
              return;
            }
          }

          else
          {
            *&v844 = v503;
            *(&v844 + 1) = v396;
            *&v845 = v504;
            *(&v845 + 1) = v397;
            type metadata accessor for Ingestion.FetchItemMetadata(0, &v844);
            v509 = swift_dynamicCastClass();
            if (v509)
            {
              v510 = v509;
              v511 = v810;
              v512 = v724;
              (*(v810 + 16))(v724, v509 + *(*v509 + 576), v398);
              if (*(v510 + 112) == 3)
              {
                v513 = *(v510 + 96);
                v514 = v513;
              }

              else
              {
                v513 = 0;
              }

              v583 = v819;
              sub_1CF5C1260(v512, v513, v823, v824, v822);
              v819 = v583;
              if (v583)
              {

                (*(v511 + 8))(v512, v398);
                goto LABEL_209;
              }

              v540 = (*(v511 + 8))(v512, v398);
            }

            else
            {
              *&v844 = v503;
              *(&v844 + 1) = v396;
              *&v845 = v504;
              *(&v845 + 1) = v397;
              type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v844);
              v540 = swift_dynamicCastClass();
              if (v540 || (*&v844 = v503, *(&v844 + 1) = v396, *&v845 = v504, *(&v845 + 1) = v397, type metadata accessor for Ingestion.FetchContent(0, &v844), (v540 = swift_dynamicCastClass()) != 0))
              {
                if (*(v540 + 112) == 3)
                {
                  v559 = *(v540 + 96);
                  v560 = *(v540 + 104);
                  v561 = *(*v540 + 576);
                  v562 = v540;
                  v563 = v559;
                  v564 = v819;
                  sub_1CF5C1260((v562 + v561), v559, v823, v824, v822);
                  v819 = v564;
                  if (v564)
                  {
                    sub_1CF03D7A8(v559, v560, 3u);

                    goto LABEL_209;
                  }

                  sub_1CF03D7A8(v559, v560, 3u);
                }
              }
            }
          }

          v630 = v736;
          v629 = v737;
          v631 = v734;
          v632 = v735;
          (*(*v394 + 528))(v540);
          if ((*(v630 + 48))(v631, 1, v629) != 1)
          {
            (*(v630 + 32))(v632, v631, v629);
            sub_1CF940280(v629, v733);
            if (*(v394 + 112) == 3)
            {
              v635 = *(v394 + 96);
              v636 = v635;
            }

            else
            {
              v635 = 0;
            }

            v637 = v733;
            sub_1CF5A296C(v733, v635);

            (*(v755 + 8))(v637, v805);
            (*(v630 + 8))(v632, v629);
            goto LABEL_184;
          }

          v634 = v722;
          v633 = v723;
LABEL_286:
          (*(v634 + 8))(v631, v633);
          goto LABEL_184;
        }

        v243 = v819;
        v244 = v815;
        if ((*(v242 + 137) & 0x80) != 0)
        {
          sub_1CF5A5FB0();
          if (v243)
          {
            goto LABEL_99;
          }

          v819 = 0;
        }

        *&v844 = v244;
        v448 = v813;
        *(&v844 + 1) = v813;
        v449 = v814;
        *&v845 = v814;
        v450 = v812;
        *(&v845 + 1) = v812;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v844);
        v451 = swift_dynamicCastClass();
        if (v451)
        {
          v452 = v451;
          v453 = *(*v451 + 576);
          v454 = *(v811 + 16);
          v455 = v754;
          v454(v754, v451 + v453, v817);
          v456 = v242;
          if (*(v452 + 112) == 3)
          {
            v457 = *(v452 + 96);
            v458 = v457;
          }

          else
          {
            v457 = 0;
          }

          v467 = v819;
          v468 = v455;
          sub_1CF5BEE74(v455, v457, v823, v824, v822);
          v819 = v467;
          if (v467)
          {

            v229 = *(v811 + 8);
            v230 = v455;
LABEL_128:
            v329 = v817;
LABEL_183:
            v229(v230, v329);
LABEL_184:
            v348 = *(v818 + 8);
            v349 = v820;
            goto LABEL_185;
          }

          v469 = *(v811 + 8);
          v470 = v817;
          v811 += 8;
          v860 = v469;
          (v469)(v468, v817);

          v454(v751, v452 + v453, v470);
          v471 = sub_1CF03D760();
          v472 = *(v452 + 128);
          if (*(v452 + 112) == 3)
          {
            v473 = *(v452 + 96);
            v474 = v473;
          }

          else
          {
            v473 = 0;
          }

          v542 = v805;
          v242 = v456;
          v543 = v751;
          v544 = v819;
          sub_1CF5C36BC(v751, v471, v472, v473, v823, v824, v822);
          v819 = v544;
          v545 = v821;
          v546 = v820;
          v547 = v817;
          if (v544)
          {

            (v860)(v543, v547);
            (*(v818 + 8))(v546, v545);
            return;
          }

          (v860)(v543, v547);
          goto LABEL_283;
        }

        *&v844 = v244;
        *(&v844 + 1) = v448;
        *&v845 = v449;
        *(&v845 + 1) = v450;
        type metadata accessor for Ingestion.FetchChildrenMetadata(0, &v844);
        v459 = swift_dynamicCastClass();
        if (v459)
        {
          v460 = v459;
          v461 = *(*v459 + 576);
          v462 = v732;
          (*(v811 + 16))(v732, v459 + v461, v817);
          v463 = sub_1CF03D760();
          v464 = *(v460 + 128);
          if (*(v460 + 112) == 3)
          {
            v465 = *(v460 + 96);
            v466 = v465;
          }

          else
          {
            v465 = 0;
          }

          v541 = v819;
          sub_1CF5C36BC(v462, v463, v464, v465, v823, v824, v822);
          v819 = v541;
          if (v541)
          {

            (*(v811 + 8))(v462, v817);
            goto LABEL_209;
          }

          (*(v811 + 8))(v462, v817);

          if (*(v460 + 112) == 3)
          {
            v555 = *(v460 + 96);
            v556 = *(v460 + 104);
            v557 = v555;
            v558 = v819;
            sub_1CF5BEE74((v460 + v461), v555, v823, v824, v822);
            v819 = v558;
            v538 = v555;
            v539 = v556;
            if (!v558)
            {
              goto LABEL_191;
            }

LABEL_166:
            sub_1CF03D7A8(v538, v539, 3u);

            goto LABEL_209;
          }

          goto LABEL_282;
        }

        *&v844 = v244;
        *(&v844 + 1) = v448;
        *&v845 = v449;
        *(&v845 + 1) = v450;
        type metadata accessor for Ingestion.FetchContent(0, &v844);
        v531 = swift_dynamicCastClass();
        if (v531)
        {
          if (*(v531 + 112) == 3)
          {
            v532 = *(v531 + 96);
            v533 = *(v531 + 104);
            v534 = *(*v531 + 576);
            v535 = v531;
            v536 = v532;
            v537 = v819;
            sub_1CF5BEE74((v535 + v534), v532, v823, v824, v822);
            v819 = v537;
            v538 = v532;
            v539 = v533;
            if (!v537)
            {
LABEL_191:
              sub_1CF03D7A8(v538, v539, 3u);
              goto LABEL_282;
            }

            goto LABEL_166;
          }

LABEL_282:
          v542 = v805;
LABEL_283:
          v631 = v731;
LABEL_284:
          (*(*v242 + 528))();
          v702 = v755;
          if ((*(v755 + 48))(v631, 1, v542) != 1)
          {
            (*(v702 + 32))(v730, v631, v542);
            if (*(v242 + 112) == 3)
            {
              v703 = *(v242 + 96);
              v704 = v703;
            }

            else
            {
              v703 = 0;
            }

            v705 = v730;
            sub_1CF5A296C(v730, v703);

            (*(v702 + 8))(v705, v542);
            goto LABEL_184;
          }

          v634 = v720;
          v633 = v721;
          goto LABEL_286;
        }

        *&v844 = v244;
        *(&v844 + 1) = v448;
        *&v845 = v449;
        *(&v845 + 1) = v450;
        type metadata accessor for Ingestion.MergeItems(0, &v844);
        v587 = swift_dynamicCastClass();
        if (v587)
        {
          v588 = v587;
          if (*(v587 + 112) == 3)
          {
            v589 = *(v587 + 96);
            v590 = v589;
          }

          else
          {
            v589 = 0;
          }

          v625 = v819;
          v626 = *(*v588 + 584);

          sub_1CF5BEE74((v588 + v626), v589, v823, v824, v822);
          v819 = v625;
          if (v625)
          {

            goto LABEL_155;
          }

LABEL_281:

          goto LABEL_282;
        }

        *&v844 = v448;
        *(&v844 + 1) = v244;
        *&v845 = v450;
        *(&v845 + 1) = v449;
        type metadata accessor for Propagation.PropagationJob(0, &v844);
        v615 = swift_dynamicCastClass();
        if (!v615)
        {
          *&v844 = v244;
          *(&v844 + 1) = v448;
          *&v845 = v449;
          *(&v845 + 1) = v450;
          type metadata accessor for Materialization.MaterializeItem(0, &v844);
          v686 = swift_dynamicCastClass();
          if (v686)
          {
            v687 = v686;
            if (*(v686 + 112) == 3)
            {
              v688 = *(v686 + 96);
              v689 = *(v686 + 104);
              v690 = *(*v686 + 576);
              v691 = v688;
              v692 = v819;
              sub_1CF5BBF10(v687 + v690, 0, v688, v823, v824, *(v822 + 8));
              v819 = v692;
              if (v692)
              {
                sub_1CF03D7A8(v688, v689, 3u);

                goto LABEL_184;
              }

              sub_1CF03D7A8(v688, v689, 3u);
            }
          }

          v542 = v805;
          v631 = v731;
          goto LABEL_284;
        }

        v616 = v615;
        v617 = *(v615 + 112);
        if (v617 != 3)
        {
          swift_retain_n();
LABEL_276:
          v699 = *(v616 + 12);
          v700 = *(v616 + 13);
          sub_1CF03C530(v699, v700, v617);

          if (v617 != 3)
          {
            sub_1CF03D7A8(v699, v700, v617);
            v699 = 0;
          }

          v701 = v819;
          sub_1CF5C1260(&v616[*(*v616 + 576)], v699, v823, v824, v822);
          v819 = v701;
          if (v701)
          {

            goto LABEL_184;
          }

          goto LABEL_281;
        }

        v619 = *(v615 + 96);
        v618 = *(v615 + 104);
        _s3__C4CodeOMa_1(0);
        *&v844 = -2008;
        swift_retain_n();
        sub_1CF03C530(v619, v618, 3u);
        sub_1CF5DFB70(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
        v620 = sub_1CF9E5658();
        sub_1CF03D7A8(v619, v618, 3u);
        if ((v620 & 1) == 0)
        {
          goto LABEL_275;
        }

        if ((~*(v616 + 34) & 0x1002) != 0)
        {
          goto LABEL_275;
        }

        (*(*v616 + 288))(&v844);
        if (v844 - 1 < 3 || v844)
        {
          goto LABEL_275;
        }

        v621 = v819;
        (*(**(v825 + 40) + 264))(&v844, &v616[*(*v616 + 576)], v823, v824, *(v822 + 8));
        v819 = v621;
        if (v621)
        {

          goto LABEL_184;
        }

        v826[12] = v856;
        v826[13] = v857;
        v826[14] = v858;
        v826[8] = v852;
        v826[9] = v853;
        v826[10] = v854;
        v826[11] = v855;
        v826[4] = v848;
        v826[5] = v849;
        v826[6] = v850;
        v826[7] = v851;
        v826[0] = v844;
        v826[1] = v845;
        v826[2] = v846;
        v826[3] = v847;
        v840 = v856;
        v841 = v857;
        v842 = v858;
        v836 = v852;
        v837 = v853;
        v838 = v854;
        v839 = v855;
        v832 = v848;
        v833 = v849;
        v834 = v850;
        v835 = v851;
        v828 = v844;
        v829 = v845;
        v827 = v859;
        v843 = v859;
        v830 = v846;
        v831 = v847;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v828) == 1)
        {
          goto LABEL_275;
        }

        v706 = *(v825 + 80);
        if ((v706 & 0x20000) != 0)
        {
          v707 = 3;
        }

        else
        {
          v707 = 1;
        }

        if ((v706 & 0x200) != 0)
        {
          v708 = v707;
        }

        else
        {
          v708 = (v706 & 0x20000uLL) >> 16;
        }

        v709 = sub_1CEFF8538(v841, *(&v841 + 1), 0, v708, 0, 0);
        sub_1CEFCCC44(v826, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        if (v709 <= 501)
        {
          if (v709 != 1 && v709 != 2)
          {
            goto LABEL_275;
          }
        }

        else if (v709 != 1003 && v709 != 1000 && v709 != 502)
        {
LABEL_275:
          v617 = v616[112];
          goto LABEL_276;
        }

        goto LABEL_282;
      case 0x1Cu:
        v214 = v789;
        v215 = v820;
        v216 = v821;
        v166(v789, v820, v821);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v217 = v768;
          v218 = v776;
          v219 = v770;
          (*(v768 + 32))(v776, v214, v770);
          v220 = v825;
          v221 = (v825 + qword_1EDEBBC28);
          os_unfair_lock_lock((v825 + qword_1EDEBBC28));
          v222 = v819;
          sub_1CF5C4484(&v221[2], v218, v220, v823, v824, v822, &v844);
          if (v222)
          {
            os_unfair_lock_unlock(v221);
            (*(v217 + 8))(v218, v219);
            (*(v818 + 8))(v215, v216);
            return;
          }

          v819 = 0;
          os_unfair_lock_unlock(v221);
          v408 = *(v217 + 16);
          v409 = v748;
          v408(v748, v218, v219);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v410 = sub_1CF9E75D8();
            v411 = v409;
            v412 = v816;
            v413 = swift_getTupleTypeMetadata2();
            (*(*(v410 - 8) + 8))(&v411[*(v413 + 48)], v410);
            v414 = v411;
            v415 = v776;
            (*(v810 + 8))(v414, v412);
            v416 = v750;
            v408(v750, v415, v219);
            v417 = v805;
            swift_storeEnumTagMultiPayload();
            sub_1CF5A296C(v416, 0);
            (*(v755 + 8))(v416, v417);
            (*(v217 + 8))(v415, v219);
          }

          else
          {
            v480 = *(v217 + 8);
            v480(v409, v219);
            v480(v218, v219);
          }

          goto LABEL_184;
        }

        v342 = v769;
        v343 = v767;
        v344 = v771;
        (*(v769 + 32))(v767, v214, v771);
        v345 = v825;
        v346 = (v825 + qword_1EDEBBC20);
        os_unfair_lock_lock((v825 + qword_1EDEBBC20));
        v347 = v819;
        sub_1CF5C43DC(&v346[2], v343, v345, v823, v824, v822);
        v819 = v347;
        if (!v347)
        {
          v418 = v342;
          v419 = v817;
          swift_getAssociatedConformanceWitness();
          sub_1CF9E7068();
          sub_1CF9E6708();
          os_unfair_lock_unlock(v346);
          v420 = *(v342 + 16);
          v421 = v747;
          (v420)(v747, v343, v344);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            v422 = sub_1CF9E75D8();
            v860 = v420;
            v423 = v422;
            v424 = swift_getTupleTypeMetadata2();
            (*(*(v423 - 8) + 8))(&v421[*(v424 + 48)], v423);
            (*(v811 + 8))(v421, v419);
            v425 = v750;
            (v860)(v750, v343, v344);
            v426 = v805;
            swift_storeEnumTagMultiPayload();
            sub_1CF5A296C(v425, 0);
            (*(v755 + 8))(v425, v426);
            (*(v418 + 8))(v343, v344);
          }

          else
          {
            v481 = *(v418 + 8);
            v481(v343, v344);
            v481(v421, v344);
          }

          goto LABEL_184;
        }

        swift_getAssociatedConformanceWitness();
        sub_1CF9E7068();
        sub_1CF9E6708();
        os_unfair_lock_unlock(v346);
        (*(v342 + 8))(v343, v344);
LABEL_57:
        v348 = *(v818 + 8);
        v349 = v215;
LABEL_69:
        v366 = v216;
        goto LABEL_186;
      case 0x1Fu:
        v179 = v791;
        v166(v791, v820, v821);
        v180 = v817;
        v181 = swift_getAssociatedConformanceWitness();
        v182 = v812;
        v183 = v813;
        v184 = v816;
        v185 = swift_getAssociatedConformanceWitness();
        *&v844 = v180;
        *(&v844 + 1) = v184;
        *&v845 = v181;
        *(&v845 + 1) = v185;
        v186 = type metadata accessor for ReconciliationID(0, &v844);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_50;
        }

        v187 = v811;
        v188 = v761;
        (*(v811 + 32))(v761, v179, v180);
        *&v844 = v815;
        *(&v844 + 1) = v183;
        *&v845 = v814;
        *(&v845 + 1) = v182;
        type metadata accessor for Maintenance.IgnoreChildrenOfIgnoredHierarchy(0, &v844);
        sub_1CF93DAB0();
        v189 = sub_1CF559420();
        v190 = sub_1CF4D3BC0();
        v191 = v819;
        sub_1CF5215C0(v189, v190, v823, v824, v822);
        v819 = v191;
        (*(v187 + 8))(v188, v180);
        goto LABEL_9;
      case 0x20u:
        v273 = v799;
        v166(v799, v820, v821);
        v274 = v817;
        v275 = swift_getAssociatedConformanceWitness();
        v276 = v816;
        v277 = swift_getAssociatedConformanceWitness();
        *&v844 = v274;
        *(&v844 + 1) = v276;
        *&v845 = v275;
        *(&v845 + 1) = v277;
        v228 = type metadata accessor for ReconciliationID(255, &v844);
        v278 = *(swift_getTupleTypeMetadata2() + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v279 = *(*(v228 - 8) + 8);
          v279(&v278[v273], v228);
          v279(v273, v228);
          goto LABEL_184;
        }

        v860 = v278;
        v371 = v811;
        v372 = v780;
        (*(v811 + 32))(v780, v273, v274);
        v373 = *(v822 + 8);
        v374 = v774;
        v375 = v819;
        sub_1CF68DDB0(v372, v823, v824, v373, v774);
        v819 = v375;
        if (v375)
        {
          (*(v371 + 8))(v372, v274);
          v229 = *(*(v228 - 8) + 8);
          v230 = &v860[v273];
          goto LABEL_182;
        }

        v822 = v373;
        v431 = v772;
        v432 = v745;
        v433 = v756;
        (*(v772 + 16))(v745, v374, v756);
        v434 = v779;
        v435 = v782;
        if ((*(v779 + 48))(v432, 1, v782) == 1)
        {
          (*(v431 + 8))(v432, v433);
        }

        else
        {
          v490 = v728;
          v489 = v729;
          v491 = v752;
          (*(v729 + 16))(v728, v432, v752);
          (*(v434 + 8))(v432, v435);
          v492 = *&v490[v491[9]];
          v493 = v490;
          v433 = v756;
          (*(v489 + 8))(v493, v491);
          v374 = v774;
          if ((v492 & 1) == 0)
          {
            v499 = v772;
            v496 = v780;
            v498 = v799;
LABEL_181:
            (*(v499 + 8))(v374, v433);
            (*(v811 + 8))(v496, v274);
            v229 = *(*(v228 - 8) + 8);
            v230 = &v860[v498];
LABEL_182:
            v329 = v228;
            goto LABEL_183;
          }
        }

        sub_1CF4810BC();
        v494 = swift_allocError();
        *v495 = 2;
        v496 = v780;
        v497 = v819;
        sub_1CF5BBF10(v780, 5, v494, v823, v824, v822);
        v819 = v497;
        v498 = v799;

        v499 = v772;
        goto LABEL_181;
      case 0x29u:
        v179 = v793;
        v232 = v820;
        v166(v793, v820, v821);
        v280 = v817;
        v281 = swift_getAssociatedConformanceWitness();
        v282 = v813;
        v283 = v816;
        v284 = swift_getAssociatedConformanceWitness();
        *&v844 = v280;
        *(&v844 + 1) = v283;
        *&v845 = v281;
        *(&v845 + 1) = v284;
        v186 = type metadata accessor for ReconciliationID(0, &v844);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          goto LABEL_50;
        }

        v285 = v811;
        v286 = v773;
        (*(v811 + 32))(v773, v179, v280);
        v287 = v825;
        v288 = v764;
        v289 = v819;
        sub_1CF68DDB0(v286, v823, v824, *(v822 + 8), v764);
        v819 = v289;
        if (v289)
        {
          goto LABEL_39;
        }

        v436 = v288;
        v437 = v779;
        if ((*(v779 + 48))(v436, 1, v782) == 1)
        {
          (*(v285 + 8))(v286, v280);
          v229 = *(v772 + 8);
          v230 = v436;
LABEL_110:
          v329 = v756;
          goto LABEL_183;
        }

        v500 = v738;
        v501 = v436;
        v502 = v782;
        (*(v437 + 32))(v738, v501, v782);
        if (*&v500[v752[9]])
        {
          (*(v437 + 8))(v500, v502);
          (*(v285 + 8))(v773, v280);
          goto LABEL_184;
        }

        *&v844 = v815;
        *(&v844 + 1) = v282;
        *&v845 = v814;
        *(&v845 + 1) = v812;
        type metadata accessor for Ingestion.FetchItemMetadata(0, &v844);
        v572 = sub_1CF93DAB0();
        v286 = v773;
        v574 = sub_1CF656F5C(v773, v572, v573, 0x80000000000);
        sub_1CF052548(0x2000000);
        v575 = sub_1CF4D3BC0();
        v576 = v819;
        sub_1CF5215C0(v574, v575, v823, v824, v822);
        v819 = v576;
        if (!v576)
        {
          v595 = *(**(*(v287 + 32) + 16) + 920);

          v595(v596);

          (*(v779 + 8))(v738, v782);
          (*(v285 + 8))(v286, v280);
          goto LABEL_184;
        }

        (*(v779 + 8))(v738, v782);
LABEL_39:
        (*(v285 + 8))(v286, v280);
LABEL_88:
        v348 = *(v818 + 8);
        v349 = v232;
        goto LABEL_185;
      case 0x2Bu:
        v179 = v792;
        v166(v792, v820, v821);
        v320 = v817;
        v321 = swift_getAssociatedConformanceWitness();
        v322 = v812;
        v323 = v813;
        v324 = v816;
        v325 = swift_getAssociatedConformanceWitness();
        *&v828 = v320;
        *(&v828 + 1) = v324;
        *&v829 = v321;
        *(&v829 + 1) = v325;
        v186 = type metadata accessor for ReconciliationID(255, &v828);
        v326 = &v179[*(swift_getTupleTypeMetadata2() + 48)];
        v327 = *(v326 + 1);
        v844 = *v326;
        v845 = v327;
        v328 = *(v326 + 2);
        v847 = *(v326 + 3);
        v846 = v328;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1CF1AE25C(&v844);
LABEL_50:
          v229 = *(*(v186 - 8) + 8);
          v230 = v179;
LABEL_51:
          v329 = v186;
          goto LABEL_183;
        }

        v386 = v811;
        v387 = v763;
        (*(v811 + 32))(v763, v179, v320);
        *&v828 = v815;
        *(&v828 + 1) = v323;
        *&v829 = v814;
        *(&v829 + 1) = v322;
        type metadata accessor for Ingestion.UnlinkOldVersion(0, &v828);
        v828 = v844;
        v829 = v845;
        v830 = v846;
        v831 = v847;
        sub_1CF1AE1DC(&v844, v826);
        v388 = sub_1CF93DAB0();
        v390 = sub_1CF611894(&v828, v388, v389, 0x4000);
        v391 = sub_1CF4D3BC0();
        v392 = v819;
        sub_1CF5215C0(v390, v391, v823, v824, v822);
        v819 = v392;
        if (v392)
        {
          (*(v386 + 8))(v387, v320);
        }

        else
        {

          *&v828 = v815;
          *(&v828 + 1) = v323;
          *&v829 = v814;
          *(&v829 + 1) = v322;
          type metadata accessor for SQLDatabase(0, &v828);
          if (!swift_dynamicCastClass())
          {
            (*(v386 + 8))(v387, v320);
            goto LABEL_79;
          }

          sub_1CF478C28();

          v441 = v819;
          sub_1CF348CFC(v387, 128, v823, v824, v822);
          v819 = v441;
          if (!v441)
          {
            (*(v386 + 8))(v387, v320);
            sub_1CF1AE25C(&v844);

LABEL_9:

            goto LABEL_184;
          }

          (*(v386 + 8))(v387, v320);
        }

LABEL_78:

LABEL_79:
        sub_1CF1AE25C(&v844);
        goto LABEL_184;
      case 0x2Du:
        v307 = qword_1EDEBBD00;
        v308 = v825;
        swift_beginAccess();
        v316 = *(v308 + v307);
        *(v308 + v307) = MEMORY[0x1E69E7CC0];
        v317 = *v316->tree;
        if (v317)
        {
          anon_8 = v316[1]._anon_8;
          do
          {
            v319 = *(anon_8 - 1);
            *&v828 = 0;

            v319(&v828);

            anon_8 += 16;
            --v317;
          }

          while (v317);
        }

        v316, v309, v310, v311, v312, v313, v314, v315;
        goto LABEL_184;
      default:
        goto LABEL_184;
    }
  }
}

uint64_t sub_1CF5A08AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for FileTreeChangeAggregator.Change(0, v4, v3, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (MEMORY[0x1D3868960](v2, AssociatedTypeWitness, v7, *(AssociatedConformanceWitness + 40)))
  {
    v9 = *(v1 + 32) == 2 && *(v1 + 65) == 0;
    if (v9 && !*(v1 + 64) && (*(v1 + 66) & 1) == 0 && !*(*(v1 + 80) + 16))
    {

      JUMPOUT(0x1D3868960);
    }
  }

  return 0;
}

uint64_t sub_1CF5A09CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 32);
  if (v6 != 2)
  {
    v7 = *(v2 + 48);
    v8 = *(v2 + 40);
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    sub_1CF9E7948();
    0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
    v89 = 0x3A7465736572202BLL;
    v90 = 0xE900000000000020;
    v18 = sub_1CF953A9C(v8, v7 & 1);
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x6579616C6564202CLL, 0xEB00000000203A64);
    if (v6)
    {
      v28 = 1702195828;
    }

    else
    {
      v28 = 0x65736C6166;
    }

    if (v6)
    {
      v29 = 0xE400000000000000;
    }

    else
    {
      v29 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v28, v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
    sub_1CF4FB2BC(v89, v90, v9, v10);
    v90, v37, v38, v39, v40, v41, v42, v43;
  }

  v44 = *(v2 + 64);
  v45 = *(a2 + 16);
  v46 = *(a2 + 24);
  if (*(v2 + 64))
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x6B636F6C626E75, 0xE700000000000000);
    if (v44 == 2)
    {
      MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
    }

    v47 = *(v2 + 65);
    if (!*(v2 + 65))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (!*(v2 + 65))
  {
    goto LABEL_21;
  }

  v89 = 0;
  v90 = 0xE000000000000000;
  v47 = *(v2 + 65);
  if (*(v2 + 65))
  {
LABEL_16:
    if ((v90 & 0xF00000000000000) != 0)
    {
      MEMORY[0x1D3868CC0](44, 0xE100000000000000);
    }

    MEMORY[0x1D3868CC0](0x6E6163736572, 0xE600000000000000);
    if (v47 == 2)
    {
      MEMORY[0x1D3868CC0](0x6472616373696428, 0xEB00000000296465);
    }
  }

LABEL_20:
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  v87 = 0x3A656C6469202BLL;
  v88 = 0xE700000000000000;
  MEMORY[0x1D3868CC0](v89, v90);
  v90, v50, v51, v52, v53, v54, v55, v56;
  sub_1CF4FB2BC(0x3A656C6469202BLL, 0xE700000000000000, v48, v49);
  0xE700000000000000, v57, v58, v59, v60, v61, v62, v63;
LABEL_21:
  if (*(v2 + 66))
  {
    v64 = a1[3];
    v65 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v64);
    sub_1CF4FB2BC(0x6C616E676973202BLL, 0xEA00000000006465, v64, v65);
  }

  v66 = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = type metadata accessor for FileTreeChangeAggregator.Change(0, v45, v46, v68);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = MEMORY[0x1D3868960](v66, AssociatedTypeWitness, v69, *(AssociatedConformanceWitness + 40));
  v72 = MEMORY[0x1E69E7CA8];
  if ((result & 1) == 0)
  {
    v73 = a1[3];
    v74 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v73);
    sub_1CF4FB2BC(0x65676E616863202BLL, 0xEA00000000003A73, v73, v74);
    v75 = a1[3];
    v76 = a1[4];
    v77 = __swift_project_boxed_opaque_existential_1(a1, v75);
    MEMORY[0x1EEE9AC00](v77);
    v84 = v45;
    v85 = v46;
    v86 = v3;
    result = sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF5DF5A8, v83, v75, v72 + 8, v76);
  }

  if (*(*(v3 + 24) + 16))
  {
    v78 = a1[3];
    v79 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v78);
    sub_1CF4FB2BC(0x697469736F70202BLL, 0xEC0000003A736E6FLL, v78, v79);
    v80 = a1[3];
    v81 = a1[4];
    v82 = __swift_project_boxed_opaque_existential_1(a1, v80);
    MEMORY[0x1EEE9AC00](v82);
    v84 = v45;
    v85 = v46;
    v86 = v3;
    return sub_1CF4FB38C(8224, 0xE200000000000000, sub_1CF5DF5C8, v83, v80, v72 + 8, v81);
  }

  return result;
}

uint64_t sub_1CF5A0E94()
{
  v1 = *(*v0 + 632);
  v3[0] = *(*v0 + 616);
  v3[1] = v1;
  type metadata accessor for FSOrFPJob(255, v3);
  sub_1CF9E78B8();
  sub_1CF052DA4(v0, sub_1CF5DFB34);
  return *&v3[0];
}

id sub_1CF5A0F38()
{
  v1 = objc_sync_enter(v0);
  if (v1)
  {
    MEMORY[0x1EEE9AC00](v1);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v2 = *&v0[qword_1EDEADB40];
  v3 = objc_sync_exit(v0);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v0;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v2;
}

double sub_1CF5A1030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v95 = a1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v69 - v6;
  v7 = v4[79];
  v8 = v4[77];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v4[80];
  v11 = v4[78];
  v12 = swift_getAssociatedTypeWitness();
  v94 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v96 = AssociatedTypeWitness;
  v97 = v12;
  v98 = AssociatedConformanceWitness;
  v99 = v14;
  v15 = type metadata accessor for ReconciliationID(0, &v96);
  v87 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = v16;
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v69 - v18;
  v93 = v19;
  v20 = sub_1CF9E75D8();
  v91 = *(v20 - 8);
  v92 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v85 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v69 - v23;
  v80 = AssociatedTypeWitness;
  v96 = AssociatedTypeWitness;
  v97 = v12;
  v84 = v12;
  v98 = AssociatedConformanceWitness;
  v99 = v14;
  v24 = type metadata accessor for ThrottlingKey(255, &v96);
  v25 = sub_1CF9E75D8();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v69 - v27;
  MEMORY[0x1EEE9AC00](v29);
  *&result = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v36 = *(v3 + qword_1EDEBBC98);
  if (v36)
  {
    v78 = v34;
    v79 = v33;
    v89 = &v69 - v31;
    v37 = v32;

    v38 = v94;
    sub_1CF04FF38(v95, v28);
    if ((*(v37 + 48))(v28, 1, v24) == 1)
    {

      (*(v26 + 8))(v28, v25);
      return result;
    }

    v75 = v36;
    v76 = v37;
    v39 = *(v37 + 32);
    v39(v89, v28, v24);
    if (v95 < 0)
    {
      v96 = v8;
      v97 = v11;
      v98 = v38;
      v99 = v10;
      type metadata accessor for Propagation.PropagationJob(0, &v96);
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v72 = v39;
        v77 = v24;
        v73 = v11;
        v74 = v10;
        v41 = v8;
        v44 = 1;
LABEL_12:
        v71 = v44;
        v43 = v80;
LABEL_13:
        v45 = v90;
        (*(*(v43 - 1) + 16))(v90, v40 + *(*v40 + 576));
        v46 = v93;
        swift_storeEnumTagMultiPayload();
        v47 = v87;
        (*(v87 + 56))(v45, 0, 1, v46);
        v49 = v91;
        v48 = v92;
        v50 = v85;
        (*(v91 + 16))(v85, v45, v92);
        if ((*(v47 + 48))(v50, 1, v46) == 1)
        {

          v51 = *(v49 + 8);
          v51(v45, v48);
          (*(v76 + 8))(v89, v77);
          v51(v50, v48);
        }

        else
        {
          v84 = *(v47 + 32);
          v52 = v86;
          v84(v86, v50, v46);
          v53 = sub_1CF9E57E8();
          v85 = v53;
          type metadata accessor for FPCK(0);
          v70 = v41;
          v54 = sub_1CF946EFC();
          sub_1CF6C4380(v53, v71, v54, 0, 0);
          v95 = v55;
          v56 = sub_1CF9E6F08();
          (*(*(v56 - 8) + 56))(v88, 1, 1, v56);
          v57 = v82;
          (*(v47 + 16))(v82, v52, v46);
          v58 = v76;
          v59 = v79;
          (*(v76 + 16))(v79, v89, v77);
          v60 = (*(v47 + 80) + 80) & ~*(v47 + 80);
          v61 = (v81 + *(v58 + 80) + v60) & ~*(v58 + 80);
          v62 = swift_allocObject();
          *(v62 + 2) = 0;
          *(v62 + 3) = 0;
          v63 = v73;
          *(v62 + 4) = v70;
          *(v62 + 5) = v63;
          v64 = v74;
          *(v62 + 6) = v94;
          *(v62 + 7) = v64;
          v65 = v95;
          *(v62 + 8) = v75;
          *(v62 + 9) = v65;
          v66 = v57;
          v67 = v93;
          v84(&v62[v60], v66, v93);
          v68 = v77;
          v72(&v62[v61], v59, v77);

          sub_1CF81241C(0, 0, v88, &unk_1CFA0CD48, v62);

          (*(v47 + 8))(v86, v67);
          (*(v91 + 8))(v90, v92);
          (*(v58 + 8))(v89, v68);
        }

        return result;
      }

      v96 = v11;
      v97 = v8;
      v98 = v10;
      v99 = v38;
      type metadata accessor for ItemJob(0, &v96);
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v72 = v39;
        v77 = v24;
        v73 = v11;
        v74 = v10;
        v41 = v8;
        v42 = 3;
        goto LABEL_7;
      }
    }

    else
    {
      v96 = v11;
      v97 = v8;
      v98 = v10;
      v99 = v38;
      type metadata accessor for Propagation.PropagationJob(0, &v96);
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v72 = v39;
        v77 = v24;
        v73 = v11;
        v74 = v10;
        v41 = v8;
        v42 = 2;
LABEL_7:
        v71 = v42;
        v43 = v84;
        goto LABEL_13;
      }

      v96 = v8;
      v97 = v11;
      v98 = v38;
      v99 = v10;
      type metadata accessor for ItemJob(0, &v96);
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v72 = v39;
        v77 = v24;
        v73 = v11;
        v74 = v10;
        v41 = v8;
        v44 = 4;
        goto LABEL_12;
      }
    }

    (*(v76 + 8))(v89, v24);
  }

  return result;
}

double sub_1CF5A1A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  if ((sub_1CF04590C() & 1) == 0)
  {
    sub_1CF5A5DDC(1);
    v10 = sub_1CF5A0F38();
    [v10 addWatcher_];

    if ((v4[19] & 1) == 0 && (fp_task_tracker_is_cancelled(*(v4[21] + 16)) & 1) == 0 && (v4[19] & 1) == 0 && (*(v4 + 81) & 0x20) != 0)
    {
      v11 = *(v8 + 632);
      v13[0] = *(v8 + 616);
      v13[1] = v11;
      type metadata accessor for DiskImport.Monitor(0, v13);

      *(v4 + qword_1EDEBBCB8) = sub_1CF964240(v12, 600, 600, 300);

      sub_1CF972814(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1CF5A1B74()
{
  v1 = v0;
  result = sub_1CF04590C();
  if (result)
  {
    v3 = qword_1EDEBBCB8;
    if (*(v0 + qword_1EDEBBCB8))
    {

      sub_1CF973BC8(1);
    }

    *(v0 + v3) = 0;

    v4 = sub_1CF5A0F38();
    [v4 removeWatcher_];

    return sub_1CF5A5DDC(0);
  }

  return result;
}

uint64_t sub_1CF5A1C7C(uint64_t a1)
{
  v2 = a1;
  v3 = *(*v1 + 616);
  v4 = *(*v1 + 624);
  v5 = *(*v1 + 632);
  v6 = *(*v1 + 640);
  sub_1CF0451E0(a1, v18);
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_1CF9E7F98();
    v8 = v7;
    v9 = __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1EEE9AC00](v9);
    v18[0] = v3;
    v18[1] = v4;
    v18[2] = v5;
    v19 = v6;
    type metadata accessor for FSOrFPJob(0, v18);
    sub_1CF052DA4(v1, sub_1CF5DFB14);
    v8, v10, v11, v12, v13, v14, v15, v16;
    return v18[0];
  }

  else
  {
    sub_1CEFCCC44(v18, &unk_1EC4C1BE0, &unk_1CF9FD400);
  }

  return v2;
}

void sub_1CF5A1E10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v115 = a8;
  v116 = a6;
  v120 = a2;
  v121 = a7;
  v112 = a5;
  v114 = a4;
  v11 = a3;
  v110 = *v10;
  v101 = sub_1CF9E63D8();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v99 - v17;
  v18 = sub_1CF9E6068();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v99 - v25;
  v27 = type metadata accessor for Signpost(0);
  v119 = *(v27 - 8);
  v28 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v106 = &v99 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v122 = v10;
  v123 = &v99 - v32;
  v118 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v109 = a10;
  v107 = a9;
  v33 = qword_1EDEBBE40;
  (*(v19 + 56))(v26, 1, 1, v18);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v113 = v11;
  v34 = sub_1CF9E7988();
  v36 = v35;
  MEMORY[0x1D3868CC0](v34);
  v36, v37, v38, v39, v40, v41, v42, v43;
  v102 = *(&aBlock + 1);
  v103 = aBlock;
  v104 = v26;
  sub_1CEFCCBDC(v26, v23, &unk_1EC4BED20, &unk_1CFA00700);
  v44 = *(v19 + 48);
  v45 = v44(v23, 1, v18);
  v111 = a1;
  if (v45 == 1)
  {
    v46 = v33;
    v47 = v105;
    sub_1CF9E6048();
    if (v44(v23, 1, v18) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v47 = v105;
    (*(v19 + 32))(v105, v23, v18);
  }

  v48 = v123;
  (*(v19 + 16))(v123, v47, v18);
  *(v48 + *(v27 + 20)) = v33;
  v49 = v48 + *(v27 + 24);
  *v49 = "DB queue wait";
  *(v49 + 8) = 13;
  *(v49 + 16) = 2;
  v50 = v33;
  v51 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1CEFD51C4();
  v53 = v102;
  *(v52 + 32) = v103;
  *(v52 + 40) = v53;
  sub_1CF9E6028(v51, &dword_1CEFC7000, v50, "DB queue wait", 13, 2, v48, "%s", 2);
  v52, v54, v55, v56, v57, v58, v59, v60;
  (*(v19 + 8))(v47, v18);
  sub_1CEFCCC44(v104, &unk_1EC4BED20, &unk_1CFA00700);
  v103 = v122[21];
  v105 = v122[8];
  v104 = sub_1CF9E6448();
  v102 = *(v104 - 1);
  (*(v102 + 56))(v124, 1, 1, v104);
  v61 = v106;
  sub_1CF043498(v48, v106, type metadata accessor for Signpost);
  v62 = *(v119 + 80);
  v63 = (v62 + 16) & ~v62;
  v64 = swift_allocObject();
  v119 = v64;
  sub_1CF042EE8(v61, v64 + v63);
  v65 = (v64 + ((v28 + 7 + v63) & 0xFFFFFFFFFFFFFFF8));
  v66 = v115;
  *v65 = v121;
  v65[1] = v66;
  v67 = v108;
  sub_1CF043498(v48, v108, type metadata accessor for Signpost);
  v68 = (v62 + 48) & ~v62;
  v69 = (v28 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 25) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v110;
  *(v73 + 16) = *(v110 + 616);
  *(v73 + 24) = *(v74 + 624);
  *(v73 + 40) = *(v74 + 640);
  sub_1CF042EE8(v67, v73 + v68);
  v75 = (v73 + v69);
  v76 = v111;
  v77 = v116;
  *v75 = v112;
  v75[1] = v77;
  *(v73 + v70) = v122;
  v78 = v73 + v71;
  v79 = v120;
  *v78 = v76;
  *(v78 + 8) = v79;
  LOBYTE(v79) = v114;
  *(v78 + 16) = v113;
  *(v78 + 17) = v79 & 1;
  v80 = (v73 + v72);
  *v80 = v121;
  v80[1] = v66;
  v81 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
  v82 = v109;
  *v81 = v107;
  v81[1] = v82;
  v83 = swift_allocObject();
  v84 = v119;
  v83[2] = sub_1CF55301C;
  v83[3] = v84;
  v85 = v103;
  v83[4] = v103;
  swift_retain_n();
  v86 = v105;
  v87 = v102;

  v88 = v104;

  v89 = fpfs_current_log();
  v122 = *(v85 + 16);
  v90 = v117;
  sub_1CEFCCBDC(v124, v117, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v87 + 48))(v90, 1, v88) == 1)
  {
    sub_1CEFCCC44(v90, &unk_1EC4BE370, qword_1CFA01B30);
    v91 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v92 = v99;
    sub_1CF9E6438();
    (*(v87 + 8))(v90, v88);
    v91 = sub_1CF9E63C8();
    (*(v100 + 8))(v92, v101);
  }

  v93 = swift_allocObject();
  v93[2] = v89;
  v93[3] = sub_1CF5DF8F0;
  v93[4] = v73;
  v128 = sub_1CEFCA438;
  v129 = v93;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v126 = sub_1CEFCA444;
  v127 = &block_descriptor_279;
  v94 = _Block_copy(&aBlock);
  v95 = v89;

  v128 = sub_1CF2AF9E8;
  v129 = v83;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v126 = sub_1CEFCA444;
  v127 = &block_descriptor_282;
  v96 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v122, v86, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v91, v94, v96);
  _Block_release(v96);
  _Block_release(v94);

  sub_1CEFCCC44(v124, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CF043504(v123, type metadata accessor for Signpost);
  v97 = v118;
  v98 = fpfs_adopt_log();
}

void sub_1CF5A296C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1CF9E6118();
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 632);
  v55[0] = *(v5 + 616);
  v55[1] = v8;
  v9 = type metadata accessor for TestingOperation(0, v55);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  sub_1CF94043C(0, v9, &v47 - v14);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1B90, &unk_1CFA168F0);
  swift_getWitnessTable();
  sub_1CF9E6708();
  sub_1CF9E6658();
  v16 = *(v10 + 8);
  v16(v15, v9);
  swift_endAccess();
  v51 = v54;
  if (v54)
  {
    v50 = v6;
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v18 = *(v10 + 16);
    v18(v12, a1, v9);
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E7298();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v49 = v20;
      v22 = v21;
      v48 = swift_slowAlloc();
      *&v55[0] = v48;
      *v22 = 136315138;
      v18(v15, v12, v9);
      v16(v12, v9);
      v23 = v19;
      v24 = sub_1CF9462C8(v9);
      v26 = v25;
      v16(v15, v9);
      v27 = sub_1CEFD0DF0(v24, v26, v55);
      v26, v28, v29, v30, v31, v32, v33, v34;
      *(v22 + 4) = v27;
      _os_log_impl(&dword_1CEFC7000, v23, v49, "unblocking waiters on %s", v22, 0xCu);
      v35 = v48;
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    else
    {
      v16(v12, v9);
    }

    (*(v52 + 8))(v53, v50);
    v43 = v51;
    v44 = *v51->tree;
    if (v44)
    {
      anon_8 = v51[1]._anon_8;
      do
      {
        v46 = *(anon_8 - 1);
        *&v55[0] = a2;

        v46(v55);

        anon_8 += 16;
        --v44;
      }

      while (v44);
    }

    v43, v36, v37, v38, v39, v40, v41, v42;
  }
}

void sub_1CF5A2DA4(char a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }

LABEL_23:
    if (a3)
    {
      v31 = (v5 + qword_1EDEBBCD0);
      v32 = *(v5 + qword_1EDEBBCD0);
      v33 = v32 + 1;
      if (!__OFADD__(v32, 1))
      {
        *v31 = v33;
LABEL_30:
        v35 = v31[1];
        v36 = v35 + a2;
        if (!__OFADD__(v35, a2))
        {
          v31[1] = v36;
          sub_1CF5A7760(v33, v36, a1 & 1);
          if (*v31 < 1 || v31[1] <= 0)
          {
            *v31 = 0;
            v31[1] = 0;
          }

          return;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v31 = (v5 + qword_1EDEBBCD0);
      v34 = *(v5 + qword_1EDEBBCD0);
      v33 = v34 - 1;
      if (!__OFSUB__(v34, 1))
      {
        *v31 = v33;
        v17 = __OFSUB__(0, a2);
        a2 = -a2;
        if (v17)
        {
LABEL_41:
          __break(1u);
LABEL_42:
          sub_1CF9E7B68();
          __break(1u);
          return;
        }

        goto LABEL_30;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  a2 = 1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
LABEL_4:
    v15 = (v5 + qword_1EDEBBCA8);
    v16 = *(v5 + qword_1EDEBBCA8);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *v15 = v18;
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_8:
  v15 = (v5 + qword_1EDEBBCA8);
  v19 = *(v5 + qword_1EDEBBCA8);
  v17 = __OFSUB__(v19, 1);
  v18 = v19 - 1;
  if (v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *v15 = v18;
  v17 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v17)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_10:
  v20 = v15[1];
  v21 = v20 + a2;
  if (__OFADD__(v20, a2))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v15[1] = v21;
  v22 = 1;
  if ((a3 & 1) == 0)
  {
    v22 = -1;
  }

  if ((a4 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = qword_1EDEBBC58;
  v24 = *(v5 + qword_1EDEBBC58);
  v17 = __OFADD__(v24, v22);
  v25 = v24 + v22;
  if (v17)
  {
    goto LABEL_39;
  }

  v26 = v12;
  *(v5 + qword_1EDEBBC58) = v25;
  sub_1CF5A7760(v18, v21, a1 & 1);
  if (*v15 < 1 || v15[1] <= 0)
  {
    *v15 = 0;
    v15[1] = 0;
LABEL_27:
    *(v5 + v23) = 0;
    return;
  }

  if ((*(v5 + v23) & 0x8000000000000000) != 0)
  {
    if (*(v5 + 89) != 1)
    {
      v27 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v28 = sub_1CF9E6108();
      v29 = sub_1CF9E72A8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1CEFC7000, v28, v29, "🤯 [GlobalProgress] pausableDownloadsCounter counter is negative", v30, 2u);
        MEMORY[0x1D386CDC0](v30, -1, -1);
      }

      (*(v11 + 8))(v14, v26);
      goto LABEL_27;
    }

    goto LABEL_42;
  }
}

uint64_t sub_1CF5A30E0(_BYTE *a1, int a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5)
{
  v76 = a4;
  v77 = a5;
  v75 = a3;
  v65 = a2;
  v8 = *v5;
  v9 = *v5;
  v10 = sub_1CF9E6118();
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v69 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v9 + 624);
  v13 = (v9 + 640);
  v14 = *(v8 + 616);
  v15 = *(v8 + 632);
  v17 = type metadata accessor for SnapshotItem(0, v14, v15, v16);
  v70 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v66 = v64 - v18;
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  v71 = v19;
  v72 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v80 = v64 - v24;
  v64[1] = v14;
  *&v25 = v14;
  *(&v25 + 1) = *v12;
  *&v26 = v15;
  *(&v26 + 1) = *v13;
  v73 = v26;
  v74 = v25;
  v79 = v26;
  v78 = v25;
  type metadata accessor for Propagation.CreateItem(0, &v78);
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(result + 138))
    {
      return result;
    }

LABEL_6:
    *&v74 = v5;
    v28 = *(*a1 + 576);
    v29 = v80;
    result = (*(*v5[4] + 240))(&a1[v28], 1, v75, v76, v77);
    if (v6)
    {
      return result;
    }

    v77 = v28;
    v30 = v72;
    v31 = v29;
    v32 = v71;
    (*(v72 + 16))(v22, v31, v71);
    v33 = v70;
    if ((*(v70 + 48))(v22, 1, v17) == 1)
    {
      v17 = *(v30 + 8);
      (v17)(v22, v32);
      v34 = fpfs_current_or_default_log();
      v35 = v69;
      sub_1CF9E6128();

      v36 = v30 + 8;
      v37 = sub_1CF9E6108();
      v38 = sub_1CF9E72A8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v72 = v36;
        v40 = v39;
        v41 = swift_slowAlloc();
        v76 = v17;
        v42 = v41;
        *&v78 = v41;
        *v40 = 136446210;
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        v43 = sub_1CF9E7F98();
        v45 = v44;

        v46 = sub_1CEFD0DF0(v43, v45, &v78);
        v45, v47, v48, v49, v50, v51, v52, v53;
        *(v40 + 4) = v46;
        _os_log_impl(&dword_1CEFC7000, v37, v38, "[GlobalProgress] accountUploadJob, snapshot missing for itemID %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1D386CDC0](v42, -1, -1);
        MEMORY[0x1D386CDC0](v40, -1, -1);

        (*(v67 + 8))(v69, v68);
        return v76(v80, v71);
      }

      goto LABEL_18;
    }

    v54 = v66;
    (*(v33 + 32))(v66, v22, v17);
    v37 = &v54[*(v17 + 48)];
    isa_low = LOBYTE(v37->isa);
    result = type metadata accessor for ItemMetadata(0);
    if (isa_low == 1)
    {
      goto LABEL_22;
    }

    v56 = *(&v37->isa + *(result + 104));
    v35 = v74;
    v57 = v65;
    if ((v65 & 1) != 0 || a1[112] == 3)
    {
LABEL_21:
      sub_1CF5A2DA4(0, v56, v57 & 1, 1);
LABEL_22:
      (*(v33 + 8))(v54, v17);
      return (*(v72 + 8))(v80, v32);
    }

    v58 = (v74 + qword_1EDEBBCA0);
    v59 = *(v74 + qword_1EDEBBCA0);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      __break(1u);
    }

    else
    {
      *v58 = v61;
      v62 = v58[1];
      if (v56)
      {
        v60 = __OFADD__(v62, v56);
        v63 = v62 + v56;
        if (v60)
        {
          __break(1u);
LABEL_18:

          (*(v67 + 8))(v35, v68);
          return (v17)(v80, v32);
        }

        goto LABEL_20;
      }

      v60 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (!v60)
      {
LABEL_20:
        v58[1] = v63;
        goto LABEL_21;
      }
    }

    __break(1u);
    return result;
  }

  v78 = v74;
  v79 = v73;
  type metadata accessor for Propagation.UpdateItem(0, &v78);
  result = swift_dynamicCastClass();
  if (result && (*(result + *(*result + 648)) & 8) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1CF5A3744(void (*a1)(char *, uint64_t), int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v264 = a3;
  v265 = a4;
  v266 = a5;
  v226 = a2;
  v268 = a1;
  v6 = *v5;
  v7 = *(*v5 + 616);
  v8 = *(*v5 + 632);
  v9 = type metadata accessor for SnapshotItem(0, v7, v8, a4);
  v232 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v223 = &v212 - v10;
  v231 = v11;
  v233 = sub_1CF9E75D8();
  v235 = *(v233 - 8);
  MEMORY[0x1EEE9AC00](v233);
  v229 = &v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v238 = &v212 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v244 = sub_1CF9E75D8();
  v243 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v242 = &v212 - v16;
  v251 = AssociatedTypeWitness;
  v246 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v218 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v222 = &v212 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v237 = &v212 - v22;
  v23 = sub_1CF9E6118();
  v24 = *(v23 - 8);
  v255 = v23;
  v256 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v261 = &v212 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v240 = &v212 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v230 = &v212 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v234 = &v212 - v31;
  v225 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v225);
  v224 = &v212 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v6 + 624);
  v34 = *(v6 + 640);
  v36 = type metadata accessor for SnapshotItem(0, v33, v34, v35);
  v259 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v228 = &v212 - v37;
  v260 = v38;
  v236 = sub_1CF9E75D8();
  v239 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v241 = &v212 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v245 = &v212 - v41;
  v42 = swift_getAssociatedTypeWitness();
  v249 = sub_1CF9E75D8();
  v258 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v248 = &v212 - v43;
  v250 = v42;
  v254 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v219 = &v212 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v227 = &v212 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v247 = &v212 - v49;
  v253 = v7;
  *&v50 = v7;
  v220 = v33;
  *(&v50 + 1) = v33;
  v252 = v8;
  *&v51 = v8;
  v221 = v34;
  *(&v51 + 1) = v34;
  v267[1] = v51;
  v267[0] = v50;
  v52 = type metadata accessor for ItemReconciliation(255, v267);
  v53 = sub_1CF9E75D8();
  v257 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v212 - v54;
  v262 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v212 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v212 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v212 - v63;
  v65 = v5;
  v66 = *(*v268 + 576);
  v67 = v263;
  result = sub_1CF68DDB0(v268 + v66, v264, v265, v266, v55);
  if (v67)
  {
    return result;
  }

  v69 = v257;
  v216 = v53;
  v214 = v66;
  v70 = v258;
  v213 = v61;
  v212 = v58;
  v72 = v259;
  v71 = v260;
  v73 = v261;
  v215 = v65;
  v217 = v64;
  v263 = 0;
  if ((*(v262 + 48))(v55, 1, v52) == 1)
  {
    (*(v69 + 8))(v55, v216);
    v74 = fpfs_current_or_default_log();
    v75 = v73;
    sub_1CF9E6128();

    v76 = sub_1CF9E6108();
    v77 = sub_1CF9E72A8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v267[0] = v79;
      *v78 = 136315138;
      swift_getAssociatedConformanceWitness();
      v80 = sub_1CF9E7F98();
      v82 = v81;

      v83 = sub_1CEFD0DF0(v80, v82, v267);
      v82, v84, v85, v86, v87, v88, v89, v90;
      *(v78 + 4) = v83;
      _os_log_impl(&dword_1CEFC7000, v76, v77, "item missing from RT, cannot account for download job: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1D386CDC0](v79, -1, -1);
      MEMORY[0x1D386CDC0](v78, -1, -1);
    }

    else
    {
    }

    return (*(v256 + 8))(v75, v255);
  }

  v91 = v52;
  v92 = v217;
  (*(v262 + 32))(v217, v55, v91);
  v93 = v248;
  v94 = v249;
  (*(v70 + 16))(v248, &v92[*(v91 + 13)], v249);
  v95 = v254;
  v96 = v250;
  if ((*(v254 + 48))(v93, 1, v250) == 1)
  {
    (*(v70 + 8))(v93, v94);
    v97 = v243;
    v98 = v242;
    v99 = v244;
    (*(v243 + 16))(v242, v92, v244);
    v100 = v246;
    v101 = v251;
    v102 = (*(v246 + 48))(v98, 1, v251);
    v103 = v266;
    if (v102 == 1)
    {
      (*(v97 + 8))(v98, v99);
      v104 = fpfs_current_or_default_log();
      v105 = v240;
      sub_1CF9E6128();
      v106 = v262;
      v107 = *(v262 + 16);
      v108 = v213;
      v107(v213, v92, v91);
      v109 = v91;
      v110 = sub_1CF9E6108();
      v111 = sub_1CF9E72A8();
      v112 = os_log_type_enabled(v110, v111);
      v113 = v256;
      if (v112)
      {
        v114 = v106;
        v115 = swift_slowAlloc();
        v268 = swift_slowAlloc();
        *&v267[0] = v268;
        *v115 = 136315138;
        LODWORD(v266) = v111;
        v116 = v212;
        v107(v212, v108, v109);
        v117 = *(v114 + 8);
        v117(v108, v109);
        v118 = sub_1CF082CB0(v109);
        v120 = v119;
        v117(v116, v109);
        v121 = sub_1CEFD0DF0(v118, v120, v267);
        v120, v122, v123, v124, v125, v126, v127, v128;
        *(v115 + 4) = v121;
        _os_log_impl(&dword_1CEFC7000, v110, v266, "RT entry missing both sides, cannot account download job: %s", v115, 0xCu);
        v129 = v268;
        __swift_destroy_boxed_opaque_existential_1(v268);
        MEMORY[0x1D386CDC0](v129, -1, -1);
        MEMORY[0x1D386CDC0](v115, -1, -1);

        (*(v113 + 8))(v240, v255);
        return (v117)(v217, v109);
      }

      else
      {
        v167 = *(v106 + 8);
        v167(v108, v109);

        (*(v113 + 8))(v105, v255);
        return (v167)(v217, v109);
      }
    }

    v261 = v91;
    v135 = v237;
    (*(v100 + 32))(v237, v98, v101);
    v136 = v238;
    v137 = v263;
    (*(*v215[4] + 240))(v135, 1, v264, v265, v103);
    v263 = v137;
    v134 = v262;
    if (v137)
    {
      (*(v100 + 8))(v135, v101);
      return (*(v134 + 8))(v92, v261);
    }

    v168 = v235;
    v169 = v229;
    v170 = v233;
    (*(v235 + 16))(v229, v136, v233);
    v171 = v231;
    v172 = (*(v232 + 48))(v169, 1, v231);
    v175 = *(v168 + 8);
    v174 = v168 + 8;
    v173 = v175;
    if (v172 == 1)
    {
      v268 = v173;
      (v173)(v169, v170);
      v176 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v177 = v135;
      v178 = v246;
      v179 = v222;
      v266 = *(v246 + 16);
      (v266)(v222, v177, v101);
      v235 = v174;
      v180 = sub_1CF9E6108();
      v181 = sub_1CF9E72A8();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        *&v267[0] = v183;
        *v182 = 136315138;
        LODWORD(v265) = v181;
        v184 = v218;
        (v266)(v218, v179, v101);
        v185 = *(v178 + 8);
        v185(v179, v101);
        swift_getAssociatedConformanceWitness();
        v186 = sub_1CF9E7F98();
        v188 = v187;
        v185(v184, v101);
        v189 = sub_1CEFD0DF0(v186, v188, v267);
        v188, v190, v191, v192, v193, v194, v195, v196;
        *(v182 + 4) = v189;
        _os_log_impl(&dword_1CEFC7000, v180, v265, "item missing from FS snapshot, cannot account for download job: %s", v182, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v183);
        MEMORY[0x1D386CDC0](v183, -1, -1);
        MEMORY[0x1D386CDC0](v182, -1, -1);

        (*(v256 + 8))(v230, v255);
        (v268)(v238, v233);
        v185(v237, v101);
        return (*(v262 + 8))(v217, v261);
      }

      v205 = *(v178 + 8);
      v205(v179, v101);

      (*(v256 + 8))(v230, v255);
      (v268)(v238, v233);
      v205(v237, v101);
      return (*(v134 + 8))(v92, v261);
    }

    (v173)(v136, v170);
    (*(v246 + 8))(v135, v101);
    v200 = v232;
    v201 = v223;
    (*(v232 + 32))(v223, v169, v171);
    v202 = *(v171 + 48);
    v203 = v200;
    if (v201[v202] == 1)
    {
      (*(v200 + 8))(v201, v171);
      return (*(v134 + 8))(v92, v261);
    }

    v204 = v224;
    sub_1CF043498(&v201[v202], v224, type metadata accessor for ItemMetadata);
    (*(v203 + 8))(v201, v171);
LABEL_33:
    v206 = *(v204 + *(v225 + 104));
    result = sub_1CF043504(v204, type metadata accessor for ItemMetadata);
    v207 = v268;
    v208 = v226;
    if ((v226 & 1) != 0 || *(v268 + 112) == 3)
    {
      goto LABEL_42;
    }

    v209 = (v215 + qword_1EDEBBC80);
    if (__OFADD__(*(v215 + qword_1EDEBBC80), 1))
    {
      __break(1u);
    }

    else
    {
      ++*v209;
      v210 = v209[1];
      if (v206)
      {
        v211 = __OFADD__(v210, v206);
        v210 += v206;
        if (!v211)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      v211 = __OFADD__(v210++, 1);
      if (!v211)
      {
LABEL_41:
        v209[1] = v210;
LABEL_42:
        sub_1CF5A2DA4(1, v206, v208 & 1, (v207[17] & 0x4000000000) != 0);
        return (*(v134 + 8))(v92, v261);
      }
    }

    __break(1u);
    return result;
  }

  v130 = v241;
  v261 = v91;
  v131 = v247;
  (*(v95 + 32))(v247, v93, v96);
  v132 = v245;
  v133 = v263;
  (*(*v215[5] + 240))(v131, 1, v264, v265, v266);
  v263 = v133;
  if (v133)
  {
    (*(v95 + 8))(v131, v96);
    v134 = v262;
    return (*(v134 + 8))(v92, v261);
  }

  v138 = v239;
  v139 = v236;
  (*(v239 + 16))(v130, v132, v236);
  v140 = (*(v72 + 48))(v130, 1, v71);
  v143 = *(v138 + 8);
  v142 = v138 + 8;
  v141 = v143;
  if (v140 != 1)
  {
    v141(v132, v139);
    (*(v254 + 8))(v247, v96);
    v197 = v228;
    (*(v72 + 32))(v228, v130, v71);
    v198 = *(v71 + 48);
    if (v197[v198] == 1)
    {
      (*(v72 + 8))(v197, v71);
      return (*(v262 + 8))(v92, v261);
    }

    v204 = v224;
    sub_1CF043498(&v197[v198], v224, type metadata accessor for ItemMetadata);
    (*(v72 + 8))(v197, v71);
    v134 = v262;
    goto LABEL_33;
  }

  v268 = v141;
  v141(v130, v139);
  v144 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v145 = v254;
  v146 = *(v254 + 16);
  v147 = v227;
  v146(v227, v247, v96);
  v239 = v142;
  v148 = sub_1CF9E6108();
  v149 = v96;
  v150 = sub_1CF9E72A8();
  if (os_log_type_enabled(v148, v150))
  {
    v151 = swift_slowAlloc();
    v266 = swift_slowAlloc();
    *&v267[0] = v266;
    *v151 = 136315138;
    v152 = v147;
    v153 = v219;
    v146(v219, v152, v149);
    v154 = *(v145 + 8);
    v154(v152, v149);
    swift_getAssociatedConformanceWitness();
    v155 = sub_1CF9E7F98();
    v157 = v156;
    v154(v153, v149);
    v158 = sub_1CEFD0DF0(v155, v157, v267);
    v157, v159, v160, v161, v162, v163, v164, v165;
    *(v151 + 4) = v158;
    _os_log_impl(&dword_1CEFC7000, v148, v150, "item missing from FP snapshot, cannot account for download job: %s", v151, 0xCu);
    v166 = v266;
    __swift_destroy_boxed_opaque_existential_1(v266);
    MEMORY[0x1D386CDC0](v166, -1, -1);
    MEMORY[0x1D386CDC0](v151, -1, -1);

    (*(v256 + 8))(v234, v255);
    (v268)(v245, v236);
    v154(v247, v149);
  }

  else
  {
    v199 = *(v145 + 8);
    v199(v147, v149);

    (*(v256 + 8))(v234, v255);
    (v268)(v245, v139);
    v199(v247, v149);
  }

  return (*(v262 + 8))(v217, v261);
}

uint64_t sub_1CF5A4F64(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[8];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = qword_1EC4EBD78;
    swift_beginAccess();
    v12 = *(v1 + v11);

    v29 = *(v2 + 616);
    v28 = *(v2 + 632);
    swift_getAssociatedTypeWitness();
    v30 = v28;
    *&v29 = type metadata accessor for UserRequest(255, &v29);
    *(&v29 + 1) = &type metadata for NSecTimestamp;
    *&v30 = sub_1CF9E6448();
    *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    sub_1CF9E6E58();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E6728();
    v12, v13, v14, v15, v16, v17, v18, v19;
    v27 = v29;
    if (v29)
    {
      v29, v20, v21, v22, v23, v24, v25, v26;
    }

    return v27 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF5A51D8(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[8];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1CF9E64D8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = qword_1EC4EBD70;
    swift_beginAccess();
    v12 = *(v1 + v11);
    v13 = v2[80];
    v14 = v2[78];
    swift_getAssociatedTypeWitness();

    v15 = v2[77];
    v16 = v2[79];
    v33 = v14;
    v34 = v15;
    v35 = v13;
    v36 = v16;
    v33 = type metadata accessor for UserRequest(255, &v33);
    v34 = &type metadata for NSecTimestamp;
    v35 = sub_1CF9E6448();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C0718, &qword_1CFA05B28);
    swift_getTupleTypeMetadata();
    sub_1CF9E6E58();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E6728();
    v12, v17, v18, v19, v20, v21, v22, v23;
    v31 = v33;
    if (v33)
    {
      v33, v24, v25, v26, v27, v28, v29, v30;
    }

    return v31 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1CF5A5468(void *result, void *a2, void **a3, uint64_t a4)
{
  if ((*(v4 + *result) & 1) == 0)
  {
    *(v4 + *result) = 1;
    if (*a2 != -1)
    {
      v6 = a3;
      swift_once();
      a3 = v6;
    }

    v5 = *a3;

    return [v5 addWatcher_];
  }

  return result;
}

id sub_1CF5A54E8()
{
  v1 = qword_1EDEBBC48;
  if (*(v0 + qword_1EDEBBC48) == 1)
  {
    if (qword_1EDEA5A98 != -1)
    {
      swift_once();
    }

    result = [qword_1EDEBB818 removeWatcher_];
    *(v0 + v1) = 0;
  }

  return result;
}

uint64_t sub_1CF5A5570(char a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v1[90] = a1 & 1;
  sub_1CF5B7558();
  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF5A5720(void *a1)
{
  v3 = fpfs_adopt_log();
  v4 = [a1 label];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;
  if (qword_1EDEADB60 != -1)
  {
    swift_once();
  }

  v8 = [qword_1EDEBBD10 label];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  if (v9 == v5 && v11 == v7)
  {
    v7, v12, v13, v14, v15, v16, v17, v18;

    v11, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_10;
  }

  v20 = sub_1CF9E8048();
  v11, v21, v22, v23, v24, v25, v26, v27;
  if (v20)
  {
    v7, v28, v29, v30, v31, v32, v33, v34;

LABEL_10:
    v42 = *(*v1 + 2616);

    v42(0, sub_1CF5DFD94, v1);
LABEL_17:

    goto LABEL_18;
  }

  v43 = sub_1CF5A0F38();
  v44 = [v43 label];

  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;

  if (v45 == v5 && v47 == v7)
  {
    v7, v48, v49, v50, v51, v52, v53, v54;

    v47, v55, v56, v57, v58, v59, v60, v61;
LABEL_16:

    sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD78, v1);
    goto LABEL_17;
  }

  v62 = sub_1CF9E8048();
  v47, v63, v64, v65, v66, v67, v68, v69;
  if (v62)
  {
    v7, v70, v71, v72, v73, v74, v75, v76;

    goto LABEL_16;
  }

  if (qword_1EDEACC50 != -1)
  {
    swift_once();
  }

  v77 = [qword_1EDEBBB28 label];
  v78 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v80 = v79;

  if (v78 == v5 && v80 == v7)
  {
    v7, v81, v82, v83, v84, v85, v86, v87;

    v80, v88, v89, v90, v91, v92, v93, v94;
LABEL_28:

    sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD5C, v1);
    goto LABEL_17;
  }

  v95 = sub_1CF9E8048();
  v80, v96, v97, v98, v99, v100, v101, v102;
  if (v95)
  {
    v7, v103, v104, v105, v106, v107, v108, v109;

    goto LABEL_28;
  }

  if (qword_1EDEAC220 != -1)
  {
    swift_once();
  }

  v110 = [qword_1EDEBBA80 label];
  v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v113 = v112;

  if (v111 == v5 && v113 == v7)
  {
    v7, v114, v115, v116, v117, v118, v119, v120;

    v113, v121, v122, v123, v124, v125, v126, v127;
LABEL_36:

    sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD40, v1);
    goto LABEL_17;
  }

  v128 = sub_1CF9E8048();
  v113, v129, v130, v131, v132, v133, v134, v135;
  if (v128)
  {
    v7, v136, v137, v138, v139, v140, v141, v142;

    goto LABEL_36;
  }

  if (qword_1EDEACD48 != -1)
  {
    swift_once();
  }

  v143 = [qword_1EDEBBBF8 label];
  v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v146 = v145;

  if (v144 == v5 && v146 == v7)
  {
    v7, v147, v148, v149, v150, v151, v152, v153;

    v146, v154, v155, v156, v157, v158, v159, v160;
  }

  else
  {
    v161 = sub_1CF9E8048();
    v146, v162, v163, v164, v165, v166, v167, v168;
    if ((v161 & 1) == 0)
    {
      if (qword_1EDEA5A98 != -1)
      {
        swift_once();
      }

      v176 = [qword_1EDEBB818 label];
      v177 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v179 = v178;

      if (v177 == v5 && v179 == v7)
      {

        v7, v180, v181, v182, v183, v184, v185, v186;
        v179, v187, v188, v189, v190, v191, v192, v193;
      }

      else
      {
        v194 = sub_1CF9E8048();
        v7, v195, v196, v197, v198, v199, v200, v201;
        v179, v202, v203, v204, v205, v206, v207, v208;
        if ((v194 & 1) == 0)
        {
          v209 = a1;
          sub_1CF515660();
        }
      }

      sub_1CF92DE44("sharedSchedulerCanRun(_:)", 25, 2, sub_1CF045408, 0, nullsub_1, 0, sub_1CF5DFD24, v1);
      goto LABEL_17;
    }

    v7, v169, v170, v171, v172, v173, v174, v175;
  }

  sub_1CF5A7698(0);
LABEL_18:
  v210 = fpfs_adopt_log();
}