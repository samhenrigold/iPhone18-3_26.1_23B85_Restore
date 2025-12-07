BOOL sub_1CF6F9188(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (*(a1 + 8) == 255)
  {
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(a5 + 16))
  {
    v51 = v10;
LABEL_12:
    v51, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_13;
  }

  v17 = v10;
  v18 = sub_1CEFE4328(v9, v10);
  v20 = v19;
  v17, v19, v21, v22, v23, v24, v25, v26;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = *(*(a5 + 56) + 8 * v18);
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
    goto LABEL_13;
  }

  v29 = v28;
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v31 = v10;
  if (!*(a5 + 16))
  {
    v51 = v10;
    goto LABEL_12;
  }

  v32 = v30;
  v33 = v27;
  v34 = sub_1CEFE4328(v32, v31);
  v36 = v35;
  v31, v35, v37, v38, v39, v40, v41, v42;
  if (v36)
  {
    v43 = *(*(a5 + 56) + 8 * v34);
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (v44)
    {
      v45 = v44;
      v46 = v33;
      v47 = v43;
      v48 = [v45 integerValue];
      v49 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:v29 code:v48 userInfo:0];

      goto LABEL_14;
    }
  }

LABEL_13:
  v49 = 0;
LABEL_14:
  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (*(a5 + 16))
  {
    v60 = v53;
    sub_1CEFE4328(v52, v53);
    v62 = v61;
    v60, v61, v63, v64, v65, v66, v67, v68;
    if (v62)
    {
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v70 = [v69 integerValue];
        v71 = 0;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v53, v53, v54, v55, v56, v57, v58, v59;
  }

  v70 = 0;
  v71 = 1;
LABEL_20:
  v72 = [objc_opt_self() defaultStore];
  v73 = [v72 avoidNilErrorItemsForDetailedPayload];

  if (v73)
  {
    if (!v49)
    {
      return a2 != 0;
    }
  }

  else if (!v49)
  {
    return 0;
  }

  v74 = v49;
  if ((sub_1CF6F528C(v74) & 1) == 0)
  {

    if (!a2)
    {
LABEL_31:

      return 0;
    }

LABEL_30:
    if (((a4 | v71) & 1) == 0)
    {
      v76 = a2;
      v77 = sub_1CF6F528C(a2);

      return (v70 < a3) & ~v77;
    }

    goto LABEL_31;
  }

  if (a2)
  {
    v75 = sub_1CF6F528C(a2);

    if ((v75 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

LABEL_35:
  return 1;
}

double sub_1CF6F9484(const void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1CF9E6118();
  v109 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  memcpy(v113, a1, 0x208uLL);
  v12 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_providerDomainID);

  v13 = a4;
  v14 = v12;
  v15 = [v14 pathComponents];
  v16 = sub_1CF9E6D48();

  v17 = *v16->tree;
  v16, v18, v19, v20, v21, v22, v23, v24;
  if (v17 < 2)
  {
    v25 = *MEMORY[0x1E6967178];
  }

  else
  {
    v25 = [v14 lastPathComponent];
    if (!v25)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;
      v25 = sub_1CF9E6888();
      v27, v28, v29, v30, v31, v32, v33, v34;
    }
  }

  v35 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
  if (!v35)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  v36 = *(v35 + 24);
  if (!*v36->tree)
  {
    goto LABEL_12;
  }

  v37 = sub_1CEFE863C(v25);
  if ((v38 & 1) == 0)
  {
    v36, v38, v39, v40, v41, v42, v43, v44;
LABEL_12:
    swift_beginAccess();
    v62 = *(a3 + 16);
    *(a3 + 16) = 0;
    v62, v63, v64, v65, v66, v67, v68, v69;
    dispatch_group_leave(v13);

    return result;
  }

  v108 = *(*v36[1].tester + 8 * v37);

  v36, v45, v46, v47, v48, v49, v50, v51;
  v52 = v113[0];
  v53 = v113[1];
  if (!LOBYTE(v113[1]))
  {
    v71 = swift_allocObject();
    *(v71 + 16) = sub_1CF6FC60C;
    *(v71 + 24) = v11;
    *(v71 + 32) = v52;
    v72 = v108;
    v73 = *(v108 + 216);
    v57 = swift_allocObject();
    *(v57 + 16) = v52;
    *(v57 + 24) = v72;
    *(v57 + 32) = 0;
    *(v57 + 40) = sub_1CF6FC634;
    *(v57 + 48) = v71;

    v58 = v73;

    v59 = "performWithDiskDiagnosticAttributes(for:isExternalQuery:block:)";
    v60 = sub_1CF6FC644;
    v61 = 63;
    goto LABEL_15;
  }

  if (LOBYTE(v113[1]) == 1)
  {
    v54 = swift_allocObject();
    v54[2] = sub_1CF6FC60C;
    v54[3] = v11;
    v54[4] = v52;
    v55 = v108;
    v56 = *(v108 + 216);
    v57 = swift_allocObject();
    *(v57 + 16) = v52;
    *(v57 + 24) = v55;
    *(v57 + 32) = 0;
    *(v57 + 40) = sub_1CF6FC614;
    *(v57 + 48) = v54;

    v58 = v56;

    v59 = "performWithDiskDiagnosticAttributes(by:isExternalQuery:block:)";
    v60 = sub_1CF6FC624;
    v61 = 62;
LABEL_15:
    sub_1CF01001C(0, v59, v61, 2, v60, v57);

    return result;
  }

  v106 = v113[0];
  v74 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFCCBDC(v113, &v111, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v75 = sub_1CF9E6108();
  v76 = sub_1CF9E72A8();
  sub_1CEFCCC44(v113, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v107 = v76;
  v77 = v76;
  v78 = v75;
  if (os_log_type_enabled(v75, v77))
  {
    v79 = swift_slowAlloc();
    v104 = v79;
    v80 = swift_slowAlloc();
    v105 = v80;
    *v79 = 136315138;
    v110 = v80;
    v111 = v106;
    v112 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C8, &unk_1CFA12A40);
    v81 = sub_1CF9E6948();
    v82 = v78;
    v84 = v83;
    v85 = sub_1CEFD0DF0(v81, v83, &v110);
    v84, v86, v87, v88, v89, v90, v91, v92;
    v93 = v104;
    *(v104 + 1) = v85;
    _os_log_impl(&dword_1CEFC7000, v82, v107, "Asked to retrieve diag info for %s, unsupported", v93, 0xCu);
    v94 = v105;
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x1D386CDC0](v94, -1, -1);
    MEMORY[0x1D386CDC0](v93, -1, -1);
  }

  else
  {
  }

  (*(v109 + 8))(v10, v8);
  swift_beginAccess();
  v95 = *(a3 + 16);
  *(a3 + 16) = 0;
  v95, v96, v97, v98, v99, v100, v101, v102;
  dispatch_group_leave(v13);

  return result;
}

void sub_1CF6F9A38(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v61 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v53 = v6;
  while (v9)
  {
    v56 = a4;
    v22 = v11;
LABEL_14:
    v24 = __clz(__rbit64(v9)) | (v22 << 6);
    v25 = (*(a1 + 48) + 16 * v24);
    v26 = v25[1];
    v27 = *(*(a1 + 56) + 8 * v24);
    v60[0] = *v25;
    v60[1] = v26;
    v60[2] = v27;

    v28 = v27;
    a2(&v57, v60);

    v26, v29, v30, v31, v32, v33, v34, v35;
    v36 = v57;
    v37 = v58;
    v38 = v59;
    v39 = *v61;
    v41 = sub_1CEFE4328(v57, v58);
    v42 = v39[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_25;
    }

    v45 = v40;
    if (v39[3] >= v44)
    {
      if ((v56 & 1) == 0)
      {
        sub_1CF7CF818();
      }
    }

    else
    {
      sub_1CF7C3E7C(v44, v56 & 1);
      v46 = sub_1CEFE4328(v36, v37);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_27;
      }

      v41 = v46;
    }

    v9 &= v9 - 1;
    v48 = *v61;
    if (v45)
    {
      v12 = *(v48[7] + 8 * v41);
      v37, v13, v14, v15, v16, v17, v18, v19;

      v20 = v48[7];
      v21 = *(v20 + 8 * v41);
      *(v20 + 8 * v41) = v12;
    }

    else
    {
      v48[(v41 >> 6) + 8] |= 1 << v41;
      v49 = (v48[6] + 16 * v41);
      *v49 = v36;
      v49[1] = v37;
      *(v48[7] + 8 * v41) = v38;
      v50 = v48[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_26;
      }

      v48[2] = v52;
    }

    a4 = 1;
    v11 = v22;
    v6 = v53;
  }

  v23 = v11;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v10)
    {
      sub_1CEFCB59C(a1);

      return;
    }

    v9 = *(v6 + 8 * v22);
    ++v23;
    if (v9)
    {
      v56 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1CF9E8108();
  __break(1u);
}

uint64_t sub_1CF6F9CD4(void *a1)
{
  _s3__C4CodeOMa_1(0);
  *&v40[0] = -1004;
  sub_1CF00BCE0(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
  v2 = sub_1CF9E5658();
  result = 0;
  if (v2)
  {
    v4 = [a1 userInfo];
    v5 = sub_1CF9E6638();

    v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v7;
    if (*v5->tree)
    {
      v15 = sub_1CEFE4328(v6, v7);
      v17 = v16;
      v14, v16, v18, v19, v20, v21, v22, v23;
      if (v17)
      {
        sub_1CEFD1104(*v5[1].tester + 32 * v15, v40);
        v5, v31, v32, v33, v34, v35, v36, v37;
        sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        sub_1CF6FC3E4();
        result = swift_allocError();
        *v38 = 28;
        *(v38 + 8) = 18;
        return result;
      }

      v39 = v5;
    }

    else
    {
      v5, v7, v8, v9, v10, v11, v12, v13;
      v39 = v14;
    }

    v39, v24, v25, v26, v27, v28, v29, v30;
    memset(v40, 0, sizeof(v40));
    sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return 0;
  }

  return result;
}

uint64_t sub_1CF6F9E84(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = v4;
  v86 = a4;
  v7 = sub_1CF9E53C8();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = &v76 - v10;
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  sub_1CF9E58C8();
  if (qword_1EC4BCD90 != -1)
  {
    swift_once();
  }

  v18 = qword_1EC4EBF30;
  v17 = *algn_1EC4EBF38;
  v19 = qword_1EC4EBF40;
  if (byte_1EC4EBF49)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | byte_1EC4EBF48;
  if (byte_1EC4EBF4A)
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_1CF713060(v18, v17, v19, v21 | v22);
  if (v5)
  {
    return (*(v12 + 8))(v16, v11);
  }

  v25 = v23;
  v76 = 0;
  v88 = a3;
  v78 = v16;
  v79 = v12;
  v80 = v11;
  v26 = objc_opt_self();

  v27 = [v26 defaultStore];
  v87 = v25;
  v28 = v27;
  v29 = [v27 softConcurrentOperationLimit];
  v30 = [v28 hardConcurrentOperationLimit];

  type metadata accessor for JobLimit();
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = v29;
  v31[4] = v29;
  v31[5] = v30;
  v32 = [v26 defaultStore];
  v33 = [v32 softConcurrentContentUpdateLimit];
  v34 = [v32 hardConcurrentContentUpdateLimit];

  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = v33;
  v35[4] = v33;
  v35[5] = v34;
  v77 = v26;
  v36 = [v26 defaultStore];
  v37 = [v36 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v33) = [v36 hardConcurrentMetadataOnlyUpdateLimit];

  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = v37;
  v38[4] = v37;
  v38[5] = v33;
  v39 = [v26 defaultStore];
  v40 = [v39 softConcurrentProvideFileLimit];
  LODWORD(v33) = [v39 hardConcurrentProvideFileLimit];

  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = v40;
  v41[4] = v40;
  v41[5] = v33;
  type metadata accessor for RestoreUpgradeSchemaVFSFileTree(0);
  v42 = swift_allocObject();
  *(v42 + 112) = 0;
  *(v42 + 144) = 0;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0u;
  *(v42 + 120) = 0;
  *(v42 + 128) = 0;
  v43 = *(*v42 + 520);
  v44 = v87;

  v43(v45);
  *(v42 + 136) = v44;
  *(v42 + 80) = v31;
  *(v42 + 88) = v35;
  *(v42 + 96) = v38;
  *(v42 + 104) = v41;
  v46 = v77;
  v47 = [v77 defaultStore];
  v48 = [v47 softConcurrentOperationLimit];
  LODWORD(v39) = [v47 hardConcurrentOperationLimit];

  v49 = swift_allocObject();
  v49[2] = 0;
  v49[3] = v48;
  v49[4] = v48;
  v49[5] = v39;
  v50 = [v46 defaultStore];
  v51 = [v50 softConcurrentContentUpdateLimit];
  LODWORD(v39) = [v50 hardConcurrentContentUpdateLimit];

  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = v51;
  v52[4] = v51;
  v52[5] = v39;
  v53 = [v46 defaultStore];
  v54 = [v53 softConcurrentMetadataOnlyUpdateLimit];
  LODWORD(v41) = [v53 hardConcurrentMetadataOnlyUpdateLimit];

  v55 = swift_allocObject();
  v55[2] = 0;
  v55[3] = v54;
  v55[4] = v54;
  v55[5] = v41;
  v56 = [v46 defaultStore];
  v57 = [v56 softConcurrentProvideFileLimit];
  LODWORD(v41) = [v56 hardConcurrentProvideFileLimit];

  v58 = v41;
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = v57;
  v59[4] = v57;
  v59[5] = v58;
  type metadata accessor for RestoreUpgradeSchemaFPFileTree(0);
  v60 = swift_allocObject();
  *(v60 + 112) = 0;
  *(v60 + 144) = 0;
  *(v60 + 16) = 0u;
  *(v60 + 32) = 0u;
  *(v60 + 48) = 0u;
  *(v60 + 64) = 0u;
  *(v60 + 120) = 0;
  *(v60 + 128) = 0;
  (*(*v60 + 520))();
  v61 = v86;
  *(v60 + 136) = v87;
  *(v60 + 80) = v49;
  *(v60 + 88) = v52;
  *(v60 + 96) = v55;
  *(v60 + 104) = v59;
  v62 = [v61 fileDescriptor];
  v63 = [objc_allocWithZone(MEMORY[0x1E69672D0]) initWithFd:v62 forceColor:1];
  if (!v63)
  {
    v89 = 9;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BCE0(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v74 = v81;
    v75 = v83;
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v82 + 8))(v74, v75);
    swift_willThrow();

    v12 = v79;
    v11 = v80;
    v16 = v78;
    return (*(v12 + 8))(v16, v11);
  }

  v64 = v63;
  v66 = v78;
  v65 = v79;
  v67 = v84;
  v68 = v80;
  (*(v79 + 16))(v84, v78, v80);
  v69 = type metadata accessor for TelemetrySignposter(0);
  v70 = v85;
  (*(*(v69 - 8) + 56))(v85, 1, 1, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB40, &unk_1CFA052C0);
  v71 = swift_allocObject();

  v72 = sub_1CF3B5E24(v67, v42, v60, v70, 1, 0x706D7564, 0xE400000000000000, v71);
  v73 = v64;
  sub_1CF6F3808(v73, (v88 & 1) == 0, 0, v72);

  sub_1CF6C0474();

  return (*(v65 + 8))(v66, v68);
}

uint64_t sub_1CF6FA884(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  *(a1 + 8) = sub_1CF00BCE0(a4, type metadata accessor for BrokenInvariants, a5);
  result = sub_1CF00BCE0(a6, type metadata accessor for BrokenInvariants, a7);
  *(a1 + 16) = result;
  return result;
}

void keypath_getTm_0(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void sub_1CF6FA9E0(uint64_t a1)
{
  sub_1CF9E5A58();
  if (v1 <= 0x3F)
  {
    sub_1CF1DEC4C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CF6FAB38(uint64_t a1)
{
  sub_1CF1DEC4C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1CF6FB2EC()
{
  result = qword_1EDEA5200;
  if (!qword_1EDEA5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA5200);
  }

  return result;
}

unint64_t sub_1CF6FB344()
{
  result = qword_1EC4C2630;
  if (!qword_1EC4C2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2630);
  }

  return result;
}

unint64_t sub_1CF6FB3E0()
{
  result = qword_1EC4C2648;
  if (!qword_1EC4C2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2648);
  }

  return result;
}

unint64_t sub_1CF6FB438()
{
  result = qword_1EC4C2650;
  if (!qword_1EC4C2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2650);
  }

  return result;
}

unint64_t sub_1CF6FB4B8()
{
  result = qword_1EC4C2658;
  if (!qword_1EC4C2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2658);
  }

  return result;
}

unint64_t sub_1CF6FB50C()
{
  result = qword_1EC4C2660;
  if (!qword_1EC4C2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2660);
  }

  return result;
}

unint64_t sub_1CF6FB58C()
{
  result = qword_1EC4C2668;
  if (!qword_1EC4C2668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2668);
  }

  return result;
}

unint64_t sub_1CF6FB5E0()
{
  result = qword_1EC4C2670;
  if (!qword_1EC4C2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2670);
  }

  return result;
}

unint64_t sub_1CF6FB660()
{
  result = qword_1EC4C2678;
  if (!qword_1EC4C2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2678);
  }

  return result;
}

unint64_t sub_1CF6FB6B4()
{
  result = qword_1EDEA5208[0];
  if (!qword_1EDEA5208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA5208);
  }

  return result;
}

unint64_t sub_1CF6FB708()
{
  result = qword_1EDEA4A30;
  if (!qword_1EDEA4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4A30);
  }

  return result;
}

unint64_t sub_1CF6FB760()
{
  result = qword_1EC4C2680;
  if (!qword_1EC4C2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2680);
  }

  return result;
}

unint64_t sub_1CF6FB7FC()
{
  result = qword_1EC4C2698;
  if (!qword_1EC4C2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2698);
  }

  return result;
}

unint64_t sub_1CF6FB854()
{
  result = qword_1EC4C26A0;
  if (!qword_1EC4C26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26A0);
  }

  return result;
}

unint64_t sub_1CF6FB8D4()
{
  result = qword_1EC4C26A8;
  if (!qword_1EC4C26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26A8);
  }

  return result;
}

unint64_t sub_1CF6FB928()
{
  result = qword_1EC4C26B0;
  if (!qword_1EC4C26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26B0);
  }

  return result;
}

unint64_t sub_1CF6FB9A8()
{
  result = qword_1EC4C26B8;
  if (!qword_1EC4C26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26B8);
  }

  return result;
}

unint64_t sub_1CF6FB9FC()
{
  result = qword_1EC4C26C0;
  if (!qword_1EC4C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26C0);
  }

  return result;
}

unint64_t sub_1CF6FBA7C()
{
  result = qword_1EC4C26C8;
  if (!qword_1EC4C26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26C8);
  }

  return result;
}

unint64_t sub_1CF6FBAD0()
{
  result = qword_1EDEA4A38;
  if (!qword_1EDEA4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4A38);
  }

  return result;
}

unint64_t sub_1CF6FBB24()
{
  result = qword_1EDEA48D0;
  if (!qword_1EDEA48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA48D0);
  }

  return result;
}

unint64_t sub_1CF6FBB7C()
{
  result = qword_1EC4C26D0;
  if (!qword_1EC4C26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26D0);
  }

  return result;
}

unint64_t sub_1CF6FBC18()
{
  result = qword_1EC4C26E8;
  if (!qword_1EC4C26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26E8);
  }

  return result;
}

unint64_t sub_1CF6FBC70()
{
  result = qword_1EC4C26F0;
  if (!qword_1EC4C26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26F0);
  }

  return result;
}

unint64_t sub_1CF6FBCF0()
{
  result = qword_1EC4C26F8;
  if (!qword_1EC4C26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C26F8);
  }

  return result;
}

unint64_t sub_1CF6FBD44()
{
  result = qword_1EC4C2700;
  if (!qword_1EC4C2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2700);
  }

  return result;
}

unint64_t sub_1CF6FBDC4()
{
  result = qword_1EC4C2708;
  if (!qword_1EC4C2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2708);
  }

  return result;
}

unint64_t sub_1CF6FBE18()
{
  result = qword_1EC4C2710;
  if (!qword_1EC4C2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2710);
  }

  return result;
}

unint64_t sub_1CF6FBE98()
{
  result = qword_1EC4C2718;
  if (!qword_1EC4C2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2718);
  }

  return result;
}

unint64_t sub_1CF6FBEEC()
{
  result = qword_1EDEA48D8[0];
  if (!qword_1EDEA48D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA48D8);
  }

  return result;
}

unint64_t sub_1CF6FBF40()
{
  result = qword_1EDEA4A40;
  if (!qword_1EDEA4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA4A40);
  }

  return result;
}

unint64_t sub_1CF6FBF98()
{
  result = qword_1EC4C2720;
  if (!qword_1EC4C2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2720);
  }

  return result;
}

unint64_t sub_1CF6FC034()
{
  result = qword_1EC4C2738;
  if (!qword_1EC4C2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2738);
  }

  return result;
}

unint64_t sub_1CF6FC08C()
{
  result = qword_1EC4C2740;
  if (!qword_1EC4C2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2740);
  }

  return result;
}

unint64_t sub_1CF6FC10C()
{
  result = qword_1EC4C2748;
  if (!qword_1EC4C2748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2748);
  }

  return result;
}

unint64_t sub_1CF6FC160()
{
  result = qword_1EC4C2750;
  if (!qword_1EC4C2750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2750);
  }

  return result;
}

uint64_t sub_1CF6FC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF6FC21C()
{
  result = qword_1EC4C2758;
  if (!qword_1EC4C2758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2758);
  }

  return result;
}

unint64_t sub_1CF6FC270()
{
  result = qword_1EC4C2760;
  if (!qword_1EC4C2760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2760);
  }

  return result;
}

unint64_t sub_1CF6FC2C4()
{
  result = qword_1EC4C2788;
  if (!qword_1EC4C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2788);
  }

  return result;
}

unint64_t sub_1CF6FC318()
{
  result = qword_1EC4C2790;
  if (!qword_1EC4C2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2790);
  }

  return result;
}

unint64_t sub_1CF6FC36C()
{
  result = qword_1EC4C27A0;
  if (!qword_1EC4C27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C27A0);
  }

  return result;
}

unint64_t sub_1CF6FC3E4()
{
  result = qword_1EC4C27D0;
  if (!qword_1EC4C27D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C27D0);
  }

  return result;
}

void sub_1CF6FC470(id a1, unsigned __int8 a2)
{
  if (a2 <= 0x10u)
  {
  }
}

uint64_t sub_1CF6FC524(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1CEFCCCEC(&qword_1EC4BE548, &unk_1EC4BFC10, &qword_1CF9FE510, &unk_1CF9FEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF6FC5B8()
{
  result = qword_1EC4C2828;
  if (!qword_1EC4C2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2828);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1CF6FC6EC()
{
  result = qword_1EDEA4A48[0];
  if (!qword_1EDEA4A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA4A48);
  }

  return result;
}

uint64_t sub_1CF6FC740(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1CF6FC7C4()
{
  result = qword_1EC4C2858;
  if (!qword_1EC4C2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2860, &qword_1CFA12A78);
    sub_1CF6FC5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2858);
  }

  return result;
}

id sub_1CF6FC860()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void sub_1CF6FC8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(v3 + 16);
  v5 = a3(a1, a2);
  (*(v4 + 16))(v4, v5);
}

void sub_1CF6FC9A0(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1CF6D2BDC(v4, v5, v6, a1);
}

double sub_1CF6FCA20(uint64_t a1)
{
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  return result;
}

uint64_t sub_1CF6FCB7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CF0262EC;

  return sub_1CF6C20F4(a1, v4, v5, v6);
}

unint64_t sub_1CF6FCC30()
{
  result = qword_1EDEA7110[0];
  if (!qword_1EDEA7110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEA7110);
  }

  return result;
}

uint64_t sub_1CF6FCC84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1CF6FCCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CF6FCD44()
{
  result = qword_1EC4C28B8;
  if (!qword_1EC4C28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28B8);
  }

  return result;
}

unint64_t sub_1CF6FCD9C()
{
  result = qword_1EC4C28C0;
  if (!qword_1EC4C28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28C0);
  }

  return result;
}

unint64_t sub_1CF6FCDF4()
{
  result = qword_1EC4C28C8;
  if (!qword_1EC4C28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28C8);
  }

  return result;
}

