void sub_1CF823630(void *a1, uint64_t a2, void *a3, void (*a4)(void **, uint64_t *, id), uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v17 = a1;
  if (a3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v11 = swift_allocObject();
      *(v11 + 2) = a4;
      *(v11 + 3) = a5;
      *(v11 + 4) = a1;
      *(v11 + 5) = a2;
      v12 = a3;

      v13 = a1;
      sub_1CF915D74(a3, 0, sub_1CF903320, v11);
    }

    else
    {
      v14 = a3;
      v15 = FPDomainUnavailableError();
      a4(&v17, &v16, v15);
    }
  }

  else
  {
    (a4)(&v17, &v16, 0, a4, a5, a6);
  }
}

void sub_1CF82377C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void *, void **, id), uint64_t a6, uint64_t a7)
{
  v19[0] = a1;
  v19[1] = a2;
  v18 = a3;
  if (a4)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = swift_allocObject();
      *(v13 + 2) = a5;
      *(v13 + 3) = a6;
      *(v13 + 4) = a1;
      *(v13 + 5) = a2;
      *(v13 + 6) = a3;
      v14 = a4;
      v15 = a3;

      sub_1CF915D74(a4, 0, sub_1CF8FAD64, v13);
    }

    else
    {
      v16 = a4;
      v17 = FPDomainUnavailableError();
      a5(v19, &v18, v17);
    }
  }

  else
  {
    (a5)(v19, &v18, 0, 0, a5, a6, a7);
  }
}

void sub_1CF8238D8(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v18 = a2;
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v11 = swift_allocObject();
      *(v11 + 2) = a4;
      *(v11 + 3) = a5;
      *(v11 + 4) = a2;
      *(v11 + 5) = a3;
      v12 = a1;
      v13 = a3;

      v14 = a2;
      sub_1CF915D74(a1, 0, sub_1CF90019C, v11);
    }

    else
    {
      v15 = a1;
      v16 = FPDomainUnavailableError();
      a4();
    }
  }

  else
  {
    (a4)(0, &v18, &v17, a4, a5, a6);
  }
}

double sub_1CF823A1C(void *a1, uint64_t a2, void (*a3)(uint64_t *, void), uint64_t a4)
{
  if ((*(*(a2 + 16) + 82) & 0x20) != 0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a4;
    swift_retain_n();

    sub_1CF3C3FC0("completeAfterNextFlush(completionHandler:)", 42, 2, 0, 1, 0, sub_1CF8FE350, v12, sub_1CF8FE358, v13);
  }

  else
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
    v14[3] = v6;
    v14[4] = *(v7 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v8, v6);
    a3(v14, 0);
    sub_1CEFCCC44(v14, &qword_1EC4C0700, &qword_1CFA05B10);
  }

  return result;
}

double sub_1CF823BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  swift_retain_n();
  sub_1CF7AAF88("completeAfterNextFlush(completionHandler:)", 42, 2, 0, sub_1CF8FE378, v6, sub_1CF8FE380, v7);

  return result;
}

void sub_1CF823CB0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void *), uint64_t a6, int a7)
{
  v8 = v7;
  v80 = a7;
  v91 = a6;
  v87 = a5;
  v81 = a3;
  v12 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5268();
  v85 = *(v14 - 8);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v82 = *(v17 - 8);
  v83 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  if (*(a2 + 41) == 1)
  {
    v78 = a4;
    v79 = v7;
    v22 = qword_1EDEA34B0;
    v23 = v20;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;
    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v34 = v27;
    if (v24 == v28 && v26 == v27)
    {
      v26, v27, v28, v29, v30, v31, v32, v33;
      v34, v35, v36, v37, v38, v39, v40, v41;
      sub_1CEFD0994(v20, v21, 1);
      a4 = v78;
      goto LABEL_14;
    }

    v42 = sub_1CF9E8048();
    v26, v43, v44, v45, v46, v47, v48, v49;
    v34, v50, v51, v52, v53, v54, v55, v56;
    sub_1CEFD0994(v20, v21, 1);
    a4 = v78;
    v8 = v79;
    if (v42)
    {
      goto LABEL_14;
    }
  }

  else if (!v20 && v21 == 2)
  {
    goto LABEL_14;
  }

  v57 = a4;
  v58 = a1[3];
  v59 = a1[4];
  v60 = __swift_project_boxed_opaque_existential_1(a1, v58);
  v61 = v81;
  v62 = *(v81 + 16);
  sub_1CF554678(v62, 0, v60, v58, v59, &v88);
  if (v8)
  {
    return;
  }

  if ((v90 & 1) == 0)
  {
    v72 = *(*(v62 + 32) + 16);
    v73 = swift_allocObject();
    v73[2] = v57;
    v73[3] = v61;
    v74 = v91;
    v73[4] = v87;
    v73[5] = v74;
    v75 = *(*v72 + 776);
    v76 = v57;

    v75(&v88, v80 & 1, sub_1CF8FE22C, v73);

    return;
  }

  sub_1CEFD0994(v88, v89, 1);
  a4 = v57;
LABEL_14:
  v63 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v64 = a4;
  v65 = sub_1CF9E6108();
  v66 = sub_1CF9E7298();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138543362;
    *(v67 + 4) = v64;
    *v68 = v64;
    v69 = v64;
    _os_log_impl(&dword_1CEFC7000, v65, v66, "[Pin] Item %{public}@ can't be pinned.", v67, 0xCu);
    sub_1CEFCCC44(v68, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v68, -1, -1);
    MEMORY[0x1D386CDC0](v67, -1, -1);
  }

  (*(v82 + 8))(v19, v83);
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v70 = v86;
  sub_1CF9E57D8();
  v71 = sub_1CF9E50D8();
  (*(v85 + 8))(v16, v70);
  v87(0, v71);
}

void sub_1CF824228(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, void *), uint64_t a5)
{
  v53 = a4;
  v54 = a5;
  v49 = a3;
  v50 = a2;
  v6 = sub_1CF9E6118();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = type metadata accessor for VFSItem(0);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v47 - v19);
  sub_1CEFCCBDC(a1, &v47 - v19, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v23 = v50;
    v24 = v21;
    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E72A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543618;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2114;
      v29 = v23;
      v30 = v21;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v28[1] = v31;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "[Pin] Request failed for item %{public}@ with error %{public}@.", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v28, -1, -1);
      MEMORY[0x1D386CDC0](v27, -1, -1);
    }

    (*(v51 + 8))(v8, v52);
    v32 = v21;
    v53(0, v21);
  }

  else
  {
    sub_1CEFDA0C4(v20, v17, type metadata accessor for VFSItem);
    v33 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v34 = v50;
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E7298();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "[Pin] Request Completed for item %{public}@.", v37, 0xCu);
      sub_1CEFCCC44(v38, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v38, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    (*(v51 + 8))(v11, v52);
    v40 = v49;
    v41 = *(*(*(v49 + 16) + 32) + 16);
    sub_1CEFDA34C(v17, v14, type metadata accessor for VFSItem);
    v42 = (*(v48 + 80) + 40) & ~*(v48 + 80);
    v43 = swift_allocObject();
    v44 = v53;
    v45 = v54;
    v43[2] = v40;
    v43[3] = v44;
    v43[4] = v45;
    sub_1CEFDA0C4(v14, v43 + v42, type metadata accessor for VFSItem);
    v46 = *(*v41 + 704);

    v46(sub_1CF8FE238, v43);

    sub_1CEFD5338(v17, type metadata accessor for VFSItem);
  }
}

void sub_1CF8247B4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v110 = a3;
  v114 = a2;
  v100 = sub_1CF9E63D8();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v98 - v10;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v105 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - v18;
  v103 = type metadata accessor for Signpost(0);
  v106 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v109 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = v23;
  v108 = (&v98 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v115 = &v98 - v25;
  v26 = type metadata accessor for VFSItem(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFDA34C(a4, v29, type metadata accessor for VFSItem);
  v30 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v31 = swift_allocObject();
  v32 = v110;
  v31[2] = v114;
  v31[3] = v32;
  v31[4] = a1;
  sub_1CEFDA0C4(v29, v31 + v30, type metadata accessor for VFSItem);
  v33 = *(a1 + 16);
  v34 = swift_allocObject();
  v34[2] = a1;
  v34[3] = sub_1CF8FE2A0;
  v114 = v34;
  v34[4] = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1CF8FE2A0;
  *(v35 + 24) = v31;
  v113 = v35;
  swift_retain_n();
  v112 = v31;
  swift_retain_n();

  v110 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDEBBE40;
  (*(v12 + 56))(v19, 1, 1, v11);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v37 = sub_1CF9E7988();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  v101 = *(&aBlock + 1);
  v102 = aBlock;
  sub_1CEFCCBDC(v19, v16, &unk_1EC4BED20, &unk_1CFA00700);
  v47 = *(v12 + 48);
  v48 = v47(v16, 1, v11);
  v104 = v19;
  if (v48 == 1)
  {
    v49 = v36;
    v50 = v105;
    sub_1CF9E6048();
    if (v47(v16, 1, v11) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v50 = v105;
    (*(v12 + 32))(v105, v16, v11);
  }

  v51 = v115;
  (*(v12 + 16))(v115, v50, v11);
  v52 = v103;
  *(v51 + *(v103 + 20)) = v36;
  v53 = v51 + *(v52 + 24);
  *v53 = "DB queue wait";
  *(v53 + 8) = 13;
  *(v53 + 16) = 2;
  v54 = v36;
  v55 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CF9FA450;
  *(v56 + 56) = MEMORY[0x1E69E6158];
  *(v56 + 64) = sub_1CEFD51C4();
  v57 = v101;
  *(v56 + 32) = v102;
  *(v56 + 40) = v57;
  sub_1CF9E6028(v55, &dword_1CEFC7000, v54, "DB queue wait", 13, 2, v51, "%s", 2);
  v56, v58, v59, v60, v61, v62, v63, v64;
  (*(v12 + 8))(v50, v11);
  sub_1CEFCCC44(v104, &unk_1EC4BED20, &unk_1CFA00700);
  v65 = *(v33 + 64);
  v104 = *(v33 + 168);
  v105 = v65;
  v103 = sub_1CF9E6448();
  v102 = *(v103 - 8);
  (*(v102 + 56))(v116, 1, 1, v103);
  v66 = v108;
  sub_1CEFDA34C(v51, v108, type metadata accessor for Signpost);
  v67 = *(v106 + 80);
  v106 = v33;
  v68 = (v67 + 16) & ~v67;
  v69 = (v107 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v107 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v66, v70 + v68, type metadata accessor for Signpost);
  v71 = (v70 + v69);
  v108 = sub_1CF8FE348;
  v72 = v113;
  *v71 = sub_1CF8FE348;
  v71[1] = v72;
  v73 = v109;
  sub_1CEFDA34C(v51, v109, type metadata accessor for Signpost);
  v74 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 25) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  sub_1CEFDA0C4(v73, v77 + v68, v107);
  v78 = (v77 + v69);
  *v78 = sub_1CF045408;
  v78[1] = 0;
  *(v77 + v74) = v106;
  v79 = v77 + v75;
  v80 = v102;
  *v79 = "completeAfterNextFlush(completionHandler:)";
  *(v79 + 8) = 42;
  *(v79 + 16) = 2;
  v81 = (v77 + v76);
  *v81 = v108;
  v81[1] = v72;
  v82 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
  v83 = v103;
  v84 = v114;
  *v82 = sub_1CF8FE328;
  v82[1] = v84;
  v85 = swift_allocObject();
  v85[2] = sub_1CF903308;
  v85[3] = v70;
  v86 = v104;
  v85[4] = v104;
  swift_retain_n();

  v109 = v70;

  v87 = fpfs_current_log();
  v88 = *(v86 + 16);
  v89 = v111;
  sub_1CEFCCBDC(v116, v111, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v80 + 48))(v89, 1, v83) == 1)
  {
    sub_1CEFCCC44(v89, &unk_1EC4BE370, qword_1CFA01B30);
    v90 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v91 = v98;
    sub_1CF9E6438();
    (*(v80 + 8))(v89, v83);
    v90 = sub_1CF9E63C8();
    (*(v99 + 8))(v91, v100);
  }

  v92 = swift_allocObject();
  v92[2] = v87;
  v92[3] = sub_1CF4858EC;
  v92[4] = v77;
  v120 = sub_1CF2BA17C;
  v121 = v92;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v118 = sub_1CEFCA444;
  v119 = &block_descriptor_4242;
  v93 = _Block_copy(&aBlock);
  v94 = v87;

  v120 = sub_1CF2BA180;
  v121 = v85;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v118 = sub_1CEFCA444;
  v119 = &block_descriptor_4245;
  v95 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v88, v105, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v90, v93, v95);
  _Block_release(v95);
  _Block_release(v93);

  sub_1CEFCCC44(v116, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v115, type metadata accessor for Signpost);
  v96 = v110;
  v97 = fpfs_adopt_log();
}

uint64_t sub_1CF8253D0(uint64_t a1, uint64_t a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CEFCCBDC(a1, &v25, &qword_1EC4C0700, &qword_1CFA05B10);
  if (v26)
  {
    sub_1CF054EA0(&v25, v27);
    v9 = v28;
    v10 = v29;
    v11 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v12 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v13 = type metadata accessor for VFSItem(0);
    v14 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
    v15 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
    v16 = sub_1CF76BB00(a6, 64, 0, v12, v11, v13, v9, v14, &off_1F4BF8588, v15, v10);
    v12, v17, v18, v19, v20, v21, v22, v23;
    a3(v16, 0);

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_1CEFCCC44(&v25, &qword_1EC4C0700, &qword_1CFA05B10);
    return (a3)(0, a2);
  }
}

void sub_1CF825580(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + 16);
  if ((*(v3 + 152) & 1) == 0 && (fp_task_tracker_is_cancelled(*(*(v3 + 168) + 16)) & 1) == 0 && *(v3 + 152) != 1)
  {
    sub_1CF80378C(a2, a3 & 0x1FF);
  }
}

void sub_1CF8255E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v10 = a2;
  v11 = v9;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  if (v10)
  {
    v12 = sub_1CF9E6888();
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = sub_1CF901D9C;
  v13[4] = v11;
  v13[5] = v8;
  aBlock[4] = sub_1CF901DC4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_5865;
  v14 = _Block_copy(aBlock);

  FPPerformWithPersona();
  _Block_release(v14);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v16 = *(v8 + 16);
  if (v16)
  {
    swift_willThrow();
    v17 = v16;

    return;
  }

  swift_beginAccess();
  if (*(v7 + 16))
  {
    goto LABEL_11;
  }
}

