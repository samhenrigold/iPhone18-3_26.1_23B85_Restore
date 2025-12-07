uint64_t sub_1B4980E70@<X0>(uint64_t *a1@<X8>)
{
  v86 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v2 = *(v1 - 8);
  v84 = v1;
  v85 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v98 = &v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v81 - v7;
  v8 = sub_1B4D1777C();
  v105 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4D175FC();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v13 = sub_1B4D1794C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B4D1AA70;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x1E6969A68], v13);
  v19(v18 + v15, *MEMORY[0x1E6969A78], v13);
  v20 = v105;
  sub_1B49B56B4(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v93 = type metadata accessor for FitnessContextDemoClient(0);
  v21 = *(v93 + 20);
  v22 = v103;
  sub_1B4D1788C();
  v23 = v102;

  v99 = v12;
  v24 = v22;
  sub_1B4D178FC();
  v25 = *(v20 + 48);
  if (v25(v23, 1, v8) == 1)
  {
    (*(v20 + 16))(v106, v22 + v21, v8);
    if (v25(v23, 1, v8) != 1)
    {
      sub_1B4975024(v102, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v20 + 32))(v106, v23, v8);
  }

  v102 = v8;
  v26 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v27 = sub_1B4D1796C();
  v28 = __swift_project_value_buffer(v27, qword_1EDC3CE48);
  v29 = sub_1B4D178CC();
  v83 = _HKCacheIndexFromDate();

  v30 = sub_1B4D1771C();
  v31 = sub_1B4D178CC();
  v82 = _HKCacheIndexFromDate();

  v94 = v21;
  v32 = sub_1B4D1771C();
  v91 = v28;
  v33 = sub_1B4D178CC();
  v90 = _HKCacheIndexFromDate();

  v34 = sub_1B4D1771C();
  v35 = sub_1B4D178CC();
  v89 = _HKCacheIndexFromDate();

  v36 = v93;
  v92 = *(v24 + *(v93 + 24));
  v88 = [v92 effectiveTypeIdentifier];
  LOBYTE(v113) = 1;
  v107[0] = 0;
  v93 = v24 + *(v36 + 28);
  v37 = [objc_opt_self() seconds];
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  sub_1B4D1741C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [ObjCClassFromMetadata baseUnit];
  v138[3] = type metadata accessor for WorkoutDurationStatisticsProperty(0);
  v138[4] = sub_1B498AF00(&qword_1EDC37F58, type metadata accessor for WorkoutDurationStatisticsProperty, &protocol conformance descriptor for WorkoutDurationStatisticsProperty);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v138);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v41 = v40[11];
  v42 = v96;
  sub_1B4D1745C();

  sub_1B4D1742C();
  *(boxed_opaque_existential_1 + v40[7]) = 1;
  v43 = v95;
  v44 = *(v95 + 16);
  v44(boxed_opaque_existential_1, boxed_opaque_existential_1 + v41, v42);
  v45 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  (*(v43 + 8))(v104, v42);
  v44((boxed_opaque_existential_1 + v40[9]), boxed_opaque_existential_1 + v41, v42);
  v44((boxed_opaque_existential_1 + v40[8]), boxed_opaque_existential_1 + v41, v42);
  v125[0] = v90;
  v125[1] = v89;
  v126 = 1804;
  v127 = *&v146[7];
  v128 = v147;
  v129 = 0;
  v130 = 1;
  *v131 = *v146;
  *&v131[3] = *&v146[3];
  v132 = v88;
  v133 = 1280;
  v135 = v145;
  v134 = v144[11];
  v136 = 0;
  v137 = 0;
  v46 = sub_1B4D1771C();
  v47 = sub_1B4D178CC();
  v104 = _HKCacheIndexFromDate();

  v48 = sub_1B4D1771C();
  v49 = sub_1B4D178CC();
  v50 = _HKCacheIndexFromDate();

  v51 = [v92 effectiveTypeIdentifier];
  v107[0] = 1;
  LOBYTE(v120) = 0;
  LOWORD(v148) = 1804;
  v52 = v106;
  *(&v148 + 1) = 0;
  LOBYTE(v149) = 1;
  *(&v149 + 1) = v51;
  LOWORD(v150) = 1280;
  *(&v150 + 1) = 0;
  v151 = 0;
  v53 = v97;
  v54 = v98;
  sub_1B4983C44(v106, v98);
  if (v53)
  {
    sub_1B498AD54(&v148);
    (*(v105 + 8))(v52, v102);
    (*(v100 + 8))(v99, v101);
    sub_1B498AE58(v125);
    return swift_arrayDestroy();
  }

  else
  {
    v103 = 0;
    v56 = sub_1B4D1844C();
    *(v56 + 16) = 3;
    v57 = v85;
    v58 = v56 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
    sub_1B4974FBC(v54, v58, &qword_1EB8A6818, &unk_1B4D1AB30);
    v59 = *(v57 + 72);
    sub_1B4974FBC(v54, v58 + v59, &qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B270(v54, v58 + 2 * v59, &qword_1EB8A6818, &unk_1B4D1AB30);
    *(&v114 + 1) = &type metadata for LongestDistanceProperty;
    *&v115 = sub_1B498ADA8();
    *&v113 = v56;
    v139[0] = v104;
    v139[1] = v50;
    v140 = v148;
    v141 = v149;
    v142 = v150;
    v143 = v151;
    sub_1B496F398(&v113, v144);
    v124 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 2, 0);
    v60 = v124;
    sub_1B498ADFC(v125, v107);
    v120 = v108;
    v121 = v109;
    v122 = v110;
    v123 = v111;
    sub_1B496F398(v112, &v117 + 8);
    v62 = v82;
    v61 = v83;
    *&v113 = v83;
    *(&v113 + 1) = v82;
    v114 = v120;
    v115 = v121;
    v116 = v122;
    *&v117 = v123;
    v64 = *(v60 + 16);
    v63 = *(v60 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1B4BCECFC((v63 > 1), v64 + 1, 1);
      v60 = v124;
    }

    *(v60 + 16) = v64 + 1;
    v65 = (v60 + 112 * v64);
    v66 = v113;
    v67 = v115;
    v65[3] = v114;
    v65[4] = v67;
    v65[2] = v66;
    v68 = v116;
    v69 = v117;
    v70 = v119;
    v65[7] = v118;
    v65[8] = v70;
    v65[5] = v68;
    v65[6] = v69;
    sub_1B498ADFC(v139, v107);
    v120 = v108;
    v121 = v109;
    v122 = v110;
    v123 = v111;
    sub_1B496F398(v112, &v117 + 8);
    *&v113 = v61;
    *(&v113 + 1) = v62;
    v114 = v120;
    v115 = v121;
    v116 = v122;
    *&v117 = v123;
    v124 = v60;
    v72 = *(v60 + 16);
    v71 = *(v60 + 24);
    v73 = v102;
    if (v72 >= v71 >> 1)
    {
      sub_1B4BCECFC((v71 > 1), v72 + 1, 1);
      v60 = v124;
    }

    *(v60 + 16) = v72 + 1;
    v74 = (v60 + 112 * v72);
    v75 = v113;
    v76 = v115;
    v74[3] = v114;
    v74[4] = v76;
    v74[2] = v75;
    v77 = v116;
    v78 = v117;
    v79 = v119;
    v74[7] = v118;
    v74[8] = v79;
    v74[5] = v77;
    v74[6] = v78;
    swift_arrayDestroy();
    (*(v105 + 8))(v106, v73);
    result = (*(v100 + 8))(v99, v101);
    v80 = v86;
    *v86 = v61;
    v80[1] = v62;
    v80[2] = v60;
  }

  return result;
}

uint64_t sub_1B4981A7C@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v53 - v3;
  v4 = sub_1B4D1794C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_1B4D1777C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x1E6969A10], v4, v13);
  v16 = type metadata accessor for FitnessContextDemoClient(0);
  v61 = *(v16 + 20);
  v62 = v16;
  v63 = v1;
  sub_1B4D1790C();
  (*(v5 + 8))(v7, v4);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B498AEAC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v59 = v12;
    v60 = v11;
    (*(v12 + 32))(v15, v10, v11);
    v18 = sub_1B4D1771C();
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v19 = sub_1B4D1796C();
    __swift_project_value_buffer(v19, qword_1EDC3CE48);
    v20 = sub_1B4D178CC();
    v58 = _HKCacheIndexFromDate();

    v21 = v63;
    v22 = sub_1B4D1771C();
    v23 = sub_1B4D178CC();
    v57 = _HKCacheIndexFromDate();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6848, &unk_1B4D1AB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    v25 = sub_1B4D1771C();
    v26 = sub_1B4D178CC();
    v56 = _HKCacheIndexFromDate();

    v27 = sub_1B4D1771C();
    v28 = sub_1B4D178CC();
    v61 = _HKCacheIndexFromDate();

    v55 = [*&v21[*(v62 + 24)] effectiveTypeIdentifier];
    LOBYTE(v74) = 1;
    v68[0] = 0;
    v29 = [objc_opt_self() meters];
    v62 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v63 = v15;
    sub_1B4D1741C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [ObjCClassFromMetadata baseUnit];
    *(inited + 128) = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
    *(inited + 136) = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v33 = v32[11];
    v34 = v65;
    sub_1B4D1745C();

    sub_1B4D1742C();
    *(boxed_opaque_existential_1 + v32[7]) = 1;
    v35 = v64;
    v36 = *(v64 + 16);
    v36(boxed_opaque_existential_1, boxed_opaque_existential_1 + v33, v34);
    v37 = [ObjCClassFromMetadata baseUnit];
    sub_1B4D1741C();
    (*(v35 + 8))(v67, v34);
    v36((boxed_opaque_existential_1 + v32[9]), boxed_opaque_existential_1 + v33, v34);
    v38 = boxed_opaque_existential_1 + v32[8];
    v39 = boxed_opaque_existential_1 + v33;
    v40 = v57;
    v36(v38, v39, v34);
    *(inited + 32) = v56;
    *(inited + 40) = v61;
    *(inited + 48) = 1804;
    *(inited + 50) = *&v82[7];
    *(inited + 54) = v83;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 65) = *v82;
    *(inited + 68) = *&v82[3];
    *(inited + 72) = v55;
    *(inited + 80) = 1280;
    v41 = v80;
    *(inited + 86) = v81;
    *(inited + 82) = v41;
    *(inited + 88) = 0;
    *(inited + 96) = 0;
    v79 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 1, 0);
    v42 = v79;
    sub_1B498ADFC(inited + 32, v68);

    v84 = v69;
    v85 = v70;
    v86 = v71;
    v87 = v72;
    v43 = v58;
    sub_1B496F398(&v73, v78 + 8);
    *&v74 = v43;
    *(&v74 + 1) = v40;
    v75 = v84;
    v76 = v85;
    v77 = v86;
    *&v78[0] = v87;
    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1B4BCECFC((v44 > 1), v45 + 1, 1);
      v42 = v79;
    }

    *(v42 + 16) = v45 + 1;
    v46 = (v42 + 112 * v45);
    v47 = v74;
    v48 = v76;
    v46[3] = v75;
    v46[4] = v48;
    v46[2] = v47;
    v49 = v77;
    v50 = v78[0];
    v51 = v78[2];
    v46[7] = v78[1];
    v46[8] = v51;
    v46[5] = v49;
    v46[6] = v50;
    result = (*(v59 + 8))(v63, v60);
    v52 = v66;
    *v66 = v43;
    v52[1] = v40;
    v52[2] = v42;
  }

  return result;
}