unint64_t sub_1CF6FCE4C()
{
  result = qword_1EC4C28D0;
  if (!qword_1EC4C28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28D0);
  }

  return result;
}

unint64_t sub_1CF6FCEA0()
{
  result = qword_1EDEADDC8[0];
  if (!qword_1EDEADDC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEADDC8);
  }

  return result;
}

uint64_t sub_1CF6FCFEC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - v10;
  sub_1CF7019D4(a3, v32 - v10);
  v12 = sub_1CF9E6F08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CEFCCC44(v11, &qword_1EC4BFBA8, &qword_1CFA12B20);
  }

  else
  {
    sub_1CF9E6EF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CF9E6EC8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CF9E6978() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
      a2, v24, v25, v26, v27, v28, v29, v30;

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CF6FD2DC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - v10;
  sub_1CF7019D4(a3, v32 - v10);
  v12 = sub_1CF9E6F08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CEFCCC44(v11, &qword_1EC4BFBA8, &qword_1CFA12B20);
  }

  else
  {
    sub_1CF9E6EF8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CF9E6EC8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CF9E6978() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28E0, &qword_1CFA13260);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v22 = swift_task_create();

      sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
      a2, v23, v24, v25, v26, v27, v28, v29;
      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CEFCCC44(a3, &qword_1EC4BFBA8, &qword_1CFA12B20);
  v31 = swift_allocObject();
  *(v31 + 16) = a4;
  *(v31 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28E0, &qword_1CFA13260);
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CF6FD5E0()
{
  v0 = sub_1CF9E7388();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v21 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1CF9E7318();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v18 = sub_1CF9E6448();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v19 = sub_1CF701F40();
  v17 = "@NSDictionary24@NSError32";
  sub_1CF9E63F8();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1CF701F8C(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v14 = v18;
  (*(v8 + 16))(v10, v13, v18);
  (*(v3 + 16))(v20, v7, v2);
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8098], v23);
  v15 = sub_1CF9E73B8();
  (*(v3 + 8))(v7, v2);
  result = (*(v8 + 8))(v13, v14);
  qword_1EDEBB898 = v15;
  return result;
}

dispatch_semaphore_t sub_1CF6FD974()
{
  result = dispatch_semaphore_create(0);
  qword_1EC4EBE88 = result;
  return result;
}

uint64_t sub_1CF6FD9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1CF9E6118();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF6FDA94, 0, 0);
}

uint64_t sub_1CF6FDA94(uint64_t a1)
{
  v2 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "🧹 reingesting items from Periodic FPCK", v5, 2u);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v6 = v1[10];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[3];

  v10 = *(v8 + 8);
  v10(v6, v7);
  v11 = *(v9 + 160);
  if (v11)
  {
    v12 = *(v9 + 168);
    sub_1CF9E5688();
    swift_allocObject();

    sub_1CF9E5678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CF1E1244();
    sub_1CF9E5668();

    v20 = v1[2];
    v11(v20);
    v20, v21, v22, v23, v24, v25, v26, v27;
    sub_1CEFF7124(v11, v12);
  }

  else
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E72A8();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[9];
    v18 = v1[6];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "🧹 could not accept items to reingest from FPCK, reingestItemsInDomain is nil", v19, 2u);
      MEMORY[0x1D386CDC0](v19, -1, -1);
    }

    v10(v17, v18);
  }

  v28 = v1[1];

  return v28();
}

uint64_t sub_1CF6FDE04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF6FD9B8(a1, v4, v5, v6, v7, v8);
}

double sub_1CF6FDF0C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_1CF9E6F08();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v6;
  v13[5] = a1;
  v13[6] = a2;

  sub_1CEFE42D4(a1, a2);
  sub_1CF6FCFEC(0, 0, v11, a4, v13);

  return result;
}

uint64_t sub_1CF6FE02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1CF9E6118();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CF6FE108, 0, 0);
}

uint64_t sub_1CF6FE108(uint64_t a1)
{
  v2 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v3 = sub_1CF9E6108();
  v4 = sub_1CF9E7288();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CEFC7000, v3, v4, "🧹 sending TTR for Periodic FPCK", v5, 2u);
    MEMORY[0x1D386CDC0](v5, -1, -1);
  }

  v6 = v1[10];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[3];

  v10 = *(v8 + 8);
  v1[11] = v10;
  v11 = v10(v6, v7);
  v12 = (*(v9 + 144))(v11);
  v1[12] = v12;
  if (v12)
  {
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
    sub_1CF1E1244();
    sub_1CF9E5668();

    v22 = v1[2];
    v1[13] = v22;
    v23 = swift_task_alloc();
    v1[14] = v23;
    *v23 = v1;
    v23[1] = sub_1CF6FE4D4;

    return sub_1CF7F8760(v22, 0, 0, 0, 0x2000000);
  }

  else
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E72A8();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[9];
    v18 = v1[6];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CEFC7000, v14, v15, "🧹 could not accept TTR from FPCK, DiagnosticsManager is nil", v19, 2u);
      MEMORY[0x1D386CDC0](v19, -1, -1);
    }

    v10(v17, v18);

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_1CF6FE4D4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  *(v2 + 104), v3, v4, v5, v6, v7, v8, v9;
  if (v0)
  {
    v10 = sub_1CF6FE684;
  }

  else
  {
    v10 = sub_1CF6FE608;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1CF6FE608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CF6FE684(uint64_t a1)
{
  v2 = v1[15];
  v3 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v4 = sub_1CF9E6108();
  v5 = sub_1CF9E72A8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[11];
  v8 = v1[8];
  v9 = v1[6];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CEFC7000, v4, v5, "🧹 failed decoding VFSItemID for TTR from FPCK", v10, 2u);
    MEMORY[0x1D386CDC0](v10, -1, -1);
  }

  v7(v8, v9);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1CF6FE7D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0264D8;

  return sub_1CF6FE02C(a1, v4, v5, v6, v7, v8);
}

double sub_1CF6FE8BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = a3;

  v12 = sub_1CF9E5B88();
  v14 = v13;

  v15 = sub_1CF9E6F08();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = v12;
  v16[6] = v14;
  sub_1CF6FCFEC(0, 0, v10, a5, v16);

  return result;
}

uint64_t sub_1CF6FE9EC(uint64_t (*a1)(void, void, __n128))
{
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  if (*(v1 + 97) != 1)
  {
    v17 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v18 = sub_1CF9E7288();
    if (!os_log_type_enabled(v14, v18))
    {
      v12 = 1;
      goto LABEL_10;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CEFC7000, v14, v18, "🧹 Periodic FPCK is paused because it has been unregistered", v16, 2u);
    v12 = 1;
LABEL_7:
    MEMORY[0x1D386CDC0](v16, -1, -1);
LABEL_10:

    (*(v4 + 8))(v6, v3);
    return (a1)(v12 & 1, 0);
  }

  v10 = *(v1 + 112);

  v12 = v10(v11);

  if (v12)
  {
    v13 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v14 = sub_1CF9E6108();
    v15 = sub_1CF9E7288();
    if (!os_log_type_enabled(v14, v15))
    {
      v6 = v9;
      goto LABEL_10;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CEFC7000, v14, v15, "🧹 Periodic FPCK is paused because system indicated", v16, 2u);
    v6 = v9;
    goto LABEL_7;
  }

  return (a1)(v12 & 1, 0);
}

void sub_1CF6FED30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(__n128), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v52 = a5;
  v14 = a3;
  v49 = a10;
  v50 = a11;
  v17 = a9;
  v18 = sub_1CF9E6118();
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v22 = sub_1CF9E6108();
  v23 = sub_1CF9E7288();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = a8;
    v25 = v24;
    v26 = swift_slowAlloc();
    v45 = a6;
    v43 = v26;
    v53 = v26;
    *v25 = 136315138;
    v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v44 = a1;
    v29 = v28;
    v30 = v14;
    v31 = a7;
    v32 = sub_1CEFD0DF0(v27, v28, &v53);
    v29, v33, v34, v35, v36, v37, v38, v39;
    *(v25 + 4) = v32;
    a7 = v31;
    v14 = v30;
    v17 = a9;
    _os_log_impl(&dword_1CEFC7000, v22, v23, "starting to run periodic FPCK for %s", v25, 0xCu);
    v40 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    a6 = v45;
    MEMORY[0x1D386CDC0](v40, -1, -1);
    v41 = v25;
    a8 = v46;
    MEMORY[0x1D386CDC0](v41, -1, -1);
  }

  (*(v47 + 8))(v20, v48);
  sub_1CF6FEF88(a2, v14, v51, v52, a6, a7 & 1, a8, v17, v49, v50);
}

void sub_1CF6FEF88(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(__n128), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v236 = a6;
  v235 = a5;
  v247 = a4;
  v234 = a3;
  v237 = a2;
  v276 = *MEMORY[0x1E69E9840];
  v257 = sub_1CF9E6118();
  v256 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v251 = &v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v253 = &v228 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v232 = &v228 - v19;
  v243 = sub_1CF9E5CF8();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v241 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E5D98();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v252 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = sub_1CF9E5868();
  v266 = *(v259 - 1);
  MEMORY[0x1EEE9AC00](v259);
  v258 = &v228 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CF9E5A58();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v246 = &v228 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v230 = &v228 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v263 = &v228 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v267 = &v228 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v260 = &v228 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v265 = &v228 - v37;
  v233 = v38;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v228 - v41;
  if (!*(a1 + 16))
  {
    sub_1CF5137B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/fpck/PeriodicFPCK.swift", 96, 2, 192);
  }

  v43 = *(v26 + 16);
  v231 = *(v26 + 80);
  v248 = a1;
  v245 = v26 + 16;
  v244 = v43;
  (v43)(v42, a1 + ((v231 + 32) & ~v231), v25, v40);
  v44 = swift_allocObject();
  v262 = v11;
  swift_weakInit();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = a7;
  v255 = a7;
  v45[4] = a8;
  v46 = objc_opt_self();
  v261 = v44;

  v254 = a8;

  v47 = [v46 fp_secureTempDirectory];
  if (!v47)
  {
    v99 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v100 = sub_1CF9E6108();
    v101 = sub_1CF9E72B8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1CEFC7000, v100, v101, "Couldn't get secure temp URL for periodic FPCK", v102, 2u);
      MEMORY[0x1D386CDC0](v102, -1, -1);
    }

    (*(v256 + 8))(v253, v257);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 96) = 0;
    }

    (v255)(Strong);

    (*(v26 + 8))(v42, v25);
    goto LABEL_24;
  }

  v250 = v45;
  v253 = v42;
  v48 = v47;
  sub_1CF9E59D8();

  aBlock = 0xD000000000000011;
  v271 = 0x80000001CFA591D0;
  v264 = v25;
  LODWORD(v240) = *MEMORY[0x1E6968F58];
  v49 = v22;
  v50 = v266;
  v238 = v21;
  v51 = (v266 + 13);
  v239 = v266[13];
  v52 = v258;
  v53 = v259;
  v239(v258);
  v54 = sub_1CEFE4E68();
  sub_1CF9E5A48();
  v249 = v26;
  v55 = v50[1];
  v55(v52, v53);
  v56 = v252;
  sub_1CF9E5D88();
  v57 = sub_1CF9E5D18();
  v59 = v58;
  (*(v49 + 8))(v56, v238);
  aBlock = v57;
  v271 = v59;
  v60 = v240;
  v240 = v51;
  v61 = v239;
  (v239)(v52, v60, v53);
  v62 = v61;
  v238 = v54;
  v63 = v260;
  v64 = v267;
  sub_1CF9E5A48();
  v266 = v50 + 1;
  v229 = v55;
  v55(v52, v53);
  v59, v65, v66, v67, v68, v69, v70, v71;
  v72 = v249 + 8;
  v252 = *(v249 + 8);
  (v252)(v64, v264);
  v73 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v74 = sub_1CF9E5928();
  aBlock = 0;
  LODWORD(v59) = [v73 createDirectoryAtURL:v74 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (!v59)
  {
    v104 = aBlock;
    v105 = sub_1CF9E57F8();

    swift_willThrow();
    v106 = fpfs_current_or_default_log();
    v107 = v251;
    sub_1CF9E6128();

    v108 = v105;
    v109 = sub_1CF9E6108();
    v110 = sub_1CF9E72A8();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      aBlock = v113;
      *v111 = 136315394;
      v114 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v116 = v115;
      v117 = sub_1CEFD0DF0(v114, v115, &aBlock);
      v116, v118, v119, v120, v121, v122, v123, v124;
      *(v111 + 4) = v117;
      *(v111 + 12) = 2112;
      swift_getErrorValue();
      v125 = Error.prettyDescription.getter(v268, v269);
      *(v111 + 14) = v125;
      *v112 = v125;
      _os_log_impl(&dword_1CEFC7000, v109, v110, "Failed to mkdir for DB backup on %s : %@", v111, 0x16u);
      sub_1CEFCCC44(v112, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v112, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v63 = v260;
      MEMORY[0x1D386CDC0](v113, -1, -1);
      MEMORY[0x1D386CDC0](v111, -1, -1);

      (*(v256 + 8))(v251, v257);
    }

    else
    {

      (*(v256 + 8))(v107, v257);
    }

    v155 = v255;
    swift_beginAccess();
    v156 = swift_weakLoadStrong();
    if (v156)
    {
      *(v156 + 96) = 0;
    }

    (v155)(v156);

    v157 = v264;
    v158 = v252;
    (v252)(v63, v264);
    v158(v265, v157);
    v158(v253, v157);
LABEL_24:

    return;
  }

  v75 = v262;
  v76 = v262[3];
  v77 = aBlock;
  v78 = v76;
  v79 = [v78 pathComponents];
  v80 = sub_1CF9E6D48();

  v81 = *v80->tree;
  v80, v82, v83, v84, v85, v86, v87, v88;
  if (v81 < 2)
  {
    v89 = *MEMORY[0x1E6967178];
  }

  else
  {
    v89 = [v78 lastPathComponent];
    if (!v89)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v91 = v90;
      v89 = sub_1CF9E6888();
      v91, v92, v93, v94, v95, v96, v97, v98;
    }
  }

  aBlock = 0;
  v271 = 0xE000000000000000;
  v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v128 = v127;
  MEMORY[0x1D3868CC0](v126);
  v128, v129, v130, v131, v132, v133, v134, v135;
  MEMORY[0x1D3868CC0](45, 0xE100000000000000);
  v136 = v241;
  sub_1CF9E5CC8();
  sub_1CF9E5C98();
  (*(v242 + 8))(v136, v243);
  sub_1CF9E6F78();
  v137 = v271;
  v138 = v258;
  v139 = v259;
  (v62)(v258, *MEMORY[0x1E6968F70], v259);
  v140 = v263;
  sub_1CF9E5A48();
  v229(v138, v139);
  v137, v141, v142, v143, v144, v145, v146, v147;
  if ((v75[6])(v140))
  {
    v266 = v78;

    is_internal_build = fpfs_is_internal_build();
    v228 = v72;
    v251 = v89;
    if (is_internal_build && (v149 = objc_allocWithZone(MEMORY[0x1E695E000]), v150 = sub_1CF9E6888(), v151 = [v149 initWithSuiteName_], v150, v151) && (v152 = sub_1CF9E6888(), v153 = objc_msgSend(v151, sel_BOOLForKey_, v152), v151, v152, (v153 & 1) != 0))
    {
      v154 = 7176;
    }

    else
    {
      v154 = 3080;
    }

    v261 = v154;
    v162 = v232;
    v163 = v230;
    v164 = v264;
    v165 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v244(v163, v263, v164);
    v166 = v262;

    v167 = sub_1CF9E6108();
    v168 = sub_1CF9E7288();

    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      aBlock = v170;
      *v169 = 136315394;
      v171 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v173 = v172;
      v174 = sub_1CEFD0DF0(v171, v172, &aBlock);
      v173, v175, v176, v177, v178, v179, v180, v181;
      *(v169 + 4) = v174;
      *(v169 + 12) = 2080;
      v182 = sub_1CF9E5928();
      v183 = [v182 fp_shortDescription];

      v184 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v186 = v185;

      v164 = v264;
      (v252)(v163, v264);
      v187 = sub_1CEFD0DF0(v184, v186, &aBlock);
      v186, v188, v189, v190, v191, v192, v193, v194;
      *(v169 + 14) = v187;
      _os_log_impl(&dword_1CEFC7000, v167, v168, "🧹 Periodic FPCK starting for %s with DB at %s", v169, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v170, -1, -1);
      v195 = v169;
      v166 = v262;
      MEMORY[0x1D386CDC0](v195, -1, -1);
    }

    else
    {

      (v252)(v163, v164);
    }

    (*(v256 + 8))(v162, v257);
    v259 = [objc_opt_self() sharedManager];
    v196 = v231;
    if (v166[4])
    {
      v258 = sub_1CF9E6618();
    }

    else
    {
      v258 = 0;
    }

    v243 = a10;
    v242 = a9;
    v197 = ~v196;
    v257 = sub_1CF9E5928();
    v256 = sub_1CF9E5928();
    v255 = sub_1CF9E6D28();
    if (v166[9])
    {
      v254 = sub_1CF9E6888();
    }

    else
    {
      v254 = 0;
    }

    v241 = v166[13];
    v198 = v244;
    v244(v267, v253, v164);
    v198(v246, v263, v164);
    v199 = v166;
    v200 = (v196 + 56) & v197;
    v201 = (v233 + v196 + v200) & v197;
    v202 = (v233 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    v203 = (v202 + 11) & 0xFFFFFFFFFFFFFFF8;
    v204 = (v203 + 11) & 0xFFFFFFFFFFFFFFF8;
    v245 = (v204 + 15) & 0xFFFFFFFFFFFFFFF8;
    v205 = swift_allocObject();
    v206 = v250;
    *(v205 + 2) = sub_1CF701DD8;
    *(v205 + 3) = v206;
    v207 = v234;
    *(v205 + 4) = v199;
    *(v205 + 5) = v207;
    *(v205 + 6) = v247;
    v208 = *(v249 + 32);
    v208(&v205[v200], v267, v164);
    v208(&v205[v201], v246, v164);
    *&v205[v202] = v248;
    v209 = v237;
    *&v205[v203] = v237;
    v210 = v261;
    *&v205[v204] = v261;
    v211 = &v205[v245];
    *v211 = v235;
    v211[8] = v236 & 1;
    v212 = &v205[(v204 + 31) & 0xFFFFFFFFFFFFFFF8];
    v213 = v242;
    v214 = v243;
    *v212 = v242;
    v212[1] = v214;
    v274 = sub_1CF701DE4;
    v275 = v205;
    aBlock = MEMORY[0x1E69E9820];
    v271 = 1107296256;
    v272 = sub_1CF70176C;
    v273 = &block_descriptor_35;
    v215 = _Block_copy(&aBlock);

    sub_1CF03C63C(v213, v214);

    LOBYTE(v227) = 0;
    LOWORD(v226) = 1;
    v225 = v210;
    v216 = v254;
    v217 = v259;
    v218 = v258;
    v219 = v257;
    v220 = v256;
    v221 = v255;
    [v259 prepareFPCKRun:v266 domainUserInfo:v258 domainRootURL:v257 databaseBackupPath:v256 urls:v255 volumeRole:v209 personaIdentifier:v254 options:v225 reason:20 fpfs:v226 iCDPackageDetection:v241 launchType:v227 runOnWorkQueue:v215 completionHandler:?];
    _Block_release(v215);

    v222 = v264;
    v223 = v252;
    (v252)(v263, v264);
    v224 = v260;
    sub_1CF700518();

    v223(v224, v222);
    v223(v265, v222);
    v223(v253, v222);
  }

  else
  {
    swift_beginAccess();
    v159 = swift_weakLoadStrong();
    if (v159)
    {
      *(v159 + 96) = 0;
    }

    (v255)(v159);

    v160 = v264;
    v161 = v252;
    (v252)(v263, v264);

    sub_1CF700518();

    v161(v63, v160);
    v161(v265, v160);
    v161(v253, v160);
  }
}

uint64_t sub_1CF7004B0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 96) = 0;
  }

  return a2(Strong);
}

void sub_1CF700518()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v1 = sub_1CF9E5928();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_1CF9E57F8();

    swift_willThrow();
  }
}

void sub_1CF700630(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  v70 = a7;
  v76 = a4;
  v22 = sub_1CF9E63A8();
  v75 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1CF9E6448();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1CF9E6118();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v70 = v22;
    v30 = a3;
    v31 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v32 = a3;
    v33 = sub_1CF9E6108();
    v34 = sub_1CF9E72A8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v71 = a5;
      v37 = v36;
      *v35 = 138412290;
      swift_getErrorValue();
      v38 = Error.prettyDescription.getter(v77, v78);
      *(v35 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&dword_1CEFC7000, v33, v34, "Failed to prepare FPCK run: %@", v35, 0xCu);
      sub_1CEFCCC44(v37, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v39 = v37;
      a5 = v71;
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    (*(v27 + 8))(v29, v26);
    if (qword_1EDEA6A18 != -1)
    {
      swift_once();
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v76;
    *(v40 + 24) = a5;
    v84 = sub_1CEFFD05C;
    v85 = v40;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1CEFCA444;
    v83 = &block_descriptor_73_0;
    v41 = _Block_copy(&aBlock);

    sub_1CF9E63F8();
    v79 = MEMORY[0x1E69E7CC0];
    sub_1CF701F8C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
    v42 = v73;
    v43 = v70;
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v25, v42, v41);
    _Block_release(v41);

    (*(v75 + 8))(v42, v43);
    (*(v72 + 8))(v25, v74);
  }

  else
  {
    v75 = a1;
    v71 = a5;
    v72 = a17;
    v67 = a14;
    v73 = a13;
    LODWORD(v74) = a12;
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v46 = v70;
    v45[2] = v44;
    v45[3] = v46;
    v45[4] = a8;
    v47 = objc_opt_self();

    v70 = [v47 sharedManager];
    v48 = a6[4];
    v68 = a6[3];
    if (v48)
    {
      v69 = sub_1CF9E6618();
    }

    else
    {
      v69 = 0;
    }

    v66 = sub_1CF9E5928();
    v65 = sub_1CF9E5928();
    sub_1CF9E5A58();
    v64 = sub_1CF9E6D28();
    v63 = a6[13];
    v84 = sub_1CF701F04;
    v85 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1CF5D9124;
    v83 = &block_descriptor_61;
    v49 = _Block_copy(&aBlock);

    if (a15)
    {
      v50 = -1;
    }

    else
    {
      v50 = v67;
    }

    v51 = swift_allocObject();
    v51[2] = a6;
    v51[3] = a16;
    v53 = v71;
    v52 = v72;
    v54 = v76;
    v51[4] = v72;
    v51[5] = v54;
    v51[6] = v53;
    v84 = sub_1CF701F10;
    v85 = v51;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1CF701680;
    v83 = &block_descriptor_67_1;
    v55 = _Block_copy(&aBlock);

    sub_1CF03C63C(a16, v52);

    v62 = v50;
    LOWORD(v61) = 1;
    v57 = v69;
    v56 = v70;
    v58 = v66;
    v59 = v65;
    v60 = v64;
    [v70 scheduleFPCKRun:v68 domainUserInfo:v69 domainRootURL:v66 databaseBackupPath:v65 urls:v64 volumeRole:v74 options:v73 reason:20 fpfs:v61 iCDPackageDetection:v63 launchType:a6 updateReceiver:v49 shouldPause:v62 contentBarrier:v75 proxy:v55 completionHandler:?];
    _Block_release(v55);
    _Block_release(v49);
  }
}

