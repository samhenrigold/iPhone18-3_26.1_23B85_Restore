uint64_t sub_1B7A3D258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7957820(a1, &v8, &qword_1EBA47828, &qword_1B7AA0240);
  if (v9)
  {
    sub_1B795C1E4(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 24))(a2, a3, v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1B7957888(&v8, &qword_1EBA47828, &qword_1B7AA0240);
    return sub_1B7A99720();
  }
}

uint64_t ContentUnavailableButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B797E788(a1, a7, &qword_1EBA47018, &qword_1B7A9EFA0);
  v14 = type metadata accessor for ContentUnavailableButton(0, a5, a6, v13);
  sub_1B795C1E4(a2, a7 + *(v14 + 36));
  type metadata accessor for ContentUnavailableButton.Action(0, a5, a6, v15);
  result = swift_storeEnumTagMultiPayload();
  v17 = (a7 + *(v14 + 40));
  *v17 = a3;
  v17[1] = a4;
  return result;
}

uint64_t ContentUnavailableButton.init(role:url:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B797E788(a1, a7, &qword_1EBA47018, &qword_1B7A9EFA0);
  v14 = type metadata accessor for ContentUnavailableButton(0, a5, a6, v13);
  v15 = *(v14 + 36);
  v16 = sub_1B7A96B90();
  (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
  type metadata accessor for ContentUnavailableButton.Action(0, a5, a6, v17);
  result = swift_storeEnumTagMultiPayload();
  v19 = (a7 + *(v14 + 40));
  *v19 = a3;
  v19[1] = a4;
  return result;
}

uint64_t ContentUnavailableButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = sub_1B7A98000();
  v6 = sub_1B7A97B40();
  v101 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v110 = (&v94 - v7);
  v118 = v5;
  v102 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v108 = &v94 - v11;
  v111 = sub_1B7A96B90();
  v109 = *(v111 - 1);
  MEMORY[0x1EEE9AC00](v111);
  v97 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v107 = &v94 - v14;
  v16 = type metadata accessor for ActionButton(0, v4, v3, v15);
  v103 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v94 - v19;
  v20 = sub_1B7A98770();
  v117 = v16;
  v21 = sub_1B7A97B40();
  v99 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v106 = (&v94 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v94 - v24;
  v115 = v20;
  v94 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v96 = &v94 - v30;
  v105 = v3;
  v32 = type metadata accessor for ContentUnavailableButton.Action(0, v4, v3, v31);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v94 - v34;
  v116 = v21;
  v36 = v104;
  v119 = v6;
  v37 = sub_1B7A97B40();
  v113 = *(v37 - 8);
  v114 = v37;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v112 = &v94 - v39;
  (*(v33 + 16))(v35, v36 + *(a1 + 36), v32, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v55 = v109;
    v56 = v107;
    v57 = v111;
    if (EnumCaseMultiPayload == 2)
    {
      (*(v109 + 32))(v107, v35, v111);
      (*(v55 + 16))(v97, v56, v57);
      v58 = v100;
      sub_1B7A97FE0();
      v59 = v118;
      WitnessTable = swift_getWitnessTable();
      v61 = v108;
      sub_1B7957EE0(v58, v59, WitnessTable);
      v106 = *(v102 + 8);
      v106(v58, v59);
      sub_1B7957EE0(v61, v59, WitnessTable);
      sub_1B79B5878(v58, v59, v59, WitnessTable, WitnessTable);
      v62 = swift_getWitnessTable();
      v63 = swift_getWitnessTable();
      v130[7] = v62;
      v130[8] = v63;
      v64 = v116;
      v105 = swift_getWitnessTable();
      v130[5] = WitnessTable;
      v130[6] = WitnessTable;
    }

    else
    {
      (*(v109 + 32))(v107, v35, v111);
      (*(v55 + 16))(v97, v56, v57);
      v58 = v100;
      sub_1B7A97FF0();
      v59 = v118;
      v78 = swift_getWitnessTable();
      v79 = v108;
      sub_1B7957EE0(v58, v59, v78);
      v106 = *(v102 + 8);
      v106(v58, v59);
      sub_1B7957EE0(v79, v59, v78);
      sub_1B7959A28(v58, v59, v59, v78, v78);
      v80 = swift_getWitnessTable();
      v81 = swift_getWitnessTable();
      v137 = v80;
      v138 = v81;
      v64 = v116;
      v105 = swift_getWitnessTable();
      v135 = v78;
      v136 = v78;
    }

    v82 = v119;
    v83 = swift_getWitnessTable();
    v84 = v112;
    v85 = v110;
    sub_1B7959A28(v110, v64, v82, v105, v83);
    (*(v101 + 8))(v85, v82);
    v86 = v106;
    v106(v58, v59);
    v86(v108, v59);
    v53 = v84;
    (*(v109 + 8))(v107, v111);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B795C1E4(v35, v130);
    sub_1B7957820(v36, v25, &qword_1EBA47018, &qword_1B7A9EFA0);
    sub_1B7999E90(v130, v129);
    v65 = v95;
    ActionButton.init(role:action:label:)(v25, v129, *(v36 + *(a1 + 40)), *(v36 + *(a1 + 40) + 8), v4, v105, v95);
    v66 = v117;
    v67 = swift_getWitnessTable();
    v68 = v98;
    sub_1B7957EE0(v65, v66, v67);
    v69 = *(v103 + 8);
    v103 += 8;
    v111 = v69;

    (v69)(v65, v66);
    sub_1B7957EE0(v68, v66, v67);
    v70 = v115;
    v71 = swift_getWitnessTable();
    sub_1B7959A28(v65, v70, v66, v71, v67);
    v127 = v71;
    v128 = v67;
    v72 = v116;
    v73 = swift_getWitnessTable();
    v125 = swift_getWitnessTable();
    v126 = v125;
    v74 = v119;
    v75 = swift_getWitnessTable();
    v53 = v112;
    v76 = v106;
    sub_1B79B5878(v106, v72, v74, v73, v75);
    (*(v99 + 8))(v76, v72);
    v77 = v111;
    (v111)(v65, v66);
    v77(v98, v66);
    __swift_destroy_boxed_opaque_existential_1(v130);
  }

  else
  {
    v41 = *(v35 + 1);
    sub_1B7957820(v36, v25, &qword_1EBA47018, &qword_1B7A9EFA0);
    v111 = v41;

    sub_1B7A98720();
    v42 = v115;
    v43 = swift_getWitnessTable();
    v44 = v96;
    sub_1B7957EE0(v28, v42, v43);
    v110 = *(v94 + 8);
    (v110)(v28, v42);
    sub_1B7957EE0(v44, v42, v43);
    v45 = v117;
    v46 = swift_getWitnessTable();
    sub_1B79B5878(v28, v42, v45, v43, v46);
    v123 = v43;
    v124 = v46;
    v47 = v116;
    v109 = swift_getWitnessTable();
    v121 = swift_getWitnessTable();
    v122 = v121;
    v48 = v119;
    v49 = swift_getWitnessTable();
    v50 = v112;
    v51 = v106;
    sub_1B79B5878(v106, v47, v48, v109, v49);

    (*(v99 + 8))(v51, v47);
    v52 = v28;
    v53 = v50;
    v54 = v110;
    (v110)(v52, v42);
    v54(v96, v42);
  }

  v87 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v133 = v87;
  v134 = v88;
  v89 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v132 = v131;
  v90 = swift_getWitnessTable();
  v130[9] = v89;
  v130[10] = v90;
  v91 = v114;
  v92 = swift_getWitnessTable();
  sub_1B7957EE0(v53, v91, v92);
  return (*(v113 + 8))(v53, v91);
}

uint64_t sub_1B7A3E2EC(double a1)
{
  v2 = sub_1B7A97FB0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  *&v10[1] = a1;
  v6 = (*(v5 + 104))(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6980F00], v3);
  sub_1B7A4261C(v6, v7, v8);
  return sub_1B7A971D0();
}

uint64_t sub_1B7A3E3DC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = *(a1 + 24);
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 24) = v7;
  (*(v2 + 32))(v6 + v5, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1B7A97590();
  sub_1B7A97590();
  v22 = v7;
  v23 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v21 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v8 = sub_1B7A97050();
  v9 = swift_getWitnessTable();
  v24 = v8;
  v25 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = v8;
  v25 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = OpaqueTypeMetadata2;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v24 = OpaqueTypeMetadata2;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = sub_1B7A973D0();
  v17 = v12;
  v13 = sub_1B7A973E0();
  v14 = swift_getWitnessTable();
  sub_1B7957EE0(&v16, v13, v14);

  v16 = v24;
  v17 = v25;
  sub_1B7957EE0(&v16, v13, v14);
}

uint64_t sub_1B7A3E738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a2;
  v43 = a1;
  v54 = a5;
  v7 = sub_1B7A97D60();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A97B60();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  sub_1B7A97590();
  sub_1B7A97590();
  v44 = a4;
  v62 = a4;
  v63 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v61 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697EBF8];
  v38 = swift_getWitnessTable();
  v11 = sub_1B7A97050();
  v39 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = swift_getWitnessTable();
  v56 = v11;
  v57 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = &v38 - v16;
  v56 = v11;
  v57 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = OpaqueTypeMetadata2;
  v57 = OpaqueTypeConformance2;
  v41 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v38 - v22;
  sub_1B7A9A760();
  v40 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_1B7A97EC0();
  MEMORY[0x1EEE9AC00](v24);
  v25 = v44;
  *(&v38 - 4) = v42;
  *(&v38 - 3) = v25;
  v26 = v45;
  *(&v38 - 2) = v43;
  *(&v38 - 1) = v26;
  sub_1B7A97060();
  v27 = v48;
  sub_1B7A97B50();
  v28 = sub_1B7A97EC0();
  sub_1B7A97EB0();
  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v28)
  {
    sub_1B7A97EB0();
  }

  sub_1B7A982F0();
  (*(v49 + 8))(v27, v50);
  (*(v39 + 8))(v13, v11);
  v29 = v51;
  sub_1B7A97B50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48750, &qword_1B7AA35A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7A9D270;
  v31 = sub_1B7A97EC0();
  *(inited + 32) = v31;
  v32 = sub_1B7A97EA0();
  *(inited + 33) = v32;
  sub_1B7A97EB0();
  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v31)
  {
    sub_1B7A97EB0();
  }

  sub_1B7A97EB0();
  if (sub_1B7A97EB0() != v32)
  {
    sub_1B7A97EB0();
  }

  v33 = v41;
  v34 = v55;
  sub_1B7A98230();
  (*(v52 + 8))(v29, v53);
  (*(v47 + 8))(v34, OpaqueTypeMetadata2);
  v56 = OpaqueTypeMetadata2;
  v57 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  sub_1B7957EE0(v20, v18, v35);
  v36 = *(v46 + 8);
  v36(v20, v18);
  sub_1B7957EE0(v23, v18, v35);
  v36(v23, v18);
}

uint64_t sub_1B7A3EEAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21 = a1;
  v24 = a4;
  v19[2] = a2;
  sub_1B7A97590();
  sub_1B7A97590();
  v29 = a3;
  v30 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v28 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  v5 = sub_1B7A987E0();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = sub_1B7A97590();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v20 = v19 - v12;
  sub_1B7A9A760();
  v19[1] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A972E0();
  v13 = sub_1B7A97990();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B7A987D0();
  sub_1B7A972E0();
  sub_1B7A972E0();
  sub_1B7A98A20();
  v18 = swift_getWitnessTable();
  sub_1B7A98410();
  (*(v22 + 8))(v7, v5);
  v25 = v18;
  v26 = MEMORY[0x1E697EBF8];
  v14 = swift_getWitnessTable();
  v15 = v20;
  sub_1B7957EE0(v10, v8, v14);
  v16 = *(v23 + 8);
  v16(v10, v8);
  sub_1B7957EE0(v15, v8, v14);
  v16(v15, v8);
}

uint64_t sub_1B7A3F2C8@<X0>(uint64_t (**a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = a1;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97590();
  v30 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v25 - v9;
  v10 = sub_1B7A97590();
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v25 - v13;
  sub_1B7A9A760();
  v27 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*v33)(isCurrentExecutor);
  sub_1B7A972E0();
  v16 = v15;
  type metadata accessor for _ContentUnavailableScrollView(0, a2, a3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8, &qword_1B7AA4F88);
  sub_1B7A971E0();
  if (v16 >= v38)
  {
    sub_1B7A97F30();
  }

  else
  {
    sub_1B7A97ED0();
  }

  v18 = v26;
  sub_1B7A98450();
  (*(v25 + 8))(v7, a2);
  sub_1B7A972E0();
  sub_1B7A971E0();
  sub_1B7A98A20();
  v36 = a3;
  v37 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v20 = v28;
  sub_1B7A98400();
  (*(v30 + 8))(v18, v8);
  v34 = WitnessTable;
  v35 = MEMORY[0x1E697E040];
  v21 = swift_getWitnessTable();
  v22 = v29;
  sub_1B7957EE0(v20, v10, v21);
  v23 = *(v31 + 8);
  v23(v20, v10);
  sub_1B7957EE0(v22, v10, v21);
  v23(v22, v10);
}

uint64_t sub_1B7A3F714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000, &qword_1B7AA52E0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49008, &qword_1B7AA52E8);
  sub_1B7A97590();
  v21 = *(a1 + 24);
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  v19 = *(a1 + 32);
  v3 = sub_1B7A97930();
  v20 = *(a1 + 56);
  v33 = v19;
  v34 = v3;
  v35 = v20;
  v36 = sub_1B7A42C8C(&qword_1EBA49010, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  v4 = sub_1B7A987E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = sub_1B7A97590();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1B7A97990();
  v25 = v22;
  v26 = v21;
  v27 = v19;
  v28 = *(a1 + 40);
  v29 = v20;
  v30 = v23;
  sub_1B7A987D0();
  sub_1B7A97ED0();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98450();
  (*(v5 + 8))(v7, v4);
  v31 = WitnessTable;
  v32 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  sub_1B7957EE0(v11, v8, v16);
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_1B7957EE0(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_1B7A3FB78@<X0>(uint64_t (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void, void)@<X4>, void (*a6)(void, void)@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v124 = a6;
  v116 = a5;
  v140 = a8;
  v13 = sub_1B7A97930();
  v134 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v131 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B7A42C8C(&qword_1EBA49010, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
  v137 = a4;
  v153 = a4;
  v154 = v13;
  v136 = v13;
  v138 = a7;
  v155 = a7;
  v156 = v17;
  v126 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v127 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v125 = &v106 - v19;
  v129 = v20;
  v139 = sub_1B7A97590();
  v132 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v135 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v106 - v23;
  v118 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v111 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  v123 = a3;
  v26 = sub_1B7A97590();
  v113 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v109 = &v106 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000, &qword_1B7AA52E0);
  v115 = v26;
  v28 = sub_1B7A97590();
  v114 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v106 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  v117 = v28;
  v30 = sub_1B7A97590();
  v119 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v112 = &v106 - v31;
  v120 = v32;
  v145 = sub_1B7A97590();
  v122 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v148 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v144 = &v106 - v35;
  v36 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1B7A97590();
  v107 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v106 - v41;
  v43 = sub_1B7A97590();
  v108 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v106 - v44;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49008, &qword_1B7AA52E8);
  v143 = sub_1B7A97590();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v147 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v146 = &v106 - v48;
  sub_1B7A9A760();
  v121 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*a1)(isCurrentExecutor);
  sub_1B7A97FA0();
  sub_1B7A97F60();
  v141 = a1;

  v50 = a2;
  v51 = v116;
  sub_1B7A983B0();

  (*(v36 + 8))(v39, v50);
  v52 = MEMORY[0x1E6980A18];
  v53 = sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0, &unk_1B7AA7590, MEMORY[0x1E6980A18]);
  v152[17] = v51;
  v152[18] = v53;
  WitnessTable = swift_getWitnessTable();
  sub_1B7A98340();
  (*(v107 + 8))(v42, v40);
  v153 = sub_1B7A98550();
  v55 = sub_1B797EC34(&qword_1EBA49018, &qword_1EBA49000, &qword_1B7AA52E0, v52);
  v152[15] = WitnessTable;
  v152[16] = v55;
  v56 = swift_getWitnessTable();
  v57 = v147;
  sub_1B7A981D0();

  (*(v108 + 8))(v45, v43);
  v58 = MEMORY[0x1E6980490];
  v59 = sub_1B797EC34(&qword_1EBA49020, &qword_1EBA49008, &qword_1B7AA52E8, MEMORY[0x1E6980490]);
  v152[13] = v56;
  v152[14] = v59;
  v60 = v143;
  v107 = swift_getWitnessTable();
  sub_1B7957EE0(v57, v60, v107);
  v61 = *(v142 + 8);
  v108 = v142 + 8;
  v116 = v61;
  v62 = (v61)(v57, v60);
  v63 = v111;
  v141[2](v62);
  sub_1B7A97F50();
  v64 = v109;
  v65 = v123;
  v66 = v124;
  sub_1B7A983B0();

  (*(v118 + 8))(v63, v65);
  v152[11] = v66;
  v152[12] = v53;
  v67 = v115;
  v68 = swift_getWitnessTable();
  v69 = v110;
  sub_1B7A98340();
  (*(v113 + 8))(v64, v67);
  LODWORD(v153) = sub_1B7A97C60();
  v152[9] = v68;
  v152[10] = v55;
  v70 = v117;
  v71 = swift_getWitnessTable();
  v72 = v112;
  sub_1B7A981D0();
  (*(v114 + 8))(v69, v70);
  sub_1B7A97EE0();
  v73 = sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450, &unk_1B7AA52F0, v58);
  v152[7] = v71;
  v152[8] = v73;
  v74 = v120;
  v75 = swift_getWitnessTable();
  v76 = v148;
  sub_1B7A98450();
  (*(v119 + 8))(v72, v74);
  v152[5] = v75;
  v152[6] = MEMORY[0x1E697E5D8];
  v77 = v145;
  v120 = swift_getWitnessTable();
  sub_1B7957EE0(v76, v77, v120);
  v78 = v122;
  v79 = *(v122 + 8);
  v123 = v122 + 8;
  v124 = v79;
  v80 = (v79)(v76, v77);
  v81 = v128;
  v141[4](v80);
  v82 = v131;
  sub_1B7A97920();
  v83 = v125;
  v84 = v137;
  v85 = v136;
  v86 = v138;
  v87 = v126;
  sub_1B7A98110();
  (*(v134 + 8))(v82, v85);
  (*(v130 + 8))(v81, v84);
  sub_1B7A97EE0();
  v153 = v84;
  v154 = v85;
  v155 = v86;
  v156 = v87;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v89 = v135;
  v90 = v129;
  sub_1B7A98450();
  (*(v127 + 8))(v83, v90);
  v152[3] = OpaqueTypeConformance2;
  v152[4] = MEMORY[0x1E697E5D8];
  v91 = v139;
  v92 = swift_getWitnessTable();
  v93 = v133;
  sub_1B7957EE0(v89, v91, v92);
  v94 = v132;
  v141 = *(v132 + 8);
  (v141)(v89, v91);
  v95 = v147;
  v96 = v143;
  (*(v142 + 16))(v147, v146, v143);
  v153 = v95;
  v97 = *(v78 + 16);
  v98 = v148;
  v99 = v144;
  v100 = v145;
  v97(v148, v144, v145);
  v154 = v98;
  (*(v94 + 16))(v89, v93, v91);
  v155 = v89;
  v152[0] = v96;
  v101 = v100;
  v152[1] = v100;
  v152[2] = v91;
  v149 = v107;
  v150 = v120;
  v151 = v92;
  sub_1B7959BAC(&v153, 3uLL, v152);
  v102 = v141;
  (v141)(v93, v91);
  v103 = v124;
  v124(v99, v101);
  v104 = v116;
  v116(v146, v96);
  (v102)(v89, v91);
  v103(v148, v101);
  v104(v147, v96);
}

uint64_t sub_1B7A40CA8(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v57 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49028, &qword_1B7AA5300);
  MEMORY[0x1EEE9AC00](v59);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v52 - v5;
  v64 = sub_1B7A97880();
  v6 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B7A96E10();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1B7A96EA0();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A96E70();
  sub_1B7A96E00();
  v13 = sub_1B7A96E20();
  v63 = v2;
  v14 = (*v2)(v13);
  v16 = v15;
  v18 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49030, &qword_1B7AA5308);
  sub_1B7A97DA0();
  sub_1B7A98050();
  sub_1B795A450(v14, v16, v18 & 1);

  v20 = v6 + 8;
  v21 = *(v6 + 8);
  v61 = v20;
  v21(v8, v64);
  v22 = sub_1B7A96E60();
  v23 = v63[2](v22);
  v25 = v24;
  LOBYTE(v14) = v26;
  v58 = v19;
  sub_1B7A97DA0();
  sub_1B7A98050();
  sub_1B795A450(v23, v25, v14 & 1);

  v53 = v21;
  v21(v8, v64);
  v27 = sub_1B7A96E30();
  v28 = v63[4];
  if (v28)
  {
    v29 = v54;
    v28(v27);
    v30 = v29;
    v31 = v60;
    v32 = sub_1B797E788(v30, v60, &qword_1EBA49028, &qword_1B7AA5300);
    (*(v31 + *(v59 + 40)))(v65, v32);
    v33 = v65[0];
    v34 = v65[1];
    v35 = v66;
    v36 = v8;
    sub_1B7A97DA0();
    sub_1B7A98050();
    sub_1B795A450(v33, v34, v35);

    v37 = v64;
    v38 = v53;
    v53(v8, v64);
    v39 = sub_1B7A96E80();
    sub_1B7A9AB40();
    v39(v65, 0);
    sub_1B7A97DA0();
    v40 = v60;
    v41 = sub_1B7A3CBEC(v36);
    v43 = v42;
    v38(v36, v37);
    sub_1B79596F8(0, &qword_1EDC100E8, 0x1E69DC628);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v43;

    sub_1B7A9AB30();
    v45 = sub_1B7A96E50();
    sub_1B7A96E40();
    v45(v65, 0);

    sub_1B7957888(v40, &qword_1EBA49028, &qword_1B7AA5300);
  }

  else
  {
    v46 = sub_1B7A96E80();
    sub_1B7A9AB40();
    v46(v65, 0);
    v47 = sub_1B7A96E50();
    sub_1B7A96E40();
    v47(v65, 0);
  }

  v48 = v56;
  v67 = v56;
  v68 = MEMORY[0x1E69DC1D0];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v65);
  v50 = v55;
  (*(v55 + 16))(boxed_opaque_existential_1Tm, v12, v48);
  sub_1B7A9AAC0();
  return (*(v50 + 8))(v12, v48);
}

