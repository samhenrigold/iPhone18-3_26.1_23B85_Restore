uint64_t sub_224D0703C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v64 = &v55 - v5;
  v61 = sub_224DAA428();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v6);
  v58 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v55 - v23;
  BSDispatchQueueAssert();
  v25 = v2[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  v2[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v25);

  sub_224DA9FF8();
  v26 = *(v13 + 16);
  v26(v21, v24, v12);
  v60 = v11;
  sub_224DAA228();
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_281365060);
  v57 = v24;
  v26(v17, v24, v12);
  v28 = v2;
  v29 = sub_224DAB228();
  v30 = sub_224DAF2A8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v66[0] = v55;
    *v31 = 136446466;
    sub_224A33088(&qword_281351990, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC8]);
    v32 = sub_224DAFD28();
    v34 = v33;
    v56 = v12;
    v35 = *(v13 + 8);
    v35(v17, v56);
    v36 = sub_224A33F74(v32, v34, v66);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2082;
    v37 = [*&v28[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] remoteProcess];
    v38 = [v37 description];

    v39 = sub_224DAEE18();
    v41 = v40;

    v42 = sub_224A33F74(v39, v41, v66);
    v43 = v35;
    v12 = v56;

    *(v31 + 14) = v42;
    _os_log_impl(&dword_224A2F000, v29, v30, "Removing control host with identifier %{public}s for process %{public}s", v31, 0x16u);
    v44 = v55;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v31, -1, -1);
  }

  else
  {

    v45 = v17;
    v43 = *(v13 + 8);
    v43(v45, v12);
  }

  sub_224A3317C(*&v28[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] + 216, v66);
  v46 = v67;
  v47 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v65 = 0;
  v49 = v58;
  v48 = v59;
  v50 = v61;
  (*(v59 + 104))(v58, *MEMORY[0x277CFA038], v61);
  v51 = *(*(v47 + 8) + 56);
  v52 = v60;
  v51(&v65, v49, v60, v46);
  (*(v48 + 8))(v49, v50);
  __swift_destroy_boxed_opaque_existential_1(v66);
  swift_beginAccess();
  v53 = v64;
  sub_224B024C8(v52, v64);
  sub_224A3311C(v53, &qword_27D6F56C0, &unk_224DB3580);
  swift_endAccess();
  (*(v62 + 8))(v52, v63);
  return (v43)(v57, v12);
}

double sub_224D07718(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssert();
  sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF0]);
  sub_224DAF198();
  v3 = v18[0];
  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281365060);
  v5 = v2;

  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_224A33F74(*&v5[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v5[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v18);
    *(v8 + 12) = 2082;
    sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF8]);
    v10 = sub_224DAFD28();
    v12 = sub_224A33F74(v10, v11, v18);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_224A2F000, v6, v7, "[%{public}s] Unsubscribe from %{public}s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  v13 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v14 = *&v5[v13];

  v15 = sub_224D24334(v3, v14);

  if (v15)
  {
    sub_224B35900();
  }

  swift_beginAccess();

  sub_224B0E4C4(v16);
  swift_endAccess();

  return result;
}

double sub_224D07BC8(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v65 = a3;
  v63 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6120, qword_224DBE860);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v55[-v7];
  v9 = sub_224DA9F08();
  v64 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v55[-v16];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v55[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v55[-v23];
  v25 = *(v3 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  BSDispatchQueueAssert();
  v26 = sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF0]);
  sub_224DAF198();
  v59 = v26;
  v60 = v25;
  v61 = v4;
  v62 = v13;
  v65 = v24;
  v58 = v17;
  v27 = v67[0];
  [v63 integerValue];
  sub_224DA9EE8();
  v28 = v64;
  if ((*(v64 + 48))(v8, 1, v9) == 1)
  {

    sub_224A3311C(v8, &qword_27D6F6120, qword_224DBE860);
  }

  else
  {
    v30 = v9;
    v31 = v65;
    (*(v28 + 32))(v65, v8, v9);
    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_281364EC8);
    v33 = v21;
    v63 = *(v28 + 16);
    (v63)(v21, v31, v9);

    v34 = sub_224DAB228();
    v35 = sub_224DAF278();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67[0] = v57;
      *v36 = 136446466;
      v66[0] = v27;
      sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF8]);
      v56 = v35;
      v37 = sub_224DAFD28();
      v39 = sub_224A33F74(v37, v38, v67);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v40 = sub_224DA9EC8();
      v42 = v41;
      v43 = *(v28 + 8);
      v43(v33, v9);
      v44 = sub_224A33F74(v40, v42, v67);

      *(v36 + 14) = v44;
      _os_log_impl(&dword_224A2F000, v34, v56, "Received setTaskPriority for %{public}s: %{public}s", v36, 0x16u);
      v45 = v57;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v45, -1, -1);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    else
    {

      v43 = *(v28 + 8);
      v43(v21, v9);
    }

    v46 = v61;
    BSDispatchQueueAssert();
    v47 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
    swift_beginAccess();
    v48 = *(v46 + v47);

    v49 = sub_224D24334(v27, v48);

    v50 = v62;
    if (v49)
    {
      v51 = v58;
      v52 = v65;
      v53 = v63;
      (v63)(v58, v65, v30);
      v54 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
      swift_beginAccess();
      v53(v50, v49 + v54, v30);
      swift_beginAccess();
      (*(v64 + 24))(v49 + v54, v51, v30);
      swift_endAccess();
      sub_224B33B84(v50);

      v43(v50, v30);
      v43(v51, v30);
      v43(v52, v30);
    }

    else
    {
      v43(v65, v9);
    }
  }

  return result;
}

double sub_224D0832C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  BSDispatchQueueAssert();
  sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF0]);
  sub_224DAF198();
  v6 = [a1 unsignedIntegerValue];
  BSDispatchQueueAssert();
  v7 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v8 = *(v4 + v7);

  v9 = sub_224D24334(v12, v8);

  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility);
    *(v9 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) = v6;
    sub_224B34624(v10);
  }

  return result;
}

void sub_224D085C8(void *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id, uint64_t, unint64_t))
{
  v8 = a3;
  v9 = a4;
  v13 = a1;
  v10 = sub_224DA96D8();
  v12 = v11;

  a5(v8, v10, v12);
  sub_224A78024(v10, v12);
}

double sub_224D08670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a2;
  v6 = sub_224DAD158();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v23 - v13;
  BSDispatchQueueAssert();
  sub_224DAA0F8();
  sub_224D0EE58(&qword_281351898, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF0]);
  sub_224DAF198();
  v24 = v7;
  v15 = v26;
  sub_224D0EE58(&qword_281350CF0, MEMORY[0x277CF9C60], MEMORY[0x277CF9C68]);
  sub_224DAF198();
  BSDispatchQueueAssert();
  v16 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v17 = *(v5 + v16);

  v18 = sub_224D24334(v15, v17);

  if (v18)
  {
    v19 = v24;
    (*(v24 + 16))(v11, v14, v6);
    v20 = OBJC_IVAR____TtC10ChronoCore14ControlSession_environmentModifiers;
    swift_beginAccess();
    (*(v19 + 24))(v18 + v20, v11, v6);
    swift_endAccess();
    sub_224B33F84();

    v21 = *(v19 + 8);
    v21(v11, v6);
    v21(v14, v6);
  }

  else
  {
    (*(v24 + 8))(v14, v6);
  }

  return result;
}

void sub_224D08B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_224DAA928();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BSDispatchQueueAssert();
  sub_224D0EE58(&unk_281351750, MEMORY[0x277CFA500], MEMORY[0x277CFA508]);
  sub_224DAF198();
  v13 = sub_224DAA8F8();
  BSDispatchQueueAssert();
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v15 = *(v5 + v14);

  v16 = sub_224D24334(v13, v15);

  if (v16)
  {
    v17 = sub_224DAA0E8();
    v18 = [v17 contentType];

    if (!v18)
    {
      __swift_project_boxed_opaque_existential_1((*(v16 + 24) + 16), *(*(v16 + 24) + 40));
      sub_224C7D04C(v12, a3, a4);
    }

    (*(v9 + 8))(v12, v8);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

void sub_224D08FD8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(uint64_t, unint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = a3;
  v13 = a1;
  v10 = sub_224DA96D8();
  v12 = v11;

  _Block_copy(v8);
  a5(v10, v12, v13, v8);
  _Block_release(v8);
  _Block_release(v8);
  sub_224A78024(v10, v12);
}

uint64_t sub_224D09098(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[1] = a4;
  v18[2] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v18 - v14;
  BSDispatchQueueAssert();

  sub_224DA9FF8();
  sub_224A3317C(*(v7 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 336, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  [a3 BOOLValue];
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;

  sub_224DACAB8();

  (*(v12 + 8))(v15, v11);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void sub_224D09260(void *a1, id a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_224DAE9D8();
    v6 = sub_224B424A4(v5);

    (a3)(v6, 0);
  }

  else if (a2)
  {
    v8 = a2;
    (a3)(0, a2);
  }

  else
  {
    a3(0);
  }
}

void sub_224D09484(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_224D09518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    *(a3 + 16) = 1;
    swift_beginAccess();
    if (*(a4 + 16))
    {
      swift_beginAccess();

      sub_224B0279C(v12);
      swift_endAccess();

      swift_beginAccess();
      *(a4 + 16) = 0;
    }

    swift_beginAccess();
    if (*(a5 + 16) == 1)
    {
      if (qword_281351668 != -1)
      {
        swift_once();
      }

      v13 = sub_224DAB258();
      __swift_project_value_buffer(v13, qword_281365078);
      v14 = sub_224DAB228();
      v15 = sub_224DAF2A8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_224A2F000, v14, v15, "Controls configuration request timed out - notifying!", v16, 2u);
        MEMORY[0x22AA5EED0](v16, -1, -1);
      }

      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v17 = sub_224CBC42C(12, 0, 0);
      a6(0, v17);
    }
  }
}

void sub_224D09750(void *a1, void *a2, unint64_t a3, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a5)
{
  v91 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v9 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v10);
  v87 = v78 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
  v13 = MEMORY[0x28223BE20](v86, v12);
  v93 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v85 = v78 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v94 = (v78 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v78 - v23;
  if (qword_281351668 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281365078);
    v83 = v21[2];
    v84 = v21 + 2;
    v83(v24, a1, v20);
    v26 = sub_224DAB228();
    v27 = sub_224DAF2A8();
    v28 = os_log_type_enabled(v26, v27);
    v90 = v20;
    v78[1] = a5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v89 = v9;
      v31 = v30;
      v96[0] = v30;
      *v29 = 136446210;
      sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
      v32 = sub_224DAFD28();
      v33 = a3;
      v34 = isUniquelyReferenced_nonNull_native;
      v36 = v35;
      v92 = v21[1];
      v92(v24, v90);
      v37 = sub_224A33F74(v32, v36, v96);
      isUniquelyReferenced_nonNull_native = v34;
      a3 = v33;

      *(v29 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v26, v27, "Controls configuration received from %{public}s- notifying!", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      v38 = v31;
      v9 = v89;
      MEMORY[0x22AA5EED0](v38, -1, -1);
      v39 = v29;
      v20 = v90;
      MEMORY[0x22AA5EED0](v39, -1, -1);
    }

    else
    {

      v92 = v21[1];
      v92(v24, v20);
    }

    v40 = v91;
    swift_beginAccess();
    *(v40 + 16) = 0;
    sub_224A3317C(*(a3 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 216, v96);
    v41 = v97;
    v42 = v98;
    __swift_project_boxed_opaque_existential_1(v96, v97);
    v43 = (*(v42 + 24))(768, v41, v42);
    if (!v43)
    {
      break;
    }

    v78[0] = isUniquelyReferenced_nonNull_native;
    v44 = sub_224CFEA64(v43);

    a1 = sub_224DA26F8(MEMORY[0x277D84F90]);
    v45 = v44 + 64;
    v46 = 1 << v44[32];
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    a3 = v47 & *(v44 + 8);
    v24 = ((v46 + 63) >> 6);
    v91 = v21 + 1;
    v82 = (v9 + 8);
    v89 = v44;

    a5 = 0;
    v80 = v44 + 64;
    v79 = v24;
    v81 = v21;
    while (a3)
    {
LABEL_16:
      v52 = __clz(__rbit64(a3)) | (a5 << 6);
      v53 = v89;
      v54 = *(v89 + 6) + v21[9] * v52;
      v21 = v94;
      v83(v94, v54, v20);
      v55 = *(*(v53 + 7) + 8 * v52);
      v56 = v85;
      v57 = v86;
      *(v21 + *(v86 + 48)) = v55;
      sub_224A3796C(v21, v56, &unk_27D6F6510, &unk_224DC0290);
      v58 = *(v56 + *(v57 + 48));
      v59 = v55;

      v9 = v87;
      sub_224DAA238();
      v92(v56, v20);
      v60 = v88;
      v20 = sub_224DA9FE8();
      v24 = v61;
      (*v82)(v9, v60);
      v62 = v93;
      sub_224A3796C(v21, v93, &unk_27D6F6510, &unk_224DC0290);
      v63 = *(v62 + *(v57 + 48));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = a1;
      v64 = sub_224A3A40C(v20, v24);
      v66 = a1[2];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        goto LABEL_30;
      }

      v9 = v65;
      if (a1[3] < v69)
      {
        sub_224B18E30(v69, isUniquelyReferenced_nonNull_native);
        v64 = sub_224A3A40C(v20, v24);
        v21 = v81;
        if ((v9 & 1) != (v70 & 1))
        {
          sub_224DAFDD8();
          __break(1u);
          return;
        }

LABEL_21:
        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      v21 = v81;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v74 = v64;
      sub_224B29FC8();
      v64 = v74;
      if (v9)
      {
LABEL_9:
        v48 = v64;

        a1 = v95;
        v49 = v95[7];
        v50 = *(v49 + 8 * v48);
        *(v49 + 8 * v48) = v63;

        sub_224A3311C(v94, &unk_27D6F6510, &unk_224DC0290);
        goto LABEL_10;
      }

LABEL_22:
      a1 = v95;
      v95[(v64 >> 6) + 8] |= 1 << v64;
      v71 = (a1[6] + 16 * v64);
      *v71 = v20;
      v71[1] = v24;
      *(a1[7] + 8 * v64) = v63;
      sub_224A3311C(v94, &unk_27D6F6510, &unk_224DC0290);
      v72 = a1[2];
      v68 = __OFADD__(v72, 1);
      v73 = v72 + 1;
      if (v68)
      {
        goto LABEL_31;
      }

      a1[2] = v73;
LABEL_10:
      a3 &= a3 - 1;
      v20 = v90;
      v92(v93, v90);
      v45 = v80;
      v24 = v79;
    }

    while (1)
    {
      v51 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        break;
      }

      if (v51 >= v24)
      {

        __swift_destroy_boxed_opaque_existential_1(v96);
        isUniquelyReferenced_nonNull_native = v78[0];
        goto LABEL_28;
      }

      a3 = *&v45[8 * v51];
      ++a5;
      if (a3)
      {
        a5 = v51;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  __swift_destroy_boxed_opaque_existential_1(v96);
LABEL_28:
  v75 = objc_allocWithZone(MEMORY[0x277CFA1F8]);
  sub_224DAF598();
  v76 = sub_224DAECC8();

  v77 = [v75 initWithConfigurationsByHost_];

  (isUniquelyReferenced_nonNull_native)(v77, 0);
}

unint64_t sub_224D0A028()
{
  result = qword_27D6F64E8;
  if (!qword_27D6F64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F64E8);
  }

  return result;
}

void *sub_224D0A07C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_224B07020(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_224D0A10C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v123 = a8;
  v119 = a7;
  v117 = a6;
  v113 = a5;
  v132 = a4;
  v111 = a3;
  v109 = a2;
  v131 = a12;
  v130 = a11;
  v127 = a10;
  v124 = a9;
  v126 = a23;
  v120 = a22;
  v129 = a30;
  v114 = a31;
  v125 = a34;
  v112 = a35;
  v122 = a28;
  v110 = a29;
  v128 = a19;
  v116 = a26;
  v121 = a17;
  v115 = a15;
  v176 = a14;
  v177 = a25;
  v118 = a33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v175);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a1, a14);
  v174[3] = a21;
  v174[4] = a32;
  v37 = __swift_allocate_boxed_opaque_existential_1(v174);
  (*(*(a21 - 8) + 32))(v37, v109, a21);
  v173[3] = a16;
  v173[4] = a27;
  v38 = __swift_allocate_boxed_opaque_existential_1(v173);
  (*(*(a16 - 8) + 32))(v38, v111, a16);
  v172[3] = a18;
  v172[4] = a29;
  v39 = __swift_allocate_boxed_opaque_existential_1(v172);
  (*(*(a18 - 8) + 32))(v39, v113, a18);
  v170 = a24;
  v171 = a35;
  v40 = __swift_allocate_boxed_opaque_existential_1(v169);
  (*(*(a24 - 8) + 32))(v40, v117, a24);
  v168[3] = a20;
  v168[4] = a31;
  v41 = __swift_allocate_boxed_opaque_existential_1(v168);
  (*(*(a20 - 8) + 32))(v41, v119, a20);
  v166 = a15;
  v167 = a26;
  v42 = __swift_allocate_boxed_opaque_existential_1(v165);
  (*(*(a15 - 8) + 32))(v42, v123, a15);
  v164[3] = a22;
  v164[4] = a33;
  v43 = __swift_allocate_boxed_opaque_existential_1(v164);
  (*(*(a22 - 8) + 32))(v43, a9, a22);
  v163[3] = a17;
  v163[4] = a28;
  v44 = __swift_allocate_boxed_opaque_existential_1(v163);
  (*(*(a17 - 8) + 32))(v44, a10, a17);
  v161 = a23;
  v162 = a34;
  v45 = __swift_allocate_boxed_opaque_existential_1(v160);
  (*(*(a23 - 8) + 32))(v45, a11, a23);
  v159[3] = a19;
  v159[4] = a30;
  v46 = __swift_allocate_boxed_opaque_existential_1(v159);
  (*(*(a19 - 8) + 32))(v46, a12, a19);
  type metadata accessor for ControlServerServices();
  v47 = swift_allocObject();
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v175, v176);
  MEMORY[0x28223BE20](v48, v48);
  v50 = (&v108 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v169, v170);
  MEMORY[0x28223BE20](v52, v52);
  v54 = (&v108 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
  MEMORY[0x28223BE20](v56, v56);
  v58 = (&v108 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
  MEMORY[0x28223BE20](v60, v60);
  v62 = (&v108 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v50;
  v65 = *v54;
  v66 = *v58;
  v67 = *v62;
  v68 = type metadata accessor for LiveControlService(0);
  v158[3] = v68;
  v69 = sub_224D0EE58(&qword_281359B70, type metadata accessor for LiveControlService, &unk_224DBCEA4);
  v158[4] = v69;
  v158[0] = v64;
  v70 = type metadata accessor for LocationService(0);
  v157[4] = &off_2838352C0;
  v157[3] = v70;
  v157[0] = v65;
  v71 = type metadata accessor for PushService();
  v156[4] = &off_283828B40;
  v156[3] = v71;
  v156[0] = v66;
  v72 = type metadata accessor for ControlVisibilityMonitor();
  v155[4] = &off_283832610;
  v155[3] = v72;
  v73 = v72;
  v131 = v72;
  v155[0] = v67;
  sub_224A3317C(v158, v47 + 16);
  sub_224A3317C(v174, v47 + 56);
  sub_224A3317C(v132, v47 + 96);
  sub_224A3317C(v172, v47 + 136);
  sub_224A3317C(v157, v47 + 176);
  sub_224A3317C(v168, v47 + 216);
  sub_224A3317C(v156, v47 + 296);
  sub_224A3317C(v164, v47 + 336);
  sub_224A3317C(v173, v47 + 256);
  sub_224A3317C(v163, v47 + 376);
  sub_224A3317C(v158, v154);
  sub_224A3317C(v174, v153);
  sub_224A3317C(v172, v152);
  sub_224A3317C(v157, v151);
  sub_224A3317C(v168, v150);
  sub_224A3317C(v164, v149);
  sub_224A3317C(v163, v148);
  sub_224A3317C(v155, v147);
  sub_224A3317C(v159, v146);
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v154, v154[3]);
  MEMORY[0x28223BE20](v74, v74);
  v76 = (&v108 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v151, v151[3]);
  MEMORY[0x28223BE20](v78, v78);
  v80 = (&v108 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = __swift_mutable_project_boxed_opaque_existential_1(v147, v147[3]);
  MEMORY[0x28223BE20](v82, v82);
  v84 = (&v108 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84);
  v86 = *v76;
  v87 = *v80;
  v88 = *v84;
  v145[3] = v68;
  v145[4] = v69;
  v145[0] = v86;
  v143 = v70;
  v144 = &off_2838352C0;
  v142[0] = v87;
  v140 = v73;
  v141 = &off_283832610;
  v139[0] = v88;
  type metadata accessor for ControlSessionServices();
  v89 = swift_allocObject();
  v90 = __swift_mutable_project_boxed_opaque_existential_1(v145, v68);
  MEMORY[0x28223BE20](v90, v90);
  v92 = (&v108 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  v94 = __swift_mutable_project_boxed_opaque_existential_1(v142, v143);
  MEMORY[0x28223BE20](v94, v94);
  v96 = (&v108 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v97 + 16))(v96);
  v98 = __swift_mutable_project_boxed_opaque_existential_1(v139, v140);
  MEMORY[0x28223BE20](v98, v98);
  v100 = (&v108 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v101 + 16))(v100);
  v102 = *v92;
  v103 = *v96;
  v104 = *v100;
  *(v89 + 40) = v68;
  *(v89 + 48) = v69;
  *(v89 + 16) = v102;
  *(v89 + 160) = v70;
  *(v89 + 168) = &off_2838352C0;
  *(v89 + 136) = v103;
  v137 = v131;
  v138 = &off_283832610;
  *&v136 = v104;
  __swift_destroy_boxed_opaque_existential_1(v132);
  __swift_destroy_boxed_opaque_existential_1(v159);
  __swift_destroy_boxed_opaque_existential_1(v163);
  __swift_destroy_boxed_opaque_existential_1(v164);
  __swift_destroy_boxed_opaque_existential_1(v168);
  __swift_destroy_boxed_opaque_existential_1(v172);
  __swift_destroy_boxed_opaque_existential_1(v173);
  __swift_destroy_boxed_opaque_existential_1(v174);
  __swift_destroy_boxed_opaque_existential_1(v155);
  __swift_destroy_boxed_opaque_existential_1(v156);
  __swift_destroy_boxed_opaque_existential_1(v157);
  __swift_destroy_boxed_opaque_existential_1(v158);
  *(v89 + 368) = 0;
  *(v89 + 336) = 0u;
  *(v89 + 352) = 0u;
  sub_224A36F98(v153, v89 + 56);
  sub_224A36F98(v152, v89 + 96);
  sub_224A36F98(v150, v89 + 176);
  sub_224A36F98(v149, v89 + 216);
  sub_224A36F98(v148, v89 + 256);
  sub_224A36F98(&v136, v89 + 296);
  sub_224A36F98(v146, &v133);
  swift_beginAccess();
  v105 = *(&v134 + 1);
  if (!*(v89 + 360))
  {
    if (*(&v134 + 1))
    {
      goto LABEL_3;
    }

LABEL_5:
    v106 = v134;
    *(v89 + 336) = v133;
    *(v89 + 352) = v106;
    *(v89 + 368) = v135;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1((v89 + 336));
  if (!v105)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_224A36F98(&v133, v89 + 336);
LABEL_6:
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v139);
  __swift_destroy_boxed_opaque_existential_1(v142);
  __swift_destroy_boxed_opaque_existential_1(v145);
  __swift_destroy_boxed_opaque_existential_1(v147);
  __swift_destroy_boxed_opaque_existential_1(v151);
  __swift_destroy_boxed_opaque_existential_1(v154);
  *(v47 + 416) = v89;
  __swift_destroy_boxed_opaque_existential_1(v160);
  __swift_destroy_boxed_opaque_existential_1(v165);
  __swift_destroy_boxed_opaque_existential_1(v169);
  __swift_destroy_boxed_opaque_existential_1(v175);
  return v47;
}

double sub_224D0AE80(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore14ControlsServer__services];
  v5 = *&v2[OBJC_IVAR____TtC10ChronoCore14ControlsServer__queue];
  v6 = [a1 remoteProcess];
  v58 = type metadata accessor for ControlsClient();
  v7 = objc_allocWithZone(v58);
  v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__subscriptions] = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions] = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_controlHostIdentities] = v8;
  v9 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_serviceAssertionIDs;
  v10 = MEMORY[0x277D84F90];
  *&v7[v9] = sub_224DA2520(MEMORY[0x277D84F90]);
  v11 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_serviceAssertions;
  *&v7[v11] = sub_224DA260C(v10);
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_controlFetchSubscriptions] = v8;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue] = v5;
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_connection] = a1;
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services] = v4;
  *&v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__processHandle] = v6;
  v12 = v5;
  v13 = a1;

  v14 = v6;
  sub_224DAF938();

  LODWORD(v59) = [v14 pid];
  v15 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v15);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v16 = &v7[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier];
  *v16 = 0x736C6F72746E6F43;
  v16[1] = 0xEF5B746E65696C43;
  v62.receiver = v7;
  v62.super_class = v58;
  v17 = objc_msgSendSuper2(&v62, sel_init);

  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  v19[2] = sub_224D0EFB4;
  v19[3] = v18;
  aBlock[4] = sub_224A75AA4;
  v61 = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_50;
  v20 = _Block_copy(aBlock);
  v21 = v61;
  v22 = v2;
  v23 = v17;

  [v13 configureConnection_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v21 = &off_27853F000;
  v19 = [v13 remoteProcess];
  sub_224DAA318();
  v24 = sub_224DAEDE8();

  v25 = [v19 hasEntitlement_];

  if (v25)
  {
    goto LABEL_15;
  }

  v26 = [v19 bundleIdentifier];
  if (v26)
  {
    v27 = v26;
    sub_224DAEE18();

    v28 = sub_224DAEE38();
    v30 = v29;

    if (v28 == 0xD000000000000015 && 0x8000000224DCE790 == v30)
    {
      goto LABEL_14;
    }

    v31 = sub_224DAFD88();

    v21 = &off_27853F000;
    if (v31)
    {
      goto LABEL_15;
    }
  }

  v32 = [v19 bundleIdentifier];
  if (v32)
  {
    v33 = v32;
    sub_224DAEE18();

    v34 = sub_224DAEE38();
    v36 = v35;

    if (v34 == 0xD000000000000015 && 0x8000000224DCE770 == v36)
    {
      goto LABEL_14;
    }

    v37 = sub_224DAFD88();

    if (v37)
    {
LABEL_15:
      v43 = *&v22[OBJC_IVAR____TtC10ChronoCore14ControlsServer__clientsSetLock];
      os_unfair_lock_lock(*(v43 + 16));
      swift_beginAccess();
      sub_224ADD05C(&v59, v23);
      swift_endAccess();

      os_unfair_lock_unlock(*(v43 + 16));
      v44 = &selRef_activate;
      goto LABEL_16;
    }
  }

  v38 = [v19 bundleIdentifier];
  if (v38)
  {
    v39 = v38;
    sub_224DAEE18();

    v40 = sub_224DAEE38();
    v42 = v41;

    if (v40 == 0xD000000000000015 && 0x8000000224DCE750 == v42)
    {
LABEL_14:

      goto LABEL_15;
    }

    v46 = sub_224DAFD88();

    if (v46)
    {
      goto LABEL_15;
    }
  }

  if (qword_281351658 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  v47 = sub_224DAB258();
  __swift_project_value_buffer(v47, qword_281365060);
  v48 = v13;
  v49 = sub_224DAB228();
  v50 = sub_224DAF2A8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v51 = 136446466;
    v52 = [v48 v21[393]];
    v53 = [v52 description];

    v54 = sub_224DAEE18();
    v56 = v55;

    v57 = sub_224A33F74(v54, v56, aBlock);

    *(v51 + 4) = v57;
    *(v51 + 12) = 2082;
    *(v51 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, aBlock);
    _os_log_impl(&dword_224A2F000, v49, v50, "Chrono controls service connection from %{public}s failed to authenticate <entitled: %{public}s>", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v58, -1, -1);
    MEMORY[0x22AA5EED0](v51, -1, -1);
  }

  v44 = &selRef_invalidate;
LABEL_16:
  [v13 *v44];

  return result;
}

