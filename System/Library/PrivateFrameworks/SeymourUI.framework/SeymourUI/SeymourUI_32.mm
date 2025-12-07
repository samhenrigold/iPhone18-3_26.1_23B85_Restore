uint64_t sub_20B8ACE68(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = swift_projectBox();
  v7 = sub_20C135734();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a1, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  swift_beginAccess();
  return sub_20B88109C(v5, v6);
}

void sub_20B8ACF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, void (*a7)(char *, char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(char *, char *, uint64_t), void (*a12)(char *, uint64_t))
{
  v96 = a7;
  v95 = a6;
  v98 = a5;
  v94 = a4;
  v99 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v87 - v17;
  v101 = sub_20C134014();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_20C134F24();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v90 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v102 = &v87 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  MEMORY[0x28223BE20](v22 - 8);
  v97 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v87 - v25;
  v26 = sub_20C132E94();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C135734();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = swift_projectBox();
  swift_beginAccess();
  if (!*(a1 + 16))
  {
    v39 = sub_20C133C44();
    sub_20B8AE5C0();
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D50318], v39);
    swift_willThrow();
    return;
  }

  v89 = a8;
  v35 = *(a1 + 24);
  swift_beginAccess();
  if ((*(v31 + 48))(v34, 1, v30))
  {

    v36 = v104;
    v37 = v106;
    v38 = v35;
  }

  else
  {
    (*(v31 + 16))(v33, v34, v30);

    sub_20C132E84();
    v41 = sub_20C135704();
    (*(v27 + 8))(v29, v26);
    (*(v31 + 8))(v33, v30);
    v36 = v104;
    v37 = v106;
    v38 = v35;
    if (v41)
    {
      v42 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0, &unk_20C15FC38);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14F980;
  v43 = *MEMORY[0x277D54790];
  *(v42 + 32) = *MEMORY[0x277D54790];
  v44 = v43;
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    v47 = v100;
    v48 = v101;
    (*(v100 + 16))(v37, v95, v101);
    (*(v47 + 56))(v37, 0, 1, v48);
    v49 = *MEMORY[0x277D51418];
    v50 = *(v103 + 104);
    v95 = v103 + 104;
    v88 = v50;
    v50(v102, v49, v36);
    v51 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v52 = sub_20C13CC54();
    sub_20B51C88C(0, &qword_27C7670A8, 0x277D546C8);
    v99 = v38;
    v53 = sub_20C13CC54();
    v54 = [v51 initWithActivityItems:v52 applicationActivities:v53];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0, &unk_20C15FC38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    v56 = *MEMORY[0x277D54778];
    v57 = *MEMORY[0x277D54718];
    *(inited + 32) = *MEMORY[0x277D54778];
    *(inited + 40) = v57;
    v58 = *MEMORY[0x277D54780];
    *(inited + 48) = *MEMORY[0x277D54780];
    v59 = qword_27C760900;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    if (v59 != -1)
    {
      swift_once();
    }

    v108 = qword_27C79B2E0;

    sub_20B8DA2C0(inited);
    sub_20B8DA2C0(v42);
    type metadata accessor for ActivityType(0);
    v63 = sub_20C13CC54();

    [v54 setExcludedActivityTypes_];

    v64 = [v54 popoverPresentationController];
    if (v64)
    {
      v65 = &selRef_setSourceView_;
      if ((v98 & 1) == 0)
      {
        v65 = &selRef_setBarButtonItem_;
      }

      v66 = v64;
      [v64 *v65];
    }

    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = v89;
    aBlock[5] = v67;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B8AE2E8;
    aBlock[3] = a9;
    v68 = _Block_copy(aBlock);

    [v54 setCompletionWithItemsHandler_];
    _Block_release(v68);
    v69 = [v46 navigationController];
    v70 = v106;
    v71 = v101;
    v72 = v100;
    if (v69)
    {
      v73 = v69;
      [v69 presentViewController:v54 animated:1 completion:0];
    }

    v74 = v97;
    sub_20B8AE624(v70, v97);
    if ((*(v72 + 48))(v74, 1, v71) == 1)
    {
      sub_20B520158(v74, &unk_27C769C20, &unk_20C15C0F0);
      v75 = sub_20C136664();
      v76 = v93;
      (*(*(v75 - 8) + 56))(v93, 1, 1, v75);
      v77 = v90;
      v78 = v104;
      v88(v90, *MEMORY[0x277D51390], v104);
      a12(v77, v76);

      v79 = *(v103 + 8);
      v79(v77, v78);
      sub_20B520158(v76, &unk_27C7622E0, &unk_20C14FCF0);
      v79(v102, v78);
      v80 = v106;
    }

    else
    {
      v96 = a11;
      v81 = v91;
      (*(v72 + 32))(v91, v74, v71);
      v82 = sub_20C136664();
      v83 = *(v82 - 8);
      v84 = MEMORY[0x277D52B28];
      if ((v98 & 1) == 0)
      {
        v84 = MEMORY[0x277D52B30];
      }

      v85 = v92;
      (*(*(v82 - 8) + 104))(v92, *v84, v82);
      (*(v83 + 56))(v85, 0, 1, v82);
      v86 = v102;
      v96(v81, v102, v85);

      sub_20B520158(v85, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v72 + 8))(v81, v71);
      (*(v103 + 8))(v86, v104);
      v80 = v106;
    }

    sub_20B520158(v80, &unk_27C769C20, &unk_20C15C0F0);
  }

  else
  {
  }
}

double sub_20B8ADBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v48 = a7;
  v42 = a6;
  v45 = a5;
  v46 = a4;
  v51 = a3;
  v9 = sub_20C134F24();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v40 - v12;
  v13 = sub_20C132E94();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C135734();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_projectBox();
  swift_beginAccess();
  v22 = *(a1 + 16);
  if (!v22)
  {
    v25 = sub_20C133C44();
    sub_20B8AE5C0();
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D50318], v25);
    swift_willThrow();
    return result;
  }

  v23 = *(a1 + 24);
  swift_beginAccess();
  v24 = (*(v18 + 48))(v21, 1, v17);
  v41 = v23;
  if (v24)
  {
  }

  else
  {
    (*(v18 + 16))(v20, v21, v17);

    sub_20C132E84();
    v28 = sub_20C135704();
    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v20, v17);
    if (v28)
    {
      v29 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670A0, &unk_20C15FC38);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C14F980;
  v30 = *MEMORY[0x277D54790];
  *(v29 + 32) = *MEMORY[0x277D54790];
  v31 = v30;
LABEL_8:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = sub_20C134014();
    v35 = *(v34 - 8);
    v36 = v43;
    (*(v35 + 16))(v43, v42, v34);
    (*(v35 + 56))(v36, 0, 1, v34);
    v38 = v49;
    v37 = v50;
    v39 = v47;
    (*(v49 + 104))(v47, *MEMORY[0x277D51418], v50);
    sub_20B8AC580(v22, v41, v46, v45 & 1, v36, v39, v29, v48, v44);

    (*(v38 + 8))(v39, v37);
    sub_20B520158(v36, &unk_27C769C20, &unk_20C15C0F0);
  }

  else
  {
  }

  return result;
}

void sub_20B8AE154(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20 - v13;
  if ((a2 & 1) != 0 && a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      v16 = *(a7 + 32);
      v17 = Strong;
      v18 = a1;
      v16(a6, a7);

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_20BD95868(v18, AssociatedTypeWitness, AssociatedConformanceWitness);

      (*(v12 + 8))(v14, AssociatedTypeWitness);
    }
  }
}

double sub_20B8AE2E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  if (a4)
  {
    v9 = sub_20C13CC74();
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = a5;
  v8(a2, a3, v9, a5);

  return result;
}

uint64_t sub_20B8AE3F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v5;
  v7[5] = v6;

  return sub_20C137C94();
}

double sub_20B8AE538()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_20C134014() - 8);
  return sub_20B8ADBF0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + ((*(v3 + 80) + 65) & ~*(v3 + 80)), v1, v2);
}

unint64_t sub_20B8AE5C0()
{
  result = qword_27C7662C8;
  if (!qword_27C7662C8)
  {
    sub_20C133C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7662C8);
  }

  return result;
}

uint64_t sub_20B8AE624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20B8AE694(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  *&v7 = v8;
  BYTE8(v7) = 0;
  a1(&v7);

  sub_20B583FB8(v6, 0);
}

uint64_t objectdestroy_82Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20B8AE9C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

double sub_20B8AEB0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_20B8AEB6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_20B8AEC00;
}

void sub_20B8AEC00(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t CatalogTipDataProvider.__allocating_init(dependencies:)(uint64_t a1)
{
  swift_allocObject();
  v1 = sub_20B8B3184();

  return v1;
}

uint64_t CatalogTipDataProvider.init(dependencies:)(uint64_t a1)
{
  v1 = sub_20B8B3184();

  return v1;
}

double sub_20B8AED04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_20C13CDF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_20B6383D0(0, 0, v3, &unk_20C15FC50, v5);

  return result;
}

uint64_t sub_20B8AEE0C()
{
  v1 = v0[7];
  if (*(v1 + 32))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + 32) = 1;
    swift_getObjectType();
    sub_20C13BAE4();
    swift_allocObject();
    swift_weakInit();
    sub_20B8B3598();

    sub_20C13A794();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_20B8AEFB4;

    return sub_20B8AF4C8();
  }
}

uint64_t sub_20B8AEFB4()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_20B8AF0D4, v3, v2);
}

uint64_t sub_20B8AF0D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8AF134(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_20C13BB84();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8AF1F4, 0, 0);
}

uint64_t sub_20B8AF1F4()
{
  sub_20C13B4D4();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[CatalogTipDataProvider] SummaryShelfLockupDescriptorsCacheUpdated - fetching content", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_20B8AF390;

    return sub_20B8AF4C8();
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_20B8AF390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B8AF4C8()
{
  v1[15] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = sub_20C134014();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670C8, &qword_20C15FD60);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_20C135E14();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  sub_20C13CDA4();
  v1[40] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[41] = v6;
  v1[42] = v5;

  return MEMORY[0x2822009F8](sub_20B8AF780, v6, v5);
}

uint64_t sub_20B8AF780()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[15];
  sub_20C13B4D4();
  sub_20C13BB64();
  v5 = *(v3 + 8);
  v0[43] = v5;
  v0[44] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4[21];
  v7 = v4[22];
  __swift_project_boxed_opaque_existential_1(v4 + 18, v6);
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_20B8AF8A4;

  return MEMORY[0x2821AFD48](v6, v7);
}

uint64_t sub_20B8AF8A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = v4[41];
    v6 = v4[42];
    v7 = sub_20B8B069C;
  }

  else
  {
    v4[47] = a1;
    v5 = v4[41];
    v6 = v4[42];
    v7 = sub_20B8AF9CC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B8AF9CC()
{
  v56 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  sub_20B8B0BE8(v0[47], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[27];

    sub_20B520158(v4, &qword_27C7670C8, &qword_20C15FD60);
    sub_20C13B4D4();
    v5 = sub_20C13BB74();
    v6 = sub_20C13D1F4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20B517000, v5, v6, "[CatalogTipDataProvider] No tip shelf descriptors found", v7, 2u);
      MEMORY[0x20F2F6A40](v7, -1, -1);
    }

    v8 = v0[43];
    v9 = v0[35];
    v10 = v0[32];
    v11 = v0[28];
    v12 = v0[29];
    v13 = v0[24];
    v14 = v5;
    v15 = v0[21];
    v51 = v0[16];
    v53 = v0[20];

    v8(v9, v10);
    (*(v12 + 56))(v13, 1, 1, v11);
    (*(v15 + 56))(v51, 1, 1, v53);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = v0[24];
      v18 = v0[15];
      v17 = v0[16];
      v19 = *(v18 + 24);
      ObjectType = swift_getObjectType();
      (*(v19 + 8))(v18, v16, v17, ObjectType, v19);
      swift_unknownObjectRelease();
    }

    v21 = v0[24];
    v22 = v0[15];
    sub_20B520158(v0[16], &unk_27C769C20, &unk_20C15C0F0);
    sub_20B520158(v21, &qword_27C7670C8, &qword_20C15FD60);
    *(v22 + 32) = 2;

    v23 = v0[1];

    return v23();
  }

  else
  {
    v26 = v0[30];
    v25 = v0[31];
    v27 = v0[28];
    v28 = v0[29];
    (*(v28 + 32))(v25, v0[27], v27);
    sub_20C13B4D4();
    v29 = *(v28 + 16);
    v0[48] = v29;
    v0[49] = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v26, v25, v27);
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1F4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[43];
    v34 = v0[38];
    v35 = v0[32];
    v37 = v0[29];
    v36 = v0[30];
    v38 = v0[28];
    if (v32)
    {
      v54 = v0[43];
      v39 = swift_slowAlloc();
      v52 = v34;
      v40 = swift_slowAlloc();
      v55 = v40;
      *v39 = 136315138;
      v50 = v35;
      v41 = sub_20C135D64();
      v43 = v42;
      v49 = v31;
      v44 = *(v37 + 8);
      v44(v36, v38);
      v45 = sub_20B51E694(v41, v43, &v55);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_20B517000, v30, v49, "[CatalogTipDataProvider] Found tip shelf descriptor - id = %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x20F2F6A40](v40, -1, -1);
      MEMORY[0x20F2F6A40](v39, -1, -1);

      v54(v52, v50);
    }

    else
    {

      v44 = *(v37 + 8);
      v44(v36, v38);
      v33(v34, v35);
    }

    v0[50] = v44;
    v46 = swift_task_alloc();
    v0[51] = v46;
    *v46 = v0;
    v46[1] = sub_20B8AFF18;
    v47 = v0[31];
    v48 = v0[19];

    return sub_20B8B15D0(v48, v47);
  }
}

uint64_t sub_20B8AFF18()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_20B8B0930;
  }

  else
  {
    v5 = sub_20B8B0054;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B8B0054()
{
  v72 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(*(v0 + 152), &unk_27C769C20, &unk_20C15C0F0);
    sub_20C13B4D4();
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20B517000, v4, v5, "[CatalogTipDataProvider] No tip lockups found", v6, 2u);
      MEMORY[0x20F2F6A40](v6, -1, -1);
    }

    v7 = *(v0 + 344);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v10 = *(v0 + 224);
    v11 = *(v0 + 232);
    v12 = *(v0 + 200);
    v13 = v4;
    v14 = *(v0 + 168);
    v67 = *(v0 + 136);
    v69 = *(v0 + 160);

    v7(v8, v9);
    (*(v11 + 56))(v12, 1, 1, v10);
    (*(v14 + 56))(v67, 1, 1, v69);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v0 + 200);
      v16 = *(v0 + 136);
      v17 = *(v0 + 120);
      v18 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v17, v15, v16, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    v20 = *(v0 + 400);
    v21 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 200);
    v24 = *(v0 + 120);
    sub_20B520158(*(v0 + 136), &unk_27C769C20, &unk_20C15C0F0);
    sub_20B520158(v23, &qword_27C7670C8, &qword_20C15FD60);
    v20(v21, v22);
  }

  else
  {
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    (*(v28 + 32))(v25, *(v0 + 152), v27);
    sub_20C13B4D4();
    v68 = *(v28 + 16);
    v68(v26, v25, v27);
    v29 = sub_20C13BB74();
    v66 = sub_20C13D1F4();
    v30 = os_log_type_enabled(v29, v66);
    v31 = *(v0 + 344);
    v32 = *(v0 + 296);
    v33 = *(v0 + 256);
    v35 = *(v0 + 168);
    v34 = *(v0 + 176);
    v36 = *(v0 + 160);
    if (v30)
    {
      v65 = *(v0 + 296);
      v37 = swift_slowAlloc();
      v64 = v33;
      v38 = swift_slowAlloc();
      v71 = v38;
      *v37 = 136315138;
      v63 = v31;
      v39 = sub_20C133E44();
      v41 = v40;
      v70 = *(v35 + 8);
      v70(v34, v36);
      v42 = sub_20B51E694(v39, v41, &v71);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_20B517000, v29, v66, "[CatalogTipDataProvider] Found tip lockup - id = %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x20F2F6A40](v38, -1, -1);
      MEMORY[0x20F2F6A40](v37, -1, -1);

      v63(v65, v64);
    }

    else
    {

      v70 = *(v35 + 8);
      v70(v34, v36);
      v31(v32, v33);
    }

    v43 = *(v0 + 224);
    v44 = *(v0 + 232);
    v45 = *(v0 + 208);
    v46 = *(v0 + 184);
    v47 = *(v0 + 160);
    v48 = *(v0 + 168);
    v49 = *(v0 + 144);
    (*(v0 + 384))(v45, *(v0 + 248), v43);
    (*(v44 + 56))(v45, 0, 1, v43);
    v68(v49, v46, v47);
    (*(v48 + 56))(v49, 0, 1, v47);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v0 + 208);
      v51 = *(v0 + 144);
      v52 = *(v0 + 120);
      v53 = *(v52 + 24);
      v54 = swift_getObjectType();
      (*(v53 + 8))(v52, v50, v51, v54, v53);
      swift_unknownObjectRelease();
    }

    v55 = *(v0 + 400);
    v56 = *(v0 + 248);
    v57 = *(v0 + 224);
    v58 = *(v0 + 208);
    v59 = *(v0 + 184);
    v60 = *(v0 + 160);
    v24 = *(v0 + 120);
    sub_20B520158(*(v0 + 144), &unk_27C769C20, &unk_20C15C0F0);
    sub_20B520158(v58, &qword_27C7670C8, &qword_20C15FD60);
    v70(v59, v60);
    v55(v56, v57);
  }

  *(v24 + 32) = 2;

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_20B8B069C()
{
  v19 = v0;

  v1 = v0[46];
  *(v0[15] + 32) = 2;
  sub_20C13B4D4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1D4();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = v0[43];
    v5 = v0[34];
    v6 = v0[32];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = MEMORY[0x20F2F5850](v0[3], v0[4]);
    v11 = sub_20B51E694(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20B517000, v3, v4, "[CatalogTipDataProvider] Failed fetching content with error - %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    v17(v5, v6);
  }

  else
  {
    v12 = v0[43];
    v13 = v0[34];
    v14 = v0[32];

    v12(v13, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_20B8B0930()
{
  v22 = v0;
  v1 = v0[50];
  v2 = v0[31];
  v3 = v0[28];

  v1(v2, v3);
  v4 = v0[52];
  *(v0[15] + 32) = 2;
  sub_20C13B4D4();
  v5 = v4;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  if (os_log_type_enabled(v6, v7))
  {
    v20 = v0[43];
    v8 = v0[34];
    v9 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = MEMORY[0x20F2F5850](v0[3], v0[4]);
    v14 = sub_20B51E694(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20B517000, v6, v7, "[CatalogTipDataProvider] Failed fetching content with error - %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    v20(v8, v9);
  }

  else
  {
    v15 = v0[43];
    v16 = v0[34];
    v17 = v0[32];

    v15(v16, v17);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_20B8B0BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C135E14();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v15 = a2;
    v10 = *(v5 + 16);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    while (1)
    {
      v10(v8, v11, v4, v6);
      if (sub_20B8B0DA4(v8))
      {
        break;
      }

      (*(v5 + 8))(v8, v4);
      v11 += v12;
      if (!--v9)
      {
        v13 = 1;
        a2 = v15;
        return (*(v5 + 56))(a2, v13, 1, v4);
      }
    }

    a2 = v15;
    (*(v5 + 32))(v15, v8, v4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v5 + 56))(a2, v13, 1, v4);
}

uint64_t sub_20B8B0DA4(uint64_t a1)
{
  v75 = sub_20C134014();
  v68 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20C136594();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134A74();
  v5 = *(v4 - 8);
  v78 = v4;
  v79 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v67 = sub_20C13BB84();
  v11 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v63 - v15;
  MEMORY[0x28223BE20](v16);
  v63 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v77 = &v63 - v19;
  v20 = sub_20C135344();
  MEMORY[0x28223BE20](v20);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  sub_20C135D74();
  v23 = sub_20C135184();
  v25 = v24;
  if (v23 == sub_20C135184() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_20C13DFF4();

    if ((v27 & 1) == 0)
    {
      v50 = v11;
      sub_20C13B4D4();
      v51 = sub_20C13BB74();
      v52 = sub_20C13D1F4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_20B517000, v51, v52, "[CatalogTipDataProvider] Display style is tipBrick, skipping shelf", v53, 2u);
        MEMORY[0x20F2F6A40](v53, -1, -1);
      }

      (*(v50 + 8))(v13, v67);
      return 0;
    }
  }

  v65 = v11;
  sub_20C135DE4();
  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    sub_20B8B34A8(v22, MEMORY[0x277D518B0]);
    v45 = v77;
    sub_20C13B4D4();
    v46 = sub_20C13BB74();
    v47 = sub_20C13D1F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "[CatalogTipDataProvider] Content is not editorial, skipping shelf";
      goto LABEL_18;
    }

LABEL_19:

    (*(v65 + 8))(v45, v67);
    return 0;
  }

  v29 = *v22;
  v77 = *(*v22 + 16);
  if (!v77)
  {
LABEL_14:

    v45 = v64;
    sub_20C13B4D4();
    v46 = sub_20C13BB74();
    v47 = sub_20C13D1F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "[CatalogTipDataProvider] Editorial shelf does not contain a tip lockup, skipping shelf";
LABEL_18:
      _os_log_impl(&dword_20B517000, v46, v47, v49, v48, 2u);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v30 = 0;
  v76 = v29 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
  v31 = v70++;
  v71 = (v31 + 4);
  v32 = (v68 + 4);
  ++v68;
  v69 = v32;
  while (1)
  {
    if (v30 >= *(v29 + 16))
    {
      __break(1u);
      return result;
    }

    sub_20B864C34(v76 + *(v79 + 72) * v30, v10);
    sub_20B864C34(v10, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v74;
      v34 = v75;
      (*v69)(v74, v7, v75);
      v35 = sub_20C133E94();
      v37 = v36;
      v39 = v38;
      v40 = v68;
    }

    else
    {
      v33 = v72;
      v34 = v73;
      (*v71)(v72, v7, v73);
      v35 = sub_20C136574();
      v37 = v41;
      v39 = v42;
      v40 = v70;
    }

    (*v40)(v33, v34);
    v80 = v35;
    v81 = v37;
    v43 = v39 & 1;
    v82 = v39 & 1;
    v83 = 6;
    sub_20B852060();
    sub_20B8520B4();
    v44 = sub_20C133C04();
    sub_20B683084(v35, v37, v43);
    result = sub_20B8B34A8(v10, MEMORY[0x277D50C70]);
    if (v44)
    {
      break;
    }

    if (v77 == ++v30)
    {
      goto LABEL_14;
    }
  }

  sub_20C135DA4();
  v54 = sub_20C1352B4();
  v56 = v55;
  if (v54 == sub_20C1352B4() && v56 == v57)
  {

    return 1;
  }

  else
  {
    v58 = sub_20C13DFF4();

    if (v58)
    {
      return 1;
    }

    else
    {
      v59 = v63;
      sub_20C13B4D4();
      v60 = sub_20C13BB74();
      v61 = sub_20C13D1F4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_20B517000, v60, v61, "[CatalogTipDataProvider] Gallery destination is not tips, skipping shelf", v62, 2u);
        MEMORY[0x20F2F6A40](v62, -1, -1);
      }

      (*(v65 + 8))(v59, v67);
      return 0;
    }
  }
}