uint64_t sub_1B7A41310(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

void *sub_1B7A413C0()
{
  v0 = sub_1B7A96EA0();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B79596F8(0, &qword_1EDC100F0, 0x1E69DC8D0);
  sub_1B7A96E70();
  v1 = sub_1B7A9AAD0();
  [v1 setScrollEnabled_];
  LODWORD(v2) = 1132068864;
  [v1 setContentCompressionResistancePriority:0 forAxis:v2];
  return v1;
}

uint64_t sub_1B7A4150C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A42C38(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B7A41570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A42C38(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B7A415D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A42C38(a1, a2, a3);
  sub_1B7A97AE0();
  __break(1u);
}

uint64_t sub_1B7A415FC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7A41644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 88) = 0;
  *(a7 + 72) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 96) = swift_getKeyPath();
  *(a7 + 104) = 0;
  *(a7 + 112) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46C10, &unk_1B7AA5330);
  v15 = v14[22];
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  swift_storeEnumTagMultiPayload();
  v16 = a7 + v14[23];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a7 + v14[24];
  result = swift_getKeyPath();
  *v17 = result;
  *(v17 + 8) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = 0;
  return result;
}

uint64_t ContentUnavailableView.init(title:message:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *(a9 + 88) = 0;
  *(a9 + 72) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 96) = swift_getKeyPath();
  *(a9 + 104) = 0;
  *(a9 + 112) = swift_getKeyPath();
  *(a9 + 120) = 0;
  v26[0] = a7;
  v26[1] = a8;
  v27 = a10;
  v28 = a11;
  v29 = a12;
  v20 = type metadata accessor for ContentUnavailableView(0, v26);
  v21 = v20[22];
  *(a9 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  swift_storeEnumTagMultiPayload();
  v22 = a9 + v20[23];
  *v22 = swift_getKeyPath();
  *(v22 + 8) = 0;
  v23 = a9 + v20[24];
  result = swift_getKeyPath();
  *v23 = result;
  *(v23 + 8) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = 0;
  return result;
}

uint64_t ContentUnavailableView.init<>(title:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v10 = MEMORY[0x1E6981E70];
  *(&v10 + 1) = a7;
  return ContentUnavailableView.init(title:message:action:)(a1, a2, a3, a4, nullsub_1, 0, a5, a6, a9, v10, a8, MEMORY[0x1E6981E60]);
}

uint64_t ContentUnavailableView.init<>(title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v6 = MEMORY[0x1E6981E70];
  *(&v6 + 1) = a4;
  return ContentUnavailableView.init(title:message:action:)(a1, a2, nullsub_1, 0, nullsub_1, 0, a3, MEMORY[0x1E6981E70], a5, v6, MEMORY[0x1E6981E60], MEMORY[0x1E6981E60]);
}

uint64_t ContentUnavailableView.init<>(title:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v10 = a6;
  *(&v10 + 1) = a7;
  return ContentUnavailableView.init(title:message:action:)(a1, a2, nullsub_1, 0, a3, a4, a5, MEMORY[0x1E6981E70], a9, v10, MEMORY[0x1E6981E60], a8);
}

uint64_t ContentUnavailableView.init<>(error:action:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for ContentUnavailableTextLogBuilder();
  v12 = swift_allocObject();
  v12[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470E0, &unk_1B7AA4AC0);
  v13 = swift_allocObject();
  *(v13 + 20) = 0;
  *(v13 + 16) = 2;
  v12[3] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA470E8, &unk_1B7A9F160);
  v14 = swift_allocObject();
  *(v14 + 20) = 0;
  *(v14 + 16) = 2;
  v12[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v12;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a2;
  v17[5] = a3;
  *&v21 = a4;
  *(&v21 + 1) = MEMORY[0x1E6981138];
  ContentUnavailableView.init(title:message:action:)(sub_1B7A433A0, v15, sub_1B7A4339C, v16, sub_1B7A422E8, v17, MEMORY[0x1E6981148], MEMORY[0x1E6981148], a6, v21, MEMORY[0x1E6981138], a5);
  v18 = a1;
  v19 = a1;

  *(a6 + 88) = v12;
  return result;
}

void sub_1B7A41BA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = sub_1B7A4309C(a1);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
}

uint64_t sub_1B7A41C0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1;

  result = sub_1B7A38084(a1, a2);
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1B7A41C64(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1B7A96FC0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  return sub_1B7A98720();
}

unint64_t sub_1B7A41DD8()
{
  result = qword_1EDC10110;
  if (!qword_1EDC10110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FC0, &qword_1B7AA4BD0);
    sub_1B7A41E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10110);
  }

  return result;
}

unint64_t sub_1B7A41E5C()
{
  result = qword_1EDC10118;
  if (!qword_1EDC10118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FC8, &qword_1B7AA4BD8);
    sub_1B797EC34(&qword_1EDC10120, &qword_1EBA46DD0, &qword_1B7AA4BE0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10118);
  }

  return result;
}

uint64_t sub_1B7A41F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {

    return sub_1B7974C44(a5, a6);
  }

  else
  {
  }
}

uint64_t sub_1B7A41FA4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v11[0] = v1[2];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = *(type metadata accessor for ContentUnavailableView(0, v11) - 8);
  v9 = v1 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return sub_1B7A3B634(a1, v9);
}

uint64_t sub_1B7A42080()
{
  v2 = v0[4];
  v14 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v1[2] = v2;
  v1[3] = v14;
  v1[4] = v3;
  v1[5] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(type metadata accessor for ContentUnavailableView(0, (v1 + 2)) - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = swift_task_alloc();
  v1[8] = v11;
  *v11 = v1;
  v11[1] = sub_1B7A421B4;

  return sub_1B7A3C244(v9, v10, v0 + v8, v2, v14, v3, v4, v5);
}

uint64_t sub_1B7A421B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_1B7A4232C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0FD90;
  if (!qword_1EDC0FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI24ContentUnavailableButtonVy0cD04TextVGIegr_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7A4245C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1B7A424A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_1B7A42514(uint64_t a1)
{
  sub_1B7958DD8();
  if (v1 <= 0x3F)
  {
    sub_1B7A425C0(319, v1, v2);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7A425C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_1EDC10130)
  {
    sub_1B7A4261C(0, a2, a3);
    v3 = sub_1B7A971F0();
    if (!v4)
    {
      atomic_store(v3, &qword_1EDC10130);
    }
  }
}

unint64_t sub_1B7A4261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10868;
  if (!qword_1EDC10868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10868);
  }

  return result;
}

uint64_t sub_1B7A42670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B7A426D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48FF0;
  if (!qword_1EBA48FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48FF0);
  }

  return result;
}

unint64_t sub_1B7A42728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48FF8;
  if (!qword_1EBA48FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48FF8);
  }

  return result;
}

unint64_t sub_1B7A4278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10860;
  if (!qword_1EDC10860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10860);
  }

  return result;
}

uint64_t sub_1B7A4288C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for _ContentUnavailableScrollView(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1B7A3E738(a1, v9, v6, v7, a3);
}

uint64_t objectdestroy_142Tm()
{
  v1 = sub_1B7A97330();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A96B90();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B7A42A94()
{
  sub_1B7A97330();
  sub_1B7A96B90();
  return sub_1B7A97320();
}

unint64_t sub_1B7A42B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC0FAC0;
  if (!qword_1EDC0FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FAC0);
  }

  return result;
}

uint64_t sub_1B7A42BA8()
{
  v1 = *(sub_1B7A99900() - 8);
  v2 = v0 + ((*(v1 + 80) + 96) & ~*(v1 + 80));

  return sub_1B7A3D258(v0 + 16, v0 + 56, v2);
}

unint64_t sub_1B7A42C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10858;
  if (!qword_1EDC10858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10858);
  }

  return result;
}

uint64_t sub_1B7A42C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7A42CD4@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDC10A30;
  result = sub_1B7A98070();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = v0[2];
  v7[0] = v0[1];
  v7[1] = v1;
  v7[2] = v0[3];
  v2 = type metadata accessor for ContentUnavailableView(0, v7);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80));
  sub_1B7A41F20(*v3, *(v3 + 1), *(v3 + 2), *(v3 + 3), *(v3 + 4), *(v3 + 5), v3[48]);
  if (*(v3 + 7))
  {
  }

  sub_1B795AE10(*(v3 + 12), v3[104]);
  j__swift_release(*(v3 + 14));
  v4 = v2[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1B7A97040();
    (*(*(v5 - 8) + 8))(&v3[v4], v5);
  }

  else
  {
  }

  j__swift_release(*&v3[v2[23]]);
  sub_1B795AE1C(*&v3[v2[24]], v3[v2[24] + 8]);
  return swift_deallocObject();
}

void sub_1B7A42F90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v8[0] = v0[2];
  v8[1] = v1;
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  v8[5] = v5;
  v6 = *(type metadata accessor for ContentUnavailableView(0, v8) - 8);
  v7 = v0 + ((*(v6 + 80) + 64) & ~*(v6 + 80));

  sub_1B7A3BE54(v7);
}

uint64_t sub_1B7A4309C(uint64_t a1)
{
  swift_getErrorValue();
  if (sub_1B7A39630(v4, v5))
  {
    if (qword_1EDC107C8 != -1)
    {
      swift_once();
    }

    v1 = *(off_1EDC107D0 + 2);
    os_unfair_lock_lock(v1 + 5);
    os_unfair_lock_unlock(v1 + 5);
  }

  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDC10A30;
  return sub_1B7A98070();
}

unint64_t sub_1B7A43224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49060;
  if (!qword_1EBA49060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49060);
  }

  return result;
}

unint64_t sub_1B7A43288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10168;
  if (!qword_1EDC10168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10168);
  }

  return result;
}

unint64_t sub_1B7A432EC()
{
  result = qword_1EDC0FD88;
  if (!qword_1EDC0FD88)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD8, &qword_1B7AA4D60);
    sub_1B7A4232C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FD88);
  }

  return result;
}

BOOL _s18_JetEngine_SwiftUI24ShelfScrollGeometryProxyV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  v5 = a1[4].f64[0];
  v4 = a1[4].f64[1];
  v7 = a2[4].f64[0];
  v6 = a2[4].f64[1];
  v8 = sub_1B7A96FD0();
  result = 0;
  if ((v8 & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3])), xmmword_1B7AA53C0)) & 0xF) == 0)
  {
    return v4 == v6 && v5 == v7;
  }

  return result;
}

void *EnvironmentValues.presentedBy.getter(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B7A434D4(x0_0, a2, a3);

  return sub_1B7A97890();
}

unint64_t sub_1B7A434D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC100B0;
  if (!qword_1EDC100B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC100B0);
  }

  return result;
}

void *sub_1B7A43528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1B7A434D4(a1, a2, a3);
  result = sub_1B7A97890();
  *a4 = v6;
  return result;
}

uint64_t View.presentedBy(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t PresentationSource.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

unint64_t sub_1B7A436C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49068;
  if (!qword_1EBA49068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49068);
  }

  return result;
}

unint64_t sub_1B7A43728()
{
  result = qword_1EBA481B0;
  if (!qword_1EBA481B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA481B0);
  }

  return result;
}

uint64_t sub_1B7A437A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A4380C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1B7A4380C()
{
  result = qword_1EBA49070[0];
  if (!qword_1EBA49070[0])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46618, &qword_1B7A9D580);
    sub_1B7A436C4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49070);
  }

  return result;
}

uint64_t sub_1B7A43890(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B7A4390C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1B79EB840(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79EB840(v8, v5);

  sub_1B7A96F30();
  return sub_1B79DE150(v8);
}

uint64_t sub_1B7A43A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v50 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49118, &qword_1B7AA5698);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49120, &qword_1B7AA56A0);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49128, &qword_1B7AA56A8);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA490F8, &qword_1B7AA5638);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49130, &qword_1B7AA56B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49108, &qword_1B7AA5690);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49100, &qword_1B7AA5640);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v24 = *(v22 + 16);
  v48 = &v39 - v25;
  v49 = a1;
  v24(v23);
  sub_1B7A4496C(v52, v53);
  if (!v54)
  {
    sub_1B7957888(v53, &qword_1EBA47828, &qword_1B7AA0240);
    (*(v18 + 56))(v16, 1, 1, v17);
    v28 = v17;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49150, &qword_1B7AA56B8);
  v26 = swift_dynamicCast();
  (*(v18 + 56))(v16, v26 ^ 1u, 1, v17);
  v27 = (*(v18 + 48))(v16, 1, v17);
  v28 = v17;
  if (v27 == 1)
  {
LABEL_5:
    sub_1B7957888(v16, &qword_1EBA49130, &qword_1B7AA56B0);
    v29 = v48;
    goto LABEL_6;
  }

  sub_1B7A449DC(v16, v20);
  (v24)(v13, v20, v21);
  (*(v22 + 56))(v13, 0, 1, v21);
  v29 = v48;
  sub_1B7A99490();
  sub_1B7957888(v20, &qword_1EBA49108, &qword_1B7AA5690);
LABEL_6:
  v30 = v52;
  if (*(v52 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A98FC0();
  if ((sub_1B7A99470() & 1) == 0)
  {
    v54 = sub_1B7A99690();
    v55 = MEMORY[0x1E69AB218];
    __swift_allocate_boxed_opaque_existential_1Tm(v53);
    sub_1B7A99680();
    sub_1B7A99300();
    v31 = v45;
    sub_1B7A99D60();
    sub_1B797EC34(&qword_1EBA49138, &qword_1EBA49118, &qword_1B7AA5698, MEMORY[0x1E69AB468]);
    v32 = v47;
    sub_1B7A99480();
    (*(v46 + 8))(v31, v32);
  }

  if (*(v30 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A99150();
  if ((sub_1B7A99470() & 1) == 0)
  {
    sub_1B7A99300();
    v33 = v42;
    sub_1B7A99D90();
    sub_1B797EC34(&qword_1EBA49140, &qword_1EBA49120, &qword_1B7AA56A0, MEMORY[0x1E69AB480]);
    v34 = v44;
    sub_1B7A99480();
    (*(v43 + 8))(v33, v34);
  }

  if (*(v30 + 24) || (sub_1B7A98D60(), (sub_1B7A99470() & 1) != 0))
  {
LABEL_14:
    (*(v22 + 8))(v49, v21);
  }

  else
  {
    sub_1B7A99300();
    v37 = v39;
    sub_1B7A99C20();
    sub_1B797EC34(&qword_1EBA49148, &qword_1EBA49128, &qword_1B7AA56A8, MEMORY[0x1E69AB3F8]);
    v38 = v41;
    sub_1B7A99480();
    (*(v22 + 8))(v49, v21);
    (*(v40 + 8))(v37, v38);
  }

  sub_1B7957888(v30, &qword_1EBA47828, &qword_1B7AA0240);
  v35 = v50;
  result = (*(v22 + 32))(v50, v29, v21);
  *(v35 + *(v28 + 28)) = v51;
  return result;
}

__n128 AlertActionImplementation.init<A>(following:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)(uint64_t a1, uint64_t a2)@<X8>)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v12;
  result = *(a1 + 1);
  *(v13 + 56) = result;
  *a6 = sub_1B7A44628;
  a6[1] = v13;
  return result;
}

uint64_t sub_1B7A441F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a7;
  v40 = a8;
  *(&v36 + 1) = a4;
  v37 = a5;
  *&v36 = a3;
  v38 = a9;
  v11 = type metadata accessor for FlowAlertAuthority.Presented(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA490F8, &qword_1B7AA5638);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49100, &qword_1B7AA5640);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v34 - v25;
  v35 = a2;
  sub_1B7A99210();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1B7957888(v19, &qword_1EBA490F8, &qword_1B7AA5638);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
  }

  else
  {
    (*(v21 + 32))(v26, v19, v20);
    (*(v21 + 16))(v23, v26, v20);
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49108, &qword_1B7AA5690);
    v45 = sub_1B797EC34(&qword_1EBA49110, &qword_1EBA49108, &qword_1B7AA5690, &unk_1B7AA71F8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v43);
    v28 = v35;

    sub_1B7A43A08(v23, v28, &v46, boxed_opaque_existential_1Tm);
    (*(v21 + 8))(v26, v20);
  }

  v46 = v43;
  v47 = v44;
  v48 = v45;
  v43 = v36;
  *&v44 = v37;
  v29 = type metadata accessor for FlowAuthority(255, v39, v40, v38);
  v30 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](&v42, v30);
  v41 = v42;
  sub_1B7A2A3A0(v29);

  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47820, &qword_1B7AA0238) + 48);
  v32 = sub_1B7A99F50();
  (*(*(v32 - 8) + 16))(v16, a1, v32);
  sub_1B7A4496C(&v46, &v16[v31]);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B79EB840(v16, v13);
  sub_1B7A96F30();
  sub_1B79DE150(v16);
  return sub_1B7957888(&v46, &qword_1EBA47828, &qword_1B7AA0240);
}

uint64_t AlertActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  sub_1B7A9A760();
  *(v4 + 56) = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A44700, v6, v5);
}

uint64_t sub_1B7A44700()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v2(v3, v1);
  v5 = *MEMORY[0x1E69AB010];
  v6 = sub_1B7A98FA0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7A447F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B798D338;

  return AlertActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_1B7A448AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE17320](a1, a2, a3, WitnessTable);
}

uint64_t sub_1B7A44918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A4496C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47828, &qword_1B7AA0240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A449DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49108, &qword_1B7AA5690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 FlowView.init(following:tabLabels:tabSectionLabels:destinations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *a1;
  result = *(a1 + 8);
  *(a8 + 8) = result;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  return result;
}

void *FlowView.init<>(following:destinations:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  sub_1B7A9A160();
  result = swift_allocObject();
  result[2] = a4;
  result[3] = a5;
  result[4] = a6;
  result[5] = a7;
  result[6] = a8;
  *a9 = v16;
  a9[1] = v17;
  a9[2] = v18;
  a9[3] = nullsub_1;
  a9[4] = result;
  a9[5] = a2;
  a9[6] = a3;
  a9[7] = sub_1B7A45C10;
  a9[8] = 0;
  return result;
}

BOOL sub_1B7A44B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[1] = a1;
  v13[2] = a2;
  v13[3] = a3;
  type metadata accessor for FlowAuthority(255, a4, a6, a7);
  v10 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v13, v10);
  sub_1B7A8FC14();

  type metadata accessor for FlowStackTabsAuthority.Tab(0, a4, a6, a7);
  v11 = sub_1B7A9A6C0();

  return v11 == 1;
}

uint64_t sub_1B7A44C74(uint64_t *a1)
{
  type metadata accessor for FlowAuthority(255, a1[2], a1[5], a1[6]);
  v1 = sub_1B7A98870();
  return MEMORY[0x1B8CA9A40](v1);
}

uint64_t FlowView.customPresentation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 16);
  v23[0] = *v4;
  v23[1] = v10;
  v12 = *(v4 + 32);
  v11 = *(v4 + 40);
  v13 = *(v4 + 48);
  v27 = *(v4 + 56);
  v24 = v12;
  v25 = v11;
  v26 = v13;
  v20(v11, v13, v14, v15, v16, v17, v18, v19, *&v23[0]);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v9, a3, a4, WitnessTable);
  return (*(v7 + 8))(v9, a4);
}