uint64_t sub_224D0B63C(void *a1, char *a2, uint64_t a3)
{
  v69 = a3;
  v74 = a1;
  v4 = sub_224DAE138();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v62 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F38C0, &qword_224DB31E8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v65 = &v62 - v12;
  v13 = sub_224DAC5E8();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v72 = &v62 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v70 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v73 = &v62 - v26;
  BSDispatchQueueAssert();
  v63 = a2;
  v71 = *&a2[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services];
  sub_224A3317C(v71 + 296, v77);
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v27 = off_283828B60[0];
  v64 = type metadata accessor for PushService();
  result = v27(v64, &off_283828B40);
  v29 = v14;
  v30 = result;
  v76 = *(result + 16);
  if (!v76)
  {
LABEL_8:

    v41 = 1;
    v40 = v73;
LABEL_9:
    (*(v29 + 56))(v40, v41, 1, v13);
    __swift_destroy_boxed_opaque_existential_1(v77);
    v42 = v70;
    sub_224A3796C(v40, v70, &qword_27D6F3BB0, &unk_224DB8CF0);
    v43 = (*(v29 + 48))(v42, 1, v13);
    v45 = v71;
    v44 = v72;
    if (v43 == 1)
    {
      sub_224A3311C(v42, &qword_27D6F3BB0, &unk_224DB8CF0);
    }

    else
    {
      (*(v29 + 32))(v72, v42, v13);
      sub_224A3317C(v45 + 296, v77);
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v46 = off_283828B68(v64, &off_283828B40);
      MEMORY[0x28223BE20](v46, v47);
      *(&v62 - 2) = v44;
      v48 = v65;
      v49 = v29;
      sub_224AFD7EC(sub_224AC20A8, v46, v65);
      v50 = v48;

      __swift_destroy_boxed_opaque_existential_1(v77);
      v51 = sub_224DAE438();
      if ((*(*(v51 - 8) + 48))(v48, 1, v51) != 1)
      {
        v55 = sub_224DAF128();
        v56 = v62;
        (*(*(v55 - 8) + 56))(v62, 1, 1, v55);
        v57 = swift_allocObject();
        v57[2] = 0;
        v57[3] = 0;
        v58 = v63;
        v59 = v74;
        v57[4] = v63;
        v57[5] = v59;
        v60 = v59;
        v61 = v58;
        sub_224D00D34(0, 0, v56, &unk_224DC02A8, v57);

        (*(v69 + 16))(v69, 0);
        sub_224A3311C(v40, &qword_27D6F3BB0, &unk_224DB8CF0);
        sub_224A3311C(v50, &unk_27D6F38C0, &qword_224DB31E8);
        return (*(v49 + 8))(v44, v13);
      }

      sub_224A3311C(v48, &unk_27D6F38C0, &qword_224DB31E8);
      (*(v49 + 8))(v44, v13);
    }

    __swift_project_boxed_opaque_existential_1((v45 + 16), *(v45 + 40));
    v53 = v66;
    v52 = v67;
    v54 = v68;
    (*(v67 + 104))(v66, *MEMORY[0x277CF9EB8], v68);
    sub_224C7CAAC(v74, v53);
    (*(v52 + 8))(v53, v54);
    (*(v69 + 16))(v69, 0);
    return sub_224A3311C(v40, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  v31 = 0;
  v75 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v32 = (v14 + 8);
  while (v31 < *(v30 + 16))
  {
    (*(v29 + 16))(v18, v75 + *(v29 + 72) * v31, v13);
    v33 = sub_224DAC5D8();
    if (v33)
    {
      v34 = v33;
      sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
      v35 = v29;
      v36 = v13;
      v37 = v74;
      v38 = sub_224DAF6A8();

      v13 = v36;
      v29 = v35;

      if (v38)
      {

        v39 = *(v35 + 32);
        v40 = v73;
        v39(v73, v18, v13);
        v41 = 0;
        goto LABEL_9;
      }
    }

    ++v31;
    result = (*v32)(v18, v13);
    if (v76 == v31)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D0BDC4(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v41 = a1;
  v4 = sub_224DAC5E8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v37 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v39 = &v35 - v17;
  BSDispatchQueueAssert();
  v36 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services);
  sub_224A3317C(v36 + 296, v44);
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v18 = off_283828B60[0];
  v19 = type metadata accessor for PushService();
  result = v18(v19, &off_283828B40);
  v21 = result;
  v43 = *(result + 16);
  if (v43)
  {
    v22 = 0;
    v42 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v23 = (v5 + 8);
    while (v22 < *(v21 + 16))
    {
      (*(v5 + 16))(v9, v42 + *(v5 + 72) * v22, v4);
      v24 = sub_224DAC5D8();
      if (v24)
      {
        v25 = v24;
        sub_224A3B79C(0, &qword_281350A50, 0x277CFA228);
        v26 = v5;
        v27 = v4;
        v28 = v41;
        v29 = sub_224DAF6A8();

        v4 = v27;
        v5 = v26;

        if (v29)
        {

          v30 = v39;
          (*(v26 + 32))(v39, v9, v4);
          v31 = 0;
          goto LABEL_9;
        }
      }

      ++v22;
      result = (*v23)(v9, v4);
      if (v43 == v22)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v31 = 1;
    v30 = v39;
LABEL_9:
    (*(v5 + 56))(v30, v31, 1, v4);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v32 = v38;
    sub_224A3796C(v30, v38, &qword_27D6F3BB0, &unk_224DB8CF0);
    if ((*(v5 + 48))(v32, 1, v4) == 1)
    {
      sub_224A3311C(v32, &qword_27D6F3BB0, &unk_224DB8CF0);
      (*(v40 + 16))(v40, 0);
    }

    else
    {
      v33 = v37;
      (*(v5 + 32))(v37, v32, v4);
      __swift_project_boxed_opaque_existential_1((v36 + 296), *(v36 + 320));
      v34 = sub_224AB7D1C(v33);
      (*(v40 + 16))(v40, 0, v34);
      (*(v5 + 8))(v33, v4);
    }

    return sub_224A3311C(v30, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  return result;
}

uint64_t sub_224D0C1E4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v161 = a4;
  v163[11] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v155 = &v141 - v7;
  v8 = sub_224DA9688();
  v157 = *(v8 - 8);
  v158 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v156 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_224DA9F08();
  v153 = *(v154 - 8);
  v12 = MEMORY[0x28223BE20](v154, v11);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v141 - v16;
  v18 = sub_224DAD158();
  v160 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v141 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v141 - v28;
  BSDispatchQueueAssert();
  v30 = a3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment];
  a3[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_needsSystemEnvironment] = 1;
  sub_224D049C0(v30);
  sub_224DAA598();
  sub_224D0EE58(&unk_281351800, MEMORY[0x277CFA0B8], MEMORY[0x277CFA0C0]);
  sub_224DAF198();
  v150 = v22;
  v152 = v29;
  v146 = v17;
  v147 = v14;
  v31 = v160;
  v151 = a3;
  v159 = v163[0];
  v32 = sub_224DAA578();
  if (v33 >> 60 == 15)
  {
    sub_224DAD148();
    v34 = v161;
  }

  else
  {
    v35 = v32;
    v36 = v33;
    sub_224D0EE58(&qword_281350CF0, MEMORY[0x277CF9C60], MEMORY[0x277CF9C68]);
    sub_224DAF198();
    v34 = v161;
    sub_224AC1D9C(v35, v36);
    (*(v31 + 32))(v152, v26, v18);
  }

  if (qword_281351658 != -1)
  {
    swift_once();
  }

  v37 = sub_224DAB258();
  v38 = __swift_project_value_buffer(v37, qword_281365060);
  v39 = v151;

  v148 = v38;
  v40 = sub_224DAB228();
  v41 = sub_224DAF278();

  v42 = os_log_type_enabled(v40, v41);
  v149 = v18;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v163[0] = v145;
    *v43 = 136446466;
    *(v43 + 4) = sub_224A33F74(*&v39[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v39[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v163);
    *(v43 + 12) = 2082;
    v163[8] = sub_224DAA558();
    sub_224DAA0F8();
    sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF8]);
    v44 = sub_224DAFD28();
    v46 = v45;

    v47 = sub_224A33F74(v44, v46, v163);

    *(v43 + 14) = v47;
    _os_log_impl(&dword_224A2F000, v40, v41, "[%{public}s] Received message to subscribe to %{public}s.", v43, 0x16u);
    v48 = v145;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v48, -1, -1);
    v49 = v43;
    v31 = v160;
    MEMORY[0x22AA5EED0](v49, -1, -1);
  }

  v50 = sub_224DAA558();
  v51 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v52 = *&v39[v51];

  v53 = sub_224D24334(v50, v52);

  v54 = v150;
  if (v53)
  {

    v55 = v39;

    v56 = sub_224DAB228();
    v57 = sub_224DAF288();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v163[0] = v59;
      *v58 = 136446466;
      *(v58 + 4) = sub_224A33F74(*&v55[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v55[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v163);
      *(v58 + 12) = 2082;
      v163[5] = v50;
      sub_224DAA0F8();
      sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF8]);
      v60 = sub_224DAFD28();
      v62 = sub_224A33F74(v60, v61, v163);

      *(v58 + 14) = v62;
      _os_log_impl(&dword_224A2F000, v56, v57, "[%{public}s] Error subscribing to session: Cannot stomp an existing session: %{public}s", v58, 0x16u);
      swift_arrayDestroy();
      v63 = v152;
      MEMORY[0x22AA5EED0](v59, -1, -1);
      MEMORY[0x22AA5EED0](v58, -1, -1);
    }

    else
    {

      v63 = v152;
    }

    v88 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v89 = sub_224DAEDE8();
    v90 = [v88 initWithDomain:v89 code:23 userInfo:0];

    v91 = sub_224DA9518();
    (*(v34 + 16))(v34, 0, v91);

    return (*(v31 + 8))(v63, v149);
  }

  else
  {
    v143 = v51;
    v145 = v39;
    v142 = *&v39[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services];
    v64 = *(v142 + 416);

    v141 = sub_224DAA568();
    v65 = v149;
    (*(v31 + 16))(v54, v152, v149);
    type metadata accessor for ControlSession(0);
    v66 = swift_allocObject();
    v67 = v54;
    v68 = v153;
    v69 = v154;
    (*(v153 + 104))(v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority, *MEMORY[0x277CF9F28], v154);
    *(v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession__environmentModifierAssertion) = 0;
    sub_224DAD148();
    v70 = v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession__lifetimeAssertion;
    *v70 = 0u;
    *(v70 + 16) = 0u;
    *(v70 + 32) = 0;
    *(v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession__visibilityAssertion) = 0;
    *(v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession_visibility) = 0;
    *(v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
    *(v66 + OBJC_IVAR____TtC10ChronoCore14ControlSession__invalidated) = 0;
    *(v66 + 16) = v50;
    *(v66 + 24) = v64;

    sub_224B35230(v66, v67, v50, v64, v141);

    v71 = *(v31 + 8);
    v160 = v31 + 8;
    v150 = v71;
    v71(v67, v65);
    v72 = v146;
    sub_224DAA588();
    v73 = OBJC_IVAR____TtC10ChronoCore14ControlSession_taskPriority;
    swift_beginAccess();
    v74 = v147;
    (*(v68 + 16))(v147, v66 + v73, v69);
    swift_beginAccess();
    (*(v68 + 24))(v66 + v73, v72, v69);
    swift_endAccess();
    sub_224B33B84(v74);
    v75 = *(v68 + 8);
    v75(v74, v69);
    v75(v72, v69);
    sub_224A3317C(v142 + 256, v163);
    __swift_project_boxed_opaque_existential_1(v163, v163[3]);
    v76 = sub_224DAA0D8();
    v77 = [v76 extensionIdentity];

    v78 = v155;
    sub_224DAC658();

    v80 = v157;
    v79 = v158;
    v81 = (v157)[6](v78, 1, v158);
    v144 = v66;
    if (v81 == 1)
    {
      v82 = v34;
      sub_224A3311C(v78, &unk_27D6F4680, &unk_224DB4610);
      __swift_destroy_boxed_opaque_existential_1(v163);
      v83 = sub_224DAA0D8();
      v84 = [v83 extensionIdentity];

      sub_224D0EEA0();
      v85 = swift_allocError();
      *v86 = v84;
      swift_willThrow();
      v87 = v145;
      v111 = v145;
      v112 = v85;
      v113 = sub_224DAB228();
      v114 = sub_224DAF2A8();

      if (os_log_type_enabled(v113, v114))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v163[0] = v118;
        *v116 = 136446466;
        *(v116 + 4) = sub_224A33F74(*&v111[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v111[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v163);
        *(v116 + 12) = 2114;
        v119 = v85;
        v120 = _swift_stdlib_bridgeErrorToNSError();
        *(v116 + 14) = v120;
        *v117 = v120;
        _os_log_impl(&dword_224A2F000, v113, v114, "[%{public}s] No sandbox extension issued: %{public}@", v116, 0x16u);
        sub_224A3311C(v117, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v117, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v118);
        v121 = v118;
        v87 = v145;
        MEMORY[0x22AA5EED0](v121, -1, -1);
        MEMORY[0x22AA5EED0](v116, -1, -1);
      }

      else
      {
      }

      v34 = v82;
      v66 = v144;
    }

    else
    {
      (v80)[4](v156, v78, v79);
      __swift_destroy_boxed_opaque_existential_1(v163);
      v93 = [objc_opt_self() defaultManager];
      v94 = sub_224DA95F8();
      v163[0] = 0;
      v95 = [v93 createDirectoryAtURL:v94 withIntermediateDirectories:1 attributes:0 error:v163];

      if (v95)
      {
        v96 = v163[0];
        v87 = v145;
      }

      else
      {
        v97 = v34;
        v98 = v163[0];
        v99 = sub_224DA9528();

        swift_willThrow();
        v87 = v145;
        v100 = v145;
        v101 = v99;
        v102 = sub_224DAB228();
        v103 = sub_224DAF2A8();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v163[0] = v106;
          *v104 = 136446466;
          *(v104 + 4) = sub_224A33F74(*&v100[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v100[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v163);
          *(v104 + 12) = 2114;
          v107 = v99;
          v108 = _swift_stdlib_bridgeErrorToNSError();
          *(v104 + 14) = v108;
          *v105 = v108;
          _os_log_impl(&dword_224A2F000, v102, v103, "[%{public}s] Sandbox extension issuer couldn't create folder: %{public}@", v104, 0x16u);
          sub_224A3311C(v105, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v105, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v106);
          v109 = v106;
          v87 = v145;
          MEMORY[0x22AA5EED0](v109, -1, -1);
          MEMORY[0x22AA5EED0](v104, -1, -1);
        }

        else
        {
        }

        v34 = v97;
        v66 = v144;
        v80 = v157;
      }

      v110 = v156;
      sub_224DAA088();
      sub_224DAA078();
      (v80[1])(v110, v158);
    }

    v122 = v143;
    swift_beginAccess();
    v123 = *&v87[v122];
    if ((v123 & 0xC000000000000001) != 0)
    {
      if (v123 < 0)
      {
        v124 = *&v87[v122];
      }

      else
      {
        v124 = v123 & 0xFFFFFFFFFFFFFF8;
      }

      v125 = sub_224DAF838();
      if (__OFADD__(v125, 1))
      {
        __break(1u);
      }

      *&v87[v122] = sub_224D2D28C(v124, v125 + 1);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v162 = *&v87[v122];
    sub_224B232B4(v66, v50, isUniquelyReferenced_nonNull_native);
    *&v87[v122] = v162;

    swift_endAccess();
    sub_224DAA5B8();
    v163[0] = sub_224DAA5A8();
    sub_224D0EE58(&unk_2813517F0, MEMORY[0x277CFA0C8], MEMORY[0x277CFA0D0]);
    v127 = sub_224DAED78();
    v128 = v87;
    v130 = v129;
    v158 = v50;
    v131 = v128;

    v132 = sub_224DAB228();
    v133 = sub_224DAF2A8();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v163[0] = v157;
      *v134 = 136446466;
      *(v134 + 4) = sub_224A33F74(*&v131[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier], *&v131[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__logIdentifier + 8], v163);
      *(v134 + 12) = 2082;
      LODWORD(v156) = v133;
      v162 = sub_224DAA558();
      sub_224DAA0F8();
      sub_224D0EE58(&qword_281351890, MEMORY[0x277CF9FD8], MEMORY[0x277CF9FF8]);
      v135 = sub_224DAFD28();
      v137 = v136;

      v138 = sub_224A33F74(v135, v137, v163);
      v34 = v161;

      *(v134 + 14) = v138;
      _os_log_impl(&dword_224A2F000, v132, v156, "[%{public}s] Successfully subscribed to session: %{public}s", v134, 0x16u);
      v139 = v157;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v139, -1, -1);
      MEMORY[0x22AA5EED0](v134, -1, -1);
    }

    sub_224A77FD0(v127, v130);
    v140 = sub_224DA96B8();
    (*(v34 + 16))(v34, v140, 0);

    sub_224A78024(v127, v130);

    sub_224A78024(v127, v130);

    return v150(v152, v149);
  }
}

void sub_224D0D80C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_224DAA8E8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _Block_copy(a4);
  BSDispatchQueueAssert();
  sub_224D0EE58(&qword_27D6F6550, MEMORY[0x277CFA4D8], MEMORY[0x277CFA4E0]);
  sub_224DAF198();
  v11 = sub_224DAA8B8();
  BSDispatchQueueAssert();
  v12 = OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue_sessions;
  swift_beginAccess();
  v13 = *(a3 + v12);

  v14 = sub_224D24334(v11, v13);

  if (v14)
  {
    v15 = sub_224DAA0E8();
    v16 = [v15 contentType];

    if (!v16)
    {
      v17 = *__swift_project_boxed_opaque_existential_1((*(v14 + 24) + 16), *(*(v14 + 24) + 40));
      _Block_copy(a4);
      sub_224C8ECA0(v10, v17, a4);
      _Block_release(a4);
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  _Block_release(a4);
}

void sub_224D0DB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BSDispatchQueueAssert();
  sub_224A3317C(*(a2 + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 336, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v5 = sub_224DADA48();
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v5 && (, v6 = sub_224DACFB8(), , v6))
  {
    v7 = *(a3 + 16);
    v8 = v6;
    v7(a3, v8, 0);
  }

  else
  {
    sub_224D0EDFC();
    v9 = swift_allocError();
    v10 = sub_224DA9518();
    (*(a3 + 16))(a3, 0, v10);
  }
}

void sub_224D0DCD0(char *a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v142 = (&v118 - v6);
  v135 = sub_224DAF3B8();
  v125 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v7);
  i = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v9);
  v126 = &v118 - v10;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F64F0, &unk_224DC0270);
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v11);
  v127 = &v118 - v12;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5130, &unk_224DBAE70);
  v136 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v13);
  v15 = &v118 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6500, &unk_224DC0280);
  v143 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v118 - v18);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v144 = *(v140 - 8);
  MEMORY[0x28223BE20](v140, v20);
  v139 = &v118 - v21;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6510, &unk_224DC0290);
  v23 = MEMORY[0x28223BE20](v138, v22);
  v145 = (&v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23, v25);
  v137 = &v118 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v146 = &v118 - v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  v31 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue];
  v132 = a2;
  _Block_copy(a2);
  BSDispatchQueueAssert();
  v32 = a1;
  v33 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services];
  sub_224A3317C((v33 + 27), &v149);
  v34 = v150;
  v35 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v36 = (*(v35 + 24))(768, v34, v35);
  v133 = v30;
  if (v36)
  {
    v37 = sub_224CFEA64(v36);

    __swift_destroy_boxed_opaque_existential_1(&v149);
    v19 = sub_224DA26F8(MEMORY[0x277D84F90]);
    v38 = v37 + 64;
    v39 = 1 << v37[32];
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v31 = v40 & *(v37 + 8);
    v41 = (v39 + 63) >> 6;
    v136 = (v144 + 1);
    v141 = v37;

    v32 = 0;
    v135 = (v37 + 64);
    for (i = v41; ; v41 = i)
    {
      if (!v31)
      {
        while (1)
        {
          v44 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v44 >= v41)
          {

            v75 = objc_allocWithZone(MEMORY[0x277CFA1F8]);
            sub_224DAF598();
            v76 = sub_224DAECC8();

            v77 = [v75 initWithConfigurationsByHost_];

            (v132)[2](v132, v77, 0);

            return;
          }

          v31 = *&v38[8 * v44];
          ++v32;
          if (v31)
          {
            v144 = v19;
            v32 = v44;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v144 = v19;
LABEL_13:
      v45 = __clz(__rbit64(v31)) | (v32 << 6);
      v46 = v141;
      v47 = *(v141 + 48);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v49 = *(v48 - 8);
      v50 = v146;
      (*(v49 + 16))(v146, v47 + *(v49 + 72) * v45, v48);
      v51 = *(*(v46 + 56) + 8 * v45);
      v16 = v138;
      *(v50 + *(v138 + 48)) = v51;
      v52 = v137;
      sub_224A3796C(v50, v137, &unk_27D6F6510, &unk_224DC0290);
      v53 = *(v52 + *(v16 + 48));
      v54 = v51;

      v55 = v139;
      sub_224DAA238();
      v142 = *(v49 + 8);
      v143 = v48;
      v142(v52, v48);
      v56 = v140;
      v57 = sub_224DA9FE8();
      v59 = v58;
      (*v136)(v55, v56);
      v60 = v145;
      sub_224A3796C(v50, v145, &unk_27D6F6510, &unk_224DC0290);
      v19 = *&v60[*(v16 + 48)];
      v61 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = v61;
      v64 = sub_224A3A40C(v57, v59);
      v65 = v61[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_32;
      }

      v16 = v63;
      if (v61[3] >= v67)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v70 = v19;
          if (v63)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_224B29FC8();
          v70 = v19;
          if (v16)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_224B18E30(v67, isUniquelyReferenced_nonNull_native);
        v68 = sub_224A3A40C(v57, v59);
        if ((v16 & 1) != (v69 & 1))
        {

          _Block_release(v132);
          sub_224DAFDD8();
          __break(1u);
          return;
        }

        v64 = v68;
        v70 = v19;
        if (v16)
        {
LABEL_5:

          v19 = v149;
          v42 = v149[7];
          v43 = *(v42 + 8 * v64);
          *(v42 + 8 * v64) = v70;

          sub_224A3311C(v146, &unk_27D6F6510, &unk_224DC0290);
          goto LABEL_6;
        }
      }

      v19 = v149;
      v149[(v64 >> 6) + 8] |= 1 << v64;
      v71 = (v19[6] + 16 * v64);
      *v71 = v57;
      v71[1] = v59;
      *(v19[7] + 8 * v64) = v70;
      sub_224A3311C(v146, &unk_27D6F6510, &unk_224DC0290);
      v72 = v19[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (v73)
      {
        goto LABEL_33;
      }

      v19[2] = v74;
LABEL_6:
      v31 &= v31 - 1;
      v142(v145, v143);
      v38 = v135;
    }
  }

  v145 = v33;
  v137 = v15;
  __swift_destroy_boxed_opaque_existential_1(&v149);
  if (qword_281351668 != -1)
  {
LABEL_34:
    swift_once();
  }

  v138 = v16;
  v139 = v32;
  v78 = sub_224DAB258();
  __swift_project_value_buffer(v78, qword_281365078);
  v79 = sub_224DAB228();
  v80 = sub_224DAF2A8();
  v81 = os_log_type_enabled(v79, v80);
  v123 = v19;
  v82 = i;
  v83 = v145;
  if (v81)
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_224A2F000, v79, v80, "Control configuration requested before it's available to the server... waiting.", v84, 2u);
    MEMORY[0x22AA5EED0](v84, -1, -1);
  }

  v85 = swift_allocObject();
  v122 = v85;
  *(v85 + 16) = 0;
  v124 = (v85 + 16);
  v86 = swift_allocObject();
  v121 = v86;
  *(v86 + 16) = 0;
  v132 = (v86 + 16);
  v146 = swift_allocObject();
  *(v146 + 16) = 1;
  sub_224A3317C(v83 + 216, &v149);
  v88 = v150;
  v87 = v151;
  __swift_project_boxed_opaque_existential_1(&v149, v150);
  v148[1] = (*(*(v87 + 8) + 40))(768, v88);
  sub_224DAF388();
  v147 = v31;
  v89 = v31;
  v90 = sub_224DAF358();
  v91 = *(v90 - 8);
  v92 = *(v91 + 56);
  v144 = (v91 + 56);
  v145 = v92;
  v93 = v142;
  v119 = v90;
  (v92)(v142, 1, 1, v90);
  v118 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  v140 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, MEMORY[0x277CBCD90]);
  v94 = sub_224B67CF4();
  v95 = v126;
  v120 = v94;
  sub_224DAB468();
  sub_224A3311C(v93, &qword_27D6F5090, &qword_224DB5C30);
  v96 = *(v125 + 8);
  v97 = v135;
  v96(v82, v135);

  __swift_destroy_boxed_opaque_existential_1(&v149);
  sub_224DAF388();
  v98 = v118;
  v149 = v118;
  (v145)(v93, 1, 1, v90);
  sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60, MEMORY[0x277CBCCF8]);
  v99 = v127;
  v100 = v130;
  sub_224DAB458();
  sub_224A3311C(v93, &qword_27D6F5090, &qword_224DB5C30);

  v96(v82, v97);
  v101 = v121;
  v102 = v100;
  v103 = v122;
  (*(v128 + 8))(v95, v102);
  sub_224A33088(&unk_27D6F6520, &unk_27D6F64F0, &unk_224DC0270, MEMORY[0x277CBCCE8]);
  v104 = v137;
  v105 = v131;
  sub_224DAB418();
  (*(v129 + 8))(v99, v105);
  v149 = v98;
  (v145)(v93, 1, 1, v119);
  sub_224A33088(&unk_27D6F5150, &unk_27D6F5130, &unk_224DBAE70, MEMORY[0x277CBCC58]);
  v106 = v123;
  v107 = v141;
  sub_224DAB448();
  sub_224A3311C(v93, &qword_27D6F5090, &qword_224DB5C30);

  v136[1](v104, v107);
  v108 = swift_allocObject();
  v109 = v139;
  swift_unknownObjectWeakInit();
  v110 = swift_allocObject();
  v110[2] = v108;
  v110[3] = v101;
  v111 = v146;
  v110[4] = v103;
  v110[5] = v111;
  v112 = v133;
  v110[6] = sub_224B7A828;
  v110[7] = v112;
  v113 = swift_allocObject();
  v113[2] = v111;
  v113[3] = v109;
  v113[4] = sub_224B7A828;
  v113[5] = v112;
  sub_224A33088(&unk_27D6F6530, &unk_27D6F6500, &unk_224DC0280, MEMORY[0x277CBCD60]);
  swift_retain_n();
  swift_retain_n();

  v109;
  v114 = v138;
  v115 = sub_224DAB408();

  (*(v143 + 8))(v106, v114);
  v116 = v124;
  swift_beginAccess();
  *v116 = v115;

  v117 = v132;
  swift_beginAccess();
  if (*v117 != 1)
  {
    swift_beginAccess();
    swift_retain_n();
    sub_224ADC248(v148, v115);
    swift_endAccess();
  }
}

