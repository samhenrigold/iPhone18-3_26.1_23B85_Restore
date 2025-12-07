uint64_t sub_1CF29A018(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40[-v10];
  v12 = type metadata accessor for VFSItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40[-v17];
  v19 = *a2;
  sub_1CEFD90AC(a1, &v40[-v17], type metadata accessor for VFSItem);
  sub_1CF25116C(v11);
  v42 = *a1;
  v41 = *(a1 + 8);
  sub_1CEFD90AC(a1, v15, type metadata accessor for VFSItem);
  sub_1CEFCCBDC(v11, v8, &unk_1EC4BE310, qword_1CF9FCBE0);
  v20 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v43 + 80) + v21 + 9) & ~*(v43 + 80);
  v23 = swift_allocObject();
  v24 = v45;
  *(v23 + 16) = v44;
  *(v23 + 24) = v24;
  sub_1CEFE4C60(v15, v23 + v20, type metadata accessor for VFSItem);
  v25 = v23 + v21;
  v26 = v46;
  *v25 = v46;
  *(v25 + 8) = v19;
  v27 = v26;
  sub_1CEFE55D0(v8, v23 + v22, &unk_1EC4BE310, qword_1CF9FCBE0);

  v28 = sub_1CF2ADAF4(v11);
  v29 = v28;
  v47 = v42;
  v48 = v41;
  if (v28 >> 62)
  {
    v30 = sub_1CF9E7818();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v30 == 0;

  sub_1CF2AAEA4(&v47, v29, v31, v27, sub_1CF2B187C, v23);

  v29, v32, v33, v34, v35, v36, v37, v38;
  sub_1CEFCCC44(v11, &unk_1EC4BE310, qword_1CF9FCBE0);
  return sub_1CEFE5888(v18, type metadata accessor for VFSItem);
}

uint64_t sub_1CF29A378(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, unsigned __int8 a6, uint64_t a7)
{
  if (a1)
  {
    return a2();
  }

  v40 = a7;
  v19 = type metadata accessor for VFSItem(0);
  v20 = a4 + v19[9];
  v21 = *v20;
  v22 = (a4 + v19[14]);
  if (*(v22 + 4))
  {
    v23 = 0;
  }

  else
  {
    v23 = *v22;
  }

  v24 = *(v20 + 8);
  0, v12, v13, v14, v15, v16, v17, v18;
  v46[0] = v21;
  v46[1] = 0;
  v47 = v23;
  v48 = v24;
  v49 = 0;
  v50 = 0;
  v25 = objc_sync_enter(a5);
  if (v25)
  {
    MEMORY[0x1EEE9AC00](v25);
    v39 = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v38, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v26 = a5[20];

  v27 = objc_sync_exit(a5);
  if (v27)
  {
    MEMORY[0x1EEE9AC00](v27);
    v39 = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v38, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v28 = *(v26 + 16);

  v29 = sub_1CEFDADE0(v46, v28, 2129920);
  v50, v30, v31, v32, v33, v34, v35, v36;
  v37 = v19[7];
  v43 = a6;
  sub_1CEFE528C(v44);
  v41[12] = v44[12];
  v41[13] = v44[13];
  v41[14] = v44[14];
  v42 = v45;
  v41[8] = v44[8];
  v41[9] = v44[9];
  v41[10] = v44[10];
  v41[11] = v44[11];
  v41[4] = v44[4];
  v41[5] = v44[5];
  v41[6] = v44[6];
  v41[7] = v44[7];
  v41[0] = v44[0];
  v41[1] = v44[1];
  v41[2] = v44[2];
  v41[3] = v44[3];
  sub_1CF298D34(v29, (a4 + v37), 0, 0, &v43, 0, v40, v41);
  if ((v29 & 0x80000000) == 0)
  {
    close(v29);
  }

  return (a2)(0);
}

void sub_1CF29A614(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1CF9E63A8();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6448();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E63D8();
  v103 = *(v15 - 8);
  v104 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v90 - v21;
  v22 = *a2;
  if (*(a1 + *(type metadata accessor for VFSItem(0) + 28)) == 1)
  {
    v108 = v11;
    v98 = a3;
    v99 = a4;
    v100 = v14;
    v101 = v10;
    v23 = dispatch_group_create();
    v24 = swift_allocObject();
    v25 = v110;
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    *(v24 + 32) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = v23;

    dispatch_group_enter(v27);
    v28 = *a1;
    v29 = *(a1 + 8);
    v30 = swift_allocObject();
    *(v30 + 16) = v26;
    *(v30 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1CF2B174C;
    *(v31 + 24) = v30;
    *(v31 + 32) = v25;
    *(v31 + 40) = v28;
    v97 = v28;
    LODWORD(v96) = v29;
    *(v31 + 48) = v29;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    *(v31 + 72) = sub_1CF2B1740;
    *(v31 + 80) = v24;
    v32 = v25 + qword_1EDEBBE70;
    swift_beginAccess();
    v33 = *(v32 + 1);
    v34 = __CFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      __break(1u);
    }

    else
    {
      *(v32 + 1) = v35;
      v36 = v110;
      v37 = v110[28];
      v92 = v110[27];
      v38 = v26;
      v39 = v12;
      (*(v12 + 56))(v109, 1, 1, v108);
      v40 = swift_allocObject();
      v93 = v19;
      v41 = v40;
      v91 = v27;
      *(v40 + 16) = sub_1CF2B1754;
      *(v40 + 24) = v31;
      v42 = swift_allocObject();
      v43 = v97;
      *(v42 + 16) = v36;
      *(v42 + 24) = v43;
      *(v42 + 32) = v96;
      *(v42 + 40) = sub_1CF2B1754;
      *(v42 + 48) = v31;
      *(v42 + 56) = 0;
      *(v42 + 64) = sub_1CF2B1740;
      *(v42 + 72) = v24;
      v44 = swift_allocObject();
      v44[2] = sub_1CF2BA178;
      v44[3] = v41;
      v44[4] = v37;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v97 = v91;
      v105 = v38;

      v92 = v92;
      v96 = v41;
      v45 = v93;

      v46 = fpfs_current_log();
      v91 = *(v37 + 16);
      v47 = v108;
      sub_1CEFCCBDC(v109, v45, &unk_1EC4BE370, qword_1CFA01B30);
      v48 = (*(v39 + 48))(v45, 1, v47);
      v90 = v30;
      v95 = v24;
      v94 = v39;
      if (v48 == 1)
      {
        sub_1CEFCCC44(v45, &unk_1EC4BE370, qword_1CFA01B30);
        LODWORD(v93) = 0;
      }

      else
      {
        v49 = v102;
        sub_1CF9E6438();
        (*(v39 + 8))(v45, v47);
        LODWORD(v93) = sub_1CF9E63C8();
        (*(v103 + 8))(v49, v104);
      }

      v50 = swift_allocObject();
      v50[2] = v46;
      v50[3] = sub_1CF2B9F50;
      v50[4] = v42;
      v116 = sub_1CF2BA17C;
      v117 = v50;
      aBlock = MEMORY[0x1E69E9820];
      v113 = 1107296256;
      v114 = sub_1CEFCA444;
      v115 = &block_descriptor_1123;
      v51 = _Block_copy(&aBlock);
      v52 = v46;

      v116 = sub_1CF2BA184;
      v117 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v113 = 1107296256;
      v114 = sub_1CEFCA444;
      v115 = &block_descriptor_1126;
      v53 = _Block_copy(&aBlock);

      v54 = v92;
      fp_task_tracker_async_and_qos(v91, v92, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v93, v51, v53);

      _Block_release(v53);
      _Block_release(v51);

      sub_1CEFCCC44(v109, &unk_1EC4BE370, qword_1CFA01B30);
      v55 = v110[27];
      v56 = swift_allocObject();
      v57 = v99;
      v56[2] = v98;
      v56[3] = v57;
      v56[4] = v105;

      v58 = v55;

      v59 = fpfs_current_log();
      v110 = fpfs_adopt_log();
      v60 = swift_allocObject();
      aBlock = sub_1CF9E73C8();
      v113 = v61;
      MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
      v62 = sub_1CF9E7988();
      v64 = v63;
      MEMORY[0x1D3868CC0](v62);
      v64, v65, v66, v67, v68, v69, v70, v71;
      v72 = v113;
      sub_1CF9E6978();
      v72, v73, v74, v75, v76, v77, v78, v79;
      v80 = __fp_log_fork();

      *(v60 + 16) = v80;
      v81 = swift_allocObject();
      *(v81 + 16) = v59;
      *(v81 + 24) = v60;
      *(v81 + 32) = v58;
      *(v81 + 40) = "_evict(_:evictionReason:completion:)";
      *(v81 + 48) = 36;
      *(v81 + 56) = 2;
      *(v81 + 64) = sub_1CF2B1758;
      *(v81 + 72) = v56;
      v116 = sub_1CF2B9F54;
      v117 = v81;
      aBlock = MEMORY[0x1E69E9820];
      v113 = 1107296256;
      v114 = sub_1CEFCA444;
      v115 = &block_descriptor_1137;
      v82 = _Block_copy(&aBlock);
      v83 = v58;
      v109 = v59;

      v84 = v100;
      sub_1CF9E63F8();
      v111 = MEMORY[0x1E69E7CC0];
      sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
      sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
      v85 = v101;
      v86 = v107;
      sub_1CF9E77B8();
      v87 = v97;
      sub_1CF9E7308();
      _Block_release(v82);
      (*(v106 + 8))(v85, v86);
      (*(v94 + 8))(v84, v108);

      v88 = v110;
      v89 = fpfs_adopt_log();
    }
  }

  else
  {
    LOBYTE(aBlock) = v22;
    sub_1CF29A018(a1, &aBlock, a3, a4);
  }
}

uint64_t sub_1CF29B0FC(uint64_t a1, NSObject *a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v8 = *(type metadata accessor for VFSItem(0) - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      dispatch_group_enter(a2);
      v14 = a4;
      v11 = swift_allocObject();
      *(v11 + 16) = a2;
      v12 = a2;
      sub_1CF29A614(v9, &v14, sub_1CF2B1874, v11);

      v9 += v10;
      --v4;
    }

    while (v4);
  }

  return 0;
}

void sub_1CF29B214(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  dispatch_group_leave(a3);
}

void sub_1CF29B280(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

id sub_1CF29B2EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a1;
  v9 = sub_1CF9E63D8();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VFSItem(0);
  v50 = *(v11 - 8);
  v12 = v50[8];
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v51 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v54 = &v42 - v16;
  v48 = *a2;
  v53 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v53 setCancellable_];
  v18 = *(v4 + 216);
  v46 = *(v4 + 224);
  v47 = v18;
  v19 = sub_1CF9E6448();
  v49 = *(v19 - 8);
  (*(v49 + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  v21 = a3;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  v22 = a4;
  v23 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFD90AC(v52, v23, type metadata accessor for VFSItem);
  v24 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v25 = v24 + v12;
  v26 = (v24 + v12) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = v5;
  sub_1CEFE4C60(v23, v27 + v24, type metadata accessor for VFSItem);
  *(v27 + v25) = v48;
  v28 = v27 + v26;
  *(v28 + 8) = v21;
  *(v28 + 16) = v22;
  v29 = swift_allocObject();
  v29[2] = sub_1CF2BA174;
  v29[3] = v20;
  v30 = v46;
  v29[4] = v46;
  swift_retain_n();
  v31 = v47;

  v52 = v20;

  v32 = fpfs_current_log();
  v33 = v49;
  v50 = *(v30 + 16);
  v34 = v51;
  sub_1CEFCCBDC(v54, v51, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v33 + 48))(v34, 1, v19) == 1)
  {
    sub_1CEFCCC44(v34, &unk_1EC4BE370, qword_1CFA01B30);
    v35 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v36 = v43;
    sub_1CF9E6438();
    (*(v33 + 8))(v34, v19);
    v35 = sub_1CF9E63C8();
    (*(v44 + 8))(v36, v45);
  }

  v37 = swift_allocObject();
  v37[2] = v32;
  v37[3] = sub_1CF2B017C;
  v37[4] = v27;
  v59 = sub_1CF2BA17C;
  v60 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1CEFCA444;
  v58 = &block_descriptor_318;
  v38 = _Block_copy(&aBlock);
  v39 = v32;

  v59 = sub_1CF2BA180;
  v60 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v56 = 1107296256;
  v57 = sub_1CEFCA444;
  v58 = &block_descriptor_321;
  v40 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v50, v31, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v35, v38, v40);
  _Block_release(v40);
  _Block_release(v38);

  sub_1CEFCCC44(v54, &unk_1EC4BE370, qword_1CFA01B30);
  return v53;
}

uint64_t sub_1CF29B8A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for VFSItem(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v17 = a3;
  sub_1CEFD90AC(a2, &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VFSItem);
  v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v13 = swift_allocObject();
  sub_1CEFE4C60(&v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12, type metadata accessor for VFSItem);
  v14 = (v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a4;
  v14[1] = a5;

  sub_1CF29A614(a2, &v17, sub_1CF2B0210, v13);
}

uint64_t sub_1CF29BA18(void *a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4)
{
  v8 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v47 = v13;
    v17 = a1;
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFD90AC(a2, v10, type metadata accessor for VFSItem);
    v19 = a1;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E72A8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v46 = a4;
      v23 = v22;
      v44 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      v52 = v24;
      *v23 = 136446466;
      v25 = v10[8];
      v50 = *v10;
      v51 = v25;
      v26 = VFSItemID.description.getter(v24);
      v27 = a3;
      v29 = v28;
      sub_1CEFE5888(v10, type metadata accessor for VFSItem);
      v30 = sub_1CEFD0DF0(v26, v29, &v52);
      v31 = v29;
      a3 = v27;
      v31, v32, v33, v34, v35, v36, v37, v38;
      *(v23 + 4) = v30;
      *(v23 + 12) = 2112;
      swift_getErrorValue();
      v39 = Error.prettyDescription.getter(v48, v49);
      *(v23 + 14) = v39;
      v40 = v44;
      *v44 = v39;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "Eviction of %{public}s failed with %@", v23, 0x16u);
      sub_1CEFCCC44(v40, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v40, -1, -1);
      v41 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D386CDC0](v41, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    else
    {

      sub_1CEFE5888(v10, type metadata accessor for VFSItem);
    }

    (*(v12 + 8))(v16, v47);
  }

  return a3(a1, v14);
}

void sub_1CF29BD50(void *a1, char a2, void (*a3)(void *, __n128), uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, void *a9, uint64_t a10, uint64_t a11)
{
  v66 = a8;
  v65 = sub_1CF9E63D8();
  v18 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v55 - v24;
  if (a2)
  {
    v26 = a1;
LABEL_8:
    a3(v26, v23);
    return;
  }

  if (!a1)
  {
    v26 = 0;
    goto LABEL_8;
  }

  v55 = v18;
  v59 = v22;
  v62 = a1;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v60 = a9;
  v61 = a4;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(v27 + 48) = a7;
  *(v27 + 56) = v66;
  *(v27 + 64) = a9;
  v58 = a10;
  *(v27 + 72) = a10;
  *(v27 + 80) = a11;
  v28 = a5 + qword_1EDEBBE70;
  swift_beginAccess();
  v29 = *(v28 + 8);
  v30 = __CFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 8) = v31;
    v32 = *(a5 + 216);
    v56 = *(a5 + 224);
    v57 = v32;
    v33 = sub_1CF9E6448();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v25, 1, 1, v33);
    v35 = swift_allocObject();
    v35[2] = sub_1CF2BA154;
    v35[3] = v27;
    v36 = swift_allocObject();
    v63 = v25;
    v37 = v36;
    *(v36 + 16) = a5;
    *(v36 + 24) = a6;
    *(v36 + 32) = a7;
    *(v36 + 40) = sub_1CF2BA154;
    *(v36 + 48) = v27;
    v38 = v62;
    v39 = v58;
    *(v36 + 56) = v62;
    *(v36 + 64) = v39;
    *(v36 + 72) = a11;
    v40 = swift_allocObject();
    v40[2] = sub_1CF2BA178;
    v40[3] = v35;
    v41 = v56;
    v40[4] = v56;
    v42 = v60;
    v60 = v57;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v43 = v66;
    v44 = v33;
    sub_1CF2B1868(v38, 0);
    v66 = v35;

    v45 = v41;

    v46 = fpfs_current_log();
    v62 = *(v45 + 16);
    v47 = v59;
    sub_1CEFCCBDC(v63, v59, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v34 + 48))(v47, 1, v33) == 1)
    {
      sub_1CEFCCC44(v47, &unk_1EC4BE370, qword_1CFA01B30);
      v48 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v49 = v64;
      sub_1CF9E6438();
      (*(v34 + 8))(v47, v44);
      v48 = sub_1CF9E63C8();
      (*(v55 + 8))(v49, v65);
    }

    v50 = swift_allocObject();
    v50[2] = v46;
    v50[3] = sub_1CF2B9F50;
    v50[4] = v37;
    v71 = sub_1CF2BA17C;
    v72 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1CEFCA444;
    v70 = &block_descriptor_1160;
    v51 = _Block_copy(&aBlock);
    v52 = v46;

    v71 = sub_1CF2BA184;
    v72 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v68 = 1107296256;
    v69 = sub_1CEFCA444;
    v70 = &block_descriptor_1163;
    v53 = _Block_copy(&aBlock);

    v54 = v60;
    fp_task_tracker_async_and_qos(v62, v60, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v48, v51, v53);

    _Block_release(v53);
    _Block_release(v51);

    sub_1CEFCCC44(v63, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

void sub_1CF29C328(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (**a5)()@<X8>)
{
  v14 = VFSItemID.description.getter(a1);
  v15 = v10;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  MEMORY[0x1D3868CC0](a2, a3);
  v11 = a4 + qword_1EDEAFAF8;
  os_unfair_lock_lock((a4 + qword_1EDEAFAF8));
  sub_1CF29C444((v11 + 8), v14, v15);
  os_unfair_lock_unlock(v11);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 2) = v12;
    *(v13 + 3) = v14;
    *(v13 + 4) = v15;
    *a5 = sub_1CF2B9A44;
    a5[1] = v13;
  }
}

void sub_1CF29C444(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    v8 = sub_1CEFE4328(a2, a3);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 8 * v8);
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *result;
    sub_1CF1D20F4(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    *result = v12;
  }
}

uint64_t sub_1CF29C4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6448();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = v6;
    v14 = *(result + 216);
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a2;
    v20[1] = v15;
    v16[4] = a3;
    aBlock[4] = sub_1CF2B9AA0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_1492;
    v17 = _Block_copy(aBlock);
    v21 = v9;
    v18 = v17;
    v19 = v14;

    sub_1CF9E63F8();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v12, v8, v18);
    _Block_release(v18);

    (*(v22 + 8))(v8, v5);
    (*(v10 + 8))(v12, v21);
  }

  return result;
}

void sub_1CF29C820(uint64_t a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3)
{
  v6 = a1 + qword_1EDEAFAF8;
  os_unfair_lock_lock((a1 + qword_1EDEAFAF8));
  sub_1CF29C8E0((v6 + 8), a2, a3, &v10);
  os_unfair_lock_unlock(v6);
  if (v10)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v8 = *(a1 + 72);

      v7(v9);

      sub_1CEFF7124(v7, v8);
    }
  }
}

void sub_1CF29C8E0(void *a1@<X0>, uint64_t a2@<X1>, _TtC18FileProviderDaemon8FSTester *a3@<X2>, BOOL *a4@<X8>)
{
  v7 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_1CEFE4328(a2, a3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(*(v7 + 56) + 8 * v9);
  v12 = v11 - 1;
  if (v11 != 1)
  {
    if (!__OFSUB__(v11, 1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a1;
      sub_1CF1D20F4(v12, a2, a3, isUniquelyReferenced_nonNull_native);
      v13 = v15;
      *a1 = v15;
      goto LABEL_7;
    }

    __break(1u);
LABEL_9:

    sub_1CF5114B8("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSFileTree.swift", 123, 2, 3827, a2, a3);
  }

  sub_1CF1C8E7C(0, 1, a2, a3);
  v13 = *a1;
LABEL_7:
  *a4 = *(v13 + 16) == 0;
}

BOOL sub_1CF29C9F4()
{
  v1 = v0 + qword_1EDEAFAF8;
  os_unfair_lock_lock((v0 + qword_1EDEAFAF8));
  v2 = *(*(v1 + 8) + 16) != 0;
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_1CF29CA40(void *a1)
{
  v3 = v1 + qword_1EDEAFAF8;
  os_unfair_lock_lock(v3);
  sub_1CF29CAA8((v3 + 8), a1);

  os_unfair_lock_unlock(v3);
}

void sub_1CF29CAA8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v47 = v2;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = (*(v47 + 48) + 16 * (v10 | (v9 << 6)));
    v12 = *v11;
    v13 = v11[1];
    v14 = a2[3];
    v48 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v14);

    sub_1CF9E7948();
    0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
    MEMORY[0x1D3868CC0](v12, v13);
    v13, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](10272, 0xE200000000000000);
    v29 = sub_1CF9E7F98();
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    MEMORY[0x1D3868CC0](0x2973656D697420, 0xE700000000000000);
    sub_1CF4FB2BC(0xD00000000000001DLL, 0x80000001CFA3D670, v14, v48);
    0x80000001CFA3D670, v39, v40, v41, v42, v43, v44, v45;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CF29CC88(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6388();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v49 - v13;
  v14 = sub_1CF9E6498();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v52 = &v49 - v17;
  v18 = sub_1CF9E63D8();
  v19 = *(v18 - 8);
  v50 = v18;
  v51 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E6448();
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CF9E73D8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  *(v29 + 32) = a2;
  *(v29 + 40) = v5;
  *(v29 + 48) = v27;
  v54 = v27;
  v53 = v28;
  *(v29 + 56) = v28;
  v49 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v30 = *(v5 + 216);
  v67 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);

  v59 = v5;

  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v32 = v50;
  sub_1CF9E77B8();
  v33 = sub_1CF9E73E8();

  v34 = v26;
  v35 = v52;
  (*(v24 + 8))(v34, v23);
  v36 = v51;
  qos_class_self();
  sub_1CF9E63B8();
  v37 = *(v36 + 48);
  if (v37(v35, 1, v32) == 1)
  {
    (*(v36 + 104))(v55, *MEMORY[0x1E69E7FA0], v32);
    if (v37(v35, 1, v32) != 1)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v36 + 32))(v55, v35, v32);
  }

  ObjectType = swift_getObjectType();
  v39 = v56;
  sub_1CF9E6428();
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 16) = v59;
  *(v40 + 24) = v41;
  *(v40 + 32) = v53;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0;
  *(v40 + 144) = 1;
  *(v40 + 152) = v33;
  *(v40 + 160) = sub_1CF2B0168;
  *(v40 + 168) = v29;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v39, sub_1CEFD5D08, v40, ObjectType);

  (*(v57 + 8))(v39, v58);
  v42 = v60;
  sub_1CF9E6478();
  v43 = v63;
  sub_1CEFD5B64(v63);
  v44 = v64;
  sub_1CEFD5BD8(v64);
  MEMORY[0x1D3869770](v42, v43, v44, ObjectType);
  v45 = *(v65 + 8);
  v46 = v44;
  v47 = v66;
  v45(v46, v66);
  v45(v43, v47);
  (*(v61 + 8))(v42, v62);
  sub_1CF9E7448();

  return swift_unknownObjectRelease();
}

void sub_1CF29D348(uint64_t a1, void (*a2)(id), uint64_t a3, int a4, void *a5, uint64_t a6, int a7)
{
  v79 = a7;
  v78 = a6;
  v84 = a5;
  v83 = a4;
  v9 = sub_1CF9E6118();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VFSItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v77 - v15);
  sub_1CEFCCBDC(a1, &v77 - v15, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = *v16;
    a2(v17);

    return;
  }

  if ((*(v12 + 48))(v16, 1, v11) == 1)
  {
    a2(0);
    return;
  }

  v19 = v85;
  sub_1CEFE4C60(v16, v85, type metadata accessor for VFSItem);
  v20 = (v19 + *(v11 + 28));
  v21 = type metadata accessor for ItemMetadata(0);
  if (!v20[*(v21 + 84)] && ((v83 & 1) == 0 || v20[*(v21 + 60)] == 1))
  {
    goto LABEL_26;
  }

  v22 = *(v19 + 8);
  v91 = *v19;
  v92 = v22;
  v23 = v19 + *(v11 + 36);
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = *(v23 + 16);
  v27 = *(v19 + 16);
  v28 = *(v19 + 24);
  v30 = *(v19 + 32);
  v29 = *(v19 + 40);
  v90 = *(v23 + 24);
  *&v86[0] = v24;
  DWORD2(v86[0]) = v25;
  *&v86[1] = v26;
  BYTE8(v86[1]) = v90;
  *&v86[2] = 0;
  *(&v86[2] + 1) = v27;
  LOBYTE(v87) = v28;
  *(&v87 + 1) = v30;
  v88 = v29;
  v89 = 0uLL;

  v31 = v84;
  sub_1CEFDAA48(&v91, v86, v93, v32, v33, v34, v35, v36, v37);
  v95[2] = v86[2];
  v95[3] = v87;
  v95[4] = v88;
  v95[5] = v89;
  v95[0] = v86[0];
  v95[1] = v86[1];
  sub_1CEFCCC44(v95, &unk_1EC4BECD0, &unk_1CF9FEF80);
  v38 = v94;
  v86[0] = v93[0];
  v86[1] = v93[1];
  *&v86[2] = v94;
  v39 = objc_sync_enter(v31);
  if (v39)
  {
    MEMORY[0x1EEE9AC00](v39);
    *(&v77 - 2) = v31;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v77 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v40 = v31[20];

  v41 = objc_sync_exit(v31);
  if (v41)
  {
    MEMORY[0x1EEE9AC00](v41);
    *(&v77 - 2) = v31;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v77 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v42 = *(v40 + 16);

  v43 = sub_1CEFDADE0(v86, v42, 0x200000);
  v38, v44, v45, v46, v47, v48, v49, v50;
  if ((v83 & 1) == 0 || *v20 != 1)
  {
    goto LABEL_23;
  }

  LODWORD(v84) = v43;
  v55 = fpfs_current_or_default_log();
  v56 = v82;
  sub_1CF9E6128();
  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E7288();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v93[0] = v60;
    *v59 = 136446210;
    *&v86[0] = v78;
    BYTE8(v86[0]) = v79;
    v61 = VFSItemID.description.getter(v60);
    v63 = v62;
    v64 = sub_1CEFD0DF0(v61, v62, v93);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v59 + 4) = v64;
    _os_log_impl(&dword_1CEFC7000, v57, v58, "marking sync root bit for folder %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1D386CDC0](v60, -1, -1);
    MEMORY[0x1D386CDC0](v59, -1, -1);

    (*(v80 + 8))(v82, v81);
  }

  else
  {

    (*(v80 + 8))(v56, v81);
  }

  v43 = v84;
  if ((fpfs_fset_syncroot() & 0x80000000) == 0)
  {
    if ((fpfs_make_fsevent() & 0x80000000) != 0)
    {
      v73 = MEMORY[0x1D38683F0]();
      v74 = 16;
LABEL_30:
      *&v86[0] = v74;
      *(v86 + 8) = 0u;
      *(&v86[1] + 8) = 0u;
      v75 = 19;
      goto LABEL_31;
    }

LABEL_23:
    if ((fpfs_unset_evictable() & 0x80000000) == 0)
    {
      if ((v43 & 0x80000000) == 0)
      {
        close(v43);
      }

      goto LABEL_26;
    }

    v73 = MEMORY[0x1D38683F0]();
    v74 = 20;
    goto LABEL_30;
  }

  v73 = MEMORY[0x1D38683F0]();
  LODWORD(v86[0]) = 1;
  v75 = 6;
LABEL_31:
  BYTE8(v86[2]) = v75;
  v76 = sub_1CF19BBE4(v73, v86);
  sub_1CF1969CC(v86);
  swift_willThrow();
  if ((v43 & 0x80000000) == 0)
  {
    close(v43);
  }

  v51 = v76;
  LODWORD(v86[0]) = sub_1CF9E5328();
  sub_1CF196978();
  v52 = sub_1CF9E5658();

  if (v52 & 1) != 0 || (v53 = v76, LODWORD(v86[0]) = sub_1CF9E5378(), v54 = sub_1CF9E5658(), v76, (v54))
  {

LABEL_26:
    a2(0);
    goto LABEL_27;
  }

  v72 = v76;
  a2(v76);

LABEL_27:
  sub_1CEFE5888(v19, type metadata accessor for VFSItem);
}

