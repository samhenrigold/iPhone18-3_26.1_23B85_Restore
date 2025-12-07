unint64_t sub_1C5429878()
{
  v2 = qword_1EC15C128;
  if (!qword_1EC15C128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C120, &qword_1C55AE0F8);
    sub_1C5429910();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429910()
{
  v2 = qword_1EC15C130;
  if (!qword_1EC15C130)
  {
    sub_1C5429990();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429990()
{
  v2 = qword_1EC15C138;
  if (!qword_1EC15C138)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C138);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5429B70(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_1C5596E54();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

unint64_t sub_1C5429C5C()
{
  v2 = qword_1EC15C140;
  if (!qword_1EC15C140)
  {
    type metadata accessor for PendingBirthdayModel(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429D08()
{
  v2 = qword_1EC15C148;
  if (!qword_1EC15C148)
  {
    sub_1C5594E24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429D88()
{
  v2 = qword_1EC15C158;
  if (!qword_1EC15C158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C150, &qword_1C55AE268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5429E3C()
{
  v2 = qword_1EC15C160;
  if (!qword_1EC15C160)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C160);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5429EA0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118, &qword_1C55AE0C8);
  (v6)(a2 + *(v2 + 36), a1 + *(v2 + 36), v5);
  return a2;
}

unint64_t sub_1C5429F54()
{
  v2 = qword_1EC15C168;
  if (!qword_1EC15C168)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C168);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5429FB8()
{
  v2 = qword_1EC15C170;
  if (!qword_1EC15C170)
  {
    sub_1C5429F54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C170);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A064()
{
  v2 = qword_1EC15C180;
  if (!qword_1EC15C180)
  {
    sub_1C5594924();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C180);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C542A0E4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C178, &qword_1C55AE298);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_1C542A198(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C5594924();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C178, &qword_1C55AE298);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_1C542A24C(uint64_t a1)
{
  v3 = sub_1C5594924();
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118, &qword_1C55AE0C8);
  (v4)(a1 + *(v1 + 36), v3);
  return a1;
}

uint64_t sub_1C542A2F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54245FC(a1, v6, v7, v8);
}

unint64_t sub_1C542A3D0()
{
  v2 = qword_1EC15C188;
  if (!qword_1EC15C188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E450, &qword_1C55AE2B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A458()
{
  v2 = qword_1EC15C190;
  if (!qword_1EC15C190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A64C()
{
  v2 = qword_1EC15C198;
  if (!qword_1EC15C198)
  {
    sub_1C5594A64();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A6CC()
{
  v2 = qword_1EC15C1A0;
  if (!qword_1EC15C1A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C1A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A760()
{
  v2 = qword_1EC15C1A8;
  if (!qword_1EC15C1A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C1A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C542A7F8(uint64_t a1)
{
  updated = sub_1C5594924();
  if (v1 <= 0x3F)
  {
    updated = sub_1C542AA7C(319);
    if (v2 <= 0x3F)
    {
      updated = sub_1C542AB18(319);
      if (v3 <= 0x3F)
      {
        updated = sub_1C5594B24();
        if (v4 <= 0x3F)
        {
          updated = swift_updateClassMetadata2();
          if (!updated)
          {
            return 0;
          }
        }
      }
    }
  }

  return updated;
}

unint64_t sub_1C542AA7C(uint64_t a1)
{
  v5 = qword_1EC15C1B0;
  if (!qword_1EC15C1B0)
  {
    sub_1C5594924();
    v4 = sub_1C5596A94();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C1B0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C542AB18(uint64_t a1)
{
  v5 = qword_1EC15C1B8;
  if (!qword_1EC15C1B8)
  {
    sub_1C5594924();
    sub_1C542A064();
    v4 = sub_1C55964C4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C1B8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1C542AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1C542ACEC(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370, &qword_1C55AE070) - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5425874(a1, v7, v8, v1 + v9, v10);
}

uint64_t static ReviewCustodianListViewFactory.create(accountManager:repairHelper:)(void *a1, void *a2)
{
  v14 = a1;
  v15 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v13 = sub_1C5594994();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v15, v2, v3);
  v12 = &v9 - v9;
  v21 = v4;
  v20 = v5;
  v19 = v6;
  sub_1C5594984();
  v16 = sub_1C5594944();
  v17 = v7;
  (*(v10 + 8))(v12, v13);
  v18 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(v14, v15, v16, v17);

  return v18;
}

uint64_t static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v51 = a2;
  v50 = a1;
  v61 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v43 = 0;
  v44 = *(*(type metadata accessor for ReviewCustodianListView(0) - 8) + 64);
  MEMORY[0x1EEE9AC00](0, v4, v5, v6);
  v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = (&v25 - v46);
  MEMORY[0x1EEE9AC00](v7, &v25 - v46, v8, v9);
  v47 = (&v25 - v46);
  v76 = &v25 - v46;
  v58 = sub_1C5594C74();
  v52 = v58;
  v53 = *(v58 - 8);
  v57 = v53;
  v54 = v53;
  v55 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50, v51, v48, v49);
  v10 = &v25 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v10;
  v75 = v11;
  v74 = v12;
  v72 = v13;
  v73 = v14;
  v71 = v15;
  v16 = sub_1C54B05F8();
  (*(v57 + 16))(v10, v16, v58);
  v63 = sub_1C5594C54();
  v59 = v63;
  v62 = sub_1C5596944();
  v60 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v64 = sub_1C5596E04();
  if (os_log_type_enabled(v63, v62))
  {
    v17 = v43;
    v34 = sub_1C5596A74();
    v30 = v34;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v32 = 0;
    v35 = sub_1C5419DC0(0, v31, v31);
    v33 = v35;
    v36 = sub_1C5419DC0(v32, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v68 = v34;
    v67 = v35;
    v66 = v36;
    v37 = 0;
    v38 = &v68;
    sub_1C5419E14(0, &v68);
    sub_1C5419E14(v37, v38);
    v65 = v64;
    v39 = &v25;
    MEMORY[0x1EEE9AC00](&v25, v18, v19, v20);
    v40 = &v25 - 6;
    *(&v25 - 4) = v21;
    *(&v25 - 3) = &v67;
    *(&v25 - 2) = &v66;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v42 = v17;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v59, v60, "ReviewCustodianListViewFactory initiated", v30, 2u);
      v28 = 0;
      sub_1C5419E74(v33, 0, v31);
      sub_1C5419E74(v36, v28, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v29 = v42;
    }
  }

  else
  {

    v29 = v43;
  }

  (*(v54 + 8))(v56, v52);
  type metadata accessor for ReviewCustodianListViewModel(0);
  v22 = v50;
  v23 = v51;
  sub_1C5594CF4();
  v26 = sub_1C55823FC(v50, v51, v48, v49);
  v70 = v26;

  sub_1C546DF88(v26, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D0, &qword_1C55AE478);
  sub_1C542B834(v47, v45);
  v27 = sub_1C5595484();
  v69 = v27;
  sub_1C542B9AC(v47);

  return v27;
}

id ReviewCustodianListViewFactory.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for ReviewCustodianListViewFactory();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id ReviewCustodianListViewFactory.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewCustodianListViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C542B834(void *a1, void *a2)
{
  *a2 = *a1;
  v9 = a1[1];
  sub_1C5594CF4();
  a2[1] = v9;
  v10 = type metadata accessor for ReviewCustodianListView(0);
  v11 = *(v10 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v11);

    *(a2 + v11) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v10 + 24);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

uint64_t sub_1C542B9AC(uint64_t a1)
{

  v3 = *(type metadata accessor for ReviewCustodianListView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C542BAB8@<X0>(char a1@<W0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4[1] = a1 & 1;
  v4[0] = a1;
  return sub_1C5402CCC(v4, MEMORY[0x1E69E6370], a2, a3);
}

uint64_t sub_1C542BAFC()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1 & 1;
}

uint64_t sub_1C542BB9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 104))(v2) & 1;
}

uint64_t sub_1C542BC20(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 112))(v4 & 1);
}

uint64_t sub_1C542BCA0(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1C5594E94();
}

void (*sub_1C542BD34(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 28857);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

void sub_1C542BE14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v2[7](v2, 0);

  free(v2);
}

uint64_t sub_1C542BEF0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C542BF6C(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8, &qword_1C55AE520);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C542C0C0(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 49728);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8, &qword_1C55AE520);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 49728);
  v6[4] = __swift_coroFrameAllocStub(v5, 49728);
  sub_1C542BEF0();
  return sub_1C542C1E4;
}

void sub_1C542C1E4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C542BF6C(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C542BF6C(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C542C2E0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C542C378(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C542C4C4()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1 & 1;
}

uint64_t sub_1C542C564@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 152))(v2) & 1;
}

uint64_t sub_1C542C5E8(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 160))(v4 & 1);
}

uint64_t sub_1C542C668(char a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1C5594E94();
}

void (*sub_1C542C6FC(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 7373);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C542C7DC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C542C858(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8, &qword_1C55AE520);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C542C9AC(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 13440);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E8, &qword_1C55AE520);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 13440);
  v6[4] = __swift_coroFrameAllocStub(v5, 13440);
  sub_1C542C7DC();
  return sub_1C542CAD0;
}

void sub_1C542CAD0(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C542C858(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C542C858(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C542CBCC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C542CC64(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C542CDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9[2] = a1;
  v9[3] = a2;
  sub_1C5594CF4();
  v9[0] = a1;
  v9[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F0, &qword_1C55AE570);
  sub_1C5402CCC(v9, v3, a3, v4);
}

uint64_t sub_1C542CE38()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  return v1;
}

uint64_t sub_1C542CEE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 200))(v2);
  a2[1] = v3;
}

uint64_t sub_1C542CF64(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 208))(v4, v6);
}

uint64_t sub_1C542CFFC(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C542D0B4(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL, 64997);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C542BE14;
}

uint64_t sub_1C542D194()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8, &qword_1C55AE5C0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C542D210(uint64_t a1)
{
  v9 = a1;
  v13 = 0;
  v12 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C200, &unk_1C55AE5C8);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6[0] = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10, v9, v10, v2);
  v6[1] = v6 - v6[0];
  v13 = v4;
  v12 = v1;
  (*(v7 + 16))(v3);
  v6[2] = &v11;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8, &qword_1C55AE5C0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t (*sub_1C542D364(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 23767);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C200, &unk_1C55AE5C8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 23767);
  v6[4] = __swift_coroFrameAllocStub(v5, 23767);
  sub_1C542D194();
  return sub_1C542D488;
}

void sub_1C542D488(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C542D210(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C542D210(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C542D584@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8, &qword_1C55AE5C0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C542D61C(uint64_t a1)
{
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8, &qword_1C55AE5C0);
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v12, v13, v2);
  v8 = &v5 - v6;
  (*(v10 + 16))(v3);
  v7 = v1 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  v9 = &v14;
  swift_beginAccess();
  (*(v10 + 40))(v7, v8, v13);
  swift_endAccess();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C542D768()
{
  v3 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3);
  (v5)(v0 + OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading, v4);
  v6 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8, &qword_1C55AE5C0);
  (*(*(v1 - 8) + 8))(v0 + v6);
  return v7;
}

uint64_t sub_1C542D90C()
{
  v27 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1F8, &qword_1C55AE5C0);
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v10 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25, v1, v2, v3);
  v24 = &v10 - v10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1E0, &qword_1C55AE518);
  v12 = *(v18 - 8);
  v13 = v18 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v4, v5, v6);
  v17 = &v10 - v11;
  v27 = v0;
  v14 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__hasSoftwareUpdates;
  v15 = 1;
  sub_1C542BAB8(0, &v10 - v11, v7);
  v20 = *(v12 + 32);
  v19 = v12 + 32;
  v20(v0 + v14, v17, v18);
  v16 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__isLoading;
  sub_1C542BAB8(v15 & 1, v17, v8);
  v20(v0 + v16, v17, v18);
  v23 = OBJC_IVAR____TtC14AppleAccountUI22SoftwareUpdateProgress__buildName;
  sub_1C542CDB0(0, 0, v24);
  (*(v21 + 32))(v0 + v23, v24, v25);
  return v26;
}

uint64_t sub_1C542DB04@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SoftwareUpdateProgress(0);
  result = sub_1C5594E34();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SoftwareUpdateProgress(uint64_t a1)
{
  v2 = qword_1EC160960;
  if (!qword_1EC160960)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C542DC14()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 20));
  sub_1C5594CF4();
  return v2;
}

uint64_t type metadata accessor for SoftwareUpdateRowElement(uint64_t a1)
{
  v2 = qword_1EC160970;
  if (!qword_1EC160970)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C542DCD0()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 24));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DD18()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 28));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DD60()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DDA8()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 36));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DDF0()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 40));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DE38()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 44));
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C542DE80(uint64_t a1)
{
  type metadata accessor for SoftwareUpdateProgress(0);
  sub_1C542DEC8();
  return sub_1C5595184();
}

unint64_t sub_1C542DEC8()
{
  v2 = qword_1EC15C208;
  if (!qword_1EC15C208)
  {
    type metadata accessor for SoftwareUpdateProgress(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C542DF48()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 48) + 8);

  return v2;
}

uint64_t sub_1C542DF8C(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 48) + 8) = a1;
}

uint64_t sub_1C542E080()
{
  type metadata accessor for SoftwareUpdateRowElement(0);

  type metadata accessor for SoftwareUpdateProgress(0);
  sub_1C542DEC8();
  v1 = sub_1C5595194();

  return v1;
}

uint64_t sub_1C542E104()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 48));

  return v2;
}

uint64_t sub_1C542E14C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 48));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C542E1A8()
{
  type metadata accessor for SoftwareUpdateRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C542E240(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 52));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F94();
  sub_1C5373718(v6);
}

void (*sub_1C542E304(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 11685);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 52));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

void sub_1C542E3F0(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = *(v8 + 48);
    v2 = *(v8 + 67);
    v3 = *(v8 + 64);

    *(v8 + 16) = v2;
    *(v8 + 24) = v4;
    *(v8 + 65) = v3;
    sub_1C5595F94();
    sub_1C5373718(v8 + 16);
  }

  else
  {
    v7 = *(v8 + 48);
    v5 = *(v8 + 67);
    v6 = *(v8 + 64);

    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    *(v8 + 66) = v6;
    sub_1C5595F94();
    sub_1C5373718(v8 + 32);
  }

  free(v8);
}

uint64_t sub_1C542E504()
{
  type metadata accessor for SoftwareUpdateRowElement(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40, &unk_1C55ADA60);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C542E5B4()
{
  v2 = *(v0 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 52));

  return v2 & 1;
}

uint64_t sub_1C542E600(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 52);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C542E65C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v17 = sub_1C542FB68;
  v34 = 0;
  v33 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C210, &qword_1C55AE5D8);
  v13 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v1, v2, v3);
  v25 = &v12 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C218, &qword_1C55AE5E0);
  v15 = *(*(v27 - 8) + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v4, v5, v6);
  v29 = &v12 - v14;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v12 - v14, v7, v8, v9);
  v30 = &v12 - v16;
  v34 = &v12 - v16;
  v33 = v10;
  v18 = &v31;
  v32 = v10;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C220, &qword_1C55AE5E8);
  v20 = sub_1C543046C();
  sub_1C5412C88();
  v21 = 0;
  v22 = 1;
  sub_1C5596024();
  v24 = sub_1C5430D28();
  sub_1C5411148(v23, v24);
  sub_1C5595D84();
  sub_1C53593BC(v25);
  v28 = sub_1C5430DB0();
  sub_1C540EFD8(v29, v27, v30);
  sub_1C53593BC(v29);
  sub_1C535992C(v30, v29);
  sub_1C540EFD8(v29, v27, v26);
  sub_1C53593BC(v29);
  return sub_1C53593BC(v30);
}

void *sub_1C542E8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = v247;
  v158 = a1;
  v159 = a2;
  v187 = 0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v255 = 0;
  memset(v254, 0, sizeof(v254));
  v246 = 0;
  v245 = 0;
  v236 = 0;
  v235 = 0;
  v234 = 0;
  v233 = 0;
  v230 = 0;
  v229 = 0;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2E0, &qword_1C55AE648);
  v162 = *(*(v160 - 8) + 64);
  MEMORY[0x1EEE9AC00](v160 - 8, v160, v3, v4);
  v164 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v161 = (&v107 - v164);
  MEMORY[0x1EEE9AC00](&v107 - v164, v5, v6, v7);
  v163 = (&v107 - v164);
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v165 = (&v107 - v164);
  v268 = &v107 - v164;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2D0, &qword_1C55AE640);
  v167 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166 - 8, v166, v12, v13);
  v169 = (v167 + 15) & 0xFFFFFFFFFFFFFFF0;
  v168 = &v107 - v169;
  MEMORY[0x1EEE9AC00](&v107 - v169, v14, v15, v16);
  v170 = &v107 - v169;
  v267 = &v107 - v169;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C2C0, &qword_1C55AE638);
  v173 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v187, v171, v17, v18);
  v175 = (v173 + 15) & 0xFFFFFFFFFFFFFFF0;
  v172 = (&v107 - v175);
  MEMORY[0x1EEE9AC00](v19, &v107 - v175, v20, v21);
  v174 = (&v107 - v175);
  MEMORY[0x1EEE9AC00](v22, v23, v24, v25);
  v176 = (&v107 - v175);
  v266 = &v107 - v175;
  v177 = sub_1C5596384();
  v178 = *(v177 - 8);
  v179 = v178;
  MEMORY[0x1EEE9AC00](v177 - 8, v177, v26, v27);
  v180 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258, &unk_1C55AE600);
  v183 = *(*(v181 - 8) + 64);
  MEMORY[0x1EEE9AC00](v181 - 8, v181, v29, v30);
  v185 = (v183 + 15) & 0xFFFFFFFFFFFFFFF0;
  v182 = &v107 - v185;
  MEMORY[0x1EEE9AC00](&v107 - v185, v31, v32, v33);
  v184 = &v107 - v185;
  MEMORY[0x1EEE9AC00](v34, v35, v36, v37);
  v186 = &v107 - v185;
  v265 = &v107 - v185;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C248, &qword_1C55AE5F8);
  v189 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v187, v188, v38, v39);
  v191 = (v189 + 15) & 0xFFFFFFFFFFFFFFF0;
  v190 = &v107 - v191;
  MEMORY[0x1EEE9AC00](v40, &v107 - v191, v41, v42);
  v192 = &v107 - v191;
  v264 = &v107 - v191;
  v193 = sub_1C5594FC4();
  v194 = *(v193 - 8);
  v195 = v194;
  MEMORY[0x1EEE9AC00](v193 - 8, v193, v43, v44);
  v196 = &v107 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  v198 = *(v197 - 8);
  v199 = v198;
  v200 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v197 - 8, v197, v46, v47);
  v201 = &v107 - v200;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680);
  v203 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202 - 8, v48, v49, v50);
  v205 = (v203 + 15) & 0xFFFFFFFFFFFFFFF0;
  v204 = &v107 - v205;
  MEMORY[0x1EEE9AC00](v51, v52, v53, v54);
  v206 = &v107 - v205;
  v263 = &v107 - v205;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C238, &qword_1C55AE5F0);
  v209 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207 - 8, v207, v55, v56);
  v211 = (v209 + 15) & 0xFFFFFFFFFFFFFFF0;
  v208 = &v107 - v211;
  MEMORY[0x1EEE9AC00](&v107 - v211, v57, v58, v59);
  v210 = &v107 - v211;
  MEMORY[0x1EEE9AC00](v60, v61, v62, v63);
  v212 = &v107 - v211;
  v262 = &v107 - v211;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C220, &qword_1C55AE5E8);
  v214 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213 - 8, v213, v64, v65);
  v216 = (v214 + 15) & 0xFFFFFFFFFFFFFFF0;
  v215 = (&v107 - v216);
  MEMORY[0x1EEE9AC00](&v107 - v216, v66, v67, v68);
  v217 = (&v107 - v216);
  v261 = &v107 - v216;
  v260 = a1;
  v218 = sub_1C542DF48();
  v219 = (*(*v218 + 104))(v218);

  if (v219)
  {
    v155 = sub_1C542DF48();
    v156 = (*(*v155 + 152))(v155);

    if (v156)
    {
      v150 = 0;
      v149 = 1;
      v231 = sub_1C5596044();
      v232 = v69 & 1;
      v151 = MEMORY[0x1E6981840];
      v152 = MEMORY[0x1E6981838];
      sub_1C540EFD8(&v231, MEMORY[0x1E6981840], &v233);
      sub_1C55950B4();
      (*(v195 + 104))(v196, *MEMORY[0x1E697DC28], v193);
      sub_1C5435714();
      sub_1C5595AE4();
      (*(v195 + 8))(v196, v193);
      (*(v199 + 8))(v201, v197);
      v153 = sub_1C543579C();
      sub_1C540EFD8(v204, v202, v206);
      sub_1C54358CC(v204);
      v227 = sub_1C5596044();
      v228 = v70 & 1;
      sub_1C540EFD8(&v227, v151, &v229);
      v225 = v234;
      v224 = v233;
      v226[0] = &v224;
      sub_1C5435B68(v206, v204);
      v226[1] = v204;
      v223 = v230;
      v222 = v229;
      v226[2] = &v222;
      v221[0] = v151;
      v221[1] = v202;
      v221[2] = v151;
      v220[0] = v152;
      v220[1] = v153;
      v220[2] = v152;
      sub_1C540F5A0(v226, 3uLL, v221, v220, v192);
      sub_1C54358CC(v204);
      sub_1C54362F0(v192, v190);
      v154 = sub_1C54305BC();
      v71 = sub_1C5430644();
      sub_1C540FD1C(v190, v188, v181, v154, v71, v210);
      sub_1C543649C(v190);
      sub_1C535BE64(v210, v212);
      sub_1C543649C(v192);
      sub_1C54358CC(v206);
    }

    else
    {
      v72 = v158;
      updated = type metadata accessor for SoftwareUpdateRowElement(0);
      v73 = (v72 + updated[6]);
      v139 = *v73;
      v147 = v73[1];
      sub_1C5594CF4();
      v132 = sub_1C542DF48();
      v74 = (*(*v132 + 200))(v132);
      v75 = v158;
      v136 = v74;
      v146 = v76;

      v77 = (v75 + updated[9]);
      v137 = *v77;
      v145 = v77[1];
      sub_1C5594CF4();
      v78 = (v75 + updated[10]);
      v138 = *v78;
      v144 = v78[1];
      sub_1C5594CF4();
      v79 = (v75 + updated[11]);
      v135 = *v79;
      v143 = v79[1];
      sub_1C5594CF4();
      (*(v179 + 16))(v180, v75, v177);
      v141 = sub_1C542E504();
      v142 = v80;
      v134 = v81;
      v82 = sub_1C5433964();
      v140 = &v105;
      v106[3] = v82;
      sub_1C5452AB8(v139, v147, v136, v146, v137, v145, v138, v144, v184, v135, v143, v180, v141, v142, v134 & 1, updated);

      (*(v179 + 8))(v180, v177);

      v148 = sub_1C5430644();
      sub_1C540EFD8(v184, v181, v186);
      sub_1C535BC24(v184);
      v236 = v184;
      sub_1C535BD04(v186, v182);
      sub_1C540EFD8(v182, v181, v184);
      sub_1C535BC24(v182);
      sub_1C535BD04(v184, v182);
      v83 = sub_1C54305BC();
      sub_1C54108A0(v182, v188, v181, v83, v148, v210);
      sub_1C535BC24(v182);
      sub_1C535BE64(v210, v212);
      sub_1C535BC24(v184);
      sub_1C535BC24(v186);
    }

    v235 = v210;
    sub_1C535C108(v212, v208);
    v131 = sub_1C5430514();
    sub_1C540EFD8(v208, v207, v210);
    sub_1C535C430(v208);
    sub_1C535C108(v210, v208);
    v84 = sub_1C5430ACC();
    sub_1C540FD1C(v208, v207, v171, v131, v84, v215);
    sub_1C535C430(v208);
    sub_1C535A790(v215, v217);
    sub_1C535C430(v210);
    sub_1C535C430(v212);
  }

  else
  {
    v129 = sub_1C542DF48();
    v130 = (*(*v129 + 152))(v129);

    if (v130)
    {
      v257 = v206;
      sub_1C55950B4();
      (*(v195 + 104))(v196, *MEMORY[0x1E697DC28], v193);
      sub_1C5435714();
      sub_1C5595AE4();
      (*(v195 + 8))(v196, v193);
      (*(v199 + 8))(v201, v197);
      v123 = sub_1C543579C();
      sub_1C540EFD8(v204, v202, v206);
      sub_1C54358CC(v204);
      v116 = sub_1C5595434();
      v117 = &v107;
      MEMORY[0x1EEE9AC00](&v107, v85, v86, v87);
      v114 = v106;
      v106[2] = v88;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C428, &qword_1C55AEA38);
      sub_1C54359C8();
      v120 = 0;
      v119 = 1;
      sub_1C5596064();
      v89 = v157;
      v90 = v248;
      *(v157 + 18) = v249;
      v89[17] = v90;
      v91 = v250;
      v92 = v251;
      v256 = v253;
      v89[21] = v252;
      v89[20] = v92;
      v89[19] = v91;
      v93 = v89[17];
      v89[1] = v89[18];
      *v89 = v93;
      v94 = v89[19];
      v95 = v89[20];
      v96 = v89[21];
      v247[10] = v256;
      v89[4] = v96;
      v89[3] = v95;
      v89[2] = v94;
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C438, &unk_1C55AEA40);
      v125 = sub_1C5435A50();
      v128 = v254;
      v118 = v247;
      sub_1C540EFD8(v247, v121, v254);
      sub_1C5435AD8(v118);
      v243 = sub_1C5596044();
      v244 = v97 & 1;
      v122 = MEMORY[0x1E6981840];
      v124 = MEMORY[0x1E6981838];
      sub_1C540EFD8(&v243, MEMORY[0x1E6981840], &v245);
      sub_1C5435B68(v206, v204);
      v242[0] = v204;
      v126 = v241;
      sub_1C5435C9C(v128, v241);
      v242[1] = v126;
      v240 = v246;
      v239 = v245;
      v242[2] = &v239;
      v238[0] = v202;
      v238[1] = v121;
      v238[2] = v122;
      v237[0] = v123;
      v237[1] = v125;
      v237[2] = v124;
      sub_1C540F5A0(v242, 3uLL, v238, v237, v170);
      sub_1C5435AD8(v126);
      sub_1C54358CC(v204);
      sub_1C5435DF8(v170, v168);
      v127 = sub_1C5430B74();
      v98 = sub_1C5430BFC();
      sub_1C540FD1C(v168, v166, v160, v127, v98, v174);
      sub_1C5436140(v168);
      sub_1C5434AB8(v174, v176);
      sub_1C5436140(v170);
      sub_1C5435AD8(v128);
      sub_1C54358CC(v206);
    }

    else
    {
      v99 = v158;
      v109 = type metadata accessor for SoftwareUpdateRowElement(0);
      v100 = (v99 + *(v109 + 24));
      v110 = *v100;
      v112 = v100[1];
      sub_1C5594CF4();
      v101 = (v99 + *(v109 + 32));
      v108 = *v101;
      v111 = v101[1];
      sub_1C5594CF4();
      sub_1C5433964();
      sub_1C5450D48(v110, v112, v108, v111, v109, v163);

      v113 = sub_1C5430BFC();
      sub_1C540EFD8(v163, v160, v165);
      sub_1C543465C(v163);
      v259 = v163;
      sub_1C54347C8(v165, v161);
      sub_1C540EFD8(v161, v160, v163);
      sub_1C543465C(v161);
      sub_1C54347C8(v163, v161);
      v102 = sub_1C5430B74();
      sub_1C54108A0(v161, v166, v160, v102, v113, v174);
      sub_1C543465C(v161);
      sub_1C5434AB8(v174, v176);
      sub_1C543465C(v163);
      sub_1C543465C(v165);
    }

    v258 = v174;
    sub_1C5434E2C(v176, v172);
    v107 = sub_1C5430ACC();
    sub_1C540EFD8(v172, v171, v174);
    sub_1C5435418(v172);
    sub_1C5434E2C(v174, v172);
    v103 = sub_1C5430514();
    sub_1C54108A0(v172, v207, v171, v103, v107, v215);
    sub_1C5435418(v172);
    sub_1C535A790(v215, v217);
    sub_1C5435418(v174);
    sub_1C5435418(v176);
  }

  sub_1C535ADD8(v217, v215);
  sub_1C543046C();
  sub_1C540EFD8(v215, v213, v159);
  sub_1C535B71C(v215);
  return sub_1C535B71C(v217);
}

