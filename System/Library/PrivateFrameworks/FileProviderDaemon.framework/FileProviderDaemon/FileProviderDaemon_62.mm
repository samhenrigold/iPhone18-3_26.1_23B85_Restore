double sub_1CF6C4260(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 48);
  v22[2] = *(a1 + 32);
  v22[3] = v3;
  v4 = *(a1 + 80);
  v22[4] = *(a1 + 64);
  v22[5] = v4;
  v5 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v5;

  sub_1CEFCCC44(v22, &qword_1EC4C0668, &unk_1CFA05A70);
  v13 = *v2->tree;
  if (v13)
  {
    sub_1CF2CA194();
    anon_8 = v2[1]._anon_8;
    do
    {
      v15 = *(anon_8 - 1);
      v16 = swift_allocError();
      *&v21[0] = v16;

      v15(v21);

      anon_8 += 16;
      --v13;
    }

    while (v13);
  }

  v2, v6, v7, v8, v9, v10, v11, v12;
  sub_1CF3FE2CC(v21);
  v17 = v21[3];
  *(a1 + 32) = v21[2];
  *(a1 + 48) = v17;
  v18 = v21[5];
  *(a1 + 64) = v21[4];
  *(a1 + 80) = v18;
  result = *v21;
  v20 = v21[1];
  *a1 = v21[0];
  *(a1 + 16) = v20;
  return result;
}

void sub_1CF6C4380(_TtC18FileProviderDaemon8FSTester *a1, char a2, char a3, char a4, uint64_t a5)
{
  if (a5 <= 9)
  {
    LOBYTE(v7) = a3;
    LOBYTE(v8) = a2;
    v9 = a1;
    v10 = [(FSTester *)a1 domain];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v61 = v12;
    v62 = v11;

    v13 = [v9 code];
    LOBYTE(v14) = a4 & 1;
    v23 = sub_1CF1F6E08(0, 1, 1, MEMORY[0x1E69E7CC0], v15, v16, v17, v18);
    v25 = *v23->tree;
    v24 = *v23->tester;
    v26 = (v25 + 1);
    if (v25 >= v24 >> 1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      *v23->tree = v26;
      v27 = &v23[v25];
      v27[1].super.isa = v62;
      *v27[1]._anon_8 = v61;
      *v27[1].tree = v13;
      v27[1].tester[0] = v8;
      v27[1].tester[1] = v7;
      v27[1].tester[2] = v14;
      v28 = [v9 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v29 = sub_1CF9E6D48();

      v9 = sub_1CF7FC11C(v29);
      v29, v30, v31, v32, v33, v34, v35, v36;
      if (v9 >> 62)
      {
        v7 = sub_1CF9E7818();
        if (!v7)
        {
LABEL_31:
          v9, v37, v38, v39, v40, v41, v42, v43;
          return;
        }
      }

      else
      {
        v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_31;
        }
      }

      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      v8 = 0;
      v14 = v9 & 0xC000000000000001;
      while (1)
      {
        v44 = v14 ? MEMORY[0x1D3869C30](v8, v9) : *(v9 + 8 * v8 + 32);
        v25 = v44;
        v45 = sub_1CF6C4380(v44, 6, 89, 1, a5 + 1);
        v13 = *v45->tree;
        v24 = *v23->tree;
        v49 = &v13[v24];
        if (__OFADD__(v24, v13))
        {
          break;
        }

        v50 = *v23->tester >> 1;
        if (v50 < v49)
        {
          if (v24 <= v49)
          {
            v60 = &v13[v24];
          }

          else
          {
            v60 = *v23->tree;
          }

          v26 = v45;
          v23 = sub_1CF1F6E08(1, v60, 1, v23, v19, v20, v21, v22);
          v45 = v26;
          v24 = *v23->tree;
          v50 = *v23->tester >> 1;
          if (*v26->tree)
          {
LABEL_15:
            if ((v50 - v24) < v13)
            {
              goto LABEL_27;
            }

            v26 = v45;
            swift_arrayInitWithCopy();
            v26, v51, v52, v53, v54, v55, v56, v57;
            if (v13)
            {
              v58 = *v23->tree;
              v59 = __OFADD__(v58, v13);
              v24 = &v13[v58];
              if (v59)
              {
                goto LABEL_28;
              }

              *v23->tree = v24;
            }

            goto LABEL_8;
          }
        }

        else if (v13)
        {
          goto LABEL_15;
        }

        v45, v46, v47, v48, v19, v20, v21, v22;
        if (v13)
        {
          goto LABEL_26;
        }

LABEL_8:
        ++v8;

        if (v7 == v8)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v23 = sub_1CF1F6E08((v24 > 1), v26, 1, v23, v19, v20, v21, v22);
    }
  }
}

uint64_t FPCKDetachedRoot.physicalLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation;
  v4 = sub_1CF9E5A58();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void (*FPCKDetachedRoot.__allocating_init(physicalLocation:rootURL:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v105 = sub_1CF9E53C8();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1CF9E6118();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v100 - v16;
  v110 = v2;
  v108 = objc_allocWithZone(v2);
  v112 = a1;
  sub_1CF9E5A18();
  v18 = v17;
  v109 = a2;
  v114 = a2;
  (*(v12 + 56))(v10, 1, 1, v11);
  v123 = 0;
  v19 = swift_allocObject();
  v111 = v10;
  *(v19 + 16) = v10;
  *(v19 + 24) = sub_1CF6E9450;
  *(v19 + 32) = &v113;
  *(v19 + 40) = &v123;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF6E946C;
  *(v20 + 24) = v19;
  v121 = sub_1CF005DD0;
  v122 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v118 = 1107296256;
  v119 = sub_1CF005DF8;
  v120 = &block_descriptor_34;
  v21 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(a1) = fpfs_openat();

  _Block_release(v21);

  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v123)
  {
    swift_willThrow();
LABEL_4:
    v18, v31, v32, v33, v34, v35, v36, v37;
    v38 = sub_1CF9E5A58();
    v39 = *(*(v38 - 8) + 8);
    v39(v112, v38);
    v18, v40, v41, v42, v43, v44, v45, v46;
    sub_1CEFCCC44(v111, &qword_1EC4C23F8, &qword_1CFA11A58);
    v39(v109, v38);
    swift_deallocPartialClassInstance();
    return v39;
  }

  if ((a1 & 0x80000000) == 0)
  {
    v18, v24, v25, v26, v27, v28, v29, v30;
    a1 = v111;
    v47 = v107;
    sub_1CEFCCBDC(v111, v107, &qword_1EC4C23F8, &qword_1CFA11A58);
    if ((*(v12 + 48))(v47, 1, v11) != 1)
    {
      v18, v24, v25, v26, v27, v28, v29, v30;
      v48 = v106;
      sub_1CEFE55D0(v47, v106, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFCCC44(a1, &qword_1EC4C23F8, &qword_1CFA11A58);
      v49 = OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation;
      v50 = sub_1CF9E5A58();
      v51 = *(v50 - 8);
      v52 = v108;
      (*(v51 + 16))(&v108[v49], v112, v50);
      sub_1CEFCCBDC(v48, v14, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFE55D0(v14, &v52[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation], &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFCCBDC(v48, v14, &qword_1EC4C2400, qword_1CFA11A60);
      *&v52[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_inode] = *&v14[*(v11 + 48)];
      sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFE55D0(v48, v14, &qword_1EC4C2400, qword_1CFA11A60);
      v52[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_shouldRefreshBookmark] = v14[*(v11 + 64)];
      sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
      v116.receiver = v52;
      v116.super_class = v110;
      v39 = objc_msgSendSuper2(&v116, sel_init);
      v53 = *(v51 + 8);
      v53(v112, v50);
      v53(v109, v50);
      return v39;
    }

    goto LABEL_17;
  }

  if (MEMORY[0x1D38683F0](v23))
  {
    if (MEMORY[0x1D38683F0]() == 9939394)
    {
      [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v55 = sub_1CF9E6138();
      if ((v55 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v55;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v56 = v103;
      v57 = v105;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v104 + 8))(v56, v57);
      swift_willThrow();
    }

    goto LABEL_4;
  }

LABEL_18:
  v18, v24, v25, v26, v27, v28, v29, v30;
  aBlock = 0;
  v118 = 0xE000000000000000;
  sub_1CF9E7948();
  v118, v58, v59, v60, v61, v62, v63, v64;
  aBlock = 0xD00000000000001ALL;
  v118 = 0x80000001CFA2DF30;
  v115 = a1;
  v65 = sub_1CF9E7F98();
  v67 = v66;
  MEMORY[0x1D3868CC0](v65);
  v67, v68, v69, v70, v71, v72, v73, v74;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v75 = aBlock;
  v76 = v118;
  v77 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v78 = sub_1CF9E6108();
  v79 = sub_1CF9E72B8();
  v76, v80, v81, v82, v83, v84, v85, v86;
  if (os_log_type_enabled(v78, v79))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    aBlock = v88;
    *v87 = 136315650;
    v89 = sub_1CF9E7988();
    v91 = v90;
    v92 = sub_1CEFD0DF0(v89, v90, &aBlock);
    v91, v93, v94, v95, v96, v97, v98, v99;
    *(v87 + 4) = v92;
    *(v87 + 12) = 2048;
    *(v87 + 14) = 315;
    *(v87 + 22) = 2080;
    *(v87 + 24) = sub_1CEFD0DF0(v75, v76, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v78, v79, "[ASSERT] ‼️  %s:%lu: %s", v87, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v88, -1, -1);
    MEMORY[0x1D386CDC0](v87, -1, -1);
  }

  (*(v101 + 8))(v100, v102);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t FPCKDetachedRoot.init(physicalLocation:rootURL:)(uint64_t a1, uint64_t a2)
{
  v111 = sub_1CF9E53C8();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1CF9E6118();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v105 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v105 - v16;
  v117 = a1;
  sub_1CF9E5A18();
  v18 = v17;
  v114 = a2;
  v119 = a2;
  (*(v12 + 56))(v10, 1, 1, v11);
  v128 = 0;
  v19 = swift_allocObject();
  v116 = v10;
  *(v19 + 16) = v10;
  *(v19 + 24) = sub_1CF6FCF28;
  *(v19 + 32) = &v118;
  *(v19 + 40) = &v128;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF6FCF1C;
  *(v20 + 24) = v19;
  v126 = sub_1CF6FCFCC;
  v127 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v123 = 1107296256;
  v124 = sub_1CF005DF8;
  v125 = &block_descriptor_15_1;
  v21 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  v22 = fpfs_openat();

  _Block_release(v21);

  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v128)
  {
    swift_willThrow();
    goto LABEL_4;
  }

  if ((v22 & 0x80000000) == 0)
  {
    v18, v24, v25, v26, v27, v28, v29, v30;
    v49 = v116;
    v50 = v113;
    sub_1CEFCCBDC(v116, v113, &qword_1EC4C23F8, &qword_1CFA11A58);
    if ((*(v12 + 48))(v50, 1, v11) != 1)
    {
      v18, v24, v25, v26, v27, v28, v29, v30;
      v51 = v50;
      v52 = v112;
      sub_1CEFE55D0(v51, v112, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFCCC44(v49, &qword_1EC4C23F8, &qword_1CFA11A58);
      v53 = OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation;
      v54 = sub_1CF9E5A58();
      v55 = *(v54 - 8);
      v56 = v115;
      (*(v55 + 16))(&v115[v53], v117, v54);
      sub_1CEFCCBDC(v52, v14, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFE55D0(v14, &v56[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation], &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFCCBDC(v52, v14, &qword_1EC4C2400, qword_1CFA11A60);
      *&v56[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_inode] = *&v14[*(v11 + 48)];
      sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFE55D0(v52, v14, &qword_1EC4C2400, qword_1CFA11A60);
      v56[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_shouldRefreshBookmark] = v14[*(v11 + 64)];
      sub_1CEFCCC44(v14, &unk_1EC4BE310, qword_1CF9FCBE0);
      v57 = type metadata accessor for FPCKDetachedRoot(0);
      v121.receiver = v56;
      v121.super_class = v57;
      v40 = objc_msgSendSuper2(&v121, sel_init);
      v58 = *(v55 + 8);
      v58(v117, v54);
      v58(v114, v54);
      return v40;
    }

    goto LABEL_18;
  }

  if (MEMORY[0x1D38683F0](v23))
  {
    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v60 = sub_1CF9E6138();
      v38 = v114;
      v39 = v117;
      if ((v60 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v60;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v61 = v109;
      v62 = v111;
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v110 + 8))(v61, v62);
      swift_willThrow();
      goto LABEL_5;
    }

    [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    swift_willThrow();
LABEL_4:
    v38 = v114;
    v39 = v117;
LABEL_5:
    v18, v31, v32, v33, v34, v35, v36, v37;
    v40 = sub_1CF9E5A58();
    v41 = *(*(v40 - 8) + 8);
    v41(v39, v40);
    v18, v42, v43, v44, v45, v46, v47, v48;
    sub_1CEFCCC44(v116, &qword_1EC4C23F8, &qword_1CFA11A58);
    v41(v38, v40);
    type metadata accessor for FPCKDetachedRoot(0);
    swift_deallocPartialClassInstance();
    return v40;
  }

LABEL_19:
  v18, v24, v25, v26, v27, v28, v29, v30;
  aBlock = 0;
  v123 = 0xE000000000000000;
  sub_1CF9E7948();
  v123, v63, v64, v65, v66, v67, v68, v69;
  aBlock = 0xD00000000000001ALL;
  v123 = 0x80000001CFA2DF30;
  v120 = v22;
  v70 = sub_1CF9E7F98();
  v72 = v71;
  MEMORY[0x1D3868CC0](v70);
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v80 = aBlock;
  v81 = v123;
  v82 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v83 = sub_1CF9E6108();
  v84 = sub_1CF9E72B8();
  v81, v85, v86, v87, v88, v89, v90, v91;
  if (os_log_type_enabled(v83, v84))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    aBlock = v93;
    *v92 = 136315650;
    v94 = sub_1CF9E7988();
    v96 = v95;
    v97 = sub_1CEFD0DF0(v94, v95, &aBlock);
    v96, v98, v99, v100, v101, v102, v103, v104;
    *(v92 + 4) = v97;
    *(v92 + 12) = 2048;
    *(v92 + 14) = 315;
    *(v92 + 22) = 2080;
    *(v92 + 24) = sub_1CEFD0DF0(v80, v81, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v83, v84, "[ASSERT] ‼️  %s:%lu: %s", v92, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v93, -1, -1);
    MEMORY[0x1D386CDC0](v92, -1, -1);
  }

  (*(v107 + 8))(v106, v108);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF6C5E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for VFSDetachedRootBookmark(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v47, 0, sizeof(v47));
  v48 = v5;
  v49 = v47;
  result = sub_1CEFE1894(sub_1CF198A9C);
  if (!v3)
  {
    v46 = 0;
    fpfs_is_detached_root();
    if (v46)
    {
      v14 = sub_1CF9E5A58();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v9, a2, v14);
      v16 = *(v15 + 56);
      v16(v9, 0, 1, v14);
      sub_1CF36C8E0(v5, v9, v12);
      v39 = 0;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
      v22 = *(v21 + 48);
      v38 = *(v21 + 64);
      v23 = &v12[*(v10 + 20)];
      v25 = *v23;
      v24 = *(v23 + 1);
      v44 = v25;
      v45 = v24;
      v42 = 47;
      v43 = 0xE100000000000000;
      v40 = 58;
      v41 = 0xE100000000000000;
      sub_1CEFE4E68();
      sub_1CF9E7668();
      v26 = v16;
      v28 = v27;
      sub_1CF9E5958();
      v28, v29, v30, v31, v32, v33, v34, v35;
      v26(a3, 0, 1, v14);
      *(a3 + v22) = *(&v47[0] + 1);
      v36 = v12[*(v10 + 28)];
      result = sub_1CF0081E0(v12, type metadata accessor for VFSDetachedRootBookmark);
      *(a3 + v38) = v36;
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
      v18 = *(v17 + 48);
      v19 = *(v17 + 64);
      v20 = sub_1CF9E5A58();
      result = (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
      *(a3 + v18) = *(&v47[0] + 1);
      *(a3 + v19) = 0;
    }
  }

  return result;
}

id FPCKDetachedRoot.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t FPCKReason.description.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if ((a1 & 2) == 0)
  {
    v9 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v9 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], a5, a6, a7, a8);
  v15 = *v9->tree;
  v14 = *v9->tester;
  if (v15 >= v14 >> 1)
  {
    v9 = sub_1CF0710C0((v14 > 1), v15 + 1, 1, v9, v10, v11, v12, v13);
  }

  *v9->tree = v15 + 1;
  v16 = v9 + 16 * v15;
  *(v16 + 4) = 0x6F6974617267696DLL;
  *(v16 + 5) = 0xE90000000000006ELL;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CF0710C0(0, *v9->tree + 1, 1, v9, v17, v18, v19, v20);
    }

    v22 = *v9->tree;
    v21 = *v9->tester;
    if (v22 >= v21 >> 1)
    {
      v9 = sub_1CF0710C0((v21 > 1), v22 + 1, 1, v9, v17, v18, v19, v20);
    }

    *v9->tree = v22 + 1;
    v23 = v9 + 16 * v22;
    *(v23 + 4) = 0x726961706572;
    *(v23 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CF0710C0(0, *v9->tree + 1, 1, v9, v24, v25, v26, v27);
    }

    v29 = *v9->tree;
    v28 = *v9->tester;
    if (v29 >= v28 >> 1)
    {
      v9 = sub_1CF0710C0((v28 > 1), v29 + 1, 1, v9, v24, v25, v26, v27);
    }

    *v9->tree = v29 + 1;
    v30 = v9 + 16 * v29;
    *(v30 + 4) = 1919251317;
    *(v30 + 5) = 0xE400000000000000;
    if ((a1 & 0x10) == 0)
    {
LABEL_14:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 0x10) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1CF0710C0(0, *v9->tree + 1, 1, v9, v31, v32, v33, v34);
  }

  v36 = *v9->tree;
  v35 = *v9->tester;
  if (v36 >= v35 >> 1)
  {
    v9 = sub_1CF0710C0((v35 > 1), v36 + 1, 1, v9, v31, v32, v33, v34);
  }

  *v9->tree = v36 + 1;
  v37 = v9 + 16 * v36;
  *(v37 + 4) = 0x6E6F6D656164;
  *(v37 + 5) = 0xE600000000000000;
  if ((a1 & 0x20) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1CF0710C0(0, *v9->tree + 1, 1, v9, v38, v39, v40, v41);
  }

  v43 = *v9->tree;
  v42 = *v9->tester;
  if (v43 >= v42 >> 1)
  {
    v9 = sub_1CF0710C0((v42 > 1), v43 + 1, 1, v9, v38, v39, v40, v41);
  }

  *v9->tree = v43 + 1;
  v44 = v9 + 16 * v43;
  *(v44 + 4) = 0x676E6974736574;
  *(v44 + 5) = 0xE700000000000000;
  if ((a1 & 0x40) == 0)
  {
LABEL_16:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1CF0710C0(0, *v9->tree + 1, 1, v9, v45, v46, v47, v48);
  }

  v50 = *v9->tree;
  v49 = *v9->tester;
  if (v50 >= v49 >> 1)
  {
    v9 = sub_1CF0710C0((v49 > 1), v50 + 1, 1, v9, v45, v46, v47, v48);
  }

  *v9->tree = v50 + 1;
  v51 = v9 + 16 * v50;
  *(v51 + 4) = 4469316;
  *(v51 + 5) = 0xE300000000000000;
  if (a1 < 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1CF0710C0(0, *v9->tree + 1, 1, v9, v52, v53, v54, v55);
    }

    v57 = *v9->tree;
    v56 = *v9->tester;
    if (v57 >= v56 >> 1)
    {
      v9 = sub_1CF0710C0((v56 > 1), v57 + 1, 1, v9, v52, v53, v54, v55);
    }

    *v9->tree = v57 + 1;
    v58 = v9 + 16 * v57;
    *(v58 + 4) = 0x6E776F6E6B6E75;
    *(v58 + 5) = 0xE700000000000000;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v59 = sub_1CF9E67D8();
  v9, v60, v61, v62, v63, v64, v65, v66;
  return v59;
}

void *FPShouldPauseResult.semaphore.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore);
  v2 = v1;
  return v1;
}

