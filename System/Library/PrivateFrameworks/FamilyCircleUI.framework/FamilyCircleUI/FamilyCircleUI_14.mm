uint64_t sub_21BCF7788()
{
  v35 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = [v2 ageCategory];
  if ((*(v1 + 82) ^ (v3 == 1)))
  {
    v4 = v3 == 1;
    v5 = *(v0 + 192);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v0 + 160) = v5;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v1 + 82) = v3 == 1;
  }

  v7 = *(v0 + 192);
  v8 = [*(v7 + 72) accountID];
  sub_21BE28A0C();

  v9 = sub_21BE2903C();

  v10 = [v2 ageCategory];
  v11 = v10;
  if ((*(v7 + 96) & 1) != 0 || *(v7 + 88) != v10)
  {
    v12 = *(v0 + 192);
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    *(v13 + 32) = 0;
    *(v0 + 168) = v12;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  else
  {

    *(v7 + 88) = v11;
    *(v7 + 96) = 0;
  }

  v14 = v9 & 0x100;
  sub_21BE2614C();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FFC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 232);
  v19 = *(v0 + 216);
  v33 = *(v0 + 200);
  if (v17)
  {
    v32 = *(v0 + 216);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136315138;
    *(v0 + 248) = v9 & 1;
    v22 = v14 >> 8;
    *(v0 + 249) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9DB8, &qword_21BE42040);
    v23 = sub_21BE28A5C();
    v25 = sub_21BB3D81C(v23, v24, &v34);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_21BB35000, v15, v16, "Successfully fetched accountInfo: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x21CF05C50](v21, -1, -1);
    v26 = v20;
    v27 = v9 & 1;
    MEMORY[0x21CF05C50](v26, -1, -1);

    v18(v32, v33);
  }

  else
  {

    v18(v19, v33);
    v27 = v9 & 1;
    v22 = v14 >> 8;
  }

  v28 = *(v0 + 192);
  swift_getKeyPath();
  v29 = swift_task_alloc();
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  *(v29 + 25) = v22;
  *(v0 + 152) = v28;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_21BCF7C60(uint64_t a1)
{
  v21 = v1;
  v2 = *(v1 + 240);
  swift_willThrow();

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v19 = *(v1 + 232);
    v5 = *(v1 + 216);
    v6 = *(v1 + 200);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v1 + 248) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9DB8, &qword_21BE42040);
    v9 = sub_21BE28A5C();
    v11 = sub_21BB3D81C(v9, v10, &v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21BB35000, v3, v4, "Successfully fetched accountInfo: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);

    v19(v5, v6);
  }

  else
  {
    v12 = *(v1 + 232);
    v13 = *(v1 + 216);
    v14 = *(v1 + 200);

    v12(v13, v14);
  }

  v15 = *(v1 + 192);
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  *(v1 + 152) = v15;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_21BCF7F00(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_21BE26A4C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_21BE28D7C();
  v2[28] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[29] = v5;
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_21BCF8000, v5, v4);
}

uint64_t sub_21BCF8000()
{
  v1 = v0[23];
  v2 = *(v1 + 72);
  v3 = [v2 entryPoint];
  v4 = *(v1 + 16);
  v5 = [v2 accountID];
  if (!v5)
  {
    sub_21BE28A0C();
    v5 = sub_21BE289CC();
  }

  v0[31] = v5;
  v6 = v0[22];
  v0[2] = v0;
  v0[3] = sub_21BCF8188;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BCF8794;
  v0[13] = &block_descriptor_132;
  v0[14] = v7;
  [v4 setAgeRangeSharingGlobalStateForEntryPoint:v3 viewController:v6 altDSID:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCF8188()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_21BCF8594;
  }

  else
  {
    v5 = sub_21BCF82B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCF82B8()
{
  sub_21BE2614C();
  v1 = sub_21BE26A2C();
  v2 = sub_21BE28FFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21BB35000, v1, v2, "Successfully finished onboarding flow", v3, 2u);
    MEMORY[0x21CF05C50](v3, -1, -1);
  }

  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  (*(v6 + 8))(v4, v5);
  v7 = swift_task_alloc();
  *(v0 + 264) = v7;
  *v7 = v0;
  v7[1] = sub_21BCF83F0;

  return sub_21BCFAB04();
}

uint64_t sub_21BCF83F0(int a1)
{
  v2 = *v1;
  *(*v1 + 272) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_21BCF8518, v4, v3);
}

uint64_t sub_21BCF8518()
{

  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2(v1, 0);
}

uint64_t sub_21BCF8594()
{
  v22 = v0;
  v1 = v0[31];
  v2 = v0[32];

  swift_willThrow();

  sub_21BE2614C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_21BE29A5C();
    v13 = sub_21BB3D81C(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21BB35000, v4, v5, "Returning global state as unknown, error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[24];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[32];
  v18 = sub_21BE25A7C();

  v19 = v0[1];

  return v19(0, v18);
}

uint64_t sub_21BCF8794(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
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

uint64_t sub_21BCF8840()
{
  v1[4] = v0;
  v2 = sub_21BE26A4C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x2822009F8](sub_21BCF894C, v4, v3);
}

uint64_t sub_21BCF894C()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v2 = *(v1 + 64);
  v0[13] = v2;
  if (v2)
  {

    sub_21BE2614C();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FFC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21BB35000, v3, v4, "Update task in progress.", v5, 2u);
      MEMORY[0x21CF05C50](v5, -1, -1);
    }

    v6 = v0[9];
    v7 = v0[5];
    v8 = v0[6];

    v9 = *(v8 + 8);
    v0[14] = v9;
    v9(v6, v7);
    v10 = swift_task_alloc();
    v0[15] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v0[16] = v11;
    *v10 = v0;
    v10[1] = sub_21BCF8BB8;
    v12 = MEMORY[0x277D84950];
    v13 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v11, v2, v13, v11, v12);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_21BCF8FE4;

    return sub_21BCF9398();
  }
}

uint64_t sub_21BCF8BB8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_21BCF9188;
  }

  else
  {
    v5 = sub_21BCF8CF4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCF8CF4(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[14];
  v6 = v1[8];
  v7 = v1[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Successfully executed updateTask.", v8, 2u);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v5(v6, v7);
  v9 = swift_task_alloc();
  v1[18] = v9;
  *v9 = v1;
  v9[1] = sub_21BCF8E38;

  return sub_21BCF9398();
}

uint64_t sub_21BCF8E38()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BCF8F58, v3, v2);
}

uint64_t sub_21BCF8F58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCF8FE4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BCF9104, v3, v2);
}

uint64_t sub_21BCF9104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCF9188(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 136);
  sub_21BE2614C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 136);
    v19 = *(v1 + 56);
    v20 = *(v1 + 112);
    v7 = *(v1 + 40);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    *(v1 + 24) = v6;
    v10 = v6;
    v11 = sub_21BE28A5C();
    v13 = sub_21BB3D81C(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_21BB35000, v4, v5, "Failed to execute updateTask with error: %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);

    v20(v19, v7);
  }

  else
  {
    v14 = *(v1 + 112);
    v15 = *(v1 + 56);
    v16 = *(v1 + 40);

    v14(v15, v16);
  }

  v17 = swift_task_alloc();
  *(v1 + 144) = v17;
  *v17 = v1;
  v17[1] = sub_21BCF8E38;

  return sub_21BCF9398();
}

uint64_t sub_21BCF9398()
{
  v1[5] = v0;
  v1[6] = sub_21BE28D7C();
  v1[7] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_21BCF9448;

  return sub_21BCFAB04();
}

uint64_t sub_21BCF9448(int a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 144) = a1;

  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v5;
  v3[1] = sub_21BCF9594;

  return sub_21BCF9DB0();
}

uint64_t sub_21BCF9594()
{
  v1 = *v0;

  v3 = sub_21BE28D0C();
  *(v1 + 80) = v3;
  *(v1 + 88) = v2;

  return MEMORY[0x2822009F8](sub_21BCF96D8, v3, v2);
}

uint64_t sub_21BCF96D8()
{
  v1 = [*(v0[5] + 72) accountID];
  v2 = sub_21BE28A0C();
  v4 = v3;

  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_21BCF97AC;

  return sub_21BCF7378(v2, v4);
}

uint64_t sub_21BCF97AC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21BCF98F0, v3, v2);
}

uint64_t sub_21BCF98F0()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 40);
    swift_getKeyPath();
    *(v0 + 112) = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
    *(v0 + 16) = v1;
    *(v0 + 120) = sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F1C();

    v2 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
    *(v0 + 128) = v2;
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_21BCF9B48;

    return sub_21BCFCE00(v2);
  }

  else
  {
    v6 = *(v0 + 40);

    if (*(v6 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) == 1)
    {
      *(v6 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = 1;
    }

    else
    {
      v7 = *(v0 + 40);
      swift_getKeyPath();
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      *(v8 + 24) = 1;
      *(v0 + 32) = v7;
      sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
      sub_21BE25F0C();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_21BCF9B48(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 148) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_21BCF9C90, v5, v4);
}

uint64_t sub_21BCF9C90()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 40);

  if (v1 == *(v2 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding))
  {
    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = *(v0 + 148);
  }

  else
  {
    v3 = *(v0 + 148);
    v4 = *(v0 + 40);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 24) = v4;
    sub_21BE25F0C();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BCF9DB0()
{
  v1[21] = v0;
  v2 = sub_21BE26A4C();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  sub_21BE28D7C();
  v1[26] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[27] = v4;
  v1[28] = v3;

  return MEMORY[0x2822009F8](sub_21BCF9EB0, v4, v3);
}

uint64_t sub_21BCF9EB0()
{
  v1 = v0[21];
  v2 = *(v1 + 16);
  v3 = *(v1 + 72);
  v0[29] = v3;
  v4 = [v3 accountID];
  if (!v4)
  {
    sub_21BE28A0C();
    v4 = sub_21BE289CC();
  }

  v0[30] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BCFA018;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E68, &qword_21BE422A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BCFA928;
  v0[13] = &block_descriptor_123;
  v0[14] = v5;
  [v2 fetchAgeRangesWith:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCFA018()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);
  if (v2)
  {
    v5 = sub_21BCFA6B8;
  }

  else
  {
    v5 = sub_21BCFA148;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

char *sub_21BCFA148()
{
  v48 = v0;
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v2 = sub_21BE2951C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v47[0] = MEMORY[0x277D84F90];
  result = sub_21BC59CD4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v45 = v0;
  v4 = 0;
  v5 = v47[0];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CF047C0](v4, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v6 bundleID];
    v9 = sub_21BE28A0C();
    v11 = v10;

    v12 = sub_21BCFE564(v9, v11);
    v14 = v13;

    v47[0] = v5;
    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      sub_21BC59CD4((v15 > 1), v16 + 1, 1);
      v5 = v47[0];
    }

    ++v4;
    *(v5 + 2) = v16 + 1;
    v17 = &v5[24 * v16];
    *(v17 + 4) = v7;
    *(v17 + 5) = v12;
    *(v17 + 6) = v14;
  }

  while (v2 != v4);

  v0 = v45;
LABEL_14:

  v47[0] = v5;

  sub_21BCFD530(v47);

  v18 = v47[0];
  v19 = *(v47[0] + 2);
  if (v19)
  {
    v47[0] = MEMORY[0x277D84F90];
    sub_21BE296DC();
    v20 = 32;
    do
    {
      v21 = *&v18[v20];
      sub_21BE296BC();
      sub_21BE296EC();
      sub_21BE296FC();
      sub_21BE296CC();
      v20 += 24;
      --v19;
    }

    while (v19);

    v22 = v47[0];
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  sub_21BE2614C();

  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FCC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 232);
    v26 = *(v0 + 184);
    v44 = *(v0 + 176);
    v46 = *(v0 + 200);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47[0] = v28;
    *v27 = 136315394;
    v29 = sub_21BB3A2A4(0, &qword_27CDB75A0, 0x277D08200);
    v30 = MEMORY[0x21CF03DF0](v22, v29);
    v32 = sub_21BB3D81C(v30, v31, v47);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v33 = [v25 accountID];
    v34 = sub_21BE28A0C();
    v36 = v35;

    v37 = sub_21BB3D81C(v34, v36, v47);

    *(v27 + 14) = v37;
    _os_log_impl(&dword_21BB35000, v23, v24, "Successfully fetched age range list: %s for accountID: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v28, -1, -1);
    MEMORY[0x21CF05C50](v27, -1, -1);

    (*(v26 + 8))(v46, v44);
  }

  else
  {
    v38 = *(v0 + 200);
    v39 = *(v0 + 176);
    v40 = *(v0 + 184);

    (*(v40 + 8))(v38, v39);
  }

  v41 = *(v0 + 168);
  swift_getKeyPath();
  v42 = swift_task_alloc();
  *(v42 + 16) = v41;
  *(v42 + 24) = v22;
  *(v42 + 32) = 0;
  *(v0 + 160) = v41;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);

  sub_21BE25F0C();

  sub_21BCF4F08(v22);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_21BCFA6B8()
{
  v1 = v0[30];
  v2 = v0[31];

  swift_willThrow();

  sub_21BE2614C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21BB35000, v4, v5, "Failed to fetch age range list with error: %@", v7, 0xCu);
    sub_21BB3A4CC(v8, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  v11 = v0[31];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v15 = v0[22];

  (*(v13 + 8))(v12, v15);
  swift_getKeyPath();
  v16 = swift_task_alloc();
  v17 = MEMORY[0x277D84F90];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  *(v16 + 32) = 0;
  v0[19] = v14;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  sub_21BCF4F08(v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_21BCFA928(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_21BB3A2A4(0, &qword_27CDB75A0, 0x277D08200);
    **(*(v4 + 64) + 40) = sub_21BE28C3C();

    return MEMORY[0x282200950](v4);
  }
}

id sub_21BCFAA1C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21BE289CC();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_21BE25A8C();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_21BCFAB04()
{
  v1[20] = v0;
  v2 = sub_21BE26A4C();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_21BE28D7C();
  v1[25] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[26] = v4;
  v1[27] = v3;

  return MEMORY[0x2822009F8](sub_21BCFAC04, v4, v3);
}

uint64_t sub_21BCFAC04()
{
  v1 = v0[20];
  v2 = *(v1 + 16);
  v3 = *(v1 + 72);
  v0[28] = v3;
  v4 = [v3 accountID];
  if (!v4)
  {
    sub_21BE28A0C();
    v4 = sub_21BE289CC();
  }

  v0[29] = v4;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = sub_21BCFAD6C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E60, &qword_21BE42298);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BCFB3C0;
  v0[13] = &block_descriptor_119;
  v0[14] = v5;
  [v2 globalStateForAltDSID:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCFAD6C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_21BCFB15C;
  }

  else
  {
    v5 = sub_21BCFAE9C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCFAE9C()
{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 248);

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 28) = 0;
  *(v0 + 152) = v1;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  sub_21BE2614C();

  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 176);
    v20 = *(v0 + 168);
    v21 = *(v0 + 192);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 67109378;
    *(v8 + 4) = v2;
    *(v8 + 8) = 2080;
    v10 = [v6 accountID];
    v11 = sub_21BE28A0C();
    v13 = v12;

    v14 = sub_21BB3D81C(v11, v13, &v22);

    *(v8 + 10) = v14;
    _os_log_impl(&dword_21BB35000, v4, v5, "Successfully fetched age range sharing option: %d for accountID: %s", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);

    (*(v7 + 8))(v21, v20);
  }

  else
  {
    v15 = *(v0 + 192);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 8);

  return v18(v2);
}

uint64_t sub_21BCFB15C()
{
  v1 = v0[29];
  v2 = v0[30];

  swift_willThrow();

  sub_21BE2614C();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21BB35000, v4, v5, "Failed to fetch age range sharing option with error: %@", v7, 0xCu);
    sub_21BB3A4CC(v8, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v8, -1, -1);
    MEMORY[0x21CF05C50](v7, -1, -1);
  }

  v11 = v0[30];
  v13 = v0[22];
  v12 = v0[23];
  v15 = v0[20];
  v14 = v0[21];

  (*(v13 + 8))(v12, v14);
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  *(v16 + 28) = 0;
  v0[18] = v15;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F0C();

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_21BCFB3C0(uint64_t a1, int a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21BCFB48C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2[20] = swift_task_alloc();
  v3 = sub_21BE25D1C();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCFB584, 0, 0);
}

