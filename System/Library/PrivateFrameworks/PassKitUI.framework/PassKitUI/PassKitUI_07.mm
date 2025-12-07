uint64_t sub_1BD0F3080()
{
  v2 = *v1;
  v2[79] = v0;

  v3 = v2[76];
  if (v0)
  {
    v4 = v2[75];
    (*(v2[28] + 8))(v2[29], v2[27]);
    v3, v5, v6, v7, v8, v9, v10, v11;
    v4, v12, v13, v14, v15, v16, v17, v18;
    v19 = v2[59];
    v20 = v2[60];
    v21 = sub_1BD0F4050;
  }

  else
  {
    (*(v2[28] + 8))(v2[29], v2[27]);
    v3, v22, v23, v24, v25, v26, v27, v28;
    v19 = v2[59];
    v20 = v2[60];
    v21 = sub_1BD0F31FC;
  }

  return MEMORY[0x1EEE6DFA0](v21, v19, v20);
}

void sub_1BD0F31FC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v121 = v8;
  v10 = *(v8 + 248);
  v9 = *(v8 + 256);
  v11 = *(v8 + 240);
  *(v8 + 464), a2, a3, a4, a5, a6, a7, a8;
  v12 = sub_1BE049D34();
  (*(v10 + 8))(v9, v11);
  v20 = *(v8 + 600);
  if (*(v12 + 2))
  {
    *(v8 + 600), v13, v14, v15, v16, v17, v18, v19;
    if (!*(v12 + 2))
    {
      __break(1u);
      return;
    }

    v105 = *(v8 + 576);
    v110 = *(v8 + 448);
    v112 = *(v8 + 440);
    v114 = *(v8 + 400);
    v116 = *(v8 + 392);
    v118 = *(v8 + 424);
    v21 = *(v8 + 384);
    v108 = *(v8 + 376);
    v103 = *(v8 + 368);
    v104 = *(v8 + 456);
    v22 = *(v8 + 280);
    v107 = *(v8 + 272);
    v23 = *(v8 + 264);
    v24 = *(v8 + 200);
    v106 = *(v8 + 120);
    v25 = *(v107 + 16);
    v25(v22, &v12[(*(v107 + 80) + 32) & ~*(v107 + 80)], v23);
    v12, v26, v27, v28, v29, v30, v31, v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    v25(v24, v22, v23);
    v105(v24 + v34, v21, v103);
    *(v24 + v35) = sub_1BE049D54();
    (*(*(v33 - 8) + 56))(v24, 0, 2, v33);
    KeyPath = swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v106;
    *(v37 + 24) = v24;
    *(v8 + 88) = v106;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
    sub_1BE04B584();
    KeyPath, v38, v39, v40, v41, v42, v43, v44;
    (*(v107 + 8))(v22, v23);
    (*(v108 + 8))(v21, v103);
    (*(v110 + 8))(v104, v112);

    sub_1BD0F99B4(v24);
    (*(v114 + 8))(v118, v116);
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    sub_1BE04D114();
    sub_1BE048C84();
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C34();
    v20, v47, v48, v49, v50, v51, v52, v53;
    v54 = os_log_type_enabled(v45, v46);
    v62 = *(v8 + 600);
    if (v54)
    {
      v63 = *(v8 + 592);
      v64 = *(v8 + 192);
      v65 = *(v8 + 152);
      v66 = *(v8 + 160);
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v120 = v68;
      *v67 = 136315138;
      v69 = sub_1BD123690(v63, v62, &v120);
      v62, v70, v71, v72, v73, v74, v75, v76;
      *(v67 + 4) = v69;
      _os_log_impl(&dword_1BD026000, v45, v46, "No institution with id %s found.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68, v77, v78, v79, v80, v81, v82, v83);
      MEMORY[0x1BFB45F20](v68, -1, -1);
      MEMORY[0x1BFB45F20](v67, -1, -1);

      (*(v66 + 8))(v64, v65);
    }

    else
    {
      v84 = *(v8 + 192);
      v85 = *(v8 + 152);
      v86 = *(v8 + 160);
      *(v8 + 600), v55, v56, v57, v58, v59, v60, v61;

      (*(v86 + 8))(v84, v85);
    }

    v87 = *(v8 + 448);
    v113 = *(v8 + 440);
    v115 = *(v8 + 456);
    v88 = *(v8 + 400);
    v117 = *(v8 + 392);
    v119 = *(v8 + 424);
    v89 = *(v8 + 376);
    v109 = *(v8 + 368);
    v111 = *(v8 + 384);
    v90 = *(v8 + 200);
    v91 = *(v8 + 120);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
    (*(*(v92 - 8) + 56))(v90, 2, 2, v92);
    v93 = swift_getKeyPath();
    v94 = swift_task_alloc();
    *(v94 + 16) = v91;
    *(v94 + 24) = v90;
    *(v8 + 96) = v91;
    sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
    sub_1BE04B584();
    v93, v95, v96, v97, v98, v99, v100, v101;
    (*(v89 + 8))(v111, v109);
    (*(v87 + 8))(v115, v113);

    sub_1BD0F99B4(v90);
    (*(v88 + 8))(v119, v117);
  }

  v102 = *(v8 + 8);

  v102();
}

uint64_t sub_1BD0F38E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 464), a2, a3, a4, a5, a6, a7, a8;
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v9, v10, v11, v12, v13, v14, v15);
  v16 = *(v8 + 520);
  sub_1BE04D114();
  v17 = v16;
  v18 = sub_1BE04D204();
  v19 = sub_1BE052C34();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v16;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1BD026000, v18, v19, "Failed to load transactions for Manually Excluded: %@", v20, 0xCu);
    sub_1BD0DE53C(v21, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v21, -1, -1);
    MEMORY[0x1BFB45F20](v20, -1, -1);
  }

  v24 = *(v8 + 200);
  v26 = *(v8 + 160);
  v25 = *(v8 + 168);
  v27 = *(v8 + 152);
  v28 = *(v8 + 120);

  (*(v26 + 8))(v25, v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  (*(*(v29 - 8) + 56))(v24, 2, 2, v29);
  KeyPath = swift_getKeyPath();
  v31 = swift_task_alloc();
  *(v31 + 16) = v28;
  *(v31 + 24) = v24;
  *(v8 + 64) = v28;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B584();

  KeyPath, v32, v33, v34, v35, v36, v37, v38;

  sub_1BD0F99B4(v24);

  v39 = *(v8 + 8);

  return v39();
}

uint64_t sub_1BD0F3C78(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 456);
  v10 = *(v8 + 440);
  v11 = *(v8 + 448);
  v12 = *(v8 + 424);
  v13 = *(v8 + 392);
  v14 = *(v8 + 400);
  *(v8 + 464), a2, a3, a4, a5, a6, a7, a8;
  (*(v11 + 8))(v9, v10);
  (*(v14 + 8))(v12, v13);

  v15 = *(v8 + 568);
  sub_1BE04D114();
  v16 = v15;
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C34();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v15;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_1BD026000, v17, v18, "Failed to load transactions for Manually Excluded: %@", v19, 0xCu);
    sub_1BD0DE53C(v20, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v20, -1, -1);
    MEMORY[0x1BFB45F20](v19, -1, -1);
  }

  v23 = *(v8 + 200);
  v25 = *(v8 + 160);
  v24 = *(v8 + 168);
  v26 = *(v8 + 152);
  v27 = *(v8 + 120);

  (*(v25 + 8))(v24, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  (*(*(v28 - 8) + 56))(v23, 2, 2, v28);
  KeyPath = swift_getKeyPath();
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;
  *(v30 + 24) = v23;
  *(v8 + 64) = v27;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B584();

  KeyPath, v31, v32, v33, v34, v35, v36, v37;

  sub_1BD0F99B4(v23);

  v38 = *(v8 + 8);

  return v38();
}

uint64_t sub_1BD0F4050(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 456);
  v10 = *(v8 + 440);
  v11 = *(v8 + 448);
  v12 = *(v8 + 424);
  v14 = *(v8 + 392);
  v13 = *(v8 + 400);
  v15 = *(v8 + 376);
  v16 = *(v8 + 384);
  v17 = *(v8 + 368);
  *(v8 + 464), a2, a3, a4, a5, a6, a7, a8;
  (*(v15 + 8))(v16, v17);
  (*(v11 + 8))(v9, v10);
  (*(v13 + 8))(v12, v14);

  v18 = *(v8 + 632);
  sub_1BE04D114();
  v19 = v18;
  v20 = sub_1BE04D204();
  v21 = sub_1BE052C34();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1BD026000, v20, v21, "Failed to load transactions for Manually Excluded: %@", v22, 0xCu);
    sub_1BD0DE53C(v23, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v23, -1, -1);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  v26 = *(v8 + 200);
  v28 = *(v8 + 160);
  v27 = *(v8 + 168);
  v29 = *(v8 + 152);
  v30 = *(v8 + 120);

  (*(v28 + 8))(v27, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  (*(*(v31 - 8) + 56))(v26, 2, 2, v31);
  KeyPath = swift_getKeyPath();
  v33 = swift_task_alloc();
  *(v33 + 16) = v30;
  *(v33 + 24) = v26;
  *(v8 + 64) = v30;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B584();

  KeyPath, v34, v35, v36, v37, v38, v39, v40;

  sub_1BD0F99B4(v26);

  v41 = *(v8 + 8);

  return v41();
}

uint64_t sub_1BD0F4458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0, &unk_1BE0B7F40);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v56 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v13 = *(v12 - 8);
  v52 = v12;
  v53 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF8, &qword_1BE0B7F58);
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F00, &unk_1BE0B7F60);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v60 = v47 - v21;
  v61 = a2;
  v49 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
  sub_1BE04A7B4();
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v23, v24, v25, v26, v27, v28, v29;
  v30 = *(v9 + 8);
  v47[1] = v9 + 8;
  v48 = v30;
  v30(v11, v8);
  sub_1BD0DE4F4(&qword_1EBD38F18, &qword_1EBD38EF8, &qword_1BE0B7F58, MEMORY[0x1E6968D20]);
  v50 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38F28, &qword_1EBD38F08, &qword_1BE0DF9C0, MEMORY[0x1E69E6508]);
  sub_1BD0F93A4(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v31 = v52;
  sub_1BE04A754();
  (*(v53 + 8))(v15, v31);
  (*(v51 + 8))(v18, v16);
  sub_1BE04A7C4();
  v32 = swift_getKeyPath();
  v33 = v56;
  sub_1BE04A724();
  v32, v34, v35, v36, v37, v38, v39, v40;
  v48(v11, v8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38F30, &unk_1BE0B7FA0);
  v42 = v57;
  *(v57 + 24) = v41;
  v42[4] = sub_1BD0FA144();
  __swift_allocate_boxed_opaque_existential_1(v42);
  sub_1BD0DE4F4(&qword_1EBD38F88, &qword_1EBD38F00, &unk_1BE0B7F60, MEMORY[0x1E6968C08]);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0, &unk_1BE0B7F40, v50);
  v43 = v60;
  v44 = v54;
  v45 = v58;
  sub_1BE04A784();
  (*(v59 + 8))(v33, v45);
  return (*(v55 + 8))(v43, v44);
}

uint64_t sub_1BD0F4A64@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E60, &unk_1BE0F42F0);
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E68, &unk_1BE0B7EC0);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E70, &unk_1BE0F4300);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E78, &qword_1BE0B7ED0);
  v14 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v40 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E80, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v11 + 8))(v13, v10);
  sub_1BE049A94();
  sub_1BE04A7B4();
  v25 = swift_getKeyPath();
  sub_1BD0DE4F4(&qword_1EBD38E88, &qword_1EBD38E60, &unk_1BE0F42F0, MEMORY[0x1E6968D20]);
  v26 = v42;
  sub_1BE04A724();
  v25, v27, v28, v29, v30, v31, v32, v33;
  (*(v3 + 8))(v5, v26);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E90, &qword_1BE0F4370);
  v35 = v43;
  *(v43 + 24) = v34;
  v35[4] = sub_1BD0F9E9C();
  __swift_allocate_boxed_opaque_existential_1(v35);
  v36 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD38ED0, &qword_1EBD38E78, &qword_1BE0B7ED0, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38ED8, &qword_1EBD38E68, &unk_1BE0B7EC0, v36);
  sub_1BD0F93A4(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v37 = v41;
  v38 = v44;
  sub_1BE04A714();
  (*(v45 + 8))(v9, v38);
  return (*(v14 + 8))(v16, v37);
}

uint64_t sub_1BD0F4EF8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E08, &unk_1BE109160);
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E10, &unk_1BE0B7E70);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E18, &qword_1BE109170);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1BD0DE4F4(&qword_1EBD38E20, &qword_1EBD38E10, &unk_1BE0B7E70, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v18, v19, v20, v21, v22, v23, v24;
  (*(v10 + 8))(v12, v9);
  v31 = v27;
  v32 = v28;
  sub_1BE04A7B4();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38E28, &unk_1BE0B7EB0);
  a4[4] = sub_1BD0F9CDC();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_1BD0DE4F4(&qword_1EBD38E50, &qword_1EBD38E18, &qword_1BE109170, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD38E58, &qword_1EBD38E08, &unk_1BE109160, MEMORY[0x1E6968D20]);
  v25 = v29;
  sub_1BE04A714();
  (*(v30 + 8))(v8, v25);
  return (*(v14 + 8))(v16, v13);
}

void sub_1BD0F5264(uint64_t a1, void *a2)
{
  v54 = sub_1BE04B0F4();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1BE0493F4();
  v55 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1BE049A94();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v2;
  v72 = a1;
  v52 = a1;
  sub_1BE048C84();
  sub_1BD1CEA30(sub_1BD0F9C40, v70, a2);
  v11 = v10;
  v19 = MEMORY[0x1BFB403C0](0) >> 48;
  v69 = v12 >> 32;
  v67 = v12 >> 48;
  v20 = v11[2];
  LODWORD(v66) = v13 >> 16;
  if (v20)
  {
    v50 = v5;
    v51 = v2;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v59 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v49 = v11;
    v24 = v11 + v23;
    v25 = *(v21 + 56);
    v57 = (v55 + 8);
    v58 = v25;
    v60 = v21;
    v56 = (v21 - 8);
    v27 = v61;
    v26 = v62;
    v28 = v12 >> 16;
    v68 = v19;
    do
    {
      v65 = v28;
      v67 = v20;
      v59(v27, v24, v26);
      v29 = v63;
      sub_1BE0499A4();
      sub_1BE0493C4();
      v66 = v30;
      (*v57)(v29, v64);
      v27 = v61;
      v26 = v62;
      v31 = sub_1BE053384();
      v28 = v32 >> 16;
      v68 = HIWORD(v31);
      v69 = HIDWORD(v32);
      v33 = HIWORD(v32);
      v35 = HIWORD(v34);
      (*v56)(v27, v26);
      v24 += v58;
      v20 = v67 - 1;
    }

    while (v67 != 1);
    LODWORD(v66) = v35;
    v67 = v33;
    v49, v36, v37, v38, v39, v40, v41, v42;
    v5 = v50;
    v43 = v63;
  }

  else
  {
    v11, v12, v13, v14, v15, v16, v17, v18;
    v43 = v63;
  }

  sub_1BE049594();
  sub_1BE049404();
  v44 = v53;
  sub_1BE04B054();
  sub_1BE0493E4();
  (*(v5 + 8))(v44, v54);
  (*(v55 + 8))(v43, v64);
  v45 = sub_1BE04AE64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v46 = sub_1BE04AE64();
  v47 = PKDateRangeStringFromDateToDate();

  if (v47)
  {
    sub_1BE052434();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD0F5780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47[1] = a3;
  v3 = sub_1BE0493F4();
  v47[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE049974();
  sub_1BD0F93A4(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1BE052314() & 1) == 0)
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v10 = sub_1BE0522F4();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_9:
    v24 = 0;
    return v24 & 1;
  }

  sub_1BE0499A4();
  v11 = sub_1BE0493A4();
  v13 = v12;
  (*(v47[0] + 8))(v5, v3);
  v14 = sub_1BE049594();
  v22 = v15;
  if (v11 == v14 && v13 == v15)
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
    v22, v40, v41, v42, v43, v44, v45, v46;
    v24 = 1;
  }

  else
  {
    v24 = sub_1BE053B84();
    v13, v25, v26, v27, v28, v29, v30, v31;
    v22, v32, v33, v34, v35, v36, v37, v38;
  }

  return v24 & 1;
}

uint64_t sub_1BD0F5A3C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel_range, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BD0F99B4(v8 + OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state);
  v9 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel___observationRegistrar;
  v10 = sub_1BE04B5D4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_1BD0F5B38(uint64_t a1)
{
  sub_1BD0F5C4C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(319);
    if (v2 <= 0x3F)
    {
      sub_1BE04B5D4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD0F5C4C(uint64_t a1)
{
  if (!qword_1EBD38C00)
  {
    sub_1BE04AF64();
    sub_1BD0F93A4(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1BE052B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD38C00);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BD0F5D1C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BD0F5D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD0F5DE8(uint64_t a1)
{
  sub_1BD0F5E40(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1BD0F5E40(uint64_t a1)
{
  if (!qword_1EBD38C20)
  {
    sub_1BE049184();
    sub_1BE0495A4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C28, qword_1BE0E9120);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD38C20);
    }
  }
}

uint64_t sub_1BD0F5EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37150, &qword_1BE0B1170);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v107 - v3;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C30, &qword_1BE0B7C18);
  v117 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v107 - v4;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C38, &qword_1BE0B7C20);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v107 - v5;
  *&v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C40, &qword_1BE0B7C28);
  *&v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v107 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C48, &qword_1BE0B7C30);
  v110 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C50, &qword_1BE0B7C38);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v107 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C58, &qword_1BE0B7C40);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v107 - v13;
  v123 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C60, &qword_1BE0B7C48);
  sub_1BD0F90F0();
  sub_1BE0504E4();
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v16 = sub_1BE0511C4();
  v17 = sub_1BE0501D4();
  v18 = &v14[*(v12 + 36)];
  *v18 = v16;
  v18[8] = v17;
  v19 = sub_1BE04F434();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, *MEMORY[0x1E697C438], v19, v21);
  v24 = sub_1BD0F93EC();
  sub_1BE050E84();
  (*(v20 + 8))(v23, v19);
  sub_1BD0DE53C(v14, &qword_1EBD38C58, &qword_1BE0B7C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0, &unk_1BE0E9000);
  sub_1BE04EE44();
  v25 = swift_allocObject();
  v25[1] = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  *&v125[0] = v12;
  *(&v125[0] + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v107;
  MEMORY[0x1BFB3DEF0](0, v25, v8, OpaqueTypeConformance2);
  v25, v28, v29, v30, v31, v32, v33, v34;
  (*(v9 + 8))(v11, v8);
  v35 = sub_1BE04E454();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E434();
  *&v125[0] = v8;
  *(&v125[0] + 1) = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = v109;
  v41 = v108;
  sub_1BE050984();
  (*(v36 + 8))(v38, v35);
  (*(v110 + 8))(v27, v41);
  v122 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD8, &unk_1BE0B7C90);
  *&v125[0] = v41;
  *(&v125[0] + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0, &unk_1BE0E9010);
  v43 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0, &unk_1BE0E9010, MEMORY[0x1E697BEF0]);
  *&v125[0] = v42;
  *(&v125[0] + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v113;
  v45 = v111;
  sub_1BE051024();
  (*(v112 + 8))(v40, v45);
  v46 = sub_1BE04F7B4();
  sub_1BD0F821C(v125);
  v47 = v126;
  LOBYTE(v41) = v127;
  v112 = v125[0];
  v111 = v125[1];
  v48 = sub_1BE04E564();
  LOBYTE(v14) = MEMORY[0x1BFB3D2D0]((2 * v48));
  v49 = sub_1BE04EC74();
  LOBYTE(v125[0]) = 0;
  v50 = v114;
  v51 = v44 + *(v114 + 36);
  v52 = v111;
  *v51 = v112;
  *(v51 + 16) = v52;
  *(v51 + 32) = v47;
  *(v51 + 40) = v41;
  *(v51 + 44) = *&v130[3];
  *(v51 + 41) = *v130;
  *(v51 + 48) = v49;
  *(v51 + 56) = 0;
  *(v51 + 64) = 0;
  *(v51 + 65) = v14;
  *(v51 + 70) = v129;
  *(v51 + 66) = v128;
  *(v51 + 72) = v46;
  v53 = sub_1BE0501E4();
  v54 = sub_1BE04FC54();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04FC34();
  v58 = sub_1BD0F94D8();
  v59 = v115;
  MEMORY[0x1BFB3DB30](v53, 0x4072C00000000000, 0, v57, v50, v58);
  (*(v55 + 8))(v57, v54);
  sub_1BD043E78(v44);
  v60 = swift_allocObject();
  v61 = *(v2 + 16);
  *(v60 + 16) = *v2;
  *(v60 + 32) = v61;
  *(v60 + 48) = *(v2 + 32);
  *(v60 + 64) = *(v2 + 48);
  sub_1BD0F972C(v2, v125);
  *&v125[0] = v50;
  *(&v125[0] + 1) = v58;
  swift_getOpaqueTypeConformance2();
  sub_1BD0F9764();
  v62 = v116;
  sub_1BE050DC4();
  v60, v63, v64, v65, v66, v67, v68, v69;
  (v117[1])(v59, v62);
  sub_1BE0528A4();
  sub_1BD0F972C(v2, v125);
  v70 = sub_1BE052894();
  v71 = swift_allocObject();
  v72 = MEMORY[0x1E69E85E0];
  *(v71 + 16) = v70;
  *(v71 + 24) = v72;
  v73 = *(v2 + 16);
  *(v71 + 32) = *v2;
  *(v71 + 48) = v73;
  *(v71 + 64) = *(v2 + 32);
  *(v71 + 80) = *(v2 + 48);
  v74 = sub_1BE0528D4();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = &v107 - v77;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v116 = sub_1BE04EAA4();
    v117 = &v107;
    v115 = *(v116 - 8);
    MEMORY[0x1EEE9AC00](v116);
    v80 = &v107 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v125[0] = 0;
    *(&v125[0] + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&v125[0] + 1), v81, v82, v83, v84, v85, v86, v87;
    *&v125[0] = 0xD000000000000042;
    *(&v125[0] + 1) = 0x80000001BE118F30;
    v124 = 171;
    v88 = sub_1BE053B24();
    v90 = v89;
    MEMORY[0x1BFB3F610](v88);
    v90, v91, v92, v93, v94, v95, v96, v97;
    v99 = MEMORY[0x1EEE9AC00](v98);
    (*(v75 + 16))(&v107 - v77, &v107 - v77, v74, v99);
    sub_1BE04EA94();
    (*(v75 + 8))(&v107 - v77, v74);
    v100 = v120;
    (*(v118 + 32))(v120, v121, v119);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37158, &qword_1BE0B1178);
    return (*(v115 + 4))(v100 + *(v101 + 36), v80, v116);
  }

  else
  {
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD37160, &qword_1BE0B1180);
    v104 = v120;
    v105 = (v120 + *(v103 + 36));
    v106 = sub_1BE04E7B4();
    (*(v75 + 32))(&v105[*(v106 + 20)], v78, v74);
    *v105 = &unk_1BE0B7CB0;
    *(v105 + 1) = v71;
    return (*(v118 + 32))(v104, v121, v119);
  }
}

uint64_t sub_1BD0F6D38(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C78, &qword_1BE0B7C50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-v3];
  v11 = a1;
  *v4 = sub_1BE04F7C4();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D50, &qword_1BE0B7D30);
  sub_1BD0F75A0(a1, &v4[*(v5 + 44)]);
  v6 = &v4[*(v2 + 36)];
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
  v8 = sub_1BE0505C4();
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 1, v8);
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C98, &qword_1BE0B7C68);
  sub_1BD0F9188();
  sub_1BD0F926C();
  return sub_1BE051A24();
}

uint64_t sub_1BD0F6EC8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CA8, &qword_1BE0B7C70);
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v50 - v5;
  v6 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BE049184();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v50 - v12;
  v58[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10, &qword_1BE0B7CB8);
  sub_1BE0516A4();
  v13 = v60;
  KeyPath = swift_getKeyPath();
  *&v58[0] = v13;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B594();
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v22 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  sub_1BD0F9950(v13 + v22, v8);
  v13, v23, v24, v25, v26, v27, v28, v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  if ((*(*(v30 - 8) + 48))(v8, 2, v30))
  {
    sub_1BD0F99B4(v8);
    v31 = 1;
    v32 = v57;
  }

  else
  {
    v52 = v4;
    v53 = a2;
    v33 = *(v30 + 48);
    v50 = *&v8[*(v30 + 64)];
    v34 = v9;
    v35 = *(v9 + 32);
    v36 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v55;
    v38 = v56;
    v35();
    v39 = sub_1BE0495A4();
    (*(*(v39 - 8) + 8))(&v8[v33], v39);
    v59 = v50;
    v51 = v34;
    v40 = v37;
    v4 = v52;
    (*(v34 + 16))(v36, v40, v38);
    v41 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v42 = (v10 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = v43 + v41;
    a2 = v53;
    (v35)(v44, v36, v38);
    v45 = v43 + v42;
    v46 = a1[1];
    *v45 = *a1;
    *(v45 + 16) = v46;
    *(v45 + 32) = a1[2];
    *(v45 + 48) = *(a1 + 6);
    sub_1BD0F972C(a1, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C28, qword_1BE0E9120);
    sub_1BE04AFE4();
    type metadata accessor for FinanceKitInternalTransactionCell(0);
    sub_1BD0DE4F4(&qword_1EBD38D98, &qword_1EBD38C28, qword_1BE0E9120, MEMORY[0x1E69E6338]);
    sub_1BD0F93A4(&qword_1EBD38CB0, type metadata accessor for FinanceKitInternalTransactionCell, &unk_1BE0E8A4C);
    sub_1BD0F93A4(&qword_1EBD38DA0, MEMORY[0x1E6967A40], MEMORY[0x1E6967A60]);
    v47 = v54;
    sub_1BE0519D4();
    (*(v51 + 8))(v55, v56);
    v48 = v57;
    (*(v4 + 32))(a2, v47, v57);
    v31 = 0;
    v32 = v48;
  }

  return (*(v4 + 56))(a2, v31, 1, v32);
}

double sub_1BD0F7434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v9 = v8[5];
  v10 = sub_1BE049A94();
  (*(*(v10 - 8) + 16))(&a4[v9], a1, v10);
  v11 = v8[6];
  v12 = sub_1BE049184();
  (*(*(v12 - 8) + 16))(&a4[v11], a2, v12);
  v13 = *(a3 + 48);
  type metadata accessor for NavigationController();
  sub_1BD0F93A4(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  v14 = v13;
  *a4 = sub_1BE04EEC4();
  *(a4 + 1) = v15;
  *&a4[v8[7]] = v14;
  v16 = v8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB0, &unk_1BE0B7DB0);
  sub_1BE051694();
  result = *&v18;
  *&a4[v16] = v18;
  return result;
}