void sub_1CF700E24(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v13 = type metadata accessor for FPShouldPauseResult();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 1;
    *&v14[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = 0;
    v23.receiver = v14;
    v23.super_class = v13;
    objc_msgSendSuper2(&v23, sel_init);
    return;
  }

  v4 = Strong;
  if ((*(Strong + 97) & 1) == 0)
  {
    v15 = type metadata accessor for FPShouldPauseResult();
    v16 = objc_allocWithZone(v15);
    v16[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 1;
    *&v16[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = 0;
    v22.receiver = v16;
    v22.super_class = v15;
    objc_msgSendSuper2(&v22, sel_init);
LABEL_12:

    return;
  }

  if ((a2() & 1) == 0)
  {
    v17 = type metadata accessor for FPShouldPauseResult();
    v18 = objc_allocWithZone(v17);
    v18[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 0;
    *&v18[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = 0;
    v21.receiver = v18;
    v21.super_class = v17;
    objc_msgSendSuper2(&v21, sel_init);
    goto LABEL_12;
  }

  *(v4 + 96) = 2;
  v5 = *(v4 + 16);
  if (!v5 || (v6 = *(v5 + 56), v7 = swift_allocObject(), *(v7 + 16) = sub_1CF702384, *(v7 + 24) = v5, aBlock[4] = sub_1CF1C0B54, aBlock[5] = v7, aBlock[0] = MEMORY[0x1E69E9820], aBlock[1] = 1107296256, aBlock[2] = sub_1CEFFD02C, aBlock[3] = &block_descriptor_93, v8 = _Block_copy(aBlock), swift_retain_n(), , , dispatch_sync(v6, v8), _Block_release(v8), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) == 0))
  {
    if (qword_1EC4BCD70 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC4EBE88;
    v10 = type metadata accessor for FPShouldPauseResult();
    v11 = objc_allocWithZone(v10);
    v11[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_shouldPause] = 1;
    *&v11[OBJC_IVAR____TtC18FileProviderDaemon19FPShouldPauseResult_semaphore] = v9;
    v19.receiver = v11;
    v19.super_class = v10;
    v12 = v9;
    objc_msgSendSuper2(&v19, sel_init);

    goto LABEL_12;
  }

  __break(1u);
}

double sub_1CF701134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a4;
  v26 = sub_1CF9E63A8();
  v31 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1CF9E6448();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA6A18 != -1)
  {
    swift_once();
  }

  v27 = qword_1EDEBB898;
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a5;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a1;
  v20[7] = a2;
  v20[8] = v29;
  v20[9] = a9;
  v20[10] = a10;
  aBlock[4] = sub_1CF701FD4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_79_0;
  v21 = _Block_copy(aBlock);

  v22 = a5;
  sub_1CF03C63C(a7, a8);

  sub_1CF9E63F8();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1CF701F8C(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v23 = v26;
  sub_1CF9E77B8();
  MEMORY[0x1D3869630](0, v19, v17, v21);
  _Block_release(v21);
  (*(v31 + 8))(v17, v23);
  (*(v28 + 8))(v19, v30);

  return result;
}

void sub_1CF7014A8(uint64_t a1, id a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, id, uint64_t (*)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t), uint64_t a9)
{
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1;
    v14 = *(v12 + 56);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1CF70200C;
    *(v15 + 24) = v12;
    aBlock[4] = sub_1CEFFD054;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFFD02C;
    aBlock[3] = &block_descriptor_85_1;
    v16 = _Block_copy(aBlock);
    swift_retain_n();

    dispatch_sync(v14, v16);
    _Block_release(v16);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
      return;
    }

    *(v13 + 16) = 0;
  }

  if (a2)
  {
    if (a3)
    {
      v17 = a2;
      a3(a2, 0, 0, 1);
    }
  }

  else if (a3)
  {
    a1 = a3(a5, a6, a7, 0);
  }

  a8(a1, a2, a3, a4);
}

void sub_1CF701680(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  v11 = sub_1CF9E6638();

  v27 = a3;
  v12 = a5;
  v7(v8, v10, v27, v11, a5);

  v10, v13, v14, v15, v16, v17, v18, v19;
  v11, v20, v21, v22, v23, v24, v25, v26;
}

uint64_t sub_1CF70176C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a3;
  v9 = a4;
  v7(a2, v8, a4);

  return swift_unknownObjectRelease();
}

uint64_t PeriodicFPCK.deinit()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  *(v0 + 72), v8, v9, v10, v11, v12, v13, v14;

  sub_1CEFF7124(*(v0 + 160), *(v0 + 168));
  return v0;
}

uint64_t PeriodicFPCK.__deallocating_deinit()
{
  PeriodicFPCK.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1CF701980()
{
  result = qword_1EC4C28D8;
  if (!qword_1EC4C28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C28D8);
  }

  return result;
}

uint64_t sub_1CF7019D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBA8, &qword_1CFA12B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF701A44(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1CF701B38;

  return v5(v2 + 16);
}

uint64_t sub_1CF701B38()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1CF701C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CF0264D8;

  return sub_1CF701A44(a1, v4);
}

uint64_t sub_1CF701D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CF0262EC;

  return sub_1CF701A44(a1, v4);
}

void sub_1CF701DE4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_1CF9E5A58() - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 56) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 11) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 11) & 0xFFFFFFFFFFFFFFF8;
  sub_1CF700630(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), v3 + v9, v3 + v11, *(v3 + v12), *(v3 + v13), *(v3 + v14), *(v3 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1CF701F40()
{
  result = qword_1EDEAED70;
  if (!qword_1EDEAED70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDEAED70);
  }

  return result;
}

uint64_t sub_1CF701F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF702014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  if (*(a1 + 97) != 1)
  {
    v18 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v19 = sub_1CF9E7288();
    if (!os_log_type_enabled(v15, v19))
    {
      v13 = 1;
      goto LABEL_10;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEFC7000, v15, v19, "🧹 Periodic FPCK is paused because it has been unregistered", v17, 2u);
    v13 = 1;
LABEL_7:
    MEMORY[0x1D386CDC0](v17, -1, -1);
LABEL_10:

    (*(v5 + 8))(v10, v4);
    return (*(a2 + 16))(a2, v13 & 1, 0);
  }

  v11 = *(a1 + 112);

  v13 = v11(v12);

  if (v13)
  {
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7288();
    if (!os_log_type_enabled(v15, v16))
    {
      v10 = v7;
      goto LABEL_10;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1CEFC7000, v15, v16, "🧹 Periodic FPCK is paused because system indicated", v17, 2u);
    v10 = v7;
    goto LABEL_7;
  }

  return (*(a2 + 16))(a2, v13 & 1, 0);
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  sub_1CEFE4714(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1CF7022A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CF0262EC;

  return sub_1CF6FD9B8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CF7023A0()
{
  if (*(v0 + 48) != 1)
  {
    return *(v0 + 40);
  }

  result = sub_1CF7023DC(v0);
  *(v0 + 40) = result;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_1CF7023DC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v3 = sub_1CF663824();
  v5 = v4;
  v2, v4, v6, v7, v8, v9, v10, v11;
  if (!v3)
  {
    return 0;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(*result + 464);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
    v13(&v15, 1, "itemCount", 9, 2, 2, sub_1CF7035B0, v5, v14);

    if (v16)
    {
      return 0;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CF702508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  result = sub_1CF4AC9EC(v6, v4, v5);
  if (v2)
  {

    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2 != 0;
  return result;
}

double sub_1CF70258C@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  v69 = a4;
  v70 = a5;
  v71 = a3;
  v12 = sub_1CF9E6118();
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v65 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v65 - v18;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  (*(*(v22 - 8) + 56))(a6, 1, 1, v22);
  swift_beginAccess();
  v24 = *(v8 + 24);
  if (!*v24->tree)
  {
    return result;
  }

  sub_1CEFE863C(a2);
  if ((v25 & 1) == 0)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
    return result;
  }

  v65 = v14;

  v24, v32, v33, v34, v35, v36, v37, v38;
  swift_beginAccess();
  v39 = *(v8 + 16);
  if (!*v39->tree)
  {
LABEL_11:

    return result;
  }

  sub_1CEFE863C(a2);
  if ((v40 & 1) == 0)
  {
    v39, v40, v41, v42, v43, v44, v45, v46;
    goto LABEL_11;
  }

  v39, v47, v48, v49, v50, v51, v52, v53;
  v74 = v20;
  v75 = v21;
  v54 = v70;
  v55 = v69;
  sub_1CF20BAC8(&v74, v71, v69, v70, &v76);
  if (v7)
  {
    v56 = fpfs_current_or_default_log();
    v57 = v66;
    sub_1CF9E6128();
    v58 = v7;
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E72A8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      swift_getErrorValue();
      v63 = Error.prettyDescription.getter(v72, v73);
      *(v61 + 4) = v63;
      *v62 = v63;
      _os_log_impl(&dword_1CEFC7000, v59, v60, "Error fetching the item in the reconciliation table: %{public}@", v61, 0xCu);
      sub_1CEFCCC44(v62, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    else
    {
    }

    (*(v67 + 8))(v57, v68);
  }

  else
  {
    v64 = v76;
    if (v76)
    {
      v74 = v76;
      sub_1CF48C684(&v74, 0, v71, v55, v54, v19);
      sub_1CEFCCC44(a6, &unk_1EC4BFBB0, &qword_1CF9FCB90);

      sub_1CF703540(v19, a6);
    }

    else
    {
    }
  }

  return result;
}

void sub_1CF702B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = sub_1CF9E6118();
  v13 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v6 + 16);
  if (*v16->tree)
  {

    sub_1CEFE863C(a1);
    if (v17)
    {

      v16, v24, v25, v26, v27, v28, v29, v30;
      MEMORY[0x1EEE9AC00](v31);
      *(&v49 - 2) = a3;
      *(&v49 - 1) = a4;
      sub_1CF4B9A30(a2, sub_1CF703514, (&v49 - 4), a5, a6);

      return;
    }

    v16, v17, v18, v19, v20, v21, v22, v23;
  }

  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v33 = a1;
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E72A8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v51 = v37;
    *v36 = 136315138;
    v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v40 = v39;
    v41 = sub_1CEFD0DF0(v38, v39, &v51);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v36 + 4) = v41;
    _os_log_impl(&dword_1CEFC7000, v34, v35, "Failed to fetch upload errors for %s, no snapshot", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D386CDC0](v37, -1, -1);
    MEMORY[0x1D386CDC0](v36, -1, -1);
  }

  (*(v13 + 8))(v15, v50);
}

BOOL sub_1CF702E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v120 = a2;
  swift_beginAccess();
  v14 = *(v6 + 24);
  if (!*v14->tree)
  {
    goto LABEL_9;
  }

  sub_1CEFE863C(a3);
  if ((v15 & 1) == 0)
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
LABEL_9:
    sub_1CEFE528C(__src);
    v46 = 0;
    *(a1 + 240) = *&__src[240];
    v47 = *&__src[208];
    *(a1 + 192) = *&__src[192];
    *(a1 + 208) = v47;
    *(a1 + 224) = *&__src[224];
    v48 = *&__src[144];
    *(a1 + 128) = *&__src[128];
    *(a1 + 144) = v48;
    v49 = *&__src[176];
    *(a1 + 160) = *&__src[160];
    *(a1 + 176) = v49;
    v50 = *&__src[80];
    *(a1 + 64) = *&__src[64];
    *(a1 + 80) = v50;
    v51 = *&__src[112];
    *(a1 + 96) = *&__src[96];
    *(a1 + 112) = v51;
    v52 = *&__src[16];
    *a1 = *__src;
    *(a1 + 16) = v52;
    v53 = *&__src[32];
    v54 = *&__src[48];
LABEL_10:
    *(a1 + 32) = v53;
    *(a1 + 48) = v54;
    return v46;
  }

  v14, v22, v23, v24, v25, v26, v27, v28;
  swift_beginAccess();
  v29 = *(v8 + 16);
  if (!*v29->tree)
  {

    goto LABEL_9;
  }

  v30 = sub_1CEFE863C(a3);
  if ((v31 & 1) == 0)
  {
    v29, v31, v32, v33, v34, v35, v36, v37;

    goto LABEL_9;
  }

  v38 = *(*v29[1].tester + 8 * v30);

  v29, v39, v40, v41, v42, v43, v44, v45;
  v103 = v120;
  v46 = v38;
  sub_1CF48DF18(&v103, a4, a5, a6, &v104);
  if (!v7)
  {
    v86 = v119;
    v85[12] = v116;
    v85[13] = v117;
    v85[14] = v118;
    v85[8] = v112;
    v85[9] = v113;
    v85[10] = v114;
    v85[11] = v115;
    v85[4] = v108;
    v85[5] = v109;
    v85[6] = v110;
    v85[7] = v111;
    v85[0] = v104;
    v85[1] = v105;
    v85[2] = v106;
    v85[3] = v107;
    v99 = v116;
    v100 = v117;
    v101 = v118;
    v102 = v119;
    v95 = v112;
    v96 = v113;
    v97 = v114;
    v98 = v115;
    v91 = v108;
    v92 = v109;
    v93 = v110;
    v94 = v111;
    v87 = v104;
    v88 = v105;
    v89 = v106;
    v90 = v107;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v87) == 1)
    {
LABEL_14:

      goto LABEL_9;
    }

    v83 = v120;
    sub_1CF68E230(&v83, a4, a5, a6, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v82, __src, sizeof(v82));
    if (sub_1CEFF755C() == 1)
    {
      sub_1CEFCCC44(v85, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      goto LABEL_14;
    }

    if ((v82[56] & 4) != 0)
    {
      if ((BYTE9(v87) & 1) == 0)
      {
        goto LABEL_37;
      }

      v56 = (v82[56] & 0x30) == 0;
    }

    else
    {
      if ((BYTE9(v87) & 1) == 0)
      {
        goto LABEL_37;
      }

      v56 = 0;
    }

    sub_1CF7034A4(&v82[26], &v65);
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v57 = qword_1EDEABDE8;
    sub_1CEFCCC44(&v82[26], &unk_1EC4BFE00, &unk_1CF9FEF00);
    if (v57)
    {
      if ((v57 & 0x10) != 0)
      {
        if (!v56)
        {
          goto LABEL_35;
        }
      }

      else if (!v56)
      {
        v57 |= 0x10uLL;
LABEL_35:
        if ((v82[29] & v57) == 0 && (v82[28] & 0x51) == 0)
        {
          if (LOBYTE(v82[15]) <= 1u)
          {
            if (!LOBYTE(v82[15]))
            {

              sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
              goto LABEL_39;
            }
          }

          else if (LOBYTE(v82[15]) != 2 && LOBYTE(v82[15]) != 3)
          {
            v46 = *&v82[13] != 0;
            sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);

            goto LABEL_40;
          }

          sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);

LABEL_38:

LABEL_39:
          v46 = 0;
LABEL_40:
          v77 = v99;
          v78 = v100;
          v79 = v101;
          v80 = v102;
          v73 = v95;
          v74 = v96;
          v75 = v97;
          v76 = v98;
          v69 = v91;
          v70 = v92;
          v71 = v93;
          v72 = v94;
          v65 = v87;
          v66 = v88;
          v67 = v89;
          v68 = v90;
          nullsub_1();
          v59 = v78;
          *(a1 + 192) = v77;
          *(a1 + 208) = v59;
          *(a1 + 224) = v79;
          *(a1 + 240) = v80;
          v60 = v74;
          *(a1 + 128) = v73;
          *(a1 + 144) = v60;
          v61 = v76;
          *(a1 + 160) = v75;
          *(a1 + 176) = v61;
          v62 = v70;
          *(a1 + 64) = v69;
          *(a1 + 80) = v62;
          v63 = v72;
          *(a1 + 96) = v71;
          *(a1 + 112) = v63;
          v64 = v66;
          *a1 = v65;
          *(a1 + 16) = v64;
          v53 = v67;
          v54 = v68;
          goto LABEL_10;
        }

LABEL_37:

        sub_1CEFCCC44(__dst, &unk_1EC4BFD80, &unk_1CFA0A2A0);
        goto LABEL_38;
      }

      v58 = v57 & 0xFFFFDFFFFFFEF6E7;
      if ((v57 & 0x4000) != 0)
      {
LABEL_33:
        v57 = (v57 | 0x64090000008000) & v58;
        goto LABEL_35;
      }
    }

    else
    {
      if (!v56)
      {
        v57 = 16;
        goto LABEL_35;
      }

      v58 = 0;
    }

    v57 |= 0x4000uLL;
    goto LABEL_33;
  }

  return v46;
}

uint64_t sub_1CF703440(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF7034A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE00, &unk_1CF9FEF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF703540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF7035CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, __n128))
{
  v6 = sub_1CF9E53C8();
  MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  a3(&v11, a1, v8);
  result = 0;
  v10 = BYTE4(v11);
  *a2 = v11;
  *(a2 + 4) = v10;
  return result;
}