uint64_t sub_21BCFB584()
{
  v1 = [*(v0 + 144) altDSID];
  if (!v1)
  {
    sub_21BE28A0C();
    v2 = sub_21BE289CC();

    v1 = v2;
  }

  v29 = v1;
  v3 = [*(v0 + 144) bundleID];
  if (!v3)
  {
    sub_21BE28A0C();
    v4 = sub_21BE289CC();

    v3 = v4;
  }

  v28 = v3;
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v27 = [v8 lowerbound];
  v26 = [v8 upperbound];
  v9 = [v8 response];
  v10 = [v8 createdAt];
  sub_21BE25CDC();

  sub_21BE25CEC();
  (*(v5 + 56))(v7, 0, 1, v6);
  v11 = [v8 validationLevel];
  v12 = sub_21BE25CAC();
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    v13 = 0;
  }

  else
  {
    v15 = *(v0 + 168);
    v14 = *(v0 + 176);
    v16 = *(v0 + 160);
    v13 = sub_21BE25CAC();
    (*(v14 + 8))(v16, v15);
  }

  if (v9 == 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = *(v0 + 176);
  v23 = *(v0 + 168);
  v24 = *(v0 + 184);
  v25 = *(v0 + 152);
  v19 = [objc_allocWithZone(MEMORY[0x277D08200]) initWithAltDSID:v29 bundleID:v28 lowerbound:v27 upperbound:v26 response:v17 responseType:1 createdAt:v12 invalidatedAt:v13 validationLevel:v11];
  *(v0 + 192) = v19;

  (*(v18 + 8))(v24, v23);
  v20 = *(v25 + 16);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BCFB8DC;
  v21 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BCF8794;
  *(v0 + 104) = &block_descriptor_115;
  *(v0 + 112) = v21;
  [v20 updateAgeRangeWith:v19 completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BCFB8DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_21BCFBA64;
  }

  else
  {
    v2 = sub_21BCFB9EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BCFB9EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BCFBA64(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_21BCFBAF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = a4;
  *(v4 + 216) = a2;
  *(v4 + 144) = a1;
  sub_21BE28D7C();
  *(v4 + 168) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v4 + 176) = v6;
  *(v4 + 184) = v5;

  return MEMORY[0x2822009F8](sub_21BCFBB94, v6, v5);
}

uint64_t sub_21BCFBB94()
{
  v1 = [*(v0 + 152) accountID];
  if (!v1)
  {
    sub_21BE28A0C();
    v1 = sub_21BE289CC();
  }

  *(v0 + 192) = v1;
  v2 = *(v0 + 160);
  v3 = *(v0 + 216);
  v4 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 80) = v2;
  sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  v5 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  *(v0 + 200) = v5;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_21BCFBD84;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB97F8, &qword_21BE40530);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_21BCF8794;
  *(v0 + 104) = &block_descriptor_162;
  *(v0 + 112) = v6;
  [v4 setGlobalStateForAltDSID:v3 forAltDSID:v1 privacyVersion:v5 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_21BCFBD84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_21BCFBF24;
  }

  else
  {
    v5 = sub_21BCFBEB4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCFBEB4()
{
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BCFBF24()
{
  v1 = v0[25];
  v2 = v0[24];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BCFBFA4(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2[24] = swift_task_alloc();
  v3 = sub_21BE264FC();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  sub_21BE28D7C();
  v2[33] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v2[34] = v6;
  v2[35] = v5;

  return MEMORY[0x2822009F8](sub_21BCFC144, v6, v5);
}

uint64_t sub_21BCFC144()
{
  v1 = *(v0 + 184);
  if (*(v1 + 48))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    *(v0 + 168) = v1;
    sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
    sub_21BE25F0C();
  }

  else
  {
    *(v1 + 48) = 0;
  }

  *(v0 + 288) = 0;
  if ([*(v0 + 176) response] == 2)
  {
    if (*(v1 + 48) == 1)
    {

      *(v1 + 48) = 1;
    }

    else
    {
      v6 = *(v0 + 184);
      swift_getKeyPath();
      v7 = swift_task_alloc();
      *(v7 + 16) = v6;
      *(v7 + 24) = 1;
      *(v0 + 160) = v6;
      sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
      sub_21BE25F0C();
    }

    sub_21BE2614C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FDC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = 1;
      _os_log_impl(&dword_21BB35000, v8, v9, "Setting showShareAgeRangeAgain to: %{BOOL}d", v10, 8u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    v11 = *(v0 + 256);
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);

    (*(v13 + 8))(v11, v12);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v3 = *(v0 + 184);
    sub_21BE264EC();
    v4 = *(v3 + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_21BCFC558;
    v5 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21BBB25CC;
    *(v0 + 104) = &block_descriptor_110;
    *(v0 + 112) = v5;
    [v4 fetchAgeWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21BCFC558()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_21BCFCC14;
  }

  else
  {
    v5 = sub_21BCFC688;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BCFC688()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = [v2 integerValue];

  v4 = [v1 upperbound];
  if (!v4)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
LABEL_8:

    goto LABEL_14;
  }

  v5 = v4;
  if ([v4 integerValue] >= v3)
  {
    goto LABEL_7;
  }

  v6 = *(v0 + 288);
  v7 = sub_21BE264DC();
  if (v6)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    sub_21BE2614C();
    v8 = v6;
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412546;
      v13 = v6;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      *(v11 + 12) = 1024;
      *(v11 + 14) = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "Failed to fetch age with error: %@, setting showShareAgeRangeAgain to: %{BOOL}d", v11, 0x12u);
      sub_21BB3A4CC(v12, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    goto LABEL_14;
  }

  if ((v7 & 1) == 0)
  {
LABEL_7:
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    goto LABEL_8;
  }

  v15 = [*(v0 + 176) invalidatedAt];
  if (v15)
  {
    v16 = v15;
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);

    sub_21BE25CDC();

    (*(v18 + 8))(v17, v19);
    v21 = sub_21BE25D1C();
    (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
    sub_21BB3A4CC(v20, &qword_27CDB9720, &unk_21BE39F00);
  }

  else
  {
    v25 = *(v0 + 184);
    v24 = *(v0 + 192);
    v26 = sub_21BE25D1C();
    (*(*(v26 - 8) + 56))(v24, 1, 1, v26);
    sub_21BB3A4CC(v24, &qword_27CDB9720, &unk_21BE39F00);
    v27 = *(v0 + 184);
    if (*(v25 + 48) == 1)
    {

      *(v27 + 48) = 1;
    }

    else
    {
      swift_getKeyPath();
      v28 = swift_task_alloc();
      *(v28 + 16) = v27;
      *(v28 + 24) = 1;
      *(v0 + 152) = v27;
      sub_21BCF65B4(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel, protocol conformance descriptor for AgeRangeSharingViewModel);
      sub_21BE25F0C();
    }

    sub_21BE2614C();
    v29 = sub_21BE26A2C();
    v30 = sub_21BE28FDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      *(v31 + 4) = 1;
      _os_log_impl(&dword_21BB35000, v29, v30, "Successfully fetched age and within grace period, setting showShareAgeRangeAgain to: %{BOOL}d", v31, 8u);
      MEMORY[0x21CF05C50](v31, -1, -1);
    }

    v32 = *(v0 + 248);
    v33 = *(v0 + 224);
    v34 = *(v0 + 232);
    v36 = *(v0 + 208);
    v35 = *(v0 + 216);
    v37 = *(v0 + 200);

    (*(v34 + 8))(v32, v33);
    (*(v36 + 8))(v35, v37);
  }

LABEL_14:

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21BCFCC14()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  swift_willThrow();
  (*(v2 + 8))(v1, v3);
  v4 = v0[37];
  sub_21BE2614C();
  v5 = v4;
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FDC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 1024;
    *(v8 + 14) = 0;
    _os_log_impl(&dword_21BB35000, v6, v7, "Failed to fetch age with error: %@, setting showShareAgeRangeAgain to: %{BOOL}d", v8, 0x12u);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[29] + 8))(v0[30], v0[28]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21BCFCE00(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_21BE26A4C();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BCFCEC0, 0, 0);
}

uint64_t sub_21BCFCEC0()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  v3 = [*(v1 + 72) accountID];
  if (!v3)
  {
    sub_21BE28A0C();
    v3 = sub_21BE289CC();
  }

  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_21BCFD024;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7EF0, &unk_21BE405B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BBB25CC;
  v0[13] = &block_descriptor_107_0;
  v0[14] = v4;
  [v2 fetchPrivacyVersionForAltDSID:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BCFD024()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_21BCFD200;
  }

  else
  {
    v2 = sub_21BCFD134;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BCFD134()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);

  if (v1)
  {
    v3 = *(v0 + 184);
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v4 = v3;
    v5 = sub_21BE2940C();

    v6 = v5 ^ 1;
  }

  else
  {

    v6 = 1;
  }

  v7 = *(v0 + 8);

  return v7(v6 & 1);
}

uint64_t sub_21BCFD200(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  swift_willThrow();

  sub_21BE2614C();
  v4 = v3;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 232);
    v8 = *(v1 + 208);
    v20 = *(v1 + 216);
    v9 = *(v1 + 200);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_21BE29A5C();
    v14 = sub_21BB3D81C(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21BB35000, v5, v6, "Failed to fetch privacy version from server: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);

    (*(v8 + 8))(v20, v9);
  }

  else
  {
    v16 = *(v1 + 208);
    v15 = *(v1 + 216);
    v17 = *(v1 + 200);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v1 + 8);

  return v18(1);
}

uint64_t AgeRangeSharingViewModel.deinit()
{
  sub_21BCBD3D4(*(v0 + 24), *(v0 + 32));

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken;
  v2 = sub_21BE25D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21BB5AEC4(*(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss), *(v0 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss + 8));

  v3 = OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel___observationRegistrar;
  v4 = sub_21BE25F5C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AgeRangeSharingViewModel.__deallocating_deinit()
{
  AgeRangeSharingViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21BCFD530(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21BDFD5FC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_21BCFD59C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21BCFD59C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21BE2991C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21BE28C7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21BCFD774(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21BCFD694(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21BCFD694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_21BE2995C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *v12;
      result = v12[1];
      v10 = v12[2];
      *v12 = *(v12 - 3);
      v12[2] = *(v12 - 1);
      *(v12 - 2) = result;
      *(v12 - 1) = v10;
      *(v12 - 3) = v14;
      v12 -= 3;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21BCFD774(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_21BDFD0AC(v8);
      v8 = result;
    }

    v88 = v8 + 16;
    v89 = *(v8 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v91 = &v8[16 * v89];
        v5 = *v91;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_21BCFDD74((v90 + 24 * *v91), (v90 + 24 * *v92), v90 + 24 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v5)
        {
          goto LABEL_129;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_130;
        }

        *v91 = v5;
        *(v91 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_131;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        v5 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      result = *(v11 + 8);
      v12 = *(v11 + 16);
      v13 = *v5 + 24 * v9;
      if (result == *(v13 + 8) && v12 == *(v13 + 16))
      {
        v15 = 0;
      }

      else
      {
        result = sub_21BE2995C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 64);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 4) && *v16 == *(v16 - 3))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_21BE2995C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 3;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v18 = 0;
          v19 = 24 * v7;
          v20 = 24 * v9;
          v21 = v9;
          do
          {
            if (v21 != v7 + v18 - 1)
            {
              v27 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v22 = v27 + v20;
              v23 = v27 + v19;
              v24 = *v22;
              v25 = *(v22 + 16);
              v26 = *(v23 - 8);
              *v22 = *(v23 - 24);
              *(v22 + 16) = v26;
              *(v23 - 24) = v24;
              *(v23 - 8) = v25;
            }

            ++v21;
            --v18;
            v19 -= 24;
            v20 += 24;
          }

          while (v21 < v7 + v18);
        }
      }
    }

    v28 = v5[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v28)
        {
          v29 = v5[1];
        }

        else
        {
          v29 = v9 + a4;
        }

        if (v29 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v29)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21BBBCBFC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_21BBBCBFC((v41 > 1), v42 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *v97;
    if (!*v97)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_21BCFDD74((*v5 + 24 * v85), (*v5 + 24 * *&v8[16 * v46 + 32]), *v5 + 24 * v86, v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21BDFD0AC(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_21BDFD020(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v30 = *v5;
  v31 = *v5 + 24 * v7;
  v95 = v9;
  v32 = v9 - v7;
LABEL_43:
  v33 = v30 + 24 * v7;
  v34 = *(v33 + 8);
  v35 = *(v33 + 16);
  v36 = v32;
  v37 = v31;
  while (1)
  {
    v38 = v34 == *(v37 - 2) && v35 == *(v37 - 1);
    if (v38 || (result = sub_21BE2995C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v31 += 24;
      --v32;
      if (v7 != v29)
      {
        goto LABEL_43;
      }

      v7 = v29;
      v5 = a3;
      v9 = v95;
      goto LABEL_54;
    }

    if (!v30)
    {
      break;
    }

    v39 = *v37;
    v34 = v37[1];
    v35 = v37[2];
    *v37 = *(v37 - 3);
    v37[2] = *(v37 - 1);
    *(v37 - 2) = v34;
    *(v37 - 1) = v35;
    *(v37 - 3) = v39;
    v37 -= 3;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_21BCFDD74(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v15 && (sub_21BE2995C() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v5 -= 24;
    do
    {
      v16 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v16 && (sub_21BE2995C() & 1) != 0)
      {
        v19 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v17 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

uint64_t sub_21BCFDFD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AgeRangeSharingViewModel(0);
  v6 = swift_allocObject();

  return sub_21BCFE038(a1, a2, v6);
}

uint64_t sub_21BCFE038(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = sub_21BE25D6C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = MEMORY[0x277D84F90];
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 1;
  *(a3 + 64) = 0;
  *(a3 + 80) = 0;
  *(a3 + 82) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 1;
  sub_21BE25D5C();
  (*(v14 + 32))(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__dismissToken, v16, v13);
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldOpenPersonalInfoOnMac) = 0;
  v17 = (a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__onDismiss);
  *v17 = 0;
  v17[1] = 0;
  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__shouldShowOnboarding) = 0;
  sub_21BE25F4C();
  *(a3 + 16) = a1;
  *(a3 + 72) = a2;
  v18 = a1;
  sub_21BE263FC();
  v19 = sub_21BE289CC();

  v20 = [objc_opt_self() bundleWithIdentifier_];

  v21 = [objc_opt_self() flowWithBundle_];
  if (v21)
  {
    v22 = [v21 contentVersion];
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    sub_21BE2614C();
    v24 = v23;
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FCC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v46 = v6;
      v28 = v27;
      v29 = swift_slowAlloc();
      v45 = v7;
      v30 = v29;
      v47 = v29;
      *v28 = 136315138;
      v24 = v24;
      v31 = [v24 description];
      v43 = v18;
      v32 = v31;
      v33 = sub_21BE28A0C();
      v44 = v12;
      v34 = v33;
      v36 = v35;

      v37 = sub_21BB3D81C(v34, v36, &v47);

      *(v28 + 4) = v37;
      _os_log_impl(&dword_21BB35000, v25, v26, "Privacy version for onboarding: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21CF05C50](v30, -1, -1);
      MEMORY[0x21CF05C50](v28, -1, -1);

      (*(v45 + 8))(v44, v46);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    sub_21BE2614C();
    v38 = sub_21BE26A2C();
    v39 = sub_21BE28FDC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21BB35000, v38, v39, "Failed to get privacy version from onboarding", v40, 2u);
      MEMORY[0x21CF05C50](v40, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v24 = sub_21BE293EC();
  }

  *(a3 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion) = v24;
  return a3;
}

void sub_21BCFE528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 25);
  *(v1 + 80) = *(v0 + 24);
  *(v1 + 81) = v2;
}

void sub_21BCFE550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 88) = *(v0 + 24);
  *(v1 + 96) = v2;
}

uint64_t sub_21BCFE564(uint64_t a1, uint64_t a2)
{
  v4 = sub_21BE26A4C();
  MEMORY[0x28223BE20](v4);
  sub_21BB3A2A4(0, &qword_27CDB9E70, 0x277CC1E90);

  v5 = sub_21BCFAA1C(a1, a2, 0);
  v6 = [v5 localizedName];

  v7 = sub_21BE28A0C();
  return v7;
}

uint64_t sub_21BCFE7F8(uint64_t a1)
{
  result = sub_21BE25D6C();
  if (v2 <= 0x3F)
  {
    result = sub_21BE25F5C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of AgeRangeSharingViewModel.fetchAccountInfo(altDSID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 840) + **(*v2 + 840));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21BBA6A64;

  return v8(a1, a2);
}

uint64_t dispatch thunk of AgeRangeSharingViewModel.load()()
{
  v4 = (*(*v0 + 856) + **(*v0 + 856));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21BBB7EB8;

  return v4();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AgeRangeSharingViewModel.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AgeRangeSharingViewModel.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_21BCFEEA0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21BCFEEBC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_21BCFEEEC(uint64_t a1)
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

uint64_t sub_21BCFEF68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
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
      if (v10 >= 3)
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

  return (v4 | v9) + 254;
}

void sub_21BCFF090(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

void sub_21BCFF2B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  v4 = *(v0 + 32);
  *(v2 + 24) = v1;
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;
  sub_21BCBD3B8(v1, v4);
  sub_21BCBD3D4(v3, v5);
}

void sub_21BCFF304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion);
  *(v1 + OBJC_IVAR____TtC14FamilyCircleUI24AgeRangeSharingViewModel__privacyVersion) = v2;
  v4 = v2;
}

void sub_21BCFF35C()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_21BCFF398()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

void sub_21BCFF3D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 28);
  *(v1 + 52) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_21BCFF510@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F38, &qword_21BE42520);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F40, &qword_21BE42528);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  *v6 = sub_21BE275DC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F48, &qword_21BE42530);
  sub_21BCFF704(v2, &v6[*(v10 + 44)]);
  v11 = sub_21BE27BAC();
  v12 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v11)
  {
    v12 = sub_21BE27BBC();
  }

  sub_21BBB7D84(v6, v9, &qword_27CDB9F38, &qword_21BE42520);
  v13 = &v9[*(v7 + 36)];
  *v13 = v12;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  v13[40] = 1;
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = sub_21BE2826C();
  v16 = sub_21BE27B7C();
  sub_21BBB7D84(v9, a1, &qword_27CDB9F40, &qword_21BE42528);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F50, &qword_21BE42538);
  v18 = a1 + *(result + 36);
  *v18 = v15;
  *(v18 + 8) = v16;
  return result;
}

uint64_t sub_21BCFF704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F58, &qword_21BE42540);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F60, &qword_21BE42548);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (v24 - v15);
  *v16 = sub_21BE2869C();
  v16[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F68, &qword_21BE42550);
  sub_21BCFF988(a1, v16 + *(v18 + 44));
  sub_21BE2869C();
  sub_21BE26F2C();
  v19 = (v16 + *(v11 + 44));
  v20 = v24[1];
  *v19 = v24[0];
  v19[1] = v20;
  v19[2] = v24[2];
  *v9 = sub_21BE2770C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F70, &qword_21BE42558);
  sub_21BCFFCE8(a1, &v9[*(v21 + 44)]);
  sub_21BBA3854(v16, v14, &qword_27CDB9F60, &qword_21BE42548);
  sub_21BBA3854(v9, v7, &qword_27CDB9F58, &qword_21BE42540);
  sub_21BBA3854(v14, a2, &qword_27CDB9F60, &qword_21BE42548);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F78, &unk_21BE42560);
  sub_21BBA3854(v7, a2 + *(v22 + 48), &qword_27CDB9F58, &qword_21BE42540);
  sub_21BB3A4CC(v9, &qword_27CDB9F58, &qword_21BE42540);
  sub_21BB3A4CC(v16, &qword_27CDB9F60, &qword_21BE42548);
  sub_21BB3A4CC(v7, &qword_27CDB9F58, &qword_21BE42540);
  return sub_21BB3A4CC(v14, &qword_27CDB9F60, &qword_21BE42548);
}