id sub_1BD0F75A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v119 = sub_1BE04BD74();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v4 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D58, &qword_1BE0B7D68);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v114 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D60, &qword_1BE0B7D70);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v116 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v114 - v15;
  *v16 = sub_1BE04F504();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D68, &qword_1BE0B7D78) + 44)];
  *v10 = sub_1BE04F7B4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D70, &qword_1BE0B7D80);
  sub_1BD0F893C(a1, &v10[*(v18 + 44)]);
  sub_1BD0DE19C(v10, v7, &qword_1EBD38D58, &qword_1BE0B7D68);
  *v17 = 0;
  v17[8] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D78, &qword_1BE0B7D88);
  sub_1BD0DE19C(v7, &v17[*(v19 + 48)], &qword_1EBD38D58, &qword_1BE0B7D68);
  v20 = &v17[*(v19 + 64)];
  *v20 = 0;
  v20[8] = 1;
  v21 = v119;
  sub_1BD0DE53C(v10, &qword_1EBD38D58, &qword_1BE0B7D68);
  v22 = v118;
  sub_1BD0DE53C(v7, &qword_1EBD38D58, &qword_1BE0B7D68);
  LOBYTE(v10) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v23 = *(v12 + 44);
  v115 = v16;
  v24 = &v16[v23];
  *v24 = v10;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  (*(v22 + 104))(v4, *MEMORY[0x1E69B80D8], v21);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v22 + 8))(v4, v21);
    v125 = v31;
    v126 = v33;
    sub_1BD0DDEBC();
    v34 = sub_1BE0506C4();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = sub_1BE0503E4();
    v42 = sub_1BE0505F4();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v41, v43, v45, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v34, v36, (v38 & 1), v53, v54, v55, v56, v57);
    v40, v58, v59, v60, v61, v62, v63, v64;
    v65 = sub_1BE0505D4();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    sub_1BD0DDF10(v42, v44, (v46 & 1), v70, v72, v73, v74, v75);
    v48, v76, v77, v78, v79, v80, v81, v82;
    v83 = sub_1BE051464();
    v125 = v83;
    v84 = sub_1BE050574();
    v86 = v85;
    LOBYTE(v44) = v87;
    v89 = v88;
    sub_1BD0DDF10(v65, v67, (v69 & 1), v88, v90, v91, v92, v93);
    v83, v94, v95, v96, v97, v98, v99, v100;
    v71, v101, v102, v103, v104, v105, v106, v107;
    LOBYTE(v83) = v44 & 1;
    v135 = v44 & 1;
    v133 = 0;
    v108 = v115;
    v109 = v116;
    sub_1BD0DE19C(v115, v116, &qword_1EBD38D60, &qword_1BE0B7D70);
    v110 = v117;
    sub_1BD0DE19C(v109, v117, &qword_1EBD38D60, &qword_1BE0B7D70);
    v111 = v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D80, &unk_1BE0B7D90) + 48);
    *&v120 = v84;
    *(&v120 + 1) = v86;
    LOBYTE(v121) = v83;
    *(&v121 + 1) = *v134;
    DWORD1(v121) = *&v134[3];
    *(&v121 + 1) = v89;
    v122 = 0u;
    v123 = 0u;
    v124 = 0;
    *(v111 + 64) = 0;
    v112 = v121;
    *v111 = v120;
    *(v111 + 16) = v112;
    v113 = v123;
    *(v111 + 32) = v122;
    *(v111 + 48) = v113;
    sub_1BD0DE19C(&v120, &v125, &qword_1EBD38D88, &qword_1BE0E9090);
    sub_1BD0DE53C(v108, &qword_1EBD38D60, &qword_1BE0B7D70);
    v125 = v84;
    v126 = v86;
    v127 = v83;
    *v128 = *v134;
    *&v128[3] = *&v134[3];
    v129 = v89;
    v130 = 0u;
    v131 = 0u;
    v132 = 0;
    sub_1BD0DE53C(&v125, &qword_1EBD38D88, &qword_1BE0E9090);
    return sub_1BD0DE53C(v109, &qword_1EBD38D60, &qword_1BE0B7D70);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD0F7B68(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CE0, &unk_1BE0E9010);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB34();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D20, &qword_1BE0B7CF8);
  sub_1BD0DE4F4(&qword_1EBD38D28, &qword_1EBD38D20, &qword_1BE0B7CF8, MEMORY[0x1E69817F8]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0, &unk_1BE0E9010, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

int *sub_1BD0F7D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D30, &qword_1BE0B7D00);
  return sub_1BD0F7DAC(a1, a2 + *(v4 + 44));
}

int *sub_1BD0F7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30, &qword_1BE0B7D08);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D38, &qword_1BE0B7D10);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v46 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D40, &qword_1BE0B7D18);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v46 - v10;
  PKScreenScale();
  result = PKIconForFKManuallyExcluded();
  if (result)
  {
    v12 = sub_1BE051544();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v13 = 0.0;
    v46 = sub_1BE0515E4();
    v12, v14, v15, v16, v17, v18, v19, v20;
    (*(v3 + 8))(v5, v2);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v21 = v55;
    v22 = v56;
    v23 = v57;
    v24 = v58;
    v26 = v59;
    v25 = v60;
    v27 = &v8[*(v6 + 36)];
    v28 = *(sub_1BE04EDE4() + 20);
    v29 = *MEMORY[0x1E697F468];
    v30 = sub_1BE04F684();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #6.0 }

    *v27 = _Q0;
    *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
    *v8 = v46;
    *(v8 + 1) = v21;
    v8[16] = v22;
    *(v8 + 3) = v23;
    v8[32] = v24;
    *(v8 + 5) = v26;
    *(v8 + 6) = v25;
    v36 = v51;
    v54 = *(v51 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v53)
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v49;
    sub_1BD0DE204(v8, v49, &unk_1EBD3FC30, &qword_1BE0B7D08);
    *(v38 + *(v47 + 36)) = v37;
    v54 = *(v36 + 32);
    sub_1BE0516A4();
    if (!v53)
    {
      v13 = 40.0;
    }

    v39 = v50;
    v40 = sub_1BD0DE204(v38, v50, &qword_1EBD38D38, &qword_1BE0B7D10);
    v41 = v39 + *(v48 + 36);
    *v41 = 0;
    *(v41 + 8) = v13;
    v42 = MEMORY[0x1BFB3EDF0](v40, 0.5, 1.0, 0.0);
    v54 = *(v36 + 32);
    sub_1BE0516A4();
    v43 = v53;
    v44 = v52;
    sub_1BD0DE204(v39, v52, &qword_1EBD38D40, &qword_1BE0B7D18);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D48, &qword_1BE0E33A0);
    v45 = v44 + result[9];
    *v45 = v42;
    *(v45 + 8) = v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD0F821C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE0495A4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *v1;
  v55 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10, &qword_1BE0B7CB8);
  sub_1BE0516A4();
  v10 = v54;
  KeyPath = swift_getKeyPath();
  *&v55 = v10;
  sub_1BD0F93A4(&qword_1EBD38D18, type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel, &unk_1BE0B7BF0);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtCV9PassKitUI37FinanceKitManuallyExcludedHistoryView9ViewModel__state;
  swift_beginAccess();
  sub_1BD0F9950(v10 + v19, v5);
  v10, v20, v21, v22, v23, v24, v25, v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C08, &qword_1BE0F1100);
  if ((*(*(v27 - 8) + 48))(v5, 2, v27))
  {
    result = sub_1BD0F99B4(v5);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    v35 = *&v5[*(v27 + 64)];
    (*(v7 + 32))(v9, &v5[*(v27 + 48)], v6);
    v36 = sub_1BE049184();
    (*(*(v36 - 8) + 8))(v5, v36);
    v54 = v56;
    sub_1BE0516A4();
    v37 = v53[1];
    sub_1BD0F5264(v9, v35);
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v37, v39, v40, v41, v42, v43, v44, v45;
    v35, v46, v47, v48, v49, v50, v51, v52;
    v33 = sub_1BE04EC54();
    v34 = sub_1BE0501D4();
    result = (*(v7 + 8))(v9, v6);
  }

  *a1 = v29;
  *(a1 + 8) = v30;
  *(a1 + 16) = v31;
  *(a1 + 24) = v32;
  *(a1 + 32) = v33;
  *(a1 + 40) = v34;
  return result;
}

uint64_t sub_1BD0F8550@<X0>(double *a1@<X8>)
{
  result = sub_1BE04E9E4();
  v4 = v3 / 120.0;
  if (v3 / 120.0 <= 0.0)
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BD0F85A0(uint64_t a1, double *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59830, &unk_1BE0B7CC0);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  return sub_1BE0516B4();
}

uint64_t sub_1BD0F8640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  sub_1BE0528A4();
  v3[6] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD0F86D8, v5, v4);
}

uint64_t sub_1BD0F86D8()
{
  *(v0 + 16) = **(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10, &qword_1BE0B7CB8);
  sub_1BE0516A4();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F8798;

  return sub_1BD0F191C();
}

uint64_t sub_1BD0F8798()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 64);
  v11 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1BD0F88DC, v11, v10);
}

uint64_t sub_1BD0F88DC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

void sub_1BD0F893C(__int128 *a1@<X0>, void *a2@<X8>)
{
  v233 = a1;
  v234 = a2;
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v228[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30, &qword_1BE0B7D08);
  MEMORY[0x1EEE9AC00](v6);
  v235 = &v228[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v228[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v237 = &v228[-v12];
  PKScreenScale();
  if (!PKIconForFKManuallyExcluded())
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = sub_1BE051544();
  (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
  v236 = sub_1BE0515E4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  (*(v3 + 8))(v5, v2);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v21 = v240;
  v22 = v241;
  v23 = v242;
  v24 = v243;
  v26 = v244;
  v25 = v245;
  v27 = &v10[*(v6 + 36)];
  v28 = *(sub_1BE04EDE4() + 20);
  v29 = *MEMORY[0x1E697F468];
  v30 = sub_1BE04F684();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #10.0 }

  *v27 = _Q0;
  *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)] = 256;
  v36 = v237;
  *v10 = v236;
  *(v10 + 1) = v21;
  v10[16] = v22;
  *(v10 + 3) = v23;
  v10[32] = v24;
  *(v10 + 5) = v26;
  *(v10 + 6) = v25;
  sub_1BD0DE204(v10, v36, &unk_1EBD3FC30, &qword_1BE0B7D08);
  v37 = sub_1BE052404();
  v38 = PKLocalizedBankConnectString(v37);

  if (!v38)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v39 = sub_1BE052434();
  v41 = v40;

  *&v239 = v39;
  *(&v239 + 1) = v41;
  v230 = sub_1BD0DDEBC();
  v42 = sub_1BE0506C4();
  v44 = v43;
  LOBYTE(v41) = v45;
  v47 = v46;
  v48 = sub_1BE050344();
  v49 = sub_1BE0505F4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v48, v50, v52, v54, v56, v57, v58, v59;
  sub_1BD0DDF10(v42, v44, (v41 & 1), v60, v61, v62, v63, v64);
  v47, v65, v66, v67, v68, v69, v70, v71;
  sub_1BE050364();
  v72 = sub_1BE050544();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  sub_1BD0DDF10(v49, v51, (v53 & 1), v77, v79, v80, v81, v82);
  v55, v83, v84, v85, v86, v87, v88, v89;
  v90 = sub_1BE051464();
  v232 = sub_1BE050564();
  v231 = v91;
  v229 = v92;
  v236 = v93;
  v90, v91, v92, v93, v94, v95, v96, v97;
  sub_1BD0DDF10(v72, v74, (v76 & 1), v98, v99, v100, v101, v102);
  v78, v103, v104, v105, v106, v107, v108, v109;
  v110 = sub_1BE052404();
  v111 = PKLocalizedString(v110);

  if (v111)
  {
    sub_1BE052434();
    v113 = v112;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1BE0B69E0;
    v239 = *v233;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D10, &qword_1BE0B7CB8);
    sub_1BE0516A4();
    v115 = v238[0];
    v116 = *(v238[0] + 16);
    sub_1BE048C84();
    v115, v117, v118, v119, v120, v121, v122, v123;
    v124 = v116[2];
    v116, v125, v126, v127, v128, v129, v130, v131;
    v132 = MEMORY[0x1E69E65A8];
    *(v114 + 56) = MEMORY[0x1E69E6530];
    *(v114 + 64) = v132;
    *(v114 + 32) = v124;
    v133 = sub_1BE052454();
    v135 = v134;
    v113, v134, v136, v137, v138, v139, v140, v141;
    *&v239 = v133;
    *(&v239 + 1) = v135;
    v142 = sub_1BE0506C4();
    v144 = v143;
    LOBYTE(v135) = v145;
    v147 = v146;
    v148 = sub_1BE0502A4();
    v149 = sub_1BE0505F4();
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v148, v150, v152, v154, v156, v157, v158, v159;
    sub_1BD0DDF10(v142, v144, (v135 & 1), v160, v161, v162, v163, v164);
    v147, v165, v166, v167, v168, v169, v170, v171;
    v172 = sub_1BE051494();
    v173 = sub_1BE050564();
    v175 = v174;
    LOBYTE(v135) = v176;
    v233 = v177;
    v172, v174, v176, v177, v178, v179, v180, v181;
    sub_1BD0DDF10(v149, v151, (v153 & 1), v182, v183, v184, v185, v186);
    v155, v187, v188, v189, v190, v191, v192, v193;
    v194 = v235;
    sub_1BD0DE19C(v237, v235, &unk_1EBD3FC30, &qword_1BE0B7D08);
    LOBYTE(v151) = v229 & 1;
    LOBYTE(v239) = v229 & 1;
    v195 = v234;
    *v234 = 0;
    *(v195 + 8) = 1;
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D90, &qword_1BE0B7DA8);
    sub_1BD0DE19C(v194, v195 + v196[12], &unk_1EBD3FC30, &qword_1BE0B7D08);
    v197 = v195 + v196[16];
    v198 = v232;
    v199 = v231;
    *v197 = v232;
    *(v197 + 1) = v199;
    v197[16] = v151;
    v200 = v236;
    *(v197 + 3) = v236;
    v201 = v195 + v196[20];
    *v201 = v173;
    *(v201 + 1) = v175;
    v202 = (v135 & 1);
    v201[16] = v202;
    v203 = v233;
    *(v201 + 3) = v233;
    sub_1BD0D7F18(v198, v199, v151);
    sub_1BE048C84();
    sub_1BD0D7F18(v173, v175, v202);
    sub_1BE048C84();
    sub_1BD0DE53C(v237, &unk_1EBD3FC30, &qword_1BE0B7D08);
    sub_1BD0DDF10(v173, v175, v202, v204, v205, v206, v207, v208);
    v203, v209, v210, v211, v212, v213, v214, v215;
    sub_1BD0DDF10(v198, v199, v239, v216, v217, v218, v219, v220);
    v200, v221, v222, v223, v224, v225, v226, v227;
    sub_1BD0DE53C(v194, &unk_1EBD3FC30, &qword_1BE0B7D08);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t sub_1BD0F90F0()
{
  result = qword_1EBD38C68;
  if (!qword_1EBD38C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C60, &qword_1BE0B7C48);
    sub_1BD0F9188();
    sub_1BD0F926C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38C68);
  }

  return result;
}

unint64_t sub_1BD0F9188()
{
  result = qword_1EBD38C70;
  if (!qword_1EBD38C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C78, &qword_1BE0B7C50);
    sub_1BD0DE4F4(&qword_1EBD38C80, &qword_1EBD38C88, &unk_1BE0B7C58, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD51290, &qword_1EBD386C0, &qword_1BE0B6C50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38C70);
  }

  return result;
}

unint64_t sub_1BD0F926C()
{
  result = qword_1EBD38C90;
  if (!qword_1EBD38C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C98, &qword_1BE0B7C68);
    sub_1BD0F92F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38C90);
  }

  return result;
}

unint64_t sub_1BD0F92F0()
{
  result = qword_1EBD38CA0;
  if (!qword_1EBD38CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CA8, &qword_1BE0B7C70);
    sub_1BD0F93A4(&qword_1EBD38CB0, type metadata accessor for FinanceKitInternalTransactionCell, &unk_1BE0E8A4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38CA0);
  }

  return result;
}

uint64_t sub_1BD0F93A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD0F93EC()
{
  result = qword_1EBD38CB8;
  if (!qword_1EBD38CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C58, &qword_1BE0B7C40);
    sub_1BD0DE4F4(&qword_1EBD38CC0, &qword_1EBD38CC8, &qword_1BE0B7C78, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38CB8);
  }

  return result;
}

unint64_t sub_1BD0F94D8()
{
  result = qword_1EBD38CF0;
  if (!qword_1EBD38CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C38, &qword_1BE0B7C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C40, &qword_1BE0B7C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CD8, &unk_1BE0B7C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C48, &qword_1BE0B7C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C50, &qword_1BE0B7C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38C58, &qword_1BE0B7C40);
    sub_1BD0F93EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0, &unk_1BE0E9010);
    sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0, &unk_1BE0E9010, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38CF8, &qword_1EBD38D00, &qword_1BE0B7CA0, MEMORY[0x1E697F598]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38CF0);
  }

  return result;
}

unint64_t sub_1BD0F9764()
{
  result = qword_1EBD38D08;
  if (!qword_1EBD38D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38D08);
  }

  return result;
}

uint64_t sub_1BD0F97B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD0F8640(v2, v3, v0 + 32);
}

uint64_t sub_1BD0F985C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BD0F9950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD0F99B4(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD0F9A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1BD0F9AA0@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_1BE049184() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD0F7434(a1, v2 + v6, v7, a2);
}

id sub_1BD0F9B4C@<X0>(uint64_t a2@<X8>)
{
  sub_1BE051694();
  sub_1BE051694();
  result = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:{PKUIScreenScale(), 0}];
  if (result)
  {
    v4 = result;
    type metadata accessor for FinanceKitManuallyExcludedHistoryView.ViewModel(0);
    result = sub_1BE051694();
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 32) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1BD0F9CDC()
{
  result = qword_1EBD38E30;
  if (!qword_1EBD38E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E28, &unk_1BE0B7EB0);
    sub_1BD0F9D68();
    sub_1BD0F9E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E30);
  }

  return result;
}

unint64_t sub_1BD0F9D68()
{
  result = qword_1EBD38E38;
  if (!qword_1EBD38E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E18, &qword_1BE109170);
    sub_1BD0DE4F4(&qword_1EBD38E40, &qword_1EBD38E10, &unk_1BE0B7E70, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E38);
  }

  return result;
}

unint64_t sub_1BD0F9E18()
{
  result = qword_1EBD38E48;
  if (!qword_1EBD38E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E08, &unk_1BE109160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E48);
  }

  return result;
}

unint64_t sub_1BD0F9E9C()
{
  result = qword_1EBD38E98;
  if (!qword_1EBD38E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E90, &qword_1BE0F4370);
    sub_1BD0F9F28();
    sub_1BD0F9FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38E98);
  }

  return result;
}

unint64_t sub_1BD0F9F28()
{
  result = qword_1EBD38EA0;
  if (!qword_1EBD38EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E78, &qword_1BE0B7ED0);
    sub_1BD0DE4F4(&qword_1EBD38EA8, &qword_1EBD38E70, &unk_1BE0F4300, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38EA0);
  }

  return result;
}

unint64_t sub_1BD0F9FD8()
{
  result = qword_1EBD38EB0;
  if (!qword_1EBD38EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E68, &unk_1BE0B7EC0);
    sub_1BD0FA05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38EB0);
  }

  return result;
}

unint64_t sub_1BD0FA05C()
{
  result = qword_1EBD38EB8;
  if (!qword_1EBD38EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38E60, &unk_1BE0F42F0);
    v1 = MEMORY[0x1E6967A40];
    sub_1BD0F93A4(&qword_1EBD38EC0, MEMORY[0x1E6967A40], MEMORY[0x1E6967A58]);
    sub_1BD0F93A4(&qword_1EBD38EC8, v1, MEMORY[0x1E6967A48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38EB8);
  }

  return result;
}

unint64_t sub_1BD0FA144()
{
  result = qword_1EBD38F38;
  if (!qword_1EBD38F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F30, &unk_1BE0B7FA0);
    sub_1BD0FA1E8();
    sub_1BD0FA424(&qword_1EBD38F80, &qword_1EBD38EE0, &unk_1BE0B7F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F38);
  }

  return result;
}

unint64_t sub_1BD0FA1E8()
{
  result = qword_1EBD38F40;
  if (!qword_1EBD38F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F00, &unk_1BE0B7F60);
    sub_1BD0FA28C();
    sub_1BD0FA424(&qword_1EBD38F70, &qword_1EBD38EF0, &qword_1BE0B7F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F40);
  }

  return result;
}

unint64_t sub_1BD0FA28C()
{
  result = qword_1EBD38F48;
  if (!qword_1EBD38F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38EF8, &qword_1BE0B7F58);
    sub_1BD0FA388(&qword_1EBD38F50, &qword_1EBD38F58, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
    sub_1BD0FA388(&qword_1EBD38F60, &qword_1EBD38F68, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38F48);
  }

  return result;
}

uint64_t sub_1BD0FA388(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38F08, &qword_1BE0DF9C0);
    sub_1BD0F93A4(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD0FA424(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1BD0DE4F4(&qword_1EBD38F78, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BD0FA4DC(uint64_t a1)
{
  sub_1BD0E5E8C(319, &qword_1EBD39018, 0x1E69B8C88);
  if (v1 <= 0x3F)
  {
    sub_1BE0534B4();
    if (v2 <= 0x3F)
    {
      sub_1BD0FA9D0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD0FA59C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 18;
  v11 = (a2 - v7 + 0xFFFF) >> 16;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10), !*(a1 + v10)))
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void sub_1BD0FA738(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + ((v11 + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 0xFFFF) >> 16;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
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
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = (&a1[v11 + 8] & ~v11);
        if (v9 >= a2)
        {
          v24 = *(v7 + 56);
          v25 = a2 + 1;
          v26 = &a1[v11 + 8] & ~v11;

          v24(v26, v25);
        }

        else
        {
          if (v12 <= 3)
          {
            v21 = ~(-1 << (8 * v12));
          }

          else
          {
            v21 = -1;
          }

          if (v12)
          {
            v22 = v21 & (~v9 + a2);
            if (v12 <= 3)
            {
              v23 = v12;
            }

            else
            {
              v23 = 4;
            }

            bzero(v20, v12);
            if (v23 > 2)
            {
              if (v23 == 3)
              {
                *v20 = v22;
                v20[2] = BYTE2(v22);
              }

              else
              {
                *v20 = v22;
              }
            }

            else if (v23 == 1)
            {
              *v20 = v22;
            }

            else
            {
              *v20 = v22;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *a1 = v19;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = HIWORD(v17) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void sub_1BD0FA9D0(uint64_t a1)
{
  if (!qword_1EBD39020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD579E0, "0^\r");
    v1 = sub_1BE0534B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39020);
    }
  }
}

uint64_t sub_1BD0FAA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028, &qword_1BE0B8048);
  v5 = *(a1 + 16);
  v6 = sub_1BD0FE9EC();
  v7 = *(a1 + 24);
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v61 = v7;
  swift_getOpaqueTypeMetadata2();
  v8 = sub_1BE04EBD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v46 - v13;
  v48 = v7;
  v58 = v4;
  v59 = v5;
  v49 = v5;
  v60 = v6;
  v61 = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1BD0FEBBC();
  v56 = OpaqueTypeConformance2;
  v57 = v15;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1BE051754();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = sub_1BE04F9B4();
  v24 = a1;
  v50 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v53 = &v46 - v27;
  v28 = (v2 + *(v26 + 40));
  v29 = *v28;
  if (*v28)
  {
    v47 = &v46;
    v30 = v28[1];
    MEMORY[0x1EEE9AC00](v26);
    v31 = v48;
    *(&v46 - 4) = v49;
    *(&v46 - 3) = v31;
    *(&v46 - 2) = v2;
    sub_1BD0D44B8(v29, v30);
    sub_1BE048964();
    v49 = v25;
    v32 = WitnessTable;
    sub_1BE051704();
    swift_getWitnessTable();
    sub_1BD147308();
    v33 = *(v17 + 8);
    v33(v19, v16);
    sub_1BD147308();
    v34 = v32;
    v25 = v49;
    sub_1BD13A700(v19, v16);
    sub_1BD0D4744(v29, v30, v35, v36, v37, v38, v39, v40);
    v33(v19, v16);
    v33(v22, v16);
  }

  else
  {
    sub_1BD0FB1A8(v26, v11);
    v41 = v47;
    v34 = WitnessTable;
    sub_1BD147308();
    v42 = *(v9 + 8);
    v42(v11, v8);
    sub_1BD147308();
    swift_getWitnessTable();
    sub_1BD13A7F8(v11, v16, v8);
    v42(v11, v8);
    v42(v41, v8);
  }

  v54 = swift_getWitnessTable();
  v55 = v34;
  v43 = v50;
  swift_getWitnessTable();
  v44 = v53;
  sub_1BD147308();
  return (*(v25 + 8))(v44, v43);
}

uint64_t sub_1BD0FAFAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028, &qword_1BE0B8048);
  v6 = sub_1BD0FE9EC();
  v21 = v5;
  v22 = a1;
  v23 = v6;
  v24 = a2;
  swift_getOpaqueTypeMetadata2();
  v7 = sub_1BE04EBD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v15 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a1, a2, v14);
  sub_1BD0FB1A8(v15, v10);
  v21 = v5;
  v22 = a1;
  v23 = v6;
  v24 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1BD0FEBBC();
  v20[2] = OpaqueTypeConformance2;
  v20[3] = v17;
  swift_getWitnessTable();
  sub_1BD147308();
  v18 = *(v8 + 8);
  v18(v10, v7);
  sub_1BD147308();
  return (v18)(v13, v7);
}

uint64_t sub_1BD0FB1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39060, &qword_1BE0B8060);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39050, &qword_1BE0B8058);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39040, &qword_1BE0B8050);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39028, &qword_1BE0B8048);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = *(a1 + 16);
  v57 = sub_1BD0FE9EC();
  v18 = *(a1 + 24);
  *&v66 = v14;
  *(&v66 + 1) = v17;
  v19 = v17;
  v54 = v17;
  *&v67 = v57;
  *(&v67 + 1) = v18;
  v20 = v18;
  v58 = MEMORY[0x1E69BCB50];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v56 = &v53 - v21;
  *v6 = sub_1BE04F7C4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39068, &qword_1BE0B8068);
  sub_1BD0FB680(v2, v19, v20, &v6[*(v22 + 44)]);
  LOBYTE(v19) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1BD0DE204(v6, v10, &qword_1EBD39060, &qword_1BE0B8060);
  v31 = &v10[*(v8 + 44)];
  *v31 = v19;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = v55;
  sub_1BD0DE204(v10, v55, &qword_1EBD39050, &qword_1BE0B8058);
  *(v32 + *(v12 + 44)) = 1;
  sub_1BE051CE4();
  sub_1BE04EE54();
  sub_1BD0DE204(v32, v16, &qword_1EBD39040, &qword_1BE0B8050);
  v33 = v14;
  v34 = &v16[*(v14 + 36)];
  v35 = v71;
  *(v34 + 4) = v70;
  *(v34 + 5) = v35;
  *(v34 + 6) = v72;
  v36 = v67;
  *v34 = v66;
  *(v34 + 1) = v36;
  v37 = v69;
  *(v34 + 2) = v68;
  *(v34 + 3) = v37;
  v38 = v56;
  v39 = v33;
  v40 = v54;
  v41 = v57;
  sub_1BE050724();
  sub_1BD0DE53C(v16, &qword_1EBD39028, &qword_1BE0B8048);
  v42 = sub_1BE051214();
  v62 = v39;
  v63 = v40;
  v64 = v41;
  v65 = v20;
  swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  v44 = sub_1BD3805D0(OpaqueTypeMetadata2);
  sub_1BD5A3420(0, v42, v43, 1.0, v44);
  v42, v45, v46, v47, v48, v49, v50, v51;
  return (*(v60 + 8))(v38, v43);
}

uint64_t sub_1BD0FB680@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39070, &qword_1BE0B8070);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39078, &qword_1BE0B8078);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39080, &qword_1BE0B8080);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = [*a1 dynamicContent];
  if (v16 && (v18 = v16, v19 = [v16 dynamicContentPageForPageType_], v18, v19) && (v20 = objc_msgSend(v19, sel_customLayout), v19, v20))
  {
    v21 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a2, a3, v17);
    sub_1BD0FB9CC(v20, v21, v8);
    sub_1BD0DE19C(v8, v11, &qword_1EBD39070, &qword_1BE0B8070);
    swift_storeEnumTagMultiPayload();
    v22 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD39088, &qword_1EBD39070, &qword_1BE0B8070, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD39090, &qword_1EBD39080, &qword_1BE0B8080, v22);
    sub_1BE04F9A4();

    v23 = v8;
    v24 = &qword_1EBD39070;
    v25 = &qword_1BE0B8070;
  }

  else
  {
    v26 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a2, a3, v17);
    sub_1BD0FC17C(v26, v15);
    sub_1BD0DE19C(v15, v11, &qword_1EBD39080, &qword_1BE0B8080);
    swift_storeEnumTagMultiPayload();
    v27 = MEMORY[0x1E6981F48];
    sub_1BD0DE4F4(&qword_1EBD39088, &qword_1EBD39070, &qword_1BE0B8070, MEMORY[0x1E6981F48]);
    sub_1BD0DE4F4(&qword_1EBD39090, &qword_1EBD39080, &qword_1BE0B8080, v27);
    sub_1BE04F9A4();
    v23 = v15;
    v24 = &qword_1EBD39080;
    v25 = &qword_1BE0B8080;
  }

  return sub_1BD0DE53C(v23, v24, v25);
}