unint64_t sub_224D0EDFC()
{
  result = qword_27D6F6540;
  if (!qword_27D6F6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6540);
  }

  return result;
}

uint64_t sub_224D0EE58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224D0EEA0()
{
  result = qword_27D6F6558;
  if (!qword_27D6F6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6558);
  }

  return result;
}

uint64_t sub_224D0EEF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224D058FC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_126Tm()
{
  sub_224A78024(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224D0F054(void *a1, SEL *a2)
{
  v4 = sub_224DA96B8();
  [a1 *a2];
}

uint64_t objectdestroy_82Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_224D0F110(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_224D0F158(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_224D0F1BC()
{
  result = qword_27D6F65F8;
  if (!qword_27D6F65F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F65F8);
  }

  return result;
}

void sub_224D0F2A0(unint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x22AA5DCC0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_224A3B79C(0, a3, a4);
      sub_224DAAE78();

      if (!v4)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

double sub_224D0F3AC()
{
  sub_224DAB9D8();
  sub_224DAB9B8();

  return result;
}

void sub_224D0F424(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v423 = a4;
  v414 = a3;
  v415 = a2;
  v432 = a1;
  v411 = sub_224DAA998();
  v429 = *(v411 - 8);
  v8 = MEMORY[0x28223BE20](v411, v7);
  v399 = &v345 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v408 = &v345 - v11;
  v12 = sub_224DAAF28();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v405 = &v345 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = sub_224DAAF48();
  v428 = *(v412 - 8);
  v16 = MEMORY[0x28223BE20](v412, v15);
  v401 = &v345 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v404 = &v345 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v410 = &v345 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v403 = &v345 - v25;
  v420 = sub_224DAAC58();
  v427 = *(v420 - 8);
  v27 = MEMORY[0x28223BE20](v420, v26);
  v402 = (&v345 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v29);
  v413 = (&v345 - v30);
  v419 = sub_224DAB018();
  v426 = *(v419 - 8);
  v32 = MEMORY[0x28223BE20](v419, v31);
  v400 = &v345 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v398 = &v345 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v409 = &v345 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v407 = &v345 - v41;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3780, &qword_224DB3D60);
  v418 = *(v422 - 8);
  v43 = MEMORY[0x28223BE20](v422, v42);
  v397 = &v345 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v406 = &v345 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v417 = &v345 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v416 = &v345 - v53;
  MEMORY[0x28223BE20](v52, v54);
  v424 = &v345 - v55;
  v56 = sub_224DAA9E8();
  MEMORY[0x28223BE20](v56 - 8, v57);
  v430 = &v345 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_224DA9908();
  v425 = *(v431 - 8);
  v60 = MEMORY[0x28223BE20](v431, v59);
  v62 = &v345 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v60, v63);
  v66 = &v345 - v65;
  v68 = MEMORY[0x28223BE20](v64, v67);
  v70 = &v345 - v69;
  v72 = MEMORY[0x28223BE20](v68, v71);
  v74 = &v345 - v73;
  v76 = MEMORY[0x28223BE20](v72, v75);
  v78 = &v345 - v77;
  MEMORY[0x28223BE20](v76, v79);
  v81 = &v345 - v80;
  v421 = a5;
  sub_224DAB9E8();
  v82 = sub_224DAB9C8();

  if (v5)
  {
    return;
  }

  v433 = v82;
  v396 = v81;
  v394 = v78;
  v395 = v74;
  v391 = v70;
  v392 = v66;
  v393 = v62;
  __swift_project_boxed_opaque_existential_1(v432, v432[3]);
  v83 = sub_224DAD888();
  v390 = 0;
  v85 = v433;
  v389 = v83;
  if ((v433 & 0xC000000000000001) != 0)
  {
    v86 = sub_224DAFA68();
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v85 = v86 | 0x8000000000000000;
  }

  else
  {
    v90 = -1 << *(v433 + 32);
    v87 = (v433 + 64);
    v88 = ~v90;
    v91 = -v90;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    else
    {
      v92 = -1;
    }

    v89 = v92 & *(v433 + 64);
  }

  v94 = v430;
  v93 = v431;
  v95 = v428;
  v96 = v426;
  v97 = v425;
  v98 = 0;
  v426 = v88;
  v99 = (v88 + 64) >> 6;
  v428 = (v425 + 6);
  v388 = (v425 + 4);
  v383 = 0x8000000224DC4490;
  v382 = 0x8000000224DC4470;
  v381 = 0x8000000224DC43E0;
  v364 = 0x8000000224DC43C0;
  v362 = 0x8000000224DC43A0;
  ++v425;
  v380 = (v97 + 2);
  v379 = (v97 + 7);
  v378 = (v95 + 2);
  v377 = (v429 + 88);
  v376 = *MEMORY[0x277D463D8];
  v368 = *MEMORY[0x277D463E0];
  v375 = (v96 + 8);
  v374 = (v95 + 1);
  v363 = (v429 + 8);
  v367 = *MEMORY[0x277D46560];
  v372 = v427 + 13;
  v366 = (v429 + 96);
  v365 = *MEMORY[0x277D46558];
  v386 = (v96 + 32);
  v371 = (v96 + 16);
  v370 = v427 + 2;
  v369 = v427 + 1;
  v385 = (v427 + 4);
  v427 = MEMORY[0x277D84F90];
  *&v84 = 136380675;
  v387 = v84;
  *(&v100 + 1) = 2;
  v373 = xmmword_224DB3100;
  *&v100 = 136380931;
  v384 = v100;
  *&v100 = 136446210;
  v361 = v100;
  v432 = v87;
  v433 = v85;
  v429 = v99;
  while (2)
  {
    v101 = v98;
    if ((v85 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v106 = sub_224DAFB18();
        if (!v106)
        {
          goto LABEL_148;
        }

        v108 = v107;
        v438 = v106;
        sub_224DAAA08();
        swift_dynamicCast();
        v105 = v434;
        v438 = v108;
        sub_224DAA988();
        swift_dynamicCast();
        v98 = v101;
        v104 = v89;
        if (!v105)
        {
          goto LABEL_149;
        }

LABEL_20:
        sub_224DAA9F8();
        if ((*v428)(v94, 1, v93) != 1)
        {
          break;
        }

        v101 = v98;
        v89 = v104;
        v87 = v432;
        v85 = v433;
        v99 = v429;
        if ((v433 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      v109 = *v388;
      (*v388)(v396, v94, v93);
      sub_224DAA9D8();
      v110 = sub_224DAA9B8();
      v112 = v111;

      v113 = v110 == 0x6F69736E65747865 && v112 == 0xE90000000000006ELL;
      if (v113 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v114 = sub_224DAB258();
        v115 = __swift_project_value_buffer(v114, qword_281365120);

        v116 = sub_224DAB228();
        v117 = sub_224DAF2A8();

        v118 = os_log_type_enabled(v116, v117);
        v360 = v115;
        if (v118)
        {
          v119 = swift_slowAlloc();
          v359 = swift_slowAlloc();
          v434 = v359;
          *v119 = v387;
          v438 = v105;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          v120 = sub_224DAFD28();
          v122 = sub_224A33F74(v120, v121, &v434);

          *(v119 + 4) = v122;
          _os_log_impl(&dword_224A2F000, v116, v117, "Migrating extension %{private}s", v119, 0xCu);
          v123 = v359;
          __swift_destroy_boxed_opaque_existential_1(v359);
          MEMORY[0x22AA5EED0](v123, -1, -1);
          MEMORY[0x22AA5EED0](v119, -1, -1);
        }

        v124 = v422;
        v125 = *(v422 + 48);
        v126 = v423[3];
        v127 = v423[4];
        v128 = __swift_project_boxed_opaque_existential_1(v423, v126);
        v436 = v126;
        v437 = *(v127 + 16);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v434);
        (*(*(v126 - 8) + 16))(boxed_opaque_existential_1, v128, v126);
        v130 = v424;
        v131 = v424 + v125;
        v132 = v396;
        v133 = v390;
        sub_224D12EA0(v424, v131, v105, v134, v396, v389, v421, &v434);
        if (!v133)
        {
          v390 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v434);
          v150 = v416;
          sub_224A3796C(v130, v416, &qword_27D6F3780, &qword_224DB3D60);
          v151 = *(v124 + 48);
          v152 = v417;
          (*v386)(v417, v150, v419);
          (*v385)(v152 + v151, v150 + v151, v420);
          v153 = v427;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = sub_224AD9A18(0, v153[2] + 1, 1, v153);
          }

          v154 = v418;
          v94 = v430;
          v156 = v153[2];
          v155 = v153[3];
          v427 = v153;
          v360 = (v156 + 1);
          if (v156 >= v155 >> 1)
          {
            v427 = sub_224AD9A18((v155 > 1), v156 + 1, 1, v427);
          }

          sub_224A3311C(v424, &qword_27D6F3780, &qword_224DB3D60);
          v157 = v431;
          (*v425)(v396, v431);
          v158 = v427;
          v427[2] = v360;
          v159 = v158 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
          v160 = *(v154 + 72);
          v93 = v157;
          sub_224A44E4C(v152, &v159[v160 * v156], &qword_27D6F3780, &qword_224DB3D60);
          goto LABEL_54;
        }

        __swift_destroy_boxed_opaque_existential_1(&v434);

        v135 = v133;
        v136 = sub_224DAB228();
        v137 = sub_224DAF2A8();

        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v360 = v136;
          v139 = v138;
          v359 = swift_slowAlloc();
          v390 = swift_slowAlloc();
          v434 = v390;
          *v139 = v384;
          v438 = v105;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          v140 = sub_224DAFD28();
          v142 = sub_224A33F74(v140, v141, &v434);

          *(v139 + 4) = v142;
          *(v139 + 12) = 2114;
          v143 = v133;
          v144 = _swift_stdlib_bridgeErrorToNSError();
          *(v139 + 14) = v144;
          v145 = v359;
          v359->isa = v144;
          v146 = v360;
          _os_log_impl(&dword_224A2F000, v360, v137, "Failed to migrate extension %{private}s: %{public}@", v139, 0x16u);
          sub_224A3311C(v145, &unk_27D6F69F0, &unk_224DB3900);
          MEMORY[0x22AA5EED0](v145, -1, -1);
          v147 = v390;
          __swift_destroy_boxed_opaque_existential_1(v390);
          MEMORY[0x22AA5EED0](v147, -1, -1);
          MEMORY[0x22AA5EED0](v139, -1, -1);

          v148 = *v425;
          v149 = v396;
        }

        else
        {

          v148 = *v425;
          v149 = v132;
        }

        v93 = v431;
        v148(v149, v431);
        v390 = 0;
LABEL_51:
        v94 = v430;
LABEL_54:
        v99 = v429;
        v89 = v104;
        v87 = v432;
        v85 = v433;
        continue;
      }

      v161 = v110 == 1852793705 && v112 == 0xE400000000000000;
      if (v161 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v162 = sub_224DAB258();
        __swift_project_value_buffer(v162, qword_281365120);
        v163 = sub_224DAB228();
        v164 = sub_224DAF2A8();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          *v165 = 0;
          _os_log_impl(&dword_224A2F000, v163, v164, "Not migrating icon", v165, 2u);
          MEMORY[0x22AA5EED0](v165, -1, -1);
        }

        else
        {
        }

        v93 = v431;
        (*v425)(v396, v431);
        goto LABEL_54;
      }

      if (v110 == 0xD000000000000016 && v383 == v112 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v166 = sub_224DAB258();
        v167 = __swift_project_value_buffer(v166, qword_281365120);

        v358 = v167;
        v168 = sub_224DAB228();
        v169 = sub_224DAF2A8();

        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v360 = swift_slowAlloc();
          v434 = v360;
          *v170 = v387;
          v438 = v105;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          LODWORD(v359) = v169;
          v171 = sub_224DAFD28();
          v173 = sub_224A33F74(v171, v172, &v434);

          *(v170 + 4) = v173;
          _os_log_impl(&dword_224A2F000, v168, v359, "Migrating timeline configuration %{private}s", v170, 0xCu);
          v174 = v360;
          __swift_destroy_boxed_opaque_existential_1(v360);
          MEMORY[0x22AA5EED0](v174, -1, -1);
          MEMORY[0x22AA5EED0](v170, -1, -1);
        }

        v175 = v415;
        v93 = v431;
        v177 = v423[3];
        v176 = v423[4];
        v178 = __swift_project_boxed_opaque_existential_1(v423, v177);
        v357 = &v345;
        MEMORY[0x28223BE20](v178, v178);
        v356 = v180;
        v181 = *(v180 + 16);
        v359 = (&v345 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0));
        v360 = v177;
        v181();
        v182 = v390;
        v183 = sub_224D15DAC(v105, v396, v175);
        if (v182)
        {
          v390 = v182;
LABEL_65:
          v186 = v360;
          v187 = v356;
          v188 = v359;
LABEL_66:
          (*(v187 + 8))(v188, v186);

          v189 = v390;
          v190 = v390;
          v191 = sub_224DAB228();
          v192 = sub_224DAF2A8();

          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            v360 = 0;
            v194 = v193;
            v358 = swift_slowAlloc();
            v359 = swift_slowAlloc();
            v434 = v359;
            *v194 = v384;
            v438 = v105;
            sub_224DAAA08();
            sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
            LODWORD(v357) = v192;
            v195 = v191;
            v196 = sub_224DAFD28();
            v198 = sub_224A33F74(v196, v197, &v434);

            *(v194 + 4) = v198;
            v93 = v431;
            *(v194 + 12) = 2114;
            v199 = v189;
            v200 = _swift_stdlib_bridgeErrorToNSError();
            *(v194 + 14) = v200;
            v201 = v358;
            *v358 = v200;
            _os_log_impl(&dword_224A2F000, v195, v357, "Failed to migrate configuration-timeline %{private}s: %{public}@", v194, 0x16u);
            sub_224A3311C(v201, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v201, -1, -1);
            v202 = v359;
            __swift_destroy_boxed_opaque_existential_1(v359);
            MEMORY[0x22AA5EED0](v202, -1, -1);
            MEMORY[0x22AA5EED0](v194, -1, -1);

            (*v425)(v396, v93);
LABEL_68:
            v390 = v360;
            goto LABEL_51;
          }

          (*v425)(v396, v93);
          goto LABEL_70;
        }

        v353 = v176;
        v354 = v183;
        v184 = sub_224C91BAC();
        sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
        v185 = v395;
        v355 = v184;
        sub_224DAAE58();
        v390 = 0;
        v109(v394, v185, v93);
        v434 = v355;
        v435 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF514);
        sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF4EC);
        v188 = v359;
        v222 = v390;
        v223 = v360;
        v353 = sub_224DAB0A8();
        v390 = v222;
        if (v222)
        {
          v93 = v431;
          (*v425)(v394, v431);

          v186 = v223;
          v187 = v356;
          goto LABEL_66;
        }

        v235 = v224;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v236 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v237 = (*(*v236 + 80) + 32) & ~*(*v236 + 80);
        v238 = swift_allocObject();
        *(v238 + 16) = v373;
        v239 = (v238 + v237);
        v352 = v236[14];
        *v239 = 1;
        v240 = sub_224DA9688();
        (*(*(v240 - 8) + 56))(v403, 1, 1, v240);
        sub_224A77FD0(v353, v235);
        v352 = v235;
        sub_224DAAFB8();
        v351 = sub_224DA06F0(v238);
        swift_setDeallocating();
        sub_224A3311C(v239, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v350 = sub_224DAA9C8();
        v349 = v241;
        sub_224DAA9D8();
        v348 = sub_224DAA9B8();
        v347 = v242;

        sub_224DAA9D8();
        sub_224DAA9A8();
        v345 = v243;

        v346 = *v380;
        v244 = v405;
        v245 = v431;
        v346(v405, v396, v431);
        (*v379)(v244, 0, 1, v245);
        v246 = v410;
        sub_224DAAEE8();
        (*v378)(v404, v246, v412);
        v346(v391, v394, v245);
        sub_224DAAF78();
        v247 = v408;
        sub_224DAA978();
        v248 = (*v377)(v247, v411);
        if (v248 == v376)
        {
          v249 = v408;
          (*v366)(v408, v411);
          *v413 = *v249;
          v250 = v365;
        }

        else
        {
          v250 = v367;
          if (v248 != v368)
          {

            v303 = sub_224DAB228();
            v304 = sub_224DAF2A8();

            if (os_log_type_enabled(v303, v304))
            {
              v305 = swift_slowAlloc();
              v390 = swift_slowAlloc();
              v434 = v390;
              *v305 = v387;
              v438 = v105;
              sub_224DAAA08();
              sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
              v306 = sub_224DAFD28();
              v308 = sub_224A33F74(v306, v307, &v434);

              *(v305 + 4) = v308;
              _os_log_impl(&dword_224A2F000, v303, v304, "Failed to migrate configuration %{private}s as its metadata has no destination", v305, 0xCu);
              v309 = v390;
              __swift_destroy_boxed_opaque_existential_1(v390);
              MEMORY[0x22AA5EED0](v309, -1, -1);
              MEMORY[0x22AA5EED0](v305, -1, -1);
            }

            sub_224D15EFC();
            v390 = swift_allocError();
            swift_willThrow();
            sub_224A78024(v353, v352);

            (*v375)(v409, v419);
            (*v374)(v410, v412);
            v93 = v431;
            (*v425)(v394, v431);
            (*v363)(v408, v411);

            goto LABEL_65;
          }
        }

        (*v372)(v413, v250, v420);

        v269 = sub_224DAB228();
        v270 = sub_224DAF2A8();

        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v358 = swift_slowAlloc();
          v434 = v358;
          *v271 = v387;
          v438 = v105;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          v272 = sub_224DAFD28();
          v274 = sub_224A33F74(v272, v273, &v434);

          *(v271 + 4) = v274;
          _os_log_impl(&dword_224A2F000, v269, v270, "Migrating configuration %{private}s", v271, 0xCu);
          v275 = v358;
          __swift_destroy_boxed_opaque_existential_1(v358);
          MEMORY[0x22AA5EED0](v275, -1, -1);
          MEMORY[0x22AA5EED0](v271, -1, -1);
        }

        sub_224A78024(v353, v352);
        (*v374)(v410, v412);
        v276 = *v425;
        (*v425)(v394, v431);
        v277 = v407;
        v278 = v419;
        (*v386)(v407, v409, v419);

        (*(v356 + 8))(v359, v360);
        v279 = *(v422 + 48);
        v280 = v406;
        (*v371)(v406, v277, v278);
        (*v370)(&v280[v279], v413, v420);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v427 = sub_224AD9A18(0, v427[2] + 1, 1, v427);
        }

        v282 = v427[2];
        v281 = v427[3];
        if (v282 >= v281 >> 1)
        {
          v427 = sub_224AD9A18((v281 > 1), v282 + 1, 1, v427);
        }

        (*v369)(v413, v420);
        (*v375)(v407, v419);
        v283 = v431;
        v276(v396, v431);
        v284 = v427;
        v427[2] = v282 + 1;
        v285 = v284 + ((*(v418 + 80) + 32) & ~*(v418 + 80)) + *(v418 + 72) * v282;
        v93 = v283;
        v286 = &v437;
