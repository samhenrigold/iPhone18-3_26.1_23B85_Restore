void sub_1CF723CA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t, void, void *), uint64_t a7)
{
  v103 = a3;
  v105 = a7;
  v106 = a6;
  v97 = a5;
  v104 = a4;
  *&v107 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v91 - v10;
  v11 = type metadata accessor for VFSItem(0);
  v12 = *(v11 - 8);
  v99 = v11;
  v100 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v91 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v26 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();
  v95 = v19;
  v92 = v22;
  v94 = v16;
  v93 = v25;
  v91 = updated;

  v30 = v109;
  v29 = v110;
  *&v31 = v111;
  v107 = v31;
  v32 = v112;
  v33 = v113;
  v34 = v114;
  swift_allocObject();
  v35 = sub_1CF9E5678();
  sub_1CF725648(&qword_1EC4BEAB0, type metadata accessor for ItemMetadata, &unk_1CFA0FA40);
  sub_1CF9E5668();
  v104 = v35;
  v36 = *(v102 + 24);
  if (!v36)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = v28;
  v108[0] = v34;
  v109 = v30;
  v110 = v29;
  v111 = v107;
  v112 = v32;
  v113 = v33;

  v38 = v34;
  v39 = v101;
  sub_1CF263024(v108, &v109, 2049, v101);
  v40 = v30;
  v41 = v95;
  LODWORD(v102) = v38;
  v103 = v37;
  v113, v42, v43, v44, v45, v46, v47, v48;
  v49 = v100 + 48;
  v50 = *(v100 + 48);
  v52 = v50(v39, 1, v99) == 1;
  v51 = v39;
  if (!v52)
  {
    v58 = v50;
    v100 = v49;
    v59 = v98;
    v60 = sub_1CEFE4D30(v51, v98, type metadata accessor for VFSItem);
    MEMORY[0x1EEE9AC00](v60);
    *(&v91 - 4) = v59;
    *(&v91 - 3) = v36;
    v61 = v103;
    *(&v91 - 2) = v97;
    *(&v91 - 1) = v61;
    v62 = v94;
    sub_1CF7136CC(v41, v94, v63, v64, sub_1CF725690, (&v91 - 6));
    *&v107 = 0;
    v73 = v33;

    v74 = v92;
    sub_1CEFE4D30(v41, v92, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v62, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v59, type metadata accessor for VFSItem);
    v75 = v93;
    sub_1CEFE4D30(v74, v93, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v76 = v91;
    v77 = v96;
    sub_1CEFCCBDC(v75 + *(v91 + 20), v96, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v78 = v58(v77, 1, v99);
    if (v78 != 1)
    {
      v73, v79, v80, v81, v82, v83, v84, v85;
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
      v57 = v107;
      v86 = sub_1CF9E56A8();
      v88 = v103;
      if (!v57)
      {
        v89 = v86;
        v90 = v87;

        sub_1CEFE522C(v77, type metadata accessor for VFSItem);
        v106(v89, v90, *(v75 + *(v76 + 24)), 0);

        sub_1CEFE4714(v89, v90);
        sub_1CEFE522C(v75, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFE522C(v88, type metadata accessor for ItemMetadata);
        return;
      }

      sub_1CEFE522C(v75, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);

      sub_1CEFE522C(v88, type metadata accessor for ItemMetadata);
      sub_1CEFE522C(v77, type metadata accessor for VFSItem);
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    return;
  }

  sub_1CEFCCC44(v39, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v52 = (v102 - 1) < 2 || v107 == 0;
  v53 = v52;
  if (v52)
  {
    v54 = v40;
  }

  else
  {
    v54 = v107;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v55 = swift_allocError();
  *v56 = v54;
  *(v56 + 8) = v53;
  *(v56 + 16) = 0u;
  *(v56 + 32) = 0u;
  *(v56 + 48) = 0u;
  *(v56 + 64) = 0u;
  *(v56 + 80) = 0u;
  *(v56 + 96) = 0u;
  *(v56 + 112) = 0u;
  sub_1CF2A8DE0(v56);
  swift_willThrow();
  v57 = v55;

  sub_1CEFE522C(v103, type metadata accessor for ItemMetadata);
  v33, v65, v66, v67, v68, v69, v70, v71;
LABEL_14:
  v72 = v57;
  v106(0, 0xF000000000000000, 0, v57);
}

void sub_1CF72461C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19[-v9];
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v3 + 24))
  {
    v11 = v21;

    sub_1CF50917C(v10, v7, &v20);

    sub_1CEFE522C(v7, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v10, &qword_1EC4C1330, &unk_1CFA13480);
    v11, v12, v13, v14, v15, v16, v17, v18;
    a3(0);
  }

  else
  {
    __break(1u);
  }
}

double sub_1CF724900(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(__int128 *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;

  v10 = sub_1CF9E5B88();
  v12 = v11;

  _Block_copy(v8);
  sub_1CF729FE4(v10, v12, a1, v8, a5);
  _Block_release(v8);
  _Block_release(v8);
  sub_1CEFE4714(v10, v12);

  return result;
}

uint64_t (*sub_1CF7249B8(uint64_t (*result)(void)))(void)
{
  if (*(v1 + 24))
  {
    v2 = result;

    sub_1CF509948();

    return v2(0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF724B84(uint64_t a1, void (*a2)(void *))
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1CF9E5928();
  v10[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v10];

  if (v5)
  {
    v6 = v10[0];
    a2(0);
  }

  else
  {
    v7 = v10[0];
    v8 = sub_1CF9E57F8();

    swift_willThrow();
    v9 = v8;
    a2(v8);
  }
}

void sub_1CF724DC4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1CF9E5928();
  v6 = sub_1CF9E5928();
  v12[0] = 0;
  v7 = [v4 moveItemAtURL:v5 toURL:v6 error:v12];

  if (v7)
  {
    v8 = v12[0];
    a3(0);
  }

  else
  {
    v9 = v12[0];
    v10 = sub_1CF9E57F8();

    swift_willThrow();
    v11 = v10;
    a3(v10);
  }
}

void sub_1CF72506C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v4 + 24))
  {
    v7 = v16;
    if ((a3 & 0x8000000000000000) == 0)
    {

      sub_1CF50A7C8(&v15, a3);

      v7, v8, v9, v10, v11, v12, v13, v14;
      a4(0);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1CF72520C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(__int128 *))
{
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v5 + 24))
  {
    v8 = v17;

    a5(&v16);

    v8, v9, v10, v11, v12, v13, v14, v15;
    a3(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF72535C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(v4 + 24))
  {
    v7 = v16;

    sub_1CF50B864(&v15, a3);

    v7, v8, v9, v10, v11, v12, v13, v14;
    a4(0);
  }

  else
  {
    __break(1u);
  }
}

double sub_1CF7254AC(uint64_t a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, unint64_t, uint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;

  v12 = sub_1CF9E5B88();
  v14 = v13;

  _Block_copy(v10);
  a6(v12, v14, a4, a1, v10);
  _Block_release(v10);
  _Block_release(v10);
  sub_1CEFE4714(v12, v14);

  return result;
}

uint64_t FSTester.deinit()
{

  return v0;
}

uint64_t FSTester.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1CF7255DC()
{
  result = qword_1EC4C2960;
  if (!qword_1EC4C2960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2960);
  }

  return result;
}

uint64_t sub_1CF725648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CF72594C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v93 = a7;
  v67 = a6;
  v70 = a3;
  v73 = sub_1CF9E6118();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E7388();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v90 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CF9E7318();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v88 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = v66 - v16;
  v85 = sub_1CF9E6448();
  v80 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v66 - v19;
  v21 = sub_1CF9E5A58();
  v81 = *(v21 - 8);
  v22 = v81;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v66 - v27;
  v86 = a5 & 1;
  v29 = *(v22 + 16);
  v82 = v66 - v27;
  v29(v66 - v27, a4, v21, v26);
  type metadata accessor for DocumentWharfForTesting(0);
  v30 = swift_allocObject();
  v79 = v24;
  v78 = v21;
  (v29)(v24, v28, v21);
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_invalidated) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_activated) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_disableGarbageCollection) = 0;
  v31 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;
  v32 = MEMORY[0x1E69E7CC0];
  *v31 = 0;
  *(v31 + 1) = v32;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentSource) = 0;
  v30[2] = a1;
  v30[3] = a2;
  v33 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_wharfHandle;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  swift_beginAccess();
  *(v33 + 3) = -1;
  v66[1] = v22 + 16;
  v66[0] = v29;
  (v29)(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_root, v24, v21);
  v77 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v94 = 0;
  v95 = 0xE000000000000000;

  sub_1CF9E7948();
  v95, v34, v35, v36, v37, v38, v39, v40;
  v68 = a1;
  v94 = a1;
  v95 = a2;
  v69 = a2;

  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA2F690);
  v76 = v94;
  v75 = v95;
  v41 = v20;
  v74 = v20;
  sub_1CF9E63E8();
  v94 = v32;
  sub_1CF725648(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  v42 = v84;
  v43 = v87;
  sub_1CF9E77B8();
  v44 = v80;
  v45 = v41;
  v46 = v85;
  (*(v80 + 16))(v83, v45, v85);
  v47 = v89;
  (*(v89 + 16))(v88, v42, v43);
  (*(v91 + 104))(v90, *MEMORY[0x1E69E8098], v92);
  v48 = v81;
  v49 = sub_1CF9E73B8();
  (*(v47 + 8))(v42, v43);
  v50 = v44;
  v51 = v78;
  (*(v50 + 8))(v74, v46);
  v52 = v48;
  v53 = *(v48 + 8);
  v53(v79, v51);
  v53(v82, v51);
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deferredWQ) = v49;
  v54 = v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_ioContext;
  *v54 = sub_1CF36581C;
  *(v54 + 1) = 0;
  *(v54 + 4) = v86;
  *(v54 + 5) = 2;
  *(v54 + 12) = 1;
  v54[26] = 1;
  *(v30 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_reporter) = 0;

  sub_1CF9BF6A8();
  v55 = v67;
  v56 = sub_1CF9E6888();
  v57 = objc_allocWithZone(type metadata accessor for InternalPathsManager(0));
  v58 = v56;
  v59 = InternalPathsManager.init(providerDomainID:)(v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v60 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CF9FA450;
  (v66[0])(v61 + v60, v70, v51);
  type metadata accessor for VFSFileTree(0);
  swift_allocObject();
  v62 = v59;
  v63 = sub_1CF25D1E8(v61, v30, v62, 0, 0, 0, 0, 0, 0, 1u, 0);
  *(v55 + 16) = v63;
  v64 = v63;

  type metadata accessor for InProcessVFSFileTreeTester();
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  *(v65 + 24) = sub_1CF4E3238(MEMORY[0x1E69E7CC0]);
  *(v55 + 24) = v65;

  (*(v93 + 16))(v93, 0);
}