id FPShouldPauseResult.__allocating_init(shouldPause:semaphore:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = a1;
  *&v5[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id FPShouldPauseResult.init(shouldPause:semaphore:)(char a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = a1;
  *&v2[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FPShouldPauseResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1CF6C6AE0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1CF6C6B28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF6F3AF4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1CF6C6C04()
{
  v1 = *v0;
  v2 = 0x64616F6C7075;
  v3 = 0x6E776F6E6B6E75;
  if (v1 != 5)
  {
    v3 = 7958113;
  }

  if (*v0 <= 4u)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 1)
  {
    v2 = 0x64616F6C6E776F64;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF6C6CDC(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v15 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2798, &qword_1CFA129A8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF6FC2C4();
  sub_1CF9E82A8();
  LOBYTE(v14) = 0;
  sub_1CF9E7EE8();
  if (!v4)
  {
    v11 = v15;
    LOBYTE(v14) = v15;
    v16 = 1;
    sub_1CF1A8B78();
    sub_1CF9E7F08();
    LOBYTE(v14) = BYTE1(v11);
    v16 = 2;
    sub_1CF1A8BCC();
    sub_1CF9E7E68();
    LOBYTE(v14) = BYTE2(v11);
    v16 = 3;
    sub_1CF6FC36C();
    sub_1CF9E7E68();
    v14 = a4;
    v16 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFE7C14(&qword_1EDEA3780, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1CF9E7F08();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1CF6C6F5C()
{
  v1 = *v0;
  v2 = 0x746E756F63;
  v3 = 0x65646F43626F6ALL;
  v4 = 0x65646953626F6ALL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF6C6FFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF6F4C50(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF6C7024(uint64_t a1)
{
  v2 = sub_1CF6FC2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF6C7060(uint64_t a1)
{
  v2 = sub_1CF6FC2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF6C709C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1CF6F4E0C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 10) = BYTE2(v5);
    *(a1 + 16) = v6;
  }

  return result;
}

id sub_1CF6C7130()
{
  v1 = sub_1CF9E5CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v7 = v3;
  v40[1] = *v0;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v9 = v40[0];
  v10 = [v40[0] domain];
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;

  if (v11 == 0xD000000000000019 && 0x80000001CFA404F0 == v13)
  {
    v13, v14, v15, 0x80000001CFA404F0, v16, v17, v18, v19;
    goto LABEL_8;
  }

  v21 = sub_1CF9E8048();
  v13, v22, v23, v24, v25, v26, v27, v28;
  if (v21)
  {
LABEL_8:
    if ([v9 code])
    {
      goto LABEL_9;
    }

    if ((*(v0 + 32) & 1) == 0)
    {
      v34 = *(v0 + 24);
      goto LABEL_19;
    }

    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v32 = v31;
    result = (*(v2 + 8))(v5, v7);
    v33 = v32 * 1000000000.0;
    if (COERCE__INT64(fabs(v32 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v33 > -9.22337204e18)
    {
      if (v33 < 9.22337204e18)
      {
        v34 = v33;
LABEL_19:
        v35 = sub_1CF72A344(v34, 1, 0x15, 18);
        v37 = v36;
        sub_1CF6FC3E4();
        v38 = swift_allocError();
        *v39 = v35;
        *(v39 + 8) = v37;

        return v38;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_9:
  v29 = *(v0 + 33);
  if (v29 == 2 || (v29 & 1) == 0)
  {
    return v9;
  }

  sub_1CF6FC3E4();
  result = swift_allocError();
  *v30 = v9;
  *(v30 + 8) = 13;
  return result;
}

uint64_t sub_1CF6C7464()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CF6C74FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1CF6C75F4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CF6C768C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1CF6C7784()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CF6C781C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1CF6C7914()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CF6C79AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1CF6C7AA4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CF6C7B3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1CF6C7C34()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1CF6C7CCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1CF6C7E18()
{
  swift_beginAccess();

  return result;
}

void sub_1CF6C7EF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v4, v5, v6, v7, v8, v9, v10, v11;
}

void sub_1CF6C7F48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v5, v6, v7, v8, v9, v10, v11, v12;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF6C8010()
{
  v0 = sub_1CF9E6118();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultStore];
  v5 = [v4 targetedSPSErrorsPayload];
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;

  v9 = sub_1CF2C8330(v6, v8);
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v18 = sub_1CF9E6108();
  v19 = sub_1CF9E7298();
  v9, v20, v21, v22, v23, v24, v25, v26;
  if (os_log_type_enabled(v18, v19))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v42 = v28;
    *v27 = 136315138;
    sub_1CF6FCC30();
    v29 = sub_1CF9E6648();
    v31 = v30;
    v32 = sub_1CEFD0DF0(v29, v30, &v42);
    v31, v33, v34, v35, v36, v37, v38, v39;
    *(v27 + 4) = v32;
    _os_log_impl(&dword_1CEFC7000, v18, v19, "targetedSPSErrors: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1D386CDC0](v28, -1, -1);
    MEMORY[0x1D386CDC0](v27, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v9;
}

void FPCK.__allocating_init(withDatabasesBackupsPaths:volumeRole:providerDomainID:domainUserInfo:reason:usingFPFS:iCDPackageDetection:useShouldPause:shouldPause:sendDiagnostics:saveCheckpoint:reingestItems:isInvalidated:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v164 = a7;
  v162 = a6;
  v160 = a4;
  v171 = a3;
  v159 = a2;
  v179 = a16;
  v180 = a1;
  v177 = a12;
  v178 = a14;
  v166 = sub_1CF9E6118();
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v172 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1CF9E5CF8();
  v169 = *(v22 - 8);
  v170 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v168 = &v154 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CF9E5D98();
  v24 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v26 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = objc_allocWithZone(v18);
  v27 = 0;
  v28 = 0;
  if (a8)
  {
    v27 = a9;

    v28 = a10;
  }

  v157 = a10;
  v161 = a5;
  v29 = sub_1CF6F50D8(a5);
  v31 = v30;
  type metadata accessor for FSSnapshotChecker();
  v32 = swift_allocObject();
  *(v32 + 64) = 0;
  *(v32 + 72) = 1;
  *(v32 + 80) = 0;
  *(v32 + 88) = 1;
  v33 = MEMORY[0x1E69E7CC0];
  *(v32 + 16) = sub_1CF4E34CC(MEMORY[0x1E69E7CC0]);
  v34 = sub_1CF4E34E0(v33);
  v35 = MEMORY[0x1E69E7CD0];
  *(v32 + 24) = v34;
  *(v32 + 32) = v35;
  *(v32 + 40) = v35;
  *(v32 + 48) = v29;
  *(v32 + 56) = v31 & 1;
  *(v32 + 64) = 0;
  *(v32 + 72) = 1;
  type metadata accessor for FPSnapshotChecker();
  v36 = swift_allocObject();
  *(v36 + 40) = 0;
  *(v36 + 48) = 1;
  *(v36 + 16) = sub_1CF4E34F4(v33);
  *(v36 + 24) = sub_1CF4E3508(v33);
  v173 = v36;
  *(v36 + 32) = 0;
  v163 = type metadata accessor for FPCK(0);
  v37 = objc_allocWithZone(v163);
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedDownloads] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedUploads] = 0;
  v38 = MEMORY[0x1E69E7CC8];
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions] = MEMORY[0x1E69E7CC8];
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport] = 0;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors] = v38;
  *&v37[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors] = v38;
  v39 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID;
  v174 = v27;
  v176 = v28;
  sub_1CF03C63C(v27, v28);

  v175 = a18;

  v40 = v171;
  v41 = v37;
  sub_1CF9E5D88();
  v42 = sub_1CF9E5D18();
  v44 = v43;
  v184[0] = v42;
  v184[1] = v43;
  v182 = 45;
  v183 = 0xE100000000000000;
  sub_1CEFE4E68();
  v45 = sub_1CF9E7638();
  v44, v46, v47, v48, v49, v50, v51, v52;
  if (!*v45->tree)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v171 = v40;
  v53 = &v37[v39];
  isa = v45[1].super.isa;
  v55 = *v45[1]._anon_8;

  v45, v56, v57, v58, v59, v60, v61, v62;
  (*(v24 + 8))(v26, v167);
  *v53 = isa;
  v53[1] = v55;
  v63 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase] = 0;
  v158 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker;
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker] = 0;
  v167 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker;
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker] = 0;
  v64 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_diskVsFSSnapshotIgnoredFilenames;
  v65 = sub_1CF6F4950(&unk_1F4BEF178);
  sub_1CF342B1C(&unk_1F4BEF198);
  *&v41[v64] = v65;
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions] = 0;
  v66 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_targetedSPSErrors;
  *&v41[v66] = sub_1CF6C8010();
  v67 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause];
  *v67 = 0;
  v67[1] = 0;
  v68 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics];
  *v68 = 0;
  v68[1] = 0;
  v69 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems];
  *v69 = 0;
  v69[1] = 0;
  v70 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  *&v41[v70] = sub_1CF4E3328(v33);
  v71 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
  *&v41[v71] = sub_1CF4E3328(v33);
  v72 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  *&v41[v72] = sub_1CF4E3350(v33);
  v73 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;
  *&v41[v73] = sub_1CF4E3350(v33);
  v74 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
  *&v41[v74] = sub_1CF4E3378(v33);
  v75 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
  *&v41[v75] = sub_1CF4E33A0(v33);
  v76 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
  *&v41[v76] = sub_1CF4E33C8(v33);
  v77 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion];
  *v77 = 0x69737265762D6F6ELL;
  *(v77 + 1) = 0xEA00000000006E6FLL;
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_skippedLockedItems] = MEMORY[0x1E69E7CD0];
  v78 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  v79 = sub_1CF9E5A58();
  (*(*(v79 - 8) + 56))(&v41[v78], 1, 1, v79);
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs] = v33;
  *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots] = v33;
  v80 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime;
  v81 = v168;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v83 = v82;
  (*(v169 + 8))(v81, v170);
  v84 = v83 * 1000000000.0;
  if (COERCE__INT64(fabs(v83 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v84 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v84 < 9.22337204e18)
  {
    v155 = v53;
    v169 = a15;
    v170 = a17;
    v168 = a13;
    *&v41[v80] = v84;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair] = 0;
    v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning] = 2;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders] = 0;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros] = v33;
    v85 = v171;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID] = v171;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_volumeRole] = v159;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_domainUserInfo] = v160;
    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason] = v161;
    v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_usingFPFS] = v162 & 1;
    *&v41[v63] = 0;
    v86 = v85;

    *&v41[v158] = v32;

    *&v41[v167] = v173;

    *&v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases] = v33;
    v87 = *v67;
    v88 = v67[1];
    v89 = v174;
    v90 = v176;
    *v67 = v174;
    v67[1] = v90;
    sub_1CF03C63C(v89, v90);
    sub_1CEFF7124(v87, v88);
    v91 = *v68;
    v92 = v68[1];
    v93 = v177;
    *v68 = a11;
    v68[1] = v93;

    sub_1CEFF7124(v91, v92);
    v94 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint];
    v95 = v178;
    v96 = v179;
    *v94 = v168;
    v94[1] = v95;
    v97 = *v69;
    v98 = v69[1];
    *v69 = v169;
    v69[1] = v96;

    sub_1CEFF7124(v97, v98);
    v99 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated];
    v100 = v175;
    *v99 = v170;
    v99[1] = v100;
    v101 = v164 & 1;

    LOBYTE(v97) = FPPinningIsEnabledForDomainID();
    v102 = isResidencyReasonEnabled(for:)(v86);
    v103 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext];
    *v103 = sub_1CF36581C;
    *(v103 + 1) = 0;
    *(v103 + 4) = v101;
    *(v103 + 5) = 2;
    v103[24] = v97;
    v103[25] = 0;
    v103[26] = v102;
    v104 = &v41[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler];
    *v104 = sub_1CF6C8250;
    v104[1] = 0;
    v105 = fpfs_current_or_default_log();
    v106 = v172;
    sub_1CF9E6128();
    v107 = v41;
    v108 = sub_1CF9E6108();
    v109 = sub_1CF9E7288();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v184[0] = v111;
      *v110 = 136446210;
      v113 = *v155;
      v112 = v155[1];

      v114 = sub_1CEFD0DF0(v113, v112, v184);
      v112, v115, v116, v117, v118, v119, v120, v121;
      *(v110 + 4) = v114;
      _os_log_impl(&dword_1CEFC7000, v108, v109, "🧹 FPCK initialized with run id %{public}s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v111);
      v122 = v111;
      v89 = v174;
      MEMORY[0x1D386CDC0](v122, -1, -1);
      MEMORY[0x1D386CDC0](v110, -1, -1);

      (*(v165 + 8))(v172, v166);
    }

    else
    {

      (*(v165 + 8))(v106, v166);
    }

    v181.receiver = v107;
    v181.super_class = v163;
    v123 = objc_msgSendSuper2(&v181, sel_init);

    sub_1CEFF7124(v89, v176);

    v124 = v180 + 64;
    v125 = 1 << *(v180 + 32);
    v126 = -1;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    v127 = v126 & *(v180 + 64);
    v128 = (v125 + 63) >> 6;
    v129 = v123;
    v130 = 0;
    while (v127)
    {
      v131 = v130;
LABEL_18:
      v132 = __clz(__rbit64(v127));
      v127 &= v127 - 1;
      v133 = (v131 << 10) | (16 * v132);
      v134 = (*(v180 + 48) + v133);
      v135 = *v134;
      v136 = v134[1];
      v137 = (*(v180 + 56) + v133);
      v138 = *v137;
      v139 = v137[1];

      sub_1CF6C9E18(v135, v136, v138, v139, v86);
      v136, v140, v141, v142, v143, v144, v145, v146;
      v139, v147, v148, v149, v150, v151, v152, v153;
    }

    while (1)
    {
      v131 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        break;
      }

      if (v131 >= v128)
      {

        sub_1CEFF7124(v174, v176);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return;
      }

      v127 = *(v124 + 8 * v131);
      ++v130;
      if (v127)
      {
        v130 = v131;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

void FPCK.init(withDatabasesBackupsPaths:volumeRole:providerDomainID:domainUserInfo:reason:usingFPFS:iCDPackageDetection:useShouldPause:shouldPause:sendDiagnostics:saveCheckpoint:reingestItems:isInvalidated:)(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v162 = a7;
  v160 = a6;
  v158 = a4;
  v169 = a3;
  v157 = a2;
  v177 = a16;
  v178 = a1;
  v175 = a12;
  v176 = a14;
  v164 = sub_1CF9E6118();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v170 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5CF8();
  v167 = *(v21 - 8);
  v168 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v166 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1CF9E5D98();
  v23 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v25 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0;
  if (a8)
  {
    v26 = a9;

    v27 = a10;
  }

  v155 = a10;
  v159 = a5;
  v28 = sub_1CF6F50D8(a5);
  v30 = v29;
  type metadata accessor for FSSnapshotChecker();
  v31 = swift_allocObject();
  *(v31 + 64) = 0;
  *(v31 + 72) = 1;
  *(v31 + 80) = 0;
  *(v31 + 88) = 1;
  v32 = MEMORY[0x1E69E7CC0];
  *(v31 + 16) = sub_1CF4E34CC(MEMORY[0x1E69E7CC0]);
  v33 = sub_1CF4E34E0(v32);
  v34 = MEMORY[0x1E69E7CD0];
  *(v31 + 24) = v33;
  *(v31 + 32) = v34;
  *(v31 + 40) = v34;
  *(v31 + 48) = v28;
  *(v31 + 56) = v30 & 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 1;
  type metadata accessor for FPSnapshotChecker();
  v35 = swift_allocObject();
  *(v35 + 40) = 0;
  *(v35 + 48) = 1;
  *(v35 + 16) = sub_1CF4E34F4(v32);
  *(v35 + 24) = sub_1CF4E3508(v32);
  v171 = v35;
  *(v35 + 32) = 0;
  v161 = type metadata accessor for FPCK(0);
  v36 = objc_allocWithZone(v161);
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInBackupManifestCheck] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedDownloads] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedUploads] = 0;
  v37 = MEMORY[0x1E69E7CC8];
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions] = MEMORY[0x1E69E7CC8];
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport] = 0;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors] = v37;
  *&v36[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors] = v37;
  v38 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID;
  v172 = v26;
  v174 = v27;
  sub_1CF03C63C(v26, v27);

  v173 = a18;

  v39 = v169;
  v40 = v36;
  sub_1CF9E5D88();
  v41 = sub_1CF9E5D18();
  v43 = v42;
  v182[0] = v41;
  v182[1] = v42;
  v180 = 45;
  v181 = 0xE100000000000000;
  sub_1CEFE4E68();
  v44 = sub_1CF9E7638();
  v43, v45, v46, v47, v48, v49, v50, v51;
  if (!*v44->tree)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v169 = v39;
  v52 = &v36[v38];
  isa = v44[1].super.isa;
  v54 = *v44[1]._anon_8;

  v44, v55, v56, v57, v58, v59, v60, v61;
  (*(v23 + 8))(v25, v165);
  *v52 = isa;
  v52[1] = v54;
  v62 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase] = 0;
  v156 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker] = 0;
  v165 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker] = 0;
  v63 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_diskVsFSSnapshotIgnoredFilenames;
  v64 = sub_1CF6F4950(&unk_1F4BEF1A8);
  sub_1CF342B1C(&unk_1F4BEF1C8);
  *&v40[v63] = v64;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions] = 0;
  v65 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_targetedSPSErrors;
  *&v40[v65] = sub_1CF6C8010();
  v66 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause];
  *v66 = 0;
  v66[1] = 0;
  v67 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics];
  *v67 = 0;
  v67[1] = 0;
  v68 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems];
  *v68 = 0;
  v68[1] = 0;
  v69 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  *&v40[v69] = sub_1CF4E3328(v32);
  v70 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
  *&v40[v70] = sub_1CF4E3328(v32);
  v71 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  *&v40[v71] = sub_1CF4E3350(v32);
  v72 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;
  *&v40[v72] = sub_1CF4E3350(v32);
  v73 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
  *&v40[v73] = sub_1CF4E3378(v32);
  v74 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
  *&v40[v74] = sub_1CF4E33A0(v32);
  v75 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
  *&v40[v75] = sub_1CF4E33C8(v32);
  v76 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion];
  *v76 = 0x69737265762D6F6ELL;
  *(v76 + 1) = 0xEA00000000006E6FLL;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_skippedLockedItems] = MEMORY[0x1E69E7CD0];
  v77 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  v78 = sub_1CF9E5A58();
  (*(*(v78 - 8) + 56))(&v40[v77], 1, 1, v78);
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs] = v32;
  *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots] = v32;
  v79 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime;
  v80 = v166;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v82 = v81;
  (*(v167 + 8))(v80, v168);
  v83 = v82 * 1000000000.0;
  if (COERCE__INT64(fabs(v82 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v83 < 9.22337204e18)
  {
    v154 = v52;
    v167 = a15;
    v168 = a17;
    v166 = a13;
    *&v40[v79] = v83;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair] = 0;
    v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning] = 2;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders] = 0;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros] = v32;
    v84 = v169;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID] = v169;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_volumeRole] = v157;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_domainUserInfo] = v158;
    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason] = v159;
    v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_usingFPFS] = v160 & 1;
    *&v40[v62] = 0;
    v85 = v84;

    *&v40[v156] = v31;

    *&v40[v165] = v171;

    *&v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases] = v32;
    v86 = *v66;
    v87 = v66[1];
    v88 = v172;
    v89 = v174;
    *v66 = v172;
    v66[1] = v89;
    sub_1CF03C63C(v88, v89);
    sub_1CEFF7124(v86, v87);
    v90 = *v67;
    v91 = v67[1];
    v92 = v175;
    *v67 = a11;
    v67[1] = v92;

    sub_1CEFF7124(v90, v91);
    v93 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint];
    v94 = v176;
    v95 = v177;
    *v93 = v166;
    v93[1] = v94;
    v96 = *v68;
    v97 = v68[1];
    *v68 = v167;
    v68[1] = v95;

    sub_1CEFF7124(v96, v97);
    v98 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated];
    v99 = v173;
    *v98 = v168;
    v98[1] = v99;
    v100 = v162 & 1;

    LOBYTE(v96) = FPPinningIsEnabledForDomainID();
    v101 = isResidencyReasonEnabled(for:)(v85);
    v102 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext];
    *v102 = sub_1CF36581C;
    *(v102 + 1) = 0;
    *(v102 + 4) = v100;
    *(v102 + 5) = 2;
    v102[24] = v96;
    v102[25] = 0;
    v102[26] = v101;
    v103 = &v40[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler];
    *v103 = sub_1CF6C8250;
    v103[1] = 0;
    v104 = fpfs_current_or_default_log();
    v105 = v170;
    sub_1CF9E6128();
    v106 = v40;
    v107 = sub_1CF9E6108();
    v108 = sub_1CF9E7288();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v182[0] = v110;
      *v109 = 136446210;
      v112 = *v154;
      v111 = v154[1];

      v113 = sub_1CEFD0DF0(v112, v111, v182);
      v111, v114, v115, v116, v117, v118, v119, v120;
      *(v109 + 4) = v113;
      _os_log_impl(&dword_1CEFC7000, v107, v108, "🧹 FPCK initialized with run id %{public}s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      v121 = v110;
      v88 = v172;
      MEMORY[0x1D386CDC0](v121, -1, -1);
      MEMORY[0x1D386CDC0](v109, -1, -1);

      (*(v163 + 8))(v170, v164);
    }

    else
    {

      (*(v163 + 8))(v105, v164);
    }

    v179.receiver = v106;
    v179.super_class = v161;
    v122 = objc_msgSendSuper2(&v179, sel_init);

    sub_1CEFF7124(v88, v174);

    v123 = v178 + 64;
    v124 = 1 << *(v178 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v178 + 64);
    v127 = (v124 + 63) >> 6;
    v128 = v122;
    v129 = 0;
    while (v126)
    {
      v130 = v129;
LABEL_18:
      v131 = __clz(__rbit64(v126));
      v126 &= v126 - 1;
      v132 = (v130 << 10) | (16 * v131);
      v133 = (*(v178 + 48) + v132);
      v134 = *v133;
      v135 = v133[1];
      v136 = (*(v178 + 56) + v132);
      v137 = *v136;
      v138 = v136[1];

      sub_1CF6C9E18(v134, v135, v137, v138, v85);
      v135, v139, v140, v141, v142, v143, v144, v145;
      v138, v146, v147, v148, v149, v150, v151, v152;
    }

    while (1)
    {
      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v130 >= v127)
      {

        sub_1CEFF7124(v172, v174);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return;
      }

      v126 = *(v123 + 8 * v130);
      ++v129;
      if (v126)
      {
        v129 = v130;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

double sub_1CF6C9E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1CF9E6118();
  v201 = *(v9 - 8);
  v202 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v195 = v189 - v13;
  v205 = sub_1CF9E5A58();
  v14 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v194 = v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v196 = v189 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v189 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v189 - v22;
  sub_1CF9E58C8();
  v203 = v20;
  v197 = a3;
  v199 = a4;
  sub_1CF9E58C8();
  v24 = a5;
  v25 = [v24 pathComponents];
  v26 = sub_1CF9E6D48();

  v27 = *v26->tree;
  v26, v28, v29, v30, v31, v32, v33, v34;
  v204 = v23;
  v200 = v11;
  if (v27 < 2)
  {
    v35 = *MEMORY[0x1E6967178];
  }

  else
  {
    v35 = [v24 lastPathComponent];
    if (!v35)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v37 = v36;
      v35 = sub_1CF9E6888();
      v37, v38, v39, v40, v41, v42, v43, v44;
    }
  }

  v45 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext);
  v46 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 8);
  v47 = *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 16);
  if (*(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 25))
  {
    v48 = 256;
  }

  else
  {
    v48 = 0;
  }

  v49 = v48 | *(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 24);
  if (*(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 26))
  {
    v50 = 0x10000;
  }

  else
  {
    v50 = 0;
  }

  v51 = v35;

  v52 = 0;
  v53 = sub_1CF713060(v45, v46, v47, v49 | v50);
  v193 = v51;
  v192 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v54 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v55 = swift_allocObject();
  v198 = v53;
  v56 = v55;
  *(v55 + 16) = xmmword_1CF9FA450;
  v191 = *(v14 + 16);
  v191(v55 + v54, v204, v205);
  v57 = objc_allocWithZone(type metadata accessor for InternalPathsManager(0));
  v58 = v24;

  v59 = InternalPathsManager.init(providerDomainID:)(v58);
  type metadata accessor for VFSFileTree(0);
  swift_allocObject();

  v60 = sub_1CF25D1E8(v56, v198, v59, 0, 0, 0, 0, 0, 0, 0, 0);
  if (objc_sync_enter(v60))
  {
    v182 = v193;

    MEMORY[0x1EEE9AC00](v183);
    v187 = v60;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v186, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v190 = v60;
  if (objc_sync_exit(v60))
  {
    v184 = v193;

    MEMORY[0x1EEE9AC00](v185);
    v187 = v190;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v186, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  v206 = xmmword_1EDEBBE48;
  v209 = 47;
  v210 = 0xE100000000000000;
  v207 = 58;
  v208 = 0xE100000000000000;
  v187 = sub_1CEFE4E68();
  v188 = v187;
  v186[1] = v187;
  v186[0] = MEMORY[0x1E69E6158];
  sub_1CF9E7668();
  v62 = v61;
  v63 = v196;
  sub_1CF9E5968();
  v62, v64, v65, v66, v67, v68, v69, v70;
  sub_1CF366BEC(v63, 0);
  v189[2] = v14 + 16;
  v71 = v14 + 8;
  v72 = *(v14 + 8);
  v72(v63, v205);

  v73 = objc_opt_self();
  v74 = [v73 defaultStore];
  v75 = [v74 softConcurrentOperationLimit];
  LODWORD(v63) = [v74 hardConcurrentOperationLimit];

  type metadata accessor for JobLimit();
  v76 = swift_allocObject();
  v196 = v76;
  *(v76 + 2) = 0;
  *(v76 + 3) = v75;
  *(v76 + 4) = v75;
  *(v76 + 5) = v63;
  v77 = [v73 defaultStore];
  v78 = [v77 softConcurrentContentUpdateLimit];
  LODWORD(v75) = [v77 hardConcurrentContentUpdateLimit];

  v79 = swift_allocObject();
  v79[2] = 0;
  v79[3] = v78;
  v79[4] = v78;
  v79[5] = v75;
  v80 = [v73 defaultStore];
  v81 = [v80 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v75) = [v80 hardConcurrentMetadataOnlyUpdateLimit];

  v82 = swift_allocObject();
  v82[2] = 0;
  v82[3] = v81;
  v82[4] = v81;
  v82[5] = v75;
  v83 = [v73 defaultStore];
  v84 = [v83 softConcurrentProvideFileLimit];
  LODWORD(v75) = [v83 hardConcurrentProvideFileLimit];

  v85 = swift_allocObject();
  v85[2] = 0;
  v85[3] = v84;
  v85[4] = v84;
  v85[5] = v75;
  type metadata accessor for RestoreUpgradeSchemaFPFileTree(0);
  v86 = swift_allocObject();
  *(v86 + 112) = 0;
  *(v86 + 144) = 0;
  *(v86 + 16) = 0u;
  *(v86 + 32) = 0u;
  *(v86 + 48) = 0u;
  *(v86 + 64) = 0u;
  *(v86 + 120) = 0;
  *(v86 + 128) = 0;
  (*(*v86 + 520))();
  *(v86 + 136) = v198;
  *(v86 + 80) = v196;
  *(v86 + 88) = v79;
  *(v86 + 96) = v82;
  *(v86 + 104) = v85;
  v87 = *(v192 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v87)
  {

    v96 = v193;

    v97 = v205;
    v72(v203, v205);
    v72(v204, v97);
    return result;
  }

  v189[1] = v71;
  v189[0] = v87;
  v196 = v72;
  v88 = *(v192 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  v90 = v203;
  v89 = v204;
  if (!v88)
  {

    v99 = v193;

    v100 = v205;
    v101 = v196;
    (v196)(v90, v205);
    v101(v89, v100);
    return result;
  }

  v91 = v194;
  v191(v194, v203, v205);
  v92 = type metadata accessor for TelemetrySignposter(0);
  v93 = v195;
  (*(*(v92 - 8) + 56))(v195, 1, 1, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v94 = swift_allocObject();

  v95 = v190;

  sub_1CF3B3014(v91, v95, v86, v93, 0x21, 0x6B637066uLL, 0xE400000000000000, v94);
  v202 = v88;
  v102 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases;
  v103 = swift_beginAccess();
  MEMORY[0x1D3868FA0](v103);
  if (*((*(v192 + v102) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v192 + v102) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1CF9E6D88();
  }

  sub_1CF9E6DE8();
  v104 = *(v192 + v102);
  swift_endAccess();
  v105 = v190;
  v106 = v193;
  v107 = v189[0];
  if (!(v104 >> 62))
  {
    v108 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v108)
    {
      goto LABEL_24;
    }

LABEL_30:
    v110 = 0;
    goto LABEL_31;
  }

  v108 = sub_1CF9E7818();
  if (!v108)
  {
    goto LABEL_30;
  }

LABEL_24:
  v109 = v108 - 1;
  if (__OFSUB__(v108, 1))
  {
    __break(1u);
    goto LABEL_70;
  }

  if ((v104 & 0xC000000000000001) != 0)
  {
LABEL_70:

    MEMORY[0x1D3869C30](v109, v104);
    v104, v134, v135, v136, v137, v138, v139, v140;

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
    v110 = swift_dynamicCastClassUnconditional();
    goto LABEL_31;
  }

  if ((v109 & 0x8000000000000000) != 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v109 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  v110 = swift_dynamicCastClassUnconditional();

LABEL_31:
  swift_beginAccess();
  sub_1CF1C9198(v110, v106);
  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v209 = *(v107 + 24);
  *(v107 + 24) = 0x8000000000000000;
  sub_1CF1D292C(v105, v106, isUniquelyReferenced_nonNull_native);

  *(v107 + 24) = v209;
  swift_endAccess();
  v104 = *(v192 + v102);
  if (!(v104 >> 62))
  {
    v112 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v112)
    {
      goto LABEL_33;
    }

LABEL_39:
    v113 = 0;
    goto LABEL_40;
  }

  v112 = sub_1CF9E7818();
  if (!v112)
  {
    goto LABEL_39;
  }

LABEL_33:
  v109 = v112 - 1;
  if (__OFSUB__(v112, 1))
  {
    __break(1u);
    goto LABEL_72;
  }

  if ((v104 & 0xC000000000000001) != 0)
  {
LABEL_73:

    MEMORY[0x1D3869C30](v109, v104);
    v104, v141, v142, v143, v144, v145, v146, v147;

    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
    v113 = swift_dynamicCastClassUnconditional();
    goto LABEL_40;
  }

  if ((v109 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v109 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_80;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5060, &qword_1CFA052D0);
  v113 = swift_dynamicCastClassUnconditional();

LABEL_40:
  swift_beginAccess();
  sub_1CF1C91D8(v113, v106);
  swift_endAccess();
  v95 = v192;
  v104 = *(v192 + v102);
  if (v104 >> 62)
  {
    v114 = sub_1CF9E7818();
    if (v114)
    {
LABEL_42:
      v109 = v114 - 1;
      if (!__OFSUB__(v114, 1))
      {
        if ((v104 & 0xC000000000000001) == 0)
        {
          if ((v109 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (v109 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_84;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
          v115 = swift_dynamicCastClass();
          if (v115)
          {
            v105 = v115;

LABEL_48:
            v116 = v202;
            swift_beginAccess();

            v117 = swift_isUniquelyReferenced_nonNull_native();
            v209 = *(v116 + 24);
            *(v116 + 24) = 0x8000000000000000;
            sub_1CF1D2900(v105, v106, v117);

            *(v116 + 24) = v209;
            swift_endAccess();

            v95 = v192;
            goto LABEL_51;
          }

          goto LABEL_50;
        }

LABEL_77:

        MEMORY[0x1D3869C30](v109, v104);
        v104, v148, v149, v150, v151, v152, v153, v154;

        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
        v155 = swift_dynamicCastClass();
        if (!v155)
        {
          goto LABEL_108;
        }

        v105 = v155;
        v106 = v193;
        goto LABEL_48;
      }

      goto LABEL_75;
    }
  }

  else
  {
    v114 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v114)
    {
      goto LABEL_42;
    }
  }

LABEL_50:

  while (1)
  {
LABEL_51:
    v104 = *(v95 + v102);
    if (v104 >> 62)
    {
      v118 = sub_1CF9E7818();
      if (!v118)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v118 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v118)
      {
        goto LABEL_87;
      }
    }

    v109 = v118 - 1;
    if (__OFSUB__(v118, 1))
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:

      v119 = MEMORY[0x1D3869C30](v109, v104);
      v104, v156, v157, v158, v159, v160, v161, v162;
      goto LABEL_58;
    }

    if ((v104 & 0xC000000000000001) != 0)
    {
      goto LABEL_82;
    }

    if ((v109 & 0x8000000000000000) != 0)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v109 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:

      v164 = MEMORY[0x1D3869C30](v109, v104);

      v104, v166, v167, v168, v169, v170, v171, v172;
      goto LABEL_96;
    }

    v119 = *(&v104[1].super.isa + v109);

LABEL_58:
    v104 = *(v119 + qword_1EDEBBDB0);

    v109 = *(v95 + v102);
    if (!(v109 >> 62))
    {
      v120 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v120)
      {
        goto LABEL_86;
      }

      goto LABEL_60;
    }

LABEL_85:
    v120 = sub_1CF9E7818();
    if (!v120)
    {
LABEL_86:

      goto LABEL_87;
    }

LABEL_60:
    v105 = v120 - 1;
    if (__OFSUB__(v120, 1))
    {
      goto LABEL_103;
    }

    if ((v109 & 0xC000000000000001) != 0)
    {
      goto LABEL_104;
    }

    if ((v105 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v105 < *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_107:
    __break(1u);
LABEL_108:

    v95 = v192;
  }

  v121 = sub_1CF6F3C14(v104, 2);
  v123 = v122;
  v124 = v121;
LABEL_65:

  if (v123)
  {
    v132 = (v95 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion);
    v133 = *(v95 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion + 8);
    *v132 = v124;
    v132[1] = v123;
    v133, v125, v126, v127, v128, v129, v130, v131;
  }

LABEL_87:
  while (1)
  {
    v104 = *(v95 + v102);
    v163 = v104 >> 62 ? sub_1CF9E7818() : *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v52 = v204;
    v105 = v205;
    v102 = v203;
    if (!v163)
    {
      break;
    }

    v109 = v163 - 1;
    if (__OFSUB__(v163, 1))
    {
      goto LABEL_99;
    }

    if ((v104 & 0xC000000000000001) != 0)
    {
      goto LABEL_100;
    }

    if ((v109 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v109 < *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v164 = *(&v104[1].super.isa + v109);

      goto LABEL_96;
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:

    MEMORY[0x1D3869C30](v105, v109);
    v109, v173, v174, v175, v176, v177, v178, v179;

    swift_unknownObjectRelease();
    v180 = sub_1CF6F3C14(v104, 2);
    if (!v52)
    {
      v124 = v180;
      v123 = v181;
      v95 = v192;
      goto LABEL_65;
    }

    v95 = v192;
  }

  v164 = 0;
LABEL_96:
  v165 = v196;

  v165(v102, v105);
  v165(v52, v105);
  *(v95 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase) = v164;

  return result;
}

void FPCK.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13.receiver = v1;
    v13.super_class = type metadata accessor for FPCK(0);
    objc_msgSendSuper2(&v13, sel_dealloc);
    return;
  }

  v4 = sub_1CF9E7818();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D3869C30](i, v3);
      }

      else
      {
      }

      sub_1CF6C0474();
    }

    v3, v6, v7, v8, v9, v10, v11, v12;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1CF6CB8B4()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning;
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___importIsRunning);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1CF6CB8F8(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1CF6CB8F8(uint64_t a1)
{
  v20 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v20);
  v2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_openBackupDatabases;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CF9E7818())
  {

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3869C30](v5, v3);
        v15 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v14 = *(&v3[1].super.isa + v5);

      v15 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

LABEL_12:
      v16 = objc_autoreleasePoolPush();
      sub_1CF803A54(v14, 2, "importIsRunning", 15, 2, 1, sub_1CF6FCA94, v14);
      v6 = v17;
      objc_autoreleasePoolPop(v16);

      if (v6)
      {
        v18 = 1;
        goto LABEL_15;
      }

      ++v5;
      if (v15 == i)
      {
        v18 = 0;
LABEL_15:
        v3, v7, v8, v9, v10, v11, v12, v13;
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_1CF6CBC64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v9 = type metadata accessor for VFSItem(0);
  v10 = sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  v11 = sub_1CF00BCE0(qword_1EDEABC30, type metadata accessor for VFSItem, &unk_1CF9FFB08);
  v12 = sub_1CF4804D8();
  result = sub_1CF24A924(v8, v9, v10, v6, v11, v12, v7);
  if (!v3)
  {
    if (result)
    {
      result = 1;
    }

    else
    {
      v14 = a1[3];
      v15 = a1[4];
      v16 = __swift_project_boxed_opaque_existential_1(a1, v14);
      result = (*(**(a2 + 24) + 576))(v16, v14, v15);
    }

    *a3 = result & 1;
  }

  return result;
}

_BYTE *sub_1CF6CBDC8(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  v18 = *a1;
  switch(v18)
  {
    case 11:
      v38 = sub_1CF6CC544();
      if (!v38)
      {
        v38 = sub_1CF4E04E8(MEMORY[0x1E69E7CC0]);
      }

      v39 = v38;
      sub_1CF9E5CE8();
      v40 = sub_1CF9E5CF8();
      (*(*(v40 - 8) + 56))(v8, 0, 1, v40);
      v41 = FPOSVersion();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      sub_1CF4DB8C0(v39);
      v73 = v72;
      v39, v74, v75, v76, v77, v78, v79, v80;
      v81 = objc_allocWithZone(type metadata accessor for FPCKReportConsistencySection(0));
      *&v81[OBJC_IVAR____TtC18FileProviderDaemon28FPCKReportConsistencySection_payload] = v73;
      LOBYTE(v96[0]) = 11;
      sub_1CEFCCBDC(v8, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v70 = FPCKReportSection.init(phase:date:build:)(v96, v14, v43, v45);
      v71 = v8;
      goto LABEL_18;
    case 2:
      sub_1CF6CC3DC(v96);
      v90 = v96[0];
      v89 = v96[1];
      v93 = v96[3];
      v94 = v96[2];
      v32 = v96[4];
      sub_1CF9E5CE8();
      v33 = sub_1CF9E5CF8();
      (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
      v34 = FPOSVersion();
      if (v34)
      {
        v35 = v34;
        v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v91 = v37;
        v92 = v36;
      }

      else
      {
        v91 = 0;
        v92 = 0;
      }

      v52 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize);
      v53 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize);
      sub_1CF4DB8C0(v32);
      v55 = v54;
      v32, v56, v57, v58, v59, v60, v61, v62;
      v63 = objc_allocWithZone(type metadata accessor for FPCKReportSPSSection(0));
      v64 = &v63[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetErrors];
      *v64 = 0;
      v64[1] = 0;
      v65 = &v63[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_superPendingSetSize];
      *v65 = 0;
      v65[8] = 1;
      v66 = &v63[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetErrors];
      *v66 = 0;
      v66[1] = 0;
      v67 = &v63[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_pendingSetSize];
      *v67 = 0;
      v67[8] = 1;
      swift_beginAccess();
      v68 = v89;
      *v64 = v90;
      v64[1] = v68;
      swift_beginAccess();
      *v65 = v52;
      v65[8] = 0;
      swift_beginAccess();
      v69 = v93;
      *v66 = v94;
      v66[1] = v69;
      swift_beginAccess();
      *v67 = v53;
      v67[8] = 0;
      *&v63[OBJC_IVAR____TtC18FileProviderDaemon20FPCKReportSPSSection_detailedPayload] = v55;
      v95 = 2;
      sub_1CEFCCBDC(v11, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v70 = FPCKReportSection.init(phase:date:build:)(&v95, v14, v92, v91);
      v71 = v11;
LABEL_18:
      sub_1CEFCCC44(v71, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      return v70;
    case 1:
      sub_1CF9E5CE8();
      v19 = sub_1CF9E5CF8();
      (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
      v20 = FPOSVersion();
      if (v20)
      {
        v28 = v20;
        v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v82 = FPCKReason.description.getter(*(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason), v21, v22, v23, v24, v25, v26, v27);
      v84 = v83;
      v85 = (objc_allocWithZone(type metadata accessor for FPCKReportStartSection(0)) + OBJC_IVAR____TtC18FileProviderDaemon22FPCKReportStartSection_runReason);
      *v85 = v82;
      v85[1] = v84;
      LOBYTE(v96[0]) = 1;
      sub_1CEFCCBDC(v17, v14, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v70 = FPCKReportSection.init(phase:date:build:)(v96, v14, v29, v31);
      sub_1CEFCCC44(v17, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      break;
    default:
      LOBYTE(v96[0]) = *a1;
      sub_1CF9E5CE8();
      v46 = sub_1CF9E5CF8();
      (*(*(v46 - 8) + 56))(v5, 0, 1, v46);
      v47 = FPOSVersion();
      if (v47)
      {
        v48 = v47;
        v49 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      v86 = objc_allocWithZone(type metadata accessor for FPCKReportSection(0));
      return FPCKReportSection.init(phase:date:build:)(v96, v5, v49, v51);
  }

  return v70;
}

void sub_1CF6CC3DC(uint64_t *a1@<X8>)
{
  v39 = MEMORY[0x1E69E7CC8];
  v3 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*v4->tree)
  {

    sub_1CF6F5410(v5);
    v7 = v6;
    v9 = v8;
    v4, v8, v10, v11, v12, v13, v14, v15;
    if (v9)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v9 = 0;
  }

  v17 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (*v18->tree)
  {

    sub_1CF6F5410(v19);
    v21 = v20;
    v23 = v22;
    v18, v22, v24, v25, v26, v27, v28, v29;
    if (!v23)
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload))
  {
    v30 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetItemPayload);
  }

  else
  {
    v30 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetItemPayload);
    if (!v30)
    {
      v38 = MEMORY[0x1E69E7CC8];
      goto LABEL_16;
    }
  }

  sub_1CF6BE3AC(v30, &v39);
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = v39;
LABEL_16:
  *a1 = v16;
  a1[1] = v9;
  a1[2] = v21;
  a1[3] = v23;
  a1[4] = v38;
}

uint64_t sub_1CF6CC544()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v754 = *v2[-1].tester;
  v755 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v742 = &v738[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v744 = &v738[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v745 = &v738[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v746 = &v738[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v747 = &v738[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v750 = &v738[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v756 = &v738[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v738[-v17];
  v19 = sub_1CF9E5CF8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v738[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID];
  v24 = [v23 pathComponents];
  v25 = sub_1CF9E6D48();

  v26 = *v25->tree;
  v25, v27, v28, v29, v30, v31, v32, v33;
  if (v26 >= 2)
  {
    v34 = [v23 stringByDeletingLastPathComponent];
    if (!v34)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v35;
      v34 = sub_1CF9E6888();
      v36, v37, v38, v39, v40, v41, v42, v43;
    }

    v23 = v34;
  }

  v44 = [v23 fp_isiCloudDriveIdentifier];

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v46 = v45;
  (*(v20 + 8))(v22, v19);
  v47 = v46 * 1000000000.0;
  if (COERCE__INT64(fabs(v46 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_269;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  v48 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime];
  v49 = v47 - v48;
  if (__OFSUB__(v47, v48))
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v739 = v44;
  v50 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v51 = sub_1CF9E6108();
  v52 = sub_1CF9E7288();
  v53 = os_log_type_enabled(v51, v52);
  v741 = 0;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *&v760 = v55;
    *v54 = 136446210;
    v56 = sub_1CF4D37C8(v49);
    v58 = v57;
    v59 = sub_1CEFD0DF0(v56, v57, &v760);
    v58, v60, v61, v62, v63, v64, v65, v66;
    *(v54 + 4) = v59;
    _os_log_impl(&dword_1CEFC7000, v51, v52, "🧹 FPCK finished with duration: %{public}s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1D386CDC0](v55, -1, -1);
    MEMORY[0x1D386CDC0](v54, -1, -1);
  }

  (*(v754 + 1))(v18, v755);
  v67 = MEMORY[0x1E69E7CC8];
  v763 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v67;
  sub_1CF1D20F4(v49, 0x7544726961706572, 0xEE006E6F69746172, isUniquelyReferenced_nonNull_native);
  v763 = v760;
  v69 = sub_1CF6CB8B4();
  sub_1CF1C8E7C(v69 & 1, 0, 0x6D6965526E497369, 0xEC00000074726F70);
  v70 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  v71 = *&v1[v70];
  v72 = v763;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v72;
  sub_1CF1D20F4(v71, 0xD000000000000014, 0x80000001CFA57850, v73);
  v74 = v760;
  v75 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  v76 = *&v1[v75];
  v77 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v74;
  sub_1CF1D20F4(v76, 0xD000000000000029, 0x80000001CFA57870, v77);
  v78 = v760;
  v79 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSSnapshotAndFPSnapshotCheck;
  swift_beginAccess();
  v80 = *&v1[v79];
  v81 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v78;
  sub_1CF1D20F4(v80, 0xD000000000000031, 0x80000001CFA578A0, v81);
  v82 = v760;
  v83 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
  swift_beginAccess();
  v84 = *&v1[v83];
  v85 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v82;
  sub_1CF1D20F4(v84, 0xD00000000000002DLL, 0x80000001CFA578E0, v85);
  v86 = v760;
  v87 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalDatalessItems];
  v88 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v86;
  sub_1CF1D20F4(v87, 0xD000000000000012, 0x80000001CFA57970, v88);
  v89 = v760;
  v90 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_totalMaterializedItems];
  v91 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v89;
  sub_1CF1D20F4(v90, 0xD000000000000016, 0x80000001CFA57990, v91);
  v92 = v760;
  v93 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedFileSizes];
  v94 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v92;
  sub_1CF1D20F4(v93, 0xD000000000000014, 0x80000001CFA579B0, v94);
  v95 = v760;
  v96 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_accumulatedSizeOfDisk];
  v97 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v95;
  sub_1CF1D20F4(v96, 0xD000000000000015, 0x80000001CFA579D0, v97);
  v98 = v760;
  v99 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
  swift_beginAccess();
  v100 = *&v1[v99];
  v101 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v98;
  sub_1CF1D20F4(v100, 0xD000000000000022, 0x80000001CFA57940, v101);
  v102 = v760;
  v763 = v760;
  v103 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker;
  v104 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker];
  v105 = v756;
  if (!v104)
  {
    goto LABEL_28;
  }

  v106 = *(v104 + 48);
  if (*(v104 + 56) == 1)
  {
    if (!v106)
    {
LABEL_22:
      v108 = 100.0;
      goto LABEL_23;
    }

    v106 = sub_1CF70D78C();
  }

  else
  {
  }

  if (v106 == 0x7FFFFFFF)
  {

    goto LABEL_22;
  }

  if (v106 && sub_1CF70D78C())
  {
    v107 = *(v104 + 80);

    v108 = fmin(v106 / v107, 1.0) * 100.0;
  }

  else
  {

    v108 = 0.0;
  }

LABEL_23:
  if ((*&v108 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  if (v108 <= -9.22337204e18)
  {
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  if (v108 >= 9.22337204e18)
  {
    goto LABEL_275;
  }

  v109 = v108;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v102;
  sub_1CF1D20F4(v109, 0x676E696C706D6173, 0xEC00000065746152, v110);
  v102 = v760;
  v763 = v760;
  if (*&v1[v103])
  {

    v111 = sub_1CF70D78C();

    v112 = swift_isUniquelyReferenced_nonNull_native();
    *&v760 = v102;
    sub_1CF1D20F4(v111, 0xD000000000000019, 0x80000001CFA58DE0, v112);
    v102 = v760;
    v763 = v760;
  }

LABEL_28:
  if (*&v1[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker])
  {

    v113 = sub_1CF7023A0();

    v114 = swift_isUniquelyReferenced_nonNull_native();
    *&v760 = v102;
    sub_1CF1D20F4(v113, 0xD000000000000019, 0x80000001CFA58E00, v114);
    v763 = v760;
  }

  v115 = *&v1[v103];
  if (v115)
  {
    swift_beginAccess();
    v116 = *(*(v115 + 40) + 16);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    *&v760 = v763;
    sub_1CF1D20F4(v116, 0xD000000000000012, 0x80000001CFA57D30, v117);
    v763 = v760;
  }

  v118 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v119 = v1;
  v120 = sub_1CF9E6108();
  v121 = sub_1CF9E7288();

  v122 = os_log_type_enabled(v120, v121);
  v748 = v119;
  if (v122)
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *&v760 = v124;
    *v123 = 136446210;
    v125 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
    swift_beginAccess();
    v126 = *&v119[v125];
    type metadata accessor for BrokenInvariants(0);
    sub_1CF00BCE0(&unk_1EDEA36D0, type metadata accessor for BrokenInvariants, &protocol conformance descriptor for BrokenInvariants);

    v127 = sub_1CF9E6648();
    v129 = v128;
    v126, v128, v130, v131, v132, v133, v134, v135;
    v136 = v127;
    v119 = v748;
    v137 = sub_1CEFD0DF0(v136, v129, &v760);
    v129, v138, v139, v140, v141, v142, v143, v144;
    *(v123 + 4) = v137;
    _os_log_impl(&dword_1CEFC7000, v120, v121, "FPCK: FPDRTCReporting diskBrokenInvariants %{public}s", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v124);
    MEMORY[0x1D386CDC0](v124, -1, -1);
    MEMORY[0x1D386CDC0](v123, -1, -1);
  }

  v753 = *(v754 + 1);
  v753(v105, v755);
  v145 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  swift_beginAccess();
  v743 = v145;
  v146 = *&v119[v145];
  v147 = v146 + 64;
  v148 = 1 << *(v146 + 32);
  v149 = -1;
  if (v148 < 64)
  {
    v149 = ~(-1 << v148);
  }

  v150 = v149 & *(v146 + 64);
  v151 = (v148 + 63) >> 6;
  *(&v751 + 1) = 0x80000001CFA58E20;
  v752 = v146;

  v152 = 0;
  *&v751 = 0xD000000000000017;
  while (v150)
  {
LABEL_44:
    v156 = (v152 << 9) | (8 * __clz(__rbit64(v150)));
    v157 = *(*v752[1].tree + v156);
    v756 = *(*v752[1].tester + v156);
    v158 = sub_1CF7F5AAC(v157);
    v160 = v159;
    v760 = v751;
    MEMORY[0x1D3868CC0](v158);
    v160, v161, v162, v163, v164, v165, v166, v167;
    v168 = v760;
    v169 = v763;
    v170 = swift_isUniquelyReferenced_nonNull_native();
    *&v760 = v169;
    v171 = sub_1CEFE4328(v168, *(&v168 + 1));
    v179 = *(v169 + 16);
    v180 = (v172 & 1) == 0;
    v181 = __OFADD__(v179, v180);
    v182 = v179 + v180;
    if (v181)
    {
      goto LABEL_257;
    }

    v183 = v172;
    if (*(v169 + 24) < v182)
    {
      sub_1CF7C55FC(v182, v170);
      v171 = sub_1CEFE4328(v168, *(&v168 + 1));
      if ((v183 & 1) != (v172 & 1))
      {
        goto LABEL_283;
      }

LABEL_49:
      if (v183)
      {
        goto LABEL_37;
      }

      goto LABEL_50;
    }

    if (v170)
    {
      goto LABEL_49;
    }

    v186 = v171;
    sub_1CF7D012C();
    v171 = v186;
    if (v183)
    {
LABEL_37:
      v153 = v171;
      *(&v168 + 1), v172, v173, v174, v175, v176, v177, v178;
      v154 = v760;
      *(*(v760 + 56) + 8 * v153) = v756;
      goto LABEL_38;
    }

LABEL_50:
    v154 = v760;
    *(v760 + 8 * (v171 >> 6) + 64) |= 1 << v171;
    *(*v154[1].tree + 16 * v171) = v168;
    *(*v154[1].tester + 8 * v171) = v756;
    v184 = *v154->tree;
    v181 = __OFADD__(v184, 1);
    v185 = v184 + 1;
    if (v181)
    {
      goto LABEL_264;
    }

    *v154->tree = v185;
LABEL_38:
    v150 &= v150 - 1;
    v763 = v154;
  }

  while (1)
  {
    v155 = v152 + 1;
    if (__OFADD__(v152, 1))
    {
      __break(1u);
LABEL_248:
      __break(1u);
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    if (v155 >= v151)
    {
      break;
    }

    v150 = *(v147 + 8 * v155);
    ++v152;
    if (v150)
    {
      v152 = v155;
      goto LABEL_44;
    }
  }

  v187 = fpfs_current_or_default_log();
  v188 = v750;
  sub_1CF9E6128();
  v189 = v748;
  v190 = sub_1CF9E6108();
  v191 = sub_1CF9E7288();

  v192 = os_log_type_enabled(v190, v191);
  v749 = v189;
  if (v192)
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    *&v760 = v194;
    *v193 = 136446210;
    v195 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
    swift_beginAccess();
    v196 = *&v749[v195];
    v189 = v749;
    sub_1CF6FB6B4();

    v197 = sub_1CF9E6648();
    v199 = v198;
    v196, v198, v200, v201, v202, v203, v204, v205;
    v206 = sub_1CEFD0DF0(v197, v199, &v760);
    v199, v207, v208, v209, v210, v211, v212, v213;
    *(v193 + 4) = v206;
    _os_log_impl(&dword_1CEFC7000, v190, v191, "FPCK: FPDRTCReporting diskVersusFSSnapshotDiff %{public}s", v193, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v194);
    MEMORY[0x1D386CDC0](v194, -1, -1);
    MEMORY[0x1D386CDC0](v193, -1, -1);
  }

  v753(v188, v755);
  v214 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  swift_beginAccess();
  v740 = v214;
  v215 = *&v189[v214];
  v216 = v215 + 64;
  v217 = 1 << *(v215 + 32);
  v218 = -1;
  if (v217 < 64)
  {
    v218 = ~(-1 << v217);
  }

  v219 = v218 & *(v215 + 64);
  v220 = (v217 + 63) >> 6;
  v752 = 0x80000001CFA58E40;
  v756 = v215;

  v221 = 0;
  *&v751 = v220;
  *(&v751 + 1) = v216;
  while (2)
  {
    if (v219)
    {
LABEL_66:
      v225 = (v221 << 9) | (8 * __clz(__rbit64(v219)));
      v226 = *(*(v756 + 7) + v225);
      v227 = sub_1CF7F5394(*(*(v756 + 6) + v225));
      v229 = v228;
      *&v760 = 0xD00000000000001ELL;
      *(&v760 + 1) = v752;
      MEMORY[0x1D3868CC0](v227);
      v229, v230, v231, v232, v233, v234, v235, v236;
      v237 = v760;
      v238 = v763;
      v239 = swift_isUniquelyReferenced_nonNull_native();
      *&v760 = v238;
      v240 = sub_1CEFE4328(v237, *(&v237 + 1));
      v248 = *(v238 + 16);
      v249 = (v241 & 1) == 0;
      v181 = __OFADD__(v248, v249);
      v250 = v248 + v249;
      if (v181)
      {
        goto LABEL_258;
      }

      v251 = v241;
      if (*(v238 + 24) >= v250)
      {
        if ((v239 & 1) == 0)
        {
          v254 = v240;
          sub_1CF7D012C();
          v240 = v254;
          if ((v251 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_59;
        }
      }

      else
      {
        sub_1CF7C55FC(v250, v239);
        v240 = sub_1CEFE4328(v237, *(&v237 + 1));
        if ((v251 & 1) != (v241 & 1))
        {
          goto LABEL_283;
        }
      }

      if ((v251 & 1) == 0)
      {
LABEL_72:
        v223 = v760;
        *(v760 + 8 * (v240 >> 6) + 64) |= 1 << v240;
        *(*v223[1].tree + 16 * v240) = v237;
        *(*v223[1].tester + 8 * v240) = v226;
        v252 = *v223->tree;
        v181 = __OFADD__(v252, 1);
        v253 = v252 + 1;
        if (v181)
        {
          goto LABEL_265;
        }

        *v223->tree = v253;
        goto LABEL_60;
      }

LABEL_59:
      v222 = v240;
      *(&v237 + 1), v241, v242, v243, v244, v245, v246, v247;
      v223 = v760;
      *(*(v760 + 56) + 8 * v222) = v226;
LABEL_60:
      v219 &= v219 - 1;
      v763 = v223;
      v216 = *(&v751 + 1);
      v220 = v751;
      continue;
    }

    break;
  }

  while (1)
  {
    v224 = v221 + 1;
    if (__OFADD__(v221, 1))
    {
      goto LABEL_248;
    }

    if (v224 >= v220)
    {
      break;
    }

    v219 = *(v216 + 8 * v224);
    ++v221;
    if (v219)
    {
      v221 = v224;
      goto LABEL_66;
    }
  }

  v255 = fpfs_current_or_default_log();
  v256 = v747;
  sub_1CF9E6128();
  v257 = v749;
  v258 = sub_1CF9E6108();
  v259 = sub_1CF9E7288();

  v260 = os_log_type_enabled(v258, v259);
  v752 = v257;
  if (v260)
  {
    v261 = swift_slowAlloc();
    v262 = swift_slowAlloc();
    *&v760 = v262;
    *v261 = 136446210;
    v263 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
    swift_beginAccess();
    v264 = *(&v752->super.isa + v263);
    sub_1CF6FBAD0();

    v265 = sub_1CF9E6648();
    v267 = v266;
    v264, v266, v268, v269, v270, v271, v272, v273;
    v274 = sub_1CEFD0DF0(v265, v267, &v760);
    v267, v275, v276, v277, v278, v279, v280, v281;
    *(v261 + 4) = v274;
    v257 = v752;
    _os_log_impl(&dword_1CEFC7000, v258, v259, "FPCK: FPDRTCReporting fsSnapshotVersusFpSnapshotDiff %{public}s", v261, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v262);
    MEMORY[0x1D386CDC0](v262, -1, -1);
    MEMORY[0x1D386CDC0](v261, -1, -1);
  }

  v753(v256, v755);
  v282 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredFSSnapshotVsFPSnapshotDiffCounters;
  swift_beginAccess();
  v283 = *&v257[v282];
  v284 = v283 + 64;
  v285 = 1 << *(v283 + 32);
  v286 = -1;
  if (v285 < 64)
  {
    v286 = ~(-1 << v285);
  }

  v287 = v286 & *(v283 + 64);
  v288 = (v285 + 63) >> 6;
  *&v751 = 0x80000001CFA58E60;
  *(&v751 + 1) = v283;

  v289 = 0;
  v750 = v284;
  while (2)
  {
    if (v287)
    {
LABEL_88:
      v293 = (v289 << 9) | (8 * __clz(__rbit64(v287)));
      v294 = *(*(*(&v751 + 1) + 48) + v293);
      v756 = *(*(*(&v751 + 1) + 56) + v293);
      v295 = sub_1CF7F57DC(v294);
      v297 = v296;
      *&v760 = 0xD000000000000025;
      *(&v760 + 1) = v751;
      MEMORY[0x1D3868CC0](v295);
      v297, v298, v299, v300, v301, v302, v303, v304;
      v305 = v760;
      v306 = v763;
      v307 = swift_isUniquelyReferenced_nonNull_native();
      *&v760 = v306;
      v308 = sub_1CEFE4328(v305, *(&v305 + 1));
      v316 = *(v306 + 16);
      v317 = (v309 & 1) == 0;
      v181 = __OFADD__(v316, v317);
      v318 = v316 + v317;
      if (v181)
      {
        goto LABEL_259;
      }

      v319 = v309;
      if (*(v306 + 24) >= v318)
      {
        if ((v307 & 1) == 0)
        {
          v322 = v308;
          sub_1CF7D012C();
          v308 = v322;
          v257 = v752;
          if ((v319 & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_81;
        }
      }

      else
      {
        sub_1CF7C55FC(v318, v307);
        v308 = sub_1CEFE4328(v305, *(&v305 + 1));
        if ((v319 & 1) != (v309 & 1))
        {
          goto LABEL_283;
        }
      }

      v257 = v752;
      if ((v319 & 1) == 0)
      {
LABEL_94:
        v291 = v760;
        *(v760 + 8 * (v308 >> 6) + 64) |= 1 << v308;
        *(*v291[1].tree + 16 * v308) = v305;
        *(*v291[1].tester + 8 * v308) = v756;
        v320 = *v291->tree;
        v181 = __OFADD__(v320, 1);
        v321 = v320 + 1;
        if (v181)
        {
          goto LABEL_266;
        }

        *v291->tree = v321;
        goto LABEL_82;
      }

LABEL_81:
      v290 = v308;
      *(&v305 + 1), v309, v310, v311, v312, v313, v314, v315;
      v291 = v760;
      *(*(v760 + 56) + 8 * v290) = v756;
LABEL_82:
      v287 &= v287 - 1;
      v763 = v291;
      v284 = v750;
      continue;
    }

    break;
  }

  while (1)
  {
    v292 = v289 + 1;
    if (__OFADD__(v289, 1))
    {
      goto LABEL_249;
    }

    if (v292 >= v288)
    {
      break;
    }

    v287 = *(v284 + 8 * v292);
    ++v289;
    if (v287)
    {
      v289 = v292;
      goto LABEL_88;
    }
  }

  v323 = fpfs_current_or_default_log();
  v324 = v746;
  sub_1CF9E6128();
  v325 = v257;
  v326 = sub_1CF9E6108();
  v327 = sub_1CF9E7288();

  v328 = os_log_type_enabled(v326, v327);
  *(&v751 + 1) = v325;
  if (v328)
  {
    v329 = swift_slowAlloc();
    v330 = swift_slowAlloc();
    *&v760 = v330;
    *v329 = 136446210;
    v331 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
    swift_beginAccess();
    v332 = *&v325[v331];
    sub_1CF6FBEEC();

    v333 = sub_1CF9E6648();
    v335 = v334;
    v332, v334, v336, v337, v338, v339, v340, v341;
    v342 = sub_1CEFD0DF0(v333, v335, &v760);
    v325 = *(&v751 + 1);
    v335, v343, v344, v345, v346, v347, v348, v349;
    *(v329 + 4) = v342;
    _os_log_impl(&dword_1CEFC7000, v326, v327, "FPCK: FPDRTCReporting reconciliationTableBrokenInvariants %{public}s", v329, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v330);
    MEMORY[0x1D386CDC0](v330, -1, -1);
    MEMORY[0x1D386CDC0](v329, -1, -1);
  }

  v753(v324, v755);
  v350 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
  swift_beginAccess();
  v351 = *&v325[v350];
  v352 = v351 + 64;
  v353 = 1 << *(v351 + 32);
  v354 = -1;
  if (v353 < 64)
  {
    v354 = ~(-1 << v353);
  }

  v355 = v354 & *(v351 + 64);
  v356 = (v353 + 63) >> 6;
  *&v751 = 0x80000001CFA58E90;
  v752 = v351;

  v357 = 0;
  v750 = v352;
  while (2)
  {
    if (v355)
    {
LABEL_110:
      v361 = (v357 << 9) | (8 * __clz(__rbit64(v355)));
      v362 = *(*v752[1].tree + v361);
      v756 = *(*v752[1].tester + v361);
      v363 = sub_1CF7F5810(v362);
      v365 = v364;
      *&v760 = 0xD000000000000026;
      *(&v760 + 1) = v751;
      MEMORY[0x1D3868CC0](v363);
      v365, v366, v367, v368, v369, v370, v371, v372;
      v373 = v760;
      v374 = v763;
      v375 = swift_isUniquelyReferenced_nonNull_native();
      *&v760 = v374;
      v376 = sub_1CEFE4328(v373, *(&v373 + 1));
      v384 = *(v374 + 16);
      v385 = (v377 & 1) == 0;
      v181 = __OFADD__(v384, v385);
      v386 = v384 + v385;
      if (v181)
      {
        goto LABEL_260;
      }

      v387 = v377;
      if (*(v374 + 24) >= v386)
      {
        if ((v375 & 1) == 0)
        {
          v390 = v376;
          sub_1CF7D012C();
          v376 = v390;
          if ((v387 & 1) == 0)
          {
            goto LABEL_116;
          }

          goto LABEL_103;
        }
      }

      else
      {
        sub_1CF7C55FC(v386, v375);
        v376 = sub_1CEFE4328(v373, *(&v373 + 1));
        if ((v387 & 1) != (v377 & 1))
        {
          goto LABEL_283;
        }
      }

      if ((v387 & 1) == 0)
      {
LABEL_116:
        v359 = v760;
        *(v760 + 8 * (v376 >> 6) + 64) |= 1 << v376;
        *(*v359[1].tree + 16 * v376) = v373;
        *(*v359[1].tester + 8 * v376) = v756;
        v388 = *v359->tree;
        v181 = __OFADD__(v388, 1);
        v389 = v388 + 1;
        if (v181)
        {
          goto LABEL_267;
        }

        *v359->tree = v389;
        goto LABEL_104;
      }

LABEL_103:
      v358 = v376;
      *(&v373 + 1), v377, v378, v379, v380, v381, v382, v383;
      v359 = v760;
      *(*(v760 + 56) + 8 * v358) = v756;
LABEL_104:
      v355 &= v355 - 1;
      v763 = v359;
      v325 = *(&v751 + 1);
      v352 = v750;
      continue;
    }

    break;
  }

  while (1)
  {
    v360 = v357 + 1;
    if (__OFADD__(v357, 1))
    {
      goto LABEL_250;
    }

    if (v360 >= v356)
    {
      break;
    }

    v355 = *(v352 + 8 * v360);
    ++v357;
    if (v355)
    {
      v357 = v360;
      goto LABEL_110;
    }
  }

  v391 = fpfs_current_or_default_log();
  v392 = v745;
  sub_1CF9E6128();
  v393 = v325;
  v394 = sub_1CF9E6108();
  v395 = sub_1CF9E7288();

  v396 = &qword_1EC4C2000;
  if (os_log_type_enabled(v394, v395))
  {
    v397 = swift_slowAlloc();
    v398 = swift_slowAlloc();
    *&v760 = v398;
    *v397 = 136446210;
    v399 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredBackupManifestVsFSSnapshotDiffCounters;
    swift_beginAccess();
    v400 = *&v393[v399];
    sub_1CF6FC6EC();

    v401 = sub_1CF9E6648();
    v403 = v402;
    v400, v402, v404, v405, v406, v407, v408, v409;
    v410 = sub_1CEFD0DF0(v401, v403, &v760);
    v403, v411, v412, v413, v414, v415, v416, v417;
    *(v397 + 4) = v410;
    v396 = &qword_1EC4C2000;
    _os_log_impl(&dword_1CEFC7000, v394, v395, "FPCK: FPDRTCReporting backupManifestVsFSSnapshotDiff %{public}s", v397, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v398);
    MEMORY[0x1D386CDC0](v398, -1, -1);
    MEMORY[0x1D386CDC0](v397, -1, -1);
  }

  v753(v392, v755);
  v418 = v396[167];
  swift_beginAccess();
  v756 = v393;
  v419 = *&v393[v418];
  v420 = v419 + 64;
  v421 = 1 << *(v419 + 32);
  v422 = -1;
  if (v421 < 64)
  {
    v422 = ~(-1 << v421);
  }

  v423 = v422 & *(v419 + 64);
  v424 = (v421 + 63) >> 6;
  *(&v751 + 1) = 0x80000001CFA58EC0;
  v752 = v419;

  v425 = 0;
  v750 = v424;
  *&v751 = v420;
  while (2)
  {
    if (v423)
    {
LABEL_132:
      v429 = (v425 << 9) | (8 * __clz(__rbit64(v423)));
      v430 = *(*v752[1].tester + v429);
      v431 = sub_1CF7F55BC(*(*v752[1].tree + v429));
      v433 = v432;
      *&v760 = 0xD000000000000029;
      *(&v760 + 1) = *(&v751 + 1);
      MEMORY[0x1D3868CC0](v431);
      v433, v434, v435, v436, v437, v438, v439, v440;
      v441 = v760;
      v442 = v763;
      v443 = swift_isUniquelyReferenced_nonNull_native();
      *&v760 = v442;
      v444 = sub_1CEFE4328(v441, *(&v441 + 1));
      v452 = *(v442 + 16);
      v453 = (v445 & 1) == 0;
      v181 = __OFADD__(v452, v453);
      v454 = v452 + v453;
      if (v181)
      {
        goto LABEL_261;
      }

      v455 = v445;
      if (*(v442 + 24) >= v454)
      {
        if ((v443 & 1) == 0)
        {
          v458 = v444;
          sub_1CF7D012C();
          v444 = v458;
          if ((v455 & 1) == 0)
          {
            goto LABEL_138;
          }

          goto LABEL_125;
        }
      }

      else
      {
        sub_1CF7C55FC(v454, v443);
        v444 = sub_1CEFE4328(v441, *(&v441 + 1));
        if ((v455 & 1) != (v445 & 1))
        {
          goto LABEL_283;
        }
      }

      if ((v455 & 1) == 0)
      {
LABEL_138:
        v427 = v760;
        *(v760 + 8 * (v444 >> 6) + 64) |= 1 << v444;
        *(*v427[1].tree + 16 * v444) = v441;
        *(*v427[1].tester + 8 * v444) = v430;
        v456 = *v427->tree;
        v181 = __OFADD__(v456, 1);
        v457 = v456 + 1;
        if (v181)
        {
          goto LABEL_268;
        }

        *v427->tree = v457;
        goto LABEL_126;
      }

LABEL_125:
      v426 = v444;
      *(&v441 + 1), v445, v446, v447, v448, v449, v450, v451;
      v427 = v760;
      *(*(v760 + 56) + 8 * v426) = v430;
LABEL_126:
      v423 &= v423 - 1;
      v763 = v427;
      v424 = v750;
      v420 = v751;
      continue;
    }

    break;
  }

  while (1)
  {
    v428 = v425 + 1;
    if (__OFADD__(v425, 1))
    {
      goto LABEL_251;
    }

    if (v428 >= v424)
    {
      break;
    }

    v423 = *(v420 + 8 * v428);
    ++v425;
    if (v423)
    {
      v425 = v428;
      goto LABEL_132;
    }
  }

  v459 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
  v460 = v756;
  swift_beginAccess();
  v461 = 0;
  v462 = 0;
  v752 = v459;
  v463 = *&v460[v459];
  v464 = 1 << *(v463 + 32);
  v465 = -1;
  if (v464 < 64)
  {
    v465 = ~(-1 << v464);
  }

  v466 = v465 & *(v463 + 64);
  v467 = (v464 + 63) >> 6;
  do
  {
    if (v466)
    {
      v468 = v461;
    }

    else
    {
      do
      {
        v468 = v461 + 1;
        if (__OFADD__(v461, 1))
        {
          goto LABEL_252;
        }

        if (v468 >= v467)
        {
          goto LABEL_154;
        }

        v466 = *(v463 + 64 + 8 * v468);
        ++v461;
      }

      while (!v466);
      v461 = v468;
    }

    v469 = __clz(__rbit64(v466));
    v466 &= v466 - 1;
    v470 = *(*(v463 + 56) + ((v468 << 9) | (8 * v469)));
    v181 = __OFADD__(v462, v470);
    v462 += v470;
  }

  while (!v181);
  __break(1u);
LABEL_154:
  v471 = v763;
  v472 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v471;
  sub_1CF1D20F4(v462, 0xD00000000000001ELL, 0x80000001CFA58EF0, v472);
  v473 = v760;
  v474 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;
  swift_beginAccess();
  v475 = 0;
  v476 = 0;
  *(&v751 + 1) = v474;
  v477 = *&v460[v474];
  v478 = 1 << *(v477 + 32);
  v479 = -1;
  if (v478 < 64)
  {
    v479 = ~(-1 << v478);
  }

  v480 = v479 & *(v477 + 64);
  v481 = (v478 + 63) >> 6;
  do
  {
    if (v480)
    {
      v482 = v475;
    }

    else
    {
      do
      {
        v482 = v475 + 1;
        if (__OFADD__(v475, 1))
        {
          goto LABEL_253;
        }

        if (v482 >= v481)
        {
          goto LABEL_166;
        }

        v480 = *(v477 + 64 + 8 * v482);
        ++v475;
      }

      while (!v480);
      v475 = v482;
    }

    v483 = __clz(__rbit64(v480));
    v480 &= v480 - 1;
    v484 = *(*(v477 + 56) + ((v482 << 9) | (8 * v483)));
    v181 = __OFADD__(v476, v484);
    v476 += v484;
  }

  while (!v181);
  __break(1u);
LABEL_166:
  v485 = swift_isUniquelyReferenced_nonNull_native();
  *&v760 = v473;
  sub_1CF1D20F4(v476, 0xD000000000000019, 0x80000001CFA58F10, v485);
  v486 = v760;
  v763 = v760;
  v487 = fpfs_current_or_default_log();
  v488 = v744;
  sub_1CF9E6128();
  v489 = sub_1CF9E6108();
  v490 = sub_1CF9E7288();
  if (os_log_type_enabled(v489, v490))
  {
    v491 = swift_slowAlloc();
    *v491 = 0;
    _os_log_impl(&dword_1CEFC7000, v489, v490, "FPCK: FPDRTCReporting remainingDiskBrokenInvariants", v491, 2u);
    MEMORY[0x1D386CDC0](v491, -1, -1);
  }

  *&v751 = v754 + 8;
  v753(v488, v755);
  v492 = *&v748[v743];
  v493 = 1 << *(v492 + 32);
  v494 = -1;
  if (v493 < 64)
  {
    v494 = ~(-1 << v493);
  }

  v495 = v494 & *(v492 + 64);
  v496 = (v493 + 63) >> 6;
  v750 = 0x80000001CFA58F30;

  v754 = 0;
  v497 = 0;
  while (2)
  {
    while (2)
    {
      if (v495)
      {
        goto LABEL_176;
      }

      while (2)
      {
        v498 = v497 + 1;
        if (__OFADD__(v497, 1))
        {
          goto LABEL_254;
        }

        if (v498 >= v496)
        {

          v541 = fpfs_current_or_default_log();
          v542 = v742;
          sub_1CF9E6128();
          v543 = sub_1CF9E6108();
          v544 = sub_1CF9E7288();
          if (os_log_type_enabled(v543, v544))
          {
            v545 = swift_slowAlloc();
            *v545 = 0;
            _os_log_impl(&dword_1CEFC7000, v543, v544, "FPCK: FPDRTCReporting remainingFSSnapshotDiffs", v545, 2u);
            MEMORY[0x1D386CDC0](v545, -1, -1);
          }

          v753(v542, v755);
          v546 = *&v749[v740];
          v547 = 1 << *(v546 + 32);
          v548 = -1;
          if (v547 < 64)
          {
            v548 = ~(-1 << v547);
          }

          v549 = v548 & *(v546 + 64);
          v550 = (v547 + 63) >> 6;
          v753 = 0x80000001CFA58F60;

          v755 = 0;
          v551 = 0;
          while (1)
          {
            do
            {
              if (!v549)
              {
                while (1)
                {
                  v552 = v551 + 1;
                  if (__OFADD__(v551, 1))
                  {
                    break;
                  }

                  if (v552 >= v550)
                  {

                    MEMORY[0x1EEE9AC00](v595);
                    *&v738[-16] = &v763;

                    sub_1CF6F3B04(v596, sub_1CF6FC694);
                    v486, v597, v598, v599, v600, v601, v602, v603;
                    v604 = v763;
                    sub_1CF7BB480(v763);
                    v606 = v605;
                    v607 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions;
                    v608 = v756;
                    swift_beginAccess();
                    v609 = *&v608[v607];
                    if (!*v609->tree)
                    {
LABEL_240:
                      if (v739)
                      {
                        v703 = *&v608[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_domainUserInfo];
                        if (v703)
                        {
                          *&v757 = 0x6F6974617267696DLL;
                          *(&v757 + 1) = 0xEB0000000044496ELL;
                          sub_1CF9E7898();
                          sub_1CF905118(&v760, v703, &v758);
                          sub_1CF027318(&v760);
                          if (v759)
                          {
                            v704 = MEMORY[0x1E69E6158];
                            if (swift_dynamicCast())
                            {
                              v761 = v704;
                              v762 = MEMORY[0x1E69E6160];
                              v760 = v757;
                              sub_1CF054EA0(&v760, &v758);
                              v705 = swift_isUniquelyReferenced_nonNull_native();
                              *&v757 = v606;
                              v706 = __swift_mutable_project_boxed_opaque_existential_1(&v758, v759);
                              v707 = MEMORY[0x1EEE9AC00](v706);
                              v709 = &v738[-((v708 + 15) & 0xFFFFFFFFFFFFFFF0)];
                              (*(v710 + 16))(v709, v707);
                              sub_1CF6F5920(*v709, v709[1], 0x7267694D67616964, 0xEF44496E6F697461, v705, &v757);
                              __swift_destroy_boxed_opaque_existential_1(&v758);
                              v608 = v756;
                              v606 = v757;
                            }
                          }

                          else
                          {
                            sub_1CEFCCC44(&v758, &unk_1EC4BEC50, &qword_1CF9FB4B0);
                          }
                        }
                      }

                      v711 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                      v713 = v712;
                      v714 = *&v608[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_volumeRole];
                      v761 = MEMORY[0x1E69E7668];
                      v762 = MEMORY[0x1E69E7670];
                      LODWORD(v760) = v714;
                      sub_1CF054EA0(&v760, &v758);
                      v715 = swift_isUniquelyReferenced_nonNull_native();
                      *&v757 = v606;
                      v716 = __swift_mutable_project_boxed_opaque_existential_1(&v758, v759);
                      v717 = MEMORY[0x1EEE9AC00](v716);
                      v719 = &v738[-((v718 + 15) & 0xFFFFFFFFFFFFFFF0)];
                      (*(v720 + 16))(v719, v717);
                      sub_1CF6F5B10(*v719, v711, v713, v715, &v757);
                      __swift_destroy_boxed_opaque_existential_1(&v758);
                      v713, v721, v722, v723, v724, v725, v726, v727;
                      sub_1CF7BB6C4(v757);
                      v729 = v728;
                      v604, v730, v731, v732, v733, v734, v735, v736;

                      sub_1CEFF7124(v754, 0);
                      sub_1CEFF7124(v755, 0);
                      return v729;
                    }

                    v752 = v604;

                    v753 = sub_1CF6F1C9C(v610, sub_1CF6F1F68, sub_1CF6F1F68);
                    v609, v611, v612, v613, v614, v615, v616, v617;
                    v618 = *&v608[v607];

                    v620 = sub_1CF6F1C9C(v619, sub_1CF6F1E0C, sub_1CF6F1E0C);
                    v618, v621, v622, v623, v624, v625, v626, v627;
                    v628 = v620;
                    v629 = 0;
                    v630 = v628 + 64;
                    v631 = 1 << v628[32];
                    v632 = -1;
                    if (v631 < 64)
                    {
                      v632 = ~(-1 << v631);
                    }

                    v633 = v632 & *(v628 + 8);
                    v634 = (v631 + 63) >> 6;
                    while (v633)
                    {
LABEL_226:
                      v635 = __clz(__rbit64(v633));
                      v633 &= v633 - 1;
                      v636 = (*(v628 + 6) + ((v629 << 10) | (16 * v635)));
                      v637 = *v636;
                      v638 = v636[1];
                      v639 = HIBYTE(v638) & 0xF;
                      if ((v638 & 0x2000000000000000) == 0)
                      {
                        v639 = v637 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v639)
                      {
                        if (((v638 >> 60) & ((v637 & 0x800000000000000) == 0)) != 0)
                        {
                          v641 = 11;
                        }

                        else
                        {
                          v641 = 7;
                        }

                        v750 = v628;
                        *&v751 = v641 | (v639 << 16);

                        *(&v751 + 1) = sub_1CF9E6B38();
                        v643 = v642;
                        sub_1CF9E69F8();
                        v749 = sub_1CF9E6B38();
                        *&v751 = v644;
                        *&v760 = 0;
                        *(&v760 + 1) = 0xE000000000000000;
                        sub_1CF9E6778();
                        v643, v645, v646, v647, v648, v649, v650, v651;
                        MEMORY[0x1D3868CC0](123, 0xE100000000000000);
                        v652 = sub_1CF9E69D8();
                        v638, v653, v654, v655, v656, v657, v658, v659;
                        if (__OFSUB__(v652, 2))
                        {
                          goto LABEL_280;
                        }

                        *&v758 = v652 - 2;
                        v660 = sub_1CF9E7F98();
                        v662 = v661;
                        MEMORY[0x1D3868CC0](v660);
                        v662, v663, v664, v665, v666, v667, v668, v669;
                        MEMORY[0x1D3868CC0](125, 0xE100000000000000);
                        v670 = v751;
                        sub_1CF9E6778();
                        v670, v671, v672, v673, v674, v675, v676, v677;
                        v678 = v760;
                        v679 = v753;
                        v680 = swift_isUniquelyReferenced_nonNull_native();
                        *&v760 = v679;
                        sub_1CF1D2C5C(1, v678, *(&v678 + 1), v680);
                        *(&v678 + 1), v681, v682, v683, v684, v685, v686, v687;
                        v753 = v760;
                        v628 = v750;
                      }
                    }

                    while (1)
                    {
                      v640 = v629 + 1;
                      if (__OFADD__(v629, 1))
                      {
                        goto LABEL_256;
                      }

                      if (v640 >= v634)
                      {

                        v688 = v753;
                        *&v760 = v753;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2838, &qword_1CFA12A68);
                        sub_1CEFCCCEC(&qword_1EC4C2840, &qword_1EC4C2838, &qword_1CFA12A68, MEMORY[0x1E69E5D90]);
                        sub_1CEFE4E68();
                        v689 = sub_1CF9E6C18();
                        v691 = v690;
                        v688, v690, v692, v693, v694, v695, v696, v697;
                        v761 = MEMORY[0x1E69E6158];
                        v762 = MEMORY[0x1E69E6160];
                        *&v760 = v689;
                        *(&v760 + 1) = v691;
                        sub_1CF054EA0(&v760, &v758);
                        LOBYTE(v689) = swift_isUniquelyReferenced_nonNull_native();
                        *&v757 = v606;
                        v698 = __swift_mutable_project_boxed_opaque_existential_1(&v758, v759);
                        v699 = MEMORY[0x1EEE9AC00](v698);
                        v701 = &v738[-((v700 + 15) & 0xFFFFFFFFFFFFFFF0)];
                        (*(v702 + 16))(v701, v699);
                        sub_1CF6F5920(*v701, v701[1], 0xD00000000000001BLL, 0x80000001CFA57A30, v689, &v757);
                        __swift_destroy_boxed_opaque_existential_1(&v758);
                        v606 = v757;
                        v608 = v756;
                        v604 = v752;
                        goto LABEL_240;
                      }

                      v633 = *&v630[8 * v640];
                      ++v629;
                      if (v633)
                      {
                        v629 = v640;
                        goto LABEL_226;
                      }
                    }
                  }

                  v549 = *(v546 + 64 + 8 * v552);
                  ++v551;
                  if (v549)
                  {
                    v551 = v552;
                    goto LABEL_204;
                  }
                }

LABEL_255:
                __break(1u);
LABEL_256:
                __break(1u);
LABEL_257:
                __break(1u);
LABEL_258:
                __break(1u);
LABEL_259:
                __break(1u);
LABEL_260:
                __break(1u);
LABEL_261:
                __break(1u);
LABEL_262:
                __break(1u);
LABEL_263:
                __break(1u);
LABEL_264:
                __break(1u);
LABEL_265:
                __break(1u);
LABEL_266:
                __break(1u);
LABEL_267:
                __break(1u);
LABEL_268:
                __break(1u);
LABEL_269:
                __break(1u);
                goto LABEL_270;
              }

LABEL_204:
              v553 = (v551 << 9) | (8 * __clz(__rbit64(v549)));
              v554 = *(*(v546 + 48) + v553);
              v555 = *(*(v546 + 56) + v553);
              v556 = *&v756[*(&v751 + 1)];
              v557 = *(v556 + 16);
              if (v557)
              {
                v558 = sub_1CF7D52B4(v554);
                if (v559)
                {
                  v557 = *(*(v556 + 56) + 8 * v558);
                }

                else
                {
                  v557 = 0;
                }
              }

              v181 = __OFSUB__(v555, v557);
              v560 = v555 - v557;
              if (v181)
              {
                goto LABEL_263;
              }

              v549 &= v549 - 1;
            }

            while (v560 < 1);
            v561 = sub_1CF7F5394(v554);
            v563 = v562;
            *&v760 = 0xD00000000000001DLL;
            *(&v760 + 1) = v753;
            MEMORY[0x1D3868CC0](v561);
            v563, v564, v565, v566, v567, v568, v569, v570;
            v571 = v760;
            sub_1CEFF7124(v755, 0);
            v486 = v763;
            LODWORD(v751) = swift_isUniquelyReferenced_nonNull_native();
            *&v760 = v486;
            v755 = *(&v571 + 1);
            v752 = v571;
            v572 = sub_1CEFE4328(v571, *(&v571 + 1));
            v580 = *v486->tree;
            v581 = (v573 & 1) == 0;
            v181 = __OFADD__(v580, v581);
            v582 = v580 + v581;
            if (v181)
            {
              goto LABEL_278;
            }

            if (*v486->tester >= v582)
            {
              if ((v751 & 1) == 0)
              {
                v593 = v572;
                v594 = v573;
                sub_1CF7D012C();
                v573 = v594;
                v572 = v593;
                v486 = v760;
              }

              v583 = v755;
              v763 = v486;
              if (v573)
              {
                goto LABEL_214;
              }
            }

            else
            {
              LODWORD(v750) = v573;
              sub_1CF7C55FC(v582, v751);
              v486 = v760;
              v583 = v755;
              v572 = sub_1CEFE4328(v752, v755);
              v585 = v584 & 1;
              v573 = v750;
              if ((v750 & 1) != v585)
              {
                goto LABEL_283;
              }

              v763 = v486;
              if (v750)
              {
LABEL_214:
                v586 = v572;
                v583, v573, v574, v575, v576, v577, v578, v579;
                v572 = v586;
                goto LABEL_220;
              }
            }

            *(&v486[2].super.isa + (v572 >> 6)) |= 1 << v572;
            v587 = (*v486[1].tree + 16 * v572);
            *v587 = v752;
            v587[1] = v583;
            *(*v486[1].tester + 8 * v572) = 0;
            v588 = *v486->tree;
            v181 = __OFADD__(v588, 1);
            v589 = v588 + 1;
            if (v181)
            {
              goto LABEL_282;
            }

            *v486->tree = v589;
LABEL_220:
            v590 = *v486[1].tester;
            v591 = *(v590 + 8 * v572);
            v181 = __OFADD__(v591, v560);
            v592 = v591 + v560;
            if (v181)
            {
              goto LABEL_279;
            }

            *(v590 + 8 * v572) = v592;
            v755 = sub_1CF193338;
          }
        }

        v495 = *(v492 + 64 + 8 * v498);
        ++v497;
        if (!v495)
        {
          continue;
        }

        break;
      }

      v497 = v498;
LABEL_176:
      v499 = (v497 << 9) | (8 * __clz(__rbit64(v495)));
      v500 = *(*(v492 + 48) + v499);
      v501 = *(*(v492 + 56) + v499);
      v502 = *(&v752->super.isa + v756);
      v503 = *(v502 + 16);
      if (v503)
      {
        v504 = sub_1CF7D52B0(v500);
        if (v505)
        {
          v503 = *(*(v502 + 56) + 8 * v504);
        }

        else
        {
          v503 = 0;
        }
      }

      v181 = __OFSUB__(v501, v503);
      v506 = v501 - v503;
      if (v181)
      {
        goto LABEL_262;
      }

      v495 &= v495 - 1;
      if (v506 < 1)
      {
        continue;
      }

      break;
    }

    v507 = sub_1CF7F5AAC(v500);
    v509 = v508;
    *&v760 = 0xD000000000000021;
    *(&v760 + 1) = v750;
    MEMORY[0x1D3868CC0](v507);
    v509, v510, v511, v512, v513, v514, v515, v516;
    v517 = v760;
    sub_1CEFF7124(v754, 0);
    v486 = v763;
    LODWORD(v747) = swift_isUniquelyReferenced_nonNull_native();
    *&v760 = v486;
    v754 = *(&v517 + 1);
    v748 = v517;
    v518 = sub_1CEFE4328(v517, *(&v517 + 1));
    v526 = *v486->tree;
    v527 = (v519 & 1) == 0;
    v181 = __OFADD__(v526, v527);
    v528 = v526 + v527;
    if (v181)
    {
      goto LABEL_276;
    }

    if (*v486->tester >= v528)
    {
      if ((v747 & 1) == 0)
      {
        v539 = v518;
        v540 = v519;
        sub_1CF7D012C();
        v519 = v540;
        v518 = v539;
        v486 = v760;
      }

      v529 = v754;
      v763 = v486;
      if ((v519 & 1) == 0)
      {
        goto LABEL_190;
      }

LABEL_186:
      v532 = v518;
      v529, v519, v520, v521, v522, v523, v524, v525;
      v518 = v532;
LABEL_192:
      v536 = *v486[1].tester;
      v537 = *(v536 + 8 * v518);
      v181 = __OFADD__(v537, v506);
      v538 = v537 + v506;
      if (v181)
      {
        goto LABEL_277;
      }

      *(v536 + 8 * v518) = v538;
      v754 = sub_1CF193338;
      continue;
    }

    break;
  }

  LODWORD(v746) = v519;
  sub_1CF7C55FC(v528, v747);
  v486 = v760;
  v529 = v754;
  v518 = sub_1CEFE4328(v748, v754);
  v531 = v530 & 1;
  v519 = v746;
  if ((v746 & 1) == v531)
  {
    v763 = v486;
    if (v746)
    {
      goto LABEL_186;
    }

LABEL_190:
    *(&v486[2].super.isa + (v518 >> 6)) |= 1 << v518;
    v533 = (*v486[1].tree + 16 * v518);
    *v533 = v748;
    v533[1] = v529;
    *(*v486[1].tester + 8 * v518) = 0;
    v534 = *v486->tree;
    v181 = __OFADD__(v534, 1);
    v535 = v534 + 1;
    if (!v181)
    {
      *v486->tree = v535;
      goto LABEL_192;
    }

LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
  }

LABEL_283:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF6CF14C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1CF5174A4(2);
  v10 = v6;

  v7 = v10;
  if (v10)
  {
    v8 = [v10 integerValue];
    v7 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 == 0;

  sub_1CF1C8E7C(v8, v9, a1, a2);
}

uint64_t sub_1CF6CF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a4;
  v6 = sub_1CF9E6118();
  v111 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v103 - v13;
  v15 = *&v4[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_isInvalidated];

  LOBYTE(v15) = v15(v16);

  if (v15)
  {
    return 0;
  }

  v18 = *&v4[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_shouldPause];
  if (!v18)
  {
    return 1;
  }

  v19 = v18();
  v20 = v19;
  v21 = *(&v19->isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore);
  if (*(&v19->isa + OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause) != 1)
  {
    if (v21)
    {
      v54 = v21;
      sub_1CEFF7124(v18, v109);
    }

    else
    {
      sub_1CEFF7124(v18, v109);
    }

    return 1;
  }

  v108 = v19;
  if (v21)
  {
    v107 = v21;
    v22 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v23 = v5;
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E7288();

    v104 = v25;
    v106 = v24;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v105 = v23;
      v27 = v26;
      v103 = swift_slowAlloc();
      v112 = v103;
      *v27 = 136446722;
      v29 = *&v105[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v28 = *&v105[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v30 = sub_1CEFD0DF0(v29, v28, &v112);
      v28, v31, v32, v33, v34, v35, v36, v37;
      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v38 = sub_1CF9E7988();
      v40 = v39;
      v41 = sub_1CEFD0DF0(v38, v39, &v112);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v27 + 14) = v41;
      v49 = v106;
      v50 = v107;
      *(v27 + 22) = 2048;
      *(v27 + 24) = v110;
      _os_log_impl(&dword_1CEFC7000, v49, v104, "🧹 FPCK %{public}s pausing mid-run (%s:%lu) because pause checker indicated", v27, 0x20u);
      v51 = v103;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v51, -1, -1);
      v52 = v27;
      v23 = v105;
      MEMORY[0x1D386CDC0](v52, -1, -1);

      v53 = *(v111 + 8);
      v53(v11, v6);
    }

    else
    {

      v53 = *(v111 + 8);
      v53(v11, v6);
      v50 = v107;
    }

    sub_1CF9E74A8();
    v84 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v85 = v23;
    v86 = sub_1CF9E6108();
    v87 = v50;
    v88 = sub_1CF9E7288();

    if (os_log_type_enabled(v86, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v112 = v90;
      *v89 = 136446210;
      v91 = &v85[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v92 = *&v85[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v93 = *(v91 + 1);

      v94 = sub_1CEFD0DF0(v92, v93, &v112);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v89 + 4) = v94;
      _os_log_impl(&dword_1CEFC7000, v86, v88, "🧹 FPCK %{public}s resuming mid-run", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x1D386CDC0](v90, -1, -1);
      MEMORY[0x1D386CDC0](v89, -1, -1);
      sub_1CEFF7124(v18, v109);

      v102 = v107;
    }

    else
    {
      sub_1CEFF7124(v18, v109);

      v102 = v108;
    }

    v53(v8, v6);
    return 1;
  }

  v55 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v56 = v5;
  v57 = sub_1CF9E6108();
  v58 = sub_1CF9E7288();

  v107 = v57;
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v112 = v106;
    *v59 = 136446722;
    v60 = &v56[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
    v62 = *&v56[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
    v61 = *(v60 + 1);

    v63 = sub_1CEFD0DF0(v62, v61, &v112);
    v61, v64, v65, v66, v67, v68, v69, v70;
    *(v59 + 4) = v63;
    *(v59 + 12) = 2080;
    v71 = sub_1CF9E7988();
    v73 = v72;
    v74 = sub_1CEFD0DF0(v71, v72, &v112);
    v73, v75, v76, v77, v78, v79, v80, v81;
    *(v59 + 14) = v74;
    *(v59 + 22) = 2048;
    *(v59 + 24) = v110;
    v82 = v107;
    _os_log_impl(&dword_1CEFC7000, v107, v58, "🧹 FPCK %{public}s skipping mid-run (%s:%lu), shouldPause missing semaphore", v59, 0x20u);
    v83 = v106;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v83, -1, -1);
    MEMORY[0x1D386CDC0](v59, -1, -1);
    sub_1CEFF7124(v18, v109);
  }

  else
  {
    sub_1CEFF7124(v18, v109);
  }

  (*(v111 + 8))(v14, v6);
  return 0;
}

void sub_1CF6CF8CC(_TtC18FileProviderDaemon8FSTester *a1)
{
  v81 = *MEMORY[0x1E69E9840];
  v78 = sub_1CF9E6118();
  v3 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4CD0, &unk_1CFA17EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA440;
  v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v80 = v8;
  v9 = MEMORY[0x1E69E6158];
  sub_1CF9E7898();
  v10 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);
  v11 = [v10 pathComponents];
  v12 = sub_1CF9E6D48();

  v13 = *v12->tree;
  v12, v14, v15, v16, v17, v18, v19, v20;
  if (v13 >= 2)
  {
    v21 = [v10 stringByDeletingLastPathComponent];
    if (!v21)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      v21 = sub_1CF9E6888();
      v23, v24, v25, v26, v27, v28, v29, v30;
    }

    v10 = v21;
  }

  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;

  *(inited + 96) = v9;
  *(inited + 72) = v31;
  *(inited + 80) = v33;
  v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v80 = v34;
  sub_1CF9E7898();
  v36 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion);
  v35 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerVersion + 8);
  *(inited + 168) = v9;
  *(inited + 144) = v36;
  *(inited + 152) = v35;

  v37 = sub_1CF4E0E00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0600, &unk_1CF9FE790);
  swift_arrayDestroy();
  v38 = sub_1CF9E6618();
  v37, v39, v40, v41, v42, v43, v44, v45;
  v46 = [v6 sessionWithCommonProperties_];

  if (v46)
  {
    v47 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v48 = sub_1CF9E6108();
    v49 = sub_1CF9E7288();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = *a1->tree;
      a1, v51, v52, v53, v54, v55, v56, v57;
      _os_log_impl(&dword_1CEFC7000, v48, v49, "FPDRTCReporting: postReport with %ld entries", v50, 0xCu);
      MEMORY[0x1D386CDC0](v50, -1, -1);
    }

    else
    {

      a1, v58, v59, v60, v61, v62, v63, v64;
    }

    (*(v3 + 8))(v5, v78);
    sub_1CF7BA9CC(a1);
    v66 = v65;
    v67 = sub_1CF9E6618();
    v66, v68, v69, v70, v71, v72, v73, v74;
    [v46 postReportWithCategory:2 type:1 payload:v67 error:0];

    v79 = 0;
    if ([v46 flushMessagesSynchronouslyWithError_])
    {
      v75 = v79;
    }

    else
    {
      v76 = v79;
      v77 = sub_1CF9E57F8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1CF6CFD64()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions + 1) & 0x10) != 0)
  {
    v6 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v7 = v0;
    v8 = sub_1CF9E6108();
    v9 = sub_1CF9E7288();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v24[1] = v1;
      v11 = v10;
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136446210;
      v13 = *&v7[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v14 = *&v7[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v15 = sub_1CEFD0DF0(v13, v14, &v25);
      v14, v16, v17, v18, v19, v20, v21, v22;
      *(v11 + 4) = v15;
      _os_log_impl(&dword_1CEFC7000, v8, v9, "🧹 FPCK %{public}s: sleeping 10s before continuing", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1D386CDC0](v12, -1, -1);
      MEMORY[0x1D386CDC0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    sleep(0xAu);
  }

  return 1;
}

uint64_t sub_1CF6CFF64()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reason) & 0x20) != 0)
  {
    return 1;
  }

  v6 = v3;
  v7 = sub_1CF6CC544();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_telemetryReport;
    swift_beginAccess();
    v10 = *(v0 + v9);
    *(v0 + v9) = v8;

    v10, v11, v12, v13, v14, v15, v16, v17;
    if ((*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions + 1) & 2) != 0)
    {
      sub_1CF6CF8CC(v8);
    }

    v8, v18, v19, v20, v21, v22, v23, v24;
    return 1;
  }

  v26 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v27 = sub_1CF9E6108();
  v28 = sub_1CF9E72A8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1CEFC7000, v27, v28, "🧹 ❌ Error generating telemetry report, report is empty", v29, 2u);
    MEMORY[0x1D386CDC0](v29, -1, -1);
  }

  (*(v2 + 8))(v5, v6);
  return 0;
}