uint64_t sub_21BCFF988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FB0, &qword_21BE42598);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v38 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FD0, &qword_21BE42650);
  v11 = v10 - 8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = *(sub_21BE2723C() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_21BE276AC();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  __asm { FMOV            V0.2D, #4.0 }

  *v16 = _Q0;
  v41 = a1[2];
  v25 = v41;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FD8, &qword_21BE42658);
  *&v16[*(v26 + 52)] = v25;
  *&v16[*(v26 + 56)] = 256;
  v27 = &v16[*(v11 + 44)];
  *v27 = 0x3FF0000000000000;
  *(v27 + 4) = 0;
  sub_21BD01C94(&v41, v40);

  v28 = sub_21BE2837C();
  v29 = sub_21BE282FC();
  KeyPath = swift_getKeyPath();
  v31 = (v9 + *(v4 + 44));
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
  v33 = *MEMORY[0x277CE1050];
  v34 = sub_21BE283BC();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = swift_getKeyPath();
  *v9 = v28;
  v9[1] = KeyPath;
  v9[2] = v29;
  sub_21BBA3854(v16, v14, &qword_27CDB9FD0, &qword_21BE42650);
  sub_21BBA3854(v9, v7, &qword_27CDB9FB0, &qword_21BE42598);
  v35 = v39;
  sub_21BBA3854(v14, v39, &qword_27CDB9FD0, &qword_21BE42650);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FE0, &unk_21BE42660);
  sub_21BBA3854(v7, v35 + *(v36 + 48), &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BB3A4CC(v9, &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BB3A4CC(v16, &qword_27CDB9FD0, &qword_21BE42650);
  sub_21BB3A4CC(v7, &qword_27CDB9FB0, &qword_21BE42598);
  return sub_21BB3A4CC(v14, &qword_27CDB9FD0, &qword_21BE42650);
}

uint64_t sub_21BCFFCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F80, &qword_21BE4E530);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F88, &qword_21BE42570);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F90, &qword_21BE42578);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F98, &qword_21BE42580);
  v16 = MEMORY[0x28223BE20](v54);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  *v12 = sub_21BE275DC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FA0, &qword_21BE42588) + 44)];
  v55 = a1;
  sub_21BD00284(v24);
  LOBYTE(a1) = sub_21BE27BCC();
  v25 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != a1)
  {
    v25 = sub_21BE27BBC();
  }

  sub_21BBB7D84(v12, v15, &qword_27CDB9F88, &qword_21BE42570);
  v26 = &v15[*(v13 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  v28 = sub_21BE27B8C();
  *(inited + 32) = v28;
  v29 = sub_21BE27B9C();
  *(inited + 33) = v29;
  v30 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v28)
  {
    v30 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v29)
  {
    v30 = sub_21BE27BBC();
  }

  v31 = v57;
  sub_21BE26E0C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_21BBB7D84(v15, v21, &qword_27CDB9F90, &qword_21BE42578);
  v40 = &v21[*(v54 + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  sub_21BBB7D84(v21, v23, &qword_27CDB9F98, &qword_21BE42580);
  if (*(v55 + 56))
  {
    v41 = v53;
    sub_21BE285AC();
    v42 = sub_21BE27B7C();
    sub_21BE26E0C();
    v43 = v41 + *(v31 + 36);
    *v43 = v42;
    *(v43 + 8) = v44;
    *(v43 + 16) = v45;
    *(v43 + 24) = v46;
    *(v43 + 32) = v47;
    *(v43 + 40) = 0;
    sub_21BBB7D84(v41, v9, &qword_27CDB9EC8, &qword_21BE42428);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v56 + 56))(v9, v48, 1, v31);
  sub_21BBA3854(v23, v18, &qword_27CDB9F98, &qword_21BE42580);
  v49 = v58;
  sub_21BBA3854(v9, v58, &qword_27CDB9F80, &qword_21BE4E530);
  v50 = v59;
  sub_21BBA3854(v18, v59, &qword_27CDB9F98, &qword_21BE42580);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FA8, &qword_21BE42590);
  sub_21BBA3854(v49, v50 + *(v51 + 48), &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BB3A4CC(v9, &qword_27CDB9F80, &qword_21BE4E530);
  sub_21BB3A4CC(v23, &qword_27CDB9F98, &qword_21BE42580);
  sub_21BB3A4CC(v49, &qword_27CDB9F80, &qword_21BE4E530);
  return sub_21BB3A4CC(v18, &qword_27CDB9F98, &qword_21BE42580);
}

uint64_t sub_21BD00284@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FB0, &qword_21BE42598);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v27 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-v7];
  v26 = sub_21BE2771C();
  v29 = 1;
  sub_21BD0064C(&v42);
  v32 = *&v43[16];
  v33 = *&v43[32];
  v34 = *&v43[48];
  v35 = v43[64];
  v30 = v42;
  v31 = *v43;
  v37 = v43[64];
  v36[2] = *&v43[16];
  v36[3] = *&v43[32];
  v36[4] = *&v43[48];
  v36[0] = v42;
  v36[1] = *v43;
  sub_21BBA3854(&v30, &v39, &qword_27CDB9FB8, &qword_21BE425A0);
  sub_21BB3A4CC(v36, &qword_27CDB9FB8, &qword_21BE425A0);
  *&v28[39] = v32;
  *&v28[55] = v33;
  *&v28[71] = v34;
  v28[87] = v35;
  *&v28[7] = v30;
  *&v28[23] = v31;
  v25 = v29;
  v9 = sub_21BE2837C();
  v10 = [objc_opt_self() tertiaryLabelColor];
  v11 = sub_21BE2826C();
  KeyPath = swift_getKeyPath();
  v13 = (v8 + *(v4 + 44));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
  v15 = *MEMORY[0x277CE1050];
  v16 = sub_21BE283BC();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v8 = v9;
  v8[1] = KeyPath;
  v8[2] = v11;
  v17 = v27;
  sub_21BBA3854(v8, v27, &qword_27CDB9FB0, &qword_21BE42598);
  v18 = v26;
  v39 = v26;
  LOBYTE(v15) = v25;
  LOBYTE(v40[0]) = v25;
  *(&v40[2] + 1) = *&v28[32];
  *(&v40[3] + 1) = *&v28[48];
  *(&v40[4] + 1) = *&v28[64];
  *(&v40[5] + 1) = *&v28[80];
  *(v40 + 1) = *v28;
  *(&v40[1] + 1) = *&v28[16];
  HIDWORD(v40[5]) = *&v38[3];
  *(&v40[5] + 9) = *v38;
  v41 = 0x3FF0000000000000;
  v19 = v40[4];
  *(a2 + 64) = v40[3];
  *(a2 + 80) = v19;
  *(a2 + 96) = v40[5];
  v20 = v40[0];
  *a2 = v39;
  *(a2 + 16) = v20;
  v21 = v40[2];
  *(a2 + 32) = v40[1];
  *(a2 + 48) = v21;
  *(a2 + 112) = 0x3FF0000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9FC0, &qword_21BE42610);
  sub_21BBA3854(v17, a2 + *(v22 + 64), &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BBA3854(&v39, &v42, &qword_27CDB9FC8, &qword_21BE42618);
  sub_21BB3A4CC(v8, &qword_27CDB9FB0, &qword_21BE42598);
  sub_21BB3A4CC(v17, &qword_27CDB9FB0, &qword_21BE42598);
  v42 = v18;
  v43[0] = v15;
  *&v43[33] = *&v28[32];
  *&v43[49] = *&v28[48];
  v44 = *&v28[64];
  v45 = *&v28[80];
  *&v43[1] = *v28;
  *&v43[17] = *&v28[16];
  *&v46[3] = *&v38[3];
  *v46 = *v38;
  v47 = 0x3FF0000000000000;
  return sub_21BB3A4CC(&v42, &qword_27CDB9FC8, &qword_21BE42618);
}

uint64_t sub_21BD0064C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_21BE2766C();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BE2765C();
  sub_21BE2764C();
  sub_21BE2763C();
  sub_21BE2764C();
  sub_21BE2768C();
  v4 = sub_21BE27DAC();
  v28 = v5;
  v29 = v4;
  v27 = v6;
  v30 = v7;
  sub_21BE2765C();
  sub_21BE2764C();
  sub_21BE2763C();
  sub_21BE2764C();
  sub_21BE2768C();
  v8 = sub_21BE27DAC();
  v10 = v9;
  v12 = v11;
  sub_21BE27BEC();
  v13 = sub_21BE27D9C();
  v15 = v14;
  v17 = v16;

  sub_21BBC7C7C(v8, v10, v12 & 1);

  sub_21BE2833C();
  v18 = sub_21BE27D4C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v29;
  *(a2 + 8) = v28;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v30;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  sub_21BBA4A38(v29, v28, v27 & 1);

  sub_21BBA4A38(v18, v20, v22 & 1);

  sub_21BBC7C7C(v18, v20, v22 & 1);

  sub_21BBC7C7C(v29, v28, v27 & 1);
}

uint64_t sub_21BD00964@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EA8, &qword_21BE42408);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  *v8 = sub_21BE2770C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EB0, &qword_21BE42410);
  sub_21BD01084(&v8[*(v9 + 44)]);
  v10 = [objc_opt_self() systemBackgroundColor];
  v11 = sub_21BE2826C();
  v12 = sub_21BE27B7C();
  v13 = &v8[*(v3 + 44)];
  *v13 = v11;
  v13[8] = v12;
  v14 = sub_21BE2828C();
  v45 = 0x800000021BE5D350;
  v46 = v14;
  v43 = 0x800000021BE5D380;
  v15 = sub_21BE2829C();
  v41 = v15;
  v51 = sub_21BE2830C();
  v48 = 0x800000021BE5D3B0;
  v50 = sub_21BE282BC();
  v49 = sub_21BE27B7C();
  v36 = 0x800000021BE5D3D0;
  v35 = sub_21BE282EC();
  v37 = 0x800000021BE5D3F0;
  v38 = sub_21BE282CC();
  v39 = 0x800000021BE5D410;
  v47 = v6;
  sub_21BBA3854(v8, v6, &qword_27CDB9EA8, &qword_21BE42408);
  sub_21BBA3854(v6, a1, &qword_27CDB9EA8, &qword_21BE42408);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EB8, &qword_21BE42418);
  v17 = (a1 + v16[12]);
  *&v52 = 0x6E6769736F6ELL;
  *(&v52 + 1) = 0xE600000000000000;
  *&v53 = v14;
  *(&v53 + 1) = 0x746E65746E6F43;
  v44 = 0xD000000000000025;
  *&v54[0] = 0xE700000000000000;
  *(&v54[0] + 1) = 0xD000000000000025;
  *&v54[1] = 0x800000021BE5D350;
  BYTE8(v54[1]) = 1;
  v18 = v53;
  *v17 = v52;
  v17[1] = v18;
  v17[2] = v54[0];
  *(v17 + 41) = *(v54 + 9);
  v19 = (a1 + v16[16]);
  v42 = 0xD000000000000021;
  *&v55 = 0xD000000000000021;
  *(&v55 + 1) = 0x800000021BE5D380;
  *v56 = v15;
  strcpy(&v56[8], "Communication");
  *&v56[22] = -4864;
  strcpy(&v56[24], "Contacts Only");
  *&v56[38] = -4864;
  v56[40] = 1;
  v20 = *v56;
  *v19 = v55;
  v19[1] = v20;
  v19[2] = *&v56[16];
  *(v19 + 41) = *&v56[25];
  v21 = (a1 + v16[20]);
  *&v57 = 0x656C637269632E69;
  *(&v57 + 1) = 0xE800000000000000;
  *&v58 = v51;
  *(&v58 + 1) = 0x697373696D726550;
  v40 = 0xD00000000000001DLL;
  *&v59 = 0xEB00000000736E6FLL;
  *(&v59 + 1) = 0xD00000000000001DLL;
  *&v60[0] = v48;
  BYTE8(v60[0]) = 1;
  *&v60[1] = v50;
  BYTE8(v60[1]) = v49;
  v22 = v58;
  *v21 = v57;
  v21[1] = v22;
  v23 = v60[0];
  v21[2] = v59;
  v21[3] = v23;
  *(v21 + 57) = *(v60 + 9);
  v24 = (a1 + v16[24]);
  v25 = v35;
  v26 = v36;
  *&v61 = 0xD000000000000015;
  *(&v61 + 1) = v36;
  *v62 = v35;
  strcpy(&v62[8], "Always Allowed");
  v62[23] = -18;
  *&v62[24] = 0xD000000000000014;
  v27 = v37;
  *&v62[32] = v37;
  v62[40] = 1;
  v28 = *v62;
  *v24 = v61;
  v24[1] = v28;
  v24[2] = *&v62[16];
  *(v24 + 41) = *&v62[25];
  v29 = (a1 + v16[28]);
  HIWORD(v63) = -4864;
  v30 = v38;
  v31 = v39;
  *v64 = v38;
  strcpy(&v64[8], "Always Blocked");
  v64[23] = -18;
  *&v64[24] = 0xD000000000000013;
  *&v64[32] = v39;
  v64[40] = 0;
  v32 = *&v64[25];
  strcpy(&v63, "x.square.fill");
  v33 = *v64;
  *v29 = v63;
  v29[1] = v33;
  v29[2] = *&v64[16];
  *(v29 + 41) = v32;
  sub_21BD01A84(&v52, v76);
  sub_21BD01A84(&v55, v76);
  sub_21BBA3854(&v57, v76, &qword_27CDB9EC0, &qword_21BE42420);
  sub_21BD01A84(&v61, v76);
  sub_21BD01A84(&v63, v76);
  sub_21BB3A4CC(v8, &qword_27CDB9EA8, &qword_21BE42408);
  strcpy(v65, "x.square.fill");
  v65[7] = -4864;
  v66 = v30;
  strcpy(v67, "Always Blocked");
  v67[15] = -18;
  v68 = 0xD000000000000013;
  v69 = v31;
  v70 = 0;
  sub_21BD01ABC(v65);
  v71[0] = 0xD000000000000015;
  v71[1] = v26;
  v71[2] = v25;
  strcpy(v72, "Always Allowed");
  v72[15] = -18;
  v73 = 0xD000000000000014;
  v74 = v27;
  v75 = 1;
  sub_21BD01ABC(v71);
  v76[0] = 0x656C637269632E69;
  v76[1] = 0xE800000000000000;
  v76[2] = v51;
  v76[3] = 0x697373696D726550;
  v76[4] = 0xEB00000000736E6FLL;
  v76[5] = v40;
  v76[6] = v48;
  v77 = 1;
  v78 = v50;
  v79 = v49;
  sub_21BB3A4CC(v76, &qword_27CDB9EC0, &qword_21BE42420);
  v80[0] = v42;
  v80[1] = v43;
  v80[2] = v41;
  strcpy(v81, "Communication");
  v81[7] = -4864;
  strcpy(v82, "Contacts Only");
  v82[7] = -4864;
  v83 = 1;
  sub_21BD01ABC(v80);
  v84[0] = 0x6E6769736F6ELL;
  v84[1] = 0xE600000000000000;
  v84[2] = v46;
  v84[3] = 0x746E65746E6F43;
  v84[4] = 0xE700000000000000;
  v84[5] = v44;
  v84[6] = v45;
  v85 = 1;
  sub_21BD01ABC(v84);
  return sub_21BB3A4CC(v47, &qword_27CDB9EA8, &qword_21BE42408);
}

uint64_t sub_21BD01084@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EC8, &qword_21BE42428);
  v1 = MEMORY[0x28223BE20](v53);
  v55 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9ED0, &qword_21BE42430);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9ED8, &qword_21BE42438);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EE0, &qword_21BE42440);
  v11 = MEMORY[0x28223BE20](v50);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v51 = &v49 - v16;
  *v7 = sub_21BE275DC();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EE8, &qword_21BE42448);
  sub_21BD015B0(&v7[*(v17 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF0, &qword_21BE42450);
  inited = swift_initStackObject();
  v49 = xmmword_21BE33260;
  *(inited + 16) = xmmword_21BE33260;
  v19 = sub_21BE27BAC();
  *(inited + 32) = v19;
  v20 = sub_21BE27BCC();
  *(inited + 33) = v20;
  v21 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v19)
  {
    v21 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v20)
  {
    v21 = sub_21BE27BBC();
  }

  sub_21BBB7D84(v7, v10, &qword_27CDB9ED0, &qword_21BE42430);
  v22 = &v10[*(v8 + 36)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = swift_initStackObject();
  *(v23 + 16) = v49;
  v24 = sub_21BE27B8C();
  *(v23 + 32) = v24;
  v25 = sub_21BE27B9C();
  *(v23 + 33) = v25;
  v26 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v24)
  {
    v26 = sub_21BE27BBC();
  }

  sub_21BE27BBC();
  if (sub_21BE27BBC() != v25)
  {
    v26 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_21BBB7D84(v10, v15, &qword_27CDB9ED8, &qword_21BE42438);
  v35 = &v15[*(v50 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = v15;
  v37 = v51;
  sub_21BBB7D84(v36, v51, &qword_27CDB9EE0, &qword_21BE42440);
  sub_21BE285AC();
  v38 = sub_21BE27B7C();
  sub_21BE26E0C();
  v39 = v52;
  v40 = &v4[*(v53 + 36)];
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  sub_21BBA3854(v37, v39, &qword_27CDB9EE0, &qword_21BE42440);
  v45 = v55;
  sub_21BBA3854(v4, v55, &qword_27CDB9EC8, &qword_21BE42428);
  v46 = v54;
  sub_21BBA3854(v39, v54, &qword_27CDB9EE0, &qword_21BE42440);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EF8, &qword_21BE42458);
  sub_21BBA3854(v45, v46 + *(v47 + 48), &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BB3A4CC(v4, &qword_27CDB9EC8, &qword_21BE42428);
  sub_21BB3A4CC(v37, &qword_27CDB9EE0, &qword_21BE42440);
  sub_21BB3A4CC(v45, &qword_27CDB9EC8, &qword_21BE42428);
  return sub_21BB3A4CC(v39, &qword_27CDB9EE0, &qword_21BE42440);
}

uint64_t sub_21BD015B0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F00, &qword_21BE42460);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  sub_21BE2767C();
  v8 = sub_21BE27DAC();
  v27 = v9;
  v28 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21BE286AC();
  sub_21BE2725C();
  v15 = v12 & 1;
  v59 = v12 & 1;
  sub_21BE2767C();
  sub_21BE2708C();
  *&v7[*(v3 + 44)] = 257;
  v16 = v26;
  sub_21BBA3854(v7, v26, &qword_27CDB9F00, &qword_21BE42460);
  *&v37 = v8;
  *(&v37 + 1) = v10;
  LOBYTE(v38) = v15;
  *(&v38 + 1) = *v36;
  DWORD1(v38) = *&v36[3];
  *(&v38 + 1) = v14;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  v39 = v29;
  v40 = v30;
  v41 = v31;
  v42 = v32;
  v17 = v34;
  v18 = v35;
  v19 = v32;
  *(a1 + 96) = v33;
  *(a1 + 112) = v17;
  *(a1 + 128) = v18;
  v20 = v40;
  v21 = v41;
  v22 = v38;
  *(a1 + 32) = v39;
  *(a1 + 48) = v20;
  v46 = 0x3FF0000000000000;
  *(a1 + 144) = 0x3FF0000000000000;
  *(a1 + 64) = v21;
  *(a1 + 80) = v19;
  *a1 = v37;
  *(a1 + 16) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9F08, &qword_21BE42468);
  sub_21BBA3854(v16, a1 + *(v23 + 48), &qword_27CDB9F00, &qword_21BE42460);
  sub_21BBA3854(&v37, v47, &qword_27CDB9F10, &qword_21BE42470);
  sub_21BB3A4CC(v7, &qword_27CDB9F00, &qword_21BE42460);
  sub_21BB3A4CC(v16, &qword_27CDB9F00, &qword_21BE42460);
  v47[0] = v28;
  v47[1] = v27;
  v48 = v15;
  *v49 = *v36;
  *&v49[3] = *&v36[3];
  v50 = v14;
  v55 = v33;
  v56 = v34;
  v57 = v35;
  v51 = v29;
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v58 = 0x3FF0000000000000;
  return sub_21BB3A4CC(v47, &qword_27CDB9F10, &qword_21BE42470);
}

uint64_t sub_21BD018D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE2770C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E78, &qword_21BE423D8) + 44);
  *v3 = sub_21BE2771C();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E80, &qword_21BE423E0);
  sub_21BD00964(v3 + *(v4 + 44));
  v5 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E88, &qword_21BE423E8) + 36));
  v6 = *(sub_21BE2723C() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_21BE276AC();
  (*(*(v8 - 8) + 104))(&v5[v6], v7, v8);
  __asm { FMOV            V0.2D, #12.0 }

  *v5 = _Q0;
  *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E90, &qword_21BE423F0) + 36)] = 256;
  LOBYTE(v7) = sub_21BE27B7C();
  v14 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9E98, &qword_21BE423F8) + 36);
  *v14 = v7;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 1;
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v16 = sub_21BE2826C();
  v17 = sub_21BE27B7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9EA0, &qword_21BE42400);
  v19 = a2 + *(result + 36);
  *v19 = v16;
  *(v19 + 8) = v17;
  return result;
}