uint64_t sub_1C542FB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = 0;
  v139 = 0;
  v136 = 0u;
  v137 = 0u;
  v107 = 0u;
  v108 = 0u;
  v95 = 0;
  v96 = 0;
  v93 = 0u;
  v94 = 0u;
  v84 = 0u;
  v85 = 0u;
  v163 = a1;
  updated = type metadata accessor for SoftwareUpdateRowElement(0);
  v2 = (a1 + *(updated + 24));
  v72 = *v2;
  v73 = v2[1];
  sub_1C5594CF4();
  if (v73)
  {
    v95 = v72;
    v96 = v73;
    sub_1C5594CF4();
    v89 = sub_1C55959D4();
    v90 = v3;
    v91 = v4;
    v92 = v5;
    v86[0] = v89;
    v86[1] = v3;
    v87 = v4 & 1;
    v88 = v5;
    v56 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v86, MEMORY[0x1E6981148], &v93);
    sub_1C5414260(v86);
    v50 = v93;
    v51 = v94;
    v52 = *(&v94 + 1);
    sub_1C54130AC(v93, *(&v93 + 1), v94 & 1);
    sub_1C5594CF4();
    v81 = v50;
    v82 = v51 & 1;
    v83 = v52;
    sub_1C540EFD8(&v81, v56, &v84);
    sub_1C5414260(&v81);
    v54 = v84;
    v53 = v85;
    v55 = *(&v85 + 1);
    sub_1C54130AC(v84, *(&v84 + 1), v85 & 1);
    sub_1C5594CF4();
    v74 = v54;
    v75 = v53 & 1;
    v76 = v55;
    sub_1C540F554(&v74, v56, &v77);
    sub_1C54366A4(&v74);
    v57 = v77;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    sub_1C54365B4(v77, v78, v79, v80);
    v159 = v57;
    v160 = v58;
    v161 = v59;
    v162 = v60;
    sub_1C5414260(&v84);
    sub_1C5414260(&v93);

    v65 = v57;
    v66 = v58;
    v67 = v59;
    v68 = v60;
  }

  else
  {
    memset(v154, 0, sizeof(v154));
    sub_1C540F554(v154, MEMORY[0x1E6981148], &v155);
    v61 = v155;
    v62 = v156;
    v63 = v157;
    v64 = v158;
    sub_1C54365B4(v155, v156, v157, v158);
    v159 = v61;
    v160 = v62;
    v161 = v63;
    v162 = v64;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    v68 = v64;
  }

  v6 = (a1 + *(updated + 28));
  v48 = *v6;
  v49 = v6[1];
  sub_1C5594CF4();
  if (v49)
  {
    v138 = v48;
    v139 = v49;
    sub_1C5594CF4();
    sub_1C55953C4();
    v133 = 0;
    v134 = 0;
    v135 = 256;
    v129 = sub_1C55959E4();
    v130 = v7;
    v131 = v8;
    v132 = v9;
    v18 = v129;
    v19 = v7;
    v17 = v8;
    v20 = v9;
    v128 = sub_1C5430454();
    v124 = v18;
    v125 = v19;
    v126 = v17 & 1;
    v127 = v20;
    v120 = sub_1C5595994();
    v121 = v10;
    v122 = v11;
    v123 = v12;
    v21 = v120;
    v22 = v10;
    v23 = v11;
    v24 = v12;
    sub_1C5412EA0(v18, v19, v17 & 1);

    sub_1C5595814();
    v116 = v21;
    v117 = v22;
    v118 = v23 & 1;
    v119 = v24;
    v112 = sub_1C55959C4();
    v113 = v13;
    v114 = v14;
    v115 = v15;
    v25 = v112;
    v26 = v13;
    v27 = v14;
    v28 = v15;

    sub_1C5412EA0(v21, v22, v23 & 1);

    v109[0] = v25;
    v109[1] = v26;
    v110 = v27 & 1;
    v111 = v28;
    v35 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v109, MEMORY[0x1E6981148], &v136);
    sub_1C5414260(v109);
    v29 = v136;
    v30 = v137;
    v31 = *(&v137 + 1);
    sub_1C54130AC(v136, *(&v136 + 1), v137 & 1);
    sub_1C5594CF4();
    v104 = v29;
    v105 = v30 & 1;
    v106 = v31;
    sub_1C540EFD8(&v104, v35, &v107);
    sub_1C5414260(&v104);
    v33 = v107;
    v32 = v108;
    v34 = *(&v108 + 1);
    sub_1C54130AC(v107, *(&v107 + 1), v108 & 1);
    sub_1C5594CF4();
    v97 = v33;
    v98 = v32 & 1;
    v99 = v34;
    sub_1C540F554(&v97, v35, &v100);
    sub_1C54366A4(&v97);
    v36 = v100;
    v37 = v101;
    v38 = v102;
    v39 = v103;
    sub_1C54365B4(v100, v101, v102, v103);
    v150 = v36;
    v151 = v37;
    v152 = v38;
    v153 = v39;
    sub_1C5414260(&v107);
    sub_1C5414260(&v136);

    v44 = v36;
    v45 = v37;
    v46 = v38;
    v47 = v39;
  }

  else
  {
    memset(v145, 0, sizeof(v145));
    sub_1C540F554(v145, MEMORY[0x1E6981148], &v146);
    v40 = v146;
    v41 = v147;
    v42 = v148;
    v43 = v149;
    sub_1C54365B4(v146, v147, v148, v149);
    v150 = v40;
    v151 = v41;
    v152 = v42;
    v153 = v43;
    v44 = v40;
    v45 = v41;
    v46 = v42;
    v47 = v43;
  }

  v143[0] = v65;
  v143[1] = v66;
  v143[2] = v67;
  v143[3] = v68;
  v144[0] = v143;
  v142[0] = v44;
  v142[1] = v45;
  v142[2] = v46;
  v142[3] = v47;
  v144[1] = v142;
  v141[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
  v141[1] = v141[0];
  v140[0] = sub_1C5436610();
  v140[1] = v140[0];
  sub_1C540F5A0(v144, 2uLL, v141, v140, a2);
  sub_1C54366A4(v142);
  sub_1C54366A4(v143);
  sub_1C54366A4(&v150);
  return sub_1C54366A4(&v159);
}

