void sub_1CF8AB2E4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void *, void), uint64_t a6, unint64_t a7)
{
  v128 = a5;
  v121[0] = a7;
  v127 = a6;
  v131 = a3;
  v9 = sub_1CF9E6118();
  v122 = *(v9 - 8);
  v123 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v124 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v130);
  v126 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v121 - v13;
  v15 = swift_projectBox();
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  swift_beginAccess();
  v125 = v15;
  sub_1CEFDA34C(v15, v14, type metadata accessor for VFSItem);
  v121[1] = a4;
  v19 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
  v20 = [v19 pathComponents];
  v21 = sub_1CF9E6D48();

  v22 = *v21->tree;
  v21, v23, v24, v25, v26, v27, v28, v29;
  if (v22 >= 2)
  {
    v30 = [v19 stringByDeletingLastPathComponent];
    if (!v30)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v31;
      v30 = sub_1CF9E6888();
      v32, v33, v34, v35, v36, v37, v38, v39;
    }

    v19 = v30;
  }

  v40 = type metadata accessor for FPFSSyncEngine(0);
  v41 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v42 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v43 = v129;
  sub_1CF7D6FCC(v14, v131, v19, 0, v18, v40, v130, v16, v41, &off_1F4BF8588, v42, *(v17 + 8));
  v45 = v44;
  sub_1CEFD5338(v14, type metadata accessor for VFSItem);

  if (!v43)
  {
    if (v45)
    {
      v46 = v45;
      v128(v45, 0);
    }

    else
    {
      v47 = a1[3];
      v48 = a1[4];
      v49 = __swift_project_boxed_opaque_existential_1(a1, v47);
      v50 = v125;
      swift_beginAccess();
      sub_1CEFDA34C(v50, v126, type metadata accessor for VFSItem);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v52 = Strong, v53 = [Strong indexer], v52, v53))
      {
        v54 = [v53 needsAuthentication];

        if (v54)
        {
          v55 = 29;
        }

        else
        {
          v55 = 21;
        }
      }

      else
      {
        v55 = 21;
      }

      v56 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
      v120 = *(v48 + 8);
      v57 = v126;
      v58 = sub_1CF76BB00(v126, v55, 0, v56, v49, v130, v47, v41, &off_1F4BF8588, v42, v120);
      v56, v59, v60, v61, v62, v63, v64, v65;
      sub_1CEFD5338(v57, type metadata accessor for VFSItem);
      v66 = v125;
      swift_beginAccess();
      v67 = *(v66 + 40);

      v68 = sub_1CF9E6888();
      v67, v69, v70, v71, v72, v73, v74, v75;
      v76 = [v68 stringByDeletingPathExtension];
      if (!v76)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v78 = v77;
        v76 = sub_1CF9E6888();
        v78, v79, v80, v81, v82, v83, v84, v85;
      }

      [v58 setFp:v76 displayName:v121[0]];

      v86 = fpfs_current_or_default_log();
      v87 = v124;
      sub_1CF9E6128();
      v88 = v58;
      v89 = sub_1CF9E6108();
      v90 = sub_1CF9E7298();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v130 = v92;
        v131 = swift_slowAlloc();
        v132 = v131;
        *v91 = 136315650;
        v93 = sub_1CF7F5844(v121[0]);
        v95 = v94;
        v96 = sub_1CEFD0DF0(v93, v94, &v132);
        v95, v97, v98, v99, v100, v101, v102, v103;
        *(v91 + 4) = v96;
        *(v91 + 12) = 2112;
        *(v91 + 14) = v88;
        *v92 = v88;
        *(v91 + 22) = 2080;
        v104 = [v88 displayName];
        v105 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v106 = v68;
        v108 = v107;

        v109 = sub_1CEFD0DF0(v105, v108, &v132);
        v110 = v108;
        v68 = v106;
        v110, v111, v112, v113, v114, v115, v116, v117;
        *(v91 + 24) = v109;
        _os_log_impl(&dword_1CEFC7000, v89, v90, "Finished updating %s for item %@; d: %s", v91, 0x20u);
        v118 = v130;
        sub_1CEFCCC44(v130, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v118, -1, -1);
        v119 = v131;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v119, -1, -1);
        MEMORY[0x1D386CDC0](v91, -1, -1);

        (*(v122 + 8))(v124, v123);
      }

      else
      {

        (*(v122 + 8))(v87, v123);
      }

      v46 = v88;
      v128(v88, 0);
    }
  }
}

double FPDDomainFPFSBackend.bulkItemChanges(_:changedFields:request:completionHandler:)(_TtC18FileProviderDaemon8FSTester *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v84 = a4;
  v103 = a3;
  v7 = sub_1CF9E63A8();
  v90 = *(v7 - 8);
  v91 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1CF9E6448();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  swift_bridgeObjectRetain_n();
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E7298();
  v17 = os_log_type_enabled(v15, v16);
  v18 = a1 >> 62;
  v95 = a1;
  v96 = a2;
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315394;
    v21 = sub_1CF7F5844(a2);
    v23 = v22;
    v24 = sub_1CEFD0DF0(v21, v22, aBlock);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    a1 = v95;
    if (v18)
    {
      v39 = sub_1CF9E7818();
    }

    else
    {
      v39 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1, v32, v33, v34, v35, v36, v37, v38;
    *(v19 + 14) = v39;
    a1, v40, v41, v42, v43, v44, v45, v46;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "Request to modify fields %s for %ld items", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1D386CDC0](v20, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  (*(v11 + 8))(v13, v10);
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E7CC8];
  v102 = v47;
  *(v47 + 16) = MEMORY[0x1E69E7CC8];
  v101 = swift_allocObject();
  *(v101 + 16) = v48;
  v98 = swift_allocObject();
  *(v98 + 16) = MEMORY[0x1E69E7CC0];
  v100 = dispatch_group_create();
  if (v18)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {
    v50 = 0;
    v93 = a1 & 0xFFFFFFFFFFFFFF8;
    v94 = a1 & 0xC000000000000001;
    v92 = i;
    while (1)
    {
      if (v94)
      {
        v51 = MEMORY[0x1D3869C30](v50, a1);
      }

      else
      {
        if (v50 >= *(v93 + 16))
        {
          goto LABEL_17;
        }

        v51 = *(&a1[1].super.isa + v50);
      }

      v52 = v51;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      v53 = v100;
      v99 = v50 + 1;
      dispatch_group_enter(v100);
      v54 = swift_allocObject();
      v55 = [v52 itemID];
      v56 = [v55 identifier];

      *(v54 + 16) = v56;
      *(v54 + 24) = 256;
      *(v54 + 32) = v103;
      v57 = swift_allocObject();
      v57[2] = v53;
      v57[3] = v52;
      v58 = v98;
      v57[4] = v54 | 0x4000000000000006;
      v57[5] = v58;
      v59 = v101;
      v57[6] = v102;
      v57[7] = v59;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_1CF8F3508;
      *(v60 + 24) = v57;
      v61 = swift_allocObject();
      v62 = v97;
      *(v61 + 16) = v96;
      *(v61 + 24) = v52;
      *(v61 + 32) = v54 | 0x4000000000000006;
      *(v61 + 40) = sub_1CF8F3508;
      *(v61 + 48) = v57;
      *(v61 + 56) = v62;
      *(v61 + 64) = 257;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_1CF90325C;
      *(v63 + 24) = v60;
      v64 = v52;
      swift_retain_n();
      swift_retain_n();
      v65 = v64;
      v66 = v103;
      v67 = v100;
      v68 = v92;

      v69 = v62;

      sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v63, sub_1CF8F3520, v61);

      a1 = v95;

      ++v50;
      if (v99 == v68)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:
  v70 = v97;
  v99 = *&v97[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v71 = swift_allocObject();
  v71[2] = v98;
  v71[3] = a1;
  v72 = v85;
  v71[4] = v84;
  v71[5] = v72;
  v73 = v102;
  v71[6] = v101;
  v71[7] = v73;
  v74 = v103;
  v71[8] = v103;
  v71[9] = v70;
  v75 = v100;
  v71[10] = v96;
  v71[11] = v75;
  aBlock[4] = sub_1CF8F3524;
  aBlock[5] = v71;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_446;
  v76 = _Block_copy(aBlock);

  v77 = v74;
  v78 = v75;

  v79 = v70;

  v80 = v86;
  sub_1CF9E63F8();
  v104 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v81 = v88;
  v82 = v91;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v76);

  (*(v90 + 8))(v81, v82);
  (*(v87 + 8))(v80, v89);

  return result;
}

void sub_1CF8AC284(void *a1, void *a2, NSObject *a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a6;
  v14 = sub_1CF9E6118();
  v74 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a4;
  v19 = a5;
  sub_1CEFD09A0(a5);
  v20 = a1;
  v76 = a3;
  v77 = v20;
  if (objc_sync_enter(a3))
  {
    v69 = v76;
    swift_unknownObjectRetain();

    sub_1CEFD0A98(v19);
    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v69);
  }

  v21 = a5;
  if (a2)
  {
    _s3__C4CodeOMa_1(0);
    v79[0] = -1001;
    v22 = a2;
    sub_1CEFCCCA4(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    if (sub_1CF9E5658())
    {
      v23 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v24 = v18;
      sub_1CEFD09A0(a5);
      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E7298();

      sub_1CEFD0A98(v21);
      v73 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79[0] = v72;
        *v27 = 136315394;
        v28 = [v24 itemID];
        v71 = v26;
        v29 = v28;
        v30 = [v28 identifier];

        v31 = NSFileProviderItemIdentifier.description.getter(v30);
        v33 = v32;

        v34 = sub_1CEFD0DF0(v31, v33, v79);
        v33, v35, v36, v37, v38, v39, v40, v41;
        *(v27 + 4) = v34;
        *(v27 + 12) = 2080;
        v42 = sub_1CEFD11AC(v21);
        v44 = v43;
        v45 = sub_1CEFD0DF0(v42, v43, v79);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        v53 = v73;
        _os_log_impl(&dword_1CEFC7000, v73, v71, "Item %s collided for request %s", v27, 0x16u);
        v54 = v72;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v54, -1, -1);
        MEMORY[0x1D386CDC0](v27, -1, -1);
      }

      else
      {
      }

      (*(v74 + 8))(v16, v14);
      v66 = v75;
      swift_beginAccess();
      v67 = v24;
      MEMORY[0x1D3868FA0]();
      v57 = v77;
      if (*((*(v66 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v66 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CF9E6D88();
      }

      sub_1CF9E6DE8();
    }

    else
    {
      v59 = [v18 itemID];
      v60 = [v59 identifier];

      swift_beginAccess();
      v61 = a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(a7 + 16);
      *(a7 + 16) = 0x8000000000000000;
      sub_1CF1D40B0(a2, v60, isUniquelyReferenced_nonNull_native);

      *(a7 + 16) = v78;
      swift_endAccess();
      v63 = [v18 itemID];
      v64 = [v63 identifier];

      swift_beginAccess();
      v57 = v77;
      v65 = v77;
      sub_1CF1C9340(a1, v64);
    }

    swift_endAccess();
  }

  else
  {
    v55 = [v18 itemID];
    v56 = [v55 identifier];

    swift_beginAccess();
    v57 = v77;
    v58 = v77;
    sub_1CF1C9340(a1, v56);
    swift_endAccess();
  }

  v68 = v76;
  if (objc_sync_exit(v76))
  {
    swift_unknownObjectRetain();

    sub_1CEFD0A98(v21);
    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v68);
  }

  sub_1CEFD0A98(v21);
  dispatch_group_leave(v68);
}

void sub_1CF8AC858(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  v105 = a6;
  v106 = a4;
  v16 = sub_1CF9E6118();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  swift_beginAccess();
  v23 = *(a1 + 16);
  if (v23 >> 62)
  {
    if (sub_1CF9E7818())
    {
LABEL_3:
      swift_beginAccess();
      v24 = *(a1 + 16);
      if (v24 >> 62)
      {
        if (sub_1CF9E7818() >= 1)
        {
          goto LABEL_5;
        }
      }

      else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_5:
        swift_beginAccess();
        v25 = *(a1 + 16);
        v103 = a3;
        v104 = a5;
        v102 = a8;
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1D3869C30](0);
          goto LABEL_8;
        }

        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v26 = *(v25 + 32);
LABEL_8:
          v27 = v26;
          v101 = a10;
          swift_endAccess();
          v28 = swift_allocObject();
          v29 = [v27 itemID];
          v30 = [v29 identifier];

          *(v28 + 16) = v30;
          *(v28 + 24) = 256;
          *(v28 + 32) = a7;
          v100 = v28 | 0x4000000000000006;
          v31 = swift_allocObject();
          v32 = v104;
          v33 = v105;
          v31[2] = a10;
          v31[3] = v33;
          v31[4] = v27;
          v31[5] = v32;
          v31[6] = a1;
          v31[7] = a2;
          v34 = v106;
          v31[8] = v103;
          v31[9] = v34;
          v103 = a2;
          v35 = v102;
          v31[10] = a7;
          v31[11] = v35;
          v31[12] = a9;
          v31[13] = 0;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_1CF8FD734;
          *(v36 + 24) = v31;
          v37 = swift_allocObject();
          *(v37 + 16) = a9;
          *(v37 + 24) = v27;
          *(v37 + 32) = v100;
          *(v37 + 40) = sub_1CF8FD734;
          *(v37 + 48) = v31;
          *(v37 + 56) = v35;
          *(v37 + 64) = 257;
          v38 = swift_allocObject();
          *(v38 + 16) = sub_1CF90325C;
          *(v38 + 24) = v36;
          v39 = a7;
          v40 = v27;
          v41 = v35;
          swift_retain_n();

          v42 = v39;
          v43 = v40;
          v44 = v41;
          v45 = v101;

          sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v38, sub_1CF903324, v37);

          return;
        }

        __break(1u);
LABEL_27:
        v54 = sub_1CF9E7818();
        goto LABEL_13;
      }

      v72 = a3;
      v73 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v74 = sub_1CF9E6108();
      v75 = sub_1CF9E7298();
      if (os_log_type_enabled(v74, v75))
      {
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        if (a2 >> 62)
        {
          v84 = sub_1CF9E7818();
        }

        else
        {
          v84 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v83 + 4) = v84;
        a2, v76, v77, v78, v79, v80, v81, v82;
        _os_log_impl(&dword_1CEFC7000, v74, v75, "Finished bulkItemChanges of %ld items", v83, 0xCu);
        MEMORY[0x1D386CDC0](v83, -1, -1);
      }

      else
      {

        a2, v85, v86, v87, v88, v89, v90, v91;
      }

      (*(v17 + 8))(v19, v16);
      swift_beginAccess();
      v62 = *(a5 + 16);
      v92 = v105;
      swift_beginAccess();
      v64 = *(v92 + 16);

      (v72)(v62, v64);
      goto LABEL_23;
    }
  }

  else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v19 = a3;
  v46 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  a3 = sub_1CF9E6108();
  LOBYTE(a8) = sub_1CF9E7298();
  if (!os_log_type_enabled(a3, a8))
  {

    a2, v55, v56, v57, v58, v59, v60, v61;
    goto LABEL_15;
  }

  v104 = a5;
  a5 = swift_slowAlloc();
  *a5 = 134217984;
  if (a2 >> 62)
  {
    goto LABEL_27;
  }

  v54 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
  *(a5 + 4) = v54;
  a2, v47, v48, v49, v50, v51, v52, v53;
  _os_log_impl(&dword_1CEFC7000, a3, a8, "Finished bulkItemChanges of %ld items", a5, 0xCu);
  MEMORY[0x1D386CDC0](a5, -1, -1);

  a5 = v104;
LABEL_15:
  (*(v17 + 8))(v22, v16);
  swift_beginAccess();
  v62 = *(a5 + 16);
  v63 = v105;
  swift_beginAccess();
  v64 = *(v63 + 16);

  (v19)(v62, v64);
LABEL_23:
  v62, v65, v66, v67, v68, v69, v70, v71;
  v64, v93, v94, v95, v96, v97, v98, v99;
}

void sub_1CF8ACF1C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, NSObject *a7, _TtC18FileProviderDaemon8FSTester *a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v102 = a7;
  v103 = a8;
  v20 = sub_1CF9E6118();
  v100 = *(v20 - 8);
  v101 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2;
  v24 = a1;
  v25 = a5;
  v104 = a3;
  if (objc_sync_enter(a3))
  {
    v94 = v104;
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v94);
  }

  if (a2)
  {
    v26 = a2;
    v27 = [v25 itemID];
    v28 = [v27 identifier];

    swift_beginAccess();
    v29 = a2;
    sub_1CF1C9FF0(a2, v28);
    swift_endAccess();
  }

  v30 = [v25 itemID];
  v31 = [v30 identifier];

  swift_beginAccess();
  v32 = v24;
  sub_1CF1C9340(a1, v31);
  swift_endAccess();
  if (objc_sync_exit(v104))
  {
    v95 = v104;
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v95);
  }

  v33 = a14 + 1;
  if (__OFADD__(a14, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = a9;
    v32 = v102;
    swift_beginAccess();
    isa = v32[2].isa;
    if (!(isa >> 62))
    {
      v35 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  v35 = sub_1CF9E7818();
LABEL_8:
  v36 = v103;
  if (v33 < v35)
  {
    v37 = swift_beginAccess();
    v38 = v32[2].isa;
    v98 = a6;
    v99 = a10;
    v97 = v24;
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = a4;
      v40 = MEMORY[0x1D3869C30](v33);
      goto LABEL_13;
    }

    if (v33 < 0)
    {
      __break(1u);
    }

    else if (v33 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = a4;
      v40 = *(v38 + v33 + 4);
LABEL_13:
      v41 = v40;
      swift_endAccess();
      v42 = swift_allocObject();
      v43 = [v41 itemID];
      v44 = [v43 identifier];

      *(v42 + 16) = v44;
      *(v42 + 24) = 256;
      *(v42 + 32) = a11;
      v101 = v42 | 0x4000000000000006;
      v45 = swift_allocObject();
      v45[2] = v104;
      v45[3] = v39;
      v96[1] = v39;
      v46 = v98;
      v45[4] = v41;
      v45[5] = v46;
      v47 = v103;
      v45[6] = v102;
      v45[7] = v47;
      v48 = v99;
      v45[8] = v97;
      v45[9] = v48;
      v45[10] = a11;
      v45[11] = a12;
      v45[12] = a13;
      v45[13] = v33;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_1CF9033A8;
      *(v49 + 24) = v45;
      v50 = swift_allocObject();
      *(v50 + 16) = a13;
      *(v50 + 24) = v41;
      *(v50 + 32) = v101;
      *(v50 + 40) = sub_1CF9033A8;
      *(v50 + 48) = v45;
      *(v50 + 56) = a12;
      *(v50 + 64) = 257;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1CF90325C;
      *(v51 + 24) = v49;
      v52 = a11;
      v53 = v41;
      v54 = a12;
      swift_retain_n();
      v55 = v104;
      v56 = v52;
      v57 = v53;
      v58 = v54;

      sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v51, sub_1CF903324, v50);

      return;
    }

    __break(1u);
LABEL_26:
    v92 = a6;
    v93 = v37;
    v67 = sub_1CF9E7818();
    v37 = v93;
    a6 = v92;
    goto LABEL_17;
  }

  v59 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v32 = sub_1CF9E6108();
  LOBYTE(v33) = sub_1CF9E7298();
  if (!os_log_type_enabled(v32, v33))
  {

    v36, v69, v70, v71, v72, v73, v74, v75;
    goto LABEL_19;
  }

  v37 = swift_slowAlloc();
  *v37 = 134217984;
  if (v36 >> 62)
  {
    goto LABEL_26;
  }

  v67 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  *(v37 + 4) = v67;
  v68 = v37;
  v36, v60, v61, v62, v63, v64, v65, v66;
  _os_log_impl(&dword_1CEFC7000, v32, v33, "Finished bulkItemChanges of %ld items", v68, 0xCu);
  MEMORY[0x1D386CDC0](v68, -1, -1);

LABEL_19:
  (*(v100 + 8))(v22, v101);
  swift_beginAccess();
  v76 = *(a6 + 16);
  swift_beginAccess();
  v77 = *(a4 + 16);

  (v24)(v76, v77);
  v76, v78, v79, v80, v81, v82, v83, v84;
  v77, v85, v86, v87, v88, v89, v90, v91;
}

void sub_1CF8AD6F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CEFCCCA4(&qword_1EDEAB550, type metadata accessor for NSFileProviderItemIdentifier, &unk_1CF9F76A8);
    v6 = sub_1CF9E6618();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t FPDDomainFPFSBackend.trashItem(at:request:completionHandler:)(uint64_t a1, void *a2, void (*a3)(char *, id), uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v36 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*(v12 + 16))(&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
    v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = a4;
    v34 = v5;
    v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v12 + 32))(&v21[v17], v14, v11);
    v22 = &v21[v18];
    v23 = v36;
    v24 = v33;
    v25 = v34;
    *v22 = v36;
    v22[1] = v24;
    *&v21[v19] = v16;
    *&v21[v20] = v25;
    v26 = v35;
    *&v21[(v20 + 15) & 0xFFFFFFFFFFFFFFF8] = v35;
    v27 = v24;
    swift_retain_n();
    v28 = v16;
    v29 = v25;
    v30 = v26;
    sub_1CF8EECC0("trashItem(at:request:completionHandler:)", 40, 2, sub_1CF8F355C, v21, v29, v23, v27);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v32 = sub_1CF8403B4();
    v36(v10, v32);

    return sub_1CEFCCC44(v10, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

uint64_t sub_1CF8ADB0C(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1CF9E5A58();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  a2(v6, a1);
  return sub_1CEFCCC44(v6, &unk_1EC4BE310, qword_1CF9FCBE0);
}

uint64_t sub_1CF8ADBFC(uint64_t a1, uint64_t a2, void (*a3)(char *, id), void (*a4)(char *, id), void *a5, void *a6, void *a7)
{
  v67 = a6;
  v68 = a7;
  v70 = a5;
  v72 = a4;
  v74 = a3;
  v73 = sub_1CF9E5A58();
  v9 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v66 = v10;
  v71 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v63 - v19;
  v21 = type metadata accessor for VFSItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v63 - v25;
  v27 = a2;
  v28 = a2;
  v29 = a1;
  sub_1CF010CE0(v28, 0, 2, 3, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v9 + 56))(v17, 1, 1, v73);
    v30 = sub_1CF9E5928();
    v31 = FPItemNotFoundErrorAtURL();

    v74(v17, v31);
    return sub_1CEFCCC44(v17, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  else
  {
    v63 = v27;
    v34 = v73;
    v33 = v74;
    v35 = v20;
    v36 = v26;
    sub_1CEFDA0C4(v35, v26, type metadata accessor for VFSItem);
    if ([v70 supportsSyncingTrash])
    {
      v70 = *(v29 + 16);
      v37 = swift_allocObject();
      v65 = v37;
      v38 = v72;
      *(v37 + 16) = v33;
      *(v37 + 24) = v38;
      sub_1CEFDA34C(v26, v69, type metadata accessor for VFSItem);
      v39 = v9;
      (*(v9 + 16))(v71, v63, v34);
      v40 = (*(v22 + 80) + 24) & ~*(v22 + 80);
      v41 = (v23 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
      v43 = *(v9 + 80);
      v64 = v36;
      v44 = (v43 + v42 + 16) & ~v43;
      v45 = (v66 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      *(v46 + 16) = v29;
      sub_1CEFDA0C4(v69, v46 + v40, type metadata accessor for VFSItem);
      v47 = v67;
      *(v46 + v41) = v67;
      v48 = (v46 + v42);
      v49 = v73;
      *v48 = v74;
      v48[1] = v38;
      (*(v39 + 32))(v46 + v44, v71, v49);
      v50 = v68;
      *(v46 + v45) = v68;
      swift_retain_n();

      v51 = v47;
      v52 = v50;
      sub_1CF7AAF88("trashItem(at:request:completionHandler:)", 40, 2, 2, sub_1CF9034CC, v65, sub_1CF8FD604, v46);

      v53 = v64;
    }

    else
    {
      v54 = &v26[*(v21 + 28)];
      v55 = type metadata accessor for ItemMetadata(0);
      v56 = *(v9 + 56);
      v57 = v34;
      if (v54[*(v55 + 80)] == 1)
      {
        v58 = v64;
        v56(v64, 1, 1, v57);
        v59 = FPNotSupportedError();
        v33(v58, v59);

        v60 = v58;
      }

      else
      {
        v61 = v65;
        v56(v65, 1, 1, v34);
        v62 = FPNotSupportedError();
        v33(v61, v62);

        v60 = v61;
      }

      sub_1CEFCCC44(v60, &unk_1EC4BE310, qword_1CF9FCBE0);
      v53 = v26;
    }

    return sub_1CEFD5338(v53, type metadata accessor for VFSItem);
  }
}

void sub_1CF8AE234(void *a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v85 = a6;
  v80 = a8;
  v77 = a7;
  v83 = a3;
  v84 = a5;
  v86 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v76 - v11;
  v12 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v18 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
  v81 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v22 = Strong, v23 = [Strong indexer], v22, v23))
  {
    v24 = [v23 needsAuthentication];

    if (v24)
    {
      v25 = 30;
    }

    else
    {
      v25 = 22;
    }
  }

  else
  {
    v25 = 22;
  }

  v26 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v27 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v28 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v75 = v18;
  v29 = v83;
  v30 = sub_1CF76BB00(v83, v25, 0, v26, v20, v12, v19, v27, &off_1F4BF8588, v28, v75);
  v26, v31, v32, v33, v34, v35, v36, v37;
  if (([v30 capabilities] & 0x10) != 0)
  {
    v54 = [v30 strippedCopy];
    [v54 setTrashed_];
    [v54 setParentItemIdentifier_];
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
    v56 = swift_allocBox();
    v86 = v56;
    v58 = v57;
    v59 = *(v55 + 48);
    v60 = sub_1CF9E5A58();
    (*(*(v60 - 8) + 16))(v58, v77, v60);
    v61 = v80;
    *(v58 + v59) = v80;
    v62 = v56 | 0x5000000000000000;
    v63 = swift_allocObject();
    v64 = v85;
    *(v63 + 16) = v84;
    *(v63 + 24) = v64;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1CF8FD72C;
    *(v65 + 24) = v63;
    v66 = swift_allocObject();
    *(v66 + 16) = 1073741828;
    *(v66 + 24) = v54;
    *(v66 + 32) = v62;
    *(v66 + 40) = sub_1CF8FD72C;
    v84 = v30;
    v67 = v81;
    *(v66 + 48) = v63;
    *(v66 + 56) = v67;
    *(v66 + 64) = 256;
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1CF90325C;
    *(v68 + 24) = v65;
    swift_retain_n();
    v69 = v61;

    v70 = v54;

    v71 = v67;

    sub_1CEFD4024("singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)", 78, 2, sub_1CF903280, v68, sub_1CF903324, v66);
  }

  else
  {
    v38 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFDA34C(v29, v14, type metadata accessor for VFSItem);
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v87 = v42;
      *v41 = 136315138;
      v43 = sub_1CF255338();
      v45 = v44;
      sub_1CEFD5338(v14, type metadata accessor for VFSItem);
      v46 = sub_1CEFD0DF0(v43, v45, &v87);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v41 + 4) = v46;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "%s doesn't support trashing..", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D386CDC0](v42, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);
    }

    else
    {

      sub_1CEFD5338(v14, type metadata accessor for VFSItem);
    }

    (*(v78 + 8))(v17, v79);
    v72 = sub_1CF9E5A58();
    v73 = v82;
    (*(*(v72 - 8) + 56))(v82, 1, 1, v72);
    v74 = FPNotSupportedError();
    (v84)(v73, v74);

    sub_1CEFCCC44(v73, &unk_1EC4BE310, qword_1CF9FCBE0);
  }
}