uint64_t sub_21BD01AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_21BD01B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BD01B94()
{
  result = qword_27CDB9F18;
  if (!qword_27CDB9F18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9EA0, &qword_21BE42400);
    v4[0] = sub_21BB3B038(&qword_27CDB9F20, &qword_27CDB9F28, qword_21BE424C0, MEMORY[0x277CE1198]);
    v4[1] = sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9F18);
  }

  return result;
}

unint64_t sub_21BD01CF0()
{
  result = qword_27CDB9FE8;
  if (!qword_27CDB9FE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9F50, &qword_21BE42538);
    v4[0] = sub_21BD01DA8();
    v4[1] = sub_21BB3B038(&qword_27CDBBB80, &qword_27CDB9F30, &qword_21BE48230, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9FE8);
  }

  return result;
}

unint64_t sub_21BD01DA8()
{
  result = qword_27CDB9FF0;
  if (!qword_27CDB9FF0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB9F40, &qword_21BE42528);
    v4[0] = sub_21BB3B038(&qword_27CDB9FF8, &qword_27CDB9F38, &qword_21BE42520, MEMORY[0x277CE1138]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDB9FF0);
  }

  return result;
}

void *sub_21BD01E60@<X0>(void *a1@<X8>)
{
  sub_21BD0A07C();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BD01EB0(uint64_t *a1)
{
  sub_21BD0A07C();

  return sub_21BE2756C();
}

uint64_t sub_21BD01F10()
{
  v1 = sub_21BE2754C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
  v9 = v5;
  if (v10 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_21BE28FEC();
    v6 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v9, &qword_27CDBA100, &unk_21BE42B48);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

void sub_21BD02078(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    sub_21BE26CAC();

    v6 = v15[0];
    if (!v15[0])
    {
      v6 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v7 = sub_21BE289CC();
    v8 = [v6 memberForAltDSID_];

    if (v8)
    {
      v9 = swift_allocObject();
      v10 = *(a1 + 16);
      *(v9 + 16) = *a1;
      *(v9 + 32) = v10;
      *(v9 + 48) = *(a1 + 32);
      *(v9 + 57) = *(a1 + 41);
      *(v9 + 80) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v15[8] = v11;
      sub_21BD0924C(a1, v15);
      sub_21BE283EC();
      v12 = v15[0];
      v13 = v15[1];
      v14 = sub_21BD09240;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v9 = 0;
    }

    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v9;
  }

  else
  {
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
    sub_21BE2726C();
    __break(1u);
  }
}

void sub_21BD02298(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = a1[2];
  if (!v6)
  {
    type metadata accessor for FAFamilyLandingPageViewModel();
    v42 = &qword_27CDB68F0;
    v43 = type metadata accessor for FAFamilyLandingPageViewModel;
    v44 = protocol conformance descriptor for FAFamilyLandingPageViewModel;
LABEL_25:
    sub_21BD0906C(v42, 255, v43, v44);
    sub_21BE2726C();
    __break(1u);
    return;
  }

  v7 = v6;
  sub_21BD01F10();
  LOBYTE(v45) = 0;
  sub_21BE2858C();
  v8 = a1[4];
  if (!v8)
  {
    type metadata accessor for LocationViewModel(0);
    v42 = &qword_27CDBDC20;
    v43 = type metadata accessor for LocationViewModel;
    v44 = protocol conformance descriptor for LocationViewModel;
    goto LABEL_25;
  }

  v9 = *&v7[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs];

  v10 = v8;

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore(0);
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);

  *(a3 + 96) = sub_21BE270CC();
  *(a3 + 104) = v11;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BD0906C(&qword_27CDB5C40, 255, type metadata accessor for FamilyCircleStore, protocol conformance descriptor for AsyncStore<A>);

  *(a3 + 112) = sub_21BE270CC();
  *(a3 + 120) = v12;
  swift_unknownObjectWeakInit();
  sub_21BE25FEC();
  sub_21BE25FDC();
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_21BE289CC();

  v15 = [v13 initWithSuiteName_];

  v16 = v15;
  if (!v15)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  }

  *(a3 + 144) = v16;
  sub_21BE283EC();
  *(a3 + 184) = 0;
  *(a3 + 192) = v46;
  sub_21BE283EC();
  *(a3 + 200) = 0;
  *(a3 + 208) = v46;
  sub_21BE283EC();
  *(a3 + 216) = 0;
  *(a3 + 224) = v46;
  [objc_allocWithZone(type metadata accessor for FamilyMemberAccountDetailsViewModel()) init];
  sub_21BE283EC();
  *(a3 + 248) = v45;
  *(a3 + 256) = v46;
  sub_21BE283EC();
  *(a3 + 264) = v45;
  *(a3 + 272) = v46;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v17 = v47;
  *a3 = sub_21BE270CC();
  *(a3 + 8) = v18;
  *(a3 + 152) = a2;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  v19 = v7;
  v20 = a2;
  *(a3 + 16) = sub_21BE270CC();
  *(a3 + 24) = v21;
  swift_unknownObjectWeakAssign();
  type metadata accessor for LocationViewModel(0);
  sub_21BD0906C(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v22 = v10;
  *(a3 + 32) = sub_21BE270CC();
  *(a3 + 40) = v23;
  *(a3 + 160) = v47;
  *(a3 + 168) = v48;
  *(a3 + 176) = v49;
  *(a3 + 136) = v9;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(a3 + 48) = sub_21BD09388;
  *(a3 + 56) = v24;
  *(a3 + 64) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  *(v25 + 24) = v19;
  *(a3 + 72) = sub_21BD09390;
  *(a3 + 80) = v25;
  *(a3 + 88) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v20;
  v27 = v19;
  v28 = v26;
  sub_21BE26CAC();

  v29 = v45;
  if (!v45)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D08248]) &selRef_onComplete_onQueue_];
  }

  v30 = [v29 me];

  if (v30 && (v31 = [v30 altDSID], v30, v31))
  {
    v32 = sub_21BE28A0C();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0xE000000000000000;
  }

  v35 = [v28 altDSID];
  if (v35)
  {
    v36 = v35;
    v37 = sub_21BE28A0C();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0xE000000000000000;
  }

  v40 = objc_allocWithZone(type metadata accessor for FamilyDependentPasswordResetController());
  v41 = sub_21BC0C5A4(v32, v34, v37, v39);

  swift_unknownObjectRelease();
  *(a3 + 232) = v41;
  *(a3 + 240) = 0;
}

double sub_21BD02A58()
{
  v1 = sub_21BE2757C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v12[0] = *v0;
  v12[1] = v5;
  v13[0] = v0[2];
  *(v13 + 9) = *(v0 + 41);
  sub_21BD02078(v12, v11);
  v6 = v11[0];
  v7 = v11[1];
  v8 = v11[2];
  v9 = v11[3];
  (*(v2 + 104))(v4, *MEMORY[0x277CDDDC0], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA0D0, &qword_21BE42A50);
  sub_21BD090B4();
  sub_21BE280AC();
  (*(v2 + 8))(v4, v1);
  return sub_21BD091E8(v6, v7, v8, v9);
}

void sub_21BD02BD4(uint64_t a1@<X8>)
{
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + 152) isMe] && ((*(v4 + 104))(v6, *MEMORY[0x277D07F40], v3), v7 = MEMORY[0x21CF01150](v6), (*(v4 + 8))(v6, v3), (v7 & 1) != 0) && (sub_21BE2916C() & 1) != 0)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    v11 = sub_21BE2599C();
    v13 = v12;

    v14 = [v9 bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    v18 = 0x800000021BE5D520;
    v19 = 0xD000000000000029;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v15 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19;
  *(a1 + 40) = v18;
  *(a1 + 48) = 0;
}

uint64_t sub_21BD02E3C(void *a1)
{
  type metadata accessor for MemberDetailsAppleCashViewModel(0);
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  swift_allocObject();
  v2 = a1;
  v3 = sub_21BCC3AC8(v2, v5);

  return v3;
}

char *sub_21BD02EA4(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v3 = v11;
  if (!v11)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v4 = [v3 me];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v5 = v11;
  if (!v11)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v6 = [objc_allocWithZone(FAAppleCardUtilities) init];
  type metadata accessor for MemberDetailsAppleCardViewModel(0);
  v7 = swift_allocObject();
  v8 = a1;
  v9 = sub_21BD09398(v8, v4, v6, v5, v7);

  return v9;
}

uint64_t sub_21BD03038()
{
  v1 = *(v0 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_21BE26CAC();

  v3 = v8;
  if (!v8)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v4 = [v3 me];

  if (v4)
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v5 = sub_21BE2940C();

    v6 = v5 ^ 1;
  }

  else
  {

    v6 = 1;
  }

  return v6 & 1;
}

double sub_21BD03148@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_21BD03038();
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v7 = sub_21BE270CC();
  v9 = v8;
  v10 = a1;
  if ([v10 isMe])
  {
    LOBYTE(v34[0]) = 0;
    *&v28 = v10;
    *(&v28 + 1) = v7;
    *&v29 = v9;
    BYTE8(v29) = v6 & 1;
    v32[26] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA198, &qword_21BE42C50);
    sub_21BD09988();
    sub_21BD099DC();
    sub_21BE2784C();
  }

  else
  {
    v11 = [v10 contact];
    if (v11)
    {

      *(&v28 + 1) = *(v2 + 224);
      v12 = v10;
      v13 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      sub_21BE2841C();
      v14 = v36;
      v15 = v37;
      LOBYTE(v28) = 0;
      *&v36 = v12;
      *(&v36 + 1) = v7;
      *&v37 = v13;
      WORD4(v37) = v6 & 1;
      *v38 = v12;
      *&v38[8] = v14;
      v38[24] = v15;
      v39[25] = 0;
      v16 = v12;
    }

    else
    {
      v17 = *(v2 + 192);
      LOBYTE(v28) = *(v2 + 184);
      *(&v28 + 1) = v17;
      v18 = v10;
      v27 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      sub_21BE2841C();
      v19 = v36;
      v26 = v37;
      *(&v28 + 1) = *(v2 + 208);
      sub_21BE2841C();
      v20 = v36;
      v21 = v37;
      LOBYTE(v28) = 1;
      *&v36 = v18;
      *(&v36 + 1) = v7;
      *&v37 = v27;
      WORD4(v37) = v6 & 1;
      *v38 = v18;
      v38[8] = 0;
      *&v38[16] = v19;
      v39[0] = v26;
      *&v39[8] = v20;
      v39[24] = v21;
      v39[25] = 1;
      v22 = v18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA1A8, &qword_21BE42C58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA1D0, &qword_21BE42C70);
    sub_21BD09A68();
    sub_21BD09C00();
    sub_21BE2784C();
    *v38 = v34[2];
    *&v38[16] = v34[3];
    *v39 = v35[0];
    *&v39[10] = *(v35 + 10);
    v36 = v34[0];
    v37 = v34[1];
    v33 = 1;
    v39[26] = 1;
    sub_21BBA3854(v34, &v28, &qword_27CDBA198, &qword_21BE42C50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA198, &qword_21BE42C50);
    sub_21BD09988();
    sub_21BD099DC();
    sub_21BE2784C();

    sub_21BB3A4CC(v34, &qword_27CDBA198, &qword_21BE42C50);
    *v38 = v30;
    *&v38[16] = v31;
    *v39 = *v32;
    *&v39[11] = *&v32[11];
    v36 = v28;
    v37 = v29;
  }

  v23 = *&v38[16];
  a2[2] = *v38;
  a2[3] = v23;
  a2[4] = *v39;
  *(a2 + 75) = *&v39[11];
  result = *&v36;
  v25 = v37;
  *a2 = v36;
  a2[1] = v25;
  return result;
}

void sub_21BD0352C(uint64_t a1@<X8>)
{
  v3 = sub_21BE25FCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = v24[0];
  if (!v24[0])
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v8 = [v7 me];

  v9 = 0uLL;
  if (v8)
  {
    v10 = *(v1 + 152);
    if ([v10 isChildAccount] && objc_msgSend(v8, sel_isOrganizer))
    {
      sub_21BD0393C(v24);
LABEL_21:
      v12 = v24[0];
      v14 = v24[1];
      v22 = v26;
      v23 = v25;
      v17 = v27;

      v18 = v22;
      v9 = v23;
      goto LABEL_29;
    }

    if (sub_21BE291EC() & 1) != 0 && [v8 isOrganizer] && ((*(v4 + 104))(v6, *MEMORY[0x277D07F40], v3), v11 = MEMORY[0x21CF01150](v6), (*(v4 + 8))(v6, v3), (v11))
    {
      v12 = sub_21BC1F420(v10);
      v14 = v13;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21BE26CAC();

      v15 = v24[0];
      if (!v24[0])
      {
        v15 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
      }

      v16 = sub_21BE2907C();

      if ((v16 & 1) != 0 && [v10 isOrganizer] && objc_msgSend(v10, sel_isMe))
      {
        sub_21BD03AF4(v24);
        goto LABEL_21;
      }

      if ([v10 isChildAccount] && objc_msgSend(v10, sel_isMe))
      {
        sub_21BD03CBC(v24);
        goto LABEL_21;
      }

      if ((sub_21BE291EC() & 1) == 0 || ([v10 isMe] & 1) == 0 || objc_msgSend(v10, sel_canRemoveSelf))
      {

        v12 = 0;
        v14 = 0;
LABEL_28:
        v17 = 0;
        v18 = 0uLL;
        v9 = 0uLL;
        goto LABEL_29;
      }

      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      v12 = sub_21BE2599C();
      v14 = v21;
    }

    goto LABEL_28;
  }

  v12 = 0;
  v14 = 0;
  v17 = 0;
  v18 = 0uLL;
LABEL_29:
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v9;
  *(a1 + 32) = v18;
  *(a1 + 48) = v17;
}

void sub_21BD0393C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 152);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v17;
  if (!v17)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v5 = [v4 childCutOffAge];

  if (v5)
  {
    v6 = sub_21BE28A0C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = sub_21BC1F08C(v3, v6, v8);
  v11 = v10;

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_21BE2599C();
  v16 = v15;

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE5D4C0;
  *(a1 + 48) = 0;
}

void sub_21BD03AF4(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v15;
  if (!v15)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  sub_21BC1E49C();
  v4 = v3;

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  v8 = sub_21BE2599C();
  v10 = v9;

  v11 = [v6 bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE5D4C0;
  *(a1 + 48) = 0;
}

void sub_21BD03CBC(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = v15;
  if (!v15)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v3 = [v2 childCutOffAge];

  if (v3)
  {
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_21BC1F5A8(v4, v6);
  v9 = v8;

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE5D4C0;
  *(a1 + 48) = 0;
}

BOOL sub_21BD03E6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v11;
  if (!v11)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v2 = [v1 me];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 isOrganizer];
  v4 = *(v0 + 152);
  if (v3 && (sub_21BE291FC() & 1) != 0)
  {
    goto LABEL_14;
  }

  if ([v4 isParent])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v5 = v11;
    if (!v11)
    {
      v5 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v6 = sub_21BE2907C();

    if (v6)
    {
      goto LABEL_14;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v7 = v11;
    if (!v11)
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v8 = sub_21BE2906C();

    if (v8)
    {
      goto LABEL_14;
    }
  }

  if ([v4 isChildAccount])
  {
LABEL_14:

    return 1;
  }

  else
  {
    v10 = [v4 memberType];

    return v10 == 1;
  }
}

uint64_t FamilyMemberDetails.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA000, &qword_21BE42670);
  MEMORY[0x28223BE20](v2);
  v4 = &v50 - v3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA008, &qword_21BE42678);
  v51 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA010, &qword_21BE42680);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA018, &qword_21BE42688) - 8;
  MEMORY[0x28223BE20](v53);
  v52 = &v50 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA020, &qword_21BE42690) - 8;
  MEMORY[0x28223BE20](v55);
  v54 = &v50 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA028, &qword_21BE42698) - 8;
  MEMORY[0x28223BE20](v57);
  v56 = &v50 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA030, &qword_21BE426A0);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - v14;
  v62 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA038, &unk_21BE426A8);
  sub_21BB3B038(&qword_27CDBA040, &qword_27CDBA038, &unk_21BE426A8, MEMORY[0x277CE14C0]);
  sub_21BE27D1C();
  v15 = *(v1 + 168);
  v16 = *(v1 + 176);
  v64 = *(v1 + 160);
  v65 = v15;
  v66 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](v67, v17);
  *(v4 + *(v2 + 36)) = (v67[0] & 1) == 0;
  sub_21BD0599C();
  sub_21BE27E3C();
  sub_21BB3A4CC(v4, &qword_27CDBA000, &qword_21BE42670);
  sub_21BE2869C();
  sub_21BE2725C();
  v18 = v10;
  (*(v51 + 32))(v10, v6, v61);
  v19 = &v10[*(v8 + 44)];
  v20 = v67[5];
  *(v19 + 4) = v67[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v67[6];
  v21 = v67[1];
  *v19 = v67[0];
  *(v19 + 1) = v21;
  v22 = v67[3];
  *(v19 + 2) = v67[2];
  *(v19 + 3) = v22;
  sub_21BD07A0C(v1, &v64);
  v23 = swift_allocObject();
  sub_21BD07A44(&v64, v23 + 16);
  type metadata accessor for NavigationManager(0);
  v61 = sub_21BD0906C(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v24 = sub_21BE26E9C();
  v26 = v25;
  v63 = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  sub_21BE283EC();
  LOBYTE(v2) = v64;
  v27 = v65;
  v28 = v18;
  v29 = v52;
  sub_21BBB7D84(v28, v52, &qword_27CDBA010, &qword_21BE42680);
  v30 = v29 + *(v53 + 44);
  *v30 = sub_21BD07A7C;
  *(v30 + 8) = v23;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26 & 1;
  *(v30 + 32) = v2;
  *(v30 + 40) = v27;
  sub_21BD07A0C(v1, &v64);
  v31 = swift_allocObject();
  sub_21BD07A44(&v64, v31 + 16);
  v32 = v29;
  v33 = v54;
  sub_21BBB7D84(v32, v54, &qword_27CDBA018, &qword_21BE42688);
  v34 = (v33 + *(v55 + 44));
  *v34 = sub_21BD07CE4;
  v34[1] = v31;
  v34[2] = 0;
  v34[3] = 0;
  sub_21BD07A0C(v1, &v64);
  v35 = swift_allocObject();
  sub_21BD07A44(&v64, v35 + 16);
  v36 = sub_21BE26E9C();
  v38 = v37;
  v63 = 0;
  sub_21BE283EC();
  LOBYTE(v23) = v64;
  v39 = v65;
  v40 = v56;
  sub_21BBB7D84(v33, v56, &qword_27CDBA020, &qword_21BE42690);
  v41 = v40 + *(v57 + 44);
  *v41 = sub_21BD086C8;
  *(v41 + 8) = v35;
  *(v41 + 16) = v36;
  *(v41 + 24) = v38 & 1;
  *(v41 + 32) = v23;
  *(v41 + 40) = v39;
  sub_21BD07A0C(v1, &v64);
  v42 = swift_allocObject();
  sub_21BD07A44(&v64, v42 + 16);
  v43 = sub_21BE26E9C();
  LOBYTE(v4) = v44;
  v63 = 0;
  sub_21BE283EC();
  LOBYTE(v35) = v64;
  v45 = v65;
  v46 = v40;
  v47 = v58;
  sub_21BBB7D84(v46, v58, &qword_27CDBA028, &qword_21BE42698);
  v48 = v47 + *(v59 + 36);
  *v48 = sub_21BD08988;
  *(v48 + 8) = v42;
  *(v48 + 16) = v43;
  *(v48 + 24) = v4 & 1;
  *(v48 + 32) = v35;
  *(v48 + 40) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA060, &qword_21BE426C8);
  sub_21BD089E0();
  sub_21BC354E4();
  sub_21BD08D5C();
  sub_21BE2807C();
  return sub_21BB3A4CC(v47, &qword_27CDBA030, &qword_21BE426A0);
}