unint64_t sub_1C543046C()
{
  v2 = qword_1EC15C228;
  if (!qword_1EC15C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C220, &qword_1C55AE5E8);
    sub_1C5430514();
    sub_1C5430ACC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430514()
{
  v2 = qword_1EC15C230;
  if (!qword_1EC15C230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C238, &qword_1C55AE5F0);
    sub_1C54305BC();
    sub_1C5430644();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54305BC()
{
  v2 = qword_1EC15C240;
  if (!qword_1EC15C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C248, &qword_1C55AE5F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C240);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430644()
{
  v2 = qword_1EC15C250;
  if (!qword_1EC15C250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C258, &unk_1C55AE600);
    sub_1C54306EC();
    sub_1C5430A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54306EC()
{
  v2 = qword_1EC15C260;
  if (!qword_1EC15C260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C268, &unk_1C55AFB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C270, &qword_1C55AE610);
    sub_1C5595564();
    sub_1C543080C();
    sub_1C54309C4();
    swift_getOpaqueTypeConformance2();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543080C()
{
  v2 = qword_1EC15C278;
  if (!qword_1EC15C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C270, &qword_1C55AE610);
    sub_1C54308B4();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C278);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54308B4()
{
  v2 = qword_1EC15C280;
  if (!qword_1EC15C280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C288, &qword_1C55AE618);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C280);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543093C()
{
  v2 = qword_1EC15C290;
  if (!qword_1EC15C290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C298, &unk_1C55AE620);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C290);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54309C4()
{
  v2 = qword_1EC15C2A0;
  if (!qword_1EC15C2A0)
  {
    sub_1C5595564();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430A44()
{
  v2 = qword_1EC15C2A8;
  if (!qword_1EC15C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2B0, &qword_1C55AE630);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430ACC()
{
  v2 = qword_1EC15C2B8;
  if (!qword_1EC15C2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2C0, &qword_1C55AE638);
    sub_1C5430B74();
    sub_1C5430BFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430B74()
{
  v2 = qword_1EC15C2C8;
  if (!qword_1EC15C2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2D0, &qword_1C55AE640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430BFC()
{
  v2 = qword_1EC15C2D8;
  if (!qword_1EC15C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2E0, &qword_1C55AE648);
    sub_1C5430CA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430CA0()
{
  v2 = qword_1EC15C2E8;
  if (!qword_1EC15C2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C2F0, &qword_1C55AE650);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430D28()
{
  v2 = qword_1EC15C2F8;
  if (!qword_1EC15C2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C210, &qword_1C55AE5D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C2F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5430DB0()
{
  v2 = qword_1EC15C370;
  if (!qword_1EC15C370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C218, &qword_1C55AE5E0);
    sub_1C5430D28();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C370);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5430E54(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "label";
  *(v2 + 8) = 5;
  *(v2 + 16) = 2;
  *(v2 + 24) = "subLabel";
  *(v2 + 32) = 8;
  *(v2 + 40) = 2;
  *(v2 + 48) = "systemImage";
  *(v2 + 56) = 11;
  *(v2 + 64) = 2;
  *(v2 + 72) = "accessorySystemImage";
  *(v2 + 80) = 20;
  *(v2 + 88) = 2;
  *(v2 + 96) = "checkListSubLabel";
  *(v2 + 104) = 17;
  *(v2 + 112) = 2;
  *(v2 + 120) = "subLabelAccessorySystemImage";
  *(v2 + 128) = 28;
  *(v2 + 136) = 2;
  sub_1C540FCD8();
  v6 = sub_1C5596D64();

  switch(v6)
  {
    case 0:
      v5 = 0;
LABEL_14:

      return v5;
    case 1:
      v5 = 1;
      goto LABEL_14;
    case 2:
      v5 = 2;
      goto LABEL_14;
    case 3:
      v5 = 3;
      goto LABEL_14;
    case 4:
      v5 = 4;
      goto LABEL_14;
    case 5:
      v5 = 5;
      goto LABEL_14;
  }

  return 6;
}

uint64_t sub_1C54310AC(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v6 = sub_1C5430E54(a1, a2);

  if (v6 == 6)
  {
    return 6;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1C5431178(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_1C55965F4("label", 5, 1);
    case 1:
      return sub_1C55965F4("subLabel", 8, 1);
    case 2:
      return sub_1C55965F4("systemImage", 11, 1);
    case 3:
      return sub_1C55965F4("accessorySystemImage", 20, 1);
    case 4:
      return sub_1C55965F4("checkListSubLabel", 17, 1);
  }

  return sub_1C55965F4("subLabelAccessorySystemImage", 28, 1);
}

unint64_t sub_1C543136C()
{
  v2 = qword_1EC15C378;
  if (!qword_1EC15C378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C378);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54314B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5430E54(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C54314F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5431178(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5431540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C54310AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C543158C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5431144();
  *a1 = result;
  return result;
}

unint64_t sub_1C54315E8()
{
  v2 = qword_1EC15C380;
  if (!qword_1EC15C380)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C380);
    return WitnessTable;
  }

  return v2;
}

void sub_1C5431694(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v122 = a1;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v138 = 0;
  v137 = 0;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C388, &qword_1C55AE6C8);
  v103 = *(v102 - 8);
  v104 = v102 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v102, v2, v3, v4);
  v106 = &v58 - v105;
  v148 = &v58 - v105;
  v112 = 0;
  v107 = sub_1C5596384();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112, v5, v6, v7);
  v111 = &v58 - v110;
  updated = type metadata accessor for SoftwareUpdateRowElement(v8);
  v114 = *(*(updated - 1) + 64);
  v113 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v112, v9, v10, v11);
  v115 = &v58 - v113;
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12, &v58 - v113, v13, v14);
  v121 = &v58 - v116;
  v147 = &v58 - v116;
  v146 = v122;
  v117 = *(v15 + 48);
  type metadata accessor for SoftwareUpdateProgress(v16);
  v17 = sub_1C542D8D0();
  v18 = sub_1C542DE80(v17);
  v19 = updated;
  v20 = (v121 + v117);
  *v20 = v18;
  v20[1] = v21;
  v120 = v19[13];
  v119 = 1;
  v22 = sub_1C5409594(0);
  v23 = v122;
  v24 = v121 + v120;
  *v24 = v22 & v119;
  *(v24 + 8) = v25;
  v125 = v23[3];
  v123 = v23[4];
  __swift_project_boxed_opaque_existential_0(v23, v125);
  v26 = v124;
  v27 = sub_1C5596F04();
  v126 = v26;
  v127 = v27;
  v128 = v28;
  v129 = v26;
  if (v26)
  {
    v60 = v129;
    v61 = 768;
  }

  else
  {
    v29 = v122;
    v30 = v128;
    v31 = (v121 + updated[5]);
    *v31 = v127;
    v31[1] = v30;
    v98 = v145;
    sub_1C5432498(v29, v145);
    v32 = v126;
    sub_1C5596374();
    v99 = v32;
    v100 = v32;
    if (v32)
    {
      v60 = v100;
      v61 = 770;
    }

    else
    {
      (*(v108 + 32))(v121, v111, v107);
      v94 = v122[3];
      v95 = v122[4];
      __swift_project_boxed_opaque_existential_0(v122, v94);
      sub_1C54315E8();
      v33 = v99;
      sub_1C5596F24();
      v96 = v33;
      v97 = v33;
      if (!v33)
      {
        v144 = 0;
        v34 = sub_1C5596D74();
        v90 = 0;
        v91 = v34;
        v92 = v35;
        v93 = 0;
        v36 = (v121 + updated[6]);
        *v36 = v34;
        v36[1] = v35;
        v143 = 1;
        v37 = sub_1C5596D74();
        v86 = 0;
        v87 = v37;
        v88 = v38;
        v89 = 0;
        v39 = (v121 + updated[7]);
        *v39 = v37;
        v39[1] = v38;
        v142 = 4;
        v40 = sub_1C5596D74();
        v82 = 0;
        v83 = v40;
        v84 = v41;
        v85 = 0;
        v42 = (v121 + updated[8]);
        *v42 = v40;
        v42[1] = v41;
        v141 = 2;
        v43 = sub_1C5596D74();
        v78 = 0;
        v79 = v43;
        v80 = v44;
        v81 = 0;
        v45 = (v121 + updated[9]);
        *v45 = v43;
        v45[1] = v44;
        v140 = 3;
        v46 = sub_1C5596D74();
        v74 = 0;
        v75 = v46;
        v76 = v47;
        v77 = 0;
        v48 = (v121 + updated[10]);
        *v48 = v46;
        v48[1] = v47;
        v139 = 5;
        v49 = sub_1C5596D74();
        v70 = 0;
        v71 = v49;
        v72 = v50;
        v73 = 0;
        v51 = (v121 + updated[11]);
        *v51 = v49;
        v51[1] = v50;
        v67 = 0;
        sub_1C5432504(v52);
        v69 = sub_1C5432568(v67, 1u);
        v138 = v69;
        sub_1C54325B0(v53);
        v68 = sub_1C5404B48();
        v137 = v68;
        MEMORY[0x1E69E5928](v69, v54);
        if (v69)
        {
          v66 = v69;
          v65 = v69;
          MEMORY[0x1E69E5928](v68, v55);
          sub_1C5432614(v121, v115);
          v62 = sub_1C5432A0C(v115);
          v63 = v56;
          sub_1C54328C8(v115);
          v135 = v62;
          v136 = v63;
          aBlock = MEMORY[0x1E69E9820];
          v131 = 1107296256;
          v132 = 0;
          v133 = sub_1C5433348;
          v134 = &block_descriptor_2;
          v64 = _Block_copy(&aBlock);

          [v65 scanForUpdates:v68 withScanResults:v64];
          _Block_release(v64);
          MEMORY[0x1E69E5920](v68);
          MEMORY[0x1E69E5920](v65);
        }

        MEMORY[0x1E69E5920](v68);
        v57 = MEMORY[0x1E69E5920](v69);
        (*(v103 + 8))(v106, v102, v57);
        sub_1C5432614(v121, v101);
        __swift_destroy_boxed_opaque_existential_0(v122);
        sub_1C54328C8(v121);
        return;
      }

      v60 = v97;
      v61 = 771;
    }
  }

  v59 = v61;
  v58 = v60;
  __swift_destroy_boxed_opaque_existential_0(v122);
  if (v59)
  {
    (*(v108 + 8))(v121, v107);
  }

  if ((v59 & 2) != 0)
  {
    sub_1C5401ECC(v121 + updated[5]);
  }

  if ((v59 & 4) != 0)
  {
    sub_1C5401ECC(v121 + updated[6]);
  }

  if ((v59 & 8) != 0)
  {
    sub_1C5401ECC(v121 + updated[7]);
  }

  if ((v59 & 0x10) != 0)
  {
    sub_1C5401ECC(v121 + updated[8]);
  }

  if ((v59 & 0x20) != 0)
  {
    sub_1C5401ECC(v121 + updated[9]);
  }

  if ((v59 & 0x40) != 0)
  {
    sub_1C5401ECC(v121 + updated[10]);
  }

  sub_1C5373718(v121 + updated[12]);
  sub_1C5373718(v121 + updated[13]);
}

uint64_t sub_1C5432498(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1C5432504(double a1)
{
  v3 = qword_1EC15C390;
  if (!qword_1EC15C390)
  {
    gotLoadHelper_x8__OBJC_CLASS___SUManagerClient(a1);
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C390);
    return ObjCClassMetadata;
  }

  return v3;
}

unint64_t sub_1C54325B0(double a1)
{
  v3 = qword_1EC15C398;
  if (!qword_1EC15C398)
  {
    gotLoadHelper_x8__OBJC_CLASS___SUScanOptions(a1);
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C398);
    return ObjCClassMetadata;
  }

  return v3;
}

uint64_t sub_1C5432614(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(a2, a1);
  updated = type metadata accessor for SoftwareUpdateRowElement(0);
  v3 = (a1 + updated[5]);
  v13 = (a2 + updated[5]);
  *v13 = *v3;
  v14 = v3[1];
  sub_1C5594CF4();
  v13[1] = v14;
  v4 = updated[6];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1C5594CF4();
  *(v15 + 8) = v16;
  v5 = updated[7];
  v17 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v18 = *(a1 + v5 + 8);
  sub_1C5594CF4();
  *(v17 + 8) = v18;
  v6 = updated[8];
  v19 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v20 = *(a1 + v6 + 8);
  sub_1C5594CF4();
  *(v19 + 8) = v20;
  v7 = updated[9];
  v21 = a2 + v7;
  *(a2 + v7) = *(a1 + v7);
  v22 = *(a1 + v7 + 8);
  sub_1C5594CF4();
  *(v21 + 8) = v22;
  v8 = updated[10];
  v23 = a2 + v8;
  *(a2 + v8) = *(a1 + v8);
  v24 = *(a1 + v8 + 8);
  sub_1C5594CF4();
  *(v23 + 8) = v24;
  v9 = updated[11];
  v25 = a2 + v9;
  *(a2 + v9) = *(a1 + v9);
  v26 = *(a1 + v9 + 8);
  sub_1C5594CF4();
  *(v25 + 8) = v26;
  v10 = updated[12];
  v28 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v29 = *(a1 + v10 + 8);

  *(v28 + 8) = v29;
  v11 = updated[13];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  result = a2;
  *(v32 + 8) = v33;
  return result;
}

uint64_t sub_1C54328C8(uint64_t a1)
{
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for SoftwareUpdateRowElement(0);

  return a1;
}

uint64_t (*sub_1C5432A0C(uint64_t a1))(void *a1, void *a2)
{
  v6 = a1;
  v14 = sub_1C54345DC;
  v15 = 0;
  v7 = *(type metadata accessor for SoftwareUpdateRowElement(0) - 8);
  v9 = v7;
  v10 = *(v7 + 64);
  v8 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v1, v2, v3);
  v12 = &v6 - v8;
  v15 = v4;
  sub_1C5432614(v4, &v6 - v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1C54344D4(v12, v13 + v11);
  return v14;
}

uint64_t sub_1C5432B80(void *a1, void *a2)
{
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v51 = 0;
  v82 = a1;
  v81 = a2;
  MEMORY[0x1E69E5928](a1, a2);
  if (a1)
  {
    v51 = a1;
    v46 = sub_1C542DF48();
    v50 = [a1 preferredDescriptor];
    if (v50)
    {
      v44 = v50;
      MEMORY[0x1E69E5928](v50, v2);
      sub_1C5401EF8(&v50);
      v45 = humanReadableUpdateName_delayInitStub(v3);
      v4 = MEMORY[0x1E69E5920](v44);
      if (v45)
      {
        v40 = sub_1C5596574();
        v41 = v5;
        v4 = MEMORY[0x1E69E5920](v45);
        v42 = v40;
        v43 = v41;
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      v38 = v42;
      v39 = v43;
    }

    else
    {
      sub_1C5401EF8(&v50);
      v38 = 0;
      v39 = 0;
    }

    (*(*v46 + 208))(v38, v39, v4);

    v37 = sub_1C542DF48();
    (*(*v37 + 112))(1);

    MEMORY[0x1E69E5920](a1);
  }

  else
  {
    v6 = a2;
    if (a2)
    {
      v79 = a2;
      v7 = a2;
      v31 = sub_1C5594864();
      v78 = v31;

      v35 = [v31 domain];
      v32 = sub_1C5596574();
      v34 = v8;
      gotLoadHelper_x8__SUErrorDomain(v9);
      v33 = **(v10 + 2216);
      MEMORY[0x1E69E5928](v33, v11);
      v12 = sub_1C5596574();
      v36 = MEMORY[0x1C69471A0](v32, v34, v12);

      MEMORY[0x1E69E5920](v33);

      *&v13 = MEMORY[0x1E69E5920](v35).n128_u64[0];
      if (v36)
      {
        [v31 code];
        sub_1C5418E3C();
        v29 = v14;
        v30 = v15;
        v76 = v14;
        v77 = v15 & 1;
        v72 = v14;
        v73 = v15 & 1;
        v74 = 3;
        v75 = 0;
        if (v15)
        {
          v28 = 0;
        }

        else
        {
          v54 = v14;
          v55 = v15 & 1;
          v53 = v14;
          v52 = v74;
          type metadata accessor for SUErrorCode(0);
          sub_1C5433510();
          v28 = sub_1C55964D4();
        }

        if (v28)
        {
          v27 = 1;
        }

        else
        {
          v68 = v29;
          v69 = v30 & 1;
          v70 = 63;
          v71 = 0;
          if (v30)
          {
            v26 = 0;
          }

          else
          {
            v58 = v29;
            v59 = v30 & 1;
            v57 = v29;
            v56 = v70;
            type metadata accessor for SUErrorCode(0);
            sub_1C5433510();
            v26 = sub_1C55964D4();
          }

          v27 = v26;
        }

        if (v27)
        {
          v25 = 1;
        }

        else
        {
          v64 = v29;
          v65 = v30 & 1;
          v66 = 55;
          v67 = 0;
          if (v30)
          {
            v24 = 0;
          }

          else
          {
            v62 = v29;
            v63 = v30 & 1;
            v61 = v29;
            v60 = v66;
            type metadata accessor for SUErrorCode(0);
            sub_1C5433510();
            v24 = sub_1C55964D4();
          }

          v25 = v24;
        }

        if (v25)
        {
          v23 = sub_1C542DF48();
          (*(*v23 + 112))(0);
        }
      }

      else
      {
        v19 = sub_1C542DF48();
        (*(*v19 + 112))(1);

        v22 = sub_1C542DF48();
        v16 = (v48 + *(type metadata accessor for SoftwareUpdateRowElement(0) + 28));
        v20 = *v16;
        v21 = v16[1];
        sub_1C5594CF4();
        (*(*v22 + 208))(v20, v21);
      }

      MEMORY[0x1E69E5920](v31);
    }
  }

  v18 = sub_1C542DF48();
  (*(*v18 + 160))(0);
}

uint64_t sub_1C5433348(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2, v3);
  v5 = MEMORY[0x1E69E5928](a3, v4);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  v8(a2, v5);

  MEMORY[0x1E69E5920](a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for SUErrorCode(uint64_t a1)
{
  v5 = qword_1EC15C400;
  if (!qword_1EC15C400)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C400);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5433510()
{
  v2 = qword_1EC15C3A0;
  if (!qword_1EC15C3A0)
  {
    type metadata accessor for SUErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54335FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C542DC14();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1C5433644()
{
  v2 = qword_1EC15C3A8;
  if (!qword_1EC15C3A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54336D8()
{
  v2 = qword_1EC15C3B0;
  if (!qword_1EC15C3B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543376C()
{
  v2 = qword_1EC15C3B8;
  if (!qword_1EC15C3B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5433834()
{
  v2 = qword_1EC15C3C0;
  if (!qword_1EC15C3C0)
  {
    type metadata accessor for SoftwareUpdateRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54338CC()
{
  v2 = qword_1EC15C3C8;
  if (!qword_1EC15C3C8)
  {
    type metadata accessor for SoftwareUpdateRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5433964()
{
  v2 = qword_1EC15C3D0;
  if (!qword_1EC15C3D0)
  {
    type metadata accessor for SoftwareUpdateRowElement(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5433A0C(uint64_t a1)
{
  updated = sub_1C5433B4C(319);
  if (v1 <= 0x3F)
  {
    updated = sub_1C5433BE0(319);
    if (v2 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

unint64_t sub_1C5433B4C(uint64_t a1)
{
  v5 = qword_1EC15C3D8;
  if (!qword_1EC15C3D8)
  {
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C3D8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5433BE0(uint64_t a1)
{
  v5 = qword_1EC15C3E0;
  if (!qword_1EC15C3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C1F0, &qword_1C55AE570);
    v4 = sub_1C5594EA4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C3E0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5433CD4(uint64_t a1)
{
  v6 = sub_1C5596384();
  if (v1 <= 0x3F)
  {
    v6 = sub_1C5433E58(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1C5433EEC(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_1C5433F94(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1C5433E58(uint64_t a1)
{
  v5 = qword_1EC15C3E8;
  if (!qword_1EC15C3E8)
  {
    v4 = sub_1C5596A94();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C3E8);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5433EEC(uint64_t a1)
{
  v5 = qword_1EC15C3F0;
  if (!qword_1EC15C3F0)
  {
    type metadata accessor for SoftwareUpdateProgress(255);
    sub_1C542DEC8();
    v4 = sub_1C55951B4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C3F0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C5433F94(uint64_t a1)
{
  v5 = qword_1EC15C3F8;
  if (!qword_1EC15C3F8)
  {
    v4 = sub_1C5595FB4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C3F8);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1C5434034(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C543419C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

id sub_1C54343BC(uint64_t a1)
{
  v3 = [v1 initWithDelegate_clientType_];
  swift_unknownObjectRelease();
  return v3;
}

unint64_t sub_1C5434454()
{
  v2 = qword_1EC15C408;
  if (!qword_1EC15C408)
  {
    type metadata accessor for SUErrorCode(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C408);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_1C54344D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 32))(a2, a1);
  updated = type metadata accessor for SoftwareUpdateRowElement(0);
  *(a2 + updated[5]) = *(a1 + updated[5]);
  *(a2 + updated[6]) = *(a1 + updated[6]);
  *(a2 + updated[7]) = *(a1 + updated[7]);
  *(a2 + updated[8]) = *(a1 + updated[8]);
  *(a2 + updated[9]) = *(a1 + updated[9]);
  *(a2 + updated[10]) = *(a1 + updated[10]);
  *(a2 + updated[11]) = *(a1 + updated[11]);
  *(a2 + updated[12]) = *(a1 + updated[12]);
  result = *(a1 + updated[13]);
  *(a2 + updated[13]) = result;
  return result;
}

uint64_t sub_1C54345DC(void *a1, void *a2)
{
  type metadata accessor for SoftwareUpdateRowElement(0);

  return sub_1C5432B38(a1, a2);
}

void *sub_1C543465C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350, &qword_1C55AFAD0);
  if (!swift_getEnumCaseMultiPayload())
  {

    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0) + 36);

    v4 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28)];
    v1 = sub_1C5595F34();
    (*(*(v1 - 8) + 8))(v4);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0) + 48);
    sub_1C5412EA0(*(v5 + 3), *(v5 + 4), v5[40] & 1);

    if (*(v5 + 10))
    {
      sub_1C5412EA0(*(v5 + 7), *(v5 + 8), v5[72] & 1);
    }
  }

  return a1;
}

void *sub_1C54347C8(uint64_t *a1, void *a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350, &qword_1C55AFAD0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v28 - 8) + 64));
  }

  else
  {
    v12 = *a1;

    *a2 = v12;
    v13 = a1[1];

    a2[1] = v13;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0);
    v15 = (a2 + *(v2 + 36));
    v16 = (a1 + *(v2 + 36));
    v14 = *v16;

    *v15 = v14;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
    v18 = v15 + *(v3 + 28);
    v17 = v16 + *(v3 + 28);
    v4 = sub_1C5595F34();
    (*(*(v4 - 8) + 16))(v18, v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0);
    v23 = a2 + *(v19 + 48);
    v25 = a1 + *(v19 + 48);
    *v23 = *v25;
    v23[16] = v25[16];
    v20 = *(v25 + 3);
    v21 = *(v25 + 4);
    v22 = v25[40];
    sub_1C54130AC(v20, v21, v22 & 1);
    *(v23 + 3) = v20;
    *(v23 + 4) = v21;
    v23[40] = v22 & 1;
    v24 = *(v25 + 6);
    sub_1C5594CF4();
    *(v23 + 6) = v24;
    if (*(v25 + 10))
    {
      v8 = *(v25 + 7);
      v9 = *(v25 + 8);
      v10 = v25[72];
      sub_1C54130AC(v8, v9, v10 & 1);
      *(v23 + 7) = v8;
      *(v23 + 8) = v9;
      v23[72] = v10 & 1;
      v11 = *(v25 + 10);
      sub_1C5594CF4();
      *(v23 + 10) = v11;
    }

    else
    {
      *(v23 + 56) = *(v25 + 56);
      *(v23 + 72) = *(v25 + 72);
    }

    v5 = *(v19 + 64);
    v6 = a2 + v5;
    *v6 = *(a1 + v5);
    v6[8] = *(a1 + v5 + 8);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

_OWORD *sub_1C5434AB8(_OWORD *a1, _OWORD *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340, &qword_1C55AE698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350, &qword_1C55AFAD0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v19 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0);
      v14 = (a2 + *(v8 + 36));
      v15 = (a1 + *(v8 + 36));
      *v14 = *v15;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
      v17 = v14 + *(v9 + 28);
      v16 = v15 + *(v9 + 28);
      v10 = sub_1C5595F34();
      (*(*(v10 - 8) + 32))(v17, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0);
      memcpy(a2 + *(v18 + 48), a1 + *(v18 + 48), 0x58uLL);
      v11 = a2 + *(v18 + 64);
      v12 = a1 + *(v18 + 64);
      *v11 = *v12;
      v11[8] = v12[8];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680);
    v20 = (a2 + *(v3 + 36));
    v21 = (a1 + *(v3 + 36));
    *v20 = *v21;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688);
    v23 = v20 + *(v4 + 28);
    v22 = v21 + *(v4 + 28);
    v5 = sub_1C5594FC4();
    (*(*(v5 - 8) + 32))(v23, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348, &unk_1C55AE6A0);
    memcpy(a2 + *(v24 + 48), a1 + *(v24 + 48), 0x58uLL);
    v6 = *(v24 + 64);
    v7 = a2 + v6;
    *v7 = *(a1 + v6);
    v7[8] = *(a1 + v6 + 8);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_1C5434E2C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340, &qword_1C55AE698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350, &qword_1C55AFAD0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v32 - 8) + 64));
    }

    else
    {
      v18 = *a1;

      *a2 = v18;
      v19 = a1[1];

      a2[1] = v19;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0);
      v21 = (a2 + *(v8 + 36));
      v22 = (a1 + *(v8 + 36));
      v20 = *v22;

      *v21 = v20;
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50);
      v24 = v21 + *(v9 + 28);
      v23 = v22 + *(v9 + 28);
      v10 = sub_1C5595F34();
      (*(*(v10 - 8) + 16))(v24, v23);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0);
      v29 = a2 + *(v25 + 48);
      v31 = a1 + *(v25 + 48);
      *v29 = *v31;
      v29[16] = v31[16];
      v26 = *(v31 + 3);
      v27 = *(v31 + 4);
      v28 = v31[40];
      sub_1C54130AC(v26, v27, v28 & 1);
      *(v29 + 3) = v26;
      *(v29 + 4) = v27;
      v29[40] = v28 & 1;
      v30 = *(v31 + 6);
      sub_1C5594CF4();
      *(v29 + 6) = v30;
      if (*(v31 + 10))
      {
        v14 = *(v31 + 7);
        v15 = *(v31 + 8);
        v16 = v31[72];
        sub_1C54130AC(v14, v15, v16 & 1);
        *(v29 + 7) = v14;
        *(v29 + 8) = v15;
        v29[72] = v16 & 1;
        v17 = *(v31 + 10);
        sub_1C5594CF4();
        *(v29 + 10) = v17;
      }

      else
      {
        *(v29 + 56) = *(v31 + 56);
        *(v29 + 72) = *(v31 + 72);
      }

      v11 = a2 + *(v25 + 64);
      v12 = a1 + *(v25 + 64);
      *v11 = *v12;
      v11[8] = v12[8];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680);
    v42 = (a2 + *(v3 + 36));
    v43 = (a1 + *(v3 + 36));
    v41 = *v43;

    *v42 = v41;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688);
    v45 = v42 + *(v4 + 28);
    v44 = v43 + *(v4 + 28);
    v5 = sub_1C5594FC4();
    (*(*(v5 - 8) + 16))(v45, v44);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348, &unk_1C55AE6A0);
    v47 = a2 + *(v46 + 48);
    v48 = a1 + *(v46 + 48);
    *v47 = *v48;
    v47[16] = v48[16];
    if (*(v48 + 6))
    {
      v37 = *(v48 + 3);
      v38 = *(v48 + 4);
      v39 = v48[40];
      sub_1C54130AC(v37, v38, v39 & 1);
      *(v47 + 3) = v37;
      *(v47 + 4) = v38;
      v47[40] = v39 & 1;
      v40 = *(v48 + 6);
      sub_1C5594CF4();
      *(v47 + 6) = v40;
    }

    else
    {
      *(v47 + 24) = *(v48 + 24);
      *(v47 + 40) = *(v48 + 40);
    }

    if (*(v48 + 10))
    {
      v33 = *(v48 + 7);
      v34 = *(v48 + 8);
      v35 = v48[72];
      sub_1C54130AC(v33, v34, v35 & 1);
      *(v47 + 7) = v33;
      *(v47 + 8) = v34;
      v47[72] = v35 & 1;
      v36 = *(v48 + 10);
      sub_1C5594CF4();
      *(v47 + 10) = v36;
    }

    else
    {
      *(v47 + 56) = *(v48 + 56);
      *(v47 + 72) = *(v48 + 72);
    }

    v6 = *(v46 + 64);
    v7 = a2 + v6;
    *v7 = *(a1 + v6);
    v7[8] = *(a1 + v6 + 8);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

void *sub_1C5435418(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340, &qword_1C55AE698);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350, &qword_1C55AFAD0);
    if (!swift_getEnumCaseMultiPayload())
    {

      v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358, &unk_1C55AE6B0) + 36);

      v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360, &qword_1C55B0E50) + 28)];
      v3 = sub_1C5595F34();
      (*(*(v3 - 8) + 8))(v6);
      v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368, &qword_1C55AE6C0) + 48);
      sub_1C5412EA0(*(v7 + 3), *(v7 + 4), v7[40] & 1);

      if (*(v7 + 10))
      {
        sub_1C5412EA0(*(v7 + 7), *(v7 + 8), v7[72] & 1);
      }
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
    (*(*(v1 - 8) + 8))(a1);
    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);

    v9 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28)];
    v2 = sub_1C5594FC4();
    (*(*(v2 - 8) + 8))(v9);
    v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348, &unk_1C55AE6A0) + 48);
    if (*(v10 + 6))
    {
      sub_1C5412EA0(*(v10 + 3), *(v10 + 4), v10[40] & 1);
    }

    if (*(v10 + 10))
    {
      sub_1C5412EA0(*(v10 + 7), *(v10 + 8), v10[72] & 1);
    }
  }

  return a1;
}

unint64_t sub_1C5435714()
{
  v2 = qword_1EC15C410;
  if (!qword_1EC15C410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C320, &qword_1C55AE678);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C410);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543579C()
{
  v2 = qword_1EC15C418;
  if (!qword_1EC15C418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C328, &qword_1C55AE680);
    sub_1C5435714();
    sub_1C5435844();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5435844()
{
  v2 = qword_1EC15C420;
  if (!qword_1EC15C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C330, &qword_1C55AE688);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C420);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54358CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

unint64_t sub_1C54359C8()
{
  v2 = qword_1EC15C430;
  if (!qword_1EC15C430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C428, &qword_1C55AEA38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5435A50()
{
  v2 = qword_1EC15C440;
  if (!qword_1EC15C440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C438, &unk_1C55AEA40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C440);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5435AD8(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);
  }

  if (*(a1 + 80))
  {
    sub_1C5412EA0(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);
  }

  return a1;
}

uint64_t sub_1C5435B68(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);
  v7 = *(a1 + v6);

  *(a2 + v6) = v7;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v3 = sub_1C5594FC4();
  (*(*(v3 - 8) + 16))(a2 + v6 + v8, a1 + v6 + v8);
  return a2;
}

uint64_t sub_1C5435C9C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  if (*(a1 + 48))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    sub_1C54130AC(v7, v8, v9 & 1);
    *(a2 + 24) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v9 & 1;
    v10 = *(a1 + 48);
    sub_1C5594CF4();
    *(a2 + 48) = v10;
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  if (*(a1 + 80))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
    sub_1C54130AC(v3, v4, v5 & 1);
    *(a2 + 56) = v3;
    *(a2 + 64) = v4;
    *(a2 + 72) = v5 & 1;
    v6 = *(a1 + 80);
    sub_1C5594CF4();
    *(a2 + 80) = v6;
  }

  else
  {
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 72) = *(a1 + 72);
  }

  return a2;
}

uint64_t sub_1C5435DF8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  (*(*(v2 - 8) + 16))(a2, a1);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);
  v22 = *(a1 + v21);

  *(a2 + v21) = v22;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v3 = sub_1C5594FC4();
  (*(*(v3 - 8) + 16))(a2 + v21 + v23, a1 + v21 + v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348, &unk_1C55AE6A0);
  v27 = *(v26 + 48);
  v4 = a2 + v27;
  *v4 = *(a1 + v27);
  *(v4 + 16) = *(a1 + v27 + 16);
  if (*(a1 + v27 + 48))
  {
    v16 = *(a1 + v27 + 24);
    v17 = *(a1 + v27 + 32);
    v18 = *(a1 + v27 + 40);
    sub_1C54130AC(v16, v17, v18 & 1);
    v19 = a2 + v27;
    *(v19 + 24) = v16;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18 & 1;
    v20 = *(a1 + v27 + 48);
    sub_1C5594CF4();
    *(v19 + 48) = v20;
  }

  else
  {
    v5 = a2 + v27;
    *(v5 + 24) = *(a1 + v27 + 24);
    *(v5 + 40) = *(a1 + v27 + 40);
  }

  v14 = a2 + v27;
  v15 = a1 + v27;
  if (*(a1 + v27 + 80))
  {
    v9 = *(v15 + 56);
    v10 = *(a1 + v27 + 64);
    v11 = *(a1 + v27 + 72);
    sub_1C54130AC(v9, v10, v11 & 1);
    *(v14 + 56) = v9;
    v12 = a2 + v27;
    *(v12 + 64) = v10;
    *(v12 + 72) = v11 & 1;
    v13 = *(a1 + v27 + 80);
    sub_1C5594CF4();
    *(v12 + 80) = v13;
  }

  else
  {
    *(v14 + 56) = *(v15 + 56);
    *(a2 + v27 + 72) = *(a1 + v27 + 72);
  }

  result = a2;
  v7 = a2 + *(v26 + 64);
  v8 = a1 + *(v26 + 64);
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  return result;
}

uint64_t sub_1C5436140(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v4 + v5);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348, &unk_1C55AE6A0) + 48);
  if (*(a1 + v7 + 48))
  {
    sub_1C5412EA0(*(a1 + v7 + 24), *(a1 + v7 + 32), *(a1 + v7 + 40) & 1);
  }

  if (*(a1 + v7 + 80))
  {
    sub_1C5412EA0(*(a1 + v7 + 56), *(a1 + v7 + 64), *(a1 + v7 + 72) & 1);
  }

  return a1;
}