uint64_t FlowView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v4 = *(a1 + 16);
  v59 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 64);
  v56 = *(a1 + 48);
  v57 = v59.i64[1];
  *v68 = v4;
  v7 = v4;
  *&v68[8] = vdupq_laneq_s64(v59, 1);
  *&v68[24] = v5;
  *&v69 = v56;
  v8 = v5;
  v48 = v6;
  *(&v69 + 1) = v6;
  *&v70 = v6;
  v52 = type metadata accessor for FlowStack(255, v68);
  v9 = *(a1 + 56);
  v49 = v7;
  WitnessTable = swift_getWitnessTable();
  *v68 = v7;
  v53 = v8;
  v54 = v59.i64[0];
  *&v68[8] = v59.i64[0];
  *&v68[16] = v52;
  *&v68[24] = v8;
  *&v69 = v56;
  *(&v69 + 1) = v9;
  *&v70 = WitnessTable;
  v10 = type metadata accessor for FlowStackTabView(0, v68);
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v41 - v11;
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  type metadata accessor for DataObjectBox(255, FunctionTypeMetadata1, v13, v14);
  sub_1B7A9AB60();
  v47 = sub_1B7A97DF0();
  v15 = sub_1B7A97590();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v45 = &v41 - v18;
  v19 = *(v2 + 16);
  v20 = *(v2 + 48);
  v69 = *(v2 + 32);
  v70 = v20;
  v21 = *(v2 + 16);
  *v68 = *v2;
  *&v68[16] = v21;
  v22 = *(v2 + 48);
  v65 = v69;
  v66 = v22;
  v71 = *(v2 + 64);
  v67 = *(v2 + 64);
  v63 = *v68;
  v64 = v19;
  sub_1B7A44C74(a1);
  v23 = *&v68[24];
  v24 = v69;
  v25 = v71;
  v42 = *(&v70 + 1);
  v43 = v62[9];
  v26 = swift_allocObject();
  *&v27 = v9;
  v28 = v48;
  *(&v27 + 1) = v48;
  *(v26 + 32) = v27;
  *(v26 + 16) = v59;
  v29 = v70;
  *(v26 + 80) = v69;
  *(v26 + 96) = v29;
  *(v26 + 112) = v71;
  v30 = *&v68[16];
  *(v26 + 48) = *v68;
  *(v26 + 64) = v30;

  (*(*(a1 - 8) + 16))(v62, v68, a1);
  v31 = v46;
  sub_1B7A068E4(v43, v23, v24, v42, v25, sub_1B7A454E0, v26, v54, v46, v52, v9, WitnessTable);
  v32 = *(&v69 + 1);
  v33 = v70;
  v34 = swift_getWitnessTable();
  v35 = v44;
  sub_1B7A003E0(v49, v32, v33, v10, v49, v57, v34, v53, v56, v28);
  (*(v55 + 8))(v31, v10);
  v36 = swift_getWitnessTable();
  v60 = v34;
  v61 = v36;
  v37 = swift_getWitnessTable();
  v38 = v45;
  sub_1B7957EE0(v35, v15, v37);
  v39 = *(v51 + 8);
  v39(v35, v15);
  sub_1B7957EE0(v38, v15, v37);
  return (v39)(v38, v15);
}

uint64_t sub_1B7A452C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a2;
  v12 = *(a3 + 40);
  v13 = *(a3 + 48);

  sub_1B7A4CE28(a2, a1, v12, v13, a5, a7, v27);
  v28 = v27[0];
  *v26 = v27[0];
  *&v26[16] = v27[1];
  *&v26[32] = v27[2];
  v15 = v11[11];
  v16 = v11[12];
  v21 = v11[10];
  v14 = v21;
  *&v22 = a5;
  *(&v22 + 1) = a5;
  *&v23 = v15;
  *(&v23 + 1) = v16;
  v24 = a7;
  v25 = a7;
  v17 = type metadata accessor for FlowStack(0, &v21);
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v26, v17, WitnessTable);
  type metadata accessor for FlowStackAuthority(255, v14, v15, v16);
  swift_getWitnessTable();
  v19 = sub_1B7A974C0();
  (*(*(v19 - 8) + 8))(&v28, v19);

  *v26 = v21;
  *&v26[8] = v22;
  *&v26[24] = v23;
  *&v26[40] = v24;
  sub_1B7957EE0(v26, v17, WitnessTable);
}

__n128 FlowView.init(following:tabLabels:destinations:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  result = *(a1 + 8);
  *(a6 + 8) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  *(a6 + 56) = sub_1B7A45C10;
  *(a6 + 64) = 0;
  return result;
}

uint64_t FlowOcclusion.debugDescription.getter(char a1)
{
  if (a1)
  {
    v1 = sub_1B7988144(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1B7988144((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x74656568732ELL;
    *(v4 + 5) = 0xE600000000000000;
  }

  sub_1B7A9AC50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49158, &qword_1B7AA56C0);
  sub_1B7A4569C();
  v5 = sub_1B7A9A430();
  v7 = v6;

  MEMORY[0x1B8CAB750](v5, v7);

  MEMORY[0x1B8CAB750](10589, 0xE200000000000000);
  return 0x6C63634F776F6C46;
}

unint64_t sub_1B7A4569C()
{
  result = qword_1EBA49160;
  if (!qword_1EBA49160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49158, &qword_1B7AA56C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49160);
  }

  return result;
}

uint64_t sub_1B7A45700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B7A45BD8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B7A45740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A45A1C(a1, a2, a3);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.flowOcclusion.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A458C0(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

void *sub_1B7A457E0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A458C0(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

BOOL EnvironmentValues.isAtFlowTabRoot.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A434D4(a1, a2, a3);
  sub_1B7A97890();
  return v4 == 3;
}

unint64_t sub_1B7A458C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49168;
  if (!qword_1EBA49168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49168);
  }

  return result;
}

unint64_t sub_1B7A4596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49170;
  if (!qword_1EBA49170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49170);
  }

  return result;
}

unint64_t sub_1B7A459C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49178;
  if (!qword_1EBA49178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49178);
  }

  return result;
}

unint64_t sub_1B7A45A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49180;
  if (!qword_1EBA49180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49180);
  }

  return result;
}

unint64_t sub_1B7A45A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49188[0];
  if (!qword_1EBA49188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49188);
  }

  return result;
}

uint64_t sub_1B7A45AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A45B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B7A45B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A45BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t NSBundle.displayName.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_1B7A9A480();
  v9 = [v1 objectForInfoDictionaryKey_];

  if (v9)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      return v19;
    }
  }

  else
  {
    sub_1B7957888(&v22, &qword_1EBA46B50, &qword_1B7A9DD90);
  }

  v10 = sub_1B7A9A480();
  v11 = [v1 objectForInfoDictionaryKey_];

  if (v11)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      return v19;
    }
  }

  else
  {
    sub_1B7957888(&v22, &qword_1EBA46B50, &qword_1B7A9DD90);
  }

  v13 = [v1 executableURL];
  if (v13)
  {
    v14 = v13;
    sub_1B7A96B60();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1B7A96B90();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v4, v15, 1, v16);
  sub_1B7A28570(v4, v7);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    sub_1B7957888(v7, &qword_1EBA47AF8, &unk_1B7AA07E0);
    return 0;
  }

  else
  {
    v18 = sub_1B7A96B40();
    (*(v17 + 8))(v7, v16);
    return v18;
  }
}

id static NSBundle.jetResources.getter()
{
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDC10A30;

  return v1;
}

double sub_1B7A46004@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v8 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = v10 >> 5;
  if (v10 >> 5 > 2)
  {
    if (v11 == 3)
    {
      if (v5 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *v2;
      }

      *a2 = v16;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 96;
    }

    else
    {
      if (v11 == 4)
      {
        if (v5 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = *v2;
        }

        *a2 = v13;
        *(a2 + 8) = v4;
        *(a2 + 16) = v6;
        *(a2 + 24) = v7;
        *(a2 + 32) = v9;
        *(a2 + 40) = v8;
        *(a2 + 48) = v10 & 1 | 0x80;
        return sub_1B7A16CBC(v4, v6, v7);
      }

      if (v5 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = *v2;
      }

      *a2 = v18;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7 & 1;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = -96;
    }
  }

  else
  {
    if (!v11)
    {
      if (v5 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *v2;
      }

      *a2 = v15;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      return sub_1B7A16CBC(v4, v6, v7);
    }

    if (v11 == 1)
    {
      if (v5 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = *v2;
      }

      *a2 = v12;
      *(a2 + 8) = v4;
      *(a2 + 16) = v6;
      *(a2 + 24) = v7;
      *(a2 + 32) = v9;
      *(a2 + 40) = v8;
      *(a2 + 48) = 32;
      return sub_1B7A16CBC(v4, v6, v7);
    }

    if (a1)
    {
      v17 = 1;
    }

    else if (v5 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = *v2;
    }

    *a2 = v17;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 64;
  }

  return result;
}

void ShelfGridItemWidth.resolve(using:)(uint64_t *a1, double a2)
{
  v4 = sub_1B7A971B0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29[-v10];
  v12 = a1[1];
  v13 = a1[3];
  v14 = *(a1 + 32);
  v15 = a1[5];
  v16 = *(a1 + 48);
  v17 = a1[9];
  v18 = *(a1 + 80);
  v19 = *v2;
  if (*(v2 + 16) <= 1u)
  {
    if (!*(v2 + 16))
    {
      return;
    }

    if (v19 > 0.0)
    {
      if (a1[10])
      {
        v23 = v8;
        v24 = v9;
        sub_1B7A971A0();
        sub_1B7A971A0();
        sub_1B7A97190();
        v25 = *(v24 + 8);
        v25(v6, v23);
        v25(v11, v23);
      }

      return;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (*(v2 + 16) != 2)
  {
    v26 = a1[2];
    v31 = *a1;
    v32 = v31;
    v33 = v12;
    v34 = v26;
    v35 = v13;
    v36 = v14;
    *v37 = *(a1 + 33);
    *&v37[3] = *(a1 + 9);
    v38 = v15;
    v39 = v16;
    *v40 = *(a1 + 49);
    *&v40[15] = a1[8];
    v41 = v17;
    v42 = v18;
    (*&v19)(v43, &v32);
    v27 = v43[0];
    v28 = v43[1];
    v30 = v44;
    v32 = v31;
    v33 = v12;
    v34 = v26;
    v35 = v13;
    v36 = v14;
    *v37 = *(a1 + 33);
    *&v37[3] = *(a1 + 9);
    v38 = v15;
    v39 = v16;
    *v40 = *(a1 + 49);
    *&v40[15] = a1[8];
    v41 = v17;
    v42 = v18;
    ShelfGridItemWidth.resolve(using:)(&v32, *v40);
    sub_1B7A16D08(v27, v28, v30);
    return;
  }

  if (v19 <= 0.0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1[10])
  {
    v20 = v8;
    v21 = v9;
    sub_1B7A971A0();
    sub_1B7A971A0();
    sub_1B7A97190();
    v22 = *(v21 + 8);
    v22(v6, v20);
    v22(v11, v20);
  }
}

BOOL sub_1B7A46488(_BOOL8 result, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v5 = *v3;
  v6 = *(v3 + 48) >> 5;
  if (v6 > 2)
  {
    if (v6 != 4)
    {
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      return 0;
    }

LABEL_29:
    if (!__OFADD__(result, 1))
    {
      if (v5)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v5 != -1)
        {
          return (result + 1) % v5 != 0;
        }

        goto LABEL_42;
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (!v6)
  {
    if (v5 == 1)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v6 == 1)
  {
    if (v5 == 1)
    {
      return 0;
    }

    goto LABEL_29;
  }

LABEL_9:
  if (v5 == 1)
  {
    v5 = a2 - 1;
    if (!__OFSUB__(a2, 1))
    {
      return v5 > result;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v7 = ceil(a2 / v5);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v4 == 2 || (v4 & 1) != 0)
  {
LABEL_24:
    v9 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      if ((v9 * v5) >> 64 == (v9 * v5) >> 63)
      {
        return v9 * v5 > result;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v5)
  {
    if (a2 == 0x8000000000000000 && v5 == -1)
    {
      goto LABEL_44;
    }

    if (a2 % v5 == 1)
    {
      v8 = __OFSUB__(a2, v5);
      v5 = a2 - v5;
      if (!v8)
      {
        return v5 > result;
      }

      __break(1u);
    }

    goto LABEL_24;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void ShelfGridLayout.frozen.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = v9 >> 5;
  if (v9 >> 5 > 2)
  {
    if (v10 - 4 >= 2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      LOBYTE(v9) = -96;
    }

    else
    {
      sub_1B7A16C88(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      sub_1B7A16CBC(*(v1 + 8), *(v1 + 16), *(v1 + 24));
      LOBYTE(v9) = 0x80;
      v6 = v6;
    }

    else
    {
      v3 = 0;
      v5 = 0;
      v7 = 0;
      v8 = 0;
      LOBYTE(v9) = -96;
      v6 = 1;
    }
  }

  else
  {
    sub_1B7A16CBC(*(v1 + 8), *(v1 + 16), *(v1 + 24));
    v7 = 0;
    v8 = 0;
    LOBYTE(v9) = -127;
    v6 = v6;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
}

uint64_t sub_1B7A46734()
{
  if (*(v0 + 24) != 1)
  {
    return sub_1B7A9AE20();
  }

  v2 = sub_1B7A9AE20();
  MEMORY[0x1B8CAB750](42, 0xE100000000000000);
  return v2;
}

void ShelfGridItemWidth.Context.padding.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void ShelfGridItemWidth.Context.spacing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t ShelfGridItemWidth.Context.offset.getter()
{
  v1 = *v0;
  *(v1 + 24) = 1;
  return *(v1 + 16);
}

double static ShelfGridItemWidth.custom(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_1B7A468D0;
  *(a3 + 8) = v6;
  *(a3 + 16) = 3;

  return result;
}

void sub_1B7A468D0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(v2 + 16))(*(a1 + 8), *(a1 + 16));
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_1B7A46924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B7A46974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * -a2;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A469E4(uint64_t result, char a2)
{
  v2 = *(result + 48) & 1 | (32 * a2);
  *(result + 24) &= 3uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1B7A46A14(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B7A46A5C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_1B7A46AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1B7958BE0(a1, a2, a3);
  result = sub_1B7A97890();
  *a4 = v6;
  return result;
}

uint64_t View.loadingViewPresentationContext(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A46BB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A97780();
  *a1 = result;
  return result;
}

uint64_t LoadingView.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B7A986C0();
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  *(a4 + 40) = swift_getKeyPath();
  *(a4 + 48) = 0;
  *(a4 + 56) = swift_getKeyPath();
  *(a4 + 64) = 0;
  *(a4 + 72) = swift_getKeyPath();
  *(a4 + 80) = 0;
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  result = (*(v8 + 32))(v10 + v9, a1, a2);
  *a4 = sub_1B7A471F8;
  *(a4 + 8) = v10;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_1B7A46D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1B7A98080();
}

uint64_t LoadingView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B7A986C0();
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 40) = swift_getKeyPath();
  *(a5 + 48) = 0;
  *(a5 + 56) = swift_getKeyPath();
  *(a5 + 64) = 0;
  *(a5 + 72) = swift_getKeyPath();
  *(a5 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49210, &qword_1B7AA5DE0);
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *a5 = sub_1B7A47234;
  *(a5 + 8) = result;
  *(a5 + 16) = 1;
  return result;
}

uint64_t sub_1B7A46F2C(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 12);

  os_unfair_lock_unlock(a1 + 12);
  return sub_1B7A98070();
}

void sub_1B7A46FC4(void *a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 40);
  if (*(v1 + 48) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_1B7A9AA10();
    v8 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

void *sub_1B7A47114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7958B80(a1, a2, a3);

  return sub_1B7A97890();
}

void *sub_1B7A4715C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1B7958B80(a1, a2, a3);
  result = sub_1B7A97890();
  *a4 = v6;
  return result;
}

uint64_t sub_1B7A4723C()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);

  if ((v6 & 1) == 0)
  {
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v5);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

void *sub_1B7A47380()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1B7A474D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a3;
  v100 = a2;
  v72 = a1;
  v97 = a6;
  v8 = sub_1B7A9A7E0();
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A997E0();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v87 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218, &qword_1B7AA5DE8);
  v13 = MEMORY[0x1E6981840];
  *&v108[0] = v12;
  *(&v108[0] + 1) = MEMORY[0x1E6981840];
  v98 = a4;
  v99 = a5;
  type metadata accessor for _CompatibilityLoadingViewContent(255, a4, a5, v14);
  sub_1B7A97B40();
  *&v108[1] = sub_1B7A97590();
  *(&v108[1] + 1) = v13;
  swift_getTupleTypeMetadata();
  sub_1B7A98AC0();
  v69[1] = swift_getWitnessTable();
  v15 = sub_1B7A987E0();
  v16 = sub_1B7A97590();
  v17 = sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0, &qword_1B7AA5DF0);
  v18 = sub_1B7A97590();
  sub_1B7A97E00();
  v19 = sub_1B7A97590();
  v85 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v84 = v69 - v20;
  v21 = sub_1B7A97590();
  v91 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v90 = v69 - v22;
  v69[0] = swift_getWitnessTable();
  v119 = v69[0];
  v120 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v117 = WitnessTable;
  v118 = MEMORY[0x1E6980A30];
  v76 = v17;
  v23 = swift_getWitnessTable();
  v24 = sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0, &qword_1B7AA5DF0, MEMORY[0x1E697F940]);
  v71 = v23;
  v115 = v23;
  v116 = v24;
  v77 = v18;
  v25 = swift_getWitnessTable();
  v26 = sub_1B7957F20(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v73 = v25;
  v113 = v25;
  v114 = v26;
  v86 = v19;
  v75 = swift_getWitnessTable();
  v111 = v75;
  v112 = v26;
  v27 = swift_getWitnessTable();
  v92 = v21;
  *&v108[0] = v21;
  v81 = v27;
  *(&v108[0] + 1) = v27;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  v83 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v79 = v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v80 = v69 - v31;
  v32 = sub_1B7A9A760();
  v78 = sub_1B7A9A750();
  v74 = v32;
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = sub_1B7A97990();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B7A987D0();
  v104[6] = v108[6];
  v104[7] = v108[7];
  v104[8] = v108[8];
  LOBYTE(v104[9]) = v108[9];
  v104[2] = v108[2];
  v104[3] = v108[3];
  v104[4] = v108[4];
  v104[5] = v108[5];
  v104[0] = v108[0];
  v104[1] = v108[1];
  sub_1B7A972E0();
  sub_1B7A972E0();
  sub_1B7A98A20();
  sub_1B7A98410();
  v109[6] = v104[6];
  v109[7] = v104[7];
  v109[8] = v104[8];
  v109[2] = v104[2];
  v109[3] = v104[3];
  v109[4] = v104[4];
  v109[5] = v104[5];
  v109[0] = v104[0];
  v110 = v104[9];
  v109[1] = v104[1];
  (*(*(v15 - 8) + 8))(v109, v15);
  memcpy(v105, v106, sizeof(v105));
  sub_1B7A975D0();
  v34 = sub_1B7A97EE0();
  sub_1B7A97F10();
  sub_1B7A97F10();
  if (sub_1B7A97F10() != v34)
  {
    sub_1B7A97F10();
  }

  sub_1B7A981F0();
  memcpy(v102, v105, sizeof(v102));
  (*(*(v16 - 8) + 8))(v102, v16);
  memcpy(v104, v107, 0x111uLL);
  v35 = v93;
  LOBYTE(v101[0]) = v93 == 2;
  v36 = sub_1B7A98A20();
  sub_1B7959D7C(v36, v37, v38);
  v39 = v76;
  sub_1B7A980C0();
  memcpy(v103, v104, 0x111uLL);
  (*(*(v39 - 8) + 8))(v103, v39);
  memcpy(v101, v108, sizeof(v101));
  memset(v104, 0, 32);
  v40 = v87;
  sub_1B7A997B0();
  sub_1B7957888(v104, &qword_1EBA46B50, &qword_1B7A9DD90);
  v41 = v84;
  v42 = v77;
  View.automationSemantics(_:)(v40, v77, v73);
  (*(v88 + 8))(v40, v89);
  memcpy(v104, v101, sizeof(v104));
  (*(*(v42 - 8) + 8))(v104, v42);
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDC10A30;
  v44 = sub_1B7A98070();
  v46 = v45;
  v48 = v47;
  v49 = v90;
  v50 = v86;
  sub_1B7A98250();
  sub_1B795A450(v44, v46, v48 & 1);

  (*(v85 + 8))(v41, v50);
  v52 = v98;
  v51 = v99;
  v54 = type metadata accessor for LoadingView(0, v98, v99, v53);
  v55 = v100;
  (*(*(v54 - 8) + 16))(v101, v100, v54);
  v56 = sub_1B7A9A750();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = MEMORY[0x1E69E85E0];
  *(v57 + 32) = v52;
  *(v57 + 40) = v51;
  v58 = *(v55 + 48);
  *(v57 + 80) = *(v55 + 32);
  *(v57 + 96) = v58;
  *(v57 + 112) = *(v55 + 64);
  *(v57 + 128) = *(v55 + 80);
  v59 = *(v55 + 16);
  *(v57 + 48) = *v55;
  *(v57 + 64) = v59;
  *(v57 + 129) = v35;
  v60 = v94;
  v61 = v92;
  v62 = v81;
  sub_1B7974C6C();
  v63 = v79;
  sub_1B7974CBC(0, v60, 0xD000000000000024, 0x80000001B7AC7960, 214, &unk_1B7AA63B8, v57, v79, v61, v62);
  (*(v95 + 8))(v60, v96);
  (*(v91 + 8))(v49, v61);
  v101[0] = v61;
  v101[1] = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v80;
  v66 = v83;
  sub_1B7957EE0(v63, v83, OpaqueTypeConformance2);
  v67 = *(v82 + 8);
  v67(v63, v66);
  sub_1B7957EE0(v65, v66, OpaqueTypeConformance2);
  v67(v65, v66);
}