uint64_t sub_20B8B15D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20C13BB84();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_20C134A74() - 8);
  v3[10] = swift_task_alloc();
  v3[11] = sub_20C135344();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B1754, 0, 0);
}

uint64_t sub_20B8B1754(__n128 a1)
{
  sub_20C135DE4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v1[12];
  if (EnumCaseMultiPayload == 2)
  {
    result = *v3;
    v1[13] = result;
    v5 = *(result + 16);
    v1[14] = v5;
    if (v5)
    {
      v6 = v1[9];
      v1[15] = 0;
      if (*(result + 16))
      {
        sub_20B864C34(result + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v1[10]);
        v7 = sub_20C135D74();
        v8 = swift_task_alloc();
        v1[16] = v8;
        *v8 = v1;
        v8[1] = sub_20B8B19E0;
        v9 = v1[10];
        v10 = v1[8];

        return sub_20B8B1E2C(v10, v9, v7);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v17 = v1[2];
  }

  else
  {
    sub_20B8B34A8(v3, MEMORY[0x277D518B0]);
    sub_20C13B4D4();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "[CatalogTipDataProvider] Content is not editorial, cannot extract first lockup", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    v15 = v1[6];
    v14 = v1[7];
    v16 = v1[5];
    v17 = v1[2];

    (*(v15 + 8))(v14, v16);
  }

  v18 = sub_20C134014();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);

  v19 = v1[1];

  return v19();
}

uint64_t sub_20B8B19E0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  sub_20B8B34A8(*(v2 + 80), MEMORY[0x277D50C70]);
  if (v0)
  {

    v3 = sub_20B8B1DA0;
  }

  else
  {
    v3 = sub_20B8B1B38;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B8B1B38()
{
  v1 = v0[8];
  v2 = sub_20C134014();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v8 = v0[2];

    (*(v3 + 32))(v8, v1, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    goto LABEL_5;
  }

  v4 = v0[14];
  v5 = v0[15] + 1;
  result = sub_20B520158(v1, &unk_27C769C20, &unk_20C15C0F0);
  if (v5 == v4)
  {
    v7 = v0[2];

    (*(v3 + 56))(v7, 1, 1, v2);
LABEL_5:

    v9 = v0[1];

    return v9();
  }

  v10 = v0[15] + 1;
  v0[15] = v10;
  v11 = v0[13];
  if (v10 >= *(v11 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_20B864C34(v11 + ((*(v0[9] + 80) + 32) & ~*(v0[9] + 80)) + *(v0[9] + 72) * v10, v0[10]);
    v12 = sub_20C135D74();
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_20B8B19E0;
    v14 = v0[10];
    v15 = v0[8];

    return sub_20B8B1E2C(v15, v14, v12);
  }

  return result;
}

uint64_t sub_20B8B1DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8B1E2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 34) = a3;
  *(v4 + 40) = a1;
  v5 = sub_20C136594();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_20C134014();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = sub_20C134A74();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v7 = sub_20C13BB84();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B2030, 0, 0);
}

uint64_t sub_20B8B2030(uint64_t a1)
{
  v59 = v1;
  v2 = *(v1 + 168);
  v3 = *(v1 + 48);
  sub_20C13B4D4();
  sub_20B864C34(v3, v2);
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v1 + 160);
    v6 = *(v1 + 168);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58 = v9;
    *v8 = 136315138;
    sub_20B864C34(v6, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = *(v1 + 160);
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v1 + 128);
      v13 = *(v1 + 96);
      v14 = *(v1 + 104);
      (*(v14 + 32))(v12, v11, v13);
      v15 = sub_20C133E44();
    }

    else
    {
      v12 = *(v1 + 88);
      v13 = *(v1 + 64);
      v14 = *(v1 + 72);
      (*(v14 + 32))(v12, v11, v13);
      v15 = sub_20C136564();
    }

    v22 = v15;
    v23 = v16;
    (*(v14 + 8))(v12, v13);
    v24 = *(v1 + 200);
    v25 = *(v1 + 176);
    v26 = *(v1 + 184);
    sub_20B8B34A8(*(v1 + 168), MEMORY[0x277D50C70]);
    v27 = sub_20B51E694(v22, v23, &v58);

    *(v8 + 4) = v27;
    _os_log_impl(&dword_20B517000, v4, v5, "[CatalogTipDataProvider] Making tip lockup from lockup with id = %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    v21 = *(v26 + 8);
    v21(v24, v25);
  }

  else
  {
    v17 = *(v1 + 200);
    v18 = *(v1 + 176);
    v19 = *(v1 + 184);
    v20 = *(v1 + 168);

    sub_20B8B34A8(v20, MEMORY[0x277D50C70]);
    v21 = *(v19 + 8);
    v21(v17, v18);
  }

  sub_20B864C34(*(v1 + 48), *(v1 + 152));
  v28 = swift_getEnumCaseMultiPayload();
  v29 = *(v1 + 152);
  if (v28 == 1)
  {
    v30 = *(v1 + 128);
    v31 = *(v1 + 96);
    v32 = *(v1 + 104);
    (*(v32 + 32))(v30, v29, v31);
    v33 = sub_20C133E94();
  }

  else
  {
    v30 = *(v1 + 88);
    v31 = *(v1 + 64);
    v32 = *(v1 + 72);
    (*(v32 + 32))(v30, v29, v31);
    v33 = sub_20C136574();
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  (*(v32 + 8))(v30, v31);
  *(v1 + 16) = v36;
  *(v1 + 24) = v37;
  v38 &= 1u;
  *(v1 + 32) = v38;
  *(v1 + 33) = 6;
  sub_20B852060();
  sub_20B8520B4();
  v39 = sub_20C133C04();
  sub_20B683084(v36, v37, v38);
  if ((v39 & 1) == 0)
  {
    sub_20C13B4D4();
    v47 = sub_20C13BB74();
    v48 = sub_20C13D1D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20B517000, v47, v48, "[CatalogTipDataProvider] Reference type is not tip, skipping lockup", v49, 2u);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    v50 = *(v1 + 192);
    v51 = *(v1 + 176);

    v21(v50, v51);
    v46 = 1;
    goto LABEL_16;
  }

  sub_20B864C34(*(v1 + 48), *(v1 + 144));
  v40 = swift_getEnumCaseMultiPayload();
  v41 = *(v1 + 144);
  if (v40 == 1)
  {
    v42 = *(v1 + 120);
    v43 = *(v1 + 96);
    v44 = *(v1 + 40);
    v45 = *(*(v1 + 104) + 32);
    v45(v42, v41, v43);
    v45(v44, v42, v43);
    v46 = 0;
LABEL_16:
    (*(*(v1 + 104) + 56))(*(v1 + 40), v46, 1, *(v1 + 96));

    v52 = *(v1 + 8);

    return v52();
  }

  (*(*(v1 + 72) + 32))(*(v1 + 80), v41, *(v1 + 64));
  v54 = swift_task_alloc();
  *(v1 + 208) = v54;
  *v54 = v1;
  v54[1] = sub_20B8B25E8;
  v55 = *(v1 + 112);
  v56 = *(v1 + 80);
  v57 = *(v1 + 34);

  return sub_20B8B2968(v55, v56, v57);
}

uint64_t sub_20B8B25E8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_20B8B2860;
  }

  else
  {
    v2 = sub_20B8B26FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B8B26FC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = *(v0[13] + 32);
  v4(v1, v0[14], v2);
  v4(v3, v1, v2);
  (*(v0[13] + 56))(v0[5], 0, 1, v0[12]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20B8B2860()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B8B2968(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 112) = a3;
  *(v4 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769C20, &unk_20C15C0F0);
  *(v4 + 48) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358, &qword_20C1713C0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B2A74, 0, 0);
}

uint64_t sub_20B8B2A74()
{
  v1 = v0[9];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[5] + 40), *(v0[5] + 64));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A20, &unk_20C15FD50);
  v3 = sub_20C136594();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14F980;
  (*(v4 + 16))(v6 + v5, v2, v3);
  sub_20C139F14();

  v7 = swift_task_alloc();
  v0[10] = v7;
  *(v7 + 16) = "SeymourUI/CatalogTipDataProvider.swift";
  *(v7 + 24) = 38;
  *(v7 + 32) = 2;
  *(v7 + 40) = 151;
  *(v7 + 48) = v1;
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8, &qword_20C181BF0);
  *v8 = v0;
  v8[1] = sub_20B8B2CA4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8B3424, v7, v9);
}

uint64_t sub_20B8B2CA4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v3 = sub_20B8B2FB8;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];
    v2[13] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B8B2E04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B8B2E04()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[4];
  *(swift_task_alloc() + 16) = v3;
  sub_20B6B77DC(sub_20B8B3434, v1, v2);

  v4 = sub_20C134014();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_20B520158(v0[6], &unk_27C769C20, &unk_20C15C0F0);
    sub_20B8B3454();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v5 + 32))(v0[3], v0[6], v4);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_20B8B2FB8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B8B3040(uint64_t a1)
{
  v1 = sub_20C133E44();
  v3 = v2;
  if (v1 == sub_20C136564() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20C13DFF4();
  }

  return v5 & 1;
}

void *CatalogTipDataProvider.deinit()
{
  sub_20B583E6C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  return v0;
}

uint64_t CatalogTipDataProvider.__deallocating_deinit()
{
  sub_20B583E6C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_20B8B3184()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v3, v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v3, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v1 = *(&v3[0] + 1);
  *(v0 + 80) = *&v3[0];
  *(v0 + 88) = v1;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v0 + 136) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763D58, &unk_20C15FD80);
  sub_20C133AA4();
  sub_20B51C710(v3, v0 + 144);
  return v0;
}

unint64_t sub_20B8B33D0()
{
  result = qword_27C7670B0;
  if (!qword_27C7670B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7670B0);
  }

  return result;
}

unint64_t sub_20B8B3454()
{
  result = qword_27C7670C0;
  if (!qword_27C7670C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7670C0);
  }

  return result;
}

uint64_t sub_20B8B34A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8B3508()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20B8AF134(v0);
}

unint64_t sub_20B8B3598()
{
  result = qword_281103AB8;
  if (!qword_281103AB8)
  {
    sub_20C13BAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281103AB8);
  }

  return result;
}

id sub_20B8B35F0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider];
  *v11 = sub_20B8B4700();
  *(v11 + 1) = v12;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 2) = xmmword_20C15FD90;
  *(v11 + 3) = xmmword_20C15FD90;
  *(v11 + 4) = xmmword_20C15FDA0;
  v15 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView;
  v16 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v16 setContentMode_];
  *&v4[v15] = v16;
  *&v4[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for NotificationBannerCell(0);
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20B8B398C();

  return v17;
}

id sub_20B8B38BC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setNumberOfLines_];
    v5 = v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider;
    [v4 setTextColor_];
    [v4 setFont_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_20B8B398C()
{
  v1 = [v0 contentView];
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider];
  [v1 setBackgroundColor_];

  v3 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAxis_];
  [v3 setSpacing_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView];
  [v3 addArrangedSubview_];
  v5 = sub_20B8B38BC();
  [v3 addArrangedSubview_];

  v6 = [v0 contentView];
  [v6 addSubview_];

  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C151850;
  v12 = [v3 topAnchor];
  v13 = [v0 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:v8];
  *(v11 + 32) = v15;
  v16 = [v3 leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:v7];
  *(v11 + 40) = v19;
  v20 = [v3 trailingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-v10];
  *(v11 + 48) = v23;
  v24 = [v3 bottomAnchor];

  v25 = [v0 contentView];
  v26 = [v25 bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-v9];
  *(v11 + 56) = v27;
  v28 = [v4 widthAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v11 + 64) = v29;
  v30 = [v4 heightAnchor];
  v31 = [v4 widthAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v11 + 72) = v32;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v34 = sub_20C13CC54();

  [v33 activateConstraints_];
}

id sub_20B8B3E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationBannerCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NotificationBannerCell(uint64_t a1)
{
  result = qword_27C7670F0;
  if (!qword_27C7670F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8B3F54(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20B8B4020(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B8B406C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B8B40D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B8B4138(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for ShelfCellItemInfo(0);
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767100, &qword_20C16C7A0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_20C132924();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2B)
  {
    v43 = v8;
    v44 = v6;
    v20 = v1;
    v21 = v17;
    v22 = swift_projectBox();
    sub_20B52F9E8(v22, v11, &qword_27C767100, &qword_20C16C7A0);
    v23 = *v11;
    v24 = v11[8];
    (*(v13 + 32))(v19, &v11[*(v9 + 64)], v21);
    v25 = *&v20[OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView];
    v45 = v23;
    [v25 setImage_];
    v26 = sub_20B8B38BC();
    sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
    v46 = v19;
    v47 = v13;
    v27 = *(v13 + 16);
    v48 = v21;
    v27(v15, v19, v21);
    v28 = sub_20C13D3C4();
    [v26 setAttributedText_];

    v29 = objc_opt_self();
    v30 = &selRef_whiteColor;
    if (v24 >= 2)
    {
      v30 = &selRef_secondaryLabelColor;
    }

    v31 = [v29 *v30];
    [v25 setTintColor_];

    v32 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
    swift_beginAccess();
    sub_20B52F9E8(&v20[v32], v5, &qword_27C762550, &unk_20C1505A0);
    if ((*(v49 + 48))(v5, 1, v44) == 1)
    {
      sub_20B5E2A1C(v5);
    }

    else
    {
      v33 = v43;
      sub_20B8B469C(v5, v43);
      v34 = sub_20C138104();
      if (v34 == sub_20C138104())
      {
        v35 = [v20 contentView];
        v36 = [v35 layer];

        [v36 setCornerCurve_];
        v37 = [v20 contentView];
        v38 = [v37 layer];

        [v38 setCornerRadius_];
        v39 = [v20 contentView];
        v40 = [v39 layer];

        [v40 setMaskedCorners_];
        sub_20B86C070(v33);
LABEL_10:
        (*(v47 + 8))(v46, v48);
        return;
      }

      sub_20B86C070(v33);
    }

    v41 = [v20 contentView];
    v42 = [v41 layer];

    [v42 setCornerRadius_];
    goto LABEL_10;
  }
}

uint64_t sub_20B8B469C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20B8B4700()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.149019608 green:0.149019608 blue:0.160784314 alpha:1.0];
  [objc_opt_self() whiteColor];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] compatibleWithTraitCollection:0];
  v2 = [v1 fontDescriptorWithSymbolicTraits_];
  if (v2)
  {
    v3 = v2;

    v1 = v3;
  }

  v4 = [objc_opt_self() fontWithDescriptor:v1 size:0.0];

  return v0;
}