uint64_t sub_1BD0FB9CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v87 = *(a2 - 8);
  v88 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v84[1] = v4;
  v86 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39098, &qword_1BE0B8088);
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v90 = v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390A0, &qword_1BE0B8090);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v96 = (v84 - v12);
  v13 = [a1 items];
  sub_1BD0E5E8C(0, &qword_1EBD390A8, 0x1E69B8C68);
  v14 = sub_1BE052744();

  v15 = v14 & 0xFFFFFFFFFFFFFF8;
  v16 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_53;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v18 = 0;
  v19 = v14 & 0xC000000000000001;
  while (1)
  {
    if (v17 == v18)
    {
      if (!v16)
      {
        v24 = 0;
        v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_22;
      }

      result = sub_1BE053704();
      if ((result & 0x8000000000000000) == 0)
      {
        v25 = result;
        v24 = 0;
        goto LABEL_19;
      }

      goto LABEL_60;
    }

    if (v19)
    {
      v20 = MEMORY[0x1BFB40900](v18, v14);
    }

    else
    {
      if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v17 = sub_1BE053704();
        goto LABEL_3;
      }

      v20 = *(v14 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 type];

    if (v22 == 2)
    {
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_52;
    }
  }

  v24 = v18;
  v25 = v18;
  if (!v16)
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v18;
    v25 = v18;
    goto LABEL_21;
  }

LABEL_19:
  result = sub_1BE053704();
  if (result < 0)
  {
    goto LABEL_55;
  }

  result = sub_1BE053704();
LABEL_21:
  if (result < v25)
  {
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_22:
  if (v19)
  {
    sub_1BE048C84();
    if (v25)
    {
      v34 = 0;
      do
      {
        v35 = v34 + 1;
        sub_1BE053864();
        v34 = v35;
      }

      while (v25 != v35);
    }

    if (!v16)
    {
LABEL_27:
      v36 = 0;
      v37 = v15 + 32;
      v38 = ((2 * v25) | 1);
      result = v14 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_30;
    }
  }

  else
  {
    sub_1BE048C84();
    if (!v16)
    {
      goto LABEL_27;
    }
  }

  v14, v27, v28, v29, v30, v31, v32, v33;
  result = sub_1BE0539D4();
  v37 = v27;
LABEL_30:
  v95 = result;
  v84[0] = v38;
  if (v17 == v18)
  {
    v39 = v36;
    v14, v27, v36, v38, v30, v31, v32, v33;
    v15 = sub_1BD0FC6EC(MEMORY[0x1E69E7CC0]);
    v41 = v40;
    v24 = v42;
    v44 = v43;
LABEL_50:
    v61 = sub_1BE04F504();
    v62 = v96;
    *v96 = v61;
    v62[1] = 0;
    *(v62 + 16) = 1;
    v63 = v62;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B0, &unk_1BE0B8098);
    v65 = v88;
    v66 = *(v88 + 16);
    v67 = *(v88 + 24);
    v68 = v39;
    v69 = v85;
    sub_1BD0FC794(v95, v37, v68, v84[0], v85, v66, v67, v63 + *(v64 + 44));
    v97 = v15;
    v98 = v41;
    v99 = v24;
    v100 = v44;
    swift_getKeyPath();
    v71 = v86;
    v70 = v87;
    (*(v87 + 16))(v86, v69, v65);
    v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v66;
    *(v73 + 24) = v67;
    (*(v70 + 32))(v73 + v72, v71, v65);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B8, &qword_1BE0B80C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390C0, &qword_1BE0B80C8);
    sub_1BD0DE4F4(&qword_1EBD390C8, &qword_1EBD390B8, &qword_1BE0B80C0, MEMORY[0x1E69E6970]);
    sub_1BD0FECB8();
    sub_1BD0FF1FC(&qword_1EBD390D8, &qword_1EBD390C0, &qword_1BE0B80C8, sub_1BD0FED20);
    v74 = v90;
    sub_1BE0519C4();
    v75 = v96;
    v76 = v89;
    sub_1BD0DE19C(v96, v89, &qword_1EBD390A0, &qword_1BE0B8090);
    v78 = v91;
    v77 = v92;
    v79 = *(v92 + 16);
    v80 = v94;
    v79(v91, v74, v94);
    v81 = v93;
    sub_1BD0DE19C(v76, v93, &qword_1EBD390A0, &qword_1BE0B8090);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39128, &qword_1BE0B80F0);
    v79((v81 + *(v82 + 48)), v78, v80);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v83 = *(v77 + 8);
    v83(v74, v80);
    sub_1BD0DE53C(v75, &qword_1EBD390A0, &qword_1BE0B8090);
    v83(v78, v80);
    return sub_1BD0DE53C(v76, &qword_1EBD390A0, &qword_1BE0B8090);
  }

  if (v17 < v24)
  {
    goto LABEL_56;
  }

  v39 = v36;
  if (v16)
  {
    result = sub_1BE053704();
    if (result < v24)
    {
      goto LABEL_57;
    }

    result = sub_1BE053704();
  }

  else
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v24)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  if (result < v17)
  {
    goto LABEL_58;
  }

  if (v17 < 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (!v19 || v24 == v17)
  {
    sub_1BE048C84();
LABEL_47:
    v14, v47, v48, v49, v50, v51, v52, v53;
    if (v16)
    {
      v15 = sub_1BE0539D4();
      v41 = v54;
      v24 = v55;
      v44 = v56;
      v14, v54, v55, v56, v57, v58, v59, v60;
    }

    else
    {
      v41 = (v15 + 32);
      v44 = (2 * v17) | 1;
    }

    goto LABEL_50;
  }

  if (v24 < v17)
  {
    sub_1BE048C84();
    v45 = v24;
    do
    {
      v46 = v45 + 1;
      sub_1BE053864();
      v45 = v46;
    }

    while (v17 != v46);
    goto LABEL_47;
  }

LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_1BD0FC17C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v28 = sub_1BE04F504();
  LOBYTE(v49[0]) = 1;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1BD0FE128(v9, v8, v61);
  memcpy(v33, v61, sizeof(v33));
  memcpy(v34, v61, sizeof(v34));
  sub_1BD0DE19C(v33, v46, &qword_1EBD391C8, &qword_1BE0B8238);
  sub_1BD0DE53C(v34, &qword_1EBD391C8, &qword_1BE0B8238);
  memcpy(&v32[7], v33, 0x170uLL);
  v26 = LOBYTE(v49[0]);
  v25 = v7;
  sub_1BD0FDA14(v7);
  v27 = sub_1BE04F504();
  LOBYTE(v49[0]) = 1;
  sub_1BD0FE754(v9, v8, v61);
  v41 = v61[6];
  v42 = v61[7];
  v43[0] = v61[8];
  *(v43 + 9) = *(&v61[8] + 9);
  v37 = v61[2];
  v38 = v61[3];
  v39 = v61[4];
  v40 = v61[5];
  v35 = v61[0];
  v36 = v61[1];
  v44[6] = v61[6];
  v44[7] = v61[7];
  v45[0] = v61[8];
  *(v45 + 9) = *(&v61[8] + 9);
  v44[2] = v61[2];
  v44[3] = v61[3];
  v44[4] = v61[4];
  v44[5] = v61[5];
  v44[0] = v61[0];
  v44[1] = v61[1];
  sub_1BD0DE19C(&v35, v46, &qword_1EBD391D0, &qword_1BE0B8240);
  sub_1BD0DE53C(v44, &qword_1EBD391D0, &qword_1BE0B8240);
  *(&v31[6] + 7) = v41;
  *(&v31[7] + 7) = v42;
  *(&v31[8] + 7) = v43[0];
  v31[9] = *(v43 + 9);
  *(&v31[2] + 7) = v37;
  *(&v31[3] + 7) = v38;
  *(&v31[4] + 7) = v39;
  *(&v31[5] + 7) = v40;
  *(v31 + 7) = v35;
  *(&v31[1] + 7) = v36;
  v10 = v49[0];
  v11 = v30;
  sub_1BD0DE19C(v7, v30, &qword_1EBD390F8, &qword_1BE0BA700);
  v12 = v28;
  v46[0] = v28;
  v46[1] = 0;
  v13 = v26;
  LOBYTE(v46[2]) = v26;
  memcpy(&v46[2] + 1, v32, 0x177uLL);
  v14 = v29;
  memcpy(v29, v46, 0x188uLL);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD391D8, &qword_1BE0B8248);
  sub_1BD0DE19C(v11, &v14[*(v15 + 48)], &qword_1EBD390F8, &qword_1BE0BA700);
  v16 = &v14[*(v15 + 64)];
  v17 = v27;
  v47 = v27;
  v48[0] = v10;
  *&v48[97] = v31[6];
  *&v48[113] = v31[7];
  *&v48[129] = v31[8];
  *&v48[145] = v31[9];
  *&v48[33] = v31[2];
  *&v48[49] = v31[3];
  *&v48[65] = v31[4];
  *&v48[81] = v31[5];
  *&v48[1] = v31[0];
  *&v48[17] = v31[1];
  v18 = *&v48[128];
  *(v16 + 8) = *&v48[112];
  *(v16 + 9) = v18;
  *(v16 + 10) = *&v48[144];
  v16[176] = v48[160];
  v19 = *&v48[64];
  *(v16 + 4) = *&v48[48];
  *(v16 + 5) = v19;
  v20 = *&v48[96];
  *(v16 + 6) = *&v48[80];
  *(v16 + 7) = v20;
  v21 = *v48;
  *v16 = v47;
  *(v16 + 1) = v21;
  v22 = *&v48[32];
  *(v16 + 2) = *&v48[16];
  *(v16 + 3) = v22;
  sub_1BD0DE19C(v46, v61, &qword_1EBD391E0, &qword_1BE0B8250);
  sub_1BD0DE19C(&v47, v61, &qword_1EBD391E8, &qword_1BE0B8258);
  sub_1BD0DE53C(v25, &qword_1EBD390F8, &qword_1BE0BA700);
  v57 = v31[6];
  v58 = v31[7];
  v59 = v31[8];
  v60 = v31[9];
  v53 = v31[2];
  v54 = v31[3];
  v55 = v31[4];
  v56 = v31[5];
  v51 = v31[0];
  v49[0] = v17;
  v49[1] = 0;
  v50 = v10;
  v52 = v31[1];
  sub_1BD0DE53C(v49, &qword_1EBD391E8, &qword_1BE0B8258);
  sub_1BD0DE53C(v30, &qword_1EBD390F8, &qword_1BE0BA700);
  v61[0] = v12;
  LOBYTE(v61[1]) = v13;
  memcpy(&v61[1] + 1, v32, 0x177uLL);
  return sub_1BD0DE53C(v61, &qword_1EBD391E0, &qword_1BE0B8250);
}

unint64_t sub_1BD0FC6EC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = a1;
  v3 = sub_1BE053704();
  if (!v3)
  {
LABEL_7:
    v2, v4, v5, v6, v7, v8, v9, v10;
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v3;
  v12 = sub_1BD1DED88();
  v13 = sub_1BDA7D908(v12 + 32, v11, v2);
  v2 = v14;
  v13, v15, v14, v16, v17, v18, v19, v20;
  result = v12;
  if (v2 != v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD0FC794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39168, &qword_1BE0B8190);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - v19;
  *v20 = sub_1BE04F7C4();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39170, &qword_1BE0B8198);
  sub_1BD0FC9B8(a1, a2, a3, a4, a5, a6, a7, &v20[*(v21 + 44)]);
  v23 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a6, a7, v22);
  sub_1BD0FD254(v23, v41);
  v24 = v41[0];
  v25 = v41[1];
  v26 = v41[2];
  v27 = v41[3];
  v28 = v41[4];
  v38 = v41[5];
  v39 = v17;
  v29 = v41[6];
  sub_1BD0DE19C(v20, v17, &qword_1EBD39168, &qword_1BE0B8190);
  v30 = v17;
  v31 = v40;
  sub_1BD0DE19C(v30, v40, &qword_1EBD39168, &qword_1BE0B8190);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39178, &qword_1BE0B81A0);
  v33 = v31 + *(v32 + 48);
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = (v31 + *(v32 + 64));
  *v34 = v24;
  v34[1] = v25;
  v34[2] = v26;
  v34[3] = v27;
  v35 = v38;
  v34[4] = v28;
  v34[5] = v35;
  v34[6] = v29;
  sub_1BD0FEF38(v24, v25, v26, v27, v28, v35, v29);
  sub_1BD0DE53C(v20, &qword_1EBD39168, &qword_1BE0B8190);
  sub_1BD0FEFA8(v24, v25, v26, v27, v28, v35, v29, v36);
  return sub_1BD0DE53C(v39, &qword_1EBD39168, &qword_1BE0B8190);
}

uint64_t sub_1BD0FC9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21[1] = a1;
  v22 = a5;
  v23 = a8;
  v14 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a6, a7, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  swift_getKeyPath();
  (*(v15 + 16))(v17, v22, v14);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  (*(v15 + 32))(v19 + v18, v17, v14);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390B8, &qword_1BE0B80C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39180, &qword_1BE0B8208);
  sub_1BD0DE4F4(&qword_1EBD390C8, &qword_1EBD390B8, &qword_1BE0B80C0, MEMORY[0x1E69E6970]);
  sub_1BD0FECB8();
  sub_1BD0FF1FC(&qword_1EBD39188, &qword_1EBD39180, &qword_1BE0B8208, sub_1BD0FF280);
  return sub_1BE0519C4();
}

__n128 sub_1BD0FCBFC@<Q0>(id *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 type];
  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v67[17] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39150, &qword_1BE0B8118);
        sub_1BD0FF368(&qword_1EBD391A0, &qword_1EBD39150, &qword_1BE0B8118, sub_1BD0FF338);
        sub_1BE04F9A4();
        v62 = v52;
        *v63 = v53;
        *&v63[16] = v54;
        v60 = v50;
        v61 = v51;
        LOBYTE(v55) = 0;
        v63[18] = 0;
      }

      else
      {
        LOBYTE(v64) = 1;
        sub_1BE04F9A4();
        LOBYTE(v55) = 1;
        LOBYTE(v60) = v50;
        v63[18] = 1;
      }

      goto LABEL_12;
    }

    v9 = [v7 leadingText];
    if (!v9)
    {
      v55 = 0uLL;
      v56.n128_u64[0] = 0;
      v56.n128_u64[1] = 1;
      v57 = 0u;
      v58 = 0u;
      v59 = 0;
LABEL_18:
      v66 = v57;
      *v67 = v58;
      v67[16] = v59;
      v64 = v55;
      v65 = v56;
      v67[17] = 1;
      sub_1BD0DE19C(&v55, &v60, &qword_1EBD39150, &qword_1BE0B8118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39150, &qword_1BE0B8118);
      sub_1BD0FF368(&qword_1EBD391A0, &qword_1EBD39150, &qword_1BE0B8118, sub_1BD0FF338);
      sub_1BE04F9A4();
      v66 = v52;
      *v67 = v53;
      *&v67[16] = v54;
      v64 = v50;
      v65 = v51;
      v67[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39198, &unk_1BE0B8210);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
      sub_1BD0FF280();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v55, &qword_1EBD39150, &qword_1BE0B8118);
      v66 = v62;
      *v67 = *v63;
      *&v67[15] = *&v63[15];
      v64 = v60;
      v65 = v61;
      goto LABEL_19;
    }

    v10 = v9;
    v11 = [v9 text];
    sub_1BE052434();
    v13 = v12;

    v14 = sub_1BE051464();
    v15 = [v10 textColor];
    if (v15 == 1)
    {
      v16 = sub_1BE051464();
    }

    else if (v15 == 2)
    {
      v16 = sub_1BE051494();
    }

    else
    {
      if (v15 != 3)
      {
LABEL_17:
        v25 = sub_1BD47C8E4(v15);
        [v10 isBold];
        type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a2, a3, v26);
        sub_1BD0FD098(v13, &v64);
        v13, v27, v28, v29, v30, v31, v32, v33;
        v14, v34, v35, v36, v37, v38, v39, v40;
        v25, v41, v42, v43, v44, v45, v46, v47;

        v57 = v66;
        v58 = *v67;
        v59 = v67[16];
        v55 = v64;
        v56 = v65;
        goto LABEL_18;
      }

      v16 = sub_1BE0511D4();
    }

    v24 = v16;
    v14, v17, v18, v19, v20, v21, v22, v23;
    v14 = v24;
    goto LABEL_17;
  }

  LOBYTE(v64) = 0;
  sub_1BE04F9A4();
  LOBYTE(v55) = 1;
  LOBYTE(v60) = v50;
  v63[18] = 1;
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39198, &unk_1BE0B8210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
  sub_1BD0FF280();
  sub_1BD0FEEBC();
  sub_1BE04F9A4();
LABEL_19:
  v48 = *v67;
  *(a4 + 32) = v66;
  *(a4 + 48) = v48;
  *(a4 + 63) = *&v67[15];
  result = v65;
  *a4 = v64;
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_1BD0FD098@<X0>(uint64_t a2@<X1>, uint64_t a6@<X8>)
{
  if (a2)
  {
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v7 = sub_1BE0506C4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_1BE050564();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    sub_1BD0DDF10(v7, v9, (v11 & 1), v19, v21, v22, v23, v24);
    v13, v25, v26, v27, v28, v29, v30, v31;
    v32 = sub_1BE0505F4();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_1BD0DDF10(v14, v16, (v18 & 1), v37, v39, v40, v41, v42);
    v20, v43, v44, v45, v46, v47, v48, v49;
    v50 = sub_1BE0505E4();
    v52 = v51;
    LOBYTE(v16) = v53;
    v55 = v54;
    sub_1BD0DDF10(v32, v34, (v36 & 1), v54, v56, v57, v58, v59);
    v38, v60, v61, v62, v63, v64, v65, v66;
    KeyPath = swift_getKeyPath();
    result = swift_getKeyPath();
    v69 = 1;
    v70 = v16 & 1;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v55 = 0;
    KeyPath = 0;
    result = 0;
    v69 = 0;
    v70 = 0;
  }

  *a6 = v50;
  *(a6 + 8) = v52;
  *(a6 + 16) = v70;
  *(a6 + 24) = v55;
  *(a6 + 32) = KeyPath;
  *(a6 + 40) = 0;
  *(a6 + 48) = result;
  *(a6 + 56) = 0;
  *(a6 + 64) = v69;
  return result;
}

void sub_1BD0FD254(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(result + 40));
  if (v4)
  {
    if (*(v2 + *(result + 44)) == 1)
    {
      v5 = sub_1BE0511D4();
    }

    else
    {
      v5 = sub_1BE051244();
    }

    v11 = v5;
    v6 = sub_1BE051574();
    KeyPath = swift_getKeyPath();
    sub_1BE048964();
    v8 = sub_1BE04E5F4();
    v10 = sub_1BE0503E4();
    v9 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v12 = sub_1BE048964();
    v12, v13, v14, v15, v16, v17, v18, v19;
    v8, v20, v21, v22, v23, v24, v25, v26;
    KeyPath, v27, v28, v29, v30, v31, v32, v33;
    v6, v34, v35, v36, v37, v38, v39, v40;
    v11, v41, v42, v43, v44, v45, v46, v47;
    v4 = 1;
  }

  else
  {
    v6 = 0;
    KeyPath = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a2 = 0;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = KeyPath;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
}

void *sub_1BD0FD3B8@<X0>(void **a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39130, &qword_1BE0B80F8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39138, &unk_1BE0B8100);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390E8, &unk_1BE0B80D0);
  MEMORY[0x1EEE9AC00](v31);
  v14 = &v27 - v13;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  v15 = MEMORY[0x1EEE9AC00](v29);
  v17 = &v27 - v16;
  v18 = *a1;
  v19 = [v18 type];
  if (v19)
  {
    if (v19 == 1)
    {
      v28 = sub_1BE04F504();
      v34 = 1;
      sub_1BD0FDBC8(v18, a3, a4, &v46);
      v41 = v47[5];
      v42 = v47[6];
      v43[0] = v47[7];
      *(v43 + 9) = *(&v47[7] + 9);
      v37 = v47[1];
      v38 = v47[2];
      v39 = v47[3];
      v40 = v47[4];
      v35 = v46;
      v36 = v47[0];
      v44[6] = v47[5];
      v44[7] = v47[6];
      v45[0] = v47[7];
      *(v45 + 9) = *(&v47[7] + 9);
      v44[2] = v47[1];
      v44[3] = v47[2];
      v44[4] = v47[3];
      v44[5] = v47[4];
      v44[0] = v46;
      v44[1] = v47[0];
      sub_1BD0DE19C(&v35, v33, &qword_1EBD39140, &qword_1BE0E9640);
      sub_1BD0DE53C(v44, &qword_1EBD39140, &qword_1BE0E9640);
      *&v33[55] = v38;
      *&v33[39] = v37;
      *&v33[103] = v41;
      *&v33[119] = v42;
      *&v33[135] = v43[0];
      *&v33[144] = *(v43 + 9);
      *&v33[71] = v39;
      *&v33[87] = v40;
      *&v33[7] = v35;
      *&v33[23] = v36;
      v46 = v28;
      LOBYTE(v47[0]) = v34;
      *(&v47[7] + 1) = *&v33[112];
      *(&v47[6] + 1) = *&v33[96];
      *(&v47[8] + 1) = *&v33[128];
      *(&v47[9] + 1) = *(v43 + 9);
      *(&v47[2] + 1) = *&v33[32];
      *(&v47[3] + 1) = *&v33[48];
      *(&v47[4] + 1) = *&v33[64];
      *(&v47[5] + 1) = *&v33[80];
      *(v47 + 1) = *v33;
      *(&v47[1] + 1) = *&v33[16];
      v22 = v47[8];
      *(v12 + 8) = v47[7];
      *(v12 + 9) = v22;
      *(v12 + 10) = v47[9];
      v12[176] = v47[10];
      v23 = v47[4];
      *(v12 + 4) = v47[3];
      *(v12 + 5) = v23;
      v24 = v47[6];
      *(v12 + 6) = v47[5];
      *(v12 + 7) = v24;
      v25 = v47[0];
      *v12 = v46;
      *(v12 + 1) = v25;
      v26 = v47[2];
      *(v12 + 2) = v47[1];
      *(v12 + 3) = v26;
      swift_storeEnumTagMultiPayload();
      sub_1BD0DE19C(&v46, v33, &qword_1EBD39110, &qword_1BE0B80E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110, &qword_1BE0B80E0);
      sub_1BD0FEDD8();
      sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110, &qword_1BE0B80E0, MEMORY[0x1E69817F8]);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v14, v9, &qword_1EBD390E8, &unk_1BE0B80D0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
      sub_1BD0FED20();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v46, &qword_1EBD39110, &qword_1BE0B80E0);
      return sub_1BD0DE53C(v14, &qword_1EBD390E8, &unk_1BE0B80D0);
    }

    if (v19 == 2)
    {
      type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a3, a4, v20);
      sub_1BD0FDA14(v17);
      sub_1BD0DE19C(v17, v12, &qword_1EBD390F8, &qword_1BE0BA700);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39110, &qword_1BE0B80E0);
      sub_1BD0FEDD8();
      sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110, &qword_1BE0B80E0, MEMORY[0x1E69817F8]);
      sub_1BE04F9A4();
      sub_1BD0DE19C(v14, v9, &qword_1EBD390E8, &unk_1BE0B80D0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
      sub_1BD0FED20();
      sub_1BD0FEEBC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v14, &qword_1EBD390E8, &unk_1BE0B80D0);
      return sub_1BD0DE53C(v17, &qword_1EBD390F8, &qword_1BE0BA700);
    }

    v33[0] = 1;
  }

  else
  {
    v33[0] = 0;
  }

  sub_1BE04F9A4();
  *v9 = v46;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39120, &qword_1BE0B80E8);
  sub_1BD0FED20();
  sub_1BD0FEEBC();
  return sub_1BE04F9A4();
}

double sub_1BD0FDA14@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE051994();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE051984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148, &qword_1BE0B8110);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v7 = sub_1BE0501E4();
  *(inited + 32) = v7;
  v8 = sub_1BE0501F4();
  *(inited + 33) = v8;
  v9 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v7)
  {
    v9 = sub_1BE050214();
  }

  inited, v10, v11, v12, v13, v14, v15, v16;
  sub_1BE050214();
  if (sub_1BE050214() != v8)
  {
    v9 = sub_1BE050214();
  }

  (*(v3 + 32))(a1, v5, v2);
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
  *v17 = v9;
  result = 0.0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 1;
  return result;
}

uint64_t sub_1BD0FDBC8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v6 = [a1 leadingText];
  v7 = [a1 trailingText];
  v99 = v7;
  if (!v6)
  {
    v105 = 0;
    v106 = 0;
    v103 = 0;
    v104 = 0;
    v101 = 0;
    v102 = 0;
    v100 = 0;
    v107 = 0;
    v22 = 1;
    goto LABEL_11;
  }

  v8 = v6;
  v9 = [v8 text];
  sub_1BE052434();
  v11 = v10;

  v12 = sub_1BE051464();
  v13 = [v8 textColor];
  if (v13 == 3)
  {
    v14 = sub_1BE0511D4();
    goto LABEL_9;
  }

  if (v13 == 2)
  {
    v14 = sub_1BE051494();
    goto LABEL_9;
  }

  if (v13 == 1)
  {
    v14 = sub_1BE051464();
LABEL_9:
    v23 = v14;
    v12, v15, v16, v17, v18, v19, v20, v21;
    v12 = v23;
  }

  v24 = sub_1BD47C8E4(v13);
  [v8 isBold];
  type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a2, a3, v25);
  sub_1BD0FD098(v11, &v124);
  v11, v26, v27, v28, v29, v30, v31, v32;
  v12, v33, v34, v35, v36, v37, v38, v39;
  v24, v40, v41, v42, v43, v44, v45, v46;

  v105 = *(&v124 + 1);
  v106 = v124;
  v22 = *(&v125 + 1);
  v103 = v126;
  v104 = v125;
  v101 = v127;
  v102 = *(&v126 + 1);
  v100 = *(&v127 + 1);
  v107 = v128;
  v7 = v99;
LABEL_11:
  if (v7)
  {
    v47 = v7;
    v48 = [v47 text];
    sub_1BE052434();
    v50 = v49;

    v51 = sub_1BE051464();
    v52 = [v47 textColor];
    if (v52 == 3)
    {
      v53 = sub_1BE0511D4();
    }

    else if (v52 == 2)
    {
      v53 = sub_1BE051494();
    }

    else
    {
      if (v52 != 1)
      {
LABEL_20:
        v64 = sub_1BD47C8E4(v52);
        [v47 isBold];
        type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a2, a3, v65);
        sub_1BD0FD098(v50, &v124);
        v50, v66, v67, v68, v69, v70, v71, v72;
        v51, v73, v74, v75, v76, v77, v78, v79;
        v64, v80, v81, v82, v83, v84, v85, v86;
        v115 = v126;
        v116 = v127;
        v117 = v128;
        v113 = v124;
        v114 = v125;
        v134 = v127;
        v133 = v126;
        v132 = v125;
        v135 = v128;
        v131 = v124;
        sub_1BD0DE19C(&v131, &v118, &qword_1EBD39160, &unk_1BE0BA6E0);

        v98 = v131;
        v62 = *(&v132 + 1);
        v94 = v132;
        v95 = *(&v131 + 1);
        v92 = *(&v133 + 1);
        v93 = v133;
        v90 = *(&v134 + 1);
        v91 = v134;
        v89 = v135;
        v120 = v115;
        v121 = v116;
        LOBYTE(v122) = v117;
        v118 = v113;
        v119 = v114;
        sub_1BD0DE53C(&v118, &qword_1EBD39160, &unk_1BE0BA6E0);
        v61 = (v6 != 0) | ((v6 == 0) << 8);
        goto LABEL_21;
      }

      v53 = sub_1BE051464();
    }

    v63 = v53;
    v51, v54, v55, v56, v57, v58, v59, v60;
    v51 = v63;
    goto LABEL_20;
  }

  v98 = 0;
  v94 = 0;
  v95 = 0;
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  v89 = 0;
  v61 = 0;
  v62 = 1;