uint64_t sub_1CF70381C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a1;
  v120 = a2;
  v137 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5A58();
  v124 = *(v2 - 8);
  v125 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v122 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v120 - v5;
  v7 = sub_1CF9E5D98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v136[0] = sub_1CF9E5A18();
  *(&v136[0] + 1) = v11;
  MEMORY[0x1D3868CC0](0x692F66726168772FLL, 0xED0000747365676ELL);
  v12 = *(&v136[0] + 1);
  v121 = *&v136[0];

  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  sub_1CF9E5D88();
  v13 = sub_1CF9E5D18();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  v16 = v6;
  v17 = v126;
  MEMORY[0x1D3868CC0](v13, v15);
  v15, v18, v19, v20, v21, v22, v23, v24;
  v25 = v136[0];
  sub_1CF9E58C8();
  v26 = objc_opt_self();
  v27 = [v26 defaultManager];
  v28 = v123;
  sub_1CF18A5A0(v16, 1, v27, v17);
  if (v28)
  {

    *(&v25 + 1), v29, v30, v31, v32, v33, v34, v35;
    v12, v36, v37, v38, v39, v40, v41, v42;
    return (*(v124 + 8))(v16, v125);
  }

  v123 = v16;
  v44 = v124;

  memset(v136, 0, sizeof(v136));
  MEMORY[0x1EEE9AC00](v45);
  *(&v120 - 2) = v25;
  *(&v120 - 2) = v136;
  sub_1CEFE1894(sub_1CF705BF4);
  *(&v25 + 1), v46, v47, v48, v49, v50, v51, v52;
  v53 = [v26 defaultManager];
  v54 = sub_1CF9E5928();
  v128 = v121;
  v129 = v12;
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v121 = *(&v136[0] + 1);
  v127 = *(&v136[0] + 1);
  v55 = sub_1CF9E7F98();
  v57 = v56;
  MEMORY[0x1D3868CC0](v55);
  v57, v58, v59, v60, v61, v62, v63, v64;
  v65 = v129;
  v66 = v122;
  sub_1CF9E58C8();
  v65, v67, v68, v69, v70, v71, v72, v73;
  v74 = sub_1CF9E5928();
  v75 = *(v44 + 8);
  v76 = v125;
  v75(v66, v125);
  v128 = 0;
  LOBYTE(v66) = [v53 moveItemAtURL:v54 toURL:v74 error:&v128];

  if (v66)
  {
    if (v126 >> 62 == 2)
    {
      v98 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v133 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v134 = v98;
      v135 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v99 = v128;
      v107 = sub_1CF189010(v99, v100, v101, v102, v103, v104, v105, v106);
      v77 = v120;
      if (!*v107->tree)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      isa = v107[1].super.isa;
      v116 = *v107[1]._anon_8;
      v107, v108, v109, v110, v111, v112, v113, v114;
      v117 = __OFSUB__(v116, isa);
      v118 = v116 - isa;
      if (v117)
      {
        goto LABEL_16;
      }

      result = (v75)(v123, v76);
      *v77 = v121;
      *(v77 + 8) = 0;
      *(v77 + 12) = 1;
      *(v77 + 16) = xmmword_1CF9F4E20;
      *(v77 + 32) = isa;
      *(v77 + 40) = v118;
      *(v77 + 48) = 0;
    }

    else
    {
      v77 = v120;
      if (v126 >> 62 == 3)
      {
        v78 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v130 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v131 = v78;
        v132 = *((v126 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
        v79 = v128;
        v87 = sub_1CF189010(v79, v80, v81, v82, v83, v84, v85, v86);
        if (*v87->tree)
        {
          v95 = v87[1].super.isa;
          v87, v88, v89, v90, v91, v92, v93, v94;
          v96 = *(&v130 + 1);
          result = (v75)(v123, v76);
          *v77 = v121;
          *(v77 + 8) = 0;
          *(v77 + 12) = 1;
          *(v77 + 16) = xmmword_1CF9F4E20;
          *(v77 + 32) = v95;
          *(v77 + 40) = v96;
          *(v77 + 48) = 0;
          *(v77 + 56) = 1;
          return result;
        }

        __break(1u);
        goto LABEL_15;
      }

      v119 = v128;
      result = (v75)(v123, v76);
      *v77 = v121;
      *(v77 + 8) = 0;
      *(v77 + 12) = 1;
      *(v77 + 16) = xmmword_1CF9F4E20;
      *(v77 + 32) = 0;
      *(v77 + 40) = 0;
      *(v77 + 48) = 1;
    }

    *(v77 + 56) = 0;
  }

  else
  {
    v97 = v128;
    sub_1CF9E57F8();

    swift_willThrow();
    return (v75)(v123, v76);
  }

  return result;
}

void sub_1CF703E34(__n128 *a1, uint64_t (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v26 = *a1;
  v27 = v6;
  v7 = a1[3];
  v28 = a1[2];
  v29 = v7;
  if (v6.n128_u64[1] >> 60 == 11)
  {
    goto LABEL_4;
  }

  v8 = a2;
  if (v27.n128_u64[1] >> 60 == 15)
  {
    sub_1CF7042C0(&v26);
    a2 = v8;
LABEL_4:
    v21 = v26;
    v22 = v27;
    v23 = v28;
    v24 = v29;
    sub_1CF9BF584(&v21, a2);
    return;
  }

  sub_1CF9E5688();
  swift_allocObject();
  v10 = a1[1];
  v21 = *a1;
  v22 = v10;
  v11 = a1[3];
  v23 = a1[2];
  v24 = v11;
  sub_1CF023C28(&v26, &v17);
  sub_1CF023C28(&v26, &v17);
  sub_1CF1AE1DC(&v21, &v17);
  sub_1CF9E5678();
  sub_1CF190978();
  sub_1CF9E5668();

  sub_1CF7042C0(&v26);
  if (v5)
  {
    sub_1CF7042C0(&v26);
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    sub_1CF1AE25C(&v17);
  }

  else
  {
    sub_1CF70381C(v13, &v17);
    v25[0] = v17;
    v25[1] = v18;
    v25[2] = v19;
    v25[3] = v20;
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    sub_1CF1AE1DC(v25, v12);
    v8(&v13);
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v12[3] = v16;
    sub_1CF7042C0(v12);
    sub_1CF704088(v4);
    sub_1CF1AE25C(v25);

    sub_1CF7042C0(&v26);
    sub_1CF7042C0(&v26);
  }
}

uint64_t sub_1CF704088(uint64_t a1)
{
  result = sub_1CEFE1894(sub_1CF2AF9F4);
  *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    MEMORY[0x1D3869790](1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF7041E0(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  sub_1CF9BF5C8(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DocumentWharfForTesting(uint64_t a1)
{
  result = qword_1EC4C28E8;
  if (!qword_1EC4C28E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF7042C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF260, &unk_1CFA01B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF704328@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = sub_1CF9E53C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v13, 0, sizeof(v13));
  v17 = a1;
  v18 = v13;
  result = sub_1CEFE1894(sub_1CF6FCF48);
  if (!v2)
  {
    v10 = WORD2(v13[0]);
    v11 = sub_1CF9E61D8() & v10;
    if (v11 == sub_1CF9E61D8())
    {
      result = sub_1CF70609C(a1, v14);
      *a2 = result;
    }

    else
    {
      v12[3] = 22;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF198A44();
      sub_1CF9E57D8();
      sub_1CF9E53A8();
      (*(v6 + 8))(v8, v5);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1CF704500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor_];
  v4 = [v3 readDataToEndOfFile];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a2 = result | 0x4000000000000000;
  return result;
}

void sub_1CF7045A8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1CF9E53C8();
  v64 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CF9E6118();
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = MEMORY[0x1E69E7CC8];
  v69 = &v82;
  v70 = v1;
  v71 = v2;
  v66 = sub_1CF7062AC;
  v67 = &v68;
  v80 = 0;
  v81 = 1;
  v79 = 0;
  v9 = swift_allocObject();
  v9[2] = &v80;
  v9[3] = sub_1CF7062CC;
  v9[4] = &v65;
  v9[5] = &v79;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1CF706304;
  *(v10 + 24) = v9;
  v77 = sub_1CF706310;
  v78 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1CF7037F0;
  v76 = &block_descriptor_36;
  v11 = _Block_copy(&aBlock);

  v12 = fpfs_fopendir();
  _Block_release(v11);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v79)
    {
LABEL_3:
      swift_willThrow();
      v82, v14, v15, v16, v17, v18, v19, v20;
      return;
    }

    if ((v12 & 0x80000000) == 0)
    {
      *(swift_allocObject() + 16) = v82;
      return;
    }

    if (MEMORY[0x1D38683F0](v13))
    {
      if (MEMORY[0x1D38683F0]() == 9939394)
      {
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      }

      else
      {
        MEMORY[0x1D38683F0]();
        v21 = sub_1CF9E6138();
        if ((v21 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v21;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF198A44();
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v64 + 8))(v5, v3);
      }

      goto LABEL_3;
    }
  }

  aBlock = 0;
  v74 = 0xE000000000000000;
  sub_1CF9E7948();
  v74, v22, v23, v24, v25, v26, v27, v28;
  aBlock = 0xD00000000000001ALL;
  v74 = 0x80000001CFA2DF30;
  v72 = v12;
  v29 = sub_1CF9E7F98();
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v39 = v74;
  v64 = aBlock;
  v40 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v41 = sub_1CF9E6108();
  v42 = sub_1CF9E72B8();
  v39, v43, v44, v45, v46, v47, v48, v49;
  if (os_log_type_enabled(v41, v42))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock = v51;
    *v50 = 136315650;
    v52 = sub_1CF9E7988();
    v54 = v53;
    v55 = sub_1CEFD0DF0(v52, v53, &aBlock);
    v54, v56, v57, v58, v59, v60, v61, v62;
    *(v50 + 4) = v55;
    *(v50 + 12) = 2048;
    *(v50 + 14) = 315;
    *(v50 + 22) = 2080;
    *(v50 + 24) = sub_1CEFD0DF0(v64, v39, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v41, v42, "[ASSERT] ‼️  %s:%lu: %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v51, -1, -1);
    MEMORY[0x1D386CDC0](v50, -1, -1);
  }

  (*(v63 + 8))(v8, v6);
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF704B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v233 = a2;
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v232 = &v227 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v227 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v227 - v18;
  if (!a1)
  {
    return 0;
  }

  v230 = v7;
  v231 = v6;
  v228 = v17;
  v229 = v16;
  v20 = sub_1CF9E6A68();
  v234 = v21;
  LODWORD(v6) = *(a1 + 20);
  switch(v6)
  {
    case 4:
      goto LABEL_9;
    case 0xA:
      v243 = 0xF000000000000007;
      v242 = 0;
      v22 = swift_allocObject();
      *(v22 + 16) = &v243;
      *(v22 + 24) = sub_1CF706370;
      *(v22 + 32) = a3;
      *(v22 + 40) = &v242;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_1CF7063B4;
      *(a3 + 24) = v22;
      v240 = sub_1CF50EB9C;
      v241 = a3;
      aBlock = MEMORY[0x1E69E9820];
      v237 = 1107296256;
      v238 = sub_1CF005DF8;
      v239 = &block_descriptor_75;
      v6 = _Block_copy(&aBlock);

      v11 = sub_1CF9E6978();
      v23 = fpfs_openat();

      _Block_release(v6);

      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v242)
      {
        goto LABEL_35;
      }

      if (v23 < 0)
      {
        if (!MEMORY[0x1D38683F0](v24))
        {
          v234, v55, v56, v57, v58, v59, v60, v61;
          aBlock = 0;
          v237 = 0xE000000000000000;
          sub_1CF9E7948();
          v237, v101, v102, v103, v104, v105, v106, v107;
          aBlock = 0xD00000000000001ALL;
          v237 = 0x80000001CFA2DF30;
          v235 = v23;
          v108 = sub_1CF9E7F98();
          v110 = v109;
          MEMORY[0x1D3868CC0](v108);
          v110, v111, v112, v113, v114, v115, v116, v117;
          MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
          v118 = aBlock;
          v119 = v237;
          v120 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v121 = sub_1CF9E6108();
          v122 = sub_1CF9E72B8();
          v119, v123, v124, v125, v126, v127, v128, v129;
          if (os_log_type_enabled(v121, v122))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            aBlock = v131;
            *v130 = 136315650;
            v132 = sub_1CF9E7988();
            v134 = v133;
            v135 = sub_1CEFD0DF0(v132, v133, &aBlock);
            v134, v136, v137, v138, v139, v140, v141, v142;
            *(v130 + 4) = v135;
            *(v130 + 12) = 2048;
            *(v130 + 14) = 315;
            *(v130 + 22) = 2080;
            *(v130 + 24) = sub_1CEFD0DF0(v118, v119, &aBlock);
            _os_log_impl(&dword_1CEFC7000, v121, v122, "[ASSERT] ‼️  %s:%lu: %s", v130, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v131, -1, -1);
            MEMORY[0x1D386CDC0](v130, -1, -1);
          }

          (*(v228 + 8))(v14, v229);
          goto LABEL_51;
        }

        v62 = MEMORY[0x1D38683F0]();
        v64 = v230;
        v63 = v231;
        if (v62 != 9939394)
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v234, v25, v26, v27, v28, v29, v30, v31;
      v32 = v243;
      if ((~v243 & 0xF000000000000007) != 0)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_9:
      v243 = 0xF000000000000007;
      v242 = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = &v243;
      *(v33 + 24) = sub_1CF706338;
      *(v33 + 32) = a3;
      *(v33 + 40) = &v242;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1CF706364;
      *(v34 + 24) = v33;
      v240 = sub_1CF005DC8;
      v241 = v34;
      aBlock = MEMORY[0x1E69E9820];
      v237 = 1107296256;
      v238 = sub_1CF005DF8;
      v239 = &block_descriptor_64;
      v6 = _Block_copy(&aBlock);

      sub_1CF9E6978();
      v35 = fpfs_openat();

      _Block_release(v6);

      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if ((v33 & 1) == 0)
      {
        v19 = v242;
        if (v242)
        {
          goto LABEL_35;
        }

        if ((v35 & 0x80000000) == 0)
        {
          v234, v37, v38, v39, v40, v41, v42, v43;
          v32 = v243;
          if ((~v243 & 0xF000000000000007) == 0)
          {
            __break(1u);
            goto LABEL_19;
          }

LABEL_21:
          sub_1CF1C9498(v32, v20, v234);
          return 0;
        }

        if (!MEMORY[0x1D38683F0](v36))
        {
          v234, v65, v66, v67, v68, v69, v70, v71;
          aBlock = 0;
          v237 = 0xE000000000000000;
          sub_1CF9E7948();
          v237, v143, v144, v145, v146, v147, v148, v149;
          aBlock = 0xD00000000000001ALL;
          v237 = 0x80000001CFA2DF30;
          v235 = v35;
          v150 = sub_1CF9E7F98();
          v152 = v151;
          MEMORY[0x1D3868CC0](v150);
          v152, v153, v154, v155, v156, v157, v158, v159;
          MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
          v160 = aBlock;
          v161 = v237;
          v162 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v163 = sub_1CF9E6108();
          v164 = sub_1CF9E72B8();
          v161, v165, v166, v167, v168, v169, v170, v171;
          if (os_log_type_enabled(v163, v164))
          {
            v172 = swift_slowAlloc();
            v173 = swift_slowAlloc();
            aBlock = v173;
            *v172 = 136315650;
            v174 = sub_1CF9E7988();
            v176 = v175;
            v177 = sub_1CEFD0DF0(v174, v175, &aBlock);
            v176, v178, v179, v180, v181, v182, v183, v184;
            *(v172 + 4) = v177;
            *(v172 + 12) = 2048;
            *(v172 + 14) = 315;
            *(v172 + 22) = 2080;
            *(v172 + 24) = sub_1CEFD0DF0(v160, v161, &aBlock);
            _os_log_impl(&dword_1CEFC7000, v163, v164, "[ASSERT] ‼️  %s:%lu: %s", v172, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v173, -1, -1);
            MEMORY[0x1D386CDC0](v172, -1, -1);
          }

          (*(v228 + 8))(v11, v229);
          goto LABEL_51;
        }

        v72 = MEMORY[0x1D38683F0]();
        v64 = v230;
        v63 = v231;
        if (v72 != 9939394)
        {
          goto LABEL_31;
        }

LABEL_30:
        [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_35:
        swift_willThrow();
        swift_bridgeObjectRelease_n();
        sub_1CF4EB118(v243);
        return 0;
      }

      goto LABEL_38;
    case 8:
      v243 = 0xF000000000000007;
      v242 = 0;
      v44 = swift_allocObject();
      v44[2] = &v243;
      v44[3] = sub_1CF70638C;
      v44[4] = a3;
      v44[5] = &v242;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1CF7063B4;
      *(v45 + 24) = v44;
      v240 = sub_1CF50EB9C;
      v241 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v237 = 1107296256;
      v238 = sub_1CF005DF8;
      v239 = &block_descriptor_86;
      v46 = _Block_copy(&aBlock);

      LODWORD(v6) = sub_1CF9E6978();
      v35 = fpfs_openat();

      _Block_release(v46);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v242)
        {
          goto LABEL_35;
        }

LABEL_19:
        if ((v35 & 0x80000000) == 0)
        {
          v234, v48, v49, v50, v51, v52, v53, v54;
          v32 = v243;
          if ((~v243 & 0xF000000000000007) != 0)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

        if (!MEMORY[0x1D38683F0](v32))
        {
          v234, v73, v74, v75, v76, v77, v78, v79;
          aBlock = 0;
          v237 = 0xE000000000000000;
          sub_1CF9E7948();
          v237, v185, v186, v187, v188, v189, v190, v191;
          aBlock = 0xD00000000000001ALL;
          v237 = 0x80000001CFA2DF30;
          v235 = v35;
          v192 = sub_1CF9E7F98();
          v194 = v193;
          MEMORY[0x1D3868CC0](v192);
          v194, v195, v196, v197, v198, v199, v200, v201;
          MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
          v202 = aBlock;
          v203 = v237;
          v204 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v205 = sub_1CF9E6108();
          v206 = sub_1CF9E72B8();
          v203, v207, v208, v209, v210, v211, v212, v213;
          if (os_log_type_enabled(v205, v206))
          {
            v214 = swift_slowAlloc();
            v215 = swift_slowAlloc();
            aBlock = v215;
            *v214 = 136315650;
            v216 = sub_1CF9E7988();
            v218 = v217;
            v219 = sub_1CEFD0DF0(v216, v217, &aBlock);
            v218, v220, v221, v222, v223, v224, v225, v226;
            *(v214 + 4) = v219;
            *(v214 + 12) = 2048;
            *(v214 + 14) = 315;
            *(v214 + 22) = 2080;
            *(v214 + 24) = sub_1CEFD0DF0(v202, v203, &aBlock);
            _os_log_impl(&dword_1CEFC7000, v205, v206, "[ASSERT] ‼️  %s:%lu: %s", v214, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v215, -1, -1);
            MEMORY[0x1D386CDC0](v214, -1, -1);
          }

          (*(v228 + 8))(v19, v229);
          goto LABEL_51;
        }

        v80 = MEMORY[0x1D38683F0]();
        v64 = v230;
        v63 = v231;
        if (v80 == 9939394)
        {
          goto LABEL_30;
        }

LABEL_31:
        MEMORY[0x1D38683F0]();
        v81 = sub_1CF9E6138();
        if ((v81 & 0x100000000) != 0)
        {
          LODWORD(aBlock) = 22;
        }

        else
        {
          LODWORD(aBlock) = v81;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF198A44();
        v82 = v232;
        sub_1CF9E57D8();
        sub_1CF9E53A8();
        (*(v64 + 8))(v82, v63);
        goto LABEL_35;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      break;
  }

  aBlock = 0;
  v237 = 0xE000000000000000;
  sub_1CF9E7948();
  v237, v84, v85, v86, v87, v88, v89, v90;
  aBlock = 0xD000000000000014;
  v237 = 0x80000001CFA59530;
  LODWORD(v243) = v6;
  v91 = sub_1CF9E7F98();
  v93 = v92;
  MEMORY[0x1D3868CC0](v91);
  v93, v94, v95, v96, v97, v98, v99, v100;
LABEL_51:
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

void sub_1CF705A74(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v19 = a1;
  v20 = v15;
  sub_1CEFE1894(sub_1CF198A9C);
  if (!v2)
  {
    v5 = WORD2(v15[0]);
    v6 = sub_1CF9E61D8() & v5;
    if (v6 == sub_1CF9E61D8())
    {
      v7 = sub_1CF70609C(a1, v16);
    }

    else
    {
      v8 = sub_1CF9E61C8() & v5;
      if (v8 == sub_1CF9E61C8())
      {
        sub_1CF7045A8(a1);
      }

      else
      {
        v9 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor_];
        v10 = [v9 readDataToEndOfFile];
        v11 = sub_1CF9E5B88();
        v13 = v12;

        v14 = swift_allocObject();
        *(v14 + 16) = v11;
        *(v14 + 24) = v13;
        v7 = v14 | 0x4000000000000000;
      }
    }

    *a2 = v7;
  }
}

void sub_1CF705BF4(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_1CF9E6978();
  LODWORD(v3) = stat((v4 + 32), v3);

  *a1 = v3;
}

void sub_1CF705C50(unint64_t *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {

      sub_1CEFE4714(v4, v3);
      *&v15 = v4;
      *(&v15 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1CF9FA380;
      sub_1CEFE4714(0, 0xC000000000000000);
      sub_1CF9E5A68();
      v8 = *(&v15 + 1);
      v9 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (sub_1CF9E5498())
      {
        if (__OFSUB__(v9, sub_1CF9E54C8()))
        {
          __break(1u);
        }

        else if (!__OFSUB__(v10, v9))
        {
          v11 = sub_1CF9E54B8();
          MEMORY[0x1EEE9AC00](v11);
          sub_1CF5162A0(sub_1CF706250);
          *a1 = v15;
          a1[1] = v8 | 0x8000000000000000;
          return;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      *(&v15 + 7) = 0;
      *&v15 = 0;
      MEMORY[0x1EEE9AC00](a1);
      sub_1CF5162A0(sub_1CF7063C4);
    }
  }

  else
  {
    if (v5)
    {

      sub_1CEFE4714(v4, v3);
      *&v15 = v4;
      *(&v15 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1CF9FA380;
      sub_1CEFE4714(0, 0xC000000000000000);
      sub_1CF705FAC(&v15);
      v7 = *(&v15 + 1) | 0x4000000000000000;
    }

    else
    {
      v12[1] = HIWORD(v4);
      v12[2] = HIBYTE(v4);
      v12[3] = v3 >> 8;
      v12[4] = v3 >> 16;
      v12[7] = HIDWORD(v3);
      v12[5] = v3 >> 24;
      v12[6] = v3 >> 40;
      v13 = a2;
      v6 = sub_1CEFE4714(v4, v3);
      v14 = v12;
      *&v15 = v4;
      WORD4(v15) = v3;
      BYTE10(v15) = BYTE2(v3);
      BYTE11(v15) = BYTE3(v3);
      BYTE12(v15) = BYTE4(v3);
      BYTE13(v15) = BYTE5(v3);
      BYTE14(v15) = BYTE6(v3);
      MEMORY[0x1EEE9AC00](v6);
      sub_1CF5162A0(sub_1CF7063C4);
      v7 = DWORD2(v15) | ((WORD6(v15) | (BYTE14(v15) << 16)) << 32);
    }

    *a1 = v15;
    a1[1] = v7;
  }
}

void sub_1CF705FAC(int *a1)
{
  sub_1CF9E5AA8();
  v2 = *a1;
  if (a1[1] < v2)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (sub_1CF9E5498())
  {
    if (!__OFSUB__(v2, sub_1CF9E54C8()))
    {
      v3 = sub_1CF9E54B8();
      MEMORY[0x1EEE9AC00](v3);
      sub_1CF5162A0(sub_1CF7063C4);

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1CF70609C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E6938();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CF195D88(a2);
  v25 = result;
  v26 = v10;
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1CF9E5AF8();
  sub_1CF705C50(&v25, a1);
  v11 = v25;
  if (v2)
  {
    sub_1CEFE4714(v25, v26);
    return v11;
  }

  sub_1CF9E6918();
  result = sub_1CF9E68D8();
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  sub_1CF9E6918();
  v14 = sub_1CF9E68C8();
  v16 = v15;
  result = (*(v6 + 8))(v8, v5);
  if (v16 >> 60 != 15)
  {
    v13, v17, v18, v19, v20, v21, v22, v23;
    v24 = swift_allocObject();
    *(v24 + 16) = v14;
    *(v24 + 24) = v16;
    v11 = v24 | 0x4000000000000000;
    sub_1CEFE4714(v25, v26);
    return v11;
  }

LABEL_10:
  __break(1u);
  return result;
}

ssize_t sub_1CF706268@<X0>(ssize_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    v4 = *(v1 + 32) - v3;
  }

  else
  {
    v4 = 0;
  }

  result = freadlink(*(v1 + 16), v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1CF7062CC@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = 0;
  }

  return result;
}

uint64_t sub_1CF706338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF7045A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF7063DC(uint64_t a1, unsigned int a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v484 = a6;
  v482 = a8;
  v483 = a7;
  v488 = a5;
  v485 = a4;
  v486 = a3;
  v487 = a2;
  v9 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v481 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v481 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v481 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v481 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v481 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v481 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v481 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v481 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v51 = &v481 - v50;
  if (a1 > 0x1FFFFFFFFFFFFLL)
  {
    if (a1 <= 0x1FFFFFFFFFFFFFLL)
    {
      v52 = v488;
      if (a1 <= 0x7FFFFFFFFFFFFLL)
      {
        if (a1 == 0x2000000000000)
        {
          v268 = v41;
          v269 = v47;
          v270 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v271 = sub_1CF9E6108();
          v272 = sub_1CF9E7288();
          v52, v273, v274, v275, v276, v277, v278, v279;
          if (os_log_type_enabled(v271, v272))
          {
            v280 = swift_slowAlloc();
            v281 = swift_slowAlloc();
            v489 = v281;
            *v280 = 136446466;
            v282 = sub_1CF7F5AAC(0x2000000000000uLL);
            v283 = v52;
            v285 = v284;
            v286 = sub_1CEFD0DF0(v282, v284, &v489);
            v285, v287, v288, v289, v290, v291, v292, v293;
            *(v280 + 4) = v286;
            *(v280 + 12) = 2080;
            *(v280 + 14) = sub_1CEFD0DF0(v485, v283, &v489);
            _os_log_impl(&dword_1CEFC7000, v271, v272, "Repairing %{public}s on %s (refreshing detached root bookmark)", v280, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v281, -1, -1);
            MEMORY[0x1D386CDC0](v280, -1, -1);
          }

          (*(v269 + 8))(v21, v268);
          v79 = sub_1CF70B74C(v487, v484);
          return v79 & 1;
        }

        if (a1 == 0x4000000000000)
        {
          v134 = v41;
          v135 = v47;
          v136 = v46;
          v137 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v138 = sub_1CF9E6108();
          v139 = sub_1CF9E7288();
          v52, v140, v141, v142, v143, v144, v145, v146;
          if (os_log_type_enabled(v138, v139))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v489 = v148;
            *v147 = 136446466;
            v149 = sub_1CF7F5AAC(0x4000000000000uLL);
            v151 = v150;
            v152 = v52;
            v153 = sub_1CEFD0DF0(v149, v150, &v489);
            v151, v154, v155, v156, v157, v158, v159, v160;
            *(v147 + 4) = v153;
            *(v147 + 12) = 2080;
            *(v147 + 14) = sub_1CEFD0DF0(v485, v152, &v489);
            _os_log_impl(&dword_1CEFC7000, v138, v139, "Repairing %{public}s on %s (set syncroot bit)", v147, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v148, -1, -1);
            MEMORY[0x1D386CDC0](v147, -1, -1);
          }

          (*(v135 + 8))(v136, v134);
          v79 = sub_1CF70BBE4(v487, 1);
          return v79 & 1;
        }

        goto LABEL_55;
      }

      if (a1 == 0x8000000000000)
      {
        if ((v482 & 0x80000) != 0)
        {
          v453 = v41;
          v454 = v47;
          v455 = v45;
          v456 = fpfs_current_or_default_log();
          sub_1CF9E6128();

          v457 = sub_1CF9E6108();
          v458 = sub_1CF9E7288();
          v52, v459, v460, v461, v462, v463, v464, v465;
          if (os_log_type_enabled(v457, v458))
          {
            v466 = swift_slowAlloc();
            v467 = swift_slowAlloc();
            v489 = v467;
            *v466 = 136446466;
            v468 = sub_1CF7F5AAC(0x8000000000000uLL);
            v470 = v469;
            v471 = sub_1CEFD0DF0(v468, v469, &v489);
            v470, v472, v473, v474, v475, v476, v477, v478;
            *(v466 + 4) = v471;
            v479 = v488;
            *(v466 + 12) = 2080;
            *(v466 + 14) = sub_1CEFD0DF0(v485, v479, &v489);
            _os_log_impl(&dword_1CEFC7000, v457, v458, "Repairing %{public}s on %s (unlink if side fault)", v466, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v467, -1, -1);
            MEMORY[0x1D386CDC0](v466, -1, -1);
          }

          (*(v454 + 8))(v455, v453);
          v79 = sub_1CF70BFCC();
          return v79 & 1;
        }

        goto LABEL_55;
      }

      if (a1 != 0x10000000000000)
      {
        goto LABEL_55;
      }

      v187 = v41;
      v188 = v47;
      v189 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v190 = sub_1CF9E6108();
      v191 = sub_1CF9E7288();
      v52, v192, v193, v194, v195, v196, v197, v198;
      if (os_log_type_enabled(v190, v191))
      {
        v199 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v489 = v200;
        *v199 = 136446466;
        v201 = sub_1CF7F5AAC(0x10000000000000uLL);
        v202 = v52;
        v204 = v203;
        v205 = sub_1CEFD0DF0(v201, v203, &v489);
        v204, v206, v207, v208, v209, v210, v211, v212;
        *(v199 + 4) = v205;
        *(v199 + 12) = 2080;
        *(v199 + 14) = sub_1CEFD0DF0(v485, v202, &v489);
        _os_log_impl(&dword_1CEFC7000, v190, v191, "Repairing %{public}s on %s (remove promotion xattr)", v199, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v200, -1, -1);
        MEMORY[0x1D386CDC0](v199, -1, -1);
      }

      (*(v188 + 8))(v27, v187);
      v213 = v487;
      v214 = v486;
      v215 = sub_1CF70CFE8;
    }

    else
    {
      if (a1 <= 0x7FFFFFFFFFFFFFLL)
      {
        if (a1 == 0x20000000000000)
        {
          v427 = v41;
          v428 = v47;
          v429 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v430 = v488;

          v431 = sub_1CF9E6108();
          v432 = sub_1CF9E7288();
          v430, v433, v434, v435, v436, v437, v438, v439;
          if (os_log_type_enabled(v431, v432))
          {
            v440 = swift_slowAlloc();
            v441 = swift_slowAlloc();
            v489 = v441;
            *v440 = 136446466;
            v442 = sub_1CF7F5AAC(0x20000000000000uLL);
            v444 = v443;
            v445 = sub_1CEFD0DF0(v442, v443, &v489);
            v444, v446, v447, v448, v449, v450, v451, v452;
            *(v440 + 4) = v445;
            *(v440 + 12) = 2080;
            *(v440 + 14) = sub_1CEFD0DF0(v485, v430, &v489);
            _os_log_impl(&dword_1CEFC7000, v431, v432, "Repairing %{public}s on %s (clear bundle bit)", v440, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v441, -1, -1);
            MEMORY[0x1D386CDC0](v440, -1, -1);
          }

          (*(v428 + 8))(v30, v427);
          v79 = sub_1CF70B538(v487, sub_1CF70CFB0, MEMORY[0x1E69E9440], "Failed to set bundle bit: %@");
          return v79 & 1;
        }

        v52 = v488;
        if (a1 == 0x40000000000000)
        {
          goto LABEL_45;
        }

LABEL_55:
        v294 = v41;
        v295 = v47;
        v296 = v48;
        v297 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v298 = sub_1CF9E6108();
        v299 = sub_1CF9E7298();
        v52, v300, v301, v302, v303, v304, v305, v306;
        if (os_log_type_enabled(v298, v299))
        {
          v307 = swift_slowAlloc();
          v308 = swift_slowAlloc();
          v489 = v308;
          *v307 = 136446466;
          v309 = sub_1CF7F5AAC(a1);
          v311 = v310;
          v312 = v52;
          v313 = sub_1CEFD0DF0(v309, v310, &v489);
          v311, v314, v315, v316, v317, v318, v319, v320;
          *(v307 + 4) = v313;
          *(v307 + 12) = 2080;
          *(v307 + 14) = sub_1CEFD0DF0(v485, v312, &v489);
          _os_log_impl(&dword_1CEFC7000, v298, v299, "Repairing %{public}s on %s is not supported", v307, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v308, -1, -1);
          MEMORY[0x1D386CDC0](v307, -1, -1);
        }

        (*(v295 + 8))(v296, v294);
        v79 = 0;
        return v79 & 1;
      }

      if (a1 == 0x80000000000000)
      {
        v374 = v41;
        v375 = v47;
        v376 = v44;
        v377 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v378 = v488;

        v379 = sub_1CF9E6108();
        v380 = sub_1CF9E7288();
        v378, v381, v382, v383, v384, v385, v386, v387;
        if (os_log_type_enabled(v379, v380))
        {
          v388 = swift_slowAlloc();
          v389 = swift_slowAlloc();
          v489 = v389;
          *v388 = 136446466;
          v390 = sub_1CF7F5AAC(0x80000000000000uLL);
          v392 = v391;
          v393 = sub_1CEFD0DF0(v390, v391, &v489);
          v392, v394, v395, v396, v397, v398, v399, v400;
          *(v388 + 4) = v393;
          *(v388 + 12) = 2080;
          *(v388 + 14) = sub_1CEFD0DF0(v485, v378, &v489);
          _os_log_impl(&dword_1CEFC7000, v379, v380, "Repairing %{public}s on %s (fix pinned item purge urgency)", v388, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v389, -1, -1);
          MEMORY[0x1D386CDC0](v388, -1, -1);
        }

        (*(v375 + 8))(v376, v374);
        v213 = v487;
        v214 = v486;
        v215 = sub_1CF70D110;
      }

      else
      {
        v52 = v488;
        if (a1 != 0x100000000000000)
        {
          if (a1 == 0x200000000000000)
          {
            v80 = v41;
            v81 = v47;
            v82 = v49;
            v83 = fpfs_current_or_default_log();
            sub_1CF9E6128();

            v84 = sub_1CF9E6108();
            v85 = sub_1CF9E7288();
            v52, v86, v87, v88, v89, v90, v91, v92;
            if (os_log_type_enabled(v84, v85))
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v489 = v94;
              *v93 = 136446466;
              v95 = sub_1CF7F5AAC(0x200000000000000uLL);
              v97 = v96;
              v98 = v52;
              v99 = sub_1CEFD0DF0(v95, v96, &v489);
              v97, v100, v101, v102, v103, v104, v105, v106;
              *(v93 + 4) = v99;
              *(v93 + 12) = 2080;
              *(v93 + 14) = sub_1CEFD0DF0(v485, v98, &v489);
              _os_log_impl(&dword_1CEFC7000, v84, v85, "Repairing %{public}s on %s (fix finder info)", v93, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v94, -1, -1);
              MEMORY[0x1D386CDC0](v93, -1, -1);
            }

            (*(v81 + 8))(v82, v80);
            v79 = sub_1CF70CBAC(v487);
            return v79 & 1;
          }

          goto LABEL_55;
        }

        v347 = v41;
        v348 = v47;
        v349 = v43;
        v350 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v351 = sub_1CF9E6108();
        v352 = sub_1CF9E7288();
        v52, v353, v354, v355, v356, v357, v358, v359;
        if (os_log_type_enabled(v351, v352))
        {
          v360 = swift_slowAlloc();
          v361 = swift_slowAlloc();
          v489 = v361;
          *v360 = 136446466;
          v362 = sub_1CF7F5AAC(0x100000000000000uLL);
          v364 = v363;
          v365 = v52;
          v366 = sub_1CEFD0DF0(v362, v363, &v489);
          v364, v367, v368, v369, v370, v371, v372, v373;
          *(v360 + 4) = v366;
          *(v360 + 12) = 2080;
          *(v360 + 14) = sub_1CEFD0DF0(v485, v365, &v489);
          _os_log_impl(&dword_1CEFC7000, v351, v352, "Repairing %{public}s on %s (downgrade purge urgency)", v360, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v361, -1, -1);
          MEMORY[0x1D386CDC0](v360, -1, -1);
        }

        (*(v348 + 8))(v349, v347);
        v213 = v487;
        v214 = v486;
        v215 = sub_1CF70D148;
      }
    }

    v79 = sub_1CF70C260(v213, v214, v215);
    return v79 & 1;
  }

  if (a1 <= 0xFFFFFFFFFFLL)
  {
    v52 = v488;
    if (a1 > 0x3FFFFFFF)
    {
      if (a1 == 0x40000000)
      {
        goto LABEL_45;
      }

      if (a1 == 0x2000000000)
      {
        v161 = v41;
        v162 = v47;
        v163 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v164 = sub_1CF9E6108();
        v165 = sub_1CF9E7288();
        v52, v166, v167, v168, v169, v170, v171, v172;
        if (os_log_type_enabled(v164, v165))
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v489 = v174;
          *v173 = 136446466;
          v175 = sub_1CF7F5AAC(0x2000000000uLL);
          v176 = v52;
          v178 = v177;
          v179 = sub_1CEFD0DF0(v175, v177, &v489);
          v178, v180, v181, v182, v183, v184, v185, v186;
          *(v173 + 4) = v179;
          *(v173 + 12) = 2080;
          *(v173 + 14) = sub_1CEFD0DF0(v485, v176, &v489);
          _os_log_impl(&dword_1CEFC7000, v164, v165, "Repairing %{public}s on %s (remove demoted flag)", v173, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v174, -1, -1);
          MEMORY[0x1D386CDC0](v173, -1, -1);
        }

        (*(v162 + 8))(v36, v161);
        v79 = sub_1CF70B538(v487, sub_1CF70CF44, MEMORY[0x1E69E9440], "Failed to drop Demoted from sync root: %@");
        return v79 & 1;
      }
    }

    else
    {
      if (a1 == 8)
      {
        v242 = v41;
        v243 = v47;
        v244 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v245 = sub_1CF9E6108();
        v246 = sub_1CF9E7288();
        v52, v247, v248, v249, v250, v251, v252, v253;
        if (os_log_type_enabled(v245, v246))
        {
          v254 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v489 = v255;
          *v254 = 136446466;
          v256 = sub_1CF7F5AAC(8uLL);
          v258 = v257;
          v259 = v52;
          v260 = sub_1CEFD0DF0(v256, v257, &v489);
          v258, v261, v262, v263, v264, v265, v266, v267;
          *(v254 + 4) = v260;
          *(v254 + 12) = 2080;
          *(v254 + 14) = sub_1CEFD0DF0(v485, v259, &v489);
          _os_log_impl(&dword_1CEFC7000, v245, v246, "Repairing %{public}s on %s (force re-ingestion)", v254, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v255, -1, -1);
          MEMORY[0x1D386CDC0](v254, -1, -1);
        }

        (*(v243 + 8))(v39, v242);
        v79 = sub_1CF708564(v487, v486);
        return v79 & 1;
      }

      if (a1 == 0x1000000)
      {
        v107 = v41;
        v108 = v47;
        v109 = v42;
        v110 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v111 = sub_1CF9E6108();
        v112 = sub_1CF9E7288();
        v52, v113, v114, v115, v116, v117, v118, v119;
        if (os_log_type_enabled(v111, v112))
        {
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v489 = v121;
          *v120 = 136446466;
          v122 = sub_1CF7F5AAC(0x1000000uLL);
          v124 = v123;
          v125 = v52;
          v126 = sub_1CEFD0DF0(v122, v123, &v489);
          v124, v127, v128, v129, v130, v131, v132, v133;
          *(v120 + 4) = v126;
          *(v120 + 12) = 2080;
          *(v120 + 14) = sub_1CEFD0DF0(v485, v125, &v489);
          _os_log_impl(&dword_1CEFC7000, v111, v112, "Repairing %{public}s on %s (restore missing SF_DATALESS flag)", v120, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v121, -1, -1);
          MEMORY[0x1D386CDC0](v120, -1, -1);
        }

        (*(v108 + 8))(v109, v107);
        v79 = sub_1CF70C540(v487, v486);
        return v79 & 1;
      }
    }

    goto LABEL_55;
  }

  v52 = v488;
  if (a1 <= 0x3FFFFFFFFFFLL)
  {
    if (a1 == 0x10000000000)
    {
      v401 = v41;
      v402 = v47;
      v403 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v404 = sub_1CF9E6108();
      v405 = sub_1CF9E7288();
      v52, v406, v407, v408, v409, v410, v411, v412;
      if (os_log_type_enabled(v404, v405))
      {
        v413 = swift_slowAlloc();
        v414 = swift_slowAlloc();
        v489 = v414;
        *v413 = 136446466;
        v415 = sub_1CF7F5AAC(0x10000000000uLL);
        v416 = v52;
        v418 = v417;
        v419 = sub_1CEFD0DF0(v415, v417, &v489);
        v418, v420, v421, v422, v423, v424, v425, v426;
        *(v413 + 4) = v419;
        *(v413 + 12) = 2080;
        *(v413 + 14) = sub_1CEFD0DF0(v485, v416, &v489);
        _os_log_impl(&dword_1CEFC7000, v404, v405, "Repairing %{public}s on %s (set bundle bit)", v413, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v414, -1, -1);
        MEMORY[0x1D386CDC0](v413, -1, -1);
      }

      (*(v402 + 8))(v33, v401);
      v79 = sub_1CF70B538(v487, sub_1CF70CF78, MEMORY[0x1E69E9440], "Failed to set bundle bit: %@");
      return v79 & 1;
    }

    if (a1 != 0x20000000000)
    {
      goto LABEL_55;
    }

LABEL_45:
    v216 = v41;
    v217 = v47;
    v218 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v219 = sub_1CF9E6108();
    v220 = sub_1CF9E7288();
    v52, v221, v222, v223, v224, v225, v226, v227;
    if (os_log_type_enabled(v219, v220))
    {
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v489 = v229;
      *v228 = 136446466;
      v230 = sub_1CF7F5AAC(a1);
      v231 = v52;
      v233 = v232;
      v234 = sub_1CEFD0DF0(v230, v232, &v489);
      v233, v235, v236, v237, v238, v239, v240, v241;
      *(v228 + 4) = v234;
      *(v228 + 12) = 2080;
      *(v228 + 14) = sub_1CEFD0DF0(v485, v231, &v489);
      _os_log_impl(&dword_1CEFC7000, v219, v220, "Repairing %{public}s on %s (drop purgeability)", v228, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v229, -1, -1);
      MEMORY[0x1D386CDC0](v228, -1, -1);
    }

    (*(v217 + 8))(v51, v216);
    v79 = sub_1CF70B1A8(v487, v486);
    return v79 & 1;
  }

  if (a1 == 0x40000000000)
  {
    goto LABEL_45;
  }

  if (a1 != 0x200000000000)
  {
    if (a1 == 0x1000000000000)
    {
      v53 = v41;
      v54 = v47;
      v55 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v56 = sub_1CF9E6108();
      v57 = sub_1CF9E7288();
      v52, v58, v59, v60, v61, v62, v63, v64;
      if (os_log_type_enabled(v56, v57))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v489 = v66;
        *v65 = 136446466;
        v67 = sub_1CF7F5AAC(0x1000000000000uLL);
        v69 = v68;
        v70 = v52;
        v71 = sub_1CEFD0DF0(v67, v68, &v489);
        v69, v72, v73, v74, v75, v76, v77, v78;
        *(v65 + 4) = v71;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_1CEFD0DF0(v485, v70, &v489);
        _os_log_impl(&dword_1CEFC7000, v56, v57, "Repairing %{public}s on %s (setting a valid detached root bookmark)", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v66, -1, -1);
        MEMORY[0x1D386CDC0](v65, -1, -1);
      }

      (*(v54 + 8))(v18, v53);
      v79 = sub_1CF709974(v487, v486, v484, v483);
      return v79 & 1;
    }

    goto LABEL_55;
  }

  v321 = v41;
  v322 = v47;
  v323 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v324 = sub_1CF9E6108();
  v325 = sub_1CF9E7288();
  v52, v326, v327, v328, v329, v330, v331, v332;
  if (os_log_type_enabled(v324, v325))
  {
    v333 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    v489 = v334;
    *v333 = 136446466;
    v335 = sub_1CF7F5AAC(0x200000000000uLL);
    v337 = v336;
    v338 = v52;
    v339 = sub_1CEFD0DF0(v335, v336, &v489);
    v337, v340, v341, v342, v343, v344, v345, v346;
    *(v333 + 4) = v339;
    *(v333 + 12) = 2080;
    *(v333 + 14) = sub_1CEFD0DF0(v485, v338, &v489);
    _os_log_impl(&dword_1CEFC7000, v324, v325, "Repairing %{public}s on %s (removing before bounce filename)", v333, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v334, -1, -1);
    MEMORY[0x1D386CDC0](v333, -1, -1);
  }

  (*(v322 + 8))(v24, v321);
  v79 = sub_1CF70B538(v487, sub_1CF70D01C, MEMORY[0x1E69E9440], "Failed to remove before bounce filename: %@");
  return v79 & 1;
}

uint64_t sub_1CF707D94(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  v12 = *a2;
  v13 = *(a2 + 8);
  if (a1 == 0x20000000 && *(v2 + 24) == 1)
  {
    v76 = v2;
    v14 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v15 = sub_1CF9E6108();
    v16 = sub_1CF9E7288();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v17 = 136446466;
      v18 = sub_1CF7F5394(0x20000000);
      v20 = v19;
      v21 = v12;
      v22 = sub_1CEFD0DF0(v18, v19, &v79);
      v20, v23, v24, v25, v26, v27, v28, v29;
      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      v77 = v21;
      v78 = v13;
      v31 = VFSItemID.description.getter(v30);
      v33 = v32;
      v34 = sub_1CEFD0DF0(v31, v32, &v79);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v17 + 14) = v34;
      v12 = v21;
      _os_log_impl(&dword_1CEFC7000, v15, v16, "Repairing %{public}s on %s (force re-ingestion)", v17, 0x16u);
      v42 = v75;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v42, -1, -1);
      MEMORY[0x1D386CDC0](v17, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    swift_beginAccess();
    sub_1CF6E9D5C(&v79, v12, v13);
    swift_endAccess();
    sub_1CEFD0994(v79, v80, v81);
    return 1;
  }

  else
  {
    v44 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v45 = sub_1CF9E6108();
    v46 = sub_1CF9E7298();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v76 = v5;
      v49 = v13;
      v50 = v12;
      v51 = v48;
      v79 = v48;
      *v47 = 136446466;
      v52 = sub_1CF7F5394(a1);
      v54 = v53;
      v55 = sub_1CEFD0DF0(v52, v53, &v79);
      v54, v56, v57, v58, v59, v60, v61, v62;
      *(v47 + 4) = v55;
      *(v47 + 12) = 2080;
      v77 = v50;
      v78 = v49;
      v64 = VFSItemID.description.getter(v63);
      v66 = v65;
      v67 = sub_1CEFD0DF0(v64, v65, &v79);
      v66, v68, v69, v70, v71, v72, v73, v74;
      *(v47 + 14) = v67;
      _os_log_impl(&dword_1CEFC7000, v45, v46, "Repairing %{public}s on %s is not supported", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v51, -1, -1);
      MEMORY[0x1D386CDC0](v47, -1, -1);

      (*(v6 + 8))(v8, v76);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return 0;
  }
}

uint64_t sub_1CF708188(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v82 = a7;
  v83 = a8;
  v84 = sub_1CF9E6118();
  v17 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v19 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  if (a4 == 1 && ((v23 = *a5, LODWORD(a5) = *(a5 + 8), v80 = *a6, v81 = v23, LODWORD(a6) = *(a6 + 8), a1 == 0xD000000000000021) && 0x80000001CFA58C80 == a2 || (sub_1CF9E8048() & 1) != 0) && a3 == 1)
  {
    v78 = a10;
    v79 = v10;
    v77 = a9;
    v24 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v25 = sub_1CF9E6108();
    v26 = sub_1CF9E7288();
    a2, v27, v28, v29, v30, v31, v32, v33;
    if (os_log_type_enabled(v25, v26))
    {
      v34 = swift_slowAlloc();
      v75 = a6;
      a6 = v34;
      v35 = swift_slowAlloc();
      v76 = a5;
      a5 = v35;
      v87 = v35;
      *a6 = 136446210;
      v36 = sub_1CF19F0C0(a1, a2, 1, a4 & 0xFFFF01);
      v38 = v37;
      v39 = sub_1CEFD0DF0(v36, v37, &v87);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(a6 + 4) = v39;
      _os_log_impl(&dword_1CEFC7000, v25, v26, "Repairing %{public}s", a6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(a5);
      v47 = a5;
      LOBYTE(a5) = v76;
      MEMORY[0x1D386CDC0](v47, -1, -1);
      v48 = a6;
      LOBYTE(a6) = v75;
      MEMORY[0x1D386CDC0](v48, -1, -1);
    }

    (*(v17 + 8))(v22, v84);
    v87 = v81;
    v88 = a5;
    v85 = v80;
    v86 = a6;
    v49 = sub_1CF70A5C0(&v87, &v85, v82, v83, v77, v78);
  }

  else
  {
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E7298();
    a2, v53, v54, v55, v56, v57, v58, v59;
    if (os_log_type_enabled(v51, v52))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v87 = v61;
      *v60 = 136446210;
      v62 = sub_1CF19F0C0(a1, a2, a3, a4 & 0xFFFFFF);
      v64 = v63;
      v65 = sub_1CEFD0DF0(v62, v63, &v87);
      v64, v66, v67, v68, v69, v70, v71, v72;
      *(v60 + 4) = v65;
      _os_log_impl(&dword_1CEFC7000, v51, v52, "Repairing %{public}s is is not supported", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1D386CDC0](v61, -1, -1);
      MEMORY[0x1D386CDC0](v60, -1, -1);
    }

    (*(v17 + 8))(v19, v84);
    v49 = 0;
  }

  return v49 & 1;
}

uint64_t sub_1CF708564(int a1, uint64_t a2)
{
  v5 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v5);
  if (*(v2 + 24) == 1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      swift_beginAccess();
      v8 = v7;
      v9 = 0;
    }

    else
    {
      v10 = *a2;
      swift_beginAccess();
      v8 = v10;
      v9 = 1;
    }

    sub_1CF6E9D5C(&v13, v8, v9);
    swift_endAccess();
    sub_1CEFD0994(v13, v14, v15);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    *(&v12 - 4) = a1;
    sub_1CEFE1894(sub_1CF50E2C0);
  }

  return 1;
}

double sub_1CF7088E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v39 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v38 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *(a1 + 8);
  v19 = *(a2 + 16);
  v41 = *a1;
  v42 = v18;
  v20 = v40;
  (*(*v19 + 160))(&v43, &v41, a3, a4, a5, v15);
  if (!v20)
  {
    v36 = v14;
    v37 = a3;
    v40 = a4;
    v35 = v17;
    v22 = v39;
    v23 = v43;
    if (v43)
    {
      v24 = *(a2 + 40);
      v41 = v43;
      (*(*v24 + 240))(&v41, 1, v37, v40, a5);
      if ((*(v38 + 48))(v13, 1, v36) == 1)
      {

        sub_1CEFCCC44(v13, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        result = 0.0;
        *v22 = 0u;
        v22[1] = 0u;
      }

      else
      {
        v25 = v13;
        v26 = v35;
        sub_1CEFE55D0(v25, v35, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v43 = *(v26 + 8);
        v27 = a5;
        v28 = *(*v19 + 152);
        v29 = v43;
        v28(&v41, &v43, v37, v40, v27);

        v30 = v42;
        if (v42 == 255)
        {
          sub_1CEFCCC44(v35, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          result = 0.0;
          *v22 = 0u;
          v22[1] = 0u;
        }

        else
        {
          v31 = v41;
          v32 = v35;
          v34 = *(v35 + 10);
          v33 = *(v35 + 11);

          sub_1CEFCCC44(v32, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          *v22 = v31;
          *(v22 + 1) = v30;
          *(v22 + 2) = v34;
          *(v22 + 3) = v33;
        }
      }
    }

    else
    {
      result = 0.0;
      *v39 = 0u;
      v22[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_1CF708C58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = a6;
  v28 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v18 = *(a1 + 8);
  v19 = *(a2 + 32);
  v29 = *a1;
  v30 = v18;
  v20 = v31;
  result = (*(*v19 + 240))(&v29, 1, a3, a4, v28, v15);
  if (!v20)
  {
    v22 = v27;
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      result = sub_1CEFCCC44(v12, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      sub_1CEFE55D0(v12, v17, &unk_1EC4BE360, &qword_1CF9FE650);
      v23 = *(v17 + 2);
      v24 = v17[24];
      v25 = *(v17 + 16);
      v26 = *(v17 + 17);

      result = sub_1CEFCCC44(v17, &unk_1EC4BE360, &qword_1CF9FE650);
    }

    *v22 = v23;
    v22[1] = v24;
    v22[2] = v25;
    v22[3] = v26;
  }

  return result;
}

uint64_t sub_1CF708E84@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E5A58();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v13);
  v23 = &v53 - v22;
  v24 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    v35 = *(v54 + 56);
    v36 = a4;
    v37 = 1;
LABEL_14:

    return v35(v36, v37, 1, v7, v21);
  }

  v25 = *a1;
  if (v24 != 1)
  {
    if (v25)
    {
      if (qword_1EDEAEE10 != -1)
      {
        swift_once();
      }

      sub_1CF9E5958();
    }

    else
    {
      (*(v54 + 16))(a4, a3, v7, v21);
    }

    v35 = *(v54 + 56);
    v36 = a4;
    v37 = 0;
    goto LABEL_14;
  }

  0, v14, v15, v16, v17, v18, v19, v20;
  v58 = v25;
  v59 = 0u;
  v60 = 0u;
  v55 = -1;
  v26 = fpfs_openfdbyhandle();
  if (v26 < 0)
  {
    v38 = v55;
    v39 = MEMORY[0x1D38683F0]();
    if (v38 < 0)
    {
      LODWORD(v56[0]) = 0;
      BYTE4(v56[0]) = 1;
    }

    else
    {
      LODWORD(v56[0]) = v55;
      BYTE4(v56[0]) = 0;
    }

    v57 = 0;
    v41 = sub_1CF19BBE4(v39, v56);
    sub_1CF1969CC(v56);
    swift_willThrow();
    0, v42, v43, v44, v45, v46, v47, v48;
    LODWORD(v56[0]) = sub_1CF9E5308();
    sub_1CF196978();
    sub_1CF9E5658();

    (*(v54 + 56))(v23, 1, 1, v7);
  }

  else
  {
    v34 = v26;
    0, v27, v28, v29, v30, v31, v32, v33;
    sub_1CF70937C(v23);
    close(v34);
  }

  sub_1CF33F8C8(v23, v12);
  if ((*(v54 + 48))(v12, 1, v7) == 1)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
    return (*(v54 + 56))(a4, 1, 1, v7);
  }

  v49 = *(v54 + 32);
  v49(v9, v12, v7);
  v50 = sub_1CF9E5928();
  v51 = sub_1CF9E5928();
  v52 = [v50 fp:v51 relationshipToItemAtURL:?];

  sub_1CEFCCC44(v23, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v52)
  {
    (*(v54 + 8))(v9, v7);
    return (*(v54 + 56))(a4, 1, 1, v7);
  }

  v49(a4, v9, v7);
  return (*(v54 + 56))(a4, 0, 1, v7);
}

uint64_t sub_1CF70937C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = swift_slowAlloc();
  sub_1CEFE1894(sub_1CF70B170);
  if (!v2)
  {
    sub_1CF9E6918();
    sub_1CF9E68F8();
    if (v6)
    {
      v7 = v6;
      sub_1CF9E58B8();
      v7, v8, v9, v10, v11, v12, v13, v14;
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = sub_1CF9E5A58();
    (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
  }

  return MEMORY[0x1D386CDC0](v5, -1, -1);
}

void sub_1CF7094D0(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v79 = a6;
  v85 = a7;
  v76 = a3;
  v77 = a2;
  v74 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v73 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = sub_1CF9E5A58();
  v75 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  v80 = v22;
  v81 = v23;
  v24 = a4;
  v25 = v78;
  sub_1CF708C58(&v80, a4, a5, v79, v85, &v82);
  if (!v25)
  {
    v78 = v22;
    v70 = v21;
    v71 = a5;
    v68 = v18;
    v26 = v76;
    v72 = v16;
    v27 = v84;
    if (v84)
    {
      v69 = 0;
      v67 = v83;
      v28 = v15;
      sub_1CF708E84(&v82, v76, v15);
      v29 = v75;
      v30 = v72;
      v31 = (*(v75 + 48))(v28, 1, v72);
      v39 = v85;
      v40 = v78;
      if (v31 != 1)
      {
        v56 = *(v29 + 32);
        v57 = v70;
        v56(v70, v28, v30);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
        v59 = v74;
        v60 = &v74[*(v58 + 48)];
        v56(v74, v57, v30);
        *v60 = v67;
        *(v60 + 1) = v27;
        (*(*(v58 - 8) + 56))(v59, 0, 1, v58);
        return;
      }

      v27, v32, v33, v34, v35, v36, v37, v38;
      sub_1CEFCCC44(v28, &unk_1EC4BE310, qword_1CF9FCBE0);
      v25 = v69;
    }

    else
    {
      v39 = v85;
      v40 = v78;
    }

    v80 = v40;
    v81 = v23;
    sub_1CF7088E8(&v80, v24, v71, v79, v39, &v82);
    if (v25)
    {
      return;
    }

    v41 = v84;
    if (!v84)
    {
      v55 = v74;
      goto LABEL_12;
    }

    v42 = v83;
    v43 = v26;
    v44 = v73;
    sub_1CF708E84(&v82, v43, v73);
    v45 = v75;
    v46 = v72;
    v47 = (*(v75 + 48))(v44, 1, v72);
    v55 = v74;
    if (v47 == 1)
    {
      v41, v48, v49, v50, v51, v52, v53, v54;
      sub_1CEFCCC44(v44, &unk_1EC4BE310, qword_1CF9FCBE0);
LABEL_12:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
      (*(*(v61 - 8) + 56))(v55, 1, 1, v61);
      return;
    }

    v62 = *(v45 + 32);
    v85 = v42;
    v63 = v68;
    v62(v68, v44, v46);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
    v65 = &v55[*(v64 + 48)];
    v62(v55, v63, v46);
    *v65 = v85;
    *(v65 + 1) = v41;
    (*(*(v64 - 8) + 56))(v55, 0, 1, v64);
  }
}

uint64_t sub_1CF709974(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1CF9E6118();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  MEMORY[0x1EEE9AC00](v17);
  if (!a4)
  {
    v23 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v24 = sub_1CF9E6108();
    v25 = sub_1CF9E72A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1CEFC7000, v24, v25, "Failed to set detached root bookmark: no db available", v26, 2u);
      MEMORY[0x1D386CDC0](v26, -1, -1);
    }

    v27 = *(v11 + 8);
    v28 = v13;
    goto LABEL_11;
  }

  v36[7] = *(*(a4 + 32) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28F8, &qword_1CFA13378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2900, &qword_1CFA13380);
  if (!swift_dynamicCast())
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1CEFCCC44(&v37, &qword_1EC4C2908, &qword_1CFA13388);
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = sub_1CF9E6108();
    v31 = sub_1CF9E72A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1CEFC7000, v30, v31, "Failed to set detached root bookmark: no deviceID", v32, 2u);
      MEMORY[0x1D386CDC0](v32, -1, -1);
    }

    else
    {
    }

    v27 = *(v11 + 8);
    v28 = v16;
LABEL_11:
    v27(v28, v10);
    v34 = 0;
    return v34 & 1;
  }

  v36[1] = v10;
  v18 = *(&v38 + 1);
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
  v20 = *((*(v19 + 24))(v18, v19) + 16);

  v21 = __swift_destroy_boxed_opaque_existential_1(&v37);
  MEMORY[0x1EEE9AC00](v21);
  v36[-6] = a2;
  v36[-5] = v5;
  LODWORD(v36[-4]) = v20;
  v36[-3] = a3;
  v36[-2] = a4;
  LODWORD(v36[-1]) = a1;
  v22 = objc_autoreleasePoolPush();
  sub_1CF803A54(a4, 2, "setDetachedRootBookmark(at:attributes:rootURL:db:)", 50, 2, 1, sub_1CF70B070, &v36[-8]);
  v34 = v33;
  objc_autoreleasePoolPop(v22);

  return v34 & 1;
}