void sub_20B8B4818()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_styleProvider;
  *v3 = sub_20B8B4700();
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  *(v3 + 32) = xmmword_20C15FD90;
  *(v3 + 48) = xmmword_20C15FD90;
  *(v3 + 64) = xmmword_20C15FDA0;
  v7 = OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell_iconView;
  v8 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v8 setContentMode_];
  *(v0 + v7) = v8;
  *(v0 + OBJC_IVAR____TtC9SeymourUI22NotificationBannerCell____lazy_storage___textLabel) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8B4974(void *a1)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for PageAlertAction(0);
  v4 = (v3 - 8);
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B554();
  sub_20C13BB64();
  (*(v11 + 8))(v13, v10);
  v63 = v2;
  swift_getObjectType();
  sub_20C138714();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_opt_self();
  v16 = [v15 bundleForClass_];
  v17 = sub_20C132964();
  v19 = v18;

  v20 = swift_allocObject();
  swift_weakInit();
  sub_20C132ED4();
  v21 = &v9[v4[8]];
  *v21 = v17;
  v21[1] = v19;
  v9[v4[7]] = 0;
  v22 = v4[9];
  v58 = v9;
  v23 = &v9[v22];
  *v23 = sub_20B8B5114;
  v23[1] = v20;
  v24 = [v15 bundleForClass_];
  v25 = sub_20C132964();
  v27 = v26;

  sub_20C132ED4();
  v28 = &v6[v4[8]];
  *v28 = v25;
  v28[1] = v27;
  v6[v4[7]] = 2;
  v29 = v4[9];
  v59 = v6;
  v30 = &v6[v29];
  *v30 = nullsub_1;
  v30[1] = 0;
  v31 = v15;
  v61 = ObjCClassFromMetadata;
  v32 = [v15 bundleForClass_];
  v33 = sub_20C132964();
  v35 = v34;

  v64[0] = v60;
  v36 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  v37 = sub_20C13C9D4();
  v39 = v38;
  if (sub_20C1380B4())
  {
    strcpy(v64, "\n\n[Internal] ");
    HIWORD(v64[1]) = -4864;
    MEMORY[0x20F2F4230](v37, v39);

    v40 = v64[0];
    v41 = v64[1];
  }

  else
  {

    v40 = 0;
    v41 = 0xE000000000000000;
  }

  v64[0] = v33;
  v64[1] = v35;

  MEMORY[0x20F2F4230](v40, v41);

  v43 = v64[0];
  v42 = v64[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
  v44 = *(v62 + 72);
  v45 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F320;
  v47 = v46 + v45;
  v48 = v58;
  sub_20B8B511C(v58, v47);
  v49 = v59;
  sub_20B8B511C(v59, v47 + v44);
  v50 = [v31 bundleForClass_];
  v51 = sub_20C132964();
  v53 = v52;

  type metadata accessor for DefaultPageAlertPresenter();
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  swift_unknownObjectWeakInit();
  v55 = MEMORY[0x277D84F90];
  *(v54 + 32) = v46;
  *(v54 + 40) = v55;
  *(v54 + 48) = v51;
  *(v54 + 56) = v53;
  *(v54 + 64) = v43;
  *(v54 + 72) = v42;
  *(v54 + 80) = 1;
  *(v54 + 88) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BC000D4(v54, 0, 0, Strong);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_20B7B8DA0(v49);
  return sub_20B7B8DA0(v48);
}

double sub_20B8B4FF4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_20B6383D0(0, 0, v4, &unk_20C15FEF0, v9);
  }

  return result;
}

uint64_t sub_20B8B511C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8B5180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_20C131E34();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_20C131EE4();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8B5304, 0, 0);
}

uint64_t sub_20B8B5304(uint64_t a1)
{
  v2 = v1[20];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[10];
  sub_20C13B554();
  sub_20C13BB64();
  v6 = *(v4 + 8);
  v1[21] = v6;
  v1[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  sub_20B51CC64(*(v5 + 96) + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter, (v1 + 2));
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v7);
  v11 = (*(v8 + 16) + **(v8 + 16));
  v9 = swift_task_alloc();
  v1[23] = v9;
  *v9 = v1;
  v9[1] = sub_20B8B54BC;

  return v11(v7, v8);
}

uint64_t sub_20B8B54BC()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_20B8B5660;
  }

  else
  {
    v2 = sub_20B8B55D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B8B55D0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8B5660()
{
  v30 = v0;
  v1 = (v0 + 56);
  v2 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_20C13B554();
  v3 = v2;
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v28 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 136446210;
    *(v0 + 72) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v12 = sub_20C13C9D4();
    v14 = sub_20B51E694(v12, v13, &v29);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_20B517000, v4, v5, "Failed to reconnect to external display for overlays: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);

    v28(v7, v8);
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 152);
    v17 = *(v0 + 136);

    v15(v16, v17);
  }

  v18 = *(v0 + 192);
  *(v0 + 56) = v18;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
  if (swift_dynamicCast())
  {
    v20 = (*(*(v0 + 120) + 88))(*(v0 + 128), *(v0 + 112));
    if (v20 == *MEMORY[0x277CE9BA8] || v20 == *MEMORY[0x277CE9BB0] || v20 == *MEMORY[0x277CE9BB8] || v20 == *MEMORY[0x277CE9BA0])
    {
      goto LABEL_17;
    }

    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v1 = (v0 + 64);
  v21 = *(v0 + 192);

  *(v0 + 64) = v21;
  v22 = v21;
  if (!swift_dynamicCast())
  {
LABEL_14:

    sub_20C13CDA4();
    *(v0 + 200) = sub_20C13CD94();
    v25 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B8B5A50, v25, v24);
  }

  v23 = (*(*(v0 + 96) + 88))(*(v0 + 104), *(v0 + 88));
  if (v23 != *MEMORY[0x277CE9B78] && v23 != *MEMORY[0x277CE9B80])
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    goto LABEL_14;
  }

LABEL_17:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_20B8B5A50()
{
  v1 = *(v0 + 192);

  sub_20B8B4974(v1);

  return MEMORY[0x2822009F8](sub_20B8B5AC4, 0, 0);
}

uint64_t sub_20B8B5AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8B5B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B8B5180(a1, v4, v5, v6);
}

uint64_t RemoteParticipantAvatarProvider.__allocating_init(dependencies:familyAvatarProvider:accountAvatarProvider:)(uint64_t a1, void *a2, void *a3)
{

  v5 = swift_allocObject();
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t RemoteParticipantAvatarProvider.init(dependencies:familyAvatarProvider:accountAvatarProvider:)(uint64_t a1, void *a2, void *a3)
{

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v3;
}

uint64_t RemoteParticipantAvatarProvider.fetchUserImage(for:)()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;
  sub_20B71D438();

  return sub_20C137CA4();
}

unint64_t sub_20B8B5D60()
{
  result = qword_27C76A4E0;
  if (!qword_27C76A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A4E0);
  }

  return result;
}

uint64_t RemoteParticipantAvatarProvider.fetchAccountAvatar(for:)()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20B8B5E48()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;
  sub_20B71D438();

  return sub_20C137CA4();
}

uint64_t sub_20B8B5EEC()
{
  sub_20B8B5D60();
  v0 = swift_allocError();
  *v1 = 7;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20B8B5FD0()
{
  v0 = sub_20C134B64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_20C133D74() & 1) == 0)
  {
    v4 = sub_20C133D24();
    v6 = v5;
    v26 = v4;
    v27 = v5;
    v8 = v7 & 1;
    v28 = v7 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767108, &qword_20C15FF40);
    sub_20C133BD4();
    sub_20B583F4C(v4, v6, v8);
    v9 = HIBYTE(v25);
    if (HIBYTE(v25) != 2)
    {
      sub_20C133D34();
      v12 = sub_20C134B54();
      v14 = v13;
      v16 = v15;
      (*(v1 + 8))(v3, v0);
      v26 = v12;
      v27 = v14;
      v28 = v16 & 1;
      HIBYTE(v25) = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v17 = sub_20C133C04();
      sub_20B583F4C(v12, v14, v16 & 1);
      if (v17)
      {
        v26 = sub_20C136474();
        LOBYTE(v27) = v18 & 1;
        HIBYTE(v25) = 1;
        sub_20B64BC70();
        sub_20B64BCC4();
        v10 = sub_20C133C04();
        return v10 & 1;
      }

      v19 = sub_20C136464();
      v21 = v20;
      v26 = v19;
      v27 = v20;
      v23 = v22 & 1;
      v28 = v22 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76B3D0, &unk_20C1574C0);
      sub_20C133BD4();
      sub_20B583F4C(v19, v21, v23);
      if (HIBYTE(v25) - 3 <= 1)
      {
        v26 = sub_20C136474();
        LOBYTE(v27) = v24 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BC10, &qword_20C1724B0);
        sub_20C133BD4();
        if (HIBYTE(v25) <= 1u)
        {
          if (HIBYTE(v25))
          {
            if ((v9 & 1) == 0)
            {
LABEL_15:
              v10 = 1;
              return v10 & 1;
            }
          }

          else if (v9)
          {
            goto LABEL_15;
          }
        }

        else if (HIBYTE(v25) - 2 >= 2)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_20B8B6290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B8B62D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B8B6398()
{
  v1 = sub_20B8B6690();
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20C14FE90;
    v5 = [v2 topAnchor];
    v6 = [v0 topAnchor];
    v7 = [v5 constraintEqualToAnchor_];

    *(v4 + 32) = v7;
    v8 = [v2 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v4 + 40) = v10;
    v11 = [v2 trailingAnchor];
    v12 = [v0 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v4 + 48) = v13;
    v14 = [v2 bottomAnchor];
    v15 = [v0 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v4 + 56) = v16;
    *(inited + 32) = v4;
    v17 = objc_opt_self();
    sub_20BE54D20(inited);
    swift_setDeallocating();
    sub_20B68537C(inited + 32);
    sub_20B5E29D0();
    v18 = sub_20C13CC54();

    [v17 activateConstraints_];
  }
}

id sub_20B8B6690()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v35 = [objc_allocWithZone(MEMORY[0x277CE8CB8]) init];
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCompletionMedalView_completionLevel))
  {
    sub_20C135BE4();
  }

  else
  {
    sub_20C135BC4();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CE8DE0]) init];
  v9 = sub_20C13C914();

  aBlock[0] = 0;
  v10 = [v8 ephemeralAchievementWithTemplateUniqueName:v9 error:aBlock];

  if (aBlock[0])
  {
    aBlock[0];

    swift_willThrow();
    return v8;
  }

  if (!v10)
  {
    sub_20C13B4A4();
    v26 = sub_20C13BB74();
    v27 = sub_20C13D1C4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20B517000, v26, v27, "WorkoutPlanCompletionBadgeView.makeBadgeView: No achievement", v28, 2u);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CE8D98]);
  v12 = [v11 initWithStyle:1 achievement:v10 achLocalizationProvider:v35];
  if (!v12)
  {
    sub_20C13B4A4();
    v29 = sub_20C13BB74();
    v30 = sub_20C13D1D4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20B517000, v29, v30, "WorkoutPlanCompletionBadgeView.makeBadgeView: No formatter", v31, 2u);
      MEMORY[0x20F2F6A40](v31, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }

  v13 = v12;
  v8 = [objc_allocWithZone(MEMORY[0x277CE8DB0]) initUsingEarnedShader_];
  v14 = [objc_allocWithZone(MEMORY[0x277CE8DA0]) init];
  v15 = [v14 badgeConfigurationForAchievement_];
  v16 = [v14 backSideIconImageForAchievement_];
  [v8 setConfiguration_];
  [v8 setBadgeBacksideIcon_];
  v17 = [v13 localizedAttributedBacksideString];
  if (v17)
  {
    v18 = v17;
    v19 = [v13 localizedAttributedShortenedBacksideString];
    if (v19)
    {
      v20 = v19;
      [v8 setBadgeBacksideAttributedString_];
      v21 = swift_allocObject();
      v21[2] = v20;
      aBlock[4] = sub_20B8B6CC4;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B8B6BEC;
      aBlock[3] = &block_descriptor_39;
      v22 = _Block_copy(aBlock);
      v33 = v16;
      v34 = v14;
      v23 = v22;
      v24 = v20;
      v14 = v34;

      [v8 setShortenedBadgeBacksideStringProvider_];
      v25 = v23;
      v16 = v33;
      _Block_release(v25);

      v18 = v24;
    }
  }

  [v8 setPaused_];
  [v8 resizeBadgeForCurrentViewSize];

  return v8;
}

id sub_20B8B6BEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_20B8B6C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanCompletionMedalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B8B6CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SortButton();
  v23.receiver = v3;
  v23.super_class = v14;
  objc_msgSendSuper2(&v23, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_shouldTriggerDismissEvent) == 1 && (v16 = Strong, (v17 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v18 = v17;
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v13[24] = 0x80;
      v19 = swift_storeEnumTagMultiPayload();
      v20 = MEMORY[0x28223BE20](v19);
      *(&v23 - 4) = 0;
      *(&v23 - 24) = 1;
      *(&v23 - 2) = v13;
      *(&v23 - 1) = v18;
      v21 = [*(v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v21)
      {
        v22 = v21;
        sub_20C1331E4();

        sub_20C0C1CDC(v10, sub_20B5E27BC);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v8 + 8))(v10, v7);
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      sub_20B5E2760(v13);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_20B8B710C(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SortButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B8B7184(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong presentedViewController];
    v9 = sub_20C1393F4();
    v10 = v9;
    if (v8)
    {
      sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
      v11 = sub_20C13D5F4();

      if (v11)
      {
        v13 = v7;
        sub_20BF7EB60(v5);
        type metadata accessor for TrainerDetailViewController();
        sub_20B8B9520(&qword_27C7671D0, v12, type metadata accessor for TrainerDetailViewController, &unk_20C160090);
        sub_20C138C54();
        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
    }
  }
}

double sub_20B8B734C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0, &qword_20C18A9F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong presentedViewController];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v14 = *&v11[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider];
      v15 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
      swift_beginAccess();
      sub_20B52F9E8(v14 + v15, v8, &qword_27C7671C0, &qword_20C18A9F0);
      v16 = sub_20C137F24();
      LODWORD(v15) = (*(*(v16 - 8) + 48))(v8, 1, v16);

      if (v15 == 1)
      {

        sub_20B520158(v8, &qword_27C7671C0, &qword_20C18A9F0);
        *(v14 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
      }

      else
      {
        sub_20B520158(v8, &qword_27C7671C0, &qword_20C18A9F0);
        v17[1] = v14;
        sub_20BF7EB60(v5);
        type metadata accessor for TrainerPageDataProvider(0);
        sub_20B8B9520(&qword_27C7671C8, 255, type metadata accessor for TrainerPageDataProvider, &unk_20C186B38);
        sub_20C138C54();

        (*(v3 + 8))(v5, v2);
      }
    }
  }

  return result;
}

double sub_20B8B7630(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TrainerDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_20C03652C();
  sub_20B8B8174(v2);
  sub_20B79554C(0);
  result = sub_20BAD5460();
  v4 = *(*(*&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 48);
      swift_unknownObjectRetain();
      v9(ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_20B8B7770(uint64_t a1)
{
  v2 = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TrainerDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6 > 1)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
      sub_20C13DDF4();
      sub_20C1380E4();
    }

    else
    {
      sub_20BE8F76C();
    }
  }
}

uint64_t sub_20B8B7A00(char a1)
{
  v2 = v1;
  v19 = sub_20C1333A4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7671C0, &qword_20C18A9F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TrainerDetailViewController();
  v21.receiver = v2;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider];
  sub_20BF7E060();
  v12 = OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_trainer;
  swift_beginAccess();
  sub_20B52F9E8(v11 + v12, v9, &qword_27C7671C0, &qword_20C18A9F0);
  v13 = sub_20C137F24();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_20B520158(v9, &qword_27C7671C0, &qword_20C18A9F0);
  if (v14 == 1)
  {
    *(v11 + OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v20 = v11;
    sub_20BF7EB60(v6);
    type metadata accessor for TrainerPageDataProvider(0);
    sub_20B8B9520(&qword_27C7671C8, 255, type metadata accessor for TrainerPageDataProvider, &unk_20C186B38);
    sub_20C138C54();
    (*(v4 + 8))(v6, v19);
  }

  sub_20B8B9520(&qword_27C7671D8, v15, type metadata accessor for TrainerDetailViewController, &unk_20C1600D0);
  sub_20B8B9520(&qword_27C7671E0, v16, type metadata accessor for TrainerDetailViewController, &unk_20C160048);
  return sub_20C139364();
}

void sub_20B8B7D2C(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrainerDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20B8B9520(&qword_27C7671D8, v9, type metadata accessor for TrainerDetailViewController, &unk_20C1600D0);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20B8B9520(&qword_27C7671D0, v15, type metadata accessor for TrainerDetailViewController, &unk_20C160090);
      sub_20C138C64();
    }
  }
}

void sub_20B8B8174(uint64_t a1)
{
  v37[3] = type metadata accessor for TrainerDetailViewController();
  v37[0] = v1;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = v1;
  v4 = [ObjCClassFromMetadata buttonWithType_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = &v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v4 setTintColor_];
  v6 = *(v5 + 10);
  v7 = *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v6;
  v8 = v6;

  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B52F9E8(v37, v35, &unk_27C768A00, &qword_20C152F90);
  v9 = v36;
  if (v36)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x28223BE20](v10);
    v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_20C13DFD4();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v15 = 0;
  }

  [v4 addTarget:v15 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B520158(v37, &unk_27C768A00, &qword_20C152F90);
  v16 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v18 = v4;
  *(v18 + 1) = &off_2822DD228;
  v34.receiver = v17;
  v34.super_class = v16;
  v19 = v4;
  v20 = objc_msgSendSuper2(&v34, sel_init);
  [v20 setCustomView_];

  v21 = *&v3[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButton];
  v22 = objc_allocWithZone(v16);
  v23 = &v22[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v23 = v21;
  *(v23 + 1) = &off_2822C8C68;
  v33.receiver = v22;
  v33.super_class = v16;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  [v25 setCustomView_];

  if (v3[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform] == 1)
  {
    v26 = [v3 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20C150040;
    *(v29 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v29 + 40) = v20;
    v28 = (v29 + 48);
    goto LABEL_8;
  }

  if (!v3[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform])
  {
    v26 = [v3 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C151490;
    *(v27 + 32) = v20;
    v28 = (v27 + 40);
LABEL_8:
    *v28 = v25;
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v30 = v20;
    v31 = v25;
    v32 = sub_20C13CC54();

    [v26 setRightBarButtonItems_];
  }
}

double sub_20B8B85D4()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItems];

  if (!v2)
  {
    return result;
  }

  sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
  v4 = sub_20C13CC74();

  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_20C13DB34();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_22:

    return result;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2F5430](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v11 = [v8 customView];
    if (v11)
    {
      break;
    }

    v7 = v9;
LABEL_6:

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_22;
    }
  }

  v7 = v11;
  type metadata accessor for MoreOptionsButton();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  v12 = v9;
  sub_20C03979C(v9, 0);

  return result;
}

id sub_20B8B8870(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TrainerDetailViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20B8B89C4(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v3 = 1;
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor];
      v3 = 3;
    }

    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor] = v2;
    v5 = v2;

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v5;
    v7[4] = v3;
    v11[4] = sub_20B8B8F24;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20B7B548C;
    v11[3] = &block_descriptor_40;
    v8 = _Block_copy(v11);
    v9 = v5;
    v10 = v1;

    [v6 animateWithDuration:v8 animations:0.2];
    _Block_release(v8);
  }
}

id sub_20B8B8B4C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  *&a1[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle] = a3;

  return [a1 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_20B8B8C30(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

double sub_20B8B8D74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B8B8E2C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20B8B8E90(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

char *sub_20B8B8F30(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v28[3] = a5;
  v28[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_visibility] = 1;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor;
  *&a4[v13] = [objc_opt_self() blackColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle] = 3;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_eventHub] = v27[0];
  sub_20B51CC64(v28, &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_platform] = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v27, &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v27, &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_storefrontLocalizer]);
  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v14 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v14 + 4, v14[7]);
  v15 = sub_20C138D34();
  v17 = v16;

  v14[2] = v15;
  v14[3] = v17;
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_sortOptionsDataProvider] = v14;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_subscriptionToken] = sub_20C13A914();
  v18 = &a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_contentInsetInitialBehavior];
  *v18 = 0;
  v18[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v19);
  v20 = sub_20BE8C450(&unk_28228D520);

  v22 = sub_20BAB9360(v21, v20, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_upNextQueueButton] = v22;
  v26.receiver = a4;
  v26.super_class = type metadata accessor for TrainerDetailViewController();
  v23 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822B2178;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B8B9520(&unk_27C769C10, 255, MEMORY[0x277D54398], MEMORY[0x277D54390]);
  v24 = v23;
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v27);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B8B9520(&qword_27C7710D0, 255, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v24;
}