void sub_1CF726408(const void *a1, unint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, NSObject *a8, uint64_t a9, const void *a10)
{
  v301 = a8;
  v284 = a7;
  v300 = a4;
  v299 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1310, &qword_1CFA08AC8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v254 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  v273 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v254 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v21 = *(v20 - 8);
  v320 = v20;
  v321 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v254 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v287 = (&v254 - v25);
  v313 = sub_1CF9E6388();
  v303 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v312 = (&v254 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v311 = &v254 - v28;
  v310 = sub_1CF9E6498();
  v315 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v309 = &v254 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v277 = &v254 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v254 - v33;
  v307 = sub_1CF9E63D8();
  v314 = *(v307 - 8);
  MEMORY[0x1EEE9AC00](v307);
  v279 = &v254 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v302 = &v254 - v37;
  v308 = sub_1CF9E6448();
  v319 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v280 = &v254 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v254 - v40);
  v306 = sub_1CF9E73D8();
  v318 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v305 = &v254 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v271 = &v254 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v278 = &v254 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v281 = &v254 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v295 = (&v254 - v50);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v275 = &v254 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for VFSItem(0);
  v304 = *(v297 - 8);
  MEMORY[0x1EEE9AC00](v297);
  v285 = &v254 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v296 = &v254 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v282 = &v254 - v56;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2948, &unk_1CFA13490);
  MEMORY[0x1EEE9AC00](v274);
  v276 = &v254 - v57;
  if (a1 > 4 || ((0x17u >> a1) & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v298 = a1;
  a1 = a10;
  VFSItemID.init(rawValue:)(a2, &v324);
  v317 = v325;
  if (v325 == 255)
  {
LABEL_41:
    _Block_release(a1);
    __break(1u);
    goto LABEL_42;
  }

  v269 = v23;
  v270 = v17;
  v316 = v324;
  if (a6 >> 60 == 15)
  {
    v58 = 0xF000000000000007;
  }

  else
  {
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CEFE42D4(a5, a6);
    sub_1CF9E5678();
    sub_1CF190978();
    sub_1CF9E5668();

    sub_1CEFE48D8(a5, a6);
    v58 = v324;
  }

  v289 = v34;
  v290 = v41;
  v283 = v19;
  v267 = v16;
  v286 = 0;
  v292 = a10;
  v59 = *(a9 + 24);
  v60 = v307;
  if (!v59)
  {
LABEL_42:
    _Block_release(v292);
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/tests/units/FSTester/FSTester.swift", 98, 2, 96);
  }

  v324 = v299;
  v325 = v300;
  v322 = 58;
  v323 = 0xE100000000000000;
  v326 = 47;
  v327 = 0xE100000000000000;
  sub_1CEFE4E68();

  v268 = sub_1CF9E7668();
  v62 = v61;
  [v301 integerValue];
  v63 = v59[2];
  v293 = v59;

  v299 = v62;

  v294 = v58;
  sub_1CF50D18C(v58);
  v64 = dispatch_group_create();
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  v65 = swift_allocBox();
  v66 = *(v321 + 56);
  v288 = v67;
  v265 = v321 + 56;
  v264 = v66;
  v66(v67, 1, 1, v320);
  dispatch_group_enter(v64);
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  *(v68 + 24) = v64;
  v69 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
  v300 = v63;
  v70 = *(v63 + 216);
  v324 = MEMORY[0x1E69E7CC0];
  v71 = sub_1CF725648(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v291 = v65;

  v301 = v64;
  v72 = v70;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
  v74 = sub_1CEFCCCEC(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0, MEMORY[0x1E69E6328]);
  v75 = v305;
  v259 = v73;
  v258 = v74;
  v76 = v306;
  v262 = v71;
  sub_1CF9E77B8();
  v266 = v69;
  v77 = sub_1CF9E73E8();

  v78 = *(v318 + 8);
  v318 += 8;
  v257 = v78;
  v78(v75, v76);
  qos_class_self();
  v79 = v289;
  sub_1CF9E63B8();
  v80 = v314;
  v81 = v314 + 48;
  v82 = *(v314 + 48);
  v83 = v82(v79, 1, v60);
  v261 = v81;
  v260 = v82;
  if (v83 == 1)
  {
    (*(v80 + 104))(v302, *MEMORY[0x1E69E7FA0], v60);
    v84 = v82(v79, 1, v60);
    v85 = v317;
    v86 = v316;
    v87 = v290;
    if (v84 != 1)
    {
      sub_1CEFCCC44(v79, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v80 + 32))(v302, v79, v60);
    v85 = v317;
    v86 = v316;
    v87 = v290;
  }

  ObjectType = swift_getObjectType();
  sub_1CF9E6428();
  v89 = swift_allocObject();
  *(v89 + 16) = v300;
  *(v89 + 24) = v86;
  *(v89 + 32) = v85;
  *(v89 + 40) = 0u;
  *(v89 + 56) = 0u;
  *(v89 + 72) = 0u;
  *(v89 + 88) = 0u;
  *(v89 + 104) = 0u;
  *(v89 + 120) = 0u;
  *(v89 + 136) = 0;
  *(v89 + 144) = 2049;
  *(v89 + 152) = v77;
  *(v89 + 160) = sub_1CF50EBA0;
  *(v89 + 168) = v68;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v87, sub_1CF72A328, v89, ObjectType);

  v90 = *(v319 + 8);
  v319 += 8;
  v290 = v90;
  v90(v87, v308);
  v91 = v309;
  sub_1CF9E6478();
  v92 = v303;
  v93 = v303[13];
  v94 = v311;
  LODWORD(v289) = *MEMORY[0x1E69E7F40];
  v95 = v313;
  (v93)(v311);
  v96 = v312;
  *v312 = 0;
  v256 = *MEMORY[0x1E69E7F28];
  v302 = v93;
  (v93)(v96);
  MEMORY[0x1D3869770](v91, v94, v96, ObjectType);
  v97 = v92[1];
  (v97)(v96, v95);
  (v97)(v94, v95);
  v99 = v315 + 8;
  v98 = *(v315 + 8);
  v98(v91, v310);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v100 = v301;
  sub_1CF9E72F8();
  v101 = v288;
  swift_beginAccess();
  v102 = *(v321 + 48);
  v321 += 48;
  if (v102(v101, 1, v320))
  {
    v255 = v102;
    v288 = v98;
    v303 = v97;

    v103 = v304;
    v104 = v295;
    v105 = v297;
    (*(v304 + 56))(v295, 1, 1, v297);

    v106 = v298;
  }

  else
  {
    v107 = v101;
    v108 = v287;
    sub_1CEFCCBDC(v107, v287, &unk_1EC4BF310, &unk_1CF9FDB30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v103 = v304;
    v106 = v298;
    if (EnumCaseMultiPayload == 1)
    {
      v110 = *v108;
      v322 = *v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();
      v111 = v299;
      v299, v112, v113, v114, v115, v116, v117, v118;

      v119 = v294;
      sub_1CF4EB118(v294);
      v111, v120, v121, v122, v123, v124, v125, v126;
      sub_1CF4EB118(v119);
LABEL_19:

      v149 = v292;
LABEL_38:
      v249 = v110;
      v250 = sub_1CF9E57E8();
      v149[2](v149, 0, v250);

      return;
    }

    v255 = v102;
    v288 = v98;
    v303 = v97;

    v127 = v108;
    v104 = v295;
    sub_1CEFE55D0(v127, v295, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v105 = v297;
  }

  v128 = *(v103 + 48);
  v129 = (v128)(v104, 1, v105);
  v130 = v293;
  v131 = v296;
  if (v129 == 1)
  {
    sub_1CEFCCC44(v104, &unk_1EC4BEC00, &unk_1CF9FCB60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
    sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
    v110 = swift_allocError();
    *v132 = v316;
    *(v132 + 8) = v317;
    *(v132 + 16) = 0u;
    *(v132 + 32) = 0u;
    *(v132 + 48) = 0u;
    *(v132 + 64) = 0u;
    *(v132 + 80) = 0u;
    *(v132 + 96) = 0u;
    *(v132 + 112) = 0u;
    sub_1CF2A8DE0(v132);
    swift_willThrow();
    v133 = v299;
    v299, v134, v135, v136, v137, v138, v139, v140;

    v141 = v294;
    sub_1CF4EB118(v294);
    v133, v142, v143, v144, v145, v146, v147, v148;
    sub_1CF4EB118(v141);
    goto LABEL_19;
  }

  sub_1CEFE4D30(v104, v296, type metadata accessor for VFSItem);
  v150 = v286;
  sub_1CF50BCA0(v131, v283);
  if (v150)
  {
    sub_1CEFE522C(v131, type metadata accessor for VFSItem);
    v151 = v299;
    v299, v152, v153, v154, v155, v156, v157, v158;

    v159 = v294;
    sub_1CF4EB118(v294);
    v151, v160, v161, v162, v163, v164, v165, v166;
    sub_1CF4EB118(v159);

    v149 = v292;
    v110 = v150;
    goto LABEL_38;
  }

  v301 = v128;
  v167 = v131;
  v168 = v130;
  v169 = 0x300020100uLL >> (8 * v106);
  v170 = objc_autoreleasePoolPush();
  sub_1CF4FECC4(v167, v168, v316, v317, v268, v299, v169, v294, v285, v284 & 1);
  v286 = 0;
  objc_autoreleasePoolPop(v170);
  v171 = dispatch_group_create();
  v172 = swift_allocBox();
  v291 = v173;
  v264(v173, 1, 1, v320);
  dispatch_group_enter(v171);
  v174 = swift_allocObject();
  *(v174 + 16) = v172;
  *(v174 + 24) = v171;
  v287 = v174;
  v175 = *(v300 + 216);
  v322 = MEMORY[0x1E69E7CC0];
  v298 = v172;

  v295 = v171;
  v176 = v175;
  v177 = v305;
  v178 = v306;
  sub_1CF9E77B8();
  v179 = sub_1CF9E73E8();

  v257(v177, v178);
  qos_class_self();
  v180 = v277;
  sub_1CF9E63B8();
  v181 = v307;
  v182 = v260;
  v183 = v260(v180, 1, v307);
  v315 = v99;
  if (v183 == 1)
  {
    (*(v314 + 104))(v279, *MEMORY[0x1E69E7FA0], v181);
    v184 = v182(v180, 1, v181);
    v185 = v280;
    if (v184 != 1)
    {
      sub_1CEFCCC44(v180, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v314 + 32))(v279, v180, v181);
    v185 = v280;
  }

  v186 = swift_getObjectType();
  v319 = v186;
  sub_1CF9E6428();
  v187 = swift_allocObject();
  v188 = v316;
  *(v187 + 16) = v300;
  *(v187 + 24) = v188;
  *(v187 + 32) = v317;
  *(v187 + 40) = 0u;
  *(v187 + 56) = 0u;
  *(v187 + 72) = 0u;
  *(v187 + 88) = 0u;
  *(v187 + 104) = 0u;
  *(v187 + 120) = 0u;
  *(v187 + 136) = 0;
  *(v187 + 144) = 2049;
  *(v187 + 152) = v179;
  *(v187 + 160) = sub_1CF50EBA0;
  *(v187 + 168) = v287;

  swift_unknownObjectRetain();

  sub_1CEFD5828(0, v185, sub_1CF72A328, v187, v186);

  v290(v185, v308);
  v189 = v309;
  sub_1CF9E6478();
  v190 = v311;
  v191 = v313;
  v192 = v302;
  (v302)(v311, v289, v313);
  v193 = v312;
  *v312 = 0;
  (v192)(v193, v256, v191);
  MEMORY[0x1D3869770](v189, v190, v193, v319);
  v194 = v303;
  (v303)(v193, v191);
  v194(v190, v191);
  v288(v189, v310);
  sub_1CF9E7448();

  swift_unknownObjectRelease();
  v195 = v295;
  sub_1CF9E72F8();
  v196 = v291;
  swift_beginAccess();
  if (v255(v196, 1, v320))
  {

    v197 = v281;
    v198 = v297;
    (*(v304 + 56))(v281, 1, 1, v297);

    v199 = v278;
    v200 = v285;
  }

  else
  {
    v201 = v196;
    v202 = v269;
    sub_1CEFCCBDC(v201, v269, &unk_1EC4BF310, &unk_1CF9FDB30);
    v203 = swift_getEnumCaseMultiPayload();
    v199 = v278;
    v204 = v299;
    v200 = v285;
    v197 = v281;
    if (v203 == 1)
    {
      v110 = *v202;
      v326 = *v202;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      swift_willThrowTypedImpl();

      sub_1CEFE522C(v200, type metadata accessor for VFSItem);
      sub_1CEFCCC44(v283, &qword_1EC4C1330, &unk_1CFA13480);

      sub_1CEFE522C(v296, type metadata accessor for VFSItem);
      v204, v205, v206, v207, v208, v209, v210, v211;

      v212 = v294;
      sub_1CF4EB118(v294);
      v204, v213, v214, v215, v216, v217, v218, v219;
      sub_1CF4EB118(v212);
      goto LABEL_19;
    }

    sub_1CEFE55D0(v202, v197, &unk_1EC4BEC00, &unk_1CF9FCB60);

    v198 = v297;
  }

  sub_1CEFE4FF4(v200, v282, type metadata accessor for VFSItem);
  v220 = v283;
  v221 = v267;
  sub_1CEFCCBDC(v283, v267, &qword_1EC4C1330, &unk_1CFA13480);
  (*(v273 + 56))(v221, 0, 1, v270);
  sub_1CEFCCBDC(v197, v199, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v222 = v271;
  sub_1CEFCCBDC(v197, v271, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if ((v301)(v222, 1, v198) == 1)
  {
    sub_1CEFCCC44(v222, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v149 = v292;
    v223 = v286;
    v224 = v294;
    v225 = v276;
    v226 = v275;
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v227 = qword_1EDEABDE8;
    sub_1CEFCCC44(v281, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v285, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v283, &qword_1EC4C1330, &unk_1CFA13480);
    v228 = v267;
    v229 = v296;
  }

  else
  {
    v229 = v296;
    sub_1CF717E1C(v296);
    sub_1CEFCCC44(v197, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFE522C(v200, type metadata accessor for VFSItem);
    sub_1CEFCCC44(v220, &qword_1EC4C1330, &unk_1CFA13480);
    sub_1CEFE522C(v222, type metadata accessor for VFSItem);
    v227 = v326;
    v149 = v292;
    v223 = v286;
    v228 = v267;
    v224 = v294;
    v225 = v276;
    v226 = v275;
  }

  v230 = *(v274 + 48);
  sub_1CEFE55D0(v228, v226, &qword_1EC4C1310, &qword_1CFA08AC8);
  v231 = updated;
  sub_1CEFE55D0(v199, v226 + *(updated + 20), &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v226 + *(v231 + 24)) = v227;
  sub_1CEFE522C(v229, type metadata accessor for VFSItem);
  v232 = v299;
  v299, v233, v234, v235, v236, v237, v238, v239;

  sub_1CF4EB118(v224);

  v232, v240, v241, v242, v243, v244, v245, v246;
  sub_1CEFE4D30(v282, v225, type metadata accessor for VFSItem);
  sub_1CEFE4D30(v226, v225 + v230, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
  v247 = sub_1CF9E56A8();
  if (v223)
  {
    v110 = v223;
    sub_1CEFCCC44(v225, &qword_1EC4C2948, &unk_1CFA13490);

    sub_1CF4EB118(v224);
    goto LABEL_38;
  }

  v251 = v247;
  v252 = v248;

  v253 = sub_1CF9E5B48();
  (v149)[2](v149, v253, 0);

  sub_1CF4EB118(v224);
  sub_1CEFE4714(v251, v252);
  sub_1CEFCCC44(v225, &qword_1EC4C2948, &unk_1CFA13490);
}

void sub_1CF72826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, int a6, uint64_t a7, const void *a8)
{
  v81 = a8;
  v79 = a7;
  v76 = a6;
  v75 = a5;
  v78 = a4;
  *&v80 = a3;
  v8 = type metadata accessor for VFSItem(0);
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2958, &qword_1CFA134A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  v15 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  v18 = v79;
  v19 = v78;
  v74 = v15;
  v20 = updated;
  v21 = v77;
  v71 = v8;
  v72 = v17;
  v70 = v10;
  v73 = v13;
  v22 = v90;
  v23 = v91;
  v24 = v92;
  v25 = v93;
  v26 = v94;
  v27 = v80;
  if (v80)
  {
    v80 = v90;
    VFSItemID.init(rawValue:)([v27 integerValue], &v90);
    v22 = v80;
    v28 = v90;
    v29 = BYTE8(v90);
  }

  else
  {
    v28 = 0;
    v29 = -1;
  }

  v30 = v21;
  if (!*(v18 + 24))
  {
    goto LABEL_14;
  }

  v31 = v20;
  *&v80 = v11;
  v90 = v22;
  v91 = v23;
  v92 = v24;
  v93 = v25;
  v94 = v26;
  v88 = v28;
  v89 = v29;
  v32 = v74;
  if (v75)
  {
    v86 = v19;
    v87 = v75;
    v84 = 58;
    v85 = 0xE100000000000000;
    v82 = 47;
    v83 = 0xE100000000000000;
    sub_1CEFE4E68();

    v33 = sub_1CF9E7668();
  }

  else
  {

    v33 = 0;
    v34 = 0;
  }

  v35 = v81;
  v86 = v33;
  v87 = v34;
  v36 = sub_1CF5028E0(&v90, &v88, &v86, v76 & 1);
  v37 = v87;

  v37, v38, v39, v40, v41, v42, v43, v44;
  v25, v45, v46, v47, v48, v49, v50, v51;
  if (!*v36->tree)
  {
    __break(1u);
LABEL_14:
    _Block_release(v81);
    __break(1u);
    return;
  }

  v52 = v72;
  sub_1CEFE4FF4(v36 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v72, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  v36, v53, v54, v55, v56, v57, v58, v59;
  v60 = *(v31 + 20);
  v61 = *(v52 + *(v31 + 24));
  v62 = *(v80 + 48);
  v63 = *(v80 + 64);
  v64 = v73;
  sub_1CEFCCBDC(v52, v73, &qword_1EC4C1310, &qword_1CFA08AC8);
  sub_1CEFCCBDC(v52 + v60, v64 + v62, &unk_1EC4BEC00, &unk_1CF9FCB60);
  *(v64 + v63) = v61;
  if ((*(v30 + 48))(v64 + v62, 1, v71) == 1)
  {
    (*(v35 + 2))(v35, 0, v61, 0);
  }

  else
  {
    v65 = v70;
    sub_1CEFE4D30(v64 + v62, v70, type metadata accessor for VFSItem);
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
    v66 = sub_1CF9E56A8();
    v68 = v67;

    v69 = sub_1CF9E5B48();
    (*(v35 + 2))(v35, v69, v61, 0);

    sub_1CEFE4714(v66, v68);
    sub_1CEFE522C(v65, type metadata accessor for VFSItem);
  }

  sub_1CEFE522C(v52, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
  sub_1CEFCCC44(v64, &qword_1EC4C1310, &qword_1CFA08AC8);
}

void sub_1CF7288E8(char *a1, _TtC18FileProviderDaemon8FSTester *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, const void *a7)
{
  v96 = a2;
  v97 = a7;
  *&v91 = a6;
  v92 = a3;
  v95 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v82 - v12;
  v94 = type metadata accessor for VFSItem(0);
  v89 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = (&v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CEFE42D4(a4, a5);
  sub_1CF9E5678();
  sub_1CF190978();
  sub_1CF9E5668();
  v87 = v19;
  v85 = v22;
  v27 = v93;
  v26 = v94;
  v86 = v25;

  sub_1CEFE4714(a4, a5);
  v28 = v99;
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if ((v92 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v96 = v28;
  if (v92 > 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = *(v91 + 24);
  v95 = v16;
  if (!v30)
  {
LABEL_20:
    _Block_release(v97);
    __break(1u);
    goto LABEL_21;
  }

  v31 = v27;
  *&v29 = v100;
  v32 = v101;
  v33 = v102;
  v98 = v102;
  v91 = v99;
  v84 = v29;

  v34 = v90;
  sub_1CF263024(&v98, &v99, 2049, v90);
  v83 = v30;
  v82 = v32;
  v101, v35, v36, v37, v38, v39, v40, v41;
  v42 = v89 + 48;
  v43 = *(v89 + 48);
  if (v43(v34, 1, v26) != 1)
  {
    v89 = v42;
    v57 = sub_1CEFE4D30(v34, v31, type metadata accessor for VFSItem);
    MEMORY[0x1EEE9AC00](v57);
    *(&v82 - 4) = v83;
    *(&v82 - 3) = v31;
    v58 = v95;
    *(&v82 - 2) = v96;
    *(&v82 - 8) = v59;
    v60 = v87;
    sub_1CF7136CC(v87, v58, v61, v62, sub_1CF72A310, (&v82 - 6));

    v63 = v85;
    sub_1CEFE4D30(v60, v85, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v58, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v31, type metadata accessor for VFSItem);
    v64 = v86;
    sub_1CEFE4D30(v63, v86, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v65 = updated;
    v66 = v88;
    sub_1CEFCCBDC(v64 + *(updated + 20), v88, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v43(v66, 1, v26) != 1)
    {
      v82, v67, v68, v69, v70, v71, v72, v73;
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
      v77 = sub_1CF9E56A8();
      v79 = v78;

      sub_1CEFE522C(v66, type metadata accessor for VFSItem);
      v80 = *(v64 + *(v65 + 24));
      v81 = sub_1CF9E5B48();
      (*(v97 + 2))(v97, v81, v80, 0);

      sub_1CEFE4714(v77, v79);
      sub_1CEFE522C(v64, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
      return;
    }

LABEL_21:
    _Block_release(v97);
    __break(1u);
    return;
  }

  sub_1CEFCCC44(v34, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v44 = (v33 - 1) < 2 || v84 == 0;
  v45 = v44;
  if (v44)
  {
    v46 = v91;
  }

  else
  {
    v46 = v84;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v47 = swift_allocError();
  *v48 = v46;
  *(v48 + 8) = v45;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *(v48 + 64) = 0u;
  *(v48 + 80) = 0u;
  *(v48 + 96) = 0u;
  *(v48 + 112) = 0u;
  sub_1CF2A8DE0(v48);
  swift_willThrow();
  v49 = v47;
  v82, v50, v51, v52, v53, v54, v55, v56;

  v74 = v97;
  v75 = v47;
  v76 = sub_1CF9E57E8();
  (*(v74 + 2))(v74, 0, 0, v76);
}

void sub_1CF729134(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v109 = a7;
  v105 = a6;
  v106 = a3;
  v100 = a5;
  v107 = a4;
  *&v108 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v92 - v10;
  v11 = type metadata accessor for VFSItem(0);
  v12 = *(v11 - 8);
  v102 = v11;
  v103 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v92 - v24;
  v26 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();
  v96 = v19;
  v94 = v22;
  v97 = v16;
  v93 = updated;
  v95 = v25;

  v29 = v112;
  v98 = v111;
  *&v30 = v113;
  v108 = v30;
  v31 = v114;
  v32 = v115;
  v33 = v116;
  swift_allocObject();
  v34 = sub_1CF9E5678();
  sub_1CF725648(&qword_1EC4BEAB0, type metadata accessor for ItemMetadata, &unk_1CFA0FA40);
  sub_1CF9E5668();
  v35 = v98;
  v36 = *(v105 + 24);
  if (!v36)
  {
    _Block_release(v109);
    __break(1u);
    goto LABEL_21;
  }

  v110[0] = v33;
  v111 = v98;
  v112 = v29;
  v113 = v108;
  v114 = v31;
  v115 = v32;
  v37 = v32;

  v38 = v104;
  sub_1CF263024(v110, &v111, 2049, v104);
  v39 = v35;
  v106 = v34;
  v107 = v28;
  v115, v40, v41, v42, v43, v44, v45, v46;
  v47 = v103 + 48;
  v48 = *(v103 + 48);
  if (v48(v38, 1, v102) != 1)
  {
    v103 = v47;
    v55 = v101;
    v56 = sub_1CEFE4D30(v38, v101, type metadata accessor for VFSItem);
    MEMORY[0x1EEE9AC00](v56);
    *(&v92 - 4) = v55;
    *(&v92 - 3) = v36;
    v57 = v107;
    *(&v92 - 2) = v100;
    *(&v92 - 1) = v57;
    v58 = v96;
    v59 = v97;
    sub_1CF7136CC(v96, v97, v60, v61, sub_1CF72A32C, (&v92 - 6));
    *&v108 = 0;
    v71 = v37;

    v72 = v94;
    sub_1CEFE4D30(v58, v94, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v59, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFE522C(v55, type metadata accessor for VFSItem);
    v73 = v72;
    v74 = v95;
    sub_1CEFE4D30(v73, v95, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    v75 = v93;
    v76 = v99;
    sub_1CEFCCBDC(v74 + *(v93 + 20), v99, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v77 = v48(v76, 1, v102);
    if (v77 != 1)
    {
      v71, v78, v79, v80, v81, v82, v83, v84;
      sub_1CF9E56C8();
      swift_allocObject();
      sub_1CF9E56B8();
      sub_1CF9E5698();
      sub_1CF725648(&qword_1EC4C2950, type metadata accessor for VFSItem, &unk_1CF9FFB4C);
      v54 = v108;
      v85 = sub_1CF9E56A8();
      v87 = v107;
      if (!v54)
      {
        v88 = v85;
        v89 = v86;

        sub_1CEFE522C(v76, type metadata accessor for VFSItem);
        v90 = *(v74 + *(v75 + 24));
        v91 = sub_1CF9E5B48();
        (*(v109 + 2))(v109, v91, v90, 0);

        sub_1CEFE4714(v88, v89);
        sub_1CEFE522C(v74, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
        sub_1CEFE522C(v87, type metadata accessor for ItemMetadata);
        return;
      }

      sub_1CEFE522C(v74, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);

      sub_1CEFE522C(v87, type metadata accessor for ItemMetadata);
      sub_1CEFE522C(v76, type metadata accessor for VFSItem);
      goto LABEL_14;
    }

LABEL_21:
    _Block_release(v109);
    __break(1u);
    return;
  }

  sub_1CEFCCC44(v38, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v49 = (v33 - 1) < 2 || v108 == 0;
  v50 = v49;
  if (v49)
  {
    v51 = v39;
  }

  else
  {
    v51 = v108;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  sub_1CEFCCCEC(&qword_1EDEAB030, &unk_1EC4BE320, &unk_1CFA08B50, &unk_1CFA13B50);
  v52 = swift_allocError();
  *v53 = v51;
  *(v53 + 8) = v50;
  *(v53 + 16) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 80) = 0u;
  *(v53 + 96) = 0u;
  *(v53 + 112) = 0u;
  sub_1CF2A8DE0(v53);
  swift_willThrow();
  v54 = v52;

  sub_1CEFE522C(v107, type metadata accessor for ItemMetadata);
  v37, v62, v63, v64, v65, v66, v67, v68;
LABEL_14:
  v69 = v54;
  v70 = sub_1CF9E57E8();
  (*(v109 + 2))(v109, 0, 0, v70);
}

void sub_1CF7299E8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  updated = type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1330, &unk_1CFA13480);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20[-v10];
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a3 + 24))
  {
    v12 = v22;

    sub_1CF50917C(v11, v8, &v21);

    sub_1CEFE522C(v8, type metadata accessor for InProcessVFSFileTreeTester.ItemUpdateObservation);
    sub_1CEFCCC44(v11, &qword_1EC4C1330, &unk_1CFA13480);
    v12, v13, v14, v15, v16, v17, v18, v19;
    a4[2](a4, 0);
  }

  else
  {
    _Block_release(a4);
    __break(1u);
  }
}

void sub_1CF729C08(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_1CF9E5928();
  v12[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v12];

  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = v12[0];
    v6(a2, 0);
  }

  else
  {
    v8 = v12[0];
    v9 = sub_1CF9E57F8();

    swift_willThrow();
    v10 = v9;
    v11 = sub_1CF9E57E8();
    (*(a2 + 16))(a2, v11);
  }
}

void sub_1CF729D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1CF9E5928();
  v6 = sub_1CF9E5928();
  v14[0] = 0;
  v7 = [v4 moveItemAtURL:v5 toURL:v6 error:v14];

  if (v7)
  {
    v8 = *(a3 + 16);
    v9 = v14[0];
    v8(a3, 0);
  }

  else
  {
    v10 = v14[0];
    v11 = sub_1CF9E57F8();

    swift_willThrow();
    v12 = v11;
    v13 = sub_1CF9E57E8();
    (*(a3 + 16))(a3, v13);
  }
}

void sub_1CF729E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a4 + 24))
  {
    v8 = v17;
    if ((a3 & 0x8000000000000000) == 0)
    {

      sub_1CF50A7C8(&v16, a3);

      v8, v9, v10, v11, v12, v13, v14, v15;
      a5[2](a5, 0);
      return;
    }

    __break(1u);
  }

  _Block_release(a5);
  __break(1u);
}

void sub_1CF729FE4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), void (*a5)(__int128 *))
{
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a3 + 24))
  {
    v8 = v17;

    a5(&v16);

    v8, v9, v10, v11, v12, v13, v14, v15;
    a4[2](a4, 0);
  }

  else
  {
    _Block_release(a4);
    __break(1u);
  }
}

void sub_1CF72A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  sub_1CF7255DC();
  sub_1CF9E5668();

  if (*(a4 + 24))
  {
    v8 = v17;

    sub_1CF50B864(&v16, a3);

    v8, v9, v10, v11, v12, v13, v14, v15;
    a5[2](a5, 0);
  }

  else
  {
    _Block_release(a5);
    __break(1u);
  }
}

uint64_t sub_1CF72A2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0660, qword_1CFA08B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1CF72A344(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v13 = v12;
  result = (*(v9 + 8))(v11, v8);
  v15 = v13 * 1000000000.0;
  if (COERCE__INT64(fabs(v13 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a2 * 1000000000) >> 64 != (1000000000 * a2) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((1000000000 * a2 * 60) >> 64 != (60000000000 * a2) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((60000000000 * a2 * 60) >> 64 != (3600000000000 * a2) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = 86400000000000 * a2;
  if ((3600000000000 * a2 * 24) >> 64 != (86400000000000 * a2) >> 63)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = __OFSUB__(v15, v16);
  v18 = v15 - v16;
  if (v17)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v19 = a3;
  if (v18 >= a1)
  {
    sub_1CF6FC3E4();
    v19 = swift_allocError();
    *v20 = a3;
    *(v20 + 8) = v4;
  }

  sub_1CF72A558(a3, v4);
  return v19;
}

id sub_1CF72A558(id result, unsigned __int8 a2)
{
  if (a2 <= 0x10u)
  {
    return result;
  }

  return result;
}

void sub_1CF72A56C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char *a5, char *a6)
{
  v7 = v6;
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  if (*(a1 + 112))
  {
    if (*(a1 + 112) == 2)
    {

      v11 = sub_1CF72A344(a2, 1, 0x14, 18);
      v13 = v12;
      sub_1CF6FC3E4();
      swift_allocError();
      *v14 = v11;
      *(v14 + 8) = v13;
      sub_1CF03D7A8(v8, v9, 2u);
      return;
    }

    goto LABEL_7;
  }

  if (v8 != 256)
  {
LABEL_7:
    v27 = sub_1CF72A344(a2, 1, 0x15, 18);
    v29 = v28;
    sub_1CF6FC3E4();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    return;
  }

  v19 = sub_1CF66FEF4(a1, a4, a5, a6);
  if (v7)
  {
    sub_1CF03D7A8(0x100, v9, 0);
  }

  else
  {
    v31 = v19;
    v59 = v9;
    v32 = *(v19 + 16);
    if (v32)
    {
      v33 = 0;
      v34 = (v19 + 96);
      v35 = 18;
      v36 = 29;
      while (v33 < *v31->tree)
      {
        v47 = *(v34 - 3);
        v48 = *(v34 - 64);
        if (v48 == 2)
        {
          v37 = *v34;
          v38 = v47;

          sub_1CF6FC470(v36, v35);
          v39 = v47;

          v37, v40, v41, v42, v43, v44, v45, v46;
          v35 = 14;
          v36 = v47;
        }

        else
        {
          if (v48 == 1 && v47 != 0)
          {
            v51 = v47;
            sub_1CF6FC470(v36, v35);
            sub_1CF03D7A8(0x100, v59, 0);
            v31, v52, v53, v54, v55, v56, v57, v58;
            return;
          }

          v47 = v36;
        }

        ++v33;
        v34 += 9;
        if (v32 == v33)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v35 = 18;
      v47 = 29;
LABEL_21:
      v31, v20, v21, v22, v23, v24, v25, v26;
      sub_1CF6FC3E4();
      swift_allocError();
      *v50 = v47;
      *(v50 + 8) = v35;
      sub_1CF03D7A8(0x100, v59, 0);
    }
  }
}

id sub_1CF72A7F0(void *a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a2 > 0xCu && a2 - 13 >= 4)
  {
    if (a2 == 17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CF9FA450;
      *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(inited + 40) = v5;
      v6 = sub_1CF057690(v2);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v6;
      *(inited + 56) = v7;
      v8 = sub_1CF4E04E8(inited);
      swift_setDeallocating();
      sub_1CF1B8600(inited + 32);
      v9 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v10 = sub_1CF9E6888();
      v11 = sub_1CF9E6618();
      v8, v12, v13, v14, v15, v16, v17, v18;
      v2 = [v9 initWithDomain:v10 code:v2 userInfo:v11];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1CF72A558(a1, a2);
  }

  return v2;
}

unint64_t sub_1CF72A968(void *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v5;
  *&v27 = a1;
  BYTE8(v27) = a2;
  sub_1CF72A558(a1, a2);
  v6 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CF1B8600(inited + 32);
  v9 = sub_1CF72A7F0(a1, a2);
  if (v9)
  {
    v10 = v9;
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v13 = v12;
    swift_getErrorValue();
    v28 = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
    (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v25, v26);
    sub_1CEFE9EB8(&v27, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1CF1D154C(v24, v11, v13, isUniquelyReferenced_nonNull_native);

    v13, v16, v17, v18, v19, v20, v21, v22;
  }

  return v8;
}

uint64_t sub_1CF72AB24()
{
  result = 1;
  switch(*(v0 + 8))
  {
    case 1:
      result = 2;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = 14;
      break;
    case 7:
      result = 15;
      break;
    case 8:
      result = 19;
      break;
    case 9:
      result = 25;
      break;
    case 0xA:
      result = 30;
      break;
    case 0xB:
      result = 5;
      break;
    case 0xC:
      result = 13;
      break;
    case 0xD:
      result = 24;
      break;
    case 0xE:
      result = 28;
      break;
    case 0xF:
      result = 12;
      break;
    case 0x10:
      result = 17;
      break;
    case 0x11:
      result = -109;
      break;
    case 0x12:
      result = qword_1CFA137C8[*v0];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF72ABF4(uint64_t a1)
{
  v2 = sub_1CF72B2AC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CF72AC30(uint64_t a1)
{
  v2 = sub_1CF72B2AC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id sub_1CF72AC6C(id a1, id a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v3 = a2;
  v4 = a2;
  v5 = sub_1CF9E57E8();
  v6 = sub_1CF9E57E8();
  v7 = [v5 code];
  if (v7 != [v6 code])
  {

    goto LABEL_10;
  }

  v8 = [v5 domain];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;

  if (v9 == 0xD000000000000021 && 0x80000001CFA58C80 == v11)
  {
    v11, v12, v13, 0x80000001CFA58C80, v14, v15, v16, v17;

    return v3;
  }

  v19 = sub_1CF9E8048();
  v11, v20, v21, v22, v23, v24, v25, v26;

  if ((v19 & 1) == 0)
  {

LABEL_10:
    v27 = a1;
    return a1;
  }

  return v3;
}

id sub_1CF72ADB4(uint64_t a1, id a2)
{
  if (a1 > 15)
  {
    switch(a1)
    {
      case 0x10:
        sub_1CF6FC3E4();
        v12 = swift_allocError();
        *v11 = a2;
        v13 = 7;
        break;
      case 0x400:
        sub_1CF6FC3E4();
        v3 = swift_allocError();
        *v24 = a2;
        *(v24 + 8) = 1;
        if (!a2)
        {
          return v3;
        }

        v25 = a2;
        v26 = a2;
        v27 = a2;
        v8 = sub_1CF9E57E8();
        v9 = sub_1CF9E57E8();
        v28 = [v8 code];
        if (v28 == [v9 code])
        {
          goto LABEL_22;
        }

LABEL_25:

        return v3;
      case 0x100000:
        sub_1CF6FC3E4();
        v12 = swift_allocError();
        *v11 = a2;
        v13 = 9;
        break;
      default:
LABEL_16:
        if (a2)
        {
          v19 = a2;
          return a2;
        }

        else
        {
          sub_1CF6FC3E4();
          v3 = swift_allocError();
          *v48 = 0;
          *(v48 + 8) = 18;
        }

        return v3;
    }

LABEL_19:
    *(v11 + 8) = v13;
    v20 = a2;
    v21 = a2;
    v22 = sub_1CF72AC6C(v12, a2);

    return v22;
  }

  if (a1 == 2)
  {
    sub_1CF6FC3E4();
    v3 = swift_allocError();
    *v14 = a2;
    *(v14 + 8) = 0;
    if (!a2)
    {
      return v3;
    }

    v15 = a2;
    v16 = a2;
    v17 = a2;
    v8 = sub_1CF9E57E8();
    v9 = sub_1CF9E57E8();
    v18 = [v8 code];
    if (v18 == [v9 code])
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (a1 == 4)
  {
    sub_1CF6FC3E4();
    v12 = swift_allocError();
    *v11 = a2;
    v13 = 6;
    goto LABEL_19;
  }

  if (a1 != 8)
  {
    goto LABEL_16;
  }

  sub_1CF6FC3E4();
  v3 = swift_allocError();
  *v4 = a2;
  *(v4 + 8) = 5;
  if (!a2)
  {
    return v3;
  }

  v5 = a2;
  v6 = a2;
  v7 = a2;
  v8 = sub_1CF9E57E8();
  v9 = sub_1CF9E57E8();
  v10 = [v8 code];
  if (v10 != [v9 code])
  {
    goto LABEL_25;
  }

LABEL_22:
  v29 = [v8 domain];
  v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v32 = v31;

  if (v30 == 0xD000000000000021 && 0x80000001CFA58C80 == v32)
  {

    v32, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    v40 = sub_1CF9E8048();

    v32, v41, v42, v43, v44, v45, v46, v47;
    if ((v40 & 1) == 0)
    {

      return v3;
    }
  }

  return a2;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon27FPCKPendingSetInternalErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 0x1Fu) <= 0x11)
  {
    return *(a1 + 8) & 0x1F;
  }

  else
  {
    return (*a1 + 18);
  }
}

uint64_t sub_1CF72B1F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 9))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1CF72B23C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 8) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CF72B280(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x12)
  {
    *result = a2 - 18;
    LOBYTE(a2) = 18;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1CF72B2AC()
{
  result = qword_1EC4C29C8;
  if (!qword_1EC4C29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C29C8);
  }

  return result;
}

uint64_t sub_1CF72B300(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = type metadata accessor for ReconciliationID(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF72B3A4(uint64_t a1, void *a2)
{
  sub_1CF9E81D8();
  sub_1CF01D348(v4, a2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF72B464(uint64_t a1)
{
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  result = type metadata accessor for ItemReconciliation(319, v4);
  if (v3 <= 0x3F)
  {
    *&v4[0] = *(result - 8) + 64;
    *(&v4[0] + 1) = MEMORY[0x1E69E5D08] + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF72B50C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF72B588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1CF72B6B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1CF72B8C4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = v2;
  v22[0] = swift_getAssociatedTypeWitness();
  v22[1] = swift_getAssociatedTypeWitness();
  v22[2] = swift_getAssociatedConformanceWitness();
  v22[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion(255, v22);
  sub_1CF9E75D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  if (v4 <= 0x3F)
  {
    v22[4] = TupleTypeMetadata;
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v5 = swift_getTupleTypeMetadata();
    if (v6 <= 0x3F)
    {
      v22[5] = v5;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      if (v8 <= 0x3F)
      {
        v22[6] = TupleTypeMetadata2;
        sub_1CF9E75D8();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        if (v10 <= 0x3F)
        {
          v22[7] = TupleTypeMetadata3;
          v11 = swift_getTupleTypeMetadata2();
          if (v12 <= 0x3F)
          {
            v22[8] = v11;
            v13 = sub_1CF72C444();
            if (v14 <= 0x3F)
            {
              v22[9] = v13;
              if (v21 <= 0x3F)
              {
                v22[10] = AssociatedTypeWitness;
                v15 = swift_getTupleTypeMetadata2();
                if (v16 <= 0x3F)
                {
                  v22[11] = v15;
                  sub_1CF72C474();
                  if (v18 <= 0x3F)
                  {
                    v22[12] = v17;
                    v22[13] = AssociatedTypeWitness;
                    v19 = swift_getTupleTypeMetadata2();
                    if (v20 <= 0x3F)
                    {
                      v22[14] = v19;
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

uint64_t sub_1CF72BCC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80);
  v11 = *(v7 + 64);
  v12 = (((((v8 | v10 | 7) + v6) & ~(v8 | v10 | 7)) + ((((*(v9 + 64) + ((v10 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + 80);
  v15 = ((((v6 + 7 + ((v14 + 16 + v13) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = ((v14 + 16) & ~v14) + v6;
  if (*(v5 + 84))
  {
    v17 = v6;
  }

  else
  {
    v17 = v6 + 1;
  }

  v18 = ((v17 + ((v6 + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = ((v17 + v14) & ~v14) + v6;
  v20 = ((v11 + v8) & ~v8) + v11;
  v21 = v13 + 8;
  if (v6 > v15)
  {
    v15 = v6;
  }

  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v18 > v19)
  {
    v19 = v18;
  }

  if (v20 > v21)
  {
    v21 = v20;
  }

  if (v15 > v12)
  {
    v12 = v15;
  }

  if (v19 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  if (v12 <= v22)
  {
    v12 = v22;
  }

  v23 = 8;
  if (v12 > 8)
  {
    v23 = v12;
  }

  v24 = 244 - (0xDu >> (8 * v23));
  if (v23 > 3)
  {
    v24 = 244;
  }

  if (!a2)
  {
    return 0;
  }

  if (v24 >= a2)
  {
    goto LABEL_45;
  }

  v25 = v23 + 1;
  v26 = 8 * (v23 + 1);
  if ((v23 + 1) <= 3)
  {
    v29 = ((~(-1 << v26) + a2 - v24) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_45;
      }

      goto LABEL_34;
    }

    if (v29 < 2)
    {
LABEL_45:
      v31 = *(a1 + v23);
      if (v24 <= (v31 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v31);
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_45;
  }

LABEL_34:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v25) = *a1;
      }
    }

    else if (v25 == 1)
    {
      LODWORD(v25) = *a1;
    }

    else
    {
      LODWORD(v25) = *a1;
    }
  }

  return v24 + (v25 | v30) + 1;
}

void sub_1CF72C04C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = *(v8 + 64);
  v13 = (((((v9 | v11 | 7) + v7) & ~(v9 | v11 | 7)) + ((((*(v10 + 64) + ((v11 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v6 + 80);
  if (((((v7 + 7 + ((v15 + 16 + v14) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((((v7 + 7 + ((v15 + 16 + v14) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (((v15 + 16) & ~v15) + v7 > v13)
  {
    v13 = ((v15 + 16) & ~v15) + v7;
  }

  if (*(v6 + 84))
  {
    v16 = v7;
  }

  else
  {
    v16 = v7 + 1;
  }

  if (((v16 + ((v7 + v15) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v16 + ((v7 + v15) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (((v16 + v15) & ~v15) + v7 > v13)
  {
    v13 = ((v16 + v15) & ~v15) + v7;
  }

  if (v13 <= v7)
  {
    v13 = v7;
  }

  v17 = ((v12 + v9) & ~v9) + v12;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= v14 + 8)
  {
    v13 = v14 + 8;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v18 = 244 - (0xDu >> (8 * v13));
  if (v13 > 3)
  {
    v18 = 244;
  }

  v19 = v13 + 1;
  if (v18 >= a3)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
    if (v19 <= 3)
    {
      v21 = ((~(-1 << (8 * v19)) + a3 - v18) >> (8 * v19)) + 1;
      v22 = HIWORD(v21);
      if (v21 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v21 >= 2)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v22)
      {
        v20 = 4;
      }

      else
      {
        v20 = v24;
      }
    }
  }

  if (v18 >= a2)
  {
    if (v20 > 1)
    {
      if (v20 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

LABEL_50:
        a1[v13] = -a2;
        return;
      }

      *&a1[v19] = 0;
    }

    else if (v20)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = ~v18 + a2;
  if (v19 >= 4)
  {
    bzero(a1, v19);
    *a1 = v25;
    v26 = 1;
    if (v20 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v26 = (v25 >> (8 * v19)) + 1;
  if (v13 == -1)
  {
LABEL_54:
    if (v20 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v27 = v25 & ~(-1 << (8 * v19));
  bzero(a1, v19);
  if (v19 == 3)
  {
    *a1 = v27;
    a1[2] = BYTE2(v27);
    goto LABEL_54;
  }

  if (v19 == 2)
  {
    *a1 = v27;
    if (v20 > 1)
    {
LABEL_58:
      if (v20 == 2)
      {
        *&a1[v19] = v26;
      }

      else
      {
        *&a1[v19] = v26;
      }

      return;
    }
  }

  else
  {
    *a1 = v25;
    if (v20 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v20)
  {
    a1[v19] = v26;
  }
}

uint64_t sub_1CF72C444()
{
  result = qword_1EDEA3748;
  if (!qword_1EDEA3748)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EDEA3748);
  }

  return result;
}

void sub_1CF72C474()
{
  if (!qword_1EDEA3378)
  {
    sub_1CF6116E8(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3378);
    }
  }
}

id sub_1CF72C4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v24[0] = v9;
  v24[1] = v10;
  v24[2] = AssociatedConformanceWitness;
  v24[3] = v12;
  type metadata accessor for FileItemVersion(255, v24);
  v26 = sub_1CF9E75D8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  v28 = v27;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = TupleTypeMetadata[12];
  v15 = TupleTypeMetadata[16];
  v20 = TupleTypeMetadata[20];
  v16 = swift_getAssociatedTypeWitness();
  (*(*(v16 - 8) + 16))(a6, a1, v16);
  AssociatedTypeWitness = v9;
  v26 = v10;
  v27 = AssociatedConformanceWitness;
  v28 = v12;
  type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v17 = sub_1CF9E75D8();
  (*(*(v17 - 8) + 16))(a6 + v14, a2, v17);
  *(a6 + v15) = a3;
  *(a6 + v20) = 0;
  type metadata accessor for FileTreeError(0, a4, a5, v18);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t sub_1CF72C75C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v32[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28 = sub_1CF9E75D8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v16 = *&v5[*(TupleTypeMetadata3 + 64)];
      (*(*(v28 - 8) + 8))(&v5[*(TupleTypeMetadata3 + 48)], v28);
      (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
      return v16;
    }

    if (EnumCaseMultiPayload == 8)
    {
      return *v5;
    }

LABEL_8:
    (*(v2 + 8))(v5, a1);
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v31 - 48, " at originalError previousError ");
    v33 = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedTypeWitness();
    v20 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = swift_getAssociatedConformanceWitness();
    v32[0] = v19;
    v32[1] = v20;
    v32[2] = AssociatedConformanceWitness;
    v32[3] = v22;
    type metadata accessor for FileItemVersion(255, v32);
    v34 = sub_1CF9E75D8();
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v36 = v35;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = TupleTypeMetadata[12];
    v16 = *&v5[TupleTypeMetadata[16]];

    v33 = v19;
    v34 = v20;
    v35 = AssociatedConformanceWitness;
    v36 = v22;
    type metadata accessor for FileItemVersion(255, &v33);
    v25 = sub_1CF9E75D8();
    (*(*(v25 - 8) + 8))(&v5[v24], v25);
    v26 = swift_getAssociatedTypeWitness();
    (*(*(v26 - 8) + 8))(v5, v26);
    return v16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  strcpy(&v31 - 48, " filename below syncability originalError ");
  v33 = swift_getAssociatedTypeWitness();
  v34 = &type metadata for Filename;
  v35 = v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  v7 = swift_getTupleTypeMetadata();
  *&v5[v7[12] + 8], v8, v9, v10, v11, v12, v13, v14;
  v15 = v7[16];
  sub_1CF480620(*&v5[v7[20]], *&v5[v7[20] + 8]);
  v16 = *&v5[v7[24]];
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(*(v17 - 8) + 8);
  v18(&v5[v15], v17);
  v18(v5, v17);
  return v16;
}

uint64_t sub_1CF72CD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FileTreeError(0, a1, a2, a4);
  swift_getMetatypeMetadata();
  v5 = sub_1CF9E6968();
  v55 = 46;
  v56 = 0xE100000000000000;
  v52 = &v55;
  v9 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF25107C, v51, v5, v6, 0x2EuLL, v7, v8);
  if (*v9->tree)
  {
    isa = v9[1].super.isa;
    v18 = *v9[1]._anon_8;
    v20 = *v9[1].tree;
    v19 = *v9[1].tester;
    v21 = v9;

    v21, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    isa = sub_1CF9E7608();
    v18 = v29;
    v20 = v30;
    v19 = v31;
  }

  v55 = v4;
  v32 = sub_1CF9E6968();
  v34 = v33;
  v59 = v32;
  v60 = v33;
  v55 = isa;
  v56 = v18;
  v57 = v20;
  v58 = v19;
  v53 = 0x6E7973736662696CLL;
  v54 = 0xE900000000000063;
  sub_1CEFE4E68();
  sub_1CF611768();
  v35 = sub_1CF9E7668();
  v19, v36, v37, v38, v39, v40, v41, v42;
  v34, v43, v44, v45, v46, v47, v48, v49;
  return v35;
}

uint64_t sub_1CF72CEA8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v48[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 7;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      MEMORY[0x1EEE9AC00](7);
      strcpy(&v47 - 48, " filename below syncability originalError ");
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v50 = &type metadata for Filename;
      v51 = AssociatedTypeWitness;
      v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
      v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      *&v5[TupleTypeMetadata[12] + 8], v29, v30, v31, v32, v33, v34, v35;
      v36 = TupleTypeMetadata[16];
      sub_1CF480620(*&v5[TupleTypeMetadata[20]], *&v5[TupleTypeMetadata[20] + 8]);

      v37 = swift_getAssociatedTypeWitness();
      v38 = *(*(v37 - 8) + 8);
      v38(&v5[v36], v37);
      v38(v5, v37);
      result = 1;
      break;
    case 2:
      *(v5 + 1), v6, v7, v8, v9, v10, v11, v12;
      v39 = swift_getAssociatedTypeWitness();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(v39 - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], v39);
      result = 2;
      break;
    case 3:
      v24 = swift_getAssociatedTypeWitness();
      v25 = sub_1CF9E75D8();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v27 = *(TupleTypeMetadata3 + 48);

      (*(*(v25 - 8) + 8))(&v5[v27], v25);
      (*(*(v24 - 8) + 8))(v5, v24);
      result = 3;
      break;
    case 4:
      v41 = swift_getAssociatedTypeWitness();
      v42 = sub_1CF9E75D8();
      v43 = swift_getTupleTypeMetadata2();
      (*(*(v41 - 8) + 8))(&v5[*(v43 + 48)], v41);
      (*(*(v42 - 8) + 8))(v5, v42);
      result = 4;
      break;
    case 5:
      if (*v5)
      {
        result = 11;
      }

      else
      {
        result = 22;
      }

      break;
    case 6:
      (*(v2 + 8))(v5, a1);
      result = 5;
      break;
    case 7:
      v44 = swift_getAssociatedTypeWitness();
      v45 = swift_getTupleTypeMetadata2();
      v46 = *(*(v44 - 8) + 8);
      v46(&v5[*(v45 + 48)], v44);
      v46(v5, v44);
      result = 6;
      break;
    case 8:
      (*(v2 + 8))(v5, a1);
      result = 15;
      break;
    case 9:
      (*(v2 + 8))(v5, a1);
      result = 23;
      break;
    case 10:
      v23 = swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);

      (*(*(v23 - 8) + 8))(v5, v23);
      result = 25;
      break;
    case 11:
      return result;
    case 12:
      result = 8;
      break;
    case 13:
      result = 9;
      break;
    case 14:
      result = 10;
      break;
    case 15:
      result = 12;
      break;
    case 16:
      result = 13;
      break;
    case 17:
      result = 14;
      break;
    case 18:
      result = 16;
      break;
    case 19:
      result = 17;
      break;
    case 20:
      result = 18;
      break;
    case 21:
      result = 19;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 26;
      break;
    default:
      MEMORY[0x1EEE9AC00](7);
      strcpy(&v47 - 48, " at originalError previousError ");
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v15 = swift_getAssociatedTypeWitness();
      v16 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v18 = swift_getAssociatedConformanceWitness();
      v48[0] = v15;
      v48[1] = v16;
      v48[2] = AssociatedConformanceWitness;
      v48[3] = v18;
      type metadata accessor for FileItemVersion(255, v48);
      v50 = sub_1CF9E75D8();
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
      v52 = v51;
      v19 = swift_getTupleTypeMetadata();
      v20 = v19[12];

      AssociatedTypeWitness = v15;
      v50 = v16;
      v51 = AssociatedConformanceWitness;
      v52 = v18;
      type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
      v21 = sub_1CF9E75D8();
      (*(*(v21 - 8) + 8))(&v5[v20], v21);
      v22 = swift_getAssociatedTypeWitness();
      (*(*(v22 - 8) + 8))(v5, v22);
      result = 0;
      break;
  }

  return result;
}

unint64_t sub_1CF72D79C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v50 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v11;
  v12 = *(v4 + 16);
  v12(v9, v2, a1);
  v13 = sub_1CF9E6948();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v59 = v15;
  v16 = sub_1CF72C75C(a1);
  if (v16)
  {
    *&v56 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v17 = sub_1CF1B7E64();
    if (swift_dynamicCast())
    {
      v18 = v53;
      v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;
      v58 = v17;
      *&v56 = v18;
      sub_1CEFE9EB8(&v56, &v53);
      v22 = v18;
      v23 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v23;
      sub_1CF1D154C(&v53, v19, v21, isUniquelyReferenced_nonNull_native);
      v21, v25, v26, v27, v28, v29, v30, v31;

      v15 = v52;
      v59 = v52;
    }
  }

  v12(v6, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    (*(v4 + 8))(v6, a1);
  }

  else
  {
    v50[0] = v50;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v50[-6], " at originalError previousError ");
    *&v56 = swift_getAssociatedTypeWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v34 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v36 = swift_getAssociatedConformanceWitness();
    *&v53 = AssociatedTypeWitness;
    *(&v53 + 1) = v34;
    v54 = AssociatedConformanceWitness;
    v55 = v36;
    type metadata accessor for FileItemVersion(255, &v53);
    *(&v56 + 1) = sub_1CF9E75D8();
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v58 = v57;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v38 = TupleTypeMetadata[12];

    v39 = *&v6[TupleTypeMetadata[20]];
    *&v56 = AssociatedTypeWitness;
    *(&v56 + 1) = v34;
    v57 = AssociatedConformanceWitness;
    v58 = v36;
    type metadata accessor for FileItemVersion(255, &v56);
    v40 = sub_1CF9E75D8();
    (*(*(v40 - 8) + 8))(&v6[v38], v40);
    v41 = swift_getAssociatedTypeWitness();
    (*(*(v41 - 8) + 8))(v6, v41);
    if (v39)
    {
      swift_getErrorValue();
      v42 = v50[1];
      v43 = v51;
      v58 = v51;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
      (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v42, v43);
      sub_1CEFE9EB8(&v56, &v53);
      v45 = v59;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v45;
      sub_1CF1D154C(&v53, 0xD000000000000012, 0x80000001CFA54B30, v46);
      v47 = v52;
    }

    else
    {
      sub_1CF1CE4A0(0xD000000000000012, 0x80000001CFA54B30, &v56);
      sub_1CEFCCC44(&v56, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      v47 = v59;
    }

    v58 = MEMORY[0x1E69E6370];
    LOBYTE(v56) = 1;
    sub_1CEFE9EB8(&v56, &v53);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v47;
    sub_1CF1D154C(&v53, 0xD000000000000019, 0x80000001CFA54B10, v48);

    return v52;
  }

  return v15;
}

unint64_t sub_1CF72DDB0(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = sub_1CF9E8098();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF72DE08(char a1)
{
  result = 0x46746F4E6D657469;
  switch(a1)
  {
    case 1:
      result = 0x6C6C6F436D657469;
      break;
    case 2:
      result = 0x6F42746F6E6E6163;
      break;
    case 3:
    case 11:
    case 24:
      result = 0xD000000000000012;
      break;
    case 4:
    case 10:
    case 18:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x436E6F6973726576;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D73694D6D657469;
      break;
    case 9:
    case 14:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x657079546D657469;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
    case 21:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0x614364616F6C7075;
      break;
    case 19:
      v3 = 10;
      goto LABEL_24;
    case 20:
      result = 0x756B6F6F4C78616DLL;
      break;
    case 22:
      result = 0xD00000000000002CLL;
      break;
    case 23:
      result = 0x54746F4E6D657469;
      break;
    case 25:
      result = 0xD000000000000010;
      break;
    case 26:
      v3 = 9;
LABEL_24:
      result = v3 | 0xD000000000000010;
      break;
    case 27:
      result = 0x49746F4E6D657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CF72E13C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AD0](a1, WitnessTable);
}

uint64_t sub_1CF72E190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDC6AC0](a1, WitnessTable);
}

uint64_t sub_1CF72E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1CF9E8088();
}

uint64_t sub_1CF72E258(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1CF72E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1CF72E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1CF72E3A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF72DDB0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1CF72E3DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CF72DE08(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CF72E418@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CF72DE04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CF72E448@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1CF740A90();
  *a2 = result;
  return result;
}

uint64_t sub_1CF72E474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF72E4C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF72E51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v9;
  v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v45 - v13;
  v52 = v6;
  v53 = v5;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v45 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v45 - v24;
  v26 = v3;
  (*(v16 + 16))(v18, v3 + *(a1 + 36), v15, v23);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
  }

  else
  {
    v27 = *(v19 + 32);
    v27(v25, v18, v14);
    v29 = v50;
    v28 = v51;
    v30 = v26 + *(a1 + 40);
    v31 = v49;
    (*(v50 + 16))(v49, v30, v51);
    v32 = v48;
    if ((*(v48 + 48))(v31, 1, AssociatedTypeWitness) != 1)
    {
      v38 = *(v32 + 32);
      v39 = v45;
      v38(v45, v31, AssociatedTypeWitness);
      v27(v47, v25, v14);
      v40 = v46;
      v38(v46, v39, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v42 = swift_getAssociatedConformanceWitness();
      v43 = v54;
      sub_1CF023878(v47, 0, v40, 0, 0, 0, v14, AssociatedTypeWitness, v54, AssociatedConformanceWitness, v42);
      v55 = v14;
      v56 = AssociatedTypeWitness;
      v57 = AssociatedConformanceWitness;
      v58 = v42;
      v35 = type metadata accessor for FileItemVersion(0, &v55);
      v37 = v43;
      v36 = 0;
      return (*(*(v35 - 8) + 56))(v37, v36, 1);
    }

    (*(v19 + 8))(v25, v14);
    (*(v29 + 8))(v31, v28);
  }

  v33 = swift_getAssociatedConformanceWitness();
  v34 = swift_getAssociatedConformanceWitness();
  v55 = v14;
  v56 = AssociatedTypeWitness;
  v57 = v33;
  v58 = v34;
  v35 = type metadata accessor for FileItemVersion(0, &v55);
  v36 = 1;
  v37 = v54;
  return (*(*(v35 - 8) + 56))(v37, v36, 1);
}

uint64_t sub_1CF72EA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v49 = AssociatedTypeWitness;
  v50 = a1;
  (*(v47 + 16))(a8, a1);
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct(0, a6, a7, v16);
  v18 = *(found + 36);
  swift_getAssociatedTypeWitness();
  v19 = sub_1CF9E75D8();
  v20 = *(v19 - 8);
  v43 = v18;
  v48 = a2;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v46 = v19;
  (*(v20 + 16))(a8 + v18, v21);
  v51 = found;
  v24 = *(found + 40);
  swift_getAssociatedTypeWitness();
  v25 = sub_1CF9E75D8();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a8 + v24, v22, v25);
  if (v23)
  {
    swift_getErrorValue();
    v27 = sub_1CF4C2330(v53, v54);
    if (v52)
    {
      v41 = v24;
      v42 = a8;

      v45 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0xF000000000000000;
  }

  v29 = (a8 + *(v51 + 44));
  *v29 = v27;
  v29[1] = v28;
  if (!a5)
  {
    v37 = 0;
    v38 = 0xF000000000000000;
    v39 = v50;
LABEL_12:

    (*(v26 + 8))(v22, v25);
    (*(v20 + 8))(v48, v46);
    result = (*(v47 + 8))(v39, v49);
    v40 = (a8 + *(v51 + 48));
    *v40 = v37;
    v40[1] = v38;
    return result;
  }

  v41 = v24;
  v42 = a8;
  swift_getErrorValue();
  v30 = a5;
  v31 = sub_1CF4C2330(v55, v56);
  if (!v52)
  {
    v37 = v31;
    v38 = v32;

    v39 = v50;
    goto LABEL_12;
  }

  v45 = 1;
LABEL_8:
  v33 = *(v26 + 8);
  v33(v22, v25);
  v34 = *(v20 + 8);
  v34(v48, v46);
  v35 = *(v47 + 8);
  v35(v50, v49);
  v35(v42, v49);
  v34(v42 + v43, v46);
  result = (v33)(v42 + v41, v25);
  if (v45)
  {
    return sub_1CEFE48D8(*(v42 + *(v51 + 44)), *(v42 + *(v51 + 44) + 8));
  }

  return result;
}

uint64_t sub_1CF72EE90(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0xEE006E6F69737265;
    if (a1 == 0x56746E65746E6F63 && a2 == 0xEE006E6F69737265 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000001CFA59A40;
      if (a1 == 0xD000000000000011 && 0x80000001CFA59A40 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x80000001CFA59A60;
        if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001CFA59A80 == a2)
        {
          a2, 0x80000001CFA59A80, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1CF9E8048();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1CF72F050(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0xD000000000000011;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0x56746E65746E6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF72F104(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  type metadata accessor for FileTreeError.ItemNotFoundStruct.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  LOBYTE(v21) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v19 = v5;
  v8 = v17;
  sub_1CF9E7F08();
  if (v8)
  {
    return (*(v18 + 8))(v7, v19);
  }

  LOBYTE(v21) = 1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7E68();
  LOBYTE(v21) = 2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7E68();
  v10 = (v20 + *(v16 + 44));
  v11 = v10[1];
  v21 = *v10;
  v22 = v11;
  v23 = 3;
  sub_1CEFF05F4(v21, v11);
  sub_1CF190A74();
  sub_1CF9E7E68();
  v12 = v18;
  sub_1CEFE48D8(v21, v22);
  v13 = (v20 + *(v16 + 48));
  v14 = v13[1];
  v21 = *v13;
  v22 = v14;
  v23 = 4;
  sub_1CEFF05F4(v21, v14);
  sub_1CF9E7E68();
  sub_1CEFE48D8(v21, v22);
  return (*(v12 + 8))(v7, v19);
}

uint64_t sub_1CF72F48C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1CF9E75D8();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - v8;
  v39 = swift_getAssociatedTypeWitness();
  v37 = sub_1CF9E75D8();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - v9;
  v43 = swift_getAssociatedTypeWitness();
  v38 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v28 - v10;
  type metadata accessor for FileTreeError.ItemNotFoundStruct.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v45 = sub_1CF9E7E08();
  v41 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v28 - v12;
  v42 = a2;
  v40 = a3;
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct(0, a2, a3, v14);
  v16 = *(found - 1);
  MEMORY[0x1EEE9AC00](found);
  v18 = &v28 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v46 = v13;
  v19 = v47;
  sub_1CF9E8298();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v16;
  v47 = a1;
  LOBYTE(v48) = 0;
  v20 = v43;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7D88();
  v21 = *(v38 + 32);
  v28 = v18;
  v21(v18, v44, v20);
  LOBYTE(v48) = 1;
  swift_getAssociatedConformanceWitness();
  v22 = v36;
  sub_1CF9E7CF8();
  (*(v35 + 32))(&v28[found[9]], v22, v37);
  LOBYTE(v48) = 2;
  swift_getAssociatedConformanceWitness();
  v23 = v31;
  sub_1CF9E7CF8();
  (*(v33 + 32))(&v28[found[10]], v23, v34);
  v49 = 3;
  sub_1CF190888();
  sub_1CF9E7CF8();
  v24 = v41;
  v25 = v28;
  *&v28[found[11]] = v48;
  v49 = 4;
  sub_1CF9E7CF8();
  (*(v24 + 8))(v46, v45);
  *&v25[found[12]] = v48;
  v26 = v29;
  (*(v29 + 16))(v30, v25, found);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return (*(v26 + 8))(v25, found);
}

uint64_t sub_1CF72FC40@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF72EE90(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF72FC70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF664CD8();
  *a1 = result;
  return result;
}

uint64_t sub_1CF72FC9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF72FCF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF72FD7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = *a2;
  v34 = a2[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 16);
  v38 = a1;
  v14(a7, a1, AssociatedTypeWitness);
  v16 = type metadata accessor for FileTreeError.ItemCollisionStruct(0, a5, a6, v15);
  v17 = a7 + v16[9];
  *v17 = v37;
  *(v17 + 8) = v34;
  v18 = v16[10];
  v14(a7 + v18, a3, AssociatedTypeWitness);
  if (a4)
  {
    swift_getErrorValue();
    v19 = sub_1CF4C2330(v39, v40);
    if (v36)
    {

      v21 = *(v13 + 8);
      v21(a3, AssociatedTypeWitness);
      v21(v38, AssociatedTypeWitness);
      v21(a7, AssociatedTypeWitness);
      *(v17 + 8), v22, v23, v24, v25, v26, v27, v28;
      return (v21)(a7 + v18, AssociatedTypeWitness);
    }

    v30 = v19;
    v31 = v20;
  }

  else
  {
    v30 = 0;
    v31 = 0xF000000000000000;
  }

  v32 = *(v13 + 8);
  v32(a3, AssociatedTypeWitness);
  result = (v32)(v38, AssociatedTypeWitness);
  v33 = (a7 + v16[11]);
  *v33 = v30;
  v33[1] = v31;
  return result;
}

uint64_t sub_1CF72FF9C(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x4449746E65726170 && a2 == 0xE800000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2)
  {
    a2, 0x80000001CFA59A60, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1CF730104(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0x4449746E65726170;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0x656D616E656C6966;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF730180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[0] = a2;
  type metadata accessor for FileTreeError.ItemCollisionStruct.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v24 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v24[1];
  sub_1CF9E82A8();
  LOBYTE(v27) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = v26;
  sub_1CF9E7F08();
  if (v9)
  {
    return (*(v25 + 8))(v7, v5);
  }

  v11 = v25;
  v12 = v24[0];
  v13 = (v8 + *(v24[0] + 36));
  v14 = v13[1];
  v27 = *v13;
  v28 = v14;
  v29 = 1;
  sub_1CF1E60E8();

  sub_1CF9E7F08();
  v28, v15, v16, v17, v18, v19, v20, v21;
  LOBYTE(v27) = 2;
  sub_1CF9E7F08();
  v22 = (v8 + *(v12 + 44));
  v23 = v22[1];
  v27 = *v22;
  v28 = v23;
  v29 = 3;
  sub_1CEFF05F4(v27, v23);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v27, v28);
  return (*(v11 + 8))(v7, v5);
}

void sub_1CF73045C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v36 = AssociatedTypeWitness;
  v37 = v8;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v38 = (&v30 - v11);
  type metadata accessor for FileTreeError.ItemCollisionStruct.CodingKeys(255, a2, a3, v12);
  swift_getWitnessTable();
  v39 = sub_1CF9E7E08();
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v30 - v13;
  v35 = a2;
  v16 = type metadata accessor for FileTreeError.ItemCollisionStruct(0, a2, a3, v15);
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v14;
  v19 = v41;
  sub_1CF9E8298();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = v34;
    v30 = v18;
    v41 = a1;
    LOBYTE(v42) = 0;
    v22 = v36;
    v21 = v37;
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7D88();
    v23 = *(v21 + 32);
    v23(v30, v38, v22);
    v43 = 1;
    sub_1CF1E613C();
    sub_1CF9E7D88();
    v38 = v23;
    v24 = *(&v42 + 1);
    v25 = v16;
    v26 = &v30[*(v16 + 36)];
    *v26 = v42;
    *(v26 + 1) = v24;
    LOBYTE(v42) = 2;
    v27 = v33;
    sub_1CF9E7D88();
    v38(&v30[*(v25 + 40)], v27, v22);
    v43 = 3;
    sub_1CF190888();
    sub_1CF9E7CF8();
    (*(v20 + 8))(v40, v39);
    v29 = v30;
    v28 = v31;
    *&v30[*(v25 + 44)] = v42;
    (*(v28 + 16))(v32, v29, v25);
    __swift_destroy_boxed_opaque_existential_1(v41);
    (*(v28 + 8))(v29, v25);
  }
}

uint64_t sub_1CF730994(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x776F6C6562 && a2 == 0xE500000000000000)
  {
    0xE500000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF730A5C(char a1)
{
  if (a1)
  {
    return 0x776F6C6562;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_1CF730A90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v22[0] = *(a2 + 24);
  v22[1] = v6;
  type metadata accessor for FileTreeError.CannotBounceStruct.CodingKeys(255, v6, v22[0], a4);
  swift_getWitnessTable();
  v7 = sub_1CF9E7F78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v22[2];
  sub_1CF9E82A8();
  v12 = v11[1];
  v23 = *v11;
  v24 = v12;
  v25 = 0;
  sub_1CF1E60E8();

  v13 = v22[3];
  sub_1CF9E7F08();
  v24, v14, v15, v16, v17, v18, v19, v20;
  if (!v13)
  {
    LOBYTE(v23) = 1;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7F08();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1CF730CB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v7 = a1[1];
  *a5 = *a1;
  *(a5 + 1) = v7;
  v8 = *(type metadata accessor for FileTreeError.CannotBounceStruct(0, a3, a4, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 32);

  return v10(&a5[v8], a2, AssociatedTypeWitness);
}

void sub_1CF730D70(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v23 - v7;
  type metadata accessor for FileTreeError.CannotBounceStruct.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v33 = sub_1CF9E7E08();
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v23 - v9;
  v31 = a3;
  v12 = type metadata accessor for FileTreeError.CannotBounceStruct(0, a2, a3, v11);
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v10;
  v15 = v34;
  sub_1CF9E8298();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v34 = a1;
    v24 = v12;
    v16 = v29;
    v17 = AssociatedTypeWitness;
    v37 = 0;
    sub_1CF1E613C();
    sub_1CF9E7D88();
    v18 = v36;
    v19 = v14;
    *v14 = v35;
    *(v14 + 1) = v18;
    LOBYTE(v35) = 1;
    swift_getAssociatedConformanceWitness();
    v20 = v28;
    sub_1CF9E7D88();
    (*(v16 + 8))(v32, v33);
    v21 = v24;
    (*(v26 + 32))(&v19[*(v24 + 36)], v20, v17);
    v22 = v25;
    (*(v25 + 16))(v27, v19, v21);
    __swift_destroy_boxed_opaque_existential_1(v34);
    (*(v22 + 8))(v19, v21);
  }
}

uint64_t sub_1CF731144(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA59AA0;
    if (a1 == 0xD000000000000017 && 0x80000001CFA59AA0 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000001CFA59AC0;
      if (a1 == 0xD000000000000017 && 0x80000001CFA59AC0 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x80000001CFA59AE0;
        if (a1 == 0xD00000000000001ALL && 0x80000001CFA59AE0 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD00000000000001ALL && 0x80000001CFA59B00 == a2)
        {
          a2, 0x80000001CFA59B00, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1CF9E8048();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1CF7312FC(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0xD000000000000017;
  if (a1 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v1 = 0xD000000000000017;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF7313A4@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF72FF9C(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF7313D4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1CF740BD0();
  *a2 = result;
  return result;
}

uint64_t sub_1CF731400(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF731454(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF731508@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF730994(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF731538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF73158C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF731630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF189FC0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CF731660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7316B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF73175C@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF731144(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF73178C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7317E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7318D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  (*(v13 + 16))(a6, a1, AssociatedTypeWitness);
  if (a3)
  {
    swift_getErrorValue();
    v14 = sub_1CF4C2330(v27, v28);
    if (v6)
    {

      v16 = sub_1CF9E75D8();
      (*(*(v16 - 8) + 8))(a2, v16);
      v17 = *(v13 + 8);
      v17(a1, AssociatedTypeWitness);
      return (v17)(a6, AssociatedTypeWitness);
    }

    v19 = v14;
    v20 = v15;
  }

  else
  {
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  (*(v13 + 8))(a1, AssociatedTypeWitness);
  v22 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct(0, a4, a5, v21);
  v23 = (a6 + *(v22 + 36));
  *v23 = v19;
  v23[1] = v20;
  v24 = *(v22 + 40);
  v25 = sub_1CF9E75D8();
  return (*(*(v25 - 8) + 32))(a6 + v24, a2, v25);
}

uint64_t sub_1CF731AD8(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA59A60;
    if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else if (a1 == 0x676E696B636F6C62 && a2 == 0xEE0044496D657449)
    {
      0xEE0044496D657449, 0xEE0044496D657449, a3, a4, a5, a6, a7, a8;
      return 2;
    }

    else
    {
      v13 = sub_1CF9E8048();
      a2, v14, v15, v16, v17, v18, v19, v20;
      if (v13)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1CF731BFC(char a1)
{
  if (!a1)
  {
    return 0x44496D657469;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x676E696B636F6C62;
}

uint64_t sub_1CF731C60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a2;
  type metadata accessor for FileTreeError.DirectoryNotEmptyStruct.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v14[1];
  sub_1CF9E82A8();
  LOBYTE(v17) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = v16;
  sub_1CF9E7F08();
  if (v9)
  {
    return (*(v15 + 8))(v7, v5);
  }

  v11 = v15;
  v12 = (v8 + *(v14[0] + 36));
  v13 = v12[1];
  v17 = *v12;
  v18 = v13;
  v19 = 1;
  sub_1CEFF05F4(v17, v13);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v17, v18);
  LOBYTE(v17) = 2;
  sub_1CF9E7E68();
  return (*(v11 + 8))(v7, v5);
}

uint64_t sub_1CF731ED8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1CF9E75D8();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v28 - v9;
  v37 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v28 - v11;
  type metadata accessor for FileTreeError.DirectoryNotEmptyStruct.CodingKeys(255, a2, a3, v12);
  swift_getWitnessTable();
  v39 = sub_1CF9E7E08();
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v28 - v13;
  v36 = a2;
  v16 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct(0, a2, a3, v15);
  v29 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v14;
  v19 = v41;
  sub_1CF9E8298();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v34;
  v20 = v35;
  v41 = v18;
  LOBYTE(v42) = 0;
  v22 = v37;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7D88();
  (*(v20 + 32))(v41, v38, v22);
  v43 = 1;
  sub_1CF190888();
  sub_1CF9E7CF8();
  v38 = v16;
  v23 = *(v16 + 36);
  v24 = v41;
  *&v41[v23] = v42;
  LOBYTE(v42) = 2;
  sub_1CF9E7CF8();
  (*(v21 + 8))(v40, v39);
  v25 = v38;
  (*(v30 + 32))(&v24[*(v38 + 10)], v33, v31);
  v26 = v29;
  (*(v29 + 16))(v32, v24, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v26 + 8))(v24, v25);
}

uint64_t sub_1CF7323BC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA59B20;
    if (a1 == 0xD000000000000016 && 0x80000001CFA59B20 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0x80000001CFA59B40;
      if (a1 == 0xD000000000000015 && 0x80000001CFA59B40 == a2 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else
      {
        v14 = 0x80000001CFA59B60;
        if (a1 == 0xD000000000000019 && 0x80000001CFA59B60 == a2 || (sub_1CF9E8048() & 1) != 0)
        {
          a2, v14, a3, a4, a5, a6, a7, a8;
          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001CFA59B80 == a2)
        {
          a2, 0x80000001CFA59B80, a3, a4, a5, a6, a7, a8;
          return 4;
        }

        else
        {
          v15 = sub_1CF9E8048();
          a2, v16, v17, v18, v19, v20, v21, v22;
          if (v15)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1CF73256C(unsigned __int8 a1)
{
  v1 = 0x44496D657469;
  v2 = 0xD000000000000019;
  if (a1 != 3)
  {
    v2 = 0xD000000000000018;
  }

  if (a1 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v1 = 0xD000000000000016;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF732604(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v15[1] = a2;
  v15[2] = v6;
  a3(255, v7);
  swift_getWitnessTable();
  v8 = sub_1CF9E7F78();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v22 = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = v16;
  v17 = v11;
  sub_1CF9E7F08();
  if (v12)
  {
    return (*(v9 + 8))(v17, v8);
  }

  v15[0] = v9;
  v16 = v8;
  v21 = 1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7F08();
  v20 = 2;
  sub_1CF9E7F08();
  v19 = 3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = v16;
  sub_1CF9E7F08();
  v18 = 4;
  sub_1CF9E7F08();
  return (*(v15[0] + 8))(v17, v14);
}

uint64_t sub_1CF732968@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void (*)(void, void, void), __n128)@<X3>, uint64_t (*a6)(void, uint64_t, void (*)(char *, char *, uint64_t), __n128)@<X5>, uint64_t a7@<X8>)
{
  v50 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v54 = AssociatedTypeWitness;
  v55 = v13;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v52 = &v47 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v56 = v17;
  v57 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v47 - v21;
  v64 = swift_getAssociatedTypeWitness();
  v58 = *(v64 - 8);
  v22 = MEMORY[0x1EEE9AC00](v64);
  v60 = (&v47 - v23);
  a4(255, a2, a3, v22);
  swift_getWitnessTable();
  v66 = sub_1CF9E7E08();
  v63 = *(v66 - 8);
  v24 = MEMORY[0x1EEE9AC00](v66);
  v26 = &v47 - v25;
  v61 = a2;
  v62 = a3;
  v27 = a6(0, a2, a3, v24);
  v49 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v47 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v65 = v26;
  v30 = v67;
  sub_1CF9E8298();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v59;
  v48 = v29;
  v67 = a1;
  v72 = 0;
  v32 = v64;
  swift_getAssociatedConformanceWitness();
  v33 = v60;
  sub_1CF9E7D88();
  (*(v58 + 32))(v48, v33, v32);
  v71 = 1;
  v34 = v56;
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7D88();
  v60 = v27;
  v35 = v31;
  v36 = *(v57 + 32);
  v36(&v48[*(v27 + 36)], v35, v34);
  v70 = 2;
  v37 = v53;
  sub_1CF9E7D88();
  v38 = v54;
  v36(&v48[v60[10]], v37, v34);
  v69 = 3;
  swift_getAssociatedConformanceWitness();
  v39 = v52;
  v40 = v38;
  sub_1CF9E7D88();
  v41 = &v48[v60[11]];
  v62 = *(v55 + 32);
  v62(v41, v39, v38);
  v68 = 4;
  v42 = v51;
  sub_1CF9E7D88();
  (*(v63 + 8))(v65, v66);
  v43 = v60;
  v44 = v48;
  v62(&v48[v60[12]], v42, v40);
  v45 = v49;
  (*(v49 + 16))(v50, v44, v43);
  __swift_destroy_boxed_opaque_existential_1(v67);
  return (*(v45 + 8))(v44, v43);
}

uint64_t sub_1CF733168(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x6465746365707865 && a2 == 0xEE0044496D657449;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6465766965636572 && a2 == 0xEE0044496D657449)
  {
    0xEE0044496D657449, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF733244(char a1)
{
  if (a1)
  {
    return 0x6465766965636572;
  }

  else
  {
    return 0x6465746365707865;
  }
}

uint64_t sub_1CF733280(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  type metadata accessor for FileTreeError.ItemMismatchStruct.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v15 = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = v13;
  sub_1CF9E7E68();
  if (v8)
  {
    return (*(v12 + 8))(v7, v5);
  }

  v10 = v12;
  v14 = 1;
  sub_1CF9E7F08();
  return (*(v10 + 8))(v7, v5);
}

uint64_t sub_1CF7334A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  (*(*(v11 - 8) + 32))(a5, a1, v11);
  v13 = type metadata accessor for FileTreeError.ItemMismatchStruct(0, a3, a4, v12);
  v14 = *(*(AssociatedTypeWitness - 8) + 32);
  v15 = a5 + *(v13 + 36);

  return v14(v15, a2, AssociatedTypeWitness);
}

uint64_t sub_1CF733594@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v31 - v8;
  v41 = v9;
  v10 = sub_1CF9E75D8();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v31 - v11;
  type metadata accessor for FileTreeError.ItemMismatchStruct.CodingKeys(255, a2, a3, v12);
  swift_getWitnessTable();
  v43 = sub_1CF9E7E08();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v31 - v13;
  v39 = a2;
  v16 = type metadata accessor for FileTreeError.ItemMismatchStruct(0, a2, a3, v15);
  v32 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v14;
  v19 = v44;
  sub_1CF9E8298();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v18;
  v31 = v16;
  v21 = v36;
  v22 = v37;
  v44 = a1;
  v23 = v38;
  v46 = 0;
  swift_getAssociatedConformanceWitness();
  v24 = v40;
  sub_1CF9E7CF8();
  v25 = *(v22 + 32);
  v39 = v20;
  v25(v20, v24, v23);
  v45 = 1;
  v26 = v35;
  sub_1CF9E7D88();
  (*(v21 + 8))(v42, v43);
  v27 = v31;
  v28 = v39;
  (*(v33 + 32))(&v39[*(v31 + 36)], v26, v41);
  v29 = v32;
  (*(v32 + 16))(v34, v28, v27);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return (*(v29 + 8))(v28, v27);
}

uint64_t sub_1CF733A0C(int64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == 0x726573557962 && a2 == 0xE600000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v18 = 0;
  }

  else
  {
    v10 = sub_1CF9E8048();
    a2, v11, v12, v13, v14, v15, v16, v17;
    v18 = v10 ^ 1;
  }

  return v18 & 1;
}

uint64_t sub_1CF733A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileTreeError.DownloadCancelled.CodingKeys(255, a3, a4, a4);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  sub_1CF9E7E48();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CF733BE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileTreeError.DownloadCancelled.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v6 = sub_1CF9E7E08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E8298();
  if (!v4)
  {
    v10 = sub_1CF9E7CC8();
    (*(v7 + 8))(v9, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1CF733D84@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF731AD8(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF733DB4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1CF740BD8();
  *a2 = result;
  return result;
}

uint64_t sub_1CF733DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF733E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF733EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1CF9E81D8();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1CF9E8228();
}

uint64_t sub_1CF733F24@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF7323BC(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF733F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF733FA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734098(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7340EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7341DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7342CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7343BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734468@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF733168(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF734498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7344EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7345CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF73467C@<X0>(int64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF733A0C(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result & 1;
  return result;
}

uint64_t sub_1CF7346B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF734704(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF734758@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_1CF733BE0(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_1CF7347AC(void *a1)
{
  if (a1)
  {
    swift_getErrorValue();
    sub_1CF4C2330(v2, v3);
  }
}

uint64_t sub_1CF734838(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2)
  {
    a2, 0x80000001CFA59A60, 0xD000000000000014, a4, a5, a6, a7, a8;
    v9 = 0;
  }

  else
  {
    v10 = sub_1CF9E8048();
    a2, v11, v12, v13, v14, v15, v16, v17;
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_1CF7348BC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  type metadata accessor for FileTreeError.UploadCancelled.CodingKeys(255, a4, a5, a4);
  swift_getWitnessTable();
  v7 = sub_1CF9E7F78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v14 = a2;
  v15 = v13;
  sub_1CEFF05F4(a2, v13);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v14, v15);
  return (*(v8 + 8))(v10, v7);
}

void *sub_1CF734A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FileTreeError.UploadCancelled.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v6 = sub_1CF9E7E08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E8298();
  if (!v4)
  {
    sub_1CF190888();
    sub_1CF9E7CF8();
    (*(v7 + 8))(v9, v6);
    v10 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1CF734C04(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = 0x80000001CFA59B20;
  if (a1 == 0xD000000000000016 && 0x80000001CFA59B20 == a2 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, v10, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CFA59BA0 == a2)
  {
    a2, 0x80000001CFA59BA0, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF734D10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v12 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v15 = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = v13;
  sub_1CF9E7F08();
  if (v8)
  {
    return (*(v12 + 8))(v7, v5);
  }

  v10 = v12;
  v14 = 1;
  sub_1CF9E7F08();
  return (*(v10 + 8))(v7, v5);
}

uint64_t sub_1CF734F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 32);
  (v14)((AssociatedTypeWitness - 8), a5, a1, AssociatedTypeWitness);
  v12 = a5 + *(type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct(0, a3, a4, v11) + 36);

  return v14(v12, a2, AssociatedTypeWitness);
}

uint64_t sub_1CF735010@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v26 - v9;
  type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v38 = sub_1CF9E7E08();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v26 - v11;
  v33 = a2;
  v14 = type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct(0, a2, a3, v13);
  v29 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v12;
  v17 = v39;
  sub_1CF9E8298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v14;
  v28 = v16;
  v39 = a1;
  v19 = v31;
  v18 = v32;
  v41 = 0;
  swift_getAssociatedConformanceWitness();
  v20 = v35;
  v21 = v34;
  sub_1CF9E7D88();
  v22 = v28;
  v35 = *(v18 + 32);
  (v35)(v28, v20, AssociatedTypeWitness);
  v40 = 1;
  sub_1CF9E7D88();
  (*(v36 + 8))(v21, v38);
  v23 = v27;
  (v35)(&v22[*(v27 + 36)], v19, AssociatedTypeWitness);
  v24 = v29;
  (*(v29 + 16))(v30, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return (*(v24 + 8))(v22, v23);
}

uint64_t sub_1CF735448(int64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v18 = 0;
  }

  else
  {
    v10 = sub_1CF9E8048();
    a2, v11, v12, v13, v14, v15, v16, v17;
    v18 = v10 ^ 1;
  }

  return v18 & 1;
}

uint64_t sub_1CF7354BC(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  a3(255, *(a2 + 16), *(a2 + 24));
  swift_getWitnessTable();
  v5 = sub_1CF9E7F78();
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7F08();
  return (*(v9 + 8))(v7, v5);
}

uint64_t sub_1CF735670@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, __n128)@<X3>, uint64_t (*a6)(void, uint64_t, uint64_t, __n128)@<X5>, uint64_t a7@<X8>)
{
  v33 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v29 - v13;
  a4(255, a2, a3, v12);
  swift_getWitnessTable();
  v38 = sub_1CF9E7E08();
  v34 = *(v38 - 8);
  v14 = MEMORY[0x1EEE9AC00](v38);
  v16 = &v29 - v15;
  v35 = a3;
  v36 = a2;
  v17 = a6(0, a2, a3, v14);
  v32 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v41;
  sub_1CF9E8298();
  if (v20)
  {
    v28 = a1;
  }

  else
  {
    v30 = v19;
    v31 = v17;
    v41 = a1;
    v21 = v34;
    v22 = v37;
    v23 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v25 = v38;
    v24 = v39;
    sub_1CF9E7D88();
    (*(v21 + 8))(v16, v25);
    v27 = v30;
    (*(v22 + 32))(v30, v24, v23);
    (*(v32 + 32))(v33, v27, v31);
    v28 = v41;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1CF7359A4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a4, a1, AssociatedTypeWitness);
}

uint64_t sub_1CF735A48@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF734838(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result & 1;
  return result;
}

uint64_t sub_1CF735A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735AD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1CF735B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X3>)
{
  result = sub_1CF734A4C(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_1CF735B7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735C80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735CD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735DC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735E18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735EC4@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF734C04(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF735EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF735F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF735FD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736028(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7360C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7361B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7362A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7362F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF736394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF7363E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7364D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF73652C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF7365C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(a5, a1, AssociatedTypeWitness);
  if (a2)
  {
    swift_getErrorValue();
    v12 = sub_1CF4C2330(v21, v22);
    if (v5)
    {

      v14 = *(v11 + 8);
      v14(a1, AssociatedTypeWitness);
      return (v14)(a5, AssociatedTypeWitness);
    }

    v16 = v12;
    v17 = v13;
  }

  else
  {
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  (*(v11 + 8))(a1, AssociatedTypeWitness);
  result = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct(0, a3, a4, v18);
  v19 = (a5 + *(result + 36));
  *v19 = v16;
  v19[1] = v17;
  return result;
}

uint64_t sub_1CF736748(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CFA59A60 == a2)
  {
    a2, 0x80000001CFA59A60, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF736818(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_1CF736850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v17 = a2;
  type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1CF9E7F78();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v7;
  sub_1CF9E82A8();
  LOBYTE(v21) = 0;
  swift_getAssociatedTypeWitness();
  v11 = v19;
  swift_getAssociatedConformanceWitness();
  v12 = v20;
  sub_1CF9E7F08();
  if (v12)
  {
    return (*(v18 + 8))(v9, v7);
  }

  v14 = v18;
  v15 = (v11 + *(v17 + 36));
  v16 = v15[1];
  v21 = *v15;
  v22 = v16;
  v23 = 1;
  sub_1CEFF05F4(v21, v16);
  sub_1CF190A74();
  sub_1CF9E7E68();
  sub_1CEFE48D8(v21, v22);
  return (*(v14 + 8))(v9, v10);
}

uint64_t sub_1CF736A8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v28 - v7;
  type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v9 = sub_1CF9E7E08();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v33 = a2;
  v14 = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct(0, a2, a3, v13);
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v12;
  v17 = v39;
  sub_1CF9E8298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v16;
  v29 = v14;
  v18 = v32;
  LOBYTE(v40) = 0;
  v19 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v20 = v34;
  v21 = v35;
  v22 = v36;
  sub_1CF9E7D88();
  v23 = *(v18 + 32);
  v24 = v39;
  v23(v39, v20, v19);
  v41 = 1;
  sub_1CF190888();
  sub_1CF9E7CF8();
  (*(v37 + 8))(v21, v22);
  v26 = v29;
  v25 = v30;
  *&v24[*(v29 + 36)] = v40;
  (*(v25 + 16))(v31, v24, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v24, v26);
}

uint64_t sub_1CF736E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1CF9E81D8();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1CF9E8228();
}

uint64_t sub_1CF736EE0@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, void *a4@<X4>, void *a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, _BYTE *a8@<X8>)
{
  result = sub_1CF736748(a1, a2, *(a3 + 16), *(a3 + 24), a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1CF736F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF736F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void sub_1CF736FF0(_TtC18FileProviderDaemon8FSTester *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v6 = a3(*(a2 + 16), *(a2 + 24));
  a1, v7, v8, v9, v10, v11, v12, v13;
  *a4 = v6 & 1;
}

uint64_t sub_1CF73703C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF737090(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1CF73712C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v377 = a4;
  v8 = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct(255, a2, a3, a5);
  v343 = sub_1CF9E75D8();
  v342 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v341 = &v309 - v9;
  v346 = v8;
  v345 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v344 = &v309 - v11;
  IsDetachedRootStruct = type metadata accessor for FileTreeError.ItemIsDetachedRootStruct(255, a2, a3, v12);
  v339 = sub_1CF9E75D8();
  v337 = *(v339 - 8);
  MEMORY[0x1EEE9AC00](v339);
  v338 = &v309 - v14;
  v340 = IsDetachedRootStruct;
  v335 = *(IsDetachedRootStruct - 8);
  MEMORY[0x1EEE9AC00](v15);
  v336 = &v309 - v16;
  v18 = type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct(255, a2, a3, v17);
  v333 = sub_1CF9E75D8();
  v330 = *(v333 - 8);
  MEMORY[0x1EEE9AC00](v333);
  v331 = &v309 - v19;
  v334 = v18;
  v329 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v332 = &v309 - v21;
  v23 = type metadata accessor for FileTreeError.LookupNotPermittedStruct(255, a2, a3, v22);
  v326 = sub_1CF9E75D8();
  v324 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v325 = &v309 - v24;
  v327 = v23;
  v322 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v323 = &v309 - v26;
  v28 = type metadata accessor for FileTreeError.ItemMismatchStruct(255, a2, a3, v27);
  v319 = sub_1CF9E75D8();
  v317 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319);
  v318 = &v309 - v29;
  v321 = v28;
  v316 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v320 = &v309 - v31;
  v33 = type metadata accessor for FileTreeError.VersionConflictStruct(255, a2, a3, v32);
  v348 = sub_1CF9E75D8();
  v347 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v354 = &v309 - v34;
  v353 = v33;
  v350 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v349 = &v309 - v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v361 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v362 = &v309 - v37;
  v387 = swift_getAssociatedTypeWitness();
  v363 = *(v387 - 8);
  MEMORY[0x1EEE9AC00](v387);
  v360 = &v309 - v38;
  v40 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct(255, a2, a3, v39);
  v352 = sub_1CF9E75D8();
  v351 = *(v352 - 8);
  MEMORY[0x1EEE9AC00](v352);
  v364 = &v309 - v41;
  v365 = v40;
  v356 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v355 = &v309 - v43;
  v45 = type metadata accessor for FileTreeError.ContentUnavailableStruct(255, a2, a3, v44);
  v358 = sub_1CF9E75D8();
  v357 = *(v358 - 8);
  MEMORY[0x1EEE9AC00](v358);
  v368 = &v309 - v46;
  v367 = v45;
  v366 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v359 = &v309 - v48;
  v50 = type metadata accessor for FileTreeError.CannotBounceStruct(255, a2, a3, v49);
  v370 = sub_1CF9E75D8();
  v369 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v374 = &v309 - v51;
  v376 = v50;
  v371 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v391 = &v309 - v53;
  v55 = type metadata accessor for FileTreeError.ItemCollisionStruct(255, a2, a3, v54);
  v373 = sub_1CF9E75D8();
  v372 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v382 = &v309 - v56;
  v383 = v55;
  v379 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v375 = &v309 - v58;
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct(255, a2, a3, v59);
  v381 = sub_1CF9E75D8();
  v380 = *(v381 - 8);
  MEMORY[0x1EEE9AC00](v381);
  v390 = &v309 - v61;
  v393 = found;
  v389 = *(found - 8);
  MEMORY[0x1EEE9AC00](v62);
  v385 = &v309 - v63;
  v65 = type metadata accessor for FileTreeError.CodingKeys(255, a2, a3, v64);
  WitnessTable = swift_getWitnessTable();
  v66 = sub_1CF9E7E08();
  v394 = *(v66 - 8);
  v395 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v309 - v67;
  v392 = a2;
  v384 = a3;
  v388 = type metadata accessor for FileTreeError(0, a2, a3, v69);
  v378 = *(v388 - 8);
  MEMORY[0x1EEE9AC00](v388);
  v328 = &v309 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v315 = (&v309 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v314 = &v309 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v309 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v309 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v309 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v309 - v85;
  v87 = a1[3];
  v397 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v87);
  v396 = v68;
  v88 = TupleTypeMetadata3;
  sub_1CF9E8298();
  if (v88)
  {
    goto LABEL_12;
  }

  v312 = v80;
  TupleTypeMetadata3 = v83;
  v311 = v77;
  v313 = v86;
  LOBYTE(v399) = 13;
  v90 = v395;
  v89 = v396;
  v91 = sub_1CF9E7D48();
  v93 = v92;
  v310 = 0;
  v94 = v392;
  v399 = v392;
  swift_getMetatypeMetadata();
  v96 = sub_1CF9E6948();
  v102 = v95;
  if (v91 == v96 && v93 == v95)
  {
    v95, v95, v96, v97, v98, v99, v100, v101;
    v93, v103, v104, v105, v106, v107, v108, v109;
    v110 = v391;
  }

  else
  {
    v111 = sub_1CF9E8048();
    v102, v112, v113, v114, v115, v116, v117, v118;
    v93, v119, v120, v121, v122, v123, v124, v125;
    v110 = v391;
    if ((v111 & 1) == 0)
    {
      v137 = sub_1CF9E79E8();
      swift_allocError();
      v139 = v138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1AD0, &qword_1CFA010F0);
      *v139 = v388;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C29D0, &unk_1CFA13B98);
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_1CF9FA450;
      v141 = WitnessTable;
      *(v140 + 56) = v65;
      *(v140 + 64) = v141;
      *(v140 + 32) = 13;
      sub_1CF9E79D8();
      (*(*(v137 - 8) + 104))(v139, *MEMORY[0x1E69E6AF8], v137);
      swift_willThrow();
      goto LABEL_11;
    }
  }

  LOBYTE(v399) = 0;
  v126 = v393;
  swift_getWitnessTable();
  v127 = v390;
  v128 = v310;
  sub_1CF9E7CF8();
  if (!v128)
  {
    v129 = v110;
    v130 = v389;
    if ((*(v389 + 48))(v127, 1, v126) == 1)
    {
      (*(v380 + 8))(v127, v381);
      LOBYTE(v399) = 1;
      v131 = v383;
      swift_getWitnessTable();
      v132 = v382;
      sub_1CF9E7CF8();
      v133 = v379;
      if ((*(v379 + 48))(v132, 1, v131) != 1)
      {
        v310 = 0;
        v170 = v375;
        v171 = (*(v133 + 32))(v375, v132, v131);
        MEMORY[0x1EEE9AC00](v171);
        qmemcpy(&v309 - 6, " filename below syncability original", 36);
        strcpy(&v308[2], "alError ");
        v172 = v131;
        v399 = swift_getAssociatedTypeWitness();
        v400 = &type metadata for Filename;
        v401 = v399;
        v402 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
        v403 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v174 = v312;
        v175 = &v312[TupleTypeMetadata[12]];
        WitnessTable = TupleTypeMetadata[16];
        TupleTypeMetadata3 = TupleTypeMetadata[20];
        v176 = swift_getAssociatedTypeWitness();
        v177 = *(v176 - 8);
        v178 = *(v177 + 16);
        v178(v174, v170, v176);
        v179 = v172;
        v180 = &v170[*(v172 + 36)];
        v181 = *(v180 + 1);
        *v175 = *v180;
        *(v175 + 1) = v181;
        v393 = v175;
        v182 = v179;
        v178(&v174[WitnessTable], &v170[*(v179 + 40)], v176);
        v183 = v170;
        *&v174[TupleTypeMetadata3] = xmmword_1CFA13A70;

        v184 = &v170[*(v182 + 44)];
        v185 = v184[1];
        if (v185 >> 60 == 15)
        {
          v186 = 0;
          v187 = v397;
          v188 = v310;
        }

        else
        {
          v188 = v310;
          sub_1CF4C2898(*v184, v185);
          v186 = v194;
          v187 = v397;
        }

        if (v188)
        {
          (*(v379 + 8))(v183, v383);
          (*(v394 + 8))(v396, v395);
          v195 = *(v177 + 8);
          v195(&v174[WitnessTable], v176);
          v393[1], v196, v197, v198, v199, v200, v201, v202;
          v195(v174, v176);
LABEL_42:
          v142 = v187;
          return __swift_destroy_boxed_opaque_existential_1(v142);
        }

        v214 = TupleTypeMetadata[24];
        (*(v379 + 8))(v183, v383);
        (*(v394 + 8))(v396, v395);
        *&v174[v214] = v186;
        v212 = v388;
        swift_storeEnumTagMultiPayload();
        v205 = v378;
        v206 = v313;
        (*(v378 + 32))(v313, v174, v212);
        goto LABEL_37;
      }

      (*(v372 + 8))(v132, v373);
      LOBYTE(v399) = 2;
      v134 = v376;
      swift_getWitnessTable();
      v135 = v374;
      sub_1CF9E7CF8();
      v136 = v394;
      v203 = v371;
      if ((*(v371 + 48))(v135, 1, v134) == 1)
      {
        (*(v369 + 8))(v135, v370);
        type metadata accessor for FileTreeError.CollidingItemChangedBeforeBounceStruct(0, v94, v384, v204);
        LOBYTE(v404) = 14;
        swift_getWitnessTable();
        sub_1CF9E7CF8();
        v205 = v378;
        v206 = v313;
        if ((v399 & 1) == 0)
        {
          (*(v136 + 8))(v89, v90);
          v212 = v388;
          swift_storeEnumTagMultiPayload();
LABEL_44:
          v187 = v397;
LABEL_37:
          v213 = v377;
          goto LABEL_41;
        }

        LOBYTE(v399) = 3;
        v207 = v367;
        swift_getWitnessTable();
        v208 = v368;
        sub_1CF9E7CF8();
        v310 = 0;
        if ((*(v366 + 48))(v208, 1, v207) != 1)
        {
          (*(v394 + 8))(v396, v395);
          v218 = v359;
          v219 = v367;
          v220 = (*(v366 + 32))(v359, v368, v367);
          WitnessTable = &v309;
          MEMORY[0x1EEE9AC00](v220);
          qmemcpy(&v309 - 6, " at originalError previousError ", 32);
          v308[0] = 0;
          v399 = swift_getAssociatedTypeWitness();
          v221 = v387;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          TupleTypeMetadata3 = AssociatedConformanceWitness;
          v223 = AssociatedTypeWitness;
          v224 = swift_getAssociatedConformanceWitness();
          v404 = v221;
          v405 = v223;
          v406 = AssociatedConformanceWitness;
          v407 = v224;
          type metadata accessor for FileItemVersion(255, &v404);
          v400 = sub_1CF9E75D8();
          v401 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          v402 = v401;
          v225 = swift_getTupleTypeMetadata();
          v226 = v225[12];
          WitnessTable = v225[16];
          v396 = v225[20];
          v227 = swift_getAssociatedTypeWitness();
          v206 = v313;
          (*(*(v227 - 8) + 16))(v313, v218, v227);
          v228 = v360;
          (*(v363 + 16))(v360, &v218[*(v219 + 36)], v221);
          v229 = v362;
          (*(v361 + 16))(v362, &v218[*(v219 + 44)], v223);
          (*(v366 + 8))(v218, v219);
          v230 = TupleTypeMetadata3;
          sub_1CF023878(v228, 0, v229, 0, 0, 0, v221, v223, &v206[v226], TupleTypeMetadata3, v224);
          v399 = v221;
          v400 = v223;
          v401 = v230;
          v402 = v224;
          v231 = type metadata accessor for FileItemVersion(0, &v399);
          (*(*(v231 - 8) + 56))(&v206[v226], 0, 1, v231);
          *&v206[WitnessTable] = 0;
          *(v396 + v206) = 0;
          v212 = v388;
          swift_storeEnumTagMultiPayload();
          v187 = v397;
          v213 = v377;
          goto LABEL_40;
        }

        (*(v357 + 8))(v368, v358);
        LOBYTE(v399) = 4;
        swift_getWitnessTable();
        v209 = v310;
        sub_1CF9E7CF8();
        if (v209)
        {
          (*(v394 + 8))(v396, v395);
          goto LABEL_12;
        }

        if ((*(v356 + 48))(v364, 1, v365) != 1)
        {
          v251 = v355;
          v252 = v365;
          (*(v356 + 32))(v355, v364, v365);
          v253 = swift_getAssociatedTypeWitness();
          v254 = sub_1CF9E75D8();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
          v255 = *(TupleTypeMetadata3 + 48);
          v256 = v311;
          (*(*(v253 - 8) + 16))(v311, v251, v253);
          v257 = *(v252 + 40);
          v258 = *(*(v254 - 8) + 16);
          WitnessTable = v255;
          v258(&v256[v255], &v251[v257], v254);
          v259 = &v251[*(v252 + 36)];
          v260 = v259[1];
          if (v260 >> 60 == 15)
          {
            v261 = 0;
          }

          else
          {
            sub_1CF4C2898(*v259, v260);
            v261 = v262;
          }

          v263 = *(TupleTypeMetadata3 + 64);
          (*(v356 + 8))(v355, v365);
          (*(v394 + 8))(v396, v395);
          v264 = v311;
          *&v311[v263] = v261;
          v212 = v388;
LABEL_73:
          swift_storeEnumTagMultiPayload();
          v205 = v378;
          v206 = v313;
          (*(v378 + 32))(v313, v264, v212);
          goto LABEL_44;
        }

        (*(v351 + 8))(v364, v352);
        LOBYTE(v399) = 5;
        swift_getWitnessTable();
        sub_1CF9E7CF8();
        if ((*(v350 + 48))(v354, 1, v353) == 1)
        {
          (*(v347 + 8))(v354, v348);
          type metadata accessor for FileTreeError.CapturedContentMissingStruct(0, v392, v384, v232);
          LOBYTE(v404) = 6;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0 || (type metadata accessor for FileTreeError.ItemNotEvictableStruct(0, v392, v384, v233), LOBYTE(v404) = 7, swift_getWitnessTable(), sub_1CF9E7CF8(), (v399 & 1) == 0) || (type metadata accessor for FileTreeError.DirectoryChangedStruct(0, v392, v384, v234), LOBYTE(v404) = 9, swift_getWitnessTable(), sub_1CF9E7CF8(), (v399 & 1) == 0))
          {
LABEL_75:
            (*(v394 + 8))(v396, v395);
            v206 = v313;
            v212 = v388;
            goto LABEL_39;
          }

          type metadata accessor for FileTreeError.DownloadCancelled(0, v392, v384, v235);
          LOBYTE(v404) = 10;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          v236 = v399;
          if (v399 != 3)
          {
            (*(v394 + 8))(v396, v395);
            v281 = v314;
            *v314 = v236 & 1;
            v212 = v388;
            swift_storeEnumTagMultiPayload();
            v205 = v378;
            v206 = v313;
            (*(v378 + 32))(v313, v281, v212);
            goto LABEL_44;
          }

          LOBYTE(v399) = 8;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v316 + 48))(v318, 1, v321) != 1)
          {
            (*(v394 + 8))(v396, v395);
            v282 = v320;
            v283 = v321;
            (*(v316 + 32))(v320, v318, v321);
            v284 = swift_getAssociatedTypeWitness();
            v285 = sub_1CF9E75D8();
            v286 = *(swift_getTupleTypeMetadata2() + 48);
            v206 = v313;
            (*(*(v285 - 8) + 32))(v313, v282, v285);
            (*(*(v284 - 8) + 32))(&v206[v286], &v282[*(v283 + 36)], v284);
            v212 = v388;
            goto LABEL_39;
          }

          (*(v317 + 8))(v318, v319);
          LOBYTE(v399) = 11;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v322 + 48))(v325, 1, v327) != 1)
          {
            (*(v394 + 8))(v396, v395);
            v287 = v323;
            (*(v322 + 32))(v323, v325, v327);
            v288 = swift_getAssociatedTypeWitness();
            v206 = v313;
            (*(*(v288 - 8) + 32))(v313, v287, v288);
            v212 = v388;
            goto LABEL_39;
          }

          (*(v324 + 8))(v325, v326);
          type metadata accessor for FileTreeError.ItemKindMismatchStruct(0, v392, v384, v237);
          LOBYTE(v404) = 12;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemIsFlockedStruct(0, v392, v384, v238);
          LOBYTE(v404) = 15;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemNeedDelayPropagationStruct(0, v392, v384, v239);
          LOBYTE(v404) = 16;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.UploadCancelled(0, v392, v384, v240);
          LOBYTE(v404) = 17;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          v242 = v400;
          if (v400 >> 60 != 11)
          {
            v289 = v399;
            if (v400 >> 60 == 15)
            {
              v290 = 0;
            }

            else
            {
              sub_1CF4C2898(v399, v400);
              v290 = v291;
            }

            (*(v394 + 8))(v396, v395);
            sub_1CEFF0584(v289, v242);
            v292 = v315;
            *v315 = v290;
            v212 = v388;
            swift_storeEnumTagMultiPayload();
            v205 = v378;
            v206 = v313;
            (*(v378 + 32))(v313, v292, v212);
            goto LABEL_44;
          }

          type metadata accessor for FileTreeError.UploadInterrupted(0, v392, v384, v241);
          LOBYTE(v404) = 18;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          LOBYTE(v399) = 19;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v329 + 48))(v331, 1, v334) != 1)
          {
            (*(v394 + 8))(v396, v395);
            v293 = v332;
            v294 = v334;
            (*(v329 + 32))(v332, v331, v334);
            v295 = v387;
            v296 = *(swift_getTupleTypeMetadata2() + 48);
            v297 = *(v363 + 32);
            v206 = v313;
            v297(v313, v293, v295);
            v297(&v206[v296], &v293[*(v294 + 36)], v295);
            v212 = v388;
            goto LABEL_39;
          }

          (*(v330 + 8))(v331, v333);
          type metadata accessor for FileTreeError.MaxLookupDepthStruct(0, v392, v384, v243);
          LOBYTE(v404) = 20;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.CompressedFileReadFailedStruct(0, v392, v384, v244);
          LOBYTE(v404) = 21;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.SpeculativeDownloadRejectedStruct(0, v392, v384, v245);
          LOBYTE(v404) = 22;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          type metadata accessor for FileTreeError.ItemNotTracked(0, v392, v384, v246);
          LOBYTE(v404) = 23;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          LOBYTE(v399) = 24;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v335 + 48))(v338, 1, v340) != 1)
          {
            (*(v394 + 8))(v396, v395);
            v298 = v336;
            (*(v335 + 32))(v336, v338, v340);
            v299 = swift_getAssociatedTypeWitness();
            v206 = v313;
            (*(*(v299 - 8) + 32))(v313, v298, v299);
            v212 = v388;
            goto LABEL_39;
          }

          (*(v337 + 8))(v338, v339);
          type metadata accessor for FileTreeError.NoContentToFetch(0, v392, v384, v247);
          LOBYTE(v404) = 25;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((v399 & 1) == 0)
          {
            goto LABEL_75;
          }

          LOBYTE(v399) = 26;
          swift_getWitnessTable();
          sub_1CF9E7CF8();
          if ((*(v345 + 48))(v341, 1, v346) == 1)
          {
            (*(v342 + 8))(v341, v343);
            type metadata accessor for FileTreeError.ItemNotInTrash(0, v392, v384, v248);
            LOBYTE(v404) = 27;
            swift_getWitnessTable();
            sub_1CF9E7CF8();
            if (v399)
            {
              LOBYTE(v399) = 13;
              sub_1CF9E79E8();
              swift_allocError();
              v249 = v395;
              swift_getWitnessTable();
              v250 = v396;
              sub_1CF9E79C8();
              swift_willThrow();
              (*(v394 + 8))(v250, v249);
              goto LABEL_12;
            }

            goto LABEL_75;
          }

          v300 = v344;
          v301 = v346;
          (*(v345 + 32))(v344, v341, v346);
          v302 = swift_getAssociatedTypeWitness();
          (*(*(v302 - 8) + 16))(v328, v300, v302);
          v303 = &v300[*(v301 + 36)];
          v304 = v303[1];
          if (v304 >> 60 == 15)
          {
            v305 = 0;
          }

          else
          {
            sub_1CF4C2898(*v303, v304);
            v305 = v306;
          }

          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
          v307 = *(swift_getTupleTypeMetadata2() + 48);
          (*(v345 + 8))(v344, v346);
          (*(v394 + 8))(v396, v395);
          v264 = v328;
          *&v328[v307] = v305;
          v212 = v388;
          goto LABEL_73;
        }

        (*(v394 + 8))(v396, v395);
        v265 = v349;
        v266 = v353;
        v267 = (*(v350 + 32))(v349, v354, v353);
        WitnessTable = &v309;
        MEMORY[0x1EEE9AC00](v267);
        v396 = &v309 - 6;
        qmemcpy(&v309 - 6, " at originalError previousError ", 32);
        v308[0] = 0;
        v399 = swift_getAssociatedTypeWitness();
        v268 = v387;
        v269 = swift_getAssociatedConformanceWitness();
        TupleTypeMetadata3 = v269;
        v270 = AssociatedTypeWitness;
        v271 = swift_getAssociatedConformanceWitness();
        v404 = v268;
        v405 = v270;
        v406 = v269;
        v407 = v271;
        type metadata accessor for FileItemVersion(255, &v404);
        v400 = sub_1CF9E75D8();
        v401 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v402 = v401;
        v272 = swift_getTupleTypeMetadata();
        v273 = v272[12];
        WitnessTable = v272[16];
        v274 = v272[20];
        v395 = v273;
        v396 = v274;
        v275 = swift_getAssociatedTypeWitness();
        v206 = v313;
        (*(*(v275 - 8) + 16))(v313, v265, v275);
        v276 = v360;
        (*(v363 + 16))(v360, &v265[*(v266 + 36)], v268);
        v277 = v362;
        (*(v361 + 16))(v362, &v265[*(v266 + 44)], v270);
        (*(v350 + 8))(v265, v266);
        v278 = TupleTypeMetadata3;
        v279 = v395;
        sub_1CF023878(v276, 0, v277, 0, 0, 0, v268, v270, &v206[v395], TupleTypeMetadata3, v271);
        v399 = v268;
        v400 = v270;
        v401 = v278;
        v402 = v271;
        v280 = type metadata accessor for FileItemVersion(0, &v399);
        (*(*(v280 - 8) + 56))(&v206[v279], 0, 1, v280);
        *&v206[WitnessTable] = 0;
        *(v396 + v206) = 0;
        v212 = v388;
      }

      else
      {
        (*(v136 + 8))(v89, v90);
        (*(v203 + 32))(v129, v135, v134);
        v215 = swift_getAssociatedTypeWitness();
        v216 = *(swift_getTupleTypeMetadata2() + 48);
        v217 = *(v129 + 1);
        v206 = v313;
        *v313 = *v129;
        *(v206 + 1) = v217;
        (*(*(v215 - 8) + 32))(&v206[v216], &v129[*(v134 + 36)], v215);
        v212 = v388;
      }

LABEL_39:
      swift_storeEnumTagMultiPayload();
      v187 = v397;
      v213 = v377;
LABEL_40:
      v205 = v378;
      goto LABEL_41;
    }

    v310 = 0;
    v144 = v385;
    v145 = (*(v130 + 32))(v385, v127, v126);
    MEMORY[0x1EEE9AC00](v145);
    qmemcpy(&v309 - 6, " at originalError previousError ", 32);
    v308[0] = 0;
    v399 = swift_getAssociatedTypeWitness();
    v146 = v387;
    v147 = swift_getAssociatedConformanceWitness();
    v148 = AssociatedTypeWitness;
    v149 = swift_getAssociatedConformanceWitness();
    v404 = v146;
    v405 = v148;
    v150 = v393;
    WitnessTable = v147;
    v406 = v147;
    v407 = v149;
    v391 = v149;
    type metadata accessor for FileItemVersion(255, &v404);
    v400 = sub_1CF9E75D8();
    v401 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v402 = v401;
    v151 = swift_getTupleTypeMetadata();
    v152 = v151[12];
    v153 = swift_getAssociatedTypeWitness();
    v154 = *(v153 - 8);
    v155 = TupleTypeMetadata3;
    (*(v154 + 16))(TupleTypeMetadata3, v144, v153);
    sub_1CF72E51C(v150, v155 + v152);
    v156 = &v144[*(v150 + 44)];
    v157 = v156[1];
    if (v157 >> 60 == 15)
    {
      v158 = v144;
      v159 = 0;
      v160 = v310;
    }

    else
    {
      v160 = v310;
      sub_1CF4C2898(*v156, v157);
      v158 = v385;
    }

    v310 = v160;
    v161 = v396;
    v162 = v387;
    v163 = AssociatedTypeWitness;
    if (v160)
    {
      (*(v389 + 8))(v158, v393);
      (*(v394 + 8))(v161, v395);
      v399 = v162;
      v400 = v163;
      v401 = WitnessTable;
      v402 = v391;
      type metadata accessor for FileItemVersion(255, &v399);
      v164 = sub_1CF9E75D8();
      (*(*(v164 - 8) + 8))(v155 + v152, v164);
      (*(v154 + 8))(v155, v153);
LABEL_19:
      v142 = v397;
      return __swift_destroy_boxed_opaque_existential_1(v142);
    }

    *(v155 + v151[16]) = v159;
    v165 = v393;
    v166 = &v158[*(v393 + 12)];
    v167 = v166[1];
    if (v167 >> 60 == 15)
    {
      v168 = 0;
      v169 = v389;
    }

    else
    {
      v189 = v159;
      v190 = v310;
      sub_1CF4C2898(*v166, v167);
      v310 = v190;
      v169 = v389;
      if (v190)
      {
        (*(v389 + 8))(v385, v165);
        (*(v394 + 8))(v396, v395);

        v399 = v387;
        v400 = AssociatedTypeWitness;
        v401 = WitnessTable;
        v402 = v391;
        type metadata accessor for FileItemVersion(255, &v399);
        v192 = sub_1CF9E75D8();
        v193 = TupleTypeMetadata3;
        (*(*(v192 - 8) + 8))(TupleTypeMetadata3 + v152, v192);
        (*(v154 + 8))(v193, v153);
        goto LABEL_19;
      }

      v168 = v191;
      v158 = v385;
    }

    v210 = v151[20];
    (*(v169 + 8))(v158, v165);
    (*(v394 + 8))(v396, v395);
    v211 = TupleTypeMetadata3;
    *(TupleTypeMetadata3 + v210) = v168;
    v212 = v388;
    swift_storeEnumTagMultiPayload();
    v205 = v378;
    v206 = v313;
    (*(v378 + 32))(v313, v211, v212);
    v187 = v397;
    v213 = v377;
LABEL_41:
    (*(v205 + 32))(v213, v206, v212);
    goto LABEL_42;
  }

LABEL_11:
  (*(v394 + 8))(v89, v90);
LABEL_12:
  v142 = v397;
  return __swift_destroy_boxed_opaque_existential_1(v142);
}

void sub_1CF73ADE4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[2];
  v6 = a2[3];
  v284 = type metadata accessor for FileTreeError.ItemOldVersionCloneFailedStruct(0, v7, v6, a4);
  v285 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v346 = &v277 - v8;
  IsDetachedRootStruct = type metadata accessor for FileTreeError.ItemIsDetachedRootStruct(0, v7, v6, v9);
  v311 = *(IsDetachedRootStruct - 1);
  MEMORY[0x1EEE9AC00](IsDetachedRootStruct);
  v302 = &v277 - v10;
  v344 = type metadata accessor for FileTreeError.ItemContentVersionMismatchStruct(0, v7, v6, v11);
  v313 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v312 = &v277 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v335 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v310 = &v277 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v308 = &v277 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v327 = &v277 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v325 = &v277 - v20;
  v306 = type metadata accessor for FileTreeError.LookupNotPermittedStruct(0, v7, v6, v21);
  v343 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306);
  v304 = &v277 - v22;
  v309 = type metadata accessor for FileTreeError.ItemMismatchStruct(0, v7, v6, v23);
  v307 = *(v309 - 8);
  MEMORY[0x1EEE9AC00](v309);
  v305 = &v277 - v24;
  v283 = type metadata accessor for FileTreeError.DirectoryNotEmptyStruct(0, v7, v6, v25);
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v322 = &v277 - v26;
  v27 = swift_getAssociatedTypeWitness();
  v332 = sub_1CF9E75D8();
  v331 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v298 = &v277 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v323 = &v277 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v300 = &v277 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v321 = &v277 - v34;
  v301 = type metadata accessor for FileTreeError.CannotBounceStruct(0, v7, v6, v35);
  v299 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v297 = &v277 - v36;
  v281 = type metadata accessor for FileTreeError.ItemCollisionStruct(0, v7, v6, v37);
  v280 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v303 = &v277 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v40 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v314 = &v277 - v41;
  v42 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v42 - 8);
  v329 = &v277 - v43;
  found = type metadata accessor for FileTreeError.ItemNotFoundStruct(0, v7, v6, v44);
  v317 = *(found - 8);
  MEMORY[0x1EEE9AC00](found);
  v316 = &v277 - v45;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v330 = AssociatedTypeWitness;
  v351 = AssociatedTypeWitness;
  v352 = v39;
  v315 = v39;
  v353 = AssociatedConformanceWitness;
  v354 = v47;
  v296 = type metadata accessor for FileItemVersion(255, &v351);
  v328 = sub_1CF9E75D8();
  Description = v328[-1].Description;
  MEMORY[0x1EEE9AC00](v328);
  v295 = &v277 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v294 = &v277 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v334 = &v277 - v52;
  v338 = v27;
  v337 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v288 = &v277 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v292 = &v277 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v342 = &v277 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v341 = &v277 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v291 = &v277 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v286 = &v277 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v319 = &v277 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v336 = &v277 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v287 = &v277 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v290 = &v277 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v289 = &v277 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v320 = &v277 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v293 = &v277 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v324 = &v277 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v326 = &v277 - v82;
  v348 = a2;
  v340 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v83);
  v349 = &v277 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = v6;
  type metadata accessor for FileTreeError.CodingKeys(255, v7, v6, v85);
  swift_getWitnessTable();
  v86 = sub_1CF9E7F78();
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v277 - v88;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF9E82A8();
  v351 = v7;
  swift_getMetatypeMetadata();
  sub_1CF9E6948();
  v91 = v90;
  LOBYTE(v351) = 13;
  v92 = v350;
  sub_1CF9E7EB8();
  if (v92)
  {
    (*(v87 + 8))(v89, v86);
    v91, v100, v101, v102, v103, v104, v105, v106;
  }

  else
  {
    v108 = v341;
    v107 = v342;
    v109 = v343;
    v278 = v89;
    v350 = v86;
    v110 = IsDetachedRootStruct;
    v279 = 0;
    v111 = v344;
    v112 = v346;
    v277 = v87;
    v91, v93, v94, v95, v96, v97, v98, v99;
    (*(v340 + 16))(v349, v347, v348);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v348 = v7;
        strcpy(&v277 - 48, " filename below syncability originalError ");
        v207 = v338;
        v351 = v338;
        v352 = &type metadata for Filename;
        v353 = v338;
        v354 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2310, &unk_1CFA11710);
        v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v209 = v349;
        v210 = &v349[TupleTypeMetadata[12]];
        v211 = *(v210 + 1);
        v347 = *v210;
        v212 = TupleTypeMetadata[16];
        sub_1CF480620(*&v349[TupleTypeMetadata[20]], *&v349[TupleTypeMetadata[20] + 8]);
        v213 = *&v209[TupleTypeMetadata[24]];
        v214 = v337;
        v215 = *(v337 + 32);
        v216 = v293;
        v215(v293, v209, v207);
        v217 = &v209[v212];
        v218 = v320;
        v215(v320, v217, v207);
        v219 = *(v214 + 16);
        v220 = v289;
        v219(v289, v216, v207);
        v351 = v347;
        v352 = v211;
        v221 = v290;
        v219(v290, v218, v207);
        v222 = v213;
        v223 = v303;
        v224 = v279;
        sub_1CF72FD7C(v220, &v351, v221, v213, v348, v339, v303);
        if (v224)
        {

          v225 = *(v214 + 8);
          v225(v218, v207);
          v225(v216, v207);
          goto LABEL_30;
        }

        LOBYTE(v351) = 1;
        v267 = v281;
        swift_getWitnessTable();
        v268 = v350;
        v269 = v278;
        sub_1CF9E7F08();

        (*(v280 + 8))(v223, v267);
        v270 = *(v337 + 8);
        v270(v320, v207);
        v270(v216, v207);
        (*(v277 + 8))(v269, v268);
        return;
      case 2:
        v161 = v349;
        v162 = *v349;
        v163 = *(v349 + 1);
        v164 = v338;
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v166 = v337;
        v167 = v287;
        (*(v337 + 32))(v287, &v161[*(TupleTypeMetadata2 + 48)], v164);
        v351 = v162;
        v352 = v163;
        v168 = v166;
        v169 = v336;
        (*(v166 + 16))(v336, v167, v164);
        v170 = v297;
        sub_1CF730CB8(&v351, v169, v7, v339, v297);
        LOBYTE(v351) = 2;
        v171 = v301;
        swift_getWitnessTable();
        v172 = v350;
        v173 = v278;
        sub_1CF9E7F08();
        (*(v299 + 8))(v170, v171);
        (*(v168 + 8))(v167, v164);
        goto LABEL_38;
      case 3:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v174 = v338;
        v175 = v332;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v177 = *(TupleTypeMetadata3 + 48);
        v178 = *(TupleTypeMetadata3 + 64);
        v348 = v7;
        v179 = v349;
        v180 = *&v349[v178];
        v181 = v337;
        v182 = v319;
        (*(v337 + 32))(v319, v349, v174);
        v183 = v331;
        v184 = &v179[v177];
        v185 = v321;
        (*(v331 + 32))(v321, v184, v175);
        v186 = v286;
        (*(v181 + 16))(v286, v182, v174);
        v187 = v300;
        (*(v183 + 16))(v300, v185, v175);
        v188 = v180;
        v189 = v279;
        sub_1CF7318D0(v186, v187, v180, v348, v339, v322);
        if (v189)
        {

          (*(v183 + 8))(v185, v175);
          (*(v181 + 8))(v182, v174);
          goto LABEL_30;
        }

        LOBYTE(v351) = 4;
        v265 = v283;
        swift_getWitnessTable();
        v266 = v322;
        v172 = v350;
        v173 = v278;
        sub_1CF9E7F08();

        (*(v282 + 8))(v266, v265);
        (*(v331 + 8))(v321, v332);
        (*(v337 + 8))(v319, v338);
        goto LABEL_38;
      case 4:
        v139 = v332;
        v140 = v338;
        v141 = v7;
        v142 = *(swift_getTupleTypeMetadata2() + 48);
        v143 = v331;
        v144 = v323;
        v145 = v349;
        (*(v331 + 32))(v323, v349, v139);
        v146 = &v145[v142];
        v147 = v337;
        v148 = v291;
        (*(v337 + 32))(v291, v146, v140);
        v149 = v298;
        (*(v143 + 16))(v298, v144, v139);
        v150 = v336;
        (*(v147 + 16))(v336, v148, v140);
        v151 = v305;
        sub_1CF7334A0(v149, v150, v141, v339, v305);
        LOBYTE(v351) = 8;
        v152 = v309;
        swift_getWitnessTable();
        v153 = v278;
        sub_1CF9E7F08();
        (*(v307 + 8))(v151, v152);
        (*(v147 + 8))(v148, v140);
        (*(v143 + 8))(v323, v139);
        (*(v277 + 8))(v153, v350);
        return;
      case 5:
        LOBYTE(v351) = *v349;
        v356 = 10;
        type metadata accessor for FileTreeError.DownloadCancelled(0, v7, v339, v114);
        swift_getWitnessTable();
        v172 = v350;
        goto LABEL_37;
      case 6:
        v226 = v109;
        v227 = v337;
        v228 = v338;
        v229 = v108;
        (*(v337 + 32))(v108, v349, v338);
        v230 = v336;
        (*(v227 + 16))(v336, v229, v228);
        v231 = v304;
        sub_1CF7359A4(v230, v304);
        LOBYTE(v351) = 11;
        v232 = v306;
        swift_getWitnessTable();
        v233 = v350;
        v234 = v278;
        sub_1CF9E7F08();
        (*(v226 + 8))(v231, v232);
        (*(v227 + 8))(v229, v228);
        (*(v277 + 8))(v234, v233);
        return;
      case 7:
        v190 = v330;
        v191 = swift_getTupleTypeMetadata2();
        v348 = v7;
        v192 = *(v191 + 48);
        v193 = v335;
        v194 = *(v335 + 32);
        v195 = v325;
        v196 = v349;
        v194(v325, v349, v190);
        v197 = v327;
        v194(v327, &v196[v192], v190);
        v198 = v278;
        v199 = *(v193 + 16);
        v200 = v308;
        v199(v308, v195, v190);
        v201 = v310;
        v199(v310, v197, v190);
        v202 = v200;
        v203 = v312;
        sub_1CF734F30(v202, v201, v348, v339, v312);
        LOBYTE(v351) = 19;
        swift_getWitnessTable();
        v172 = v350;
        sub_1CF9E7F08();
        (*(v313 + 8))(v203, v111);
        v204 = *(v335 + 8);
        v204(v327, v190);
        v204(v325, v190);
        v205 = *(v277 + 8);
        v206 = v198;
        goto LABEL_39;
      case 8:
        v242 = *v349;
        v243 = *v349;
        v244 = v339;
        v245 = v279;
        sub_1CF7347AC(v242);
        if (v245)
        {
          (*(v277 + 8))(v278, v350);
        }

        else
        {
          v351 = v246;
          v352 = v247;
          v356 = 17;
          type metadata accessor for FileTreeError.UploadCancelled(0, v7, v244, v248);
          swift_getWitnessTable();
          v172 = v350;
          v173 = v278;
          sub_1CF9E7F08();

          sub_1CEFE48D8(v351, v352);
LABEL_38:
          v205 = *(v277 + 8);
          v206 = v173;
LABEL_39:
          v205(v206, v172);
        }

        break;
      case 9:
        v154 = v107;
        v156 = v337;
        v155 = v338;
        (*(v337 + 32))(v107, v349, v338);
        v157 = v336;
        (*(v156 + 16))(v336, v154, v155);
        v158 = v302;
        sub_1CF7359A4(v157, v302);
        LOBYTE(v351) = 24;
        swift_getWitnessTable();
        v159 = v350;
        v160 = v278;
        sub_1CF9E7F08();
        (*(v311 + 8))(v158, v110);
        (*(v156 + 8))(v154, v338);
        (*(v277 + 8))(v160, v159);
        return;
      case 10:
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v235 = v338;
        v236 = *&v349[*(swift_getTupleTypeMetadata2() + 48)];
        v237 = v337;
        v238 = v292;
        (*(v337 + 32))(v292);
        v239 = v288;
        (*(v237 + 16))(v288, v238, v235);
        v240 = v236;
        v241 = v279;
        sub_1CF7365C8(v239, v236, v7, v339, v112);
        if (v241)
        {

          (*(v237 + 8))(v238, v235);
LABEL_30:
          (*(v277 + 8))(v278, v350);
        }

        else
        {
          LOBYTE(v351) = 26;
          v274 = v284;
          swift_getWitnessTable();
          v275 = v350;
          v276 = v278;
          sub_1CF9E7F08();

          (*(v285 + 8))(v112, v274);
          (*(v337 + 8))(v238, v338);
          (*(v277 + 8))(v276, v275);
        }

        return;
      case 11:
        v138 = 14;
        goto LABEL_15;
      case 12:
        LOBYTE(v351) = 6;
        type metadata accessor for FileTreeError.CapturedContentMissingStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 13:
        LOBYTE(v351) = 7;
        type metadata accessor for FileTreeError.ItemNotEvictableStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 14:
        LOBYTE(v351) = 9;
        type metadata accessor for FileTreeError.DirectoryChangedStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 15:
        v138 = 12;
LABEL_15:
        LOBYTE(v351) = v138;
        type metadata accessor for FileTreeError.ItemKindMismatchStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 16:
        LOBYTE(v351) = 15;
        type metadata accessor for FileTreeError.ItemIsFlockedStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 17:
        LOBYTE(v351) = 16;
        type metadata accessor for FileTreeError.ItemNeedDelayPropagationStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 18:
        LOBYTE(v351) = 18;
        type metadata accessor for FileTreeError.UploadInterrupted(0, v7, v339, v114);
        goto LABEL_36;
      case 19:
        LOBYTE(v351) = 20;
        type metadata accessor for FileTreeError.MaxLookupDepthStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 20:
        LOBYTE(v351) = 21;
        type metadata accessor for FileTreeError.CompressedFileReadFailedStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 21:
        LOBYTE(v351) = 22;
        type metadata accessor for FileTreeError.SpeculativeDownloadRejectedStruct(0, v7, v339, v114);
        goto LABEL_36;
      case 22:
        LOBYTE(v351) = 23;
        type metadata accessor for FileTreeError.ItemNotTracked(0, v7, v339, v114);
        goto LABEL_36;
      case 23:
        LOBYTE(v351) = 25;
        type metadata accessor for FileTreeError.NoContentToFetch(0, v7, v339, v114);
        goto LABEL_36;
      case 24:
        LOBYTE(v351) = 27;
        type metadata accessor for FileTreeError.ItemNotInTrash(0, v7, v339, v114);
LABEL_36:
        swift_getWitnessTable();
        v172 = v350;
LABEL_37:
        v173 = v278;
        sub_1CF9E7F08();
        goto LABEL_38;
      default:
        v348 = v7;
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v277 - 48, " at originalError previousError ");
        v115 = v338;
        v116 = v328;
        v351 = v338;
        v352 = v328;
        v353 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
        v354 = v353;
        v117 = swift_getTupleTypeMetadata();
        v118 = v117[12];
        v119 = v349;
        v120 = *&v349[v117[16]];
        v346 = *&v349[v117[20]];
        v347 = v120;
        v121 = v337;
        v122 = v326;
        (*(v337 + 32))(v326, v349, v115);
        v123 = Description;
        v124 = &v119[v118];
        v125 = v334;
        (Description)[4](v334, v124, v116);
        (*(v121 + 16))(v324, v122, v115);
        v126 = v294;
        v349 = v123[2];
        (v349)(v294, v125, v116);
        v127 = v296;
        v128 = *(v296 - 8);
        IsDetachedRootStruct = *(v128 + 48);
        v129 = (IsDetachedRootStruct)(v126, 1, v296);
        v344 = v128;
        if (v129 == 1)
        {
          v130 = v123;
          v131 = v116;
          v132 = v126;
          v133 = v330;
          v134 = v335;
          v135 = 1;
          v136 = v116;
          v137 = v329;
        }

        else
        {
          v134 = v335;
          v136 = v116;
          v137 = v329;
          v249 = v126;
          v132 = v126;
          v133 = v330;
          (*(v335 + 16))(v329, v249, v330);
          v130 = v128;
          v135 = 0;
          v131 = v127;
        }

        (*(v130 + 8))(v132, v131);
        (*(v134 + 56))(v137, v135, 1, v133);
        v250 = v295;
        (v349)(v295, v334, v136);
        if ((IsDetachedRootStruct)(v250, 1, v127) == 1)
        {
          (Description[1])(v250, v136);
          v251 = v315;
          v252 = v315[-1].Description;
          v253 = 1;
          v254 = v279;
          v255 = v350;
          v256 = v338;
          v257 = found;
          v258 = v317;
          v259 = v316;
          v260 = v314;
        }

        else
        {
          v251 = v315;
          v252 = v315[-1].Description;
          v260 = v314;
          v252[2](v314, &v250[*(v127 + 56)], v315);
          (*(v344 + 8))(v250, v127);
          v253 = 0;
          v254 = v279;
          v255 = v350;
          v256 = v338;
          v257 = found;
          v258 = v317;
          v259 = v316;
        }

        (v252[7])(v260, v253, 1, v251);
        v261 = v347;
        v262 = v347;
        v263 = v346;
        v264 = v346;
        sub_1CF72EA70(v324, v329, v260, v261, v263, v348, v339, v259);
        if (v254)
        {

          (Description[1])(v334, v328);
          (*(v337 + 8))(v326, v256);
          (*(v277 + 8))(v278, v255);
        }

        else
        {
          LOBYTE(v351) = 0;
          swift_getWitnessTable();
          v271 = v278;
          sub_1CF9E7F08();
          v272 = v277;
          v273 = v334;

          (*(v258 + 8))(v259, v257);
          (Description[1])(v273, v328);
          (*(v337 + 8))(v326, v256);
          (*(v272 + 8))(v271, v255);
        }

        return;
    }
  }
}

uint64_t sub_1CF73D6A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF73D6DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CF73D738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1CF73D784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CF73D7C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

void sub_1CF73D86C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_1CF9E75D8();
      if (v3 <= 0x3F)
      {
        sub_1CF73E108();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1CF73D98C(int *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v5 = *(v4 + 84);
  v35 = swift_getAssociatedTypeWitness();
  v6 = *(v35 - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v38 = v5;
  v36 = v8;
  if (v8 > v5)
  {
    v5 = v8;
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v5)
  {
    v13 = v5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0xB)
  {
    v13 = 11;
  }

  v14 = *(v6 + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = *(v6 + 80);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  if (!v11)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + v15;
  v19 = v17 + 7;
  if (v13 < a2)
  {
    v20 = ((((v19 + ((v14 + v16 + (v18 & ~v15)) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v21 = v20 & 0xFFFFFFF8;
    if ((v20 & 0xFFFFFFF8) != 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = a2 - v13 + 1;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 < 2)
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v20);
        if (v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v24 = *(a1 + v20);
        if (v24)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v20);
      if (v24)
      {
LABEL_32:
        v25 = v24 - 1;
        if (v21)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if (v38 != v13)
  {
    v29 = (a1 + v18) & ~v15;
    if (v36 == v13)
    {
      if (v7 >= 2)
      {
        v30 = (*(v6 + 48))(v29, v7, v35);
LABEL_54:
        v33 = v30 - 1;
        v34 = v30 >= 2;
LABEL_55:
        if (v34)
        {
          return v33;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v31 = (v29 + v14 + v16) & ~v16;
      if (v12 != v13)
      {
        v32 = *(((v19 + v31) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
        v33 = ((v32 >> 2) & 0xFFFFFFF3 | (4 * (v32 & 3))) ^ 0xF;
        if (v33 >= 0xC)
        {
          v33 = -1;
        }

        v34 = v33 + 1 >= 2;
        goto LABEL_55;
      }

      if (v11 >= 2)
      {
        v30 = (*(v10 + 48))(v31);
        goto LABEL_54;
      }
    }

    return 0;
  }

  v27 = *(v4 + 48);

  return v27(a1, v38, v37);
}

void sub_1CF73DD28(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v38 = AssociatedTypeWitness;
  v6 = *(v5 + 84);
  v37 = swift_getAssociatedTypeWitness();
  v7 = *(v37 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v39 = v6;
  if (v9 > v6)
  {
    v6 = v9;
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = *(v7 + 64);
  v14 = *(v5 + 64);
  v15 = v12 - 1;
  if (!v12)
  {
    v15 = 0;
  }

  if (v15 <= v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v11 + 80);
  if (v16 <= 0xB)
  {
    v19 = 11;
  }

  else
  {
    v19 = v16;
  }

  if (!v8)
  {
    ++v13;
  }

  v20 = v14 + v17;
  v21 = (v13 + v18 + ((v14 + v17) & ~v17)) & ~v18;
  if (v12)
  {
    v22 = *(v11 + 64);
  }

  else
  {
    v22 = *(v11 + 64) + 1;
  }

  v23 = v22 + 7;
  v24 = ((((v23 + v21) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 < a3)
  {
    if (((((v23 + v21) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v25 = a3 - v19 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v10 = v26;
    }

    else
    {
      v10 = 0;
    }
  }

  v27 = a2;
  if (a2 > v19)
  {
    if (v24)
    {
      v28 = 1;
    }

    else
    {
      v28 = a2 - v19;
    }

    if (v24)
    {
      v29 = ~v19 + a2;
      bzero(a1, v24);
      *a1 = v29;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v24) = v28;
      }

      else
      {
        *(a1 + v24) = v28;
      }
    }

    else if (v10)
    {
      *(a1 + v24) = v28;
    }

    return;
  }

  v30 = a1;
  if (v10 <= 1)
  {
    if (v10)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

LABEL_48:
    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  if (v10 == 2)
  {
    *(a1 + v24) = 0;
    goto LABEL_48;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_49:
  if (v39 == v19)
  {
    v31 = v38;
    v32 = *(v5 + 56);
    v33 = v39;
LABEL_53:

    v32(v30, v27, v33, v31);
    return;
  }

  v30 = ((a1 + v20) & ~v17);
  if (v9 == v19)
  {
    v32 = *(v7 + 56);
    v27 = a2 + 1;
    v33 = v8;
    v31 = v37;
    goto LABEL_53;
  }

  v34 = (v30 + v13 + v18) & ~v18;
  if (v15 == v19)
  {
    v35 = *(v11 + 56);

    v35(v34, a2 + 1);
  }

  else
  {
    v36 = ((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
    *v36 = 0;
    if (a2 > 0xB)
    {
      v36[1] = 0;
      *v36 = a2 - 12;
    }

    else
    {
      v36[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }
}

void sub_1CF73E108()
{
  if (!qword_1EDEAFE08)
  {
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEAFE08);
    }
  }
}

void sub_1CF73E158(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_1CF73E108();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF73E200(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80))) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_1CF73E3A8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80))) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((v9 + 7 + ((((v9 + 7) & 0xFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80))) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
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

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v8 < 0x7FFFFFFF)
      {
        v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = (a2 - 1);
        }
      }

      else
      {
        v18 = *(v7 + 56);

        v18(a1, a2);
      }

      return;
    }
  }

  if (((v9 + 7 + ((((v9 + 7) & 0xFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80))) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + 7 + ((((v9 + 7) & 0xFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80))) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t sub_1CF73E5AC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF73E63C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 48);

        return v18((a1 + v9 + 16) & ~v9);
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_1CF73E810(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 16) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_46:
              if (v12 == 2)
              {
                *(a1 + v11) = v14;
              }

              else
              {
                *(a1 + v11) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v12)
    {
      *(a1 + v11) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v11) = 0;
  }

  else if (v12)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v8 & 0x80000000) != 0)
  {
    v18 = *(v7 + 56);

    v18((a1 + v9 + 16) & ~v9, a2);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

void sub_1CF73EA84(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_1CF73E108();
    if (v2 <= 0x3F)
    {
      sub_1CF9E75D8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CF73EB3C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0xB)
  {
    v9 = 11;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (v7)
  {
    v10 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v10 = v8 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v11 = v10 + ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80));
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      if (v7 < 0xB)
      {
        v18 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >> 60;
        v19 = ((v18 >> 2) & 0xFFFFFFF3 | (4 * (v18 & 3))) ^ 0xF;
        if (v19 >= 0xC)
        {
          v19 = -1;
        }

        if (v19 + 1 >= 2)
        {
          return v19;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(v6 + 48);

        return v17(a1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v9 + (v11 | v16) + 1;
}

void sub_1CF73ED3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0xB)
  {
    v10 = 11;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v8)
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = v11 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80));
  if (a3 <= v10)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 - v10 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (v10 < a2)
  {
    v14 = ~v10 + a2;
    if (v12 < 4)
    {
      v15 = (v14 >> (8 * v12)) + 1;
      if (v12)
      {
        v18 = v14 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_49:
              if (v13 == 2)
              {
                *&a1[v12] = v15;
              }

              else
              {
                *&a1[v12] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v13)
    {
      a1[v12] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v12] = 0;
  }

  else if (v13)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 < 0xB)
  {
    v20 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    *v20 = 0;
    if (a2 > 0xB)
    {
      v20[1] = 0;
      *v20 = a2 - 12;
    }

    else
    {
      v20[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  else
  {
    v19 = *(v7 + 56);

    v19(a1, a2);
  }
}

uint64_t sub_1CF73EFDC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CF73F0CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v34 = AssociatedTypeWitness;
  v6 = *(v5 + 84);
  v32 = swift_getAssociatedTypeWitness();
  v7 = *(v32 - 8);
  v33 = *(v7 + 84);
  if (v33 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  if (*(v9 + 84) <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v5 + 64) + v10;
  v15 = v11 + v10;
  v16 = v11 + v12;
  v17 = a1;
  if (a2 > v13)
  {
    v18 = ((*(v9 + 64) + v12 + ((v16 + ((v15 + (v14 & ~v10)) & ~v10)) & ~v12)) & ~v12) + *(v9 + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v13)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v6 == v13)
  {
    v25 = v34;
    v26 = *(v5 + 48);
    v27 = v6;
LABEL_36:

    return v26(v17, v27, v25);
  }

  v29 = ~v10;
  v17 = ((a1 + v14) & v29);
  if (v33 == v13)
  {
    v26 = *(v7 + 48);
    v27 = v33;
    v25 = v32;
    goto LABEL_36;
  }

  v30 = *(v9 + 48);
  v31 = (v16 + ((v17 + v15) & v29)) & ~v12;

  return v30(v31);
}

void sub_1CF73F454(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v34 = v4;
  v5 = *(v4 + 84);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v4 + 64);
  if (*(v9 + 84) <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v6 + 80);
  v14 = v11 + v13;
  v15 = (v11 + v13) & ~v13;
  v16 = *(v6 + 64);
  v17 = v16 + v13;
  v18 = (v16 + v13 + v15) & ~v13;
  v19 = *(v9 + 80);
  v20 = v16 + v19;
  v21 = ((*(v9 + 64) + v19 + ((v16 + v19 + v18) & ~v19)) & ~v19) + *(v9 + 64);
  if (a3 <= v12)
  {
    v24 = 0;
    v22 = a1;
    v23 = a2;
  }

  else
  {
    v22 = a1;
    v23 = a2;
    if (v21 <= 3)
    {
      v27 = ((a3 - v12 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v27))
      {
        v24 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v24 = v28;
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else
    {
      v24 = 1;
    }
  }

  if (v12 < v23)
  {
    v25 = ~v12 + v23;
    if (v21 < 4)
    {
      v26 = (v25 >> (8 * v21)) + 1;
      if (v21)
      {
        v29 = v25 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&v22[v21] = v26;
              }

              else
              {
                *&v22[v21] = v26;
              }

              return;
            }
          }

          else
          {
            *v22 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v29;
        v22[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      v22[v21] = v26;
    }

    return;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      v22[v21] = 0;
      if (!v23)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v23)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v24 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!v23)
  {
    return;
  }

LABEL_34:
  if (v5 == v12)
  {
    v30 = *(v34 + 56);
    v31 = v22;
LABEL_38:

    v30(v31);
    return;
  }

  v31 = (&v22[v14] & ~v13);
  if (v7 == v12)
  {
    v30 = *(v6 + 56);
    goto LABEL_38;
  }

  v32 = *(v10 + 56);
  v33 = (v20 + (&v31[v17] & ~v13)) & ~v19;

  v32(v33);
}