LABEL_21:
  v88 = v61;
  *&v113 = v106;
  *(&v113 + 1) = v105;
  *&v114 = v104;
  *(&v114 + 1) = v22;
  *&v115 = v103;
  *(&v115 + 1) = v102;
  *&v116 = v101;
  *(&v116 + 1) = v100;
  v117 = v107;
  v112[0] = v107;
  v110 = v115;
  v111 = v116;
  v108 = v113;
  v109 = v114;
  *&v118 = 0;
  *(&v118 + 1) = v61;
  *&v119 = v98;
  *(&v119 + 1) = v95;
  *&v120 = v94;
  *(&v120 + 1) = v62;
  *&v121 = v93;
  *(&v121 + 1) = v92;
  *&v122 = v91;
  *(&v122 + 1) = v90;
  v123 = v89;
  sub_1BD0DE19C(&v113, &v124, &qword_1EBD39150, &qword_1BE0B8118);
  sub_1BD0DE19C(&v118, &v124, &qword_1EBD39158, &unk_1BE0B8120);

  *&v112[8] = v118;
  *&v112[24] = v119;
  *&v112[40] = v120;
  *&v112[56] = v121;
  *&v112[72] = v122;
  v112[88] = v123;
  a4[2] = v110;
  a4[3] = v111;
  *a4 = v108;
  a4[1] = v109;
  a4[4] = *v112;
  a4[5] = *&v112[16];
  *(a4 + 137) = *&v112[73];
  a4[7] = *&v112[48];
  a4[8] = *&v112[64];
  a4[6] = *&v112[32];
  *&v124 = 0;
  *(&v124 + 1) = v88;
  *&v125 = v98;
  *(&v125 + 1) = v95;
  *&v126 = v94;
  *(&v126 + 1) = v62;
  *&v127 = v93;
  *(&v127 + 1) = v92;
  v128 = v91;
  v129 = v90;
  v130 = v89;
  sub_1BD0DE53C(&v124, &qword_1EBD39158, &unk_1BE0B8120);
  *&v131 = v106;
  *(&v131 + 1) = v105;
  *&v132 = v104;
  *(&v132 + 1) = v22;
  *&v133 = v103;
  *(&v133 + 1) = v102;
  *&v134 = v101;
  *(&v134 + 1) = v100;
  v135 = v107;
  return sub_1BD0DE53C(&v131, &qword_1EBD39150, &qword_1BE0B8118);
}

uint64_t sub_1BD0FE128@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19 = sub_1BE04F7C4();
  LOBYTE(v23[0]) = 0;
  sub_1BD0FE328(a2, a3, __src);
  memcpy(__dst, __src, 0x119uLL);
  memcpy(v22, __src, 0x119uLL);
  sub_1BD0DE19C(__dst, v25, &qword_1EBD391F0, &qword_1BE0B8260);
  sub_1BD0DE53C(v22, &qword_1EBD391F0, &qword_1BE0B8260);
  memcpy(&v20[7], __dst, 0x119uLL);
  v7 = v23[0];
  v9 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a2, a3, v8);
  sub_1BD0FD254(v9, __src);
  v10 = __src[0];
  v11 = __src[1];
  v12 = __src[2];
  v13 = __src[3];
  v14 = __src[4];
  v15 = __src[5];
  v16 = __src[6];
  v23[0] = v19;
  v23[1] = 0;
  LOBYTE(v23[2]) = v7;
  memcpy(&v23[2] + 1, v20, 0x120uLL);
  memcpy(__src, v23, 0x131uLL);
  memcpy(a4, __src, 0x138uLL);
  a4[39] = v10;
  a4[40] = v11;
  a4[41] = v12;
  a4[42] = v13;
  a4[43] = v14;
  a4[44] = v15;
  a4[45] = v16;
  sub_1BD0DE19C(v23, v25, &qword_1EBD391F8, &qword_1BE0B8268);
  sub_1BD0FEF38(v10, v11, v12, v13, v14, v15, v16);
  sub_1BD0FEFA8(v10, v11, v12, v13, v14, v15, v16, v17);
  v25[0] = v19;
  v25[1] = 0;
  v26 = v7;
  memcpy(v27, v20, sizeof(v27));
  return sub_1BD0DE53C(v25, &qword_1EBD391F8, &qword_1BE0B8268);
}

uint64_t sub_1BD0FE328@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  object = PKPaymentOfferInstallmentAssessmentOffer.installmentCountString(useUpdatedText:)(0)._object;
  v7 = sub_1BE051494();
  v8 = sub_1BE050414();
  type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a1, a2, v9);
  sub_1BD0FD098(object, &v142);
  object, v10, v11, v12, v13, v14, v15, v16;
  v7, v17, v18, v19, v20, v21, v22, v23;
  v8, v24, v25, v26, v27, v28, v29, v30;
  v115 = v144;
  v116 = v145;
  v117 = v146;
  v113 = v142;
  v114 = v143;
  PKPaymentOfferInstallmentAssessmentOffer.installmentAmountPeriodString.getter();
  v32 = v31;
  v33 = sub_1BE051464();
  v34 = sub_1BE050324();
  sub_1BD0FD098(v32, &v142);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v34, v42, v43, v44, v45, v46, v47, v48;
  v32, v49, v50, v51, v52, v53, v54, v55;
  v120 = v144;
  v121 = v145;
  v122 = v146;
  v118 = v142;
  v119 = v143;
  PKPaymentOfferInstallmentAssessmentOffer.downpaymentAmountString.getter();
  v57 = v56;
  v58 = sub_1BE051494();
  v59 = sub_1BE050414();
  sub_1BD0FD098(v57, &v142);
  v58, v60, v61, v62, v63, v64, v65, v66;
  v59, v67, v68, v69, v70, v71, v72, v73;
  v57, v74, v75, v76, v77, v78, v79, v80;
  v125 = v144;
  v126 = v145;
  v127 = v146;
  v123 = v142;
  v124 = v143;
  PKPaymentOfferInstallmentAssessmentOffer.feesOfferSelectionString.getter();
  v82 = v81;
  v83 = sub_1BE051494();
  v84 = sub_1BE050414();
  sub_1BD0FD098(v82, &v142);
  v82, v85, v86, v87, v88, v89, v90, v91;
  v83, v92, v93, v94, v95, v96, v97, v98;
  v84, v99, v100, v101, v102, v103, v104, v105;
  v110 = v144;
  v111 = v145;
  v108 = v142;
  v109 = v143;
  v128[2] = v115;
  v128[3] = v116;
  v128[0] = v113;
  v128[1] = v114;
  v107[2] = v115;
  v107[3] = v116;
  v107[0] = v113;
  v107[1] = v114;
  v130[2] = v120;
  v130[3] = v121;
  v130[0] = v118;
  v130[1] = v119;
  *(&v107[4] + 8) = v118;
  *(&v107[7] + 8) = v121;
  *(&v107[6] + 8) = v120;
  *(&v107[5] + 8) = v119;
  v132[2] = v125;
  v132[3] = v126;
  v132[0] = v123;
  v132[1] = v124;
  v107[11] = v125;
  v107[12] = v126;
  v107[9] = v123;
  v107[10] = v124;
  v134[2] = v144;
  v134[3] = v145;
  v134[0] = v142;
  v134[1] = v143;
  *(&v107[16] + 8) = v145;
  v112 = v146;
  v129 = v117;
  LOBYTE(v107[4]) = v117;
  v131 = v122;
  BYTE8(v107[8]) = v122;
  v133 = v127;
  LOBYTE(v107[13]) = v127;
  v135 = v146;
  *(&v107[13] + 8) = v142;
  BYTE8(v107[17]) = v146;
  *(&v107[15] + 8) = v144;
  *(&v107[14] + 8) = v143;
  memcpy(a3, v107, 0x119uLL);
  v136[2] = v110;
  v136[3] = v111;
  v137 = v112;
  v136[0] = v108;
  v136[1] = v109;
  sub_1BD0DE19C(v128, &v142, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE19C(v130, &v142, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE19C(v132, &v142, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE19C(v134, &v142, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE53C(v136, &qword_1EBD39160, &unk_1BE0BA6E0);
  v138[2] = v125;
  v138[3] = v126;
  v139 = v127;
  v138[0] = v123;
  v138[1] = v124;
  sub_1BD0DE53C(v138, &qword_1EBD39160, &unk_1BE0BA6E0);
  v140[2] = v120;
  v140[3] = v121;
  v141 = v122;
  v140[0] = v118;
  v140[1] = v119;
  sub_1BD0DE53C(v140, &qword_1EBD39160, &unk_1BE0BA6E0);
  v144 = v115;
  v145 = v116;
  v146 = v117;
  v142 = v113;
  v143 = v114;
  return sub_1BD0DE53C(&v142, &qword_1EBD39160, &unk_1BE0BA6E0);
}

uint64_t sub_1BD0FE754@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  PKPaymentOfferInstallmentAssessmentOffer.interestString.getter();
  v7 = v6;
  v8 = sub_1BE051494();
  v9 = sub_1BE050414();
  type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, a1, a2, v10);
  sub_1BD0FD098(v7, &v73);
  v8, v11, v12, v13, v14, v15, v16, v17;
  v9, v18, v19, v20, v21, v22, v23, v24;
  v7, v25, v26, v27, v28, v29, v30, v31;
  v66 = v75;
  v67 = v76;
  v68 = v77;
  v64 = v73;
  v65 = v74;
  PKPaymentOfferInstallmentAssessmentOffer.totalCostString.getter();
  v33 = v32;
  v34 = sub_1BE051494();
  v35 = sub_1BE050414();
  sub_1BD0FD098(v33, &v73);
  v34, v36, v37, v38, v39, v40, v41, v42;
  v35, v43, v44, v45, v46, v47, v48, v49;
  v33, v50, v51, v52, v53, v54, v55, v56;
  v61 = v75;
  v62 = v76;
  v59 = v73;
  v60 = v74;
  v69[2] = v66;
  v69[3] = v67;
  v69[0] = v64;
  v69[1] = v65;
  v75 = v66;
  v76 = v67;
  v73 = v64;
  v74 = v65;
  v71[2] = v61;
  v71[3] = v62;
  v71[0] = v59;
  v71[1] = v60;
  *&v58[7] = v59;
  *&v58[55] = v62;
  *&v58[39] = v61;
  *&v58[23] = v60;
  *(a3 + 32) = v66;
  *(a3 + 48) = v67;
  *a3 = v64;
  *(a3 + 16) = v65;
  *(a3 + 81) = *v58;
  *(a3 + 129) = *&v58[48];
  *(a3 + 113) = *&v58[32];
  *(a3 + 97) = *&v58[16];
  v63 = v77;
  v70 = v68;
  LOBYTE(v77) = v68;
  v72 = v63;
  v58[71] = v63;
  *(a3 + 64) = v77;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  *(a3 + 145) = *&v58[64];
  v79 = v63;
  v78[2] = v61;
  v78[3] = v62;
  v78[0] = v59;
  v78[1] = v60;
  sub_1BD0DE19C(v69, v80, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE19C(v71, v80, &qword_1EBD39160, &unk_1BE0BA6E0);
  sub_1BD0DE53C(v78, &qword_1EBD39160, &unk_1BE0BA6E0);
  v80[2] = v66;
  v80[3] = v67;
  v81 = v68;
  v80[0] = v64;
  v80[1] = v65;
  return sub_1BD0DE53C(v80, &qword_1EBD39160, &unk_1BE0BA6E0);
}

unint64_t sub_1BD0FE9EC()
{
  result = qword_1EBD39030;
  if (!qword_1EBD39030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39028, &qword_1BE0B8048);
    sub_1BD0FEA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39030);
  }

  return result;
}

unint64_t sub_1BD0FEA78()
{
  result = qword_1EBD39038;
  if (!qword_1EBD39038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39040, &qword_1BE0B8050);
    sub_1BD0FEB04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39038);
  }

  return result;
}

unint64_t sub_1BD0FEB04()
{
  result = qword_1EBD39048;
  if (!qword_1EBD39048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39050, &qword_1BE0B8058);
    sub_1BD0DE4F4(&qword_1EBD39058, &qword_1EBD39060, &qword_1BE0B8060, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39048);
  }

  return result;
}

unint64_t sub_1BD0FEBBC()
{
  result = qword_1EBD3E020;
  if (!qword_1EBD3E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3E020);
  }

  return result;
}

void *sub_1BD0FEC1C@<X0>(void **a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, v6, v7, a2);

  return sub_1BD0FD3B8(a1, v6, v7, a3);
}

unint64_t sub_1BD0FECB8()
{
  result = qword_1EBD390D0;
  if (!qword_1EBD390D0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD390A8, 0x1E69B8C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD390D0);
  }

  return result;
}

unint64_t sub_1BD0FED20()
{
  result = qword_1EBD390E0;
  if (!qword_1EBD390E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD390E8, &unk_1BE0B80D0);
    sub_1BD0FEDD8();
    sub_1BD0DE4F4(&qword_1EBD39108, &qword_1EBD39110, &qword_1BE0B80E0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD390E0);
  }

  return result;
}

unint64_t sub_1BD0FEDD8()
{
  result = qword_1EBD390F0;
  if (!qword_1EBD390F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD390F8, &qword_1BE0BA700);
    sub_1BD0FEE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD390F0);
  }

  return result;
}

unint64_t sub_1BD0FEE64()
{
  result = qword_1EBD39100;
  if (!qword_1EBD39100)
  {
    sub_1BE051994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39100);
  }

  return result;
}

unint64_t sub_1BD0FEEBC()
{
  result = qword_1EBD39118;
  if (!qword_1EBD39118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39120, &qword_1BE0B80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39118);
  }

  return result;
}

void sub_1BD0FEF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();

    sub_1BE048964();
  }
}

void sub_1BD0FEFA8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
    a3, a2, a3, a4, a5, a6, a7, a8;
    a4, v12, v13, v14, v15, v16, v17, v18;
    a6, v19, v20, v21, v22, v23, v24, v25;
    a5, v26, v27, v28, v29, v30, v31, v32;

    a7, v33, v34, v35, v36, v37, v38, v39;
  }
}

uint64_t objectdestroyTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, v5, *(v4 + 24), a4);
  v7 = (v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)));

  v8 = *(v6 + 36);
  v9 = *(v5 - 8);
  if (!(*(v9 + 48))(v7 + v8, 1, v5))
  {
    (*(v9 + 8))(v7 + v8, v5);
  }

  v17 = (v7 + *(v6 + 40));
  if (*v17)
  {
    v17[1], v10, v11, v12, v13, v14, v15, v16;
  }

  return swift_deallocObject();
}

double sub_1BD0FF160@<D0>(id *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for PaymentOfferInstallmentSelectionItemView(0, v6, v7, a2);

  *&result = sub_1BD0FCBFC(a1, v6, v7, a3).n128_u64[0];
  return result;
}

uint64_t sub_1BD0FF1FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0FEEBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD0FF280()
{
  result = qword_1EBD39190;
  if (!qword_1EBD39190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39198, &unk_1BE0B8210);
    sub_1BD0FF368(&qword_1EBD391A0, &qword_1EBD39150, &qword_1BE0B8118, sub_1BD0FF338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39190);
  }

  return result;
}

uint64_t sub_1BD0FF368(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD0FF3E4()
{
  result = qword_1EBD391B0;
  if (!qword_1EBD391B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD391B8, &unk_1BE0CFC50);
    sub_1BD0FF49C();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD391B0);
  }

  return result;
}

unint64_t sub_1BD0FF49C()
{
  result = qword_1EBD51270;
  if (!qword_1EBD51270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD391C0, &unk_1BE0B8220);
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51270);
  }

  return result;
}

uint64_t sub_1BD0FF6B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_serviceDelegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1BD0FF718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39238, &qword_1BE0B82B0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39240, &qword_1BE0B82B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39248, &unk_1BE0B82C0);
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v11 = &v22 - v10;
  sub_1BE04CD84();
  sub_1BD0FFF8C();
  sub_1BD0DE4F4(&unk_1EBD36938, &qword_1EBD39238, &qword_1BE0B82B0, MEMORY[0x1E695C068]);
  sub_1BE04D8F4();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250, &qword_1BE0DADA0);
  sub_1BE04D7C4();
  (*(v6 + 8))(v8, v5);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine), *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 24));
  v12 = sub_1BE04CC54();
  v13 = sub_1BE04CB94();
  sub_1BD0DE4F4(&qword_1EBD369A8, &qword_1EBD39248, &unk_1BE0B82C0, MEMORY[0x1E695BC80]);
  v14 = v23;
  sub_1BE04D964();
  (*(v9 + 8))(v11, v14);
  v13(v24, 0);
  v12, v15, v16, v17, v18, v19, v20, v21;
}

id sub_1BD0FFA90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_1BD0FFA9C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 displayIdentity];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isMainDisplay];

    *a2 = v5 ^ 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD0FFB4C(uint64_t (*a1)(uint64_t, void))
{
  v3 = (v1 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine);
  v5 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 24);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 32);
  __swift_project_boxed_opaque_existential_1(v3, v5);
  return a1(v5, *(v4 + 8));
}

void sub_1BD0FFBB8(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = &a1[OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine];
  v6 = *(v5 + 3);
  v7 = *(v5 + 4);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 8);
  v9 = a1;
  a3(v6, v8);
}

uint64_t sub_1BD0FFC44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9PassKitUI27PaymentRequestViewInterface_stateMachine), v1);
  return (*(v2 + 32))(v1, v2);
}

id PaymentRequestViewInterface.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentRequestViewInterface.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentRequestViewInterface();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD0FFF8C()
{
  result = qword_1EBD35DA0;
  if (!qword_1EBD35DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD35DA0);
  }

  return result;
}

uint64_t sub_1BD0FFFD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD041C28;

  return sub_1BD102650();
}

uint64_t sub_1BD10007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

uint64_t sub_1BD10016C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAADF8);
  __swift_project_value_buffer(v6, qword_1EBDAADF8);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

double sub_1BD100380@<D0>(_OWORD *a1@<X8>)
{
  sub_1BE048874();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1BD1003E8(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_1BE04CFC4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_1BE04CFE4();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD100510, 0, 0);
}

uint64_t sub_1BD100510()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "perform:SetDefaultCardIntent", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v12 = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v6 + 8))(v5, v7);
  sub_1BE048874();
  v13 = *(v0 + 32);
  sub_1BD030458(v0 + 16);
  v14 = [v13 secureElementPass];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  if (![v14 supportsDefaultCardSelection])
  {

LABEL_10:
    goto LABEL_11;
  }

  [v15 effectiveContactlessPaymentApplicationState];
  IsPersonalized = PKPaymentApplicationStateIsPersonalized();

  if (!IsPersonalized)
  {
LABEL_11:
    sub_1BE0484B4();
    sub_1BD1029F4();
    swift_allocError();
    sub_1BE048B34();
    swift_willThrow();
    sub_1BD100860(v12);
    v12, v30, v31, v32, v33, v34, v35, v36;

    v29 = *(v0 + 8);
    goto LABEL_12;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    sub_1BE048874();
    v20 = *(v0 + 96);
    sub_1BD030458(v0 + 80);
    v21 = [v20 uniqueID];

    [v19 setDefaultPaymentPassIdentifier_];
  }

  sub_1BE048774();

  sub_1BD100860(v12);
  v12, v22, v23, v24, v25, v26, v27, v28;

  v29 = *(v0 + 8);
LABEL_12:

  return v29();
}

uint64_t sub_1BD100860(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:SetDefaultCardIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD100B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAADF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD100C04(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392B8, &qword_1BE0B84C8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392C0, &qword_1BE0B84D0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1BE048CE4();
  sub_1BE048CD4();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392C8, &qword_1BE0B8500);
  sub_1BE048CC4();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  sub_1BE048CD4();
  sub_1BE048D04();
  return sub_1BE048CA4();
}

uint64_t sub_1BD100DA8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return sub_1BD1003E8(a1, v4);
}

uint64_t sub_1BD100E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD035F7C();
  *a1 = result;
  return result;
}

uint64_t sub_1BD100E70(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BD100EEC(v6);
  return sub_1BE0538D4();
}

void sub_1BD100EEC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v78 - v4;
  v6 = a1[1];
  v7 = sub_1BE053B14();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BD102A4C();
        v10 = sub_1BE0527B4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v69 = v10 & 0xFFFFFFFFFFFFFF8;
      v90 = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v91 = v9;
      v70 = v10;
      sub_1BD1012C8(&v90, &v88, a1, v8);
      *(v69 + 16) = 0;
      v70, v71, v72, v73, v74, v75, v76, v77;
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (v6 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v6 >= 2)
  {
    v78 = v1;
    v79 = v6;
    v11 = *a1;
    v12 = -1;
    v13 = 1;
    v84 = v5;
    v85 = v11;
    do
    {
      v81 = v13;
      v82 = v12;
      v14 = *(v85 + 8 * v13);
      v15 = v12;
      v80 = v11;
      do
      {
        v16 = *v11;
        v17 = v14;
        v18 = v16;
        v87 = v17;
        v19 = [v17 localizedName];
        v20 = sub_1BE052434();
        v22 = v21;

        v90 = v20;
        v91 = v22;
        v92 = v18;
        v23 = [v18 localizedName];
        v24 = sub_1BE052434();
        v26 = v25;

        v88 = v24;
        v89 = v26;
        v27 = sub_1BE04B0F4();
        v28 = v84;
        v86 = *(*(v27 - 8) + 56);
        v86(v84, 1, 1, v27);
        sub_1BD0DDEBC();
        v29 = sub_1BE0535E4();
        sub_1BD102A98(v28);
        v22, v30, v31, v32, v33, v34, v35, v36;
        v26, v37, v38, v39, v40, v41, v42, v43;
        if (v29)
        {

          if (v29 != -1)
          {
            break;
          }
        }

        else
        {
          v44 = [v87 serialNumber];
          v45 = sub_1BE052434();
          v47 = v46;
          v83 = v46;

          v90 = v45;
          v91 = v47;
          v48 = [v92 serialNumber];
          v49 = sub_1BE052434();
          v51 = v50;

          v88 = v49;
          v89 = v51;
          v86(v28, 1, 1, v27);
          v52 = sub_1BE0535E4();
          sub_1BD102A98(v28);

          v83, v53, v54, v55, v56, v57, v58, v59;
          v51, v60, v61, v62, v63, v64, v65, v66;
          if (v52 != -1)
          {
            break;
          }
        }

        if (!v85)
        {
          goto LABEL_23;
        }

        v67 = *v11;
        v14 = *(v11 + 8);
        *v11 = v14;
        *(v11 + 8) = v67;
        v11 -= 8;
      }

      while (!__CFADD__(v15++, 1));
      v13 = v81 + 1;
      v11 = v80 + 8;
      v12 = v82 - 1;
    }

    while (v81 + 1 != v79);
  }
}