uint64_t sub_1CF29DA68(uint64_t *a1, __int128 *a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v41 = sub_1CF9E63D8();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v17 = a2[3];
  v52 = a2[2];
  v53 = v17;
  v18 = a2[5];
  v54 = a2[4];
  v55 = v18;
  v19 = a2[1];
  v50 = *a2;
  v51 = v19;
  v20 = *(v5 + 224);
  v42 = *(v5 + 216);
  v21 = sub_1CF9E6448();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v15, 1, 1, v21);
  v23 = swift_allocObject();
  v24 = v53;
  *(v23 + 72) = v52;
  *(v23 + 88) = v24;
  v25 = v55;
  *(v23 + 104) = v54;
  *(v23 + 120) = v25;
  v26 = v51;
  *(v23 + 40) = v50;
  *(v23 + 16) = v5;
  *(v23 + 24) = v16;
  *(v23 + 32) = a1;
  *(v23 + 56) = v26;
  v27 = v43;
  *(v23 + 136) = v43;
  *(v23 + 144) = a4;
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = a4;
  v28[4] = v20;
  swift_retain_n();
  v29 = v42;

  sub_1CEFCCBDC(&v50, &aBlock, &unk_1EC4BE330, &unk_1CF9FF010);

  v30 = fpfs_current_log();
  v42 = *(v20 + 16);
  v43 = v15;
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_1CEFCCC44(v12, &unk_1EC4BE370, qword_1CFA01B30);
    v31 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v32 = v39;
    sub_1CF9E6438();
    (*(v22 + 8))(v12, v21);
    v31 = sub_1CF9E63C8();
    (*(v40 + 8))(v32, v41);
  }

  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = sub_1CF2B0104;
  v33[4] = v23;
  v48 = sub_1CF2BA17C;
  v49 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1CEFCA444;
  v47 = &block_descriptor_283;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  v48 = sub_1CF2B0118;
  v49 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1CEFCA444;
  v47 = &block_descriptor_286;
  v36 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v42, v29, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v31, v34, v36);
  _Block_release(v36);
  _Block_release(v34);

  return sub_1CEFCCC44(v43, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF29DFA0(void *a1, uint64_t a2, int a3, __int128 *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v152 = a6;
  v153 = a5;
  v10 = sub_1CF9E5CF8();
  v147 = *(v10 - 8);
  v148 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v154);
  v145 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v135 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v149 = &v135 - v17;
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v150 = v18;
  v151 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v135 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v135 - v26;
  v28 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a2;
  *&v168 = a2;
  BYTE8(v168) = a3;
  v31 = a4[3];
  v182 = a4[2];
  v183 = v31;
  v32 = a4[5];
  *v184 = a4[4];
  *&v184[16] = v32;
  v33 = a4[1];
  v180 = *a4;
  v181 = v33;
  *&v156[0] = 0;
  sub_1CF278908(&v168, &v180, v156, 0, v30);
  v140 = v21;
  v141 = v24;
  v142 = 0;
  v143 = v27;
  v138 = a4;
  v139 = a3;
  v35 = v15;
  v36 = v151;
  if (v30[24] >= 2u && *(v30 + 2))
  {
    sub_1CEFD90AC(v30, v35, type metadata accessor for VFSItem);
    swift_storeEnumTagMultiPayload();
    v153(v35);
    sub_1CEFCCC44(v35, &unk_1EC4BF300, &unk_1CFA006B0);
    v37 = v30;
    return sub_1CEFE5888(v37, type metadata accessor for VFSItem);
  }

  v38 = a1;
  v39 = objc_sync_enter(a1);
  if (v39)
  {
    goto LABEL_24;
  }

  v40 = objc_sync_exit(a1);
  v41 = v149;
  v42 = v150;
  if (v40)
  {
    goto LABEL_25;
  }

  v43 = v36;
  v44 = v30;
  sub_1CF25116C(v149);
  v45 = v35;
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_1CEFCCC44(v41, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF2B0124(&v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v46 = swift_allocError();
    *v47 = v180;
    v48 = *v184;
    v50 = v181;
    v49 = v182;
    *(v47 + 48) = v183;
    *(v47 + 64) = v48;
    *(v47 + 16) = v50;
    *(v47 + 32) = v49;
    v52 = v185;
    v51 = v186;
    v53 = *&v184[16];
    *(v47 + 128) = v187;
    *(v47 + 96) = v52;
    *(v47 + 112) = v51;
    *(v47 + 80) = v53;
    *v35 = v46;
    swift_storeEnumTagMultiPayload();
    v153(v35);
    sub_1CEFCCC44(v35, &unk_1EC4BF300, &unk_1CFA006B0);
    v37 = v44;
    return sub_1CEFE5888(v37, type metadata accessor for VFSItem);
  }

  v137 = v44;
  v55 = v143;
  (*(v43 + 32))(v143, v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v56 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CF9FA450;
  v39 = objc_sync_enter(a1);
  if (v39)
  {
    goto LABEL_24;
  }

  v58 = a1[20];

  v40 = objc_sync_exit(v38);
  if (v40)
  {
LABEL_25:
    MEMORY[0x1EEE9AC00](v40);
    v133 = v38;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v132, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v59 = *(v43 + 16);
  v149 = (v43 + 16);
  v136 = v59;
  v59((v57 + v56), v58 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v42);

  v60 = sub_1CF7E208C(v57);
  swift_setDeallocating();
  v63 = *(v43 + 8);
  v61 = v43 + 8;
  v62 = v63;
  v63((v57 + v56), v42);
  swift_deallocClassInstance();
  if (!v60)
  {
    sub_1CF2B0124(&v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v102 = swift_allocError();
    *v103 = v180;
    v104 = *v184;
    v106 = v181;
    v105 = v182;
    *(v103 + 48) = v183;
    *(v103 + 64) = v104;
    *(v103 + 16) = v106;
    *(v103 + 32) = v105;
    v108 = v185;
    v107 = v186;
    v109 = *&v184[16];
    *(v103 + 128) = v187;
    *(v103 + 96) = v108;
    *(v103 + 112) = v107;
    *(v103 + 80) = v109;
    *v45 = v102;
    swift_storeEnumTagMultiPayload();
    v153(v45);
    sub_1CEFCCC44(v45, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v137, type metadata accessor for VFSItem);
    return v62(v55, v42);
  }

  v135 = v62;
  v64 = v137;
  v65 = *(v137 + 40);
  *&v168 = *(v137 + 32);
  *(&v168 + 1) = v65;

  v66 = v146;
  sub_1CF9E5CE8();
  v67 = v142;
  sub_1CF661EA4(v66, v38, &v180);
  (*(v147 + 8))(v66, v148);
  *(&v168 + 1), v68, v69, v70, v71, v72, v73, v74;
  v151 = v61;
  if (!*(&v180 + 1))
  {
    v110 = *(v64 + 40);
    v111 = v153;
    *&v180 = *(v64 + 32);
    *(&v180 + 1) = v110;
    *&v181 = 1;
    BYTE8(v181) = 2;
    sub_1CF2B015C(&v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v112 = swift_allocError();
    *v113 = v180;
    v114 = *v184;
    v116 = v181;
    v115 = v182;
    *(v113 + 48) = v183;
    *(v113 + 64) = v114;
    *(v113 + 16) = v116;
    *(v113 + 32) = v115;
    v118 = v185;
    v117 = v186;
    v119 = *&v184[16];
    *(v113 + 128) = v187;
    *(v113 + 96) = v118;
    *(v113 + 112) = v117;
    *(v113 + 80) = v119;
    *v45 = v112;
    swift_storeEnumTagMultiPayload();

    v111(v45);
    sub_1CEFCCC44(v45, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v64, type metadata accessor for VFSItem);
    return v135(v143, v42);
  }

  v148 = v67;
  v75 = *(&v180 + 1);
  v76 = v180;
  v39 = objc_sync_enter(v38);
  if (v39)
  {
LABEL_24:
    MEMORY[0x1EEE9AC00](v39);
    v133 = v38;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v132, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v77 = v38[20];

  v40 = objc_sync_exit(v38);
  v78 = v141;
  if (v40)
  {
    goto LABEL_25;
  }

  v79 = v140;
  v136(v140, v77 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v42);

  v147 = v76;
  *&v180 = v76;
  *(&v180 + 1) = v75;
  v149 = v75;
  *&v168 = 47;
  *(&v168 + 1) = 0xE100000000000000;
  *&v156[0] = 58;
  *(&v156[0] + 1) = 0xE100000000000000;
  v80 = sub_1CEFE4E68();
  v132[0] = MEMORY[0x1E69E6158];
  v132[1] = v80;
  sub_1CF9E7668();
  v82 = v81;
  sub_1CF9E5958();
  v82, v83, v84, v85, v86, v87, v88, v89;
  v90 = v78;
  v91 = v135;
  v92 = v135(v79, v42);
  MEMORY[0x1EEE9AC00](v92);
  v93 = v143;
  v133 = v143;
  v134 = v78;
  v94 = v148;
  sub_1CEFE1894(sub_1CF1B7D84);
  if (v94)
  {
    sub_1CEFE5888(v137, type metadata accessor for VFSItem);
    v149, v95, v96, v97, v98, v99, v100, v101;
    v91(v90, v42);
    v91(v93, v42);
    *v45 = v94;
    swift_storeEnumTagMultiPayload();
    v34 = v94;
    v153(v45);

    return sub_1CEFCCC44(v45, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  else
  {
    v120 = v138[1];
    v177 = *v138;
    v178 = v120;
    v179 = *(v138 + 4);
    v176[0] = *(v138 + 49);
    *(v176 + 3) = *(v138 + 13);
    v121 = *(v138 + 8);
    v174 = *(v138 + 72);
    v175 = *(v138 + 11);
    sub_1CEFCCBDC(v138, &v168, &unk_1EC4BE330, &unk_1CF9FF010);
    v121, v122, v123, v124, v125, v126, v127, v128;
    v166 = v144;
    v167 = v139;
    v180 = v177;
    v181 = v178;
    *&v182 = v179;
    *(&v182 + 1) = 1;
    LOBYTE(v183) = 2;
    *(&v183 + 1) = v176[0];
    DWORD1(v183) = *(v176 + 3);
    *(&v183 + 1) = v147;
    *v184 = v149;
    *&v184[24] = v175;
    *&v184[8] = v174;
    v170 = v182;
    v171 = v183;
    v172 = *v184;
    v173 = *&v184[16];
    v168 = v177;
    v169 = v178;
    v165 = 0;
    sub_1CEFCCBDC(&v180, v156, &unk_1EC4BE330, &unk_1CF9FF010);
    v129 = v145;
    sub_1CF278908(&v166, &v168, &v165, 0, v145);
    v155[2] = v170;
    v155[3] = v171;
    v155[4] = v172;
    v155[5] = v173;
    v155[0] = v168;
    v155[1] = v169;
    sub_1CEFCCC44(v155, &unk_1EC4BE330, &unk_1CF9FF010);
    swift_storeEnumTagMultiPayload();
    v153(v129);
    sub_1CEFCCC44(v129, &unk_1EC4BF300, &unk_1CFA006B0);
    sub_1CEFE5888(v137, type metadata accessor for VFSItem);
    v156[0] = v177;
    v156[1] = v178;
    v157 = v179;
    v158 = 1;
    v159 = 2;
    *v160 = v176[0];
    *&v160[3] = *(v176 + 3);
    v161 = v147;
    v162 = v149;
    v164 = v175;
    v163 = v174;
    sub_1CEFCCC44(v156, &unk_1EC4BE330, &unk_1CF9FF010);
    v130 = v150;
    v131 = v135;
    v135(v141, v150);
    return v131(v143, v130);
  }
}

uint64_t sub_1CF29EF00(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t *a5)
{
  v9 = a2;
  v276 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v246 = &v225 - v11;
  v248 = sub_1CF9E5A58();
  v247 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v244 = &v225 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v243 = &v225 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v245 = &v225 - v16;
  v255 = type metadata accessor for VFSItem(0);
  v257 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v249 = &v225 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v256 = &v225 - v19;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v261);
  v241 = (&v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v242 = (&v225 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v258 = (&v225 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v250 = (&v225 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v225 - v28);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v260);
  v240 = &v225 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v239 = (&v225 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v254 = &v225 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v253 = (&v225 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v251 = &v225 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v259 = (&v225 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v225 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v252 = &v225 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v225 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v58 = (&v225 - v57);
  if (v9 != 1)
  {
    v59 = FPNotSupportedError();
    if (v59)
    {
      *v58 = v59;
      swift_storeEnumTagMultiPayload();
      a3(v58);
      v64 = &unk_1EC4BF300;
      v65 = &unk_1CFA006B0;
      v66 = v58;
      return sub_1CEFCCC44(v66, v64, v65);
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  0, v50, v51, v52, v53, v54, v55, v56;
  *aBlock = a1;
  memset(&aBlock[8], 0, 32);
  v59 = objc_sync_enter(a5);
  if (v59)
  {
LABEL_67:
    MEMORY[0x1EEE9AC00](v59);
    v223 = &v225 - 4;
    *(&v225 - 2) = a5;
    goto LABEL_70;
  }

  v236 = v43;
  v60 = a5[20];

  v237 = a5;
  v61 = objc_sync_exit(a5);
  if (v61)
  {
    goto LABEL_71;
  }

  v62 = *(v60 + 16);

  v238 = sub_1CEFDADE0(aBlock, v62, 1048832);
  0, v68, v69, v70, v71, v72, v73, v74;
  v75 = v237;
  v76 = objc_sync_enter(v237);
  if (v76)
  {
    goto LABEL_69;
  }

  v226 = 0;
  v235 = v46;
  v232 = v48;
  v233 = a1;
  v234 = a4;
  v228 = a3;
  v77 = v75[20];

  v61 = objc_sync_exit(v75);
  if (v61)
  {
LABEL_71:
    MEMORY[0x1EEE9AC00](v61);
    v224 = &v225 - 4;
    *(&v225 - 2) = v237;
    goto LABEL_72;
  }

  v78 = type metadata accessor for VFSFileTree(0);
  os_unfair_lock_lock((v77 + 56));
  v79 = *(v77 + 64);
  v80 = *(v77 + 72);
  v81 = *(v77 + 88);
  v82 = *(v77 + 89);
  v83 = *(v77 + 90);

  v84 = *(v77 + 80);
  os_unfair_lock_unlock((v77 + 56));
  v231 = &v225;
  MEMORY[0x1EEE9AC00](v85);
  v225 = v78;
  *(&v225 - 10) = v78;
  *(&v225 - 18) = v238;
  *(&v225 - 7) = 0;
  *(&v225 - 6) = 0;
  *(&v225 - 8) = v77;
  *(&v225 - 40) = 2;
  v86 = v233;
  *(&v225 - 4) = 1;
  *(&v225 - 3) = v86;
  *(&v225 - 16) = 1;
  *(&v225 - 1) = 0;
  *&aBlock[32] = v79;
  *&aBlock[40] = v80;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1CEFDB088;
  *&aBlock[24] = &block_descriptor_234;
  v87 = _Block_copy(aBlock);
  v229 = v80;

  v230 = v87;
  v264 = v87;
  v265 = v84;
  v266 = v81;
  v267 = v82;
  v268 = v83;
  v227 = sub_1CEFDB034();
  v88 = swift_allocError();
  *v89 = 6;
  *(v89 + 8) = 0u;
  *(v89 + 24) = 0u;
  *(v89 + 40) = 19;
  *v29 = v88;
  swift_storeEnumTagMultiPayload();
  v90 = swift_allocObject();
  v90[2] = v29;
  v90[3] = sub_1CF2B9F90;
  v90[4] = &v225 - 12;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1CF1DBD3C;
  *(v91 + 24) = v90;
  *&aBlock[32] = sub_1CF1DBD5C;
  *&aBlock[40] = v91;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1CEFDB270;
  *&aBlock[24] = &block_descriptor_245;
  v92 = _Block_copy(aBlock);

  v93 = fpfs_fgetfileattrs_detailed();
  _Block_release(v92);
  LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

  if (v92)
  {
    __break(1u);
  }

  if (v93)
  {
    swift_getErrorValue();
    v94 = v262;
    v95 = swift_allocError();
    *v96 = 6;
    *(v96 + 8) = 0u;
    *(v96 + 24) = 0u;
    *(v96 + 40) = 19;
    v97 = v93;
    v98 = sub_1CF199074(v95, v94);

    v99 = v250;
    *v250 = v98;
    swift_storeEnumTagMultiPayload();
    sub_1CEFDA9E0(v99, v29, &qword_1EC4BE000, &unk_1CFA006A0);
  }

  v100 = v258;
  sub_1CEFCCBDC(v29, v258, &qword_1EC4BE000, &unk_1CFA006A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *aBlock = *v100;
    v101 = *aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    swift_willThrowTypedImpl();

    sub_1CEFCCC44(v29, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v230);

    v102 = v101;
    *aBlock = sub_1CF9E52A8();
    sub_1CF196978();
    v103 = sub_1CF9E5658();

    v104 = v259;
    if ((v103 & 1) == 0)
    {
      goto LABEL_61;
    }

    v105 = v253;
    *v253 = xmmword_1CF9FD940;
    *(v105 + 16) = 2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    v106 = v100;
    v105 = v253;
    sub_1CEFE55D0(v106, v253, &unk_1EC4BE2F0, qword_1CFA04220);
    sub_1CEFCCC44(v29, &qword_1EC4BE000, &unk_1CFA006A0);

    _Block_release(v230);

    v104 = v259;
  }

  v107 = v254;
  sub_1CEFE55D0(v105, v254, &unk_1EC4BE2F0, qword_1CFA04220);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v109 = v257;
  v110 = v257 + 56;
  v111 = v236;
  v112 = v255;
  v113 = v256;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CEFCCC44(v107, &unk_1EC4BE2F0, qword_1CFA04220);
    v114 = 1;
  }

  else
  {
    sub_1CEFE4C60(v107, v236, type metadata accessor for VFSItem);
    v114 = 0;
  }

  v115 = v232;
  v259 = *(v109 + 56);
  v259(v111, v114, 1, v112);
  sub_1CEFCCBDC(v111, v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v118 = *(v109 + 48);
  v116 = v109 + 48;
  v117 = v118;
  if (v118(v104, 1, v112) == 1)
  {
    sub_1CEFCCC44(v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_28:
    v121 = v252;
    sub_1CEFCCBDC(v111, v252, &unk_1EC4BEC00, &unk_1CF9FCB60);
    goto LABEL_29;
  }

  sub_1CEFE4C60(v104, v113, type metadata accessor for VFSItem);
  v119 = *v113;
  v120 = *(v113 + 8);
  if (v120 == 2 && !v119 || v120 == 2 && v119 == 1 || (v257 = v116, v138 = v113 + *(v112 + 28), (*(v138 + *(type metadata accessor for ItemMetadata(0) + 72)) & 1) != 0))
  {
    sub_1CEFE5888(v113, type metadata accessor for VFSItem);
    goto LABEL_28;
  }

  v75 = v237;
  v76 = objc_sync_enter(v237);
  if (v76)
  {
LABEL_69:
    MEMORY[0x1EEE9AC00](v76);
    v223 = &v225 - 4;
    *(&v225 - 2) = v75;
    goto LABEL_70;
  }

  v254 = v110;
  v61 = objc_sync_exit(v75);
  if (v61)
  {
    goto LABEL_71;
  }

  v139 = v246;
  sub_1CF25116C(v246);
  if ((*(v247 + 48))(v139, 1, v248) == 1)
  {
    sub_1CEFE5888(v113, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v139, &unk_1EC4BE310, qword_1CF9FCBE0);
    v112 = v255;
    goto LABEL_28;
  }

  v140 = v243;
  v141 = v139;
  sub_1CF9E5988();
  v142 = v247;
  v143 = v248;
  v144 = (v247 + 8);
  v258 = *(v247 + 8);
  (v258)(v141, v248);
  v145 = v245;
  (*(v142 + 32))(v245, v140, v143);
  v146 = *(v113 + 40);
  *aBlock = *(v113 + 32);
  *&aBlock[8] = v146;

  a5 = v237;
  v59 = objc_sync_enter(v237);
  if (v59)
  {
    goto LABEL_67;
  }

  v253 = v144;
  v147 = a5[20];

  v148 = objc_sync_exit(a5);
  v149 = v244;
  if (v148)
  {
    goto LABEL_76;
  }

  (*(v142 + 16))(v244, v147 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v143);

  v150 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v152 = v151;
  v153 = v238;
  v154 = v145;
  v155 = v226;
  sub_1CF2AFAD4(v238, v154, aBlock, v149, v150, v152);
  v163 = v149;
  if (!v155)
  {
    v152, v156, v157, v158, v159, v160, v161, v162;
    (v258)(v149, v143);
    *&aBlock[8], v174, v175, v176, v177, v178, v179, v180;
    v59 = objc_sync_enter(a5);
    if (v59)
    {
      goto LABEL_67;
    }

    v181 = a5[20];

    v148 = objc_sync_exit(a5);
    v182 = a5;
    if (!v148)
    {
      v183 = *(v256 + 16);
      v185 = *(v256 + 32);
      v184 = *(v256 + 40);
      v186 = *(v256 + 24);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v264 = *(v181 + 96);
      *(v181 + 96) = 0x8000000000000000;
      sub_1CF1D1DC8(v183, v186, v185, v184, v233, 1, isUniquelyReferenced_nonNull_native);
      *(v181 + 96) = v264;
      swift_endAccess();

      v188 = objc_sync_enter(v182);
      if (!v188)
      {
        v189 = v182[20];

        v190 = objc_sync_exit(v182);
        if (!v190)
        {
          v247 = *(v189 + 24);
          os_unfair_lock_lock((v189 + 56));
          v191 = *(v189 + 64);
          v192 = *(v189 + 72);
          v193 = *(v189 + 88);
          v194 = *(v189 + 89);
          v195 = *(v189 + 90);

          v196 = *(v189 + 80);
          os_unfair_lock_unlock((v189 + 56));
          v244 = &v225;
          MEMORY[0x1EEE9AC00](v197);
          *(&v225 - 10) = v225;
          *(&v225 - 18) = v238;
          *(&v225 - 7) = 0;
          *(&v225 - 6) = 0;
          *(&v225 - 8) = v189;
          *(&v225 - 40) = 2;
          v198 = v233;
          *(&v225 - 4) = 0;
          *(&v225 - 3) = v198;
          *(&v225 - 16) = 1;
          *(&v225 - 1) = 0;
          *&aBlock[32] = v191;
          *&aBlock[40] = v192;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB088;
          *&aBlock[24] = &block_descriptor_258;
          v199 = _Block_copy(aBlock);
          v246 = v192;
          v200 = v199;

          v237 = v200;
          v264 = v200;
          v265 = v196;
          v266 = v193;
          v267 = v194;
          v268 = v195;
          v201 = swift_allocError();
          *v202 = 6;
          *(v202 + 8) = 0u;
          *(v202 + 24) = 0u;
          *(v202 + 40) = 19;
          a5 = v242;
          *v242 = v201;
          swift_storeEnumTagMultiPayload();
          v203 = swift_allocObject();
          *(v203 + 16) = a5;
          *(v203 + 24) = sub_1CF2B9F90;
          *(v203 + 32) = &v225 - 12;
          v204 = swift_allocObject();
          *(v204 + 16) = sub_1CF1DBD3C;
          *(v204 + 24) = v203;
          v243 = v203;
          *&aBlock[32] = sub_1CF1DBD5C;
          *&aBlock[40] = v204;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB270;
          *&aBlock[24] = &block_descriptor_269;
          v205 = _Block_copy(aBlock);

          v206 = fpfs_fgetfileattrs_detailed();
          _Block_release(v205);
          LOBYTE(v203) = swift_isEscapingClosureAtFileLocation();

          if ((v203 & 1) == 0)
          {
            if (v206)
            {
              swift_getErrorValue();
              v207 = v263;
              v208 = swift_allocError();
              *v209 = 6;
              *(v209 + 8) = 0u;
              *(v209 + 24) = 0u;
              *(v209 + 40) = 19;
              v210 = v206;
              v211 = sub_1CF199074(v208, v207);

              v212 = v208;
              a5 = v242;

              v213 = v250;
              *v250 = v211;
              swift_storeEnumTagMultiPayload();
              sub_1CEFDA9E0(v213, a5, &qword_1EC4BE000, &unk_1CFA006A0);
            }

            v214 = v241;
            sub_1CEFCCBDC(a5, v241, &qword_1EC4BE000, &unk_1CFA006A0);
            if (swift_getEnumCaseMultiPayload() != 1)
            {

              v218 = v214;
              v217 = v239;
              sub_1CEFE55D0(v218, v239, &unk_1EC4BE2F0, qword_1CFA04220);
              sub_1CEFCCC44(a5, &qword_1EC4BE000, &unk_1CFA006A0);

              _Block_release(v237);

              (v258)(v245, v248);
              sub_1CEFE5888(v256, type metadata accessor for VFSItem);
              v115 = v232;
              v111 = v236;
              goto LABEL_56;
            }

            *aBlock = *v214;
            v101 = *aBlock;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            swift_willThrowTypedImpl();

            sub_1CEFCCC44(a5, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v237);

            v215 = v101;
            *aBlock = sub_1CF9E52A8();
            sub_1CF196978();
            v216 = sub_1CF9E5658();

            (v258)(v245, v248);
            sub_1CEFE5888(v256, type metadata accessor for VFSItem);
            v111 = v236;
            if (v216)
            {

              v217 = v239;
              *v239 = xmmword_1CF9FD940;
              *(v217 + 16) = 2;
              swift_storeEnumTagMultiPayload();
              v115 = v232;
LABEL_56:
              v219 = v240;
              sub_1CEFE55D0(v217, v240, &unk_1EC4BE2F0, qword_1CFA04220);
              v220 = swift_getEnumCaseMultiPayload();
              v112 = v255;
              if (v220 == 1)
              {
                sub_1CEFCCC44(v219, &unk_1EC4BE2F0, qword_1CFA04220);
                v121 = v252;
                v221 = v252;
                v222 = 1;
              }

              else
              {
                v121 = v252;
                sub_1CEFE4C60(v219, v252, type metadata accessor for VFSItem);
                v221 = v121;
                v222 = 0;
              }

              v259(v221, v222, 1, v112);
LABEL_29:
              v122 = v228;
              v123 = v251;
              if ((v238 & 0x80000000) == 0)
              {
                close(v238);
              }

              sub_1CEFCCBDC(v121, v123, &unk_1EC4BEC00, &unk_1CF9FCB60);
              if (v117(v123, 1, v112) != 1)
              {
                v137 = v249;
                sub_1CEFE4C60(v123, v249, type metadata accessor for VFSItem);
                sub_1CEFD90AC(v137, v115, type metadata accessor for VFSItem);
                swift_storeEnumTagMultiPayload();
                v122(v115);
                sub_1CEFCCC44(v115, &unk_1EC4BF300, &unk_1CFA006B0);
                sub_1CEFE5888(v137, type metadata accessor for VFSItem);
                sub_1CEFCCC44(v111, &unk_1EC4BEC00, &unk_1CF9FCB60);
                v66 = v121;
                v64 = &unk_1EC4BEC00;
                v65 = &unk_1CF9FCB60;
                return sub_1CEFCCC44(v66, v64, v65);
              }

              sub_1CEFCCC44(v123, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v124 = v121;
              v125 = v111;
              v126 = swift_allocObject();
              *(v126 + 16) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              v115 = v232;
              v101 = swift_allocError();
              v128 = v127;
              sub_1CF1B8150();
              v129 = swift_allocError();
              *v130 = v126;
              *aBlock = v233;
              aBlock[8] = 1;
              memset(&aBlock[16], 0, 32);
              v270 = 0u;
              v271 = 0u;
              v272 = 0u;
              v273 = 0u;
              v274 = v129;
              sub_1CF2A8DE0(aBlock);
              *v128 = *aBlock;
              v131 = *&aBlock[16];
              v132 = *&aBlock[32];
              v133 = v271;
              *(v128 + 48) = v270;
              *(v128 + 64) = v133;
              *(v128 + 16) = v131;
              *(v128 + 32) = v132;
              v134 = v272;
              v135 = v273;
              v136 = v274;
              *(v128 + 128) = v275;
              *(v128 + 96) = v135;
              *(v128 + 112) = v136;
              *(v128 + 80) = v134;
              swift_willThrow();
              sub_1CEFCCC44(v125, &unk_1EC4BEC00, &unk_1CF9FCB60);
              sub_1CEFCCC44(v124, &unk_1EC4BEC00, &unk_1CF9FCB60);
              goto LABEL_5;
            }

            sub_1CEFCCC44(v236, &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_61:
            v115 = v232;
            if ((v238 & 0x80000000) == 0)
            {
              close(v238);
            }

            v122 = v228;
            goto LABEL_5;
          }

          __break(1u);
          goto LABEL_66;
        }

        MEMORY[0x1EEE9AC00](v190);
        v224 = &v225 - 4;
        *(&v225 - 2) = v182;
LABEL_72:
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v224, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      MEMORY[0x1EEE9AC00](v188);
      v223 = &v225 - 4;
      *(&v225 - 2) = v182;
LABEL_70:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v223, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

LABEL_76:
    MEMORY[0x1EEE9AC00](v148);
    v224 = &v225 - 4;
    *(&v225 - 2) = a5;
    goto LABEL_72;
  }

  v101 = v155;
  v152, v156, v157, v158, v159, v160, v161, v162;
  v164 = v143;
  v165 = v143;
  v166 = v258;
  (v258)(v163, v164);
  *&aBlock[8], v167, v168, v169, v170, v171, v172, v173;
  v166(v245, v165);
  sub_1CEFE5888(v256, type metadata accessor for VFSItem);
  sub_1CEFCCC44(v236, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v153 & 0x80000000) == 0)
  {
    close(v153);
  }

  v122 = v228;
LABEL_5:
  *v115 = v101;
  swift_storeEnumTagMultiPayload();
  v63 = v101;
  v122(v115);

  v64 = &unk_1EC4BF300;
  v65 = &unk_1CFA006B0;
  v66 = v115;
  return sub_1CEFCCC44(v66, v64, v65);
}

uint64_t sub_1CF2A0E30(const void *a1, unsigned __int8 a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  v127 = a4;
  v8 = a2;
  v141 = *MEMORY[0x1E69E9840];
  v124 = type metadata accessor for VFSItem(0);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v118 = v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v108 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v108 - v17);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v120);
  v121 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = (v108 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v122 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v125 = v108 - v25;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v126);
  v27 = (v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v37 = (v108 - v36);
  if (v8 != 1)
  {
    v38 = FPNotSupportedError();
    if (v38)
    {
      *v37 = v38;
      swift_storeEnumTagMultiPayload();
      a3(v37);
      v43 = &unk_1EC4BF300;
      v44 = &unk_1CFA006B0;
      v45 = v37;
      return sub_1CEFCCC44(v45, v43, v44);
    }

    __break(1u);
    goto LABEL_35;
  }

  0, v29, v30, v31, v32, v33, v34, v35;
  *aBlock = a1;
  memset(&aBlock[8], 0, 32);
  v38 = objc_sync_enter(a5);
  if (v38)
  {
    goto LABEL_35;
  }

  v116 = a1;
  v117 = a3;
  v39 = a5[20];

  v40 = objc_sync_exit(a5);
  if (v40)
  {
    goto LABEL_36;
  }

  v41 = *(v39 + 16);

  v47 = sub_1CEFDADE0(aBlock, v41, 3145728);
  0, v48, v49, v50, v51, v52, v53, v54;
  v55 = fpfs_clear_acl();
  if ((v55 & 0x80000000) == 0)
  {
    sub_1CF19AD04(0xD000000000000021, 0x80000001CFA3D5D0, v47);
    sub_1CF19AD04(0xD00000000000001FLL, 0x80000001CFA3D600, v47);
    sub_1CF19AD04(0xD000000000000022, 0x80000001CFA3D620, v47);
    sub_1CF19AD04(0xD000000000000021, 0x80000001CFA3D4B0, v47);
    v38 = objc_sync_enter(a5);
    if (!v38)
    {

      v40 = objc_sync_exit(a5);
      if (v40)
      {
        goto LABEL_36;
      }

      swift_beginAccess();
      sub_1CF1CE694(v116, 1, aBlock);
      *&aBlock[24], v56, v57, v58, v59, v60, v61, v62;
      swift_endAccess();

      v38 = objc_sync_enter(a5);
      if (!v38)
      {
        v63 = a5[20];

        v40 = objc_sync_exit(a5);
        if (!v40)
        {
          v64 = type metadata accessor for VFSFileTree(0);
          v115 = *(v63 + 24);
          os_unfair_lock_lock((v63 + 56));
          v65 = *(v63 + 72);
          v109 = *(v63 + 64);
          LODWORD(v112) = *(v63 + 88);
          LODWORD(v111) = *(v63 + 89);
          v110 = *(v63 + 90);

          v114 = &aBlock[16];
          v66 = *(v63 + 80);
          os_unfair_lock_unlock((v63 + 56));
          v108[1] = v108;
          MEMORY[0x1EEE9AC00](v67);
          v113 = &v108[-12];
          v108[-10] = v64;
          LODWORD(v108[-9]) = v47;
          v108[-7] = 0;
          v108[-6] = 0;
          v108[-8] = v63;
          LOBYTE(v108[-5]) = 2;
          v68 = v116;
          v108[-4] = 0;
          v108[-3] = v68;
          LOBYTE(v108[-2]) = 1;
          v108[-1] = 0;
          *&aBlock[32] = v109;
          *&aBlock[40] = v65;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB088;
          *&aBlock[24] = &block_descriptor_213;
          v69 = _Block_copy(aBlock);
          v109 = v65;

          v108[0] = v69;
          v136 = v69;
          v137 = v66;
          v138 = v112;
          v139 = v111;
          v140 = v110;
          v112 = sub_1CEFDB034();
          v70 = swift_allocError();
          *v71 = 6;
          *(v71 + 8) = 0u;
          *(v71 + 24) = 0u;
          *(v71 + 40) = 19;
          *v18 = v70;
          swift_storeEnumTagMultiPayload();
          v72 = swift_allocObject();
          v72[2] = v18;
          v72[3] = sub_1CEFDB808;
          v72[4] = v113;
          v73 = swift_allocObject();
          *(v73 + 16) = sub_1CEFDB37C;
          *(v73 + 24) = v72;
          v113 = v72;
          *&aBlock[32] = sub_1CEFDB240;
          *&aBlock[40] = v73;
          *aBlock = MEMORY[0x1E69E9820];
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_1CEFDB270;
          *&aBlock[24] = &block_descriptor_222;
          v74 = _Block_copy(aBlock);

          v75 = fpfs_fgetfileattrs_detailed();
          _Block_release(v74);
          LOBYTE(v74) = swift_isEscapingClosureAtFileLocation();

          if (v74)
          {
            __break(1u);
          }

          if (v75)
          {
            swift_getErrorValue();
            v114 = v128[0];
            v111 = v128[1];
            v76 = swift_allocError();
            *v77 = 6;
            *(v77 + 8) = 0u;
            *(v77 + 24) = 0u;
            *(v77 + 40) = 19;
            v78 = v75;
            v115 = v63;
            v79 = v75;
            v80 = v78;
            v81 = sub_1CF199074(v76, v111);

            v75 = v79;
            *v15 = v81;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v15, v18, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          sub_1CEFCCBDC(v18, v12, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            LODWORD(v115) = v47;

            v85 = v119;
            sub_1CEFE55D0(v12, v119, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v18, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v108[0]);

            goto LABEL_25;
          }

          *aBlock = *v12;
          v82 = *aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          swift_willThrowTypedImpl();

          sub_1CEFCCC44(v18, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v108[0]);

          v83 = v82;
          *aBlock = sub_1CF9E52A8();
          sub_1CF196978();
          v84 = sub_1CF9E5658();

          if (v84)
          {
            LODWORD(v115) = v47;

            v85 = v119;
            *v119 = xmmword_1CF9FD940;
            *(v85 + 16) = 2;
            swift_storeEnumTagMultiPayload();
LABEL_25:
            v87 = v121;
            sub_1CEFE55D0(v85, v121, &unk_1EC4BE2F0, qword_1CFA04220);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v89 = v123;
            v90 = (v123 + 56);
            v91 = v117;
            v92 = v125;
            v93 = v124;
            v94 = v122;
            if (EnumCaseMultiPayload == 1)
            {
              sub_1CEFCCC44(v87, &unk_1EC4BE2F0, qword_1CFA04220);
              v95 = 1;
            }

            else
            {
              sub_1CEFE4C60(v87, v125, type metadata accessor for VFSItem);
              v95 = 0;
            }

            (*v90)(v92, v95, 1, v93);
            if ((v115 & 0x80000000) == 0)
            {
              close(v115);
            }

            sub_1CEFCCBDC(v92, v94, &unk_1EC4BEC00, &unk_1CF9FCB60);
            if ((*(v89 + 48))(v94, 1, v93) != 1)
            {
              v107 = v118;
              sub_1CEFE4C60(v94, v118, type metadata accessor for VFSItem);
              sub_1CEFD90AC(v107, v27, type metadata accessor for VFSItem);
              swift_storeEnumTagMultiPayload();
              v91(v27);
              sub_1CEFCCC44(v27, &unk_1EC4BF300, &unk_1CFA006B0);
              sub_1CEFE5888(v107, type metadata accessor for VFSItem);
              v43 = &unk_1EC4BEC00;
              v44 = &unk_1CF9FCB60;
              v45 = v92;
              return sub_1CEFCCC44(v45, v43, v44);
            }

            sub_1CEFCCC44(v94, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v96 = swift_allocObject();
            *(v96 + 16) = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
            v82 = swift_allocError();
            v98 = v97;
            sub_1CF1B8150();
            v99 = swift_allocError();
            *v100 = v96;
            *aBlock = v116;
            aBlock[8] = 1;
            memset(&aBlock[16], 0, 32);
            v130 = 0u;
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = v99;
            sub_1CF2A8DE0(aBlock);
            *v98 = *aBlock;
            v101 = *&aBlock[16];
            v102 = *&aBlock[32];
            v103 = v131;
            *(v98 + 48) = v130;
            *(v98 + 64) = v103;
            *(v98 + 16) = v101;
            *(v98 + 32) = v102;
            v104 = v132;
            v105 = v133;
            v106 = v134;
            *(v98 + 128) = v135;
            *(v98 + 96) = v105;
            *(v98 + 112) = v106;
            *(v98 + 80) = v104;
            swift_willThrow();
            sub_1CEFCCC44(v92, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_5;
          }

          if ((v47 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_5;
        }

LABEL_36:
        MEMORY[0x1EEE9AC00](v40);
        v108[-2] = a5;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v108[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }
    }

LABEL_35:
    MEMORY[0x1EEE9AC00](v38);
    v108[-2] = a5;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v108[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v86 = MEMORY[0x1D38683F0]();
  *aBlock = 8;
  memset(&aBlock[8], 0, 32);
  aBlock[40] = 19;
  v82 = sub_1CF19BBE4(v86, aBlock);
  sub_1CF1969CC(aBlock);
  swift_willThrow();
  if ((v47 & 0x80000000) == 0)
  {
LABEL_23:
    close(v47);
  }

LABEL_5:
  *v27 = v82;
  swift_storeEnumTagMultiPayload();
  v42 = v82;
  v117(v27);

  v43 = &unk_1EC4BF300;
  v44 = &unk_1CFA006B0;
  v45 = v27;
  return sub_1CEFCCC44(v45, v43, v44);
}

uint64_t sub_1CF2A2070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 216);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = a2;
  v8[5] = a3;

  v9 = v7;
  sub_1CF01001C(0, "removeStuckConflictsFromTheWharf(conflictsToRemove:completion:)", 63, 2, sub_1CF2AFA3C, v8);
}

uint64_t sub_1CF2A2134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = *(a2 + 136);
      v7 = OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
      v8 = *(sub_1CF9E5A58() - 8);
      v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = *(v8 + 72);
      do
      {
        sub_1CF9E5A18();
        v12 = v11;
        swift_beginAccess();
        v13 = sub_1CF9E6978();
        fpfs_wharf_delete_item_at(v6 + v7, 4294967294, v13 + 32);
        swift_endAccess();

        v12, v14, v15, v16, v17, v18, v19, v20;
        v9 += v10;
        --v5;
      }

      while (v5);
    }
  }

  return a3();
}

uint64_t sub_1CF2A2294(uint64_t a1, void (*a2)(BOOL), uint64_t a3)
{
  v81[1] = a3;
  v82 = a2;
  v103 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6118();
  v96 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v81 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v81 - v14;
  sub_1CF9E5958();
  v16 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  sub_1CF9E5A18();
  v18 = v17;
  v19 = sub_1CF9E6888();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = [v16 enumeratorAtPath_];

  v95 = v27;
  if (v27)
  {
    v27 = 0;
    v93 = (v7 + 16);
    v94 = (v7 + 8);
    v92 = (v96 + 8);
    *&v28 = 136446466;
    v84 = v28;
    v29 = v12;
    v87 = v7;
    v86 = v3;
    v85 = v15;
    v91 = v12;
    v83 = v9;
    while (1)
    {
      if ([v95 nextObject])
      {
        sub_1CF9E7728();
        swift_unknownObjectRelease();
      }

      else
      {
        v100 = 0u;
        v101 = 0u;
      }

      v102[0] = v100;
      v102[1] = v101;
      if (!*(&v101 + 1))
      {

        sub_1CEFCCC44(v102, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_18;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_18;
      }

      v39 = v99;
      if (v27 == 10000)
      {
        break;
      }

      v96 = v27;
      sub_1CF9E5968();
      v39, v40, v41, v42, v43, v44, v45, v46;
      v47 = [objc_opt_self() defaultManager];
      v48 = sub_1CF9E5928();
      *&v102[0] = 0;
      v49 = [v47 removeItemAtURL:v48 error:v102];

      if (v49)
      {
        v30 = *v94;
        v31 = *&v102[0];
        v30(v29, v6);
      }

      else
      {
        v50 = *&v102[0];
        v51 = v29;
        v52 = sub_1CF9E57F8();

        swift_willThrow();
        v53 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        (*v93)(v9, v51, v6);
        v54 = v52;
        v55 = sub_1CF9E6108();
        v56 = sub_1CF9E7298();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v102[0] = v90;
          *v57 = v84;
          v88 = v56;
          v58 = sub_1CF9E5928();
          v59 = [v58 fp_shortDescription];

          v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v61 = v5;
          v62 = v6;
          v64 = v63;

          v65 = *v94;
          (*v94)(v9, v62);
          v66 = sub_1CEFD0DF0(v60, v64, v102);
          v67 = v64;
          v6 = v62;
          v5 = v61;
          v67, v68, v69, v70, v71, v72, v73, v74;
          *(v57 + 4) = v66;
          *(v57 + 12) = 2112;
          swift_getErrorValue();
          v75 = Error.prettyDescription.getter(v97, v98);
          *(v57 + 14) = v75;
          v76 = v89;
          *v89 = v75;
          _os_log_impl(&dword_1CEFC7000, v55, v88, "failed to remove %{public}s: %@", v57, 0x16u);
          sub_1CEFCCC44(v76, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v76, -1, -1);
          v77 = v90;
          __swift_destroy_boxed_opaque_existential_1(v90);
          v3 = v86;
          MEMORY[0x1D386CDC0](v77, -1, -1);
          v78 = v57;
          v7 = v87;
          MEMORY[0x1D386CDC0](v78, -1, -1);

          (*v92)(v5, v3);
          v29 = v91;
          v65(v91, v6);
          v15 = v85;
          v9 = v83;
        }

        else
        {

          v79 = *v94;
          (*v94)(v9, v6);
          (*v92)(v5, v3);
          v29 = v91;
          v79(v91, v6);
        }
      }

      v27 = v96 + 1;
    }

    v99, v32, v33, v34, v35, v36, v37, v38;

    v27 = 10000;
  }

LABEL_18:
  v82(v27 == 10000);
  return (*(v7 + 8))(v15, v6);
}

void sub_1CF2A2A0C(void *a1, void (*a2)(void), void *a3)
{
  v109 = a2;
  v110 = a3;
  v4 = sub_1CF9E63A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v104 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v106 = *(v9 - 8);
  v107 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v97 - v12;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - v21;
  swift_beginAccess();
  v23 = a1[30];
  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

LABEL_21:
    v109();
    return;
  }

  v24 = sub_1CF9E7818();
  if (!v24)
  {
    goto LABEL_21;
  }

LABEL_3:
  v101 = v5;
  v100 = v7;
  if ((v23 & 0xC000000000000001) != 0)
  {

    v111 = MEMORY[0x1D3869C30](0, v23);
    v23, v90, v91, v92, v93, v94, v95, v96;
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v111 = v23[1].super.isa;
  }

  v25 = a1[29];
  v26 = [v25 barrierFolderURL];
  v99 = v4;
  if (v26)
  {
    v27 = v26;
    sub_1CF9E59D8();

    v28 = *(v15 + 32);
    v28(v13, v19, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    v28(v22, v13, v14);
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
    v24 = objc_sync_enter(a1);
    if (v24)
    {
      goto LABEL_26;
    }

    v29 = a1[20];

    v30 = objc_sync_exit(a1);
    if (v30)
    {
      MEMORY[0x1EEE9AC00](v30);
      *(&v97 - 2) = a1;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v97 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    (*(v15 + 16))(v22, v29 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v14);

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BE310, qword_1CF9FCBE0);
    }
  }

  v31 = sub_1CF9E5928();
  v32 = *(v15 + 8);
  v32(v22, v14);
  [v25 setBarrierFolderURL_];

  v33 = fpfs_current_or_default_log();
  v34 = v108;
  sub_1CF9E6128();

  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();
  if (!os_log_type_enabled(v35, v36))
  {

    (*(v106 + 8))(v34, v107);
    goto LABEL_16;
  }

  v98 = v32;
  v37 = swift_slowAlloc();
  v97 = swift_slowAlloc();
  aBlock = v97;
  *v37 = 136315138;
  v38 = [v25 barrierFolderURL];

  if (!v38)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    MEMORY[0x1EEE9AC00](v24);
    *(&v97 - 2) = a1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v97 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v39 = v102;
  sub_1CF9E59D8();

  v40 = sub_1CF9E5928();
  v41 = [v40 fp_shortDescription];

  v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v43;

  v98(v39, v14);
  v45 = sub_1CEFD0DF0(v42, v44, &aBlock);
  v44, v46, v47, v48, v49, v50, v51, v52;
  *(v37 + 4) = v45;
  _os_log_impl(&dword_1CEFC7000, v35, v36, "🚧  FS: waiting for barrier on %s", v37, 0xCu);
  v53 = v97;
  __swift_destroy_boxed_opaque_existential_1(v97);
  MEMORY[0x1D386CDC0](v53, -1, -1);
  MEMORY[0x1D386CDC0](v37, -1, -1);

  (*(v106 + 8))(v108, v107);
LABEL_16:
  v54 = v111;
  v55 = [(objc_class *)v111 waitableBarrier];
  if (v55)
  {
    v56 = v55;
    v111 = v54;
    v57 = a1[27];
    v58 = swift_allocObject();
    v59 = v110;
    *(v58 + 16) = v109;
    *(v58 + 24) = v59;
    v60 = v57;

    v61 = fpfs_current_log();
    v110 = fpfs_adopt_log();
    v62 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v114 = v63;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v64 = sub_1CF9E7988();
    v66 = v65;
    MEMORY[0x1D3868CC0](v64);
    v66, v67, v68, v69, v70, v71, v72, v73;
    v74 = v114;
    sub_1CF9E6978();
    v74, v75, v76, v77, v78, v79, v80, v81;
    v82 = __fp_log_fork();

    *(v62 + 16) = v82;
    v83 = swift_allocObject();
    *(v83 + 16) = v61;
    *(v83 + 24) = v62;
    *(v83 + 32) = v60;
    *(v83 + 40) = "eventBarrier(_:)";
    *(v83 + 48) = 16;
    *(v83 + 56) = 2;
    *(v83 + 64) = sub_1CF2B9FA8;
    *(v83 + 72) = v58;
    v117 = sub_1CEFD5064;
    v118 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v114 = 1107296256;
    v115 = sub_1CEFCA444;
    v116 = &block_descriptor_195;
    v84 = _Block_copy(&aBlock);
    v85 = v60;
    v109 = v61;

    v86 = v103;
    sub_1CF9E63F8();
    v112 = MEMORY[0x1E69E7CC0];
    sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v87 = v105;
    v88 = v99;
    sub_1CF9E77B8();
    sub_1CF9E7308();
    _Block_release(v84);
    (*(v101 + 8))(v87, v88);
    (*(v104 + 8))(v86, v100);

    v89 = v110;
    v54 = fpfs_adopt_log();
  }

  else
  {
    v109();
  }
}

void sub_1CF2A34B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E63A8();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6448();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7298();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "🚧  FS: barrier observed, waiting for flocks to be released", v18, 2u);
    MEMORY[0x1D386CDC0](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  v55 = *(a1 + 272);
  v19 = *(a1 + 216);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = v19;

  v22 = fpfs_current_log();
  v54 = fpfs_adopt_log();
  v23 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v63 = v24;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v25 = sub_1CF9E7988();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v35 = v63;
  sub_1CF9E6978();
  v35, v36, v37, v38, v39, v40, v41, v42;
  v43 = __fp_log_fork();

  *(v23 + 16) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v22;
  *(v44 + 24) = v23;
  *(v44 + 32) = v21;
  *(v44 + 40) = "fullBarrier(_:)";
  *(v44 + 48) = 15;
  *(v44 + 56) = 2;
  *(v44 + 64) = sub_1CF2B99BC;
  *(v44 + 72) = v20;
  v66 = sub_1CF2B9F54;
  v67 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = sub_1CEFCA444;
  v65 = &block_descriptor_1482;
  v45 = _Block_copy(&aBlock);
  v46 = v21;
  v53 = v22;

  v47 = v10;
  sub_1CF9E63F8();
  v61 = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v48 = v56;
  v49 = v60;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v45);
  (*(v59 + 8))(v48, v49);
  (*(v57 + 8))(v47, v58);

  v50 = v54;
  v51 = fpfs_adopt_log();
}

uint64_t sub_1CF2A3A0C(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v7 = sub_1CF9E6108();
  v8 = sub_1CF9E7298();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1CEFC7000, v7, v8, "🚧 FS: barrier wait completed", v9, 2u);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  return a1(v10);
}

uint64_t sub_1CF2A3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 216);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = a1;
  v13[4] = a2;
  v14 = v12;

  sub_1CF01001C(0, a4, a5, 2, a6, v13);
}

void sub_1CF2A3C4C(uint64_t a1, void (*a2)(uint64_t))
{
  [*(a1 + 232) setPlannedRescan_];
  v4 = swift_beginAccess();
  v5 = *(a1 + 240);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    a2(v4);
    return;
  }

  v4 = sub_1CF9E7818();
  v6 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3869C30](i, v5);
      }

      else
      {
        v8 = *(&v5[1].super.isa + i);
      }

      v9 = v8;
      [v8 didProcessBarrierEventUUID_];
    }

    v5, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1CF2A3D64(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = sub_1CF9E63D8();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = a1[1];
  v46 = *a1;
  v47 = v15;
  v16 = a1[3];
  v48 = a1[2];
  v49 = v16;
  v17 = *(v4 + 224);
  v39 = *(v4 + 216);
  v18 = sub_1CF9E6448();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v14, 1, 1, v18);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  v22 = v47;
  *(v21 + 24) = v46;
  *(v21 + 40) = v22;
  v23 = v49;
  *(v21 + 56) = v48;
  *(v21 + 72) = v23;
  *(v21 + 88) = a2;
  *(v21 + 96) = a3;
  v24 = swift_allocObject();
  v24[2] = sub_1CF2AF9D0;
  v24[3] = v20;
  v24[4] = v17;
  swift_retain_n();
  v38 = v39;

  sub_1CF1AE1DC(&v46, &aBlock);

  v25 = fpfs_current_log();
  v37 = *(v17 + 16);
  v39 = v14;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BE370, qword_1CFA01B30);
    v26 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v27 = v34;
    sub_1CF9E6438();
    (*(v19 + 8))(v11, v18);
    v26 = sub_1CF9E63C8();
    (*(v35 + 8))(v27, v36);
  }

  v28 = swift_allocObject();
  v28[2] = v25;
  v28[3] = sub_1CF2AF9D8;
  v28[4] = v21;
  v44 = sub_1CF2BA17C;
  v45 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_174;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  v44 = sub_1CF2AF9E8;
  v45 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1CEFCA444;
  v43 = &block_descriptor_177_0;
  v31 = _Block_copy(&aBlock);

  v32 = v38;
  fp_task_tracker_async_and_qos(v37, v38, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v26, v29, v31);
  _Block_release(v31);
  _Block_release(v29);

  return sub_1CEFCCC44(v39, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2A4244(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    MEMORY[0x1EEE9AC00](a1);
    sub_1CEFE1894(sub_1CF2AF9F4);
    *(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
    if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
    {
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return a3(0);
}

uint64_t sub_1CF2A43B4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v7 = sub_1CF9E63D8();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = *(v4 + 224);
  v35 = *(v4 + 216);
  v16 = sub_1CF9E6448();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v14, 1, 1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = swift_allocObject();
  v20 = v36;
  v19[2] = v4;
  v19[3] = v20;
  v19[4] = a2;
  v19[5] = a3;
  v21 = swift_allocObject();
  v21[2] = sub_1CF2AF92C;
  v21[3] = v18;
  v21[4] = v15;
  swift_retain_n();
  v35 = v35;

  v22 = fpfs_current_log();
  v34 = *(v15 + 16);
  v36 = v14;
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {
    sub_1CEFCCC44(v11, &unk_1EC4BE370, qword_1CFA01B30);
    v23 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v24 = v31;
    sub_1CF9E6438();
    (*(v17 + 8))(v11, v16);
    v23 = sub_1CF9E63C8();
    (*(v32 + 8))(v24, v33);
  }

  v25 = swift_allocObject();
  v25[2] = v22;
  v25[3] = sub_1CF2AF970;
  v25[4] = v19;
  v41 = sub_1CEFCA438;
  v42 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1CEFCA444;
  v40 = &block_descriptor_9;
  v26 = _Block_copy(&aBlock);
  v27 = v22;

  v41 = sub_1CF2AF9C4;
  v42 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1CEFCA444;
  v40 = &block_descriptor_158;
  v28 = _Block_copy(&aBlock);

  v29 = v35;
  fp_task_tracker_async_and_qos(v34, v35, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v23, v26, v28);
  _Block_release(v28);
  _Block_release(v26);

  return sub_1CEFCCC44(v36, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2A4868(int a1, int a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5)
{
  v307 = a5;
  LODWORD(v293) = a2;
  v296 = a1;
  v322 = *MEMORY[0x1E69E9840];
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  MEMORY[0x1EEE9AC00](v276);
  v277 = (&v275 - v7);
  v290 = type metadata accessor for VFSItem(0);
  v284 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v285 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE000, &unk_1CFA006A0);
  MEMORY[0x1EEE9AC00](v289);
  v280 = (&v275 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v279 = (&v275 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v287 = (&v275 - v13);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE2F0, qword_1CFA04220);
  MEMORY[0x1EEE9AC00](v286);
  v282 = &v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v288 = (&v275 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v283 = &v275 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v292 = &v275 - v20;
  v295 = sub_1CF9E5A58();
  v297 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v291 = &v275 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v294 = &v275 - v23;
  v24 = sub_1CF9E6118();
  v300 = *(v24 - 8);
  v301 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v278 = &v275 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v281 = &v275 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v299 = &v275 - v29;
  v30 = sub_1CF9E6068();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v306 = (&v275 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v275 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v275 - v37;
  v39 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v39);
  v310 = &v275 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v304 = qword_1EDEBBE40;
  (*(v31 + 56))(v38, 1, 1, v30);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&aBlock + 1), v41, v42, v43, v44, v45, v46, v47;
  *&aBlock = 0xD000000000000020;
  *(&aBlock + 1) = 0x80000001CFA3D8A0;
  v298 = a3;
  v308 = a4;
  v48 = sub_1CF9E6888();
  v49 = [v48 fp_prettyPath];

  v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v51;

  MEMORY[0x1D3868CC0](v50, v52);
  v52, v53, v54, v55, v56, v57, v58, v59;
  v302 = *(&aBlock + 1);
  v303 = aBlock;
  v305 = v38;
  sub_1CEFCCBDC(v38, v35, &unk_1EC4BED20, &unk_1CFA00700);
  v60 = *(v31 + 48);
  if (v60(v35, 1, v30) == 1)
  {
    v61 = v304;
    v62 = v304;
    v63 = v306;
    sub_1CF9E6048();
    v64 = v60(v35, 1, v30);
    v65 = v61;
    if (v64 != 1)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v63 = v306;
    (*(v31 + 32))(v306, v35, v30);
    v65 = v304;
  }

  v66 = v310;
  (*(v31 + 16))(v310, v63, v30);
  *(v66 + *(v39 + 20)) = v65;
  v67 = v66 + *(v39 + 24);
  *v67 = "FS: handle event";
  *(v67 + 8) = 16;
  *(v67 + 16) = 2;
  v68 = v65;
  v69 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CF9FA450;
  *(v70 + 56) = MEMORY[0x1E69E6158];
  *(v70 + 64) = sub_1CEFD51C4();
  v71 = v302;
  *(v70 + 32) = v303;
  *(v70 + 40) = v71;
  v273 = v70;
  LOBYTE(v272) = 2;
  sub_1CF9E6028(v69, &dword_1CEFC7000, v68, "FS: handle event", 16, 2, v66, "%s", 2);
  v70, v72, v73, v74, v75, v76, v77, v78;
  (*(v31 + 8))(v63, v30);
  sub_1CEFCCC44(v305, &unk_1EC4BED20, &unk_1CFA00700);
  v79 = v309;
  v80 = objc_sync_enter(v309);
  if (v80)
  {
    goto LABEL_69;
  }

  v81 = v79[20];

  v82 = objc_sync_exit(v79);
  v83 = v308;
  if (v82)
  {
    goto LABEL_70;
  }

  v84 = *(v81 + 24);

  if (v84 != v307)
  {
    if (!fpfs_supports_parent_mtime_iopolicy() || (v296 & 0xB00) == 0 || (v296 & 0x80000) != 0 || (v293 & 1) != 0)
    {
      goto LABEL_63;
    }

    sub_1CF9E58C8();
    v111 = v291;
    sub_1CF9E5988();
    v112 = sub_1CF9E5A18();
    v114 = v113;
    v115 = *(v297 + 8);
    v297 += 8;
    v115(v111, v295);
    v116 = sub_1CF25D188(&aBlock);
    if (*(v117 + 8))
    {

      v118 = sub_1CF6E9AF0(&v315, v112, v114);
      v316, v119, v120, v121, v122, v123, v124, v125;
      (v116)(&aBlock, 0);
      if ((v118 & 1) == 0)
      {
        v126 = fpfs_current_or_default_log();
        v127 = v281;
        sub_1CF9E6128();

        v128 = sub_1CF9E6108();
        v129 = sub_1CF9E7298();
        v114, v130, v131, v132, v133, v134, v135, v136;
        if (os_log_type_enabled(v128, v129))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          *&aBlock = v145;
          *v144 = 136446210;
          v146 = sub_1CF9E6888();
          v114, v114, v147, v148, v149, v150, v151, v152;
          v153 = [v146 fp_prettyPath];

          v154 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v156 = v155;

          v157 = sub_1CEFD0DF0(v154, v156, &aBlock);
          v156, v158, v159, v160, v161, v162, v163, v164;
          *(v144 + 4) = v157;
          _os_log_impl(&dword_1CEFC7000, v128, v129, "deduplicating FSEvent parent lookup for %{public}s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v145);
          MEMORY[0x1D386CDC0](v145, -1, -1);
          MEMORY[0x1D386CDC0](v144, -1, -1);

          (*(v300 + 8))(v281, v301);
        }

        else
        {
          v114, v137, v138, v139, v140, v141, v142, v143;

          (*(v300 + 8))(v127, v301);
        }

LABEL_49:
        v115(v294, v295);
        goto LABEL_63;
      }
    }

    else
    {
      (v116)(&aBlock, 0);
    }

    v165 = qword_1EDEBBE70;
    swift_beginAccess();
    v166 = *(v79 + v165);
    v167 = __CFADD__(v166, 1);
    v168 = v166 + 1;
    if (v167)
    {
      __break(1u);
      goto LABEL_65;
    }

    *(v79 + v165) = v168;
    v80 = objc_sync_enter(v79);
    if (!v80)
    {
      v169 = v115;
      v307 = v112;
      v308 = v68;
      v170 = v79[20];

      v82 = objc_sync_exit(v79);
      if (!v82)
      {
        v171 = type metadata accessor for VFSFileTree(0);
        Strong = swift_unknownObjectWeakLoadStrong();
        v173 = v79[36];
        fpfs_openflags(0x208000u);
        v306 = v114;
        sub_1CF9E6978();
        v174 = openat_s();

        v305 = Strong;
        if (v174 < 0)
        {
          v201 = MEMORY[0x1D38683F0](v175);
          *&v321[0] = 0;
          aBlock = 0u;
          v320 = 0u;
          BYTE8(v321[0]) = 19;
          v196 = sub_1CF19BBE4(v201, &aBlock);
          sub_1CF1969CC(&aBlock);
          swift_willThrow();
          v199 = v292;
          v115 = v169;
          goto LABEL_37;
        }

        v303 = v169;
        v302 = *(v170 + 24);
        os_unfair_lock_lock((v170 + 56));
        v177 = *(v170 + 64);
        v176 = *(v170 + 72);
        LODWORD(v299) = *(v170 + 88);
        LODWORD(v298) = *(v170 + 89);
        LODWORD(v304) = v174;
        v296 = *(v170 + 90);

        v178 = *(v170 + 80);
        os_unfair_lock_unlock((v170 + 56));
        v291 = &v275;
        MEMORY[0x1EEE9AC00](v179);
        *(&v275 - 10) = v171;
        *(&v275 - 18) = v174;
        *(&v275 - 8) = v170;
        *(&v275 - 7) = Strong;
        *(&v275 - 6) = v173;
        *(&v275 - 40) = 2;
        v271 = 0;
        v272 = 0;
        LOBYTE(v273) = -1;
        v274 = 0;
        *&v321[0] = v177;
        *(&v321[0] + 1) = v176;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v320 = sub_1CEFDB088;
        *(&v320 + 1) = &block_descriptor_1078;
        v180 = _Block_copy(&aBlock);
        v293 = v176;

        v281 = v180;
        v315 = v180;
        v316 = v178;
        LOBYTE(v317) = v299;
        BYTE1(v317) = v298;
        BYTE2(v317) = v296;
        sub_1CEFDB034();
        v181 = swift_allocError();
        *v182 = 6;
        *(v182 + 8) = 0u;
        *(v182 + 24) = 0u;
        *(v182 + 40) = 19;
        v183 = v287;
        *v287 = v181;
        swift_storeEnumTagMultiPayload();
        v184 = swift_allocObject();
        v184[2] = v183;
        v184[3] = sub_1CF2B9F90;
        v184[4] = &v275 - 12;
        v185 = swift_allocObject();
        *(v185 + 16) = sub_1CF1DBD3C;
        *(v185 + 24) = v184;
        *&v321[0] = sub_1CF1DBD5C;
        *(&v321[0] + 1) = v185;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v320 = sub_1CEFDB270;
        *(&v320 + 1) = &block_descriptor_1089;
        v186 = _Block_copy(&aBlock);

        v187 = fpfs_fgetfileattrs_detailed();
        _Block_release(v186);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          if (v187)
          {
            swift_getErrorValue();
            v189 = v311;
            v190 = swift_allocError();
            *v191 = 6;
            *(v191 + 8) = 0u;
            *(v191 + 24) = 0u;
            *(v191 + 40) = 19;
            v192 = v187;
            v193 = sub_1CF199074(v190, v189);

            v183 = v287;
            v194 = v279;
            *v279 = v193;
            swift_storeEnumTagMultiPayload();
            sub_1CEFDA9E0(v194, v183, &qword_1EC4BE000, &unk_1CFA006A0);
          }

          v195 = v280;
          sub_1CEFCCBDC(v183, v280, &qword_1EC4BE000, &unk_1CFA006A0);
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            sub_1CEFE55D0(v195, v288, &unk_1EC4BE2F0, qword_1CFA04220);
            sub_1CEFCCC44(v183, &qword_1EC4BE000, &unk_1CFA006A0);

            _Block_release(v281);

            v199 = v292;
            v79 = v309;
            goto LABEL_34;
          }

          *&aBlock = *v195;
          v196 = aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          swift_willThrowTypedImpl();

          sub_1CEFCCC44(v183, &qword_1EC4BE000, &unk_1CFA006A0);

          _Block_release(v281);

          v197 = v196;
          LODWORD(aBlock) = sub_1CF9E52A8();
          sub_1CF196978();
          v198 = sub_1CF9E5658();

          v79 = v309;
          v199 = v292;
          if (v198)
          {

            v200 = v288;
            *v288 = xmmword_1CF9FD940;
            *(v200 + 16) = 2;
            swift_storeEnumTagMultiPayload();
LABEL_34:
            v202 = v303;
            v203 = v283;
            close(v304);

            swift_unknownObjectRelease();
            v204 = v284;
            v205 = v285;
            v206 = v282;
            v207 = v288;
            goto LABEL_39;
          }

          close(v304);
          v115 = v303;
LABEL_37:
          v208 = v196;
          LODWORD(aBlock) = sub_1CF9E5328();
          sub_1CF196978();
          v209 = sub_1CF9E5658();

          swift_unknownObjectRelease();

          if ((v209 & 1) == 0)
          {
            v306, v210, v211, v212, v213, v214, v215, v216;
            v244 = fpfs_current_or_default_log();
            v245 = v278;
            sub_1CF9E6128();
            v246 = v196;
            v247 = sub_1CF9E6108();
            v248 = sub_1CF9E72A8();

            if (os_log_type_enabled(v247, v248))
            {
              v249 = swift_slowAlloc();
              v250 = swift_slowAlloc();
              *v249 = 138412290;
              swift_getErrorValue();
              v251 = Error.prettyDescription.getter(v312, v313);
              *(v249 + 4) = v251;
              *v250 = v251;
              _os_log_impl(&dword_1CEFC7000, v247, v248, "failed to bump parent mTime %@", v249, 0xCu);
              sub_1CEFCCC44(v250, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v250, -1, -1);
              MEMORY[0x1D386CDC0](v249, -1, -1);
            }

            (*(v300 + 8))(v245, v301);
            goto LABEL_49;
          }

          v202 = v115;

          v207 = v288;
          *v288 = xmmword_1CF9FD930;
          *(v207 + 16) = 2;
          swift_storeEnumTagMultiPayload();
          v204 = v284;
          v205 = v285;
          v206 = v282;
          v203 = v283;
LABEL_39:
          sub_1CEFE55D0(v207, v206, &unk_1EC4BE2F0, qword_1CFA04220);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1CEFCCC44(v206, &unk_1EC4BE2F0, qword_1CFA04220);
            v217 = 1;
          }

          else
          {
            sub_1CEFE4C60(v206, v199, type metadata accessor for VFSItem);
            v217 = 0;
          }

          v218 = v202;
          v219 = *(v204 + 56);
          v220 = v290;
          v219(v199, v217, 1, v290);
          sub_1CEFCCBDC(v199, v203, &unk_1EC4BEC00, &unk_1CF9FCB60);
          if ((*(v204 + 48))(v203, 1, v220) == 1)
          {
            v306, v221, v222, v223, v224, v225, v226, v227;
            sub_1CEFCCC44(v199, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v218(v294, v295);
            sub_1CEFCCC44(v203, &unk_1EC4BEC00, &unk_1CF9FCB60);
            goto LABEL_63;
          }

          sub_1CEFE4C60(v203, v205, type metadata accessor for VFSItem);
          v235 = sub_1CF25D188(&aBlock);
          if (*(v228 + 8))
          {
            v236 = *(v205 + *(v290 + 36));
            swift_bridgeObjectRelease_n();
            sub_1CF6E995C(&v315, v236, v307, v306);
            v317, v237, v238, v239, v240, v241, v242, v243;
          }

          else
          {
            v306, v228, v229, v230, v231, v232, v233, v234;
          }

          (v235)(&aBlock, 0);
          type metadata accessor for ItemMetadata(0);
          sub_1CF9E5C98();
          v253 = v292;
          if ((*&v252 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v252 > -9.22337204e18)
            {
              if (v252 < 9.22337204e18)
              {
                if (fpfs_is_busy_date())
                {
                  sub_1CEFE5888(v205, type metadata accessor for VFSItem);
                  v254 = v253;
                }

                else
                {
                  v255 = (v79 + qword_1EDEAFB30);
                  swift_beginAccess();
                  v256 = v255[1];
                  aBlock = *v255;
                  v320 = v256;
                  v321[0] = v255[2];
                  *(v321 + 9) = *(v255 + 41);
                  v258 = *(&aBlock + 1);
                  v257 = aBlock;
                  if (*(&aBlock + 1))
                  {

                    v259 = v257;
                  }

                  else
                  {
                    v259 = 0;
                  }

                  v315 = v257;
                  v316 = v258;
                  v260 = v255[2];
                  v317 = v255[1];
                  v318[0] = v260;
                  *(v318 + 9) = *(v255 + 41);
                  sub_1CEFCCBDC(&aBlock, v314, &unk_1EC4BEDF0, &qword_1CFA00818);
                  sub_1CEFCCC44(&v315, &unk_1EC4BEDF0, &qword_1CFA00818);
                  v261 = sub_1CF25D188(v314);
                  if (*(v262 + 8))
                  {
                    v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
                    v264 = *(v263 + 48);
                    v303 = v218;
                    v265 = v205;
                    v266 = *(v263 + 64);
                    v267 = *(v265 + 8);
                    v268 = v277;
                    *v277 = *v265;
                    *(v268 + 8) = v267;
                    sub_1CEFD90AC(v265, v268 + v264, type metadata accessor for VFSItem);
                    v219(v268 + v264, 0, 1, v290);
                    *(v268 + v266) = v259;
                    swift_storeEnumTagMultiPayload();

                    sub_1CF25C780(v268, 0, 0);
                    sub_1CEFCCC44(v268, &unk_1EC4BED40, &unk_1CFA00720);
                    (v261)(v314, 0);

                    sub_1CEFE5888(v265, type metadata accessor for VFSItem);
                    sub_1CEFCCC44(v292, &unk_1EC4BEC00, &unk_1CF9FCB60);
                    v303(v294, v295);
                    goto LABEL_63;
                  }

                  (v261)(v314, 0);

                  sub_1CEFE5888(v205, type metadata accessor for VFSItem);
                  v254 = v292;
                }

                sub_1CEFCCC44(v254, &unk_1EC4BEC00, &unk_1CF9FCB60);
                v218(v294, v295);
                goto LABEL_63;
              }

LABEL_68:
              __break(1u);
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_70:
      MEMORY[0x1EEE9AC00](v82);
      v273 = v79;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v271, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

LABEL_69:
    MEMORY[0x1EEE9AC00](v80);
    v273 = v79;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v271, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v85 = fpfs_current_or_default_log();
  v86 = v299;
  sub_1CF9E6128();

  v87 = sub_1CF9E6108();
  v88 = sub_1CF9E7298();
  v83, v89, v90, v91, v92, v93, v94, v95;
  if (os_log_type_enabled(v87, v88))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    *&aBlock = v97;
    *v96 = 136446210;
    v98 = sub_1CF9E6888();
    v99 = [v98 fp_prettyPath];

    v100 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v102 = v101;

    v103 = sub_1CEFD0DF0(v100, v102, &aBlock);
    v102, v104, v105, v106, v107, v108, v109, v110;
    *(v96 + 4) = v103;
    _os_log_impl(&dword_1CEFC7000, v87, v88, "If the item is the domain root %{public}s, no need to handle parent mtime", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v97);
    MEMORY[0x1D386CDC0](v97, -1, -1);
    MEMORY[0x1D386CDC0](v96, -1, -1);
  }

  (*(v300 + 8))(v86, v301);
LABEL_63:
  sub_1CF9E7458();
  v269 = v310;
  sub_1CF9E6038();
  return sub_1CEFE5888(v269, type metadata accessor for Signpost);
}

uint64_t sub_1CF2A6314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v9 = 0;
  v11 = a1;
  v12 = a2;
  v13 = &v10;
  v14 = &v9;
  v15 = a3;
  result = sub_1CEFE1894(sub_1CF2B97A8);
  if (!v4)
  {
    v7 = v10;
    v8 = v9;
    if (!v10)
    {
      v8 = 0;
    }

    *a4 = v8;
    *(a4 + 8) = v7 ^ 1;
  }

  return result;
}

uint64_t sub_1CF2A63C0@<X0>(void *a4@<X4>, _DWORD *a5@<X8>)
{
  sub_1CF9E5A18();
  v8 = v7;
  v9 = objc_sync_enter(a4);
  if (v9)
  {
    MEMORY[0x1EEE9AC00](v9);
    v22 = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v21, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v10 = a4[20];

  v11 = objc_sync_exit(a4);
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11);
    v22 = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v21, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  os_unfair_lock_lock(v10 + 14);
  os_unfair_lock_unlock(v10 + 14);

  sub_1CF9E6978();
  v8, v12, v13, v14, v15, v16, v17, v18;
  v19 = fpfs_pkg_relative_path_lookup();

  *a5 = v19;
  return result;
}

uint64_t sub_1CF2A655C(uint64_t a1)
{
  v54 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v2 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v4 = &v49 - v3;
  v60 = type metadata accessor for VFSItem(0);
  v5 = *(v60 - 1);
  MEMORY[0x1EEE9AC00](v60);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = MEMORY[0x1E69E7CD0];
  v65 = MEMORY[0x1E69E7CD0];
  v51 = v1;
  v11 = (v1 + qword_1EDEAFB30);
  swift_beginAccess();
  v12 = v11[1];
  v63[0] = *v11;
  v63[1] = v12;
  v64[0] = v11[2];
  *(v64 + 9) = *(v11 + 41);
  v13 = *(&v63[0] + 1);
  if (*(&v63[0] + 1))
  {
    v57 = *(*(&v63[0] + 1) + 16);
    if (v57)
    {
      v14 = *(&v63[0] + 1) + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      sub_1CEFCCBDC(v63, v62, &unk_1EC4BEDF0, &qword_1CFA00818);
      v58 = (v5 + 48);

      v15 = 0;
      v16 = v57;
      v50 = v2;
      v49 = v9;
      v59 = v14;
      while (1)
      {
        if (v15 >= *v13->tree)
        {
          __break(1u);
LABEL_27:
          v62[0] = v14;
          result = sub_1CF9E80C8();
          __break(1u);
          return result;
        }

        sub_1CEFCCBDC(v14 + *(v2 + 72) * v15, v4, &unk_1EC4BED40, &unk_1CFA00720);
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        sub_1CEFCCC44(v4, &unk_1EC4BED40, &unk_1CFA00720);
LABEL_5:
        if (v16 == ++v15)
        {
          sub_1CEFCCC44(v63, &unk_1EC4BEDF0, &qword_1CFA00818);
          v13, v26, v27, v28, v29, v30, v31, v32;
          v10 = v65;
          goto LABEL_19;
        }
      }

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820) + 48);

      if ((*v58)(&v4[v17], 1, v60) == 1)
      {
        sub_1CEFCCC44(&v4[v17], &unk_1EC4BEC00, &unk_1CF9FCB60);
LABEL_17:
        v14 = v59;
        goto LABEL_5;
      }

      sub_1CEFE4C60(&v4[v17], v9, type metadata accessor for VFSItem);
      v18 = v9[8];
      if (v9[8])
      {
        LODWORD(v14) = *&v9[v60[10]];
        type metadata accessor for fpfs_tempfile_pattern_t(0);
        if ((v14 - 1) < 0xB)
        {
          v19 = v9;
          v20 = v53;
          sub_1CEFD90AC(v19, v53, type metadata accessor for VFSItem);
          type metadata accessor for VFSTrackingContinuation(0);
          v21 = swift_allocObject();
          v56 = v20 + v60[7];
          v55 = *(type metadata accessor for ItemMetadata(0) + 32);
          v22 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
          v23 = sub_1CF9E5CF8();
          v24 = *(v23 - 8);
          (*(v24 + 16))(v21 + v22, v56 + v55, v23);
          v25 = v20;
          v9 = v49;
          sub_1CEFE5888(v25, type metadata accessor for VFSItem);
          swift_setDeallocating();
          (*(v24 + 8))(v21 + OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate, v23);
          v2 = v50;
          swift_deallocClassInstance();
LABEL_16:
          sub_1CEFE5888(v9, type metadata accessor for VFSItem);
          v16 = v57;
          goto LABEL_17;
        }

        if (v14)
        {
          goto LABEL_27;
        }
      }

      if (*&v9[v60[9]] == v54)
      {
        sub_1CF6E9500(v62, *v9, v18);
      }

      goto LABEL_16;
    }
  }

LABEL_19:
  v33 = v51;
  Strong = swift_unknownObjectWeakLoadStrong();
  v35 = v52;
  if (Strong)
  {
    v36 = *(v33 + 288);
    ObjectType = swift_getObjectType();
    v38 = (*(v36 + 8))(v54, ObjectType, v36);
    if (v35)
    {
      v10, v39, v40, v41, v42, v43, v44, v45;
      return swift_unknownObjectRelease();
    }

    v48 = v38;
    swift_unknownObjectRelease();
    v47 = v48;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CD0];
  }

  return sub_1CF55A4E8(v47, v10);
}

void sub_1CF2A6B70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v10 = a6;
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;
  v16 = a3;

  sub_1CF2B6580(v13, v15, a5, v10, a7, v8);

  v15, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t sub_1CF2A6C34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

uint64_t sub_1CF2A6C90(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a3;

  sub_1CF2B9060(a4);
}

uint64_t sub_1CF2A6CF0(void *a1)
{
  v173 = a1;
  v2 = sub_1CF9E5A58();
  v172 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_sync_enter(v1);
  if (v5)
  {
    goto LABEL_28;
  }

  v6 = *(v1 + 160);

  v7 = objc_sync_exit(v1);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](v7);
    *(&v162 - 2) = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v162 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v8 = v173;
  v9 = v173[3];
  v10 = v173[4];
  __swift_project_boxed_opaque_existential_1(v173, v9);
  sub_1CF4FB2BC(0x6F6F72205346202BLL, 0xEA00000000007374, v9, v10);
  v11 = v8[3];
  v174 = v8[4];
  v12 = __swift_project_boxed_opaque_existential_1(v8, v11);
  v180 = 8224;
  v181 = 0xE200000000000000;
  v13 = sub_1CF9E5928();
  v14 = [v13 fp_shortDescription];

  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0x3A6F6E695B20, 0xE600000000000000);
  v178 = v6[3];
  v25 = sub_1CF9E7F98();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](93, 0xE100000000000000);
  v35 = v181;
  v1 = v12;
  sub_1CF4FB2BC(v180, v181, v11, v174);
  v35, v36, v37, v38, v39, v40, v41, v42;
  v171 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs;
  v43 = *(*(v6 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) + 16);
  v44 = v43 - 1;
  if (v43 != 1)
  {
    if (!v43)
    {
      goto LABEL_27;
    }

    v5 = swift_beginAccess();
    v169 = v2;
    v170 = v172 + 16;
    v167 = (v172 + 8);
    v168 = v6;
    v45 = 5;
    v163 = v4;
    while (1)
    {
      v1 = v45 - 4;
      v79 = *(v6 + v171);
      if ((v45 - 4) >= *(v79 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        MEMORY[0x1EEE9AC00](v5);
        *(&v162 - 2) = v1;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v162 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v5 = (*(v172 + 16))(v4, v79 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v1, v2);
      v80 = v6[4];
      if (v1 >= *(v80 + 16))
      {
        goto LABEL_26;
      }

      v174 = v44;
      v81 = *(v80 + 8 * v45);
      v82 = v6[12];
      if (*(v82 + 16))
      {
        v83 = sub_1CF7BF2C0(v81, 1);
        if (v84)
        {
          break;
        }
      }

      v46 = v173[3];
      v47 = v173[4];
      __swift_project_boxed_opaque_existential_1(v173, v46);
      v178 = 8224;
      v179 = 0xE200000000000000;
      v48 = sub_1CF9E5928();
      v49 = v4;
      v50 = [v48 fp_shortDescription];

      v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v53 = v52;

      MEMORY[0x1D3868CC0](v51, v53);
      v53, v54, v55, v56, v57, v58, v59, v60;
      MEMORY[0x1D3868CC0](0x3A6F6E695B20, 0xE600000000000000);
      v176 = v81;
      v61 = sub_1CF9E7F98();
      v63 = v62;
      MEMORY[0x1D3868CC0](v61);
      v63, v64, v65, v66, v67, v68, v69, v70;
      MEMORY[0x1D3868CC0](93, 0xE100000000000000);
      v71 = v179;
      sub_1CF4FB2BC(v178, v179, v46, v47);
      v2 = v169;
LABEL_7:
      v6 = v168;
      v71, v72, v73, v74, v75, v76, v77, v78;
      v5 = (*v167)(v49, v2);
      ++v45;
      v44 = v174 - 1;
      v4 = v49;
      if (v174 == 1)
      {
      }
    }

    v85 = *(v82 + 56) + 32 * v83;
    v86 = *v85;
    v87 = *(v85 + 8);
    v88 = *(v85 + 16);
    v89 = *(v85 + 24);
    v90 = v173[3];
    v91 = v173[4];
    v164 = v88;
    v165 = v91;
    v92 = v90;
    v166 = __swift_project_boxed_opaque_existential_1(v173, v90);
    v178 = 0;
    v179 = 0xE000000000000000;

    sub_1CF9E7948();
    v179, v93, v94, v95, v96, v97, v98, v99;
    v178 = 8224;
    v179 = 0xE200000000000000;
    v100 = sub_1CF9E5928();
    v101 = [v100 fp_shortDescription];

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    MEMORY[0x1D3868CC0](v102, v104);
    v104, v105, v106, v107, v108, v109, v110, v111;
    MEMORY[0x1D3868CC0](0x3A6F6E695B20, 0xE600000000000000);
    v176 = v81;
    v112 = sub_1CF9E7F98();
    v114 = v113;
    MEMORY[0x1D3868CC0](v112);
    v114, v115, v116, v117, v118, v119, v120, v121;
    MEMORY[0x1D3868CC0](0x746E65726170202CLL, 0xE90000000000003ALL);
    if (v87)
    {
      if (v87 != 1)
      {
        v2 = v169;
        v134 = v92;
        if (v86)
        {
          v132 = 0x6873617274;
        }

        else
        {
          v132 = 1953460082;
        }

        if (v86)
        {
          v133 = 0xE500000000000000;
        }

        else
        {
          v133 = 0xE400000000000000;
        }

        goto LABEL_23;
      }

      v175 = v86;
      v176 = 0x284449656C6966;
      v177 = 0xE700000000000000;
    }

    else
    {
      v176 = 0x284449636F64;
      v177 = 0xE600000000000000;
      LODWORD(v175) = v86;
    }

    v122 = sub_1CF9E7F98();
    v124 = v123;
    MEMORY[0x1D3868CC0](v122);
    v124, v125, v126, v127, v128, v129, v130, v131;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v132 = v176;
    v133 = v177;
    v2 = v169;
    v134 = v92;
LABEL_23:
    v135 = v165;
    MEMORY[0x1D3868CC0](v132, v133);
    v133, v136, v137, v138, v139, v140, v141, v142;
    MEMORY[0x1D3868CC0](0x616E656C6966202CLL, 0xEC000000203A656DLL);
    v143 = sub_1CF9E6888();
    v144 = [v143 fp_obfuscatedFilename];

    v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v147 = v146;
    v89, v146, v148, v149, v150, v151, v152, v153;

    MEMORY[0x1D3868CC0](v145, v147);
    v147, v154, v155, v156, v157, v158, v159, v160;
    MEMORY[0x1D3868CC0](93, 0xE100000000000000);
    v71 = v179;
    sub_1CF4FB2BC(v178, v179, v134, v135);
    v49 = v163;
    goto LABEL_7;
  }
}

uint64_t sub_1CF2A7510@<X0>(_DWORD *a2@<X8>)
{
  sub_1CF9E5A18();
  v4 = v3;
  sub_1CF9E6978();
  v4, v5, v6, v7, v8, v9, v10, v11;
  LODWORD(v4) = sub_1CF9E6158();

  *a2 = v4;
  return result;
}

uint64_t sub_1CF2A757C()
{

  *(v0 + 184), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 192), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 200), v15, v16, v17, v18, v19, v20, v21;

  *(v0 + 240), v22, v23, v24, v25, v26, v27, v28;

  *(v0 + 264), v29, v30, v31, v32, v33, v34, v35;

  sub_1CF02B994(v0 + 280);
  v36 = qword_1EDEAFB40;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
  (*(*(v37 - 8) + 8))(v0 + v36, v37);
  v38 = qword_1EDEAFB48;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  (*(*(v39 - 8) + 8))(v0 + v38, v39);

  sub_1CF2AF8A8(*(v0 + qword_1EDEAFB30), *(v0 + qword_1EDEAFB30 + 8), *(v0 + qword_1EDEAFB30 + 16), *(v0 + qword_1EDEAFB30 + 24), *(v0 + qword_1EDEAFB30 + 32), *(v0 + qword_1EDEAFB30 + 40), *(v0 + qword_1EDEAFB30 + 48), *(v0 + qword_1EDEAFB30 + 56));
  sub_1CEFF7124(*(v0 + qword_1EDEAFB08), *(v0 + qword_1EDEAFB08 + 8));

  sub_1CEFE5888(v0 + qword_1EDEBBE70, type metadata accessor for VFSCounters);
  sub_1CF00D644(*(v0 + qword_1EDEAFAE0));
  return sub_1CEFCCC44(v0 + qword_1EDEAFAF8 + 8, &qword_1EC4BEC48, &unk_1CFA00690);
}

char *sub_1CF2A7778()
{
  v0 = sub_1CF2CFFAC();

  *(v0 + 23), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 24), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 25), v15, v16, v17, v18, v19, v20, v21;

  *(v0 + 30), v22, v23, v24, v25, v26, v27, v28;

  *(v0 + 33), v29, v30, v31, v32, v33, v34, v35;

  sub_1CF02B994((v0 + 280));
  v36 = qword_1EDEAFB40;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48E0, &unk_1CFA00680);
  (*(*(v37 - 8) + 8))(&v0[v36], v37);
  v38 = qword_1EDEAFB48;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEC40, &qword_1CFA03260);
  (*(*(v39 - 8) + 8))(&v0[v38], v39);

  sub_1CF2AF8A8(*&v0[qword_1EDEAFB30], *&v0[qword_1EDEAFB30 + 8], *&v0[qword_1EDEAFB30 + 16], *&v0[qword_1EDEAFB30 + 24], *&v0[qword_1EDEAFB30 + 32], *&v0[qword_1EDEAFB30 + 40], *&v0[qword_1EDEAFB30 + 48], v0[qword_1EDEAFB30 + 56]);
  sub_1CEFF7124(*&v0[qword_1EDEAFB08], *&v0[qword_1EDEAFB08 + 8]);

  sub_1CEFE5888(&v0[qword_1EDEBBE70], type metadata accessor for VFSCounters);
  sub_1CF00D644(*&v0[qword_1EDEAFAE0]);
  sub_1CEFCCC44(&v0[qword_1EDEAFAF8 + 8], &qword_1EC4BEC48, &unk_1CFA00690);
  return v0;
}

uint64_t sub_1CF2A7980()
{
  sub_1CF2A7778();

  return swift_deallocClassInstance();
}

void sub_1CF2A79D4(uint64_t a1)
{
  sub_1CF2A7DEC(319, &qword_1EDEAEDF8, MEMORY[0x1E69E76D8]);
  if (v1 <= 0x3F)
  {
    sub_1CF2A7DEC(319, &qword_1EDEAEE00, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for VFSCounters(319);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1CF2A7D20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v6 + 216);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = v6;
  v15 = v13;

  sub_1CF01001C(0, a5, 27, 2, a6, v14);
}

void sub_1CF2A7DEC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CF9E62B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CF2A7E90(uint64_t a1)
{
  result = sub_1CF9E5CF8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1CF2A7F5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v7 = v6;
  v8 = v5;
  v47 = a4;
  v62[5] = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v12 = *(a2 + 8);
  v14 = *a3;
  v13 = a3[1];
  if (v12 == 1)
  {

    goto LABEL_12;
  }

  if (v12 != 2)
  {
    v45 = 0;
    v44 = 4679;
    v22 = sub_1CF9E7B68();
    __break(1u);
    goto LABEL_36;
  }

  v22 = objc_sync_enter(v5);
  if (!v11)
  {
    if (!v22)
    {
      v27 = v5[20];

      v28 = objc_sync_exit(v5);
      if (!v28)
      {
        v11 = *(v27 + 24);

        goto LABEL_12;
      }

      MEMORY[0x1EEE9AC00](v28);
      v44 = v5;
      v42 = sub_1CF1C5468;
LABEL_41:
      fp_preconditionFailure(_:file:line:)(v42, v43, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v22);
    v44 = v5;
    v41 = sub_1CF1C546C;
LABEL_39:
    fp_preconditionFailure(_:file:line:)(v41, v43, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  if (v22)
  {
LABEL_36:
    MEMORY[0x1EEE9AC00](v22);
    v44 = v5;
    v41 = sub_1CF1C5288;
    goto LABEL_39;
  }

  v23 = v5[20];

  v24 = objc_sync_exit(v5);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    v44 = v5;
    v42 = sub_1CF1C5290;
    goto LABEL_41;
  }

  v11 = *(v23 + 40);
  v25 = *(v23 + 48);

  if (v25)
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 2;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
    sub_1CF2A8DE0(v26);
    swift_willThrow();
    return;
  }

LABEL_12:
  0, v15, v16, v17, v18, v19, v20, v21;
  v62[0] = a1;
  v62[1] = v11;
  v62[2] = 0;
  v62[3] = v14;
  v62[4] = v13;
  v29 = objc_sync_enter(v8);
  if (v29)
  {
    MEMORY[0x1EEE9AC00](v29);
    v44 = v8;
    v41 = sub_1CF1C546C;
    goto LABEL_39;
  }

  v46 = a5;
  v30 = v8[20];

  v31 = objc_sync_exit(v8);
  if (v31)
  {
    MEMORY[0x1EEE9AC00](v31);
    v44 = v8;
    v42 = sub_1CF1C5468;
    goto LABEL_41;
  }

  v32 = *(v30 + 16);

  MEMORY[0x1EEE9AC00](v33);
  v44 = v32 | 0x20000000000000;
  v61 = 0;
  v58 = a1;
  v59 = v11;
  v60 = 0u;
  if (v13)
  {
    MEMORY[0x1EEE9AC00](v34);
    if ((v13 & 0x1000000000000000) == 0)
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v49[0] = v14;
        v49[1] = v13 & 0xFFFFFFFFFFFFFFLL;
        *(&v60 + 1) = v49;
        v53 = a1;
        v54 = v11;
        v55 = 0;
        v56 = v49;
        v57 = 0;
        v48 = -1;
        v35 = fpfs_openfdbyhandle();
        if (v35 < 0)
        {
          v36 = MEMORY[0x1D38683F0]();
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      if ((v14 & 0x1000000000000000) != 0)
      {
        *(&v60 + 1) = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v53 = a1;
        v54 = v11;
        v55 = 0;
        v56 = *(&v60 + 1);
        v57 = 0;
        LODWORD(v49[0]) = -1;
        v35 = fpfs_openfdbyhandle();
        if (v35 < 0)
        {
          v36 = MEMORY[0x1D38683F0]();
LABEL_29:
          LODWORD(v51[0]) = 0;
          BYTE4(v51[0]) = 1;
          v52 = 0;
          v7 = sub_1CF19BBE4(v36, v51);
          sub_1CF1969CC(v51);
          swift_willThrow();
          goto LABEL_30;
        }

LABEL_23:
        v38 = v35;
        goto LABEL_24;
      }
    }

    sub_1CF9E7938();
    if (v6)
    {
      goto LABEL_30;
    }

    v38 = v50;
  }

  else
  {
    v53 = a1;
    v54 = v11;
    v56 = 0;
    v57 = 0;
    v55 = 0;
    LODWORD(v49[0]) = -1;
    v37 = fpfs_openfdbyhandle();
    if (v37 < 0)
    {
      v39 = MEMORY[0x1D38683F0]();
      LODWORD(v51[0]) = 0;
      BYTE4(v51[0]) = 1;
      v52 = 0;
      v7 = sub_1CF19BBE4(v39, v51);
      sub_1CF1969CC(v51);
      swift_willThrow();
LABEL_30:
      v40 = v7;
      LODWORD(v51[0]) = sub_1CF9E5308();
      sub_1CF196978();
      sub_1CF9E5658();
      sub_1CF255928(v62);

      return;
    }

    v38 = v37;
  }

LABEL_24:
  sub_1CF19811C(v38, v62, v32, v47 & 1, v46);
  if ((v38 & 0x80000000) == 0)
  {
    close(v38);
  }

  sub_1CF255928(v62);
}

uint64_t sub_1CF2A86DC()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v42 = *v0;
  LOBYTE(v43) = *(v0 + 8);
  v9 = VFSItemID.description.getter(v8);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v19 = sub_1CF9E6888();
  v20 = [v19 fp_obfuscatedFilename];

  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v23 = v22;

  MEMORY[0x1D3868CC0](v21, v23);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](8226, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v31 = sub_1CF0720C8();
  v33 = v32;
  MEMORY[0x1D3868CC0](v31);
  v33, v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 3829820;
}

uint64_t sub_1CF2A882C@<X0>(void *a5@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  *a5 = v7;
  return result;
}

uint64_t sub_1CF2A88A8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1CF9E62A8();
}

unint64_t sub_1CF2A8918@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _TtC18FileProviderDaemon8FSTester *a6@<X5>, unint64_t a7@<X8>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v85 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v13 = a5;
  v18 = (a6 >> 56) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v19 = (a6 >> 56) & 0xF) : (v19 = a5 & 0xFFFFFFFFFFFFLL), !v19))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v18 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 && (a2 & 1) != 0)
    {
      a6, a2, a3, a4, a5, a6, a8, a9;
      return MEMORY[0x1E69E7CC0];
    }

    v9 = sub_1CF9E6B58();
    v13 = v44;
    v14 = v45;
    v15 = v46;
    a6, v44, v45, v46, v47, v48, v49, v50;
    v16 = sub_1CF1F66D8(0, 1, 1, MEMORY[0x1E69E7CC0], v51, v52, v53, v54);
    v11 = *(v16 + 16);
    a7 = *(v16 + 24);
LABEL_39:
    v12 = v11 + 1;
    if (v11 < a7 >> 1)
    {
LABEL_40:
      *(v16 + 16) = v12;
      v76 = (v16 + 32 * v11);
      v76[4] = v9;
      v76[5] = v13;
      v76[6] = v14;
      v76[7] = v15;
      return v16;
    }

LABEL_43:
    v16 = sub_1CF1F66D8((a7 > 1), v12, 1, v16, a5, a6, a8, a9);
    goto LABEL_40;
  }

  v9 = a4;
  v80 = a2;
  v20 = 4 * v19;
  v16 = MEMORY[0x1E69E7CC0];
  v21 = 15;
  while (1)
  {
    v15 = v21 >> 14;
    if (v21 >> 14 == v20)
    {
      goto LABEL_33;
    }

    v81 = v16;
    v79 = a1;
    while (2)
    {
      v82 = v21;
      v16 = v21;
      while (1)
      {
        v22 = sub_1CF9E6B38();
        v14 = v23;
        v84[0] = v22;
        v84[1] = v23;
        v24 = v85(v84);
        if (v10)
        {
          v81, v25, v26, v27, v28, v29, v30, v31;
          a6, v55, v56, v57, v58, v59, v60, v61;
          v14, v62, v63, v64, v65, v66, v67, v68;
          return v16;
        }

        v32 = v24;
        v14, v25, v26, v27, v28, v29, v30, v31;
        if (v32)
        {
          break;
        }

        v16 = sub_1CF9E69E8();
        v15 = v16 >> 14;
        if (v16 >> 14 == v20)
        {
          v16 = v81;
          v21 = v82;
          goto LABEL_33;
        }
      }

      result = v82;
      if (v82 >> 14 == v15 && (v80 & 1) != 0)
      {
        v21 = sub_1CF9E69E8();
        v15 = v21 >> 14;
        if (v21 >> 14 != v20)
        {
          continue;
        }

        v16 = v81;
LABEL_33:
        if (v21 >> 14 == v20 && (v80 & 1) != 0)
        {
          a6, a2, a3, a4, a5, a6, a8, a9;
          return v16;
        }

        if (v20 < v21 >> 14)
        {
          __break(1u);
        }

        else
        {
          v9 = sub_1CF9E6B58();
          v13 = v69;
          v14 = v70;
          v15 = v71;
          a6, v69, v70, v71, v72, v73, v74, v75;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v11 = *(v16 + 16);
            a7 = *(v16 + 24);
            goto LABEL_39;
          }
        }

        v16 = sub_1CF1F66D8(0, *(v16 + 16) + 1, 1, v16, a5, a6, a8, a9);
        goto LABEL_38;
      }

      break;
    }

    if (v15 < v82 >> 14)
    {
      break;
    }

    v34 = sub_1CF9E6B58();
    v83 = v35;
    v77 = v37;
    v78 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1CF1F66D8(0, *v81->tree + 1, 1, v81, v38, v39, v40, v41);
    }

    v15 = *v81->tree;
    v42 = *v81->tester;
    v14 = (v15 + 1);
    if (v15 >= v42 >> 1)
    {
      v81 = sub_1CF1F66D8((v42 > 1), v15 + 1, 1, v81, v38, v39, v40, v41);
    }

    *v81->tree = v14;
    v43 = &v81[v15];
    v43[1].super.isa = v34;
    *v43[1]._anon_8 = v83;
    *v43[1].tree = v78;
    *v43[1].tester = v77;
    v16 = v81;
    v21 = sub_1CF9E69E8();
    a1 = v79;
    if (*v81->tree == v79)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1CF2A8CD8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5;

    sub_1CF2AB3A0(v9, a2, a3, a4, a5);
    v12 = v11;

    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void *sub_1CF2A8D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t)@<X2>, _DWORD *a4@<X8>)
{
  *(a2 + 24) = a1;
  result = a3(&v7, a2);
  if (!v4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t sub_1CF2A8DE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1CF9E79F8();
  }

  result = sub_1CF2A8F84(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1CF2A8EB0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CF9E8048() & 1;
  }
}

