uint64_t sub_241401BB0()
{
  v32 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v29 = *(v0 + 160);
    v30 = *(v0 + 112);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136315650;
    *(v11 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v31);
    *(v11 + 12) = 2080;
    sub_2414087E8(&qword_28120FCF0, MEMORY[0x277D0E238], MEMORY[0x277D0E240]);
    v27 = v9;
    v12 = sub_24140EEFC();
    v14 = v13;
    v15 = *(v10 + 8);
    v15(v8, v9);
    v16 = sub_2413F10BC(v12, v14, &v31);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = GMEligibilityContext.description.getter(v29);
    v19 = sub_2413F10BC(v17, v18, &v31);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Availability Provider says GM is unavailable: %s context: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v28, -1, -1);
    MEMORY[0x245CE6B00](v11, -1, -1);

    v15(v30, v9);
  }

  else
  {
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);

    v24 = *(v23 + 8);
    v24(v21, v22);
    v24(v20, v22);
  }

  [*(v0 + 144) updateWithContext_];
  swift_unknownObjectRelease();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_241401ED8(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_241401FD8, 0, 0);
}

uint64_t sub_241401FD8()
{
  v32 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v29 = *(v0 + 176);
    v30 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v11 = 136315650;
    *(v11 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v31);
    *(v11 + 12) = 2080;
    sub_2414087E8(&qword_27E542B80, MEMORY[0x277D0E058], MEMORY[0x277D0E060]);
    v27 = v9;
    v12 = sub_24140EEFC();
    v14 = v13;
    v15 = *(v10 + 8);
    v15(v8, v9);
    v16 = sub_2413F10BC(v12, v14, &v31);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = GMEligibilityContext.description.getter(v29);
    v19 = sub_2413F10BC(v17, v18, &v31);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Availability Provider says GM is restricted: %s context: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v28, -1, -1);
    MEMORY[0x245CE6B00](v11, -1, -1);

    v15(v30, v9);
  }

  else
  {
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 56);
    v23 = *(v0 + 64);

    v24 = *(v23 + 8);
    v24(v21, v22);
    v24(v20, v22);
  }

  [*(v0 + 144) updateWithContext_];
  swift_unknownObjectRelease();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_241402300(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24140E4BC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_24140E4DC();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24140241C, 0, 0);
}

uint64_t sub_24140241C()
{
  v67 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66 = v64;
    *v12 = 136315138;
    sub_24140E4CC();
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
    v13 = sub_24140ED3C();
    v15 = v14;

    (*(v10 + 8))(v9, v11);
    v16 = sub_2413F10BC(v13, v15, &v66);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2413B9000, v6, v7, "Unavailability reasons: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x245CE6B00](v64, -1, -1);
    MEMORY[0x245CE6B00](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[5];
  v17 = v0[6];
  v19 = v0[4];
  v20 = sub_24140E4CC();
  v21 = *(v18 + 104);
  v21(v17, *MEMORY[0x277D0E110], v19);
  v22 = sub_2413FE81C(v17, v20);

  v23 = *(v18 + 8);
  v23(v17, v19);
  if (v22)
  {
    v24 = 18;
LABEL_25:

    v63 = v0[1];

    return v63(v24);
  }

  v25 = v0[6];
  v26 = v0[4];
  v27 = sub_24140E4CC();
  v21(v25, *MEMORY[0x277D0E0B0], v26);
  v28 = sub_2413FE81C(v25, v27);

  v23(v25, v26);
  if (v28)
  {
    v24 = 19;
    goto LABEL_25;
  }

  v29 = v0[6];
  v30 = v0[4];
  v31 = sub_24140E4CC();
  v21(v29, *MEMORY[0x277D0E130], v30);
  v32 = sub_2413FE81C(v29, v31);

  v23(v29, v30);
  if (v32)
  {
    v24 = 13;
    goto LABEL_25;
  }

  v33 = v0[4];
  v34 = v0[5];
  v35 = sub_24140E4CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B90, &qword_2414137D0);
  v36 = *(v34 + 72);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_241413020;
  v39 = v38 + v37;
  v21(v39, *MEMORY[0x277D0E1A0], v33);
  v21(v39 + v36, *MEMORY[0x277D0E120], v33);
  v40 = sub_241405F38(v38, v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = *(v40 + 16);

  if (v41)
  {
    v24 = 14;
    goto LABEL_25;
  }

  v42 = v0[6];
  v43 = v0[4];
  v44 = sub_24140E4CC();
  v21(v42, *MEMORY[0x277D0E1B8], v43);
  v45 = sub_2413FE81C(v42, v44);

  v23(v42, v43);
  if (v45)
  {
    v24 = 15;
    goto LABEL_25;
  }

  v46 = v0[6];
  v47 = v0[4];
  v48 = sub_24140E4CC();
  v21(v46, *MEMORY[0x277D0E1D0], v47);
  v49 = sub_2413FE81C(v46, v48);

  v23(v46, v47);
  if (v49)
  {
    v24 = 16;
    goto LABEL_25;
  }

  v50 = v0[6];
  v51 = v0[4];
  v52 = sub_24140E4CC();
  v21(v50, *MEMORY[0x277D0E088], v51);
  v53 = sub_2413FE81C(v50, v52);

  v23(v50, v51);
  if (v53)
  {
    v24 = 17;
    goto LABEL_25;
  }

  v54 = v0[6];
  v55 = v0[4];
  v56 = sub_24140E4CC();
  v21(v54, *MEMORY[0x277D0E0F8], v55);
  v57 = sub_2413FE81C(v54, v56);

  v23(v54, v55);
  if ((v57 & 1) == 0)
  {
    v24 = sub_24140701C(v0[2]);
    goto LABEL_25;
  }

  v58 = (v0[3] + OBJC_IVAR___GMSpecifierController_enrollmentProvider);
  v59 = v58[3];
  v60 = v58[4];
  __swift_project_boxed_opaque_existential_1(v58, v59);
  v65 = (*(v60 + 16) + **(v60 + 16));
  v61 = swift_task_alloc();
  v0[10] = v61;
  *v61 = v0;
  v61[1] = sub_241402B78;

  return v65(v59, v60);
}

uint64_t sub_241402B78(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_241402C78, 0, 0);
}