void sub_1CF6D013C(_TtC18FileProviderDaemon8FSTester *a1, uint64_t a2, uint64_t inited, uint64_t a4, unint64_t *a5)
{
  v334 = a2;
  v352 = a4;
  v333 = a1;
  v363[25] = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E53C8();
  v326 = *(v7 - 8);
  v327 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v325 = &v324 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v328 = *(v9 - 8);
  v329 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v330 = &v324 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v324 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C23F8, &qword_1CFA11A58);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v343 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v354 = &v324 - v17;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2400, qword_1CFA11A60);
  v18 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v342 = &v324 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v341 = &v324 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v324 - v23;
  v355 = sub_1CF9E5A58();
  v332 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355);
  v353 = &v324 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v356 = &v324 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v345 = &v324 - v29;
  v30 = sub_1CF9E5CF8();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v324 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v35 = v34;
  v37 = *(v31 + 8);
  isEscapingClosureAtFileLocation = v31 + 8;
  v37(v33, v30);
  v42 = v35 * 1000000000.0;
  if (COERCE__INT64(fabs(v35 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    inited = sub_1CF1F76A8((v18 > 1), v13, 1, inited, v38, v39, v40, v41);
LABEL_37:
    *(inited + 16) = v13;
    v196 = inited + 40 * isEscapingClosureAtFileLocation;
    *(v196 + 32) = 6;
    *(v196 + 40) = sub_1CF6FCF9C;
    *(v196 + 48) = a5;
    *(v196 + 56) = 0;
    *(v196 + 64) = 0;
    v197 = swift_allocObject();
    *(v197 + 16) = v33;
    v198 = swift_allocObject();
    *(v198 + 16) = sub_1CF6F5244;
    *(v198 + 24) = v197;
    v199 = *(inited + 16);
    v18 = *(inited + 24);
    v204 = v33;
    if (v199 >= v18 >> 1)
    {
      inited = sub_1CF1F76A8((v18 > 1), (v199 + 1), 1, inited, v200, v201, v202, v203);
    }

    *(inited + 16) = v199 + 1;
    v205 = inited + 40 * v199;
    *(v205 + 32) = 7;
    *(v205 + 40) = sub_1CF6FCF9C;
    *(v205 + 48) = v198;
    *(v205 + 56) = 0;
    *(v205 + 64) = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v204;
    v207 = swift_allocObject();
    *(v207 + 16) = sub_1CF6FCFD0;
    *(v207 + 24) = v206;
    v208 = *(inited + 16);
    v209 = *(inited + 24);
    v214 = v204;
    if (v208 >= v209 >> 1)
    {
      inited = sub_1CF1F76A8((v209 > 1), (v208 + 1), 1, inited, v210, v211, v212, v213);
    }

    *(inited + 16) = v208 + 1;
    v215 = inited + 40 * v208;
    *(v215 + 32) = 8;
    *(v215 + 40) = sub_1CF6FCF9C;
    *(v215 + 48) = v207;
    *(v215 + 56) = 0;
    *(v215 + 64) = 0;
    v216 = *&v24[v335];
    if ((v216 & 0x10) != 0)
    {
      v217 = swift_allocObject();
      *(v217 + 16) = v214;
      v218 = swift_allocObject();
      *(v218 + 16) = sub_1CF6F674C;
      *(v218 + 24) = v217;
      v219 = *(inited + 16);
      v220 = *(inited + 24);
      v221 = v214;
      if (v219 >= v220 >> 1)
      {
        inited = sub_1CF1F76A8((v220 > 1), (v219 + 1), 1, inited, v222, v223, v224, v225);
      }

      *(inited + 16) = v219 + 1;
      v226 = inited + 40 * v219;
      *(v226 + 32) = 9;
      *(v226 + 40) = sub_1CF6FCF9C;
      *(v226 + 48) = v218;
      *(v226 + 56) = 0;
      *(v226 + 64) = 0;
      v216 = *&v24[v335];
    }

    if ((v216 & 0x20) != 0)
    {
      v227 = swift_allocObject();
      *(v227 + 16) = v214;
      v228 = swift_allocObject();
      *(v228 + 16) = sub_1CF6F672C;
      *(v228 + 24) = v227;
      v229 = *(inited + 16);
      v230 = *(inited + 24);
      v231 = v214;
      if (v229 >= v230 >> 1)
      {
        inited = sub_1CF1F76A8((v230 > 1), (v229 + 1), 1, inited, v232, v233, v234, v235);
      }

      *(inited + 16) = v229 + 1;
      v236 = inited + 40 * v229;
      *(v236 + 32) = 10;
      *(v236 + 40) = sub_1CF6FCF9C;
      *(v236 + 48) = v228;
      *(v236 + 56) = 0;
      *(v236 + 64) = 0;
    }

    v237 = swift_allocObject();
    *(v237 + 16) = v214;
    v238 = swift_allocObject();
    *(v238 + 16) = sub_1CF6F5264;
    *(v238 + 24) = v237;
    v13 = *(inited + 16);
    isEscapingClosureAtFileLocation = *(inited + 24);
    v239 = (v13 + 1);
    v33 = v214;
    if (v13 >= isEscapingClosureAtFileLocation >> 1)
    {
      inited = sub_1CF1F76A8((isEscapingClosureAtFileLocation > 1), (v13 + 1), 1, inited, v38, v39, v40, v41);
    }

    v24 = 0;
    *(inited + 16) = v239;
    v240 = inited + 40 * v13;
    *(v240 + 32) = 11;
    *(v240 + 40) = sub_1CF6FCF9C;
    *(v240 + 48) = v238;
    *(v240 + 56) = 0;
    *(v240 + 64) = 0;
    a5 = (inited + 64);
    while (1)
    {
      if (v24 >= *(inited + 16))
      {
        goto LABEL_69;
      }

      v241 = *(a5 - 1);
      isEscapingClosureAtFileLocation = *a5;
      v242 = *(a5 - 3);
      v13 = *(a5 - 2);
      LOBYTE(v360) = *(a5 - 32);

      swift_retain_n();
      v243 = v241;
      v244 = v346;
      v245 = sub_1CF6F5E20(&v360, v243, isEscapingClosureAtFileLocation, v33, v242, v13);
      v346 = v244;
      if (v244)
      {
        break;
      }

      v18 = v245;
      isEscapingClosureAtFileLocation, v246, v247, v248, v249, v250, v251, v252;

      if ((v18 & 1) == 0 || (sub_1CF6CF224("launch(fromURLs:options:contentBarrier:resultHandler:)", 54, 2, 913) & 1) == 0)
      {
        (*(v332 + 8))(v345, v355);

        goto LABEL_59;
      }

      ++v24;

      a5 += 5;
      if (v239 == v24)
      {
        (*(v332 + 8))(v345, v355);
LABEL_59:
        v260 = inited;
        goto LABEL_61;
      }
    }

    (*(v332 + 8))(v345, v355);

    inited, v261, v262, v263, v264, v265, v266, v267;
    v260 = isEscapingClosureAtFileLocation;
LABEL_61:
    v260, v253, v254, v255, v256, v257, v258, v259;
    return;
  }

  v324 = v13;
  v43 = v335;
  *&v335[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairStartTime] = v42;
  v331 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions;
  *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions] = v334;
  v44 = &v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler];
  *v44 = v352;
  v44[1] = a5;

  if (inited >= 1)
  {
    v45 = *&v43[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker];
    if (v45)
    {
      *(v45 + 64) = inited;
      *(v45 + 72) = 0;
    }
  }

  v46 = v333;
  v47 = *v333->tree;
  if (v47)
  {
    v349 = v18;
    v350 = a5;
    v48 = v332;
    v50 = v332 + 16;
    v49 = *(v332 + 16);
    v348 = (*(v332 + 80) + 32) & ~*(v332 + 80);
    v51 = v345;
    v52 = v355;
    v49(v345, v333 + v348, v355);
    v351 = v49;
    v352 = v50;
    v49(v24, v51, v52);
    (*(v48 + 56))(v24, 0, 1, v52);
    v53 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
    v54 = v335;
    swift_beginAccess();

    sub_1CEFDA9E0(v24, &v54[v53], &unk_1EC4BE310, qword_1CF9FCBE0);
    swift_endAccess();
    v55 = *&v54[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs];
    *&v54[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs] = v46;
    v55, v56, v57, v58, v59, v60, v61, v62;
    v359 = MEMORY[0x1E69E7CC0];
    v63 = v47 - 1;
    if (v47 == 1)
    {

      v71 = MEMORY[0x1E69E7CC0];
      v72 = v48;
LABEL_25:
      v125 = v335;
      v126 = *&v335[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots];
      *&v335[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots] = v71;
      v126, v64, v65, v66, v67, v68, v69, v70;
      v127 = *(v125 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
      v24 = v331;
      if (v127 && (*(v127 + 90) & 1) != 0)
      {
        v128 = fpfs_current_or_default_log();
        v129 = v330;
        sub_1CF9E6128();
        v130 = v125;
        v131 = sub_1CF9E6108();
        v132 = sub_1CF9E7288();

        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v360 = v134;
          *v133 = 136446466;
          v135 = *&v130[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
          v136 = *&v130[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

          v137 = sub_1CEFD0DF0(v135, v136, &v360);
          v136, v138, v139, v140, v141, v142, v143, v144;
          *(v133 + 4) = v137;
          *(v133 + 12) = 2080;
          v145 = FPCKOptions.description.getter(v334);
          v147 = v146;
          v148 = sub_1CEFD0DF0(v145, v146, &v360);
          v147, v149, v150, v151, v152, v153, v154, v155;
          *(v133 + 14) = v148;
          _os_log_impl(&dword_1CEFC7000, v131, v132, "🧹 FPCK %{public}s: launched with options: [%s] - will abort because sync is paused.", v133, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v134, -1, -1);
          MEMORY[0x1D386CDC0](v133, -1, -1);
        }

        (*(v328 + 8))(v129, v329);
        (*(v72 + 8))(v345, v355);
        return;
      }

      if ((*(v125 + v331) & 8) != 0 && (sub_1CF6CB8B4() & 1) == 0)
      {
        v156 = *&v24[v125];
        type metadata accessor for FSRepair();
        v157 = swift_allocObject();
        *(v157 + 16) = MEMORY[0x1E69E7CD0];
        *(v157 + 24) = (v156 & 0x800) != 0;
        *(v125 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair) = v157;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE860, &qword_1CF9FE750);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FC330;
      v158 = swift_allocObject();
      *(v158 + 16) = v125;
      v360 = 0;
      v361 = 0xE000000000000000;
      v159 = v125;
      v160 = v125;
      sub_1CF9E7948();
      v361, v161, v162, v163, v164, v165, v166, v167;
      v360 = 0xD00000000000002CLL;
      v361 = 0x80000001CFA56C70;
      v168 = FPCKOptions.description.getter(v334);
      v170 = v169;
      MEMORY[0x1D3868CC0](v168);
      v170, v171, v172, v173, v174, v175, v176, v177;
      MEMORY[0x1D3868CC0](23901, 0xE200000000000000);
      v178 = v360;
      v179 = v361;
      v180 = swift_allocObject();
      *(v180 + 16) = sub_1CF6F516C;
      *(v180 + 24) = v158;
      *(inited + 32) = 1;
      *(inited + 40) = sub_1CF6F5194;
      *(inited + 48) = v180;
      *(inited + 56) = v178;
      *(inited + 64) = v179;
      v181 = swift_allocObject();
      *(v181 + 16) = v160;
      v182 = swift_allocObject();
      *(v182 + 16) = sub_1CF6F51AC;
      *(v182 + 24) = v181;
      *(inited + 72) = 2;
      *(inited + 80) = sub_1CF6FCF9C;
      *(inited + 88) = v182;
      *(inited + 96) = 0;
      *(inited + 104) = 0;
      v183 = swift_allocObject();
      *(v183 + 16) = v160;
      v184 = swift_allocObject();
      *(v184 + 16) = sub_1CF6F51D4;
      *(v184 + 24) = v183;
      *(inited + 112) = 3;
      *(inited + 120) = sub_1CF6FCF9C;
      *(inited + 128) = v184;
      *(inited + 136) = 0;
      *(inited + 144) = 0;
      v185 = swift_allocObject();
      *(v185 + 16) = v160;
      v186 = swift_allocObject();
      *(v186 + 16) = sub_1CF6F51F4;
      *(v186 + 24) = v185;
      *(inited + 152) = 4;
      *(inited + 160) = sub_1CF6FCF9C;
      *(inited + 168) = v186;
      *(inited + 176) = 0;
      *(inited + 184) = 0;
      if ((v24[v159 + 1] & 4) != 0)
      {
        v188 = swift_allocObject();
        *(v188 + 16) = v160;
        v189 = swift_allocObject();
        *(v189 + 16) = sub_1CF6F6774;
        *(v189 + 24) = v188;
        v190 = v160;
        inited = sub_1CF1F76A8(1, 5, 1, inited, v191, v192, v193, v194);
        *(inited + 16) = 5;
        *(inited + 192) = 5;
        *(inited + 200) = sub_1CF6FCF9C;
        *(inited + 208) = v189;
        *(inited + 216) = 0;
        *(inited + 224) = 0;
      }

      else
      {
        v187 = v160;
      }

      v195 = swift_allocObject();
      *(v195 + 16) = v160;
      a5 = swift_allocObject();
      a5[2] = sub_1CF6F521C;
      a5[3] = v195;
      isEscapingClosureAtFileLocation = *(inited + 16);
      v18 = *(inited + 24);
      v13 = isEscapingClosureAtFileLocation + 1;
      v33 = v160;
      if (isEscapingClosureAtFileLocation < v18 >> 1)
      {
        goto LABEL_37;
      }

      goto LABEL_73;
    }

    v81 = *(v48 + 72);
    v339 = v362;
    v340 = (v349 + 7);
    v337 = (v349 + 6);
    v338 = (v48 + 8);
    swift_bridgeObjectRetain_n();
    v336 = v81;
    v13 = v46 + v81 + v348;
    v71 = MEMORY[0x1E69E7CC0];
    v82 = v354;
    v83 = v344;
    while (1)
    {
      v347 = v71;
      v348 = v63;
      v84 = v355;
      v85 = v351;
      v351(v356, v13, v355);
      v86 = v353;
      v85(v353, v345, v84);
      v350 = type metadata accessor for FPCKDetachedRoot(0);
      v24 = objc_allocWithZone(v350);
      v87 = sub_1CF9E5A18();
      a5 = v88;
      v349 = &v324;
      v89 = MEMORY[0x1EEE9AC00](v87);
      v322 = v86;
      (*v340)(v82, 1, 1, v83, v89);
      v363[0] = 0;
      v18 = swift_allocObject();
      *(v18 + 16) = v82;
      *(v18 + 24) = sub_1CF6FCF28;
      *(v18 + 32) = &v324 - 4;
      *(v18 + 40) = v363;
      v33 = swift_allocObject();
      v33[2] = sub_1CF6FCF1C;
      v33[3] = v18;
      v362[2] = sub_1CF6FCFCC;
      v362[3] = v33;
      v360 = MEMORY[0x1E69E9820];
      v361 = 1107296256;
      v362[0] = sub_1CF005DF8;
      v362[1] = &block_descriptor_109_0;
      inited = _Block_copy(&v360);

      sub_1CF9E6978();
      LODWORD(v71) = fpfs_openat();

      _Block_release(inited);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      if (v363[0])
      {
        swift_willThrow();
        v94 = v354;
LABEL_67:
        v333, v118, v119, v120, v121, v122, v123, v124;
        swift_bridgeObjectRelease_n();
        v271 = *v338;
        v272 = v355;
        (*v338)(v356, v355);
        v271(v345, v272);
        sub_1CEFCCC44(v94, &qword_1EC4C23F8, &qword_1CFA11A58);
        v271(v353, v272);
        swift_deallocPartialClassInstance();
        v347, v273, v274, v275, v276, v277, v278, v279;
        return;
      }

      v94 = v354;
      if ((v71 & 0x80000000) != 0)
      {
        if (!MEMORY[0x1D38683F0](v90))
        {
          goto LABEL_76;
        }

        if (MEMORY[0x1D38683F0]() == 9939394)
        {
          [objc_opt_self() fp:2 errorForDataProtectionClass:?];
        }

        else
        {
          MEMORY[0x1D38683F0]();
          v268 = sub_1CF9E6138();
          if ((v268 & 0x100000000) != 0)
          {
            LODWORD(v360) = 22;
          }

          else
          {
            LODWORD(v360) = v268;
          }

          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v269 = v325;
          v270 = v327;
          sub_1CF9E57D8();
          sub_1CF9E53A8();
          (*(v326 + 8))(v269, v270);
        }

        swift_willThrow();
        goto LABEL_67;
      }

      v347 = v13;
      a5, v91, v92, v93, v38, v39, v40, v41;
      v95 = v343;
      sub_1CEFCCBDC(v94, v343, &qword_1EC4C23F8, &qword_1CFA11A58);
      v96 = a5;
      v97 = v344;
      if ((*v337)(v95, 1, v344) == 1)
      {
        __break(1u);
      }

      v96, v98, v99, v100, v101, v102, v103, v104;
      v105 = v341;
      sub_1CEFE55D0(v95, v341, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFCCC44(v94, &qword_1EC4C23F8, &qword_1CFA11A58);
      v106 = v355;
      v351(&v24[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_physicalLocation], v356, v355);
      v107 = v342;
      sub_1CEFCCBDC(v105, v342, &qword_1EC4C2400, qword_1CFA11A60);
      sub_1CEFE55D0(v107, &v24[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_logicalLocation], &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFCCBDC(v105, v107, &qword_1EC4C2400, qword_1CFA11A60);
      *&v24[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_inode] = *(v107 + *(v97 + 48));
      sub_1CEFCCC44(v107, &unk_1EC4BE310, qword_1CF9FCBE0);
      sub_1CEFE55D0(v105, v107, &qword_1EC4C2400, qword_1CFA11A60);
      v24[OBJC_IVAR____TtC18FileProviderDaemon16FPCKDetachedRoot_shouldRefreshBookmark] = *(v107 + *(v97 + 64));
      sub_1CEFCCC44(v107, &unk_1EC4BE310, qword_1CF9FCBE0);
      v358.receiver = v24;
      v358.super_class = v350;
      v108 = [(FSTester *)&v358 init];
      v109 = *v338;
      (*v338)(v356, v106);
      v109(v353, v106);
      v110 = v108;
      MEMORY[0x1D3868FA0]();
      v83 = v97;
      if (*((v359 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v359 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CF9E6D88();
      }

      sub_1CF9E6DE8();

      v71 = v359;
      v13 = v347 + v336;
      v63 = v348 - 1;
      v82 = v354;
      if (v348 == 1)
      {
        v333, v111, v112, v113, v114, v115, v116, v117;
        v72 = v332;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v71 = sub_1CF9E6888();
  a5 = sub_1CF9E6D28();
  v73 = FPInvalidParameterError();

  if (v73)
  {
    swift_willThrow();
  }

  else
  {
    __break(1u);
LABEL_76:
    a5, v74, v75, v76, v77, v78, v79, v80;
    v360 = 0;
    v361 = 0xE000000000000000;
    sub_1CF9E7948();
    v361, v280, v281, v282, v283, v284, v285, v286;
    v360 = 0xD00000000000001ALL;
    v361 = 0x80000001CFA2DF30;
    v357 = v71;
    v287 = sub_1CF9E7F98();
    v289 = v288;
    MEMORY[0x1D3868CC0](v287);
    v289, v290, v291, v292, v293, v294, v295, v296;
    MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
    v297 = v360;
    v298 = v361;
    v299 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v300 = sub_1CF9E6108();
    v301 = sub_1CF9E72B8();
    v298, v302, v303, v304, v305, v306, v307, v308;
    if (os_log_type_enabled(v300, v301))
    {
      v309 = swift_slowAlloc();
      v310 = swift_slowAlloc();
      v360 = v310;
      *v309 = 136315650;
      v311 = sub_1CF9E7988();
      v313 = v312;
      v314 = sub_1CEFD0DF0(v311, v312, &v360);
      v313, v315, v316, v317, v318, v319, v320, v321;
      *(v309 + 4) = v314;
      *(v309 + 12) = 2048;
      *(v309 + 14) = 315;
      *(v309 + 22) = 2080;
      *(v309 + 24) = sub_1CEFD0DF0(v297, v298, &v360);
      _os_log_impl(&dword_1CEFC7000, v300, v301, "[ASSERT] ‼️  %s:%lu: %s", v309, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v310, -1, -1);
      MEMORY[0x1D386CDC0](v309, -1, -1);
    }

    (*(v328 + 8))(v324, v329);
    v323 = 0;
    v322 = 315;
    sub_1CF9E7B68();
    __break(1u);
  }
}

uint64_t sub_1CF6D1B24(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 8);
  v6 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 24);
  v7 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 25);
  v8 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 26);
  v31 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext);
  v32 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1CEFDB088;
  v30 = &block_descriptor_366_0;
  v9 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_ioContext + 16);
  v10 = _Block_copy(&aBlock);

  aBlock = v10;
  v28 = v9;
  LOBYTE(v29) = v6;
  BYTE1(v29) = v7;
  BYTE2(v29) = v8;
  v11 = [objc_allocWithZone(FPFSChecker) init];
  v12 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
  swift_beginAccess();
  sub_1CEFCCBDC(a1 + v12, v4, &unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    __break(1u);
  }

  v15 = sub_1CF9E5928();
  (*(v14 + 8))(v4, v13);
  v16 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_detachedRoots);
  type metadata accessor for FPCKDetachedRoot(0);

  v17 = sub_1CF9E6D28();
  v16, v18, v19, v20, v21, v22, v23, v24;
  [v11 enumerateItemsOnDiskAtURL:v15 detachedRoots:v17 usingFPFS:*(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_usingFPFS) ioContext:&aBlock delegate:a1];

  _Block_release(v10);
  return 1;
}

uint64_t sub_1CF6D1DDC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (v2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
    v4 = 1;
    if (v3)
    {
      v8 = 1;
      MEMORY[0x1EEE9AC00](a1);
      v7[2] = v5;
      v7[3] = &v8;
      v7[4] = v2;
      v7[5] = v3;

      sub_1CF70EBDC(0, sub_1CF6FCB08, v7);

      if (!v1)
      {
        v4 = v8;
      }
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_1CF6D1EC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1CF9E5868();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker))
  {
    v21 = v1;
    (*(v7 + 104))(v9, *MEMORY[0x1E6968F68], v6, v12);
    (*(v11 + 56))(v5, 1, 1, v10);

    sub_1CF9E5A38();
    type metadata accessor for SQLBackupManifest(0);
    swift_allocObject();
    v15 = v21;
    v16 = sub_1CF1BA200(v14);
    if (!v15)
    {
      MEMORY[0x1EEE9AC00](v16);
      *(&v19 - 2) = v20;
      *(&v19 - 1) = v17;
      sub_1CF70EBDC(1, sub_1CF6FCAB0, &v19 - 4);
    }
  }

  return 1;
}

