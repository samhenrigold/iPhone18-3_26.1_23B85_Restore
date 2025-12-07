uint64_t sub_1CF7A847C(uint64_t a1)
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v9 = sub_1CF9E6108();
  v10 = sub_1CF9E72C8();

  if (os_log_type_enabled(v9, v10))
  {
    v27[1] = v4;
    v28 = v2;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136446210;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = sub_1CF7A5DA0();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 6369134;
    }

    v16 = sub_1CEFD0DF0(v13, v15, v29);
    v15, v17, v18, v19, v20, v21, v22, v23;
    *(v11 + 4) = v16;
    _os_log_impl(&dword_1CEFC7000, v9, v10, "[GlobalProgress] %{public}s received paused request", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1D386CDC0](v12, -1, -1);
    MEMORY[0x1D386CDC0](v11, -1, -1);

    (*(v28 + 8))(v7, v1);
  }

  else
  {

    (*(v2 + 8))(v7, v1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + 112);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v25 + 88))(1, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1CF7A8878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF9E63A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E6448();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
    v20 = v10;
    v19 = v16;

    aBlock[4] = a2;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = a3;
    v17 = _Block_copy(aBlock);

    sub_1CF9E63F8();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1CF7AAE24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF9E77B8();
    v18 = v19;
    MEMORY[0x1D3869630](0, v13, v9, v17);
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v20);
  }

  return result;
}

uint64_t sub_1CF7A8B4C(uint64_t a1)
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v7 = sub_1CF9E6108();
  v8 = sub_1CF9E72C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1CEFC7000, v7, v8, "[GlobalProgress] received resume request on progress", v9, 2u);
    MEMORY[0x1D386CDC0](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 112);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v11 + 88))(0, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1CF7A8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CF9E6118();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E64A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_1CF9E64D8();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress;
    if (!*(v5 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress))
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
      v20 = *(v5 + v18);
      *(v5 + v18) = v19;
      v21 = v19;

      v22 = sub_1CF9E5928();
      [v21 setFileURL_];

      [v21 fp:*(v5 + 24) setFileOperationKind:?];
      [v21 setCancellable_];
      [v21 setCompletedUnitCount_];
      [v21 setTotalUnitCount_];
      sub_1CF9E71E8();
      sub_1CF9E71C8();
      v23 = sub_1CF9E6EB8();
      [v21 setUserInfoObject:v23 forKey:*MEMORY[0x1E6967120]];

      v24 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v25 = sub_1CF9E6108();
      v26 = sub_1CF9E7298();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v62 = v28;
        *v27 = 136315138;
        v29 = sub_1CF7A5DA0();
        v31 = v30;
        v32 = sub_1CEFD0DF0(v29, v30, &v62);
        v31, v33, v34, v35, v36, v37, v38, v39;
        *(v27 + 4) = v32;
        _os_log_impl(&dword_1CEFC7000, v25, v26, "[GlobalProgress] Publishing %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1D386CDC0](v28, -1, -1);
        MEMORY[0x1D386CDC0](v27, -1, -1);
      }

      (*(v60 + 8))(v10, v61);
      sub_1CF7A808C();
      v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v42 = v41;
      v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v50 = v43;
      if (v40 == v44 && v42 == v43)
      {
        v51 = 1;
      }

      else
      {
        v51 = sub_1CF9E8048();
      }

      v42, v43, v44, v45, v46, v47, v48, v49;
      v50, v52, v53, v54, v55, v56, v57, v58;
      sub_1CF7AAA9C(v21, v51 & 1);
      [v21 publish];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF7A92AC()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress;
  v7 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_publishedProgress);
  if (v7)
  {
    v8 = v7;
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v10 = sub_1CF9E6108();
    v11 = sub_1CF9E7298();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v30 = v2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v31 = v8;
      v32 = v14;
      v15 = v14;
      *v13 = 136315138;
      v16 = sub_1CF7A5DA0();
      v18 = v17;
      v19 = sub_1CEFD0DF0(v16, v17, &v32);
      v18, v20, v21, v22, v23, v24, v25, v26;
      *(v13 + 4) = v19;
      _os_log_impl(&dword_1CEFC7000, v10, v11, "[GlobalProgress] Unpublishing %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v27 = v15;
      v8 = v31;
      MEMORY[0x1D386CDC0](v27, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);

      (*(v3 + 8))(v5, v30);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    [v8 unpublish];

    v28 = *(v1 + v6);
    *(v1 + v6) = 0;
  }
}

uint64_t sub_1CF7A94C4(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  swift_unknownObjectRelease();
  v9 = OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileURL;
  v10 = sub_1CF9E5A58();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  swift_unknownObjectRelease();
  *(v8 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_activeChildProgress), v11, v12, v13, v14, v15, v16, v17;
  *(v8 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_fileSizeCache), v18, v19, v20, v21, v22, v23, v24;
  sub_1CEFCCC44(v8 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgressSubscriber, &unk_1EC4BEC50, &qword_1CF9FB4B0);

  return v8;
}

uint64_t sub_1CF7A95CC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF7A94C4(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FPFSGlobalProgress(uint64_t a1)
{
  result = qword_1EDEA6980;
  if (!qword_1EDEA6980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF7A9678(uint64_t a1)
{
  result = sub_1CF9E5A58();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double (*sub_1CF7A97CC(void *a1, uint64_t a2))()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = sub_1CF7A9850(a1);

    return v4;
  }

  return result;
}

double (*sub_1CF7A9850(void *a1))()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v160 - v7;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v168 = &v160 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v166 = &v160 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v167 = &v160 - v18;
  v19 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = 0;
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    v161 = &v160 - v24;
    v162 = v25;
    v163 = v23;
    v27 = fpfs_adopt_log();
    v164 = a1;
    v165 = v27;
    v28 = [a1 userInfo];
    type metadata accessor for ProgressUserInfoKey(0);
    sub_1CF7AAE24(&qword_1EDEA35D0, type metadata accessor for ProgressUserInfoKey, &unk_1CF9F9D38);
    v29 = sub_1CF9E6638();

    if (*v29->tree && (v37 = v1, v38 = sub_1CEFE863C(*MEMORY[0x1E6967118]), (v30 & 1) != 0))
    {
      sub_1CEFD1104(*v29[1].tester + 32 * v38, v170);
      v29, v39, v40, v41, v42, v43, v44, v45;
      if (swift_dynamicCast() & 1) != 0 && (v169)
      {
        v46 = [v164 fileURL];
        v160 = v10;
        if (v46)
        {
          v47 = v161;
          v48 = v46;
          sub_1CF9E59D8();

          v49 = sub_1CF9E5928();
          v50 = sub_1CF9E5928();
          v51 = [v49 fp:v50 relationshipToItemAtURL:?];

          if (v51 == 1)
          {
            v52 = [v164 fileOperationKind];
            if (v52)
            {
              v53 = v52;
              v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v56 = v55;
              v57 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v59 = v58;
              if (v54 == v57 && v56 == v58)
              {

                v56, v60, v61, v62, v63, v64, v65, v66;
                v59, v67, v68, v69, v70, v71, v72, v73;
LABEL_30:
                v140 = fpfs_current_or_default_log();
                sub_1CF9E6128();
                v141 = v164;
                v142 = sub_1CF9E6108();
                v143 = sub_1CF9E7298();

                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  v145 = swift_slowAlloc();
                  *v144 = 138543362;
                  *(v144 + 4) = v141;
                  *v145 = v141;
                  v146 = v141;
                  _os_log_impl(&dword_1CEFC7000, v142, v143, "[GlobalProgress] complementary progress published: %{public}@", v144, 0xCu);
                  sub_1CEFCCC44(v145, &qword_1EC4BE350, &unk_1CF9FC3B0);
                  MEMORY[0x1D386CDC0](v145, -1, -1);
                  MEMORY[0x1D386CDC0](v144, -1, -1);
                }

                (*(v160 + 8))(v167, v9);
                v147 = swift_allocObject();
                *(v147 + 16) = v37;
                *(v147 + 24) = v141;
                v148 = v141;

                sub_1CF01001C(0, "didPublishComplementaryProgress(progress:)", 42, 2, sub_1CF7AAEF0, v147);

                (*(v162 + 8))(v161, v163);
                v149 = swift_allocObject();
                swift_weakInit();
                v150 = swift_allocObject();
                *(v150 + 16) = v149;
                *(v150 + 24) = v148;
                v151 = v148;
                v26 = sub_1CF7AAF3C;
                goto LABEL_17;
              }

              v125 = sub_1CF9E8048();

              v56, v126, v127, v128, v129, v130, v131, v132;
              v59, v133, v134, v135, v136, v137, v138, v139;
              if (v125)
              {
                goto LABEL_30;
              }
            }

            v152 = fpfs_current_or_default_log();
            v153 = v166;
            sub_1CF9E6128();
            v154 = v164;
            v155 = sub_1CF9E6108();
            v156 = sub_1CF9E7298();

            if (os_log_type_enabled(v155, v156))
            {
              v157 = swift_slowAlloc();
              v158 = swift_slowAlloc();
              *v157 = 138543362;
              *(v157 + 4) = v154;
              *v158 = v154;
              v159 = v154;
              _os_log_impl(&dword_1CEFC7000, v155, v156, "[GlobalProgress] ignoring progress:<%{public}@> with different kind", v157, 0xCu);
              sub_1CEFCCC44(v158, &qword_1EC4BE350, &unk_1CF9FC3B0);
              MEMORY[0x1D386CDC0](v158, -1, -1);
              MEMORY[0x1D386CDC0](v157, -1, -1);
            }

            (*(v160 + 8))(v153, v9);
            (*(v162 + 8))(v161, v163);
LABEL_16:
            v26 = 0;
LABEL_17:
            v78 = v165;
            v79 = fpfs_adopt_log();

            return v26;
          }

          (*(v162 + 8))(v47, v163);
        }

        v81 = [v164 fileURL];
        if (v81)
        {
          v82 = v81;
          sub_1CF9E59D8();

          v83 = 0;
        }

        else
        {
          v83 = 1;
        }

        v85 = v162;
        v84 = v163;
        (*(v162 + 56))(v5, v83, 1, v163);
        sub_1CF007D78(v5, v8);
        if ((*(v85 + 48))(v8, 1, v84))
        {
          sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
          v86 = 0;
          v87 = 0xE000000000000000;
        }

        else
        {
          v88 = v163;
          (*(v85 + 16))(v21, v8, v163);
          sub_1CEFCCC44(v8, &unk_1EC4BE310, qword_1CF9FCBE0);
          v89 = sub_1CF9E5928();
          v90 = [v89 fp_shortDescription];

          v86 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v87 = v91;

          (*(v85 + 8))(v21, v88);
        }

        v92 = fpfs_current_or_default_log();
        v93 = v168;
        sub_1CF9E6128();
        v94 = v164;

        v95 = sub_1CF9E6108();
        v96 = sub_1CF9E7298();
        v87, v97, v98, v99, v100, v101, v102, v103;

        if (os_log_type_enabled(v95, v96))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v107 = v160;
          v108 = v106;
          v170[0] = v106;
          *v104 = 138543618;
          *(v104 + 4) = v94;
          *v105 = v94;
          *(v104 + 12) = 2082;
          v109 = v94;
          v110 = sub_1CEFD0DF0(v86, v87, v170);
          v87, v111, v112, v113, v114, v115, v116, v117;
          *(v104 + 14) = v110;
          _os_log_impl(&dword_1CEFC7000, v95, v96, "[GlobalProgress] ignoring progress:<%{public}@> with different URL: %{public}s", v104, 0x16u);
          sub_1CEFCCC44(v105, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v105, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v108);
          MEMORY[0x1D386CDC0](v108, -1, -1);
          MEMORY[0x1D386CDC0](v104, -1, -1);

          (*(v107 + 8))(v168, v9);
        }

        else
        {

          v87, v118, v119, v120, v121, v122, v123, v124;
          (*(v160 + 8))(v93, v9);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v29, v30, v31, v32, v33, v34, v35, v36;
    }

    v74 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v75 = sub_1CF9E6108();
    v76 = sub_1CF9E7298();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_1CEFC7000, v75, v76, "[GlobalProgress] ignoring not CloudDocs progress", v77, 2u);
      MEMORY[0x1D386CDC0](v77, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_16;
  }

  return v26;
}

id sub_1CF7AA374(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();
  v7 = v6;

  if (v5)
  {
    v9[4] = v5;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1CEFCA444;
    v9[3] = &block_descriptor_84_1;
    v5 = _Block_copy(v9);
  }

  return v5;
}

double sub_1CF7AA454(uint64_t a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1CF7AA4B4(a2);
  }

  return result;
}

double sub_1CF7AA4B4(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  *&result = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_useComplementaryProgress) == 1)
  {
    v9 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v10 = a1;
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E7298();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "[GlobalProgress] complementary progress unpublished: %{public}@", v13, 0xCu);
      sub_1CEFCCC44(v14, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v14, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v16 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
    if (v16)
    {
      sub_1CEFD57E0(0, &unk_1EDEAB630, 0x1E696AE38);
      v17 = v10;
      v18 = v16;
      v19 = sub_1CF9E7568();

      if (v19)
      {

        sub_1CF01001C(0, "didUnpublishComplemetaryProgress(progress:)", 43, 2, sub_1CF7AAF44, v2);
      }
    }
  }

  return result;
}

double sub_1CF7AA71C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E63A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6448();
  v9 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1CF7AAF58;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_97_0;
  v13 = _Block_copy(aBlock);

  sub_1CF9E63F8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1CF7AAE24(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);

  return result;
}

void sub_1CF7AA9E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v10;
  if (v6 == v9 && v8 == v10)
  {
    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
    goto LABEL_8;
  }

  v19 = sub_1CF9E8048();
  v8, v20, v21, v22, v23, v24, v25, v26;
  v17, v27, v28, v29, v30, v31, v32, v33;
  if (v19)
  {
LABEL_8:
    a1[10] = a2;
    a1[11] = a3;
  }
}

void sub_1CF7AAA9C(void *a1, char a2)
{
  v3 = sub_1CF9E71B8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    if (v3 >= 1)
    {
      v6 = sub_1CF9E6888();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      inited = swift_initStackObject();
      v8 = MEMORY[0x1E69E6530];
      v9 = MEMORY[0x1E69E65A8];
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 56) = v8;
      *(inited + 64) = v9;
      *(inited + 32) = v5;
      sub_1CF9E82F8();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C47D0, &unk_1CFA16C90);
      swift_arrayDestroy();
      v10 = FPLocv();

      if (!v10)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v12 = v11;
        v10 = sub_1CF9E6888();
        v12, v13, v14, v15, v16, v17, v18, v19;
      }

      [a1 setLocalizedDescription_];
    }
  }
}

unint64_t sub_1CF7AADBC()
{
  result = qword_1EC4C47E0;
  if (!qword_1EC4C47E0)
  {
    sub_1CEFD57E0(255, &unk_1EDEAB630, 0x1E696AE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C47E0);
  }

  return result;
}

uint64_t sub_1CF7AAE24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF7AAE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1CF7AAEF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
  *(v1 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = v2;
  v3 = v2;
}

void sub_1CF7AAF44()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress);
  *(v0 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_complementaryProgress) = 0;
}

void sub_1CF7AAF88(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v118 = a7;
  v119 = a8;
  v125 = a6;
  v114 = a5;
  v10 = a3;
  v123 = a1;
  v124 = a2;
  v104 = sub_1CF9E63D8();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v101 - v16;
  v17 = sub_1CF9E6068();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v122 = &v101 - v25;
  v108 = type metadata accessor for Signpost(0);
  v111 = *(v108 - 8);
  v26 = *(v111 + 8);
  MEMORY[0x1EEE9AC00](v108);
  v113 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v127 = &v101 - v30;
  v31 = fpfs_adopt_log();
  v117 = a4;
  v121 = v31;
  if (a4)
  {
    if (a4 == 1 && *(v8 + qword_1EC4EBCD0))
    {
      v32 = *(v8 + qword_1EC4EBCD0 + 8);
      v33 = "DB queue ro slow wait";
      v107 = 21;
      v110 = 16;
      v34 = "DB queue ro slow";
      goto LABEL_8;
    }
  }

  else if (*(v8 + qword_1EC4EBCD8))
  {
    v32 = *(v8 + qword_1EC4EBCD8 + 8);
    v33 = "DB queue ro fast wait";
    v107 = 21;
    v110 = 16;
    v34 = "DB queue ro fast";
    goto LABEL_8;
  }

  v32 = *(v8 + 64);
  v33 = "DB queue wait";
  v107 = 13;
  v110 = 8;
  v34 = "DB queue";
LABEL_8:
  v109 = v34;
  v126 = v8;
  v120 = v14;
  v115 = v32;
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDEBBE40;
  v36 = v122;
  (*(v18 + 56))(v122, 1, 1, v17);
  aBlock = 0x657220636E797361;
  v130 = 0xEB00000000206461;
  v116 = v10;
  v37 = sub_1CF9E7988();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  v106 = aBlock;
  v105 = v130;
  sub_1CEFCCBDC(v36, v23, &unk_1EC4BED20, &unk_1CFA00700);
  v47 = *(v18 + 48);
  if (v47(v23, 1, v17) == 1)
  {
    v48 = v35;
    sub_1CF9E6048();
    if (v47(v23, 1, v17) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v23, v17);
  }

  v49 = v127;
  (*(v18 + 16))(v127, v20, v17);
  v50 = v108;
  *(v49 + *(v108 + 20)) = v35;
  v51 = v49 + *(v50 + 24);
  v52 = v107;
  *v51 = v33;
  *(v51 + 8) = v52;
  *(v51 + 16) = 2;
  v53 = v35;
  v54 = v20;
  v55 = v53;
  v56 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1CF9FA450;
  *(v57 + 56) = MEMORY[0x1E69E6158];
  *(v57 + 64) = sub_1CEFD51C4();
  v58 = v105;
  *(v57 + 32) = v106;
  *(v57 + 40) = v58;
  sub_1CF9E6028(v56, &dword_1CEFC7000, v55, v33, v52, 2, v49, "%s", 2);
  v57, v59, v60, v61, v62, v63, v64, v65;
  (*(v18 + 8))(v54, v17);
  sub_1CEFCCC44(v122, &unk_1EC4BED20, &unk_1CFA00700);
  v66 = v112;
  sub_1CEFDA2E4(v49, v112, type metadata accessor for Signpost);
  v67 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v68 = v67 + v26;
  v69 = (v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v111 = type metadata accessor for Signpost;
  sub_1CEFDA05C(v66, v70 + v67, type metadata accessor for Signpost);
  v71 = (v70 + v69);
  v72 = v125;
  *v71 = v114;
  v71[1] = v72;
  v122 = *(v126 + 168);
  v73 = sub_1CF9E6448();
  v74 = *(v73 - 8);
  (*(v74 + 56))(v128, 1, 1, v73);
  v75 = v113;
  sub_1CEFDA2E4(v49, v113, type metadata accessor for Signpost);
  v76 = (v68 + 31) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v68 + 55) & 0xFFFFFFFFFFFFFFF8;
  v77 = (v68 + 71) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  sub_1CEFDA05C(v75, v78 + v67, v111);
  v79 = v78 + v69;
  v80 = v110;
  *v79 = v109;
  *(v79 + 8) = v80;
  *(v79 + 16) = 2;
  v81 = v78 + v76;
  v82 = v124;
  *v81 = v123;
  *(v81 + 8) = v82;
  LOBYTE(v82) = v117;
  *(v81 + 16) = v116;
  v83 = v78 + v114;
  *v83 = v126;
  *(v83 + 8) = v82;
  v84 = (v78 + v77);
  v85 = v119;
  *v84 = v118;
  v84[1] = v85;
  v86 = (v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v86 = sub_1CF7B7AA4;
  v86[1] = v70;
  v87 = swift_allocObject();
  v87[2] = sub_1CF7B7AA4;
  v87[3] = v70;
  v88 = v122;
  v87[4] = v122;
  v124 = v70;
  swift_retain_n();

  v89 = fpfs_current_log();
  v90 = *(v88 + 16);
  v91 = v120;
  sub_1CEFCCBDC(v128, v120, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v74 + 48))(v91, 1, v73) == 1)
  {
    sub_1CEFCCC44(v91, &unk_1EC4BE370, qword_1CFA01B30);
    v92 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v93 = v102;
    sub_1CF9E6438();
    (*(v74 + 8))(v91, v73);
    v92 = sub_1CF9E63C8();
    (*(v103 + 8))(v93, v104);
  }

  v94 = swift_allocObject();
  v94[2] = v89;
  v94[3] = sub_1CF7B7ABC;
  v94[4] = v78;
  v133 = sub_1CEFCA438;
  v134 = v94;
  aBlock = MEMORY[0x1E69E9820];
  v130 = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_43;
  v95 = _Block_copy(&aBlock);
  v96 = v89;

  v133 = sub_1CF2AF9E8;
  v134 = v87;
  aBlock = MEMORY[0x1E69E9820];
  v130 = 1107296256;
  v131 = sub_1CEFCA444;
  v132 = &block_descriptor_64_0;
  v97 = _Block_copy(&aBlock);

  v98 = v115;
  fp_task_tracker_async_and_qos(v90, v115, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v92, v95, v97);
  _Block_release(v97);
  _Block_release(v95);

  sub_1CEFCCC44(v128, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD52D8(v127, type metadata accessor for Signpost);
  v99 = v121;
  v100 = fpfs_adopt_log();
}