uint64_t sub_1B4982240@<X0>(uint64_t *a1@<X8>)
{
  v91 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v89 = *(v1 - 8);
  v90 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v92 = &v82 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v4 = *(v3 - 8);
  v86 = v3;
  ObjCClassFromMetadata = v4;
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v82 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v82 - v7;
  v9 = sub_1B4D1777C();
  v102 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D175FC();
  v97 = *(v11 - 8);
  v98 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v14 = sub_1B4D1794C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B4D1A800;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E6969A68], v14);
  sub_1B49B56B4(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  v18 = v100;
  swift_deallocClassInstance();
  v93 = type metadata accessor for FitnessContextDemoClient(0);
  v19 = *(v93 + 20);
  sub_1B4D1788C();
  v20 = v102;

  v96 = v13;
  sub_1B4D178FC();
  v21 = *(v20 + 48);
  v22 = v21(v8, 1, v9);
  v101 = v19;
  if (v22 == 1)
  {
    (*(v20 + 16))(v103, &v18[v19], v9);
    if (v21(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6790, &qword_1B4D1BBC0);
    }
  }

  else
  {
    (*(v20 + 32))(v103, v8, v9);
  }

  v99 = v9;
  v23 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v24 = sub_1B4D1796C();
  __swift_project_value_buffer(v24, qword_1EDC3CE48);
  v25 = sub_1B4D178CC();
  v26 = _HKCacheIndexFromDate();

  v27 = sub_1B4D1771C();
  v28 = sub_1B4D178CC();
  v88 = _HKCacheIndexFromDate();

  v29 = sub_1B4D1771C();
  v30 = sub_1B4D178CC();
  v84 = _HKCacheIndexFromDate();

  v31 = v18;
  v32 = sub_1B4D1771C();
  v33 = sub_1B4D178CC();
  v83 = _HKCacheIndexFromDate();

  v34 = v31;
  v35 = v103;

  v36 = v93;
  v85 = *&v34[*(v93 + 24)];
  v37 = [v85 effectiveTypeIdentifier];
  v130 = 1;
  v129 = 0;
  LOWORD(v151) = 1804;
  *(&v151 + 1) = 0;
  LOBYTE(v152) = 1;
  *(&v152 + 1) = v37;
  LOWORD(v153) = 1280;
  *(&v153 + 1) = 0;
  v154 = 0;
  v38 = &v34[*(v36 + 28)];
  v39 = v94;
  v40 = v95;
  sub_1B4983C44(v35, v95);
  if (v39)
  {
    sub_1B498AD54(&v151);
    (*(v102 + 8))(v35, v99);
    (*(v97 + 8))(v96, v98);
    return swift_arrayDestroy();
  }

  else
  {
    v93 = 0;
    v42 = sub_1B4D1844C();
    v86 = v38;
    v43 = v42;
    *(v42 + 16) = 3;
    v44 = ObjCClassFromMetadata;
    v45 = v42 + ((ObjCClassFromMetadata[80] + 32) & ~ObjCClassFromMetadata[80]);
    v94 = v26;
    sub_1B4974FBC(v40, v45, &qword_1EB8A6818, &unk_1B4D1AB30);
    v46 = v40;
    v47 = *(v44 + 9);
    sub_1B4974FBC(v46, v45 + v47, &qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B270(v46, v45 + 2 * v47, &qword_1EB8A6818, &unk_1B4D1AB30);
    v127 = &type metadata for LongestDistanceProperty;
    v128 = sub_1B498ADA8();
    *&v126 = v43;
    v131[0] = v84;
    v131[1] = v83;
    v132 = v151;
    v133 = v152;
    v134 = v153;
    v135 = v154;
    sub_1B496F398(&v126, &v136);
    v48 = sub_1B4D1771C();
    v49 = sub_1B4D178CC();
    v95 = _HKCacheIndexFromDate();

    v50 = sub_1B4D1771C();
    v51 = sub_1B4D178CC();
    v101 = _HKCacheIndexFromDate();

    v100 = [v85 effectiveTypeIdentifier];
    LOBYTE(v110) = 1;
    v104[0] = 0;
    v52 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [ObjCClassFromMetadata baseUnit];
    v150[3] = type metadata accessor for WorkoutDistanceStatisticsProperty(0);
    v150[4] = sub_1B498AF00(&qword_1EDC38008, type metadata accessor for WorkoutDistanceStatisticsProperty, &protocol conformance descriptor for WorkoutDistanceStatisticsProperty);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v150);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    v56 = v55[11];
    v57 = v90;
    sub_1B4D1745C();

    sub_1B4D1742C();
    *(boxed_opaque_existential_1 + v55[7]) = 1;
    v58 = v89;
    v59 = *(v89 + 16);
    v59(boxed_opaque_existential_1, boxed_opaque_existential_1 + v56, v57);
    v60 = [ObjCClassFromMetadata baseUnit];
    sub_1B4D1741C();
    (*(v58 + 8))(v92, v57);
    v59((boxed_opaque_existential_1 + v55[9]), boxed_opaque_existential_1 + v56, v57);
    v61 = v55[8];
    v62 = v94;
    v59((boxed_opaque_existential_1 + v61), boxed_opaque_existential_1 + v56, v57);
    v137[0] = v95;
    v137[1] = v101;
    v138 = 1804;
    v139 = *&v124[7];
    v140 = v125;
    v141 = 0;
    v142 = 1;
    *v143 = *v124;
    *&v143[3] = *&v124[3];
    v144 = v100;
    v145 = 1280;
    v147 = v123;
    v146 = v122;
    v148 = 0;
    v149 = 0;
    v121 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 2, 0);
    v63 = v121;
    sub_1B498ADFC(v131, v104);
    v117 = v105;
    v118 = v106;
    v119 = v107;
    v120 = v108;
    sub_1B496F398(v109, &v114 + 8);
    v64 = v88;
    *&v110 = v62;
    *(&v110 + 1) = v88;
    v111 = v117;
    v112 = v118;
    v113 = v119;
    *&v114 = v120;
    v66 = *(v63 + 16);
    v65 = *(v63 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_1B4BCECFC((v65 > 1), v66 + 1, 1);
      v63 = v121;
    }

    *(v63 + 16) = v66 + 1;
    v67 = (v63 + 112 * v66);
    v68 = v110;
    v69 = v112;
    v67[3] = v111;
    v67[4] = v69;
    v67[2] = v68;
    v70 = v113;
    v71 = v114;
    v72 = v116;
    v67[7] = v115;
    v67[8] = v72;
    v67[5] = v70;
    v67[6] = v71;
    sub_1B498ADFC(v137, v104);
    v117 = v105;
    v118 = v106;
    v119 = v107;
    v120 = v108;
    sub_1B496F398(v109, &v114 + 8);
    *&v110 = v62;
    *(&v110 + 1) = v64;
    v111 = v117;
    v112 = v118;
    v113 = v119;
    *&v114 = v120;
    v121 = v63;
    v74 = *(v63 + 16);
    v73 = *(v63 + 24);
    v75 = v91;
    if (v74 >= v73 >> 1)
    {
      sub_1B4BCECFC((v73 > 1), v74 + 1, 1);
      v63 = v121;
    }

    *(v63 + 16) = v74 + 1;
    v76 = (v63 + 112 * v74);
    v77 = v110;
    v78 = v112;
    v76[3] = v111;
    v76[4] = v78;
    v76[2] = v77;
    v79 = v113;
    v80 = v114;
    v81 = v116;
    v76[7] = v115;
    v76[8] = v81;
    v76[5] = v79;
    v76[6] = v80;
    swift_arrayDestroy();
    (*(v102 + 8))(v103, v99);
    result = (*(v97 + 8))(v96, v98);
    *v75 = v62;
    v75[1] = v64;
    v75[2] = v63;
  }

  return result;
}

uint64_t sub_1B4982E30@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v51 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = &v47 - v1;
  v2 = sub_1B4D1777C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  sub_1B4D176EC();
  v10 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4D1796C();
  __swift_project_value_buffer(v11, qword_1EDC3CE48);
  v12 = sub_1B4D178CC();
  v50 = _HKCacheIndexFromDate();

  v13 = *(v3 + 8);
  v13(v9, v2);
  v14 = type metadata accessor for FitnessContextDemoClient(0);
  v53 = v2;
  v54 = v14;
  v15 = v58;
  v16 = sub_1B4D1771C();
  v17 = sub_1B4D178CC();
  v48 = _HKCacheIndexFromDate();

  v18 = v55;
  sub_1B4D176EC();
  v19 = sub_1B4D1771C();
  v20 = sub_1B4D178CC();
  v47 = _HKCacheIndexFromDate();

  v21 = v18;
  v22 = v53;
  v55 = (v3 + 8);
  v13(v21, v53);
  v23 = sub_1B4D1771C();
  v24 = sub_1B4D178CC();
  v25 = _HKCacheIndexFromDate();

  v26 = [*(v15 + *(v54 + 24)) effectiveTypeIdentifier];
  v59[0] = 1;
  LOBYTE(v70) = 0;
  LOWORD(v81) = 1804;
  *(&v81 + 1) = 0;
  LOBYTE(v82) = 1;
  *(&v82 + 1) = v26;
  LOWORD(v83) = 1280;
  *(&v83 + 1) = 0;
  v84 = 0;
  v27 = v56;
  sub_1B4D176EC();
  v28 = v57;
  v29 = v85;
  sub_1B4983C44(v27, v57);
  if (v29)
  {
    v13(v27, v22);
    sub_1B498AD54(&v81);
    return swift_arrayDestroy();
  }

  else
  {
    v13(v27, v22);
    v31 = sub_1B4D1844C();
    *(v31 + 16) = 3;
    v32 = v51;
    v33 = v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    sub_1B4974FBC(v28, v33, &qword_1EB8A6818, &unk_1B4D1AB30);
    v34 = *(v32 + 72);
    sub_1B4974FBC(v28, v33 + v34, &qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B270(v28, v33 + 2 * v34, &qword_1EB8A6818, &unk_1B4D1AB30);
    *(&v66 + 1) = &type metadata for LongestDistanceProperty;
    *&v67 = sub_1B498ADA8();
    *&v65 = v31;
    v75[0] = v47;
    v75[1] = v25;
    v76 = v81;
    v77 = v82;
    v78 = v83;
    v79 = v84;
    sub_1B496F398(&v65, &v80);
    v74 = MEMORY[0x1E69E7CC0];
    sub_1B4BCECFC(0, 1, 0);
    v35 = v74;
    sub_1B498ADFC(v75, v59);
    v70 = v60;
    v71 = v61;
    v72 = v62;
    v73 = v63;
    sub_1B496F398(&v64, v69 + 8);
    v36 = v50;
    v37 = v48;
    *&v65 = v50;
    *(&v65 + 1) = v48;
    v66 = v70;
    v67 = v71;
    v68 = v72;
    *&v69[0] = v73;
    v39 = *(v35 + 16);
    v38 = *(v35 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1B4BCECFC((v38 > 1), v39 + 1, 1);
      v35 = v74;
    }

    *(v35 + 16) = v39 + 1;
    v40 = (v35 + 112 * v39);
    v41 = v65;
    v42 = v67;
    v40[3] = v66;
    v40[4] = v42;
    v40[2] = v41;
    v43 = v68;
    v44 = v69[0];
    v45 = v69[2];
    v40[7] = v69[1];
    v40[8] = v45;
    v40[5] = v43;
    v40[6] = v44;
    result = sub_1B498AE58(v75);
    v46 = v52;
    *v52 = v36;
    v46[1] = v37;
    v46[2] = v35;
  }

  return result;
}