BOOL sub_1CF6D22AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  if (*(a1 + 456) - 1 < 4)
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 496);
  if (v18 && v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((a4 & 1) == 0)
    {
      v20 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
      if (v20)
      {
        v21 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
        if (v21)
        {
          v22 = *(a1 + 248);
          if (v22)
          {
            v33 = v14;
            v35 = &v33;
            MEMORY[0x1EEE9AC00](v14);
            *(&v33 - 4) = v20;
            *(&v33 - 3) = v22;
            *(&v33 - 2) = a2;

            v34 = v22;
            v23 = objc_autoreleasePoolPush();
            sub_1CF803A54(v21, 2, "itemIsIndexed(entry:domainID:indexerRank:)", 42, 2, 0, sub_1CF6FC674, (&v33 - 6));
            v25 = v24;
            objc_autoreleasePoolPop(v23);
            if (v25)
            {
              v26 = v34;
              if (a3 == 0x7FFFFFFFFFFFFFFFLL)
              {
                sub_1CF9E5C88();
                sub_1CF9E5CE8();
                sub_1CF9E5C28();
                v28 = v27;
                v29 = *(v10 + 8);
                v30 = v33;
                v29(v12, v33);
                v31 = [objc_opt_self() defaultStore];
                v32 = [v31 timeForMarkingAnItemOnTheMacAsIndexed];

                v29(v16, v30);
                return v28 > v32;
              }

              else
              {

                return v18 < a3;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return v17;
}

void sub_1CF6D25B0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *(a2 + 32);
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1CF702E04(&v21, a3, a4, v12, v10, v11);
  if (v5)
  {

    *a5 = 0;
  }

  else
  {
    v15[12] = v33;
    v15[13] = v34;
    v15[14] = v35;
    v15[8] = v29;
    v15[9] = v30;
    v15[10] = v31;
    v15[11] = v32;
    v15[4] = v25;
    v15[5] = v26;
    v15[6] = v27;
    v15[7] = v28;
    v15[0] = v21;
    v15[1] = v22;
    v15[2] = v23;
    v15[3] = v24;
    v17[12] = v33;
    v18 = v34;
    v19 = v35;
    v17[8] = v29;
    v17[9] = v30;
    v17[10] = v31;
    v17[11] = v32;
    v17[4] = v25;
    v17[5] = v26;
    v17[6] = v27;
    v17[7] = v28;
    v17[0] = v21;
    v17[1] = v22;
    v16 = v36;
    v20 = v36;
    v17[2] = v23;
    v17[3] = v24;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v17) == 1)
    {
      *a5 = 0;
    }

    else
    {
      v13 = sub_1CEFF8538(v18, *(&v18 + 1), 0, v9, 0, 1u);
      if (v13 == 501)
      {
        v14 = fpfs_supports_indexAllRemoteItems();
        sub_1CEFCCC44(v15, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        *a5 = v14 ^ 1;
      }

      else if (v13 == 1003 || v13 == 502)
      {
        sub_1CEFCCC44(v15, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        *a5 = 1;
      }

      else
      {
        sub_1CEFCCC44(v15, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        *a5 = 0;
      }
    }
  }
}

double sub_1CF6D27BC(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, unint64_t *a7)
{
  v15 = a2;
  if (!*a1 && !*a2)
  {
    return result;
  }

  v16 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  swift_beginAccess();
  v21 = *(a3 + v16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(a3 + v16) = v23;
  v24 = a4[1];

  v25 = sub_1CF9E6888();
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33 = [v25 fp_prettyPath];

  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v36 = v35;

  isa = a6->super.isa;
  v8 = *v15;
  v15 = *a7;
  if (a6->super.isa | *a7)
  {
    v144 = v36;
    v145 = v34;
    sub_1CF9E7948();
    0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
    v44 = sub_1CF7F5AAC(isa);
    v46 = v45;
    MEMORY[0x1D3868CC0](v44);
    v46, v47, v48, v49, v50, v51, v52, v53;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v54 = sub_1CF7F5394(v15);
    v56 = v55;
    MEMORY[0x1D3868CC0](v54);
    v56, v57, v58, v59, v60, v61, v62, v63;
    v9 = 0x6578694620859CE2;
    a4 = 0xAC000000203A2064;
    a6 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v64, v65, v66, v67);
    v16 = *a6->tree;
    v23 = *a6->tester;
    a7 = (v16 + 1);
    if (v16 < v23 >> 1)
    {
LABEL_7:
      *a6->tree = a7;
      v68 = a6 + 16 * v16;
      *(v68 + 4) = v9;
      *(v68 + 5) = a4;
      v36 = v144;
      v34 = v145;
      goto LABEL_8;
    }

LABEL_17:
    a6 = sub_1CF0710C0((v23 > 1), a7, 1, a6, v17, v18, v19, v20);
    goto LABEL_7;
  }

  a6 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v69 = a5 & ~isa;
  if (v69 | v8 & ~v15)
  {
    sub_1CF9E7948();
    0xE000000000000000, v70, v71, v72, v73, v74, v75, v76;
    v77 = sub_1CF7F5AAC(v69);
    v79 = v78;
    MEMORY[0x1D3868CC0](v77);
    v79, v80, v81, v82, v83, v84, v85, v86;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v87 = sub_1CF7F5394(v8 & ~v15);
    v89 = v88;
    MEMORY[0x1D3868CC0](v87);
    v89, v90, v91, v92, v93, v94, v95, v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a6 = sub_1CF0710C0(0, *a6->tree + 1, 1, a6, v97, v98, v99, v100);
    }

    v102 = *a6->tree;
    v101 = *a6->tester;
    if (v102 >= v101 >> 1)
    {
      a6 = sub_1CF0710C0((v101 > 1), v102 + 1, 1, a6, v97, v98, v99, v100);
    }

    *a6->tree = v102 + 1;
    v103 = a6 + 16 * v102;
    *(v103 + 4) = 0x7466654C208C9DE2;
    *(v103 + 5) = 0xAB00000000203A20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v104 = sub_1CF9E67D8();
  v106 = v105;
  a6, v105, v107, v108, v109, v110, v111, v112;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);

  MEMORY[0x1D3868CC0](v104, v106);
  v36, v113, v114, v115, v116, v117, v118, v119;
  v106, v120, v121, v122, v123, v124, v125, v126;

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v36, v127, v128, v129, v130, v131, v132, v133;
  v134 = v34;
  v135 = *(a3 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);

  v135(v134, v36);
  v36, v136, v137, v138, v139, v140, v141, v142;

  return result;
}

void sub_1CF6D2BDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v5)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v8 = *(v5 + 24);
  if (!*v8->tree)
  {
    goto LABEL_7;
  }

  v9 = sub_1CEFE863C(a2);
  if ((v10 & 1) == 0)
  {
    v8, v10, v11, v12, v13, v14, v15, v16;
LABEL_7:
    sub_1CF4858E8(v30);
    memcpy(a4, v30, 0x208uLL);
    return;
  }

  v17 = *(*v8[1].tester + 8 * v9);

  v8, v18, v19, v20, v21, v22, v23, v24;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v29[2] = v17;
    v29[3] = a3;
    v27 = *(*v26 + 464);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC20, &unk_1CFA0A290);
    v27(1, "checker(_:handleItem:itemStatus:under:brokenInvariants:)", 56, 2, 2, sub_1CF6FCA78, v29, v28);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1CF6D2D88@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v23 = a3;
  v22 = sub_1CF9E6118();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = *(a2 + 8);
  v28 = *a2;
  v29 = v12;
  sub_1CF20A25C(&v28, 0, v11, v10, v9, v30);
  if (v3)
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = v3;
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E72A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      swift_getErrorValue();
      v19 = Error.prettyDescription.getter(v26, v27);
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "FPCK: error fetching the item in the reconciliation table: %{public}@", v17, 0xCu);
      sub_1CEFCCC44(v18, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v18, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v22);
    sub_1CF4858E8(v30);
    return memcpy(v23, v30, 0x208uLL);
  }

  else
  {
    memcpy(v25, v30, 0x210uLL);
    if (sub_1CF08B99C(v25) == 1)
    {
      sub_1CF4858E8(v24);
    }

    else
    {
      memcpy(v24, v25, sizeof(v24));
      nullsub_1();
    }

    return memcpy(v23, v24, 0x208uLL);
  }
}