uint64_t sub_1CF7ABB18(uint64_t a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  MEMORY[0x1EEE9AC00](v65);
  v63 = (v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v64 = (v53 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = v53 - v8;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v66 = v12;
  v67 = v13;
  v68 = v14;
  v16 = sub_1CF7B868C(v9, v10, v11, v12, v13, v14, v15);
  v17 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
    return v17;
  }

  v18 = v16;
  v19 = v7;
  v20 = MEMORY[0x1E69E7CC0];
  sub_1CF0BA900(v9, v10, v11);
  v73 = v20;
  result = sub_1CF680F68(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v15 + 64;
    v72 = v73;
    v53[1] = v1;
    v54 = v15 + 72;
    v24 = v11;
    v25 = v9;
    v26 = v19;
    v57 = v9;
    v58 = v10;
    v56 = v11;
    v55 = v18;
    v59 = v15 + 64;
    v60 = v19;
    v61 = v15;
    while (1)
    {
      v29 = __OFADD__(v22, 1);
      v30 = v22 + 1;
      if (v29)
      {
        break;
      }

      if ((v24 | v11))
      {
        goto LABEL_39;
      }

      if (v25 < v9)
      {
        goto LABEL_29;
      }

      if (v68)
      {
        goto LABEL_40;
      }

      if (v10 != v67)
      {
        goto LABEL_30;
      }

      if (v25 >= v66)
      {
        goto LABEL_31;
      }

      if (v25 < 0 || v25 >= 1 << *(v15 + 32))
      {
        goto LABEL_32;
      }

      v31 = v25 >> 6;
      if ((*(v23 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v15 + 36) != v10)
      {
        goto LABEL_34;
      }

      v69 = v30;
      v70 = 1 << v25;
      v32 = v65;
      v33 = *(v65 + 48);
      v34 = *(v15 + 56);
      v35 = *(v15 + 48) + 16 * v25;
      v36 = *v35;
      LOBYTE(v35) = *(v35 + 8);
      v37 = v63;
      *v63 = v36;
      *(v37 + 8) = v35;
      v71 = *(v26 + 72);
      sub_1CEFCCBDC(v34 + v71 * v25, v37 + v33, &unk_1EC4BE360, &qword_1CF9FE650);
      v38 = *(v37 + 8);
      v39 = v64;
      *v64 = *v37;
      *(v39 + 8) = v38;
      sub_1CEFE55D0(v37 + v33, v39 + *(v32 + 48), &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCBDC(v39, v37, &qword_1EC4C48B8, &unk_1CFA180E0);
      v40 = v37 + *(v32 + 48);
      v41 = v62;
      sub_1CEFE55D0(v40, v62, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v39, &qword_1EC4C48B8, &unk_1CFA180E0);
      v42 = v72;
      v73 = v72;
      v44 = *(v72 + 16);
      v43 = *(v72 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1CF680F68((v43 > 1), v44 + 1, 1);
        v42 = v73;
      }

      *(v42 + 16) = v44 + 1;
      v26 = v60;
      v45 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v72 = v42;
      result = sub_1CEFE55D0(v41, v42 + v45 + v44 * v71, &unk_1EC4BE360, &qword_1CF9FE650);
      v15 = v61;
      v27 = 1 << *(v61 + 32);
      if (v25 >= v27)
      {
        goto LABEL_35;
      }

      v23 = v59;
      v46 = *(v59 + 8 * v31);
      if ((v46 & v70) == 0)
      {
        goto LABEL_36;
      }

      LODWORD(v10) = v58;
      if (*(v61 + 36) != v58)
      {
        goto LABEL_37;
      }

      v47 = v46 & (-2 << (v25 & 0x3F));
      if (v47)
      {
        v27 = __clz(__rbit64(v47)) | v25 & 0x7FFFFFFFFFFFFFC0;
        v9 = v57;
        v11 = v56;
        v28 = v55;
        v22 = v69;
      }

      else
      {
        v48 = v31 << 6;
        v49 = v31 + 1;
        v28 = v55;
        v50 = (v54 + 8 * v31);
        v9 = v57;
        v11 = v56;
        v22 = v69;
        while (v49 < (v27 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            v27 = __clz(__rbit64(v51)) + v48;
            break;
          }
        }
      }

      v24 = 0;
      v25 = v27;
      if (v22 == v28)
      {
        return v72;
      }
    }

    __break(1u);
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
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1CF7ABFD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CF9E77C8();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_1CF7AC0B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, void (*a10)(id *), uint64_t a11)
{
  v63 = a8;
  v64 = a2;
  LODWORD(v58) = a7;
  v66 = a4;
  v65 = a3;
  v61 = a10;
  v62 = a11;
  v60 = a9;
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E7458();
  sub_1CF9E6038();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBE40;
  (*(v12 + 56))(v20, 1, 1, v11);
  v67 = 0x657220636E797361;
  v68 = 0xEB00000000206461;
  v25 = sub_1CF9E7988();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  v57 = v68;
  v58 = v67;
  sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
  v35 = *(v12 + 48);
  v36 = v35(v17, 1, v11);
  v59 = v20;
  if (v36 == 1)
  {
    v37 = v24;
    sub_1CF9E6048();
    if (v35(v17, 1, v11) != 1)
    {
      sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
  }

  (*(v12 + 16))(v23, v14, v11);
  *&v23[*(v21 + 20)] = v24;
  v38 = &v23[*(v21 + 24)];
  v39 = v64;
  v40 = v14;
  v41 = v65;
  *v38 = v64;
  *(v38 + 1) = v41;
  v42 = v66;
  v38[16] = v66;
  v43 = v24;
  v44 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CF9FA450;
  *(v45 + 56) = MEMORY[0x1E69E6158];
  *(v45 + 64) = sub_1CEFD51C4();
  v46 = v57;
  *(v45 + 32) = v58;
  *(v45 + 40) = v46;
  sub_1CF9E6028(v44, &dword_1CEFC7000, v43, v39, v41, v42, v23, "%s", 2);
  v45, v47, v48, v49, v50, v51, v52, v53;
  (*(v12 + 8))(v40, v11);
  sub_1CEFCCC44(v59, &unk_1EC4BED20, &unk_1CFA00700);
  v54 = v62;

  sub_1CF3C7B2C(v60, v63, v61, v54);
  sub_1CF9E7458();
  sub_1CF9E6038();
  return sub_1CEFD52D8(v23, type metadata accessor for Signpost);
}

id sub_1CF7AC5B0(void *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v83 = a5;
  v81 = a3;
  v82 = a4;
  v86 = a2;
  v7 = sub_1CF9E6118();
  v84 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E79E8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v89[0] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (swift_dynamicCast())
  {
    if (v98 == 8)
    {
      sub_1CF47FB38(&v95);
    }

    else if (v98 != 9 || (v95 - 1) > 2 || (v14 = vorrq_s8(v96, v97), *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *(&v95 + 1)))
    {
      sub_1CF47FB38(&v95);
      goto LABEL_7;
    }

    v20 = *&v89[0];
    goto LABEL_18;
  }

LABEL_7:

  *&v95 = a1;
  v15 = a1;
  type metadata accessor for PQLSqliteError(0);
  if (swift_dynamicCast())
  {

    v16 = v95;
LABEL_11:

LABEL_12:
    v18 = *(v5 + qword_1EDEAE660);
    *(v5 + qword_1EDEAE660) = a1;
    v19 = a1;
    v20 = v18;
LABEL_18:

    return (*(v5 + qword_1EDEBBDA0))(v5, a1);
  }

  *&v89[0] = a1;
  v17 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&v95);
    v16 = *&v89[0];
    goto LABEL_11;
  }

  v80 = v7;

  *&v95 = a1;
  v21 = a1;
  v22 = swift_dynamicCast();

  if (v22)
  {
    goto LABEL_12;
  }

  *&v95 = a1;
  v23 = a1;
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = v95;
    goto LABEL_11;
  }

  v104 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v89[6] = v101;
    v89[7] = v102;
    v90 = v103;
    v89[2] = v97;
    v89[3] = v98;
    v89[4] = v99;
    v89[5] = v100;
    v89[0] = v95;
    v89[1] = v96;
    if (sub_1CF2B971C(v89) == 15)
    {
      v26 = v104;
LABEL_28:

LABEL_36:
      swift_willThrow();
      return a1;
    }

    v87[6] = v101;
    v87[7] = v102;
    v88 = v103;
    v87[2] = v97;
    v87[3] = v98;
    v87[4] = v99;
    v87[5] = v100;
    v87[0] = v95;
    v87[1] = v96;
    sub_1CEFCCC44(v87, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v89[0] = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    if (BYTE8(v100) == 11 && v95 == 4 && !(*(&v99 + 1) | v100 | v99 | *(&v98 + 1) | v98 | v97.i64[1] | v97.i64[0] | v96.i64[1] | v96.i64[0] | *(&v95 + 1)))
    {
      v26 = *&v89[0];
      goto LABEL_28;
    }

    sub_1CF480678(v95, *(&v95 + 1), v96.i64[0], v96.i64[1], v97.i64[0], v97.i64[1], v98, *(&v98 + 1), v99, *(&v99 + 1), v100, BYTE8(v100));
  }

  *&v95 = a1;
  v28 = a1;
  v29 = swift_dynamicCast();

  if ((v29 & 1) != 0 || (v86 & 1) == 0)
  {
    goto LABEL_36;
  }

  if ((*(v5 + 84) & 4) == 0)
  {
    v30 = fpfs_current_or_default_log();
    v31 = v85;
    sub_1CF9E6128();
    v32 = a1;
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72B8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v95 = v37;
      *v35 = 136446466;
      v38 = sub_1CF9E7988();
      v40 = v39;
      v41 = sub_1CEFD0DF0(v38, v39, &v95);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      swift_getErrorValue();
      v49 = Error.prettyDescription.getter(v93, v94);
      *(v35 + 14) = v49;
      *v36 = v49;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "unhandled database persistence error in %{public}s: %@", v35, 0x16u);
      sub_1CEFCCC44(v36, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);

      (*(v84 + 8))(v85, v80);
    }

    else
    {

      (*(v84 + 8))(v31, v80);
    }

    goto LABEL_36;
  }

  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v95 + 1), v50, v51, v52, v53, v54, v55, v56;
  *&v95 = 0xD000000000000028;
  *(&v95 + 1) = 0x80000001CFA46FF0;
  v57 = sub_1CF9E7988();
  v59 = v58;
  MEMORY[0x1D3868CC0](v57);
  v59, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v67 = Error.prettyDescription.getter(v91, v92);
  v68 = [v67 description];
  v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v71 = v70;

  MEMORY[0x1D3868CC0](v69, v71);
  v71, v72, v73, v74, v75, v76, v77, v78;
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF7ACD74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v7 != 2)
    {
      return 0;
    }

    v10 = *(a6 + 16);
    v9 = *(a6 + 24);
    v11 = __OFSUB__(v9, v10);
    v8 = v9 - v10;
    if (v11)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v8 < 1)
    {
      return 0;
    }
  }

  else if (v7)
  {
    LODWORD(v8) = HIDWORD(a6) - a6;
    if (__OFSUB__(HIDWORD(a6), a6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v8;
    if (v8 < 1)
    {
      return 0;
    }
  }

  else
  {
    v8 = BYTE6(a7);
    if (!BYTE6(a7))
    {
      return 0;
    }
  }

  if ((a5 & 1) == 0)
  {
    if (a3 != a4)
    {
      if ((a2 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v8 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      LODWORD(v7) = 8 * a2;
      if (v8 >= 8 * a2)
      {
        v8 = 8 * a2;
      }

      v12 = a3 + v8;
      if (__OFADD__(a3, v8))
      {
        goto LABEL_43;
      }

      if (v12 >= a3)
      {
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_23;
    }

    return 0;
  }

  if (v7)
  {
    if (v7 == 2)
    {
      a3 = *(a6 + 16);
    }

    else
    {
      a3 = a6;
    }

    goto LABEL_25;
  }

LABEL_23:
  a3 = v7;
LABEL_25:
  if ((a2 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v8 >= 8 * a2)
  {
    v8 = 8 * a2;
  }

  v12 = a3 + v8;
  if (__OFADD__(a3, v8))
  {
    goto LABEL_39;
  }

  if (v12 < a3)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_30:
  if (a3 == v12)
  {
    return 0;
  }

  if (!result)
  {
    goto LABEL_44;
  }

  v13 = a3;
  sub_1CF9E5B38();
  result = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

void sub_1CF7ACED8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  if (v3 >= v23)
  {
    v4 = sub_1CF4E3884(MEMORY[0x1E69E7CC0]);
    v5 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_changedItemsByID;
    swift_beginAccess();
    v6 = *(v2 + v5);
    *(v2 + v5) = v4;
    v6, v7, v8, v9, v10, v11, v12, v13;
    v14 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_deletedItemsIDs;
    swift_beginAccess();
    v15 = *(v2 + v14);
    *(v2 + v14) = MEMORY[0x1E69E7CD0];
    v15, v16, v17, v18, v19, v20, v21, v22;
  }
}

uint64_t sub_1CF7ACFC8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  return v3;
}

char *sub_1CF7AD03C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_observer];
    v4 = result;
    swift_unknownObjectRetain();

    [v3 enumerationResultsDidChange];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1CF7AD0B8()
{
  sub_1CF7AD590();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FPFSEnumerator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CF7AD294(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x1E6967330]) init];
      v7 = [v5 providerDomainID];
      v8 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderDomainID:v7 itemIdentifier:a1];

      [v6 setEnumeratedItemID_];
      v9 = [v5 extensionBackend];
      v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_lifetimeExtender);
      v11 = [objc_allocWithZone(type metadata accessor for DummyEnumeratorObserver()) init];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1CF7B9C08;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CF03FCFC;
      aBlock[3] = &block_descriptor_173_0;
      v13 = _Block_copy(aBlock);

      [v9 enumerateWithSettings:v6 lifetimeExtender:v10 observer:v11 completionHandler:v13];
      _Block_release(v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1CF7AD4C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated])
    {
      if (a1)
      {
        v5 = Strong;
        [a1 invalidate];
      }

      else
      {
      }
    }

    else
    {
      *&Strong[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator] = a1;
      v6 = Strong;
      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
    }
  }

  else if (a1)
  {
    [a1 invalidate];
  }
}

double sub_1CF7AD590()
{
  v1 = (v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated);
  __swp(v1, v1);
  if ((v1 & 1) == 0)
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_keepAlive + 8);

      v3(v5);
      sub_1CF045404(v3, v4);
    }

    v6 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_extensionEnumerator);
    if (v6)
    {
      [v6 invalidate];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        v10 = [v9 session];

        [v10 asyncUnregisterLifetimeExtensionForObject_];
        swift_unknownObjectRelease();
      }
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 log];
      }

      else
      {
        v15 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      *(v16 + 24) = v2;
      v17 = v12;
      sub_1CF01001C(v15, "enumeratorHasBeenInvalidated(_:)", 32, 2, sub_1CF7B9C00, v16);
    }

    v18 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable;
    if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_cancellable))
    {

      sub_1CF9E6258();
    }

    *(v2 + v18) = 0;
  }

  return result;
}

uint64_t sub_1CF7AD800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v65 - v12;
  sub_1CEFCCBDC(a1, v9, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v17 = v66;
    sub_1CEFE55D0(v9, v13, &unk_1EC4BE360, &qword_1CF9FE650);
    if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries) != 1 || (v18 = *(v10 + 48), v13[v18] != 1))
    {
LABEL_10:
      v39 = *v13;
      v40 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
      v41 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
      v42 = *v13 == v40;
      if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
      {
        v42 = 0;
      }

      v44 = v41 == 1 && v39 == v40;
      v46 = v41 == 2 && v40 == 0;
      v48 = v41 == 2 && v40 == 1;
      if (v39)
      {
        v49 = v48;
      }

      else
      {
        v49 = v46;
      }

      if (v13[8] == 1)
      {
        v49 = v44;
      }

      if (v13[8])
      {
        v50 = v49;
      }

      else
      {
        v50 = v42;
      }

      v51 = *(v13 + 2);
      if (v13[24])
      {
        if (v13[24] != 1)
        {
          v52 = v17;
          if (v51)
          {
            v53 = v41 == 2 && v40 == 1;
          }

          else
          {
            v53 = v41 == 2 && v40 == 0;
          }

          goto LABEL_60;
        }

        v52 = v17;
        if (v41 == 1)
        {
          v53 = v51 == v40;
          goto LABEL_60;
        }
      }

      else
      {
        v52 = v17;
        if (!*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
        {
          v53 = v51 == v40;
LABEL_60:
          v60 = v53;
          if ((v60 | v50))
          {
            goto LABEL_64;
          }

          goto LABEL_44;
        }
      }

      if (v50)
      {
LABEL_64:
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
        v62 = *(v61 + 48);
        sub_1CEFE55D0(v13, v52, &unk_1EC4BE360, &qword_1CF9FE650);
        *(v52 + v62) = v50;
        v15 = *(*(v61 - 8) + 56);
        v16 = v52;
        v54 = 0;
        v14 = v61;
        return v15(v16, v54, 1, v14);
      }

LABEL_44:
      sub_1CEFCCC44(v13, &unk_1EC4BE360, &qword_1CF9FE650);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
      v15 = *(*(v14 - 8) + 56);
      v16 = v52;
      goto LABEL_45;
    }

    v19 = *(v13 + 2);
    v20 = v13[24];
    v22 = *(v13 + 16);
    v21 = *(v13 + 17);
    sub_1CEFDA2E4(&v13[v18], &v6[*(v4 + 40)], type metadata accessor for ItemMetadata);
    *v6 = v19;
    v6[8] = v20;
    *(v6 + 2) = v22;
    *(v6 + 3) = v21;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCC44(v6, &unk_1EC4BFD90, &unk_1CFA134F0);
    if (v22 == 0x746E656D75636F44 && v21 == 0xE900000000000073)
    {
      v21, v23, v24, v25, v26, v27, v28, v29;
    }

    else
    {
      v31 = sub_1CF9E8048();
      v21, v32, v33, v34, v35, v36, v37, v38;
      if ((v31 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1CEFCCBDC(v13, v17, &unk_1EC4BE360, &qword_1CF9FE650);
    v55 = *v13;
    v56 = v13[8];
    sub_1CEFCCC44(v13, &unk_1EC4BE360, &qword_1CF9FE650);
    v57 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    v58 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
    if (v56)
    {
      if (v56 == 1)
      {
        v59 = v58 == 1 && v55 == v57;
      }

      else if (v55)
      {
        v59 = v58 == 2 && v57 == 1;
      }

      else
      {
        v59 = v58 == 2 && v57 == 0;
      }
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
      {
        v64 = 0;
LABEL_79:
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
        *(v17 + *(v14 + 48)) = v64;
        v15 = *(*(v14 - 8) + 56);
        v16 = v17;
        v54 = 0;
        return v15(v16, v54, 1, v14);
      }

      v59 = v55 == v57;
    }

    v64 = v59;
    goto LABEL_79;
  }

  sub_1CEFCCC44(v9, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4880, &unk_1CFA16E28);
  v15 = *(*(v14 - 8) + 56);
  v16 = v66;
LABEL_45:
  v54 = 1;
  return v15(v16, v54, 1, v14);
}

double sub_1CF7ADD70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1CF7BA9BC;
  *(v9 + 24) = v7;
  swift_retain_n();
  v10 = a4;

  sub_1CF7AAF88("currentSyncAnchor(completion:)", 30, 2, 2, sub_1CF7BA950, v9, sub_1CF7BA958, v8);

  return result;
}

void sub_1CF7ADE98(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  v5 = sub_1CF51FAD8(v9, 8uLL);
  v7 = v6;
  v8 = sub_1CF9E5B48();
  sub_1CEFE4714(v5, v7);
  a2(v8, 0);
}

uint64_t sub_1CF7AE000@<X0>(const char *a2@<X1>, int64_t a3@<X2>, int64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = *(v9 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
  v13 = *(v9 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
  if (v13 == 1)
  {
    goto LABEL_13;
  }

  if (v13 != 2)
  {
    v35 = 0;
    v34 = 220;
    v14 = sub_1CF9E7B68();
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for VFSFileTree(0);
  v10 = swift_dynamicCastClassUnconditional();

  v14 = objc_sync_enter(v10);
  if (!v12)
  {
    if (!v14)
    {
      v21 = v10[20];

      v16 = objc_sync_exit(v10);
      if (!v16)
      {

        v12 = *(v21 + 24);

        goto LABEL_13;
      }

LABEL_25:
      MEMORY[0x1EEE9AC00](v16);
      v34 = v10;
      goto LABEL_26;
    }

LABEL_23:
    MEMORY[0x1EEE9AC00](v14);
    v34 = v10;
    goto LABEL_24;
  }

  if (v14)
  {
    goto LABEL_23;
  }

  v15 = v10[20];

  v16 = objc_sync_exit(v10);
  if (v16)
  {
    goto LABEL_25;
  }

  v12 = *(v15 + 40);
  v17 = *(v15 + 48);

  if ((v17 & 1) == 0)
  {
LABEL_13:
    0, a2, a3, a4, a5, a6, a7, a8;
    v42 = v12;
    v44 = 0u;
    v43 = 0u;
    type metadata accessor for VFSFileTree(0);
    v22 = swift_dynamicCastClassUnconditional();

    v23 = objc_sync_enter(v22);
    if (!v23)
    {
      v24 = v22[20];

      v25 = objc_sync_exit(v22);
      if (!v25)
      {
        v26 = *(v24 + 16);

        v39 = v12;
        v40 = 0u;
        v41 = 0u;
        v36 = -1;
        v27 = fpfs_openfdbyhandle();
        if (v27 < 0)
        {
          v29 = MEMORY[0x1D38683F0]();
          LODWORD(v37[0]) = 0;
          BYTE4(v37[0]) = 1;
          v38 = 0;
          v31 = sub_1CF19BBE4(v29, v37);
          sub_1CF1969CC(v37);
          swift_willThrow();
          LODWORD(v37[0]) = sub_1CF9E5308();
          sub_1CF196978();
          sub_1CF9E5658();
          sub_1CF255928(&v42);

          v32 = sub_1CF9E5A58();
          return (*(*(v32 - 8) + 56))(a9, 1, 1, v32);
        }

        else
        {
          v28 = v27;
          sub_1CF19811C(v27, &v42, v26, 1, a9);
          close(v28);
          sub_1CF255928(&v42);
          v30 = sub_1CF9E5A58();
          return (*(*(v30 - 8) + 56))(a9, 0, 1, v30);
        }
      }

      MEMORY[0x1EEE9AC00](v25);
      v34 = v22;
LABEL_26:
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v33, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v23);
    v34 = v22;
LABEL_24:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v33, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v18 = sub_1CF9E5A58();
  v19 = *(*(v18 - 8) + 56);

  return v19(a9, 1, 1, v18);
}

void sub_1CF7AE5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v14 = *a3;
  v15 = *(a3 + 8);
  v37 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  v35 = v14;
  v36 = v15;
  v27 = a7;
  v28 = a8;
  v29 = v8;
  v30 = a1;
  v31 = a5;
  v32 = a2;
  v33 = a4;
  v34 = &v37;

  sub_1CF2368F4(&v35, a6, a5, sub_1CF7B9BCC, v26, a7, a8);

  if (v25)
  {
    v37, v16, v17, v18, v19, v20, v21, v22;
  }
}

void sub_1CF7AE6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v57 = v11;
  v56 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  memcpy(__dst, v19, 0x378uLL);
  v63 = sub_1CF4E3A7C(MEMORY[0x1E69E7CC0]);
  v20 = *(v16 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID);
  if (v20)
  {
    v21 = v16 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID;
    v22 = *(v16 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    v23 = *(v21 + 8);
    v24 = v20;
    sub_1CF1C9D14(v20, v22, v23);
  }

  memcpy(v61, __dst, sizeof(v61));
  if (sub_1CEFF755C() != 1)
  {
    v25 = v61[31];
    if (v61[31])
    {
      v26 = *v18;
      v27 = *(v18 + 8);
      v28 = v61[31];
      sub_1CF1C9D14(v25, v26, v27);
    }
  }

  v29 = v63;
  sub_1CF7BB964(v63);
  v31 = v30;
  v29, v32, v33, v34, v35, v36, v37, v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v40 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v41 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650, &unk_1CFA0FF08);
  v42 = sub_1CF76BB00(v18, 0, 1, v31, v14, v39, a9, v40, &off_1F4BF8588, v41, a10);
  v31, v43, v44, v45, v46, v47, v48, v49;
  memcpy(__src, __dst, sizeof(__src));
  nullsub_1();
  memcpy(v59, __src, sizeof(v59));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    sub_1CEFF4514(__dst, v58);
    v52 = [v51 indexer];

    if (v52)
    {
      v53 = [v52 needsAuthentication];

      if (v53)
      {
        v54 = 9;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1CEFF4514(__dst, v58);
  }

  v54 = 1;
LABEL_12:
  sub_1CF765380(v42, v59, v54, v57, v14, a9, v40, &off_1F4BF8588, a10);
  if (v10)
  {
    memcpy(v58, v59, sizeof(v58));
    sub_1CEFCCC44(v58, &unk_1EC4C46E0, &unk_1CFA16860);
  }

  else
  {
    memcpy(v58, v59, sizeof(v58));
    sub_1CEFCCC44(v58, &unk_1EC4C46E0, &unk_1CFA16860);
    v55 = v42;
    MEMORY[0x1D3868FA0]();
    if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CF9E6D88();
    }

    sub_1CF9E6DE8();
  }
}

double sub_1CF7AEA74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(uint64_t (*)()))
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v12[3] = a2;
  v13 = v9;
  v14 = v10;

  sub_1CF24E938(&v13, a4, sub_1CF7B9AD8, v12, a5, a6);

  return result;
}

void sub_1CF7AEB0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = VFSItemID.description.getter(v6);
    v9 = v8;
    v10 = sub_1CEFD0DF0(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "Materializing container %{public}s for appLibraries", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D386CDC0](v6, -1, -1);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v2;
  sub_1CEFD4024("triggerMaterializationDatalessContainers(fpfs:backend:directory:with:)", 70, 2, nullsub_1, 0, sub_1CF7B9AF4, v18);
}

