uint64_t sub_23D665654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_23D685C60();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v6 = sub_23D685C70();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_23D685860();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = sub_23D6857D0();
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0788, &qword_23D689740);
  v4[26] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0790, &qword_23D689748);
  v4[27] = v9;
  v4[28] = *(v9 - 8);
  v4[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0798, qword_23D689750);
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();
  v11 = sub_23D685810();
  v4[33] = v11;
  v4[34] = *(v11 - 8);
  v4[35] = swift_task_alloc();
  v12 = sub_23D6857F0();
  v4[36] = v12;
  v4[37] = *(v12 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D665A00, 0, 0);
}

uint64_t sub_23D665A00()
{
  if (sub_23D685A00())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    sub_23D6857E0();
    v3 = swift_task_alloc();
    v0[39] = v3;
    *v3 = v0;
    v3[1] = sub_23D665B90;
    v4 = v0[38];
    v5 = v0[35];

    return MEMORY[0x28212BAD0](v5, v4);
  }
}

uint64_t sub_23D665B90()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_23D666CD4;
  }

  else
  {
    v2 = sub_23D665CA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23D665CA4()
{
  sub_23D685800();
  sub_23D685820();
  v1 = sub_23D667EE4();
  v2 = swift_task_alloc();
  v0[41] = v2;
  *v2 = v0;
  v2[1] = sub_23D665D78;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_23D665D78()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_23D666414;
  }

  else
  {
    v2 = sub_23D665E8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23D665E8C()
{
  v64 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v7 = *(v0 + 280);
    v6 = *(v0 + 288);
    v8 = *(v0 + 264);
    v9 = *(v0 + 272);
    v11 = *(v0 + 248);
    v10 = *(v0 + 256);
    v12 = *(v0 + 240);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v14 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 96);
    sub_23D685D50();
    *(v0 + 64) = xmmword_23D6896C0;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 1;
    v16 = sub_23D667E9C(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_23D685D30();
    sub_23D667E9C(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_23D685C80();
    v17 = *(v14 + 8);
    *(v0 + 368) = v17;
    *(v0 + 376) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v13, v15);
    v18 = swift_task_alloc();
    *(v0 + 384) = v18;
    *v18 = v0;
    v18[1] = sub_23D666A68;
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);

    return MEMORY[0x2822008C8](v20, v0 + 40, v19, v16);
  }

  else
  {
    (*(v3 + 32))(*(v0 + 200), v1, v2);
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 192);
    v22 = *(v0 + 200);
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    v27 = *(v0 + 152);
    v28 = *(v0 + 88);
    v29 = __swift_project_value_buffer(v27, qword_27E2E08B0);
    swift_beginAccess();
    (*(v26 + 16))(v25, v29, v27);
    (*(v24 + 16))(v21, v22, v23);
    v30 = v28;
    v31 = sub_23D685850();
    v32 = sub_23D685A70();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 192);
    v35 = *(v0 + 168);
    v36 = *(v0 + 176);
    v37 = *(v0 + 152);
    v38 = (*(v0 + 160) + 8);
    v39 = (*(v0 + 184) + 8);
    if (v33)
    {
      v62 = *(v0 + 168);
      v40 = *(v0 + 88);
      v61 = (*(v0 + 160) + 8);
      v41 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v41 = 136315394;
      v58 = v36;
      v42 = v40;
      v43 = [v42 description];
      v59 = v37;
      v44 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v46 = v45;

      v47 = sub_23D652534(v44, v46, &v63);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      v48 = sub_23D6857C0();
      v50 = v49;
      v51 = *v39;
      (*v39)(v34, v58);
      v52 = sub_23D652534(v48, v50, &v63);

      *(v41 + 14) = v52;
      _os_log_impl(&dword_23D62D000, v31, v32, "[%s]: Detected Sound Action event: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v60, -1, -1);
      MEMORY[0x23EEE7580](v41, -1, -1);

      (*v61)(v62, v59);
    }

    else
    {

      v51 = *v39;
      (*v39)(v34, v36);
      (*v38)(v35, v37);
    }

    *(v0 + 344) = v51;
    v53 = sub_23D6857C0();
    v55 = v54;
    *(v0 + 352) = v54;
    v56 = swift_task_alloc();
    *(v0 + 360) = v56;
    *v56 = v0;
    v56[1] = sub_23D66688C;

    return sub_23D667064(v53, v55);
  }
}

uint64_t sub_23D666414()
{
  *(v0 + 80) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23D6664A8, 0, 0);
}

uint64_t sub_23D6664A8()
{
  v35 = v0;
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 336);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 152), qword_27E2E0868);
  v9 = v8;
  v10 = v7;
  v11 = sub_23D685850();
  v12 = sub_23D685A70();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 88);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v14 = 136315394;
    v16 = v13;
    v17 = [v16 description];
    v18 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v20 = v19;

    v21 = sub_23D652534(v18, v20, &v34);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2112;
    v22 = v7;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v23;
    *v15 = v23;
    _os_log_impl(&dword_23D62D000, v11, v12, "[%s]: session failed with %@", v14, 0x16u);
    sub_23D654530(v15);
    MEMORY[0x23EEE7580](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23EEE7580](v33, -1, -1);
    MEMORY[0x23EEE7580](v14, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  v26 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 64) = xmmword_23D6896C0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v27 = sub_23D667E9C(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D685D30();
  sub_23D667E9C(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D685C80();
  v28 = *(v25 + 8);
  *(v0 + 368) = v28;
  *(v0 + 376) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v24, v26);
  v29 = swift_task_alloc();
  *(v0 + 384) = v29;
  *v29 = v0;
  v29[1] = sub_23D666A68;
  v31 = *(v0 + 120);
  v30 = *(v0 + 128);

  return MEMORY[0x2822008C8](v31, v0 + 40, v30, v27);
}

uint64_t sub_23D66688C()
{

  return MEMORY[0x2822009F8](sub_23D6669A4, 0, 0);
}

uint64_t sub_23D6669A4()
{
  (*(v0 + 344))(*(v0 + 200), *(v0 + 176));
  v1 = sub_23D667EE4();
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_23D665D78;
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_23D666A68()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    v3 = sub_23D666BC0;
  }

  else
  {
    v5 = *(v2 + 136);
    v4 = *(v2 + 144);
    v6 = *(v2 + 128);
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    (*(v5 + 8))(v4, v6);
    v3 = sub_23D667F48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D666BC0()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23D666CD4()
{
  v29 = v0;
  v1 = *(v0 + 320);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  __swift_project_value_buffer(*(v0 + 152), qword_27E2E0868);
  v3 = v2;
  v4 = v1;
  v5 = sub_23D685850();
  v6 = sub_23D685A70();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 88);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v8 = 136315394;
    v10 = v7;
    v11 = [v10 description];
    v12 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v14 = v13;

    v15 = sub_23D652534(v12, v14, &v28);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v17;
    *v9 = v17;
    _os_log_impl(&dword_23D62D000, v5, v6, "[%s]: session failed with %@", v8, 0x16u);
    sub_23D654530(v9);
    MEMORY[0x23EEE7580](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x23EEE7580](v27, -1, -1);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 64) = xmmword_23D6896C0;
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 1;
  v21 = sub_23D667E9C(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D685D30();
  sub_23D667E9C(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D685C80();
  v22 = *(v19 + 8);
  *(v0 + 368) = v22;
  *(v0 + 376) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v18, v20);
  v23 = swift_task_alloc();
  *(v0 + 384) = v23;
  *v23 = v0;
  v23[1] = sub_23D666A68;
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);

  return MEMORY[0x2822008C8](v25, v0 + 40, v24, v21);
}

uint64_t sub_23D667064(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_23D685860();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D667134, 0, 0);
}

uint64_t sub_23D667134()
{
  v48 = v0;
  v1 = v0[11];
  v2 = v0[12];

  v3 = sub_23D66ACD4(v1, v2);
  if (v3 == 14)
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = __swift_project_value_buffer(v6, qword_27E2E08B0);
    swift_beginAccess();
    (*(v5 + 16))(v4, v7, v6);

    v8 = sub_23D685850();
    v9 = sub_23D685A60();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    if (v10)
    {
      v15 = v0[11];
      v14 = v0[12];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v47 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_23D652534(v15, v14, &v47);
      _os_log_impl(&dword_23D62D000, v8, v9, "no sound action type found for identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x23EEE7580](v17, -1, -1);
      MEMORY[0x23EEE7580](v16, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v18 = v3;
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[15];
    v22 = v0[13];
    v23 = __swift_project_value_buffer(v20, qword_27E2E08B0);
    swift_beginAccess();
    (*(v21 + 16))(v19, v23, v20);
    v24 = v22;
    v25 = sub_23D685850();
    v26 = sub_23D685A70();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[17];
    v29 = v0[14];
    v30 = v0[15];
    if (v27)
    {
      v46 = v0[17];
      v31 = v0[13];
      v32 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v32 = 136315394;
      v33 = v31;
      v34 = [v33 description];
      v35 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v44 = v29;
      v37 = v36;

      v38 = sub_23D652534(v35, v37, &v47);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v18 + 1;
      _os_log_impl(&dword_23D62D000, v25, v26, "[%s]: posting voice trigger event to system: %ld", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x23EEE7580](v45, -1, -1);
      MEMORY[0x23EEE7580](v32, -1, -1);

      (*(v30 + 8))(v46, v44);
    }

    else
    {

      (*(v30 + 8))(v28, v29);
    }

    v39 = v0[13];
    v40 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_delegate;
    swift_beginAccess();
    v41 = *(v39 + v40);
    if (v41)
    {
      [v41 postEventToSystemWithSoundActionEvent_];
    }
  }

  v42 = v0[1];

  return v42();
}

id AXSASecureControllerImplementation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AXSASecureControllerImplementation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_23D6675F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45[-v3];
  v5 = sub_23D685860();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v45[-v10];
  v12 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask;
  if (*&v1[OBJC_IVAR____TtC18AXSoundDetectionUI34AXSASecureControllerImplementation_currentTask])
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_27E2E08B0);
    swift_beginAccess();
    (*(v6 + 16))(v11, v13, v5);
    v14 = v1;
    v15 = sub_23D685850();
    v16 = sub_23D685A70();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v51 = v18;
      *v17 = 136315138;
      v19 = v14;
      v20 = [v19 description];
      v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v50 = v5;
      v22 = v21;
      v24 = v23;

      v25 = sub_23D652534(v22, v24, &v51);

      *(v17 + 4) = v25;
      _os_log_impl(&dword_23D62D000, v15, v16, "[%s]: sound actions is already listening.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x23EEE7580](v18, -1, -1);
      MEMORY[0x23EEE7580](v17, -1, -1);

      return (*(v6 + 8))(v11, v50);
    }

    else
    {

      return (*(v6 + 8))(v11, v5);
    }
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v5, qword_27E2E08B0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v27, v5);
    v28 = v1;
    v29 = sub_23D685850();
    v30 = sub_23D685A70();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v47 = v31;
      v48 = swift_slowAlloc();
      v51 = v48;
      *v31 = 136315138;
      v32 = v28;
      v33 = [v32 description];
      v50 = v5;
      v34 = v33;
      v35 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v49 = v28;
      v36 = v35;
      v46 = v30;
      v38 = v37;

      v39 = sub_23D652534(v36, v38, &v51);

      v40 = v47;
      *(v47 + 1) = v39;
      v28 = v49;
      _os_log_impl(&dword_23D62D000, v29, v46, "[%s]: sound actions will start listening.", v40, 0xCu);
      v41 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EEE7580](v41, -1, -1);
      MEMORY[0x23EEE7580](v40, -1, -1);

      (*(v6 + 8))(v9, v50);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    v42 = sub_23D6859E0();
    (*(*(v42 - 8) + 56))(v4, 1, 1, v42);
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v28;
    v44 = v28;
    *&v1[v12] = sub_23D66FF48(0, 0, v4, &unk_23D689738, v43);
  }
}

uint64_t sub_23D667CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D667DA8;

  return sub_23D665654(a1, v4, v5, v6);
}

uint64_t sub_23D667DA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23D667E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D667EE4()
{
  result = qword_27E2E07B0;
  if (!qword_27E2E07B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E0790, &qword_23D689748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E07B0);
  }

  return result;
}

uint64_t sub_23D668058(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_23D6680B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_23D66821C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldBeListeningForSoundActions];

  return v1;
}

id AXSANSControllerImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *AXSANSControllerImplementation.init()()
{
  v12 = sub_23D685A90();
  v1 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D685A80();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23D6858A0();
  MEMORY[0x28223BE20](v5 - 8);
  *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate] = 0;
  v6 = [objc_allocWithZone(AXSDVoiceTriggerModelManager) initWithError_];
  *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_modelManager] = v6;
  v7 = sub_23D657498();
  v11[0] = "ionsControllerDelegate_>16";
  v11[1] = v7;
  sub_23D685890();
  v14 = MEMORY[0x277D84F90];
  sub_23D66AC50(&unk_27E2E06A0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E07E0, &qword_23D6894B0);
  sub_23D661CB0(&qword_27E2E06B0, &unk_27E2E07E0, &qword_23D6894B0);
  sub_23D685B10();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v12);
  *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue] = sub_23D685AC0();
  v8 = type metadata accessor for AXSANSControllerImplementation();
  v13.receiver = v0;
  v13.super_class = v8;
  v9 = objc_msgSendSuper2(&v13, sel_init);
  [*&v9[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_modelManager] setDelegate_];
  return v9;
}