uint64_t sub_1C54362F0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318, &qword_1C55AE670);
  v8 = *(v14 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  (*(*(v2 - 8) + 16))();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);
  v13 = (a1 + v8 + v9);
  v10 = *v13;

  v11 = (a2 + v8 + v9);
  *v11 = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v3 = sub_1C5594FC4();
  (*(*(v3 - 8) + 16))(&v11[v12], &v13[v12]);
  result = a2;
  v5 = *(v14 + 64);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *v7 = *v6;
  *(v7 + 8) = *(v6 + 8);
  return result;
}

uint64_t sub_1C543649C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318, &qword_1C55AE670) + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320, &qword_1C55AE678);
  (*(*(v1 - 8) + 8))();
  v5 = a1 + v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328, &qword_1C55AE680) + 36);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330, &qword_1C55AE688) + 28);
  v2 = sub_1C5594FC4();
  (*(*(v2 - 8) + 8))(v5 + v6);
  return a1;
}

uint64_t sub_1C54365B4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C54130AC(result, a2, a3 & 1);
    return sub_1C5594CF4();
  }

  return result;
}

unint64_t sub_1C5436610()
{
  v2 = qword_1EC159FE0;
  if (!qword_1EC159FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C448, &qword_1C55AFCB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC159FE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54366A4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

void *sub_1C54366FC@<X0>(uint64_t a1@<X8>)
{
  v8 = a1;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, v1, v2, v3);
  v10 = (&v6 - v7);
  v11 = v4;
  sub_1C54367BC(v4, (&v6 - v7));
  sub_1C5595004();
  return sub_1C5436890(v10);
}

void *sub_1C54367BC(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_1C5436890(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C5436960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v10 = a1;
  v8[1] = 0;
  v16 = sub_1C5595104();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v9 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v15 = v8 - v9;
  v19 = sub_1C5595324();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v11 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v19, v10, v19, v5);
  v20 = v8 - v11;
  (*(v17 + 16))(v8 - v11, v6);
  sub_1C5595314();
  (*(v12 + 32))(v14, v15, v16);
  return (*(v17 + 8))(v20, v19);
}

void *sub_1C5436B10(void *a1)
{
  v8 = a1;
  v6[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830, &unk_1C55AEA50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v1, v2, v3);
  v7 = (v6 - v6[0]);
  sub_1C54367BC(v4, (v6 - v6[0]));
  sub_1C5436BB4(v7, v6[1]);
  return sub_1C5436890(v8);
}

void *sub_1C5436BB4(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1C5436890(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1C5595104();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_1C5436CA0()
{
  v3 = *(v0 + *(type metadata accessor for SharedNameView(0) + 20));
  MEMORY[0x1E69E5928](v3, v1);
  return v3;
}

uint64_t type metadata accessor for SharedNameView(uint64_t a1)
{
  v2 = qword_1EC160B10;
  if (!qword_1EC160B10)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C5436D54(uint64_t a1)
{

  type metadata accessor for NameAndPhotoSharingViewModel(0);
  sub_1C5595F74();

  return v2;
}

uint64_t sub_1C5436DCC()
{
  type metadata accessor for SharedNameView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C5436E70(uint64_t a1)
{
  v6[2] = 0;
  v6[3] = a1;
  v2 = (v1 + *(type metadata accessor for SharedNameView(0) + 24));
  v4 = *v2;
  v5 = v2[1];

  v6[0] = v4;
  v6[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F94();
  sub_1C5436F54(v6);
}

uint64_t (*sub_1C5436F8C(void *a1))()
{
  v1 = __swift_coroFrameAllocStub(0x60uLL, 32843);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SharedNameView(0) + 24));
  v5 = *v2;
  v1[9] = *v2;
  v6 = v2[1];
  v1[10] = v6;

  *v1 = v5;
  v1[1] = v6;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();
  return sub_1C5437078;
}

void sub_1C5437078(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[10];
    v3 = v8[9];
    v2 = v8[6];

    v8[2] = v3;
    v8[3] = v4;
    v8[7] = v2;
    sub_1C5595F94();
    sub_1C5436F54(v8 + 2);
  }

  else
  {
    v7 = v8[10];
    v6 = v8[9];
    v5 = v8[6];

    v8[4] = v6;
    v8[5] = v7;
    v8[8] = v5;
    sub_1C5595F94();
    sub_1C5436F54(v8 + 4);
  }

  free(v8);
}

uint64_t sub_1C54371C0()
{
  type metadata accessor for SharedNameView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C543727C()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameView(0) + 24));

  return v2;
}

uint64_t sub_1C54372CC(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SharedNameView(0) + 24));
  *v3 = a1;
  v3[1] = a2;
}

void *sub_1C5437344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v21 = a1;
  v20 = a2;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v17 = type metadata accessor for SharedNameView(0);
  v16 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v15[1], v3, v4);
  v22 = (v15 - v16);
  v25 = v15 - v16;
  v24 = v5;
  v23 = v6;
  swift_getKeyPath();
  sub_1C5595024();
  MEMORY[0x1E69E5928](v20, v7);
  *(v22 + *(v17 + 20)) = v20;

  v18 = *(v17 + 24);
  v8 = sub_1C5436D54(v21);
  v9 = v22;
  v11 = v10;
  v12 = v19;
  v13 = (v22 + v18);
  *v13 = v8;
  v13[1] = v11;
  sub_1C5437488(v9, v12);
  MEMORY[0x1E69E5920](v20);

  return sub_1C54375F0(v22);
}

void *sub_1C5437488(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v12 = *a1;

    *a2 = v12;
  }

  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for SharedNameView(0);
  v5 = *(v7 + 20);
  v6 = *(a1 + v5);
  MEMORY[0x1E69E5928](v6, v3);
  *(a2 + v5) = v6;
  v10 = (a2 + *(v7 + 24));
  v9 = (a1 + *(v7 + 24));
  v8 = *v9;

  *v10 = v8;
  v11 = v9[1];

  result = a2;
  v10[1] = v11;
  return result;
}

void *sub_1C54375F0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for SharedNameView(0);
  MEMORY[0x1E69E5920](*(a1 + *(v3 + 20)));

  return a1;
}

uint64_t sub_1C54376D8@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v47 = sub_1C5438A78;
  v52 = sub_1C5439284;
  v74 = MEMORY[0x1E697CFD8];
  v85 = MEMORY[0x1E697D448];
  v87 = MEMORY[0x1E697C790];
  v89 = sub_1C5439BF8;
  v97 = MEMORY[0x1E697D5A0];
  v126 = 0;
  v125 = 0;
  v59 = 0;
  v78 = sub_1C5595334();
  v75 = *(v78 - 8);
  v76 = v78 - 8;
  v35 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v1, v2, v3);
  v77 = &v34 - v35;
  v5 = type metadata accessor for SharedNameView(v4);
  v36 = *(v5 - 8);
  v48 = v36;
  v49 = *(v36 + 64);
  v37 = (v49 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5, v6, v7, v8);
  v51 = &v34 - v37;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C450, &qword_1C55AEA98);
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v38 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v57, v9, v10, v11);
  v56 = &v34 - v38;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C458, &qword_1C55AEAA0);
  v39 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70, v12, v13, v14);
  v69 = &v34 - v39;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C460, &qword_1C55AEAA8);
  v79 = *(v83 - 8);
  v80 = v83 - 8;
  v40 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83, v15, v16, v17);
  v81 = &v34 - v40;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C468, &qword_1C55AEAB0);
  v90 = *(v93 - 8);
  v91 = v93 - 8;
  v41 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93, v18, v19, v20);
  v92 = &v34 - v41;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C470, &qword_1C55AEAB8);
  v99 = *(v105 - 8);
  v100 = v105 - 8;
  v43 = *(v99 + 64);
  v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105, v21, v22, v23);
  v103 = &v34 - v42;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v42, v24, v25, v26);
  v104 = &v34 - v44;
  v126 = &v34 - v44;
  v125 = v27;
  v45 = &v110;
  v111 = v27;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C478, &qword_1C55AEAC0);
  sub_1C5438A80();
  sub_1C5595964();
  sub_1C5437488(v82, v51);
  v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v53 = swift_allocObject();
  sub_1C5439180(v51, (v53 + v50));
  sub_1C54392E8();
  sub_1C5595DC4();
  sub_1C5411348(v52, v53);
  (*(v54 + 8))(v56, v57);
  v58 = 1;
  v61 = sub_1C55965F4("Shared Name", 11, 1);
  v65 = v28;
  sub_1C5439370();
  v64 = sub_1C5576C44();
  v60 = sub_1C55965F4("Navigation title for shared name view", 37, v58 & 1);
  v63 = v29;
  sub_1C54398B0();
  v62 = v30;
  v66 = sub_1C55947B4();
  v67 = v31;

  MEMORY[0x1E69E5920](v64);

  v68 = v124;
  v124[0] = v66;
  v124[1] = v67;
  v72 = sub_1C54398DC();
  v73 = sub_1C54141E8();
  v71 = MEMORY[0x1E69E6158];
  sub_1C5595BC4();
  sub_1C5401ECC(v68);
  sub_1C535C7AC(v69);
  (*(v75 + 104))(v77, *MEMORY[0x1E697C438], v78);
  v120 = v70;
  v121 = v71;
  v122 = v72;
  v123 = v73;
  v98 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5595CC4();
  (*(v75 + 8))(v77, v78);
  (*(v79 + 8))(v81, v83);
  v88 = &v108;
  v109 = v82;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C498, &qword_1C55AEAC8);
  v118 = v83;
  v119 = OpaqueTypeConformance2;
  v95 = swift_getOpaqueTypeConformance2();
  v86 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4A0, &qword_1C55AEAD0);
  v32 = sub_1C5439C00();
  v116 = v86;
  v117 = v32;
  v96 = swift_getOpaqueTypeConformance2();
  sub_1C5595D94();
  (*(v90 + 8))(v92, v93);
  v112 = v93;
  v113 = v94;
  v114 = v95;
  v115 = v96;
  v102 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v103, v105, v104);
  v107 = *(v99 + 8);
  v106 = v99 + 8;
  v107(v103, v105);
  (*(v99 + 16))(v103, v104, v105);
  sub_1C540EFD8(v103, v105, v101);
  v107(v103, v105);
  return (v107)(v104, v105);
}

uint64_t sub_1C5438288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v63 = a1;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v76 = 0;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0, &qword_1C55AEB08);
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44, v3, v4, v5);
  v48 = &v34 - v47;
  v49 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v47, v7, v8, v9);
  v50 = &v34 - v49;
  v51 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v49, v11, v12, v13);
  v52 = &v34 - v51;
  v85 = &v34 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C620, qword_1C55AEEA8);
  v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53, v14, v15, v16);
  v55 = &v34 - v54;
  v56 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v54, v18, v19, v20);
  v57 = &v34 - v56;
  v58 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v34 - v56, v22, v23, v24);
  v59 = &v34 - v58;
  v84 = &v34 - v58;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B0, &qword_1C55AEAD8);
  v66 = *(v69 - 8);
  v67 = v69 - 8;
  v61 = *(v66 + 64);
  v60 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69, v25, v26, v27);
  v68 = &v34 - v60;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
  v64 = &v34 - v62;
  v83 = &v34 - v62;
  v82 = a1;
  sub_1C5438B08(v32);
  v65 = sub_1C543B644();
  sub_1C540EFD8(v68, v69, v64);
  v70 = *(v66 + 8);
  v71 = v66 + 8;
  v70(v68, v69);
  v72 = sub_1C5436DCC();
  v73 = (*(*v72 + 488))(v72);

  v75 = &v81;
  v81 = v73 & 1;
  v74 = &v80;
  v80 = 1;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    sub_1C5438D58(v50);
    v40 = sub_1C543BFB4();
    sub_1C540EFD8(v50, v44, v52);
    v41 = *(v45 + 8);
    v42 = v45 + 8;
    v41(v50, v44);
    v76 = v50;
    v39 = *(v45 + 16);
    v38 = v45 + 16;
    v39(v48, v52, v44);
    sub_1C540EFD8(v48, v44, v50);
    v41(v48, v44);
    v39(v55, v50, v44);
    (*(v45 + 56))(v55, 0, 1, v44);
    sub_1C540F554(v55, v44, v57);
    sub_1C543FD84(v55);
    sub_1C543FE38(v57, v59);
    v41(v50, v44);
    v41(v52, v44);
  }

  else
  {
    (*(v45 + 56))(v55, 1, 1, v44);
    sub_1C543BFB4();
    sub_1C540F554(v55, v44, v57);
    sub_1C543FD84(v55);
    sub_1C543FE38(v57, v59);
  }

  (*(v66 + 16))(v68, v64, v69);
  v37 = v79;
  v79[0] = v68;
  sub_1C543FF6C(v59, v57);
  v79[1] = v57;
  v35 = v78;
  v78[0] = v69;
  v78[1] = v53;
  v36 = v77;
  v77[0] = v65;
  v77[1] = sub_1C54400A0();
  sub_1C540F5A0(v37, 2uLL, v35, v36, v43);
  sub_1C543FD84(v57);
  v70(v68, v69);
  sub_1C543FD84(v59);
  return (v70)(v64, v69);
}

unint64_t sub_1C5438A80()
{
  v2 = qword_1EC15C480;
  if (!qword_1EC15C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C478, &qword_1C55AEAC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C480);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5438B08@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v19 = sub_1C543A3D0;
  v14 = sub_1C543B35C;
  v34 = 0;
  v33 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B0, &qword_1C55AEAD8);
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v11 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26, v2, v3, v4);
  v24 = &v11 - v11;
  v12 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v11, v6, v7, v8);
  v25 = &v11 - v12;
  v34 = &v11 - v12;
  v33 = v1;
  v13 = &v31;
  v32 = v1;
  v15 = &v29;
  v30 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B8, &unk_1C55AEAE0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
  v18 = sub_1C543B42C();
  v9 = sub_1C5436610();
  sub_1C543B364(v19, v13, v14, v15, v16, v17, v18, v9, v24);
  v23 = sub_1C543B644();
  sub_1C540EFD8(v24, v26, v25);
  v28 = *(v20 + 8);
  v27 = v20 + 8;
  v28(v24, v26);
  (*(v20 + 16))(v24, v25, v26);
  sub_1C540EFD8(v24, v26, v22);
  v28(v24, v26);
  return (v28)(v25, v26);
}

uint64_t sub_1C5438D58@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v14 = sub_1C543BE84;
  v27 = 0;
  v26 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0, &qword_1C55AEB08);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v2, v3, v4);
  v19 = &v10 - v10;
  v11 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v10 - v10, v6, v7, v8);
  v20 = &v10 - v11;
  v27 = &v10 - v11;
  v26 = v1;
  v12 = &v24;
  v25 = v1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F8, &qword_1C55AEB10);
  sub_1C543BE8C();
  sub_1C5596164();
  v18 = sub_1C543BFB4();
  sub_1C540EFD8(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1C540EFD8(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_1C5438F54(uint64_t *a1)
{
  v20 = a1;
  v24 = MEMORY[0x1E69E85E0];
  v29 = &unk_1C55AEEA0;
  v31 = 0;
  v27 = 0;
  v1 = type metadata accessor for SharedNameView(0);
  v17 = *(v1 - 8);
  v21 = v17;
  v22 = *(v17 + 64);
  v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v26 = &v16 - v18;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v5, v6, v7);
  v28 = &v16 - v19;
  v31 = v8;
  v9 = sub_1C5596814();
  (*(*(v9 - 8) + 56))(v28, 1);
  sub_1C5437488(v20, v26);
  sub_1C55967E4();
  v23 = sub_1C55967D4();
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v10 = swift_allocObject();
  v11 = v24;
  v12 = v25;
  v13 = v10;
  v14 = v26;
  v30 = v13;
  *(v13 + 16) = v23;
  *(v13 + 24) = v11;
  sub_1C5439180(v14, (v13 + v12));
  sub_1C54061EC(v27, v27, v28, v29, v30, MEMORY[0x1E69E7CA8] + 8);
}

__n128 sub_1C5439180(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8, qword_1C55AE480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5595104();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for SharedNameView(0);
  *&a2[*(v3 + 20)] = *&a1[*(v3 + 20)];
  result = *&a1[*(v3 + 24)];
  *&a2[*(v3 + 24)] = result;
  return result;
}

uint64_t sub_1C5439284()
{
  v1 = *(type metadata accessor for SharedNameView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C5438F54(v2);
}

unint64_t sub_1C54392E8()
{
  v2 = qword_1EC15C488;
  if (!qword_1EC15C488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C450, &qword_1C55AEA98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5439370()
{
  v2 = qword_1EC15E200;
  if (!qword_1EC15E200)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E200);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54393D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_1C55967E4();
  v4[5] = sub_1C55967D4();
  v4[6] = sub_1C55967A4();
  v4[7] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5439490);
}

uint64_t sub_1C5439490()
{
  v6 = v0[4];
  v0[2] = v0;
  v1 = sub_1C5436DCC();
  v0[8] = v1;
  v2 = type metadata accessor for SharedNameView(0);
  v0[9] = v2;
  v9 = *(v6 + *(v2 + 20));
  v0[10] = v9;
  MEMORY[0x1E69E5928](v9, v3);
  v8 = (*(*v1 + 560) + **(*v1 + 560));
  v4 = swift_task_alloc();
  *(v7 + 88) = v4;
  *v4 = *(v7 + 16);
  v4[1] = sub_1C5439614;

  return v8(v9);
}

uint64_t sub_1C5439614()
{
  v2 = *(*v0 + 80);
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5439794);
}

uint64_t sub_1C5439794()
{
  v5 = v0[9];
  v6 = v0[4];
  v0[2] = v0;
  v8 = sub_1C5436DCC();
  v7 = *(v6 + *(v5 + 20));
  v2 = MEMORY[0x1E69E5928](v7, v1);
  (*(*v8 + 608))(v7, v2);
  MEMORY[0x1E69E5920](v7);

  v3 = *(v0[2] + 8);

  return v3();
}

unint64_t sub_1C54398DC()
{
  v2 = qword_1EC15C490;
  if (!qword_1EC15C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C458, &qword_1C55AEAA0);
    sub_1C54392E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C490);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5439980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v18 = a1;
  v19 = sub_1C543FC68;
  v35 = 0;
  v34 = 0;
  v3 = sub_1C5595544();
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v22 = &v14 - v14;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4A0, &qword_1C55AEAD0);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v16 = *(v23 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29, v7, v8, v9);
  v27 = &v14 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v14 - v15, v10, v11, v12);
  v28 = &v14 - v17;
  v35 = &v14 - v17;
  v34 = a1;
  sub_1C5439C88();
  v20 = &v32;
  v33 = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560, &qword_1C55AED80);
  sub_1C543DAE4();
  sub_1C55950A4();
  v26 = sub_1C5439C00();
  sub_1C540EFD8(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  MEMORY[0x1C6946140](v27, v29, v26);
  v31(v27, v29);
  return (v31)(v28, v29);
}

unint64_t sub_1C5439C00()
{
  v2 = qword_1EC15C4A8;
  if (!qword_1EC15C4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4A0, &qword_1C55AEAD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5439CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v25 = 0;
  v24 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560, &qword_1C55AED80);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v13 = *(v15 + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v3, v4, v5);
  v19 = &v12 - v12;
  v14 = v12;
  MEMORY[0x1EEE9AC00](v6, v7, v8, v9);
  v20 = &v12 - v14;
  v25 = &v12 - v14;
  v24 = a1;
  sub_1C5439E70(v10);
  v18 = sub_1C543DAE4();
  sub_1C540EFD8(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_1C540EFD8(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_1C5439E70@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_1C543D10C;
  v24 = 0;
  v11 = 0;
  v12 = *(type metadata accessor for SharedNameView(0) - 8);
  v16 = v12;
  v17 = *(v12 + 64);
  v13 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v19 = &v11 - v13;
  v5 = sub_1C5594F34();
  v14 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5, v6, v7, v8);
  v23 = &v11 - v14;
  v24 = v1;
  sub_1C5594F24();
  sub_1C5437488(v15, v19);
  v18 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v9 = sub_1C5439180(v19, (v22 + v18));
  return MEMORY[0x1C6946B80](v23, v21, v22, v9);
}

uint64_t sub_1C543A008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v21 = a1;
  v27 = MEMORY[0x1E6981218];
  v29 = sub_1C543F694;
  v49 = 0;
  v48 = 0;
  v2 = type metadata accessor for SharedNameView(0);
  v17 = *(v2 - 8);
  v22 = v17;
  v23 = *(v17 + 64);
  v18 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2, v3, v4, v5);
  v25 = &v17 - v18;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4B8, &unk_1C55AEAE0);
  v36 = *(v42 - 8);
  v37 = v42 - 8;
  v19 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, v6, v7, v8);
  v40 = &v17 - v19;
  v20 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, &v17 - v19, v11, v12);
  v41 = &v17 - v20;
  v49 = &v17 - v20;
  v48 = v13;
  sub_1C554E52C();
  v35 = &v47;
  v47 = v14;
  KeyPath = swift_getKeyPath();
  sub_1C5437488(v21, v25);
  v24 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v30 = swift_allocObject();
  sub_1C5439180(v25, (v30 + v24));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C8, &qword_1C55AEE68);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5D0, &qword_1C55AEE70);
  v33 = sub_1C543F714();
  v34 = sub_1C543F79C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4C8, &qword_1C55AEAF0);
  v15 = sub_1C543B514();
  v45 = v26;
  v46 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1C5596104();
  v39 = sub_1C543B42C();
  sub_1C540EFD8(v40, v42, v41);
  v44 = *(v36 + 8);
  v43 = v36 + 8;
  v44(v40, v42);
  (*(v36 + 16))(v40, v41, v42);
  sub_1C540EFD8(v40, v42, v38);
  v44(v40, v42);
  return (v44)(v41, v42);
}