void sub_1BD1012C8(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v251 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v17 = &v246 - v16;
  v18 = a3[1];
  if (v18 >= 1)
  {
    v248 = a4;
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v261 = v17;
    v247 = a3;
    while (1)
    {
      v21 = (v19 + 1);
      v255 = v20;
      if (v19 + 1 < v18)
      {
        v259 = v18;
        v249 = v5;
        v250 = v19;
        v22 = *(*a3 + 8 * v21);
        v258 = *a3;
        v23 = v258[v19];
        v24 = v22;
        v25 = v23;
        v264 = v24;
        v26 = [v24 localizedName];
        v27 = sub_1BE052434();
        v29 = v28;

        v267 = v27;
        v268 = v29;
        v263 = v25;
        v30 = [v25 localizedName];
        v31 = sub_1BE052434();
        v33 = v32;

        v265 = v31;
        v266 = v33;
        v34 = v261;
        v35 = sub_1BE04B0F4();
        v36 = *(v35 - 8);
        v37 = *(v36 + 56);
        v262 = (v36 + 56);
        v37(v34, 1, 1, v35);
        v38 = sub_1BD0DDEBC();
        v39 = sub_1BE0535E4();
        sub_1BD102A98(v34);
        v29, v40, v41, v42, v43, v44, v45, v46;
        v33, v47, v48, v49, v50, v51, v52, v53;
        v256 = v37;
        v257 = v35;
        v254 = v38;
        v260 = v39;
        if (v39)
        {
        }

        else
        {
          v54 = [v264 serialNumber];
          v55 = sub_1BE052434();
          v57 = v56;

          v267 = v55;
          v268 = v57;
          v58 = v263;
          v59 = [v263 serialNumber];
          v60 = sub_1BE052434();
          v62 = v61;

          v265 = v60;
          v266 = v62;
          v37(v34, 1, 1, v257);
          v260 = sub_1BE0535E4();
          sub_1BD102A98(v34);

          v57, v63, v64, v65, v66, v67, v68, v69;
          v70 = v62;
          v20 = v255;
          v70, v71, v72, v73, v74, v75, v76, v77;
        }

        v19 = v250;
        v21 = (v250 + 2);
        if (v250 + 2 < v259)
        {
          v78 = &v258[v250 + 2];
          do
          {
            v258 = v21;
            v102 = *(v78 - 1);
            v103 = *v78;
            v104 = v102;
            v263 = v103;
            v105 = [v103 localizedName];
            v106 = sub_1BE052434();
            v108 = v107;

            v267 = v106;
            v268 = v108;
            v264 = v104;
            v109 = [v104 localizedName];
            v110 = sub_1BE052434();
            v112 = v111;

            v265 = v110;
            v266 = v112;
            v113 = v261;
            v114 = v256;
            v115 = v257;
            (v256)(v261, 1, 1, v257);
            v116 = sub_1BE0535E4();
            sub_1BD102A98(v113);
            v108, v117, v118, v119, v120, v121, v122, v123;
            v112, v124, v125, v126, v127, v128, v129, v130;
            if (v116)
            {
              v131 = v260 == -1;

              v20 = v255;
              if (v131 == (v116 != -1))
              {
LABEL_14:
                a3 = v247;
                v21 = v258;
                goto LABEL_16;
              }
            }

            else
            {
              v253 = v260 == -1;
              v79 = [v263 serialNumber];
              v80 = sub_1BE052434();
              v82 = v81;
              v252 = v81;

              v267 = v80;
              v268 = v82;
              v83 = [v264 serialNumber];
              v84 = sub_1BE052434();
              v86 = v85;

              v265 = v84;
              v266 = v86;
              v114(v113, 1, 1, v115);
              v87 = sub_1BE0535E4();
              sub_1BD102A98(v113);

              v252, v88, v89, v90, v91, v92, v93, v94;
              v86, v95, v96, v97, v98, v99, v100, v101;
              v20 = v255;
              if (((v253 ^ (v87 != -1)) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v21 = (v258 + 1);
            ++v78;
          }

          while (v259 != (v258 + 1));
          v21 = v259;
          a3 = v247;
LABEL_16:
          v19 = v250;
        }

        v5 = v249;
        if (v260 == -1)
        {
          if (v21 < v19)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            return;
          }

          if (v19 < v21)
          {
            v132 = 8 * v21 - 8;
            v133 = 8 * v19;
            v134 = v21;
            v135 = v19;
            do
            {
              v134 = (v134 - 1);
              if (v135 != v134)
              {
                v137 = *a3;
                if (!*a3)
                {
                  goto LABEL_133;
                }

                v136 = *(v137 + v133);
                *(v137 + v133) = *(v137 + v132);
                *(v137 + v132) = v136;
              }

              v135 = (v135 + 1);
              v132 -= 8;
              v133 += 8;
            }

            while (v135 < v134);
          }
        }
      }

      v138 = a3[1];
      if (v21 < v138)
      {
        if (__OFSUB__(v21, v19))
        {
          goto LABEL_125;
        }

        if (v21 - v19 < v248)
        {
          v139 = v19 + v248;
          if (__OFADD__(v19, v248))
          {
            goto LABEL_126;
          }

          if (v139 >= v138)
          {
            v139 = a3[1];
          }

          if (v139 < v19)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v21 != v139)
          {
            v249 = v5;
            v250 = v19;
            v260 = *a3;
            v140 = v260 + 8 * v21 - 8;
            v141 = (v19 - v21);
            v254 = v139;
            do
            {
              v257 = v140;
              v258 = v21;
              v142 = *(v260 + 8 * v21);
              v256 = v141;
              do
              {
                v143 = *v140;
                v144 = v142;
                v145 = v143;
                v263 = v144;
                v146 = [v144 localizedName];
                v147 = sub_1BE052434();
                v149 = v148;

                v267 = v147;
                v268 = v149;
                v264 = v145;
                v150 = [v145 localizedName];
                v151 = sub_1BE052434();
                v153 = v152;

                v265 = v151;
                v266 = v153;
                v154 = sub_1BE04B0F4();
                v155 = v261;
                v262 = *(*(v154 - 8) + 56);
                v262(v261, 1, 1, v154);
                sub_1BD0DDEBC();
                v156 = sub_1BE0535E4();
                sub_1BD102A98(v155);
                v149, v157, v158, v159, v160, v161, v162, v163;
                v153, v164, v165, v166, v167, v168, v169, v170;
                if (v156)
                {

                  if (v156 != -1)
                  {
                    break;
                  }
                }

                else
                {
                  v171 = [v263 serialNumber];
                  v172 = sub_1BE052434();
                  v174 = v173;
                  v259 = v173;

                  v267 = v172;
                  v268 = v174;
                  v175 = [v264 serialNumber];
                  v176 = sub_1BE052434();
                  v178 = v177;

                  v265 = v176;
                  v266 = v178;
                  v262(v155, 1, 1, v154);
                  v179 = sub_1BE0535E4();
                  sub_1BD102A98(v155);

                  v259, v180, v181, v182, v183, v184, v185, v186;
                  v178, v187, v188, v189, v190, v191, v192, v193;
                  if (v179 != -1)
                  {
                    break;
                  }
                }

                if (!v260)
                {
                  goto LABEL_130;
                }

                v194 = *v140;
                v142 = *(v140 + 8);
                *v140 = v142;
                *(v140 + 8) = v194;
                v140 -= 8;
              }

              while (!__CFADD__(v141++, 1));
              v21 = (v258 + 1);
              v140 = v257 + 8;
              v141 = v256 - 1;
            }

            while ((v258 + 1) != v254);
            v21 = v254;
            v5 = v249;
            v19 = v250;
            a3 = v247;
            v20 = v255;
          }
        }
      }

      if (v21 < v19)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1BD1D7844(0, *(v20 + 2) + 1, 1, v20, v12, v13, v14, v15);
      }

      v197 = *(v20 + 2);
      v196 = *(v20 + 3);
      v198 = v197 + 1;
      if (v197 >= v196 >> 1)
      {
        v20 = sub_1BD1D7844((v196 > 1), v197 + 1, 1, v20, v12, v13, v14, v15);
      }

      *(v20 + 2) = v198;
      v199 = &v20[16 * v197];
      *(v199 + 4) = v19;
      *(v199 + 5) = v21;
      v200 = *v251;
      if (!*v251)
      {
        goto LABEL_134;
      }

      v19 = v21;
      if (v197)
      {
        while (1)
        {
          v201 = v198 - 1;
          if (v198 >= 4)
          {
            break;
          }

          if (v198 == 3)
          {
            v202 = *(v20 + 4);
            v203 = *(v20 + 5);
            v212 = __OFSUB__(v203, v202);
            v204 = v203 - v202;
            v205 = v212;
LABEL_66:
            if (v205)
            {
              goto LABEL_113;
            }

            v218 = &v20[16 * v198];
            v220 = *v218;
            v219 = *(v218 + 1);
            v221 = __OFSUB__(v219, v220);
            v222 = v219 - v220;
            v223 = v221;
            if (v221)
            {
              goto LABEL_116;
            }

            v224 = &v20[16 * v201 + 32];
            v226 = *v224;
            v225 = *(v224 + 1);
            v212 = __OFSUB__(v225, v226);
            v227 = v225 - v226;
            if (v212)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v222, v227))
            {
              goto LABEL_120;
            }

            if (v222 + v227 >= v204)
            {
              if (v204 < v227)
              {
                v201 = v198 - 2;
              }

              goto LABEL_87;
            }

            goto LABEL_80;
          }

          v228 = &v20[16 * v198];
          v230 = *v228;
          v229 = *(v228 + 1);
          v212 = __OFSUB__(v229, v230);
          v222 = v229 - v230;
          v223 = v212;
LABEL_80:
          if (v223)
          {
            goto LABEL_115;
          }

          v231 = &v20[16 * v201];
          v233 = *(v231 + 4);
          v232 = *(v231 + 5);
          v212 = __OFSUB__(v232, v233);
          v234 = v232 - v233;
          if (v212)
          {
            goto LABEL_118;
          }

          if (v234 < v222)
          {
            goto LABEL_3;
          }

LABEL_87:
          v239 = v201 - 1;
          if (v201 - 1 >= v198)
          {
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
LABEL_121:
            __break(1u);
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
            goto LABEL_127;
          }

          if (!*a3)
          {
            goto LABEL_131;
          }

          v240 = *&v20[16 * v239 + 32];
          v21 = *&v20[16 * v201 + 40];
          sub_1BD101F54((*a3 + 8 * v240), (*a3 + 8 * *&v20[16 * v201 + 32]), (*a3 + 8 * v21), v200);
          if (v5)
          {
            goto LABEL_107;
          }

          if (v21 < v240)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1BD5ED6C8(v20, v9, v10, v11, v12, v13, v14, v15);
          }

          if (v239 >= *(v20 + 2))
          {
            goto LABEL_110;
          }

          v241 = &v20[16 * v239];
          *(v241 + 4) = v240;
          *(v241 + 5) = v21;
          v269 = v20;
          sub_1BD5ED63C(v201);
          v20 = v269;
          v198 = *(v269 + 2);
          if (v198 <= 1)
          {
            goto LABEL_3;
          }
        }

        v206 = &v20[16 * v198 + 32];
        v207 = *(v206 - 64);
        v208 = *(v206 - 56);
        v212 = __OFSUB__(v208, v207);
        v209 = v208 - v207;
        if (v212)
        {
          goto LABEL_111;
        }

        v211 = *(v206 - 48);
        v210 = *(v206 - 40);
        v212 = __OFSUB__(v210, v211);
        v204 = v210 - v211;
        v205 = v212;
        if (v212)
        {
          goto LABEL_112;
        }

        v213 = &v20[16 * v198];
        v215 = *v213;
        v214 = *(v213 + 1);
        v212 = __OFSUB__(v214, v215);
        v216 = v214 - v215;
        if (v212)
        {
          goto LABEL_114;
        }

        v212 = __OFADD__(v204, v216);
        v217 = v204 + v216;
        if (v212)
        {
          goto LABEL_117;
        }

        if (v217 >= v209)
        {
          v235 = &v20[16 * v201 + 32];
          v237 = *v235;
          v236 = *(v235 + 1);
          v212 = __OFSUB__(v236, v237);
          v238 = v236 - v237;
          if (v212)
          {
            goto LABEL_121;
          }

          if (v204 < v238)
          {
            v201 = v198 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_66;
      }

LABEL_3:
      v18 = a3[1];
      if (v19 >= v18)
      {
        goto LABEL_97;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v21 = *v251;
  if (!*v251)
  {
    goto LABEL_135;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_128:
    v20 = sub_1BD5ED6C8(v20, v9, v10, v11, v12, v13, v14, v15);
  }

  v269 = v20;
  v242 = *(v20 + 2);
  if (v242 >= 2)
  {
    while (*a3)
    {
      v243 = *&v20[16 * v242];
      v244 = *&v20[16 * v242 + 24];
      sub_1BD101F54((*a3 + 8 * v243), (*a3 + 8 * *&v20[16 * v242 + 16]), (*a3 + 8 * v244), v21);
      if (v5)
      {
        goto LABEL_107;
      }

      if (v244 < v243)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1BD5ED6C8(v20, v9, v10, v11, v12, v13, v14, v15);
      }

      if (v242 - 2 >= *(v20 + 2))
      {
        goto LABEL_123;
      }

      v245 = &v20[16 * v242];
      *v245 = v243;
      *(v245 + 1) = v244;
      v269 = v20;
      sub_1BD5ED63C(v242 - 1);
      v20 = v269;
      v242 = *(v269 + 2);
      if (v242 <= 1)
      {
        goto LABEL_107;
      }
    }

    goto LABEL_132;
  }

LABEL_107:
  v20, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_1BD101F54(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v135 = &v129 - v9;
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
    }

    v144 = &a4[v13];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v139 = a4;
      v133 = a1;
LABEL_28:
      v134 = a2;
      v70 = a2 - 1;
      v71 = (a3 - 1);
      v72 = v144;
      v131 = a2 - 1;
      do
      {
        v138 = v71;
        v73 = *(v72 - 1);
        v132 = v72 - 1;
        v74 = *v70;
        v75 = v73;
        v76 = v74;
        v136 = v75;
        v77 = [v75 localizedName];
        v78 = sub_1BE052434();
        v80 = v79;

        v142 = v78;
        v143 = v80;
        v137 = v76;
        v81 = [v76 localizedName];
        v82 = sub_1BE052434();
        v84 = v83;

        v140 = v82;
        v141 = v84;
        v85 = sub_1BE04B0F4();
        v86 = *(*(v85 - 8) + 56);
        v87 = v135;
        v86(v135, 1, 1, v85);
        sub_1BD0DDEBC();
        v88 = sub_1BE0535E4();
        sub_1BD102A98(v87);
        v80, v89, v90, v91, v92, v93, v94, v95;
        v84, v96, v97, v98, v99, v100, v101, v102;
        if (v88)
        {

          if (v88 == -1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v103 = [v136 serialNumber];
          v104 = sub_1BE052434();
          v106 = v105;
          v130 = v105;

          v142 = v104;
          v143 = v106;
          v107 = [v137 serialNumber];
          v108 = sub_1BE052434();
          v110 = v109;

          v140 = v108;
          v141 = v110;
          v86(v87, 1, 1, v85);
          v111 = sub_1BE0535E4();
          sub_1BD102A98(v87);

          v130, v112, v113, v114, v115, v116, v117, v118;
          v110, v119, v120, v121, v122, v123, v124, v125;
          if (v111 == -1)
          {
LABEL_36:
            a3 = v138;
            a4 = v139;
            v127 = v131;
            if (v138 + 8 != v134)
            {
              *v138 = *v131;
            }

            if (v144 <= a4 || (a2 = v127, v127 <= v133))
            {
              a2 = v127;
              goto LABEL_43;
            }

            goto LABEL_28;
          }
        }

        v126 = v138;
        a4 = v139;
        v72 = v132;
        if (v138 + 8 != v144)
        {
          *v138 = *v132;
        }

        v71 = v126 - 8;
        v144 = v72;
        v70 = v131;
      }

      while (v72 > a4);
      v144 = v72;
      a2 = v134;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v144 = &a4[v11];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v138 = a3;
      v14 = v135;
      do
      {
        v133 = a1;
        v134 = a2;
        v15 = *a2;
        v139 = a4;
        v16 = *a4;
        v17 = v15;
        v18 = v16;
        v136 = v17;
        v19 = [v17 localizedName];
        v20 = sub_1BE052434();
        v22 = v21;

        v142 = v20;
        v143 = v22;
        v137 = v18;
        v23 = [v18 localizedName];
        v24 = sub_1BE052434();
        v26 = v25;

        v140 = v24;
        v141 = v26;
        v27 = sub_1BE04B0F4();
        v28 = *(*(v27 - 8) + 56);
        v28(v14, 1, 1, v27);
        sub_1BD0DDEBC();
        v29 = sub_1BE0535E4();
        sub_1BD102A98(v14);
        v22, v30, v31, v32, v33, v34, v35, v36;
        v26, v37, v38, v39, v40, v41, v42, v43;
        if (v29)
        {

          if (v29 != -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v47 = [v136 serialNumber];
          v48 = sub_1BE052434();
          v50 = v49;
          v132 = v49;

          v142 = v48;
          v143 = v50;
          v51 = [v137 serialNumber];
          v52 = sub_1BE052434();
          v54 = v53;

          v140 = v52;
          v141 = v54;
          v28(v14, 1, 1, v27);
          v55 = sub_1BE0535E4();
          sub_1BD102A98(v14);

          v132, v56, v57, v58, v59, v60, v61, v62;
          v54, v63, v64, v65, v66, v67, v68, v69;
          if (v55 != -1)
          {
LABEL_14:
            v44 = v139;
            a4 = v139 + 1;
            v45 = v133;
            a2 = v134;
            v46 = v138;
            if (v133 == v139)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v45 = *v44;
            goto LABEL_16;
          }
        }

        v45 = v133;
        v44 = v134;
        a2 = v134 + 1;
        a4 = v139;
        v46 = v138;
        if (v133 != v134)
        {
          goto LABEL_15;
        }

LABEL_16:
        a1 = v45 + 1;
      }

      while (a4 < v144 && a2 < v46);
    }

    a2 = a1;
  }

LABEL_43:
  if (a2 != a4 || a2 >= (a4 + ((v144 - a4 + (v144 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v144 - a4));
  }

  return 1;
}

uint64_t sub_1BD10266C()
{
  v44 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[2] = v1;
  if (v1)
  {
    v2 = [v1 passesOfType_];
    sub_1BD102A4C();
    v3 = sub_1BE052744();

    v43 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v12 = 0;
      v13 = v3 & 0xC000000000000001;
      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      v15 = &selRef_scheduledTimerWithTimeInterval_repeats_block_;
      v16 = &selRef_startPrecursorPassFlowWithNavController_context_pass_precursorController_parentNavController_presentNavController_completion_;
      v41 = v0;
      v42 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v13)
        {
          v17 = MEMORY[0x1BFB40900](v12, v3);
        }

        else
        {
          if (v12 >= *(v14 + 16))
          {
            goto LABEL_24;
          }

          v17 = *(v3 + 8 * v12 + 32);
        }

        v18 = v17;
        v0 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v19 = [v17 v15[110]];
        if (v19)
        {
          v20 = v19;
          if ([v19 v16[239]])
          {
            v21 = i;
            v22 = v13;
            v23 = v3;
            v24 = v15;
            v25 = v16;
            [v20 effectiveContactlessPaymentApplicationState];
            IsPersonalized = PKPaymentApplicationStateIsPersonalized();

            if (IsPersonalized)
            {
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
            }

            else
            {
            }

            v16 = v25;
            v15 = v24;
            v3 = v23;
            v13 = v22;
            i = v21;
            v14 = v42;
          }

          else
          {
          }
        }

        else
        {
        }

        ++v12;
        if (v0 == i)
        {
          v27 = v43;
          v0 = v41;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v3, v4, v5, v6, v7, v8, v9, v10;
    v30 = sub_1BE048964();
    v43 = sub_1BD6D3E0C(v31, v30);
    sub_1BD100E70(&v43);
    v27, v32, v33, v34, v35, v36, v37, v38;
    v39 = v43;
    v0[3] = v43;
    v40 = swift_task_alloc();
    v0[4] = v40;
    *v40 = v0;
    v40[1] = sub_1BD041AA0;

    return sub_1BD0391EC(v39, 1);
  }

  else
  {
    sub_1BE0484B4();
    sub_1BD1029F4();
    swift_allocError();
    sub_1BE048B24();
    swift_willThrow();
    v28 = v0[1];

    return v28();
  }
}

unint64_t sub_1BD1029F4()
{
  result = qword_1EBD392B0;
  if (!qword_1EBD392B0)
  {
    sub_1BE0484B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD392B0);
  }

  return result;
}

unint64_t sub_1BD102A4C()
{
  result = qword_1EBD40650;
  if (!qword_1EBD40650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD40650);
  }

  return result;
}

uint64_t sub_1BD102A98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD450F0, &unk_1BE0B8510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD102B48(uint64_t a1)
{
  type metadata accessor for PKPaymentAuthorizationFundingMode(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AvailablePass(319);
    if (v2 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD392F0, &qword_1EBD43BA0, 0x1E69B8B40);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Passes(319);
        if (v4 <= 0x3F)
        {
          sub_1BD103248(319, &qword_1EBD392F8, &_s18BillingAddressInfoVN, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v6 <= 0x3F)
            {
              sub_1BD1030F8(319, &qword_1EBD39300, _s14PaymentSummaryVMa, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1BD103248(319, &qword_1EBD39308, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1BD103248(319, &qword_1EBD39310, &type metadata for SheetButton.LayoutStyle, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
                  {
                    sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560, 0x1E69B91F8);
                    if (v10 <= 0x3F)
                    {
                      sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0, 0x1E69B8CE8);
                      if (v11 <= 0x3F)
                      {
                        sub_1BD103298(319, &qword_1EBD39328, &qword_1EBD39330, &qword_1BE0B8568, MEMORY[0x1E69E6720]);
                        if (v12 <= 0x3F)
                        {
                          sub_1BD1031B4(319);
                          if (v13 <= 0x3F)
                          {
                            sub_1BD1030F8(319, &qword_1EBD39340, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel, MEMORY[0x1E6981790]);
                            if (v14 <= 0x3F)
                            {
                              sub_1BD103298(319, &qword_1EBD39348, &qword_1EBD39350, &unk_1BE0B8570, MEMORY[0x1E6981790]);
                              if (v15 <= 0x3F)
                              {
                                sub_1BD103298(319, &qword_1EBD39358, &unk_1EBD45160, &qword_1BE0C25A0, MEMORY[0x1E6981790]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1BD103298(319, &qword_1EBD39360, &qword_1EBD49710, &qword_1BE0B8580, MEMORY[0x1E6981790]);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1BD103298(319, &qword_1EBD39368, &qword_1EBD39370, &qword_1BE0B8588, MEMORY[0x1E6981790]);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1BD103248(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1BD103298(319, &qword_1EBD39378, &qword_1EBD39380, &qword_1BE0B8590, MEMORY[0x1E6981790]);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1BD103298(319, &qword_1EBD39388, &qword_1EBD39390, &qword_1BE0B8598, MEMORY[0x1E6981790]);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1BD103298(319, &qword_1EBD39398, &qword_1EBD393A0, &qword_1BE0B85A0, MEMORY[0x1E6981790]);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_1BD1030F8(319, &qword_1EBD393A8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
                                              if (v23 <= 0x3F)
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
        }
      }
    }
  }
}

unint64_t sub_1BD1030A8()
{
  result = qword_1EBD496D0;
  if (!qword_1EBD496D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EBD496D0);
  }

  return result;
}

void sub_1BD1030F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD10315C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1BD0E5E8C(255, a3, a4);
    v5 = sub_1BE0534B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BD1031B4(uint64_t a1)
{
  if (!qword_1EBD39338)
  {
    type metadata accessor for PresentationContext(255);
    sub_1BD10CAFC(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    v1 = sub_1BE04EED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD39338);
    }
  }
}

void sub_1BD103248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BD103298(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1BD10336C(uint64_t a1)
{
  sub_1BD1033E0(319);
  if (v1 <= 0x3F)
  {
    sub_1BD103470(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BD1033E0(uint64_t a1)
{
  if (!qword_1EBD393C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD520A0, &qword_1BE0B9840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393C8, "\b6\r");
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD393C0);
    }
  }
}

void sub_1BD103470(uint64_t a1)
{
  if (!qword_1EBD393D0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD496B0, 0x1E69B8CE8);
    sub_1BD0E5E8C(255, &qword_1EBD393D8, 0x1E69B8CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393E0, qword_1BE0B85C8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD393D0);
    }
  }
}

uint64_t sub_1BD103524@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  v422 = a6;
  v423 = a8;
  v431 = a7;
  v428 = a3;
  v429 = a5;
  v420 = a2;
  v421 = a4;
  v426 = a9;
  v432 = a14;
  v433 = a12;
  v430 = a10;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v419);
  v418 = &v405 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v417 = &v405 - v17;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  MEMORY[0x1EEE9AC00](v416);
  v415 = &v405 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v414 = &v405 - v20;
  v434 = type metadata accessor for PaymentPassHubView(0);
  v425 = *(v434 - 8);
  MEMORY[0x1EEE9AC00](v434);
  v438 = (&v405 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for PeerPaymentModel(0);
  v412 = *(v22 - 8);
  v413 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v410 = &v405 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v411 = (&v405 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v436 = (&v405 - v27);
  v28 = type metadata accessor for AvailablePass(0);
  v427 = v28;
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v437 = &v405 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v424 = &v405 - v32;
  v33 = type metadata accessor for Passes(0);
  v34 = v33 - 8;
  MEMORY[0x1EEE9AC00](v33);
  v435 = (&v405 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v405 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v405 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v405 - v44;
  (*(v29 + 56))(&v405 - v44, 1, 1, v28, v43);
  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  sub_1BE04D8B4(&v447);
  KeyPath, v48, v49, v50, v51, v52, v53, v54;
  v47, v55, v56, v57, v58, v59, v60, v61;
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  sub_1BE04D8B4(v38);
  v62, v64, v65, v66, v67, v68, v69, v70;
  v63, v71, v72, v73, v74, v75, v76, v77;
  sub_1BD0DE53C(v45, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD0DE19C(v38, v45, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD10E3D0(v38, type metadata accessor for Passes);
  v78 = swift_getKeyPath();
  v79 = swift_getKeyPath();
  sub_1BE04D8B4(v38);
  v78, v80, v81, v82, v83, v84, v85, v86;
  v79, v87, v88, v89, v90, v91, v92, v93;
  v94 = *(v38 + *(v34 + 28));
  v95 = v94;
  sub_1BD10E3D0(v38, type metadata accessor for Passes);
  sub_1BD0DE19C(v45, v41, &qword_1EBD520A0, &qword_1BE0B9840);
  if ((*(v29 + 48))(v41, 1, v427) == 1)
  {
    sub_1BD0DE53C(v45, &qword_1EBD520A0, &qword_1BE0B9840);
    a1, v96, v97, v98, v99, v100, v101, v102;
    v428, v103, v104, v105, v106, v107, v108, v109;
    v429, v110, v111, v112, v113, v114, v115, v116;
    v431, v117, v118, v119, v120, v121, v122, v123;
    v430, v124, v125, v126, v127, v128, v129, v130;
    v433, v131, v132, v133, v134, v135, v136, v137;
    v432, v138, v139, v140, v141, v142, v143, v144;

    sub_1BD0DE53C(v41, &qword_1EBD520A0, &qword_1BE0B9840);
    return (*(v425 + 56))(v426, 1, 1, v434);
  }

  v409 = v94;
  v146 = v424;
  sub_1BD10D4F0(v41, v424, type metadata accessor for AvailablePass);
  v147 = swift_getKeyPath();
  v148 = swift_getKeyPath();
  sub_1BE04D8B4(&v447);
  v147, v149, v150, v151, v152, v153, v154, v155;
  v148, v156, v157, v158, v159, v160, v161, v162;
  v408 = v447;
  sub_1BD10CD64(v146, v437, type metadata accessor for AvailablePass);
  v163 = swift_getKeyPath();
  v164 = swift_getKeyPath();
  sub_1BE04D8B4(v435);
  v163, v165, v166, v167, v168, v169, v170, v171;
  v164, v172, v173, v174, v175, v176, v177, v178;
  v179 = swift_getKeyPath();
  v180 = swift_getKeyPath();
  sub_1BE04D8B4(&v442);
  v179, v181, v182, v183, v184, v185, v186, v187;
  v180, v188, v189, v190, v191, v192, v193, v194;
  v449 = v444;
  v450 = v445;
  v451 = v446;
  v447 = v442;
  v448 = v443;
  v195 = swift_getKeyPath();
  v196 = swift_getKeyPath();
  v197 = v436;
  sub_1BE04D8B4(v436);
  v195, v198, v199, v200, v201, v202, v203, v204;
  v196, v205, v206, v207, v208, v209, v210, v211;
  v212 = _s14PaymentSummaryVMa(0);
  (*(*(v212 - 8) + 56))(v197, 0, 1, v212);
  v213 = swift_getKeyPath();
  v214 = swift_getKeyPath();
  v215 = v411;
  sub_1BE04D8B4(v411);
  v213, v216, v217, v218, v219, v220, v221, v222;
  v214, v223, v224, v225, v226, v227, v228, v229;
  v230 = v413;
  v231 = (*(v412 + 48))(v215, 1, v413);
  v232 = a1;
  v406 = v45;
  if (v231)
  {
    sub_1BD0DE53C(v215, &qword_1EBD45480, &unk_1BE0B8C30);
    LODWORD(v413) = 2;
  }

  else
  {
    v233 = v410;
    sub_1BD10CD64(v215, v410, type metadata accessor for PeerPaymentModel);
    sub_1BD0DE53C(v215, &qword_1EBD45480, &unk_1BE0B8C30);
    LODWORD(v413) = *(v233 + *(v230 + 40));
    sub_1BD10E3D0(v233, type metadata accessor for PeerPaymentModel);
  }

  v234 = v434;
  v411 = a13;
  v412 = a11;
  v235 = swift_getKeyPath();
  v236 = swift_getKeyPath();
  sub_1BE04D8B4(&v442);
  v235, v237, v238, v239, v240, v241, v242, v243;
  v236, v244, v245, v246, v247, v248, v249, v250;
  v427 = v442;
  v251 = swift_getKeyPath();
  v252 = swift_getKeyPath();
  sub_1BE04D8B4(&v442);
  v251, v253, v254, v255, v256, v257, v258, v259;
  v252, v260, v261, v262, v263, v264, v265, v266;
  v267 = v442;
  v407 = v232;
  LODWORD(v410) = sub_1BD1C2074(v232);
  v268 = v438;
  v269 = (v438 + v234[22]);
  type metadata accessor for PresentationContext(0);
  sub_1BD10CAFC(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  *v269 = sub_1BE04EEC4();
  v269[1] = v270;
  v271 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v272 = v414;
  (*(*(v271 - 8) + 56))(v414, 1, 1, v271);
  sub_1BD0DE19C(v272, v415, &qword_1EBD39350, &unk_1BE0B8570);
  sub_1BE051694();
  sub_1BD0DE53C(v272, &qword_1EBD39350, &unk_1BE0B8570);
  v273 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  v274 = v417;
  (*(*(v273 - 8) + 56))(v417, 1, 1, v273);
  sub_1BD0DE19C(v274, v418, &unk_1EBD45160, &qword_1BE0C25A0);
  sub_1BE051694();
  v275 = v274;
  v276 = v267;
  sub_1BD0DE53C(v275, &unk_1EBD45160, &qword_1BE0C25A0);
  v277 = v234[26];
  *v440 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
  sub_1BE051694();
  *(v268 + v277) = v442;
  v278 = (v268 + v234[27]);
  *v440 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39370, &qword_1BE0B8588);
  sub_1BE051694();
  v279 = *(&v442 + 1);
  *v278 = v442;
  v278[1] = v279;
  v440[0] = 0;
  sub_1BE051694();
  v280 = *(&v442 + 1);
  v281 = v268 + v234[29];
  v440[0] = 0;
  sub_1BE051694();
  v282 = *(&v442 + 1);
  *v281 = v442;
  *(v281 + 1) = v282;
  v283 = v234[30];
  *v440 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39380, &qword_1BE0B8590);
  sub_1BE051694();
  *(v268 + v283) = v442;
  v284 = v268 + v234[31];
  memset(v440, 0, 41);
  v440[41] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39390, &qword_1BE0B8598);
  sub_1BE051694();
  v285 = v443;
  *v284 = v442;
  *(v284 + 16) = v285;
  *(v284 + 32) = v444;
  v418 = v284;
  *(v284 + 48) = v445;
  v286 = v234[32];
  *&v439[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393A0, &qword_1BE0B85A0);
  sub_1BE051694();
  *(v268 + v286) = *v440;
  v287 = v234[33];
  *(v268 + v287) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  swift_storeEnumTagMultiPayload();
  v419 = v280;
  if (v267)
  {
    v288 = v267;
    sub_1BD49C81C();
    v290 = v289;
    v291 = sub_1BE052404();
    v290, v292, v293, v294, v295, v296, v297, v298;
    v299 = [v288 paymentOfferCriteriaForPassUniqueID_];

    v300 = v433;
    if (v299)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
      v301 = sub_1BE052744();
    }

    else
    {
      v301 = 0;
    }

    v304 = v413;
    sub_1BD49C81C();
    v306 = v305;
    v307 = sub_1BE052404();
    v306, v308, v309, v310, v311, v312, v313, v314;
    v315 = [v288 eligiblePaymentOfferCriteriaForPassUniqueID_];

    if (v315)
    {
      sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
      v302 = sub_1BE052744();
    }

    else
    {

      v302 = 0;
    }

    v303 = v437;
  }

  else
  {
    v302 = 0;
    v301 = 0;
    v303 = v437;
    v300 = v433;
    v304 = v413;
  }

  v316 = v438;
  *v438 = v408;
  sub_1BD10CD64(v303, v316 + v234[5], type metadata accessor for AvailablePass);
  sub_1BD10CD64(v435, v316 + v234[7], type metadata accessor for Passes);
  v317 = (v316 + v234[8]);
  v318 = v450;
  v317[2] = v449;
  v317[3] = v318;
  v317[4] = v451;
  v319 = v448;
  *v317 = v447;
  v317[1] = v319;
  v320 = (v316 + v234[9]);
  v321 = v428;
  *v320 = v420;
  v320[1] = v321;
  v322 = (v316 + v234[10]);
  v323 = v429;
  *v322 = v421;
  v322[1] = v323;
  v324 = (v316 + v234[11]);
  v325 = v431;
  *v324 = v422;
  v324[1] = v325;
  v326 = (v316 + v234[12]);
  v327 = v430;
  *v326 = v423;
  v326[1] = v327;
  v328 = (v316 + v234[13]);
  v329 = v432;
  *v328 = v411;
  v328[1] = v329;
  sub_1BD0DE19C(v436, v316 + v234[14], &unk_1EBD43B30, &qword_1BE0B8530);
  *(v316 + v234[20]) = v301;
  *(v316 + v234[21]) = v302;
  *(v316 + v234[18]) = v276;
  v330 = v427;
  *(v316 + v234[17]) = v427;
  *(v316 + v234[16]) = v410;
  v331 = (v316 + v234[19]);
  *v331 = v412;
  v331[1] = v300;
  *(v316 + v234[15]) = v304;
  *(v316 + v234[6]) = v409;
  v432 = v330;
  v433 = v276;
  v332 = v276;
  sub_1BE048C84();
  *v440 = WrappedPass.secureElementPass.getter();
  v440[8] = 0;
  if (v301)
  {
    if (v301 >> 62)
    {
LABEL_32:
      v340 = sub_1BE053704();
      if (v340)
      {
LABEL_18:
        v341 = 0;
        while (1)
        {
          if ((v301 & 0xC000000000000001) != 0)
          {
            v342 = MEMORY[0x1BFB40900](v341, v301);
          }

          else
          {
            if (v341 >= *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v342 = *(v301 + 8 * v341 + 32);
          }

          v343 = v342;
          v344 = v341 + 1;
          if (__OFADD__(v341, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          if ([v342 type] == 1)
          {
            break;
          }

          ++v341;
          if (v344 == v340)
          {
            goto LABEL_33;
          }
        }

        v301, v345, v346, v347, v348, v349, v350, v351;
        objc_opt_self();
        v352 = swift_dynamicCastObjCClass();
        v234 = v434;
        if (!v352)
        {
        }

        goto LABEL_34;
      }
    }

    else
    {
      v340 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v340)
      {
        goto LABEL_18;
      }
    }

LABEL_33:
    v301, v333, v334, v335, v336, v337, v338, v339;
    v352 = 0;
    v234 = v434;
  }

  else
  {
    v352 = 0;
  }

LABEL_34:
  v353 = v419;
  v354 = v438;
  v355 = v438 + v234[28];
  v356 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
  v357 = sub_1BD8D1EE0(v440, v433, v352);

  v358 = (v354 + v234[23]);
  *&v439[0] = v357;
  v359 = v357;
  sub_1BE051694();
  v360 = *&v440[8];
  *v358 = *v440;
  v358[1] = v360;
  LOBYTE(v357) = sub_1BD8C1A98();
  v353, v361, v362, v363, v364, v365, v366, v367;
  *v355 = v357 & 1;
  *(v355 + 1) = 0;
  if (v427)
  {
    v368 = v432;
    v369 = [v432 type];
    v370 = v425;
    if (v369 == 2)
    {
      objc_opt_self();
      v371 = swift_dynamicCastObjCClass();
      v372 = v426;
      if (v371)
      {
        v373 = [v371 rewardsRedemptionIntent];
        sub_1BD754B48(v373, v439);

        v407, v374, v375, v376, v377, v378, v379, v380;
        sub_1BD0DE53C(v436, &unk_1EBD43B30, &qword_1BE0B8530);
        sub_1BD10E3D0(v435, type metadata accessor for Passes);
        sub_1BD10E3D0(v437, type metadata accessor for AvailablePass);
        sub_1BD10E3D0(v424, type metadata accessor for AvailablePass);
        sub_1BD0DE53C(v406, &qword_1EBD520A0, &qword_1BE0B9840);
        v381 = v418;
        v382 = *(v418 + 16);
        *v440 = *v418;
        *&v440[16] = v382;
        *&v440[32] = *(v418 + 32);
        v441 = *(v418 + 48);
        sub_1BD0DE53C(v440, &qword_1EBD394D0, &unk_1BE0B8720);
        v383 = v439[1];
        *v381 = v439[0];
        *(v381 + 16) = v383;
        *(v381 + 32) = v439[2];
        *(v381 + 48) = 0;
      }

      else
      {

        v407, v398, v399, v400, v401, v402, v403, v404;
        sub_1BD0DE53C(v436, &unk_1EBD43B30, &qword_1BE0B8530);
        sub_1BD10E3D0(v435, type metadata accessor for Passes);
        sub_1BD10E3D0(v437, type metadata accessor for AvailablePass);
        sub_1BD10E3D0(v424, type metadata accessor for AvailablePass);
        sub_1BD0DE53C(v406, &qword_1EBD520A0, &qword_1BE0B9840);
      }
    }

    else
    {

      v407, v391, v392, v393, v394, v395, v396, v397;
      sub_1BD0DE53C(v436, &unk_1EBD43B30, &qword_1BE0B8530);
      sub_1BD10E3D0(v435, type metadata accessor for Passes);
      sub_1BD10E3D0(v437, type metadata accessor for AvailablePass);
      sub_1BD10E3D0(v424, type metadata accessor for AvailablePass);
      sub_1BD0DE53C(v406, &qword_1EBD520A0, &qword_1BE0B9840);
      v372 = v426;
    }
  }

  else
  {

    v407, v384, v385, v386, v387, v388, v389, v390;
    sub_1BD0DE53C(v436, &unk_1EBD43B30, &qword_1BE0B8530);
    sub_1BD10E3D0(v435, type metadata accessor for Passes);
    sub_1BD10E3D0(v437, type metadata accessor for AvailablePass);
    sub_1BD10E3D0(v424, type metadata accessor for AvailablePass);
    sub_1BD0DE53C(v406, &qword_1EBD520A0, &qword_1BE0B9840);
    v370 = v425;
    v372 = v426;
  }

  sub_1BD10D4F0(v438, v372, type metadata accessor for PaymentPassHubView);
  return (*(v370 + 56))(v372, 0, 1, v234);
}

double sub_1BD1049C8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393F0, &qword_1BE0B8688);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v66 - v6;
  v7 = type metadata accessor for PaymentPassHubView(0);
  v8 = *(v7 - 8);
  v76 = v7 - 8;
  v67 = v8;
  v75 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393F8, &qword_1BE0B8690);
  MEMORY[0x1EEE9AC00](v68);
  v12 = &v66 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39400, &qword_1BE0B8698);
  MEMORY[0x1EEE9AC00](v70);
  v77 = &v66 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39408, &qword_1BE0B86A0);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  *&v78 = &v66 - v14;
  v79 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39410, &qword_1BE0B86A8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39418, &qword_1BE0B86B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39420, &qword_1BE0B86B8);
  v17 = sub_1BD0DE4F4(&qword_1EBD39428, &qword_1EBD39418, &qword_1BE0B86B0, MEMORY[0x1E697E378]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39430, &unk_1BE0B86C0);
  v19 = sub_1BD0DE4F4(&qword_1EBD39438, &qword_1EBD39430, &unk_1BE0B86C0, MEMORY[0x1E697BEF0]);
  *v81 = v18;
  *&v81[8] = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v81 = v15;
  *&v81[8] = v16;
  *&v81[16] = v17;
  v82 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BE04EC04();
  sub_1BD10CD64(v2, v10, type metadata accessor for PaymentPassHubView);
  v21 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v22 = swift_allocObject();
  sub_1BD10D4F0(v10, v22 + v21, type metadata accessor for PaymentPassHubView);
  v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39448, &qword_1BE0B86D8) + 36)];
  *v23 = sub_1BD10AB14;
  v23[1] = v22;
  v23[2] = 0;
  v23[3] = 0;
  sub_1BD10CD64(v2, v10, type metadata accessor for PaymentPassHubView);
  v24 = swift_allocObject();
  sub_1BD10D4F0(v10, v24 + v21, type metadata accessor for PaymentPassHubView);
  v25 = &v12[*(v68 + 36)];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = sub_1BD10C8B8;
  *(v25 + 3) = v24;
  sub_1BE052434();
  v27 = v26;
  sub_1BD10C944();
  sub_1BE050DE4();
  v27, v28, v29, v30, v31, v32, v33, v34;
  sub_1BD0DE53C(v12, &qword_1EBD393F8, &qword_1BE0B8690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  v66 = v2;
  v35 = v69;
  sub_1BE0516C4();
  sub_1BD10CD64(v2, v10, type metadata accessor for PaymentPassHubView);
  v36 = swift_allocObject();
  sub_1BD10D4F0(v10, v36 + v21, type metadata accessor for PaymentPassHubView);
  v37 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39470, &qword_1BE0B86E8);
  v39 = sub_1BD10DDA4(&qword_1EBD39478, &qword_1EBD39400, &qword_1BE0B8698, sub_1BD10C944);
  v40 = sub_1BD10CAFC(&qword_1EBD39480, type metadata accessor for PaymentPassHubView.DetailSheet, &unk_1BE0B85F8);
  v41 = sub_1BD10CB44();
  v42 = v77;
  v43 = v35;
  v44 = v70;
  sub_1BE050F74();
  v36, v45, v46, v47, v48, v49, v50, v51;
  sub_1BD0DE53C(v43, &qword_1EBD393F0, &qword_1BE0B8688);
  sub_1BD0DE53C(v42, &qword_1EBD39400, &qword_1BE0B8698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v52 = v66;
  v53 = v73;
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  *v81 = v44;
  *&v81[8] = v37;
  *&v81[16] = v38;
  v82 = v39;
  v83 = v40;
  v84 = v41;
  swift_getOpaqueTypeConformance2();
  sub_1BD10CAFC(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  sub_1BD10CC54();
  v54 = v74;
  v55 = v71;
  v56 = v78;
  sub_1BE050F74();
  sub_1BD0DE53C(v53, &qword_1EBD393E8, &qword_1BE0B8680);
  (*(v72 + 8))(v56, v55);
  v57 = v76;
  v58 = (v52 + *(v76 + 100));
  v60 = *v58;
  v59 = v58[1];
  *&v80 = v60;
  *(&v80 + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0, &qword_1BE0B86F8);
  sub_1BE0516C4();
  v61 = *v81;
  v78 = *&v81[8];
  v62 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B8, &unk_1BE0B8700) + 36);
  *v62 = v61;
  *(v62 + 8) = v78;
  v80 = *(v52 + *(v57 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516C4();
  v78 = *v81;
  v63 = *&v81[16];
  v64 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394C0, &qword_1BE0B8710) + 36);
  result = *&v78;
  *v64 = v78;
  *(v64 + 24) = 0;
  *(v64 + 32) = 0;
  *(v64 + 16) = v63;
  return result;
}

void sub_1BD1052B8(uint64_t a1)
{
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BD10CD64(a1, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassHubView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1BD10D4F0(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for PaymentPassHubView);
  v20 = sub_1BD10DD14;
  v21 = v6;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39418, &qword_1BE0B86B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39420, &qword_1BE0B86B8);
  sub_1BD0DE4F4(&qword_1EBD39428, &qword_1EBD39418, &qword_1BE0B86B0, MEMORY[0x1E697E378]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39430, &unk_1BE0B86C0);
  v8 = sub_1BD0DE4F4(&qword_1EBD39438, &qword_1EBD39430, &unk_1BE0B86C0, MEMORY[0x1E697BEF0]);
  v18 = v7;
  v19 = v8;
  swift_getOpaqueTypeConformance2();
  sub_1BE051024();
  v6, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_1BD1054F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v61 = a2;
  v5 = type metadata accessor for PaymentPassHubView(0);
  v6 = v5 - 8;
  v59 = *(v5 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04F434();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BE04FFF4();
  v11 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39508, &qword_1BE0B8778);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39510, &qword_1BE0B8780);
  MEMORY[0x1EEE9AC00](v51);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39518, &qword_1BE0B8788);
  v21 = *(v20 - 8);
  v55 = v20;
  v56 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v62 = &v51 - v22;
  v63 = a2;
  v64 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39520, &qword_1BE0B8790);
  sub_1BD10DF64();
  sub_1BE04E304();
  sub_1BE04FA34();
  sub_1BD0DE4F4(&qword_1EBD39540, &qword_1EBD39508, &qword_1BE0B8778, MEMORY[0x1E697BE60]);
  sub_1BE050E04();
  (*(v11 + 8))(v13, v52);
  (*(v15 + 8))(v17, v14);
  v23 = [objc_opt_self() systemGroupedBackgroundColor];
  v24 = sub_1BE0511C4();
  v25 = sub_1BE0501D4();
  v26 = v51;
  v27 = &v19[*(v51 + 36)];
  *v27 = v24;
  v27[8] = v25;
  v29 = v53;
  v28 = v54;
  (*(v53 + 104))(v10, *MEMORY[0x1E697C438], v54);
  v30 = sub_1BD10E01C();
  sub_1BE050E84();
  (*(v29 + 8))(v10, v28);
  sub_1BD0DE53C(v19, &qword_1EBD39510, &qword_1BE0B8780);
  v31 = v61;
  v32 = (v61 + *(v6 + 120));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v65) = v33;
  v66 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v35 = v57;
  sub_1BD10CD64(v31, v57, type metadata accessor for PaymentPassHubView);
  v36 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v37 = swift_allocObject();
  sub_1BD10D4F0(v35, v37 + v36, type metadata accessor for PaymentPassHubView);
  v65 = v26;
  v66 = v30;
  swift_getOpaqueTypeConformance2();
  v38 = v60;
  v39 = v55;
  v40 = v62;
  sub_1BE051074();
  v37, v41, v42, v43, v44, v45, v46, v47;
  (*(v56 + 8))(v40, v39);
  sub_1BD10CD64(v61, v35, type metadata accessor for PaymentPassHubView);
  v48 = swift_allocObject();
  sub_1BD10D4F0(v35, v48 + v36, type metadata accessor for PaymentPassHubView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39550, &qword_1BE0B87A0);
  v50 = (v38 + *(result + 36));
  *v50 = sub_1BD10EC60;
  v50[1] = v48;
  v50[2] = 0;
  v50[3] = 0;
  return result;
}