void sub_23D668610(char *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v73 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - v10;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_27E2E08B0);
  swift_beginAccess();
  v81 = *(v4 + 16);
  v82 = (v4 + 16);
  v81(v11, v12, v3);
  v13 = a1;
  v14 = v1;
  v15 = v13;
  v16 = sub_23D685850();
  v17 = sub_23D685A70();

  LODWORD(v79) = v17;
  v18 = os_log_type_enabled(v16, v17);
  v83 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v78 = v4;
    v20 = v19;
    v75 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v85[0] = v21;
    *v20 = 136315394;
    v22 = v14;
    v74 = v16;
    v23 = v22;
    v24 = [v22 description];
    v25 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v76 = v15;
    v77 = v14;
    v26 = v12;
    v27 = a1;
    v28 = v9;
    v29 = v3;
    v30 = v25;
    v32 = v31;

    v33 = v30;
    v3 = v29;
    v9 = v28;
    a1 = v27;
    v12 = v26;
    v14 = v77;
    v34 = sub_23D652534(v33, v32, v85);
    v15 = v76;

    *(v20 + 4) = v34;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v15;
    v35 = v75;
    *v75 = a1;
    v36 = v15;
    v16 = v74;
    _os_log_impl(&dword_23D62D000, v74, v79, "[%s]: start listening with queue: %@", v20, 0x16u);
    sub_23D654530(v35);
    MEMORY[0x23EEE7580](v35, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23EEE7580](v21, -1, -1);
    v37 = v20;
    v4 = v78;
    MEMORY[0x23EEE7580](v37, -1, -1);
  }

  v38 = *(v4 + 8);
  v38(v83, v3);
  v39 = OBJC_IVAR____TtC18AXSoundDetectionUI34AXSDNSBaseControllerImplementation_listener;
  swift_beginAccess();
  if ([*&v14[v39] containsListenDelegate_] && (objc_msgSend(*&v14[v39], sel_isListening) & 1) != 0)
  {
    v81(v80, v12, v3);
    v40 = v14;
    v41 = sub_23D685850();
    v42 = sub_23D685A70();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v38;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v84 = v45;
      *v44 = 136315138;
      v46 = v40;
      v47 = [v46 description];
      v48 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v83 = v3;
      v50 = v49;

      v51 = sub_23D652534(v48, v50, &v84);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_23D62D000, v41, v42, "[%s]: Sound Actions is already listening. startListening is a no-op.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x23EEE7580](v45, -1, -1);
      MEMORY[0x23EEE7580](v44, -1, -1);

      v43(v80, v83);
    }

    else
    {

      v38(v80, v3);
    }
  }

  else
  {
    v52 = &unk_27E2E0000;
    if (a1)
    {
      v80 = a1;
      v81(v9, v12, v3);
      v53 = v14;
      v54 = v15;
      v55 = sub_23D685850();
      v56 = sub_23D685A70();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v78 = v4;
        v58 = v57;
        v59 = swift_slowAlloc();
        v82 = v9;
        v77 = v59;
        v81 = swift_slowAlloc();
        v84 = v81;
        *v58 = 136315394;
        v60 = v53;
        v61 = v54;
        v62 = [v60 description];
        v63 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v83 = v3;
        v64 = v63;
        v79 = v38;
        v66 = v65;

        v54 = v61;
        v67 = sub_23D652534(v64, v66, &v84);

        *(v58 + 4) = v67;
        v52 = &unk_27E2E0000;
        *(v58 + 12) = 2112;
        *(v58 + 14) = v61;
        v68 = v77;
        *v77 = v80;
        v69 = v61;
        _os_log_impl(&dword_23D62D000, v55, v56, "[%s]: updating dispatch queue to: %@", v58, 0x16u);
        sub_23D654530(v68);
        MEMORY[0x23EEE7580](v68, -1, -1);
        v70 = v81;
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x23EEE7580](v70, -1, -1);
        MEMORY[0x23EEE7580](v58, -1, -1);

        v79(v82, v83);
      }

      else
      {

        v38(v9, v3);
      }

      v71 = v52[254];
      v72 = *&v53[v71];
      *&v53[v71] = v54;
    }

    [*&v14[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_modelManager] setProcessingQueue_];
    sub_23D653BB0(v14, v14);
  }
}

uint64_t sub_23D668D70()
{
  v1 = sub_23D685880();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D6858A0();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D656FB8(v0, v0);
  v7 = *&v0[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_23D66AC1C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  v11 = v0;
  sub_23D685890();
  v16 = MEMORY[0x277D84F90];
  sub_23D66AC50(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D661CB0(&qword_27E2E0440, &unk_27E2E06E0, &unk_23D689130);
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v6, v3, v9);
  _Block_release(v9);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);
}

uint64_t sub_23D66908C()
{

  return swift_unknownObjectRelease();
}

id AXSANSControllerImplementation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXSANSControllerImplementation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AXSANSControllerImplementation.receivedBuffer(_:at:)(AVAudioPCMBuffer _, AVAudioTime *at)
{
  impl = _.super._impl;
  isa = _.super.super.isa;
  v5 = sub_23D685880();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23D6858A0();
  v8 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = isa;
  v12[4] = impl;
  aBlock[4] = sub_23D66AC98;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_6_0;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;
  v16 = isa;
  v17 = impl;
  sub_23D685890();
  v21 = MEMORY[0x277D84F90];
  sub_23D66AC50(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D661CB0(&qword_27E2E0440, &unk_27E2E06E0, &unk_23D689130);
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v10, v7, v13);
  _Block_release(v13);

  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

Swift::Void __swiftcall AXSANSControllerImplementation.listenEngineDidStart(withInputFormat:)(AVAudioFormat_optional *withInputFormat)
{
  v3 = sub_23D685880();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D6858A0();
  v64 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D685860();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  if (withInputFormat)
  {
    v59 = v6;
    v60 = v7;
    v62 = v3;
    v16 = qword_27E2E03E8;
    v17 = withInputFormat;
    if (v16 != -1)
    {
      swift_once();
    }

    v61 = v4;
    v18 = __swift_project_value_buffer(v9, qword_27E2E08B0);
    swift_beginAccess();
    (*(v10 + 16))(v15, v18, v9);
    v19 = v1;
    v20 = sub_23D685850();
    v21 = sub_23D685A70();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      *v22 = 136315138;
      v23 = v19;
      v24 = [v23 description];
      v58 = v9;
      v25 = v24;
      v26 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v57 = v17;
      v27 = v10;
      v28 = v26;
      v30 = v29;

      v31 = sub_23D652534(v28, v30, aBlock);

      *(v22 + 4) = v31;
      _os_log_impl(&dword_23D62D000, v20, v21, "[%s]: listen engine did start", v22, 0xCu);
      v32 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x23EEE7580](v32, -1, -1);
      MEMORY[0x23EEE7580](v22, -1, -1);

      (*(v27 + 8))(v15, v58);
      v17 = v57;
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v47 = *&v19[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_processingQueue];
    v48 = swift_allocObject();
    *(v48 + 16) = v19;
    *(v48 + 24) = v17;
    aBlock[4] = sub_23D66ACB8;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D650AF8;
    aBlock[3] = &block_descriptor_12_0;
    v49 = _Block_copy(aBlock);
    v50 = v17;
    v51 = v19;
    v52 = v47;
    v53 = v63;
    sub_23D685890();
    v65 = MEMORY[0x277D84F90];
    sub_23D66AC50(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
    sub_23D661CB0(&qword_27E2E0440, &unk_27E2E06E0, &unk_23D689130);
    v54 = v59;
    v55 = v62;
    sub_23D685B10();
    MEMORY[0x23EEE6840](0, v53, v54, v49);
    _Block_release(v49);

    (*(v61 + 8))(v54, v55);
    (*(v64 + 8))(v53, v60);
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v9, qword_27E2E08B0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v33, v9);
    v34 = v1;
    v35 = sub_23D685850();
    v36 = sub_23D685A60();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v58 = v9;
      v38 = v37;
      v39 = swift_slowAlloc();
      v64 = v10;
      v40 = v39;
      v67[0] = v39;
      *v38 = 136315138;
      v41 = v34;
      v42 = [v41 description];
      v43 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v45 = v44;

      v46 = sub_23D652534(v43, v45, v67);

      *(v38 + 4) = v46;
      _os_log_impl(&dword_23D62D000, v35, v36, "[%s]: listen engine did not return an audio format - this should NOT happen; bailing. File a radar!", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23EEE7580](v40, -1, -1);
      MEMORY[0x23EEE7580](v38, -1, -1);

      (*(v64 + 8))(v13, v58);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    sub_23D668D70();
  }
}

uint64_t AXSANSControllerImplementation.listenEngineFailedToStartWithError(_:)(void *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v67 - v11;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_27E2E08B0);
  swift_beginAccess();
  v74 = *(v4 + 16);
  v75 = v13;
  v74(v12, v13, v3);
  v14 = v1;
  v15 = a1;
  v16 = v14;
  v17 = sub_23D685850();
  v18 = sub_23D685A60();

  v19 = os_log_type_enabled(v17, v18);
  v76 = v3;
  if (v19)
  {
    v71 = v7;
    v72 = v10;
    v73 = v4;
    v20 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v77 = v69;
    *v20 = 136315394;
    v70 = v16;
    v21 = v16;
    v22 = a1;
    v23 = [v21 description];
    v24 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v26 = v25;

    a1 = v22;
    v27 = sub_23D652534(v24, v26, &v77);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2112;
    if (v22)
    {
      v28 = v22;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = v29;
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    v3 = v76;
    v4 = v73;
    *(v20 + 14) = v29;
    v52 = v68;
    *v68 = v30;
    _os_log_impl(&dword_23D62D000, v17, v18, "[%s]: listen engine failed to start: %@", v20, 0x16u);
    sub_23D654530(v52);
    MEMORY[0x23EEE7580](v52, -1, -1);
    v53 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23EEE7580](v53, -1, -1);
    MEMORY[0x23EEE7580](v20, -1, -1);

    v31 = *(v4 + 8);
    v31(v12, v3);
    v7 = v71;
    v10 = v72;
    v16 = v70;
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else
  {

    v31 = *(v4 + 8);
    v31(v12, v3);
    if (!a1)
    {
LABEL_12:
      v74(v7, v75, v3);
      v54 = v16;
      v55 = sub_23D685850();
      v56 = sub_23D685A60();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v77 = v58;
        *v57 = 136315138;
        v59 = v54;
        v60 = [v59 description];
        v61 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v75 = v31;
        v62 = v61;
        v64 = v63;

        v65 = sub_23D652534(v62, v64, &v77);

        *(v57 + 4) = v65;
        _os_log_impl(&dword_23D62D000, v55, v56, "[%s]: listen engine failed to start.", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x23EEE7580](v58, -1, -1);
        MEMORY[0x23EEE7580](v57, -1, -1);

        v50 = v7;
        return v75(v50, v76);
      }

      v51 = v7;
      return (v31)(v51, v3);
    }
  }

  v74(v10, v75, v3);
  v32 = v16;
  v33 = a1;
  v34 = sub_23D685850();
  v35 = sub_23D685A60();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v73 = v4;
    v38 = v37;
    v39 = swift_slowAlloc();
    v72 = v10;
    v40 = v39;
    v77 = v39;
    *v36 = 136315394;
    v41 = v32;
    v42 = [v41 description];
    v43 = a1;
    v44 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v75 = v31;
    v46 = v45;

    v47 = sub_23D652534(v44, v46, &v77);

    *(v36 + 4) = v47;
    *(v36 + 12) = 2112;
    v48 = v43;
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 14) = v49;
    *v38 = v49;
    _os_log_impl(&dword_23D62D000, v34, v35, "[%s]: listen engine failed to start with error: %@", v36, 0x16u);
    sub_23D654530(v38);
    MEMORY[0x23EEE7580](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x23EEE7580](v40, -1, -1);
    MEMORY[0x23EEE7580](v36, -1, -1);

    v50 = v72;
    return v75(v50, v76);
  }

  v51 = v10;
  return (v31)(v51, v3);
}

uint64_t AXSANSControllerImplementation.receivedError(_:fromDetector:)(void *a1, void *a2)
{
  v5 = sub_23D685860();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27E2E08B0);
  swift_beginAccess();
  (*(v6 + 16))(v8, v9, v5);
  v10 = v2;
  v11 = a2;
  v12 = a1;
  v13 = sub_23D685850();
  v14 = sub_23D685A60();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v15 = 136315650;
    v17 = v10;
    v18 = [v17 description];
    HIDWORD(v30) = v14;
    v19 = v18;
    v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v31 = v6;
    v32 = v5;
    v21 = v20;
    v23 = v22;

    v24 = sub_23D652534(v21, v23, &v34);

    *(v15 + 4) = v24;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = v11;
    *(v15 + 22) = 2112;
    v25 = v11;
    v26 = a1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v27;
    v16[1] = v27;
    _os_log_impl(&dword_23D62D000, v13, BYTE4(v30), "[%s]: received error for sound action: %@. error: %@", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E06F0, &qword_23D6893C0);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v16, -1, -1);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x23EEE7580](v28, -1, -1);
    MEMORY[0x23EEE7580](v15, -1, -1);

    return (*(v31 + 8))(v8, v32);
  }

  else
  {

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t AXSANSControllerImplementation.listeningStoppedWithError(_:)(void *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  if (a1)
  {
    v10 = a1;
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v3, qword_27E2E08B0);
    swift_beginAccess();
    (*(v4 + 16))(v9, v11, v3);
    v12 = a1;
    v13 = v1;
    v14 = sub_23D685850();
    v15 = sub_23D685A60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46 = v4;
      v18 = v17;
      v44 = swift_slowAlloc();
      v47 = v44;
      *v16 = 136315394;
      v19 = v13;
      v20 = [v19 description];
      v45 = v3;
      v21 = v20;
      v22 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v24 = v23;

      v25 = sub_23D652534(v22, v24, &v47);

      *(v16 + 4) = v25;
      *(v16 + 12) = 2112;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v27;
      *v18 = v27;
      _os_log_impl(&dword_23D62D000, v14, v15, "[%s]: listen stopped with error: %@", v16, 0x16u);
      sub_23D654530(v18);
      MEMORY[0x23EEE7580](v18, -1, -1);
      v28 = v44;
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23EEE7580](v28, -1, -1);
      MEMORY[0x23EEE7580](v16, -1, -1);

      return (v46[1])(v9, v45);
    }

    else
    {

      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    if (qword_27E2E03E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v3, qword_27E2E08B0);
    swift_beginAccess();
    (*(v4 + 16))(v7, v30, v3);
    v31 = v1;
    v32 = sub_23D685850();
    v33 = sub_23D685A40();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = v46;
      *v34 = 136315138;
      v35 = v31;
      v36 = [v35 description];
      v37 = v4;
      v38 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v40 = v39;

      v41 = sub_23D652534(v38, v40, &v47);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_23D62D000, v32, v33, "[%s]: listen engine stopped.", v34, 0xCu);
      v42 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23EEE7580](v42, -1, -1);
      MEMORY[0x23EEE7580](v34, -1, -1);

      return (*(v37 + 8))(v7, v3);
    }

    else
    {

      return (*(v4 + 8))(v7, v3);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D66AC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D66ACD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23D685CE0();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

id _s18AXSoundDetectionUI30AXSANSControllerImplementationC19receivedObservation_11forDetectorySo20SNSoundActionsResultC_So20SNDetectSoundRequestCtF_0(void *a1)
{
  v3 = sub_23D685860();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v63 - v8;
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27E2E08B0);
  swift_beginAccess();
  v11 = *(v4 + 16);
  v68 = v4 + 16;
  v69 = v10;
  v67 = v11;
  v11(v9, v10, v3);
  v12 = a1;
  v13 = v1;
  v14 = sub_23D685850();
  v15 = sub_23D685A50();

  v16 = os_log_type_enabled(v14, v15);
  v17 = &selRef_bufferSize;
  v18 = &selRef_bufferSize;
  v66 = v13;
  if (v16)
  {
    v19 = swift_slowAlloc();
    v65 = v3;
    v20 = v19;
    v64 = swift_slowAlloc();
    v71[0] = v64;
    *v20 = 136315650;
    v21 = v13;
    v22 = v7;
    v23 = [v21 description];
    v24 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v70 = v4;
    v25 = v24;
    v27 = v26;

    v7 = v22;
    v17 = &selRef_bufferSize;
    v28 = sub_23D652534(v25, v27, v71);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2080;
    v29 = [v12 name];
    v30 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v32 = v31;

    v33 = v30;
    v18 = &selRef_bufferSize;
    v34 = sub_23D652534(v33, v32, v71);
    v4 = v70;

    *(v20 + 14) = v34;
    *(v20 + 22) = 2048;
    [v12 confidence];
    *(v20 + 24) = v35;
    _os_log_impl(&dword_23D62D000, v14, v15, "[%s]: received sound action: %s with confidence: %f.", v20, 0x20u);
    v36 = v64;
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v36, -1, -1);
    v37 = v20;
    v3 = v65;
    MEMORY[0x23EEE7580](v37, -1, -1);
  }

  v38 = *(v4 + 8);
  v38(v9, v3);
  result = [v12 v18[16]];
  if (v40 >= 0.5)
  {
    v41 = [v12 v17[204]];
    v42 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v44 = v43;

    v45 = sub_23D66ACD4(v42, v44);
    if (v45 == 14)
    {
      v67(v7, v69, v3);
      v46 = v12;
      v47 = sub_23D685850();
      v48 = sub_23D685A60();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = v17;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v70 = v4;
        v71[0] = v51;
        v52 = v51;
        *v50 = 136315138;
        v53 = [v46 v49 + 3064];
        v54 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v55 = v7;
        v57 = v56;

        v58 = sub_23D652534(v54, v57, v71);

        *(v50 + 4) = v58;
        _os_log_impl(&dword_23D62D000, v47, v48, "no action type found for result name: %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x23EEE7580](v52, -1, -1);
        MEMORY[0x23EEE7580](v50, -1, -1);

        v59 = v55;
      }

      else
      {

        v59 = v7;
      }

      return (v38)(v59, v3);
    }

    else
    {
      v60 = v45;
      v61 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSANSControllerImplementation_delegate;
      v62 = v66;
      swift_beginAccess();
      result = *&v62[v61];
      if (result)
      {
        return [result postEventToSystemWithSoundActionEvent_];
      }
    }
  }

  return result;
}