void sub_1CF825834(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v27 - v9;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v29 = v12;
  v30 = v14;
  (*(v14 + 56))(v12, 1, 1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  if (a2)
  {
    a2 = sub_1CF9E6888();
  }

  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = sub_1CF902CE0;
  v18[4] = v17;
  v18[5] = v15;
  aBlock[4] = sub_1CF9022A4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_6094;
  v19 = _Block_copy(aBlock);

  FPPerformWithPersona();
  _Block_release(v19);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v21 = *v16;
  if (*v16)
  {
    swift_willThrow();
    v22 = v21;

    return;
  }

  v23 = v29;
  swift_beginAccess();
  v24 = v23;
  v25 = v32;
  sub_1CEFCCBDC(v24, v32, &unk_1EC4BE310, qword_1CF9FCBE0);
  v26 = v30;
  if ((*(v30 + 48))(v25, 1, v13) == 1)
  {
    goto LABEL_10;
  }

  (*(v26 + 32))(v28, v25, v13);
}

void sub_1CF825B70(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v25 - v9;
  v10 = swift_allocBox();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v27 = *(v13 - 8);
  v28 = v12;
  (*(v27 + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  if (a2)
  {
    a2 = sub_1CF9E6888();
  }

  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = sub_1CF901D9C;
  v17[4] = v16;
  v17[5] = v14;
  aBlock[4] = sub_1CF901DEC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_5875;
  v18 = _Block_copy(aBlock);

  FPPerformWithPersona();
  _Block_release(v18);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v20 = *v15;
  if (*v15)
  {
    swift_willThrow();
    v21 = v20;

    return;
  }

  v22 = v28;
  swift_beginAccess();
  v23 = v22;
  v24 = v30;
  sub_1CEFCCBDC(v23, v30, &unk_1EC4BED30, &unk_1CFA00710);
  if ((*(v27 + 48))(v24, 1, v13) == 1)
  {
    goto LABEL_10;
  }

  sub_1CEFE55D0(v24, v26, &unk_1EC4BE310, qword_1CF9FCBE0);
}

void sub_1CF825EB4(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_willThrow();
    swift_beginAccess();
    v8 = *(a5 + 16);
    *(a5 + 16) = a1;
    v9 = a1;
  }

  else
  {
    a3(&v10);
    swift_beginAccess();
    *(a2 + 16) = 0;
  }
}

void sub_1CF825F68(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  v11 = swift_projectBox();
  if (a1)
  {
    swift_willThrow();
    swift_beginAccess();
    v13 = *(a5 + 16);
    *(a5 + 16) = a1;
    v14 = a1;
  }

  else
  {
    v12 = v11;
    a3();
    v15 = sub_1CF9E5A58();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    swift_beginAccess();
    sub_1CEFDA9E0(v10, v12, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

void sub_1CF8260D8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  v11 = swift_projectBox();
  if (a1)
  {
    swift_willThrow();
    swift_beginAccess();
    v13 = *(a5 + 16);
    *(a5 + 16) = a1;
    v14 = a1;
  }

  else
  {
    v12 = v11;
    a3();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
    swift_beginAccess();
    sub_1CEFDA9E0(v10, v12, &unk_1EC4BED30, &unk_1CFA00710);
  }
}

uint64_t sub_1CF826254@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1CF8E3B30(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1CF8E3BE4(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1CF9E5B18();
    v15 = v14;
    result = sub_1CEFE4714(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1CF82639C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v18[0] = *(i - 1);
    v18[1] = v8;

    v9 = (a1)(v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    if (v3 || (v9 & 1) != 0)
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

uint64_t sub_1CF82645C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
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

uint64_t sub_1CF8264E0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 41); ; i += 16)
  {
    v8 = *i;
    v9 = *(i - 1);
    v12 = *(i - 9);
    v13 = v9;
    v14 = v8;
    sub_1CEFD0988(v12, v9, v8);
    v10 = a1(&v12);
    sub_1CEFD0994(v12, v13, v14);
    if (v3 || (v10 & 1) != 0)
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

uint64_t sub_1CF8265B4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1CF826D4C;
  }

  else
  {

    v2 = sub_1CF8266D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CF8266D0(uint64_t a1)
{
  v133 = v1;
  v2 = v1[3];
  if (!v2)
  {
    v33 = v1[4];
    v32 = v1[5];
    v34 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v35 = v33;
    sub_1CEFD09A0(v32);
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E7298();

    sub_1CEFD0A98(v32);
    v38 = os_log_type_enabled(v36, v37);
    v39 = v1[10];
    v41 = v1[6];
    v40 = v1[7];
    if (v38)
    {
      v43 = v1[4];
      v42 = v1[5];
      v129 = v1[10];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v132 = v46;
      *v44 = 138412546;
      *(v44 + 4) = v43;
      *v45 = v43;
      *(v44 + 12) = 2082;
      v47 = v43;
      v48 = sub_1CEFD11AC(v42);
      v50 = v49;
      v51 = sub_1CEFD0DF0(v48, v49, &v132);
      v50, v52, v53, v54, v55, v56, v57, v58;
      *(v44 + 14) = v51;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "[patchAppLibrary] No error and no container for: %@ (request: %{public}s)", v44, 0x16u);
      sub_1CEFCCC44(v45, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1D386CDC0](v46, -1, -1);
      MEMORY[0x1D386CDC0](v44, -1, -1);

      (*(v40 + 8))(v129, v41);
    }

    else
    {

      (*(v40 + 8))(v39, v41);
    }

    goto LABEL_15;
  }

  v3 = sub_1CF0689E4();
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = v5;
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v8;
  if (v4 == v7 && v6 == v8)
  {
    v8, v8, v9, v10, v11, v12, v13, v14;
    v6, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    v17 = sub_1CF9E8048();
    v15, v18, v19, v20, v21, v22, v23, v24;
    v6, v25, v26, v27, v28, v29, v30, v31;

    if ((v17 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  v66 = [objc_opt_self() appLibraryFromContainerItem:v2 documentsItem:v1[4]];
  if (v66)
  {
    v67 = v66;
    if ([v66 isValidAppLibrary])
    {

      goto LABEL_16;
    }

    v98 = v1[4];
    v97 = v1[5];
    v99 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v100 = v98;
    sub_1CEFD09A0(v97);
    v101 = v67;
    v102 = sub_1CF9E6108();
    v103 = sub_1CF9E72A8();

    sub_1CEFD0A98(v97);
    v104 = os_log_type_enabled(v102, v103);
    v105 = v1[7];
    v106 = v1[8];
    v107 = v1[6];
    if (v104)
    {
      v125 = v1[5];
      v131 = v1[6];
      v108 = v1[4];
      log = v102;
      v109 = swift_slowAlloc();
      v128 = v106;
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v132 = v111;
      *v109 = 138412802;
      *(v109 + 4) = v101;
      *(v109 + 12) = 2112;
      *(v109 + 14) = v108;
      *v110 = v67;
      v110[1] = v108;
      *(v109 + 22) = 2082;
      v112 = v108;
      v113 = v101;
      v114 = sub_1CEFD11AC(v125);
      v116 = v115;
      v117 = sub_1CEFD0DF0(v114, v115, &v132);
      v116, v118, v119, v120, v121, v122, v123, v124;
      *(v109 + 24) = v117;
      _os_log_impl(&dword_1CEFC7000, log, v103, "[patchAppLibrary] App library: %@ for: %@ is not valid (request: %{public}s)", v109, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v110, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v111);
      MEMORY[0x1D386CDC0](v111, -1, -1);
      MEMORY[0x1D386CDC0](v109, -1, -1);

      (*(v105 + 8))(v128, v131);
    }

    else
    {

      (*(v105 + 8))(v106, v107);
    }
  }

  else
  {
    v71 = v1[4];
    v70 = v1[5];
    v72 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v73 = v71;
    sub_1CEFD09A0(v70);
    v74 = sub_1CF9E6108();
    v75 = sub_1CF9E7298();

    sub_1CEFD0A98(v70);
    v76 = os_log_type_enabled(v74, v75);
    v77 = v1[9];
    v79 = v1[6];
    v78 = v1[7];
    if (v76)
    {
      v130 = v1[9];
      v80 = v1[4];
      v81 = v1[5];
      v127 = v1[6];
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v132 = v84;
      *v82 = 138412546;
      *(v82 + 4) = v80;
      *v83 = v80;
      *(v82 + 12) = 2082;
      v85 = v80;
      v86 = sub_1CEFD11AC(v81);
      v88 = v87;
      v89 = sub_1CEFD0DF0(v86, v87, &v132);
      v88, v90, v91, v92, v93, v94, v95, v96;
      *(v82 + 14) = v89;
      _os_log_impl(&dword_1CEFC7000, v74, v75, "[patchAppLibrary] App library: cannot build app Library for %@ (request: %{public}s)", v82, 0x16u);
      sub_1CEFCCC44(v83, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v83, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x1D386CDC0](v84, -1, -1);
      MEMORY[0x1D386CDC0](v82, -1, -1);

      (*(v78 + 8))(v130, v127);
    }

    else
    {

      (*(v78 + 8))(v77, v79);
    }
  }

LABEL_15:
  v67 = 0;
LABEL_16:

  v68 = v1[1];

  return v68(v67);
}

uint64_t sub_1CF826D4C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1CF826DD4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v47 = a1;
  v48 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5030, qword_1CFA177B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = sub_1CF9E6118();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = a2;
  sub_1CEFD09A0(a3);
  v49 = v12;
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();

  v52 = a3;
  sub_1CEFD0A98(a3);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v45 = v15;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v53 = v20;
    *v18 = 138543618;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2082;
    v21 = v14;
    v22 = sub_1CEFD11AC(v52);
    v46 = v9;
    v24 = v23;
    v25 = v7;
    v26 = v6;
    v27 = sub_1CEFD0DF0(v22, v23, &v53);
    v28 = v24;
    v9 = v46;
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v18 + 14) = v27;
    v6 = v26;
    v7 = v25;
    v36 = v45;
    _os_log_impl(&dword_1CEFC7000, v45, v16, "[pathAppLibrary] resolving container item for %{public}@ (request: %{public}s", v18, 0x16u);
    sub_1CEFCCC44(v19, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);
  }

  else
  {
  }

  (*(v50 + 8))(v49, v51);
  v37 = [v14 parentItemID];
  (*(v7 + 16))(v9, v47, v6);
  v38 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v39 = swift_allocObject();
  v40 = v52;
  *(v39 + 16) = v14;
  *(v39 + 24) = v40;
  (*(v7 + 32))(v39 + v38, v9, v6);
  v41 = v14;
  sub_1CEFD09A0(v40);
  v42 = sub_1CEFD4E9C([v37 identifier]);
  sub_1CEFD0300(v42, 0, 0, v40, sub_1CF8FE49C, v39);

  return result;
}

uint64_t sub_1CF82719C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

void sub_1CF82722C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EDEA36F0 = v2;
  }

  else
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

id static NSUserDefaults.fpdUserDefaults.getter()
{
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDEA36F0;

  return v1;
}

id sub_1CF82735C(void *a1)
{
  v1 = a1;
  v2 = sub_1CF9E6888();
  v3 = [v1 stringArrayForKey_];

  if (v3)
  {
    v4 = sub_1CF9E6D48();

    v1 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1CF9E6D28();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

uint64_t NSUserDefaults.iCDPackageExtensions.getter()
{
  v1 = sub_1CF9E6888();
  v2 = [v0 stringArrayForKey_];

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CF9E6D48();

  return v3;
}

Swift::Double __swiftcall NSUserDefaults.Float64(for:min:max:defaultVal:)(Swift::String a1, Swift::Double min, Swift::Double max, Swift::Double defaultVal)
{
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDEA36F0;
  v8 = sub_1CF9E6888();
  v9 = [v7 integerForKey_];

  result = v9;
  if (v9 > max || result < min || v9 == 0)
  {
    return defaultVal;
  }

  return result;
}

uint64_t sub_1CF827580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDEA36F0;
  v9 = sub_1CF9E6888();
  v10 = [v8 integerForKey_];

  if (v10 > a4 || v10 < a3 || v10 == 0)
  {
    return a5;
  }

  else
  {
    return v10;
  }
}

uint64_t FPDomainRemovalMode.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x5565766968637261;
    }

    if (a1 == 3)
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6C4165766F6D6572;
    }

    if (a1 == 1)
    {
      return 0xD000000000000010;
    }
  }

  type metadata accessor for FPDomainRemovalMode(0);
  result = sub_1CF9E80C8();
  __break(1u);
  return result;
}

uint64_t sub_1CF827720()
{
  v1 = [v0 userInfo];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1CF9E6638();

  v4 = *MEMORY[0x1E6967288];
  type metadata accessor for NSFileProviderUserInfoKey(0);
  sub_1CEFCCCA4(&qword_1EDEA3508, type metadata accessor for NSFileProviderUserInfoKey, &unk_1CF9F9A2C);
  v5 = v4;
  sub_1CF9E7898();
  if (!*v3->tree || (v13 = sub_1CF0271B0(v24), (v6 & 1) == 0))
  {
    v3, v6, v7, v8, v9, v10, v11, v12;
    sub_1CF027318(v24);
LABEL_10:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_11;
  }

  sub_1CEFD1104(*v3[1].tester + 32 * v13, &v25);
  sub_1CF027318(v24);
  v3, v14, v15, v16, v17, v18, v19, v20;
  if (!*(&v26 + 1))
  {
LABEL_11:
    sub_1CEFCCC44(&v25, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v22 = 0;
    v21 = 1;
    return v22 | (v21 << 8);
  }

  v21 = v24[0] > 0xFFuLL;
  if (v24[0] <= 0xFFuLL)
  {
    v22 = v24[0];
  }

  else
  {
    v22 = 0;
  }

  return v22 | (v21 << 8);
}

uint64_t sub_1CF827980()
{
  v1 = v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity;
  swift_beginAccess();
  v2 = *v1;
  sub_1CEFF05F4(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1CF827A70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1CEFE48D8(v6, v7);
}

uint64_t sub_1CF827AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1CEFF05F4(v4, v5);
}

uint64_t sub_1CF827B28(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1CEFF05F4(v2, v3);
  return sub_1CEFE48D8(v5, v6);
}

uint64_t sub_1CF827C04()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4CE0, &qword_1CFA0FA70);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v15 = *(v14 + 52);
  if (sub_1CF9E5CA8())
  {
    goto LABEL_2;
  }

  v24 = v4;
  (*(v2 + 16))(v13, v0 + v15, v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v17 = *(v14 + 24);
  v18 = *(v5 + 48);
  sub_1CEFCCBDC(v13, v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  sub_1CEFCCBDC(v0 + v17, &v7[v18], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v19 = *(v2 + 48);
  if (v19(v7, 1, v1) != 1)
  {
    sub_1CEFCCBDC(v7, v10, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v19(&v7[v18], 1, v1) != 1)
    {
      v20 = v24;
      (*(v2 + 32))(v24, &v7[v18], v1);
      sub_1CEFCCCA4(&qword_1EDEAB3B0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v16 = sub_1CF9E6868();
      v21 = *(v2 + 8);
      v21(v20, v1);
      sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v21(v10, v1);
      sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      return v16 & 1;
    }

    sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    (*(v2 + 8))(v10, v1);
    goto LABEL_8;
  }

  sub_1CEFCCC44(v13, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (v19(&v7[v18], 1, v1) != 1)
  {
LABEL_8:
    sub_1CEFCCC44(v7, &qword_1EC4C4CE0, &qword_1CFA0FA70);
    v16 = 0;
    return v16 & 1;
  }

  sub_1CEFCCC44(v7, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_2:
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1CF828074(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v3;
}

uint64_t sub_1CF8280E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x756F437366762020, 0xEF203A737265746ELL);
  v0 = sub_1CF25BB70();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x756F43626420200ALL, 0xEF203A737265746ELL);
  type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v10 = sub_1CF5B60F8();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA5F1C0);
  v20 = sub_1CF6866E8();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000017, 0x80000001CFA5F1E0);
  v30 = sub_1CF6866E8();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

uint64_t sub_1CF828248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CF9FC330;
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E6158];
  *(v1 + 16) = xmmword_1CF9FA440;
  *(v1 + 56) = v2;
  *(v1 + 32) = 0x746E756F43736676;
  *(v1 + 40) = 0xEB00000000737265;
  v3 = sub_1CF25BD0C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 88) = v4;
  *(v1 + 64) = v3;
  *(v0 + 56) = v4;
  *(v0 + 32) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CF9FA440;
  *(v5 + 56) = v2;
  *(v5 + 32) = 0xD000000000000012;
  *(v5 + 40) = 0x80000001CFA5DAE0;
  type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v6 = sub_1CF68688C();
  *(v5 + 88) = v4;
  *(v5 + 64) = v6;
  *(v0 + 88) = v4;
  *(v0 + 64) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  *(v7 + 56) = v2;
  *(v7 + 32) = 0xD000000000000012;
  *(v7 + 40) = 0x80000001CFA5DB00;
  v8 = sub_1CF68688C();
  *(v7 + 88) = v4;
  *(v7 + 64) = v8;
  *(v0 + 120) = v4;
  *(v0 + 96) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FA440;
  *(v9 + 56) = v2;
  *(v9 + 32) = 0x65746E756F436264;
  *(v9 + 40) = 0xEA00000000007372;
  v10 = sub_1CF5B61E4();
  *(v9 + 88) = v4;
  *(v9 + 64) = v10;
  *(v0 + 152) = v4;
  *(v0 + 128) = v9;
  return v0;
}

uint64_t sub_1CF828454(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5138, &qword_1CFA18340);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF902760();
  sub_1CF9E82A8();
  v12 = 0;
  type metadata accessor for VFSCounters(0);
  sub_1CEFCCCA4(&qword_1EC4C5140, type metadata accessor for VFSCounters, &unk_1CFA005C8);
  sub_1CF9E7F08();
  if (!v1)
  {
    type metadata accessor for FPDDomainFPFSBackend.Counters(0);
    v11 = 1;
    type metadata accessor for DBCounters(0);
    sub_1CEFCCCA4(&qword_1EC4C5148, type metadata accessor for DBCounters, &unk_1CFA0C7D4);
    sub_1CF9E7F08();
    v10 = 2;
    type metadata accessor for SnapshotCounters(0);
    sub_1CEFCCCA4(&qword_1EC4C5150, type metadata accessor for SnapshotCounters, &unk_1CFA10DD8);
    sub_1CF9E7F08();
    v9 = 3;
    sub_1CF9E7F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF828708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for SnapshotCounters(0);
  MEMORY[0x1EEE9AC00](v26);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v23 - v5;
  v27 = type metadata accessor for DBCounters(0);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VFSCounters(0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5110, &qword_1CFA18338);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v23 - v10;
  v12 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF902760();
  v30 = v11;
  v15 = v32;
  sub_1CF9E8298();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v36 = 0;
  sub_1CEFCCCA4(&qword_1EC4C5120, type metadata accessor for VFSCounters, &unk_1CFA005F0);
  v17 = v28;
  sub_1CF9E7D88();
  sub_1CEFDA0C4(v17, v16, type metadata accessor for VFSCounters);
  v35 = 1;
  sub_1CEFCCCA4(&qword_1EC4C5128, type metadata accessor for DBCounters, &unk_1CFA0C7FC);
  sub_1CF9E7D88();
  sub_1CEFDA0C4(v7, v16 + v12[5], type metadata accessor for DBCounters);
  v34 = 2;
  v18 = sub_1CEFCCCA4(&qword_1EC4C5130, type metadata accessor for SnapshotCounters, &unk_1CFA10E00);
  v19 = v25;
  v32 = v18;
  sub_1CF9E7D88();
  sub_1CEFDA0C4(v19, v16 + v12[6], type metadata accessor for SnapshotCounters);
  v33 = 3;
  v21 = v24;
  v22 = v30;
  sub_1CF9E7D88();
  (*(v29 + 8))(v22, v31);
  sub_1CEFDA0C4(v21, v16 + v12[7], type metadata accessor for SnapshotCounters);
  sub_1CEFDA34C(v16, v23, type metadata accessor for FPDDomainFPFSBackend.Counters);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CEFD5338(v16, type metadata accessor for FPDDomainFPFSBackend.Counters);
}

uint64_t sub_1CF828CE8()
{
  v1 = 0x746E756F43736676;
  if (*v0)
  {
    v1 = 0x65746E756F436264;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1CF828D78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF8EAF78(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF828DA0(uint64_t a1)
{
  v2 = sub_1CF902760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF828DDC(uint64_t a1)
{
  v2 = sub_1CF902760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF828E4C()
{
  if (os_variant_has_internal_content() && (v1 = objc_allocWithZone(MEMORY[0x1E695E000]), v2 = sub_1CF9E6888(), v3 = [v1 initWithSuiteName_], v2, v3) && (v4 = sub_1CF9E6888(), v5 = objc_msgSend(v3, sel_BOOLForKey_, v4), v4, v3, (v5 & 1) != 0) || FPFeatureFlagEbihilIsEnabled() && ((Strong = swift_unknownObjectWeakLoadStrong()) == 0 || (v7 = Strong, v8 = objc_msgSend(Strong, sel_volume), v7, LOBYTE(v7) = objc_msgSend(v8, sel_isDefaultVolumeForCurrentPersona), v8, (v7 & 1) == 0)))
  {
    v9 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_userAllowedDBDrop) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

char *FPDDomainFPFSBackend.init(domain:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v167 = &v157 - v4;
  v170 = sub_1CF9E7318();
  v192 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v191 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v171 = &v157 - v7;
  v169 = sub_1CF9E6448();
  v190 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v189 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v168 = &v157 - v10;
  v11 = sub_1CF9E7388();
  v187 = *(v11 - 8);
  v188 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v186 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1CF9E7488();
  MEMORY[0x1EEE9AC00](v185);
  v183 = (&v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  v14 = &v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  *v14 = 0;
  v14[8] = -1;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs] = 0;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity] = xmmword_1CF9F4E20;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = 0xF000000000000007;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource] = 0;
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource] = 0;
  v15 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  *&v1[v15] = sub_1CF4E3E68(MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource] = 0;
  v16 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup;
  *&v1[v16] = dispatch_group_create();
  v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_started] = 0;
  v193 = v1;
  v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_invalidated] = 0;
  v17 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observedDefaults;
  if (qword_1EDEA36E0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEA36F0;
  v19 = v193;
  *&v193[v17] = qword_1EDEA36F0;
  *&v19[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_observation] = 0;
  *&v19[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner] = 0;
  v20 = v18;
  IsEnabled = FPFeatureFlagSpaceAttributionIsEnabled();
  v22 = 0;
  if (IsEnabled)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69D3980]) init];
  }

  v23 = v193;
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_saPathManager] = v22;
  v24 = &v23[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState];
  v25 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v164 = v24;
  v162 = v25;
  v161 = v27;
  v160 = v26 + 56;
  (v27)(v24, 1, 1);
  *&v23[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification] = 0;
  v28 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
  v29 = sub_1CF9E5A58();
  v30 = *(*(v29 - 8) + 56);
  v30(&v23[v28], 1, 1, v29);
  v23[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_userAllowedDBDrop] = 0;
  *&v23[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager] = 0;
  v23[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState] = 0;
  v31 = [objc_opt_self() defaultStore];
  v32 = [v31 userPackageExtensions];

  if (!v32)
  {
    v33 = sub_1CF9E6D48();
    v32 = sub_1CF9E6D28();
    v33, v34, v35, v36, v37, v38, v39, v40;
  }

  fpfs_user_package_extension_list_init();

  v41 = v193;
  swift_unknownObjectWeakAssign();
  v42 = [a1 purposeIdentifier];
  v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v45 = v44;

  v46 = &v41[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_purposeIdentifier];
  *v46 = v43;
  v46[1] = v45;
  v47 = [a1 log];
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_log] = v47;
  v48 = [a1 providerDomainID];
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] = v48;
  v49 = v48;
  v50 = [a1 nsDomain];
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_nsDomain] = v50;
  v51 = [a1 provider];
  v52 = [v51 manager];

  v53 = sub_1CF82A840(a1);
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_rtcReporter] = v53;
  v54 = v53;
  v55 = [a1 nsDomain];
  v56 = [v55 personaIdentifier];

  if (v56)
  {
    v184 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v182 = v57;
  }

  else
  {
    v184 = 0;
    v182 = 0;
  }

  v166 = v52;
  v58 = [a1 volume];
  v59 = type metadata accessor for InternalPathsManager(0);
  v60 = objc_allocWithZone(v59);
  v159 = a1;
  v61 = v60;
  v30(&v60[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL], 1, 1, v29);
  v30(&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL], 1, 1, v29);
  v30(&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL], 1, 1, v29);
  v30(&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL], 1, 1, v29);
  v30(&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_temporaryDirectoryURL], 1, 1, v29);
  v30(&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_stateDirectoryURL], 1, 1, v29);
  v30(&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL], 1, 1, v29);
  *&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_providerDomainID] = v49;
  v62 = &v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_personaIdentifier];
  v63 = v182;
  *v62 = v184;
  *(v62 + 1) = v63;
  *&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_extensionManager] = v52;
  *&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_volume] = v58;
  *&v61[OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_rtcReporter] = v53;
  v198.receiver = v61;
  v198.super_class = v59;
  v64 = v49;
  v165 = v54;
  v65 = objc_msgSendSuper2(&v198, sel_init);
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager] = v65;
  v163 = v64;
  v66 = [v64 fp_obfuscatedProviderDomainID];
  v67 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v69 = v68;

  v196 = v67;
  v197 = v69;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v71 = v196;
  v70 = v197;
  v182 = sub_1CEFD57E0(0, &unk_1EDEAB5C0, 0x1E69E9638);
  v196 = 0;
  v197 = 0xE000000000000000;
  sub_1CF9E7948();
  v72 = v197;

  v72, v73, v74, v75, v76, v77, v78, v79;
  v196 = v71;
  v197 = v70;
  v172 = v71;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5B480);
  v196 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&unk_1EDEAB5D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE60, &qword_1CFA00870);
  v180 = MEMORY[0x1E69E6328];
  sub_1CEFCCCEC(&unk_1EDEAB640, &qword_1EC4BEE60, &qword_1CFA00870, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  LODWORD(v185) = *MEMORY[0x1E69E8098];
  v80 = v187 + 104;
  v184 = *(v187 + 104);
  v184(v186);
  v187 = v80;
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue] = sub_1CF9E7498();
  v177 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v196 = v71;
  v197 = v70;
  v175 = v70;

  MEMORY[0x1D3868CC0](0x70757472617473, 0xE700000000000000);
  v182 = v196;
  v178 = v197;
  v81 = v168;
  sub_1CF9E63F8();
  v196 = MEMORY[0x1E69E7CC0];
  v181 = sub_1CEFCCCA4(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v176 = sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, v180);
  v82 = v171;
  v83 = v170;
  sub_1CF9E77B8();
  v84 = v190;
  v173 = *(v190 + 16);
  v180 = v190 + 16;
  v85 = v169;
  v173(v189, v81, v169);
  v86 = v192;
  v183 = *(v192 + 16);
  v179 = v192 + 16;
  v87 = v82;
  v183(v191, v82, v83);
  (v184)(v186, v185, v188);
  v88 = sub_1CF9E73B8();
  v89 = *(v86 + 8);
  v192 = v86 + 8;
  v182 = v89;
  v89(v82, v83);
  v90 = *(v84 + 8);
  v190 = v84 + 8;
  v178 = v90;
  v91 = v81;
  (v90)(v81, v85);
  v92 = v193;
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue] = v88;
  v196 = 0;
  v197 = 0xE000000000000000;
  sub_1CF9E7948();
  v93 = v197;
  v94 = v175;

  v93, v95, v96, v97, v98, v99, v100, v101;
  v102 = v172;
  v196 = v172;
  v197 = v94;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA5B4A0);
  v158 = v196;
  v157 = v197;
  sub_1CF9E63F8();
  v196 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v173(v189, v91, v85);
  v183(v191, v87, v83);
  (v184)(v186, v185, v188);
  v103 = sub_1CF9E73B8();
  v182(v87, v83);
  (v178)(v91, v85);
  *&v92[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_workingSetChangedQueue] = v103;
  v196 = v102;
  v197 = v175;

  MEMORY[0x1D3868CC0](0x6168632D6D657469, 0xEC0000006465676ELL);
  v158 = v196;
  v157 = v197;
  sub_1CF9E63F8();
  v196 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v104 = v85;
  v105 = v173;
  v173(v189, v91, v85);
  v106 = v87;
  v183(v191, v87, v83);
  (v184)(v186, v185, v188);
  v107 = sub_1CF9E73B8();
  v182(v87, v83);
  (v178)(v91, v104);
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemChangedQueue] = v107;
  v196 = 0;
  v197 = 0xE000000000000000;
  sub_1CF9E7948();
  v108 = v197;
  v109 = v175;

  v108, v110, v111, v112, v113, v114, v115, v116;
  v117 = v172;
  v196 = v172;
  v197 = v109;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA5B4C0);
  v158 = v196;
  v157 = v197;
  sub_1CF9E63F8();
  v196 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v105(v189, v91, v104);
  v183(v191, v106, v83);
  v118 = v188;
  (v184)(v186, v185, v188);
  v119 = sub_1CF9E73B8();
  v182(v106, v83);
  (v178)(v91, v104);
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue] = v119;
  v196 = v117;
  v197 = v175;

  MEMORY[0x1D3868CC0](1886221668, 0xE400000000000000);
  v158 = v196;
  v157 = v197;
  sub_1CF9E63F8();
  v196 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v120 = v104;
  v173(v189, v91, v104);
  v183(v191, v106, v83);
  v121 = v186;
  (v184)(v186, v185, v118);
  v122 = v121;
  v123 = sub_1CF9E73B8();
  v182(v106, v83);
  (v178)(v91, v104);
  *&v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_dumpQueue] = v123;
  v124 = v167;
  v161(v167, 1, 1, v162);
  v125 = v164;
  swift_beginAccess();
  sub_1CEFDA9E0(v124, v125, &qword_1EC4C49F8, &qword_1CFA17AF8);
  swift_endAccess();
  v196 = 0;
  v197 = 0xE000000000000000;
  sub_1CF9E7948();
  v197, v126, v127, v128, v129, v130, v131, v132;
  v196 = v172;
  v197 = v175;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA5B4E0);
  sub_1CF9E63F8();
  v196 = MEMORY[0x1E69E7CC0];
  sub_1CF9E77B8();
  v173(v189, v91, v120);
  v183(v191, v106, v83);
  (v184)(v122, v185, v188);
  v133 = sub_1CF9E73B8();
  v182(v106, v83);
  (v178)(v91, v120);
  v134 = v193;
  v135 = &v193[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord];
  *v135 = xmmword_1CFA17AB0;
  *(v135 + 2) = v133;
  swift_beginAccess();
  v195 = 0;
  sub_1CF9E6268();
  swift_endAccess();
  if (qword_1EDEA6EF0 != -1)
  {
    swift_once();
  }

  v136 = type metadata accessor for FPDDomainFPFSBackend(0);
  v194.receiver = v134;
  v194.super_class = v136;
  v137 = objc_msgSendSuper2(&v194, sel_init);
  v138 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v139 = *&v137[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v140 = v137;
  v193 = v139;
  v141 = v159;
  v142 = [v159 nsDomain];
  v143 = [v142 personaIdentifier];

  if (v143)
  {
    v144 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v146 = v145;
  }

  else
  {
    v144 = 0;
    v146 = 0;
  }

  v147 = [v141 nsDomain];
  v148 = [v147 userInfo];

  v149 = v141;
  if (v148)
  {
    v150 = sub_1CF9E6638();
  }

  else
  {
    v150 = 0;
  }

  v151 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v153 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for PeriodicFPCK();
  v154 = swift_allocObject();
  *(v154 + 80) = xmmword_1CFA17AC0;
  *(v154 + 104) = 2;
  *(v154 + 112) = sub_1CF045408;
  *(v154 + 64) = v144;
  *(v154 + 72) = v146;
  v155 = v193;
  *(v154 + 16) = 0;
  *(v154 + 24) = v155;
  *(v154 + 32) = v150;
  *(v154 + 40) = 1;
  *(v154 + 144) = sub_1CF8E4E58;
  *(v154 + 152) = v151;
  *(v154 + 96) = 0;
  *(v154 + 48) = sub_1CF8E4E60;
  *(v154 + 56) = v152;
  *(v154 + 120) = 0;
  *(v154 + 128) = sub_1CF8E4E50;
  *(v154 + 136) = v138;
  *(v154 + 160) = sub_1CF8E4E68;
  *(v154 + 168) = v153;

  *&v140[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_periodicFPCKRunner] = v154;

  sub_1CF82C388();
  sub_1CF82CDEC();
  dispatch_group_enter(*&v140[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_initializationGroup]);

  return v140;
}

id sub_1CF82A840(void *a1)
{
  v2 = [a1 provider];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v6 = MEMORY[0x1E69E6158];
  sub_1CF9E7898();
  v7 = [v3 identifier];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  *(inited + 96) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = v10;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  v11 = [v3 bundleVersion];
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v13;

  *(inited + 168) = v6;
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  v15 = [a1 volume];
  LODWORD(v6) = [v15 role];

  *(inited + 240) = MEMORY[0x1E69E7668];
  *(inited + 216) = v6;
  v16 = sub_1CF4E0E00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
  swift_arrayDestroy();
  v17 = sub_1CF9E6618();
  v16, v18, v19, v20, v21, v22, v23, v24;
  v25 = [v4 sessionWithCommonProperties_];

  return v25;
}

double sub_1CF82AAC4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v7 = a1;
    sub_1CEFD4024("init(domain:)", 13, 2, nullsub_1, 0, sub_1CF9034D0, v6);
  }

  return result;
}

uint64_t sub_1CF82AB8C(uint64_t a1)
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = *(Strong + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager), v7 = Strong, , v7, (result = v6) == 0))
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E7288();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "Unable to return DiagnosticsManager for FPCK, was nil", v12, 2u);
      MEMORY[0x1D386CDC0](v12, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return result;
}

uint64_t sub_1CF82AD1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v20 = v8;
  v21 = (v8 + 16);
  v9 = *&v7[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = swift_allocObject();
  *(v11 + 2) = v9;
  *(v11 + 3) = v8;
  *(v11 + 4) = v10;
  (*(v4 + 16))(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v12, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v14 = (v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = sub_1CF902558;
  v14[1] = v11;
  v15 = v9;

  v16 = v10;
  sub_1CF8EB0F8("copyDatabase(to:completionHandler:)", 35, 2, sub_1CF903304, v13, v7, sub_1CF902558, v11);

  sub_1CF9E72F8();

  v17 = v21;
  swift_beginAccess();
  v18 = *v17;

  return v18;
}

void sub_1CF82AFA0(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = a1;
    v15 = a2;
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E72A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v41 = v8;
      v19 = v18;
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v19 = 136315394;
      v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      v24 = sub_1CEFD0DF0(v21, v22, v42);
      v40 = v9;
      v25 = a3;
      v26 = a4;
      v27 = v24;
      v23, v28, v29, v30, v31, v32, v33, v34;
      *(v19 + 4) = v27;
      a4 = v26;
      a3 = v25;
      *(v19 + 12) = 2112;
      v35 = a1;
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v36;
      *v20 = v36;
      _os_log_impl(&dword_1CEFC7000, v16, v17, "Unable to capture database for Periodic FPCK on %s: %@", v19, 0x16u);
      sub_1CEFCCC44(v20, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v20, -1, -1);
      v37 = v39;
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v19, -1, -1);

      (*(v40 + 8))(v11, v41);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  swift_beginAccess();
  *(a3 + 16) = v38;
  dispatch_group_leave(a4);
}

double sub_1CF82B254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_allocObject();
    *(v6 + 16) = a1;

    sub_1CEFD4024("init(domain:)", 13, 2, nullsub_1, 0, sub_1CF90233C, v6);
  }

  return result;
}

void sub_1CF82B320(uint64_t a1, uint64_t a2)
{
  v109 = sub_1CF9E63D8();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v119 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v126 = &v106 - v8;
  v9 = sub_1CF9E6068();
  v117 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = (&v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v123 = &v106 - v15;
  v112 = type metadata accessor for Signpost(0);
  v114 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v118 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v115 = v19;
  v116 = (&v106 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v125 = &v106 - v21;
  v22 = sub_1CF9E5CF8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E7CD0];
  v124 = v26;
  *(v26 + 16) = MEMORY[0x1E69E7CD0];
  v28 = (v26 + 16);
  v29 = *(a2 + 16);
  if (v29)
  {
    v30 = (a2 + 41);
    do
    {
      if ((*v30 & 1) == 0)
      {
        sub_1CF6E9500(&aBlock, *(v30 - 9), *(v30 - 1));
      }

      v30 += 16;
      --v29;
    }

    while (v29);
    v27 = *v28;
  }

  v31 = *(v27 + 16);
  if (v31)
  {
    v110 = v22;
    v111 = a1;
    v120 = v13;
    v121 = v9;
    v122 = sub_1CF1F8A70(v31, 0);
    v32 = sub_1CF1FA4E8(&aBlock, v122 + 32, v31, v27);
    v33 = aBlock;

    sub_1CEFCB59C(v33);
    if (v32 != v31)
    {
      __break(1u);
      return;
    }

    v13 = v120;
    v9 = v121;
    a1 = v111;
    v22 = v110;
  }

  else
  {
    v122 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v35 = v34;
  (*(v23 + 8))(v25, v22);
  v36 = v35 * 1000000000.0;
  if (COERCE__INT64(fabs(v35 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v36 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v36;
  v38 = *(a1 + 16);
  v39 = swift_allocObject();
  v40 = v124;
  *(v39 + 16) = sub_1CF902344;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  *(v41 + 2) = v122;
  *(v41 + 3) = a1;
  *(v41 + 4) = 0;
  *(v41 + 5) = v37;
  *(v41 + 6) = 0x2000000000000;
  *(v41 + 7) = sub_1CF902344;
  v122 = v41;
  *(v41 + 8) = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1CEFF9D98;
  *(v42 + 24) = v39;
  v121 = v42;
  v120 = v38;
  swift_retain_n();

  v111 = v39;

  v110 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
LABEL_26:
    swift_once();
  }

  v43 = qword_1EDEBBE40;
  v44 = v117;
  v45 = v123;
  (*(v117 + 56))(v123, 1, 1, v9);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v46 = sub_1CF9E7988();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  v56 = aBlock;
  sub_1CEFCCBDC(v45, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v57 = *(v44 + 48);
  v58 = v57(v13, 1, v9);
  v59 = v113;
  if (v58 == 1)
  {
    v60 = v43;
    sub_1CF9E6048();
    if (v57(v13, 1, v9) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v44 + 32))(v113, v13, v9);
  }

  v61 = v125;
  (*(v44 + 16))(v125, v59, v9);
  v62 = v112;
  *(v61 + *(v112 + 20)) = v43;
  v63 = v61 + *(v62 + 24);
  *v63 = "DB queue wait";
  *(v63 + 8) = 13;
  *(v63 + 16) = 2;
  v64 = v43;
  v65 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CF9FA450;
  *(v66 + 56) = MEMORY[0x1E69E6158];
  *(v66 + 64) = sub_1CEFD51C4();
  *(v66 + 32) = v56;
  sub_1CF9E6028(v65, &dword_1CEFC7000, v64, "DB queue wait", 13, 2, v61, "%s", 2);
  v66, v67, v68, v69, v70, v71, v72, v73;
  (*(v44 + 8))(v59, v9);
  sub_1CEFCCC44(v123, &unk_1EC4BED20, &unk_1CFA00700);
  v117 = *(v120 + 21);
  v123 = *(v120 + 8);
  v112 = sub_1CF9E6448();
  v113 = *(v112 - 8);
  v113[7](v126, 1, 1, v112);
  v74 = v116;
  sub_1CEFDA34C(v61, v116, type metadata accessor for Signpost);
  v75 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v76 = (v115 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v115 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v74, v77 + v75, type metadata accessor for Signpost);
  v78 = (v77 + v76);
  v116 = sub_1CF8FCB08;
  v79 = v121;
  *v78 = sub_1CF8FCB08;
  v78[1] = v79;
  v80 = v118;
  sub_1CEFDA34C(v61, v118, type metadata accessor for Signpost);
  v81 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 25) & 0xFFFFFFFFFFFFFFF8;
  v84 = (v83 + 23) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  sub_1CEFDA0C4(v80, v85 + v75, v115);
  v86 = (v85 + v76);
  *v86 = sub_1CF045408;
  v86[1] = 0;
  *(v85 + v81) = v120;
  v87 = v85 + v82;
  v88 = v112;
  *v87 = "reingestItems(vfsItemsIDs:order:reason:_:)";
  *(v87 + 8) = 42;
  *(v87 + 16) = 2;
  v89 = (v85 + v83);
  v90 = v113;
  *v89 = v116;
  v89[1] = v79;
  v91 = (v85 + v84);
  v92 = v122;
  *v91 = sub_1CF902350;
  v91[1] = v92;
  v93 = swift_allocObject();
  v93[2] = sub_1CF903308;
  v93[3] = v77;
  v94 = v117;
  v93[4] = v117;
  swift_retain_n();

  v120 = v77;

  v95 = fpfs_current_log();
  v96 = *(v94 + 16);
  v97 = v119;
  sub_1CEFCCBDC(v126, v119, &unk_1EC4BE370, qword_1CFA01B30);
  if ((v90[6])(v97, 1, v88) == 1)
  {
    sub_1CEFCCC44(v97, &unk_1EC4BE370, qword_1CFA01B30);
    v98 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v99 = v107;
    sub_1CF9E6438();
    (v90[1])(v97, v88);
    v98 = sub_1CF9E63C8();
    (*(v108 + 8))(v99, v109);
  }

  v100 = swift_allocObject();
  v100[2] = v95;
  v100[3] = sub_1CF4858EC;
  v100[4] = v85;
  v130 = sub_1CF2BA17C;
  v131 = v100;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v128 = sub_1CEFCA444;
  v129 = &block_descriptor_6172;
  v101 = _Block_copy(&aBlock);
  v102 = v95;

  v130 = sub_1CF2BA180;
  v131 = v93;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v128 = sub_1CEFCA444;
  v129 = &block_descriptor_6175;
  v103 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v96, v123, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v98, v101, v103);
  _Block_release(v103);
  _Block_release(v101);

  sub_1CEFCCC44(v126, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v125, type metadata accessor for Signpost);
  v104 = v110;
  v105 = fpfs_adopt_log();
}

uint64_t sub_1CF82C0A0(void *a1, char a2, uint64_t a3)
{
  v6 = sub_1CF9E6118();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  if (a2)
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = a1;
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E72A8();
    sub_1CF0BA6EC(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = sub_1CF9E57E8();
      v20 = [v19 fp_prettyDescription];

      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Encountered %@ while ingesting items from FPCK", v17, 0xCu);
      sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v18, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }
  }

  else
  {
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E7288();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      *(v24 + 4) = a1;
      *(v24 + 12) = 2048;
      swift_beginAccess();
      *(v24 + 14) = *(*(a3 + 16) + 16);

      _os_log_impl(&dword_1CEFC7000, v22, v23, "Reingested %ld items (expected: %ld)", v24, 0x16u);
      MEMORY[0x1D386CDC0](v24, -1, -1);
    }

    else
    {
    }

    v12 = v9;
  }

  return (*(v7 + 8))(v12, v6);
}