void sub_1CF709E70(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, _TtC18FileProviderDaemon8FSTester *a5@<X5>, int a6@<W6>, _BYTE *a7@<X8>)
{
  v99 = a6;
  v110 = a5;
  v108 = a4;
  LODWORD(v109) = a3;
  v105 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v97 - v10;
  v100 = type metadata accessor for VFSDetachedRootBookmark(0);
  MEMORY[0x1EEE9AC00](v100);
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v97 - v13;
  v14 = sub_1CF9E6118();
  v102 = *(v14 - 8);
  v103 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2910, &qword_1CFA133A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v97 - v18;
  v20 = sub_1CF9E5A58();
  v106 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v97 - v24;
  v26 = *a2;
  v27 = a1[3];
  v28 = a1[4];
  v29 = __swift_project_boxed_opaque_existential_1(a1, v27);
  v111 = v26;
  v30 = v108;
  LOBYTE(v112) = 1;
  v31 = v115;
  sub_1CF7094D0(&v111, v109, v108, v110, v29, v27, v28, v19);
  if (!v31)
  {
    v32 = v22;
    v34 = v106;
    v33 = v107;
    v97 = v20;
    v98 = v25;
    v115 = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2918, &qword_1CFA133A8);
    if ((*(*(v35 - 8) + 48))(v19, 1, v35) == 1)
    {
      sub_1CEFCCC44(v19, &qword_1EC4C2910, &qword_1CFA133A0);
      v36 = fpfs_current_or_default_log();
      v37 = v16;
      sub_1CF9E6128();
      v38 = sub_1CF9E6108();
      v39 = sub_1CF9E72A8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1CEFC7000, v38, v39, "Failed to set detached root bookmark: cannot find parent for item", v40, 2u);
        MEMORY[0x1D386CDC0](v40, -1, -1);
      }

      (*(v102 + 8))(v37, v103);
      *v105 = 0;
    }

    else
    {
      v41 = &v19[*(v35 + 48)];
      v43 = *v41;
      v42 = *(v41 + 1);
      v109 = v43;
      v110 = v42;
      v44 = v34;
      v45 = *(v34 + 32);
      v47 = v97;
      v46 = v98;
      v45(v98, v19, v97);
      v48 = *(v44 + 16);
      v48(v32, v46, v47);
      v49 = v32;
      v48(v33, v30, v47);
      (*(v44 + 56))(v33, 0, 1, v47);
      v50 = v104;
      v48(v104, v32, v47);
      v51 = v115;
      v52 = sub_1CF9E5858();
      v60 = (v44 + 8);
      v115 = v51;
      if (v51)
      {
        v110, v53, v54, v55, v56, v57, v58, v59;
        sub_1CEFCCC44(v33, &unk_1EC4BE310, qword_1CF9FCBE0);
        v61 = *v60;
        (*v60)(v32, v47);
        v61(v98, v47);
        v61(v50, v47);
      }

      else
      {
        v62 = v52;
        v63 = v53;
        sub_1CEFCCC44(v33, &unk_1EC4BE310, qword_1CF9FCBE0);
        v64 = *v60;
        (*v60)(v49, v47);
        v65 = v100;
        v66 = v101;
        v67 = (v50 + *(v100 + 24));
        *v67 = v62;
        v67[1] = v63;
        v68 = (v50 + v65[5]);
        v69 = v110;
        *v68 = v109;
        v68[1] = v69;
        *(v50 + v65[7]) = 1;
        sub_1CF70B098(v50, v66);
        v70 = v65[6];
        v71 = (v66 + v65[5]);
        v73 = *v71;
        v72 = v71[1];
        v74 = *(v66 + v70);
        v75 = *(v66 + v70 + 8);
        sub_1CF9E56C8();
        swift_allocObject();

        sub_1CEFE42D4(v74, v75);
        sub_1CF9E56B8();
        sub_1CF9E5698();
        v111 = v73;
        v112 = v72;
        v113 = v74;
        v114 = v75;
        sub_1CF2B00B0();
        v76 = v115;
        v77 = sub_1CF9E56A8();
        v115 = v76;
        if (v76)
        {

          sub_1CF70B0FC(v66);
          v64(v98, v97);
          v72, v85, v86, v87, v88, v89, v90, v91;
          sub_1CEFE4714(v74, v75);
        }

        else
        {
          v92 = v77;
          v93 = v78;
          v72, v78, v79, v80, v81, v82, v83, v84;

          v94 = sub_1CEFE4714(v74, v75);
          MEMORY[0x1EEE9AC00](v94);
          *(&v97 - 6) = v92;
          *(&v97 - 5) = v93;
          *(&v97 - 8) = v99;
          *(&v97 - 3) = 0xD000000000000021;
          *(&v97 - 2) = v95;
          *(&v97 - 2) = 0;
          v96 = v115;
          sub_1CEFE1894(sub_1CF70B158);
          sub_1CEFE4714(v92, v93);
          sub_1CF70B0FC(v101);
          v64(v98, v97);
          if (!v96)
          {
            *v105 = 1;
          }
        }
      }
    }
  }
}