BOOL sub_23D66B34C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v5 = sub_23D685860();
  __swift_project_value_buffer(v5, qword_27E2E0868);
  v6 = sub_23D685850();
  v7 = sub_23D685A70();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23D62D000, v6, v7, "AXSDKShotMonitor: Start Monitoring", v8, 2u);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }

  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27E2E0880);

  v9 = sub_23D685850();
  v10 = sub_23D685A70();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = 300;

    _os_log_impl(&dword_23D62D000, v9, v10, "AXSDKShotMonitor: Will check status of detectors every %ld seconds.", v11, 0xCu);
    MEMORY[0x23EEE7580](v11, -1, -1);
  }

  else
  {
  }

  v12 = sub_23D6859E0();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;

  *(v1 + 16) = sub_23D66FF48(0, 0, v4, &unk_23D689820, v13);

  return *(v1 + 16) != 0;
}

uint64_t sub_23D66B610()
{
  v1 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = sub_23D685850();
  v4 = sub_23D685A70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23D62D000, v3, v4, "AXSDKShotMonitor: Stop Monitoring", v5, 2u);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  if (!*(v1 + 16))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  sub_23D6859F0();
  isCancelled = swift_task_isCancelled();

  return isCancelled & 1;
}

uint64_t sub_23D66B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_23D685C60();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_23D685C70();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D66B878, 0, 0);
}

uint64_t sub_23D66B878()
{
  if (sub_23D685A00())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    *(v0 + 120) = objc_opt_self();
    v3 = sub_23D685860();
    __swift_project_value_buffer(v3, qword_27E2E0880);

    v4 = sub_23D685850();
    v5 = sub_23D685A70();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 300;

      _os_log_impl(&dword_23D62D000, v4, v5, "AXSDKShotMonitor: %ld seconds has elapsed. Checking status of detectors.", v6, 0xCu);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }

    else
    {
    }

    v7 = *(v0 + 120);
    sub_23D66D318();
    v8 = [v7 sharedInstance];
    v9 = [v8 isActivelyTrainingAKShotModel];

    v10 = sub_23D685850();
    v11 = sub_23D685A70();
    v12 = os_log_type_enabled(v10, v11);
    if (v9)
    {
      if (v12)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_23D62D000, v10, v11, "AXSDKShotMonitor: Not checking detectors. Currently training a KShot Model.", v13, 2u);
        MEMORY[0x23EEE7580](v13, -1, -1);
      }
    }

    else
    {
      if (v12)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23D62D000, v10, v11, "AXSDKShotMonitor: No KShot Model currently being trained. Checking detectors.", v14, 2u);
        MEMORY[0x23EEE7580](v14, -1, -1);
      }

      sub_23D66C264();
    }

    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6897C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v18 = sub_23D66D8E8(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_23D685D30();
    sub_23D66D8E8(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_23D685C80();
    v19 = *(v16 + 8);
    *(v0 + 128) = v19;
    *(v0 + 136) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = sub_23D66BC94;
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);

    return MEMORY[0x2822008C8](v22, v0 + 16, v21, v18);
  }
}

uint64_t sub_23D66BC94()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    (*(v2 + 128))(*(v2 + 88), *(v2 + 64));
    v3 = sub_23D66C1C8;
  }

  else
  {
    v5 = *(v2 + 104);
    v4 = *(v2 + 112);
    v6 = *(v2 + 96);
    (*(v2 + 128))(*(v2 + 88), *(v2 + 64));
    (*(v5 + 8))(v4, v6);
    v3 = sub_23D66BDEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D66BDEC()
{
  if (sub_23D685A00())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_23D685860();
    __swift_project_value_buffer(v3, qword_27E2E0880);

    v4 = sub_23D685850();
    v5 = sub_23D685A70();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = 300;

      _os_log_impl(&dword_23D62D000, v4, v5, "AXSDKShotMonitor: %ld seconds has elapsed. Checking status of detectors.", v6, 0xCu);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }

    else
    {
    }

    v7 = *(v0 + 120);
    sub_23D66D318();
    v8 = [v7 sharedInstance];
    v9 = [v8 isActivelyTrainingAKShotModel];

    v10 = sub_23D685850();
    v11 = sub_23D685A70();
    v12 = os_log_type_enabled(v10, v11);
    if (v9)
    {
      if (v12)
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_23D62D000, v10, v11, "AXSDKShotMonitor: Not checking detectors. Currently training a KShot Model.", v13, 2u);
        MEMORY[0x23EEE7580](v13, -1, -1);
      }
    }

    else
    {
      if (v12)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23D62D000, v10, v11, "AXSDKShotMonitor: No KShot Model currently being trained. Checking detectors.", v14, 2u);
        MEMORY[0x23EEE7580](v14, -1, -1);
      }

      sub_23D66C264();
    }

    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6897C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v18 = sub_23D66D8E8(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_23D685D30();
    sub_23D66D8E8(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_23D685C80();
    v19 = *(v16 + 8);
    *(v0 + 128) = v19;
    *(v0 + 136) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    v20 = swift_task_alloc();
    *(v0 + 144) = v20;
    *v20 = v0;
    v20[1] = sub_23D66BC94;
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);

    return MEMORY[0x2822008C8](v22, v0 + 16, v21, v18);
  }
}

uint64_t sub_23D66C1C8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

void sub_23D66C264()
{
  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v0 = sub_23D685860();
  __swift_project_value_buffer(v0, qword_27E2E0880);
  v1 = sub_23D685850();
  v2 = sub_23D685A70();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_23D62D000, v1, v2, "AXSDKShotMonitor: Checking custom detectors for potential retraining.", v3, 2u);
    MEMORY[0x23EEE7580](v3, -1, -1);
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 customDetectors];

  sub_23D654A7C(0, &qword_27E2E0560, off_278BDC930);
  v6 = sub_23D685980();

  if (v6 >> 62)
  {
    v7 = sub_23D685B50();
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_34:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_34;
  }

LABEL_7:
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v39 = v7;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x23EEE6980](v8, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      v13 = v11;
      if (v12)
      {
        if (![v12 shouldRetrain])
        {
          v34 = v13;
          v21 = sub_23D685850();
          v35 = sub_23D685A50();

          if (os_log_type_enabled(v21, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = 138412290;
            *(v36 + 4) = v34;
            *v37 = v34;
            _os_log_impl(&dword_23D62D000, v21, v35, "AXSDKShotMonitor: Ignoring custom detector because we do not need to attempt to retrain it. Detector: %@.", v36, 0xCu);
            sub_23D654530(v37);
            v38 = v37;
            v7 = v39;
            MEMORY[0x23EEE7580](v38, -1, -1);
            MEMORY[0x23EEE7580](v36, -1, -1);
          }

          else
          {
          }

          goto LABEL_10;
        }

        v14 = sub_23D685850();
        v15 = sub_23D685A70();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          *(v16 + 4) = v12;
          *v17 = v12;
          v18 = v13;
          _os_log_impl(&dword_23D62D000, v14, v15, "AXSDKShotMonitor: Checking if detector should be retrained: %@.", v16, 0xCu);
          sub_23D654530(v17);
          v19 = v17;
          v9 = v6 & 0xC000000000000001;
          MEMORY[0x23EEE7580](v19, -1, -1);
          MEMORY[0x23EEE7580](v16, -1, -1);
        }

        v20 = sub_23D66C800(v12);
        v21 = sub_23D685850();
        v22 = sub_23D685A70();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v40 = v24;
          *v23 = 136315138;
          if (v20)
          {
            v25 = 0x4653534543435553;
          }

          else
          {
            v25 = 0x204552554C494146;
          }

          if (v20)
          {
            v26 = 0xEC000000594C4C55;
          }

          else
          {
            v26 = 0xEA00000000004F54;
          }

          v27 = sub_23D652534(v25, v26, &v40);

          *(v23 + 4) = v27;
          v7 = v39;
          _os_log_impl(&dword_23D62D000, v21, v22, "AXSDKShotMonitor: %s start retraining of detector.", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          v28 = v24;
          v9 = v6 & 0xC000000000000001;
          MEMORY[0x23EEE7580](v28, -1, -1);
          MEMORY[0x23EEE7580](v23, -1, -1);
        }
      }

      else
      {
        v21 = sub_23D685850();
        v29 = sub_23D685A50();

        if (os_log_type_enabled(v21, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          *(v30 + 4) = v13;
          *v31 = v13;
          v32 = v13;
          _os_log_impl(&dword_23D62D000, v21, v29, "AXSDKShotMonitor: Ignoring detector because its not custom. Detector: %@.", v30, 0xCu);
          sub_23D654530(v31);
          v33 = v31;
          v7 = v39;
          MEMORY[0x23EEE7580](v33, -1, -1);
          MEMORY[0x23EEE7580](v30, -1, -1);

          v9 = v6 & 0xC000000000000001;
          goto LABEL_11;
        }
      }

LABEL_10:
LABEL_11:
      if (v7 == ++v8)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);
}

uint64_t sub_23D66C800(void *a1)
{
  v3 = sub_23D685880();
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D6858A0();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D6856F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  if ([a1 modelFailed])
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    v16 = sub_23D685860();
    __swift_project_value_buffer(v16, qword_27E2E0880);
    v17 = a1;
    v18 = sub_23D685850();
    v19 = sub_23D685A70();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_23D62D000, v18, v19, "AXSDKShotMonitor: Detector is already marked as failed. Not attempting retraining. Detector: %@", v20, 0xCu);
      sub_23D654530(v21);
      MEMORY[0x23EEE7580](v21, -1, -1);
      MEMORY[0x23EEE7580](v20, -1, -1);
    }

LABEL_24:

    return 0;
  }

  v23 = [a1 lastAttemptedTrainingDate];
  if (!v23)
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    v62 = v10;
    v34 = sub_23D685860();
    __swift_project_value_buffer(v34, qword_27E2E0880);
    v35 = a1;
    v36 = sub_23D685850();
    v37 = sub_23D685A70();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v38 = 136315394;
      sub_23D6856E0();
      sub_23D66D8E8(&qword_27E2E0860, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v40 = sub_23D685CF0();
      v42 = v41;
      v43 = v62;
      (*(v62 + 8))(v13, v9);
      v44 = sub_23D652534(v40, v42, aBlock);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2112;
      *(v38 + 14) = v35;
      *v39 = v35;
      v45 = v35;
      _os_log_impl(&dword_23D62D000, v36, v37, "AXSDKShotMonitor: No date set for last attempted training date. Setting to: %s for Detector: %@", v38, 0x16u);
      sub_23D654530(v39);
      MEMORY[0x23EEE7580](v39, -1, -1);
      v46 = v64;
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23EEE7580](v46, -1, -1);
      MEMORY[0x23EEE7580](v38, -1, -1);
    }

    else
    {

      v43 = v62;
    }

    sub_23D6856E0();
    v18 = sub_23D6856B0();
    (*(v43 + 8))(v13, v9);
    [v35 setLastAttemptedTrainingDate_];
    goto LABEL_24;
  }

  v60 = v1;
  v24 = v23;
  sub_23D6856C0();

  sub_23D6856E0();
  sub_23D6856D0();
  v26 = v25;
  v61 = *(v10 + 8);
  v62 = v10 + 8;
  v61(v13, v9);
  if (fabs(v26) < 600.0)
  {
    if (qword_27E2E03D8 != -1)
    {
      swift_once();
    }

    v27 = sub_23D685860();
    __swift_project_value_buffer(v27, qword_27E2E0880);
    v28 = a1;

    v29 = sub_23D685850();
    v30 = sub_23D685A70();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 134218498;
      *(v31 + 4) = 0x4082C00000000000;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v26;
      *(v31 + 22) = 2112;
      *(v31 + 24) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_23D62D000, v29, v30, "AXSDKShotMonitor: It's too early to attempt retrain of detector. Waiting: %f. Current time difference is: %f. Not attempting retraining. Detector: %@", v31, 0x20u);
      sub_23D654530(v32);
      MEMORY[0x23EEE7580](v32, -1, -1);
      MEMORY[0x23EEE7580](v31, -1, -1);
    }

    v61(v15, v9);
    return 0;
  }

  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v60 = v9;
  v47 = sub_23D685860();
  __swift_project_value_buffer(v47, qword_27E2E0880);
  v48 = a1;
  v49 = sub_23D685850();
  v50 = sub_23D685A70();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v48;
    *v52 = v48;
    v53 = v48;
    _os_log_impl(&dword_23D62D000, v49, v50, "AXSDKShotMonitor: Attempting to retrain detector. Detector: %@", v51, 0xCu);
    sub_23D654530(v52);
    MEMORY[0x23EEE7580](v52, -1, -1);
    MEMORY[0x23EEE7580](v51, -1, -1);
  }

  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v54 = sub_23D685AA0();
  v55 = swift_allocObject();
  *(v55 + 16) = v48;
  aBlock[4] = sub_23D66D244;
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_3;
  v56 = _Block_copy(aBlock);
  v57 = v48;

  sub_23D685890();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D66D8E8(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D65444C();
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v8, v5, v56);
  _Block_release(v56);

  (v64[1])(v5, v3);
  (*(v63 + 8))(v8, v6);
  v61(v15, v60);
  return 1;
}

void sub_23D66D178(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 retrainDetector_];
}

uint64_t sub_23D66D1E8()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D66D264(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23D667DA8;

  return sub_23D66B750(a1, v4, v5, v6);
}