void sub_1CF82C388()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong nsDomain];

    sub_1CF827720();
  }

  v5 = objc_sync_enter(v1);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v22 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v21, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v6 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v7 = objc_sync_exit(v1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v22 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v21, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v6 || (MEMORY[0x1EEE9AC00](v7), v22 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), sub_1CF9E7398(), aBlock[0]))
  {
    type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();

    v8 = sub_1CF25F010();
    if (v8)
    {
      v9 = v8;
      sub_1CF25F0C0(v8, 0, 1);
    }

    type metadata accessor for FPFileTree(0);
    swift_dynamicCastClassUnconditional();

    v10 = sub_1CF2D08E4();
    if (v10)
    {
      v11 = v10;
      sub_1CF2D0978(v10, 0, 1);
    }
  }

  v12 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_rtcReporter];
  if (v12)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 provider];

      if (v16)
      {
        v17 = [v16 identifier];
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = 0;
        *(v18 + 32) = 1;
        aBlock[4] = sub_1CF902330;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CF2D00A0;
        aBlock[3] = &block_descriptor_6138;
        v19 = _Block_copy(aBlock);
        v20 = v17;

        [v15 setModifyDecoratedPayloadHook:v19 forCategory:1];
        _Block_release(v19);

        v15 = v20;
      }
    }
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF82C834()
{
  v2 = sub_1CEFCE64C();
  sub_1CF5170A8(*&v0[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager], v0, &v2);
  return v2;
}

uint64_t sub_1CF82C8A8(uint64_t a1, _TtC18FileProviderDaemon8FSTester **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v15 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v14 + v15, v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v23 = *(v8 + 32);
  v23(v13, v6, v7);
  sub_1CF9E5968();
  v17 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    v19 = a2;
  }

  else
  {
    v17 = sub_1CF1F68F8(0, *v17->tree + 1, 1, v17);
    v19 = a2;
    *a2 = v17;
  }

  v21 = *v17->tree;
  v20 = *v17->tester;
  if (v21 >= v20 >> 1)
  {
    *v19 = sub_1CF1F68F8((v20 > 1), v21 + 1, 1, v17);
  }

  (*(v8 + 8))(v13, v7);
  v22 = *v19;
  *(v22 + 16) = v21 + 1;
  return (v23)(v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v10, v7);
}

void *sub_1CF82CC30()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);

  v4 = objc_sync_enter(v3);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v5 = *&v2[qword_1EDEADB30];
  v6 = v5;
  v7 = objc_sync_exit(v2);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v10 = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v9, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v5;
}

uint64_t sub_1CF82CD4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  sub_1CF9E7398();

  return v3;
}

uint64_t sub_1CF82CDC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (v1)
  {
    return *(*(v1 + 16) + 90);
  }

  else
  {
    return 0;
  }
}

double sub_1CF82CDEC()
{
  v1 = v0;
  v19 = sub_1CF9E7378();
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F0, &qword_1CFA00850);
  v4 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v15 - v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C50F8, &unk_1CFA182A0);
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - v7;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  sub_1CF9E6278();
  swift_endAccess();
  v9 = [objc_opt_self() defaultStore];
  [v9 errorGenerationUpdateSeconds];

  sub_1CF9E7368();
  v10 = v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord;
  v20 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  sub_1CEFCCCEC(&unk_1EDEAB6F0, &qword_1EC4C50F0, &qword_1CFA00850, MEMORY[0x1E695C068]);
  sub_1CF2B1654(&qword_1EDEAB610, &qword_1EDEAED70, 0x1E69E9610, MEMORY[0x1E69E8028]);
  v11 = v15;
  sub_1CF9E62E8();
  (*(v17 + 8))(v3, v19);
  (*(v4 + 8))(v6, v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CEFCCCEC(&qword_1EDEA3978, &qword_1EC4C50F8, &unk_1CFA182A0, MEMORY[0x1E695BE68]);
  v12 = v16;
  v13 = sub_1CF9E62F8();

  (*(v18 + 8))(v8, v12);
  *(v10 + 8) = v13;

  return result;
}

double sub_1CF82D1DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_1CEFD4024("initializeErrorGeneration()", 27, 2, nullsub_1, 0, sub_1CF9022B8, v5);
  }

  return result;
}

void sub_1CF82D2A4(uint64_t a1, void *a2)
{
  v91 = sub_1CF9E63D8();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v104 = &v88 - v8;
  v9 = sub_1CF9E6068();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  v18 = type metadata accessor for Signpost(0);
  v96 = *(v18 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v97 = (&v88 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v88 - v23;
  v24 = *(a1 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a1;
  v103 = v25;
  v101 = v24;
  v26 = a2;

  v100 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBBE40;
  (*(v10 + 56))(v17, 1, 1, v9);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v28 = sub_1CF9E7988();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  v93 = *(&aBlock + 1);
  v94 = aBlock;
  sub_1CEFCCBDC(v17, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v38 = *(v10 + 48);
  if (v38(v14, 1, v9) == 1)
  {
    v39 = v27;
    v40 = v95;
    sub_1CF9E6048();
    v41 = v40;
    if (v38(v14, 1, v9) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v41 = v95;
    (*(v10 + 32))(v95, v14, v9);
  }

  v42 = v102;
  (*(v10 + 16))(v102, v41, v9);
  *(v42 + *(v18 + 20)) = v27;
  v43 = v42 + *(v18 + 24);
  *v43 = "DB queue wait";
  *(v43 + 8) = 13;
  *(v43 + 16) = 2;
  v44 = v27;
  v45 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1CF9FA450;
  *(v46 + 56) = MEMORY[0x1E69E6158];
  *(v46 + 64) = sub_1CEFD51C4();
  v47 = v93;
  *(v46 + 32) = v94;
  *(v46 + 40) = v47;
  sub_1CF9E6028(v45, &dword_1CEFC7000, v44, "DB queue wait", 13, 2, v42, "%s", 2);
  v46, v48, v49, v50, v51, v52, v53, v54;
  (*(v10 + 8))(v41, v9);
  sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
  v55 = *(v101 + 64);
  v94 = *(v101 + 168);
  v95 = v55;
  v56 = sub_1CF9E6448();
  v57 = *(v56 - 8);
  v92 = v56;
  v93 = v57;
  (*(v57 + 56))(v104, 1, 1, v56);
  v58 = v97;
  sub_1CEFDA34C(v42, v97, type metadata accessor for Signpost);
  v59 = (*(v96 + 80) + 16) & ~*(v96 + 80);
  v60 = (v19 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  sub_1CEFDA0C4(v58, v61 + v59, type metadata accessor for Signpost);
  v62 = (v61 + v60);
  v97 = nullsub_1;
  *v62 = nullsub_1;
  v62[1] = 0;
  v63 = v98;
  sub_1CEFDA34C(v42, v98, type metadata accessor for Signpost);
  v64 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 25) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  sub_1CEFDA0C4(v63, v67 + v59, type metadata accessor for Signpost);
  v68 = (v67 + v60);
  *v68 = sub_1CF045408;
  v68[1] = 0;
  *(v67 + v64) = v101;
  v69 = v67 + v65;
  v70 = v92;
  v71 = v93;
  *v69 = "initializeErrorGeneration()";
  *(v69 + 8) = 27;
  *(v69 + 16) = 2;
  v72 = (v67 + v66);
  *v72 = v97;
  v72[1] = 0;
  v73 = (v67 + ((v66 + 23) & 0xFFFFFFFFFFFFFFF8));
  v74 = v103;
  *v73 = sub_1CF9022C0;
  v73[1] = v74;
  v75 = swift_allocObject();
  v75[2] = sub_1CF903308;
  v75[3] = v61;
  v76 = v94;
  v75[4] = v94;

  v101 = v61;

  v77 = fpfs_current_log();
  v78 = *(v76 + 16);
  v79 = v99;
  sub_1CEFCCBDC(v104, v99, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v71 + 48))(v79, 1, v70) == 1)
  {
    sub_1CEFCCC44(v79, &unk_1EC4BE370, qword_1CFA01B30);
    v80 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v81 = v89;
    sub_1CF9E6438();
    (*(v71 + 8))(v79, v70);
    v80 = sub_1CF9E63C8();
    (*(v90 + 8))(v81, v91);
  }

  v82 = swift_allocObject();
  v82[2] = v77;
  v82[3] = sub_1CF4858EC;
  v82[4] = v67;
  v108 = sub_1CF2BA17C;
  v109 = v82;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v106 = sub_1CEFCA444;
  v107 = &block_descriptor_6126;
  v83 = _Block_copy(&aBlock);
  v84 = v77;

  v108 = sub_1CF2BA180;
  v109 = v75;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v106 = sub_1CEFCA444;
  v107 = &block_descriptor_6129;
  v85 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v78, v95, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v80, v83, v85);
  _Block_release(v85);
  _Block_release(v83);

  sub_1CEFCCC44(v104, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v102, type metadata accessor for Signpost);
  v86 = v100;
  v87 = fpfs_adopt_log();
}

void sub_1CF82DD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C06D0, &qword_1CFA05AE0);
  sub_1CF9E7398();
  if (v3)
  {
  }
}

void sub_1CF82DDE8(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = a3;
  v5 = type metadata accessor for SyncState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = *(v8 + 56);
  ObjectType = swift_getObjectType();
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_project_boxed_opaque_existential_1(a2, v12);
  swift_unknownObjectRetain();
  v14 = v13;
  v15 = v27;
  v16 = sub_1CF95FE3C(v14, ObjectType, v12, v9, v11);
  swift_unknownObjectRelease();
  if (!v15)
  {
    v27 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      v17 = *(v8 + 56);
      v25 = swift_getObjectType();
      v19 = a2[3];
      v18 = a2[4];
      v20 = __swift_project_boxed_opaque_existential_1(a2, v19);
      *v7 = v27;
      swift_storeEnumTagMultiPayload();
      v21 = *(v17 + 8);
      swift_unknownObjectRetain();
      v21(v7, v20, v19, v18, v25, v17);
      sub_1CEFD5338(v7, type metadata accessor for SyncState);
      swift_unknownObjectRelease();
      *(v26 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord) = v27;
      Strong = swift_unknownObjectWeakLoadStrong();
      v23 = [Strong provider];

      v24 = [v23 server];
      [v24 signalProviderChanges];
    }
  }
}

id sub_1CF82E01C@<X0>(uint64_t a1@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5978();
  sub_1CF8E8D5C(v6);
  if (!v1)
  {
    v7 = [objc_opt_self() defaultManager];
    v8 = sub_1CF9E5928();
    v9 = sub_1CF9E5928();
    v14[0] = 0;
    v10 = [v7 moveItemAtURL:v8 toURL:v9 error:v14];

    v11 = v14[0];
    if (v10)
    {
      (*(v4 + 32))(a1, v6, v3);
      return v11;
    }

    v13 = v14[0];
    sub_1CF9E57F8();

    swift_willThrow();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_1CF82E208(uint64_t a1, char *a2)
{
  v98 = a2;
  v99 = a1;
  v3 = sub_1CF9E5A58();
  v110 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v94 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v103 = (&v91 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91 - v21;
  v23 = sub_1CF9E6118();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v91 - v27;
  v29 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v30 = v2;
  v31 = sub_1CF9E6108();
  LODWORD(v105) = sub_1CF9E72C8();
  v32 = os_log_type_enabled(v31, v105);
  v107 = v24;
  v108 = v23;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v112[0] = v100;
    *v33 = 136315138;
    v34 = *&v30[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
    v35 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
    swift_beginAccess();
    sub_1CEFCCBDC(v34 + v35, v22, &unk_1EC4BE310, qword_1CF9FCBE0);
    LODWORD(v34) = (*(v110 + 48))(v22, 1, v3);
    v104 = v30;

    if (v34 == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v36 = sub_1CF9E5928();
    v37 = [v36 fp_shortDescription];

    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;

    (*(v110 + 8))(v22, v3);
    v41 = sub_1CEFD0DF0(v38, v40, v112);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v33 + 4) = v41;
    _os_log_impl(&dword_1CEFC7000, v31, v105, "🚮  Move the FPFS DB away %s", v33, 0xCu);
    v49 = v100;
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x1D386CDC0](v49, -1, -1);
    MEMORY[0x1D386CDC0](v33, -1, -1);

    v50 = *(v107 + 8);
    v50(v28, v108);
    v51 = v104;
  }

  else
  {

    v50 = *(v24 + 8);
    v50(v28, v23);
    v51 = v30;
  }

  v52 = v51;
  v53 = *&v51[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  v54 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v53 + v54, v17, &unk_1EC4BE310, qword_1CF9FCBE0);
  v55 = v110;
  v105 = *(v110 + 48);
  v56 = v105(v17, 1, v3);
  v57 = v103;
  if (v56 == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1CF82E01C(v103);
  v100 = v50;
  v96 = 0;
  v104 = v55[1];
  (v104)(v17, v3);
  v97 = v55[7];
  v97(v57, 0, 1, v3);
  v95 = v55[4];
  v95(v109, v57, v3);
  v59 = v105;
  v58 = v106;
  v60 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v61 = v52;
  v62 = sub_1CF9E6108();
  v63 = sub_1CF9E72C8();
  if (!os_log_type_enabled(v62, v63))
  {

    (v100)(v58, v108);
LABEL_10:
    v83 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
    swift_beginAccess();
    v84 = v101;
    sub_1CEFCCBDC(v53 + v83, v101, &unk_1EC4BE310, qword_1CF9FCBE0);
    v85 = v59(v84, 1, v3);
    v86 = v102;
    if (v85 != 1)
    {
      v87 = v96;
      sub_1CF82E01C(v102);
      if (!v87)
      {
        (v104)(v84, v3);
        v97(v86, 0, 1, v3);
        v90 = v95;
        v95(v98, v86, v3);
LABEL_16:
        v90(v99, v109, v3);
        return;
      }

      (v104)(v84, v3);
      v97(v86, 1, 1, v3);
      v88 = v93;
      sub_1CEFCCBDC(v53 + v83, v93, &unk_1EC4BE310, qword_1CF9FCBE0);
      if (v59(v88, 1, v3) != 1)
      {
        v89 = v88;
        v90 = v95;
        v95(v98, v89, v3);
        if (v59(v86, 1, v3) != 1)
        {
          sub_1CEFCCC44(v86, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        goto LABEL_16;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v64 = v59;
  v65 = swift_slowAlloc();
  v103 = swift_slowAlloc();
  v111[0] = v103;
  *v65 = 136315138;
  v66 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  swift_beginAccess();
  v67 = v92;
  sub_1CEFCCBDC(v53 + v66, v92, &unk_1EC4BE310, qword_1CF9FCBE0);
  LODWORD(v66) = v64(v67, 1, v3);

  if (v66 != 1)
  {
    v68 = sub_1CF9E5928();
    v69 = [v68 fp_shortDescription];

    v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v71 = v67;
    v73 = v72;

    (v104)(v71, v3);
    v74 = sub_1CEFD0DF0(v70, v73, v111);
    v73, v75, v76, v77, v78, v79, v80, v81;
    *(v65 + 4) = v74;
    _os_log_impl(&dword_1CEFC7000, v62, v63, "🚮  Move the FPFS Wharf away %s", v65, 0xCu);
    v82 = v103;
    __swift_destroy_boxed_opaque_existential_1(v103);
    MEMORY[0x1D386CDC0](v82, -1, -1);
    MEMORY[0x1D386CDC0](v65, -1, -1);

    (v100)(v106, v108);
    v59 = v105;
    goto LABEL_10;
  }

LABEL_21:
  __break(1u);
}

void sub_1CF82ED30(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1CF8E8524();
  v203 = v12;
  v204 = v10;
  v205 = v11;
  v18 = v13;
  v19 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_rtcReporter);
  v20 = a1 >> 62;
  if (!v19)
  {
    v24 = v13;
    v25 = a1;
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_6:
    if ((a4 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_1CF9FC330;
  *(inited + 40) = 0x80000001CFA5D650;
  if (v20)
  {
    if (v20 == 1)
    {
      v22 = 0x80000001CFA5D6E0;
      v23 = 0xD000000000000011;
    }

    else
    {
      v53 = __ROR8__(a1 ^ 0x8000000000000000, 3);
      if (v53 > 2)
      {
        if (v53 == 3)
        {
          v22 = 0x80000001CFA5D6A0;
          v23 = 0xD00000000000001BLL;
        }

        else if (v53 == 4)
        {
          v22 = 0xEF74726F706D6965;
          v23 = 0x526C616974726170;
        }

        else
        {
          v22 = 0x80000001CFA5D670;
          v23 = 0xD000000000000023;
        }
      }

      else
      {
        v23 = 0x74726F706D696572;
        if (v53)
        {
          if (v53 == 1)
          {
            v22 = 0xEE007265646C6F46;
          }

          else
          {
            v22 = 0x80000001CFA5D6C0;
            v23 = 0xD000000000000010;
          }
        }

        else
        {
          v22 = 0xEC000000746F6F52;
        }
      }
    }
  }

  else
  {
    v22 = 0xED0000726F727245;
    v23 = 0x6573616261746164;
  }

  v27 = MEMORY[0x1E69E6158];
  *(inited + 48) = v23;
  *(inited + 56) = v22;
  *(inited + 72) = v27;
  *(inited + 80) = 0x657079546D657469;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = a2;
  *(inited + 104) = a3;
  v28 = MEMORY[0x1E69E6530];
  *(inited + 120) = v27;
  *(inited + 128) = 0xD000000000000011;
  v29 = v204;
  if (v205)
  {
    v29 = 0;
  }

  *(inited + 136) = 0x80000001CFA51ED0;
  *(inited + 144) = v29;
  *(inited + 168) = v28;
  *(inited + 176) = 0x6E6F73616572;
  *(inited + 216) = v28;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = a4 & 1;
  v30 = inited;

  v31 = v19;
  v32 = sub_1CF4E04E8(v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE300, &unk_1CF9FC5D0);
  swift_arrayDestroy();
  sub_1CF7BA9CC(v32);
  v34 = v33;
  v32, v35, v36, v37, v38, v39, v40, v41;
  v42 = sub_1CF9E6618();
  v34, v43, v44, v45, v46, v47, v48, v49;
  v24 = v18;
  if (!v20 || (v50 = 0, v20 == 1))
  {
    sub_1CF8F99A0(a1);
    v50 = sub_1CF9E57E8();
    sub_1CF8F99BC(a1);
  }

  [v31 postReportWithCategory:1 type:1 payload:v42 error:v50];

  v25 = a1;
  if (!v20)
  {
    goto LABEL_6;
  }

LABEL_15:
  if (v20 != 1)
  {
    goto LABEL_59;
  }

  v25 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
  if ((a4 & 1) == 0)
  {
LABEL_17:
    v206[0] = v25;
    sub_1CF8F99A0(a1);
    sub_1CF8F99A0(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    if (swift_dynamicCast())
    {
      if (!v212 || v212 == 3 || v212 == 9 && ((v51 = vorrq_s8(v210, v211), v52 = *&vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL)) | v209, v208 == 1) && !v52 || v208 == 2 && !v52 || v208 == 3 && !v52))
      {

LABEL_37:
        if ((v205 & 1) == 0 && v204 < 1800000000000)
        {
          goto LABEL_39;
        }

        sub_1CF8F99BC(a1);
LABEL_59:
        v24, v11, v12, v13, v14, v15, v16, v17;
        return;
      }

      sub_1CF47FB38(&v208);
    }

    _s3__C4CodeOMa_0(0);
    v208 = 14;
    sub_1CF8F99A0(a1);
    sub_1CEFCCCA4(&unk_1EC4BD5E0, _s3__C4CodeOMa_0, &unk_1CF9F9D7C);
    v54 = sub_1CF9E5658();
    sub_1CF8F99BC(a1);
    if ((v54 & 1) == 0)
    {
LABEL_39:
      v26 = 0;
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_7:
  sub_1CF8F99A0(a1);
  v26 = 0xD000000000000015;
LABEL_40:
  v202 = [objc_allocWithZone(FPDTapToRadarManager) init];
  v208 = 0;
  v209 = 0xE000000000000000;
  sub_1CF9E7948();
  if (a4)
  {
    v55 = 0x80000001CFA5D630;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v26, v55);
  v55, v56, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA5D500);
  v63 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v64 = [v63 pathComponents];
  v65 = sub_1CF9E6D48();

  v66 = *v65->tree;
  v65, v67, v68, v69, v70, v71, v72, v73;
  v74 = v63;
  if (v66 >= 2)
  {
    v74 = [v63 stringByDeletingLastPathComponent];
    if (!v74)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v76 = v75;
      v74 = sub_1CF9E6888();
      v76, v77, v78, v79, v80, v81, v82, v83;
    }
  }

  v84 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v86 = v85;

  MEMORY[0x1D3868CC0](v84, v86);
  v86, v87, v88, v89, v90, v91, v92, v93;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (v205)
  {
    v94 = 0;
    v95 = 0xE000000000000000;
  }

  else
  {
    v207[0] = v204;
    sub_1CF82F6E4(v207, v203, v24, v206);
    v94 = v206[0];
    v95 = v206[1];
  }

  MEMORY[0x1D3868CC0](v94, v95);
  v95, v96, v97, v98, v99, v100, v101, v102;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v103 = sub_1CF4C3B5C(v207[2], v207[3]);
  v105 = v104;
  MEMORY[0x1D3868CC0](v103);
  v105, v106, v107, v108, v109, v110, v111, v112;
  v113 = v209;
  v208 = 0;
  v209 = 0xE000000000000000;
  sub_1CF9E7948();
  v209, v114, v115, v116, v117, v118, v119, v120;
  v208 = 0xD000000000000015;
  v209 = 0x80000001CFA5D530;
  v121 = [v63 fp_obfuscatedProviderDomainID];
  v122 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v124 = v123;

  MEMORY[0x1D3868CC0](v122, v124);
  v124, v125, v126, v127, v128, v129, v130, v131;
  MEMORY[0x1D3868CC0](0x203A726F7272450ALL, 0xE800000000000000);
  v132 = sub_1CF9E57E8();
  sub_1CF8F99BC(a1);
  v133 = [v132 fp_prettyDescription];

  v134 = [v133 description];
  v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v137 = v136;

  MEMORY[0x1D3868CC0](v135, v137);
  v137, v138, v139, v140, v141, v142, v143, v144;
  v24, v145, v146, v147, v148, v149, v150, v151;
  v153 = v208;
  v152 = v209;
  if ((v205 & 1) == 0)
  {
    v208 = 0;
    v209 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](v153, v152);
    v152, v154, v155, v156, v157, v158, v159, v160;
    MEMORY[0x1D3868CC0](0xD0000000000000B0, 0x80000001CFA5D570);
    v152 = v209;
  }

  v161 = sub_1CF9E6888();
  v113, v162, v163, v164, v165, v166, v167, v168;
  v169 = sub_1CF9E6888();
  v152, v170, v171, v172, v173, v174, v175, v176;
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v177 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v178 = sub_1CF9E6D28();
  v179 = sub_1CF9E6888();
  v180 = v63;
  v181 = [v180 pathComponents];
  v182 = sub_1CF9E6D48();

  v183 = *v182->tree;
  v182, v184, v185, v186, v187, v188, v189, v190;
  if (v183 < 2)
  {
    v192 = v202;
  }

  else
  {
    v191 = [v180 stringByDeletingLastPathComponent];
    v192 = v202;
    if (!v191)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v194 = v193;
      v191 = sub_1CF9E6888();
      v194, v195, v196, v197, v198, v199, v200, v201;
    }

    v180 = v191;
  }

  [v192 requestTapToRadarWithTitle:v161 description:v169 keywords:v177 attachments:v178 displayReason:v179 providerID:v180];
}

void sub_1CF82F6E4(uint64_t *a1@<X0>, uint64_t a2@<X3>, _TtC18FileProviderDaemon8FSTester *a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  sub_1CF9E7948();
  0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
  if (v7 < 0)
  {
    v17 = __OFSUB__(0, v7);
    v7 = -v7;
    if (v17)
    {
      __break(1u);
      return;
    }

    v16 = 0xE100000000000000;
    v15 = 45;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v18 = sub_1CF04F854(v7);
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](v15, v16);
  v16, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  if (a3)
  {
    v35 = a2;
  }

  else
  {
    v35 = 0;
  }

  if (a3)
  {
    v36 = a3;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v35, v36);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  *a4 = 0x6572207473616C28;
  a4[1] = 0xEF203A65726F7473;
}

void sub_1CF82F828(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CF9E6888();
  v4 = sub_1CF9E6888();
  v5 = sub_1CF9E57E8();
  FPCaptureLogsForOperation();

  v6 = [objc_allocWithZone(FPDTapToRadarManager) init];
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA5D470);
  v7 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v8 = [v7 pathComponents];
  v9 = sub_1CF9E6D48();

  v10 = *v9->tree;
  v9, v11, v12, v13, v14, v15, v16, v17;
  v18 = v7;
  if (v10 >= 2)
  {
    v18 = [v7 stringByDeletingLastPathComponent];
    if (!v18)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;
      v18 = sub_1CF9E6888();
      v20, v21, v22, v23, v24, v25, v26, v27;
    }
  }

  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;

  MEMORY[0x1D3868CC0](v28, v30);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v38 = sub_1CF4C3B5C(v119, v120);
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  sub_1CF9E7948();
  0xE000000000000000, v48, v49, v50, v51, v52, v53, v54;
  v55 = [v7 fp_obfuscatedProviderDomainID];
  v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v58 = v57;

  MEMORY[0x1D3868CC0](v56, v58);
  v58, v59, v60, v61, v62, v63, v64, v65;
  MEMORY[0x1D3868CC0](0x203A726F7272450ALL, 0xE800000000000000);
  v66 = sub_1CF9E57E8();
  v67 = [v66 fp_prettyDescription];

  v68 = [v67 description];
  v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v71 = v70;

  MEMORY[0x1D3868CC0](v69, v71);
  v71, v72, v73, v74, v75, v76, v77, v78;
  v79 = sub_1CF9E6888();
  0xE000000000000000, v80, v81, v82, v83, v84, v85, v86;
  v87 = sub_1CF9E6888();
  0x80000001CFA5D4B0, v88, v89, v90, v91, v92, v93, v94;
  sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
  v95 = sub_1CF9E6D28();
  sub_1CF9E5A58();
  v96 = sub_1CF9E6D28();
  v97 = sub_1CF9E6888();
  v98 = v7;
  v99 = [v98 pathComponents];
  v100 = sub_1CF9E6D48();

  v101 = *v100->tree;
  v100, v102, v103, v104, v105, v106, v107, v108;
  if (v101 >= 2)
  {
    v109 = [v98 stringByDeletingLastPathComponent];
    if (!v109)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v111 = v110;
      v109 = sub_1CF9E6888();
      v111, v112, v113, v114, v115, v116, v117, v118;
    }

    v98 = v109;
  }

  [v6 requestTapToRadarWithTitle:v79 description:v87 keywords:v95 attachments:v96 displayReason:v97 providerID:v98];
}

uint64_t sub_1CF82FCA4(unint64_t a1)
{
  v35 = a1;
  v2 = sub_1CF9E6938();
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v18 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v17 + v18, v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    return sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v20 = v34;
  v33 = v2;
  (*(v8 + 16))(v10, v6, v7);
  sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5958();
  v21 = *(v8 + 8);
  v21(v10, v7);
  (*(v8 + 32))(v16, v13, v7);
  v22 = sub_1CF96AA40(v35);
  v24 = v23;
  v37 = v22;
  v38 = v23;
  v25 = v36;
  sub_1CF9E6918();
  sub_1CEFE4E68();
  sub_1CF9E7688();
  (*(v20 + 8))(v25, v33);
  v24, v26, v27, v28, v29, v30, v31, v32;
  return (v21)(v16, v7);
}

uint64_t sub_1CF830018()
{
  v1 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v16 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v15 + v16, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v6 + 48))(v4, 1, v5))
  {
    sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
    return 0;
  }

  else
  {
    (*(v6 + 16))(v8, v4, v5);
    sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF9E5958();
    v17 = *(v6 + 8);
    v17(v8, v5);
    (*(v6 + 32))(v14, v11, v5);
    v19 = sub_1CF9E5A78();
    v21 = v20;
    sub_1CEFE42D4(v19, v20);
    sub_1CF826254(10000, v19, v21, v25);
    v22 = v25[0];
    v23 = v25[1];
    sub_1CF9E6918();
    v24 = sub_1CF9E68D8();
    sub_1CEFE4714(v22, v23);
    sub_1CEFE4714(v19, v21);
    v17(v14, v5);
    return v24;
  }
}

uint64_t sub_1CF83037C()
{
  v25[4] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25[-1] - v2;
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25[-1] - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25[-1] - v12;
  v14 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
  v15 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v14 + v15, v3, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v5 + 48))(v3, 1, v4))
  {
    return sub_1CEFCCC44(v3, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  (*(v5 + 16))(v7, v3, v4);
  sub_1CEFCCC44(v3, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CF9E5958();
  v17 = *(v5 + 8);
  v17(v7, v4);
  (*(v5 + 32))(v13, v10, v4);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v19 = sub_1CF9E5928();
  v25[0] = 0;
  v20 = [v18 removeItemAtURL:v19 error:v25];

  if (v20)
  {
    v21 = v25[0];
  }

  else
  {
    v22 = v25[0];
    v23 = sub_1CF9E57F8();

    swift_willThrow();
  }

  return (v17)(v13, v4);
}

uint64_t sub_1CF8306AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v108 = sub_1CF9E6118();
  v111 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v100 - v10;
  v11 = sub_1CF9E5A58();
  v114 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v100 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v116 = &v100 - v18;
  v19 = sub_1CF9E5D98();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v25 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v100 - v28;
  if (!a1)
  {
    v30 = a2;
    sub_1CF82ED30(a2, 7498084, 0xE300000000000000, 0);
    goto LABEL_7;
  }

  v103 = v27;
  v104 = v20;
  v105 = v19;
  v30 = a2;
  sub_1CF82ED30(a2, 7498084, 0xE300000000000000, *(a1 + qword_1EDEBBDE0));
  v31 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (v31)
  {
    v100 = a2;
    v102 = v11;
    v32 = qword_1EDEBBDA8;
    swift_beginAccess();
    v101 = a1;
    sub_1CEFCCBDC(a1 + v32, v29, &unk_1EC4BEDE0, qword_1CF9FA390);
    v33 = *(v31 + 16);
    v34 = qword_1EDEBBDA8;
    swift_beginAccess();
    v35 = *(v22 + 48);
    sub_1CEFCCBDC(v29, v24, &unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CEFCCBDC(v33 + v34, &v24[v35], &unk_1EC4BEDE0, qword_1CF9FA390);
    v36 = v104;
    v37 = v104[6];
    v38 = v105;
    if (v37(v24, 1, v105) == 1)
    {
      sub_1CEFCCC44(v29, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v37(&v24[v35], 1, v38) == 1)
      {
        sub_1CEFCCC44(v24, &unk_1EC4BEDE0, qword_1CF9FA390);
        v11 = v102;
        a1 = v101;
        v30 = v100;
        goto LABEL_7;
      }
    }

    else
    {
      v93 = v103;
      sub_1CEFCCBDC(v24, v103, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v37(&v24[v35], 1, v38) != 1)
      {
        v96 = &v24[v35];
        v97 = v106;
        (v36[4])(v106, v96, v38);
        sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v98 = sub_1CF9E6868();
        v99 = v36[1];
        v99(v97, v38);
        sub_1CEFCCC44(v29, &unk_1EC4BEDE0, qword_1CF9FA390);
        v99(v93, v38);
        result = sub_1CEFCCC44(v24, &unk_1EC4BEDE0, qword_1CF9FA390);
        v11 = v102;
        a1 = v101;
        v30 = v100;
        if ((v98 & 1) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }

      sub_1CEFCCC44(v29, &unk_1EC4BEDE0, qword_1CF9FA390);
      (v36[1])(v93, v38);
    }

    return sub_1CEFCCC44(v24, &qword_1EC4C1108, &qword_1CFA18060);
  }

LABEL_7:
  sub_1CF82FCA4(v30);
  sub_1CF82E208(v116, v115);
  if (a1)
  {
    sub_1CF6C0474();
  }

  v39 = *(v3 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  v40 = v114;
  v41 = v108;
  v42 = v109;
  if (v39)
  {
    *(v39 + 24) = 1;

    sub_1CF8E976C(0);
  }

  v43 = fpfs_current_or_default_log();
  v44 = v113;
  sub_1CF9E6128();
  v45 = *(v40 + 16);
  v106 = (v40 + 16);
  v105 = v45;
  v45(v42, v116, v11);
  v46 = sub_1CF9E6108();
  v47 = sub_1CF9E72C8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v117 = v104;
    *v48 = 136315138;
    v49 = sub_1CF9E5928();
    v50 = v11;
    v51 = [v49 fp_shortDescription];

    v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v53 = v41;
    v55 = v54;

    v11 = v50;
    v109 = *(v114 + 8);
    (v109)(v42, v50);
    v56 = sub_1CEFD0DF0(v52, v55, &v117);
    v57 = v55;
    v41 = v53;
    v57, v58, v59, v60, v61, v62, v63, v64;
    *(v48 + 4) = v56;
    _os_log_impl(&dword_1CEFC7000, v46, v47, "🚮  Delete the FPFS DB %s", v48, 0xCu);
    v65 = v104;
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x1D386CDC0](v65, -1, -1);
    MEMORY[0x1D386CDC0](v48, -1, -1);

    v66 = *(v111 + 8);
    v67 = v113;
    v68 = v53;
  }

  else
  {

    v109 = *(v40 + 8);
    (v109)(v42, v11);
    v66 = *(v111 + 8);
    v67 = v44;
    v68 = v41;
  }

  v113 = v66;
  (v66)(v67, v68);
  v69 = v115;
  v70 = v107;
  sub_1CF8E8D5C(v116);
  v71 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v105(v70, v69, v11);
  v72 = sub_1CF9E6108();
  v73 = sub_1CF9E72C8();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v11;
    v76 = swift_slowAlloc();
    v117 = v76;
    *v74 = 136315138;
    LODWORD(v108) = v73;
    v77 = sub_1CF9E5928();
    v78 = v41;
    v79 = [v77 fp_shortDescription];

    v80 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v82 = v81;

    v41 = v78;
    (v109)(v70, v75);
    v83 = sub_1CEFD0DF0(v80, v82, &v117);
    v82, v84, v85, v86, v87, v88, v89, v90;
    *(v74 + 4) = v83;
    _os_log_impl(&dword_1CEFC7000, v72, v108, "🚮  Delete the FPFS Wharf %s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    v91 = v76;
    v11 = v75;
    MEMORY[0x1D386CDC0](v91, -1, -1);
    v92 = v74;
    v69 = v115;
    MEMORY[0x1D386CDC0](v92, -1, -1);
  }

  else
  {

    (v109)(v70, v11);
  }

  (v113)(v112, v41);
  sub_1CF8E8D5C(v69);
  v95 = v109;
  (v109)(v69, v11);
  return v95(v116, v11);
}

void sub_1CF8312C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong volume];

    if (v2)
    {
      if (([v2 isDefaultVolumeForCurrentPersona] & 1) == 0 && FPFeatureFlagEbihilIsEnabled() && (sub_1CF8313C0() & 1) == 0)
      {
        [v2 removeBrokenEbihilLinksFromRoot];
      }
    }
  }
}