uint64_t sub_1CF70A5C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v97 = a5;
  v98 = a6;
  v12 = sub_1CF9E6118();
  v13 = *(v12 - 8);
  v99 = v12;
  v100 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v92 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v92 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v92 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v95 = v92 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v96 = v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v92 - v30;
  if (*(v7 + 24) != 1)
  {
    v42 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v43 = sub_1CF9E6108();
    v44 = sub_1CF9E72A8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1CEFC7000, v43, v44, "Failed to fix blockedByParentCreation items: cannot reingest items", v45, 2u);
      MEMORY[0x1D386CDC0](v45, -1, -1);
    }

    (*(v100 + 8))(v15, v99);
    return 0;
  }

  if (!a3)
  {
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E72A8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "Failed to fix blockedByParentCreation items: no db available", v49, 2u);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v100 + 8))(v18, v99);
    return 0;
  }

  v32 = a3;
  v93 = *a1;
  v94 = a3;
  v33 = *(a1 + 8);
  v34 = *a2;
  v101 = *(*(v32 + 32) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28F8, &qword_1CFA13378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2900, &qword_1CFA13380);
  if (!swift_dynamicCast())
  {
    memset(v104, 0, 40);
    sub_1CEFCCC44(v104, &qword_1EC4C2908, &qword_1CFA13388);
    v50 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E72A8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1CEFC7000, v51, v52, "Failed to fix blockedByParentCreation items: no deviceID", v53, 2u);
      MEMORY[0x1D386CDC0](v53, -1, -1);
    }

    else
    {
    }

    (*(v100 + 8))(v21, v99);
    return 0;
  }

  v92[1] = v34;
  v35 = *(&v104[1] + 1);
  v36 = *&v104[2];
  __swift_project_boxed_opaque_existential_1(v104, *(&v104[1] + 1));
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v104);
  if (v33 == 255)
  {
    v38 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v39 = sub_1CF9E6108();
    v40 = sub_1CF9E72A8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1CEFC7000, v39, v40, "Failed to fix blockedByParentCreation items: no parentID", v41, 2u);
      MEMORY[0x1D386CDC0](v41, -1, -1);
    }

    else
    {
    }

    (*(v100 + 8))(v24, v99);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFB50, &unk_1CFA13390);
  swift_dynamicCastClassUnconditional();
  *&v104[0] = v93;
  BYTE8(v104[0]) = v33;

  sub_1CF48C684(v104, 1, a4, v97, v98, v31);

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v56 = (*(*(v55 - 8) + 48))(v31, 1, v55) != 1;
  sub_1CEFCCC44(v31, &qword_1EC4C1B40, &unk_1CF9FCB70);
  v64 = v93;
  if (v33 == 1)
  {
    v65 = v37;
    0, v57, v58, v59, v60, v61, v62, v63;
    v67 = 0;
    v66 = v64;
    goto LABEL_25;
  }

  if (!v33)
  {
    v65 = v37;
    0, v57, v58, v59, v60, v61, v62, v63;
    v66 = 0;
    v67 = v64;
LABEL_25:
    v104[0] = v66;
    LODWORD(v104[1]) = v67;
    memset(&v104[1] + 4, 0, 20);
    v68 = sub_1CEFDADE0(v104, v65, 0x8000);
    sub_1CF1E6520(v66, 0, v67, 0, 0, v69, v70, v71);
    if ((v68 & 0x80000000) == 0)
    {
      close(v68);
    }

    if (!v56)
    {
      goto LABEL_31;
    }

LABEL_27:

    return 1;
  }

  if (v56)
  {
    goto LABEL_27;
  }

LABEL_31:
  v72 = fpfs_current_or_default_log();
  v73 = v96;
  sub_1CF9E6128();
  v74 = sub_1CF9E6108();
  v75 = sub_1CF9E7298();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = v33;
    v77 = v73;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v101 = v79;
    *v78 = 136315138;
    *&v104[0] = v64;
    BYTE8(v104[0]) = v76;
    v80 = VFSItemID.description.getter(v79);
    v82 = v81;
    v83 = sub_1CEFD0DF0(v80, v81, &v101);
    v82, v84, v85, v86, v87, v88, v89, v90;
    *(v78 + 4) = v83;
    v64 = v93;
    _os_log_impl(&dword_1CEFC7000, v74, v75, "fixing blockedByParentCreation on parent %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1D386CDC0](v79, -1, -1);
    MEMORY[0x1D386CDC0](v78, -1, -1);

    v91 = v77;
    v33 = v76;
    (*(v100 + 8))(v91, v99);
  }

  else
  {

    (*(v100 + 8))(v73, v99);
  }

  swift_beginAccess();
  sub_1CF6E9D5C(&v101, v64, v33);
  swift_endAccess();

  sub_1CEFD0994(v101, v102, v103);
  return 1;
}

uint64_t sub_1CF70AFE4(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF70B040@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CF70B098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VFSDetachedRootBookmark(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF70B0FC(uint64_t a1)
{
  v2 = type metadata accessor for VFSDetachedRootBookmark(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF70B170@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_fgetpath();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70B1A8(int a1, const void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v4);
  memcpy(v9, a2, sizeof(v9));
  v7[20] = a1;
  v8 = v9;
  v5 = sub_1CEFE1894(sub_1CF70CF0C);
  MEMORY[0x1EEE9AC00](v5);
  v7[-4] = a1;
  sub_1CEFE1894(sub_1CF70D75C);
  return 1;
}

uint64_t sub_1CF70B538(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4, ...)
{
  v5 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v5);
  sub_1CEFE1894(a2);
  return 1;
}

uint64_t sub_1CF70B74C(int a1, uint64_t a2)
{
  v4 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for VFSDetachedRootBookmark(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  sub_1CF36C8E0(a1, v7, v10);
  if (v10[v8[7]])
  {
    v13 = v8[6];
    v14 = &v10[v8[5]];
    v15 = v14[1];
    v32 = *v14;
    v16 = *&v10[v13];
    v17 = *&v10[v13 + 8];
    sub_1CF9E56C8();
    swift_allocObject();

    sub_1CEFE42D4(v16, v17);
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v33 = v32;
    v34 = v15;
    v35 = v16;
    v36 = v17;
    sub_1CF2B00B0();
    v31 = sub_1CF9E56A8();
    v32 = v18;
    v15, v18, v19, v20, v21, v22, v23, v24;

    v25 = sub_1CEFE4714(v16, v17);
    MEMORY[0x1EEE9AC00](v25);
    v27 = v31;
    v26 = v32;
    *(&v30 - 6) = v31;
    *(&v30 - 5) = v26;
    *(&v30 - 8) = a1;
    *(&v30 - 3) = 0xD000000000000021;
    *(&v30 - 2) = v28;
    *(&v30 - 2) = 0;
    sub_1CEFE1894(sub_1CF70D774);
    sub_1CF70B0FC(v10);
    sub_1CEFE4714(v27, v26);
  }

  else
  {
    sub_1CF70B0FC(v10);
  }

  return 1;
}

uint64_t sub_1CF70BBE4(int a1, char a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E53C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v27, 0, sizeof(v27));
  v28 = a1;
  v29 = v27;
  sub_1CEFE1894(sub_1CF198A9C);
  v12 = WORD2(v27[0]);
  v13 = sub_1CF9E61B8() & v12;
  v14 = sub_1CF9E61C8();
  if (v13 == v14)
  {
    MEMORY[0x1EEE9AC00](v14);
    v24[-4] = a1;
    LOBYTE(v24[-3]) = a2 & 1;
    sub_1CEFE1894(sub_1CF70D078);
    return 1;
  }

  else
  {
    v24[1] = 20;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF198A44();
    sub_1CF9E57D8();
    v15 = sub_1CF9E53A8();
    (*(v9 + 8))(v11, v8);
    swift_willThrow();
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v17 = v15;
    v18 = sub_1CF9E6108();
    v19 = sub_1CF9E72A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_getErrorValue();
      v22 = Error.prettyDescription.getter(v25, v26);
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_1CEFC7000, v18, v19, "Failed to set sync root bit: %@", v20, 0xCu);
      sub_1CEFCCC44(v21, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v21, -1, -1);
      MEMORY[0x1D386CDC0](v20, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_1CF70BFCC()
{
  v0 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v0);
  sub_1CEFE1894(sub_1CF70D0BC);
  return 1;
}

uint64_t sub_1CF70C260(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v4);
  sub_1CEFE1894(a3);
  return 1;
}

uint64_t sub_1CF70C540(uint64_t a1, uint64_t a2)
{
  v116[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E6118();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v94[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v94[-v14];
  v16 = *(a2 + 16);
  if (v16)
  {
    v95 = 0;
  }

  else
  {
    v16 = *a2;
    v95 = 1;
  }

  v18 = *(a2 + 40);
  v17 = (a2 + 40);
  if (v18 == 1)
  {
    v97 = 0;
    v98 = 0;
    v96 = 0;
    if (fpfs_fget_decmpf_info())
    {
      v19 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v20 = sub_1CF9E6108();
      v21 = sub_1CF9E72A8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v116[0] = v23;
        *v22 = 136315650;
        *&v99 = v16;
        BYTE8(v99) = v95;
        v24 = VFSItemID.description.getter(v23);
        v26 = v25;
        v27 = sub_1CEFD0DF0(v24, v25, v116);
        v26, v28, v29, v30, v31, v32, v33, v34;
        *(v22 + 4) = v27;
        *(v22 + 12) = 2048;
        swift_beginAccess();
        *(v22 + 14) = v98;
        *(v22 + 22) = 1024;
        swift_beginAccess();
        *(v22 + 24) = HIDWORD(v97);
        _os_log_impl(&dword_1CEFC7000, v20, v21, "The item %s has a malformed decmpfs attribute. Size: %ld, magic: %u", v22, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1D386CDC0](v23, -1, -1);
        MEMORY[0x1D386CDC0](v22, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
    }

    else if (v97 == -2147483647)
    {
      v52 = v17[10];
      v53 = v17[12];
      v54 = v17[13];
      v111 = v17[11];
      v112 = v53;
      v113 = v54;
      v55 = v17[6];
      v56 = v17[8];
      v57 = v17[9];
      v107 = v17[7];
      v108 = v56;
      v109 = v57;
      v110 = v52;
      v58 = v17[3];
      v102 = v17[2];
      v103 = v58;
      v59 = v17[5];
      v104 = v17[4];
      v105 = v59;
      v106 = v55;
      v60 = v17[1];
      v99 = *v17;
      v101 = *(&v60 + 1);
      v100 = v96;
      if ((fpfs_set_dataless_cmpfs_attrs() & 0x80000000) == 0)
      {
        return 1;
      }

      v77 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v78 = sub_1CF9E6108();
      v79 = sub_1CF9E72A8();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v116[0] = v81;
        *v80 = 67109378;
        v82 = MEMORY[0x1D38683F0]();
        *(v80 + 4) = v82;
        *(v80 + 8) = 2080;
        v114 = v16;
        v115 = v95;
        v83 = VFSItemID.description.getter(v82);
        v85 = v84;
        v86 = sub_1CEFD0DF0(v83, v84, v116);
        v85, v87, v88, v89, v90, v91, v92, v93;
        *(v80 + 10) = v86;
        _os_log_impl(&dword_1CEFC7000, v78, v79, "Failed to set dataless bit: %{darwin.errno}d on %s", v80, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1D386CDC0](v81, -1, -1);
        MEMORY[0x1D386CDC0](v80, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v61 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v62 = sub_1CF9E6108();
      v63 = sub_1CF9E72A8();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v114 = v65;
        *v64 = 136315394;
        *&v99 = v16;
        BYTE8(v99) = v95;
        v66 = VFSItemID.description.getter(v65);
        v68 = v67;
        v69 = sub_1CEFD0DF0(v66, v67, &v114);
        v68, v70, v71, v72, v73, v74, v75, v76;
        *(v64 + 4) = v69;
        *(v64 + 12) = 1024;
        swift_beginAccess();
        *(v64 + 14) = v97;
        _os_log_impl(&dword_1CEFC7000, v62, v63, "The item %s decmpfs attribute is not DATALESS_CMPFS_TYPE: %u", v64, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1D386CDC0](v65, -1, -1);
        MEMORY[0x1D386CDC0](v64, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v114 = v39;
      *v38 = 136315138;
      *&v99 = v16;
      BYTE8(v99) = v95;
      v40 = VFSItemID.description.getter(v39);
      v42 = v41;
      v43 = sub_1CEFD0DF0(v40, v41, &v114);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v38 + 4) = v43;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "The item %s is not a regular file, not attempting to fix the missing dataless flag", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v39, -1, -1);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    (*(v4 + 8))(v15, v3);
  }

  return 0;
}

uint64_t sub_1CF70CBAC(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v2);
  LOWORD(v13) = 0;
  v14 = 0;
  LOWORD(v8) = 0;
  v9 = 0;
  sub_1CF70D180(&v13);
  sub_1CF70D180(&v8);
  v6 = v13;
  v7 = v14;
  v4 = v8;
  v5 = v9;
  v10 = a1;
  v11 = &v4;
  v12 = &v6;
  sub_1CEFE1894(sub_1CF70D190);
  return 1;
}

uint64_t sub_1CF70CF0C@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_unset_evictable();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CF44@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_pkg_remove_demotion_xattr();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CF78@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_pkg_set_bundle_bit();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CFB0@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_pkg_set_bundle_bit();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70CFE8@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_pkg_remove_promotion_xattr();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D01C@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_remove_before_bounce_filename();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D078@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_fset_syncroot();
  *a1 = result;
  return result;
}

void sub_1CF70D0BC(int *a1@<X8>)
{
  v2 = sub_1CF9E6978();
  v3 = unlink((v2 + 32));

  *a1 = v3;
}

uint64_t sub_1CF70D110@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_update_purgency();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D148@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_update_purgency();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D190@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_set_finder_info();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5)
{
  v6 = v5;
  v90 = sub_1CF9E6118();
  v12 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v14 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v87 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v87 - v19;
  if (a1 <= 0x3FFFFFFF)
  {
    if (a1 != 0x40000 && a1 != 0x200000 && a1 != 0x400000)
    {
      goto LABEL_14;
    }

LABEL_9:
    v89 = a3;
    v21 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v22 = sub_1CF9E6108();
    v23 = sub_1CF9E7288();
    a5, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v87[1] = v6;
      v33 = a5;
      v34 = a4;
      v35 = v32;
      v91 = v32;
      *v31 = 136446466;
      v36 = sub_1CF7F5394(a1);
      v38 = v37;
      v39 = sub_1CEFD0DF0(v36, v37, &v91);
      v88 = a2;
      a2 = v39;
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v31 + 4) = a2;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1CEFD0DF0(v34, v33, &v91);
      _os_log_impl(&dword_1CEFC7000, v22, v23, "Repairing %{public}s on %s (force re-ingestion)", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v35, -1, -1);
      MEMORY[0x1D386CDC0](v31, -1, -1);

      LODWORD(a2) = v88;
    }

    else
    {
    }

    (*(v12 + 8))(v20, v90);
    v47 = sub_1CF708564(a2, v89);
    return v47 & 1;
  }

  switch(a1)
  {
    case 0x40000000:
      goto LABEL_9;
    case 0x2000000000:
      v73 = a4;
      v74 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v75 = sub_1CF9E6108();
      v76 = sub_1CF9E7288();
      a5, v77, v78, v79, v80, v81, v82, v83;
      if (os_log_type_enabled(v75, v76))
      {
        v84 = a2;
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v91 = v86;
        *v85 = 136315138;
        *(v85 + 4) = sub_1CEFD0DF0(v73, a5, &v91);
        _os_log_impl(&dword_1CEFC7000, v75, v76, "Self cannibalizing item at %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x1D386CDC0](v86, -1, -1);
        MEMORY[0x1D386CDC0](v85, -1, -1);

        a2 = v84;
      }

      else
      {
      }

      (*(v12 + 8))(v17, v90);
      v47 = sub_1CF70B538(a2, sub_1CF70D724, MEMORY[0x1E69E9438], "Failed to evict item for self cannibalization with: %@");
      return v47 & 1;
    case 0x400000000:
      goto LABEL_9;
  }

LABEL_14:
  v49 = a4;
  v50 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v51 = sub_1CF9E6108();
  v52 = sub_1CF9E7298();
  a5, v53, v54, v55, v56, v57, v58, v59;
  if (os_log_type_enabled(v51, v52))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v91 = v61;
    *v60 = 136446466;
    v62 = sub_1CF7F5394(a1);
    v64 = v63;
    v65 = sub_1CEFD0DF0(v62, v63, &v91);
    v64, v66, v67, v68, v69, v70, v71, v72;
    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_1CEFD0DF0(v49, a5, &v91);
    _os_log_impl(&dword_1CEFC7000, v51, v52, "Repairing %{public}s on %s is not supported", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v61, -1, -1);
    MEMORY[0x1D386CDC0](v60, -1, -1);
  }

  (*(v12 + 8))(v14, v90);
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_1CF70D724@<X0>(_DWORD *a1@<X8>)
{
  result = fpfs_purge_single_file();
  *a1 = result;
  return result;
}

uint64_t sub_1CF70D78C()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  result = sub_1CF7023DC(v0);
  *(v0 + 80) = result;
  *(v0 + 88) = 0;
  return result;
}

uint64_t sub_1CF70D7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _TtC18FileProviderDaemon8FSTester *a3@<X8>)
{
  v204 = a3;
  v201 = a2;
  v4 = sub_1CF9E6118();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v17 = (&v198 - v16);
  v18 = *(a1 + 8);
  v203 = *a1;
  v200 = v18;
  v19 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v20 = sub_1CF9E6A58();
    v22 = v21;
    v211 = v20;
    v212 = v21;
    v209 = 58;
    v210 = 0xE100000000000000;
    v207 = 47;
    v208 = 0xE100000000000000;
    v196 = sub_1CEFE4E68();
    v197 = v196;
    v194 = MEMORY[0x1E69E6158];
    v195 = v196;
    v199 = sub_1CF9E7668();
    v206 = v23;
    v22, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v199 = 0;
    v206 = 0;
  }

  0, v9, v10, v11, v12, v13, v14, v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v33 = (v31 + 56);
  v32(v17, 1, 1, v30);
  v41 = *(a1 + 40);
  if (v41 > 2)
  {
    v42 = v206;
    if (v41 == 4)
    {
      v43 = v203;
      if (v203)
      {
        v44 = v17;
        v213 = v203;
        v45 = 1;
        goto LABEL_18;
      }

      goto LABEL_34;
    }

    if (v41 != 3)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v19)
    {
      v44 = v17;
      v45 = 0;
      v213 = v19;
      v43 = v203;
      goto LABEL_18;
    }