uint64_t sub_20B8B9520(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B8B9568()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_visibility) = 1;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_resignActiveObserver) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() blackColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentStatusBarStyle) = 3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI27TrainerDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for EquipmentFilterUpdated(uint64_t a1)
{
  result = qword_27C7671E8;
  if (!qword_27C7671E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8B96E0(uint64_t a1)
{
  sub_20C134EC4();
  if (v1 <= 0x3F)
  {
    sub_20B52CA84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20B8B9764()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder + 24));
  v5 = sub_20C138D34();
  v7 = v6;
  v8 = sub_20B7B2BBC();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20C14F980;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(v11 + 32) = v12 | 0x5000000000000004;
  v35 = 0uLL;
  LOBYTE(v36) = 1;
  *(&v36 + 1) = 0;
  *&v37 = 0;
  WORD4(v37) = 128;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = v11;
  *&v42[0] = MEMORY[0x277D84F90];
  *(v42 + 8) = 0u;
  *(&v42[1] + 8) = 0u;
  *(&v42[2] + 1) = 0;
  v43 = 2;
  nullsub_1();
  v13 = v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 128);
  v44[9] = v14;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 160);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 64);
  v44[5] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 96);
  v44[7] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row);
  v44[1] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 32);
  v44[3] = v18;
  v19 = v42[2];
  *(v13 + 128) = v42[1];
  *(v13 + 144) = v19;
  *(v13 + 160) = v43;
  v20 = v40;
  *(v13 + 64) = v39;
  *(v13 + 80) = v20;
  v21 = v42[0];
  *(v13 + 96) = v41;
  *(v13 + 112) = v21;
  v22 = v36;
  *v13 = v35;
  *(v13 + 16) = v22;
  v23 = v38;
  *(v13 + 32) = v37;
  *(v13 + 48) = v23;
  sub_20B634408(v44);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61CF38(v1, Strong);
      if (v27)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        v32 = v34;
        (*(v34 + 104))(v4, *MEMORY[0x277D85200], v2);
        v33 = sub_20C13C584();
        (*(v32 + 8))(v4, v2);
        if ((v33 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6204FC(v29, v30, v31, v1, 0, v25);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20B8B9AD8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  sub_20B8B9DF8(v0 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfflineWorkoutsBannerShelf(uint64_t a1)
{
  result = qword_27C7671F8;
  if (!qword_27C7671F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8B9C20(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B8B9CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8B9D48@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

double sub_20B8B9F0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C13B564();
    sub_20C13BB64();
    (*(v3 + 8))(v5, v2);
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BA090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

double sub_20B8BA1B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BA214(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = sub_20C136484();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_20C13B2E4();
    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    v11 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
    swift_beginAccess();
    sub_20B8C3A08(v4, v10 + v11);
    swift_endAccess();
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);

    sub_20B520158(v4, &unk_27C765CB0, &unk_20C1523C0);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

double sub_20B8BA404()
{
  v1 = v0;
  v2 = type metadata accessor for SessionHeartUIState(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 104);
  if (*(v5 + OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_state) == 1)
  {
    *(v5 + OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_state) = 0;
    swift_storeEnumTagMultiPayload();
    v6 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_uiState;
    swift_beginAccess();
    sub_20B8C3A78(v4, v5 + v6);
    swift_endAccess();
    sub_20C0F72CC();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(ObjectType, v8);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B8BA51C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  v11 = sub_20C135274();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v13, &unk_27C765100, &unk_20C152450);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  sub_20B8C22B4(0, 0.0);
}

void sub_20B8BA748(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  v11 = sub_20C1368F4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v13 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v6, v2 + v13, &unk_27C767260, &unk_20C152430);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  sub_20B8C22B4(0, 0.0);
}

uint64_t sub_20B8BA974()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  sub_20C137DF4();
  v15 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  sub_20B5DF2D4(v10, v1 + v15, &unk_27C765100, &unk_20C152450);
  swift_endAccess();
  sub_20C137E64();
  v16 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B5DF2D4(v7, v1 + v16, &unk_27C767260, &unk_20C152430);
  swift_endAccess();
  sub_20C137E44();
  v17 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
  swift_beginAccess();
  sub_20B8C3A08(v4, v1 + v17);
  swift_endAccess();
  sub_20B8C0364();
  sub_20B8C2118();
  sub_20B8C22B4(0, 0.0);
  return sub_20B520158(v4, &unk_27C765CB0, &unk_20C1523C0);
}

uint64_t sub_20B8BAC74(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_20C13AA84();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  sub_20C13AC34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  sub_20C13AD34();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_20B8BAE38(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C133B04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 72);

    sub_20C13AA64();
    if (*(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_cumulativeScoreGenerator))
    {

      sub_20BD791A0(v8);
    }

    if (*(v10 + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_rollingScoreGenerator))
    {

      sub_20BD791A0(v8);
    }

    (*(v3 + 8))(v8, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_20C13AA64();
    sub_20BA1CF44(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double sub_20B8BB040(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C133DD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20C13AC14();
    sub_20B720E18(v9);

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C13B564();
    sub_20C13BB64();
    (*(v3 + 8))(v5, v2);
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

double sub_20B8BB288(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_20C134514();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20C13AD14();
    sub_20B78F560(v9);

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C13B564();
    sub_20C13BB64();
    (*(v3 + 8))(v5, v2);
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
  }

  return result;
}

uint64_t sub_20B8BB4D0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308, &qword_20C160550);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767310, &qword_27C767308, &qword_20C160550, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318, &qword_20C160558);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767320, &qword_27C767318, &qword_20C160558, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767328, &unk_20C160560);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767330, &qword_27C767328, &unk_20C160560, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767338, &unk_20C17BF80);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767340, &qword_27C767338, &unk_20C17BF80, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767348, &unk_20C160570);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767350, &qword_27C767348, &unk_20C160570, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767358, &unk_20C17BF90);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767360, &qword_27C767358, &unk_20C17BF90, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767368, &unk_20C160580);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767370, &qword_27C767368, &unk_20C160580, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767378, &qword_20C17BF20);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767380, &qword_27C767378, &qword_20C17BF20, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767388, &qword_20C160590);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767390, &qword_27C767388, &qword_20C160590, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767398, &qword_20C160598);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673A0, &qword_27C767398, &qword_20C160598, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673A8, &unk_20C1605A0);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673B0, &qword_27C7673A8, &unk_20C1605A0, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673B8, &unk_20C17BF00);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673C0, &qword_27C7673B8, &unk_20C17BF00, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673C8, &unk_20C1605B0);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673D0, &qword_27C7673C8, &unk_20C1605B0, &unk_20C178168);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8, &unk_20C17BF30);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673E0, &qword_27C7673D8, &unk_20C17BF30, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673E8, &unk_20C1605C0);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C7673F0, &qword_27C7673E8, &unk_20C1605C0, &unk_20C178168);
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_20B8BBF1C(uint64_t a1, uint64_t a2)
{
  v18 = sub_20C133D14();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AB64();
  v6 = sub_20C133CE4();
  v8 = v7;
  v10 = v9;
  v22 = 3;
  v19 = v6;
  v20 = v7;
  v11 = v9 & 1;
  v21 = v9 & 1;
  sub_20B8C38A0();
  sub_20B8C38F4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v6, v8, v11);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308, &qword_20C160550);
      sub_20B8BD164(*(a1 + *(v12 + 28)));
LABEL_10:
    }
  }

  else
  {
    v22 = 5;
    v19 = v6;
    v20 = v8;
    v21 = v11;
    if (sub_20C133C14())
    {
      sub_20B583F4C(v6, v8, v10 & 1);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308, &qword_20C160550);
        sub_20B8BD620(*(a1 + *(v13 + 28)));
        goto LABEL_10;
      }
    }

    else
    {
      v22 = 1;
      v19 = v6;
      v20 = v8;
      v14 = v10 & 1;
      v21 = v14;
      if ((sub_20C133C14() & 1) == 0)
      {
        v22 = 2;
        v19 = v6;
        v20 = v8;
        v21 = v14;
        sub_20C133C14();
        (*(v3 + 8))(v5, v18);
        return sub_20B583F4C(v6, v8, v14);
      }

      sub_20B583F4C(v6, v8, v14);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308, &qword_20C160550);
        sub_20B8BDEE8(*(a1 + *(v15 + 28)));
        goto LABEL_10;
      }
    }
  }

  return (*(v3 + 8))(v5, v18);
}

uint64_t sub_20B8BC228(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AB64();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318, &qword_20C160558);
    sub_20B8BF7C0(v6, *(a1 + *(v8 + 28)));

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_20B8BC350(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13A934();
  v7 = sub_20C133CE4();
  v9 = v8;
  v11 = v10;
  v12 = *(v4 + 8);
  v12(v6, v3);
  v16[1] = v7;
  v16[2] = v9;
  v11 &= 1u;
  v17 = v11;
  v18 = xmmword_20C152300;
  v19 = 1;
  sub_20B8C38A0();
  sub_20B8C38F4();
  v13 = sub_20C133BF4();
  result = sub_20B583F4C(v7, v9, v11);
  if (v13)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20C13A934();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767328, &unk_20C160560);
      sub_20B8BE00C(*(a1 + *(v15 + 28)));

      return (v12)(v6, v3);
    }
  }

  return result;
}

double sub_20B8BC524(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767338, &unk_20C17BF80);
    sub_20BE7FA7C(a1, *(a1 + *(v4 + 28)));
  }

  return result;
}

void sub_20B8BC5BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v3 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767348, &unk_20C160570) + 28));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v7 = objc_allocWithZone(MEMORY[0x277D75D40]);
      aBlock[4] = sub_20B8C39E8;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_83;
      v8 = _Block_copy(aBlock);
      v9 = v5;

      v10 = [v7 initWithDuration:v8 dampingRatio:v3 animations:1.0];
      _Block_release(v8);
      [v10 startAnimation];
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_20B8BC760(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133474();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20C137254();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v8 + 16))(v10, result + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityTypeBehavior, v7);

    v12 = sub_20C137214();
    result = (*(v8 + 8))(v10, v7);
    if (v12)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_20C13A864();
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767358, &unk_20C17BF90);
        sub_20B69992C(v6, *(a1 + *(v13 + 28)));

        return (*(v4 + 8))(v6, v3);
      }
    }
  }

  return result;
}

void sub_20B8BC9A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_trackPresenter);

    v5 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767368, &unk_20C160580) + 28));
    v6 = v4 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(ObjectType, v7, v5);
      swift_unknownObjectRelease();
    }

    v9 = v4 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      v11 = swift_getObjectType();
      (*(v10 + 24))(v11, v10, v5);
      swift_unknownObjectRelease();
    }
  }
}

void sub_20B8BCAE0(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 24);
  v5 = a1[4];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BE508(v2, v4, v3, v6, v5);
  }
}

void sub_20B8BCB6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BF9C8(v2);
  }
}

void sub_20B8BCBD4(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BF028(v2, v3, v5, v4);
  }
}

void sub_20B8BCC4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BF9C8(v2);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20BB78CE0();
  }
}

void sub_20B8BCCF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BEDB8(v2, v4, v3);
  }
}

void sub_20B8BCD68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8BF9C8(v2);
  }
}

uint64_t sub_20B8BCDD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C134054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AC44();
  v7 = sub_20C134024();
  v10 = v9 >> 5;
  if (v10 <= 1)
  {
    if (v9 >> 5)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8, &unk_20C17BF30);
        sub_20B8BDD40(*(a1 + *(v15 + 28)));
        goto LABEL_15;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8, &unk_20C17BF30);
        sub_20B8BDB98(*(a1 + *(v12 + 28)));
        goto LABEL_15;
      }
    }
  }

  else if (v10 == 2)
  {
    sub_20B8C3888(v7, v8, v9);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8, &unk_20C17BF30);
      sub_20B8BD7E4(*(a1 + *(v13 + 28)));
      goto LABEL_15;
    }
  }

  else if (v10 == 3)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8, &unk_20C17BF30);
      sub_20B8BD9AC(*(a1 + *(v11 + 28)));
LABEL_15:
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673D8, &unk_20C17BF30);
      sub_20B8BDAA4(*(a1 + *(v14 + 28)));
      goto LABEL_15;
    }
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20B8BD03C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C134054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13A9A4();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7673E8, &unk_20C1605C0);
    sub_20B8BF8BC(v6, *(a1 + *(v7 + 28)));
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_20B8BD164(double a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_20C134914();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v15 = sub_20B8D7BF8(5, v14);

  if (v15)
  {
    v16 = v1[13];
    v17 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_lastReceivedMetric;
    swift_beginAccess();
    sub_20B52F9E8(v16 + v17, v9, &unk_27C7650E0, &unk_20C157490);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_20B520158(v9, &unk_27C7650E0, &unk_20C157490);
      sub_20C13B534();
      v18 = sub_20C13BB74();
      v19 = sub_20C13D1D4();
      if (os_log_type_enabled(v18, v19))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_20B517000, v18, v19, "Unable to create needed objects for Heart Rate highlight event", v21, 2u);
        MEMORY[0x20F2F6A40](v21, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      sub_20B9B18B0();
      v23 = v22;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v24 = v1[3];
        ObjectType = swift_getObjectType();
        (*(v24 + 48))(v23, 0, ObjectType, v24);
        swift_unknownObjectRelease();
      }

      sub_20B9B18B0();
      v27 = v26;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = v1[5];
        v29 = swift_getObjectType();
        (*(v28 + 48))(v27, 0, v29, v28);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      sub_20BE8C680(&unk_28228D638);
      v31 = v30;
      v32 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
      swift_beginAccess();
      *(v1 + v32) = v31;

      sub_20B8C22B4(0, a1);
      v33 = [v23 string];
      if (!v33)
      {
        sub_20C13C954();
        v33 = sub_20C13C914();
      }

      [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];

      (*(v11 + 8))(v13, v10);
    }
  }
}

void sub_20B8BD620(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v5 = sub_20B8D7BF8(12, v4);

  if (v5)
  {
    sub_20B9B20E4();
    v7 = v6;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 48))(v7, 0, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    sub_20B9B20E4();
    v11 = v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v2 + 40);
      v13 = swift_getObjectType();
      (*(v12 + 48))(v11, 0, v13, v12);
      swift_unknownObjectRelease();
    }

    sub_20BE8C680(&unk_28228D660);
    v15 = v14;
    v16 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
    swift_beginAccess();
    *(v2 + v16) = v15;

    sub_20B8C22B4(0, a1);
    v17 = [v7 string];
    if (!v17)
    {
      sub_20C13C954();
      v17 = sub_20C13C914();
    }

    [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];
  }
}

void sub_20B8BD7E4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(7, v3);

  if (v4)
  {
    v5 = sub_20C134024();
    v8 = v5;
    v9 = v6;
    if ((v7 & 0xE0) == 0x40)
    {
      v10 = v7;
      v11 = *(v1 + 120);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 24);
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v8, v9, ObjectType, v12);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v11 + 40);
        v15 = swift_getObjectType();
        (*(v14 + 8))(v8, v9, v15, v14);
        sub_20B8C3888(v8, v9, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B8C3888(v8, v9, v10);
      }

      swift_beginAccess();
      sub_20B6FFF90(&v16, 7);
      swift_endAccess();
      sub_20B8C22B4(0, a1);
    }

    else
    {

      sub_20B8C3888(v5, v6, v7);
    }
  }
}

void sub_20B8BD9AC(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(9, v3);

  if (v4)
  {
    v5 = sub_20C134024();
    if ((v7 & 0xE0) == 0x60)
    {
      sub_20B6DAD08(v5, v6, v7 & 1);
      swift_beginAccess();
      sub_20B6FFF90(&v8, 9);
      swift_endAccess();
      sub_20B8C22B4(0, a1);
    }

    else
    {

      sub_20B8C3888(v5, v6, v7);
    }
  }
}

void sub_20B8BDAA4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(11, v3);

  if (v4)
  {
    v5 = sub_20C134024();
    if ((v7 & 0xE0) == 0x80)
    {
      sub_20C08C6BC(v5, v6);
      swift_beginAccess();
      sub_20B6FFF90(&v8, 11);
      swift_endAccess();
      sub_20B8C22B4(0, a1);
    }

    else
    {

      sub_20B8C3888(v5, v6, v7);
    }
  }
}

void sub_20B8BDB98(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(8, v3);

  if (v4)
  {
    v5 = sub_20C134024();
    if (v7 > 0x1Fu)
    {

      sub_20B8C3888(v5, v6, v7);
    }

    else
    {
      v8 = *(v1 + 112);
      v9 = sub_20BBA1144(v5 / 100.0);
      if (v9)
      {
        v10 = v9;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 8))(v10, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v8 + 40);
          v14 = swift_getObjectType();
          (*(v13 + 8))(v10, v14, v13);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_20B6FFF90(&v15, 8);
      swift_endAccess();
      sub_20B8C22B4(0, a1);
    }
  }
}

void sub_20B8BDD40(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(8, v3);

  if (v4)
  {
    v5 = sub_20C134024();
    if ((v7 & 0xE0) == 0x20)
    {
      v8 = *(v1 + 112);
      v9 = sub_20BBA1144(v5 / 100.0);
      if (v9)
      {
        v10 = v9;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v11 + 16))(v10, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v8 + 40);
          v14 = swift_getObjectType();
          (*(v13 + 16))(v10, v14, v13);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_20B6FFF90(&v15, 8);
      swift_endAccess();
      sub_20B8C22B4(0, a1);
    }

    else
    {

      sub_20B8C3888(v5, v6, v7);
    }
  }
}

void sub_20B8BDEE8(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v4 = sub_20B8D7BF8(13, v3);

  if (v4)
  {
    sub_20C133D04();
    v6 = v5;
    sub_20C133CF4();
    v8 = v7;
    sub_20C133CD4();
    sub_20B60E744(v6, v8, v9);
    swift_beginAccess();
    sub_20B6FFF90(&v14, 13);
    swift_endAccess();
    sub_20B8C22B4(0, a1);
    v10 = type metadata accessor for AccessibilitySessionOverlayPresenter();
    sub_20C133CF4();
    v12 = v11;
    sub_20C133CD4();
    [v10 accessibilityAnnounceTimer:1 start:v12 - v13];
  }
}

void sub_20B8BE00C(double a1)
{
  v2 = v1;
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C514();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v18 = sub_20B8D7BF8(13, v17);

  if (v18)
  {
    v29 = v5;
    v19 = *(v2 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 24);
      ObjectType = swift_getObjectType();
      (*(v20 + 32))(ObjectType, v20);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = *(v19 + 40);
      v23 = swift_getObjectType();
      (*(v22 + 32))(v23, v22);
      swift_unknownObjectRelease();
    }

    sub_20B5E2E18();
    v27 = sub_20C13D374();
    sub_20C13C504();
    sub_20C13C574();
    v28 = *(v11 + 8);
    v28(v13, v32);
    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    *(v24 + 24) = a1;
    *(v24 + 32) = 0x3FA999999999999ALL;
    aBlock[4] = sub_20B8C3964;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_58;
    v25 = _Block_copy(aBlock);

    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
    sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280, &qword_20C15A2D0, MEMORY[0x277D83970]);
    sub_20C13DA94();
    v26 = v27;
    MEMORY[0x20F2F4A80](v16, v10, v7, v25);
    _Block_release(v25);

    (*(v29 + 8))(v7, v4);
    (*(v30 + 8))(v10, v31);
    v28(v16, v32);
  }
}

id sub_20B8BE478(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  sub_20B6C9884(13);
  swift_endAccess();
  sub_20B8C22B4(0, a2 - a3);
  return [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceTimer:0 start:0.0];
}