uint64_t sub_1CF6D3100()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders;
  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders))
  {
    v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK____lazy_storage___vendorExcludedFolders);
  }

  else
  {
    v2 = sub_1CF6D3168(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;

    v3, v4, v5, v6, v7, v8, v9, v10;
  }

  return v2;
}

uint64_t sub_1CF6D3168(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = v2;
  v64[0] = 47;
  v64[1] = 0xE100000000000000;
  sub_1CEFE4E68();

  v4 = sub_1CF9E7638();
  v3, v5, v6, v7, v8, v9, v10, v11;
  v12 = *v4->tree;
  if (!v12)
  {

    v4, v57, v58, v59, v60, v61, v62, v63;
    return MEMORY[0x1E69E7CD0];
  }

  v13 = *&v4->tester[16 * v12];

  v4, v14, v15, v16, v17, v18, v19, v20;
  v21 = sub_1CF9E6888();
  swift_beginAccess();
  v29 = *(v1 + 24);
  if (!*v29->tree)
  {
LABEL_9:
    v13, v22, v23, v24, v25, v26, v27, v28;

    return MEMORY[0x1E69E7CD0];
  }

  v30 = sub_1CEFE863C(v21);
  if ((v31 & 1) == 0)
  {
    v29, v31, v32, v33, v34, v35, v36, v37;
    goto LABEL_9;
  }

  v38 = *(*v29[1].tester + 8 * v30);

  v29, v39, v40, v41, v42, v43, v44, v45;

  result = swift_weakLoadStrong();
  if (result)
  {
    v54 = result;
    v13, v47, v48, v49, v50, v51, v52, v53;
    v55 = *(*v54 + 464);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2830, &unk_1CFA12A58);
    v55(v64, 0, "vendorExcludedFolders", 21, 2, 2, sub_1CF6FC658, v38, v56);

    return v64[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF6D3380(void *a1@<X0>, void *a2@<X8>)
{
  v3 = 0;
  v4 = 1;
  v26 = MEMORY[0x1E69E7CD0];
  v5 = MEMORY[0x1E69E76D8];
  while (1)
  {
    v6 = v26;
    if (*(v26 + 16) > 0x249EFuLL)
    {
      break;
    }

    v7 = a1[3];
    v8 = a1[4];
    v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
    v10 = sub_1CF21A104(v3, v4 & 1, v9, v7, v8);
    if (v2)
    {

      break;
    }

    v18 = v10;
    v19 = v12;
    v24 = v11;
    v20 = *v10->tree;
    if (v20)
    {
      anon_8 = v10[1]._anon_8;
      do
      {
        if (*anon_8 == 1)
        {
          sub_1CF6E9C5C(v25, *(anon_8 - 1), &qword_1EC4C2898, &unk_1CFA12AE0, v5);
        }

        anon_8 += 520;
        --v20;
      }

      while (v20);
    }

    v18, v11, v12, v13, v14, v15, v16, v17;
    v4 = 0;
    v3 = v24;
    if (v19)
    {
      v6 = v26;
      break;
    }
  }

  *a2 = v6;
}

char *sub_1CF6D34D8(unint64_t a1)
{
  v2 = sub_1CF6D3100();
  if (a1 >> 62)
  {
    v3 = sub_1CF9E7818();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
LABEL_15:
    v15 = sub_1CF6F35CC(v4, v2);
    v4, v16, v17, v18, v19, v20, v21, v22;
    v2, v23, v24, v25, v26, v27, v28, v29;
    return ((v15 & 1) == 0);
  }

  v30 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680E14(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v30;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v3; ++i)
      {
        v7 = [MEMORY[0x1D3869C30](i a1)];
        swift_unknownObjectRelease();
        v9 = *(v30 + 16);
        v8 = *(v30 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1CF680E14((v8 > 1), v9 + 1, 1);
        }

        *(v30 + 16) = v9 + 1;
        *(v30 + 8 * v9 + 32) = v7;
      }
    }

    else
    {
      v10 = (a1 + 32);
      do
      {
        v11 = [*v10 unsignedLongLongValue];
        v13 = *(v30 + 16);
        v12 = *(v30 + 24);
        if (v13 >= v12 >> 1)
        {
          v14 = v11;
          sub_1CF680E14((v12 > 1), v13 + 1, 1);
          v11 = v14;
        }

        *(v30 + 16) = v13 + 1;
        *(v30 + 8 * v13 + 32) = v11;
        ++v10;
        --v3;
      }

      while (v3);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6D369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker))
  {
    v5 = *a4;
    swift_beginAccess();

    sub_1CF6E9C5C(&v7, v5, &qword_1EC4C2898, &unk_1CFA12AE0, MEMORY[0x1E69E76D8]);
    swift_endAccess();
  }

  return 1;
}