uint64_t sub_1B7A4814C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1[3];
  v43 = a1[2];
  v44 = v7;
  v45 = a1[4];
  v46 = *(a1 + 80);
  v8 = a1[1];
  v41 = *a1;
  v42 = v8;
  type metadata accessor for LoadingView(0, a2, a3, v6);
  sub_1B79593DC();
  sub_1B7A98A20();
  sub_1B7A97260();
  v9 = v53;
  v10 = v55;
  v21 = v58;
  v22 = v57;
  v52 = 1;
  v50 = v54;
  v48 = v56;
  sub_1B79597CC(*a1, *(a1 + 1), *(a1 + 16), a2, a3);
  v33 = v38;
  LOBYTE(v34) = v39;
  v11 = *(a1 + 4);
  LOBYTE(v41) = *(a1 + 24) & 1;
  *(&v41 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986D0();
  type metadata accessor for _CompatibilityLoadingViewContent(255, a2, a3, v12);
  sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1B79599D4(WitnessTable, v13, v14);
  v15 = swift_getWitnessTable();
  sub_1B7A98430();
  sub_1B79599CC(v38, *(&v38 + 1));
  v16 = v41;
  v33 = v41;
  LOBYTE(v34) = v42;
  v35 = *(&v42 + 1);
  v17 = sub_1B7A97590();
  v31 = v15;
  v32 = MEMORY[0x1E697E5C0];
  v18 = swift_getWitnessTable();
  sub_1B7957EE0(&v33, v17, v18);
  sub_1B79599CC(v16, *(&v16 + 1));
  *&v41 = 0;
  BYTE8(v41) = v52;
  *(&v41 + 9) = *v51;
  HIDWORD(v41) = *&v51[3];
  *&v42 = v9;
  BYTE8(v42) = v50;
  *(&v42 + 9) = *v49;
  HIDWORD(v42) = *&v49[3];
  *&v43 = v10;
  BYTE8(v43) = v48;
  HIDWORD(v43) = *&v47[3];
  *(&v43 + 9) = *v47;
  *&v44 = v22;
  *(&v44 + 1) = v21;
  v29 = 0;
  v30 = 1;
  *&v33 = &v41;
  *(&v33 + 1) = &v29;
  v19 = v38;
  v26 = v38;
  v27 = v39;
  v28 = v40;
  v24 = 0;
  v25 = 1;
  v34 = &v26;
  v35 = &v24;
  sub_1B7959BA4(v38, *(&v38 + 1));
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49218, &qword_1B7AA5DE8);
  v23[1] = MEMORY[0x1E6981840];
  v23[2] = v17;
  v23[3] = MEMORY[0x1E6981840];
  sub_1B7959B20();
  sub_1B7959BAC(&v33, 4uLL, v23);
  sub_1B79599CC(v19, *(&v19 + 1));
  sub_1B79599CC(v26, *(&v26 + 1));
}

uint64_t sub_1B7A48548(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 329) = a5;
  *(v7 + 104) = a4;
  sub_1B7A98CC0();
  *(v7 + 128) = swift_task_alloc();
  v8 = sub_1B7A9A280();
  *(v7 + 136) = v8;
  *(v7 + 144) = *(v8 - 8);
  *(v7 + 152) = swift_task_alloc();
  v9 = sub_1B7A99000();
  *(v7 + 160) = v9;
  *(v7 + 168) = *(v9 - 8);
  *(v7 + 176) = swift_task_alloc();
  v10 = sub_1B7A99380();
  *(v7 + 184) = v10;
  *(v7 + 192) = *(v10 - 8);
  *(v7 + 200) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49048, &qword_1B7AA63C0);
  *(v7 + 208) = v11;
  *(v7 + 216) = *(v11 - 8);
  *(v7 + 224) = swift_task_alloc();
  v12 = sub_1B7A9A720();
  *(v7 + 232) = v12;
  *(v7 + 240) = *(v12 - 8);
  *(v7 + 248) = swift_task_alloc();
  v13 = sub_1B7A9AD20();
  *(v7 + 256) = v13;
  *(v7 + 264) = *(v13 - 8);
  *(v7 + 272) = swift_task_alloc();
  sub_1B7A9A760();
  *(v7 + 280) = sub_1B7A9A750();
  v15 = sub_1B7A9A710();
  *(v7 + 288) = v15;
  *(v7 + 296) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B7A48848, v15, v14);
}

uint64_t sub_1B7A48848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 104);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  v8 = type metadata accessor for LoadingView(0, *(v4 + 112), *(v4 + 120), a4);
  *(v4 + 72) = v6 & 1;
  *(v4 + 304) = v8;
  *(v4 + 80) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986D0();
  if (*(v4 + 328))
  {

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    if (*(v4 + 329) >= 2u)
    {
      v12 = sub_1B7A9AFC0();
      v11 = v13;
    }

    else
    {
      v11 = 0;
      v12 = 2000000000000000000;
    }

    sub_1B7A9AEF0();
    v14 = swift_task_alloc();
    *(v4 + 312) = v14;
    *v14 = v4;
    v14[1] = sub_1B7A48A2C;

    return sub_1B795A058(v12, v11, 0, 0, 1);
  }
}

uint64_t sub_1B7A48A2C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  v3 = v2[37];
  v4 = v2[36];
  if (v0)
  {
    v5 = sub_1B7A48E00;
  }

  else
  {
    v5 = sub_1B7A48BB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A48BB4()
{

  v1 = *(v0 + 104);
  v13 = *(v0 + 112);
  sub_1B7A98A40();
  sub_1B7A97180();
  v2 = swift_task_alloc();
  *(v2 + 16) = v13;
  *(v2 + 32) = v1;
  sub_1B7A97600();

  if (sub_1B7A4723C())
  {
    v4 = *(v0 + 216);
    v3 = *(v0 + 224);
    v5 = *(v0 + 200);
    v6 = *(v0 + 192);
    v11 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = *(v0 + 176);
    v12 = *(v0 + 160);
    v14 = *(v0 + 208);
    sub_1B7A993A0();
    sub_1B7A99D20();
    sub_1B7A99370();
    (*(v6 + 8))(v5, v11);
    sub_1B7A98FF0();
    sub_1B7A993C0();

    (*(v7 + 8))(v8, v12);
    (*(v4 + 8))(v3, v14);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B7A48E00()
{
  v1 = *(v0 + 320);

  *(v0 + 88) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B60, &qword_1B7AA0260);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);
    v5 = *(v0 + 232);

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v6 = *(v0 + 320);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 136);

    sub_1B7A9A220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    swift_getErrorValue();
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    *(v0 + 40) = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v11);
    sub_1B7A98C70();
    sub_1B7957888(v0 + 16, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E60();

    (*(v8 + 8))(v7, v9);
    v13 = *(v0 + 104);
    v25 = *(v0 + 112);
    sub_1B7A98A40();
    sub_1B7A97180();
    v14 = swift_task_alloc();
    *(v14 + 16) = v25;
    *(v14 + 32) = v13;
    sub_1B7A97600();

    if (sub_1B7A4723C())
    {
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v17 = *(v0 + 200);
      v18 = *(v0 + 192);
      v23 = *(v0 + 184);
      v19 = *(v0 + 168);
      v20 = *(v0 + 176);
      v24 = *(v0 + 160);
      v26 = *(v0 + 208);
      sub_1B7A993A0();
      sub_1B7A99D20();
      sub_1B7A99370();
      (*(v18 + 8))(v17, v23);
      sub_1B7A98FF0();
      sub_1B7A993C0();

      (*(v19 + 8))(v20, v24);
      (*(v16 + 8))(v15, v26);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B7A49268(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *a1;
  v16 = *(a1 + 2);
  v14 = *(a1 + 24);
  LODWORD(v13) = *(a1 + 25);
  *(&v13 + 3) = *(a1 + 7);
  v7 = *(a1 + 4);
  v11 = *(a1 + 40);
  *v12 = *(a1 + 56);
  *&v12[9] = *(a1 + 65);
  v8 = type metadata accessor for LoadingView(0, a2, a3, v6);
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v17, a1, v8);
  LOBYTE(v17) = v14;
  *(&v17 + 1) = v7;
  v24 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46A50, &unk_1B7AA63D0);
  sub_1B7A986E0();
  v17 = v15;
  *(v23 + 9) = *&v12[9];
  v23[0] = *v12;
  v18 = v16;
  v19 = v14;
  *v20 = v13;
  *&v20[3] = *(&v13 + 3);
  v21 = v7;
  v22 = v11;
  (*(v9 + 8))(&v17, v8);
}

uint64_t LoadingViewPresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A494DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A4AD54();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.withPageRenderMetrics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_1B7A98320();
}

uint64_t sub_1B7A49600(void *a1, uint64_t a2)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  sub_1B7A9A160();

  *a1 = a2;
  return result;
}

uint64_t sub_1B7A49728@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v60 = a2;
  v61 = a1;
  v69 = a5;
  v56 = a3;
  v54 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  v7 = sub_1B7A97590();
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v49 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  v63 = sub_1B7A97590();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v49 - v9;
  v62 = sub_1B7A97590();
  v68 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v49 - v12;
  v70 = sub_1B7A97D30();
  v13 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49228, &qword_1B7AA6358);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49230, &qword_1B7AA6360);
  v71 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  sub_1B7A971C0();
  v23 = *(v16 + 36);
  v52 = v16;
  v24 = &v18[v23];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49238, &qword_1B7AA6368) + 28);
  v26 = *MEMORY[0x1E697DC10];
  v27 = sub_1B7A970C0();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  sub_1B7A97D20();
  v51 = sub_1B7A4AB74();
  v50 = sub_1B7957F20(&qword_1EDC0EB50, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
  v28 = v70;
  sub_1B7A980B0();
  (*(v13 + 8))(v15, v28);
  v29 = sub_1B7957888(v18, &qword_1EBA49228, &qword_1B7AA6358);
  v61(v29);
  sub_1B7A97F50();
  v30 = v53;
  v31 = v56;
  v32 = v64;
  sub_1B7A983B0();

  (*(v54 + 8))(v6, v31);
  LODWORD(OpaqueTypeConformance2) = sub_1B7A97C60();
  v33 = sub_1B797EC34(&qword_1EBA47D58, &qword_1EBA47CC0, &unk_1B7AA7590, MEMORY[0x1E6980A18]);
  v77[6] = v32;
  v77[7] = v33;
  WitnessTable = swift_getWitnessTable();
  v35 = v57;
  sub_1B7A981D0();
  (*(v66 + 8))(v30, v7);
  sub_1B7A97EE0();
  v36 = sub_1B797EC34(&qword_1EBA47448, &qword_1EBA47450, &unk_1B7AA52F0, MEMORY[0x1E6980490]);
  v77[4] = WitnessTable;
  v77[5] = v36;
  v37 = v63;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_1B7A98450();
  (*(v67 + 8))(v35, v37);
  v77[2] = v38;
  v77[3] = MEMORY[0x1E697E5D8];
  v40 = v62;
  v41 = swift_getWitnessTable();
  v42 = v65;
  sub_1B7957EE0(v39, v40, v41);
  v43 = v68;
  v44 = *(v68 + 8);
  v44(v39, v40);
  v45 = v55;
  v46 = v58;
  (*(v71 + 16))(v55, v22, v58);
  v77[0] = v45;
  (*(v43 + 16))(v39, v42, v40);
  v77[1] = v39;
  v76[0] = v46;
  v76[1] = v40;
  OpaqueTypeConformance2 = v52;
  v73 = v70;
  v74 = v51;
  v75 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = v41;
  sub_1B7959BAC(v77, 2uLL, v76);
  v44(v42, v40);
  v47 = *(v71 + 8);
  v47(v22, v46);
  v44(v39, v40);
  return (v47)(v45, v46);
}

void sub_1B7A49FDC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    do
    {
      v5 = v2;
      v6 = [v5 backgroundColor];
      v4 = v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = [v5 backgroundColor];
      v8 = objc_opt_self();
      v9 = [v8 clearColor];
      v3 = v9;
      if (v7)
      {
        if (v9)
        {
          sub_1B79596F8(0, &qword_1EBA49250, 0x1E69DC888);
          v10 = sub_1B7A9AB20();

          v4 = v5;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_5;
        }

        v3 = v7;
      }

      else
      {
        v4 = v5;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

LABEL_5:
      v4 = [v8 clearColor];
      [v5 setBackgroundColor_];

LABEL_6:
      v2 = [v5 superview];
    }

    while (v2);
  }
}

id sub_1B7A4A248(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  v7 = objc_msgSendSuper2(&v9, *a4, a3);

  return v7;
}

id sub_1B7A4A30C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7A4A350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B795A520(a1, a2, a3);
  sub_1B7A97AE0();
  __break(1u);
}

uint64_t sub_1B7A4A378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7A986C0();
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  result = swift_getKeyPath();
  *(a3 + 72) = result;
  *(a3 + 80) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t LoadingView.init(what:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7A986C0();
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = swift_getKeyPath();
  *(a3 + 48) = 0;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  result = swift_getKeyPath();
  *(a3 + 72) = result;
  *(a3 + 80) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t LoadingView.init<>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = KeyPath;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v5;

  j__swift_retain(KeyPath);

  sub_1B7A4A378(sub_1B7A4A624, v7, a2);

  j__swift_release(KeyPath);
}

double sub_1B7A4A5C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  j__swift_retain(v2);

  return result;
}

unint64_t sub_1B7A4A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC108D0;
  if (!qword_1EDC108D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC108D0);
  }

  return result;
}

uint64_t sub_1B7A4A754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B7A4A7B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7A4A884()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7A4AA40, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1B7A4AA40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A4AAAC(uint64_t a1)
{
  v2 = sub_1B7A970C0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x1B8CA8990](v5);
}

unint64_t sub_1B7A4AB74()
{
  result = qword_1EBA49240;
  if (!qword_1EBA49240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49228, &qword_1B7AA6358);
    sub_1B797EC34(&qword_1EDC0EC18, &qword_1EBA49248, &unk_1B7AA63A0, MEMORY[0x1E697BF38]);
    sub_1B797EC34(&qword_1EDC0EB40, &qword_1EBA49238, &qword_1B7AA6368, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49240);
  }

  return result;
}

uint64_t sub_1B7A4AC64()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 129);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B798D338;

  return sub_1B7A48548(v8, v4, v5, v0 + 48, v6, v2, v3);
}

unint64_t sub_1B7A4AD54()
{
  result = qword_1EDC108C8;
  if (!qword_1EDC108C8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49258, &unk_1B7AA6440);
    sub_1B7A4A700(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC108C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ContentUnavailableBackgroundView(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B7A4AE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for FlowStackAuthority(0, *(*a1 + 80), *(*a1 + 88), *(*a1 + 96));
  swift_getWitnessTable();
  result = sub_1B7A97490();
  *a6 = result;
  a6[1] = v12;
  a6[2] = a2;
  a6[3] = a3;
  a6[4] = a4;
  a6[5] = a5;
  return result;
}

uint64_t sub_1B7A4AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v18(v17, v14);
  sub_1B7957EE0(v12, a5, a8);
  v19 = *(v10 + 8);
  v19(v12, a5);
  sub_1B7957EE0(v16, a5, a8);
  return (v19)(v16, a5);
}

uint64_t sub_1B7A4B094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08, &qword_1B7A9C680);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648, &qword_1B7A9D600);
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v93 = &v72 - v6;
  v104 = sub_1B7A97480();
  v103 = a1[7];
  v136 = v103;
  v137 = MEMORY[0x1E69E5FE8];
  *&v109 = a1[3];
  v134 = v109;
  v135 = MEMORY[0x1E69E5FE0];
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  v7 = sub_1B7A97590();
  v73 = a1[2];
  v8 = a1[5];
  v107 = a1[6];
  *&v108 = v8;
  v9 = type metadata accessor for FlowStackAuthority.PathComponent(255, v73, v8, v107);
  v100 = a1[4];
  v10 = v100;
  v106 = a1[8];
  v11 = v106;
  WitnessTable = swift_getWitnessTable();
  v134 = v10;
  v135 = v9;
  v136 = v11;
  v137 = WitnessTable;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v13 = sub_1B7A97590();
  v14 = swift_getWitnessTable();
  v15 = MEMORY[0x1E6980A18];
  v95 = MEMORY[0x1E6980A18];
  v16 = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0, MEMORY[0x1E6980A18]);
  v142 = v14;
  v143 = v16;
  v102 = MEMORY[0x1E697E858];
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, v15);
  v140 = v18;
  v141 = v19;
  v20 = swift_getWitnessTable();
  v134 = v7;
  v135 = v9;
  v136 = v13;
  v137 = v17;
  v138 = WitnessTable;
  v139 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = v7;
  v135 = v9;
  v136 = v13;
  v137 = v17;
  v138 = WitnessTable;
  v139 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_1B7A975B0();
  v83 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v72 - v21;
  v78 = sub_1B7A97590();
  v84 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v74 = &v72 - v22;
  v23 = v73;
  v24 = v100;
  v134 = v73;
  v135 = v100;
  v26 = v107;
  v25 = v108;
  v136 = v108;
  v137 = v107;
  v27 = v106;
  v138 = v106;
  v86 = type metadata accessor for FlowStackSheetViewModifier(255, &v134);
  v85 = sub_1B7A97590();
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v101 = &v72 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49300, &qword_1B7AA65F8);
  v89 = sub_1B7A97590();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v104 = &v72 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49308, &qword_1B7AA6600);
  v91 = sub_1B7A97590();
  v94 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v90 = &v72 - v32;
  v33 = v105[1];
  v82 = *v105;
  v81 = type metadata accessor for FlowStackAuthority(0, v23, v25, v26);
  v75 = swift_getWitnessTable();
  sub_1B7A974A0();
  *&v34 = v23;
  *(&v34 + 1) = v109;
  *&v35 = v24;
  *(&v35 + 1) = v25;
  v108 = v35;
  v109 = v34;
  v121 = v34;
  v122 = v35;
  v36 = v103;
  v123 = v26;
  v124 = v103;
  v125 = v27;
  swift_getKeyPath();
  sub_1B7A974B0();

  v115 = v109;
  v116 = v108;
  v117 = v26;
  v118 = v36;
  v37 = v105;
  v119 = v27;
  v120 = v105;
  v38 = v76;
  sub_1B7A975A0();
  v72 = v33;
  v39 = sub_1B7A88EE8();
  v40 = v77;
  v41 = swift_getWitnessTable();
  v42 = v74;
  sub_1B7A81FC0(v39, v40, v41);

  (*(v83 + 8))(v38, v40);
  v43 = sub_1B7A8995C();
  v44 = v37[4];
  v45 = v37[5];
  v48 = sub_1B7A4CCB4(v43, v46, v47);
  v132 = v41;
  v133 = v48;
  v49 = v78;
  v50 = swift_getWitnessTable();
  v51 = v106;
  sub_1B7A5DE14(v43, v44, v45, v49, v100, v50, v106);

  (*(v84 + 8))(v42, v49);
  swift_getKeyPath();
  v52 = swift_allocObject();
  v53 = v108;
  *(v52 + 16) = v109;
  *(v52 + 32) = v53;
  v54 = v103;
  *(v52 + 48) = v107;
  *(v52 + 56) = v54;
  *(v52 + 64) = v51;
  v55 = *(v37 + 1);
  *(v52 + 72) = *v37;
  *(v52 + 88) = v55;
  *(v52 + 104) = *(v37 + 2);

  v56 = swift_getWitnessTable();
  v130 = v50;
  v131 = v56;
  v57 = v85;
  v58 = swift_getWitnessTable();
  v59 = v101;
  sub_1B7A98320();

  (*(v87 + 8))(v59, v57);
  swift_getKeyPath();
  sub_1B7A974A0();
  v110 = v109;
  v111 = v108;
  v112 = v107;
  v113 = v54;
  v114 = v106;
  swift_getKeyPath();
  v60 = v96;
  sub_1B7A974B0();

  (*(v97 + 56))(v60, 0, 1, v98);
  v61 = sub_1B797EC34(&qword_1EBA49318, &qword_1EBA49300, &qword_1B7AA65F8, MEMORY[0x1E6980B30]);
  v128 = v58;
  v129 = v61;
  v62 = v89;
  v63 = swift_getWitnessTable();
  v64 = v88;
  v65 = v104;
  sub_1B7A98150();

  sub_1B7A4CD40(v60);
  (*(v92 + 8))(v65, v62);
  v66 = sub_1B797EC34(&qword_1EBA49320, &qword_1EBA49308, &qword_1B7AA6600, v95);
  v126 = v63;
  v127 = v66;
  v67 = v91;
  v68 = swift_getWitnessTable();
  v69 = v90;
  sub_1B7957EE0(v64, v67, v68);
  v70 = *(v94 + 8);
  v70(v64, v67);
  sub_1B7957EE0(v69, v67, v68);
  return (v70)(v69, v67);
}

uint64_t sub_1B7A4BBC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1EBA507D0;
  swift_beginAccess();
  v5 = sub_1B7A97480();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1B7A4BC50(uint64_t a1)
{
  v2 = sub_1B7A97480();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1B7A898C8(v5);
}