uint64_t sub_1C543A3D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v18 = a1;
  v38 = a2;
  v23 = sub_1C543F814;
  v45 = sub_1C543F9A4;
  v50 = MEMORY[0x1E6981218];
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v21 = 0;
  v3 = type metadata accessor for SharedNameView(0);
  v16 = *(v3 - 8);
  v39 = v16;
  v40 = *(v16 + 64);
  v17 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v42 = &v16 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5D0, &qword_1C55AEE70);
  v52 = *(v58 - 8);
  v53 = v58 - 8;
  v19 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18, v38, v7, v8);
  v56 = &v16 - v19;
  v20 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11, &v16 - v19, v12);
  v57 = &v16 - v20;
  v71 = &v16 - v20;
  v44 = *v13;
  v22 = 1;
  v70 = v44 & 1;
  v69 = v14;
  v24 = v61;
  v61[16] = v44;
  v62 = v14;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5E8, &qword_1C55AEE78);
  v26 = sub_1C543F824();
  sub_1C5412C88();
  v27 = &v67;
  sub_1C5596024();
  v28 = __dst;
  v29 = 96;
  memcpy(__dst, v27, sizeof(__dst));
  v34 = v66;
  memcpy(v66, __dst, sizeof(v66));
  sub_1C5596244();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4E0, &unk_1C55AEAF8);
  v32 = sub_1C543B5BC();
  v33 = sub_1C543F8AC();
  v31 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  v35 = &v68;
  sub_1C5595B24();
  sub_1C543F924(v34);
  v36 = v73;
  v37 = 97;
  memcpy(v73, v35, 0x61uLL);
  v47 = v65;
  memcpy(v65, v73, 0x61uLL);
  sub_1C5437488(v38, v42);
  v41 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v43 = v41 + v40;
  v51 = 1;
  v46 = swift_allocObject();
  sub_1C5439180(v42, (v46 + v41));
  *(v46 + v43) = v44;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4C8, &qword_1C55AEAF0);
  v49 = sub_1C543B514();
  sub_1C543AECC();
  sub_1C5595B44();

  sub_1C543F924(v47);
  v63 = v48;
  v64 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v56, v58, v57);
  v60 = *(v52 + 8);
  v59 = v52 + 8;
  v60(v56, v58);
  (*(v52 + 16))(v56, v57, v58);
  sub_1C540EFD8(v56, v58, v54);
  v60(v56, v58);
  return (v60)(v57, v58);
}

uint64_t sub_1C543A8C8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(v61, 0, sizeof(v61));
  v52 = 0;
  v53 = 0;
  v63 = a1 & 1;
  v62 = a2;
  v57 = sub_1C554E224(a1 & 1);
  v58 = v3;
  v59 = v4;
  v60 = v5;
  v54[0] = v57;
  v54[1] = v3;
  v55 = v4 & 1;
  v56 = v5;
  sub_1C540EFD8(v54, MEMORY[0x1E6981148], v61);
  sub_1C5414260(v54);
  v50 = sub_1C5596044();
  v51 = v6 & 1;
  sub_1C540EFD8(&v50, MEMORY[0x1E6981840], &v52);
  v46 = a1 & 1;
  v27 = sub_1C5436DCC();
  v28 = (*(*v27 + 488))(v27);

  v45 = v28 & 1;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    sub_1C55965F4("checkmark", 9, 1);
    v34[0] = sub_1C5595EF4();
    sub_1C5595E54();
    sub_1C5595B94();

    sub_1C5410D10(v34);
    v33[0] = v34[1];
    v33[1] = v34[2];
    v33[2] = v34[3];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600, &unk_1C55AEE80);
    sub_1C543FA44();
    sub_1C540EFD8(v33, v18, v35);
    sub_1C543FC24(v33);
    v12 = v35[0];
    v13 = v35[1];
    v14 = v35[2];

    v31[0] = v12;
    v31[1] = v13;
    v31[2] = v14;
    sub_1C540EFD8(v31, v18, v32);
    sub_1C543FC24(v31);
    v15 = v32[0];
    v16 = v32[1];
    v17 = v32[2];

    v29[0] = v15;
    v29[1] = v16;
    v29[2] = v17;
    sub_1C540F554(v29, v18, v30);
    sub_1C543FBCC(v29);
    v19 = v30[0];
    v20 = v30[1];
    v21 = v30[2];
    sub_1C543FAE8(v30[0]);
    v47 = v19;
    v48 = v20;
    v49 = v21;
    sub_1C543FC24(v32);
    sub_1C543FC24(v35);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    memset(v43, 0, sizeof(v43));
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600, &unk_1C55AEE80);
    sub_1C543FA44();
    sub_1C540F554(v43, v8, v44);
    v9 = v44[0];
    v10 = v44[1];
    v11 = v44[2];
    sub_1C543FAE8(v44[0]);
    v47 = v9;
    v48 = v10;
    v49 = v11;
    v22 = v9;
    v23 = v10;
    v24 = v11;
  }

  sub_1C54142A8(v61, v41);
  v42[0] = v41;
  v39 = v52;
  v40 = v53;
  v42[1] = &v39;
  v38[0] = v22;
  v38[1] = v23;
  v38[2] = v24;
  v42[2] = v38;
  v37[0] = MEMORY[0x1E6981148];
  v37[1] = MEMORY[0x1E6981840];
  v37[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C610, &qword_1C55AEE90);
  v36[0] = MEMORY[0x1E6981138];
  v36[1] = MEMORY[0x1E6981838];
  v36[2] = sub_1C543FB34();
  sub_1C540F5A0(v42, 3uLL, v37, v36, a3);
  sub_1C543FBCC(v38);
  sub_1C5414260(v41);
  sub_1C543FBCC(&v47);
  return sub_1C5414260(v61);
}

uint64_t sub_1C543AE38(uint64_t a1, char a2)
{
  v4 = sub_1C5436DCC();
  (*(*v4 + 496))(a2 & 1);
}

uint64_t sub_1C543AEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = 0u;
  v59 = 0u;
  v47 = 0u;
  v48 = 0u;
  v72 = a1;
  v35 = sub_1C5436DCC();
  v36 = (*(*v35 + 488))(v35);

  v67 = v36 & 1;
  v66 = 0;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    v15 = sub_1C5436DCC();
    v14 = *(a1 + *(type metadata accessor for SharedNameView(0) + 20));
    v3 = MEMORY[0x1E69E5928](v14, v2);
    v16 = (*(*v15 + 624))(v14, v3);
    v17 = v4;
    MEMORY[0x1E69E5920](v14);

    v56 = v16;
    v57 = v17;
    sub_1C54141E8();
    v52 = sub_1C5595A04();
    v53 = v5;
    v54 = v6;
    v55 = v7;
    v49[0] = v52;
    v49[1] = v5;
    v50 = v6 & 1;
    v51 = v7;
    v24 = MEMORY[0x1E6981148];
    sub_1C540EFD8(v49, MEMORY[0x1E6981148], &v58);
    sub_1C5414260(v49);
    v18 = v58;
    v19 = v59;
    v20 = *(&v59 + 1);
    sub_1C54130AC(v58, *(&v58 + 1), v59 & 1);
    sub_1C5594CF4();
    v44 = v18;
    v45 = v19 & 1;
    v46 = v20;
    sub_1C540EFD8(&v44, v24, &v47);
    sub_1C5414260(&v44);
    v22 = v47;
    v21 = v48;
    v23 = *(&v48 + 1);
    sub_1C54130AC(v47, *(&v47 + 1), v48 & 1);
    sub_1C5594CF4();
    v37 = v22;
    v38 = v21 & 1;
    v39 = v23;
    sub_1C540F554(&v37, v24, &v40);
    sub_1C54366A4(&v37);
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v28 = v43;
    sub_1C54365B4(v40, v41, v42, v43);
    v68 = v25;
    v69 = v26;
    v70 = v27;
    v71 = v28;
    sub_1C5414260(&v47);
    sub_1C5414260(&v58);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    v32 = v28;
  }

  else
  {
    memset(v61, 0, sizeof(v61));
    sub_1C540F554(v61, MEMORY[0x1E6981148], &v62);
    v10 = v62;
    v11 = v63;
    v12 = v64;
    v13 = v65;
    sub_1C54365B4(v62, v63, v64, v65);
    v68 = v10;
    v69 = v11;
    v70 = v12;
    v71 = v13;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v13;
  }

  v60[0] = v29;
  v60[1] = v30;
  v60[2] = v31;
  v60[3] = v32;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C448, &qword_1C55AFCB0);
  sub_1C5436610();
  sub_1C540EFD8(v60, v9, a2);
  sub_1C54366A4(v60);
  return sub_1C54366A4(&v68);
}

uint64_t sub_1C543B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a9;
  v16 = a1;
  v17 = a2;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v23 = a5;
  v22 = a6;
  v13 = (*(*(a6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v15 = &v12 - v13;
  v10(v9);
  return sub_1C5596174();
}

unint64_t sub_1C543B42C()
{
  v2 = qword_1EC15C4C0;
  if (!qword_1EC15C4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4B8, &unk_1C55AEAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4C8, &qword_1C55AEAF0);
    sub_1C543B514();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543B514()
{
  v2 = qword_1EC15C4D0;
  if (!qword_1EC15C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4C8, &qword_1C55AEAF0);
    sub_1C543B5BC();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543B5BC()
{
  v2 = qword_1EC15C4D8;
  if (!qword_1EC15C4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4E0, &unk_1C55AEAF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543B644()
{
  v2 = qword_1EC15C4E8;
  if (!qword_1EC15C4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4B0, &qword_1C55AEAD8);
    sub_1C543B42C();
    sub_1C5436610();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C4E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543B6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = a1;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v68 = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C510, &qword_1C55AEB18);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41, v3, v4, v5);
  v43 = &v35 - v42;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v42, v7, v8, v9);
  v45 = &v35 - v44;
  v80 = &v35 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C550, qword_1C55AECB0);
  v47 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v10, v11, v12);
  v48 = &v35 - v47;
  v49 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v47, v14, v15, v16);
  v50 = &v35 - v49;
  v51 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v49, v18, v19, v20);
  v52 = &v35 - v51;
  v53 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v51, v22, v23, v24);
  v54 = &v35 - v53;
  v79 = &v35 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F8, &qword_1C55AEB10);
  v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v55, v25, v26, v27);
  v57 = &v35 - v56;
  v58 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v56, v29, v30, v31);
  v59 = &v35 - v58;
  v78 = &v35 - v58;
  v77 = a1;
  v60 = sub_1C5436DCC();
  v61 = (*(*v60 + 512))(v60);

  v64 = &v76;
  v76 = v61;
  v62 = &v75;
  v75 = 2;
  v63 = type metadata accessor for CNContactDisplayNameOrder(0);
  sub_1C543E028();
  if (sub_1C5596E24())
  {
    sub_1C543C060();
    v38 = sub_1C543DA5C();
    sub_1C540EFD8(v52, v46, v54);
    sub_1C543E0A8(v52);
    v68 = v52;
    sub_1C543C0F8();
    sub_1C540EFD8(v50, v46, v52);
    sub_1C543E0A8(v50);
    sub_1C543E1A4(v54, v50);
    v37 = v67;
    v67[0] = v50;
    sub_1C543E1A4(v52, v48);
    v67[1] = v48;
    v66[0] = v46;
    v66[1] = v46;
    v65[0] = v38;
    v65[1] = v38;
    sub_1C540F5A0(v37, 2uLL, v66, v65, v45);
    sub_1C543E0A8(v48);
    sub_1C543E0A8(v50);
    sub_1C543E354(v45, v43);
    v32 = sub_1C543BF2C();
    sub_1C540FD1C(v43, v41, v41, v32, v32, v57);
  }

  else
  {
    v74 = v54;
    sub_1C543C0F8();
    v36 = sub_1C543DA5C();
    sub_1C540EFD8(v52, v46, v54);
    sub_1C543E0A8(v52);
    v73 = v52;
    sub_1C543C060();
    sub_1C540EFD8(v50, v46, v52);
    sub_1C543E0A8(v50);
    v72 = v45;
    sub_1C543E1A4(v54, v50);
    v35 = v71;
    v71[0] = v50;
    sub_1C543E1A4(v52, v48);
    v71[1] = v48;
    v70[0] = v46;
    v70[1] = v46;
    v69[0] = v36;
    v69[1] = v36;
    sub_1C540F5A0(v35, 2uLL, v70, v69, v45);
    sub_1C543E0A8(v48);
    sub_1C543E0A8(v50);
    sub_1C543E354(v45, v43);
    v33 = sub_1C543BF2C();
    sub_1C54108A0(v43, v41, v41, v33, v33, v57);
  }

  sub_1C543E678(v43);
  sub_1C543E820(v57, v59);
  sub_1C543E678(v45);
  sub_1C543E0A8(v52);
  sub_1C543E0A8(v54);
  sub_1C543EC80(v59, v57);
  sub_1C543BE8C();
  sub_1C540EFD8(v57, v55, v39);
  sub_1C543F2CC(v57);
  return sub_1C543F2CC(v59);
}

unint64_t sub_1C543BE8C()
{
  v2 = qword_1EC15C500;
  if (!qword_1EC15C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4F8, &qword_1C55AEB10);
    sub_1C543BF2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543BF2C()
{
  v2 = qword_1EC15C508;
  if (!qword_1EC15C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C510, &qword_1C55AEB18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543BFB4()
{
  v2 = qword_1EC15C518;
  if (!qword_1EC15C518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4F0, &qword_1C55AEB08);
    sub_1C543BE8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543C060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C520, &qword_1C55AEB20);
  sub_1C543D178();
  sub_1C5412C88();
  return sub_1C5596024();
}

uint64_t sub_1C543C0F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C520, &qword_1C55AEB20);
  sub_1C543D178();
  sub_1C5412C88();
  return sub_1C5596024();
}

uint64_t sub_1C543C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v36 = a1;
  v80 = 0;
  v79 = 0;
  v62 = v78;
  memset(v78, 0, sizeof(v78));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v26 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v2, v3, v4);
  v51 = &v26 - v26;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
  v27 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v5, v6, v7);
  v59 = &v26 - v27;
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v9, &v26 - v27, v10, v11);
  v61 = &v26 - v28;
  v80 = &v26 - v28;
  v79 = v13;
  *&v34[1] = 1;
  sub_1C55965F4("First Name", 10, 1, v12);
  v33 = sub_1C55953C4();
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = 0;
  sub_1C5439370();
  sub_1C5576C44();
  v75 = 0;
  v76 = 0;
  v77 = *v34 & 0x100;
  v71 = sub_1C55959E4();
  v72 = v17;
  v73 = v18;
  v74 = v19;
  v35 = v68;
  v68[0] = v71;
  v68[1] = v17;
  v69 = v18 & 1 & v34[1];
  v70 = v19;
  v53 = MEMORY[0x1E6981148];
  v55 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v68, MEMORY[0x1E6981148], v62);
  sub_1C5414260(v35);
  v37 = sub_1C5436DCC();
  v38 = (*(*v37 + 632))(v37);
  v39 = v20;

  v47 = v67;
  v67[0] = v38;
  v67[1] = v39;
  v40 = sub_1C54371C0();
  v41 = v21;
  v42 = v22;
  KeyPath = swift_getKeyPath();
  v66[6] = v40;
  v66[7] = v41;
  v66[8] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578, &unk_1C55AEDC0);
  sub_1C55960B4();
  v23 = v51;
  v43 = v66[2];
  v44 = v66[3];
  v45 = v66[4];
  v46 = v66[5];

  v24 = sub_1C54141E8();
  sub_1C543C780(v47, v43, v44, v45, v46, MEMORY[0x1E69E6158], v24, v23);

  sub_1C543DB6C();
  sub_1C5595C54();
  (*(v49 + 8))(v51, v52);
  v56 = sub_1C543DBF4();
  sub_1C540EFD8(v59, v54, v61);
  sub_1C543DD24(v59);
  v60 = v65;
  sub_1C54142A8(v62, v65);
  v58 = v66;
  v66[0] = v60;
  sub_1C543DDB4(v61, v59);
  v66[1] = v59;
  v64[0] = v53;
  v64[1] = v54;
  v63[0] = v55;
  v63[1] = v56;
  sub_1C540F5A0(v58, 2uLL, v64, v63, v57);
  sub_1C543DD24(v59);
  sub_1C5414260(v60);
  sub_1C543DD24(v61);
  return sub_1C5414260(v62);
}

uint64_t sub_1C543C654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 392))(v2);
  a2[1] = v3;
}

uint64_t sub_1C543C6E0(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 400))(v4, v6);
}

uint64_t sub_1C543C780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10[2] = a8;
  v13 = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v14 = a6;
  v10[1] = a7;
  v10[8] = 0;
  v10[7] = nullsub_1;
  v10[9] = nullsub_1;
  v15 = a6;
  v11 = *(a6 - 8);
  v12 = a6 - 8;
  v10[0] = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a2, a1, a6, a4);
  v10[10] = v10 - v10[0];
  (*(v11 + 16))(v8);
  sub_1C5596254();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_1C543C8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v36 = a1;
  v80 = 0;
  v79 = 0;
  v62 = v78;
  memset(v78, 0, sizeof(v78));
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v26 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52, v2, v3, v4);
  v51 = &v26 - v26;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
  v27 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v5, v6, v7);
  v59 = &v26 - v27;
  v28 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v9, &v26 - v27, v10, v11);
  v61 = &v26 - v28;
  v80 = &v26 - v28;
  v79 = v13;
  *&v34[1] = 1;
  sub_1C55965F4("Last Name", 9, 1, v12);
  v33 = sub_1C55953C4();
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = 0;
  sub_1C5439370();
  sub_1C5576C44();
  v75 = 0;
  v76 = 0;
  v77 = *v34 & 0x100;
  v71 = sub_1C55959E4();
  v72 = v17;
  v73 = v18;
  v74 = v19;
  v35 = v68;
  v68[0] = v71;
  v68[1] = v17;
  v69 = v18 & 1 & v34[1];
  v70 = v19;
  v53 = MEMORY[0x1E6981148];
  v55 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v68, MEMORY[0x1E6981148], v62);
  sub_1C5414260(v35);
  v37 = sub_1C5436DCC();
  v38 = (*(*v37 + 640))(v37);
  v39 = v20;

  v47 = v67;
  v67[0] = v38;
  v67[1] = v39;
  v40 = sub_1C54371C0();
  v41 = v21;
  v42 = v22;
  KeyPath = swift_getKeyPath();
  v66[6] = v40;
  v66[7] = v41;
  v66[8] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578, &unk_1C55AEDC0);
  sub_1C55960B4();
  v23 = v51;
  v43 = v66[2];
  v44 = v66[3];
  v45 = v66[4];
  v46 = v66[5];

  v24 = sub_1C54141E8();
  sub_1C543C780(v47, v43, v44, v45, v46, MEMORY[0x1E69E6158], v24, v23);

  sub_1C543DB6C();
  sub_1C5595C54();
  (*(v49 + 8))(v51, v52);
  v56 = sub_1C543DBF4();
  sub_1C540EFD8(v59, v54, v61);
  sub_1C543DD24(v59);
  v60 = v65;
  sub_1C54142A8(v62, v65);
  v58 = v66;
  v66[0] = v60;
  sub_1C543DDB4(v61, v59);
  v66[1] = v59;
  v64[0] = v53;
  v64[1] = v54;
  v63[0] = v55;
  v63[1] = v56;
  sub_1C540F5A0(v58, 2uLL, v64, v63, v57);
  sub_1C543DD24(v59);
  sub_1C5414260(v60);
  sub_1C543DD24(v61);
  return sub_1C5414260(v62);
}

uint64_t sub_1C543CDB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;

  *a2 = (*(*v5 + 440))(v2);
  a2[1] = v3;
}

uint64_t sub_1C543CE40(void *a1, uint64_t *a2)
{
  sub_1C5402BDC(a1, v7);
  v4 = v7[0];
  v6 = v7[1];
  v5 = *a2;

  (*(*v5 + 448))(v4, v6);
}