uint64_t sub_1CF2A8F08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t *__return_ptr, void *, char *)@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1CF2661C0(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void *sub_1CF2A8F34@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v5 + 24) = a1;
  result = v6(&v8, v5);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1CF2A8F84(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1CF9E6AB8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1CF4C4DE8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1CF9E6AB8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1CF2A93F0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CF9E8048() & 1;
  }
}

uint64_t sub_1CF2A9448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CF2A9490()
{
  result = qword_1EC4BEBE0;
  if (!qword_1EC4BEBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEBE0);
  }

  return result;
}

uint64_t sub_1CF2A951C(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  return sub_1CF28EF20(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), (v2 + 64), v2 + v6, *(v2 + v6 + *(v5 + 64)), (v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF2A95F4(uint64_t a1)
{
  v83[0] = sub_1CF9E52B8();
  v1 = sub_1CF9E53A8();
  sub_1CF196978();
  v2 = sub_1CF9E5658();

  if ((v2 & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = sub_1CF9E53A8();
  v4 = sub_1CF9E57E8();

  v5 = [v4 userInfo];
  v6 = sub_1CF9E6638();

  if (!*v6->tree || (v7 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA3C930), (v8 & 1) == 0))
  {

    v6, v38, v39, v40, v41, v42, v43, v44;
LABEL_9:
    v37 = 0;
    return v37 & 1;
  }

  sub_1CEFD1104(*v6[1].tester + 32 * v7, v83);
  v6, v9, v10, v11, v12, v13, v14, v15;
  type metadata accessor for URLFileProtection(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v21 = v16;
  v22 = v19;
  if (v21 == v20 && v18 == v19)
  {

    v18, v23, v24, v25, v26, v27, v28, v29;
    v22, v30, v31, v32, v33, v34, v35, v36;
    v37 = 1;
  }

  else
  {
    v46 = sub_1CF9E8048();
    v18, v47, v48, v49, v50, v51, v52, v53;
    v22, v54, v55, v56, v57, v58, v59, v60;
    if (v46)
    {

      v37 = 1;
    }

    else
    {
      v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v63 = v62;
      v65 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v66 = v61;
      v67 = v64;
      if (v66 == v65 && v63 == v64)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_1CF9E8048();
      }

      v63, v68, v69, v70, v71, v72, v73, v74;
      v67, v75, v76, v77, v78, v79, v80, v81;
    }
  }

  return v37 & 1;
}

void sub_1CF2A9854(uint64_t *a1, __int128 *a2, void *a3, void *a4, uint64_t a5, char *a6)
{
  v58 = a6;
  v56 = a4;
  v57 = a3;
  v10 = sub_1CF9E63D8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = a2[2];
  v20 = a2[4];
  v21 = a2[5];
  v68 = a2[3];
  v69 = v20;
  v70 = v21;
  v22 = a2[1];
  v65 = *a2;
  v23 = *a1;
  v24 = *(a1 + 8);
  v66 = v22;
  v67 = v19;
  v25 = qword_1EDEBBE70;
  swift_beginAccess();
  v26 = *(v6 + v25);
  v27 = __CFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v51 = v11;
    v52 = v10;
    *(v6 + v25) = v28;
    v29 = *(v6 + 224);
    v54 = *(v6 + 216);
    v30 = sub_1CF9E6448();
    v55 = *(v30 - 8);
    (*(v55 + 56))(v18, 1, 1, v30);
    v31 = swift_allocObject();
    v32 = v23;
    v33 = v31;
    *(v31 + 16) = v57;
    *(v31 + 24) = v6;
    *(v31 + 32) = v32;
    *(v31 + 40) = v24;
    v34 = v68;
    v35 = v69;
    v36 = v66;
    *(v31 + 80) = v67;
    *(v31 + 96) = v34;
    v37 = v70;
    *(v31 + 112) = v35;
    *(v31 + 128) = v37;
    *(v31 + 48) = v65;
    *(v31 + 64) = v36;
    v38 = v58;
    *(v31 + 144) = a5;
    *(v31 + 152) = v38;
    *(v31 + 160) = v56;
    v39 = swift_allocObject();
    v39[2] = a5;
    v39[3] = v38;
    v39[4] = v29;

    swift_retain_n();
    v57 = v54;
    sub_1CEFCCBDC(&v65, &aBlock, &unk_1EC4BECD0, &unk_1CF9FEF80);

    v40 = fpfs_current_log();
    v41 = *(v29 + 16);
    v42 = v55;
    v56 = v41;
    v58 = v18;
    sub_1CEFCCBDC(v18, v15, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v42 + 48))(v15, 1, v30) == 1)
    {
      sub_1CEFCCC44(v15, &unk_1EC4BE370, qword_1CFA01B30);
      v43 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v44 = v53;
      sub_1CF9E6438();
      (*(v42 + 8))(v15, v30);
      v43 = sub_1CF9E63C8();
      (*(v51 + 8))(v44, v52);
    }

    v45 = swift_allocObject();
    v45[2] = v40;
    v45[3] = sub_1CEFD8FA4;
    v45[4] = v33;
    v63 = sub_1CF2BA17C;
    v64 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1CEFCA444;
    v62 = &block_descriptor_993;
    v46 = _Block_copy(&aBlock);
    v47 = v40;

    v63 = sub_1CF1DBCE4;
    v64 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1CEFCA444;
    v62 = &block_descriptor_996;
    v48 = _Block_copy(&aBlock);

    v49 = v57;
    fp_task_tracker_async_and_qos(v56, v57, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v43, v46, v48);
    _Block_release(v48);
    _Block_release(v46);

    sub_1CEFCCC44(v58, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

void sub_1CF2A9E14(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v55 = a5;
  v56 = a2;
  v11 = sub_1CF9E63D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v54 = *a1;
  LODWORD(v53) = *(a1 + 8);
  v21 = v6 + qword_1EDEBBE70;
  swift_beginAccess();
  v22 = *(v21 + 8);
  v23 = __CFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v47 = v14;
    v48 = v12;
    *(v21 + 8) = v24;
    v25 = *(v6 + 216);
    v26 = *(v6 + 224);
    v49 = v11;
    v50 = v25;
    v27 = sub_1CF9E6448();
    v51 = a3;
    v28 = v27;
    v29 = *(v27 - 8);
    (*(v29 + 56))(v20, 1, 1, v27);
    v30 = swift_allocObject();
    v52 = v17;
    v31 = a6;
    v32 = v30;
    v33 = v55;
    *(v30 + 16) = v55;
    *(v30 + 24) = v31;
    v34 = swift_allocObject();
    v35 = v54;
    *(v34 + 16) = v6;
    *(v34 + 24) = v35;
    *(v34 + 32) = v53;
    *(v34 + 40) = v33;
    *(v34 + 48) = v31;
    v36 = v51;
    *(v34 + 56) = v56;
    *(v34 + 64) = v36;
    *(v34 + 72) = a4;
    v37 = swift_allocObject();
    v37[2] = sub_1CEFF9D90;
    v37[3] = v32;
    v51 = v37;
    v37[4] = v26;

    v53 = v32;

    v38 = v52;
    swift_retain_n();
    v55 = v50;

    v39 = fpfs_current_log();
    v54 = *(v26 + 16);
    v56 = v20;
    sub_1CEFCCBDC(v20, v38, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v29 + 48))(v38, 1, v28) == 1)
    {
      sub_1CEFCCC44(v38, &unk_1EC4BE370, qword_1CFA01B30);
      v40 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v41 = v47;
      sub_1CF9E6438();
      (*(v29 + 8))(v38, v28);
      v40 = sub_1CF9E63C8();
      (*(v48 + 8))(v41, v49);
    }

    v42 = swift_allocObject();
    v42[2] = v39;
    v42[3] = sub_1CF2B15DC;
    v42[4] = v34;
    v61 = sub_1CF2BA17C;
    v62 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1CEFCA444;
    v60 = &block_descriptor_934;
    v43 = _Block_copy(&aBlock);
    v44 = v39;

    v61 = sub_1CF2B0788;
    v62 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1CEFCA444;
    v60 = &block_descriptor_937;
    v45 = _Block_copy(&aBlock);

    v46 = v55;
    fp_task_tracker_async_and_qos(v54, v55, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v40, v43, v45);
    _Block_release(v45);
    _Block_release(v43);

    sub_1CEFCCC44(v56, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

uint64_t sub_1CF2AA32C(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v56 = a4;
  v55 = a3;
  v65 = sub_1CF9E6388();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v46 - v10;
  v61 = sub_1CF9E6498();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v46 - v13;
  v48 = sub_1CF9E63D8();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1CF9E6448();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E73D8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  v50 = *(a1 + 8);
  v20 = a2[3];
  v69 = a2[2];
  v70 = v20;
  v21 = a2[5];
  v71 = a2[4];
  v72 = v21;
  v22 = a2[1];
  v67 = *a2;
  v68 = v22;
  sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v57 = v5;
  v23 = *(v5 + 216);
  v66[0] = MEMORY[0x1E69E7CC0];
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v25 = v46;
  sub_1CF9E77B8();
  v26 = v47;
  v27 = sub_1CF9E73E8();

  (*(v17 + 8))(v19, v16);
  v28 = v48;
  qos_class_self();
  sub_1CF9E63B8();
  v29 = *(v25 + 48);
  if (v29(v26, 1, v28) == 1)
  {
    (*(v25 + 104))(v49, *MEMORY[0x1E69E7FA0], v28);
    if (v29(v26, 1, v28) != 1)
    {
      sub_1CEFCCC44(v26, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v25 + 32))(v49, v26, v28);
  }

  ObjectType = swift_getObjectType();
  v31 = v52;
  sub_1CF9E6428();
  v32 = swift_allocObject();
  v33 = v70;
  *(v32 + 72) = v69;
  *(v32 + 88) = v33;
  v34 = v72;
  *(v32 + 104) = v71;
  *(v32 + 120) = v34;
  v35 = v68;
  *(v32 + 40) = v67;
  v36 = v51;
  *(v32 + 16) = v57;
  *(v32 + 24) = v36;
  *(v32 + 32) = v50;
  *(v32 + 56) = v35;
  v37 = v55;
  *(v32 + 136) = 0;
  *(v32 + 144) = v37;
  v38 = v56;
  *(v32 + 152) = v27;
  *(v32 + 160) = v38;
  *(v32 + 168) = v58;

  sub_1CEFCCBDC(&v67, v66, &unk_1EC4BECD0, &unk_1CF9FEF80);
  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v31, sub_1CF2B9F4C, v32, ObjectType);

  (*(v53 + 8))(v31, v54);
  v39 = v59;
  sub_1CF9E6478();
  v40 = v62;
  sub_1CEFD5B64(v62);
  v41 = v63;
  sub_1CEFD5BD8(v63);
  MEMORY[0x1D3869770](v39, v40, v41, ObjectType);
  v42 = *(v64 + 8);
  v43 = v41;
  v44 = v65;
  v42(v43, v65);
  v42(v40, v44);
  (*(v60 + 8))(v39, v61);
  sub_1CF9E7448();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CF2AAAA0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0xEB00000000746E75;
  v11 = a1 == 0x6F4370756B6F6F6CLL && a2 == 0xEB00000000746E75;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v13 = 0xE900000000000074;
    if (a1 == 0x6E756F436E616373 && a2 == 0xE900000000000074 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v13, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v14 = 0x80000001CFA3D990;
      if (a1 == 0xD000000000000011 && 0x80000001CFA3D990 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v14, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x7461447465736572 && a2 == 0xE900000000000065)
      {
        0xE900000000000065, v14, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else
      {
        v15 = sub_1CF9E8048();
        a2, v16, v17, v18, v19, v20, v21, v22;
        if (v15)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1CF2AAC1C(uint64_t a1)
{
  v3 = objc_sync_enter(v1);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  *(v1 + 152) = 3;
  *(v1 + 160) = a1;

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    v6 = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v5, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

void sub_1CF2AAD28(void *a1, void (*a2)(void *))
{
  v4 = sub_1CF9E5248();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_4;
  }

  v9 = a1;
  sub_1CF9E5158();
  sub_1CF2A9448(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
  v10 = sub_1CF9E5658();
  (*(v5 + 8))(v8, v4);
  if (v10)
  {

LABEL_4:
    (a2)(0, v6);
    return;
  }

  v11 = a1;
  a2(a1);
}

void sub_1CF2AAEA4(uint64_t a1, unint64_t a2, char a3, id *a4, void (*a5)(void), uint64_t a6)
{
  v12 = sub_1CF9E64A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  v17 = *a1;
  v45 = v16;
  v46 = v17;
  v18 = *(a1 + 8);
  v19 = a4[27];
  *v15 = v19;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);

  v20 = v19;
  LOBYTE(v19) = sub_1CF9E64D8();
  (*(v13 + 8))(v15, v12);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v44 = sub_1CF9E7818();
    v22 = v46;
    if (!v44)
    {
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v46;
  if (!v21)
  {
LABEL_17:
    a5(0);

    return;
  }

LABEL_4:
  if (a3)
  {
    goto LABEL_17;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  if (a4[23])
  {
    v24 = sub_1CF9E6888();
    [v23 setPurposeIdentifier_];
  }

  swift_beginAccess();
  v25 = v23;
  sub_1CF6E96F4(v47, v25);
  swift_endAccess();

  if (v18 != 255)
  {
    swift_beginAccess();
    if (*(a4[25] + 2) && (sub_1CF7BF2C0(v22, v18), (v26 & 1) != 0))
    {
      v27 = sub_1CF25CE44(aBlock);
      v28 = sub_1CF598538(v47, v22, v18);
      if (*v29)
      {
        sub_1CF6E96F4(&v48, v25);
      }

      (v28)(v47, 0);
      (v27)(aBlock, 0);
      v22 = v46;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFA00250;
      *(inited + 32) = v25;
      v31 = v25;
      sub_1CF6F3CF4(inited);
      v33 = v32;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = a4[25];
      a4[25] = 0x8000000000000000;
      sub_1CF1D20C8(v33, v22, v18, isUniquelyReferenced_nonNull_native);
      a4[25] = v47[0];
      swift_endAccess();
    }
  }

  v35 = fpfs_current_log();
  sub_1CEFD57E0(0, &qword_1EDEA3630, 0x1E696ABF0);
  v36 = sub_1CF9E6D28();
  v37 = a4[26];
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  *(v38 + 24) = a4;
  *(v38 + 32) = v25;
  *(v38 + 40) = v22;
  *(v38 + 48) = v18;
  v39 = v45;
  *(v38 + 56) = sub_1CF2B1978;
  *(v38 + 64) = v39;
  aBlock[4] = sub_1CF2BA138;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CF00A468;
  aBlock[3] = &block_descriptor_1179;
  v40 = _Block_copy(aBlock);
  v41 = v25;
  v42 = v37;
  v43 = v35;

  [v41 coordinateAccessWithIntents:v36 queue:v42 byAccessor:v40];
  _Block_release(v40);
}

void sub_1CF2AB3A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = 0;
  v6 = 0;
  v43 = a3;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(v43 + 56);
    v17 = (*(v43 + 48) + 16 * v15);
    v18 = v17[1];
    v42[0] = *v17;
    v42[1] = v18;
    v19 = *(v16 + 16 * v15 + 8);

    v20 = sub_1CF26B16C(v42, v41, a4, a5);
    v18, v21, v22, v23, v24, v25, v26, v27;
    v19, v28, v29, v30, v31, v32, v33, v34;
    if (v5)
    {
      return;
    }

    if (v20)
    {
      *(result + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1CF4F552C(result, a2, v38, v43);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1CF2AB528(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, unint64_t *a3)
{
  v4 = v3;
  v5 = a3;
  v41[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = a3;

  v12 = v11;
  if (v9 <= 0xD)
  {

    goto LABEL_3;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_3:
    MEMORY[0x1EEE9AC00](v13);
    v14 = v41 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v14, 8 * v10);

    v15 = v12;
    sub_1CF2AB3A0(v14, v10, a1, a2, v5);
    v5 = v16;
    a2, v17, v18, v19, v20, v21, v22, v23;

    if (v4)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v24 = swift_slowAlloc();

  v15 = v12;
  v25 = sub_1CF2A8CD8(v24, v10, a1, a2, v5);
  if (!v4)
  {
    v5 = v25;
  }

  MEMORY[0x1D386CDC0](v24, -1, -1);
LABEL_10:

  a2, v26, v27, v28, v29, v30, v31, v32;
  a2, v33, v34, v35, v36, v37, v38, v39;
  return v5;
}

uint64_t sub_1CF2AB748(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v81 = a6;
  v80 = a5;
  v79 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v71 - v11;
  v13 = sub_1CF9E63D8();
  v86 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v71 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - v18;
  v20 = sub_1CF9E6448();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v71 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v78 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v85 = &v71 - v30;
  v76 = *a1;
  v75 = *(a1 + 8);
  v31 = a3[3];
  v95 = a3[2];
  v96 = v31;
  v32 = a3[5];
  v97 = a3[4];
  v98 = v32;
  v33 = a3[1];
  v93 = *a3;
  v94 = v33;
  v77 = *(v7 + 224);
  v82 = v7;
  v84 = *(v7 + 216);
  sub_1CF9E6418();
  qos_class_self();
  sub_1CF9E63B8();
  v34 = v86;
  v35 = *(v86 + 48);
  v36 = v35(v12, 1, v13);
  v74 = v20;
  if (v36 == 1)
  {
    (*(v34 + 104))(v19, *MEMORY[0x1E69E7FA0], v13);
    v37 = v35(v12, 1, v13);
    v38 = v34;
    if (v37 != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v34 + 32))(v19, v12, v13);
    v38 = v34;
  }

  v72 = v13;
  sub_1CF9E6428();
  v39 = v83;
  sub_1CF9E6438();
  v40 = sub_1CF9E63C8();
  v41 = *(v38 + 8);
  v86 = v38 + 8;
  v41(v39, v13);
  v42 = v73;
  sub_1CF9E6438();
  v43 = sub_1CF9E63C8();
  v73 = v41;
  v41(v42, v13);
  v44 = *(v21 + 8);
  if (v40 >= v43)
  {
    v45 = v23;
  }

  else
  {
    v45 = v26;
  }

  if (v40 >= v43)
  {
    v46 = v26;
  }

  else
  {
    v46 = v23;
  }

  v47 = v74;
  v71 = *(v21 + 8);
  v44(v45, v74);
  v48 = v85;
  (*(v21 + 32))(v85, v46, v47);
  (*(v21 + 56))(v48, 0, 1, v47);
  v49 = swift_allocObject();
  v50 = v96;
  *(v49 + 48) = v95;
  *(v49 + 64) = v50;
  v51 = v98;
  *(v49 + 80) = v97;
  *(v49 + 96) = v51;
  v52 = v94;
  *(v49 + 16) = v93;
  *(v49 + 32) = v52;
  v53 = v80;
  v54 = v81;
  *(v49 + 112) = v80;
  *(v49 + 120) = v54;
  *(v49 + 128) = v76;
  *(v49 + 136) = v75;
  v55 = v79;
  *(v49 + 144) = v82;
  *(v49 + 152) = v55;
  v56 = swift_allocObject();
  v56[2] = v53;
  v56[3] = v54;
  v57 = v77;
  v56[4] = v77;
  swift_retain_n();
  sub_1CEFCCBDC(&v93, &aBlock, &unk_1EC4BECD0, &unk_1CF9FEF80);

  v58 = fpfs_current_log();
  v82 = *(v57 + 16);
  v59 = *(v21 + 48);
  v60 = v59(v48, 1, v47);
  v61 = v48;
  v62 = v78;
  sub_1CEFCCBDC(v61, v78, &unk_1EC4BE370, qword_1CFA01B30);
  if (v59(v62, 1, v47) == 1)
  {
    sub_1CEFCCC44(v62, &unk_1EC4BE370, qword_1CFA01B30);
    v63 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    sub_1CF9E6438();
    v71(v62, v47);
    v63 = sub_1CF9E63C8();
    (v73)(v39, v72);
  }

  if (v60 == 1)
  {
    v64 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v64 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v65 = swift_allocObject();
  v65[2] = v58;
  v65[3] = sub_1CF2B1428;
  v65[4] = v49;
  v91 = sub_1CF2BA17C;
  v92 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = sub_1CEFCA444;
  v90 = &block_descriptor_843;
  v66 = _Block_copy(&aBlock);
  v67 = v58;

  v91 = sub_1CF2B1440;
  v92 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v88 = 1107296256;
  v89 = sub_1CEFCA444;
  v90 = &block_descriptor_846;
  v68 = _Block_copy(&aBlock);

  v69 = v84;
  fp_task_tracker_async_and_qos(v82, v84, v64, v63, v66, v68);
  _Block_release(v68);
  _Block_release(v66);

  return sub_1CEFCCC44(v85, &unk_1EC4BE370, qword_1CFA01B30);
}

_OWORD *sub_1CF2ABFCC(_OWORD *result, uint64_t a2, uint64_t *a3, __int16 a4)
{
  v4 = result[1];
  v127 = *result;
  v5 = result[2];
  v6 = result[3];
  v128 = v4;
  v129 = v5;
  v7 = result[4];
  v8 = result[5];
  v130 = v6;
  v131 = v7;
  v132 = v8;
  v9 = v7;
  if (v7)
  {
    v11 = *a3;
    v133 = v127;
    v12 = HIDWORD(v127);
    v13 = v130;
    v14 = *a2;
    v15 = *(a2 + 8);
    if (v15 != 2 || v14 >= 2)
    {
      v87 = *(&v129 + 1);
      v88 = v128;
      v90 = DWORD2(v127);
      v91 = v130;
      v89 = BYTE8(v128);
      if ((v11 & 0x10000) != 0)
      {
        v83 = result;
        v85 = v7;
        v16 = a4;
        v17 = *a2;
        v18 = a2 + *(type metadata accessor for VFSItem(0) + 28);
        v19 = type metadata accessor for ItemMetadata(0);
        v14 = v17;
        v12 = HIDWORD(v127);
        a4 = v16;
        v20 = v19;
        result = v83;
        v9 = v85;
        if (*(v18 + *(v20 + 84)))
        {
          v11 &= ~0x10000uLL;
        }
      }

      if ((a4 & 0x1000) == 0)
      {
        v81 = v14;
        v82 = v15;
        v84 = v12;
        v86 = *(&v130 + 1);
        v21 = result;
        v22 = (a2 + *(type metadata accessor for VFSItem(0) + 36));
        v23 = *v22;
        v24 = *(v22 + 2);
        v25 = v22[2];
        v26 = *(v22 + 24);
        v27 = *(a2 + 16);
        v28 = *(a2 + 24);
        v29 = *(a2 + 32);
        v30 = *(a2 + 40);
        v107 = v26;
        v111 = v23;
        v112 = v24;
        v113 = v25;
        v114 = v26;
        v115 = 0;
        v116 = v27;
        v117 = v28;
        v118 = v29;
        v119 = v30;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v126[0] = *(v21 + 25);
        *(v126 + 7) = *(v21 + 4);
        v125[0] = *(v21 + 49);
        *(v125 + 3) = *(v21 + 13);
        v123 = *(v21 + 72);
        v124 = *(v21 + 11);
        if ((v11 & 0x10018) != 0)
        {
          if (v23 != v133 || v24 != DWORD2(v127))
          {
            goto LABEL_19;
          }

          if (v26)
          {
            if ((BYTE8(v128) & 1) == 0)
            {
LABEL_19:
              v35 = v24 & 0xFFFFFF00;
              v110 = v26;
              v36 = BYTE8(v127);
              v37 = DWORD2(v127) & 0xFFFFFF00;
              v109 = BYTE8(v128) & 1;
              v108 = 0;

              sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);
              sub_1CEFCCC44(&v111, &unk_1EC4BE330, &unk_1CF9FF010);
              v38 = v90 & 0xFFFFFF00;
              LOBYTE(v30) = v110;
              v39 = v23;
              v40 = v25;
              v41 = v109;
              v34 = v133;
              v42 = v88;
              v43 = v24;
              goto LABEL_23;
            }
          }

          else if ((BYTE8(v128) & 1) != 0 || v25 != v128)
          {
            goto LABEL_19;
          }
        }

        if ((v11 & 0xFFFFFFFFFFFFFFE7) != 0)
        {
          v31 = v27;
          v32 = v28;
          v33 = v29;
          sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);

          sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);
          v77 = v33;
          v78 = v31;
          v76 = v32;
          v34 = v87;
          if ((sub_1CF443664(v31, v32, v33, v30, v87, v13, v86, v9) & 1) == 0)
          {
            v44 = v13;
            v37 = v30 >> 8;

            sub_1CEFCCC44(&v127, &unk_1EC4BECD0, &unk_1CF9FEF80);
            v25 = v9 >> 8;
            v108 = 1;
            sub_1CEFCCC44(&v111, &unk_1EC4BE330, &unk_1CF9FF010);
            v38 = 0;
            v35 = 0;
            v41 = v9;
            v42 = v86;
            v36 = v44;
            v40 = v77;
            v39 = v78;
            v43 = v76;
LABEL_23:
            v45 = v35 | v43;
            v100[0] = v39;
            v100[1] = v45;
            v100[2] = v40;
            LOBYTE(v101) = v30;
            *(&v101 + 1) = v37;
            HIBYTE(v101) = BYTE6(v37);
            *(&v101 + 5) = WORD2(v37);
            v46 = v38 | v36;
            v102 = v34;
            v103 = v46;
            v104 = v42;
            LOBYTE(v105) = v41;
            *(&v105 + 1) = v25;
            HIBYTE(v105) = BYTE6(v25);
            *(&v105 + 5) = WORD2(v25);
            v106 = v108;
            if (v108 == 255)
            {
              return sub_1CEFCCC44(&v127, &unk_1EC4BECD0, &unk_1CF9FEF80);
            }

            v47 = v34;
            v48 = v40;
            v49 = v39;
            v79 = v105;
            v80 = v42;
            v50 = v101;
            if (v108)
            {
              v51 = v43;
              v52 = swift_allocObject();
              *(v52 + 16) = v49;
              *(v52 + 24) = v51;
              *(v52 + 32) = v48;
              *(v52 + 40) = v50;
              *(v52 + 48) = v47;
              *(v52 + 56) = v36;
              v53 = v52 | 0x4000000000000000;
              *(v52 + 64) = v80;
              *(v52 + 72) = v79;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              swift_allocError();
              v55 = v54;
              sub_1CF1B8150();
              v56 = swift_allocError();
              *v57 = v53;
              *&v97[8] = v123;
              *&v93 = v81;
              BYTE8(v93) = v82;
              HIDWORD(v93) = *&v92[3];
              *(&v93 + 9) = *v92;
              *&v94 = v133;
              *(&v94 + 1) = __PAIR64__(v84, v90);
              *v95 = v88;
              v95[8] = v89;
              *&v95[16] = *(v126 + 7);
              *&v95[9] = v126[0];
              *&v95[24] = v87;
              LOBYTE(v96) = v91;
              DWORD1(v96) = *(v125 + 3);
              *(&v96 + 1) = v125[0];
              *(&v96 + 1) = v86;
              *v97 = v9;
              *&v97[24] = v124;
              v98 = v56;
              sub_1CF2A8DE0(&v93);
              *v55 = v93;
              v58 = v94;
              v59 = *v95;
              v60 = v96;
              *(v55 + 48) = *&v95[16];
              *(v55 + 64) = v60;
              *(v55 + 16) = v58;
              *(v55 + 32) = v59;
              v61 = *v97;
              v62 = *&v97[16];
              v63 = v98;
              *(v55 + 128) = v99;
              *(v55 + 96) = v62;
              *(v55 + 112) = v63;
              *(v55 + 80) = v61;
              swift_willThrow();

              return sub_1CEFCCC44(v100, &qword_1EC4BECF8, &qword_1CFA006D8);
            }

            else
            {
              v64 = swift_allocObject();
              *(v64 + 16) = v49;
              *(v64 + 24) = v45;
              *(v64 + 32) = v48;
              *(v64 + 40) = v50 & 1;
              *(v64 + 48) = v47;
              *(v64 + 56) = v46;
              *(v64 + 64) = v80;
              v65 = v64 | 0x3000000000000000;
              *(v64 + 72) = v79 & 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
              sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
              swift_allocError();
              v67 = v66;
              sub_1CF1B8150();
              v68 = swift_allocError();
              *v69 = v65;
              *&v97[8] = v123;
              *&v93 = v81;
              BYTE8(v93) = v82;
              HIDWORD(v93) = *&v92[3];
              *(&v93 + 9) = *v92;
              *&v94 = v133;
              *(&v94 + 1) = __PAIR64__(v84, v90);
              *v95 = v88;
              v95[8] = v89;
              *&v95[16] = *(v126 + 7);
              *&v95[9] = v126[0];
              *&v95[24] = v87;
              LOBYTE(v96) = v91;
              DWORD1(v96) = *(v125 + 3);
              *(&v96 + 1) = v125[0];
              *(&v96 + 1) = v86;
              *v97 = v9;
              *&v97[24] = v124;
              v98 = v68;
              sub_1CF2A8DE0(&v93);
              *v67 = v93;
              v70 = v94;
              v71 = *v95;
              v72 = v96;
              *(v67 + 48) = *&v95[16];
              *(v67 + 64) = v72;
              *(v67 + 16) = v70;
              *(v67 + 32) = v71;
              v73 = *v97;
              v74 = *&v97[16];
              v75 = v98;
              *(v67 + 128) = v99;
              *(v67 + 96) = v74;
              *(v67 + 112) = v75;
              *(v67 + 80) = v73;
              return swift_willThrow();
            }
          }

          sub_1CEFCCC44(&v127, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        else
        {

          sub_1CEFCCBDC(&v127, &v93, &unk_1EC4BECD0, &unk_1CF9FEF80);
        }

        sub_1CEFCCC44(&v111, &unk_1EC4BE330, &unk_1CF9FF010);
        v41 = 0;
        LOBYTE(v30) = 0;
        v39 = 0;
        v40 = 0;
        v34 = 0;
        v42 = 0;
        v25 = 0;
        v36 = 0;
        v38 = 0;
        v37 = 0;
        v43 = 0;
        v35 = 0;
        v108 = -1;
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t sub_1CF2AC7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7, void *a8)
{
  v83 = a2;
  v84 = a7;
  v85 = a8;
  v80 = a5;
  v10 = sub_1CF9E63D8();
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v81 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v70 - v21;
  v23 = a6[13];
  v104 = a6[12];
  v105 = v23;
  v106 = a6[14];
  v107 = *(a6 + 30);
  v24 = a6[9];
  v100 = a6[8];
  v101 = v24;
  v25 = a6[11];
  v102 = a6[10];
  v103 = v25;
  v26 = a6[5];
  v96 = a6[4];
  v97 = v26;
  v27 = a6[7];
  v98 = a6[6];
  v99 = v27;
  v28 = a6[1];
  v92 = *a6;
  v93 = v28;
  v29 = a6[3];
  v94 = a6[2];
  v95 = v29;
  v30 = *(a1 + 24);
  v86 = *(a1 + 16);
  v87 = v30;

  sub_1CEFE52D8(0x657461657263, 0xE600000000000000, &v86);
  v87, v31, v32, v33, v34, v35, v36, v37;
  v71 = v12;
  v72 = v10;
  v38 = v82;
  v39 = *(v82 + 216);
  v75 = *(v82 + 224);
  v76 = v39;
  v40 = sub_1CF9E6448();
  v73 = *(v40 - 8);
  v74 = v40;
  (*(v73 + 56))(v22, 1, 1, v40);
  sub_1CEFCCBDC(a1, v17, &unk_1EC4BFD90, &unk_1CFA134F0);
  v41 = (*(v79 + 80) + 48) & ~*(v79 + 80);
  v42 = (v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 255) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v84;
  v44[2] = v83;
  v44[3] = v45;
  v46 = v85;
  v44[4] = v85;
  v44[5] = v38;
  sub_1CEFE55D0(v17, v44 + v41, &unk_1EC4BFD90, &unk_1CFA134F0);
  v47 = v44 + v42;
  v48 = v73;
  v49 = v105;
  *(v47 + 12) = v104;
  *(v47 + 13) = v49;
  *(v47 + 14) = v106;
  *(v47 + 30) = v107;
  v50 = v101;
  *(v47 + 8) = v100;
  *(v47 + 9) = v50;
  v51 = v103;
  *(v47 + 10) = v102;
  *(v47 + 11) = v51;
  v52 = v97;
  *(v47 + 4) = v96;
  *(v47 + 5) = v52;
  v53 = v99;
  *(v47 + 6) = v98;
  *(v47 + 7) = v53;
  v54 = v93;
  *v47 = v92;
  *(v47 + 1) = v54;
  v55 = v95;
  *(v47 + 2) = v94;
  *(v47 + 3) = v55;
  *(v44 + v43) = v80;
  v56 = swift_allocObject();
  v56[2] = v45;
  v56[3] = v46;
  v57 = v75;
  v56[4] = v75;
  swift_retain_n();
  v85 = v76;

  v58 = v74;

  sub_1CEFCCBDC(&v92, &v86, &qword_1EC4BECF0, &unk_1CF9FEEB0);

  v59 = fpfs_current_log();
  v84 = *(v57 + 16);
  v60 = v81;
  sub_1CEFCCBDC(v22, v81, &unk_1EC4BE370, qword_1CFA01B30);
  v61 = (*(v48 + 48))(v60, 1, v58);
  v77 = v22;
  if (v61 == 1)
  {
    sub_1CEFCCC44(v60, &unk_1EC4BE370, qword_1CFA01B30);
    v62 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v63 = v71;
    sub_1CF9E6438();
    (*(v48 + 8))(v60, v58);
    v62 = sub_1CF9E63C8();
    (*(v78 + 8))(v63, v72);
  }

  v64 = swift_allocObject();
  v64[2] = v59;
  v64[3] = sub_1CF2B0FCC;
  v64[4] = v44;
  v90 = sub_1CF2BA17C;
  v91 = v64;
  v86 = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_1CEFCA444;
  v89 = &block_descriptor_684;
  v65 = _Block_copy(&v86);
  v66 = v59;

  v90 = sub_1CF2BA188;
  v91 = v56;
  v86 = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v88 = sub_1CEFCA444;
  v89 = &block_descriptor_687;
  v67 = _Block_copy(&v86);

  v68 = v85;
  fp_task_tracker_async_and_qos(v84, v85, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v62, v65, v67);
  _Block_release(v67);
  _Block_release(v65);

  return sub_1CEFCCC44(v77, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2ACEBC(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x10000000000) != 0)
  {
    if ((v1 & 4) != 0)
    {
      result = 260;
      if ((v1 & 0x800) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = 256;
      if ((v1 & 0x800) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((v1 & 4) == 0)
    {
      result = 0;
      if ((v1 & 0x800) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    result = 4;
    if ((v1 & 0x800) != 0)
    {
LABEL_4:
      result |= 3uLL;
    }
  }

LABEL_5:
  if ((v1 & 0x400) != 0)
  {
    result |= 1uLL;
    if ((v1 & 0x1000) == 0)
    {
LABEL_7:
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v1 & 0x1000) == 0)
  {
    goto LABEL_7;
  }

  result |= 0x8000uLL;
  if ((v1 & 0x200) == 0)
  {
LABEL_8:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result |= 0x10000uLL;
  if ((v1 & 0x2000) == 0)
  {
LABEL_9:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result |= 0x400uLL;
  if ((v1 & 0x20) == 0)
  {
LABEL_10:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result |= 0x200000uLL;
  if ((v1 & 0x40) == 0)
  {
LABEL_11:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result |= 0x100000uLL;
  if ((v1 & 0x80) == 0)
  {
LABEL_12:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result |= 0x400000uLL;
  if ((v1 & 0x100) == 0)
  {
LABEL_13:
    if ((v1 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result |= 0x2000000uLL;
  if ((v1 & 0x20000) == 0)
  {
LABEL_14:
    if ((v1 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result |= 0x800000uLL;
  if ((v1 & 1) == 0)
  {
LABEL_15:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result |= 0x1000000uLL;
  if ((v1 & 0x10000) == 0)
  {
LABEL_16:
    if ((v1 & 0x100000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result |= 0x8000000uLL;
  if ((v1 & 0x100000000000) == 0)
  {
LABEL_17:
    if ((v1 & 0x400000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result |= 0x10000000uLL;
  if ((v1 & 0x400000000000) == 0)
  {
LABEL_18:
    if ((v1 & 0x1000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result |= 0x800uLL;
  if ((v1 & 0x1000000000000) == 0)
  {
LABEL_19:
    if ((v1 & 0x4000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result |= 0x20000000uLL;
  if ((v1 & 0x4000000) == 0)
  {
LABEL_20:
    if ((v1 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  result |= 0x100000000uLL;
  if ((v1 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v1 & 0x8000000) == 0)
    {
      return result;
    }

    return result | 0x80000000;
  }

LABEL_42:
  result |= 0x40000000uLL;
  if ((v1 & 0x8000000) != 0)
  {
    return result | 0x80000000;
  }

  return result;
}

uint64_t sub_1CF2ACFCC(uint64_t *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, __int128 *a8, uint64_t a9, char *a10)
{
  v135 = a3;
  v127 = a7;
  v130 = a4;
  v136 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v14 = v13 - 8;
  v124 = *(v13 - 8);
  v125 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v114 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v114 - v17;
  v19 = sub_1CF9E63D8();
  v137 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v119 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v114 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v114 - v24;
  v25 = sub_1CF9E6448();
  v132 = *(v25 - 8);
  v133 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v114 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v128 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v114 - v34;
  v121 = *a1;
  v120 = *(a1 + 8);
  v35 = *v135;
  v36 = a6[3];
  v147 = a6[2];
  v148 = v36;
  v37 = a6[5];
  v149 = a6[4];
  v150 = v37;
  v38 = a6[1];
  v145 = *a6;
  v146 = v38;
  v39 = *a8;
  v40 = a8[1];
  v41 = a8[3];
  v153 = a8[2];
  v154 = v41;
  v151 = v39;
  v152 = v40;
  v42 = a8[4];
  v43 = a8[5];
  v44 = a8[7];
  v157 = a8[6];
  v158 = v44;
  v155 = v42;
  v156 = v43;
  v45 = a8[8];
  v46 = a8[9];
  v47 = a8[11];
  v161 = a8[10];
  v162 = v47;
  v159 = v45;
  v160 = v46;
  v48 = a8[12];
  v49 = a8[13];
  v50 = a8[14];
  v166 = *(a8 + 30);
  v164 = v49;
  v165 = v50;
  v163 = v48;
  v135 = swift_allocObject();
  v135[2] = 0;
  v51 = *(v14 + 48);
  if ((v35 & 0x10) != 0)
  {
    v52 = v136 + v51;
    if ((*(v52 + *(type metadata accessor for ItemMetadata(0) + 80)) & 1) == 0)
    {
      v135[2] = 1;
    }
  }

  v53 = *(v134 + 216);
  v123 = *(v134 + 224);
  v54 = *(v136 + v51);
  v129 = v53;
  v122 = v35;
  if (v54 == 1 || (v35 & 0x18) == 0)
  {
    sub_1CF9E6408();
  }

  else
  {
    sub_1CF9E6418();
  }

  v55 = v137;
  v56 = v131;
  v57 = v118;
  v118 = a10;
  v117 = a9;
  qos_class_self();
  sub_1CF9E63B8();
  v58 = *(v55 + 48);
  if (v58(v18, 1, v19) == 1)
  {
    (*(v55 + 104))(v57, *MEMORY[0x1E69E7FA0], v19);
    if (v58(v18, 1, v19) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v55 + 32))(v57, v18, v19);
  }

  sub_1CF9E6428();
  sub_1CF9E6438();
  v59 = sub_1CF9E63C8();
  v60 = *(v55 + 8);
  v137 = v55 + 8;
  v60(v56, v19);
  v61 = v119;
  sub_1CF9E6438();
  v62 = sub_1CF9E63C8();
  v119 = v60;
  v60(v61, v19);
  v63 = v132;
  v64 = *(v132 + 8);
  if (v59 >= v62)
  {
    v65 = v27;
  }

  else
  {
    v65 = v30;
  }

  if (v59 >= v62)
  {
    v66 = v30;
  }

  else
  {
    v66 = v27;
  }

  v67 = v133;
  v115 = *(v132 + 8);
  v116 = v132 + 8;
  v64(v65, v133);
  v68 = v138;
  (*(v63 + 32))(v138, v66, v67);
  (*(v63 + 56))(v68, 0, 1, v67);
  v69 = v126;
  sub_1CEFCCBDC(v136, v126, &unk_1EC4BFD90, &unk_1CFA134F0);
  v70 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v71 = (v125 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
  v136 = (v74 + 103) & 0xFFFFFFFFFFFFFFF8;
  v125 = (v74 + 119) & 0xFFFFFFFFFFFFFFF8;
  v124 = (v125 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = v19;
  v75 = (v124 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  sub_1CEFE55D0(v69, v76 + v70, &unk_1EC4BFD90, &unk_1CFA134F0);
  *(v76 + v71) = v130;
  *(v76 + v72) = v134;
  v77 = (v76 + v73);
  v79 = v117;
  v78 = v118;
  *v77 = v117;
  v77[1] = v78;
  v80 = (v76 + v74);
  v81 = v146;
  *v80 = v145;
  v80[1] = v81;
  v82 = v150;
  v80[4] = v149;
  v80[5] = v82;
  v83 = v148;
  v80[2] = v147;
  v80[3] = v83;
  v84 = v135;
  v85 = v76 + v136;
  *v85 = v121;
  *(v85 + 8) = v120;
  *(v76 + v125) = v127;
  *(v76 + v124) = v84;
  *(v76 + v75) = v122;
  v86 = v76;
  v87 = v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8);
  v88 = v133;
  v89 = v164;
  *(v87 + 192) = v163;
  *(v87 + 208) = v89;
  *(v87 + 224) = v165;
  *(v87 + 240) = v166;
  v90 = v160;
  *(v87 + 128) = v159;
  *(v87 + 144) = v90;
  v91 = v162;
  *(v87 + 160) = v161;
  *(v87 + 176) = v91;
  v92 = v156;
  *(v87 + 64) = v155;
  *(v87 + 80) = v92;
  v93 = v158;
  *(v87 + 96) = v157;
  *(v87 + 112) = v93;
  v94 = v152;
  *v87 = v151;
  *(v87 + 16) = v94;
  v95 = v154;
  *(v87 + 32) = v153;
  *(v87 + 48) = v95;
  v96 = swift_allocObject();
  v96[2] = v79;
  v96[3] = v78;
  v97 = v123;
  v96[4] = v123;
  swift_retain_n();

  sub_1CEFCCBDC(&v145, &v139, &unk_1EC4BE330, &unk_1CF9FF010);

  sub_1CEFCCBDC(&v151, &v139, &qword_1EC4BECF0, &unk_1CF9FEEB0);

  v98 = fpfs_current_log();
  v99 = *(v97 + 16);
  v100 = *(v132 + 48);
  v101 = v138;
  v102 = v100(v138, 1, v88);
  v103 = v101;
  v104 = v128;
  sub_1CEFCCBDC(v103, v128, &unk_1EC4BE370, qword_1CFA01B30);
  if (v100(v104, 1, v88) == 1)
  {
    sub_1CEFCCC44(v104, &unk_1EC4BE370, qword_1CFA01B30);
    LODWORD(v136) = 0;
  }

  else
  {
    v105 = v131;
    sub_1CF9E6438();
    v115(v104, v88);
    LODWORD(v136) = sub_1CF9E63C8();
    (v119)(v105, v114);
  }

  if (v102 == 1)
  {
    v106 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
  }

  else
  {
    v106 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
  }

  v107 = swift_allocObject();
  v107[2] = v98;
  v107[3] = sub_1CF2B07CC;
  v107[4] = v86;
  v143 = sub_1CF2BA17C;
  v144 = v107;
  v139 = MEMORY[0x1E69E9820];
  v140 = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_550;
  v108 = _Block_copy(&v139);
  v109 = v98;

  v143 = sub_1CF2B08D4;
  v144 = v96;
  v139 = MEMORY[0x1E69E9820];
  v140 = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_553;
  v110 = _Block_copy(&v139);

  v111 = v99;
  v112 = v129;
  fp_task_tracker_async_and_qos(v111, v129, v106, v136, v108, v110);
  _Block_release(v110);
  _Block_release(v108);

  sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
}

uint64_t sub_1CF2ADA38(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 8) != 0)
  {
    v3 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40)) != 1;
  }

  else
  {
    if ((*a1 & 0x10) != 0)
    {
      v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) + 40));
      v7 = type metadata accessor for ItemMetadata(0);
      if (v6[*(v7 + 112)] != *(a3 + *(v7 + 112)))
      {
        v3 = 1;
        return v3 & 1;
      }

      if (*v6 != 1)
      {
        v3 = v6[*(v7 + 80)] ^ 1;
        return v3 & 1;
      }
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1CF2ADAF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a1, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BE310, qword_1CF9FCBE0);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1CFA00250;
    v11 = objc_opt_self();
    v12 = sub_1CF9E5928();
    v13 = [v11 writingIntentWithURL:v12 options:0x100000];

    *(v10 + 32) = v13;
    (*(v6 + 8))(v8, v5);
    return v10;
  }
}

uint64_t sub_1CF2ADD0C(uint64_t *a1, int a2, _OWORD *a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v63 = a5;
  v64 = a6;
  LODWORD(v75) = a2;
  v10 = sub_1CF9E6388();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v79 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v61 - v13;
  v14 = sub_1CF9E6498();
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v66 = &v61 - v17;
  v67 = sub_1CF9E63D8();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E6448();
  v72 = *(v19 - 8);
  v73 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v71 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E73D8();
  v62 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = a3[3];
  v90 = a3[2];
  v91 = v26;
  v27 = a3[5];
  v92 = a3[4];
  v93 = v27;
  v28 = a3[1];
  v89[0] = *a3;
  v89[1] = v28;
  v83 = v89[0];
  v84 = v28;
  v85 = v90;
  v86 = v26;
  v87 = v92;
  v88 = v27;
  v29 = a4[3];
  v94[2] = a4[2];
  v94[3] = v29;
  v30 = a4[1];
  v94[0] = *a4;
  v94[1] = v30;
  v31 = swift_allocObject();
  v70 = v24;
  *(v31 + 16) = v24;
  v69 = v25;
  *(v31 + 24) = v25;
  v32 = v63;
  v33 = v64;
  *(v31 + 32) = v6;
  *(v31 + 40) = v32;
  *(v31 + 48) = v33;
  v34 = a3[3];
  *(v31 + 88) = a3[2];
  *(v31 + 104) = v34;
  v35 = a3[5];
  *(v31 + 120) = a3[4];
  *(v31 + 136) = v35;
  v36 = a3[1];
  *(v31 + 56) = *a3;
  *(v31 + 72) = v36;
  *(v31 + 152) = v75;
  v37 = a4[3];
  *(v31 + 192) = a4[2];
  *(v31 + 208) = v37;
  v38 = a4[1];
  *(v31 + 160) = *a4;
  *(v31 + 176) = v38;
  v63 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v39 = *(v6 + 216);
  v82[12] = MEMORY[0x1E69E7CC0];
  sub_1CEFCCBDC(v89, v82, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CEFCCBDC(v89, v82, &unk_1EC4BE330, &unk_1CF9FF010);
  v75 = v6;

  sub_1CEFCCBDC(v94, v82, &unk_1EC4BF260, &unk_1CFA01B60);
  sub_1CF2A9448(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v40 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v41 = v66;
  sub_1CF9E77B8();
  v42 = v65;
  v43 = sub_1CF9E73E8();

  v44 = v21;
  v45 = v67;
  (*(v62 + 8))(v23, v44);
  qos_class_self();
  sub_1CF9E63B8();
  v46 = *(v42 + 48);
  if (v46(v41, 1, v45) == 1)
  {
    (*(v42 + 104))(v68, *MEMORY[0x1E69E7FA0], v45);
    if (v46(v41, 1, v45) != 1)
    {
      sub_1CEFCCC44(v41, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v42 + 32))(v68, v41, v45);
  }

  ObjectType = swift_getObjectType();
  v48 = v71;
  sub_1CF9E6428();
  v49 = swift_allocObject();
  v50 = v86;
  *(v49 + 72) = v85;
  *(v49 + 88) = v50;
  v51 = v88;
  *(v49 + 104) = v87;
  *(v49 + 120) = v51;
  v52 = v84;
  *(v49 + 40) = v83;
  v53 = v70;
  *(v49 + 16) = v75;
  *(v49 + 24) = v53;
  *(v49 + 32) = v69;
  *(v49 + 56) = v52;
  *(v49 + 136) = 0;
  *(v49 + 144) = 0;
  *(v49 + 152) = v43;
  *(v49 + 160) = sub_1CF2B064C;
  *(v49 + 168) = v31;
  sub_1CEFCCBDC(v89, v82, &unk_1EC4BE330, &unk_1CF9FF010);

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v48, sub_1CF2B9F4C, v49, ObjectType);

  (*(v72 + 8))(v48, v73);
  v54 = v74;
  sub_1CF9E6478();
  v55 = v78;
  sub_1CEFD5B64(v78);
  v56 = v79;
  sub_1CEFD5BD8(v79);
  MEMORY[0x1D3869770](v54, v55, v56, ObjectType);
  v57 = *(v80 + 8);
  v58 = v56;
  v59 = v81;
  v57(v58, v81);
  v57(v55, v59);
  (*(v76 + 8))(v54, v77);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  return sub_1CEFCCC44(v89, &unk_1EC4BE330, &unk_1CF9FF010);
}

void sub_1CF2AE4E8(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(id), uint64_t a8)
{
  v190 = a8;
  v191 = a7;
  v187 = a6;
  v205 = a5;
  v206 = a4;
  v208 = a3;
  v188 = a2;
  v224 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v186 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v185 = &v180 - v12;
  v200 = sub_1CF9E6118();
  v184 = *(v200 - 1);
  MEMORY[0x1EEE9AC00](v200);
  v14 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E5D98();
  v189 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E5CF8();
  v195 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5828();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v180 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v180 - v28;
  MEMORY[0x1EEE9AC00](v30);
  if (!a1)
  {
    v196 = v35;
    v201 = v24;
    v197 = v20;
    v183 = v22;
    v199 = v21;
    v198 = v18;
    v192 = v17;
    v193 = v15;
    v182 = v34;
    v40 = &v180 - v32;
    v41 = v31;
    v42 = v33;
    v43 = [objc_opt_self() defaultManager];
    v44 = v188;
    v45 = [v188 URL];
    sub_1CF9E59D8();

    v207 = v43;
    v46 = sub_1CF9E7268();
    v47 = *(v42 + 8);
    v204 = v41;
    v203 = v42 + 8;
    v202 = v47;
    v47(v40, v41);
    v181 = v46;
    if (v46)
    {
      v48 = v46;
      v49 = v201;
      v184 = v48;
      sub_1CF9E7238();
      sub_1CF9E5818();
      if (*(&v219 + 1))
      {
        v200 = 0;
        ++v195;
        ++v189;
        v194 = v29;
        do
        {
          sub_1CEFE9EB8(&v218, &v213);
          sub_1CEFD57E0(0, &unk_1EC4BECE0, 0x1E695DFF8);
          swift_dynamicCast();
          v53 = v211;
          sub_1CF9E59D8();

          v54 = sub_1CF9E58E8();
          v56 = v55;
          *&v213 = v54;
          *(&v213 + 1) = v55;
          v211 = 58;
          v212 = 0xE100000000000000;
          v209 = 47;
          v210 = 0xE100000000000000;
          v57 = sub_1CEFE4E68();
          v178 = v57;
          v179 = v57;
          v177 = v57;
          v58 = MEMORY[0x1E69E6158];
          v176 = MEMORY[0x1E69E6158];
          v59 = sub_1CF9E7668();
          v61 = v60;
          *&v213 = v59;
          *(&v213 + 1) = v60;
          v211 = 47;
          v212 = 0xE100000000000000;
          v209 = 58;
          v210 = 0xE100000000000000;
          v178 = v57;
          v179 = v57;
          v176 = v58;
          v177 = v57;
          v62 = sub_1CF9E7668();
          v64 = v63;
          v61, v63, v65, v66, v67, v68, v69, v70;
          MEMORY[0x1EEE9AC00](v71);
          v178 = v207;
          v179 = v208;
          v72 = v197;
          sub_1CF9E5CE8();
          sub_1CF51B6BC(v72, sub_1CF2B062C, &v176, v62);
          v74 = v73;
          v76 = v75;
          v64, v75, v77, v78, v79, v80, v81, v82;
          (*v195)(v72, v198);
          if (!v76)
          {
            *&v213 = v54;
            *(&v213 + 1) = v56;

            MEMORY[0x1D3868CC0](32, 0xE100000000000000);
            v83 = v192;
            sub_1CF9E5D88();
            v84 = sub_1CF9E5D18();
            v86 = v85;
            (*v189)(v83, v193);
            MEMORY[0x1D3868CC0](v84, v86);
            v86, v87, v88, v89, v90, v91, v92, v93;
            v76 = *(&v213 + 1);
            v74 = v213;
          }

          v94 = v196;
          sub_1CF9E5968();
          v102 = v194;
          if (v74 == v54 && v76 == v56)
          {
            v56, v95, v96, v97, v98, v99, v100, v101;
            v76, v103, v104, v105, v106, v107, v108, v109;
          }

          else
          {
            v110 = sub_1CF9E8048();
            v76, v111, v112, v113, v114, v115, v116, v117;
            if (v110)
            {
              v56, v118, v119, v120, v121, v122, v123, v124;
            }

            else
            {
              v125 = sub_1CF9E5928();
              v126 = [v125 fileSystemRepresentation];
              v127 = v125;
              v128 = sub_1CF9E6978();
              v129 = strlen((v128 + 32));

              v130 = v129 + 1;
              if (__OFADD__(v129, 1))
              {
                __break(1u);
              }

              v131 = sub_1CF9E6978();
              v56, v132, v133, v134, v135, v136, v137, v138;
              setxattr(v126, "com.apple.fileprovider.before-bounce#PX", (v131 + 32), v130, 0, 3);
            }
          }

          v139 = sub_1CF9E5928();
          v140 = sub_1CF9E5928();
          *&v213 = 0;
          v141 = [v207 moveItemAtURL:v139 toURL:v140 error:&v213];

          v142 = v205;
          v143 = v199;
          if (v141)
          {
            v50 = v213;
          }

          else
          {
            v144 = v213;
            v145 = sub_1CF9E57F8();

            swift_willThrow();
            v200 = v145;
          }

          v51 = v204;
          v52 = v202;
          v202(v94, v204);
          v52(v102, v51);
          v49 = v201;
          sub_1CF9E5818();
        }

        while (*(&v219 + 1));
      }

      else
      {
        v200 = 0;
        v142 = v205;
        v143 = v199;
      }

      (*(v183 + 8))(v49, v143);
      v170 = v184;

      v152 = v187;
      v44 = v188;
      v37 = v200;
      if (v200)
      {
        swift_willThrow();

        goto LABEL_3;
      }
    }

    else
    {
      v208 = v40;
      v146 = fpfs_current_or_default_log();
      v147 = v14;
      sub_1CF9E6128();
      v148 = v44;
      v149 = sub_1CF9E6108();
      v150 = sub_1CF9E72A8();

      v151 = os_log_type_enabled(v149, v150);
      v152 = v187;
      if (v151)
      {
        v153 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *&v218 = v201;
        *v153 = 136315138;
        v154 = [v148 URL];
        v155 = v208;
        sub_1CF9E59D8();

        v156 = sub_1CF9E5928();
        v157 = [v156 fp_shortDescription];

        v158 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v160 = v159;

        v202(v155, v204);
        v161 = sub_1CEFD0DF0(v158, v160, &v218);
        v160, v162, v163, v164, v165, v166, v167, v168;
        *(v153 + 4) = v161;
        _os_log_impl(&dword_1CEFC7000, v149, v150, "can't create enumerator at %s", v153, 0xCu);
        v169 = v201;
        __swift_destroy_boxed_opaque_existential_1(v201);
        MEMORY[0x1D386CDC0](v169, -1, -1);
        MEMORY[0x1D386CDC0](v153, -1, -1);
      }

      (*(v184 + 1))(v147, v200);
      v142 = v205;
    }

    v171 = [v44 URL];
    v172 = v182;
    sub_1CF9E59D8();

    v211 = v142;
    LOBYTE(v212) = v152;
    v173 = type metadata accessor for VFSItem(0);
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0u;
    v174 = v186;
    (*(*(v173 - 8) + 56))(v186, 1, 1, v173);
    v213 = 0uLL;
    v214 = 0;
    v215 = 0xB000000000000000;
    v216 = 0u;
    v217 = 0u;
    v175 = v185;
    sub_1CF28CB50(v172, &v211, &v218, v174, 0, &v213, v185);
    sub_1CEFCCC44(v174, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v202(v172, v204);
    sub_1CEFCCC44(v175, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v191(0);

    return;
  }

  swift_willThrow();
  v36 = a1;
  v37 = a1;
LABEL_3:
  v38 = v191;
  v39 = v37;
  v38(v37);
}

uint64_t sub_1CF2AF3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CF9E53C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6118();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6938();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6918();
  v14 = sub_1CF9E68C8();
  v16 = v15;
  v17 = (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    LODWORD(v38[0]) = 22;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v5 + 8))(v7, v4);
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v31 - 8) = a1;
    *(&v31 - 3) = 0xD000000000000021;
    *(&v31 - 2) = v19;
    *(&v31 - 2) = 0;
    v20 = v35;
    sub_1CF712090(sub_1CF2AF884, (&v31 - 6), v14, v16);
    if (v20 || (MEMORY[0x1D3868410](a1, 64, 3) & 0x80000000) == 0)
    {
      return sub_1CEFE48D8(v14, v16);
    }

    else
    {
      v21 = MEMORY[0x1D38683F0]();
      LODWORD(v38[0]) = 3;
      v39 = 9;
      v22 = sub_1CF19BBE4(v21, v38);
      sub_1CF1969CC(v38);
      swift_willThrow();
      v23 = fpfs_current_or_default_log();
      v24 = v32;
      sub_1CF9E6128();
      v25 = v22;
      v26 = sub_1CF9E6108();
      v27 = sub_1CF9E72A8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        swift_getErrorValue();
        v30 = Error.prettyDescription.getter(v36, v37);
        *(v28 + 4) = v30;
        *v29 = v30;
        _os_log_impl(&dword_1CEFC7000, v26, v27, "Could not set protection class: %@", v28, 0xCu);
        sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v29, -1, -1);
        MEMORY[0x1D386CDC0](v28, -1, -1);

        sub_1CEFE48D8(v14, v16);
      }

      else
      {
        sub_1CEFE48D8(v14, v16);
      }

      return (*(v33 + 8))(v24, v34);
    }
  }
}

uint64_t sub_1CF2AF8A8(uint64_t result, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3, _TtC18FileProviderDaemon8FSTester *a4, _TtC18FileProviderDaemon8FSTester *a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, void *a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a3, v12, v13, v14, v15, v16, v17, v18;
    a4, v19, v20, v21, v22, v23, v24, v25;
    a5, v26, v27, v28, v29, v30, v31, v32;
    a6, v33, v34, v35, v36, v37, v38, v39;
  }

  return v40;
}

uint64_t sub_1CF2AF970()
{
  v1 = *(v0 + 32);
  v2 = sub_1CF9C6A64(*(v0 + 24));
  if (v4)
  {
    v2 = 0;
    v3 = 0;
  }

  return v1(v2, v3);
}

uint64_t objectdestroy_203Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF2AFAD4(unsigned int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v72 = a6;
  v76 = a2;
  v77 = a4;
  v73 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v70 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VFSDetachedRootBookmark(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v75 = &v70 - v19;
  v20 = *a3;
  v21 = a3[1];
  v74 = v20;
  v22 = *(v11 + 16);
  v22(v13, v76, v10, v18);
  (v22)(v9, v77, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  (v22)(v16, v13, v10);

  v23 = v82;
  v24 = sub_1CF9E5858();
  v32 = (v11 + 8);
  v82 = v23;
  if (v23)
  {
    v21, v25, v26, v27, v28, v29, v30, v31;
    sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
    v33 = *v32;
    (*v32)(v13, v10);
    return (v33)(v16, v10);
  }

  v35 = v25;
  v36 = v24;
  sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  (*v32)(v13, v10);
  v37 = &v16[v14[6]];
  *v37 = v36;
  *(v37 + 1) = v35;
  v38 = &v16[v14[5]];
  v39 = v75;
  *v38 = v74;
  *(v38 + 1) = v21;
  v16[v14[7]] = 1;
  sub_1CEFE4C60(v16, v39, type metadata accessor for VFSDetachedRootBookmark);
  v40 = v14[6];
  v41 = (v39 + v14[5]);
  v42 = *v41;
  v43 = v41[1];
  v44 = *(v39 + v40);
  v45 = *(v39 + v40 + 8);
  sub_1CF9E56C8();
  swift_allocObject();

  sub_1CEFE42D4(v44, v45);
  sub_1CF9E56B8();
  sub_1CF9E5698();
  v78 = v42;
  *&v79 = v43;
  *(&v79 + 1) = v44;
  *&v80 = v45;
  sub_1CF2B00B0();
  v46 = v82;
  v47 = sub_1CF9E56A8();
  if (v46)
  {
    sub_1CEFE5888(v39, type metadata accessor for VFSDetachedRootBookmark);
    v43, v55, v56, v57, v58, v59, v60, v61;

    return sub_1CEFE4714(v44, v45);
  }

  v62 = v47;
  v63 = v48;
  v43, v48, v49, v50, v51, v52, v53, v54;

  sub_1CEFE4714(v44, v45);
  v64 = v73;
  if ((fpfs_clear_acl() & 0x80000000) != 0)
  {
    v67 = MEMORY[0x1D38683F0]();
    v78 = 8;
    v79 = 0u;
    v80 = 0u;
    v68 = 19;
  }

  else
  {
    v65 = 16;
    if ((fpfs_fset_acl() & 0x80000000) != 0)
    {
LABEL_13:
      v67 = MEMORY[0x1D38683F0]();
      LODWORD(v78) = v65;
      v68 = 4;
      goto LABEL_14;
    }

    if ((fpfs_fset_syncroot() & 0x80000000) == 0)
    {
      v66 = sub_1CF2AF3BC(v64, v71, v72);
      MEMORY[0x1EEE9AC00](v66);
      *(&v70 - 8) = v64;
      *(&v70 - 3) = 0xD000000000000021;
      *(&v70 - 2) = v69;
      *(&v70 - 2) = 0;
      sub_1CF712090(sub_1CF2BA158, (&v70 - 6), v62, v63);
      v65 = 1024;
      if ((fpfs_fset_acl() & 0x80000000) == 0)
      {
        sub_1CEFE5888(v39, type metadata accessor for VFSDetachedRootBookmark);
        return sub_1CEFE4714(v62, v63);
      }

      goto LABEL_13;
    }

    v67 = MEMORY[0x1D38683F0]();
    LODWORD(v78) = 2;
    v68 = 6;
  }

LABEL_14:
  v81 = v68;
  sub_1CF19BBE4(v67, &v78);
  sub_1CF1969CC(&v78);
  swift_willThrow();
  sub_1CEFE4714(v62, v63);
  return sub_1CEFE5888(v39, type metadata accessor for VFSDetachedRootBookmark);
}

unint64_t sub_1CF2B00B0()
{
  result = qword_1EC4BEC60;
  if (!qword_1EC4BEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BEC60);
  }

  return result;
}

double sub_1CF2B0124(uint64_t a1)
{
  *a1 = 13;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

uint64_t sub_1CF2B017C()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v0 + v3);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_1CF29B8A8(v4, v0 + v2, v6, v7, v8);
}

uint64_t sub_1CF2B0210(void *a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1CF29BA18(a1, v1 + v4, v6, v7);
}

unint64_t sub_1CF2B0310(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 > 1)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3 || v1 == 4)
    {
    }
  }

  else
  {
    if (v1 <= 7)
    {
      if (v1 != 5 && v1 != 6 && v1 != 7)
      {
        return result;
      }
    }

    if (v1 == 8 || v1 == 9 || v1 == 10)
    {
    }
  }

  return result;
}

uint64_t objectdestroy_326Tm()
{

  return swift_deallocObject();
}

uint64_t fpfs_openflags(unsigned int a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0x8000;
  }

  return v1 | ~(v1 >> 13) & 0x100 | 4;
}

uint64_t objectdestroy_148Tm(uint64_t a1)
{

  return swift_deallocObject();
}

void sub_1CF2B0568(uint64_t a1, void *a2)
{
  v4 = *(sub_1CF9E5A58() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v6);
  v10 = v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v2 + v7);
  v13 = *(v2 + v7 + 8);
  v14 = *(v10 + 8);

  sub_1CF2AE4E8(a2, v8, (v2 + v5), v9, v11, v14, v12, v13);
}

uint64_t sub_1CF2B0698()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF2873A4(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), (v0 + v5), *(v0 + ((v5 + 103) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((((((v5 + 103) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8));
}

double sub_1CF2B0794(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

uint64_t sub_1CF2B07CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 119) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF27B458((v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), (v0 + v6), *(v0 + ((v6 + 103) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 103) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_200Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1CF2B093C(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  return sub_1CF27FAA0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CF2B0A04(_OWORD *a1, void *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60) - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  v8 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(type metadata accessor for VFSItem(0) - 8);
  return sub_1CF280274(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), v2 + v5, *(v2 + v6), *(v2 + v7 + 8), *(v2 + v7 + 16), *(v2 + v7 + 24), *(v2 + v8), (v2 + v10), *(v2 + v11), *(v2 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), (v2 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((*(v12 + 80) + (((v11 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 248) & ~*(v12 + 80))));
}

double sub_1CF2B0C28(uint64_t a1)
{
  *a1 = 6;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

double sub_1CF2B0C60(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

uint64_t sub_1CF2B0F0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 71) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = v0 + ((v5 + 255) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1CF278154(v0 + v2, v6, (v0 + v4), v0 + v5, v8, v9);
}

uint64_t sub_1CF2B0FCC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = *(v0 + ((v3 + 255) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF2723A8(v4, v5, v6, v7, v0 + v2, v0 + v3, v8);
}

uint64_t sub_1CF2B1088@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF2661C0(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF2B10BC(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for Signpost(0) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF274434(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v7), (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 255) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_294Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));
  a1(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t sub_1CF2B1220()
{
  v1 = *(type metadata accessor for VFSItem(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v4 + 8);

  return sub_1CF272030(v0 + v2, v5, v9, v7, v8);
}

uint64_t objectdestroy_163Tm()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_1CEFE4714(*(v0 + 40), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1CF2B138C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1CF2B144C(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF26D3D4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF2B1510(uint64_t a1)
{
  *a1 = 12;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

double sub_1CF2B15E0(uint64_t a1)
{
  *a1 = 3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

uint64_t sub_1CF2B1654(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CEFD57E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_1103Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_923Tm()
{

  return swift_deallocObject();
}

id sub_1CF2B1868(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1CF2B187C(uint64_t a1)
{
  v3 = *(type metadata accessor for VFSItem(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v5 + 8);
  v11 = v1 + ((v5 + *(v6 + 80) + 9) & ~*(v6 + 80));

  return sub_1CF29A378(a1, v7, v8, v1 + v4, v9, v10, v11);
}

uint64_t sub_1CF2B1A08()
{
  v1 = *(sub_1CF9E5A58() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1CF28A4A8(v2, v3, v6, v4, v5, v7);
}

void sub_1CF2B1A8C(uint64_t a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for VFSItem(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_1CF28B4EC(a1, v7, v8, v1 + v4, v9, v10);
}

uint64_t objectdestroy_151Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1CF2B1C28(void *a1, char a2)
{
  v5 = *(sub_1CF9E5A58() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1CF269E34(a1, a2 & 1, v6, v7, v8);
}

uint64_t objectdestroy_1261Tm()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1CF2B1DA0(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1CF9E5A58() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t objectdestroy_446Tm()
{

  return swift_deallocObject();
}

double sub_1CF2B1EB8(uint64_t a1)
{
  *a1 = 5;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 11;
  return result;
}

uint64_t objectdestroy_154Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_1100Tm(uint64_t a1)
{

  return swift_deallocObject();
}

id sub_1CF2B1FC4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1CF2B1FD4()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 40);

    v5 = v2(v4);
    sub_1CEFF7124(v2, v3);
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v20) = 1;
  *&v10 = v5;
  *(&v10 + 1) = MEMORY[0x1E69E7CC0];
  *&v11 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
  *(&v11 + 1) = *(&v10 + 1);
  *v12 = MEMORY[0x1E69E7CD0];
  *&v12[8] = MEMORY[0x1E69E7CD0];
  *&v12[16] = 0;
  v12[24] = 1;
  v13 = __PAIR128__(*(&v10 + 1), v5);
  v14 = v11;
  v15 = *(&v10 + 1);
  v16 = MEMORY[0x1E69E7CD0];
  v17 = MEMORY[0x1E69E7CD0];
  v18 = 0;
  v19 = 1;
  sub_1CF2B97CC(&v10, v23);
  sub_1CF2B9804(&v13);
  v20 = v10;
  v21 = v11;
  v22[0] = *v12;
  *(v22 + 9) = *&v12[9];
  v6 = (v1 + qword_1EDEAFB30);
  swift_beginAccess();
  v7 = v6[1];
  v23[0] = *v6;
  v23[1] = v7;
  v24[0] = v6[2];
  *(v24 + 9) = *(v6 + 41);
  v8 = v21;
  *v6 = v20;
  v6[1] = v8;
  v6[2] = v22[0];
  *(v6 + 41) = *(v22 + 9);
  return sub_1CEFCCC44(v23, &unk_1EC4BEDF0, &qword_1CFA00818);
}

void (*sub_1CF2B2124())(__int128 *, void)
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v40 - v3;
  v5 = (v0 + qword_1EDEAFB30);
  swift_beginAccess();
  v6 = v5[1];
  v58[0] = *v5;
  v58[1] = v6;
  v59[0] = v5[2];
  *(v59 + 9) = *(v5 + 41);
  if (*(&v58[0] + 1))
  {
    v7 = v5[1];
    v55 = *v5;
    v56 = v7;
    *v57 = v5[2];
    v8 = *(v5 + 41);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1CF03AD00(MEMORY[0x1E69E7CC0]);
    v48 = 1;
    *&v49 = 0;
    *(&v49 + 1) = v9;
    *&v50 = v10;
    *(&v50 + 1) = v9;
    *&v51[0] = MEMORY[0x1E69E7CD0];
    *(&v51[0] + 1) = MEMORY[0x1E69E7CD0];
    *&v51[1] = 0;
    BYTE8(v51[1]) = 1;
    *&v52 = 0;
    *(&v52 + 1) = v9;
    *&v53 = v10;
    *(&v53 + 1) = v9;
    *&v54[0] = MEMORY[0x1E69E7CD0];
    *(&v54[0] + 1) = MEMORY[0x1E69E7CD0];
    *&v54[1] = 0;
    BYTE8(v54[1]) = 1;
    sub_1CF2B97CC(&v49, &v55);
    sub_1CF2B9804(&v52);
    v55 = v49;
    v56 = v50;
    *v57 = v51[0];
    v8 = *(v51 + 9);
  }

  *&v57[9] = v8;
  v11 = v1[29];
  sub_1CEFCCBDC(v58, &v52, &unk_1EC4BEDF0, &qword_1CFA00818);
  if (([v11 hasBufferedEvents] & 1) == 0)
  {
    v12 = v1 + qword_1EDEAFB38;
    v13 = *(v1 + qword_1EDEAFB38);
    v14 = *(v1 + qword_1EDEAFB38 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if ((v14 & 1) == 0 && v13 == v52)
    {
      swift_storeEnumTagMultiPayload();
      sub_1CF25C780(v4, 0, 0);
      sub_1CEFCCC44(v4, &unk_1EC4BED40, &unk_1CFA00720);
    }

    v15 = v1 + qword_1EDEAFAF0;
    if ((*(v1 + qword_1EDEAFAF0 + 16) & 1) == 0)
    {
      v16 = *v15;
      v46 = *(v15 + 1);
      v47 = v16;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CF9E6298();

      v17 = v52;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1CF9E6298();

      if (v47 == v17 && v46 == v52)
      {
        swift_storeEnumTagMultiPayload();
        sub_1CF25C780(v4, 0, 0);
        sub_1CEFCCC44(v4, &unk_1EC4BED40, &unk_1CFA00720);
      }
    }

    *v12 = 0;
    v12[8] = 1;
    *v15 = 0;
    *(v15 + 1) = 0;
    v15[16] = 1;
  }

  v18 = *(&v56 + 1);
  v19 = v56;
  v45 = *&v57[16];
  v46 = *(&v55 + 1);
  v20 = v57[24];
  if (*(*(&v55 + 1) + 16))
  {
LABEL_20:
    v28 = v1[2];
    if (v28)
    {
      v47 = v1;
      v29 = v1[3];
      v30 = *(v19 + 16);
      if (v30)
      {
        v43 = v18;
        v44 = v20;
        v31 = sub_1CF1F8A84(v30, 0);
        v32 = *(type metadata accessor for SyncState(0) - 8);
        v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v42 = v31;
        sub_1CF1F977C(&v52, v31 + v33, v30, v19);
        v34 = v52;
        v40[1] = *&v54[0];
        v41 = v35;

        sub_1CF03C63C(v28, v29);
        result = sub_1CEFCB59C(v34);
        if (v41 != v30)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        LOBYTE(v20) = v44;
        v18 = v43;
      }

      else
      {

        v42 = MEMORY[0x1E69E7CC0];
      }

      if (*(v18 + 16))
      {
        v36 = swift_allocObject();
        *(v36 + 16) = v18;

        v37 = sub_1CF2B9834;
      }

      else
      {
        v37 = 0;
        v36 = 0;
      }

      v28(v46, v42, v37, v36);
      sub_1CEFF7124(v28, v29);
      sub_1CEFF7124(v37, v36);
    }

    if ((v20 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *&v52 = v45;

      sub_1CF9E62A8();
    }

LABEL_31:
    v38 = v5[1];
    v49 = *v5;
    v50 = v38;
    v51[0] = v5[2];
    *(v51 + 9) = *(v5 + 41);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 41) = 0u;
    sub_1CEFCCC44(&v49, &unk_1EC4BEDF0, &qword_1CFA00818);
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_1CF9E6288();
    if (!__OFADD__(*v39, 1))
    {
      ++*v39;
      result(&v52, 0);

      v52 = v55;
      v53 = v56;
      v54[0] = *v57;
      *(v54 + 9) = *&v57[9];
      return sub_1CF2B9804(&v52);
    }

    __break(1u);
    goto LABEL_34;
  }

  v21 = *(v56 + 16);
  if (!v21)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v43 = *(&v56 + 1);
  v44 = v57[24];
  v47 = v1;
  v22 = sub_1CF1F8A84(v21, 0);
  v23 = *(type metadata accessor for SyncState(0) - 8);
  sub_1CF1F977C(&v52, v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v21, v19);
  v42 = v24;
  v25 = v52;

  result = sub_1CEFCB59C(v25);
  if (v42 == v21)
  {
    v1 = v47;
    v20 = v44;
    v18 = v43;
LABEL_18:
    v27 = v22[2];

    if (!v27 && !*(v18 + 16))
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1CF2B2820(NSObject *a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  LODWORD(v700) = a8;
  v689 = a7;
  v652 = a6;
  v648 = a5;
  v650 = a4;
  v693 = a3;
  v695 = a2;
  v696 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v665 = &v640 - v11;
  v678 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v672 = *(v678 - 8);
  MEMORY[0x1EEE9AC00](v678);
  v677 = (&v640 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  *&v676 = &v640 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v654 = &v640 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v653 = (&v640 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v647 = (&v640 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v655 = (&v640 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v658 = &v640 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v657 = (&v640 - v26);
  v694 = sub_1CF9E6118();
  v699 = *(v694 - 8);
  MEMORY[0x1EEE9AC00](v694);
  v673 = &v640 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v656 = &v640 - v29;
  MEMORY[0x1EEE9AC00](v30);
  *&v666 = &v640 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v649 = &v640 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v674 = (&v640 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v659 = &v640 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v643 = &v640 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v646 = &v640 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v663 = (&v640 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v662 = &v640 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v661 = &v640 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v670 = &v640 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v675 = &v640 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v664 = &v640 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v685 = &v640 - v55;
  v684 = sub_1CF9E6068();
  *&v683 = *(v684 - 1);
  MEMORY[0x1EEE9AC00](v684);
  v681 = &v640 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v679 = &v640 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v687 = (&v640 - v60);
  v680 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v680);
  v686 = &v640 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v644 = &v640 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v640 - v65;
  v698 = type metadata accessor for VFSItem(0);
  v690 = *(v698 - 8);
  MEMORY[0x1EEE9AC00](v698);
  v641 = &v640 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v642 = &v640 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v667 = (&v640 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v660 = &v640 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v671 = &v640 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v669 = &v640 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v682 = (&v640 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v697 = (&v640 - v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E8, &unk_1CF9FCBD0);
  MEMORY[0x1EEE9AC00](v82 - 8);
  v84 = &v640 - v83;
  v692 = sub_1CF9E5A58();
  v85 = *(v692 - 8);
  MEMORY[0x1EEE9AC00](v692);
  v668 = &v640 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v651 = &v640 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v645 = &v640 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v640 - v92;
  v94 = sub_1CF9E64A8();
  v95 = *(v94 - 8);
  *&v96 = MEMORY[0x1EEE9AC00](v94).n128_u64[0];
  v98 = &v640 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v701 = v9;
  *v98 = [*(v9 + 232) delegationQueue];
  (*(v95 + 104))(v98, *MEMORY[0x1E69E8020], v94);
  v99 = sub_1CF9E64D8();
  (*(v95 + 8))(v98, v94);
  if ((v99 & 1) == 0)
  {
    __break(1u);
    goto LABEL_247;
  }

  v691 = v85;
  v688 = v93;
  v100 = v695;
  sub_1CF9E58B8();
  v101 = v689;
  v102 = v100;
  if (v689)
  {
    v104 = sub_1CF25D188(v711);
    if (*(v103 + 8))
    {
      v105 = v103;
      *v84 = v101;
      v84[8] = 0;
      v106 = type metadata accessor for SyncState(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v106 - 8) + 56))(v84, 0, 1, v106);
      sub_1CF1C8B4C(v84, 3);
      *(v105 + 48) = v101;
      *(v105 + 56) = 0;
    }

    (v104)(v711, 0);
  }

  sub_1CEFCCBDC(a9, v66, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v108 = v690 + 48;
  v107 = *(v690 + 6);
  if (v107(v66, 1, v698) != 1)
  {
    v674 = v107;
    sub_1CEFE4C60(v66, v697, type metadata accessor for VFSItem);
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v143 = qword_1EDEBBE40;
    v144 = v683;
    v145 = v687;
    v146 = v684;
    (*(v683 + 56))(v687, 1, 1, v684);
    *&v711[0] = 0;
    *(&v711[0] + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v711[0] + 1), v147, v148, v149, v150, v151, v152, v153;
    strcpy(v711, "resolved item ");
    HIBYTE(v711[0]) = -18;
    v154 = sub_1CF255338();
    v156 = v155;
    MEMORY[0x1D3868CC0](v154);
    v156, v157, v158, v159, v160, v161, v162, v163;
    v164 = v711[0];
    v165 = v145;
    v166 = v679;
    sub_1CEFCCBDC(v165, v679, &unk_1EC4BED20, &unk_1CFA00700);
    v167 = *(v144 + 48);
    v168 = v167(v166, 1, v146);
    v640 = v108;
    *&v676 = *(&v164 + 1);
    v677 = v164;
    if (v168 == 1)
    {
      v169 = v143;
      v170 = v681;
      sub_1CF9E6048();
      v171 = v167(v166, 1, v146);
      v172 = v144;
      v173 = v680;
      if (v171 != 1)
      {
        sub_1CEFCCC44(v166, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v170 = v681;
      (*(v144 + 32))(v681, v166, v146);
      v172 = v144;
      v173 = v680;
    }

    v174 = v686;
    (*(v172 + 16))(v686, v170, v146);
    *(v174 + *(v173 + 20)) = v143;
    v175 = v174 + *(v173 + 24);
    *v175 = "FS: handle event";
    *(v175 + 8) = 16;
    *(v175 + 16) = 2;
    v176 = v143;
    v177 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v178 = swift_allocObject();
    *(v178 + 16) = xmmword_1CF9FA450;
    *(v178 + 56) = MEMORY[0x1E69E6158];
    *(v178 + 64) = sub_1CEFD51C4();
    v179 = v676;
    *(v178 + 32) = v677;
    *(v178 + 40) = v179;
    v639 = v178;
    LOBYTE(v638) = 2;
    *&v683 = v176;
    sub_1CF9E6028(v177, &dword_1CEFC7000, v176, "FS: handle event", 16, 2, v174, "%s", 2);
    v178, v180, v181, v182, v183, v184, v185, v186;
    (*(v172 + 8))(v170, v146);
    sub_1CEFCCC44(v687, &unk_1EC4BED20, &unk_1CFA00700);
    v187 = [objc_allocWithZone(FPLoggerScope) init];
    v188 = fpfs_current_or_default_log();
    v189 = v685;
    sub_1CF9E6128();
    v98 = v697;
    v190 = v682;
    sub_1CEFD90AC(v697, v682, type metadata accessor for VFSItem);
    v191 = v187;
    v192 = sub_1CF9E6108();
    v193 = sub_1CF9E7298();

    v194 = os_log_type_enabled(v192, v193);
    v684 = v191;
    if (v194)
    {
      v195 = v190;
      v196 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      *&v711[0] = v198;
      *v196 = 138412546;
      v199 = [v191 enter];
      *(v196 + 4) = v199;
      *v197 = v199;
      *(v196 + 12) = 2082;
      v200 = sub_1CF255338();
      v202 = v201;
      sub_1CEFE5888(v195, type metadata accessor for VFSItem);
      v203 = sub_1CEFD0DF0(v200, v202, v711);
      v204 = v202;
      v98 = v697;
      v204, v205, v206, v207, v208, v209, v210, v211;
      *(v196 + 14) = v203;
      _os_log_impl(&dword_1CEFC7000, v192, v193, "%@ Handling FSEvent for %{public}s", v196, 0x16u);
      sub_1CEFCCC44(v197, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v197, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v198);
      MEMORY[0x1D386CDC0](v198, -1, -1);
      MEMORY[0x1D386CDC0](v196, -1, -1);

      v212 = *(v699 + 8);
      v213 = v685;
    }

    else
    {

      sub_1CEFE5888(v190, type metadata accessor for VFSItem);
      v212 = *(v699 + 8);
      v213 = v189;
    }

    v214 = v694;
    v687 = v212;
    (v212)(v213, v694);
    v215 = v701;
    v216 = v698;
    v217 = v98 + *(v698 + 28);
    v218 = type metadata accessor for ItemMetadata(0);
    if (*(v217 + *(v218 + 28)) != 1 || *(v98 + *(v216 + 36)) == v693)
    {
      v219 = 0;
      v220 = 0;
      goto LABEL_110;
    }

    v685 = v217;
    v682 = v218;
    v230 = v215;
    v192 = 0;
    v231 = sub_1CF2A655C(v693);
    v679 = 0;
    v94 = v231 + 56;
    v285 = 1 << *(v231 + 32);
    v286 = -1;
    if (v285 < 64)
    {
      v286 = ~(-1 << v285);
    }

    v98 = v286 & *(v231 + 56);
    v287 = (v285 + 63) >> 6;
    v677 = (v699 + 8);
    *&v676 = v690 + 56;
    *&v232 = 136446466;
    v666 = v232;
    v288 = v664;
    v289 = v669;
    v680 = v231;
LABEL_55:
    if (v98)
    {
      goto LABEL_61;
    }

    v215 = v701;
    while (1)
    {
      v290 = v192 + 1;
      if (__OFADD__(v192, 1))
      {
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

      if (v290 >= v287)
      {
        break;
      }

      v98 = *(v94 + 8 * v290);
      ++v192;
      if (v98)
      {
        v192 = v290;
LABEL_61:
        v291 = __clz(__rbit64(v98));
        v98 &= v98 - 1;
        v292 = *(v231 + 48) + ((v192 << 10) | (16 * v291));
        v293 = *v292;
        v294 = *(v292 + 8);
        v295 = *v697;
        v296 = *(v697 + 8);
        if (!v294)
        {
          if (!*(v697 + 8) && v293 == v295)
          {
            goto LABEL_55;
          }

LABEL_75:
          v681 = v293;
          v297 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          sub_1CEFD90AC(v697, v289, type metadata accessor for VFSItem);
          v298 = sub_1CF9E6108();
          v299 = sub_1CF9E7288();
          if (os_log_type_enabled(v298, v299))
          {
            v300 = swift_slowAlloc();
            v301 = swift_slowAlloc();
            v708[0] = v301;
            *v300 = v666;
            LODWORD(v673) = v299;
            v668 = v301;
            if (v294)
            {
              if (v294 == 1)
              {
                strcpy(v711, "fileID(");
                *(&v711[0] + 1) = 0xE700000000000000;
                v704 = v681;
                goto LABEL_81;
              }

              if (v681)
              {
                v312 = 0x6873617274;
              }

              else
              {
                v312 = 1953460082;
              }

              if (v681)
              {
                v313 = 0xE500000000000000;
              }

              else
              {
                v313 = 0xE400000000000000;
              }
            }

            else
            {
              *&v711[0] = 0x284449636F64;
              *(&v711[0] + 1) = 0xE600000000000000;
              LODWORD(v704) = v681;
LABEL_81:
              v302 = sub_1CF9E7F98();
              v304 = v303;
              MEMORY[0x1D3868CC0](v302);
              v304, v305, v306, v307, v308, v309, v310, v311;
              MEMORY[0x1D3868CC0](41, 0xE100000000000000);
              v313 = *(&v711[0] + 1);
              v312 = *&v711[0];
            }

            v314 = sub_1CEFD0DF0(v312, v313, v708);
            v313, v315, v316, v317, v318, v319, v320, v321;
            *(v300 + 4) = v314;
            *(v300 + 12) = 2082;
            v322 = *v669;
            if (*(v669 + 8))
            {
              if (*(v669 + 8) == 1)
              {
                strcpy(v711, "fileID(");
                *(&v711[0] + 1) = 0xE700000000000000;
                v704 = v322;
                goto LABEL_92;
              }

              if (v322)
              {
                v333 = 0x6873617274;
              }

              else
              {
                v333 = 1953460082;
              }

              if (v322)
              {
                v334 = 0xE500000000000000;
              }

              else
              {
                v334 = 0xE400000000000000;
              }
            }

            else
            {
              *&v711[0] = 0x284449636F64;
              *(&v711[0] + 1) = 0xE600000000000000;
              LODWORD(v704) = v322;
LABEL_92:
              v323 = sub_1CF9E7F98();
              v325 = v324;
              MEMORY[0x1D3868CC0](v323);
              v325, v326, v327, v328, v329, v330, v331, v332;
              MEMORY[0x1D3868CC0](41, 0xE100000000000000);
              v334 = *(&v711[0] + 1);
              v333 = *&v711[0];
            }

            sub_1CEFE5888(v669, type metadata accessor for VFSItem);
            v335 = sub_1CEFD0DF0(v333, v334, v708);
            v334, v336, v337, v338, v339, v340, v341, v342;
            *(v300 + 14) = v335;
            _os_log_impl(&dword_1CEFC7000, v298, v673, "%{public}s was moved inside package %{public}s", v300, 0x16u);
            v343 = v668;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v343, -1, -1);
            MEMORY[0x1D386CDC0](v300, -1, -1);

            v288 = v664;
          }

          else
          {

            sub_1CEFE5888(v289, type metadata accessor for VFSItem);
          }

          (v687)(v288, v694);
          v230 = sub_1CF25D188(v711);
          if (*(v344 + 8))
          {
            v345 = v344;
            v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
            v347 = *(v346 + 48);
            v348 = *(v346 + 64);
            v349 = v657;
            *v657 = v681;
            *(v349 + 8) = v294;
            (*v676)(v349 + v347, 1, 1, v698);
            *(v349 + v348) = 0;
            swift_storeEnumTagMultiPayload();
            sub_1CEFCCBDC(v349, v658, &unk_1EC4BED40, &unk_1CFA00720);
            v350 = *(v345 + 8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v345 + 8) = v350;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v350 = sub_1CF1F6A90(0, *v350->tree + 1, 1, v350);
              *(v345 + 8) = v350;
            }

            v353 = *v350->tree;
            v352 = *v350->tester;
            if (v353 >= v352 >> 1)
            {
              v350 = sub_1CF1F6A90((v352 > 1), v353 + 1, 1, v350);
              *(v345 + 8) = v350;
            }

            *v350->tree = v353 + 1;
            sub_1CEFE55D0(v658, v350 + ((*(v672 + 80) + 32) & ~*(v672 + 80)) + *(v672 + 72) * v353, &unk_1EC4BED40, &unk_1CFA00720);
            sub_1CEFCCC44(v657, &unk_1EC4BED40, &unk_1CFA00720);
            (v230)(v711, 0);
            v288 = v664;
          }

          else
          {
            (v230)(v711, 0);
          }

          v289 = v669;
          v231 = v680;
          goto LABEL_55;
        }

        if (v294 != 1)
        {
          if (v293)
          {
            if (v296 == 2 && v295 == 1)
            {
              goto LABEL_55;
            }
          }

          else if (v296 == 2 && !v295)
          {
            goto LABEL_55;
          }

          goto LABEL_75;
        }

        if (v296 != 1 || v293 != v295)
        {
          goto LABEL_75;
        }

        goto LABEL_55;
      }
    }

    v219 = 1;
    v98 = v697;
    v214 = v694;
    v220 = v679;
    v217 = v685;
LABEL_110:
    sub_1CF9E5C98();
    if ((*&v363 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v363 > -9.22337204e18)
    {
      if (v363 < 9.22337204e18)
      {
        if (fpfs_is_busy_date())
        {
          v364 = fpfs_current_or_default_log();
          v365 = v675;
          sub_1CF9E6128();
          v366 = v671;
          sub_1CEFD90AC(v98, v671, type metadata accessor for VFSItem);
          v367 = sub_1CF9E6108();
          v368 = sub_1CF9E7298();
          if (os_log_type_enabled(v367, v368))
          {
            v369 = v366;
            v370 = v214;
            v371 = swift_slowAlloc();
            v372 = swift_slowAlloc();
            *&v711[0] = v372;
            *v371 = 136446210;
            v373 = sub_1CF255338();
            v375 = v374;
            sub_1CEFE5888(v369, type metadata accessor for VFSItem);
            v376 = sub_1CEFD0DF0(v373, v375, v711);
            v377 = v375;
            v98 = v697;
            v377, v378, v379, v380, v381, v382, v383, v384;
            *(v371 + 4) = v376;
            _os_log_impl(&dword_1CEFC7000, v367, v368, "🏗 ignoring event for busy file %{public}s", v371, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v372);
            MEMORY[0x1D386CDC0](v372, -1, -1);
            v385 = v371;
            v214 = v370;
            MEMORY[0x1D386CDC0](v385, -1, -1);

            v386 = v675;
            v387 = v370;
          }

          else
          {

            sub_1CEFE5888(v366, type metadata accessor for VFSItem);
            v386 = v365;
            v387 = v214;
          }

          (v687)(v386, v387);
          v414 = v670;
          sub_1CF2A4868(v700, v219, v696, v695, v693);
          v415 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v416 = v684;
          v417 = sub_1CF9E6108();
          v418 = sub_1CF9E7298();

          if (!os_log_type_enabled(v417, v418))
          {
            goto LABEL_127;
          }

          goto LABEL_126;
        }

        v388 = sub_1CF252CF4();
        LODWORD(v682) = v219;
        if (!(v389 >> 62))
        {
          sub_1CF07638C(v388, v389);
          v390 = fpfs_current_or_default_log();
          v391 = v661;
          sub_1CF9E6128();
          v392 = v660;
          sub_1CEFD90AC(v98, v660, type metadata accessor for VFSItem);
          v393 = sub_1CF9E6108();
          v394 = sub_1CF9E7298();
          if (os_log_type_enabled(v393, v394))
          {
            v395 = v391;
            v396 = v214;
            v397 = swift_slowAlloc();
            v398 = swift_slowAlloc();
            *&v711[0] = v398;
            *v397 = 136446210;
            v399 = sub_1CF255338();
            v401 = v400;
            sub_1CEFE5888(v392, type metadata accessor for VFSItem);
            v402 = sub_1CEFD0DF0(v399, v401, v711);
            v403 = v401;
            v98 = v697;
            v403, v404, v405, v406, v407, v408, v409, v410;
            *(v397 + 4) = v402;
            _os_log_impl(&dword_1CEFC7000, v393, v394, "🏗 ignoring event for temporary file %{public}s", v397, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v398);
            MEMORY[0x1D386CDC0](v398, -1, -1);
            v411 = v397;
            v214 = v396;
            MEMORY[0x1D386CDC0](v411, -1, -1);

            v412 = v395;
            v413 = v396;
          }

          else
          {

            sub_1CEFE5888(v392, type metadata accessor for VFSItem);
            v412 = v391;
            v413 = v214;
          }

          (v687)(v412, v413);
          v414 = v662;
          sub_1CF2A4868(v700, v682, v696, v695, v693);
          v424 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v416 = v684;
          v417 = sub_1CF9E6108();
          v418 = sub_1CF9E7298();

          if (!os_log_type_enabled(v417, v418))
          {
            goto LABEL_127;
          }

LABEL_126:
          v425 = v214;
          v426 = swift_slowAlloc();
          v427 = swift_slowAlloc();
          *v426 = 138412290;
          v428 = [v416 leave];
          *(v426 + 4) = v428;
          *v427 = v428;
          _os_log_impl(&dword_1CEFC7000, v417, v418, "%@", v426, 0xCu);
          sub_1CEFCCC44(v427, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v427, -1, -1);
          v429 = v426;
          v214 = v425;
          MEMORY[0x1D386CDC0](v429, -1, -1);
LABEL_127:

          v430 = v414;
          goto LABEL_226;
        }

        sub_1CF07638C(v388, v389);
        v419 = (v215 + qword_1EDEAFB30);
        swift_beginAccess();
        v420 = v419[1];
        v711[0] = *v419;
        v711[1] = v420;
        v712[0] = v419[2];
        *(v712 + 9) = *(v419 + 41);
        v422 = *(&v711[0] + 1);
        v421 = *&v711[0];
        v685 = v217;
        if (*(&v711[0] + 1))
        {

          v423 = v421;
        }

        else
        {
          v423 = 0;
        }

        v708[0] = v421;
        v708[1] = v422;
        v431 = v419[2];
        v709 = v419[1];
        v710[0] = v431;
        *(v710 + 9) = *(v419 + 41);
        sub_1CEFCCBDC(v711, &v704, &unk_1EC4BEDF0, &qword_1CFA00818);
        sub_1CEFCCC44(v708, &unk_1EC4BEDF0, &qword_1CFA00818);
        v432 = sub_1CF25D188(&v704);
        if (*(v433 + 8))
        {
          v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
          v435 = *(v434 + 48);
          v436 = *(v434 + 64);
          v437 = *(v98 + 8);
          v438 = v220;
          v439 = v655;
          *v655 = *v98;
          *(v439 + 8) = v437;
          sub_1CEFD90AC(v98, v439 + v435, type metadata accessor for VFSItem);
          v440 = v439 + v435;
          v441 = v698;
          (*(v690 + 7))(v440, 0, 1, v698);
          *(v439 + v436) = v423;
          v215 = v701;
          swift_storeEnumTagMultiPayload();

          sub_1CF25C780(v439, 0, 0);
          v442 = v439;
          v220 = v438;
          sub_1CEFCCC44(v442, &unk_1EC4BED40, &unk_1CFA00720);
          (v432)(&v704, 0);
        }

        else
        {
          (v432)(&v704, 0);
          v441 = v698;
        }

        v443 = v700;
        v681 = v700;
        if ((v700 & 0x4100) == 0x4000)
        {
          v444 = sub_1CF25D188(&v704);
          if (*(v445 + 8))
          {
            v446 = *(v98 + 8);
            v447 = *v685;
            v448 = v220;
            v449 = v655;
            *v655 = *v98;
            *(v449 + 8) = v446;
            *(v449 + 9) = v447;
            swift_storeEnumTagMultiPayload();
            sub_1CF25C780(v449, 0, 0);
            v450 = v449;
            v220 = v448;
            sub_1CEFCCC44(v450, &unk_1EC4BED40, &unk_1CFA00720);
          }

          (v444)(&v704, 0);
          v443 = v700;
        }

        sub_1CF2A4868(v443, v682, v696, v695, v693);
        if (*(v98 + 8) >= 2u && *v98)
        {
          v680 = v423;
          v451 = sub_1CF25D188(&v704);
          if (*(v452 + 8))
          {
            v453 = *(v98 + *(v441 + 36));
            v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
            v455 = *(v454 + 48);
            v456 = *(v454 + 64);
            swift_bridgeObjectRelease_n();
            v457 = v220;
            v458 = v647;
            *v647 = v453;
            v441 = v698;
            *(v458 + 8) = 1;
            (*(v690 + 7))(v458 + v455, 1, 1, v441);
            *(v458 + v456) = 0;
            v215 = v701;
            swift_storeEnumTagMultiPayload();
            sub_1CF25C780(v458, 0, 0);
            v459 = v458;
            v220 = v457;
            sub_1CEFCCC44(v459, &unk_1EC4BED40, &unk_1CFA00720);
          }

          (v451)(&v704, 0);
          v423 = v680;
          v467 = v685;
        }

        else
        {
          v468 = *(v98 + *(v441 + 36));
          swift_bridgeObjectRelease_n();
          if (v652)
          {
            v467 = v685;
          }

          else
          {
            v467 = v685;
            if ((v681 & 0x80000) == 0 && v468 == v648)
            {
              sub_1CF262924(1);
              if (v220)
              {

                v220 = 0;
              }
            }
          }
        }

        if (*v467 == 1)
        {
          v469 = v98 + *(v441 + 56);
          if ((*(v469 + 4) & 1) == 0)
          {
            v470 = *v469;
            v471 = v98 + *(v441 + 36);
            v472 = *v471;
            v473 = *(v471 + 8);
            0, v460, v461, v462, v463, v464, v465, v466;
            v704 = v472;
            *&v705 = 0;
            *(&v705 + 1) = __PAIR64__(v473, v470);
            v706 = 0uLL;
            v474 = objc_sync_enter(v215);
            if (v474)
            {
              MEMORY[0x1EEE9AC00](v474);
              v639 = v215;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v637, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

            v475 = v423;
            v476 = *(v215 + 20);

            v477 = objc_sync_exit(v215);
            if (v477)
            {
              MEMORY[0x1EEE9AC00](v477);
              v639 = v215;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v637, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            v478 = *(v476 + 16);

            v479 = sub_1CEFDADE0(&v704, v478, 0x100000);
            v441 = v698;
            if (v220)
            {

              *(&v706 + 1), v487, v488, v489, v490, v491, v492, v493;
              v220 = 0;
              v423 = v475;
            }

            else
            {
              v501 = v479;
              *(&v706 + 1), v480, v481, v482, v483, v484, v485, v486;
              v423 = v475;
              if ((fpfs_untrack_document() & 0x80000000) != 0)
              {
                v502 = MEMORY[0x1D38683F0]();
                v704 = 14;
                v705 = 0u;
                v706 = 0u;
                v707 = 19;
                v503 = sub_1CF19BBE4(v502, &v704);
                sub_1CF1969CC(&v704);
                swift_willThrow();
                v504 = v503;
                v423 = v475;

                v220 = 0;
              }

              if ((fpfs_make_fsevent() & 0x80000000) != 0)
              {
                v505 = MEMORY[0x1D38683F0]();
                v704 = 16;
                v705 = 0u;
                v706 = 0u;
                v707 = 19;
                v506 = sub_1CF19BBE4(v505, &v704);
                sub_1CF1969CC(&v704);
                swift_willThrow();
                v507 = v506;
                v423 = v475;

                v220 = 0;
              }

              if ((v501 & 0x80000000) == 0)
              {
                close(v501);
              }
            }
          }
        }

        v508 = v98 + *(v441 + 56);
        if ((*(v508 + 4) & 1) == 0 && *v508 == v650)
        {
          v509 = v667;
          v510 = v665;
          if ((v681 & 0x800) == 0)
          {
            goto LABEL_221;
          }

          goto LABEL_219;
        }

        v509 = v667;
        v510 = v665;
        if (*(v98 + 8))
        {
          if ((v681 & 0x800) == 0)
          {
            goto LABEL_221;
          }

LABEL_219:
          sub_1CEFD90AC(v98, v509, type metadata accessor for VFSItem);
          sub_1CF25116C(v510);
          v562 = v692;
          if ((*(v691 + 48))(v510, 1, v692) != 1)
          {
            v680 = v423;
            v573 = sub_1CF9E5928();
            v574 = *(v691 + 8);
            v574(v510, v562);
            v575 = v688;
            v576 = sub_1CF9E5928();
            v577 = [v573 fp:v576 relationshipToItemAtURL:?];

            if (v577 == 2)
            {
              MEMORY[0x1EEE9AC00](v578);
              v637 = v215;
              v638 = sub_1CF2B9F34;
              v639 = v215;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE10, &qword_1CFA00828);
              v579 = v220;
              sub_1CF9E59B8();
              if (v220)
              {
                v580 = fpfs_current_or_default_log();
                v581 = v646;
                sub_1CF9E6128();
                v582 = v692;
                v583 = v645;
                (*(v691 + 16))(v645, v575, v692);
                v584 = v579;
                v585 = sub_1CF9E6108();
                v586 = sub_1CF9E72A8();

                if (os_log_type_enabled(v585, v586))
                {
                  v587 = swift_slowAlloc();
                  LODWORD(v700) = v586;
                  v588 = v587;
                  v698 = swift_slowAlloc();
                  v701 = swift_slowAlloc();
                  v704 = v701;
                  *v588 = 134218498;
                  *(v588 + 4) = v689;
                  *(v588 + 12) = 2080;
                  v696 = v585;
                  v589 = sub_1CF9E5928();
                  v590 = v582;
                  v591 = [v589 fp_shortDescription];

                  v592 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                  v594 = v593;

                  v574(v583, v590);
                  v595 = sub_1CEFD0DF0(v592, v594, &v704);
                  v596 = v594;
                  v98 = v697;
                  v596, v597, v598, v599, v600, v601, v602, v603;
                  *(v588 + 14) = v595;
                  *(v588 + 22) = 2112;
                  swift_getErrorValue();
                  v604 = Error.prettyDescription.getter(v703[2], v703[3]);
                  *(v588 + 24) = v604;
                  v605 = v698;
                  *v698 = v604;
                  v606 = v696;
                  _os_log_impl(&dword_1CEFC7000, v696, v700, "Failed to identify root of rename event #%llu against package at %s: %@", v588, 0x20u);
                  sub_1CEFCCC44(v605, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](v605, -1, -1);
                  v607 = v701;
                  __swift_destroy_boxed_opaque_existential_1(v701);
                  MEMORY[0x1D386CDC0](v607, -1, -1);
                  MEMORY[0x1D386CDC0](v588, -1, -1);

                  v608 = v646;
                }

                else
                {

                  v574(v583, v582);
                  v608 = v581;
                }

                v214 = v694;
                (v687)(v608, v694);
                sub_1CEFE5888(v667, type metadata accessor for VFSItem);
                v563 = v659;
              }

              else
              {
                v214 = v694;
                if ((BYTE1(v705) & 1) == 0 && (v705 & 1) == 0)
                {
                  v94 = v644;
                  sub_1CF263ADC(v704, 0, 0, v644);
                  v230 = v667;
                  goto LABEL_244;
                }

                sub_1CEFE5888(v667, type metadata accessor for VFSItem);

                v563 = v659;
              }
            }

            else
            {
              sub_1CEFE5888(v667, type metadata accessor for VFSItem);

              v214 = v694;
              v563 = v659;
            }

            goto LABEL_223;
          }

          sub_1CEFE5888(v509, type metadata accessor for VFSItem);
LABEL_221:

          goto LABEL_222;
        }

        v511 = sub_1CF2A655C(v693);
        v680 = v423;
        if (v220)
        {

          v679 = 0;
          v513 = MEMORY[0x1E69E7CD0];
        }

        else
        {
          v513 = v511;
          v679 = 0;
        }

        v230 = v663;
        v514 = 0;
        tester = v513[1].tester;
        v516 = 1 << LOBYTE(v513[1].super.isa);
        v517 = -1;
        if (v516 < 64)
        {
          v517 = ~(-1 << v516);
        }

        v518 = v517 & *v513[1].tester;
        v94 = (v516 + 63) >> 6;
        v685 = (v699 + 8);
        v682 = (v690 + 56);
        *&v512 = 134349314;
        v676 = v512;
        v695 = v513;
        while (1)
        {
          while (1)
          {
            if (!v518)
            {
              while (1)
              {
                v519 = v514 + 1;
                if (__OFADD__(v514, 1))
                {
                  break;
                }

                if (v519 >= v94)
                {

                  v509 = v667;
                  v510 = v665;
                  v220 = v679;
                  v423 = v680;
                  if ((v681 & 0x800) == 0)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_219;
                }

                v518 = *&tester[8 * v519];
                ++v514;
                if (v518)
                {
                  v514 = v519;
                  goto LABEL_183;
                }
              }

LABEL_243:
              __break(1u);
LABEL_244:
              if (v674(v94, 1, v698) == 1)
              {
                sub_1CEFE5888(v230, type metadata accessor for VFSItem);

                sub_1CEFCCC44(v94, &unk_1EC4BEC00, &unk_1CF9FCB60);
                goto LABEL_222;
              }

LABEL_247:
              v220 = v642;
              sub_1CEFE4C60(v94, v642, type metadata accessor for VFSItem);
              v613 = fpfs_current_or_default_log();
              v214 = v643;
              sub_1CF9E6128();
              v217 = v641;
              sub_1CEFD90AC(v220, v641, type metadata accessor for VFSItem);
              v192 = sub_1CF9E6108();
              v614 = sub_1CF9E7288();
              if (os_log_type_enabled(v192, v614))
              {
                v615 = swift_slowAlloc();
                v616 = swift_slowAlloc();
                v703[0] = v616;
                *v615 = 136315138;
                v617 = *(v217 + 8);
                v704 = *v217;
                LOBYTE(v705) = v617;
                v618 = VFSItemID.description.getter(v616);
                v620 = v619;
                sub_1CEFE5888(v217, type metadata accessor for VFSItem);
                v621 = sub_1CEFD0DF0(v618, v620, v703);
                v622 = v620;
                v98 = v697;
                v622, v623, v624, v625, v626, v627, v628, v629;
                *(v615 + 4) = v621;
                _os_log_impl(&dword_1CEFC7000, v192, v614, "queueing deletion for package item for %s", v615, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v616);
                MEMORY[0x1D386CDC0](v616, -1, -1);
                MEMORY[0x1D386CDC0](v615, -1, -1);

LABEL_253:
                (v687)(v214, v694);
                v630 = sub_1CF25D188(&v704);
                if (*(v631 + 8))
                {
                  v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
                  v633 = *(v632 + 48);
                  v634 = *(v632 + 64);
                  v635 = v220[8];
                  v636 = v655;
                  *v655 = *v220;
                  *(v636 + 8) = v635;
                  (*(v690 + 7))(v636 + v633, 1, 1, v698);
                  *(v636 + v634) = 0;
                  swift_storeEnumTagMultiPayload();
                  sub_1CF25C780(v636, 0, 0);
                  sub_1CEFCCC44(v636, &unk_1EC4BED40, &unk_1CFA00720);
                }

                (v630)(&v704, 0);

                sub_1CEFE5888(v220, type metadata accessor for VFSItem);
                sub_1CEFE5888(v667, type metadata accessor for VFSItem);
LABEL_222:
                v563 = v659;
                v214 = v694;
LABEL_223:
                v564 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v416 = v684;
                v565 = sub_1CF9E6108();
                v566 = sub_1CF9E7298();

                if (os_log_type_enabled(v565, v566))
                {
                  v567 = v214;
                  v568 = swift_slowAlloc();
                  v569 = swift_slowAlloc();
                  *v568 = 138412290;
                  v570 = [v416 leave];
                  *(v568 + 4) = v570;
                  *v569 = v570;
                  _os_log_impl(&dword_1CEFC7000, v565, v566, "%@", v568, 0xCu);
                  sub_1CEFCCC44(v569, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](v569, -1, -1);
                  v571 = v568;
                  v214 = v567;
                  MEMORY[0x1D386CDC0](v571, -1, -1);
                }

                v430 = v563;
LABEL_226:
                (v687)(v430, v214);

                sub_1CF9E7458();
                v572 = v686;
                sub_1CF9E6038();
                sub_1CEFE5888(v98, type metadata accessor for VFSItem);
                (*(v691 + 8))(v688, v692);
                return sub_1CEFE5888(v572, type metadata accessor for Signpost);
              }

LABEL_252:

              sub_1CEFE5888(v217, type metadata accessor for VFSItem);
              goto LABEL_253;
            }

LABEL_183:
            v520 = __clz(__rbit64(v518));
            v518 &= v518 - 1;
            v521 = *v513[1].tree + ((v514 << 10) | (16 * v520));
            v522 = *v521;
            v523 = *(v521 + 8);
            v524 = *v98;
            v525 = *(v98 + 8);
            if (!v523)
            {
              break;
            }

            if (v523 == 1)
            {
              if (v525 != 1 || v522 != v524)
              {
                goto LABEL_197;
              }
            }

            else if (v522)
            {
              if (v525 != 2 || v524 != 1)
              {
                goto LABEL_197;
              }
            }

            else if (v525 != 2 || v524)
            {
              goto LABEL_197;
            }
          }

          if (*(v98 + 8) || v522 != v524)
          {
LABEL_197:
            v700 = v522;
            v526 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v527 = sub_1CF9E6108();
            LODWORD(v696) = sub_1CF9E7288();
            if (os_log_type_enabled(v527, v696))
            {
              v528 = swift_slowAlloc();
              v529 = swift_slowAlloc();
              v703[0] = v529;
              *v528 = v676;
              *(v528 + 4) = v693;
              *(v528 + 12) = 2082;
              v677 = v529;
              if (v523)
              {
                if (v523 == 1)
                {
                  v704 = 0x284449656C6966;
                  *&v705 = 0xE700000000000000;
                  v702 = v700;
                  goto LABEL_203;
                }

                if (v700)
                {
                  v540 = 0x6873617274;
                }

                else
                {
                  v540 = 1953460082;
                }

                if (v700)
                {
                  v541 = 0xE500000000000000;
                }

                else
                {
                  v541 = 0xE400000000000000;
                }
              }

              else
              {
                v704 = 0x284449636F64;
                *&v705 = 0xE600000000000000;
                LODWORD(v702) = v700;
LABEL_203:
                v530 = sub_1CF9E7F98();
                v532 = v531;
                MEMORY[0x1D3868CC0](v530);
                v532, v533, v534, v535, v536, v537, v538, v539;
                MEMORY[0x1D3868CC0](41, 0xE100000000000000);
                v540 = v704;
                v541 = v705;
              }

              v542 = sub_1CEFD0DF0(v540, v541, v703);
              v541, v543, v544, v545, v546, v547, v548, v549;
              *(v528 + 14) = v542;
              _os_log_impl(&dword_1CEFC7000, v527, v696, "queueing untrack for previous id of %{public}llu: %{public}s", v528, 0x16u);
              v550 = v677;
              __swift_destroy_boxed_opaque_existential_1(v677);
              MEMORY[0x1D386CDC0](v550, -1, -1);
              MEMORY[0x1D386CDC0](v528, -1, -1);

              (v687)(v663, v694);
              v98 = v697;
              v215 = v701;
              goto LABEL_211;
            }

            (v687)(v230, v694);
LABEL_211:
            v552 = sub_1CF25D188(&v704);
            if (*(v551 + 8))
            {
              v553 = v551;
              v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
              v555 = *(v554 + 48);
              v556 = *(v554 + 64);
              v557 = v653;
              *v653 = v700;
              *(v557 + 8) = v523;
              (*v682)(v557 + v555, 1, 1, v698);
              *(v557 + v556) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1CEFCCBDC(v557, v654, &unk_1EC4BED40, &unk_1CFA00720);
              v558 = *(v553 + 8);
              v559 = swift_isUniquelyReferenced_nonNull_native();
              *(v553 + 8) = v558;
              if ((v559 & 1) == 0)
              {
                v558 = sub_1CF1F6A90(0, *v558->tree + 1, 1, v558);
                *(v553 + 8) = v558;
              }

              v561 = *v558->tree;
              v560 = *v558->tester;
              if (v561 >= v560 >> 1)
              {
                v558 = sub_1CF1F6A90((v560 > 1), v561 + 1, 1, v558);
                *(v553 + 8) = v558;
              }

              v513 = v695;
              *v558->tree = v561 + 1;
              sub_1CEFE55D0(v654, v558 + ((*(v672 + 80) + 32) & ~*(v672 + 80)) + *(v672 + 72) * v561, &unk_1EC4BED40, &unk_1CFA00720);
              sub_1CEFCCC44(v653, &unk_1EC4BED40, &unk_1CFA00720);
              (v552)(&v704, 0);
              v98 = v697;
              v215 = v701;
              v230 = v663;
            }

            else
            {
              (v552)(&v704, 0);
              v230 = v663;
              v513 = v695;
            }
          }
        }
      }

LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    __break(1u);
    goto LABEL_251;
  }

  sub_1CEFCCC44(v66, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v109 = v691;
  v110 = v701;
  v98 = v693;
  if (v693)
  {
    v94 = v102;
    v111 = sub_1CF2A655C(v693);
    v112 = v694;
    v233 = v111;
    if (*(v111 + 16))
    {
      v682 = 0;
      v234 = v674;
    }

    else
    {
      v697 = &v640;
      MEMORY[0x1EEE9AC00](v111);
      v637 = v110;
      v638 = sub_1CF2B9734;
      v639 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEE10, &qword_1CFA00828);
      sub_1CF9E59B8();
      v234 = v674;
      v682 = 0;
      if (BYTE9(v711[0]) & 1) != 0 || (BYTE8(v711[0]))
      {
        sub_1CF2A4868(v700, 0, v696, v94, v98);
      }

      else
      {
        v609 = *&v711[0];
        v233, v354, v355, v356, v357, v358, v359, v360;
        v610 = v682;
        v611 = sub_1CF2A655C(v609);
        v682 = v610;
        if (v610)
        {
          v612 = v112;
          v361 = v692;
          v362 = v682;
          v113 = v668;
          v114 = fpfs_current_or_default_log();
          v115 = v673;
          sub_1CF9E6128();
          v116 = v688;
          (*(v109 + 16))(v113, v688, v361);
          v117 = v362;
          v118 = sub_1CF9E6108();
          v119 = v362;
          v120 = sub_1CF9E72A8();

          if (os_log_type_enabled(v118, v120))
          {
            v121 = swift_slowAlloc();
            v700 = swift_slowAlloc();
            v701 = swift_slowAlloc();
            *&v711[0] = v701;
            *v121 = 134218498;
            *(v121 + 4) = v689;
            *(v121 + 12) = 2080;
            LODWORD(v698) = v120;
            v122 = sub_1CF9E5928();
            v123 = [v122 fp_shortDescription];

            v124 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v125 = v109;
            v127 = v126;

            v128 = *(v125 + 8);
            v129 = v113;
            v130 = v692;
            v128(v129, v692);
            v131 = sub_1CEFD0DF0(v124, v127, v711);
            v127, v132, v133, v134, v135, v136, v137, v138;
            *(v121 + 14) = v131;
            *(v121 + 22) = 2112;
            swift_getErrorValue();
            v139 = Error.prettyDescription.getter(v713, v714);
            *(v121 + 24) = v139;
            v140 = v700;
            *v700 = v139;
            _os_log_impl(&dword_1CEFC7000, v118, v698, "Unable to process fsevent#%llu for item at %s: %@", v121, 0x20u);
            sub_1CEFCCC44(v140, &qword_1EC4BE350, &unk_1CF9FC3B0);
            MEMORY[0x1D386CDC0](v140, -1, -1);
            v141 = v701;
            __swift_destroy_boxed_opaque_existential_1(v701);
            MEMORY[0x1D386CDC0](v141, -1, -1);
            MEMORY[0x1D386CDC0](v121, -1, -1);

            (*(v699 + 8))(v673, v694);
            return (v128)(v116, v130);
          }

          else
          {

            v275 = *(v109 + 8);
            v276 = v692;
            v275(v113, v692);
            (*(v699 + 8))(v115, v612);
            return (v275)(v116, v276);
          }
        }

        v233 = v611;
      }
    }

    v230 = (v233 + 56);
    v235 = 1 << v233[32];
    v236 = -1;
    if (v235 < 64)
    {
      v236 = ~(-1 << v235);
    }

    v237 = v236 & *(v233 + 7);
    v686 = (v699 + 8);
    v687 = ((v235 + 63) >> 6);
    v684 = v690 + 56;

    v238 = 0;
    *&v239 = 134349314;
    v683 = v239;
    v690 = v233 + 56;
    v685 = v233;
    while (v237)
    {
      v240 = v112;
LABEL_40:
      v242 = *(v233 + 6) + ((v238 << 10) | (16 * __clz(__rbit64(v237))));
      v243 = *v242;
      v94 = *(v242 + 8);
      v244 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v245 = v234;
      v246 = sub_1CF9E6108();
      v247 = sub_1CF9E7288();
      v248 = os_log_type_enabled(v246, v247);
      v699 = v243;
      LODWORD(v697) = v94;
      if (v248)
      {
        v249 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        v251 = v98;
        v252 = v250;
        v708[0] = v250;
        *v249 = v683;
        *(v249 + 4) = v251;
        *(v249 + 12) = 2082;
        *&v711[0] = v243;
        BYTE8(v711[0]) = v94;
        v94 = v245;
        v253 = VFSItemID.description.getter(v250);
        v255 = v254;
        v256 = sub_1CEFD0DF0(v253, v254, v708);
        v255, v257, v258, v259, v260, v261, v262, v263;
        *(v249 + 14) = v256;
        v112 = v694;
        _os_log_impl(&dword_1CEFC7000, v246, v247, "item %{public}llu couldn't be resolved, queueing deletion for previous id %{public}s", v249, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v252);
        MEMORY[0x1D386CDC0](v252, -1, -1);
        MEMORY[0x1D386CDC0](v249, -1, -1);

        (*v686)(v94, v112);
        v234 = v94;
      }

      else
      {

        v112 = v240;
        (*v686)(v245, v240);
        v234 = v245;
      }

      v265 = sub_1CF25D188(v711);
      if (*(v264 + 8))
      {
        v266 = v264;
        v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
        v268 = *(v267 + 48);
        v269 = *(v267 + 64);
        v270 = v676;
        v271 = v698;
        *v676 = v699;
        *(v270 + 8) = v697;
        (*v684)(v270 + v268, 1, 1, v271);
        *(v270 + v269) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1CEFCCBDC(v270, v677, &unk_1EC4BED40, &unk_1CFA00720);
        v272 = *(v266 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v272 = sub_1CF1F6A90(0, *v272->tree + 1, 1, v272);
        }

        v274 = *v272->tree;
        v273 = *v272->tester;
        if (v274 >= v273 >> 1)
        {
          v272 = sub_1CF1F6A90((v273 > 1), v274 + 1, 1, v272);
        }

        *v272->tree = v274 + 1;
        v94 = &unk_1EC4BED40;
        sub_1CEFE55D0(v677, v272 + ((*(v672 + 80) + 32) & ~*(v672 + 80)) + *(v672 + 72) * v274, &unk_1EC4BED40, &unk_1CFA00720);
        *(v266 + 8) = v272;
        sub_1CEFCCC44(v676, &unk_1EC4BED40, &unk_1CFA00720);
        (v265)(v711, 0);
        v98 = v693;
        v234 = v674;
      }

      else
      {
        (v265)(v711, 0);
        v98 = v693;
      }

      v237 &= v237 - 1;
      sub_1CF2A4868(v700, 0, v696, v695, v98);
      v233 = v685;
      v230 = v690;
    }

    while (1)
    {
      v241 = v238 + 1;
      if (__OFADD__(v238, 1))
      {
        __break(1u);
        goto LABEL_242;
      }

      if (v241 >= v687)
      {
        break;
      }

      v237 = *(v230 + v241);
      ++v238;
      if (v237)
      {
        v240 = v112;
        v238 = v241;
        goto LABEL_40;
      }
    }

    v277 = *(v233 + 2);
    v233, v278, v279, v280, v281, v282, v283, v284;
    if (v277)
    {
      return (*(v691 + 8))(v688, v692);
    }

    else
    {
      v494 = fpfs_current_or_default_log();
      v495 = v649;
      sub_1CF9E6128();
      v496 = sub_1CF9E6108();
      v497 = sub_1CF9E7298();
      v498 = os_log_type_enabled(v496, v497);
      v499 = v691;
      if (v498)
      {
        v500 = swift_slowAlloc();
        *v500 = 134349568;
        *(v500 + 4) = v98;
        *(v500 + 12) = 2048;
        *(v500 + 14) = v689;
        *(v500 + 22) = 1024;
        *(v500 + 24) = v700;
        _os_log_impl(&dword_1CEFC7000, v496, v497, "Dropping fsevent for %{public}llu (event#%llu, flags:%x)", v500, 0x1Cu);
        MEMORY[0x1D386CDC0](v500, -1, -1);
      }

      (*v686)(v495, v112);
      return (*(v499 + 8))(v688, v692);
    }
  }

  else
  {
    v221 = fpfs_current_or_default_log();
    v222 = v666;
    sub_1CF9E6128();
    v223 = sub_1CF9E6108();
    v224 = sub_1CF9E7298();
    v225 = os_log_type_enabled(v223, v224);
    v226 = v694;
    if (v225)
    {
      v227 = swift_slowAlloc();
      v228 = v101;
      v229 = v227;
      *v227 = 134218240;
      *(v227 + 4) = v228;
      *(v227 + 12) = 1024;
      *(v227 + 14) = v700;
      _os_log_impl(&dword_1CEFC7000, v223, v224, "dropping fsevent without file ID (event#%llu, flags:%x)", v227, 0x12u);
      MEMORY[0x1D386CDC0](v229, -1, -1);
    }

    (*(v699 + 8))(v222, v226);
    return (*(v109 + 8))(v688, v692);
  }
}