uint64_t sub_21BD04880@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v109 = a2;
  v87 = type metadata accessor for DeleteMemberButtonView(0);
  MEMORY[0x28223BE20](v87);
  v81 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA130, &qword_21BE42C00);
  MEMORY[0x28223BE20](v84);
  v85 = &v80 - v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA138, &qword_21BE42C08);
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v80 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA140, &qword_21BE42C10);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v108 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = &v80 - v9;
  v102 = sub_21BE26E1C();
  Strong = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA148, &qword_21BE42C18);
  v101 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA150, &unk_21BE42C20);
  v105 = *(v13 - 8);
  v106 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v104 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v80 - v16;
  v110 = a1;
  v97 = *(a1 + 152);
  sub_21BD03148(v97, v145);
  v18 = *(a1 + 272);
  v117 = *(a1 + 264);
  v118 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE2841C();
  v19 = v120;
  v20 = v121;
  v122 = v145[2];
  v123 = v145[3];
  v124 = v145[4];
  v125 = v145[5];
  v120 = v145[0];
  v121 = v145[1];
  v126 = xmmword_21BE358B0;
  v127 = v19;
  v128 = v20;
  sub_21BD02BD4(&v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA158, &qword_21BE42C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA160, &qword_21BE42C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA168, &qword_21BE42C40);
  sub_21BD09870();
  sub_21BB3B038(&qword_27CDBA1E0, &qword_27CDBA160, &qword_21BE42C38, MEMORY[0x277CE14C0]);
  sub_21BD09CE0();
  sub_21BE285FC();
  v21 = Strong;
  v22 = v98;
  v23 = v102;
  (*(Strong + 104))(v98, *MEMORY[0x277CDF350], v102);
  sub_21BD09D64();
  v103 = v17;
  v24 = v99;
  sub_21BE27FAC();
  (*(v21 + 8))(v22, v23);
  (*(v101 + 8))(v12, v24);
  v25 = *(a1 + 136);
  Strong = swift_unknownObjectWeakLoadStrong();
  v26 = *(a1 + 168);
  v27 = *(a1 + 176);
  *&v120 = *(a1 + 160);
  *(&v120 + 1) = v26;
  LOBYTE(v121) = v27;
  v28 = v97;
  v99 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v94 = v118;
  v95 = v117;
  v93 = v119;
  v29 = *(a1 + 24);
  v30 = *(a1 + 40);
  v31 = type metadata accessor for MemberDetailsAppleCardViewModel(0);
  v32 = sub_21BD0906C(&qword_27CDBA110, 255, type metadata accessor for MemberDetailsAppleCardViewModel, aIF_0);
  v90 = v29;
  v97 = v30;
  v101 = v32;
  v102 = v31;
  v98 = sub_21BE26EAC();
  type metadata accessor for MemberDetailsAppleCashViewModel(0);
  sub_21BD0906C(&qword_27CDBA118, 255, type metadata accessor for MemberDetailsAppleCashViewModel, byte_21BE3F678);
  v92 = sub_21BE26EAC();
  v33 = [v28 dsid];
  if (!v33)
  {
    sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v33 = sub_21BE293EC();
  }

  v34 = v28;
  v89 = [objc_allocWithZone(FAScreenTimeWrapper) initWithUserDSID_];

  v91 = *(*(a1 + 104) + qword_280BDCB88);
  v35 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v37 = qword_280BD76F0;
  v96 = v35;
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = objc_allocWithZone(type metadata accessor for FamilyMemberAccountDetailsViewModel());

  v88 = [v38 init];
  v39 = v34;
  *&v120 = v34;
  *(&v120 + 1) = v99;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(&v121 + 1) = v95;
  *&v122 = v94;
  BYTE8(v122) = v93;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
  *&v123 = sub_21BE270CC();
  *(&v123 + 1) = v40;
  type metadata accessor for LocationViewModel(0);
  sub_21BD0906C(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  *&v124 = sub_21BE270CC();
  *(&v124 + 1) = v41;
  *&v125 = sub_21BE270CC();
  *(&v125 + 1) = v42;
  *&v126 = sub_21BE270CC();
  *(&v126 + 1) = v43;
  *&v127 = KeyPath;
  BYTE8(v127) = 0;
  sub_21BB3A2A4(0, &qword_27CDB7EE8, off_2782F0D00);
  sub_21BB3CC48(&qword_27CDB7EE0, &qword_27CDB7EE8, off_2782F0D00, protocol conformance descriptor for FAScreenTimeWrapper);
  v128 = sub_21BE270CC();
  v129 = v44;
  type metadata accessor for ServicesStore(0);
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  v130 = sub_21BE270CC();
  v131 = v45;
  v132 = v91;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
  v133 = sub_21BE270CC();
  v134 = v46;
  v112 = v88;
  sub_21BE283EC();
  v135 = v117;
  v136 = v118;
  sub_21BD09E30(&v120, &v117);
  sub_21BD0352C(&v137);
  v47 = v138;
  v48 = v107;
  if (v138)
  {
    v49 = v137;
    v142 = v139;
    v143 = v140;
    v144 = v141;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v50 = v112;
    if (!v112)
    {
      v50 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
    }

    v51 = [v50 me];

    if (v51)
    {
      v112 = v49;
      v113 = v47;
      v114 = v142;
      v115 = v143;
      v116 = v144;
      MEMORY[0x28223BE20](v52);
      sub_21BD0906C(&qword_27CDBA218, 255, type metadata accessor for DeleteMemberButtonView, a1_2);
      sub_21BC353D0();
      v53 = v82;
      sub_21BE2861C();
      v54 = v83;
      v55 = v86;
      (*(v83 + 16))(v85, v53, v86);
      swift_storeEnumTagMultiPayload();
      sub_21BD09F48();
      sub_21BE2784C();

      (*(v54 + 8))(v53, v55);
      goto LABEL_17;
    }

    sub_21BB3A4CC(&v137, &qword_27CDBA168, &qword_21BE42C40);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v56 = v112;
  if (!v112)
  {
    v56 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v57 = [v56 me];

  if (!v57)
  {
    v67 = 1;
    goto LABEL_19;
  }

  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v39;
  sub_21BE26CAC();

  v59 = v112;
  if (!v112)
  {
    v59 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v60 = sub_21BE2907C();

  v111 = 0;
  sub_21BE283EC();
  v61 = v113;
  v62 = v81;
  *v81 = v112;
  *(v62 + 8) = v61;
  swift_unknownObjectWeakInit();
  v63 = v87;
  v64 = *(v87 + 36);
  *(v62 + v64) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  v65 = v63[10];
  *(v62 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v66 = v63[12];
  *(v62 + v66) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *(v62 + 16) = v58;
  *(v62 + 24) = v57;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v62 + 40) = v60 & 1;
  type metadata accessor for RemoveMemberDeleteFamilyDataController();
  *(v62 + v63[11]) = swift_allocObject();
  sub_21BD09EE0(v62, v85, type metadata accessor for DeleteMemberButtonView);
  swift_storeEnumTagMultiPayload();
  sub_21BD09F48();
  sub_21BD0906C(&qword_27CDBA218, 255, type metadata accessor for DeleteMemberButtonView, a1_2);
  sub_21BE2784C();
  sub_21BD0A014(v62, type metadata accessor for DeleteMemberButtonView);
LABEL_17:
  v67 = 0;
LABEL_19:
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA1F8, &qword_21BE42CA0);
  (*(*(v68 - 8) + 56))(v48, v67, 1, v68);
  v70 = v104;
  v69 = v105;
  v71 = *(v105 + 16);
  v72 = v103;
  v73 = v48;
  v74 = v106;
  v71(v104, v103, v106);
  sub_21BBA3854(&v117, &v112, &qword_27CDBA200, &qword_21BE42CA8);
  v75 = v108;
  sub_21BBA3854(v73, v108, &qword_27CDBA140, &qword_21BE42C10);
  v76 = v109;
  v71(v109, v70, v74);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA208, &qword_21BE42CB0);
  sub_21BBA3854(&v112, &v76[*(v77 + 48)], &qword_27CDBA200, &qword_21BE42CA8);
  sub_21BBA3854(v75, &v76[*(v77 + 64)], &qword_27CDBA140, &qword_21BE42C10);
  sub_21BB3A4CC(v73, &qword_27CDBA140, &qword_21BE42C10);
  sub_21BB3A4CC(&v117, &qword_27CDBA200, &qword_21BE42CA8);
  sub_21BD09E8C(&v120);
  v78 = *(v69 + 8);
  v78(v72, v74);
  sub_21BB3A4CC(v75, &qword_27CDBA140, &qword_21BE42C10);
  sub_21BB3A4CC(&v112, &qword_27CDBA200, &qword_21BE42CA8);
  return (v78)(v70, v74);
}

unint64_t sub_21BD0599C()
{
  result = qword_27CDBA048;
  if (!qword_27CDBA048)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA000, &qword_21BE42670);
    v4[0] = sub_21BB3B038(&qword_27CDBA050, &qword_27CDBA058, &unk_21BE426B8, MEMORY[0x277CDE5A0]);
    v4[1] = MEMORY[0x277CE0770];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA048);
  }

  return result;
}

uint64_t sub_21BD05A54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v66 = sub_21BE2757C();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA220, &qword_21BE42D20);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v5 = &v59 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA228, &qword_21BE42D28);
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA230, &qword_21BE42D30);
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v70 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v59 - v12;
  sub_21BD07A0C(a1, &v79);
  v13 = swift_allocObject();
  sub_21BD07A44(&v79, v13 + 16);
  v14 = a1;
  v61 = a1;
  sub_21BD07A0C(a1, &v79);
  v15 = swift_allocObject();
  sub_21BD07A44(&v79, v15 + 16);
  LOBYTE(v87[0]) = 0;
  sub_21BE283EC();
  LOBYTE(a1) = v76;
  v16 = v77;
  type metadata accessor for NavigationManager(0);
  sub_21BD0906C(&qword_27CDB69B0, 255, type metadata accessor for NavigationManager, protocol conformance descriptor for NavigationManager);
  v17 = sub_21BE26E9C();
  v19 = v18 & 1;
  LOBYTE(v76) = v18 & 1;
  KeyPath = swift_getKeyPath();
  *&v79 = &unk_21BE42D40;
  *(&v79 + 1) = v13;
  *&v80 = sub_21BD0A24C;
  *(&v80 + 1) = v15;
  LOBYTE(v81) = a1;
  *(&v81 + 1) = v16;
  *&v82 = v17;
  BYTE8(v82) = v19;
  LOBYTE(v83) = 1;
  *(&v83 + 1) = KeyPath;
  LOBYTE(v84) = 0;
  v60 = *(v14 + 152);
  v76 = sub_21BE2917C();
  v77 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA238, &qword_21BE42D78);
  v23 = sub_21BD0A254();
  v24 = sub_21BB41FA4();
  v25 = MEMORY[0x277D837D0];
  sub_21BE27F9C();

  v87[2] = v81;
  v87[3] = v82;
  v87[4] = v83;
  v88 = v84;
  v87[0] = v79;
  v87[1] = v80;
  sub_21BB3A4CC(v87, &qword_27CDBA238, &qword_21BE42D78);
  v26 = v63;
  v27 = v64;
  v28 = v66;
  (*(v64 + 104))(v63, *MEMORY[0x277CDDDC0], v66);
  *&v79 = v22;
  *(&v79 + 1) = v25;
  *&v80 = v23;
  *(&v80 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v62;
  v31 = v65;
  sub_21BE280AC();
  (*(v27 + 8))(v26, v28);
  v67[1](v5, v31);
  v32 = v61;
  v75 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA268, &unk_21BE42D90);
  *&v79 = v31;
  *(&v79 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA270, &unk_21BE46120);
  v34 = sub_21BB3B038(&qword_27CDBA278, &qword_27CDBA270, &unk_21BE46120, MEMORY[0x277CDD7A8]);
  *&v79 = v33;
  *(&v79 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v68;
  sub_21BE2817C();
  v69[1](v30, v35);
  if (sub_21BD03E6C())
  {
    v36 = *(v32 + 24);
    v37 = *(v32 + 8);
    v38 = *(v32 + 40);
    swift_unknownObjectWeakLoadStrong();
    v39 = *(v32 + 168);
    v40 = *(v32 + 176);
    *&v79 = *(v32 + 160);
    *(&v79 + 1) = v39;
    LOBYTE(v80) = v40;
    v67 = v37;
    v69 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v41 = v77;
    v68 = v76;
    v42 = v78;
    v43 = v60;
    v44 = [v60 isGuardian];
    v45 = *(v32 + 136);
    LOBYTE(v76) = 0;

    sub_21BE283EC();
    sub_21BBB541C(MEMORY[0x277D84F90]);
    swift_unknownObjectWeakInit();
    v46 = [v43 dsid];
    if (!v46)
    {
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v46 = sub_21BE293EC();
    }

    *&v80 = v46;
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BD0906C(&qword_27CDB68F0, 255, type metadata accessor for FAFamilyLandingPageViewModel, protocol conformance descriptor for FAFamilyLandingPageViewModel);
    v47 = v36;
    *(&v80 + 1) = sub_21BE270CC();
    *&v81 = v48;
    sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
    sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0, protocol conformance descriptor for FAProfilePictureStore);
    *(&v81 + 1) = sub_21BE270CC();
    *&v82 = v49;
    *(&v82 + 1) = v69;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectRelease();
    LOBYTE(v85) = v42;
    BYTE8(v85) = v44;
    v86 = 0;
    *&v84 = v68;
    *(&v84 + 1) = v41;
    *&v83 = v45;
    sub_21BD0A3A0(&v79, &v76);
    sub_21BD0A3A0(&v76, &v79);
    sub_21BBB7D84(&v79, &v76, &qword_27CDBA290, &qword_21BE42DB0);
    sub_21BBB7D84(&v76, &v79, &qword_27CDBA290, &qword_21BE42DB0);
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
  }

  v51 = v70;
  v50 = v71;
  v52 = *(v71 + 16);
  v53 = v74;
  v54 = v72;
  v52(v70, v74, v72);
  sub_21BBA3854(&v79, &v76, &qword_27CDBA280, &qword_21BE42DA0);
  v55 = v73;
  v52(v73, v51, v54);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA288, &qword_21BE42DA8);
  sub_21BBA3854(&v76, &v55[*(v56 + 48)], &qword_27CDBA280, &qword_21BE42DA0);
  sub_21BB3A4CC(&v79, &qword_27CDBA280, &qword_21BE42DA0);
  v57 = *(v50 + 8);
  v57(v53, v54);
  sub_21BB3A4CC(&v76, &qword_27CDBA280, &qword_21BE42DA0);
  return (v57)(v51, v54);
}

uint64_t sub_21BD063D0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21BE28D7C();
  v2[4] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD06468, v4, v3);
}

uint64_t sub_21BD06468()
{
  v1 = v0[3];

  v2 = [*(v1 + 152) altDSID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE28A0C();
    v6 = v5;
  }

  else
  {
    v6 = 0xE100000000000000;
    v4 = 45;
  }

  v7 = v0[2];
  *v7 = v4;
  v7[1] = v6;
  v8 = v0[1];

  return v8();
}

double sub_21BD06518@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21BE275DC();
  v22 = 0;
  sub_21BD06648(a2, &v13);
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v31[0] = v13;
  v31[1] = v14;
  v31[2] = v15;
  v31[3] = v16;
  v31[4] = v17;
  v31[5] = v18;
  v31[6] = v19;
  v31[7] = v20;
  sub_21BBA3854(&v23, &v12, &qword_27CDBA2A8, qword_21BE42DC0);
  sub_21BB3A4CC(v31, &qword_27CDBA2A8, qword_21BE42DC0);
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[119] = v30;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  *&v21[55] = v26;
  v6 = *&v21[64];
  *(a3 + 97) = *&v21[80];
  v7 = *&v21[112];
  *(a3 + 113) = *&v21[96];
  *(a3 + 129) = v7;
  v8 = *v21;
  *(a3 + 33) = *&v21[16];
  result = *&v21[32];
  v10 = *&v21[48];
  *(a3 + 49) = *&v21[32];
  *(a3 + 65) = v10;
  *(a3 + 81) = v6;
  v11 = v22;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 144) = *&v21[127];
  *(a3 + 17) = v8;
  return result;
}

uint64_t sub_21BD06648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21BE2771C();
  LOBYTE(v19[0]) = 1;
  sub_21BD067EC(a1, v15);
  *&v14[7] = v15[0];
  *&v14[55] = v16;
  *&v14[39] = v15[2];
  *&v14[23] = v15[1];
  v5 = v19[0];
  v17 = v4;
  v18[0] = v19[0];
  v6 = *&v14[16];
  *&v18[1] = *v14;
  *&v18[64] = *(&v16 + 1);
  v7 = *&v14[32];
  *&v18[49] = *&v14[48];
  *&v18[33] = *&v14[32];
  v8 = *v14;
  *&v18[17] = *&v14[16];
  *&v13[23] = *v18;
  *&v13[7] = v4;
  *&v13[71] = *&v18[48];
  *&v13[87] = *&v18[64];
  *&v13[55] = *&v18[32];
  *&v13[39] = *&v18[16];
  v9 = *v13;
  *(a2 + 49) = *&v13[16];
  *(a2 + 33) = v9;
  *(a2 + 112) = *&v13[79];
  v10 = *&v13[48];
  *(a2 + 97) = *&v13[64];
  *a2 = 8;
  *(a2 + 8) = 0;
  *(a2 + 16) = &unk_282D869B8;
  *(a2 + 24) = &unk_282D869E8;
  *(a2 + 32) = 0;
  *(a2 + 81) = v10;
  *(a2 + 65) = *&v13[32];
  v19[0] = v4;
  v19[1] = 0;
  v20 = v5;
  v21 = v8;
  *&v24[15] = *&v14[63];
  *v24 = *&v14[48];
  v23 = v7;
  v22 = v6;

  sub_21BBA3854(&v17, &v12, &qword_27CDB9550, &qword_21BE3FAA0);
  sub_21BB3A4CC(v19, &qword_27CDB9550, &qword_21BE3FAA0);
}