uint64_t sub_1CF8313C0()
{
  v83[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v74 - v5;
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  sub_1CF833880(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v80 = v1;
    (*(v8 + 32))(v13, v6, v7);
    sub_1CF9E5A18();
    v15 = v14;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;
    sub_1CF9E6978();
    v15, v18, v19, v20, v21, v22, v23, v24;
    sub_1CF9E6978();
    v17, v25, v26, v27, v28, v29, v30, v31;
    LODWORD(v15) = fpfs_root_exposure_symlink_xattr_is_equal();

    if (v15)
    {
      v32 = [objc_opt_self() defaultManager];
      v33 = sub_1CF9E5928();
      v83[0] = 0;
      v34 = [v32 removeItemAtURL:v33 error:v83];

      if (v34)
      {
        v35 = *(v8 + 8);
        v36 = v83[0];
        v35(v13, v7);
        return 1;
      }

      v38 = v83[0];
      v39 = sub_1CF9E57F8();

      swift_willThrow();
      v40 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      (*(v8 + 16))(v10, v13, v7);
      v41 = v39;
      v42 = sub_1CF9E6108();
      v43 = sub_1CF9E72A8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v74 = v44;
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v83[0] = v79;
        *v44 = 136315394;
        v76 = v42;
        sub_1CF9E5A18();
        v46 = v45;
        v47 = sub_1CF9E6888();
        v75 = v43;
        v48 = v47;
        v46, v49, v50, v51, v52, v53, v54, v55;
        v56 = [v48 fp_prettyPath];

        v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v59 = v58;

        v77 = *(v8 + 8);
        v77(v10, v7);
        v60 = sub_1CEFD0DF0(v57, v59, v83);
        v59, v61, v62, v63, v64, v65, v66, v67;
        v68 = v74;
        *(v74 + 1) = v60;
        *(v68 + 6) = 2112;
        swift_getErrorValue();
        v69 = Error.prettyDescription.getter(v81, v82);
        *(v68 + 14) = v69;
        v70 = v78;
        *v78 = v69;
        v71 = v76;
        _os_log_impl(&dword_1CEFC7000, v76, v75, "Failed to remove %s domain link, with error %@", v68, 0x16u);
        sub_1CEFCCC44(v70, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v70, -1, -1);
        v72 = v79;
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x1D386CDC0](v72, -1, -1);
        MEMORY[0x1D386CDC0](v68, -1, -1);

        (*(v80 + 8))(v3, v0);
        v77(v13, v7);
      }

      else
      {

        v73 = *(v8 + 8);
        v73(v10, v7);
        (*(v80 + 8))(v3, v0);
        v73(v13, v7);
      }
    }

    else
    {
      (*(v8 + 8))(v13, v7);
    }
  }

  return 0;
}

void sub_1CF8319C0()
{
  v2 = v0;
  v97[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v95 = *(v3 - 8);
  v4 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v89 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v89 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v89 - v11;
  v13 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  v93 = v2;
  v91 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
  }

  v15 = Strong;
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v12;
  v94 = v3;
  v16 = [Strong nsDomain];
  v17 = [v16 personaIdentifier];

  if (v17)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v89 - 2) = v13;
  *(&v89 - 1) = v15;
  v21 = v96;
  sub_1CF825834(v20, sub_1CF8E4E70, (&v89 - 4), v96);

  v20, v22, v23, v24, v25, v26, v27, v28;
  if (!v1)
  {
    v29 = objc_opt_self();
    v30 = [v29 defaultManager];
    sub_1CF9E5A18();
    v32 = v31;
    v33 = sub_1CF9E6888();
    v32, v34, v35, v36, v37, v38, v39, v40;
    LODWORD(v32) = [v30 fileExistsAtPath_];

    if (v32)
    {
      (*(v95 + 8))(v21, v94);
      return;
    }

    v41 = v93;
    v42 = sub_1CEFCE64C();
    v50 = v94;
    v51 = v95;
    if (*v42->tree)
    {
      v89 = v29;
      v52 = v42;
      (*(v95 + 16))(v7, v42 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), v94);
      v52, v53, v54, v55, v56, v57, v58, v59;
      v60 = *(v51 + 32);
      v61 = v51;
      v62 = v92;
      v60(v92, v7, v50);
      v63 = v96;
      v64 = sub_1CF9E5928();
      v65 = sub_1CF9E5928();
      v66 = [v64 fp:v65 relationshipToItemAtURL:?];

      if (v66 == 1)
      {
        v67 = *(v61 + 8);
        v67(v62, v50);
        v67(v63, v50);
        return;
      }

      v68 = swift_unknownObjectWeakLoadStrong();
      v51 = v61;
      v69 = v89;
      if (v68)
      {
        v70 = v68;
        v71 = [v68 volume];

        if (v71)
        {
          if (![v71 isDefaultVolumeForCurrentPersona] && FPFeatureFlagEbihilIsEnabled() && (sub_1CF8313C0() & 1) == 0)
          {
            [v71 removeBrokenEbihilLinksFromRoot];
          }
        }
      }

      v72 = [v69 defaultManager];
      v73 = sub_1CF9E5928();
      v74 = v96;
      v75 = sub_1CF9E5928();
      v97[0] = 0;
      v76 = [v72 moveItemAtURL:v73 toURL:v75 error:v97];

      if ((v76 & 1) == 0)
      {
        v87 = v97[0];
        sub_1CF9E57F8();

        swift_willThrow();
        v88 = *(v51 + 8);
        v88(v92, v50);
        v88(v74, v50);
        return;
      }

      v77 = *(v51 + 8);
      v78 = v97[0];
      v77(v92, v50);
      v41 = v93;
    }

    else
    {
      v42, v43, v44, v45, v46, v47, v48, v49;
    }

    v92 = *&v41[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v79 = swift_unknownObjectWeakLoadStrong();
    if (v79)
    {
      v80 = v79;
      v81 = [v79 log];
    }

    else
    {
      v81 = 0;
    }

    v82 = v90;
    (*(v51 + 16))(v90, v96, v50);
    v83 = (*(v51 + 80) + 24) & ~*(v51 + 80);
    v84 = swift_allocObject();
    v85 = v93;
    *(v84 + 16) = v93;
    (*(v51 + 32))(v84 + v83, v82, v50);
    *(v84 + ((v4 + v83 + 7) & 0xFFFFFFFFFFFFFFF8)) = MEMORY[0x1E69E7CC0];
    v86 = v85;
    sub_1CF01001C(v81, "updateRootAfterDomainChange()", 29, 2, sub_1CF8E4E8C, v84);

    (*(v51 + 8))(v96, v50);
  }
}

void sub_1CF83204C(char *a1, uint64_t a2, uint64_t a3)
{
  v51 = a1;
  v52 = a2;
  v53 = a3;
  sub_1CF052DA4(a1, sub_1CF902220);
  v5 = objc_sync_enter(a1);
  if (v5)
  {
    goto LABEL_12;
  }

  v6 = *&a1[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];

  v7 = objc_sync_exit(a1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    v46 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v45, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (v6 || (MEMORY[0x1EEE9AC00](v7), v46 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4C28, &qword_1CFA17E60), sub_1CF9E7398(), (v6 = aBlock) != 0))
  {
    type metadata accessor for VFSFileTree(0);
    v8 = swift_dynamicCastClassUnconditional();
    v50 = v48;
    MEMORY[0x1EEE9AC00](v8);
    v46 = v6;
    v47 = a2;
    v10 = v9;
    v11 = fpfs_current_log();
    v49 = fpfs_adopt_log();
    v62 = 0;
    v63 = 1;
    aBlock = sub_1CF9E73C8();
    v55 = v12;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v13 = sub_1CF9E7988();
    v15 = v14;
    MEMORY[0x1D3868CC0](v13);
    v15, v16, v17, v18, v19, v20, v21, v22;
    v23 = v55;
    sub_1CF9E6978();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = __fp_log_fork();

    v48[1] = v45;
    v62 = v31;
    v63 = 0;
    MEMORY[0x1EEE9AC00](v32);
    v41[2] = v11;
    v41[3] = &v62;
    v41[4] = v10;
    v41[5] = "updateRootAfterDomainChange()";
    v41[6] = 29;
    v42 = 2;
    v43 = sub_1CF902240;
    v44 = v45;
    v61 = 1;
    v60 = 0;
    v33 = swift_allocObject();
    v33[2] = &v61;
    v33[3] = sub_1CF2BA13C;
    v33[4] = v41;
    v33[5] = &v60;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1CF2BA170;
    *(v34 + 24) = v33;
    v58 = sub_1CF1C0B54;
    v59 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v55 = 1107296256;
    v56 = sub_1CEFFD02C;
    v57 = &block_descriptor_6084;
    v35 = _Block_copy(&aBlock);

    FPDispatchAsyncAndWait(v10, v35);
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
    }

    else
    {
      v36 = v60;
      if (v60)
      {
        swift_willThrow();

        v39 = v49;
        v40 = fpfs_adopt_log();

        aBlock = 0;
        v55 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA5F100);
        v62 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        sub_1CF9E7B58();
        LODWORD(v47) = 0;
        v46 = 842;
        sub_1CF9E7B68();
        __break(1u);
        return;
      }

      if ((v61 & 1) == 0)
      {

        v37 = v49;
        v38 = fpfs_adopt_log();

        sub_1CF832910();

        return;
      }
    }

    __break(1u);
LABEL_12:
    MEMORY[0x1EEE9AC00](v5);
    v46 = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v45, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }
}

void sub_1CF8325F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CF9FA450;
  (*(v6 + 16))(v8 + v7, a2, v5);

  sub_1CF000FB8(v9);
  v10 = a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
  v11 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
  *v10 = v8;
  v12 = *(v10 + 8);
  *(v10 + 8) = 0;
  sub_1CF8F0650(v11, v12, v13, v14, v15, v16, v17, v18);
}

double sub_1CF832728(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VFSFileTree(0);
  swift_dynamicCastClassUnconditional();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CF9FA450;
  (*(v4 + 16))(v6 + v5, a2, v3);

  sub_1CF261A18(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return result;
}

void sub_1CF832910()
{
  v258 = sub_1CF9E6118();
  v0 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v257 = (&v248 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v254 = &v248 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v256 = &v248 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v255 = &v248 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v248 - v9;
  v259 = sub_1CF9E5A58();
  v11 = *(v259 - 8);
  MEMORY[0x1EEE9AC00](v259);
  v13 = &v248 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v248 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v248 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v248 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v248 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v260 = &v248 - v27;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v261 = [Strong volume];

    if (v261)
    {
      v253 = v11;
      v30 = sub_1CEFCE64C();
      if (*v30->tree)
      {
        v251 = v0;
        v252 = v25;
        v39 = v253;
        v40 = v30 + ((*(v253 + 80) + 32) & ~*(v253 + 80));
        v41 = v30;
        v42 = v259;
        v43 = v260;
        v249 = *(v253 + 16);
        v250 = v253 + 16;
        v249(v260, v40, v259);
        v41, v44, v45, v46, v47, v48, v49, v50;
        if ([v261 isDefaultVolumeForCurrentPersona])
        {
          (*(v39 + 8))(v43, v42);

          return;
        }

        sub_1CF833880(v10);
        if ((*(v39 + 48))(v10, 1, v42) == 1)
        {
          (*(v39 + 8))(v260, v42);

          sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
          return;
        }

        v51 = v252;
        (*(v39 + 32))(v252, v10, v42);
        v52 = [v261 root];
        v53 = v260;
        if (!v52)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v55 = v54;
          v52 = sub_1CF9E6888();
          v55, v56, v57, v58, v59, v60, v61, v62;
        }

        sub_1CF9E5A18();
        v64 = v63;
        v65 = sub_1CF9E6888();
        v64, v66, v67, v68, v69, v70, v71, v72;
        v73 = [v52 fp:v65 relativePathWithRealpath:?];

        if (v73)
        {
          v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v76 = v75;

          sub_1CF9E5A18();
          v78 = v77;
          v79 = sub_1CF9E6978();
          v80 = sub_1CF9E6978();
          v78, v81, v82, v83, v84, v85, v86, v87;
          LODWORD(v78) = symlink((v79 + 32), (v80 + 32));

          if (!v78)
          {
            v76, v89, v90, v91, v92, v93, v94, v95;
            sub_1CF9E5A18();
            v159 = v158;
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v161 = v160;
            sub_1CF9E6978();
            v159, v162, v163, v164, v165, v166, v167, v168;
            sub_1CF9E6978();
            v161, v169, v170, v171, v172, v173, v174, v175;
            v176 = fpfs_set_root_exposure_symlink_xattr();

            if (!v176)
            {

              v246 = *(v253 + 8);
              v247 = v259;
              v246(v51, v259);
              v246(v260, v247);
              return;
            }

            v177 = fpfs_current_or_default_log();
            v178 = v254;
            sub_1CF9E6128();
            v179 = v51;
            v180 = v51;
            v181 = v259;
            v249(v16, v179, v259);
            v182 = sub_1CF9E6108();
            v183 = sub_1CF9E72A8();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v185 = swift_slowAlloc();
              v262[0] = v185;
              *v184 = 136315650;
              *(v184 + 4) = sub_1CEFD0DF0(0xD000000000000023, 0x80000001CFA5F0A0, v262);
              *(v184 + 12) = 2080;
              v186 = sub_1CF9E5928();
              v187 = [v186 fp_shortDescription];

              v188 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v190 = v189;

              v191 = *(v253 + 8);
              v191(v16, v181);
              v192 = sub_1CEFD0DF0(v188, v190, v262);
              v190, v193, v194, v195, v196, v197, v198, v199;
              *(v184 + 14) = v192;
              *(v184 + 22) = 1024;
              *(v184 + 24) = MEMORY[0x1D38683F0]();
              _os_log_impl(&dword_1CEFC7000, v182, v183, "%s xattr wasn't set in %s: %{darwin.errno}d", v184, 0x1Cu);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v185, -1, -1);
              MEMORY[0x1D386CDC0](v184, -1, -1);

              (*(v251 + 8))(v254, v258);
              v191(v252, v181);
              v191(v260, v181);
              return;
            }

            v235 = *(v253 + 8);
            v235(v16, v181);
            (*(v251 + 8))(v178, v258);
            v235(v180, v181);
            v236 = v260;
            v245 = v181;
            goto LABEL_33;
          }

          if (MEMORY[0x1D38683F0](v88) == 17)
          {
            v76, v96, v97, v98, v99, v100, v101, v102;
            v103 = fpfs_current_or_default_log();
            v104 = v255;
            sub_1CF9E6128();
            v105 = v259;
            v249(v22, v51, v259);
            v106 = sub_1CF9E6108();
            v107 = sub_1CF9E72A8();
            if (os_log_type_enabled(v106, v107))
            {
              v108 = swift_slowAlloc();
              v257 = swift_slowAlloc();
              v262[0] = v257;
              *v108 = 136315138;
              v109 = sub_1CF9E5928();
              v110 = [v109 fp_shortDescription];

              v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v113 = v112;

              v114 = *(v253 + 8);
              v114(v22, v105);
              v115 = sub_1CEFD0DF0(v111, v113, v262);
              v113, v116, v117, v118, v119, v120, v121, v122;
              *(v108 + 4) = v115;
              _os_log_impl(&dword_1CEFC7000, v106, v107, "There is already a file in %s, cannot create new domain link", v108, 0xCu);
              v123 = v257;
              __swift_destroy_boxed_opaque_existential_1(v257);
              MEMORY[0x1D386CDC0](v123, -1, -1);
              MEMORY[0x1D386CDC0](v108, -1, -1);

              (*(v251 + 8))(v255, v258);
              v114(v51, v105);
              v114(v260, v105);
            }

            else
            {

              v237 = *(v253 + 8);
              v237(v22, v105);
              (*(v251 + 8))(v104, v258);
              v237(v51, v105);
              v237(v260, v105);
            }

            return;
          }

          v200 = fpfs_current_or_default_log();
          v201 = v256;
          sub_1CF9E6128();
          v126 = v259;
          v249(v19, v51, v259);

          v202 = sub_1CF9E6108();
          v203 = sub_1CF9E72A8();
          v76, v204, v205, v206, v207, v208, v209, v210;
          if (os_log_type_enabled(v202, v203))
          {
            v211 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            v262[0] = v257;
            *v211 = 136315650;
            LODWORD(v255) = v203;
            v212 = sub_1CF9E5928();
            v213 = [v212 fp_shortDescription];

            v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v216 = v215;

            v217 = *(v253 + 8);
            v217(v19, v126);
            v218 = sub_1CEFD0DF0(v214, v216, v262);
            v216, v219, v220, v221, v222, v223, v224, v225;
            *(v211 + 4) = v218;
            *(v211 + 12) = 2080;
            v226 = sub_1CEFD0DF0(v74, v76, v262);
            v76, v227, v228, v229, v230, v231, v232, v233;
            *(v211 + 14) = v226;
            *(v211 + 22) = 1024;
            *(v211 + 24) = MEMORY[0x1D38683F0]();
            _os_log_impl(&dword_1CEFC7000, v202, v255, "cannot create symlink in %s to %s: %{darwin.errno}d", v211, 0x1Cu);
            v234 = v257;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v234, -1, -1);
            MEMORY[0x1D386CDC0](v211, -1, -1);

            (*(v251 + 8))(v256, v258);
            v217(v252, v126);
            v217(v260, v126);
            return;
          }

          v76, v238, v239, v240, v241, v242, v243, v244;
          v235 = *(v253 + 8);
          v235(v19, v126);
          (*(v251 + 8))(v201, v258);
          v235(v51, v126);
          v236 = v260;
        }

        else
        {
          v124 = fpfs_current_or_default_log();
          v125 = v257;
          sub_1CF9E6128();
          v126 = v259;
          v249(v13, v53, v259);
          v127 = v261;
          v128 = sub_1CF9E6108();
          v129 = sub_1CF9E72A8();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v261 = swift_slowAlloc();
            v262[0] = v261;
            *v130 = 136315394;
            LODWORD(v255) = v129;
            v131 = sub_1CF9E5928();
            v132 = [v131 fp_shortDescription];

            v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v135 = v134;

            v256 = *(v253 + 8);
            (v256)(v13, v126);
            v136 = sub_1CEFD0DF0(v133, v135, v262);
            v135, v137, v138, v139, v140, v141, v142, v143;
            *(v130 + 4) = v136;
            *(v130 + 12) = 2080;
            v144 = [v127 root];
            v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v147 = v146;

            v148 = sub_1CEFD0DF0(v145, v147, v262);
            v147, v149, v150, v151, v152, v153, v154, v155;
            *(v130 + 14) = v148;
            _os_log_impl(&dword_1CEFC7000, v128, v255, "failed to calculate sync root %s relative path to volume root %s", v130, 0x16u);
            v156 = v261;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v156, -1, -1);
            MEMORY[0x1D386CDC0](v130, -1, -1);

            (*(v251 + 8))(v257, v258);
            v157 = v256;
            (v256)(v252, v126);
            (v157)(v53, v126);
            return;
          }

          v235 = *(v253 + 8);
          v235(v13, v126);
          (*(v251 + 8))(v125, v258);
          v235(v51, v126);
          v236 = v53;
        }

        v245 = v126;