uint64_t sub_1CF8AE920(void *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = sub_1CF9E5A58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  if (a1)
  {
    v17 = a1;
    v18 = [v17 fileURL];
    if (v18)
    {
      v19 = v18;
      sub_1CF9E59D8();

      (*(v7 + 32))(v12, v9, v6);
      (*(v7 + 16))(v16, v12, v6);
      (*(v7 + 56))(v16, 0, 1, v6);
      a3(v16, 0);

      sub_1CEFCCC44(v16, &unk_1EC4BE310, qword_1CF9FCBE0);
      return (*(v7 + 8))(v12, v6);
    }

    else
    {
      result = sub_1CF9E7B68();
      __break(1u);
    }
  }

  else
  {
    (*(v7 + 56))(v16, 1, 1, v6, v14);
    a3(v16, a2);
    return sub_1CEFCCC44(v16, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  return result;
}

uint64_t FPDDomainFPFSBackend.resolveConflict(at:request:completionHandler:)(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(void))
{
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v11);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  v16 = (v15 + v14);
  *v16 = a3;
  v16[1] = a4;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;
  swift_retain_n();
  v17 = a2;
  sub_1CF8EB0F8("resolveConflict(at:request:completionHandler:)", 46, 2, sub_1CF8F3560, v15, v19[1], a3, a4);
}

void sub_1CF8AEEB0(uint64_t a1, uint64_t a2, void (*a3)(id), void (*a4)(id), void *a5)
{
  v129 = a5;
  v141 = a4;
  v144 = a3;
  v126 = sub_1CF9E63D8();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v140 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v120 - v11;
  v12 = sub_1CF9E6068();
  v136 = *(v12 - 8);
  v137 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v132 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v130 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v120 - v17;
  v131 = type metadata accessor for Signpost(0);
  v133 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v138 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = v21;
  v135 = (&v120 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v145 = &v120 - v23;
  v139 = sub_1CF9E5A58();
  v128 = *(v139 - 8);
  v24 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v127 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v120 - v26;
  v28 = type metadata accessor for VFSItem(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v120 - v33;
  v35 = a2;
  sub_1CF010CE0(a2, 1, 2, 0, v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_1CEFCCC44(v27, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v36 = sub_1CF9E5928();
    v37 = FPItemNotFoundErrorAtURL();

    v144(v37);
  }

  else
  {
    v121 = type metadata accessor for VFSItem;
    sub_1CEFDA0C4(v27, v34, type metadata accessor for VFSItem);
    v122 = a1;
    v142 = *(a1 + 16);
    v123 = v34;
    sub_1CEFDA34C(v34, v31, type metadata accessor for VFSItem);
    v38 = v128;
    v39 = v127;
    v40 = v35;
    v41 = v139;
    (*(v128 + 16))(v127, v40, v139);
    v42 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v43 = (v30 + *(v38 + 80) + v42) & ~*(v38 + 80);
    v44 = (v24 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    sub_1CEFDA0C4(v31, v46 + v42, v121);
    (*(v38 + 32))(v46 + v43, v39, v41);
    v47 = v129;
    *(v46 + v44) = v129;
    *(v46 + v45) = v122;
    v139 = v46;
    v48 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
    v49 = v144;
    v50 = v141;
    *v48 = v144;
    v48[1] = v50;
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = v50;
    v144 = v51;
    swift_retain_n();
    v52 = v47;

    v141 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v53 = qword_1EDEBBE40;
    v55 = v136;
    v54 = v137;
    v56 = v143;
    (*(v136 + 56))(v143, 1, 1, v137);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v57 = sub_1CF9E7988();
    v59 = v58;
    MEMORY[0x1D3868CC0](v57);
    v59, v60, v61, v62, v63, v64, v65, v66;
    v67 = aBlock;
    v68 = v130;
    sub_1CEFCCBDC(v56, v130, &unk_1EC4BED20, &unk_1CFA00700);
    v69 = *(v55 + 48);
    v70 = v69(v68, 1, v54);
    v71 = v132;
    if (v70 == 1)
    {
      v72 = v53;
      sub_1CF9E6048();
      if (v69(v68, 1, v54) != 1)
      {
        sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v55 + 32))(v132, v68, v54);
    }

    v73 = v145;
    (*(v55 + 16))(v145, v71, v54);
    v74 = v131;
    *(v73 + *(v131 + 20)) = v53;
    v75 = v73 + *(v74 + 24);
    *v75 = "DB queue wait";
    *(v75 + 8) = 13;
    *(v75 + 16) = 2;
    v76 = v53;
    v77 = v71;
    v78 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1CF9FA450;
    *(v79 + 56) = MEMORY[0x1E69E6158];
    *(v79 + 64) = sub_1CEFD51C4();
    *(v79 + 32) = v67;
    sub_1CF9E6028(v78, &dword_1CEFC7000, v76, "DB queue wait", 13, 2, v73, "%s", 2);
    v79, v80, v81, v82, v83, v84, v85, v86;
    (*(v55 + 8))(v77, v54);
    sub_1CEFCCC44(v143, &unk_1EC4BED20, &unk_1CFA00700);
    v137 = *(v142 + 168);
    v143 = *(v142 + 64);
    v132 = sub_1CF9E6448();
    v136 = *(v132 - 1);
    (*(v136 + 56))(v146, 1, 1, v132);
    v87 = v135;
    sub_1CEFDA34C(v73, v135, type metadata accessor for Signpost);
    v88 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v89 = (v134 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
    v90 = swift_allocObject();
    sub_1CEFDA0C4(v87, v90 + v88, type metadata accessor for Signpost);
    v91 = (v90 + v89);
    v135 = sub_1CF5543A4;
    v92 = v144;
    *v91 = sub_1CF5543A4;
    v91[1] = v92;
    v93 = v138;
    sub_1CEFDA34C(v73, v138, type metadata accessor for Signpost);
    v94 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 25) & 0xFFFFFFFFFFFFFFF8;
    v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    sub_1CEFDA0C4(v93, v98 + v88, type metadata accessor for Signpost);
    v99 = (v98 + v89);
    v100 = v132;
    *v99 = sub_1CF045408;
    v99[1] = 0;
    *(v98 + v94) = v142;
    v101 = v98 + v95;
    *v101 = "resolveConflict(at:request:completionHandler:)";
    *(v101 + 8) = 46;
    *(v101 + 16) = 2;
    v102 = (v98 + v96);
    v103 = v136;
    v104 = v144;
    *v102 = v135;
    v102[1] = v104;
    v105 = (v98 + v97);
    v106 = v139;
    *v105 = sub_1CF8FD4EC;
    v105[1] = v106;
    v107 = swift_allocObject();
    v107[2] = sub_1CF903308;
    v107[3] = v90;
    v108 = v137;
    v107[4] = v137;
    swift_retain_n();

    v142 = v90;

    v109 = fpfs_current_log();
    v110 = *(v108 + 16);
    v111 = v140;
    sub_1CEFCCBDC(v146, v140, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v103 + 48))(v111, 1, v100) == 1)
    {
      sub_1CEFCCC44(v111, &unk_1EC4BE370, qword_1CFA01B30);
      v112 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v113 = v124;
      sub_1CF9E6438();
      (*(v103 + 8))(v111, v100);
      v112 = sub_1CF9E63C8();
      (*(v125 + 8))(v113, v126);
    }

    v114 = swift_allocObject();
    v114[2] = v109;
    v114[3] = sub_1CF4858EC;
    v114[4] = v98;
    v150 = sub_1CF2BA17C;
    v151 = v114;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v148 = sub_1CEFCA444;
    v149 = &block_descriptor_3697;
    v115 = _Block_copy(&aBlock);
    v116 = v109;

    v150 = sub_1CF2BA180;
    v151 = v107;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v148 = sub_1CEFCA444;
    v149 = &block_descriptor_3700;
    v117 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v110, v143, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v112, v115, v117);
    _Block_release(v117);
    _Block_release(v115);

    sub_1CEFCCC44(v146, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v145, type metadata accessor for Signpost);
    v118 = v141;
    v119 = fpfs_adopt_log();

    sub_1CEFD5338(v123, type metadata accessor for VFSItem);
  }
}

void sub_1CF8AFD10(void *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void, __n128))
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = *(a2 + 8);
  v24 = *a2;
  v25 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20E8, &unk_1CFA0F480);
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *(v14 + 48);
  v19 = sub_1CF9E5A58();
  (*(*(v19 - 8) + 16))(v17, a3, v19);
  *(v17 + v18) = a4;
  v20 = *(a5 + 16);
  v21 = a4;
  v22 = v26;
  sub_1CF9827DC(&v24, v15 | 0xB000000000000000, v20, v12, v10, v11);

  if (!v22)
  {
    (a6)(0);
  }
}

id sub_1CF8B0088(void *a1, unint64_t a2, char *a3)
{
  v277 = a3;
  v279 = a2;
  v280[1] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v275 = &v254 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v276 = &v254 - v7;
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v272 = &v254 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v269 = &v254 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v268 = &v254 - v14;
  v15 = sub_1CF9E5A58();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v271 = &v254 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v254 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v273 = &v254 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v267 = &v254 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v266 = &v254 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v254 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v254 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v254 - v34;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v255 = v9;
  v256 = v8;
  v37 = result;
  v38 = [result volume];
  v39 = [v38 purgatoryDirectory];

  sub_1CF9E59D8();
  sub_1CF9E5968();
  v263 = v16;
  v40 = *(v16 + 8);
  v265 = v32;
  v40(v32, v15);
  v41 = [a1 itemVersion];
  v42 = v15;
  if (!v41)
  {
    v40(v35, v15);

    return 0;
  }

  v274 = v40;
  v270 = v16 + 8;
  v260 = v37;
  v264 = v35;
  v257 = v29;
  v261 = v20;
  v43 = v41;
  v44 = objc_opt_self();
  v262 = a1;
  v45 = [a1 itemID];
  sub_1CF9E5878();
  v47 = v46;
  v48 = sub_1CF9E6888();
  v47, v49, v50, v51, v52, v53, v54, v55;
  v259 = v43;
  v56 = [v44 versionFaultName:v43 identifier:v45 ext:v48];

  v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v278 = v58;

  v280[0] = MEMORY[0x1E69E7CC0];
  v59 = v279;
  if (v279 >> 62)
  {
LABEL_33:
    v60 = sub_1CF9E7818();
  }

  else
  {
    v60 = *((v279 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v274;
  v258 = v42;
  if (v60)
  {
    v62 = 0;
    v42 = v59 & 0xC000000000000001;
    v63 = v59 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v42)
      {
        v64 = MEMORY[0x1D3869C30](v62, v59);
      }

      else
      {
        if (v62 >= *(v63 + 16))
        {
          goto LABEL_32;
        }

        v64 = *(v59 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v67 = [v64 name];
      if (v67)
      {
        v68 = v67;
        v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v71 = v70;

        if (v69 == v57 && v71 == v278)
        {
          v71, v72, v73, v278, v74, v75, v76, v77;
LABEL_21:
          sub_1CF9E7A18();
          sub_1CF9E7A58();
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v59 = v279;
          goto LABEL_8;
        }

        v79 = sub_1CF9E8048();
        v71, v80, v81, v82, v83, v84, v85, v86;
        if (v79)
        {
          goto LABEL_21;
        }

        v59 = v279;
      }

      else
      {
      }

LABEL_8:
      ++v62;
      if (v66 == v60)
      {
        v87 = v280[0];
        v42 = v258;
        v61 = v274;
        v88 = v265;
        if ((v280[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }
    }
  }

  v87 = MEMORY[0x1E69E7CC0];
  v88 = v265;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  if ((v87 & 0x4000000000000000) != 0)
  {
LABEL_34:
    v97 = sub_1CF9E7818();
    v88 = v265;

    if (v97)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v89 = *(v87 + 16);

    if (v89)
    {
LABEL_29:
      v61(v264, v42);
      v278, v90, v91, v92, v93, v94, v95, v96;

      return 0;
    }
  }

  v98 = v264;
  sub_1CF9E5968();
  v99 = sub_1CF9E5928();
  v61(v88, v42);
  v279 = v99;
  result = _CFURLCopyPromiseURLOfLogicalURL();
  if (!result)
  {
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v100 = result;
  v101 = v257;
  sub_1CF9E59D8();

  v102 = objc_opt_self();
  v103 = [v102 defaultManager];
  sub_1CF9E5A18();
  v105 = v104;
  v106 = sub_1CF9E6888();
  v105, v107, v108, v109, v110, v111, v112, v113;
  v280[0] = 0;
  v114 = [v103 createDirectoryAtPath:v106 withIntermediateDirectories:1 attributes:0 error:v280];

  if (v114)
  {
    v115 = v280[0];
    v116 = [v102 defaultManager];
    sub_1CF9E5A18();
    v118 = v117;
    v119 = sub_1CF9E6888();
    v118, v120, v121, v122, v123, v124, v125, v126;
    LOBYTE(v118) = [v116 fileExistsAtPath_];

    if (v118)
    {
      v127 = 0;
      v128 = v101;
      v129 = v263;
      goto LABEL_53;
    }

    v156 = [v102 defaultManager];
    sub_1CF9E5A18();
    v158 = v157;
    v159 = sub_1CF9E6888();
    v158, v160, v161, v162, v163, v164, v165, v166;
    LODWORD(v158) = [v156 createFileAtPath:v159 contents:0 attributes:0];

    v167 = fpfs_current_or_default_log();
    v129 = v263;
    v168 = (v263 + 16);
    v128 = v101;
    if (v158)
    {
      v169 = v268;
      sub_1CF9E6128();
      v170 = v266;
      (*v168)(v266, v128, v42);
      v171 = sub_1CF9E6108();
      v172 = sub_1CF9E7288();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v280[0] = v174;
        *v173 = 136315138;
        sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v175 = sub_1CF9E7F98();
        v176 = v170;
        v178 = v177;
        v274(v176, v42);
        v179 = sub_1CEFD0DF0(v175, v178, v280);
        v178, v180, v181, v182, v183, v184, v185, v186;
        *(v173 + 4) = v179;
        _os_log_impl(&dword_1CEFC7000, v171, v172, "Created promise URL for thumbnail at URL: %s", v173, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v174);
        v187 = v174;
        v128 = v257;
LABEL_48:
        MEMORY[0x1D386CDC0](v187, -1, -1);
        MEMORY[0x1D386CDC0](v173, -1, -1);

LABEL_52:
        (*(v255 + 8))(v169, v256);
        v127 = 0;
        goto LABEL_53;
      }

      v203 = v170;
    }

    else
    {
      v169 = v269;
      sub_1CF9E6128();
      v188 = v267;
      (*v168)(v267, v128, v42);
      v171 = sub_1CF9E6108();
      v189 = sub_1CF9E72A8();
      if (os_log_type_enabled(v171, v189))
      {
        v173 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v280[0] = v190;
        *v173 = 136315138;
        sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v191 = sub_1CF9E7F98();
        v193 = v192;
        v274(v188, v42);
        v194 = sub_1CEFD0DF0(v191, v193, v280);
        v195 = v193;
        v128 = v257;
        v195, v196, v197, v198, v199, v200, v201, v202;
        *(v173 + 4) = v194;
        _os_log_impl(&dword_1CEFC7000, v171, v189, "Failed to created thumbnail directory for URL: %s", v173, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v190);
        v187 = v190;
        goto LABEL_48;
      }

      v203 = v188;
    }

    v274(v203, v42);
    goto LABEL_52;
  }

  v130 = v280[0];
  v131 = sub_1CF9E57F8();

  swift_willThrow();
  v127 = 0;
  v132 = fpfs_current_or_default_log();
  v133 = v272;
  sub_1CF9E6128();
  v134 = v271;
  (*(v263 + 16))(v271, v98, v42);
  v135 = v131;
  v136 = sub_1CF9E6108();
  v137 = sub_1CF9E72A8();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v269 = 0;
    v141 = v140;
    v280[0] = v140;
    *v138 = 136315394;
    sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v142 = sub_1CF9E7F98();
    v144 = v143;
    v274(v134, v42);
    v145 = sub_1CEFD0DF0(v142, v144, v280);
    v144, v146, v147, v148, v149, v150, v151, v152;
    *(v138 + 4) = v145;
    *(v138 + 12) = 2112;
    v153 = v131;
    v154 = _swift_stdlib_bridgeErrorToNSError();
    *(v138 + 14) = v154;
    *v139 = v154;
    _os_log_impl(&dword_1CEFC7000, v136, v137, "Failed to created thumbnail directory for URL: %s, error: %@", v138, 0x16u);
    sub_1CEFCCC44(v139, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v139, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v141);
    v155 = v141;
    v127 = v269;
    MEMORY[0x1D386CDC0](v155, -1, -1);
    MEMORY[0x1D386CDC0](v138, -1, -1);

    (*(v255 + 8))(v272, v256);
  }

  else
  {

    v274(v134, v42);
    (*(v255 + 8))(v133, v256);
  }

  v128 = v257;
  v129 = v263;
LABEL_53:
  v204 = v273;
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  v205 = *(v129 + 16);
  v205(v204, v128, v42);
  v206 = sub_1CF02BFF8(v204, 0);
  if (v127)
  {

    v207 = 0;
  }

  else
  {
    v207 = v206;
  }

  v208 = v262;
  v209 = v276;
  result = [v262 itemVersion];
  if (!result)
  {
    goto LABEL_72;
  }

  v217 = result;
  v278, v210, v211, v212, v213, v214, v215, v216;
  v218 = [v208 displayName];
  if (!v218)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v220 = v219;
    v218 = sub_1CF9E6888();
    v220, v221, v222, v223, v224, v225, v226, v227;
  }

  v205(v261, v277, v42);
  v228 = [v208 itemID];
  v229 = [v208 contentModificationDate];
  v278 = v228;
  if (v229)
  {
    v230 = v229;
    sub_1CF9E5CB8();

    v231 = 0;
  }

  else
  {
    v231 = 1;
  }

  v232 = sub_1CF9E5CF8();
  v233 = *(v232 - 8);
  v234 = 1;
  (*(v233 + 56))(v209, v231, 1, v232);
  v235 = [v262 mostRecentEditorNameComponents];
  v273 = v207;
  v236 = v275;
  if (v235)
  {
    v237 = v235;
    sub_1CF9E5738();

    v234 = 0;
  }

  v238 = sub_1CF9E5748();
  v239 = *(v238 - 8);
  (*(v239 + 56))(v236, v234, 1, v238);
  v240 = [v262 documentSize];
  v241 = sub_1CF9E5928();
  v242 = v276;
  v243 = 0;
  if ((*(v233 + 48))(v276, 1, v232) != 1)
  {
    v243 = sub_1CF9E5C48();
    (*(v233 + 8))(v242, v232);
  }

  v244 = v275;
  if ((*(v239 + 48))(v275, 1, v238) == 1)
  {
    v245 = 0;
  }

  else
  {
    v245 = sub_1CF9E5728();
    (*(v239 + 8))(v244, v238);
  }

  v246 = v261;
  v247 = objc_allocWithZone(MEMORY[0x1E6967340]);
  v248 = v273;
  v249 = v278;
  v250 = [v247 initWithVersion:v217 displayName:v218 originalURL:v241 physicalURL:v273 identifier:v278 modificationDate:v243 lastEditorNameComponents:v245 size:v240];

  v251 = v246;
  v252 = v258;
  v253 = v274;
  v274(v251, v258);
  v253(v257, v252);
  v253(v264, v252);
  return v250;
}

void sub_1CF8B12B4(void *a1, char a2, void (*a3)(void, void *, __n128), uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v24 = a7;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  if (a2)
  {
    a3(MEMORY[0x1E69E7CC0], a1, v16);
  }

  else
  {
    v23 = a1;
    if (qword_1EDEAB5F0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDEBBA38;
    (*(v14 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v13);
    v17 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = a3;
    *(v18 + 3) = a4;
    *(v18 + 4) = a5;
    (*(v14 + 32))(&v18[v17], &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v18[v17 + v15] = v24 & 1;
    aBlock[4] = sub_1CF8FD3B4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF919B5C;
    aBlock[3] = &block_descriptor_3667;
    v19 = _Block_copy(aBlock);

    v20 = a5;

    [v23 enumerateItemsFromPage:v22 suggestedPageSize:128 upTo:-1 reply:v19];
    _Block_release(v19);
  }
}

void sub_1CF8B1504(unint64_t a1, id a2, char *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a4;
  v8 = a3;
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_24;
    }

    if (a1 >> 62)
    {
      goto LABEL_23;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_24:
      (v8)(MEMORY[0x1E69E7CC0], 0, a3, a4, a5, a6, a7);
      return;
    }

    while (1)
    {
      v43 = v7;
      v12 = a1;
      v13 = a6;
      v14 = sub_1CF8F5280(a6, a7 & 1);
      MEMORY[0x1EEE9AC00](v14);
      v41[2] = a5;
      v41[3] = v15;
      v42 = v15;
      v41[4] = v13;
      a1 = sub_1CF7F0E4C(sub_1CF8FD45C, v41, v12);
      v21 = a1;
      v44 = v8;
      if (a1 >> 62)
      {
        a1 = sub_1CF9E7818();
        v7 = a1;
        if (!a1)
        {
LABEL_26:
          v42, v16, v17, v18, v19, a6, a7, v20;
          (v44)(v21, 0);
          v21, v34, v35, v36, v37, v38, v39, v40;
          return;
        }
      }

      else
      {
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_26;
        }
      }

      v22 = 0;
      v8 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_domain;
      v45 = v21 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x1D3869C30](v22, v21);
        }

        else
        {
          if (v22 >= *(v45 + 16))
          {
            goto LABEL_22;
          }

          a1 = *(v21 + 8 * v22 + 32);
        }

        v24 = a1;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v27 = Strong;
          v28 = [Strong versionsCache];

          a1 = [v24 etag];
          if (!a1)
          {
            __break(1u);
            break;
          }

          v23 = a1;
          [v28 setObject:v24 forKey:a1];
        }

        ++v22;
        if (v25 == v7)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v29 = a1;
      v30 = a6;
      v31 = a7;
      v32 = sub_1CF9E7818();
      a7 = v31;
      a6 = v30;
      v33 = v32;
      a1 = v29;
      if (v33 < 1)
      {
        goto LABEL_24;
      }
    }
  }

  v10 = a2;
  (v8)(MEMORY[0x1E69E7CC0], a2);
}

uint64_t FPDDomainFPFSBackend.listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a2;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v9 + 32))(v15 + v13, v11, v8);
  v16 = v25;
  *(v15 + v14) = v25;
  v17 = v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v23;
  *v17 = v23;
  *(v17 + 8) = v24;
  swift_retain_n();

  v19 = v16;
  v20 = v18;
  sub_1CF8EF448("listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)", 77, 2, sub_1CF8F3594, v15, v19, sub_1CF8F3564, v12);
}

