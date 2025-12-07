double sub_1CF890C8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, int a6, void *a7)
{
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
  *(v16 + 16) = sub_1CF902E50;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();

  *(v17 + 16) = [a4 identifier];
  *(v17 + 24) = a5;
  v18 = a5;
  v19 = sub_1CEFD4E9C([a4 identifier]);
  v20 = swift_allocObject();
  v20[2] = sub_1CF903440;
  v20[3] = v16;
  v20[4] = a7;
  v20[5] = v19;
  v20[6] = v17 | 0x2000000000000000;

  v21 = a7;

  sub_1CF7E69F0(v19, a6, v17 | 0x2000000000000000, sub_1CF8FE74C, v20);

  return result;
}

double sub_1CF890E84(int a1, id a2, void (*a3)(void, id), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {
    v10 = a2;
    a3(0, a2);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;

    sub_1CEFD0300(a6, 0, 0, a7, sub_1CF8FE8C8, v14);
  }

  return result;
}

void sub_1CF890F74(void *a1, char a2, void (*a3)(void *, void *))
{
  if (a2)
  {
    v4 = a1;
LABEL_8:
    a3(0, v4);
    return;
  }

  if (!a1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v6 = a1;
  a3(a1, 0);

  sub_1CF2F6594(a1);
}

double FPDDomainFPFSBackend.forceFSIngestion(for:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("forceFSIngestion(for:request:completionHandler:)", 48, 2, sub_1CF903280, v11, sub_1CF8F108C, v10);

  return result;
}

double sub_1CF891300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = sub_1CF90325C;
  v14[3] = v12;
  v14[4] = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1CF902E50;
  *(v15 + 24) = v14;

  v16 = sub_1CEFD4E9C([a4 identifier]);
  v17 = swift_allocObject();
  *(v17 + 16) = [a4 identifier];
  *(v17 + 24) = a5;
  v18 = swift_allocObject();
  v18[2] = sub_1CF903440;
  v18[3] = v15;
  v18[4] = a1;
  v18[5] = a6;
  v19 = a5;

  v20 = a6;
  sub_1CF7E32DC(v16, v17 | 0x2000000000000000, sub_1CF8FE5C8, v18);

  return result;
}

uint64_t sub_1CF8914D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v43 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  if (a3)
  {
    return a4(0, a3, v17);
  }

  v45 = v19;
  v46 = a5;
  sub_1CEFCCBDC(a1, v14, &qword_1EC4C1B40, &unk_1CF9FCB70);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = &qword_1EC4C1B40;
    v21 = &unk_1CF9FCB70;
    v22 = v14;
LABEL_11:
    sub_1CEFCCC44(v22, v20, v21);
    return a4(0, a3, v17);
  }

  v23 = v45;
  sub_1CEFE55D0(v14, v45, &unk_1EC4BE360, &qword_1CF9FE650);
  sub_1CEFCCBDC(a2, &v47, &qword_1EC4C0700, &qword_1CFA05B10);
  if (!v48)
  {
    sub_1CEFCCC44(v23, &unk_1EC4BE360, &qword_1CF9FE650);
    v20 = &qword_1EC4C0700;
    v21 = &qword_1CFA05B10;
    v22 = &v47;
    goto LABEL_11;
  }

  sub_1CF054EA0(&v47, v49);
  v24 = v50;
  v43 = v51;
  v44 = __swift_project_boxed_opaque_existential_1(v49, v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = [Strong indexer];

    if (v27)
    {
      v28 = [v27 needsAuthentication];

      if (v28)
      {
        v29 = 25;
      }

      else
      {
        v29 = 17;
      }
    }

    else
    {
      v29 = 17;
    }
  }

  else
  {
    v29 = 17;
  }

  v31 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v32 = sub_1CEFCCCA4(qword_1EDEA8860, type metadata accessor for VFSFileTree, &unk_1CFA00618);
  v33 = sub_1CEFCCCEC(&qword_1EDEA8550, &unk_1EC4BE360, &qword_1CF9FE650, &unk_1CFA0FF08);
  v34 = v45;
  v35 = sub_1CF76BB00(v45, v29, 0, v31, v44, v15, v24, v32, &off_1F4BF8588, v33, v43);
  v31, v36, v37, v38, v39, v40, v41, v42;
  (a4)(v35, 0);

  sub_1CEFCCC44(v34, &unk_1EC4BE360, &qword_1CF9FE650);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1CF891A4C@<X0>(_DWORD *a2@<X8>)
{
  result = fpfs_make_fsevent();
  *a2 = result;
  return result;
}

double FPDDomainFPFSBackend.pinItem(with:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v4;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("pinItem(with:request:completionHandler:)", 40, 2, sub_1CF903280, v11, sub_1CF8F3484, v10);

  return result;
}

uint64_t sub_1CF891C88(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1CF9E6118();
  v135 = *(v11 - 8);
  v136 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = [a2 identifier];
  *(v14 + 24) = a3;
  v15 = swift_allocObject();
  v16 = v13;
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = v15;
  v17[5] = v14 | 0x3000000000000000;
  v138 = *(a1 + 16);
  v18 = a3;

  v19 = sub_1CEFD4E9C([a2 identifier]);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a2;
  v20[6] = v14 | 0x3000000000000000;
  v20[7] = sub_1CF902CAC;
  v20[8] = v17;
  v21 = objc_allocWithZone(MEMORY[0x1E696AE38]);

  v22 = a2;

  v23 = [v21 init];
  v24 = swift_allocObject();
  v24[2] = sub_1CF8FE52C;
  v24[3] = v20;
  v137 = v14 | 0x3000000000000000;
  v139 = v24;
  v24[4] = v14 | 0x3000000000000000;
  swift_retain_n();
  swift_retain_n();
  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v140 = v14;
  swift_retain_n();

  v26 = sub_1CF9E6108();
  v27 = sub_1CF9E7298();
  if (os_log_type_enabled(v26, v27))
  {
    v131 = v27;
    v133 = v23;
    v134 = v17;
    v28 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v141 = v130;
    *v28 = 136315906;
    v29 = swift_beginAccess();
    v30 = *(v19 + 32);
    v31 = *(v19 + 40);
    v32 = *(v19 + 41);
    v132 = v16;
    if (v32)
    {
      v33 = NSFileProviderItemIdentifier.description.getter(v30);
      v35 = v34;
      sub_1CEFD0994(v30, v31, 1);
    }

    else
    {
      v142 = v30;
      LOBYTE(v143) = v31;
      v33 = VFSItemID.description.getter(v29);
      v35 = v36;
    }

    v37 = sub_1CEFD0DF0(v33, v35, &v141);
    v35, v38, v39, v40, v41, v42, v43, v44;
    *(v28 + 4) = v37;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1CEFD0DF0(0xD000000000000010, 0x80000001CFA2C3C0, &v141);
    *(v28 + 22) = 2080;
    v46 = *(v140 + 16);
    v45 = *(v140 + 24);
    v142 = 0x286D6574496E6970;
    v143 = 0xE800000000000000;
    v47 = v45;
    v48 = v46;
    v49 = NSFileProviderItemIdentifier.description.getter(v48);
    v51 = v50;
    MEMORY[0x1D3868CC0](v49);
    v51, v52, v53, v54, v55, v56, v57, v58;
    MEMORY[0x1D3868CC0](0x3A7962202CLL, 0xE500000000000000);
    v59 = [v47 description];
    v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v62 = v61;

    MEMORY[0x1D3868CC0](v60, v62);
    v62, v63, v64, v65, v66, v67, v68, v69;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);

    v70 = v143;
    v71 = sub_1CEFD0DF0(v142, v143, &v141);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v28 + 24) = v71;
    *(v28 + 32) = 2048;
    *(v28 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v26, v131, "Lookup itemID %s with behavior %s request %s iteration %ld", v28, 0x2Au);
    v79 = v130;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v79, -1, -1);
    MEMORY[0x1D386CDC0](v28, -1, -1);

    (*(v135 + 8))(v132, v136);
    v23 = v133;
    v17 = v134;
  }

  else
  {

    (*(v135 + 8))(v16, v136);
  }

  swift_beginAccess();
  v80 = *(v19 + 32);
  v81 = *(v19 + 40);
  if ((*(v19 + 41) & 1) == 0)
  {
    if (!v80 && v81 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v82 = v23;
  v83 = qword_1EDEA34B0;
  v84 = v80;
  if (v83 != -1)
  {
    swift_once();
  }

  v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v87 = v86;
  v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v95 = v85;
  v96 = v88;
  if (v95 != v89 || v87 != v88)
  {
    v104 = sub_1CF9E8048();
    v87, v105, v106, v107, v108, v109, v110, v111;
    v96, v112, v113, v114, v115, v116, v117, v118;
    sub_1CEFD0994(v80, v81, 1);
    v23 = v82;
    if (v104)
    {
      goto LABEL_15;
    }

LABEL_17:
    v119 = swift_allocObject();
    v120 = v137;
    *(v119 + 16) = v137;
    v136 = v119 | 0x7000000000000004;
    v121 = swift_allocObject();
    v123 = v138;
    v122 = v139;
    *(v121 + 16) = sub_1CF796A0C;
    *(v121 + 24) = v122;
    v124 = v23;
    *(v121 + 32) = v123;
    *(v121 + 40) = 2;
    *(v121 + 48) = v120;
    *(v121 + 56) = v19;
    *(v121 + 64) = 0;
    *(v121 + 72) = v23;
    *(v121 + 80) = 0;
    v125 = swift_allocObject();
    *(v125 + 16) = v19;
    *(v125 + 24) = v123;
    *(v125 + 32) = 0;
    *(v125 + 40) = sub_1CF796A90;
    *(v125 + 48) = v121;
    *(v125 + 56) = v136;
    v126 = swift_allocObject();
    v134 = v17;
    v127 = v126;
    *(v126 + 16) = sub_1CF796A90;
    *(v126 + 24) = v121;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v128 = v124;

    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v127, sub_1CF796A9C, v125);

    v23 = v124;

    goto LABEL_18;
  }

  v87, v88, v89, v90, v91, v92, v93, v94;
  v96, v97, v98, v99, v100, v101, v102, v103;
  sub_1CEFD0994(v80, v81, 1);
  v23 = v82;
LABEL_15:
  sub_1CF90CAC8(v137, sub_1CF796A0C, v139);

LABEL_18:
}

void sub_1CF8924D4(uint64_t a1, uint64_t a2, void (*a3)(void, id), void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v28 - v15);
  sub_1CEFCCBDC(a1, &v28 - v15, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;

    sub_1CF791DB8(v17, 0, a2, a3, a4);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a7;
    *(v18 + 24) = a8;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = sub_1CF90325C;
    v20[3] = v18;
    v20[4] = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1CF902E50;
    *(v21 + 24) = v20;

    v22 = v29;
    v23 = sub_1CEFD4E9C([v29 identifier]);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1CF903440;
    *(v24 + 24) = v21;
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = a2;
    *(v25 + 32) = v22;
    *(v25 + 40) = sub_1CF903440;
    *(v25 + 48) = v21;
    *(v25 + 56) = 1;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1CF90325C;
    *(v26 + 24) = v24;
    swift_retain_n();

    v27 = v22;

    sub_1CF7AAF88("updatePinning(of:to:request:completionHandler:)", 47, 2, 2, sub_1CF9034C4, v26, sub_1CF9033C4, v25);

    sub_1CEFCCC44(v16, &unk_1EC4BF300, &unk_1CFA006B0);
  }
}

double FPDDomainFPFSBackend.unpinItem(with:request:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v4;
  v10[5] = a3;
  v10[6] = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = a1;
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("unpinItem(with:request:completionHandler:)", 42, 2, sub_1CF903280, v11, sub_1CF8F349C, v10);

  return result;
}

double sub_1CF892AE8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = [a2 identifier];
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = v12;
  v13[5] = v11 | 0x3000000000000002;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1CF8FE208;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = sub_1CF90325C;
  v16[3] = v14;
  v16[4] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1CF902E50;
  *(v17 + 24) = v16;
  v18 = a3;

  v19 = sub_1CEFD4E9C([a2 identifier]);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1CF903440;
  *(v20 + 24) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = sub_1CF903440;
  *(v21 + 48) = v17;
  *(v21 + 56) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CF90325C;
  *(v22 + 24) = v20;
  swift_retain_n();

  v23 = a2;

  sub_1CF7AAF88("updatePinning(of:to:request:completionHandler:)", 47, 2, 2, sub_1CF7BA950, v22, sub_1CF8FE214, v21);

  return result;
}

id sub_1CF892F98(uint64_t a1, void *a2, void (*a3)(id), _BYTE *a4)
{
  v36 = a2;
  v7 = sub_1CF9E64A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for VFSFileTree(0);
  v11 = *(swift_dynamicCastClassUnconditional() + 216);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1CF9E64D8();
  v13 = (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  [*(swift_dynamicCastClassUnconditional() + 232) suspend];
  v14 = [*(swift_dynamicCastClassUnconditional() + 248) suspend];
  a3(v14);
  if (v4)
  {
    goto LABEL_6;
  }

  a4 = v38;
  v13 = objc_sync_enter(v38);
  if (v13)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v13);
    *(&v35 - 2) = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v35 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState] = 0;
  v21 = &a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  v22 = *&a4[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs];
  *v21 = 0;
  v23 = v21[8];
  v21[8] = -1;
  sub_1CF8F0650(v22, v23, v15, v16, v17, v18, v19, v20);
  v24 = objc_sync_exit(a4);
  if (v24)
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v35 - 2) = a4;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v35 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  swift_dynamicCastClassUnconditional();

  v25 = sub_1CEFCE64C();
  sub_1CF261A18(v25);

  v25, v26, v27, v28, v29, v30, v31, v32;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFCA444;
  aBlock[3] = &block_descriptor_4089;
  v33 = _Block_copy(aBlock);
  [v36 didRefreshRootURLsWithCompletionHandler_];
  _Block_release(v33);
LABEL_6:
  [*(swift_dynamicCastClassUnconditional() + 232) resume];
  return [*(swift_dynamicCastClassUnconditional() + 248) resume];
}

double FPDDomainFPFSBackend.detachKnownFolders(_:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = v9 | 0x3000000000000004;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = v10;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v13 = a2;
  v14 = v4;

  sub_1CEFD4024("detachKnownFolders(_:request:completionHandler:)", 48, 2, sub_1CF90324C, v11, sub_1CF8F34B4, v12);

  return result;
}

void sub_1CF8934F8(NSObject *a1, NSObject *a2, void *a3, char *a4, unint64_t a5, char *a6)
{
  v306 = a6;
  v11 = sub_1CF9E63A8();
  v280 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v279 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v278 = &v264 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = sub_1CF9E53C8();
  *&v282 = *(v285 - 8);
  MEMORY[0x1EEE9AC00](v285);
  v284 = &v264 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v298);
  v287 = (&v264 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v297 = (&v264 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v304 = &v264 - v21;
  v303 = type metadata accessor for VFSItem(0);
  v281 = *(v303 - 8);
  MEMORY[0x1EEE9AC00](v303);
  v294 = &v264 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_1CF9E6118();
  v308 = *(v305 - 8);
  MEMORY[0x1EEE9AC00](v305);
  v302 = &v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v301 = &v264 - v25;
  v320 = sub_1CF9E5A58();
  v309 = *(v320 - 1);
  MEMORY[0x1EEE9AC00](v320);
  v277 = &v264 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v300 = &v264 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v311 = &v264 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v319 = (&v264 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v264 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v310 = &v264 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v307 = &v264 - v39;
  v283 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v286 = &v264 - v42;
  v43 = swift_allocObject();
  v316 = a1;
  swift_weakInit();
  v44 = swift_allocObject();
  v314 = a2;
  v44[2] = a2;
  v44[3] = a3;
  v44[4] = v43;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v289 = a4;
    v288 = Strong;
    v315 = a5;
    if (a5 >> 62)
    {
      goto LABEL_61;
    }

    v46 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
LABEL_4:
      v313 = (a5 & 0xC000000000000001);
      v276 = v44;
      v275 = v13;
      v312 = v46;
      v299 = a3;
      if ((a5 & 0xC000000000000001) == 0)
      {
        if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v47 = *(a5 + 32);

          v48 = v47;
          goto LABEL_7;
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:

        sub_1CEFD0A98(v13);

        __break(1u);
LABEL_70:
        MEMORY[0x1EEE9AC00](v158);
        *(&v264 - 2) = a4;

        sub_1CEFD0A98(v13);

        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v264 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

LABEL_66:

      v48 = MEMORY[0x1D3869C30](0, a5);
LABEL_7:
      a5 = v48;
      v49 = sub_1CEFCE64C();
      if (!*v49->tree)
      {
        v49, v50, v51, v52, v53, v54, v55, v56;
        v57 = sub_1CF8403B4();
        swift_beginAccess();
        v58 = swift_weakLoadStrong();
        v59 = v299;
        if (v58)
        {
          v60 = v58;

          v61 = v57;
          sub_1CF77A9C8(v57, 0, v60, v314, v59);
        }

        else
        {
          v178 = v57;
          v179 = FPDomainUnavailableError();
          (v314)();
        }

        return;
      }

      v265 = v14;
      v266 = v11;
      v66 = v309;
      v67 = v309[80];
      v267 = ~v67;
      v274 = v67;
      v68 = *(v309 + 2);
      v69 = v49;
      v70 = v320;
      v296 = v309 + 16;
      v295 = v68;
      v68(v286, v49 + ((v67 + 32) & ~v67), v320);
      v69, v71, v72, v73, v74, v75, v76, v77;
      v11 = &selRef_initWithTarget_;
      v268 = a5;
      v78 = [a5 knownFolder];
      v79 = v310;
      sub_1CF9E59D8();

      a4 = v79;
      sub_1CF9E5988();
      v80 = *(v66 + 1);
      v317 = (v66 + 8);
      v318 = v80;
      v80(v79, v70);
      v14 = 0;
      v81 = v315;
      a3 = (v315 & 0xFFFFFFFFFFFFFF8);
      v13 = v317;
      while (1)
      {
        if (v313)
        {
          v82 = MEMORY[0x1D3869C30](v14);
        }

        else
        {
          if (v14 >= a3[2])
          {
            __break(1u);
            goto LABEL_66;
          }

          v82 = *(v81 + 8 * v14 + 32);
        }

        v44 = v82;
        a5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_61:
          v46 = sub_1CF9E7818();
          a5 = v315;
          if (!v46)
          {
            goto LABEL_62;
          }

          goto LABEL_4;
        }

        v83 = [v82 knownFolder];
        v84 = v310;
        sub_1CF9E59D8();

        sub_1CF9E5988();
        v85 = v84;
        a4 = v320;
        v86 = v318;
        v318(v85, v320);
        sub_1CEFCCCA4(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        if ((sub_1CF9E6868() & 1) == 0)
        {
          break;
        }

        v86(v35, v320);

        ++v14;
        v81 = v315;
        if (a5 == v312)
        {

          v273 = [objc_allocWithZone(MEMORY[0x1E696AE38]) init];
          v292 = dispatch_group_create();
          v87 = swift_allocObject();
          *(v87 + 16) = 0;
          v88 = swift_allocObject();
          a4 = MEMORY[0x1E69E7CC0];
          v88[2] = MEMORY[0x1E69E7CC0];
          v89 = swift_allocObject();
          *(v89 + 16) = a4;
          if (v312 < 1)
          {
            goto LABEL_68;
          }

          v91 = 0;
          v291 = (v308 + 8);
          v290 = (v281 + 6);
          v281 += 7;
          v269 = (v282 + 8);
          v271 = (v274 + 48) & v267;
          v270 = (v283 + v271 + 7) & 0xFFFFFFFFFFFFFFF8;
          v272 = (v309 + 32);
          *&v90 = 136446466;
          v282 = v90;
          v13 = v306;
          v92 = v89;
          v293 = v89;
          v93 = v311;
          v301 = v87;
          v299 = v88;
          while (2)
          {
            v308 = v91;
            if (v313)
            {
              v103 = MEMORY[0x1D3869C30](v91, v315);
            }

            else
            {
              v103 = *(v315 + 8 * v91 + 32);
            }

            v104 = v103;
            v105 = v292;
            dispatch_group_enter(v292);
            v106 = [v104 logicalLocation];
            v107 = v319;
            sub_1CF9E59D8();

            v108 = swift_allocObject();
            v108[2] = v104;
            v108[3] = v13;
            v108[4] = v105;
            v108[5] = v87;
            v109 = v316;
            v108[6] = v88;
            v108[7] = v109;
            v108[8] = v92;
            sub_1CEFD09A0(v13);
            v110 = v104;
            v111 = v105;

            sub_1CEFD09A0(v13);
            v309 = v110;
            v314 = v111;

            v112 = fpfs_current_or_default_log();
            v113 = v302;
            sub_1CF9E6128();
            v295(v93, v107, v320);
            sub_1CEFD09A0(v13);
            v114 = sub_1CF9E6108();
            v115 = sub_1CF9E7298();
            sub_1CEFD0A98(v13);
            if (os_log_type_enabled(v114, v115))
            {
              v116 = v113;
              v117 = swift_slowAlloc();
              v118 = swift_slowAlloc();
              aBlock = v118;
              *v117 = v282;
              v119 = sub_1CF9E5928();
              v120 = [v119 fp_shortDescription];

              v121 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v123 = v122;

              v318(v311, v320);
              v124 = sub_1CEFD0DF0(v121, v123, &aBlock);
              v123, v125, v126, v127, v128, v129, v130, v131;
              *(v117 + 4) = v124;
              *(v117 + 12) = 2082;
              v132 = sub_1CEFD11AC(v13);
              v134 = v133;
              v135 = sub_1CEFD0DF0(v132, v133, &aBlock);
              v134, v136, v137, v138, v139, v140, v141, v142;
              *(v117 + 14) = v135;
              _os_log_impl(&dword_1CEFC7000, v114, v115, "create fault at %{public}s for %{public}s", v117, 0x16u);
              swift_arrayDestroy();
              v143 = v118;
              v109 = v316;
              MEMORY[0x1D386CDC0](v143, -1, -1);
              MEMORY[0x1D386CDC0](v117, -1, -1);

              (*v291)(v116, v305);
            }

            else
            {

              v318(v93, v320);
              (*v291)(v113, v305);
            }

            v144 = v304;
            sub_1CF010CE0(v319, 0, 1, 0, v304);
            v145 = v303;
            v146 = (*v290)(v144, 1, v303);
            v102 = v301;
            v100 = v314;
            if (v146 == 1)
            {
              sub_1CEFCCC44(v144, &unk_1EC4BEC00, &unk_1CF9FCB60);
              v13 = v306;
              v147 = sub_1CF90C94C(v306);
              v88 = v299;
              v92 = v293;
              if (v147)
              {
                v148 = v147;
                if ([v147 shouldFailCoordinationIfDownloadRequired])
                {
                  LODWORD(aBlock) = 1;
                  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                  sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
                  v149 = v284;
                  v150 = v285;
                  sub_1CF9E57D8();
                  v151 = sub_1CF9E53A8();
                  v102 = v301;
                  (*v269)(v149, v150);
                  v152 = v297;
                  *v297 = v151;
                  swift_storeEnumTagMultiPayload();
                  v101 = v309;
                  v100 = v314;
                  sub_1CF8953A0(v152, v309, v13, v314, v102, v299, v109, v92);

                  v153 = v152;
                  v88 = v299;
                  sub_1CEFCCC44(v153, &unk_1EC4BF310, &unk_1CF9FDB30);
                  goto LABEL_36;
                }
              }

              sub_1CF9E5988();
              type metadata accessor for VFSFileTree(0);
              a4 = swift_dynamicCastClassUnconditional();

              v158 = objc_sync_enter(a4);
              if (v158)
              {
                goto LABEL_70;
              }

              v159 = *(a4 + 20);

              v160 = objc_sync_exit(a4);
              if (v160)
              {
                MEMORY[0x1EEE9AC00](v160);
                *(&v264 - 2) = a4;

                sub_1CEFD0A98(v13);

                fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v264 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
              }

              v161 = *(v159 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

              v162 = v300;
              v163 = sub_1CF517830(v161);
              v161, v164, v165, v166, v167, v168, v169, v170;
              if (v163)
              {
                v94 = v310;
                v95 = v320;
                v295(v310, v319, v320);
                v96 = v270;
                v97 = swift_allocObject();
                *(v97 + 2) = sub_1CF8FDFC4;
                *(v97 + 3) = v108;
                v98 = v316;
                *(v97 + 4) = v13;
                *(v97 + 5) = v98;
                (*v272)(&v97[v271], v94, v95);
                v99 = v273;
                *&v97[v96] = v273;
                sub_1CEFD09A0(v13);

                sub_1CF76E058(v162, v99, v13, sub_1CF7965E8, v97);

                v318(v162, v95);

                v100 = v314;
                v101 = v309;
                v102 = v301;
              }

              else
              {
                v171 = sub_1CF9E5928();
                a4 = FPItemNotFoundErrorAtURL();

                v172 = v316;
                if (!a4)
                {
                  goto LABEL_69;
                }

                v173 = v287;
                *v287 = a4;
                swift_storeEnumTagMultiPayload();
                v101 = v309;
                v100 = v314;
                v102 = v301;
                v174 = v299;
                sub_1CF8953A0(v173, v309, v13, v314, v301, v299, v172, v92);
                v175 = v173;
                v88 = v174;
                sub_1CEFCCC44(v175, &unk_1EC4BF310, &unk_1CF9FDB30);
                v318(v300, v320);
              }
            }

            else
            {
              v154 = v294;
              sub_1CEFDA0C4(v144, v294, type metadata accessor for VFSItem);
              v155 = v297;
              sub_1CEFDA34C(v154, v297, type metadata accessor for VFSItem);
              (*v281)(v155, 0, 1, v145);
              swift_storeEnumTagMultiPayload();
              v101 = v309;
              v13 = v306;
              v88 = v299;
              v156 = v293;
              sub_1CF8953A0(v155, v309, v306, v100, v102, v299, v109, v293);
              sub_1CEFCCC44(v155, &unk_1EC4BF310, &unk_1CF9FDB30);
              v157 = v154;
              v92 = v156;
              sub_1CEFD5338(v157, type metadata accessor for VFSItem);
LABEL_36:
            }

            v91 = v308 + 1;

            sub_1CEFD0A98(v13);

            v87 = v102;

            v318(v319, v320);
            v93 = v311;
            if (v312 == v91)
            {
              v200 = v289;
              v312 = *&v289[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
              v201 = v320;
              v202 = v295;
              v295(v310, v286, v320);
              v203 = v92;
              v204 = v277;
              v205 = v201;
              v202(v277, v307, v201);
              v206 = (v274 + 96) & v267;
              v207 = v88;
              v208 = (v283 + v274 + v206) & v267;
              v209 = swift_allocObject();
              *(v209 + 2) = v87;
              *(v209 + 3) = sub_1CF902EC0;
              *(v209 + 4) = v276;
              *(v209 + 5) = v13;
              v210 = v315;
              v211 = v316;
              *(v209 + 6) = v200;
              *(v209 + 7) = v210;
              *(v209 + 8) = v288;
              *(v209 + 9) = v211;
              *(v209 + 10) = v203;
              *(v209 + 11) = v207;
              v212 = *v272;
              v213 = &v209[v206];
              v214 = v209;
              v319 = v209;
              v212(v213, v310, v205);
              v212(&v214[v208], v204, v205);
              sub_1CEFD09A0(v13);

              v215 = v289;

              v316 = v288;
              v216 = fpfs_current_log();
              v315 = fpfs_adopt_log();
              v217 = swift_allocObject();
              v218 = v312;
              aBlock = sub_1CF9E73C8();
              v323 = v219;
              MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
              v220 = sub_1CF9E7988();
              v222 = v221;
              MEMORY[0x1D3868CC0](v220);
              v222, v223, v224, v225, v226, v227, v228, v229;
              v230 = v323;
              sub_1CF9E6978();
              v230, v231, v232, v233, v234, v235, v236, v237;
              v238 = __fp_log_fork();

              *(v217 + 16) = v238;
              v239 = swift_allocObject();
              *(v239 + 16) = v216;
              *(v239 + 24) = v217;
              v240 = v218;
              *(v239 + 32) = v218;
              *(v239 + 40) = "detachKnownFolders(_:request:completionHandler:)";
              *(v239 + 48) = 48;
              *(v239 + 56) = 2;
              v241 = v319;
              *(v239 + 64) = sub_1CF8FDFDC;
              *(v239 + 72) = v241;
              v326 = sub_1CF2B9F54;
              v327 = v239;
              aBlock = MEMORY[0x1E69E9820];
              v323 = 1107296256;
              v324 = sub_1CEFCA444;
              v325 = &block_descriptor_4125;
              v242 = _Block_copy(&aBlock);
              v313 = v216;

              v243 = v240;

              v244 = v278;
              sub_1CF9E63F8();
              v321 = MEMORY[0x1E69E7CC0];
              sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
              sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
              v245 = v275;
              v246 = v266;
              sub_1CF9E77B8();
              v247 = v314;
              sub_1CF9E7308();
              _Block_release(v242);
              (*(v280 + 8))(v245, v246);
              (*(v279 + 8))(v244, v265);

              v248 = v315;
              v249 = fpfs_adopt_log();

              v250 = v320;
              v251 = v318;
              v318(v307, v320);
              v251(v286, v250);

              goto LABEL_45;
            }

            continue;
          }
        }
      }

      v180 = fpfs_current_or_default_log();
      v181 = v301;
      sub_1CF9E6128();
      v182 = v306;
      sub_1CEFD09A0(v306);
      v183 = sub_1CF9E6108();
      v184 = sub_1CF9E72A8();
      sub_1CEFD0A98(v182);
      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        aBlock = v319;
        *v185 = 136446210;
        v186 = sub_1CEFD11AC(v182);
        v188 = v187;
        v189 = sub_1CEFD0DF0(v186, v187, &aBlock);
        v190 = v308;
        v191 = v189;
        v188, v192, v193, v194, v195, v196, v197, v198;
        *(v185 + 4) = v191;
        _os_log_impl(&dword_1CEFC7000, v183, v184, "inconsistent detach request with different home folders for request %{public}s", v185, 0xCu);
        v199 = v319;
        __swift_destroy_boxed_opaque_existential_1(v319);
        MEMORY[0x1D386CDC0](v199, -1, -1);
        MEMORY[0x1D386CDC0](v185, -1, -1);

        (*(v190 + 8))(v181, v305);
      }

      else
      {

        (*(v308 + 8))(v181, v305);
      }

      v252 = v268;
      v253 = FPNotSupportedError();
      if (v253)
      {
        v254 = v253;
        swift_beginAccess();
        v255 = swift_weakLoadStrong();
        if (v255)
        {
          v256 = v255;
          v257 = v299;

          v258 = v254;
          sub_1CF77A9C8(v258, 0, v256, v314, v257);
        }

        else
        {
          v259 = v254;
          v260 = FPDomainUnavailableError();
          (v314)();
        }
      }

      else
      {
        (v314)();
      }

      v261 = v320;
      v262 = v318;
      v318(v35, v320);
      v262(v307, v261);
      v262(v286, v261);
    }

    else
    {
LABEL_62:

      (v314)(0);

      v263 = v288;
    }
  }

  else
  {

    v62 = sub_1CF8403B4();
    swift_beginAccess();
    v63 = swift_weakLoadStrong();
    if (v63)
    {
      v64 = v63;

      v65 = v62;
      sub_1CF77A9C8(v62, 0, v64, v314, a3);
    }

    else
    {
      v176 = v62;
      v177 = FPDomainUnavailableError();
      (v314)();
    }

LABEL_45:
  }
}

void sub_1CF8953A0(uint64_t a1, void *a2, unint64_t a3, NSObject *a4, uint64_t a5, void *a6, NSObject *a7, uint64_t a8)
{
  v406 = a7;
  v407 = a8;
  v409 = a6;
  v413 = a5;
  v416 = a4;
  v417 = a3;
  v10 = type metadata accessor for VFSItem(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v408 = &v402 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5A58();
  v411 = *(v13 - 8);
  v412 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v410 = &v402 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E6118();
  v16 = *(v15 - 8);
  v414 = v15;
  v415 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v404 = &v402 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v403 = &v402 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v405 = (&v402 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v402 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v402 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v402 - v29);
  sub_1CEFCCBDC(a1, &v402 - v29, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    v32 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v33 = a2;
    v34 = v417;
    sub_1CEFD09A0(v417);
    v35 = sub_1CF9E6108();
    v36 = sub_1CF9E72A8();

    sub_1CEFD0A98(v34);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v409 = swift_slowAlloc();
      v422 = v409;
      *v37 = 136315394;
      v38 = [v33 logicalLocation];
      v39 = v410;
      sub_1CF9E59D8();

      v40 = sub_1CF9E5928();
      v41 = [v40 fp_shortDescription];

      v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v44 = v43;

      (*(v411 + 8))(v39, v412);
      v45 = sub_1CEFD0DF0(v42, v44, &v422);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v37 + 4) = v45;
      *(v37 + 12) = 2082;
      v53 = sub_1CEFD11AC(v34);
      v55 = v54;
      v56 = sub_1CEFD0DF0(v53, v54, &v422);
      v55, v57, v58, v59, v60, v61, v62, v63;
      *(v37 + 14) = v56;
      _os_log_impl(&dword_1CEFC7000, v35, v36, "could not resolve %s for request %{public}s", v37, 0x16u);
      v64 = v409;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v64, -1, -1);
      MEMORY[0x1D386CDC0](v37, -1, -1);
    }

    (*(v415 + 8))(v27, v414);
    v65 = v31;
    v66 = v416;
    sub_1CF518C30(v416, (v413 + 16), v31);
    dispatch_group_leave(v66);

    return;
  }

  v67 = v417;
  if ((*(v11 + 48))(v30, 1, v10) != 1)
  {
    v102 = v408;
    sub_1CEFDA0C4(v30, v408, type metadata accessor for VFSItem);
    v103 = (v102 + *(v10 + 28));
    if (*v103 == 2 && v103[*(type metadata accessor for ItemMetadata(0) + 64)] == 1)
    {
      v104 = fpfs_current_or_default_log();
      v105 = v405;
      sub_1CF9E6128();
      v106 = a2;
      sub_1CEFD09A0(v67);
      v107 = sub_1CF9E6108();
      v108 = sub_1CF9E72C8();

      sub_1CEFD0A98(v67);
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v422 = v110;
        *v109 = 136315394;
        v111 = [v106 logicalLocation];
        v112 = v410;
        sub_1CF9E59D8();

        v113 = sub_1CF9E5928();
        v114 = [v113 fp_shortDescription];

        v115 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v117 = v116;

        (*(v411 + 8))(v112, v412);
        v118 = sub_1CEFD0DF0(v115, v117, &v422);
        v117, v119, v120, v121, v122, v123, v124, v125;
        *(v109 + 4) = v118;
        *(v109 + 12) = 2082;
        v126 = sub_1CEFD11AC(v417);
        v128 = v127;
        v129 = sub_1CEFD0DF0(v126, v127, &v422);
        v128, v130, v131, v132, v133, v134, v135, v136;
        *(v109 + 14) = v129;
        _os_log_impl(&dword_1CEFC7000, v107, v108, "folder %s is a binary compatibility symlink %{public}s", v109, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v110, -1, -1);
        MEMORY[0x1D386CDC0](v109, -1, -1);

        (*(v415 + 8))(v405, v414);
      }

      else
      {

        (*(v415 + 8))(v105, v414);
      }

      v148 = v106;
      v149 = v416;
      sub_1CF518C48(v416, v409 + 2, v148);
      dispatch_group_leave(v149);
      goto LABEL_52;
    }

    v137 = a2;
    v138 = [a2 location];
    if (!v138)
    {
LABEL_51:
      v348 = *v102;
      v349 = *(v102 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v350 = swift_allocObject();
      *(v350 + 32) = v348;
      *(v350 + 40) = v349;
      *(v350 + 41) = 0;
      *(v350 + 16) = v348;
      *(v350 + 24) = v349;
      *(v350 + 25) = 0;
      v351 = swift_allocObject();
      v351[2] = v137;
      v351[3] = v67;
      v352 = v416;
      v353 = v413;
      v351[4] = v416;
      v351[5] = v353;
      v351[6] = v407;
      v354 = v137;
      sub_1CEFD09A0(v67);
      v355 = v352;

      sub_1CF80EE3C(v350, v67, sub_1CF8FE1A4, v351);

LABEL_52:
      sub_1CEFD5338(v102, type metadata accessor for VFSItem);
      return;
    }

    v139 = v138;
    v140 = [v138 asExistingLocation];
    if (!v140)
    {
LABEL_30:
      v204 = [v139 asPathMatchingLocation];
      if (!v204)
      {
LABEL_50:

        goto LABEL_51;
      }

      v205 = v204;
      v206 = *(v102 + 16);
      v207 = *(v102 + 24);
      if (v207 != 2 || v206)
      {
        if (v207 != 2 || v206 != 1)
        {
          v422 = 0x2F73662F70665F5FLL;
          v423 = 0xE800000000000000;
          v420 = v206;
          LOBYTE(v421) = v207;
          v256 = VFSItemID.description.getter(v204);
          v258 = v257;
          MEMORY[0x1D3868CC0](v256);
          v258, v259, v260, v261, v262, v263, v264, v265;
          v266 = v423;
          v209 = sub_1CF9E6888();
          v266, v267, v268, v269, v270, v271, v272, v273;
          goto LABEL_41;
        }

        v208 = MEMORY[0x1E6967280];
      }

      else
      {
        v208 = MEMORY[0x1E6967258];
      }

      v209 = *v208;
LABEL_41:
      v274 = [v205 parentItemIdentifier];
      v275 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v277 = v276;
      v279 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v280 = v275;
      v281 = v278;
      if (v280 == v279 && v277 == v278)
      {

        v277, v282, v283, v284, v285, v286, v287, v288;
        v281, v289, v290, v291, v292, v293, v294, v295;
      }

      else
      {
        v296 = sub_1CF9E8048();

        v277, v297, v298, v299, v300, v301, v302, v303;
        v281, v304, v305, v306, v307, v308, v309, v310;
        if ((v296 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      v311 = *(v102 + 40);
      v422 = *(v102 + 32);
      v423 = v311;
      v420 = 47;
      v421 = 0xE100000000000000;
      v418 = 58;
      v419 = 0xE100000000000000;
      sub_1CEFE4E68();
      v312 = sub_1CF9E7668();
      v314 = v313;
      v315 = [v205 filename];
      v316 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v318 = v317;

      if (v312 == v316 && v314 == v318)
      {

        v314, v319, v320, v321, v322, v323, v324, v325;
        v318, v326, v327, v328, v329, v330, v331, v332;
        goto LABEL_51;
      }

      v333 = sub_1CF9E8048();
      v314, v334, v335, v336, v337, v338, v339, v340;
      v318, v341, v342, v343, v344, v345, v346, v347;
      if (v333)
      {

        goto LABEL_50;
      }

LABEL_54:
      v356 = fpfs_current_or_default_log();
      v357 = v404;
      sub_1CF9E6128();
      v358 = v137;
      sub_1CEFD09A0(v67);
      v359 = v205;
      v360 = sub_1CF9E6108();
      v361 = sub_1CF9E72A8();

      sub_1CEFD0A98(v67);
      if (os_log_type_enabled(v360, v361))
      {
        v362 = swift_slowAlloc();
        v409 = v139;
        v363 = v362;
        v405 = swift_slowAlloc();
        v407 = swift_slowAlloc();
        v422 = v407;
        *v363 = 136315650;
        v364 = [v358 logicalLocation];
        v406 = v360;
        v365 = v364;
        v366 = v410;
        sub_1CF9E59D8();

        v367 = sub_1CF9E5928();
        v368 = [v367 fp_shortDescription];
        LODWORD(v403) = v361;
        v369 = v358;
        v370 = v368;

        v371 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v373 = v372;

        v358 = v369;
        (*(v411 + 8))(v366, v412);
        v374 = sub_1CEFD0DF0(v371, v373, &v422);
        v373, v375, v376, v377, v378, v379, v380, v381;
        *(v363 + 4) = v374;
        *(v363 + 12) = 2114;
        *(v363 + 14) = v359;
        v382 = v405;
        *v405 = v205;
        *(v363 + 22) = 2082;
        v383 = v359;
        v384 = sub_1CEFD11AC(v67);
        v386 = v385;
        v387 = sub_1CEFD0DF0(v384, v385, &v422);
        v386, v388, v389, v390, v391, v392, v393, v394;
        *(v363 + 24) = v387;
        v395 = v406;
        _os_log_impl(&dword_1CEFC7000, v406, v403, "item at %s doesn't match location identifier %{public}@ for request %{public}s", v363, 0x20u);
        sub_1CEFCCC44(v382, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v382, -1, -1);
        v396 = v407;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v396, -1, -1);
        v397 = v363;
        v139 = v409;
        MEMORY[0x1D386CDC0](v397, -1, -1);

        (*(v415 + 8))(v404, v414);
      }

      else
      {

        (*(v415 + 8))(v357, v414);
      }

      v398 = v358;
      v399 = v416;
      sub_1CF5171A0(v416, v413 + 16, v398);
      dispatch_group_leave(v399);

      goto LABEL_52;
    }

    v141 = v140;
    v142 = [v140 itemIdentifier];

    v144 = *v102;
    v145 = *(v102 + 8);
    if (v145 != 2 || v144)
    {
      if (v145 != 2 || v144 != 1)
      {
        v422 = 0x2F73662F70665F5FLL;
        v423 = 0xE800000000000000;
        v420 = v144;
        LOBYTE(v421) = v145;
        v150 = VFSItemID.description.getter(v143);
        v152 = v151;
        MEMORY[0x1D3868CC0](v150);
        v152, v153, v154, v155, v156, v157, v158, v159;
        v160 = v423;
        v147 = sub_1CF9E6888();
        v160, v161, v162, v163, v164, v165, v166, v167;
        goto LABEL_25;
      }

      v146 = MEMORY[0x1E6967280];
    }

    else
    {
      v146 = MEMORY[0x1E6967258];
    }

    v147 = *v146;
LABEL_25:
    v168 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v170 = v169;
    v172 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v173 = v168;
    v174 = v171;
    if (v173 == v172 && v170 == v171)
    {

      v170, v175, v176, v177, v178, v179, v180, v181;
      v174, v182, v183, v184, v185, v186, v187, v188;
    }

    else
    {
      v189 = sub_1CF9E8048();

      v170, v190, v191, v192, v193, v194, v195, v196;
      v174, v197, v198, v199, v200, v201, v202, v203;
      if ((v189 & 1) == 0)
      {
        v409 = v139;
        v210 = fpfs_current_or_default_log();
        v211 = v403;
        sub_1CF9E6128();
        v212 = v137;
        sub_1CEFD09A0(v67);
        v213 = v142;
        v214 = sub_1CF9E6108();
        v215 = sub_1CF9E72A8();

        sub_1CEFD0A98(v67);
        if (os_log_type_enabled(v214, v215))
        {
          v216 = swift_slowAlloc();
          v407 = swift_slowAlloc();
          v422 = v407;
          *v216 = 136315650;
          v217 = [v212 logicalLocation];
          v218 = v410;
          sub_1CF9E59D8();

          v219 = sub_1CF9E5928();
          v220 = [v219 fp_shortDescription];

          v221 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v223 = v222;

          (*(v411 + 8))(v218, v412);
          v224 = sub_1CEFD0DF0(v221, v223, &v422);
          v223, v225, v226, v227, v228, v229, v230, v231;
          *(v216 + 4) = v224;
          *(v216 + 12) = 2082;
          v232 = v213;
          v233 = NSFileProviderItemIdentifier.description.getter(v232);
          v235 = v234;

          v236 = sub_1CEFD0DF0(v233, v235, &v422);
          v235, v237, v238, v239, v240, v241, v242, v243;
          *(v216 + 14) = v236;
          *(v216 + 22) = 2082;
          v244 = sub_1CEFD11AC(v417);
          v246 = v245;
          v247 = sub_1CEFD0DF0(v244, v245, &v422);
          v246, v248, v249, v250, v251, v252, v253, v254;
          *(v216 + 24) = v247;
          _os_log_impl(&dword_1CEFC7000, v214, v215, "item at %s doesn't match location identifier %{public}s for request %{public}s", v216, 0x20u);
          v255 = v407;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v255, -1, -1);
          MEMORY[0x1D386CDC0](v216, -1, -1);

          (*(v415 + 8))(v403, v414);
        }

        else
        {

          (*(v415 + 8))(v211, v414);
        }

        v400 = v212;
        v401 = v416;
        sub_1CF5171A0(v416, v413 + 16, v400);
        dispatch_group_leave(v401);

        goto LABEL_52;
      }
    }

    goto LABEL_30;
  }

  v68 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v69 = a2;
  sub_1CEFD09A0(v67);
  v70 = sub_1CF9E6108();
  v71 = sub_1CF9E72C8();

  sub_1CEFD0A98(v67);
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v413 = swift_slowAlloc();
    v422 = v413;
    *v72 = 136315394;
    v73 = [v69 knownFolder];
    v74 = v410;
    sub_1CF9E59D8();

    v75 = sub_1CF9E5928();
    v76 = [v75 fp_shortDescription];

    v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v79 = v78;

    (*(v411 + 8))(v74, v412);
    v80 = sub_1CEFD0DF0(v77, v79, &v422);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v72 + 4) = v80;
    *(v72 + 12) = 2082;
    v88 = sub_1CEFD11AC(v67);
    v90 = v89;
    v91 = sub_1CEFD0DF0(v88, v89, &v422);
    v90, v92, v93, v94, v95, v96, v97, v98;
    *(v72 + 14) = v91;
    _os_log_impl(&dword_1CEFC7000, v70, v71, "folder %s will be imported for %{public}s", v72, 0x16u);
    v99 = v413;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v99, -1, -1);
    MEMORY[0x1D386CDC0](v72, -1, -1);
  }

  (*(v415 + 8))(v24, v414);
  v100 = v69;
  v101 = v416;
  sub_1CF518C48(v416, v409 + 2, v100);
  dispatch_group_leave(v101);
}