uint64_t sub_21BD067EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (![*(a1 + 152) isChildAccount])
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v4 = v37;
  if (!v37)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v5 = [v4 me];

  if (v5 && (v6 = [v5 isGuardian], v5, v6))
  {
    String.rebrand.getter(0xD00000000000001CLL, 0x800000021BE5D480);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  else
  {
LABEL_7:
    String.rebrand.getter(0x44495F454C505041, 0xEE004C4542414C5FLL);
    type metadata accessor for ConfirmChildAgeViewModel();
    v9 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
  }

  v10 = v8;
  sub_21BE2599C();

  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v35 = v12;
  v36 = v11;
  v34 = v13;
  v33 = v14;
  sub_21BD06B78(a1);
  sub_21BB41FA4();
  v15 = sub_21BE27DBC();
  v17 = v16;
  v19 = v18;
  sub_21BE27BEC();
  v20 = sub_21BE27D9C();
  v22 = v21;
  v24 = v23;

  sub_21BBC7C7C(v15, v17, v19 & 1);

  sub_21BE2833C();
  v25 = sub_21BE27D4C();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_21BBC7C7C(v20, v22, v24 & 1);

  *a2 = v36;
  *(a2 + 8) = v34;
  *(a2 + 16) = v33 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v29 & 1;
  *(a2 + 56) = v31;
  sub_21BBA4A38(v36, v34, v33 & 1);

  sub_21BBA4A38(v25, v27, v29 & 1);

  sub_21BBC7C7C(v25, v27, v29 & 1);

  sub_21BBC7C7C(v36, v34, v33 & 1);
}

uint64_t sub_21BD06B78(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 primaryAuthKitAccount];
  if (v3)
  {
    v4 = v3;
    if ([v2 demoAccountForAccount_])
    {
      v5 = *(a1 + 144);
      sub_21BE2600C();
      sub_21BE25FFC();
      v6 = sub_21BE289CC();

      v7 = [v5 stringForKey_];

      if (v7)
      {
        goto LABEL_12;
      }

      v11 = [*(a1 + 152) appleID];
      if (v11)
      {
        v7 = v11;
LABEL_12:
        v10 = sub_21BE28A0C();

        return v10;
      }

      return 0;
    }
  }

  v8 = [*(a1 + 152) appleID];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = sub_21BE28A0C();

  return v10;
}

uint64_t sub_21BD06CF0(uint64_t a1)
{
  v2 = sub_21BE278CC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA270, &unk_21BE46120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_21BE278BC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA298, &qword_21BE42DB8);
  sub_21BD0A404();
  sub_21BE26EDC();
  v7 = sub_21BB3B038(&qword_27CDBA278, &qword_27CDBA270, &unk_21BE46120, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

double sub_21BD06EA8@<D0>(uint64_t a2@<X8>)
{
  sub_21BE2917C();
  sub_21BB41FA4();
  v3 = sub_21BE27DBC();
  v5 = v4;
  v7 = v6;
  v8 = sub_21BE27D8C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_21BBC7C7C(v3, v5, v7 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69F8, &qword_21BE35CD0);
  sub_21BE283FC();
  result = v16;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_21BD06FA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 152);
  swift_unknownObjectWeakLoadStrong();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_21BE26CAC();

  v7 = v15;
  if (!v15)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v8 = sub_21BE2907C();

  sub_21BE283EC();
  *a3 = v15;
  *(a3 + 8) = v16;
  swift_unknownObjectWeakInit();
  v9 = type metadata accessor for DeleteMemberButtonView(0);
  v10 = v9[9];
  *(a3 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B90, &qword_21BE43960);
  swift_storeEnumTagMultiPayload();
  v11 = v9[10];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v12 = v9[12];
  *(a3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  *(a3 + 16) = v6;
  *(a3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v13 = a2;
  swift_unknownObjectRelease();
  *(a3 + 40) = v8 & 1;
  type metadata accessor for RemoveMemberDeleteFamilyDataController();
  result = swift_allocObject();
  *(a3 + v9[11]) = result;
  return result;
}

id sub_21BD071A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v78 = type metadata accessor for FamilyMemberAccountDetails(0);
  v5 = MEMORY[0x28223BE20](v78);
  v79 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v75 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA120, &qword_21BE42B78);
  v80 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = &v74 - v9;
  v10 = *a1;
  v83 = *(a1 + 8);
  v84 = v10;
  v77 = a2;
  v11 = a2[15];
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = v11;
  sub_21BE26CAC();

  v12 = v86;
  if (!v86)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v81 = v8;
  v13 = [v12 members];

  sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
  v14 = sub_21BE28C3C();

  if (v14 >> 62)
  {
LABEL_34:
    v15 = sub_21BE2951C();
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_35:

    v73 = 1;
    v71 = v81;
    v72 = v82;
    return (*(v80 + 56))(v72, v73, 1, v71);
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_35;
  }

LABEL_5:
  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x21CF047C0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v20 = [v17 altDSID];
    if (v20)
    {
      break;
    }

LABEL_6:

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_35;
    }
  }

  v21 = v20;
  v22 = sub_21BE28A0C();
  v24 = v23;

  if (v22 != v84 || v24 != v83)
  {
    v26 = sub_21BE2995C();

    if (v26)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

LABEL_20:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v27 = v86;
  if (!v86)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v28 = [v27 me];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v29 = v86;
  if (!v86)
  {
    v29 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v30 = v77;
  v31 = v77[32];
  v86 = v77[31];
  v87 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA128, &unk_21BE42B80);
  sub_21BE283FC();
  v84 = v85;
  v32 = objc_allocWithZone(MEMORY[0x277D08210]);
  v33 = v18;
  v34 = [v32 init];
  type metadata accessor for AgeRangeSharingViewModel(0);
  v35 = swift_allocObject();
  v83 = sub_21BCBF078(v34, v33, v35);
  v36 = v30[30];
  v86 = v30[29];
  v87 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79F0, &qword_21BE38CA0);
  sub_21BE283FC();
  v37 = v85;
  KeyPath = swift_getKeyPath();
  v39 = v79;
  *v79 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v40 = v78;
  v41 = (v39 + *(v78 + 36));
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = v39 + v40[11];
  LOBYTE(v85) = 0;
  v43 = v33;
  sub_21BE283EC();
  v44 = v87;
  *v42 = v86;
  *(v42 + 1) = v44;
  v45 = v40[13];
  *(v39 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  v46 = v40[6];
  v77 = v28;
  *(v39 + v46) = v28;
  *(v39 + v40[7]) = v43;
  *(v39 + v40[8]) = v29;
  v47 = (v39 + v40[5]);
  type metadata accessor for FamilyMemberAccountDetailsViewModel();
  sub_21BD0906C(&qword_27CDBDBE0, 255, type metadata accessor for FamilyMemberAccountDetailsViewModel, aF_5);
  v48 = v84;
  *v47 = sub_21BE270CC();
  v47[1] = v49;
  v50 = (v39 + v40[12]);
  v85 = v37;
  type metadata accessor for FamilyDependentPasswordResetController();
  v51 = v37;
  sub_21BE283EC();
  v52 = v87;
  *v50 = v86;
  v50[1] = v52;
  *(v39 + v40[10]) = v83;
  v53 = v39 + v40[14];
  LOBYTE(v85) = 0;
  sub_21BE283EC();
  v54 = v87;
  *v53 = v86;
  *(v53 + 1) = v54;
  if (![v43 isChildAccount])
  {
    goto LABEL_30;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v56 = result;
    v57 = [result hasLocalSecret];

    if (v57 && v77 && [v77 isGuardian])
    {
      v58 = v51;
      v59 = 0x800000021BE5D480;
      v60 = 0xD00000000000001CLL;
LABEL_31:
      String.rebrand.getter(v60, v59);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v62 = [objc_opt_self() bundleForClass_];
      v63 = sub_21BE2599C();
      v65 = v64;

      *v41 = v63;
      v41[1] = v65;
      v66 = v75;
      sub_21BC35600(v79, v75);
      v67 = v74;
      sub_21BD09EE0(v66, v74, type metadata accessor for FamilyMemberAccountDetails);
      v68 = sub_21BE27B7C();

      sub_21BD0A014(v66, type metadata accessor for FamilyMemberAccountDetails);
      v70 = v81;
      v69 = v82;
      *(v67 + *(v81 + 36)) = v68;
      sub_21BBB7D84(v67, v69, &qword_27CDBA120, &qword_21BE42B78);
      v71 = v70;
      v72 = v69;
      v73 = 0;
      return (*(v80 + 56))(v72, v73, 1, v71);
    }

LABEL_30:
    v58 = v51;
    v60 = 0x44495F454C505041;
    v59 = 0xEE004C4542414C5FLL;
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

double sub_21BD07A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v12[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000021BE428A0;

  v6 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(v12, v6);

  v7 = sub_21BE28DAC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_21BD07A0C(a1, v12);
  sub_21BE28D7C();
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  sub_21BD07A44(v12, v9 + 32);
  sub_21BBA932C(0, 0, v4, &unk_21BE42B70, v9);

  return result;
}

uint64_t sub_21BD07CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21BD07D84, v6, v5);
}

uint64_t sub_21BD07D84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = v0[2];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v2 = [v1 me];

  if (v2)
  {
    if ([v2 isGuardian])
    {

LABEL_7:
      type metadata accessor for MemberDetailsAppleCashViewModel(0);
      sub_21BD0906C(&qword_27CDBA118, 255, type metadata accessor for MemberDetailsAppleCashViewModel, byte_21BE3F678);
      v0[7] = sub_21BE26EAC();
      v4 = swift_task_alloc();
      v0[8] = v4;
      *v4 = v0;
      v4[1] = sub_21BD08048;

      return sub_21BCC0A5C();
    }

    sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
    v3 = sub_21BE2940C();

    if (v3)
    {
      goto LABEL_7;
    }
  }

  type metadata accessor for MemberDetailsAppleCardViewModel(0);
  sub_21BD0906C(&qword_27CDBA110, 255, type metadata accessor for MemberDetailsAppleCardViewModel, aIF_0);
  v0[9] = sub_21BE26EAC();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_21BD08290;

  return sub_21BC44050();
}

uint64_t sub_21BD08048()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BD0818C, v3, v2);
}

uint64_t sub_21BD0818C()
{
  type metadata accessor for MemberDetailsAppleCardViewModel(0);
  sub_21BD0906C(&qword_27CDBA110, 255, type metadata accessor for MemberDetailsAppleCardViewModel, aIF_0);
  *(v0 + 72) = sub_21BE26EAC();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21BD08290;

  return sub_21BC44050();
}

uint64_t sub_21BD08290()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v3, v2);
}

double sub_21BD083D4@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v23 - v5;
  v7 = *(a1 + 152);
  v8 = *(a1 + 136);
  if (*(v8 + 16))
  {
    v9 = v7;
    v10 = sub_21BBB3108(0x41435F454C505041, 0xEA00000000004853);
    if (v11)
    {
      v12 = v10;
      v13 = *(v8 + 56);
      v14 = sub_21BE25B9C();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v6, v13 + *(v15 + 72) * v12, v14);
      (*(v15 + 56))(v6, 0, 1, v14);
    }

    else
    {
      v18 = sub_21BE25B9C();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    }
  }

  else
  {
    v16 = sub_21BE25B9C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = v7;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore(0);
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);

  *a2 = sub_21BE270CC();
  a2[1] = v19;
  a2[2] = v7;
  v20 = type metadata accessor for AppleCashView(0);
  sub_21BBB7D84(v6, a2 + *(v20 + 24), &unk_27CDB57F0, &qword_21BE328A0);
  v21 = *(v20 + 28);
  v23[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA108, &unk_21BE42B58);
  sub_21BE283EC();
  result = *&v24;
  *(a2 + v21) = v24;
  return result;
}

uint64_t sub_21BD086D0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(a1 + 152);
  v8 = *(a1 + 136);
  if (*(v8 + 16))
  {
    v9 = v7;
    v10 = sub_21BBB3108(0x425F4F545F4B5341, 0xEA00000000005955);
    if (v11)
    {
      v12 = v10;
      v13 = *(v8 + 56);
      v14 = sub_21BE25B9C();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v6, v13 + *(v15 + 72) * v12, v14);
      (*(v15 + 56))(v6, 0, 1, v14);
    }

    else
    {
      v18 = sub_21BE25B9C();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    }
  }

  else
  {
    v16 = sub_21BE25B9C();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v17 = v7;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ServicesStore(0);
  sub_21BD0906C(&qword_27CDB5750, 255, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);

  *a2 = sub_21BE270CC();
  a2[1] = v19;
  a2[2] = v7;
  v20 = type metadata accessor for AskToBuyMemberView(0);
  return sub_21BBB7D84(v6, a2 + *(v20 + 24), &unk_27CDB57F0, &qword_21BE328A0);
}

uint64_t sub_21BD08990@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21BE271CC();
  result = sub_21BE27B7C();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = result;
  return result;
}

unint64_t sub_21BD089E0()
{
  result = qword_27CDBA068;
  if (!qword_27CDBA068)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA030, &qword_21BE426A0);
    v4[0] = sub_21BD08A98();
    v4[1] = sub_21BB3B038(&qword_27CDBA0B0, &qword_27CDBA0B8, &qword_21BE426E0, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA068);
  }

  return result;
}

unint64_t sub_21BD08A98()
{
  result = qword_27CDBA070;
  if (!qword_27CDBA070)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA028, &qword_21BE42698);
    v4[0] = sub_21BD08B50();
    v4[1] = sub_21BB3B038(&qword_27CDBA0A0, &qword_27CDBA0A8, &qword_21BE426D8, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA070);
  }

  return result;
}

unint64_t sub_21BD08B50()
{
  result = qword_27CDBA078;
  if (!qword_27CDBA078)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA020, &qword_21BE42690);
    v4[0] = sub_21BD08BDC();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA078);
  }

  return result;
}

unint64_t sub_21BD08BDC()
{
  result = qword_27CDBA080;
  if (!qword_27CDBA080)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA018, &qword_21BE42688);
    v4[0] = sub_21BD08C94();
    v4[1] = sub_21BB3B038(&qword_27CDBA090, &qword_27CDBA098, &qword_21BE426D0, byte_21BE36938);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA080);
  }

  return result;
}

unint64_t sub_21BD08C94()
{
  result = qword_27CDBA088;
  if (!qword_27CDBA088)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA010, &qword_21BE42680);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA000, &qword_21BE42670);
    v4[3] = sub_21BD0599C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA088);
  }

  return result;
}

unint64_t sub_21BD08D5C()
{
  result = qword_27CDBA0C0;
  if (!qword_27CDBA0C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA060, &qword_21BE426C8);
    v4[0] = sub_21BCBECE4();
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA0C0);
  }

  return result;
}

id sub_21BD08E08()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = v1;
  if (!v1)
  {
    return [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return result;
}

uint64_t sub_21BD08E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
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

uint64_t sub_21BD08EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BD08FD8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FAAppleCashPresenter();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BD09014(uint64_t a1, uint64_t a2)
{
  result = sub_21BD0906C(&qword_27CDBA0C8, a2, type metadata accessor for FAAppleCashPresenter, byte_21BE429F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21BD0906C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BD090B4()
{
  result = qword_27CDBA0D8;
  if (!qword_27CDBA0D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA0D0, &qword_21BE42A50);
    v4[0] = sub_21BD09138();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBA0D8);
  }

  return result;
}

unint64_t sub_21BD09138()
{
  result = qword_27CDBA0E0;
  if (!qword_27CDBA0E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA0E8, &qword_21BE42A58);
    v4[0] = sub_21BB3B038(&qword_27CDBA0F0, &qword_27CDBA0F8, &qword_21BE42A60, byte_21BE477F8);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBA0E0);
  }

  return result;
}

double sub_21BD091E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

double sub_21BD09234(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

void sub_21BD09284(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21BD09304(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

char *sub_21BD09398(void *a1, void *a2, void *a3, void *a4, char *a5)
{
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  type metadata accessor for AppleCardFamilyCache();
  v14 = swift_allocObject();
  *(a5 + 5) = sub_21BE206D4(v14);
  v15 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardRow;
  LOBYTE(v42) = 0;
  sub_21BE26C6C();
  v16 = *(v11 + 32);
  v16(&a5[v15], v13, v10);
  v17 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__hasPendingCardInvite;
  LOBYTE(v42) = 0;
  sub_21BE26C6C();
  v16(&a5[v17], v13, v10);
  v18 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showShareAppleCardFlow;
  LOBYTE(v42) = 0;
  sub_21BE26C6C();
  v16(&a5[v18], v13, v10);
  v19 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardDetails;
  LOBYTE(v42) = 0;
  sub_21BE26C6C();
  v16(&a5[v19], v13, v10);
  v20 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__transactionLimitForMember;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_21BE26C6C();
  (*(v7 + 32))(&a5[v20], v9, v6);
  v21 = v38;
  v22 = v39;
  *(a5 + 2) = v38;
  *(a5 + 3) = v22;
  v24 = v40;
  v23 = v41;
  *(a5 + 4) = v40;
  *&a5[OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle] = v23;
  sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = v22;
  v27 = v21;
  v28 = v24;
  v29 = v23;
  v30 = [ObjCClassFromMetadata defaultCenter];
  [v30 addObserver:a5 selector:sel_serviceAccountDidChange name:*MEMORY[0x277D38358] object:0];

  v31 = [ObjCClassFromMetadata defaultCenter];
  v32 = qword_280BD6B10;

  if (v32 != -1)
  {
    swift_once();
  }

  [v31 addObserver:a5 selector:sel_serviceAccountDidChange name:qword_280BD6B18 object:{0, v38, v39, v40, v41}];

  v33 = sub_21BE20E38(v27);
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  if (!v35)
  {
    v35 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v36;
  v43 = v35;

  sub_21BE26CBC();
  return a5;
}

uint64_t sub_21BD097B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BD07CEC(a1, v4, v5, v1 + 32);
}

unint64_t sub_21BD09870()
{
  result = qword_27CDBA170;
  if (!qword_27CDBA170)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA158, &qword_21BE42C30);
    v4[0] = sub_21BD098FC();
    v4[1] = sub_21BC0ACFC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA170);
  }

  return result;
}

unint64_t sub_21BD098FC()
{
  result = qword_27CDBA178;
  if (!qword_27CDBA178)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA180, &qword_21BE42C48);
    v4[0] = sub_21BD09988();
    v4[1] = sub_21BD099DC();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA178);
  }

  return result;
}

unint64_t sub_21BD09988()
{
  result = qword_27CDBA188;
  if (!qword_27CDBA188)
  {
    result = swift_getWitnessTable(aUF_0, &type metadata for FamilyMemberHeader, v0, v1);
    atomic_store(result, &qword_27CDBA188);
  }

  return result;
}

unint64_t sub_21BD099DC()
{
  result = qword_27CDBA190;
  if (!qword_27CDBA190)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA198, &qword_21BE42C50);
    v4[0] = sub_21BD09A68();
    v4[1] = sub_21BD09C00();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA190);
  }

  return result;
}