uint64_t sub_23D66D318()
{
  if (qword_27E2E03D8 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v0 = sub_23D685860();
    __swift_project_value_buffer(v0, qword_27E2E0880);
    v1 = sub_23D685850();
    v2 = sub_23D685A70();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23D62D000, v1, v2, "AXSDKShotMonitor: Checking enabled custom detectors - verifying that enabled identifiers still have a corresponding detector.", v3, 2u);
      MEMORY[0x23EEE7580](v3, -1, -1);
    }

    v42 = objc_opt_self();
    v4 = [v42 sharedInstance];
    v5 = [v4 enabledKShotDetectorIdentifiers];

    v6 = sub_23D685980();
    v46 = *(v6 + 16);
    if (!v46)
    {
      break;
    }

    v45 = objc_opt_self();
    if (*(v6 + 16))
    {
      v8 = 0;
      v44 = v6 + 32;
      *&v7 = 136315138;
      v41 = v7;
      v43 = v6;
LABEL_7:
      v9 = (v44 + 16 * v8);
      v10 = v9[1];
      v48 = *v9;

      v11 = [v45 sharedInstance];
      v12 = [v11 customDetectors];

      sub_23D654A7C(0, &qword_27E2E0560, off_278BDC930);
      v13 = sub_23D685980();

      if (v13 >> 62)
      {
        v14 = sub_23D685B50();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v47 = v8 + 1;
      v16 = v14;
      while (1)
      {
        v17 = v15;
        if (v14 == v15)
        {
LABEL_22:

          goto LABEL_24;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x23EEE6980](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v18 = *(v13 + 8 * v15 + 32);
        }

        v19 = v18;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v20 = [v18 identifier];
        v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v23 = v22;

        if (v48 == v21 && v10 == v23)
        {
          break;
        }

        v25 = sub_23D685D00();

        v15 = v17 + 1;
        v14 = v16;
        if (v25)
        {
          goto LABEL_22;
        }
      }

      v14 = v16;
LABEL_24:

      v26 = sub_23D685850();
      v27 = sub_23D685A70();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v49 = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_23D652534(v48, v10, &v49);
        *(v28 + 12) = 2080;
        if (v14 == v17)
        {
          v30 = 20302;
        }

        else
        {
          v30 = 5457241;
        }

        if (v14 == v17)
        {
          v31 = 0xE200000000000000;
        }

        else
        {
          v31 = 0xE300000000000000;
        }

        v32 = sub_23D652534(v30, v31, &v49);
        v14 = v16;

        *(v28 + 14) = v32;
        _os_log_impl(&dword_23D62D000, v26, v27, "AXSDKShotMonitor: Enabled Identifier: %s has a valid detector: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEE7580](v29, -1, -1);
        MEMORY[0x23EEE7580](v28, -1, -1);
      }

      if (v14 == v17)
      {

        v33 = sub_23D685850();
        v34 = sub_23D685A70();

        v8 = v47;
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v49 = v36;
          *v35 = v41;
          *(v35 + 4) = sub_23D652534(v48, v10, &v49);
          _os_log_impl(&dword_23D62D000, v33, v34, "AXSDKShotMonitor: Disabling detector with identifier: %s - model no longer exists.", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v36);
          MEMORY[0x23EEE7580](v36, -1, -1);
          MEMORY[0x23EEE7580](v35, -1, -1);
        }

        v38 = [v42 sharedInstance];
        v39 = sub_23D6858E0();

        [v38 disableKShotDetector_];

        v37 = v46;
      }

      else
      {

        v37 = v46;
        v8 = v47;
      }

      if (v8 == v37)
      {
        break;
      }

      if (v8 < *(v43 + 16))
      {
        goto LABEL_7;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }
}

uint64_t sub_23D66D8E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D66D9FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_23D685860();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

id sub_23D66DAB4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23D685860();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  result = a3();
  if (result)
  {
    return sub_23D685870();
  }

  __break(1u);
  return result;
}

uint64_t static Logger.soundActions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  v3 = __swift_project_value_buffer(v2, qword_27E2E08B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.soundActions.setter(uint64_t a1)
{
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  v3 = __swift_project_value_buffer(v2, qword_27E2E08B0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.soundActions.modify(uint64_t a1))()
{
  if (qword_27E2E03E8 != -1)
  {
    swift_once();
  }

  v1 = sub_23D685860();
  __swift_project_value_buffer(v1, qword_27E2E08B0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_23D66DDD0(void *a1)
{
  v2 = v1;
  if (qword_27E2E03D0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = sub_23D685860();
  __swift_project_value_buffer(v4, qword_27E2E0868);
  v5 = v2;
  v6 = a1;
  v7 = v5;
  v8 = v6;
  v9 = sub_23D685850();
  v10 = sub_23D685A70();

  v53 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v55[0] = v13;
    *v11 = 136315394;
    v14 = v5;
    v15 = [v14 description];
    v16 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v18 = v17;

    v8 = v53;
    v19 = sub_23D652534(v16, v18, v55);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v53;
    *v12 = v53;
    v20 = v53;
    _os_log_impl(&dword_23D62D000, v9, v10, "[%s]: adding detector: %@", v11, 0x16u);
    sub_23D6598A4(v12, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EEE7580](v13, -1, -1);
    MEMORY[0x23EEE7580](v11, -1, -1);
  }

  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v21 = *&v7[v2];
  v51 = v7;
  v50 = v2;
  if (v21 >> 62)
  {
    v52 = sub_23D685B50();
  }

  else
  {
    v52 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = (v21 & 0xC000000000000001);

  v22 = 0;
  while (1)
  {
    if (v52 == v22)
    {

      v54 = *&v51[v50];
      v33 = v8;

      MEMORY[0x23EEE6700](v34);
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23D685990();
      }

      sub_23D6859A0();
      v35 = *&v51[v50];
      *&v51[v50] = v54;
      sub_23D67026C(v35);

      return;
    }

    if (a1)
    {
      v23 = MEMORY[0x23EEE6980](v22, v21);
    }

    else
    {
      if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v23 = *(v21 + 8 * v22 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v25 = [v23 identifier];
    v26 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v28 = v27;

    v29 = [v8 identifier];
    v30 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v32 = v31;

    if (v26 == v30 && v28 == v32)
    {
      break;
    }

    v2 = sub_23D685D00();

    ++v22;
    v8 = v53;
    if (v2)
    {
      goto LABEL_20;
    }
  }

  v8 = v53;
LABEL_20:

  v36 = v51;
  v37 = v8;
  v38 = sub_23D685850();
  v39 = sub_23D685A50();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v54 = v42;
    *v40 = 136315394;
    v43 = v36;
    v44 = [v43 description];
    v45 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v47 = v46;

    v48 = sub_23D652534(v45, v47, &v54);

    *(v40 + 4) = v48;
    *(v40 + 12) = 2112;
    *(v40 + 14) = v37;
    *v41 = v37;
    v49 = v37;
    _os_log_impl(&dword_23D62D000, v38, v39, "[%s]: already added detector: %@. ignoring", v40, 0x16u);
    sub_23D6598A4(v41, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v41, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x23EEE7580](v42, -1, -1);
    MEMORY[0x23EEE7580](v40, -1, -1);
  }
}

void sub_23D66E354(void *a1)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v3 = sub_23D685860();
  __swift_project_value_buffer(v3, qword_27E2E0868);
  v4 = v1;
  v5 = a1;
  v6 = sub_23D685850();
  v7 = sub_23D685A70();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23[0] = v22;
    *v8 = 136315394;
    v10 = v4;
    v11 = [v10 description];
    v12 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v14 = v13;

    v15 = sub_23D652534(v12, v14, v23);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v16 = v5;
    _os_log_impl(&dword_23D62D000, v6, v7, "[%s]: removing detector: %@", v8, 0x16u);
    sub_23D6598A4(v9, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x23EEE7580](v22, -1, -1);
    MEMORY[0x23EEE7580](v8, -1, -1);
  }

  v17 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v24 = *&v4[v17];
  v18 = v5;

  v19 = sub_23D6794A0(&v24, v18);

  if (v24 >> 62)
  {
    v20 = sub_23D685B50();
    if (v20 >= v19)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v19)
    {
LABEL_7:
      sub_23D6798B0(v19, v20);
      v21 = *&v4[v17];
      *&v4[v17] = v24;
      sub_23D67026C(v21);

      return;
    }
  }

  __break(1u);
}

uint64_t sub_23D66E5F8()
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v1 = sub_23D685860();
  __swift_project_value_buffer(v1, qword_27E2E0868);
  v2 = v0;
  v3 = sub_23D685850();
  v4 = sub_23D685A70();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    v7 = v2;
    v8 = [v7 description];
    v9 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v11 = v10;

    v12 = sub_23D652534(v9, v11, v16);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_23D62D000, v3, v4, "[%s]: removing all detectors", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEE7580](v6, -1, -1);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  v13 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v14 = *&v2[v13];
  *&v2[v13] = MEMORY[0x277D84F90];
  sub_23D67026C(v14);
}

void sub_23D66E7C8()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v2 = sub_23D685860();
    __swift_project_value_buffer(v2, qword_27E2E0868);
    v3 = v0;
    v4 = sub_23D685850();
    v5 = sub_23D685A70();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14[0] = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v12 = v11;

      v13 = sub_23D652534(v10, v12, v14);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_23D62D000, v4, v5, "[%s]: sound recognition is already listening.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEE7580](v7, -1, -1);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }
  }

  else
  {
    *(v0 + v1) = 1;
    swift_beginAccess();

    sub_23D679988();
  }
}

void sub_23D66E9C4()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v0[v1] = 0;
    swift_beginAccess();

    sub_23D679FD4();
  }

  else
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v2 = sub_23D685860();
    __swift_project_value_buffer(v2, qword_27E2E0868);
    v3 = v0;
    v4 = sub_23D685850();
    v5 = sub_23D685A70();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14[0] = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v12 = v11;

      v13 = sub_23D652534(v10, v12, v14);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_23D62D000, v4, v5, "[%s]: sound recognition is already stopped.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEE7580](v7, -1, -1);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }
  }
}

uint64_t sub_23D66EC08()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL sub_23D66EC4C()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  swift_beginAccess();
  return *(*(v0 + v1) + 16) != 0;
}

uint64_t sub_23D66EC9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E05F0, &unk_23D689370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v75 - v6;
  v8 = sub_23D685740();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v75 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  if ([a1 isCustom])
  {

    return sub_23D66F440(a1);
  }

  else
  {
    v82 = v14;
    v18 = v1;
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v19 = sub_23D685860();
    v20 = __swift_project_value_buffer(v19, qword_27E2E0868);
    v21 = v18;
    v22 = a1;
    v84 = v20;
    v23 = sub_23D685850();
    v24 = sub_23D685A70();

    v25 = os_log_type_enabled(v23, v24);
    v83 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v25)
    {
      v26 = swift_slowAlloc();
      v81 = v8;
      v27 = v26;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v86 = v79;
      *v27 = 136315394;
      v28 = v21;
      v77 = v24;
      v29 = v21;
      v30 = v16;
      v31 = v28;
      v32 = v9;
      v33 = [v28 description];
      v34 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v80 = v7;
      v35 = v34;
      v76 = v23;
      v36 = v22;
      v38 = v37;

      v16 = v30;
      v21 = v29;

      v9 = v32;
      v39 = sub_23D652534(v35, v38, &v86);
      v22 = v36;

      *(v27 + 4) = v39;
      v7 = v80;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v36;
      v40 = v78;
      *v78 = v22;
      v41 = v22;
      v42 = v76;
      _os_log_impl(&dword_23D62D000, v76, v77, "[%s]: creating task for sound recognition detector: %@", v27, 0x16u);
      sub_23D6598A4(v40, &qword_27E2E06F0, &qword_23D6893C0);
      MEMORY[0x23EEE7580](v40, -1, -1);
      v43 = v79;
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x23EEE7580](v43, -1, -1);
      v44 = v27;
      v8 = v81;
      MEMORY[0x23EEE7580](v44, -1, -1);
    }

    else
    {
    }

    if (([v22 isCustom] & 1) == 0)
    {
      v81 = v21;
      v45 = [v22 identifier];
      if (!v45)
      {
        _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v45 = sub_23D6858E0();
      }

      AXSDSoundDetectionType.builtInDetectorIdentifier.getter(v45, v7);

      v46 = sub_23D685750();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v7, 1, v46) != 1)
      {
        v62 = v82;
        (*(v47 + 32))(v82, v7, v46);
        v63 = v9;
        (*(v9 + 104))(v62, *MEMORY[0x277CDC810], v8);
        v84 = *(v9 + 32);
        v84(v16, v62, v8);
        v64 = sub_23D6859E0();
        (*(*(v64 - 8) + 56))(v85, 1, 1, v64);
        v65 = v83;
        (*(v9 + 16))(v83, v16, v8);
        v66 = *(v9 + 80);
        v67 = v22;
        v68 = (v66 + 40) & ~v66;
        v69 = (v10 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
        v70 = swift_allocObject();
        *(v70 + 2) = 0;
        *(v70 + 3) = 0;
        v71 = v81;
        *(v70 + 4) = v81;
        v84(&v70[v68], v65, v8);
        *&v70[v69] = v67;
        v72 = v71;
        v73 = v67;
        v74 = sub_23D66FF48(0, 0, v85, &unk_23D6898E0, v70);
        (*(v63 + 8))(v16, v8);
        return v74;
      }

      sub_23D6598A4(v7, &unk_27E2E05F0, &unk_23D689370);
      v21 = v81;
    }

    v48 = v21;
    v49 = v22;
    v50 = sub_23D685850();
    v51 = sub_23D685A60();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v86 = v54;
      *v52 = 136315394;
      v55 = v48;
      v56 = [v55 description];
      v57 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v59 = v58;

      v60 = sub_23D652534(v57, v59, &v86);

      *(v52 + 4) = v60;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v53 = v49;
      v61 = v49;
      _os_log_impl(&dword_23D62D000, v50, v51, "[%s]: unable to find identifier for detector: %@", v52, 0x16u);
      sub_23D6598A4(v53, &qword_27E2E06F0, &qword_23D6893C0);
      MEMORY[0x23EEE7580](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x23EEE7580](v54, -1, -1);
      MEMORY[0x23EEE7580](v52, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_23D66F440(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v66[-v5];
  v7 = sub_23D6856A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v72 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v73 = &v66[-v11];
  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v12 = sub_23D685860();
  v13 = __swift_project_value_buffer(v12, qword_27E2E0880);
  v14 = v2;
  v15 = a1;
  v16 = sub_23D685850();
  v17 = sub_23D685A70();

  v18 = os_log_type_enabled(v16, v17);
  v74 = v14;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v71 = v8;
    v20 = v19;
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v75 = v69;
    *v20 = 136315394;
    v21 = v14;
    v70 = v13;
    v22 = v21;
    v23 = v9;
    v24 = v6;
    v25 = [v21 description];
    v26 = v7;
    v27 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v67 = v17;
    v29 = v28;

    v6 = v24;
    v9 = v23;
    v30 = v27;
    v7 = v26;
    v31 = sub_23D652534(v30, v29, &v75);

    *(v20 + 4) = v31;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v15;
    v32 = v68;
    *v68 = v15;
    v33 = v15;
    _os_log_impl(&dword_23D62D000, v16, v67, "[%s]: creating task for sound recognition detector: %@", v20, 0x16u);
    sub_23D6598A4(v32, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v32, -1, -1);
    v34 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23EEE7580](v34, -1, -1);
    v35 = v20;
    v8 = v71;
    MEMORY[0x23EEE7580](v35, -1, -1);
  }

  if ([v15 isCustom])
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      v38 = v15;
      v39 = [v37 modelURL];
      if (v39)
      {
        v40 = v73;
        v41 = v39;
        sub_23D685680();

        v42 = sub_23D6859E0();
        (*(*(v42 - 8) + 56))(v6, 1, 1, v42);
        v43 = v72;
        (*(v8 + 16))(v72, v40, v7);
        v44 = (*(v8 + 80) + 48) & ~*(v8 + 80);
        v45 = swift_allocObject();
        *(v45 + 2) = 0;
        *(v45 + 3) = 0;
        v46 = v38;
        v47 = v74;
        *(v45 + 4) = v74;
        *(v45 + 5) = v37;
        (*(v8 + 32))(&v45[v44], v43, v7);
        *&v45[(v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8] = v46;
        v48 = v47;
        v49 = v46;
        v50 = sub_23D66FF48(0, 0, v6, &unk_23D6898B0, v45);
        (*(v8 + 8))(v73, v7);
        return v50;
      }
    }
  }

  v52 = v74;
  v53 = v15;
  v54 = sub_23D685850();
  v55 = sub_23D685A60();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v75 = v58;
    *v56 = 136315394;
    v59 = v52;
    v60 = [v59 description];
    v61 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v63 = v62;

    v64 = sub_23D652534(v61, v63, &v75);

    *(v56 + 4) = v64;
    *(v56 + 12) = 2112;
    *(v56 + 14) = v53;
    *v57 = v53;
    v65 = v53;
    _os_log_impl(&dword_23D62D000, v54, v55, "[%s]: unable to locate mlModel found for custom detector: %@", v56, 0x16u);
    sub_23D6598A4(v57, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v57, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x23EEE7580](v58, -1, -1);
    MEMORY[0x23EEE7580](v56, -1, -1);
  }

  return 0;
}