uint64_t sub_1B7A4BD1C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v61 = a1;
  v84 = a8;
  v72 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v69 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v14;
  v85 = v14;
  v86 = MEMORY[0x1E69E5FE0];
  v78 = v15;
  v87 = v15;
  v88 = MEMORY[0x1E69E5FE8];
  v16 = sub_1B7A987A0();
  v70 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = v59 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  v18 = sub_1B7A97590();
  v79 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v74 = v59 - v19;
  v81 = a2;
  v82 = a5;
  v83 = a6;
  v20 = type metadata accessor for FlowStackAuthority.PathComponent(255, a2, a5, a6);
  WitnessTable = swift_getWitnessTable();
  v76 = a4;
  v85 = a4;
  v86 = v20;
  v80 = a7;
  v87 = a7;
  v88 = WitnessTable;
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v22 = sub_1B7A97590();
  v71 = v16;
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x1E6980A18];
  v25 = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0, MEMORY[0x1E6980A18]);
  v59[1] = v23;
  v93 = v23;
  v94 = v25;
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, v24);
  v91 = v27;
  v92 = v28;
  v29 = swift_getWitnessTable();
  v77 = v18;
  v85 = v18;
  v86 = v20;
  v62 = v20;
  v68 = v22;
  v87 = v22;
  v88 = v26;
  v66 = v26;
  v73 = WitnessTable;
  v89 = WitnessTable;
  v90 = v29;
  v64 = v29;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v31 = v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v63 = v59 - v33;
  sub_1B7A9A760();
  v59[2] = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v35 = v61;
  v36 = v69;
  (*(v61 + 2))(isCurrentExecutor);
  v95 = *v35;
  v85 = *(&v95 + 1);
  v37 = v67;
  v38 = v75;
  v39 = v78;
  sub_1B7A98390();
  (*(v72 + 8))(v36, v38);
  swift_getKeyPath();
  LOBYTE(v85) = 1;
  v40 = v74;
  v41 = v71;
  sub_1B7A98150();

  (*(v70 + 8))(v37, v41);
  v42 = swift_checkMetadataState();
  v43 = swift_allocObject();
  v44 = v81;
  v45 = v82;
  *(v43 + 16) = v81;
  *(v43 + 24) = v38;
  *(v43 + 32) = v76;
  *(v43 + 40) = v45;
  v46 = v83;
  *(v43 + 48) = v83;
  *(v43 + 56) = v39;
  *(v43 + 64) = v80;
  v47 = v35[1];
  *(v43 + 72) = *v35;
  *(v43 + 88) = v47;
  *(v43 + 104) = v35[2];
  type metadata accessor for FlowStackAuthority(255, v44, v45, v46);
  swift_getWitnessTable();
  v48 = sub_1B7A974C0();
  (*(*(v48 - 8) + 16))(&v85, &v95, v48);

  v49 = swift_checkMetadataState();
  v50 = v64;
  v51 = v77;
  v52 = v66;
  v53 = v73;
  sub_1B7A98330();

  (*(v79 + 8))(v40, v51);
  v85 = v51;
  v86 = v42;
  v87 = v49;
  v88 = v52;
  v89 = v53;
  v90 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v63;
  v56 = OpaqueTypeMetadata2;
  sub_1B7957EE0(v31, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v57 = *(v65 + 8);
  v57(v31, v56);
  sub_1B7957EE0(v55, v56, OpaqueTypeConformance2);
  v57(v55, v56);
}

uint64_t EnvironmentValues.isAtFlowStackRoot.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A4C558(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

unint64_t sub_1B7A4C558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49278;
  if (!qword_1EBA49278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49278);
  }

  return result;
}

void *sub_1B7A4C5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  sub_1B7A4C558(a1, a2, a3);
  result = sub_1B7A97890();
  *a4 = v6;
  return result;
}

uint64_t sub_1B7A4C658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A4C694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B7A4C6DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A4C740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5)
{
  v31 = a2;
  v35 = a4;
  v6 = *(a3 - 8);
  v33 = a1;
  v34 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FlowStackAuthority.PathComponent(255, v9, v11, v10);
  WitnessTable = swift_getWitnessTable();
  v38[0] = a3;
  v38[1] = v12;
  v30 = a5;
  v38[2] = a5;
  v38[3] = WitnessTable;
  v28[1] = WitnessTable;
  v14 = sub_1B7A987A0();
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v17 = sub_1B7A97590();
  v32 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v28 - v21;
  sub_1B7A9A760();
  v28[2] = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v31 + 32))(v33 + *(v12 + 44));
  sub_1B7A98390();
  (*(v34 + 8))(v8, a3);
  LOBYTE(v38[0]) = 1;
  v23 = swift_getWitnessTable();
  View.presentedBy(_:)(v38, v14, v23);
  (*(v29 + 8))(v16, v14);
  v24 = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, MEMORY[0x1E6980A18]);
  v36 = v23;
  v37 = v24;
  v25 = swift_getWitnessTable();
  sub_1B7957EE0(v19, v17, v25);
  v26 = *(v32 + 8);
  v26(v19, v17);
  sub_1B7957EE0(v22, v17, v25);
  v26(v22, v17);
}

uint64_t sub_1B7A4CB3C(unint64_t *a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A8995C();
  v2 = sub_1B7A29318();

  v4 = *a1;
  if (v2)
  {
    if (v4)
    {
      return result;
    }

    v5 = v4 | 1;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      return result;
    }

    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  }

  *a1 = v5;
  return result;
}

unint64_t sub_1B7A4CCB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49310;
  if (!qword_1EBA49310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49310);
  }

  return result;
}

uint64_t sub_1B7A4CD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F08, &qword_1B7A9C680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_5()
{

  return swift_deallocObject();
}

double sub_1B7A4CE28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v26 = a3;
  v27 = a6;
  v25 = a5;
  v28 = a7;
  v10 = *a1;
  v11 = *(*a1 + 88);
  v12 = *(*a1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v25 - v16;
  (*(v14 + 16))(&v25 - v16, a2, AssociatedTypeWitness, v15);
  v18 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  *(v19 + 2) = v12;
  *(v19 + 3) = v20;
  *(v19 + 4) = v11;
  *(v19 + 5) = *(v10 + 96);
  v21 = v26;
  *(v19 + 6) = v27;
  *(v19 + 7) = v21;
  *(v19 + 8) = a4;
  (*(v14 + 32))(&v19[v18], v17, AssociatedTypeWitness);

  sub_1B7A4AE88(a1, sub_1B7A4D020, v19, v21, a4, v29);
  v22 = v29[1];
  v23 = v28;
  *v28 = v29[0];
  v23[1] = v22;
  result = *&v30;
  v23[2] = v30;
  return result;
}

uint64_t sub_1B7A4D020()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0 + ((*(v6 + 80) + 72) & ~*(v6 + 80));

  return sub_1B7A4AF58(v7, v8, v9, v1, v2, v3, v4, v5);
}

uint64_t sub_1B7A4D0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A4DD68(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

void *sub_1B7A4D120@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A4DD68(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7A4D170(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A4DD68(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B7A4D1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v17 - v6;
  sub_1B7A9AC60();
  swift_getAssociatedConformanceWitness();
  sub_1B7A9AE10();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  swift_getKeyPath();
  v18 = v3;
  sub_1B7A4DCF4();
  sub_1B7A96CB0();

  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_1B7994ACC(v19);
    if (v10)
    {
      v11 = (*(v8 + 56) + 24 * v9);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];

      sub_1B7991408(v19);

      v17[1] = v12;
      v17[2] = v13;
      v17[3] = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49360, &unk_1B7AA67C0);
      MEMORY[0x1B8CA9A40](v17, v15);

      return v17[0];
    }
  }

  sub_1B7991408(v19);
  return 0;
}

uint64_t sub_1B7A4D3FC()
{
  swift_getKeyPath();
  sub_1B7A4DCF4();
  sub_1B7A96CB0();

  swift_beginAccess();
}

uint64_t sub_1B7A4D484@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7A4DCF4();
  sub_1B7A96CB0();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B7A4D514(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B7A4DCF4();
  sub_1B7A96CA0();
}

uint64_t sub_1B7A4D5B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1B7A4D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B7A9AE10();
  swift_getKeyPath();
  sub_1B7A4DCF4();

  sub_1B7A96CB0();

  swift_getKeyPath();
  sub_1B7A96CD0();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v6 + 16);
  *(v6 + 16) = 0x8000000000000000;
  sub_1B79A09EC(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
  sub_1B7991408(v13);
  *(v6 + 16) = v12;
  swift_endAccess();
  swift_getKeyPath();
  sub_1B7A96CC0();
}

uint64_t sub_1B7A4D788()
{

  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUI26FlowStackTabProvidedBadges___observationRegistrar;
  v2 = sub_1B7A96CF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t View.flowStackTabBadge<A>(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a9;
  v24 = a8;
  v25 = a3;
  v26 = a4;
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  (*(v14 + 16))(&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6);
  v16 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a5;
  *(v17 + 3) = a6;
  v18 = v24;
  *(v17 + 4) = a7;
  *(v17 + 5) = v18;
  (*(v14 + 32))(&v17[v16], &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  v19 = &v17[(v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v25;
  v20 = v26;
  *v19 = a2;
  *(v19 + 1) = v21;
  *(v19 + 2) = v20;

  sub_1B7A98320();
}

uint64_t sub_1B7A4D9E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!*a1)
  {
    type metadata accessor for FlowStackTabProvidedBadges(0);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1B799126C(MEMORY[0x1E69E7CC0]);
    sub_1B7A96CE0();
    *a1 = v15;
  }

  sub_1B7A4D618(a2, a3, a4, a5, a7, a9);
}

uint64_t sub_1B7A4DB08(uint64_t *a1)
{
  v2 = (*(*(v1[3] - 8) + 80) + 48) & ~*(*(v1[3] - 8) + 80);
  v3 = (v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B7A4D9E0(a1, v1 + v2, *v3, v3[1], v3[2], v1[2], v1[3], v1[4], v1[5]);
}

uint64_t type metadata accessor for FlowStackTabProvidedBadges(uint64_t a1)
{
  result = qword_1EBA49330;
  if (!qword_1EBA49330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7A4DBF0(uint64_t a1)
{
  result = sub_1B7A96CF0();
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

unint64_t sub_1B7A4DC90()
{
  result = qword_1EBA49348;
  if (!qword_1EBA49348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49340, &qword_1B7AA6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49348);
  }

  return result;
}

unint64_t sub_1B7A4DCF4()
{
  result = qword_1EBA49350;
  if (!qword_1EBA49350)
  {
    type metadata accessor for FlowStackTabProvidedBadges(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49350);
  }

  return result;
}

unint64_t sub_1B7A4DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA49358;
  if (!qword_1EBA49358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49358);
  }

  return result;
}

uint64_t sub_1B7A4DDCC(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B7A4DE48(uint64_t a1, uint64_t *a2)
{
  sub_1B7957820(a1, v4, &qword_1EBA47E70, &unk_1B7AA1690);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7957820(v4, &v3, &qword_1EBA47E70, &unk_1B7AA1690);

  sub_1B7A96F30();
  return sub_1B7957888(v4, &qword_1EBA47E70, &unk_1B7AA1690);
}

__n128 LocalizedText.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a1[1].n128_u64[0];
  a2->n128_u64[0] = swift_getKeyPath();
  a2->n128_u8[8] = 0;
  result = *a1;
  a2[1] = *a1;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t LocalizedText.body.getter()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v36 = *v0;
  v37 = v5;
  v6 = *(v0 + 4);
  v40 = *(v0 + 8);
  v7 = *v0;
  v38 = v6;
  v39 = v7;
  v8 = v40;

  if ((v8 & 1) == 0)
  {
    sub_1B7A9AA10();
    v12 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B7957888(&v39, &qword_1EBA47DE8, &qword_1B7AA7A30);
    v9 = (*(v2 + 8))(v4, v1);
    v7 = v29;
  }

  if (v7)
  {
    type metadata accessor for _LocalizerOwner(0);
    sub_1B79F2650(v13);

    sub_1B7A97490();
    v26[1] = v14;
    sub_1B7A974A0();
    swift_getKeyPath();
    sub_1B7A974B0();

    v15 = swift_allocObject();
    v16 = v37;
    *(v15 + 16) = v36;
    *(v15 + 32) = v16;
    *(v15 + 48) = v38;
    v28[8] = nullsub_1;
    v28[9] = 0;
    v28[10] = sub_1B7A4E3D0;
    v28[11] = 0;
    v28[12] = sub_1B7A4E518;
    v28[13] = v15;
    sub_1B7957820(v28, &v29, &qword_1EBA49368, &unk_1B7AA6800);
    v35 = 0;
    sub_1B7A4E520(&v36, &v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49368, &unk_1B7AA6800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    sub_1B797EC34(&qword_1EBA49370, &qword_1EBA49368, &unk_1B7AA6800, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    sub_1B7A97B30();

    return sub_1B7957888(v28, &qword_1EBA49368, &unk_1B7AA6800);
  }

  else
  {
    v29 = 0xD000000000000022;
    v30 = 0x80000001B7AC61C0;
    sub_1B7999DD8(v9, v10, v11);
    v18 = sub_1B7A98080();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = 0xD000000000000022;
    *(v25 + 24) = 0x80000001B7AC61C0;
    v29 = v18;
    v30 = v20;
    v31 = v22 & 1;
    v32 = v24;
    v33 = sub_1B797D598;
    v34 = v25;
    v35 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49368, &unk_1B7AA6800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46788, &unk_1B7A9D6E0);
    sub_1B797EC34(&qword_1EBA49370, &qword_1EBA49368, &unk_1B7AA6800, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    return sub_1B7A97B30();
  }
}

id sub_1B7A4E3D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = _taskRetry(for:)(a1);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v5;

  return a1;
}

uint64_t sub_1B7A4E414@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *(a2 + 16);
  v14 = *(a2 + 32);
  v5 = v13;
  sub_1B7A4E6F8(&v13, v12);
  v6 = v5(a1);
  v8 = v7;
  sub_1B7A4E754(&v13);
  KeyPath = swift_getKeyPath();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA49388, &qword_1B7AA6960) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47E78, &qword_1B7AA16A0);
  result = sub_1B7A9A2D0();
  *v10 = KeyPath;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B7A4E574(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B7A4E5BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1B7A4E614()
{
  result = qword_1EBA49378;
  if (!qword_1EBA49378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49380, &qword_1B7AA6928);
    sub_1B797EC34(&qword_1EBA49370, &qword_1EBA49368, &unk_1B7AA6800, &unk_1B7AA7000);
    sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49378);
  }

  return result;
}

uint64_t IntentView<>.pageResourceMetrics()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v9[0] = 0;
  KeyPath = swift_getKeyPath();
  v11 = 0;
  v12 = swift_getKeyPath();
  v13 = 0;
  v5 = type metadata accessor for PageResourceMetricsViewModifier(0, v2, v3, v4);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v9, a1, v5, WitnessTable);
  v7 = v12;
  j__swift_release(KeyPath);
  return j__swift_release(v7);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v9[0] = 0;
  KeyPath = swift_getKeyPath();
  v11 = 0;
  v12 = swift_getKeyPath();
  v13 = 0;
  v5 = type metadata accessor for PageResourceMetricsViewModifier(0, v2, v3, v4);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v9, a1, v5, WitnessTable);
  v7 = v12;
  j__swift_release(KeyPath);
  return j__swift_release(v7);
}

uint64_t sub_1B7A4E8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11[0] = 1;
  KeyPath = swift_getKeyPath();
  v13 = 0;
  v14 = swift_getKeyPath();
  v15 = 0;
  v7 = type metadata accessor for PageResourceMetricsViewModifier(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v11, a1, v7, WitnessTable);
  v9 = v14;
  j__swift_release(KeyPath);
  return j__swift_release(v9);
}

uint64_t ModifiedContent<>.pageResourceMetrics()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11[0] = 1;
  KeyPath = swift_getKeyPath();
  v13 = 0;
  v14 = swift_getKeyPath();
  v15 = 0;
  v7 = type metadata accessor for PageResourceMetricsViewModifier(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v11, a1, v7, WitnessTable);
  v9 = v14;
  j__swift_release(KeyPath);
  return j__swift_release(v9);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11[0] = 1;
  KeyPath = swift_getKeyPath();
  v13 = 0;
  v14 = swift_getKeyPath();
  v15 = 0;
  v7 = type metadata accessor for PageResourceMetricsViewModifier(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v11, a1, v7, WitnessTable);
  v9 = v14;
  j__swift_release(KeyPath);
  return j__swift_release(v9);
}

uint64_t get_witness_table_9JetEngine11IntentModelRz7SwiftUI4ViewR_AcDR0_AcDR1_AA05ShelfD010ReturnTypeRpzr2_lAC15ModifiedContentVy01_ab1_eF00cG0Vyxq_q0_q1_GAJ019PageResourceMetricsG8Modifier33_2290306F402D82832DE0DC1062434EFALLVyxGGAcDHPAmcDHPyHC_AqC0gP0HPyHCHCTm(_OWORD *a1)
{
  v1 = a1[1];
  v7[0] = *a1;
  v6 = *&v7[0];
  v7[1] = v1;
  v2 = a1[3];
  v8 = a1[2];
  v5 = v8;
  v9 = v2;
  type metadata accessor for IntentView(255, v7);
  type metadata accessor for PageResourceMetricsViewModifier(255, v6, v5, v3);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRz011_JetEngine_aB0018_IntentDispatchingC8ModifierR_0dE010ShelfModel5_What_10ReturnTypeRP_r0_lAA15ModifiedContentVyAKyxq_GAC019PageResourceMetricscH033_2290306F402D82832DE0DC1062434EFALLVyAGQy_GGAaBHPAlaBHPxAaBHD1__q_AcDHD2_AA0cH0HI1_HC_AqaSHPyHCHCTm(void *a1)
{
  sub_1B7A97590();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PageResourceMetricsViewModifier(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7A4EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7A4EF88(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B7A4EFDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B7A4F068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v135 = a1;
  v142 = a4;
  swift_getWitnessTable();
  v6 = sub_1B7A97C30();
  WitnessTable = swift_getWitnessTable();
  v173[0] = v6;
  v173[1] = MEMORY[0x1E6981148];
  v145 = WitnessTable;
  v173[2] = WitnessTable;
  v173[3] = MEMORY[0x1E6981138];
  v8 = type metadata accessor for _RequirementFailureView(0, v173);
  v113 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v110 - v11;
  v116 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v110 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910, &qword_1B7AA03F0);
  v16 = sub_1B7A97590();
  v17 = *(a2 + 24);
  v131 = *(a2 + 16);
  v132 = v17;
  type metadata accessor for _IntentProgress(255, v131, v17, v18);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  v146 = sub_1B7A97DF0();
  v19 = sub_1B7A97590();
  v143 = v6;
  v20 = sub_1B7A97B40();
  v134 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v110 - v21;
  v124 = sub_1B7A98C30();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1B7A99C60();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v119 = &v110 - v25;
  v144 = v16;
  v127 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v110 - v27;
  v139 = v19;
  v130 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v129 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v126 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v128 = &v110 - v34;
  v35 = sub_1B7A97880();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v20;
  v141 = v8;
  v138 = sub_1B7A97B40();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v110 - v39;
  v40 = *v4;
  v41 = *(v4 + 1);
  LOBYTE(v8) = v4[16];
  v42 = *(v4 + 3);
  v43 = v4[32];

  if ((v8 & 1) == 0)
  {
    sub_1B7A9AA10();
    v44 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v41);
    (*(v36 + 8))(v38, v35);
    v41 = v173[0];
  }

  if (v41)
  {
    swift_getKeyPath();
    v115 = v28;
    if (v43)
    {
      v173[0] = v42;
    }

    else
    {

      sub_1B7A9AA10();
      v61 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      j__swift_release(v42);
      (*(v36 + 8))(v38, v35);
      v42 = v173[0];
    }

    v62 = v144;
    if (v42)
    {
      v63 = v119;
      v64 = v41;
      sub_1B7A99D20();
      v65 = v120;
      v66 = v122;
      (*(v120 + 104))(v63, *MEMORY[0x1E69AB408], v122);
      (*(v65 + 16))(v118, v63, v66);
      v67 = v121;
      sub_1B7A98C00();
      v68 = sub_1B7A992C0();

      (*(v123 + 8))(v67, v124);
      (*(v65 + 8))(v63, v66);
    }

    else
    {
      v68 = 0;
      v64 = v41;
    }

    v173[0] = v68;
    v69 = v115;
    v70 = v145;
    sub_1B7A98150();

    v71 = swift_allocObject();
    v72 = v131;
    v73 = v132;
    v71[2] = v131;
    v71[3] = v73;
    v71[4] = v64;
    v74 = sub_1B7A504E0();
    v151 = v70;
    v152 = v74;
    v114 = v64;
    swift_retain_n();
    v75 = swift_getWitnessTable();
    v76 = v126;
    sub_1B79E3830(v72, &unk_1B7AA6B10, v71, v62, v72, v75, v73);

    (*(v127 + 8))(v69, v62);
    v77 = swift_getWitnessTable();
    v149 = v75;
    v150 = v77;
    v78 = v139;
    v79 = swift_getWitnessTable();
    v80 = v128;
    sub_1B7957EE0(v76, v78, v79);
    v81 = *(v130 + 8);
    v81(v76, v78);
    v82 = v129;
    sub_1B7957EE0(v80, v78, v79);
    v83 = v133;
    sub_1B79B5878(v82, v78, v143, v79, v70);
    v147 = v79;
    v148 = v70;
    v84 = v140;
    v85 = swift_getWitnessTable();
    v86 = v141;
    v87 = swift_getWitnessTable();
    v59 = v136;
    sub_1B79B5878(v83, v84, v86, v85, v87);

    (*(v134 + 8))(v83, v84);
    v81(v82, v78);
    v81(v80, v78);
    v47 = v145;
  }

  else if (v40)
  {
    v45 = v125;
    v46 = v143;
    v47 = v145;
    sub_1B7957EE0(v135, v143, v145);
    v48 = v111;
    sub_1B7957EE0(v45, v46, v47);
    v49 = sub_1B7A504E0();
    v157 = v47;
    v158 = v49;
    v50 = swift_getWitnessTable();
    v51 = swift_getWitnessTable();
    v155 = v50;
    v156 = v51;
    v52 = v139;
    v53 = swift_getWitnessTable();
    v54 = v133;
    sub_1B7959A28(v48, v52, v46, v53, v47);
    v153 = v53;
    v154 = v47;
    v55 = v140;
    v56 = swift_getWitnessTable();
    v57 = v141;
    v58 = swift_getWitnessTable();
    v59 = v136;
    sub_1B79B5878(v54, v55, v57, v56, v58);
    (*(v134 + 8))(v54, v55);
    v60 = *(v116 + 8);
    v60(v48, v46);
    v60(v125, v46);
  }

  else
  {
    v88 = v125;
    v89 = v143;
    (*(v116 + 16))(v125, v135, v143);
    v90 = v112;
    v91 = v145;
    _RequirementFailureView.init<>(_:_:)(v88, 0xD000000000000022, 0x80000001B7AC7AC0, v89, v145, v112);
    v92 = v141;
    v93 = swift_getWitnessTable();
    v94 = v117;
    sub_1B7957EE0(v90, v92, v93);
    v143 = *(v113 + 8);
    v143(v90, v92);
    sub_1B7957EE0(v94, v92, v93);
    v95 = sub_1B7A504E0();
    v171 = v91;
    v172 = v95;
    v96 = swift_getWitnessTable();
    v97 = swift_getWitnessTable();
    v169 = v96;
    v170 = v97;
    v167 = swift_getWitnessTable();
    v168 = v91;
    v98 = v140;
    v99 = swift_getWitnessTable();
    v59 = v136;
    sub_1B7959A28(v90, v98, v92, v99, v93);
    v100 = v90;
    v47 = v91;
    v101 = v143;
    v143(v100, v92);
    v101(v117, v92);
  }

  v102 = sub_1B7A504E0();
  v165 = v47;
  v166 = v102;
  v103 = swift_getWitnessTable();
  v104 = swift_getWitnessTable();
  v163 = v103;
  v164 = v104;
  v161 = swift_getWitnessTable();
  v162 = v47;
  v105 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v159 = v105;
  v160 = v106;
  v107 = v138;
  v108 = swift_getWitnessTable();
  sub_1B7957EE0(v59, v107, v108);
  return (*(v137 + 8))(v59, v107);
}

uint64_t sub_1B7A50138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = sub_1B7A99CC0();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  v8 = sub_1B7A99CD0();
  v4[7] = v8;
  v4[8] = *(v8 - 8);
  v4[9] = swift_task_alloc();
  v10 = type metadata accessor for _IntentProgress(0, a3, a4, v9);
  v4[10] = v10;
  v4[11] = *(v10 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7A502C0, 0, 0);
}