void *sub_1B49833B4()
{
  v1 = v0;
  v57 = sub_1B4D175FC();
  v2 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4D1777C();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - v9;
  v11 = sub_1B4D178CC();
  v56 = type metadata accessor for FitnessContextDemoClient(0);
  v12 = sub_1B4D1771C();
  v13 = [v11 hk:v12 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  sub_1B4D1782C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v14 = sub_1B4D1794C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B4D1A800;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x1E6969A48], v14);
  sub_1B49B56B4(v17);
  swift_setDeallocating();
  (*(v15 + 8))(v17 + v16, v14);
  swift_deallocClassInstance();
  v52 = v10;
  v53 = v7;
  sub_1B4D1787C();

  v18 = sub_1B4D1757C();
  v20 = v19;
  (*(v2 + 8))(v4, v57);
  v21 = *(v1 + *(v56 + 28));
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  if (v20)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v18;
  }

  v27 = 0;
  v28 = MEMORY[0x1E69E7CC8];
  if (v24)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v29 >= v25)
    {
      v48 = *(v54 + 8);
      v49 = v55;
      v48(v53, v55);
      v48(v52, v49);

      return v28;
    }

    v24 = *(v21 + 64 + 8 * v29);
    ++v27;
  }

  while (!v24);
  while (1)
  {
    v30 = __clz(__rbit64(v24)) | (v29 << 6);
    v31 = *(v21 + 56) + 56 * v30;
    v32 = v26 * *(v31 + 16);
    if (COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v32 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v32 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v33 = *v31;
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_32;
    }

    v35 = *(*(v21 + 48) + 8 * v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v28;
    v37 = sub_1B49EF0C0();
    v39 = v28[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      goto LABEL_33;
    }

    v43 = v38;
    if (v28[3] >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v37;
        sub_1B4989558();
        v37 = v47;
      }
    }

    else
    {
      sub_1B4985958(v42, isUniquelyReferenced_nonNull_native);
      v37 = sub_1B49EF0C0();
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_35;
      }
    }

    v24 &= v24 - 1;
    v28 = v58;
    if (v43)
    {
      *(v58[7] + 8 * v37) = v34;
      v27 = v29;
      if (!v24)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v58[(v37 >> 6) + 8] |= 1 << v37;
      *(v28[6] + 8 * v37) = v35;
      *(v28[7] + 8 * v37) = v34;
      v45 = v28[2];
      v41 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v41)
      {
        goto LABEL_34;
      }

      v28[2] = v46;
      v27 = v29;
      if (!v24)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v29 = v27;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  type metadata accessor for HKWorkoutActivityType(0);
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

void *sub_1B4983910(void *(*a1)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (v13 << 9) | (8 * __clz(__rbit64(v9)));
      v15 = *(*(a3 + 48) + v14);
      v16 = *(*(a3 + 56) + v14);
      v18[0] = v15;
      v18[1] = v16;
      result = a1(&v17, &v19, v18);
      if (v3)
      {
      }

      v9 &= v9 - 1;
      v19 = v17;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4983A34@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  result = sub_1B4974FBC(a1, a5, &qword_1EB8A6928, &qword_1B4D20480);
  if (a3 != a4)
  {
    if (a4 >= a3)
    {
      while (a4 != a3)
      {
        v16 = a3;
        a2(a5, &v16);
        if (v5)
        {
          return sub_1B4975024(a5, &qword_1EB8A6928, &qword_1B4D20480);
        }

        ++a3;
        sub_1B4975024(a5, &qword_1EB8A6928, &qword_1B4D20480);
        result = sub_1B498B270(v13, a5, &qword_1EB8A6928, &qword_1B4D20480);
        if (a4 == a3)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double sub_1B4983B9C@<D0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v6 = *a1;
  v7 = a2[1];
  v8 = *(a3 + *(type metadata accessor for FitnessContextDemoClient(0) + 28));
  v9 = 0.0;
  if (*(v8 + 16))
  {
    v10 = sub_1B49EF0B0(*a2);
    if (v11)
    {
      v12 = *(v8 + 56) + 56 * v10;
      if (*(v12 + 32))
      {
        v9 = 0.0;
      }

      else
      {
        v9 = *(v12 + 24);
      }
    }
  }

  result = v6 + v9 * v7;
  *a4 = result;
  return result;
}

uint64_t sub_1B4983C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6820, &qword_1B4D2CA00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for LocalizedDate(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static LocalizedDate.from(_:)(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6820, &qword_1B4D2CA00);
    sub_1B498AEAC();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_1B498B198(v7, v11, type metadata accessor for LocalizedDate);
    sub_1B4D177BC();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
    sub_1B498B130(v11, a2 + *(v13 + 28), type metadata accessor for LocalizedDate);
    v14 = [objc_opt_self() meters];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    sub_1B4D1741C();
    return sub_1B498B000(v11, type metadata accessor for LocalizedDate);
  }
}

uint64_t sub_1B4983EA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B4983F3C;

  return sub_1B497CF2C(a1);
}

uint64_t sub_1B4983F3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4984030(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
  v32 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v34 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v33 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
      }

      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](*(v20 + 16));
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = v20 + 40;
        do
        {

          sub_1B4D1820C();

          v22 += 16;
          --v21;
        }

        while (v21);
      }

      result = sub_1B4D18EDC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      v12 = v34;
      *(*(v7 + 56) + 8 * v15) = v33;
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v34 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero(v9, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4984310(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_1B4D18E7C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B4984574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
  v39 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_1B4D18E8C();
      MEMORY[0x1B8C7D2C0](v24);
      result = sub_1B4D18EDC();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B49848E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
  v39 = v4;
  result = sub_1B4D18ADC();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
      }

      else
      {
        (*v36)(v43, v25, v5);
      }

      v41 = *(*(v9 + 56) + 8 * v23);
      sub_1B498B070();
      result = sub_1B4D1807C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B4984C80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v20);
      result = sub_1B4D18EDC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4984F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
  v44 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v39 = v3;
    v40 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v41 = (v5 + 8);
    v16 = result + 64;
    v17 = result;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(*(v7 + 48) + v23);
      v25 = *(*(v7 + 56) + 8 * v23);
      if ((v44 & 1) == 0)
      {
      }

      v45 = v25;
      sub_1B4D18E8C();
      v46 = v24;
      v26 = v17;
      v27 = v42;
      DistanceReference.rawValue.getter();
      sub_1B498B070();
      v28 = v43;
      sub_1B4D1808C();
      v29 = v27;
      v17 = v26;
      (*v41)(v29, v28);
      result = sub_1B4D18EDC();
      v30 = -1 << *(v26 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v45;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v45;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v17[6] + v18) = v24;
      *(v17[7] + 8 * v18) = v19;
      ++v17[2];
      v7 = v40;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v44)
    {
      v37 = 1 << *(v7 + 32);
      v3 = v39;
      if (v37 >= 64)
      {
        bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v37;
      }

      *(v7 + 16) = 0;
    }

    else
    {

      v3 = v39;
    }
  }

  else
  {

    v17 = v9;
  }

  *v3 = v17;
  return result;
}

uint64_t sub_1B498528C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WorkoutMilestoneEntry(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
  v37 = v4;
  result = sub_1B4D18ADC();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        sub_1B498B198(v25, v7, type metadata accessor for WorkoutMilestoneEntry);
      }

      else
      {
        sub_1B498B130(v25, v7, type metadata accessor for WorkoutMilestoneEntry);
      }

      result = sub_1B4D18E7C();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1B498B198(v7, *(v10 + 56) + v24 * v18, type metadata accessor for WorkoutMilestoneEntry);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1B49855D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v42 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6908, &qword_1B4D1AC20);
  v43 = v4;
  result = sub_1B4D18ADC();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        sub_1B498B198(v25, v7, type metadata accessor for FitnessContextQueryDescriptor);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1B498B130(v25, v7, type metadata accessor for FitnessContextQueryDescriptor);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_1B4D18E8C();
      v30 = v27;
      FitnessContextQueryDescriptor.hash(into:)(v44);
      result = sub_1B4D18EDC();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1B498B198(v30, *(v11 + 48) + v24 * v19, type metadata accessor for FitnessContextQueryDescriptor);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1B4985958(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6860, &qword_1B4D1AB78);
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v20);
      result = sub_1B4D18EDC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4985BD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v34 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6900, &qword_1B4D1AC18);
  v35 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v33[0] = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    v33[3] = "thisWeekProperties";
    v33[1] = "last_week_total_distance>.";
    v33[2] = "thisTimeLastWeekProperties";
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v34 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v35)
      {
        sub_1B498B198(v24, v36, type metadata accessor for FitnessContextQueryDescriptor);
      }

      else
      {
        sub_1B498B130(v24, v36, type metadata accessor for FitnessContextQueryDescriptor);
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1B498B198(v36, *(v9 + 56) + v23 * v17, type metadata accessor for FitnessContextQueryDescriptor);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33[0];
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33[0];
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B4985F9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C0, &qword_1B4D1ABD8);
  v35 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4986240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C8, &qword_1B4D1ABE0);
  v31 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();

      result = sub_1B4D18EDC();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B49865A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
  v33 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v33 & 1) == 0)
      {
        v22 = v20;
      }

      sub_1B4D18E8C();
      v23 = v20;
      sub_1B4D187BC();

      result = sub_1B4D18EDC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v23;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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
  return result;
}