uint64_t sub_1C543CEE0(uint64_t *a1)
{
  v20 = a1;
  v24 = MEMORY[0x1E69E85E0];
  v29 = &unk_1C55AEE08;
  v31 = 0;
  v27 = 0;
  v1 = type metadata accessor for SharedNameView(0);
  v17 = *(v1 - 8);
  v21 = v17;
  v22 = *(v17 + 64);
  v18 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1, v2, v3, v4);
  v26 = &v16 - v18;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v5, v6, v7);
  v28 = &v16 - v19;
  v31 = v8;
  v9 = sub_1C5596814();
  (*(*(v9 - 8) + 56))(v28, 1);
  sub_1C5437488(v20, v26);
  sub_1C55967E4();
  v23 = sub_1C55967D4();
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v10 = swift_allocObject();
  v11 = v24;
  v12 = v25;
  v13 = v10;
  v14 = v26;
  v30 = v13;
  *(v13 + 16) = v23;
  *(v13 + 24) = v11;
  sub_1C5439180(v14, (v13 + v12));
  sub_1C54061EC(v27, v27, v28, v29, v30, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C543D10C()
{
  v1 = *(type metadata accessor for SharedNameView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1C543CEE0(v2);
}

unint64_t sub_1C543D178()
{
  v2 = qword_1EC15C528;
  if (!qword_1EC15C528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C520, &qword_1C55AEB20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543D208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v5 = sub_1C5595104();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[3] = a4;
  sub_1C55967E4();
  v4[8] = sub_1C55967D4();
  v4[9] = sub_1C55967A4();
  v4[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C543D340);
}

uint64_t sub_1C543D340()
{
  v5 = v0[4];
  v0[2] = v0;
  v1 = sub_1C5436DCC();
  v0[11] = v1;
  v8 = *(v5 + *(type metadata accessor for SharedNameView(0) + 20));
  v0[12] = v8;
  MEMORY[0x1E69E5928](v8, v2);
  v7 = (*(*v1 + 616) + **(*v1 + 616));
  v3 = swift_task_alloc();
  *(v6 + 104) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_1C543D4BC;

  return v7(v8);
}

uint64_t sub_1C543D4BC()
{
  v2 = *(*v0 + 96);
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C543D63C);
}

uint64_t sub_1C543D63C()
{
  v1 = v0[7];
  v6 = v1;
  v4 = v0[6];
  v5 = v0[5];
  v0[2] = v0;
  sub_1C54366FC(v1);
  sub_1C55950F4();
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[2] + 8);

  return v2();
}

unint64_t sub_1C543D7BC(uint64_t a1)
{
  v5 = sub_1C543D8C0(319);
  if (v1 <= 0x3F)
  {
    v5 = sub_1C543D95C();
    if (v2 <= 0x3F)
    {
      v5 = sub_1C543D9C0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v5;
}

unint64_t sub_1C543D8C0(uint64_t a1)
{
  v5 = qword_1EC15C530;
  if (!qword_1EC15C530)
  {
    sub_1C5595104();
    v4 = sub_1C5595014();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C530);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C543D95C()
{
  v2 = qword_1EC15C538;
  if (!qword_1EC15C538)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15C538);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C543D9C0(uint64_t a1)
{
  v5 = qword_1EC15C540;
  if (!qword_1EC15C540)
  {
    type metadata accessor for NameAndPhotoSharingViewModel(255);
    v4 = sub_1C5595FB4();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EC15C540);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C543DA5C()
{
  v2 = qword_1EC15C548;
  if (!qword_1EC15C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C550, qword_1C55AECB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DAE4()
{
  v2 = qword_1EC15C558;
  if (!qword_1EC15C558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C560, &qword_1C55AED80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DB6C()
{
  v2 = qword_1EC15C580;
  if (!qword_1EC15C580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C568, &qword_1C55AED88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DBF4()
{
  v2 = qword_1EC15C588;
  if (!qword_1EC15C588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C570, &qword_1C55AED90);
    sub_1C543DB6C();
    sub_1C543DC9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543DC9C()
{
  v2 = qword_1EC15C590;
  if (!qword_1EC15C590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C598, &qword_1C55B6480);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C590);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543DD24(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);

  return a1;
}

uint64_t sub_1C543DDB4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90) + 36);
  v8 = *(a1 + v7);

  result = a2;
  v4 = a2 + v7;
  *v4 = v8;
  *(v4 + 8) = *(a1 + v7 + 8);
  return result;
}

uint64_t sub_1C543DE7C(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for SharedNameView(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C543D208(a1, v7, v8, v1 + v9);
}

unint64_t type metadata accessor for CNContactDisplayNameOrder(uint64_t a1)
{
  v5 = qword_1EC15C630;
  if (!qword_1EC15C630)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C630);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C543E028()
{
  v2 = qword_1EC15C5A0;
  if (!qword_1EC15C5A0)
  {
    type metadata accessor for CNContactDisplayNameOrder(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543E0A8(uint64_t a1)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28) + 44);
  sub_1C5412EA0(*v3, *(v3 + 8), *(v3 + 16) & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88);
  (*(*(v1 - 8) + 8))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);

  return a1;
}

uint64_t sub_1C543E1A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28) + 44);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_1C54130AC(v7, v8, v9 & 1);
  v11 = a2 + v6;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = v9 & 1;
  v10 = *(a1 + v6 + 24);
  sub_1C5594CF4();
  *(v11 + 24) = v10;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88);
  (*(*(v2 - 8) + 16))();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90) + 36);
  v16 = (a1 + v6 + v12 + v14);
  v15 = *v16;

  result = a2;
  v4 = a2 + v6 + v12 + v14;
  *v4 = v15;
  *(v4 + 8) = *(v16 + 8);
  return result;
}

uint64_t sub_1C543E354(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
  v8 = *(v19 + 44);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = *(a1 + v8 + 16);
  sub_1C54130AC(v9, v10, v11 & 1);
  v13 = a2 + v8;
  *v13 = v9;
  *(v13 + 8) = v10;
  *(v13 + 16) = v11 & 1;
  v12 = *(a1 + v8 + 24);
  sub_1C5594CF4();
  *(v13 + 24) = v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
  v14 = *(v25 + 48);
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 16);
  v28();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
  v15 = *(v30 + 36);
  v17 = (a1 + v8 + v14 + v15);
  v16 = *v17;

  v2 = a2 + v8 + v14 + v15;
  *v2 = v16;
  *(v2 + 8) = *(v17 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38);
  v4 = a1 + *(v3 + 48);
  v20 = a2 + *(v3 + 48);
  *v20 = *v4;
  *(v20 + 16) = *(v4 + 16);
  v21 = *(v19 + 44);
  v27 = v4 + v21;
  v22 = *(v4 + v21);
  v23 = *(v4 + v21 + 8);
  v24 = *(v4 + v21 + 16);
  sub_1C54130AC(v22, v23, v24 & 1);
  v5 = v20 + v21;
  *v5 = v22;
  *(v5 + 8) = v23;
  *(v5 + 16) = v24 & 1;
  v26 = *(v27 + 24);
  sub_1C5594CF4();
  *(v20 + v21 + 24) = v26;
  v33 = v20 + v21 + *(v25 + 48);
  v29 = v27 + *(v25 + 48);
  v28();
  v32 = *(v30 + 36);
  v34 = *(v29 + v32);

  result = a2;
  v7 = v33 + v32;
  *v7 = v34;
  *(v7 + 8) = *(v29 + v32 + 8);
  return result;
}

uint64_t sub_1C543E678(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
  sub_1C5412EA0(*(a1 + *(v2 + 44)), *(a1 + *(v2 + 44) + 8), *(a1 + *(v2 + 44) + 16) & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 8);
  v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38) + 48) + *(v2 + 44);
  sub_1C5412EA0(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4();

  return a1;
}

uint64_t sub_1C543E820(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C0, &unk_1C55AEE40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
    v21 = (a2 + *(v27 + 44));
    v22 = (a1 + *(v27 + 44));
    *v21 = *v22;
    v21[1] = v22[1];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
    v23 = v21 + *(v25 + 48);
    v24 = v22 + *(v25 + 48);
    v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 32);
    (v26)(v23, v24);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
    v11 = &v23[*(v29 + 36)];
    v12 = &v24[*(v29 + 36)];
    *v11 = *v12;
    v11[8] = v12[8];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38);
    v14 = a2 + *(v13 + 48);
    v15 = a1 + *(v13 + 48);
    *v14 = *v15;
    *(v14 + 16) = *(v15 + 16);
    v16 = (v14 + *(v27 + 44));
    v17 = (v15 + *(v27 + 44));
    *v16 = *v17;
    v16[1] = v17[1];
    v28 = v16 + *(v25 + 48);
    v30 = v17 + *(v25 + 48);
    v26();
    v18 = &v28[*(v29 + 36)];
    v19 = &v30[*(v29 + 36)];
    *v18 = *v19;
    v18[8] = v19[8];
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
    v31 = (a2 + *(v37 + 44));
    v32 = (a1 + *(v37 + 44));
    *v31 = *v32;
    v31[1] = v32[1];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
    v33 = v31 + *(v35 + 48);
    v34 = v32 + *(v35 + 48);
    v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 32);
    (v36)(v33, v34);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
    v2 = &v33[*(v39 + 36)];
    v3 = &v34[*(v39 + 36)];
    *v2 = *v3;
    v2[8] = v3[8];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38);
    v5 = a2 + *(v4 + 48);
    v6 = a1 + *(v4 + 48);
    *v5 = *v6;
    *(v5 + 16) = *(v6 + 16);
    v7 = (v5 + *(v37 + 44));
    v8 = (v6 + *(v37 + 44));
    *v7 = *v8;
    v7[1] = v8[1];
    v38 = v7 + *(v35 + 48);
    v40 = v8 + *(v35 + 48);
    v36();
    v9 = *(v39 + 36);
    v10 = &v38[v9];
    *v10 = *&v40[v9];
    v10[8] = v40[v9 + 8];
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C543EC80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C0, &unk_1C55AEE40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
    v13 = a2 + *(v20 + 44);
    v14 = a1 + *(v20 + 44);
    v9 = *v14;
    v10 = *(v14 + 8);
    v11 = *(v14 + 16);
    sub_1C54130AC(*v14, v10, v11 & 1);
    *v13 = v9;
    *(v13 + 8) = v10;
    *(v13 + 16) = v11 & 1;
    v12 = *(v14 + 24);
    sub_1C5594CF4();
    *(v13 + 24) = v12;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
    v15 = v13 + *(v26 + 48);
    v16 = v14 + *(v26 + 48);
    v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 16);
    (v28)(v15, v16);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
    v19 = v15 + *(v31 + 36);
    v18 = (v16 + *(v31 + 36));
    v17 = *v18;

    *v19 = v17;
    *(v19 + 8) = *(v18 + 8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38);
    v6 = a2 + *(v5 + 48);
    v7 = a1 + *(v5 + 48);
    *v6 = *v7;
    *(v6 + 16) = *(v7 + 16);
    v25 = v6 + *(v20 + 44);
    v27 = v7 + *(v20 + 44);
    v21 = *v27;
    v22 = *(v27 + 8);
    v23 = *(v27 + 16);
    sub_1C54130AC(*v27, v22, v23 & 1);
    *v25 = v21;
    *(v25 + 8) = v22;
    *(v25 + 16) = v23 & 1;
    v24 = *(v27 + 24);
    sub_1C5594CF4();
    *(v25 + 24) = v24;
    v29 = v25 + *(v26 + 48);
    v30 = v27 + *(v26 + 48);
    v28();
    v34 = v29 + *(v31 + 36);
    v33 = (v30 + *(v31 + 36));
    v32 = *v33;

    *v34 = v32;
    *(v34 + 8) = *(v33 + 8);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
    v39 = a2 + *(v46 + 44);
    v40 = a1 + *(v46 + 44);
    v35 = *v40;
    v36 = *(v40 + 8);
    v37 = *(v40 + 16);
    sub_1C54130AC(*v40, v36, v37 & 1);
    *v39 = v35;
    *(v39 + 8) = v36;
    *(v39 + 16) = v37 & 1;
    v38 = *(v40 + 24);
    sub_1C5594CF4();
    *(v39 + 24) = v38;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30);
    v41 = v39 + *(v52 + 48);
    v42 = v40 + *(v52 + 48);
    v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 16);
    (v54)(v41, v42);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);
    v45 = v41 + *(v57 + 36);
    v44 = (v42 + *(v57 + 36));
    v43 = *v44;

    *v45 = v43;
    *(v45 + 8) = *(v44 + 8);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38);
    v3 = a2 + *(v2 + 48);
    v4 = a1 + *(v2 + 48);
    *v3 = *v4;
    *(v3 + 16) = *(v4 + 16);
    v51 = v3 + *(v46 + 44);
    v53 = v4 + *(v46 + 44);
    v47 = *v53;
    v48 = *(v53 + 8);
    v49 = *(v53 + 16);
    sub_1C54130AC(*v53, v48, v49 & 1);
    *v51 = v47;
    *(v51 + 8) = v48;
    *(v51 + 16) = v49 & 1;
    v50 = *(v53 + 24);
    sub_1C5594CF4();
    *(v51 + 24) = v50;
    v55 = v51 + *(v52 + 48);
    v56 = v53 + *(v52 + 48);
    v54();
    v60 = v55 + *(v57 + 36);
    v59 = (v56 + *(v57 + 36));
    v58 = *v59;

    *v60 = v58;
    *(v60 + 8) = *(v59 + 8);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C543F2CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5C0, &unk_1C55AEE40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
    v2 = a1 + *(v4 + 44);
    sub_1C5412EA0(*v2, *(v2 + 8), *(v2 + 16) & 1);

    v3 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30) + 48);
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 8);
    (v6)(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);

    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38) + 48) + *(v4 + 44);
    sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

    v6();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5A8, &qword_1C55AEE28);
    v7 = a1 + *(v9 + 44);
    sub_1C5412EA0(*v7, *(v7 + 8), *(v7 + 16) & 1);

    v8 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B0, &qword_1C55AEE30) + 48);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C568, &qword_1C55AED88) - 8) + 8);
    (v11)(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C570, &qword_1C55AED90);

    v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C5B8, &qword_1C55AEE38) + 48) + *(v9 + 44);
    sub_1C5412EA0(*v10, *(v10 + 8), *(v10 + 16) & 1);

    v11();
  }

  return a1;
}

unint64_t sub_1C543F61C()
{
  v2 = qword_1EC15D220;
  if (!qword_1EC15D220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D220);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543F694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for SharedNameView(0);
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1C543A3D8(a1, v4, a2);
}

unint64_t sub_1C543F714()
{
  v2 = qword_1EC15C5D8;
  if (!qword_1EC15C5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C5C8, &qword_1C55AEE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543F79C()
{
  v2 = qword_1EC15C5E0;
  if (!qword_1EC15C5E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543F824()
{
  v2 = qword_1EC15C5F0;
  if (!qword_1EC15C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C5E8, &qword_1C55AEE78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C543F8AC()
{
  v2 = qword_1EC15C5F8;
  if (!qword_1EC15C5F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C5F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543F924(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  if (*(a1 + 72))
  {
  }

  return a1;
}

uint64_t sub_1C543F9A4()
{
  v4 = *(type metadata accessor for SharedNameView(0) - 8);
  v1 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v2 = *(v0 + v1 + *(v4 + 64)) & 1;

  return sub_1C543AE38(v0 + v1, v2);
}

unint64_t sub_1C543FA44()
{
  v2 = qword_1EC15C608;
  if (!qword_1EC15C608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C600, &unk_1C55AEE80);
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C608);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C543FAE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C543FB34()
{
  v2 = qword_1EC15C618;
  if (!qword_1EC15C618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C610, &qword_1C55AEE90);
    sub_1C543FA44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C618);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C543FBCC(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C543FC24(void *a1)
{
}

uint64_t sub_1C543FC70(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for SharedNameView(0) - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54393D4(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C543FD84(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0, &qword_1C55AEB08);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C543FE38(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0, &qword_1C55AEB08);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C620, qword_1C55AEEA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1C543FF6C(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C4F0, &qword_1C55AEB08);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C620, qword_1C55AEEA8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C54400A0()
{
  v2 = qword_1EC15C628;
  if (!qword_1EC15C628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C620, qword_1C55AEEA8);
    sub_1C543BFB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C628);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5440138()
{
  v3 = v0;
  sub_1C54401A4(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C638, &qword_1C55AEF20);
  sub_1C5595004();
  return sub_1C5440290(v2);
}

void *sub_1C54401A4(uint64_t *a1, void *a2)
{
  if (a1[5])
  {
    if (a1[3])
    {
      v2 = a1[3];
      a2[3] = v2;
      a2[4] = a1[4];
      (**(v2 - 8))();
    }

    else
    {
      memcpy(a2, a1, 0x28uLL);
    }

    *(a2 + 40) = 1;
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
    *(a2 + 40) = 0;
  }

  return a2;
}

void *sub_1C5440290(void *a1)
{
  if (a1[5])
  {
    if (a1[3])
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1C5440324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v13 = sub_1C5595324();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v7 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v13, v6, v13, v2);
  v10 = &v5 - v7;
  (*(v11 + 16))(&v5 - v7, v3);
  v9 = &v14;
  sub_1C55952C4();
  memcpy(v8, v9, 0x28uLL);
  return (*(v11 + 8))(v10, v13);
}

void *sub_1C54404A8(uint64_t *a1)
{
  v4[6] = 0;
  v4[7] = a1;
  sub_1C54401A4(a1, v4);
  sub_1C5440500(v4, v2);
  return sub_1C5440290(a1);
}

void *sub_1C5440500(void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1C5440290(a2);
    memcpy(a2, a1, 0x29uLL);
  }

  return a2;
}

uint64_t sub_1C5440554()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C54405EC(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);

  v5[0] = v3;
  v5[1] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F94();
  sub_1C5436F54(v5);
}

void (*sub_1C54406C4(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL, 38651);
  *a1 = v1;
  v4 = *(v3 + 48);
  v1[9] = v4;
  v5 = *(v3 + 56);
  v1[10] = v5;

  *v1 = v4;
  v1[1] = v5;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C54407A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0, &qword_1C55AEA90);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C5440850()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1C544089C(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t NameAndPhotoSharingView.id.getter()
{
  v2 = *(v0 + 64);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C5440968(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 80);
  MEMORY[0x1E69E5928](v4, a2);
  return v4;
}

BOOL sub_1C54409A8(uint64_t a1, uint64_t a2)
{
  sub_1C5596E04();
  *v2 = "id";
  *(v2 + 8) = 2;
  *(v2 + 16) = 2;
  sub_1C540FCD8();
  v4 = sub_1C5596D64();

  return v4 != 0;
}

uint64_t sub_1C5440A80(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  if (sub_1C54409A8(a1, a2))
  {

    v3 = 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_1C5440C94@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C54409A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C5440CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5440B2C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C5440D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5440A80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5440D6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5440B08();
  *a1 = result & 1;
  return result;
}

uint64_t NameAndPhotoSharingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v65 = sub_1C5441F44;
  v74 = MEMORY[0x1E6981440];
  v75 = sub_1C54433CC;
  v89 = sub_1C5443B78;
  v115 = 0;
  v114 = 0;
  v81 = 0;
  v96 = sub_1C5596A04();
  v93 = *(v96 - 8);
  v94 = v96 - 8;
  v33 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96, v2, v3, v4);
  v95 = &v33 - v33;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C640, &qword_1C55AEF60);
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v34 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60, v5, v6, v7);
  v59 = &v33 - v34;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C648, &qword_1C55AEF68);
  v35 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70, v8, v9, v10);
  v68 = &v33 - v35;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C650, &qword_1C55AEF70);
  v77 = *(v80 - 8);
  v78 = v80 - 8;
  v36 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v80, v11, v12, v13);
  v79 = &v33 - v36;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C658, &qword_1C55AEF78);
  v37 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90, v14, v15, v16);
  v97 = &v33 - v37;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C660, &qword_1C55AEF80);
  v38 = (*(*(v99 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v99, v17, v18, v19);
  v101 = &v33 - v38;
  v39 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x1EEE9AC00](&v33 - v38, v21, v22, v23);
  v102 = &v33 - v39;
  v115 = &v33 - v39;
  v114 = v1;
  v62 = 1;
  v41 = sub_1C55965F4("Name and Photo Sharing", 22, 1, v24);
  v45 = v25;
  sub_1C5439370();
  v44 = sub_1C5576C44();
  v40 = sub_1C55965F4("A toggle that allows users to control whether their name and photo are shared with others.", 90, v62 & 1);
  v43 = v26;
  sub_1C54398B0();
  v42 = v27;
  v46 = sub_1C55947B4();
  v47 = v28;

  MEMORY[0x1E69E5920](v44);

  v54 = v113;
  v113[0] = v46;
  v113[1] = v47;
  v48 = sub_1C54407A0();
  v49 = v29;
  v50 = v30;
  KeyPath = swift_getKeyPath();
  v110 = v48;
  v111 = v49;
  v112 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C578, &unk_1C55AEDC0);
  sub_1C55960B4();
  v51 = v107;
  v52 = v108;
  v53 = v109;

  sub_1C54141E8();
  sub_1C5596054();

  v56 = sub_1C55957A4();
  sub_1C54418AC();
  sub_1C5595D84();
  (*(v57 + 8))(v59, v60);
  v61 = sub_1C5440554();
  v63 = (*(*v61 + 200))(v61);

  v66 = &v106;
  v106 = v63 & v62;
  v64 = v105;
  sub_1C5441DDC(v84, v105);
  v85 = 104;
  v86 = 7;
  v67 = swift_allocObject();
  v88 = 88;
  memcpy((v67 + 16), v64, 0x58uLL);
  v72 = sub_1C5442800();
  v71 = MEMORY[0x1E69E6370];
  v73 = MEMORY[0x1E69E6388];
  sub_1C543AE1C();
  sub_1C5595DD4();

  sub_1C54428A4(v68);
  v69 = v104;
  sub_1C5441DDC(v84, v104);
  v76 = swift_allocObject();
  memcpy((v76 + 16), v69, v88);
  v103[11] = v70;
  v103[12] = v71;
  v103[13] = v72;
  v103[14] = v73;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v75, v76);
  (*(v77 + 8))(v79, v80);
  v83 = [objc_opt_self() defaultCenter];
  v82 = *sub_1C55415F0();
  MEMORY[0x1E69E5928](v82, v31);
  sub_1C5596A14();
  MEMORY[0x1E69E5920](v82);
  MEMORY[0x1E69E5920](v83);
  v87 = v103;
  sub_1C5441DDC(v84, v103);
  v92 = swift_allocObject();
  memcpy((v92 + 16), v87, v88);
  v91 = sub_1C5443B80();
  sub_1C5443C8C();
  sub_1C5595E34();

  (*(v93 + 8))(v95, v96);
  sub_1C535D6E8(v97);
  v100 = sub_1C5443D0C();
  sub_1C540EFD8(v101, v99, v102);
  sub_1C535D7C8(v101);
  sub_1C535D920(v102, v101);
  sub_1C540EFD8(v101, v99, v98);
  sub_1C535D7C8(v101);
  return sub_1C535D7C8(v102);
}

unint64_t sub_1C54416B0()
{
  v2 = qword_1EC160BC8;
  if (!qword_1EC160BC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC160BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544172C()
{
  v2 = qword_1EC160BD0[0];
  if (!qword_1EC160BD0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC160BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54417A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 200))(v2) & 1;
}

uint64_t sub_1C544182C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 208))(v4 & 1);
}