void sub_1CF6D37DC(void *a1, char a2, uint64_t (*a3)(void *, __n128), uint64_t a4, int a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v16 = a1;
    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();
    sub_1CF481340(a1, 1, v19, v20, v21, v22, v23, v24);
    if (os_log_type_enabled(v17, v18))
    {
      v25 = swift_slowAlloc();
      v47 = a4;
      v26 = a3;
      v27 = v25;
      v28 = swift_slowAlloc();
      *v27 = 67109378;
      *(v27 + 4) = a5;
      *(v27 + 8) = 2112;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 10) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "Failed gathering diag info for item with did %u: %@", v27, 0x12u);
      sub_1CEFCCC44(v28, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v28, -1, -1);
      v31 = v27;
      a3 = v26;
      MEMORY[0x1D386CDC0](v31, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v32 = sub_1CF9E57E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7F8, &unk_1CF9FE6C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FC3C0;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v34;
    v35 = [v32 domain];
    if (v35)
    {
      *(inited + 48) = v35;
      *(inited + 56) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 64) = v36;
      v37 = [v32 code];
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 88) = v38;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v39 = sub_1CF4E30B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE800, &qword_1CFA12A50);
      swift_arrayDestroy();
      (a3)(v39);

      v39, v40, v41, v42, v43, v44, v45, v46;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a3(a1, v12);
  }
}

void sub_1CF6D3B28(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a1;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = a1;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();
    sub_1CF481340(a1, 1, v20, v21, v22, v23, v24, v25);
    if (os_log_type_enabled(v18, v19))
    {
      v26 = swift_slowAlloc();
      v54 = a4;
      v27 = a3;
      v28 = v26;
      v29 = swift_slowAlloc();
      *v28 = 134218242;
      *(v28 + 4) = a5;
      *(v28 + 12) = 2112;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Failed gathering diag info for item with fid %llu: %@", v28, 0x16u);
      sub_1CEFCCC44(v29, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v29, -1, -1);
      v32 = v28;
      a3 = v27;
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v33 = sub_1CF9E57E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7F8, &unk_1CF9FE6C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FC3C0;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v35;
    v36 = [v33 domain];
    if (v36)
    {
      *(inited + 48) = v36;
      *(inited + 56) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 64) = v37;
      v38 = [v33 code];
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      *(inited + 80) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 88) = v39;
      *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v40 = sub_1CF4E30B4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE800, &qword_1CFA12A50);
      swift_arrayDestroy();
      a3(v40);

      v40, v41, v42, v43, v44, v45, v46, v47;
      sub_1CF481340(a1, 1, v48, v49, v50, v51, v52, v53);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (a3)(a1, v12);
  }
}

void sub_1CF6D3E88(const void *a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, char a9, unsigned __int8 a10, uint64_t a11, _TtC18FileProviderDaemon8FSTester *a12, uint64_t a13)
{
  v15 = v14;
  v16 = v13;
  v321 = a4;
  v322 = a8;
  v329 = a7;
  v332 = a6;
  v331 = a5;
  v336 = a3;
  v18 = sub_1CF9E5CF8();
  v324 = *(v18 - 8);
  v325 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v323 = &v318 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v320 = &v318 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v345, a1, 0x208uLL);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);
  memcpy(v344, a1, sizeof(v344));

  v24 = v23;
  sub_1CF6F9484(v344, v16, v22, v24);

  v333 = v24;
  sub_1CF9E72F8();
  v335 = v16;
  if (*(v16 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase))
  {
    memcpy(v344, v345, sizeof(v344));
    v25 = LOBYTE(v345[1]) != 255;

    v26 = sub_1CF1E44DC(v344, v25, 0, 0, a11, a12, a13);
    if (v15)
    {

      v27 = 0;
      v15 = 0;
    }

    else
    {
      v27 = v26;
    }
  }

  else
  {
    v27 = 0;
  }

  swift_beginAccess();
  if (!*(v22 + 16))
  {
    v28 = sub_1CF4E30B4(MEMORY[0x1E69E7CC0]);
    v343 = v28;
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_12:
    v330 = v15;

    goto LABEL_13;
  }

  v28 = *(v22 + 16);
  v343 = v28;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_9:

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v344[0] = v28;
  sub_1CF6F9A38(v27, sub_1CF6F37BC, 0, isUniquelyReferenced_nonNull_native, v344);
  if (v15)
  {
LABEL_63:
    v27, v30, v31, v32, v33, v34, v35, v36;

    __break(1u);
    return;
  }

  v330 = 0;
  v28, v30, v31, v32, v33, v34, v35, v36;
  v27, v37, v38, v39, v40, v41, v42, v43;
  v28 = v344[0];
  v343 = v344[0];
LABEL_13:
  v334 = v22;
  v44 = sub_1CF9E57E8();
  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v46 = v45;
  v47 = [v44 domain];
  if (!v47)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v48 = v47;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v344[0] = v28;
  sub_1CF1D1950(v48, v27, v46, v49);
  v46, v50, v51, v52, v53, v54, v55, v56;
  v57 = v344[0];
  v343 = v344[0];
  v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v60 = v59;
  v326 = v44;
  v61 = [v44 code];
  v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v344[0] = v57;
  sub_1CF1D1950(v62, v58, v60, v63);
  v60, v64, v65, v66, v67, v68, v69, v70;
  v343 = v344[0];
  memcpy(v344, v345, sizeof(v344));
  nullsub_1();
  v328 = v345[0];
  v327 = LOBYTE(v345[1]);
  sub_1CEFCCBDC(v345, v342, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v71 = sub_1CF9E57E8();
  v72 = v71;
  v73 = [v72 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v74 = sub_1CF9E6D48();

  if (!*v74->tree)
  {
    v338 = 0;
    v339 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v128 = v328;
    v74, v75, v76, v77, v78, v79, v80, v81;
    goto LABEL_33;
  }

  isa = v74[1].super.isa;
  v83 = isa;
  v74, v84, v85, v86, v87, v88, v89, v90;
  v342[0] = isa;
  v337 = sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v338 = 0;
    v339 = MEMORY[0x1E69E7CC0];
    v91 = 11;
    v319 = v72;
    v92 = v72;
    while (1)
    {
      v71 = v340;
      v93 = [v340 domain];
      v94 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v96 = v95;

      v342[0] = v94;
      v342[1] = v96;
      MEMORY[0x1D3868CC0](59, 0xE100000000000000);
      v340 = [v71 code];
      v97 = sub_1CF9E7F98();
      v99 = v98;
      MEMORY[0x1D3868CC0](v97);
      v99, v100, v101, v102, v103, v104, v105, v106;
      v107 = v342[0];
      v108 = v342[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v339 = sub_1CF0710C0(0, *v339->tree + 1, 1, v339, v109, v110, v111, v112);
      }

      v114 = *v339->tree;
      v113 = *v339->tester;
      if (v114 >= v113 >> 1)
      {
        v339 = sub_1CF0710C0((v113 > 1), v114 + 1, 1, v339, v109, v110, v111, v112);
      }

      v115 = v339;
      *v339->tree = v114 + 1;
      v116 = v115 + 16 * v114;
      *(v116 + 4) = v107;
      *(v116 + 5) = v108;
      if (!v338)
      {
        v117 = v71;
        v338 = v71;
      }

      if (!--v91)
      {
        v72 = v319;
        goto LABEL_32;
      }

      v118 = [v71 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v74 = sub_1CF9E6D48();

      if (!*v74->tree)
      {
        break;
      }

      v119 = v74[1].super.isa;
      v120 = v119;
      v74, v121, v122, v123, v124, v125, v126, v127;
      v342[0] = v119;
      v92 = v71;
      if (!swift_dynamicCast())
      {
        v72 = v319;
        goto LABEL_32;
      }
    }

    v72 = v319;
    goto LABEL_31;
  }

  v338 = 0;
  v339 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v128 = v328;
LABEL_33:
  memcpy(v342, v344, 0x208uLL);
  v340 = v128;
  v341 = v327;
  v129 = sub_1CF6D6908(v72, v342, &v340);
  if (v129)
  {
    v130 = v129;
    v131 = v72;

    v132 = v130;
    v133 = [v132 domain];
    v134 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v136 = v135;

    v342[0] = v134;
    v342[1] = v136;
    MEMORY[0x1D3868CC0](59, 0xE100000000000000);
    v137 = [v132 code];

    v340 = v137;
    v138 = sub_1CF9E7F98();
    v140 = v139;
    MEMORY[0x1D3868CC0](v138);
    v140, v141, v142, v143, v144, v145, v146, v147;
    v148 = v342[0];
    v149 = v342[1];
    v154 = v130;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v339 = sub_1CF0710C0(0, *v339->tree + 1, 1, v339, v150, v151, v152, v153);
    }

    v156 = *v339->tree;
    v155 = *v339->tester;
    if (v156 >= v155 >> 1)
    {
      v339 = sub_1CF0710C0((v155 > 1), v156 + 1, 1, v339, v150, v151, v152, v153);
    }

    v157 = v339;
    *v339->tree = v156 + 1;
    v158 = v157 + 16 * v156;
    *(v158 + 4) = v148;
    *(v158 + 5) = v149;
    v159 = v154;
    v72 = v131;
  }

  else
  {
    v159 = v338;
  }

  v160 = [v72 domain];
  v161 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v163 = v162;

  v342[0] = v161;
  v342[1] = v163;
  MEMORY[0x1D3868CC0](59, 0xE100000000000000);
  v340 = [v72 code];
  v164 = sub_1CF9E7F98();
  v166 = v165;
  MEMORY[0x1D3868CC0](v164);
  v166, v167, v168, v169, v170, v171, v172, v173;
  sub_1CEFCCC44(v345, &qword_1EC4BFBC0, &unk_1CF9FCAC0);

  v27 = v342[0];
  v174 = v342[1];
  v338 = v159;
  if (!v159)
  {
    goto LABEL_44;
  }

  v342[0] = v159;
  v175 = v159;
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v176 = v340;
  v177 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v179 = v178;
  v180 = v176;
  v181 = [v176 domain];
  if (!v181)
  {
    goto LABEL_62;
  }

  v182 = v181;
  v183 = v343;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v342[0] = v183;
  sub_1CF1D1950(v182, v177, v179, v184);
  v179, v185, v186, v187, v188, v189, v190, v191;
  v192 = v342[0];
  v343 = v342[0];
  v193 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v195 = v194;
  v196 = [v180 code];
  v197 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v198 = swift_isUniquelyReferenced_nonNull_native();
  v342[0] = v192;
  sub_1CF1D1950(v197, v193, v195, v198);

  v195, v199, v200, v201, v202, v203, v204, v205;
  v343 = v342[0];
LABEL_44:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2808, &qword_1CFA12A28);
  v206 = swift_allocObject();
  *(v206 + 16) = xmmword_1CF9FA450;
  *(v206 + 32) = v27;
  v207 = v206 + 32;
  *(v206 + 40) = v174;
  *(v206 + 48) = 1;
  *(v206 + 56) = v336;
  v208 = v332;
  *(v206 + 57) = v332;
  *(v206 + 58) = v329;
  *(v206 + 64) = v339;
  v209 = sub_1CF4E360C(v206);
  swift_setDeallocating();
  sub_1CEFCCC44(v207, &qword_1EC4C2810, &qword_1CFA12A30);
  swift_deallocClassInstance();
  sub_1CF9E5438();
  swift_allocObject();
  v210 = sub_1CF9E5428();
  v342[0] = v209;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2818, &qword_1CFA12A38);
  sub_1CF6FC740(&qword_1EC4C2820, &qword_1EC4C2818, &qword_1CFA12A38, sub_1CF6FC5B8);
  v211 = v330;
  v212 = sub_1CF9E5418();
  v220 = v211;
  if (v211)
  {

    v209, v221, v222, v223, v224, v225, v226, v227;
    v220 = 0;
  }

  else
  {
    v228 = v212;
    v229 = v213;
    v209, v213, v214, v215, v216, v217, v218, v219;
    sub_1CF9E6918();
    sub_1CF9E68D8();
    if (v230)
    {
      v231 = v230;
      v232 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v339 = 0;
      v233 = v210;
      v235 = v234;
      v236 = sub_1CF9E6888();
      v231, v237, v238, v239, v240, v241, v242, v243;
      v244 = v343;
      v245 = swift_isUniquelyReferenced_nonNull_native();
      v342[0] = v244;
      sub_1CF1D1950(v236, v232, v235, v245);
      v246 = v235;
      v210 = v233;
      v220 = v339;
      v246, v247, v248, v249, v250, v251, v252, v253;
      sub_1CEFE4714(v228, v229);
      v343 = v342[0];
    }

    else
    {
      sub_1CEFE4714(v228, v229);
    }
  }

  if (v336 == 2)
  {
    v254 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v256 = v255;
    v257 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v258 = v343;
    v259 = swift_isUniquelyReferenced_nonNull_native();
    v342[0] = v258;
    sub_1CF1D1950(v257, v254, v256, v259);
    v256, v260, v261, v262, v263, v264, v265, v266;
    v343 = v342[0];
  }

  if ((v331 & 1) == 0)
  {
    v267 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v269 = v268;
    v270 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v271 = [v270 initWithInteger_];
    v272 = v343;
    v273 = swift_isUniquelyReferenced_nonNull_native();
    v342[0] = v272;
    sub_1CF1D1950(v271, v267, v269, v273);
    v269, v274, v275, v276, v277, v278, v279, v280;
    v343 = v342[0];
  }

  if (v208 != 89)
  {
    v281 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v283 = v282;
    v284 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v285 = v343;
    v286 = swift_isUniquelyReferenced_nonNull_native();
    v342[0] = v285;
    sub_1CF1D1950(v284, v281, v283, v286);
    v283, v287, v288, v289, v290, v291, v292, v293;
    v343 = v342[0];
  }

  v294 = a10;
  if ((a9 & 1) == 0)
  {
    v295 = v323;
    sub_1CF9E5C88();
    v336 = a10;
    sub_1CF9E5C98();
    v297 = v296;
    v337 = v210;
    v298 = *(v324 + 8);
    v339 = v220;
    v299 = v325;
    v298(v295, v325);
    v300 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v335 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v302 = v301;
    sub_1CF9E5CC8();
    sub_1CF1C61B4(v295, 12, 8);
    v304 = v303;
    v298(v295, v299);
    sub_1CF1C8820(v304, v335, v302);
    v294 = v336;
  }

  if (v294 == 2)
  {
  }

  else
  {
    v305 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v307 = v306;
    v308 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v309 = v343;
    v310 = swift_isUniquelyReferenced_nonNull_native();
    v342[0] = v309;
    sub_1CF1D1950(v308, v305, v307, v310);

    v307, v311, v312, v313, v314, v315, v316, v317;
  }
}

void sub_1CF6D4E3C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  v6, v7, v8, v9, v10, v11, v12, v13;
  dispatch_group_leave(a3);
}