LABEL_108:
        sub_224A44E4C(*(v286 - 32), v285, &qword_27D6F3780, &qword_224DB3D60);
        goto LABEL_51;
      }

      if (v110 == 0xD000000000000016 && v382 == v112 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v203 = sub_224DAB258();
        v204 = __swift_project_value_buffer(v203, qword_281365120);

        v359 = v204;
        v205 = sub_224DAB228();
        v206 = sub_224DAF2A8();

        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          v360 = swift_slowAlloc();
          v434 = v360;
          *v207 = v387;
          v438 = v105;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          LODWORD(v358) = v206;
          v208 = sub_224DAFD28();
          v210 = sub_224A33F74(v208, v209, &v434);

          *(v207 + 4) = v210;
          _os_log_impl(&dword_224A2F000, v205, v358, "Migrating snapshot configuration %{private}s", v207, 0xCu);
          v211 = v360;
          __swift_destroy_boxed_opaque_existential_1(v360);
          MEMORY[0x22AA5EED0](v211, -1, -1);
          MEMORY[0x22AA5EED0](v207, -1, -1);
        }

        v212 = v414;
        v213 = v396;
        v215 = v423[3];
        v214 = v423[4];
        v216 = __swift_project_boxed_opaque_existential_1(v423, v215);
        v358 = &v345;
        MEMORY[0x28223BE20](v216, v216);
        v357 = v218;
        isa = v218[2].isa;
        v360 = (&v345 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
        isa();
        v220 = v390;
        v221 = sub_224D15DAC(v105, v213, v212);
        if (v220)
        {
          v390 = v220;
LABEL_97:
          (v357[1].isa)(v360, v215);

          v254 = v390;
          v255 = v390;
          v256 = sub_224DAB228();
          v257 = sub_224DAF2A8();

          if (os_log_type_enabled(v256, v257))
          {
            v258 = swift_slowAlloc();
            v360 = 0;
            v259 = v258;
            v358 = swift_slowAlloc();
            v359 = swift_slowAlloc();
            v434 = v359;
            *v259 = v384;
            v438 = v105;
            sub_224DAAA08();
            sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
            v357 = v256;
            v260 = sub_224DAFD28();
            v262 = sub_224A33F74(v260, v261, &v434);

            *(v259 + 4) = v262;
            *(v259 + 12) = 2114;
            v263 = v254;
            v264 = _swift_stdlib_bridgeErrorToNSError();
            *(v259 + 14) = v264;
            v265 = v358;
            *v358 = v264;
            v266 = v357;
            _os_log_impl(&dword_224A2F000, v357, v257, "Failed to migrate configuration-snapshot %{private}s: %{public}@", v259, 0x16u);
            sub_224A3311C(v265, &unk_27D6F69F0, &unk_224DB3900);
            MEMORY[0x22AA5EED0](v265, -1, -1);
            v267 = v359;
            __swift_destroy_boxed_opaque_existential_1(v359);
            MEMORY[0x22AA5EED0](v267, -1, -1);
            MEMORY[0x22AA5EED0](v259, -1, -1);

            v93 = v431;
            (*v425)(v396, v431);
            goto LABEL_68;
          }

          v268 = v213;
          v93 = v431;
          (*v425)(v268, v431);
LABEL_70:
          v390 = 0;
          goto LABEL_51;
        }

        v354 = v214;
        v356 = v215;
        v355 = v221;
        v225 = sub_224C91BAC();
        sub_224A3B79C(0, &qword_281350958, 0x277CFA360);
        v226 = v393;
        sub_224DAAE58();
        v390 = 0;
        v109(v392, v226, v431);
        v353 = v225;
        v434 = v225;
        v435 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3810, &unk_224DB4190);
        sub_224A33088(&qword_27D6F3818, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF514);
        sub_224A33088(&qword_27D6F3820, &qword_27D6F3810, &unk_224DB4190, &unk_224DBF4EC);
        v251 = v390;
        v352 = sub_224DAB0A8();
        v354 = v252;
        v390 = v251;
        if (v251)
        {
          (*v425)(v392, v431);

          v253 = &v384;
LABEL_96:

          v213 = v396;
          v215 = v356;
          goto LABEL_97;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v289 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v290 = (*(*v289 + 80) + 32) & ~*(*v289 + 80);
        v291 = swift_allocObject();
        *(v291 + 16) = v373;
        v292 = (v291 + v290);
        v351 = v289[14];
        *v292 = 1;
        v293 = sub_224DA9688();
        (*(*(v293 - 8) + 56))(v403, 1, 1, v293);
        sub_224A77FD0(v352, v354);
        sub_224DAAFB8();
        v347 = sub_224DA06F0(v291);
        swift_setDeallocating();
        sub_224A3311C(v292, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v351 = sub_224DAA9C8();
        v350 = v294;
        sub_224DAA9D8();
        v349 = sub_224DAA9B8();
        v348 = v295;

        sub_224DAA9D8();
        v345 = sub_224DAA9A8();

        v346 = *v380;
        v296 = v405;
        v297 = v431;
        v346(v405, v396, v431);
        (*v379)(v296, 0, 1, v297);
        v298 = v401;
        sub_224DAAEE8();
        (*v378)(v404, v298, v412);
        v346(v391, v392, v297);
        sub_224DAAF78();
        v299 = v399;
        sub_224DAA978();
        v300 = (*v377)(v299, v411);
        if (v300 == v376)
        {
          v301 = v399;
          (*v366)(v399, v411);
          *v402 = *v301;
          v302 = v365;
        }

        else
        {
          v302 = v367;
          if (v300 != v368)
          {

            v326 = sub_224DAB228();
            v327 = sub_224DAF2A8();

            if (os_log_type_enabled(v326, v327))
            {
              v328 = swift_slowAlloc();
              v390 = swift_slowAlloc();
              v434 = v390;
              *v328 = v387;
              v438 = v105;
              sub_224DAAA08();
              sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
              v329 = sub_224DAFD28();
              v331 = sub_224A33F74(v329, v330, &v434);

              *(v328 + 4) = v331;
              _os_log_impl(&dword_224A2F000, v326, v327, "Failed to migrate configuration %{private}s as its metadata has no destination", v328, 0xCu);
              v332 = v390;
              __swift_destroy_boxed_opaque_existential_1(v390);
              MEMORY[0x22AA5EED0](v332, -1, -1);
              MEMORY[0x22AA5EED0](v328, -1, -1);
            }

            sub_224D15EFC();
            v390 = swift_allocError();
            swift_willThrow();
            sub_224A78024(v352, v354);

            (*v375)(v400, v419);
            (*v374)(v401, v412);
            (*v425)(v392, v431);
            (*v363)(v399, v411);
            v253 = &v385;
            goto LABEL_96;
          }
        }

        (*v372)(v402, v302, v420);

        v310 = sub_224DAB228();
        v311 = sub_224DAF2A8();

        if (os_log_type_enabled(v310, v311))
        {
          v312 = swift_slowAlloc();
          v359 = swift_slowAlloc();
          v434 = v359;
          *v312 = v387;
          v438 = v105;
          sub_224DAAA08();
          sub_224D15F70(&qword_27D6F6608, MEMORY[0x277D464E8], MEMORY[0x277D46500]);
          v313 = sub_224DAFD28();
          v315 = sub_224A33F74(v313, v314, &v434);

          *(v312 + 4) = v315;
          _os_log_impl(&dword_224A2F000, v310, v311, "Migrating configuration %{private}s", v312, 0xCu);
          v316 = v359;
          __swift_destroy_boxed_opaque_existential_1(v359);
          MEMORY[0x22AA5EED0](v316, -1, -1);
          MEMORY[0x22AA5EED0](v312, -1, -1);
        }

        sub_224A78024(v352, v354);
        (*v374)(v401, v412);
        v317 = *v425;
        (*v425)(v392, v431);
        v318 = v398;
        v319 = v419;
        (*v386)(v398, v400, v419);

        (v357[1].isa)(v360, v356);
        v320 = *(v422 + 48);
        v321 = v397;
        (*v371)(v397, v318, v319);
        (*v370)(&v321[v320], v402, v420);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v427 = sub_224AD9A18(0, v427[2] + 1, 1, v427);
        }

        v323 = v427[2];
        v322 = v427[3];
        if (v323 >= v322 >> 1)
        {
          v427 = sub_224AD9A18((v322 > 1), v323 + 1, 1, v427);
        }

        (*v369)(v402, v420);
        (*v375)(v398, v419);
        v324 = v431;
        v317(v396, v431);
        v325 = v427;
        v427[2] = v323 + 1;
        v285 = v325 + ((*(v418 + 80) + 32) & ~*(v418 + 80)) + *(v418 + 72) * v323;
        v93 = v324;
        v286 = &v429;
        goto LABEL_108;
      }

      if (v110 == 0xD000000000000010 && v381 == v112 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v227 = sub_224DAB258();
        __swift_project_value_buffer(v227, qword_281365120);
        v228 = sub_224DAB228();
        v229 = sub_224DAF2A8();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          v231 = v229;
          v232 = v228;
          v233 = "Not migrating timeline";
LABEL_90:
          _os_log_impl(&dword_224A2F000, v232, v231, v233, v230, 2u);
          v234 = v230;
LABEL_91:
          MEMORY[0x22AA5EED0](v234, -1, -1);

LABEL_142:

          v93 = v431;
          (*v425)(v396, v431);
          goto LABEL_51;
        }
      }

      else if (v110 == 0xD000000000000010 && v364 == v112 || (sub_224DAFD88() & 1) != 0)
      {

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v287 = sub_224DAB258();
        __swift_project_value_buffer(v287, qword_281365120);
        v228 = sub_224DAB228();
        v288 = sub_224DAF2A8();
        if (os_log_type_enabled(v228, v288))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          v231 = v288;
          v232 = v228;
          v233 = "Not migrating snapshot";
          goto LABEL_90;
        }
      }

      else
      {
        if (v110 == 0xD000000000000013 && v362 == v112)
        {
        }

        else
        {
          v333 = sub_224DAFD88();

          if ((v333 & 1) == 0)
          {
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v336 = sub_224DAB258();
            __swift_project_value_buffer(v336, qword_281365120);

            v337 = sub_224DAB228();
            v338 = sub_224DAF2A8();

            v360 = v337;
            if (os_log_type_enabled(v337, v338))
            {
              v339 = swift_slowAlloc();
              v359 = swift_slowAlloc();
              v434 = v359;
              *v339 = v361;
              sub_224DAA9D8();
              v340 = sub_224DAA9B8();
              v342 = v341;

              v343 = sub_224A33F74(v340, v342, &v434);

              *(v339 + 4) = v343;
              v228 = v360;
              _os_log_impl(&dword_224A2F000, v360, v338, "Cannot migrate record with unknown zone %{public}s", v339, 0xCu);
              v344 = v359;
              __swift_destroy_boxed_opaque_existential_1(v359);
              MEMORY[0x22AA5EED0](v344, -1, -1);
              v234 = v339;
              goto LABEL_91;
            }

LABEL_141:

            goto LABEL_142;
          }
        }

        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        v334 = sub_224DAB258();
        __swift_project_value_buffer(v334, qword_281365120);
        v228 = sub_224DAB228();
        v335 = sub_224DAF2A8();
        if (os_log_type_enabled(v228, v335))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          v231 = v335;
          v232 = v228;
          v233 = "Not migrating placeholder";
          goto LABEL_90;
        }
      }

      goto LABEL_141;
    }

    break;
  }

LABEL_12:
  v102 = v101;
  v103 = v89;
  v98 = v101;
  if (v89)
  {
LABEL_16:
    v104 = (v103 - 1) & v103;
    v105 = *(*(v85 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v103)))));

    if (v105)
    {
      goto LABEL_20;
    }

LABEL_149:
    v85 = v433;
LABEL_148:
    sub_224A3B7E4(v85);
  }

  else
  {
    while (1)
    {
      v98 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v98 >= v99)
      {
        goto LABEL_148;
      }

      v103 = v87[v98];
      ++v102;
      if (v103)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224D12C74()
{
  sub_224DABAA8();
  v0 = sub_224DABA98();

  return v0;
}

uint64_t sub_224D12CC8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6600, &unk_224DC04F0);
  v2 = sub_224DAB188();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_224DB3100;
  (*(v3 + 16))(v5 + v4, a1, v2);
  return v5;
}

void sub_224D12E08()
{
  sub_224DAB9A8();
  sub_224DABA78();

  if (!v0)
  {
    sub_224DAB9D8();
    sub_224DABA88();

    sub_224DAB9E8();
    sub_224DABAB8();
  }
}