unint64_t sub_1C54418AC()
{
  v2 = qword_1EC15C668;
  if (!qword_1EC15C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C640, &qword_1C55AEF60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5441934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v36 = a2;
  v35 = a1;
  v57 = 0;
  v56 = 0;
  v47 = 0;
  v55 = 0;
  v33 = 0;
  v44 = sub_1C5594C74();
  v37 = v44;
  v38 = *(v44 - 8);
  v43 = v38;
  v39 = v38;
  MEMORY[0x1EEE9AC00](v35, v36, v34, v44);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v4;
  v41 = *v5;
  v57 = v41;
  v42 = *v6;
  v56 = v42;
  v55 = v7;
  v8 = sub_1C54B05F8();
  (*(v43 + 16))(v4, v8, v44);
  v49 = sub_1C5594C54();
  v45 = v49;
  v48 = sub_1C5596944();
  v46 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v50 = sub_1C5596E04();
  if (os_log_type_enabled(v49, v48))
  {
    v9 = v33;
    v24 = sub_1C5596A74();
    v20 = v24;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v22 = 0;
    v25 = sub_1C5419DC0(0, v21, v21);
    v23 = v25;
    v26 = sub_1C5419DC0(v22, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v54 = v24;
    v53 = v25;
    v52 = v26;
    v27 = 0;
    v28 = &v54;
    sub_1C5419E14(0, &v54);
    sub_1C5419E14(v27, v28);
    v51 = v50;
    v29 = &v16;
    MEMORY[0x1EEE9AC00](&v16, v10, v11, v12);
    v30 = &v16 - 6;
    *(&v16 - 4) = v13;
    *(&v16 - 3) = &v53;
    *(&v16 - 2) = &v52;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v32 = v9;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v45, v46, "Name and Photo Sharing toggle changed.", v20, 2u);
      v18 = 0;
      sub_1C5419E74(v23, 0, v21);
      sub_1C5419E74(v26, v18, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v19 = v32;
    }
  }

  else
  {

    v19 = v33;
  }

  result = (*(v39 + 8))(v40, v37);
  if ((v41 & 1) != (v42 & 1))
  {
    v16 = sub_1C5440554();
    v15 = *(*v16 + 536);
    v17 = v42 & 1;
    v15(v42 & 1);

    return sub_1C5441F4C(v17);
  }

  return result;
}

void *sub_1C5441DDC(uint64_t *a1, void *a2)
{
  if (a1[5])
  {
    if (a1[3])
    {
      v2 = a1[3];
      a2[3] = v2;
      a2[4] = a1[4];
      (**(v2 - 8))();
    }

    else
    {
      memcpy(a2, a1, 0x28uLL);
    }

    *(a2 + 40) = 1;
  }

  else
  {
    v9 = *a1;

    *a2 = v9;
    *(a2 + 40) = 0;
  }

  v5 = a1[6];

  a2[6] = v5;
  v6 = a1[7];

  a2[7] = v6;
  a2[8] = a1[8];
  v7 = a1[9];
  sub_1C5594CF4();
  a2[9] = v7;
  v8 = a1[10];
  MEMORY[0x1E69E5928](v8, v3);
  result = a2;
  a2[10] = v8;
  return result;
}

uint64_t sub_1C5441F4C(unsigned int a1)
{
  v77 = a1;
  v96 = 0;
  v95 = 0;
  v76 = 0;
  v78 = sub_1C5594C74();
  v79 = *(v78 - 8);
  v80 = v79;
  v81 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77, v78, v2, v3);
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = &v26 - v83;
  MEMORY[0x1EEE9AC00](v4, &v26 - v83, v5, v6);
  v84 = &v26 - v83;
  v96 = v7;
  v95 = v1;
  if (v7)
  {
    v8 = v84;
    v9 = sub_1C54B05F8();
    (*(v80 + 16))(v8, v9, v78);
    v74 = sub_1C5594C54();
    v71 = v74;
    v73 = sub_1C5596944();
    v72 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v75 = sub_1C5596E04();
    if (os_log_type_enabled(v74, v73))
    {
      v10 = v76;
      v62 = sub_1C5596A74();
      v58 = v62;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v60 = 0;
      v63 = sub_1C5419DC0(0, v59, v59);
      v61 = v63;
      v64 = sub_1C5419DC0(v60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v88[0] = v62;
      v87 = v63;
      v86 = v64;
      v65 = 0;
      v66 = v88;
      sub_1C5419E14(0, v88);
      sub_1C5419E14(v65, v66);
      v85 = v75;
      v67 = &v26;
      MEMORY[0x1EEE9AC00](&v26, v11, v12, v13);
      v68 = &v26 - 6;
      *(&v26 - 4) = v14;
      *(&v26 - 3) = &v87;
      *(&v26 - 2) = &v86;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v70 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v71, v72, "Update rows: Adding SharedNameRowView and ShareAutomaticallyPickerRowView.", v58, 2u);
        v56 = 0;
        sub_1C5419E74(v61, 0, v59);
        sub_1C5419E74(v64, v56, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v57 = v70;
      }
    }

    else
    {

      v57 = v76;
    }

    v54 = v57;

    (*(v80 + 8))(v84, v78);
    sub_1C544340C();
    return v54;
  }

  else
  {
    v15 = v82;
    v16 = sub_1C54B05F8();
    (*(v80 + 16))(v15, v16, v78);
    v52 = sub_1C5594C54();
    v49 = v52;
    v51 = sub_1C5596944();
    v50 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
    v53 = sub_1C5596E04();
    if (os_log_type_enabled(v52, v51))
    {
      v17 = v76;
      v40 = sub_1C5596A74();
      v36 = v40;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
      v38 = 0;
      v41 = sub_1C5419DC0(0, v37, v37);
      v39 = v41;
      v42 = sub_1C5419DC0(v38, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v91 = v40;
      v90 = v41;
      v89 = v42;
      v43 = 0;
      v44 = &v91;
      sub_1C5419E14(0, &v91);
      sub_1C5419E14(v43, v44);
      v88[2] = v53;
      v45 = &v26;
      MEMORY[0x1EEE9AC00](&v26, v18, v19, v20);
      v46 = &v26 - 6;
      *(&v26 - 4) = v21;
      *(&v26 - 3) = &v90;
      *(&v26 - 2) = &v89;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v48 = v17;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v49, v50, "Update rows: removing SharedNameRowView and ShareAutomaticallyPickerRowView.", v36, 2u);
        v34 = 0;
        sub_1C5419E74(v39, 0, v37);
        sub_1C5419E74(v42, v34, MEMORY[0x1E69E7CA0] + 8);
        sub_1C5596A54();

        v35 = v48;
      }
    }

    else
    {

      v35 = v76;
    }

    v33 = v35;

    (*(v80 + 8))(v82, v78);
    sub_1C5440138();
    if (v93)
    {
      v29 = v93;
      v30 = v94;
      v32 = &v92;
      __swift_project_boxed_opaque_existential_0(&v92, v93);
      v28 = MEMORY[0x1E69E6530];
      v27 = 2;
      sub_1C5596E04();
      v22 = v27;
      *v23 = 1;
      v23[1] = v22;
      sub_1C540FCD8();
      v31 = v24;
      sub_1C5596354();

      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {
      sub_1C544435C(&v92);
    }

    return v33;
  }
}

unint64_t sub_1C5442800()
{
  v2 = qword_1EC15C670;
  if (!qword_1EC15C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C648, &qword_1C55AEF68);
    sub_1C54418AC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54428A4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C640, &qword_1C55AEF60);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C544290C(uint64_t *a1)
{
  v92 = v138;
  v102 = a1;
  v116 = 0;
  v145 = 0;
  v93 = 0;
  v94 = sub_1C5596284();
  v95 = *(v94 - 8);
  v96 = v95;
  MEMORY[0x1EEE9AC00](0, v94, v1, v2);
  v97 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1C55962A4();
  v99 = *(v98 - 8);
  v100 = v99;
  MEMORY[0x1EEE9AC00](v116, v98, v4, v5);
  v101 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1C5594C74();
  v103 = v111;
  v104 = *(v111 - 8);
  v110 = v104;
  v105 = v104;
  v106 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102, v111, v7, v8);
  v108 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  v107 = &v35 - v108;
  MEMORY[0x1EEE9AC00](v9, &v35 - v108, v10, v11);
  v12 = &v35 - v108;
  v109 = &v35 - v108;
  v145 = v13;
  v14 = sub_1C54B05F8();
  v112 = *(v110 + 16);
  v113 = (v110 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112(v12, v14, v111);
  v119 = sub_1C5594C54();
  v114 = v119;
  v118 = sub_1C5596944();
  v115 = v118;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v120 = sub_1C5596E04();
  if (os_log_type_enabled(v119, v118))
  {
    v15 = v93;
    v83 = sub_1C5596A74();
    v79 = v83;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v81 = 0;
    v84 = sub_1C5419DC0(0, v80, v80);
    v82 = v84;
    v85 = sub_1C5419DC0(v81, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v124 = v83;
    v123 = v84;
    v122 = v85;
    v86 = 0;
    v87 = &v124;
    sub_1C5419E14(0, &v124);
    sub_1C5419E14(v86, v87);
    v121 = v120;
    v88 = &v35;
    MEMORY[0x1EEE9AC00](&v35, v16, v17, v18);
    v89 = &v35 - 6;
    *(&v35 - 4) = v19;
    *(&v35 - 3) = &v123;
    *(&v35 - 2) = &v122;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v91 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v114, v115, "Fetching Name and Photo Sharing toggle state on view appear.", v79, 2u);
      v77 = 0;
      sub_1C5419E74(v82, 0, v80);
      sub_1C5419E74(v85, v77, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v78 = v91;
    }
  }

  else
  {

    v78 = v93;
  }

  v71 = v78;

  v72 = *(v105 + 8);
  v73 = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72(v109, v103);
  v74 = sub_1C5440554();
  (*(*v74 + 528))();

  v75 = sub_1C5440554();
  v76 = (*(*v75 + 200))(v75);

  if ((v76 & 1) == 0)
  {
    return v71;
  }

  sub_1C5440138();
  if (v143)
  {
    v65 = v143;
    v64 = v144;
    v66 = v142;
    __swift_project_boxed_opaque_existential_0(v142, v143);
    v67 = sub_1C5596364();
    v68 = v20;
    __swift_destroy_boxed_opaque_existential_0(v66);
    v69 = v67;
    v70 = v68;
  }

  else
  {
    sub_1C544435C(v142);
    v69 = 0;
    v70 = 1;
  }

  v61 = v70;
  v62 = v69;
  v63 = &v140;
  v138[11] = v69;
  v139 = v70 & 1;
  v140 = 1;
  v141 = 0;
  if ((v70 & 1) == 0)
  {
    v125 = v62;
    v126 = v61 & 1;
    if ((v63[1] & 1) == 0)
    {
      v60 = v125 == *v63;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if ((v63[1] & 1) == 0)
  {
LABEL_18:
    v60 = 0;
    goto LABEL_16;
  }

  v60 = 1;
LABEL_16:
  if (!v60)
  {
    return v71;
  }

  v21 = v107;
  v22 = sub_1C54B05F8();
  v112(v21, v22, v103);
  v58 = sub_1C5594C54();
  v55 = v58;
  v57 = sub_1C5596944();
  v56 = v57;
  v59 = sub_1C5596E04();
  if (os_log_type_enabled(v58, v57))
  {
    v23 = v71;
    v46 = sub_1C5596A74();
    v42 = v46;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v44 = 0;
    v47 = sub_1C5419DC0(0, v43, v43);
    v45 = v47;
    v48 = sub_1C5419DC0(v44, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v130 = v46;
    v129 = v47;
    v128 = v48;
    v49 = 0;
    v50 = &v130;
    sub_1C5419E14(0, &v130);
    sub_1C5419E14(v49, v50);
    v127 = v59;
    v51 = &v35;
    MEMORY[0x1EEE9AC00](&v35, v24, v25, v26);
    v52 = &v35 - 6;
    *(&v35 - 4) = v27;
    *(&v35 - 3) = &v129;
    *(&v35 - 2) = &v128;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v54 = v23;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v55, v56, "Toggle is on and only one row exists. Adding remaining rows.", v42, 2u);
      v40 = 0;
      sub_1C5419E74(v45, 0, v43);
      sub_1C5419E74(v48, v40, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v41 = v54;
    }
  }

  else
  {

    v41 = v71;
  }

  v38 = v41;

  v72(v107, v103);
  v35 = 0;
  sub_1C5444CF8();
  v37 = sub_1C5596984();
  sub_1C5441DDC(v102, v138);
  v28 = swift_allocObject();
  v29 = v92;
  v30 = *v92;
  *(v28 + 32) = v92[1];
  *(v28 + 16) = v30;
  v31 = v29[2];
  v32 = v29[3];
  v33 = v29[4];
  *(v28 + 96) = v138[10];
  *(v28 + 80) = v33;
  *(v28 + 64) = v32;
  *(v28 + 48) = v31;
  v136 = sub_1C5444D5C;
  v137 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v132 = 1107296256;
  v133 = 0;
  v134 = sub_1C544364C;
  v135 = &block_descriptor_3;
  v36 = _Block_copy(&aBlock);

  sub_1C544369C();
  sub_1C54436B4();
  MEMORY[0x1C6947530](v35, v101, v97, v36);
  (*(v96 + 8))(v97, v94);
  (*(v100 + 8))(v101, v98);
  _Block_release(v36);

  return v38;
}

uint64_t sub_1C544340C()
{
  v15 = 0;
  sub_1C55965F4("Your name and photo will automatically be shared with people in your contacts when you send them a message.", 107, 1);
  sub_1C5439370();
  v8 = sub_1C5576C44();
  sub_1C55965F4("Name and Photo Sharing section footer when toggle is on.", 56, 1);
  v7 = v0;
  sub_1C54398B0();
  v9 = sub_1C55947B4();
  v10 = v1;

  MEMORY[0x1E69E5920](v8);

  v13 = v9;
  v14 = v10;
  sub_1C5440138();
  if (v12)
  {
    __swift_project_boxed_opaque_existential_0(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C688, &qword_1C55AEFB0);
    sub_1C5596E04();
    v6 = v2;
    *v2 = sub_1C55965F4("SharedNameRowView", 17, 1, v7);
    v6[1] = v3;
    v6[2] = 1;
    v6[3] = sub_1C55965F4("ShareAutomaticallyPickerRowView", 31, 1);
    v6[4] = v4;
    v6[5] = 2;
    sub_1C540FCD8();
    sub_1C5596344();

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_1C544435C(v11);
  }
}

uint64_t sub_1C544364C(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_1C54436B4()
{
  sub_1C5444DC8(0);
  sub_1C5596284();
  sub_1C5444EB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F310, &unk_1C55B69D0);
  sub_1C5444F38();
  return sub_1C5596B84();
}

uint64_t sub_1C5443754(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = a1;
  v41 = 0;
  v50 = 0;
  v49 = 0;
  v30 = 0;
  v38 = sub_1C5594C74();
  v33 = v38;
  v34 = *(v38 - 8);
  v37 = v34;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v31, v32, v38, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v4;
  v50 = v5;
  v49 = v6;
  v7 = sub_1C54B05F8();
  (*(v37 + 16))(v4, v7, v38);
  v43 = sub_1C5594C54();
  v39 = v43;
  v42 = sub_1C5596944();
  v40 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0, &qword_1C55ADF60);
  v44 = sub_1C5596E04();
  if (os_log_type_enabled(v43, v42))
  {
    v8 = v30;
    v21 = sub_1C5596A74();
    v17 = v21;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940, qword_1C55ADF70);
    v19 = 0;
    v22 = sub_1C5419DC0(0, v18, v18);
    v20 = v22;
    v23 = sub_1C5419DC0(v19, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v48 = v21;
    v47 = v22;
    v46 = v23;
    v24 = 0;
    v25 = &v48;
    sub_1C5419E14(0, &v48);
    sub_1C5419E14(v24, v25);
    v45 = v44;
    v26 = &v14;
    MEMORY[0x1EEE9AC00](&v14, v9, v10, v11);
    v27 = &v14 - 6;
    *(&v14 - 4) = v12;
    *(&v14 - 3) = &v47;
    *(&v14 - 2) = &v46;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0, &unk_1C55AE2C0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v29 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v39, v40, "Updating Name and Photo Sharing toggle.", v17, 2u);
      v15 = 0;
      sub_1C5419E74(v20, 0, v18);
      sub_1C5419E74(v23, v15, MEMORY[0x1E69E7CA0] + 8);
      sub_1C5596A54();

      v16 = v29;
    }
  }

  else
  {

    v16 = v30;
  }

  (*(v35 + 8))(v36, v33);
  v14 = sub_1C5440554();
  (*(*v14 + 528))(v14);
}

unint64_t sub_1C5443B80()
{
  v2 = qword_1EC15C678;
  if (!qword_1EC15C678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C658, &qword_1C55AEF78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C648, &qword_1C55AEF68);
    sub_1C5442800();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5443C8C()
{
  v2 = qword_1EC15E140;
  if (!qword_1EC15E140)
  {
    sub_1C5596A04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5443D0C()
{
  v2 = qword_1EC15C680;
  if (!qword_1EC15C680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C660, &qword_1C55AEF80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C680);
    return WitnessTable;
  }

  return v2;
}

void *NameAndPhotoSharingView.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v50 = a1;
  v63 = 0;
  v49 = __b;
  memset(__b, 0, sizeof(__b));
  v61 = 0;
  v33 = 0;
  v34 = sub_1C55962E4();
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3, v4);
  v38 = v19 - v37;
  v39 = sub_1C5594994();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v5, v6, v7);
  v43 = v19 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C690, &qword_1C55AEFB8);
  v46 = *(v45 - 8);
  v47 = v45 - 8;
  v48 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50, v44, v8, v9);
  v51 = v19 - v48;
  v63 = v19 - v48;
  v61 = v10;
  swift_getKeyPath();
  sub_1C5595024();
  v53 = v50[3];
  v54 = v50[4];
  __swift_project_boxed_opaque_existential_0(v50, v53);
  sub_1C544172C();
  v11 = v52;
  sub_1C5596F24();
  v55 = v11;
  v56 = v11;
  if (v11)
  {
    v19[2] = v56;
    v19[0] = v56;
    __swift_destroy_boxed_opaque_existential_0(v50);
    return sub_1C5440290(__b);
  }

  else
  {
    v12 = sub_1C5596D74();
    v28 = 0;
    v29 = v12;
    v30 = v13;
    v31 = 0;
    v57 = v12;
    v58 = v13;
    if (v13)
    {
      v59 = v57;
      v60 = v58;
    }

    else
    {
      sub_1C5594984();
      v59 = sub_1C5594944();
      v60 = v14;
      (*(v40 + 8))(v43, v39);
      if (v58)
      {
        sub_1C5401ECC(&v57);
      }
    }

    v27 = __b;
    __b[8] = v59;
    __b[9] = v60;
    v20 = v50[3];
    v19[3] = v50[4];
    __swift_project_boxed_opaque_existential_0(v50, v20);
    sub_1C5596F14();
    v21 = sub_1C55962D4();
    v25 = *(v35 + 8);
    v24 = v35 + 8;
    v25(v38, v34);
    __b[10] = RUIDecodingUserInfo.account.getter();
    MEMORY[0x1E69E5920](v21);
    v23 = v50[3];
    v22 = v50[4];
    __swift_project_boxed_opaque_existential_0(v50, v23);
    sub_1C5596F14();
    v26 = sub_1C55962D4();
    v25(v38, v34);
    v15 = RUIDecodingUserInfo.nameAndPhotoSharingViewModel.getter();
    __b[6] = sub_1C5436D54(v15);
    __b[7] = v16;
    v17 = MEMORY[0x1E69E5920](v26);
    (*(v46 + 8))(v51, v45, v17);
    sub_1C5441DDC(v27, v32);
    __swift_destroy_boxed_opaque_existential_0(v50);
    return sub_1C5444434(v27);
  }
}