uint64_t sub_1CF6D4EA8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v207 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5648();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E5A58();
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 8);
  if (v17 == 255)
  {
    return 0;
  }

  v18 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v18)
  {
    return 0;
  }

  v199 = v9;
  v200 = a1;
  v201 = v14;
  v202 = v13;
  v203 = *a2;
  v19 = *(v4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v20 = v19;
  v21 = [v20 pathComponents];
  v22 = sub_1CF9E6D48();

  v23 = *v22->tree;
  v22, v24, v25, v26, v27, v28, v29, v30;
  if (v23 < 2)
  {
    v31 = *MEMORY[0x1E6967178];
  }

  else
  {
    v31 = [v20 lastPathComponent];
    if (!v31)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;
      v31 = sub_1CF9E6888();
      v33, v34, v35, v36, v37, v38, v39, v40;
    }
  }

  swift_beginAccess();
  v41 = *(v18 + 24);
  if (!*v41->tree)
  {
    goto LABEL_17;
  }

  v198 = v4;

  v42 = sub_1CEFE863C(v31);
  if ((v43 & 1) == 0)
  {
    v41, v43, v44, v45, v46, v47, v48, v49;
    goto LABEL_17;
  }

  v50 = *(*v41[1].tester + 8 * v42);

  v41, v51, v52, v53, v54, v55, v56, v57;
  if (v17)
  {
    v58 = v17 == 1;
    v59 = v198;
    v60 = v203;
    if (!v58)
    {
      v61 = objc_sync_enter(v50);
      if (v60)
      {
        if (!v61)
        {
          v62 = v50[20];

          v63 = objc_sync_exit(v50);
          if (!v63)
          {
            v64 = *(v62 + 48);

            if (v64)
            {

LABEL_17:

              return 0;
            }

            a3 = 0;
            goto LABEL_28;
          }

LABEL_73:
          MEMORY[0x1EEE9AC00](v63);
          *(&v197 - 2) = v50;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v197 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

LABEL_72:
        MEMORY[0x1EEE9AC00](v61);
        *(&v197 - 2) = v50;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v197 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      if (v61)
      {
        goto LABEL_72;
      }

      v63 = objc_sync_exit(v50);
      if (v63)
      {
        goto LABEL_73;
      }
    }

    a3 = 0;
    goto LABEL_29;
  }

  v61 = objc_sync_enter(v50);
  if (v61)
  {
    goto LABEL_72;
  }

  v63 = objc_sync_exit(v50);
  if (v63)
  {
    goto LABEL_73;
  }

  if (!GSLibraryResolveDocumentId2())
  {

    return 0;
  }

LABEL_28:
  v59 = v198;
LABEL_29:
  v206 = 0;
  v61 = objc_sync_enter(v50);
  if (v61)
  {
    goto LABEL_72;
  }

  v203 = v31;

  v63 = objc_sync_exit(v50);
  if (v63)
  {
    goto LABEL_73;
  }

  v66 = fpfs_fsgetpath();
  v67 = v206;
  if (v66 < 0 || !v206)
  {
    free(v206);

    return 0;
  }

  v197 = v50;
  v68 = [objc_opt_self() defaultManager];
  v69 = [v68 stringWithFileSystemRepresentation:v67 length:strlen(v67)];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v71 = v70;

  sub_1CF9E58B8();
  v71, v72, v73, v74, v75, v76, v77, v78;
  if (!faccessat(-2, v67, 4, 32))
  {
    v80 = faccessat(-2, v67, 2, 32);
    if (v80)
    {
      v79 = 8;
    }

    else
    {
      v79 = 9;
    }

    if (((v80 == 0) & a3) != 1)
    {
      goto LABEL_45;
    }

    v81 = [v200 userInfo];
    v82 = sub_1CF9E6638();

    if (*v82->tree && (v90 = sub_1CEFE4328(0xD000000000000013, 0x80000001CFA3C930), v59 = v198, (v83 & 1) != 0))
    {
      sub_1CEFD1104(*v82[1].tester + 32 * v90, v204);
      v82, v91, v92, v93, v94, v95, v96, v97;
      type metadata accessor for URLFileProtection(0);
      if (swift_dynamicCast())
      {
        v98 = v205;
        if (v205)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v82, v83, v84, v85, v86, v87, v88, v89;
    }

    v205 = 0;
LABEL_51:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    v112 = *MEMORY[0x1E695DAF0];
    *(inited + 32) = *MEMORY[0x1E695DAF0];
    v113 = v112;
    sub_1CEFF8A84(inited);
    v115 = v114;
    swift_setDeallocating();
    sub_1CF0081E0(inited + 32, type metadata accessor for URLResourceKey);
    sub_1CF9E58A8();
    v115, v116, v117, v118, v119, v120, v121, v122;
    v123 = sub_1CF9E55A8();
    (*(v199 + 8))(v11, v8);
    v124 = v205;
    v205 = v123;

    v98 = v205;
    v59 = v198;
    if (!v205)
    {
      v144 = 9;
LABEL_65:

      v79 = v144;
      goto LABEL_45;
    }

LABEL_52:
    v125 = v59;
    v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v128 = v127;
    v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v136 = v129;
    if (v126 == v130 && v128 == v129)
    {
      v128, v129, v130, v131, v132, v133, v134, v135;
      v136, v137, v138, v139, v140, v141, v142, v143;
      v144 = 11;
    }

    else
    {
      v145 = sub_1CF9E8048();
      v146 = v98;
      v128, v147, v148, v149, v150, v151, v152, v153;
      v136, v154, v155, v156, v157, v158, v159, v160;
      if (v145)
      {

        v144 = 11;
      }

      else
      {
        v161 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v163 = v162;
        v165 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v166 = v161;
        v167 = v164;
        if (v166 == v165 && v163 == v164)
        {

          v163, v168, v169, v170, v171, v172, v173, v174;
          v167, v175, v176, v177, v178, v179, v180, v181;
        }

        else
        {
          v182 = sub_1CF9E8048();

          v163, v183, v184, v185, v186, v187, v188, v189;
          v167, v190, v191, v192, v193, v194, v195, v196;
          if ((v182 & 1) == 0)
          {
            v144 = 9;
            goto LABEL_64;
          }
        }

        v144 = 12;
      }
    }

LABEL_64:
    v59 = v125;
    goto LABEL_65;
  }

  v79 = 10;
LABEL_45:
  v99 = *(v59 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURLs);
  if (*v99->tree && (v100 = , v101 = sub_1CF517830(v100), v99, v102, v103, v104, v105, v106, v107, v108, (v101 & 1) == 0))
  {
    sub_1CF6FC3E4();
    v109 = swift_allocError();
    *v110 = v79;
    *(v110 + 8) = 18;
    (*(v201 + 8))(v16, v202);
    free(v206);

    return v109;
  }

  else
  {
    (*(v201 + 8))(v16, v202);
    free(v206);

    return v79;
  }
}

uint64_t sub_1CF6D59E4(uint64_t a1)
{
  v145 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v133[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v133[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v133[-v11];
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v133[-v15];
  v17 = *(a1 + 8);
  if (v17 == 255)
  {
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v19 = sub_1CF9E6108();
    v20 = sub_1CF9E72A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v137[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v137);
      _os_log_impl(&dword_1CEFC7000, v19, v20, "%s: nil item ID", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
LABEL_12:
    sub_1CF6FC3E4();
    result = swift_allocError();
    *v52 = 13;
    *(v52 + 8) = 18;
    return result;
  }

  v23 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v23)
  {
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E72A8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v137[0] = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v137);
      _os_log_impl(&dword_1CEFC7000, v47, v48, "%s: nil fsSnapshotChecker", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1D386CDC0](v50, -1, -1);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    goto LABEL_12;
  }

  v136 = *a1;
  v24 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v25 = v24;
  v26 = [v25 pathComponents];
  v27 = sub_1CF9E6D48();

  v28 = *v27->tree;
  v27, v29, v30, v31, v32, v33, v34, v35;
  if (v28 < 2)
  {
    v36 = *MEMORY[0x1E6967178];
  }

  else
  {
    v36 = [v25 lastPathComponent];
    if (!v36)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v38 = v37;
      v36 = sub_1CF9E6888();
      v38, v39, v40, v41, v42, v43, v44, v45;
    }
  }

  swift_beginAccess();
  v53 = *(v23 + 24);
  if (!*v53->tree)
  {
    goto LABEL_20;
  }

  v54 = sub_1CEFE863C(v36);
  if ((v55 & 1) == 0)
  {
    v53, v55, v56, v57, v58, v59, v60, v61;
LABEL_20:
    v78 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v79 = sub_1CF9E6108();
    v80 = sub_1CF9E72A8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v137[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v137);
      _os_log_impl(&dword_1CEFC7000, v79, v80, "%s: nil fsTree", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1D386CDC0](v82, -1, -1);
      MEMORY[0x1D386CDC0](v81, -1, -1);
    }

    (*(v4 + 8))(v12, v3);
    sub_1CF6FC3E4();
    v83 = swift_allocError();
    *v84 = 13;
    *(v84 + 8) = 18;
    goto LABEL_23;
  }

  v135 = *(*v53[1].tester + 8 * v54);

  v53, v62, v63, v64, v65, v66, v67, v68;
  if (!v17)
  {
    0, v69, v70, v71, v72, v73, v74, v75;
    v77 = 0;
    v76 = v136;
    goto LABEL_36;
  }

  if (v17 == 1)
  {
    0, v69, v70, v71, v72, v73, v74, v75;
    v76 = 0;
    v77 = v136;
LABEL_36:
    v103 = v135;
    goto LABEL_37;
  }

  v85 = objc_sync_enter(v135);
  if (!v136)
  {
    if (v85)
    {
      MEMORY[0x1EEE9AC00](v85);
      v129 = &v133[-32];
      *&v133[-16] = v135;
      v130 = sub_1CF1C546C;
      goto LABEL_49;
    }

    v103 = v135;
    v104 = v135[20];

    v105 = objc_sync_exit(v103);
    if (v105)
    {
      MEMORY[0x1EEE9AC00](v105);
      v131 = &v133[-32];
      *&v133[-16] = v103;
      v132 = sub_1CF1C5468;
      goto LABEL_51;
    }

    v77 = *(v104 + 24);
    0, v106, v107, v108, v109, v110, v111, v112;

    v76 = 0;
LABEL_37:
    v113 = objc_sync_enter(v103);
    if (!v113)
    {
      v134 = v36;
      v114 = v103[20];

      v115 = objc_sync_exit(v103);
      if (!v115)
      {
        v116 = *(v114 + 16);

        v140[0] = v77;
        v140[1] = 0;
        v143 = 0;
        v142 = 0;
        v141 = v76;
        v144 = 0;
        v117 = sub_1CEFDADE0(v140, v116, 2129920);
        0, v118, v119, v120, v121, v122, v123, v124;
        v139 = 0u;
        v138 = 0u;
        memset(v137, 0, sizeof(v137));
        MEMORY[0x1EEE9AC00](v125);
        *&v133[-16] = v117;
        *&v133[-8] = v137;
        sub_1CEFE1894(sub_1CF6FCF48);
        v126 = v134;
        if ((DWORD1(v138) & 0x40000020) == 0x20)
        {
          sub_1CF6FC3E4();
          v128 = swift_allocError();
          *v127 = 14;
          *(v127 + 8) = 18;
        }

        else
        {
          v128 = 0;
        }

        v83 = v128;
        if ((v117 & 0x80000000) == 0)
        {
          close(v117);
        }

        return v83;
      }

      MEMORY[0x1EEE9AC00](v115);
      v131 = &v133[-32];
      *&v133[-16] = v135;
      v132 = sub_1CF1C5468;
LABEL_51:
      fp_preconditionFailure(_:file:line:)(v132, v131, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    MEMORY[0x1EEE9AC00](v113);
    v129 = &v133[-32];
    *&v133[-16] = v103;
    v130 = sub_1CF1C546C;
LABEL_49:
    fp_preconditionFailure(_:file:line:)(v130, v129, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  if (v85)
  {
    MEMORY[0x1EEE9AC00](v85);
    v129 = &v133[-32];
    *&v133[-16] = v135;
    v130 = sub_1CF1C5288;
    goto LABEL_49;
  }

  v86 = v135;
  v87 = v135[20];

  v88 = objc_sync_exit(v86);
  if (v88)
  {
    MEMORY[0x1EEE9AC00](v88);
    v131 = &v133[-32];
    *&v133[-16] = v135;
    v132 = sub_1CF1C5290;
    goto LABEL_51;
  }

  v77 = *(v87 + 40);
  v89 = *(v87 + 48);

  if ((v89 & 1) == 0)
  {
    0, v90, v91, v92, v93, v94, v95, v96;
    v76 = 0;
    goto LABEL_36;
  }

  v97 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v98 = sub_1CF9E6108();
  v99 = sub_1CF9E72A8();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v137[0] = v101;
    *v100 = 136315138;
    *(v100 + 4) = sub_1CEFD0DF0(0xD000000000000014, 0x80000001CFA58CF0, v137);
    _os_log_impl(&dword_1CEFC7000, v98, v99, "%s: failed to retrieve error for trash, it's inode is unexpectedly nil", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x1D386CDC0](v101, -1, -1);
    MEMORY[0x1D386CDC0](v100, -1, -1);
  }

  (*(v4 + 8))(v16, v3);
  sub_1CF6FC3E4();
  v83 = swift_allocError();
  *v102 = 13;
  *(v102 + 8) = 18;

LABEL_23:

  return v83;
}

uint64_t sub_1CF6D67AC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  LODWORD(v15) = sub_1CF9E52C8();
  sub_1CF196978();
  if (sub_1CF9E5658())
  {
    v15 = v3;
    v16 = v4;
    v5 = a1;
    v6 = 0;
  }

  else
  {
    LODWORD(v15) = sub_1CF9E52B8();
    if ((sub_1CF9E5658() & 1) == 0)
    {
      LODWORD(v15) = sub_1CF9E5388();
      if ((sub_1CF9E5658() & 1) == 0)
      {
        return 0;
      }

      v15 = v3;
      v16 = v4;
      return sub_1CF6D59E4(&v15);
    }

    v15 = v3;
    v16 = v4;
    v5 = a1;
    v6 = 1;
  }

  v7 = sub_1CF6D4EA8(v5, &v15, v6);
  v9 = v8;
  v10 = v8;
  sub_1CF6FC3E4();
  result = swift_allocError();
  v13 = 7;
  if (v10 == 255)
  {
    v14 = 18;
  }

  else
  {
    v13 = v7;
    v14 = v9;
  }

  *v12 = v13;
  *(v12 + 8) = v14;
  return result;
}

uint64_t sub_1CF6D6908(void *a1, const void *a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = [a1 domain];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;

  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v19 = v12;
  if (v11 == v8 && v12 == v10)
  {
    v10, v12, v13, v14, v15, v16, v17, v18;
    goto LABEL_8;
  }

  v21 = sub_1CF9E8048();
  v19, v22, v23, v24, v25, v26, v27, v28;
  if (v21)
  {
    v19 = v10;
LABEL_8:
    v19, v29, v30, v31, v32, v33, v34, v35;
    if ([a1 code] == 257)
    {
      memcpy(__dst, a2, sizeof(__dst));
      if (sub_1CF08B99C(__dst) != 1 && LOBYTE(__dst[1]) != 255)
      {
        v102 = __dst[0];
        v103 = __dst[1];
        v36 = sub_1CF6D4EA8(a1, &v102, 1u);
        if (v37 != -1)
        {
          v38 = v36;
          v39 = v37;
          sub_1CF6FC3E4();
          v40 = swift_allocError();
          *v41 = v38;
          *(v41 + 8) = v39;
          v102 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
          v42 = swift_dynamicCast();
          v43 = v101;
          goto LABEL_22;
        }
      }
    }

    return 0;
  }

  v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v45;
  if (v44 == v8 && v45 == v10)
  {
    v10, v45, v46, v47, v48, v49, v50, v51;
LABEL_20:
    v52, v62, v63, v64, v65, v66, v67, v68;
    __dst[0] = v5;
    LOBYTE(__dst[1]) = v6;
    result = sub_1CF6D67AC(a1, __dst);
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  v54 = sub_1CF9E8048();
  v52, v55, v56, v57, v58, v59, v60, v61;
  if (v54)
  {
    v52 = v10;
    goto LABEL_20;
  }

  v70 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v78 = v71;
  if (v70 == v8 && v71 == v10)
  {
    v10, v71, v72, v73, v74, v75, v76, v77;
    v78, v79, v80, v81, v82, v83, v84, v85;
  }

  else
  {
    v86 = sub_1CF9E8048();
    v10, v87, v88, v89, v90, v91, v92, v93;
    v78, v94, v95, v96, v97, v98, v99, v100;
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1CF6F9CD4(a1);
  if (!result)
  {
    return result;
  }

LABEL_21:
  __dst[0] = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  v42 = swift_dynamicCast();
  v43 = v102;
LABEL_22:
  if (v42)
  {
    return v43;
  }

  else
  {
    return 0;
  }
}

void sub_1CF6D6C14(void *__src, _TtC18FileProviderDaemon8FSTester *a2, uint64_t *a3, uint64_t a4, char a5, char a6, char a7, _TtC18FileProviderDaemon8FSTester *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = v12;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, a2, sizeof(__srca));
  v18 = *a3;
  v19 = *(a3 + 8);
  memcpy(v298, a2, 0x208uLL);
  v267 = a8;
  if (sub_1CF08B99C(v298) != 1)
  {
    v11 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros;
    swift_beginAccess();
    v264 = v11;
    if (*(*(v14 + v11) + 16) <= 0xC7uLL)
    {
      memcpy(v295, __srca, sizeof(v295));
      sub_1CEFCCBDC(v295, v292, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      v11 = sub_1CF9E57E8();
      type metadata accessor for FPCK(0);
      sub_1CF6C4380(v11, a6, a7, 0, 0);
      v25 = v20;
      v282 = *v20->tree;
      if (!v282)
      {

        sub_1CEFCCC44(__srca, &unk_1EC4BFC20, &unk_1CFA0A290);
        v25, v72, v73, v74, v75, v76, v77, v78;
        if (v19 == 255)
        {
          goto LABEL_59;
        }

        goto LABEL_62;
      }

      v269 = v19;
      v270 = v18;
      v26 = 0;
      v27 = 0;
      v268 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_targetedSPSErrors;
      v265 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
      v280 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair;
      v281 = v20 + 1;
      v273 = v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions;
      v274 = v14;
      v278 = v20;
      v279 = v11;
      do
      {
        if (v27 >= *v25->tree)
        {
          __break(1u);
          goto LABEL_133;
        }

        v31 = &v281[v27];
        v286 = *v31->tree;
        isa = v31->super.isa;
        v283 = v31->tester[1];
        v284 = v31->tester[2];
        v285 = v31->tester[0];
        v288 = *v31->_anon_8;
        if (v26)
        {

          v26 = 1;
          goto LABEL_42;
        }

        v39 = *(v14 + v268);
        v40 = 1 << *(v39 + 32);
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v14 = v41 & *(v39 + 64);
        v42 = (v40 + 63) >> 6;

        a8 = 0;
        while (1)
        {
          if (v14)
          {
            v43 = v288;
            goto LABEL_21;
          }

          v43 = v288;
          do
          {
            v44 = (&a8->super.isa + 1);
            if (__OFADD__(a8, 1))
            {
              __break(1u);
              goto LABEL_124;
            }

            if (v44 >= v42)
            {

              v26 = 0;
              goto LABEL_41;
            }

            v14 = *(v39 + 64 + 8 * v44);
            a8 = (a8 + 1);
          }

          while (!v14);
          a8 = v44;
LABEL_21:
          v45 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v46 = *(v39 + 48) + ((a8 << 11) | (32 * v45));
          a2 = *(v46 + 16);
          v47 = *(v46 + 24);
          v48 = *(v46 + 25);
          v49 = *(v46 + 26);
          v50 = *v46 == isa && *(v46 + 8) == v43;
          if (v50 || (sub_1CF9E8048()) && a2 == v286)
          {
            v51 = v47 == 6 || v47 == v285;
            if (v51 && (v48 == 89 || v283 != 89 && qword_1CFA12E48[v48] == qword_1CFA12E48[v283]) && (v49 == 2 || v284 != 2 && ((v49 ^ v284) & 1) == 0))
            {
              break;
            }
          }
        }

        v26 = 1;
LABEL_41:
        v14 = v274;
        v25 = v278;
        v11 = v279;
LABEL_42:
        v13 = *(v14 + v280);
        if (v13 && (*(v273 + 1) & 8) != 0)
        {
          memcpy(v292, __src, sizeof(v292));
          v52 = sub_1CF08B99C(v292);
          v53 = v292[0];
          v54 = v292[1];
          if (v52 == 1)
          {
            v53 = 0;
            v54 = -1;
          }

          v293 = v53;
          v294 = v54;
          v290 = v298[0];
          v291 = v298[1];
          a8 = *(v14 + v265);
          v11 = v279;

          a2 = v288;
          v272 = v272 & 0xFF000000 | v285 | (v283 << 8) | (v284 << 16);
          sub_1CF708188(isa, v288, v286, v272, &v293, &v290, a8, a9, a10, a11);
          v25 = v278;

          v288, v55, v56, v57, v58, v59, v60, v61;
        }

        else
        {
          v288, v32, v33, v34, v35, v36, v37, v38;
        }

        ++v27;
      }

      while (v27 != v282);
      v25, v28, v29, v30, v21, v22, v23, v24;
      if (v26)
      {
        v11 = LOBYTE(v298[1]);
        if (LOBYTE(v298[1]) != 255)
        {
          v62 = v298[0];
          swift_beginAccess();
          v63 = *(v14 + v264);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v14 + v264) = v63;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_51;
          }

          goto LABEL_145;
        }

LABEL_124:
        v11 = v298[31];
        v18 = v270;
        v19 = v269;
        if (v298[31])
        {
          swift_beginAccess();
          v254 = *(v14 + v264);
          v255 = v11;
          v256 = swift_isUniquelyReferenced_nonNull_native();
          *(v14 + v264) = v254;
          if ((v256 & 1) == 0)
          {
            v254 = sub_1CF1F77F0(0, (*v254->tree + 1), 1, v254, v257, v258, v259, v260);
            *(v14 + v264) = v254;
          }

          v262 = *v254->tree;
          v261 = *v254->tester;
          if (v262 >= v261 >> 1)
          {
            v254 = sub_1CF1F77F0((v261 > 1), (v262 + 1), 1, v254, v257, v258, v259, v260);
          }

          *v254->tree = v262 + 1;
          v263 = v254 + 16 * v262;
          *(v263 + 4) = v11;
          *(v263 + 20) = 256;
          *(v14 + v264) = v254;
          swift_endAccess();

          goto LABEL_130;
        }

        goto LABEL_54;
      }

      sub_1CEFCCC44(__srca, &unk_1EC4BFC20, &unk_1CFA0A290);
      v18 = v270;
      v19 = v269;
    }
  }

  if (v19 == 255)
  {
    goto LABEL_59;
  }

  while (1)
  {
LABEL_62:
    v27 = sub_1CF9E57E8();
    v13 = v27;
    v79 = [v13 underlyingErrors];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v80 = sub_1CF9E6D48();

    v270 = v18;
    v269 = v19;
    if (*v80->tree)
    {
      v88 = v80[1].super.isa;
      v89 = v88;
      v80, v90, v91, v92, v93, v94, v95, v96;
      v295[0] = v88;
      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (!swift_dynamicCast())
      {
        v26 = 0;
        a8 = MEMORY[0x1E69E7CC0];
        goto LABEL_80;
      }

      v275 = v14;
      v26 = 0;
      a8 = MEMORY[0x1E69E7CC0];
      v11 = v13;
      v97 = 11;
      v289 = v11;
      while (1)
      {
        v27 = v292[0];
        v98 = [v292[0] domain];
        v99 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v101 = v100;

        v295[0] = v99;
        v295[1] = v101;
        MEMORY[0x1D3868CC0](59, 0xE100000000000000);
        v292[0] = [v27 code];
        v102 = sub_1CF9E7F98();
        v104 = v103;
        MEMORY[0x1D3868CC0](v102);
        v104, v105, v106, v107, v108, v109, v110, v111;
        v112 = v295[0];
        v113 = v295[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a8 = sub_1CF0710C0(0, *a8->tree + 1, 1, a8, v114, v115, v116, v117);
        }

        v119 = *a8->tree;
        v118 = *a8->tester;
        if (v119 >= v118 >> 1)
        {
          a8 = sub_1CF0710C0((v118 > 1), v119 + 1, 1, a8, v114, v115, v116, v117);
        }

        *a8->tree = v119 + 1;
        v120 = a8 + 16 * v119;
        *(v120 + 4) = v112;
        *(v120 + 5) = v113;
        if (!v26)
        {
          v121 = v27;
          v26 = v27;
        }

        if (!--v97)
        {
LABEL_77:
          v14 = v275;
          v13 = v289;
          goto LABEL_80;
        }

        v122 = [v27 underlyingErrors];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
        v80 = sub_1CF9E6D48();

        if (!*v80->tree)
        {
          break;
        }

        v123 = v80[1].super.isa;
        v124 = v123;
        v80, v125, v126, v127, v128, v129, v130, v131;
        v295[0] = v123;
        v11 = v27;
        if (!swift_dynamicCast())
        {
          goto LABEL_77;
        }
      }

      v14 = v275;
      v13 = v289;
    }

    else
    {
      v26 = 0;
      a8 = MEMORY[0x1E69E7CC0];
    }

    v80, v81, v82, v83, v84, v85, v86, v87;
LABEL_80:
    v295[0] = v270;
    LOBYTE(v295[1]) = v269;
    v132 = sub_1CF6D6908(v13, __dst, v295);
    if (v132)
    {
      v133 = v132;

      v26 = v133;
      v134 = [v26 domain];
      v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v137 = v136;

      v295[0] = v135;
      v295[1] = v137;
      MEMORY[0x1D3868CC0](59, 0xE100000000000000);
      v138 = [v26 code];

      v292[0] = v138;
      v139 = sub_1CF9E7F98();
      v141 = v140;
      MEMORY[0x1D3868CC0](v139);
      v141, v142, v143, v144, v145, v146, v147, v148;
      v11 = v295[0];
      a2 = v295[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_82;
    }

    while (1)
    {
      v152 = [v13 domain];
      v153 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v155 = v154;

      v295[0] = v153;
      v295[1] = v155;
      MEMORY[0x1D3868CC0](59, 0xE100000000000000);
      v292[0] = [v13 code];
      v156 = sub_1CF9E7F98();
      v158 = v157;
      MEMORY[0x1D3868CC0](v156);
      v158, v159, v160, v161, v162, v163, v164, v165;

      v27 = v295[0];
      v166 = v295[1];
      v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetErrors;
      swift_beginAccess();
      v167 = *&v13[v14];
      if (*v167->tree)
      {

        v168 = sub_1CEFE4328(v27, v166);
        if (v169)
        {
          v62 = *(*v167[1].tester + 8 * v168);
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        v26 = v267;
        v167, v169, v170, v171, v172, v173, v174, v175;
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
        v26 = v267;
      }

      a2 = (a6 | (a7 << 8) | (v26 << 16));
      sub_1CF6C02DC(1, a6 | (a7 << 8) | (v26 << 16), a8, v62);
      if (v177)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1CF1F7588(0, *v62->tree + 1, 1, v62, v178, v179, v180, v181);
        }

        v11 = *v62->tree;
        v182 = *v62->tester;
        if (v11 >= v182 >> 1)
        {
          v62 = sub_1CF1F7588((v182 > 1), v11 + 1, 1, v62, v178, v179, v180, v181);
        }

        *v62->tree = v11 + 1;
        v183 = v62 + 24 * v11;
        *(v183 + 4) = 1;
        v183[40] = a6;
        v183[41] = a7;
        v183[42] = v26;
        *(v183 + 6) = a8;
      }

      else
      {
        v184 = v176;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v184 & 0x8000000000000000) != 0)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v62 = sub_1CF7722D4(v62, v185, v186, v187, v188, v189, v190, v191);
          if ((v184 & 0x8000000000000000) != 0)
          {
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }
        }

        if (v184 >= *v62->tree)
        {
          goto LABEL_137;
        }

        v192 = v62 + 24 * v184;
        v194 = *(v192 + 4);
        v193 = v192 + 32;
        v195 = v194 + 1;
        if (__OFADD__(v194, 1))
        {
          goto LABEL_138;
        }

        *v193 = v195;
      }

      swift_beginAccess();

      v196 = swift_isUniquelyReferenced_nonNull_native();
      v293 = *&v13[v14];
      *&v13[v14] = 0x8000000000000000;
      sub_1CF1D2AE0(v62, v27, v166, v196);
      v166, v197, v198, v199, v200, v201, v202, v203;
      *&v13[v14] = v293;
      swift_endAccess();
      v207 = *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize);
      v208 = __OFADD__(v207, 1);
      v209 = v207 + 1;
      if (!v208)
      {
        break;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      a8 = sub_1CF0710C0(0, *a8->tree + 1, 1, a8, v21, v22, v23, v24);
LABEL_82:
      v150 = *a8->tree;
      v149 = *a8->tester;
      if (v150 >= v149 >> 1)
      {
        a8 = sub_1CF0710C0((v149 > 1), v150 + 1, 1, a8, v21, v22, v23, v24);
      }

      *a8->tree = v150 + 1;
      v151 = a8 + 16 * v150;
      *(v151 + 4) = v11;
      *(v151 + 5) = a2;
    }

    *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_superPendingSetSize) = v209;
    if (a5)
    {
      a8, v204, v205, v206, v21, v22, v23, v24;
      v166, v210, v211, v212, v213, v214, v215, v216;
      return;
    }

    v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetErrors;
    swift_beginAccess();
    v217 = *&v13[v14];
    if (*v217->tree)
    {

      v218 = sub_1CEFE4328(v27, v166);
      if (v219)
      {
        v62 = *(*v217[1].tester + 8 * v218);
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC0];
      }

      v217, v219, v220, v221, v222, v223, v224, v225;
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
    }

    sub_1CF6C02DC(1, a2, a8, v62);
    if (v227)
    {
      break;
    }

    v63 = v226;
    a8, v227, v228, v229, v230, v231, v232, v233;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v63 & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v62 = sub_1CF7722D4(v62, v237, v238, v239, v65, v66, v67, v68);
      if ((v63 & 0x8000000000000000) != 0)
      {
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

    if (v63 >= *v62->tree)
    {
      goto LABEL_143;
    }

    v240 = v62 + 24 * v63;
    v242 = *(v240 + 4);
    v241 = v240 + 32;
    v243 = v242 + 1;
    if (!__OFADD__(v242, 1))
    {
      *v241 = v243;
      goto LABEL_121;
    }

LABEL_144:
    __break(1u);
LABEL_145:
    v63 = sub_1CF1F77F0(0, (*v63->tree + 1), 1, v63, v65, v66, v67, v68);
    *(v14 + v264) = v63;
LABEL_51:
    v18 = v270;
    v19 = v269;
    v70 = *v63->tree;
    v69 = *v63->tester;
    if (v70 >= v69 >> 1)
    {
      v63 = sub_1CF1F77F0((v69 > 1), (v70 + 1), 1, v63, v65, v66, v67, v68);
    }

    *v63->tree = v70 + 1;
    v71 = v63 + 16 * v70;
    *(v71 + 4) = v62;
    v71[40] = v11;
    v71[41] = 0;
    *(v14 + v264) = v63;
    swift_endAccess();
LABEL_54:

LABEL_130:
    sub_1CEFCCC44(__srca, &unk_1EC4BFC20, &unk_1CFA0A290);
    if (v19 == 255)
    {
LABEL_59:
      memcpy(v295, __dst, sizeof(v295));
      if (sub_1CF08B99C(v295) == 1)
      {
        v18 = 0;
        v19 = 255;
      }

      else
      {
        v18 = v295[0];
        v19 = LOBYTE(v295[1]);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v235 = *v62->tree;
    v234 = *v62->tester;
    if (v235 >= v234 >> 1)
    {
      v62 = sub_1CF1F7588((v234 > 1), v235 + 1, 1, v62, v188, v189, v190, v191);
    }

    *v62->tree = v235 + 1;
    v236 = v62 + 24 * v235;
    *(v236 + 4) = 1;
    v236[40] = a6;
    v236[41] = a7;
    v236[42] = v26;
    *(v236 + 6) = a8;
LABEL_121:
    swift_beginAccess();
    v244 = swift_isUniquelyReferenced_nonNull_native();
    v290 = *&v13[v14];
    *&v13[v14] = 0x8000000000000000;
    sub_1CF1D2AE0(v62, v27, v166, v244);
    v166, v245, v246, v247, v248, v249, v250, v251;
    *&v13[v14] = v290;
    swift_endAccess();
    v252 = *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize);
    v208 = __OFADD__(v252, 1);
    v253 = v252 + 1;
    if (!v208)
    {
      break;
    }

LABEL_139:
    __break(1u);
LABEL_140:
    v62 = sub_1CF1F7588(0, *v62->tree + 1, 1, v62, v188, v189, v190, v191);
  }

  *(v14 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_pendingSetSize) = v253;
}