__n128 sub_1BD105B4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[2] = a2;
  v25 = a3;
  v4 = sub_1BE04F5B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39558, &qword_1BE0B87A8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39538, &qword_1BE0B8798);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  *v13 = sub_1BE04F7B4();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v24[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39560, &qword_1BE0B87B0) + 44);
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39568, &qword_1BE0B87B8);
  sub_1BD0DE4F4(&qword_1EBD39570, &qword_1EBD39568, &qword_1BE0B87B8, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  v24[0] = v7;
  sub_1BE04F594();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39578, &qword_1BE0B87C0) + 36);
  (*(v5 + 16))(&v10[v14], v7, v4);
  v15 = *(v5 + 56);
  v15(&v10[v14], 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v17 = &v10[*(v8 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v5 + 32))(v17 + v18, v24[0], v4);
  v15(v17 + v18, 0, 1, v4);
  *v17 = KeyPath;
  sub_1BD10E1AC();
  sub_1BE050D24();
  sub_1BD0DE53C(v10, &qword_1EBD39558, &qword_1BE0B87A8);
  sub_1BE04E684();
  sub_1BE051CD4();
  sub_1BE04EE54();
  v19 = v25;
  sub_1BD0488B4(v13, v25);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39520, &qword_1BE0B8790) + 36);
  v21 = v32;
  *(v20 + 64) = v31;
  *(v20 + 80) = v21;
  *(v20 + 96) = v33;
  v22 = v28;
  *v20 = v27;
  *(v20 + 16) = v22;
  result = v30;
  *(v20 + 32) = v29;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_1BD105F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = (v3 - 8);
  v60 = *(v3 - 8);
  v59 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentPassBillingAddressSection(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395C0, &qword_1BE0B8810);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v67 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395C8, &qword_1BE0B8818);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v68 = &v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D0, &qword_1BE0B8820);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v64 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v55 - v26;
  sub_1BD1065E0(&v55 - v26);
  sub_1BD106AD8(v22);
  sub_1BD106EA8(v17);
  sub_1BD10CD64(a1 + v4[9], v12, type metadata accessor for Passes);
  v27 = (a1 + v4[10]);
  v28 = v27[3];
  v72 = v27[2];
  v73 = v28;
  v74 = v27[4];
  v29 = v27[1];
  v70 = *v27;
  v71 = v29;
  v30 = v4[12];
  v31 = (a1 + v4[11]);
  v33 = *v31;
  v56 = v31[1];
  v32 = v56;
  v34 = *(a1 + v30 + 8);
  v55 = *(a1 + v30);
  v58 = v34;
  v35 = (a1 + v4[13]);
  v37 = *v35;
  v57 = v35[1];
  v36 = v57;
  sub_1BD10CD64(a1, v6, type metadata accessor for PaymentPassHubView);
  v38 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v39 = swift_allocObject();
  sub_1BD10D4F0(v6, v39 + v38, type metadata accessor for PaymentPassHubView);
  v40 = &v12[v8[7]];
  v41 = v73;
  *(v40 + 2) = v72;
  *(v40 + 3) = v41;
  *(v40 + 4) = v74;
  v42 = v71;
  *v40 = v70;
  *(v40 + 1) = v42;
  v43 = &v12[v8[8]];
  *v43 = v33;
  *(v43 + 1) = v32;
  v44 = &v12[v8[9]];
  *v44 = v55;
  *(v44 + 1) = v34;
  v45 = &v12[v8[10]];
  *v45 = v37;
  *(v45 + 1) = v36;
  v46 = &v12[v8[11]];
  *v46 = sub_1BD10E348;
  v46[1] = v39;
  v47 = v64;
  sub_1BD0DE19C(v65, v64, &qword_1EBD395D0, &qword_1BE0B8820);
  v48 = v66;
  sub_1BD0DE19C(v68, v66, &qword_1EBD395C8, &qword_1BE0B8818);
  v49 = v61;
  sub_1BD0DE19C(v67, v61, &qword_1EBD395C0, &qword_1BE0B8810);
  v50 = v62;
  sub_1BD10CD64(v12, v62, type metadata accessor for PaymentPassBillingAddressSection);
  v51 = v47;
  v52 = v63;
  sub_1BD0DE19C(v51, v63, &qword_1EBD395D0, &qword_1BE0B8820);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395D8, &qword_1BE0B8828);
  sub_1BD0DE19C(v48, v52 + v53[12], &qword_1EBD395C8, &qword_1BE0B8818);
  sub_1BD0DE19C(v49, v52 + v53[16], &qword_1EBD395C0, &qword_1BE0B8810);
  sub_1BD10CD64(v50, v52 + v53[20], type metadata accessor for PaymentPassBillingAddressSection);
  sub_1BD0DE19C(&v70, v69, &qword_1EBD395E0, &qword_1BE0B8830);
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD10E3D0(v12, type metadata accessor for PaymentPassBillingAddressSection);
  sub_1BD0DE53C(v67, &qword_1EBD395C0, &qword_1BE0B8810);
  sub_1BD0DE53C(v68, &qword_1EBD395C8, &qword_1BE0B8818);
  sub_1BD0DE53C(v65, &qword_1EBD395D0, &qword_1BE0B8820);
  sub_1BD10E3D0(v50, type metadata accessor for PaymentPassBillingAddressSection);
  sub_1BD0DE53C(v49, &qword_1EBD395C0, &qword_1BE0B8810);
  sub_1BD0DE53C(v66, &qword_1EBD395C8, &qword_1BE0B8818);
  return sub_1BD0DE53C(v64, &qword_1EBD395D0, &qword_1BE0B8820);
}

uint64_t sub_1BD1065E0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for PassHeaderView(0);
  v56 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v52 - v6;
  v7 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WrappedPass(0);
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for PaymentPassHubView(0);
  sub_1BD10CD64(v1 + *(v16 + 20), v15, type metadata accessor for WrappedPass);
  sub_1BD10CD64(v15, v12, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD10E3D0(v12, type metadata accessor for WrappedPass);
LABEL_10:
      sub_1BD10E3D0(v15, type metadata accessor for WrappedPass);
      v25 = 1;
      v26 = v57;
      return (*(v56 + 56))(v26, v25, 1, v2);
    }

    sub_1BD10D4F0(v12, v9, type metadata accessor for PlaceholderPass);
    v19 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v19 setCardType_];
    sub_1BD10E3D0(v9, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v18 = *v12;
    v19 = [*v12 secureElementPass];

    if (!v19)
    {
      goto LABEL_10;
    }
  }

  v20 = [v19 paymentPass];

  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = PKSanitizedPrimaryAccountRepresentationForPass();
  if (v21)
  {
    v22 = v21;
    v23 = sub_1BE052434();
    v52 = v24;
    v53 = v23;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v27 = *(v1 + *(v16 + 72));
  if (v27 && (sub_1BD49C81C(), v29 = v28, v30 = sub_1BE052404(), v29, v31, v32, v33, v34, v35, v36, v37, v38 = [v27 merchandisingOfferForPassUniqueID_], v30, v38) && (v39 = objc_msgSend(v38, sel_primaryTitle), v38, v39))
  {
    v40 = sub_1BE052434();
    v42 = v41;

    v44 = v52;
    v43 = v53;
    v45 = v40;
  }

  else
  {

    v43 = 0;
    v44 = 0;
    v42 = v52;
    v45 = v53;
  }

  v46 = v55;
  sub_1BD10D4F0(v15, v55, type metadata accessor for WrappedPass);
  (*(v54 + 56))(v46, 0, 1, v10);
  sub_1BD0DE204(v46, v4, &unk_1EBD43B90, &unk_1BE0B89D0);
  v47 = &v4[v2[5]];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &v4[v2[6]];
  *v48 = v45;
  *(v48 + 1) = v42;
  v49 = &v4[v2[7]];
  *v49 = v43;
  *(v49 + 1) = v44;
  *&v4[v2[8]] = 0x4059000000000000;
  v50 = v57;
  sub_1BD10D4F0(v4, v57, type metadata accessor for PassHeaderView);
  v26 = v50;
  v25 = 0;
  return (*(v56 + 56))(v26, v25, 1, v2);
}

char *sub_1BD106AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39680, &qword_1BE0B88A8);
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = v1 + *(type metadata accessor for PaymentPassHubView(0) + 20);
  v11 = type metadata accessor for AvailablePass(0);
  v12 = *(v10 + *(v11 + 56));
  if (v12 >> 62)
  {
    v25 = v11;
    v13 = sub_1BE053704();
    v11 = v25;
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(v10 + *(v11 + 60));
  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = &result[v13];
    if (!__OFADD__(v13, result))
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_1BE053704();
  v16 = &result[v13];
  if (__OFADD__(v13, result))
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v16 >= 2)
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();
      v20 = v19;

      (*(v4 + 8))(v6, v3);
      v28 = v18;
      v29 = v20;
      sub_1BD0DDEBC();
      v28 = sub_1BE0506C4();
      v29 = v21;
      v30 = v22 & 1;
      v31 = v23;
      MEMORY[0x1EEE9AC00](v28);
      *(&v26 - 2) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39688, &qword_1BE0B88B0);
      sub_1BD0DE4F4(&qword_1EBD39690, &qword_1EBD39688, &qword_1BE0B88B0, MEMORY[0x1E6981F48]);
      sub_1BE051A24();
      (*(v27 + 32))(a1, v9, v7);
      return (*(v27 + 56))(a1, 0, 1, v7);
    }

    goto LABEL_15;
  }

  v24 = *(v27 + 56);

  return v24(a1, 1, 1, v7);
}