uint64_t sub_1B4986848(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WorkoutState(0);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E0, &qword_1B4D1ABF8);
  v36 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1B498B198(v24, v37, type metadata accessor for WorkoutState);
      }

      else
      {
        sub_1B498B130(v24, v37, type metadata accessor for WorkoutState);
      }

      sub_1B4D18E8C();
      MEMORY[0x1B8C7D290](v22);
      result = sub_1B4D18EDC();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1B498B198(v37, *(v9 + 56) + v23 * v17, type metadata accessor for WorkoutState);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B4986BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D8, &qword_1B4D1ABF0);
  result = sub_1B4D18ADC();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v8 << 6);
      if (v4)
      {
LABEL_10:
        v19 = *(v5 + 56);
        v20 = *(v5 + 48) + 56 * v18;
        v45 = *v20;
        v46 = *(v20 + 16);
        v47 = *(v20 + 32);
        v48 = *(v20 + 48);
        v21 = *(v19 + 8 * v18);
      }

      else
      {
LABEL_16:
        v24 = *(v5 + 56);
        v25 = *(v5 + 48) + 56 * v18;
        v26 = *(v25 + 48);
        v27 = *(v25 + 32);
        v28 = *v25;
        v38 = *(v25 + 16);
        v39 = v27;
        v37 = v28;
        v40 = v26;
        v21 = *(v24 + 8 * v18);
        sub_1B498B0D4(&v37, &v45);
        v45 = v37;
        v46 = v38;
        v47 = v39;
        v48 = v40;
      }

      v41 = v45;
      v42 = v46;
      v43 = v47;
      v44 = v48;
      sub_1B4D18E8C();
      WorkoutPropertyDimensions.hash(into:)(&v37);
      result = sub_1B4D18EDC();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      *v16 = v45;
      *(v16 + 16) = v46;
      *(v16 + 32) = v47;
      *(v16 + 48) = v48;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v12 = (v23 - 1) & v23;
        v18 = __clz(__rbit64(v23)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4986EEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D0, &qword_1B4D1ABE8);
  v37 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v19 = v8;
        while (1)
        {
          v8 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v20 = v9[v8];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v12 = (v20 - 1) & v20;
            goto LABEL_15;
          }
        }

        if ((v37 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v35 = 1 << *(v5 + 32);
        v3 = v2;
        if (v35 >= 64)
        {
          bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v35;
        }

        *(v5 + 16) = 0;
        goto LABEL_38;
      }

      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 3 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v38 = v27;
      sub_1B4D18E8C();
      sub_1B4D18EAC();
      if (v24 != 12)
      {
        sub_1B4D1820C();
      }

      if (v25 == 7)
      {
        break;
      }

      sub_1B4D18EAC();
      sub_1B4D1820C();

      if (v26 != 2)
      {
        goto LABEL_21;
      }

LABEL_23:
      sub_1B4D18EAC();
      result = sub_1B4D18EDC();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v38;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v38;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = (*(v7 + 48) + 3 * v15);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v36;
    }

    sub_1B4D18EAC();
    if (v26 == 2)
    {
      goto LABEL_23;
    }

LABEL_21:
    sub_1B4D18EAC();
    goto LABEL_23;
  }

LABEL_38:

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4987444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A8, &qword_1B4D1ABC0);
  v44 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v39 = v3;
    v40 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v41 = (v5 + 8);
    v16 = result + 64;
    v17 = result;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(*(v7 + 48) + v23);
      v25 = *(*(v7 + 56) + 8 * v23);
      if ((v44 & 1) == 0)
      {
      }

      v45 = v25;
      sub_1B4D18E8C();
      v46 = v24;
      v26 = v17;
      v27 = v42;
      DistanceReference.rawValue.getter();
      sub_1B498B070();
      v28 = v43;
      sub_1B4D1808C();
      v29 = v27;
      v17 = v26;
      (*v41)(v29, v28);
      result = sub_1B4D18EDC();
      v30 = -1 << *(v26 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v45;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v45;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v17[6] + v18) = v24;
      *(v17[7] + 8 * v18) = v19;
      ++v17[2];
      v7 = v40;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if (v44)
    {
      v37 = 1 << *(v7 + 32);
      v3 = v39;
      if (v37 >= 64)
      {
        bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v37;
      }

      *(v7 + 16) = 0;
    }

    else
    {

      v3 = v39;
    }
  }

  else
  {

    v17 = v9;
  }

  *v3 = v17;
  return result;
}

uint64_t sub_1B49877D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for WorkoutMetadata(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F8, &qword_1B4D1AC10);
  v40 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1B498B198(v28, v41, type metadata accessor for WorkoutMetadata);
      }

      else
      {
        sub_1B498B130(v28, v41, type metadata accessor for WorkoutMetadata);
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1B498B198(v41, *(v9 + 56) + v27 * v17, type metadata accessor for WorkoutMetadata);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B4987B48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
  v33 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B498B060(v24, v34);
      }

      else
      {
        sub_1B4955D64(v24, v34);
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B498B060(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4987E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v39 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B0, &qword_1B4D1ABC8);
  v40 = v4;
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1B498B198(v28, v41, type metadata accessor for FitnessContextQueryDescriptor);
      }

      else
      {
        sub_1B498B130(v28, v41, type metadata accessor for FitnessContextQueryDescriptor);
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1B498B198(v41, *(v9 + 56) + v27 * v17, type metadata accessor for FitnessContextQueryDescriptor);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1B4988178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6898, &qword_1B4D1ABB0);
  v33 = v4;
  result = sub_1B4D18ADC();
  v7 = result;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B4D18E8C();
      sub_1B4D1820C();
      result = sub_1B4D18EDC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4988444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1B4D18ADC();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
        v24 = v22;
      }

      result = sub_1B4D1879C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void *sub_1B49886AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

  return result;
}

void *sub_1B4988808()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1B4988954()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6918, &qword_1B4D1AC30);
  v3 = *v0;
  v4 = sub_1B4D18ACC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_1B4988BC4()
{
  v1 = v0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B8, &qword_1B4D1ABD0);
  v3 = *v0;
  v4 = sub_1B4D18ACC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1B4988E3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1B4988F88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A0, &qword_1B4D1ABB8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_1B49890E4()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutMilestoneEntry(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6880, &unk_1B4D46FC0);
  v5 = *v0;
  v6 = sub_1B4D18ACC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1B498B130(*(v5 + 56) + v22, v4, type metadata accessor for WorkoutMilestoneEntry);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_1B498B198(v4, *(v7 + 56) + v22, type metadata accessor for WorkoutMilestoneEntry);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B4989318()
{
  v1 = v0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v24 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6908, &qword_1B4D1AC20);
  v5 = *v0;
  v6 = sub_1B4D18ACC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1B498B130(*(v5 + 48) + v21, v4, type metadata accessor for FitnessContextQueryDescriptor);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1B498B198(v4, *(v7 + 48) + v21, type metadata accessor for FitnessContextQueryDescriptor);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B4989558()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6860, &qword_1B4D1AB78);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_1B49896A4()
{
  v1 = v0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v24 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6900, &qword_1B4D1AC18);
  v5 = *v0;
  v6 = sub_1B4D18ACC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_1B498B130(*(v5 + 56) + v22, v4, type metadata accessor for FitnessContextQueryDescriptor);
        *(*(v7 + 48) + v20) = v21;
        result = sub_1B498B198(v4, *(v7 + 56) + v22, type metadata accessor for FitnessContextQueryDescriptor);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1B49898D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C0, &qword_1B4D1ABD8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

  return result;
}

id sub_1B4989A44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C8, &qword_1B4D1ABE0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        result = v18;
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

  return result;
}

void *sub_1B4989BA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F0, &qword_1B4D1BC20);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

  return result;
}

void *sub_1B4989D04()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutState(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E0, &qword_1B4D1ABF8);
  v5 = *v0;
  v6 = sub_1B4D18ACC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_1B498B130(*(v5 + 56) + v22, v4, type metadata accessor for WorkoutState);
        *(*(v7 + 48) + v20) = v21;
        result = sub_1B498B198(v4, *(v7 + 56) + v22, type metadata accessor for WorkoutState);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1B4989F4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D8, &qword_1B4D1ABF0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 56);
        v21 = (*(v2 + 48) + v19);
        v22 = *(v21 + 6);
        v23 = v21[2];
        v24 = *v21;
        v31[1] = v21[1];
        v31[2] = v23;
        v31[0] = v24;
        v32 = v22;
        v25 = *(v20 + v17);
        v26 = *(v4 + 48) + v19;
        v27 = *v21;
        v28 = v21[1];
        v29 = v21[2];
        *(v26 + 48) = *(v21 + 6);
        *(v26 + 16) = v28;
        *(v26 + 32) = v29;
        *v26 = v27;
        *(*(v4 + 56) + v17) = v25;
        sub_1B498B0D4(v31, v30);
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

  return result;
}

void *sub_1B498A0FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D0, &qword_1B4D1ABE8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = *(v2 + 48) + 3 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 2);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 3 * v17;
        *v21 = v19;
        *(v21 + 2) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

  return result;
}

void *sub_1B498A26C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68A8, &qword_1B4D1ABC0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

void *sub_1B498A3C8()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutMetadata(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68F8, &qword_1B4D1AC10);
  v4 = *v0;
  v5 = sub_1B4D18ACC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1B498B130(*(v4 + 56) + v26, v30, type metadata accessor for WorkoutMetadata);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1B498B198(v25, *(v27 + 56) + v26, type metadata accessor for WorkoutMetadata);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1B498A620()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B4955D64(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B498B060(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B498A7C4()
{
  v1 = v0;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  v31 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68B0, &qword_1B4D1ABC8);
  v4 = *v0;
  v5 = sub_1B4D18ACC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1B498B130(*(v4 + 56) + v26, v30, type metadata accessor for FitnessContextQueryDescriptor);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1B498B198(v25, *(v27 + 56) + v26, type metadata accessor for FitnessContextQueryDescriptor);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1B498AA1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6898, &qword_1B4D1ABB0);
  v2 = *v0;
  v3 = sub_1B4D18ACC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

  return result;
}

void *sub_1B498ABB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B4D18ACC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B8C7DDA0);
  }

  return result;
}

unint64_t sub_1B498ADA8()
{
  result = qword_1EDC39110;
  if (!qword_1EDC39110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39110);
  }

  return result;
}

unint64_t sub_1B498AEAC()
{
  result = qword_1EB8A6828;
  if (!qword_1EB8A6828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6828);
  }

  return result;
}

uint64_t sub_1B498AF00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B498AF48()
{
  result = qword_1EDC38CC0;
  if (!qword_1EDC38CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CC0);
  }

  return result;
}

uint64_t sub_1B498AFB8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1B498B000(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_1B498B060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B498B070()
{
  result = qword_1EDC3CB40;
  if (!qword_1EDC3CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3CB40);
  }

  return result;
}

uint64_t sub_1B498B130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B498B198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B498B21C()
{
  result = qword_1EB8A6920;
  if (!qword_1EB8A6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6920);
  }

  return result;
}