void sub_20B8BE508(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v6 = v5;
  LODWORD(v8) = a2;
  v11 = sub_20C13C4B4();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C4F4();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C514();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  v23 = *(v5 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v24 = sub_20B8D7BF8(1, v23);

  if (v24)
  {
    if (v8)
    {
      v51 = v17;
      v25 = sub_20B9B2370(a1);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v26 = v6[3];
        ObjectType = swift_getObjectType();
        (*(v26 + 48))(v25, 0, ObjectType, v26);
        swift_unknownObjectRelease();
      }

      v49 = a1;
      v50 = v8;
      v28 = sub_20B9B2370(a1);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v29 = v6[5];
        v30 = swift_getObjectType();
        (*(v29 + 48))(v28, 0, v30, v29);
        swift_unknownObjectRelease();
      }

      sub_20B5E2E18();
      v47 = sub_20C13D374();
      sub_20C13C504();
      sub_20C13C574();
      v31 = *(v56 + 8);
      v56 += 8;
      v48 = v31;
      v31(v19, v51);
      v32 = swift_allocObject();
      *(v32 + 16) = v6;
      *(v32 + 24) = a5;
      *(v32 + 32) = v25;
      aBlock[4] = sub_20B8C3954;
      aBlock[5] = v32;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_51_0;
      v33 = _Block_copy(aBlock);

      v34 = v25;

      sub_20C13C4D4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_20B7E9080();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
      v46 = v28;
      sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280, &qword_20C15A2D0, MEMORY[0x277D83970]);
      v8 = v55;
      sub_20C13DA94();
      v35 = v47;
      MEMORY[0x20F2F4A80](v22, v16, v13, v33);
      _Block_release(v33);

      (*(v54 + 8))(v13, v8);
      (*(v52 + 8))(v16, v53);
      v48(v22, v51);
      a1 = v49;
      LOBYTE(v8) = v50;
    }

    v36 = v6[9];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 24);
      v38 = swift_getObjectType();
      (*(v37 + 16))(a1, v8 & 1, v38, v37, a3);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = *(v36 + 40);
      v40 = swift_getObjectType();
      (*(v39 + 16))(a1, v8 & 1, v40, v39, a3);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v41 = v6[9];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 24);
      v43 = swift_getObjectType();
      (*(v42 + 16))(a1, v8 & 1, v43, v42, a3);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v41 + 40);
      v45 = swift_getObjectType();
      (*(v44 + 16))(a1, v8 & 1, v45, v44, a3);

      swift_unknownObjectRelease();
    }
  }
}

void sub_20B8BEB40(uint64_t a1, void *a2, double a3)
{
  sub_20BE8C680(&unk_28228D688);
  v28 = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v8 = asc_282287E80[0];
  v9 = *(a1 + v7);

  v10 = sub_20B8D7BF8(v8, v9);

  if (v10)
  {
    sub_20B6FFF90(&v27, v8);
  }

  v11 = asc_282287E80[1];
  v12 = *(a1 + v7);

  v13 = sub_20B8D7BF8(v11, v12);

  if (v13)
  {
    sub_20B6FFF90(&v27, v11);
  }

  v14 = asc_282287E80[2];
  v15 = *(a1 + v7);

  v16 = sub_20B8D7BF8(v14, v15);

  if (v16)
  {
    sub_20B6FFF90(&v27, v14);
  }

  v17 = asc_282287E80[3];
  v18 = *(a1 + v7);

  v19 = sub_20B8D7BF8(v17, v18);

  if (v19)
  {
    sub_20B6FFF90(&v27, v17);
  }

  v20 = asc_282287E80[4];
  v21 = *(a1 + v7);

  v22 = sub_20B8D7BF8(v20, v21);

  if (v22)
  {
    sub_20B6FFF90(&v27, v20);
  }

  v23 = asc_282287E80[5];
  v24 = *(a1 + v7);

  v25 = sub_20B8D7BF8(v23, v24);

  if (v25)
  {
    sub_20B6FFF90(&v27, v23);
  }

  *(a1 + v7) = v28;

  sub_20B8C22B4(0, a3);
  v26 = [a2 string];
  if (!v26)
  {
    sub_20C13C954();
    v26 = sub_20C13C914();
  }

  [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];
}

void sub_20B8BEDB8(uint64_t a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_20B9B2558(a1);
  v7 = sub_20B9B28BC(v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(v6, v7, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  v10 = sub_20B9B2558(v5);
  v11 = sub_20B9B28BC(v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v3 + 40);
    v13 = swift_getObjectType();
    (*(v12 + 48))(v10, v11, v13, v12);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_20B6FFF90(&v27, 6);
  swift_endAccess();
  sub_20B8C22B4(0, a3);
  v14 = [v6 string];
  v15 = sub_20C13C954();
  v17 = v16;

  MEMORY[0x20F2F4230](10, 0xE100000000000000);

  v19 = v15;
  v18 = v17;
  if (v7)
  {
    v20 = [v7 string];
    v21 = sub_20C13C954();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = type metadata accessor for AccessibilitySessionOverlayPresenter();
  v26 = v18;

  MEMORY[0x20F2F4230](v21, v23);

  v25 = sub_20C13C914();

  [v24 accessibilityAnnounceEvent_];
}

uint64_t sub_20B8BF028(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  v7 = a1;
  v8 = sub_20C13C4B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C4F4();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C514();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v20 = *(v4 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements);

  v21 = sub_20B8D7BF8(1, v20);

  if ((v21 & 1) == 0)
  {
    return sub_20BB78934();
  }

  v22 = sub_20B9B2370(v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v23 + 48))(v22, 0, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  v38 = v9;
  v39 = v8;
  v25 = sub_20B9B2370(v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v5 + 40);
    v27 = swift_getObjectType();
    (*(v26 + 48))(v25, 0, v27, v26);
    swift_unknownObjectRelease();
  }

  v37 = v25;
  swift_beginAccess();
  sub_20B6FFF90(&v46, 1);
  swift_endAccess();
  sub_20B8C22B4(0, a4);
  sub_20BB78934();
  v36 = v22;
  v28 = [v22 string];
  if (!v28)
  {
    sub_20C13C954();
    v28 = sub_20C13C914();
  }

  [type metadata accessor for AccessibilitySessionOverlayPresenter() accessibilityAnnounceEvent_];

  sub_20B5E2E18();
  v29 = sub_20C13D374();
  sub_20C13C504();
  sub_20C13C574();
  v30 = v41;
  v40 = *(v40 + 8);
  (v40)(v16, v41);
  v31 = swift_allocObject();
  *(v31 + 16) = v5;
  *(v31 + 24) = a4;
  aBlock[4] = sub_20B8C3948;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_41;
  v32 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B6D6ABC(&qword_2811005A0, &unk_27C766280, &qword_20C15A2D0, MEMORY[0x277D83970]);
  v33 = v42;
  v34 = v39;
  sub_20C13DA94();
  MEMORY[0x20F2F4A80](v19, v13, v33, v32);
  _Block_release(v32);

  (*(v38 + 8))(v33, v34);
  (*(v43 + 8))(v13, v44);
  return (v40)(v19, v30);
}

void sub_20B8BF59C(uint64_t a1, double a2)
{
  sub_20BE8C680(&unk_28228D6B0);
  v25 = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v6 = asc_282287E80[0];
  v7 = *(a1 + v5);

  v8 = sub_20B8D7BF8(v6, v7);

  if (v8)
  {
    sub_20B6FFF90(&v24, v6);
  }

  v9 = asc_282287E80[1];
  v10 = *(a1 + v5);

  v11 = sub_20B8D7BF8(v9, v10);

  if (v11)
  {
    sub_20B6FFF90(&v24, v9);
  }

  v12 = asc_282287E80[2];
  v13 = *(a1 + v5);

  v14 = sub_20B8D7BF8(v12, v13);

  if (v14)
  {
    sub_20B6FFF90(&v24, v12);
  }

  v15 = asc_282287E80[3];
  v16 = *(a1 + v5);

  v17 = sub_20B8D7BF8(v15, v16);

  if (v17)
  {
    sub_20B6FFF90(&v24, v15);
  }

  v18 = asc_282287E80[4];
  v19 = *(a1 + v5);

  v20 = sub_20B8D7BF8(v18, v19);

  if (v20)
  {
    sub_20B6FFF90(&v24, v18);
  }

  v21 = asc_282287E80[5];
  v22 = *(a1 + v5);

  v23 = sub_20B8D7BF8(v21, v22);

  if (v23)
  {
    sub_20B6FFF90(&v24, v21);
  }

  *(a1 + v5) = v25;

  sub_20B8C22B4(0, a2);
}

void sub_20B8BF7C0(uint64_t a1, double a2)
{
  v3 = sub_20C133CE4();
  v5 = v4;
  v7 = v6 & 1;
  sub_20B8C38A0();
  sub_20B8C38F4();
  if (sub_20C133C14())
  {
    sub_20B583F4C(v3, v5, v7);
  }

  else
  {
    v8 = sub_20C133C14();
    sub_20B583F4C(v3, v5, v7);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  sub_20B8BF9C8(a2);
}

void sub_20B8BF8BC(uint64_t a1, double a2)
{
  v3 = sub_20C134024();
  v6 = v5 >> 5;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      swift_beginAccess();
      v7 = 9;
    }

    else
    {
      swift_beginAccess();
      v7 = 11;
    }
  }

  else if (v6 >= 2)
  {
    sub_20B8C3888(v3, v4, v5);
    swift_beginAccess();
    v7 = 7;
  }

  else
  {
    swift_beginAccess();
    v7 = 8;
  }

  sub_20B6C9884(v7);
  swift_endAccess();
  sub_20B8BF9C8(a2);
}

void sub_20B8BF9C8(double a1)
{
  v2 = v1;
  sub_20BE8F7E4(*(*(v1 + 72) + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) == 1, (*(*(v1 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 72) & 1) == 0);
  v5 = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = *(&unk_282287E60 + v7 + 32);
    v12 = *(v2 + v6);

    v13 = sub_20B8D7BF8(v11, v12);

    if (v13)
    {
      v18 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20BB5D99C(0, *(v8 + 16) + 1, 1);
        v8 = v18;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_20BB5D99C((v9 > 1), v10 + 1, 1);
        v8 = v18;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 6);
  v18 = v5;
  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = (v8 + 32);
    do
    {
      v16 = *v15++;
      sub_20B6FFF90(&v17, v16);
      --v14;
    }

    while (v14);
  }

  *(v2 + v6) = v18;

  sub_20B8C22B4(0, a1);
}

void sub_20B8BFB80()
{
  v1 = v0;
  sub_20BE8F7E4(*(*(v0 + 72) + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) == 1, (*(*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 72) & 1) == 0);
  v3 = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = *(&unk_282287E60 + v5 + 32);
    v10 = *(v1 + v4);

    v11 = sub_20B8D7BF8(v9, v10);

    if (v11)
    {
      v20 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20BB5D99C(0, *(v6 + 16) + 1, 1);
        v6 = v20;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_20BB5D99C((v7 > 1), v8 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 6);
  v20 = v3;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = (v6 + 32);
    do
    {
      v14 = *v13++;
      sub_20B6FFF90(&v19, v14);
      --v12;
    }

    while (v12);
  }

  v15 = v20;

  v18 = sub_20B604E74(v16, v15, v17);

  *(v1 + v4) = v18;

  sub_20B8C22B4(1, 0.0);
}

void sub_20B8BFD54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133D84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = &v57 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = sub_20C134B64();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v72 = a1;
  sub_20C133D34();
  v68 = sub_20C134B54();
  v69 = v21;
  v67 = v22;
  v23 = *(v15 + 8);
  v24 = v20;
  v25 = v4;
  v23(v24, v14);
  v26 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings;
  swift_beginAccess();
  v70 = v2;
  v71 = v26;
  sub_20B52F9E8(v2 + v26, v13, &unk_27C765120, &unk_20C152470);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v25))
  {
    sub_20B520158(v13, &unk_27C765120, &unk_20C152470);
    sub_20B583F4C(v68, v69, v67 & 1);
    v28 = *(v5 + 16);
    v30 = v71;
    v29 = v72;
LABEL_7:
    v45 = v70;
    goto LABEL_8;
  }

  v61 = v27;
  v31 = v65;
  v63 = *(v5 + 16);
  v60 = v5 + 16;
  v63(v65, v13, v25);
  sub_20B520158(v13, &unk_27C765120, &unk_20C152470);
  sub_20C133D34();
  v62 = v5;
  v32 = *(v5 + 8);
  v59 = v5 + 8;
  v58 = v32;
  v32(v31, v25);
  v33 = sub_20C134B54();
  v34 = v25;
  v36 = v35;
  v38 = v37;
  v23(v17, v14);
  v76 = v68;
  v77 = v69;
  v78 = v67 & 1;
  v73 = v33;
  v74 = v36;
  v75 = v38 & 1;
  sub_20B64BD18();
  sub_20B64BD6C();
  v39 = sub_20C133BF4();
  sub_20B584078(v33, v36, v38 & 1);
  sub_20B583F4C(v76, v77, v78);
  if ((v39 & 1) == 0)
  {
    v25 = v34;
    v30 = v71;
    v29 = v72;
    v5 = v62;
    v28 = v63;
    goto LABEL_7;
  }

  v40 = sub_20C133D24();
  v42 = v41;
  v44 = v43;
  v45 = v70;
  v30 = v71;
  v46 = v64;
  sub_20B52F9E8(v70 + v71, v64, &unk_27C765120, &unk_20C152470);
  if (v61(v46, 1, v34))
  {
    sub_20B520158(v46, &unk_27C765120, &unk_20C152470);
    sub_20B583F4C(v40, v42, v44 & 1);
    v25 = v34;
    v29 = v72;
    v5 = v62;
    v28 = v63;
LABEL_8:
    v47 = v66;
    v28(v66, v29, v25);
    (*(v5 + 56))(v47, 0, 1, v25);
    swift_beginAccess();
    sub_20B5DF2D4(v47, v45 + v30, &unk_27C765120, &unk_20C152470);
    swift_endAccess();
    sub_20B8C0364();
    sub_20B8C2118();
    sub_20B8C22B4(0, 0.0);
    return;
  }

  v48 = v65;
  v63(v65, v46, v34);
  sub_20B520158(v46, &unk_27C765120, &unk_20C152470);
  v49 = v34;
  v50 = sub_20C133D24();
  v52 = v51;
  v54 = v53;
  v45 = v70;
  v58(v48, v49);
  v54 &= 1u;
  v76 = v40;
  v77 = v42;
  v78 = v44 & 1;
  v73 = v50;
  v74 = v52;
  v75 = v54;
  sub_20B815F98();
  sub_20B815FEC();
  v55 = sub_20C133BF4();
  v56 = v52;
  v30 = v71;
  sub_20B584078(v50, v56, v54);
  sub_20B583F4C(v76, v77, v78);
  v5 = v62;
  v28 = v63;
  v25 = v49;
  v29 = v72;
  if ((v55 & 1) == 0)
  {
    goto LABEL_8;
  }
}

double sub_20B8C0364()
{
  v1 = v0;
  v174 = sub_20C134B64();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = &v172 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_20C133D84();
  v180 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v179 = &v172 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_20C136484();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v200 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260, &unk_20C152430);
  MEMORY[0x28223BE20](v5 - 8);
  v178 = &v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  *&v198 = &v172 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0, &unk_20C157490);
  MEMORY[0x28223BE20](v9 - 8);
  v193 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v197 = &v172 - v12;
  v188 = type metadata accessor for SessionDistanceMetricPresenter.State(0);
  MEMORY[0x28223BE20](v188);
  v189 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050, &unk_20C153C10);
  MEMORY[0x28223BE20](v14 - 8);
  v177 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v208 = &v172 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0, &unk_20C153C20);
  MEMORY[0x28223BE20](v18 - 8);
  v209 = &v172 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v20 - 8);
  v175 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v207 = &v172 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v24 - 8);
  v190 = &v172 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v199 = &v172 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767270, &qword_20C17C160);
  MEMORY[0x28223BE20](v28 - 8);
  v187 = &v172 - v29;
  v204 = sub_20C1369A4();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v206 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768800, &unk_20C152480);
  MEMORY[0x28223BE20](v31 - 8);
  v184 = &v172 - v32;
  v202 = sub_20C1366D4();
  v201 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v205 = &v172 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C135274();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v172 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v38 - 8);
  v183 = &v172 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v181 = &v172 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v172 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762D00, &unk_20C160540);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v172 - v46;
  v48 = sub_20C136544();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v172 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences;
  swift_beginAccess();
  v210 = v1;
  v182 = v52;
  sub_20B52F9E8(v1 + v52, v44, &unk_27C765100, &unk_20C152450);
  v53 = *(v35 + 48);
  v54 = v53(v44, 1, v34);
  v194 = v51;
  v186 = v35;
  v185 = v37;
  if (v54)
  {
    v55 = v34;
    sub_20B520158(v44, &unk_27C765100, &unk_20C152450);
    (*(v49 + 56))(v47, 1, 1, v48);
    sub_20C1364F4();
    if ((*(v49 + 48))(v47, 1, v48) != 1)
    {
      sub_20B520158(v47, &qword_27C762D00, &unk_20C160540);
    }
  }

  else
  {
    (*(v35 + 16))(v37, v44, v34);
    sub_20B520158(v44, &unk_27C765100, &unk_20C152450);
    sub_20C135244();
    v56 = v37;
    v55 = v34;
    (*(v35 + 8))(v56, v34);
    (*(v49 + 56))(v47, 0, 1, v48);
    (*(v49 + 32))(v51, v47, v48);
  }

  v191 = v49;
  v192 = v48;
  v57 = v182;
  v58 = v181;
  sub_20B52F9E8(v210 + v182, v181, &unk_27C765100, &unk_20C152450);
  v59 = v55;
  v60 = v53;
  if (v53(v58, 1, v55))
  {
    sub_20B520158(v58, &unk_27C765100, &unk_20C152450);
    v61 = v201;
    v62 = v184;
    v63 = v202;
    (*(v201 + 56))(v184, 1, 1, v202);
    sub_20C136684();
    v64 = (*(v61 + 48))(v62, 1, v63);
    v65 = v189;
    v66 = v186;
    v67 = v185;
    if (v64 != 1)
    {
      sub_20B520158(v62, &unk_27C768800, &unk_20C152480);
    }
  }

  else
  {
    v66 = v186;
    v67 = v185;
    (*(v186 + 16))(v185, v58, v59);
    sub_20B520158(v58, &unk_27C765100, &unk_20C152450);
    v68 = v184;
    sub_20C135254();
    (*(v66 + 8))(v67, v59);
    v69 = v201;
    v70 = v202;
    (*(v201 + 56))(v68, 0, 1, v202);
    (*(v69 + 32))(v205, v68, v70);
    v65 = v189;
  }

  v71 = v183;
  sub_20B52F9E8(v210 + v57, v183, &unk_27C765100, &unk_20C152450);
  v72 = v60(v71, 1, v59);
  v73 = v199;
  v74 = v187;
  if (v72)
  {
    sub_20B520158(v71, &unk_27C765100, &unk_20C152450);
    v75 = v203;
    v76 = v204;
    (*(v203 + 56))(v74, 1, 1, v204);
    sub_20C136954();
    v77 = (*(v75 + 48))(v74, 1, v76);
    v78 = v198;
    v79 = v197;
    if (v77 != 1)
    {
      sub_20B520158(v74, &unk_27C767270, &qword_20C17C160);
    }
  }

  else
  {
    (*(v66 + 16))(v67, v71, v59);
    sub_20B520158(v71, &unk_27C765100, &unk_20C152450);
    sub_20C135264();
    (*(v66 + 8))(v67, v59);
    v80 = v203;
    v81 = v204;
    (*(v203 + 56))(v74, 0, 1, v204);
    (*(v80 + 32))(v206, v74, v81);
    v78 = v198;
    v79 = v197;
  }

  v82 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection;
  v83 = v210;
  swift_beginAccess();
  sub_20B52F9E8(v83 + v82, v73, &unk_27C765CB0, &unk_20C1523C0);
  v84 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings;
  swift_beginAccess();
  sub_20B52F9E8(v83 + v84, v207, &unk_27C765120, &unk_20C152470);
  LODWORD(v187) = sub_20C1371B4();
  LODWORD(v189) = sub_20C1371F4();
  v85 = *(v83[9] + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state);
  v86 = sub_20C1371D4();
  v87 = v83[11];
  v88 = OBJC_IVAR____TtC9SeymourUI23SessionCadencePresenter_lastReceivedCadence;
  swift_beginAccess();
  sub_20B52F9E8(v87 + v88, v209, &unk_27C7687F0, &unk_20C153C20);
  v89 = v83[12];
  v90 = OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_state;
  swift_beginAccess();
  sub_20B790FC0(v89 + v90, v65);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v92 = sub_20C134514();
    v93 = *(v92 - 8);
    v94 = v208;
    (*(v93 + 32))(v208, v65, v92);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767280, &qword_20C158240);
    swift_unknownObjectRelease();
    v92 = sub_20C134514();
    v93 = *(v92 - 8);
    v94 = v208;
    (*(v93 + 32))(v208, v65, v92);