double sub_1CF8B19C0(uint64_t a1, void (*a2)(void, void, id), uint64_t a3, uint64_t a4, void *a5, void *a6, int a7)
{
  v62 = a7;
  v63 = a6;
  v64 = a5;
  v69 = sub_1CF9E5A58();
  v61 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v60 = v11;
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54 - v13;
  v15 = type metadata accessor for VFSItem(0);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v54 - v18;
  v19 = swift_allocObject();
  v58 = a2;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = sub_1CF902ECC;
  v21[3] = v19;
  v21[4] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CF8FCF64;
  *(v22 + 24) = v21;
  v66 = v22;
  swift_retain_n();

  v23 = a4;
  v24 = a4;
  v25 = a1;
  v26 = v65;
  sub_1CF010CE0(v24, 1, 2, 0, v14);
  if ((*(v26 + 48))(v14, 1, v15) != 1)
  {

    v56 = type metadata accessor for VFSItem;
    v33 = v68;
    sub_1CEFDA0C4(v14, v68, type metadata accessor for VFSItem);
    v55 = v25;
    v58 = *(v25 + 16);
    v34 = swift_allocObject();
    v54 = sub_1CF8FCF78;
    v57 = v34;
    v35 = v66;
    *(v34 + 16) = sub_1CF8FCF78;
    *(v34 + 24) = v35;
    v36 = v33;
    v37 = v59;
    sub_1CEFDA34C(v36, v59, type metadata accessor for VFSItem);
    v38 = v61;
    (*(v61 + 16))(v67, v23, v69);
    v39 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v40 = (v16 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v38 + 80) + v41 + 16) & ~*(v38 + 80);
    v43 = (v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v56;
    *(v44 + 16) = v55;
    sub_1CEFDA0C4(v37, v44 + v39, v45);
    v46 = v64;
    *(v44 + v40) = v64;
    v47 = (v44 + v41);
    *v47 = v54;
    v47[1] = v35;
    (*(v38 + 32))(v44 + v42, v67, v69);
    v48 = v44 + v43;
    v49 = v63;
    *v48 = v63;
    *(v48 + 8) = v62 & 1;
    swift_retain_n();

    v50 = v46;
    v51 = v49;
    sub_1CF7AAF88("listRemoteVersionsOfItem(at:includeCachedVersions:request:completionHandler:)", 77, 2, 2, sub_1CF8FCFB8, v57, sub_1CF8FCFF0, v44);

    sub_1CEFD5338(v68, type metadata accessor for VFSItem);
    return result;
  }

  sub_1CEFCCC44(v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v27 = sub_1CF9E5928();
  v28 = FPItemNotFoundErrorAtURL();

  if (!v28)
  {
    v58(0, MEMORY[0x1E69E7CC0], 0);

LABEL_8:

    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v30 = v28;
  if (!Strong)
  {
    v53 = FPDomainUnavailableError();
    v58(0, MEMORY[0x1E69E7CC0], v53);

    goto LABEL_8;
  }

  v31 = swift_allocObject();
  *(v31 + 2) = sub_1CF902ECC;
  *(v31 + 3) = v19;
  v32 = MEMORY[0x1E69E7CC0];
  *(v31 + 4) = 0;
  *(v31 + 5) = v32;

  sub_1CF915D74(v30, 0, sub_1CF8FCFB4, v31);

LABEL_9:

  return result;
}

double sub_1CF8B2048(void *a1, uint64_t a2, _BYTE *a3, char *a4, void (*a5)(uint64_t a1), void *a6, char *a7, void *a8, unsigned __int8 a9)
{
  v301 = a2;
  v288 = a8;
  v293 = a7;
  v297 = a5;
  v298 = a6;
  v300 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v279 = &v272 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v280 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v283 = &v272 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v281 = &v272 - v16;
  v282 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v286 = &v272 - v19;
  v20 = sub_1CF9E5A58();
  v289 = *(v20 - 8);
  v290 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v287 = v21;
  v292 = &v272 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E6118();
  v295 = *(v22 - 8);
  v296 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v272 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v284 = &v272 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v272 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v299 = __swift_project_boxed_opaque_existential_1(a1, v30);
  v291 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  v285 = v24;
  v294 = v29;
  if (Strong && (v33 = Strong, v34 = [Strong indexer], v33, v34))
  {
    v35 = [v34 needsAuthentication];

    if (v35)
    {
      v36 = 25;
    }

    else
    {
      v36 = 17;
    }
  }

  else
  {
    v36 = 17;
  }

  v37 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v38 = type metadata accessor for VFSItem(0);
  v39 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v40 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v41 = v300;
  v42 = v30;
  v43 = v301;
  v44 = sub_1CF76BB00(v300, v36, 0, v37, v299, v38, v42, v39, &off_1F4BF8588, v40, v31);
  v37, v45, v46, v47, v48, v49, v50, v51;
  v52 = [v44 providerItemIdentifier];
  if (!v52)
  {
    v62 = v44;
    v63 = fpfs_current_or_default_log();
    v64 = v294;
    sub_1CF9E6128();
    v65 = sub_1CF9E6108();
    v66 = sub_1CF9E7298();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1CEFC7000, v65, v66, "listRemoteVersions: item doesn't have a providerItemIdentifier, no versions", v67, 2u);
      MEMORY[0x1D386CDC0](v67, -1, -1);
    }

    (*(v295 + 8))(v64, v296);
    (v297)(0, MEMORY[0x1E69E7CC0], 0);
    goto LABEL_13;
  }

  v53 = v52;
  v54 = a1[3];
  v55 = a1[4];
  v56 = __swift_project_boxed_opaque_existential_1(a1, v54);
  v57 = *(v43 + 16);
  v58 = v41[8];
  v308 = *v41;
  v309 = v58;

  v59 = v56;
  v60 = v302;
  sub_1CF68DDB0(&v308, v59, v54, v55, v310);
  if (v60)
  {

    return result;
  }

  v299 = v44;

  memcpy(v306, v310, sizeof(v306));
  memcpy(v307, v310, sizeof(v307));
  if (sub_1CF08B99C(v307) == 1)
  {
    v68 = sub_1CF9E5928();
    v69 = FPItemNotFoundErrorAtURL();

    (v297)(0, MEMORY[0x1E69E7CC0], v69);
    return result;
  }

  v302 = 0;
  LODWORD(v294) = a9;
  if (LOBYTE(v307[1]) == 255 || !v307[31] || v307[24] >> 60 == 11 || LOBYTE(v307[43]))
  {
    v106 = swift_allocObject();
    v107 = v298;
    v106[2] = v297;
    v106[3] = v107;
    v108 = v299;
    v106[4] = v299;
    v109 = *(v57[5] + 16);
    type metadata accessor for FPFileTree(0);
    v301 = swift_dynamicCastClassUnconditional();
    v110 = *&v291[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
    v297 = v109;
    if (v110)
    {
      v57 = *(v110 + 16);

      v111 = v108;

      v78 = objc_sync_enter(v112);
      if (v78)
      {
LABEL_66:
        MEMORY[0x1EEE9AC00](v78);
        v271 = v57;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v270, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v113 = *(v57 + qword_1EDEADB30);
      v114 = v113;
      v115 = objc_sync_exit(v57);
      if (v115)
      {
        MEMORY[0x1EEE9AC00](v115);
        v271 = v57;
        goto LABEL_68;
      }

      v300 = v113;
    }

    else
    {

      v116 = v108;

      v300 = 0;
    }

    v117 = v289;
    v118 = v290;
    (*(v289 + 16))(v292, v293, v290);
    v119 = (*(v117 + 80) + 40) & ~*(v117 + 80);
    v120 = v119 + v287;
    v121 = swift_allocObject();
    *(v121 + 2) = sub_1CF8FD12C;
    *(v121 + 3) = v106;
    v123 = v291;
    v122 = v292;
    *(v121 + 4) = v291;
    (*(v117 + 32))(&v121[v119], v122, v118);
    v121[v120] = v294 & 1;
    v124 = v123;

    v62 = v300;
    sub_1CF2D3200(v53, v288, v300, sub_1CF8FD164, v121);
    sub_1CEFCCC44(v306, &unk_1EC4BFC20, &unk_1CFA0A290);

LABEL_13:

    return result;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C51F0, qword_1CFA17B30);
  v278 = swift_allocBox();
  v72 = v71;
  v73 = *(v70 + 48);
  v74 = *(v289 + 16);
  v74(v71, v293, v290);
  v75 = v288;
  *(v72 + v73) = v288;
  v76 = *v41;
  LOBYTE(v72) = v41[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
  v77 = swift_allocObject();
  *(v77 + 32) = v76;
  v276 = v77 + 32;
  v277 = v77;
  *(v77 + 40) = v72;
  *(v77 + 41) = 0;
  *(v77 + 16) = v76;
  *(v77 + 24) = v72;
  *(v77 + 25) = 0;
  v273 = v75;
  v78 = objc_sync_enter(v57);
  if (v78)
  {
    goto LABEL_66;
  }

  v275 = *(v57 + qword_1EDEADAA8);
  v288 = v57;
  v79 = objc_sync_exit(v57);
  if (v79)
  {
    MEMORY[0x1EEE9AC00](v79);
    v271 = v288;
LABEL_68:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v270, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v300 = (v278 | 0xA000000000000002);
  v274 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v74(v292, v293, v290);
  v80 = v289;
  v81 = (*(v289 + 80) + 40) & ~*(v289 + 80);
  v82 = (v287 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v293 = ((v83 + 15) & 0xFFFFFFFFFFFFFFF8);
  v287 = (v83 + 31) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v85 = v298;
  *(v84 + 16) = v297;
  *(v84 + 24) = v85;
  v87 = v291;
  v86 = v292;
  *(v84 + 32) = v291;
  (*(v80 + 32))(v84 + v81, v86, v290);
  v88 = v273;
  *(v84 + v82) = v273;
  *(v84 + v83) = v53;
  v89 = &v293[v84];
  *v89 = v301;
  v89[8] = v294 & 1;
  v297 = v84;
  v90 = v299;
  *(v84 + v287) = v299;
  v91 = v88;

  v92 = v87;
  v298 = v53;

  v294 = v90;
  v93 = fpfs_current_or_default_log();
  v94 = v284;
  sub_1CF9E6128();
  swift_retain_n();
  v95 = v277;

  v96 = sub_1CF9E6108();
  v97 = sub_1CF9E7298();
  if (os_log_type_enabled(v96, v97))
  {
    LODWORD(v301) = v97;
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v303[0] = v99;
    *v98 = 136315394;
    v100 = swift_beginAccess();
    v101 = *(v95 + 32);
    v102 = *(v95 + 40);
    if (*(v95 + 41))
    {
      v103 = NSFileProviderItemIdentifier.description.getter(v101);
      v105 = v104;
      sub_1CEFD0994(v101, v102, 1);
    }

    else
    {
      v304 = *(v95 + 32);
      v305 = v102;
      v103 = VFSItemID.description.getter(v100);
      v105 = v127;
    }

    v128 = sub_1CEFD0DF0(v103, v105, v303);
    v105, v129, v130, v131, v132, v133, v134, v135;
    *(v98 + 4) = v128;
    *(v98 + 12) = 2080;
    v136 = sub_1CEFD11AC(v300);
    v138 = v137;

    v139 = sub_1CEFD0DF0(v136, v138, v303);
    v138, v140, v141, v142, v143, v144, v145, v146;
    *(v98 + 14) = v139;
    _os_log_impl(&dword_1CEFC7000, v96, v301, "Request to materialize content of itemID %s reason %s", v98, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v99, -1, -1);
    MEMORY[0x1D386CDC0](v98, -1, -1);

    v125 = *(v295 + 8);
    v126 = v284;
  }

  else
  {

    v125 = *(v295 + 8);
    v126 = v94;
  }

  v290 = v125;
  v125(v126, v296);
  v147 = v279;
  sub_1CEFCCBDC(v288 + qword_1EDEBBC18, v279, &qword_1EC4BFB10, &unk_1CFA12AD0);
  v148 = type metadata accessor for TelemetrySignposter(0);
  v149 = (*(*(v148 - 8) + 48))(v147, 1, v148);
  v150 = v286;
  if (v149 == 1)
  {
    sub_1CEFCCC44(v147, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v151 = 1;
  }

  else
  {
    sub_1CF519DE8(0, v286);
    sub_1CEFD5338(v147, type metadata accessor for TelemetrySignposter);
    v151 = 0;
  }

  v152 = type metadata accessor for TelemetrySignpost(0);
  (*(*(v152 - 8) + 56))(v150, v151, 1, v152);
  v153 = v281;
  sub_1CEFCCBDC(v150, v281, qword_1EC4C1588, &unk_1CFA0A260);
  v154 = *(v280 + 80);
  v155 = (v154 + 16) & ~v154;
  v156 = v282;
  v157 = (v282 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v158 = swift_allocObject();
  v301 = v158;
  sub_1CEFE55D0(v153, v158 + v155, qword_1EC4C1588, &unk_1CFA0A260);
  v159 = (v158 + v157);
  v160 = v297;
  *v159 = sub_1CF8FD168;
  v159[1] = v160;
  v161 = v283;
  sub_1CEFCCBDC(v150, v283, qword_1EC4C1588, &unk_1CFA0A260);
  v162 = (v154 + 24) & ~v154;
  v293 = ((v162 + v156 + 7) & 0xFFFFFFFFFFFFFFF8);
  v163 = (v162 + v156 + 31) & 0xFFFFFFFFFFFFFFF8;
  v299 = ((v163 + 15) & 0xFFFFFFFFFFFFFFF8);
  v164 = (v163 + 31) & 0xFFFFFFFFFFFFFFF8;
  v165 = (v164 + 15) & 0xFFFFFFFFFFFFFFF8;
  v166 = swift_allocObject();
  *(v166 + 16) = v300;
  sub_1CEFE55D0(v161, v166 + v162, qword_1EC4C1588, &unk_1CFA0A260);
  v167 = &v293[v166];
  *v167 = sub_1CF8FD168;
  *(v167 + 1) = v297;
  v168 = v275;
  v167[16] = v275;
  v169 = v288;
  *(v166 + v163) = v288;
  v170 = v169;
  v171 = &v299[v166];
  v172 = v277;
  *v171 = v277;
  v171[8] = 0;
  *(v166 + v164) = 2;
  v173 = v274;
  *(v166 + v165) = v274;
  v174 = v166 + ((v165 + 15) & 0xFFFFFFFFFFFFFFF8);
  v175 = v301;
  *v174 = sub_1CF903314;
  *(v174 + 8) = v175;
  *(v174 + 16) = 1;
  if (v168)
  {
    v176 = 2;
  }

  else
  {
    v176 = 1;
  }

  LODWORD(v289) = v176;
  v177 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  swift_retain_n();

  v293 = v173;

  v178 = [v177 init];
  v179 = swift_allocObject();
  *(v179 + 2) = sub_1CF903318;
  *(v179 + 3) = v166;
  v299 = v179;
  *(v179 + 4) = v300;
  swift_retain_n();
  v291 = v166;
  swift_retain_n();
  v180 = fpfs_current_or_default_log();
  v181 = v285;
  sub_1CF9E6128();
  swift_retain_n();

  v182 = sub_1CF9E6108();
  v183 = sub_1CF9E7298();
  v184 = os_log_type_enabled(v182, v183);
  v292 = v178;
  if (v184)
  {
    v185 = swift_slowAlloc();
    v287 = swift_slowAlloc();
    v311 = v287;
    *v185 = 136315906;
    v186 = swift_beginAccess();
    v187 = *(v172 + 32);
    v188 = *(v172 + 40);
    if (*(v172 + 41))
    {
      v189 = NSFileProviderItemIdentifier.description.getter(v187);
      v191 = v190;
      sub_1CEFD0994(v187, v188, 1);
    }

    else
    {
      v304 = *(v172 + 32);
      v305 = v188;
      v189 = VFSItemID.description.getter(v186);
      v191 = v192;
    }

    v193 = sub_1CEFD0DF0(v189, v191, &v311);
    v191, v194, v195, v196, v197, v198, v199, v200;
    *(v185 + 4) = v193;
    *(v185 + 12) = 2080;
    if (v275)
    {
      v201 = 0xD000000000000010;
    }

    else
    {
      v201 = 0x74616761706F7270;
    }

    if (v275)
    {
      v202 = 0x80000001CFA2C3C0;
    }

    else
    {
      v202 = 0xED000053466F5465;
    }

    v203 = sub_1CEFD0DF0(v201, v202, &v311);
    v202, v204, v205, v206, v207, v208, v209, v210;
    *(v185 + 14) = v203;
    *(v185 + 22) = 2080;
    v211 = sub_1CEFD11AC(v300);
    v213 = v212;

    v214 = sub_1CEFD0DF0(v211, v213, &v311);
    v213, v215, v216, v217, v218, v219, v220, v221;
    *(v185 + 24) = v214;
    *(v185 + 32) = 2048;
    *(v185 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v182, v183, "Lookup itemID %s with behavior %s request %s iteration %ld", v185, 0x2Au);
    v222 = v287;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v222, -1, -1);
    MEMORY[0x1D386CDC0](v185, -1, -1);

    v290(v285, v296);
    v170 = v288;
  }

  else
  {

    v290(v181, v296);
  }

  swift_beginAccess();
  v223 = *(v172 + 32);
  v224 = *(v172 + 40);
  if ((*(v172 + 41) & 1) == 0)
  {
    if (!v223 && v224 == 2)
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  v225 = qword_1EDEA34B0;
  v226 = v223;
  if (v225 != -1)
  {
    swift_once();
  }

  v227 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v229 = v228;
  v231 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v237 = v230;
  if (v227 != v231 || v229 != v230)
  {
    v246 = sub_1CF9E8048();
    v229, v247, v248, v249, v250, v251, v252, v253;
    v237, v254, v255, v256, v257, v258, v259, v260;
    sub_1CEFD0994(v223, v224, 1);
    if (v246)
    {
      goto LABEL_60;
    }

LABEL_62:
    v261 = swift_allocObject();
    v296 = v261;
    v262 = v300;
    *(v261 + 16) = v300;
    v263 = v261 | 0x7000000000000004;
    v264 = swift_allocObject();
    v265 = v299;
    *(v264 + 16) = sub_1CF796A0C;
    *(v264 + 24) = v265;
    *(v264 + 32) = v170;
    *(v264 + 40) = v289;
    v266 = v277;
    *(v264 + 48) = v262;
    *(v264 + 56) = v266;
    *(v264 + 64) = 0;
    v245 = v292;
    *(v264 + 72) = v292;
    *(v264 + 80) = 0;
    v267 = swift_allocObject();
    *(v267 + 16) = v266;
    *(v267 + 24) = v170;
    *(v267 + 32) = 0;
    *(v267 + 40) = sub_1CF796A90;
    *(v267 + 48) = v264;
    *(v267 + 56) = v263;
    v268 = swift_allocObject();
    *(v268 + 16) = sub_1CF796A90;
    *(v268 + 24) = v264;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v269 = v245;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v268, sub_1CF796A9C, v267);

    goto LABEL_63;
  }

  v229, v230, v231, v232, v233, v234, v235, v236;
  v237, v238, v239, v240, v241, v242, v243, v244;
  sub_1CEFD0994(v223, v224, 1);
LABEL_60:
  sub_1CF90CAC8(v300, sub_1CF796A0C, v299);

  v245 = v292;
LABEL_63:

  sub_1CEFCCC44(v306, &unk_1EC4BFC20, &unk_1CFA0A290);

  sub_1CEFCCC44(v286, qword_1EC4C1588, &unk_1CFA0A260);

  return result;
}

void sub_1CF8B36B8(uint64_t a1, void (*a2)(void, void, id), uint64_t a3, char *a4, uint64_t a5, void *a6, void *a7, uint64_t a8, char a9, void *a10)
{
  v41 = a8;
  v45 = a7;
  v46 = a6;
  v43 = a5;
  v44 = sub_1CF9E5A58();
  v14 = *(v44 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v39 - v17);
  sub_1CEFCCBDC(a1, &v39 - v17, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    v20 = *v18;
    a2(0, MEMORY[0x1E69E7CC0], v19);
  }

  else
  {
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = a10;
    v22 = *(*(*(v41 + 16) + 40) + 16);
    type metadata accessor for FPFileTree(0);
    v23 = swift_dynamicCastClassUnconditional();
    v24 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___fpfs];
    v41 = v23;
    v39 = v22;
    if (v24)
    {
      v25 = *(v24 + 16);

      v26 = a10;

      v28 = objc_sync_enter(v27);
      if (v28)
      {
        MEMORY[0x1EEE9AC00](v28);
        *(&v39 - 2) = v25;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v39 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v29 = *&v25[qword_1EDEADB30];
      v30 = v29;
      v31 = objc_sync_exit(v25);
      if (v31)
      {
        MEMORY[0x1EEE9AC00](v31);
        *(&v39 - 2) = v25;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v39 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      v40 = v29;
    }

    else
    {

      v32 = a10;

      v40 = 0;
    }

    v33 = v42;
    v34 = v44;
    (*(v14 + 16))(v42, v43, v44);
    v35 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = sub_1CF902D10;
    *(v36 + 3) = v21;
    *(v36 + 4) = a4;
    (*(v14 + 32))(&v36[v35], v33, v34);
    v36[v35 + v15] = a9 & 1;

    v37 = a4;
    v38 = v40;
    sub_1CF2D3200(v45, v46, v40, sub_1CF9033A4, v36);

    sub_1CEFCCC44(v18, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

void sub_1CF8B3D60(const char *a1, void *a2, uint64_t a3)
{
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1CF9E6118();
  v11 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v13 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (faccessat(-2, a1, 4, 32))
  {
    v90 = a3;
    v91 = v3;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = *(v8 + 16);
    v89[1] = a2;
    v15(v10, a2, v7);
    v16 = sub_1CF9E6108();
    v17 = sub_1CF9E72A8();
    v18 = os_log_type_enabled(v16, v17);
    v89[2] = v7;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      v93 = v89[0];
      *v19 = 136315394;
      sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v20 = sub_1CF9E7F98();
      v21 = v7;
      v23 = v22;
      (*(v8 + 8))(v10, v21);
      v24 = sub_1CEFD0DF0(v20, v23, &v93);
      v23, v25, v26, v27, v28, v29, v30, v31;
      *(v19 + 4) = v24;
      *(v19 + 12) = 1024;
      *(v19 + 14) = MEMORY[0x1D38683F0]();
      _os_log_impl(&dword_1CEFC7000, v16, v17, "thumbnail url not accessible %s: %{darwin.errno}d", v19, 0x12u);
      v32 = v89[0];
      __swift_destroy_boxed_opaque_existential_1(v89[0]);
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v19, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    (*(v11 + 8))(v13, v92);
    v33 = [objc_allocWithZone(FPDTapToRadarManager) init];
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA5D8A0);
    sub_1CEFCCCA4(&unk_1EDEAB3F0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v34 = sub_1CF9E7F98();
    v36 = v35;
    MEMORY[0x1D3868CC0](v34);
    v36, v37, v38, v39, v40, v41, v42, v43;
    v44 = MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA5D8C0);
    v95 = MEMORY[0x1D38683F0](v44);
    v45 = sub_1CF9E7F98();
    v47 = v46;
    MEMORY[0x1D3868CC0](v45);
    v47, v48, v49, v50, v51, v52, v53, v54;
    v55 = v94;
    v56 = sub_1CF9E6888();
    v57 = sub_1CF9E6888();
    v55, v58, v59, v60, v61, v62, v63, v64;
    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v65 = sub_1CF9E6D28();
    v66 = sub_1CF9E6D28();
    v67 = sub_1CF9E6888();
    v68 = *(v90 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID);
    v69 = [v68 pathComponents];
    v70 = sub_1CF9E6D48();

    v71 = *v70->tree;
    v70, v72, v73, v74, v75, v76, v77, v78;
    if (v71 >= 2)
    {
      v79 = [v68 stringByDeletingLastPathComponent];
      if (!v79)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v81 = v80;
        v79 = sub_1CF9E6888();
        v81, v82, v83, v84, v85, v86, v87, v88;
      }

      v68 = v79;
    }

    [v33 requestTapToRadarWithTitle:v56 description:v57 keywords:v65 attachments:v66 displayReason:v67 providerID:v68];
  }
}

uint64_t FPDDomainFPFSBackend.fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v35 = a6;
  v33 = a2;
  v34 = a5;
  v37 = a3;
  v38 = a4;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v12 + 32))(v21 + v16, v15, v11);
  v22 = (v21 + v17);
  v24 = v34;
  v23 = v35;
  *v22 = v34;
  v22[1] = v23;
  v26 = v36;
  v25 = v37;
  *(v21 + v18) = v36;
  *(v21 + v19) = v33;
  v27 = (v21 + v20);
  *v27 = a7;
  v27[1] = a8;
  v28 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  v29 = v38;
  *v28 = v25;
  v28[1] = v29;
  v30 = v23;
  swift_retain_n();
  v31 = v26;

  sub_1CF8EB0F8("fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)", 82, 2, sub_1CF8F3598, v21, v31, v24, v30);
}

void sub_1CF8B44F4(uint64_t a1, uint64_t a2, void (*a3)(id), void (*a4)(id), void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v54 = a8;
  v55 = a6;
  v52 = a7;
  v53 = a5;
  v57 = a4;
  v59 = a3;
  v58 = sub_1CF9E5A58();
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = v15;
  v56 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v46 - v17;
  v19 = type metadata accessor for VFSItem(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v46 - v24;
  v26 = a1;
  sub_1CF010CE0(a2, 1, 2, 0, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v27 = sub_1CF9E5928();
    v28 = FPItemNotFoundErrorAtURL();

    v59(v28);
  }

  else
  {
    v46 = type metadata accessor for VFSItem;
    v29 = v25;
    v48 = v25;
    sub_1CEFDA0C4(v18, v25, type metadata accessor for VFSItem);
    v49 = *(v26 + 16);
    v50 = v26;
    v30 = swift_allocObject();
    v47 = v30;
    v31 = v57;
    *(v30 + 16) = v59;
    *(v30 + 24) = v31;
    sub_1CEFDA34C(v29, v22, type metadata accessor for VFSItem);
    (*(v14 + 16))(v56, a2, v58);
    v32 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v33 = (v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v14 + 80) + v34 + 16) & ~*(v14 + 80);
    v51 = (v51 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v50;
    sub_1CEFDA0C4(v22, v37 + v32, v46);
    v38 = v53;
    *(v37 + v33) = v53;
    v39 = (v37 + v34);
    v40 = v58;
    *v39 = v59;
    v39[1] = v31;
    (*(v14 + 32))(v37 + v35, v56, v40);
    v41 = v54;
    v42 = v52;
    *(v37 + v51) = v55;
    v43 = (v37 + v36);
    *v43 = a9;
    v43[1] = a10;
    v44 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v44 = v42;
    v44[1] = v41;
    swift_retain_n();

    v45 = v38;

    sub_1CF7AAF88("fetchThumbnails(at:versions:size:perThumbnailCompletionHandler:completionHandler:)", 82, 2, 2, sub_1CF90324C, v47, sub_1CF8FCD38, v37);

    sub_1CEFD5338(v48, type metadata accessor for VFSItem);
  }
}

void sub_1CF8B496C(void *a1, uint64_t a2, uint64_t a3, char *a4, void *a5, void *a6, void *a7, void *a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v95 = a6;
  v90 = a8;
  v92 = a7;
  v93 = a3;
  v94 = a5;
  v17 = sub_1CF9E63D8();
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v81 - v22;
  v24 = a1[3];
  v23 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v27 = Strong, v28 = [Strong indexer], v27, v28) && (v29 = objc_msgSend(v28, sel_needsAuthentication), v28, v29))
  {
    v30 = 9;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v32 = type metadata accessor for VFSItem(0);
  v33 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v34 = sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v35 = sub_1CF76BB00(v93, v30, 0, v31, v25, v32, v24, v33, &off_1F4BF8588, v34, v23);
  v31, v36, v37, v38, v39, v40, v41, v42;
  v43 = [v35 formerItemID];

  if (v43)
  {
    v44 = [v43 identifier];

    v45 = *(*(*(a2 + 16) + 40) + 16);
    type metadata accessor for FPFileTree(0);
    v46 = swift_dynamicCastClassUnconditional();
    v47 = swift_allocObject();
    v47[2] = a4;
    v47[3] = a11;
    v92 = v47;
    v47[4] = a12;
    v48 = swift_unknownObjectWeakLoadStrong();
    v93 = v45;

    v49 = a4;

    if (v48)
    {
      v50 = [v48 session];
    }

    else
    {
      v50 = 0;
    }

    v53 = type metadata accessor for FPFileTreeLifetimeExtender();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeoutState] = 0;
    *&v54[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_itemIdentifier] = v44;
    v55 = objc_opt_self();
    v56 = v44;
    v57 = [v55 requestForSelf];
    *&v54[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_requestor] = v57;
    v58 = [objc_opt_self() defaultStore];
    if ([v58 hasUpcallExecutionTimeLimits])
    {
      goto LABEL_15;
    }

    if (qword_1EC4BCCF0 != -1)
    {
      swift_once();
    }

    v59 = -1.0;
    if (byte_1EC4BF020 == 1)
    {
LABEL_15:
      [v58 upcallExecutionTimeLimitBase];
      v59 = v60;
    }

    *&v54[OBJC_IVAR____TtC18FileProviderDaemonP33_CD7CE1CB66854C72A9E33E2FB2B98DFB26FPFileTreeLifetimeExtender_timeout] = v59;
    v103.receiver = v54;
    v103.super_class = v53;
    v61 = objc_msgSendSuper2(&v103, sel_init);
    v62 = v56;

    if (v50)
    {
      [v50 registerLifetimeExtensionForObject_];
    }

    v63 = *(v46 + 160);
    v83 = *(v46 + 168);
    v86 = v63;
    v81 = sub_1CF9E6448();
    v82 = *(v81 - 8);
    (*(v82 + 56))(v96, 1, 1, v81);
    v64 = swift_allocObject();
    v66 = v94;
    v65 = v95;
    *(v64 + 16) = v94;
    *(v64 + 24) = v65;
    v67 = swift_allocObject();
    v68 = v92;
    *(v67 + 16) = sub_1CF8FCE8C;
    *(v67 + 24) = v68;
    *(v67 + 32) = v46;
    *(v67 + 40) = v62;
    *(v67 + 48) = v90;
    *(v67 + 56) = a9;
    *(v67 + 64) = a10;
    *(v67 + 72) = v50;
    *(v67 + 80) = v61;
    *(v67 + 88) = v66;
    *(v67 + 96) = v65;
    v69 = swift_allocObject();
    v69[2] = sub_1CF90324C;
    v69[3] = v64;
    v70 = v83;
    v84 = v69;
    v69[4] = v83;
    swift_retain_n();

    v71 = v62;
    v72 = v82;
    v85 = v71;
    v73 = v81;

    v95 = v50;
    swift_unknownObjectRetain();
    v94 = v61;

    v74 = fpfs_current_log();
    v90 = *(v70 + 16);
    v75 = v91;
    sub_1CEFCCBDC(v96, v91, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v72 + 48))(v75, 1, v73) == 1)
    {
      sub_1CEFCCC44(v75, &unk_1EC4BE370, qword_1CFA01B30);
      LODWORD(v91) = 0;
    }

    else
    {
      v76 = v87;
      sub_1CF9E6438();
      (*(v72 + 8))(v75, v73);
      LODWORD(v91) = sub_1CF9E63C8();
      (*(v88 + 8))(v76, v89);
    }

    v77 = swift_allocObject();
    v77[2] = v74;
    v77[3] = sub_1CF902DA0;
    v77[4] = v67;
    v101 = sub_1CF2BA17C;
    v102 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v98 = 1107296256;
    v99 = sub_1CEFCA444;
    v100 = &block_descriptor_3570;
    v78 = _Block_copy(&aBlock);
    v79 = v74;

    v101 = sub_1CF2BA180;
    v102 = v84;
    aBlock = MEMORY[0x1E69E9820];
    v98 = 1107296256;
    v99 = sub_1CEFCA444;
    v100 = &block_descriptor_3573;
    v80 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v90, v86, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v91, v78, v80);

    _Block_release(v80);
    _Block_release(v78);
    swift_unknownObjectRelease();

    sub_1CEFCCC44(v96, &unk_1EC4BE370, qword_1CFA01B30);
  }

  else
  {
    v51 = sub_1CF9E5928();
    v52 = FPItemNotFoundErrorAtURL();

    (v94)(v52);
  }
}

uint64_t sub_1CF8B5288(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t a11)
{
  v39 = a1;
  v40 = a2;
  v41 = a10;
  v17 = sub_1CF9E5A58();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v33 = a4;
    v34 = a11;
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = a8;
    v32 = a9;
    v22 = a3;
    v23 = [v22 url];
    sub_1CF9E59D8();

    v24 = sub_1CF9E59E8();
    v25 = *(v18 + 8);
    v25(v21, v17);
    v26 = [v22 url];
    sub_1CF9E59D8();

    MEMORY[0x1EEE9AC00](v27);
    v28 = v32;
    *(&v31 - 2) = v21;
    *(&v31 - 1) = v28;
    sub_1CF9E59B8();
    v25(v21, v17);
    if (v24)
    {
      v29 = [v22 url];
      sub_1CF9E59D8();

      sub_1CF9E59C8();
      v25(v21, v17);
    }

    else
    {
    }

    a7 = v37;
    a8 = v38;
    a5 = v35;
    a6 = v36;
    a4 = v33;
  }

  return v41(v39, v40, a3, a4, a5, a6, a7, a8, v19);
}