uint64_t sub_241402C78()
{
  v1 = v0[11];
  v2 = sub_241406AA0(v0[2], v1);

  v3 = v0[1];

  return v3(v2);
}

void sub_241402D00()
{
  v1 = v0;
  v2 = sub_24140E50C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___GMSpecifierController_availability;
  swift_beginAccess();
  v26 = *(v3 + 16);
  v26(v5, &v0[v6], v2);
  v7 = sub_24140E4EC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v9 = sub_24140E72C();
    __swift_project_value_buffer(v9, qword_28120FD70);
    v25 = v1;
    v10 = sub_24140E70C();
    v11 = sub_24140ED6C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v24 = v8;
      v13 = v12;
      v23 = swift_slowAlloc();
      v27 = v23;
      *v13 = 136315394;
      *(v13 + 4) = sub_2413F10BC(0xD000000000000012, 0x800000024141A770, &v27);
      *(v13 + 12) = 1024;
      v26(v5, &v1[v6], v2);
      v14 = sub_24140E4EC();
      v24(v5, v2);
      *(v13 + 14) = v14 & 1;

      _os_log_impl(&dword_2413B9000, v10, v11, "%s Forcing download, isOkayToHaveAsset:%{BOOL}d.", v13, 0x12u);
      v15 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245CE6B00](v15, -1, -1);
      MEMORY[0x245CE6B00](v13, -1, -1);
    }

    else
    {
    }

    type metadata accessor for GMDownloadUtility();
    swift_initStaticObject();
    sub_2413F1BF8();
  }

  else
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v16 = sub_24140E72C();
    __swift_project_value_buffer(v16, qword_28120FD70);
    v25 = v1;
    v17 = sub_24140E70C();
    v18 = sub_24140ED6C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = v8;
      v20 = v19;
      v23 = swift_slowAlloc();
      v27 = v23;
      *v20 = 136315394;
      *(v20 + 4) = sub_2413F10BC(0xD000000000000012, 0x800000024141A770, &v27);
      *(v20 + 12) = 1024;
      v26(v5, &v1[v6], v2);
      v21 = sub_24140E4EC();
      v24(v5, v2);
      *(v20 + 14) = v21 & 1;

      _os_log_impl(&dword_2413B9000, v17, v18, "%s skipping download, isOkayToHaveAsset:%{BOOL}d.", v20, 0x12u);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245CE6B00](v22, -1, -1);
      MEMORY[0x245CE6B00](v20, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_241403144()
{
  v1 = OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  sub_24140869C(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2 & 1;
}

uint64_t sub_241403270(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_2414033E8()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_241403508;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B88, &qword_241413668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24140369C;
  v0[13] = &block_descriptor_1;
  v0[14] = v2;
  [v1 clearCFUWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241403508()
{
  v1 = *(*v0 + 48);
  *(*v0 + 144) = v1;
  if (v1)
  {
    v2 = sub_241403630;
  }

  else
  {
    v2 = sub_241403618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241403630()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24140369C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2414038BC(const void *a1)
{
  *(v1 + 144) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_241403924, 0, 0);
}

uint64_t sub_241403924()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_241403A44;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B88, &qword_241413668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24140369C;
  v0[13] = &block_descriptor_46;
  v0[14] = v2;
  [v1 clearCFUWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241403A44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_241403BC8;
  }

  else
  {
    v2 = sub_241403B54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241403B54()
{
  (*(*(v0 + 144) + 16))();
  _Block_release(*(v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241403BC8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  swift_willThrow();
  v3 = sub_24140E1BC();

  (*(v1 + 16))(v1, v3);
  _Block_release(*(v0 + 144));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241403C68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2413B9000, v6, v7, "Adding AFM Availability listeners", v8, 2u);
    MEMORY[0x245CE6B00](v8, -1, -1);
  }

  v9 = sub_24140ECDC();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v11 = v1;
  sub_2413E7730(0, 0, v4, &unk_241413800, v10);
}

uint64_t sub_241403E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_24140E50C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BB0, &qword_2414137F0);
  v4[12] = swift_task_alloc();
  v6 = sub_24140E56C();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = sub_24140E5DC();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = sub_24140E55C();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241404050, 0, 0);
}

uint64_t sub_241404050()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v14 = v0[13];
  v6 = (v0[6] + OBJC_IVAR___GMSpecifierController_availabilityProvider);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 32))(v7, v8);
  sub_24140E5BC();
  (*(v2 + 8))(v1, v3);
  sub_24140E54C();
  (*(v5 + 8))(v4, v14);
  v0[22] = OBJC_IVAR___GMSpecifierController_availability;
  v9 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8], MEMORY[0x277D0E2B0]);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = sub_2414041F4;
  v11 = v0[19];
  v12 = v0[12];

  return MEMORY[0x282200308](v12, v11, v9);
}

uint64_t sub_2414041F4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_241404738;
  }

  else
  {
    v2 = sub_241404308;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241404324()
{
  v37 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[11], v1, v2);
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[7];
    v9 = v0[8];
    v10 = sub_24140E72C();
    __swift_project_value_buffer(v10, qword_28120FD70);
    v11 = *(v9 + 16);
    v11(v6, v7, v8);
    v12 = sub_24140E70C();
    v13 = sub_24140ED6C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[10];
    v17 = v0[7];
    v16 = v0[8];
    if (v14)
    {
      v35 = v13;
      v18 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v18 = 136315394;
      *(v18 + 4) = sub_2413F10BC(0xD00000000000001BLL, 0x800000024141A7B0, &v36);
      *(v18 + 12) = 2080;
      sub_2414087E8(&qword_28120FCE8, MEMORY[0x277D0E280], MEMORY[0x277D0E290]);
      log = v12;
      v19 = v11;
      v20 = sub_24140EEFC();
      v22 = v21;
      v23 = *(v16 + 8);
      v23(v15, v17);
      v24 = v20;
      v11 = v19;
      v25 = sub_2413F10BC(v24, v22, &v36);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_2413B9000, log, v35, "%s Availability changes notification received. %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v34, -1, -1);
      MEMORY[0x245CE6B00](v18, -1, -1);
    }

    else
    {

      v23 = *(v16 + 8);
      v23(v15, v17);
    }

    v0[25] = v23;
    v26 = v0[22];
    v28 = v0[8];
    v27 = v0[9];
    v30 = v0[6];
    v29 = v0[7];
    v11(v27, v0[11], v29);
    swift_beginAccess();
    (*(v28 + 40))(v30 + v26, v27, v29);
    swift_endAccess();
    v31 = swift_task_alloc();
    v0[26] = v31;
    *v31 = v0;
    v31[1] = sub_2414047C4;
    v32 = v0[11];

    return sub_2414013B0(v32);
  }
}