id sub_1BD106EA8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395E8, &qword_1BE0B8838);
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395F0, &qword_1BE0B8840);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD395F8, &qword_1BE0B8848);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v58 - v12;
  v13 = type metadata accessor for PaymentPassHubView(0);
  v14 = v13 - 8;
  v66 = *(v13 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BD74();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39600, &qword_1BE0B8850);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v21 = &v58 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39608, &qword_1BE0B8858);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v31 = &v58 - v27;
  v32 = *(v1 + *(v14 + 88));
  if (v32)
  {
    if (v32 >> 62)
    {
      v63 = v28;
      v55 = &v58 - v27;
      v62 = v29;
      v56 = sub_1BE053704();
      v29 = v62;
      v31 = v55;
      v28 = v63;
      if (v56 >= 1)
      {
LABEL_4:
        v62 = v29;
        v59 = v31;
        v63 = v28;
        v60 = v3;
        v61 = a1;
        (*(v17 + 104))(v19, *MEMORY[0x1E69B8068], v16, v30);
        result = PKPassKitBundle();
        if (result)
        {
          v34 = result;
          v35 = sub_1BE04B6F4();
          v37 = v36;

          (*(v17 + 8))(v19, v16);
          *&v78[0] = v35;
          *(&v78[0] + 1) = v37;
          sub_1BD0DDEBC();
          v80 = sub_1BE0506C4();
          v81 = v38;
          v82 = v39 & 1;
          v83 = v40;
          sub_1BD7554A8(v78);
          v74 = v78[0];
          v75 = v78[1];
          v76 = v78[2];
          v77 = v79;
          MEMORY[0x1EEE9AC00](v41);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39610, &unk_1BE0B8860);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618, &qword_1BE0DB120);
          sub_1BD0DE4F4(&qword_1EBD39620, &qword_1EBD39610, &unk_1BE0B8860, MEMORY[0x1E6981F48]);
          sub_1BD10E438();
          sub_1BE051A34();
          v42 = v67;
          sub_1BD10CD64(v1, v67, type metadata accessor for PaymentPassHubView);
          v43 = (*(v66 + 80) + 16) & ~*(v66 + 80);
          v44 = swift_allocObject();
          sub_1BD10D4F0(v42, v44 + v43, type metadata accessor for PaymentPassHubView);
          (*(v64 + 32))(v25, v21, v65);
          v45 = &v25[*(v62 + 36)];
          *v45 = sub_1BD10E510;
          v45[1] = v44;
          v45[2] = 0;
          v45[3] = 0;
          v46 = v59;
          sub_1BD0DE204(v25, v59, &qword_1EBD39608, &qword_1BE0B8858);
          v47 = v68;
          sub_1BD756F34(v68);
          v48 = v69;
          sub_1BD757714(v69);
          v49 = v63;
          sub_1BD0DE19C(v46, v63, &qword_1EBD39608, &qword_1BE0B8858);
          v50 = v70;
          sub_1BD0DE19C(v47, v70, &qword_1EBD395F8, &qword_1BE0B8848);
          v51 = v71;
          sub_1BD0DE19C(v48, v71, &qword_1EBD395F0, &qword_1BE0B8840);
          v52 = v72;
          sub_1BD0DE19C(v49, v72, &qword_1EBD39608, &qword_1BE0B8858);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39638, &qword_1BE0B8870);
          sub_1BD0DE19C(v50, v52 + *(v53 + 48), &qword_1EBD395F8, &qword_1BE0B8848);
          sub_1BD0DE19C(v51, v52 + *(v53 + 64), &qword_1EBD395F0, &qword_1BE0B8840);
          sub_1BD0DE53C(v48, &qword_1EBD395F0, &qword_1BE0B8840);
          sub_1BD0DE53C(v47, &qword_1EBD395F8, &qword_1BE0B8848);
          sub_1BD0DE53C(v46, &qword_1EBD39608, &qword_1BE0B8858);
          sub_1BD0DE53C(v51, &qword_1EBD395F0, &qword_1BE0B8840);
          sub_1BD0DE53C(v50, &qword_1EBD395F8, &qword_1BE0B8848);
          sub_1BD0DE53C(v49, &qword_1EBD39608, &qword_1BE0B8858);
          v54 = v61;
          sub_1BD0DE204(v52, v61, &qword_1EBD395E8, &qword_1BE0B8838);
          return (*(v73 + 56))(v54, 0, 1, v60);
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_4;
    }
  }

  v57 = *(v73 + 56);

  return v57(a1, 1, 1, v3, v30);
}

uint64_t sub_1BD1077D0(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39430, &unk_1BE0B86C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB14();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D8, &unk_1BE0D6B60);
  sub_1BD10DDA4(&qword_1EBD394E0, &qword_1EBD394D8, &unk_1BE0D6B60, sub_1BD10DE58);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD39438, &qword_1EBD39430, &unk_1BE0B86C0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD1079BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a2;
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500, &unk_1BE0C4310);
  v10 = *(v44[0] - 8);
  MEMORY[0x1EEE9AC00](v44[0]);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394F0, &unk_1BE0B8730);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v44 - v14;
  sub_1BE04E1C4();
  sub_1BD10CD64(a1, v6, type metadata accessor for PaymentPassHubView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1BD10D4F0(v6, v17 + v16, type metadata accessor for PaymentPassHubView);
  MEMORY[0x1BFB3E7A0](v9, sub_1BD10DF3C, v17);
  v18 = *(a1 + *(v3 + 72));
  if (v18)
  {
    sub_1BD49C81C();
    v20 = v19;
    v21 = sub_1BE052404();
    v20, v22, v23, v24, v25, v26, v27, v28;
    v29 = [v18 preconfiguredInstallmentOfferStateForPassUniqueID_];

    v30 = (v29 - 3) < 2;
  }

  else
  {
    v30 = 0;
  }

  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  (*(v10 + 32))(v15, v12, v44[0]);
  v33 = &v15[*(v13 + 36)];
  *v33 = KeyPath;
  v33[1] = sub_1BD10DF54;
  v33[2] = v32;
  sub_1BE052434();
  v35 = v34;
  sub_1BD10DE58();
  sub_1BE050DE4();
  v35, v36, v37, v38, v39, v40, v41, v42;
  return sub_1BD0DE53C(v15, &qword_1EBD394F0, &unk_1BE0B8730);
}

uint64_t sub_1BD107D44(uint64_t a1)
{
  sub_1BD6B2184(1, 6u, 0);
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(a1 + *(v2 + 68));
  if (v3 && [v3 type] == 2)
  {
    sub_1BD755098();
  }

  return (*(a1 + *(v2 + 52)))();
}

uint64_t sub_1BD107DB8(uint64_t *a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69BC8B0], v2, v4);
  v7 = *a1;
  v8 = type metadata accessor for PaymentPassHubView(0);
  v9 = *(a1 + *(v8 + 72));
  v10 = *(a1 + *(v8 + 68));
  v11 = WrappedPass.secureElementPass.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 paymentPass];
  }

  else
  {
    v13 = 0;
  }

  sub_1BD6B39C8(v6, v7, v9, v10, v13);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BD107F18(uint64_t *a1)
{
  v2 = sub_1BE04C614();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69BC8B0], v2, v4);
  v7 = *a1;
  v8 = type metadata accessor for PaymentPassHubView(0);
  sub_1BD6B4058(v6, v7, *(a1 + *(v8 + 68)));
  return (*(v3 + 8))(v6, v2);
}

void *sub_1BD108024@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394C8, &qword_1BE0B8718);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - v3;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BillingAddressEditor(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = (&v44 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD10CD64(a1, v20, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *(v20 + 2);
    v46 = *v20;
    v21 = [v46 configuration];
    v45 = [v21 context];

    v22 = v49;
    v48 = v7;
    v23 = v51;
    sub_1BD10CD64(v51, &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v24 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v25 = swift_allocObject();
    sub_1BD10D4F0(&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PaymentPassHubView);
    sub_1BD10CD64(v23, &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v26 = swift_allocObject();
    sub_1BD10D4F0(&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v24, type metadata accessor for PaymentPassHubView);
    *(v26 + ((v24 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
    *v22 = v46;
    *(v22 + 16) = v47;
    *(v22 + 24) = sub_1BD10D0B0;
    *(v22 + 32) = v25;
    *(v22 + 40) = sub_1BD10D328;
    *(v22 + 48) = v26;
    swift_storeEnumTagMultiPayload();
    sub_1BD10CAFC(&qword_1EBD39490, type metadata accessor for BillingAddressEditor, &unk_1BE1109C8);
    sub_1BD10CC00();
    return sub_1BE04F9A4();
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);
    v29 = *&v20[*(v28 + 48)];
    v30 = &v20[*(v28 + 64)];
    v31 = *(v30 + 1);
    v57 = *v30;
    v58 = v31;
    v59 = *(v30 + 4);
    sub_1BD0DE204(v20, v17, &qword_1EBD520A0, &qword_1BE0B9840);
    LODWORD(v46) = v29 != 0;
    sub_1BD0DE19C(v17, &v9[v7[5]], &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD10CD64(v51, &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    sub_1BD0DE19C(v17, v14, &qword_1EBD520A0, &qword_1BE0B9840);
    v32 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v33 = (v5 + *(v47 + 80) + v32) & ~*(v47 + 80);
    v34 = swift_allocObject();
    sub_1BD10D4F0(v6, v34 + v32, type metadata accessor for PaymentPassHubView);
    sub_1BD0DE204(v14, v34 + v33, &qword_1EBD520A0, &qword_1BE0B9840);
    v35 = &v9[v7[10]];
    *v35 = sub_1BDA570C8;
    *(v35 + 1) = 0;
    v35[16] = 0;
    v36 = &v9[v7[11]];
    v56 = 0;
    v37 = v29;
    sub_1BD10D494(&v57, v54);
    sub_1BE051694();
    v38 = v55;
    *v36 = v54[0];
    *(v36 + 1) = v38;
    *&v9[v7[12]] = 0x4064200000000000;
    *v9 = v46;
    v39 = &v9[v7[6]];
    *v39 = 0;
    v39[1] = 0;
    *&v9[v7[7]] = v29;
    v40 = &v9[v7[8]];
    v41 = v58;
    *v40 = v57;
    *(v40 + 1) = v41;
    *(v40 + 4) = v59;
    v42 = &v9[v7[9]];
    *v42 = sub_1BD10D3B4;
    v42[1] = v34;
    v43 = v48;
    sub_1BD10D4F0(v9, v48, type metadata accessor for BillingAddressEditor);
    sub_1BD10CD64(v43, v49, type metadata accessor for BillingAddressEditor);
    swift_storeEnumTagMultiPayload();
    sub_1BD10CAFC(&qword_1EBD39490, type metadata accessor for BillingAddressEditor, &unk_1BE1109C8);
    sub_1BD10CC00();
    sub_1BE04F9A4();
    sub_1BD10D558(&v57);

    sub_1BD10E3D0(v43, type metadata accessor for BillingAddressEditor);
    return sub_1BD0DE53C(v17, &qword_1EBD520A0, &qword_1BE0B9840);
  }
}

uint64_t sub_1BD108768@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = v6;
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39698, &unk_1BE0B88B8);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v45 = v34 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v41 = a1;
  v42 = v34 - v15;
  v16 = *(v4 + 28);
  v17 = a1;
  v18 = a1 + v16;
  v44 = v18;
  v43 = type metadata accessor for AvailablePass(0);
  v49 = *(v18 + *(v43 + 56));
  KeyPath = swift_getKeyPath();
  v40 = type metadata accessor for PaymentPassHubView;
  v35 = v7;
  sub_1BD10CD64(v17, v7, type metadata accessor for PaymentPassHubView);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v38 = type metadata accessor for PaymentPassHubView;
  sub_1BD10D4F0(v7, v20 + v19, type metadata accessor for PaymentPassHubView);
  sub_1BE048C84();
  v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0, &qword_1BE0B88E0);
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A8, &qword_1BE0B88E8);
  sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0, &qword_1BE0B88E0, MEMORY[0x1E69E6338]);
  sub_1BD10E640();
  sub_1BD10DDA4(&qword_1EBD396B8, &qword_1EBD396A8, &qword_1BE0B88E8, sub_1BD10E6A8);
  v21 = v42;
  sub_1BE0519C4();
  v49 = *(v44 + *(v43 + 60));
  swift_getKeyPath();
  v22 = v35;
  sub_1BD10CD64(v41, v35, v40);
  v23 = swift_allocObject();
  sub_1BD10D4F0(v22, v23 + v19, v38);
  sub_1BE048C84();
  v24 = v45;
  sub_1BE0519C4();
  v25 = v36;
  v26 = *(v36 + 16);
  v27 = v46;
  v28 = v21;
  v26(v46, v21, v8);
  v29 = v47;
  v26(v47, v24, v8);
  v30 = v48;
  v26(v48, v27, v8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F0, &qword_1BE0B8908);
  v26(&v30[*(v31 + 48)], v29, v8);
  v32 = *(v25 + 8);
  v32(v24, v8);
  v32(v28, v8);
  v32(v29, v8);
  return (v32)(v27, v8);
}

uint64_t sub_1BD108C50@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a3;
  v7 = type metadata accessor for PaymentPassHubView(0);
  v8 = v7 - 8;
  v44 = *(v7 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396E8, &qword_1BE0B8900);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396D8, &qword_1BE0B88F8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v44 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396C8, &qword_1BE0B88F0);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v19 = *(v4 + *(v8 + 32));
  if (v19)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    v20 = a1;
    v21 = v19;
    sub_1BE053074();
  }

  sub_1BE04E1C4();
  v22 = sub_1BE04E1D4();
  (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
  sub_1BD0DE19C(v18, v15, &qword_1EBD396F8, &qword_1BE0B8910);
  sub_1BD10CD64(v4, &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
  v23 = (*(v44 + 80) + 17) & ~*(v44 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2 & 1;
  v25 = sub_1BD10D4F0(&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for PaymentPassHubView);
  *(v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  MEMORY[0x1EEE9AC00](v25);
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39700, &qword_1BE0B8918);
  sub_1BD0DE4F4(&qword_1EBD39708, &qword_1EBD39700, &qword_1BE0B8918, MEMORY[0x1E69817F8]);
  v27 = v47;
  sub_1BE0516F4();
  sub_1BE051CE4();
  sub_1BE04EE54();
  v28 = v48;
  (*(v49 + 32))(v48, v27, v51);
  v29 = (v28 + *(v46 + 36));
  v30 = v58;
  v29[4] = v57;
  v29[5] = v30;
  v29[6] = v59;
  v31 = v54;
  *v29 = v53;
  v29[1] = v31;
  v32 = v56;
  v29[2] = v55;
  v29[3] = v32;
  v33 = v45;
  sub_1BD0DE204(v28, v45, &qword_1EBD396D8, &qword_1BE0B88F8);
  *(v33 + *(v50 + 36)) = 1;
  sub_1BE052434();
  v35 = v34;
  sub_1BD10E6A8();
  sub_1BE050DE4();
  v35, v36, v37, v38, v39, v40, v41, v42;
  sub_1BD0DE53C(v33, &qword_1EBD396C8, &qword_1BE0B88F0);
  return sub_1BD0DE53C(v18, &qword_1EBD396F8, &qword_1BE0B8910);
}

uint64_t sub_1BD109218@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39640, &qword_1BE0B8878);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v22 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39648, &qword_1BE0B8880);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  sub_1BD1094C0(&v22 - v17);
  sub_1BD755748(v12);
  sub_1BD755DF0(v9);
  sub_1BD0DE19C(v18, v15, &qword_1EBD39648, &qword_1BE0B8880);
  sub_1BD0DE19C(v12, v6, &qword_1EBD39640, &qword_1BE0B8878);
  sub_1BD0DE19C(v9, v3, &qword_1EBD39640, &qword_1BE0B8878);
  v19 = v23;
  sub_1BD0DE19C(v15, v23, &qword_1EBD39648, &qword_1BE0B8880);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39650, &qword_1BE0B8888);
  sub_1BD0DE19C(v6, v19 + *(v20 + 48), &qword_1EBD39640, &qword_1BE0B8878);
  sub_1BD0DE19C(v3, v19 + *(v20 + 64), &qword_1EBD39640, &qword_1BE0B8878);
  sub_1BD0DE53C(v22, &qword_1EBD39640, &qword_1BE0B8878);
  sub_1BD0DE53C(v12, &qword_1EBD39640, &qword_1BE0B8878);
  sub_1BD0DE53C(v18, &qword_1EBD39648, &qword_1BE0B8880);
  sub_1BD0DE53C(v3, &qword_1EBD39640, &qword_1BE0B8878);
  sub_1BD0DE53C(v6, &qword_1EBD39640, &qword_1BE0B8878);
  return sub_1BD0DE53C(v15, &qword_1EBD39648, &qword_1BE0B8880);
}

uint64_t sub_1BD1094C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v5 = v4 - 8;
  v39 = *(v4 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39658, &qword_1BE0B8890);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39660, &qword_1BE0B8898);
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v39 - v11;
  v13 = (v2 + *(v5 + 116));
  v15 = *v13;
  v14 = v13[1];
  v43 = v15;
  v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  v16 = v42[2];
  v42, v17, v18, v19, v20, v21, v22, v23;
  if (sub_1BD109884())
  {
    sub_1BD10CD64(v2, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v24 = *(v39 + 80);
    v39 = a1;
    v25 = (v24 + 17) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = v16 == 0;
    v27 = sub_1BD10D4F0(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for PaymentPassHubView);
    MEMORY[0x1EEE9AC00](v27);
    *(&v39 - 2) = v2;
    sub_1BD10E5DC();
    sub_1BE051704();
    a1 = v39;
    sub_1BE052434();
    v29 = v28;
    sub_1BD0DE4F4(&qword_1EBD39678, &qword_1EBD39658, &qword_1BE0B8890, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v29, v30, v31, v32, v33, v34, v35, v36;
    (*(v40 + 8))(v9, v7);
    sub_1BD0DE204(v12, a1, &qword_1EBD39660, &qword_1BE0B8898);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  return (*(v10 + 56))(a1, v37, 1, v41);
}

uint64_t sub_1BD109884()
{
  if (sub_1BD109A10())
  {
    return 1;
  }

  v1 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v1)
  {
    return 1;
  }

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_1BE053704();
    if (!v2)
    {
      return 1;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 1;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    if (v6 == v2)
    {
      return 1;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 suppressPayInFull];

    return v8 ^ 1;
  }

  return 1;
}

uint64_t sub_1BD1099B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = sub_1BD109A10();
    if ((result & 1) == 0)
    {
      sub_1BD6B2184(6, 6u, 0);
      v3 = type metadata accessor for PaymentPassHubView(0);
      return (*(a2 + *(v3 + 76)))(0);
    }
  }

  return result;
}

uint64_t sub_1BD109A10()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  if (*(v0 + *(v1 + 68)))
  {
    return [*(v0 + *(v1 + 68)) type] - 3 < 0xFFFFFFFFFFFFFFFELL;
  }

  v3 = *(v0 + *(v1 + 72));
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  sub_1BD49C81C();
  v6 = v5;
  v7 = sub_1BE052404();
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = [v4 preconfiguredInstallmentOfferStateForPassUniqueID_];

  if ((v15 - 5) < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();

    return v16;
  }

  else if (v15 == 4 || v15 == 3)
  {

    return 0;
  }

  else
  {

    return 1;
  }
}

double sub_1BD109B4C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1BD109BD0();
  v4 = v3;
  v5 = sub_1BD109E30();
  v7 = v6;
  if (sub_1BD109A10())
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  result = 1.36758074e161;
  *(a1 + 56) = xmmword_1BE0B8520;
  *(a1 + 72) = 2;
  *(a1 + 80) = 0x4042000000000000;
  return result;
}

id sub_1BD109BD0()
{
  v19 = sub_1BE04BD74();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v4)
  {
    goto LABEL_17;
  }

  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_1BE053704();
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1BFB40900](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ([v7 type] == 1)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_17;
    }
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 localizedPayInFullTitleOverride];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1BE052434();

      return v13;
    }
  }

LABEL_17:
  v15 = v19;
  (*(v1 + 104))(v3, *MEMORY[0x1E69B8068], v19);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();

    (*(v1 + 8))(v3, v15);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD109E30()
{
  v1 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_1BE053704();
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1BFB40900](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v4 type] == 1)
    {
      break;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = [v7 localizedPayInFullSubtitleOverride];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1BE052434();

      return v10;
    }
  }

  return 0;
}

void sub_1BD109F7C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  if (a1)
  {
    v9 = type metadata accessor for PaymentPassHubView(0);
    v10 = *(a2 + v9[12]);
    sub_1BD10CD64(a2 + v9[5], v8, type metadata accessor for AvailablePass);
    v11 = type metadata accessor for AvailablePass(0);
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    v10(v8, a3, *(a2 + v9[15]));
    v12 = sub_1BD0DE53C(v8, &qword_1EBD520A0, &qword_1BE0B9840);
    (*(a2 + v9[13]))(v12);
  }
}

void sub_1BD10A0C8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  *a4 = sub_1BE04F504();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39710, &qword_1BE0B8920);
  sub_1BD10A138(a1, v5, v4, a4 + *(v8 + 44));
}

void sub_1BD10A138(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v157) = a3;
  LODWORD(v156) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39718, &qword_1BE0B8928);
  v159 = *(v6 - 8);
  v160 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v155 = (&v146 - v7);
  v8 = sub_1BE04F6E4();
  v151 = *(v8 - 8);
  v152 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v150 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA8, &qword_1BE0B8930);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v154 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v146 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39720, &qword_1BE0B8938);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v158 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v161 = &v146 - v18;
  v19 = [a1 displayName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;

    v162 = v21;
    v163 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = sub_1BE050324();
    v32 = sub_1BE0505F4();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v31, v33, v35, v37, v39, v40, v41, v42;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v43, v44, v45, v46, v47);
    v30, v48, v49, v50, v51, v52, v53, v54;
    if (v156)
    {
      v55 = sub_1BE051224();
    }

    else
    {
      v55 = sub_1BE051494();
    }

    v56 = v55;
    v57 = sub_1BE050564();
    v156 = v58;
    LODWORD(v60) = v59;
    v62 = v61;
    v56, v58, v59, v61, v63, v64, v65, v66;
    sub_1BD0DDF10(v32, v34, (v36 & 1), v67, v68, v69, v70, v71);
    v38, v72, v73, v74, v75, v76, v77, v78;
    v79 = 1;
    if (v157)
    {
      v80 = sub_1BE051574();
      v148 = v80;
      v81 = sub_1BE0502D4();
      v147 = v81;
      KeyPath = swift_getKeyPath();
      v149 = v60;
      v83 = KeyPath;
      v84 = sub_1BE0511E4();
      v85 = swift_getKeyPath();
      v162 = v80;
      v163 = v83;
      v164 = v81;
      v165 = v85;
      v166 = v84;
      v86 = v57;
      v87 = v150;
      sub_1BE04F6B4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49170, &qword_1BE0C8110);
      sub_1BD0F1430();
      v157 = v62;
      v88 = v153;
      sub_1BE050DA4();
      v89 = v87;
      v57 = v86;
      (*(v151 + 8))(v89, v152);
      v84, v90, v91, v92, v93, v94, v95, v96;
      v85, v97, v98, v99, v100, v101, v102, v103;
      v147, v104, v105, v106, v107, v108, v109, v110;
      v83, v111, v112, v113, v114, v115, v116, v117;
      v148, v118, v119, v120, v121, v122, v123, v124;
      v60 = v154;
      sub_1BD0DE19C(v88, v154, &qword_1EBD38BA8, &qword_1BE0B8930);
      v125 = v155;
      *v155 = 0;
      *(v125 + 8) = 1;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39730, &qword_1BE0B89C8);
      sub_1BD0DE19C(v60, v125 + *(v126 + 48), &qword_1EBD38BA8, &qword_1BE0B8930);
      v127 = v88;
      v62 = v157;
      sub_1BD0DE53C(v127, &qword_1EBD38BA8, &qword_1BE0B8930);
      v128 = v60;
      LOBYTE(v60) = v149;
      sub_1BD0DE53C(v128, &qword_1EBD38BA8, &qword_1BE0B8930);
      sub_1BD0DE204(v125, v161, &qword_1EBD39718, &qword_1BE0B8928);
      v79 = 0;
    }

    v129 = v161;
    (*(v159 + 56))(v161, v79, 1, v160);
    v130 = v158;
    sub_1BD0DE19C(v129, v158, &qword_1EBD39720, &qword_1BE0B8938);
    v131 = v156;
    *a4 = v57;
    *(a4 + 8) = v131;
    v132 = (v60 & 1);
    *(a4 + 16) = v132;
    *(a4 + 24) = v62;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39728, &qword_1BE0B8940);
    sub_1BD0DE19C(v130, a4 + *(v133 + 48), &qword_1EBD39720, &qword_1BE0B8938);
    sub_1BD0D7F18(v57, v131, v132);
    sub_1BE048C84();
    sub_1BD0DE53C(v129, &qword_1EBD39720, &qword_1BE0B8938);
    sub_1BD0DE53C(v130, &qword_1EBD39720, &qword_1BE0B8938);
    sub_1BD0DDF10(v57, v131, v132, v134, v135, v136, v137, v138);
    v62, v139, v140, v141, v142, v143, v144, v145;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD10A714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24[-v11 - 8];
  v13 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1BD6B2184(5, 6u, 0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);
  v18 = *(v17 + 48);
  v19 = &v16[*(v17 + 64)];
  sub_1BD0DE19C(a1, v16, &qword_1EBD520A0, &qword_1BE0B9840);
  *&v16[v18] = a2;
  *(v19 + 4) = *(a3 + 32);
  v20 = *(a3 + 16);
  *v19 = *a3;
  *(v19 + 1) = v20;
  swift_storeEnumTagMultiPayload();
  sub_1BD10CD64(v16, v12, type metadata accessor for PaymentPassHubView.DetailSheet);
  (*(v14 + 56))(v12, 0, 1, v13);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v12, v9, &qword_1EBD39350, &unk_1BE0B8570);
  v21 = a2;
  sub_1BD10D494(a3, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  sub_1BE0516B4();
  sub_1BD0DE53C(v12, &qword_1EBD39350, &unk_1BE0B8570);
  return sub_1BD10E3D0(v16, type metadata accessor for PaymentPassHubView.DetailSheet);
}