unint64_t sub_21BD09A68()
{
  result = qword_27CDBA1A0;
  if (!qword_27CDBA1A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA1A8, &qword_21BE42C58);
    v4[0] = sub_21BD09AF4();
    v4[1] = sub_21BD09BAC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA1A0);
  }

  return result;
}

unint64_t sub_21BD09AF4()
{
  result = qword_27CDBA1B0;
  if (!qword_27CDBA1B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA1B8, &unk_21BE42C60);
    v4[0] = sub_21BD09988();
    v4[1] = sub_21BB3B038(&qword_27CDB6188, &qword_27CDB6190, &qword_21BE33F40, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA1B0);
  }

  return result;
}

unint64_t sub_21BD09BAC()
{
  result = qword_27CDBA1C0;
  if (!qword_27CDBA1C0)
  {
    result = swift_getWitnessTable(aYF_0, &type metadata for SpotlightModifier, v0, v1);
    atomic_store(result, &qword_27CDBA1C0);
  }

  return result;
}

unint64_t sub_21BD09C00()
{
  result = qword_27CDBA1C8;
  if (!qword_27CDBA1C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA1D0, &qword_21BE42C70);
    v4[0] = sub_21BD09AF4();
    v4[1] = sub_21BD09C8C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA1C8);
  }

  return result;
}

unint64_t sub_21BD09C8C()
{
  result = qword_27CDBA1D8;
  if (!qword_27CDBA1D8)
  {
    result = swift_getWitnessTable(byte_21BE3F438, &type metadata for CreateContactModifier, v0, v1);
    atomic_store(result, &qword_27CDBA1D8);
  }

  return result;
}

unint64_t sub_21BD09CE0()
{
  result = qword_27CDBA1E8;
  if (!qword_27CDBA1E8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA168, &qword_21BE42C40);
    v4[0] = sub_21BC353D0();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBA1E8);
  }

  return result;
}

unint64_t sub_21BD09D64()
{
  result = qword_27CDBA1F0;
  if (!qword_27CDBA1F0)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA148, &qword_21BE42C18);
    v4[0] = sub_21BD09870();
    v4[1] = sub_21BB3B038(&qword_27CDBA1E0, &qword_27CDBA160, &qword_21BE42C38, MEMORY[0x277CE14C0]);
    v4[2] = sub_21BD09CE0();
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27CDBA1F0);
  }

  return result;
}

uint64_t sub_21BD09EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BD09F48()
{
  result = qword_27CDBA210;
  if (!qword_27CDBA210)
  {
    v6[5] = v0;
    v6[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA138, &qword_21BE42C08);
    v4 = sub_21BD0906C(&qword_27CDBA218, 255, type metadata accessor for DeleteMemberButtonView, a1_2);
    v5 = sub_21BC353D0();
    v6[0] = MEMORY[0x277CE1410];
    v6[1] = v4;
    v6[2] = v5;
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v6);
    atomic_store(result, &qword_27CDBA210);
  }

  return result;
}

uint64_t sub_21BD0A014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21BD0A07C()
{
  result = qword_27CDBCB70;
  if (!qword_27CDBCB70)
  {
    result = swift_getWitnessTable(byte_21BE4BCC0, &type metadata for ScreenTimeStoreKey, v0, v1);
    atomic_store(result, &qword_27CDBCB70);
  }

  return result;
}

uint64_t sub_21BD0A0D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD063D0(a1, v1 + 16);
}

uint64_t objectdestroyTm_16()
{
  sub_21BB47CE0(*(v0 + 64), *(v0 + 72));
  sub_21BB47CE0(*(v0 + 88), *(v0 + 96));

  MEMORY[0x21CF05D90](v0 + 144);

  return swift_deallocObject();
}

unint64_t sub_21BD0A254()
{
  result = qword_27CDBA240;
  if (!qword_27CDBA240)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA238, &qword_21BE42D78);
    v4[0] = sub_21BD0A2E0();
    v4[1] = sub_21BBDD54C();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA240);
  }

  return result;
}

unint64_t sub_21BD0A2E0()
{
  result = qword_27CDBA248;
  if (!qword_27CDBA248)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA250, &qword_21BE42D80);
    v4[0] = sub_21BB3B038(&qword_27CDBA258, &qword_27CDBA260, &qword_21BE42D88, protocol conformance descriptor for Link<A, B>);
    v4[1] = sub_21BBDD1A8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA248);
  }

  return result;
}

unint64_t sub_21BD0A404()
{
  result = qword_27CDBA2A0;
  if (!qword_27CDBA2A0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA298, &qword_21BE42DB8);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDF900];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBA2A0);
  }

  return result;
}

uint64_t type metadata accessor for EmergencyContactView(uint64_t a1)
{
  result = qword_27CDBA2B0;
  if (!qword_27CDBA2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21BD0A504(uint64_t a1)
{
  result = type metadata accessor for EmergencyContactDataItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_21BCED864();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

UIImage *sub_21BD0A5A4()
{
  v0 = sub_21BE289CC();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [objc_opt_self() redColor];
    v3 = [v1 imageWithRenderingMode_];
    [v1 size];
    v5 = v4;
    v7 = v6;
    [v1 scale];
    v9 = v8;
    v14.width = v5;
    v14.height = v7;
    UIGraphicsBeginImageContextWithOptions(v14, 0, v9);
    [v2 set];
    [v1 size];
    [v3 drawInRect_];
    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (v12)
    {
      return v12;
    }
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BD0A750()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_21BE25D1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EmergencyContactDataItem(0);
  sub_21BC1E1AC(v0 + *(v8 + 28), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21BC51500(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21BE32770;
    v11 = sub_21BC422F8();
    v13 = v12;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_21BBBEFE8();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();

    v16 = [v15 bundleForClass_];
    sub_21BE2599C();

    v17 = sub_21BE289DC();

    (*(v5 + 8))(v7, v4);
    return v17;
  }
}

void *sub_21BD0AA08@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EmergencyContactView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21BD0B244(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyContactView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_21BD0B104(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E80, &qword_21BE33960);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11[1] = v8;
  result = sub_21BE283EC();
  v10 = v11[3];
  *a1 = v11[2];
  a1[1] = v10;
  a1[2] = sub_21BD0B168;
  a1[3] = v7;
  return result;
}

uint64_t sub_21BD0AB70@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v51 = a1;
  v52 = a3;
  v4 = type metadata accessor for EmergencyContactView(0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass_];
    v10 = sub_21BE2599C();
    v48 = v11;
    v49 = v10;

    v12 = sub_21BD0A750();
    v47 = v13;
    v14 = [v8 bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    v18 = sub_21BD0A5A4();
    sub_21BD0B244(a2, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyContactView);
    v19 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_21BD0B104(v6, v21 + v19);
    v22 = v51;
    *(v21 + v20) = v51;
    v66 = type metadata accessor for EmergencyContactDataItem(0);
    v67 = sub_21BD0B1EC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
    sub_21BD0B244(a2, boxed_opaque_existential_1, type metadata accessor for EmergencyContactDataItem);
    v55 = v49;
    v56 = v48;
    v57 = v12;
    v58 = v47;
    v59 = v15;
    v60 = v17;
    v61 = v18;
    v62 = sub_21BD0B624;
    v63 = v21;
    v64 = 0;
    v68 = 0;
    sub_21BBC7A18(&v55, v53);
    v54 = 0;
    sub_21BBC24D4();
    sub_21BBC2528();
    v24 = v22;
    sub_21BE2784C();
    return sub_21BBC7A74(&v55);
  }

  else
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v26 = swift_getObjCClassFromMetadata();
    v27 = objc_opt_self();
    v28 = [v27 bundleForClass_];
    v29 = sub_21BE2599C();
    v48 = v30;
    v49 = v29;

    v31 = [v27 bundleForClass_];
    v32 = sub_21BE2599C();
    v46 = v33;
    v47 = v32;

    v34 = sub_21BD0A5A4();
    sub_21BD0B244(a2, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EmergencyContactView);
    v35 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v36 = (v5 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_21BD0B104(v6, v37 + v35);
    v38 = v51;
    *(v37 + v36) = v51;
    v39 = v38;
    v40 = [v27 bundleForClass_];
    v41 = sub_21BE2599C();
    v43 = v42;

    v66 = type metadata accessor for EmergencyContactDataItem(0);
    v67 = sub_21BD0B1EC();
    v44 = __swift_allocate_boxed_opaque_existential_1(v65);
    sub_21BD0B244(a2, v44, type metadata accessor for EmergencyContactDataItem);
    v55 = v49;
    v56 = v48;
    v57 = v47;
    v58 = v46;
    v59 = v34;
    v60 = sub_21BD0B1E8;
    v61 = v37;
    v62 = v41;
    v63 = v43;
    v64 = 0;
    v68 = 0;
    sub_21BBC7968(&v55, v53);
    v54 = 1;
    sub_21BBC24D4();
    sub_21BBC2528();
    sub_21BE2784C();
    return sub_21BBC79C4(&v55);
  }
}

uint64_t sub_21BD0B104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyContactView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BD0B168@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for EmergencyContactView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BD0AB70(a1, v6, a2);
}

unint64_t sub_21BD0B1EC()
{
  result = qword_27CDBA2C0;
  if (!qword_27CDBA2C0)
  {
    v3 = type metadata accessor for EmergencyContactDataItem(255);
    result = swift_getWitnessTable(byte_21BE4146C, v3, v0, v1);
    atomic_store(result, &qword_27CDBA2C0);
  }

  return result;
}

uint64_t sub_21BD0B244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = *(type metadata accessor for EmergencyContactView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);

  v4 = *(type metadata accessor for EmergencyContactDataItem(0) + 28);
  v5 = sub_21BE25D1C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_21BD0B4A0(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = *(v1 + *(type metadata accessor for EmergencyContactView(0) + 20));

    return [v7 presentMedicalIDViewController_];
  }

  else
  {
    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FDC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "No nav controller when presenting emergency contact flow", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t FamilyMarqueeData.lightModePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FamilyMarqueeData.darkModePath.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t FamilyMarqueeData.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21BE295EC();

  MEMORY[0x21CF03CA0](v1, v2);
  MEMORY[0x21CF03CA0](5972061, 0xE300000000000000);
  MEMORY[0x21CF03CA0](v3, v4);
  MEMORY[0x21CF03CA0](93, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t static FamilyMarqueeData.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_280BD84F8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_280BD8508;
  v2 = qword_280BD8510;
  v3 = unk_280BD8518;
  *a1 = qword_280BD8500;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static FamilyMarqueeData.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21BE2995C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21BE2995C();
    }
  }

  return result;
}

uint64_t sub_21BD0B86C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_21BE2995C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_21BE2995C();
    }
  }

  return result;
}

double sub_21BD0B910@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_21BD0B998(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

double sub_21BD0BA34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return result;
}

uint64_t sub_21BD0BAAC(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t (*sub_21BD0BB34(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCD59C;
}

uint64_t sub_21BD0BBD8(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BD0BC50(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21BD0BDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BD0BF10(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DC8, &qword_21BE42EA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = qword_280BD86D8;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCE114;
}

uint64_t sub_21BD0C080()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t static FamilyMarqueStore.shared.getter()
{
  if (qword_280BD86B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21BD0C150()
{
  v1 = qword_280BD86D8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_280BD86D0));
}

char *FamilyMarqueStore.deinit()
{
  v1 = qword_280BD86C0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = qword_280BD86C8;
    v5 = v2 + 32;

    do
    {
      sub_21BB3DCD4(v5, v12);
      v6 = *(v0 + v4);
      __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
      v7 = v6;
      v8 = sub_21BE2994C();
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      [v7 na:v8 removeNotificationBlockObserver:?];

      swift_unknownObjectRelease();
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  v9 = qword_280BD86D8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_280BD86D0));

  return v0;
}

uint64_t FamilyMarqueStore.__deallocating_deinit()
{
  FamilyMarqueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21BD0C3D4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_21BE26A4C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_21BE28D7C();
  v2[11] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD0C4C8, v5, v4);
}

uint64_t sub_21BD0C4C8()
{
  v28 = v0;
  v1 = v0;

  sub_21BE2613C();

  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FCC();

  v4 = os_log_type_enabled(v2, v3);
  v7 = v0 + 9;
  v6 = v0[9];
  v5 = v7[1];
  v8 = v1[8];
  if (v4)
  {
    v9 = v1[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_21BB3D81C(*(v9 + 16), *(v9 + 24), &v27);
    _os_log_impl(&dword_21BB35000, v2, v3, "%s load method called", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x21CF05C50](v11, -1, -1);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v8);
  v12 = (v1[7] + qword_280BD86D0);
  __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
  sub_21BE264AC();
  sub_21BE2647C();
  v13 = sub_21BE2604C();
  v15 = v14;

  __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
  sub_21BE2646C();
  v16 = sub_21BE2604C();
  v18 = v17;

  if (v15)
  {
    v19 = sub_21BB41E7C(v13, v15);
    v21 = v20;

    if (v21)
    {
      if (!v18)
      {
        goto LABEL_9;
      }

LABEL_8:
      v22 = sub_21BB41E7C(v16, v18);
      v24 = v23;

      if (v24)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v19 = 0;
  v21 = 0xE000000000000000;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_9:

  v22 = 0;
  v24 = 0xE000000000000000;
LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  v1[2] = v19;
  v1[3] = v21;
  v1[4] = v22;
  v1[5] = v24;

  sub_21BE26CBC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v25 = v1[1];

  return v25();
}

uint64_t sub_21BD0C7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v39 = 7824750;
  v40 = 0xE300000000000000;
  sub_21BE2958C();
  if (*(a2 + 16) && (v9 = sub_21BBB31E8(&v41), (v10 & 1) != 0))
  {
    sub_21BB3DCD4(*(a2 + 56) + 32 * v9, &v45);
    sub_21BBB7238(&v41);
    if (swift_dynamicCast())
    {
      v11 = v39;
      v12 = v40;
      goto LABEL_8;
    }
  }

  else
  {
    sub_21BBB7238(&v41);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_8:
  v13 = sub_21BB41E7C(v11, v12);
  v15 = v14;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v16 = v43;
  v17 = v44;

  if (!v15 || (v18 = sub_21BB41E7C(v13, v15), v20 = v19, , !v20))
  {

    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v21 = sub_21BB41E7C(v16, v17);
  v23 = v22;

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (!v23)
  {
    v23 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v18;
  v42 = v20;
  v43 = v24;
  v44 = v23;

  sub_21BE26CBC();
  sub_21BE2614C();

  v25 = sub_21BE26A2C();
  v26 = sub_21BE28FCC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v27 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v4;
    sub_21BE26CAC();

    v28 = v41;
    v29 = v42;
    v36 = v7;
    v30 = v5;
    v31 = v43;
    v32 = v44;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_21BE295EC();

    v45 = 0xD000000000000013;
    v46 = 0x800000021BE5D620;
    MEMORY[0x21CF03CA0](v28, v29);
    MEMORY[0x21CF03CA0](5972061, 0xE300000000000000);
    MEMORY[0x21CF03CA0](v31, v32);
    MEMORY[0x21CF03CA0](93, 0xE100000000000000);

    v33 = sub_21BB3D81C(v45, v46, &v39);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_21BB35000, v25, v26, "lightMode %s", v27, 0xCu);
    v34 = v37;
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x21CF05C50](v34, -1, -1);
    MEMORY[0x21CF05C50](v27, -1, -1);

    return (*(v30 + 8))(v36, v38);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21BD0CC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7[3] = swift_getObjectType();
  v7[0] = a2;
  v5 = sub_21BE2890C();

  swift_unknownObjectRetain();
  v4(v7, v5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

uint64_t sub_21BD0CD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v40 = 7824750;
  v41 = 0xE300000000000000;
  sub_21BE2958C();
  if (!*(a2 + 16) || (v9 = sub_21BBB31E8(&v42), (v10 & 1) == 0))
  {
    sub_21BBB7238(&v42);
    goto LABEL_7;
  }

  sub_21BB3DCD4(*(a2 + 56) + 32 * v9, &v46);
  sub_21BBB7238(&v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_8;
  }

  v12 = v40;
  v11 = v41;
LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v13 = v42;
  v14 = v43;

  v15 = sub_21BB41E7C(v12, v11);
  v17 = v16;

  v18 = sub_21BB41E7C(v13, v14);
  v20 = v19;

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  if (!v17 || (v23 = sub_21BB41E7C(v15, v17), v25 = v24, , !v25))
  {

    v23 = 0;
    v25 = 0xE000000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = v21;
  v43 = v22;
  v44 = v23;
  v45 = v25;

  sub_21BE26CBC();
  sub_21BE2614C();

  v26 = sub_21BE26A2C();
  v27 = sub_21BE28FCC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v28 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v4;
    sub_21BE26CAC();

    v29 = v42;
    v30 = v43;
    v37 = v7;
    v31 = v5;
    v32 = v44;
    v33 = v45;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_21BE295EC();

    v46 = 0xD000000000000013;
    v47 = 0x800000021BE5D620;
    MEMORY[0x21CF03CA0](v29, v30);
    MEMORY[0x21CF03CA0](5972061, 0xE300000000000000);
    MEMORY[0x21CF03CA0](v32, v33);
    MEMORY[0x21CF03CA0](93, 0xE100000000000000);

    v34 = sub_21BB3D81C(v46, v47, &v40);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_21BB35000, v26, v27, "darkMode %s", v28, 0xCu);
    v35 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x21CF05C50](v35, -1, -1);
    MEMORY[0x21CF05C50](v28, -1, -1);

    return (*(v31 + 8))(v37, v39);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_21BD0D1B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return result;
}

uint64_t sub_21BD0D230(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t (*sub_21BD0D2BC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCD9C20;
}

uint64_t sub_21BD0D364()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DE0, &qword_21BE39CC0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t dispatch thunk of FamilyMarqueStoreProtocol.doLoad()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FamilyMarqueStoreProtocol.doReload()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t sub_21BD0D7B0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BD0C3D4(a1, v1);
}

uint64_t FAAgeRangeController.requestAgeRange(with:viewController:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_21BE26A4C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD0D928, 0, 0);
}

uint64_t sub_21BD0D928(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "FamilyCircleUI requestAgeRange", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[7];
  v5 = v1[8];
  v7 = v1[6];

  (*(v6 + 8))(v5, v7);
  v1[9] = sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v1[11] = v9;
  v1[12] = v8;

  return MEMORY[0x2822009F8](sub_21BD0DA60, v9, v8);
}

uint64_t sub_21BD0DA60(uint64_t a1)
{
  v2 = v1[1].i64[1];
  v9 = v1[2];
  v3 = sub_21BE28D6C();
  v1[6].i64[1] = v3;
  v4 = swift_task_alloc();
  v1[7].i64[0] = v4;
  *(v4 + 16) = vextq_s8(v9, v9, 8uLL);
  *(v4 + 32) = v2;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  v5 = swift_task_alloc();
  v1[7].i64[1] = v5;
  v6 = sub_21BB3A2A4(0, &qword_27CDBA2D0, 0x277D08220);
  *v5 = v1;
  v5[1] = sub_21BD0DBA8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](&v1[1], v3, v7, 0xD000000000000051, 0x800000021BE5D6E0, sub_21BD0E648, v4, v6);
}

uint64_t sub_21BD0DBA8()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_21BD0DD44;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_21BD0DCCC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BD0DCCC()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BD0DD44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FAAgeRangeController.requestAgeRange(with:bundleID:userAgeOverride:attestedAtOverrideInDays:viewController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_21BE26A4C();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BD0DE9C, 0, 0);
}

uint64_t sub_21BD0DE9C(uint64_t a1)
{
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "FamilyCircleUI requestAgeRange", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];

  (*(v6 + 8))(v5, v7);
  v1[13] = sub_21BE28D7C();
  v1[14] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v1[15] = v9;
  v1[16] = v8;

  return MEMORY[0x2822009F8](sub_21BD0DFD4, v9, v8);
}

uint64_t sub_21BD0DFD4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v9 = *(v1 + 64);
  v3 = sub_21BE28D6C();
  *(v1 + 136) = v3;
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *(v4 + 16) = vextq_s8(v9, v9, 8uLL);
  *(v4 + 32) = v2;
  *(v4 + 40) = v10;
  *(v4 + 56) = v11;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  v6 = sub_21BB3A2A4(0, &qword_27CDBA2D0, 0x277D08220);
  *v5 = v1;
  v5[1] = sub_21BD0E124;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v1 + 16, v3, v7, 0xD000000000000051, 0x800000021BE5D6E0, sub_21BD105CC, v4, v6);
}