uint64_t sub_224D12EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *, uint64_t), void *a8)
{
  v208 = a8;
  v225 = a7;
  v238 = a6;
  v232 = a5;
  v203 = a2;
  v202 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v242 = v188 - v11;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v212 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v12);
  v240 = (v188 - v13);
  v201 = sub_224DAB018();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v14);
  v199 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v196 = v188 - v18;
  v206 = type metadata accessor for ReplicatedExtension(0);
  MEMORY[0x28223BE20](v206, v19);
  v207 = v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_224DAAEA8();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v21);
  v226 = v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_224DA9908();
  v23 = *(v234 - 8);
  v25 = MEMORY[0x28223BE20](v234, v24);
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v216 = v188 - v28;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224, v29);
  v221 = (v188 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6618, &qword_224DC0500);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v222 = v188 - v33;
  v218 = sub_224DAC6F8();
  v217 = *(v218 - 8);
  MEMORY[0x28223BE20](v218, v34);
  v213 = v188 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6620, &qword_224DC0508);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  v230 = v188 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v229 = (v188 - v41);
  v42 = sub_224DAAF28();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_224DAAF48();
  v231 = *(v233 - 8);
  v47 = MEMORY[0x28223BE20](v233, v46);
  v194 = v188 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v204 = v188 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v54 = v188 - v53;
  v236 = sub_224DACE38();
  v237 = *(v236 - 8);
  v56 = MEMORY[0x28223BE20](v236, v55);
  v195 = (v188 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = MEMORY[0x28223BE20](v56, v58);
  v205 = (v188 - v60);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v219 = (v188 - v63);
  v65 = MEMORY[0x28223BE20](v62, v64);
  v210 = v188 - v66;
  v68 = MEMORY[0x28223BE20](v65, v67);
  v211 = (v188 - v69);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v220 = v188 - v72;
  MEMORY[0x28223BE20](v71, v73);
  v235 = v188 - v74;
  v228 = sub_224DAA9C8();
  v227 = v75;
  sub_224DAA9D8();
  sub_224DAA9B8();

  v198 = a3;
  sub_224DAA9D8();
  sub_224DAA9A8();

  v76 = v23;
  v78 = v23 + 16;
  v77 = *(v23 + 16);
  v79 = v234;
  v193 = v77;
  v77(v45, v232, v234);
  v209 = v76;
  v80 = *(v76 + 56);
  v192 = v76 + 56;
  v191 = v80;
  v80(v45, 0, 1, v79);
  v81 = v237;
  v82 = v229;
  v83 = v236;
  v228 = v45;
  v84 = v230;
  sub_224DAAEE8();
  v243 = v54;
  v85 = v239;
  sub_224AFD984(sub_224D15F50, v238, v82);
  sub_224A3796C(v82, v84, &qword_27D6F6620, &qword_224DC0508);
  if ((*(v81 + 48))(v84, 1, v83) == 1)
  {
    sub_224A3311C(v84, &qword_27D6F6620, &qword_224DC0508);
    sub_224D15EFC();
    swift_allocError();
    swift_willThrow();
    sub_224A3311C(v82, &qword_27D6F6620, &qword_224DC0508);
    return (*(v231 + 8))(v54, v233);
  }

  else
  {
    v239 = v85;
    v188[1] = v78;
    sub_224A3311C(v82, &qword_27D6F6620, &qword_224DC0508);
    v87 = v235;
    (*(v81 + 32))(v235, v84, v83);
    v88 = v231 + 8;
    v89 = *(v231 + 8);
    v89(v54, v233);
    v90 = v87;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v91 = sub_224DAB258();
    v92 = __swift_project_value_buffer(v91, qword_281365120);
    v93 = *(v81 + 16);
    v94 = v220;
    v230 = (v81 + 16);
    v229 = v93;
    v93(v220, v90, v83);
    v227 = v92;
    v95 = sub_224DAB228();
    v96 = sub_224DAF2A8();
    v97 = os_log_type_enabled(v95, v96);
    v190 = v88;
    v189 = v89;
    if (v97)
    {
      v98 = v94;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138477827;
      v101 = sub_224DACDC8();
      v102 = *(v81 + 8);
      v102(v98, v83);
      *(v99 + 4) = v101;
      *v100 = v101;
      _os_log_impl(&dword_224A2F000, v95, v96, "Found extension %{private}@", v99, 0xCu);
      sub_224A3311C(v100, &unk_27D6F69F0, &unk_224DB3900);
      v103 = v100;
      v104 = v102;
      MEMORY[0x22AA5EED0](v103, -1, -1);
      MEMORY[0x22AA5EED0](v99, -1, -1);
    }

    else
    {

      v104 = *(v81 + 8);
      (v104)(v94, v83);
    }

    sub_224DABB98();
    v105 = v235;
    v106 = sub_224DACDC8();
    v107 = v221;
    sub_224DAF528();

    v108 = v222;
    v109 = v239;
    sub_224DABB78();
    v110 = v226;
    if (v109)
    {

      (*(v223 + 8))(v107, v224);
      return (v104)(v105, v236);
    }

    else
    {
      (*(v223 + 8))(v107, v224);

      v111 = v217;
      v112 = v218;
      v113 = (*(v217 + 48))(v108, 1, v218);
      v225 = v104;
      v220 = 0;
      if (v113 != 1)
      {
        v122 = v213;
        (*(v111 + 32))(v213, v108, v112);
        v123 = v111;
        v124 = sub_224DAC6E8();
        v107 = v211;
        v115 = v235;
        v116 = v236;
        v229(v211, v235, v236);

        v125 = sub_224DAB228();
        v126 = sub_224DAF2A8();
        if (!os_log_type_enabled(v125, v126))
        {

          (v104)(v107, v116);
          (*(v123 + 8))(v122, v218);
          goto LABEL_20;
        }

        v104 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v104 = 134349315;
        LOBYTE(v127) = v126;
        if (v124 >> 62)
        {
          goto LABEL_40;
        }

        v128 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_16;
      }

      sub_224A3311C(v108, &qword_27D6F6618, &qword_224DC0500);
      v114 = v210;
      v115 = v235;
      v116 = v236;
      v229(v210, v235, v236);
      v117 = sub_224DAB228();
      v118 = sub_224DAF2A8();
      if (os_log_type_enabled(v117, v118))
      {
        v107 = v104;
        v104 = swift_slowAlloc();
        v119 = v114;
        v120 = swift_slowAlloc();
        *v104 = 138477827;
        v121 = sub_224DACDC8();
        (v107)(v119, v116);
        v110 = v226;
        *(v104 + 4) = v121;
        *v120 = v121;
        _os_log_impl(&dword_224A2F000, v117, v118, "Extension has no metadata; migrating anyway %{private}@", v104, 0xCu);
        sub_224A3311C(v120, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v120, -1, -1);
        MEMORY[0x22AA5EED0](v104, -1, -1);
      }

      else
      {

        (v104)(v114, v116);
      }

      v125 = MEMORY[0x277D84F90];
      v127 = v219;
      while (1)
      {
        sub_224BFF164(v127);
        if (v125 >> 62)
        {
          v124 = sub_224DAF838();
          if (!v124)
          {
LABEL_31:

            goto LABEL_32;
          }
        }

        else
        {
          v124 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v124)
          {
            goto LABEL_31;
          }
        }

        v245 = MEMORY[0x277D84F90];
        sub_224DAF9E8();
        if ((v124 & 0x8000000000000000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_40:
        v128 = sub_224DAF838();
LABEL_16:
        v129 = v213;
        *(v104 + 4) = v128;

        *(v104 + 12) = 2113;
        v130 = sub_224DACDC8();
        v225(v107, v116);
        *(v104 + 14) = v130;
        *v115 = v130;
        _os_log_impl(&dword_224A2F000, v125, v127, "Extension has %{public}ld descriptors %{private}@", v104, 0x16u);
        sub_224A3311C(v115, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v115, -1, -1);
        MEMORY[0x22AA5EED0](v104, -1, -1);

        (*(v217 + 8))(v129, v218);
        v115 = v235;
LABEL_20:
        v127 = v219;
        v110 = v226;
        v125 = v124;
      }

      v131 = sub_224DAF538();
      v132 = 0;
      v133 = v125;
      v238 = v125 & 0xC000000000000001;
      v239 = v131;
      v134 = (v212 + 16);
      v135 = v133;
      v136 = v124;
      do
      {
        if (v238)
        {
          v137 = MEMORY[0x22AA5DCC0](v132);
        }

        else
        {
          v137 = *(v133 + 8 * v132 + 32);
        }

        v138 = v137;
        ++v132;
        [v137 mutableCopy];
        sub_224DAF758();
        swift_unknownObjectRelease();
        sub_224A3B79C(0, &qword_281350910, 0x277CFA2B8);
        swift_dynamicCast();
        v139 = v244;
        v140 = [v138 extensionIdentity];
        v141 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*v134)(v240, &v140[v141], v241);
        v142 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(&v140[v142], v242, &unk_27D6F5060, &qword_224DB5620);
        v143 = sub_224DAF508();

        [v139 setExtensionIdentity_];
        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v133 = v135;
      }

      while (v136 != v132);

      v116 = v236;
      v115 = v235;
      v127 = v219;
      v110 = v226;
LABEL_32:
      sub_224DAE9F8();
      v144 = sub_224DAE9A8();
      MEMORY[0x22AA59200]();
      v145 = v220;
      sub_224DACD18();
      if (v145)
      {
        (*(v214 + 8))(v110, v215);

        v148 = v225;
        v225(v127, v116);
        return v148(v115, v116);
      }

      else
      {
        v146 = sub_224DAE9C8();
        sub_224D0F2A0(v146, v110, &unk_2813509D0, 0x277CFA378);

        v147 = sub_224DAE9D8();
        sub_224D0F2A0(v147, v110, &qword_2813509B8, 0x277CFA210);

        sub_224DAAE88();
        (*(v214 + 8))(v110, v215);
        v149 = v208[4];
        v241 = v208[3];
        v242 = v149;
        v150 = __swift_project_boxed_opaque_existential_1(v208, v241);
        v151 = v127;
        v240 = v150;
        v152 = v205;
        v153 = v229;
        v229(v205, v151, v116);
        v154 = v207;
        v153(v207, v152, v116);
        v155 = sub_224DAE9C8();
        v156 = v206;
        *(v154 + *(v206 + 20)) = v155;
        v157 = sub_224DAE9D8();
        v158 = v237 + 8;
        v225(v152, v116);
        *(v154 + *(v156 + 24)) = v157;
        sub_224D15F70(&qword_281358F80, type metadata accessor for ReplicatedExtension, &unk_224DBD0D4);
        sub_224D15F70(&qword_281358F88, type metadata accessor for ReplicatedExtension, &unk_224DBD0AC);
        v159 = sub_224DAB0A8();
        v220 = 0;
        v242 = v158;
        v161 = v160;
        v162 = v159;
        sub_224D15FD8(v154, type metadata accessor for ReplicatedExtension);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
        v163 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
        v164 = (*(v163 + 80) + 32) & ~*(v163 + 80);
        v165 = swift_allocObject();
        *(v165 + 16) = xmmword_224DB3100;
        *(v165 + v164) = 1;
        v166 = sub_224DA9688();
        (*(*(v166 - 8) + 56))(v196, 1, 1, v166);
        sub_224A77FD0(v162, v161);
        v240 = v162;
        v241 = v161;
        sub_224DAAFB8();
        v239 = sub_224DA06F0(v165);
        swift_setDeallocating();
        sub_224A3311C(v165 + v164, &unk_27D6F6FE0, &unk_224DB9C50);
        swift_deallocClassInstance();
        v238 = sub_224DAA9C8();
        sub_224DAA9D8();
        v237 = sub_224DAA9B8();
        v226 = v167;

        sub_224DAA9D8();
        sub_224DAA9A8();

        v168 = v228;
        v169 = v234;
        v170 = v193;
        v193(v228, v232, v234);
        v191(v168, 0, 1, v169);
        v171 = v204;
        v172 = v236;
        sub_224DAAEE8();
        (*(v231 + 16))(v194, v171, v233);
        v170(v197, v216, v169);
        v173 = v199;
        sub_224DAAF78();
        v174 = v195;
        v229(v195, v235, v172);
        v175 = sub_224DAB228();
        v176 = sub_224DAF288();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          *v177 = 138477827;
          v179 = sub_224DACDC8();
          v180 = v225;
          v225(v174, v236);
          *(v177 + 4) = v179;
          *v178 = v179;
          _os_log_impl(&dword_224A2F000, v175, v176, "Migrating extension %{private}@", v177, 0xCu);
          sub_224A3311C(v178, &unk_27D6F69F0, &unk_224DB3900);
          v181 = v178;
          v172 = v236;
          MEMORY[0x22AA5EED0](v181, -1, -1);
          MEMORY[0x22AA5EED0](v177, -1, -1);

          sub_224A78024(v240, v241);
        }

        else
        {

          sub_224A78024(v240, v241);
          v180 = v225;
          v225(v174, v172);
        }

        v182 = v203;
        v183 = v202;
        v184 = v201;
        v185 = v200;
        v189(v204, v233);
        (*(v209 + 8))(v216, v234);
        v180(v219, v172);
        v180(v235, v172);
        (*(v185 + 32))(v183, v173, v184);
        v186 = *MEMORY[0x277D46560];
        v187 = sub_224DAAC58();
        return (*(*(v187 - 8) + 104))(v182, v186, v187);
      }
    }
  }
}

uint64_t sub_224D14AA0(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_224DAAF28();
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v55 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v54 = v49 - v8;
  v9 = sub_224DAAF48();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v53 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v51, v12);
  v50 = v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v52 = v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v58 = (v49 - v20);
  v62 = sub_224DA9908();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v21);
  v59 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = v49 - v29;
  v31 = a1;
  sub_224A3796C(a1, v49 - v29, &qword_27D6F38A8, &unk_224DB4650);

  sub_224DAA1F8();
  v34 = *(v15 + 8);
  v32 = v15 + 8;
  v33 = v34;
  (v34)(v30, v14);
  v35 = sub_224DAA048();

  if ((v35 & 1) == 0)
  {
LABEL_5:
    LOBYTE(v37) = 0;
    return v37 & 1;
  }

  v49[2] = v31;
  sub_224A3796C(v31, v27, &qword_27D6F38A8, &unk_224DB4650);

  sub_224DAA1F8();
  (v33)(v27, v14);
  sub_224DAA058();
  v37 = v36;

  if (v37)
  {
    v38 = v58;
    sub_224DA9888();

    v37 = v60;
    v39 = v62;
    if ((*(v60 + 48))(v38, 1, v62) != 1)
    {
      (*(v37 + 32))(v59, v38, v39);
      v58 = v33;
      v49[1] = v32;
      v41 = v37;
      sub_224DAA1E8();
      sub_224A33088(&qword_2813519C0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9F98]);
      sub_224A33088(&unk_281351998, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FC0]);
      sub_224A33088(&qword_2813519B8, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA0]);
      sub_224A33088(&qword_2813519B0, &qword_27D6F30E0, &unk_224DB2AD0, MEMORY[0x277CF9FA8]);
      v42 = v52;
      sub_224DAA1D8();
      v43 = sub_224DAAF08();
      v50 = v44;
      v51 = v43;
      v45 = v54;
      v46 = v59;
      v47 = v62;
      (*(v37 + 16))(v54, v59, v62);
      (*(v37 + 56))(v45, 0, 1, v47);
      sub_224DAA218();
      sub_224ACFD88(v45, v55);
      v48 = v53;
      sub_224DAAEE8();
      sub_224D15FD8(v45, MEMORY[0x277D46780]);
      LOBYTE(v37) = MEMORY[0x22AA59240](v48, v61);
      (*(v56 + 8))(v48, v57);
      v58(v42, v14);
      (*(v41 + 8))(v46, v62);
      return v37 & 1;
    }

    sub_224A3311C(v38, &unk_27D6F5630, &unk_224DB34C0);
    goto LABEL_5;
  }

  return v37 & 1;
}

uint64_t sub_224D1519C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAAF28();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAAF48();
  v55 = *(v7 - 8);
  v56 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v52 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v51 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v49 = *(v16 - 8);
  v50 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v46 - v22;
  v24 = sub_224DA9908();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v57 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DACDC8();
  v29 = [v28 isRemote];

  if (v29)
  {
    v47 = a2;
    v48 = v2;
    v30 = sub_224DACDC8();
    swift_beginAccess();

    sub_224DAA058();
    v32 = v31;

    if (v32)
    {
      sub_224DA9888();

      if ((*(v25 + 48))(v23, 1, v24) == 1)
      {
        sub_224A3311C(v23, &unk_27D6F5630, &unk_224DB34C0);
        v33 = 0;
      }

      else
      {
        (*(v25 + 32))(v57, v23, v24);
        v34 = sub_224DACDC8();
        sub_224DAF538();
        v35 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        (*(v49 + 16))(v19, &v34[v35], v50);
        v36 = *MEMORY[0x277CFA130];
        swift_beginAccess();
        sub_224A3796C(&v34[v36], v51, &unk_27D6F5060, &qword_224DB5620);
        v51 = sub_224DAF508();

        v37 = v52;
        sub_224BFF638(0x6F69736E65747865, 0xE90000000000006ELL);
        v38 = sub_224DAAEF8();
        v49 = v39;
        v50 = v38;
        sub_224DAAF08();
        sub_224DAAEC8();
        v40 = v54;
        (*(v25 + 16))(v54, v57, v24);
        (*(v25 + 56))(v40, 0, 1, v24);
        v41 = v53;
        sub_224DAAEE8();
        v33 = MEMORY[0x22AA59240](v41, v47);

        v42 = *(v55 + 8);
        v43 = v41;
        v44 = v56;
        v42(v43, v56);
        v42(v37, v44);
        (*(v25 + 8))(v57, v24);
      }
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_224D1574C()
{
  v1 = OBJC_IVAR____TtC10ChronoCore26ReplicatorMigrationService_clientDescriptor;
  v2 = sub_224DAB188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReplicatorMigrationService(uint64_t a1)
{
  result = qword_281354EC8;
  if (!qword_281354EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D15844(uint64_t a1)
{
  result = sub_224DAB188();
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

uint64_t *sub_224D158E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  v4 = *(v3 - 8);
  v42 = v3;
  v43 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v36 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v39 = &v35 - v15;
  v16 = sub_224DAAF28();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_224DAAF48();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v20);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAA9C8();
  v38 = v23;
  sub_224DAA9D8();
  sub_224DAA9B8();

  sub_224DAA9D8();
  sub_224DAA9A8();

  v24 = sub_224DA9908();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v19, v41, v24);
  (*(v25 + 56))(v19, 0, 1, v24);
  v26 = v42;
  v27 = v40;
  v28 = v39;
  sub_224DAAEE8();
  v47 = v22;
  sub_224AFDB84(sub_224D15FB8, v46, v44, v28);
  sub_224A3796C(v28, v27, &qword_27D6F4930, &unk_224DB8D00);
  if ((*(v43 + 48))(v27, 1, v26) == 1)
  {
    v29 = &qword_27D6F4930;
    sub_224A3311C(v27, &qword_27D6F4930, &unk_224DB8D00);
    sub_224D15EFC();
    swift_allocError();
    swift_willThrow();
    sub_224A3311C(v28, &qword_27D6F4930, &unk_224DB8D00);
  }

  else
  {
    sub_224A3311C(v28, &qword_27D6F4930, &unk_224DB8D00);
    v30 = v36;
    sub_224A44E4C(v27, v36, &qword_27D6F38A8, &unk_224DB4650);
    v31 = v30;
    v32 = v37;
    sub_224A44E4C(v31, v37, &qword_27D6F38A8, &unk_224DB4650);
    v29 = *(v32 + *(v26 + 48));
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
    (*(*(v33 - 8) + 8))(v32, v33);
  }

  (*(v45 + 8))(v22, v48);
  return v29;
}

void *sub_224D15DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[3];
  v6 = a3[4];
  v7 = __swift_project_boxed_opaque_existential_1(a3, v5);
  (*(v6 + 32))(v10, 768, v5, v6);
  if (*(&v11 + 1))
  {
    v12[0] = v10[0];
    v12[1] = v10[1];
    v12[2] = v11;
    v7 = v12;
    v8 = sub_224A86CAC();
    if (v8)
    {
      v7 = sub_224D158E4(a1, a2, v8);
      sub_224A699F0(v12);
    }

    else
    {
      sub_224D15EFC();
      swift_allocError();
      swift_willThrow();
      sub_224A699F0(v12);
    }
  }

  else
  {
    sub_224A3311C(v10, &qword_27D6F50E0, &qword_224DB41A0);
    sub_224D15EFC();
    swift_allocError();
    swift_willThrow();
  }

  return v7;
}

unint64_t sub_224D15EFC()
{
  result = qword_27D6F6610;
  if (!qword_27D6F6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6610);
  }

  return result;
}

uint64_t sub_224D15F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224D15FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_224D1604C()
{
  result = qword_27D6F6628;
  if (!qword_27D6F6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6628);
  }

  return result;
}

uint64_t sub_224D160F0()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E68);
  __swift_project_value_buffer(v0, qword_281364E68);
  return sub_224DAB238();
}

uint64_t sub_224D16170()
{
  v2[3] = &type metadata for FeatureFlags.ThingamajigFeatureFlags;
  v2[4] = sub_224D167B8();
  v0 = sub_224DA9C98();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

uint64_t sub_224D161C0()
{
  sub_224DA9E78();
  sub_224DA9E68();
  v0 = sub_224DA9D78();

  return v0 & 1;
}

void sub_224D16204(char a1)
{
  v2 = v1;
  if (qword_281351508 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E68);

  v5 = sub_224DAB228();
  v6 = sub_224DAF2A8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240448;
    v8 = *(v1 + 56);

    LOBYTE(v8) = v8(v9);

    if (v8)
    {
      goto LABEL_10;
    }

    v10 = [objc_opt_self() sharedConnection];
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = v10;
    v12 = [v10 isiPhoneWidgetsOnMacAllowed];

    if (v12 & 1) != 0 && (v13 = *(v2 + 72), v14 = , LOBYTE(v13) = v13(v14), , (v13))
    {
      v15 = 1;
    }

    else
    {
LABEL_10:
      v15 = 0;
    }

    *(v7 + 4) = v15;

    *(v7 + 8) = 1026;
    *(v7 + 10) = a1 & 1;
    _os_log_impl(&dword_224A2F000, v5, v6, "Remote widgets enabled changed from %{BOOL,public}d to %{BOOL,public}d", v7, 0xEu);
    MEMORY[0x22AA5EED0](v7, -1, -1);
  }

  else
  {
  }

  sub_224DA9E78();
  sub_224DA9E68();
  sub_224DA9D88();

  sub_224DA9E68();
  v16 = *(v2 + 56);

  LOBYTE(v16) = v16(v17);

  if ((v16 & 1) == 0)
  {
    v18 = [objc_opt_self() sharedConnection];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 isiPhoneWidgetsOnMacAllowed];

      if (v20)
      {
        v21 = *(v2 + 72);

        v21(v22);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:

    __break(1u);
    return;
  }

LABEL_16:
  sub_224DA9DF8();
}

void sub_224D164B4()
{
  v1 = v0;
  if (qword_281351508 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E68);

  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    v6 = *(v0 + 56);

    LOBYTE(v6) = v6(v7);

    if (v6)
    {
      goto LABEL_10;
    }

    v8 = [objc_opt_self() sharedConnection];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    v10 = [v8 isiPhoneWidgetsOnMacAllowed];

    if (v10 & 1) != 0 && (v11 = *(v1 + 72), v12 = , LOBYTE(v11) = v11(v12), , (v11))
    {
      v13 = 1;
    }

    else
    {
LABEL_10:
      v13 = 0;
    }

    *(v5 + 4) = v13;

    _os_log_impl(&dword_224A2F000, v3, v4, "Profile Restrictions Changed - Remote Widgets Enabled: %{BOOL,public}d", v5, 8u);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  else
  {
  }

  sub_224DA9E78();
  sub_224DA9E68();
  v14 = *(v1 + 56);

  LOBYTE(v14) = v14(v15);

  if ((v14 & 1) == 0)
  {
    v16 = [objc_opt_self() sharedConnection];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isiPhoneWidgetsOnMacAllowed];

      if (v18)
      {
        v19 = *(v1 + 72);

        v19(v20);
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_20:

    __break(1u);
    return;
  }

LABEL_16:
  sub_224DA9DF8();
}

uint64_t sub_224D16728()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_224D167B8()
{
  result = qword_28135C2F8[0];
  if (!qword_28135C2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135C2F8);
  }

  return result;
}

uint64_t sub_224D1680C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_224DAFD38();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_224DA9518();

  v11 = [v10 debugDescription];
  v12 = sub_224DAEE18();

  return v12;
}

uint64_t sub_224D169F4()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F70);
  __swift_project_value_buffer(v0, qword_281364F70);
  return sub_224DAB238();
}

uint64_t sub_224D16A74()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364D18);
  __swift_project_value_buffer(v0, qword_281364D18);
  if (qword_2813507E0 != -1)
  {
    swift_once();
  }

  v1 = qword_281364CB8;
  return sub_224DAB268();
}

uint64_t sub_224D16C90()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364EF8);
  __swift_project_value_buffer(v0, qword_281364EF8);
  return sub_224DAB238();
}

uint64_t sub_224D16D64()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364FA0);
  __swift_project_value_buffer(v0, qword_281364FA0);
  return sub_224DAB238();
}

uint64_t sub_224D16EC0()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364F40);
  __swift_project_value_buffer(v0, qword_281364F40);
  return sub_224DAB238();
}

uint64_t sub_224D16F80()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F7210);
  __swift_project_value_buffer(v0, qword_27D6F7210);
  return sub_224DAB238();
}

uint64_t sub_224D17000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v31 = a5;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v6 = sub_224DAE938();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAE8B8();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAEB38();
  v29 = *(v15 - 8);
  v30 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v26 - v22;
  sub_224DAF528();
  sub_224DAC3B8();
  (*(v20 + 8))(v23, v19);
  if (v34)
  {
    sub_224A36F98(&v33, v35);
    sub_224CF7F14(v26, v14);
    sub_224A4D188(v27, &v33);
    (*(v7 + 16))(v10, v28, v6);
    sub_224DAEB18();
    sub_224DAEB28();
    sub_224DAEB08();
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v24 = swift_allocObject();
    *(v24 + 16) = v31;
    *(v24 + 24) = v32;

    sub_224DAE2B8();

    (*(v29 + 8))(v18, v30);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    sub_224A4D9D4(&v33);
    sub_224AD1978();
    sub_224CBC42C(0, 0, 0);
    return swift_willThrow();
  }
}

double sub_224D17378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;

  sub_224D17000(a1, a2, a3, a4, sub_224A4D210, v12);

  return result;
}