LABEL_34:
    v42, v34, v35, v36, v37, v38, v39, v40;
    v32(v204, 1, 1, v30);
    v50 = v17;
    return sub_1CEFCCC44(v50, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v42 = v206;
  if (v41 == 1)
  {
    goto LABEL_11;
  }

  if (v41 != 2)
  {
LABEL_13:
    v206 = v17;
    v42, v34, v35, v36, v37, v38, v39, v40;
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = sub_1CF9E6108();
    v48 = sub_1CF9E7298();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1CEFC7000, v47, v48, "Item kind undefined.", v49, 2u);
      MEMORY[0x1D386CDC0](v49, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v32(v204, 1, 1, v30);
    v50 = v206;
    return sub_1CEFCCC44(v50, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v43 = v203;
  if (!v203)
  {
    v206, v34, v35, v36, v37, v38, v39, v40;
    v32(v204, 1, 1, v30);
    return sub_1CEFCCC44(v17, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  v44 = v17;
  v213 = v203;
  v45 = 1;
LABEL_18:
  v214 = v45;
  v51 = v202;
  swift_beginAccess();
  v52 = *(v51 + 16);
  if (*v52->tree)
  {

    v53 = sub_1CEFE863C(v201);
    if (v54)
    {
      v61 = *(*v52[1].tester + 8 * v53);

      v52, v62, v63, v64, v65, v66, v67, v68;
      swift_beginAccess();
      v69 = *(v51 + 24);
      if (*v69->tree)
      {

        v70 = sub_1CEFE863C(v201);
        if (v71)
        {
          v33 = *(*v69[1].tester + 8 * v70);

          v69, v72, v73, v74, v75, v76, v77, v78;
          Strong = objc_sync_enter(v33);
          if (Strong)
          {
            goto LABEL_63;
          }

          v205 = v61;
          v80 = v33[20];

          v81 = objc_sync_exit(v33);
          if (v81)
          {
            MEMORY[0x1EEE9AC00](v81);
            v196 = v33;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v194, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          v82 = *(v80 + 24);

          if (v43 == v82)
          {
            (*(**(v205 + 16) + 96))(&v209, v83);
            v213 = v209;
            v214 = v210;
          }

          if (v200 != v82)
          {
            goto LABEL_56;
          }

          v84 = qword_1EDEAEE10;

          if (v84 == -1)
          {
LABEL_28:
            v92 = *(&xmmword_1EDEBBE48 + 1);
            if (v42)
            {
              if (*(&xmmword_1EDEBBE48 + 1))
              {
                v93 = xmmword_1EDEBBE48;
                swift_bridgeObjectRetain_n();

                v94 = sub_1CEFE7394(v199, v42);
                if (v95)
                {
                  if (v94 == 12565487 && v95 == 0xA300000000000000)
                  {
                    0xA300000000000000, 0xA300000000000000, v96, v97, v98, v99, v100, v101;
LABEL_42:
                    v112 = v199;
                    v113 = v206;
                    v114 = sub_1CF9E69E8();
                    v115 = sub_1CF025150(v114, v112, v113);
                    v117 = v116;
                    v199 = MEMORY[0x1D3868C10](v115);
                    v119 = v118;
                    v117, v118, v120, v121, v122, v123, v124, v125;
                    goto LABEL_44;
                  }

                  v103 = v95;
                  v104 = sub_1CF9E8048();
                  v103, v105, v106, v107, v108, v109, v110, v111;
                  if (v104)
                  {
                    goto LABEL_42;
                  }
                }

                v119 = v206;

LABEL_44:
                v126 = sub_1CEFE7394(v93, v92);
                if (v127)
                {
                  if (v126 == 12565487 && v127 == 0xA300000000000000)
                  {
                    0xA300000000000000, 0xA300000000000000, v128, v129, v130, v131, v132, v133;
LABEL_49:
                    v143 = sub_1CF9E69E8();
                    v144 = sub_1CF025150(v143, v93, v92);
                    v146 = v145;
                    v93 = MEMORY[0x1D3868C10](v144);
                    v148 = v147;
                    v146, v147, v149, v150, v151, v152, v153, v154;
                    goto LABEL_51;
                  }

                  v134 = v127;
                  v135 = sub_1CF9E8048();
                  v134, v136, v137, v138, v139, v140, v141, v142;
                  if (v135)
                  {
                    goto LABEL_49;
                  }
                }

                v148 = v92;
LABEL_51:
                v43 = v203;
                if (v199 == v93 && v119 == v148)
                {
                  v148, v155, v156, v157, v158, v159, v160, v161;
                  v119, v162, v163, v164, v165, v166, v167, v168;
                  v42 = v206;
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  goto LABEL_55;
                }

                v169 = sub_1CF9E8048();
                v148, v170, v171, v172, v173, v174, v175, v176;
                v119, v177, v178, v179, v180, v181, v182, v183;
                v42 = v206;
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                if (v169)
                {
                  goto LABEL_55;
                }

LABEL_56:
                v184 = v205;
                Strong = swift_weakLoadStrong();
                if (Strong)
                {
                  v185 = MEMORY[0x1EEE9AC00](Strong);
                  v194 = v44;
                  v195 = v184;
                  v196 = &v213;
                  (*(*v186 + 464))(1, "fetchItem(with:inDomainID:)", 27, 2, 2, sub_1CF7100D4, v185);

                  goto LABEL_58;
                }

                __break(1u);
LABEL_63:
                MEMORY[0x1EEE9AC00](Strong);
                v196 = v33;
                fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v194, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
              }
            }

            else if (!*(&xmmword_1EDEBBE48 + 1))
            {
              0, v85, v86, v87, v88, v89, v90, v91;
LABEL_55:
              (*(**(v205 + 16) + 104))(&v209);
              v213 = v209;
              v214 = v210;
              goto LABEL_56;
            }

            v42, v85, v86, v87, v88, v89, v90, v91;
            goto LABEL_56;
          }

LABEL_61:
          swift_once();
          goto LABEL_28;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_61;
    }

    v52, v54, v55, v56, v57, v58, v59, v60;
  }

LABEL_58:
  swift_beginAccess();
  sub_1CF6E96D8(v215, v43);
  swift_endAccess();
  v42, v187, v188, v189, v190, v191, v192, v193;
  return sub_1CEFE55D0(v44, v204, &qword_1EC4C1B40, &unk_1CF9FCB70);
}

uint64_t sub_1CF70E164(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1CF9E6118();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(a4 + 8);
  v31 = *a4;
  v32 = v17;
  sub_1CF48C684(&v31, 0, v16, v15, v14, v13);
  if (!v4)
  {
    return sub_1CF7100F4(v13, a2);
  }

  v18 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v19 = v4;
  v20 = sub_1CF9E6108();
  v21 = sub_1CF9E72A8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    swift_getErrorValue();
    v24 = Error.prettyDescription.getter(v29, v30);
    *(v22 + 4) = v24;
    *v23 = v24;
    _os_log_impl(&dword_1CEFC7000, v20, v21, "Error fetching the item in the FSSnapshot: %@", v22, 0xCu);
    sub_1CEFCCC44(v23, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v23, -1, -1);
    MEMORY[0x1D386CDC0](v22, -1, -1);
  }

  else
  {
  }

  return (*(v27 + 8))(v10, v28);
}

BOOL sub_1CF70E404(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  v11 = *(v5 + 32);
  if (*(v11 + 16))
  {
    v12 = sub_1CF9E81C8();
    v13 = -1 << *(v11 + 32);
    v14 = v12 & ~v13;
    if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
    {
      v15 = ~v13;
      while (*(*(v11 + 48) + 8 * v14) != a1)
      {
        v14 = (v14 + 1) & v15;
        if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

LABEL_6:
  swift_beginAccess();
  if (sub_1CF052620())
  {
    return 0;
  }

  v17 = *(v5 + 48);
  v18 = *(v5 + 56);
  if (v18 != 1 || !v17)
  {
    v19 = a3 & 1 & v18;
    if (a3)
    {
      a2 = *(v5 + 48);
    }

    if (v19 == 1)
    {
      if (!v17)
      {
        a2 = 0x7FFFFFFFLL;
        if ((a5 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      a2 = sub_1CF70D78C();
    }

    if (a2 < 1)
    {
      return 0;
    }

    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    a4 = sub_1CF70D78C();
LABEL_20:
    if (a4 < 1)
    {
      return 0;
    }

    if (a4 >= a2)
    {
      sub_1CF8DEF70(0.0, 1.0);
      return v20 < a2 / a4;
    }
  }

  return 1;
}

uint64_t sub_1CF70E590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t, uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = a6;
  v56 = a5;
  v54 = a3;
  v57 = a1;
  v64 = sub_1CF9E6118();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v59 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  v60 = v17;
  v61 = v16;
  (*(v17 + 56))(&v48 - v26, 1, 1, v16, v25);
  v63 = a2;
  v51 = a4;
  v52 = a7;
  v50 = a8;
  v28 = v58;
  sub_1CF487090(a2, a4, a7, a8, v23);
  if (v28)
  {
    v58 = v27;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = v28;
    v31 = sub_1CF9E6108();
    v32 = sub_1CF9E72A8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 134349314;
      *(v33 + 4) = v63;
      *(v33 + 12) = 2114;
      swift_getErrorValue();
      v35 = Error.prettyDescription.getter(v65, v66);
      *(v33 + 14) = v35;
      *v34 = v35;
      _os_log_impl(&dword_1CEFC7000, v31, v32, "Error retrieving item %{public}llu error: %{public}@", v33, 0x16u);
      sub_1CEFCCC44(v34, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v34, -1, -1);
      MEMORY[0x1D386CDC0](v33, -1, -1);
    }

    else
    {
    }

    v27 = v58;
    v37 = v59;
    v36 = v62;
    (*(v62 + 8))(v13, v64);
  }

  else
  {
    sub_1CEFCCC44(v27, &qword_1EC4C1B40, &unk_1CF9FCB70);
    sub_1CEFE55D0(v23, v27, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v36 = v62;
    v37 = v59;
  }

  sub_1CEFCCBDC(v27, v37, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v60 + 48))(v37, 1, v61) == 1)
  {
    sub_1CEFCCC44(v37, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v38 = fpfs_current_or_default_log();
    v39 = v53;
    sub_1CF9E6128();
    v40 = sub_1CF9E6108();
    v41 = sub_1CF9E72A8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134349056;
      *(v42 + 4) = v63;
      _os_log_impl(&dword_1CEFC7000, v40, v41, "Enumeration returned a fileID for which no item can be found: %{public}llu", v42, 0xCu);
      MEMORY[0x1D386CDC0](v42, -1, -1);
    }

    (*(v36 + 8))(v39, v64);
    return sub_1CEFCCC44(v27, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  else
  {
    v44 = v49;
    sub_1CEFE55D0(v37, v49, &unk_1EC4BE360, &qword_1CF9FE650);
    swift_beginAccess();
    v45 = sub_1CF052620();
    v46 = v52;
    v67[3] = v52;
    v67[4] = v50;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
    (*(*(v46 - 8) + 16))(boxed_opaque_existential_0, v51, v46);
    v56(v44, v45 & 1, v54, v67);
    sub_1CEFCCC44(v44, &unk_1EC4BE360, &qword_1CF9FE650);
    sub_1CEFCCC44(v27, &qword_1EC4C1B40, &unk_1CF9FCB70);
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }
}

void sub_1CF70EBDC(int a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v46 = a2;
  v47 = a3;
  v7 = *(v3 + 48);
  v38 = *(v3 + 56);
  v41 = v7;
  if (v38 == 1)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = sub_1CF70D78C() < v7;
  }

  swift_beginAccess();
  v48 = v3;
  v9 = *(v3 + 16);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v43 = a1 | v8;
  v45 = v9;

  v15 = 0;
  v42 = v14;
  if (!v13)
  {
LABEL_7:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {

        return;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  while (1)
  {
LABEL_11:
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v13)));
    v18 = *(*(v45 + 48) + v17);
    v19 = *(*(v45 + 56) + v17);
    v44 = v18;
    if (v43)
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_37;
      }

      MEMORY[0x1EEE9AC00](Strong);
      v33 = v19;
      v34 = v46;
      v35 = v47;
      v36 = v48;
      v37 = v18;
      v22 = *v21;
      v39 = *(*v21 + 464);
      v40 = v22 + 464;
      v23 = v18;

      v24 = v5;
      v39(1, "enumerateItems(forceExhaustive:_:)", 34, 2, 2, sub_1CF70F5D4, v32, MEMORY[0x1E69E7CA8] + 8);
      goto LABEL_27;
    }

    v23 = v18;

    v25 = v41;
    if (v38)
    {
      break;
    }

LABEL_17:
    if (v25 < -1)
    {
      goto LABEL_35;
    }

    if ((v25 + 1) >= 3)
    {
      v26 = v25 / 2;
      goto LABEL_21;
    }

LABEL_25:
    v30 = swift_weakLoadStrong();
    if (!v30)
    {
      goto LABEL_38;
    }

    MEMORY[0x1EEE9AC00](v30);
    v33 = v19;
    v34 = v48;
    v35 = v23;
    v36 = v46;
    v37 = v47;
    v24 = v5;
    (*(*v31 + 464))(1, "enumerateItems(forceExhaustive:_:)", 34, 2, 2, sub_1CF70F57C, v32, MEMORY[0x1E69E7CA8] + 8);
LABEL_27:
    v5 = v24;
    if (v24)
    {

LABEL_32:

      return;
    }

    v13 &= v13 - 1;

    v14 = v42;
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  if (v41)
  {
    v25 = sub_1CF70D78C();
    goto LABEL_17;
  }

  v26 = 0x3FFFFFFFLL;
LABEL_21:
  while (v26)
  {
    v27 = swift_weakLoadStrong();
    if (!v27)
    {
      goto LABEL_36;
    }

    v28 = MEMORY[0x1EEE9AC00](v27);
    v33 = v48;
    v34 = v19;
    v35 = v23;
    v36 = v46;
    v37 = v47;
    (*(*v29 + 464))(1, "enumerateItems(forceExhaustive:_:)", 34, 2, 2, sub_1CF70F550, v28);

    if (v5)
    {
      goto LABEL_32;
    }

    if (!--v26)
    {
      goto LABEL_25;
    }
  }

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
}

uint64_t sub_1CF70F048(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, _BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = sub_1CF052620();
  sub_1CF1A91AC(a6, v12);
  a2(a1, v10 & 1, a5, v12);
  sub_1CEFCCC44(v12, &qword_1EC4C0700, &qword_1CFA05B10);
  return 1;
}

void sub_1CF70F114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v12 = *(a2 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {

    v14 = sub_1CF518B08(v13);
    v15 = sub_1CF9E77C8();
    v16 = sub_1CF7B6BBC(v15, *(v12 + 36), 0, v14, v12);
    v39 = a3;
    v40 = a4;
    v18 = v17;
    v20 = v19;
    v21 = sub_1CF6637D0(v16, v17, v19 & 1, v12);
    sub_1CF0663D8(v16, v18, v20 & 1, v22, v23, v24, v25, v26);
    v12, v27, v28, v29, v30, v31, v32, v33;
    v34 = a1[3];
    v35 = a1[4];
    v36 = __swift_project_boxed_opaque_existential_1(a1, v34);
    MEMORY[0x1EEE9AC00](v36);
    v38[2] = a5;
    v38[3] = a6;
    sub_1CF70E590(v39, v21, v40, v37, sub_1CF710044, v38, v34, v35);
  }
}

void sub_1CF70F280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v14 = *(a3 + 48);
  if (*(a3 + 56) == 1)
  {
    if (v14)
    {
      v14 = sub_1CF70D78C();
    }

    else
    {
      v14 = 0x7FFFFFFFLL;
    }
  }

  MEMORY[0x1EEE9AC00](v14 / 2);
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a1;
  sub_1CF4B9E20(v15, v13, sub_1CF70F694, v16, v11, v12);
}

uint64_t sub_1CF70F36C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, BOOL, uint64_t, _BYTE *), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if ((sub_1CF052620() & 1) == 0)
  {
    swift_beginAccess();
    if ((sub_1CF052620() & 1) == 0)
    {
      swift_beginAccess();
      v13 = *(a2 + 24);
      if (*v13->tree)
      {

        v14 = sub_1CEFE863C(a3);
        if (v15)
        {
          v22 = *(*v13[1].tester + 8 * v14);

          v13, v23, v24, v25, v26, v27, v28, v29;
          v11 = sub_1CF70F6F4(a1, v22);

          goto LABEL_4;
        }

        v13, v15, v16, v17, v18, v19, v20, v21;
      }

      v11 = 0;
      goto LABEL_4;
    }
  }

  v11 = 1;
LABEL_4:
  sub_1CF1A91AC(a6, v30);
  a4(a1, v11, a3, v30);
  sub_1CEFCCC44(v30, &qword_1EC4C0700, &qword_1CFA05B10);
  return 1;
}

uint64_t sub_1CF70F4DC(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;
  v8[4], v16, v17, v18, v19, v20, v21, v22;
  v8[5], v23, v24, v25, v26, v27, v28, v29;

  return swift_deallocClassInstance();
}

uint64_t sub_1CF70F5D4(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v7 = *(v1 + 40);
  v8 = *(v1 + 24);
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v10 = v8;
  v11 = v7;
  v12 = a1;
  return sub_1CF4BA108(v5, sub_1CF70F664, v9, v3, v4);
}

BOOL sub_1CF70F6F4(uint64_t a1, void *a2)
{
  v123 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v112 - v5;
  v7 = sub_1CF9E6118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  0, v12, v13, v14, v15, v16, v17, v18;
  v19 = objc_sync_enter(a2);
  if (v19)
  {
    MEMORY[0x1EEE9AC00](v19);
    v110 = a2;
    v107 = sub_1CF1C5288;
    goto LABEL_35;
  }

  v113 = v8;

  v20 = objc_sync_exit(a2);
  if (v20)
  {
    MEMORY[0x1EEE9AC00](v20);
    v110 = a2;
    v108 = sub_1CF1C5290;
    goto LABEL_37;
  }

  v120 = v11;
  v121 = 0u;
  v122 = 0u;
  LODWORD(v114) = -1;
  v21 = fpfs_openfdbyhandle();
  if ((v21 & 0x80000000) == 0)
  {
    v29 = v21;
    0, v22, v23, v24, v25, v26, v27, v28;
    close(v29);
    return 1;
  }

  v31 = v114;
  v32 = MEMORY[0x1D38683F0]();
  if (v31 < 0)
  {
    LODWORD(v118[0]) = 0;
    BYTE4(v118[0]) = 1;
  }

  else
  {
    LODWORD(v118[0]) = v114;
    BYTE4(v118[0]) = 0;
  }

  v119 = 0;
  v33 = sub_1CF19BBE4(v32, v118);
  sub_1CF1969CC(v118);
  swift_willThrow();
  0, v34, v35, v36, v37, v38, v39, v40;
  v41 = v33;
  LODWORD(v118[0]) = sub_1CF9E5308();
  sub_1CF196978();
  sub_1CF9E5658();

  v42 = v33;
  LODWORD(v118[0]) = sub_1CF9E52B8();
  v43 = sub_1CF9E5658();

  if ((v43 & 1) == 0 || *(a1 + 8) > 1u)
  {
    v53 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    sub_1CEFCCBDC(a1, v6, &unk_1EC4BE360, &qword_1CF9FE650);
    v54 = v33;
    v55 = sub_1CF9E6108();
    v56 = sub_1CF9E72A8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v118[0] = v112;
      *v57 = 136315394;
      v59 = sub_1CF814758();
      v61 = v60;
      sub_1CEFCCC44(v6, &unk_1EC4BE360, &qword_1CF9FE650);
      v62 = sub_1CEFD0DF0(v59, v61, v118);
      v61, v63, v64, v65, v66, v67, v68, v69;
      *(v57 + 4) = v62;
      *(v57 + 12) = 2112;
      swift_getErrorValue();
      v70 = Error.prettyDescription.getter(v116, v117);
      *(v57 + 14) = v70;
      *v58 = v70;
      _os_log_impl(&dword_1CEFC7000, v55, v56, "Error trying to access(%s): %@", v57, 0x16u);
      sub_1CEFCCC44(v58, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v58, -1, -1);
      v71 = v112;
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x1D386CDC0](v71, -1, -1);
      MEMORY[0x1D386CDC0](v57, -1, -1);
    }

    else
    {

      sub_1CEFCCC44(v6, &unk_1EC4BE360, &qword_1CF9FE650);
    }

    (*(v113 + 8))(v10, v7);
    return 0;
  }

  v44 = *(a1 + 16);
  v45 = *(a1 + 24);
  if (v45 == 1)
  {

    goto LABEL_26;
  }

  if (v45 != 2)
  {
    LODWORD(v111) = 0;
    v110 = 273;
    v72 = sub_1CF9E7B68();
    __break(1u);
    goto LABEL_41;
  }

  v72 = objc_sync_enter(a2);
  if (v44)
  {
    if (!v72)
    {
      v73 = a2[20];

      v74 = objc_sync_exit(a2);
      if (v74)
      {
        goto LABEL_44;
      }

      v44 = *(v73 + 40);
      v75 = *(v73 + 48);

      if (v75)
      {
        return 0;
      }

      goto LABEL_26;
    }

LABEL_41:
    MEMORY[0x1EEE9AC00](v72);
    v110 = a2;
    v107 = sub_1CF1C546C;
LABEL_35:
    fp_preconditionFailure(_:file:line:)(v107, v109, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  if (v72)
  {
    goto LABEL_41;
  }

  v76 = a2[20];

  v74 = objc_sync_exit(a2);
  if (v74)
  {
LABEL_44:
    MEMORY[0x1EEE9AC00](v74);
    v110 = a2;
    v108 = sub_1CF1C5468;
LABEL_37:
    fp_preconditionFailure(_:file:line:)(v108, v109, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v44 = *(v76 + 24);

LABEL_26:
  0, v46, v47, v48, v49, v50, v51, v52;
  v72 = objc_sync_enter(a2);
  if (v72)
  {
    goto LABEL_41;
  }

  v74 = objc_sync_exit(a2);
  if (v74)
  {
    goto LABEL_44;
  }

  v120 = v44;
  v121 = 0u;
  v122 = 0u;
  LODWORD(v114) = -1;
  v77 = fpfs_openfdbyhandle();
  if (v77 < 0)
  {
    v97 = v114;
    v98 = MEMORY[0x1D38683F0]();
    if (v97 < 0)
    {
      LODWORD(v118[0]) = 0;
      BYTE4(v118[0]) = 1;
    }

    else
    {
      LODWORD(v118[0]) = v114;
      BYTE4(v118[0]) = 0;
    }

    v119 = 0;
    v99 = sub_1CF19BBE4(v98, v118);
    sub_1CF1969CC(v118);
    swift_willThrow();
    0, v100, v101, v102, v103, v104, v105, v106;
    LODWORD(v118[0]) = sub_1CF9E5308();
    sub_1CF9E5658();

    return 0;
  }

  v85 = v77;
  0, v78, v79, v80, v81, v82, v83, v84;
  v86 = *(a1 + 136);
  v118[0] = *(a1 + 128);
  v118[1] = v86;
  v120 = 47;
  *&v121 = 0xE100000000000000;
  v114 = 58;
  v115 = 0xE100000000000000;
  v111 = sub_1CEFE4E68();
  v109[0] = MEMORY[0x1E69E6158];
  v109[1] = v111;
  sub_1CF9E7668();
  v88 = v87;
  v89 = sub_1CF9E6978();
  v88, v90, v91, v92, v93, v94, v95, v96;
  LODWORD(v88) = faccessat(v85, (v89 + 32), 0, 32);

  close(v85);
  return v88 == 0;
}

uint64_t sub_1CF710044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  sub_1CF1A91AC(a4, v10);
  v8(a1, a2, a3, v10);
  return sub_1CEFCCC44(v10, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF7100F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF710164(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v13[0] = a3;
      LOWORD(v13[1]) = a4;
      BYTE2(v13[1]) = BYTE2(a4);
      BYTE3(v13[1]) = BYTE3(a4);
      BYTE4(v13[1]) = BYTE4(a4);
      BYTE5(v13[1]) = BYTE5(a4);
      v7 = v13 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1CF712270(v8, v9, a1);
    return v10 & 1;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v7 = v13;
LABEL_9:
  v10 = (a1)(&v12, v13, v7);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1CF7102B8(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1CF67B224(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1CF71253C(v3, v4);
    }

    else
    {
      v6 = sub_1CF7125B8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1CF710374(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v57[0] = a1;
  v57[1] = a2;
  *&v60 = a1;
  *(&v60 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2938, &qword_1CFA13440);
  if (swift_dynamicCast())
  {
    sub_1CF054EA0(__src, &v61);
    __swift_project_boxed_opaque_existential_1(&v61, v62);
    sub_1CF9E5558();
    __src[0] = v60;
    __swift_destroy_boxed_opaque_existential_1(&v61);
    goto LABEL_63;
  }

  v59 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1CEFCCC44(__src, &qword_1EC4C2940, qword_1CFA13448);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = (a2 >> 56) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1CF9E79F8();
  }

  sub_1CF712324(&v61, v4, v5);
  v6 = *(&v61 + 1);
  v7 = v61;
  if (*(&v61 + 1) >> 60 != 15)
  {
    __src[0] = v61;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = (a2 >> 56) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1CF71263C(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v52[2] = v57;
  v10 = sub_1CF195854(sub_1CF712CE8, v52);
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v21 == 2)
    {
      v23 = *(*&__src[0] + 16);
      v22 = *(*&__src[0] + 24);
      v24 = __OFSUB__(v22, v23);
      v25 = v22 - v23;
      if (v24)
      {
        goto LABEL_70;
      }

      if (v13 != v25)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v26 = 0;
      goto LABEL_60;
    }
  }

  else if (v21)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v21 == 2)
      {
        v26 = *(*&__src[0] + 24);
      }

      else if (v21 == 1)
      {
        v26 = *&__src[0] >> 32;
      }

      else
      {
        v26 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v26 >= v13)
      {
        sub_1CF9E5AE8();
LABEL_62:
        v19, v36, v37, v38, v39, v40, v41, v42;
        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v54 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v27 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v60 + 7) = 0;
  *&v60 = 0;
  if (4 * v27 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v53 = v6;
  LOBYTE(v28) = 0;
  v29 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v29) = 1;
  }

  v30 = 4 << v29;
  v55 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v56 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v31 = v20 & 0xC;
    v32 = v20;
    if (v31 == v30)
    {
      v32 = sub_1CF4C4DE8(v20, v18, v19);
    }

    v33 = v32 >> 16;
    if (v32 >> 16 >= v27)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1CF9E6A88();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v35 = sub_1CF9E6AC8();
      if (v31 != v30)
      {
        goto LABEL_46;
      }
    }

    else if ((v19 & 0x2000000000000000) != 0)
    {
      *&v61 = v18;
      *(&v61 + 1) = v56;
      v35 = *(&v61 + v33);
      if (v31 != v30)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v34 = v55;
      if ((v18 & 0x1000000000000000) == 0)
      {
        v34 = sub_1CF9E79F8();
      }

      v35 = *(v34 + v33);
      if (v31 != v30)
      {
LABEL_46:
        if ((v19 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v20 = sub_1CF4C4DE8(v20, v18, v19);
    if ((v19 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v20 = (v20 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v27 <= v20 >> 16)
    {
      goto LABEL_66;
    }

    v20 = sub_1CF9E6A98();
LABEL_52:
    *(&v60 + v28) = v35;
    v28 = v28 + 1;
    if ((v28 >> 8))
    {
      goto LABEL_65;
    }

    if (v28 == 14)
    {
      *&v61 = v60;
      *(&v61 + 6) = *(&v60 + 6);
      sub_1CF9E5B08();
      LOBYTE(v28) = 0;
    }
  }

  while (4 * v27 != v20 >> 14);
  v6 = v53;
  if (v28)
  {
    *&v61 = v60;
    *(&v61 + 6) = *(&v60 + 6);
    sub_1CF9E5B08();
    sub_1CEFE48D8(v54, v6);
    goto LABEL_62;
  }

LABEL_57:
  v19, v11, v12, v13, v14, v15, v16, v17;
  sub_1CEFE48D8(v54, v6);
LABEL_63:
  v43 = __src[0];
  sub_1CEFE42D4(*&__src[0], *(&__src[0] + 1));
  a2, v44, v45, v46, v47, v48, v49, v50;
  sub_1CEFE4714(v43, *(&v43 + 1));
  return v43;
}

uint64_t FPDAccessControlStore.swift_bookmark(for:consumerIdentifier:installSessionIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v87 = a5;
  v81 = a4;
  v90 = a2;
  v91 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2920, &qword_1CFA13428);
  v85 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2928, &qword_1CFA13430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v80 - v9;
  v11 = sub_1CF9E6558();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6938();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 providerID];
  v19 = [a1 domainIdentifier];
  v20 = [a1 identifier];
  v21 = sub_1CF7127B8(v18, v19, v20);
  v23 = v22;

  sub_1CF9E6918();
  v82 = v21;
  v84 = v23;
  v24 = sub_1CF9E68C8();
  v26 = v25;
  v27 = *(v14 + 8);
  result = v27(v17, v13);
  if (v26 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v97 = v24;
  v98 = v26;
  sub_1CF9E6918();
  v29 = sub_1CF9E68C8();
  v31 = v30;
  result = v27(v17, v13);
  if (v31 >> 60 == 15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1CF9E5BC8();
  sub_1CEFE48D8(v29, v31);
  v32 = v87;
  v33 = v89;
  if (v87 >> 60 == 15)
  {
    v34 = sub_1CF710374(0x79636167656CLL, 0xE600000000000000);
    v36 = v35;
    sub_1CF9E5BC8();
    sub_1CEFE4714(v34, v36);
  }

  else
  {
    v37 = v81;
    sub_1CEFE42D4(v81, v87);
    sub_1CF9E5BC8();
    sub_1CEFE48D8(v37, v32);
  }

  v38 = v88;
  v40 = v97;
  v39 = v98;
  sub_1CF711018(1, v10);
  result = (*(v38 + 48))(v10, 1, v33);
  if (result != 1)
  {
    v41 = v86;
    v42 = (*(v38 + 32))(v86, v10, v33);
    MEMORY[0x1EEE9AC00](v42);
    v78 = v41;
    v43 = v83;
    v91 = v40;
    sub_1CF712090(sub_1CF7128F0, v77, v40, v39);
    v99 = v6;
    v100 = sub_1CEFCCCEC(&qword_1EDEA3958, &qword_1EC4C2920, &qword_1CFA13428, MEMORY[0x1E69664B0]);
    v44 = __swift_allocate_boxed_opaque_existential_0(&v97);
    v45 = v85;
    (*(v85 + 16))(v44, v43, v6);
    __swift_project_boxed_opaque_existential_1(&v97, v99);
    sub_1CF9E5558();
    (*(v45 + 8))(v43, v6);
    v46 = v95;
    v47 = v96;
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v48 = sub_1CF9E5B58();
    v50 = v49;
    v97 = v48;
    v98 = v49;
    v95 = 47;
    v96 = 0xE100000000000000;
    v93 = 95;
    v94 = 0xE100000000000000;
    v78 = sub_1CEFE4E68();
    v79 = v78;
    v77[0] = MEMORY[0x1E69E6158];
    v77[1] = v78;
    v51 = sub_1CF9E7668();
    v53 = v52;
    v50, v52, v54, v55, v56, v57, v58, v59;
    v60 = sub_1CF9E5B48();
    [v92 addLRUSignature_];

    v97 = 792359014;
    v98 = 0xE400000000000000;
    MEMORY[0x1D3868CC0](v51, v53);
    v53, v61, v62, v63, v64, v65, v66, v67;
    MEMORY[0x1D3868CC0](47, 0xE100000000000000);
    v68 = v84;
    MEMORY[0x1D3868CC0](v82, v84);
    v68, v69, v70, v71, v72, v73, v74, v75;
    sub_1CEFE4714(v91, v39);
    sub_1CEFE4714(v46, v47);
    v76 = v97;
    (*(v38 + 8))(v41, v33);
    return v76;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF711018@<X0>(char a2@<W2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = sub_1CF9E6558();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6888();
  v36 = sub_1CF711380;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1CF711574;
  v35 = &block_descriptor_37;
  v12 = _Block_copy(&aBlock);
  v13 = [v4 keyForBundleIdentifier:v11 generateIfNotFound:a2 & 1 keyGenBlock:v12];
  _Block_release(v12);

  if (v13)
  {
    v14 = sub_1CF9E5B88();
    v16 = v15;

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 != 2)
      {
        memset(v31, 0, 14);
        v28 = v31;
        aBlock = v31;
LABEL_24:
        v33 = v28;
        goto LABEL_25;
      }

      v19 = *(v14 + 16);
      v20 = *(v14 + 24);
      v21 = sub_1CF9E5498();
      if (v21)
      {
        v22 = sub_1CF9E54C8();
        if (__OFSUB__(v19, v22))
        {
          goto LABEL_28;
        }

        v21 += v19 - v22;
      }

      v23 = __OFSUB__(v20, v19);
      v24 = v20 - v19;
      if (!v23)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v31[0] = v14;
      LOWORD(v31[1]) = v16;
      BYTE2(v31[1]) = BYTE2(v16);
      BYTE3(v31[1]) = BYTE3(v16);
      BYTE4(v31[1]) = BYTE4(v16);
      BYTE5(v31[1]) = BYTE5(v16);
      aBlock = v31;
      v33 = v31 + BYTE6(v16);
LABEL_25:
      sub_1CF9E6538();
      sub_1CEFE4714(v14, v16);
      (*(v8 + 32))(a3, v10, v7);
      v18 = 0;
      return (*(v8 + 56))(a3, v18, 1, v7);
    }

    v24 = (v14 >> 32) - v14;
    if (v14 >> 32 >= v14)
    {
      v21 = sub_1CF9E5498();
      if (!v21)
      {
LABEL_17:
        v26 = sub_1CF9E54B8();
        if (v26 >= v24)
        {
          v27 = v24;
        }

        else
        {
          v27 = v26;
        }

        v28 = (v27 + v21);
        if (!v21)
        {
          v28 = 0;
        }

        aBlock = v21;
        goto LABEL_24;
      }

      v25 = sub_1CF9E54C8();
      if (!__OFSUB__(v14, v25))
      {
        v21 += v14 - v25;
        goto LABEL_17;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = 1;
  return (*(v8 + 56))(a3, v18, 1, v7);
}

uint64_t sub_1CF711380()
{
  v0 = sub_1CF9E6578();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CF9E6558();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E6568();
  sub_1CF9E6548();
  sub_1CF9E6528();
  (*(v2 + 8))(v4, v1);
  return v6[2];
}

void sub_1CF7114CC(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 == a1))
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v9 = sub_1CF7126DC(v6);
    v11 = v10;

    *a3 = v9;
    a3[1] = v11;
    return;
  }

  v8 = sub_1CEFD0D7C(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v8;
      memmove(v8 + 4, a1, v5);
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1CF711574(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);
  v5 = v4;

  v6 = sub_1CF9E5B48();
  sub_1CEFE4714(v3, v5);

  return v6;
}

id sub_1CF7115EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2920, &qword_1CFA13428);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  v19 = a3;
  sub_1CF712090(sub_1CF712D70, v18, a1, a2);
  v23 = v8;
  v24 = sub_1CEFCCCEC(&qword_1EDEA3958, &qword_1EC4C2920, &qword_1CFA13428, MEMORY[0x1E69664B0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(v9 + 16))(boxed_opaque_existential_0, v11, v8);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_1CF9E5558();
  (*(v9 + 8))(v11, v8);
  v13 = v20;
  v14 = v21;
  __swift_destroy_boxed_opaque_existential_1(v22);
  v15 = sub_1CF9E5B48();
  v16 = [v4 lookupLRUSignature_];
  sub_1CEFE4714(v13, v14);

  return v16;
}

uint64_t sub_1CF7117F0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_1CF9E65C8();
  sub_1CF712BE8(v4);
  sub_1CF712C40();
  return sub_1CF9E6588();
}

id sub_1CF711874(unint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v99 = a6;
  v97 = a5;
  v11 = sub_1CF9E6938();
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2928, &qword_1CFA13430);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v88 - v15;
  v17 = sub_1CF9E6558();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF71290C(a1, a2, &v109);
  if (v110)
  {
    v98 = v110;
    v94 = v109;
    v95 = a3;
    v21 = v111;
    v20 = v112;
    v22 = v113;
    v96 = a4;
    v93 = v6;
    sub_1CF711018(0, v16);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      v30 = v17;
      v91 = v18;
      v31 = *(v18 + 32);
      v32 = v100;
      v92 = v30;
      v31(v100, v16);
      v90 = v21;
      v89 = v20;
      sub_1CF7127B8(v21, v20, v22);
      v34 = v33;
      sub_1CF9E6918();
      v35 = v34;
      v36 = sub_1CF9E68C8();
      v38 = v37;
      v39 = v102;
      v40 = *(v101 + 8);
      result = v40(v13, v102);
      if (v38 >> 60 == 15)
      {
        __break(1u);
      }

      else
      {
        v42 = v22;
        v107 = v36;
        v108 = v38;
        sub_1CF9E6918();
        v43 = sub_1CF9E68C8();
        v45 = v44;
        result = v40(v13, v39);
        v46 = v99;
        if (v45 >> 60 != 15)
        {
          sub_1CF9E5BC8();
          sub_1CEFE48D8(v43, v45);
          if (v46 >> 60 == 15)
          {
            v47 = sub_1CF710374(0x79636167656CLL, 0xE600000000000000);
            v49 = v48;
            sub_1CF9E5BC8();
            sub_1CEFE4714(v47, v49);
          }

          else
          {
            v57 = v97;
            sub_1CEFE42D4(v97, v46);
            sub_1CF9E5BC8();
            sub_1CEFE48D8(v57, v46);
          }

          v35, v50, v51, v52, v53, v54, v55, v56;
          v59 = v107;
          v58 = v108;
          v60 = v98;
          v107 = v94;
          v108 = v98;
          v105 = 95;
          v106 = 0xE100000000000000;
          v103 = 47;
          v104 = 0xE100000000000000;
          v86 = sub_1CEFE4E68();
          v87 = v86;
          v84 = MEMORY[0x1E69E6158];
          v85 = v86;
          sub_1CF9E7668();
          v62 = v61;
          v60, v61, v63, v64, v65, v66, v67, v68;
          v69 = sub_1CF9E5AC8();
          v71 = v70;
          v62, v70, v72, v73, v74, v75, v76, v77;
          if (v71 >> 60 == 15)
          {
          }

          else
          {
            v79 = v42;
            MEMORY[0x1EEE9AC00](v78);
            v84 = v59;
            v85 = v58;
            v86 = v32;
            v80 = sub_1CF710164(sub_1CF712BC8, (&v88 - 6), v69, v71);
            v81 = v90;
            v82 = v89;
            if (v80 & 1) != 0 || (sub_1CF7115EC(v59, v58, v32))
            {
              v83 = [objc_allocWithZone(MEMORY[0x1E69673A0]) initWithProviderID:v81 domainIdentifier:v82 itemIdentifier:v79];

              sub_1CEFE4714(v59, v58);
              sub_1CEFE48D8(v69, v71);
              (*(v91 + 8))(v32, v92);
              return v83;
            }

            sub_1CEFE48D8(v69, v71);
          }

          sub_1CEFE4714(v59, v58);
          (*(v91 + 8))(v32, v92);
          return 0;
        }
      }

      __break(1u);
      return result;
    }

    v98, v23, v24, v25, v26, v27, v28, v29;

    sub_1CEFCCC44(v16, &qword_1EC4C2928, &qword_1CFA13430);
  }

  return 0;
}

uint64_t sub_1CF711E3C@<X0>(_BYTE *a6@<X8>)
{
  sub_1CF9E65C8();
  sub_1CF712BE8(v8);
  sub_1CF712C94();
  result = sub_1CF9E6598();
  *a6 = result & 1;
  return result;
}

uint64_t sub_1CF712090(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return a1(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return sub_1CF7121C8(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_1CF7121C8(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return a1(v10, v6);
}

uint64_t sub_1CF7121C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1CF9E5498();
  v7 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1CF9E54B8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1CF712270(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_1CF9E5498();
  v8 = result;
  if (result)
  {
    result = sub_1CF9E54C8();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1CF9E54B8();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  a3(&v16, v8, v14);
  if (!v3)
  {
    v15 = v16;
  }

  return v15 & 1;
}

uint64_t *sub_1CF712324@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1CF67B224(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1CF9E54F8();
      swift_allocObject();
      v8 = sub_1CF9E5488();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1CF9E5AD8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

_BYTE *sub_1CF7123EC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1CF67B224(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1CF71253C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1CF7125B8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1CF712480(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF7124EC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_1CF9E7958();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF71253C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1CF9E54F8();
  swift_allocObject();
  result = sub_1CF9E5488();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1CF9E5AD8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1CF7125B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1CF9E54F8();
  swift_allocObject();
  result = sub_1CF9E5488();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1CF71263C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1CF67B204(result);
    }

    else
    {
      sub_1CF9E54F8();
      swift_allocObject();
      sub_1CF9E54A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1CF9E5AD8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1CF7126DC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2930, &qword_1CFA13438);
  v10 = sub_1CEFCCCEC(&unk_1EDEA3758, &qword_1EC4C2930, &qword_1CFA13438, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1CF7123EC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1CF7127B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v5, v7, v8, v9, v10, v11, v12, v13;
    v14, v43, v44, v45, v46, v47, v48, v49;
    goto LABEL_8;
  }

  v16 = sub_1CF9E8048();
  v5, v17, v18, v19, v20, v21, v22, v23;
  v14, v24, v25, v26, v27, v28, v29, v30;
  if (v16)
  {
LABEL_8:
    v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = 12079;
    v42 = 0xE200000000000000;
    goto LABEL_9;
  }

  v61 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;
  MEMORY[0x1D3868CC0](v31);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41 = 47;
  v42 = 0xE100000000000000;
LABEL_9:
  MEMORY[0x1D3868CC0](v41, v42);
  v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  return v61;
}

void sub_1CF71290C(unint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, void *a3@<X8>)
{
  v98[0] = 47;
  v98[1] = 0xE100000000000000;
  v97[2] = v98;

  v9 = sub_1CF2A8918(4, 0, sub_1CF25107C, v97, a1, a2, v8, v6, v7);
  v17 = v9;
  v18 = *v9->tree;
  if (v18)
  {
    v98[0] = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v18, 0);
    v19 = v98[0];
    tester = v17[1].tester;
    do
    {
      v21 = *(tester - 3);
      v22 = *(tester - 2);
      v23 = *(tester - 1);
      v24 = *tester;

      v25 = MEMORY[0x1D3868C10](v21, v22, v23, v24);
      v27 = v26;
      v24, v26, v28, v29, v30, v31, v32, v33;
      v98[0] = v19;
      v42 = *v19->tree;
      v41 = *v19->tester;
      if (v42 >= v41 >> 1)
      {
        sub_1CEFE95CC((v41 > 1), v42 + 1, 1);
        v19 = v98[0];
      }

      *v19->tree = v42 + 1;
      v43 = v19 + 16 * v42;
      *(v43 + 4) = v25;
      *(v43 + 5) = v27;
      tester += 4;
      --v18;
    }

    while (v18);
    v17, v34, v35, v36, v37, v38, v39, v40;
  }

  else
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    v19 = MEMORY[0x1E69E7CC0];
  }

  if (*v19->tree != 5 || (v19[1].super.isa == 3829862 ? (v51 = *v19[1]._anon_8 == 0xE300000000000000) : (v51 = 0), !v51 && (sub_1CF9E8048() & 1) == 0))
  {
    v19, v44, v45, v46, v47, v48, v49, v50;
    v53 = 0;
    v52 = 0;
    v55 = 0;
    v73 = 0;
    v81 = 0;
LABEL_21:
    *a3 = v53;
    a3[1] = v52;
    a3[2] = v55;
    a3[3] = v73;
    a3[4] = v81;
    return;
  }

  v53 = *v19[1].tree;
  v52 = *v19[1].tester;
  v54 = *v19[2]._anon_8;

  v55 = sub_1CF9E6888();
  v54, v56, v57, v58, v59, v60, v61, v62;
  if (*v19->tree < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v63 = *v19[2].tester;

    v64 = sub_1CF9E69D8();
    v63, v65, v66, v67, v68, v69, v70, v71;
    if (v64)
    {
      v72 = *v19[2].tester;

      v73 = sub_1CF9E6888();
      v72, v74, v75, v76, v77, v78, v79, v80;
    }

    else
    {
      v73 = *MEMORY[0x1E6967178];
    }

    if (*v19->tree >= 5uLL)
    {
      v82 = *v19[3]._anon_8;

      v19, v83, v84, v85, v86, v87, v88, v89;
      v81 = sub_1CF9E6888();
      v82, v90, v91, v92, v93, v94, v95, v96;
      goto LABEL_21;
    }
  }

  __break(1u);
}