uint64_t sub_241404738()
{
  *(v0 + 40) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2414047C4()
{

  return MEMORY[0x2822009F8](sub_2414048C0, 0, 0);
}

uint64_t sub_2414048C0()
{
  (*(v0 + 200))(*(v0 + 88), *(v0 + 56));
  v1 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8], MEMORY[0x277D0E2B0]);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_2414041F4;
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);

  return MEMORY[0x282200308](v4, v3, v1);
}

uint64_t sub_2414049B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v38 - v2;
  v4 = sub_24140E5DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24140E50C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v10 = sub_24140E72C();
  __swift_project_value_buffer(v10, qword_28120FD70);
  v11 = sub_24140E70C();
  v12 = sub_24140ED6C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2413B9000, v11, v12, "Adding ADM Availability listeners", v13, 2u);
    MEMORY[0x245CE6B00](v13, -1, -1);
  }

  v14 = v0;
  v15 = sub_24140E70C();
  v16 = sub_24140ED6C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v17;
    v42 = swift_slowAlloc();
    v45 = v42;
    *v17 = 136315138;
    v39 = v7;
    v18 = v4;
    v19 = v3;
    v20 = *&v14[OBJC_IVAR___GMSpecifierController_availabilityProvider + 24];
    v21 = *&v14[OBJC_IVAR___GMSpecifierController_availabilityProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v14[OBJC_IVAR___GMSpecifierController_availabilityProvider], v20);
    v22 = *(v21 + 40);
    v23 = v43;
    v40 = v16;
    v24 = v21;
    v3 = v19;
    v22(v20, v24);
    v25 = v44;
    sub_24140E53C();
    (*(v5 + 8))(v23, v18);
    sub_2414087E8(&qword_28120FCE8, MEMORY[0x277D0E280], MEMORY[0x277D0E290]);
    v26 = v39;
    v27 = sub_24140EEFC();
    v29 = v28;
    (*(v8 + 8))(v25, v26);
    v30 = sub_2413F10BC(v27, v29, &v45);

    v31 = v41;
    *(v41 + 1) = v30;
    v32 = v31;
    _os_log_impl(&dword_2413B9000, v15, v40, "current adm status: %s", v31, 0xCu);
    v33 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x245CE6B00](v33, -1, -1);
    MEMORY[0x245CE6B00](v32, -1, -1);
  }

  v34 = sub_24140ECDC();
  (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v14;
  v36 = v14;
  sub_2413E7730(0, 0, v3, &unk_2414137E8, v35);
}

uint64_t sub_241404E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_24140E50C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BB0, &qword_2414137F0);
  v4[11] = swift_task_alloc();
  v6 = sub_24140E56C();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = sub_24140E5DC();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = sub_24140E55C();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241405060, 0, 0);
}

uint64_t sub_241405060()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v14 = v0[12];
  v6 = v0[6];
  v7 = *(v6 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 24);
  v8 = *(v6 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR___GMSpecifierController_availabilityProvider), v7);
  (*(v8 + 40))(v7, v8);
  sub_24140E5BC();
  (*(v2 + 8))(v1, v3);
  sub_24140E54C();
  (*(v5 + 8))(v4, v14);
  v0[21] = OBJC_IVAR___GMSpecifierController_delegate;
  swift_beginAccess();
  v9 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8], MEMORY[0x277D0E2B0]);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_241405218;
  v11 = v0[18];
  v12 = v0[11];

  return MEMORY[0x282200308](v12, v11, v9);
}

uint64_t sub_241405218()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2414058BC;
  }

  else
  {
    v2 = sub_24140532C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241405348()
{
  v45 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    goto LABEL_15;
  }

  (*(v3 + 32))(v0[10], v1, v2);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = sub_24140E72C();
  __swift_project_value_buffer(v8, qword_28120FD70);
  (*(v6 + 16))(v4, v5, v7);
  v9 = sub_24140E70C();
  v10 = sub_24140ED6C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  if (v11)
  {
    v40 = v10;
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v15 = 136315394;
    *(v15 + 4) = sub_2413F10BC(0xD00000000000001CLL, 0x800000024141A790, &v44);
    *(v15 + 12) = 2080;
    sub_2414087E8(&qword_28120FCE8, MEMORY[0x277D0E280], MEMORY[0x277D0E290]);
    v16 = sub_24140EEFC();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v13, v14);
    v20 = sub_2413F10BC(v16, v18, &v44);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_2413B9000, v9, v40, "%s ADM availability changes notification received. %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v42, -1, -1);
    MEMORY[0x245CE6B00](v15, -1, -1);
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v13, v14);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = sub_24140E70C();
    v29 = sub_24140ED6C();
    v30 = os_log_type_enabled(v28, v29);
    v32 = v0[19];
    v31 = v0[20];
    v33 = v0[18];
    v34 = v0[10];
    v35 = v0[7];
    if (v30)
    {
      v43 = v0[20];
      v36 = swift_slowAlloc();
      v41 = v19;
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_2413F10BC(0xD00000000000001CLL, 0x800000024141A790, &v44);
      _os_log_impl(&dword_2413B9000, v28, v29, "%s ADM delegate is not set. Bailing.", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x245CE6B00](v37, -1, -1);
      MEMORY[0x245CE6B00](v36, -1, -1);

      v41(v34, v35);
      (*(v32 + 8))(v43, v33);
    }

    else
    {

      v19(v34, v35);
      (*(v32 + 8))(v31, v33);
    }