void sub_1CF8B57E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v14 = sub_1CF9E6888();
  }

  else
  {
    v14 = 0;
  }

  if (a7 >> 60 == 15)
  {
    v15 = 0;
    if (a8)
    {
LABEL_6:
      v16 = sub_1CF9E57E8();
      goto LABEL_9;
    }
  }

  else
  {
    v15 = sub_1CF9E5B48();
    if (a8)
    {
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_9:
  v17 = v16;
  (*(a9 + 16))(a9, a1, a2, a3, v14, v15);
}

double FPDDomainFPFSBackend.fetchOperationServiceOrEndpoint(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF8F359C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v3;
  v11 = a1;

  sub_1CEFD4024("fetchOperationServiceOrEndpoint(with:completionHandler:)", 56, 2, sub_1CF903284, v9, sub_1CEFD000C, v8);

  return result;
}

void sub_1CF8B59FC(uint64_t a1, id a2, void (*a3)(id, void), uint64_t a4, void *a5)
{
  v10 = [a2 identifier];
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;
  if (v11 == v14 && v13 == v15)
  {

    v13, v81, v82, v83, v84, v85, v86, v87;
    v16, v88, v89, v90, v91, v92, v93, v94;
    goto LABEL_14;
  }

  v18 = sub_1CF9E8048();

  v13, v19, v20, v21, v22, v23, v24, v25;
  v16, v26, v27, v28, v29, v30, v31, v32;
  if (v18)
  {
    goto LABEL_14;
  }

  v33 = [a2 identifier];
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v36 = v35;
  v37 = sub_1CF4C4044(0x2F73662F70665F5FLL, 0xE800000000000000, v34, v35);
  v36, v38, v39, v40, v41, v42, v43, v44;
  if ((v37 & 1) == 0)
  {

    goto LABEL_14;
  }

  v95 = a5;
  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;
  v48 = sub_1CF025150(0x80007uLL, v45, v46);
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v47, v49, v51, v53, v55, v56, v57, v58;
  v59 = MEMORY[0x1D3868C10](v48, v50, v52, v54);
  v61 = v60;
  v54, v60, v62, v63, v64, v65, v66, v67;
  VFSItemID.init(parsing:)(v59, v61, &v96, v68, v69, v70, v71, v72, v73);

  v74 = v97;
  if (v97 == 255)
  {
LABEL_14:
    a3(a2, 0);
    return;
  }

  v75 = v96;
  v76 = swift_allocObject();
  *(v76 + 16) = a3;
  *(v76 + 24) = a4;
  v77 = swift_allocObject();
  *(v77 + 16) = a1;
  *(v77 + 24) = v75;
  *(v77 + 32) = v74;
  *(v77 + 40) = a3;
  *(v77 + 48) = a4;
  *(v77 + 56) = v95;
  *(v77 + 64) = a2;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_1CEFF9D98;
  *(v78 + 24) = v76;
  swift_retain_n();

  v79 = v95;
  v80 = a2;

  sub_1CF7AAF88("resolveProviderItemID(_:completionHandler:)", 43, 2, 2, sub_1CF8FC294, v78, sub_1CF8FCCDC, v77);
}

void sub_1CF8B5D34(void *a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(id, uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(*(a2 + 16) + 16);
  v26 = a3;
  v27 = a4;
  v18 = *(*v17 + 160);

  v18(&v28, &v26, v16, v15, v14);

  if (!v9)
  {
    v19 = a5;
    v20 = v28;
    if (v28)
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:*(a7 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID) itemIdentifier:v28];
      a5(v21, 0);
    }

    else
    {
      v22 = [a8 identifier];
      v23 = FPItemNotFoundError();

      if (v23)
      {
        v19(v23, 1);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

double FPDDomainFPFSBackend.fetchServices(for:allowRestrictedSources:request:completionHandler:)(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8F35CC;
  *(v12 + 24) = v11;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = sub_1CF8F35CC;
  v13[4] = v11;
  v13[5] = v5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CEFF9D98;
  *(v14 + 24) = v12;
  v15 = v5;
  swift_retain_n();
  v16 = v15;

  v17 = a3;
  v18 = a1;

  sub_1CEFD4024("resolveProviderItemID(_:completionHandler:)", 43, 2, sub_1CF796A8C, v14, sub_1CF8F35D0, v13);

  return result;
}

void sub_1CF8B6048(void *a1, char a2, uint64_t a3, void (*a4)(void, void, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    (a4)(0, 0, a1, a4, a5, a6, a7);
  }

  else
  {
    v10 = a6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v13 = Strong, v14 = [Strong extensionBackend], v13, v14))
    {
      aBlock[4] = a4;
      aBlock[5] = a5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF8B61D8;
      aBlock[3] = &block_descriptor_3541;
      v15 = _Block_copy(aBlock);

      [v14 fetchServicesForItemID:a1 allowRestrictedSources:v10 & 1 request:a7 completionHandler:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = FPDomainUnavailableError();
      a4(0, 0, v16);
    }
  }
}

void sub_1CF8B61D8(uint64_t a1, void *a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1CEFD57E0(0, &qword_1EDEA35E0, 0x1E69674C8);
    v5 = sub_1CF9E6D48();
  }

  v8 = a2;
  v9 = a4;
  v7(a2, v5, a4);

  v5, v10, v11, v12, v13, v14, v15, v16;
}

void sub_1CF8B64A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v8 = a2;
  if (a2)
  {
    sub_1CEFD57E0(0, a5, a6);
    v8 = sub_1CF9E6D28();
  }

  if (a3)
  {
    v10 = sub_1CF9E57E8();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, a1, v8);
}

double FPDDomainFPFSBackend.fetchVendorEndpoint(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v3;
  v11 = a1;

  sub_1CEFD4024("fetchVendorEndpoint(with:completionHandler:)", 44, 2, sub_1CF903280, v9, sub_1CF8F35DC, v8);

  return result;
}

void sub_1CF8B6678(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, uint64_t a5)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = Strong, v10 = [Strong extensionBackend], v9, v10))
  {
    aBlock[4] = a3;
    aBlock[5] = a4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFF9A6C;
    aBlock[3] = &block_descriptor_3528;
    v11 = _Block_copy(aBlock);

    [v10 fetchVendorEndpointWithRequest:a5 completionHandler:v11];
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = FPDomainUnavailableError();
    a3(0, v12);
  }
}

Swift::Void __swiftcall FPDDomainFPFSBackend.didChangeNeedsAuthentification(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = v1;
    sub_1CEFD4024("didChangeNeedsAuthentification(_:)", 34, 2, nullsub_1, 0, sub_1CF8F35E8, v3);
  }

  else
  {
    type metadata accessor for NSFileProviderError(0);
    aBlock[6] = -1000;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v5 = sub_1CF9E57E8();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CF00A468;
    aBlock[3] = &block_descriptor_494;
    v6 = _Block_copy(aBlock);
    [v2 signalErrorResolved:v5 completionHandler:v6];
    _Block_release(v6);
  }
}

void sub_1CF8B6B30()
{
  v0 = sub_1CF0878B4();
  v8 = v0;
  v9 = *v0->tree;
  if (v9)
  {
    anon_8 = v0[1]._anon_8;
    do
    {
      v11 = *anon_8;
      swift_unknownObjectRetain();
      v12 = objc_autoreleasePoolPush();
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(ObjectType, v11);
      objc_autoreleasePoolPop(v12);
      swift_unknownObjectRelease();
      anon_8 += 16;
      --v9;
    }

    while (v9);
  }

  v8, v1, v2, v3, v4, v5, v6, v7;
}

void sub_1CF8B6C2C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_1CF9E6288();
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    v2(&v4, 0);
  }
}

void sub_1CF8B6CD0()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong indexer];
    if (v9)
    {
      v10 = v9;
      [v9 clearNeedsAuth];
      v11 = sub_1CF0878B4();
      v12 = v11;
      v13 = *v11->tree;
      if (v13)
      {
        anon_8 = v11[1]._anon_8;
        do
        {
          v15 = *anon_8;
          swift_unknownObjectRetain();
          v16 = objc_autoreleasePoolPush();
          ObjectType = swift_getObjectType();
          (*(v15 + 32))(ObjectType, v15);
          objc_autoreleasePoolPop(v16);
          swift_unknownObjectRelease();
          anon_8 += 16;
          --v13;
        }

        while (v13);
      }

      v12, v18, v19, v20, v21, v22, v23, v24;
    }

    else
    {
      v29 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v30 = sub_1CF9E6108();
      v31 = sub_1CF9E7298();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1CEFC7000, v30, v31, "Unable to clear needsAuth, domain indexer not initialized", v32, 2u);
        MEMORY[0x1D386CDC0](v32, -1, -1);
      }

      (*(v1 + 8))(v6, v0);
    }
  }

  else
  {
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7298();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "Unable to clear needsAuth, domain not initialized", v28, 2u);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
  }
}

double FPDDomainFPFSBackend.signalErrorResolved(_:completionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = a1;
  v9 = sub_1CF94C0CC(a1);
  v10 = sub_1CF9E57E8();
  v11 = [v10 userInfo];

  v12 = sub_1CF9E6638();
  if (*v12->tree && (v20 = sub_1CEFE4328(0xD00000000000001FLL, 0x80000001CFA5C3B0), (v13 & 1) != 0))
  {
    sub_1CEFD1104(*v12[1].tester + 32 * v20, v99);
    v12, v21, v22, v23, v24, v25, v26, v27;
    if (swift_dynamicCast())
    {
      v28 = v98;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
    v28 = 0;
  }

  v29 = sub_1CF9E57E8();
  v30 = [v29 userInfo];

  v31 = sub_1CF9E6638();
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v40 = v33;
  if (!*v31->tree)
  {
    v31, v33, v34, v35, v36, v37, v38, v39;
    v40, v77, v78, v79, v80, v81, v82, v83;
    v75 = 0;
    v76 = 0;
    if (v9)
    {
      goto LABEL_20;
    }

LABEL_16:
    if (!v28)
    {
      v76, v68, v69, v70, v71, v72, v73, v74;
      a2(0);
      return result;
    }

    goto LABEL_21;
  }

  v96 = v9;
  v41 = a2;
  v42 = a3;
  v43 = v4;
  v44 = sub_1CEFE4328(v32, v33);
  v46 = v45;
  v40, v45, v47, v48, v49, v50, v51, v52;
  if (v46)
  {
    sub_1CEFD1104(*v31[1].tester + 32 * v44, v99);
    v31, v60, v61, v62, v63, v64, v65, v66;
    v67 = swift_dynamicCast();
    if (v67)
    {
      v75 = v97;
    }

    else
    {
      v75 = 0;
    }

    if (v67)
    {
      v76 = v98;
    }

    else
    {
      v76 = 0;
    }
  }

  else
  {
    v31, v53, v54, v55, v56, v57, v58, v59;
    v75 = 0;
    v76 = 0;
  }

  v4 = v43;
  a3 = v42;
  a2 = v41;
  v9 = v96;
  if (!v96)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (v28)
  {
LABEL_21:
    v85 = sub_1CF9E6888();
    v28, v86, v87, v88, v89, v90, v91, v92;
    v28 = sub_1CEFD4E9C(v85);
  }

  v93 = swift_allocObject();
  *(v93 + 16) = a2;
  *(v93 + 24) = a3;
  *(v93 + 32) = v4;
  *(v93 + 40) = v9;
  *(v93 + 48) = v75;
  *(v93 + 56) = v76;
  *(v93 + 64) = v28;
  *(v93 + 72) = a1;
  v94 = a1;

  v95 = v4;
  sub_1CEFD4024("signalErrorResolved(_:completionHandler:)", 41, 2, nullsub_1, 0, sub_1CF8F35F0, v93);

  return result;
}

void sub_1CF8B72EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v122 = a6;
  LODWORD(v120) = a5;
  v106 = sub_1CF9E63D8();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v117 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v123 = &v103 - v19;
  v109 = sub_1CF9E6068();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v112 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v103 - v25;
  v110 = type metadata accessor for Signpost(0);
  v113 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v116 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v114 = v30;
  v115 = (&v103 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v121 = &v103 - v32;
  v33 = *(a1 + 16);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v34 + 24) = v120;
  *(v34 + 32) = v122;
  *(v34 + 40) = a7;
  *(v34 + 48) = a1;
  *(v34 + 56) = a8;
  *(v34 + 64) = a9;
  *(v34 + 72) = a2;
  v122 = v34;
  *(v34 + 80) = a3;
  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  *(v35 + 24) = a3;
  v120 = v35;
  v119 = v33;

  swift_retain_n();

  v36 = a4;
  v37 = a9;
  v118 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDEBBE40;
  v39 = v108;
  v40 = v109;
  (*(v108 + 56))(v26, 1, 1, v109);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v41 = sub_1CF9E7988();
  v43 = v42;
  MEMORY[0x1D3868CC0](v41);
  v43, v44, v45, v46, v47, v48, v49, v50;
  v107 = *(&aBlock + 1);
  v51 = aBlock;
  v111 = v26;
  sub_1CEFCCBDC(v26, v23, &unk_1EC4BED20, &unk_1CFA00700);
  v52 = *(v39 + 48);
  if (v52(v23, 1, v40) == 1)
  {
    v53 = v38;
    v54 = v112;
    sub_1CF9E6048();
    if (v52(v23, 1, v40) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v54 = v112;
    (*(v39 + 32))(v112, v23, v40);
  }

  v55 = v121;
  (*(v39 + 16))(v121, v54, v40);
  v56 = v110;
  *(v55 + *(v110 + 20)) = v38;
  v57 = v55 + *(v56 + 24);
  *v57 = "DB queue wait";
  *(v57 + 8) = 13;
  *(v57 + 16) = 2;
  v58 = v38;
  v59 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1CF9FA450;
  *(v60 + 56) = MEMORY[0x1E69E6158];
  *(v60 + 64) = sub_1CEFD51C4();
  v61 = v107;
  *(v60 + 32) = v51;
  *(v60 + 40) = v61;
  sub_1CF9E6028(v59, &dword_1CEFC7000, v58, "DB queue wait", 13, 2, v55, "%s", 2);
  v60, v62, v63, v64, v65, v66, v67, v68;
  (*(v39 + 8))(v54, v40);
  sub_1CEFCCC44(v111, &unk_1EC4BED20, &unk_1CFA00700);
  v69 = *(v119 + 64);
  v111 = *(v119 + 168);
  v112 = v69;
  v109 = sub_1CF9E6448();
  v110 = *(v109 - 8);
  (*(v110 + 56))(v123, 1, 1, v109);
  v70 = v115;
  sub_1CEFDA34C(v55, v115, type metadata accessor for Signpost);
  v71 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v72 = (v114 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v114 = type metadata accessor for Signpost;
  sub_1CEFDA0C4(v70, v73 + v71, type metadata accessor for Signpost);
  v74 = (v73 + v72);
  v115 = sub_1CF5543A4;
  v75 = v120;
  *v74 = sub_1CF5543A4;
  v74[1] = v75;
  v76 = v116;
  sub_1CEFDA34C(v55, v116, type metadata accessor for Signpost);
  v77 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v78 + 25) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v81 + v71;
  v83 = v109;
  sub_1CEFDA0C4(v76, v82, v114);
  v84 = (v81 + v72);
  *v84 = sub_1CF045408;
  v84[1] = 0;
  *(v81 + v77) = v119;
  v85 = v81 + v78;
  *v85 = "signalErrorResolved(_:completionHandler:)";
  *(v85 + 8) = 41;
  *(v85 + 16) = 2;
  v86 = (v81 + v79);
  v87 = v110;
  *v86 = v115;
  v86[1] = v75;
  v88 = (v81 + v80);
  v89 = v122;
  *v88 = sub_1CF8FCC98;
  v88[1] = v89;
  v90 = swift_allocObject();
  v90[2] = sub_1CF903308;
  v90[3] = v73;
  v91 = v111;
  v90[4] = v111;
  swift_retain_n();

  v119 = v73;

  v92 = fpfs_current_log();
  v93 = *(v91 + 16);
  v94 = v117;
  sub_1CEFCCBDC(v123, v117, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v87 + 48))(v94, 1, v83) == 1)
  {
    sub_1CEFCCC44(v94, &unk_1EC4BE370, qword_1CFA01B30);
    v95 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v96 = v104;
    sub_1CF9E6438();
    (*(v87 + 8))(v94, v83);
    v95 = sub_1CF9E63C8();
    (*(v105 + 8))(v96, v106);
  }

  v97 = swift_allocObject();
  v97[2] = v92;
  v97[3] = sub_1CF4858EC;
  v97[4] = v81;
  v127 = sub_1CF2BA17C;
  v128 = v97;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v125 = sub_1CEFCA444;
  v126 = &block_descriptor_3512;
  v98 = _Block_copy(&aBlock);
  v99 = v92;

  v127 = sub_1CF2BA180;
  v128 = v90;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v125 = sub_1CEFCA444;
  v126 = &block_descriptor_3515;
  v100 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v93, v112, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v95, v98, v100);
  _Block_release(v100);
  _Block_release(v98);

  sub_1CEFCCC44(v123, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v121, type metadata accessor for Signpost);
  v101 = v118;
  v102 = fpfs_adopt_log();
}

void sub_1CF8B7E4C(void *a1, char *a2, unsigned int a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, uint64_t a6, char *a7, char *a8, void (*a9)(void))
{
  v152 = a8;
  v153 = a6;
  v159 = a5;
  v157 = a4;
  v160 = a3;
  v154 = a1;
  v155 = sub_1CF9E6118();
  v156 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v12 = v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v150 = v149 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v151 = v149 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v149 - v18;
  v20 = &a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord];
  if (*&a2[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_errorGenerationRecord] == -1)
  {
    sub_1CF82CDEC();
  }

  v21 = *(v20 + 2);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1CF8FCCD4;
  *(v23 + 24) = v22;
  v174 = sub_1CF1C0B54;
  v175 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v171 = 1107296256;
  v172 = sub_1CEFFD02C;
  v173 = &block_descriptor_3525;
  v24 = _Block_copy(&aBlock);
  v25 = v21;
  v149[1] = a2;

  dispatch_sync(v25, v24);

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  v27 = v160;
  if (v160)
  {
    v152 = a7;
    v28 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v29 = v159;

    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E7288();
    v29, v32, v33, v34, v35, v36, v37, v38;
    v39 = os_log_type_enabled(v30, v31);
    v40 = v154;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v168 = v42;
      *v41 = 136315394;
      v43 = sub_1CF94B188(v27);
      v45 = v44;
      v46 = sub_1CEFD0DF0(v43, v44, &v168);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v41 + 4) = v46;
      *(v41 + 12) = 2080;
      if (v29)
      {
        aBlock = 0x2068746977;
        v171 = 0xE500000000000000;
        MEMORY[0x1D3868CC0](v157, v29);
        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        v54 = aBlock;
        v55 = v171;
      }

      else
      {
        v54 = 0;
        v55 = 0xE000000000000000;
      }

      v83 = v152;
      v92 = sub_1CEFD0DF0(v54, v55, &v168);
      v55, v93, v94, v95, v96, v97, v98, v99;
      *(v41 + 14) = v92;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "🚦  resolved error %s %ssignaled, clearing this error's throttles", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v42, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);

      (*(v156 + 8))(v19, v155);
      v82 = v158;
    }

    else
    {

      (*(v156 + 8))(v19, v155);
      v82 = v158;
      v83 = v152;
    }

    v100 = v40[3];
    v101 = v40[4];
    v102 = __swift_project_boxed_opaque_existential_1(v40, v100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();
    if (v83)
    {
      swift_beginAccess();
      v103 = *(v83 + 4);
      v104 = *(v83 + 40);
      if (*(v83 + 41))
      {
        v103 = 0;
        v104 = -1;
      }
    }

    else
    {
      v103 = 0;
      v104 = -1;
    }

    v168 = v103;
    v169 = v104;

    sub_1CF32C350(v160, v157, v159, &v168, v102, v100, v101);
    if (v82)
    {

      return;
    }

    v105 = v40[3];
    v106 = v40[4];
    v107 = __swift_project_boxed_opaque_existential_1(v40, v105);
    swift_dynamicCastClassUnconditional();
    if (v83 && *(v83 + 25) == 1)
    {
      v108 = *(v83 + 2);
      v109 = v108;
    }

    else
    {
      v108 = 0;
    }

    v110 = v157;
    v168 = v108;

    v111 = v160;
    sub_1CF32C350(v160, v110, v159, &v168, v107, v105, v106);

    if (v111 == 1)
    {
      sub_1CF8B6CD0();
    }

LABEL_17:
    a9(0);
    return;
  }

  v56 = v158;
  if (!a7)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  if ((a7[41] & 1) == 0)
  {
    v112 = *(a7 + 4);
    LODWORD(v113) = a7[40];
    v114 = fpfs_current_or_default_log();
    v115 = v151;
    sub_1CF9E6128();
    v116 = v152;
    v117 = v152;
    v118 = sub_1CF9E6108();
    v119 = sub_1CF9E7288();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v160 = v113;
      v113 = v122;
      v163 = v122;
      *v120 = 138412546;
      swift_getErrorValue();
      v123 = Error.prettyDescription.getter(v161, v162);
      *(v120 + 4) = v123;
      *v121 = v123;
      *(v120 + 12) = 2080;
      v168 = v112;
      v169 = v160;
      v124 = VFSItemID.description.getter(v123);
      v126 = v125;
      v127 = v112;
      v128 = sub_1CEFD0DF0(v124, v125, &v163);
      v126, v129, v130, v131, v132, v133, v134, v135;
      *(v120 + 14) = v128;
      _os_log_impl(&dword_1CEFC7000, v118, v119, "🚦  resolved error %@ for %s signaled, clearing this error's throttles", v120, 0x16u);
      sub_1CEFCCC44(v121, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v136 = v121;
      v56 = v158;
      MEMORY[0x1D386CDC0](v136, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v137 = v113;
      LOBYTE(v113) = v160;
      MEMORY[0x1D386CDC0](v137, -1, -1);
      MEMORY[0x1D386CDC0](v120, -1, -1);

      (*(v156 + 8))(v151, v155);
    }

    else
    {

      (*(v156 + 8))(v115, v155);
      v127 = v112;
    }

    v138 = v154[3];
    v139 = v154[4];
    v140 = __swift_project_boxed_opaque_existential_1(v154, v138);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
    swift_dynamicCastClassUnconditional();
    v168 = v127;
    v169 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = v116;
    v142 = v116;

    sub_1CF4CE79C(&v168, inited, v140, v138, v139);

    swift_setDeallocating();

    if (!v56)
    {
      goto LABEL_17;
    }

    return;
  }

  if (a7[25] != 1)
  {
LABEL_14:
    v84 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v85 = v152;
    v86 = v152;
    v87 = sub_1CF9E6108();
    v88 = sub_1CF9E7288();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      swift_getErrorValue();
      v91 = Error.prettyDescription.getter(v166, v167);
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&dword_1CEFC7000, v87, v88, "🚦  resolved error %@ signaled, skipping unsupported error", v89, 0xCu);
      sub_1CEFCCC44(v90, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v90, -1, -1);
      MEMORY[0x1D386CDC0](v89, -1, -1);
    }

    (*(v156 + 8))(v12, v155);
    goto LABEL_17;
  }

  v57 = *(a7 + 2);
  v58 = a7[24];
  v59 = v57;
  v60 = fpfs_current_or_default_log();
  v61 = v150;
  sub_1CF9E6128();
  v62 = v152;
  v63 = v152;
  sub_1CEFD0988(v57, v58, 1);
  v64 = sub_1CF9E6108();
  v65 = sub_1CF9E7288();

  v160 = v58;
  sub_1CEFD0994(v57, v58, 1);
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v168 = v68;
    *v66 = 138412546;
    swift_getErrorValue();
    v69 = Error.prettyDescription.getter(v164, v165);
    *(v66 + 4) = v69;
    *v67 = v69;
    *(v66 + 12) = 2080;
    v70 = NSFileProviderItemIdentifier.description.getter(v59);
    v72 = v71;
    sub_1CEFD0994(v57, v160, 1);
    v73 = sub_1CEFD0DF0(v70, v72, &v168);
    v72, v74, v75, v76, v77, v78, v79, v80;
    *(v66 + 14) = v73;
    _os_log_impl(&dword_1CEFC7000, v64, v65, "🚦  resolved error %@ for %s signaled, clearing this error's throttles", v66, 0x16u);
    sub_1CEFCCC44(v67, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v67, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v81 = v68;
    v62 = v152;
    MEMORY[0x1D386CDC0](v81, -1, -1);
    MEMORY[0x1D386CDC0](v66, -1, -1);

    (*(v156 + 8))(v150, v155);
  }

  else
  {

    (*(v156 + 8))(v61, v155);
  }

  v143 = v154[3];
  v144 = v154[4];
  v145 = __swift_project_boxed_opaque_existential_1(v154, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v168 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
  v146 = swift_initStackObject();
  *(v146 + 16) = xmmword_1CF9FA450;
  *(v146 + 32) = v62;
  v147 = v62;

  v148 = v158;
  sub_1CF4CE814(&v168, v146, v145, v143, v144);

  swift_setDeallocating();

  sub_1CEFD0994(v57, v160, 1);
  if (!v148)
  {
    goto LABEL_17;
  }
}

double FPDDomainFPFSBackend.updateShouldRetryThrottledOperations(_:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a1;
  swift_retain_n();
  sub_1CEFD4024("updateShouldRetryThrottledOperations(_:completionHandler:)", 58, 2, sub_1CF90324C, v6, sub_1CF8F35F4, v7);

  return result;
}

double sub_1CF8B8D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a4;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  swift_retain_n();

  sub_1CF7AAF88("updateShouldRetryThrottledOperations(_:completionHandler:)", 58, 2, 2, sub_1CF90324C, v8, sub_1CF8FCC74, v9);

  return result;
}

void sub_1CF8B8E84(void *a1, uint64_t a2, char a3, void (*a4)(void, __n128))
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB70, &unk_1CFA0A280);
  swift_dynamicCastClassUnconditional();
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = a3 ^ 1;

  sub_1CF32C538((a3 ^ 1) & 1, v10, v9, v8);
  if (v5)
  {
  }

  else
  {

    v12 = a1[3];
    v13 = a1[4];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v12);

    sub_1CF32C538(v11 & 1, v14, v12, v13);

    (a4)(0);
  }
}

double FPDDomainFPFSBackend.listAvailableTestingOperations(with:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = v3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF8F3600;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = a1;
  v11 = v3;

  sub_1CEFD4024("listAvailableTestingOperations(with:completionHandler:)", 55, 2, sub_1CF903280, v9, sub_1CF8F362C, v8);

  return result;
}

double sub_1CF8B9250(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v19 = v10 | 0x6000000000000000;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v12 = a5;
  v13 = swift_allocObject();
  v13[2] = sub_1CF8FCBBC;
  v13[3] = v11;
  v13[4] = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF902EBC;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v19;
  v15[4] = 0;
  v15[5] = sub_1CF902EBC;
  v15[6] = v13;
  swift_retain_n();
  swift_retain_n();
  v16 = a2;

  v17 = v12;

  sub_1CF7AAF88("waitForStabilization(request:mode:_:)", 37, 2, 2, sub_1CF90324C, v14, sub_1CF90338C, v15);

  return result;
}