uint64_t sub_1B7A502C0()
{
  (*(v0[11] + 16))(v0[12], v0[2], v0[10]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v3 = v0[5];
      v2 = v0[6];
      v4 = v0[4];
      v5 = *v0[12];
      *v2 = v5;
      *(v2 + 8) = 1;
      (*(v3 + 104))(v2, *MEMORY[0x1E69AB428], v4);
      v6 = v5;
      sub_1B7A99D10();

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      v14 = v0[8];
      v13 = v0[9];
      v15 = v0[7];
      *v13 = 1;
      (*(v14 + 104))(v13, *MEMORY[0x1E69AB448], v15);
      sub_1B7A99D30();
      (*(v14 + 8))(v13, v15);
    }
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    *v10 = 1;
    (*(v11 + 104))(v10, *MEMORY[0x1E69AB438], v12);
    sub_1B7A99D10();
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
  }

  v16 = v0[1];

  return v16();
}

unint64_t sub_1B7A504E0()
{
  result = qword_1EBA47920;
  if (!qword_1EBA47920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910, &qword_1B7AA03F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA47920);
  }

  return result;
}

uint64_t sub_1B7A50544(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B798D338;

  return sub_1B7A50138(a1, v6, v4, v5);
}

uint64_t sub_1B7A505FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(v11 + 24))(v12, v11, v9);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = (&v17 - ((v8 + 39) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  (*(v7 + 32))(v15 + 3, v10, a3, v14);
  swift_getKeyPath();
  return sub_1B7A97100();
}

uint64_t sub_1B7A50734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(v14 + 24))(v15, v14, v12);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = (&v20 - ((v11 + 47) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  (*(v10 + 32))(v18 + 4, v13, a4, v17);
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t sub_1B7A508D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v7 + 16))(&v9 - v6, a1, v5);
  return sub_1B7A978A0();
}

int *IntentResultView.init(_:empty:success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for IntentResult(255, a8, a3, a4);
  v21 = sub_1B7A98870();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  result = type metadata accessor for IntentResultView(0, &v27);
  v23 = (a9 + result[19]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[20]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[21]);
  *v25 = a6;
  v25[1] = a7;
  return result;
}

uint64_t _IntentResultViewDefaultFailure.init(error:retry:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_1B7A50AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentResult(255, *(a1 + 16), a3, a4);
  sub_1B7A98870();

  JUMPOUT(0x1B8CA9A40);
}

uint64_t IntentResultView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = *(a1 + 24);
  v104 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v103 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v99 - v6;
  v107 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v105 = v8;
  v106 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(*(v9 + 40) - 8);
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v99 - v12;
  v14 = *(v13 + 32);
  v117 = v15;
  v16 = sub_1B7A97B40();
  v116 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v115 = &v99 - v17;
  v125 = v14;
  v113 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v99 - v21;
  v22 = *(a1 + 16);
  v111 = sub_1B7A9AB60();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v24 = &v99 - v23;
  v27 = type metadata accessor for IntentResult(0, v22, v25, v26);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v99 - v32;
  v34 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v118 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v16;
  v126 = v3;
  v37 = sub_1B7A97B40();
  v121 = *(v37 - 8);
  v122 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v99 - v38;
  sub_1B7A50AF8(a1, v39, v40, v41);
  IntentResult.data.getter(v27, v24, v42, v43);
  v44 = *(v28 + 8);
  v44(v33, v27);
  v45 = v22;
  if ((*(v34 + 48))(v24, 1, v22) == 1)
  {
    v46 = v125;
    (*(v110 + 8))(v24, v111);
    v47 = v127;
    sub_1B7A50AF8(a1, v48, v49, v50);
    v54 = IntentResult.error.getter(v27, v51, v52, v53);
    v55 = (v44)(v30, v27);
    if (v54)
    {
      v56 = (v47 + *(a1 + 84));
      v58 = *v56;
      v57 = v56[1];
      v118 = v58;
      v113 = v57;
      v119 = v54;
      v59 = v107;
      v60 = v45;
      v61 = v106;
      (*(v107 + 16))(v106, v47, a1);
      v62 = (*(v59 + 80) + 72) & ~*(v59 + 80);
      v63 = swift_allocObject();
      *&v64 = v60;
      *(&v64 + 1) = v126;
      *&v65 = v46;
      v66 = v117;
      *(&v65 + 1) = v117;
      *(v63 + 16) = v64;
      *(v63 + 32) = v65;
      v68 = *(a1 + 48);
      v67 = *(a1 + 56);
      *(v63 + 48) = v68;
      *(v63 + 56) = v67;
      v69 = *(a1 + 64);
      *(v63 + 64) = v69;
      (*(v59 + 32))(v63 + v62, v61, a1);
      v70 = v108;
      (v118)(v54, sub_1B7A51728, v63);

      v71 = v114;
      sub_1B7957EE0(v70, v66, v69);
      v72 = *(v109 + 8);
      v72(v70, v66);
      sub_1B7957EE0(v71, v66, v69);
      v73 = v115;
      sub_1B7959A28(v70, v125, v66, v67, v69);
      v130 = v67;
      v131 = v69;
      v74 = v123;
      WitnessTable = swift_getWitnessTable();
      v76 = v120;
      sub_1B79B5878(v73, v74, v126, WitnessTable, v68);

      (*(v116 + 8))(v73, v74);
      v72(v70, v66);
      v72(v114, v66);
    }

    else
    {
      v90 = v103;
      (*(v47 + *(a1 + 76)))(v55);
      v68 = *(a1 + 48);
      v91 = v102;
      v92 = v126;
      sub_1B7957EE0(v90, v126, v68);
      v93 = *(v104 + 8);
      v93(v90, v92);
      sub_1B7957EE0(v91, v92, v68);
      v67 = *(a1 + 56);
      v69 = *(a1 + 64);
      v136 = v67;
      v137 = v69;
      v94 = v123;
      v95 = swift_getWitnessTable();
      v76 = v120;
      sub_1B7959A28(v90, v94, v92, v95, v68);
      v93(v90, v92);
      v93(v91, v92);
    }
  }

  else
  {
    v101 = v34;
    v77 = *(v34 + 32);
    v78 = v118;
    v100 = v22;
    v77(v118, v24, v22);
    v79 = v112;
    (*(v127 + *(a1 + 80)))(v78);
    v67 = *(a1 + 56);
    v80 = v119;
    v81 = v125;
    sub_1B7957EE0(v79, v125, v67);
    v82 = *(v113 + 1);
    v82(v79, v81);
    sub_1B7957EE0(v80, v81, v67);
    v83 = *(a1 + 64);
    v84 = v115;
    sub_1B79B5878(v79, v81, v117, v67, v83);
    v128 = v67;
    v129 = v83;
    v85 = v123;
    v86 = swift_getWitnessTable();
    v87 = *(a1 + 48);
    v88 = v120;
    sub_1B79B5878(v84, v85, v126, v86, v87);
    (*(v116 + 8))(v84, v85);
    v89 = v79;
    v68 = v87;
    v82(v89, v81);
    v82(v119, v81);
    (*(v101 + 8))(v118, v100);
    v76 = v88;
    v69 = v83;
  }

  v134 = v67;
  v135 = v69;
  v132 = swift_getWitnessTable();
  v133 = v68;
  v96 = v122;
  v97 = swift_getWitnessTable();
  sub_1B7957EE0(v76, v96, v97);
  return (*(v121 + 8))(v76, v96);
}

uint64_t sub_1B7A51670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for IntentResult(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B7A98870();
  MEMORY[0x1B8CA9A40]();
  IntentResult.invalidate(clearing:)(1);
  return sub_1B7A98810();
}

uint64_t sub_1B7A51728()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v11[0] = v0[2];
  v1 = v11[0];
  v11[1] = v2;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v7;
  v8 = *(type metadata accessor for IntentResultView(0, v11) - 8);
  v9 = v0 + ((*(v8 + 80) + 72) & ~*(v8 + 80));

  return sub_1B7A51670(v9, v1, v2, v3);
}

uint64_t _IntentResultViewDefaultEmpty.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B7A978F0();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46BF8, &qword_1B7AA6BD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  v30[0] = 0;
  sub_1B7A986C0();
  v24 = v26;
  v23 = v27;
  KeyPath = swift_getKeyPath();
  v30[0] = 0;
  v21 = swift_getKeyPath();
  v29 = 0;
  v20 = swift_getKeyPath();
  v28 = 0;
  LOBYTE(v26) = 1;
  v17 = v30[0];
  v19 = v29;
  v18 = swift_getKeyPath();
  sub_1B7A978E0();
  sub_1B7A98A40();
  sub_1B7A97180();
  if (sub_1B7A97170())
  {
    sub_1B7A98A50();
  }

  v12 = sub_1B7A51B78();
  sub_1B7A970B0();

  (*(v25 + 8))(v4, v2);
  (*(v6 + 16))(v8, v11, v5);
  v26 = v2;
  v27 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1B7A972B0();
  result = (*(v6 + 8))(v11, v5);
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v24;
  v15 = KeyPath;
  *(a1 + 32) = v23;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v21;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = 0;
  *(a1 + 88) = v18;
  *(a1 + 96) = sub_1B7A51B6C;
  *(a1 + 104) = 0;
  *(a1 + 112) = v13;
  return result;
}

unint64_t sub_1B7A51B78()
{
  result = qword_1EBA46C00;
  if (!qword_1EBA46C00)
  {
    sub_1B7A978F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA46C00);
  }

  return result;
}

uint64_t _IntentResultViewDefaultFailure.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA49410, &qword_1B7AA6C80);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_1B7A51C80;
  v9[2] = 0;
  return result;
}

uint64_t sub_1B7A51C8C(_BYTE *a1, uint64_t a2, char a3)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *a1;

  if (v5 == 3)
  {
    *a1 = a3;
  }

  return result;
}

uint64_t sub_1B7A51DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v3;

  ContentUnavailableView.init<>(error:retry:)(v3, v4, v5, a1);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA49410, &qword_1B7AA6C80);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_1B7A51C80;
  v9[2] = 0;
  return result;
}

unint64_t sub_1B7A51E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentResult(255, *(a1 + 16), a3, a4);
  result = sub_1B7A98870();
  if (v5 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A51EF4(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + ((v7 + 23) & ~v7 & 0x1F8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
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
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_1B7A52028(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + (((*(v4 + 80) & 0xF8) + 23) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v8 = a3 - 2147483646;
    if (v6)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = a2 & 0x7FFFFFFF;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v6)
    {
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v10;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(result + v6) = v11;
      }

      else
      {
        *(result + v6) = v11;
      }
    }

    else if (v7)
    {
      *(result + v6) = v11;
    }

    return result;
  }

  v7 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 <= 1)
  {
    if (v7)
    {
      *(result + v6) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 2)
  {
    *(result + v6) = 0;
    goto LABEL_28;
  }

  *(result + v6) = 0;
  if (a2)
  {
LABEL_29:
    *((result + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B7A521D0()
{
  result = qword_1EBA49498;
  if (!qword_1EBA49498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA494A0, &qword_1B7AA6E20);
    sub_1B7A52288();
    sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA49498);
  }

  return result;
}

unint64_t sub_1B7A52288()
{
  result = qword_1EBA494A8;
  if (!qword_1EBA494A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA494B0, &unk_1B7AA6E28);
    sub_1B797EC34(&qword_1EBA46C18, &qword_1EBA46C08, &unk_1B7A9E020, &protocol conformance descriptor for LoadingView<A>);
    sub_1B797EC34(&qword_1EBA494B8, &qword_1EBA494C0, &qword_1B7AA6E38, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA494A8);
  }

  return result;
}

unint64_t sub_1B7A5236C()
{
  result = qword_1EBA494C8;
  if (!qword_1EBA494C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBA49410, &qword_1B7AA6C80);
    sub_1B797EC34(&qword_1EBA46F48, &qword_1EBA46F50, &unk_1B7A9ECA0, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1B797EC34(&qword_1EBA494D0, &qword_1EBA494D8, &unk_1B7AA6E50, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA494C8);
  }

  return result;
}

uint64_t sub_1B7A524A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a6;
  v14 = *(a5 + 8);
  v56 = a7;
  v57 = v14;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v49 - v21;
  v23 = *(v17 + 16);
  v60 = a8;
  v23(a8, a1, AssociatedTypeWitness, v20);
  v58 = a2;
  sub_1B7A9A920();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v61 = a1;
  v51 = AssociatedConformanceWitness;
  LOBYTE(a8) = sub_1B7A9A440();
  v25 = *(v17 + 8);
  v25(v22, AssociatedTypeWitness);
  v54 = a4;
  v55 = a5;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v65 = v59;
  if (a8)
  {
    v66 = v56;
    v26 = *(type metadata accessor for ShelfCollection.Context(0, &v62) + 60);
    sub_1B7A9A410();
    v27 = sub_1B7A9A9E0();
    v49 = v28;
    v50 = v27;
    v29 = v60;
    v52 = *(v15 + 8);
    v30 = swift_getAssociatedTypeWitness();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v29 + v26, v49, v30);
    v50(&v62, 0);
    v25(v22, AssociatedTypeWitness);
    (*(v31 + 56))(v29 + v26, 0, 1, v30);
    v32 = v56;
  }

  else
  {
    v32 = v56;
    v66 = v56;
    v33 = *(type metadata accessor for ShelfCollection.Context(0, &v62) + 60);
    v52 = *(v15 + 8);
    v34 = swift_getAssociatedTypeWitness();
    (*(*(v34 - 8) + 56))(v60 + v33, 1, 1, v34);
  }

  v35 = v53;
  v36 = v58;
  sub_1B7A9A960();
  sub_1B7A9A410();
  v25(v35, AssociatedTypeWitness);
  LOBYTE(v35) = sub_1B7A9A450();
  v25(v22, AssociatedTypeWitness);
  v37 = v36;
  v38 = v25;
  if (v35)
  {
    v62 = a3;
    v63 = v54;
    v64 = v55;
    v65 = v59;
    v66 = v32;
    v59 = *(type metadata accessor for ShelfCollection.Context(0, &v62) + 64);
    sub_1B7A9A940();
    v57 = sub_1B7A9A9E0();
    v40 = v39;
    v41 = swift_getAssociatedTypeWitness();
    v42 = v59;
    v43 = v60;
    v44 = v38;
    v45 = *(v41 - 8);
    (*(v45 + 16))(v60 + v59, v40, v41);
    v57(&v62, 0);
    (*(*(a3 - 8) + 8))(v58, a3);
    v44(v61, AssociatedTypeWitness);
    v44(v22, AssociatedTypeWitness);
    return (*(v45 + 56))(v43 + v42, 0, 1, v41);
  }

  else
  {
    (*(*(a3 - 8) + 8))(v37, a3);
    v25(v61, AssociatedTypeWitness);
    v62 = a3;
    v63 = v54;
    v64 = v55;
    v65 = v59;
    v66 = v32;
    v47 = *(type metadata accessor for ShelfCollection.Context(0, &v62) + 64);
    v48 = swift_getAssociatedTypeWitness();
    return (*(*(v48 - 8) + 56))(v60 + v47, 1, 1, v48);
  }
}

uint64_t ShelfCollection.Context.shelfOffset.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t ShelfCollection.Context.previousShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfCollection.Context.nextShelf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  swift_getAssociatedTypeWitness();
  v5 = sub_1B7A9AB60();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ShelfCollection.init(_:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *(a6 - 8);
  (*(v18 + 16))(a9, a1, a6);
  v25[0] = a6;
  v25[1] = a7;
  v25[2] = a8;
  v25[3] = a10;
  v25[4] = a11;
  v19 = type metadata accessor for ShelfCollection(0, v25);
  v20 = a9 + v19[15];
  *v20 = a2;
  *(v20 + 8) = a3 & 1;
  v21 = (a9 + v19[16]);
  *v21 = a4;
  v21[1] = a5;
  result = (*(v18 + 8))(a1, a6);
  *(a9 + v19[17]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ShelfCollection.init<A>(_:spacing:shelfContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v33 = a3;
  v34 = a2;
  v31 = a1;
  v32 = a9;
  v16 = *(a6 - 8);
  v29 = a11;
  v17 = MEMORY[0x1EEE9AC00](a1);
  v30 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v17);
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a10;
  v19[6] = a11;
  v19[7] = a4;
  v19[8] = a5;
  v21 = type metadata accessor for IndexedRandomAccessCollection(255, a6, a8, v20);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v21;
  v36 = AssociatedTypeWitness;
  v37 = v28;
  v38 = WitnessTable;
  v39 = AssociatedConformanceWitness;
  v25 = sub_1B7A988E0();
  v26 = swift_getWitnessTable();
  ShelfCollection.init(_:spacing:content:)(v30, v34, v33 & 1, sub_1B7A534BC, v19, a6, v25, a8, v32, v26, v29);
  return (*(v16 + 8))(v31, a6);
}

uint64_t sub_1B7A5302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a8;
  v51 = a7;
  v53 = a2;
  v54 = a3;
  v46 = a1;
  v55 = a9;
  v49 = *(a4 - 8);
  v52 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexedRandomAccessCollection(0, v13, v14, v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v40 - v16;
  v40[2] = v40 - v16;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = v15;
  WitnessTable = swift_getWitnessTable();
  v45 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v62 = v15;
  v63 = AssociatedTypeWitness;
  v64 = a5;
  v65 = WitnessTable;
  v66 = AssociatedConformanceWitness;
  v40[0] = sub_1B7A988E0();
  v50 = *(v40[0] - 8);
  MEMORY[0x1EEE9AC00](v40[0]);
  v42 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v43 = v40 - v22;
  v23 = a6;
  v24 = v46;
  RandomAccessCollection.indexed.getter(a4, v17);
  v56 = a4;
  v57 = a5;
  v25 = v51;
  v58 = a6;
  v59 = v51;
  v26 = v41;
  v60 = v41;
  v40[1] = swift_getKeyPath();
  v27 = v49;
  v28 = v47;
  (*(v49 + 16))(v47, v24, a4);
  v29 = (*(v27 + 80) + 72) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = a4;
  *(v30 + 3) = a5;
  *(v30 + 4) = v23;
  *(v30 + 5) = v25;
  v31 = v53;
  v32 = v54;
  *(v30 + 6) = v26;
  *(v30 + 7) = v31;
  *(v30 + 8) = v32;
  (*(v27 + 32))(&v30[v29], v28, a4);
  v33 = swift_allocObject();
  v33[2] = a4;
  v33[3] = a5;
  v33[4] = v23;
  v33[5] = v25;
  v33[6] = v26;
  v33[7] = sub_1B7A54D1C;
  v33[8] = v30;

  v34 = v42;
  sub_1B7A988B0();
  v61 = v25;
  v35 = v40[0];
  v36 = swift_getWitnessTable();
  v37 = v43;
  sub_1B7957EE0(v34, v35, v36);
  v38 = *(v50 + 8);
  v38(v34, v35);
  sub_1B7957EE0(v37, v35, v36);
  return (v38)(v37, v35);
}

uint64_t sub_1B7A53540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a5;
  v54 = a4;
  v55 = a3;
  v53 = a2;
  v57 = a9;
  v56 = a10;
  v48 = *(a6 - 8);
  v49 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 8);
  v45 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v41 - v16;
  v18 = type metadata accessor for IndexedRandomAccessCollection(255, a6, a8, v17);
  swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v59 = v18;
  v60 = v19;
  v61 = a7;
  v62 = WitnessTable;
  v63 = AssociatedConformanceWitness;
  v22 = sub_1B7A988E0();
  v23 = swift_getWitnessTable();
  v59 = a6;
  v60 = v22;
  v52 = a8;
  v61 = a8;
  v62 = v23;
  v42 = v23;
  v50 = a11;
  v63 = a11;
  v43 = type metadata accessor for ShelfCollection.Context(0, &v59);
  v24 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v26 = &v41 - v25;
  v58 = a7;
  v27 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v41 - v32;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = v46;
  (*(v44 + 16))(v46, v49, v45);
  v35 = v47;
  (*(v48 + 16))(v47, v51, a6);
  v36 = swift_checkMetadataState();
  sub_1B7A524A4(v34, v35, a6, v36, v52, v42, v50, v26);
  v55(v53, v26);
  (*(v24 + 8))(v26, v43);
  v37 = v58;
  v38 = v56;
  sub_1B7957EE0(v30, v58, v56);
  v39 = *(v27 + 8);
  v39(v30, v37);
  sub_1B7957EE0(v33, v37, v38);
  v39(v33, v37);
}