LABEL_15:

    v38 = v0[1];

    return v38();
  }

  v22 = v0[10];
  v23 = v0[7];
  [Strong updateADMState];
  swift_unknownObjectRelease();
  v19(v22, v23);
  v24 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8], MEMORY[0x277D0E2B0]);
  v25 = swift_task_alloc();
  v0[22] = v25;
  *v25 = v0;
  v25[1] = sub_241405218;
  v26 = v0[18];
  v27 = v0[11];

  return MEMORY[0x282200308](v27, v26, v24);
}

uint64_t sub_2414058BC()
{
  *(v0 + 40) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

id GMSpecifierController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMSpecifierController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241405AAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2413E85C0;

  return v6();
}

uint64_t sub_241405B94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2413E7CA4;

  return v7();
}

uint64_t sub_241405C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2413E8158(a3, v23 - v10);
  v12 = sub_24140ECDC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_241408308(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24140ECCC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_24140EC8C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_24140EC4C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_241408308(a3);

    return v21;
  }

LABEL_8:
  sub_241408308(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_241405F38(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2414060D8(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_241408700(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x245CE6B00](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_2414060D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v29 = a1;
  v6 = sub_24140E4BC();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v26 - v11;
  v32 = *(a3 + 16);
  if (v32)
  {
    v28 = 0;
    v12 = 0;
    v37 = *(v10 + 16);
    v38 = v10 + 16;
    v31 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    v35 = a4 + 56;
    v36 = v13;
    v14 = (v10 + 8);
    v34 = a4;
    while (1)
    {
      v33 = v12;
      v37(v39, v31 + v36 * v12, v6);
      sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
      v17 = sub_24140EBCC();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v30 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v22 = ~v18;
      while (1)
      {
        v37(v9, *(v34 + 48) + v19 * v36, v6);
        sub_2414087E8(&qword_28120FCF8, MEMORY[0x277D0E218], MEMORY[0x277D0E228]);
        v23 = sub_24140EBDC();
        v15 = *v14;
        (*v14)(v9, v6);
        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v35 + 8 * (v19 >> 6))) == 0)
        {
          a4 = v34;
          goto LABEL_4;
        }
      }

      result = (v15)(v39, v6);
      v25 = v29[v20];
      v29[v20] = v25 | v21;
      if ((v25 & v21) != 0)
      {
        a4 = v34;
LABEL_5:
        v16 = v33;
        goto LABEL_6;
      }

      v16 = v33;
      a4 = v34;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      ++v28;
LABEL_6:
      v12 = v16 + 1;
      if (v12 == v32)
      {
        goto LABEL_17;
      }
    }

    v15 = *v14;
LABEL_4:
    v15(v39, v6);
    goto LABEL_5;
  }

  v28 = 0;
LABEL_17:

  return sub_241406424(v29, v27, v28, a4);
}