void sub_1CF8B9438(uint64_t a1, char a2, void (*a3)(_TtC18FileProviderDaemon8FSTester *, id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    (a3)(0, a1, a3, a4, a5);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_1CF8E518C(a1, v8);
      v10 = v9;

      a3(v10, 0);

      v10, v11, v12, v13, v14, v15, v16, v17;
    }

    else
    {
      v18 = FPDomainUnavailableError();
      a3(0, v18);
    }
  }
}

double FPDDomainFPFSBackend.run(_:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF903260;
  *(v10 + 24) = v8;
  swift_retain_n();

  v11 = a2;

  sub_1CEFD4024("run(_:request:completionHandler:)", 33, 2, sub_1CF903280, v10, sub_1CF8F3638, v9);

  return result;
}

void sub_1CF8B9804(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v41 = a3;
  v42 = a5;
  v40 = a4;
  v43 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - v7;
  v9 = sub_1CF4E4700(MEMORY[0x1E69E7CC0]);
  if (a2 >> 62)
  {
LABEL_27:
    v10 = sub_1CF9E7818();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_28:
    v29 = v9[2];
    if (v29)
    {
      v30 = sub_1CF1F8F2C(v9[2], 0);
      sub_1CF1FA760(&v47, v30 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v29, v9);
      v32 = v31;
      v33 = v47;

      sub_1CEFCB59C(v33);
      if (v32 == v29)
      {
LABEL_32:
        v34 = swift_allocObject();
        v35 = v41;
        *(v34 + 16) = v41;
        v36 = swift_allocObject();
        v37 = v42;
        v36[2] = v40;
        v36[3] = v37;
        v36[4] = v9;
        v38 = v35;

        sub_1CF81A534(v30, v34 | 0x6000000000000002, sub_1CF8FC788, v36);

        return;
      }

      __break(1u);
    }

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_3:
  v39[1] = v6;
  v6 = 0;
  v46 = a2 & 0xC000000000000001;
  v44 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v46)
    {
      v13 = MEMORY[0x1D3869C30](v6, a2);
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v6 >= *(v44 + 16))
      {
        goto LABEL_26;
      }

      v13 = *(a2 + 8 * v6 + 32);
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    v15 = v13;
    sub_1CF9406EC(v15, v8);
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v19 = sub_1CF7BF520(v8);
    v20 = v9[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_24;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v9 = v47;
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1CF7D3D88();
      v9 = v47;
      if (v23)
      {
LABEL_4:
        v11 = v9[7];
        v12 = *(v11 + 8 * v19);
        *(v11 + 8 * v19) = v16;

        sub_1CEFCCC44(v8, &unk_1EC4BF650, &unk_1CF9FCB40);
        goto LABEL_5;
      }
    }

LABEL_19:
    v9[(v19 >> 6) + 8] |= 1 << v19;
    sub_1CEFCCBDC(v8, v9[6] + *(v45 + 72) * v19, &unk_1EC4BF650, &unk_1CF9FCB40);
    *(v9[7] + 8 * v19) = v16;

    sub_1CEFCCC44(v8, &unk_1EC4BF650, &unk_1CF9FCB40);
    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_25;
    }

    v9[2] = v28;
LABEL_5:
    ++v6;
    if (v14 == v10)
    {
      goto LABEL_28;
    }
  }

  sub_1CF7CCF1C(v22, isUniquelyReferenced_nonNull_native);
  v24 = sub_1CF7BF520(v8);
  if ((v23 & 1) == (v25 & 1))
  {
    v19 = v24;
    v9 = v47;
    if (v23)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF8B9C10(uint64_t a1, char a2, void (*a3)(_TtC18FileProviderDaemon8FSTester *, uint64_t, __n128), uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v75 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB8, &qword_1CFA18160);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  if (a2)
  {
    a3(0, a1, v18);
    return;
  }

  v68 = a4;
  v69 = a3;
  v21 = sub_1CF4E492C(MEMORY[0x1E69E7CC0]);
  v22 = *(a1 + 64);
  v71 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v70 = (v23 + 63) >> 6;
  v73 = a1;

  v26 = 0;
  v77 = v16;
  v78 = v20;
  v72 = a5;
  while (v25)
  {
    v29 = v26;
LABEL_17:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = v73;
    v35 = v74;
    sub_1CEFCCBDC(*(v73 + 48) + *(v75 + 72) * v33, v74, &unk_1EC4BF650, &unk_1CF9FCB40);
    v36 = *(*(v34 + 56) + 8 * v33);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FC0, &qword_1CFA18168);
    v38 = *(v37 + 48);
    v39 = v35;
    v16 = v77;
    sub_1CEFE55D0(v39, v77, &unk_1EC4BF650, &unk_1CF9FCB40);
    *&v16[v38] = v36;
    (*(*(v37 - 8) + 56))(v16, 0, 1, v37);
    v40 = v36;
    v31 = v29;
    a5 = v72;
    v20 = v78;
LABEL_18:
    sub_1CEFE55D0(v16, v20, &qword_1EC4C4FB8, &qword_1CFA18160);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FC0, &qword_1CFA18168);
    if ((*(*(v41 - 8) + 48))(v20, 1, v41) == 1)
    {

      (v69)(v21, 0);
      v21, v61, v62, v63, v64, v65, v66, v67;
      return;
    }

    v42 = *&v20[*(v41 + 48)];
    v43 = v76;
    sub_1CEFE55D0(v20, v76, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (!*(a5 + 16))
    {
      goto LABEL_36;
    }

    v44 = sub_1CF7BF520(v43);
    if ((v45 & 1) == 0)
    {
      goto LABEL_37;
    }

    v46 = *(*(a5 + 56) + 8 * v44);
    sub_1CEFCCC44(v43, &unk_1EC4BF650, &unk_1CF9FCB40);
    v47 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v21;
    v50 = sub_1CF7BFF48(v46);
    v51 = *v21->tree;
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_38;
    }

    v54 = v49;
    if (*v21->tester >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v79;
        if (v49)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1CF7D448C();
        v21 = v79;
        if (v54)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1CF7CDE88(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_1CF7BFF48(v46);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_40;
      }

      v50 = v55;
      v21 = v79;
      if (v54)
      {
LABEL_6:
        v27 = *v21[1].tester;
        v28 = *(v27 + 8 * v50);
        *(v27 + 8 * v50) = v42;

        goto LABEL_7;
      }
    }

    *(&v21[2].super.isa + (v50 >> 6)) |= 1 << v50;
    *(*v21[1].tree + 8 * v50) = v46;
    *(*v21[1].tester + 8 * v50) = v42;

    v57 = *v21->tree;
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_39;
    }

    *v21->tree = v59;
LABEL_7:
    v26 = v31;
    v16 = v77;
    v20 = v78;
  }

  if (v70 <= v26 + 1)
  {
    v30 = v26 + 1;
  }

  else
  {
    v30 = v70;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v70)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FC0, &qword_1CFA18168);
      (*(*(v60 - 8) + 56))(v16, 1, 1, v60);
      v25 = 0;
      goto LABEL_18;
    }

    v25 = *(v71 + 8 * v29);
    ++v26;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  sub_1CEFD57E0(0, &qword_1EC4C49B0, 0x1E6967478);
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF8BA380(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, &qword_1EC4C49B0, 0x1E6967478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF2B1654(&qword_1EC4C4C18, &qword_1EC4C49B0, 0x1E6967478, MEMORY[0x1E69E81B8]);
    v5 = sub_1CF9E6618();
  }

  if (a2)
  {
    v6 = sub_1CF9E57E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

double FPDDomainFPFSBackend.importProgressForItemsPendingReconciliation(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v5;
  v11 = v6;
  v12 = v2;

  sub_1CEFD4024("importProgressForItemsPendingReconciliation(completionHandler:)", 63, 2, sub_1CF903280, v9, sub_1CF8F3644, v8);

  return result;
}

void sub_1CF8BA5F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v57 = sub_1CF9E63A8();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1CF9E6448();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;

  v19 = a4;
  v54[1] = a5;
  v20 = a6;

  sub_1CF7AAF88("importProgressForItemsPendingReconciliation(completionHandler:)", 63, 2, 2, sub_1CF9034C4, v18, sub_1CF8FC700, v17);

  v21 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v19;

  v23 = v19;
  v24 = fpfs_current_log();
  v54[0] = fpfs_adopt_log();
  v25 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v62 = v26;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v27 = sub_1CF9E7988();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = v62;
  sub_1CF9E6978();
  v37, v38, v39, v40, v41, v42, v43, v44;
  v45 = __fp_log_fork();

  *(v25 + 16) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v24;
  *(v46 + 24) = v25;
  *(v46 + 32) = v21;
  *(v46 + 40) = "importProgressForItemsPendingReconciliation(completionHandler:)";
  *(v46 + 48) = 63;
  *(v46 + 56) = 2;
  *(v46 + 64) = sub_1CF902C2C;
  *(v46 + 72) = v22;
  v65 = sub_1CF2B9F54;
  v66 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1CEFCA444;
  v64 = &block_descriptor_3255;
  v47 = _Block_copy(&aBlock);
  v48 = v24;

  v49 = v21;

  sub_1CF9E63F8();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v50 = v55;
  v51 = v57;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v47);
  (*(v59 + 8))(v50, v51);
  (*(v56 + 8))(v14, v58);

  v52 = v54[0];
  v53 = fpfs_adopt_log();
}

double sub_1CF8BAB78(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);

  return result;
}

double FPDDomainFPFSBackend.importProgressForItemsPendingScanningDisk(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v5;
  v11 = v6;
  v12 = v2;

  sub_1CEFD4024("importProgressForItemsPendingScanningDisk(completionHandler:)", 61, 2, sub_1CF903280, v9, sub_1CF8F365C, v8);

  return result;
}

void sub_1CF8BAD74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v57 = sub_1CF9E63A8();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1CF9E6448();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF90325C;
  *(v18 + 24) = v16;

  v19 = a4;
  v54[1] = a5;
  v20 = a6;

  sub_1CF7AAF88("importProgressForItemsPendingScanningDisk(completionHandler:)", 61, 2, 2, sub_1CF9034C4, v18, sub_1CF8FC628, v17);

  v21 = *&v20[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v19;

  v23 = v19;
  v24 = fpfs_current_log();
  v54[0] = fpfs_adopt_log();
  v25 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v62 = v26;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v27 = sub_1CF9E7988();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  v37 = v62;
  sub_1CF9E6978();
  v37, v38, v39, v40, v41, v42, v43, v44;
  v45 = __fp_log_fork();

  *(v25 + 16) = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = v24;
  *(v46 + 24) = v25;
  *(v46 + 32) = v21;
  *(v46 + 40) = "importProgressForItemsPendingScanningDisk(completionHandler:)";
  *(v46 + 48) = 61;
  *(v46 + 56) = 2;
  *(v46 + 64) = sub_1CF902C2C;
  *(v46 + 72) = v22;
  v65 = sub_1CF2B9F54;
  v66 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1CEFCA444;
  v64 = &block_descriptor_3227;
  v47 = _Block_copy(&aBlock);
  v48 = v24;

  v49 = v21;

  sub_1CF9E63F8();
  v60 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v50 = v55;
  v51 = v57;
  sub_1CF9E77B8();
  sub_1CF9E7308();
  _Block_release(v47);
  (*(v59 + 8))(v50, v51);
  (*(v56 + 8))(v14, v58);

  v52 = v54[0];
  v53 = fpfs_adopt_log();
}

double sub_1CF8BB2C0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = a4;
  v17 = a5;
  a8(a3, v14, a7, v15, v13, v12);

  return result;
}

double FPDDomainFPFSBackend.importProgressForItemsPendingScanningProvider(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E6967378]) init];
  v6 = dispatch_group_create();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = v6;
  v8[6] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF90325C;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = v5;
  v11 = v6;
  v12 = v2;

  sub_1CEFD4024("importProgressForItemsPendingScanningProvider(completionHandler:)", 65, 2, sub_1CF903280, v9, sub_1CF8F3674, v8);

  return result;
}

double sub_1CF8BB528(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = *(a1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF90325C;
  *(v14 + 24) = v12;
  swift_retain_n();

  v15 = a4;
  v16 = a5;
  v17 = a6;

  sub_1CF7AAF88("importProgressForItemsPendingScanningProvider(completionHandler:)", 65, 2, 2, sub_1CF7BA950, v14, sub_1CF8FC56C, v13);

  return result;
}

void sub_1CF8BB674(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v55 = a6;
  v56 = a7;
  v12 = sub_1CF9E63A8();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1CF9E6448();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v15 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v57 = a4;
  v19 = a5;
  sub_1CF258EE8(a3, v17, sub_1CF8FC598, v18, v16, v15);

  if (!v7)
  {
    v20 = *&v19[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
    v21 = swift_allocObject();
    v21[2] = v55;
    v21[3] = v56;
    v21[4] = a3;

    v22 = a3;
    v23 = fpfs_current_log();
    v56 = fpfs_adopt_log();
    v24 = swift_allocObject();
    aBlock = sub_1CF9E73C8();
    v65 = v25;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v26 = sub_1CF9E7988();
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    v36 = v65;
    sub_1CF9E6978();
    v36, v37, v38, v39, v40, v41, v42, v43;
    v44 = __fp_log_fork();

    *(v24 + 16) = v44;
    v45 = swift_allocObject();
    *(v45 + 16) = v23;
    *(v45 + 24) = v24;
    v54 = v24;
    v46 = v20;
    *(v45 + 32) = v20;
    *(v45 + 40) = "importProgressForItemsPendingScanningProvider(completionHandler:)";
    *(v45 + 48) = 65;
    *(v45 + 56) = 2;
    *(v45 + 64) = sub_1CF8FC5D0;
    *(v45 + 72) = v21;
    v68 = sub_1CF2B9F54;
    v69 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_1CEFCA444;
    v67 = &block_descriptor_3199;
    v47 = _Block_copy(&aBlock);
    v55 = v23;

    v48 = v46;

    v49 = v58;
    sub_1CF9E63F8();
    v70 = MEMORY[0x1E69E7CC0];
    sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v50 = v60;
    v51 = v63;
    sub_1CF9E77B8();
    sub_1CF9E7308();
    _Block_release(v47);
    (*(v62 + 8))(v50, v51);
    (*(v59 + 8))(v49, v61);

    v52 = v56;
    v53 = fpfs_adopt_log();
  }
}

double sub_1CF8BBB5C(void *a1, uint64_t a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  dispatch_group_enter(group);
  v15 = v9;
  v16 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = group;
  v12 = a1;
  v13 = group;
  sub_1CF889A58(&v15, a6, v11);

  return result;
}

double FPDDomainFPFSBackend.subscribe(toUploadProgressUpdates:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_1CEFD4024("subscribe(toUploadProgressUpdates:completionHandler:)", 53, 2, sub_1CF90324C, v6, sub_1CF8F368C, v7);

  return result;
}

double sub_1CF8BBD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_1CF7AAF88("subscribeToUploadProgressUpdates(_:completionHandler:)", 54, 2, 2, sub_1CF90324C, v8, sub_1CF8FC54C, v9);

  return result;
}

double FPDDomainFPFSBackend.subscribe(toDownloadProgressUpdates:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  swift_retain_n();
  swift_unknownObjectRetain();
  sub_1CEFD4024("subscribe(toDownloadProgressUpdates:completionHandler:)", 55, 2, sub_1CF90324C, v6, sub_1CF8F3698, v7);

  return result;
}

double sub_1CF8BC068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_retain_n();

  swift_unknownObjectRetain();
  sub_1CF7AAF88("subscribeToDownloadProgressUpdates(_:completionHandler:)", 56, 2, 2, sub_1CF90324C, v8, sub_1CF8FC52C, v9);

  return result;
}

double FPDDomainFPFSBackend.getCountersArray(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1CF903264;
  *(v6 + 24) = v4;
  swift_retain_n();

  sub_1CEFD4024("getCountersArray(completionHandler:)", 36, 2, sub_1CF903280, v6, sub_1CF8F36A4, v5);

  return result;
}

uint64_t sub_1CF8BC3D4(uint64_t a1, void (*a2)(_TtC18FileProviderDaemon8FSTester *, void))
{
  v4 = type metadata accessor for FPDDomainFPFSBackend.Counters(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 16);
  v9 = *(v8 + 32);
  type metadata accessor for VFSFileTree(0);
  v10 = swift_dynamicCastClassUnconditional();
  v11 = qword_1EDEBBE70;
  swift_beginAccess();
  sub_1CEFDA34C(v10 + v11, v7, type metadata accessor for VFSCounters);
  v12 = qword_1EDEBBC30;
  swift_beginAccess();
  sub_1CEFDA34C(v8 + v12, &v7[v5[7]], type metadata accessor for DBCounters);
  v13 = qword_1EDEBBA48;
  swift_beginAccess();
  sub_1CEFDA34C(v9 + v13, &v7[v5[8]], type metadata accessor for SnapshotCounters);
  v14 = *(v8 + 40);
  v15 = qword_1EDEBBA48;
  swift_beginAccess();
  sub_1CEFDA34C(v14 + v15, &v7[v5[9]], type metadata accessor for SnapshotCounters);
  v16 = sub_1CF828248();
  a2(v16, 0);
  v16, v17, v18, v19, v20, v21, v22, v23;
  return sub_1CEFD5338(v7, type metadata accessor for FPDDomainFPFSBackend.Counters);
}

void sub_1CF8BC748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1CF9E6D28();
    if (a2)
    {
LABEL_3:
      v6 = sub_1CF9E57E8();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

double FPDDomainFPFSBackend.resetCounters(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_retain_n();
  sub_1CEFD4024("resetCounters(completionHandler:)", 33, 2, sub_1CF90324C, v4, sub_1CF8F36AC, v5);

  return result;
}

uint64_t sub_1CF8BC8BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  v4 = (*(v3 + 32) + qword_1EDEBBA48);
  swift_beginAccess();

  sub_1CEFD5338(v4, type metadata accessor for SnapshotCounters);
  type metadata accessor for SnapshotCounters(0);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  sub_1CF9E5CC8();
  swift_endAccess();

  v5 = (*(v3 + 40) + qword_1EDEBBA48);
  swift_beginAccess();

  sub_1CEFD5338(v5, type metadata accessor for SnapshotCounters);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  sub_1CF9E5CC8();
  swift_endAccess();

  type metadata accessor for VFSFileTree(0);
  v6 = (swift_dynamicCastClassUnconditional() + qword_1EDEBBE70);
  swift_beginAccess();

  sub_1CEFD5338(v6, type metadata accessor for VFSCounters);
  type metadata accessor for VFSCounters(0);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  sub_1CF9E5CC8();
  swift_endAccess();

  v7 = (v3 + qword_1EDEBBC30);
  swift_beginAccess();
  sub_1CEFD5338(v7, type metadata accessor for DBCounters);
  *v7 = 0;
  type metadata accessor for DBCounters(0);
  sub_1CF9E5CC8();
  swift_endAccess();
  return a2(0);
}

double FPDDomainFPFSBackend.hasNonUploadedFiles(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF8F1034;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  v6[2] = sub_1CF8F1034;
  v6[3] = v4;
  v6[4] = a1;
  v6[5] = a2;
  swift_retain_n();
  swift_retain_n();
  sub_1CEFD4024("hasNonUploadedFiles(completionHandler:)", 39, 2, sub_1CF90324C, v5, sub_1CF8F36B4, v6);

  return result;
}

double sub_1CF8BCD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a4;
  v11[4] = a5;

  sub_1CF7AAF88("hasNonUploadedFiles(completionHandler:)", 39, 2, 2, sub_1CF90324C, v10, sub_1CF8FC4EC, v11);

  return result;
}

void sub_1CF8BCE48(void *a1, uint64_t a2, void (*a3)(BOOL, void, __n128))
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(**(*(a2 + 16) + 16) + 552);

  v11 = v10(v9, v7, v8);
  v13 = v12;

  if (!v4)
  {
    (a3)((v11 | v13) != 0, 0);
  }
}

double FPDDomainFPFSBackend.getDBOptions(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1CF8F36C0;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_retain_n();

  sub_1CEFD4024("getDBOptions(completionHandler:)", 32, 2, sub_1CF90324C, v5, sub_1CF8F36F0, v6);

  return result;
}

void FPDDomainFPFSBackend.setAlternateContentsURLWrapper(_:forDocumentWith:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1CF9E5928();
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = v5;
  v12[5] = a1;
  v16[4] = sub_1CF8F3724;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1CEFF9A6C;
  v16[3] = &block_descriptor_614;
  v13 = _Block_copy(v16);

  v14 = v6;
  v15 = a1;

  [v14 itemIDForURL:v11 requireProviderItemID:0 request:a3 completionHandler:v13];
  _Block_release(v13);
}

void sub_1CF8BD46C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a3;
    *(v10 + 24) = a4;
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = a1;
    v11[4] = a3;
    v11[5] = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1CF90325C;
    *(v12 + 24) = v10;
    v13 = a1;
    swift_retain_n();
    v14 = v13;
    v15 = a6;

    sub_1CEFD4024("setAlternateContentsURLWrapper(_:forDocumentWith:request:completionHandler:)", 76, 2, sub_1CF903280, v12, sub_1CF8FC49C, v11);
  }

  else
  {
    (a3)(0, a2, a3, a4, a5, a6);
  }
}

void sub_1CF8BD830(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a3;
    v8[4] = a4;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1CF90325C;
    *(v9 + 24) = v7;
    v10 = a1;
    swift_retain_n();
    v11 = v10;

    sub_1CEFD4024("fetchAlternateContentsURLWrapperForDocument(with:request:completionHandler:)", 76, 2, sub_1CF903280, v9, sub_1CF8FC3E0, v8);
  }

  else
  {
    (a3)(0, a2);
  }
}

void sub_1CF8BDBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v14 = sub_1CF9E5928();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v7;
  v18[4] = a6;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1CEFF9A6C;
  v18[3] = a7;
  v16 = _Block_copy(v18);

  v17 = v10;

  [v17 itemIDForURL:v14 requireProviderItemID:0 request:a2 completionHandler:v16];
  _Block_release(v16);
}

void sub_1CF8BDCE0(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = a3;
    v8[4] = a4;
    v9 = a1;
    swift_retain_n();
    v10 = v9;
    sub_1CEFD4024("didUpdateAlternateContentsDocumentForDocument(with:request:completionHandler:)", 78, 2, sub_1CF90324C, v7, sub_1CF8FC394, v8);
  }

  else
  {
    a3(a2);
  }
}

void sub_1CF8BDE00(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_1CF9E6118();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = [*(a1 + 48) getAlternateContentsURLWrapperForItemID_];
  if (v14)
  {

    v15 = ~(*(v13 + 80) >> 20) & 2;
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v17 = swift_allocObject();
    v17[2] = v13;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    swift_retain_n();

    v18 = a2;
    sub_1CF7AAF88("didUpdateAlternateContentsDocumentForDocument(with:request:completionHandler:)", 78, 2, v15, sub_1CF90324C, v16, sub_1CF8FC3A0, v17);
  }

  else
  {
    v19 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v20 = a2;
    v21 = sub_1CF9E6108();
    v22 = sub_1CF9E72A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_1CEFC7000, v21, v22, "did update alternate content was called with no alternate contents association in place for document with ID: %{public}@", v23, 0xCu);
      sub_1CEFCCC44(v24, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      MEMORY[0x1D386CDC0](v23, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    a3(0);
  }
}

uint64_t sub_1CF8BE0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a2 + qword_1EDEBBDD8);
  if (!v6)
  {
    return a4(0);
  }

  v7 = *(a2 + qword_1EDEBBDD8 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v10;

  v6(sub_1CF8FC3C0, v12);
  result = sub_1CEFF7124(v6, v7);
  if (!v4)
  {
    return a4(0);
  }

  return result;
}

uint64_t sub_1CF8BE1B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E6118();
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v48 = *(v14 - 8);
  v49 = v14;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v44 - v16;
  v18 = sub_1CEFD4E9C([a1 identifier]);
  swift_beginAccess();
  if (*(v18 + 41) == 1)
  {
  }

  else
  {
    v45 = a1;
    v46 = v9;
    v47 = a4;
    v31 = *(v18 + 40);
    v32 = *(v18 + 32);

    v34 = a2[3];
    v33 = a2[4];
    v35 = __swift_project_boxed_opaque_existential_1(a2, v34);
    v36 = *(a3 + 32);
    v51 = v32;
    v52 = v31;
    result = (*(*v36 + 240))(&v51, 1, v35, v34, v33);
    if (v4)
    {
      return result;
    }

    v38 = v48;
    v37 = v49;
    if ((*(v48 + 48))(v13, 1, v49) != 1)
    {
      sub_1CEFE55D0(v13, v17, &unk_1EC4BE360, &qword_1CF9FE650);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
      v40 = *(v39 + 48);
      v53 = 0;
      v41 = *(v39 + 64);
      v42 = v47;
      sub_1CEFCCBDC(v17, v47, &unk_1EC4BE360, &qword_1CF9FE650);
      v43 = *(v38 + 56);
      v43(v42, 0, 1, v37);
      sub_1CEFE55D0(v17, v42 + v40, &unk_1EC4BE360, &qword_1CF9FE650);
      v43(v42 + v40, 0, 1, v37);
      *(v42 + v41) = 0;
      return (*(*(v39 - 8) + 56))(v42, 0, 1, v39);
    }

    sub_1CEFCCC44(v13, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v9 = v46;
    a4 = v47;
    a1 = v45;
  }

  v19 = fpfs_current_or_default_log();
  v20 = v50;
  sub_1CF9E6128();
  v21 = a1;
  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E72A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = v9;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    *(v25 + 4) = v21;
    *v26 = v21;
    v27 = v21;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "did update alternate content failed to find item for: %{public}@", v25, 0xCu);
    sub_1CEFCCC44(v26, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v26, -1, -1);
    v28 = v25;
    v9 = v24;
    MEMORY[0x1D386CDC0](v28, -1, -1);
  }

  (*(v53 + 8))(v20, v9);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBF0, &qword_1CFA05330);
  return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
}

void sub_1CF8BE8C4(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1CEFD57E0(0, &qword_1EC4C4C10, 0x1E69674D0);
    v4 = sub_1CF9E6D48();
  }

  v6 = a3;
  v5(v4, a3);

  v4, v7, v8, v9, v10, v11, v12, v13;
}

double FPDDomainFPFSBackend.getDiagnosticAttributes(forItems:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = v3;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF903264;
  *(v9 + 24) = v7;
  swift_retain_n();

  v10 = v3;

  sub_1CEFD4024("getDiagnosticAttributes(forItems:completionHandler:)", 52, 2, sub_1CF903280, v9, sub_1CF8F3748, v8);

  return result;
}