uint64_t sub_23D66FA40(void *a1)
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  swift_beginAccess();
  if (*(*&v1[v3] + 16))
  {

    sub_23D67EE10(a1);
    if (v4)
    {

      if (qword_27E2E03D0 != -1)
      {
        swift_once();
      }

      v5 = sub_23D685860();
      __swift_project_value_buffer(v5, qword_27E2E0868);
      v6 = v1;
      v7 = a1;
      v8 = sub_23D685850();
      v9 = sub_23D685A70();

      if (os_log_type_enabled(v8, v9))
      {
        v20 = v9;
        v10 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v10 = 136315394;
        v11 = v6;
        v12 = [v11 description];
        v13 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v15 = v14;

        v16 = sub_23D652534(v13, v15, v22);

        *(v10 + 4) = v16;
        *(v10 + 12) = 2112;
        *(v10 + 14) = v7;
        *v19 = v7;
        v17 = v7;
        _os_log_impl(&dword_23D62D000, v8, v20, "[%s]: removing task for detector: %@.", v10, 0x16u);
        sub_23D6598A4(v19, &qword_27E2E06F0, &qword_23D6893C0);
        MEMORY[0x23EEE7580](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x23EEE7580](v21, -1, -1);
        MEMORY[0x23EEE7580](v10, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
      sub_23D6859F0();
    }

    else
    {
    }
  }

  swift_beginAccess();
  sub_23D66FE44(0, a1);
  return swift_endAccess();
}

BOOL sub_23D66FD10()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
  if (*(v0 + v1))
  {
    swift_beginAccess();

    sub_23D64FCE0(v3);
    v5 = v4;
    v6 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
    swift_beginAccess();

    v8 = sub_23D654880(v7);

    sub_23D675B2C(v5, v8);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return 0;
    }

    v11 = *(*(v0 + v2) + 16);
    v12 = *(v0 + v6);
    if (v12 >> 62)
    {
      v13 = sub_23D685B50();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v11 == v13;
  }

  else
  {
    swift_beginAccess();
    return *(*(v0 + v2) + 16) == 0;
  }
}

void sub_23D66FE44(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_23D67F768(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_23D67EE10(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_23D678B34();
        v10 = v13;
      }

      sub_23D67881C(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_23D66FF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23D67A554(a3, v22 - v9);
  v11 = sub_23D6859E0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23D6598A4(v10, &qword_27E2E0780, "Ԍ");
  }

  else
  {
    sub_23D6859D0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23D6859B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23D685930() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23D6598A4(a3, &qword_27E2E0780, "Ԍ");

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23D6598A4(a3, &qword_27E2E0780, "Ԍ");
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23D6701FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_23D67026C(v5);
}

uint64_t sub_23D67026C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  result = swift_beginAccess();
  if (v1[v3] == 1)
  {

    v6 = sub_23D654880(v5);

    v8 = sub_23D654880(v7);

    v9 = sub_23D670C00(v8, v6);
    v10 = sub_23D670C00(v6, v8);

    v11 = sub_23D677508(v9);

    v12 = sub_23D677508(v10);

    if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
    {
      v13 = sub_23D685B50();
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = *(v12 + 16);
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    if (v13 >= 1)
    {
      for (i = 0; i != v13; ++i)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x23EEE6980](i, v12);
        }

        else
        {
          v15 = *(v12 + 8 * i + 32);
        }

        v16 = v15;
        sub_23D66FA40(v15);
      }

LABEL_12:
      if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
      {
        goto LABEL_45;
      }

      v17 = *(v11 + 16);
      if (!v17)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v18 = v17 - 1;
        if (v17 < 1)
        {
          goto LABEL_49;
        }

        v19 = v11 & 0xC000000000000001;
        v20 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;
        swift_beginAccess();
        v21 = 0;
        v63 = v20;
        v58 = v11;
        if ((v11 & 0xC000000000000001) != 0)
        {
LABEL_17:
          v22 = MEMORY[0x23EEE6980](v21, v11);
          goto LABEL_19;
        }

        while (1)
        {
          v22 = *(v11 + 8 * v21 + 32);
LABEL_19:
          v23 = v22;
          if (!*(*&v2[v20] + 16))
          {
            goto LABEL_23;
          }

          sub_23D67EE10(v23);
          if ((v24 & 1) == 0)
          {
            break;
          }

LABEL_40:
          if (v18 == v21)
          {
            goto LABEL_46;
          }

          ++v21;
          if (v19)
          {
            goto LABEL_17;
          }
        }

LABEL_23:
        v25 = sub_23D66EC9C(v23);
        if (!v25)
        {
          if (qword_27E2E03D0 != -1)
          {
            swift_once();
          }

          v38 = sub_23D685860();
          __swift_project_value_buffer(v38, qword_27E2E0868);
          v39 = v23;
          v40 = v2;
          v41 = sub_23D685850();
          v42 = sub_23D685A70();

          if (os_log_type_enabled(v41, v42))
          {
            v61 = v42;
            v43 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v64[0] = v62;
            *v43 = 136315394;
            v44 = v40;
            log = v41;
            v45 = v19;
            v46 = v18;
            v47 = [v44 description];
            v48 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
            v50 = v49;

            v18 = v46;
            v19 = v45;
            v51 = v48;
            v11 = v58;
            v52 = sub_23D652534(v51, v50, v64);
            v20 = v63;

            *(v43 + 4) = v52;
            *(v43 + 12) = 2112;
            *(v43 + 14) = v39;
            *v60 = v39;
            v53 = v39;
            _os_log_impl(&dword_23D62D000, log, v61, "[%s]: unable to create a task for detector: %@", v43, 0x16u);
            sub_23D6598A4(v60, &qword_27E2E06F0, &qword_23D6893C0);
            MEMORY[0x23EEE7580](v60, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v62);
            MEMORY[0x23EEE7580](v62, -1, -1);
            MEMORY[0x23EEE7580](v43, -1, -1);
          }

          else
          {
          }

          goto LABEL_40;
        }

        v26 = v25;
        swift_beginAccess();

        v27 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *&v2[v20];
        v30 = sub_23D67EE10(v27);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (!v34)
        {
          break;
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v17 = sub_23D685B50();
        if (!v17)
        {
LABEL_46:
        }
      }

      v36 = v31;
      if (v29[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = v30;
          sub_23D678B34();
          v30 = v55;
          v54 = v29;
          if (v36)
          {
            goto LABEL_34;
          }

          goto LABEL_37;
        }
      }

      else
      {
        sub_23D67EFBC(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_23D67EE10(v27);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_50;
        }
      }

      v54 = v29;
      if (v36)
      {
LABEL_34:
        *(v54[7] + 8 * v30) = v26;

LABEL_39:
        v20 = v63;
        *&v2[v63] = v54;
        swift_endAccess();

        goto LABEL_40;
      }

LABEL_37:
      v54[(v30 >> 6) + 8] |= 1 << v30;
      *(v54[6] + 8 * v30) = v27;
      *(v54[7] + 8 * v30) = v26;
      v56 = v54[2];
      v34 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v34)
      {
        goto LABEL_44;
      }

      v54[2] = v57;
      goto LABEL_39;
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    sub_23D67A758();
    result = sub_23D685D20();
    __break(1u);
  }

  return result;
}

id AXSDSecureBaseControllerImplementation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXSDSecureBaseControllerImplementation.init()()
{
  v1 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = sub_23D685850();
  v4 = sub_23D685A70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23D62D000, v3, v4, "Initializing Base Secure Sound Detection Controller", v5, 2u);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  v6 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks] = sub_23D662034(v6);
  v1[OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for AXSDSecureBaseControllerImplementation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id AXSDSecureBaseControllerImplementation.__deallocating_deinit()
{
  v1 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D685860();
  __swift_project_value_buffer(v2, qword_27E2E0868);
  v3 = sub_23D685850();
  v4 = sub_23D685A70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23D62D000, v3, v4, "Deinitializing Base Secure Sound Detection Controller", v5, 2u);
    MEMORY[0x23EEE7580](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AXSDSecureBaseControllerImplementation();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_23D670C00(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_23D685B50();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_23D677674(a1, a2);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_23D685B50() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_23D685B50();
  v2 = sub_23D6767A4(v5, v6);
LABEL_10:

  return sub_23D6778A4(a1, v2);
}

uint64_t sub_23D670CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_23D685C60();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v8 = sub_23D685C70();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_23D6857B0();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E0, &qword_23D6898B8);
  v6[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E8, &qword_23D6898C0);
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08F0, &unk_23D6898C8);
  v6[25] = v11;
  v6[26] = *(v11 - 8);
  v6[27] = swift_task_alloc();
  v12 = sub_23D6857A0();
  v6[28] = v12;
  v6[29] = *(v12 - 8);
  v6[30] = swift_task_alloc();
  v13 = sub_23D685780();
  v6[31] = v13;
  v6[32] = *(v13 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v14 = sub_23D685740();
  v6[35] = v14;
  v6[36] = *(v14 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D6710BC, 0, 0);
}

uint64_t sub_23D6710BC()
{
  v63 = v0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[8];
  v4 = v0[9];
  v6 = sub_23D685860();
  v0[40] = __swift_project_value_buffer(v6, qword_27E2E0868);
  v7 = *(v3 + 16);
  v0[41] = v7;
  v0[42] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = v5;
  v9 = sub_23D685850();
  v10 = sub_23D685A70();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[39];
  v13 = v0[35];
  v14 = v0[36];
  if (v11)
  {
    v15 = v0[8];
    v58 = v0[35];
    v16 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v16 = 136315394;
    v17 = v15;
    v18 = [v17 description];
    v19 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v21 = v20;

    v22 = sub_23D652534(v19, v21, &v62);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
    v25 = v24;
    v26 = *(v14 + 8);
    v26(v12, v58);
    v27 = sub_23D652534(v23, v25, &v62);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_23D62D000, v9, v10, "[%s]: Starting sound recogntion task for identifier: %s.", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v60, -1, -1);
    MEMORY[0x23EEE7580](v16, -1, -1);
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v12, v13);
  }

  v0[43] = v26;
  if (sub_23D685A00())
  {

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[34];
    v32 = v0[32];
    v31 = v0[33];
    v33 = v0[31];
    v34 = v0[8];
    (v0[41])(v0[38], v0[9], v0[35]);
    sub_23D685770();
    (*(v32 + 16))(v31, v30, v33);
    v35 = v34;
    v36 = sub_23D685850();
    v37 = sub_23D685A70();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[33];
    v40 = v0[31];
    v41 = (v0[32] + 8);
    if (v38)
    {
      v61 = v37;
      v42 = v0[8];
      v43 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v62 = v59;
      *v43 = 136315394;
      v44 = v42;
      v45 = [v44 description];
      v46 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v48 = v47;

      v49 = sub_23D652534(v46, v48, &v62);

      *(v43 + 4) = v49;
      *(v43 + 12) = 2080;
      sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0], MEMORY[0x277CDC8A8]);
      v50 = sub_23D685CF0();
      v52 = v51;
      v53 = *v41;
      (*v41)(v39, v40);
      v54 = sub_23D652534(v50, v52, &v62);

      *(v43 + 14) = v54;
      _os_log_impl(&dword_23D62D000, v36, v61, "[%s]: running request %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v59, -1, -1);
      MEMORY[0x23EEE7580](v43, -1, -1);
    }

    else
    {

      v53 = *v41;
      (*v41)(v39, v40);
    }

    v0[44] = v53;
    v55 = swift_task_alloc();
    v0[45] = v55;
    *v55 = v0;
    v55[1] = sub_23D67168C;
    v56 = v0[34];
    v57 = v0[30];

    return MEMORY[0x28212BAC8](v57, v56);
  }
}

uint64_t sub_23D67168C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_23D672B08;
  }

  else
  {
    v2 = sub_23D6717A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23D6717A0()
{
  sub_23D685790();
  sub_23D685820();
  v1 = sub_23D67A5C4();
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_23D671874;
  v3 = v0[21];
  v4 = v0[22];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_23D671874()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_23D671ECC;
  }

  else
  {
    v2 = sub_23D671988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23D671988()
{
  v53 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v50 = *(v0 + 352);
    v4 = *(v0 + 272);
    v5 = *(v0 + 248);
    v7 = *(v0 + 232);
    v6 = *(v0 + 240);
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 200);
    v11 = *(v0 + 208);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v50(v4, v5);
    v12 = *(v0 + 64);
    (*(v0 + 328))(*(v0 + 296), *(v0 + 72), *(v0 + 280));
    v13 = v12;
    v14 = sub_23D685850();
    v15 = sub_23D685A70();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 344);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    if (v16)
    {
      v51 = v15;
      v20 = *(v0 + 64);
      v48 = *(v0 + 344);
      v21 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v52 = v49;
      *v21 = 136315394;
      v22 = v20;
      v23 = [v22 description];
      v24 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v26 = v25;

      v27 = sub_23D652534(v24, v26, &v52);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
      v30 = v29;
      v48(v18, v19);
      v31 = sub_23D652534(v28, v30, &v52);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_23D62D000, v14, v51, "[%s]: Restarting sound recogntion task for identifier: %s.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v49, -1, -1);
      MEMORY[0x23EEE7580](v21, -1, -1);
    }

    else
    {

      v17(v18, v19);
    }

    v40 = *(v0 + 96);
    v39 = *(v0 + 104);
    v41 = *(v0 + 88);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6896C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v42 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_23D685D30();
    sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_23D685C80();
    v43 = *(v40 + 8);
    *(v0 + 392) = v43;
    *(v0 + 400) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v43(v39, v41);
    v44 = swift_task_alloc();
    *(v0 + 408) = v44;
    *v44 = v0;
    v44[1] = sub_23D6724CC;
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);

    return MEMORY[0x2822008C8](v46, v0 + 16, v45, v42);
  }

  else
  {
    v32 = *(v0 + 160);
    v33 = *(v0 + 80);
    v34 = *(v0 + 64);
    (*(v3 + 32))(v32, v1, v2);
    (*((*MEMORY[0x277D85000] & *v34) + 0x140))(v32, v33);
    (*(v3 + 8))(v32, v2);
    v35 = sub_23D67A5C4();
    v36 = swift_task_alloc();
    *(v0 + 376) = v36;
    *v36 = v0;
    v36[1] = sub_23D671874;
    v37 = *(v0 + 168);
    v38 = *(v0 + 176);

    return MEMORY[0x282200308](v37, v38, v35);
  }
}