uint64_t sub_241406424(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_24140E4BC();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B98, &qword_2414137D8);
  result = sub_24140EE4C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
    result = sub_24140EBCC();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24140674C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24140E48C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24140E4AC();
  v32 = v8;
  v33 = &off_2853176D0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  v10 = sub_24140E49C();
  (*(v5 + 104))(v7, *MEMORY[0x277D0DFD8], v4);
  LOBYTE(v8) = sub_2413FEA34(v7, v10);

  (*(v5 + 8))(v7, v4);
  v11 = 0;
  if (v8)
  {
    if (a2)
    {
      v12 = sub_24140E61C();
      a2 = v13;
    }

    else
    {
      v12 = 0;
    }

    sub_24140E62C();
    v14 = sub_24140E5EC();
    v15 = sub_24140E61C();
    v17 = v16;

    if (a2)
    {
      if (v15 == v12 && a2 == v17)
      {

LABEL_11:

        v11 = 22;
        goto LABEL_27;
      }

      v18 = sub_24140EF1C();

      if (v18)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v19 = sub_24140E60C();
    v20 = sub_24140E61C();
    v22 = v21;

    if (a2)
    {
      if (v20 == v12 && a2 == v22)
      {

LABEL_18:

        v11 = 23;
        goto LABEL_27;
      }

      v23 = sub_24140EF1C();

      if (v23)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v24 = sub_24140E5FC();
    v25 = sub_24140E61C();
    v27 = v26;

    if (a2)
    {
      if (v25 == v12 && a2 == v27)
      {

        v11 = 24;
        goto LABEL_27;
      }

      v28 = sub_24140EF1C();

      if (v28)
      {
        v11 = 24;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v11 = 21;
  }

LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v11;
}

uint64_t sub_241406AA0(uint64_t a1, void *a2)
{
  v4 = sub_24140E4BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24140E4DC();
  v56 = v8;
  v57 = &off_2853176C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v10 = sub_24140E72C();
  __swift_project_value_buffer(v10, qword_28120FD70);
  sub_24140869C(v55, v54);
  v11 = a2;
  v12 = sub_24140E70C();
  v13 = sub_24140ED6C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v53 = v15;
    *v14 = 136315394;
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    sub_24140E4CC();
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
    v16 = sub_24140ED3C();
    v52 = v4;
    v17 = v7;
    v18 = v5;
    v19 = v16;
    v21 = v20;

    __swift_destroy_boxed_opaque_existential_1(v54);
    v22 = sub_2413F10BC(v19, v21, &v53);

    *(v14 + 4) = v22;
    *(v14 + 12) = 2080;
    v23 = sub_24140E61C();
    v25 = sub_2413F10BC(v23, v24, &v53);

    *(v14 + 14) = v25;
    v5 = v18;
    v7 = v17;
    v4 = v52;
    _os_log_impl(&dword_2413B9000, v12, v13, "Getting context for Unavailability: %s TicketStatus: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v15, -1, -1);
    MEMORY[0x245CE6B00](v14, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  v26 = sub_24140E61C();
  v28 = v27;
  sub_24140E62C();
  v29 = sub_24140E5EC();
  v30 = sub_24140E61C();
  v32 = v31;

  if (v30 == v26 && v32 == v28)
  {

LABEL_10:

LABEL_11:
    v34 = 3;
    goto LABEL_12;
  }

  v33 = sub_24140EF1C();

  if (v33)
  {
    goto LABEL_10;
  }

  v36 = sub_24140E60C();
  v37 = sub_24140E61C();
  v39 = v38;

  if (v37 == v26 && v39 == v28)
  {

LABEL_17:

    v34 = 4;
    goto LABEL_12;
  }

  v40 = sub_24140EF1C();

  if (v40)
  {
    goto LABEL_17;
  }

  v41 = sub_24140E5FC();
  v42 = sub_24140E61C();
  v44 = v43;

  if (v42 == v26 && v44 == v28)
  {
  }

  else
  {
    v45 = sub_24140EF1C();

    if ((v45 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  __swift_project_boxed_opaque_existential_1(v55, v56);
  v46 = sub_24140E4CC();
  v47 = *(v5 + 104);
  v47(v7, *MEMORY[0x277D0E0E8], v4);
  v48 = sub_2413FE81C(v7, v46);

  v49 = *(v5 + 8);
  v49(v7, v4);
  if (v48)
  {
    v34 = 21;
  }

  else
  {
    v50 = sub_24140E4CC();
    v47(v7, *MEMORY[0x277D0E168], v4);
    v51 = sub_2413FE81C(v7, v50);

    v49(v7, v4);
    if (v51)
    {
      v34 = 21;
    }

    else
    {
      v34 = 5;
    }
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v34;
}

uint64_t sub_24140701C(uint64_t a1)
{
  v2 = sub_24140E4BC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24140E4DC();
  v51 = v6;
  v52 = &off_2853176C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, a1, v6);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v8 = sub_24140E72C();
  __swift_project_value_buffer(v8, qword_28120FD70);
  sub_24140869C(v50, v49);
  v9 = sub_24140E70C();
  v10 = sub_24140ED6C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v48 = v12;
    *v11 = 136315138;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_24140E4CC();
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
    v13 = sub_24140ED3C();
    v15 = v14;

    __swift_destroy_boxed_opaque_existential_1(v49);
    v16 = sub_2413F10BC(v13, v15, &v48);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2413B9000, v9, v10, "Getting context for Unavailability: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CE6B00](v12, -1, -1);
    MEMORY[0x245CE6B00](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  __swift_project_boxed_opaque_existential_1(v50, v51);
  v17 = sub_24140E4CC();
  v18 = *MEMORY[0x277D0E0E8];
  v19 = *(v3 + 104);
  v19(v5, v18, v2);
  v20 = sub_2413FE81C(v5, v17);

  v21 = *(v3 + 8);
  v21(v5, v2);
  if (v20 & 1) != 0 || (v22 = sub_24140E4CC(), v19(v5, *MEMORY[0x277D0E168], v2), v23 = sub_2413FE81C(v5, v22), , v21(v5, v2), (v23))
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v24 = sub_24140E4CC();
    v19(v5, *MEMORY[0x277D0E0D0], v2);
    v25 = sub_2413FE81C(v5, v24);

    v21(v5, v2);
    if (v25)
    {
      sub_24140E6CC();
      v26 = (sub_24140E6BC() & 1) == 0;
      v27 = 7;
      v28 = 9;
      goto LABEL_24;
    }
  }

  __swift_project_boxed_opaque_existential_1(v50, v51);
  v29 = sub_24140E4CC();
  v19(v5, v18, v2);
  v30 = sub_2413FE81C(v5, v29);

  v21(v5, v2);
  if (v30 & 1) != 0 || (v31 = sub_24140E4CC(), v19(v5, *MEMORY[0x277D0E168], v2), v32 = sub_2413FE81C(v5, v31), , v21(v5, v2), (v32))
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v33 = sub_24140E4CC();
    v19(v5, *MEMORY[0x277D0E0A8], v2);
    v34 = sub_2413FE81C(v5, v33);

    v21(v5, v2);
    if (v34)
    {
      sub_24140E6CC();
      v26 = (sub_24140E6BC() & 1) == 0;
      v27 = 21;
LABEL_23:
      v28 = 12;
LABEL_24:
      if (v26)
      {
        v43 = v27;
      }

      else
      {
        v43 = v28;
      }

      goto LABEL_27;
    }
  }

  __swift_project_boxed_opaque_existential_1(v50, v51);
  v35 = sub_24140E4CC();
  v19(v5, v18, v2);
  v36 = sub_2413FE81C(v5, v35);

  v21(v5, v2);
  if (v36 & 1) != 0 || (v37 = sub_24140E4CC(), v19(v5, *MEMORY[0x277D0E168], v2), v38 = sub_2413FE81C(v5, v37), , v21(v5, v2), (v38))
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v39 = sub_24140E4CC();
    v19(v5, *MEMORY[0x277D0E0A8], v2);
    v40 = sub_2413FE81C(v5, v39);

    v21(v5, v2);
    if ((v40 & 1) == 0)
    {
      v43 = 24;
      goto LABEL_27;
    }
  }

  __swift_project_boxed_opaque_existential_1(v50, v51);
  v41 = sub_24140E4CC();
  v19(v5, *MEMORY[0x277D0E0F8], v2);
  v42 = sub_2413FE81C(v5, v41);

  v21(v5, v2);
  if ((v42 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v44 = sub_24140E4CC();
    v19(v5, *MEMORY[0x277D0E0A8], v2);
    v45 = sub_2413FE81C(v5, v44);

    v21(v5, v2);
    v26 = (v45 & 1) == 0;
    v27 = 5;
    goto LABEL_23;
  }

  sub_24140E6CC();
  if (sub_24140E6BC())
  {
    v43 = 11;
  }

  else
  {
    v43 = 10;
  }

LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v50);
  return v43;
}

uint64_t sub_241407788(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24140E48C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241407848, 0, 0);
}

uint64_t sub_241407848()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_24140E49C();
  v5 = *(v2 + 104);
  v5(v1, *MEMORY[0x277D0E020], v3);
  v6 = sub_2413FEA34(v1, v4);

  v7 = *(v2 + 8);
  v7(v1, v3);
  v8 = sub_24140E49C();
  if (v6)
  {
    v9 = v5;
    v10 = 26;
    v11 = 25;
  }

  else
  {
    v12 = v0[5];
    v13 = v0[3];
    v5(v12, *MEMORY[0x277D0DFD8], v13);
    v14 = sub_2413FEA34(v12, v8);

    v7(v12, v13);
    if ((v14 & 1) == 0)
    {
      v15 = v0[5];
      v16 = v0[3];
      v17 = sub_24140E49C();
      v5(v15, *MEMORY[0x277D0E008], v16);
      v18 = sub_2413FEA34(v15, v17);

      v7(v15, v16);
      if ((v18 & 1) == 0)
      {
        v22 = 0;
        goto LABEL_9;
      }
    }

    v9 = v5;
    v8 = sub_24140E49C();
    v10 = 9;
    v11 = 24;
  }

  v19 = v0[5];
  v20 = v0[3];
  v9(v19, *MEMORY[0x277D0DFC8], v20);
  v21 = sub_2413FEA34(v19, v8);

  v7(v19, v20);
  if (v21)
  {
    v22 = v10;
  }

  else
  {
    v22 = v11;
  }

LABEL_9:

  v23 = v0[1];

  return v23(v22);
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

uint64_t sub_241407B08(uint64_t a1)
{
  result = sub_24140E50C();
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

uint64_t dispatch thunk of GMSpecifierController.enroll()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F8554;

  return v5();
}

uint64_t dispatch thunk of GMSpecifierController.fetchStatus(forceDownloadIfNeeded:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413F82EC;

  return v7(a1);
}

uint64_t dispatch thunk of GMSpecifierController.fetchStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413F8554;

  return v5();
}

uint64_t dispatch thunk of GMSpecifierController.clearCFU()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413E7CA4;

  return v5();
}

uint64_t sub_24140825C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2413E85C0;

  return sub_2414038BC(v2);
}

uint64_t sub_241408308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241408370(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2413E85C0;

  return sub_2413E81C8(a1, v4);
}

uint64_t sub_241408428()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E85C0;

  return sub_241401308(v2, v3);
}

uint64_t sub_2414084D4()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2413E7CA4;

  return sub_24140021C(v2, v4, v3);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2414085C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E85C0;

  return sub_2413FFE2C(v2, v3);
}