void sub_1CF8BEA94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v98 = a4;
  v97 = a3;
  v105 = sub_1CF9E63A8();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1CF9E6448();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1CF9E5268();
  v11 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a1;
  v115 = *(a1 + 16);
  v13 = swift_allocObject();
  v117 = v13;
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  v109 = (v13 + 16);
  v14 = dispatch_group_create();
  v15 = v14;
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v14; v16; i = v15)
  {
    v17 = 0;
    v116 = (a2 & 0xC000000000000001);
    v112 = a2 & 0xFFFFFFFFFFFFFF8;
    v96 = (v11 + 8);
    v18 = &selRef_defaultNSDomainForDescriptor_;
    v19 = &selRef_defaultNSDomainForDescriptor_;
    v113 = v16;
    v114 = a2;
    while (1)
    {
      if (v116)
      {
        v30 = MEMORY[0x1D3869C30](v17, a2);
      }

      else
      {
        if (v17 >= *(v112 + 16))
        {
          goto LABEL_23;
        }

        v30 = *(a2 + 8 * v17 + 32);
      }

      v31 = v30;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      dispatch_group_enter(v15);
      v32 = [v31 v18[62]];
      v119 = (v17 + 1);
      if (v32)
      {
        v20 = v115;
        type metadata accessor for VFSFileTree(0);
        v21 = swift_dynamicCastClassUnconditional();

        v22 = [v31 v18[62]];
        v23 = swift_allocObject();
        v23[2] = v31;
        v23[3] = v20;
        v23[4] = v15;
        v23[5] = v117;
        v24 = *(v21 + 216);
        v25 = swift_allocObject();
        *(v25 + 16) = v22;
        *(v25 + 24) = v21;
        *(v25 + 32) = 1;
        *(v25 + 40) = sub_1CF8FC1C0;
        *(v25 + 48) = v23;

        v26 = v31;
        v16 = v113;

        v27 = i;
        v15 = i;

        v28 = v24;
        v18 = &selRef_defaultNSDomainForDescriptor_;
        v29 = v28;

        sub_1CF01001C(0, "performWithDiskDiagnosticAttributes(for:isExternalQuery:block:)", 63, 2, sub_1CF6FC644, v25);

        a2 = v114;
        v11 = v119;
      }

      else
      {
        if ([v31 v19[210]])
        {
          v33 = v115;
          type metadata accessor for VFSFileTree(0);
          v34 = swift_dynamicCastClassUnconditional();

          v35 = [v31 v19[210]];
          v36 = swift_allocObject();
          v36[2] = v31;
          v36[3] = v33;
          v36[4] = v15;
          v36[5] = v117;
          v37 = *(v34 + 216);
          v38 = swift_allocObject();
          *(v38 + 16) = v35;
          *(v38 + 24) = v34;
          *(v38 + 32) = 1;
          *(v38 + 40) = sub_1CF8FC234;
          *(v38 + 48) = v36;
          v39 = v31;
          v16 = v113;

          v40 = i;
          v15 = i;

          v41 = v37;
          v18 = &selRef_defaultNSDomainForDescriptor_;
          v42 = v41;

          sub_1CF01001C(0, "performWithDiskDiagnosticAttributes(by:isExternalQuery:block:)", 62, 2, sub_1CF8FC24C, v38);

          a2 = v114;
        }

        else
        {
          v43 = [v31 itemID];
          if (v43)
          {
            v44 = v43;
            v45 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithItemID_];
            v111 = v45;
            v46 = swift_allocObject();
            v46[2] = v45;
            v46[3] = v15;
            v47 = v110;
            v46[4] = v117;
            v46[5] = v47;
            v48 = swift_allocObject();
            *(v48 + 16) = sub_1CF8FC250;
            *(v48 + 24) = v46;
            v49 = swift_allocObject();
            *(v49 + 16) = v115;
            *(v49 + 24) = v44;
            *(v49 + 32) = sub_1CF8FC250;
            *(v49 + 40) = v46;
            *(v49 + 48) = 1;
            v50 = swift_allocObject();
            *(v50 + 16) = sub_1CEFF9D98;
            *(v50 + 24) = v48;
            swift_retain_n();

            v51 = i;
            v15 = i;

            v111 = v111;

            v52 = v44;

            v16 = v113;
            sub_1CF7AAF88("performWithDBDiagnosticAttributes(for:isExternalQuery:block:)", 61, 2, 2, sub_1CF8FC294, v50, sub_1CF8FC268, v49);

            a2 = v114;

            v18 = &selRef_defaultNSDomainForDescriptor_;
          }

          else
          {
            sub_1CF9E5198();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
            v54 = v106;
            v53 = v107;
            sub_1CF9E57D8();
            v55 = sub_1CF9E50D8();
            (*v96)(v54, v53);
            v56 = sub_1CF9E57E8();

            [v31 setError_];
            v57 = v15;
            v58 = objc_sync_enter(v57);
            if (v58)
            {
              MEMORY[0x1EEE9AC00](v58);
              *(&v96 - 2) = v57;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v96 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
            }

            v59 = v109;
            swift_beginAccess();
            v60 = v31;
            MEMORY[0x1D3868FA0]();
            if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1CF9E6D88();
            }

            sub_1CF9E6DE8();
            swift_endAccess();
            v61 = objc_sync_exit(v57);
            if (v61)
            {
              MEMORY[0x1EEE9AC00](v61);
              *(&v96 - 2) = v57;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v96 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            dispatch_group_leave(v57);
          }
        }

        v11 = v119;
      }

      ++v17;
      v19 = &selRef_defaultNSDomainForDescriptor_;
      if (v11 == v16)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v16 = sub_1CF9E7818();
  }

LABEL_25:
  v62 = *(v97 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  v63 = swift_allocObject();
  v64 = v99;
  v63[2] = v98;
  v63[3] = v64;
  v63[4] = v117;

  v65 = fpfs_current_log();
  v119 = fpfs_adopt_log();
  v66 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v122 = v67;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v68 = sub_1CF9E7988();
  v70 = v69;
  MEMORY[0x1D3868CC0](v68);
  v70, v71, v72, v73, v74, v75, v76, v77;
  v78 = v122;
  sub_1CF9E6978();
  v78, v79, v80, v81, v82, v83, v84, v85;
  v86 = __fp_log_fork();

  *(v66 + 16) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = v65;
  *(v87 + 24) = v66;
  *(v87 + 32) = v62;
  *(v87 + 40) = "getDiagnosticAttributes(forItems:completionHandler:)";
  *(v87 + 48) = 52;
  *(v87 + 56) = 2;
  *(v87 + 64) = sub_1CF8FC1D8;
  *(v87 + 72) = v63;
  v125 = sub_1CF2B9F54;
  v126 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v122 = 1107296256;
  v123 = sub_1CEFCA444;
  v124 = &block_descriptor_3066;
  v88 = _Block_copy(&aBlock);
  v116 = v65;

  v89 = v62;

  v90 = v100;
  sub_1CF9E63F8();
  v120 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v91 = v102;
  v92 = v105;
  sub_1CF9E77B8();
  v93 = i;
  sub_1CF9E7308();
  _Block_release(v88);
  (*(v104 + 8))(v91, v92);
  (*(v101 + 8))(v90, v103);

  v94 = v119;
  v95 = fpfs_adopt_log();
}

double sub_1CF8BF7A4(uint64_t a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = [a3 docID];
  v12 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithDocID_];
  if (a2)
  {
    v13 = sub_1CF9E57E8();
    v14 = &selRef_setError_;
  }

  else
  {
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v13 = sub_1CF9E6618();
    v14 = &selRef_setDiagnosticAttributes_;
  }

  [v12 *v14];

  v15 = [a3 docID];
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = a5;
  v16[4] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FC35C;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = a4;
  *(v18 + 32) = sub_1CF8FC35C;
  *(v18 + 40) = v16;
  *(v18 + 48) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CEFF9D98;
  *(v19 + 24) = v17;
  swift_retain_n();
  v20 = v12;
  v21 = a5;

  sub_1CF7AAF88("performWithDBDiagnosticAttributes(for:isExternalQuery:block:)", 61, 2, 2, sub_1CF9034C8, v19, sub_1CF8FC36C, v18);

  return result;
}

void sub_1CF8BF9FC(void *a1, char a2, id a3, NSObject *a4, uint64_t a5)
{
  v10 = [a3 diagnosticAttributes];
  if (v10)
  {
    v11 = v10;
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v12 = sub_1CF9E6638();
  }

  else
  {
    v12 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F50, &unk_1CFA18140);
  if ((a2 & 1) == 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v12;
    sub_1CF6F9A38(a1, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, &v57);
    sub_1CF481340(a1, 0, v42, v43, v44, v45, v46, v47);
    v27 = v57;
    goto LABEL_9;
  }

  v57 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    v17 = [v56 domain];
    if (v17)
    {
      v18 = v17;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v18, v14, v16, v19);
      v16, v20, v21, v22, v23, v24, v25, v26;
      v27 = v12;
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;
      v31 = [v56 code];
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v32, v28, v30, v33);

      v30, v34, v35, v36, v37, v38, v39, v40;
LABEL_9:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v48 = sub_1CF9E6618();
      [a3 setDiagnosticAttributes_];

      sub_1CF518C48(a4, (a5 + 16), a3);
      v27, v49, v50, v51, v52, v53, v54, v55;
      dispatch_group_leave(a4);
      return;
    }

    __break(1u);
  }

  sub_1CF9E8038();
  __break(1u);
}

double sub_1CF8BFD0C(uint64_t a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = [a3 fileID];
  v12 = [objc_allocWithZone(MEMORY[0x1E69674D0]) initWithFileID_];
  if (a2)
  {
    v13 = sub_1CF9E57E8();
    v14 = &selRef_setError_;
  }

  else
  {
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v13 = sub_1CF9E6618();
    v14 = &selRef_setDiagnosticAttributes_;
  }

  [v12 *v14];

  v15 = [a3 fileID];
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = a5;
  v16[4] = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF8FC2AC;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = sub_1CF8FC2AC;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  *(v18 + 48) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1CEFF9D98;
  *(v19 + 24) = v17;
  swift_retain_n();
  v20 = v12;
  v21 = a5;

  sub_1CF7AAF88("performWithDBDiagnosticAttributes(for:isExternalQuery:block:)", 61, 2, 2, sub_1CF9034C8, v19, sub_1CF8FC2BC, v18);

  return result;
}

void sub_1CF8BFF60(void *a1, char a2, id a3, NSObject *a4, uint64_t a5)
{
  v10 = [a3 diagnosticAttributes];
  if (v10)
  {
    v11 = v10;
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v12 = sub_1CF9E6638();
  }

  else
  {
    v12 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F50, &unk_1CFA18140);
  if ((a2 & 1) == 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v12;
    sub_1CF8F58BC(a1, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, &v57);
    sub_1CF481340(a1, 0, v42, v43, v44, v45, v46, v47);
    v27 = v57;
    goto LABEL_9;
  }

  v57 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    v17 = [v56 domain];
    if (v17)
    {
      v18 = v17;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v18, v14, v16, v19);
      v16, v20, v21, v22, v23, v24, v25, v26;
      v27 = v12;
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;
      v31 = [v56 code];
      v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_1CF1D1950(v32, v28, v30, v33);

      v30, v34, v35, v36, v37, v38, v39, v40;
LABEL_9:
      sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
      v48 = sub_1CF9E6618();
      [a3 setDiagnosticAttributes_];

      sub_1CF518C48(a4, (a5 + 16), a3);
      v27, v49, v50, v51, v52, v53, v54, v55;
      dispatch_group_leave(a4);
      return;
    }

    __break(1u);
  }

  sub_1CF9E8038();
  __break(1u);
}

void sub_1CF8C0270(uint64_t a1, char a2, void *a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_1CF9E57E8();
    v10 = &selRef_setError_;
  }

  else
  {
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v9 = sub_1CF9E6618();
    v10 = &selRef_setDiagnosticAttributes_;
  }

  [a3 *v10];

  v11 = [a3 diagnosticAttributes];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  v13 = sub_1CF9E6638();

  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v15;
  if (!*v13->tree)
  {
    v13, v15, v16, v17, v18, v19, v20, v21;
    v56 = v22;
LABEL_13:
    v56, v32, v33, v34, v35, v36, v37, v38;
    goto LABEL_14;
  }

  v23 = sub_1CEFE4328(v14, v15);
  v25 = v24;
  v22, v24, v26, v27, v28, v29, v30, v31;
  if ((v25 & 1) == 0)
  {
    v56 = v13;
    goto LABEL_13;
  }

  v39 = *(*v13[1].tester + 8 * v23);
  v13, v40, v41, v42, v43, v44, v45, v46;
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (v47)
  {
    v48 = [v47 unsignedLongLongValue];
    type metadata accessor for VFSFileTree(0);
    v49 = swift_dynamicCastClassUnconditional();
    v50 = swift_allocObject();
    v50[2] = a3;
    v50[3] = a4;
    v50[4] = a5;
    v51 = *(v49 + 216);
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    *(v52 + 24) = v49;
    *(v52 + 32) = 1;
    *(v52 + 40) = sub_1CF8FC29C;
    *(v52 + 48) = v50;
    swift_retain_n();
    v53 = a3;
    v54 = a4;

    v55 = v51;

    sub_1CF01001C(0, "performWithDiskDiagnosticAttributes(by:isExternalQuery:block:)", 62, 2, sub_1CF902D9C, v52);

    return;
  }

LABEL_14:
  sub_1CF518C48(a4, (a5 + 16), a3);

  dispatch_group_leave(a4);
}

void sub_1CF8C058C(void *a1, char a2, id a3, NSObject *a4, uint64_t a5)
{
  v10 = [a3 diagnosticAttributes];
  if (v10)
  {
    v11 = v10;
    sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
    v12 = sub_1CF9E6638();

    if (a2)
    {
LABEL_3:
      v13 = sub_1CF9E57E8();
      [a3 setError_];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v12;
  sub_1CF8F58BC(a1, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, &v29);
  sub_1CF481340(a1, 0, v15, v16, v17, v18, v19, v20);
  v12 = v29;
LABEL_6:
  sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);
  v21 = sub_1CF9E6618();
  [a3 setDiagnosticAttributes_];

  sub_1CF518C48(a4, (a5 + 16), a3);
  v12, v22, v23, v24, v25, v26, v27, v28;

  dispatch_group_leave(a4);
}

void sub_1CF8C074C(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  (a1)(v6, 0);
  v5, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1CF8C0960(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  v7 = a1;
  if (a1)
  {
    sub_1CEFD57E0(0, a4, a5);
    v7 = sub_1CF9E6D28();
  }

  if (a2)
  {
    v8 = sub_1CF9E57E8();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a3 + 16))(a3, v7);
}

double FPDDomainFPFSBackend.pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v39 = a7;
  v38 = a6;
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C20F0, &unk_1CFA0F4A0);
  v12 = swift_allocBox();
  v36 = v12;
  v37 = a1;
  v14 = v13;
  v15 = *(v11 + 48);
  v16 = *(v11 + 64);
  v17 = *(v9 + 16);
  v17(v13, a1, v8);
  v18 = v44;
  *(v14 + v15) = v43;
  *(v14 + v16) = v18;
  v35 = v12 | 0x9000000000000004;
  v19 = v34;
  v17(v34, a1, v8);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 2) = v38;
  *(v24 + 3) = v25;
  v26 = v40;
  *(v24 + 4) = v40;
  (*(v9 + 32))(&v24[v20], v19, v8);
  v27 = v42;
  *&v24[v21] = v43;
  v28 = &v24[v22];
  *v28 = v41;
  v28[1] = v27;
  v29 = v35;
  *&v24[v23] = v35;
  v30 = v44;

  v31 = v26;

  sub_1CF84D640(v37, 1, v29, sub_1CF8F3754, v24);

  return result;
}

uint64_t sub_1CF8C0C4C(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, __n128), uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v40 = a8;
  v41 = a7;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a3(0, a2, v19);
  }

  v38 = a10;
  v36 = a9;
  v21 = swift_allocObject();
  v37 = v21;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v17 + 16))(&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v16);
  v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = v16;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = a5;
  v25 = swift_allocObject();
  *(v25 + 2) = a3;
  *(v25 + 3) = a4;
  *(v25 + 4) = a1;
  (*(v17 + 32))(&v25[v22], v20, v35);
  v26 = v40;
  *&v25[v23] = v41;
  v27 = &v25[v24];
  v28 = v36;
  *v27 = v26;
  v27[1] = v28;
  v29 = v38;
  *&v25[(v24 + 23) & 0xFFFFFFFFFFFFFFF8] = v38;
  v30 = a1;
  swift_retain_n();
  v31 = v30;
  v32 = v37;

  sub_1CEFD09A0(v29);
  sub_1CF8EDD24("pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)", 65, 2, sub_1CF8FB9F0, v25, v39, sub_1CF90325C, v32);
}

double sub_1CF8C0EA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v47 = a7;
  v48 = a8;
  v49 = a4;
  v42 = a3;
  v43 = a2;
  v45 = a6;
  v46 = a9;
  v13 = sub_1CF9E5A58();
  v39 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = swift_allocObject();
  v18 = a1;
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = sub_1CF90325C;
  v19[3] = v16;
  v19[4] = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF902E4C;
  *(v20 + 24) = v19;
  v21 = v18;
  v44 = *(v18 + 16);
  v22 = swift_allocObject();
  v41 = v22;
  *(v22 + 16) = sub_1CF903440;
  *(v22 + 24) = v20;
  (*(v14 + 16))(&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
  v23 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v49;
  *(v27 + 2) = v21;
  *(v27 + 3) = v28;
  *(v27 + 4) = sub_1CF903440;
  *(v27 + 5) = v20;
  (*(v14 + 32))(&v27[v23], v40, v39);
  v29 = v46;
  *&v27[v24] = v45;
  v30 = &v27[v25];
  v31 = v42;
  *v30 = v43;
  v30[1] = v31;
  v32 = &v27[v26];
  v33 = v48;
  *v32 = v47;
  v32[1] = v33;
  *&v27[(v26 + 23) & 0xFFFFFFFFFFFFFFF8] = v29;
  v34 = swift_allocObject();
  v35 = v41;
  *(v34 + 16) = sub_1CF90325C;
  *(v34 + 24) = v35;
  swift_retain_n();
  swift_retain_n();

  v36 = v49;

  sub_1CEFD09A0(v29);

  sub_1CF7AAF88("pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)", 65, 2, 2, sub_1CF9034C4, v34, sub_1CF8FBAB0, v27);

  return result;
}