uint64_t ShelfCollection.onScroll(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(a3 + 68);
  v11 = *(a4 + v10);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B798793C(0, v11[2] + 1, 1, v11);
    v11 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_1B798793C((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_1B7A53B20;
  v15[5] = v9;
  *(a4 + v10) = v11;
  return result;
}

uint64_t ShelfCollection.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  v33 = v4;
  v9 = *(v8 + 24);
  v34 = *(v8 + 40);
  v35 = v9;
  v10 = type metadata accessor for ShelfPage(0, v4, v9, v34);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - v19;
  (*(v5 + 16))(v7, v2, v4, v18);
  v21 = *(a1 + 60);
  v22 = *(a1 + 64);
  v31 = v2;
  v23 = v2 + v21;
  v24 = *v23;
  LOBYTE(v5) = *(v23 + 8);
  v25 = v2 + v22;
  v26 = *(v2 + v22);
  v27 = *(v25 + 8);

  ShelfPage.init(_:spacing:configuration:content:)(v32, v24, v5, 1, v26, v27, v33, v35, v13, v34);
  sub_1B7980148(*(v31 + *(a1 + 68)), v10, v16);
  v28 = *(v11 + 8);
  v28(v13, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(v16, v10, WitnessTable);
  v28(v16, v10);
  sub_1B7957EE0(v20, v10, WitnessTable);
  return (v28)(v20, v10);
}

uint64_t sub_1B7A53DC8()
{
  v0 = sub_1B7A97540();
  __swift_allocate_value_buffer(v0, qword_1EBA494E0);
  v1 = __swift_project_value_buffer(v0, qword_1EBA494E0);
  if (qword_1EBA45B20 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EBA45F50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static CoordinateSpace.shelfCollectionScrollView.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBA45B88 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7A97540();
  v3 = __swift_project_value_buffer(v2, qword_1EBA494E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double EnvironmentValues.shelfCollectionSize.getter()
{
  type metadata accessor for ShelfContainerEnvironmentValues(0);
  sub_1B7A540AC();
  v0 = sub_1B7A978B0();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_1B7A96CB0();

  v2 = *(v1 + 16);
  swift_getKeyPath();
  sub_1B7A96CB0();

  return v2;
}

uint64_t View.shelfCollectionSize(_:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

unint64_t sub_1B7A540AC()
{
  result = qword_1EBA45FA8;
  if (!qword_1EBA45FA8)
  {
    type metadata accessor for ShelfContainerEnvironmentValues(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45FA8);
  }

  return result;
}

void sub_1B7A54150(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B7989190();
    if (v2 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v3 <= 0x3F)
      {
        sub_1B79891E0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B7A54208(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1B7A5434C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 23] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1B7A54518(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1B7A9AB60();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A545F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = ((v14 + v13 + (v15 & ~v13)) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, AssociatedTypeWitness);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_1B7A548B0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v8 + 56);

        v28(a1, a2, v9, AssociatedTypeWitness);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, ((v17 + v15 + (v16 & ~v15)) & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

unint64_t sub_1B7A54CB8()
{
  result = qword_1EBA49600[0];
  if (!qword_1EBA49600[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA495F8, &qword_1B7AA6F98);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA49600);
  }

  return result;
}

unint64_t sub_1B7A54DBC(uint64_t a1)
{
  sub_1B7A9A100();
  sub_1B7A9AB60();
  result = sub_1B7A98870();
  if (v2 <= 0x3F)
  {
    result = sub_1B7958DD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A54E64(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = ((((((v4 + ((v7 + 23) & ~v7 & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
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
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_1B7A54F94(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = ((((((v5 + (((*(v4 + 80) & 0xF8) + 23) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v8 = a3 - 2147483646;
    if (v6)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = a2 & 0x7FFFFFFF;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v6)
    {
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v10;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(result + v6) = v11;
      }

      else
      {
        *(result + v6) = v11;
      }
    }

    else if (v7)
    {
      *(result + v6) = v11;
    }

    return result;
  }

  v7 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 <= 1)
  {
    if (v7)
    {
      *(result + v6) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 2)
  {
    *(result + v6) = 0;
    goto LABEL_28;
  }

  *(result + v6) = 0;
  if (a2)
  {
LABEL_29:
    *((result + 15) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

int *sub_1B7A55184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  sub_1B7A9A100();
  sub_1B7A9AB60();
  v21 = sub_1B7A98870();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v27 = a8;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  result = type metadata accessor for _ResultView(0, &v27);
  v23 = (a9 + result[19]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + result[20]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + result[21]);
  *v25 = a6;
  v25[1] = a7;
  return result;
}

uint64_t sub_1B7A5529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v4 = *(a1 + 24);
  v64 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v67 = (&v59 - v7);
  v9 = *(v8 + 16);
  v62 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(*(v11 + 40) - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v59 - v14;
  v16 = *(v15 + 32);
  v71 = v17;
  v18 = sub_1B7A97B40();
  v69 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v65 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v59 - v25;
  v68 = v9;
  v26 = sub_1B7A9A100();
  v27 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v59 - v28);
  v72 = v4;
  v30 = sub_1B7A97B40();
  v73 = *(v30 - 8);
  v74 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59 - v31;
  v33 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v33);
  if ((*(*(v26 - 8) + 48))(v29, 1, v26) == 1)
  {
    (*(v2 + *(a1 + 76)))();
    v34 = *(a1 + 56);
    v35 = v70;
    sub_1B7957EE0(v23, v16, v34);
    v36 = *(v65 + 1);
    v36(v23, v16);
    sub_1B7957EE0(v35, v16, v34);
    v37 = *(a1 + 64);
    sub_1B79B5878(v23, v16, v71, v34, v37);
    v76 = v34;
    v77 = v37;
    WitnessTable = swift_getWitnessTable();
    v39 = *(a1 + 48);
    sub_1B79B5878(v20, v18, v72, WitnessTable, v39);
    (*(v69 + 8))(v20, v18);
    v36(v23, v16);
    v36(v70, v16);
    v40 = v32;
  }

  else
  {
    v65 = v20;
    v41 = v71;
    v70 = v32;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = *v29;
      v42 = v60;
      (*(v2 + *(a1 + 80)))();
      v37 = *(a1 + 64);
      v43 = v59;
      sub_1B7957EE0(v42, v41, v37);
      v67 = *(v61 + 8);
      v67(v42, v41);
      sub_1B7957EE0(v43, v41, v37);
      v34 = *(a1 + 56);
      v44 = v65;
      sub_1B7959A28(v42, v16, v41, v34, v37);
      v78 = v34;
      v79 = v37;
      v45 = swift_getWitnessTable();
      v39 = *(a1 + 48);
      v40 = v70;
      sub_1B79B5878(v44, v18, v72, v45, v39);

      (*(v69 + 8))(v44, v18);
      v46 = v42;
      v47 = v67;
      v67(v46, v41);
      v47(v43, v41);
    }

    else
    {
      v48 = v62;
      v49 = v66;
      (*(v62 + 32))(v66, v29, v68);
      v50 = v63;
      (*(v2 + *(a1 + 84)))(v49);
      v51 = *(a1 + 48);
      v52 = v67;
      v53 = v72;
      sub_1B7957EE0(v50, v72, v51);
      v54 = *(v64 + 8);
      v54(v50, v53);
      sub_1B7957EE0(v52, v53, v51);
      v34 = *(a1 + 56);
      v37 = *(a1 + 64);
      v39 = v51;
      v84 = v34;
      v85 = v37;
      v55 = swift_getWitnessTable();
      v40 = v70;
      sub_1B7959A28(v50, v18, v53, v55, v39);
      v54(v50, v53);
      v54(v67, v53);
      (*(v48 + 8))(v66, v68);
    }
  }

  v82 = v34;
  v83 = v37;
  v80 = swift_getWitnessTable();
  v81 = v39;
  v56 = v74;
  v57 = swift_getWitnessTable();
  sub_1B7957EE0(v40, v56, v57);
  return (*(v73 + 8))(v40, v56);
}

uint64_t sub_1B7A55AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a1;
  v37 = a4;
  v34 = a5;
  v7 = type metadata accessor for DispatcherPerformActionViewModifier(0, a3, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v35 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(0, a3, v11, v12);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v31 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1B797D54C();
  if (sub_1B7A9AB10() & 1) != 0 || (sub_1B7A9AB00())
  {
    sub_1B7A994D0();
    sub_1B7A9AB60();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v31 = v10;
    v21 = *(TupleTypeMetadata2 + 48);
    v22 = v36;
    sub_1B7A99210();
    *(v16 + v21) = v22;
    v10 = v31;
  }

  else
  {
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v24 = v36;
    v23[4] = v37;
    v23[5] = v24;
    *v16 = sub_1B7A5913C;
    v16[1] = v23;
  }

  v25 = v35;
  swift_storeEnumTagMultiPayload();
  v26 = v33;
  (*(v33 + 32))(v19, v16, v25);
  v27 = v32;
  (*(v26 + 16))(v32, v19, v25);
  sub_1B7A56CC0(v27, a3, v28, v29, v10);

  MEMORY[0x1B8CA96D0](v10, a2, v7, v37);
  (*(v8 + 8))(v10, v7);
  return (*(v26 + 8))(v19, v25);
}

void *EnvironmentValues.performAction.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A42B54(a1, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B7A55E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = sub_1B7A994D0();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18[-1] - v11;
  (*(v13 + 16))(&v18[-1] - v11, a1, v10);
  v14 = *(v4 + *(a2 + 28));
  v18[3] = a2;
  v18[4] = swift_getWitnessTable();
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, v4, a2);

  return sub_1B7A55FA8(v12, v14, v18, v8, a3);
}

uint64_t sub_1B7A55FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v60 = a3;
  v58 = a5;
  v7 = sub_1B7A99C30();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - v8;
  v9 = sub_1B7A99DA0();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v43 - v10;
  v11 = sub_1B7A99D70();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v43 - v12;
  v13 = sub_1B7A994D0();
  v14 = sub_1B7A9AB60();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v53 = a4;
  v54 = &v43 - v15;
  v18 = type metadata accessor for DispatcherPerformAction(255, a4, v16, v17);
  v55 = sub_1B7A9AB60();
  v19 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v21 = &v43 - v20;
  v22 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v26 = *(v13 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v29 = *(v26 + 16);
  v56 = &v43 - v30;
  v57 = a1;
  v29(v28);
  sub_1B7957820(v60, v61, &qword_1EBA47828, &qword_1B7AA0240);
  if (!v61[3])
  {
    sub_1B7957888(v61, &qword_1EBA47828, &qword_1B7AA0240);
    (*(v22 + 56))(v21, 1, 1, v18);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49150, &qword_1B7AA56B8);
  v31 = swift_dynamicCast();
  (*(v22 + 56))(v21, v31 ^ 1u, 1, v18);
  if ((*(v22 + 48))(v21, 1, v18) == 1)
  {
LABEL_5:
    (*(v19 + 8))(v21, v55);
    v33 = v56;
    goto LABEL_6;
  }

  (*(v22 + 32))(v25, v21, v18);
  v32 = v54;
  (v29)(v54, v25, v13);
  (*(v26 + 56))(v32, 0, 1, v13);
  v33 = v56;
  sub_1B7A99490();
  (*(v22 + 8))(v25, v18);
LABEL_6:
  v34 = v60;
  if (*(v60 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A98FC0();
  if ((sub_1B7A99470() & 1) == 0)
  {
    sub_1B7A5731C(v61);
    v35 = v50;
    sub_1B7A99D60();
    v36 = v52;
    swift_getWitnessTable();
    sub_1B7A99480();
    (*(v51 + 8))(v35, v36);
  }

  if (*(v34 + 24))
  {
    goto LABEL_14;
  }

  sub_1B7A99150();
  if ((sub_1B7A99470() & 1) == 0)
  {
    v37 = v47;
    sub_1B7A99D90();
    v38 = v49;
    swift_getWitnessTable();
    sub_1B7A99480();
    (*(v48 + 8))(v37, v38);
  }

  if (*(v34 + 24) || (sub_1B7A98D60(), (sub_1B7A99470() & 1) != 0))
  {
LABEL_14:
    (*(v26 + 8))(v57, v13);
  }

  else
  {
    v41 = v44;
    sub_1B7A99C20();
    v42 = v46;
    swift_getWitnessTable();
    sub_1B7A99480();
    (*(v26 + 8))(v57, v13);
    (*(v45 + 8))(v41, v42);
  }

  sub_1B7957888(v34, &qword_1EBA47828, &qword_1B7AA0240);
  v39 = v58;
  result = (*(v26 + 32))(v58, v33, v13);
  *(v39 + *(v18 + 28)) = v59;
  return result;
}

uint64_t View.actionDispatcher<A>(_:with:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a5;
  v36 = a2;
  v34 = a1;
  v38 = a6;
  v39 = type metadata accessor for DispatcherPerformActionViewModifier(0, a4, a3, a4);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - v7;
  v8 = sub_1B7A994D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - v11;
  v14 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(0, a4, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v33 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  sub_1B797D54C();
  if (sub_1B7A9AB10() & 1) != 0 || (sub_1B7A9AB00())
  {
    sub_1B7A9AB60();
    v24 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v9 + 16))(v20, v34, v8);
    (*(v9 + 56))(v20, 0, 1, v8);
    *(v20 + v24) = v36;
  }

  else
  {
    (*(v9 + 16))(v33, v34, v8);
    v25 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v34 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 2) = v40;
    *(v26 + 3) = a4;
    *(v26 + 4) = v27;
    (*(v9 + 32))(&v26[v25], v33, v8);
    *&v26[v34] = v36;
    *v20 = sub_1B7A56BFC;
    v20[1] = v26;
  }

  swift_storeEnumTagMultiPayload();
  (*(v15 + 32))(v23, v20, v14);
  (*(v15 + 16))(v17, v23, v14);
  v28 = v35;
  sub_1B7A56CC0(v17, a4, v29, v30, v35);

  v31 = v39;
  MEMORY[0x1B8CA96D0](v28, v40, v39, v41);
  (*(v37 + 8))(v28, v31);
  return (*(v15 + 8))(v23, v14);
}

double sub_1B7A56B0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_1B7A994D0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 + 48);
  (*(*(v7 - 8) + 16))(a4, a1, v7);
  *(a4 + v9) = a2;
  (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 0, 1, TupleTypeMetadata2);

  return result;
}

double sub_1B7A56BFC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1B7A994D0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B7A56B0C(v1 + v4, v5, a1);
}

uint64_t sub_1B7A56CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a5 + *(type metadata accessor for DispatcherPerformActionViewModifier(0, a2, a3, a4) + 28);
  *v8 = swift_getKeyPath();
  *(v8 + 40) = 0;
  v11 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(0, a2, v9, v10);
  v12 = *(*(v11 - 8) + 32);

  return v12(a5, a1, v11);
}

uint64_t View.actionDispatcher<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B7A994D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1B7A99230();
  View.actionDispatcher<A>(_:with:)(v13, a1, a2, a3, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

void sub_1B7A56E74(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_1B7A994D0();
  v5 = sub_1B7A99250();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = TupleTypeMetadata2;
  if (v5)
  {
    v8 = *(TupleTypeMetadata2 + 48);
    sub_1B7A99230();
    *(a3 + v8) = a1;
    (*(*(v7 - 8) + 56))(a3, 0, 1, v7);
  }

  else
  {
    v9 = *(*(TupleTypeMetadata2 - 8) + 56);

    v9(a3, 1, 1, TupleTypeMetadata2);
  }
}

uint64_t View.actionDispatcher<A>(with:implementations:)@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_1B7A994D0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  a2(v14);
  View.actionDispatcher<A>(_:with:)(v16, a1, a3, a4, a5, a6);
  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1B7A57100(uint64_t a1)
{
  result = sub_1B7958DD8();
  if (v2 <= 0x3F)
  {
    sub_1B7A994D0();
    sub_1B7A9AB60();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B7A571B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(319, *(a1 + 16), a3, a4);
  if (v4 <= 0x3F)
  {
    sub_1B7A57264(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7A57264(uint64_t a1)
{
  if (!qword_1EDC0EC28[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47828, &qword_1B7AA0240);
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, qword_1EDC0EC28);
    }
  }
}

double sub_1B7A572C8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B7A5731C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1B7A99690();
  v3 = MEMORY[0x1E69AB218];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_1B7A99680();
}

uint64_t sub_1B7A57360(uint64_t a1)
{
  v2 = sub_1B7A994D0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = sub_1B7A98C30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  sub_1B7A98C00();
  v11 = sub_1B7A992C0();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_1B7A574F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A99450();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  sub_1B7A57360(a3);
  sub_1B7A99360();
  if (sub_1B7A99250())
  {
    v10 = sub_1B7A99900();
    (*(*(v10 - 8) + 16))(v9, a2, v10);
    v11 = MEMORY[0x1E69AB120];
  }

  else
  {
    v11 = MEMORY[0x1E69AB128];
  }

  (*(v7 + 104))(v9, *v11, v6);
  sub_1B7A994D0();
  sub_1B7A994C0();
  sub_1B7999E90(a1, v16);
  v12 = swift_allocObject();
  sub_1B795C1E4(v16, v12 + 16);
  sub_1B7999E90(a1, v16);
  v13 = swift_allocObject();
  sub_1B795C1E4(v16, v13 + 16);
  v15[3] = sub_1B7A99690();
  v15[4] = MEMORY[0x1E69AB218];
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  sub_1B7A99680();
  sub_1B7A9A120();

  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1B7A57784(uint64_t a1, void *a2, double a3)
{
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B7A9A280();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7A98FA0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69AB008], v9, v11);
  v14 = sub_1B7A98F90();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    sub_1B7A9A1D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9D270;
    sub_1B7A98CB0();
    sub_1B7A98CA0();
    v16 = a2[3];
    v17 = __swift_project_boxed_opaque_existential_1(a2, v16);
    v19[3] = v16;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v17, v16);
    sub_1B7A98C90();
    sub_1B7957888(v19, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A98C40();
    sub_1B7A99E50();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1B7A57B0C(uint64_t a1, void *a2, double a3)
{
  v4 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1B7A9A280();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A1D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v9 = a2[3];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v9);
  v19 = v9;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1Tm, v10, v9);
  sub_1B7A98C90();
  sub_1B7957888(v18, &qword_1EBA46B50, &qword_1B7A9DD90);
  sub_1B7A98CA0();
  swift_getErrorValue();
  v12 = v16;
  v13 = v17;
  v19 = v17;
  v14 = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_1B7A98C70();
  sub_1B7957888(v18, &qword_1EBA46B50, &qword_1B7A9DD90);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A99E50();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B7A57E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B7A97880();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B7957820(v2 + *(a1 + 28), v12, &qword_1EBA45E08, &unk_1B7AA71C0);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_1B7A9AA10();
    v11 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1B7A57FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v100 = a3;
  v4 = *(a2 + 16);
  v5 = sub_1B7A994D0();
  v85 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v76 - v8;
  v86 = type metadata accessor for DispatcherPerformAction(255, v4, v9, v10);
  v90 = sub_1B7A9AB60();
  v96 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v76 - v13;
  v88 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v76 - v16;
  v87 = v5;
  v17 = sub_1B7A9AB60();
  v91 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  swift_getWitnessTable();
  v83 = a2;
  v23 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49688, &qword_1B7AA95E0);
  v93 = v23;
  v24 = sub_1B7A97590();
  v97 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v95 = &v76 - v28;
  v31 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(0, v4, v29, v30);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v76 - v33);
  v35 = sub_1B7A97B40();
  v98 = *(v35 - 8);
  v99 = v35;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v76 - v37;
  (*(v32 + 16))(v34, v101, v31, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v26;
    v78 = v38;
    v39 = *(v34 + *(swift_getTupleTypeMetadata2() + 48));
    v40 = v91;
    (*(v91 + 32))(v22, v34, v17);
    (*(v40 + 16))(v19, v22, v17);
    v41 = v85;
    v42 = v87;
    v43 = (*(v85 + 48))(v19, 1, v87);
    v79 = v22;
    v77 = v17;
    v76 = v39;
    if (v43 == 1)
    {
      (*(v40 + 8))(v19, v17);
      v44 = 1;
      v45 = v84;
    }

    else
    {
      v54 = v82;
      (*(v41 + 32))(v82, v19, v42);
      v55 = v81;
      (*(v41 + 16))(v81, v54, v42);

      sub_1B7A57E20(v83, v104);
      v56 = v39;
      v45 = v84;
      sub_1B7A55FA8(v55, v56, v104, v4, v84);
      (*(v41 + 8))(v54, v42);
      v44 = 0;
    }

    (*(*(v86 - 8) + 56))(v45, v44, 1);
    v57 = v96;
    v58 = *(v96 + 32);
    v59 = v94;
    v60 = v45;
    v61 = v90;
    v58(v94, v60, v90);
    swift_getKeyPath();
    v62 = v89;
    (*(v57 + 16))(v89, v59, v61);
    v63 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v4;
    v58((v64 + v63), v62, v61);
    WitnessTable = swift_getWitnessTable();
    v66 = v80;
    sub_1B7A98320();

    v67 = sub_1B7A590CC();
    v109 = WitnessTable;
    v110 = v67;
    v68 = swift_getWitnessTable();
    v69 = v95;
    sub_1B7957EE0(v66, v24, v68);
    v70 = *(v97 + 8);
    v70(v66, v24);
    sub_1B7957EE0(v69, v24, v68);
    v38 = v78;
    sub_1B7959A28(v66, v24, v24, v68, v68);

    v70(v66, v24);
    v70(v69, v24);
    (*(v96 + 8))(v94, v61);
    (*(v91 + 8))(v79, v77);
  }

  else
  {
    v46 = *v34;
    v47 = v34[1];
    swift_getKeyPath();
    v48 = swift_allocObject();
    v48[2] = v4;
    v48[3] = v46;
    v48[4] = v47;

    v49 = swift_getWitnessTable();
    sub_1B7A98320();

    v50 = sub_1B7A590CC();
    v102 = v49;
    v103 = v50;
    v51 = swift_getWitnessTable();
    v52 = v95;
    sub_1B7957EE0(v26, v24, v51);
    v53 = *(v97 + 8);
    v53(v26, v24);
    sub_1B7957EE0(v52, v24, v51);
    sub_1B79B5878(v26, v24, v24, v51, v51);

    v53(v26, v24);
    v53(v52, v24);
  }

  v71 = swift_getWitnessTable();
  v72 = sub_1B7A590CC();
  v107 = v71;
  v108 = v72;
  v105 = swift_getWitnessTable();
  v106 = v105;
  v73 = v99;
  v74 = swift_getWitnessTable();
  sub_1B7957EE0(v38, v73, v74);
  return (*(v98 + 8))(v38, v73);
}

uint64_t sub_1B7A58A88(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v5 = sub_1B7A994D0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_1B7A9AB60();
  v7 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v26 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1B7A9A760();
  v31 = sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v30(isCurrentExecutor);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v9, 1, TupleTypeMetadata2) == 1)
  {
    (*(v7 + 8))(v9, v27);
  }

  else
  {
    v18 = *&v9[*(TupleTypeMetadata2 + 48)];
    (*(v10 + 32))(v16, v9, v5);
    (*(v10 + 16))(v13, v16, v5);
    v19 = v28;
    v20 = *(v28 + 16);
    v32[0] = *v28;
    v32[1] = v20;
    v33 = *(v28 + 32);
    *(&v35 + 1) = type metadata accessor for DispatcherPerformAction(0, a4, v21, v22);
    WitnessTable = swift_getWitnessTable();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v34);
    sub_1B7A55FA8(v13, v18, v32, a4, boxed_opaque_existential_1Tm);
    (*(v10 + 8))(v16, v5);
    v24 = v35;
    *v19 = v34;
    *(v19 + 16) = v24;
    *(v19 + 32) = WitnessTable;
  }
}

uint64_t sub_1B7A58DAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v5 = type metadata accessor for DispatcherPerformAction(255, a3, a3, a4);
  v6 = sub_1B7A9AB60();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v7 + 16))(v9, v18, v6);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    sub_1B7957888(a1, &qword_1EBA47828, &qword_1B7AA0240);
    v14 = *(v10 + 32);
    v14(v13, v9, v5);
    a1[3] = v5;
    a1[4] = swift_getWitnessTable();
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v14(boxed_opaque_existential_1Tm, v13, v5);
  }
}

uint64_t sub_1B7A5903C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  type metadata accessor for DispatcherPerformAction(255, v6, a3, a4);
  v8 = *(sub_1B7A9AB60() - 8);
  v9 = v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return sub_1B7A58DAC(a1, v9, v6, v7);
}

unint64_t sub_1B7A590CC()
{
  result = qword_1EDC0EB30;
  if (!qword_1EDC0EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49688, &qword_1B7AA95E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0EB30);
  }

  return result;
}

uint64_t sub_1B7A59148(uint64_t a1)
{
  result = sub_1B7A994D0();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A59214(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B7A592C0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1B7A59344(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s13PopupHUDModelC8RowModelVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1B7A59430()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8, &qword_1B7AA7278);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49720, &qword_1B7AA7398);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7A9D280;
  v5 = v0[1];
  v14 = *v0;
  v15 = v5;

  sub_1B7A9AC20();
  v6 = v0[3];
  v14 = v0[2];
  v15 = v6;

  sub_1B7A9AC20();
  v7 = _s13PopupHUDModelC8RowModelVMa(0);
  sub_1B7957820(v0 + *(v7 + 24), v3, &qword_1EBA496F8, &qword_1B7AA7278);
  v8 = sub_1B7A99000();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v3, 1, v8);
  if (v10 == 1)
  {
    sub_1B7957888(v3, &qword_1EBA496F8, &qword_1B7AA7278);
    v11 = 0;
  }

  else
  {
    sub_1B7A98FD0();
    v11 = v12;
    (*(v9 + 8))(v3, v8);
  }

  v14 = v11;
  LOBYTE(v15) = v10 == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49728, &unk_1B7AA73A0);
  sub_1B7A5D828();
  sub_1B7A9AC20();
  v14 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45FB0, &qword_1B7A9C7E0);
  sub_1B79886C8();
  return sub_1B7A9AC20();
}

uint64_t sub_1B7A59684()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A596FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A59770()
{
  v1 = OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizerP33_71C7C2830233A285322DF4F35DFC4EC113PopupHUDModel__title;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49748, &qword_1B7AA73C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizerP33_71C7C2830233A285322DF4F35DFC4EC113PopupHUDModel__rows;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49750, &qword_1B7AA73C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1B7A5988C(uint64_t a1)
{
  sub_1B7A5D0A8(319, &qword_1EBA496B8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1B7A5997C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7A5997C(uint64_t a1)
{
  if (!qword_1EBA496C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48790, &unk_1B7AA36B0);
    v1 = sub_1B7A96F50();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA496C0);
    }
  }
}

void sub_1B7A599E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1B7A9A480();
  [v0 setDateFormat_];

  qword_1EBA49690 = v0;
}

uint64_t sub_1B7A59A5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8, &qword_1B7AA7278);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v144 = (&v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v134 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v145 = &v134 - v10;
  v11 = sub_1B7A96BF0();
  v148 = *(v11 - 8);
  v149 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v147 = (&v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B7A99000();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v153 = &v134 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v152 = (&v134 - v21);
  v156 = _s13PopupHUDModelC8RowModelVMa(0);
  v151 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v143 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v134 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v146 = (&v134 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49718, &qword_1B7AA7300);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v134 - v28;
  v30 = sub_1B7A99160();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  KeyPath = (&v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v134 - v35;
  sub_1B7A99170();
  v37 = *(v31 + 48);
  v157 = v30;
  if (v37(v29, 1, v30) == 1)
  {
    return sub_1B7957888(v29, &qword_1EBA49718, &qword_1B7AA7300);
  }

  (*(v31 + 32))(v36, v29, v157);
  v150 = v2;
  v39 = sub_1B7A5AEF8();
  v40 = v13;
  v41 = a1;
  if (v39)
  {
    if (v39 != 1)
    {
      return (*(v31 + 8))(v36, v157);
    }

    v42 = sub_1B7A99180();
    v141 = v8;
    sub_1B7A5B154(v36, v42, v43);
    v41 = a1;
    v8 = v141;
  }

  v44 = v157;
  (*(v31 + 16))(KeyPath, v36, v157);
  v45 = (*(v31 + 88))(KeyPath, v44);
  if (v45 == *MEMORY[0x1E69AB088])
  {
    v141 = v8;
    v140 = v36;
    (*(v31 + 96))(KeyPath, v157);
    v46 = *KeyPath;
    v47 = *(v150 + 2);
    swift_getKeyPath();
    swift_getKeyPath();
    v146 = v47;
    sub_1B7A96F20();

    v49 = v158;
    MEMORY[0x1EEE9AC00](v48);
    *(&v134 - 2) = v41;
    v50 = sub_1B7A59344(sub_1B7A5D65C, (&v134 - 4), v49);
    v52 = v51;

    if (v52)
    {
      (*(v31 + 8))(v140, v157);
    }

    v139 = v31;
    v81 = sub_1B7A991A0();
    v83 = v82;
    v84 = *(v46 + 16);
    if (v84)
    {
      v85 = v81;
      v53 = 0;
      while (1)
      {
        v86 = *(v46 + v53 + 32) == v85 && *(v46 + v53 + 40) == v83;
        if (v86 || (sub_1B7A9AE80() & 1) != 0)
        {
          break;
        }

        v53 += 16;
        if (!--v84)
        {
          goto LABEL_28;
        }
      }

      v89 = v145;
      sub_1B7A99190();
      (*(v14 + 56))(v89, 0, 1, v40);
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v57 = sub_1B7A96F10();
      v54 = v90;
      v55 = *v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v54 = v55;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_69;
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_33;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      swift_once();
LABEL_41:
      v106 = qword_1EBA49690;
      _s21PopupHUDConfigurationVMa(0);
      v93 = v147;
      sub_1B7A99AE0();
      v107 = sub_1B7A96BC0();
      (*(v148 + 8))(v93, v149);
      v108 = [v106 stringFromDate_];

      v99 = sub_1B7A9A4B0();
      v94 = v109;

      v110 = *(v14 + 8);
      v147 = v40;
      v152 = (v14 + 8);
      v150 = v110;
      v110(v50, v40);
      v40 = swift_getKeyPath();
      v102 = swift_getKeyPath();
      v100 = sub_1B7A96F10();
      v104 = v111;
      v112 = *v111;
      v113 = swift_isUniquelyReferenced_nonNull_native();
      *v104 = v112;
      if ((v113 & 1) == 0)
      {
        v112 = sub_1B7A5D434(v112);
        *v104 = v112;
      }

      if (v136 >= v112[2])
      {
        __break(1u);
LABEL_75:
        v14 = sub_1B7A5D434(v14);
        *v102 = v14;
LABEL_38:
        if (v136 < *(v14 + 16))
        {
          v105 = v94 + v14 + v135;
          *(v105 + 2) = 0x8FB8EFA09AE2;
          *(v105 + 3) = 0xA600000000000000;

          v100(&v158, 0);

          return (*(v139 + 8))(v104, v157);
        }

        __break(1u);
        goto LABEL_77;
      }

      v114 = v138;
      v115 = v112 + v138 + v135;
      *(v115 + 2) = v99;
      *(v115 + 3) = v94;
      v116 = v114;

      v100(&v158, 0);

      swift_getKeyPath();
      v55 = swift_getKeyPath();
      sub_1B7A96F20();

      v31 = *(v158 + 16);

      v117 = v147;
      if (v31)
      {
        v118 = 0;
        v149 = (v14 + 48);
        v144 = (v14 + 32);
        v119 = &qword_1EBA496F8;
        v40 = &qword_1B7AA7278;
        v143 = v31;
        while (1)
        {
          if (!v118)
          {
            goto LABEL_47;
          }

          v54 = v119;
          swift_getKeyPath();
          v62 = swift_getKeyPath();
          sub_1B7A96F20();

          if (v118 >= *(v158 + 16))
          {
            __break(1u);
            goto LABEL_66;
          }

          v14 = v155;
          sub_1B7A5D6EC(v116 + v158, v155);

          v120 = v141;
          v119 = v54;
          v55 = &qword_1B7AA7278;
          sub_1B7957820(v14 + *(v156 + 24), v141, v54, &qword_1B7AA7278);
          sub_1B7A5D8A4(v14, _s13PopupHUDModelC8RowModelVMa);
          if ((*v149)(v120, 1, v117) == 1)
          {
            sub_1B7957888(v120, v54, &qword_1B7AA7278);
            goto LABEL_47;
          }

          (*v144)(v153, v120, v117);
          sub_1B7A99190();
          sub_1B7A98FE0();
          if (v121 >= 1.0)
          {
            break;
          }

          v14 = 0xA300000000000000;
          v57 = v116;
          if (v121 < 0.0)
          {
            v122 = 9215458;
            goto LABEL_57;
          }

          v122 = 9215458;
          if (v121 <= 1.0)
          {
            v158 = 0;
            v159 = 0xE000000000000000;
            MEMORY[0x1B8CAB750](43, 0xE100000000000000);
            sub_1B7A9A890();
            v123 = 29549;
            v124 = 0xE200000000000000;
LABEL_56:
            MEMORY[0x1B8CAB750](v123, v124);
            v122 = v158;
            v14 = v159;
          }

LABEL_57:
          v148 = v122;
          v150(v154, v117);
          v41 = swift_getKeyPath();
          v53 = swift_getKeyPath();
          v55 = sub_1B7A96F10();
          KeyPath = v125;
          v50 = *v125;
          v126 = swift_isUniquelyReferenced_nonNull_native();
          *KeyPath = v50;
          if ((v126 & 1) == 0)
          {
            v50 = sub_1B7A5D434(v50);
            *KeyPath = v50;
          }

          if (v118 >= *(v50 + 16))
          {
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v55 = sub_1B7A5D434(v55);
            *v54 = v55;
            if ((v50 & 0x8000000000000000) != 0)
            {
              goto LABEL_70;
            }

LABEL_33:
            v137 = KeyPath;
            if (v50 >= v55[2])
            {
              goto LABEL_71;
            }

            v138 = (*(v151 + 80) + 32) & ~*(v151 + 80);
            v92 = *(v151 + 72);
            sub_1B7A5D67C(v145, v55 + v138 + v92 * v50 + *(v156 + 24));
            (v57)(&v158, 0);

            v136 = v50;
            v135 = v92 * v50;
            if (v53)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              sub_1B7A96F20();

              v93 = v158;
              if (*(v158 + 16))
              {
                v94 = v138;
                v95 = v143;
                sub_1B7A5D6EC(v158 + v138, v143);

                v96 = v144;
                sub_1B7957820(v95 + *(v156 + 24), v144, &qword_1EBA496F8, &qword_1B7AA7278);
                sub_1B7A5D8A4(v95, _s13PopupHUDModelC8RowModelVMa);
                v97 = (*(v14 + 48))(v96, 1, v40);
                v98 = v152;
                if (v97 == 1)
                {
                  sub_1B7957888(v96, &qword_1EBA496F8, &qword_1B7AA7278);
                  v99 = swift_getKeyPath();
                  swift_getKeyPath();
                  v100 = sub_1B7A96F10();
                  v102 = v101;
                  v14 = *v101;
                  v103 = swift_isUniquelyReferenced_nonNull_native();
                  *v102 = v14;
                  v104 = v140;
                  if (v103)
                  {
                    goto LABEL_38;
                  }

                  goto LABEL_75;
                }

                v93 = v142;
                (*(v14 + 32))(v142, v96, v40);
                sub_1B7A99190();
                v99 = sub_1B7A5D54C(v98, v93);
                v128 = v14;
                v14 = v129;
                v130 = v40;
                v40 = *(v128 + 8);
                v57 = v130;
                v155 = v128 + 8;
                (v40)(v98);
                swift_getKeyPath();
                swift_getKeyPath();
                v100 = sub_1B7A96F10();
                v94 = v131;
                v104 = *v131;
                result = swift_isUniquelyReferenced_nonNull_native();
                *v94 = v104;
                if (result)
                {
LABEL_63:
                  v132 = v140;
                  if (v136 >= v104[2])
                  {
                    __break(1u);
                  }

                  else
                  {
                    v133 = v104 + v138 + v135;
                    *(v133 + 2) = v99;
                    *(v133 + 3) = v14;

                    v100(&v158, 0);

                    (v40)(v93, v57);
                    return (*(v139 + 8))(v132, v157);
                  }

                  return result;
                }

LABEL_77:
                result = sub_1B7A5D434(v104);
                v104 = result;
                *v94 = result;
                goto LABEL_63;
              }

              goto LABEL_72;
            }

            v151 = v92;
            v50 = v152;
            v145 = v41;
            sub_1B7A99190();
            if (qword_1EBA45B90 != -1)
            {
              goto LABEL_73;
            }

            goto LABEL_41;
          }

          v127 = v57 + v50;
          *(v127 + 2) = v148;
          *(v127 + 3) = v14;

          (v55)(&v158, 0);

          v116 = v57;

          v117 = v147;
          v150(v153, v147);
          v31 = v143;
          v119 = v54;
LABEL_47:
          ++v118;
          v116 = (v116 + v151);
          if (v31 == v118)
          {
            return (*(v139 + 8))(v140, v157);
          }
        }

        v57 = v116;
        v158 = 0;
        v159 = 0xE000000000000000;
        MEMORY[0x1B8CAB750](43, 0xE100000000000000);
        sub_1B7A9A890();
        v123 = 115;
        v124 = 0xE100000000000000;
        goto LABEL_56;
      }
    }

    else
    {
LABEL_28:
    }

    return (*(v139 + 8))(v140, v157);
  }

  if (v45 == *MEMORY[0x1E69AB080])
  {
    v155 = v14;
    v140 = v36;
    v53 = *(v150 + 2);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7A96F20();

    v54 = *(v158 + 16);

    v55 = v152;
    if (v54 == 4)
    {
      v145 = v41;
      v56 = v31;
      v14 = swift_getKeyPath();
      v50 = swift_getKeyPath();
      v57 = &v158;
      v58 = sub_1B7A96F10();
      if (!*(*v59 + 16))
      {
        goto LABEL_68;
      }

      v60 = v58;
      sub_1B7A5D474(0, 1, sub_1B7987F40, sub_1B79B8798);
      v60(&v158, 0);

      v31 = v56;
    }

    v14 = sub_1B7A991A0();
    v62 = v61;
    sub_1B7A99190();
    if (qword_1EBA45B90 != -1)
    {
LABEL_66:
      swift_once();
    }

    v63 = qword_1EBA49690;
    _s21PopupHUDConfigurationVMa(0);
    v64 = v147;
    sub_1B7A99AE0();
    v65 = sub_1B7A96BC0();
    (*(v148 + 8))(v64, v149);
    v66 = [v63 stringFromDate_];

    v67 = sub_1B7A9A4B0();
    v69 = v68;

    v70 = v155;
    (*(v155 + 8))(v55, v40);
    v71 = v146;
    (*(v70 + 56))(v146 + *(v156 + 24), 1, 1, v40);
    *v71 = v14;
    v71[1] = v62;
    v71[2] = v67;
    v71[3] = v69;
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = sub_1B7A96F10();
    v74 = v73;
    v75 = *v73;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    *v74 = v75;
    v77 = v31;
    if ((v76 & 1) == 0)
    {
      v75 = sub_1B7987F40(0, v75[2] + 1, 1, v75);
      *v74 = v75;
    }

    v78 = v151;
    v80 = v75[2];
    v79 = v75[3];
    if (v80 >= v79 >> 1)
    {
      v75 = sub_1B7987F40((v79 > 1), v80 + 1, 1, v75);
      *v74 = v75;
    }

    v75[2] = v80 + 1;
    sub_1B7A5D750(v71, v75 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v80);
    v72(&v158, 0);

    return (*(v77 + 8))(v140, v157);
  }

  else
  {
    v87 = *(v31 + 8);
    v88 = v157;
    v87(v36, v157);
    return (v87)(KeyPath, v88);
  }
}