uint64_t sub_24140869C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241408700@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2414060D8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_241408734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241404E48(a1, v4, v5, v6);
}

uint64_t sub_2414087E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241408830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241403E2C(a1, v4, v5, v6);
}

uint64_t sub_241408938()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2414089D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241408AC8()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241408B60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_241408C10()
{
  result = [objc_allocWithZone(type metadata accessor for GMEligibilityProvider()) init];
  qword_28120FCD8 = result;
  return result;
}

id GMEligibilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GMEligibilityProvider.shared.getter()
{
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v1 = qword_28120FCD8;

  return v1;
}

void *sub_241408D78()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_241408E24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_241408E7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

BOOL sub_241408FDC()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return qword_285317228 != v2 && unk_285317230 != v2;
}

BOOL sub_241409038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

id sub_2414090D4()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  if (*(v0 + v1) == 5)
  {
    return [*(v0 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController) featureOptInStatus];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2414091AC()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v2 = vdupq_n_s64(*(v0 + v1));
  return vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_285317258, v2), vceqq_s64(unk_285317268, v2)))) & 1;
}

char *GMEligibilityProvider.init()()
{
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter] = 0;
  v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_shouldForceDownloadIfNeededOnFetch] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController] = [objc_allocWithZone(type metadata accessor for GMSpecifierController(0)) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GMEligibilityProvider();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [*&v1[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController] setDelegate_];
  return v1;
}

uint64_t sub_2414093A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v7 = sub_24140E72C();
  __swift_project_value_buffer(v7, qword_28120FD70);
  v8 = a1;
  v9 = sub_24140E70C();
  v10 = sub_24140ED6C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = a1;
    v13 = v8;
    _os_log_impl(&dword_2413B9000, v9, v10, "Fetch status called with presenter. %@", v11, 0xCu);
    sub_2413F1664(v12);
    MEMORY[0x245CE6B00](v12, -1, -1);
    MEMORY[0x245CE6B00](v11, -1, -1);
  }

  v14 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v15 = *&v2[v14];
  *&v2[v14] = a1;

  v16 = sub_24140ECDC();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v18 = v8;
  v19 = v2;
  sub_2413E7730(0, 0, v6, &unk_241413810, v17);
}

uint64_t sub_2414095F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v4[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_2414096BC;

  return sub_241409B94();
}

uint64_t sub_2414096BC()
{

  return MEMORY[0x2822009F8](sub_2414097B8, 0, 0);
}

uint64_t sub_2414097B8()
{
  v20 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = qword_28120FCB8;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_24140E72C();
    __swift_project_value_buffer(v6, qword_28120FD70);
    v7 = sub_24140E70C();
    v8 = sub_24140ED6C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2413F10BC(0xD000000000000017, 0x800000024141AAE0, &v19);
      _os_log_impl(&dword_2413B9000, v7, v8, "%s Attempt to reload specifiers.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CE6B00](v10, -1, -1);
      MEMORY[0x245CE6B00](v9, -1, -1);
    }

    v11 = v0[6];
    v12 = sub_24140ECDC();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_24140ECBC();
    v13 = v5;
    v14 = sub_24140ECAC();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    sub_2413E7730(0, 0, v11, &unk_241413948, v15);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_241409A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24140ECBC();
  *(v4 + 24) = sub_24140ECAC();
  v6 = sub_24140EC8C();

  return MEMORY[0x2822009F8](sub_241409AB8, v6, v5);
}