void sub_1CF8C11F8(void *a1, unint64_t a2, void *a3, void (*a4)(void, void *), void *a5, void (*a6)(uint64_t a1), uint64_t a7, void (*a8)(void, void *), uint64_t a9, char *a10, void (*a11)(uint64_t a1), unint64_t a12)
{
  v376 = a5;
  v371 = a8;
  v372 = a6;
  v373 = a4;
  v374 = a7;
  v15 = sub_1CF9E63D8();
  v342 = *(v15 - 8);
  v343 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v341 = &v329 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v348 = &v329 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v358 = &v329 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v350 = &v329 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v345 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v352 = &v329 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v346 = &v329 - v26;
  v351 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v357 = &v329 - v29;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v344);
  v349 = &v329 - v30;
  v31 = sub_1CF9E6118();
  v355 = *(v31 - 8);
  v356 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v354 = &v329 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v353 = &v329 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v365 = (&v329 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v363 = *(v37 - 8);
  v364 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v359 = &v329 - v38;
  v369 = sub_1CF9E5A58();
  v367 = *(v369 - 8);
  v39 = *(v367 + 64);
  MEMORY[0x1EEE9AC00](v369);
  v347 = &v329 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v368 = &v329 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v362 = &v329 - v43;
  v44 = sub_1CF9E53C8();
  v360 = *(v44 - 8);
  v361 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v329 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[3];
  v47 = a1[4];
  v366 = a1;
  v49 = __swift_project_boxed_opaque_existential_1(a1, v48);
  v370 = a2;
  v50 = *(a2 + 16);

  v375 = a3;
  v51 = [a3 identifier];
  v388 = v51;
  v52 = v377;
  sub_1CF68E230(&v388, v49, v48, v47, v389);
  if (v52)
  {

    return;
  }

  v53 = v374;
  v377 = v39;
  v339 = v46;
  v340 = v50;

  memcpy(v386, v389, sizeof(v386));
  memcpy(v387, v389, sizeof(v387));
  v54 = sub_1CF08B99C(v387);
  v55 = v375;
  if (v54 == 1)
  {
    goto LABEL_11;
  }

  memcpy(v390, v387, sizeof(v390));
  if (LOBYTE(v387[27]) == 255)
  {
    sub_1CEFCCC44(v386, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_11:
    v59 = [v55 identifier];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
    sub_1CEFCCCEC(&qword_1EDEAB020, &qword_1EC4BF270, &qword_1CFA01B70, &unk_1CFA13B50);
    v60 = swift_allocError();
    *v61 = v59;
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *(v61 + 24) = 1;
    *(v61 + 32) = 0u;
    *(v61 + 48) = 0u;
    *(v61 + 64) = 0u;
    *(v61 + 73) = 0u;
    v373(0, v60);

    return;
  }

  if ((v387[56] & 4) != 0)
  {
    v62 = sub_1CF9E5928();
    v63 = FPFileIsAlreadyPausedError();

    v373(0, v63);
    v64 = &unk_1EC4BFD80;
    v65 = &unk_1CFA0A2A0;
    v66 = v386;
LABEL_13:
    sub_1CEFCCC44(v66, v64, v65);
    return;
  }

  v338 = LOBYTE(v387[27]);
  v56 = v387[26];
  sub_1CF7F6024(v384);
  memcpy(v385, v384, sizeof(v385));
  v337 = v56;
  if (LOBYTE(v385[1]) == 255 || !v385[31])
  {
    sub_1CEFCCC44(v385, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v58 = 0;
  }

  else
  {
    v57 = v385[24];
    sub_1CEFCCC44(v385, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
    v58 = v57 >> 60 != 11 && LOBYTE(v385[43]) == 0;
  }

  v374 = a9;
  if (v53 == 1)
  {
    v336 = 0;
    goto LABEL_18;
  }

  if (LOBYTE(v387[46]) == 2 || LOBYTE(v387[15]) == 2)
  {
    *v384 = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v95 = v339;
    v96 = v361;
    sub_1CF9E57D8();
    v97 = sub_1CF9E53A8();
    (*(v360 + 8))(v95, v96);
    v98 = v97;
LABEL_30:
    v371(0, v98);
    sub_1CEFCCC44(v386, &unk_1EC4BFD80, &unk_1CFA0A2A0);

    return;
  }

  sub_1CEFCCBDC(&v387[26], v384, &unk_1EC4BFE00, &unk_1CF9FEF00);
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  v103 = qword_1EDEABDE8;
  sub_1CEFCCC44(&v387[26], &unk_1EC4BFE00, &unk_1CF9FEF00);
  v104 = (v387[29] & (v103 | 0x10)) == 0;
  v106 = v360;
  v105 = v361;
  if (!v104 || (v387[28] & 0x51) != 0 || LOBYTE(v387[43]) == 1)
  {
LABEL_29:
    *v384 = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v107 = v339;
    sub_1CF9E57D8();
    v97 = sub_1CF9E53A8();
    (*(v106 + 8))(v107, v105);
    v98 = v97;
    goto LABEL_30;
  }

  v156 = qword_1EDEABDE8;
  if (!qword_1EDEABDE8)
  {
    if (!v58)
    {
      v156 = 16;
      goto LABEL_82;
    }

    v319 = 0;
    goto LABEL_79;
  }

  if ((qword_1EDEABDE8 & 0x10) != 0)
  {
    if (!v58)
    {
      goto LABEL_82;
    }

LABEL_78:
    v319 = qword_1EDEABDE8 & 0xFFFFDFFFFFFEF6E7;
    if ((qword_1EDEABDE8 & 0x4000) != 0)
    {
LABEL_80:
      v156 = (v156 | 0x64090000008000) & v319;
      goto LABEL_82;
    }

LABEL_79:
    v156 = qword_1EDEABDE8 | 0x4000;
    goto LABEL_80;
  }

  if (v58)
  {
    goto LABEL_78;
  }

  v156 = qword_1EDEABDE8 | 0x10;
LABEL_82:
  if ((v387[2] & v156) != 0 || (v387[1] & 0x51) != 0 || LOBYTE(v387[12]) == 1)
  {
    goto LABEL_29;
  }

  v336 = 0;
  v320 = v387[0];
  if (v387[0])
  {
    v321 = v366[3];
    v335 = v366[4];
    v334 = __swift_project_boxed_opaque_existential_1(v366, v321);
    v322 = *(v340 + 40);
    v383 = v320;
    v323 = *(*v322 + 264);
    v324 = v320;

    v325 = v336;
    v323(v384, &v383, v334, v321, v335);
    if (v325)
    {

      v336 = 0;
    }

    else
    {
      v336 = 0;

      v379[12] = *&v384[192];
      v379[13] = *&v384[208];
      v379[14] = *&v384[224];
      v379[8] = *&v384[128];
      v379[9] = *&v384[144];
      v379[10] = *&v384[160];
      v379[11] = *&v384[176];
      v379[4] = *&v384[64];
      v379[5] = *&v384[80];
      v379[6] = *&v384[96];
      v379[7] = *&v384[112];
      v379[0] = *v384;
      v379[1] = *&v384[16];
      v379[2] = *&v384[32];
      v379[3] = *&v384[48];
      v381[12] = *&v384[192];
      v381[13] = *&v384[208];
      v381[14] = *&v384[224];
      v381[8] = *&v384[128];
      v381[9] = *&v384[144];
      v381[10] = *&v384[160];
      v381[11] = *&v384[176];
      v381[4] = *&v384[64];
      v381[5] = *&v384[80];
      v381[6] = *&v384[96];
      v381[7] = *&v384[112];
      v381[0] = *v384;
      v381[1] = *&v384[16];
      v380 = *&v384[240];
      v382 = *&v384[240];
      v381[2] = *&v384[32];
      v381[3] = *&v384[48];
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v381) != 1)
      {
        if ((BYTE8(v381[0]) & 1) != 0 || (BYTE9(v381[0]) & 1) == 0)
        {
          v378 = 16;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v326 = v339;
          v327 = v361;
          sub_1CF9E57D8();
          v328 = sub_1CF9E53A8();
          (*(v360 + 8))(v326, v327);
          v371(0, v328);

          sub_1CEFCCC44(v379, &qword_1EC4BECF0, &unk_1CF9FEEB0);
          sub_1CEFCCC44(v386, &unk_1EC4BFD80, &unk_1CFA0A2A0);

          return;
        }

        sub_1CEFCCC44(v379, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      }
    }
  }

LABEL_18:
  v68 = v367;
  v67 = v368;
  v69 = v372;
  v70 = v362;
  v71 = v377;
  v377 = a12;
  v372 = a11;
  v362 = a10;
  v72 = *(v367 + 16);
  v73 = v369;
  v72(v70, v69, v369);
  v333 = v72;
  v334 = (v68 + 16);
  v72(v67, v70, v73);
  v74 = *(v68 + 80);
  v75 = (v74 + 33) & ~v74;
  v332 = v71 + 7;
  v76 = v70;
  v77 = (v71 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
  v360 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
  v361 = (v360 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v361 + 15) & 0xFFFFFFFFFFFFFFF8;
  v339 = ((v78 + 23) & 0xFFFFFFFFFFFFFFF8);
  v335 = v74;
  v79 = swift_allocObject();
  v80 = v337;
  *(v79 + 16) = v370;
  *(v79 + 24) = v80;
  *(v79 + 32) = v338;
  v330 = *(v68 + 32);
  v331 = v68 + 32;
  v330(v79 + v75, v76, v73);
  v81 = (v79 + v77);
  v82 = v372;
  *v81 = v362;
  v81[1] = v82;
  v83 = (v79 + v360);
  v84 = v374;
  v85 = v376;
  v86 = v377;
  *v83 = v373;
  v83[1] = v85;
  *(v79 + v361) = v86;
  v87 = (v79 + v78);
  *v87 = v371;
  v87[1] = v84;
  v361 = v79;
  v88 = v375;
  *&v339[v79] = v375;
  v89 = v366[3];
  v360 = v366[4];
  v366 = __swift_project_boxed_opaque_existential_1(v366, v89);
  v90 = *(v340 + 32);
  *v384 = v80;
  v384[8] = v338;
  v339 = *(*v90 + 240);
  v375 = v88;
  sub_1CEFD09A0(v86);

  v91 = v365;
  v92 = v336;
  (v339)(v384, 1, v366, v89, v360);
  if (v92)
  {

    (*(v367 + 8))(v368, v369);
    (*(v363 + 56))(v91, 1, 1, v364);
    v93 = v371;
    v94 = &selRef_defaultNSDomainForDescriptor_;
LABEL_25:
    sub_1CEFCCC44(v91, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v101 = [v375 v94[401]];
    v102 = FPItemNotFoundError();

    v93(0, v102);
    sub_1CEFCCC44(v386, &unk_1EC4BFD80, &unk_1CFA0A2A0);

    return;
  }

  v99 = v335;

  v100 = v364;
  v94 = &selRef_defaultNSDomainForDescriptor_;
  if ((*(v363 + 48))(v91, 1, v364) == 1)
  {
    (*(v367 + 8))(v368, v369);
    v93 = v371;
    goto LABEL_25;
  }

  v108 = v359;
  sub_1CEFE55D0(v91, v359, &unk_1EC4BE360, &qword_1CF9FE650);
  v109 = v108 + *(v100 + 48);
  v110 = *(v109 + *(type metadata accessor for ItemMetadata(0) + 80));
  v111 = v371;
  v336 = 0;
  if (v110 == 1)
  {
    v112 = v367 + 8;
    v113 = v369;
    v372 = *(v367 + 8);
    (v372)(v368, v369);
    v114 = sub_1CEFD4E9C([v375 &selRef_fileDescriptor]);
    v373 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
    v115 = swift_allocObject();
    v116 = v374;
    v115[2] = v111;
    v115[3] = v116;
    v117 = v361;
    v376 = v115;
    v115[4] = sub_1CF8FBB8C;
    v115[5] = v117;

    v118 = fpfs_current_or_default_log();
    v119 = v353;
    sub_1CF9E6128();
    v120 = v377;
    sub_1CEFD09A0(v377);
    sub_1CEFD09A0(v120);

    v121 = sub_1CF9E6108();
    v122 = sub_1CF9E7298();
    v123 = os_log_type_enabled(v121, v122);
    v375 = v114;
    if (v123)
    {
      v367 = v112;
      v124 = swift_slowAlloc();
      v374 = swift_slowAlloc();
      *&v381[0] = v374;
      *v124 = 136315394;
      v125 = swift_beginAccess();
      v126 = *(v114 + 32);
      v127 = v114;
      v128 = *(v114 + 40);
      if (*(v127 + 41))
      {
        v129 = NSFileProviderItemIdentifier.description.getter(v126);
        v131 = v130;
        sub_1CEFD0994(v126, v128, 1);
      }

      else
      {
        *v384 = v126;
        v384[8] = v128;
        v129 = VFSItemID.description.getter(v125);
        v131 = v164;
      }

      v165 = v356;
      v166 = sub_1CEFD0DF0(v129, v131, v381);
      v131, v167, v168, v169, v170, v171, v172, v173;
      *(v124 + 4) = v166;
      *(v124 + 12) = 2080;
      v174 = v377;
      v175 = sub_1CEFD11AC(v377);
      v177 = v176;
      sub_1CEFD0A98(v174);
      sub_1CEFD0A98(v174);
      v178 = sub_1CEFD0DF0(v175, v177, v381);
      v179 = v177;
      v120 = v174;
      v179, v180, v181, v182, v183, v184, v185, v186;
      *(v124 + 14) = v178;
      _os_log_impl(&dword_1CEFC7000, v121, v122, "Request to materialize content of itemID %s reason %s", v124, 0x16u);
      v187 = v374;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v187, -1, -1);
      MEMORY[0x1D386CDC0](v124, -1, -1);

      v371 = *(v355 + 8);
      v371(v353, v165);
      v113 = v369;
    }

    else
    {
      sub_1CEFD0A98(v120);
      sub_1CEFD0A98(v120);

      v371 = *(v355 + 8);
      v371(v119, v356);
    }

    v188 = v344;
    v189 = v349;
    LODWORD(v368) = (v120 >> 58) & 0x3C | (v120 >> 1) & 3;
    if (v368 == 2)
    {
      v190 = swift_projectBox();
      sub_1CEFCCBDC(v190, v189, &unk_1EC4C4F40, qword_1CFA0F4C0);
      *(v189 + 8), v191, v192, v193, v194, v195, v196, v197;
      v198 = v188[12];

      v199 = *(v189 + v188[20]);
      (v372)(v189 + v198, v113);
    }

    else
    {
      v199 = 0;
    }

    v201 = v345;
    v200 = v346;
    v202 = v350;
    sub_1CEFCCBDC(v340 + qword_1EDEBBC18, v350, &qword_1EC4BFB10, &unk_1CFA12AD0);
    v203 = type metadata accessor for TelemetrySignposter(0);
    if ((*(*(v203 - 8) + 48))(v202, 1, v203) == 1)
    {
      sub_1CEFCCC44(v202, &qword_1EC4BFB10, &unk_1CFA12AD0);
      v204 = 1;
      v205 = v357;
    }

    else
    {
      v205 = v357;
      sub_1CF519DE8(v199, v357);
      sub_1CEFD5338(v202, type metadata accessor for TelemetrySignposter);
      v204 = 0;
    }

    v206 = type metadata accessor for TelemetrySignpost(0);
    (*(*(v206 - 8) + 56))(v205, v204, 1, v206);
    sub_1CEFCCBDC(v205, v200, qword_1EC4C1588, &unk_1CFA0A260);
    v207 = *(v201 + 80);
    v208 = v200;
    v209 = (v207 + 16) & ~v207;
    v210 = v351;
    v211 = (v351 + v209 + 7) & 0xFFFFFFFFFFFFFFF8;
    v212 = swift_allocObject();
    v374 = v212;
    sub_1CEFE55D0(v208, v212 + v209, qword_1EC4C1588, &unk_1CFA0A260);
    v213 = (v212 + v211);
    v372 = sub_1CF8FBC68;
    v214 = v376;
    *v213 = sub_1CF8FBC68;
    v213[1] = v214;
    v215 = v352;
    sub_1CEFCCBDC(v205, v352, qword_1EC4C1588, &unk_1CFA0A260);
    v216 = (v207 + 24) & ~v207;
    v217 = (v216 + v210 + 31) & 0xFFFFFFFFFFFFFFF8;
    v369 = (v216 + v210 + 7) & 0xFFFFFFFFFFFFFFF8;
    v370 = (v217 + 15) & 0xFFFFFFFFFFFFFFF8;
    v218 = (v217 + 31) & 0xFFFFFFFFFFFFFFF8;
    v219 = (v218 + 15) & 0xFFFFFFFFFFFFFFF8;
    v220 = swift_allocObject();
    v221 = v377;
    *(v220 + 16) = v377;
    sub_1CEFE55D0(v215, v220 + v216, qword_1EC4C1588, &unk_1CFA0A260);
    v222 = v220 + v369;
    v223 = v373;
    v224 = v376;
    *v222 = v372;
    *(v222 + 8) = v224;
    *(v222 + 16) = 1;
    *(v220 + v217) = v340;
    v225 = v220 + v370;
    v226 = v375;
    *v225 = v375;
    *(v225 + 8) = 0;
    *(v220 + v218) = 1;
    *(v220 + v219) = v223;
    v227 = v220 + ((v219 + 15) & 0xFFFFFFFFFFFFFFF8);
    v228 = v374;
    *v227 = sub_1CF8FBC74;
    *(v227 + 8) = v228;
    *(v227 + 16) = 1;
    v229 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    sub_1CEFD09A0(v221);

    v230 = v223;

    v373 = [v229 init];
    v231 = swift_allocObject();
    v231[2] = sub_1CF8FBC78;
    v231[3] = v220;
    v231[4] = v221;
    sub_1CEFD09A0(v221);

    sub_1CEFD09A0(v221);
    v370 = v220;

    v232 = fpfs_current_or_default_log();
    v233 = v354;
    sub_1CF9E6128();
    sub_1CEFD09A0(v221);
    sub_1CEFD09A0(v221);

    v234 = sub_1CF9E6108();
    v235 = sub_1CF9E7298();
    v236 = os_log_type_enabled(v234, v235);
    v372 = v230;
    if (v236)
    {
      LODWORD(v367) = v235;
      v369 = v231;
      v237 = swift_slowAlloc();
      v366 = swift_slowAlloc();
      v383 = v366;
      *v237 = 136315906;
      v238 = swift_beginAccess();
      v239 = v226[4];
      v240 = *(v226 + 40);
      if (*(v226 + 41))
      {
        v241 = NSFileProviderItemIdentifier.description.getter(v239);
        v243 = v242;
        sub_1CEFD0994(v239, v240, 1);
      }

      else
      {
        *v384 = v226[4];
        v384[8] = v240;
        v241 = VFSItemID.description.getter(v238);
        v243 = v244;
      }

      v245 = sub_1CEFD0DF0(v241, v243, &v383);
      v243, v246, v247, v248, v249, v250, v251, v252;
      *(v237 + 4) = v245;
      *(v237 + 12) = 2080;
      *(v237 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v383);
      *(v237 + 22) = 2080;
      v253 = v377;
      v254 = sub_1CEFD11AC(v377);
      v256 = v255;
      sub_1CEFD0A98(v253);
      sub_1CEFD0A98(v253);
      v257 = sub_1CEFD0DF0(v254, v256, &v383);
      v256, v258, v259, v260, v261, v262, v263, v264;
      *(v237 + 24) = v257;
      *(v237 + 32) = 2048;
      *(v237 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v234, v367, "Lookup itemID %s with behavior %s request %s iteration %ld", v237, 0x2Au);
      v265 = v366;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v265, -1, -1);
      MEMORY[0x1D386CDC0](v237, -1, -1);

      v371(v354, v356);
      v226 = v375;
      v231 = v369;
    }

    else
    {
      sub_1CEFD0A98(v221);
      sub_1CEFD0A98(v221);

      v371(v233, v356);
    }

    swift_beginAccess();
    v266 = v226[4];
    v267 = *(v226 + 40);
    v268 = v359;
    if (*(v226 + 41))
    {
      v269 = v231;
      v270 = qword_1EDEA34B0;
      v271 = v266;
      if (v270 != -1)
      {
        swift_once();
      }

      v272 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v274 = v273;
      v276 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v282 = v272;
      v283 = v275;
      if (v282 == v276 && v274 == v275)
      {
        v274, v275, v276, v277, v278, v279, v280, v281;
        v283, v284, v285, v286, v287, v288, v289, v290;
        sub_1CEFD0994(v266, v267, 1);
        v231 = v269;
        v268 = v359;
LABEL_68:
        v291 = v377;
        sub_1CF90CAC8(v377, sub_1CF796A0C, v231);
        v292 = v373;
LABEL_74:

        sub_1CEFD0A98(v291);

        sub_1CEFCCC44(v386, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        sub_1CEFCCC44(v357, qword_1EC4C1588, &unk_1CFA0A260);
        v64 = &unk_1EC4BE360;
        v65 = &qword_1CF9FE650;
        v66 = v268;
        goto LABEL_13;
      }

      v293 = sub_1CF9E8048();
      v274, v294, v295, v296, v297, v298, v299, v300;
      v283, v301, v302, v303, v304, v305, v306, v307;
      sub_1CEFD0994(v266, v267, 1);
      v231 = v269;
      v268 = v359;
      if (v293)
      {
        goto LABEL_68;
      }
    }

    else if (!v266 && v267 == 2)
    {
      goto LABEL_68;
    }

    v308 = v231;
    if (v368 == 30)
    {
      v309 = v377;
      v310 = *((v377 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v371 = v310;
    }

    else
    {
      v311 = swift_allocObject();
      v309 = v377;
      *(v311 + 16) = v377;
      v371 = (v311 | 0x7000000000000004);
      v310 = v309;
    }

    v292 = v373;
    sub_1CEFD09A0(v310);
    v312 = swift_allocObject();
    *(v312 + 16) = sub_1CF796A0C;
    *(v312 + 24) = v308;
    v369 = v308;
    v313 = v340;
    *(v312 + 32) = v340;
    v314 = v313;
    *(v312 + 40) = 2;
    v315 = v375;
    *(v312 + 48) = v309;
    *(v312 + 56) = v315;
    *(v312 + 64) = 0;
    *(v312 + 72) = v292;
    *(v312 + 80) = 0;
    v316 = swift_allocObject();
    *(v316 + 16) = v315;
    *(v316 + 24) = v314;
    *(v316 + 32) = 0;
    *(v316 + 40) = sub_1CF796A90;
    *(v316 + 48) = v312;
    *(v316 + 56) = v371;
    v317 = swift_allocObject();
    *(v317 + 16) = sub_1CF796A90;
    *(v317 + 24) = v312;

    sub_1CEFD09A0(v377);

    v318 = v292;
    sub_1CEFD09A0(v371);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v317, sub_1CF796A9C, v316);

    v291 = v377;

    sub_1CEFD0A98(v371);
    v268 = v359;
    goto LABEL_74;
  }

  v366 = *(*(v340 + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v132 = swift_dynamicCastClassUnconditional();
  v133 = swift_allocObject();
  *(v133 + 16) = v373;
  *(v133 + 24) = v85;
  v134 = v337;
  *(v133 + 32) = v370;
  *(v133 + 40) = v134;
  *(v133 + 48) = v338;
  *(v133 + 56) = v377;
  *(v133 + 64) = v111;
  v135 = v375;
  *(v133 + 72) = v374;
  *(v133 + 80) = v135;
  v136 = *(v132 + 216);
  v137 = *(v132 + 224);
  v363 = v132;
  v364 = v137;
  v371 = v136;
  v373 = sub_1CF9E6448();
  v365 = *(v373 - 1);
  v365[7](v358, 1, 1, v373);
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1CF8FBC60;
  *(v138 + 24) = v133;
  v139 = v347;
  v140 = v369;
  v333(v347, v368, v369);
  v141 = (v99 + 56) & ~v99;
  v142 = (v332 + v141) & 0xFFFFFFFFFFFFFFF8;
  v143 = swift_allocObject();
  v144 = v337;
  *(v143 + 16) = v363;
  *(v143 + 24) = v144;
  *(v143 + 32) = v338;
  *(v143 + 40) = sub_1CF8FBC60;
  *(v143 + 48) = v133;
  v330(v143 + v141, v139, v140);
  v145 = (v143 + v142);
  v146 = v372;
  *v145 = v362;
  v145[1] = v146;
  v147 = swift_allocObject();
  v147[2] = sub_1CF90324C;
  v147[3] = v138;
  v148 = v364;
  v147[4] = v364;

  v149 = v375;
  sub_1CEFD09A0(v377);

  v150 = v371;
  v377 = v138;
  v151 = v365;

  v152 = fpfs_current_log();
  v375 = *(v148 + 16);
  v153 = v373;
  v154 = v348;
  sub_1CEFCCBDC(v358, v348, &unk_1EC4BE370, qword_1CFA01B30);
  v155 = (v151[6])(v154, 1, v153);
  v376 = v150;
  if (v155 == 1)
  {
    sub_1CEFCCC44(v154, &unk_1EC4BE370, qword_1CFA01B30);
    LODWORD(v374) = 0;
  }

  else
  {
    v157 = v152;
    v158 = v341;
    sub_1CF9E6438();
    (v151[1])(v154, v153);
    LODWORD(v374) = sub_1CF9E63C8();
    v159 = v158;
    v152 = v157;
    (*(v342 + 8))(v159, v343);
  }

  v160 = swift_allocObject();
  v160[2] = v152;
  v160[3] = sub_1CF8FBC64;
  v160[4] = v143;
  *&v384[32] = sub_1CF2BA17C;
  *&v384[40] = v160;
  *v384 = MEMORY[0x1E69E9820];
  *&v384[8] = 1107296256;
  *&v384[16] = sub_1CEFCA444;
  *&v384[24] = &block_descriptor_2828;
  v161 = _Block_copy(v384);
  v373 = v152;

  *&v384[32] = sub_1CF2BA180;
  *&v384[40] = v147;
  *v384 = MEMORY[0x1E69E9820];
  *&v384[8] = 1107296256;
  *&v384[16] = sub_1CEFCA444;
  *&v384[24] = &block_descriptor_2831;
  v162 = _Block_copy(v384);

  v163 = v376;
  fp_task_tracker_async_and_qos(v375, v376, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v374, v161, v162);
  _Block_release(v162);
  _Block_release(v161);

  sub_1CEFCCC44(v386, &unk_1EC4BFD80, &unk_1CFA0A2A0);

  sub_1CEFCCC44(v359, &unk_1EC4BE360, &qword_1CF9FE650);
  (*(v367 + 8))(v368, v369);
  sub_1CEFCCC44(v358, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF8C34E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v74 = a8;
  v70 = a5;
  v71 = a6;
  v69 = a4;
  LODWORD(v73) = a3;
  v72 = a2;
  v65 = a12;
  v66 = a7;
  v64 = a11;
  v63 = a10;
  v62 = a9;
  v59 = sub_1CF9E63D8();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1CF9E5A58();
  v14 = *(v67 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v68 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v76 = &v56 - v19;
  v61 = a1;
  v75 = *(*(*(a1 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v21 = swift_dynamicCastClassUnconditional();
  v22 = swift_allocObject();
  v23 = v74;
  *(v22 + 16) = v66;
  *(v22 + 24) = v23;
  v24 = v72;
  *(v22 + 32) = a1;
  *(v22 + 40) = v24;
  *(v22 + 48) = v73;
  v25 = v63;
  *(v22 + 56) = a9;
  *(v22 + 64) = v25;
  *(v22 + 72) = a11;
  *(v22 + 80) = a12;
  v26 = *(v21 + 216);
  v63 = *(v21 + 224);
  v66 = v26;
  v27 = sub_1CF9E6448();
  v60 = *(v27 - 8);
  (*(v60 + 56))(v20, 1, 1, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1CF90331C;
  *(v28 + 24) = v22;
  v29 = v14;
  v30 = *(v14 + 16);
  v31 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v67;
  v30(v31, v69, v67);
  v33 = (*(v29 + 80) + 56) & ~*(v29 + 80);
  v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v72;
  *(v35 + 16) = v21;
  *(v35 + 24) = v36;
  *(v35 + 32) = v73;
  *(v35 + 40) = sub_1CF90331C;
  *(v35 + 48) = v22;
  v37 = v31;
  v38 = v35;
  (*(v29 + 32))(v35 + v33, v37, v32);
  v39 = v60;
  v40 = (v38 + v34);
  v41 = v27;
  v42 = v71;
  *v40 = v70;
  v40[1] = v42;
  v43 = swift_allocObject();
  v43[2] = sub_1CF90324C;
  v43[3] = v28;
  v44 = v63;
  v43[4] = v63;
  v45 = v68;
  swift_retain_n();
  swift_retain_n();

  sub_1CEFD09A0(v62);

  v46 = v65;
  v47 = v66;

  v74 = v28;

  v48 = v44;

  v49 = fpfs_current_log();
  v73 = *(v48 + 16);
  sub_1CEFCCBDC(v76, v45, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v39 + 48))(v45, 1, v41) == 1)
  {
    sub_1CEFCCC44(v45, &unk_1EC4BE370, qword_1CFA01B30);
    v50 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v51 = v57;
    sub_1CF9E6438();
    (*(v39 + 8))(v45, v41);
    v50 = sub_1CF9E63C8();
    (*(v58 + 8))(v51, v59);
  }

  v52 = swift_allocObject();
  v52[2] = v49;
  v52[3] = sub_1CF902D98;
  v52[4] = v38;
  v81 = sub_1CF2BA17C;
  v82 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1CEFCA444;
  v80 = &block_descriptor_3043;
  v53 = _Block_copy(&aBlock);
  v54 = v49;

  v81 = sub_1CF2BA180;
  v82 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1CEFCA444;
  v80 = &block_descriptor_3046;
  v55 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v73, v47, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v50, v53, v55);

  _Block_release(v55);
  _Block_release(v53);

  sub_1CEFCCC44(v76, &unk_1EC4BE370, qword_1CFA01B30);
}

void sub_1CF8C3BB4(void *a1, uint64_t (*a2)(uint64_t a1, uint64_t a2), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t a1, uint64_t a2), int a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  v132 = a8;
  v133 = a4;
  LODWORD(v131) = a6;
  v130 = a5;
  v139 = a2;
  v140 = a3;
  v135 = a7;
  v136 = a10;
  v134 = a9;
  v11 = sub_1CF9E63D8();
  v129 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v118 - v18;
  v20 = sub_1CF9E6068();
  v137 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  v29 = type metadata accessor for Signpost(0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  if (a1)
  {
    v38 = a1;
    v139(0, a1);
  }

  else
  {
    v120 = v25;
    v121 = v33;
    v127 = v28;
    v122 = v22;
    v123 = v37;
    v124 = v36;
    v125 = v35;
    v126 = v16;
    v118 = v13;
    v119 = v11;
    v128 = &v118 - v34;
    v138 = v19;
    v39 = v133;
    v40 = *(v133 + 16);
    v41 = swift_allocObject();
    v42 = v140;
    *(v41 + 16) = v139;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v130;
    *(v43 + 16) = v39;
    *(v43 + 24) = v44;
    *(v43 + 32) = v131;
    v46 = v134;
    v45 = v135;
    v47 = v132;
    *(v43 + 40) = v135;
    *(v43 + 48) = v47;
    v132 = v43;
    v48 = v136;
    *(v43 + 56) = v46;
    *(v43 + 64) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1CF90325C;
    *(v49 + 24) = v41;
    v139 = v49;

    sub_1CEFD09A0(v45);

    v50 = v48;
    v140 = v41;

    v136 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v51 = qword_1EDEBBE40;
    v52 = v137;
    v53 = v127;
    v54 = v20;
    (v137)[7](v127, 1, 1, v20);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v55 = sub_1CF9E7988();
    v57 = v56;
    MEMORY[0x1D3868CC0](v55);
    v57, v58, v59, v60, v61, v62, v63, v64;
    v134 = *(&aBlock + 1);
    v135 = aBlock;
    v65 = v120;
    sub_1CEFCCBDC(v53, v120, &unk_1EC4BED20, &unk_1CFA00700);
    v66 = v52[6];
    if (v66(v65, 1, v20) == 1)
    {
      v67 = v51;
      v68 = v122;
      sub_1CF9E6048();
      if (v66(v65, 1, v20) != 1)
      {
        sub_1CEFCCC44(v65, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v68 = v122;
      (v52[4])(v122, v65, v20);
    }

    v69 = v52[2];
    v70 = v52;
    v71 = v128;
    v69(v128, v68, v54);
    v72 = v121;
    *(v71 + *(v121 + 20)) = v51;
    v73 = v71 + *(v72 + 24);
    *v73 = "DB queue wait";
    *(v73 + 8) = 13;
    *(v73 + 16) = 2;
    v74 = v51;
    v75 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1CF9FA450;
    *(v76 + 56) = MEMORY[0x1E69E6158];
    *(v76 + 64) = sub_1CEFD51C4();
    v77 = v134;
    *(v76 + 32) = v135;
    *(v76 + 40) = v77;
    sub_1CF9E6028(v75, &dword_1CEFC7000, v74, "DB queue wait", 13, 2, v71, "%s", 2);
    v76, v78, v79, v80, v81, v82, v83, v84;
    (v70[1])(v68, v54);
    sub_1CEFCCC44(v127, &unk_1EC4BED20, &unk_1CFA00700);
    v135 = *(v40 + 168);
    v137 = *(v40 + 64);
    v85 = sub_1CF9E6448();
    v133 = *(v85 - 8);
    v134 = v85;
    (*(v133 + 56))(v138, 1, 1, v85);
    v86 = v124;
    sub_1CEFDA34C(v71, v124, type metadata accessor for Signpost);
    v87 = (*(v123 + 80) + 16) & ~*(v123 + 80);
    v131 = v40;
    v88 = (v30 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    sub_1CEFDA0C4(v86, v89 + v87, type metadata accessor for Signpost);
    v90 = (v89 + v88);
    v130 = sub_1CF902CCC;
    v91 = v139;
    *v90 = sub_1CF902CCC;
    v90[1] = v91;
    v92 = v125;
    sub_1CEFDA34C(v71, v125, type metadata accessor for Signpost);
    v93 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 25) & 0xFFFFFFFFFFFFFFF8;
    v96 = swift_allocObject();
    v97 = v96 + v87;
    v98 = v133;
    sub_1CEFDA0C4(v92, v97, type metadata accessor for Signpost);
    v99 = (v96 + v88);
    *v99 = sub_1CF045408;
    v99[1] = 0;
    *(v96 + v93) = v131;
    v100 = v96 + v94;
    v101 = v134;
    *v100 = "pauseSyncForItem(at:bundleID:behavior:request:completionHandler:)";
    *(v100 + 8) = 65;
    *(v100 + 16) = 2;
    v102 = (v96 + v95);
    v103 = v139;
    *v102 = v130;
    v102[1] = v103;
    v104 = (v96 + ((v95 + 23) & 0xFFFFFFFFFFFFFFF8));
    v105 = v132;
    *v104 = sub_1CF8FBF84;
    v104[1] = v105;
    v106 = swift_allocObject();
    v106[2] = sub_1CF903308;
    v106[3] = v89;
    v107 = v135;
    v106[4] = v135;
    swift_retain_n();

    v108 = fpfs_current_log();
    v135 = v107[2];
    v109 = v126;
    sub_1CEFCCBDC(v138, v126, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v98 + 48))(v109, 1, v101) == 1)
    {
      sub_1CEFCCC44(v109, &unk_1EC4BE370, qword_1CFA01B30);
      v110 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v111 = v118;
      sub_1CF9E6438();
      (*(v98 + 8))(v109, v101);
      v110 = sub_1CF9E63C8();
      (*(v129 + 8))(v111, v119);
    }

    v112 = swift_allocObject();
    v112[2] = v108;
    v112[3] = sub_1CF4858EC;
    v112[4] = v96;
    v144 = sub_1CF2BA17C;
    v145 = v112;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v142 = sub_1CEFCA444;
    v143 = &block_descriptor_3017;
    v113 = _Block_copy(&aBlock);
    v114 = v108;

    v144 = sub_1CF2BA180;
    v145 = v106;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v142 = sub_1CEFCA444;
    v143 = &block_descriptor_3020;
    v115 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v135, v137, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v110, v113, v115);
    _Block_release(v115);
    _Block_release(v113);

    sub_1CEFCCC44(v138, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v128, type metadata accessor for Signpost);
    v116 = v136;
    v117 = fpfs_adopt_log();
  }
}

void sub_1CF8C47D0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5, char *a6, uint64_t a7, void *a8)
{
  v34 = a6;
  v35 = a3;
  v15 = sub_1CF9E5CF8();
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  sub_1CF9042A4(a5);
  v20 = v19;

  v21 = a8;
  v33 = v18;
  sub_1CF5DA654(a3, a4, a5, v20, v18, v34, a7, v21);

  v22 = a1[3];
  v23 = a1[4];
  v24 = __swift_project_boxed_opaque_existential_1(a1, v22);
  v25 = sub_1CF9042A4(a5);
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
  v28 = swift_allocObject();
  *(v28 + 152) = a4;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 1;
  *(v28 + 56) = 0u;
  *(v28 + 72) = 0u;
  *(v28 + 88) = 0;
  *(v28 + 120) = v25;
  *(v28 + 128) = v27;
  v29 = v35;
  *(v28 + 136) = 0;
  *(v28 + 144) = v29;
  *(v28 + 96) = xmmword_1CFA04E20;
  *(v28 + 112) = 0;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v31 = v30;
  (*(v36 + 8))(v17, v37);
  v32 = v31 * 1000000000.0;
  if (COERCE__INT64(fabs(v31 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v32 < 9.22337204e18)
  {
    sub_1CF5215C0(v28, v32, v24, v22, v23);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1CF8C4A38(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_4;
  }

  _s3__C4CodeOMa_1(0);
  v8 = a2;
  sub_1CEFCCCA4(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
  if (sub_1CF9E5658())
  {

LABEL_4:
    a3(a5, 0);
    return;
  }

  v9 = a2;
  a3(0, a2);
}

void sub_1CF8C4B34(uint64_t a1, void (*a2)(void, id), uint64_t a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v12 - v8);
  sub_1CEFCCBDC(a1, &v12 - v8, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    v11 = *v9;
    a2(0, v10);
  }

  else
  {
    a4();
    sub_1CEFCCC44(v9, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

double FPDDomainFPFSBackend.resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v36 = a7;
  v35 = a6;
  v38 = a5;
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  v32 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4AF0, "pN\t");
  v13 = swift_allocBox();
  v33 = v13;
  v34 = a1;
  v15 = v14;
  v16 = *(v12 + 48);
  v17 = *(v12 + 64);
  v18 = *(v10 + 16);
  v18(v14, a1, v9);
  *(v15 + v16) = a4;
  *(v15 + v17) = v38;
  v19 = v13 | 0x9000000000000006;
  v20 = v31;
  v21 = a1;
  v22 = v9;
  v18(v31, v21, v9);
  v23 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v24 = (v32 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v36;
  *(v25 + 2) = v35;
  *(v25 + 3) = v26;
  v27 = v37;
  *(v25 + 4) = v37;
  *(v25 + 5) = a4;
  (*(v10 + 32))(&v25[v23], v20, v22);
  *&v25[v24] = v19;
  v28 = v38;

  v29 = v27;

  sub_1CF84D640(v34, 1, v19, sub_1CF8F3758, v25);

  return result;
}

uint64_t sub_1CF8C5180(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, __n128), uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v30 = a6;
  v31 = a8;
  v14 = sub_1CF9E5A58();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a3(0, a2, v17);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v15 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v14);
  v20 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v29 = a5;
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a3;
  *(v22 + 3) = a4;
  v23 = v30;
  *(v22 + 4) = a1;
  *(v22 + 5) = v23;
  (*(v15 + 32))(&v22[v20], v18, v14);
  v24 = v31;
  *&v22[v21] = v31;
  v25 = a1;
  swift_retain_n();
  v26 = v25;

  sub_1CEFD09A0(v24);
  sub_1CF8EDD24("resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)", 66, 2, sub_1CF8FAE94, v22, v29, sub_1CF90325C, v19);
}

double sub_1CF8C53A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v39 = a5;
  v40 = a7;
  v35 = a2;
  v36 = a6;
  v38 = a4;
  v34 = a3;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = sub_1CF90325C;
  v15[3] = v13;
  v15[4] = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CF902E4C;
  *(v16 + 24) = v15;
  v17 = *(a1 + 16);
  v33 = a1;
  v37 = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF903440;
  *(v18 + 24) = v16;
  v19 = v10;
  (*(v11 + 16))(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v10);
  v20 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a1;
  v24 = v38;
  v23 = v39;
  *(v22 + 3) = v38;
  *(v22 + 4) = sub_1CF903440;
  *(v22 + 5) = v16;
  *(v22 + 6) = v23;
  (*(v11 + 32))(&v22[v20], v32, v19);
  v25 = v40;
  *&v22[v21] = v40;
  v26 = &v22[(v21 + 15) & 0xFFFFFFFFFFFFFFF8];
  v27 = v34;
  *v26 = v35;
  v26[1] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1CF90325C;
  *(v28 + 24) = v18;
  swift_retain_n();
  swift_retain_n();

  v29 = v24;
  sub_1CEFD09A0(v25);

  sub_1CF7AAF88("resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)", 66, 2, 2, sub_1CF9034C4, v28, sub_1CF8FAF38, v22);

  return result;
}

double sub_1CF8C56BC(void *a1, uint64_t a2, void *a3, void (*a4)(void, id), uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v101 = a5;
  v93 = a8;
  v94 = a7;
  v98 = a6;
  v100 = a4;
  v96 = sub_1CF9E5A58();
  v92 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v91 = v13;
  v95 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v90 = &v81 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v88 = *(v16 - 8);
  v89 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v20);
  v97 = a2;
  v22 = *(a2 + 16);

  v99 = a3;
  v23 = [a3 identifier];
  v109 = v23;
  v24 = v102;
  sub_1CF68E230(&v109, v21, v20, v19, v107);
  if (v24)
  {

    return result;
  }

  v87 = v18;
  v26 = v98;
  v102 = v22;

  memcpy(v105, v107, sizeof(v105));
  memcpy(v106, v107, sizeof(v106));
  v27 = sub_1CF08B99C(v106);
  v29 = v99;
  v28 = v100;
  if (v27 == 1)
  {
    goto LABEL_8;
  }

  memcpy(v108, v106, sizeof(v108));
  if (LOBYTE(v106[27]) == 255)
  {
    sub_1CEFCCC44(v105, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_8:
    v38 = [v29 identifier];
    v39 = FPItemNotFoundError();

    v28(0, v39);
    return result;
  }

  v86 = LOBYTE(v106[27]);
  v30 = v106[26];
  v84 = a9;
  v85 = a10;
  v83 = v106[26];
  if (v26 == 2)
  {
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = a1[3];
    v33 = a1[4];
    v34 = __swift_project_boxed_opaque_existential_1(a1, v32);
    v35 = *(v102 + 32);
    v103 = v30;
    v104 = v86;
    v36 = *(*v35 + 240);

    v37 = v90;
    v36(&v103, 1, v34, v32, v33);

    v56 = v83;
    v98 = v31;
    if ((*(v88 + 48))(v37, 1, v89) == 1)
    {
      sub_1CEFCCC44(v37, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v57 = v94;
      v58 = v95;
    }

    else
    {
      v59 = v37;
      v60 = v87;
      sub_1CEFE55D0(v59, v87, &unk_1EC4BE360, &qword_1CF9FE650);
      v58 = v95;
      if (v106[39])
      {
        v88 = v106[33];
        LODWORD(v90) = LOBYTE(v106[34]);
        v61 = v106[32];
        v62 = v106[31];
        v63 = *(v60 + 32);
        v64 = *(v60 + 40);
        v82 = *(v60 + 48);
        LODWORD(v89) = *(v60 + 56);
        sub_1CEFCCC44(v60, &unk_1EC4BE360, &qword_1CF9FE650);
        v65 = v63 == v62;
        v57 = v94;
        v66 = v91;
        v67 = v102;
        if (v65 && v64 == v61)
        {
          if (v89)
          {
            if (v90)
            {
              goto LABEL_25;
            }
          }

          else if ((v90 & 1) == 0 && v82 == v88)
          {
            goto LABEL_25;
          }
        }

        *(v98 + 16) = 1;
LABEL_25:
        v102 = *(*(v67 + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v91 = swift_dynamicCastClassUnconditional();
        v68 = v56;
        v103 = v56;
        v69 = v86;
        v104 = v86;
        v70 = v92;
        (*(v92 + 16))(v58, v57, v96);
        v71 = (*(v70 + 80) + 80) & ~*(v70 + 80);
        v90 = (v66 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v72 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
        v73 = swift_allocObject();
        v74 = v101;
        *(v73 + 16) = v100;
        *(v73 + 24) = v74;
        v75 = v96;
        *(v73 + 32) = v97;
        *(v73 + 40) = v68;
        *(v73 + 48) = v69;
        v76 = v93;
        v77 = v84;
        v78 = v85;
        *(v73 + 56) = v93;
        *(v73 + 64) = v77;
        *(v73 + 72) = v78;
        (*(v70 + 32))(v73 + v71, v95, v75);
        v79 = v99;
        *(v73 + v90) = v98;
        *(v73 + v72) = v79;

        sub_1CEFD09A0(v76);

        v80 = v79;
        sub_1CF289F34(&v103, v94, sub_1CF8FB0B8, v73);

        sub_1CEFCCC44(v105, &unk_1EC4BFD80, &unk_1CFA0A2A0);

        goto LABEL_10;
      }

      sub_1CEFCCC44(v60, &unk_1EC4BE360, &qword_1CF9FE650);
      v57 = v94;
    }

    v66 = v91;
    v67 = v102;
    goto LABEL_25;
  }

  v102 = *(*(v102 + 32) + 16);
  v40 = v92;
  (*(v92 + 16))(v95, v94, v96);
  v41 = (*(v40 + 80) + 584) & ~*(v40 + 80);
  v42 = (v91 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = v99;
  v45 = swift_allocObject();
  v46 = v100;
  v47 = v101;
  *(v45 + 16) = v97;
  *(v45 + 24) = v46;
  v48 = v98;
  *(v45 + 32) = v47;
  *(v45 + 40) = v48;
  *(v45 + 48) = v83;
  *(v45 + 56) = v86;
  memcpy((v45 + 64), v108, 0x208uLL);
  (*(v40 + 32))(v45 + v41, v95, v96);
  v49 = v102;
  v50 = v44;
  *(v45 + v42) = v44;
  v51 = (v45 + v43);
  v52 = v85;
  *v51 = v84;
  v51[1] = v52;
  v53 = v93;
  *(v45 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8)) = v93;
  v54 = *(*v49 + 704);

  sub_1CEFD09A0(v53);

  v55 = v50;

  sub_1CEFCCBDC(v105, &v103, &unk_1EC4BFD80, &unk_1CFA0A2A0);
  v54(sub_1CF8FAFF8, v45);

  sub_1CEFCCC44(v105, &unk_1EC4BFD80, &unk_1CFA0A2A0);
LABEL_10:

  return result;
}

void sub_1CF8C5EE8(char *a1, uint64_t (*a2)(uint64_t a1, uint64_t a2), uint64_t a3, void *a4, uint64_t a5, int a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  v135 = a8;
  v137 = a7;
  v134 = a6;
  v133 = a5;
  v145 = a4;
  v149 = a2;
  v150 = a3;
  v147 = a1;
  v138 = a12;
  v136 = a11;
  v132 = a10;
  v146 = a9;
  v131 = sub_1CF9E63D8();
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v144 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v122 - v16;
  v17 = sub_1CF9E6068();
  v142 = *(v17 - 8);
  v143 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v140 = (&v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v139 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v122 - v22;
  v24 = type metadata accessor for Signpost(0);
  v141 = *(v24 - 8);
  v25 = *(v141 + 8);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v122 - v30;
  v32 = sub_1CF9E5A58();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v147)
  {
    v36 = v147;
    v37 = v147;
    v149(0, v36);
  }

  else
  {
    v123 = v24;
    v127 = v23;
    v124 = v25;
    v125 = v28;
    v126 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = v31;
    v147 = v145[2];
    v38 = v145;
    v39 = swift_allocObject();
    v40 = v150;
    *(v39 + 16) = v149;
    *(v39 + 24) = v40;
    (*(v33 + 16))(&v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v132, v32);
    v41 = (*(v33 + 80) + 64) & ~*(v33 + 80);
    v42 = (v34 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = v133;
    *(v44 + 16) = v38;
    *(v44 + 24) = v45;
    *(v44 + 32) = v134;
    v46 = v137;
    v47 = v135;
    *(v44 + 40) = v137;
    *(v44 + 48) = v47;
    *(v44 + 56) = v146;
    (*(v33 + 32))(v44 + v41, v35, v32);
    v48 = (v44 + v42);
    v49 = v150;
    *v48 = v149;
    v48[1] = v49;
    *(v44 + v43) = v136;
    v135 = v44;
    v50 = v138;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v138;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1CF90325C;
    *(v51 + 24) = v39;
    v149 = v51;
    swift_retain_n();

    sub_1CEFD09A0(v46);

    v52 = v50;
    v150 = v39;

    v146 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v53 = qword_1EDEBBE40;
    v54 = v142;
    v55 = v143;
    v56 = v127;
    (*(v142 + 56))(v127, 1, 1, v143);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v57 = sub_1CF9E7988();
    v59 = v58;
    MEMORY[0x1D3868CC0](v57);
    v59, v60, v61, v62, v63, v64, v65, v66;
    v145 = *(&aBlock + 1);
    v67 = aBlock;
    v68 = v139;
    sub_1CEFCCBDC(v56, v139, &unk_1EC4BED20, &unk_1CFA00700);
    v69 = *(v54 + 48);
    v70 = v69(v68, 1, v55);
    v71 = v140;
    v72 = v123;
    if (v70 == 1)
    {
      v73 = v53;
      sub_1CF9E6048();
      v74 = v69(v68, 1, v55);
      v75 = v148;
      v76 = v128;
      if (v74 != 1)
      {
        sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v54 + 32))(v140, v68, v55);
      v75 = v148;
      v76 = v128;
    }

    (*(v54 + 16))(v76, v71, v55);
    *(v76 + *(v72 + 20)) = v53;
    v77 = v76 + *(v72 + 24);
    *v77 = "DB queue wait";
    *(v77 + 8) = 13;
    *(v77 + 16) = 2;
    v78 = v53;
    v79 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v80 = v54;
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1CF9FA450;
    *(v81 + 56) = MEMORY[0x1E69E6158];
    *(v81 + 64) = sub_1CEFD51C4();
    v82 = v145;
    *(v81 + 32) = v67;
    *(v81 + 40) = v82;
    sub_1CF9E6028(v79, &dword_1CEFC7000, v78, "DB queue wait", 13, 2, v76, "%s", 2);
    v81, v83, v84, v85, v86, v87, v88, v89;
    (*(v80 + 8))(v71, v55);
    sub_1CEFCCC44(v127, &unk_1EC4BED20, &unk_1CFA00700);
    v143 = v147[21];
    v145 = v147[8];
    v142 = sub_1CF9E6448();
    v140 = *(v142 - 8);
    v140[7](v75, 1, 1, v142);
    v90 = v125;
    sub_1CEFDA34C(v76, v125, type metadata accessor for Signpost);
    v91 = (*(v141 + 80) + 16) & ~*(v141 + 80);
    v92 = (v124 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    sub_1CEFDA0C4(v90, v93 + v91, type metadata accessor for Signpost);
    v94 = (v93 + v92);
    v141 = sub_1CF8FB24C;
    v95 = v149;
    *v94 = sub_1CF8FB24C;
    v94[1] = v95;
    v96 = v126;
    sub_1CEFDA34C(v76, v126, type metadata accessor for Signpost);
    v97 = (v92 + 23) & 0xFFFFFFFFFFFFFFF8;
    v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 25) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v99 + 23) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    sub_1CEFDA0C4(v96, v101 + v91, type metadata accessor for Signpost);
    v102 = (v101 + v92);
    *v102 = sub_1CF045408;
    v102[1] = 0;
    *(v101 + v97) = v147;
    v103 = v101 + v98;
    *v103 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
    *(v103 + 8) = 66;
    *(v103 + 16) = 2;
    v104 = (v101 + v99);
    v105 = v142;
    v106 = v140;
    v107 = v149;
    *v104 = v141;
    v104[1] = v107;
    v108 = (v101 + v100);
    v109 = v135;
    *v108 = sub_1CF8FB178;
    v108[1] = v109;
    v110 = swift_allocObject();
    v110[2] = sub_1CF903308;
    v110[3] = v93;
    v111 = v143;
    v110[4] = v143;
    swift_retain_n();

    v112 = fpfs_current_log();
    v147 = *(v111 + 16);
    v113 = v144;
    sub_1CEFCCBDC(v148, v144, &unk_1EC4BE370, qword_1CFA01B30);
    if ((v106[6])(v113, 1, v105) == 1)
    {
      sub_1CEFCCC44(v113, &unk_1EC4BE370, qword_1CFA01B30);
      v114 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v115 = v129;
      sub_1CF9E6438();
      (v106[1])(v113, v105);
      v114 = sub_1CF9E63C8();
      (*(v130 + 8))(v115, v131);
    }

    v116 = swift_allocObject();
    v116[2] = v112;
    v116[3] = sub_1CF4858EC;
    v116[4] = v101;
    v154 = sub_1CF2BA17C;
    v155 = v116;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v152 = sub_1CEFCA444;
    v153 = &block_descriptor_2590;
    v117 = _Block_copy(&aBlock);
    v118 = v112;

    v154 = sub_1CF2BA180;
    v155 = v110;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v152 = sub_1CEFCA444;
    v153 = &block_descriptor_2593;
    v119 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v147, v145, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v114, v117, v119);
    _Block_release(v119);
    _Block_release(v117);

    sub_1CEFCCC44(v148, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v128, type metadata accessor for Signpost);
    v120 = v146;
    v121 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF8C6C78(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v47 = a7;
  v48 = a6;
  v55 = a5;
  v13 = a4;
  v46 = a4;
  v45 = a3;
  v52 = a11;
  v53 = a12;
  v50 = a9;
  v51 = a10;
  v17 = sub_1CF9E6448();
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1CF9E5A58();
  v44 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
  v24 = a1[4];
  v57 = a1[3];
  v58 = v23;
  v49 = v24;
  v54 = __swift_project_boxed_opaque_existential_1(a1, v57);
  v56 = *(a2 + 16);
  v62 = a3;
  v63 = v13;
  (*(v20 + 16))(v22, a8, v19);
  v25 = (*(v20 + 80) + 49) & ~*(v20 + 80);
  v26 = (v21 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = v48;
  *(v28 + 24) = v29;
  v30 = v44;
  v31 = v45;
  *(v28 + 32) = a2;
  *(v28 + 40) = v31;
  *(v28 + 48) = v46;
  (*(v20 + 32))(v28 + v25, v22, v30);
  v32 = (v28 + v26);
  v33 = v51;
  *v32 = v50;
  v32[1] = v33;
  v34 = v53;
  *(v28 + v43) = v52;
  *(v28 + v27) = v34;
  v35 = v55;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v55;

  v36 = v34;
  v37 = v35;
  sub_1CEFD09A0(v35);
  type metadata accessor for VFSItem(0);
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  sub_1CEFCCCA4(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  sub_1CF2B1654(&qword_1EDEA3460, &qword_1EDEAB520, 0x1E6967388, &unk_1CFA018B0);
  v38 = *(v49 + 8);
  v39 = v59;
  sub_1CF81272C();
  v40 = v37;
  v41 = v58;
  sub_1CF5AD73C(&v62, v40, v58, v39, v54, sub_1CF8FB254, v28, v57, v38);

  return (*(v60 + 8))(v39, v61);
}

void sub_1CF8C701C(void *a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v64 = a8;
  v65 = a7;
  v68 = a6;
  v67 = a5;
  v73 = a12;
  v74 = a3;
  v72 = a11;
  v70 = a4;
  v71 = a10;
  v69 = a9;
  v14 = sub_1CF9E63D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E5A58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v66 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  if (a1)
  {
    v27 = a1;
    a2(0, a1);
  }

  else
  {
    v56 = v17;
    v57 = v15;
    v58 = v14;
    v28 = v70;
    v63 = *(*(*(v70 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    v29 = swift_dynamicCastClassUnconditional();
    v30 = swift_allocObject();
    v31 = v69;
    *(v30 + 16) = v64;
    *(v30 + 24) = v31;
    *(v30 + 32) = v28;
    *(v30 + 40) = a2;
    v32 = v71;
    v33 = v72;
    *(v30 + 48) = v74;
    *(v30 + 56) = v32;
    v34 = v67;
    *(v30 + 64) = v33;
    *(v30 + 72) = v34;
    *(v30 + 80) = v68;
    *(v30 + 88) = v73;
    v60 = v29;
    v35 = *(v29 + 216);
    v61 = *(v29 + 224);
    v62 = v35;
    v36 = sub_1CF9E6448();
    v59 = *(v36 - 8);
    (*(v59 + 56))(v26, 1, 1, v36);
    v37 = swift_allocObject();
    v64 = v26;
    *(v37 + 16) = sub_1CF8FB328;
    *(v37 + 24) = v30;
    (*(v19 + 16))(&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v65, v18);
    v38 = (*(v19 + 80) + 56) & ~*(v19 + 80);
    v39 = (v20 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = v67;
    *(v40 + 16) = v60;
    *(v40 + 24) = v41;
    *(v40 + 32) = v68;
    *(v40 + 40) = sub_1CF8FB328;
    *(v40 + 48) = v30;
    v42 = v40 + v38;
    v43 = v59;
    (*(v19 + 32))(v42, v21, v18);
    *(v40 + v39) = 0;
    v44 = swift_allocObject();
    v44[2] = sub_1CF90324C;
    v44[3] = v37;
    v45 = v61;
    v44[4] = v61;
    swift_retain_n();
    swift_retain_n();

    v46 = v72;
    sub_1CEFD09A0(v73);
    v47 = v62;
    v74 = v37;

    v48 = fpfs_current_log();
    v73 = *(v45 + 16);
    v49 = v66;
    sub_1CEFCCBDC(v64, v66, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v43 + 48))(v49, 1, v36) == 1)
    {
      sub_1CEFCCC44(v49, &unk_1EC4BE370, qword_1CFA01B30);
      v50 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v51 = v56;
      sub_1CF9E6438();
      (*(v43 + 8))(v49, v36);
      v50 = sub_1CF9E63C8();
      (*(v57 + 8))(v51, v58);
    }

    v52 = swift_allocObject();
    v52[2] = v48;
    v52[3] = sub_1CF8FB36C;
    v52[4] = v40;
    v79 = sub_1CF2BA17C;
    v80 = v52;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1CEFCA444;
    v78 = &block_descriptor_2617;
    v53 = _Block_copy(&aBlock);
    v54 = v48;

    v79 = sub_1CF2BA180;
    v80 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1CEFCA444;
    v78 = &block_descriptor_2620;
    v55 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v73, v47, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v50, v53, v55);

    _Block_release(v55);
    _Block_release(v53);

    sub_1CEFCCC44(v64, &unk_1EC4BE370, qword_1CFA01B30);
  }
}

void sub_1CF8C772C(void *a1, void (*a2)(void, void *), uint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unsigned __int8 a10, void *a11)
{
  v136 = a6;
  v137 = a7;
  v135 = a5;
  v138 = a4;
  v142 = a2;
  v143 = a3;
  v139 = a11;
  v140 = a8;
  LODWORD(v134) = a10;
  v133 = a9;
  v12 = sub_1CF9E63D8();
  v132 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v119 - v19;
  v21 = sub_1CF9E6068();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v119 - v29;
  v31 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  if (a1)
  {
    v40 = a1;
    v142(0, a1);
  }

  else
  {
    v121 = v35;
    v122 = v27;
    v123 = v34;
    v129 = v30;
    v124 = v24;
    v125 = v39;
    v126 = v38;
    v41 = v22;
    v127 = v37;
    v128 = v17;
    v119 = v14;
    v120 = v12;
    v131 = &v119 - v36;
    v141 = v20;
    v42 = v138;
    v43 = *(v138 + 2);
    v44 = swift_allocObject();
    v45 = v135;
    v46 = v136;
    *(v44 + 16) = v135;
    *(v44 + 24) = v46;
    v47 = swift_allocObject();
    *(v47 + 16) = v137;
    *(v47 + 24) = v42;
    v49 = v139;
    v48 = v140;
    v50 = v133;
    *(v47 + 32) = v140;
    *(v47 + 40) = v50;
    *(v47 + 48) = v134;
    *(v47 + 56) = v49;
    *(v47 + 64) = v45;
    v51 = v142;
    v52 = v143;
    *(v47 + 72) = v46;
    *(v47 + 80) = v51;
    v135 = v47;
    *(v47 + 88) = v52;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1CF90325C;
    *(v53 + 24) = v44;
    v142 = v53;
    v130 = v43;
    swift_retain_n();

    v54 = v48;
    sub_1CEFD09A0(v49);

    v143 = v44;

    v140 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v55 = qword_1EDEBBE40;
    v56 = v129;
    (*(v41 + 56))(v129, 1, 1, v21);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v57 = sub_1CF9E7988();
    v59 = v58;
    MEMORY[0x1D3868CC0](v57);
    v59, v60, v61, v62, v63, v64, v65, v66;
    v67 = aBlock;
    v68 = v122;
    sub_1CEFCCBDC(v56, v122, &unk_1EC4BED20, &unk_1CFA00700);
    v69 = *(v41 + 48);
    if (v69(v68, 1, v21) == 1)
    {
      v70 = v55;
      v71 = v124;
      sub_1CF9E6048();
      if (v69(v68, 1, v21) != 1)
      {
        sub_1CEFCCC44(v68, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v71 = v124;
      (*(v41 + 32))(v124, v68, v21);
    }

    v72 = v131;
    (*(v41 + 16))(v131, v71, v21);
    v73 = v123;
    *(v72 + *(v123 + 20)) = v55;
    v74 = v72 + *(v73 + 24);
    *v74 = "DB queue wait";
    *(v74 + 8) = 13;
    *(v74 + 16) = 2;
    v75 = v55;
    v76 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v77 = v21;
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1CF9FA450;
    *(v78 + 56) = MEMORY[0x1E69E6158];
    *(v78 + 64) = sub_1CEFD51C4();
    *(v78 + 32) = v67;
    sub_1CF9E6028(v76, &dword_1CEFC7000, v75, "DB queue wait", 13, 2, v72, "%s", 2);
    v78, v79, v80, v81, v82, v83, v84, v85;
    (*(v41 + 8))(v71, v77);
    sub_1CEFCCC44(v129, &unk_1EC4BED20, &unk_1CFA00700);
    v137 = *(v130 + 168);
    v139 = *(v130 + 64);
    v136 = sub_1CF9E6448();
    v134 = *(v136 - 8);
    (*(v134 + 56))(v141, 1, 1, v136);
    v86 = v126;
    sub_1CEFDA34C(v72, v126, type metadata accessor for Signpost);
    v87 = (*(v125 + 80) + 16) & ~*(v125 + 80);
    v88 = (v121 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v89 = swift_allocObject();
    sub_1CEFDA0C4(v86, v89 + v87, type metadata accessor for Signpost);
    v90 = (v89 + v88);
    v138 = sub_1CF902CCC;
    v91 = v142;
    *v90 = sub_1CF902CCC;
    v90[1] = v91;
    v92 = v127;
    sub_1CEFDA34C(v72, v127, type metadata accessor for Signpost);
    v93 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 25) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    sub_1CEFDA0C4(v92, v97 + v87, type metadata accessor for Signpost);
    v98 = (v97 + v88);
    *v98 = sub_1CF045408;
    v98[1] = 0;
    *(v97 + v93) = v130;
    v99 = v97 + v94;
    v101 = v134;
    v100 = v135;
    *v99 = "resumeSyncForItem(at:bundleID:behavior:request:completionHandler:)";
    *(v99 + 8) = 66;
    *(v99 + 16) = 2;
    v102 = (v97 + v95);
    v103 = v136;
    v104 = v142;
    *v102 = v138;
    v102[1] = v104;
    v105 = (v97 + v96);
    *v105 = sub_1CF8FB370;
    v105[1] = v100;
    v106 = swift_allocObject();
    v106[2] = sub_1CF903308;
    v106[3] = v89;
    v107 = v137;
    v106[4] = v137;
    swift_retain_n();

    v138 = v89;

    v108 = fpfs_current_log();
    v109 = *(v107 + 16);
    v110 = v128;
    sub_1CEFCCBDC(v141, v128, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v101 + 48))(v110, 1, v103) == 1)
    {
      sub_1CEFCCC44(v110, &unk_1EC4BE370, qword_1CFA01B30);
      v111 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v112 = v119;
      sub_1CF9E6438();
      (*(v101 + 8))(v110, v103);
      v111 = sub_1CF9E63C8();
      (*(v132 + 8))(v112, v120);
    }

    v113 = swift_allocObject();
    v113[2] = v108;
    v113[3] = sub_1CF4858EC;
    v113[4] = v97;
    v147 = sub_1CF2BA17C;
    v148 = v113;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v145 = sub_1CEFCA444;
    v146 = &block_descriptor_2650;
    v114 = _Block_copy(&aBlock);
    v115 = v108;

    v147 = sub_1CF2BA180;
    v148 = v106;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v145 = sub_1CEFCA444;
    v146 = &block_descriptor_2653;
    v116 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v109, v139, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v111, v114, v116);
    _Block_release(v116);
    _Block_release(v114);

    sub_1CEFCCC44(v141, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v131, type metadata accessor for Signpost);
    v117 = v140;
    v118 = fpfs_adopt_log();
  }
}