uint64_t sub_1B498B270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t InferenceResult.init(_:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v86 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v83 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v83 - v19;
  v21 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v22 = (a1 + v21[5]);
  v23 = v22[1];
  v84 = v5;
  v96 = v20;
  if (v23)
  {
    v85 = *v22;
    v94 = v23;
  }

  else
  {
    v85 = 0;
    v94 = 0xE000000000000000;
  }

  v24 = a1 + v21[6];
  if (*(v24 + 8))
  {
    v25 = 0.0;
  }

  else
  {
    v25 = *v24;
  }

  v90 = v21;
  v26 = v21[10];
  sub_1B4974FBC(a1 + v26, v17, &qword_1EB8A6940, &unk_1B4D22400);
  v87 = *(v11 + 48);
  v27 = v87(v17, 1, v10);
  v28 = v10;
  v29 = a1;
  v30 = v27;

  sub_1B4975024(v17, &qword_1EB8A6940, &unk_1B4D22400);
  if (v30 == 1)
  {
    v31 = v29;
    v32 = v96;
    v33 = 1;
  }

  else
  {
    v34 = v88;
    sub_1B4974FBC(v29 + v26, v88, &qword_1EB8A6940, &unk_1B4D22400);
    v35 = v87;
    v31 = v29;
    if (v87(v34, 1, v28) == 1)
    {
      v36 = v89;
      sub_1B4D17BBC();
      v37 = v36 + v28[5];
      *v37 = 0;
      *(v37 + 8) = 1;
      v38 = v36 + v28[6];
      *v38 = 0;
      *(v38 + 8) = 1;
      v39 = (v36 + v28[7]);
      *v39 = 0;
      v39[1] = 0;
      *(v36 + v28[8]) = 2;
      v40 = (v36 + v28[9]);
      *v40 = 0;
      v40[1] = 0;
      v41 = v36 + v28[10];
      *v41 = 0;
      *(v41 + 8) = 1;
      v42 = v35(v34, 1, v28);
      v43 = v95;
      if (v42 != 1)
      {
        sub_1B4975024(v34, &qword_1EB8A6940, &unk_1B4D22400);
      }
    }

    else
    {
      v36 = v89;
      sub_1B498C4F8(v34, v89, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v43 = v95;
    }

    v32 = v96;
    AnnounceUtteranceResult.init(_:)(v36, v96);
    if (v43)
    {
      sub_1B498C5C4(v29, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    }

    v95 = 0;
    v33 = 0;
  }

  v45 = type metadata accessor for AnnounceUtteranceResult(0);
  (*(*(v45 - 8) + 56))(v32, v33, 1, v45);
  v46 = v91;
  v47 = (v31 + v90[8]);
  v48 = *v47;
  v49 = v47[1];
  v50 = (v31 + v90[9]);
  v51 = *v50;
  v52 = v50[1];
  v87 = v48;
  v88 = v51;
  v53 = v90[11];
  sub_1B4974FBC(v31 + v53, v91, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v54 = v93;
  v92 = *(v92 + 48);
  v55 = (v92)(v46, 1, v93);

  v89 = v49;

  sub_1B4975024(v46, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (v55 == 1)
  {
    goto LABEL_24;
  }

  v60 = v83;
  sub_1B4974FBC(v31 + v53, v83, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v61 = v92;
  if ((v92)(v60, 1, v54) == 1)
  {
    v62 = v84;
    sub_1B4D17BBC();
    v63 = (v62 + *(v54 + 20));
    *v63 = 0;
    v63[1] = 0;
    v64 = (v62 + *(v54 + 24));
    *v64 = 0;
    v64[1] = 0;
    v65 = v52;
    if (v61(v60, 1, v54) != 1)
    {
      sub_1B4975024(v60, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    v62 = v84;
    sub_1B498C4F8(v60, v84, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v65 = v52;
  }

  v66 = (v62 + *(v54 + 20));
  v57 = v66[1];
  if (v57)
  {
    v67 = (v62 + *(v54 + 24));
    v59 = v67[1];
    if (v59)
    {
      v68 = *v66;
      v69 = *v67;

      sub_1B498C5C4(v62, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      v58 = v69;
      v56 = v68;
      v32 = v96;
      v52 = v65;
LABEL_24:
      v70 = v31;
      v71 = v56;
      v72 = v58;
      sub_1B498C5C4(v70, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
      v73 = v86;
      v74 = v94;
      *v86 = v85;
      *(v73 + 1) = v74;
      v73[2] = v25;
      v75 = type metadata accessor for InferenceResult(0);
      result = sub_1B498C368(v32, v73 + v75[6]);
      v76 = (v73 + v75[7]);
      v77 = v88;
      v78 = v89;
      *v76 = v87;
      v76[1] = v78;
      v79 = (v73 + v75[8]);
      *v79 = v77;
      v79[1] = v52;
      v80 = (v73 + v75[9]);
      *v80 = v71;
      v80[1] = v57;
      v80[2] = v72;
      v80[3] = v59;
      return result;
    }

    v81 = 1;
  }

  else
  {
    v81 = 0;
  }

  sub_1B498C3D8();
  swift_allocError();
  *v82 = v81;
  swift_willThrow();
  sub_1B498C5C4(v62, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v96, &qword_1EB8A6948, qword_1B4D1E1C0);

  return sub_1B498C5C4(v31, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
}

uint64_t InferenceResult.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B498C57C(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498BBA4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for AnnounceUtteranceResult(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a2[1];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v17 = (a1 + v16[5]);

  *v17 = v14;
  v17[1] = v15;
  v18 = a1 + v16[6];
  *v18 = a2[2];
  *(v18 + 8) = 0;
  v19 = type metadata accessor for InferenceResult(0);
  sub_1B4974FBC(a2 + v19[6], v10, &qword_1EB8A6948, qword_1B4D1E1C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_1B4975024(v10, &qword_1EB8A6948, qword_1B4D1E1C0);
  }

  else
  {
    v21 = v10;
    v22 = v45;
    v23 = sub_1B498C4F8(v21, v45, type metadata accessor for AnnounceUtteranceResult);
    MEMORY[0x1EEE9AC00](v23);
    *(&v44 - 2) = v22;
    sub_1B498C57C(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    v24 = v46;
    v25 = v48;
    v26 = v52;
    sub_1B4D17DAC();
    v52 = v26;
    v27 = v16[10];
    sub_1B4975024(a1 + v27, &qword_1EB8A6940, &unk_1B4D22400);
    sub_1B498C4F8(v24, a1 + v27, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    (*(v47 + 56))(a1 + v27, 0, 1, v25);
    result = sub_1B498C5C4(v22, type metadata accessor for AnnounceUtteranceResult);
  }

  v28 = v16;
  v29 = (a2 + v19[7]);
  v30 = v29[1];
  if (v30)
  {
    v31 = *v29;
    v32 = (a1 + v16[8]);

    *v32 = v31;
    v32[1] = v30;
  }

  v33 = (a2 + v19[8]);
  v34 = v33[1];
  if (v34)
  {
    v35 = *v33;
    v36 = (a1 + v16[9]);

    *v36 = v35;
    v36[1] = v34;
  }

  if (*(a2 + v19[9] + 8))
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v44 - 4) = v38;
    *(&v44 - 3) = v37;
    *(&v44 - 2) = v40;
    *(&v44 - 1) = v39;
    sub_1B498C57C(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v41 = v49;
    v42 = v51;
    sub_1B4D17DAC();
    v43 = v28[11];
    sub_1B4975024(a1 + v43, &qword_1EB8A6938, &qword_1B4D1ACF8);
    sub_1B498C4F8(v41, a1 + v43, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    return (*(v50 + 56))(a1 + v43, 0, 1, v42);
  }

  return result;
}

uint64_t sub_1B498C128(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B498C57C(&qword_1EB8A6968, type metadata accessor for InferenceResult, &protocol conformance descriptor for InferenceResult);
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B498C57C(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
    v2 = sub_1B4D17D6C();
    sub_1B498C5C4(v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  return v2;
}

uint64_t sub_1B498C2A8(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B498C57C(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498C368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6948, qword_1B4D1E1C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B498C3D8()
{
  result = qword_1EB8A6950;
  if (!qword_1EB8A6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6950);
  }

  return result;
}

uint64_t sub_1B498C4F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B498C57C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B498C5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AnnounceUtteranceResult.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v8 = (a1 + v7[5]);
  if (v8[1])
  {
    v9 = 0;
LABEL_5:
    sub_1B498C974();
    swift_allocError();
    *v11 = v9;
    swift_willThrow();
    return sub_1B498C9C8(a1);
  }

  v10 = (a1 + v7[6]);
  if (v10[1])
  {
    v9 = 1;
    goto LABEL_5;
  }

  v13 = *v8;
  v14 = *v10;
  v15 = (a1 + v7[10]);
  v21 = *v15;
  v16 = *(v15 + 8);
  v17 = *(a1 + v7[8]);
  if (*(a1 + v7[9] + 8))
  {

    v18 = sub_1B4D18B1C();

    if (v18 >= 3)
    {
      LOBYTE(v18) = 3;
    }
  }

  else
  {
    LOBYTE(v18) = 3;
  }

  sub_1B4D1766C();

  sub_1B498C9C8(a1);
  *a2 = v13;
  *(a2 + 8) = v21;
  *(a2 + 16) = v16;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  *(a2 + 33) = v18;
  v19 = type metadata accessor for AnnounceUtteranceResult(0);
  return sub_1B498CA24(v6, a2 + *(v19 + 36));
}

uint64_t AnnounceUtteranceResult.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B498D1B8(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498C8E8()
{
  v1 = *v0;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B498C930(uint64_t a1)
{
  v2 = *v1;
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v2);
  return sub_1B4D18EDC();
}

unint64_t sub_1B498C974()
{
  result = qword_1EB8A6980;
  if (!qword_1EB8A6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6980);
  }

  return result;
}

uint64_t sub_1B498C9C8(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498CA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498CA94(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1B4D1767C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v12 = v11;
  v13 = a1 + v11[5];
  *v13 = v10;
  *(v13 + 8) = 0;
  if ((a2[2] & 1) == 0)
  {
    v14 = a1 + v11[10];
    *v14 = a2[1];
    *(v14 + 8) = 0;
  }

  v15 = a1 + v11[6];
  *v15 = a2[3];
  *(v15 + 8) = 0;
  v16 = *(a2 + 32);
  if (v16 != 2)
  {
    *(a1 + v11[8]) = v16;
  }

  v17 = *(a2 + 33);
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_12;
    }

    v31 = v8;
    v18 = v7;
    v19 = 0xE600000000000000;
    v20 = 0x6D6165727473;
  }

  else
  {
    v31 = v8;
    v18 = v7;
    if (v17)
    {
      v19 = 0xEC00000065636E75;
      v20 = 0x6F6E6E4169726973;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x746365726964;
    }
  }

  v21 = (a1 + v11[9]);

  *v21 = v20;
  v21[1] = v19;
  v7 = v18;
  v8 = v31;
LABEL_12:
  v22 = type metadata accessor for AnnounceUtteranceResult(0);
  sub_1B498D200(a2 + *(v22 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1B498D270(v6);
  }

  v24 = v30;
  (*(v8 + 32))(v30, v6, v7);
  v25 = sub_1B4D1765C();
  v27 = v26;
  (*(v8 + 8))(v24, v7);
  v28 = (a1 + v12[7]);

  *v28 = v25;
  v28[1] = v27;
  return result;
}

uint64_t sub_1B498CD54(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B498D1B8(&qword_1EB8A6998, type metadata accessor for AnnounceUtteranceResult, &protocol conformance descriptor for AnnounceUtteranceResult);
  (*(v6 + 32))(a1, v6);
  if (!v1)
  {
    sub_1B498D1B8(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    v3 = sub_1B4D17D6C();
    sub_1B498C9C8(v5);
  }

  return v3;
}

uint64_t sub_1B498CF50()
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B498D1B8(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17DAC();
}

uint64_t _s7FailureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B498D164()
{
  result = qword_1EB8A6990;
  if (!qword_1EB8A6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6990);
  }

  return result;
}

uint64_t sub_1B498D1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B498D200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498D270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6978, &qword_1B4D47BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498D2F0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B4D1866C();
  if (!v19)
  {
    return sub_1B4D1843C();
  }

  v41 = v19;
  v45 = sub_1B4D18A5C();
  v32 = sub_1B4D18A6C();
  sub_1B4D18A0C();
  result = sub_1B4D1864C();
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
      v22 = sub_1B4D186BC();
      v23 = v13;
      v24 = v13;
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
      sub_1B4D18A4C();
      result = sub_1B4D1867C();
      ++v21;
      v13 = v24;
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

uint64_t WeeklyStatisticsPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v38 = a3;
  v40 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v37 = type metadata accessor for StatisticsPropertyValue(255, a2, v12, v13);
  v14 = sub_1B4D1880C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = &v35 - v15;
  v16 = a1[1];
  v46 = *a1;
  v44 = a2;
  v45 = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A8, &qword_1B4D1AE50);
  v42 = a2;
  sub_1B4D1746C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_1B498E184();
  v20 = v39;
  v22 = sub_1B498D2F0(sub_1B498E164, v43, v17, TupleTypeMetadata2, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v21);

  v45 = v22;
  sub_1B4D184BC();
  sub_1B498E1E8();
  swift_getWitnessTable();
  v23 = v40;
  v24 = sub_1B4D17FCC();
  v25 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B498E23C(a1 + v25, v11);
  v26 = *(v5 + 48);
  LODWORD(v22) = v26(v11, 1, v23);
  sub_1B498E2AC(v11);
  if (v22 == 1)
  {
    sub_1B498E314(a1);
    v27 = 1;
    v29 = v41;
    v28 = v42;
  }

  else
  {
    v30 = a1 + v25;
    v31 = v35;
    sub_1B498E23C(v30, v35);
    if (v26(v31, 1, v23) == 1)
    {
      v32 = v36;
      *(v36 + 16) = 0u;
      *(v32 + 32) = 0u;
      *v32 = 0u;
      sub_1B4D17BBC();
      v33 = v26(v31, 1, v23);
      v28 = v42;
      if (v33 != 1)
      {
        sub_1B498E2AC(v31);
      }
    }

    else
    {
      v32 = v36;
      sub_1B498E370(v31, v36);
      v28 = v42;
    }

    v29 = v41;
    StatisticsPropertyValue.init(_:)(v32, v28, v41);
    sub_1B498E314(a1);
    if (v20)
    {
    }

    v27 = 0;
  }

  (*(*(v37 - 8) + 56))(v29, v27, 1);
  return sub_1B49BA6D4(&v46, v24, v29, v28, v38);
}

uint64_t sub_1B498DB30@<X0>(double *a1@<X0>, void *a3@<X8>)
{
  sub_1B4D1746C();
  swift_getTupleTypeMetadata2();
  *a3 = *a1;
  v5 = [swift_getObjCClassFromMetadata() baseUnit];
  return sub_1B4D1741C();
}

uint64_t WeeklyStatisticsPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B498E558(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498DC90(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StatisticsPropertyValue(255, a3, v8, v9);
  v11 = sub_1B4D1880C();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v34 - v15;
  v38 = a2;
  v16 = *a2;
  v17 = *(a2 + 1);
  *a1 = v16;
  v48 = v17;
  v47 = a3;
  v43 = a3;
  v44 = sub_1B498E480;
  v45 = &v46;
  sub_1B4D1746C();
  sub_1B498E1E8();
  v18 = sub_1B4D1801C();
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);

  WitnessTable = swift_getWitnessTable();
  v21 = v41;
  v23 = sub_1B498D2F0(sub_1B498E488, v42, v18, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);
  v24 = v40;

  *(a1 + 1) = v23;
  v25 = a3;
  v26 = v39;
  v29 = type metadata accessor for WeeklyStatisticsPropertyValue(0, v25, v27, v28);
  (*(v24 + 16))(v13, &v38[*(v29 + 32)], v11);
  if ((*(v26 + 48))(v13, 1, v10) == 1)
  {
    return (*(v24 + 8))(v13, v11);
  }

  v31 = v36;
  (*(v26 + 32))(v36, v13, v10);
  v32 = v37;
  StatisticsPropertyValue.protobuf()(v10);
  if (v21)
  {
    return (*(v26 + 8))(v31, v10);
  }

  (*(v26 + 8))(v31, v10);
  v33 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B498E2AC(&a1[v33]);
  sub_1B498E370(v32, &a1[v33]);
  return (*(v34 + 56))(&a1[v33], 0, 1, v35);
}

uint64_t sub_1B498E074(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
  sub_1B498E558(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
  return sub_1B4D17DAC();
}

unint64_t sub_1B498E184()
{
  result = qword_1EB8A69B0;
  if (!qword_1EB8A69B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A69A8, &qword_1B4D1AE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69B0);
  }

  return result;
}

unint64_t sub_1B498E1E8()
{
  result = qword_1EDC399C8;
  if (!qword_1EDC399C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC399C8);
  }

  return result;
}

uint64_t sub_1B498E23C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498E2AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498E314(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B498E370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498E488(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_1B4D1746C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void sub_1B498E50C(void *a1)
{
  *a1 = *(v1 + 24);
  sub_1B4D1746C();
  sub_1B4D1742C();
  a1[1] = v3;
}

uint64_t sub_1B498E558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t InferenceTelemetryIdentifier.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28));
  v8 = *v6;
  v7 = v6[1];
  v10 = a1[2];
  v9 = a1[3];

  result = sub_1B498E634(a1);
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  return result;
}

uint64_t sub_1B498E634(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InferenceTelemetryIdentifier.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  sub_1B498E9DC(&qword_1EB8A69C0, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498E734(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  a1[1] = v4;
  v6 = a2[3];
  if (v6)
  {
    v7 = a2[2];
    v8 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28));

    *v8 = v7;
    v8[1] = v6;
  }

  v10 = a2[4];
  v9 = a2[5];

  a1[2] = v10;
  a1[3] = v9;
  return result;
}

uint64_t sub_1B498E7F8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v12[0] = *v1;
  v12[1] = v7;
  v13 = *(v1 + 16);
  v14 = v8;
  v15 = v9;
  v10 = sub_1B498EB58();
  (*(v10 + 32))(a1, v10);
  if (!v2)
  {
    sub_1B498E9DC(&qword_1EB8A69C0, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    v4 = sub_1B4D17D6C();
    sub_1B498E634(v6);
  }

  return v4;
}

double sub_1B498E928@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_1B4B216C4(a2, a3, v9);
  if (!v3)
  {
    v6 = v9[1];
    v7 = v11;
    v8 = v12;
    *a1 = v9[0];
    *(a1 + 8) = v6;
    result = *&v10;
    *(a1 + 16) = v10;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
  }

  return result;
}

uint64_t sub_1B498E9DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B498EA20()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  sub_1B498E9DC(&qword_1EB8A69C0, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498EAC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28));
  v8 = *v6;
  v7 = v6[1];
  v10 = a1[2];
  v9 = a1[3];

  result = sub_1B498E634(a1);
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  return result;
}

unint64_t sub_1B498EB58()
{
  result = qword_1EB8A69D0;
  if (!qword_1EB8A69D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69D0);
  }

  return result;
}

void sub_1B498EBC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v1 = objc_allocWithZone(MEMORY[0x1E696B030]);
  v2 = sub_1B4D1817C();
  v3 = [v1 initWithSymbol:v2 converter:v0];

  qword_1EDC36DF8 = v3;
}

id static NSUnitEnergy.largeCalories.getter()
{
  if (qword_1EDC36DF0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC36DF8;

  return v1;
}

uint64_t TrainingLoadFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t TrainingLoadFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000033;
  v2 = 0xD000000000000038;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000033;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000003BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B498EDC0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B498EE8C(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B498EF44(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

void sub_1B498F018(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000033;
  v3 = *v1;
  v4 = "my 28-day baseline.";
  v5 = "my 28-day baseline.";
  v6 = 0xD000000000000038;
  if (v3 != 3)
  {
    v5 = "bove my 28-day baseline.";
  }

  if (v3 == 2)
  {
    v6 = 0xD000000000000033;
  }

  else
  {
    v4 = v5;
  }

  if (*v1)
  {
    v7 = "ck with my 28-day baseline.";
  }

  else
  {
    v2 = 0xD00000000000003BLL;
    v7 = "guration";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v2 = v6;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

unint64_t sub_1B498F0E4()
{
  result = qword_1EB8A69D8;
  if (!qword_1EB8A69D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69D8);
  }

  return result;
}

unint64_t sub_1B498F13C()
{
  result = qword_1EB8A69E0;
  if (!qword_1EB8A69E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A69E8, &qword_1B4D1AF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69E0);
  }

  return result;
}

unint64_t sub_1B498F1A4()
{
  result = qword_1EB8A69F0;
  if (!qword_1EB8A69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69F0);
  }

  return result;
}

unint64_t sub_1B498F1FC()
{
  result = qword_1EB8A69F8;
  if (!qword_1EB8A69F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A69F8);
  }

  return result;
}

unint64_t sub_1B498F284(uint64_t a1)
{
  result = sub_1B498F2AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B498F2AC()
{
  result = qword_1EB8A6A00;
  if (!qword_1EB8A6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A00);
  }

  return result;
}

uint64_t _s14TemplateStringOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TemplateStringOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StreamingAudioData.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v24 = a1;
    v25 = a2;
    v26 = v2;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1B4BCEE1C(0, v10, 0);
    v11 = v33;
    v12 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v27 = *(v6 + 72);
    do
    {
      sub_1B498FBA8(v12, v8);
      v13 = *(v8 + 1);
      v30 = *v8;
      v29 = *(v8 + 4);
      v14 = *(v8 + 3);
      v15 = *(v8 + 4);
      v28 = *(v8 + 10);
      v17 = *(v8 + 6);
      v16 = *(v8 + 7);

      v31 = v14;
      sub_1B498FC0C(v14, v15);
      v32 = v16;
      sub_1B498FC0C(v17, v16);
      sub_1B498FC60(v8, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      v33 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B4BCEE1C((v18 > 1), v19 + 1, 1);
        v11 = v33;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + (v19 << 6);
      *(v20 + 32) = v30;
      *(v20 + 40) = v13;
      *(v20 + 48) = v29;
      *(v20 + 56) = v31;
      *(v20 + 64) = v15;
      v21 = v27;
      *(v20 + 72) = v28;
      *(v20 + 80) = v17;
      v12 += v21;
      *(v20 + 88) = v32;
      --v10;
    }

    while (v10);
    result = sub_1B498FC60(v24, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
    a2 = v25;
  }

  else
  {
    result = sub_1B498FC60(a1, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
    v11 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v11;
  return result;
}

uint64_t StreamingAudioData.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  sub_1B498FE38(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498F73C(void *a1, uint64_t a2)
{
  v17 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v16 = a1;
    v20 = MEMORY[0x1E69E7CC0];
    v9 = sub_1B4BCF05C(0, v7, 0);
    v8 = v20;
    v10 = (a2 + 32);
    do
    {
      v11 = v10[1];
      v19[0] = *v10;
      v19[1] = v11;
      v12 = v10[3];
      v19[2] = v10[2];
      v19[3] = v12;
      MEMORY[0x1EEE9AC00](v9);
      *(&v16 - 2) = v19;
      sub_1B498FDDC(v19, v18);
      sub_1B498FE38(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      sub_1B4D17DAC();
      sub_1B498FE80(v19);
      v20 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B4BCF05C((v13 > 1), v14 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v14 + 1;
      v9 = sub_1B498FED4(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
      v10 += 4;
      --v7;
    }

    while (v7);
    a1 = v16;
  }

  *a1 = v8;
  return result;
}

uint64_t *sub_1B498F970(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v7 = sub_1B498FD6C();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B498FE38(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);
    v8 = sub_1B4D17D6C();
    sub_1B498FC60(v6, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
  }

  return v8;
}

void *sub_1B498FAB4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_1B4B2191C(a2, a3, &v6);
  if (!v3)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B498FAE8()
{
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  sub_1B498FE38(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);
  return sub_1B4D17DAC();
}

uint64_t sub_1B498FBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B498FC0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B498FC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B498FD6C()
{
  result = qword_1EB8A6A18;
  if (!qword_1EB8A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A18);
  }

  return result;
}

uint64_t sub_1B498FE38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B498FED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutWeekContext.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorkoutRecord(0);
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v23 = a2;
    v24 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    v25 = v15;
    result = sub_1B4BCED9C(0, v15, 0);
    v17 = 0;
    v18 = v29;
    v26 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v17 < *(v14 + 16))
    {
      sub_1B49919C0(v26 + *(v6 + 72) * v17, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      v19 = v28;
      sub_1B49919C0(v10, v28, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      WorkoutRecord.init(_:)(v19, v13);
      if (v2)
      {
        sub_1B4991A28(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
        sub_1B4991A28(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
      }

      v20 = v6;
      sub_1B4991A28(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      v29 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B4BCED9C((v21 > 1), v22 + 1, 1);
        v18 = v29;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      result = sub_1B4991A88(v13, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for WorkoutRecord);
      v6 = v20;
      if (v25 == v17)
      {
        result = sub_1B4991A28(v24, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
        *v23 = v18;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    *a2 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t WorkoutRecord.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = sub_1B4D1777C();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A30, &unk_1B4D1FC00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v59 - v19;
  v21 = sub_1B4D177CC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  sub_1B4D1778C();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1B4975024(v20, &qword_1EB8A6A30, &unk_1B4D1FC00);
LABEL_6:
    sub_1B4991628();
    swift_allocError();
    swift_willThrow();
    return sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  }

  v27 = *(v22 + 32);
  v67 = v22 + 32;
  v68 = a2;
  v66 = v27;
  result = (v27)(v26, v20, v21);
  v29 = a1[4];
  if (v29 < 0)
  {
    __break(1u);
  }

  else
  {
    v31 = a1[5];
    v30 = a1[6];

    v32._countAndFlagsBits = v31;
    v32._object = v30;
    WorkoutLocationType.init(rawValue:)(v32);
    if (v79 == 5)
    {
      (*(v22 + 8))(v26, v21);
      goto LABEL_6;
    }

    v77 = v79;
    v64 = v29;
    v65 = v3;
    v62 = v10;
    (*(v22 + 16))(v74, v26, v21);
    sub_1B4D176CC();
    sub_1B4D176CC();
    v33 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
    v34 = *(v33 + 44);
    v35 = (a1 + *(v33 + 40));
    v36 = v35[1];
    v63 = *v35;
    v60 = v34;
    sub_1B499167C(a1 + v34, v13);
    v37 = v71;
    v61 = *(v70 + 48);
    v38 = v61(v13, 1, v71);
    v70 = v36;

    sub_1B4975024(v13, &qword_1EB8A6A28, &qword_1B4D20160);
    if (v38 == 1)
    {
      (*(v22 + 8))(v26, v21);
      v71 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v42 = v62;
      sub_1B499167C(a1 + v60, v62);
      v43 = v61;
      if (v61(v42, 1, v37) == 1)
      {
        v44 = v69;
        *v69 = 0;
        v44[1] = 0xE000000000000000;
        v44[2] = MEMORY[0x1E69E7CC0];
        v44[3] = 0;
        v44[4] = 0xE000000000000000;
        sub_1B4D17BBC();
        if (v43(v42, 1, v37) != 1)
        {
          sub_1B4975024(v42, &qword_1EB8A6A28, &qword_1B4D20160);
        }
      }

      else
      {
        v44 = v69;
        sub_1B4991A88(v42, v69, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      }

      v46 = v44[3];
      v45 = v44[4];

      v47._countAndFlagsBits = v46;
      v47._object = v45;
      FitnessPlusModalityKind.init(rawValue:)(v47);
      v41 = v78;
      if (v78 == 15)
      {

        sub_1B49916EC();
        swift_allocError();
        swift_willThrow();
        sub_1B4991A28(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
        v48 = v73;
        v49 = *(v72 + 8);
        v49(v76, v73);
        v49(v75, v48);
        v50 = *(v22 + 8);
        v50(v74, v21);
        v50(v26, v21);
        return sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      }

      (*(v22 + 8))(v26, v21);
      v39 = v44[1];
      v71 = *v44;
      v40 = v44[2];

      sub_1B4991A28(v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
    }

    v51 = v68;
    v66(v68, v74, v21);
    v52 = type metadata accessor for WorkoutRecord(0);
    v53 = v73;
    v54 = *(v72 + 32);
    v54(v51 + v52[5], v75, v73);
    v54(v51 + v52[6], v76, v53);
    *(v51 + v52[7]) = v64;
    *(v51 + v52[8]) = v77;
    v55 = (v51 + v52[9]);
    v57 = v70;
    v56 = v71;
    *v55 = v63;
    v55[1] = v57;
    v58 = v51 + v52[10];
    *v58 = v56;
    *(v58 + 8) = v39;
    *(v58 + 16) = v40;
    *(v58 + 24) = v41;
    return sub_1B4991A28(a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  }

  return result;
}

uint64_t WorkoutWeekContext.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  sub_1B4991978(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4990AA8(void *a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for WorkoutRecord(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v22 = *(v10 - 8);
  v23 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v20 = a1;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF07C(0, v13, 0);
    v14 = v24;
    v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = *(v7 + 72);
    while (1)
    {
      v16 = sub_1B49919C0(v15, v9, type metadata accessor for WorkoutRecord);
      MEMORY[0x1EEE9AC00](v16);
      *(&v20 - 2) = v9;
      sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);
      sub_1B4D17DAC();
      if (v3)
      {
        break;
      }

      sub_1B4991A28(v9, type metadata accessor for WorkoutRecord);
      v24 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B4BCF07C((v17 > 1), v18 + 1, 1);
        v14 = v24;
      }

      *(v14 + 16) = v18 + 1;
      sub_1B4991A88(v12, v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      v15 += v21;
      if (!--v13)
      {
        a1 = v20;
        goto LABEL_9;
      }
    }

    sub_1B4991A28(v9, type metadata accessor for WorkoutRecord);
  }

  else
  {
LABEL_9:

    *a1 = v14;
  }

  return result;
}

uint64_t WorkoutRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);
  return sub_1B4D17DAC();
}

uint64_t *sub_1B4990E60(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v7 = sub_1B4991900();
  v8 = &v11;
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4991978(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    v8 = sub_1B4D17D6C();
    sub_1B4991A28(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  return v8;
}

void *sub_1B4990FA4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = sub_1B4B21B68(a2, a3, &v6);
  if (!v3)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B4990FD8()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  sub_1B4991978(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  return sub_1B4D17DAC();
}

void sub_1B4991098(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1779C();
  v10 = v9;

  *a1 = v8;
  a1[1] = v10;
  v11 = type metadata accessor for WorkoutRecord(0);
  sub_1B4D176DC();
  a1[2] = v12;
  sub_1B4D176DC();
  a1[3] = v13;
  v14 = *(a2 + v11[7]);
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    a1[4] = v14;
    v15 = *(a2 + v11[8]);
    if (v15 <= 1)
    {
      if (*(a2 + v11[8]))
      {
        v16 = 0xE600000000000000;
        v17 = 0x726F6F646E69;
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
      }
    }

    else if (v15 == 2)
    {
      v16 = 0xE700000000000000;
      v17 = 0x726F6F6474756FLL;
    }

    else if (v15 == 3)
    {
      v16 = 0xE900000000000072;
      v17 = 0x657461576E65706FLL;
    }

    else
    {
      v16 = 0xEC0000006C6F6F50;
      v17 = 0x676E696D6D697773;
    }

    a1[5] = v17;
    a1[6] = v16;
    v19 = (a2 + v11[9]);
    v20 = v19[1];
    if (v20)
    {
      v29 = *v19;
      v21 = v5;
      v22 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 40));

      *v22 = v29;
      v22[1] = v20;
      v5 = v21;
    }

    if (*(a2 + v11[10] + 8))
    {
      MEMORY[0x1EEE9AC00](v18);
      *(&v28 - 4) = v24;
      *(&v28 - 3) = v23;
      *(&v28 - 2) = v25;
      *(&v28 - 8) = v26;
      sub_1B4991978(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      sub_1B4D17DAC();
      v27 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
      sub_1B4975024(a1 + v27, &qword_1EB8A6A28, &qword_1B4D20160);
      sub_1B4991A88(v7, a1 + v27, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
      (*(v5 + 56))(a1 + v27, 0, 1, v4);
    }
  }
}

uint64_t sub_1B49913E8(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4991978(&qword_1EB8A6A70, type metadata accessor for WorkoutRecord, &protocol conformance descriptor for WorkoutRecord);
  (*(v7 + 32))(a1, v7);
  if (!v2)
  {
    sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);
    v1 = sub_1B4D17D6C();
    sub_1B4991A28(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
  }

  return v1;
}

uint64_t sub_1B4991568()
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4991978(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4991628()
{
  result = qword_1EB8A6A38;
  if (!qword_1EB8A6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A38);
  }

  return result;
}

uint64_t sub_1B499167C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B49916EC()
{
  result = qword_1EB8A6A40;
  if (!qword_1EB8A6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A40);
  }

  return result;
}

unint64_t sub_1B49918AC()
{
  result = qword_1EB8A6A68;
  if (!qword_1EB8A6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A68);
  }

  return result;
}

unint64_t sub_1B4991900()
{
  result = qword_1EB8A6A78;
  if (!qword_1EB8A6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A78);
  }

  return result;
}

uint64_t sub_1B4991978(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B49919C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4991A28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4991A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4991B34()
{
  result = qword_1EB8A6A88;
  if (!qword_1EB8A6A88)
  {
    type metadata accessor for WorkoutDetailFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A88);
  }

  return result;
}

unint64_t sub_1B4991B90()
{
  result = qword_1EB8A6A90;
  if (!qword_1EB8A6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6A90);
  }

  return result;
}

uint64_t sub_1B4991BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4991C88, 0, 0);
}

uint64_t sub_1B4991C88()
{
  v1 = v0[5];
  sub_1B4992268(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4991D98;
  v4 = v0[5];
  v5 = v0[2];

  return sub_1B4CAE2F0(v5, v4);
}

uint64_t sub_1B4991D98(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  sub_1B4975024(v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_1B4991ECC(uint64_t a1)
{
  v2 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4992268(a1, v7, type metadata accessor for WorkoutState);
  v8 = *&v7[*(v5 + 52)];
  if (v8)
  {
    v9 = *(v5 + 36);
    v10 = sub_1B4D1777C();
    (*(*(v10 - 8) + 16))(v4, &v7[v9], v10);
    v11 = v8;
    sub_1B49922D0(v7, type metadata accessor for WorkoutState);
    [v11 coordinate];
    v13 = v12;
    [v11 coordinate];
    v15 = v14;
    [v11 altitude];
    v16 = [objc_opt_self() meters];
    sub_1B499221C();
    sub_1B4D1741C();
    *&v4[*(v2 + 20)] = v13;
    *&v4[*(v2 + 24)] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6AA0, &qword_1B4D1B1D0);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A6AA8, &qword_1B4D1B1D8) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B4D1A800;
    sub_1B4992268(v4, v19 + v18, type metadata accessor for LocationCoordinate);
    type metadata accessor for FitnessContextQueryDescriptor(0);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1B4C948D4(v19);
    swift_setDeallocating();
    sub_1B4975024(v19 + v18, qword_1EB8A6AA8, &qword_1B4D1B1D8);
    swift_deallocClassInstance();

    sub_1B49922D0(v4, type metadata accessor for LocationCoordinate);
    return v20;
  }

  else
  {
    sub_1B49922D0(v7, type metadata accessor for WorkoutState);
    return sub_1B4C948D4(MEMORY[0x1E69E7CC0]);
  }
}

unint64_t sub_1B499221C()
{
  result = qword_1EDC3CB80;
  if (!qword_1EDC3CB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC3CB80);
  }

  return result;
}

uint64_t sub_1B4992268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B49922D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4992338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4992374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B49923BC(uint64_t result, int a2, int a3)
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

unint64_t sub_1B499248C()
{
  result = qword_1EB8A6B38;
  if (!qword_1EB8A6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B38);
  }

  return result;
}

uint64_t sub_1B49924E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4992584, 0, 0);
}

uint64_t sub_1B4992584()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4992680;
  v4 = v0[5];
  v5 = v0[2];

  return sub_1B4CBEC54(v5, v4);
}

uint64_t sub_1B4992680(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_1B49933E8(*(v4 + 40));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B49927F0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1B49927F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4992854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B49928B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67B0, &unk_1B4D1AA60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v78 - v3;
  v5 = sub_1B4D1777C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v78 - v10;
  v12 = type metadata accessor for DateRangeDescriptor(0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WorkoutState(0);
  v101[3] = v14;
  v101[4] = &protocol witness table for WorkoutState;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
  sub_1B4992854(a1, boxed_opaque_existential_1);
  v16 = sub_1B4CAC70C(boxed_opaque_existential_1);
  v17 = *(v16 + 2);
  v18 = 32;
  do
  {
    if (!v17)
    {

      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v49 = sub_1B4D17F6C();
      __swift_project_value_buffer(v49, qword_1EDC36F00);
      v50 = sub_1B4D17F5C();
      v51 = sub_1B4D1873C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v98[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_1B49558AC(0xD000000000000022, 0x80000001B4D4EF90, v98);
        _os_log_impl(&dword_1B4953000, v50, v51, "%s does not support this workout state", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x1B8C7DDA0](v53, -1, -1);
        MEMORY[0x1B8C7DDA0](v52, -1, -1);
      }

      v45 = sub_1B4C94A9C(MEMORY[0x1E69E7CC0]);
      goto LABEL_28;
    }

    v19 = *&v16[v18];
    v18 += 8;
    --v17;
  }

  while (v19 != 1);
  v79 = v8;
  v83 = v4;

  v96 = [*(boxed_opaque_existential_1 + *(v14 + 24)) effectiveTypeIdentifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B40, &qword_1B4D1B2B8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B48, &unk_1B4D1B2C0);
  v93 = v20;
  v21 = *(v20 - 8);
  v85 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v89 = v11;
  v87 = v14;
  v86 = v23;
  *(v23 + 16) = xmmword_1B4D1AA70;
  v24 = *(v20 + 48);
  v92 = v23 + v22;
  v25 = v23 + v22 + v24;
  *(v23 + v22) = 0;
  v26 = *(v14 + 36);
  v80 = v6;
  v27 = *(v6 + 16);
  v28 = v26;
  v91 = v26;
  v27(v25, boxed_opaque_existential_1 + v26, v5);
  swift_storeEnumTagMultiPayload();
  v29 = v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  v31 = swift_allocObject();
  v94 = boxed_opaque_existential_1;
  v32 = v31;
  v90 = xmmword_1B4D1A800;
  *(v31 + 16) = xmmword_1B4D1A800;
  *(v31 + 32) = v96;
  v33 = type metadata accessor for WorkoutPropertiesQuery(0);
  v88 = v12;
  v34 = v29;
  v35 = v33;
  v36 = (v25 + v33[5]);
  v37 = MEMORY[0x1E69E7CC0];
  *v36 = MEMORY[0x1E69E7CC0];
  v36[1] = v37;
  v36[2] = v37;
  v36[3] = v32;
  v36[4] = v37;
  v36[5] = v37;
  *(v25 + v33[6]) = v37;
  *(v25 + v33[7]) = &unk_1F2CB8438;
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v39 = v92 + v85 + *(v93 + 48);
  *(v92 + v85) = 1;
  v40 = v94 + v28;
  v41 = v95;
  v85 = v34;
  v84 = v27;
  v27(v95, v40, v34);
  swift_storeEnumTagMultiPayload();
  v82 = v30;
  v42 = swift_allocObject();
  *(v42 + 16) = v90;
  *(v42 + 32) = v96;
  sub_1B4993450(v41, v39);
  v43 = (v39 + v35[5]);
  *v43 = v37;
  v43[1] = v37;
  v43[2] = v37;
  v43[3] = v42;
  v44 = v94;
  v43[4] = v37;
  v43[5] = v37;
  *(v39 + v35[6]) = v37;
  v81 = v35;
  *(v39 + v35[7]) = &unk_1F2CB8460;
  v95 = Descriptor;
  swift_storeEnumTagMultiPayload();
  v45 = sub_1B4C94A9C(v86);
  swift_setDeallocating();
  swift_arrayDestroy();
  v46 = v89;
  swift_deallocClassInstance();
  v100 = v45;
  v47 = v87;
  sub_1B4D1770C();
  DayOfWeek.init(from:)(v46, v98);
  v48 = LOBYTE(v98[0]);
  if (LOBYTE(v98[0]) <= 3u)
  {
    if (LOBYTE(v98[0]) <= 1u && !LOBYTE(v98[0]))
    {
LABEL_24:

      goto LABEL_27;
    }

LABEL_17:
    v54 = sub_1B4D18DCC();

    if ((v54 & 1) == 0)
    {
      if (v48 == 1)
      {
        goto LABEL_24;
      }

      v70 = sub_1B4D18DCC();

      if ((v70 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    v71 = v83;
    v84(v83, v44 + v91, v85);
    swift_storeEnumTagMultiPayload();
    v72 = swift_allocObject();
    *(v72 + 16) = v90;
    *(v72 + 32) = v96;
    v73 = v81;
    v74 = (v71 + v81[5]);
    v75 = MEMORY[0x1E69E7CC0];
    *v74 = MEMORY[0x1E69E7CC0];
    v74[1] = v75;
    v74[2] = v75;
    v74[3] = v72;
    v74[4] = v75;
    v74[5] = v75;
    *(v71 + v73[6]) = v75;
    *(v71 + v73[7]) = &unk_1F2CB8488;
    v76 = v95;
    swift_storeEnumTagMultiPayload();
    (*(*(v76 - 1) + 56))(v71, 0, 1, v76);
    sub_1B49CA980(v71, 2);
    v45 = v100;
    goto LABEL_28;
  }

  if (LOBYTE(v98[0]) <= 5u || LOBYTE(v98[0]) == 6)
  {
    goto LABEL_17;
  }

  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v55 = sub_1B4D17F6C();
  __swift_project_value_buffer(v55, qword_1EDC36F00);
  sub_1B497558C(v101, v98);
  v56 = sub_1B4D17F5C();
  v57 = sub_1B4D186FC();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v85;
  v60 = v80;
  if (v58)
  {
    v61 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = v96;
    *v61 = 136315138;
    v62 = __swift_project_boxed_opaque_existential_1(v98, v99);
    v63 = v79;
    v84(v79, &v62[*(v47 + 36)], v59);
    __swift_project_boxed_opaque_existential_1(v98, v99);
    sub_1B4D1770C();
    v64 = *(v60 + 8);
    v64(v63, v59);
    sub_1B49934B4(&qword_1EB8A6B58, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v65 = sub_1B4D18D5C();
    v67 = v66;
    v64(v46, v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v98);
    v68 = sub_1B49558AC(v65, v67, &v97);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_1B4953000, v56, v57, "Failed to create day fact. Today: %s", v61, 0xCu);
    v69 = v96;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    MEMORY[0x1B8C7DDA0](v69, -1, -1);
    MEMORY[0x1B8C7DDA0](v61, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v98);
  }

LABEL_28:
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  return v45;
}

uint64_t sub_1B49933E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4993450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateRangeDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B49934B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

unint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD0000000000000C0;
  }

  else
  {
    return 0xD000000000000090;
  }
}

uint64_t sub_1B49935A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD0000000000000C0;
  }

  else
  {
    v3 = 0xD000000000000090;
  }

  if (v2)
  {
    v4 = "elow my 28-day baseline.";
  }

  else
  {
    v4 = "_type> workouts.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD0000000000000C0;
  }

  else
  {
    v6 = 0xD000000000000090;
  }

  if (*a2)
  {
    v7 = "_type> workouts.";
  }

  else
  {
    v7 = "elow my 28-day baseline.";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4993654()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49936D4(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4993740(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B49937BC@<X0>(char *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1B499381C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD0000000000000C0;
  }

  else
  {
    v2 = 0xD000000000000090;
  }

  if (*v1)
  {
    v3 = "_type> workouts.";
  }

  else
  {
    v3 = "elow my 28-day baseline.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceMilestoneWorkoutDistanceFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1B2D0;
  sub_1B4993B98(v1, v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1B4993BFC(v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1B4993C60;
  *(v8 + 24) = v7;
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = 0x80000001B4D4EFC0;
  *(v5 + 48) = sub_1B4993CDC;
  *(v5 + 56) = v8;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  [*(v1 + v2[7]) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v10 = result;
    v11 = sub_1B4D1818C();
    v13 = v12;

    strcpy((v5 + 80), "activity_type");
    *(v5 + 94) = -4864;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v5 + 96) = sub_1B4993DFC;
    *(v5 + 104) = v14;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v23[1] = *(v1 + v2[8]);
    v15 = sub_1B4D18D5C();
    v17 = v16;
    strcpy((v5 + 128), "workout_count");
    *(v5 + 142) = -4864;
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v17;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v18;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    v19 = *(v1 + v2[6]);
    v20 = *&aThisDaythisWee[8 * v19];
    v21 = qword_1B4D1B420[v19];
    *(v5 + 176) = 0xD000000000000015;
    *(v5 + 184) = 0x80000001B4D4EFE0;
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    *(v5 + 192) = sub_1B4994004;
    *(v5 + 200) = v22;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4993B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4993BFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4993C60()
{
  v1 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1B4D133E8(v2 + *(v1 + 20), *(v2 + *(v1 + 28)), 0, 1);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0) + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1B4993E08()
{
  result = qword_1EB8A6B68;
  if (!qword_1EB8A6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B68);
  }

  return result;
}

unint64_t sub_1B4993E60()
{
  result = qword_1EB8A6B70;
  if (!qword_1EB8A6B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6B78, &qword_1B4D1B380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B70);
  }

  return result;
}

unint64_t sub_1B4993EC8()
{
  result = qword_1EB8A6B80;
  if (!qword_1EB8A6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B80);
  }

  return result;
}

unint64_t sub_1B4993F20()
{
  result = qword_1EB8A6B88;
  if (!qword_1EB8A6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6B88);
  }

  return result;
}