uint64_t sub_241409AB8()
{
  v1 = *(v0 + 16);

  [v1 reloadSpecifiers];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_241409BB4()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  v0[34] = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[35] = v3;
  if (v3 == 18)
  {
LABEL_8:
    v10 = v0[1];

    return v10();
  }

  v4 = v0[33];
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  v0[36] = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  if (*(v4 + v5) == 1)
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v6 = sub_24140E72C();
    __swift_project_value_buffer(v6, qword_28120FD70);
    v7 = sub_24140E70C();
    v8 = sub_24140ED8C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2413B9000, v7, v8, "Enrollment request is already in progress. Bailing.", v9, 2u);
      MEMORY[0x245CE6B00](v9, -1, -1);
    }

    goto LABEL_8;
  }

  v12 = v0[33];
  *(v4 + v5) = 1;
  v13 = v0 + 32;
  v14 = *(v12 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController);
  if (*(v12 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_shouldForceDownloadIfNeededOnFetch) == 1)
  {
    v15 = v0 + 10;
    v0[10] = v0;
    v0[15] = v13;
    v0[11] = sub_241409EFC;
    v16 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BE8, &qword_241413938);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24140A390;
    v0[21] = &block_descriptor_22;
    v0[22] = v16;
    [v14 fetchStatusWithForceDownloadIfNeeded:1 completionHandler:v0 + 18];
  }

  else
  {
    v15 = v0 + 2;
    v0[2] = v0;
    v0[7] = v13;
    v0[3] = sub_24140A2B0;
    v17 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BE8, &qword_241413938);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24140A390;
    v0[21] = &block_descriptor_2;
    v0[22] = v17;
    [v14 fetchStatusWithCompletionHandler_];
  }

  return MEMORY[0x282200938](v15);
}

uint64_t sub_241409EFC()
{

  return MEMORY[0x2822009F8](sub_241409FDC, 0, 0);
}

uint64_t sub_241409FDC()
{
  v24 = v0;
  v1 = v0[32];
  *(v0[33] + v0[36]) = 2;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = sub_24140E70C();
  v4 = sub_24140ED6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_2413F10BC(0xD000000000000011, 0x800000024141AAC0, &v23);
    *(v6 + 12) = 2080;
    v8 = GMEligibilityContext.description.getter(v5);
    v10 = sub_2413F10BC(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    v11 = GMEligibilityContext.description.getter(v1);
    v13 = sub_2413F10BC(v11, v12, &v23);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_2413B9000, v3, v4, "%s Previous Status: %s New Status: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v7, -1, -1);
    MEMORY[0x245CE6B00](v6, -1, -1);
  }

  if (v1 != v0[35])
  {
    *(v0[33] + v0[34]) = v1;
    v14 = sub_24140E70C();
    v15 = sub_24140ED8C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = GMEligibilityContext.description.getter(v1);
      v20 = sub_2413F10BC(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2413B9000, v14, v15, "Status: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CE6B00](v17, -1, -1);
      MEMORY[0x245CE6B00](v16, -1, -1);
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24140A2B0()
{

  return MEMORY[0x2822009F8](sub_24140B668, 0, 0);
}

uint64_t sub_24140A390(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_24140A3EC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v7 = sub_24140E72C();
  v8 = __swift_project_value_buffer(v7, qword_28120FD70);
  v9 = v2;
  v10 = sub_24140E70C();
  v11 = sub_24140ED8C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v38 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v8;
    v16 = v15;
    v40[0] = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7D0, v40);
    *(v13 + 12) = 2080;
    v17 = GMEligibilityContext.description.getter(a1);
    v19 = sub_2413F10BC(v17, v18, v40);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2112;
    v20 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
    swift_beginAccess();
    v21 = *&v9[v20];
    *(v13 + 24) = v21;
    *v14 = v21;
    v22 = v21;
    _os_log_impl(&dword_2413B9000, v10, v11, "%s Updating eligibility with %s do we have a presenter? %@", v13, 0x20u);
    sub_2413F1664(v14);
    MEMORY[0x245CE6B00](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v16, -1, -1);
    v23 = v13;
    v6 = v38;
    MEMORY[0x245CE6B00](v23, -1, -1);
  }

  v24 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  *&v9[v24] = a1;
  v25 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v26 = *&v9[v25];
  if (v26)
  {
    v27 = v26;
    v28 = sub_24140E70C();
    v29 = sub_24140ED6C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7D0, &v39);
      _os_log_impl(&dword_2413B9000, v28, v29, "%s Attempting to reload specifiers.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x245CE6B00](v31, -1, -1);
      MEMORY[0x245CE6B00](v30, -1, -1);
    }

    v32 = sub_24140ECDC();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_24140ECBC();
    v33 = v27;
    v34 = sub_24140ECAC();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v33;
    sub_2413E7730(0, 0, v6, &unk_241413828, v35);
  }
}

uint64_t sub_24140A808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24140ECBC();
  *(v4 + 24) = sub_24140ECAC();
  v6 = sub_24140EC8C();

  return MEMORY[0x2822009F8](sub_24140B66C, v6, v5);
}

void sub_24140A8F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26 - v2;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v4 = sub_24140E72C();
  __swift_project_value_buffer(v4, qword_28120FD70);
  v5 = v0;
  v6 = sub_24140E70C();
  v7 = sub_24140ED8C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7F0, v28);
    *(v8 + 12) = 2112;
    v11 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
    swift_beginAccess();
    v12 = *&v5[v11];
    *(v8 + 14) = v12;
    *v9 = v12;
    v13 = v12;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Fetching ADM waitlist status do we have a presenter? %@", v8, 0x16u);
    sub_2413F1664(v9);
    MEMORY[0x245CE6B00](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CE6B00](v10, -1, -1);
    MEMORY[0x245CE6B00](v8, -1, -1);
  }

  v14 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v15 = *&v5[v14];
  if (v15)
  {
    v16 = v15;
    v17 = sub_24140E70C();
    v18 = sub_24140ED6C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7F0, &v27);
      _os_log_impl(&dword_2413B9000, v17, v18, "%s Attempting to fetch current waitlist status and reload image creation specifier.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245CE6B00](v20, -1, -1);
      MEMORY[0x245CE6B00](v19, -1, -1);
    }

    v21 = sub_24140ECDC();
    (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
    sub_24140ECBC();
    v22 = v16;
    v23 = sub_24140ECAC();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    sub_2413E7730(0, 0, v3, &unk_241413838, v24);
  }
}