LABEL_33:
        v235(v236, v245);
        return;
      }

      v30, v31, v32, v33, v34, v35, v36, v37;
      v38 = v261;
    }
  }
}

uint64_t sub_1CF833880@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v67 - v3;
  v5 = sub_1CF9E5868();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v67 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v67 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v70 = v4;
    v71 = v6;
    v72 = v5;
    v73 = a1;
    v19 = Strong;
    v20 = [Strong volume];

    v21 = [v20 root];
    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v24 = v23;

    v25 = sub_1CEFCE64C();
    v69 = v22;
    if (*v25->tree)
    {
      v42 = v25;
      (*(v74 + 16))(v14, v25 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v9);
      v42, v43, v44, v45, v46, v47, v48, v49;
      (*(v74 + 32))(v17, v14, v9);
      v50 = *MEMORY[0x1E6968F58];
      v51 = v71;
      v67[0] = *(v71 + 104);
      v52 = v72;
      (v67[0])(v8, v50);
      v53 = *(v74 + 56);
      v67[1] = v74 + 56;
      v68 = v53;
      v53(v70, 1, 1, v9);
      sub_1CF9E5A38();
      v54 = sub_1CF9E58E8();
      v56 = v55;
      v75 = v54;
      v76 = v55;
      v57 = v52;
      (v67[0])(v8, *MEMORY[0x1E6968F68], v52);
      sub_1CEFE4E68();
      v58 = v73;
      sub_1CF9E5A48();
      (*(v51 + 8))(v8, v57);
      v59 = *(v74 + 8);
      v74 += 8;
      v59(v11, v9);
      v59(v17, v9);
      v56, v60, v61, v62, v63, v64, v65, v66;
      return v68(v58, 0, 1, v9);
    }

    v25, v26, v27, v28, v29, v30, v31, v32;
    v24, v33, v34, v35, v36, v37, v38, v39;
    a1 = v73;
  }

  v40 = *(v74 + 56);

  return v40(a1, 1, 1, v9);
}

void sub_1CF833CE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1CF9E79E8();
  v331 = *(v6 - 8);
  v332 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v350 = (&v328 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v337 = &v328 - v9;
  v10 = sub_1CF9E53C8();
  v335 = *(v10 - 8);
  v336 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v334 = &v328 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E6118();
  v352 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v345 = &v328 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v328 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v351 = &v328 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v333 = &v328 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v341 = &v328 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v330 = &v328 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v340 = &v328 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v339 = &v328 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v342 = &v328 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v338 = &v328 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v344 = &v328 - v34;
  v35 = sub_1CF9E5D98();
  v347 = *(v35 - 8);
  v348 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v343 = &v328 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v328 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = &v328 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v328 - v44;
  v353 = a1;
  if (!a1)
  {
    goto LABEL_18;
  }

  v349 = v12;
  v346 = v3;
  v46 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
  if (v46)
  {
    v328 = v16;
    v329 = a2;
    v47 = qword_1EDEBBDA8;
    v48 = v353;
    swift_beginAccess();
    sub_1CEFCCBDC(v48 + v47, v45, &unk_1EC4BEDE0, qword_1CF9FA390);
    v49 = *(v46 + 16);
    v50 = qword_1EDEBBDA8;
    swift_beginAccess();
    v51 = *(v37 + 48);
    sub_1CEFCCBDC(v45, v39, &unk_1EC4BEDE0, qword_1CF9FA390);
    sub_1CEFCCBDC(v49 + v50, &v39[v51], &unk_1EC4BEDE0, qword_1CF9FA390);
    v52 = v347;
    v53 = v348;
    v54 = *(v347 + 48);
    if (v54(v39, 1, v348) == 1)
    {
      sub_1CEFCCC44(v45, &unk_1EC4BEDE0, qword_1CF9FA390);
      v55 = v54(&v39[v51], 1, v53);
      a2 = v329;
      if (v55 == 1)
      {
        sub_1CEFCCC44(v39, &unk_1EC4BEDE0, qword_1CF9FA390);
        v16 = v328;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1CEFCCBDC(v39, v42, &unk_1EC4BEDE0, qword_1CF9FA390);
      if (v54(&v39[v51], 1, v53) != 1)
      {
        v66 = v343;
        (*(v52 + 32))(v343, &v39[v51], v53);
        sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v67 = sub_1CF9E6868();
        v68 = *(v52 + 8);
        v68(v66, v53);
        sub_1CEFCCC44(v45, &unk_1EC4BEDE0, qword_1CF9FA390);
        v68(v42, v53);
        sub_1CEFCCC44(v39, &unk_1EC4BEDE0, qword_1CF9FA390);
        v16 = v328;
        a2 = v329;
        if (v67)
        {
          goto LABEL_13;
        }

LABEL_9:
        v56 = fpfs_current_or_default_log();
        v57 = v345;
        sub_1CF9E6128();
        v58 = a2;
        v59 = sub_1CF9E6108();
        v60 = sub_1CF9E72A8();

        v61 = os_log_type_enabled(v59, v60);
        v62 = v352;
        if (v61)
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138412290;
          swift_getErrorValue();
          v65 = Error.prettyDescription.getter(v354, v355);
          *(v63 + 4) = v65;
          *v64 = v65;
          _os_log_impl(&dword_1CEFC7000, v59, v60, "ignoring error on obsolete database: %@", v63, 0xCu);
          sub_1CEFCCC44(v64, &qword_1EC4BE350, &unk_1CF9FC3B0);
          v62 = v352;
          MEMORY[0x1D386CDC0](v64, -1, -1);
          MEMORY[0x1D386CDC0](v63, -1, -1);
        }

        (*(v62 + 8))(v57, v349);
        return;
      }

      sub_1CEFCCC44(v45, &unk_1EC4BEDE0, qword_1CF9FA390);
      (*(v52 + 8))(v42, v53);
      a2 = v329;
    }

    sub_1CEFCCC44(v39, &qword_1EC4C1108, &qword_1CFA18060);
    goto LABEL_9;
  }

LABEL_13:
  if (*(v353 + qword_1EDEBBE10) == 1)
  {
    v69 = fpfs_current_or_default_log();
    v70 = v344;
    sub_1CF9E6128();
    v71 = a2;
    v72 = sub_1CF9E6108();
    v73 = sub_1CF9E72A8();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v352;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      swift_getErrorValue();
      v78 = Error.prettyDescription.getter(v356, v357);
      *(v76 + 4) = v78;
      *v77 = v78;
      _os_log_impl(&dword_1CEFC7000, v72, v73, "ignoring error on discarded database: %@", v76, 0xCu);
      sub_1CEFCCC44(v77, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v77, -1, -1);
      MEMORY[0x1D386CDC0](v76, -1, -1);
    }

    (*(v75 + 8))(v70, v349);
    return;
  }

  *(v353 + qword_1EDEBBE10) = 1;
  v12 = v349;
  v3 = v346;
LABEL_18:
  v79 = a2;
  v369 = a2;
  v80 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v81 = swift_dynamicCast();
  v82 = v350;
  v83 = v351;
  if (v81)
  {
    if (v368 - 1 <= 1)
    {
      v84 = v367[0];

      sub_1CF833CE4(v353, v84);
      return;
    }

    sub_1CF47FB38(v367);
  }

  v85 = v16;

  v367[0] = a2;
  v86 = a2;
  v87 = swift_dynamicCast();

  if (v87)
  {
    return;
  }

  v369 = a2;
  v88 = a2;
  if (swift_dynamicCast())
  {
    if (v368 == 3)
    {
      if (sub_1CF828E4C())
      {
        v349 = v12;
        v89 = sub_1CF9E57E8();
        v90 = fpfs_current_or_default_log();
        v91 = v338;
        sub_1CF9E6128();
        v92 = v89;
        v93 = a2;
        v94 = v92;
        v95 = v3;
        v96 = sub_1CF9E6108();
        v97 = v79;
        v98 = sub_1CF9E72B8();

        if (os_log_type_enabled(v96, v98))
        {
          v99 = swift_slowAlloc();
          v350 = swift_slowAlloc();
          v351 = swift_slowAlloc();
          v360[0] = v351;
          *v99 = 136315906;
          v100 = [*&v95[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
          v101 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v103 = v102;

          v104 = sub_1CEFD0DF0(v101, v103, v360);
          v103, v105, v106, v107, v108, v109, v110, v111;
          *(v99 + 4) = v104;
          *(v99 + 12) = 2082;
          v112 = [v94 domain];
          v113 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v115 = v114;

          v116 = sub_1CEFD0DF0(v113, v115, v360);
          v115, v117, v118, v119, v120, v121, v122, v123;
          *(v99 + 14) = v116;
          *(v99 + 22) = 2050;
          v124 = [v94 code];

          *(v99 + 24) = v124;
          *(v99 + 32) = 2112;
          v79 = v97;
          swift_getErrorValue();
          v125 = Error.prettyDescription.getter(v358, v359);
          *(v99 + 34) = v125;
          v126 = v350;
          *v350 = v125;
          _os_log_impl(&dword_1CEFC7000, v96, v98, "  🚚  cannot initialize the database for domain %s, disconnecting domain (needs reimport).  Error domain: %{public}s. Error code: %{public}ld.  Error description: %@", v99, 0x2Au);
          sub_1CEFCCC44(v126, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v126, -1, -1);
          v127 = v351;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v127, -1, -1);
          MEMORY[0x1D386CDC0](v99, -1, -1);

          (*(v352 + 8))(v338, v349);
        }

        else
        {

          (*(v352 + 8))(v91, v349);
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v186 = Strong;
          v187 = [Strong log];
        }

        else
        {
          v187 = 0;
        }

        v193 = swift_allocObject();
        *(v193 + 16) = v353;

        sub_1CF01001C(v187, "handleDatabaseError(db:error:)", 30, 2, sub_1CF902E38, v193);

        v194 = sub_1CF9E57E8();
        v195 = FPDomainUnavailableErrorWithUnderlyingError();

        if (v195)
        {

          v196 = *&v95[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus];
          *&v95[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = v195;
          sub_1CF8F89F4(v196);

          return;
        }

        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      sub_1CF47FB38(v367);
    }
  }

  v346 = v3;

  _s3__C4CodeOMa_0(0);
  v367[0] = 5;
  sub_1CEFCCCA4(&unk_1EC4BD5E0, _s3__C4CodeOMa_0, &unk_1CF9F9D7C);
  if (sub_1CF9E5658())
  {
    v128 = fpfs_current_or_default_log();
    v129 = v342;
    sub_1CF9E6128();
    v130 = sub_1CF9E6108();
    v131 = sub_1CF9E72A8();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = v12;
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_1CEFC7000, v130, v131, "🔐  the database is still locked, retrying", v133, 2u);
      v134 = v133;
      v12 = v132;
      MEMORY[0x1D386CDC0](v134, -1, -1);
    }

    (*(v352 + 8))(v129, v12);
    v135 = *&v346[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus];
    *&v346[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = v79 | 0x4000000000000000;
    goto LABEL_33;
  }

  swift_getErrorValue();
  v137 = sub_1CF4C33FC(v365, v366);
  v349 = v12;
  if ((v137 & 1) == 0)
  {
    swift_getErrorValue();
    sub_1CF4C2DD8(v363, v364);
    if ((v138 & 1) == 0)
    {
      v369 = a2;
      v168 = a2;
      if (swift_dynamicCast())
      {
        v169 = a2;
        sub_1CF47FB38(v367);

        v170 = v346;
      }

      else
      {

        v367[0] = a2;
        v191 = a2;
        type metadata accessor for PQLSqliteError(0);
        v192 = swift_dynamicCast();
        v170 = v346;
        if (v192)
        {
          v169 = a2;
        }

        else
        {

          v367[0] = a2;
          v197 = a2;
          v198 = v332;
          v169 = a2;
          if (!swift_dynamicCast())
          {

            v245 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
            if ((~*&v170[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) == 0)
            {
              v246 = fpfs_current_or_default_log();
              sub_1CF9E6128();
              v247 = a2;
              v248 = v170;
              v249 = sub_1CF9E6108();
              v250 = sub_1CF9E72B8();

              if (os_log_type_enabled(v249, v250))
              {
                v251 = swift_slowAlloc();
                v348 = swift_slowAlloc();
                v350 = swift_slowAlloc();
                v367[0] = v350;
                *v251 = 136315394;
                v252 = [*&v248[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
                v253 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v255 = v254;

                v256 = sub_1CEFD0DF0(v253, v255, v367);
                v255, v257, v258, v259, v260, v261, v262, v263;
                *(v251 + 4) = v256;
                *(v251 + 12) = 2112;
                swift_getErrorValue();
                v264 = Error.prettyDescription.getter(v361, v362);
                *(v251 + 14) = v264;
                v265 = v348;
                *v348 = v264;
                _os_log_impl(&dword_1CEFC7000, v249, v250, "cannot initialize database error for domain %s, disabling the domain: %@", v251, 0x16u);
                sub_1CEFCCC44(v265, &qword_1EC4BE350, &unk_1CF9FC3B0);
                v79 = v169;
                MEMORY[0x1D386CDC0](v265, -1, -1);
                v266 = v350;
                __swift_destroy_boxed_opaque_existential_1(v350);
                MEMORY[0x1D386CDC0](v266, -1, -1);
                MEMORY[0x1D386CDC0](v251, -1, -1);

                (*(v352 + 8))(v351, v349);
              }

              else
              {

                (*(v352 + 8))(v83, v349);
              }

              v317 = swift_unknownObjectWeakLoadStrong();
              if (v317)
              {
                v318 = v317;
                v319 = [v317 log];
              }

              else
              {
                v319 = 0;
              }

              v320 = swift_allocObject();
              *(v320 + 16) = v353;

              sub_1CF01001C(v319, "handleDatabaseError(db:error:)", 30, 2, sub_1CF8F97A0, v320);

              v135 = *&v346[v245];
              *&v346[v245] = v79;
              goto LABEL_33;
            }

LABEL_81:
            v267 = v169;
            v268 = sub_1CF9E57E8();
            v269 = fpfs_current_or_default_log();
            v270 = v85;
            sub_1CF9E6128();
            v271 = v268;
            v272 = v169;
            v273 = v170;
            v274 = v271;
            v275 = sub_1CF9E6108();
            v276 = sub_1CF9E72B8();

            if (os_log_type_enabled(v275, v276))
            {
              v277 = swift_slowAlloc();
              v350 = swift_slowAlloc();
              v351 = swift_slowAlloc();
              v367[0] = v351;
              *v277 = 136315906;
              v278 = [*&v273[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
              LODWORD(v348) = v276;
              v279 = v278;
              v280 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v282 = v281;

              v283 = sub_1CEFD0DF0(v280, v282, v367);
              v282, v284, v285, v286, v287, v288, v289, v290;
              *(v277 + 4) = v283;
              *(v277 + 12) = 2082;
              v291 = [v274 domain];
              v292 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v294 = v293;

              v295 = sub_1CEFD0DF0(v292, v294, v367);
              v294, v296, v297, v298, v299, v300, v301, v302;
              *(v277 + 14) = v295;
              *(v277 + 22) = 2050;
              v303 = [v274 code];

              *(v277 + 24) = v303;
              *(v277 + 32) = 2112;
              swift_getErrorValue();
              v304 = Error.prettyDescription.getter(v360[26], v360[27]);
              *(v277 + 34) = v304;
              v305 = v350;
              *v350 = v304;
              _os_log_impl(&dword_1CEFC7000, v275, v348, "  🚚  handling database error for domain %s, restarting with a fresh database.  Error domain: %{public}s. Error code: %{public}ld.  Error description: %@", v277, 0x2Au);
              sub_1CEFCCC44(v305, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v305, -1, -1);
              v306 = v351;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v306, -1, -1);
              MEMORY[0x1D386CDC0](v277, -1, -1);
            }

            else
            {
            }

            (*(v352 + 8))(v270, v349);
            v307 = sub_1CF9E6888();
            v308 = sub_1CF9E6888();
            v309 = v274;
            v310 = sub_1CF9E57E8();

            FPCaptureLogsForOperation();
            v311 = swift_unknownObjectWeakLoadStrong();
            if (v311)
            {
              v312 = v311;
              v313 = [v311 log];
            }

            else
            {
              v313 = 0;
            }

            v314 = swift_allocObject();
            v314[2] = v353;
            v314[3] = v273;
            v314[4] = v267;
            v315 = v267;

            v316 = v273;
            sub_1CF01001C(v313, "handleDatabaseError(db:error:)", 30, 2, sub_1CF8F97C8, v314);

            return;
          }

          (*(v331 + 8))(v82, v198);
        }
      }

      v199 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
      if ((~*&v170[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) == 0)
      {
        v79 = v169;
        v200 = sub_1CF9E57E8();
        v201 = fpfs_current_or_default_log();
        v202 = v333;
        sub_1CF9E6128();
        v203 = v200;
        v204 = v169;
        v205 = v170;
        v206 = v203;
        v207 = sub_1CF9E6108();
        v208 = sub_1CF9E72B8();

        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          v348 = swift_slowAlloc();
          v350 = swift_slowAlloc();
          v367[0] = v350;
          *v209 = 136315906;
          v210 = [*&v205[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID] fp_obfuscatedProviderDomainID];
          v211 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v351 = v205;
          v212 = v211;
          v214 = v213;

          v215 = sub_1CEFD0DF0(v212, v214, v367);
          v214, v216, v217, v218, v219, v220, v221, v222;
          *(v209 + 4) = v215;
          *(v209 + 12) = 2082;
          v223 = [v206 domain];
          v224 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v226 = v225;

          v227 = sub_1CEFD0DF0(v224, v226, v367);
          v226, v228, v229, v230, v231, v232, v233, v234;
          *(v209 + 14) = v227;
          *(v209 + 22) = 2050;
          v235 = [v206 code];

          *(v209 + 24) = v235;
          *(v209 + 32) = 2112;
          swift_getErrorValue();
          v236 = Error.prettyDescription.getter(v360[30], v360[31]);
          *(v209 + 34) = v236;
          v237 = v348;
          *v348 = v236;
          _os_log_impl(&dword_1CEFC7000, v207, v208, "  🚚  cannot initialize the database for domain %s, restarting with a fresh database.  Error domain: %{public}s. Error code: %{public}ld.  Error description: %@", v209, 0x2Au);
          sub_1CEFCCC44(v237, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v237, -1, -1);
          v238 = v350;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v238, -1, -1);
          MEMORY[0x1D386CDC0](v209, -1, -1);

          (*(v352 + 8))(v333, v349);
        }

        else
        {

          (*(v352 + 8))(v202, v349);
        }

        v239 = sub_1CF9E6888();
        v240 = sub_1CF9E6888();
        v241 = v206;
        v242 = sub_1CF9E57E8();

        FPCaptureLogsForOperation();
        sub_1CF8306AC(v353, v79 | 0x4000000000000000);

        v135 = *&v346[v199];
        *&v346[v199] = v79 | 0x4000000000000000;
LABEL_33:
        v136 = v79;
        sub_1CF8F89F4(v135);
        return;
      }

      goto LABEL_81;
    }
  }

  v98 = v352;
  swift_getErrorValue();
  sub_1CF4C2DD8(v360[22], v360[23]);
  v139 = v346;
  if ((v140 & 1) == 0)
  {
    v153 = swift_unknownObjectWeakLoadStrong();
    if (!v153 || (v154 = v153, v155 = [v153 volume], v154, LODWORD(v154) = objc_msgSend(v155, sel_isInLowDiskSpaceState), v155, !v154))
    {
      swift_getErrorValue();
      if (sub_1CF4C39BC(v360[18], v360[19]))
      {
        sub_1CF82F828(a2);
      }

      v159 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v160 = a2;
      v161 = sub_1CF9E6108();
      v162 = sub_1CF9E72B8();

      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v163 = 138412290;
        swift_getErrorValue();
        v165 = Error.prettyDescription.getter(v360[14], v360[15]);
        *(v163 + 4) = v165;
        *v164 = v165;
        _os_log_impl(&dword_1CEFC7000, v161, v162, "database encountered a recoverable error, restarting: %@", v163, 0xCu);
        sub_1CEFCCC44(v164, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v164, -1, -1);
        MEMORY[0x1D386CDC0](v163, -1, -1);
      }

      (*(v98 + 8))(v341, v349);
      v166 = v346;
      if ((~*&v346[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) != 0)
      {
        v188 = swift_unknownObjectWeakLoadStrong();
        if (v188)
        {
          v189 = v188;
          v190 = [v188 log];
        }

        else
        {
          v190 = 0;
        }

        v243 = swift_allocObject();
        *(v243 + 16) = v353;
        *(v243 + 24) = v166;

        v244 = v166;
        sub_1CF01001C(v190, "handleDatabaseError(db:error:)", 30, 2, sub_1CF8F981C, v243);
      }

      else
      {
        *&v346[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] = v79 | 0x4000000000000000;
        v167 = v79;
      }

      return;
    }

    v156 = swift_unknownObjectWeakLoadStrong();
    if (v156)
    {
      v157 = v156;
      v158 = [v156 volume];

      [v158 monitorLowDiskSpaceRecovery];
    }
  }

  v141 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus;
  if ((~*&v139[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus] & 0xF000000000000007) != 0)
  {
    v171 = swift_unknownObjectWeakLoadStrong();
    if (!v171)
    {
      goto LABEL_96;
    }

    v94 = v171;
    v172 = [v171 provider];
    if (!v172)
    {
LABEL_95:

LABEL_96:
      v321 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v322 = v79;
      v323 = sub_1CF9E6108();
      v324 = sub_1CF9E72B8();

      if (os_log_type_enabled(v323, v324))
      {
        v325 = swift_slowAlloc();
        v326 = swift_slowAlloc();
        *v325 = 138412290;
        swift_getErrorValue();
        v327 = Error.prettyDescription.getter(v360[6], v360[7]);
        *(v325 + 4) = v327;
        *v326 = v327;
        _os_log_impl(&dword_1CEFC7000, v323, v324, "[diskspace] disk is full, exiting: %@", v325, 0xCu);
        sub_1CEFCCC44(v326, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v326, -1, -1);
        MEMORY[0x1D386CDC0](v325, -1, -1);
      }

      (*(v98 + 8))(v330, v349);
      _Exit(0);
    }

    v173 = v172;
    v174 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v175 = a2;
    v176 = sub_1CF9E6108();
    v177 = sub_1CF9E72B8();

    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *v178 = 138412290;
      swift_getErrorValue();
      v180 = Error.prettyDescription.getter(v360[2], v360[3]);
      *(v178 + 4) = v180;
      *v179 = v180;
      _os_log_impl(&dword_1CEFC7000, v176, v177, "[diskspace] disk is full, reloading the domain: %@", v178, 0xCu);
      sub_1CEFCCC44(v179, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v179, -1, -1);
      MEMORY[0x1D386CDC0](v178, -1, -1);
    }

    (*(v98 + 8))(v340, v349);
    v181 = sub_1CF9E6F08();
    v182 = v337;
    (*(*(v181 - 8) + 56))(v337, 1, 1, v181);
    v183 = swift_allocObject();
    v183[2] = 0;
    v183[3] = 0;
    v183[4] = v173;
    v183[5] = v94;
    v183[6] = v79;
    v184 = v79;
    sub_1CF6FD2DC(0, 0, v182, &unk_1CFA18070, v183);
  }

  else
  {
    v142 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v143 = a2;
    v144 = sub_1CF9E6108();
    v145 = sub_1CF9E72B8();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      *v146 = 138412290;
      swift_getErrorValue();
      v148 = Error.prettyDescription.getter(v360[10], v360[11]);
      *(v146 + 4) = v148;
      *v147 = v148;
      _os_log_impl(&dword_1CEFC7000, v144, v145, "[diskspace] disk is full, restarting: %@", v146, 0xCu);
      sub_1CEFCCC44(v147, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v147, -1, -1);
      MEMORY[0x1D386CDC0](v146, -1, -1);
    }

    (*(v98 + 8))(v339, v349);
    LODWORD(v367[0]) = 28;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v149 = v334;
    v150 = v336;
    sub_1CF9E57D8();
    v151 = sub_1CF9E53A8();
    (*(v335 + 8))(v149, v150);
    v152 = *&v346[v141];
    *&v346[v141] = v151 | 0x4000000000000000;
    sub_1CF8F89F4(v152);
  }
}

uint64_t sub_1CF835EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a1;
  v6[20] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CF835F20, 0, 0);
}