uint64_t sub_23D671ECC()
{
  *(v0 + 56) = *(v0 + 384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23D671F60, 0, 0);
}

uint64_t sub_23D671F60()
{
  v60 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 384);
  v8 = *(v0 + 64);
  (*(v0 + 352))(*(v0 + 272), *(v0 + 248));
  v9 = v8;
  v10 = v7;
  v11 = sub_23D685850();
  v12 = sub_23D685A70();

  v13 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v14 = &selRef_bufferSize;
  if (os_log_type_enabled(v11, v12))
  {
    v15 = *(v0 + 64);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v16 = 136315394;
    v18 = v15;
    v19 = [v18 description];
    v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v22 = v21;

    v14 = &selRef_bufferSize;
    v23 = sub_23D652534(v20, v22, &v59);

    *(v16 + 4) = v23;
    v13 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v16 + 12) = 2112;
    v24 = v7;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v25;
    *v17 = v25;
    _os_log_impl(&dword_23D62D000, v11, v12, "[%s]: session failed with %@", v16, 0x16u);
    sub_23D6598A4(v17, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23EEE7580](v57, -1, -1);
    MEMORY[0x23EEE7580](v16, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 64);
  (*(v0 + 328))(*(v0 + 296), *(v0 + 72), *(v0 + 280));
  v27 = v26;
  v28 = sub_23D685850();
  v29 = sub_23D685A70();

  v30 = os_log_type_enabled(v28, v29);
  v31 = *(v0 + 344);
  v32 = *(v0 + 296);
  v33 = *(v0 + 280);
  if (v30)
  {
    v58 = v29;
    v34 = *(v0 + 64);
    v55 = *(v0 + 344);
    v35 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v35 = *(v13 + 35);
    v36 = v34;
    v37 = [v36 v14[58]];
    v38 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v40 = v39;

    v41 = sub_23D652534(v38, v40, &v59);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
    v44 = v43;
    v55(v32, v33);
    v45 = sub_23D652534(v42, v44, &v59);

    *(v35 + 14) = v45;
    _os_log_impl(&dword_23D62D000, v28, v58, "[%s]: Restarting sound recogntion task for identifier: %s.", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v56, -1, -1);
    MEMORY[0x23EEE7580](v35, -1, -1);
  }

  else
  {

    v31(v32, v33);
  }

  v47 = *(v0 + 96);
  v46 = *(v0 + 104);
  v48 = *(v0 + 88);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v49 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D685C80();
  v50 = *(v47 + 8);
  *(v0 + 392) = v50;
  *(v0 + 400) = (v47 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v46, v48);
  v51 = swift_task_alloc();
  *(v0 + 408) = v51;
  *v51 = v0;
  v51[1] = sub_23D6724CC;
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);

  return MEMORY[0x2822008C8](v53, v0 + 16, v52, v49);
}

uint64_t sub_23D6724CC()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    (*(v2 + 392))(*(v2 + 112), *(v2 + 88));
    v3 = sub_23D6729E0;
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 392))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = sub_23D672624;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D672624(uint64_t a1)
{
  v35 = v1;
  if (sub_23D685A00())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 272);
    v6 = *(v1 + 256);
    v5 = *(v1 + 264);
    v7 = *(v1 + 248);
    v8 = *(v1 + 64);
    (*(v1 + 328))(*(v1 + 304), *(v1 + 72), *(v1 + 280));
    sub_23D685770();
    (*(v6 + 16))(v5, v4, v7);
    v9 = v8;
    v10 = sub_23D685850();
    v11 = sub_23D685A70();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v1 + 264);
    v14 = *(v1 + 248);
    v15 = (*(v1 + 256) + 8);
    if (v12)
    {
      v33 = v11;
      v16 = *(v1 + 64);
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v17 = 136315394;
      v18 = v16;
      v19 = [v18 description];
      v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v22 = v21;

      v23 = sub_23D652534(v20, v22, &v34);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0], MEMORY[0x277CDC8A8]);
      v24 = sub_23D685CF0();
      v26 = v25;
      v27 = *v15;
      (*v15)(v13, v14);
      v28 = sub_23D652534(v24, v26, &v34);

      *(v17 + 14) = v28;
      _os_log_impl(&dword_23D62D000, v10, v33, "[%s]: running request %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v32, -1, -1);
      MEMORY[0x23EEE7580](v17, -1, -1);
    }

    else
    {

      v27 = *v15;
      (*v15)(v13, v14);
    }

    *(v1 + 352) = v27;
    v29 = swift_task_alloc();
    *(v1 + 360) = v29;
    *v29 = v1;
    v29[1] = sub_23D67168C;
    v30 = *(v1 + 272);
    v31 = *(v1 + 240);

    return MEMORY[0x28212BAC8](v31, v30);
  }
}

uint64_t sub_23D6729E0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23D672B08()
{
  v54 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 64);
  (*(v0 + 352))(*(v0 + 272), *(v0 + 248));
  v3 = v2;
  v4 = v1;
  v5 = sub_23D685850();
  v6 = sub_23D685A70();

  v7 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v8 = &selRef_bufferSize;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 64);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v16 = v15;

    v8 = &selRef_bufferSize;
    v17 = sub_23D652534(v14, v16, &v53);

    *(v10 + 4) = v17;
    v7 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v10 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&dword_23D62D000, v5, v6, "[%s]: session failed with %@", v10, 0x16u);
    sub_23D6598A4(v11, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x23EEE7580](v51, -1, -1);
    MEMORY[0x23EEE7580](v10, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 64);
  (*(v0 + 328))(*(v0 + 296), *(v0 + 72), *(v0 + 280));
  v21 = v20;
  v22 = sub_23D685850();
  v23 = sub_23D685A70();

  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 344);
  v26 = *(v0 + 296);
  v27 = *(v0 + 280);
  if (v24)
  {
    v52 = v23;
    v28 = *(v0 + 64);
    v49 = *(v0 + 344);
    v29 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v53 = v50;
    *v29 = *(v7 + 35);
    v30 = v28;
    v31 = [v30 v8[58]];
    v32 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v34 = v33;

    v35 = sub_23D652534(v32, v34, &v53);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    v36 = AccessibilitySoundRecognition.DetectorIdentifier.description.getter();
    v38 = v37;
    v49(v26, v27);
    v39 = sub_23D652534(v36, v38, &v53);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_23D62D000, v22, v52, "[%s]: Restarting sound recogntion task for identifier: %s.", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v50, -1, -1);
    MEMORY[0x23EEE7580](v29, -1, -1);
  }

  else
  {

    v25(v26, v27);
  }

  v41 = *(v0 + 96);
  v40 = *(v0 + 104);
  v42 = *(v0 + 88);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v43 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D685C80();
  v44 = *(v41 + 8);
  *(v0 + 392) = v44;
  *(v0 + 400) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44(v40, v42);
  v45 = swift_task_alloc();
  *(v0 + 408) = v45;
  *v45 = v0;
  v45[1] = sub_23D6724CC;
  v47 = *(v0 + 112);
  v46 = *(v0 + 120);

  return MEMORY[0x2822008C8](v47, v0 + 16, v46, v43);
}

uint64_t sub_23D673020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_23D685C60();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v9 = sub_23D685C70();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = sub_23D6857B0();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E0, &qword_23D6898B8);
  v7[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08E8, &qword_23D6898C0);
  v7[23] = v11;
  v7[24] = *(v11 - 8);
  v7[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E08F0, &unk_23D6898C8);
  v7[26] = v12;
  v7[27] = *(v12 - 8);
  v7[28] = swift_task_alloc();
  v13 = sub_23D6857A0();
  v7[29] = v13;
  v7[30] = *(v13 - 8);
  v7[31] = swift_task_alloc();
  v14 = sub_23D6856A0();
  v7[32] = v14;
  v7[33] = *(v14 - 8);
  v7[34] = swift_task_alloc();
  v15 = sub_23D685780();
  v7[35] = v15;
  v7[36] = *(v15 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23D6733D0, 0, 0);
}

uint64_t sub_23D6733D0()
{
  v54 = v0;
  if (qword_27E2E03D8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = sub_23D685860();
  v0[39] = __swift_project_value_buffer(v3, qword_27E2E0880);
  v4 = v2;
  v5 = v1;
  v6 = sub_23D685850();
  v7 = sub_23D685A70();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[8];
    v8 = v0[9];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v53[0] = v11;
    *v10 = 136315394;
    v12 = v9;
    v13 = [v12 description];
    v14 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v16 = v15;

    v17 = sub_23D652534(v14, v16, v53);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    v18 = [v8 identifier];
    v19 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v21 = v20;

    v22 = sub_23D652534(v19, v21, v53);

    *(v10 + 14) = v22;
    _os_log_impl(&dword_23D62D000, v6, v7, "[%s]: Starting custom sound recogntion task for identifier: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v11, -1, -1);
    MEMORY[0x23EEE7580](v10, -1, -1);
  }

  if (sub_23D685A00())
  {

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[32];
    v26 = *(v0[33] + 16);
    v0[40] = v26;
    v26(v0[34], v0[10], v25);
    sub_23D685760();
    v27 = v0[8];
    (*(v0[36] + 16))(v0[37], v0[38], v0[35]);
    v28 = v27;
    v29 = sub_23D685850();
    v30 = sub_23D685A70();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[37];
    v33 = v0[35];
    v34 = (v0[36] + 8);
    if (v31)
    {
      v52 = v30;
      v35 = v0[8];
      v36 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v53[0] = v51;
      *v36 = 136315394;
      v37 = v35;
      v38 = [v37 description];
      v39 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v41 = v40;

      v42 = sub_23D652534(v39, v41, v53);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0], MEMORY[0x277CDC8A8]);
      v43 = sub_23D685CF0();
      v45 = v44;
      v46 = *v34;
      (*v34)(v32, v33);
      v47 = sub_23D652534(v43, v45, v53);

      *(v36 + 14) = v47;
      _os_log_impl(&dword_23D62D000, v29, v52, "[%s]: running request %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v51, -1, -1);
      MEMORY[0x23EEE7580](v36, -1, -1);
    }

    else
    {

      v46 = *v34;
      (*v34)(v32, v33);
    }

    v0[41] = v46;
    v48 = swift_task_alloc();
    v0[42] = v48;
    *v48 = v0;
    v48[1] = sub_23D673DCC;
    v49 = v0[38];
    v50 = v0[31];

    return MEMORY[0x28212BAC8](v50, v49);
  }
}

uint64_t sub_23D673DCC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_23D67564C;
  }

  else
  {
    v2 = sub_23D673EE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23D673EE0()
{
  sub_23D685790();
  sub_23D685820();
  v1 = sub_23D67A5C4();
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_23D673FB4;
  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_23D673FB4()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_23D6745D4;
  }

  else
  {
    v2 = sub_23D6740C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23D6740C8()
{
  v50 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v48 = *(v0 + 328);
    v4 = *(v0 + 304);
    v5 = *(v0 + 280);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v6, v8);
    v48(v4, v5);
    v12 = *(v0 + 72);
    v13 = *(v0 + 64);
    v14 = v12;
    v15 = sub_23D685850();
    v16 = sub_23D685A70();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 64);
      v17 = *(v0 + 72);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49 = v20;
      *v19 = 136315394;
      v21 = v18;
      v22 = [v21 description];
      v23 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v25 = v24;

      v26 = sub_23D652534(v23, v25, &v49);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2080;
      v27 = [v17 identifier];
      v28 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v30 = v29;

      v31 = sub_23D652534(v28, v30, &v49);

      *(v19 + 14) = v31;
      _os_log_impl(&dword_23D62D000, v15, v16, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v20, -1, -1);
      MEMORY[0x23EEE7580](v19, -1, -1);
    }

    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    v34 = *(v0 + 96);
    sub_23D685D50();
    *(v0 + 40) = xmmword_23D6896C0;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v35 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_23D685D30();
    sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_23D685C80();
    v36 = *(v33 + 8);
    *(v0 + 368) = v36;
    *(v0 + 376) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v32, v34);
    v37 = swift_task_alloc();
    *(v0 + 384) = v37;
    *v37 = v0;
    v37[1] = sub_23D674BAC;
    v39 = *(v0 + 120);
    v38 = *(v0 + 128);

    return MEMORY[0x2822008C8](v39, v0 + 16, v38, v35);
  }

  else
  {
    v40 = *(v0 + 168);
    v41 = *(v0 + 88);
    v42 = *(v0 + 64);
    (*(v3 + 32))(v40, v1, v2);
    (*((*MEMORY[0x277D85000] & *v42) + 0x140))(v40, v41);
    (*(v3 + 8))(v40, v2);
    v43 = sub_23D67A5C4();
    v44 = swift_task_alloc();
    *(v0 + 352) = v44;
    *v44 = v0;
    v44[1] = sub_23D673FB4;
    v45 = *(v0 + 176);
    v46 = *(v0 + 184);

    return MEMORY[0x282200308](v45, v46, v43);
  }
}

uint64_t sub_23D6745D4()
{
  *(v0 + 56) = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0740, &qword_23D689610);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_23D674668, 0, 0);
}

uint64_t sub_23D674668()
{
  v59 = v0;
  v56 = *(v0 + 328);
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v56(v1, v2);
  v9 = *(v0 + 360);
  v10 = *(v0 + 64);
  v11 = v9;
  v12 = sub_23D685850();
  v13 = sub_23D685A70();

  v14 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v15 = &selRef_bufferSize;
  if (os_log_type_enabled(v12, v13))
  {
    v16 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v17 = 136315394;
    v19 = v16;
    v20 = [v19 description];
    v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v23 = v22;

    v15 = &selRef_bufferSize;
    v24 = sub_23D652534(v21, v23, &v58);

    *(v17 + 4) = v24;
    v14 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v17 + 12) = 2112;
    v25 = v9;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v26;
    *v18 = v26;
    _os_log_impl(&dword_23D62D000, v12, v13, "[%s]: session failed with %@", v17, 0x16u);
    sub_23D6598A4(v18, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23EEE7580](v57, -1, -1);
    MEMORY[0x23EEE7580](v17, -1, -1);
  }

  else
  {
  }

  v27 = *(v0 + 72);
  v28 = *(v0 + 64);
  v29 = v27;
  v30 = sub_23D685850();
  v31 = sub_23D685A70();

  if (os_log_type_enabled(v30, v31))
  {
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v58 = v35;
    *v34 = *(v14 + 35);
    v36 = v33;
    v37 = [v36 v15[58]];
    v38 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v40 = v39;

    v41 = sub_23D652534(v38, v40, &v58);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = [v32 identifier];
    v43 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v45 = v44;

    v46 = sub_23D652534(v43, v45, &v58);

    *(v34 + 14) = v46;
    _os_log_impl(&dword_23D62D000, v30, v31, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v35, -1, -1);
    MEMORY[0x23EEE7580](v34, -1, -1);
  }

  v48 = *(v0 + 104);
  v47 = *(v0 + 112);
  v49 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v50 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D685C80();
  v51 = *(v48 + 8);
  *(v0 + 368) = v51;
  *(v0 + 376) = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v47, v49);
  v52 = swift_task_alloc();
  *(v0 + 384) = v52;
  *v52 = v0;
  v52[1] = sub_23D674BAC;
  v54 = *(v0 + 120);
  v53 = *(v0 + 128);

  return MEMORY[0x2822008C8](v54, v0 + 16, v53, v50);
}