uint64_t sub_24140AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24140ECBC();
  *(v4 + 24) = sub_24140ECAC();
  v6 = sub_24140EC8C();

  return MEMORY[0x2822009F8](sub_24140AD30, v6, v5);
}

uint64_t sub_24140AD30()
{
  v1 = *(v0 + 16);

  v2 = sub_24140EC0C();
  [v1 reloadSpecifierID_];

  v3 = *(v0 + 8);

  return v3();
}

id GMEligibilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEligibilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t GMRequestState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_24140AEAC@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_24140AEC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2414095F0(a1, v4, v5, v6);
}

uint64_t sub_24140AF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_24140A808(a1, v4, v5, v6);
}

uint64_t sub_24140B030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_24140AC98(a1, v4, v5, v6);
}

unint64_t sub_24140B0E8()
{
  result = qword_27E542BE0;
  if (!qword_27E542BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542BE0);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_24140B5AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241409A20(a1, v4, v5, v6);
}

uint64_t sub_24140B6A0()
{
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return MEMORY[0x2821336E0](0xD000000000000015, 0x800000024141AC10, v1);
}

uint64_t sub_24140B71C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_24140E8BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5426D0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27E543B48);
  (*(v1 + 16))(v3, v8, v0);
  sub_24140E8CC();
  sub_24140E79C();
  (*(v5 + 8))(v7, v4);
  v9 = sub_24140E7AC();

  return v9;
}

uint64_t sub_24140B918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542880, &qword_241412EF0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - v2;
  v4 = sub_24140E7EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542888, &qword_241412EF8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  sub_24140E7FC();
  v12 = MEMORY[0x277CE1A00];
  MEMORY[0x245CE5640](v7, v4, MEMORY[0x277CE1A00]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x245CE5660](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_24140E7CC();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

unint64_t sub_24140BBE0()
{
  result = qword_27E542BF0;
  if (!qword_27E542BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542BF0);
  }

  return result;
}

uint64_t sub_24140BC34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  __swift_allocate_value_buffer(v0, qword_27E543B48);
  __swift_project_value_buffer(v0, qword_27E543B48);
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v1 = qword_28120FCD8;
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  if (*(v1 + v2) == 5)
  {
    [*(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController) featureOptInStatus];
  }

  return sub_24140E8FC();
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E543AC8 == -1)
  {
    if (qword_27E543AD0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E543AD0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E543AC0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E543AB4 > a3)
      {
        return 1;
      }

      if (dword_27E543AB4 >= a3)
      {
        return dword_27E543AB8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E543AD0;
  if (qword_27E543AD0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E543AD0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245CE6380](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E543AB4, &dword_27E543AB8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

void __getAnalyticsSendEventLazySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreAnalyticsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantVoiceMetrics.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getPETEventPropertyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPETEventPropertyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantMetrics.m" lineNumber:39 description:{@"Unable to find class %s", "PETEventProperty"}];

  __break(1u);
}

void ProactiveEventTrackerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ProactiveEventTrackerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantMetrics.m" lineNumber:37 description:{@"%s", *a1}];

  __break(1u);
}

void __getPETScalarEventTrackerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPETScalarEventTrackerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantMetrics.m" lineNumber:42 description:{@"Unable to find class %s", "PETScalarEventTracker"}];

  __break(1u);
}

void __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIGMEnrollmentViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GMSpecifierProvider.m" lineNumber:24 description:{@"Unable to find class %s", "VTUIGMEnrollmentViewController"}];

  __break(1u);
}

void __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GMSpecifierProvider.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIEnrollTrainingViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantActivationController.m" lineNumber:29 description:{@"Unable to find class %s", "VTUIEnrollTrainingViewController"}];

  __break(1u);
}

void __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantActivationController.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASTLockScreenSuggestionSpecifier.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKKnowledgeStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKKnowledgeStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantLanguageController.m" lineNumber:37 description:{@"Unable to find class %s", "CKKnowledgeStore"}];

  __break(1u);
}

void CoreKnowledgeLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreKnowledgeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantLanguageController.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKPermanentEventStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKPermanentEventStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantLanguageController.m" lineNumber:39 description:{@"Unable to find class %s", "CKPermanentEventStore"}];

  __break(1u);
}

void __getCKEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKEventClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantLanguageController.m" lineNumber:35 description:{@"Unable to find class %s", "CKEvent"}];

  __break(1u);
}

void __getCKKnowledgeStoreClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKKnowledgeStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceController.m" lineNumber:39 description:{@"Unable to find class %s", "CKKnowledgeStore"}];

  __break(1u);
}

void CoreKnowledgeLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreKnowledgeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantVoiceController.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKPermanentEventStoreClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKPermanentEventStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceController.m" lineNumber:41 description:{@"Unable to find class %s", "CKPermanentEventStore"}];

  __break(1u);
}

void __getCKEventClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKEventClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceController.m" lineNumber:37 description:{@"Unable to find class %s", "CKEvent"}];

  __break(1u);
}

void getNRDevicePropertySystemVersion_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:132 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getVTUISiriDataSharingOptInPresenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUISiriDataSharingOptInPresenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:123 description:{@"Unable to find class %s", "VTUISiriDataSharingOptInPresenter"}];

  __break(1u);
}

void VoiceTriggerUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantController.m" lineNumber:120 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:130 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantController.m" lineNumber:129 description:{@"%s", *a1}];

  __break(1u);
}

void __getBYFlowSkipControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBYFlowSkipControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:143 description:{@"Unable to find class %s", "BYFlowSkipController"}];

  __break(1u);
}

void SetupAssistantLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantController.m" lineNumber:142 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTUIVoiceSelectionViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIVoiceSelectionViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:125 description:{@"Unable to find class %s", "VTUIVoiceSelectionViewController"}];

  __break(1u);
}

void __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIEnrollTrainingViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:121 description:{@"Unable to find class %s", "VTUIEnrollTrainingViewController"}];

  __break(1u);
}

void SearchLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SearchLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantAppsSettingsController.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}