uint64_t sub_224D17450()
{
  v0 = sub_224DAC388();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v1, 0);
    v2 = v10;
    v3 = v0 + 32;
    do
    {
      sub_224A3317C(v3, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      sub_224DAFD58();
      __swift_destroy_boxed_opaque_existential_1(v9);
      v10 = v2;
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_224A3DFD8((v4 > 1), v5 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v5 + 1;
      v6 = v2 + 16 * v5;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0xE000000000000000;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v9[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A6B84C();
  v7 = sub_224DAEDA8();

  return v7;
}

uint64_t sub_224D175C8()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6630, &unk_224DC06F0);
  return sub_224DAEE28();
}

uint64_t get_enum_tag_for_layout_string_18ReplicatorServices0A15DeviceProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_224D1764C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224D17694(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224D176F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v92 = a2;
  v93 = a1;
  v6 = sub_224DAE7C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_224DAAB88();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v10);
  v73 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAACE8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v72 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6638, qword_224DC07A0);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v84 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v72 - v21;
  v89 = sub_224DA9908();
  v85 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v23);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_224DAAE38();
  v26 = *(v91 - 8);
  v28 = MEMORY[0x28223BE20](v91, v27);
  v86 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v72 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v90 = &v72 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v87 = &v72 - v38;
  sub_224A3796C(v4, &v94, &qword_27D6F4900, &unk_224DB8640);
  if (!v95)
  {
    sub_224A3311C(&v94, &qword_27D6F4900, &unk_224DB8640);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  v77 = v22;
  v78 = v4;
  v79 = v13;
  v80 = v12;
  v81 = a3;
  v82 = v7;
  v83 = v6;
  sub_224A36F98(&v94, v96);
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  result = sub_224DAAC78();
  v40 = result;
  v41 = *(result + 16);
  v43 = v90;
  v42 = v91;
  if (!v41)
  {
LABEL_9:

    v50 = 1;
    v51 = v81;
    v52 = v80;
    v53 = v79;
    v54 = v78;
    v55 = v77;
    v56 = v86;
    v57 = v87;
LABEL_13:
    (*(v26 + 56))(v57, v50, 1, v42);
    sub_224A3796C(v57, v43, &qword_27D6F3320, &unk_224DBD6F0);
    if ((*(v26 + 48))(v43, 1, v42) == 1)
    {
      v58 = &qword_27D6F3320;
      v59 = v43;
      v60 = &unk_224DBD6F0;
      v61 = v57;
    }

    else
    {
      (*(v26 + 32))(v56, v43, v42);
      v62 = sub_224DAAE18();
      MEMORY[0x28223BE20](v62, v63);
      *(&v72 - 2) = v54;
      sub_224AFD958(sub_224D18110, v62, v55);

      v59 = v84;
      sub_224A3796C(v55, v84, &qword_27D6F6638, qword_224DC07A0);
      if ((*(v53 + 48))(v59, 1, v52) != 1)
      {
        v64 = v56;
        v65 = v72;
        (*(v53 + 32))(v72, v59, v52);
        v66 = v73;
        sub_224DAACC8();
        v67 = sub_224DAAB68();
        (*(v74 + 8))(v66, v75);
        (*(v53 + 8))(v65, v52);
        sub_224A3311C(v55, &qword_27D6F6638, qword_224DC07A0);
        (*(v26 + 8))(v64, v91);
        sub_224A3311C(v87, &qword_27D6F3320, &unk_224DBD6F0);
        v68 = v82;
        v69 = MEMORY[0x277CE3CD0];
        if (v67 != 2)
        {
          v69 = MEMORY[0x277CE3CD8];
        }

        if (v67 <= 1)
        {
          v69 = MEMORY[0x277CE3CE0];
        }

        v70 = v76;
        v71 = v83;
        (*(v82 + 104))(v76, *v69, v83);
        (*(v68 + 32))(v51, v70, v71);
        (*(v68 + 56))(v51, 0, 1, v71);
        return __swift_destroy_boxed_opaque_existential_1(v96);
      }

      v58 = &qword_27D6F6638;
      v60 = qword_224DC07A0;
      sub_224A3311C(v55, &qword_27D6F6638, qword_224DC07A0);
      (*(v26 + 8))(v56, v91);
      v61 = v57;
    }

    sub_224A3311C(v61, &qword_27D6F3320, &unk_224DBD6F0);
    sub_224A3311C(v59, v58, v60);
    (*(v82 + 56))(v51, 1, 1, v83);
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v44 = 0;
  v88 = v26 + 16;
  v45 = (v85 + 8);
  while (v44 < *(v40 + 16))
  {
    (*(v26 + 16))(v32, v40 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v44, v42);
    sub_224DAAD98();
    v46 = sub_224DA9898();
    v48 = v47;
    (*v45)(v25, v89);
    if (v46 == v93 && v48 == v92)
    {

LABEL_12:

      v43 = v90;
      v42 = v91;
      v57 = v87;
      (*(v26 + 32))(v87, v32, v91);
      v50 = 0;
      v51 = v81;
      v52 = v80;
      v53 = v79;
      v54 = v78;
      v55 = v77;
      v56 = v86;
      goto LABEL_13;
    }

    v49 = sub_224DAFD88();

    if (v49)
    {
      goto LABEL_12;
    }

    ++v44;
    v42 = v91;
    result = (*(v26 + 8))(v32, v91);
    v43 = v90;
    if (v41 == v44)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D1809C(uint64_t a1, uint64_t a2)
{
  if (sub_224DAACB8() == *(a2 + 40) && v3 == *(a2 + 48))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_224DAFD88();
  }

  return v5 & 1;
}

void sub_224D18130(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_224DA9518();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_224D18194(void *a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener;
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__subscriptions] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients] = v4;
  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__services] = a1;
  v8 = objc_opt_self();

  v9 = sub_224DAEDE8();
  v10 = [v8 serialQueueTargetingSharedWorkloop:v9 withQoS:33];

  *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue] = v10;
  v11 = *&v1[v3];
  *&v1[v3] = 0;

  v29.receiver = v1;
  v29.super_class = type metadata accessor for ActivityRendererServer();
  v12 = objc_msgSendSuper2(&v29, sel_init);
  v24[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224D21494;
  *(v13 + 24) = v24;
  v27 = sub_224A75AA4;
  v28 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  v26 = &block_descriptor_114;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v12;

  v17 = [v15 listenerWithConfigurator_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v16 + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener);
    *(v16 + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener) = v17;

    __swift_project_boxed_opaque_existential_1(a1 + 7, a1[10]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(aBlock, v26);
    v24[3] = sub_224DAD178();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v21 = MEMORY[0x277CBCD90];
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
    sub_224DAB488();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(a1 + 12, a1[15]);
    aBlock[0] = sub_224DAD9F8();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6838, &qword_224DC0840);
    sub_224A33088(&qword_2813510A0, &unk_27D6F6838, &qword_224DC0840, v21);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    aBlock[0] = sub_224BCE258();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F57D8, &qword_224DBBD38);
    sub_224A33088(&unk_281351130, &unk_27D6F57D8, &qword_224DBBD38, v21);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    aBlock[0] = sub_224BCE2D4();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5800, &unk_224DBB470);
    sub_224A33088(&qword_2813510E0, &unk_27D6F5800, &unk_224DBB470, v21);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(a1 + 17, a1[20]);
    aBlock[0] = sub_224BCE414();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6848, &qword_224DC0848);
    sub_224A33088(&qword_281351160, &unk_27D6F6848, &qword_224DC0848, v21);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();
  }
}

id sub_224D1891C(void *a1, uint64_t a2)
{
  sub_224DAA738();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAA6E8();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

void *sub_224D189C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    __swift_project_boxed_opaque_existential_1(a3 + 7, a3[10]);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_224DAD168();
    v11 = __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x28223BE20](v11, v12);
    v13[-2] = v8;
    sub_224D19EFC(sub_224D21538);

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

double sub_224D18B5C(void *a1, uint64_t a2)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v9, v8, v4);
  *(v11 + v10) = a1;
  v12 = a1;
  sub_224D1CC1C(sub_224D21540, v11);

  return result;
}

void sub_224D18CB0(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = sub_224DAB7B8();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v5);
  v50 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_224DAB848();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v8);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  __swift_project_boxed_opaque_existential_1(a3 + 12, a3[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  sub_224DAC1E8();
  *(swift_allocObject() + 16) = xmmword_224DB3100;
  sub_224DAC1B8();
  v12 = sub_224DADA18();

  if ((v12 & 0xC000000000000001) == 0)
  {
    if (*(v12 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:

    return;
  }

  if (!sub_224DAF838())
  {
    goto LABEL_7;
  }

LABEL_4:
  v47 = v12;
  v41 = *&v11[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
  os_unfair_lock_lock(*(v41 + 16));
  v13 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients;
  swift_beginAccess();
  v14 = *&v11[v13];
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for ActivityRendererClient();
    sub_224D20EB0(&qword_27D6F6830, type metadata accessor for ActivityRendererClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v14 = v59;
    v15 = v60;
    v17 = v61;
    v16 = v62;
    v18 = v63;
  }

  else
  {
    v19 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v14 + 56);

    v16 = 0;
  }

  v40[1] = v17;
  v22 = (v17 + 64) >> 6;
  v45 = v58;
  v44 = (v4 + 8);
  v43 = (v7 + 8);
  v46 = v22;
  v23 = v48;
  if (v14 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v16;
    v25 = v18;
    v26 = v16;
    if (!v18)
    {
      break;
    }

LABEL_17:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v14 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_23:

      sub_224A3B7E4(v14);
      os_unfair_lock_unlock(*(v41 + 16));

      return;
    }

    while (1)
    {
      v30 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
      sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
      v55 = v27;
      sub_224A87A80();
      v31 = sub_224DAF1A8();
      v32 = [v30 initWithExtensions_];

      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      v54 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
      v34 = swift_allocObject();
      v34[2] = v28;
      v34[3] = sub_224CCBCD4;
      v34[4] = v33;
      v58[2] = sub_224D21624;
      v58[3] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v58[0] = sub_224A39F40;
      v58[1] = &block_descriptor_145;
      v35 = _Block_copy(aBlock);
      v52 = v32;
      v53 = v28;

      sub_224DAB7E8();
      v56 = MEMORY[0x277D84F90];
      sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v36 = v15;
      v37 = v50;
      v38 = v51;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v23, v37, v35);
      _Block_release(v35);

      v39 = v37;
      v15 = v36;
      v22 = v46;
      (*v44)(v39, v38);
      (*v43)(v23, v49);

      v16 = v26;
      v18 = v55;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v29 = sub_224DAF878();
      if (v29)
      {
        v56 = v29;
        type metadata accessor for ActivityRendererClient();
        swift_dynamicCast();
        v28 = aBlock[0];
        v26 = v16;
        v27 = v18;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      goto LABEL_23;
    }

    v25 = *(v15 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_224D1943C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x28223BE20](Strong, v3);
    sub_224D19EFC(sub_224D214CC);
  }
}

void *sub_224D194DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DABCC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C90, &qword_224DBA440);
    v10 = MEMORY[0x22AA5BB00](v9);
    MEMORY[0x28223BE20](v10, v11);
    *(&v12 - 2) = v6;
    sub_224D19EFC(sub_224D21620);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_224D19634(uint64_t *a1, uint64_t a2)
{
  v48 = sub_224DAB7B8();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v4);
  v47 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DAB848();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v7);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v37 = *(Strong + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock);
    os_unfair_lock_lock(*(v37 + 16));
    v11 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients;
    swift_beginAccess();
    v12 = *&v10[v11];
    v38 = v10;
    if ((v12 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for ActivityRendererClient();
      sub_224D20EB0(&qword_27D6F6830, type metadata accessor for ActivityRendererClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v12 = v54;
      v13 = v55;
      v15 = v56;
      v14 = v57;
      v16 = v58;
    }

    else
    {
      v17 = -1 << *(v12 + 32);
      v13 = v12 + 56;
      v15 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v16 = v19 & *(v12 + 56);

      v14 = 0;
    }

    v36 = v15;
    v20 = (v15 + 64) >> 6;
    v42 = v53;
    v41 = (v3 + 8);
    v40 = (v6 + 8);
    v43 = v12;
    v39 = v13;
    if (v12 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v21 = v14;
      v22 = v16;
      v23 = v14;
      if (!v16)
      {
        break;
      }

LABEL_13:
      v24 = (v22 - 1) & v22;
      v25 = *(*(v12 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v25)
      {
LABEL_19:
        sub_224A3B7E4(v12);
        os_unfair_lock_unlock(*(v37 + 16));

        return;
      }

      while (1)
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v44;
        v50 = *&v25[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
        v28 = swift_allocObject();
        v28[2] = v25;
        v28[3] = sub_224D214C4;
        v28[4] = v27;
        v53[2] = sub_224D21624;
        v53[3] = v28;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v53[0] = sub_224A39F40;
        v53[1] = &block_descriptor_135;
        v29 = _Block_copy(aBlock);
        v49 = v25;

        v30 = v45;
        sub_224DAB7E8();
        v51 = MEMORY[0x277D84F90];
        sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v16 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v31 = v47;
        v32 = v20;
        v33 = v48;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v30, v31, v29);
        _Block_release(v29);
        v12 = v43;

        v34 = v33;
        v20 = v32;
        (*v41)(v31, v34);
        v35 = v30;
        v13 = v39;
        (*v40)(v35, v46);

        v14 = v23;
        if ((v12 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v26 = sub_224DAF878();
        if (v26)
        {
          v51 = v26;
          type metadata accessor for ActivityRendererClient();
          swift_dynamicCast();
          v25 = aBlock[0];
          v23 = v14;
          v24 = v16;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_19;
      }

      v22 = *(v13 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id sub_224D19C48()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ActivityRendererServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224D19D90()
{
  v1 = v0;
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364E98);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_224DAA6E8();
    v9 = sub_224A33F74(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_224A2F000, v3, v4, "%{public}s begin listening for connections", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__listener);

  return [v10 activate];
}

void sub_224D19EFC(void (*a1)(id))
{
  v17 = *(v1 + OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock);
  os_unfair_lock_lock(*(v17 + 16));
  v3 = OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock_clients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for ActivityRendererClient();
    sub_224D20EB0(&qword_27D6F6830, type metadata accessor for ActivityRendererClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_224A3B7E4(v4);
      os_unfair_lock_unlock(*(v17 + 16));
      return;
    }

    while (1)
    {
      a1(v16);

      v7 = v14;
      v8 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        type metadata accessor for ActivityRendererClient();
        swift_dynamicCast();
        v16 = v18;
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_224D1A1BC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_224DAA6E8();
  v6 = sub_224DAEDE8();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v8 = sub_224DAA6F8();
  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];

  [v7 setClient_];
  v11 = sub_224DAA708();
  v12 = [v9 protocolForProtocol_];

  [v7 setServer_];
  v13 = sub_224DAA728();
  [a1 setServiceQuality_];

  [a1 setTargetQueue_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v30 = sub_224D21474;
  v31 = v16;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_89_0;
  v17 = _Block_copy(&v26);

  [a1 setActivationHandler_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v30 = sub_224D2147C;
  v31 = v20;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_97;
  v21 = _Block_copy(&v26);

  [a1 setInterruptionHandler_];
  _Block_release(v21);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v30 = sub_224D21484;
  v31 = v24;
  v26 = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_224A3837C;
  v29 = &block_descriptor_105_1;
  v25 = _Block_copy(&v26);

  [a1 setInvalidationHandler_];
  _Block_release(v25);
}

void sub_224D1A5E0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E98);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v23);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono render service connection from %{public}s activated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v22 = v20;
      sub_224D1CC1C(sub_224D2148C, v21);
    }

    else
    {
    }
  }
}

void sub_224D1A864(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E98);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono render service connection from %{public}s interrupted", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  [v5 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224D1B380();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02FA0(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

void sub_224D1AB1C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E98);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono render service connection from %{public}s invalidated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224D1B380();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02FA0(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

uint64_t sub_224D1AE58(void *a1, uint64_t a2)
{
  v27 = a1;
  v3 = sub_224DAA758();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB728();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v30 = sub_224DAE4F8();
  v28 = *(v30 - 8);
  v10 = MEMORY[0x28223BE20](v30, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v29 = &v26 - v14;
  v15 = *(a2 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services);
  sub_224A3317C(v15 + 96, v34);
  __swift_project_boxed_opaque_existential_1(v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6820, &qword_224DC0838);
  sub_224DAC1E8();
  *(swift_allocObject() + 16) = xmmword_224DB3100;
  v16 = v28;
  sub_224DAC1B8();
  sub_224DADA18();

  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_224A3317C(v15 + 56, v34);
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_224DADA68();
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v17 = v29;
  sub_224DAD168();
  sub_224DAE4D8();
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v18 = *(v15 + 160);
  v19 = (v15 + 136);
  v20 = v30;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  (*(v16 + 16))(v12, v17, v20);
  sub_224DAA748();
  sub_224D20EB0(&qword_281351798, MEMORY[0x277D7BBA8], MEMORY[0x277D7BBB0]);
  v31 = v3;
  v21 = sub_224DAED78();
  v23 = v22;
  v24 = sub_224DA96B8();
  [v27 initializeConnection_];
  sub_224A78024(v21, v23);

  (*(v32 + 8))(v6, v31);
  return (*(v16 + 8))(v17, v20);
}

void sub_224D1B380()
{
  v71 = sub_224DAB7B8();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v1);
  v68 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_224DAB848();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v3);
  v66 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v0;
  v76 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__subscriptions;
  v5 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__subscriptions];
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224D20EB0(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v7 = v82;
    v6 = v83;
    v8 = v84;
    v9 = v85;
    v10 = v86;
  }

  else
  {
    v11 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_18:
      sub_224A3B7E4(v7);

      v20 = v72;
      *&v72[v76] = MEMORY[0x277D84FA0];

      v65 = *&v20[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
      os_unfair_lock_lock(*(v65 + 16));
      v21 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
      swift_beginAccess();
      v64 = v21;
      v22 = *&v20[v21];
      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = sub_224DAFA68() | 0x8000000000000000;
      }

      else
      {
        v27 = -1 << *(v22 + 32);
        v24 = ~v27;
        v23 = v22 + 64;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v25 = v29 & *(v22 + 64);
        v26 = v22;
      }

      v63[2] = v22;
      swift_bridgeObjectRetain_n();
      v30 = 0;
      v63[1] = v24;
      *&v31 = 136446210;
      v73 = v31;
      v75 = v23;
      for (i = v26; ; v26 = i)
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          v44 = sub_224DAFB18();
          if (!v44 || (v46 = v45, v77[0] = v44, sub_224DAA6D8(), swift_dynamicCast(), v47 = aBlock[0], v77[0] = v46, type metadata accessor for ActivityRendererSession(0), swift_dynamicCast(), v43 = aBlock[0], j = v30, v40 = v25, !v47))
          {
LABEL_39:
            sub_224A3B7E4(v26);

            v56 = v72;
            *&v72[v64] = MEMORY[0x277D84F98];

            os_unfair_lock_unlock(*(v65 + 16));
            v57 = swift_allocObject();
            *(v57 + 16) = v56;
            v80 = sub_224D21464;
            v81 = v57;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_224A39F40;
            v79 = &block_descriptor_70;
            v58 = _Block_copy(aBlock);
            v59 = v56;
            v60 = v66;
            sub_224DAB7E8();
            v77[0] = MEMORY[0x277D84F90];
            sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
            sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
            v61 = v68;
            v62 = v71;
            sub_224DAF788();
            MEMORY[0x22AA5D760](0, v60, v61, v58);
            _Block_release(v58);
            (*(v70 + 8))(v61, v62);
            (*(v67 + 8))(v60, v69);

            return;
          }
        }

        else
        {
          v37 = v30;
          v38 = v25;
          for (j = v30; !v38; ++v37)
          {
            j = v37 + 1;
            if (__OFADD__(v37, 1))
            {
              goto LABEL_41;
            }

            if (j >= ((v24 + 64) >> 6))
            {
              goto LABEL_39;
            }

            v38 = *(v23 + 8 * j);
          }

          v40 = (v38 - 1) & v38;
          v41 = (j << 9) | (8 * __clz(__rbit64(v38)));
          v42 = *(*(v26 + 48) + v41);
          v43 = *(*(v26 + 56) + v41);

          if (!v42)
          {
            goto LABEL_39;
          }
        }

        if (qword_281351518 != -1)
        {
          swift_once();
        }

        v76 = v40;
        v48 = sub_224DAB258();
        __swift_project_value_buffer(v48, qword_281364E80);

        v49 = sub_224DAB228();
        v50 = sub_224DAF2A8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          aBlock[0] = v52;
          *v51 = v73;
          v77[0] = *(v43 + 16);
          sub_224DAA6D8();
          sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
          v53 = sub_224DAFD28();
          v55 = sub_224A33F74(v53, v54, aBlock);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_224A2F000, v49, v50, "[%{public}s] Invalidated", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x22AA5EED0](v52, -1, -1);
          MEMORY[0x22AA5EED0](v51, -1, -1);
        }

        sub_224A3317C(*(v43 + 24) + 16, aBlock);
        v32 = v79;
        v33 = v80;
        __swift_project_boxed_opaque_existential_1(aBlock, v79);
        v34 = *(v43 + 16);
        v77[3] = sub_224DAA6D8();
        v77[4] = sub_224D20EB0(&qword_2813517D0, MEMORY[0x277D7BB80], &unk_224DB9090);
        v77[0] = v34;
        v35 = *(v33 + 1);
        v36 = *(v35 + 16);

        v36(v77, v32, v35);
        __swift_destroy_boxed_opaque_existential_1(v77);
        __swift_destroy_boxed_opaque_existential_1(aBlock);

        v30 = j;
        v23 = v75;
        v25 = v76;
      }
    }

    while (1)
    {
      sub_224DAB328();

      v9 = v16;
      v10 = v17;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_224DAF878();
      if (v19)
      {
        v77[0] = v19;
        sub_224DAB338();
        swift_dynamicCast();
        v16 = v9;
        v17 = v10;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_224D1BD00(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion;
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion);
  if (v3)
  {
    [v3 invalidate];
  }

  *(a1 + v2) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion) invalidate];
  v5 = *(a1 + v4);
  *(a1 + v4) = 0;

  v6 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer) invalidate];
  v7 = *(a1 + v6);
  *(a1 + v6) = 0;
}

uint64_t sub_224D1BD9C(void *a1, uint64_t a2)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAE4F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  sub_224DAE4D8();
  sub_224D20EB0(&qword_281350C60, MEMORY[0x277CE3AB8], MEMORY[0x277CE3AC0]);
  v14 = sub_224DAED78();
  v16 = v15;
  v17 = sub_224DA96B8();
  [a1 systemEnvironmentDidChange_];
  sub_224A78024(v14, v16);

  return (*(v10 + 8))(v13, v9);
}

void sub_224D1C144(uint64_t a1)
{
  v43 = sub_224DAA8A8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DABCC8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v35 - v12;
  v45 = 0;
  v14 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v14 + 16));
  sub_224D1C7E0(v1, a1, &v45);
  os_unfair_lock_unlock(*(v14 + 16));
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  v16 = __swift_project_value_buffer(v15, qword_281364E98);
  v38 = *(v7 + 16);
  v39 = v7 + 16;
  v38(v13, a1, v6);
  v17 = v1;
  v37 = v16;
  v18 = sub_224DAB228();
  v19 = sub_224DAF278();

  v20 = os_log_type_enabled(v18, v19);
  v40 = v17;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v36 = a1;
    v22 = v21;
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v22 = 136446722;
    *(v22 + 4) = sub_224A33F74(*&v17[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v17[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v44);
    *(v22 + 12) = 2082;
    sub_224D20EB0(&qword_281350EA0, MEMORY[0x277CF9880], MEMORY[0x277CF9898]);
    v23 = v19;
    v24 = sub_224DAFD28();
    v25 = v5;
    v27 = v26;
    (*(v7 + 8))(v13, v6);
    v28 = sub_224A33F74(v24, v27, v44);
    v5 = v25;

    *(v22 + 14) = v28;
    *(v22 + 22) = 1026;
    swift_beginAccess();
    *(v22 + 24) = v45;
    _os_log_impl(&dword_224A2F000, v18, v23, "[%{public}s] Activity reload detected - key[%{public}s]: matchesSession=%{BOOL,public}d", v22, 0x1Cu);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v29, -1, -1);
    v30 = v22;
    a1 = v36;
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  swift_beginAccess();
  if (v45 == 1)
  {
    __swift_project_boxed_opaque_existential_1((*&v40[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 136), *(*&v40[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 160));
    sub_224BD770C(a1);
    v38(v42, a1, v6);
    sub_224DAA898();
    sub_224D20EB0(&unk_281351760, MEMORY[0x277D7BC08], MEMORY[0x277D7BC10]);
    v31 = sub_224DAED78();
    v33 = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v33;
    sub_224A77FD0(v31, v33);
    sub_224D1CC1C(sub_224D21408, v34);

    sub_224A78024(v31, v33);
    (*(v41 + 8))(v5, v43);
  }
}

void sub_224D1C7E0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v38 = a3;
  v49 = a2;
  v48 = sub_224DABCC8();
  v4 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v5);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v8);
  v45 = &v37 - v9;
  v10 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v11 = *(a1 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_224DAFA68();
    v41 = 0;
    v13 = 0;
    v14 = 0;
    v15 = v12 | 0x8000000000000000;
  }

  else
  {
    v16 = -1 << *(v11 + 32);
    v13 = ~v16;
    v17 = *(v11 + 64);
    v41 = v11 + 64;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v14 = v19 & v17;
    v15 = v11;
  }

  v20 = 0;
  v39 = v13;
  v21 = (v13 + 64) >> 6;
  v42 = (v4 + 8);
  v43 = (v7 + 8);
  v44 = v15;
  while ((v15 & 0x8000000000000000) != 0)
  {
    v26 = sub_224DAFB18();
    if (!v26 || (v28 = v27, v50 = v26, sub_224DAA6D8(), swift_dynamicCast(), v29 = v51, v50 = v28, type metadata accessor for ActivityRendererSession(0), swift_dynamicCast(), v24 = v14, !v29))
    {
LABEL_19:
      sub_224A3B7E4(v15);
      return;
    }

LABEL_17:
    v40 = v14;

    v14 = v24;
    v30 = v21;
    v31 = v45;
    sub_224DAA698();
    v33 = v46;
    v32 = v47;
    MEMORY[0x22AA5ABC0](v46);
    v34 = v31;
    v21 = v30;
    (*v43)(v34, v33);
    v35 = sub_224DABCB8();

    v36 = v32;
    v15 = v44;
    (*v42)(v36, v48);
    if (v35)
    {
      sub_224A3B7E4(v15);
      *v38 = 1;
      return;
    }
  }

  v22 = v20;
  v23 = v14;
  if (v14)
  {
LABEL_13:
    v24 = (v23 - 1) & v23;
    v25 = *(*(v15 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v25)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v21)
    {
      goto LABEL_19;
    }

    v23 = *(v41 + 8 * v20);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_224D1CBA0(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [a1 currentRemoteSubscriptionTypeDidChange_];
}

double sub_224D1CC1C(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DAB7B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB848();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_224D213F4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_51;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_224DAB7E8();
  v20 = MEMORY[0x277D84F90];
  sub_224D20EB0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);

  return result;
}