uint64_t sub_23D674BAC()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    v3 = sub_23D67553C;
  }

  else
  {
    v5 = *(v2 + 136);
    v4 = *(v2 + 144);
    v6 = *(v2 + 128);
    (*(v2 + 368))(*(v2 + 120), *(v2 + 96));
    (*(v5 + 8))(v4, v6);
    v3 = sub_23D674D04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23D674D04(uint64_t a1)
{
  v78 = v1;
  if (sub_23D685A00())
  {

    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = *(v1 + 392);
    (*(v1 + 320))(*(v1 + 272), *(v1 + 80), *(v1 + 256));
    sub_23D685760();
    if (v4)
    {
      v5 = *(v1 + 64);
      v6 = v4;
      v7 = sub_23D685850();
      v8 = sub_23D685A70();

      v9 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
      v10 = &selRef_bufferSize;
      if (os_log_type_enabled(v7, v8))
      {
        v11 = *(v1 + 64);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v77[0] = v75;
        *v12 = 136315394;
        v14 = v11;
        v15 = [v14 description];
        v16 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v18 = v17;

        v10 = &selRef_bufferSize;
        v19 = sub_23D652534(v16, v18, v77);

        *(v12 + 4) = v19;
        v9 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
        *(v12 + 12) = 2112;
        v20 = v4;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 14) = v21;
        *v13 = v21;
        _os_log_impl(&dword_23D62D000, v7, v8, "[%s]: session failed with %@", v12, 0x16u);
        sub_23D6598A4(v13, &qword_27E2E06F0, &qword_23D6893C0);
        MEMORY[0x23EEE7580](v13, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x23EEE7580](v75, -1, -1);
        MEMORY[0x23EEE7580](v12, -1, -1);
      }

      else
      {
      }

      v43 = *(v1 + 72);
      v44 = *(v1 + 64);
      v45 = v43;
      v46 = sub_23D685850();
      v47 = sub_23D685A70();

      if (os_log_type_enabled(v46, v47))
      {
        v49 = *(v1 + 64);
        v48 = *(v1 + 72);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v77[0] = v51;
        *v50 = *(v9 + 35);
        v52 = v49;
        v53 = [v52 v10[58]];
        v54 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v56 = v55;

        v57 = sub_23D652534(v54, v56, v77);

        *(v50 + 4) = v57;
        *(v50 + 12) = 2080;
        v58 = [v48 identifier];
        v59 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v61 = v60;

        v62 = sub_23D652534(v59, v61, v77);

        *(v50 + 14) = v62;
        _os_log_impl(&dword_23D62D000, v46, v47, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEE7580](v51, -1, -1);
        MEMORY[0x23EEE7580](v50, -1, -1);
      }

      v64 = *(v1 + 104);
      v63 = *(v1 + 112);
      v65 = *(v1 + 96);
      sub_23D685D50();
      *(v1 + 40) = xmmword_23D6896C0;
      *(v1 + 24) = 0;
      *(v1 + 16) = 0;
      *(v1 + 32) = 1;
      v66 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
      sub_23D685D30();
      sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
      sub_23D685C80();
      v67 = *(v64 + 8);
      *(v1 + 368) = v67;
      *(v1 + 376) = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v67(v63, v65);
      v68 = swift_task_alloc();
      *(v1 + 384) = v68;
      *v68 = v1;
      v68[1] = sub_23D674BAC;
      v70 = *(v1 + 120);
      v69 = *(v1 + 128);

      return MEMORY[0x2822008C8](v70, v1 + 16, v69, v66);
    }

    else
    {
      v22 = *(v1 + 64);
      (*(*(v1 + 288) + 16))(*(v1 + 296), *(v1 + 304), *(v1 + 280));
      v23 = v22;
      v24 = sub_23D685850();
      v25 = sub_23D685A70();

      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v1 + 296);
      v28 = *(v1 + 280);
      v29 = (*(v1 + 288) + 8);
      if (v26)
      {
        v76 = v25;
        v30 = *(v1 + 64);
        v31 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v77[0] = v74;
        *v31 = 136315394;
        v32 = v30;
        v33 = [v32 description];
        v34 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
        v36 = v35;

        v37 = sub_23D652534(v34, v36, v77);

        *(v31 + 4) = v37;
        *(v31 + 12) = 2080;
        sub_23D67A7AC(&qword_27E2E0900, MEMORY[0x277CDC8A0], MEMORY[0x277CDC8A8]);
        v38 = sub_23D685CF0();
        v40 = v39;
        v41 = *v29;
        (*v29)(v27, v28);
        v42 = sub_23D652534(v38, v40, v77);

        *(v31 + 14) = v42;
        _os_log_impl(&dword_23D62D000, v24, v76, "[%s]: running request %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEE7580](v74, -1, -1);
        MEMORY[0x23EEE7580](v31, -1, -1);
      }

      else
      {

        v41 = *v29;
        (*v29)(v27, v28);
      }

      *(v1 + 328) = v41;
      v71 = swift_task_alloc();
      *(v1 + 336) = v71;
      *v71 = v1;
      v71[1] = sub_23D673DCC;
      v72 = *(v1 + 304);
      v73 = *(v1 + 248);

      return MEMORY[0x28212BAC8](v73, v72);
    }
  }
}

uint64_t sub_23D67553C()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23D67564C()
{
  v50 = v0;
  (*(v0 + 328))(*(v0 + 304), *(v0 + 280));
  v1 = *(v0 + 344);
  v2 = *(v0 + 64);
  v3 = v1;
  v4 = sub_23D685850();
  v5 = sub_23D685A70();

  v6 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
  v7 = &selRef_bufferSize;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 64);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v9 = 136315394;
    v11 = v8;
    v12 = [v11 description];
    v13 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v15 = v14;

    v7 = &selRef_bufferSize;
    v16 = sub_23D652534(v13, v15, &v49);

    *(v9 + 4) = v16;
    v6 = "@(#)PROGRAM:AXSoundDetectionUI  PROJECT:Hearing-1\n";
    *(v9 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_23D62D000, v4, v5, "[%s]: session failed with %@", v9, 0x16u);
    sub_23D6598A4(v10, &qword_27E2E06F0, &qword_23D6893C0);
    MEMORY[0x23EEE7580](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x23EEE7580](v48, -1, -1);
    MEMORY[0x23EEE7580](v9, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 72);
  v20 = *(v0 + 64);
  v21 = v19;
  v22 = sub_23D685850();
  v23 = sub_23D685A70();

  if (os_log_type_enabled(v22, v23))
  {
    v25 = *(v0 + 64);
    v24 = *(v0 + 72);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v27;
    *v26 = *(v6 + 35);
    v28 = v25;
    v29 = [v28 v7[58]];
    v30 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v32 = v31;

    v33 = sub_23D652534(v30, v32, &v49);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = [v24 identifier];
    v35 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v37 = v36;

    v38 = sub_23D652534(v35, v37, &v49);

    *(v26 + 14) = v38;
    _os_log_impl(&dword_23D62D000, v22, v23, "[%s]: Restarting custom sound recogntion task for identifier: %s.", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v27, -1, -1);
    MEMORY[0x23EEE7580](v26, -1, -1);
  }

  v40 = *(v0 + 104);
  v39 = *(v0 + 112);
  v41 = *(v0 + 96);
  sub_23D685D50();
  *(v0 + 40) = xmmword_23D6896C0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v42 = sub_23D67A7AC(&qword_27E2E07A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_23D685D30();
  sub_23D67A7AC(&qword_27E2E07A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_23D685C80();
  v43 = *(v40 + 8);
  *(v0 + 368) = v43;
  *(v0 + 376) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v39, v41);
  v44 = swift_task_alloc();
  *(v0 + 384) = v44;
  *v44 = v0;
  v44[1] = sub_23D674BAC;
  v46 = *(v0 + 120);
  v45 = *(v0 + 128);

  return MEMORY[0x2822008C8](v46, v0 + 16, v45, v42);
}

void sub_23D675B2C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_23D678F74(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_23D67A758();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_23D685AF0();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_23D685B00();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.identifier.getter()
{
  v1 = sub_23D685730();
  v61 = *(v1 - 8);
  v62 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D685750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  v11 = sub_23D685740();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = &v57 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v63 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = *(v12 + 16);
  v64 = v0;
  v22 = v0;
  v23 = v21;
  v21(&v57 - v19, v22, v11);
  v24 = (*(v12 + 88))(v20, v11);
  if (v24 == *MEMORY[0x277CDC810])
  {
    (*(v12 + 96))(v20, v11);
    (*(v5 + 32))(v10, v20, v4);
    (*(v5 + 16))(v8, v10, v4);
    v25 = AccessibilitySoundRecognition.BuiltInDetectorIdentifier.listenType.getter();
    if (v25)
    {
      v26 = v25;
      v27 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    }

    else
    {
      v27 = 0x6E776F6E6B6E55;
    }

    v55 = *(v5 + 8);
    v55(v8, v4);
    v55(v10, v4);
  }

  else if (v24 == *MEMORY[0x277CDC808])
  {
    (*(v12 + 96))(v20, v11);
    v29 = v61;
    v28 = v62;
    (v61[4].isa)(v3, v20, v62);
    v27 = sub_23D685710();
    (v29[1].isa)(v3, v28);
  }

  else
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v30 = sub_23D685860();
    __swift_project_value_buffer(v30, qword_27E2E0868);
    v32 = v63;
    v31 = v64;
    v33 = v23;
    v23(v63, v64, v11);
    v34 = v65;
    v23(v65, v31, v11);
    v35 = sub_23D685850();
    v36 = sub_23D685A60();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      LODWORD(v62) = v36;
      v38 = v37;
      v64 = swift_slowAlloc();
      v66 = v64;
      *v38 = 136315394;
      v39 = v60;
      v33(v60, v32, v11);
      v40 = sub_23D662FD0(v39);
      v41 = v32;
      v42 = v40;
      v44 = v43;
      v59 = v33;
      v45 = *(v12 + 8);
      v61 = v35;
      v45(v41, v11);
      v46 = sub_23D652534(v42, v44, &v66);

      v58 = v38;
      *(v38 + 4) = v46;
      *(v38 + 12) = 2080;
      v47 = v65;
      v59(v39, v65, v11);
      v48 = sub_23D662FD0(v39);
      v50 = v49;
      v45(v47, v11);
      v51 = sub_23D652534(v48, v50, &v66);

      v52 = v58;
      *(v58 + 14) = v51;
      v53 = v61;
      _os_log_impl(&dword_23D62D000, v61, v62, "[%s]: FATAL ERROR - DetectorIdentifier: %s, is unknown and not handled.", v52, 0x16u);
      v54 = v64;
      swift_arrayDestroy();
      MEMORY[0x23EEE7580](v54, -1, -1);
      MEMORY[0x23EEE7580](v52, -1, -1);
    }

    else
    {

      v45 = *(v12 + 8);
      v45(v34, v11);
      v45(v32, v11);
    }

    v45(v20, v11);
    return 0;
  }

  return v27;
}

uint64_t AccessibilitySoundRecognition.DetectorIdentifier.description.getter()
{
  v1 = v0;
  v2 = sub_23D685730();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D685750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D685740();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277CDC810])
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    v15 = AccessibilitySoundRecognition.BuiltInDetectorIdentifier.listenType.getter();
    if (v15)
    {
      v16 = v15;
      v17 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    }

    else
    {
      v17 = 0x6E776F6E6B6E55;
    }

    (*(v7 + 8))(v9, v6);
  }

  else if (v14 == *MEMORY[0x277CDC808])
  {
    (*(v11 + 96))(v13, v10);
    v18 = (*(v3 + 32))(v5, v13, v2);
    v17 = MEMORY[0x23EEE64B0](v18);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v17 = 0x6E776F6E6B6E55;
    (*(v11 + 8))(v13, v10);
  }

  return v17;
}

void *sub_23D67671C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0908, &qword_23D6898E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_23D6767A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
    v2 = sub_23D685BC0();
    v15 = v2;
    sub_23D685B40();
    if (sub_23D685B80())
    {
      sub_23D67A758();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_23D676BE4(v9 + 1);
        }

        v2 = v15;
        result = sub_23D685AF0();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_23D685B80());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23D676984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0580, &unk_23D689900);
  result = sub_23D685BB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_23D685DA0();
      sub_23D685940();
      result = sub_23D685DC0();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D676BE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
  result = sub_23D685BB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_23D685AF0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
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
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23D676E0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0558, &unk_23D689340);
  result = sub_23D685BB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      sub_23D685DA0();
      sub_23D685940();
      v18 = sub_23D685DC0();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23D677088(uint64_t a1, uint64_t a2)
{
  sub_23D685AF0();
  result = sub_23D685B30();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_23D67710C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0580, &unk_23D689900);
  v2 = *v0;
  v3 = sub_23D685BA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_23D677268()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
  v2 = *v0;
  v3 = sub_23D685BA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_23D6773B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0558, &unk_23D689340);
  v2 = *v0;
  v3 = sub_23D685BA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23D677508(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_23D685B50();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23D67671C(v2, 0);

    v1 = sub_23D679074(&v5, v3 + 4, v2, v1);
    sub_23D67A7A4(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

unint64_t sub_23D6775B8(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_23D685B50();
    }

    result = sub_23D685C00();
    *v2 = result;
  }

  return result;
}