uint64_t sub_1CF835F20()
{
  v1 = *(v0 + 160);
  v2 = [*(v0 + 168) nsDomain];
  *(v0 + 184) = v2;
  v3 = sub_1CF9E57E8();
  *(v0 + 192) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1CF836080;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4ED8, &qword_1CFA18078);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CF836290;
  *(v0 + 104) = &block_descriptor_2073;
  *(v0 + 112) = v4;
  [v1 reloadDomain:v2 unableToStartup:0 startupError:v3 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1CF836080()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1CF836200;
  }

  else
  {
    v2 = sub_1CF836190;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CF836190()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  **(v0 + 152) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CF836200(uint64_t a1)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 184);
  swift_willThrow();

  **(v1 + 152) = 0;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1CF836290(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1CF836360(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5D98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  if (!a1)
  {
    goto LABEL_10;
  }

  v16 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (!v16)
  {
    goto LABEL_10;
  }

  v27 = v7;
  v28 = v13;
  v29 = a2;
  v17 = qword_1EDEBBDA8;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v17, v15, &unk_1EC4BEDE0, qword_1CF9FA390);
  v18 = *(v16 + 16);
  v19 = qword_1EDEBBDA8;
  swift_beginAccess();
  v20 = *(v8 + 48);
  sub_1CEFCCBDC(v15, v10, &unk_1EC4BEDE0, qword_1CF9FA390);
  sub_1CEFCCBDC(v18 + v19, &v10[v20], &unk_1EC4BEDE0, qword_1CF9FA390);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    v22 = v28;
    sub_1CEFCCBDC(v10, v28, &unk_1EC4BEDE0, qword_1CF9FA390);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v23 = v27;
      (*(v5 + 32))(v27, &v10[v20], v4);
      sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v24 = sub_1CF9E6868();
      v25 = *(v5 + 8);
      v25(v23, v4);
      sub_1CEFCCC44(v15, &unk_1EC4BEDE0, qword_1CF9FA390);
      v25(v22, v4);
      sub_1CEFCCC44(v10, &unk_1EC4BEDE0, qword_1CF9FA390);
      if ((v24 & 1) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1CEFCCC44(v15, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v5 + 8))(v22, v4);
LABEL_8:
    sub_1CEFCCC44(v10, &qword_1EC4C1108, &qword_1CFA18060);
    return;
  }

  sub_1CEFCCC44(v15, &unk_1EC4BEDE0, qword_1CF9FA390);
  if (v21(&v10[v20], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1CEFCCC44(v10, &unk_1EC4BEDE0, qword_1CF9FA390);
LABEL_10:
  sub_1CF8367C8(0xD000000000000018, 0x80000001CFA5D3D0, 0xD000000000000013, 0x80000001CFA5D3F0);
}

void sub_1CF8367C8(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18[1] = a3;
  v18[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v18[0] = v18 - v9;
  v10 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startupQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1CF9E64D8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    sub_1CF83F5AC(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF836C10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v57 = a3;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5D98();
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1108, &qword_1CFA18060);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  if (!a1)
  {
    goto LABEL_13;
  }

  v20 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs);
  if (!v20)
  {
    goto LABEL_13;
  }

  v51 = a2;
  v52 = v8;
  v53 = v6;
  v54 = v5;
  v21 = qword_1EDEBBDA8;
  v22 = v17;
  swift_beginAccess();
  v50 = v22;
  sub_1CEFCCBDC(v22 + v21, v19, &unk_1EC4BEDE0, qword_1CF9FA390);
  v23 = *(v20 + 16);
  v24 = qword_1EDEBBDA8;
  swift_beginAccess();
  v25 = *(v11 + 48);
  sub_1CEFCCBDC(v19, v13, &unk_1EC4BEDE0, qword_1CF9FA390);
  sub_1CEFCCBDC(v23 + v24, &v13[v25], &unk_1EC4BEDE0, qword_1CF9FA390);
  v26 = v56;
  v27 = *(v56 + 48);
  if (v27(v13, 1, v9) == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BEDE0, qword_1CF9FA390);
    if (v27(&v13[v25], 1, v9) == 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BEDE0, qword_1CF9FA390);
      v17 = v50;
LABEL_13:
      v38 = v57;
      sub_1CF8306AC(v17, v57);
      v39 = sub_1CF96AA40(v38);
      v41 = v40;
      sub_1CF83F5AC(v39, v40);
      v41, v42, v43, v44, v45, v46, v47, v48;
      return;
    }

    goto LABEL_8;
  }

  sub_1CEFCCBDC(v13, v15, &unk_1EC4BEDE0, qword_1CF9FA390);
  if (v27(&v13[v25], 1, v9) == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BEDE0, qword_1CF9FA390);
    (*(v26 + 8))(v15, v9);
LABEL_8:
    sub_1CEFCCC44(v13, &qword_1EC4C1108, &qword_1CFA18060);
    v29 = v53;
    v28 = v54;
    v30 = v52;
    goto LABEL_9;
  }

  v35 = v55;
  (*(v26 + 32))(v55, &v13[v25], v9);
  sub_1CEFCCCA4(&qword_1EDEAECC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v36 = sub_1CF9E6868();
  v37 = *(v26 + 8);
  v37(v35, v9);
  sub_1CEFCCC44(v19, &unk_1EC4BEDE0, qword_1CF9FA390);
  v37(v15, v9);
  sub_1CEFCCC44(v13, &unk_1EC4BEDE0, qword_1CF9FA390);
  v29 = v53;
  v28 = v54;
  v30 = v52;
  v17 = v50;
  if (v36)
  {
    goto LABEL_13;
  }

LABEL_9:
  v31 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E72A8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "database was already dropped", v34, 2u);
    MEMORY[0x1D386CDC0](v34, -1, -1);
  }

  (*(v29 + 8))(v30, v28);
}

void sub_1CF837198(uint64_t a1)
{
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v73 - v8;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FPFeatureFlagSpaceAttributionIsEnabled())
  {
    if (([objc_opt_self() runningInSyncBubble] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v81 = a1;
        v15 = Strong;
        v82 = [Strong provider];

        v16 = v81;
        if (v82)
        {
          v17 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_saPathManager);
          if (v17)
          {
            v79 = v17;
            v18 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v77 = *(v4 + 16);
            v78 = v4 + 16;
            v77(v9, v16, v3);
            v19 = v82;
            v20 = sub_1CF9E6108();
            v80 = v4;
            v21 = v20;
            v22 = sub_1CF9E7288();
            v82 = v19;

            v76 = v22;
            v23 = v22;
            v24 = v21;
            if (os_log_type_enabled(v21, v23))
            {
              v25 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              aBlock[0] = v75;
              *v25 = 136315394;
              sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
              v74 = v24;
              v26 = sub_1CF9E7F98();
              v28 = v27;
              (*(v80 + 8))(v9, v3);
              v29 = sub_1CEFD0DF0(v26, v28, aBlock);
              v28, v30, v31, v32, v33, v34, v35, v36;
              *(v25 + 4) = v29;
              *(v25 + 12) = 2080;
              v37 = [v82 identifier];
              v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v40 = v39;

              v41 = sub_1CEFD0DF0(v38, v40, aBlock);
              v40, v42, v43, v44, v45, v46, v47, v48;
              *(v25 + 14) = v41;
              v49 = v74;
              _os_log_impl(&dword_1CEFC7000, v74, v76, "Domain Backend: Space Attribution registration for path %s and bundle %s", v25, 0x16u);
              v50 = v75;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v50, -1, -1);
              MEMORY[0x1D386CDC0](v25, -1, -1);

              (*(v11 + 8))(v13, v10);
              v51 = v80;
            }

            else
            {

              v51 = v80;
              (*(v80 + 8))(v9, v3);
              (*(v11 + 8))(v13, v10);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_1CFA00250;
            v54 = objc_allocWithZone(MEMORY[0x1E69D3978]);
            v55 = v81;
            v56 = sub_1CF9E5928();
            v57 = [v54 initWithURL_];

            *(v53 + 32) = v57;
            sub_1CEFD57E0(0, &unk_1EDEA3720, 0x1E69D3978);
            v58 = sub_1CF9E6D28();
            v53, v59, v60, v61, v62, v63, v64, v65;
            v66 = v82;
            v67 = [v82 identifier];
            v77(v6, v55, v3);
            v68 = (*(v51 + 80) + 16) & ~*(v51 + 80);
            v69 = swift_allocObject();
            (*(v51 + 32))(v69 + v68, v6, v3);
            *(v69 + ((v5 + v68 + 7) & 0xFFFFFFFFFFFFFFF8)) = v66;
            aBlock[4] = sub_1CF8F9704;
            aBlock[5] = v69;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1CF00A468;
            aBlock[3] = &block_descriptor_2054;
            v70 = _Block_copy(aBlock);
            v71 = v66;

            v72 = v79;
            [v79 registerPaths:v58 forBundleID:v67 completionHandler:v70];
            _Block_release(v70);
          }

          else
          {
            v52 = v82;
          }
        }
      }
    }
  }
}

uint64_t sub_1CF8377D0(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82[-v11];
  v13 = sub_1CF9E6118();
  v87 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82[-v17];
  if (a1)
  {
    v86 = v13;
    v19 = a1;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v7 + 16))(v12, a2, v6);
    v21 = a1;
    v22 = a3;
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E72B8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v90 = v85;
      *v25 = 136315650;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v26 = sub_1CF9E7F98();
      v83 = v24;
      v28 = v27;
      (*(v7 + 8))(v12, v6);
      v29 = sub_1CEFD0DF0(v26, v28, &v90);
      v28, v30, v31, v32, v33, v34, v35, v36;
      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v37 = [v22 identifier];
      v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v40 = v39;

      v41 = sub_1CEFD0DF0(v38, v40, &v90);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v25 + 14) = v41;
      *(v25 + 22) = 2112;
      swift_getErrorValue();
      v49 = Error.prettyDescription.getter(v88, v89);
      *(v25 + 24) = v49;
      v50 = v84;
      *v84 = v49;
      _os_log_impl(&dword_1CEFC7000, v23, v83, "Domain Backend: Path %s for bundle %s Space Attribution registration error: %@", v25, 0x20u);
      sub_1CEFCCC44(v50, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v50, -1, -1);
      v51 = v85;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v51, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    return (*(v87 + 8))(v18, v86);
  }

  else
  {
    v52 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    (*(v7 + 16))(v9, a2, v6);
    v53 = a3;
    v54 = sub_1CF9E6108();
    v55 = sub_1CF9E7288();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v90 = v85;
      *v56 = 136315394;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v57 = sub_1CF9E7F98();
      v86 = v13;
      v59 = v58;
      (*(v7 + 8))(v9, v6);
      v60 = sub_1CEFD0DF0(v57, v59, &v90);
      v59, v61, v62, v63, v64, v65, v66, v67;
      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v68 = [v53 identifier];
      v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v71 = v70;

      v72 = sub_1CEFD0DF0(v69, v71, &v90);
      v71, v73, v74, v75, v76, v77, v78, v79;
      *(v56 + 14) = v72;
      _os_log_impl(&dword_1CEFC7000, v54, v55, "Path %s was registered in Space Attribution with bundle %s", v56, 0x16u);
      v80 = v85;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v80, -1, -1);
      MEMORY[0x1D386CDC0](v56, -1, -1);

      return (*(v87 + 8))(v15, v86);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      return (*(v87 + 8))(v15, v13);
    }
  }
}

uint64_t sub_1CF837E0C()
{
  result = sub_1CF837E2C();
  qword_1EDEA5CA8 = result;
  return result;
}

uint64_t sub_1CF837E2C()
{
  v0 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for GlobalResourceStore(0);
  swift_allocObject();
  v6[3] = v1;
  v6[4] = &off_1F4C04308;
  v6[0] = sub_1CF51BB3C();
  v4 = type metadata accessor for RandomSampling();
  v5 = &off_1F4BF15F8;
  v3[0] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DB0, &qword_1CFA17F98);
  swift_allocObject();
  return sub_1CF7EBC5C(v6, v3, 0);
}