LABEL_17:
    (*(v93 + 56))(v94, 0, 1, v92);
    goto LABEL_19;
  }

  v95 = sub_20C134514();
  (*(*(v95 - 8) + 56))(v208, 1, 1, v95);
LABEL_19:
  v96 = v83[13];
  v97 = OBJC_IVAR____TtC9SeymourUI25SessionHeartRatePresenter_lastReceivedMetric;
  swift_beginAccess();
  sub_20B52F9E8(v96 + v97, v79, &unk_27C7650E0, &unk_20C157490);
  v98 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection;
  swift_beginAccess();
  sub_20B52F9E8(v83 + v98, v78, &unk_27C767260, &unk_20C152430);
  v216 = sub_20B7163FC(byte_282287620);
  v99 = *(v86 + 16);
  if (v99)
  {
    v213 = MEMORY[0x277D84F90];
    sub_20BB5D99C(0, v99, 0);
    v100 = 32;
    v101 = v213;
    do
    {
      v102 = *(v86 + v100);
      v213 = v101;
      v104 = *(v101 + 16);
      v103 = *(v101 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_20BB5D99C((v103 > 1), v104 + 1, 1);
        v101 = v213;
      }

      *(v101 + 16) = v104 + 1;
      *(v101 + v104 + 32) = 0x205040C03uLL >> (8 * v102);
      ++v100;
      --v99;
    }

    while (v99);

    v78 = v198;
    v79 = v197;
    v73 = v199;
  }

  else
  {

    v101 = MEMORY[0x277D84F90];
  }

  v105 = v196;
  if (qword_27C760C50 != -1)
  {
    swift_once();
  }

  v106 = off_27C76FE10;

  v107 = sub_20B7163FC(v101);

  if (*(v107 + 16) <= v106[2] >> 3)
  {
    v213 = v106;
    sub_20B6CE748(v107);

    v108 = v213;
  }

  else
  {
    v108 = sub_20B6CFECC(v107, v106);
  }

  sub_20B6CE748(v108);

  v109 = v190;
  sub_20B52F9E8(v73, v190, &unk_27C765CB0, &unk_20C1523C0);
  v110 = v195;
  if ((*(v195 + 48))(v109, 1, v105) == 1)
  {

    sub_20B520158(v109, &unk_27C765CB0, &unk_20C1523C0);
    v111 = MEMORY[0x277D84FA0];
    v112 = v192;
    v113 = v191;
  }

  else
  {
    (*(v110 + 32))(v200, v109, v105);
    v114 = sub_20C1366C4();
    v116 = v115;
    v213 = v114;
    v214 = v115;
    v118 = v117 & 1;
    v215 = v117 & 1;
    LOBYTE(v211) = 0;
    sub_20B64B480();
    sub_20B64B4D4();
    v119 = sub_20C133C04();
    sub_20B583F4C(v114, v116, v118);
    if (v119)
    {

      v216 = MEMORY[0x277D84FA0];
    }

    v120 = sub_20C136994();
    v122 = v121;
    v213 = v120;
    v214 = v121;
    v124 = v123 & 1;
    v215 = v123 & 1;
    LOBYTE(v211) = 1;
    sub_20B64B57C();
    sub_20B64B5D0();
    v125 = sub_20C133C04();
    sub_20B583F4C(v120, v122, v124);
    if (v125)
    {
      sub_20B6C9884(12);
    }

    v126 = sub_20C136534();
    v128 = v127;
    v213 = v126;
    v214 = v127;
    v130 = v129 & 1;
    v215 = v129 & 1;
    LOBYTE(v211) = 0;
    sub_20B64B3D8();
    sub_20B64B42C();
    v131 = sub_20C133C04();
    sub_20B583F4C(v126, v128, v130);
    if (v131)
    {
      sub_20B6C9884(1);
    }

    v132 = v176;
    v133 = v175;
    if (v85 == 3)
    {
      sub_20B6C9884(1);
    }

    v134 = v193;
    if ((v187 & 1) == 0)
    {
      sub_20B6C9884(0);
    }

    if ((v189 & 1) == 0)
    {
      sub_20B6C9884(1);
    }

    sub_20B52F9E8(v207, v133, &unk_27C765120, &unk_20C152470);
    v135 = v180;
    if ((*(v180 + 48))(v133, 1, v132) == 1)
    {
      sub_20B520158(v133, &unk_27C765120, &unk_20C152470);
      sub_20B6C9884(0);
    }

    else
    {
      (*(v135 + 32))(v179, v133, v132);
      if ((sub_20B8B5FD0() & 1) == 0)
      {
        sub_20B6C9884(0);
      }

      v136 = v172;
      sub_20C133D34();
      v137 = sub_20C134B54();
      v139 = v138;
      v141 = v140;
      (*(v173 + 8))(v136, v174);
      v213 = v137;
      v214 = v139;
      v215 = v141 & 1;
      v198 = xmmword_20C152300;
      v211 = xmmword_20C152300;
      v212 = 1;
      sub_20B64BD18();
      sub_20B64BD6C();
      v142 = sub_20C133BF4();
      sub_20B583F4C(v137, v139, v141 & 1);
      v134 = v193;
      if ((v142 & 1) != 0 || (v143 = sub_20C136424(), v145 != -1) && (v213 = v143, v214 = v144, v215 = v145, v211 = v198, v212 = 1, v146 = sub_20C133BF4(), sub_20B583F4C(v213, v214, v215), (v146)) && *(v216 + 16))
      {
        sub_20B6C9884(byte_28228D5E0);
        sub_20B6C9884(byte_28228D5E1);
        (*(v180 + 8))(v179, v132);
      }

      else
      {
        (*(v180 + 8))(v179, v132);
      }

      v73 = v199;
    }

    v147 = sub_20C0949C8();
    v148 = v178;
    sub_20B52F9E8(v78, v178, &unk_27C767260, &unk_20C152430);
    v149 = sub_20C1368F4();
    v150 = *(v149 - 8);
    v151 = (*(v150 + 48))(v148, 1, v149);
    if (v151 == 1)
    {
      sub_20B520158(v148, &unk_27C767260, &unk_20C152430);
      v152 = MEMORY[0x277D84FA0];
    }

    else
    {
      sub_20C04CE54(v151);
      v154 = v153;
      (*(v150 + 8))(v148, v149);
      v152 = v154;
    }

    v155 = sub_20B722BEC(v152, v147);
    v156 = v177;
    sub_20B52F9E8(v208, v177, &unk_27C765050, &unk_20C153C10);
    v157 = sub_20C134514();
    v158 = *(v157 - 8);
    if ((*(v158 + 48))(v156, 1, v157) == 1)
    {
      sub_20B520158(v156, &unk_27C765050, &unk_20C153C10);
    }

    else
    {
      v159 = v73;
      v160 = v78;
      v161 = v79;
      v162 = sub_20C1344E4();
      (*(v158 + 8))(v156, v157);
      BYTE4(v213) = BYTE4(v162) & 1;
      LODWORD(v213) = v162;
      LODWORD(v211) = 0;
      BYTE4(v211) = 1;
      sub_20B791024();
      sub_20B791078();
      if (sub_20C133BF4())
      {
        v213 = v155;
        sub_20B6FFF90(&v211, 3);
        v155 = v213;
      }

      v79 = v161;
      v78 = v160;
      v73 = v159;
      v134 = v193;
    }

    sub_20B52F9E8(v79, v134, &unk_27C7650E0, &unk_20C157490);
    v163 = sub_20C134914();
    v164 = *(v163 - 8);
    if ((*(v164 + 48))(v134, 1, v163) == 1)
    {
      sub_20B520158(v134, &unk_27C7650E0, &unk_20C157490);
    }

    else
    {
      v165 = sub_20C1348D4();
      (*(v164 + 8))(v134, v163);
      BYTE4(v213) = BYTE4(v165) & 1;
      LODWORD(v213) = v165;
      LODWORD(v211) = 0;
      BYTE4(v211) = 1;
      sub_20B64BA78();
      sub_20B64BACC();
      if (sub_20C133BF4())
      {
        v213 = v155;
        sub_20B6FFF90(&v211, byte_28228D608);
        sub_20B6FFF90(&v211, byte_28228D609);
        sub_20B6FFF90(&v211, byte_28228D60A);
        v155 = v213;
      }
    }

    v166 = v195;
    v112 = v192;
    v113 = v191;
    v167 = sub_20C133DD4();
    v168 = (*(*(v167 - 8) + 48))(v209, 1, v167);
    v170 = v196;
    if (v168 != 1)
    {
      v213 = v155;
      sub_20B6FFF90(&v211, 2);
      v155 = v213;
    }

    v111 = sub_20B604E74(v155, v216, v169);

    (*(v166 + 8))(v200, v170);
  }

  sub_20B520158(v78, &unk_27C767260, &unk_20C152430);
  sub_20B520158(v79, &unk_27C7650E0, &unk_20C157490);
  sub_20B520158(v208, &unk_27C765050, &unk_20C153C10);
  sub_20B520158(v207, &unk_27C765120, &unk_20C152470);
  sub_20B520158(v73, &unk_27C765CB0, &unk_20C1523C0);
  (*(v203 + 8))(v206, v204);
  (*(v201 + 8))(v205, v202);
  (*(v113 + 8))(v194, v112);
  sub_20B520158(v209, &unk_27C7687F0, &unk_20C153C20);
  *(v83 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_supportedElements) = v111;

  return result;
}

double sub_20B8C2118()
{
  v1 = v0;
  sub_20BE8F7E4(*(*(v0 + 72) + OBJC_IVAR____TtC9SeymourUI23SessionBurnBarPresenter_state) == 1, (*(*(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerPresenter) + 72) & 1) == 0);
  v3 = v2;
  v4 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = *(&unk_282287E60 + v5 + 32);
    v10 = *(v1 + v4);

    v11 = sub_20B8D7BF8(v9, v10);

    if (v11)
    {
      v17 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20BB5D99C(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_20BB5D99C((v7 > 1), v8 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 6);
  v17 = v3;
  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = (v6 + 32);
    do
    {
      v14 = *v13++;
      sub_20B6FFF90(&v16, v14);
      --v12;
    }

    while (v12);
  }

  *(v1 + v4) = v17;

  return result;
}

void sub_20B8C22B4(int a1, double a2)
{
  v3 = v2;
  v70 = a1;
  v5 = sub_20C13BB84();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v72 = &v69[-v8];
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = *(&unk_282287E60 + v9 + 32);
    switch(v11)
    {
      case 10:

        break;
      default:
        v12 = sub_20C13DFF4();

        if ((v12 & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78[0] = v10;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20BB5D99C(0, *(v10 + 16) + 1, 1);
            v10 = v78[0];
          }

          v15 = *(v10 + 16);
          v14 = *(v10 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_20BB5D99C((v14 > 1), v15 + 1, 1);
            v10 = v78[0];
          }

          *(v10 + 16) = v15 + 1;
          *(v10 + v15 + 32) = v11;
        }

        break;
    }

    ++v9;
  }

  while (v9 != 6);
  v16 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_currentElements;
  swift_beginAccess();
  v17 = *(v3 + v16);

  v20 = sub_20B604E74(v18, v17, v19);

  v21 = sub_20B8C3274(v10, v20);

  if (v21)
  {

    v22 = v72;
LABEL_14:
    swift_beginAccess();
    sub_20B6C9884(10);
    goto LABEL_16;
  }

  v23 = sub_20B8C3274(byte_282287E88, v20);

  v22 = v72;
  if (v23)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  sub_20B6FFF90(&v77, 10);
LABEL_16:
  swift_endAccess();
  v24 = *(v3 + v16);

  v27 = sub_20B604E74(v25, v24, v26);

  v28 = sub_20B7163FC(byte_282287620);
  if (v27[2] <= *(v28 + 16) >> 3)
  {
    v76[0] = v28;
    sub_20B6CE748(v27);
    v29 = v76[0];
  }

  else
  {
    v29 = sub_20B6CFECC(v27, v28);
  }

  sub_20C13B564();

  v30 = sub_20C13BB74();
  v31 = sub_20C13D1F4();

  v32 = os_log_type_enabled(v30, v31);
  v71 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v76[0] = v34;
    *v33 = 136315138;
    sub_20B71A744();

    v35 = sub_20C13CF94();
    v37 = v36;

    v38 = sub_20B51E694(v35, v37, v76);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_20B517000, v30, v31, "Current Elements: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v33, -1, -1);

    v39 = *(v74 + 8);
    v39(v72, v75);
  }

  else
  {

    v39 = *(v74 + 8);
    v39(v22, v75);
  }

  v40 = v73;
  sub_20C13B564();

  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v76[0] = v44;
    *v43 = 136315138;
    sub_20B71A744();

    v45 = sub_20C13CF94();
    v47 = v46;

    v48 = sub_20B51E694(v45, v47, v76);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_20B517000, v41, v42, "Supported Elements: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v44, -1, -1);
    MEMORY[0x20F2F6A40](v43, -1, -1);

    v49 = v73;
  }

  else
  {

    v49 = v40;
  }

  v39(v49, v75);
  v50 = v71;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v51 + 8))(v27, v50, ObjectType, v51, a2);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v53 = *(v3 + 40);
    v54 = swift_getObjectType();
    (*(v53 + 8))(v27, v50, v54, v53, a2);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v76[0] = byte_282287E88;
  sub_20B8D936C(&unk_282287E60);
  v55 = sub_20B7163FC(v76[0]);

  v57 = sub_20B604E74(v27, v55, v56);

  v58 = v57[2];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (v58)
  {
    v60 = v70;
    if (Strong)
    {
      v61 = *(v3 + 24);
      v62 = swift_getObjectType();
      (*(v61 + 32))(1, v60 & 1, v62, v61);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v63 = *(v3 + 40);
      v64 = swift_getObjectType();
      (*(v63 + 32))(1, v60 & 1, v64, v63);
LABEL_39:
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (Strong)
    {
      v65 = *(v3 + 24);
      v66 = swift_getObjectType();
      (*(v65 + 40))(0, v66, v65);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v67 = *(v3 + 40);
      v68 = swift_getObjectType();
      (*(v67 + 40))(0, v68, v67);
      goto LABEL_39;
    }
  }
}

char *sub_20B8C2BF0()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();

  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_sessionOrigin);

  sub_20B815F44(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_stringBuilder);
  sub_20B815F44(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_externalOverlayStringBuilder);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_timerProvider));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_popupEventDismissalTimer, &unk_27C765CA0, &unk_20C15A5F8);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_metricMinimizerTimer, &unk_27C765CA0, &unk_20C15A5F8);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_displayPreferences, &unk_27C765100, &unk_20C152450);
  v1 = OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_activityRings, &unk_27C765120, &unk_20C152470);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_heartRateDeviceConnection, &unk_27C767260, &unk_20C152430);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionOverlayPresenter_workoutDeviceConnection, &unk_27C765CB0, &unk_20C1523C0);

  return v0;
}