uint64_t sub_224D1CF00(char *a1, void *a2, uint64_t a3)
{
  if ([*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_connection] remoteTarget])
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    return sub_224A3311C(v10, &qword_27D6F4760, &unk_224DB3680);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F67B0, &qword_224DC0830);
  result = swift_dynamicCast();
  if (result)
  {

    swift_unknownObjectRetain();
    sub_224D1FD50(a1, a2, a3, v7);

    return swift_unknownObjectRelease_n();
  }

  return result;
}

void sub_224D1D01C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364E98);
    v8 = v6;
    v9 = a3;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v12 = 136446466;
      v15 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier];
      v16 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8];

      v17 = sub_224A33F74(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v9;
      v18 = v9;
      _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s] Runtime timer for target=%{public}@ expired.", v12, 0x16u);
      sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    [a1 invalidate];
    v19 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer;
    v20 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer];
    if (v20)
    {
      sub_224A3B79C(0, &qword_281350978, 0x277CF0BD8);
      v21 = a1;
      v22 = v20;
      v23 = sub_224DAF6A8();

      if (v23)
      {
        v24 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion;
        [*&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion] invalidate];
        v25 = *&v8[v24];
        *&v8[v24] = 0;

        v26 = *&v8[v19];
        *&v8[v19] = 0;

        v8 = v26;
      }
    }
  }
}

id sub_224D1D2E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRendererClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224D1D430(uint64_t a1, char *a2, uint64_t a3)
{
  v106 = a3;
  v5 = sub_224DABCC8();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v98 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v8);
  v10 = &v92 - v9;
  v11 = sub_224DAA7A8();
  v99 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DA9F08();
  v101 = *(v15 - 8);
  v102 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v100 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v92 - v20;
  v105 = a1;
  v22 = sub_224DAA768();
  v23 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v24 = a2;
  v25 = *&a2[v23];

  v26 = sub_224D24360(v22, v25);

  if (v26)
  {

    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v27 = sub_224DAB258();
    __swift_project_value_buffer(v27, qword_281364E98);

    v28 = v24;
    v29 = sub_224DAB228();
    v30 = sub_224DAF288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v108[0] = v32;
      *v31 = 136446466;
      *(v31 + 4) = sub_224A33F74(*&v28[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v28[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v108);
      *(v31 + 12) = 2082;
      v108[5] = v22;
      sub_224DAA6D8();
      sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
      v33 = sub_224DAFD28();
      v35 = sub_224A33F74(v33, v34, v108);

      *(v31 + 14) = v35;
      _os_log_impl(&dword_224A2F000, v29, v30, "[%{public}s] Error subscribing to session: Cannot stomp an existing session: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v32, -1, -1);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    v36 = v106;
    v37 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v38 = sub_224DAEDE8();
    v39 = [v37 initWithDomain:v38 code:23 userInfo:0];

    v40 = sub_224DA9518();
    (v36)[2](v36, 0, v40);

    goto LABEL_24;
  }

  v93 = v10;
  v94 = v14;
  v95 = v11;
  v41 = v24;
  v42 = *&v24[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services];
  type metadata accessor for ActivityRendererSession(0);
  swift_allocObject();

  v92 = v42;
  v44 = sub_224BA5F64(v43, v22);
  sub_224DAA778();
  v45 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  swift_beginAccess();
  v47 = v100;
  v46 = v101;
  v48 = v102;
  (*(v101 + 16))(v100, &v44[v45], v102);
  swift_beginAccess();
  (*(v46 + 24))(&v44[v45], v21, v48);
  swift_endAccess();
  sub_224BA5B18(v47);
  v49 = *(v46 + 8);
  v49(v47, v48);
  v49(v21, v48);
  swift_beginAccess();
  v50 = *&v41[v23];
  if ((v50 & 0xC000000000000001) != 0)
  {
    if (v50 < 0)
    {
      v51 = *&v41[v23];
    }

    else
    {
      v51 = v50 & 0xFFFFFFFFFFFFFF8;
    }

    v52 = sub_224DAF838();
    v54 = v103;
    v53 = v104;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    *&v41[v23] = sub_224D2D4FC(v51, v52 + 1);
  }

  else
  {

    v54 = v103;
    v53 = v104;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109 = *&v41[v23];
  sub_224B23428(v44, v22, isUniquelyReferenced_nonNull_native);
  *&v41[v23] = v109;

  swift_endAccess();
  sub_224A3317C(v92 + 136, v108);
  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  v56 = v22;
  v57 = v93;
  v104 = v56;
  sub_224DAA698();
  v58 = v98;
  v59 = v97;
  MEMORY[0x22AA5ABC0](v97);
  (*(v96 + 8))(v57, v59);
  sub_224BD770C(v58);
  (*(v54 + 1))(v58, v53);
  v60 = v94;
  sub_224DAA798();
  __swift_destroy_boxed_opaque_existential_1(v108);
  sub_224D20EB0(&qword_281351788, MEMORY[0x277D7BBC8], MEMORY[0x277D7BBD0]);
  v61 = v95;
  v62 = v107;
  v63 = sub_224DAED78();
  v47 = v62;
  if (v62)
  {
    (*(v99 + 8))(v60, v61);
    if (qword_281351520 == -1)
    {
LABEL_16:
      v65 = sub_224DAB258();
      __swift_project_value_buffer(v65, qword_281364E98);
      v66 = v41;
      v67 = v47;
      v68 = sub_224DAB228();
      v69 = sub_224DAF288();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v108[0] = v72;
        *v70 = 136446466;
        *(v70 + 4) = sub_224A33F74(*&v66[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v66[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v108);
        *(v70 + 12) = 2114;
        v73 = v47;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 14) = v74;
        *v71 = v74;
        _os_log_impl(&dword_224A2F000, v68, v69, "[%{public}s] Error subscribing to session: %{public}@", v70, 0x16u);
        sub_224A3311C(v71, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v71, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x22AA5EED0](v72, -1, -1);
        MEMORY[0x22AA5EED0](v70, -1, -1);
      }

      v36 = v106;
      v75 = v47;
      v76 = sub_224DA9518();
      (v36)[2](v36, 0, v76);

      goto LABEL_24;
    }

LABEL_26:
    swift_once();
    goto LABEL_16;
  }

  v77 = v63;
  v78 = v64;
  v103 = v44;
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v79 = sub_224DAB258();
  __swift_project_value_buffer(v79, qword_281364E98);
  v80 = v41;

  v81 = sub_224DAB228();
  v82 = sub_224DAF2A8();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v108[0] = v84;
    *v83 = 136446466;
    *(v83 + 4) = sub_224A33F74(*&v80[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v80[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v108);
    *(v83 + 12) = 2082;
    v109 = sub_224DAA768();
    sub_224DAA6D8();
    v107 = 0;
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v85 = sub_224DAFD28();
    v87 = v86;

    v88 = sub_224A33F74(v85, v87, v108);

    *(v83 + 14) = v88;
    _os_log_impl(&dword_224A2F000, v81, v82, "[%{public}s] Successfully subscribed to session: %{public}s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v84, -1, -1);
    v89 = v83;
    v60 = v94;
    MEMORY[0x22AA5EED0](v89, -1, -1);
  }

  v90 = v99;
  sub_224A77FD0(v77, v78);
  v91 = sub_224DA96B8();
  v36 = v106;
  (*(v106 + 16))(v106, v91, 0);

  sub_224A78024(v77, v78);
  sub_224A78024(v77, v78);

  (*(v90 + 8))(v60, v95);
LABEL_24:
  _Block_release(v36);
}

void sub_224D1E14C(uint64_t a1, void *a2)
{
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364E98);
  v5 = a2;

  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_224A33F74(*&v5[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v5[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v17);
    *(v8 + 12) = 2082;
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v10 = sub_224DAFD28();
    v12 = sub_224A33F74(v10, v11, v17);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_224A2F000, v6, v7, "[%{public}s] Unsubscribe from %{public}s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  v13 = *&v5[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v15 = *&v5[v14];

  v16 = sub_224D24360(a1, v15);

  if (v16)
  {
    sub_224BA75AC();
  }

  swift_beginAccess();
  sub_224B0E6B4(a1);
  swift_endAccess();

  os_unfair_lock_unlock(*(v13 + 16));
}

uint64_t sub_224D1E4A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-1] - v6;
  BSDispatchQueueAssert();
  sub_224A3317C(*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services) + 96, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);

  sub_224DA9FF8();
  sub_224DACA78();
  (*(v4 + 8))(v7, v3);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_224D1E684(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 unsignedIntegerValue];
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v6 = sub_224DAB258();
  __swift_project_value_buffer(v6, qword_281364E98);
  v7 = a3;

  v8 = sub_224DAB228();
  v9 = sub_224DAF278();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136446722;
    *(v10 + 4) = sub_224A33F74(*&v7[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v7[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], v24);
    *(v10 + 12) = 2082;
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v12 = sub_224DAFD28();
    v14 = sub_224A33F74(v12, v13, v24);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2082;
    v15 = NSStringFromWRReloadReason();
    v16 = sub_224DAEE18();
    v18 = v17;

    v19 = sub_224A33F74(v16, v18, v24);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_224A2F000, v8, v9, "[%{public}s] Received message to reload %{public}s for reason: %{public}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v11, -1, -1);
    MEMORY[0x22AA5EED0](v10, -1, -1);
  }

  v20 = *&v7[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v20 + 16));
  v21 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v22 = *&v7[v21];

  v23 = sub_224D24360(a1, v22);

  if (v23)
  {
    sub_224BA64D8(v5);
  }

  os_unfair_lock_unlock(*(v20 + 16));
}

void sub_224D1EA44(uint64_t a1, void *a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v48 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6740, &unk_224DC0810);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v43 - v13;
  v15 = sub_224DAA548();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v50 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v49 = v14;
  v19 = sub_224DAB258();
  __swift_project_value_buffer(v19, qword_281364E98);
  v20 = a2;

  v21 = v20;
  v22 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  v24 = os_log_type_enabled(v22, v23);
  v47 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44 = a4;
    v27 = v26;
    v28 = swift_slowAlloc();
    v46 = a5;
    v43 = v28;
    v51 = a1;
    v52[0] = v28;
    *v25 = 138543618;
    *(v25 + 4) = v21;
    *v27 = v21;
    *(v25 + 12) = 2082;
    sub_224DAA6D8();
    v45 = v15;
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v29 = v21;
    v30 = sub_224DAFD28();
    v32 = sub_224A33F74(v30, v31, v52);

    *(v25 + 14) = v32;
    v15 = v45;
    _os_log_impl(&dword_224A2F000, v22, v23, "Received action %{public}@ for interaction %{public}s", v25, 0x16u);
    sub_224A3311C(v27, &unk_27D6F69F0, &unk_224DB3900);
    v33 = v27;
    a4 = v44;
    MEMORY[0x22AA5EED0](v33, -1, -1);
    v34 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    a5 = v46;
    MEMORY[0x22AA5EED0](v34, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  v35 = *(a3 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v35 + 16));
  [a4 integerValue];
  v36 = v49;
  sub_224DAA538();
  v37 = *(v16 + 48);
  v38 = v37(v36, 1, v15);
  v39 = v50;
  if (v38 == 1)
  {
    (*(v16 + 104))(v50, *MEMORY[0x277CFA0A8], v15);
    if (v37(v36, 1, v15) != 1)
    {
      sub_224A3311C(v36, &unk_27D6F6740, &unk_224DC0810);
    }
  }

  else
  {
    (*(v16 + 32))(v50, v36, v15);
  }

  v40 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v41 = *(a3 + v40);

  v42 = sub_224D24360(a1, v41);

  if (v42)
  {
    sub_224BA6950(v47, v39, a5, v48);
  }

  (*(v16 + 8))(v39, v15);
  os_unfair_lock_unlock(*(v35 + 16));
}

uint64_t sub_224D1F058(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6120, qword_224DBE860);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v52 - v8;
  v10 = sub_224DA9F08();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v52 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v52 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v52 - v25;
  [a2 integerValue];
  sub_224DA9EE8();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_224A3311C(v9, &qword_27D6F6120, qword_224DBE860);
  }

  v58 = a3;
  (*(v11 + 32))(v26, v9, v10);
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v57 = v19;
  v28 = sub_224DAB258();
  __swift_project_value_buffer(v28, qword_281364EC8);
  v55 = *(v11 + 16);
  v56 = v11 + 16;
  v55(v23, v26, v10);

  v29 = sub_224DAB228();
  v30 = sub_224DAF278();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v54 = v15;
    v32 = v31;
    v53 = swift_slowAlloc();
    v60[0] = v53;
    *v32 = 136446466;
    v59[0] = a1;
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v33 = sub_224DAFD28();
    v35 = sub_224A33F74(v33, v34, v60);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    v36 = sub_224DA9EC8();
    v38 = v37;
    v52 = a1;
    v39 = *(v11 + 8);
    v39(v23, v10);
    v40 = sub_224A33F74(v36, v38, v60);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_224A2F000, v29, v30, "Received setWidgetTaskPriority for %{public}s: %{public}s", v32, 0x16u);
    v41 = v53;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v41, -1, -1);
    v42 = v32;
    v15 = v54;
    MEMORY[0x22AA5EED0](v42, -1, -1);

    v43 = v52;
  }

  else
  {

    v43 = a1;
    v39 = *(v11 + 8);
    v39(v23, v10);
  }

  v44 = v58;
  v45 = *(v58 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v45 + 16));
  v46 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions;
  swift_beginAccess();
  v47 = *(v44 + v46);

  v48 = sub_224D24360(v43, v47);

  os_unfair_lock_unlock(*(v45 + 16));
  if (v48)
  {
    v49 = v57;
    v50 = v55;
    v55(v57, v26, v10);
    v51 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
    swift_beginAccess();
    v50(v15, v48 + v51, v10);
    swift_beginAccess();
    (*(v11 + 24))(v48 + v51, v49, v10);
    swift_endAccess();
    sub_224BA5B18(v15);

    v39(v15, v10);
    v39(v49, v10);
  }

  return (v39)(v26, v10);
}

void sub_224D1F6D0(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__services];
  v4 = *&v1[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__queue];
  v5 = a1;
  v6 = [v5 remoteProcess];
  v7 = type metadata accessor for ActivityRendererClient();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__subscriptions] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock_sessions] = MEMORY[0x277D84F98];
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion] = 0;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer] = 0;
  swift_unknownObjectWeakAssign();
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue] = v4;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_connection] = v5;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] = v3;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v4;

  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v9 + 16) = v12;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock] = v9;
  *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__processHandle] = v6;
  v13 = v6;
  sub_224DAF938();

  aBlock = 0xD000000000000011;
  v46 = 0x8000000224DCEB00;
  LODWORD(v51) = [v13 pid];
  v14 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v14);

  MEMORY[0x22AA5D210](93, 0xE100000000000000);
  v15 = &v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier];
  *v15 = 0xD000000000000011;
  *(v15 + 1) = 0x8000000224DCEB00;
  v52.receiver = v8;
  v52.super_class = v7;
  v16 = objc_msgSendSuper2(&v52, sel_init);
  sub_224A3317C(*&v16[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 256, &aBlock);
  v17 = *__swift_project_boxed_opaque_existential_1(&aBlock, v48);
  v51 = 0;
  v18 = *(v17 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  v19 = *(v18 + 16);
  v20 = v16;
  os_unfair_lock_lock(v19);
  sub_224A6A874(v17, v13, &v51);
  os_unfair_lock_unlock(*(v18 + 16));
  sub_224A6AF54();
  v21 = v51;
  if (v51)
  {

    *(v20 + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_observeProcessStateAssertion) = v21;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);

    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_224D2146C;
    *(v23 + 24) = v22;
    v49 = sub_224A75AA4;
    v50 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v46 = 1107296256;
    v47 = sub_224A37E38;
    v48 = &block_descriptor_79;
    v24 = _Block_copy(&aBlock);
    v25 = v20;
    v26 = v2;

    [v10 configureConnection_];
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v20 = &off_27853F000;
      isEscapingClosureAtFileLocation = [v10 remoteProcess];
      sub_224DAA718();
      v28 = sub_224DAEDE8();

      v29 = [isEscapingClosureAtFileLocation hasEntitlement_];

      if (v29)
      {
        v30 = *&v26[OBJC_IVAR____TtC10ChronoCore22ActivityRendererServer__clientsLock];
        os_unfair_lock_lock(*(v30 + 16));
        swift_beginAccess();
        sub_224ADD098(&v51, v25);
        swift_endAccess();

        os_unfair_lock_unlock(*(v30 + 16));
        v31 = &selRef_activate;
LABEL_9:
        [v10 *v31];

        return;
      }

      if (qword_281351520 == -1)
      {
LABEL_6:
        v32 = sub_224DAB258();
        __swift_project_value_buffer(v32, qword_281364E98);
        v33 = v10;
        v34 = sub_224DAB228();
        v35 = sub_224DAF2A8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock = v44;
          *v36 = 136446466;
          v37 = [v33 v20[393]];
          v38 = v25;
          v39 = [v37 description];

          v40 = sub_224DAEE18();
          v42 = v41;

          v25 = v38;
          v43 = sub_224A33F74(v40, v42, &aBlock);

          *(v36 + 4) = v43;
          *(v36 + 12) = 2082;
          *(v36 + 14) = sub_224A33F74(0x65736C6166, 0xE500000000000000, &aBlock);
          _os_log_impl(&dword_224A2F000, v34, v35, "Chrono render service connection from %{public}s failed to authenticate <entitled: %{public}s>", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v44, -1, -1);
          MEMORY[0x22AA5EED0](v36, -1, -1);
        }

        v31 = &selRef_invalidate;
        goto LABEL_9;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v18 + 16));
  __break(1u);
}

void sub_224D1FD50(char *a1, id a2, uint64_t a3, id a4)
{
  v96 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v85 - v12;
  v14 = OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion;
  if (*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertion])
  {
    goto LABEL_2;
  }

  v87 = v11;
  v88 = a2;
  v15 = __swift_project_boxed_opaque_existential_1((*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 256), *(*&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__services] + 280));
  v16 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__processHandle];
  v17 = *v15;
  v18 = *(*v15 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock);
  os_unfair_lock_lock(*(v18 + 16));
  v19 = [v16 bundleIdentifier];
  v89 = a3;
  if (v19)
  {
    v86 = a1;
    v20 = v19;
    sub_224DAEE18();

    v21 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_runningBundleIdentifiersWithVisibleScenes;
    swift_beginAccess();
    v22 = *(v17 + v21);

    sub_224DA9FF8();
    v23 = sub_224A33924(v13, v22);
    a1 = v86;

    (*(v9 + 8))(v13, v87);
    os_unfair_lock_unlock(*(v18 + 16));
    a2 = v88;
    if (v23)
    {
LABEL_2:
      (a2)(a4);
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v18 + 16));
    a2 = v88;
  }

  v24 = [objc_opt_self() targetWithPid_];
  v25 = sub_224DAEDE8();
  v26 = sub_224DAEDE8();
  v27 = [objc_opt_self() attributeWithDomain:v25 name:v26];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_224DB2780;
  *(v28 + 32) = v27;
  v29 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v30 = v24;
  v31 = v27;
  v32 = sub_224DAEDE8();
  sub_224A3B79C(0, &qword_281350B00, 0x277D46DD8);
  v33 = sub_224DAEFF8();

  v34 = [v29 initWithExplanation:v32 target:v30 attributes:v33];

  aBlock = 0;
  v35 = [v34 acquireWithError_];
  v36 = aBlock;
  if (v35)
  {
    v88 = v31;
    v37 = *&a1[v85];
    *&a1[v85] = v34;
    v38 = v36;
    v39 = v34;

    aBlock = 0;
    v91 = 0xE000000000000000;
    sub_224DAF938();

    aBlock = 0x705B746567726154;
    v91 = 0xEB000000003D6469;
    v40 = [v30 description];
    v41 = sub_224DAEE18();
    v43 = v42;

    MEMORY[0x22AA5D210](v41, v43);

    MEMORY[0x22AA5D210](0xD000000000000018, 0x8000000224DCDAB0);
    v44 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
    v45 = sub_224DAEDE8();

    v46 = [v44 initWithIdentifier_];

    v47 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue];
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v30;
    v94 = sub_224D21400;
    v95 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_224A3837C;
    v93 = &block_descriptor_61_0;
    v50 = _Block_copy(&aBlock);
    v51 = v30;

    [v46 scheduleWithFireInterval:v47 leewayInterval:v50 queue:10.0 handler:1.0];
    _Block_release(v50);
    v52 = *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer];
    *&a1[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue_runningAssertionExpirationTimer] = v46;
    v53 = v46;

    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v54 = sub_224DAB258();
    __swift_project_value_buffer(v54, qword_281364E98);
    v55 = v51;
    v56 = a1;
    v57 = sub_224DAB228();
    v58 = sub_224DAF2A8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v87 = v39;
      v60 = a4;
      v61 = v59;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v61 = 136446466;
      *(v61 + 4) = sub_224A33F74(*&v56[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v56[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], &aBlock);
      *(v61 + 12) = 2114;
      *(v61 + 14) = v55;
      *v62 = v55;
      v64 = v55;
      _os_log_impl(&dword_224A2F000, v57, v58, "[%{public}s] Acquired runtime assertion for target: %{public}@", v61, 0x16u);
      sub_224A3311C(v62, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x22AA5EED0](v63, -1, -1);
      v65 = v61;
      a4 = v60;
      v39 = v87;
      MEMORY[0x22AA5EED0](v65, -1, -1);
    }

    (a2)(a4);
  }

  else
  {
    v66 = a1;
    v67 = aBlock;
    v68 = sub_224DA9528();

    swift_willThrow();
    if (qword_281351520 != -1)
    {
      swift_once();
    }

    v69 = sub_224DAB258();
    __swift_project_value_buffer(v69, qword_281364E98);
    v70 = v30;
    v71 = v66;
    v72 = v68;
    v73 = sub_224DAB228();
    v74 = sub_224DAF288();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v87 = a4;
      v76 = v75;
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v88 = v31;
      v79 = v78;
      aBlock = v78;
      *v76 = 136446722;
      *(v76 + 4) = sub_224A33F74(*&v71[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v71[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], &aBlock);
      *(v76 + 12) = 2114;
      *(v76 + 14) = v70;
      *v77 = v70;
      *(v76 + 22) = 2114;
      v80 = v70;
      v81 = v68;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v76 + 24) = v82;
      v77[1] = v82;
      _os_log_impl(&dword_224A2F000, v73, v74, "[%{public}s] Unable to acquire runtime assertion for target: %{public}@ - error: %{public}@", v76, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v77, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v79);
      v83 = v79;
      v31 = v88;
      MEMORY[0x22AA5EED0](v83, -1, -1);
      v84 = v76;
      a4 = v87;
      MEMORY[0x22AA5EED0](v84, -1, -1);
    }

    (a2)(a4);
  }
}