uint64_t sub_1CF7AECB4(uint64_t a1, void *a2, int a3)
{
  LODWORD(v133) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v131 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v115 - v8;
  v9 = sub_1CF9E6068();
  v128 = *(v9 - 8);
  v129 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v120 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v115 - v14;
  v121 = type metadata accessor for Signpost(0);
  v124 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v130 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v126 = &v115 - v17;
  v125 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v115 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v115 - v22;
  v24 = sub_1CF9E63D8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - v28;
  v30 = sub_1CF9E6448();
  v138 = *(v30 - 8);
  v31 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v123 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v137 = &v115 - v33;
  v135 = *(a1 + 16);
  qos_class_self();
  sub_1CF9E63B8();
  v34 = *(v25 + 48);
  v35 = v34(v23, 1, v24);
  v136 = v30;
  v118 = v24;
  v117 = v25;
  if (v35 == 1)
  {
    (*(v25 + 104))(v29, *MEMORY[0x1E69E7FA0], v24);
    if (v34(v23, 1, v24) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v25 + 32))(v29, v23, v24);
  }

  sub_1CF9E6428();
  v36 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v36 setCancellable_];
  v37 = swift_allocObject();
  v38 = v135;
  swift_weakInit();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v39;
  *(v40 + 32) = a2;
  v122 = a2;
  v41 = v133;
  *(v40 + 40) = v133;
  v143 = sub_1CF481424;
  v144 = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_154_0;
  v42 = _Block_copy(&aBlock);

  sub_1CF03C63C(sub_1CF481424, v40);

  [v36 setCancellationHandler_];
  _Block_release(v42);

  v43 = v138;
  v44 = v123;
  v45 = v136;
  (*(v138 + 16))(v123, v137, v136);
  v46 = (*(v43 + 80) + 80) & ~*(v43 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = nullsub_1;
  *(v47 + 24) = 0;
  v48 = v122;
  *(v47 + 32) = v38;
  *(v47 + 40) = v48;
  *(v47 + 48) = v41;
  *(v47 + 56) = xmmword_1CFA16CA0;
  *(v47 + 72) = v36;
  v49 = *(v43 + 32);
  v133 = v47;
  v49(v47 + v46, v44, v45);

  v123 = v36;
  v122 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDEBBE40;
  v52 = v128;
  v51 = v129;
  v53 = v132;
  (*(v128 + 7))(v132, 1, 1, v129);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v54 = sub_1CF9E7988();
  v56 = v55;
  MEMORY[0x1D3868CC0](v54);
  v56, v57, v58, v59, v60, v61, v62, v63;
  v64 = *(&aBlock + 1);
  v119 = aBlock;
  v65 = v53;
  v66 = v120;
  sub_1CEFCCBDC(v65, v120, &unk_1EC4BED20, &unk_1CFA00700);
  v67 = *(v52 + 6);
  v68 = v67(v66, 1, v51);
  v69 = v127;
  if (v68 == 1)
  {
    v70 = v50;
    sub_1CF9E6048();
    if (v67(v66, 1, v51) != 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v52 + 4))(v127, v66, v51);
  }

  v71 = v134;
  (*(v52 + 2))(v134, v69, v51);
  v72 = v121;
  *(v71 + *(v121 + 20)) = v50;
  v73 = v71 + *(v72 + 24);
  *v73 = "DB queue wait";
  *(v73 + 8) = 13;
  *(v73 + 16) = 2;
  v74 = v50;
  v75 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1CF9FA450;
  *(v76 + 56) = MEMORY[0x1E69E6158];
  *(v76 + 64) = sub_1CEFD51C4();
  *(v76 + 32) = v119;
  *(v76 + 40) = v64;
  sub_1CF9E6028(v75, &dword_1CEFC7000, v74, "DB queue wait", 13, 2, v71, "%s", 2);
  v76, v77, v78, v79, v80, v81, v82, v83;
  (*(v52 + 1))(v69, v51);
  sub_1CEFCCC44(v132, &unk_1EC4BED20, &unk_1CFA00700);
  v129 = *(v135 + 168);
  v132 = *(v135 + 64);
  (*(v138 + 56))(v139, 1, 1, v45);
  v84 = v126;
  sub_1CEFDA2E4(v71, v126, type metadata accessor for Signpost);
  v85 = (*(v124 + 80) + 16) & ~*(v124 + 80);
  v86 = (v125 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = swift_allocObject();
  sub_1CEFDA05C(v84, v87 + v85, type metadata accessor for Signpost);
  v88 = (v87 + v86);
  v128 = nullsub_1;
  *v88 = nullsub_1;
  v88[1] = 0;
  v89 = v130;
  sub_1CEFDA2E4(v71, v130, type metadata accessor for Signpost);
  v90 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v91 + 25) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  sub_1CEFDA05C(v89, v93 + v85, type metadata accessor for Signpost);
  v94 = (v93 + v86);
  *v94 = sub_1CF045408;
  v94[1] = 0;
  *(v93 + v90) = v135;
  v95 = v138;
  v96 = v93 + v91;
  *v96 = "materialize(_:request:options:qos:completion:)";
  *(v96 + 8) = 46;
  *(v96 + 16) = 2;
  v97 = (v93 + v92);
  *v97 = v128;
  v97[1] = 0;
  v98 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
  v99 = v133;
  *v98 = sub_1CF481430;
  v98[1] = v99;
  v100 = swift_allocObject();
  v100[2] = sub_1CF7B9B00;
  v100[3] = v87;
  v101 = v129;
  v100[4] = v129;

  v102 = v136;

  v135 = v87;

  v103 = fpfs_current_log();
  v130 = *(v101 + 16);
  v104 = v131;
  sub_1CEFCCBDC(v139, v131, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v95 + 48))(v104, 1, v102) == 1)
  {
    sub_1CEFCCC44(v104, &unk_1EC4BE370, qword_1CFA01B30);
    v105 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v106 = v116;
    sub_1CF9E6438();
    (*(v95 + 8))(v104, v102);
    v105 = sub_1CF9E63C8();
    (*(v117 + 8))(v106, v118);
  }

  v107 = v95;
  v108 = swift_allocObject();
  v108[2] = v103;
  v108[3] = sub_1CF48160C;
  v108[4] = v93;
  v143 = sub_1CF2BA17C;
  v144 = v108;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_148;
  v109 = _Block_copy(&aBlock);
  v110 = v103;

  v143 = sub_1CF2BA180;
  v144 = v100;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v141 = sub_1CEFCA444;
  v142 = &block_descriptor_151;
  v111 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v130, v132, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v105, v109, v111);
  _Block_release(v111);
  _Block_release(v109);

  sub_1CEFCCC44(v139, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD52D8(v134, type metadata accessor for Signpost);
  v112 = v122;
  v113 = fpfs_adopt_log();

  return (*(v107 + 8))(v137, v136);
}

void sub_1CF7AFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = *(a5 + 8);
  v26 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  swift_dynamicCastClassUnconditional();
  v25 = v6;
  v24 = v5;
  sub_1CEFE4E68();

  sub_1CF9E7668();
  v23 = v7;
  sub_1CF237350(&v24);

  v23, v8, v9, v10, v11, v12, v13, v14;
  if (v22)
  {
    v26, v15, v16, v17, v18, v19, v20, v21;
  }
}