uint64_t sub_20B8C2E28()
{
  sub_20B8C2BF0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionOverlayPresenter(uint64_t a1)
{
  result = qword_27C767230;
  if (!qword_27C767230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8C2ED4(uint64_t a1)
{
  sub_20C13A484();
  if (v1 <= 0x3F)
  {
    sub_20B8C3180(319, &unk_27C767240, MEMORY[0x277D516E8]);
    if (v2 <= 0x3F)
    {
      sub_20C137254();
      if (v3 <= 0x3F)
      {
        sub_20B8C3180(319, &qword_27C766DC8, MEMORY[0x277D50400]);
        if (v4 <= 0x3F)
        {
          sub_20B8C3180(319, &unk_27C767250, MEMORY[0x277D52DE8]);
          if (v5 <= 0x3F)
          {
            sub_20B8C3180(319, &qword_27C76B320, MEMORY[0x277D529D8]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_20B8C3180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_20B8C321C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilitySessionOverlayPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B8C3274(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v18 = *(a1 + 16);
  if (!v18)
  {
    return 1;
  }

  v3 = 0;
  v17 = a1 + 32;
  v19 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v4 = *(v17 + v3);
      sub_20C13E164();
      sub_20C13CA64();

      v5 = sub_20C13E1B4();
      v6 = -1 << *(a2 + 32);
      v7 = v5 & ~v6;
      if ((*(v19 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
      {
        break;
      }
    }

LABEL_4:
    if (++v3 == v18)
    {
      return 1;
    }
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED000073676E6952;
    v10 = 0x7974697669746361;
    switch(*(*(a2 + 48) + v7))
    {
      case 1:
        v9 = 0xE700000000000000;
        v10 = 0x7261426E727562;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v11 = 0x636E65646163;
        goto LABEL_22;
      case 3:
        v9 = 0xE800000000000000;
        v10 = 0x65636E6174736964;
        break;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x796772656E65;
        break;
      case 5:
        v10 = 0x7461527472616568;
        v9 = 0xE900000000000065;
        break;
      case 6:
        v9 = 0xE900000000000074;
        v10 = 0x6867696C68676968;
        break;
      case 7:
        v9 = 0xE900000000000079;
        v10 = 0x7469736E65746E69;
        break;
      case 8:
        v9 = 0xE700000000000000;
        v11 = 0x6E696C636E69;
LABEL_22:
        v10 = v11 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        break;
      case 9:
        v9 = 0xE300000000000000;
        v10 = 7172210;
        break;
      case 0xA:
        v9 = 0xE900000000000072;
        v10 = 0x6F74617261706573;
        break;
      case 0xB:
        v10 = 7172211;
        v9 = 0xE300000000000000;
        break;
      case 0xC:
        v9 = 0xE800000000000000;
        v10 = 0x73736572676F7270;
        break;
      case 0xD:
        v9 = 0xE500000000000000;
        v10 = 0x72656D6974;
        break;
      default:
        break;
    }

    v12 = 0x7974697669746361;
    v13 = 0xED000073676E6952;
    switch(v4)
    {
      case 1:
        v13 = 0xE700000000000000;
        if (v10 == 0x7261426E727562)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      case 2:
        v13 = 0xE700000000000000;
        v14 = 0x636E65646163;
        goto LABEL_52;
      case 3:
        v13 = 0xE800000000000000;
        if (v10 != 0x65636E6174736964)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 4:
        v13 = 0xE600000000000000;
        if (v10 != 0x796772656E65)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 5:
        v13 = 0xE900000000000065;
        if (v10 != 0x7461527472616568)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 6:
        v13 = 0xE900000000000074;
        if (v10 != 0x6867696C68676968)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 7:
        v13 = 0xE900000000000079;
        if (v10 != 0x7469736E65746E69)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 8:
        v13 = 0xE700000000000000;
        v14 = 0x6E696C636E69;
LABEL_52:
        if (v10 != (v14 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 9:
        v13 = 0xE300000000000000;
        if (v10 != 7172210)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 10:
        v13 = 0xE900000000000072;
        v12 = 0x6F74617261706573;
        goto LABEL_46;
      case 11:
        v13 = 0xE300000000000000;
        if (v10 != 7172211)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 12:
        v13 = 0xE800000000000000;
        if (v10 != 0x73736572676F7270)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      case 13:
        v13 = 0xE500000000000000;
        if (v10 != 0x72656D6974)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      default:
LABEL_46:
        if (v10 != v12)
        {
          goto LABEL_48;
        }

LABEL_47:
        if (v9 != v13)
        {
LABEL_48:
          v15 = sub_20C13DFF4();

          if (v15)
          {
            return 0;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v19 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_4;
          }

          continue;
        }

        return 0;
    }
  }
}

double sub_20B8C3888(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xE0) == 0x40)
  {
  }

  return result;
}

unint64_t sub_20B8C38A0()
{
  result = qword_27C7672F8;
  if (!qword_27C7672F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7672F8);
  }

  return result;
}

unint64_t sub_20B8C38F4()
{
  result = qword_27C767300;
  if (!qword_27C767300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767300);
  }

  return result;
}

uint64_t sub_20B8C3A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C3A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeartUIState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C3AF8()
{
  v1 = sub_20C136594();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = v42 - v8;
  v43 = v9;
  MEMORY[0x28223BE20](v10);
  v46 = v42 - v11;
  v12 = sub_20C134314();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767458, &unk_20C1606E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v42 - v17;
  sub_20C135954();
  (*(v13 + 56))(v18, 0, 1, v12);
  v19 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program;
  swift_beginAccess();
  v47 = v0;
  sub_20B8C7218(v18, v0 + v19);
  swift_endAccess();
  sub_20C135954();
  v20 = sub_20C1342C4();
  (*(v13 + 8))(v15, v12);
  v21 = *(v20 + 16);
  if (v21)
  {
    v50 = MEMORY[0x277D84F90];
    sub_20BB5D604(0, v21, 0);
    v22 = v50;
    v42[1] = v20;
    v23 = v20 + 40;
    do
    {

      sub_20C136554();
      v50 = v22;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_20BB5D604((v24 > 1), v25 + 1, 1);
        v22 = v50;
      }

      *(v22 + 16) = v25 + 1;
      (*(v2 + 32))(v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25, v4, v1);
      v23 += 16;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v26 = v49;
  v27 = v47;
  v28 = v45;
  sub_20C02BC6C(v22, v45);

  v29 = swift_allocObject();
  *(v29 + 16) = sub_20B8C7350;
  *(v29 + 24) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20B849B38;
  *(v30 + 24) = v29;
  v31 = v48;
  v32 = v44;
  (*(v48 + 16))(v44, v28, v26);
  v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v34 = (v43 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v31 + 32))(v35 + v33, v32, v26);
  v36 = (v35 + v34);
  *v36 = sub_20B66A8B4;
  v36[1] = v30;

  v37 = v46;
  sub_20C137C94();
  v38 = *(v31 + 8);
  v38(v28, v26);
  v39 = sub_20C137CB4();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_20B5DF6DC, v40);

  return (v38)(v37, v26);
}

uint64_t sub_20B8C40B4(int a1)
{
  v2 = v1;
  LODWORD(v52) = a1;
  v3 = sub_20C13BB84();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0, &unk_20C1606D0);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767458, &unk_20C1606E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v14 = sub_20C134314();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - v19;
  v21 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v21, v13, &qword_27C767458, &unk_20C1606E0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &qword_27C767458, &unk_20C1606E0);
    v22 = v49;
    sub_20C13B534();
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20B517000, v23, v24, "Program not found; not initializing row", v25, 2u);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    return (*(v50 + 8))(v22, v51);
  }

  else
  {
    v27 = *(v15 + 32);
    v51 = v6;
    v48 = v20;
    v27(v20, v13, v14);
    v28 = v27;
    v29 = sub_20C02A560();
    sub_20B8CAB64(v29, v59);

    v30 = swift_allocObject();
    swift_weakInit();
    (*(v15 + 16))(v17, v20, v14);
    v31 = (*(v15 + 80) + 25) & ~*(v15 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v52;
    v28(v32 + v31, v17, v14);
    v33 = swift_allocObject();
    *(v33 + 16) = sub_20B8C7164;
    *(v33 + 24) = v32;
    v35 = v55;
    v34 = v56;
    v36 = *(v55 + 16);
    v37 = v53;
    v52 = v14;
    v38 = v59;
    v36(v53, v59, v56);
    v39 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v40 = (v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v35 + 32))(v41 + v39, v37, v34);
    v42 = (v41 + v40);
    *v42 = sub_20B8C71E8;
    v42[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
    v43 = v54;
    sub_20C137C94();
    (*(v35 + 8))(v38, v34);
    v44 = v58;
    v45 = sub_20C137CB4();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v45(sub_20B52347C, v46);

    (*(v57 + 8))(v43, v44);
    return (*(v15 + 8))(v48, v52);
  }
}

void sub_20B8C4734(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v6 = a3;
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B8C47D0(v6, a4, v8);
  }

  *a5 = Strong == 0;
}

void sub_20B8C47D0(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a1;
  v6 = sub_20C13C554();
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_lazyLockupFetcher);

  sub_20C030E24(v9, a3, v4);
  v11 = v10;

  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_20C13DC94();

  *&v59 = 0x5F6D6172676F7270;
  *(&v59 + 1) = 0xE800000000000000;
  v12 = sub_20C134294();
  MEMORY[0x20F2F4230](v12);

  MEMORY[0x20F2F4230](0x74756F6B726F775FLL, 0xED00007473696C5FLL);
  v13 = v59;
  if (*(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform) > 1u)
  {
    if (*(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform) != 3)
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform))
  {
    v51 = 0uLL;
    LOBYTE(v52) = 1;
    *(&v52 + 1) = 0;
    *&v53 = 0;
    WORD4(v53) = 128;
    v54 = 0uLL;
    v55 = v59;
    v56 = 0uLL;
    LOBYTE(v57) = 0;
    *(&v57 + 1) = v11;
    *v58 = MEMORY[0x277D84F90];
    memset(&v58[8], 0, 40);
    *&v58[48] = 2;
    nullsub_1();
    v14 = v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row;
    v15 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
    v67 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
    v68 = v15;
    v69 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
    v16 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
    v63 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
    v64 = v16;
    v17 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
    v65 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
    v66 = v17;
    v18 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
    v59 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
    v60 = v18;
    v19 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
    v61 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
    v62 = v19;
    v20 = *&v58[32];
    *(v14 + 128) = *&v58[16];
    *(v14 + 144) = v20;
    *(v14 + 160) = *&v58[48];
    v21 = v56;
    *(v14 + 64) = v55;
    *(v14 + 80) = v21;
    v22 = *v58;
    *(v14 + 96) = v57;
    *(v14 + 112) = v22;
    v23 = v52;
    *v14 = v51;
    *(v14 + 16) = v23;
    v24 = v54;
    *(v14 + 32) = v53;
    *(v14 + 48) = v24;
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer), *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer + 24));
  v25 = sub_20C138D34();
  v51 = 0uLL;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  WORD4(v53) = 128;
  v54 = 0uLL;
  v55 = v13;
  *&v56 = v25;
  *(&v56 + 1) = v26;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = v11;
  *v58 = MEMORY[0x277D84F90];
  *&v58[8] = 0;
  *&v58[16] = 0;
  *&v58[24] = v25;
  *&v58[32] = v26;
  *&v58[40] = xmmword_20C150190;
  nullsub_1();
  v27 = v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row;
  v28 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v67 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v68 = v28;
  v69 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v29 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v63 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v64 = v29;
  v30 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v65 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v66 = v30;
  v31 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v59 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v60 = v31;
  v32 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v61 = *(v4 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v62 = v32;
  v33 = *&v58[32];
  *(v27 + 128) = *&v58[16];
  *(v27 + 144) = v33;
  *(v27 + 160) = *&v58[48];
  v34 = v56;
  *(v27 + 64) = v55;
  *(v27 + 80) = v34;
  v35 = *v58;
  *(v27 + 96) = v57;
  *(v27 + 112) = v35;
  v36 = v52;
  *v27 = v51;
  *(v27 + 16) = v36;
  v37 = v54;
  *(v27 + 32) = v53;
  *(v27 + 48) = v37;

LABEL_6:
  sub_20B520158(&v59, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61DA68(v4, Strong);
    if (v41)
    {
      v43 = v40;
      v44 = v41;
      v45 = v42;
      sub_20B5E2E18();
      *v8 = sub_20C13D374();
      v46 = v50;
      (*(v50 + 104))(v8, *MEMORY[0x277D85200], v6);
      v47 = sub_20C13C584();
      (*(v46 + 8))(v8, v6);
      if (v47)
      {
        if ((v49 & 0x80) != 0)
        {
          sub_20C10AC08(v4, v43, v49 & 1, v39);
        }

        else
        {
          sub_20B620F9C(v43, v44, v45, v4, v49 & 1, v39);
        }

        goto LABEL_15;
      }

      __break(1u);
LABEL_18:
      sub_20C13DE24();
      __break(1u);
      return;
    }

    sub_20C0C2D50(0);
  }

LABEL_15:
  swift_unknownObjectRelease();
}

uint64_t sub_20B8C4CF8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program, &qword_27C767458, &unk_20C1606E0);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_mediaTagStringBuilder));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_subscriptionCache));

  return v0;
}

uint64_t sub_20B8C4E4C()
{
  sub_20B8C4CF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogProgramWorkoutListShelf(uint64_t a1)
{
  result = qword_27C767438;
  if (!qword_27C767438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8C4EF8(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B8C5008(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20B8C5008(uint64_t a1)
{
  if (!qword_27C767448)
  {
    sub_20C134314();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C767448);
    }
  }
}

uint64_t sub_20B8C5060()
{
  sub_20B8C9C90();
  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8C5154(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v7;
    v35 = v10;
    sub_20C13B534();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "[CatalogProgramWorkoutListShelf] archived sessions updated; updating row", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v12 + 8))(v14, v11);

    v20 = sub_20C13AEB4();
    v21 = v34;
    sub_20C02CCD0(v20, v34);

    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B8C7350;
    *(v22 + 24) = v16;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_20B849B38;
    *(v23 + 24) = v22;
    v24 = v33;
    (*(v3 + 16))(v33, v21, v2);
    v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v26 = swift_allocObject();
    (*(v3 + 32))(v26 + v25, v24, v2);
    v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v27 = sub_20B66A8B4;
    v27[1] = v23;

    v28 = v35;
    sub_20C137C94();
    v29 = *(v3 + 8);
    v29(v21, v2);
    v30 = sub_20C137CB4();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    v30(sub_20B5DF6DC, v31);

    return (v29)(v28, v2);
  }

  return result;
}

uint64_t sub_20B8C5584(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B8C7154;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  return (v19)(v13, v4);
}

double sub_20B8C5848(unsigned int *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = sub_20C13BB84();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(a1 + 4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    LOBYTE(v23) = v13;
    sub_20B8C5B7C(a3, a4, v12 | (v13 << 32), a5 & 1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_20B75FBFC(a3, a4, &v20);
    if (v20 == 2)
    {
      sub_20C13B4E4();

      v15 = sub_20C13BB74();
      v16 = sub_20C13D1D4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136446210;
        *(v17 + 4) = sub_20B51E694(a3, a4, &v23);
        _os_log_impl(&dword_20B517000, v15, v16, "No download entry for identifier: %{public}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x20F2F6A40](v18, -1, -1);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      (*(v19 + 8))(v11, v9);
    }

    else
    {
      v23 = v20;
      v24 = v21;
      v25[0] = v22[0];
      *(v25 + 9) = *(v22 + 9);
      if (BYTE8(v21) == 255 || (BYTE8(v21) & 1) == 0 || ((1 << v24) & 0x1DD) != 0)
      {
        if (v20 & 1) != 0 || (a5)
        {
          sub_20B75DE1C(a3, a4, &v23, 0);
        }

        else
        {
          sub_20B75D680(a3, a4, &v23);
        }
      }

      else if (v24 == 1)
      {
        sub_20B75E1A8(a3, a4, &v23, 0);
      }

      sub_20B520158(&v20, &qword_27C764BC0, &unk_20C1606C0);
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B8C5B7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v41 = a1;
  v8 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v42 = a2;
  if ((a3 & 0x100000000) != 0)
  {
    if (a3 > 2)
    {
      if ((a3 - 4) < 2)
      {
        v19 = MEMORY[0x277D51478];
        goto LABEL_11;
      }

      if (a3 != 3)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!a3)
      {
        v21 = *(v12 + 104);
        if (a4)
        {
          v40 = MEMORY[0x277D51480];
        }

        else
        {
          v40 = MEMORY[0x277D513C0];
        }

        v20 = *v40;
        goto LABEL_12;
      }

      if (a3 != 1)
      {
        v19 = MEMORY[0x277D51480];
        goto LABEL_11;
      }
    }

    v19 = MEMORY[0x277D51440];
    goto LABEL_11;
  }

LABEL_2:
  v19 = MEMORY[0x277D51420];
LABEL_11:
  v20 = *v19;
  v21 = *(v12 + 104);
LABEL_12:
  v21(v14, v20, v11, v16);
  (*(v12 + 32))(v18, v14, v11);
  v22 = sub_20C136664();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  (*(v12 + 16))(&v10[v8[5]], v18, v11);
  v23 = v8[6];
  v24 = sub_20C132C14();
  (*(*(v24 - 8) + 56))(&v10[v23], 1, 1, v24);
  v25 = v8[8];
  v26 = *MEMORY[0x277D52408];
  v27 = sub_20C135ED4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v10[v25], v26, v27);
  (*(v28 + 56))(&v10[v25], 0, 1, v27);
  v29 = v8[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v10[v29], v30, v31);
  v32 = v8[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v10[v32], 1, 1, v33);
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v10[v8[7]];
  v36 = v42;
  *v35 = v41;
  v35[1] = v36;
  v37 = &v10[v8[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v10[v8[12]] = v34;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0348(v4, v10, Strong);
    swift_unknownObjectRelease();
  }

  sub_20B8C70F4(v10, type metadata accessor for ShelfMetricAction);
  return (*(v12 + 8))(v18, v11);
}

uint64_t sub_20B8C5FC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8C6040@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B8C6110(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 144);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 128);
  v13 = v3;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 80);
  v9[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 64);
  v9[5] = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 112);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 96);
  v11 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 16);
  v9[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row);
  v9[1] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 48);
  v9[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row + 32);
  v9[3] = v7;
  result = sub_20B5EAF8C(v9);
  if (result != 1)
  {
    return *(*(&v10 + 1) + 16) - 1 != a1;
  }

  return result;
}

double sub_20B8C6198@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = sub_20C134014();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_lazyLockupFetcher) + 160);
  if (*(v11 + 16))
  {

    v12 = sub_20B65AA60(a1, a2);
    if (v13)
    {
      (*(v8 + 16))(v10, *(v11 + 56) + *(v8 + 72) * v12, v7);

      *(a3 + 24) = v7;
      *(a3 + 32) = &off_2822D8E58;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(v8 + 32))(boxed_opaque_existential_1, v10, v7);
      return result;
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_20B8C62FC()
{
  v0 = sub_20C02C2CC();
  v1 = sub_20BEF69F4(v0);

  return v1;
}

void sub_20B8C6344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_20C02D360(a3, a4);
  if (v6)
  {

    sub_20B8C40B4(a5 & 1 | 0xFFFFFF80);
  }
}

uint64_t sub_20B8C63BC(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v8 = *(a1 + 4);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;
  *(v6 + 36) = v8;

  return sub_20C137C94();
}

void sub_20B8C6470(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, int *), uint64_t a4, int *a5)
{
  v6 = *(a5 + 4);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  v11 = 0;
  a1(&v10);

  sub_20B583FB8(v7, 0);
}