void sub_23D677674(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (!sub_23D685B50())
    {
      return;
    }
  }

  else if (!*(*v2 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23D685B40();
    sub_23D67A758();
    sub_23D67A7AC(&qword_27E2E0568, sub_23D67A758, MEMORY[0x277D85378]);
    sub_23D685A30();
    a1 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
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

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
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

LABEL_16:
    v15 = (v13 - 1) & v13;
    v16 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_22:
      sub_23D67A7A4(a1);
      return;
    }

    while (1)
    {
      v17 = sub_23D677F2C(v16);

      v6 = v14;
      v7 = v15;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_23D685B80())
      {
        sub_23D67A758();
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_22;
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
      goto LABEL_22;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_23D6778A4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v83 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23D685B40();
    sub_23D67A758();
    sub_23D67A7AC(&qword_27E2E0568, sub_23D67A758, MEMORY[0x277D85378]);
    sub_23D685A30();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
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

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = (v4 + 56);
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_23D685B80();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      sub_23D67A758();
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = sub_23D685AF0();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = sub_23D67A758();
  v27 = *(*(v4 + 48) + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = sub_23D685B00();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x28223BE20](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = sub_23D685B80();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_23D685AF0();
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = sub_23D685B00();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_23D678330(v63, v61, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_23D6780B4(v57, v61, v4, v7, &v73);
  v59 = v58;

  MEMORY[0x23EEE7580](v57, -1, -1);
  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_23D67A7A4(v53);
  return v4;
}

uint64_t sub_23D677F2C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_23D685B90();

    if (v6)
    {
      v7 = sub_23D678524(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_23D67A758();
  v10 = sub_23D685AF0();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_23D685B00();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23D677268();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_23D67867C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

void sub_23D6780B4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_23D685B80())
          {
            goto LABEL_30;
          }

          sub_23D67A758();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_23D678330(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_23D685AF0();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_23D67A758();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_23D685B00();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_23D685B00();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_23D678330(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0570, &unk_23D6898F0);
  result = sub_23D685BD0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_23D685AF0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23D678524(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_23D685B50();
  v5 = swift_unknownObjectRetain();
  v6 = sub_23D6767A4(v5, v4);
  v15 = v6;

  v7 = sub_23D685AF0();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_23D67A758();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_23D685B00();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_23D67867C(v9);
  result = sub_23D685B00();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23D67867C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23D685B20();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_23D685AF0();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void sub_23D67881C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D685B20() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_23D685AF0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_23D6789A8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D685B20() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_23D685AF0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void *sub_23D678B34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0750, &qword_23D689620);
  v2 = *v0;
  v3 = sub_23D685CA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23D678C98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0760, &unk_23D689630);
  v2 = *v0;
  v3 = sub_23D685CA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23D678E10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E0A40, &qword_23D689618);
  v2 = *v0;
  v3 = sub_23D685CA0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_23D678F74(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_23D685B50())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_23D685B90();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_23D679074(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_23D685B40();
  sub_23D67A758();
  sub_23D67A7AC(&qword_27E2E0568, sub_23D67A758, MEMORY[0x277D85378]);
  result = sub_23D685A30();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_23D685B80())
      {
        goto LABEL_30;
      }

      sub_23D67A758();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_23D6792A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23D685B50();
  }

  return sub_23D685C00();
}

unint64_t sub_23D679304(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_23D685B50();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23EEE6980](v3, a1);
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    v7 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v9 = v8;

    v10 = [a2 identifier];
    v11 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = sub_23D685D00();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_23D6794A0(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_23D679304(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_23D685B50();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == sub_23D685B50())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x23EEE6980](v10, v7);
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 identifier];
    v14 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v16 = v15;

    v3 = v5;
    v17 = [v5 identifier];
    v18 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = sub_23D685D00();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23EEE6980](v33, v7);
        v23 = MEMORY[0x23EEE6980](v10, v7);
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_23D6792A0(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_23D6792A0(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
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
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_23D685B50();
}

uint64_t sub_23D6797B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_23D67A758();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_23D685B50();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_23D685B50();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_23D6798B0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23D685B50();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_23D685B50();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_23D6775B8(result, 1);

  return sub_23D6797B0(v5, v3, 0);
}

uint64_t sub_23D679988()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v1[v2] != 1)
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v42 = sub_23D685860();
    __swift_project_value_buffer(v42, qword_27E2E0868);
    v43 = v1;
    v44 = sub_23D685850();
    v45 = sub_23D685A60();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63[0] = v47;
      *v46 = 136315138;
      v48 = v43;
      v49 = [v48 description];
      v50 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v52 = v51;

      v53 = sub_23D652534(v50, v52, v63);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_23D62D000, v44, v45, "[%s]: trying to start sound analysis while the feature is not enabled. Need to enable it first.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23EEE7580](v47, -1, -1);
      MEMORY[0x23EEE7580](v46, -1, -1);
    }

    sub_23D67A7F4();
    swift_allocError();
    *v54 = 0;
    return swift_willThrow();
  }

  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v60 = result - 1;
      if (result < 1)
      {
        __break(1u);
LABEL_44:
        sub_23D67A758();
        result = sub_23D685D20();
        __break(1u);
        return result;
      }

      v61 = v4 & 0xC000000000000001;
      v6 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentTasks;

      swift_beginAccess();
      v7 = 0;
      v59 = v6;
      if ((v4 & 0xC000000000000001) != 0)
      {
LABEL_6:
        v8 = MEMORY[0x23EEE6980](v7, v4);
        goto LABEL_8;
      }

      while (1)
      {
        v8 = *(v4 + 8 * v7 + 32);
LABEL_8:
        v9 = v8;
        if (*(*&v1[v6] + 16))
        {

          sub_23D67EE10(v9);
          if (v10)
          {

            goto LABEL_29;
          }
        }

        v11 = sub_23D66EC9C(v9);
        if (v11)
        {
          break;
        }

        if (qword_27E2E03D0 != -1)
        {
          swift_once();
        }

        v24 = sub_23D685860();
        __swift_project_value_buffer(v24, qword_27E2E0868);
        v25 = v9;
        v26 = v1;
        v27 = sub_23D685850();
        v28 = sub_23D685A70();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v62[0] = v58;
          *v29 = 136315394;
          v30 = v26;
          v56 = v28;
          v31 = v4;
          v32 = [v30 description];
          v33 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
          log = v27;
          v35 = v34;

          v4 = v31;
          v36 = sub_23D652534(v33, v35, v62);

          *(v29 + 4) = v36;
          v6 = v59;
          *(v29 + 12) = 2112;
          *(v29 + 14) = v25;
          *v57 = v25;
          v37 = v25;
          _os_log_impl(&dword_23D62D000, log, v56, "[%s]: unable to create a task for detector: %@", v29, 0x16u);
          sub_23D6598A4(v57, &qword_27E2E06F0, &qword_23D6893C0);
          MEMORY[0x23EEE7580](v57, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v58);
          MEMORY[0x23EEE7580](v58, -1, -1);
          MEMORY[0x23EEE7580](v29, -1, -1);
        }

        else
        {
        }

LABEL_29:
        if (v60 == v7)
        {
        }

        ++v7;
        if (v61)
        {
          goto LABEL_6;
        }
      }

      v12 = v11;
      swift_beginAccess();

      v13 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *&v1[v6];
      v15 = v64;
      v16 = sub_23D67EE10(v13);
      v18 = v15[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (!v20)
      {
        break;
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = sub_23D685B50();
      if (!result)
      {
        return result;
      }
    }

    v22 = v17;
    if (v15[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v16;
        sub_23D678B34();
        v16 = v39;
        v38 = v64;
        if (v22)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_23D67EFBC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_23D67EE10(v13);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_44;
      }
    }

    v38 = v64;
    if (v22)
    {
LABEL_23:
      *(v38[7] + 8 * v16) = v12;

LABEL_28:
      v6 = v59;
      *&v1[v59] = v38;
      swift_endAccess();

      goto LABEL_29;
    }

LABEL_26:
    v38[(v16 >> 6) + 8] |= 1 << v16;
    *(v38[6] + 8 * v16) = v13;
    *(v38[7] + 8 * v16) = v12;
    v40 = v38[2];
    v20 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v20)
    {
      goto LABEL_40;
    }

    v38[2] = v41;
    goto LABEL_28;
  }

  return result;
}

void sub_23D679FD4()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_isEnabled;
  swift_beginAccess();
  if (v0[v1])
  {
    if (qword_27E2E03D0 != -1)
    {
      swift_once();
    }

    v2 = sub_23D685860();
    __swift_project_value_buffer(v2, qword_27E2E0868);
    v3 = v0;
    v4 = sub_23D685850();
    v5 = sub_23D685A60();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
      v12 = v11;

      v13 = sub_23D652534(v10, v12, v21);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_23D62D000, v4, v5, "[%s]: trying to stop sound analysis while the feature is enabled. Need to disable it first.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEE7580](v7, -1, -1);
      MEMORY[0x23EEE7580](v6, -1, -1);
    }

    sub_23D67A7F4();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    v15 = OBJC_IVAR____TtC18AXSoundDetectionUI38AXSDSecureBaseControllerImplementation_currentDetectors;
    swift_beginAccess();
    v16 = *&v0[v15];
    if (v16 >> 62)
    {
      v17 = sub_23D685B50();
      if (!v17)
      {
        return;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        return;
      }
    }

    if (v17 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x23EEE6980](i, v16);
        }

        else
        {
          v19 = *(v16 + 8 * i + 32);
        }

        v20 = v19;
        sub_23D66FA40(v19);
      }
    }
  }
}

uint64_t sub_23D67A41C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_23D6856A0() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_23D67A9FC;

  return sub_23D673020(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_23D67A554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E0780, "Ԍ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D67A5C4()
{
  result = qword_27E2E08F8;
  if (!qword_27E2E08F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E08E8, &qword_23D6898C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E08F8);
  }

  return result;
}

uint64_t sub_23D67A628(uint64_t a1)
{
  v4 = *(sub_23D685740() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D667DA8;

  return sub_23D670CF4(a1, v6, v7, v8, v1 + v5, v9);
}

unint64_t sub_23D67A758()
{
  result = qword_27E2E0560;
  if (!qword_27E2E0560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E0560);
  }

  return result;
}

uint64_t sub_23D67A7AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23D67A7F4()
{
  result = qword_27E2E0910;
  if (!qword_27E2E0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E0910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SoundRecognitionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SoundRecognitionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D67A9A8()
{
  result = qword_27E2E0918;
  if (!qword_27E2E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E0918);
  }

  return result;
}

uint64_t type metadata accessor for AXSDError(uint64_t a1)
{
  result = qword_27E2E0928;
  if (!qword_27E2E0928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D67AA80(uint64_t a1)
{
  sub_23D67AAD8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_23D67AAD8()
{
  if (!qword_27E2E0938)
  {
    v0 = sub_23D6856A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2E0938);
    }
  }
}

id sub_23D67AB6C()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_23D67AC20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_23D67AC78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_23D67AE48()
{
  v1 = OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager;
  swift_beginAccess();
  v2 = [*(v0 + v1) currentDetectors];
  type metadata accessor for AXSDSoundDetectionType();
  v3 = sub_23D685980();

  v4 = sub_23D6549C0(v3);

  return v4;
}

id sub_23D67AF7C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 shouldBeListeningForSoundRecognitionSystemSounds];

  return v1;
}

id sub_23D67AFD4()
{
  v0 = [objc_allocWithZone(AXSDDetectorManager) init];
  v1 = [objc_allocWithZone(AXSDDetectorQueueManager) init];
  v2 = objc_allocWithZone(type metadata accessor for AXSDNSControllerImplementation());
  v3 = v0;
  v4 = v1;
  v5 = AXSDNSControllerImplementation.init(detectorManager:queueManager:)(v3, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v6 = v5;
  [v3 setDelegate_];
  [v4 setDelegate_];

  return v6;
}

id AXSDNSControllerImplementation.init(detectorManager:queueManager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recordingManager] = 0;
  *&v2[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_recentDetections] = 0;
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v6 = sub_23D685860();
  __swift_project_value_buffer(v6, qword_27E2E0868);
  v7 = sub_23D685850();
  v8 = sub_23D685A50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23D62D000, v7, v8, "Initializing NS Sound Detection Controller", v9, 2u);
    MEMORY[0x23EEE7580](v9, -1, -1);
  }

  *&v3[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorManager] = a1;
  *&v3[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager] = a2;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for AXSDNSControllerImplementation();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_23D67B2F4(void *a1, char *a2, const char **a3)
{
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v7 = sub_23D685860();
  __swift_project_value_buffer(v7, qword_27E2E0868);
  v8 = v3;
  v9 = a1;
  v10 = sub_23D685850();
  v11 = sub_23D685A70();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = v8;
    v15 = [v14 description];
    format = a2;
    v27 = a3;
    v16 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v18 = v17;

    v19 = sub_23D652534(v16, v18, &v28);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    v20 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v22 = sub_23D652534(v20, v21, &v28);
    a3 = v27;

    *(v12 + 14) = v22;
    _os_log_impl(&dword_23D62D000, v10, v11, format, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEE7580](v13, -1, -1);
    MEMORY[0x23EEE7580](v12, -1, -1);
  }

  v23 = *&v8[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager];
  v24 = *a3;

  return [v23 v24];
}

uint64_t sub_23D67B568()
{
  v1 = sub_23D685880();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23D6858A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v9 = sub_23D685860();
  __swift_project_value_buffer(v9, qword_27E2E0868);
  v10 = v0;
  v11 = sub_23D685850();
  v12 = sub_23D685A70();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v13 = 136315138;
    v14 = v10;
    v37 = v8;
    v15 = v14;
    v16 = [v14 description];
    v34 = v12;
    v17 = v4;
    v18 = v5;
    v19 = v1;
    v20 = v16;
    v21 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
    v36 = v10;
    v22 = v21;
    v38 = v6;
    v23 = v2;
    v25 = v24;

    v8 = v37;
    v1 = v19;
    v5 = v18;
    v4 = v17;
    v26 = sub_23D652534(v22, v25, aBlock);
    v2 = v23;
    v6 = v38;

    *(v13 + 4) = v26;
    v10 = v36;
    _os_log_impl(&dword_23D62D000, v11, v34, "[%s]: removing all listen types", v13, 0xCu);
    v27 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23EEE7580](v27, -1, -1);
    MEMORY[0x23EEE7580](v13, -1, -1);
  }

  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v28 = sub_23D685AA0();
  v29 = swift_allocObject();
  *(v29 + 16) = v10;
  aBlock[4] = sub_23D67FFC4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_4;
  v30 = _Block_copy(aBlock);
  v31 = v10;

  sub_23D685890();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D65444C();
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v8, v4, v30);
  _Block_release(v30);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void _s18AXSoundDetectionUI30AXSDNSControllerImplementationC28assetsReadyAndDetectorsAddedyyF_0()
{
  v1 = v0;
  v2 = [v1 description];
  v3 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v5 = v4;

  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v6 = sub_23D685860();
  __swift_project_value_buffer(v6, qword_27E2E0868);

  v7 = sub_23D685850();
  v8 = sub_23D685A70();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23D652534(v3, v5, &v16);
    _os_log_impl(&dword_23D62D000, v7, v8, "[%s]: start listening", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEE7580](v10, -1, -1);
    MEMORY[0x23EEE7580](v9, -1, -1);
  }

  if ([*&v1[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager] prepareToListen])
  {

    sub_23D653BD8(v1, v1);
  }

  else
  {

    oslog = sub_23D685850();
    v11 = sub_23D685A70();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      v14 = sub_23D652534(v3, v5, &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_23D62D000, oslog, v11, "[%s]: detector queue manager not ready, returning", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23EEE7580](v13, -1, -1);
      MEMORY[0x23EEE7580](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_23D67BCC4()
{
  v1 = sub_23D685880();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D6858A0();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0;
  v9 = [v8 description];
  v10 = _sSo22AXSDSoundDetectionTypea07AXSoundB2UIE11descriptionSSvg_0();
  v12 = v11;

  if (qword_27E2E03D0 != -1)
  {
    swift_once();
  }

  v13 = sub_23D685860();
  __swift_project_value_buffer(v13, qword_27E2E0868);

  v14 = sub_23D685850();
  v15 = sub_23D685A70();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v2;
    v17 = v16;
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = sub_23D652534(v10, v12, aBlock);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_23D62D000, v14, v15, "[%s]: stop listening", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23EEE7580](v18, -1, -1);
    v20 = v17;
    v2 = v27;
    MEMORY[0x23EEE7580](v20, -1, -1);
  }

  else
  {
  }

  [*&v8[OBJC_IVAR____TtC18AXSoundDetectionUI30AXSDNSControllerImplementation_detectorQueueManager] stopListening];
  sub_23D654A7C(0, &qword_27E2E07D0, 0x277D85C78);
  v21 = sub_23D685AA0();
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  aBlock[4] = sub_23D67FFE8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D650AF8;
  aBlock[3] = &block_descriptor_6_1;
  v23 = _Block_copy(aBlock);
  v24 = v8;

  sub_23D685890();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D67FFF0(&qword_27E2E0430, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2E06E0, &unk_23D689130);
  sub_23D65444C();
  sub_23D685B10();
  MEMORY[0x23EEE6840](0, v7, v4, v23);
  _Block_release(v23);

  (*(v2 + 8))(v4, v1);
  return (*(v28 + 8))(v7, v29);
}