uint64_t sub_1CF6D7B60()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v114 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v117 = (v114 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v114 - v12;
  v14 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_itemIDsWithTargetedErros;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (*v15->tree)
  {
    v119 = v1;

    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = v0;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7288();

    v20 = os_log_type_enabled(v18, v19);
    v118 = v2;
    v116 = v5;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v120 = v22;
      *v21 = 136446210;
      v23 = &v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v115 = v15;
      v24 = v17;
      v25 = v3;
      v26 = *v23;
      v27 = v23[1];

      v28 = sub_1CEFD0DF0(v26, v27, &v120);
      v29 = v27;
      v3 = v25;
      v17 = v24;
      v15 = v115;
      v29, v30, v31, v32, v33, v34, v35, v36;
      *(v21 + 4) = v28;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "🧹 FPCK %{public}s: sending TTR, we have nil errors", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D386CDC0](v22, -1, -1);
      v37 = v21;
      v2 = v118;
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    v38 = *(v3 + 8);
    v38(v13, v2);
    v46 = *&v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics];
    if (v46)
    {
      v117 = v38;
      v47 = *&v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sendDiagnostics + 8];
      sub_1CF9E56C8();
      swift_allocObject();

      sub_1CF9E56B8();
      sub_1CF9E5698();
      v120 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
      sub_1CF6FC524(&qword_1EC4BE540, &qword_1EC4BE520, &qword_1CF9FEF10, MEMORY[0x1E69E6300]);
      v48 = v119;
      v49 = sub_1CF9E56A8();
      v119 = v48;
      if (v48)
      {
        v115 = v47;
        v15, v50, v51, v52, v53, v54, v55, v56;
        v57 = fpfs_current_or_default_log();
        v58 = v116;
        sub_1CF9E6128();
        v59 = v17;
        v60 = sub_1CF9E6108();
        v61 = sub_1CF9E72A8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v120 = v63;
          *v62 = 136446210;
          v114[1] = v3;
          v64 = *&v59[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
          v65 = *&v59[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

          v66 = sub_1CEFD0DF0(v64, v65, &v120);
          v65, v67, v68, v69, v70, v71, v72, v73;
          *(v62 + 4) = v66;
          _os_log_impl(&dword_1CEFC7000, v60, v61, "🧹 FPCK %{public}s: error encoding IDs for TTR", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x1D386CDC0](v63, -1, -1);
          MEMORY[0x1D386CDC0](v62, -1, -1);
        }

        sub_1CEFF7124(v46, v115);

        v117(v58, v118);
      }

      else
      {
        v111 = v49;
        v112 = v50;
        v15, v50, v51, v52, v53, v54, v55, v56;
        v46(v111, v112);

        sub_1CEFF7124(v46, v47);
        sub_1CEFE4714(v111, v112);
      }
    }

    else
    {
      v15, v39, v40, v41, v42, v43, v44, v45;
      v92 = fpfs_current_or_default_log();
      v93 = v117;
      sub_1CF9E6128();
      v94 = v17;
      v95 = sub_1CF9E6108();
      v96 = sub_1CF9E7288();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v120 = v98;
        *v97 = 136446210;
        v99 = *&v94[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v100 = *&v94[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v101 = sub_1CEFD0DF0(v99, v100, &v120);
        v100, v102, v103, v104, v105, v106, v107, v108;
        *(v97 + 4) = v101;
        _os_log_impl(&dword_1CEFC7000, v95, v96, "🧹 FPCK %{public}s: cannot send TTR, the sender is nil", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x1D386CDC0](v98, -1, -1);
        MEMORY[0x1D386CDC0](v97, -1, -1);

        v109 = v93;
        v110 = v118;
      }

      else
      {

        v109 = v93;
        v110 = v2;
      }

      v38(v109, v110);
    }
  }

  else
  {
    v74 = v3;
    v75 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v76 = v0;
    v77 = sub_1CF9E6108();
    v78 = sub_1CF9E7298();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v118 = v2;
      v80 = v79;
      v81 = swift_slowAlloc();
      v120 = v81;
      *v80 = 136446210;
      v82 = *&v76[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v83 = *&v76[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v84 = sub_1CEFD0DF0(v82, v83, &v120);
      v83, v85, v86, v87, v88, v89, v90, v91;
      *(v80 + 4) = v84;
      _os_log_impl(&dword_1CEFC7000, v77, v78, "🧹 FPCK %{public}s: skipping TTR, no nil errors", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x1D386CDC0](v81, -1, -1);
      MEMORY[0x1D386CDC0](v80, -1, -1);

      (*(v74 + 8))(v8, v118);
    }

    else
    {

      (*(v74 + 8))(v8, v2);
    }
  }

  return 1;
}

uint64_t sub_1CF6D82E4()
{
  v2 = sub_1CF9E6118();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v130 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v125 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v129 = (&v125 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v125 - v11;
  v13 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair;
  v14 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair];
  if (v14 && (swift_beginAccess(), v15 = *(v14 + 16), *v15->tree))
  {
    v128 = v1;

    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v127 = v0;
    v17 = v0;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E7288();

    v20 = os_log_type_enabled(v18, v19);
    v132 = v2;
    v126 = v13;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v131[0] = v22;
      *v21 = 136446210;
      v125 = v3;
      v23 = *&v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v24 = *&v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v25 = v15;
      v26 = v17;
      v27 = sub_1CEFD0DF0(v23, v24, v131);
      v28 = v24;
      v3 = v125;
      v28, v29, v30, v31, v32, v33, v34, v35;
      *(v21 + 4) = v27;
      v17 = v26;
      v15 = v25;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "🧹 FPCK %{public}s: sending reingestion, we have items", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v36 = v22;
      v2 = v132;
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v21, -1, -1);
    }

    v37 = *(v3 + 1);
    v37(v12, v2);
    v45 = *&v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems];
    if (v45)
    {
      v125 = v17;
      v129 = v37;
      v46 = *&v17[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_reingestItems + 8];
      sub_1CF9E56C8();
      swift_allocObject();

      sub_1CF9E56B8();
      sub_1CF9E5698();
      v131[0] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27F8, &qword_1CFA12A20);
      sub_1CF6FC524(&qword_1EC4C2800, &qword_1EC4C27F8, &qword_1CFA12A20, MEMORY[0x1E69E64F0]);
      v47 = v128;
      v48 = sub_1CF9E56A8();
      v56 = v47;
      if (v47)
      {
        v128 = v46;
        v15, v49, v50, v51, v52, v53, v54, v55;
        v57 = fpfs_current_or_default_log();
        v58 = v130;
        sub_1CF9E6128();
        v59 = v125;
        v60 = sub_1CF9E6108();
        v61 = sub_1CF9E72A8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v131[0] = v63;
          *v62 = 136446210;
          v125 = v3;
          v64 = *&v59[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
          v65 = *&v59[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

          v66 = sub_1CEFD0DF0(v64, v65, v131);
          v65, v67, v68, v69, v70, v71, v72, v73;
          *(v62 + 4) = v66;
          _os_log_impl(&dword_1CEFC7000, v60, v61, "🧹 FPCK %{public}s: error encoding IDs for reingestion", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v63);
          MEMORY[0x1D386CDC0](v63, -1, -1);
          MEMORY[0x1D386CDC0](v62, -1, -1);

          v74 = v130;
        }

        else
        {

          v74 = v58;
        }

        v129(v74, v132);
        v114 = v127;
        v46 = v128;
      }

      else
      {
        v112 = v48;
        v113 = v49;
        v15, v49, v50, v51, v52, v53, v54, v55;
        v45(v112, v113);
        sub_1CEFE4714(v112, v113);
        v114 = v127;
      }

      v115 = *&v114[v126];
      if (v115)
      {

        sub_1CEFF7124(v45, v46);

        swift_beginAccess();
        v116 = *(v115 + 16);
        *(v115 + 16) = MEMORY[0x1E69E7CD0];

        v116, v117, v118, v119, v120, v121, v122, v123;
      }

      else
      {
        sub_1CEFF7124(v45, v46);
      }
    }

    else
    {
      v15, v38, v39, v40, v41, v42, v43, v44;
      v93 = fpfs_current_or_default_log();
      v94 = v129;
      sub_1CF9E6128();
      v95 = v17;
      v96 = sub_1CF9E6108();
      v97 = sub_1CF9E7288();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v131[0] = v99;
        *v98 = 136446210;
        v100 = *&v95[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v101 = *&v95[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v102 = sub_1CEFD0DF0(v100, v101, v131);
        v101, v103, v104, v105, v106, v107, v108, v109;
        *(v98 + 4) = v102;
        _os_log_impl(&dword_1CEFC7000, v96, v97, "🧹 FPCK %{public}s: cannot send reingestion, the sender is nil", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x1D386CDC0](v99, -1, -1);
        MEMORY[0x1D386CDC0](v98, -1, -1);

        v110 = v94;
        v111 = v132;
      }

      else
      {

        v110 = v94;
        v111 = v2;
      }

      v37(v110, v111);
    }
  }

  else
  {
    v75 = v3;
    v76 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v77 = v0;
    v78 = sub_1CF9E6108();
    v79 = sub_1CF9E7298();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v132 = v2;
      v82 = v81;
      v131[0] = v81;
      *v80 = 136446210;
      v83 = *&v77[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
      v84 = *&v77[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

      v85 = sub_1CEFD0DF0(v83, v84, v131);
      v84, v86, v87, v88, v89, v90, v91, v92;
      *(v80 + 4) = v85;
      _os_log_impl(&dword_1CEFC7000, v78, v79, "🧹 FPCK %{public}s: skipping reingestion, no items", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1D386CDC0](v82, -1, -1);
      MEMORY[0x1D386CDC0](v80, -1, -1);

      (*(v75 + 1))(v7, v132);
    }

    else
    {

      (*(v75 + 1))(v7, v2);
    }
  }

  return 1;
}

uint64_t sub_1CF6D8AD4()
{
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v2)
  {
    LOBYTE(v26) = 1;
    return v26 & 1;
  }

  v3 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v5 = v4;
  v6 = [v5 pathComponents];
  v7 = sub_1CF9E6D48();

  v8 = *v7->tree;
  v7, v9, v10, v11, v12, v13, v14, v15;
  if (v8 < 2)
  {
    v16 = *MEMORY[0x1E6967178];
  }

  else
  {
    v16 = [v5 lastPathComponent];
    if (!v16)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      v16 = sub_1CF9E6888();
      v18, v19, v20, v21, v22, v23, v24, v25;
    }
  }

  v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v28 = v27;
  swift_beginAccess();
  v29 = *(v2 + 24);
  if (!*v29->tree)
  {

LABEL_15:

    v28, v60, v61, v62, v63, v64, v65, v66;
LABEL_16:
    LOBYTE(v26) = 1;
    return v26 & 1;
  }

  v30 = v0;

  v31 = sub_1CEFE863C(v16);
  if ((v32 & 1) == 0)
  {

    v29, v53, v54, v55, v56, v57, v58, v59;
    goto LABEL_15;
  }

  v33 = *(*v29[1].tester + 8 * v31);

  v29, v34, v35, v36, v37, v38, v39, v40;

  v42 = *(v30 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase);
  if (!v42)
  {

    v28, v68, v69, v70, v71, v72, v73, v74;

    goto LABEL_16;
  }

  MEMORY[0x1EEE9AC00](v41);
  v75[2] = v33;
  v75[3] = v43;
  v75[4] = v42;
  v75[5] = v26;
  v75[6] = v28;
  v75[7] = v2;

  v44 = objc_autoreleasePoolPush();
  sub_1CF803A54(v42, 2, "generateSPSAnalysis()", 21, 2, 1, sub_1CF6FC4C0, v75);
  if (!v3)
  {
    LOBYTE(v26) = v45;
  }

  objc_autoreleasePoolPop(v44);

  v28, v46, v47, v48, v49, v50, v51, v52;

  return v26 & 1;
}

void sub_1CF6D8D94(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>, uint64_t a8@<X6>)
{
  v32 = a8;
  v36 = a6;
  v16 = a1[3];
  v15 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v34 = a3;
  v35 = a1;
  v18 = sub_1CF219D30(1, v17, sub_1CF6FC4E4, v33, v16, v15);
  if (!v8)
  {
    v31[6] = a5;
    if (v18)
    {
      v19 = a1[3];
      v20 = a1[4];
      v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
      v22 = a3;
      sub_1CF6D9EE0(a4, a2, v21, v19, v20);
      v23 = a1[3];
      v24 = a1[4];
      v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
      sub_1CF6DA510(a4, a2, v25, v23, v24);
      v26 = sub_1CF9E6888();
      v28 = a1[3];
      v27 = a1[4];
      v29 = __swift_project_boxed_opaque_existential_1(a1, v28);
      MEMORY[0x1EEE9AC00](v29);
      v31[2] = v32;
      v31[3] = v26;
      v31[4] = a1;
      v31[5] = v22;
      sub_1CF702B68(v26, v30, sub_1CF6FC504, v31, v28, v27);

      *a7 = 1;
    }

    else
    {
      *a7 = 0;
    }
  }
}

uint64_t sub_1CF6D8F64(void *__src, uint64_t a2, void *a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = sub_1CF6CF224("generateSPSAnalysis()", 21, 2, 1789);
  if ((v4 & 1) != 0 && sub_1CF39B7F0())
  {
    v5 = a3[3];
    v6 = a3[4];
    v7 = __swift_project_boxed_opaque_existential_1(a3, v5);
    sub_1CF6E36F8(__dst, v7, v5, v6);
  }

  return v4 & 1;
}

uint64_t sub_1CF6D9028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  v11 = *(a3 + 24);
  if (*v11->tree)
  {

    v12 = sub_1CEFE863C(a4);
    if (v13)
    {
      v20 = *(*v11[1].tester + 8 * v12);
    }

    else
    {
      v20 = 0;
    }

    v11, v13, v14, v15, v16, v17, v18, v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = a5[3];
  v22 = a5[4];
  v23 = __swift_project_boxed_opaque_existential_1(a5, v21);
  if (!v20)
  {
    goto LABEL_11;
  }

  v24 = v23;
  v32 = a1;
  v33 = 256;

  v25 = a1;
  sub_1CF20A25C(&v32, 0, v24, v21, v22, __src);
  if (v5)
  {
    sub_1CEFD0994(v32, v33, SHIBYTE(v33));
  }

  sub_1CEFD0994(v32, v33, SHIBYTE(v33));

  memcpy(__dst, __src, sizeof(__dst));
  if (sub_1CF08B99C(__dst) != 1)
  {
    memcpy(v30, __dst, sizeof(v30));
    nullsub_1();
    memcpy(v35, v30, sizeof(v35));
  }

  else
  {
LABEL_11:
    sub_1CF4858E8(v35);
  }

  v27 = a5[3];
  v28 = a5[4];
  v29 = __swift_project_boxed_opaque_existential_1(a5, v27);
  memcpy(__src, v35, 0x208uLL);
  memcpy(__dst, v35, 0x208uLL);
  v30[0] = 0;
  LOBYTE(v30[1]) = -1;
  sub_1CF6D6C14(__src, __dst, v30, a2, 1, 0, 89, 2, v29, v27, v28);

  return sub_1CEFCCC44(v35, &unk_1EC4BFC20, &unk_1CFA0A290);
}

uint64_t sub_1CF6D9260()
{
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fpSnapshotChecker);
  if (!v2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v3 = v1;
  v4 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v5 = v4;
  v6 = [v5 pathComponents];
  v7 = sub_1CF9E6D48();

  v8 = *v7->tree;
  v7, v9, v10, v11, v12, v13, v14, v15;
  if (v8 < 2)
  {
    v16 = *MEMORY[0x1E6967178];
  }

  else
  {
    v16 = [v5 lastPathComponent];
    if (!v16)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;
      v16 = sub_1CF9E6888();
      v18, v19, v20, v21, v22, v23, v24, v25;
    }
  }

  swift_beginAccess();
  v27 = *(v2 + 24);
  if (!*v27->tree)
  {

LABEL_14:

    v26 = 1;
    return v26 & 1;
  }

  sub_1CEFE863C(v16);
  if ((v28 & 1) == 0)
  {

    v27, v39, v40, v41, v42, v43, v44, v45;
    goto LABEL_14;
  }

  v27, v29, v30, v31, v32, v33, v34, v35;

  result = swift_weakLoadStrong();
  if (result)
  {
    v37 = MEMORY[0x1EEE9AC00](result);
    (*(*v38 + 464))(&v46, 1, "reconciliationTableCheck()", 26, 2, 2, sub_1CF6FC484, v37);

    if (!v3)
    {
      v26 = v46;
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF6D94CC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);
  v10[2] = a2;
  result = sub_1CF219D30(0, v8, sub_1CF6FC4A0, v10, v6, v7);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_1CF6D9560(void *__src, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  LODWORD(v5) = sub_1CF6CF224("reconciliationTableCheck()", 26, 2, 1836);
  if (v5)
  {
    v7 = __dst[31];
    v6 = __dst[32];
    v8 = __dst[33];
    v9 = __dst[37];
    v10 = LOBYTE(__dst[43]);
    v11 = __dst[44];
    v12 = __dst[45];
    v13 = LOBYTE(__dst[46]);
    v14 = __dst[50];
    if (LOBYTE(__dst[46]) || (__dst[44] & 2) == 0)
    {
      v104 = __dst[32];
      v106 = LOBYTE(__dst[43]);
      v108 = __dst[45];
      LODWORD(v114) = LOBYTE(__dst[46]);
      v15 = __dst[44];
      v16 = __dst[37];
      isUniquelyReferenced_nonNull_native = __dst[33];
      v18 = v5;
      v19 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfReconciliationTableEntries;
      v5 = swift_beginAccess();
      v20 = *(a2 + v19);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_132;
      }

      *(a2 + v19) = v22;
      LOBYTE(v5) = v18;
      v8 = isUniquelyReferenced_nonNull_native;
      v9 = v16;
      v11 = v15;
      v13 = v114;
      v12 = v108;
      v10 = v106;
      v6 = v104;
    }

    v23 = LOBYTE(__dst[1]) == 255 || v7 == 0;
    v24 = !v23;
    LODWORD(v25) = LOBYTE(__dst[17]);
    v18 = BYTE1(__dst[17]);
    LODWORD(v16) = LOBYTE(__dst[20]);
    v26 = BYTE1(__dst[17]) == 6 && v10 == 3;
    v27 = v26;
    v28 = 2;
    if (v26)
    {
      v28 = 3;
    }

    if ((v24 & (LOBYTE(__dst[17]) == 0)) != 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    LOBYTE(isUniquelyReferenced_nonNull_native) = v2;
    if (LOBYTE(__dst[20]) == 2)
    {
      if (v13 == 2)
      {
LABEL_31:
        v29 |= 4uLL;
LABEL_32:
        v3 = __dst[2];
        v30 = __dst[3];
        LODWORD(v15) = LOBYTE(__dst[4]);
        v31 = __dst[13];
        v32 = __dst[18];
        v33 = __dst[19];
        v34 = __dst[24];
        v2 = __dst[30];
        if (qword_1EDEABDE0 != -1)
        {
          goto LABEL_130;
        }

        while (1)
        {
          v35 = qword_1EDEABDE8;
          if (!qword_1EDEABDE8)
          {
            break;
          }

          if ((qword_1EDEABDE8 & 0x10) == 0)
          {
            v36 = (qword_1EDEABDE8 | 0x10) & v30;
LABEL_37:
            if (v36 | v3 & 0x51)
            {
              goto LABEL_41;
            }

            v35 = qword_1EDEABDE8 | 0x10;
            goto LABEL_40;
          }

          if (qword_1EDEABDE8 & v30 | v3 & 0x51)
          {
            goto LABEL_41;
          }

LABEL_40:
          if ((v35 & v8) != 0 || (v6 & 0x51) != 0 || v25 == 1 || v10 == 1 || v15 != 5 || v18 != 6 || ((v34 & 0xF000000000000000) != 0xB000000000000000 ? (v92 = v24) : (v92 = 0), v92 == 1 && !v10))
          {
LABEL_41:
            v3 = isUniquelyReferenced_nonNull_native;
            if (v16 != 2)
            {
              goto LABEL_43;
            }

LABEL_42:
            v29 |= 0x400uLL;
            goto LABEL_43;
          }

          v3 = isUniquelyReferenced_nonNull_native;
          if (v16 == 2)
          {
            goto LABEL_42;
          }

          if ((v16 == 3 || v16 == 4 && !(v32 & 0xFFFFFFFFFFFFFFFELL | v33)) && (v13 == 3 || v13 == 4 && !(v11 & 0xFFFFFFFFFFFFFFFELL | v12)))
          {
            if (__dst[59] == 0x2000000000000000)
            {
              v93 = v29;
            }

            else
            {
              v93 = v29 | 8;
            }

            if ((v34 & 0xF000000000000000) == 0xB000000000000000)
            {
              v39 = v93;
            }

            else
            {
              v39 = v93 | 0x10;
            }

            if (v14 >> 60 != 11)
            {
              v39 |= 0x20uLL;
            }

            if (!v24)
            {
              goto LABEL_66;
            }

            goto LABEL_56;
          }

LABEL_43:
          v37 = v29 | 0x800;
          if (v13 != 2)
          {
            v37 = v29;
          }

          if ((v32 & 0x40100) == 0x100 && v16 == 0)
          {
            v37 |= 0x1000uLL;
          }

          if ((v11 & 0x40100) == 0x100)
          {
            v39 = v37 | 0x2000;
          }

          else
          {
            v39 = v37;
          }

          if (v13)
          {
            v39 = v37;
          }

          if (!v24)
          {
            goto LABEL_66;
          }

LABEL_56:
          if (!v31)
          {
            v39 |= 0x40uLL;
          }

          if (v9 == 1)
          {
            v39 |= 0x80uLL;
          }

          if (LOBYTE(__dst[57]) == 1)
          {
            v40 = v39 | (32 * v30) & 0x100;
            v41 = (v39 >> 9) & 1;
            if ((v8 & 8) == 0)
            {
              LODWORD(v41) = 1;
            }

            if (v41)
            {
              v39 = v40;
            }

            else
            {
              v39 = v40 | 0x200;
            }
          }

LABEL_66:
          if ((v2 & 0xC) == 8)
          {
            v39 |= 0x4000uLL;
          }

          if ((*(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 2) != 0)
          {
            v42 = v39 & 0xFFFFFFFFFFFFC3FFLL;
          }

          else
          {
            v42 = v39;
          }

          if (!v42)
          {
            return v5 & 1;
          }

          v110 = v5;
          v16 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredReconciliationTableBrokenInvariantsCounters;
          v114 = v42;
          v14 = v42 & -v42;
          swift_beginAccess();
          sub_1CEFF7124(0, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = *(a2 + v16);
          v112 = v25;
          *(a2 + v16) = 0x8000000000000000;
          v5 = sub_1CF7D52B0(v14);
          v43 = v25[2];
          v44 = (v30 & 1) == 0;
          v21 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v21)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          v18 = v30;
          if (v25[3] < v45)
          {
            sub_1CF7C7758(v45, isUniquelyReferenced_nonNull_native);
            v5 = sub_1CF7D52B0(v14);
            if ((v18 & 1) == (v30 & 1))
            {
              goto LABEL_77;
            }

LABEL_75:
            v5 = sub_1CF9E8108();
            __break(1u);
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_77:
            *(a2 + v16) = v25;
            if ((v18 & 1) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_80;
          }

          while (1)
          {
            v29 = v5;
            sub_1CF7D1240();
            v5 = v29;
            v25 = v112;
            *(a2 + v16) = v112;
            if ((v18 & 1) == 0)
            {
              break;
            }

LABEL_80:
            v48 = v25[7];
            v49 = *(v48 + 8 * v5);
            v21 = __OFADD__(v49, 1);
            v50 = v49 + 1;
            if (v21)
            {
              goto LABEL_128;
            }

            *(v48 + 8 * v5) = v50;
            swift_endAccess();
            if (v114 != v14)
            {
              v29 = v14 ^ v114;
              LODWORD(v15) = 0;
              v3 = 1;
              while (1)
              {
                v14 = v29 & -v29;
                swift_beginAccess();
                sub_1CEFF7124(sub_1CF193338, 0);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v25 = *(a2 + v16);
                v112 = v25;
                *(a2 + v16) = 0x8000000000000000;
                v5 = sub_1CF7D52B0(v14);
                v84 = v25[2];
                v85 = (v30 & 1) == 0;
                v21 = __OFADD__(v84, v85);
                v86 = v84 + v85;
                if (v21)
                {
                  goto LABEL_127;
                }

                v18 = v30;
                if (v25[3] < v86)
                {
                  break;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_91;
                }

                isUniquelyReferenced_nonNull_native = v5;
                sub_1CF7D1240();
                v5 = isUniquelyReferenced_nonNull_native;
                *(a2 + v16) = v25;
                if ((v18 & 1) == 0)
                {
LABEL_92:
                  v25[(v5 >> 6) + 8] |= 1 << v5;
                  *(v25[6] + 8 * v5) = v14;
                  *(v25[7] + 8 * v5) = 0;
                  v87 = v25[2];
                  v21 = __OFADD__(v87, 1);
                  v88 = v87 + 1;
                  if (v21)
                  {
                    goto LABEL_129;
                  }

                  v25[2] = v88;
                }

LABEL_94:
                v89 = v25[7];
                v90 = *(v89 + 8 * v5);
                v21 = __OFADD__(v90, 1);
                v91 = v90 + 1;
                if (v21)
                {
                  goto LABEL_128;
                }

                *(v89 + 8 * v5) = v91;
                swift_endAccess();
                v23 = v29 == v14;
                v29 ^= v14;
                if (v23)
                {
                  goto LABEL_82;
                }
              }

              sub_1CF7C7758(v86, isUniquelyReferenced_nonNull_native);
              v5 = sub_1CF7D52B0(v29 & -v29);
              if ((v18 & 1) != (v30 & 1))
              {
                goto LABEL_75;
              }

LABEL_91:
              *(a2 + v16) = v25;
              if ((v18 & 1) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_94;
            }

LABEL_82:
            v51 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInReconciliationTableCheck;
            v5 = swift_beginAccess();
            v52 = *(a2 + v51);
            v21 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (!v21)
            {
              *(a2 + v51) = v53;
              v54 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);

              v56 = sub_1CF6D9D30(v55);
              v58 = v57;
              sub_1CF9E7948();
              0xE000000000000000, v59, v60, v61, v62, v63, v64, v65;
              MEMORY[0x1D3868CC0](0x654C208C9DE2203ALL, 0xAD0000203A207466);
              v66 = sub_1CF7F5810(v114);
              v68 = v67;
              MEMORY[0x1D3868CC0](v66);
              v68, v69, v70, v71, v72, v73, v74, v75;
              MEMORY[0x1D3868CC0](2592, 0xE200000000000000);
              v54(v56, v58);

              v58, v76, v77, v78, v79, v80, v81, v82;
              LOBYTE(v5) = v110;
              return v5 & 1;
            }

            __break(1u);
LABEL_132:
            __break(1u);
          }

LABEL_78:
          v25[(v5 >> 6) + 8] |= 1 << v5;
          *(v25[6] + 8 * v5) = v14;
          *(v25[7] + 8 * v5) = 0;
          v46 = v25[2];
          v21 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (!v21)
          {
            v25[2] = v47;
            goto LABEL_80;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v111 = v5;
          LODWORD(v114) = v13;
          v109 = v12;
          v100 = v30;
          v102 = v9;
          v103 = v8;
          v101 = v11;
          v95 = v15;
          v94 = v24;
          v107 = v10;
          v98 = v32;
          v99 = v31;
          v105 = v6;
          v96 = v34;
          v97 = v33;
          swift_once();
          v34 = v96;
          v33 = v97;
          v32 = v98;
          v31 = v99;
          v8 = v103;
          v6 = v105;
          v10 = v107;
          v12 = v109;
          v13 = v114;
          v30 = v100;
          v24 = v94;
          LODWORD(v15) = v95;
          v11 = v101;
          v9 = v102;
          LOBYTE(v5) = v111;
        }

        v36 = v30 & 0x10;
        goto LABEL_37;
      }
    }

    else if (v13 != 2)
    {
      if (LOBYTE(__dst[17]) != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (LOBYTE(__dst[17]) == 1)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (v10 != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  return v5 & 1;
}