uint64_t sub_21BD0E124()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_21BD0E2C0;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_21BD0E248;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BD0E248()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21BD0E2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21BD0E34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - v13;
  (*(v12 + 16))(&v24 - v13, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v14, v11);
  if (a6)
  {
    a6 = sub_21BE289CC();
  }

  v17 = objc_allocWithZone(MEMORY[0x277D08218]);
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v18 = sub_21BE28C1C();
  v19 = [v17 initWithRequestType:0 entryPoint:0 altDSID:0 bundleID:a6 ageGates:v18 userAgeOverride:v24 attestedAtOverrideInDays:a8];

  if (qword_27CDB4E38 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = sub_21BD104DC;
  *(v20 + 24) = v16;
  MEMORY[0x28223BE20](v20);
  v23 = v25;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_21BD10568;
  *(v21 + 24) = v20;

  sub_21BBE4394(v19, sub_21BD105D0, (&v24 - 4), sub_21BD105C8, v21);

  return result;
}

uint64_t sub_21BD0E64C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
    return sub_21BE28D1C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);
    return sub_21BE28D2C();
  }
}

void sub_21BD0E6CC(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  if (a1)
  {
    sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
    v5 = qword_27CDB4F38;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    if ((sub_21BE2940C() & 1) != 0 || [v6 code] == -4006)
    {
      type metadata accessor for AgeRangeError(0);
      sub_21BDCE614(MEMORY[0x277D84F90]);
      sub_21BD10570();
      sub_21BE25A6C();
      a3(v9, 1);

LABEL_15:
      return;
    }

    v8 = v6;
    a3(a1, 1);
  }

  else
  {
    if (!a2)
    {
      type metadata accessor for AgeRangeError(0);
      sub_21BDCE614(MEMORY[0x277D84F90]);
      sub_21BD10570();
      sub_21BE25A6C();
      v6 = v9;
      a3(v9, 1);
      goto LABEL_15;
    }

    v8 = a2;
    a3(a2, 0);
  }
}

uint64_t FAAgeRangeController.setAgeRangeSharingGlobalState(entryPoint:viewController:altDSID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_21BE28D7C();
  v5[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x2822009F8](sub_21BD0E97C, v7, v6);
}

uint64_t sub_21BD0E97C(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v11 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = sub_21BE28D6C();
  *(v1 + 88) = v5;
  v6 = swift_task_alloc();
  *(v1 + 96) = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v11;
  *(v6 + 48) = v3;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  *v7 = v1;
  v7[1] = sub_21BD0EAAC;
  v8 = MEMORY[0x277D85700];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v5, v8, 0xD000000000000041, 0x800000021BE5D740, sub_21BD100B0, v6, v9);
}

uint64_t sub_21BD0EAAC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_21BD0EC34;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_21BD0EBD0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BD0EBD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BD0EC34()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21BD0ECAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  (*(v11 + 16))(&v23 - v12, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  (*(v11 + 32))(v15 + v14, v13, v10);
  v16 = a4;
  if (a6)
  {
    v17 = sub_21BE289CC();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D08218]) initWithRequestType:1 entryPoint:a3 altDSID:v17 bundleID:0 ageGates:0 userAgeOverride:0 attestedAtOverrideInDays:0];

  if (qword_27CDB4E38 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x28223BE20](v19);
  v22 = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21BD1043C;
  *(v20 + 24) = v15;

  sub_21BBE4394(v18, sub_21BD104CC, (&v23 - 4), sub_21BD104D4, v20);

  return result;
}

uint64_t sub_21BD0EF40(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v11 = a1;
  v12 = a3;
  v13 = sub_21BE26A2C();
  v14 = sub_21BE28FFC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22[0] = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v11;
    *v17 = v12;
    v17[1] = a1;
    v18 = v12;
    v19 = v11;
    _os_log_impl(&dword_21BB35000, v13, v14, "returning from setAgeRangeSharingGlobalState, viewController is: %@, error: %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AF0, &qword_21BE37410);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v16, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  if (a1)
  {
    v22[1] = v11;
    v20 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
    return sub_21BE28D1C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8);
    return sub_21BE28D2C();
  }
}

double sub_21BD0F170(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, const void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = a1;
  v16 = sub_21BE28DAC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21BE430F0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE32A10;
  v18[5] = v17;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  sub_21BDC4F90(0, 0, v13, &unk_21BE391F0, v18);

  return result;
}

uint64_t sub_21BD0F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21BE28D7C();
  v5[7] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BD0F3B0, v7, v6);
}

uint64_t sub_21BD0F3B0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_21BE28A0C();
    v1 = v4;
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = v1;
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_21BD0F4A4;
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return FAAgeRangeController.setAgeRangeSharingGlobalState(entryPoint:viewController:altDSID:)(v10, v9, v3, v1);
}

uint64_t sub_21BD0F4A4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 24);
  v7 = *v1;

  v8 = *(v3 + 64);
  if (v2)
  {
    v9 = sub_21BE25A7C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 64), 0);
  }

  _Block_release(*(v4 + 64));
  v10 = *(v7 + 8);

  return v10();
}

void sub_21BD0F664(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BD0F6E4(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BD0F758()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BD0F7CC(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

void (*sub_21BD0F83C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21BE26C9C();
  return sub_21BCCDB70;
}

uint64_t sub_21BD0F8E0(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BD0F958(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2E0, &qword_21BE43058);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21BD0FADC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  return swift_endAccess();
}

uint64_t sub_21BD0FB50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2E0, &qword_21BE43058);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C8C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_21BD0FC88(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2E0, &qword_21BE43058);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  sub_21BE26C7C();
  swift_endAccess();
  return sub_21BCCE114;
}

uint64_t AgeRangeGlobalSharedState.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_21BE26C6C();
  return v0;
}

uint64_t AgeRangeGlobalSharedState.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v7[15] = 0;
  sub_21BE26C6C();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t AgeRangeGlobalSharedState.deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AgeRangeGlobalSharedState.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14FamilyCircleUI25AgeRangeGlobalSharedState__isUpdated;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21BD1005C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AgeRangeGlobalSharedState(0);
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AgeRangeGlobalSharedState(uint64_t a1)
{
  result = qword_27CDBA2E8;
  if (!qword_27CDBA2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD10114(uint64_t a1)
{
  sub_21BB3D064();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21BD102A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21BBB7EB8;

  return sub_21BD0F310(v2, v3, v4, v5, v6);
}

uint64_t sub_21BD10370(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDC4EA8(a1, v4, v5, v6);
}

uint64_t sub_21BD1043C(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA2F8, &unk_21BE430F8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_21BD0EF40(a1, a2, v6, v7);
}

uint64_t sub_21BD104DC(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA300, &qword_21BE43108);

  return sub_21BD0E64C(a1, a2 & 1);
}

unint64_t sub_21BD10570()
{
  result = qword_27CDB5258;
  if (!qword_27CDB5258)
  {
    type metadata accessor for AgeRangeError(255);
    result = swift_getWitnessTable(byte_21BE317FC, v3, v0, v1);
    atomic_store(result, &qword_27CDB5258);
  }

  return result;
}

id sub_21BD105E4(void *a1)
{
  v1 = a1;
  v2 = [v1 altDSID];
  if (v2)
  {
    v3 = v2;
    sub_21BE28A0C();
  }

  else
  {
  }

  v4 = sub_21BE289CC();

  return v4;
}

uint64_t FAFamilyMember.accountID.getter()
{
  v1 = [v0 altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21BE28A0C();

  return v3;
}

uint64_t type metadata accessor for CheckListLocationDestination(uint64_t a1)
{
  result = qword_27CDBA308;
  if (!qword_27CDBA308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BD10768(uint64_t a1)
{
  sub_21BD10814(319);
  if (v1 <= 0x3F)
  {
    sub_21BCB04E8(319);
    if (v2 <= 0x3F)
    {
      sub_21BB40410(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21BD10814(uint64_t a1)
{
  if (!qword_27CDBA318)
  {
    type metadata accessor for LocationViewModel(255);
    sub_21BD108A8(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
    v1 = sub_21BE2728C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBA318);
    }
  }
}

uint64_t sub_21BD108A8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

double sub_21BD1090C@<D0>(void *a3@<X2>, uint64_t a5@<X8>)
{
  sub_21BD10C54();
  sub_21BD10CA8();

  v7 = a3;
  sub_21BE2784C();
  result = *&v9;
  *a5 = v9;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  *(a5 + 25) = v12;
  return result;
}

double sub_21BD109DC@<D0>(uint64_t a1@<X8>)
{
  sub_21BD1090C(*(v1 + 16), &v7);
  v3 = v8;
  v4 = v9;
  v5 = v10;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  return result;
}

void *sub_21BD10A38()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA330, &qword_21BE43240);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = *(v1 + 48);
    if (v6)
    {
      sub_21BDFD940(v5, v6, 0, v14);
      v7 = v14[5];
      *(v4 + 4) = v14[4];
      *(v4 + 5) = v7;
      *(v4 + 12) = v15;
      v8 = v14[1];
      *v4 = v14[0];
      *(v4 + 1) = v8;
      v9 = v14[3];
      *(v4 + 2) = v14[2];
      *(v4 + 3) = v9;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA338, &qword_21BE43248);
      sub_21BD10CFC();
      sub_21BD10D60();
      return sub_21BE2784C();
    }
  }

  else
  {
    type metadata accessor for LocationViewModel(0);
    sub_21BD108A8(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
    sub_21BE2726C();
    __break(1u);
  }

  v11 = v5;
  sub_21BBDAF04();
  sub_21BD108A8(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v12 = v11;
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

unint64_t sub_21BD10C54()
{
  result = qword_27CDBA320;
  if (!qword_27CDBA320)
  {
    result = swift_getWitnessTable(byte_21BE4F834, &type metadata for LocationIsSetupCell, v0, v1);
    atomic_store(result, &qword_27CDBA320);
  }

  return result;
}

unint64_t sub_21BD10CA8()
{
  result = qword_27CDBA328;
  if (!qword_27CDBA328)
  {
    result = swift_getWitnessTable(byte_21BE4F7E4, &type metadata for LocationNotSetupCell, v0, v1);
    atomic_store(result, &qword_27CDBA328);
  }

  return result;
}

unint64_t sub_21BD10CFC()
{
  result = qword_27CDBA340;
  if (!qword_27CDBA340)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA338, &qword_21BE43248);
    result = swift_getWitnessTable(MEMORY[0x277CDDA18], v3, v0, v1);
    atomic_store(result, &qword_27CDBA340);
  }

  return result;
}

unint64_t sub_21BD10D60()
{
  result = qword_27CDBDC00;
  if (!qword_27CDBDC00)
  {
    result = swift_getWitnessTable(byte_21BE4FF04, &type metadata for LocationView, v0, v1);
    atomic_store(result, &qword_27CDBDC00);
  }

  return result;
}

unint64_t sub_21BD10DB4()
{
  result = qword_27CDBA348;
  if (!qword_27CDBA348)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA350, &qword_21BE43250);
    v4[0] = sub_21BD10E38();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBA348);
  }

  return result;
}

unint64_t sub_21BD10E38()
{
  result = qword_27CDBA358;
  if (!qword_27CDBA358)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA360, &qword_21BE43258);
    v4[0] = sub_21BD10C54();
    v4[1] = sub_21BD10CA8();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA358);
  }

  return result;
}

unint64_t sub_21BD10EC4()
{
  result = qword_27CDBA368;
  if (!qword_27CDBA368)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBA370, &qword_21BE43260);
    v4[0] = sub_21BD10CFC();
    v4[1] = sub_21BD10D60();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBA368);
  }

  return result;
}

void sub_21BD10F50(uint64_t a1@<X8>)
{
  v2 = sub_21BE28A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE28A3C();
  v6 = sub_21BE28A1C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v8;
  }

  sub_21BDF6D70(v14);
  sub_21BBBEF94(v9, v10);
  v11 = sub_21BBB63EC(&unk_282D84F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA378, &qword_21BE43268);
  swift_arrayDestroy();
  v12 = sub_21BBB62CC(&unk_282D85038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA380, &unk_21BE43F30);
  swift_arrayDestroy();
  v13[3] = &type metadata for LegacyVerificationRules;
  v13[4] = &off_282D98F58;
  v13[0] = v11;
  v13[1] = v12;
  sub_21BDF5AA8(v14, v13, a1);
}

uint64_t sub_21BD11124@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE2754C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_21BBA3854(v2, &v14 - v9, &unk_27CDB5960, &qword_21BE3FDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21BE26F5C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_21BE28FEC();
    v13 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

char *sub_21BD11324()
{
  type metadata accessor for SharedFamilyGroceryIntroView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (v16)
  {
    v0 = sub_21BE2905C();

    if (v0 >> 62)
    {
LABEL_23:
      v1 = sub_21BE2951C();
      if (v1)
      {
LABEL_4:
        v2 = 0;
        v3 = MEMORY[0x277D84F90];
        do
        {
          v4 = v2;
          while (1)
          {
            if ((v0 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x21CF047C0](v4, v0);
            }

            else
            {
              if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v5 = *(v0 + 8 * v4 + 32);
            }

            v6 = v5;
            v2 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v7 = [v5 appleID];
            if (v7)
            {
              break;
            }

            ++v4;
            if (v2 == v1)
            {
              goto LABEL_25;
            }
          }

          v8 = v7;
          v9 = sub_21BE28A0C();
          v15 = v10;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_21BBBC990(0, *(v3 + 2) + 1, 1, v3);
          }

          v12 = *(v3 + 2);
          v11 = *(v3 + 3);
          if (v12 >= v11 >> 1)
          {
            v3 = sub_21BBBC990((v11 > 1), v12 + 1, 1, v3);
          }

          *(v3 + 2) = v12 + 1;
          v13 = &v3[16 * v12];
          *(v13 + 4) = v9;
          *(v13 + 5) = v15;
        }

        while (v2 != v1);
        goto LABEL_25;
      }
    }

    else
    {
      v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
        goto LABEL_4;
      }
    }

    v3 = MEMORY[0x277D84F90];
LABEL_25:

    return v3;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21BD11530(uint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v7[0] = *(v3 - 1);
      v7[1] = v4;
      sub_21BD11604(v7, &v6);
      if (v6)
      {
        MEMORY[0x21CF03DB0]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21BE28C5C();
        }

        sub_21BE28C8C();
        v1 = v8;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return v1;
}

void sub_21BD11604(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = sub_21BE289CC();
  v13 = [v12 cal_isPhoneNumber];

  if (v13)
  {
    sub_21BE261BC();

    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(v11, v10, &v31);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s is categorized as phone number", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    v18 = swift_allocObject();
    v29 = xmmword_21BE32770;
    *(v18 + 16) = xmmword_21BE32770;
    *(v18 + 32) = v11;
    *(v18 + 40) = v10;
    v19 = swift_allocObject();
    *(v19 + 16) = v29;
    *(v19 + 32) = v11;
    *(v19 + 40) = v10;
    v20 = objc_allocWithZone(MEMORY[0x277D445D8]);
    swift_bridgeObjectRetain_n();
    v21 = sub_21BE28C1C();
  }

  else
  {
    sub_21BE261BC();

    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_21BB3D81C(v11, v10, &v31);
      _os_log_impl(&dword_21BB35000, v22, v23, "%s is categorized as email", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x21CF05C50](v25, -1, -1);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_21BE32770;
    *(v26 + 32) = v11;
    *(v26 + 40) = v10;
    v20 = objc_allocWithZone(MEMORY[0x277D445D8]);

    v21 = sub_21BE28C1C();
  }

  v27 = sub_21BE28C1C();

  v28 = [v20 initWithPhones:v21 emails:v27];

  *v30 = v28;
}

void sub_21BD11A28(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedFamilyGroceryIntroView(0);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v37 = *(v1 + *(v7 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBA400, &qword_21BE433A0);
  sub_21BE283FC();
  v13 = v36;
  if (v36)
  {
    v14 = [v36 listID];
    v15 = sub_21BD11530(v34);
    sub_21BDF716C(v15);

    v16 = objc_allocWithZone(MEMORY[0x277D44628]);
    sub_21BB3A2A4(0, &qword_27CDB60E0, 0x277D445D8);
    sub_21BC692B8();
    v17 = sub_21BE28E3C();

    v18 = [v16 initWithListID:v14 participants:v17];

    v19 = v2 + *(v7 + 36);
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v37) = v20;
    *(&v37 + 1) = v21;
    LOBYTE(v36) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    v22 = sub_21BE28DAC();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    sub_21BD1613C(v2, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_21BE28D7C();
    v23 = v18;
    v24 = sub_21BE28D6C();
    v25 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    *(v27 + 16) = v24;
    *(v27 + 24) = v28;
    sub_21BD161A0(v9, v27 + v25);
    *(v27 + v26) = v23;
    sub_21BBA932C(0, 0, v12, &unk_21BE43538, v27);
  }

  else
  {
    sub_21BE261BC();
    v29 = sub_21BE26A2C();
    v30 = sub_21BE28FDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v37 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_21BB3D81C(0xD00000000000001FLL, 0x800000021BE5E220, &v37);
      _os_log_impl(&dword_21BB35000, v29, v30, "%s shared grocery list is not present, this should not have happened", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x21CF05C50](v32, -1, -1);
      MEMORY[0x21CF05C50](v31, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21BD11EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = sub_21BE26A4C();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v7 = sub_21BE26F5C();
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  sub_21BE28D7C();
  v5[34] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v5[35] = v9;
  v5[36] = v8;

  return MEMORY[0x2822009F8](sub_21BD12000, v9, v8);
}