uint64_t sub_20B8C6514(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v3 = OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_program;
  v4 = sub_20C134314();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_row;
  sub_20B5D8060(v19);
  v6 = v19[9];
  *(v5 + 128) = v19[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v20;
  v7 = v19[5];
  *(v5 + 64) = v19[4];
  *(v5 + 80) = v7;
  v8 = v19[7];
  *(v5 + 96) = v19[6];
  *(v5 + 112) = v8;
  v9 = v19[1];
  *v5 = v19[0];
  *(v5 + 16) = v9;
  v10 = v19[3];
  *(v5 + 32) = v19[2];
  *(v5 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_eventHub) = v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v18, v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_mediaTagStringBuilder);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_platform) = v18[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v18, v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v18, v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 152) = MEMORY[0x277D84F90];

  v13 = sub_20B6B0C04(v12);
  v14 = MEMORY[0x277D84FA0];
  *(v11 + 160) = v13;
  *(v11 + 168) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v11 + 136) = 20;
  *(v11 + 144) = 19;
  *(v2 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_lazyLockupFetcher) = v11;
  type metadata accessor for DownloadSubscriptionCoordinator();
  swift_allocObject();
  v15 = sub_20B8CB478();
  v16 = (v2 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_downloadSubscriptionCoordinator);
  *v16 = v15;
  v16[1] = &off_2822B2B58;
  v15[3] = &off_2822B24D0;
  swift_unknownObjectWeakAssign();
  *(*(v2 + OBJC_IVAR____TtC9SeymourUI30CatalogProgramWorkoutListShelf_downloadSubscriptionCoordinator) + 40) = &off_2822B24B8;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_20B8C68B0(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v62 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320, &unk_20C16C580);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v50 - v7;
  v8 = sub_20C136594();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134014();
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767450, &unk_20C16C590);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_20C134A74();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v61 = &v50 - v22;
  v23 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8C702C(v62, v25, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20B8C70F4(v25, type metadata accessor for ShelfItemAction);
  if (EnumCaseMultiPayload == 13)
  {
    sub_20C02C020(v60, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      return sub_20B520158(v16, &qword_27C767450, &unk_20C16C590);
    }

    else
    {
      v28 = v61;
      sub_20B8C6FC8(v16, v61);
      sub_20B8C702C(v28, v20, MEMORY[0x277D50C70]);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v50;
        (*(v50 + 32))(v13, v20, v11);
        v30 = sub_20C133E44();
        v32 = v31;
        (*(v29 + 8))(v13, v11);
      }

      else
      {
        v34 = v51;
        v33 = v52;
        (*(v51 + 32))(v10, v20, v52);
        v30 = sub_20C136564();
        v32 = v35;
        (*(v34 + 8))(v10, v33);
      }

      v36 = v54;
      sub_20B8CA380(v30, v32, v54);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v30;
      *(v38 + 32) = v32;
      *(v38 + 40) = 0;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_20B8C7094;
      *(v39 + 24) = v38;
      v41 = v56;
      v40 = v57;
      v42 = v53;
      (*(v56 + 16))(v53, v36, v57);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = swift_allocObject();
      (*(v41 + 32))(v44 + v43, v42, v40);
      v45 = (v44 + ((v3 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v45 = sub_20B8C70B8;
      v45[1] = v39;
      v46 = v55;
      sub_20C137C94();
      (*(v41 + 8))(v36, v40);
      v47 = v59;
      v48 = sub_20C137CB4();
      v49 = swift_allocObject();
      *(v49 + 16) = 0;
      *(v49 + 24) = 0;
      v48(sub_20B52347C, v49);

      (*(v58 + 8))(v46, v47);
      return sub_20B8C70F4(v61, MEMORY[0x277D50C70]);
    }
  }

  return result;
}

uint64_t sub_20B8C6FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C134A74();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C702C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8C70F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8C7218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767458, &unk_20C1606E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C7288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B8C7358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20C13C5F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v61 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_20C13C5A4();
  v60 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = sub_20C1352E4();
  v19.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[9])
  {
    v56 = a2;
    v22 = v2[10];
    v23 = v2[11];
    v55 = v5;
    if (!v23)
    {
      v22 = 0;
    }

    v49 = v22;
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = *MEMORY[0x277D51758];
    v26 = *(v18 + 104);
    v54 = v21;
    v58 = v17;
    v57 = v18;
    v26(v21, v25, v17, v19);

    v51 = sub_20C1349B4();
    v50 = v27;
    v53 = sub_20C0B8920(MEMORY[0x277D84F90]);
    sub_20C13C594();
    sub_20C13C5C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
    inited = swift_initStackObject();
    v48 = v6;
    v52 = v11;
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_20C152DF0;
    v29 = MEMORY[0x277D837D0];
    v30 = v49;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = v24;
    *(inited + 72) = v29;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = sub_20C1352D4();
    *(inited + 104) = v31;
    *(inited + 120) = v29;
    *(inited + 128) = 0x6973736572706D69;
    v32 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = a1;
    *(inited + 168) = v32;
    *(inited + 176) = 0x657079546469;
    *(inited + 216) = v29;
    v33 = v51;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = v33;
    *(inited + 200) = v50;
    v34 = sub_20B6B1778(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v34;
    sub_20BEF5D68(v53, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, &v62);

    v36 = v10;
    v37 = v10;
    v38 = v55;
    (*(v6 + 16))(v61, v36, v55);
    v39 = v60;
    v40 = v52;
    (*(v60 + 16))(v59, v15, v52);
    v41 = MEMORY[0x277D84F90];
    sub_20C0B8920(MEMORY[0x277D84F90]);
    sub_20C0B8920(v41);
    v42 = v56;
    sub_20C13C604();
    (*(v48 + 8))(v37, v38);
    (*(v39 + 8))(v15, v40);
    (*(v57 + 8))(v54, v58);
    v43 = sub_20C13C634();
    return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  }

  else
  {
    v45 = sub_20C13C634();
    v46 = *(*(v45 - 8) + 56);

    return v46(a2, 1, 1, v45);
  }
}

uint64_t sub_20B8C7964()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_20C138204();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B52F9E8(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_playlist, v6, &qword_27C7643F0, &qword_20C1536C0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &qword_27C7643F0, &qword_20C1536C0);
  }

  v40 = v2;
  (*(v8 + 32))(v10, v6, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20C1381D4();
  *(v12 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C14F980;
  *(v14 + 32) = v12 | 0x5000000000000005;
  v46 = 0uLL;
  LOBYTE(v47) = 1;
  *(&v47 + 1) = *v45;
  DWORD1(v47) = *&v45[3];
  *(&v47 + 1) = 0;
  *&v48 = 0;
  WORD4(v48) = 128;
  *(&v48 + 10) = *&v43[7];
  HIWORD(v48) = v44;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v43;
  DWORD1(v52) = *&v43[3];
  *(&v52 + 1) = v14;
  *&v53[0] = MEMORY[0x277D84F90];
  *(v53 + 8) = 0u;
  *(&v53[1] + 8) = 0u;
  *(&v53[2] + 1) = 0;
  v54 = 2;
  nullsub_1();
  v15 = v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 144);
  v55[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 128);
  v55[9] = v16;
  v56 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 160);
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 80);
  v55[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 64);
  v55[5] = v17;
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 112);
  v55[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 96);
  v55[7] = v18;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 16);
  v55[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row);
  v55[1] = v19;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 48);
  v55[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 32);
  v55[3] = v20;
  v21 = v53[0];
  v22 = v53[2];
  *(v15 + 128) = v53[1];
  *(v15 + 144) = v22;
  *(v15 + 160) = v54;
  v23 = v51;
  *(v15 + 64) = v50;
  *(v15 + 80) = v23;
  *(v15 + 96) = v52;
  *(v15 + 112) = v21;
  v24 = v47;
  *v15 = v46;
  *(v15 + 16) = v24;
  v25 = v49;
  *(v15 + 32) = v48;
  *(v15 + 48) = v25;

  sub_20B520158(v55, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    swift_unknownObjectRelease();
LABEL_6:

    return (*(v8 + 8))(v10, v7);
  }

  v39 = Strong;
  sub_20B61CF10(v1, Strong);
  if (v28)
  {
    v36 = v27;
    v37 = v29;
    v38 = v28;
    sub_20B5E2E18();
    v30 = sub_20C13D374();
    v32 = v41;
    v31 = v42;
    *v41 = v30;
    v33 = v40;
    (*(v31 + 104))(v32, *MEMORY[0x277D85200], v40);
    v34 = sub_20C13C584();
    result = (*(v31 + 8))(v32, v33);
    if ((v34 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    sub_20B6204B8(v36, v38, v37, v1, 1, v39);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20B8C7E34()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_playlist, &qword_27C7643F0, &qword_20C1536C0);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaylistDetailHeaderShelf(uint64_t a1)
{
  result = qword_27C767468;
  if (!qword_27C767468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8C7F9C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B668494(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B8C807C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8C80F4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI25PlaylistDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void *sub_20B8C81BC(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind] = 6;
  v6 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment];
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v7 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_previousBounds];
  *v7 = 0u;
  v7[1] = 0u;
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_contentOverlayView] = 0;
  v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_isPictureInPictureActive] = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_layoutProvider;
  type metadata accessor for SessionAudioPlayerLayoutProvider();
  *&v3[v8] = swift_allocObject();
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_settingsPopoverSourceView] = 0;
  v9 = &v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_presenter];
  *v9 = a1;
  v9[1] = a2;
  v10 = a1[31];
  v11 = objc_allocWithZone(type metadata accessor for SessionAudioPlayerView());
  swift_unknownObjectRetain();
  v12 = swift_unknownObjectRetain();
  v13 = sub_20BB14AF0(v12, v10);
  swift_unknownObjectRelease();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView] = v13;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for SessionAudioPlayerViewController();
  v14 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  a1[3] = &off_2822B2970;
  swift_unknownObjectWeakAssign();
  v15 = a1[30];
  v16 = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = *(v15 + 96);
  v19 = *(v15 + 104);
  *(v15 + 96) = sub_20B8C8F80;
  *(v15 + 104) = v17;

  sub_20B583ECC(v18, v19);
  swift_unknownObjectRelease();

  return v16;
}

void sub_20B8C83BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView);
    v5 = OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton;
    v6 = Strong;
    [*(v4 + OBJC_IVAR____TtC9SeymourUI22SessionAudioPlayerView_moreButton) setMenu_];
    [*(v4 + v5) setShowsMenuAsPrimaryAction_];
  }
}

void sub_20B8C8458(uint64_t a1)
{
  v2 = v1;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for SessionAudioPlayerViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView];
  [v3 addSubview_];

  sub_20B6776DC(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14FE90;
  v7 = [v5 leadingAnchor];
  v8 = [v2 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 leadingAnchor];

  v11 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v11;
  v12 = [v5 trailingAnchor];
  v13 = [v2 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 trailingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v6 + 40) = v16;
  v17 = [v5 topAnchor];
  v18 = [v2 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 topAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v6 + 48) = v21;
  v22 = [v5 bottomAnchor];
  v23 = [v2 view];
  if (v23)
  {
    v24 = v23;
    v25 = objc_opt_self();
    v26 = [v24 bottomAnchor];

    v27 = [v22 constraintEqualToAnchor_];
    *(v6 + 56) = v27;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v28 = sub_20C13CC54();

    [v25 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_20B8C8804()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v7 = result;
  [result safeAreaInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_20BE7C518([v0 traitCollection], v27, v4, v6, v9, v11, v13, v15);
  if (v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind] == 6 || (v16 = &v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment], v17 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 64], v25[3] = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 48], v26 = v17, v18 = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 32], v25[1] = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 16], v25[2] = v18, v25[0] = *&v0[OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment], !*(&v17 + 1)))
  {
    v23 = sub_20B8007B8(v27);
    sub_20B8C8CD4(v23, v27);
  }

  else
  {
    v19 = *(v16 + 3);
    v28[2] = *(v16 + 2);
    v28[3] = v19;
    v20 = *(v16 + 8);
    v21 = *(v16 + 1);
    v28[0] = *v16;
    v28[1] = v21;
    v29 = v20;
    v30 = *(&v26 + 1);
    sub_20B8C90D0(v25, &v24);
    if ((sub_20BE7C3F4(v28, v27) & 1) == 0)
    {
      v22 = sub_20B8007B8(v27);
      sub_20B8C8CD4(v22, v27);
    }

    sub_20B8C9140(v25);
  }

  return sub_20B8C907C(v27);
}

void sub_20B8C8AA0(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_20B8C8804();
  v5.receiver = v4;
  v5.super_class = type metadata accessor for SessionAudioPlayerViewController();
  objc_msgSendSuper2(&v5, *a3);
}

id sub_20B8C8B1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionAudioPlayerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20B8C8C40(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_presenter) + 240);
  v3 = *(v2 + 96);
  if (v3)
  {
    v4 = result;
    v5 = *(v2 + 104);
    swift_unknownObjectRetain();
    sub_20B584050(v3, v5);
    v3(v4);
    swift_unknownObjectRelease();

    return sub_20B583ECC(v3, v5);
  }

  return result;
}

uint64_t sub_20B8C8CD4(uint64_t a1, _OWORD *a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind) = a1;
  v5 = (v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment);
  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 48);
  v23[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 32);
  v23[3] = v6;
  v23[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 64);
  v7 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment + 16);
  v23[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment);
  v23[1] = v7;
  v8 = a2[1];
  *v5 = *a2;
  v5[1] = v8;
  v9 = a2[3];
  v5[2] = a2[2];
  v5[3] = v9;
  v5[4] = a2[4];
  sub_20B8C91A8(a2, v24);
  sub_20B8C9140(v23);
  sub_20B800934(a1, a2, v20);
  v24[12] = v20[12];
  v24[13] = v20[13];
  v24[14] = v20[14];
  v25 = v21;
  v24[8] = v20[8];
  v24[9] = v20[9];
  v24[10] = v20[10];
  v24[11] = v20[11];
  v24[4] = v20[4];
  v24[5] = v20[5];
  v24[6] = v20[6];
  v24[7] = v20[7];
  v24[0] = v20[0];
  v24[1] = v20[1];
  v24[2] = v20[2];
  v24[3] = v20[3];
  nullsub_1();
  sub_20B8C9204(v24, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7674E0, &qword_20C1607F8);
  v10 = swift_allocObject();
  v11 = *(v2 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_playerView);
  v10[7] = type metadata accessor for SessionAudioPlayerView();
  v10[8] = &off_2822CD018;
  v10[4] = v11;
  sub_20B51CC64((v10 + 4), v17);
  swift_setDeallocating();
  sub_20B8C9260(v20, &v16);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v10 + 4);
  swift_deallocClassInstance();
  v13 = v18;
  v14 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v14 + 8))(v22, a2, v13, v14);
  sub_20B8C92BC(v20);
  sub_20B8C92BC(v20);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void *sub_20B8C8EB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_contentOverlayView);
  v2 = v1;
  return v1;
}

double sub_20B8C8EF0(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void *sub_20B8C8F44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_settingsPopoverSourceView);
  v2 = v1;
  return v1;
}

void sub_20B8C8F88()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutKind) = 6;
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_currentLayoutEnvironment);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_previousBounds);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_contentOverlayView) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_isPictureInPictureActive) = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_layoutProvider;
  type metadata accessor for SessionAudioPlayerLayoutProvider();
  *(v0 + v3) = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC9SeymourUI32SessionAudioPlayerViewController_settingsPopoverSourceView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8C90D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7674D8, &qword_20C1607F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8C9140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7674D8, &qword_20C1607F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_20B8C9328(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 blackColor];
  v5 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  *&v1[v5] = [v4 whiteColor];
  v6 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView;
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v8 = [v4 whiteColor];
  [v7 setTintColor_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState] = 0;
  [v7 setImage_];
  v41.receiver = v1;
  v41.super_class = type metadata accessor for TVButtonImageContentView();
  v9 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView;
  v11 = *&v9[OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView];
  v12 = v9;
  [v12 addSubview_];
  v14 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v15 = *(MEMORY[0x277D768C8] + 16);
  v16 = *(MEMORY[0x277D768C8] + 24);
  v17 = *&v9[v10];
  v18 = [v17 leadingAnchor];
  v19 = [v12 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:v13];

  LODWORD(v21) = 1148846080;
  [v20 setPriority_];
  v22 = v20;
  v23 = [v17 trailingAnchor];
  v24 = [v12 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-v16];

  LODWORD(v26) = 1148846080;
  [v25 setPriority_];
  v27 = v25;
  v28 = [v17 topAnchor];
  v29 = [v12 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v14];

  LODWORD(v31) = 1148846080;
  [v30 setPriority_];
  v32 = [v17 bottomAnchor];
  v33 = [v12 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-v15];

  LODWORD(v35) = 1148846080;
  [v34 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C14FE90;
  *(v36 + 32) = v22;
  *(v36 + 40) = v27;
  *(v36 + 48) = v30;
  *(v36 + 56) = v34;
  v37 = v30;

  v38 = objc_opt_self();
  sub_20B5E29D0();
  v39 = sub_20C13CC54();

  [v38 activateConstraints_];

  return v12;
}

id sub_20B8C9778(void *a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor);
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor) = a1;
  v4 = a1;

  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState) & 8) != 0)
  {
    v5 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  }

  else
  {
    v5 = v2;
  }

  v6 = *(v1 + v5);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView);

  return [v7 setTintColor_];
}

id sub_20B8C9828(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVButtonImageContentView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_20B8C98E0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_opt_self() smu:*MEMORY[0x277D76918] preferredFontForTextStyle:1024 variant:?];
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = v11;
  v13 = sub_20C13C914();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  v15 = objc_allocWithZone(type metadata accessor for TVButtonImageContentView());
  v16 = v14;
  v17 = sub_20B8C9328(v14);
  v18 = objc_allocWithZone(type metadata accessor for TVButton());
  v19 = sub_20BB87F4C(v17, 1, a1, v18, a2, a3, a4, a5);

  [*&v19[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setFocusedSizeIncrease_];
  return v19;
}

id sub_20B8C9A68(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState) = a1;
  v2 = &OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  if ((a1 & 8) != 0)
  {
    v2 = &OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  }

  return [*(v1 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView) setTintColor_];
}

void sub_20B8C9AAC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 blackColor];
  v3 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  *(v0 + v3) = [v2 whiteColor];
  v4 = OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v6 = [v2 whiteColor];
  [v5 setTintColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8C9C0C()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

double sub_20B8C9C90()
{
  sub_20B75CE14();
  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  return result;
}

double sub_20B8C9D78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);

      v6(v7, &off_2822B2B58, ObjectType, v4);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B8C9E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v31[1] = a2;
  v37 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v9);
  v11 = v31 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320, &unk_20C16C580);
  v12 = *(v36 - 8);
  v34 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v32 = v31 - v15;
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  sub_20C1392F4();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B8CB754;
  *(v17 + 24) = v16;
  v18 = v33;
  (*(v7 + 16))(v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v33);
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  (*(v7 + 32))(v20 + v19, v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v20 + ((v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B8CB774;
  v21[1] = v17;

  v22 = v32;
  sub_20C137C94();
  (*(v7 + 8))(v11, v18);
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B8CA36C;
  *(v23 + 24) = 0;
  v24 = v35;
  v25 = v36;
  (*(v12 + 16))(v35, v22, v36);
  v26 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v27 = (v34 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v12 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_20B8CB77C;
  v29[1] = v23;
  sub_20C137C94();
  return (*(v12 + 8))(v22, v25);
}

unint64_t sub_20B8CA240@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v10 = sub_20C135704();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    result = sub_20B75D408(a1, a2);
    v12 = HIDWORD(result) & 1;
  }

  else
  {
    LOBYTE(v12) = 1;
    result = 4;
  }

  *a3 = result;
  *(a3 + 4) = v12;
  return result;
}

uint64_t sub_20B8CA380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v37 = a3;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764320, &unk_20C16C580);
  v11 = *(v36 - 8);
  v31 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v30 - v14;
  __swift_project_boxed_opaque_existential_1((v3 + 72), *(v3 + 96));
  v30 = v10;
  sub_20C1392E4();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v18 = v33;
  v17 = v34;
  *(v16 + 2) = v15;
  *(v16 + 3) = v17;
  *(v16 + 4) = a2;
  (*(v5 + 16))(v7, v10, v18);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, v7, v18);
  v21 = (v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B8CB5C8;
  v21[1] = v16;

  v22 = v32;
  sub_20C137C94();
  (*(v5 + 8))(v30, v18);
  v24 = v35;
  v23 = v36;
  (*(v11 + 16))(v35, v22, v36);
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = (v31 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v11 + 32))(v27 + v25, v24, v23);
  v28 = (v27 + v26);
  *v28 = sub_20B8CA940;
  v28[1] = 0;
  sub_20C137C94();
  return (*(v11 + 8))(v22, v23);
}

uint64_t sub_20B8CA744(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_20C132E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C132E84();
    v10 = sub_20C135704();
    (*(v7 + 8))(v9, v6);
    if (v10)
    {
      v11 = sub_20B75D408(a3, a4);

      v12 = HIDWORD(v11) & 1;
    }

    else
    {

      LOBYTE(v12) = 1;
      LODWORD(v11) = 4;
    }

    BYTE4(v17) = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 20) = BYTE4(v17);
  }

  else
  {
    sub_20B8CB638();
    v13 = swift_allocError();
    *v14 = 2;
    *(swift_allocObject() + 16) = v13;
  }

  return sub_20C137CA4();
}

uint64_t sub_20B8CA940(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v16[2], v16[3]);
    v13 = sub_20B51E694(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to fetch subscription for download state with error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  LOBYTE(v17) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = 4;
  *(v14 + 20) = v17;
  return sub_20C137CA4();
}

uint64_t sub_20B8CAB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644D0, &unk_20C1606D0);
  v10 = *(v36 - 8);
  v34 = *(v10 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = &v32 - v13;
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  sub_20C1392E4();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v16 = v33;
  (*(v4 + 16))(v6, v9, v33);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = (v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v19 + v17;
  v21 = v16;
  (*(v4 + 32))(v20, v6, v16);
  v22 = (v19 + v18);
  *v22 = sub_20B8CB694;
  v22[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767508, &qword_20C1608E8);
  v23 = v32;
  sub_20C137C94();
  (*(v4 + 8))(v9, v21);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v25 = v35;
  v26 = v36;
  (*(v10 + 16))(v35, v23, v36);
  v27 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v28 = (v34 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v10 + 32))(v29 + v27, v25, v26);
  v30 = (v29 + v28);
  *v30 = sub_20B8CB6C4;
  v30[1] = v24;

  sub_20C137C94();
  return (*(v10 + 8))(v23, v26);
}

uint64_t sub_20B8CAF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    MEMORY[0x28223BE20](Strong);
    v11[2] = v6;
    v11[3] = a1;
    sub_20B5E6A88(sub_20B8CB6F4, v11, a3);
    v8 = v7;
  }

  else
  {
    sub_20B8CB638();
    v8 = swift_allocError();
    *v9 = 2;
  }

  *(swift_allocObject() + 16) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767508, &qword_20C1608E8);
  return sub_20C137CA4();
}

uint64_t sub_20B8CB0B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25[0] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v25[2], v25[3]);
    v18 = sub_20B51E694(v16, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "Failed to fetch subscription for download state with error: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v19 = *(a2 + 16);
  if (v19)
  {
    v20 = sub_20C13CCD4();
    v21 = v20;
    *(v20 + 16) = v19;
    v22 = 32;
    do
    {
      v23 = v20 + v22;
      *v23 = 4;
      *(v23 + 4) = 1;
      v22 += 8;
      --v19;
    }

    while (v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  *(swift_allocObject() + 16) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767508, &qword_20C1608E8);
  return sub_20C137CA4();
}

unint64_t sub_20B8CB338@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  sub_20C132E84();
  v10 = sub_20C135704();
  (*(v5 + 8))(v7, v4);
  if (v10)
  {
    result = sub_20B75D408(v8, v9);
    v12 = HIDWORD(result) & 1;
  }

  else
  {
    LOBYTE(v12) = 1;
    result = 4;
  }

  *a2 = result;
  *(a2 + 4) = v12;
  return result;
}