void *sub_1C544435C(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t sub_1C5444404@<X0>(uint64_t *a1@<X8>)
{
  result = NameAndPhotoSharingView.id.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void *sub_1C5444434(void *a1)
{
  if (a1[5])
  {
    if (a1[3])
    {
      __swift_destroy_boxed_opaque_existential_0(a1);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](a1[10]);
  return a1;
}

unint64_t sub_1C54444E4()
{
  v2 = qword_1EC15C698;
  if (!qword_1EC15C698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444578()
{
  v2 = qword_1EC15C6A0;
  if (!qword_1EC15C6A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C544460C()
{
  v2 = qword_1EC15C6A8;
  if (!qword_1EC15C6A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_8RemoteUI21RUIListHelperProtocol_pSg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 24)))
  {
    v2 = *(a1 + 24);
  }

  return (v2 + 1);
}

uint64_t sub_1C5444810(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5444928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    *(result + 80) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C5444B54()
{
  v2 = qword_1EC160EE0[0];
  if (!qword_1EC160EE0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC160EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444BE8()
{
  v2 = qword_1EC160FF0;
  if (!qword_1EC160FF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC160FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444C7C()
{
  v2 = qword_1EC160FF8[0];
  if (!qword_1EC160FF8[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC160FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444CF8()
{
  v2 = qword_1EC15E850;
  if (!qword_1EC15E850)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15E850);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

{
  return sub_1C5409260(a2 + 32, a1 + 32);
}

uint64_t sub_1C5444DC8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1C5596284();
      v1 = sub_1C5596734();
      sub_1C5594CF4();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1C5596284();
    return v2;
  }

  return result;
}

unint64_t sub_1C5444EB8()
{
  v2 = qword_1EC15E7D0;
  if (!qword_1EC15E7D0)
  {
    sub_1C5596284();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E7D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5444F38()
{
  v2 = qword_1EC15E7E0;
  if (!qword_1EC15E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15F310, &unk_1C55B69D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15E7E0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C5444FC0(void *a1, void *a2)
{
  if (a1[3])
  {
    v2 = a1[3];
    a2[3] = v2;
    a2[4] = a1[4];
    (**(v2 - 8))();
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

BOOL sub_1C5445054(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      default:
        v4 = 6;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      default:
        v3 = 6;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1C54453EC()
{
  v2 = qword_1EC15C6B0;
  if (!qword_1EC15C6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C544555C()
{
  *(v0 + 16) = v0;
  sub_1C544DD74();
  swift_allocError();
  *v1 = 5;
  swift_willThrow();
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_1C54456BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1E69E5928](a4, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a4;
  v11 = (*(v4 + 96))(a1, a2, a3, &unk_1C55AF398);

  return v11;
}

uint64_t sub_1C54457B0(uint64_t a1, uint64_t a2)
{
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = a2;
  v3 = swift_task_alloc();
  *(v5 + 40) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5445888;

  return sub_1C54484CC(a2);
}

uint64_t sub_1C5445888(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 16) = *v2;
  v8 = v7 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_1C5445A40()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5445B04;

  return sub_1C54457B0(v6, v5);
}

uint64_t sub_1C5445B04(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

id sub_1C5445CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v65 = MEMORY[0x1E69E85E0];
  v66 = &unk_1C55AF3B0;
  v67 = sub_1C5448428;
  v68 = "Fatal error";
  v69 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v70 = "AppleAccountUI/SpinnerProgressView.swift";
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v84 = 0;
  v76 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v75, v71, v72, v73);
  v77 = &v37 - v76;
  v101 = v6;
  v99 = v7;
  v100 = v8;
  v97 = v9;
  v98 = v10;
  v96 = v5;
  v80 = &v95;
  v95 = v6;
  v78 = &v94;
  v94 = 0;
  v79 = type metadata accessor for SpinnerProgressViewType(0);
  v81 = sub_1C54465D0();
  if (sub_1C5596E24())
  {
    v11 = sub_1C55965F4("SIGN_IN_PROGRESS_INDICATOR_LABEL", 32, 1);
    v60 = v12;
    v61 = sub_1C54637B4(v11, v12);
    v62 = v13;

    v63 = v61;
    v64 = v62;
  }

  else
  {
    v14 = sub_1C55965F4("SIGN_OUT_PROGRESS_INDICATOR_LABEL", 33, 1);
    v57 = v15;
    v58 = sub_1C54637B4(v14, v15);
    v59 = v16;

    v63 = v58;
    v64 = v59;
  }

  v48 = v64;
  v47 = v63;
  v92 = v63;
  v93 = v64;
  v50 = 0;
  type metadata accessor for SpinnerProgressView.Model(0);
  sub_1C5594CF4();
  sub_1C5594CF4();
  v51 = sub_1C54466C4(v71, v72, v47, v48, 1uLL);
  v91 = v51;
  sub_1C55967F4();
  v17 = *(*(sub_1C5596814() - 8) + 56);
  v55 = 1;
  v17(v77, 0);

  sub_1C55967E4();
  v49 = sub_1C55967D4();
  v18 = swift_allocObject();
  v19 = v65;
  v20 = v73;
  v21 = v74;
  v22 = v50;
  v23 = v77;
  v24 = v66;
  v25 = v18;
  v26 = v51;
  v25[2] = v49;
  v25[3] = v19;
  v25[4] = v20;
  v25[5] = v21;
  v25[6] = v26;
  sub_1C54061EC(v22, v22, v23, v24, v25, MEMORY[0x1E69E7CA8] + 8);

  v52 = sub_1C5448430(v67, v51);
  v53 = v27;
  v54 = v28;
  v88 = v52;
  v89 = v27;
  v90 = v28 & 1 & v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6C0, &qword_1C55AF3B8);
  sub_1C544844C();
  v85 = v52;
  v86 = v53;
  v87 = v54 & 1 & v55;
  v56 = sub_1C5595484();
  v84 = v56;
  v83 = v75;
  v82 = 0;
  if (sub_1C5596E24())
  {
    *&v30 = MEMORY[0x1E69E5928](v56, v29).n128_u64[0];
    v46 = [v56 view];
    *&v31 = MEMORY[0x1E69E5920](v56).n128_u64[0];
    if (v46)
    {
      v45 = v46;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v44 = v45;
    sub_1C55965F4("SIGN_IN_SPINNER_VIEW", 20, 1, v31);
    v42 = v32;
    v43 = sub_1C5596554();

    [v44 setAccessibilityIdentifier_];
    MEMORY[0x1E69E5920](v43);
    MEMORY[0x1E69E5920](v44);
  }

  else
  {
    *&v33 = MEMORY[0x1E69E5928](v56, v29).n128_u64[0];
    v41 = [v56 view];
    *&v34 = MEMORY[0x1E69E5920](v56).n128_u64[0];
    if (v41)
    {
      v40 = v41;
    }

    else
    {
      sub_1C5596C94();
      __break(1u);
    }

    v39 = v40;
    sub_1C55965F4("SIGN_OUT_SPINNER_VIEW", 21, 1, v34);
    v37 = v35;
    v38 = sub_1C5596554();

    [v39 setAccessibilityIdentifier_];
    MEMORY[0x1E69E5920](v38);
    MEMORY[0x1E69E5920](v39);
  }

  sub_1C544848C(v52, v53);

  return v56;
}

unint64_t type metadata accessor for SpinnerProgressViewType(uint64_t a1)
{
  v5 = qword_1EC15C768;
  if (!qword_1EC15C768)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15C768);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1C54465D0()
{
  v2 = qword_1EC15C6B8;
  if (!qword_1EC15C6B8)
  {
    type metadata accessor for SpinnerProgressViewType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15C6B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SpinnerProgressView.Model(uint64_t a1)
{
  v2 = qword_1EC1614F0;
  if (!qword_1EC1614F0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1C5446730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a6;
  v6[9] = a5;
  v6[8] = a4;
  v6[4] = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[5] = 0;
  v6[7] = 0;
  v6[2] = a4;
  v6[3] = a5;
  v6[5] = a6;
  v6[11] = sub_1C55967E4();
  v6[12] = sub_1C55967D4();
  v6[13] = sub_1C55967A4();
  v6[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1C544681C);
}

uint64_t sub_1C544681C()
{
  v4 = v0[9];
  v3 = v0[8];
  v0[4] = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D8, &qword_1C55AFA40);
  v0[15] = sub_1C55967D4();

  v6 = swift_task_alloc();
  v0[16] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v1 = swift_task_alloc();
  *(v5 + 136) = v1;
  *v1 = *(v5 + 32);
  v1[1] = sub_1C5446984;

  return MEMORY[0x1EEE6DBF8](v5 + 48, v7);
}

uint64_t sub_1C5446984()
{
  *(*v0 + 32) = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C5446B24);
}

uint64_t sub_1C5446B24()
{
  v0[4] = v0;
  v1 = v0[6];
  v0[7] = v1;
  sub_1C544835C(v1);

  v2 = *(v0[4] + 8);

  return v2();
}

uint64_t sub_1C5446BD8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C5446730(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_1C5446CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v4[11] = a3;
  v4[10] = a2;
  v4[9] = a1;
  v4[4] = v4;
  v4[5] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[7] = 0;
  v4[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0);
  v4[13] = swift_task_alloc();
  v4[5] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v4[14] = sub_1C55967E4();
  v4[15] = sub_1C55967D4();
  v4[16] = sub_1C55967A4();
  v4[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5446E14);
}

uint64_t sub_1C5446E14()
{
  v12 = MEMORY[0x1E69E85E0];
  v9 = v0[13];
  v8 = v0[12];
  v7 = v0[11];
  v0[4] = v0;
  v5 = sub_1C5596814();
  v6 = *(*(v5 - 8) + 56);
  v6(v9, 1);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7E0, &qword_1C55AFA68);
  sub_1C5447BA4(v9, &unk_1C55AFA60, v4, v13);
  sub_1C5408CA0(v9);
  (v6)(v9, 1, 1, v5);

  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v7;
  v1[5] = v8;
  sub_1C5447BA4(v9, &unk_1C55AFA78, v1, v13);
  sub_1C5408CA0(v9);
  v11 = sub_1C55967D4();
  v0[18] = v11;
  v2 = swift_task_alloc();
  *(v10 + 152) = v2;
  *v2 = *(v10 + 32);
  v2[1] = sub_1C5447070;

  return MEMORY[0x1EEE6D8A0](v10 + 48, v11, v12, v13);
}

uint64_t sub_1C5447070()
{
  *(*v0 + 32) = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1C54471D0);
}

uint64_t sub_1C54471D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = v2;
  v8 = *(v2 + 48);
  if (v8 != 3)
  {
    v7[7] = v8;
    sub_1C5450ACC(v8, a2);
    if (v8 != 2)
    {
      v6 = v7[9];
      v7[8] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D8, &qword_1C55AFA40);
      sub_1C55967C4();
      sub_1C544DC88(v8, v3);
      *v6 = v8;
      sub_1C544DCCC(v8);
      sub_1C5450B04(v8);
      goto LABEL_6;
    }

    sub_1C5450B04(2uLL);
  }

  *v7[9] = 0;
LABEL_6:

  v4 = *(v7[4] + 8);

  return v4();
}

uint64_t sub_1C5447394(uint64_t a1)
{
  v1[8] = a1;
  v1[7] = v1;
  v2 = sub_1C5596C44();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C5447470);
}

uint64_t sub_1C5447470()
{
  *(v0 + 56) = v0;
  v1 = sub_1C54478A8();
  v2 = v1[1];
  *(v0 + 40) = *v1;
  *(v0 + 48) = v2;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v8 = sub_1C5450C30();
  sub_1C5447908();
  v3 = swift_task_alloc();
  v7[12] = v3;
  *v3 = v7[7];
  v3[1] = sub_1C54475B8;
  v4 = v7[11];
  v5 = v7[9];

  return sub_1C544792C(v0 + 40, v0 + 16, v4, v5, v8);
}

uint64_t sub_1C54475B8()
{
  v4 = *v1;
  v4[7] = *v1;
  v4[13] = v0;

  if (v0)
  {
    v2 = sub_1C54477E4;
  }

  else
  {
    (*(v4[10] + 8))(v4[11], v4[9]);
    v2 = sub_1C5447750;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C5447750()
{
  *(v0 + 56) = v0;
  **(v0 + 64) = 2;

  v1 = *(*(v0 + 56) + 8);

  return v1();
}

uint64_t sub_1C54477E4()
{
  v6 = *(v0 + 104);
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  *(v0 + 56) = v0;
  (*(v2 + 8))(v1, v3);

  **(v0 + 64) = 2;

  v4 = *(*(v0 + 56) + 8);

  return v4();
}

uint64_t *sub_1C54478A8()
{
  if (qword_1EC161100 != -1)
  {
    swift_once();
  }

  return &qword_1EC161108;
}

uint64_t sub_1C544792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1C5447A18;

  return sub_1C54502C4(a1, a2, a4, a5);
}

uint64_t sub_1C5447A18()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1C5447BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v38 = &unk_1C55AFA88;
  v40 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860, &qword_1C55AE2A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v4, v5, v6);
  v41 = &v15 - v40;
  sub_1C5408B78(v7, &v15 - v40);
  v42 = sub_1C5596814();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  if ((*(v43 + 48))(v41, 1) == 1)
  {
    sub_1C5408CA0(v41);
    v33 = 0;
  }

  else
  {
    v32 = sub_1C5596804();
    (*(v43 + 8))(v41, v42);
    v33 = v32;
  }

  v29 = v33 | 0x3100;
  v31 = *(v35 + 16);
  v30 = *(v35 + 24);
  swift_unknownObjectRetain();
  if (v31)
  {
    v27 = v31;
    v28 = v30;
    v21 = v30;
    v22 = v31;
    swift_getObjectType();
    v23 = sub_1C55967A4();
    v24 = v8;
    swift_unknownObjectRelease();
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v17 = v26;
  v16 = v25;
  v15 = *v37;

  v9 = swift_allocObject();
  v10 = v34;
  v11 = v35;
  v12 = v16;
  v13 = v17;
  v18 = v9;
  v19 = *(v36 + 16);
  v48[4] = v19;
  v9[2] = v19;
  v9[3] = v10;
  v9[4] = v11;
  v20 = 0;
  if (v12 != 0 || v13 != 0)
  {
    v48[0] = 0;
    v48[1] = 0;
    v48[2] = v16;
    v48[3] = v17;
    v20 = v48;
  }

  v45 = 1;
  v46 = v20;
  v47 = v15;
  swift_task_create();
}

uint64_t sub_1C5447F00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[8] = a5;
  v5[7] = a1;
  v5[4] = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[2] = a4;
  v5[3] = a5;

  v10 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v9 + 72) = v6;
  *v6 = *(v9 + 32);
  v6[1] = sub_1C5448044;

  return v10();
}

uint64_t sub_1C5448044(uint64_t a1)
{
  v5 = *v2;
  v5[4] = *v2;
  v5[10] = a1;
  v5[11] = v1;

  if (v1)
  {
    v3 = sub_1C544828C;
  }

  else
  {
    v3 = sub_1C54481B4;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1C54481B4()
{
  v6 = v0[10];
  v5 = v0[7];
  v0[4] = v0;
  v0[6] = v6;

  MEMORY[0x1E69E5928](v6, v1);
  *v5 = v6;
  v2 = MEMORY[0x1E69E5920](v6);
  v3 = *(v0[4] + 8);

  return v3(v2);
}

uint64_t sub_1C544828C()
{
  v5 = v0[11];
  v4 = v0[7];
  v0[4] = v0;

  v1 = v5;
  v0[5] = v5;
  *v4 = 0;

  v2 = *(v0[4] + 8);

  return v2();
}

double sub_1C544835C(unint64_t a1)
{

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_1C544DC88(a1, KeyPath);
  sub_1C5594E94();
  return sub_1C544DCCC(a1);
}

uint64_t sub_1C54484CC(uint64_t a1)
{
  v2[35] = a1;
  v2[27] = v2;
  v2[28] = 0;
  v2[29] = 0;
  v2[30] = 0;
  v2[31] = 0;
  v2[32] = 0;
  v2[25] = 0;
  v2[26] = 0;
  v2[33] = 0;
  v2[34] = 0;
  v2[28] = a1;
  v2[29] = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5448538);
}

uint64_t sub_1C5448538()
{
  v7 = v0[35];
  v0[27] = v0;
  sub_1C544DD10();
  MEMORY[0x1E69E5928](v7, v1);
  v8 = sub_1C5449240(v7);
  v0[36] = v8;
  if (v8)
  {
    *(v6 + 240) = v8;
    *(v6 + 16) = *(v6 + 216);
    *(v6 + 56) = v6 + 184;
    *(v6 + 24) = sub_1C5448780;
    v5 = swift_continuation_init();
    *(v6 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C6D8, &qword_1C55AF410);
    *(v6 + 112) = v5;
    *(v6 + 80) = MEMORY[0x1E69E9820];
    *(v6 + 88) = 1107296256;
    *(v6 + 92) = 0;
    *(v6 + 96) = sub_1C5449280;
    *(v6 + 104) = &block_descriptor_4;
    [v8 performRequestWithHandler_];

    return MEMORY[0x1EEE6DEC8](v6 + 16);
  }

  else
  {
    sub_1C544DD74();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
    v3 = *(*(v6 + 216) + 8);

    return v3();
  }
}

uint64_t sub_1C5448780()
{
  v4 = *v0;
  v4[27] = *v0;
  v1 = v4[6];
  v4[37] = v1;
  if (v1)
  {
    v2 = sub_1C544917C;
  }

  else
  {
    v2 = sub_1C54488D8;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1C54488D8()
{
  v0[27] = v0;
  v1 = v0[23];
  v47 = v0[24];
  v0[31] = v47;
  MEMORY[0x1E69E5920](v1);
  MEMORY[0x1E69E5928](v47, v2);
  if (v47)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v44 = v45;
    }

    else
    {
      MEMORY[0x1E69E5920](v47);
      v44 = 0;
    }

    v43 = v44;
  }

  else
  {
    v43 = 0;
  }

  if (v43)
  {
    v46[32] = v43;
    v42 = [v43 photoData];
    if (v42)
    {
      v38 = sub_1C55948D4();
      v39 = v3;
      MEMORY[0x1E69E5920](v42);
      v40 = v38;
      v41 = v39;
    }

    else
    {
      v40 = 0;
      v41 = 0xF000000000000000;
    }

    if ((v41 & 0xF000000000000000) == 0xF000000000000000)
    {
      v21 = v46[36];
      sub_1C544DD74();
      swift_allocError();
      *v17 = 2;
      swift_willThrow();
      MEMORY[0x1E69E5920](v43);
      MEMORY[0x1E69E5920](v47);
      v12 = MEMORY[0x1E69E5920](v21);
    }

    else
    {
      v46[25] = v40;
      v46[26] = v41;
      sub_1C5418C84();
      sub_1C544DE30(v40, v41);
      v4 = sub_1C54493D0(v40, v41);
      v37 = v4;
      if (v4)
      {
        v46[33] = v4;
        v5 = [v43 cropRect];
        v36 = v5;
        if (v5)
        {
          [v5 CGRectValue];
          v27 = v6;
          v28 = v7;
          v29 = v8;
          v30 = v9;
          MEMORY[0x1E69E5920](v36);
          v31 = v27;
          v32 = v28;
          v33 = v29;
          v34 = v30;
          v35 = 0;
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 1;
        }

        v46[18] = v31;
        v46[19] = v32;
        v46[20] = v33;
        v46[21] = v34;
        *(v46 + 176) = v35 & 1;
        v10 = sub_1C5449418(1);
        v11 = sub_1C5449460(v46 + 18, v10);
        v26 = v11;
        if (v11)
        {
          v25 = v46[36];
          v46[34] = v11;
          MEMORY[0x1E69E5920](v37);
          sub_1C544DEAC(v40, v41);
          MEMORY[0x1E69E5920](v43);
          MEMORY[0x1E69E5920](v47);
          v12 = MEMORY[0x1E69E5920](v25);
          v13 = v26;
          v14 = *(v46[27] + 8);

          return v14(v13, v12);
        }

        v24 = v46[36];
        sub_1C544DD74();
        swift_allocError();
        *v15 = 4;
        swift_willThrow();
        MEMORY[0x1E69E5920](v37);
        sub_1C544DEAC(v40, v41);
        MEMORY[0x1E69E5920](v43);
        MEMORY[0x1E69E5920](v47);
        v12 = MEMORY[0x1E69E5920](v24);
      }

      else
      {
        v22 = v46[36];
        sub_1C544DD74();
        swift_allocError();
        *v16 = 3;
        swift_willThrow();
        sub_1C544DEAC(v40, v41);
        MEMORY[0x1E69E5920](v43);
        MEMORY[0x1E69E5920](v47);
        v12 = MEMORY[0x1E69E5920](v22);
      }
    }
  }

  else
  {
    v20 = v46[36];
    sub_1C544DD74();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    MEMORY[0x1E69E5920](v47);
    v12 = MEMORY[0x1E69E5920](v20);
  }

  v13 = v23;
  v14 = *(v46[27] + 8);

  return v14(v13, v12);
}

uint64_t sub_1C544917C()
{
  v4 = *(v0 + 288);
  *(v0 + 216) = v0;
  swift_willThrow();
  v1 = MEMORY[0x1E69E5920](v4);
  v2 = *(*(v0 + 216) + 8);

  return v2(v5, v1);
}

double sub_1C5449280(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  MEMORY[0x1E69E5928](a2, a2);
  MEMORY[0x1E69E5928](a3, v4);
  MEMORY[0x1E69E5928](a4, v5);
  v16 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v10 = a4;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D0, qword_1C55AFA28);
    sub_1C542501C(v16, a4, v11);
  }

  else
  {
    MEMORY[0x1E69E5928](a2, v6);
    v17[0] = a2;
    MEMORY[0x1E69E5928](a3, v7);
    v17[1] = a3;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C7D0, qword_1C55AFA28);
    sub_1C5425080(v16, v17, v8);
  }

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

double sub_1C5449418(char a1)
{
  if (a1)
  {
    return 100.0;
  }

  else
  {
    return 400.0;
  }
}

uint64_t sub_1C5449460(void *__src, double a2)
{
  v31[1] = 0;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v27 = 0;
  *&v31[3] = a2;
  v31[2] = __src;
  memcpy(__dst, __src, 0x21uLL);
  if (LOBYTE(__dst[4]))
  {
    MEMORY[0x1E69E5928](v19, v2);
    MEMORY[0x1E69E5928](v19, v4);
    v31[0] = v19;
    v17 = v19;
  }

  else
  {
    v16 = sub_1C5449944(__dst[0], __dst[1], __dst[2], __dst[3]);
    MEMORY[0x1E69E5928](v16, v3);
    v31[0] = v16;
    v17 = v16;
  }

  if (!v17)
  {
    sub_1C5401EF8(v31);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v30 = v17;
  v28 = 0uLL;
  *&v29 = a2;
  *(&v29 + 1) = a2;
  sub_1C544DF28();
  v12 = sub_1C544A32C(a2, a2);
  v27 = v12;
  MEMORY[0x1E69E5928](v17, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a2;
  *(v11 + 48) = v17;

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C544DF8C;
  *(v10 + 24) = v11;

  v25 = sub_1C544DFA4;
  v26 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1C544A504;
  v24 = &block_descriptor_17;
  v13 = _Block_copy(&aBlock);

  v14 = [v12 imageWithActions_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v17);
    sub_1C5401EF8(v31);
    v7 = v14;
    v8 = sub_1C544DF8C;
    v9 = v11;
LABEL_8:
    sub_1C5411348(v8, v9);
    sub_1C5411348(0, 0);
    return v7;
  }

  __break(1u);
  return result;
}

id SpinnerProgressViewShim.init()()
{
  v4 = 0;
  v3.receiver = 0;
  v3.super_class = type metadata accessor for SpinnerProgressViewShim();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x1E69E5928](v2, v0);
  v4 = v2;
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id SpinnerProgressViewShim.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpinnerProgressViewShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5449944(double a1, double a2, double a3, double a4)
{
  if (sub_1C5449B2C(a1, a2, a3, a4))
  {
    MEMORY[0x1E69E5928](v15, v4);
    return v15;
  }

  else
  {
    v10 = [v15 CGImage];
    if (v10)
    {
      sub_1C5449B6C(v15, a1, a2, a3, a4);
      v9 = CGImageCreateWithImageInRect(v10, v16);
      if (v9)
      {
        sub_1C5418C84();
        [v15 scale];
        v7 = sub_1C544A2DC(v9, [v15 imageOrientation], v5);
        MEMORY[0x1E69E5920](v10);
        return v7;
      }

      else
      {
        MEMORY[0x1E69E5920](v10);
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

void sub_1C5449B6C(void *a1, double a2, double a3, double a4, double a5)
{
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v31 = a1;
  v29 = v24;
  v30 = v25;
  __src[0] = 1.0;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = 1.0;
  __src[4] = 0;
  __src[5] = 0;
  memcpy(__b, __src, sizeof(__b));
  v27 = [v31 imageOrientation];
  if (!v27)
  {
    goto LABEL_9;
  }

  if (v27 == 1)
  {
    goto LABEL_14;
  }

  if (v27 == 2)
  {
LABEL_13:
    sub_1C544A0B4(v34, 1.57079633);
    memcpy(__b, v34, sizeof(__b));
    [a1 size];
    v16 = v7;
    [a1 scale];
    sub_1C544A160(v35, 0.0, -(v16 * v8));
    memcpy(__b, v35, sizeof(__b));
    v18 = v35[0];
    v19 = v35[1];
    v20 = v35[2];
    v21 = v35[3];
    v22 = v35[4];
    v23 = v35[5];
    goto LABEL_15;
  }

  if (v27 == 3)
  {
LABEL_12:
    sub_1C544A0B4(v32, -1.57079633);
    memcpy(__b, v32, sizeof(__b));
    [a1 size];
    v17 = v5;
    [a1 scale];
    sub_1C544A160(v33, -(v17 * v6), 0.0);
    memcpy(__b, v33, sizeof(__b));
    v18 = v33[0];
    v19 = v33[1];
    v20 = v33[2];
    v21 = v33[3];
    v22 = v33[4];
    v23 = v33[5];
    goto LABEL_15;
  }

  if (v27 == 4)
  {
    goto LABEL_9;
  }

  if (v27 == 5)
  {
LABEL_14:
    sub_1C544A0B4(v36, 3.14159265);
    memcpy(__b, v36, sizeof(__b));
    [a1 0x1FAD1B1F8];
    v13 = v9;
    [a1 0x1FB0CAB78];
    v15 = -(v13 * v10);
    [a1 0x1FAD1B1F8];
    v14 = v11;
    [a1 0x1FB0CAB78];
    sub_1C544A160(v37, v15, -(v14 * v12));
    memcpy(__b, v37, sizeof(__b));
    v18 = v37[0];
    v19 = v37[1];
    v20 = v37[2];
    v21 = v37[3];
    v22 = v37[4];
    v23 = v37[5];
    goto LABEL_15;
  }

  if (v27 == 6)
  {
    goto LABEL_13;
  }

  if (v27 == 7)
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = 1.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 1.0;
  v22 = 0.0;
  v23 = 0.0;
LABEL_15:
  *v38 = v18;
  *&v38[1] = v19;
  *&v38[2] = v20;
  *&v38[3] = v21;
  *&v38[4] = v22;
  *&v38[5] = v23;
  sub_1C544A214(v38, *&v24, *(&v24 + 1), *&v25, *(&v25 + 1));
}

CGFloat sub_1C544A0B4@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>)
{
  memcpy(&__dst, v2, sizeof(__dst));
  v11 = __dst;
  CGAffineTransformRotate(&v10, &v11, a2);
  b = v10.b;
  c = v10.c;
  d = v10.d;
  tx = v10.tx;
  result = v10.ty;
  *a1 = v10.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = tx;
  a1[5] = result;
  return result;
}

CGFloat sub_1C544A160@<D0>(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  memcpy(&__dst, v3, sizeof(__dst));
  v13 = __dst;
  CGAffineTransformTranslate(&v12, &v13, a2, a3);
  b = v12.b;
  c = v12.c;
  d = v12.d;
  v7 = v12.tx;
  result = v12.ty;
  *a1 = v12.a;
  a1[1] = b;
  a1[2] = c;
  a1[3] = d;
  a1[4] = v7;
  a1[5] = result;
  return result;
}

void sub_1C544A214(void *__src, double a2, double a3, double a4, double a5)
{
  *v5 = a2;
  *&v5[8] = a3;
  *&v5[16] = a4;
  *&v5[24] = a5;
  memcpy(&__dst, __src, sizeof(__dst));
  v7 = *v5;
  v6 = __dst;
  CGRectApplyAffineTransform(*v5, &v6);
}

id sub_1C544A374(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_1C5450260();
  v7 = sub_1C544A458(a1, a2, a3, a4);
  [v7 addClip];
  MEMORY[0x1E69E5920](v7);
  return [a6 drawInRect_];
}

id sub_1C544A458(double a1, double a2, double a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() bezierPathWithOvalInRect_];

  return v4;
}

double sub_1C544A504(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v2 = MEMORY[0x1E69E5928](a2, a2);
  v4(a2, v2);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C544A56C(uint64_t a1, uint64_t a2)
{

  type metadata accessor for SpinnerProgressView.Model(0);
  sub_1C544E03C();
  v3 = sub_1C5595054();

  return v3;
}