double sub_224D206E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_224DAA6D8();
  sub_224D20EB0(&unk_2813517B0, MEMORY[0x277D7BB80], MEMORY[0x277D7BB98]);
  sub_224DAF198();
  sub_224D1E14C(v9, a7);

  return result;
}

double sub_224D20970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  sub_224DAA6D8();
  sub_224D20EB0(&unk_2813517B0, MEMORY[0x277D7BB80], MEMORY[0x277D7BB98]);
  sub_224DAF198();
  sub_224D1EA44(v14, a7, a8, a9, a10, a11);

  return result;
}

double sub_224D20C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t))
{
  sub_224DAA6D8();
  sub_224D20EB0(&unk_2813517B0, MEMORY[0x277D7BB80], MEMORY[0x277D7BB98]);
  sub_224DAF198();
  a9(v12, a7, a8);

  return result;
}

uint64_t sub_224D20EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_224D20EF8(uint64_t a1, uint64_t a2, char *a3, void *aBlock)
{
  _Block_copy(aBlock);
  BSDispatchQueueAssert();
  sub_224DAA788();
  sub_224D20EB0(&qword_281351790, MEMORY[0x277D7BBB8], MEMORY[0x277D7BBC0]);
  sub_224DAF198();
  v6 = v18;
  if (qword_281351520 != -1)
  {
    swift_once();
  }

  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281364E98);
  v8 = a3;

  v9 = sub_224DAB228();
  v10 = sub_224DAF278();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v11 = 136446466;
    *(v11 + 4) = sub_224A33F74(*&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier], *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__logIdentifier + 8], &v18);
    *(v11 + 12) = 2082;
    sub_224DAA768();
    sub_224DAA6D8();
    sub_224D20EB0(&unk_2813517A0, MEMORY[0x277D7BB80], MEMORY[0x277D7BBA0]);
    v12 = sub_224DAFD28();
    v14 = v13;

    v15 = sub_224A33F74(v12, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_224A2F000, v9, v10, "[%{public}s] Received message to subscribe to %{public}s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v17, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);
  }

  v16 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v16 + 16));
  _Block_copy(aBlock);
  sub_224D1D430(v6, v8, aBlock);
  os_unfair_lock_unlock(*(v16 + 16));

  _Block_release(aBlock);
}

void sub_224D21408(void *a1)
{
  v2 = sub_224DA96B8();
  [a1 contentDidChange_];
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_224D21540(void *a1)
{
  v3 = *(sub_224DAB728() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_224D1BD9C(a1, v4);
}

uint64_t sub_224D21628()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return swift_deallocClassInstance();
}

id sub_224D2169C(void *a1, uint64_t a2)
{
  sub_224DAEBB8();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAEBB8();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

id sub_224D21748()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ControlCenterServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224D21890()
{
  v1 = v0;
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364F28);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_224DAEBB8();
    v9 = sub_224A33F74(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_224A2F000, v3, v4, "%{public}s begin listening for connections", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__listener);

  return [v10 activate];
}

void sub_224D21A74(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364F28);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono ControlCenter connection from %{public}s interrupted", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  [v5 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224D21FD4();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02FF4(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

void sub_224D21D2C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364F28);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono ControlCenter connection from %{public}s invalidated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224D21FD4();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore19ControlCenterServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02FF4(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

void sub_224D21FD4()
{
  v1 = v0;
  BSDispatchQueueAssert();
  v17 = OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__subscriptions);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224D241E4(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v4 = v19;
    v3 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_224A3B7E4(v4);

      *(v1 + v17) = MEMORY[0x277D84FA0];

      return;
    }

    while (1)
    {
      sub_224DAB328();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_224D2224C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlCenterClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_224D22324(uint64_t a1, uint64_t a2)
{
  v5 = sub_224DACB98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - v17;
  BSDispatchQueueAssert();
  if (a2)
  {
    v30 = v6;
    v19 = a2;
  }

  else
  {
    v29 = v5;
    v20 = [*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection) remoteToken];
    v21 = [v20 bundleID];

    if (!v21)
    {
      return;
    }

    v30 = v6;
    a1 = sub_224DAEE18();
    v19 = v22;

    v5 = v29;
  }

  if (sub_224D22728(a1, v19))
  {
    sub_224A38AB0(a1, v19, 1, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
    }

    else
    {
      (*(v15 + 32))(v18, v13, v14);
      sub_224A3317C(*(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services) + 16, v31);
      __swift_project_boxed_opaque_existential_1(v31, v31[3]);
      v23 = swift_allocObject();
      v24 = [objc_opt_self() currentContext];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 remoteProcess];
      }

      else
      {
        v26 = 0;
      }

      v27 = v30;
      v23[2] = v26;
      v23[3] = 0xD00000000000001DLL;
      v23[4] = 0x8000000224DCEC60;
      *v9 = v23;
      (*(v27 + 104))(v9, *MEMORY[0x277CF9B90], v5);
      sub_224C7F024(v18, v9);
      (*(v27 + 8))(v9, v5);
      (*(v15 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_1(v31);
    }
  }

  else
  {
  }
}

uint64_t sub_224D22728(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v29 - v8;
  BSDispatchQueueAssert();
  sub_224A38AB0(a1, a2, 1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_224A3311C(v9, &unk_27D6F5060, &qword_224DB5620);
  }

  else
  {
    v12 = sub_224DA9FE8();
    v14 = v13;
    (*(v11 + 8))(v9, v10);
    LOBYTE(v12) = sub_224D22B64(v12, v14);

    if (v12)
    {
      return 1;
    }
  }

  if (qword_2813515C0 != -1)
  {
    swift_once();
  }

  v16 = sub_224DAB258();
  __swift_project_value_buffer(v16, qword_281364F28);

  v17 = v3;
  v18 = sub_224DAB228();
  v19 = sub_224DAF2A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_224A33F74(a1, a2, &v30);
    *(v20 + 12) = 2082;
    v22 = *&v17[OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection];
    v23 = [v22 remoteToken];
    v24 = [v23 bundleID];

    if (!v24)
    {
      v24 = [v22 description];
    }

    v25 = sub_224DAEE18();
    v27 = v26;

    v28 = sub_224A33F74(v25, v27, &v30);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_224A2F000, v18, v19, "[ControlCenter] Connection error for %{public}s: Not authorized from client: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v21, -1, -1);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_224D22B64(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v50 - v7;
  BSDispatchQueueAssert();
  v9 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection);
  v10 = [v9 remoteToken];
  sub_224DAA318();
  v11 = sub_224DAEDE8();

  v12 = [v10 hasEntitlement_];

  if (v12)
  {
    if (qword_2813515C0 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364F28);
    v14 = sub_224DAB228();
    v15 = sub_224DAF278();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_42;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_224A2F000, v14, v15, "isRequestorAuthorized - ENTITLED", v16, 2u);
    v17 = v16;
LABEL_41:
    MEMORY[0x22AA5EED0](v17, -1, -1);
LABEL_42:

    return 1;
  }

  v18 = [v10 bundleID];
  if (v18)
  {
    v19 = v18;
    v20 = sub_224DAEE18();
    v22 = v21;

    v23 = v20 == a1 && v22 == a2;
    if (v23 || (sub_224DAFD88() & 1) != 0)
    {

      if (qword_2813515C0 != -1)
      {
        swift_once();
      }

      v24 = sub_224DAB258();
      __swift_project_value_buffer(v24, qword_281364F28);

      v14 = sub_224DAB228();
      v25 = sub_224DAF278();

      if (!os_log_type_enabled(v14, v25))
      {
        goto LABEL_42;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_224A33F74(a1, a2, &v51);
      v28 = "isRequestorAuthorized - SOURCE IS THE CONTAINER: %{public}s";
      goto LABEL_40;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  BSDispatchQueueAssert();
  v29 = [v9 remoteProcess];
  v30 = [v29 bundleIdentifier];

  if (!v30)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    goto LABEL_23;
  }

  v31 = sub_224DAEE18();
  v33 = v32;

  sub_224A38AB0(v31, v33, 0, v8);

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v8, 1, v34) == 1)
  {
LABEL_23:
    sub_224A3311C(v8, &unk_27D6F5060, &qword_224DB5620);
    goto LABEL_24;
  }

  v36 = sub_224DA9FE8();
  v38 = v37;
  (*(v35 + 8))(v8, v34);
  if (v36 == a1 && v38 == a2)
  {

LABEL_36:

    if (qword_2813515C0 != -1)
    {
      swift_once();
    }

    v49 = sub_224DAB258();
    __swift_project_value_buffer(v49, qword_281364F28);

    v14 = sub_224DAB228();
    v25 = sub_224DAF278();

    if (!os_log_type_enabled(v14, v25))
    {
      goto LABEL_42;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_224A33F74(a1, a2, &v51);
    v28 = "isRequestorAuthorized - SOURCE IS IN THE CONTAINER BUNDLE: %{public}s";
LABEL_40:
    _os_log_impl(&dword_224A2F000, v14, v25, v28, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x22AA5EED0](v27, -1, -1);
    v17 = v26;
    goto LABEL_41;
  }

  v48 = sub_224DAFD88();

  if (v48)
  {
    goto LABEL_36;
  }

LABEL_24:
  if (qword_281351460 != -1)
  {
    swift_once();
  }

  v40 = sub_224DAB258();
  __swift_project_value_buffer(v40, qword_281364DC0);

  v41 = sub_224DAB228();
  v42 = sub_224DAF278();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v51 = v44;
    *v43 = 136446210;
    if (v22)
    {
      v45 = v20;
    }

    else
    {
      v45 = 7104878;
    }

    if (!v22)
    {
      v22 = 0xE300000000000000;
    }

    v46 = sub_224A33F74(v45, v22, &v51);

    *(v43 + 4) = v46;
    _os_log_impl(&dword_224A2F000, v41, v42, "isRequestorAuthorized - NOT AUTHORIZED: %{public}s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA5EED0](v44, -1, -1);
    MEMORY[0x22AA5EED0](v43, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_224D23260(uint64_t a1, const void *a2)
{
  v4 = sub_224DAE438();
  v145 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAC5E8();
  v9 = *(v8 - 8);
  v146 = v8;
  v147 = v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v148 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v137 = &v131 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v131 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v131 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v136 = &v131 - v26;
  BSDispatchQueueAssert();
  v154 = MEMORY[0x277D84F90];
  BSDispatchQueueAssert();
  v27 = [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__queue_connection) remoteProcess];
  v28 = [v27 bundleIdentifier];

  if (!v28)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
LABEL_20:
    sub_224A3311C(v22, &unk_27D6F5060, &qword_224DB5620);
    v33 = 0;
    v54 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_77;
    }

    goto LABEL_21;
  }

  v144 = v7;
  v29 = sub_224DAEE18();
  v31 = v30;

  sub_224A38AB0(v29, v31, 1, v22);

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    goto LABEL_20;
  }

  v143 = v4;
  v133 = a2;
  v138 = v24;
  v32 = *(v24 + 32);
  v132 = v23;
  v32(v136, v22, v23);
  v135 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_84732AEFC5C87E9DA72C67176FE0A3AA19ControlCenterClient__services);
  sub_224A3317C(v135 + 136, v151);
  __swift_project_boxed_opaque_existential_1(v151, v152);
  v33 = off_283828B60[0];
  v134 = type metadata accessor for PushService();
  v34 = v33(v134, &off_283828B40);
  v149 = sub_224DA270C(MEMORY[0x277D84F90]);
  v142 = *(v34 + 16);
  if (!v142)
  {
LABEL_24:

    __swift_destroy_boxed_opaque_existential_1(v151);
    sub_224A3317C(v135 + 136, v151);
    __swift_project_boxed_opaque_existential_1(v151, v152);
    v58 = off_283828B68(v134, &off_283828B40);
    v148 = sub_224DA28F4(MEMORY[0x277D84F90]);
    v59 = v143;
    v142 = *(v58 + 16);
    if (!v142)
    {
LABEL_40:

      __swift_destroy_boxed_opaque_existential_1(v151);
      sub_224A3317C(v135 + 96, v151);
      v84 = v152;
      v85 = v153;
      __swift_project_boxed_opaque_existential_1(v151, v152);
      v86 = (*(v85 + 24))(768, v84, v85);
      if (!v86)
      {

        __swift_destroy_boxed_opaque_existential_1(v151);
        v33 = 0;
        v54 = MEMORY[0x277D84F90];
        v91 = v138;
        goto LABEL_76;
      }

      v33 = 0;
      v87 = sub_224A7B208(v86);
      MEMORY[0x28223BE20](v87, v88);
      *(&v131 - 2) = v136;
      v4 = sub_224A4ECE8(sub_224C8F404, (&v131 - 4), v89);

      __swift_destroy_boxed_opaque_existential_1(v151);
      if (!(v4 >> 62))
      {
        v90 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
        v91 = v138;
        if (v90)
        {
          v134 = v33;
          v92 = 0;
          v93 = v4 & 0xC000000000000001;
          v143 = v147 + 16;
          v144 = v4 & 0xFFFFFFFFFFFFFF8;
          v141 = (v147 + 8);
          v140 = MEMORY[0x277D84F98];
          v135 = v4;
          v142 = v4 & 0xC000000000000001;
          while (1)
          {
            if (v93)
            {
              v94 = MEMORY[0x22AA5DCC0](v92, v4);
            }

            else
            {
              if (v92 >= *(v144 + 16))
              {
                goto LABEL_88;
              }

              v94 = *(v4 + 8 * v92 + 32);
            }

            v33 = v94;
            v95 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              goto LABEL_85;
            }

            v96 = [v94 controlIdentity];
            MEMORY[0x22AA5D350]();
            if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_224DAF038();
            }

            sub_224DAF078();
            v145 = v154;
            v97 = v149;
            if (v149[2] && (v98 = sub_224B0BD50(v96), (v99 & 1) != 0))
            {
              v100 = v90;
              (*(v147 + 16))(v137, v97[7] + *(v147 + 72) * v98, v146);
              v101 = sub_224DAC588();
              if (!*(v148 + 2))
              {

LABEL_64:

                (*v141)(v137, v146);
                v91 = v138;
                v90 = v100;
                v93 = v142;
                goto LABEL_46;
              }

              v103 = sub_224A3A40C(v101, v102);
              v105 = v104;

              if ((v105 & 1) == 0)
              {
                goto LABEL_64;
              }

              v106 = (*(v148 + 7) + 16 * v103);
              v107 = *v106;
              v108 = v106[1];
              sub_224A77FD0(*v106, v108);
              v139 = v107;
              sub_224A77FD0(v107, v108);
              v109 = v140;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v151[0] = v109;
              v4 = sub_224B0BD50(v96);
              v112 = v109[2];
              v113 = (v111 & 1) == 0;
              v114 = v112 + v113;
              if (__OFADD__(v112, v113))
              {
                goto LABEL_89;
              }

              v115 = v111;
              if (v109[3] >= v114)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_224B29134();
                }
              }

              else
              {
                sub_224B171E8(v114, isUniquelyReferenced_nonNull_native);
                v116 = sub_224B0BD50(v96);
                if ((v115 & 1) != (v117 & 1))
                {
                  goto LABEL_93;
                }

                v4 = v116;
              }

              v90 = v100;
              v118 = v151[0];
              v93 = v142;
              v140 = v151[0];
              if (v115)
              {
                v119 = (*(v151[0] + 56) + 16 * v4);
                v120 = *v119;
                v121 = v119[1];
                v122 = v139;
                *v119 = v139;
                v119[1] = v108;
                sub_224A78024(v120, v121);

                sub_224A78024(v122, v108);
                (*v141)(v137, v146);
              }

              else
              {
                *(v151[0] + 8 * (v4 >> 6) + 64) |= 1 << v4;
                *(v118[6] + 8 * v4) = v96;
                v123 = (v118[7] + 16 * v4);
                v124 = v139;
                *v123 = v139;
                v123[1] = v108;

                sub_224A78024(v124, v108);
                (*v141)(v137, v146);
                v125 = v118[2];
                v46 = __OFADD__(v125, 1);
                v126 = v125 + 1;
                if (v46)
                {
                  __break(1u);
                  goto LABEL_92;
                }

                v118[2] = v126;
              }

              v91 = v138;
              v4 = v135;
            }

            else
            {

              v91 = v138;
            }

LABEL_46:
            ++v92;
            if (v95 == v90)
            {

              v33 = v134;
              v54 = v145;
              goto LABEL_76;
            }
          }
        }

        v54 = MEMORY[0x277D84F90];
LABEL_76:
        (*(v91 + 8))(v136, v132);
        a2 = v133;
        if (v54 >> 62)
        {
LABEL_77:
          if (!sub_224DAF838())
          {
            goto LABEL_78;
          }

          goto LABEL_22;
        }

LABEL_21:
        if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_78:

          goto LABEL_79;
        }

LABEL_22:
        sub_224DAECA8();
        v55 = sub_224DAEC98();
        sub_224DA9508();
        swift_allocObject();
        sub_224DA94F8();
        v151[0] = v55;
        sub_224D241E4(&qword_27D6F6930, MEMORY[0x277CE3F08], MEMORY[0x277CE3F10]);
        v56 = sub_224DA94E8();
        if (!v33)
        {
          v127 = v56;
          v128 = v57;

          v129 = sub_224DA96B8();
LABEL_80:
          (*(a2 + 2))(a2, v129, 0);

          return sub_224AC1D9C(v127, v128);
        }

LABEL_79:
        v129 = 0;
        v127 = 0;
        v128 = 0xF000000000000000;
        goto LABEL_80;
      }

LABEL_90:
      v90 = sub_224DAF838();
      goto LABEL_43;
    }

    v60 = 0;
    v61 = v144;
    v141 = (v58 + ((*(v145 + 80) + 32) & ~*(v145 + 80)));
    v139 = (v145 + 8);
    v140 = (v145 + 16);
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        goto LABEL_82;
      }

      (*(v145 + 16))(v61, v141 + *(v145 + 72) * v60, v59);
      v33 = sub_224DAE418();
      v4 = v65;
      v66 = sub_224DAE428();
      v68 = v67;
      v69 = v148;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v69;
      v72 = sub_224A3A40C(v33, v4);
      v73 = *(v69 + 2);
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_83;
      }

      v76 = v71;
      if (*(v69 + 3) >= v75)
      {
        if (v70)
        {
          if (v71)
          {
            goto LABEL_26;
          }
        }

        else
        {
          sub_224B2A138();
          if (v76)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        sub_224B19128(v75, v70);
        v77 = sub_224A3A40C(v33, v4);
        if ((v76 & 1) != (v78 & 1))
        {
LABEL_92:
          _Block_release(v133);
          sub_224DAFDD8();
          __break(1u);
          goto LABEL_93;
        }

        v72 = v77;
        if (v76)
        {
LABEL_26:

          v148 = v150;
          v62 = (*(v150 + 7) + 16 * v72);
          v63 = *v62;
          v64 = v62[1];
          *v62 = v66;
          v62[1] = v68;
          sub_224A78024(v63, v64);
          v59 = v143;
          v61 = v144;
          (*v139)(v144, v143);
          goto LABEL_27;
        }
      }

      v79 = v150;
      *&v150[8 * (v72 >> 6) + 64] |= 1 << v72;
      v80 = (*(v79 + 6) + 16 * v72);
      *v80 = v33;
      v80[1] = v4;
      v81 = (*(v79 + 7) + 16 * v72);
      *v81 = v66;
      v81[1] = v68;
      v59 = v143;
      v61 = v144;
      (*v139)(v144, v143);
      v82 = *(v79 + 2);
      v46 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v46)
      {
        goto LABEL_86;
      }

      v148 = v79;
      *(v79 + 2) = v83;
LABEL_27:
      if (v142 == ++v60)
      {
        goto LABEL_40;
      }
    }
  }

  v4 = 0;
  v33 = v146;
  v141 = (v34 + ((*(v147 + 80) + 32) & ~*(v147 + 80)));
  v35 = (v147 + 8);
  v139 = (v147 + 40);
  v140 = (v147 + 32);
  while (1)
  {
    if (v4 >= *(v34 + 16))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v36 = *(v147 + 72);
    v37 = *(v147 + 16);
    v37(v18, v141 + v36 * v4, v33);
    v38 = sub_224DAC5D8();
    if (!v38)
    {
      goto LABEL_6;
    }

    v39 = v38;
    v37(v148, v18, v33);
    v40 = v149;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v40;
    v42 = sub_224B0BD50(v39);
    v44 = *(v40 + 2);
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_84;
    }

    v48 = v43;
    if (*(v40 + 3) < v47)
    {
      break;
    }

    if ((v41 & 1) == 0)
    {
      v53 = v42;
      sub_224B2A2BC();
      v42 = v53;
    }

LABEL_16:
    v149 = v150;
    if (v48)
    {
      v33 = v146;
      (*v139)(*(v150 + 7) + v42 * v36, v148, v146);

LABEL_6:
      (*v35)(v18, v33);
      goto LABEL_7;
    }

    *&v150[8 * (v42 >> 6) + 64] |= 1 << v42;
    v50 = v148;
    *(v149[6] + 8 * v42) = v39;
    v33 = v146;
    (*v140)(v149[7] + v42 * v36, v50, v146);
    (*v35)(v18, v33);
    v51 = v149[2];
    v46 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v46)
    {
      goto LABEL_87;
    }

    v149[2] = v52;
LABEL_7:
    if (v142 == ++v4)
    {
      goto LABEL_24;
    }
  }

  sub_224B193E4(v47, v41);
  v42 = sub_224B0BD50(v39);
  if ((v48 & 1) == (v49 & 1))
  {
    goto LABEL_16;
  }

LABEL_93:
  sub_224AB43D8();
  _Block_release(v133);
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D24194(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F3920, &qword_224DB35B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_224D241E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_224D24270(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_224DAFB08();

    if (v4)
    {
      sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_224B0B580(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_224D2438C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(void, __n128))
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v5 = sub_224DAFB08();

    if (v5)
    {
      (a4)(0);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    a3(a1);
    if (v7)
    {
    }
  }

  return 0;
}

void sub_224D24454(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_224DAFA58();
    }

    else
    {
      v3 = sub_224DAF798();
      v4 = *(v1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      v28 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v13 = v32;
        v14 = v33;
        v15 = v34;
        sub_224C16A2C(v31, v32, v33, v34, v1);
        v17 = v16;
        v18 = [v16 description];
        v19 = sub_224DAEE18();
        v21 = v20;

        v22 = v30;
        v35 = v30;
        v24 = *(v30 + 16);
        v23 = *(v30 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_224A3DFD8((v23 > 1), v24 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
        v30 = v22;
        if (v29)
        {
          v1 = v28;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_224DAFA88())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v12 = v5 + 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6940, &qword_224DC0A78);
          v26 = sub_224DAED28();
          sub_224DAFB48();
          v26(v31, 0);
        }

        else
        {
          v1 = v28;
          sub_224D2EAF0(v13, v14, v15, v28);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_224A3E204(v13, v14, v15);
          v32 = v7;
          v33 = v9;
          v34 = v11 & 1;
          v2 = v27;
          v12 = v5 + 1;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_224A3E204(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}