uint64_t sub_1BD10A998@<X0>(unint64_t *a2@<X8>)
{
  v4 = 0xD000000000000019;
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD10CD64(v7, v6, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1BD10E3D0(v6, type metadata accessor for PaymentPassHubView.DetailSheet);
    v9 = "SELECT_PAYMENT_METHOD";
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

    v11 = &v6[*(v10 + 64)];
    v12 = *(v11 + 1);
    v13 = *(v11 + 4);
    *(v11 + 3), v14, v15, v16, v17, v18, v19, v20;
    v12, v21, v22, v23, v24, v25, v26, v27;

    result = sub_1BD0DE53C(v6, &qword_1EBD520A0, &qword_1BE0B9840);
    v9 = "payWithRewardsExplanation";
    v4 = 0xD00000000000001BLL;
  }

  *a2 = v4;
  a2[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for PaymentPassHubView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = (v3 + v1[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v4[1], v6, v7, v8, v9, v10, v11, v12;
    v4[3], v13, v14, v15, v16, v17, v18, v19;
    v20 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v21 = sub_1BE04CF34();
    (*(*(v21 - 8) + 8))(v4 + v20, v21);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v22 = type metadata accessor for AvailablePass(0);
  v23 = (v4 + v22[6]);
  v24 = type metadata accessor for IdentityCredential(0);
  v1048 = *(*(v24 - 1) + 48);
  if (!v1048(v23, 1, v24))
  {
    v23[1], v25, v26, v27, v28, v29, v30, v31;
    v32 = v24[5];
    v33 = sub_1BE04DA84();
    (*(*(v33 - 8) + 8))(v23 + v32, v33);
    *(v23 + v24[6] + 8), v34, v35, v36, v37, v38, v39, v40;
    *(v23 + v24[7] + 8), v41, v42, v43, v44, v45, v46, v47;
    *(v23 + v24[8] + 8), v48, v49, v50, v51, v52, v53, v54;
  }

  v1052 = v24;
  v55 = (v4 + v22[7]);
  v1049 = type metadata accessor for BalanceInfo(0);
  v1047 = *(*(v1049 - 8) + 48);
  if (!v1047(v55, 1))
  {

    v56 = *(v1049 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

  v59 = v4 + v22[10];
  v1050 = type metadata accessor for PassEligibleRewardsInfo(0);
  v1046 = *(*(v1050 - 8) + 48);
  v1051 = v22;
  if (!v1046(v59, 1))
  {
    v67 = *(v59 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v59 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v59 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v59 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v1050 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v59[v97], 1, v98))
    {
      (*(v99 + 8))(&v59[v97], v98);
    }

    v101 = *(v1050 + 32);
    if (!v100(&v59[v101], 1, v98))
    {
      (*(v99 + 8))(&v59[v101], v98);
    }
  }

  v102 = (v4 + v22[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v4 + v22[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v4 + v22[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v4 + v22[15]), v118, v119, v120, v121, v122, v123, v124;

  v125 = (v3 + v1[7]);
  v1045 = *(*(v22 - 1) + 48);
  v126 = v1052;
  if (!v1045(v125, 1, v22))
  {
    v127 = swift_getEnumCaseMultiPayload();
    if (v127 == 2)
    {
      v125[1], v128, v129, v130, v131, v132, v133, v134;
      v125[3], v135, v136, v137, v138, v139, v140, v141;
      v142 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v143 = sub_1BE04CF34();
      (*(*(v143 - 8) + 8))(v125 + v142, v143);
    }

    else if (v127 <= 1)
    {
    }

    v144 = (v125 + v22[6]);
    if (!v1048(v144, 1, v1052))
    {
      v144[1], v145, v146, v147, v148, v149, v150, v151;
      v152 = v1052[5];
      v153 = sub_1BE04DA84();
      (*(*(v153 - 8) + 8))(v144 + v152, v153);
      *(v144 + v1052[6] + 8), v154, v155, v156, v157, v158, v159, v160;
      *(v144 + v1052[7] + 8), v161, v162, v163, v164, v165, v166, v167;
      *(v144 + v1052[8] + 8), v168, v169, v170, v171, v172, v173, v174;
    }

    v175 = (v125 + v22[7]);
    if (!(v1047)(v175, 1, v1049))
    {

      v176 = *(v1049 + 28);
      v177 = sub_1BE04AF64();
      v178 = *(v177 - 8);
      if (!(*(v178 + 48))(v175 + v176, 1, v177))
      {
        (*(v178 + 8))(v175 + v176, v177);
      }
    }

    v179 = v125 + v22[10];
    if (!(v1046)(v179, 1, v1050))
    {
      v187 = *(v179 + 2);
      if (v187 != 1)
      {
        v187, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 4), v188, v189, v190, v191, v192, v193, v194;
        *(v179 + 6), v195, v196, v197, v198, v199, v200, v201;
      }

      v202 = *(v179 + 9);
      if (v202 != 1)
      {
        v202, v180, v181, v182, v183, v184, v185, v186;
        *(v179 + 11), v203, v204, v205, v206, v207, v208, v209;
        *(v179 + 13), v210, v211, v212, v213, v214, v215, v216;
      }

      v217 = *(v1050 + 28);
      v218 = sub_1BE04AF64();
      v219 = *(v218 - 8);
      v220 = *(v219 + 48);
      if (!v220(&v179[v217], 1, v218))
      {
        (*(v219 + 8))(&v179[v217], v218);
      }

      v221 = *(v1050 + 32);
      if (!v220(&v179[v221], 1, v218))
      {
        (*(v219 + 8))(&v179[v221], v218);
      }
    }

    v222 = (v125 + v22[12]);
    if (*v222)
    {

      v222[4], v223, v224, v225, v226, v227, v228, v229;
    }

    v230 = (v125 + v22[13]);
    if (*v230)
    {

      v230[2], v231, v232, v233, v234, v235, v236, v237;
    }

    *(v125 + v22[14]), v180, v181, v182, v183, v184, v185, v186;
    *(v125 + v22[15]), v238, v239, v240, v241, v242, v243, v244;
    v126 = v1052;
  }

  v245 = type metadata accessor for Passes(0);

  *(v125 + v245[7]), v246, v247, v248, v249, v250, v251, v252;
  *(v125 + v245[9]), v253, v254, v255, v256, v257, v258, v259;
  *(v125 + v245[11]), v260, v261, v262, v263, v264, v265, v266;
  v274 = v3 + v1[8];
  if (*(v274 + 48))
  {
    sub_1BD0D455C(*v274, *(v274 + 8), *(v274 + 16));

    *(v274 + 48), v275, v276, v277, v278, v279, v280, v281;
    *(v274 + 64), v282, v283, v284, v285, v286, v287, v288;
  }

  *(v3 + v1[9] + 8), v267, v268, v269, v270, v271, v272, v273;
  *(v3 + v1[10] + 8), v289, v290, v291, v292, v293, v294, v295;
  *(v3 + v1[11] + 8), v296, v297, v298, v299, v300, v301, v302;
  *(v3 + v1[12] + 8), v303, v304, v305, v306, v307, v308, v309;
  *(v3 + v1[13] + 8), v310, v311, v312, v313, v314, v315, v316;
  v317 = (v3 + v1[14]);
  v318 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v318 - 1) + 48))(v317, 1, v318))
  {
    v1044 = v245;

    v317[4], v319, v320, v321, v322, v323, v324, v325;
    v317[6], v326, v327, v328, v329, v330, v331, v332;
    v333 = _s11TotalAmountVMa(0);
    v334 = (v317 + v333[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v335 = swift_getEnumCaseMultiPayload();
    switch(v335)
    {
      case 2:
        v334[1], v336, v337, v338, v339, v340, v341, v342;
        break;
      case 1:
        v378 = sub_1BE04AF64();
        (*(*(v378 - 8) + 8))(v334, v378);
        break;
      case 0:
        v1041 = v318;
        v343 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v344 = v343[6];
        v345 = sub_1BE04AF64();
        v346 = *(v345 - 8);
        v347 = *(v346 + 48);
        if (!v347(v334 + v344, 1, v345))
        {
          (*(v346 + 8))(v334 + v344, v345);
        }

        v348 = v346;
        v349 = v343[7];
        if (!v347(v334 + v349, 1, v345))
        {
          (*(v348 + 8))(v334 + v349, v345);
        }

        *(v334 + v343[9] + 8), v350, v351, v352, v353, v354, v355, v356;
        *(v334 + v343[10] + 8), v357, v358, v359, v360, v361, v362, v363;
        *(v334 + v343[11] + 8), v364, v365, v366, v367, v368, v369, v370;
        *(v334 + v343[12] + 8), v371, v372, v373, v374, v375, v376, v377;
        v22 = v1051;
        v126 = v1052;
        v318 = v1041;
        break;
    }

    v379 = (v317 + v333[15]);
    v380 = v333;
    v381 = type metadata accessor for PeerPaymentModel(0);
    if (!(*(*(v381 - 1) + 48))(v379, 1, v381))
    {
      v1039 = v380;

      v382 = (v379 + v381[5]);
      v383 = swift_getEnumCaseMultiPayload();
      v1042 = v318;
      if (v383 == 2)
      {
        v382[1], v384, v385, v386, v387, v388, v389, v390;
        v382[3], v391, v392, v393, v394, v395, v396, v397;
        v398 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v399 = sub_1BE04CF34();
        (*(*(v399 - 8) + 8))(v382 + v398, v399);
      }

      else if (v383 <= 1)
      {
      }

      v400 = (v382 + v1051[6]);
      if (!v1048(v400, 1, v126))
      {
        v400[1], v401, v402, v403, v404, v405, v406, v407;
        v408 = v1052[5];
        v409 = sub_1BE04DA84();
        (*(*(v409 - 8) + 8))(v400 + v408, v409);
        *(v400 + v1052[6] + 8), v410, v411, v412, v413, v414, v415, v416;
        *(v400 + v1052[7] + 8), v417, v418, v419, v420, v421, v422, v423;
        *(v400 + v1052[8] + 8), v424, v425, v426, v427, v428, v429, v430;
      }

      v431 = (v382 + v1051[7]);
      if (!(v1047)(v431, 1, v1049))
      {

        v432 = *(v1049 + 28);
        v433 = sub_1BE04AF64();
        v434 = *(v433 - 8);
        if (!(*(v434 + 48))(v431 + v432, 1, v433))
        {
          (*(v434 + 8))(v431 + v432, v433);
        }
      }

      v435 = v382 + v1051[10];
      if (!(v1046)(v435, 1, v1050))
      {
        v443 = *(v435 + 2);
        if (v443 != 1)
        {
          v443, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 4), v444, v445, v446, v447, v448, v449, v450;
          *(v435 + 6), v451, v452, v453, v454, v455, v456, v457;
        }

        v458 = *(v435 + 9);
        if (v458 != 1)
        {
          v458, v436, v437, v438, v439, v440, v441, v442;
          *(v435 + 11), v459, v460, v461, v462, v463, v464, v465;
          *(v435 + 13), v466, v467, v468, v469, v470, v471, v472;
        }

        v473 = *(v1050 + 28);
        v474 = sub_1BE04AF64();
        v1037 = *(v474 - 8);
        v1036 = v473;
        v475 = &v435[v473];
        v476 = *(v1037 + 48);
        if (!v476(v475, 1, v474))
        {
          (*(v1037 + 8))(&v435[v1036], v474);
        }

        v477 = *(v1050 + 32);
        if (!v476(&v435[v477], 1, v474))
        {
          (*(v1037 + 8))(&v435[v477], v474);
        }
      }

      v478 = (v382 + v1051[12]);
      if (*v478)
      {

        v478[4], v479, v480, v481, v482, v483, v484, v485;
      }

      v486 = (v382 + v1051[13]);
      if (*v486)
      {

        v486[2], v487, v488, v489, v490, v491, v492, v493;
      }

      v22 = v1051;
      *(v382 + v1051[14]), v436, v437, v438, v439, v440, v441, v442;
      *(v382 + v1051[15]), v494, v495, v496, v497, v498, v499, v500;
      v501 = v379;
      v502 = (v379 + v381[6]);
      v126 = v1052;
      v318 = v1042;
      if (*v502 != 1)
      {

        v510 = v502[3];
        if (v510)
        {
          v510, v503, v504, v505, v506, v507, v508, v509;
          v502[5], v511, v512, v513, v514, v515, v516, v517;
          v502[7], v518, v519, v520, v521, v522, v523, v524;
          v502[9], v525, v526, v527, v528, v529, v530, v531;
        }

        v501 = v379;
      }

      v380 = v1039;
    }

    v532 = (v317 + v380[16]);
    v533 = v1044;
    if (!(*(*(v1044 - 1) + 48))(v532, 1, v1044))
    {
      if (!v1045(v532, 1, v22))
      {
        v541 = swift_getEnumCaseMultiPayload();
        if (v541 == 2)
        {
          v532[1], v542, v543, v544, v545, v546, v547, v548;
          v532[3], v549, v550, v551, v552, v553, v554, v555;
          v556 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v557 = sub_1BE04CF34();
          (*(*(v557 - 8) + 8))(v532 + v556, v557);
        }

        else if (v541 <= 1)
        {
        }

        v558 = (v532 + v22[6]);
        if (!v1048(v558, 1, v126))
        {
          v558[1], v559, v560, v561, v562, v563, v564, v565;
          v566 = v318;
          v567 = v1052[5];
          v568 = sub_1BE04DA84();
          v569 = v558 + v567;
          v318 = v566;
          (*(*(v568 - 8) + 8))(v569, v568);
          *(v558 + v1052[6] + 8), v570, v571, v572, v573, v574, v575, v576;
          *(v558 + v1052[7] + 8), v577, v578, v579, v580, v581, v582, v583;
          *(v558 + v1052[8] + 8), v584, v585, v586, v587, v588, v589, v590;
        }

        v1043 = v318;
        v591 = (v532 + v22[7]);
        if (!(v1047)(v591, 1, v1049))
        {

          v592 = *(v1049 + 28);
          v593 = sub_1BE04AF64();
          v594 = *(v593 - 8);
          if (!(*(v594 + 48))(v591 + v592, 1, v593))
          {
            (*(v594 + 8))(v591 + v592, v593);
          }
        }

        v595 = v532 + v1051[10];
        if (!(v1046)(v595, 1, v1050))
        {
          v603 = *(v595 + 2);
          if (v603 != 1)
          {
            v603, v596, v597, v598, v599, v600, v601, v602;
            *(v595 + 4), v604, v605, v606, v607, v608, v609, v610;
            *(v595 + 6), v611, v612, v613, v614, v615, v616, v617;
          }

          v618 = *(v595 + 9);
          if (v618 != 1)
          {
            v618, v596, v597, v598, v599, v600, v601, v602;
            *(v595 + 11), v619, v620, v621, v622, v623, v624, v625;
            *(v595 + 13), v626, v627, v628, v629, v630, v631, v632;
          }

          v633 = *(v1050 + 28);
          v634 = sub_1BE04AF64();
          v1040 = *(v634 - 8);
          v1038 = v633;
          v635 = &v595[v633];
          v636 = *(v1040 + 48);
          if (!v636(v635, 1, v634))
          {
            (*(v1040 + 8))(&v595[v1038], v634);
          }

          v637 = *(v1050 + 32);
          if (!v636(&v595[v637], 1, v634))
          {
            (*(v1040 + 8))(&v595[v637], v634);
          }
        }

        v126 = v1052;
        v638 = (v532 + v1051[12]);
        if (*v638)
        {

          v638[4], v639, v640, v641, v642, v643, v644, v645;
        }

        v646 = (v532 + v1051[13]);
        v318 = v1043;
        if (*v646)
        {

          v646[2], v647, v648, v649, v650, v651, v652, v653;
        }

        v22 = v1051;
        *(v532 + v1051[14]), v596, v597, v598, v599, v600, v601, v602;
        *(v532 + v1051[15]), v654, v655, v656, v657, v658, v659, v660;
        v533 = v1044;
      }

      *(v532 + v533[7]), v661, v662, v663, v664, v665, v666, v667;
      *(v532 + v533[9]), v668, v669, v670, v671, v672, v673, v674;
      *(v532 + v533[11]), v675, v676, v677, v678, v679, v680, v681;
    }

    *(v317 + v318[5]), v534, v535, v536, v537, v538, v539, v540;
    *(v317 + v318[6] + 8), v682, v683, v684, v685, v686, v687, v688;
    v696 = v317 + v318[7];
    v697 = *(v696 + 1);
    if (v697)
    {
      v697, v689, v690, v691, v692, v693, v694, v695;
      *(v696 + 3), v698, v699, v700, v701, v702, v703, v704;
    }

    v705 = v317 + v318[9];
    v706 = *(v705 + 1);
    if (v706)
    {
      v706, v689, v690, v691, v692, v693, v694, v695;
      *(v705 + 3), v707, v708, v709, v710, v711, v712, v713;
      *(v705 + 5), v714, v715, v716, v717, v718, v719, v720;
    }

    v721 = v317 + v318[10];
    v722 = *(v721 + 1);
    if (v722)
    {
      v722, v689, v690, v691, v692, v693, v694, v695;
      *(v721 + 3), v723, v724, v725, v726, v727, v728, v729;
      *(v721 + 5), v730, v731, v732, v733, v734, v735, v736;
    }

    v737 = (v317 + v318[11]);
    v738 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v738 - 1) + 48))(v737, 1, v738))
    {
      v746 = v318;
      v737[1], v739, v740, v741, v742, v743, v744, v745;
      v737[3], v747, v748, v749, v750, v751, v752, v753;
      v737[5], v754, v755, v756, v757, v758, v759, v760;
      v761 = v738[7];
      v762 = sub_1BE04AF64();
      v763 = *(v762 - 8);
      if (!(*(v763 + 48))(v737 + v761, 1, v762))
      {
        (*(v763 + 8))(v737 + v761, v762);
      }

      v764 = v738[8];
      v765 = sub_1BE04B3B4();
      v766 = *(v765 - 8);
      if (!(*(v766 + 48))(v737 + v764, 1, v765))
      {
        (*(v766 + 8))(v737 + v764, v765);
      }

      v22 = v1051;
      v126 = v1052;
      v318 = v746;
    }

    *(v317 + v318[12]), v739, v740, v741, v742, v743, v744, v745;
  }

  *(v3 + v1[19] + 8), v767, v768, v769, v770, v771, v772, v773;
  *(v3 + v1[20]), v774, v775, v776, v777, v778, v779, v780;
  *(v3 + v1[21]), v781, v782, v783, v784, v785, v786, v787;
  *(v3 + v1[22]), v788, v789, v790, v791, v792, v793, v794;
  v795 = (v3 + v1[23]);

  v795[1], v796, v797, v798, v799, v800, v801, v802;
  v803 = (v3 + v1[24]);
  v804 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v804 - 8) + 48))(v803, 1, v804))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v805 = v803 + 2;
    }

    else
    {
      if (!v1045(v803, 1, v22))
      {
        v806 = swift_getEnumCaseMultiPayload();
        if (v806 == 2)
        {
          v803[1], v807, v808, v809, v810, v811, v812, v813;
          v803[3], v814, v815, v816, v817, v818, v819, v820;
          v821 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v822 = sub_1BE04CF34();
          (*(*(v822 - 8) + 8))(v803 + v821, v822);
        }

        else if (v806 <= 1)
        {
        }

        v823 = (v803 + v22[6]);
        if (!v1048(v823, 1, v126))
        {
          v823[1], v824, v825, v826, v827, v828, v829, v830;
          v831 = v126[5];
          v832 = sub_1BE04DA84();
          (*(*(v832 - 8) + 8))(v823 + v831, v832);
          *(v823 + v126[6] + 8), v833, v834, v835, v836, v837, v838, v839;
          *(v823 + v126[7] + 8), v840, v841, v842, v843, v844, v845, v846;
          *(v823 + v126[8] + 8), v847, v848, v849, v850, v851, v852, v853;
        }

        v854 = (v803 + v22[7]);
        if (!(v1047)(v854, 1, v1049))
        {

          v855 = *(v1049 + 28);
          v856 = sub_1BE04AF64();
          v857 = *(v856 - 8);
          if (!(*(v857 + 48))(v854 + v855, 1, v856))
          {
            (*(v857 + 8))(v854 + v855, v856);
          }
        }

        v858 = v803 + v22[10];
        if (!(v1046)(v858, 1, v1050))
        {
          v866 = *(v858 + 2);
          if (v866 != 1)
          {
            v866, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 4), v867, v868, v869, v870, v871, v872, v873;
            *(v858 + 6), v874, v875, v876, v877, v878, v879, v880;
          }

          v881 = *(v858 + 9);
          if (v881 != 1)
          {
            v881, v859, v860, v861, v862, v863, v864, v865;
            *(v858 + 11), v882, v883, v884, v885, v886, v887, v888;
            *(v858 + 13), v889, v890, v891, v892, v893, v894, v895;
          }

          v896 = *(v1050 + 28);
          v897 = sub_1BE04AF64();
          v898 = *(v897 - 8);
          v899 = *(v898 + 48);
          if (!v899(&v858[v896], 1, v897))
          {
            (*(v898 + 8))(&v858[v896], v897);
          }

          v900 = *(v1050 + 32);
          v22 = v1051;
          if (!v899(&v858[v900], 1, v897))
          {
            (*(v898 + 8))(&v858[v900], v897);
          }
        }

        v901 = (v803 + v22[12]);
        if (*v901)
        {

          v901[4], v902, v903, v904, v905, v906, v907, v908;
        }

        v909 = (v803 + v22[13]);
        if (*v909)
        {

          v909[2], v910, v911, v912, v913, v914, v915, v916;
        }

        *(v803 + v22[14]), v859, v860, v861, v862, v863, v864, v865;
        *(v803 + v22[15]), v917, v918, v919, v920, v921, v922, v923;
      }

      v924 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v925 = (v803 + *(v924 + 64));
      v925[1], v926, v927, v928, v929, v930, v931, v932;
      v925[3], v933, v934, v935, v936, v937, v938, v939;
      v805 = v925 + 4;
    }
  }

  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  *(v803 + *(v940 + 28)), v941, v942, v943, v944, v945, v946, v947;
  v948 = (v3 + v1[25]);
  v949 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v950 = sub_1BE04AA64();
      (*(*(v950 - 8) + 8))(v948, v950);
    }

    else
    {

      v948[2], v951, v952, v953, v954, v955, v956, v957;
    }
  }

  v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v948 + *(v958 + 28)), v959, v960, v961, v962, v963, v964, v965;
  v966 = (v3 + v1[26]);

  v966[1], v967, v968, v969, v970, v971, v972, v973;
  v974 = (v3 + v1[27]);
  *v974, v975, v976, v977, v978, v979, v980, v981;
  v974[1], v982, v983, v984, v985, v986, v987, v988;
  *(v3 + v1[28] + 8), v989, v990, v991, v992, v993, v994, v995;
  *(v3 + v1[29] + 8), v996, v997, v998, v999, v1000, v1001, v1002;
  v1003 = (v3 + v1[30]);

  v1003[1], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
  *(v3 + v1[31] + 48), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  v1018 = (v3 + v1[32]);

  v1018[1], v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = v1[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1034 = sub_1BE04E354();
    (*(*(v1034 - 8) + 8))(v3 + v1026, v1034);
  }

  else
  {
    *(v3 + v1026), v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD10C8D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD10C944()
{
  result = qword_1EBD39450;
  if (!qword_1EBD39450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD393F8, &qword_1BE0B8690);
    sub_1BD10C9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39450);
  }

  return result;
}

unint64_t sub_1BD10C9D0()
{
  result = qword_1EBD39458;
  if (!qword_1EBD39458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39448, &qword_1BE0B86D8);
    sub_1BD0DE4F4(&qword_1EBD39460, &qword_1EBD39468, &qword_1BE0B86E0, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39458);
  }

  return result;
}

uint64_t sub_1BD10CAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD10CB44()
{
  result = qword_1EBD39488;
  if (!qword_1EBD39488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39470, &qword_1BE0B86E8);
    sub_1BD10CAFC(&qword_1EBD39490, type metadata accessor for BillingAddressEditor, &unk_1BE1109C8);
    sub_1BD10CC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39488);
  }

  return result;
}

unint64_t sub_1BD10CC00()
{
  result = qword_1EBD39498;
  if (!qword_1EBD39498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD39498);
  }

  return result;
}

unint64_t sub_1BD10CC54()
{
  result = qword_1EBD451D0;
  if (!qword_1EBD451D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    sub_1BD10CD10();
    sub_1BD10CAFC(&qword_1EBD394A8, type metadata accessor for SafariViewController, &unk_1BE0CA748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451D0);
  }

  return result;
}

unint64_t sub_1BD10CD10()
{
  result = qword_1EBD451E0;
  if (!qword_1EBD451E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD451E0);
  }

  return result;
}

uint64_t sub_1BD10CD64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD10CDCC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if (a1)
  {
    v10 = type metadata accessor for PaymentPassHubView(0);
    v11 = *(a2 + *(v10 + 36));
    v12 = a1;
    v11();
    (*(a2 + *(v10 + 44)))(v12);
  }

  v13 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v9, v6, &qword_1EBD39350, &unk_1BE0B8570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &qword_1EBD39350, &unk_1BE0B8570);
}

uint64_t sub_1BD10CF70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v5, v2, &qword_1EBD39350, &unk_1BE0B8570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v5, &qword_1EBD39350, &unk_1BE0B8570);
}

uint64_t sub_1BD10D0C8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26[-v7];
  v9 = type metadata accessor for PaymentPassHubView(0);
  sub_1BD49C81C();
  v11 = v10;
  v12 = sub_1BE052404();
  v11, v13, v14, v15, v16, v17, v18, v19;
  PKSetHasSeenPaymentOfferRewardsExplanationScreen();

  sub_1BD759280(v27);
  v20 = (a1 + *(v9 + 124));
  v21 = v20[1];
  v32[0] = *v20;
  v32[1] = v21;
  v23 = *v20;
  v22 = v20[1];
  v32[2] = v20[2];
  v33 = *(v20 + 6);
  v28 = v23;
  v29 = v22;
  v30 = v20[2];
  v31 = *(v20 + 6);
  sub_1BD0DE19C(v32, v34, &qword_1EBD394D0, &unk_1BE0B8720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0, &unk_1BE0B8720);
  sub_1BE0516B4();
  v34[0] = v28;
  v34[1] = v29;
  v34[2] = v30;
  v35 = v31;
  sub_1BD0DE53C(v34, &qword_1EBD394D0, &unk_1BE0B8720);
  sub_1BD755098();
  v24 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_1BD0DE19C(v8, v5, &qword_1EBD39350, &unk_1BE0B8570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v8, &qword_1EBD39350, &unk_1BE0B8570);
}

uint64_t sub_1BD10D328()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD10D0C8(v0 + v2, v3);
}

uint64_t sub_1BD10D3B4(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);

  return sub_1BD10CDCC(a1, v1 + v4);
}

uint64_t sub_1BD10D4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD10D5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePass(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738, &qword_1BE0DA100);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39740, &unk_1BE0B89E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v48 - v18;
  v21 = (&v48 + *(v20 + 56) - v18);
  sub_1BD10CD64(a1, &v48 - v18, type metadata accessor for PaymentPassHubView.DetailSheet);
  sub_1BD10CD64(a2, v21, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1BD10CD64(v19, v16, type metadata accessor for PaymentPassHubView.DetailSheet);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);
    v32 = *(v31 + 48);
    v33 = *&v16[v32];
    v34 = *(v31 + 64);
    v35 = *&v16[v34 + 16];
    v52[0] = *&v16[v34];
    v52[1] = v35;
    v53 = *&v16[v34 + 32];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BD10D558(v52);

      sub_1BD0DE53C(v16, &qword_1EBD520A0, &qword_1BE0B9840);
LABEL_12:
      sub_1BD0DE53C(v19, &qword_1EBD39740, &unk_1BE0B89E0);
LABEL_35:
      v46 = 0;
      return v46 & 1;
    }

    v27 = *(v21 + v32);
    v36 = *(v21 + v34 + 16);
    v54[0] = *(v21 + v34);
    v54[1] = v36;
    v55 = *(v21 + v34 + 32);
    v37 = *(v8 + 48);
    sub_1BD0DE204(v16, v10, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD0DE204(v21, &v10[v37], &qword_1EBD520A0, &qword_1BE0B9840);
    v38 = v51;
    v39 = *(v50 + 48);
    if (v39(v10, 1, v51) == 1)
    {
      if (v39(&v10[v37], 1, v38) == 1)
      {
        sub_1BD0DE53C(v10, &qword_1EBD520A0, &qword_1BE0B9840);
        goto LABEL_22;
      }

      sub_1BD10D558(v54);
      sub_1BD10D558(v52);
    }

    else
    {
      v40 = v49;
      sub_1BD0DE19C(v10, v49, &qword_1EBD520A0, &qword_1BE0B9840);
      if (v39(&v10[v37], 1, v38) != 1)
      {
        v41 = &v10[v37];
        v42 = v48;
        sub_1BD10D4F0(v41, v48, type metadata accessor for AvailablePass);
        v43 = sub_1BD498D50(v40, v42);
        sub_1BD10E3D0(v42, type metadata accessor for AvailablePass);
        sub_1BD10E3D0(v40, type metadata accessor for AvailablePass);
        sub_1BD0DE53C(v10, &qword_1EBD520A0, &qword_1BE0B9840);
        if ((v43 & 1) == 0)
        {
          sub_1BD10D558(v54);
          sub_1BD10D558(v52);

          goto LABEL_34;
        }

LABEL_22:
        if (v33)
        {
          if (!v27)
          {
            v27 = v33;
            sub_1BD10D558(v54);
            sub_1BD10D558(v52);

            goto LABEL_33;
          }

          sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
          v44 = v33;
          v27 = v27;
          v45 = sub_1BE053074();

          if ((v45 & 1) == 0)
          {
            sub_1BD10D558(v54);
            sub_1BD10D558(v52);

LABEL_33:
            goto LABEL_34;
          }
        }

        else
        {
          if (v27)
          {
            sub_1BD10D558(v54);
            sub_1BD10D558(v52);
            goto LABEL_33;
          }

          v44 = 0;
        }

        v46 = sub_1BD8434FC(v52, v54);
        sub_1BD10D558(v54);
        sub_1BD10D558(v52);

        sub_1BD10E3D0(v19, type metadata accessor for PaymentPassHubView.DetailSheet);
        return v46 & 1;
      }

      sub_1BD10D558(v54);
      sub_1BD10D558(v52);

      sub_1BD10E3D0(v40, type metadata accessor for AvailablePass);
    }

    sub_1BD0DE53C(v10, &qword_1EBD39738, &qword_1BE0DA100);
    goto LABEL_34;
  }

  sub_1BD10CD64(v19, v13, type metadata accessor for PaymentPassHubView.DetailSheet);
  v23 = *v13;
  v22 = v13[1];
  v24 = v13[2];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_12;
  }

  v25 = *v21;
  v26 = v21[1];
  v27 = v21[2];
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  v28 = sub_1BE053074();

  if ((v28 & 1) == 0 || (sub_1BE053074() & 1) == 0)
  {

LABEL_34:
    sub_1BD10E3D0(v19, type metadata accessor for PaymentPassHubView.DetailSheet);
    goto LABEL_35;
  }

  if (!v24)
  {

    if (!v27)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (!v27)
  {

    v27 = v24;
    goto LABEL_33;
  }

  sub_1BD0E5E8C(0, &qword_1EBD57A10, 0x1E69B8C78);
  v29 = v24;
  v30 = sub_1BE053074();

  if ((v30 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  sub_1BD10E3D0(v19, type metadata accessor for PaymentPassHubView.DetailSheet);
  v46 = 1;
  return v46 & 1;
}