void sub_1CF8966CC(void **a1, void *a2)
{
  v4 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CF9E5268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E50F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v10;
  v11 = [a2 logicalLocation];
  *(inited + 72) = sub_1CF9E5A58();
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  sub_1CF9E59D8();

  sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1CF9E57D8();
  v12 = sub_1CF9E50D8();
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  v13 = *a1;
  *a1 = v12;
}

void sub_1CF89692C(uint64_t a1, void *a2, unint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v59 = a3;
  v10 = sub_1CF9E5A58();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1CF9E6118();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54[-v17];
  sub_1CEFCCBDC(a1, &v54[-v17], &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = a4;
    v19 = *v18;
    v20 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v21 = a2;
    v22 = v59;
    sub_1CEFD09A0(v59);
    v23 = sub_1CF9E6108();
    v24 = sub_1CF9E72A8();

    sub_1CEFD0A98(v22);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v63[0] = v26;
      *v25 = 136315394;
      v27 = [v21 logicalLocation];
      v55 = v24;
      v28 = v27;
      sub_1CF9E59D8();

      v29 = sub_1CF9E5928();
      v30 = [v29 fp_shortDescription];

      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;

      (*(v57 + 8))(v12, v58);
      v34 = sub_1CEFD0DF0(v31, v33, v63);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v25 + 4) = v34;
      *(v25 + 12) = 2082;
      v42 = sub_1CEFD11AC(v22);
      v44 = v43;
      v45 = sub_1CEFD0DF0(v42, v43, v63);
      v44, v46, v47, v48, v49, v50, v51, v52;
      *(v25 + 14) = v45;
      _os_log_impl(&dword_1CEFC7000, v23, v55, "could not detach %s for request %{public}s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v26, -1, -1);
      MEMORY[0x1D386CDC0](v25, -1, -1);
    }

    (*(v60 + 8))(v15, v61);
    a4 = v56;
    v53 = v19;
    sub_1CF518C30(a4, (v62 + 16), v19);
  }

  else
  {
    sub_1CF518C48(a4, (a6 + 16), a2);
    sub_1CEFCCC44(v18, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  dispatch_group_leave(a4);
}

void sub_1CF896D34(uint64_t a1, void (*a2)(void *), void (*a3)(void *), unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12)
{
  v80 = a8;
  v81 = a4;
  v78 = a7;
  v82 = a6;
  v83 = a5;
  v84 = a2;
  v14 = sub_1CF9E5A58();
  v79 = *(v14 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = sub_1CF9E6118();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = v23;
    v84(v23);
  }

  else
  {
    v71 = v20;
    v72 = v19;
    v73 = v15;
    v76 = a3;
    v77 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v74 = v18;
    v75 = v14;
    v25 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v26 = v81;
    sub_1CEFD09A0(v81);
    v27 = sub_1CF9E6108();
    v28 = sub_1CF9E72C8();
    sub_1CEFD0A98(v26);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      v31 = sub_1CEFD11AC(v26);
      v33 = v32;
      v34 = sub_1CEFD0DF0(v31, v32, aBlock);
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(v29 + 4) = v34;
      v42 = v82;
      _os_log_impl(&dword_1CEFC7000, v27, v28, "all the roots have been resolved for request %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D386CDC0](v30, -1, -1);
      MEMORY[0x1D386CDC0](v29, -1, -1);

      (*(v71 + 8))(v22, v72);
      v43 = v77;
      v44 = v74;
    }

    else
    {

      (*(v71 + 8))(v22, v72);
      v43 = v77;
      v44 = v74;
      v42 = v82;
    }

    v45 = objc_sync_enter(v83);
    v46 = v79;
    v47 = v80;
    v48 = v75;
    v49 = v73;
    if (v45)
    {
      MEMORY[0x1EEE9AC00](v45);
      *(&v70 - 2) = v83;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v70 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v50 = v83;
    sub_1CF89739C(v83, v42);
    v51 = objc_sync_exit(v50);
    if (v51)
    {
      MEMORY[0x1EEE9AC00](v51);
      *(&v70 - 2) = v83;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v70 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
    }

    v74 = a10;
    v72 = a9;
    v52 = v46;
    v53 = *(v46 + 16);
    v54 = v44;
    v53(v44, a11, v48);
    v53(v43, a12, v48);
    v55 = *(v52 + 80);
    v56 = (v55 + 64) & ~v55;
    v57 = (v49 + v55 + v56) & ~v55;
    v58 = (v49 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v81;
    *(v59 + 2) = v47;
    *(v59 + 3) = v60;
    v61 = v83;
    *(v59 + 4) = v72;
    *(v59 + 5) = v61;
    v62 = v74;
    *(v59 + 6) = v78;
    *(v59 + 7) = v62;
    v63 = v54;
    v64 = *(v52 + 32);
    v64(&v59[v56], v63, v48);
    v64(&v59[v57], v77, v48);
    *&v59[v58] = v82;
    v65 = &v59[(v58 + 15) & 0xFFFFFFFFFFFFFFF8];
    v66 = v76;
    *v65 = v84;
    v65[1] = v66;
    aBlock[4] = sub_1CF8FE080;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEFCA444;
    aBlock[3] = &block_descriptor_4137;
    v67 = _Block_copy(aBlock);
    sub_1CEFD09A0(v60);

    v68 = v83;
    v69 = v78;

    [v69 didRefreshRootURLsWithCompletionHandler_];
    _Block_release(v67);
  }
}

void sub_1CF89739C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1CEFCE64C();
  if (!v2)
  {
    *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState) = 1;
    v37 = 0;
    v38 = a2;
    if (a2 >> 62)
    {
      v33 = v12;
      v13 = sub_1CF9E7818();
      v12 = v33;
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v36 = v12;
      v40 = MEMORY[0x1E69E7CC0];
      sub_1CF000F0C(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        return;
      }

      v39 = v5;
      v35 = a1;
      v14 = v40;
      if ((v38 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v13; ++i)
        {
          MEMORY[0x1D3869C30](i, v38);
          v16 = [swift_unknownObjectRetain() knownFolder];
          sub_1CF9E59D8();
          swift_unknownObjectRelease_n();

          v40 = v14;
          v18 = *v14->tree;
          v17 = *v14->tester;
          if (v18 >= v17 >> 1)
          {
            sub_1CF000F0C((v17 > 1), v18 + 1, 1);
            v14 = v40;
          }

          *v14->tree = v18 + 1;
          (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v11, v39);
        }
      }

      else
      {
        v19 = (v38 + 32);
        do
        {
          v20 = *v19;
          v21 = [v20 knownFolder];
          sub_1CF9E59D8();

          v40 = v14;
          v23 = *v14->tree;
          v22 = *v14->tester;
          if (v23 >= v22 >> 1)
          {
            sub_1CF000F0C((v22 > 1), v23 + 1, 1);
            v14 = v40;
          }

          *v14->tree = v23 + 1;
          (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v8, v39);
          ++v19;
          --v13;
        }

        while (v13);
      }

      a1 = v35;
      v12 = v36;
    }

    v40 = v12;
    sub_1CF000FB8(v14);
    v24 = a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
    v25 = *(a1 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
    *v24 = v40;
    v26 = *(v24 + 8);
    *(v24 + 8) = 0;
    sub_1CF8F0650(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

void sub_1CF8976E0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a7;
  v41 = a8;
  v47 = a4;
  v48 = a6;
  v42 = a3;
  v43 = a5;
  v35 = a2;
  v45 = a10;
  v46 = a11;
  v44 = a9;
  v13 = sub_1CF9E5A58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v36 = &v35 - v17;
  v38 = a1;
  type metadata accessor for VFSFileTree(0);
  v39 = *(swift_dynamicCastClassUnconditional() + 216);
  v19 = *(v14 + 16);
  v19(v18, v40, v13);
  v19(&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v13);
  v20 = *(v14 + 80);
  v21 = (v20 + 64) & ~v20;
  v22 = (v15 + v20 + v21) & ~v20;
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = a2;
  v25 = v43;
  v27 = v47;
  v26 = v48;
  *(v24 + 3) = v42;
  *(v24 + 4) = v27;
  *(v24 + 5) = v25;
  *(v24 + 6) = v26;
  *(v24 + 7) = a1;
  v28 = *(v14 + 32);
  v28(&v24[v21], v36, v13);
  v28(&v24[v22], v37, v13);
  v29 = v45;
  *&v24[v23] = v44;
  v30 = &v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8];
  v31 = v46;
  *v30 = v29;
  v30[1] = v31;
  v32 = v39;
  sub_1CEFD09A0(v35);

  v33 = v47;
  v34 = v25;

  sub_1CF01001C(0, "detachKnownFolders(_:request:completionHandler:)", 48, 2, sub_1CF8FE098, v24);
}

void sub_1CF897988(unint64_t a1, uint64_t a2, NSObject *a3, void *a4, uint64_t *a5, char *a6, char *a7, char *a8, uint64_t a9, void (*a10)(void *), uint64_t a11)
{
  v199 = a8;
  v198 = a7;
  v203 = a5;
  v213 = a4;
  v212 = a3;
  v14 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v195 = &v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_1CF9E5268();
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v194 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E6118();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v193 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v193 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v193 = &v193 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v202 = &v193 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v193 - v29;
  v211 = (a2 + 16);
  v31 = [objc_allocWithZone(FPLoggerScope) init];
  v32 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v33 = v31;
  sub_1CEFD09A0(a1);
  v34 = sub_1CF9E6108();
  v35 = sub_1CF9E72C8();

  sub_1CEFD0A98(a1);
  v36 = os_log_type_enabled(v34, v35);
  v210 = v18;
  v208 = v20;
  v206 = v33;
  v200 = a6;
  v201 = v23;
  v214 = a1;
  if (v36)
  {
    v37 = v33;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v38 = 138412546;
    v41 = [v37 enter];
    *(v38 + 4) = v41;
    *v39 = v41;
    *(v38 + 12) = 2082;
    v42 = sub_1CEFD11AC(a1);
    v44 = v43;
    v45 = sub_1CEFD0DF0(v42, v43, aBlock);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v38 + 14) = v45;
    v18 = v210;
    _os_log_impl(&dword_1CEFC7000, v34, v35, "%@ detaching roots for %{public}s", v38, 0x16u);
    sub_1CEFCCC44(v39, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);
  }

  v209 = *(v18 + 8);
  v209(v30, v17);
  v204 = a11;
  v205 = a10;
  v53 = v211;
  swift_beginAccess();
  v54 = *v53;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v55 = v212;
  if (v54 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {

    v64 = MEMORY[0x1E69E7CC0];
    v207 = v17;
    if (i)
    {
      v65 = 0;
      v17 = v54 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1D3869C30](v65, v54);
        }

        else
        {
          if (v65 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v66 = *(&v54[1].super.isa + v65);
        }

        v67 = v66;
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        v216 = v66;
        if (sub_1CF898A88(&v216, v55, v213, v214))
        {
          sub_1CF9E7A18();
          sub_1CF9E7A58();
          sub_1CF9E7A68();
          sub_1CF9E7A28();
          v55 = v212;
        }

        else
        {
        }

        ++v65;
        if (v68 == i)
        {
          v69 = aBlock[0];
          v17 = v207;
          v64 = MEMORY[0x1E69E7CC0];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v69 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v70 = (v203 + 2);
    v54, v57, v58, v59, v60, v61, v62, v63;
    v71 = v211;
    swift_beginAccess();
    v72 = *v71;
    *v71 = v69;
    v72, v73, v74, v75, v76, v77, v78, v79;
    swift_beginAccess();
    v203 = v70;
    v54 = *v70;
    aBlock[0] = v64;
    v80 = v54 >> 62 ? sub_1CF9E7818() : *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v80)
    {
      break;
    }

    v88 = 0;
    v17 = v54 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v89 = MEMORY[0x1D3869C30](v88, v54);
      }

      else
      {
        if (v88 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v89 = *(&v54[1].super.isa + v88);
      }

      v90 = v89;
      v91 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      v215 = v89;
      if (sub_1CF89A024(&v215, v55, v214))
      {
        sub_1CF9E7A18();
        sub_1CF9E7A58();
        sub_1CF9E7A68();
        sub_1CF9E7A28();
        v55 = v212;
      }

      else
      {
      }

      ++v88;
      if (v91 == v80)
      {
        v92 = aBlock[0];
        v17 = v207;
        goto LABEL_33;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v92 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v54, v81, v82, v83, v84, v85, v86, v87;
  v93 = v203;
  swift_beginAccess();
  v94 = *v93;
  *v93 = v92;
  v94, v95, v96, v97, v98, v99, v100, v101;
  v102 = sub_1CF4E2D78(MEMORY[0x1E69E7CC0]);
  v102, v103, v104, v105, v106, v107, v108, v109;
  v110 = v211;
  v111 = swift_beginAccess();
  v112 = v208;
  if (*v110 >> 62)
  {
    v111 = sub_1CF9E7818();
    v113 = v214;
    if (!v111)
    {
      goto LABEL_58;
    }

LABEL_35:
    v114 = [objc_allocWithZone(FPLoggerScope) init];
    v115 = fpfs_current_or_default_log();
    v116 = v202;
    sub_1CF9E6128();
    sub_1CEFD09A0(v113);
    v117 = v114;
    v118 = sub_1CF9E6108();
    v119 = sub_1CF9E72C8();

    sub_1CEFD0A98(v113);
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      aBlock[0] = v122;
      *v120 = 138412546;
      v123 = [v117 enter];
      *(v120 + 4) = v123;
      *v121 = v123;
      *(v120 + 12) = 2082;
      v124 = sub_1CEFD11AC(v214);
      v126 = v125;
      v127 = v117;
      v128 = sub_1CEFD0DF0(v124, v125, aBlock);
      v126, v129, v130, v131, v132, v133, v134, v135;
      *(v120 + 14) = v128;
      v117 = v127;
      _os_log_impl(&dword_1CEFC7000, v118, v119, "%@ merging local folders into synced folders for %{public}s", v120, 0x16u);
      sub_1CEFCCC44(v121, &qword_1EC4BE350, &unk_1CF9FC3B0);
      v136 = v121;
      v112 = v208;
      MEMORY[0x1D386CDC0](v136, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v122);
      v137 = v122;
      v113 = v214;
      MEMORY[0x1D386CDC0](v137, -1, -1);
      MEMORY[0x1D386CDC0](v120, -1, -1);

      v138 = v202;
    }

    else
    {

      v138 = v116;
    }

    v209(v138, v17);
    v139 = v201;
    v140 = v211;
    swift_beginAccess();
    v141 = *v140;
    if (*v140 >> 62)
    {
      v142 = sub_1CF9E7818();
      if (v142)
      {
LABEL_40:
        if ((v141 & 0xC000000000000001) != 0)
        {

          v143 = MEMORY[0x1D3869C30](0, v141);
          v141, v186, v187, v188, v189, v190, v191, v192;
        }

        else
        {
          if (!*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_67;
          }

          v143 = v141[1].super.isa;
        }

        sub_1CF9E5108();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
        v144 = v194;
        v145 = v197;
        sub_1CF9E57D8();
        v146 = sub_1CF9E50D8();
        (*(v196 + 8))(v144, v145);
        swift_willThrow();

        v147 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v148 = v117;
        v149 = sub_1CF9E6108();
        v150 = sub_1CF9E72C8();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          *v151 = 138412290;
          v153 = [v148 leave];
          *(v151 + 4) = v153;
          *v152 = v153;
          _os_log_impl(&dword_1CEFC7000, v149, v150, "%@", v151, 0xCu);
          sub_1CEFCCC44(v152, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v152, -1, -1);
          MEMORY[0x1D386CDC0](v151, -1, -1);
        }

        v209(v139, v17);
        v141 = v212;
        v142 = objc_sync_enter(v212);
        if (!v142)
        {
          *(&v141->super.isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState) = 0;
          v173 = v141 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs;
          v174 = *(&v141->super.isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend___cachedURLs);
          *v173 = 0;
          v175 = v173[8];
          v173[8] = -1;
          sub_1CF8F0650(v174, v175, v167, v168, v169, v170, v171, v172);
          v176 = objc_sync_exit(v141);
          if (v176)
          {
            MEMORY[0x1EEE9AC00](v176);
            *(&v193 - 2) = v141;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v193 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          aBlock[4] = nullsub_1;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1CEFCA444;
          aBlock[3] = &block_descriptor_4145;
          v177 = _Block_copy(aBlock);
          [v213 didRefreshRootURLsWithCompletionHandler_];
          _Block_release(v177);
          v178 = v146;
          v205(v146);

          goto LABEL_62;
        }

LABEL_67:
        MEMORY[0x1EEE9AC00](v142);
        *(&v193 - 2) = v141;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v193 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }
    }

    else
    {
      v142 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v142)
      {
        goto LABEL_40;
      }
    }

    v154 = fpfs_current_or_default_log();
    v155 = v193;
    sub_1CF9E6128();
    v156 = v117;
    v157 = sub_1CF9E6108();
    v158 = sub_1CF9E72C8();

    if (os_log_type_enabled(v157, v158))
    {
      v159 = v113;
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v160 = 138412290;
      v162 = [v156 leave];
      *(v160 + 4) = v162;
      *v161 = v162;
      _os_log_impl(&dword_1CEFC7000, v157, v158, "%@", v160, 0xCu);
      sub_1CEFCCC44(v161, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v161, -1, -1);
      v163 = v160;
      v113 = v159;
      v155 = v193;
      MEMORY[0x1D386CDC0](v163, -1, -1);
    }

    v209(v155, v17);
    v55 = v212;
    goto LABEL_58;
  }

  v113 = v214;
  if (*((*v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_58:
  MEMORY[0x1EEE9AC00](v111);
  *(&v193 - 8) = v203;
  *(&v193 - 7) = v113;
  v164 = v200;
  *(&v193 - 6) = v200;
  *(&v193 - 5) = v55;
  v165 = v198;
  *(&v193 - 4) = v211;
  *(&v193 - 3) = v165;
  *(&v193 - 2) = v199;
  *(&v193 - 1) = v166;
  sub_1CF892F98(v164, v213, sub_1CF8FE17C, &v193 - 80);
  v205(0);
LABEL_62:
  v179 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v180 = v206;
  v181 = sub_1CF9E6108();
  v182 = sub_1CF9E72C8();

  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    *v183 = 138412290;
    v185 = [v180 leave];
    *(v183 + 4) = v185;
    *v184 = v185;
    _os_log_impl(&dword_1CEFC7000, v181, v182, "%@", v183, 0xCu);
    sub_1CEFCCC44(v184, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v184, -1, -1);
    MEMORY[0x1D386CDC0](v183, -1, -1);
  }

  v209(v112, v17);
}

uint64_t sub_1CF898A88(id *a1, NSObject *a2, void *a3, unint64_t a4)
{
  v357 = a4;
  v358 = a2;
  v349 = a3;
  v370 = *MEMORY[0x1E69E9840];
  v6 = sub_1CF9E53C8();
  v347 = *(v6 - 8);
  v348 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v346 = &v339[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v350 = &v339[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1CF9E5268();
  v352 = *(v10 - 8);
  v353 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v351 = &v339[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1CF9E6118();
  v355 = *(v12 - 8);
  v356 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v354 = &v339[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v345 = &v339[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v339[-v17];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v339[-v20];
  v22 = sub_1CF9E5A58();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v360 = &v339[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v362 = &v339[-v26];
  *&v28 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v30 = &v339[-v29];
  v361 = *a1;
  v31 = [v361 knownFolder];
  sub_1CF9E59D8();

  v32 = sub_1CF7A4B00(v30, 2);
  v364 = v22;
  if (v4)
  {

    v33 = *(v23 + 8);
    v34 = ((v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v33(v30, v22);
    v359 = 0;
    v35 = v22;
    v36 = v362;
LABEL_20:
    memset(&v369, 0, sizeof(v369));
    memset(&v367, 0, sizeof(v367));
    v214 = v361;
    v215 = [v361 knownFolder];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v216 = v36;
    v218 = v217;
    v363 = v34;
    v33(v216, v35);
    v219 = sub_1CF9E6978();
    v218, v220, v221, v222, v223, v224, v225, v226;
    LODWORD(v218) = lstat((v219 + 32), &v367);

    v227 = &selRef_initWithTarget_;
    v228 = v359;
    if (!v218)
    {
      st_mode = v367.st_mode;
      v230 = sub_1CF9E61D8() & st_mode;
      v231 = sub_1CF9E61D8();
      v227 = &selRef_initWithTarget_;
      if (v230 == v231)
      {
        v368 = v369;
        v366 = v369;
        v232 = [v214 knownFolder];
        v233 = v362;
        sub_1CF9E59D8();

        sub_1CF9E5A18();
        v235 = v234;
        v33(v233, v364);
        v236 = sub_1CF9E6978();
        v235, v237, v238, v239, v240, v241, v242, v243;
        LODWORD(v235) = stat((v236 + 32), &v368);

        if (!v235)
        {
          v244 = [v214 logicalLocation];
          v245 = v362;
          sub_1CF9E59D8();

          sub_1CF9E5A18();
          v247 = v246;
          v33(v245, v364);
          v248 = sub_1CF9E6978();
          v247, v249, v250, v251, v252, v253, v254, v255;
          LODWORD(v247) = stat((v248 + 32), &v366);

          if (!v247)
          {
            if (v368.st_ino != v366.st_ino)
            {
              LODWORD(v365) = 20;
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
              v332 = v346;
              v333 = v348;
              sub_1CF9E57D8();
              sub_1CF9E53A8();
              (*(v347 + 8))(v332, v333);
              goto LABEL_33;
            }

            v312 = v33;
            v313 = fpfs_current_or_default_log();
            v314 = v345;
            sub_1CF9E6128();
            v315 = sub_1CF9E6108();
            v316 = sub_1CF9E7298();
            if (os_log_type_enabled(v315, v316))
            {
              v317 = swift_slowAlloc();
              *v317 = 0;
              _os_log_impl(&dword_1CEFC7000, v315, v316, "known folder is a symlink to the logical location, deleting the symlink", v317, 2u);
              MEMORY[0x1D386CDC0](v317, -1, -1);
            }

            (*(v355 + 8))(v314, v356);
            v318 = [objc_opt_self() defaultManager];
            v319 = [v214 knownFolder];
            v320 = v362;
            sub_1CF9E59D8();

            sub_1CF9E5A18();
            v322 = v321;
            v312(v320, v364);
            v323 = sub_1CF9E6888();
            v322, v324, v325, v326, v327, v328, v329, v330;
            v365 = 0;
            LODWORD(v322) = [v318 removeItemAtPath:v323 error:&v365];

            if (!v322)
            {
              v338 = v365;
              sub_1CF9E57F8();

              goto LABEL_33;
            }

            v331 = v365;
            v33 = v312;
          }
        }

        v227 = &selRef_initWithTarget_;
      }
    }

    v256 = v227;
    v257 = [v214 v227[171]];
    v258 = v360;
    sub_1CF9E59D8();

    v259 = sub_1CF7A4B00(v258, 2);
    if (v228)
    {
      v33(v258, v364);
      return v60 & 1;
    }

    v260 = v259;
    v33(v258, v364);
    if (v260)
    {

      v60 = 1;
      return v60 & 1;
    }

    v261 = fpfs_current_or_default_log();
    v262 = v214;
    v263 = v354;
    sub_1CF9E6128();
    v264 = v262;
    v265 = v357;
    sub_1CEFD09A0(v357);
    v266 = sub_1CF9E6108();
    v267 = sub_1CF9E72A8();

    sub_1CEFD0A98(v265);
    v268 = os_log_type_enabled(v266, v267);
    v361 = v264;
    if (v268)
    {
      v269 = swift_slowAlloc();
      v344 = v33;
      v270 = v269;
      v360 = swift_slowAlloc();
      *&v368.st_dev = v360;
      *v270 = 136315394;
      LODWORD(v359) = v267;
      v271 = v256;
      v272 = [v264 v256 + 1493];
      v358 = v266;
      v273 = v272;
      v274 = v362;
      sub_1CF9E59D8();

      v275 = sub_1CF9E5928();
      v276 = v274;
      v256 = v271;
      v277 = [v275 fp_shortDescription];

      v278 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v279 = v265;
      v281 = v280;

      v282 = v276;
      v283 = v364;
      v344(v282, v364);
      v284 = sub_1CEFD0DF0(v278, v281, &v368.st_dev);
      v281, v285, v286, v287, v288, v289, v290, v291;
      *(v270 + 4) = v284;
      *(v270 + 12) = 2082;
      v292 = sub_1CEFD11AC(v279);
      v294 = v293;
      v295 = sub_1CEFD0DF0(v292, v293, &v368.st_dev);
      v294, v296, v297, v298, v299, v300, v301, v302;
      *(v270 + 14) = v295;
      v303 = v358;
      _os_log_impl(&dword_1CEFC7000, v358, v359, "folder %s, is not properly detached %{public}s", v270, 0x16u);
      v304 = v360;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v304, -1, -1);
      MEMORY[0x1D386CDC0](v270, -1, -1);

      (*(v355 + 8))(v354, v356);
      v306 = v352;
      v305 = v353;
      v307 = v351;
    }

    else
    {

      (*(v355 + 8))(v263, v356);
      v306 = v352;
      v305 = v353;
      v307 = v351;
      v283 = v364;
    }

    sub_1CF9E50F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CF9FA450;
    *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(inited + 40) = v309;
    v310 = [v361 v256 + 1493];
    *(inited + 72) = v283;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1CF9E59D8();

    sub_1CF4E04E8(inited);
    swift_setDeallocating();
    sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v306 + 8))(v307, v305);
LABEL_33:
    swift_willThrow();
    return v60 & 1;
  }

  v37 = v32;
  v342 = v21;
  v343 = v18;
  v38 = v358;
  v39 = *(v23 + 8);
  v363 = ((v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v344 = v39;
  v39(v30, v22);
  if (!v37)
  {
    v359 = 0;
    v35 = v364;
    v36 = v362;
    v33 = v344;
LABEL_19:
    v34 = v363;
    goto LABEL_20;
  }

  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;
  v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v45 = v44;
  if (v40 == v43 && v42 == v44)
  {

    v42, v46, v47, v48, v49, v50, v51, v52;
    v45, v53, v54, v55, v56, v57, v58, v59;
    v60 = 0;
    return v60 & 1;
  }

  v61 = sub_1CF9E8048();
  v42, v62, v63, v64, v65, v66, v67, v68;
  v45, v69, v70, v71, v72, v73, v74, v75;
  if (v61)
  {

    v60 = 0;
    return v60 & 1;
  }

  v76 = [v349 provider];
  if (!v76 || (v77 = v76, v78 = [v76 manager], v77, !v78) || (v79 = objc_msgSend(v78, sel_domainWithID_reason_, v37, 0), v78, !v79))
  {
    v139 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v140 = v361;
    v141 = v37;
    v142 = v357;
    sub_1CEFD09A0(v357);
    v143 = v140;
    v144 = sub_1CF9E6108();
    v145 = sub_1CF9E72B8();
    v349 = v141;

    sub_1CEFD0A98(v142);
    v146 = os_log_type_enabled(v144, v145);
    v359 = 0;
    v342 = v143;
    if (v146)
    {
      v147 = swift_slowAlloc();
      v341 = swift_slowAlloc();
      *&v369.st_dev = v341;
      *v147 = 136446722;
      v148 = [v143 knownFolder];
      v340 = v145;
      v149 = v362;
      sub_1CF9E59D8();

      v150 = sub_1CF9E5928();
      v151 = [v150 fp_shortDescription];

      v152 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v154 = v153;

      v344(v149, v364);
      v155 = sub_1CEFD0DF0(v152, v154, &v369.st_dev);
      v154, v156, v157, v158, v159, v160, v161, v162;
      *(v147 + 4) = v155;
      *(v147 + 12) = 2082;
      v163 = [v349 fp_obfuscatedProviderDomainID];
      v164 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v166 = v165;

      v167 = sub_1CEFD0DF0(v164, v166, &v369.st_dev);
      v166, v168, v169, v170, v171, v172, v173, v174;
      *(v147 + 14) = v167;
      *(v147 + 22) = 2082;
      v175 = sub_1CEFD11AC(v357);
      v177 = v176;
      v178 = sub_1CEFD0DF0(v175, v176, &v369.st_dev);
      v177, v179, v180, v181, v182, v183, v184, v185;
      *(v147 + 24) = v178;
      _os_log_impl(&dword_1CEFC7000, v144, v340, "taking ownership of %{public}s that is owned by domain %{public}s that doesn't exist for %{public}s", v147, 0x20u);
      v186 = v341;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v186, -1, -1);
      MEMORY[0x1D386CDC0](v147, -1, -1);

      (*(v355 + 8))(v343, v356);
    }

    else
    {

      (*(v355 + 8))(v343, v356);
      v149 = v362;
    }

    v358 = *(&v38->isa + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_pathsManager);
    v369.st_dev = 17;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v187 = v346;
    v188 = v348;
    sub_1CF9E57D8();
    v189 = sub_1CF9E53A8();
    (*(v347 + 8))(v187, v188);
    sub_1CF79AF1C(0xD000000000000024, 0x80000001CFA5DE60, 0xD00000000000001FLL, 0x80000001CFA5DE90, v189);

    v190 = v342;
    v191 = [v342 knownFolder];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v193 = v192;
    v35 = v364;
    v194 = v344;
    v344(v149, v364);
    v195 = sub_1CF9E6978();
    v193, v196, v197, v198, v199, v200, v201, v202;
    removexattr((v195 + 32), "com.apple.file-provider-domain-id", 0);

    v203 = [v190 knownFolder];
    sub_1CF9E59D8();

    sub_1CF9E5A18();
    v205 = v204;
    v194(v149, v35);
    v206 = sub_1CF9E6978();
    v205, v207, v208, v209, v210, v211, v212, v213;
    removexattr((v206 + 32), "com.apple.file-provider-domain-id#PN", 0);

    v36 = v149;
    v33 = v194;
    goto LABEL_19;
  }

  v80 = fpfs_current_or_default_log();
  v81 = v342;
  sub_1CF9E6128();
  v82 = v361;
  v83 = v37;
  v84 = v357;
  sub_1CEFD09A0(v357);
  v85 = sub_1CF9E6108();
  v86 = sub_1CF9E72A8();
  v363 = v83;

  v87 = v82;
  sub_1CEFD0A98(v84);
  if (os_log_type_enabled(v85, v86))
  {
    v88 = swift_slowAlloc();
    v361 = v79;
    v89 = v88;
    v360 = swift_slowAlloc();
    *&v369.st_dev = v360;
    *v89 = 136446722;
    v90 = [v82 knownFolder];
    v359 = v85;
    v91 = v90;
    LODWORD(v358) = v86;
    v92 = v362;
    sub_1CF9E59D8();

    v93 = sub_1CF9E5928();
    v94 = [v93 fp_shortDescription];

    v95 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v97 = v96;

    v98 = v92;
    v99 = v364;
    v344(v98, v364);
    v100 = sub_1CEFD0DF0(v95, v97, &v369.st_dev);
    v97, v101, v102, v103, v104, v105, v106, v107;
    *(v89 + 4) = v100;
    *(v89 + 12) = 2082;
    v108 = [v363 fp_obfuscatedProviderDomainID];
    v109 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v111 = v110;

    v112 = sub_1CEFD0DF0(v109, v111, &v369.st_dev);
    v113 = v111;
    v87 = v82;
    v113, v114, v115, v116, v117, v118, v119, v120;
    *(v89 + 14) = v112;
    *(v89 + 22) = 2082;
    v121 = v99;
    v122 = sub_1CEFD11AC(v357);
    v124 = v123;
    v125 = sub_1CEFD0DF0(v122, v123, &v369.st_dev);
    v124, v126, v127, v128, v129, v130, v131, v132;
    *(v89 + 24) = v125;
    v133 = v359;
    _os_log_impl(&dword_1CEFC7000, v359, v358, "cannot take ownership of %{public}s, it's owned by %{public}s for %{public}s", v89, 0x20u);
    v134 = v360;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v134, -1, -1);
    v135 = v89;
    v79 = v361;
    MEMORY[0x1D386CDC0](v135, -1, -1);

    v136 = v81;
    v137 = &selRef_initWithTarget_;
    (*(v355 + 8))(v136, v356);
    v138 = v351;
  }

  else
  {

    (*(v355 + 8))(v81, v356);
    v138 = v351;
    v121 = v364;
    v137 = &selRef_initWithTarget_;
  }

  sub_1CF9E5128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  v334 = swift_initStackObject();
  *(v334 + 16) = xmmword_1CF9FA450;
  *(v334 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(v334 + 40) = v335;
  v336 = [v87 v137[122]];
  *(v334 + 72) = v121;
  __swift_allocate_boxed_opaque_existential_0((v334 + 48));
  sub_1CF9E59D8();

  sub_1CF4E04E8(v334);
  swift_setDeallocating();
  sub_1CEFCCC44(v334 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v337 = v353;
  sub_1CF9E57D8();
  sub_1CF9E50D8();
  (*(v352 + 8))(v138, v337);
  swift_willThrow();

  return v60 & 1;
}

uint64_t sub_1CF89A024(id *a1, char *a2, unint64_t a3)
{
  v131 = a3;
  v137 = a2;
  v5 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v134 = &v122[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CF9E5268();
  v135 = *(v7 - 8);
  v136 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v133 = &v122[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1CF9E6118();
  v132 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v122[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v122[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v122[-v18];
  v20 = *a1;
  v21 = [*a1 knownFolder];
  sub_1CF9E59D8();

  v22 = sub_1CF7A4B00(v19, 2);
  if (v3)
  {

    (*(v13 + 8))(v19, v12);
LABEL_3:
    v23 = 1;
    return v23 & 1;
  }

  v25 = v22;
  v128 = v15;
  v129 = v11;
  v130 = v9;
  v26 = *(v13 + 8);
  v26(v19, v12);
  if (!v25)
  {
    goto LABEL_3;
  }

  v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v28;
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;
  if (v27 == v30 && v29 == v31)
  {

    v29, v49, v50, v51, v52, v53, v54, v55;
    v32, v56, v57, v58, v59, v60, v61, v62;
    v23 = 0;
  }

  else
  {
    v34 = sub_1CF9E8048();
    v29, v35, v36, v37, v38, v39, v40, v41;
    v32, v42, v43, v44, v45, v46, v47, v48;
    if (v34)
    {

      v23 = 0;
    }

    else
    {
      v127 = v26;
      v63 = fpfs_current_or_default_log();
      v64 = v129;
      sub_1CF9E6128();
      v65 = v20;
      v66 = v25;
      v67 = v131;
      sub_1CEFD09A0(v131);
      v68 = sub_1CF9E6108();
      v69 = sub_1CF9E72A8();

      sub_1CEFD0A98(v67);
      v70 = os_log_type_enabled(v68, v69);
      v137 = v66;
      if (v70)
      {
        v71 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v138 = v125;
        *v71 = 136315650;
        v72 = [v65 knownFolder];
        v124 = v68;
        v73 = v72;
        v74 = v128;
        sub_1CF9E59D8();

        v123 = v69;
        v75 = sub_1CF9E5928();
        v76 = [v75 fp_shortDescription];

        v77 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v126 = v65;
        v79 = v78;

        v80 = v74;
        v81 = &selRef_initWithTarget_;
        v127(v80, v12);
        v82 = sub_1CEFD0DF0(v77, v79, &v138);
        v79, v83, v84, v85, v86, v87, v88, v89;
        *(v71 + 4) = v82;
        *(v71 + 12) = 2080;
        v90 = [v137 fp_obfuscatedProviderDomainID];
        v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v93 = v92;

        v94 = sub_1CEFD0DF0(v91, v93, &v138);
        v95 = v93;
        v65 = v126;
        v95, v96, v97, v98, v99, v100, v101, v102;
        *(v71 + 14) = v94;
        *(v71 + 22) = 2082;
        v103 = sub_1CEFD11AC(v67);
        v105 = v104;
        v106 = sub_1CEFD0DF0(v103, v104, &v138);
        v105, v107, v108, v109, v110, v111, v112, v113;
        *(v71 + 24) = v106;
        v114 = v124;
        _os_log_impl(&dword_1CEFC7000, v124, v123, "cannot take ownership of %s, it's owned by %s for %{public}s", v71, 0x20u);
        v115 = v125;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v115, -1, -1);
        MEMORY[0x1D386CDC0](v71, -1, -1);

        (*(v132 + 8))(v64, v130);
        v117 = v135;
        v116 = v136;
        v118 = v133;
      }

      else
      {

        (*(v132 + 8))(v64, v130);
        v117 = v135;
        v116 = v136;
        v118 = v133;
        v81 = &selRef_initWithTarget_;
      }

      sub_1CF9E5128();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v120;
      v121 = [v65 v81[122]];
      *(inited + 72) = v12;
      __swift_allocate_boxed_opaque_existential_0((inited + 48));
      sub_1CF9E59D8();

      sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      (*(v117 + 8))(v118, v116);
      swift_willThrow();
    }
  }

  return v23 & 1;
}

void sub_1CF89A760(unint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v301 = a8;
  v310 = a6;
  v290 = a5;
  v314 = a4;
  v308 = a3;
  v328 = *MEMORY[0x1E69E9840];
  v295 = sub_1CF9E5248();
  v10 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295);
  v296 = &v285 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1CF9E5268();
  v287 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v286 = &v285 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5A58();
  v292 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v297 = &v285 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v307 = &v285 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v317 = (&v285 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v285 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v285 - v23;
  v309 = sub_1CF9E6118();
  v289 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v285 = &v285 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v285 - v27;
  swift_beginAccess();
  if (*a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CF9E7818())
  {
    v319 = v24;
    v312 = a2;
    v321 = v13;
    if (i)
    {
      swift_beginAccess();
      a1 = *a1;
      if (a1 >> 62)
      {
        v30 = sub_1CF9E7818();
        if (v30)
        {
LABEL_6:
          v298 = v30;
          v304 = objc_opt_self();
          v300 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
          v306 = a1 & 0xC000000000000001;
          v291 = a1 & 0xFFFFFFFFFFFFFF8;
          v303 = (v289 + 8);
          v31 = (v292 + 8);
          anon_8 = v10->_anon_8;
          v299 = (v292 + 16);

          v32 = a1;
          v33 = 0;
          *&v34 = 136446466;
          v293 = v34;
          v305 = a1;
          v311 = v28;
          v302 = v21;
          v318 = v31;
          while (1)
          {
            if (v306)
            {
              v35 = MEMORY[0x1D3869C30](v33, v32);
            }

            else
            {
              if (v33 >= *(v291 + 16))
              {
                goto LABEL_50;
              }

              v35 = *(&v32[1].super.isa + v33);
            }

            v10 = v35;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_49;
            }

            v313 = v33 + 1;
            v315 = v33;
            v36 = fpfs_current_or_default_log();
            sub_1CF9E6128();
            v37 = v10;
            sub_1CEFD09A0(a2);
            v38 = sub_1CF9E6108();
            v39 = sub_1CF9E72C8();

            sub_1CEFD0A98(a2);
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v316 = swift_slowAlloc();
              *&v322[0] = v316;
              *v40 = v293;
              v41 = [(FSTester *)v37 knownFolder];
              sub_1CF9E59D8();

              v42 = sub_1CF9E5928();
              v43 = [v42 fp_shortDescription];

              v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v46 = v45;

              v47 = v37;
              v48 = v318;
              (*v318)(v319, v321);
              v49 = sub_1CEFD0DF0(v44, v46, v322);
              v50 = v46;
              v24 = v319;
              v50, v51, v52, v53, v54, v55, v56, v57;
              *(v40 + 4) = v49;
              *(v40 + 12) = 2082;
              v58 = sub_1CEFD11AC(v312);
              v60 = v59;
              v61 = sub_1CEFD0DF0(v58, v59, v322);
              v60, v62, v63, v64, v65, v66, v67, v68;
              *(v40 + 14) = v61;
              _os_log_impl(&dword_1CEFC7000, v38, v39, "importing %{public}s as detached for %{public}s", v40, 0x16u);
              v69 = v316;
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v69, -1, -1);
              v70 = v40;
              v13 = v321;
              MEMORY[0x1D386CDC0](v70, -1, -1);

              (*v303)(v311, v309);
            }

            else
            {

              (*v303)(v28, v309);
              v47 = v37;
              v48 = v318;
            }

            v71 = [v304 defaultManager];
            v72 = [(FSTester *)v47 knownFolder];
            sub_1CF9E59D8();

            v73 = sub_1CF9E5928();
            v316 = *v48;
            v316(v24, v13);
            *&v322[0] = 0;
            v74 = [v71 createDirectoryAtURL:v73 withIntermediateDirectories:0 attributes:0 error:v322];

            v75 = v47;
            if (v74)
            {
              v76 = *&v322[0];
            }

            else
            {
              v77 = *&v322[0];
              v78 = sub_1CF9E57F8();

              swift_willThrow();
              v79 = v78;
              v80 = v296;
              sub_1CF9E5128();
              sub_1CEFCCCA4(&qword_1EDEAB460, MEMORY[0x1E6967E70], MEMORY[0x1E6967E68]);
              v81 = v295;
              LOBYTE(v77) = sub_1CF9E5658();
              v320 = v78;

              (*anon_8)(v80, v81);
              if ((v77 & 1) == 0)
              {

                v305, v260, v261, v262, v263, v264, v265, v266;
                return;
              }

              v320 = 0;
            }

            v82 = [(FSTester *)v47 knownFolder];
            v83 = v302;
            sub_1CF9E59D8();

            sub_1CF9E5A18();
            v85 = v84;
            fpfs_openflags_0(0x100100u);
            sub_1CF9E6978();
            v21 = openat_s();

            v87 = v316;
            if ((v21 & 0x80000000) != 0)
            {
              v223 = MEMORY[0x1D38683F0](v86);
              v323 = 0;
              memset(v322, 0, sizeof(v322));
              v324 = 19;
              v224 = sub_1CF19BBE4(v223, v322);
              sub_1CF1969CC(v322);
              v320 = v224;
              swift_willThrow();
              v87(v83, v13);
              v305, v225, v226, v227, v228, v229, v230, v231;

              v85, v232, v233, v234, v235, v236, v237, v238;
              return;
            }

            v316(v83, v13);
            v85, v88, v89, v90, v91, v92, v93, v94;
            v95 = [(FSTester *)v75 logicalLocation];
            sub_1CF9E59D8();

            sub_1CF9E5988();
            v87(v24, v13);
            v96 = [v75 &selRef_materializedURLWithDomain_ + 5];
            sub_1CF9E59D8();

            v97 = sub_1CF9E58E8();
            v99 = v98;
            v87(v24, v13);
            *&v322[0] = v97;
            *(&v322[0] + 1) = v99;
            v325 = 58;
            v326 = 0xE100000000000000;
            v327[0] = 47;
            v327[1] = 0xE100000000000000;
            v283 = sub_1CEFE4E68();
            v284 = v283;
            v282[1] = v283;
            v282[0] = MEMORY[0x1E69E6158];
            v100 = sub_1CF9E7668();
            v102 = v101;
            v99, v101, v103, v104, v105, v106, v107, v108;
            *&v322[0] = v100;
            *(&v322[0] + 1) = v102;
            type metadata accessor for VFSFileTree(0);
            v109 = swift_dynamicCastClassUnconditional();

            v110 = objc_sync_enter(v109);
            if (v110)
            {
              goto LABEL_71;
            }

            v111 = v109[20];

            v112 = objc_sync_exit(v109);
            v113 = v315;
            if (v112)
            {
              MEMORY[0x1EEE9AC00](v112);
              v283 = v109;
              fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v282, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
            }

            v114 = v307;
            v115 = v321;
            (*v299)(v307, v111 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v321);
            v116 = v114;

            v117 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v10 = v118;
            v119 = v317;
            v120 = v320;
            sub_1CF2AFAD4(v21, v317, v322, v116, v117, v118);
            v320 = v120;
            if (v120)
            {

              v10, v239, v240, v241, v242, v243, v244, v245;
              v305, v246, v247, v248, v249, v250, v251, v252;
              v87(v116, v115);
              *(&v322[0] + 1), v253, v254, v255, v256, v257, v258, v259;
              v87(v119, v115);
              close(v21);
              return;
            }

            v10, v121, v122, v123, v124, v125, v126, v127;
            a1 = v318;
            v87(v116, v115);
            *(&v322[0] + 1), v128, v129, v130, v131, v132, v133, v134;
            v87(v119, v115);
            close(v21);
            v33 = (v113 + 1);
            a2 = v312;
            v13 = v115;
            v32 = v305;
            v28 = v311;
            if (v313 == v298)
            {
              v305, v305, v135, v136, v137, v138, v139, v140;
              break;
            }
          }
        }
      }

      else
      {
        v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_6;
        }
      }
    }

    v141 = v290;
    swift_beginAccess();
    if (!(*v141 >> 62))
    {
      if (!*((*v141 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_27;
    }

    if (!sub_1CF9E7818())
    {
      break;
    }

LABEL_27:
    v10 = sub_1CF4E0980(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    a2 = *v141;
    if (a2 >> 62)
    {
      v21 = sub_1CF9E7818();
    }

    else
    {
      v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v21)
    {
LABEL_39:
      a2, v142, v143, v144, v145, v146, v147, v148;
      v10, v169, v170, v171, v172, v173, v174, v175;
      v176 = fpfs_current_or_default_log();
      v177 = v285;
      sub_1CF9E6128();
      v178 = v312;
      sub_1CEFD09A0(v312);
      v179 = sub_1CF9E6108();
      v180 = sub_1CF9E72C8();
      sub_1CEFD0A98(v178);
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v327[0] = v182;
        *v181 = 136446210;
        v183 = sub_1CEFD11AC(v178);
        v185 = v184;
        v186 = sub_1CEFD0DF0(v183, v184, v327);
        v185, v187, v188, v189, v190, v191, v192, v193;
        *(v181 + 4) = v186;
        _os_log_impl(&dword_1CEFC7000, v179, v180, "move detached folders to relocated location for %{public}s", v181, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v182);
        MEMORY[0x1D386CDC0](v182, -1, -1);
        MEMORY[0x1D386CDC0](v181, -1, -1);
      }

      (*(v289 + 8))(v177, v309);
      v194 = v288;
      v195 = v287;
      v196 = v286;
      sub_1CF9E5108();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      sub_1CF9E57D8();
      v197 = sub_1CF9E50D8();
      (*(v195 + 8))(v196, v194);
      v320 = v197;
      swift_willThrow();
      return;
    }

    v28 = 0;
    v314 = a2 & 0xC000000000000001;
    v313 = a2 & 0xFFFFFFFFFFFFFF8;
    v315 = (v292 + 8);
    v311 = a2;
    v308 = v21;
    while (1)
    {
      if (v314)
      {
        v149 = MEMORY[0x1D3869C30](v28, a2);
      }

      else
      {
        if (v28 >= *(v313 + 16))
        {
          goto LABEL_48;
        }

        v149 = *(a2 + 8 * v28 + 32);
      }

      v13 = v149;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v320 = (v28 + 1);
      v317 = v10;
      v150 = [v149 knownFolder];
      sub_1CF9E59D8();

      v316 = sub_1CF9E58E8();
      v318 = v151;
      v152 = *v315;
      v153 = v321;
      (*v315)(v24, v321);
      v154 = sub_1CF9E5928();
      v155 = [v13 logicalLocation];
      sub_1CF9E59D8();

      v156 = sub_1CF9E5928();
      v152(v24, v153);
      v157 = [v154 fp:v156 relativePathOf:?];

      if (!v157)
      {
        v198 = v318;
        v199 = [v13 logicalLocation];
        v200 = v319;
        sub_1CF9E59D8();

        v201 = sub_1CF9E5928();
        v152(v200, v321);
        v109 = FPItemNotFoundErrorAtURL();

        v320 = v109;
        if (v109)
        {
          v198, v202, v203, v204, v205, v206, v207, v208;
          v311, v209, v210, v211, v212, v213, v214, v215;
          v317, v216, v217, v218, v219, v220, v221, v222;
          swift_willThrow();

          return;
        }

        __break(1u);
LABEL_71:
        MEMORY[0x1EEE9AC00](v110);
        v283 = v109;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v282, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      v158 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      a1 = v159;

      v160 = v317;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v327[0] = v160;
      sub_1CF1D19D0(v316, v318, v158, a1, isUniquelyReferenced_nonNull_native);

      a1, v162, v163, v164, v165, v166, v167, v168;
      v10 = v327[0];
      ++v28;
      v21 = v308;
      v24 = v319;
      a2 = v311;
      if (v320 == v308)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v267 = v301;
  if (v301 >> 62)
  {
    v268 = sub_1CF9E7818();
    if (!v268)
    {
      return;
    }
  }

  else
  {
    v268 = *((v301 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v268)
    {
      return;
    }
  }

  if (v268 < 1)
  {
    __break(1u);
  }

  v269 = 0;
  v318 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_providerDomainID;
  v270 = v267 & 0xC000000000000001;
  v317 = (v292 + 8);
  v271 = &selRef_setItemPendingScanningProviderRemovalOfDatalessBitStatus_;
  do
  {
    if (v270)
    {
      v280 = MEMORY[0x1D3869C30](v269, v267);
    }

    else
    {
      v280 = *(v267 + 8 * v269 + 32);
    }

    v281 = v280;
    if ([v280 v271[416]])
    {
      type metadata accessor for InternalPathsManager(0);
      v272 = [v281 knownFolder];
      v273 = v319;
      sub_1CF9E59D8();

      v274 = [v281 logicalLocation];
      v275 = v271;
      v276 = v297;
      sub_1CF9E59D8();

      sub_1CF79BE08(v273, v276, *&v318[v314]);
      isa = v317->super.isa;
      v278 = v276;
      v271 = v275;
      v279 = v321;
      (v317->super.isa)(v278, v321);
      v267 = v301;
      (isa)(v273, v279);
    }

    else
    {
    }

    ++v269;
  }

  while (v268 != v269);
}

double FPDDomainFPFSBackend.attachKnownFolders(_:options:request:completionHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  v12 = v11 | 0x3000000000000006;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = v12;
  v14[7] = a2;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v15 = a3;
  v16 = v5;

  sub_1CEFD4024("attachKnownFolders(_:options:request:completionHandler:)", 56, 2, sub_1CF90324C, v13, sub_1CF8F34CC, v14);

  return result;
}

void sub_1CF89BE20(uint64_t a1, void (*a2)(id), uint64_t a3, char *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v89 = a7;
  v93 = a6;
  v12 = sub_1CF9E6118();
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E5A58();
  v95 = *(v14 - 8);
  v15 = v95[8];
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v80 - v20;
  v21 = swift_allocObject();
  v92 = a1;
  swift_weakInit();
  v22 = swift_allocObject();
  v96 = a2;
  *(v22 + 2) = a2;
  *(v22 + 3) = a3;
  *(v22 + 4) = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v86 = a4;
    v94 = Strong;
    v24 = *(a5 + 16);
    if (v24)
    {
      v82 = v12;
      v84 = a5;
      v85 = v22;
      v25 = v95;
      v26 = *(v95 + 80);
      v80 = ~v26;
      v81 = v26;
      v27 = a5 + ((v26 + 32) & ~v26);
      v87 = v21;

      v83 = a3;

      sub_1CF9E5988();
      v28 = (v25 + 1);
      v29 = v25[9];
      while (1)
      {
        sub_1CF9E5988();
        sub_1CEFCCCA4(&qword_1EDEAB410, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
        if ((sub_1CF9E6868() & 1) == 0)
        {
          break;
        }

        v30 = *v28;
        (*v28)(v18, v14);
        v27 += v29;
        if (!--v24)
        {

          v31 = v92;
          type metadata accessor for VFSFileTree(0);
          v96 = *(swift_dynamicCastClassUnconditional() + 216);
          v32 = v95;
          v33 = v88;
          (v95[2])(v88, v97, v14);
          v34 = (v81 + 64) & v80;
          v35 = (v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
          v36 = swift_allocObject();
          v37 = v86;
          v36[2] = v31;
          v36[3] = v37;
          v38 = v93;
          v36[4] = v84;
          v36[5] = v38;
          v39 = v89;
          v36[6] = v94;
          v36[7] = v39;
          (v32[4])(v36 + v34, v33, v14);
          v40 = (v36 + v35);
          v41 = v85;
          *v40 = sub_1CF902EC0;
          v40[1] = v41;
          sub_1CEFD09A0(v38);
          v42 = v96;

          v43 = v37;

          v44 = v94;

          sub_1CF01001C(0, "attachKnownFolders(_:options:request:completionHandler:)", 56, 2, sub_1CF8FDECC, v36);

          v30(v97, v14);
          return;
        }
      }

      v50 = fpfs_current_or_default_log();
      v51 = v90;
      sub_1CF9E6128();
      v52 = v93;
      sub_1CEFD09A0(v93);
      v53 = sub_1CF9E6108();
      v54 = sub_1CF9E72A8();
      sub_1CEFD0A98(v52);
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v98[0] = v95;
        *v55 = 136446210;
        v56 = sub_1CEFD11AC(v52);
        v58 = v57;
        v59 = sub_1CEFD0DF0(v56, v57, v98);
        v58, v60, v61, v62, v63, v64, v65, v66;
        *(v55 + 4) = v59;
        _os_log_impl(&dword_1CEFC7000, v53, v54, "inconsistent attach request with different home folders for request %{public}s", v55, 0xCu);
        v67 = v95;
        __swift_destroy_boxed_opaque_existential_1(v95);
        MEMORY[0x1D386CDC0](v67, -1, -1);
        MEMORY[0x1D386CDC0](v55, -1, -1);
      }

      (*(v91 + 8))(v51, v82);
      v68 = v83;
      v69 = v96;
      v70 = FPNotSupportedError();
      if (v70)
      {
        v71 = v70;
        swift_beginAccess();
        v72 = swift_weakLoadStrong();
        if (v72)
        {
          v73 = v72;

          v74 = v71;
          sub_1CF77A9C8(v74, 0, v73, v69, v68);
        }

        else
        {
          v77 = v71;
          v78 = FPDomainUnavailableError();
          (v69)();
        }
      }

      else
      {
        (v69)();
      }

      v79 = *v28;
      (*v28)(v18, v14);
      v79(v97, v14);
    }

    else
    {

      v96(0);

      v49 = v94;
    }
  }

  else
  {

    v45 = sub_1CF8403B4();
    swift_beginAccess();
    v46 = swift_weakLoadStrong();
    if (v46)
    {
      v47 = v46;

      v48 = v45;
      sub_1CF77A9C8(v45, 0, v47, v96, a3);
    }

    else
    {
      v75 = v45;
      v76 = FPDomainUnavailableError();
      (v96)();
    }
  }
}

uint64_t sub_1CF89C600(void *a1, void *a2, void *a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v451 = a8;
  v438 = a6;
  v463 = a5;
  v459 = a4;
  v466 = a3;
  v486 = *MEMORY[0x1E69E9840];
  v11 = sub_1CF9E63A8();
  v442 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v416 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6448();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v439 = &v416 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_1CF9E5248();
  *&v432 = *(v446 - 8);
  MEMORY[0x1EEE9AC00](v446);
  v445 = &v416 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  *&v449 = &v416 - v19;
  v454 = sub_1CF9E5268();
  v437 = *(v454 - 8);
  MEMORY[0x1EEE9AC00](v454);
  v456 = (&v416 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v433 = &v416 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v444 = &v416 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v447 = &v416 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v416 - v28;
  v461 = sub_1CF9E6118();
  v453 = *(v461 - 8);
  MEMORY[0x1EEE9AC00](v461);
  v452 = &v416 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v431 = &v416 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v416 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v436 = &v416 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v465 = &v416 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v435 = &v416 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v458 = &v416 - v43;
  v464 = sub_1CF9E5A58();
  v455 = *(v464 - 8);
  MEMORY[0x1EEE9AC00](v464);
  v457 = &v416 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v462 = &v416 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v460 = &v416 - v48;
  v450 = a1;
  v469 = a1[2];
  type metadata accessor for VFSFileTree(0);
  v49 = swift_dynamicCastClassUnconditional();

  v50 = objc_sync_enter(v49);
  if (v50)
  {
    MEMORY[0x1EEE9AC00](v50);
    v414 = &v416 - 4;
    *(&v416 - 2) = v49;
    goto LABEL_86;
  }

  v51 = v49[20];

  v52 = objc_sync_exit(v49);
  if (v52)
  {
    MEMORY[0x1EEE9AC00](v52);
    v415 = &v416 - 4;
    *(&v416 - 2) = v49;
    goto LABEL_87;
  }

  v440 = v15;

  v53 = *(v455 + 16);
  v467 = v455 + 16;
  v468 = v53;
  (v53)(v460, v51 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, v464);

  v54 = objc_sync_enter(a2);
  if (v54)
  {
    MEMORY[0x1EEE9AC00](v54);
    v414 = &v416 - 4;
    *(&v416 - 2) = a2;
LABEL_86:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v414, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v443 = v35;
  v434 = v29;
  v441 = v13;
  *(a2 + OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_urlsAreInTransientState) = 1;
  v55 = objc_sync_exit(a2);
  if (v55)
  {
    MEMORY[0x1EEE9AC00](v55);
    v415 = &v416 - 4;
    *(&v416 - 2) = a2;
LABEL_87:
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v415, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  MEMORY[0x1EEE9AC00](v55);
  v56 = v459;
  v57 = v460;
  *(&v416 - 2) = v459;
  *(&v416 - 1) = v57;
  v58 = sub_1CF25A99C(sub_1CF8FDF68, (&v416 - 4), v466);
  v430 = a9;
  v448 = v58;

  v59 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  sub_1CEFD09A0(v56);
  v60 = sub_1CF9E6108();
  v61 = sub_1CF9E72C8();
  sub_1CEFD0A98(v56);
  v62 = os_log_type_enabled(v60, v61);
  v428 = v11;
  v427 = v14;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v63 = 136446210;
    v65 = sub_1CEFD11AC(v56);
    v67 = v66;
    v68 = sub_1CEFD0DF0(v65, v66, &aBlock);
    v67, v69, v70, v71, v72, v73, v74, v75;
    *(v63 + 4) = v68;
    _os_log_impl(&dword_1CEFC7000, v60, v61, "relocating roots for %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x1D386CDC0](v64, -1, -1);
    MEMORY[0x1D386CDC0](v63, -1, -1);
  }

  v76 = v453;
  v77 = v458;
  v458 = *(v453 + 8);
  (v458)(v77, v461);
  v78 = v448;

  v79 = a2;
  sub_1CF8F3BF0(v450, v463, v79, v78, v79);
  v80 = v467;
  v429 = 0;
  v78, v81, v82, v83, v84, v85, v86, v87;
  v426 = v79;

  v88 = v459;
  if ((v438 & 1) == 0)
  {
    goto LABEL_46;
  }

  v89 = fpfs_current_or_default_log();
  v90 = v435;
  sub_1CF9E6128();
  sub_1CEFD09A0(v88);
  v91 = sub_1CF9E6108();
  v92 = sub_1CF9E72C8();
  sub_1CEFD0A98(v88);
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    aBlock = v94;
    *v93 = 136446210;
    v95 = sub_1CEFD11AC(v88);
    v97 = v96;
    v98 = sub_1CEFD0DF0(v95, v96, &aBlock);
    v99 = v97;
    v76 = v453;
    v99, v100, v101, v102, v103, v104, v105, v106;
    *(v93 + 4) = v98;
    _os_log_impl(&dword_1CEFC7000, v91, v92, "re-creating local folder for %{public}s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v94);
    MEMORY[0x1D386CDC0](v94, -1, -1);
    MEMORY[0x1D386CDC0](v93, -1, -1);
  }

  (v458)(v90, v461);
  v107 = v454;
  v108 = v466;
  v109 = v466[2];
  v110 = &off_1CF9F4000;
  if (!v109)
  {
    goto LABEL_37;
  }

  v450 = objc_opt_self();
  v111 = v108 + ((*(v455 + 80) + 32) & ~*(v455 + 80));
  v463 = *(v455 + 72);
  v425 = (v437 + 32);
  v424 = (v432 + 8);
  v423 = (v437 + 8);
  v438 = v76 + 8;
  v466 = (v455 + 8);
  *&v112 = 136446466;
  v432 = v112;
  v417 = v111;
  v418 = v109;
  v113 = v109;
  v114 = v457;
  v115 = v80;
  v422 = (v437 + 16);
  do
  {
    v118 = v78;
    v119 = v464;
    v120 = v115;
    (v468)(v114, v111, v464);
    v121 = [v450 defaultManager];
    v122 = sub_1CF9E5928();
    aBlock = 0;
    v123 = [v121 createDirectoryAtURL:v122 withIntermediateDirectories:0 attributes:0 error:&aBlock];

    if (v123)
    {
      v116 = *v466;
      v117 = aBlock;
      v116(v114, v119);
      v78 = v118;
      v115 = v120;
      goto LABEL_13;
    }

    v124 = aBlock;
    v125 = sub_1CF9E57F8();

    swift_willThrow();
    v429 = 0;
    aBlock = v125;
    v126 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v127 = v454;
    v78 = v118;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    v435 = v125;
    v128 = *v425;
    v129 = v447;
    (*v425)(v447, v456, v127);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v130 = v449;
    sub_1CF9E57A8();
    v131 = v445;
    sub_1CF9E5128();
    sub_1CEFCCCA4(&unk_1EC4C1140, MEMORY[0x1E6967E70], MEMORY[0x1E6967E88]);
    v132 = v446;
    sub_1CF9E6C28();
    sub_1CF9E6C28();
    v133 = *v424;
    (*v424)(v131, v132);
    v133(v130, v132);
    if (v479 != v477)
    {
      (*v423)(v129, v127);
      v78 = v448;
      v125 = v435;
LABEL_21:

      LOBYTE(v479) = 0;
      v162 = [v450 defaultManager];
      sub_1CF9E5A08();
      v164 = v163;
      v165 = sub_1CF9E6888();
      v164, v166, v167, v168, v169, v170, v171, v172;
      LODWORD(v164) = [v162 fileExistsAtPath:v165 isDirectory:&v479];

      if (!v164 || (v479 & 1) == 0)
      {
        v216 = fpfs_current_or_default_log();
        v217 = v431;
        sub_1CF9E6128();
        v88 = v459;
        sub_1CEFD09A0(v459);
        v218 = v125;
        v219 = sub_1CF9E6108();
        v220 = sub_1CF9E72A8();
        sub_1CEFD0A98(v88);

        v215 = v125;
        if (os_log_type_enabled(v219, v220))
        {
          v221 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v223 = swift_slowAlloc();
          aBlock = v223;
          *v221 = v432;
          v224 = sub_1CEFD11AC(v88);
          v226 = v225;
          v227 = sub_1CEFD0DF0(v224, v225, &aBlock);
          v226, v228, v229, v230, v231, v232, v233, v234;
          *(v221 + 4) = v227;
          *(v221 + 12) = 2112;
          swift_getErrorValue();
          v235 = Error.prettyDescription.getter(v472, v473);
          *(v221 + 14) = v235;
          *v222 = v235;
          _os_log_impl(&dword_1CEFC7000, v219, v220, "failed to re-create local folder for %{public}s: %@", v221, 0x16u);
          sub_1CEFCCC44(v222, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v222, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v223);
          MEMORY[0x1D386CDC0](v223, -1, -1);
          MEMORY[0x1D386CDC0](v221, -1, -1);

          v236 = v431;
        }

        else
        {

          v236 = v217;
        }

        (v458)(v236, v461);
        v110 = &off_1CF9F4000;
        swift_willThrow();
        (*v466)(v457, v464);
        goto LABEL_42;
      }

      v173 = fpfs_current_or_default_log();
      v174 = v452;
      sub_1CF9E6128();
      v175 = v459;
      sub_1CEFD09A0(v459);
      v176 = v125;
      v177 = sub_1CF9E6108();
      v178 = sub_1CF9E72A8();
      sub_1CEFD0A98(v175);

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        aBlock = v181;
        *v179 = v432;
        v182 = sub_1CEFD11AC(v175);
        v184 = v183;
        v185 = sub_1CEFD0DF0(v182, v183, &aBlock);
        v184, v186, v187, v188, v189, v190, v191, v192;
        *(v179 + 4) = v185;
        *(v179 + 12) = 2112;
        swift_getErrorValue();
        v193 = Error.prettyDescription.getter(v470, v471);
        *(v179 + 14) = v193;
        *v180 = v193;
        _os_log_impl(&dword_1CEFC7000, v177, v178, "failed to re-create local folder for which exists %{public}s: %@", v179, 0x16u);
        sub_1CEFCCC44(v180, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v180, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v181);
        v194 = v181;
        v78 = v448;
        MEMORY[0x1D386CDC0](v194, -1, -1);
        MEMORY[0x1D386CDC0](v179, -1, -1);

        v195 = v452;
      }

      else
      {

        v195 = v174;
      }

      (v458)(v195, v461);
      v116 = *v466;
      v114 = v457;
      (*v466)(v457, v464);
      goto LABEL_31;
    }

    v421 = v128;

    v134 = fpfs_current_or_default_log();
    v135 = v443;
    sub_1CF9E6128();
    v136 = *v422;
    v137 = v444;
    (*v422)(v444, v129, v127);
    v138 = v459;
    sub_1CEFD09A0(v459);
    v139 = sub_1CF9E6108();
    v140 = sub_1CF9E72A8();
    sub_1CEFD0A98(v138);
    LODWORD(v435) = v140;
    v141 = v140;
    v142 = v139;
    if (os_log_type_enabled(v139, v141))
    {
      v143 = swift_slowAlloc();
      v420 = swift_slowAlloc();
      v419 = swift_slowAlloc();
      v479 = v419;
      *v143 = v432;
      v144 = sub_1CEFD11AC(v138);
      v146 = v145;
      v147 = sub_1CEFD0DF0(v144, v145, &v479);
      v146, v148, v149, v150, v151, v152, v153, v154;
      *(v143 + 4) = v147;
      *(v143 + 12) = 2112;
      v155 = v137;
      v156 = v433;
      v136(v433, v155, v127);
      sub_1CEFCCCA4(&unk_1EC4C5010, MEMORY[0x1E6967E98], MEMORY[0x1E6967EA0]);
      v157 = sub_1CF9E7FB8();
      if (v157)
      {
        v158 = v157;
        v159 = v156;
        v160 = v423;
        (*v423)(v159, v127);
        v161 = v464;
      }

      else
      {
        v158 = swift_allocError();
        v421(v197, v156, v127);
        v161 = v464;
        v160 = v423;
      }

      v198 = sub_1CF9E57E8();

      v199 = [v198 fp_prettyDescription];
      v200 = *v160;
      v200(v444, v127);
      *(v143 + 14) = v199;
      v201 = v420;
      *v420 = v199;
      _os_log_impl(&dword_1CEFC7000, v142, v435, "failed to recreate local folder which already exists %{public}s: %@", v143, 0x16u);
      sub_1CEFCCC44(v201, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v201, -1, -1);
      v202 = v419;
      __swift_destroy_boxed_opaque_existential_1(v419);
      MEMORY[0x1D386CDC0](v202, -1, -1);
      MEMORY[0x1D386CDC0](v143, -1, -1);

      (v458)(v443, v461);
      v200(v447, v127);
      v116 = *v466;
      v114 = v457;
      (*v466)(v457, v161);
    }

    else
    {

      v196 = *v423;
      (*v423)(v137, v127);
      (v458)(v135, v461);
      v196(v129, v127);
      v116 = *v466;
      v114 = v457;
      (*v466)(v457, v464);
    }

    v78 = v448;
LABEL_31:
    v115 = v467;
LABEL_13:
    v111 = &v463[v111];
    --v113;
  }

  while (v113);
  aBlock = MEMORY[0x1E69E7CC0];
  v203 = v418;
  sub_1CEFE95CC(0, v418, 0);
  v204 = aBlock;
  v88 = v459;
  v205 = v417;
  do
  {
    v206 = v462;
    v207 = v464;
    (v468)(v462, v205, v464);
    v208 = sub_1CF9E58E8();
    v210 = v209;
    v116(v206, v207);
    aBlock = v204;
    v212 = v204[2];
    v211 = v204[3];
    if (v212 >= v211 >> 1)
    {
      sub_1CEFE95CC((v211 > 1), v212 + 1, 1);
      v204 = aBlock;
    }

    v204[2] = v212 + 1;
    v213 = &v204[2 * v212];
    v213[4] = v208;
    v213[5] = v210;
    v205 = &v463[v205];
    --v203;
  }

  while (v203);

  v78 = v448;
  v107 = v454;
  v110 = &off_1CF9F4000;
LABEL_37:
  sub_1CF9E5108();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  v214 = v434;
  sub_1CF9E57D8();
  v215 = sub_1CF9E50D8();
  (*(v437 + 8))(v214, v107);
  swift_willThrow();
LABEL_42:
  v237 = v215;
  v238 = fpfs_current_or_default_log();
  v239 = v436;
  sub_1CF9E6128();
  sub_1CEFD09A0(v88);
  v240 = v215;
  v241 = sub_1CF9E6108();
  v242 = sub_1CF9E72A8();
  sub_1CEFD0A98(v88);

  if (os_log_type_enabled(v241, v242))
  {
    v243 = swift_slowAlloc();
    v244 = swift_slowAlloc();
    v468 = swift_slowAlloc();
    aBlock = v468;
    *v243 = *(v110 + 366);
    v245 = sub_1CEFD11AC(v88);
    v247 = v246;
    v248 = sub_1CEFD0DF0(v245, v246, &aBlock);
    v247, v249, v250, v251, v252, v253, v254, v255;
    *(v243 + 4) = v248;
    *(v243 + 12) = 2112;
    swift_getErrorValue();
    v256 = Error.prettyDescription.getter(v474, v475);
    *(v243 + 14) = v256;
    *v244 = v256;
    _os_log_impl(&dword_1CEFC7000, v241, v242, "failed to re-create local folder for %{public}s: %@", v243, 0x16u);
    sub_1CEFCCC44(v244, &qword_1EC4BE350, &unk_1CF9FC3B0);
    MEMORY[0x1D386CDC0](v244, -1, -1);
    v257 = v468;
    __swift_destroy_boxed_opaque_existential_1(v468);
    MEMORY[0x1D386CDC0](v257, -1, -1);
    MEMORY[0x1D386CDC0](v243, -1, -1);
  }

  else
  {
  }

  v76 = v453;
  (v458)(v239, v461);
LABEL_46:
  v456 = dispatch_group_create();
  v457 = swift_allocObject();
  *(v457 + 2) = 0;
  v266 = *v78->tree;
  if (v266)
  {
    v454 = v76 + 8;
    v450 = "_content";
    LODWORD(v447) = (v88 >> 58) & 0x3C | (v88 >> 1) & 3;
    v446 = v88 & 0xFFFFFFFFFFFFFF9;
    anon_8 = v448[1]._anon_8;
    *&v265 = 136315906;
    v449 = v265;
    do
    {
      v275 = *(anon_8 - 1);
      v276 = *anon_8;
      v468 = anon_8;
      v277 = v275;
      v278 = v456;
      dispatch_group_enter(v456);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4BF0, &unk_1CFA189D0);
      v279 = swift_allocObject();
      *(v279 + 42) = 0;
      *(v279 + 32) = v276;
      *(v279 + 40) = 1;
      *(v279 + 16) = v276;
      *(v279 + 24) = 1;
      v280 = swift_allocObject();
      v281 = v457;
      *(v280 + 16) = v278;
      *(v280 + 24) = v281;
      v282 = objc_allocWithZone(MEMORY[0x1E696AE38]);
      v283 = v278;

      v466 = [v282 init];
      v284 = swift_allocObject();
      v284[2] = sub_1CF8FDF88;
      v284[3] = v280;
      v285 = v469;
      v284[4] = v88;
      v284[5] = v285;
      sub_1CEFD09A0(v88);
      v467 = v280;

      v286 = fpfs_current_or_default_log();
      v287 = v465;
      sub_1CF9E6128();
      sub_1CEFD09A0(v88);
      sub_1CEFD09A0(v88);

      v288 = sub_1CF9E6108();
      v289 = sub_1CF9E7298();
      if (!os_log_type_enabled(v288, v289))
      {
        sub_1CEFD0A98(v88);
        sub_1CEFD0A98(v88);

        (v458)(v287, v461);
        goto LABEL_68;
      }

      LODWORD(v453) = v289;
      v463 = v266;
      v290 = swift_slowAlloc();
      v291 = swift_slowAlloc();
      v478 = v291;
      *v290 = v449;
      swift_beginAccess();
      v292 = *(v279 + 32);
      v293 = *(v279 + 40);
      v294 = *(v279 + 41);
      v462 = v277;
      v452 = v291;
      if (v294)
      {
        v295 = NSFileProviderItemIdentifier.description.getter(v292);
        v297 = v296;
        sub_1CEFD0994(v292, v293, 1);

        v298 = v295;
        v88 = v459;
      }

      else
      {
        if (v293)
        {
          if (v293 == 1)
          {
            aBlock = 0x284449656C6966;
            v481 = 0xE700000000000000;
            v476 = v292;
            v299 = sub_1CF9E7F98();
            v301 = v300;
            MEMORY[0x1D3868CC0](v299);
            v301, v302, v303, v304, v305, v306, v307, v308;
            MEMORY[0x1D3868CC0](41, 0xE100000000000000);

            v298 = aBlock;
            v297 = v481;
            v309 = v465;
            v266 = v463;
          }

          else
          {
            v309 = v465;
            v266 = v463;

            if (v292)
            {
              v298 = 0x6873617274;
            }

            else
            {
              v298 = 1953460082;
            }

            if (v292)
            {
              v297 = 0xE500000000000000;
            }

            else
            {
              v297 = 0xE400000000000000;
            }
          }

          v88 = v459;
          goto LABEL_67;
        }

        aBlock = 0x284449636F64;
        v481 = 0xE600000000000000;
        LODWORD(v476) = v292;
        v310 = sub_1CF9E7F98();
        v312 = v311;
        MEMORY[0x1D3868CC0](v310);
        v312, v313, v314, v315, v316, v317, v318, v319;
        MEMORY[0x1D3868CC0](41, 0xE100000000000000);

        v298 = aBlock;
        v297 = v481;
      }

      v309 = v465;
      v266 = v463;
LABEL_67:
      v320 = sub_1CEFD0DF0(v298, v297, &v478);
      v297, v321, v322, v323, v324, v325, v326, v327;
      *(v290 + 4) = v320;
      *(v290 + 12) = 2080;
      *(v290 + 14) = sub_1CEFD0DF0(0xD000000000000013, (v450 | 0x8000000000000000), &v478);
      *(v290 + 22) = 2080;
      v328 = sub_1CEFD11AC(v88);
      v330 = v329;
      sub_1CEFD0A98(v88);
      sub_1CEFD0A98(v88);
      v331 = sub_1CEFD0DF0(v328, v330, &v478);
      v330, v332, v333, v334, v335, v336, v337, v338;
      *(v290 + 24) = v331;
      *(v290 + 32) = 2048;
      *(v290 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v288, v453, "Lookup itemID %s with behavior %s request %s iteration %ld", v290, 0x2Au);
      v339 = v452;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v339, -1, -1);
      MEMORY[0x1D386CDC0](v290, -1, -1);

      (v458)(v309, v461);
      v277 = v462;
LABEL_68:
      swift_beginAccess();
      v340 = *(v279 + 32);
      v341 = *(v279 + 40);
      if (*(v279 + 41))
      {
        v342 = qword_1EDEA34B0;
        v343 = v340;
        if (v342 != -1)
        {
          swift_once();
        }

        v344 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v346 = v345;
        v348 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v354 = v347;
        if (v344 == v348 && v346 == v347)
        {
          v346, v347, v348, v349, v350, v351, v352, v353;
          v354, v268, v269, v270, v271, v272, v273, v274;
          sub_1CEFD0994(v340, v341, 1);
        }

        else
        {
          v355 = sub_1CF9E8048();
          v346, v356, v357, v358, v359, v360, v361, v362;
          v354, v363, v364, v365, v366, v367, v368, v369;
          sub_1CEFD0994(v340, v341, 1);
          if ((v355 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }

      else if (v340 || v341 != 2)
      {
LABEL_77:
        v463 = v266;
        v462 = v277;
        if (v447 == 30)
        {
          v372 = *(v446 + 16);
          v371 = v372;
        }

        else
        {
          v370 = swift_allocObject();
          *(v370 + 16) = v88;
          v371 = v370 | 0x7000000000000004;
          v372 = v88;
        }

        sub_1CEFD09A0(v372);
        v373 = swift_allocObject();
        *(v373 + 16) = sub_1CF8FDF90;
        *(v373 + 24) = v284;
        v374 = v469;
        *(v373 + 32) = v469;
        *(v373 + 40) = 0;
        *(v373 + 48) = v88;
        *(v373 + 56) = v279;
        *(v373 + 64) = 0;
        v375 = v466;
        *(v373 + 72) = v466;
        *(v373 + 80) = 0;
        v376 = swift_allocObject();
        *(v376 + 16) = v279;
        *(v376 + 24) = v374;
        *(v376 + 32) = 0;
        *(v376 + 40) = sub_1CF796A90;
        *(v376 + 48) = v373;
        *(v376 + 56) = v371;
        v377 = swift_allocObject();
        *(v377 + 16) = sub_1CF796A90;
        *(v377 + 24) = v373;

        sub_1CEFD09A0(v88);

        v378 = v375;
        sub_1CEFD09A0(v371);
        sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v377, sub_1CF796A9C, v376);

        sub_1CEFD0A98(v371);
        v266 = v463;
        goto LABEL_50;
      }

      sub_1CF90CAC8(v88, sub_1CF8FDF90, v284);

LABEL_50:
      anon_8 = (v468 + 2);
      --v266;
    }

    while (v266);
  }

  v448, v258, v259, v260, v261, v262, v263, v264;
  v379 = *&v426[OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_queue];
  v380 = swift_allocObject();
  v381 = v430;
  v380[2] = v451;
  v380[3] = v381;
  v380[4] = v457;

  v382 = fpfs_current_log();
  v469 = fpfs_adopt_log();
  v383 = swift_allocObject();
  aBlock = sub_1CF9E73C8();
  v481 = v384;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v385 = sub_1CF9E7988();
  v387 = v386;
  MEMORY[0x1D3868CC0](v385);
  v387, v388, v389, v390, v391, v392, v393, v394;
  v395 = v481;
  sub_1CF9E6978();
  v395, v396, v397, v398, v399, v400, v401, v402;
  v403 = __fp_log_fork();

  *(v383 + 16) = v403;
  v404 = swift_allocObject();
  *(v404 + 16) = v382;
  *(v404 + 24) = v383;
  *(v404 + 32) = v379;
  *(v404 + 40) = "attachKnownFolders(_:options:request:completionHandler:)";
  *(v404 + 48) = 56;
  *(v404 + 56) = 2;
  *(v404 + 64) = sub_1CF2B1758;
  *(v404 + 72) = v380;
  v484 = sub_1CF2B9F54;
  v485 = v404;
  aBlock = MEMORY[0x1E69E9820];
  v481 = 1107296256;
  v482 = sub_1CEFCA444;
  v483 = &block_descriptor_4079;
  v405 = _Block_copy(&aBlock);
  v468 = v382;

  v406 = v379;

  v407 = v439;
  sub_1CF9E63F8();
  v478 = MEMORY[0x1E69E7CC0];
  sub_1CEFCCCA4(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CEFCCCEC(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0, MEMORY[0x1E69E6328]);
  v408 = v441;
  v409 = v428;
  sub_1CF9E77B8();
  v410 = v456;
  sub_1CF9E7308();
  _Block_release(v405);
  (*(v442 + 8))(v408, v409);
  (*(v440 + 8))(v407, v427);

  v411 = v469;
  v412 = fpfs_adopt_log();

  return (*(v455 + 8))(v460, v464);
}

void sub_1CF89EEF4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v129 = a4;
  v127 = a5;
  v131 = a3;
  v7 = sub_1CF9E53C8();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v124 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v119 - v17;
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v20 = *(v10 + 16);
  v130 = a1;
  v20(v12, a1, v9);
  sub_1CEFD09A0(a2);
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E72C8();
  sub_1CEFD0A98(a2);
  v23 = os_log_type_enabled(v21, v22);
  v128 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v122 = v13;
    v25 = v24;
    v121 = swift_slowAlloc();
    aBlock = v121;
    *v25 = 136446466;
    v120 = v22;
    v26 = sub_1CF9E5928();
    v27 = [v26 fp_shortDescription];

    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v119 = a2;
    v30 = v29;

    (*(v10 + 8))(v12, v9);
    v31 = sub_1CEFD0DF0(v28, v30, &aBlock);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v39 = sub_1CEFD11AC(v119);
    v41 = v40;
    v42 = sub_1CEFD0DF0(v39, v40, &aBlock);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v25 + 14) = v42;
    _os_log_impl(&dword_1CEFC7000, v21, v120, "resolving logical URL for %{public}s for %{public}s", v25, 0x16u);
    v50 = v121;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v50, -1, -1);
    MEMORY[0x1D386CDC0](v25, -1, -1);

    v51 = *(v128 + 8);
    v52 = v122;
    v51(v18);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v51 = *(v14 + 8);
    v52 = v13;
    (v51)(v18, v13);
  }

  v53 = v130;
  v54 = sub_1CF9E5A18();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v117 = v131;
  v118 = v53;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v57 = swift_allocObject();
  *(v57 + 16) = &v139;
  *(v57 + 24) = sub_1CF8FDF9C;
  *(v57 + 32) = &v119 - 4;
  *(v57 + 40) = &v141;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1CF8FDFB8;
  *(v58 + 24) = v57;
  v137 = sub_1CF50EB9C;
  v138 = v58;
  aBlock = MEMORY[0x1E69E9820];
  v134 = 1107296256;
  v135 = sub_1CF005DF8;
  v136 = &block_descriptor_4099;
  v59 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v60) = fpfs_openat();

  _Block_release(v59);

  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  else
  {
    v69 = v141;
    if (v141)
    {
      goto LABEL_6;
    }

    if ((v60 & 0x80000000) != 0)
    {
      if (MEMORY[0x1D38683F0](v61))
      {
        if (MEMORY[0x1D38683F0]() != 9939394)
        {
          MEMORY[0x1D38683F0]();
          v73 = sub_1CF9E6138();
          v70 = v129;
          if ((v73 & 0x100000000) != 0)
          {
            LODWORD(aBlock) = 22;
          }

          else
          {
            LODWORD(aBlock) = v73;
          }

          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
          v74 = v124;
          v75 = v126;
          sub_1CF9E57D8();
          v69 = sub_1CF9E53A8();
          (*(v125 + 8))(v74, v75);
          swift_willThrow();
          goto LABEL_7;
        }

        v69 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_6:
        swift_willThrow();
        v70 = v129;
LABEL_7:
        swift_bridgeObjectRelease_n();

        *v70 = v69;
        return;
      }

      goto LABEL_21;
    }

    v56, v62, v63, v64, v65, v66, v67, v68;
    v60 = v139;
    if (v139)
    {
      v71 = v140;
      v56, v62, v63, v64, v65, v66, v67, v68;
      v72 = v127;
      *v127 = v60;
      v72[1] = v71;
      return;
    }
  }

  __break(1u);
LABEL_21:
  v56, v62, v63, v64, v65, v66, v67, v68;
  aBlock = 0;
  v134 = 0xE000000000000000;
  sub_1CF9E7948();
  v134, v76, v77, v78, v79, v80, v81, v82;
  aBlock = 0xD00000000000001ALL;
  v134 = 0x80000001CFA2DF30;
  v132 = v60;
  v83 = sub_1CF9E7F98();
  v85 = v84;
  MEMORY[0x1D3868CC0](v83);
  v85, v86, v87, v88, v89, v90, v91, v92;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v93 = v134;
  v131 = aBlock;
  v94 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v95 = sub_1CF9E6108();
  v96 = sub_1CF9E72B8();
  v93, v97, v98, v99, v100, v101, v102, v103;
  if (os_log_type_enabled(v95, v96))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    aBlock = v105;
    *v104 = 136315650;
    v106 = sub_1CF9E7988();
    v108 = v107;
    v109 = sub_1CEFD0DF0(v106, v107, &aBlock);
    v108, v110, v111, v112, v113, v114, v115, v116;
    *(v104 + 4) = v109;
    *(v104 + 12) = 2048;
    *(v104 + 14) = 315;
    *(v104 + 22) = 2080;
    *(v104 + 24) = sub_1CEFD0DF0(v131, v93, &aBlock);
    _os_log_impl(&dword_1CEFC7000, v95, v96, "[ASSERT] ‼️  %s:%lu: %s", v104, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v105, -1, -1);
    MEMORY[0x1D386CDC0](v104, -1, -1);
  }

  (v51)(v123, v52);
  LODWORD(v118) = 0;
  v117 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF89F83C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v39 = a2;
  v50 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E5A58();
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for VFSDetachedRootBookmark(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v47, 0, sizeof(v47));
  v48 = a1;
  v49 = v47;
  result = sub_1CEFE1894(sub_1CF6FCF48);
  if (!v4)
  {
    v37 = a3;
    v38 = a4;
    v18 = v40;
    (*(v40 + 16))(v13, v39, v8);
    (*(v18 + 56))(v13, 0, 1, v8);
    sub_1CF36C8E0(a1, v13, v16);
    v19 = &v16[*(v14 + 20)];
    v21 = *v19;
    v20 = *(v19 + 1);
    v45 = v21;
    v46 = v20;
    v43 = 47;
    v44 = 0xE100000000000000;
    v41 = 58;
    v42 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v23 = v22;
    sub_1CF9E5958();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v31 = objc_allocWithZone(MEMORY[0x1E69674F8]);
    v32 = sub_1CF9E5928();
    v33 = sub_1CF9E5928();
    v34 = [v31 initWithKnownFolder:v32 logicalLocation:v33];

    (*(v40 + 8))(v10, v8);
    result = sub_1CEFD5338(v16, type metadata accessor for VFSDetachedRootBookmark);
    v35 = *(&v47[0] + 1);
    v36 = v38;
    *v38 = v34;
    v36[1] = v35;
  }

  return result;
}

void sub_1CF89FBEC(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  sub_1CEFCCBDC(a1, &v11[-v7], &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    v10 = *v8;
    sub_1CF518C30(a2, (a3 + 16), v9);
  }

  else
  {
    sub_1CEFCCC44(v8, &unk_1EC4BF300, &unk_1CFA006B0);
  }

  dispatch_group_leave(a2);
}

double FPDDomainFPFSBackend.getKnownFolderLocations(_:request:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1CF90325C;
  *(v11 + 24) = v9;
  swift_retain_n();
  v12 = v4;
  v13 = a2;

  sub_1CEFD4024("getKnownFolderLocations(_:request:completionHandler:)", 53, 2, sub_1CF903280, v11, sub_1CF8F34E4, v10);

  return result;
}

void sub_1CF89FF18(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong extensionBackend];

    if ([v12 respondsToSelector_])
    {
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CEFF9A6C;
      aBlock[3] = &block_descriptor_4029;
      v13 = _Block_copy(aBlock);

      [v12 getKnownFolderLocations:a5 request:a6 completionHandler:v13];
      swift_unknownObjectRelease();
      _Block_release(v13);

      return;
    }

    swift_unknownObjectRelease();
  }

  v14 = FPNotSupportedError();
  a3(0, v14);
}

double FPDDomainFPFSBackend.ingestFromCacheItem(with:requestedFields:request:completionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  swift_retain_n();
  v11 = a1;
  sub_1CEFD4024("ingestFromCacheItem(with:requestedFields:request:completionHandler:)", 68, 2, sub_1CF90324C, v9, sub_1CF8F34FC, v10);

  return result;
}

void sub_1CF8A0320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v116 = a5;
  v110 = a4;
  v101 = sub_1CF9E63D8();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v117 = &v99 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v99 - v20;
  v104 = type metadata accessor for Signpost(0);
  v107 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v109 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v108 = (&v99 - v24);
  v103 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v99 - v27;
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = v28;
  v30 = *(a1 + 16);
  v31 = swift_allocObject();
  v32 = v110;
  *(v31 + 2) = a1;
  *(v31 + 3) = v32;
  *(v31 + 4) = sub_1CF902EC0;
  *(v31 + 5) = v29;
  v112 = v31;
  *(v31 + 6) = v116;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1CF902EC0;
  *(v33 + 24) = v29;
  v116 = v33;
  v113 = v29;
  v114 = v30;
  swift_retain_n();

  v34 = v32;
  v110 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v35 = qword_1EDEBBE40;
  (*(v14 + 56))(v21, 1, 1, v13);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v36 = sub_1CF9E7988();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  v102 = *(&aBlock + 1);
  v46 = aBlock;
  sub_1CEFCCBDC(v21, v18, &unk_1EC4BED20, &unk_1CFA00700);
  v47 = *(v14 + 48);
  v48 = v47(v18, 1, v13);
  v105 = v21;
  if (v48 == 1)
  {
    v49 = v35;
    v50 = v106;
    sub_1CF9E6048();
    if (v47(v18, 1, v13) != 1)
    {
      sub_1CEFCCC44(v18, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    v50 = v106;
    (*(v14 + 32))(v106, v18, v13);
  }

  v51 = v115;
  (*(v14 + 16))(v115, v50, v13);
  v52 = v104;
  *(v51 + *(v104 + 20)) = v35;
  v53 = v51 + *(v52 + 24);
  *v53 = "DB queue wait";
  *(v53 + 8) = 13;
  *(v53 + 16) = 2;
  v54 = v35;
  v55 = sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CF9FA450;
  *(v56 + 56) = MEMORY[0x1E69E6158];
  *(v56 + 64) = sub_1CEFD51C4();
  v57 = v102;
  *(v56 + 32) = v46;
  *(v56 + 40) = v57;
  sub_1CF9E6028(v55, &dword_1CEFC7000, v54, "DB queue wait", 13, 2, v51, "%s", 2);
  v56, v58, v59, v60, v61, v62, v63, v64;
  (*(v14 + 8))(v50, v13);
  sub_1CEFCCC44(v105, &unk_1EC4BED20, &unk_1CFA00700);
  v65 = v114[8];
  v105 = v114[21];
  v106 = v65;
  v102 = sub_1CF9E6448();
  v104 = *(v102 - 8);
  (*(v104 + 56))(v117, 1, 1, v102);
  v66 = v108;
  sub_1CEFDA34C(v51, v108, type metadata accessor for Signpost);
  v67 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v68 = (v103 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1CEFDA0C4(v66, v69 + v67, type metadata accessor for Signpost);
  v70 = (v69 + v68);
  v108 = sub_1CF5543A4;
  v71 = v116;
  *v70 = sub_1CF5543A4;
  v70[1] = v71;
  v72 = v109;
  sub_1CEFDA34C(v51, v109, type metadata accessor for Signpost);
  v73 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 25) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  sub_1CEFDA0C4(v72, v76 + v67, type metadata accessor for Signpost);
  v77 = (v76 + v68);
  v78 = v102;
  *v77 = sub_1CF045408;
  v77[1] = 0;
  *(v76 + v73) = v114;
  v79 = v69;
  v80 = v76;
  v81 = v104;
  v82 = v80 + v74;
  *v82 = "ingestFromCacheItem(with:requestedFields:request:completionHandler:)";
  *(v82 + 8) = 68;
  *(v82 + 16) = 2;
  v83 = (v80 + v75);
  v84 = v116;
  *v83 = v108;
  v83[1] = v84;
  v85 = (v80 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
  v86 = v112;
  *v85 = sub_1CF8FDEA0;
  v85[1] = v86;
  v87 = swift_allocObject();
  v87[2] = sub_1CF903308;
  v87[3] = v79;
  v88 = v105;
  v87[4] = v105;
  swift_retain_n();

  v89 = fpfs_current_log();
  v114 = *(v88 + 16);
  v90 = v111;
  sub_1CEFCCBDC(v117, v111, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v81 + 48))(v90, 1, v78) == 1)
  {
    sub_1CEFCCC44(v90, &unk_1EC4BE370, qword_1CFA01B30);
    v91 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v92 = v99;
    sub_1CF9E6438();
    (*(v81 + 8))(v90, v78);
    v91 = sub_1CF9E63C8();
    (*(v100 + 8))(v92, v101);
  }

  v93 = swift_allocObject();
  v93[2] = v89;
  v93[3] = sub_1CF4858EC;
  v93[4] = v80;
  v121 = sub_1CF2BA17C;
  v122 = v93;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v119 = sub_1CEFCA444;
  v120 = &block_descriptor_4023;
  v94 = _Block_copy(&aBlock);
  v95 = v89;

  v121 = sub_1CF2BA180;
  v122 = v87;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v119 = sub_1CEFCA444;
  v120 = &block_descriptor_4026;
  v96 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v114, v106, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v91, v94, v96);
  _Block_release(v96);
  _Block_release(v94);

  sub_1CEFCCC44(v117, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CEFD5338(v115, type metadata accessor for Signpost);
  v97 = v110;
  v98 = fpfs_adopt_log();
}

void sub_1CF8A0EB4(void *a1, uint64_t a2, void *a3, void (*a4)(id), uint64_t a5, Swift::UInt a6)
{
  v88 = a4;
  v86 = a6;
  v87 = a5;
  v9 = sub_1CF9E5CF8();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v76 = &v67[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1CF9E5268();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v83 = &v67[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v82 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67[-v18];
  v21 = a1[3];
  v20 = a1[4];
  v85 = a1;
  v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = *(a2 + 16);

  v84 = a3;
  v24 = [a3 identifier];
  v95 = v24;
  v25 = v89;
  sub_1CF68E230(&v95, v22, v21, *(v20 + 8), v96);
  if (v25)
  {

    return;
  }

  v74 = v17;
  v89 = v23;
  v27 = v84;
  v26 = v85;
  v28 = v86;

  memcpy(v93, v96, sizeof(v93));
  memcpy(v94, v96, sizeof(v94));
  if (sub_1CF08B99C(v94) == 1)
  {
    v29 = [v27 identifier];
    v30 = FPItemNotFoundError();

    v88(v30);
    return;
  }

  v31 = LOBYTE(v94[27]);
  v32 = v88;
  if (LOBYTE(v94[27]) == 255 || (v94[28] & 0x51) != 0)
  {
    v33 = [v27 identifier];
    v34 = FPItemNotFoundError();

    v32(v34);
LABEL_8:

    v35 = &unk_1EC4BFD80;
    v36 = &unk_1CFA0A2A0;
    v37 = v93;
LABEL_9:
    sub_1CEFCCC44(v37, v35, v36);
    return;
  }

  v38 = v94[26];
  v39 = v26[4];
  v73 = v26[3];
  v70 = v39;
  v72 = __swift_project_boxed_opaque_existential_1(v26, v73);
  v40 = *(v89 + 32);
  v69 = v38;
  v91 = v38;
  v68 = v31;
  v92 = v31;
  v71 = *(*v40 + 240);
  v41 = *(v70 + 8);

  v42 = v83;
  v71(&v91, 1, v72, v73, v41);
  v43 = v69;

  v44 = v74;
  if ((*(v82 + 48))(v42, 1, v74) == 1)
  {
    sub_1CEFCCC44(v42, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v45 = [v27 identifier];
    v34 = FPItemNotFoundError();

    v88(v34);
    goto LABEL_8;
  }

  v46 = v19;
  sub_1CEFE55D0(v42, v19, &unk_1EC4BE360, &qword_1CF9FE650);
  v47.rawValue = v28;
  if (v28)
  {
    v56 = &v46[*(v44 + 48)];
    if ((v56[*(type metadata accessor for ItemMetadata(0) + 80)] & 1) != 0 || *v56 == 1)
    {
      sub_1CF9E5218();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
      v57 = v75;
      v58 = v78;
      sub_1CF9E57D8();
      v59 = sub_1CF9E50D8();
      (*(v77 + 8))(v57, v58);
      v88(v59);

      goto LABEL_20;
    }
  }

  v48 = v26;
  v49 = v26[3];
  v84 = v48[4];
  v85 = __swift_project_boxed_opaque_existential_1(v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1CF9FA450;
  Fields.init(_:)(v47);
  v51 = v91;
  v52 = v79;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v54 = v53;
  (*(v80 + 8))(v52, v81);
  v55 = v54 * 1000000000.0;
  if (COERCE__INT64(fabs(v54 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v55 < 9.22337204e18)
  {
    v90 = 0;
    *(v50 + 32) = v43;
    *(v50 + 40) = v68;
    *(v50 + 41) = 0;
    *(v50 + 48) = v51;
    *(v50 + 56) = 0x2000000000000000;
    *(v50 + 64) = v55;
    *(v50 + 146) = 2560;
    sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v50, v85, v49, v84);
    v50, v60, v61, v62, v63, v64, v65, v66;
    v88(0);
LABEL_20:
    sub_1CEFCCC44(v93, &unk_1EC4BFD80, &unk_1CFA0A2A0);
    v35 = &unk_1EC4BE360;
    v36 = &qword_1CF9FE650;
    v37 = v46;
    goto LABEL_9;
  }

LABEL_23:
  __break(1u);
}

void sub_1CF8A17EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E6118();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v39 - v13);
  sub_1CEFCCBDC(a1, &v39 - v13, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v17 = sub_1CF9E6108();
    v18 = sub_1CF9E72A8();

    if (os_log_type_enabled(v17, v18))
    {
      v40 = a3;
      v19 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v19 = 136315138;
      v20 = swift_beginAccess();
      v21 = *(a2 + 32);
      v22 = *(a2 + 40);
      if (*(a2 + 41))
      {
        v23 = NSFileProviderItemIdentifier.description.getter(v21);
        v25 = v24;
        sub_1CEFD0994(v21, v22, 1);
        v26 = v23;
      }

      else
      {
        v46 = *(a2 + 32);
        LOBYTE(v47) = v22;
        v26 = VFSItemID.description.getter(v20);
        v25 = v28;
      }

      v29 = sub_1CEFD0DF0(v26, v25, &v45);
      v25, v30, v31, v32, v33, v34, v35, v36;
      *(v19 + 4) = v29;
      _os_log_impl(&dword_1CEFC7000, v17, v18, "Failed to materialize fallback destination %s", v19, 0xCu);
      v37 = v39;
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1D386CDC0](v37, -1, -1);
      MEMORY[0x1D386CDC0](v19, -1, -1);

      (*(v41 + 8))(v11, v42);
      a3 = v40;
    }

    else
    {

      (*(v41 + 8))(v11, v42);
    }

    v46 = v15;
    v47 = 256;
    v38 = v15;
    a3(&v46);

    sub_1CF8FDA2C(v46, v47, SHIBYTE(v47));
  }

  else
  {
    sub_1CEFDA0C4(v14, v8, type metadata accessor for VFSItem);
    v27 = v8[8];
    v43 = *v8;
    v44 = v27;
    a3(&v43);
    sub_1CEFD5338(v8, type metadata accessor for VFSItem);
  }
}

void sub_1CF8A1BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void **), uint64_t a7, uint64_t a8)
{
  v130 = a8;
  v139 = a7;
  v140 = a6;
  v137 = a5;
  v138 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v127 - v11;
  v134 = sub_1CF9E5A58();
  v13 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v127 - v16;
  v17 = type metadata accessor for VFSItem(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E6118();
  v135 = *(v20 - 8);
  v136 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v127 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v127 - v26);
  sub_1CEFCCBDC(a1, &v127 - v26, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (a2)
    {
      v29 = a2;

      v30 = fpfs_current_or_default_log();
      sub_1CF9E6128();

      v31 = sub_1CF9E6108();
      v32 = sub_1CF9E72A8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v141 = v34;
        *v33 = 136315138;
        v35 = swift_beginAccess();
        v36 = *(v29 + 32);
        v37 = *(v29 + 40);
        if (*(v29 + 41))
        {
          v134 = NSFileProviderItemIdentifier.description.getter(v36);
          v39 = v38;
          sub_1CEFD0994(v36, v37, 1);
          v40 = v134;
        }

        else
        {
          v143 = *(v29 + 32);
          v144 = v37;
          v40 = VFSItemID.description.getter(v35);
          v39 = v90;
        }

        v91 = sub_1CEFD0DF0(v40, v39, &v141);
        v39, v92, v93, v94, v95, v96, v97, v98;
        *(v33 + 4) = v91;
        _os_log_impl(&dword_1CEFC7000, v31, v32, "Failed to materialize new parent, attempting to fall back to %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1D386CDC0](v34, -1, -1);
        MEMORY[0x1D386CDC0](v33, -1, -1);
      }

      (*(v135 + 8))(v24, v136);
      sub_1CF8F4034(v29, v138, v137, v140, v139);
    }

    else
    {
      v145 = *v27;
      v146 = 256;
      v47 = v28;
      v140(&v145);

      sub_1CF8FDA2C(v145, v146, SHIBYTE(v146));
    }
  }

  else
  {
    sub_1CEFDA0C4(v27, v19, type metadata accessor for VFSItem);
    v41 = v19;
    if (a2)
    {
      v42 = a2;

      sub_1CF25116C(v12);
      v43 = v13;
      v44 = *(v13 + 48);
      v45 = v134;
      if (v44(v12, 1, v134) == 1)
      {
        sub_1CEFCCC44(v12, &unk_1EC4BE310, qword_1CF9FCBE0);
        v46 = v19[8];
        v145 = *v19;
        v146 = v46;
        v140(&v145);
      }

      else
      {
        v49 = v133;
        (*(v43 + 32))(v133, v12, v45);
        type metadata accessor for VFSFileTree(0);
        v50 = swift_dynamicCastClassUnconditional();

        v51 = objc_sync_enter(v50);
        if (v51)
        {
          MEMORY[0x1EEE9AC00](v51);
          *(&v127 - 2) = v50;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &(&v127)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
        }

        isa = v50[20].isa;

        v53 = objc_sync_exit(v50);
        v54 = v132;
        if (v53)
        {
          MEMORY[0x1EEE9AC00](v53);
          *(&v127 - 2) = v50;
          fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &(&v127)[-4], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
        }

        (*(v43 + 16))(v54, isa + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v45);

        sub_1CF9E5A18();
        v56 = v55;
        sub_1CF9E5A18();
        v58 = v57;
        v59 = sub_1CF9E6AE8();
        v56, v60, v61, v62, v63, v64, v65, v66;
        v58, v67, v68, v69, v70, v71, v72, v73;
        if (v59)
        {
          v74 = fpfs_current_or_default_log();
          v75 = v131;
          sub_1CF9E6128();

          v76 = v130;

          v77 = sub_1CF9E6108();
          v78 = sub_1CF9E7298();

          v129 = v78;
          if (os_log_type_enabled(v77, v78))
          {
            v127 = v77;
            v128 = v41;
            v79 = v42;
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v147[0] = v81;
            *v80 = 136315394;
            v82 = swift_beginAccess();
            v83 = *(v76 + 32);
            v84 = *(v76 + 40);
            v85 = v138;
            if (*(v76 + 41))
            {
              v86 = NSFileProviderItemIdentifier.description.getter(v83);
              v88 = v87;
              sub_1CEFD0994(v83, v84, 1);
              v89 = v86;
            }

            else
            {
              v143 = *(v76 + 32);
              v144 = v84;
              v89 = VFSItemID.description.getter(v82);
              v88 = v100;
            }

            v101 = sub_1CEFD0DF0(v89, v88, v147);
            v88, v102, v103, v104, v105, v106, v107, v108;
            *(v80 + 4) = v101;
            *(v80 + 12) = 2080;
            v109 = swift_beginAccess();
            v110 = *(v79 + 32);
            v111 = *(v79 + 40);
            if (*(v79 + 41))
            {
              v112 = NSFileProviderItemIdentifier.description.getter(v110);
              v114 = v113;
              sub_1CEFD0994(v110, v111, 1);
              v115 = v112;
            }

            else
            {
              v141 = *(v79 + 32);
              v142 = v111;
              v115 = VFSItemID.description.getter(v109);
              v114 = v116;
            }

            v117 = sub_1CEFD0DF0(v115, v114, v147);
            v114, v118, v119, v120, v121, v122, v123, v124;
            *(v80 + 14) = v117;
            v125 = v127;
            _os_log_impl(&dword_1CEFC7000, v127, v129, "Destination %s for item is in the trash, falling back to %s", v80, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v81, -1, -1);
            MEMORY[0x1D386CDC0](v80, -1, -1);

            (*(v135 + 8))(v131, v136);
            v42 = v79;
            v41 = v128;
            v54 = v132;
            v49 = v133;
          }

          else
          {

            (*(v135 + 8))(v75, v136);
            v85 = v138;
          }

          sub_1CF8F4034(v42, v85, v137, v140, v139);
        }

        else
        {
          v99 = *(v41 + 8);
          v145 = *v41;
          v146 = v99;
          v140(&v145);
        }

        v126 = *(v43 + 8);
        v126(v54, v45);
        v126(v49, v45);
      }
    }

    else
    {
      v48 = v19[8];
      v145 = *v19;
      v146 = v48;
      v140(&v145);
    }

    sub_1CEFD5338(v41, type metadata accessor for VFSItem);
  }
}

void sub_1CF8A2598(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1CF5162A0(sub_1CF8FD974);
  if (v2)
  {

    *a2 = 0;
    return;
  }

  v7 = v6;
  v30 = sub_1CF195D88(v6);
  v31 = v8;
  if ((v7 & 0x8000000000000000) == 0)
  {
    sub_1CF9E5AF8();
    sub_1CF8DCBB4(&v30, a1);
    v9 = v30;
    v10 = v31;
    sub_1CEFE42D4(v30, v31);
    sub_1CF9E6918();
    v11 = sub_1CF9E68D8();
    if (v12)
    {
      v13 = v12;
      v14 = (v12 >> 56) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = sub_1CF9E6888();
        sub_1CEFE4714(v9, v10);
        v13, v16, v17, v18, v19, v20, v21, v22;
LABEL_12:
        sub_1CEFE4714(v9, v10);
        *a2 = v15;
        return;
      }

      sub_1CEFE4714(v9, v10);
      v13, v23, v24, v25, v26, v27, v28, v29;
    }

    else
    {
      sub_1CEFE4714(v9, v10);
    }

    v15 = 0;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1CF8A2748(void *a1, Swift::UInt a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, unsigned __int8 a9)
{
  v154 = a5;
  v155 = a7;
  v153 = a1;
  v150 = a9;
  LODWORD(v151) = a8;
  v13 = sub_1CF9E6118();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v156 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v147 - v17;
  v19 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v20 = a3;
  sub_1CEFD09A0(a4);
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();

  sub_1CEFD0A98(a4);
  v23 = os_log_type_enabled(v21, v22);
  v157 = v14;
  v158 = v13;
  v149.rawValue = a2;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v148 = a6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v160 = v27;
    *v24 = 136315650;
    v28 = sub_1CF7F5844(a2);
    v30 = v29;
    v31 = sub_1CEFD0DF0(v28, v29, &v160);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v24 + 4) = v31;
    *(v24 + 12) = 2112;
    v39 = [v20 itemID];
    *(v24 + 14) = v39;
    *v26 = v39;
    *(v24 + 22) = 2080;
    v40 = sub_1CEFD11AC(a4);
    v42 = v41;
    v43 = sub_1CEFD0DF0(v40, v41, &v160);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v24 + 24) = v43;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "Request to modify fields %s for item with ID %@: %s", v24, 0x20u);
    sub_1CEFCCC44(v26, &qword_1EC4BE350, &unk_1CF9FC3B0);
    v51 = v26;
    a6 = v148;
    MEMORY[0x1D386CDC0](v51, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v27, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);

    v152 = *(v157 + 8);
    v152(v18, v158);
  }

  else
  {

    v152 = *(v14 + 8);
    v152(v18, v13);
  }

  v52 = swift_allocObject();
  *(v52 + 16) = v154;
  *(v52 + 24) = a6;
  v53 = swift_allocObject();
  v54 = v153;
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = sub_1CF90325C;
  v55[3] = v52;
  v55[4] = v53;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1CF8FD874;
  *(v56 + 24) = v55;
  v57 = swift_allocObject();
  rawValue = v149.rawValue;
  Fields.init(_:)(v149);

  v59 = [v20 itemID];
  v60 = sub_1CEFD4E9C([v59 identifier]);

  v154 = v54[2];
  v61 = swift_allocObject();
  *(v61 + 16) = v20;
  *(v61 + 24) = sub_1CF903440;
  *(v61 + 32) = v56;
  *(v61 + 40) = rawValue;
  v62 = v155;
  *(v61 + 48) = v57;
  *(v61 + 56) = v62;
  *(v61 + 64) = a4;
  *(v61 + 72) = v54;
  *(v61 + 80) = v151 & 1;
  *(v61 + 81) = v150 & 1;
  v63 = objc_allocWithZone(MEMORY[0x1E696AE38]);
  v64 = v20;
  sub_1CEFD09A0(a4);

  v65 = v62;

  v153 = [v63 init];
  v66 = swift_allocObject();
  v66[2] = sub_1CF8FD884;
  v66[3] = v61;
  v155 = v66;
  v66[4] = a4;
  sub_1CEFD09A0(a4);

  sub_1CEFD09A0(a4);

  v67 = fpfs_current_or_default_log();
  v68 = v156;
  sub_1CF9E6128();
  sub_1CEFD09A0(a4);
  sub_1CEFD09A0(a4);

  v69 = sub_1CF9E6108();
  v70 = sub_1CF9E7298();
  if (os_log_type_enabled(v69, v70))
  {
    v147 = v57;
    v148 = v56;
    v71 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v159 = v151;
    *v71 = 136315906;
    v72 = swift_beginAccess();
    v73 = *(v60 + 32);
    v74 = *(v60 + 40);
    if (*(v60 + 41))
    {
      v75 = NSFileProviderItemIdentifier.description.getter(v73);
      v77 = v76;
      sub_1CEFD0994(v73, v74, 1);
    }

    else
    {
      v160 = *(v60 + 32);
      v161 = v74;
      v75 = VFSItemID.description.getter(v72);
      v77 = v78;
    }

    v79 = sub_1CEFD0DF0(v75, v77, &v159);
    v77, v80, v81, v82, v83, v84, v85, v86;
    *(v71 + 4) = v79;
    *(v71 + 12) = 2080;
    *(v71 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, &v159);
    *(v71 + 22) = 2080;
    v87 = sub_1CEFD11AC(a4);
    v89 = v88;
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);
    v90 = sub_1CEFD0DF0(v87, v89, &v159);
    v89, v91, v92, v93, v94, v95, v96, v97;
    *(v71 + 24) = v90;
    *(v71 + 32) = 2048;
    *(v71 + 34) = 0;
    _os_log_impl(&dword_1CEFC7000, v69, v70, "Lookup itemID %s with behavior %s request %s iteration %ld", v71, 0x2Au);
    v98 = v151;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v98, -1, -1);
    MEMORY[0x1D386CDC0](v71, -1, -1);

    v152(v156, v158);
    v57 = v147;
    v56 = v148;
  }

  else
  {
    sub_1CEFD0A98(a4);
    sub_1CEFD0A98(a4);

    v152(v68, v158);
  }

  swift_beginAccess();
  v99 = *(v60 + 32);
  v100 = *(v60 + 40);
  if (*(v60 + 41))
  {
    v101 = qword_1EDEA34B0;
    v102 = v99;
    if (v101 != -1)
    {
      swift_once();
    }

    v103 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v105 = v104;
    v107 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v113 = v106;
    if (v103 == v107 && v105 == v106)
    {
      v105, v106, v107, v108, v109, v110, v111, v112;
      v113, v114, v115, v116, v117, v118, v119, v120;
      sub_1CEFD0994(v99, v100, 1);
LABEL_18:
      sub_1CF90CAC8(a4, sub_1CF796A0C, v155);
      v121 = v153;
      goto LABEL_24;
    }

    v122 = sub_1CF9E8048();
    v105, v123, v124, v125, v126, v127, v128, v129;
    v113, v130, v131, v132, v133, v134, v135, v136;
    sub_1CEFD0994(v99, v100, 1);
    if (v122)
    {
      goto LABEL_18;
    }
  }

  else if (!v99 && v100 == 2)
  {
    goto LABEL_18;
  }

  v147 = v57;
  v148 = v56;
  if (((a4 >> 58) & 0x3C | (a4 >> 1) & 3) == 0x1E)
  {
    v137 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
    v138 = v137;
  }

  else
  {
    v139 = swift_allocObject();
    *(v139 + 16) = a4;
    v138 = v139 | 0x7000000000000004;
    v137 = a4;
  }

  v121 = v153;
  sub_1CEFD09A0(v137);
  v140 = swift_allocObject();
  v142 = v154;
  v141 = v155;
  *(v140 + 16) = sub_1CF796A0C;
  *(v140 + 24) = v141;
  *(v140 + 32) = v142;
  *(v140 + 40) = 1;
  *(v140 + 48) = a4;
  *(v140 + 56) = v60;
  *(v140 + 64) = 0;
  *(v140 + 72) = v121;
  *(v140 + 80) = 0;
  v143 = swift_allocObject();
  *(v143 + 16) = v60;
  *(v143 + 24) = v142;
  *(v143 + 32) = 0;
  *(v143 + 40) = sub_1CF796A90;
  *(v143 + 48) = v140;
  *(v143 + 56) = v138;
  v144 = swift_allocObject();
  *(v144 + 16) = sub_1CF796A90;
  *(v144 + 24) = v140;

  sub_1CEFD09A0(a4);

  v158 = a4;

  v145 = v121;
  sub_1CEFD09A0(v138);
  sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v144, sub_1CF796A9C, v143);

  a4 = v158;
  sub_1CEFD0A98(v138);
LABEL_24:

  sub_1CEFD0A98(a4);
}

void sub_1CF8A31A8(uint64_t a1, char *a2, uint64_t a3, void *a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, char *a7, unint64_t a8, unint64_t a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v913 = a6;
  v914 = a8;
  v918 = a7;
  v920 = a5;
  v922 = a4;
  v921 = a3;
  v919 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFB10, &unk_1CFA12AD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v893 = &v850 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C1588, &unk_1CFA0A260);
  v894 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v897 = (&v850 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v895 = (&v850 - v17);
  v896 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v907 = &v850 - v20;
  v881 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
  MEMORY[0x1EEE9AC00](v881);
  v880 = &v850 - v21;
  v22 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v873 = &v850 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1CF9E5268();
  v874 = *(v24 - 8);
  v875 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v872 = &v850 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v888 = &v850 - v27;
  v899 = sub_1CF9E63D8();
  v906 = *(v899 - 8);
  MEMORY[0x1EEE9AC00](v899);
  v890 = &v850 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v898 = &v850 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v885 = &v850 - v32;
  v892 = sub_1CF9E6448();
  v903 = *(v892 - 8);
  MEMORY[0x1EEE9AC00](v892);
  v887 = &v850 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v886 = &v850 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v891 = &v850 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v909 = &v850 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v883 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v889 = &v850 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v884 = v41;
  MEMORY[0x1EEE9AC00](v42);
  v910 = &v850 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v876 = &v850 - v45;
  v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FE8, &unk_1CFA18180);
  MEMORY[0x1EEE9AC00](v867);
  v866 = &v850 - v46;
  v47 = sub_1CF9E53C8();
  v859 = *(v47 - 8);
  v860 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v858 = &v850 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v865 = &v850 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v869 = &v850 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v879 = &v850 - v54;
  v55 = sub_1CF9E5A58();
  v56 = *(v55 - 8);
  v901 = v55;
  v902 = v56;
  MEMORY[0x1EEE9AC00](v55);
  v861 = &v850 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v863 = &v850 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v864 = &v850 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v878 = &v850 - v63;
  v877 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v877);
  v908 = &v850 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for VFSItem(0);
  v871 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v882 = &v850 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v870 = &v850 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v862 = &v850 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v868 = &v850 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v850 - v74;
  v917 = sub_1CF9E6118();
  v916 = *(v917 - 1);
  MEMORY[0x1EEE9AC00](v917);
  v905 = &v850 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v857 = &v850 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v904 = &v850 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v856 = &v850 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v850 - v84;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  MEMORY[0x1EEE9AC00](v86);
  v88 = (&v850 - v87);
  sub_1CEFCCBDC(v919, &v850 - v87, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v911 = swift_allocBox();
    v101 = v100;
    sub_1CEFDA0C4(v88, v100, type metadata accessor for VFSItem);
    v912 = a2;
    v102 = sub_1CF0689E4();
    v919 = sub_1CEFD4E9C(v102);
    v915 = swift_allocBox();
    v104 = v103;
    v900 = v101;
    sub_1CEFDA34C(v101, v75, type metadata accessor for VFSItem);
    v105 = *(v75 + 2);
    v106 = v75[24];
    v108 = *(v75 + 4);
    v107 = *(v75 + 5);
    v852 = v65;
    sub_1CEFDA34C(&v75[*(v65 + 28)], v104 + *(v40 + 40), type metadata accessor for ItemMetadata);

    sub_1CEFD5338(v75, type metadata accessor for VFSItem);
    *v104 = v105;
    *(v104 + 8) = v106;
    v109 = v104;
    *(v104 + 16) = v108;
    *(v104 + 24) = v107;
    v110 = v920;
    v111 = v913;
    v112 = v40;
    if ((v920 & 0x40000000) != 0)
    {
      swift_beginAccess();
      v113 = *(v111 + 16);
      if ((v113 & 2) == 0)
      {
        *(v111 + 16) = v113 | 2;
      }
    }

    swift_beginAccess();
    *&v940 = *(v111 + 16);
    v114 = v908;
    v115 = v912;
    sub_1CEFF54BC(v908);
    sub_1CF677700(&v940, v114);
    sub_1CEFD5338(v114, type metadata accessor for ItemMetadata);
    swift_beginAccess();
    if (*(v111 + 16))
    {
      v116 = [v115 filename];
      v117 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v118 = v110;
      v120 = v119;

      *&v940 = v117;
      *(&v940 + 1) = v120;
      *&v925 = 58;
      *(&v925 + 1) = 0xE100000000000000;
      *&v934 = 47;
      *(&v934 + 1) = 0xE100000000000000;
      v848 = sub_1CEFE4E68();
      v849 = v848;
      v846 = MEMORY[0x1E69E6158];
      v847 = v848;
      v121 = sub_1CF9E7668();
      v123 = v122;
      v124 = v120;
      v110 = v118;
      v124, v122, v125, v126, v127, v128, v129, v130;
      v131 = *(v109 + 24);
      *(v109 + 16) = v121;
      *(v109 + 24) = v123;
      v131, v132, v133, v134, v135, v136, v137, v138;
    }

    v139 = v900;
    v855 = v109;
    v851 = v112;
    if ((v110 & 0x40000000) == 0)
    {
      v908 = 0;
      v850 = 0;
      goto LABEL_31;
    }

    if ([v115 isTrashed])
    {
      v140 = sub_1CEFD4E9C(*MEMORY[0x1E6967280]);

      v908 = 0;
LABEL_14:
      v850 = 0;
LABEL_30:
      v919 = v140;
      goto LABEL_31;
    }

    v141 = [v115 parentItemIdentifier];
    v142 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v144 = v143;
    v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v147 = v146;
    if (v142 == v145 && v144 == v146)
    {

      v144, v148, v149, v150, v151, v152, v153, v154;
      v147, v155, v156, v157, v158, v159, v160, v161;
    }

    else
    {
      v162 = sub_1CF9E8048();

      v144, v163, v164, v165, v166, v167, v168, v169;
      v147, v170, v171, v172, v173, v174, v175, v176;
      if ((v162 & 1) == 0)
      {
        v115 = v912;
        v514 = sub_1CF0689E4();
        v140 = sub_1CEFD4E9C(v514);

        v515 = [v115 providerID];
        v516 = [v515 fp_isiCloudDriveIdentifier];

        v517 = MEMORY[0x1E6967160];
        if (!v516)
        {
          v517 = MEMORY[0x1E6967258];
        }

        v908 = sub_1CEFD4E9C(*v517);

        goto LABEL_14;
      }
    }

    v177 = v879;
    sub_1CF25116C(v879);
    v178 = v901;
    v179 = v902;
    if ((*(v902 + 48))(v177, 1, v901) == 1)
    {
      sub_1CEFCCC44(v177, &unk_1EC4BE310, qword_1CF9FCBE0);
      v850 = 0;
      v115 = v912;
LABEL_26:
      v210 = [v115 providerID];
      v211 = [v210 fp_isiCloudDriveIdentifier];

      if (v211)
      {
        v212 = MEMORY[0x1E6967160];
      }

      else
      {
        v212 = MEMORY[0x1E6967258];
      }

      v140 = sub_1CEFD4E9C(*v212);

      v908 = 0;
      goto LABEL_30;
    }

    (*(v179 + 32))(v878, v177, v178);
    sub_1CF9E5A18();
    v181 = v180;
    *&v925 = 1;
    *&v934 = 0;
    v182 = swift_allocObject();
    v182[2] = &v925;
    v182[3] = sub_1CF8A2598;
    v182[4] = 0;
    v182[5] = &v934;
    v183 = swift_allocObject();
    *(v183 + 16) = sub_1CF8FD968;
    *(v183 + 24) = v182;
    *&v942 = sub_1CF50EB9C;
    *(&v942 + 1) = v183;
    *&v940 = MEMORY[0x1E69E9820];
    *(&v940 + 1) = 1107296256;
    *&v941 = sub_1CF005DF8;
    *(&v941 + 1) = &block_descriptor_3880;
    v184 = _Block_copy(&v940);

    sub_1CF9E6978();
    v185 = fpfs_openat();

    _Block_release(v184);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    v195 = v934;
    if (v934)
    {
      swift_willThrow();
      v181, v196, v197, v198, v199, v200, v201, v202;

      v850 = 0;
      v115 = v912;
LABEL_24:
      v181, v203, v204, v205, v206, v207, v208, v209;
      (*(v902 + 8))(v878, v901);
      sub_1CF00D644(v925);
LABEL_25:
      v139 = v900;
      goto LABEL_26;
    }

    v115 = v912;
    if ((v185 & 0x80000000) != 0)
    {
      if (!MEMORY[0x1D38683F0](v187))
      {
        v181, v585, v586, v587, v588, v589, v590, v591;
        *&v940 = 0;
        *(&v940 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        *(&v940 + 1), v768, v769, v770, v771, v772, v773, v774;
        *&v940 = 0xD00000000000001ALL;
        *(&v940 + 1) = 0x80000001CFA2DF30;
        v933[0] = v185;
        v775 = sub_1CF9E7F98();
        v777 = v776;
        MEMORY[0x1D3868CC0](v775);
        v777, v778, v779, v780, v781, v782, v783, v784;
        MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
        v785 = v940;
        v786 = fpfs_current_or_default_log();
        sub_1CF9E6128();

        v787 = sub_1CF9E6108();
        v788 = sub_1CF9E72B8();
        *(&v785 + 1), v789, v790, v791, v792, v793, v794, v795;
        if (os_log_type_enabled(v787, v788))
        {
          v185 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          *&v940 = v111;
          *v185 = 136315650;
          v796 = sub_1CF9E7988();
          v798 = v797;
          v799 = sub_1CEFD0DF0(v796, v797, &v940);
          v798, v800, v801, v802, v803, v804, v805, v806;
          *(v185 + 4) = v799;
          *(v185 + 12) = 2048;
          *(v185 + 14) = 315;
          *(v185 + 22) = 2080;
          *(v185 + 24) = sub_1CEFD0DF0(v785, *(&v785 + 1), &v940);
          _os_log_impl(&dword_1CEFC7000, v787, v788, "[ASSERT] ‼️  %s:%lu: %s", v185, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v111, -1, -1);
          MEMORY[0x1D386CDC0](v185, -1, -1);
        }

        (*(v916 + 8))(v856, v917);
        LODWORD(v849) = 0;
        v848 = 315;
        goto LABEL_173;
      }

      if (MEMORY[0x1D38683F0]() != 9939394)
      {
        MEMORY[0x1D38683F0]();
        v613 = sub_1CF9E6138();
        if ((v613 & 0x100000000) != 0)
        {
          LODWORD(v940) = 22;
        }

        else
        {
          LODWORD(v940) = v613;
        }

        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        v614 = v858;
        v615 = v860;
        sub_1CF9E57D8();
        v616 = sub_1CF9E53A8();
        (*(v859 + 8))(v614, v615);
        swift_willThrow();

        v181, v617, v618, v619, v620, v621, v622, v623;
        v850 = 0;
        goto LABEL_24;
      }

      v592 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
      swift_willThrow();

      swift_bridgeObjectRelease_n();
      (*(v902 + 8))(v878, v901);
      sub_1CF00D644(v925);
    }

    else
    {
      v181, v188, v189, v190, v191, v192, v193, v194;
      isEscapingClosureAtFileLocation = v925;
      if (v925 == 1)
      {
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v181, v531, v532, v533, v534, v535, v536, v537;
      if (isEscapingClosureAtFileLocation)
      {
        v538 = sub_1CEFD4E9C(isEscapingClosureAtFileLocation);

        v539 = [v912 providerID];
        v540 = [v539 fp_isiCloudDriveIdentifier];

        v541 = MEMORY[0x1E6967160];
        if (!v540)
        {
          v541 = MEMORY[0x1E6967258];
        }

        v542 = sub_1CEFD4E9C(*v541);
        sub_1CF00D644(isEscapingClosureAtFileLocation);
        (*(v902 + 8))(v878, v901);
        v908 = v542;

        v850 = 0;
        v919 = v538;
        v115 = v912;
        v139 = v900;
LABEL_31:
        v854 = *(v139 + 16);
        v853 = *(v139 + 24);
        swift_beginAccess();
        v213 = *(v111 + 16);
        v214 = swift_allocObject();
        v215 = v921;
        *(v214 + 16) = v115;
        *(v214 + 24) = v215;
        v216 = v915;
        *(v214 + 32) = v922;
        *(v214 + 40) = v216;
        LODWORD(v856) = a10;
        *(v214 + 48) = a10 & 1;
        LODWORD(v878) = a11;
        *(v214 + 49) = a11 & 1;
        *(v214 + 56) = v111;
        *(v214 + 64) = a9;
        v217 = v920;
        *(v214 + 72) = v911;
        *(v214 + 80) = v217;
        v218 = v918;
        *(v214 + 88) = v918;
        v879 = v214;
        if ((v213 & 2) == 0)
        {
          v914 = a9;
          v219 = v855;
          swift_beginAccess();
          v220 = v854;
          *v219 = v854;
          v221 = v853;
          *(v219 + 8) = v853;
          if (v856)
          {
            v222 = 0;
          }

          else
          {
            v222 = 4;
          }

          v905 = v222;
          if ((v878 & 1) == 0)
          {
            v283 = v912;
            v284 = v918;

            v226 = v914;

            v223 = v913;

            goto LABEL_44;
          }

          v223 = v913;
          swift_beginAccess();
          v224 = v918;
          v225 = v900;
          v226 = v914;
          if ((v223[16] & 3) == 0)
          {
            v432 = v912;
            v433 = v224;

            v285 = v910;
            goto LABEL_76;
          }

          v227 = v221;
          v228 = *(*(*(v914 + 16) + 32) + 16);
          type metadata accessor for VFSFileTree(0);
          v229 = swift_dynamicCastClassUnconditional();
          v230 = v228;
          v231 = *(v219 + 16);
          v232 = *(v219 + 24);
          v897 = v231;
          swift_beginAccess();
          v904 = *v225;
          v233 = *(v225 + 8);
          *&v934 = v220;
          BYTE8(v934) = v227;
          v234 = v918;
          isEscapingClosureAtFileLocation = v229;
          v944 = 0u;
          v945 = 0u;
          v942 = 0u;
          v943 = 0u;
          v940 = 0u;
          v941 = 0u;
          v235 = v912;
          v236 = v234;

          v907 = v230;

          sub_1CEFDAA48(&v934, &v940, &v925, v237, v238, v239, v240, v241, v242);
          v243 = v925;
          v928, v244, v245, v246, v247, v248, v249, v250;
          v251 = v876;
          v252 = v850;
          sub_1CF263ADC(v243, 0, 1, v876);
          if (v252)
          {

            v232, v253, v254, v255, v256, v257, v258, v259;

LABEL_39:
            sub_1CF9E50F8();
            sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
            sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
            v260 = v872;
            v261 = v875;
            sub_1CF9E57D8();
            v262 = sub_1CF9E50D8();
            (*(v874 + 8))(v260, v261);
            (v921)(0, v262);

            return;
          }

          v518 = v897;
          v519 = v232;
          LODWORD(v896) = v233;
          if ((*(v871 + 48))(v251, 1, v852) == 1)
          {
            sub_1CEFCCC44(v251, &unk_1EC4BEC00, &unk_1CF9FCB60);
            v520 = swift_allocObject();
            *(v520 + 16) = 1;
            v521 = v520 | 0x7000000000000000;
            sub_1CF1B8150();
            v522 = swift_allocError();
            *v523 = v521;

            v232, v524, v525, v526, v527, v528, v529, v530;
            *&v940 = v904;
            BYTE8(v940) = v896;
            v941 = 0u;
            v942 = 0u;
            v943 = 0u;
            v944 = 0u;
            v945 = 0u;
            v946 = 0u;
            v947 = v522;
            sub_1CEFCCC44(&v940, &unk_1EC4C4FF0, &unk_1CFA18190);
            goto LABEL_39;
          }

          v543 = v870;
          sub_1CEFDA0C4(v251, v870, type metadata accessor for VFSItem);
          v187 = objc_sync_enter(isEscapingClosureAtFileLocation);
          v544 = v904;
          if (v187)
          {
LABEL_168:
            MEMORY[0x1EEE9AC00](v187);
            v848 = isEscapingClosureAtFileLocation;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v846, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          v545 = objc_sync_exit(isEscapingClosureAtFileLocation);
          v546 = v902;
          v547 = v869;
          if (v545)
          {
            MEMORY[0x1EEE9AC00](v545);
            v848 = isEscapingClosureAtFileLocation;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v846, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
          }

          sub_1CF25116C(v869);
          v548 = v901;
          v895 = *(v546 + 48);
          if ((v895)(v547, 1, v901) == 1)
          {
            sub_1CEFCCC44(v547, &unk_1EC4BE310, qword_1CF9FCBE0);
            sub_1CF1B8150();
            v549 = swift_allocError();
            *v550 = 0xB000000000000008;
            v519, v550, v551, v552, v553, v554, v555, v556;
            *&v940 = v544;
            BYTE8(v940) = v896;
            v941 = 0u;
            v942 = 0u;
            v943 = 0u;
            v944 = 0u;
            v945 = 0u;
            v946 = 0u;
            v947 = v549;
            sub_1CEFD5338(v543, type metadata accessor for VFSItem);

            sub_1CEFCCC44(&v940, &unk_1EC4C4FF0, &unk_1CFA18190);
            goto LABEL_39;
          }

          v904 = *(v546 + 32);
          v557 = v547;
          v558 = v863;
          (v904)(v863, v557, v548);
          *&v940 = v518;
          *(&v940 + 1) = v519;
          *&v925 = 47;
          *(&v925 + 1) = 0xE100000000000000;
          *&v934 = 58;
          *(&v934 + 1) = 0xE100000000000000;
          v848 = sub_1CEFE4E68();
          v849 = v848;
          v846 = MEMORY[0x1E69E6158];
          v847 = v848;
          sub_1CF9E7668();
          v560 = v559;
          v561 = v864;
          sub_1CF9E5958();
          v519, v562, v563, v564, v565, v566, v567, v568;
          v560, v569, v570, v571, v572, v573, v574, v575;
          v576 = *(v902 + 8);
          v902 += 8;
          v576(v558, v901);
          v577 = v862;
          sub_1CEFDA0C4(v543, v862, type metadata accessor for VFSItem);

          v579 = v866;
          v578 = v867;
          v580 = *(v867 + 48);
          v581 = v561;
          v111 = v904;
          (v904)(v866, v581, v901);
          sub_1CEFDA0C4(v577, &v579[v580], type metadata accessor for VFSItem);
          v582 = v868;
          sub_1CEFDA0C4(&v579[*(v578 + 48)], v868, type metadata accessor for VFSItem);
          v576(v579, v901);
          v583 = v865;
          sub_1CF25116C(v865);
          v584 = v901;
          if ((v895)(v583, 1, v901) == 1)
          {
            sub_1CEFD5338(v582, type metadata accessor for VFSItem);
            sub_1CEFCCC44(v583, &unk_1EC4BE310, qword_1CF9FCBE0);
            goto LABEL_39;
          }

          (v111)(v861, v583, v584);
          v593 = sub_1CF9E5A18();
          v185 = v594;
          MEMORY[0x1EEE9AC00](v593);
          v848 = v855;
          v925 = xmmword_1CF9FC980;
          *&v934 = 0;
          v595 = swift_allocObject();
          v595[2] = &v925;
          v595[3] = sub_1CF8FD928;
          v595[4] = &v846;
          v595[5] = &v934;
          v596 = swift_allocObject();
          *(v596 + 16) = sub_1CF8FD944;
          *(v596 + 24) = v595;
          *&v942 = sub_1CF005DC8;
          *(&v942 + 1) = v596;
          *&v940 = MEMORY[0x1E69E9820];
          *(&v940 + 1) = 1107296256;
          *&v941 = sub_1CF005DF8;
          *(&v941 + 1) = &block_descriptor_3842;
          v597 = _Block_copy(&v940);

          sub_1CF9E6978();
          LODWORD(v111) = fpfs_openat();

          _Block_release(v597);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v605 = v934;
            if (v934)
            {
              swift_willThrow();
LABEL_125:
              swift_bridgeObjectRelease_n();
              sub_1CF0BA850(v925, *(&v925 + 1), v606, v607, v608, v609, v610, v611);
              v612 = v605;
              (v921)(0, v605);

              v576(v861, v901);
              sub_1CEFD5338(v868, type metadata accessor for VFSItem);

              goto LABEL_99;
            }

            if ((v111 & 0x80000000) != 0)
            {
              if (!MEMORY[0x1D38683F0](v187))
              {
                while (1)
                {
                  v185, v648, v649, v650, v651, v652, v653, v654;
                  *&v940 = 0;
                  *(&v940 + 1) = 0xE000000000000000;
                  sub_1CF9E7948();
                  *(&v940 + 1), v807, v808, v809, v810, v811, v812, v813;
                  *&v940 = 0xD00000000000001ALL;
                  *(&v940 + 1) = 0x80000001CFA2DF30;
                  v931[0] = v111;
                  v814 = sub_1CF9E7F98();
                  v816 = v815;
                  MEMORY[0x1D3868CC0](v814);
                  v816, v817, v818, v819, v820, v821, v822, v823;
                  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
                  v824 = v940;
                  v825 = fpfs_current_or_default_log();
                  sub_1CF9E6128();

                  v826 = sub_1CF9E6108();
                  v185 = sub_1CF9E72B8();
                  *(&v824 + 1), v827, v828, v829, v830, v831, v832, v833;
                  if (os_log_type_enabled(v826, v185))
                  {
                    v834 = swift_slowAlloc();
                    v835 = swift_slowAlloc();
                    *&v940 = v835;
                    *v834 = 136315650;
                    v836 = sub_1CF9E7988();
                    v111 = v837;
                    v838 = sub_1CEFD0DF0(v836, v837, &v940);
                    v111, v839, v840, v841, v842, v843, v844, v845;
                    *(v834 + 4) = v838;
                    *(v834 + 12) = 2048;
                    *(v834 + 14) = 315;
                    *(v834 + 22) = 2080;
                    *(v834 + 24) = sub_1CEFD0DF0(v824, *(&v824 + 1), &v940);
                    _os_log_impl(&dword_1CEFC7000, v826, v185, "[ASSERT] ‼️  %s:%lu: %s", v834, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1D386CDC0](v835, -1, -1);
                    MEMORY[0x1D386CDC0](v834, -1, -1);
                  }

                  (*(v916 + 8))(v857, v917);
                  LODWORD(v849) = 0;
                  v848 = 315;
LABEL_173:
                  sub_1CF9E7B68();
                  __break(1u);
                }
              }

              if (MEMORY[0x1D38683F0]() == 9939394)
              {
                v605 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
                swift_willThrow();
              }

              else
              {
                v917 = v576;
                MEMORY[0x1D38683F0]();
                v655 = sub_1CF9E6138();
                if ((v655 & 0x100000000) != 0)
                {
                  LODWORD(v940) = 22;
                }

                else
                {
                  LODWORD(v940) = v655;
                }

                sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
                v766 = v858;
                v767 = v860;
                sub_1CF9E57D8();
                v605 = sub_1CF9E53A8();
                (*(v859 + 8))(v766, v767);
                swift_willThrow();
                v576 = v917;
              }

              goto LABEL_125;
            }

            v185, v598, v599, v600, v601, v602, v603, v604;
            isEscapingClosureAtFileLocation = *(&v925 + 1);
            if (*(&v925 + 1) != 1)
            {
              v624 = v925;

              v185, v625, v626, v627, v628, v629, v630, v631;
              sub_1CF0BA850(v925, *(&v925 + 1), v632, v633, v634, v635, v636, v637);
              v223 = v913;
              v226 = v914;
              v219 = v855;
              if (isEscapingClosureAtFileLocation)
              {
                v917 = v576;
                v638 = *(v855 + 16);
                v639 = *(v855 + 24);

                v640 = sub_1CEFE7394(v624, isEscapingClosureAtFileLocation);
                if (v641)
                {
                  if (v640 == 12565487 && v641 == 0xA300000000000000)
                  {
                    0xA300000000000000, 0xA300000000000000, v642, v643, v644, v645, v646, v647;
LABEL_144:
                    v665 = sub_1CF9E69E8();
                    v666 = v624;
                    v667 = sub_1CF025150(v665, v624, isEscapingClosureAtFileLocation);
                    v669 = v668;
                    v624 = MEMORY[0x1D3868C10](v667);
                    v671 = v670;
                    v669, v670, v672, v673, v674, v675, v676, v677;
                    goto LABEL_146;
                  }

                  v656 = v641;
                  v657 = sub_1CF9E8048();
                  v656, v658, v659, v660, v661, v662, v663, v664;
                  if (v657)
                  {
                    goto LABEL_144;
                  }
                }

                v666 = v624;
                v671 = isEscapingClosureAtFileLocation;
LABEL_146:
                v678 = sub_1CEFE7394(v638, v639);
                if (v679)
                {
                  if (v678 == 12565487 && v679 == 0xA300000000000000)
                  {
                    0xA300000000000000, 0xA300000000000000, v680, v681, v682, v683, v684, v685;
LABEL_151:
                    v695 = sub_1CF9E69E8();
                    v696 = sub_1CF025150(v695, v638, v639);
                    v698 = v697;
                    v638 = MEMORY[0x1D3868C10](v696);
                    v700 = v699;
                    v698, v699, v701, v702, v703, v704, v705, v706;
                    goto LABEL_153;
                  }

                  v686 = v679;
                  v687 = sub_1CF9E8048();
                  v686, v688, v689, v690, v691, v692, v693, v694;
                  if (v687)
                  {
                    goto LABEL_151;
                  }
                }

                v700 = v639;
LABEL_153:
                v714 = v624 == v638;
                v225 = v900;
                if (v714 && v671 == v700)
                {
                  v700, v707, v708, v709, v710, v711, v712, v713;
                  v671, v715, v716, v717, v718, v719, v720, v721;
                  v639, v722, v723, v724, v725, v726, v727, v728;
                  v917(v861, v901);
                  sub_1CEFD5338(v868, type metadata accessor for VFSItem);
                  v219 = v855;
                }

                else
                {
                  v735 = sub_1CF9E8048();
                  v700, v736, v737, v738, v739, v740, v741, v742;
                  v671, v743, v744, v745, v746, v747, v748, v749;
                  v639, v750, v751, v752, v753, v754, v755, v756;
                  v917(v861, v901);
                  sub_1CEFD5338(v868, type metadata accessor for VFSItem);
                  v219 = v855;
                  if ((v735 & 1) == 0)
                  {
                    v223 = v913;
                    swift_beginAccess();
                    v764 = *(v223 + 2);
                    v285 = v910;
                    v226 = v914;
                    if ((v764 & 1) == 0)
                    {
                      *(v223 + 2) = v764 | 1;
                    }

                    v765 = *(v219 + 24);
                    *(v219 + 16) = v666;
                    *(v219 + 24) = isEscapingClosureAtFileLocation;
                    v765, v757, v758, v759, v760, v761, v762, v763;
                    goto LABEL_76;
                  }
                }

                sub_1CF0BA850(v666, isEscapingClosureAtFileLocation, v729, v730, v731, v732, v733, v734);
                v285 = v910;
                v223 = v913;
                v226 = v914;
LABEL_76:
                v917 = *(*(*(v226 + 16) + 32) + 16);
                type metadata accessor for VFSFileTree(0);
                v907 = swift_dynamicCastClassUnconditional();
                swift_beginAccess();
                v904 = *v225;
                LODWORD(v902) = *(v225 + 8);
                sub_1CEFCCBDC(v219, v285, &unk_1EC4BFD90, &unk_1CFA134F0);
                swift_beginAccess();
                v916 = *(v223 + 2);
                type metadata accessor for StagedContext();
                v913 = swift_allocObject();
                v434 = v882;
                sub_1CEFDA34C(v225, v882, type metadata accessor for VFSItem);
                v435 = v434 + *(v852 + 36);
                v436 = *v435;
                v437 = *(v435 + 8);
                v438 = *(v435 + 16);
                v439 = *(v435 + 24);
                v440 = *(v434 + 16);
                v441 = *(v434 + 24);
                v443 = *(v434 + 32);
                v442 = *(v434 + 40);

                sub_1CEFD5338(v434, type metadata accessor for VFSItem);
                v930 = v439;
                *&v934 = v436;
                DWORD2(v934) = v437;
                v444 = v910;
                *&v935 = v438;
                BYTE8(v935) = v439;
                *&v936 = 0;
                *(&v936 + 1) = v440;
                LOBYTE(v937) = v441;
                *(&v937 + 1) = v443;
                v445 = v914;
                v938 = v442;
                v939 = 0uLL;
                v446 = v912;
                sub_1CF06C190(&v940);
                v447 = swift_allocObject();
                v448 = v921;
                v447[2] = v446;
                v447[3] = v448;
                v447[4] = v922;
                v447[5] = v445;
                v449 = v911;
                v447[6] = v920;
                v447[7] = v449;
                v920 = v447;
                v450 = v918;
                v447[8] = v918;
                v921 = swift_allocObject();
                *(v921 + 16) = 0;
                v451 = *(v851 + 40);
                if ((v916 & 0x10) != 0 && (*(v444 + v451 + *(v877 + 80)) & 1) == 0)
                {
                  *(v921 + 16) = 1;
                }

                v452 = *(v907 + 216);
                v901 = *(v907 + 224);
                v453 = *(v444 + v451);
                v454 = v912;
                v455 = v450;

                v922 = v452;
                v456 = v898;
                v457 = v885;
                v458 = v886;
                if (v453 == 1 || (v916 & 0x18) == 0)
                {
                  sub_1CF9E6408();
                }

                else
                {
                  sub_1CF9E6418();
                }

                v459 = v899;
                v460 = v906;
                v461 = v888;
                qos_class_self();
                sub_1CF9E63B8();
                v462 = *(v460 + 48);
                if (v462(v461, 1, v459) == 1)
                {
                  (*(v460 + 104))(v457, *MEMORY[0x1E69E7FA0], v459);
                  if (v462(v461, 1, v459) != 1)
                  {
                    sub_1CEFCCC44(v461, &unk_1EC4BE380, &qword_1CFA01BA0);
                  }
                }

                else
                {
                  (*(v460 + 32))(v457, v461, v459);
                }

                v463 = v887;
                sub_1CF9E6428();
                sub_1CF9E6438();
                v464 = sub_1CF9E63C8();
                v465 = v456;
                v466 = *(v460 + 8);
                v906 = v460 + 8;
                (v466)(v465, v459);
                v467 = v890;
                sub_1CF9E6438();
                v468 = sub_1CF9E63C8();
                v897 = v466;
                (v466)(v467, v459);
                v469 = v903;
                v470 = *(v903 + 8);
                if (v464 >= v468)
                {
                  v471 = v463;
                }

                else
                {
                  v471 = v458;
                }

                if (v464 >= v468)
                {
                  v472 = v458;
                }

                else
                {
                  v472 = v463;
                }

                v473 = v892;
                v895 = *(v903 + 8);
                v896 = v903 + 8;
                v470(v471, v892);
                v474 = v909;
                (*(v469 + 32))(v909, v472, v473);
                (*(v469 + 56))(v474, 0, 1, v473);
                v475 = v889;
                sub_1CEFCCBDC(v444, v889, &unk_1EC4BFD90, &unk_1CFA134F0);
                v476 = (*(v883 + 80) + 16) & ~*(v883 + 80);
                v477 = (v884 + v476 + 7) & 0xFFFFFFFFFFFFFFF8;
                v478 = (v477 + 15) & 0xFFFFFFFFFFFFFFF8;
                v479 = (v478 + 15) & 0xFFFFFFFFFFFFFFF8;
                v480 = (v479 + 23) & 0xFFFFFFFFFFFFFFF8;
                v918 = ((v480 + 103) & 0xFFFFFFFFFFFFFFF8);
                v914 = (v480 + 119) & 0xFFFFFFFFFFFFFFF8;
                v912 = ((v914 + 15) & 0xFFFFFFFFFFFFFFF8);
                v900 = (v912 + 15) & 0xFFFFFFFFFFFFFFF8;
                v481 = (v900 + 15) & 0xFFFFFFFFFFFFFFF8;
                v482 = swift_allocObject();
                sub_1CEFE55D0(v475, v482 + v476, &unk_1EC4BFD90, &unk_1CFA134F0);
                *(v482 + v477) = v913;
                *(v482 + v478) = v907;
                v483 = (v482 + v479);
                v484 = v920;
                *v483 = sub_1CF8FD90C;
                v483[1] = v484;
                v485 = (v482 + v480);
                v486 = v935;
                *v485 = v934;
                v485[1] = v486;
                v487 = v939;
                v485[4] = v938;
                v485[5] = v487;
                v488 = v937;
                v485[2] = v936;
                v485[3] = v488;
                v489 = &v918[v482];
                *v489 = v904;
                v489[8] = v902;
                *(v482 + v914) = v905;
                *&v912[v482] = v921;
                *(v482 + v900) = v916;
                v490 = v482;
                v491 = v482 + v481;
                v492 = v953;
                *(v491 + 192) = v952;
                *(v491 + 208) = v492;
                *(v491 + 224) = v954;
                *(v491 + 240) = v955;
                v493 = v949;
                *(v491 + 128) = v948;
                *(v491 + 144) = v493;
                v494 = v951;
                *(v491 + 160) = v950;
                *(v491 + 176) = v494;
                v495 = v945;
                *(v491 + 64) = v944;
                *(v491 + 80) = v495;
                v496 = v947;
                *(v491 + 96) = v946;
                *(v491 + 112) = v496;
                v497 = v941;
                *v491 = v940;
                *(v491 + 16) = v497;
                v498 = v943;
                *(v491 + 32) = v942;
                *(v491 + 48) = v498;
                v499 = swift_allocObject();
                v499[2] = sub_1CF8FD90C;
                v499[3] = v484;
                v500 = v901;
                v499[4] = v901;
                swift_retain_n();

                sub_1CEFCCBDC(&v934, &v925, &unk_1EC4BE330, &unk_1CF9FF010);

                sub_1CEFCCBDC(&v940, &v925, &qword_1EC4BECF0, &unk_1CF9FEEB0);

                v501 = fpfs_current_log();
                v918 = *(v500 + 16);
                v502 = *(v903 + 48);
                v503 = v909;
                v504 = v502(v909, 1, v473);
                v505 = 32;
                if (v504 == 1)
                {
                  v505 = 16;
                }

                v916 = v505;
                v506 = v891;
                sub_1CEFCCBDC(v503, v891, &unk_1EC4BE370, qword_1CFA01B30);
                if (v502(v506, 1, v473) == 1)
                {
                  sub_1CEFCCC44(v506, &unk_1EC4BE370, qword_1CFA01B30);
                  v507 = QOS_CLASS_UNSPECIFIED;
                }

                else
                {
                  v508 = v898;
                  sub_1CF9E6438();
                  (v895)(v506, v473);
                  v507 = sub_1CF9E63C8();
                  (v897)(v508, v899);
                }

                v509 = swift_allocObject();
                v509[2] = v501;
                v509[3] = sub_1CF8FD924;
                v509[4] = v490;
                v928 = sub_1CF2BA17C;
                v929 = v509;
                *&v925 = MEMORY[0x1E69E9820];
                *(&v925 + 1) = 1107296256;
                v926 = sub_1CEFCA444;
                v927 = &block_descriptor_3827;
                v510 = _Block_copy(&v925);
                v511 = v501;

                v928 = sub_1CF2B08D4;
                v929 = v499;
                *&v925 = MEMORY[0x1E69E9820];
                *(&v925 + 1) = 1107296256;
                v926 = sub_1CEFCA444;
                v927 = &block_descriptor_3830;
                v512 = _Block_copy(&v925);

                v513 = v922;
                fp_task_tracker_async_and_qos(v918, v922, v916, v507, v510, v512);

                _Block_release(v512);
                _Block_release(v510);

                sub_1CEFCCC44(&v940, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                sub_1CEFCCC44(&v934, &unk_1EC4BE330, &unk_1CF9FF010);

                sub_1CEFCCC44(v910, &unk_1EC4BFD90, &unk_1CFA134F0);
                sub_1CEFCCC44(v909, &unk_1EC4BE370, qword_1CFA01B30);

                goto LABEL_99;
              }

              v576(v861, v901);
              sub_1CEFD5338(v868, type metadata accessor for VFSItem);
LABEL_44:
              v285 = v910;
              v225 = v900;
              goto LABEL_76;
            }

            goto LABEL_167;
          }

          goto LABEL_165;
        }

        v263 = v214;
        v921 = *(a9 + 16);
        v264 = objc_allocWithZone(MEMORY[0x1E696AE38]);
        v265 = v115;
        v266 = v218;

        v918 = [v264 init];
        v267 = swift_allocObject();
        v267[2] = v908;
        v267[3] = v266;
        v268 = v914;
        v267[4] = a9;
        v267[5] = v268;
        v267[6] = sub_1CF8FD8C8;
        v267[7] = v263;
        v269 = v919;
        v922 = v267;
        v267[8] = v919;

        v270 = v266;

        sub_1CEFD09A0(v268);

        v271 = fpfs_current_or_default_log();
        v272 = v904;
        sub_1CF9E6128();
        sub_1CEFD09A0(v268);
        sub_1CEFD09A0(v268);

        v273 = sub_1CF9E6108();
        v274 = sub_1CF9E7298();
        if (os_log_type_enabled(v273, v274))
        {
          v275 = swift_slowAlloc();
          v276 = swift_slowAlloc();
          *&v925 = v276;
          *v275 = 136315394;
          v277 = swift_beginAccess();
          v278 = *(v269 + 32);
          v279 = *(v269 + 40);
          if (*(v269 + 41))
          {
            v280 = NSFileProviderItemIdentifier.description.getter(v278);
            v282 = v281;
            sub_1CEFD0994(v278, v279, 1);
          }

          else
          {
            *&v940 = *(v269 + 32);
            BYTE8(v940) = v279;
            v280 = VFSItemID.description.getter(v277);
            v282 = v288;
          }

          v289 = sub_1CEFD0DF0(v280, v282, &v925);
          v282, v290, v291, v292, v293, v294, v295, v296;
          *(v275 + 4) = v289;
          *(v275 + 12) = 2080;
          v268 = v914;
          v297 = sub_1CEFD11AC(v914);
          v299 = v298;
          sub_1CEFD0A98(v268);
          sub_1CEFD0A98(v268);
          v300 = sub_1CEFD0DF0(v297, v299, &v925);
          v299, v301, v302, v303, v304, v305, v306, v307;
          *(v275 + 14) = v300;
          _os_log_impl(&dword_1CEFC7000, v273, v274, "Request to materialize content of itemID %s reason %s", v275, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v276, -1, -1);
          MEMORY[0x1D386CDC0](v275, -1, -1);

          v286 = *(v916 + 8);
          v287 = v904;
        }

        else
        {
          sub_1CEFD0A98(v268);
          sub_1CEFD0A98(v268);

          v286 = *(v916 + 8);
          v287 = v272;
        }

        v912 = v286;
        (v286)(v287, v917);
        LODWORD(v909) = (v268 >> 58) & 0x3C | (v268 >> 1) & 3;
        v308 = v893;
        if (v909 == 2)
        {
          v309 = swift_projectBox();
          v310 = v880;
          sub_1CEFCCBDC(v309, v880, &unk_1EC4C4F40, qword_1CFA0F4C0);
          *(v310 + 8), v311, v312, v313, v314, v315, v316, v317;
          v318 = v881;
          v319 = *(v881 + 48);

          v320 = *(v310 + *(v318 + 80));
          (*(v902 + 8))(v310 + v319, v901);
        }

        else
        {
          v320 = 0;
        }

        v321 = v907;
        sub_1CEFCCBDC(v921 + qword_1EDEBBC18, v308, &qword_1EC4BFB10, &unk_1CFA12AD0);
        v322 = type metadata accessor for TelemetrySignposter(0);
        if ((*(*(v322 - 8) + 48))(v308, 1, v322) == 1)
        {
          sub_1CEFCCC44(v308, &qword_1EC4BFB10, &unk_1CFA12AD0);
          v323 = 1;
        }

        else
        {
          sub_1CF519DE8(v320, v321);
          sub_1CEFD5338(v308, type metadata accessor for TelemetrySignposter);
          v323 = 0;
        }

        v324 = type metadata accessor for TelemetrySignpost(0);
        (*(*(v324 - 8) + 56))(v321, v323, 1, v324);
        v325 = v895;
        sub_1CEFCCBDC(v321, v895, qword_1EC4C1588, &unk_1CFA0A260);
        v326 = *(v894 + 80);
        v327 = (v326 + 16) & ~v326;
        v328 = v896;
        v329 = (v896 + v327 + 7) & 0xFFFFFFFFFFFFFFF8;
        v330 = swift_allocObject();
        v920 = v330;
        sub_1CEFE55D0(v325, v330 + v327, qword_1EC4C1588, &unk_1CFA0A260);
        v331 = (v330 + v329);
        v332 = v922;
        *v331 = sub_1CF8FD950;
        v331[1] = v332;
        v333 = v897;
        sub_1CEFCCBDC(v321, v897, qword_1EC4C1588, &unk_1CFA0A260);
        v334 = (v326 + 24) & ~v326;
        v910 = (v334 + v328 + 7) & 0xFFFFFFFFFFFFFFF8;
        v335 = (v334 + v328 + 31) & 0xFFFFFFFFFFFFFFF8;
        v913 = ((v335 + 15) & 0xFFFFFFFFFFFFFFF8);
        v336 = (v335 + 31) & 0xFFFFFFFFFFFFFFF8;
        v337 = (v336 + 15) & 0xFFFFFFFFFFFFFFF8;
        v338 = swift_allocObject();
        v339 = v914;
        *(v338 + 16) = v914;
        v340 = v338 + v334;
        v341 = v339;
        sub_1CEFE55D0(v333, v340, qword_1EC4C1588, &unk_1CFA0A260);
        v342 = v338 + v910;
        *v342 = sub_1CF8FD950;
        *(v342 + 8) = v332;
        *(v342 + 16) = 0;
        *(v338 + v335) = v921;
        v343 = &v913[v338];
        v344 = v919;
        *v343 = v919;
        v343[8] = 0;
        *(v338 + v336) = 0;
        v345 = v918;
        *(v338 + v337) = v918;
        v346 = v338 + ((v337 + 15) & 0xFFFFFFFFFFFFFFF8);
        v347 = v920;
        *v346 = sub_1CF903314;
        *(v346 + 8) = v347;
        *(v346 + 16) = 1;
        v348 = objc_allocWithZone(MEMORY[0x1E696AE38]);

        sub_1CEFD09A0(v341);

        v913 = v345;

        v918 = [v348 init];
        v349 = swift_allocObject();
        v349[2] = sub_1CF903318;
        v349[3] = v338;
        v910 = v349;
        v349[4] = v341;
        sub_1CEFD09A0(v341);

        sub_1CEFD09A0(v341);

        v350 = fpfs_current_or_default_log();
        v351 = v905;
        sub_1CF9E6128();
        sub_1CEFD09A0(v341);
        sub_1CEFD09A0(v341);

        v352 = sub_1CF9E6108();
        v353 = sub_1CF9E7298();
        if (os_log_type_enabled(v352, v353))
        {
          v354 = swift_slowAlloc();
          v906 = swift_slowAlloc();
          v932[0] = v906;
          *v354 = 136315906;
          v355 = swift_beginAccess();
          v356 = *(v344 + 32);
          v357 = *(v344 + 40);
          if (*(v344 + 41))
          {
            v358 = NSFileProviderItemIdentifier.description.getter(v356);
            v360 = v359;
            sub_1CEFD0994(v356, v357, 1);
          }

          else
          {
            *&v940 = *(v344 + 32);
            BYTE8(v940) = v357;
            v358 = VFSItemID.description.getter(v355);
            v360 = v362;
          }

          v363 = sub_1CEFD0DF0(v358, v360, v932);
          v360, v364, v365, v366, v367, v368, v369, v370;
          *(v354 + 4) = v363;
          *(v354 + 12) = 2080;
          *(v354 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v932);
          *(v354 + 22) = 2080;
          v341 = v914;
          v371 = sub_1CEFD11AC(v914);
          v373 = v372;
          sub_1CEFD0A98(v341);
          sub_1CEFD0A98(v341);
          v374 = sub_1CEFD0DF0(v371, v373, v932);
          v373, v375, v376, v377, v378, v379, v380, v381;
          *(v354 + 24) = v374;
          *(v354 + 32) = 2048;
          *(v354 + 34) = 0;
          _os_log_impl(&dword_1CEFC7000, v352, v353, "Lookup itemID %s with behavior %s request %s iteration %ld", v354, 0x2Au);
          v382 = v906;
          swift_arrayDestroy();
          MEMORY[0x1D386CDC0](v382, -1, -1);
          MEMORY[0x1D386CDC0](v354, -1, -1);

          (v912)(v905, v917);
          v361 = v919;
        }

        else
        {
          sub_1CEFD0A98(v341);
          sub_1CEFD0A98(v341);

          (v912)(v351, v917);
          v361 = v344;
        }

        swift_beginAccess();
        v383 = *(v361 + 32);
        v384 = *(v361 + 40);
        if (*(v361 + 41))
        {
          v385 = qword_1EDEA34B0;
          v386 = v383;
          if (v385 != -1)
          {
            swift_once();
          }

          v387 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v389 = v388;
          v391 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v397 = v387;
          v398 = v390;
          if (v397 == v391 && v389 == v390)
          {
            v389, v390, v391, v392, v393, v394, v395, v396;
            v398, v399, v400, v401, v402, v403, v404, v405;
            sub_1CEFD0994(v383, v384, 1);
            v341 = v914;
LABEL_68:
            sub_1CF90CAC8(v341, sub_1CF796A0C, v910);
            v406 = v918;
LABEL_74:

            sub_1CEFD0A98(v341);

            sub_1CEFCCC44(v907, qword_1EC4C1588, &unk_1CFA0A260);

LABEL_99:

            return;
          }

          v407 = sub_1CF9E8048();
          v389, v408, v409, v410, v411, v412, v413, v414;
          v398, v415, v416, v417, v418, v419, v420, v421;
          sub_1CEFD0994(v383, v384, 1);
          v341 = v914;
          if (v407)
          {
            goto LABEL_68;
          }
        }

        else if (!v383 && v384 == 2)
        {
          goto LABEL_68;
        }

        if (v909 == 30)
        {
          v422 = *((v341 & 0xFFFFFFFFFFFFFF9) + 0x10);
          v423 = v422;
        }

        else
        {
          v424 = swift_allocObject();
          *(v424 + 16) = v341;
          v423 = v424 | 0x7000000000000004;
          v422 = v341;
        }

        v425 = v918;
        sub_1CEFD09A0(v422);
        v426 = swift_allocObject();
        v427 = v910;
        *(v426 + 16) = sub_1CF796A0C;
        *(v426 + 24) = v427;
        v428 = v921;
        *(v426 + 32) = v921;
        *(v426 + 40) = 1;
        *(v426 + 48) = v341;
        *(v426 + 56) = v361;
        *(v426 + 64) = 0;
        *(v426 + 72) = v425;
        *(v426 + 80) = 0;
        v429 = swift_allocObject();
        *(v429 + 16) = v361;
        *(v429 + 24) = v428;
        *(v429 + 32) = 0;
        *(v429 + 40) = sub_1CF796A90;
        *(v429 + 48) = v426;
        *(v429 + 56) = v423;
        v430 = swift_allocObject();
        *(v430 + 16) = sub_1CF796A90;
        *(v430 + 24) = v426;
        v406 = v918;

        sub_1CEFD09A0(v341);

        v431 = v406;
        sub_1CEFD09A0(v423);
        sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v430, sub_1CF796A9C, v429);

        sub_1CEFD0A98(v423);
        goto LABEL_74;
      }

      (*(v902 + 8))(v878, v901);
    }

    v850 = 0;
    goto LABEL_25;
  }

  v89 = *v88;
  v90 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v91 = a2;
  v92 = v89;
  v93 = sub_1CF9E6108();
  v94 = sub_1CF9E72A8();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138412546;
    v97 = [v91 itemID];
    *(v95 + 4) = v97;
    *v96 = v97;
    *(v95 + 12) = 2112;
    swift_getErrorValue();
    v98 = Error.prettyDescription.getter(v923, v924);
    *(v95 + 14) = v98;
    v96[1] = v98;
    _os_log_impl(&dword_1CEFC7000, v93, v94, "Error creating item %@ on disk; error %@", v95, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v96, -1, -1);
    MEMORY[0x1D386CDC0](v95, -1, -1);
  }

  (*(v916 + 8))(v85, v917);
  v99 = v89;
  (v921)(0, v89);
}

void sub_1CF8A7048(void **a1, char *a2, void (*a3)(void, uint64_t), void *a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t (*a11)(uint64_t a1), char *a12)
{
  v503 = a8;
  LODWORD(v500) = a7;
  LODWORD(v497) = a6;
  v507 = a3;
  v508 = a4;
  v505 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v491 = &v456 - v14;
  v501 = sub_1CF9E63D8();
  v506 = *(v501 - 8);
  MEMORY[0x1EEE9AC00](v501);
  v493 = &v456 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v502 = &v456 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v488 = &v456 - v19;
  v495 = sub_1CF9E6448();
  v504 = *(v495 - 8);
  MEMORY[0x1EEE9AC00](v495);
  v490 = &v456 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v489 = &v456 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v494 = &v456 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v509 = &v456 - v26;
  v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v486 = *(v484 - 8);
  MEMORY[0x1EEE9AC00](v484);
  v492 = &v456 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v510 = &v456 - v29;
  v30 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v480 = &v456 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E5268();
  v481 = *(v32 - 8);
  v482 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v479 = &v456 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1CF9E53C8();
  v466 = *(v34 - 8);
  v467 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v465 = &v456 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v473 = &v456 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v456 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v456 - v42;
  v478 = sub_1CF9E5A58();
  v476 = *(v478 - 8);
  MEMORY[0x1EEE9AC00](v478);
  v468 = &v456 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v469 = &v456 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v471 = &v456 - v48;
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FE8, &unk_1CFA18180);
  MEMORY[0x1EEE9AC00](v472);
  v470 = &v456 - v49;
  v496 = type metadata accessor for VFSItem(0);
  v477 = *(v496 - 8);
  MEMORY[0x1EEE9AC00](v496);
  v483 = &v456 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v475 = &v456 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v456 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v474 = &v456 - v57;
  v58 = sub_1CF9E6118();
  v498 = *(v58 - 8);
  v499 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v464 = &v456 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v456 - v61;
  v63 = *a1;
  v64 = *(a1 + 8);
  LODWORD(a1) = *(a1 + 9);
  v65 = swift_projectBox();
  v485 = a10;
  v66 = swift_projectBox();
  if (a1 == 1)
  {
    v67 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v68 = v505;
    sub_1CF8FDE38(v63, v64, 1);
    v69 = sub_1CF9E6108();
    v70 = sub_1CF9E72A8();

    sub_1CF8FDA2C(v63, v64, 1);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138412546;
      v73 = [v68 itemID];
      *(v71 + 4) = v73;
      *v72 = v73;
      *(v71 + 12) = 2112;
      swift_getErrorValue();
      v74 = Error.prettyDescription.getter(v511, v512);
      *(v71 + 14) = v74;
      v72[1] = v74;
      _os_log_impl(&dword_1CEFC7000, v69, v70, "Error retrieving item state item %@; error %@", v71, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v72, -1, -1);
      MEMORY[0x1D386CDC0](v71, -1, -1);
    }

    (*(v498 + 1))(v62, v499);
    v507(0, v63);
    return;
  }

  v75 = v66;
  v76 = a9;
  swift_beginAccess();
  *v65 = v63;
  *(v65 + 8) = v64;
  v77 = 4;
  if (v497)
  {
    v77 = 0;
  }

  v463 = v77;
  v78 = v65;
  if ((v500 & 1) == 0)
  {
    goto LABEL_55;
  }

  v500 = v75;
  v79 = v503;
  swift_beginAccess();
  v80 = *(v79 + 16);
  v75 = v500;
  if ((v80 & 3) == 0)
  {
    goto LABEL_55;
  }

  v460 = v40;
  v81 = *(*(*(a9 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v82 = swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  v459 = a9;
  v83 = *(v78 + 24);
  v497 = *(v78 + 16);
  swift_beginAccess();
  v461 = *v75;
  LODWORD(v462) = *(v75 + 8);
  *&v521 = v63;
  BYTE8(v521) = v64;
  v531 = 0u;
  v532 = 0u;
  v529 = 0u;
  v530 = 0u;
  v527 = 0u;
  v528 = 0u;

  sub_1CEFDAA48(&v521, &v527, &v513, v84, v85, v86, v87, v88, v89);
  v90 = v513;
  v517, v91, v92, v93, v94, v95, v96, v97;
  sub_1CF263ADC(v90, 0, 1, v43);
  isEscapingClosureAtFileLocation = v82;
  v99 = v497;
  v457 = v78;
  v458 = v83;
  if ((*(v477 + 48))(v43, 1, v496) == 1)
  {
    sub_1CEFCCC44(v43, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v100 = swift_allocObject();
    *(v100 + 16) = 1;
    v101 = v100 | 0x7000000000000000;
    sub_1CF1B8150();
    v102 = swift_allocError();
    *v103 = v101;

    v458, v104, v105, v106, v107, v108, v109, v110;
    *&v527 = v461;
    BYTE8(v527) = v462;
    v528 = 0u;
    v529 = 0u;
    v530 = 0u;
    v531 = 0u;
    v532 = 0u;
    v533 = 0u;
    v534 = v102;
LABEL_15:
    v125 = &unk_1EC4C4FF0;
    v126 = &unk_1CFA18190;
    v127 = &v527;
LABEL_16:
    sub_1CEFCCC44(v127, v125, v126);
    sub_1CF9E50F8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v128 = v479;
    v129 = v482;
    sub_1CF9E57D8();
    v130 = sub_1CF9E50D8();
    (*(v481 + 8))(v128, v129);
    v507(0, v130);

    return;
  }

  v111 = v475;
  sub_1CEFDA0C4(v43, v475, type metadata accessor for VFSItem);
  v112 = objc_sync_enter(isEscapingClosureAtFileLocation);
  if (v112)
  {
LABEL_83:
    MEMORY[0x1EEE9AC00](v112);
    v454 = isEscapingClosureAtFileLocation;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v453, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v477 = v81;
  v113 = objc_sync_exit(isEscapingClosureAtFileLocation);
  v114 = v476;
  v115 = v460;
  if (v113)
  {
    MEMORY[0x1EEE9AC00](v113);
    v454 = isEscapingClosureAtFileLocation;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v453, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v460);
  v116 = v478;
  v456 = v114[6];
  if (v456(v115, 1, v478) == 1)
  {
    sub_1CEFCCC44(v115, &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF1B8150();
    v117 = swift_allocError();
    *v118 = 0xB000000000000008;
    v458, v118, v119, v120, v121, v122, v123, v124;
    *&v527 = v461;
    BYTE8(v527) = v462;
    v528 = 0u;
    v529 = 0u;
    v530 = 0u;
    v531 = 0u;
    v532 = 0u;
    v533 = 0u;
    v534 = v117;
    sub_1CEFD5338(v111, type metadata accessor for VFSItem);

    goto LABEL_15;
  }

  v131 = v114[4];
  v461 = v114 + 4;
  v462 = v131;
  v132 = v469;
  v131(v469, v115, v116);
  *&v527 = v99;
  v133 = v458;
  *(&v527 + 1) = v458;
  v513 = 47;
  v514 = 0xE100000000000000;
  *&v521 = 58;
  *(&v521 + 1) = 0xE100000000000000;
  v454 = sub_1CEFE4E68();
  v455 = v454;
  v453[0] = MEMORY[0x1E69E6158];
  v453[1] = v454;
  sub_1CF9E7668();
  v135 = v134;
  v136 = v471;
  sub_1CF9E5958();
  v133, v137, v138, v139, v140, v141, v142, v143;
  v135, v144, v145, v146, v147, v148, v149, v150;
  v151 = v114[1];
  v151(v132, v478);
  sub_1CEFDA0C4(v111, v55, type metadata accessor for VFSItem);

  v152 = v472;
  v153 = *(v472 + 48);
  v154 = v470;
  v462(v470, v136, v478);
  sub_1CEFDA0C4(v55, &v154[v153], type metadata accessor for VFSItem);
  v155 = v474;
  sub_1CEFDA0C4(&v154[*(v152 + 48)], v474, type metadata accessor for VFSItem);
  v476 = v114 + 1;
  v497 = v151;
  v151(v154, v478);
  v156 = v473;
  sub_1CF25116C(v473);
  v157 = v478;
  if (v456(v156, 1, v478) == 1)
  {
    sub_1CEFD5338(v155, type metadata accessor for VFSItem);
    v125 = &unk_1EC4BE310;
    v126 = qword_1CF9FCBE0;
    v127 = v156;
    goto LABEL_16;
  }

  v462(v468, v156, v157);
  v158 = sub_1CF9E5A18();
  v160 = v159;
  MEMORY[0x1EEE9AC00](v158);
  v78 = v457;
  v454 = v457;
  *v161 = xmmword_1CF9FC980;
  *&v521 = 0;
  v162 = swift_allocObject();
  v162[2] = &v513;
  v162[3] = sub_1CF902DAC;
  v162[4] = v453;
  v162[5] = &v521;
  v163 = swift_allocObject();
  *(v163 + 16) = sub_1CF902C70;
  *(v163 + 24) = v162;
  *&v529 = sub_1CF50EB9C;
  *(&v529 + 1) = v163;
  *&v527 = MEMORY[0x1E69E9820];
  *(&v527 + 1) = 1107296256;
  *&v528 = sub_1CF005DF8;
  *(&v528 + 1) = &block_descriptor_3992;
  v164 = _Block_copy(&v527);

  sub_1CF9E6978();
  v165 = fpfs_openat();

  _Block_release(v164);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v173 = v521;
  if (v521)
  {
    goto LABEL_21;
  }

  if ((v165 & 0x80000000) == 0)
  {
    v160, v166, v167, v168, v169, v170, v171, v172;
    isEscapingClosureAtFileLocation = v514;
    if (v514 != 1)
    {
      v181 = v513;

      v160, v182, v183, v184, v185, v186, v187, v188;
      sub_1CF0BA850(v513, v514, v189, v190, v191, v192, v193, v194);
      if (!isEscapingClosureAtFileLocation)
      {
        (v497)(v468, v478);
        sub_1CEFD5338(v474, type metadata accessor for VFSItem);
        v76 = v459;
        goto LABEL_54;
      }

      swift_beginAccess();
      v196 = *(v78 + 16);
      v195 = *(v78 + 24);

      v197 = sub_1CEFE7394(v181, isEscapingClosureAtFileLocation);
      v499 = v181;
      if (v198)
      {
        if (v197 == 12565487 && v198 == 0xA300000000000000)
        {
          0xA300000000000000, 0xA300000000000000, v199, v200, v201, v202, v203, v204;
LABEL_37:
          v224 = sub_1CF9E69E8();
          v225 = sub_1CF025150(v224, v181, isEscapingClosureAtFileLocation);
          v227 = v226;
          v228 = MEMORY[0x1D3868C10](v225);
          v230 = v229;
          v227, v229, v231, v232, v233, v234, v235, v236;
          goto LABEL_39;
        }

        v213 = v181;
        v214 = v198;
        v215 = sub_1CF9E8048();
        v216 = v214;
        v181 = v213;
        v216, v217, v218, v219, v220, v221, v222, v223;
        if (v215)
        {
          goto LABEL_37;
        }
      }

      v228 = v181;
      v230 = isEscapingClosureAtFileLocation;
LABEL_39:
      v237 = sub_1CEFE7394(v196, v195);
      if (v238)
      {
        if (v237 == 12565487 && v238 == 0xA300000000000000)
        {
          0xA300000000000000, 0xA300000000000000, v239, v240, v241, v242, v243, v244;
LABEL_44:
          v254 = sub_1CF9E69E8();
          v255 = sub_1CF025150(v254, v196, v195);
          v257 = v256;
          v196 = MEMORY[0x1D3868C10](v255);
          v259 = v258;
          v257, v258, v260, v261, v262, v263, v264, v265;
          goto LABEL_46;
        }

        v245 = v238;
        v246 = sub_1CF9E8048();
        v245, v247, v248, v249, v250, v251, v252, v253;
        if (v246)
        {
          goto LABEL_44;
        }
      }

      v259 = v195;
LABEL_46:
      v273 = v474;
      if (v228 == v196 && v230 == v259)
      {
        v259, v266, v267, v268, v269, v270, v271, v272;
        v230, v274, v275, v276, v277, v278, v279, v280;
        v195, v281, v282, v283, v284, v285, v286, v287;
        (v497)(v468, v478);
        sub_1CEFD5338(v273, type metadata accessor for VFSItem);
      }

      else
      {
        v294 = sub_1CF9E8048();
        v259, v295, v296, v297, v298, v299, v300, v301;
        v230, v302, v303, v304, v305, v306, v307, v308;
        v195, v309, v310, v311, v312, v313, v314, v315;
        (v497)(v468, v478);
        sub_1CEFD5338(v273, type metadata accessor for VFSItem);
        if ((v294 & 1) == 0)
        {
          v316 = v503;
          swift_beginAccess();
          v317 = *(v316 + 16);
          v76 = v459;
          v318 = v499;
          if ((v317 & 1) == 0)
          {
            *(v503 + 16) = v317 | 1;
          }

          swift_beginAccess();
          v319 = *(v78 + 24);
          *(v78 + 16) = v318;
          *(v78 + 24) = isEscapingClosureAtFileLocation;
          v319, v320, v321, v322, v323, v324, v325, v326;
          goto LABEL_54;
        }
      }

      sub_1CF0BA850(v499, isEscapingClosureAtFileLocation, v288, v289, v290, v291, v292, v293);
      v76 = v459;
LABEL_54:
      v75 = v500;
LABEL_55:
      v480 = a12;
      v498 = a11;
      v500 = *(*(*(v76 + 16) + 32) + 16);
      type metadata accessor for VFSFileTree(0);
      v497 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      v482 = *v75;
      LODWORD(v481) = *(v75 + 8);
      swift_beginAccess();
      sub_1CEFCCBDC(v78, v510, &unk_1EC4BFD90, &unk_1CFA134F0);
      v327 = v503;
      swift_beginAccess();
      v503 = *(v327 + 16);
      type metadata accessor for StagedContext();
      v499 = swift_allocObject();
      swift_beginAccess();
      v328 = v483;
      sub_1CEFDA34C(v75, v483, type metadata accessor for VFSItem);
      v329 = v328 + *(v496 + 36);
      v330 = *v329;
      v331 = *(v329 + 8);
      v332 = v76;
      v333 = *(v329 + 16);
      v334 = *(v329 + 24);
      v496 = *(v328 + 16);
      v335 = *(v328 + 24);
      v337 = *(v328 + 32);
      v336 = *(v328 + 40);

      sub_1CEFD5338(v328, type metadata accessor for VFSItem);
      v519 = v334;
      *&v521 = v330;
      DWORD2(v521) = v331;
      *&v522 = v333;
      v338 = v480;
      v339 = v332;
      BYTE8(v522) = v334;
      *&v523 = 0;
      *(&v523 + 1) = v496;
      LOBYTE(v524) = v335;
      *(&v524 + 1) = v337;
      v340 = v510;
      v525 = v336;
      v526 = 0uLL;
      v341 = v505;
      sub_1CF06C190(&v527);
      v342 = swift_allocObject();
      v343 = v507;
      v344 = v508;
      *(v342 + 2) = v341;
      *(v342 + 3) = v343;
      *(v342 + 4) = v344;
      *(v342 + 5) = v339;
      v345 = v485;
      *(v342 + 6) = v498;
      *(v342 + 7) = v345;
      v498 = v342;
      *(v342 + 8) = v338;
      v346 = swift_allocObject();
      *(v346 + 16) = 0;
      v347 = *(v484 + 40);
      if ((v503 & 0x10) != 0 && (*(v340 + v347 + *(type metadata accessor for ItemMetadata(0) + 80)) & 1) == 0)
      {
        *(v346 + 16) = 1;
      }

      v507 = v346;
      v348 = *(v497 + 216);
      v496 = *(v497 + 224);
      v349 = *(v340 + v347);
      v350 = v341;

      v351 = v338;
      v508 = v348;
      v352 = v349 == 1;
      v353 = v506;
      v354 = v502;
      v355 = v491;
      v356 = v488;
      v357 = v489;
      if (v352 || (v503 & 0x18) == 0)
      {
        sub_1CF9E6408();
      }

      else
      {
        sub_1CF9E6418();
      }

      v358 = v501;
      qos_class_self();
      sub_1CF9E63B8();
      v359 = *(v353 + 48);
      if (v359(v355, 1, v358) == 1)
      {
        (*(v353 + 104))(v356, *MEMORY[0x1E69E7FA0], v358);
        if (v359(v355, 1, v358) != 1)
        {
          sub_1CEFCCC44(v355, &unk_1EC4BE380, &qword_1CFA01BA0);
        }
      }

      else
      {
        (*(v353 + 32))(v356, v355, v358);
      }

      v360 = v490;
      sub_1CF9E6428();
      sub_1CF9E6438();
      v361 = sub_1CF9E63C8();
      v362 = *(v353 + 8);
      v506 = v353 + 8;
      v362(v354, v358);
      v363 = v493;
      sub_1CF9E6438();
      v364 = sub_1CF9E63C8();
      v488 = v362;
      v362(v363, v358);
      v365 = v504;
      v366 = *(v504 + 8);
      if (v361 >= v364)
      {
        v367 = v360;
      }

      else
      {
        v367 = v357;
      }

      if (v361 >= v364)
      {
        v368 = v357;
      }

      else
      {
        v368 = v360;
      }

      v369 = v495;
      v489 = (v504 + 8);
      v485 = v366;
      v366(v367, v495);
      v370 = v509;
      (*(v365 + 32))(v509, v368, v369);
      (*(v365 + 56))(v370, 0, 1, v369);
      v371 = v492;
      sub_1CEFCCBDC(v510, v492, &unk_1EC4BFD90, &unk_1CFA134F0);
      v372 = (*(v486 + 80) + 16) & ~*(v486 + 80);
      v373 = (v487 + v372 + 7) & 0xFFFFFFFFFFFFFFF8;
      v374 = (v373 + 15) & 0xFFFFFFFFFFFFFFF8;
      v375 = (v374 + 15) & 0xFFFFFFFFFFFFFFF8;
      v376 = (v375 + 23) & 0xFFFFFFFFFFFFFFF8;
      v505 = ((v376 + 103) & 0xFFFFFFFFFFFFFFF8);
      v493 = ((v376 + 119) & 0xFFFFFFFFFFFFFFF8);
      v491 = ((v493 + 15) & 0xFFFFFFFFFFFFFFF8);
      v490 = ((v491 + 15) & 0xFFFFFFFFFFFFFFF8);
      v377 = (v490 + 15) & 0xFFFFFFFFFFFFFFF8;
      v378 = swift_allocObject();
      sub_1CEFE55D0(v371, v378 + v372, &unk_1EC4BFD90, &unk_1CFA134F0);
      *(v378 + v373) = v499;
      v379 = v498;
      *(v378 + v374) = v497;
      v380 = (v378 + v375);
      *v380 = sub_1CF903328;
      v380[1] = v379;
      v381 = (v378 + v376);
      v382 = v522;
      *v381 = v521;
      v381[1] = v382;
      v383 = v526;
      v381[4] = v525;
      v381[5] = v383;
      v384 = v524;
      v381[2] = v523;
      v381[3] = v384;
      v385 = &v505[v378];
      *v385 = v482;
      v385[8] = v481;
      *&v493[v378] = v463;
      v386 = v490;
      *&v491[v378] = v507;
      *&v386[v378] = v503;
      v387 = v378;
      v388 = v378 + v377;
      v389 = v540;
      *(v388 + 192) = v539;
      *(v388 + 208) = v389;
      *(v388 + 224) = v541;
      *(v388 + 240) = v542;
      v390 = v536;
      *(v388 + 128) = v535;
      *(v388 + 144) = v390;
      v391 = v538;
      *(v388 + 160) = v537;
      *(v388 + 176) = v391;
      v392 = v532;
      *(v388 + 64) = v531;
      *(v388 + 80) = v392;
      v393 = v534;
      *(v388 + 96) = v533;
      *(v388 + 112) = v393;
      v394 = v528;
      *v388 = v527;
      *(v388 + 16) = v394;
      v395 = v530;
      *(v388 + 32) = v529;
      *(v388 + 48) = v395;
      v396 = swift_allocObject();
      v396[2] = sub_1CF903328;
      v396[3] = v379;
      v397 = v496;
      v396[4] = v496;
      swift_retain_n();

      sub_1CEFCCBDC(&v521, &v513, &unk_1EC4BE330, &unk_1CF9FF010);

      sub_1CEFCCBDC(&v527, &v513, &qword_1EC4BECF0, &unk_1CF9FEEB0);

      v398 = fpfs_current_log();
      v505 = *(v397 + 16);
      v399 = *(v504 + 48);
      v400 = v509;
      if (v399(v509, 1, v369) == 1)
      {
        v401 = DISPATCH_BLOCK_INHERIT_QOS_CLASS;
      }

      else
      {
        v401 = DISPATCH_BLOCK_ENFORCE_QOS_CLASS;
      }

      v402 = v494;
      sub_1CEFCCBDC(v400, v494, &unk_1EC4BE370, qword_1CFA01B30);
      if (v399(v402, 1, v369) == 1)
      {
        sub_1CEFCCC44(v402, &unk_1EC4BE370, qword_1CFA01B30);
        v403 = QOS_CLASS_UNSPECIFIED;
      }

      else
      {
        v404 = v502;
        sub_1CF9E6438();
        v485(v402, v369);
        v403 = sub_1CF9E63C8();
        (v488)(v404, v501);
      }

      v405 = swift_allocObject();
      v405[2] = v398;
      v405[3] = sub_1CF902DA4;
      v405[4] = v387;
      v517 = sub_1CF2BA17C;
      v518 = v405;
      v513 = MEMORY[0x1E69E9820];
      v514 = 1107296256;
      v515 = sub_1CEFCA444;
      v516 = &block_descriptor_3974;
      v406 = _Block_copy(&v513);
      v407 = v398;

      v517 = sub_1CF2BA188;
      v518 = v396;
      v513 = MEMORY[0x1E69E9820];
      v514 = 1107296256;
      v515 = sub_1CEFCA444;
      v516 = &block_descriptor_3977;
      v408 = _Block_copy(&v513);

      v409 = v508;
      fp_task_tracker_async_and_qos(v505, v508, v401, v403, v406, v408);
      _Block_release(v408);
      _Block_release(v406);

      sub_1CEFCCC44(&v527, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      sub_1CEFCCC44(&v521, &unk_1EC4BE330, &unk_1CF9FF010);

      sub_1CEFCCC44(v510, &unk_1EC4BFD90, &unk_1CFA134F0);
      sub_1CEFCCC44(v509, &unk_1EC4BE370, qword_1CFA01B30);

      return;
    }

    goto LABEL_82;
  }

  if (MEMORY[0x1D38683F0](v112))
  {
    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v212 = sub_1CF9E6138();
      if ((v212 & 0x100000000) != 0)
      {
        LODWORD(v527) = 22;
      }

      else
      {
        LODWORD(v527) = v212;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v410 = v465;
      v411 = v467;
      sub_1CF9E57D8();
      v173 = sub_1CF9E53A8();
      (*(v466 + 8))(v410, v411);
      swift_willThrow();
      goto LABEL_22;
    }

    v173 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
LABEL_21:
    swift_willThrow();
LABEL_22:
    swift_bridgeObjectRelease_n();
    sub_1CF0BA850(v513, v514, v174, v175, v176, v177, v178, v179);
    v180 = v173;
    v507(0, v173);

    (v497)(v468, v478);
    sub_1CEFD5338(v474, type metadata accessor for VFSItem);
    return;
  }

  v160, v205, v206, v207, v208, v209, v210, v211;
  *&v527 = 0;
  *(&v527 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&v527 + 1), v412, v413, v414, v415, v416, v417, v418;
  *&v527 = 0xD00000000000001ALL;
  *(&v527 + 1) = 0x80000001CFA2DF30;
  v520[0] = v165;
  v419 = sub_1CF9E7F98();
  v421 = v420;
  MEMORY[0x1D3868CC0](v419);
  v421, v422, v423, v424, v425, v426, v427, v428;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v429 = v527;
  v430 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v431 = sub_1CF9E6108();
  v432 = sub_1CF9E72B8();
  *(&v429 + 1), v433, v434, v435, v436, v437, v438, v439;
  if (os_log_type_enabled(v431, v432))
  {
    v440 = swift_slowAlloc();
    v441 = swift_slowAlloc();
    *&v527 = v441;
    *v440 = 136315650;
    v442 = sub_1CF9E7988();
    v444 = v443;
    v445 = sub_1CEFD0DF0(v442, v443, &v527);
    v444, v446, v447, v448, v449, v450, v451, v452;
    *(v440 + 4) = v445;
    *(v440 + 12) = 2048;
    *(v440 + 14) = 315;
    *(v440 + 22) = 2080;
    *(v440 + 24) = sub_1CEFD0DF0(v429, *(&v429 + 1), &v527);
    _os_log_impl(&dword_1CEFC7000, v431, v432, "[ASSERT] ‼️  %s:%lu: %s", v440, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v441, -1, -1);
    MEMORY[0x1D386CDC0](v440, -1, -1);
  }

  (*(v498 + 1))(v464, v499);
  LODWORD(v455) = 0;
  v454 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF8A92C8(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a2 + 24);
  v18[1] = *(a2 + 16);
  v19 = v10;

  sub_1CF9E5CE8();
  sub_1CF662530(a1, a3);
  (*(v7 + 8))(v9, v6);
  v19, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1CF8A93F4(uint64_t a1, void *a2, void (*a3)(void, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v248 = a8;
  v275 = a7;
  v265 = a6;
  v261 = a5;
  v272 = a3;
  v273 = a4;
  v276 = a2;
  v274 = a1;
  v245 = sub_1CF9E63D8();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v243 = &v238 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v256 = &v238 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v269 = &v238 - v12;
  v254 = sub_1CF9E6068();
  v246 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v262 = &v238 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v249 = &v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v266 = &v238 - v17;
  v250 = type metadata accessor for Signpost(0);
  v251 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v255 = &v238 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v253 = &v238 - v20;
  v252 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v267 = &v238 - v23;
  v242 = sub_1CF9E53C8();
  v241 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v238 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v238 - v26;
  v264 = sub_1CF9E5A58();
  v263 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v247 = &v238 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BED18, &qword_1CFA006F8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v268 = &v238 - v31;
  v32 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v258 = &v238 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1CF9E5268();
  v259 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v257 = &v238 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_1CF9E6118();
  v270 = *(v271 - 1);
  MEMORY[0x1EEE9AC00](v271);
  v239 = &v238 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v238 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v238 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5000, &qword_1CFA181A0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v238 - v43);
  type metadata accessor for VFSItem(0);
  v275 = swift_projectBox();
  sub_1CEFCCBDC(v274, v44, &unk_1EC4C5000, &qword_1CFA181A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v44;
    v46 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v47 = v276;
    v48 = v45;
    v49 = sub_1CF9E6108();
    v50 = sub_1CF9E72A8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412546;
      v53 = [v47 itemID];
      *(v51 + 4) = v53;
      *v52 = v53;
      *(v51 + 12) = 2112;
      swift_getErrorValue();
      v54 = Error.prettyDescription.getter(v277, v278);
      *(v51 + 14) = v54;
      v52[1] = v54;
      _os_log_impl(&dword_1CEFC7000, v49, v50, "Error updating item %@ error %@", v51, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v52, -1, -1);
      MEMORY[0x1D386CDC0](v51, -1, -1);
    }

    (v270)[1](v41, v271);
    v55 = v45;
    v272(0, v45);

    return;
  }

  v56 = v276;

  if ((*(v30 + 48))(v44, 1, v29) == 1)
  {
    v57 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v58 = v56;
    v59 = sub_1CF9E6108();
    v60 = sub_1CF9E72A8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      v63 = [v58 itemID];
      *(v61 + 4) = v63;
      *v62 = v63;
      _os_log_impl(&dword_1CEFC7000, v59, v60, "Error updating item %@ error <nil>", v61, 0xCu);
      sub_1CEFCCC44(v62, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v62, -1, -1);
      MEMORY[0x1D386CDC0](v61, -1, -1);
    }

    (v270)[1](v38, v271);
    sub_1CF9E5118();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CEFCCCA4(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    v64 = v257;
    v65 = v260;
    sub_1CF9E57D8();
    v66 = sub_1CF9E50D8();
    (*(v259 + 8))(v64, v65);
    v272(0, v66);

    return;
  }

  v67 = v44;
  v68 = v268;
  sub_1CEFE55D0(v67, v268, &qword_1EC4BED18, &qword_1CFA006F8);
  v69 = swift_allocBox();
  sub_1CEFDA34C(v68, v70, type metadata accessor for VFSItem);
  v71 = v261;
  v72 = *(v261 + 16);
  sub_1CF25116C(v27);
  v73 = v263;
  v74 = v264;
  v75 = (*(v263 + 6))(v27, 1, v264);
  v274 = v72;
  if (v75 == 1)
  {
    sub_1CEFCCC44(v27, &unk_1EC4BE310, qword_1CF9FCBE0);
    v76 = v254;
    v27 = v246;
    v77 = v262;
LABEL_26:
    v121 = swift_allocObject();
    v122 = v272;
    v123 = v273;
    *(v121 + 16) = v272;
    *(v121 + 24) = v123;
    v124 = swift_allocObject();
    v124[2] = v69;
    v124[3] = v71;
    v125 = v248;
    v124[4] = v248;
    v124[5] = v122;
    v126 = v265;
    v275 = v124;
    v124[6] = v123;
    v124[7] = v126;
    v127 = swift_allocObject();
    v127[2] = sub_1CF90325C;
    v127[3] = v121;
    v276 = v127;
    swift_retain_n();
    v273 = v69;

    v128 = v125;
    v272 = v121;

    v271 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v129 = qword_1EDEBBE40;
    v130 = v266;
    (*(v27 + 56))(v266, 1, 1, v76);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v131 = sub_1CF9E7988();
    v133 = v132;
    MEMORY[0x1D3868CC0](v131);
    v133, v134, v135, v136, v137, v138, v139, v140;
    v141 = aBlock;
    v142 = v130;
    v143 = v249;
    sub_1CEFCCBDC(v142, v249, &unk_1EC4BED20, &unk_1CFA00700);
    v144 = *(v27 + 48);
    if (v144(v143, 1, v76) == 1)
    {
      v145 = v129;
      sub_1CF9E6048();
      if (v144(v143, 1, v76) != 1)
      {
        sub_1CEFCCC44(v143, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (*(v27 + 32))(v77, v143, v76);
    }

    v146 = v267;
    (*(v27 + 16))(v267, v77, v76);
    v147 = v250;
    *(v146 + *(v250 + 20)) = v129;
    v148 = v146 + *(v147 + 24);
    *v148 = "DB queue wait";
    *(v148 + 8) = 13;
    *(v148 + 16) = 2;
    v149 = v129;
    v150 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_1CF9FA450;
    *(v151 + 56) = MEMORY[0x1E69E6158];
    *(v151 + 64) = sub_1CEFD51C4();
    *(v151 + 32) = v141;
    v236 = v151;
    LOBYTE(v235) = 2;
    sub_1CF9E6028(v150, &dword_1CEFC7000, v149, "DB queue wait", 13, 2, v146, "%s", 2);
    v151, v152, v153, v154, v155, v156, v157, v158;
    (*(v27 + 8))(v77, v76);
    sub_1CEFCCC44(v266, &unk_1EC4BED20, &unk_1CFA00700);
    v266 = *(v274 + 168);
    v270 = *(v274 + 64);
    v264 = sub_1CF9E6448();
    v265 = *(v264 - 8);
    (*(v265 + 56))(v269, 1, 1, v264);
    v159 = v253;
    sub_1CEFDA34C(v146, v253, type metadata accessor for Signpost);
    v160 = (*(v251 + 80) + 16) & ~*(v251 + 80);
    v161 = (v252 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
    v162 = swift_allocObject();
    sub_1CEFDA0C4(v159, v162 + v160, type metadata accessor for Signpost);
    v163 = (v162 + v161);
    v263 = sub_1CF8FB24C;
    v164 = v276;
    *v163 = sub_1CF8FB24C;
    v163[1] = v164;
    v165 = v255;
    sub_1CEFDA34C(v146, v255, type metadata accessor for Signpost);
    v166 = (v161 + 23) & 0xFFFFFFFFFFFFFFF8;
    v167 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
    v168 = (v167 + 25) & 0xFFFFFFFFFFFFFFF8;
    v169 = (v168 + 23) & 0xFFFFFFFFFFFFFFF8;
    v170 = swift_allocObject();
    v171 = v170 + v160;
    v172 = v264;
    sub_1CEFDA0C4(v165, v171, type metadata accessor for Signpost);
    v173 = (v170 + v161);
    *v173 = sub_1CF045408;
    v173[1] = 0;
    *(v170 + v166) = v274;
    v174 = v265;
    v175 = v170 + v167;
    *v175 = "singleItemChange(_:changedFields:bounce:coordinate:request:completionHandler:)";
    *(v175 + 8) = 78;
    *(v175 + 16) = 2;
    v176 = (v170 + v168);
    v177 = v275;
    v178 = v276;
    *v176 = v263;
    v176[1] = v178;
    v179 = (v170 + v169);
    *v179 = sub_1CF8FDA44;
    v179[1] = v177;
    v180 = swift_allocObject();
    v180[2] = sub_1CF903308;
    v180[3] = v162;
    v181 = v266;
    v180[4] = v266;
    swift_retain_n();

    v274 = v162;

    v182 = fpfs_current_log();
    v183 = *(v181 + 16);
    v184 = v256;
    sub_1CEFCCBDC(v269, v256, &unk_1EC4BE370, qword_1CFA01B30);
    if ((*(v174 + 48))(v184, 1, v172) == 1)
    {
      sub_1CEFCCC44(v184, &unk_1EC4BE370, qword_1CFA01B30);
      v185 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v186 = v243;
      sub_1CF9E6438();
      (*(v174 + 8))(v184, v172);
      v185 = sub_1CF9E63C8();
      (*(v244 + 8))(v186, v245);
    }

    v187 = swift_allocObject();
    v187[2] = v182;
    v187[3] = sub_1CF4858EC;
    v187[4] = v170;
    v285 = sub_1CF2BA17C;
    v286 = v187;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v283 = sub_1CEFCA444;
    v284 = &block_descriptor_3941;
    v188 = _Block_copy(&aBlock);
    v189 = v182;

    v285 = sub_1CF2BA180;
    v286 = v180;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v283 = sub_1CEFCA444;
    v284 = &block_descriptor_3944;
    v190 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v183, v270, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v185, v188, v190);
    _Block_release(v190);
    _Block_release(v188);

    sub_1CEFCCC44(v269, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CEFD5338(v267, type metadata accessor for Signpost);
    v191 = v271;
    v192 = fpfs_adopt_log();

    sub_1CEFCCC44(v268, &qword_1EC4BED18, &qword_1CFA006F8);

    return;
  }

  (*(v73 + 4))(v247, v27, v74);
  v78 = sub_1CF9E5A18();
  v80 = v79;
  MEMORY[0x1EEE9AC00](v78);
  v234 = v265;
  v235 = v56;
  MEMORY[0x1EEE9AC00](v81);
  v236 = sub_1CF8FDA70;
  v237 = v82;
  v281 = 256;
  v280 = 0;
  v83 = swift_allocObject();
  v83[2] = &v281;
  v83[3] = sub_1CF8FDA7C;
  v83[4] = &v234;
  v83[5] = &v280;
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1CF8FDABC;
  *(v84 + 24) = v83;
  v285 = sub_1CF50EB9C;
  v286 = v84;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v283 = sub_1CF005DF8;
  v284 = &block_descriptor_3954;
  v85 = _Block_copy(&aBlock);

  sub_1CF9E6978();
  LODWORD(v27) = fpfs_openat();

  _Block_release(v85);

  LOBYTE(v85) = swift_isEscapingClosureAtFileLocation();

  v77 = v262;
  if (v85)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v94 = v280;
  if (v280)
  {
    swift_willThrow();

    v80, v95, v96, v97, v98, v99, v100, v101;
LABEL_14:
    v76 = v254;
    v27 = v246;
LABEL_25:
    (*(v263 + 1))(v247, v264);
    goto LABEL_26;
  }

  if ((v27 & 0x80000000) == 0)
  {
    v76 = v254;
    v27 = v246;
    if ((v281 & 0x100) == 0)
    {
      v80, v87, v88, v89, v90, v91, v92, v93;
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (MEMORY[0x1D38683F0](v86))
  {
    if (MEMORY[0x1D38683F0]() != 9939394)
    {
      MEMORY[0x1D38683F0]();
      v110 = sub_1CF9E6138();
      v27 = v246;
      if ((v110 & 0x100000000) != 0)
      {
        LODWORD(aBlock) = 22;
      }

      else
      {
        LODWORD(aBlock) = v110;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CEFCCCA4(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v111 = v240;
      v112 = v242;
      sub_1CF9E57D8();
      v113 = sub_1CF9E53A8();
      (*(v241 + 8))(v111, v112);
      swift_willThrow();
      v80, v114, v115, v116, v117, v118, v119, v120;

      v76 = v254;
      goto LABEL_25;
    }

    v102 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    swift_willThrow();
    v80, v103, v104, v105, v106, v107, v108, v109;

    goto LABEL_14;
  }

LABEL_38:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  *(&aBlock + 1), v193, v194, v195, v196, v197, v198, v199;
  *&aBlock = 0xD00000000000001ALL;
  *(&aBlock + 1) = 0x80000001CFA2DF30;
  v279 = v27;
  v200 = sub_1CF9E7F98();
  v202 = v201;
  MEMORY[0x1D3868CC0](v200);
  v202, v203, v204, v205, v206, v207, v208, v209;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v210 = aBlock;
  v211 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v212 = sub_1CF9E6108();
  v213 = sub_1CF9E72B8();
  *(&v210 + 1), v214, v215, v216, v217, v218, v219, v220;
  if (os_log_type_enabled(v212, v213))
  {
    v221 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    *&aBlock = v222;
    *v221 = 136315650;
    v223 = sub_1CF9E7988();
    v225 = v224;
    v226 = sub_1CEFD0DF0(v223, v224, &aBlock);
    v225, v227, v228, v229, v230, v231, v232, v233;
    *(v221 + 4) = v226;
    *(v221 + 12) = 2048;
    *(v221 + 14) = 315;
    *(v221 + 22) = 2080;
    *(v221 + 24) = sub_1CEFD0DF0(v210, *(&v210 + 1), &aBlock);
    _os_log_impl(&dword_1CEFC7000, v212, v213, "[ASSERT] ‼️  %s:%lu: %s", v221, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v222, -1, -1);
    MEMORY[0x1D386CDC0](v221, -1, -1);
  }

  (v270)[1](v239, v271);
  LODWORD(v237) = 0;
  v236 = 315;
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF8AAEBC(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v64 = *MEMORY[0x1E69E9840];
  v8 = sub_1CF9E6938();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &value - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x40000000) == 0)
  {

    return fpfs_make_fsevent();
  }

  if ([a3 isTrashed])
  {
    v14 = swift_beginAccess();
    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    if (v16 != 2 || v15)
    {
      if (v16 != 2 || v15 != 1)
      {
        *&value = 0x2F73662F70665F5FLL;
        *(&value + 1) = 0xE800000000000000;
        v62 = v15;
        v63 = v16;
        v19 = VFSItemID.description.getter(v14);
        v21 = v20;
        MEMORY[0x1D3868CC0](v19);
        v21, v22, v23, v24, v25, v26, v27, v28;
        v29 = *(&value + 1);
        v18 = sub_1CF9E6888();
        v29, v30, v31, v32, v33, v34, v35, v36;
LABEL_17:
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v38 = v37;
        sub_1CF9E6918();
        v39 = sub_1CF9E68C8();
        v41 = v40;
        v38, v40, v42, v43, v44, v45, v46, v47;
        result = (*(v9 + 8))(v12, v8);
        if (v41 >> 60 == 15)
        {
          __break(1u);
          return result;
        }

        v48 = v41 >> 62;
        if ((v41 >> 62) > 1)
        {
          if (v48 != 2)
          {
            *(&value + 6) = 0;
            *&value = 0;
            p_value = &value;
            v51 = v7;
            v49 = 0;
            goto LABEL_40;
          }

          v52 = *(v39 + 16);
          v53 = *(v39 + 24);
          v54 = sub_1CF9E5498();
          if (v54)
          {
            v55 = sub_1CF9E54C8();
            if (__OFSUB__(v52, v55))
            {
              goto LABEL_42;
            }

            v54 += v52 - v55;
          }

          v56 = __OFSUB__(v53, v52);
          v57 = v53 - v52;
          if (!v56)
          {
            goto LABEL_32;
          }

          __break(1u);
        }

        else if (!v48)
        {
          *&value = v39;
          WORD4(value) = v41;
          BYTE10(value) = BYTE2(v41);
          BYTE11(value) = BYTE3(v41);
          BYTE12(value) = BYTE4(v41);
          v49 = BYTE6(v41);
          BYTE13(value) = BYTE5(v41);
          p_value = &value;
          v51 = v7;
LABEL_40:
          fsetxattr(v51, "com.apple.fileprovider.trash-put-back#PN", p_value, v49, 0, 0);
          return sub_1CEFE48D8(v39, v41);
        }

        v57 = (v39 >> 32) - v39;
        if (v39 >> 32 >= v39)
        {
          v54 = sub_1CF9E5498();
          if (!v54)
          {
LABEL_32:
            v59 = sub_1CF9E54B8();
            if (v59 >= v57)
            {
              v60 = v57;
            }

            else
            {
              v60 = v59;
            }

            if (v54)
            {
              v49 = v60;
            }

            else
            {
              v49 = 0;
            }

            v51 = v7;
            p_value = v54;
            goto LABEL_40;
          }

          v58 = sub_1CF9E54C8();
          if (!__OFSUB__(v39, v58))
          {
            v54 += v39 - v58;
            goto LABEL_32;
          }

LABEL_43:
          __break(1u);
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v17 = MEMORY[0x1E6967280];
    }

    else
    {
      v17 = MEMORY[0x1E6967258];
    }

    v18 = *v17;
    goto LABEL_17;
  }

  return fremovexattr(v7, "com.apple.fileprovider.trash-put-back#PN", 0);
}