uint64_t sub_1CF7AFD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, char *a12, void *a13, uint64_t a14, char *a15)
{
  MEMORY[0x1EEE9AC00](a1);
  v189 = v15;
  v190 = v16;
  v195 = v18;
  v196 = v17;
  v186 = v19;
  v185 = v20;
  v192 = v21;
  v23 = v22;
  v25 = v24;
  v194 = a14;
  v188 = a11;
  v193 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4820, &qword_1CFA16E00);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v178 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v169 = &v169 - v29;
  v180 = sub_1CF9E6118();
  v184 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v170 = &v169 - v32;
  v33 = sub_1CF9E5A58();
  v174 = *(v33 - 8);
  v175 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v171 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v176 = &v169 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4840, &unk_1CFA16E08);
  MEMORY[0x1EEE9AC00](v37);
  v177 = &v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v173 = &v169 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v169 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v181 = &v169 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v169 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v169 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v169 - v53;
  memcpy(v208, v23, sizeof(v208));
  sub_1CEFCCBDC(v25, v54, &unk_1EC4BE360, &qword_1CF9FE650);
  v55 = *(v37 + 48);
  v197 = v54;
  memcpy(&v54[v55], v208, 0x378uLL);
  memcpy(v209, v192, 0x378uLL);
  v56 = v190;
  sub_1CEFCCBDC(v196, v51, &unk_1EC4BE360, &qword_1CF9FE650);
  v57 = *(v37 + 48);
  v196 = v51;
  memcpy(&v51[v57], v209, 0x378uLL);
  v210 = sub_1CF4E3A7C(MEMORY[0x1E69E7CC0]);
  sub_1CEFF4514(v208, v207);
  sub_1CEFF4514(v209, v207);
  if (v56)
  {
    v58 = v56;
    sub_1CF1C9D14(v56, v185, v186);
  }

  v192 = a15;
  v191 = a10;
  v59 = v197;
  sub_1CEFCCBDC(v197, v48, &unk_1EC4C4840, &unk_1CFA16E08);
  memcpy(v207, &v48[*(v37 + 48)], sizeof(v207));
  sub_1CEFCCBDC(v207, v205, &unk_1EC4BFC20, &unk_1CFA0A290);
  sub_1CEFF5410(v207);
  memcpy(v206, v207, sizeof(v206));
  v60 = sub_1CEFF755C();
  v187 = v43;
  if (v60 == 1)
  {
    sub_1CEFCCC44(v48, &unk_1EC4BE360, &qword_1CF9FE650);
  }

  else
  {
    sub_1CEFCCBDC(&v206[31], v205, &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v207, &unk_1EC4BFC20, &unk_1CFA0A290);
    v61 = v206[31];
    v62 = v206[31];
    sub_1CEFCCC44(&v206[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
    sub_1CEFCCC44(v48, &unk_1EC4BE360, &qword_1CF9FE650);
    if (v61)
    {
      v63 = v181;
      sub_1CEFCCBDC(v59, v181, &unk_1EC4C4840, &unk_1CFA16E08);
      memcpy(v205, (v63 + *(v37 + 48)), sizeof(v205));
      sub_1CEFF5410(v205);
      v64 = *v63;
      v65 = *(v63 + 8);
      sub_1CEFCCC44(v63, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CF1C9D14(v61, v64, v65);
    }
  }

  v66 = v210;
  sub_1CF7BB964(v210);
  v68 = v67;
  v66, v69, v70, v71, v72, v73, v74, v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v77 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v78 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650, &unk_1CFA0FF08);
  v79 = v192;
  v182 = v78;
  v81 = v193;
  v80 = v194;
  v172 = v76;
  v82 = sub_1CF76BB00(v197, 0, 1, v68, v193, v76, v194, v77, &off_1F4BF8588, v78, v192);
  v68, v83, v84, v85, v86, v87, v88, v89;
  v90 = v187;
  sub_1CEFCCBDC(v197, v187, &unk_1EC4C4840, &unk_1CFA16E08);
  v183 = v37;
  memcpy(v205, (v90 + *(v37 + 48)), sizeof(v205));
  nullsub_1();
  memcpy(v204, v205, sizeof(v204));
  v167 = v79;
  v91 = v77;
  v92 = v189;
  sub_1CF765380(v82, v204, v191 | 1, v188, v81, v80, v77, &off_1F4BF8588, v167);
  v189 = v92;
  if (v92)
  {

    memcpy(v203, v204, sizeof(v203));
    sub_1CEFCCC44(v203, &unk_1EC4C46E0, &unk_1CFA16860);
    sub_1CEFCCC44(v196, &unk_1EC4C4840, &unk_1CFA16E08);
    sub_1CEFCCC44(v197, &unk_1EC4C4840, &unk_1CFA16E08);
    v93 = &unk_1EC4BE360;
    v94 = &qword_1CF9FE650;
    v95 = v90;
  }

  else
  {
    v97 = v182;
    v96 = v183;
    memcpy(v203, v204, sizeof(v203));
    sub_1CEFCCC44(v203, &unk_1EC4C46E0, &unk_1CFA16860);
    sub_1CEFCCC44(v90, &unk_1EC4BE360, &qword_1CF9FE650);
    v98 = v82;
    if ([v82 isContainer] && (objc_msgSend(v82, sel_isContainerPristine) & 1) == 0)
    {
      v187 = a12;
      v210 = sub_1CF4E3A7C(MEMORY[0x1E69E7CC0]);
      v110 = v190;
      if (v190)
      {
        v111 = v190;
        sub_1CF1C9D14(v110, v185, v186);
      }

      v190 = v82;
      v112 = v173;
      sub_1CEFCCBDC(v196, v173, &unk_1EC4C4840, &unk_1CFA16E08);
      memcpy(v201, (v112 + *(v96 + 48)), sizeof(v201));
      sub_1CEFCCBDC(v201, v200, &unk_1EC4BFC20, &unk_1CFA0A290);
      sub_1CEFF5410(v201);
      memcpy(v202, v201, sizeof(v202));
      if (sub_1CEFF755C() == 1)
      {
        sub_1CEFCCC44(v112, &unk_1EC4BE360, &qword_1CF9FE650);
        v113 = v192;
      }

      else
      {
        sub_1CEFCCBDC(&v202[31], v200, &unk_1EC4C4E60, &unk_1CF9FCAD0);
        sub_1CEFCCC44(v201, &unk_1EC4BFC20, &unk_1CFA0A290);
        v114 = v202[31];
        v115 = v202[31];
        sub_1CEFCCC44(&v202[31], &unk_1EC4C4E60, &unk_1CF9FCAD0);
        sub_1CEFCCC44(v112, &unk_1EC4BE360, &qword_1CF9FE650);
        v113 = v192;
        if (v114)
        {
          v116 = v181;
          sub_1CEFCCBDC(v196, v181, &unk_1EC4C4840, &unk_1CFA16E08);
          memcpy(v200, (v116 + *(v96 + 48)), sizeof(v200));
          sub_1CEFF5410(v200);
          v117 = *v116;
          v118 = *(v116 + 8);
          sub_1CEFCCC44(v116, &unk_1EC4BE360, &qword_1CF9FE650);
          sub_1CF1C9D14(v114, v117, v118);
        }
      }

      v119 = v210;
      sub_1CF7BB964(v210);
      v121 = v120;
      v119, v122, v123, v124, v125, v126, v127, v128;
      v168 = v113;
      v129 = 1;
      v130 = v196;
      v188 = sub_1CF76BB00(v196, 0, 1, v121, v193, v172, v194, v91, &off_1F4BF8588, v97, v168);
      v121, v131, v132, v133, v134, v135, v136, v137;
      v138 = v177;
      sub_1CEFCCBDC(v130, v177, &unk_1EC4C4840, &unk_1CFA16E08);
      memcpy(v200, (v138 + *(v96 + 48)), sizeof(v200));
      nullsub_1();
      memcpy(v199, v200, sizeof(v199));
      v139 = [v190 fileURL];
      if (v139)
      {
        v140 = v171;
        v141 = v139;
        sub_1CF9E59D8();

        v142 = v174;
        v143 = v176;
        v144 = v140;
        v145 = v175;
        (*(v174 + 32))(v176, v144, v175);
        v129 = 0;
        v146 = v184;
        v147 = v189;
      }

      else
      {
        v146 = v184;
        v147 = v189;
        v145 = v175;
        v143 = v176;
        v142 = v174;
      }

      (*(v142 + 56))(v143, v129, 1, v145);
      v148 = v188;
      sub_1CF765380(v188, v199, v191 | 1, v143, v193, v194, v91, &off_1F4BF8588, v192);
      if (v147)
      {

        sub_1CEFCCC44(v143, &unk_1EC4BE310, qword_1CF9FCBE0);
        memcpy(v198, v199, sizeof(v198));
        sub_1CEFCCC44(v198, &unk_1EC4C46E0, &unk_1CFA16860);
        sub_1CEFCCC44(v196, &unk_1EC4C4840, &unk_1CFA16E08);
        sub_1CEFCCC44(v197, &unk_1EC4C4840, &unk_1CFA16E08);
        v93 = &unk_1EC4BE360;
        v94 = &qword_1CF9FE650;
        v95 = v138;
      }

      else
      {
        sub_1CEFCCC44(v143, &unk_1EC4BE310, qword_1CF9FCBE0);
        memcpy(v198, v199, sizeof(v198));
        sub_1CEFCCC44(v198, &unk_1EC4C46E0, &unk_1CFA16860);
        sub_1CEFCCC44(v138, &unk_1EC4BE360, &qword_1CF9FE650);
        v149 = v169;
        sub_1CEFCCBDC(v187, v169, &unk_1EC4C4820, &qword_1CFA16E00);
        v150 = v180;
        v151 = (*(v146 + 48))(v149, 1, v180);
        v152 = v197;
        v153 = v190;
        if (v151 == 1)
        {
          sub_1CEFCCC44(v149, &unk_1EC4C4820, &qword_1CFA16E00);
        }

        else
        {
          (*(v146 + 32))(v170, v149, v150);
          v154 = v153;
          v155 = v148;
          v156 = sub_1CF9E6108();
          v157 = sub_1CF9E7288();

          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            v189 = 0;
            v159 = v158;
            v160 = swift_slowAlloc();
            *v159 = 138543618;
            *(v159 + 4) = v154;
            *(v159 + 12) = 2114;
            *(v159 + 14) = v155;
            *v160 = v154;
            v160[1] = v155;
            v161 = v154;
            v162 = v155;
            _os_log_impl(&dword_1CEFC7000, v156, v157, "Patching container %{public}@ with %{public}@", v159, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
            swift_arrayDestroy();
            v163 = v160;
            v148 = v188;
            MEMORY[0x1D386CDC0](v163, -1, -1);
            v150 = v180;
            MEMORY[0x1D386CDC0](v159, -1, -1);
          }

          (*(v184 + 8))(v170, v150);
          v152 = v197;
        }

        v164 = [objc_opt_self() appLibraryFromContainerItem:v153 documentsItem:v148];
        if (v164)
        {
          v165 = v164;
          if ([v164 isValidAppLibrary])
          {
            v165 = v165;
            MEMORY[0x1D3868FA0]();
            if (*((*a13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1CF9E6D88();
              v148 = v188;
            }

            sub_1CF9E6DE8();
          }
        }

        else
        {
        }

        sub_1CEFCCC44(v196, &unk_1EC4C4840, &unk_1CFA16E08);
        v95 = v152;
        v93 = &unk_1EC4C4840;
        v94 = &unk_1CFA16E08;
      }
    }

    else
    {
      v99 = v178;
      sub_1CEFCCBDC(a12, v178, &unk_1EC4C4820, &qword_1CFA16E00);
      v100 = v184;
      v101 = v180;
      if ((*(v184 + 48))(v99, 1, v180) == 1)
      {

        sub_1CEFCCC44(v196, &unk_1EC4C4840, &unk_1CFA16E08);
        sub_1CEFCCC44(v197, &unk_1EC4C4840, &unk_1CFA16E08);
        v93 = &unk_1EC4C4820;
        v94 = &qword_1CFA16E00;
        v95 = v99;
      }

      else
      {
        (*(v100 + 32))(v179, v99, v101);
        v102 = v98;
        v103 = sub_1CF9E6108();
        v104 = sub_1CF9E7288();

        v105 = os_log_type_enabled(v103, v104);
        v106 = v197;
        if (v105)
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v107 = 138543362;
          *(v107 + 4) = v102;
          *v108 = v102;
          v109 = v102;
          _os_log_impl(&dword_1CEFC7000, v103, v104, "Discarding container %{public}@ from appLibraries", v107, 0xCu);
          sub_1CEFCCC44(v108, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v108, -1, -1);
          MEMORY[0x1D386CDC0](v107, -1, -1);
        }

        (*(v100 + 8))(v179, v101);
        sub_1CEFCCC44(v196, &unk_1EC4C4840, &unk_1CFA16E08);
        v95 = v106;
        v93 = &unk_1EC4C4840;
        v94 = &unk_1CFA16E08;
      }
    }
  }

  return sub_1CEFCCC44(v95, v93, v94);
}

void sub_1CF7B0EC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void, void, id), uint64_t a5)
{
  v6 = v5;
  v144 = a4;
  v136 = a2;
  v137 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v134 = *(v9 - 8);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v140 = &Strong - v10;
  v11 = sub_1CF9E6118();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v132 = v13;
  v133 = &Strong - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &Strong - v15;
  if (qword_1EDEAB5F0 != -1)
  {
    swift_once();
  }

  v141 = a1;
  v17 = sub_1CF9E5B88();
  v19 = v18;
  v20 = sub_1CF9E5B88();
  v22 = v21;
  v23 = sub_1CF328660(v17, v19, v20, v21);
  sub_1CEFE4714(v20, v22);
  sub_1CEFE4714(v17, v19);
  v145 = a5;
  if (v23)
  {
    goto LABEL_7;
  }

  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v24 = sub_1CF9E5B88();
  v26 = v25;
  v27 = sub_1CF9E5B88();
  v29 = v28;
  v30 = sub_1CF328660(v24, v26, v27, v28);
  sub_1CEFE4714(v27, v29);
  sub_1CEFE4714(v24, v26);
  if (v30)
  {
LABEL_7:
    v31 = 0;
  }

  else
  {
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    type metadata accessor for PaginatedContinuation();
    v53 = sub_1CF9E5B88();
    v55 = v54;
    sub_1CF7B9A90(&unk_1EC4C4810, type metadata accessor for PaginatedContinuation, &unk_1CFA18F1C);
    sub_1CF9E5668();

    sub_1CEFE4714(v53, v55);
    v31 = v147;
  }

  v143 = v12;
  v32 = *(v12 + 16);
  v32(v16, &v6[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v11);

  v33 = v6;
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E7298();

  v36 = os_log_type_enabled(v34, v35);
  v142 = v16;
  if (v36)
  {
    v131 = v32;
    v138 = v11;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v149[0] = v39;
    *v37 = 138412546;
    *(v37 + 4) = v33;
    *v38 = v33;
    *(v37 + 12) = 2080;
    v139 = v31;
    if (v31)
    {
      v147 = 979789423;
      v148 = 0xE400000000000000;
      v146 = *(v31 + 16);
      v40 = v33;
      v41 = sub_1CF9E7F98();
      v43 = v42;
      MEMORY[0x1D3868CC0](v41);

      v43, v44, v45, v46, v47, v48, v49, v50;
      v51 = v147;
      v52 = v148;
    }

    else
    {
      v51 = 0x6C616974696E693CLL;
      v56 = v33;
      v52 = 0xE90000000000003ELL;
    }

    v57 = sub_1CEFD0DF0(v51, v52, v149);
    v52, v58, v59, v60, v61, v62, v63, v64;
    *(v37 + 14) = v57;
    _os_log_impl(&dword_1CEFC7000, v34, v35, "📖  %@: enumerating page %s", v37, 0x16u);
    sub_1CEFCCC44(v38, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    MEMORY[0x1D386CDC0](v37, -1, -1);

    v11 = v138;
    v31 = v139;
    v16 = v142;
    v32 = v131;
  }

  else
  {
  }

  if ((v33[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v149[0] = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v91 = v147;
    v92 = v33;

    v93 = v91;
    v94 = sub_1CF9E6108();
    v95 = sub_1CF9E72A8();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v149[0] = v141;
      *v96 = 138412802;
      *(v96 + 4) = v92;
      *v97 = v92;
      *(v96 + 12) = 2080;
      v139 = v31;
      if (v31)
      {
        v98 = v31;
        v99 = v11;
        v147 = 979789423;
        v148 = 0xE400000000000000;
        v146 = *(v98 + 16);
        v100 = v92;
        v101 = sub_1CF9E7F98();
        v103 = v102;
        MEMORY[0x1D3868CC0](v101);
        v103, v104, v105, v106, v107, v108, v109, v110;
        v111 = v147;
        v112 = v148;
      }

      else
      {
        v99 = v11;
        v111 = 0x6C616974696E693CLL;
        v113 = v92;
        v112 = 0xE90000000000003ELL;
      }

      v114 = sub_1CEFD0DF0(v111, v112, v149);
      v112, v115, v116, v117, v118, v119, v120, v121;
      *(v96 + 14) = v114;
      *(v96 + 22) = 2112;
      v147 = v93;
      sub_1CF7B9A90(&qword_1EDEAB6A0, type metadata accessor for NSFileProviderError, &unk_1CF9F62F0);
      v122 = v93;
      v123 = sub_1CF9E7FB8();
      if (v123)
      {
        v124 = v123;
      }

      else
      {
        v124 = swift_allocError();
        *v125 = v122;
      }

      v11 = v99;
      v126 = sub_1CF9E57E8();

      v127 = [v126 fp_prettyDescription];
      *(v96 + 24) = v127;
      v97[1] = v127;
      _os_log_impl(&dword_1CEFC7000, v94, v95, "📖  %@: enumerating page %s failed: %@", v96, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v97, -1, -1);
      v128 = v141;
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x1D386CDC0](v128, -1, -1);
      MEMORY[0x1D386CDC0](v96, -1, -1);

      v16 = v142;
    }

    else
    {
    }

    v129 = v93;
    v144(MEMORY[0x1E69E7CC0], 0, 0, 0, v93);

    (*(v143 + 8))(v16, v11);
  }

  else
  {
    v131 = swift_allocObject();
    v65 = v133;
    v32(v133, v16, v11);
    v66 = v143;
    v67 = (*(v143 + 80) + 24) & ~*(v143 + 80);
    v68 = (v132 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
    v138 = v11;
    v70 = swift_allocObject();
    *(v70 + 16) = Strong;
    (*(v66 + 32))(v70 + v67, v65, v11);
    *(v70 + v68) = v33;
    *(v70 + v69) = v31;
    v71 = (v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
    v72 = v145;
    *v71 = v144;
    v71[1] = v72;
    v73 = v131;
    *(v131 + 16) = sub_1CF7B87A4;
    *(v73 + 24) = v70;
    v74 = swift_allocObject();
    v133 = v74;
    *(v74 + 16) = sub_1CF7B87A4;
    *(v74 + 24) = v70;
    sub_1CEFCCBDC(v136, v140, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v75 = (*(v134 + 80) + 32) & ~*(v134 + 80);
    v76 = (v135 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    *(v80 + 16) = v131;
    *(v80 + 24) = v31;
    sub_1CEFE55D0(v140, v80 + v75, &qword_1EC4C1B40, &unk_1CF9FCB70);
    *(v80 + v76) = v33;
    v81 = v141;
    *(v80 + v77) = v141;
    *(v80 + v78) = v137;
    v82 = (v80 + v79);
    v83 = v145;
    *v82 = v144;
    v82[1] = v83;
    v84 = Strong;
    *(v80 + ((v79 + 23) & 0xFFFFFFFFFFFFFFF8)) = Strong;
    v85 = v33;
    swift_retain_n();
    v86 = v84;
    swift_retain_n();
    v87 = v85;
    v88 = v86;
    v89 = v133;

    v90 = v81;
    sub_1CF8EA768("enumerateItems(fromPage:selfItem:suggestedPageSize:reply:)", 58, 2, sub_1CF7B87AC, v80, v88, sub_1CF7B87A8, v89);

    (*(v143 + 8))(v142, v138);
  }
}

double sub_1CF7B1A7C(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a7;
  v43 = a8;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v50 = a1;
  v40 = a9;
  v41 = a10;
  v47 = sub_1CF9E63A8();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1CF9E6448();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a5 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue);
  (*(v16 + 16))(v19, a6, v15, v18);
  v20 = (*(v16 + 80) + 41) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v50;
  *(v23 + 24) = a2;
  v24 = v37;
  *(v23 + 32) = v37;
  LOBYTE(v17) = v38 & 1;
  *(v23 + 40) = v38 & 1;
  (*(v16 + 32))(v23 + v20, v19, v15);
  v25 = v42;
  v26 = v43;
  *(v23 + v21) = v42;
  *(v23 + v22) = v26;
  v27 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  aBlock[4] = sub_1CF7B998C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_116;
  v29 = _Block_copy(aBlock);

  sub_1CF7B9A40(v50, v36, v24, v17);
  v30 = v25;

  v31 = v39;
  sub_1CF9E63F8();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1CF7B9A90(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v32 = v45;
  v33 = v47;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v31, v32, v29);
  _Block_release(v29);
  (*(v49 + 8))(v32, v33);
  (*(v46 + 8))(v31, v48);

  return result;
}

void sub_1CF7B1ED0(unint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5, void *a6, uint64_t a7, void (*a8)(uint64_t, void *, void *, void, uint64_t))
{
  v133[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0)
  {

    swift_bridgeObjectRetain_n();
    v38 = a6;

    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E7298();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v133[0] = v127;
      *v41 = 138413314;
      *(v41 + 4) = v38;
      v126 = v42;
      *v42 = v38;
      *(v41 + 12) = 2080;
      if (a7)
      {
        v130 = 979789423;
        v131 = 0xE400000000000000;
        v132[0] = *(a7 + 16);
        v43 = v38;
        v44 = sub_1CF9E7F98();
        v46 = v45;
        MEMORY[0x1D3868CC0](v44);
        v46, v47, v48, v49, v50, v51, v52, v53;
        v54 = 979789423;
        v55 = 0xE400000000000000;
      }

      else
      {
        v54 = 0x6C616974696E693CLL;
        v71 = v38;
        v55 = 0xE90000000000003ELL;
      }

      v72 = sub_1CEFD0DF0(v54, v55, v133);
      v55, v73, v74, v75, v76, v77, v78, v79;
      *(v41 + 14) = v72;
      *(v41 + 22) = 2048;
      if (a1 >> 62)
      {
        v87 = sub_1CF9E7818();
      }

      else
      {
        v87 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1, v80, v81, v82, v83, v84, v85, v86;
      *(v41 + 24) = v87;
      a1, v88, v89, v90, v91, v92, v93, v94;
      *(v41 + 32) = 2080;
      if (a2)
      {
        v130 = 0x207478656E20;
        v131 = 0xE600000000000000;
        v132[0] = 979789423;
        v132[1] = 0xE400000000000000;
        v95 = sub_1CF9E7F98();
        v97 = v96;
        MEMORY[0x1D3868CC0](v95);
        v97, v98, v99, v100, v101, v102, v103, v104;
        MEMORY[0x1D3868CC0](979789423, 0xE400000000000000);
        0xE400000000000000, v105, v106, v107, v108, v109, v110, v111;
        v112 = 0x207478656E20;
        v113 = 0xE600000000000000;
      }

      else
      {
        v112 = 0;
        v113 = 0xE000000000000000;
      }

      v114 = sub_1CEFD0DF0(v112, v113, v133);
      v113, v115, v116, v117, v118, v119, v120, v121;
      *(v41 + 34) = v114;
      *(v41 + 42) = 2048;
      *(v41 + 44) = a3;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "📖  %@: enumerating page %s done: %ld items%s anchor:%llu", v41, 0x34u);
      sub_1CEFCCC44(v126, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v126, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v127, -1, -1);
      MEMORY[0x1D386CDC0](v41, -1, -1);

      if (!a2)
      {
        goto LABEL_21;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      if (!a2)
      {
LABEL_21:
        v59 = 0;
        goto LABEL_22;
      }
    }

    sub_1CF9E56C8();
    swift_allocObject();

    sub_1CF9E56B8();
    sub_1CF9E5698();
    v130 = a2;
    type metadata accessor for PaginatedContinuation();
    sub_1CF7B9A90(&unk_1EC4C4850, type metadata accessor for PaginatedContinuation, &unk_1CFA18EF4);
    v56 = sub_1CF9E56A8();
    v58 = v57;
    v59 = sub_1CF9E5B48();

    sub_1CEFE4714(v56, v58);
    v60 = v59;
LABEL_22:
    v130 = a3;
    v122 = sub_1CF51FAD8(&v130, 8uLL);
    v124 = v123;
    v125 = sub_1CF9E5B48();
    sub_1CEFE4714(v122, v124);
    a8(a1, v59, v125, 0, 0);

    return;
  }

  v14 = a6;
  sub_1CF7B9A40(a1, a2, a3, 1);
  v15 = sub_1CF9E6108();
  v16 = sub_1CF9E72A8();

  sub_1CF7B9940(a1, a2, a3, 1, v17, v18, v19, v20);
  if (os_log_type_enabled(v15, v16))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v132[0] = v23;
    *v21 = 138412802;
    *(v21 + 4) = v14;
    *v22 = v14;
    *(v21 + 12) = 2080;
    if (a7)
    {
      v130 = 979789423;
      v131 = 0xE400000000000000;
      v133[0] = *(a7 + 16);
      v24 = v14;
      v25 = sub_1CF9E7F98();
      v27 = v26;
      MEMORY[0x1D3868CC0](v25);
      v27, v28, v29, v30, v31, v32, v33, v34;
      v35 = 979789423;
      v36 = 0xE400000000000000;
    }

    else
    {
      v35 = 0x6C616974696E693CLL;
      v61 = v14;
      v36 = 0xE90000000000003ELL;
    }

    v62 = sub_1CEFD0DF0(v35, v36, v132);
    v36, v63, v64, v65, v66, v67, v68, v69;
    *(v21 + 14) = v62;
    *(v21 + 22) = 2112;
    swift_getErrorValue();
    v70 = Error.prettyDescription.getter(v128, v129);
    *(v21 + 24) = v70;
    v22[1] = v70;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "📖  %@: enumerating page %s failed: %@", v21, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v21, -1, -1);
  }

  else
  {
  }

  a8(MEMORY[0x1E69E7CC0], 0, 0, 0, a1);
}

double sub_1CF7B2618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v59 = a7;
  v60 = a8;
  v56 = a5;
  v57 = a6;
  v50 = a3;
  v61 = a1;
  v58 = a10;
  v54 = a4;
  v55 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v47 = &v47 - v13;
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = sub_1CF7BA9C0;
  v19[3] = v17;
  v19[4] = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF7B9748;
  *(v20 + 24) = v19;
  swift_beginAccess();
  v51 = a2;
  *(a2 + 16) = sub_1CF7B9764;
  *(a2 + 24) = v20;

  v49 = swift_allocBox();
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v52 = *(v61 + 16);
  v24 = swift_allocObject();
  v48 = v24;
  *(v24 + 16) = sub_1CF7B9764;
  *(v24 + 24) = v20;
  sub_1CEFCCBDC(v54, v14, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v25 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v49;
  *(v33 + 16) = v50;
  *(v33 + 24) = v34;
  sub_1CEFE55D0(v47, v33 + v25, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v35 = v60;
  *(v33 + v26) = v61;
  v36 = v56;
  *(v33 + v27) = v56;
  v37 = v57;
  *(v33 + v28) = v57;
  *(v33 + v29) = v59;
  v38 = (v33 + v30);
  v39 = v55;
  *v38 = v35;
  v38[1] = v39;
  *(v33 + v31) = v51;
  v40 = v58;
  *(v33 + v32) = v58;
  v41 = swift_allocObject();
  v42 = v48;
  *(v41 + 16) = sub_1CF7BA9C0;
  *(v41 + 24) = v42;

  v43 = v36;
  v44 = v37;

  v45 = v40;

  sub_1CF7AAF88("enumerateItems(fromPage:selfItem:suggestedPageSize:reply:)", 58, 2, 2, sub_1CF7B98E4, v41, sub_1CF7B97E0, v33);

  return result;
}

void sub_1CF7B2A4C(void *a1, uint64_t a2, int *a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, _BYTE *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v238 = a8;
  v241 = a7;
  v263 = a6;
  v261 = a5;
  v255 = a4;
  v259 = a3;
  v260 = a1;
  v262 = a2;
  v257 = a12;
  v252 = a11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4820, &qword_1CFA16E00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v253 = &v226 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v234 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v256 = &v226 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v258 = &v226 - v19;
  v250 = sub_1CF9E6388();
  v249 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v248 = &v226 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v246 = &v226 - v22;
  v247 = sub_1CF9E6498();
  v245 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v244 = &v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v240 = &v226 - v25;
  v237 = sub_1CF9E63D8();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v239 = &v226 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1CF9E6448();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v28 = &v226 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CF9E73D8();
  v235 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v226 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v254 = *(v32 - 1);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v226 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v226 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v226 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v226 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v226 - v45;
  v47 = swift_projectBox();
  v251 = v262 == 0;
  if (v262)
  {
    v272 = MEMORY[0x1E69E7CC0];
    v48 = v263;
    v49 = v264;
    v50 = v261;
    goto LABEL_3;
  }

  v233 = v46;
  v231 = v40;
  v232 = v47;
  v227 = v37;
  v228 = v31;
  v259 = v34;
  v229 = v29;
  v230 = v28;
  sub_1CEFCCBDC(v255, v43, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v70 = v254;
  v71 = *(v254 + 48);
  if (v71(v43, 1, v32) == 1)
  {
    v72 = v260[3];
    v255 = v260[4];
    v73 = __swift_project_boxed_opaque_existential_1(v260, v72);
    v74 = *(*(v261 + 16) + 32);
    v75 = v263[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
    v270 = *&v263[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
    v271 = v75;
    v76 = *(*v74 + 240);

    v77 = v233;
    v78 = v73;
    v79 = v264;
    v76(&v270, 1, v78, v72, v255);

    v80 = v71(v43, 1, v32);
    v264 = v79;
    v81 = v259;
    if (v79)
    {
      if (v80 != 1)
      {
        sub_1CEFCCC44(v43, &qword_1EC4C1B40, &unk_1CF9FCB70);
      }

      return;
    }

    if (v80 != 1)
    {
      sub_1CEFCCC44(v43, &qword_1EC4C1B40, &unk_1CF9FCB70);
    }
  }

  else
  {
    v77 = v233;
    sub_1CEFE55D0(v43, v233, &unk_1EC4BE360, &qword_1CF9FE650);
    (*(v70 + 56))(v77, 0, 1, v32);
    v81 = v259;
  }

  v111 = v232;
  swift_beginAccess();
  sub_1CF7100F4(v77, v111);
  swift_beginAccess();
  v112 = v111;
  v113 = v231;
  sub_1CEFCCBDC(v112, v231, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if (v71(v113, 1, v32) == 1)
  {
    sub_1CEFCCC44(v113, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v114 = *(v261 + 16);
    v115 = *(v114[4] + 16);
    type metadata accessor for VFSFileTree(0);
    v116 = swift_dynamicCastClassUnconditional();
    v117 = v263;
    v118 = *&v263[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
    v119 = v263[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];

    v120 = objc_sync_enter(v114);
    if (v120)
    {
      MEMORY[0x1EEE9AC00](v120);
      v225 = v114;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, v224, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    LODWORD(v259) = v119;
    v260 = v118;
    v262 = v115;
    v121 = *(v114 + qword_1EDEADB30);
    v122 = objc_sync_exit(v114);
    v123 = v241;
    v124 = v238;
    if (v122)
    {
      MEMORY[0x1EEE9AC00](v122);
      v225 = v114;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, v224, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v125 = swift_allocObject();
    v125[2] = v117;
    v125[3] = v123;
    v125[4] = v124;
    v125[5] = a9;
    v126 = v252;
    v125[6] = a10;
    v125[7] = v126;
    sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
    v261 = v116;
    v127 = *(v116 + 216);
    v268 = MEMORY[0x1E69E7CC0];
    sub_1CF7B9A90(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v128 = v117;
    v129 = v123;

    v130 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
    sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
    v131 = v228;
    v132 = v229;
    sub_1CF9E77B8();
    v133 = sub_1CF9E73E8();

    (*(v235 + 8))(v131, v132);
    qos_class_self();
    v134 = v240;
    sub_1CF9E63B8();
    v135 = v236;
    v136 = *(v236 + 48);
    v137 = v237;
    if (v136(v134, 1, v237) == 1)
    {
      (*(v135 + 104))(v239, *MEMORY[0x1E69E7FA0], v137);
      v138 = v136(v134, 1, v137);
      v139 = v249;
      v140 = v248;
      v141 = v243;
      if (v138 != 1)
      {
        sub_1CEFCCC44(v134, &unk_1EC4BE380, &qword_1CFA01BA0);
      }
    }

    else
    {
      (*(v135 + 32))(v239, v134, v137);
      v139 = v249;
      v140 = v248;
      v141 = v243;
    }

    ObjectType = swift_getObjectType();
    v206 = v230;
    sub_1CF9E6428();
    v207 = swift_allocObject();
    v208 = v260;
    *(v207 + 16) = v261;
    *(v207 + 24) = v208;
    *(v207 + 32) = v259;
    *(v207 + 40) = 0u;
    *(v207 + 56) = 0u;
    *(v207 + 72) = 0u;
    *(v207 + 88) = 0u;
    *(v207 + 104) = 0u;
    *(v207 + 120) = 0u;
    *(v207 + 136) = 0u;
    *(v207 + 152) = v133;
    *(v207 + 160) = sub_1CF7B98EC;
    *(v207 + 168) = v125;

    swift_unknownObjectRetain();

    sub_1CEFD5828(0, v206, sub_1CEFD5CCC, v207, ObjectType);

    (*(v242 + 8))(v206, v141);
    v209 = v244;
    sub_1CF9E6478();
    v210 = v246;
    sub_1CEFD5B64(v246);
    sub_1CEFD5BD8(v140);
    MEMORY[0x1D3869770](v209, v210, v140, ObjectType);
    v211 = *(v139 + 8);
    v212 = v140;
    v213 = v250;
    v211(v212, v250);
    v211(v210, v213);
    (*(v245 + 8))(v209, v247);
    sub_1CF9E7448();

    swift_unknownObjectRelease();
  }

  else
  {
    v259 = v32;
    sub_1CEFE55D0(v113, v81, &unk_1EC4BE360, &qword_1CF9FE650);
    v142 = v260[3];
    v143 = v260[4];
    v144 = __swift_project_boxed_opaque_existential_1(v260, v142);
    Strong = swift_unknownObjectWeakLoadStrong();
    v49 = v264;
    if (Strong && (v146 = Strong, v147 = [Strong indexer], v146, v147) && (v148 = objc_msgSend(v147, sel_needsAuthentication), v147, v148))
    {
      v149 = 9;
    }

    else
    {
      v149 = 1;
    }

    v157 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v158 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
    v159 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650, &unk_1CFA0FF08);
    v160 = v149;
    v161 = v259;
    v50 = v261;
    v162 = sub_1CF76BB00(v81, v160, 0, v157, v144, v259, v142, v158, &off_1F4BF8588, v159, v143);
    v157, v163, v164, v165, v166, v167, v168, v169;
    if (v81[v161[12]] == 1)
    {
      sub_1CEFCCC44(v81, &unk_1EC4BE360, &qword_1CF9FE650);
      v272 = MEMORY[0x1E69E7CC0];
      v48 = v263;
      if (v162)
      {
        v170 = v260[3];
        v171 = v260[4];
        v172 = __swift_project_boxed_opaque_existential_1(v260, v170);
        v173 = v232;
        swift_beginAccess();
        v174 = v50;
        v175 = v227;
        sub_1CEFCCBDC(v173, v227, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v176 = v162;
        v177 = v162;
        sub_1CF7D5E20(v177, v175, v174, v172, v170, v171);
        v179 = v178;
        sub_1CEFCCC44(v175, &qword_1EC4C1B40, &unk_1CF9FCB70);
        if (v49)
        {

          return;
        }

        v259 = v176;
        v214 = v179;
        MEMORY[0x1D3868FA0]();
        if (*((v272 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v272 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CF9E6D88();
        }

        sub_1CF9E6DE8();

        v255 = v272;
        v215 = [v177 fileURL];
        v216 = v234;
        if (v215)
        {
          v217 = v215;
          sub_1CF9E59D8();

          v218 = 0;
        }

        else
        {
          v218 = 1;
        }

        v52 = v256;
        v51 = sub_1CF9E5A58();
        v219 = *(v51 - 8);
        v220 = v218;
        v221 = *(v219 + 56);
        v221(v216, v220, 1, v51);
        sub_1CEFE55D0(v216, v52, &unk_1EC4BE310, qword_1CF9FCBE0);
        if ((*(v219 + 48))(v52, 1, v51) != 1)
        {
          v222 = v52;
          v223 = v258;
          (*(v219 + 32))(v258, v222, v51);
          v60 = v223;
          v221(v223, 0, 1, v51);
          v50 = v261;
          goto LABEL_6;
        }

        v50 = v261;
LABEL_4:
        v60 = v258;
        sub_1CF7AE000(v53, v54, v55, v56, v57, v58, v59, v258);
        sub_1CF9E5A58();
        if ((*(*(v51 - 8) + 48))(v52, 1, v51) != 1)
        {
          sub_1CEFCCC44(v52, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

LABEL_6:
        v61 = v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries];
        v62 = v260[3];
        v63 = v260[4];
        v64 = __swift_project_boxed_opaque_existential_1(v260, v62);
        if (v61)
        {
          v65 = swift_unknownObjectWeakLoadStrong();
          v264 = v49;
          if (v65 && (v66 = v65, v67 = [v65 indexer], v66, v67))
          {
            v68 = [v67 needsAuthentication];

            if (v68)
            {
              v69 = 8;
            }

            else
            {
              v69 = 0;
            }
          }

          else
          {
            v69 = 0;
          }

          type metadata accessor for FPFSEnumerator(0);
          v92 = *&v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_fpItemID];
          v93 = v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
          v268 = *&v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
          v269 = v93;
          v266 = v268;
          v267 = v93;
          v94 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger;
          v95 = sub_1CF9E6118();
          v96 = *(v95 - 8);
          v97 = &v263[v94];
          v48 = v263;
          v98 = v253;
          (*(v96 + 16))(v253, v97, v95);
          (*(v96 + 56))(v98, 0, 1, v95);
          v99 = v92;
          v224[1] = v62;
          v225 = v63;
          v224[0] = v64;
          v100 = v258;
          v101 = v264;
          sub_1CF7AFB70(v261, v69, v92, &v268, &v266);
          if (v101)
          {

            sub_1CEFCCC44(v98, &unk_1EC4C4820, &qword_1CFA16E00);
            sub_1CEFCCC44(v100, &unk_1EC4BE310, qword_1CF9FCBE0);
            v255, v104, v105, v106, v107, v108, v109, v110;
            return;
          }

          v150 = v103;
          v151 = v102;
          sub_1CEFCCC44(v98, &unk_1EC4C4820, &qword_1CFA16E00);

          v83 = v151;
          v60 = v100;
        }

        else
        {
          v82 = v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
          v268 = *&v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
          v269 = v82;
          sub_1CF7AE5C0(v50, v257, &v268, v60, v64, v262, v62, v63);
          if (v49)
          {
            sub_1CEFCCC44(v60, &unk_1EC4BE310, qword_1CF9FCBE0);
            v255, v85, v86, v87, v88, v89, v90, v91;
            goto LABEL_19;
          }

          v150 = v84;
          v251 = 0;
        }

        sub_1CF1E90D4(v83);
        v152 = v260[3];
        v153 = v260[4];
        v154 = __swift_project_boxed_opaque_existential_1(v260, v152);
        v155 = v272;
        v156 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
        sub_1CF764128(v155, v154, v152, v156, &off_1F4BF8588, v153);
        v180 = v252;
        swift_beginAccess();
        v181 = *(v180 + 16);
        swift_getKeyPath();
        swift_getKeyPath();

        sub_1CF9E6298();

        v181(v155, v150, v266, 0);

        v155, v182, v183, v184, v185, v186, v187, v188;
        if (v251)
        {
          v189 = v260[3];
          v190 = v260[4];
          v191 = __swift_project_boxed_opaque_existential_1(v260, v189);
          v192 = v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
          v266 = *&v48[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
          v267 = v192;
          sub_1CF7AEA74(v261, v257, &v266, v191, v189, v190);
          v193 = v259;
          sub_1CEFCCC44(v60, &unk_1EC4BE310, qword_1CF9FCBE0);

          return;
        }

        sub_1CEFCCC44(v60, &unk_1EC4BE310, qword_1CF9FCBE0);

LABEL_19:

        return;
      }

LABEL_3:
      v51 = sub_1CF9E5A58();
      v52 = v256;
      (*(*(v51 - 8) + 56))(v256, 1, 1, v51);
      v259 = 0;
      v255 = MEMORY[0x1E69E7CC0];
      goto LABEL_4;
    }

    v194 = v252;
    swift_beginAccess();
    v195 = *(v194 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v196 = swift_allocObject();
    *(v196 + 16) = xmmword_1CFA00250;
    *(v196 + 32) = v162;
    swift_getKeyPath();
    swift_getKeyPath();

    v197 = v162;
    sub_1CF9E6298();

    v195(v196, 0, v265, 0);

    v196, v198, v199, v200, v201, v202, v203, v204;
    sub_1CEFCCC44(v81, &unk_1EC4BE360, &qword_1CF9FE650);
  }
}

void sub_1CF7B42D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, void, void, void, id), uint64_t a6, uint64_t a7)
{
  v100 = a5;
  v101 = a6;
  v98 = a3;
  v99 = a4;
  v103 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v93 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v93 - v13;
  v14 = type metadata accessor for VFSItem(0);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v93 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v93 - v20);
  sub_1CEFCCBDC(a1, &v93 - v20, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    swift_beginAccess();
    v23 = *(a7 + 16);

    v24 = v22;
    v23(v22, 0, 0, 1);
  }

  else if ((*(v15 + 48))(v21, 1, v14) == 1)
  {
    swift_beginAccess();
    v25 = *(a7 + 16);
    v26 = *(v103 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
    v27 = *(v103 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v29 = swift_allocError();
    v31 = v30;
    sub_1CF1B8150();
    v32 = swift_allocError();
    *v33 = v28;
    *&v123 = v26;
    BYTE8(v123) = v27;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = v32;
    sub_1CF2A8DE0(&v123);
    *v31 = v123;
    v34 = v124;
    v35 = v125;
    v36 = v127;
    *(v31 + 48) = v126;
    *(v31 + 64) = v36;
    *(v31 + 16) = v34;
    *(v31 + 32) = v35;
    v37 = v128;
    v38 = v129;
    v39 = v130;
    *(v31 + 128) = v131;
    *(v31 + 96) = v38;
    *(v31 + 112) = v39;
    *(v31 + 80) = v37;

    v25(v29, 0, 0, 1);

    sub_1CEFCCC44(v21, &unk_1EC4BEC00, &unk_1CF9FCB60);
  }

  else
  {
    v93 = type metadata accessor for VFSItem;
    v40 = v102;
    sub_1CEFDA05C(v21, v102, type metadata accessor for VFSItem);
    v41 = v40;
    v42 = v94;
    sub_1CEFDA2E4(v41, v94, type metadata accessor for VFSItem);
    v43 = v97;
    v44 = &v11[v97[13]];
    sub_1CEFE528C(&v123);
    v45 = v136;
    *(v44 + 12) = v135;
    *(v44 + 13) = v45;
    *(v44 + 14) = v137;
    *(v44 + 30) = v138;
    v46 = v132;
    *(v44 + 8) = v131;
    *(v44 + 9) = v46;
    v47 = v134;
    *(v44 + 10) = v133;
    *(v44 + 11) = v47;
    v48 = v128;
    *(v44 + 4) = v127;
    *(v44 + 5) = v48;
    v49 = v130;
    *(v44 + 6) = v129;
    *(v44 + 7) = v49;
    v50 = v124;
    *v44 = v123;
    *(v44 + 1) = v50;
    v51 = v126;
    *(v44 + 2) = v125;
    *(v44 + 3) = v51;
    v52 = &v11[v43[14]];
    *v52 = 0u;
    *(v52 + 1) = 0u;
    v52[32] = 1;
    v53 = &v11[v43[15]];
    *v53 = 0;
    *(v53 + 1) = 0;
    v53[16] = 1;
    v54 = *v42;
    v55 = *(v42 + 8);
    *v11 = *v42;
    v11[8] = v55;
    v56 = *(v42 + 16);
    v57 = *(v42 + 24);
    if (v55 == 2 && v54 < 2)
    {
      v58 = 2;
    }

    else
    {
      v54 = *(v42 + 16);
      v58 = *(v42 + 24);
    }

    *(v11 + 2) = v54;
    v11[24] = v58;
    v59 = v42 + v14[9];
    v60 = *v59;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    LOBYTE(v59) = *(v59 + 24);
    v63 = *(v42 + 32);
    v64 = *(v42 + 40);
    *(v11 + 4) = v60;
    *(v11 + 10) = v61;
    *(v11 + 6) = v62;
    v11[56] = v59;
    v11[80] = v57;
    *(v11 + 11) = v63;
    *(v11 + 12) = v64;
    *(v11 + 8) = 0;
    *(v11 + 9) = v56;
    *(v11 + 13) = 0;
    *(v11 + 14) = 0;
    *(v11 + 15) = 0;
    *(v11 + 16) = v63;
    *(v11 + 17) = v64;
    sub_1CEFDA2E4(v42 + v14[7], &v11[v43[12]], type metadata accessor for ItemMetadata);
    v65 = v42 + v14[8];
    v66 = *(v65 + 208);
    v117 = *(v65 + 192);
    v118 = v66;
    v119 = *(v65 + 224);
    v120 = *(v65 + 240);
    v67 = *(v65 + 144);
    v113 = *(v65 + 128);
    v114 = v67;
    v68 = *(v65 + 176);
    v115 = *(v65 + 160);
    v116 = v68;
    v69 = *(v65 + 80);
    v109 = *(v65 + 64);
    v110 = v69;
    v70 = *(v65 + 112);
    v111 = *(v65 + 96);
    v112 = v70;
    v71 = *(v65 + 48);
    v107 = *(v65 + 32);
    v108 = v71;
    v72 = *(v65 + 16);
    v105 = *v65;
    v106 = v72;
    v73 = *(v44 + 13);
    v121[12] = *(v44 + 12);
    v121[13] = v73;
    v121[14] = *(v44 + 14);
    v122 = *(v44 + 30);
    v74 = *(v44 + 9);
    v121[8] = *(v44 + 8);
    v121[9] = v74;
    v75 = *(v44 + 11);
    v121[10] = *(v44 + 10);
    v121[11] = v75;
    v76 = *(v44 + 5);
    v121[4] = *(v44 + 4);
    v121[5] = v76;
    v77 = *(v44 + 7);
    v121[6] = *(v44 + 6);
    v121[7] = v77;
    v78 = *(v44 + 1);
    v121[0] = *v44;
    v121[1] = v78;
    v79 = *(v44 + 3);
    v121[2] = *(v44 + 2);
    v121[3] = v79;
    swift_bridgeObjectRetain_n();
    sub_1CEFCCBDC(&v105, &v104, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    sub_1CEFCCC44(v121, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v80 = v118;
    *(v44 + 12) = v117;
    *(v44 + 13) = v80;
    *(v44 + 14) = v119;
    *(v44 + 30) = v120;
    v81 = v114;
    *(v44 + 8) = v113;
    *(v44 + 9) = v81;
    v82 = v116;
    *(v44 + 10) = v115;
    *(v44 + 11) = v82;
    v83 = v110;
    *(v44 + 4) = v109;
    *(v44 + 5) = v83;
    v84 = v112;
    *(v44 + 6) = v111;
    *(v44 + 7) = v84;
    v85 = v106;
    *v44 = v105;
    *(v44 + 1) = v85;
    v86 = v108;
    *(v44 + 2) = v107;
    *(v44 + 3) = v86;
    *&v11[v43[16]] = 0;
    v87 = sub_1CF252CF4();
    v89 = v88;
    v90 = v93;
    sub_1CEFD52D8(v42, v93);
    v91 = &v11[v43[17]];
    *v91 = v87;
    v91[1] = v89;
    v92 = v95;
    sub_1CEFE55D0(v11, v95, &unk_1EC4BE360, &qword_1CF9FE650);
    (*(v96 + 56))(v92, 0, 1, v43);
    sub_1CF7B0EC8(v98, v92, v99, v100, v101);
    sub_1CEFCCC44(v92, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFD52D8(v102, v90);
  }
}

void sub_1CF7B4D00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, void *, void, uint64_t))
{
  v75[5] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (*(a1 + 32))
  {
    v10 = a3;
    sub_1CEFCCBDC(a1, v75, &qword_1EC4C48D8, &qword_1CFA16E68);
    v11 = sub_1CF9E6108();
    v12 = sub_1CF9E72A8();

    sub_1CEFCCC44(a1, &qword_1EC4C48D8, &qword_1CFA16E68);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412802;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2048;
      *(v13 + 14) = a4;
      *(v13 + 22) = 2112;
      swift_getErrorValue();
      v15 = v10;
      v16 = Error.prettyDescription.getter(v73, v74);
      *(v13 + 24) = v16;
      v14[1] = v16;
      _os_log_impl(&dword_1CEFC7000, v11, v12, "📖  %@: enumerating from change %llu failed: %@", v13, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v14, -1, -1);
      MEMORY[0x1D386CDC0](v13, -1, -1);
    }

    a5(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0, 0, v8);
  }

  else
  {
    v17 = *(a1 + 8);
    v18 = *(a1 + 16);
    v71 = *(a1 + 24);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v19 = a3;
    v20 = sub_1CF9E6108();
    v21 = sub_1CF9E7298();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75[0] = v24;
      *v22 = 138413570;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2048;
      *(v22 + 14) = a4;
      *(v22 + 22) = 2048;
      if (v8 >> 62)
      {
        v25 = sub_1CF9E7818();
      }

      else
      {
        v25 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v19;
      v8, v27, v28, v29, v30, v31, v32, v33;
      *(v22 + 24) = v25;
      v8, v34, v35, v36, v37, v38, v39, v40;
      *(v22 + 32) = 2048;
      if (v17 >> 62)
      {
        v48 = sub_1CF9E7818();
      }

      else
      {
        v48 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17, v41, v42, v43, v44, v45, v46, v47;
      *(v22 + 34) = v48;
      v17, v49, v50, v51, v52, v53, v54, v55;
      *(v22 + 42) = 2080;
      if (v18)
      {
        v56 = 0x6F6D20736168202CLL;
      }

      else
      {
        v56 = 0;
      }

      if (v18)
      {
        v57 = 0xEA00000000006572;
      }

      else
      {
        v57 = 0xE000000000000000;
      }

      v58 = sub_1CEFD0DF0(v56, v57, v75);
      v57, v59, v60, v61, v62, v63, v64, v65;
      *(v22 + 44) = v58;
      *(v22 + 52) = 2048;
      v66 = v71;
      *(v22 + 54) = v71;
      _os_log_impl(&dword_1CEFC7000, v20, v21, "📖  %@: enumerating from change %llu done: %ld updated, %ld deleted%s, next anchor:%llu", v22, 0x3Eu);
      sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D386CDC0](v24, -1, -1);
      MEMORY[0x1D386CDC0](v22, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v66 = v71;
    }

    v75[0] = v66;
    v67 = sub_1CF51FAD8(v75, 8uLL);
    v69 = v68;
    v70 = sub_1CF9E5B48();
    sub_1CEFE4714(v67, v69);
    a5(v8, v17, v18 & 1, v70, 0, 0);
  }
}

double sub_1CF7B5198(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void *a7)
{
  swift_beginAccess();
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF7BA994;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF7BA38C;
  *(v17 + 24) = v16;
  swift_beginAccess();
  *(a2 + 16) = sub_1CF7BA994;
  *(a2 + 24) = v17;

  v24 = ~(*(*(a1 + 16) + 80) >> 20) & 2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1CF7BA994;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a2;
  v19[6] = a1;
  v19[7] = a6;
  v19[8] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF7BA994;
  *(v20 + 24) = v18;
  sub_1CEFE42D4(a3, a4);
  v21 = a5;

  v22 = a7;

  sub_1CF7AAF88("enumerateChanges(fromToken:suggestedBatchSize:reply:)", 53, 2, v24, sub_1CF7BA384, v20, sub_1CF7BA3C8, v19);

  return result;
}

void sub_1CF7B5404(void *a1, _BOOL8 a2, unint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v329 = a5;
  v321 = a7;
  v322 = a8;
  v325 = a6;
  v326 = a1;
  v397 = *MEMORY[0x1E69E9840];
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v331 = *(v327 - 8);
  MEMORY[0x1EEE9AC00](v327);
  v328 = &v306[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v320 = &v306[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v323 = &v306[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v306[-v17];
  v19 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor;
  v344[0] = *&a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor];
  v20 = sub_1CF51FAD8(v344, 8uLL);
  v22 = v21;
  v23 = sub_1CF9E5B48();
  sub_1CEFE4714(v20, v22);
  v24 = sub_1CF9E5B88();
  v26 = v25;

  LOBYTE(a3) = sub_1CF328660(a2, a3, v24, v26);
  sub_1CEFE4714(v24, v26);
  if ((a3 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    *&a4[v19] = v344[0];
    sub_1CF7ACED8(v36, v37);
    v38 = v329;
    swift_beginAccess();
    v39 = *(v38 + 16);
    type metadata accessor for NSFileProviderError(0);
    v340[0] = -1002;

    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v40 = v341[0];
    v395[0] = v341[0];
    memset(&v395[1], 0, 24);
    v396 = 1;
    v41 = v395;
LABEL_14:
    v39(v41);

    return;
  }

  v316 = v19;
  v27 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
  v324 = &a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID];
  v28 = a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8];
  v29 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_changedItemsByID;
  v30 = 1;
  swift_beginAccess();
  v319 = v29;
  v31 = *&a4[v29];
  v32 = a4;
  if (*(v31 + 16))
  {
    v33 = sub_1CF7BF2C0(v27, v28);
    v34 = v331;
    if (v35)
    {
      sub_1CEFCCBDC(*(v31 + 56) + *v331[2]._anon_8 * v33, v18, &unk_1EC4BE360, &qword_1CF9FE650);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v42 = v329;
    v43 = v327;
  }

  else
  {
    v42 = v329;
    v43 = v327;
    v34 = v331;
  }

  v317 = *v34[1].tester;
  tester = v34[1].tester;
  v317(v18, v30, 1, v43);
  if ((*v34[1].tree)(v18, 1, v43))
  {
    sub_1CEFCCC44(v18, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v44 = v324;
  }

  else
  {
    v45 = &v18[*(v43 + 48)];
    LOBYTE(v45) = v45[*(type metadata accessor for ItemMetadata(0) + 64)];
    sub_1CEFCCC44(v18, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v44 = v324;
    if (v45)
    {
LABEL_13:
      swift_beginAccess();
      v39 = *(v42 + 16);
      type metadata accessor for NSFileProviderError(0);
      v340[0] = -1002;

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v40 = v341[0];
      v376[0] = v341[0];
      memset(&v376[1], 0, 24);
      v377 = 1;
      v41 = v376;
      goto LABEL_14;
    }
  }

  v46 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_deletedItemsIDs;
  swift_beginAccess();
  if (sub_1CF7DC52C(*v44, v44[8], *&v32[v46]))
  {
    goto LABEL_13;
  }

  v47 = v319;
  v48 = *&v32[v319];
  v49 = v330;
  if (*(v48 + 16) && (v50 = sub_1CF7BF2C0(*v324, v324[8]), (v51 & 1) != 0))
  {
    v52 = *(v48 + 56) + *v34[2]._anon_8 * v50;
    v53 = v323;
    sub_1CEFCCBDC(v52, v323, &unk_1EC4BE360, &qword_1CF9FE650);
    v317(v53, 0, 1, v327);
    sub_1CEFCCC44(v53, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v54 = v326[3];
    v55 = v326[4];
    v56 = __swift_project_boxed_opaque_existential_1(v326, v54);
    v57 = v324[8];
    v342 = *v324;
    v343 = v57;

    sub_1CF68DDB0(&v342, v56, v54, v55, v344);
    if (v49)
    {
LABEL_18:

      return;
    }

    memcpy(v340, v344, sizeof(v340));
    memcpy(v341, v344, sizeof(v341));
    v129 = sub_1CEFF755C();
    v130 = v329;
    if (v129 == 1)
    {
      v34 = v331;
      v47 = v319;
    }

    else
    {
      sub_1CEFCCC44(v340, &unk_1EC4BFC20, &unk_1CFA0A290);
      v34 = v331;
      v47 = v319;
      if ((v341[2] & 0x10) != 0)
      {
        swift_beginAccess();
        v142 = *(v130 + 16);
        type metadata accessor for NSFileProviderError(0);
        v332 = -1002;

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
        sub_1CF9E57D8();
        v143 = v333;
        v393[0] = v333;
        memset(&v393[1], 0, 24);
        v394 = 1;
        v142(v393);

        goto LABEL_18;
      }
    }
  }

  else
  {
    v58 = v323;
    v317(v323, 1, 1, v327);
    sub_1CEFCCC44(v58, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v59 = *(*&v32[v47] + 16);
  v60 = 900;
  if (v59 < 0x384)
  {
    v60 = *(*&v32[v47] + 16);
  }

  v313 = *(*&v32[v47] + 16);
  if (v59 >= v321)
  {
    v59 = v321;
  }

  if (v321 <= 900)
  {
    v61 = v59;
  }

  else
  {
    v61 = v60;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v315 = v61;
  if (Strong)
  {
    v63 = Strong;
    v64 = [Strong indexer];

    if (v64)
    {
      v65 = [v64 needsAuthentication];

      if (v65)
      {
        v66 = 9;
      }

      else
      {
        v66 = 1;
      }
    }

    else
    {
      v66 = 1;
    }

    v61 = v315;
  }

  else
  {
    v66 = 1;
  }

  v67 = *&v32[v319];

  sub_1CF8EAE58(v61, v67, &v345);
  v67, v68, v69, v70, v71, v72, v73, v74;
  v75 = v32[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_buildAndFilterAppLibraries];
  v323 = v32;
  if ((v75 & 1) == 0)
  {
    v311 = v66;
    v308 = v46;
    v81 = sub_1CF7ABB18(&v345);
    v82 = v81;
    v310 = v49;
    v330 = *(v81 + 16);
    if (v330)
    {
      v83 = 0;
      v84 = *v324;
      LODWORD(v321) = v324[8];
      v85 = v321 == 2;
      v32 = (v81 + ((v34[2].tree[0] + 32) & ~v34[2].tree[0]));
      v86 = v84 == 1 && v321 == 2;
      v312 = v86;
      v314 = v84;
      if (v84)
      {
        v85 = 0;
      }

      v307 = v85;
      KeyPath = &unk_1EC4BE360;
      do
      {
        if (v83 >= *v82->tree)
        {
          goto LABEL_155;
        }

        v88 = v328;
        sub_1CEFCCBDC(&v32[*v34[2]._anon_8 * v83], v328, &unk_1EC4BE360, &qword_1CF9FE650);
        v89 = *v88;
        v90 = *(v88 + 8);
        sub_1CEFCCC44(v88, &unk_1EC4BE360, &qword_1CF9FE650);
        if (v90)
        {
          if (v90 == 1)
          {
            if (v321 == 1 && v89 == v314)
            {
              goto LABEL_58;
            }
          }

          else if (v89)
          {
            if (v312)
            {
              goto LABEL_58;
            }
          }

          else if (v307)
          {
            goto LABEL_58;
          }
        }

        else if (!v321 && v89 == v314)
        {
LABEL_58:
          LODWORD(v328) = 0;
          goto LABEL_60;
        }

        ++v83;
        v34 = v331;
      }

      while (v330 != v83);
    }

    v83 = 0;
    LODWORD(v328) = 1;
LABEL_60:
    v309 = v82;
    v92 = v326[3];
    v91 = v326[4];
    v330 = __swift_project_boxed_opaque_existential_1(v326, v92);
    v344[0] = v82;
    v93 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4890, &qword_1CFA16E38);
    v95 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
    v96 = sub_1CEFCCCEC(&qword_1EDEA37E8, &unk_1EC4C4890, &qword_1CFA16E38, MEMORY[0x1E69E6328]);
    v97 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650, &unk_1CFA0FF08);
    v79 = v310;
    v98 = sub_1CF76CB84(v344, v311, v93, v330, v94, v92, v95, &off_1F4BF8588, v96, v91, v97);
    v82 = v79;
    if (v79)
    {
      v374 = v345;
      v375 = v346;
      sub_1CEFCCC44(&v374, &qword_1EC4C48A0, &unk_1CFA16E40);
      v372 = v347;
      v373 = v348;
      sub_1CEFCCC44(&v372, &qword_1EC4C48A0, &unk_1CFA16E40);
      v338 = v349;
      sub_1CEFCCC44(&v338, &qword_1EC4C48A8, &qword_1CFA180F0);
      v309, v106, v107, v108, v109, v110, v111, v112;
      v120 = v93;
      goto LABEL_148;
    }

    v121 = v98;
    v309, v99, v100, v101, v102, v103, v104, v105;
    v93, v122, v123, v124, v125, v126, v127, v128;
    if (v328)
    {
      v32 = v323;
      v80 = v121;
      goto LABEL_84;
    }

    v131 = v121;
    v221 = (v121 & 0xC000000000000001) == 0;
    v32 = v323;
    KeyPath = v326;
    v314 = v131;
    if (!v221)
    {
      goto LABEL_159;
    }

    if (v83 < *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v132 = *(&v131[1].super.isa + v83);
      goto LABEL_70;
    }

    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
  }

  v76 = v326[3];
  v77 = v326[4];
  v78 = __swift_project_boxed_opaque_existential_1(v326, v76);
  v79 = v49;
  v80 = sub_1CF7D633C(&v345, v325, 0xB000000000000012, v78, v76, v77);
  if (v49)
  {
    v366 = v345;
    v367 = v346;
    sub_1CEFCCC44(&v366, &qword_1EC4C48A0, &unk_1CFA16E40);
    v364 = v347;
    v365 = v348;
    sub_1CEFCCC44(&v364, &qword_1EC4C48A0, &unk_1CFA16E40);
    v336 = v349;
    sub_1CEFCCC44(&v336, &qword_1EC4C48A8, &qword_1CFA180F0);
    return;
  }

  while (2)
  {
    v314 = v80;
    v157 = v315;
    v330 = v79;
    if (v315 < v313)
    {
      v308 = v46;
      v158 = v319;
      v159 = *&v32[v319];

      v160 = sub_1CF9E77C8();
      v83 = sub_1CF7B6CF4(v160, *(v159 + 36), 0, v157, v159);
      v162 = v161;
      v82 = v163;
      v159, v161, v163, v164, v165, v166, v167, v168;
      if (v82)
      {
        __break(1u);
LABEL_164:
        swift_unexpectedError();
        __break(1u);
        return;
      }

      KeyPath = *&v32[v158];
      v169 = *(KeyPath + 9);
      if (v169 != v162)
      {
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v170 = 1 << *(KeyPath + 32);
      if (v170 < v83)
      {
        goto LABEL_157;
      }

      v388[0] = v83;
      v388[1] = v162;
      v389 = 0;
      v390 = v170;
      v391 = v169;
      v392 = 0;

      sub_1CF7ABFD0(v388, KeyPath, v350);
      v171 = v350[0];
      v172 = v350[1];
      v173 = v351;
      v174 = v352;
      v175 = v353;
      v176 = v354;
      v177 = v355;
      KeyPath, v178, v179, v180, v181, v182, v183, v184;
      v331 = v171;
      if (sub_1CF7B868C(v171, v172, v173, v174, v175, v176, v177))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B0, &unk_1CFA07B70);
        v185 = sub_1CF9E7BE8();
      }

      else
      {
        v185 = MEMORY[0x1E69E7CC8];
      }

      LOBYTE(v341[0]) = v173;
      LOBYTE(v340[0]) = v176;
      v186 = v331;
      v380[0] = v331;
      v380[1] = v172;
      v381 = v173;
      v382 = v174;
      v383 = v175;
      v384 = v176;
      v385 = v177;
      v386 = sub_1CF7B6E24;
      v387 = 0;
      v344[0] = v185;
      sub_1CF0BA900(v331, v172, v173);
      sub_1CF0BA900(v174, v175, v176);

      v187 = v330;
      sub_1CF7B7BD0(v380, 1, v344);
      v330 = v187;
      if (v187)
      {
        goto LABEL_164;
      }

      sub_1CF0663D8(v186, v172, v173, v188, v189, v190, v191, v192);
      sub_1CF0663D8(v174, v175, v176, v193, v194, v195, v196, v197);
      v177, v198, v199, v200, v201, v202, v203, v204;
      v32 = v323;
      v205 = *&v323[v319];
      *&v323[v319] = v344[0];
      v205, v206, v207, v208, v209, v210, v211, v212;
      v157 = v315;
      v46 = v308;
    }

    v213 = *&v32[v46];
    v82 = *(v213 + 16);
    v214 = MEMORY[0x1E69E7CC0];
    if (!v82)
    {
      goto LABEL_135;
    }

    v340[0] = MEMORY[0x1E69E7CC0];

    KeyPath = v340;
    sub_1CF9E7A48();
    v328 = v213 + 56;
    v215 = sub_1CF9E77C8();
    v83 = 0;
    v327 = *&v322[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID];
    v331 = *(v213 + 36);
    v320 = *MEMORY[0x1E6967280];
    v216 = *MEMORY[0x1E6967258];
    v321 = v213 + 64;
    v322 = v216;
    v324 = v82;
    do
    {
      if (v215 < 0 || v215 >= 1 << *(v213 + 32))
      {
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v217 = v215 >> 6;
      if ((*(v328 + 8 * (v215 >> 6)) & (1 << v215)) == 0)
      {
        goto LABEL_150;
      }

      if (v331 != *(v213 + 36))
      {
        goto LABEL_151;
      }

      v218 = *(v213 + 48) + 16 * v215;
      v219 = *v218;
      v220 = *(v218 + 8);
      v221 = v220 == 2 && v219 == 0;
      if (v221)
      {
        v223 = v322;
LABEL_115:
        v224 = v223;
        goto LABEL_125;
      }

      if (v220 == 2 && v219 == 1)
      {
        v223 = v320;
        goto LABEL_115;
      }

      v344[0] = 0x2F73662F70665F5FLL;
      v344[1] = 0xE800000000000000;
      if (v220)
      {
        if (v220 != 1)
        {
          if (v219)
          {
            v235 = 0x6873617274;
          }

          else
          {
            v235 = 1953460082;
          }

          if (v219)
          {
            v236 = 0xE500000000000000;
          }

          else
          {
            v236 = 0xE400000000000000;
          }

          goto LABEL_124;
        }

        v341[0] = 0x284449656C6966;
        v341[1] = 0xE700000000000000;
        v339[0] = v219;
      }

      else
      {
        v341[0] = 0x284449636F64;
        v341[1] = 0xE600000000000000;
        LODWORD(v339[0]) = v219;
      }

      v225 = sub_1CF9E7F98();
      v227 = v226;
      MEMORY[0x1D3868CC0](v225);
      v227, v228, v229, v230, v231, v232, v233, v234;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v235 = v341[0];
      v236 = v341[1];
LABEL_124:
      MEMORY[0x1D3868CC0](v235, v236);
      v236, v237, v238, v239, v240, v241, v242, v243;
      v244 = v344[1];
      v224 = sub_1CF9E6888();
      v244, v245, v246, v247, v248, v249, v250, v251;
LABEL_125:
      v252 = objc_allocWithZone(MEMORY[0x1E69673A0]);
      v82 = [v252 initWithProviderDomainID:v327 itemIdentifier:v224];

      sub_1CF9E7A18();
      v32 = *(v340[0] + 16);
      sub_1CF9E7A58();
      sub_1CF9E7A68();
      sub_1CF9E7A28();
      KeyPath = (1 << *(v213 + 32));
      if (v215 >= KeyPath)
      {
        goto LABEL_152;
      }

      v260 = *(v328 + 8 * v217);
      if ((v260 & (1 << v215)) == 0)
      {
        goto LABEL_153;
      }

      if (v331 != *(v213 + 36))
      {
        goto LABEL_154;
      }

      v261 = v260 & (-2 << (v215 & 0x3F));
      if (v261)
      {
        KeyPath = (__clz(__rbit64(v261)) | v215 & 0x7FFFFFFFFFFFFFC0);
        v32 = v323;
      }

      else
      {
        v82 = (v217 << 6);
        v262 = v217 + 1;
        v263 = (v321 + 8 * v217);
        v32 = v323;
        while (v262 < (KeyPath + 63) >> 6)
        {
          v265 = *v263++;
          v264 = v265;
          v82 += 2;
          ++v262;
          if (v265)
          {
            sub_1CF0663D8(v215, v331, 0, v255, v256, v257, v258, v259);
            KeyPath = (&v82->super.isa + __clz(__rbit64(v264)));
            goto LABEL_97;
          }
        }

        sub_1CF0663D8(v215, v331, 0, v255, v256, v257, v258, v259);
      }

LABEL_97:
      ++v83;
      v215 = KeyPath;
    }

    while (v83 != v324);
    v213, v253, v254, v255, v256, v257, v258, v259;
    v214 = v340[0];
    v157 = v315;
LABEL_135:
    v266 = v330;
    if (v157 >= v313)
    {
      goto LABEL_143;
    }

    v82 = *&v32[v316];
    KeyPath = swift_getKeyPath();
    v83 = swift_getKeyPath();
    sub_1CF9E6298();

    if (!v344[0])
    {
LABEL_158:
      __break(1u);
LABEL_159:
      v132 = MEMORY[0x1D3869C30](v83);
LABEL_70:
      v330 = v132;
      v133 = KeyPath[3];
      v134 = KeyPath[4];
      v135 = __swift_project_boxed_opaque_existential_1(KeyPath, v133);
      v136 = *&v32[v319];
      if (*(v136 + 16) && (v137 = sub_1CF7BF2C0(*v324, v324[8]), (v138 & 1) != 0))
      {
        v139 = *(v136 + 56) + *v331[2]._anon_8 * v137;
        v140 = v320;
        sub_1CEFCCBDC(v139, v320, &unk_1EC4BE360, &qword_1CF9FE650);
        v141 = 0;
      }

      else
      {
        v141 = 1;
        v140 = v320;
      }

      v317(v140, v141, 1, v327);
      v144 = v330;
      v79 = v82;
      sub_1CF7D5E20(v330, v140, v325, v135, v133, v134);
      v146 = v140;
      if (v82)
      {
        sub_1CEFCCC44(v140, &qword_1EC4C1B40, &unk_1CF9FCB70);

        v370 = v345;
        v371 = v346;
        sub_1CEFCCC44(&v370, &qword_1EC4C48A0, &unk_1CFA16E40);
        v368 = v347;
        v369 = v348;
        sub_1CEFCCC44(&v368, &qword_1EC4C48A0, &unk_1CFA16E40);
        v337 = v349;
        sub_1CEFCCC44(&v337, &qword_1EC4C48A8, &qword_1CFA180F0);
        v314, v147, v148, v149, v150, v151, v152, v153;
        return;
      }

      v154 = v145;
      sub_1CEFCCC44(v146, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v155 = v314;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v155 < 0 || (v155 & 0x4000000000000000) != 0)
      {
        v155 = sub_1CF067780();
      }

      if (v83 >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_162;
      }

      v156 = *((v155 & 0xFFFFFFFFFFFFFF8) + 8 * v83 + 0x20);
      *((v155 & 0xFFFFFFFFFFFFFF8) + 8 * v83 + 0x20) = v154;

      v80 = v155;
LABEL_84:
      v46 = v308;
      continue;
    }

    break;
  }

  if (v82 != (v344[0] - 1))
  {
    goto LABEL_140;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v269 = sub_1CF9E6288();
  if (*v270 == -1)
  {
    goto LABEL_161;
  }

  ++*v270;
  v269(v344, 0);

LABEL_140:
  v271 = v316;
  v272 = *&v32[v316];
  v273 = __CFADD__(v272, 1);
  v274 = v272 + 1;
  if (v273)
  {
    __break(1u);
LABEL_143:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    v274 = v344[0];
    v271 = v316;
  }

  *&v32[v271] = v274;
  sub_1CF7ACED8(v267, v268);
  v275 = v326[3];
  v276 = v326[4];
  v277 = __swift_project_boxed_opaque_existential_1(v326, v275);
  v278 = sub_1CF7B9A90(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v279 = v314;
  sub_1CF764128(v314, v277, v275, v278, &off_1F4BF8588, v276);
  if (v266)
  {
    v214, v280, v281, v282, v283, v284, v285, v286;
    v362 = v345;
    v363 = v346;
    sub_1CEFCCC44(&v362, &qword_1EC4C48A0, &unk_1CFA16E40);
    v360 = v347;
    v361 = v348;
    sub_1CEFCCC44(&v360, &qword_1EC4C48A0, &unk_1CFA16E40);
    v335 = v349;
    v287 = &v335;
  }

  else
  {
    v288 = v315 < v313;
    v289 = v329;
    swift_beginAccess();
    v290 = *&v32[v316];
    v291 = *(v289 + 16);
    v378[0] = v279;
    v378[1] = v214;
    v378[2] = v288;
    v378[3] = v290;
    v379 = 0;

    v291(v378);

    v214, v292, v293, v294, v295, v296, v297, v298;
    v279, v299, v300, v301, v302, v303, v304, v305;
    v358 = v345;
    v359 = v346;
    sub_1CEFCCC44(&v358, &qword_1EC4C48A0, &unk_1CFA16E40);
    v356 = v347;
    v357 = v348;
    sub_1CEFCCC44(&v356, &qword_1EC4C48A0, &unk_1CFA16E40);
    v334 = v349;
    v287 = &v334;
  }

  sub_1CEFCCC44(v287, &qword_1EC4C48A8, &qword_1CFA180F0);
  v120 = v279;
LABEL_148:
  v120, v113, v114, v115, v116, v117, v118, v119;
}

uint64_t sub_1CF7B6BBC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_1CF0BA900(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if (result < 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7B6CF4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v16 = result;
      sub_1CF0BA900(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7B6E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60) + 48);
  sub_1CEFCCBDC(a1, v10, &qword_1EC4C48B8, &unk_1CFA180E0);
  v12 = v10[8];
  v13 = *(v5 + 56);
  *a2 = *v10;
  *(a2 + 8) = v12;
  sub_1CEFCCBDC(a1, v7, &qword_1EC4C48B8, &unk_1CFA180E0);
  sub_1CEFE55D0(&v7[*(v5 + 56)], a2 + v11, &unk_1EC4BE360, &qword_1CF9FE650);
  return sub_1CEFCCC44(&v10[v13], &unk_1EC4BE360, &qword_1CF9FE650);
}

void sub_1CF7B70D4(uint64_t a1)
{
  v3 = sub_1CF9E64A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if ((*(v7 + 82) & 0x20) != 0 && (v8 = *(v7 + qword_1EC4EBCD8)) != 0)
  {
    v9 = *(v7 + qword_1EC4EBCD8 + 8);
    sub_1CF1FD6B8(*(v7 + qword_1EC4EBCD8), v9);
    v10 = v9;
    sub_1CF1FD6F8(v8, v9);
  }

  else
  {
    v10 = *(v7 + 64);
  }

  *v6 = v10;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v11 = v10;
  v12 = sub_1CF9E64D8();
  (*(v4 + 8))(v6, v3);
  if (v12)
  {
    v13 = v1;
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E7298();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "📖  reset stream for %@", v16, 0xCu);
      sub_1CEFCCC44(v17, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v17, -1, -1);
      MEMORY[0x1D386CDC0](v16, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1CF9E6298();

    if (v25 != -1)
    {
      v21 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor;
      *&v13[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_previousAnchor] = v25 + 1;
      sub_1CF7ACED8(v19, v20);
      v22 = *&v13[v21];
      swift_getKeyPath();
      swift_getKeyPath();
      v25 = v22;
      v23 = v13;
      sub_1CF9E62A8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1CF7B73C0(uint64_t a1, void *a2)
{
  v4 = sub_1CF9E6108();
  v5 = sub_1CF9E7298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1CEFC7000, v4, v5, "📖  requested to reset stream", v6, 2u);
    MEMORY[0x1D386CDC0](v6, -1, -1);
  }

  v7 = ~(*(*(a1 + 16) + 80) >> 20) & 2;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  v9 = a2;

  sub_1CF7AAF88("reset()", 7, 2, v7, nullsub_1, 0, sub_1CF7B7984, v8);

  return result;
}

uint64_t sub_1CF7B7568()
{
  sub_1CF9E7948();
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v39 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
  LOBYTE(v40) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8);
  v9 = VFSItemID.description.getter(v8);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  MEMORY[0x1D3868CC0](0x7473657571657220, 0xED00003A79426465);
  [*(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_lifetimeExtender) requestEffectivePID];
  v19 = sub_1CF9E7F98();
  v21 = v20;
  MEMORY[0x1D3868CC0](v19);
  v21, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0x7365725073616820, 0xEE003A7265746E65);
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator))
  {
    v29 = 7562617;
  }

  else
  {
    v29 = 28526;
  }

  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator))
  {
    v30 = 0xE300000000000000;
  }

  else
  {
    v30 = 0xE200000000000000;
  }

  MEMORY[0x1D3868CC0](v29, v30);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A736670663CLL;
}

void sub_1CF7B771C(uint64_t a1)
{
  sub_1CF9E6118();
  if (v1 <= 0x3F)
  {
    sub_1CF7B7850();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CF7B7850()
{
  if (!qword_1EDEAEDF8)
  {
    v0 = sub_1CF9E62B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAEDF8);
    }
  }
}

double sub_1CF7B78B0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = v0;
    sub_1CEFD4024("reset()", 7, 2, nullsub_1, 0, sub_1CF7B797C, v4);
  }

  return result;
}

void sub_1CF7B79B4(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1CF9E6298();

  *a3 = v4;
}

uint64_t sub_1CF7B7A34(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1CF9E62A8();
}

uint64_t sub_1CF7B7ABC()
{
  v1 = *(type metadata accessor for Signpost(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = (v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7AC0B4(v0 + v2, *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 55) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 71) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 71) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF7B7BA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1CF7B7BD0(uint64_t a1, char a2, void *a3)
{
  v138 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v134 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v122 = &v115 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48B8, &unk_1CFA180E0);
  v7 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v125 = (&v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v116 = (&v115 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48C0, &qword_1CFA16E50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v135 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v115 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C48C8, &qword_1CFA16E58);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = &v115 - v17;
  v18 = *(a1 + 8);
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  v21 = *(a1 + 40);
  v148[0] = *a1;
  v148[1] = v18;
  v22 = *(a1 + 16);
  v149 = v22;
  v131 = v20;
  v146[0] = v20;
  v146[1] = v19;
  v132 = v19;
  v147 = v21;
  v23 = *(a1 + 48);
  v117 = *(a1 + 56);
  v150 = v23;
  v24 = *(a1 + 64);
  v145 = v22;
  v130 = v21;
  v144 = v21;
  v121 = v148[0];
  v120 = v18;
  sub_1CF0BA900(v148[0], v18, v22 & 1);
  sub_1CEFCCBDC(v148, v142, &qword_1EC4C48A0, &unk_1CFA16E40);
  v25 = v23;
  sub_1CEFCCBDC(v146, v142, &qword_1EC4C48A0, &unk_1CFA16E40);
  sub_1CEFCCBDC(&v150, v142, &qword_1EC4C48A8, &qword_1CFA180F0);
  v119 = v24;

  if ((v22 & 1) == 0 && (v130 & 1) == 0)
  {
    v124 = v23 + 2;
    v127 = (v7 + 56);
    v126 = (v7 + 48);
    v26 = &qword_1CF9FE650;
    v27 = v121;
    v118 = v121;
    isa_high = v120;
    v133 = v15;
    v123 = v23;
    do
    {
      if (isa_high != v132)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
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
        __break(1u);
LABEL_41:
        __break(1u);
        break;
      }

      v28 = v131;
      if (v27 == v131)
      {
        v29 = v129;
        (*v127)(v15, 1, 1, v129);
        v137 = v28;
      }

      else
      {
        v29 = v129;
        if (v27 < v121)
        {
          goto LABEL_36;
        }

        if (v132 != v120)
        {
          goto LABEL_37;
        }

        if (v27 >= v131)
        {
          goto LABEL_38;
        }

        if (v27 < 0 || v27 >= -(-1 << LOBYTE(v25[1].super.isa)))
        {
          goto LABEL_39;
        }

        if (((*(&v124->super.isa + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (HIDWORD(v25[1].super.isa) != v132)
        {
          goto LABEL_41;
        }

        v30 = *(v129 + 48);
        v31 = *v25[1].tester;
        v32 = *v25[1].tree + 16 * v27;
        v33 = *v32;
        LOBYTE(v32) = *(v32 + 8);
        v34 = a2;
        v35 = v125;
        *v125 = v33;
        *(v35 + 8) = v32;
        v36 = v26;
        sub_1CEFCCBDC(v31 + *(v134 + 72) * v27, v35 + v30, &unk_1EC4BE360, v26);
        v37 = *(v35 + 8);
        v38 = v116;
        *v116 = *v35;
        *(v38 + 8) = v37;
        v39 = v35 + v30;
        a2 = v34;
        v15 = v133;
        sub_1CEFE55D0(v39, v38 + *(v29 + 48), &unk_1EC4BE360, v26);
        sub_1CEFE55D0(v38, v15, &qword_1EC4C48B8, &unk_1CFA180E0);
        v40 = sub_1CF9E77E8();
        isa_high = HIDWORD(v123[1].super.isa);
        (*v127)(v15, 0, 1, v29);
        v118 = v40;
        v137 = v40;
        v26 = v36;
        v25 = v123;
      }

      v41 = v135;
      sub_1CEFE55D0(v15, v135, &qword_1EC4C48C0, &qword_1CFA16E50);
      v42 = 1;
      v43 = (*v126)(v41, 1, v29);
      v44 = v128;
      if (v43 != 1)
      {
        v45 = v125;
        sub_1CEFE55D0(v135, v125, &qword_1EC4C48B8, &unk_1CFA180E0);
        v117(v45);
        sub_1CEFCCC44(v45, &qword_1EC4C48B8, &unk_1CFA180E0);
        v42 = 0;
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60);
      (*(*(v46 - 8) + 56))(v44, v42, 1, v46);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0CD0, &qword_1CFA16E60);
      if ((*(*(v47 - 8) + 48))(v44, 1, v47) == 1)
      {
        sub_1CF0663D8(v121, v120, 0, v48, v49, v50, v51, v52);
        sub_1CF0663D8(v131, v132, 0, v98, v99, v100, v101, v102);
        v25, v103, v104, v105, v106, v107, v108, v109;
        sub_1CF0663D8(v118, isa_high, 0, v110, v111, v112, v113, v114);

        sub_1CEFCCC44(v148, &qword_1EC4C48A0, &unk_1CFA16E40);
        sub_1CEFCCC44(&v150, &qword_1EC4C48A8, &qword_1CFA180F0);

        return;
      }

      v53 = v25;
      v54 = *(v47 + 48);
      v56 = v44[8];
      v140 = *v44;
      v55 = v140;
      v141 = v56;
      v57 = v122;
      sub_1CEFE55D0(&v44[v54], v122, &unk_1EC4BE360, v26);
      v58 = *v138;
      v60 = sub_1CF7BF2C0(v55, v56);
      v61 = v58[2];
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_34;
      }

      v64 = v59;
      if (v58[3] >= v63)
      {
        if (a2)
        {
          if (v59)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1CF7D2BF0();
          if (v64)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        sub_1CF7CAEE8(v63, a2 & 1);
        v65 = sub_1CF7BF2C0(v55, v56);
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_43;
        }

        v60 = v65;
        if (v64)
        {
LABEL_29:
          v143 = 0;
          v72 = swift_allocError();
          swift_willThrow();
          sub_1CEFCCC44(v148, &qword_1EC4C48A0, &unk_1CFA16E40);
          sub_1CEFCCC44(&v150, &qword_1EC4C48A8, &qword_1CFA180F0);

          v139 = v72;
          v73 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          if (swift_dynamicCast())
          {
            goto LABEL_44;
          }

          sub_1CEFCCC44(v57, &unk_1EC4BE360, &qword_1CF9FE650);
          v74 = v144;
          v75 = v143;
          sub_1CF0663D8(v121, v120, v145, v76, v77, v78, v79, v80);
          sub_1CF0663D8(v131, v132, v74, v81, v82, v83, v84, v85);
          v53, v86, v87, v88, v89, v90, v91, v92;
          sub_1CF0663D8(v118, isa_high, v75, v93, v94, v95, v96, v97);

          return;
        }
      }

      v67 = *v138;
      *(*v138 + 8 * (v60 >> 6) + 64) |= 1 << v60;
      v68 = v67[6] + 16 * v60;
      *v68 = v55;
      *(v68 + 8) = v56;
      sub_1CEFE55D0(v57, v67[7] + *(v134 + 72) * v60, &unk_1EC4BE360, v26);
      v69 = v67[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_35;
      }

      v67[2] = v71;
      a2 = 1;
      v25 = v53;
      v15 = v133;
      v27 = v137;
    }

    while ((v130 & 1) == 0);
  }

  __break(1u);
LABEL_43:
  sub_1CF9E8108();
  __break(1u);
LABEL_44:
  v142[0] = 0;
  v142[1] = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA3DF20);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](39, 0xE100000000000000);
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF7B868C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_30;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a5 != a2)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      if (a5 != a2)
      {
        goto LABEL_26;
      }

      v9 = v7 >> 6;
      v10 = *(a7 + 64 + 8 * (v7 >> 6));
      if ((v10 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 72 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_21;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_21:
      if (v7 == a4)
      {
        return result;
      }

      a2 = a5;
      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_1CF7B87B0(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1CF9E5B88();
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      if (BYTE6(v2) != 8)
      {
        goto LABEL_11;
      }

LABEL_8:
      v11[0] = 0;
      v8 = v1;
      v9 = v2;
      sub_1CF7ACD74(v11, 1, 0, 0, 1, v1, v2);
      sub_1CEFE4714(v8, v9);
      return v11[0];
    }

    if (!__OFSUB__(HIDWORD(v1), v1))
    {
      if (HIDWORD(v1) - v1 == 8)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_13:
    __break(1u);
  }

  if (v3 != 2)
  {
    goto LABEL_11;
  }

  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = __OFSUB__(v4, v5);
  v7 = v4 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 == 8)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1CEFE4714(v1, v2);
  return 0;
}

void sub_1CF7B88B0(char *a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated;
  _Block_copy(a2);
  if ((a1[v5] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v12 = sub_1CF9E57E8();
    (a2)[2](a2, 0, v12);
  }

  else
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1CEFFA830;
    *(v8 + 24) = v4;
    v9 = swift_allocObject();
    v9[2] = sub_1CEFFA830;
    v9[3] = v4;
    v9[4] = a1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1CF7BA918;
    *(v10 + 24) = v8;
    swift_retain_n();
    v11 = a1;

    sub_1CEFD4024("currentSyncAnchor(completion:)", 30, 2, sub_1CF7BA950, v10, sub_1CF7BA944, v9);
  }
}

double sub_1CF7B8B00(void *a1, unint64_t a2, uint64_t a3, char *a4, const void *a5)
{
  v137 = a2;
  v138 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v135 = *(v8 - 8);
  v136 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v140 = (&v131 - v9);
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v133 = v12;
  v134 = (&v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v146 = &v131 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  v141 = a5;
  _Block_copy(a5);
  if (qword_1EDEAB5F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1CF9E5B88();
  v18 = v17;
  v19 = sub_1CF9E5B88();
  v21 = v20;
  v22 = sub_1CF328660(v16, v18, v19, v20);
  sub_1CEFE4714(v19, v21);
  sub_1CEFE4714(v16, v18);
  if (v22)
  {
    goto LABEL_7;
  }

  if (qword_1EDEAB5E8 != -1)
  {
    swift_once();
  }

  v23 = sub_1CF9E5B88();
  v25 = v24;
  v26 = sub_1CF9E5B88();
  v28 = v27;
  v29 = sub_1CF328660(v23, v25, v26, v27);
  sub_1CEFE4714(v26, v28);
  sub_1CEFE4714(v23, v25);
  if (v29)
  {
LABEL_7:
    v30 = 0;
  }

  else
  {
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    type metadata accessor for PaginatedContinuation();
    v51 = sub_1CF9E5B88();
    v53 = v52;
    sub_1CF7B9A90(&unk_1EC4C4810, type metadata accessor for PaginatedContinuation, &unk_1CFA18F1C);
    sub_1CF9E5668();

    sub_1CEFE4714(v51, v53);
    v30 = v148;
  }

  v143 = v11;
  v132 = *(v11 + 16);
  v132(v146, &a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v10);

  v31 = a4;
  v32 = sub_1CF9E6108();
  v33 = sub_1CF9E7298();

  v34 = os_log_type_enabled(v32, v33);
  v144 = v15;
  v145 = v10;
  v142 = v30;
  if (v34)
  {
    v139 = a1;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v150[0] = v37;
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2080;
    if (v30)
    {
      v148 = 979789423;
      v149 = 0xE400000000000000;
      v147 = *(v30 + 16);
      v38 = v31;
      v39 = sub_1CF9E7F98();
      v41 = v40;
      MEMORY[0x1D3868CC0](v39);

      v41, v42, v43, v44, v45, v46, v47, v48;
      v49 = v148;
      v50 = v149;
    }

    else
    {
      v49 = 0x6C616974696E693CLL;
      v54 = v31;
      v50 = 0xE90000000000003ELL;
    }

    v55 = sub_1CEFD0DF0(v49, v50, v150);
    v50, v56, v57, v58, v59, v60, v61, v62;
    *(v35 + 14) = v55;
    _os_log_impl(&dword_1CEFC7000, v32, v33, "📖  %@: enumerating page %s", v35, 0x16u);
    sub_1CEFCCC44(v36, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v36, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    MEMORY[0x1D386CDC0](v35, -1, -1);

    v10 = v145;
    v30 = v142;
    a1 = v139;
  }

  else
  {
  }

  if ((v31[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated] & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    type metadata accessor for NSFileProviderError(0);
    v150[0] = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v91 = v148;
    v92 = v31;

    v93 = v91;
    v94 = sub_1CF9E6108();
    v95 = sub_1CF9E72A8();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v150[0] = v140;
      *v96 = 138412802;
      *(v96 + 4) = v92;
      *v97 = v92;
      *(v96 + 12) = 2080;
      if (v30)
      {
        v148 = 979789423;
        v149 = 0xE400000000000000;
        v147 = *(v30 + 16);
        v98 = v92;
        v99 = sub_1CF9E7F98();
        v101 = v100;
        MEMORY[0x1D3868CC0](v99);
        v101, v102, v103, v104, v105, v106, v107, v108;
        v109 = v148;
        v110 = v149;
      }

      else
      {
        v109 = 0x6C616974696E693CLL;
        v111 = v92;
        v110 = 0xE90000000000003ELL;
      }

      v112 = sub_1CEFD0DF0(v109, v110, v150);
      v110, v113, v114, v115, v116, v117, v118, v119;
      *(v96 + 14) = v112;
      *(v96 + 22) = 2112;
      v148 = v93;
      sub_1CF7B9A90(&qword_1EDEAB6A0, type metadata accessor for NSFileProviderError, &unk_1CF9F62F0);
      v120 = v93;
      v121 = sub_1CF9E7FB8();
      if (v121)
      {
        v122 = v121;
      }

      else
      {
        v122 = swift_allocError();
        *v123 = v120;
      }

      v10 = v145;
      v124 = sub_1CF9E57E8();

      v125 = [v124 fp_prettyDescription];
      *(v96 + 24) = v125;
      v97[1] = v125;
      _os_log_impl(&dword_1CEFC7000, v94, v95, "📖  %@: enumerating page %s failed: %@", v96, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v97, -1, -1);
      v126 = v140;
      __swift_destroy_boxed_opaque_existential_1(v140);
      MEMORY[0x1D386CDC0](v126, -1, -1);
      MEMORY[0x1D386CDC0](v96, -1, -1);
    }

    else
    {
    }

    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v127 = v93;
    v128 = sub_1CF9E6D28();
    v129 = sub_1CF9E57E8();
    (*(v141 + 2))(v141, v128, 0, 0, 0, v129);

    (*(v143 + 8))(v146, v10);
  }

  else
  {
    v64 = v10;
    v65 = Strong;
    v131 = Strong;
    v141 = swift_allocObject();
    v66 = v134;
    v132(v134, v146, v64);
    v67 = v143;
    v68 = (*(v143 + 80) + 24) & ~*(v143 + 80);
    v69 = (v133 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v139 = a1;
    v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    *(v71 + 16) = v65;
    (*(v67 + 32))(v71 + v68, v66, v145);
    *(v71 + v69) = v31;
    *(v71 + v70) = v30;
    v72 = (v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8));
    v133 = sub_1CF7BA3F0;
    v73 = v144;
    *v72 = sub_1CF7BA3F0;
    v72[1] = v73;
    v134 = sub_1CF7BA990;
    v74 = v140;
    v75 = v141;
    *(v141 + 2) = sub_1CF7BA990;
    v75[3] = v71;
    sub_1CEFCCBDC(v137, v74, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v76 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v137 = (v136 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    *(v80 + 16) = v141;
    *(v80 + 24) = v30;
    sub_1CEFE55D0(v140, v80 + v76, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v81 = v138;
    *(v80 + v137) = v31;
    v82 = v139;
    *(v80 + v77) = v139;
    *(v80 + v78) = v81;
    v83 = (v80 + v79);
    v84 = v144;
    *v83 = v133;
    v83[1] = v84;
    v85 = v131;
    *(v80 + ((v79 + 23) & 0xFFFFFFFFFFFFFFF8)) = v131;
    v86 = v31;
    swift_retain_n();
    swift_retain_n();
    v87 = v85;
    swift_retain_n();
    v88 = v86;
    v89 = v87;

    v90 = v82;
    sub_1CF8E9FF4("enumerateItems(fromPage:selfItem:suggestedPageSize:reply:)", 58, 2, sub_1CF7BA9C4, v80, v89, v134, v71);

    (*(v143 + 8))(v146, v145);
  }

  return result;
}

uint64_t sub_1CF7B9764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = a4 & 1;
  return v5(v7);
}

void sub_1CF7B97E0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF7B2A4C(a1, *(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF7B9940(_TtC18FileProviderDaemon8FSTester *a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a4)
  {
  }

  else
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
  }

  return result;
}

void sub_1CF7B998C()
{
  v1 = *(sub_1CF9E6118() - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF7B1ED0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1CF7B9A40(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v5 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1CF7B9A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF7B9B18(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Signpost(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

double sub_1CF7B9C10(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, void (**a5)(void, void, void, void, void, void, void))
{
  v58 = a3;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  _Block_copy(a5);
  v59 = a1;
  v60 = a2;
  v17 = sub_1CF9E5B48();
  v63 = sub_1CF7B87B0(v17);
  LOBYTE(a1) = v18;

  if (a1)
  {
    type metadata accessor for NSFileProviderError(0);
    v64 = -1002;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
    sub_1CF9E57D8();
    v19 = v65[0];
    sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
    v20 = sub_1CF9E6D28();
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    v21 = sub_1CF9E6D28();
    v22 = sub_1CF9E57E8();
    (a5)[2](a5, v20, v21, 0, 0, 0, v22);
  }

  else
  {
    v61 = v10;
    v62 = v16;
    v24 = *(v10 + 16);
    v57 = v9;
    v24(v15, &a4[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_logger], v9);
    v25 = a4;
    v26 = sub_1CF9E6108();
    v27 = sub_1CF9E7298();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = v24;
      v30 = swift_slowAlloc();
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v30 = v25;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v63;
      v31 = v25;
      _os_log_impl(&dword_1CEFC7000, v26, v27, "📖  %@: enumerating from change %llu", v28, 0x16u);
      sub_1CEFCCC44(v30, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v32 = v30;
      v24 = v29;
      MEMORY[0x1D386CDC0](v32, -1, -1);
      MEMORY[0x1D386CDC0](v28, -1, -1);
    }

    v33 = swift_allocObject();
    v56 = v15;
    v34 = v57;
    v24(v12, v15, v57);
    v35 = v61;
    v36 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v37 = (v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    (*(v35 + 32))(v39 + v36, v12, v34);
    *(v39 + v37) = v25;
    v40 = v62;
    *(v39 + v38) = v63;
    v41 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v41 = sub_1CF7BA270;
    v41[1] = v40;
    v42 = sub_1CF7BA278;
    *(v33 + 16) = sub_1CF7BA278;
    *(v33 + 24) = v39;
    LOBYTE(v36) = v25[OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_invalidated];
    v43 = v25;

    if ((v36 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong(), v42 = *(v33 + 16), v45 = *(v33 + 24), !Strong))
    {
      type metadata accessor for NSFileProviderError(0);
      v65[0] = -1002;

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF7B9A90(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError, &unk_1CF9F7718);
      sub_1CF9E57D8();
      v55 = v64;
      v65[0] = v64;
      memset(&v65[1], 0, 24);
      v66 = 1;
      v42(v65);

      (*(v61 + 8))(v56, v34);
    }

    else
    {
      v46 = Strong;
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v47 + 24) = v45;
      v48 = swift_allocObject();
      v50 = v59;
      v49 = v60;
      v48[2] = v33;
      v48[3] = v50;
      v48[4] = v49;
      v48[5] = v43;
      v48[6] = v58;
      v48[7] = v46;
      v51 = v34;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1CF7BA330;
      *(v52 + 24) = v47;
      v53 = v43;

      sub_1CEFE42D4(v50, v49);
      v54 = v46;

      sub_1CEFD4024("enumerateChanges(fromToken:suggestedBatchSize:reply:)", 53, 2, sub_1CF7BA384, v52, sub_1CF7BA374, v48);

      (*(v61 + 8))(v56, v51);
    }
  }

  return result;
}

void sub_1CF7BA278(uint64_t a1)
{
  v3 = *(sub_1CF9E6118() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CF7B4D00(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_1CF7BA330(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

void sub_1CF7BA38C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v5;
  v7 = *(a1 + 32);
  sub_1CF9189D8(v6, v2, v3, v4);
}

double sub_1CF7BA3F8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(sub_1CF9E6118() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7B1A7C(a1, a2, a3, a4 & 1, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_77Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v161 = (v2 + 32) & ~v2;
    v5[8], v7, v8, v9, v10, v11, v12, v13;
    v5[12], v14, v15, v16, v17, v18, v19, v20;
    v5[13], v21, v22, v23, v24, v25, v26, v27;
    v5[15], v28, v29, v30, v31, v32, v33, v34;
    v5[17], v35, v36, v37, v38, v39, v40, v41;
    v42 = v5 + v6[12];
    v43 = type metadata accessor for ItemMetadata(0);
    v44 = v43[7];
    v45 = sub_1CF9E5CF8();
    v46 = *(v45 - 8);
    v47 = *(v46 + 8);
    v47(&v42[v44], v45);
    v47(&v42[v43[8]], v45);
    *&v42[v43[14] + 8], v48, v49, v50, v51, v52, v53, v54;
    v55 = v43[30];
    if (!(*(v46 + 48))(&v42[v55], 1, v45))
    {
      v47(&v42[v55], v45);
    }

    *&v42[v43[31]], v56, v57, v58, v59, v60, v61, v62;
    *&v42[v43[33]], v63, v64, v65, v66, v67, v68, v69;
    v76 = &v42[v43[34]];
    v77 = v76[1];
    if (v77 >> 60 != 15)
    {
      sub_1CEFE4714(*v76, v77);
    }

    *&v42[v43[38] + 8], v77, v70, v71, v72, v73, v74, v75;
    v78 = v5 + v6[13];
    v79 = *(v78 + 2);
    if (v79 != 1)
    {

      *(v78 + 6), v80, v81, v82, v83, v84, v85, v86;
      *(v78 + 8), v87, v88, v89, v90, v91, v92, v93;
      *(v78 + 11), v94, v95, v96, v97, v98, v99, v100;

      *(v78 + 15), v101, v102, v103, v104, v105, v106, v107;
      *(v78 + 17), v108, v109, v110, v111, v112, v113, v114;
      *(v78 + 19), v115, v116, v117, v118, v119, v120, v121;
      *(v78 + 21), v122, v123, v124, v125, v126, v127, v128;
      *(v78 + 23), v129, v130, v131, v132, v133, v134, v135;
      v143 = *(v78 + 24);
      if (v143)
      {
        v143, v136, v137, v138, v139, v140, v141, v142;
        *(v78 + 25), v144, v145, v146, v147, v148, v149, v150;
      }

      *(v78 + 28), v136, v137, v138, v139, v140, v141, v142;
      *(v78 + 30), v151, v152, v153, v154, v155, v156, v157;
    }

    sub_1CF07638C(*(v5 + v6[17]), *(v5 + v6[17] + 8));
    v3 = v161;
  }

  v158 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v159 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

double sub_1CF7BA838(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF7B2618(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1CF7BA9CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1CEFD1104(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1CEFE9EB8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1CEFE9EB8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1CEFE9EB8(v31, v32);
    v16 = sub_1CF9E7878();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1CEFE9EB8(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1CF7BAC94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0CF0, &qword_1CFA17250);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    v12 = (*(a1 + 56) + 16 * v10);
    v13 = v12[1];
    v34 = *v12;
    v35 = v13;
    v14 = v11;

    swift_dynamicCast();
    sub_1CEFE9EB8((v36 + 8), v33);
    sub_1CEFE9EB8(v33, v36);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v16 = v15;
    sub_1CF9E81D8();
    sub_1CF9E69C8();
    v17 = sub_1CF9E8228();
    v16, v18, v19, v20, v21, v22, v23, v24;
    v25 = -1 << *(v1 + 32);
    v26 = v17 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v6 + 8 * (v26 >> 6))) == 0)
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
        v31 = *(v6 + 8 * v27);
        if (v31 != -1)
        {
          v8 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v26) & ~*(v6 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v14;
    sub_1CEFE9EB8(v36, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1CF7BAF4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1CEFD57E0(0, &qword_1EDEAB510, 0x1E69E58C0);

        v19 = v18;
        swift_dynamicCast();
        sub_1CEFE9EB8(&v32, v34);
        sub_1CEFE9EB8(v34, v35);
        sub_1CEFE9EB8(v35, &v33);
        v20 = sub_1CEFE4328(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          v9 = v8[1];
          *v8 = v17;
          v8[1] = v16;
          v10 = v20;
          v9, v21, v22, v23, v24, v25, v26, v27;
          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          sub_1CEFE9EB8(&v33, v11);
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v28 = (v2[6] + 16 * v20);
          *v28 = v17;
          v28[1] = v16;
          sub_1CEFE9EB8(&v33, (v2[7] + 32 * v20));
          v29 = v2[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_21;
          }

          v2[2] = v31;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1CF7BB1B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1CEFE9EB8(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1CEFE9EB8(v29, v30);
    v14 = sub_1CF9E7878();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_1CEFE9EB8(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1CF7BB480(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4990, &qword_1CFA17220);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *(*(a1 + 56) + 8 * v13);
        v17 = *v14;
        v16 = v14[1];
        v5 &= v5 - 1;
        v32 = MEMORY[0x1E69E6538];
        v31 = MEMORY[0x1E69E6530];
        *&v30 = v15;
        sub_1CF054EA0(&v30, v34);
        sub_1CF054EA0(v34, v35);
        sub_1CF054EA0(v35, &v33);

        v18 = sub_1CEFE4328(v17, v16);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          v9 = v8[1];
          *v8 = v17;
          v8[1] = v16;
          v10 = v18;
          v9, v19, v20, v21, v22, v23, v24, v25;
          v11 = (v2[7] + 40 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          sub_1CF054EA0(&v33, v11);
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v26 = (v2[6] + 16 * v18);
          *v26 = v17;
          v26[1] = v16;
          sub_1CF054EA0(&v33, v2[7] + 40 * v18);
          v27 = v2[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_21;
          }

          v2[2] = v29;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1CF7BB6C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_1CF1A91AC(*(a1 + 56) + 40 * v14, v38);
        *&v37 = v16;
        *(&v37 + 1) = v17;
        v34[2] = v37;
        v35[0] = v38[0];
        v35[1] = v38[1];
        v36 = v39;
        v18 = v37;
        sub_1CF054EA0(v35, v30);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4998, &qword_1CFA17228);
        swift_dynamicCast();
        sub_1CEFE9EB8(&v31, v33);
        sub_1CEFE9EB8(v33, v34);
        sub_1CEFE9EB8(v34, &v32);
        v19 = sub_1CEFE4328(v18, *(&v18 + 1));
        if (v20)
        {
          v8 = v2[6] + 16 * v19;
          v9 = *(v8 + 8);
          *v8 = v18;
          v10 = v19;
          v9, v20, v21, v22, v23, v24, v25, v26;
          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          sub_1CEFE9EB8(&v32, v11);
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
          *(v2[6] + 16 * v19) = v18;
          sub_1CEFE9EB8(&v32, (v2[7] + 32 * v19));
          v27 = v2[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_21;
          }

          v2[2] = v29;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1CF7BB964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B50, &unk_1CFA171B0);
    v1 = sub_1CF9E7BE8();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v7 << 6);
    v12 = *(a1 + 48) + 16 * v11;
    v13 = *(*(a1 + 56) + 8 * v11);
    v25 = *v12;
    v26 = *(v12 + 8);
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
    swift_dynamicCast();
    sub_1CF9E81D8();
    if (v26)
    {
      if (v26 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v25);
      }

      else
      {
        if (v25)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        MEMORY[0x1D386A470](v15);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    v16 = sub_1CF9E8228();
    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v8 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_34;
    }

    v8 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v9 = *(v1 + 48) + 16 * v8;
    *v9 = v25;
    *(v9 + 8) = v26;
    *(*(v1 + 56) + 8 * v8) = v27;
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v4)
    {
      v7 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1CF7BBC30(uint64_t a1)
{
  v42 = sub_1CF9E5CF8();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49B8, &unk_1CFA17258);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = v36 - v5;
  v44 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v6 = sub_1CF9E7BE8();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v7 = v44 + 64;
  v8 = 1 << *(v44 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v44 + 64);
  v11 = (v8 + 63) >> 6;
  v36[1] = v43 + 16;
  v36[0] = v43 + 32;
  v12 = v6 + 64;

  v13 = 0;
  v37 = v6;
  v14 = v43;
  while (v10)
  {
LABEL_15:
    v18 = __clz(__rbit64(v10)) | (v13 << 6);
    v19 = v44;
    v20 = v38;
    v21 = v42;
    (*(v14 + 16))(v38, *(v44 + 48) + *(v14 + 72) * v18, v42);
    v22 = *(*(v19 + 56) + 4 * v18);
    v23 = v40;
    *&v20[*(v40 + 48)] = v22;
    v24 = v20;
    v25 = v39;
    sub_1CEFE55D0(v24, v39, &qword_1EC4C49B8, &unk_1CFA17258);
    v26 = *(v23 + 48);
    (*(v14 + 32))(v41, v25, v21);
    swift_dynamicCast();
    LODWORD(v53) = *(v25 + v26);
    swift_dynamicCast();
    v49 = v45;
    v50 = v46;
    v51 = v47;
    sub_1CEFE9EB8(&v48, v52);
    v45 = v49;
    v46 = v50;
    v47 = v51;
    sub_1CEFE9EB8(v52, &v53);
    v27 = v37;
    v28 = sub_1CF9E7878();
    v29 = -1 << *(v27 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
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
        v35 = *(v12 + 8 * v31);
        if (v35 != -1)
        {
          v15 = __clz(__rbit64(~v35)) + (v31 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v15 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v10 &= v10 - 1;
    *(v12 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v16 = *(v27 + 48) + 40 * v15;
    *v16 = v45;
    *(v16 + 16) = v46;
    *(v16 + 32) = v47;
    sub_1CEFE9EB8(&v53, (*(v27 + 56) + 32 * v15));
    ++*(v27 + 16);
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v17);
    ++v13;
    if (v10)
    {
      v13 = v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1CF7BC108(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4930, &unk_1CFA17120);
    v4 = sub_1CF9E7BE8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = v7 + 63;
  if (v5 == MEMORY[0x1E69E6158])
  {
    v25 = v10 >> 6;

    v26 = 0;
    if (v9)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v39 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v39 >= v25)
      {
LABEL_36:

        return;
      }

      v9 = *(v6 + 8 * v39);
      ++v26;
      if (v9)
      {
        while (1)
        {
          v40 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v41 = *(*(a1 + 48) + ((v39 << 9) | (8 * v40)));

          __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
          swift_dynamicCast();
          v42 = sub_1CF7BF8D8(v41);
          if (v43)
          {
            v27 = *(v4 + 48);
            v28 = *(v27 + 8 * v42);
            *(v27 + 8 * v42) = v41;
            v29 = v42;

            v30 = *(v4 + 56);
            v31 = *(v30 + 8 * v29);
            *(v30 + 8 * v29) = v47;
            v31, v32, v33, v34, v35, v36, v37, v38;
            v26 = v39;
            if (!v9)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v44 = *(v4 + 16);
            if (v44 >= *(v4 + 24))
            {
              goto LABEL_40;
            }

            *(v4 + 64 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
            *(*(v4 + 48) + 8 * v42) = v41;
            *(*(v4 + 56) + 8 * v42) = v47;
            *(v4 + 16) = v44 + 1;
            v26 = v39;
            if (!v9)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v39 = v26;
        }
      }
    }
  }

  else
  {
    v11 = v10 >> 6;
    v12 = v4 + 64;

    v13 = 0;
    while (v9)
    {
LABEL_16:
      v16 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
      swift_dynamicCast();
      v17 = sub_1CF9E7558();
      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v14 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v14 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v9 &= v9 - 1;
      *(v12 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + 8 * v14) = v16;
      *(*(v4 + 56) + 8 * v14) = v47;
      ++*(v4 + 16);
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_36;
      }

      v9 = *(v6 + 8 * v15);
      ++v13;
      if (v9)
      {
        v13 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1CF7BC4CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B98, &unk_1CFA07A30);
    v2 = sub_1CF9E7BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v14 = *(*(a1 + 56) + v12);
    *&v32[0] = *(*(a1 + 48) + v12);
    v13 = *&v32[0];
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v15 = v13;
    v14;
    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1CEFE9EB8(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1CEFE9EB8(v31, v32);
    v16 = sub_1CF9E7878();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1CEFE9EB8(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1CF7BC790(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) != 0)
    {
      goto LABEL_7;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (a4 != 1 || a1 != a3)
        {
LABEL_28:
          sub_1CEFD0988(a1, a2, 0);
          sub_1CEFD0988(a3, a4, 0);
          v29 = a1;
          v30 = a2;
          LOBYTE(v31) = 0;
          goto LABEL_8;
        }
      }

      else if (a1)
      {
        if (a4 != 2 || a3 != 1)
        {
          goto LABEL_28;
        }
      }

      else if (a4 != 2 || a3)
      {
        goto LABEL_28;
      }
    }

    else if (a4 || a1 != a3)
    {
      goto LABEL_28;
    }

    sub_1CEFD0988(a1, a2, 0);
    sub_1CEFD0988(a3, a4, 0);
    v48 = a1;
    v49 = a2;
    v50 = 0;
    goto LABEL_27;
  }

  if ((a4 & 0x100) == 0)
  {
LABEL_7:
    sub_1CEFD0988(a1, a2, BYTE1(a2) & 1);
    sub_1CEFD0988(a3, a4, BYTE1(a4) & 1);
    sub_1CEFD0994(a1, a2, BYTE1(a2) & 1);
    v29 = a3;
    v30 = a4;
    v31 = (a4 >> 8) & 1;
    goto LABEL_8;
  }

  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v8;
  v14 = v11;
  if (v13 != v12 || v10 != v11)
  {
    v33 = sub_1CF9E8048();
    sub_1CEFD0988(a1, a2, 1);
    sub_1CEFD0988(a3, a4, 1);
    v10, v34, v35, v36, v37, v38, v39, v40;
    v14, v41, v42, v43, v44, v45, v46, v47;
    sub_1CEFD0994(a3, a4, 1);
    if (v33)
    {
      goto LABEL_15;
    }

    v29 = a1;
    v30 = a2;
    LOBYTE(v31) = 1;
LABEL_8:
    sub_1CEFD0994(v29, v30, v31);
    return 0;
  }

  sub_1CEFD0988(a1, a2, 1);
  sub_1CEFD0988(a3, a4, 1);
  v10, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  sub_1CEFD0994(a3, a4, 1);
LABEL_15:
  v48 = a1;
  v49 = a2;
  v50 = 1;
LABEL_27:
  sub_1CEFD0994(v48, v49, v50);
  return 1;
}

uint64_t sub_1CF7BC9E4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((a2 & 0x100) == 0)
  {
    if ((a4 & 0x100) == 0)
    {
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v17 = v12;
      v18 = v15;
      if (v17 == v16 && v14 == v15)
      {
        sub_1CF48034C(a1, a2, 0);
        sub_1CF48034C(a3, a4, 0);
        v14, v19, v20, v21, v22, v23, v24, v25;
        v18, v26, v27, v28, v29, v30, v31, v32;
        sub_1CF1E53F8(a3, a4, 0);
      }

      else
      {
        v33 = sub_1CF9E8048();
        sub_1CF48034C(a1, a2, 0);
        sub_1CF48034C(a3, a4, 0);
        v14, v34, v35, v36, v37, v38, v39, v40;
        v18, v41, v42, v43, v44, v45, v46, v47;
        sub_1CF1E53F8(a3, a4, 0);
        if ((v33 & 1) == 0)
        {
          v8 = a1;
          v9 = a2;
          LOBYTE(v10) = 0;
          goto LABEL_10;
        }
      }

      v48 = a1;
      v49 = a2;
      v50 = 0;
      goto LABEL_27;
    }

LABEL_9:
    sub_1CF48034C(a1, a2, BYTE1(a2) & 1);
    sub_1CF48034C(a3, a4, BYTE1(a4) & 1);
    sub_1CF1E53F8(a1, a2, BYTE1(a2) & 1);
    v8 = a3;
    v9 = a4;
    v10 = (a4 >> 8) & 1;
LABEL_10:
    sub_1CF1E53F8(v8, v9, v10);
    return 0;
  }

  if ((a4 & 0x100) == 0)
  {
    goto LABEL_9;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1 || a1 != a3)
      {
LABEL_28:
        sub_1CF48034C(a1, a2, 1);
        sub_1CF48034C(a3, a4, 1);
        v8 = a1;
        v9 = a2;
        LOBYTE(v10) = 1;
        goto LABEL_10;
      }
    }

    else if (a1)
    {
      if (a4 != 2 || a3 != 1)
      {
        goto LABEL_28;
      }
    }

    else if (a4 != 2 || a3)
    {
      goto LABEL_28;
    }
  }

  else if (a4 || a1 != a3)
  {
    goto LABEL_28;
  }

  sub_1CF48034C(a1, a2, 1);
  sub_1CF48034C(a3, a4, 1);
  v48 = a1;
  v49 = a2;
  v50 = 1;
LABEL_27:
  sub_1CF1E53F8(v48, v49, v50);
  return 1;
}

BOOL sub_1CF7BCC38(void *a1, void *a2, void *a3, unsigned __int8 a4, unint64_t a5, unint64_t a6, unint64_t a7, unsigned __int8 a8)
{
  if (a4 <= 3u)
  {
    if (a4 <= 1u)
    {
      if (!a4)
      {
        if (!a8)
        {
          v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v16 = v15;
          v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v19 = v14;
          v20 = v17;
          if (v19 == v18 && v16 == v17)
          {
            sub_1CF1FB2C0(a5, a6, a7, 0);
            v21 = a1;
            v22 = a1;
            v23 = a2;
            v24 = a3;
            v25 = 0;
LABEL_32:
            sub_1CF1FB2C0(v22, v23, v24, v25);

            v16, v123, v124, v125, v126, v127, v128, v129;
            v137 = v20;
LABEL_64:
            v137, v130, v131, v132, v133, v134, v135, v136;
            return 1;
          }

          v260 = sub_1CF9E8048();
          sub_1CF1FB2C0(a5, a6, a7, 0);
          v261 = a1;
          v262 = a1;
          v263 = a2;
          v264 = a3;
          v265 = 0;
LABEL_59:
          sub_1CF1FB2C0(v262, v263, v264, v265);

          v16, v282, v283, v284, v285, v286, v287, v288;
          v296 = v20;
LABEL_68:
          v296, v289, v290, v291, v292, v293, v294, v295;
          return v260 & 1;
        }

        return 0;
      }

      if (a8 == 1)
      {
        v95 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v97 = v96;
        v99 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v100 = v95;
        v101 = v98;
        if (v100 == v99 && v97 == v98)
        {
          sub_1CF1FB2C0(a5, a6, a7, 1u);
          sub_1CF1FB2C0(a1, a2, a3, 1u);

          v97, v102, v103, v104, v105, v106, v107, v108;
          v101, v109, v110, v111, v112, v113, v114, v115;
        }

        else
        {
          v226 = sub_1CF9E8048();
          sub_1CF1FB2C0(a5, a6, a7, 1u);
          sub_1CF1FB2C0(a1, a2, a3, 1u);

          v97, v227, v228, v229, v230, v231, v232, v233;
          v101, v234, v235, v236, v237, v238, v239, v240;
          if ((v226 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        v241 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v243 = v242;
        v245 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v251 = v241;
        v252 = v244;
        if (v251 == v245 && v243 == v244)
        {
          v243, v244, v245, v246, v247, v248, v249, v250;
          v252, v253, v254, v255, v256, v257, v258, v259;
          goto LABEL_61;
        }

        v297 = sub_1CF9E8048();
        v243, v298, v299, v300, v301, v302, v303, v304;
        v252, v305, v306, v307, v308, v309, v310, v311;
        if (v297)
        {
LABEL_61:
          v312 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v314 = v313;
          v316 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v317 = v312;
          v318 = v315;
          if (v317 == v316 && v314 == v315)
          {

            v314, v319, v320, v321, v322, v323, v324, v325;
            v137 = v318;
            goto LABEL_64;
          }

          v260 = sub_1CF9E8048();

          v314, v326, v327, v328, v329, v330, v331, v332;
          v296 = v318;
          goto LABEL_68;
        }

LABEL_66:

        return 0;
      }

      v160 = a1;
      v161 = a8;
      sub_1CF1FB2C0(a5, a6, a7, a8);
      sub_1CF1FB2C0(v160, a2, a3, 1u);

LABEL_42:
      sub_1CF484340(a5, a6, a7, v161);
      return 0;
    }

    if (a4 == 2)
    {
      if (a8 != 2)
      {
        v160 = a1;
        v161 = a8;
        sub_1CF1FB2C0(a5, a6, a7, a8);
        sub_1CF1FB2C0(v160, a2, a3, 2u);
        goto LABEL_42;
      }

      v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v52 = v51;
      v54 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v55 = v50;
      v56 = v53;
      if (v55 == v54 && v52 == v53)
      {
        sub_1CF1FB2C0(a5, a6, a7, 2u);
        sub_1CF1FB2C0(a1, a2, a3, 2u);

        v52, v57, v58, v59, v60, v61, v62, v63;
        v56, v64, v65, v66, v67, v68, v69, v70;
      }

      else
      {
        v182 = sub_1CF9E8048();
        sub_1CF1FB2C0(a5, a6, a7, 2u);
        sub_1CF1FB2C0(a1, a2, a3, 2u);

        v52, v183, v184, v185, v186, v187, v188, v189;
        v56, v190, v191, v192, v193, v194, v195, v196;
        if ((v182 & 1) == 0)
        {

LABEL_73:
          return 0;
        }
      }

      if (a2)
      {
        if (a6)
        {
          v197 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v199 = v198;
          v201 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v202 = v197;
          v203 = v200;
          if (v202 == v201 && v199 == v200)
          {

            v199, v204, v205, v206, v207, v208, v209, v210;
            v137 = v203;
            goto LABEL_64;
          }

          v333 = sub_1CF9E8048();

          v199, v334, v335, v336, v337, v338, v339, v340;
          v203, v341, v342, v343, v344, v345, v346, v347;
          return (v333 & 1) != 0;
        }
      }

      else
      {

        if (!a6)
        {
          return 1;
        }

        a2 = a6;
      }

      goto LABEL_73;
    }

    if (a8 != 3)
    {
      return 0;
    }

    v138 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v140 = v139;
    v142 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v143 = v138;
    v144 = v141;
    if (v143 == v142 && v140 == v141)
    {
      v145 = a5;
      v140, v146, v147, v148, v149, v150, v151, v152;
      v144, v153, v154, v155, v156, v157, v158, v159;
      sub_1CF484340(a5, a6, a7, 3u);
      return 1;
    }

    v162 = sub_1CF9E8048();
    v266 = a5;
    v140, v267, v268, v269, v270, v271, v272, v273;
    v144, v274, v275, v276, v277, v278, v279, v280;
    v178 = a5;
    v179 = a6;
    v180 = a7;
    v181 = 3;
LABEL_57:
    sub_1CF484340(v178, v179, v180, v181);
    return v162 & 1;
  }

  if (a4 > 5u)
  {
    if (a4 != 6)
    {
      return a8 == 7 && !(a6 | a5 | a7);
    }

    if (a8 == 6)
    {
      v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v73 = v72;
      v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v76 = v71;
      v77 = v74;
      if (v76 != v75 || v73 != v74)
      {
        v162 = sub_1CF9E8048();
        v211 = a5;
        v73, v212, v213, v214, v215, v216, v217, v218;
        v77, v219, v220, v221, v222, v223, v224, v225;
        v178 = a5;
        v179 = a6;
        v180 = a7;
        v181 = 6;
        goto LABEL_57;
      }

      v78 = a5;
      v73, v79, v80, v81, v82, v83, v84, v85;
      v77, v86, v87, v88, v89, v90, v91, v92;
      sub_1CF484340(a5, a6, a7, 6u);
      return 1;
    }
  }

  else
  {
    if (a4 == 4)
    {
      if (a8 != 4)
      {
        return 0;
      }

      v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v27;
      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v26;
      v32 = v29;
      if (v31 != v30 || v28 != v29)
      {
        v162 = sub_1CF9E8048();
        v163 = a5;
        v28, v164, v165, v166, v167, v168, v169, v170;
        v32, v171, v172, v173, v174, v175, v176, v177;
        v178 = a5;
        v179 = a6;
        v180 = a7;
        v181 = 4;
        goto LABEL_57;
      }

      v33 = a5;
      v28, v34, v35, v36, v37, v38, v39, v40;
      v32, v41, v42, v43, v44, v45, v46, v47;
      sub_1CF484340(a5, a6, a7, 4u);
      return 1;
    }

    if (a8 == 5)
    {
      v118 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v16 = v119;
      v121 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v122 = v118;
      v20 = v120;
      if (v122 == v121 && v16 == v120)
      {
        sub_1CF1FB2C0(a5, a6, a7, 5u);
        v21 = a1;
        v22 = a1;
        v23 = a2;
        v24 = a3;
        v25 = 5;
        goto LABEL_32;
      }

      v260 = sub_1CF9E8048();
      sub_1CF1FB2C0(a5, a6, a7, 5u);
      v261 = a1;
      v262 = a1;
      v263 = a2;
      v264 = a3;
      v265 = 5;
      goto LABEL_59;
    }
  }

  return 0;
}

uint64_t sub_1CF7BD478(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 41);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[4];
  v9 = *(a2 + 40);
  v10 = *(a2 + 41);
  if (v4 > 3)
  {
    if (*(a1 + 41) <= 5u)
    {
      if (v4 == 4)
      {
        if (v10 == 4)
        {
          goto LABEL_29;
        }
      }

      else if (v10 == 5)
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (v4 == 6)
    {
      if (v10 == 6)
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (v10 != 7)
    {
      return 0;
    }

    return !(a2[1] | v5 | v7 | a2[3] | v8) && v9 == 0;
  }

  v11 = a1[2];
  v12 = a1[3];
  v13 = a2[3];
  if (*(a1 + 41) > 1u)
  {
    if (v4 != 2)
    {
      if (v10 == 3)
      {
        goto LABEL_29;
      }

      return 0;
    }

    if (v10 != 2)
    {
      return 0;
    }

    if (a1[1])
    {
      if (a1[1] == 1)
      {
        result = 0;
        if (v6 != 1 || v3 != v5)
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if (v3)
        {
          if (v6 != 2 || v5 != 1)
          {
            return result;
          }
        }

        else if (v6 != 2 || v5)
        {
          return result;
        }
      }
    }

    else
    {
      result = 0;
      if (a2[1] || v3 != v5)
      {
        return result;
      }
    }

    if (v12 == 255)
    {
      if (v13 != 255)
      {
        return 0;
      }
    }

    else
    {
      if (v13 == 255)
      {
        return 0;
      }

      if (v12)
      {
        if (v12 == 1)
        {
          if (v13 != 1 || v11 != v7)
          {
            return 0;
          }
        }

        else if (v11)
        {
          if (v13 != 2 || v7 != 1)
          {
            return 0;
          }
        }

        else if (v13 != 2 || v7)
        {
          return 0;
        }
      }

      else if (a2[3] || v11 != v7)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!*(a1 + 41))
  {
    if (!*(a2 + 41))
    {
LABEL_29:
      if (a1[1])
      {
        if (a1[1] == 1)
        {
          if (v6 != 1 || v3 != v5)
          {
            return 0;
          }
        }

        else if (v3)
        {
          if (v6 != 2 || v5 != 1)
          {
            return 0;
          }
        }

        else if (v6 != 2 || v5)
        {
          return 0;
        }
      }

      else if (a2[1] || v3 != v5)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (v10 != 1)
  {
    return 0;
  }

  v15 = a1[4];
  v16 = *(a1 + 40);
  result = a1[1];
  if (v2)
  {
    if (result == 1)
    {
      result = 0;
      if (v6 != 1 || v3 != v5)
      {
        return result;
      }

      goto LABEL_78;
    }

    result = 0;
    if (v3)
    {
      if (v6 != 2 || v5 != 1)
      {
        return result;
      }

LABEL_78:
      if (v12)
      {
        if (v12 == 1)
        {
          result = 0;
          if (v13 != 1 || v11 != v7)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v11)
          {
            if (v13 != 2 || v7 != 1)
            {
              return result;
            }
          }

          else if (v13 != 2 || v7)
          {
            return result;
          }
        }
      }

      else
      {
        result = 0;
        if (v13 || v11 != v7)
        {
          return result;
        }
      }

      if (v16)
      {
        if (v16 == 1)
        {
          if (v9 != 1 || v15 != v8)
          {
            return 0;
          }
        }

        else if (v15)
        {
          if (v9 != 2 || v8 != 1)
          {
            return 0;
          }
        }

        else if (v9 != 2 || v8)
        {
          return 0;
        }
      }

      else if (v9 || v15 != v8)
      {
        return 0;
      }

      return 1;
    }

    if (v6 == 2 && !v5)
    {
      goto LABEL_78;
    }
  }

  else if (!v6 && v3 == v5)
  {
    goto LABEL_78;
  }

  return result;
}

void sub_1CF7BD790(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6)
      {
        MEMORY[0x1D386A470](4);
        return;
      }

      MEMORY[0x1D386A470](7);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v43 = v42;
      v44 = a2;
      sub_1CF9E69C8();
      v43, v45, v46, v47, v48, v49, v50, v51;
      v19 = a2;
      v20 = a3;
      v21 = a4;
      v22 = 6;
    }

    else
    {
      if (a5 != 4)
      {
        v8 = 6;
        goto LABEL_15;
      }

      MEMORY[0x1D386A470](5);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = v9;
      v11 = a2;
      sub_1CF9E69C8();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = a2;
      v20 = a3;
      v21 = a4;
      v22 = 4;
    }
  }

  else
  {
    if (a5 <= 1u)
    {
      if (a5)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v53 = v52;
        v54 = a2;
        v55 = a3;
        v56 = a4;
        sub_1CF9E69C8();
        v53, v57, v58, v59, v60, v61, v62, v63;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v65 = v64;
        sub_1CF9E69C8();
        v65, v66, v67, v68, v69, v70, v71, v72;
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v74 = v73;
        sub_1CF9E69C8();

        v82 = v74;
LABEL_16:

        v82, v75, v76, v77, v78, v79, v80, v81;
        return;
      }

      v8 = 0;
LABEL_15:
      MEMORY[0x1D386A470](v8);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v84 = v83;
      v85 = a2;
      sub_1CF9E69C8();

      v82 = v84;
      goto LABEL_16;
    }

    if (a5 == 2)
    {
      MEMORY[0x1D386A470](2);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      v96 = a3;
      v97 = a2;
      sub_1CF9E69C8();
      v24, v25, v26, v27, v28, v29, v30, v31;
      sub_1CF9E81F8();
      if (a3)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v33 = v32;
        sub_1CF9E69C8();
        v33, v34, v35, v36, v37, v38, v39, v40;

        v41 = v96;
      }

      else
      {
        v41 = v97;
      }

      return;
    }

    MEMORY[0x1D386A470](3);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v87 = v86;
    v88 = a2;
    sub_1CF9E69C8();
    v87, v89, v90, v91, v92, v93, v94, v95;
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = 3;
  }

  sub_1CF484340(v19, v20, v21, v22);
}

uint64_t sub_1CF7BDAE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 41);
  if (v3 > 3)
  {
    if (*(v0 + 41) > 5u)
    {
      if (v3 != 6)
      {
        v10 = 4;
        return MEMORY[0x1D386A470](v10);
      }

      v6 = 7;
    }

    else if (v3 == 4)
    {
      v6 = 5;
    }

    else
    {
      v6 = 6;
    }

    goto LABEL_24;
  }

  v4 = v0[2];
  v5 = *(v0 + 24);
  if (*(v0 + 41) > 1u)
  {
    if (v3 == 2)
    {
      MEMORY[0x1D386A470](2);
      if (v2)
      {
        if (v2 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v1);
          if (v5 == 255)
          {
            return sub_1CF9E81F8();
          }
        }

        else
        {
          if (v1)
          {
            v11 = 3;
          }

          else
          {
            v11 = 2;
          }

          MEMORY[0x1D386A470](v11);
          if (v5 == 255)
          {
            return sub_1CF9E81F8();
          }
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
        if (v5 == 255)
        {
          return sub_1CF9E81F8();
        }
      }

      sub_1CF9E81F8();
      if (v5)
      {
        if (v5 == 1)
        {
          MEMORY[0x1D386A470](1);
          return MEMORY[0x1D386A4A0](v4);
        }

        if (v4)
        {
          goto LABEL_29;
        }

        goto LABEL_47;
      }

LABEL_27:
      MEMORY[0x1D386A470](0);
      return sub_1CF9E8208();
    }

    v6 = 3;
LABEL_24:
    MEMORY[0x1D386A470](v6);
    if (v2)
    {
      if (v2 == 1)
      {
        MEMORY[0x1D386A470](1);
        return MEMORY[0x1D386A4A0](v1);
      }

      if (v1)
      {
        goto LABEL_29;
      }

LABEL_47:
      v10 = 2;
      return MEMORY[0x1D386A470](v10);
    }

    goto LABEL_27;
  }

  if (!*(v0 + 41))
  {
    v6 = 0;
    goto LABEL_24;
  }

  v8 = v0[4];
  v9 = *(v0 + 40);
  MEMORY[0x1D386A470](1);
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v1);
      if (v5)
      {
        goto LABEL_18;
      }

LABEL_36:
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v1)
    {
      MEMORY[0x1D386A470](3);
      if (!v5)
      {
        goto LABEL_36;
      }
    }

    else
    {
      MEMORY[0x1D386A470](2);
      if (!v5)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
    if (!v5)
    {
      goto LABEL_36;
    }
  }

LABEL_18:
  if (v5 == 1)
  {
    MEMORY[0x1D386A470](1);
    MEMORY[0x1D386A4A0](v4);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else if (v4)
  {
    MEMORY[0x1D386A470](3);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    MEMORY[0x1D386A470](2);
    if (!v9)
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  if (v9 == 1)
  {
    MEMORY[0x1D386A470](1);
    return MEMORY[0x1D386A4A0](v8);
  }

  if (!v8)
  {
    goto LABEL_47;
  }

LABEL_29:
  v10 = 3;
  return MEMORY[0x1D386A470](v10);
}