void *sub_1CF8380AC(NSObject *a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = v2;
  v943 = a2;
  v941 = a1;
  v4 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v948 = &v875 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v950 = sub_1CF9E5268();
  v949 = *(v950 - 1);
  MEMORY[0x1EEE9AC00](v950);
  v947 = (&v875 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1CF9E5D98();
  v928 = *(v7 - 8);
  v929 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v905 = &v875 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v924 = sub_1CF9E6388();
  v933 = *(v924 - 8);
  MEMORY[0x1EEE9AC00](v924);
  v901 = (&v875 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v923 = (&v875 - v11);
  v12 = sub_1CF9E6498();
  v935 = *(v12 - 8);
  v936 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v932 = &v875 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v922 = &v875 - v15;
  v926 = sub_1CF9E73D8();
  v934 = *(v926 - 8);
  MEMORY[0x1EEE9AC00](v926);
  v925 = &v875 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v971 = sub_1CF9E5A58();
  v970 = *(v971 - 8);
  MEMORY[0x1EEE9AC00](v971);
  v913 = &v875 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v927 = &v875 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v931 = &v875 - v21;
  v22 = sub_1CF9E6938();
  v918 = *(v22 - 8);
  v919 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v917 = &v875 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v904 = &v875 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v916 = &v875 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v940 = (&v875 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30);
  v930 = (&v875 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v942 = &v875 - v33;
  v960 = sub_1CF9E7388();
  v964 = *(v960 - 8);
  MEMORY[0x1EEE9AC00](v960);
  v958 = &v875 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_isa = sub_1CF9E7318();
  v963 = *(p_isa - 1);
  MEMORY[0x1EEE9AC00](p_isa);
  v956 = &v875 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v957 = &v875 - v37;
  v961 = sub_1CF9E6448();
  v966 = *(v961 - 8);
  MEMORY[0x1EEE9AC00](v961);
  v955 = &v875 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v965 = &v875 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v909 = &v875 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v910 = (&v875 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v902 = &v875 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v920 = &v875 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v921 = &v875 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v875 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v962 = (&v875 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v969 = (&v875 - v57);
  v58 = sub_1CF9E6118();
  isa = v58[-1].isa;
  MEMORY[0x1EEE9AC00](v58);
  v915 = &v875 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v906 = &v875 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v951 = (&v875 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v974 = &v875 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v968 = (&v875 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v972 = &v875 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v946 = (&v875 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v912 = (&v875 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v903 = (&v875 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v900 = &v875 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v908 = &v875 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v911 = &v875 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v914 = &v875 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v907 = &v875 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v938 = (&v875 - v88);
  MEMORY[0x1EEE9AC00](v89);
  v945 = &v875 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v937 = (&v875 - v92);
  MEMORY[0x1EEE9AC00](v93);
  v944 = (&v875 - v94);
  MEMORY[0x1EEE9AC00](v95);
  v952 = &v875 - v96;
  MEMORY[0x1EEE9AC00](v97);
  p_super = (&v875 - v98);
  MEMORY[0x1EEE9AC00](v99);
  v953 = (&v875 - v100);
  MEMORY[0x1EEE9AC00](v101);
  v103 = (&v875 - v102);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v875 - v105;
  v107 = [objc_allocWithZone(FPLoggerScope) init];
  v108 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v109 = v107;
  v110 = sub_1CF9E6108();
  v111 = sub_1CF9E72C8();

  v112 = os_log_type_enabled(v110, v111);
  v939 = v53;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v975 = v3;
    v114 = v109;
    v115 = isa;
    v116 = v58;
    v117 = v113;
    v118 = swift_slowAlloc();
    *v117 = 138412290;
    v119 = [v114 enter];
    *(v117 + 4) = v119;
    *v118 = v119;
    _os_log_impl(&dword_1CEFC7000, v110, v111, "%@ [loadSyncEngine] loading sync engine", v117, 0xCu);
    sub_1CEFCCC44(v118, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v118, -1, -1);
    v120 = v117;
    v58 = v116;
    isa = v115;
    v109 = v114;
    v3 = v975;
    MEMORY[0x1D386CDC0](v120, -1, -1);
  }

  v122 = *(isa + 1);
  v121 = (isa + 8);
  v976 = v122;
  v122(v106, v58);
  v123 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
  Strong = swift_unknownObjectWeakLoadStrong();
  v125 = fpfs_current_or_default_log();
  if (!Strong)
  {
    v143 = v972;
    sub_1CF9E6128();
    v138 = sub_1CF9E6108();
    v142 = sub_1CF9E72B8();
    if (os_log_type_enabled(v138, v142))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1CEFC7000, v138, v142, "[loadSyncEngine] missing domain in sync engine loading", v3, 2u);
      MEMORY[0x1D386CDC0](v3, -1, -1);
    }

    v976(v143, v58);
    v139 = FPDomainUnavailableError();
    if (v139)
    {
      v140 = v139;
LABEL_26:
      sub_1CF83D740(v109);

      return v140;
    }

    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    swift_once();
LABEL_207:
    v790 = qword_1EDEA5CA8;
    if (qword_1EDEA5CA8)
    {
      v791 = 4271950;
      v792 = swift_unknownObjectWeakLoadStrong();

      if (v792)
      {
        v793 = [v792 provider];

        if (v793)
        {
          v794 = [v793 descriptor];
          v795 = [v794 localizedName];

          v791 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v797 = v796;
        }

        else
        {
          v797 = 0xE300000000000000;
        }

        v58 = v910;
      }

      else
      {
        v797 = 0xE300000000000000;
      }

      v798 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_diagnosticsDirectoryURL;
      swift_beginAccess();
      v799 = &v3[v798];
      v800 = v902;
      sub_1CEFCCBDC(v799, v902, &unk_1EC4BE310, qword_1CF9FCBE0);
      v801 = v973;

      v802 = sub_1CF7F8098(v972, v791, v797, v801, v800, v790);
      if (v143)
      {
      }

      else
      {
        v803 = v802;
        sub_1CF8076A0(v802);

        *(p_isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_fpDiagnosticsManager) = v803;
      }

      v142 = v971;
      v121 = v896;
    }

    else
    {
LABEL_211:
    }

    v804 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbDirectoryURL;
    swift_beginAccess();
    sub_1CEFCCBDC(&v3[v804], v58, &unk_1EC4BE310, qword_1CF9FCBE0);
    v262 = v121(v58, 1, v142);
    if (v262 == 1)
    {
      goto LABEL_258;
    }

    sub_1CF9E5978();
    v805 = v58;
    v58 = v893;
    (v893)(v805, v142);
    v806 = v909;
    sub_1CEFCCBDC(v898 + v875, v909, &unk_1EC4BE310, qword_1CF9FCBE0);
    v262 = v121(v806, 1, v142);
    if (v262 == 1)
    {
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    v962, v807, v808, v809, v810, v811, v812, v813;
    v899, v814, v815, v816, v817, v818, v819, v820;
    sub_1CF9E5978();
    (v58)(v806, v142);
    sub_1CF9E5A18();
    v822 = v821;
    v823 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
    v824 = v969;
    swift_beginAccess();
    v825 = sub_1CF9E6978();
    LODWORD(v824) = fpfs_wharf_delete_item_at(v824 + v823, 4294967294, v825 + 32);
    swift_endAccess();
    v822, v826, v827, v828, v829, v830, v831, v832;

    v833 = p_isa;
    v834 = v964;
    if (!v824 || (sub_1CF9E5A18(), v836 = v835, v837 = v969, swift_beginAccess(), v838 = sub_1CF9E6978(), LODWORD(v837) = fpfs_wharf_delete_item_at(v837 + v823, 4294967294, v838 + 32), swift_endAccess(), v836, v839, v840, v841, v842, v843, v844, v845, , !v837))
    {
      v846 = v969;
      *(v969 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
      if (*(v846 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        MEMORY[0x1D3869790](1, ObjectType);
        swift_unknownObjectRelease();
      }
    }

    sub_1CF8E976C(v848);

    if ((*(v972 + 82) & 4) != 0)
    {
      v849 = swift_unknownObjectWeakLoadStrong();
      if (v849)
      {
        v850 = v849;
        v851 = [v849 indexer];
        if (v851)
        {
          v852 = v851;
          if ([v851 isIndexingEnabled])
          {
          }

          else
          {
            if ([v850 isHidden])
            {
              v853 = 3;
            }

            else
            {
              v853 = 1;
            }

            v854 = *(*(v834 + 2) + qword_1EDEBBD08);
            v855 = swift_allocObject();
            *(v855 + 16) = v964;
            *(v855 + 24) = v853;
            *(v855 + 32) = 1;

            v856 = v854;
            sub_1CF01001C(0, "updateIndexBarrier(anchor:)", 27, 2, sub_1CF8F8A80, v855);
          }
        }

        else
        {
        }
      }
    }

    sub_1CF83037C();
    v857 = swift_unknownObjectWeakLoadStrong();
    if (v857)
    {
      v858 = v857;
      v859 = [v857 indexer];

      v860 = v971;
      v861 = v927;
      if (v859)
      {
        type metadata accessor for FPFSIndexer(0);
        v862 = swift_dynamicCastClass();
        if (!v862)
        {

          goto LABEL_242;
        }

        v863 = v862;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CC0, &qword_1CFA17EA8);
        v864 = swift_allocObject();
        swift_weakInit();
        swift_weakAssign();

        *(v863 + OBJC_IVAR____TtC18FileProviderDaemon11FPFSIndexer_enumerator) = v864;
        v861 = v927;
        v860 = v971;
      }
    }

    else
    {

      v860 = v971;
      v861 = v927;
    }

LABEL_242:
    v865 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v866 = sub_1CF9E6108();
    v867 = sub_1CF9E7288();
    if (os_log_type_enabled(v866, v867))
    {
      v868 = swift_slowAlloc();
      *v868 = 0;
      _os_log_impl(&dword_1CEFC7000, v866, v867, "[loadSyncEngine] sync engine successfully loaded", v868, 2u);
      v869 = v868;
      v861 = v927;
      v860 = v971;
      MEMORY[0x1D386CDC0](v869, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v976(v912, v953);
    v870 = v893;
    (v893)(v913, v860);
    (v870)(v861, v860);
    v871 = *(v833 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus);
    v140 = 0x8000000000000000;
    *(v833 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus) = 0x8000000000000000;
    sub_1CF8F89F4(v871);
    goto LABEL_245;
  }

  sub_1CF9E6128();
  v126 = sub_1CF9E6108();
  v127 = sub_1CF9E7288();
  v128 = os_log_type_enabled(v126, v127);
  v973 = Strong;
  if (v128)
  {
    v129 = swift_slowAlloc();
    v130 = v123;
    v131 = v58;
    v132 = v3;
    v133 = v130;
    v134 = v129;
    *v129 = 0;
    _os_log_impl(&dword_1CEFC7000, v126, v127, "[loadSyncEngine] creating support paths", v129, 2u);
    v135 = v134;
    Strong = v973;
    v136 = v133;
    v3 = v132;
    v58 = v131;
    v123 = v136;
    MEMORY[0x1D386CDC0](v135, -1, -1);
  }

  v976(v103, v58);
  v137 = *&v3[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  sub_1CF798A20(Strong);
  v967 = v121;
  v975 = v3;
  v972 = 0;
  v898 = v137;
  v141 = v137 + OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_appSupportURL;
  swift_beginAccess();
  v895 = v141;
  v142 = v969;
  sub_1CEFCCBDC(v141, v969, &unk_1EC4BE310, qword_1CF9FCBE0);
  v3 = v970;
  v143 = v971;
  v896 = *(v970 + 48);
  v897 = v970 + 48;
  v144 = v896(v142, 1, v971);
  if (v144 == 1)
  {
    goto LABEL_252;
  }

  sub_1CF837198(v142);
  v146 = v3 + 8;
  v145 = *(v3 + 1);
  (v145)(v142, v143);
  v147 = v972;
  v148 = sub_1CEFCE64C();
  v972 = v147;
  if (v147)
  {
    v149 = 0;
    v150 = 0;
    v140 = v972;
    v151 = v973;
    goto LABEL_14;
  }

  v893 = v145;
  v899 = v148;
  v180 = *v148->tree;
  v181 = fpfs_current_or_default_log();
  v151 = v973;
  if (!v180)
  {
    v238 = v946;
    sub_1CF9E6128();
    v239 = sub_1CF9E6108();
    v240 = sub_1CF9E72A8();
    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      *v241 = 0;
      _os_log_impl(&dword_1CEFC7000, v239, v240, "[loadSyncEngine] couldn't find roots", v241, 2u);
      v242 = v241;
      v151 = v973;
      MEMORY[0x1D386CDC0](v242, -1, -1);
    }

    v976(v238, v58);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v243 = v947;
    v244 = v950;
    sub_1CF9E57D8();
    v140 = sub_1CF9E50D8();
    (v949[1])(v243, v244);
    swift_willThrow();
    v149 = 0;
    v150 = 1;
LABEL_14:
    swift_getErrorValue();
    sub_1CF4C2DD8(v990, v991);
    if (v152)
    {
      v153 = swift_unknownObjectWeakLoadStrong();
      if (v153)
      {
        v154 = v150;
        v155 = v153;
        v156 = [v153 disconnectionState];

        if (v156 == 6)
        {

          if (!v154)
          {
LABEL_24:
            if (v149)
            {
            }

            goto LABEL_26;
          }
        }

        else
        {
          v175 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v176 = sub_1CF9E6108();
          v177 = sub_1CF9E72B8();
          if (os_log_type_enabled(v176, v177))
          {
            v178 = swift_slowAlloc();
            *v178 = 134217984;
            *(v178 + 4) = v156;
            _os_log_impl(&dword_1CEFC7000, v176, v177, "[diskspace] wharf init failed due to lowSpace but disconnectionState (%lu) failed to catch that", v178, 0xCu);
            MEMORY[0x1D386CDC0](v178, -1, -1);
            v179 = v973;
          }

          else
          {
            v179 = v176;
            v176 = v973;
          }

          v976(v968, v58);
          if (!v154)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {

        if (!v150)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      LODWORD(v975) = v150;
      v164 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v165 = v140;
      v166 = sub_1CF9E6108();
      v167 = sub_1CF9E72B8();

      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = v140;
        v170 = swift_slowAlloc();
        *v168 = 138412290;
        swift_getErrorValue();
        v171 = Error.prettyDescription.getter(v988, v989);
        *(v168 + 4) = v171;
        *v170 = v171;
        _os_log_impl(&dword_1CEFC7000, v166, v167, "[loadSyncEngine] cannot init wharf: %@", v168, 0xCu);
        sub_1CEFCCC44(v170, &qword_1EC4BE350, &unk_1CF9FC3B0);
        v172 = v170;
        v140 = v169;
        MEMORY[0x1D386CDC0](v172, -1, -1);
        MEMORY[0x1D386CDC0](v168, -1, -1);
        v173 = v973;
      }

      else
      {
        v173 = v166;
        v166 = v151;
      }

      v976(v974, v58);
      if (!v975)
      {
        goto LABEL_24;
      }
    }

    v899, v157, v158, v159, v160, v161, v162, v163;
    goto LABEL_24;
  }

  v888 = v109;
  v182 = v953;
  sub_1CF9E6128();
  v183 = sub_1CF9E6108();
  v184 = sub_1CF9E7288();
  if (os_log_type_enabled(v183, v184))
  {
    v185 = swift_slowAlloc();
    *v185 = 0;
    _os_log_impl(&dword_1CEFC7000, v183, v184, "[loadSyncEngine] initializing RTC session", v185, 2u);
    v186 = v185;
    v151 = v973;
    MEMORY[0x1D386CDC0](v186, -1, -1);
  }

  v953 = v58;
  v976(&v182->isa, v58);
  v187 = v975;
  v188 = swift_unknownObjectWeakLoadStrong();
  v189 = &selRef_initWithTarget_;
  v949 = v146;
  v190 = v123;
  if (v188 && (v191 = v188, v192 = [v188 provider], v191, v192))
  {
    v193 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_1CF9FC3C0;
    *&v980 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(&v980 + 1) = v195;
    v196 = MEMORY[0x1E69E6158];
    sub_1CF9E7898();
    v197 = [v192 identifier];
    v198 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v200 = v199;

    *(v194 + 96) = v196;
    *(v194 + 72) = v198;
    *(v194 + 80) = v200;
    *&v980 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(&v980 + 1) = v201;
    sub_1CF9E7898();
    v202 = [v192 bundleVersion];
    v203 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v205 = v204;

    *(v194 + 168) = v196;
    *(v194 + 144) = v203;
    *(v194 + 152) = v205;
    v189 = &selRef_initWithTarget_;
    *&v980 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(&v980 + 1) = v206;
    sub_1CF9E7898();
    v207 = [v973 volume];
    LODWORD(v196) = [v207 role];

    *(v194 + 240) = MEMORY[0x1E69E7668];
    *(v194 + 216) = v196;
    v208 = sub_1CF4E0E00(v194);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v209 = sub_1CF9E6618();
    v210 = v208;
    v151 = v973;
    v210, v211, v212, v213, v214, v215, v216, v217;
    v218 = [v193 sessionWithCommonProperties_];

    v187 = v975;
    v950 = v218;
    v219 = v218;
  }

  else
  {
    v950 = 0;
  }

  v220 = fpfs_current_or_default_log();
  v221 = p_super;
  sub_1CF9E6128();
  v222 = sub_1CF9E6108();
  v223 = sub_1CF9E7288();
  if (os_log_type_enabled(v222, v223))
  {
    v224 = swift_slowAlloc();
    *v224 = 0;
    _os_log_impl(&dword_1CEFC7000, v222, v223, "[loadSyncEngine] creating wharf", v224, 2u);
    v225 = v224;
    v151 = v973;
    MEMORY[0x1D386CDC0](v225, -1, -1);
  }

  v976(&v221->isa, v953);
  v226 = swift_unknownObjectWeakLoadStrong();
  v894 = v190;
  if (v226)
  {
    v227 = v226;
    v228 = [v226 v189[365]];

    if (v228)
    {
      v229 = [(FSTester *)v228 descriptor];

      v228 = [v229 requestedExtendedAttributes];
      if (v228)
      {
        v230 = sub_1CF9E6D48();

        v228 = sub_1CF8E44FC(v230);
        v230, v231, v232, v233, v234, v235, v236, v237;
      }
    }
  }

  else
  {
    v228 = 0;
  }

  p_super = swift_allocObject();
  p_super[2].isa = v228;

  v245 = [v151 nsDomain];
  v246 = [v245 supportsSyncingTrash];

  v247 = swift_unknownObjectWeakLoadStrong();
  if (v247)
  {
    v248 = v187;
    v249 = v247;
    v250 = [v247 v189[365]];

    if (v250)
    {
      v251 = [v250 descriptor];

      LODWORD(v969) = [v251 wantsBundleBitOnlyPackageDetection];
    }

    else
    {
      LODWORD(v969) = 0;
    }

    v187 = v248;
  }

  else
  {
    LODWORD(v969) = 0;
  }

  v252 = *&v187[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
  LODWORD(v947) = FPPinningIsEnabledForDomainID();
  v253 = [v151 volume];
  LODWORD(v946) = [v253 supportsEAPFS];

  v892 = isResidencyReasonEnabled(for:)(v252);
  v885 = v252;
  v254 = [v252 fp_obfuscatedProviderDomainID];
  v255 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v58 = v256;
  v257 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_wharfDirectoryURL;
  v258 = v898;
  swift_beginAccess();
  v875 = v257;
  v259 = v258 + v257;
  v260 = v962;
  sub_1CEFCCBDC(v259, v962, &unk_1EC4BE310, qword_1CF9FCBE0);
  v261 = v971;
  v262 = v896(v260, 1, v971);
  if (v262 == 1)
  {
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v891 = v246 ^ 1;

  v228, v263, v264, v265, v266, v267, v268, v269;
  type metadata accessor for DocumentWharf(0);
  v270 = swift_allocObject();
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v271 = v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v272 = MEMORY[0x1E69E7CC0];
  *v271 = 0;
  *(v271 + 8) = v272;
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  *(v270 + 16) = v255;
  *(v270 + 24) = v58;
  v273 = v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v273 + 32) = 0u;
  *(v273 + 48) = 0u;
  *v273 = 0u;
  *(v273 + 16) = 0u;

  swift_beginAccess();
  *(v273 + 12) = -1;
  v886 = *(v970 + 16);
  v887 = v970 + 16;
  v886(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v260, v261);
  v948 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  *&v980 = 0;
  *(&v980 + 1) = 0xE000000000000000;

  sub_1CF9E7948();
  *(&v980 + 1), v274, v275, v276, v277, v278, v279, v280;
  *&v980 = v255;
  *(&v980 + 1) = v58;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v889 = *(&v980 + 1);
  v890 = v980;
  v281 = v965;
  sub_1CF9E63E8();
  *&v980 = v272;
  v282 = sub_1CEFCCCA4(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  v284 = sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  v285 = v957;
  v883 = v282;
  v884 = v283;
  v882 = v284;
  v286 = p_isa;
  sub_1CF9E77B8();
  v287 = v966;
  v288 = v961;
  v880 = *(v966 + 16);
  v881 = v966 + 16;
  v880(v955, v281, v961);
  v289 = v963;
  v878 = *(v963 + 16);
  v879 = v963 + 16;
  v878(v956, v285, v286);
  v290 = *(v964 + 13);
  v877 = *MEMORY[0x1E69E8098];
  v964 = (v964 + 104);
  v876 = v290;
  v290(v958);
  v291 = sub_1CF9E73B8();
  v292 = *(v289 + 8);
  v963 = v289 + 8;
  v890 = v292;
  v292(v285, v286);
  v293 = *(v287 + 8);
  v966 = v287 + 8;
  v293(v965, v288);
  (v893)(v962, v971);
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v291;
  v294 = v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  v295 = p_super;
  *v294 = sub_1CEFDB0D8;
  *(v294 + 8) = v295;
  LODWORD(v295) = v891;
  *(v294 + 16) = v969;
  *(v294 + 20) = v295;
  *(v294 + 24) = v947;
  *(v294 + 25) = v946;
  *(v294 + 26) = v892;
  *(v270 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = v950;
  v969 = v270;

  v296 = fpfs_current_or_default_log();
  v297 = v952;
  sub_1CF9E6128();
  v298 = sub_1CF9E6108();
  v299 = sub_1CF9E7288();
  if (os_log_type_enabled(v298, v299))
  {
    v300 = swift_slowAlloc();
    *v300 = 0;
    _os_log_impl(&dword_1CEFC7000, v298, v299, "[loadSyncEngine] activating wharf", v300, 2u);
    MEMORY[0x1D386CDC0](v300, -1, -1);
  }

  v301 = v976;
  v976(v297, v953);
  v302 = v972;
  sub_1CF9BF6A8();
  v140 = v302;
  v303 = v898;
  if (v302)
  {

    v304 = fpfs_current_or_default_log();
    v305 = v951;
    sub_1CF9E6128();
    v306 = v302;
    v307 = sub_1CF9E6108();
    v308 = sub_1CF9E72A8();

    if (os_log_type_enabled(v307, v308))
    {
      v309 = swift_slowAlloc();
      v310 = swift_slowAlloc();
      *v309 = 138412290;
      swift_getErrorValue();
      v311 = Error.prettyDescription.getter(v986, v987);
      *(v309 + 4) = v311;
      *v310 = v311;
      _os_log_impl(&dword_1CEFC7000, v307, v308, "[loadSyncEngine] wharf initialization failed: %@", v309, 0xCu);
      sub_1CEFCCC44(v310, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v312 = v310;
      v301 = v976;
      MEMORY[0x1D386CDC0](v312, -1, -1);
      MEMORY[0x1D386CDC0](v309, -1, -1);
    }

    v58 = v953;
    v301(v305, v953);
    sub_1CF9BFA28();
    swift_willThrow();

    v149 = 1;
    v150 = 1;
    v109 = v888;
    v151 = v973;
    goto LABEL_14;
  }

  v972 = 0;

  v313 = v973;
  v314 = [v973 providerDomainID];
  v315 = [v313 defaultBackend];
  v316 = v315;
  if (!v315)
  {
    v319 = 0;
    goto LABEL_73;
  }

  if (([v315 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_71;
  }

  v317 = [v316 providerVersion];
  swift_unknownObjectRelease();
  if (!v317)
  {
LABEL_71:
    v316 = 0;
    v319 = 0;
    goto LABEL_72;
  }

  v316 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v319 = v318;

LABEL_72:
  v313 = v973;
LABEL_73:
  v952 = v293;
  v320 = swift_allocObject();
  *(v320 + 2) = v316;
  *(v320 + 3) = v319;
  *(v320 + 4) = v314;
  *(v320 + 5) = v313;
  v974 = v320;
  v962 = v319;

  v321 = v313;
  v322 = v314;
  v323 = fpfs_current_or_default_log();
  v324 = v944;
  sub_1CF9E6128();
  v325 = sub_1CF9E6108();
  v326 = sub_1CF9E7288();
  if (os_log_type_enabled(v325, v326))
  {
    v327 = v321;
    v328 = swift_slowAlloc();
    *v328 = 0;
    _os_log_impl(&dword_1CEFC7000, v325, v326, "[loadSyncEngine] creating VFSFileTree", v328, 2u);
    v329 = v328;
    v321 = v327;
    v303 = v898;
    MEMORY[0x1D386CDC0](v329, -1, -1);
  }

  v301(v324, v953);
  v330 = v969;

  v973 = v322;
  v331 = v899;

  v332 = v303;
  v333 = v974;

  v968 = v321;
  v334 = [v321 purposeIdentifier];
  v335 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v337 = v336;

  type metadata accessor for VFSFileTree(0);
  swift_allocObject();

  v338 = v322;
  v339 = v972;
  v340 = sub_1CF25D1E8(v331, v330, v332, v338, sub_1CF8F8A14, v333, 0, v335, v337, 1u, 0);
  if (v339)
  {
    v331, v341, v342, v343, v344, v345, v346, v347;

    v962, v348, v349, v350, v351, v352, v353, v354;
    v355 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v356 = v339;
    v357 = sub_1CF9E6108();
    v358 = sub_1CF9E72A8();

    if (os_log_type_enabled(v357, v358))
    {
      v359 = swift_slowAlloc();
      v360 = swift_slowAlloc();
      *v359 = 138412290;
      v361 = v339;
      swift_getErrorValue();
      v362 = Error.prettyDescription.getter(v984, v985);
      *(v359 + 4) = v362;
      *v360 = v362;
      _os_log_impl(&dword_1CEFC7000, v357, v358, "[loadSyncEngine] fstree initialization failed: %@", v359, 0xCu);
      sub_1CEFCCC44(v360, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v363 = v360;
      v301 = v976;
      MEMORY[0x1D386CDC0](v363, -1, -1);
      MEMORY[0x1D386CDC0](v359, -1, -1);
    }

    else
    {
      v361 = v339;

      v357 = v973;
    }

    v398 = v888;
    v399 = v953;

    v301(v945, v399);

    sub_1CF83D740(v398);

    return v361;
  }

  v972 = 0;
  v950 = v332;
  p_super = &v340->super;

  v364 = fpfs_current_or_default_log();
  v365 = v937;
  sub_1CF9E6128();
  v366 = sub_1CF9E6108();
  v367 = sub_1CF9E7288();
  if (os_log_type_enabled(v366, v367))
  {
    v368 = swift_slowAlloc();
    *v368 = 0;
    _os_log_impl(&dword_1CEFC7000, v366, v367, "[loadSyncEngine] creating FPFileTree", v368, 2u);
    MEMORY[0x1D386CDC0](v368, -1, -1);
  }

  v301(v365, v953);
  type metadata accessor for FPFileTree(0);
  swift_allocObject();
  v369 = v969;

  v370 = v968;
  v968 = sub_1CF2D0FAC(v370, v369, sub_1CF8F8A14, v333);
  v371 = fpfs_current_or_default_log();
  v372 = v938;
  sub_1CF9E6128();
  v373 = sub_1CF9E6108();
  v374 = sub_1CF9E7288();
  if (os_log_type_enabled(v373, v374))
  {
    v375 = swift_slowAlloc();
    *v375 = 0;
    _os_log_impl(&dword_1CEFC7000, v373, v374, "[loadSyncEngine] creating SQLDatabase", v375, 2u);
    MEMORY[0x1D386CDC0](v375, -1, -1);
  }

  v301(v372, v953);
  if ([v370 isConnectedToAppExtension])
  {
    v376 = 0;
  }

  else
  {
    v376 = 16;
  }

  v377 = [v370 nsDomain];
  v378 = [v377 testingModes];

  if ((v378 & 2) != 0)
  {
    v376 |= 0x1C0uLL;
  }

  v379 = [v370 nsDomain];
  v380 = [v379 supportsRemoteVersions];

  if (v380)
  {
    v381 = v376 | 0x8000;
  }

  else
  {
    v381 = v376;
  }

  v382 = [v370 provider];
  if (v382)
  {
    v383 = v382;
    v384 = [v382 identifier];

    LODWORD(v383) = [v384 fp_isiCloudDriveIdentifier];
    if (v383)
    {
      v385 = 512;
      if (v381 < 0x8000)
      {
        v385 = 33280;
      }

      v381 |= v385 | 0x100000;
    }
  }

  v386 = [v370 provider];
  if (v386)
  {
    v387 = v386;
    v388 = [v386 identifier];

    v389 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v391 = v390;

    if (v389 == 0xD00000000000001ELL && 0x80000001CFA51A60 == v391)
    {
      v391, v392, v393, 0x80000001CFA51A60, v394, v395, v396, v397;
      if ((v381 & 0x100000) != 0)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v400 = sub_1CF9E8048();
      v391, v401, v402, v403, v404, v405, v406, v407;
      if ((v400 & 1) == 0 || (v381 & 0x100000) != 0)
      {
        goto LABEL_105;
      }
    }

    v381 |= 0x100000uLL;
  }

LABEL_105:
  if (fpfs_supports_speculative_set())
  {
    v408 = v381 | 0x1000;
  }

  else
  {
    v408 = v381;
  }

  if (fpfs_supports_download_lazily_v2())
  {
    v408 |= 0x20000uLL;
  }

  if (os_variant_has_internal_content() && [v370 disconnectionState] == 1)
  {
    v408 |= 0x2000uLL;
  }

  if (fpfs_supports_indexAllRemoteItems())
  {
    v408 |= 0x40000uLL;
  }

  if (FPFeatureFlagBGSTImprovementsIsEnabled())
  {
    v408 |= 0x80000uLL;
  }

  v409 = v370;
  if (fpfs_supports_gutenberg())
  {
    v410 = v408 | 0x200000;
  }

  else
  {
    v410 = v408;
  }

  v411 = type metadata accessor for TelemetrySignposter(0);
  v412 = *(*(v411 - 8) + 56);
  v413 = v942;
  v412(v942, 1, 1, v411);
  v951 = v409;
  v414 = [v409 provider];
  if (v414)
  {
    v415 = v414;
    v416 = [v414 identifier];

    v417 = v930;
    *v930 = "Materialization_startProvidingItem";
    *(v417 + 8) = 34;
    *(v417 + 16) = 2;
    *(v417 + 24) = sub_1CF518E74(v416);
    sub_1CF9E6088();
    v418 = sub_1CF519604(v416);

    sub_1CEFCCC44(v413, &qword_1EC4BFB10, &unk_1CFA12AD0);
    *(v417 + *(v411 + 28)) = v418;
    v412(v417, 0, 1, v411);
    sub_1CEFE55D0(v417, v413, &qword_1EC4BFB10, &unk_1CFA12AD0);
  }

  if (os_variant_has_internal_content())
  {
    v419 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v420 = sub_1CF9E6888();
    v421 = [v419 initWithSuiteName_];

    v58 = v941;
    if (v421)
    {
      v422 = sub_1CF9E6888();
      v423 = [v421 BOOLForKey_];

      if (v423)
      {
        v410 |= 0x200000000uLL;
      }
    }
  }

  else
  {
    v58 = v941;
  }

  v424 = fpfs_supports_lazy_recursive_deletion();
  v425 = (v410 | 0x4000);
  if (!v424)
  {
    v425 = v410;
  }

  v947 = v425;
  v426 = sub_1CF830018();
  if (v427)
  {
    v58 = v426;
    v943 = v427;
  }

  else
  {
  }

  v428 = v971;
  v429 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL;
  v430 = v950;
  swift_beginAccess();
  v431 = v939;
  sub_1CEFCCBDC(v430 + v429, v939, &unk_1EC4BE310, qword_1CF9FCBE0);
  v262 = v896(v431, 1, v428);
  if (v262 == 1)
  {
    goto LABEL_255;
  }

  v432 = v942;
  v433 = v940;
  sub_1CEFCCBDC(v942, v940, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v434 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v435 = swift_allocObject();
  v436 = v968;

  v437 = v943;

  v874 = v434;
  v438 = v972;
  v439 = sub_1CF3B8C04(v431, p_super, v436, v433, v947, v58, v437, v435, v874);
  v447 = v438;
  if (!v438)
  {
    v470 = v439;
    v471 = v432;
    v472 = qword_1EDEBBDA8;
    swift_beginAccess();
    v473 = v916;
    sub_1CEFCCBDC(v470 + v472, v916, &unk_1EC4BEDE0, qword_1CF9FA390);
    v475 = v928;
    v474 = v929;
    v476 = *(v928 + 48);
    v944 = (v928 + 48);
    v941 = v476;
    v262 = (v476)(v473, 1, v929);
    if (v262 != 1)
    {
      v972 = v470;

      v437, v477, v478, v479, v480, v481, v482, v483;
      sub_1CF9E5D18();
      v485 = v484;
      v487 = *(v475 + 8);
      v486 = (v475 + 8);
      v58 = v487;
      (v487)(v473, v474);
      v488 = v917;
      sub_1CF9E6918();
      v489 = sub_1CF9E68C8();
      v491 = v490;
      v485, v490, v492, v493, v494, v495, v496, v497;
      v918[1](v488, v919);
      v498 = &v975[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_backingStoreIdentity];
      swift_beginAccess();
      v499 = *v498;
      v500 = v498[1];
      *v498 = v489;
      v498[1] = v491;
      sub_1CEFE48D8(v499, v500);
      v501 = [v951 nsDomain];
      v502 = 0;
      v503 = v498[1];
      if (v503 >> 60 != 15)
      {
        v504 = *v498;
        sub_1CEFE42D4(v504, v503);
        v502 = sub_1CF9E5B48();
        sub_1CEFE48D8(v504, v503);
      }

      [v501 setBackingStoreIdentity_];

      v505 = *&v975[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_nsDomain];

      if (![v505 isHidden])
      {
        v506 = v471;
        if (qword_1EDEAC5D0 != -1)
        {
          swift_once();
        }

        v507 = &qword_1EDEBBAB8;
        goto LABEL_151;
      }

      v506 = v471;
      if (qword_1EDEA5178 != -1)
      {
        goto LABEL_250;
      }

      while (1)
      {
        v507 = &qword_1EDEBB778;
LABEL_151:
        v508 = *v507;
        sub_1CF8E9878(v508);

        sub_1CEFCCC44(v506, &qword_1EC4BFB10, &unk_1CFA12AD0);
        p_super[36].isa = &off_1F4C06B60;
        swift_unknownObjectWeakAssign();
        v509 = v885;
        v510 = [v509 pathComponents];
        v511 = sub_1CF9E6D48();

        v512 = *v511->tree;
        v511, v513, v514, v515, v516, v517, v518, v519;
        if (v512 >= 2)
        {
          v520 = [v509 stringByDeletingLastPathComponent];
          if (!v520)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v522 = v521;
            v520 = sub_1CF9E6888();
            v522, v523, v524, v525, v526, v527, v528, v529;
          }

          v509 = v520;
        }

        v530 = swift_unknownObjectWeakLoadStrong();
        v945 = v509;
        v946 = v447;
        v943 = v486;
        v940 = v58;
        if (v530 && (v531 = v530, v532 = [v530 provider], v531, v532) && (v533 = objc_msgSend(v532, sel_manager), v532, v533))
        {
          v534 = fpfs_current_or_default_log();
          v535 = v907;
          sub_1CF9E6128();
          v536 = v509;
          v537 = sub_1CF9E6108();
          v538 = sub_1CF9E7298();

          if (os_log_type_enabled(v537, v538))
          {
            v539 = swift_slowAlloc();
            v947 = swift_slowAlloc();
            *&v980 = v947;
            *v539 = 136315138;
            v540 = v536;
            v541 = v533;
            v542 = NSFileProviderItemIdentifier.description.getter(v540);
            v543 = v536;
            v545 = v544;

            v546 = sub_1CEFD0DF0(v542, v545, &v980);
            v547 = v545;
            v536 = v543;
            v547, v548, v549, v550, v551, v552, v553, v554;
            *(v539 + 4) = v546;
            v533 = v541;
            _os_log_impl(&dword_1CEFC7000, v537, v538, "[loadSyncEngine] Alternate content info update for %s", v539, 0xCu);
            v555 = v947;
            __swift_destroy_boxed_opaque_existential_1(v947);
            MEMORY[0x1D386CDC0](v555, -1, -1);
            MEMORY[0x1D386CDC0](v539, -1, -1);

            v976(v907, v953);
          }

          else
          {

            v976(v535, v953);
          }

          v559 = [v533 alternateContentsDictionaryForProviderIdentifier_];
          if (v559)
          {
            v560 = v559;
            v561 = sub_1CF9E6638();

            sub_1CF918B34(v561);
            v947 = v562;
            v561, v563, v564, v565, v566, v567, v568, v569;
          }

          else
          {
            v947 = 0;
          }
        }

        else
        {
          v947 = 0;
        }

        *&v980 = 0;
        *(&v980 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        v570 = *(&v980 + 1);
        v571 = *(*(*(v972 + 32) + 16) + 136);
        v572 = *(v571 + 16);
        v573 = *(v571 + 24);

        v570, v574, v575, v576, v577, v578, v579, v580;
        *&v980 = v572;
        *(&v980 + 1) = v573;
        MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA5D1A0);
        v581 = v965;
        sub_1CF9E63F8();
        *&v980 = MEMORY[0x1E69E7CC0];
        v582 = v957;
        v583 = p_isa;
        sub_1CF9E77B8();
        v584 = v961;
        v880(v955, v581, v961);
        v878(v956, v582, v583);
        v876(v958, v877, v960);
        v585 = sub_1CF9E73B8();
        v890(v582, v583);
        (v952)(v581, v584);
        v586 = v968[35];
        v587 = [v586 pathComponents];
        v588 = sub_1CF9E6D48();

        v589 = *v588->tree;
        v588, v590, v591, v592, v593, v594, v595, v596;
        if (v589 >= 2)
        {
          v597 = [v586 stringByDeletingLastPathComponent];
          if (!v597)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v599 = v598;
            v597 = sub_1CF9E6888();
            v599, v600, v601, v602, v603, v604, v605, v606;
          }

          v586 = v597;
        }

        v607 = [v586 fp_isiCloudDriveIdentifier];

        v58 = p_super;
        v262 = objc_sync_enter(p_super);
        if (v262)
        {
          goto LABEL_263;
        }

        LODWORD(v960) = v607;
        v964 = v585;
        v608 = v58[20].isa;

        v609 = objc_sync_exit(v58);
        if (v609)
        {
          MEMORY[0x1EEE9AC00](v609);
          v873 = &v875 - 4;
          v874 = v58;
          goto LABEL_265;
        }

        v610 = v931;
        v611 = v971;
        v886(v931, (v608 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL), v971);

        v612 = *MEMORY[0x1E696A870];
        type metadata accessor for FPFSGlobalProgress(0);
        v613 = swift_allocObject();
        *(v613 + 32) = 0u;
        *(v613 + 48) = 0u;
        *(v613 + 64) = 0;
        *(v613 + 72) = 2;
        *(v613 + 88) = 0;
        *(v613 + 96) = 0;
        *(v613 + 80) = 0;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer) = 0;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress) = 0;
        v614 = (v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber);
        *v614 = 0u;
        v614[1] = 0u;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = 0;
        v615 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log) = 0;
        v616 = v972;

        v617 = v612;
        v618 = v964;
        *(v613 + v615) = fpfs_current_log();
        *(v613 + 104) = v616;
        *(v613 + 112) = &off_1F4C0A070;
        *(v613 + 24) = v617;
        p_isa = v618;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue) = v618;
        v619 = *(v970 + 32);
        v619(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileURL, v610, v611);
        *(v613 + 16) = MEMORY[0x1E69E7CC0];
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_needsNotifyGlobalProgress) = 0;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_activeChildProgress) = MEMORY[0x1E69E7CD0];
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache) = MEMORY[0x1E69E7CC8];
        v963 = v613;
        *(v613 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) = v960;
        v262 = objc_sync_enter(v58);
        if (v262)
        {
          goto LABEL_263;
        }

        v964 = v619;
        v620 = v58[20].isa;

        v621 = objc_sync_exit(v58);
        if (v621)
        {
          MEMORY[0x1EEE9AC00](v621);
          v873 = &v875 - 4;
          v874 = p_super;
LABEL_265:
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v873, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        v622 = v931;
        v623 = v971;
        v886(v931, (v620 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL), v971);

        v624 = *MEMORY[0x1E696A848];
        v625 = swift_allocObject();
        *(v625 + 32) = 0u;
        *(v625 + 48) = 0u;
        *(v625 + 64) = 0;
        *(v625 + 72) = 2;
        *(v625 + 88) = 0;
        *(v625 + 96) = 0;
        *(v625 + 80) = 0;
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchTimer) = 0;
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress) = 0;
        v626 = (v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber);
        *v626 = 0u;
        v626[1] = 0u;
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = 0;
        v627 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log;
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_log) = 0;
        v628 = v972;

        v629 = p_isa;
        v630 = v624;
        *(v625 + v627) = fpfs_current_log();
        *(v625 + 104) = v628;
        *(v625 + 112) = &off_1F4C0A070;
        *(v625 + 24) = v630;
        v956 = v629;
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue) = v629;
        v964(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileURL, v622, v623);
        *(v625 + 16) = MEMORY[0x1E69E7CC0];
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_needsNotifyGlobalProgress) = 0;
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_activeChildProgress) = MEMORY[0x1E69E7CD0];
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache) = MEMORY[0x1E69E7CC8];
        *(v625 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
        *(*(swift_dynamicCastClassUnconditional() + 32) + qword_1EDEBBB10 + 8) = &off_1F4C16A00;
        swift_unknownObjectWeakAssign();

        v631 = v963;

        v957 = v625;
        v632 = sub_1CF77D3C4(v628, v631, v625, v947, 0, 0);
        v633 = swift_allocObject();
        v634 = v975;
        *(v633 + 16) = v975;
        v635 = *(v632 + 4);
        v636 = *(v632 + 5);
        *(v632 + 4) = sub_1CEFF6B70;
        *(v632 + 5) = v633;
        v964 = v632;

        v486 = v634;
        sub_1CEFF7124(v635, v636);
        v637 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v638 = sub_1CF9E73F8();
        v958 = v637;
        v639 = sub_1CF9E73F8();
        v640 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v641 = (v628 + qword_1EDEBBDC8);
        v642 = *(v628 + qword_1EDEBBDC8);
        v643 = *(v628 + qword_1EDEBBDC8 + 8);
        *v641 = sub_1CF8F8A38;
        v641[1] = v640;

        sub_1CEFF7124(v642, v643);

        v644 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v645 = (v628 + qword_1EDEBBDC0);
        v646 = *(v628 + qword_1EDEBBDC0);
        v647 = *(v628 + qword_1EDEBBDC0 + 8);
        *v645 = sub_1CF088E7C;
        v645[1] = v644;

        sub_1CEFF7124(v646, v647);

        v648 = swift_allocObject();
        swift_unknownObjectUnownedInit();
        v649 = (v628 + qword_1EDEBBC78);
        v650 = *(v628 + qword_1EDEBBC78);
        v651 = *(v628 + qword_1EDEBBC78 + 8);
        *v649 = sub_1CF8F8A5C;
        v649[1] = v648;

        sub_1CEFF7124(v650, v651);

        v652 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v653 = (v628 + qword_1EDEBBDD8);
        v654 = *(v628 + qword_1EDEBBDD8);
        v655 = *(v628 + qword_1EDEBBDD8 + 8);
        *v653 = sub_1CF087898;
        v653[1] = v652;
        sub_1CEFF7124(v654, v655);
        v656 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v657 = (v628 + qword_1EDEBBDF0);
        v658 = *(v628 + qword_1EDEBBDF0);
        v659 = *(v628 + qword_1EDEBBDF0 + 8);
        *v657 = sub_1CF8F8A64;
        v657[1] = v656;
        swift_retain_n();
        sub_1CEFF7124(v658, v659);

        v960 = v638;
        v660 = swift_getObjectType();
        v661 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v982 = sub_1CF088FC0;
        *(&v982 + 1) = v661;
        *&v980 = MEMORY[0x1E69E9820];
        *(&v980 + 1) = 1107296256;
        *&v981 = sub_1CEFCA444;
        *(&v981 + 1) = &block_descriptor_1821;
        v662 = _Block_copy(&v980);

        sub_1CF4FC6F8(v662, v660);
        _Block_release(v662);

        v58 = swift_getObjectType();
        v663 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v982 = sub_1CF8F8A6C;
        *(&v982 + 1) = v663;
        *&v980 = MEMORY[0x1E69E9820];
        *(&v980 + 1) = 1107296256;
        *&v981 = sub_1CEFCA444;
        *(&v981 + 1) = &block_descriptor_1825;
        v664 = _Block_copy(&v980);

        sub_1CF4FC6F8(v664, v58);
        _Block_release(v664);
        v665 = v971;

        sub_1CF9E7448();
        v666 = v960;
        sub_1CF9E7448();
        *(&v486->super.isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_enumerationAnchorChangedSource) = v639;
        v955 = v639;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *(&v486->super.isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_itemsChangedSource) = v666;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v667 = v920;
        sub_1CEFCCBDC(v895, v920, &unk_1EC4BE310, qword_1CF9FCBE0);
        v262 = v896(v667, 1, v665);
        if (v262 == 1)
        {
          goto LABEL_257;
        }

        v668 = v921;
        sub_1CF9E5968();
        (v893)(v667, v665);
        (*(v970 + 56))(v668, 0, 1, v665);
        v669 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
        swift_beginAccess();
        sub_1CEFDA9E0(v668, v486 + v669, &unk_1EC4BE310, qword_1CF9FCBE0);
        swift_endAccess();
        v670 = *(&v486->super.isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetWatchingQueue);
        *&v980 = MEMORY[0x1E69E7CC0];
        v671 = sub_1CEFCCCA4(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
        v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        v673 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
        v674 = v925;
        v938 = v673;
        v939 = v672;
        v675 = v926;
        v942 = v671;
        sub_1CF9E77B8();
        v947 = v670;
        v676 = sub_1CF9E73E8();
        v677 = *(v934 + 8);
        v934 += 8;
        v937 = v677;
        (v677)(v674, v675);
        v506 = swift_allocObject();
        *(v506 + 16) = 0;
        v447 = swift_getObjectType();
        v678 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v679 = swift_allocObject();
        *(v679 + 16) = v678;
        *(v679 + 24) = v506;

        v680 = v965;
        sub_1CF042F9C();
        v970 = v676;
        sub_1CEFD5828(0, v680, sub_1CEFCBF54, v679, v447);

        (v952)(v680, v961);

        v681 = [objc_opt_self() defaultStore];
        [v681 pendingSetRefreshInterval];
        v683 = v682;
        v684 = v682;

        sub_1CF9E6478();
        v685 = v933;
        if ((*&v684 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v683 <= -9.22337204e18)
        {
          goto LABEL_248;
        }

        v948 = v506;
        p_isa = &v486->super.isa;
        if (v683 < 9.22337204e18)
        {
          v687 = v923;
          v686 = v924;
          v920 = v683;
          *v923 = v683;
          v688 = *(v685 + 104);
          LODWORD(v919) = *MEMORY[0x1E69E7F48];
          v921 = (v685 + 104);
          v918 = v688;
          (v688)(v687);
          v689 = v922;
          v690 = v932;
          MEMORY[0x1D3868740](v932, v687);
          v691 = *(v685 + 8);
          (v691)(v687, v686);
          v692 = v935 + 8;
          v693 = *(v935 + 8);
          v693(v690, v936);
          sub_1CEFD5BD8(v687);
          v694 = v970;
          MEMORY[0x1D3869780](v689, v687, v447, v683);
          v931 = v691;
          v933 = v685 + 8;
          (v691)(v687, v686);
          v935 = v692;
          v930 = v693;
          v693(v689, v936);
          sub_1CF9E7428();
          v695 = p_isa;
          *(p_isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetSource) = v694;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v696 = fpfs_current_or_default_log();
          v697 = v914;
          sub_1CF9E6128();
          v698 = sub_1CF9E6108();
          v699 = sub_1CF9E7288();
          if (os_log_type_enabled(v698, v699))
          {
            v700 = swift_slowAlloc();
            *v700 = 0;
            _os_log_impl(&dword_1CEFC7000, v698, v699, "[loadSyncEngine] activating sync engine", v700, 2u);
            MEMORY[0x1D386CDC0](v700, -1, -1);
          }

          v976(v697, v953);
          v701 = v964;
          v702 = v946;
          sub_1CF76289C();
          v710 = v915;
          if (v702)
          {
            v899, v703, v704, v705, v706, v707, v708, v709;

            v962, v711, v712, v713, v714, v715, v716, v717;

            v718 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v719 = v702;
            v720 = sub_1CF9E6108();
            v721 = sub_1CF9E72A8();

            if (os_log_type_enabled(v720, v721))
            {
              v722 = swift_slowAlloc();
              v723 = swift_slowAlloc();
              *v722 = 138412290;
              swift_getErrorValue();
              v724 = Error.prettyDescription.getter(v977, v978);
              *(v722 + 4) = v724;
              *v723 = v724;
              _os_log_impl(&dword_1CEFC7000, v720, v721, "[loadSyncEngine] Unable to activate sync engine: %@", v722, 0xCu);
              sub_1CEFCCC44(v723, &qword_1EC4BE350, &unk_1CF9FC3B0);
              v725 = v723;
              v701 = v964;
              MEMORY[0x1D386CDC0](v725, -1, -1);
              MEMORY[0x1D386CDC0](v722, -1, -1);
            }

            v976(v710, v953);
            sub_1CF833CE4(v972, v702);
            v727.n128_f64[0] = sub_1CF7A68E0(v726);
            sub_1CF7A68E0(v727);
            *(v701 + 24) = 1;
            sub_1CF6C0474();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            v140 = *(v695 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus);
            if ((~v140 & 0xF000000000000007) == 0)
            {

              v140 = v702;
              goto LABEL_246;
            }

            v754 = (v140 & 0x3FFFFFFFFFFFFFFFLL);

LABEL_245:

LABEL_246:
            v872 = v888;
            sub_1CF83D740(v888);

            return v140;
          }

          sub_1CF82CDEC();
          v728 = *(v701 + 2);
          v729 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v730 = *(v728 + 96);
          v731 = *(v728 + 104);
          *(v728 + 96) = sub_1CF8F8A74;
          *(v728 + 104) = v729;

          v732 = v964;
          sub_1CEFF7124(v730, v731);

          v733 = fpfs_current_or_default_log();
          v734 = v911;
          sub_1CF9E6128();

          v58 = sub_1CF9E6108();
          v735 = sub_1CF9E7288();
          if (os_log_type_enabled(v58, v735))
          {
            v736 = swift_slowAlloc();
            v946 = swift_slowAlloc();
            *&v980 = v946;
            *v736 = 136446210;
            v737 = *(v732 + 2);
            v738 = qword_1EDEBBDA8;
            swift_beginAccess();
            v739 = v904;
            sub_1CEFCCBDC(v737 + v738, v904, &unk_1EC4BEDE0, qword_1CF9FA390);
            v740 = v929;
            LODWORD(v737) = (v941)(v739, 1, v929);

            if (v737 != 1)
            {
              v741 = v905;
              (*(v928 + 32))(v905, v739, v740);
              sub_1CEFCCCA4(&qword_1EDEAECB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v742 = sub_1CF9E7F98();
              v744 = v743;
              (v940)(v741, v740);
              v745 = sub_1CEFD0DF0(v742, v744, &v980);
              v744, v746, v747, v748, v749, v750, v751, v752;
              *(v736 + 4) = v745;
              _os_log_impl(&dword_1CEFC7000, v58, v735, "[loadSyncEngine] activated sync engine with %{public}s", v736, 0xCu);
              v753 = v946;
              __swift_destroy_boxed_opaque_existential_1(v946);
              MEMORY[0x1D386CDC0](v753, -1, -1);
              MEMORY[0x1D386CDC0](v736, -1, -1);

              v976(v911, v953);
              goto LABEL_194;
            }

LABEL_260:
            __break(1u);
LABEL_263:
            MEMORY[0x1EEE9AC00](v262);
            v874 = v58;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v875 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v976(v734, v953);
LABEL_194:
          v755 = fpfs_current_or_default_log();
          v756 = v908;
          sub_1CF9E6128();
          v757 = sub_1CF9E6108();
          v758 = sub_1CF9E7288();
          if (os_log_type_enabled(v757, v758))
          {
            v759 = swift_slowAlloc();
            *v759 = 0;
            _os_log_impl(&dword_1CEFC7000, v757, v758, "[loadSyncEngine] read sync anchor", v759, 2u);
            MEMORY[0x1D386CDC0](v759, -1, -1);
          }

          v976(v756, v953);
          sub_1CF83E36C();
          v121 = v896;
          v761 = v760;
          v762 = fpfs_current_or_default_log();
          v946 = 0;
          if (v761)
          {
            v763 = v900;
            sub_1CF9E6128();
            v764 = sub_1CF9E6108();
            v765 = sub_1CF9E7298();
            if (os_log_type_enabled(v764, v765))
            {
              v766 = swift_slowAlloc();
              *v766 = 0;
              _os_log_impl(&dword_1CEFC7000, v764, v765, "[loadSyncEngine] Pending set was not empty before stop", v766, 2u);
              MEMORY[0x1D386CDC0](v766, -1, -1);
            }

            v976(v763, v953);
            *&v980 = MEMORY[0x1E69E7CC0];
            v768 = v925;
            v767 = v926;
            sub_1CF9E77B8();
            v769 = sub_1CF9E73E8();
            (v937)(v768, v767);
            v770 = swift_getObjectType();
            v771 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v772 = v965;
            sub_1CF042F9C();
            sub_1CEFD5828(0, v772, sub_1CF8F8AA0, v771, v770);

            (v952)(v772, v961);

            v773 = v932;
            sub_1CF9E6478();
            v775 = v923;
            v774 = v924;
            *v923 = v920;
            (v918)(v775, v919, v774);
            v776 = v922;
            MEMORY[0x1D3868740](v773, v775);
            v777 = v931;
            (v931)(v775, v774);
            v778 = v773;
            v779 = v930;
            v930(v778, v936);
            sub_1CEFD5B64(v775);
            v780 = v901;
            sub_1CEFD5BD8(v901);
            MEMORY[0x1D3869770](v776, v775, v780, v770);
            v777(v780, v774);
            v777(v775, v774);
            v779(v776, v936);
            sub_1CF9E7428();
            *(p_isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_onActivatePendingSetNotification) = v769;
            swift_unknownObjectRelease();
            v142 = v971;
            v121 = v896;
            v3 = v950;
            v58 = v910;
          }

          else
          {
            sub_1CF9E6128();
            v781 = sub_1CF9E6108();
            v782 = sub_1CF9E7298();
            v783 = os_log_type_enabled(v781, v782);
            v3 = v950;
            v58 = v910;
            if (v783)
            {
              v784 = swift_slowAlloc();
              *v784 = 0;
              _os_log_impl(&dword_1CEFC7000, v781, v782, "[loadSyncEngine] Pending set was empty before stop", v784, 2u);
              v785 = v784;
              v121 = v896;
              MEMORY[0x1D386CDC0](v785, -1, -1);
            }

            v976(v903, v953);
            v786 = swift_allocObject();
            v787 = p_isa;
            v788 = v972;
            *(v786 + 16) = p_isa;
            *(v786 + 24) = v788;

            v789 = v787;
            sub_1CF7AAF88("loadSyncEngine(reason:)", 23, 2, 2, nullsub_1, 0, sub_1CF8F8A84, v786);

            v142 = v971;
          }

          v143 = v946;
          if (((fpfs_is_internal_build() & 1) != 0 || fpfs_supports_tap_to_feedback()) && [v951 disconnectionState] == 1)
          {
            if (qword_1EDEA5C98 == -1)
            {
              goto LABEL_207;
            }

            goto LABEL_253;
          }

          goto LABEL_211;
        }

LABEL_249:
        __break(1u);
LABEL_250:
        swift_once();
      }

      __break(1u);
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    goto LABEL_256;
  }

  v962, v440, v441, v442, v443, v444, v445, v446;
  v437, v448, v449, v450, v451, v452, v453, v454;
  sub_1CEFCCC44(v432, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v899, v455, v456, v457, v458, v459, v460, v461;
  v979 = v438;
  v462 = v438;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    v463 = v888;
    if (v983 == 3)
    {
      if (sub_1CF828E4C())
      {
        v464 = fpfs_current_or_default_log();
        v465 = v906;
        sub_1CF9E6128();
        v466 = sub_1CF9E6108();
        v467 = sub_1CF9E72B8();
        if (os_log_type_enabled(v466, v467))
        {
          v468 = swift_slowAlloc();
          *v468 = 0;
          _os_log_impl(&dword_1CEFC7000, v466, v467, "[loadSyncEngine] unsupported database version on a non-default volume: disconnecting domain", v468, 2u);
          MEMORY[0x1D386CDC0](v468, -1, -1);
        }

        v976(v465, v953);
        v469 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6967210] code:22 userInfo:0];
        sub_1CF83DC44(v975, v447, v969);
        v140 = v469;

        sub_1CF83D740(v463);

        return v140;
      }
    }

    else
    {
      sub_1CF47FB38(&v980);
    }
  }

  else
  {
    v981 = 0u;
    v982 = 0u;
    v980 = 0u;
    v983 = -1;
    sub_1CEFCCC44(&v980, &unk_1EC4C4CB0, &qword_1CFA17EA0);
    v463 = v888;
  }

  v556 = *&v975[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_startStatus];
  v557 = v556;
  if ((~v556 & 0xF000000000000007) == 0)
  {
    v558 = v447;
    v557 = v447;
  }

  sub_1CF8F8A20(v556);
  sub_1CF83DC44(v975, v447, v969);

  sub_1CF83D740(v463);

  return v557;
}

uint64_t sub_1CF83D740(void *a1)
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v7 = a1;
  v8 = sub_1CF9E6108();
  v9 = sub_1CF9E72C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = [v7 leave];
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_1CEFC7000, v8, v9, "%@", v10, 0xCu);
    sub_1CEFCCC44(v11, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v11, -1, -1);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1CF83D8F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = objc_opt_self();

  v9 = [v8 defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FC3C0;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = MEMORY[0x1E69E6158];
  sub_1CF9E7898();
  v12 = a3;
  v13 = [v12 pathComponents];
  v14 = sub_1CF9E6D48();

  v15 = *v14->tree;
  v14, v16, v17, v18, v19, v20, v21, v22;
  if (v15 >= 2)
  {
    v23 = [v12 stringByDeletingLastPathComponent];
    if (!v23)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;
      v23 = sub_1CF9E6888();
      v25, v26, v27, v28, v29, v30, v31, v32;
    }

    v12 = v23;
  }

  v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v35 = v34;

  *(inited + 96) = v11;
  *(inited + 72) = v33;
  *(inited + 80) = v35;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  *(inited + 168) = v11;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  sub_1CF9E7898();
  v36 = [a4 volume];
  v37 = [v36 role];

  *(inited + 240) = MEMORY[0x1E69E7668];
  *(inited + 216) = v37;
  v38 = sub_1CF4E0E00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
  swift_arrayDestroy();
  v39 = sub_1CF9E6618();
  v38, v40, v41, v42, v43, v44, v45, v46;
  v47 = [v9 sessionWithCommonProperties_];

  return v47;
}

id sub_1CF83DBC0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1CF833CE4(a1, a2);
  }

  swift_willThrow();
  return a2;
}

void sub_1CF83DC44(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = a1;
  v15 = a2;
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E72B8();
  if (!os_log_type_enabled(v16, v17))
  {

    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v41 = v17;
  v42 = v10;
  v43 = v9;
  v44 = a3;
  v18 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v47 = v40;
  *v18 = 136315394;
  v19 = *&v14[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager];
  v20 = OBJC_IVAR____TtC18FileProviderDaemon20InternalPathsManager_dbURL;
  swift_beginAccess();
  sub_1CEFCCBDC(v19 + v20, v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  v21 = sub_1CF9E5A58();
  v22 = *(v21 - 8);
  LODWORD(v20) = (*(v22 + 48))(v8, 1, v21);

  if (v20 != 1)
  {
    v23 = sub_1CF9E5928();
    v24 = [v23 fp_shortDescription];

    v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v27 = v26;

    (*(v22 + 8))(v8, v21);
    v28 = sub_1CEFD0DF0(v25, v27, &v47);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v18 + 4) = v28;
    *(v18 + 12) = 2112;
    swift_getErrorValue();
    v36 = Error.prettyDescription.getter(v45, v46);
    *(v18 + 14) = v36;
    v37 = v39;
    *v39 = v36;
    _os_log_impl(&dword_1CEFC7000, v16, v41, "[loadSyncEngine] cannot open database at %s: %@", v18, 0x16u);
    sub_1CEFCCC44(v37, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    v38 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1D386CDC0](v38, -1, -1);
    MEMORY[0x1D386CDC0](v18, -1, -1);

    (*(v42 + 8))(v12, v43);
LABEL_5:
    sub_1CF9BFA28();
    return;
  }

  __break(1u);
}

void sub_1CF83E018(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 indexer];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for FPFSIndexer(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = Strong;
      v8 = v4;
      Strong = Strong;
      sub_1CEFD4024("forceIndexAnchorFetch()", 23, 2, nullsub_1, 0, sub_1CF8F94C4, v7);

LABEL_5:
      v9 = Strong;
      goto LABEL_8;
    }

    v9 = v4;
  }

  else
  {

    v9 = Strong;
  }

LABEL_8:
}

void sub_1CF83E168(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1CF0878B4();
    v4 = v3;
    v5 = *v3->tree;
    if (v5)
    {
      anon_8 = v3[1]._anon_8;
      do
      {
        v7 = *anon_8;
        swift_unknownObjectRetain();
        v8 = objc_autoreleasePoolPush();
        ObjectType = swift_getObjectType();
        (*(v7 + 32))(ObjectType, v7);
        objc_autoreleasePoolPop(v8);
        swift_unknownObjectRelease();
        anon_8 += 16;
        --v5;
      }

      while (v5);
    }

    v4, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1CF83E240(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1CF841908();
  }
}

void sub_1CF83E294(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    v5 = [v4 provider];
    v6 = [v5 manager];

    v7 = [v6 server];
    [v7 signalProviderChanges];
  }
}

void sub_1CF83E36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v48 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v14 = v0;
  v15 = sub_1CF9E6108();
  v50 = sub_1CF9E7298();
  v16 = &unk_1EDEA5000;
  if (os_log_type_enabled(v15, v50))
  {
    v44 = v10;
    v45 = v9;
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49[0] = v42;
    v43 = v17;
    *v17 = 136315138;
    v18 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetStateURL;
    swift_beginAccess();
    sub_1CEFCCBDC(v14 + v18, v5, &unk_1EC4BE310, qword_1CF9FCBE0);
    LODWORD(v18) = (*(v7 + 48))(v5, 1, v6);

    if (v18 == 1)
    {
LABEL_10:
      __break(1u);
      return;
    }

    v19 = v46;
    (*(v7 + 32))(v46, v5, v6);
    sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v20 = sub_1CF9E7F98();
    v22 = v21;
    (*(v7 + 8))(v19, v6);
    v23 = sub_1CEFD0DF0(v20, v22, v49);
    v22, v24, v25, v26, v27, v28, v29, v30;
    v31 = v43;
    *(v43 + 1) = v23;
    _os_log_impl(&dword_1CEFC7000, v15, v50, "Fetching pending set status from %s", v31, 0xCu);
    v32 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1D386CDC0](v32, -1, -1);
    MEMORY[0x1D386CDC0](v31, -1, -1);

    (*(v44 + 8))(v12, v45);
    v33 = v48;
    v16 = &unk_1EDEA5000;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v33 = v48;
  }

  v34 = v16[399];
  swift_beginAccess();
  sub_1CEFCCBDC(v14 + v34, v33, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v7 + 48))(v33, 1, v6) == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v35 = v47;
  v36 = sub_1CF9E5A78();
  if (v35)
  {
    (*(v7 + 8))(v33, v6);
  }

  else
  {
    v38 = v36;
    v39 = v33;
    v40 = v37;
    (*(v7 + 8))(v39, v6);
    sub_1CF9E5408();
    swift_allocObject();
    sub_1CF9E53F8();
    sub_1CF9E53E8();
    sub_1CEFE4714(v38, v40);
  }
}

void sub_1CF83E874(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7298();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v7;
      v18 = v2;
      v19 = v17;
      *v17 = 0;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "[loadSyncEngine] Pending set notification on start", v17, 2u);
      v20 = v19;
      v2 = v18;
      v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      v7 = v29;
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    v21 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      sub_1CEFCCBDC(v7, v4, &qword_1EC4C49F8, &qword_1CFA17AF8);
      v24 = (*(v2 + 80) + 24) & ~*(v2 + 80);
      v25 = (v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      *(v26 + 16) = v13;
      sub_1CEFE55D0(v4, v26 + v24, &qword_1EC4C49F8, &qword_1CFA17AF8);
      *(v26 + v25) = v23;
      v27 = v13;
      v28 = v23;
      sub_1CF01001C(0, "sendPendingSetNotification(newState:)", 37, 2, sub_1CF8F8AA8, v26);

      sub_1CEFCCC44(v7, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }

    else
    {

      sub_1CEFCCC44(v7, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }
  }
}

uint64_t sub_1CF83EBF8(int a1, id obj, char *a3)
{
  v6 = objc_sync_enter(obj);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v6);
    v9 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF83ED50(obj, a3);
  if (v3)
  {
    result = objc_sync_exit(obj);
    if (result)
    {
LABEL_8:
      MEMORY[0x1EEE9AC00](result);
      v9 = obj;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v8, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }
  }

  else
  {
    result = objc_sync_exit(obj);
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CF83ED50(char *a1, char *a2)
{
  v56 = a2;
  v3 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49F8, &qword_1CFA17AF8);
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pendingSetState;
  swift_beginAccess();
  v51 = v18;
  sub_1CEFCCBDC(&a1[v18], v17, &qword_1EC4C49F8, &qword_1CFA17AF8);
  v52 = v4;
  v19 = *(v4 + 48);
  v54 = v3;
  LODWORD(v3) = v19(v17, 1, v3);
  sub_1CEFCCC44(v17, &qword_1EC4C49F8, &qword_1CFA17AF8);
  if (v3 == 1)
  {
    v20 = v57;
    sub_1CF83F228(v56, v14);
    if (!v20)
    {
      v21 = a1;
      v57 = 0;
      v22 = v54;
      (*(v52 + 56))(v14, 0, 1, v54);
      v23 = v51;
      swift_beginAccess();
      v24 = v14;
      v25 = v22;
      sub_1CEFDA9E0(v24, &a1[v23], &qword_1EC4C49F8, &qword_1CFA17AF8);
      swift_endAccess();
      v26 = v53;
      sub_1CEFCCBDC(&a1[v23], v53, &qword_1EC4C49F8, &qword_1CFA17AF8);
      if (v19(v26, 1, v25))
      {
        sub_1CEFCCC44(v26, &qword_1EC4C49F8, &qword_1CFA17AF8);
        v27 = v55;
      }

      else
      {
        v28 = v48;
        sub_1CEFDA34C(v26, v48, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
        sub_1CEFCCC44(v26, &qword_1EC4C49F8, &qword_1CFA17AF8);
        v29 = *(v28 + *(v25 + 28));

        sub_1CEFD5338(v28, type metadata accessor for FPDDomainFPFSBackend.PendingSetState);
        v30 = *v29->tree;
        v29, v31, v32, v33, v34, v35, v36, v37;
        v27 = v55;
        if (!v30)
        {
          return;
        }
      }

      sub_1CEFCCBDC(&v21[v23], v27, &qword_1EC4C49F8, &qword_1CFA17AF8);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        v40 = v50;
        sub_1CEFCCBDC(v27, v50, &qword_1EC4C49F8, &qword_1CFA17AF8);
        v41 = v21;
        v42 = (*(v49 + 80) + 24) & ~*(v49 + 80);
        v43 = (v7 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        sub_1CEFE55D0(v40, v44 + v42, &qword_1EC4C49F8, &qword_1CFA17AF8);
        *(v44 + v43) = v39;
        v27 = v55;
        v45 = v41;
        v46 = v39;
        sub_1CF01001C(0, "sendPendingSetNotification(newState:)", 37, 2, sub_1CF902D88, v44);
      }

      sub_1CEFCCC44(v27, &qword_1EC4C49F8, &qword_1CFA17AF8);
    }
  }
}

uint64_t sub_1CF83F228@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  sub_1CF9E5CE8();
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);

  v12 = v30;
  v13 = sub_1CF7F6F74();
  if (v12)
  {

    v14 = *(v4 + 8);
    v14(v6, v3);
    return (v14)(v9, v3);
  }

  else
  {
    v30 = v6;
    v27 = v13;
    v16 = v28;
    v17 = objc_sync_enter(v28);
    if (v17)
    {
      MEMORY[0x1EEE9AC00](v17);
      *(&v24 - 2) = v16;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v24 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v26 = *&v16[qword_1EDEADB30];
    v18 = v26;
    v19 = objc_sync_exit(v16);
    if (v19)
    {
      MEMORY[0x1EEE9AC00](v19);
      *(&v24 - 2) = v16;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v24 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    LODWORD(v28) = *(v10 + 96);
    v20 = type metadata accessor for FPDDomainFPFSBackend.PendingSetState(0);
    v25 = v20[12];
    v21 = v29;
    sub_1CF9E5D88();
    v11((v21 + v20[5]), v30, v3);
    (*(v4 + 56))(v21 + v20[6], 1, 1, v3);
    v22 = v27;
    *(v21 + v20[7]) = v27;
    *(v21 + v20[8]) = v22;

    (*(v4 + 8))(v9, v3);
    *(v21 + v20[9]) = MEMORY[0x1E69E7CC0];
    v23 = v25;
    *(v21 + v20[10]) = v26;
    *(v21 + v20[11]) = 0;
    *(v21 + v23) = 2;
    result = (*(v4 + 32))(v21 + v20[13], v30, v3);
    *(v21 + v20[14]) = v28;
  }

  return result;
}