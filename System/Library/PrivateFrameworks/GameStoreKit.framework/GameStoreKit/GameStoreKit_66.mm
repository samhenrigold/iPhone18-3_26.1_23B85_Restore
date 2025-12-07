uint64_t sub_24ECC4888()
{
  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  v1 = *(v0 + 576);
  v2 = *(v0 + 504);
  v3 = *(v0 + 312);
  (*(v0 + 512))(v2, 3, 3, *(v0 + 480));
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v0 + 232) = v3;
  sub_24F91FD78();

  sub_24ECC9AB8(v2);
  if (*(v3 + 18) == 2)
  {

    *(v3 + 18) = 2;
  }

  else
  {
    v5 = *(v0 + 312);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 2;
    *(v0 + 240) = v5;
    sub_24F91FD78();
  }

  v7 = *(v0 + 312);
  swift_getKeyPath();
  *(v0 + 248) = v7;
  sub_24F91FD88();

  v8 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService;
  swift_beginAccess();
  sub_24E60169C(v7 + v8, v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
  if (!*(v0 + 80))
  {
    sub_24E601704(v0 + 56, &qword_27F22D4C8, &qword_24F994BB8);
LABEL_16:
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v22 = sub_24F9220D8();
    __swift_project_value_buffer(v22, qword_27F39E940);
    v23 = sub_24F9220B8();
    v24 = sub_24F92BDB8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v23, v24, "Game Services not available.", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    v26 = *(v0 + 312);

    sub_24ECC5388(v26);
    goto LABEL_21;
  }

  v9 = (v0 + 16);
  v10 = *(v0 + 312);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 256) = v10;
  sub_24F91FD88();

  v11 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v10 + v11, v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
  if (!*(v0 + 160))
  {
    sub_24E601704(v0 + 136, &qword_27F22D4D0, &qword_24F994BE8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_16;
  }

  sub_24E612C80((v0 + 136), v0 + 96);
  v12 = objc_opt_self();
  *(v0 + 616) = v12;
  *(v0 + 624) = *MEMORY[0x277CEE160];
  v13 = [v12 ams_sharedAccountStoreForMediaType_];
  v14 = [v13 ams_activeiTunesAccount];

  if (v14)
  {

    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    *(v0 + 632) = __swift_project_value_buffer(v15, qword_27F39E940);
    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "App Store is signed in.", v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1(v9, v19);
    v21 = swift_task_alloc();
    *(v0 + 640) = v21;
    *v21 = v0;
    v21[1] = sub_24ECC3BD4;

    return MEMORY[0x282165230](v19, v20);
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v28 = sub_24F9220D8();
  __swift_project_value_buffer(v28, qword_27F39E940);
  v29 = sub_24F9220B8();
  v30 = sub_24F92BD98();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_24E5DD000, v29, v30, "App Store is signed out.", v31, 2u);
    MEMORY[0x2530542D0](v31, -1, -1);
  }

  v32 = *(v0 + 312);

  sub_24ECC5388(v32);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1(v9);
LABEL_21:

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_24ECC4F88()
{
  v1 = v0[82];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed getting the player's onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v9 = v0[39];

  sub_24ECC5388(v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ECC517C()
{
  (*(v0[51] + 8))(v0[53], v0[50]);
  v1 = v0[84];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "Failed getting the player's onboarding state, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v9 = v0[39];

  sub_24ECC5388(v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

double sub_24ECC5388(uint64_t a1)
{
  if (*(a1 + 16))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }

  else
  {
    *(a1 + 16) = 0;
  }

  if (*(a1 + 17) == 1)
  {
    *(a1 + 17) = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    MEMORY[0x28223BE20](v4);
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }

  return result;
}

double sub_24ECC5568()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  if (*(v0 + 17) == 1)
  {
    *(v0 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v0;
    LOBYTE(v13[-1]) = 1;
    v13[1] = v0;
    sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E940);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Turning off Combine Gaming Activity...", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_24EA998B8(0, 0, v4, &unk_24F994EB0, v11);

  return result;
}

uint64_t sub_24ECC5810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  v4[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC594C, 0, 0);
}

uint64_t sub_24ECC594C()
{
  v1 = *(v0 + 160);
  swift_getKeyPath();
  *(v0 + 144) = v1;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v2 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService;
  swift_beginAccess();
  sub_24E60169C(v1 + v2, v0 + 56, &qword_27F22D4D0, &qword_24F994BE8);
  if (!*(v0 + 80))
  {
    v8 = &qword_27F22D4D0;
    v9 = &qword_24F994BE8;
    v10 = v0 + 56;
    goto LABEL_5;
  }

  v3 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = (v0 + 16);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  sub_24E612C80((v0 + 56), v0 + 16);
  swift_getKeyPath();
  *(v0 + 152) = v5;
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  swift_beginAccess();
  sub_24E60169C(v5 + v6, v4, &qword_27F22D4E0, &unk_24F994C00);
  if ((*(v3 + 48))(v4, 1, v24) == 1)
  {
    v7 = *(v0 + 176);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v8 = &qword_27F22D4E0;
    v9 = &unk_24F994C00;
    v10 = v7;
LABEL_5:
    sub_24E601704(v10, v8, v9);
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E940);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BD98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "ShareGameActivity: Telling the app to rebootstrap...", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = *(v0 + 168);

    v16 = sub_24F92B858();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    sub_24F92B7F8();
    v17 = sub_24F92B7E8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    sub_24EA998B8(0, 0, v15, &unk_24F994EC0, v18);

    v20 = *(v0 + 8);

    return v20();
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  v22 = swift_task_alloc();
  *(v0 + 208) = v22;
  *v22 = v0;
  v22[1] = sub_24ECC5D78;
  v23 = *(v0 + 200);

  return sub_24ECC61D0(v25, v23);
}

uint64_t sub_24ECC5D78()
{

  return MEMORY[0x2822009F8](sub_24ECC5E74, 0, 0);
}

uint64_t sub_24ECC5E74()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E940);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "ShareGameActivity: Telling the app to rebootstrap...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[21];

  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_24F92B7F8();
  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_24EA998B8(0, 0, v5, &unk_24F994EC0, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24ECC6068()
{
  sub_24F92B7F8();
  *(v0 + 16) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECC60FC, v2, v1);
}

uint64_t sub_24ECC60FC()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F210FB0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_27F39DBC8 object:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24ECC61D0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_24F921668();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  type metadata accessor for GamesSettings.BagStatus(0);
  v3[12] = swift_task_alloc();
  v5 = sub_24F92A498();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_24F920988();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC6378, 0, 0);
}

uint64_t sub_24ECC6378()
{
  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[19] = __swift_project_value_buffer(v1, qword_27F39E940);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "rejectCrossUsePrivacy: Performing...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_24F920968();
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_24ECC6528;
  v9 = v0[18];
  v10 = v0[7];

  return MEMORY[0x282165200](v9, v10, v6, v7);
}

uint64_t sub_24ECC6528()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[17] + 8))(v2[18], v2[16]);
  if (v0)
  {
    v3 = sub_24ECC7000;
  }

  else
  {
    v3 = sub_24ECC6690;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ECC6690(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "rejectCrossUsePrivacy: Success.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[12];
  v8 = v1[8];

  swift_getKeyPath();
  v1[5] = v8;
  sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  v9 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  sub_24ECCA40C(v8 + v9, v7);
  if ((*(v6 + 48))(v7, 3, v5))
  {
    sub_24ECC9AB8(v1[12]);
    v10 = sub_24F9220B8();
    v11 = sub_24F92BDD8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24E5DD000, v10, v11, "GamesSettings: rejectCrossUsePrivacy called without a bag", v12, 2u);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    goto LABEL_9;
  }

  v13 = v1[21];
  (*(v1[14] + 32))(v1[15], v1[12], v1[13]);
  v1[22] = sub_24F920FD8();
  v1[23] = v14;
  if (v13)
  {
    (*(v1[14] + 8))(v1[15], v1[13]);
    v15 = v13;
    v10 = sub_24F9220B8();
    v16 = sub_24F92BDB8();

    if (!os_log_type_enabled(v10, v16))
    {

      goto LABEL_10;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v13;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_24E5DD000, v10, v16, "rejectCrossUsePrivacy: Failed, reason: %@", v17, 0xCu);
    sub_24E601704(v18, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);

LABEL_9:
LABEL_10:

    v21 = v1[1];

    return v21();
  }

  v23 = sub_24F92A328();
  v24 = swift_task_alloc();
  v1[24] = v24;
  *v24 = v1;
  v24[1] = sub_24ECC6A90;
  v25 = v1[11];

  return MEMORY[0x282140780](v25, v23);
}

uint64_t sub_24ECC6A90()
{
  v2 = *v1;
  v2[25] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECC7184, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[26] = v3;
    *v3 = v2;
    v3[1] = sub_24ECC6C50;
    v4 = v2[22];
    v5 = v2[23];
    v6 = v2[11];

    return sub_24F567434(v6, v4, v5, 0x6B6E696C6E75, 0xE600000000000000, 0xD000000000000015, 0x800000024FA59C00);
  }
}

uint64_t sub_24ECC6C50()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_24ECC6E44;
  }

  else
  {
    v2 = sub_24ECC6D84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC6D84()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24ECC6E44()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v4;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "rejectCrossUsePrivacy: Failed, reason: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24ECC7000()
{
  v1 = *(v0 + 168);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "rejectCrossUsePrivacy: Failed, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24ECC7184()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[25];
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_24E5DD000, v3, v4, "rejectCrossUsePrivacy: Failed, reason: %@", v5, 0xCu);
    sub_24E601704(v6, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24ECC7320()
{
  v1[14] = v0;
  v2 = sub_24F921638();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_24F921608();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_24F921668();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E568, &qword_24F95C770);
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  v1[27] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  type metadata accessor for GamesSettings.BagStatus(0);
  v1[31] = swift_task_alloc();
  v7 = sub_24F92A498();
  v1[32] = v7;
  v1[33] = *(v7 - 8);
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ECC7628, 0, 0);
}

uint64_t sub_24ECC7628()
{
  v1 = v0[14];
  swift_getKeyPath();
  v0[8] = v1;
  v0[35] = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v0[36] = sub_24ECCA7A4(&qword_27F22D4C0, type metadata accessor for GamesSettings, &protocol conformance descriptor for GamesSettings);
  sub_24F91FD88();

  if (*(v1 + 18) != 1)
  {
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    __swift_project_value_buffer(v11, qword_27F39E940);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDD8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "GamesSettings: resetAnalyticsIdentifier called with invalid resetIdentifierStatus";
    goto LABEL_11;
  }

  v2 = v0[33];
  v36 = v0[32];
  v3 = v0[31];
  v4 = v0[14];
  swift_getKeyPath();
  v0[9] = v4;
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus;
  swift_beginAccess();
  sub_24ECCA40C(v4 + v5, v3);
  if ((*(v2 + 48))(v3, 3, v36))
  {
    sub_24ECC9AB8(v0[31]);
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E940);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BDD8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "GamesSettings: resetAnalyticsIdentifier called without a bag";
LABEL_11:
    _os_log_impl(&dword_24E5DD000, v7, v8, v10, v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
LABEL_12:

LABEL_13:

    v12 = v0[1];

    return v12();
  }

  v14 = v0[29];
  v37 = v0[28];
  v15 = v0[27];
  v16 = v0[14];
  (*(v0[33] + 32))(v0[34], v0[31], v0[32]);
  swift_getKeyPath();
  v0[10] = v16;
  sub_24F91FD88();

  v17 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef;
  swift_beginAccess();
  sub_24E60169C(v16 + v17, v15, &qword_27F22D4E0, &unk_24F994C00);
  if ((*(v14 + 48))(v15, 1, v37) == 1)
  {
    sub_24E601704(v0[27], &qword_27F22D4E0, &unk_24F994C00);
    if (qword_27F211450 != -1)
    {
      swift_once();
    }

    v18 = sub_24F9220D8();
    __swift_project_value_buffer(v18, qword_27F39E940);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BDD8();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[33];
    v22 = v0[34];
    v24 = v0[32];
    if (v21)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "GamesSettings: resetAnalyticsIdentifier called without a player", v25, 2u);
      MEMORY[0x2530542D0](v25, -1, -1);
    }

    (*(v23 + 8))(v22, v24);
    goto LABEL_13;
  }

  (*(v0[29] + 32))(v0[30], v0[27], v0[28]);
  if (*(v1 + 18) != 3)
  {
    v26 = v0[14];
    swift_getKeyPath();
    v27 = swift_task_alloc();
    *(v27 + 16) = v26;
    *(v27 + 24) = 3;
    v0[11] = v26;
    sub_24F91FD78();
  }

  v28 = sub_24F920FD8();
  v0[37] = v28;
  v0[38] = v29;
  v31 = v0[25];
  v30 = v0[26];
  v32 = v0[24];
  *v30 = v28;
  v30[1] = v29;
  (*(v31 + 104))(v30, *MEMORY[0x277CEE0E8], v32);

  v33 = sub_24F92A328();
  v34 = swift_task_alloc();
  v0[39] = v34;
  *v34 = v0;
  v34[1] = sub_24ECC7ED0;
  v35 = v0[23];

  return MEMORY[0x282140780](v35, v33);
}

uint64_t sub_24ECC7ED0()
{
  v2 = *v1;
  v2[40] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24ECC8F44, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[41] = v3;
    *v3 = v2;
    v3[1] = sub_24ECC8090;
    v4 = v2[37];
    v5 = v2[38];
    v6 = v2[23];

    return sub_24F567434(v6, v4, v5, 0x6B6E696C6E75, 0xE600000000000000, 0xD000000000000015, 0x800000024FA59C00);
  }
}

uint64_t sub_24ECC8090()
{
  *(*v1 + 336) = v0;

  if (v0)
  {

    v2 = sub_24ECC8578;
  }

  else
  {
    v2 = sub_24ECC81AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC81AC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D520, &unk_24F994E98);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v8 + v7, v1, v3);
  v9 = sub_24E8047A4(v8);
  v0[43] = v9;
  swift_setDeallocating();
  v10 = *(v2 + 8);
  v0[44] = v10;
  v0[45] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v8 + v7, v3);
  swift_deallocClassInstance();
  (*(v5 + 104))(v4, *MEMORY[0x277CEE100], v6);
  v11 = swift_task_alloc();
  v0[46] = v11;
  *v11 = v0;
  v11[1] = sub_24ECC835C;
  v12 = v0[20];
  v13 = v0[17];
  v14 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D837E0];
  v16 = MEMORY[0x277D83840];

  return MEMORY[0x282140758](v9, v12, v14, v15, v16, v13);
}

uint64_t sub_24ECC835C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    return MEMORY[0x2822009F8](sub_24ECC922C, 0, 0);
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v4 = swift_task_alloc();
    v2[47] = v4;
    *v4 = v3;
    v4[1] = sub_24ECC887C;
    v5 = v2[37];
    v6 = v2[38];
    v7 = v2[23];

    return sub_24F567434(v7, v5, v6, 1802398060, 0xE400000000000000, 0xD000000000000015, 0x800000024FA59C00);
  }
}

uint64_t sub_24ECC8578()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[42];
  v5 = v0[14];
  if (*(v5 + 18) != 1)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[12] = v5;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E940);
  v8 = v4;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[30];
  v17 = v0[28];
  if (v11)
  {
    v27 = v0[34];
    v18 = swift_slowAlloc();
    v26 = v14;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_24E5DD000, v9, v10, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v18, 0xCu);
    sub_24E601704(v19, &qword_27F227B20, &qword_24F944D30);
    v22 = v19;
    v14 = v26;
    MEMORY[0x2530542D0](v22, -1, -1);
    v23 = v18;
    v13 = v27;
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  (*(v15 + 8))(v16, v17);
  (*(v12 + 8))(v13, v14);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24ECC887C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24ECC8C48;
  }

  else
  {
    v2 = sub_24ECC89B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECC89B0()
{
  v1 = v0[14];
  if (*(v1 + 18) != 4)
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 4;
    v0[13] = v1;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E940);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDD8();
  v6 = os_log_type_enabled(v4, v5);
  v22 = v0[44];
  v8 = v0[33];
  v7 = v0[34];
  v23 = v0[32];
  v9 = v0[29];
  v20 = v0[28];
  v21 = v0[30];
  v19 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v13 = v0[22];
  if (v6)
  {
    v18 = v0[34];
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GamesSettings: resetAnalyticsIdentifier: identifier rotation succeeded", v14, 2u);
    v15 = v14;
    v7 = v18;
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  (*(v13 + 8))(v11, v12);
  v22(v19, v10);
  (*(v9 + 8))(v21, v20);
  (*(v8 + 8))(v7, v23);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24ECC8C48()
{
  v1 = v0[44];
  v2 = v0[26];
  v3 = v0[24];
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1(v2, v3);
  v4 = v0[48];
  v5 = v0[14];
  if (*(v5 + 18) != 1)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 1;
    v0[12] = v5;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E940);
  v8 = v4;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v13 = v0[34];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[30];
  v17 = v0[28];
  if (v11)
  {
    v27 = v0[34];
    v18 = swift_slowAlloc();
    v26 = v14;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_24E5DD000, v9, v10, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v18, 0xCu);
    sub_24E601704(v19, &qword_27F227B20, &qword_24F944D30);
    v22 = v19;
    v14 = v26;
    MEMORY[0x2530542D0](v22, -1, -1);
    v23 = v18;
    v13 = v27;
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  (*(v15 + 8))(v16, v17);
  (*(v12 + 8))(v13, v14);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24ECC8F44()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1 = v0[40];
  v2 = v0[14];
  if (*(v2 + 18) != 1)
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[12] = v2;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E940);
  v5 = v1;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[33];
  v10 = v0[34];
  v11 = v0[32];
  v12 = v0[29];
  v13 = v0[30];
  v14 = v0[28];
  if (v8)
  {
    v24 = v0[34];
    v15 = swift_slowAlloc();
    v23 = v11;
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_24E5DD000, v6, v7, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v15, 0xCu);
    sub_24E601704(v16, &qword_27F227B20, &qword_24F944D30);
    v19 = v16;
    v11 = v23;
    MEMORY[0x2530542D0](v19, -1, -1);
    v20 = v15;
    v10 = v24;
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  (*(v12 + 8))(v13, v14);
  (*(v9 + 8))(v10, v11);

  v21 = v0[1];

  return v21();
}

uint64_t sub_24ECC922C()
{
  v1 = v0[44];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[15];
  sub_24ECCA7A4(&qword_27F22D528, MEMORY[0x277CEE118], MEMORY[0x277CEE120]);
  v34 = swift_allocError();
  (*(v8 + 32))(v10, v7, v9);
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  v11 = v0[14];
  if (*(v11 + 18) != 1)
  {
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v11;
    *(v12 + 24) = 1;
    v0[12] = v11;
    sub_24F91FD78();
  }

  if (qword_27F211450 != -1)
  {
    swift_once();
  }

  v13 = sub_24F9220D8();
  __swift_project_value_buffer(v13, qword_27F39E940);
  v14 = v34;
  v15 = sub_24F9220B8();
  v16 = sub_24F92BDB8();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[33];
  v19 = v0[34];
  v20 = v0[32];
  v21 = v0[29];
  v22 = v0[30];
  v23 = v0[28];
  if (v17)
  {
    v33 = v0[34];
    v24 = swift_slowAlloc();
    v32 = v20;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v34;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_24E5DD000, v15, v16, "GamesSettings: resetAnalyticsIdentifier failed with error: %@", v24, 0xCu);
    sub_24E601704(v25, &qword_27F227B20, &qword_24F944D30);
    v28 = v25;
    v20 = v32;
    MEMORY[0x2530542D0](v28, -1, -1);
    v29 = v24;
    v19 = v33;
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  (*(v21 + 8))(v22, v23);
  (*(v18 + 8))(v19, v20);

  v30 = v0[1];

  return v30();
}

uint64_t sub_24ECC95A8(uint64_t a1)
{
  v2 = sub_24F92A498();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540, &unk_24F994ED0);
  return sub_24F92B798();
}

uint64_t sub_24ECC9688(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540, &unk_24F994ED0);
  return sub_24F92B788();
}

uint64_t GamesSettings.deinit(__n128 a1)
{
  sub_24ECC9AB8(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService, &qword_27F22D4C8, &qword_24F994BB8);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService, &qword_27F22D4D0, &qword_24F994BE8);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef, &qword_27F22D4E0, &unk_24F994C00);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingState, &qword_27F22D4D8, &qword_24F9CF7D0);
  v2 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t GamesSettings.__deallocating_deinit(__n128 a1)
{
  sub_24ECC9AB8(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__bagStatus);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__authService, &qword_27F22D4C8, &qword_24F994BB8);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingService, &qword_27F22D4D0, &qword_24F994BE8);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__playerRef, &qword_27F22D4E0, &unk_24F994C00);
  sub_24E601704(v1 + OBJC_IVAR____TtC12GameStoreKit13GamesSettings__onboardingState, &qword_27F22D4D8, &qword_24F9CF7D0);
  v2 = OBJC_IVAR____TtC12GameStoreKit13GamesSettings___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_24ECC9AB8(uint64_t a1)
{
  v2 = type metadata accessor for GamesSettings.BagStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ECC9B14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540, &unk_24F994ED0);
  v3 = *(v2 - 8);
  v15[2] = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - v4;
  if (qword_27F210540 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92A468();
  __swift_project_value_buffer(v6, qword_27F22D478);
  v7 = [objc_opt_self() currentProcess];
  v15[1] = sub_24F92A348();

  v8 = *(v3 + 16);
  v8(v5, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15[0] = swift_allocObject();
  v10 = *(v3 + 32);
  v10(v15[0] + v9, v5, v2);
  v8(v5, a1, v2);
  v11 = swift_allocObject();
  v10(v11 + v9, v5, v2);
  v12 = sub_24E74EC40();
  v13 = sub_24F92BEF8();
  v16[3] = v12;
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = v13;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_24ECC9ED0(uint64_t a1)
{
  type metadata accessor for GamesSettings.BagStatus(319);
  if (v1 <= 0x3F)
  {
    sub_24ECCA178(319);
    if (v2 <= 0x3F)
    {
      sub_24ECCA1DC(319);
      if (v3 <= 0x3F)
      {
        sub_24F91FDC8();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of GamesSettings.load()()
{
  v4 = (*(*v0 + 608) + **(*v0 + 608));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_24E6541E4;

  return v4();
}

void sub_24ECCA178(uint64_t a1)
{
  if (!qword_27F22D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2139D8, &qword_24F93B580);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22D4F8);
    }
  }
}

void sub_24ECCA1DC(uint64_t a1)
{
  if (!qword_27F22D500)
  {
    sub_24F920958();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22D500);
    }
  }
}

uint64_t sub_24ECCA258(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A498();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ECCA2D8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24F92A498();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24ECCA35C(uint64_t a1)
{
  v1 = sub_24F92A498();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_24ECCA3B8()
{
  result = qword_27F22D518;
  if (!qword_27F22D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D518);
  }

  return result;
}

uint64_t sub_24ECCA40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ECCA4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D4E0, &unk_24F994C00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D530, &qword_24FA17580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24E60169C(a1, &v21 - v12, &qword_27F22D4E0, &unk_24F994C00);
  sub_24E60169C(a2, &v13[v15], &qword_27F22D4E0, &unk_24F994C00);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24E60169C(v13, v10, &qword_27F22D4E0, &unk_24F994C00);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24ECCA9F8();
      v18 = sub_24F92AFF8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24E601704(v13, &qword_27F22D4E0, &unk_24F994C00);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F22D530, &qword_24FA17580);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F22D4E0, &unk_24F994C00);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24ECCA7A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ECCA7EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECCA82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24ECC5810(a1, v4, v5, v6);
}

uint64_t sub_24ECCA8E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECCA918()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24ECC6068();
}

unint64_t sub_24ECCA9F8()
{
  result = qword_27F22D538;
  if (!qword_27F22D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2139D8, &qword_24F93B580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D538);
  }

  return result;
}

uint64_t sub_24ECCAA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540, &unk_24F994ED0);

  return sub_24ECC95A8(a1);
}

uint64_t objectdestroy_117Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540, &unk_24F994ED0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCAB70(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D540, &unk_24F994ED0);

  return sub_24ECC9688(a1);
}

uint64_t sub_24ECCABEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSettings.BagStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_24ECCACE4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCC910();
  sub_24F91FD88();

  *a2 = *(v3 + 24);
}

uint64_t sub_24ECCAD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v56 = a5;
  v58 = a4;
  v52 = a3;
  v45 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v12 = *(v11 - 8);
  v48 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v41 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D548, &qword_24F994EE0);
  v15 = *(v57 - 8);
  v41[2] = *(v15 + 64);
  MEMORY[0x28223BE20](v57);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v55 = v41 - v19;
  v41[1] = *(a2 + 16);
  v20 = *(v12 + 16);
  v50 = v12 + 16;
  v51 = v20;
  v44 = v14;
  v42 = v11;
  (v20)(v14, a1, v11, v18);
  v21 = v12;
  v46 = *(v12 + 80);
  v22 = (v46 + 56) & ~v46;
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = v56;
  *(v23 + 4) = v58;
  *(v23 + 5) = v24;
  *(v23 + 6) = v54;
  v25 = *(v21 + 32);
  v47 = v21 + 32;
  v49 = v25;
  v25(&v23[v22], v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D550, &qword_24F994EE8);
  sub_24ECCB64C();

  sub_24F9288B8();
  v26 = v55;
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v59);
  v27 = v43;
  v28 = v57;
  (*(v15 + 16))(v43, v26, v57);
  v29 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  (*(v15 + 32))(v30 + v29, v27, v28);

  v31 = v42;
  v32 = v45;
  sub_24F92B898();
  v33 = sub_24F92B858();
  v34 = v53;
  (*(*(v33 - 8) + 56))(v53, 1, 1, v33);
  v35 = v44;
  v51(v44, v32, v31);
  v36 = (v46 + 72) & ~v46;
  v37 = swift_allocObject();
  *(v37 + 2) = 0;
  *(v37 + 3) = 0;
  v38 = v52;
  *(v37 + 4) = a2;
  *(v37 + 5) = v38;
  v39 = v56;
  *(v37 + 6) = v58;
  *(v37 + 7) = v39;
  *(v37 + 8) = v54;
  v49(&v37[v36], v35, v31);

  sub_24F1D3DA4(0, 0, v34, &unk_24F994EF8, v37);

  return (*(v15 + 8))(v55, v57);
}

double sub_24ECCB298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a3;
  v29 = a6;
  v27 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v26 = &v26 - v16;
  v18 = *a1;
  v19 = sub_24F92B858();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = v11;
  (*(v12 + 16))(v14, a7, v11);
  v21 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  *(v22 + 5) = v18;
  v23 = v27;
  *(v22 + 6) = v28;
  *(v22 + 7) = a4;
  v24 = v29;
  *(v22 + 8) = v23;
  *(v22 + 9) = v24;
  (*(v12 + 32))(&v22[v21], v14, v20);

  sub_24F1D3DA4(0, 0, v26, &unk_24F994F30, v22);

  return result;
}

uint64_t sub_24ECCB4DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_24ECCB5C4(uint64_t *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_24ECCB298(a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_24ECCB64C()
{
  result = qword_27F22D558;
  if (!qword_27F22D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D550, &qword_24F994EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D558);
  }

  return result;
}

uint64_t sub_24ECCB6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v14;
  v8[19] = v15;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v11 = swift_task_alloc();
  v8[25] = v11;
  *v11 = v8;
  v11[1] = sub_24ECCB81C;

  return MEMORY[0x28217F228](v8 + 8, v10, v10);
}

uint64_t sub_24ECCB81C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ECCBCFC;
  }

  else
  {
    v2 = sub_24ECCB930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCB930()
{
  sub_24F92B7F8();

  *(v0 + 216) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECCB9D0, v2, v1);
}

uint64_t sub_24ECCB9D0()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[13] = v1;
  sub_24ECCC910();
  sub_24F91FD88();

  v0[28] = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24ECCBA8C, 0, 0);
}

uint64_t sub_24ECCBA8C(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 224);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v7 + 136);
  if (v9 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
  }

  v12 = *(v7 + 120);
  v11 = *(v7 + 128);
  v13 = v10 + 32 * v9;
  v14 = *(v13 + 32);
  *(v7 + 232) = v14;
  v15 = *(v13 + 40);
  *(v7 + 240) = v15;
  v16 = *(v13 + 48);
  v17 = *(v13 + 56);
  v18 = *(v7 + 88);
  v19 = *(v7 + 96);
  __swift_project_boxed_opaque_existential_1((v7 + 64), v18);
  *(v7 + 16) = v12;
  *(v7 + 24) = v11;
  *(v7 + 32) = v14;
  *(v7 + 40) = v15;
  *(v7 + 48) = v16;
  *(v7 + 56) = v17;

  v20 = swift_task_alloc();
  *(v7 + 248) = v20;
  a5 = sub_24E7C5F68();
  *v20 = v7;
  v20[1] = sub_24ECCBBE8;
  a1 = *(v7 + 192);
  a3 = *(v7 + 144);
  a4 = &type metadata for GameDetailsMediaPreviewShelfConstructionIntent;
  a2 = v7 + 16;
  a6 = v18;
  a7 = v19;

  return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24ECCBBE8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ECCBE88;
  }

  else
  {
    v2 = sub_24ECCBD7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCBCFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECCBD7C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_24E614E60(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v4 + 8))(v3, v5);
  sub_24E614EC4(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24ECCBE88()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24ECCBF2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D548, &qword_24F994EE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v14;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v11 = swift_task_alloc();
  v8[25] = v11;
  *v11 = v8;
  v11[1] = sub_24ECCC1E0;

  return MEMORY[0x28217F228](v8 + 8, v10, v10);
}

uint64_t sub_24ECCC1E0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24ECCCB9C;
  }

  else
  {
    v2 = sub_24ECCC2F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCC2F4()
{
  sub_24F92B7F8();

  *(v0 + 216) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24ECCC394, v2, v1);
}

uint64_t sub_24ECCC394()
{
  v1 = v0[14];

  swift_getKeyPath();
  v0[13] = v1;
  sub_24ECCC910();
  sub_24F91FD88();

  v0[28] = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_24ECCC450, 0, 0);
}

uint64_t sub_24ECCC450(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(v7 + 224);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(v7 + 136);
  if (v9 >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
  }

  v12 = *(v7 + 120);
  v11 = *(v7 + 128);
  v13 = v10 + 32 * v9;
  v14 = *(v13 + 32);
  *(v7 + 232) = v14;
  v15 = *(v13 + 40);
  *(v7 + 240) = v15;
  v16 = *(v13 + 48);
  v17 = *(v13 + 56);
  v18 = *(v7 + 88);
  v19 = *(v7 + 96);
  __swift_project_boxed_opaque_existential_1((v7 + 64), v18);
  *(v7 + 16) = v12;
  *(v7 + 24) = v11;
  *(v7 + 32) = v14;
  *(v7 + 40) = v15;
  *(v7 + 48) = v16;
  *(v7 + 56) = v17;

  v20 = swift_task_alloc();
  *(v7 + 248) = v20;
  a5 = sub_24E7C5F68();
  *v20 = v7;
  v20[1] = sub_24ECCC5AC;
  a1 = *(v7 + 192);
  a3 = *(v7 + 144);
  a4 = &type metadata for GameDetailsMediaPreviewShelfConstructionIntent;
  a2 = v7 + 16;
  a6 = v18;
  a7 = v19;

  return MEMORY[0x28217F4B0](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24ECCC5AC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24ECCCB94;
  }

  else
  {
    v2 = sub_24ECCCB98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECCC6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCC7B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E6541E4;

  return sub_24ECCC070(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_24ECCC910()
{
  result = qword_27F224068;
  if (!qword_27F224068)
  {
    type metadata accessor for GameMediaPreviewPlatformOptionProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224068);
  }

  return result;
}

uint64_t sub_24ECCC968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24ECCCA60(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E614970;

  return sub_24ECCB6B0(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_24ECCCBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24F924E18();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_24F924E28();
}

uint64_t sub_24ECCCC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_24F924E18();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_24F924E28();
}

__n128 DebugNotificationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v43 - v5;
  v7 = [*v1 text];
  v8 = sub_24F92B0D8();
  v10 = v9;

  v56 = v8;
  v57 = v10;
  sub_24E600AEC();
  v48 = sub_24F925E18();
  v47 = v11;
  LOBYTE(v7) = v12;
  v46 = v13;
  sub_24F927628();
  sub_24F9242E8();
  LOBYTE(v10) = v7 & 1;
  v58 = v7 & 1;
  v45 = sub_24F925808();
  sub_24F923318();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v56) = 0;
  v22 = sub_24F925908();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v44 = sub_24F925968();
  sub_24ECCD0C8(v6);
  KeyPath = swift_getKeyPath();
  v24 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v25 = sub_24F927618();
  v27 = v26;
  sub_24F926C68();
  v28 = sub_24F926D08();

  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D560, &unk_24F994FA8) + 36));
  v30 = *(sub_24F924258() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_24F924B38();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #12.0 }

  *v29 = _Q0;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  v38 = v47;
  *a1 = v48;
  *(a1 + 8) = v38;
  *(a1 + 16) = v10;
  *(a1 + 24) = v46;
  v39 = v54;
  *(a1 + 96) = v53;
  *(a1 + 112) = v39;
  *(a1 + 128) = v55;
  v40 = v50;
  *(a1 + 32) = v49;
  *(a1 + 48) = v40;
  result = v52;
  *(a1 + 64) = v51;
  *(a1 + 80) = result;
  *(a1 + 144) = v45;
  *(a1 + 152) = v15;
  *(a1 + 160) = v17;
  *(a1 + 168) = v19;
  *(a1 + 176) = v21;
  *(a1 + 184) = 0;
  v42 = v44;
  *(a1 + 192) = KeyPath;
  *(a1 + 200) = v42;
  *(a1 + 208) = v24;
  *(a1 + 216) = v28;
  *(a1 + 224) = v25;
  *(a1 + 232) = v27;
  return result;
}

uint64_t sub_24ECCD0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_24ECCD134()
{
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  return result;
}

double sub_24ECCD1D8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  *a2 = *(v3 + 16);

  return result;
}

uint64_t sub_24ECCD284(unint64_t a1)
{

  v4 = sub_24EA184FC(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
    sub_24F91FD78();
  }
}

void *sub_24ECCD3D8()
{
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_24ECCD480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_24ECCD538(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24F91F1C8();
  v5 = v4;
  v6 = a1;
  v7 = sub_24F92C408();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

uint64_t sub_24ECCD6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F927D88();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F927DC8();
  v7 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v10 = sub_24F92BEF8();
  aBlock[4] = sub_24ECCF524;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_67;
  v11 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24ECCF544(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v9, v6, v11);
  _Block_release(v11);

  (*(v14 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v13);
}

double sub_24ECCD998(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = [*(Strong + 24) messages];
    sub_24E69A5C4(0, &qword_27F2252F0, off_279686878);
    sub_24F92B598();

    sub_24ECCD284(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_24ECCDA50()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC12GameStoreKit25DebugNotificationObserver___observationRegistrar;
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = v3;
    sub_24F91F1B8();
  }

  v5 = sub_24F91FDC8();
  (*(*(v5 - 8) + 8))(v1 + v2, v5);
  return swift_deallocClassInstance();
}

uint64_t DebugNotificationViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_24F927618();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D568, &qword_24F994FB8) + 36);
  sub_24ECCDC68(v5, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D570, &qword_24F994FC0) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D578, qword_24F994FC8);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

void sub_24ECCDC68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D608, &qword_24F995218);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D610, &qword_24F995220);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D618, &qword_24F995228);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D620, &qword_24F995230);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D628, &qword_24F995238);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D630, &qword_24F995240);
  sub_24ECCE094(v46, &v5[*(v22 + 44)]);
  v5[*(v3 + 44)] = 0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F22D608, &qword_24F995218);
  v23 = &v9[*(v7 + 44)];
  v24 = v53;
  *(v23 + 4) = v52;
  *(v23 + 5) = v24;
  *(v23 + 6) = v54;
  v25 = v49;
  *v23 = v48;
  *(v23 + 1) = v25;
  v26 = v51;
  *(v23 + 2) = v50;
  *(v23 + 3) = v26;
  LOBYTE(v5) = sub_24F925808();
  sub_24F923318();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_24E6009C8(v9, v13, &qword_27F22D610, &qword_24F995220);
  v35 = &v13[*(v11 + 44)];
  *v35 = v5;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_24F927618();
  v38 = v37;
  v39 = sub_24F926C98();
  sub_24E6009C8(v13, v17, &qword_27F22D618, &qword_24F995228);
  v40 = &v17[*(v15 + 44)];
  *v40 = v39;
  v40[1] = v36;
  v40[2] = v38;
  v41 = sub_24F927718();
  swift_getKeyPath();
  v42 = v46;
  v47 = v46;
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  v43 = *(v42 + 16);
  sub_24E6009C8(v17, v21, &qword_27F22D620, &qword_24F995230);
  v44 = &v21[*(v19 + 44)];
  *v44 = v41;
  v44[1] = v43;
  sub_24E6009C8(v21, v45, &qword_27F22D628, &qword_24F995238);
}

uint64_t sub_24ECCE094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D638, &unk_24F995248);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  swift_getKeyPath();
  v16 = a1;
  sub_24ECCF544(&qword_27F22D600, type metadata accessor for DebugNotificationObserver, &unk_24F9951A0);
  sub_24F91FD88();

  v16 = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D640, &qword_24F995270);
  sub_24E602068(&qword_27F22D648, &qword_27F22D640, &qword_24F995270, MEMORY[0x277D83980]);
  sub_24ECCF58C();
  sub_24ECCF5F4();
  sub_24F927228();
  v11 = *(v5 + 16);
  v11(v7, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D660, &qword_24F995278);
  v11((a2 + *(v12 + 48)), v7, v4);
  v13 = *(v5 + 8);
  v13(v10, v4);
  return (v13)(v7, v4);
}

id sub_24ECCE334@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_24ECCE340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_24F927618();
  v8 = v7;
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D568, &qword_24F994FB8) + 36);
  sub_24ECCDC68(v5, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D570, &qword_24F994FC0) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D578, qword_24F994FC8);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t View.withDebugNotificationView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v65 = a2;
  v4 = 0x6C616E7265746E69;
  v61 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  v10 = sub_24F924038();
  v60 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  v58 = &v56 - v15;
  v16 = sub_24F924E38();
  v63 = *(v16 - 8);
  v64 = v16;
  MEMORY[0x28223BE20](v16);
  v62 = &v56 - v17;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    v19 = 0x6C616E7265746E69;
  }

  else
  {
    v19 = 0x69746375646F7270;
  }

  if (has_internal_content)
  {
    v20 = 0xE800000000000000;
  }

  else
  {
    v20 = 0xEA00000000006E6FLL;
  }

  if (byte_2861C0A48 > 1u)
  {
    v24 = byte_2861C0A48 == 2 ? 0x6C616E7265746E69 : 0x69746375646F7270;
    v25 = byte_2861C0A48 == 2 ? 0xE800000000000000 : 0xEA00000000006E6FLL;
    if (v24 == v19 && v25 == v20)
    {
      goto LABEL_34;
    }
  }

  v21 = sub_24F92CE08();

  if (v21)
  {
    goto LABEL_35;
  }

  if (byte_2861C0A49 > 1u)
  {
    if (byte_2861C0A49 == 2)
    {
      v26 = 0xE800000000000000;
      if (v19 != 0x6C616E7265746E69)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = 0xEA00000000006E6FLL;
      if (v19 != 0x69746375646F7270)
      {
        goto LABEL_10;
      }
    }

    if (v26 == v20)
    {
LABEL_34:

      goto LABEL_35;
    }
  }

LABEL_10:
  v22 = sub_24F92CE08();

  if (v22)
  {
    goto LABEL_35;
  }

  if (byte_2861C0A4A > 1u)
  {
    if (byte_2861C0A4A == 2)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v4 = 0x69746375646F7270;
      v27 = 0xEA00000000006E6FLL;
    }

    if (v4 == v19 && v27 == v20)
    {
      goto LABEL_34;
    }
  }

  v23 = sub_24F92CE08();

  if ((v23 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_35:
  v28 = [objc_opt_self() standardUserDefaults];
  v29 = sub_24F92B098();
  v30 = [v28 arrayForKey_];

  if (!v30)
  {

LABEL_43:
    v43 = v65;
    sub_24E7896B8();
    sub_24E7896B8();
    v50 = sub_24ECCEDCC();
    v69[6] = v43;
    v69[7] = v50;
    WitnessTable = swift_getWitnessTable();
    v49 = v62;
    sub_24ECCCC98(v6, v10, a1, WitnessTable, v43);
    v52 = *(v61 + 8);
    v52(v6, a1);
    v52(v9, a1);
    goto LABEL_44;
  }

  v31 = sub_24F92B5A8();

  v32 = sub_24E9E2340(v31);

  if (!v32)
  {
    goto LABEL_43;
  }

  v69[0] = 0xD000000000000011;
  v69[1] = 0x800000024FA59C40;
  MEMORY[0x28223BE20](v33);
  *(&v56 - 2) = v69;
  v34 = sub_24E6159B8(sub_24E7FA94C, (&v56 - 4), v32);

  if ((v34 & 1) == 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for DebugNotificationObserver(0);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D84F90];
  *(v35 + 16) = MEMORY[0x277D84F90];
  *(v35 + 24) = [objc_opt_self() sharedInstance];
  *(v35 + 32) = 0;
  sub_24F91FDB8();
  v37 = [*(v35 + 24) messages];
  v69[0] = 0;
  sub_24E69A5C4(0, &qword_27F2252F0, off_279686878);
  sub_24F92B598();

  if (v69[0])
  {
    v38 = v69[0];
  }

  else
  {
    v38 = v36;
  }

  sub_24ECCD284(v38);
  v69[0] = *(v35 + 24);
  v39 = v69[0];
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v40 = v39;
  v41 = sub_24F91F318();

  sub_24ECCD538(v41);
  v69[0] = v35;
  v42 = v57;
  v43 = v65;
  MEMORY[0x25304C420](v69, a1, &type metadata for DebugNotificationViewModifier, v65);

  v44 = sub_24ECCEDCC();
  v67 = v43;
  v68 = v44;
  v45 = swift_getWitnessTable();
  v46 = v58;
  sub_24E7896B8();
  v47 = *(v60 + 8);
  v47(v42, v10);
  v48 = v59;
  sub_24E7896B8();
  v49 = v62;
  sub_24ECCCBA0(v48, v10, a1, v45, v43);
  v47(v48, v10);
  v47(v46, v10);
LABEL_44:
  v53 = sub_24ECCEDCC();
  v69[4] = v43;
  v69[5] = v53;
  v69[2] = swift_getWitnessTable();
  v69[3] = v43;
  v54 = v64;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v63 + 8))(v49, v54);
}

uint64_t sub_24ECCED1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924758();
  *a1 = result;
  return result;
}

uint64_t sub_24ECCED48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F924758();
  *a1 = result;
  return result;
}

unint64_t sub_24ECCEDCC()
{
  result = qword_27F22D580;
  if (!qword_27F22D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D580);
  }

  return result;
}

uint64_t type metadata accessor for DebugNotificationObserver(uint64_t a1)
{
  result = qword_27F22D590;
  if (!qword_27F22D590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24ECCEE78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 messages];
  *a2 = result;
  return result;
}

uint64_t sub_24ECCEEB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24ECCEF4C(uint64_t a1)
{
  result = sub_24F91FDC8();
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

unint64_t sub_24ECCF018()
{
  result = qword_27F22D5A0;
  if (!qword_27F22D5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D560, &unk_24F994FA8);
    sub_24ECCF0D0();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5A0);
  }

  return result;
}

unint64_t sub_24ECCF0D0()
{
  result = qword_27F22D5A8;
  if (!qword_27F22D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D5B0, &qword_24F995180);
    sub_24ECCF188();
    sub_24E602068(&qword_27F22D5D8, &qword_27F22D5E0, &qword_24F995198, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5A8);
  }

  return result;
}

unint64_t sub_24ECCF188()
{
  result = qword_27F22D5B8;
  if (!qword_27F22D5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D5C0, &qword_24F995188);
    sub_24ECCF240();
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0, &qword_24F956740, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5B8);
  }

  return result;
}

unint64_t sub_24ECCF240()
{
  result = qword_27F22D5C8;
  if (!qword_27F22D5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D5D0, &qword_24F995190);
    sub_24E99BE04();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5C8);
  }

  return result;
}

unint64_t sub_24ECCF2FC()
{
  result = qword_27F22D5E8;
  if (!qword_27F22D5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D568, &qword_24F994FB8);
    sub_24E602068(&qword_27F22D5F0, &qword_27F22D578, qword_24F994FC8, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F22D5F8, &qword_27F22D570, &qword_24F994FC0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D5E8);
  }

  return result;
}

uint64_t sub_24ECCF3E0(void *a1)
{
  sub_24F924038();
  sub_24F924E38();
  sub_24ECCEDCC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_24ECCF48C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_24ECCD538(v1);
}

void sub_24ECCF4EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ECCF544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ECCF58C()
{
  result = qword_27F22D650;
  if (!qword_27F22D650)
  {
    sub_24E69A5C4(255, &qword_27F2252F0, off_279686878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D650);
  }

  return result;
}

unint64_t sub_24ECCF5F4()
{
  result = qword_27F22D658;
  if (!qword_27F22D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D658);
  }

  return result;
}

uint64_t sub_24ECCF650(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  sub_24F928FD8();
  sub_24F92A758();
  v1 = type metadata accessor for Restrictions();
  v30 = v31;
  sub_24F92A758();
  v2 = v31;
  v3 = type metadata accessor for AppStateFieldsProvider(0);
  v32 = v3;
  v33 = sub_24ECD02B0(&qword_27F22D668, type metadata accessor for AppStateFieldsProvider, &protocol conformance descriptor for AppStateFieldsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v5 = *(v3 + 20);
  v6 = *MEMORY[0x277D22340];
  v7 = sub_24F92A2D8();
  v8 = *(*(v7 - 8) + 104);
  v8(boxed_opaque_existential_1 + v5, v6, v7);
  *boxed_opaque_existential_1 = v30;
  v9 = qword_27F2102B8;
  swift_unknownObjectRetain();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_24F92A2C8();
  __swift_project_value_buffer(v10, qword_27F229C80);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for FastImpressionsFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D670, type metadata accessor for FastImpressionsFieldsProvider, &protocol conformance descriptor for FastImpressionsFieldsProvider);
  v11 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v11, v6, v7);
  if (qword_27F210298 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229C20);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for CrossfireReferralFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D678, type metadata accessor for CrossfireReferralFieldsProvider, &protocol conformance descriptor for CrossfireReferralFieldsProvider);
  v12 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v12, v6, v7);
  if (qword_27F2102A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229C38);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for CrossfireReferralCandidateFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D680, type metadata accessor for CrossfireReferralCandidateFieldsProvider, &protocol conformance descriptor for CrossfireReferralCandidateFieldsProvider);
  v13 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v13, v6, v7);
  if (qword_27F2102A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229C50);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for RefURLFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D688, type metadata accessor for RefURLFieldsProvider, &unk_24F988290);
  v14 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v15 = *MEMORY[0x277D22348];
  v8(v14, v15, v7);
  if (qword_27F2102B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229C68);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for PreloadingFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D690, type metadata accessor for PreloadingFieldsProvider, &protocol conformance descriptor for PreloadingFieldsProvider);
  v16 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v16, v15, v7);
  if (qword_27F2102C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229C98);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for SearchAdRotationFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D698, type metadata accessor for SearchAdRotationFieldsProvider, &protocol conformance descriptor for SearchAdRotationFieldsProvider);
  v17 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v17, v6, v7);
  if (qword_27F2102D8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229CE0);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for SearchGhostHintFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D6A0, type metadata accessor for SearchGhostHintFieldsProvider, &protocol conformance descriptor for SearchGhostHintFieldsProvider);
  v18 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v18, v6, v7);
  if (qword_27F2102E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229CF8);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for GuidedSearchFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D6A8, type metadata accessor for GuidedSearchFieldsProvider, &protocol conformance descriptor for GuidedSearchFieldsProvider);
  v19 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v19, v6, v7);
  if (qword_27F2102F0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229D28);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for ImpressionsAppendixFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D6B0, type metadata accessor for ImpressionsAppendixFieldsProvider, &protocol conformance descriptor for ImpressionsAppendixFieldsProvider);
  v20 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v20, v6, v7);
  if (qword_27F2102F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229D40);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for AdvertDeviceWindowFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D6B8, type metadata accessor for AdvertDeviceWindowFieldsProvider, &protocol conformance descriptor for AdvertDeviceWindowFieldsProvider);
  v21 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v21, v6, v7);
  if (qword_27F210300 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229D58);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = &type metadata for UserContentRestrictionProvider;
  v33 = sub_24ECD01D0();
  v22 = swift_allocObject();
  *&v31 = v22;
  v22[5] = v1;
  v22[6] = &protocol witness table for Restrictions;
  v22[2] = v2;
  v23 = qword_27F210308;

  if (v23 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229D70);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = &type metadata for ContentRestrictionReasonsProvider;
  v33 = sub_24ECD025C();
  v24 = swift_allocObject();
  *&v31 = v24;
  v24[5] = v1;
  v24[6] = &protocol witness table for Restrictions;
  v24[2] = v2;
  v25 = qword_27F210310;

  if (v25 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_27F229D88);
  sub_24F929EF8();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for MetricsActivityFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D6D0, type metadata accessor for MetricsActivityFieldsProvider, &protocol conformance descriptor for MetricsActivityFieldsProvider);
  v26 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v26, v6, v7);
  if (qword_27F210328 != -1)
  {
    swift_once();
  }

  v27 = sub_24F92A278();
  __swift_project_value_buffer(v27, qword_27F229DD0);
  sub_24F929F08();
  __swift_destroy_boxed_opaque_existential_1(&v31);
  v32 = type metadata accessor for CanaryFieldsProvider(0);
  v33 = sub_24ECD02B0(&qword_27F22D6D8, type metadata accessor for CanaryFieldsProvider, &protocol conformance descriptor for CanaryFieldsProvider);
  v28 = __swift_allocate_boxed_opaque_existential_1(&v31);
  v8(v28, v6, v7);
  if (qword_27F210320 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v27, qword_27F229DB8);
  sub_24F929F08();

  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v31);
}

unint64_t sub_24ECD01D0()
{
  result = qword_27F22D6C0;
  if (!qword_27F22D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D6C0);
  }

  return result;
}

uint64_t sub_24ECD0224()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24ECD025C()
{
  result = qword_27F22D6C8;
  if (!qword_27F22D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D6C8);
  }

  return result;
}

uint64_t sub_24ECD02B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ECD02FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 14 || v1 == 11)
  {
    v3 = *(a1 + 72);
    if (!*(v3 + 16))
    {
LABEL_13:
      v10 = 0;
      v11 = 0;
      return v10;
    }

    v4 = 0x7061726761726170;
    v5 = 0x7478655468;
  }

  else
  {
    if (v1 != 1)
    {
      goto LABEL_13;
    }

    v3 = *(a1 + 72);
    if (!*(v3 + 16))
    {
      goto LABEL_13;
    }

    v4 = 0x52746E65746E6F63;
    v5 = 0x676E697461;
  }

  v6 = sub_24E76D644(v4, v5 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v6, &v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  return v10;
}

uint64_t sub_24ECD03D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 72);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_24E76D644(0x676E69746172, 0xE600000000000000);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_24E643A9C(*(v2 + 56) + 32 * v3, v8);
  sub_24E9421D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v7 doubleValue];
  v6 = v5;

  return v6;
}

uint64_t sub_24ECD04A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 120))
  {

    if (Artwork.URLTemplate.isSystemImage.getter())
    {
      v2 = sub_24F924978();

      return v2;
    }
  }

  if (BadgeType.rawValue.getter() == 0x676E69746172 && v4 == 0xE600000000000000)
  {

LABEL_9:

    return sub_24F924978();
  }

  v5 = sub_24F92CE08();

  if (v5)
  {
    goto LABEL_9;
  }

  return sub_24F9249A8();
}

uint64_t sub_24ECD05BC(uint64_t a1)
{
  v2 = *(a1 + 17);
  if (v2 == 2)
  {
    result = sub_24ECD02FC(a1);
    if (v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v2 != 13)
  {
LABEL_7:
    result = *(a1 + 32);
    if (result)
    {
      v6 = *(a1 + 24);

      return v6;
    }

    return result;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  if (*(a1 + 16))
  {
    result = 0;
    v4 = *(a1 + 32);
    if (!v4)
    {
      return result;
    }

LABEL_15:
    v11 = sub_24F69ADAC(*(a1 + 24), v4);
    v13 = 8236;
    v14 = 0xE200000000000000;
    MEMORY[0x253050C20](v11);

    MEMORY[0x253050C20](v13, v14);

    return v15;
  }

  v7 = *(a1 + 72);
  if (*(v7 + 16))
  {
    v8 = sub_24E76D644(0x676E69746172, 0xE600000000000000);
    if (v9)
    {
      sub_24E643A9C(*(v7 + 56) + 32 * v8, &v13);
      sub_24E9421D0();
      if (swift_dynamicCast())
      {
        [v12 doubleValue];
      }
    }
  }

  result = sub_24F92BA38();
  v15 = result;
  v16 = v10;
  v4 = *(a1 + 32);
  if (v4)
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_24ECD0758()
{
  result = qword_27F22D6E0;
  if (!qword_27F22D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D6E0);
  }

  return result;
}

void __swiftcall SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)(GameStoreKit::SearchTextSnapshot *__return_ptr retstr, Swift::String prefixText, Swift::Bool prefixIsProvisional, Swift::String_optional expansionText)
{
  retstr->prefixText = prefixText;
  retstr->prefixIsProvisional = prefixIsProvisional;
  retstr->expansionText = expansionText;
}

uint64_t _s12GameStoreKit18SearchTextSnapshotV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v9 = sub_24F92CE08();
  result = 0;
  if ((v9 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
LABEL_9:
    if (v4)
    {
      if (v6 && (v3 == v7 && v4 == v6 || (sub_24F92CE08() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_24ECD089C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_24F92B3A8();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ECD08E4@<X0>(uint64_t a1@<X8>)
{
  sub_24F923BB8();
  sub_24ECD246C(&qword_27F2195F8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (v9[4] == v9[0])
  {
    v2 = sub_24F923A38();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_24F92BC88();
    v6 = v5;
    v7 = sub_24F923A38();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

void *sub_24ECD0A7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_24F92C6B8();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 9;
  }

  else
  {
    result = sub_24EFB2FB8(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

void *sub_24ECD0AF8(uint64_t a1)
{
  v2 = sub_24F92C6B8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_24ECD223C(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_24ECD0B78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D6F8, &qword_24F995408);
  v13 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = sub_24F92C6B8();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v13 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_24ECD22D0(&v6[v10], v7, *(a1 + 36), 0, a1);
    a2[1] = v11;
    sub_24E61C0A8(&v6[v10], a2 + *(v4 + 48));
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_24ECD0CFC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_24F92C6E8();
    v5 = v4;
    v6 = sub_24F92C798();
    v8 = v7;
    v9 = MEMORY[0x253052090](v3, v5, v6, v7);
    sub_24E6586A8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_24E6586A8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_24F92C6B8();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24EFB3064(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_24E6586A8(v3, v5, v2 != 0);
  return v12;
}

void (*TodayCardMediaMultiAppFallback.init(deserializing:using:)(char *a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v80 = a2;
  v75 = v3;
  v68 = *v3;
  v81 = sub_24F9285B8();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v62 - v7;
  MEMORY[0x28223BE20](v8);
  v65 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v66 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v64 = &v62 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v63 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v76 = &v62 - v30;
  v82 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v67 = v16;
  v31 = *(v16 + 8);
  v74 = v15;
  v71 = v31;
  v31(v25, v15);
  v77 = v27;
  v78 = v26;
  if ((*(v27 + 48))(v14, 1, v26) == 1)
  {
    sub_24E601704(v14, &qword_27F2213B0, &qword_24F965EC0);
    v32 = sub_24F92AC38();
    sub_24ECD246C(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v33 = 0x7370756B636F6CLL;
    v34 = v68;
    v33[1] = 0xE700000000000000;
    v33[2] = v34;
    (*(*(v32 - 1) + 104))(v33, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    (*(v79 + 8))(v80, v81);
    v71(v82, v74);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v77 + 32))(v76, v14, v78);
    sub_24F929608();
    sub_24F928398();
    v35 = *(v79 + 16);
    v36 = v65;
    v37 = v80;
    v38 = v81;
    v35(v65);
    sub_24F929548();
    v39 = v73;
    v68 = v35;
    (v35)(v73, v37, v38);
    (*(v77 + 16))(v63, v76, v78);
    (v35)(v36, v39, v38);
    type metadata accessor for Lockup(0);
    sub_24ECD246C(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    v40 = sub_24F92B6A8();
    v41 = v75;
    *&v75[OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups] = v40;
    v42 = v82;
    sub_24F928398();
    v43 = sub_24F928348();
    v45 = v44;
    v46 = v22;
    v47 = v74;
    v48 = v71;
    v71(v46, v74);
    v49 = &v41[OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText];
    *v49 = v43;
    v49[1] = v45;
    v50 = v64;
    sub_24F928398();
    v51 = sub_24F928258();
    LOBYTE(v45) = v52;
    v48(v50, v47);
    v53 = 4;
    if ((v45 & 1) == 0)
    {
      v53 = v51;
    }

    *&v41[OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit] = v53;
    v54 = v66;
    (*(v67 + 16))(v66, v42, v47);
    v55 = v69;
    (v68)(v69, v80, v81);
    v56 = v70;
    v57 = TodayCardMedia.init(deserializing:using:)(v54, v55);
    if (v56)
    {
      v32 = *(v79 + 8);
      v58 = v81;
      v32(v80, v81);
      v48(v82, v47);
      v32(v73, v58);
    }

    else
    {
      v32 = v57;
      v60 = *(v79 + 8);
      v61 = v81;
      v60(v80, v81);
      v48(v82, v47);
      v60(v73, v61);
    }

    sub_24E601704(v72, &qword_27F213E68, &unk_24F93BC80);
    (*(v77 + 8))(v76, v78);
  }

  return v32;
}

uint64_t TodayCardMediaMultiAppFallback.__allocating_init(lockups:additionalText:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups) = a1;
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit) = a4;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_24E60169C(a5, v14 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v25, &v22, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v23 + 1))
  {
    v16 = v23;
    *(v14 + 32) = v22;
    *(v14 + 48) = v16;
    *(v14 + 64) = v24;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v21[1] = v17;
    v21[2] = v19;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v25, &qword_27F235830, &qword_24F93B8C0);
  *(v14 + 16) = 3;
  *(v14 + 24) = 1;
  return v14;
}

uint64_t TodayCardMediaMultiAppFallback.init(lockups:additionalText:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups) = a1;
  v18 = (v6 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText);
  *v18 = a2;
  v18[1] = a3;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockupImpressionLimit) = a4;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  sub_24E60169C(a5, v17, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v35, &v29, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v30 + 1))
  {
    v32 = v29;
    v33 = v30;
    v34 = v31;
  }

  else
  {
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v25 + 8))(v14, v26);
    v27 = v19;
    v28 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v35, &qword_27F235830, &qword_24F93B8C0);
  v22 = v33;
  *(v6 + 32) = v32;
  *(v6 + 48) = v22;
  *(v6 + 64) = v34;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v6 + 16) = 3;
  *(v6 + 24) = 1;
  return v6;
}

uint64_t TodayCardMediaMultiAppFallback.additionalText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_additionalText);

  return v1;
}

char *TodayCardMediaMultiAppFallback.offerAdamIds.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x253052270](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_24E6164C0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_24E6164C0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t TodayCardMediaMultiAppFallback.dominantStyle.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit30TodayCardMediaMultiAppFallback_lockups);
  v21 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x253052270](v6, v2);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        return result;
      }

      v8 = *(result + 48);

      v9 = swift_unknownObjectRelease();
      if (v8)
      {
        goto LABEL_15;
      }

LABEL_9:
      v6 = v4;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v3 = sub_24F92C738();
      if (!v3)
      {
        goto LABEL_22;
      }

      goto LABEL_3;
    }

    if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v4 = v6 + 1;
    if (!*(*(v2 + 32 + 8 * v6) + 48))
    {
      goto LABEL_9;
    }

LABEL_15:
    MEMORY[0x253050F00](v9);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    v5 = v21;
  }

  while (v4 != v3);
LABEL_23:
  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_25:
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x253052270](v11, v5);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_48;
        }

        v14 = *(result + 64);
        swift_unknownObjectRelease();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v10 = sub_24F92C738();
          if (!v10)
          {
            break;
          }

          goto LABEL_25;
        }

        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v13 = v11 + 1;
        v14 = *(*(v5 + 32 + 8 * v11) + 64);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24E618F74(0, *(v12 + 2) + 1, 1, v12);
      }

      v11 = v13;
      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_24E618F74((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      v12[v16 + 32] = v14;
      if (v13 == v10)
      {
        goto LABEL_42;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_42:

  v17 = sub_24F45DD60(v12);

  if (*(v17 + 16) == 1)
  {
    sub_24ECD0A7C(v17, &v20);

    v18 = v20;
    if (v20 == 9)
    {
      v18 = 1;
    }
  }

  else
  {

    v18 = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_24ECD20A8()
{
}

uint64_t TodayCardMediaMultiAppFallback.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaMultiAppFallback.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

void *sub_24ECD223C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24ECD22D0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = type metadata accessor for Player(0);
    sub_24E70D960(v7 + *(*(v9 - 8) + 72) * a2, v6);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for TodayCardMediaMultiAppFallback(uint64_t a1)
{
  result = qword_27F22D6E8;
  if (!qword_27F22D6E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ECD246C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static UIViewPropertyAnimator.fadeInPropertyAnimator.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D753D0]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v0 timingParameters:0.15];

  return v1;
}

uint64_t sub_24ECD2530(void *a1, char a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = &v54 - v10;
  if (![a1 hasMessagesExtension])
  {
LABEL_9:
    if ([a1 supportsIPad] & 1) != 0 || (objc_msgSend(a1, sel_supportsIPhone))
    {
      v19 = 0;
    }

    else
    {
      v19 = [a1 supportsRealityDevice] ^ 1;
    }

    v20 = [a1 supportsIPad];
    v55 = v4;
    if ((v20 & 1) != 0 || ([a1 supportsIPhone] & 1) != 0 || (objc_msgSend(a1, sel_supportsRealityDevice) & 1) == 0)
    {
      if (a2)
      {
        v22 = [a1 appIconArtworkURLString];
        if (v22)
        {
          v23 = v22;
          v54 = sub_24F92B0D8();
          v25 = v24;

          v26 = 25186;
        }

        else
        {
          if (v19)
          {
            v26 = 25193;
          }

          else
          {
            v26 = 24937;
          }

          v40 = [a1 appIconCompatibleArtworkURLString];
          if (v40)
          {
            v41 = v40;
            v54 = sub_24F92B0D8();
            v25 = v42;
          }

          else
          {
            v43 = [a1 iconURLString];
            v44 = sub_24F92B0D8();
            v46 = v45;

            v58 = v44;
            v59 = v46;
            strcpy(v57, "{w}x{h}bb.{f}");
            v57[7] = -4864;
            strcpy(v56, "{w}x{h}{c}.{f}");
            v56[15] = -18;
            sub_24E600AEC();
            v54 = sub_24F92C568();
            v25 = v47;
          }
        }

        v21 = 2;
        goto LABEL_36;
      }

      if (v19)
      {
        v21 = 8;
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 3;
    }

    v27 = [a1 iconURLString];
    v54 = sub_24F92B0D8();
    v25 = v28;

    v26 = 25186;
    if (!v19)
    {
      v29 = 0;
LABEL_37:
      v48 = sub_24F929608();
      (*(*(v48 - 8) + 56))(v11, 1, 1, v48);
      type metadata accessor for Artwork(0);
      v36 = swift_allocObject();
      *(v36 + 152) = 0u;
      *(v36 + 168) = 0u;
      *(v36 + 184) = 0;
      sub_24F91F6A8();
      v49 = sub_24F91F668();
      v51 = v50;
      (*(v5 + 8))(v7, v55);
      v58 = v49;
      v59 = v51;
      sub_24F92C7F8();
      sub_24E60169C(v11, v36 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
      *(v36 + 16) = v54;
      *(v36 + 24) = v25;
      *(v36 + 32) = vdupq_n_s64(0x404E000000000000uLL);
      *(v36 + 48) = v29;
      *(v36 + 56) = 0;
      *(v36 + 72) = v26;
      *(v36 + 80) = 0xE200000000000000;
      *(v36 + 64) = v21;
      *(v36 + 104) = MEMORY[0x277D84F90];
      v58 = v26;
      v59 = 0xE200000000000000;
      goto LABEL_38;
    }

LABEL_36:
    v29 = [objc_opt_self() clearColor];
    goto LABEL_37;
  }

  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (v13)
  {
    v14 = sub_24F92B0D8();
    v16 = v15;

    if (v14 == 0xD000000000000013 && 0x800000024FA59DD0 == v16)
    {

      goto LABEL_26;
    }

    v18 = sub_24F92CE08();

    if (v18)
    {
      goto LABEL_26;
    }
  }

  if (![a1 isHiddenFromSpringboard])
  {
    goto LABEL_9;
  }

LABEL_26:
  v30 = [a1 ovalIconURLString];
  if (v30)
  {
    v31 = v30;
    v32 = sub_24F92B0D8();
    v34 = v33;

    v35 = sub_24F929608();
    (*(*(v35 - 8) + 56))(v11, 1, 1, v35);
    type metadata accessor for Artwork(0);
    v36 = swift_allocObject();
    *(v36 + 152) = 0u;
    *(v36 + 168) = 0u;
    *(v36 + 184) = 0;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v5 + 8))(v7, v4);
    v58 = v37;
    v59 = v39;
    sub_24F92C7F8();
    sub_24E60169C(v11, v36 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    *(v36 + 16) = v32;
    *(v36 + 24) = v34;
    *(v36 + 32) = xmmword_24F995420;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 72) = 25186;
    *(v36 + 80) = 0xE200000000000000;
    *(v36 + 64) = 5;
    *(v36 + 104) = MEMORY[0x277D84F90];
    v58 = 25186;
    v59 = 0xE200000000000000;
LABEL_38:
    v52 = Artwork.Crop.preferredContentMode.getter();
    sub_24E601704(v11, &qword_27F213E68, &unk_24F93BC80);
    *(v36 + 88) = v52;
    *(v36 + 96) = 3;
    return v36;
  }

  return 0;
}

void *sub_24ECD2C04(void *a1, uint64_t a2)
{
  v73 = sub_24F91F6B8();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71 - v6;
  v8 = sub_24F9294C8();
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928AD8();
  v86 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v83 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v71 - v13;
  v85 = sub_24F928698();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71 - v17;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = &v71 - v25;
  result = [a1 productURL];
  if (result)
  {
    v79 = v10;
    v80 = v7;
    v28 = result;
    sub_24F91F428();

    v29 = a1;

    v30 = sub_24ECD5680(v29, a2);
    v31 = *(v20 + 16);
    v76 = v26;
    v31(v22, v26, v19);
    (*(v20 + 56))(v18, 1, 1, v19);
    type metadata accessor for ShareSheetData(0);
    v32 = swift_allocObject();
    v33 = *(v20 + 32);
    v77 = v19;
    v33(v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_url, v22, v19);
    sub_24E6009C8(v18, v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_shortUrl, &qword_27F228530, &unk_24F93C6E0);
    v75 = v32;
    *(v32 + OBJC_IVAR____TtC12GameStoreKit14ShareSheetData_metadata) = v30 | 0x4000000000000000;
    v74 = v30;

    *&v93[0] = [v29 storeItemID];
    v34 = sub_24F92CD88();
    v78 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948, &qword_24F96D8E0);
    v36 = sub_24F92A2C8();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_24F93A400;
    v41 = v40 + v39;
    if (qword_27F2102B8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v36, qword_27F229C80);
    v43 = *(v37 + 16);
    v43(v41, v42, v36);
    v44 = v82;
    if (qword_27F2102A0 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v36, qword_27F229C38);
    v43(v41 + v38, v45, v36);
    v46 = sub_24E805DFC(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v47 = MEMORY[0x277D84F90];
    v48 = sub_24EA200BC(MEMORY[0x277D84F90]);
    type metadata accessor for ClickMetricsEvent();
    inited = swift_initStackObject();
    inited[6] = 0x70756B636F6CLL;
    inited[7] = 0xE600000000000000;
    v50 = v78;
    inited[4] = v34;
    inited[5] = v50;
    v51 = MEMORY[0x277D84FA0];
    inited[8] = v46;
    inited[9] = v51;
    inited[2] = v48;
    inited[3] = v47;
    sub_24E98C2FC();
    swift_setDeallocating();
    ClickMetricsEvent.__deallocating_deinit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2137C8, &unk_24F967940);
    v52 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_24F93DE60;
    v54 = *(v44 + 16);
    v78 = v15;
    v54(v53 + v52, v15, v85);
    sub_24F9294B8();
    v55 = v84;
    sub_24F928AA8();
    v94 = 0;
    memset(v93, 0, sizeof(v93));
    v56 = *(v86 + 16);
    v57 = v83;
    v58 = v79;
    v56(v83, v55, v79);
    v59 = sub_24F929608();
    v60 = v80;
    (*(*(v59 - 8) + 56))(v80, 1, 1, v59);
    type metadata accessor for BlankAction(0);
    v61 = swift_allocObject();
    sub_24E60169C(v93, v92, &qword_27F235830, &qword_24F93B8C0);
    v56((v61 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v57, v58);
    sub_24E60169C(v60, v61 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    v62 = (v61 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v62 = 0u;
    v62[1] = 0u;
    v63 = v61 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(v92, &v89, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v90 + 1))
    {
      v64 = v90;
      *v63 = v89;
      *(v63 + 16) = v64;
      *(v63 + 32) = v91;
    }

    else
    {
      v65 = v71;
      sub_24F91F6A8();
      v66 = sub_24F91F668();
      v68 = v67;
      (*(v72 + 8))(v65, v73);
      v87 = v66;
      v88 = v68;
      sub_24F92C7F8();
      sub_24E601704(&v89, &qword_27F235830, &qword_24F93B8C0);
    }

    v69 = v77;

    sub_24E601704(v92, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(v60, &qword_27F213E68, &unk_24F93BC80);
    v70 = *(v86 + 8);
    v70(v83, v58);
    sub_24E601704(v93, &qword_27F235830, &qword_24F93B8C0);
    v70(v84, v58);
    (*(v44 + 8))(v78, v85);
    (*(v20 + 8))(v76, v69);
    *(v61 + 16) = 0u;
    *(v61 + 32) = 0u;
    type metadata accessor for LockupContextMenuData();
    result = swift_allocObject();
    result[2] = v75;
    result[3] = v61;
  }

  return result;
}

uint64_t sub_24ECD368C(void *a1)
{
  v2 = ASKBuildTypeGetCurrent(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249E0, &qword_24F973100);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24F9479A0;
  *(v3 + 32) = @"debug";
  *(v3 + 40) = @"internal";
  *(v3 + 48) = @"convergence";
  type metadata accessor for BuildType(0);
  v4 = @"debug";
  v5 = @"internal";
  v6 = @"convergence";
  v7 = sub_24F92B588();

  IsAnyOf = ASKBuildTypeIsAnyOf(v2, v7);

  if (!IsAnyOf || (v9 = [objc_opt_self() standardUserDefaults], v10 = sub_24F92B098(), v11 = objc_msgSend(v9, sel_stringArrayForKey_, v10), v9, v10, !v11))
  {
    v12 = [a1 appCapabilities];
    if (!v12)
    {
      return 0;
    }

    v11 = v12;
  }

  v13 = sub_24F92B5A8();

  return v13;
}

uint64_t Lockup.__allocating_init(fromPurchase:isAppleSiliconSupportEnabled:isRosettaAvailable:isHidden:bag:appStateController:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v206 = a7;
  v227 = a6;
  v228 = a5;
  LODWORD(v234) = a4;
  v209 = sub_24F91F648();
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v207 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_24F928818();
  v212 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v223 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v10 - 8);
  v222 = &v197 - v11;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v201 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v200 = &v197 - v12;
  v225 = sub_24F91F6B8();
  v220 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v219 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v205 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v203 = &v197 - v17;
  MEMORY[0x28223BE20](v18);
  v211 = &v197 - v19;
  MEMORY[0x28223BE20](v20);
  v217 = &v197 - v21;
  v236 = sub_24F928AD8();
  v229 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v221 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v218 = &v197 - v24;
  MEMORY[0x28223BE20](v25);
  v213 = &v197 - v26;
  *&v28 = MEMORY[0x28223BE20](v27).n128_u64[0];
  v216 = &v197 - v29;
  v30 = [a1 longTitle];
  v31 = sub_24F92B0D8();
  v33 = v32;

  *&v250 = [a1 storeItemID];
  v237 = sub_24F92CD88();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24F93FC20;
  *(v36 + 32) = 0x726F646E6576;
  *(v36 + 40) = 0xE600000000000000;

  v37 = [a1 developerName];
  v38 = sub_24F92B0D8();
  v40 = v39;

  v41 = MEMORY[0x277D837D0];
  *(v36 + 48) = v38;
  *(v36 + 56) = v40;
  *(v36 + 72) = v41;
  *(v36 + 80) = 0x656D614E707061;
  *(v36 + 88) = 0xE700000000000000;
  *(v36 + 96) = v31;
  v224 = v31;
  *(v36 + 104) = v33;
  *(v36 + 120) = v41;
  *(v36 + 128) = 0x6449656C646E7562;
  *(v36 + 136) = 0xE800000000000000;
  v226 = v33;

  v42 = [a1 bundleID];
  v43 = sub_24F92B0D8();
  v45 = v44;

  *(v36 + 144) = v43;
  *(v36 + 152) = v45;
  *(v36 + 168) = v41;
  strcpy((v36 + 176), "isRedownload");
  *(v36 + 189) = 0;
  *(v36 + 190) = -5120;
  *(v36 + 216) = MEMORY[0x277D839B0];
  *(v36 + 192) = 1;
  v46 = sub_24E608448(v36);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = [a1 redownloadParams];
  v48 = sub_24F92B0D8();
  v50 = v49;

  v51 = sub_24E910830(v48, v50);
  v53 = v52;

  *(&v251 + 1) = v41;
  *&v250 = v51;
  *(&v250 + 1) = v53;
  v54 = v213;
  sub_24E612B0C(&v250, &v247);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v244 = v46;
  sub_24E81C1D4(&v247, 0x6D61726150797562, 0xE900000000000073, isUniquelyReferenced_nonNull_native);
  v56 = v244;
  v57._countAndFlagsBits = 0xD00000000000001CLL;
  v57._object = 0x800000024FA59D50;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v59 = localizedString(_:comment:)(v57, v58);
  countAndFlagsBits = v59._countAndFlagsBits;
  object = v59._object;

  v233 = a1;
  v60 = v35;
  v61 = v229;
  v62 = [a1 bundleID];
  v63 = sub_24F92B0D8();
  v65 = v64;

  *(&v254 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  *&v253 = v56;
  v66 = v216;
  sub_24F928A98();
  type metadata accessor for OfferAction(0);
  v67 = swift_allocObject();
  v68 = (v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_adamId);
  *v68 = v237;
  v68[1] = v60;
  sub_24E643A9C(&v253, v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_purchaseToken);
  v69 = (v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_parentAdamId);
  *v69 = 0;
  v69[1] = 0;
  v70 = (v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_bundleId);
  *v70 = v63;
  v70[1] = v65;
  v71 = v217;
  v72 = (v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_lineItem);
  *v72 = 0;
  v72[1] = 0;
  *(v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_includeBetaApps) = 0;
  *(v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_requiresExceptionRequest) = 0;
  *(v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_forceAskToBuyReason) = 2;
  *(v67 + OBJC_IVAR____TtC12GameStoreKit11OfferAction_buyCompletedAction) = 0;
  v73 = v61[2];
  v252 = 0;
  v250 = 0u;
  v251 = 0u;
  v199 = v61 + 2;
  v198 = v73;
  v73(v54, v66, v236);
  v74 = sub_24F929608();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v232 = v74;
  v231 = v76;
  v230 = v75 + 56;
  (v76)(v71, 1, 1);
  v77 = (v67 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v77 = 0u;
  v77[1] = 0u;
  sub_24E60169C(&v250, &v244, &qword_27F235830, &qword_24F93B8C0);
  v235 = v60;
  if (*(&v245 + 1))
  {
    v247 = v244;
    v248 = v245;
    v249 = v246;
    v78 = v225;
  }

  else
  {
    v79 = v219;
    sub_24F91F6A8();
    v80 = v54;
    v81 = sub_24F91F668();
    v83 = v82;
    v78 = v225;
    (*(v220 + 8))(v79, v225);
    v242 = v81;
    v54 = v80;
    v243 = v83;
    sub_24F92C7F8();
    sub_24E601704(&v244, &qword_27F235830, &qword_24F93B8C0);
    v60 = v235;
  }

  sub_24E601704(&v250, &qword_27F235830, &qword_24F93B8C0);
  v84 = v61[1];
  v85 = v236;
  v216 = (v61 + 1);
  v197 = v84;
  v84(v66, v236);
  __swift_destroy_boxed_opaque_existential_1(&v253);
  v86 = v67 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v87 = v248;
  *v86 = v247;
  *(v86 + 1) = v87;
  *(v86 + 4) = v249;
  sub_24E6009C8(v71, v67 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v88 = object;
  v67[2] = countAndFlagsBits;
  v67[3] = v88;
  v67[4] = 0;
  v67[5] = 0;
  v91 = v61[4];
  v89 = (v61 + 4);
  v90 = v91;
  v91(v67 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v54, v85);
  v92 = v228;
  if (v234)
  {
    v229 = v89;
    v93._countAndFlagsBits = 0xD000000000000018;
    v93._object = 0x800000024FA59DB0;
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    v95 = localizedString(_:comment:)(v93, v94);
    v217 = v95._countAndFlagsBits;
    type metadata accessor for UnhideAppAction(0);
    v96 = swift_allocObject();
    *(v96 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_isHidden) = 1;
    v97 = (v96 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_appAdamId);
    *v97 = v237;
    v97[1] = v60;
    *(v96 + OBJC_IVAR____TtC12GameStoreKit15UnhideAppAction_offerAction) = v67;
    v252 = 0;
    v250 = 0u;
    v251 = 0u;

    sub_24F928A98();
    v98 = v211;
    v231(v211, 1, 1, v232);
    v234 = v96;
    v99 = (v96 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v99 = 0u;
    v99[1] = 0u;
    sub_24E60169C(&v250, &v244, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v245 + 1))
    {
      v247 = v244;
      v248 = v245;
      v249 = v246;
    }

    else
    {
      v100 = v219;
      sub_24F91F6A8();
      v101 = sub_24F91F668();
      v103 = v102;
      v104 = v100;
      v98 = v211;
      (*(v220 + 8))(v104, v78);
      *&v253 = v101;
      *(&v253 + 1) = v103;
      sub_24F92C7F8();
      sub_24E601704(&v244, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(&v250, &qword_27F235830, &qword_24F93B8C0);
    v105 = v234;
    v106 = v234 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v107 = v248;
    *v106 = v247;
    *(v106 + 16) = v107;
    *(v106 + 32) = v249;
    sub_24E6009C8(v98, &v105[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68, &unk_24F93BC80);
    *(v105 + 2) = v217;
    *(v105 + 3) = v95._object;
    *(v105 + 4) = 0;
    *(v105 + 5) = 0;
    v90(&v105[OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics], v218, v236);
  }

  else
  {
    v234 = v67;
  }

  v108 = v233;
  v109 = [v233 bundleID];
  v110 = sub_24F92B0D8();
  v112 = v111;

  if ([v108 is32BitOnly])
  {
    v113 = 5;
  }

  else
  {
    v114 = [v108 requiredCapabilities];
    if (v114)
    {
      v115 = v114;
      sub_24F92B5A8();
    }

    v116 = objc_opt_self();
    v117 = sub_24F92B588();

    v118 = [v116 hasCapabilities_];

    if (v118)
    {
      v113 = 0;
    }

    else
    {
      v113 = 5;
    }
  }

  v119 = [v108 contentRatingFlags];
  v120 = sub_24ECD368C(v108);
  v121 = MEMORY[0x277D84F90];
  v122 = sub_24E60C36C(MEMORY[0x277D84F90]);
  v123 = sub_24E60C36C(v121);
  v124 = sub_24E60C36C(v121);
  type metadata accessor for OfferDisplayProperties();
  v125 = swift_allocObject();
  *(v125 + 16) = 0;
  v126 = v235;
  *(v125 + 24) = v237;
  *(v125 + 32) = v126;
  *(v125 + 40) = v110;
  *(v125 + 48) = v112;
  *(v125 + 56) = 0;
  *(v125 + 64) = 0;
  *(v125 + 72) = v122;
  *(v125 + 80) = v123;
  *(v125 + 88) = v124;
  *(v125 + 96) = v113;
  *(v125 + 97) = 0;
  *(v125 + 104) = 0;
  *(v125 + 112) = 0;
  *(v125 + 119) = 0;
  *(v125 + 128) = v119;
  *(v125 + 136) = 0;
  *(v125 + 144) = 0u;
  *(v125 + 160) = 0u;
  *(v125 + 176) = 0u;
  *(v125 + 192) = 0u;
  *(v125 + 208) = 0;
  *(v125 + 216) = 0;
  *(v125 + 224) = 0;
  *(v125 + 232) = 0;
  *(v125 + 240) = v120;
  if (v92)
  {
    v127 = qword_27F210C10;

    if (v127 != -1)
    {
      swift_once();
    }

    v128 = v200;
    sub_24F92A3B8();
    v129 = v202;
    sub_24F92A408();

    (*(v201 + 8))(v128, v129);
    v130 = v250;
  }

  else
  {
    v130 = 0;
  }

  v131 = v233;
  v132 = v235;
  v229 = sub_24ECD2530(v233, v130);
  if (v229)
  {
    v133 = sub_24F929D18();
    v135 = v134;
    v252 = 0;
    v250 = 0u;
    v251 = 0u;
    *&v247 = 0;
    *(&v247 + 1) = 0xE000000000000000;
    sub_24F92C888();

    *&v247 = 0xD00000000000001BLL;
    *(&v247 + 1) = 0x800000024FA59D70;
    MEMORY[0x253050C20](v237, v132);

    MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA59D90);
    v136 = v222;
    sub_24F91F488();

    v253 = 0u;
    v254 = 0u;
    v137 = v221;
    sub_24F928A98();
    type metadata accessor for FlowAction(0);
    v138 = swift_allocObject();
    *(v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v139 = v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v139 = 0u;
    *(v139 + 16) = 0u;
    *(v139 + 32) = 0;
    v140 = (v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v140 = 0;
    v140[1] = 0;
    *(v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 1;
    sub_24E60169C(v136, v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v141 = (v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v141 = 0;
    v141[1] = 0;
    v142 = v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v142 = xmmword_24F9406F0;
    *(v142 + 24) = 0;
    *(v142 + 32) = 0;
    *(v142 + 16) = 0;
    *(v142 + 40) = 0;
    *(v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 2;
    *(v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v143 = (v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v143 = v133;
    v143[1] = v135;
    sub_24E60169C(&v250, &v247, &qword_27F235830, &qword_24F93B8C0);
    v198(v138 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v137, v236);
    v231((v138 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics), 1, 1, v232);
    v144 = (v138 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v144 = 0u;
    v144[1] = 0u;
    v145 = v138 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    sub_24E60169C(&v247, &v244, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v245 + 1))
    {
      v146 = v245;
      *v145 = v244;
      *(v145 + 16) = v146;
      *(v145 + 32) = v246;
    }

    else
    {
      v148 = v219;
      sub_24F91F6A8();
      v149 = sub_24F91F668();
      v151 = v150;
      (*(v220 + 8))(v148, v225);
      v242 = v149;
      v243 = v151;
      sub_24F92C7F8();
      sub_24E601704(&v244, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(&v247, &qword_27F235830, &qword_24F93B8C0);
    *(v138 + 16) = 0u;
    *(v138 + 32) = 0u;

    FlowAction.setPageData(_:)(&v253);

    v197(v221, v236);
    sub_24E601704(&v253, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v222, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(&v250, &qword_27F235830, &qword_24F93B8C0);

    v152 = [v131 bundleID];
    v236 = sub_24F92B0D8();
    v222 = v153;

    swift_retain_n();

    v154 = v223;
    sub_24F928808();
    type metadata accessor for ProductPage(0);
    v155 = swift_allocObject();
    v156 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_media;
    v157 = MEMORY[0x277D84F90];
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_media) = MEMORY[0x277D84F90];
    v158 = OBJC_IVAR____TtC12GameStoreKit11ProductPage_shelfMapping;

    *(v155 + v158) = sub_24E609890(v157);
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_shareAction) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_developerAction) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_ageRatingAction) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtwork) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberArtworkForCompactDisplay) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberVideo) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_uberStyle) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_logoArtwork) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_navigationBarIconArtwork) = 0;
    swift_beginAccess();
    *(v155 + v156) = v157;

    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_badges) = v157;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_isComplete) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageTopBackgroundColor) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageBottomBackgroundColor) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_hasDarkUserInterfaceStyle) = 2;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_purchasedOrdering) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_notPurchasedOrdering) = 0;
    v159 = sub_24E609890(v157);
    swift_beginAccess();
    *(v155 + v158) = v159;

    v160 = v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_askToBuy;
    *v160 = 0u;
    *(v160 + 16) = 0u;
    *(v160 + 32) = 0u;
    *(v160 + 48) = 0;
    v161 = (v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_mediaSectionTitle);
    *v161 = 0;
    v161[1] = 0;
    v162 = v212;
    v163 = v204;
    (*(v212 + 16))(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageMetrics, v154, v204);
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRenderEvent) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_expandedOfferDetails) = 0;
    v164 = (v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_regularPriceFormatted);
    *v164 = 0;
    v164[1] = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_theme) = 0;
    v165 = v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_externalVersionIdentifier;
    *(v165 + 8) = 1;
    *v165 = 0;
    v166 = (v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_updateBuyParams);
    *v166 = 0;
    v166[1] = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_titleOfferDisplayProperties) = v125;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_banner) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_secondaryBanner) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_fullProductFetchedAction) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_appPromotionDetailPageAction) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_pageRefreshPolicy) = 0;
    *(v155 + OBJC_IVAR____TtC12GameStoreKit11ProductPage_alwaysAllowReviews) = 0;
    v252 = 0;
    v250 = 0u;
    v251 = 0u;
    v167 = v203;
    v231(v203, 1, 1, v232);
    *(v155 + 424) = 4;
    sub_24E60169C(&v250, &v244, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v245 + 1))
    {
      v247 = v244;
      v248 = v245;
      v249 = v246;
    }

    else
    {

      v168 = v219;
      sub_24F91F6A8();
      v169 = sub_24F91F668();
      v171 = v170;
      (*(v220 + 8))(v168, v225);
      v240 = v169;
      v241 = v171;
      v162 = v212;
      sub_24F92C7F8();
      sub_24E601704(&v244, &qword_27F235830, &qword_24F93B8C0);
    }

    v172 = v248;
    *(v155 + 448) = v247;
    *(v155 + 464) = v172;
    *(v155 + 480) = v249;
    sub_24E60169C(v167, v155 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
    v173 = v235;
    *(v155 + 16) = v237;
    *(v155 + 24) = v173;
    v174 = v222;
    *(v155 + 32) = v236;
    *(v155 + 40) = v174;
    *(v155 + 48) = v229;
    *(v155 + 56) = 0;
    *(v155 + 64) = 0u;
    *(v155 + 80) = 0u;
    v175 = v226;
    *(v155 + 96) = v224;
    *(v155 + 104) = v175;
    *(v155 + 120) = 0;
    *(v155 + 128) = 0;
    *(v155 + 112) = 0;
    *(v155 + 136) = 2;
    *(v155 + 144) = 0;
    *(v155 + 152) = 0;
    *(v155 + 216) = 0u;
    *(v155 + 200) = 0u;
    *(v155 + 184) = 0u;
    *(v155 + 376) = 0u;
    *(v155 + 392) = 0u;
    *(v155 + 408) = 0x8000;
    *(v155 + 360) = 0;
    *(v155 + 416) = 0;
    *(v155 + 432) = MEMORY[0x277D84FA0];
    *(v155 + 168) = 0;
    *(v155 + 176) = 0;
    *(v155 + 160) = 0;
    *(v155 + 248) = 0;
    *(v155 + 256) = 0;
    *(v155 + 232) = v234;
    *(v155 + 240) = v125;
    *(v155 + 264) = 0u;
    *(v155 + 280) = 0u;
    *(v155 + 296) = 0u;
    *(v155 + 312) = 0u;
    *(v155 + 328) = 0u;

    sub_24E601704(v167, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(&v250, &qword_27F235830, &qword_24F93B8C0);
    (*(v162 + 8))(v223, v163);
    *(v155 + 344) = MEMORY[0x277D84F90];
    *(v155 + 352) = 0;
    *(v155 + 440) = 0;
    *(v155 + 368) = 0;

    v177 = _s12GameStoreKit21ShelfBasedProductPageC4fromACSgAA0fG0CSg_tcfC_0(v176);
    v178 = v177;
    if (v177)
    {
      v177 = type metadata accessor for ShelfBasedProductPage(0);
    }

    else
    {
      *(&v250 + 1) = 0;
      *&v251 = 0;
    }

    *&v250 = v178;
    *(&v251 + 1) = v177;
    FlowAction.setPageData(_:)(&v250);
    sub_24E601704(&v250, &qword_27F2129B0, &unk_24F945320);
    v179 = (v138 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    swift_beginAccess();
    v180 = v206;
    *v179 = v227;
    v179[1] = v180;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v181 = v233;
    v182 = [v233 datePurchased];
    v183 = v207;
    sub_24F91F608();

    v185 = sub_24EE59294(v183, v184);
    v187 = v186;
    (*(v208 + 8))(v183, v209);
    if (v187)
    {
      v236 = v185;
      v225 = v187;
    }

    else
    {
      v188 = [v181 developerName];
      v236 = sub_24F92B0D8();
      v225 = v189;
    }

    v252 = 0;
    v250 = 0u;
    v251 = 0u;
    v240 = v237;
    v241 = v173;
    v190 = [v181 bundleID];
    v237 = sub_24F92B0D8();
    v235 = v191;

    v239 = 2;
    v192 = v229;
    v193 = sub_24ECD2C04(v181, v229);
    v194 = v205;
    v231(v205, 1, 1, v232);
    v247 = 0u;
    v248 = 0u;
    LOWORD(v249) = 0x8000;
    v238 = 0;
    v195 = *(v210 + 392);

    v147 = v195(&v250, &v240, v237, v235, v192, 0, 0, 0, v224, v226, v236, v225, 0, &v239, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v247, 0, v234, v125, v138, 0, 0, 0, 0, 0, 0, 0, 0, 0, MEMORY[0x277D84F90], &v238, 0, v193, MEMORY[0x277D84FA0], 0, v194, 0);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    return 0;
  }

  return v147;
}

uint64_t sub_24ECD5680(void *a1, uint64_t a2)
{
  if ([a1 hasMessagesExtension])
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (!v5)
    {
LABEL_8:
      v11 = [a1 isHiddenFromSpringboard];
      goto LABEL_12;
    }

    v6 = sub_24F92B0D8();
    v8 = v7;

    if (v6 == 0xD000000000000013 && 0x800000024FA59DD0 == v8)
    {
    }

    else
    {
      v10 = sub_24F92CE08();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  [a1 storeItemID];
  v12 = sub_24F92CD88();
  v14 = v13;
  v15 = [a1 longTitle];
  v16 = sub_24F92B0D8();
  v18 = v17;

  v19 = [a1 genreName];
  v20 = sub_24F92B0D8();
  v22 = v21;

  if (v11)
  {

    v23 = a2;
  }

  else
  {
    v23 = 0;
  }

  type metadata accessor for ShareSheetProductMetadata();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = v14;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = v16;
  *(result + 56) = v18;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = v20;
  *(result + 88) = v22;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = a2;
  *(result + 120) = v11;
  *(result + 128) = v23;
  *(result + 136) = 0;
  return result;
}

void *NestedCollectionViewImpressionsCoordinator.__allocating_init(collectionView:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  result[3] = a1;
  result[4] = v3;
  result[2] = 0;
  return result;
}

void *NestedCollectionViewImpressionsCoordinator.init(collectionView:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v1[3] = a1;
  v1[4] = v2;
  v1[2] = 0;
  return v1;
}

double sub_24ECD58E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  swift_retain_n();

  if (v2)
  {
    sub_24ECD606C();
  }

  return result;
}

double sub_24ECD5958(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  if (a1)
  {
    sub_24ECD606C();
  }

  return result;
}

double (*sub_24ECD59C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ECD5A18;
}

double sub_24ECD5A18(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0 && *(*(a1 + 24) + 16))
  {

    sub_24ECD606C();
  }

  return result;
}

uint64_t sub_24ECD5A7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

double sub_24ECD5ADC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24ECD5B14(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_24ECD5B5C()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x277D84F90];
}

uint64_t sub_24ECD5BDC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5 + 40;
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v11 = sub_24F91FA08();
  result = swift_beginAccess();
  v13 = *(v2 + 32);
  if (v11 < *(v13 + 16))
  {
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_24E615E00(v13 + 40 * v11 + 32, v19);
      __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      sub_24F92ADC8();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_24EB05BC8(v6);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        swift_beginAccess();
        if (*(v2 + 16))
        {

          [a1 frame];
          ImpressionsCalculator.addElement(_:at:)(v10, v14, v15, v16, v17);
        }

        (*(v8 + 8))(v10, v7);
      }

      return __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  return result;
}

uint64_t sub_24ECD5E0C(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_24F929608();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_24EB05BC8(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  if (*(v3 + 16))
  {

    [a2 frame];
    ImpressionsCalculator.addElement(_:at:)(v12, v14, v15, v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t NestedCollectionViewImpressionsCoordinator.deinit()
{

  return v0;
}

uint64_t NestedCollectionViewImpressionsCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24ECD606C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = v34 - v3;
  v4 = sub_24F929608();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91FA78();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1[3];
  v13 = [v44 indexPathsForVisibleItems];
  v14 = sub_24F92B5A8();

  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v34[1] = v15;
    v18 = v15 + v17;
    swift_beginAccess();
    swift_beginAccess();
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v42 = (v19 - 8);
    v43 = v20;
    v36 = (v5 + 32);
    v37 = (v5 + 48);
    v41 = *(v19 + 56);
    v35 = (v5 + 8);
    v38 = v19;
    v39 = v8;
    v20(v12, v18, v8);
    while (1)
    {
      v21 = sub_24F91F9D8();
      v22 = [v44 cellForItemAtIndexPath_];

      result = sub_24F91FA08();
      v24 = v1[4];
      if (result >= *(v24 + 16))
      {

        (*v42)(v12, v8);
      }

      else
      {
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        sub_24E615E00(v24 + 40 * result + 32, v45);
        if (v22)
        {
          v25 = v7;
          __swift_project_boxed_opaque_existential_1(v45, v45[3]);
          v26 = v4;
          v27 = v40;
          sub_24F92ADC8();
          v28 = v27;
          v4 = v26;
          if ((*v37)(v28, 1, v26) == 1)
          {

            v29 = v39;
            (*v42)(v12, v39);
            sub_24EB05BC8(v28);
            v8 = v29;
            v7 = v25;
          }

          else
          {
            v7 = v25;
            (*v36)(v25, v28, v4);
            if (v1[2])
            {

              [v22 frame];
              ImpressionsCalculator.addElement(_:at:)(v25, v30, v31, v32, v33);
            }

            else
            {
            }

            (*v35)(v25, v4);
            v8 = v39;
            (*v42)(v12, v39);
          }
        }

        else
        {
          (*v42)(v12, v8);
        }

        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v18 += v41;
      if (!--v16)
      {
      }

      v43(v12, v18, v8);
    }
  }
}

uint64_t sub_24ECD6500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

double sub_24ECD6550@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);

  return result;
}

__n128 SegmentBubbleLayout.init(primaryText:metrics:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_24E612C80(a1, v11);
  v5 = *a2;
  *&v12[24] = a2[1];
  v6 = a2[3];
  *&v12[40] = a2[2];
  *&v12[56] = v6;
  *&v12[72] = *(a2 + 8);
  *&v12[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D700, &qword_24F995490);
  v7 = swift_allocObject();
  v8 = *&v12[48];
  *(v7 + 80) = *&v12[32];
  *(v7 + 96) = v8;
  *(v7 + 112) = *&v12[64];
  v9 = v11[1];
  *(v7 + 16) = v11[0];
  *(v7 + 32) = v9;
  result = *&v12[16];
  *(v7 + 48) = *v12;
  *(v7 + 64) = result;
  *a3 = v7;
  return result;
}

uint64_t SegmentBubbleLayout.primaryText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E615E00(v3 + 16, a1);
}

void SegmentBubbleLayout.primaryText.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24ECD690C(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_24E612C80(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24ECD6944(v9, v4 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D700, &qword_24F995490);
    v5 = swift_allocObject();
    v6 = v9[5];
    v5[5] = v9[4];
    v5[6] = v6;
    v5[7] = v9[6];
    v7 = v9[1];
    v5[1] = v9[0];
    v5[2] = v7;
    v8 = v9[3];
    v5[3] = v9[2];
    v5[4] = v8;

    *v1 = v5;
  }
}

void (*SegmentBubbleLayout.primaryText.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24E615E00(v5 + 16, v4);
  return sub_24ECD6A10;
}

void sub_24ECD6A10(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24E615E00(*a1, v2 + 40);
    SegmentBubbleLayout.primaryText.setter((v2 + 40));
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    SegmentBubbleLayout.primaryText.setter(*a1);
  }

  free(v2);
}

uint64_t SegmentBubbleLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24ECD6AC4(v3 + 56, a1);
}

void SegmentBubbleLayout.metrics.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_24ECD690C(v3 + 16, v9);
  sub_24ECD6BEC(a1, v10 + 8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_24ECD6944(v9, v4 + 16);
    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D700, &qword_24F995490);
    v5 = swift_allocObject();
    v6 = v10[3];
    v5[5] = v10[2];
    v5[6] = v6;
    v5[7] = v10[4];
    v7 = v9[1];
    v5[1] = v9[0];
    v5[2] = v7;
    v8 = v10[1];
    v5[3] = v10[0];
    v5[4] = v8;

    *v1 = v5;
  }
}

void (*SegmentBubbleLayout.metrics.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_24ECD6AC4(v5 + 56, v4);
  return sub_24ECD6CB8;
}

void sub_24ECD6CB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_24ECD6AC4(*a1, v2 + 72);
    SegmentBubbleLayout.metrics.setter(v2 + 72);
    sub_24ECD6D20(v2);
  }

  else
  {
    SegmentBubbleLayout.metrics.setter(*a1);
  }

  free(v2);
}

double SegmentBubbleLayout.measurements(fitting:in:)(uint64_t a1, double a2)
{
  v3 = sub_24F92CDB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 104);
  v9 = *(v7 + 120);
  sub_24ECD6AC4(v7 + 56, v14);
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_24E8ED7D8(v10);
  sub_24F9223A8();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_24E615E00(v7 + 16, v14);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_24F922288();
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v9 + v8 + v12;
}

uint64_t SegmentBubbleLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v13[5] = a5;
  *&v13[1] = a4;
  *&v13[4] = a3;
  *&v13[3] = a2;
  v6 = sub_24F92CDB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v5;
  swift_beginAccess();
  v13[2] = *(v10 + 120);
  sub_24ECD6AC4(v10 + 56, v14);
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_24E8ED7D8(v11);
  sub_24F9223A8();
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_24E615E00(v10 + 16, v14);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_24F922288();
  sub_24F92BDF8();
  __swift_destroy_boxed_opaque_existential_1(v14);
  sub_24E615E00(v10 + 16, v14);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return sub_24F922138();
}

uint64_t SegmentBubbleLayout.Metrics.init(bubbleHeight:layoutMargins:)@<X0>(__int128 *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  result = sub_24E612C80(a1, a2);
  a2[5] = a3;
  a2[6] = a4;
  a2[7] = a5;
  a2[8] = a6;
  return result;
}

uint64_t sub_24ECD7224@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24E615E00(v3 + 16, a2);
}

uint64_t sub_24ECD72A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_24ECD6AC4(v3 + 56, a2);
}

uint64_t sub_24ECD734C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ECD7394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ECD7400()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D708);
  __swift_project_value_buffer(v4, qword_27F22D708);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD7554()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E74EC40();
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F22D720 = result;
  return result;
}

double sub_24ECD77A4()
{
  result = 0.5;
  __asm { FMOV            V1.2D, #1.0 }

  xmmword_27F22D728 = _Q1;
  unk_27F22D738 = xmmword_24F995580;
  return result;
}

id PlaybackCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackCoordinator.init()()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_24E60EABC(MEMORY[0x277D84F90]);
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds] = MEMORY[0x277D84FA0];
  v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive] = 1;
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackCoalescingWaitTime] = 0x3FB999999999999ALL;
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackWorkItem] = 0;
  if (qword_27F210558 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v3 = swift_allocObject();
  v10 = unk_27F22D738;
  v11 = xmmword_27F22D728;
  *(v3 + 48) = sub_24E60EA98(v2);
  *(v3 + 56) = v2;
  *(v3 + 64) = v2;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v11;
  *(v3 + 32) = v10;
  *&v0[OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker] = v3;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PlaybackCoordinator();
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v8 = [v5 defaultCenter];
  [v8 addObserver:v6 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

  return v6;
}

uint64_t sub_24ECD7A1C(uint64_t a1)
{
  v2 = v1;
  swift_unknownObjectWeakAssign();
  if (qword_27F210558 != -1)
  {
    swift_once();
  }

  type metadata accessor for PlayableViewVisibilityTracker();
  v3 = swift_allocObject();
  v8 = unk_27F22D738;
  v9 = xmmword_27F22D728;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 48) = sub_24E60EA98(MEMORY[0x277D84F90]);
  *(v3 + 56) = v4;
  *(v3 + 64) = v4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v9;
  *(v3 + 32) = v8;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker) = v3;

  sub_24EEDBA34();
  v5 = *(v3 + 64);

  v6 = sub_24F45DA90(v5);

  *(v2 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v6;
}

void sub_24ECD7B64()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(v2 + 56) + ((v8 << 10) | (16 * v9));
    v11 = *v10;
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 40);
    v15 = v11;
    v14(ObjectType, v12);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_24ECD7CBC()
{
  v1 = sub_24F927DE8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_24F927D88();
  MEMORY[0x28223BE20](v8);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) == 1 && *(*(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) + 16))
  {
    v16 = v2;
    v17 = v1;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_24ECD9020;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_68;
    v15 = _Block_copy(aBlock);
    v18 = MEMORY[0x277D84F90];
    sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    sub_24F92C6A8();
    sub_24F927E28();
    swift_allocObject();
    v10 = sub_24F927E08();

    v11 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackWorkItem;
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playbackWorkItem))
    {

      sub_24F927E18();
    }

    *(v0 + v11) = v10;

    v13 = v16;
    v12 = v17;
    if (qword_27F210550 != -1)
    {
      swift_once();
    }

    sub_24F927DD8();
    sub_24F927E58();
    v14 = *(v13 + 8);
    v14(v4, v12);
    if (*(v0 + v11))
    {

      sub_24F92BEA8();

      v14(v7, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24ECD8058(uint64_t a1)
{
  v2 = sub_24F927D88();
  v12 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F927DC8();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E74EC40();
  v8 = sub_24F92BEF8();
  aBlock[4] = sub_24ECD91FC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_26_0;
  v9 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E9BFCB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v9);
  _Block_release(v9);

  (*(v12 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v11);
}

void sub_24ECD8314(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v56 = Strong;
  if (*(Strong + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) != 1)
  {
    v35 = *(Strong + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds);
    v36 = 1 << *(v35 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v35 + 56);
    v39 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;

    swift_beginAccess();
    v40 = 0;
    v41 = (v36 + 63) >> 6;
    if (v38)
    {
      goto LABEL_42;
    }

    do
    {
LABEL_38:
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v42 >= v41)
      {

        return;
      }

      v38 = *(v35 + 56 + 8 * v42);
      ++v40;
    }

    while (!v38);
    v40 = v42;
    while (1)
    {
LABEL_42:
      v43 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      sub_24E65864C(*(v35 + 48) + 40 * (v43 | (v40 << 6)), &v59);
      v58 = *&v60[1];
      v57[0] = v59;
      v57[1] = v60[0];
      v44 = *&v56[v39];
      if (!*(v44 + 16))
      {
        goto LABEL_37;
      }

      v45 = sub_24E76D934(v57);
      if (v46)
      {
        v47 = *(v44 + 56) + 16 * v45;
        v48 = *(v47 + 8);
        v49 = *v47;
        sub_24E6585F8(v57);

        ObjectType = swift_getObjectType();
        (*(v48 + 40))(ObjectType, v48);

        if (!v38)
        {
          goto LABEL_38;
        }
      }

      else
      {

LABEL_37:
        sub_24E6585F8(v57);
        if (!v38)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v3 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_playableViews;
  swift_beginAccess();
  v4 = *&v2[v3];
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*&v2[v3] + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v55 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds;
  v11 = (v8 + 63) >> 6;
  v52 = *&v2[v3];

  v12 = 0;
  v51 = v11;
  while (v10)
  {
    v13 = v12;
LABEL_13:
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    sub_24E65864C(*(v52 + 48) + 40 * v14, &v59);
    v15 = *(v52 + 56) + 16 * v14;
    v16 = *(v15 + 8);
    v17 = *&v60[0];
    v53 = *(v60 + 8);
    v54 = v59;
    v18 = *(&v60[0] + 1);
    v19 = *v15;
    if (!v18)
    {
LABEL_46:

      return;
    }

    v20 = v19;
    v10 &= v10 - 1;
    v59 = v54;
    *&v60[0] = v17;
    *(v60 + 8) = v53;
    v21 = *&v2[v55];
    if (!*(v21 + 16))
    {
      goto LABEL_20;
    }

    v22 = sub_24F92C7B8();
    v23 = -1 << *(v21 + 32);
    v24 = v22 & ~v23;
    if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
LABEL_19:

      v2 = v56;
      v11 = v51;
      goto LABEL_20;
    }

    v25 = ~v23;
    while (1)
    {
      sub_24E65864C(*(v21 + 48) + 40 * v24, v57);
      v26 = MEMORY[0x253052150](v57, &v59);
      sub_24E6585F8(v57);
      if (v26)
      {
        break;
      }

      v24 = (v24 + 1) & v25;
      if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v34 = swift_getObjectType();
    v2 = v56;
    v11 = v51;
    if ((*(v16 + 16))(v34, v16))
    {
LABEL_20:
      v27 = *&v2[v55];
      if (!*(v27 + 16))
      {
        goto LABEL_26;
      }

      v28 = sub_24F92C7B8();
      v29 = -1 << *(v27 + 32);
      v30 = v28 & ~v29;
      if ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        while (1)
        {
          sub_24E65864C(*(v27 + 48) + 40 * v30, v57);
          v32 = MEMORY[0x253052150](v57, &v59);
          sub_24E6585F8(v57);
          if (v32)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        sub_24E6585F8(&v59);
        v12 = v13;
        v2 = v56;
        v11 = v51;
      }

      else
      {
LABEL_25:

        v2 = v56;
        v11 = v51;
LABEL_26:
        v33 = swift_getObjectType();
        if ((*(v16 + 16))(v33, v16))
        {
          (*(v16 + 40))(v33, v16);
          goto LABEL_30;
        }

        sub_24E6585F8(&v59);

        v12 = v13;
      }
    }

    else
    {
      (*(v16 + 32))(v34, v16);
LABEL_30:

      sub_24E6585F8(&v59);
      v12 = v13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_46;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_13;
    }
  }

LABEL_50:
  __break(1u);
}

void sub_24ECD8864(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 8);
    v8 = a1;
    v7(v15, ObjectType, a2);
    swift_beginAccess();
    v9 = v8;
    sub_24E989B28(a1, a2, v15);
    swift_endAccess();
    v10 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker;
    memset(v15, 0, sizeof(v15));
    v16 = 1;

    sub_24EED9160(a1, a2, v15);

    v11 = *(v3 + v10);

    sub_24EEDBA34();
    v12 = *(v11 + 64);

    v13 = sub_24F45DA90(v12);

    *(v3 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v13;

    sub_24ECD7CBC();
  }

  else
  {
    if (qword_27F210548 != -1)
    {
      swift_once();
    }

    v14 = sub_24F92AAE8();
    __swift_project_value_buffer(v14, qword_27F22D708);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5B8();
  }
}

void sub_24ECD8AF0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);
    v8 = a1;
    if (v7(ObjectType, a2))
    {
      (*(a2 + 40))(ObjectType, a2);
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker;
    v10 = *(a2 + 8);
    v11 = v8;

    v10(v16, ObjectType, a2);
    swift_beginAccess();
    sub_24EB443C0(v16);
    sub_24E6585F8(v16);
    swift_endAccess();

    v12 = *(v3 + v9);

    sub_24EEDBA34();
    v13 = *(v12 + 64);

    v14 = sub_24F45DA90(v13);

    *(v3 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v14;

    sub_24ECD7CBC();
    v10(v16, ObjectType, a2);
    swift_beginAccess();
    v15 = sub_24EB443D8(v16);
    sub_24E6585F8(v16);
    swift_endAccess();
  }
}

void sub_24ECD8CD4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visibilityTracker);

  sub_24EEDBA34();
  v3 = *(v2 + 64);

  v4 = sub_24F45DA90(v3);

  *(v1 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_visiblePlayableIds) = v4;

  sub_24ECD7CBC();
}

void sub_24ECD8DA8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_10:
    sub_24E857CC8(&v7);
    return;
  }

  v2 = Strong;
  v3 = sub_24F92B098();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    if (v5 == 2)
    {
      *(v0 + OBJC_IVAR____TtC12GameStoreKit19PlaybackCoordinator_isActive) = 1;
      sub_24ECD7CBC();
    }
  }
}

id PlaybackCoordinator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24ECD8FE8()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CollectionPresenterViewUpdate(uint64_t a1)
{
  result = qword_27F22D780;
  if (!qword_27F22D780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ECD9258(uint64_t a1, __n128 a2)
{
  sub_24ECD931C(319, a2);
  if (v2 <= 0x3F)
  {
    sub_24ECD9384(319, &qword_27F22D798, MEMORY[0x277CC9AF8]);
    if (v3 <= 0x3F)
    {
      sub_24ECD9384(319, &qword_27F22D7A0, sub_24ECD93D0);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24ECD931C(uint64_t a1, __n128 a2)
{
  if (!qword_27F22D790)
  {
    sub_24F91FA78();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F22D790);
    }
  }
}

void sub_24ECD9384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24ECD93D0()
{
  if (!qword_27F22D7A8)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22D7A8);
    }
  }
}

uint64_t sub_24ECD9434()
{
  v0 = sub_24F92AAB8();
  __swift_allocate_value_buffer(v0, qword_27F39C380);
  __swift_project_value_buffer(v0, qword_27F39C380);
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_27F22B5B8;
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_24F92B0D8();
  }

  return sub_24F92AAC8();
}

uint64_t sub_24ECD9620()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C428);
  __swift_project_value_buffer(v4, qword_27F39C428);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD97E0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D7B0);
  __swift_project_value_buffer(v4, qword_27F22D7B0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD9958()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F22D7C8);
  __swift_project_value_buffer(v4, qword_27F22D7C8);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD9B60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_24F92AAE8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_24ECD9C24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24F92AAB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_27F39C380);
  (*(v6 + 16))(v8, v10, v5);
  return sub_24F92AAD8();
}

uint64_t sub_24ECD9D74()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39C4A0);
  __swift_project_value_buffer(v4, qword_27F39C4A0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t SearchResultsPage.__allocating_init(shelves:unavailableReason:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:searchClearAction:searchCancelAction:context:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  LODWORD(v79) = a8;
  LODWORD(v78) = a7;
  v75 = a5;
  v88 = a18;
  v86 = a3;
  v87 = a17;
  v89 = a16;
  v90 = a6;
  v91 = a15;
  v92 = a14;
  v81 = a13;
  v82 = a19;
  v93 = a12;
  v85 = a9;
  v76 = a10;
  v77 = a11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v84 = &v72 - v25;
  MEMORY[0x28223BE20](v26);
  v80 = &v72 - v27;
  v83 = sub_24F928818();
  v28 = *(v83 - 8);
  MEMORY[0x28223BE20](v83 - 8);
  v94 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v31 = *(a2 + 32);
  v32 = *(a2 + 40);
  v74 = *a4;
  v33 = *(a4 + 2);
  v34 = *(a4 + 24);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete) = 0;
  v35 = sub_24EEF0A68(a1);
  v37 = v36;

  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering) = v35;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping) = v37;
  v38 = v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason;
  v39 = *(a2 + 16);
  v40 = v82;
  *v38 = *a2;
  *(v38 + 16) = v39;
  *(v38 + 32) = v31;
  *(v38 + 40) = v32;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message) = v86;
  v41 = v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  *v41 = v74;
  *(v41 + 16) = v33;
  *(v41 + 24) = v34;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions) = v75;
  sub_24E60169C(v90, v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled) = v78;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v79;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink) = v85;
  v42 = v77;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens) = v76;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries) = v42;
  sub_24E60169C(v92, v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v91, v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v43 = v88;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction) = v87;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction) = v43;
  v79 = v28;
  v44 = *(v28 + 16);
  v45 = v94;
  v46 = v83;
  v44(v94, v93, v83);
  v47 = v40;
  v48 = v40;
  v49 = v46;
  v50 = v80;
  sub_24E60169C(v48, v80, &qword_27F2218B0, &unk_24F975980);
  *(v30 + 16) = v89;
  v44((v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v45, v46);
  *(v30 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v81;
  v51 = v84;
  sub_24E60169C(v50, v84, &qword_27F2218B0, &unk_24F975980);
  v52 = sub_24F9285B8();
  v77 = *(v52 - 8);
  v78 = v52;
  v53 = *(v77 + 48);
  if ((v53)(v51, 1) == 1)
  {
    sub_24E601704(v47, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
    v54 = *(v79 + 8);
    v54(v93, v49);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v50, &qword_27F2218B0, &unk_24F975980);
    v54(v94, v49);
    v55 = v51;
  }

  else
  {
    v76 = v53;
    v56 = qword_27F2105F0;

    if (v56 != -1)
    {
      swift_once();
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v57, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v58 = v95;
    v60 = v77;
    v59 = v78;
    if (v95)
    {
    }

    v61 = *(v60 + 8);
    v61(v84, v59);
    if (!v58)
    {

      sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
      v67 = *(v79 + 8);
      v68 = v83;
      v67(v93, v83);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v50, &qword_27F2218B0, &unk_24F975980);
      v67(v94, v68);
      return v30;
    }

    v62 = v73;
    sub_24E60169C(v50, v73, &qword_27F2218B0, &unk_24F975980);
    v63 = v76(v62, 1, v59);
    v64 = v82;
    if (v63 != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
      v69 = *(v79 + 8);
      v70 = v83;
      v69(v93, v83);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
      v69(v94, v70);
      v61(v62, v59);
      return v30;
    }

    sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
    v65 = *(v79 + 8);
    v66 = v83;
    v65(v93, v83);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v80, &qword_27F2218B0, &unk_24F975980);
    v65(v94, v66);
    v55 = v62;
  }

  sub_24E601704(v55, &qword_27F2218B0, &unk_24F975980);
  return v30;
}

uint64_t SearchResultsPage.init(shelves:unavailableReason:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:searchClearAction:searchCancelAction:context:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  LODWORD(v81) = a8;
  LODWORD(v80) = a7;
  v76 = a5;
  v83 = a19;
  v88 = a18;
  v86 = a3;
  v87 = a17;
  v89 = a16;
  v90 = a6;
  v91 = a15;
  v92 = a14;
  v93 = a12;
  v78 = a11;
  v79 = a13;
  v85 = a9;
  v77 = a10;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v24 - 8);
  v72 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = &v71 - v27;
  MEMORY[0x28223BE20](v28);
  v82 = &v71 - v29;
  v30 = sub_24F928818();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 32);
  v35 = *(a2 + 40);
  v75 = *a4;
  v74 = *(a4 + 2);
  v73 = *(a4 + 24);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete) = 0;
  v36 = sub_24EEF0A68(a1);
  v38 = v37;

  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering) = v36;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping) = v38;
  v39 = v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason;
  v40 = *(a2 + 16);
  v41 = v83;
  *v39 = *a2;
  *(v39 + 16) = v40;
  *(v39 + 32) = v34;
  *(v39 + 40) = v35;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message) = v86;
  v42 = v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  *v42 = v75;
  *(v42 + 16) = v74;
  *(v42 + 24) = v73;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions) = v76;
  sub_24E60169C(v90, v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled) = v80;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v81;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink) = v85;
  v43 = v78;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens) = v77;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries) = v43;
  sub_24E60169C(v92, v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v91, v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v44 = v88;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction) = v87;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction) = v44;
  v81 = v31;
  v45 = *(v31 + 16);
  v45(v33, v93, v30);
  v46 = v41;
  v47 = v41;
  v48 = v82;
  sub_24E60169C(v47, v82, &qword_27F2218B0, &unk_24F975980);
  *(v20 + 16) = v89;
  v80 = v33;
  v45((v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v33, v30);
  *(v20 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v79;
  v49 = v84;
  sub_24E60169C(v48, v84, &qword_27F2218B0, &unk_24F975980);
  v50 = sub_24F9285B8();
  v77 = *(v50 - 8);
  v78 = v50;
  v51 = *(v77 + 48);
  if ((v51)(v49, 1) == 1)
  {
    sub_24E601704(v46, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
    v52 = *(v81 + 8);
    v52(v93, v30);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v48, &qword_27F2218B0, &unk_24F975980);
    v52(v80, v30);
    v53 = v49;
  }

  else
  {
    v54 = v48;
    v55 = qword_27F2105F0;

    if (v55 != -1)
    {
      swift_once();
    }

    v76 = v30;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v56, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v57 = v94;
    v59 = v77;
    v58 = v78;
    if (v94)
    {
    }

    v60 = *(v59 + 8);
    v60(v84, v58);
    if (!v57)
    {

      sub_24E601704(v83, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
      v66 = *(v81 + 8);
      v67 = v76;
      v66(v93, v76);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v54, &qword_27F2218B0, &unk_24F975980);
      v66(v80, v67);
      return v20;
    }

    v61 = v72;
    sub_24E60169C(v54, v72, &qword_27F2218B0, &unk_24F975980);
    v62 = v51(v61, 1, v58);
    v63 = v83;
    if (v62 != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v63, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
      v68 = *(v81 + 8);
      v69 = v76;
      v68(v93, v76);
      sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
      v68(v80, v69);
      v60(v61, v58);
      return v20;
    }

    sub_24E601704(v63, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v91, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v92, &qword_27F213E68, &unk_24F93BC80);
    v64 = *(v81 + 8);
    v65 = v76;
    v64(v93, v76);
    sub_24E601704(v90, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v82, &qword_27F2218B0, &unk_24F975980);
    v64(v80, v65);
    v53 = v61;
  }

  sub_24E601704(v53, &qword_27F2218B0, &unk_24F975980);
  return v20;
}

void (*SearchResultsPage.init(deserializing:using:)(char *a1, uint64_t a2))(void, void)
{
  v3 = v2;
  v123 = a2;
  v115 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v104 - v8;
  v125 = sub_24F9285B8();
  v120 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v104 - v11;
  MEMORY[0x28223BE20](v12);
  v129 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v104 - v15;
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v109 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v107 = &v104 - v21;
  MEMORY[0x28223BE20](v22);
  v106 = &v104 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v104 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v104 - v28;
  v30 = sub_24F92AC28();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v105 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v122 = &v104 - v34;
  v3[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete] = 0;
  v124 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v35 = v31;
  v117 = v18;
  v36 = (v18 + 8);
  v37 = *(v18 + 8);
  v37(v29, v17);
  if ((*(v35 + 48))(v16, 1, v30) == 1)
  {
    sub_24E601704(v16, &qword_27F2213B0, &qword_24F965EC0);
    v38 = sub_24F92AC38();
    sub_24ECDE4FC(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v39 = 0x7365766C656873;
    v40 = v115;
    v39[1] = 0xE700000000000000;
    v39[2] = v40;
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D22530], v38);
    swift_willThrow();
    (*(v120 + 8))(v123, v125);
    v37(v124, v17);
    type metadata accessor for SearchResultsPage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v118 = v37;
    v119 = v36;
    v116 = v3;
    v112 = v17;
    v41 = v120;
    (*(v35 + 32))(v122, v16, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x277D84F90];
    *&v126 = v42;
    v43 = v30;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v44, qword_27F22D8D8);
    v45 = v129;
    sub_24F928528();

    (*(v35 + 16))(v105, v122, v43);
    v115 = *(v41 + 16);
    v104 = v35;
    v46 = v121;
    v47 = v125;
    v115(v121, v45, v125);
    type metadata accessor for Shelf(0);
    sub_24ECDE4FC(&qword_27F2265E0, type metadata accessor for Shelf, &protocol conformance descriptor for Shelf);
    v48 = sub_24F92B6A8();
    v49 = sub_24EEF0A68(v48);
    v51 = v50;

    v105 = v43;
    v52 = v116;
    *&v116[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering] = v49;
    *&v52[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping] = v51;
    v53 = v52;
    sub_24F928398();
    v54 = v129;
    v55 = v47;
    v56 = v47;
    v57 = v115;
    v115(v46, v129, v56);
    sub_24ECDE134();
    sub_24F929548();
    v58 = &v53[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason];
    v59 = v127;
    *v58 = v126;
    v58[1] = v59;
    v58[2] = v128;
    type metadata accessor for SearchResultsMessage();
    sub_24F928398();
    v57(v46, v54, v55);
    v114 = v41 + 16;
    sub_24ECDE4FC(&qword_27F2230F8, type metadata accessor for SearchResultsMessage, &protocol conformance descriptor for SearchResultsMessage);
    sub_24F929548();
    v60 = v116;
    *&v116[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message] = v126;
    sub_24F928398();
    v57(v46, v54, v55);
    sub_24E90362C();
    sub_24F929548();
    v61 = v127;
    v62 = BYTE8(v127);
    v63 = v60;
    v64 = &v60[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets];
    *v64 = v126;
    *(v64 + 2) = v61;
    v64[24] = v62;
    v65 = v108;
    sub_24F928398();
    v66 = v112;
    (*(v117 + 56))(v65, 0, 1);
    v67 = *(v64 + 1);
    v68 = *(v64 + 2);
    v69 = v64[24];
    *&v126 = *v64;
    *(&v126 + 1) = v67;
    *&v127 = v68;
    BYTE8(v127) = v69;
    sub_24E903680(v126, v67, v68);
    v70 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v65, &v126, v123);
    sub_24E9036C4(v126);
    sub_24E601704(v65, &qword_27F212F48, &unk_24F93A2D0);
    v71 = v63;
    *&v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions] = v70;
    sub_24F928398();
    sub_24F928368();
    v72 = v118;
    v118(v26, v66);
    v73 = &v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage];
    v74 = v127;
    *v73 = v126;
    v73[1] = v74;
    v75 = v106;
    sub_24F928398();
    LOBYTE(v70) = sub_24F928278();
    v72(v75, v66);
    v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled] = v70 & 1;
    v76 = v107;
    sub_24F928398();
    LOBYTE(v70) = sub_24F928278();
    v72(v76, v66);
    v63[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled] = v70 & 1;
    type metadata accessor for LinkableText();
    sub_24F928398();
    v77 = v129;
    v78 = v125;
    v79 = v115;
    v115(v121, v129, v125);
    sub_24ECDE4FC(&qword_27F21C360, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    sub_24F929548();
    *&v71[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120, &qword_24F974D58);
    sub_24F928398();
    v80 = v121;
    v79(v121, v77, v78);
    sub_24ECDE448();
    sub_24F929548();
    *&v71[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens] = v126;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D828, &qword_24F995620);
    sub_24F928398();
    v81 = v129;
    v82 = v125;
    v79(v80, v129, v125);
    sub_24ECDE544();
    sub_24F929548();
    v83 = v116;
    *&v116[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries] = v126;
    sub_24F929608();
    sub_24F928398();
    v79(v80, v81, v82);
    v84 = v79;
    v85 = v110;
    sub_24F929548();
    v86 = v83;
    sub_24E65E0D4(v85, &v83[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics]);
    sub_24F928398();
    v87 = v129;
    v84(v80, v129, v125);
    v88 = v112;
    sub_24F929548();
    v89 = v86;
    sub_24E65E0D4(v85, &v86[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics]);
    type metadata accessor for Action(0);
    v90 = v124;
    sub_24F928398();
    v91 = static Action.tryToMakeInstance(byDeserializing:using:)(v26, v87);
    v92 = v118;
    v118(v26, v88);
    *&v89[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction] = v91;
    sub_24F928398();
    v93 = static Action.tryToMakeInstance(byDeserializing:using:)(v26, v87);
    v94 = v125;
    v95 = v123;
    v92(v26, v88);
    *&v89[OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction] = v93;
    v96 = v109;
    v97 = v90;
    v98 = v88;
    (*(v117 + 16))(v109, v90, v88);
    v99 = v111;
    v115(v111, v95, v94);
    v100 = v113;
    v101 = BasePage.init(deserializing:using:)(v96, v99);
    if (v100)
    {
      v36 = *(v120 + 8);
      v36(v95, v94);
      v118(v97, v98);
      v36(v129, v94);
    }

    else
    {
      v36 = v101;
      v102 = *(v120 + 8);
      v102(v95, v94);
      v118(v97, v98);
      v102(v129, v94);
    }

    (*(v104 + 8))(v122, v105);
  }

  return v36;
}

uint64_t SearchResultsPage.unavailableReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 16);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 24);
  v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 32);
  v7 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_24ECDE61C(v2, v3);
}

double SearchResultsPage.facets.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_24E903680(v3, v4, v5);
}

BOOL sub_24ECDC320()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  v5 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

  swift_beginAccess();
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  while (2)
  {
    v7 = v2 + 32 + 40 * v6;
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_24E65864C(v7, v17);
      if (*(*(v0 + v5) + 16))
      {
        break;
      }

LABEL_4:
      ++v8;
      sub_24E6585F8(v17);
      v7 += 40;
      if (v4 == v8)
      {
        goto LABEL_12;
      }
    }

    sub_24E76D934(v17);
    if ((v9 & 1) == 0)
    {

      goto LABEL_4;
    }

    v10 = sub_24E6585F8(v17);
    MEMORY[0x253050F00](v10);
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v6 = v8 + 1;
    sub_24F92B638();
    v3 = v18;
    if (v4 - 1 != v8)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_27:
    v11 = sub_24F92C738();
  }

  else
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  do
  {
    v13 = v12;
    if (v11 == v12)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x253052270](v12, v3);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v12 >= *(v7 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(v3 + 8 * v12 + 32);

      if (__OFADD__(v13, 1))
      {
LABEL_23:
        __break(1u);
        break;
      }
    }

    swift_beginAccess();
    v15 = *(*(v14 + 24) + 16);

    v12 = v13 + 1;
  }

  while (!v15);

  return v11 != v13;
}

uint64_t sub_24ECDC5B8(uint64_t (*a1)(uint64_t))
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();

  sub_24F159E30(v4, a1);
  v6 = v5;

  *(v1 + v3) = v6;
}

uint64_t sub_24ECDC644(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v121 = &v108 - v9;
  MEMORY[0x28223BE20](v10);
  v120 = &v108 - v11;
  MEMORY[0x28223BE20](v12);
  v136 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v139 = &v108 - v18;
  v19 = sub_24F928818();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v119 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v108 - v23;
  v135 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for SearchResultsPage);
  v145 = v135;
  v25 = ShelfBasedPage.shelves.getter(v4, &protocol witness table for SearchResultsPage);
  if (v25 >> 62)
  {
    goto LABEL_59;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v27 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
    v133 = MEMORY[0x277D84F90];
    v134 = v20;
    v138 = v24;
    v137 = v16;
    v118 = v19;
    v108 = v7;
    if (!v26)
    {

      goto LABEL_67;
    }

    v28 = __OFSUB__(v26, 1);
    v29 = v26 - 1;
    if (v28)
    {
      __break(1u);
      goto LABEL_61;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
LABEL_61:
      v24 = MEMORY[0x253052270](v29);
      v20 = MEMORY[0x277D84F90];
      goto LABEL_9;
    }

    v20 = MEMORY[0x277D84F90];
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v29 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v24 = *(v25 + 8 * v29 + 32);

LABEL_9:

    v30 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
    swift_beginAccess();
    v131 = v30;
    v4 = *(a1 + v30);
    v143 = v20;
    v31 = *(v4 + 16);
    v16 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

    v25 = swift_beginAccess();
    if (!v31)
    {
      v7 = v20;
      goto LABEL_24;
    }

    v19 = 0;
    v32 = v4 + 32;
    v129 = v31 - 1;
    v7 = MEMORY[0x277D84F90];
    v132 = v24;
    v130 = v4 + 32;
    do
    {
      v24 = (v32 + 40 * v19);
      v20 = v19;
      while (1)
      {
        if (v20 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_58;
        }

        sub_24E65864C(v24, &v144);
        if (*(*&v16[a1] + 16))
        {
          break;
        }

LABEL_13:
        ++v20;
        v25 = sub_24E6585F8(&v144);
        v24 += 40;
        if (v31 == v20)
        {
          v24 = v132;
          goto LABEL_24;
        }
      }

      sub_24E76D934(&v144);
      if ((v33 & 1) == 0)
      {

        goto LABEL_13;
      }

      v34 = sub_24E6585F8(&v144);
      MEMORY[0x253050F00](v34);
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v19 = v20 + 1;
      v25 = sub_24F92B638();
      v7 = v143;
      v24 = v132;
      v32 = v130;
    }

    while (v129 != v20);
LABEL_24:

    if (!(v7 >> 62))
    {
      v27 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

LABEL_65:

LABEL_66:

LABEL_67:
      v48 = v27[152];
      swift_beginAccess();
      v49 = *(a1 + v48);
      v50 = MEMORY[0x277D84F90];
      v141 = MEMORY[0x277D84F90];
      v51 = *(v49 + 16);
      v52 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;

      swift_beginAccess();
      if (!v51)
      {
        goto LABEL_78;
      }

      v53 = 0;
      v54 = v49 + 32;
      v133 = v51 - 1;
      v135 = v49 + 32;
LABEL_69:
      v55 = v54 + 40 * v53;
      v56 = v53;
      while (1)
      {
        if (v56 >= *(v49 + 16))
        {
          __break(1u);
          goto LABEL_93;
        }

        sub_24E65864C(v55, &v144);
        if (*(*(a1 + v52) + 16))
        {

          sub_24E76D934(&v144);
          if (v57)
          {

            v58 = sub_24E6585F8(&v144);
            MEMORY[0x253050F00](v58);
            if (*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v53 = v56 + 1;
            sub_24F92B638();
            v50 = v141;
            v54 = v135;
            if (v133 == v56)
            {
LABEL_78:

              sub_24EA0AE3C(v50);
              v59 = v118;
              goto LABEL_79;
            }

            goto LABEL_69;
          }
        }

        ++v56;
        sub_24E6585F8(&v144);
        v55 += 40;
        if (v51 == v56)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_64:
    v27 = &OBJC_IVAR____TtC12GameStoreKit18HttpTemplateAction_isStoreRequest;
    if (!sub_24F92C738())
    {
      goto LABEL_65;
    }

LABEL_26:
    if ((v7 & 0xC000000000000001) == 0)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v7 + 32);

        goto LABEL_29;
      }

      __break(1u);
LABEL_96:
      v96 = sub_24F92C738();
      v36 = v96 - 1;
      if (!__OFSUB__(v96, 1))
      {
        goto LABEL_32;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v4 = MEMORY[0x253052270](0, v7);
LABEL_29:

    if ((MEMORY[0x253052150](&v24[OBJC_IVAR____TtC12GameStoreKit5Shelf_id], v4 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id) & 1) == 0)
    {

      goto LABEL_66;
    }

    v20 = v135 >> 62;
    if (v135 >> 62)
    {
      goto LABEL_96;
    }

    v35 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v35 - 1;
    if (__OFSUB__(v35, 1))
    {
      goto LABEL_98;
    }

LABEL_32:
    v37 = *(v24 + 3);
    v130 = v4;
    v144 = v37;

    sub_24EA0AEC0(v38);
    v39 = v144;
    LOBYTE(v144) = 104;
    v4 = Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v39, &v144, 1, 2);

    v40 = v135;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v20 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v40 = sub_24ECDE380(v40);
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (v36 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    *((v40 & 0xFFFFFFFFFFFFFF8) + 8 * v36 + 0x20) = v4;

    v145 = v40;
    v4 = *(a1 + v131);
    v142 = MEMORY[0x277D84F90];
    v42 = *(v4 + 16);

    v25 = swift_beginAccess();
    if (v42)
    {
      v7 = 0;
      v19 = v4 + 32;
      v135 = (v42 - 1);
      v133 = MEMORY[0x277D84F90];
      v132 = v24;
LABEL_39:
      v20 = v19 + 40 * v7;
      v24 = v7;
      while (v24 < *(v4 + 16))
      {
        sub_24E65864C(v20, &v144);
        if (*(*&v16[a1] + 16))
        {

          sub_24E76D934(&v144);
          if (v43)
          {
            v20 = v4 + 32;

            v44 = sub_24E6585F8(&v144);
            MEMORY[0x253050F00](v44);
            if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_24F92B5E8();
            }

            v7 = (v24 + 1);
            v25 = sub_24F92B638();
            v133 = v142;
            if (v135 != v24)
            {
              goto LABEL_39;
            }

            goto LABEL_50;
          }
        }

        ++v24;
        v25 = sub_24E6585F8(&v144);
        v20 += 40;
        if (v42 == v24)
        {
          goto LABEL_50;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      v4 = v25;
      v26 = sub_24F92C738();
      v25 = v4;
      continue;
    }

    break;
  }

LABEL_50:

  v45 = v133;
  v36 = v133 >> 62;
  if (!(v133 >> 62))
  {
    v20 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v20 != 0;
    if (v20 >= v4)
    {
      if ((v133 & 0xC000000000000001) != 0)
      {
        goto LABEL_53;
      }

LABEL_108:

      goto LABEL_109;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_101:
  v97 = sub_24F92C738();
  if (v97 < 0)
  {
    goto LABEL_106;
  }

  v20 = v97;
  v4 = v97 != 0;
  if (sub_24F92C738() < v4)
  {
    goto LABEL_105;
  }

  if (sub_24F92C738() < v20)
  {
    __break(1u);
    goto LABEL_105;
  }

LABEL_107:
  v45 = v133;
  if ((v133 & 0xC000000000000001) == 0)
  {
    goto LABEL_108;
  }

LABEL_53:
  if (v20 <= 1)
  {
    goto LABEL_108;
  }

  type metadata accessor for Shelf(0);

  v46 = v4;
  do
  {
    v47 = v46 + 1;
    sub_24F92C8C8();
    v46 = v47;
  }

  while (v20 != v47);
LABEL_109:

  if (v36)
  {
    v98 = sub_24F92CB18();
    v99 = v101;
    v4 = v102;
    v100 = v103;

    if (v100)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v98 = v45 & 0xFFFFFFFFFFFFFF8;
  v99 = (v45 & 0xFFFFFFFFFFFFFF8) + 32;
  v100 = (2 * v20) | 1;
  if ((v100 & 1) == 0)
  {
LABEL_113:
    sub_24E6B8B64(v98, v99, v4, v100);
    v105 = v104;
    v59 = v118;
    goto LABEL_120;
  }

LABEL_114:
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();
  v106 = swift_dynamicCastClass();
  if (!v106)
  {
    swift_unknownObjectRelease();
    v106 = MEMORY[0x277D84F90];
  }

  v107 = *(v106 + 16);

  if (__OFSUB__(v100 >> 1, v4))
  {
    __break(1u);
    goto LABEL_123;
  }

  if (v107 != (v100 >> 1) - v4)
  {
LABEL_123:
    swift_unknownObjectRelease_n();
    goto LABEL_113;
  }

  v105 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v59 = v118;
  if (!v105)
  {
    v105 = MEMORY[0x277D84F90];
LABEL_120:
    swift_unknownObjectRelease();
  }

  sub_24EA0AE3C(v105);

LABEL_79:
  v112 = v145;
  v60 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason);
  v126 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8);
  v61 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 16);
  v62 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 24);
  v63 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 40);
  v125 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 32);
  v133 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message);
  v64 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 8);
  v124 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets);
  v128 = v64;
  v127 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 16);
  v111 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions);
  v123 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets + 24);
  sub_24E60169C(a1 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &v144, &qword_27F2129B0, &unk_24F945320);
  v114 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled);
  v113 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled);
  v132 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink);
  v109 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens);
  v110 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries);
  v65 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  swift_beginAccess();
  v115 = *(v134 + 16);
  v116 = v134 + 16;
  v115(v138, v2 + v65, v59);
  v117 = *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, v139, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, v137, &qword_27F213E68, &unk_24F93BC80);
  v131 = *(v2 + 16);
  v129 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction);
  v130 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction);
  v122 = sub_24F9285B8();
  v135 = *(v122 - 8);
  (*(v135 + 56))(v136, 1, 1, v122);
  type metadata accessor for SearchResultsPage(0);
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isIncomplete) = 0;
  sub_24ECDE61C(v60, v126);
  sub_24E903680(v124, v128, v127);

  v66 = v111;

  v67 = sub_24EEF0A68(v112);
  v69 = v68;

  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering) = v67;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping) = v69;
  v70 = (v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason);
  v71 = v126;
  *v70 = v60;
  v70[1] = v71;
  v70[2] = v61;
  v70[3] = v62;
  v70[4] = v125;
  v70[5] = v63;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_message) = v133;
  v72 = v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets;
  v73 = v128;
  *v72 = v124;
  *(v72 + 8) = v73;
  *(v72 + 16) = v127;
  *(v72 + 24) = v123;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_selectedFacetOptions) = v66;
  sub_24E60169C(&v144, v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isAutoPlayEnabled) = v114;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_isCondensedSearchLockupsEnabled) = v113;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_transparencyLink) = v132;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokens) = v109;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchQueries) = v110;
  sub_24E60169C(v139, v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v137, v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchClearAction) = v129;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_searchCancelAction) = v130;
  v74 = v119;
  v75 = v115;
  v115(v119, v138, v59);
  v76 = v120;
  sub_24E60169C(v136, v120, &qword_27F2218B0, &unk_24F975980);
  *(v2 + 16) = v131;
  v75(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics, v74, v59);
  *(v2 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v117;
  v77 = v121;
  v78 = v122;
  sub_24E60169C(v76, v121, &qword_27F2218B0, &unk_24F975980);
  v53 = *(v135 + 48);
  if ((v53)(v77, 1, v78) == 1)
  {

    sub_24E601704(v76, &qword_27F2218B0, &unk_24F975980);
    v79 = *(v134 + 8);
    v79(v74, v59);
    sub_24E601704(v136, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v137, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v139, &qword_27F213E68, &unk_24F93BC80);
    v79(v138, v59);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
    v80 = v77;
    v81 = &qword_27F2218B0;
    goto LABEL_87;
  }

  v52 = v59;
  v82 = qword_27F2105F0;

  if (v82 != -1)
  {
LABEL_93:
    swift_once();
  }

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v83, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  sub_24F9285C8();
  v84 = v140;
  v85 = v108;
  v86 = v138;
  v87 = v119;
  if (v140)
  {
  }

  v88 = *(v135 + 8);
  v89 = v122;
  v135 += 8;
  v88(v121, v122);
  if (!v84)
  {
    sub_24E601704(v120, &qword_27F2218B0, &unk_24F975980);
    v93 = *(v134 + 8);
    v93(v87, v52);
    sub_24E601704(v136, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v137, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v139, &qword_27F213E68, &unk_24F93BC80);
    v93(v86, v52);
    v81 = &qword_27F2129B0;
    v92 = &unk_24F945320;
    v80 = &v144;
    goto LABEL_89;
  }

  v90 = v120;
  sub_24E60169C(v120, v85, &qword_27F2218B0, &unk_24F975980);
  if ((v53)(v85, 1, v89) == 1)
  {
    sub_24E601704(v90, &qword_27F2218B0, &unk_24F975980);
    v91 = *(v134 + 8);
    v91(v87, v52);
    sub_24E601704(v136, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v137, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v139, &qword_27F213E68, &unk_24F93BC80);
    v91(v86, v52);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
    v80 = v85;
    v81 = &qword_27F2218B0;
LABEL_87:
    v92 = &unk_24F975980;
LABEL_89:
    sub_24E601704(v80, v81, v92);
  }

  else
  {
    sub_24ECDF110();
    sub_24E601704(v90, &qword_27F2218B0, &unk_24F975980);
    v95 = *(v134 + 8);
    v95(v87, v52);
    sub_24E601704(v136, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v137, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v139, &qword_27F213E68, &unk_24F93BC80);
    v95(v86, v52);
    sub_24E601704(&v144, &qword_27F2129B0, &unk_24F945320);
    v88(v85, v122);
  }

  return v2;
}

double sub_24ECDDCDC()
{

  sub_24ECDE680(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 40));

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return result;
}

uint64_t SearchResultsPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24ECDE680(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 8), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 16), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 24), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 32), *(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_unavailableReason + 40));

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t SearchResultsPage.__deallocating_deinit()
{
  SearchResultsPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24ECDE090@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_24ECDC644(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SearchResultsPage(uint64_t a1)
{
  result = qword_27F22D840;
  if (!qword_27F22D840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ECDE134()
{
  result = qword_27F22D810;
  if (!qword_27F22D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D810);
  }

  return result;
}

uint64_t sub_24ECDE380(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24F92C738();
  }

  return sub_24F92C8F8();
}

unint64_t sub_24ECDE448()
{
  result = qword_27F22D818;
  if (!qword_27F22D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225120, &qword_24F974D58);
    sub_24ECDE4FC(&qword_27F22D820, type metadata accessor for GuidedSearchToken, &protocol conformance descriptor for GuidedSearchToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D818);
  }

  return result;
}

uint64_t sub_24ECDE4FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ECDE544()
{
  result = qword_27F22D830;
  if (!qword_27F22D830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D828, &qword_24F995620);
    sub_24ECDE5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D830);
  }

  return result;
}

unint64_t sub_24ECDE5C8()
{
  result = qword_27F22D838;
  if (!qword_27F22D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D838);
  }

  return result;
}

uint64_t sub_24ECDE61C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_24ECDE680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

void sub_24ECDE744(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ECDE978(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for DismissDashboardNotifier();
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_24ECDEA64;

  return MEMORY[0x28217F228](v1 + 2, v2, v2);
}

uint64_t sub_24ECDEA64()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EA53D04;
  }

  else
  {
    v2 = sub_24ECDEB78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24ECDEB78()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_24F92B7F8();

  v5 = sub_24F92B7E8();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v3;
  sub_24EA998B8(0, 0, v1, &unk_24F9957A0, v6);

  v8 = *MEMORY[0x277D21CA8];
  v9 = sub_24F928AE8();
  (*(*(v9 - 8) + 104))(v2, v8, v9);

  v10 = v0[1];

  return v10();
}

unint64_t sub_24ECDED0C()
{
  result = qword_27F216288;
  if (!qword_27F216288)
  {
    type metadata accessor for DismissDashboardAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216288);
  }

  return result;
}

uint64_t sub_24ECDED6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v9 = sub_24F92A9E8();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24F995798;
  v11[5] = v8;
  v11[6] = v9;

  sub_24E6959D8(0, 0, v7, &unk_24F94D7B0, v11);

  return v9;
}

uint64_t sub_24ECDEEF0()
{

  return swift_deallocObject();
}

uint64_t sub_24ECDEF28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return sub_24ECDE978(a1);
}

uint64_t sub_24ECDEFD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECDF01C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24ECDF05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EE189B0(a1, v4, v5, v6);
}

void sub_24ECDF110()
{
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v0, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  sub_24F9285C8();
  if (v6)
  {
    swift_beginAccess();
    v1 = *(v6 + 16);

    if (*(v1 + 16))
    {
      v2 = [objc_opt_self() defaultCenter];
      if (qword_27F2105E8 != -1)
      {
        swift_once();
      }

      v3 = qword_27F22D8D0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222878, &unk_24F96B040);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      sub_24F92C7F8();
      *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D8F0, &unk_24FA0AEF0);
      *(inited + 72) = v1;
      sub_24E608210(inited);
      swift_setDeallocating();
      sub_24ECDF670(inited + 32);
      v5 = sub_24F92AE28();

      [v2 postNotificationName:v3 object:0 userInfo:{v5, 0x7364496D616461, 0xE700000000000000}];
    }

    else
    {
    }
  }
}

double sub_24ECDF340(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_27F2105F0 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_project_value_buffer(v3, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  sub_24F9285C8();
  if (v10)
  {
    swift_beginAccess();
    v5 = *(v10 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_24E6164C0(0, *(v5 + 2) + 1, 1, v5);
      *(v10 + 16) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_24E6164C0((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = v2;
    *(v9 + 5) = v1;
    *(v10 + 16) = v5;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24ECDF49C()
{
  result = sub_24F92B098();
  qword_27F22D8D0 = result;
  return result;
}

id static RemotePersonalizationNotificationDetails.notificationName.getter()
{
  if (qword_27F2105E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F22D8D0;

  return v1;
}

uint64_t sub_24ECDF558()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
  __swift_allocate_value_buffer(v0, qword_27F22D8D8);
  __swift_project_value_buffer(v0, qword_27F22D8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
  return sub_24F928588();
}

uint64_t sub_24ECDF5E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BF38, &unk_24F9957F0);
  __swift_allocate_value_buffer(v0, qword_27F39C540);
  __swift_project_value_buffer(v0, qword_27F39C540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);
  return sub_24F928588();
}

uint64_t sub_24ECDF670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23E470, &qword_24F93ADD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArticlePageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v40 - v6;
  v43 = sub_24F91F4A8();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_24F928388();
  v12 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v46 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  v49 = a3;
  if (v19)
  {
    v47 = v18;
    v48 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v47 = v20;
    v48 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v12 + 8);
  v24 = v44;
  v23(v17, v44);
  v25 = v46;
  sub_24F928398();
  v26 = v42;
  sub_24F928268();
  v23(v14, v24);
  v27 = v41;
  v28 = v43;
  if ((*(v41 + 48))(v26, 1, v43) == 1)
  {
    sub_24E70E058(v26);
    v29 = v24;
    v30 = sub_24F92AC38();
    sub_24ECDFFA0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v32 = v31;
    v33 = type metadata accessor for ArticlePageIntent(0);
    *v32 = 7107189;
    v32[1] = 0xE300000000000000;
    v32[2] = v33;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v45, v34);
    v23(v25, v29);
    return sub_24E6585F8(v49);
  }

  else
  {
    v36 = sub_24F9285B8();
    (*(*(v36 - 8) + 8))(v45, v36);
    v23(v25, v24);
    v37 = *(v27 + 32);
    v38 = v40;
    v37(v40, v26, v28);
    v39 = type metadata accessor for ArticlePageIntent(0);
    return (v37)(v49 + *(v39 + 20), v38, v28);
  }
}

uint64_t type metadata accessor for ArticlePageIntent(uint64_t a1)
{
  result = qword_27F22D908;
  if (!qword_27F22D908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArticlePageIntent.init(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(a1 + 32);
  v6 = *(type metadata accessor for ArticlePageIntent(0) + 20);
  v7 = sub_24F91F4A8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t ArticlePageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticlePageIntent(0) + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

JSValue __swiftcall ArticlePageIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_24E65864C(v1, v9);
  v6 = [v3 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  type metadata accessor for ArticlePageIntent(0);
  v9[0] = sub_24F91F398();
  v9[1] = v7;
  v8 = [v3 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (v8)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24ECDFFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ECE0000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24ECE00C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24ECE0164(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AppLaunchMetricsEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  AppLaunchMetricsEvent.init()();
  return v0;
}

uint64_t AppLaunchMetricsEvent.init()()
{
  if (qword_27F210600 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_27F22D918 + 1);
  *(v0 + 32) = xmmword_27F22D918;
  *(v0 + 40) = v1;
  v2 = objc_opt_self();

  v3 = [v2 processInfo];
  [v3 ask_launchTime];
  v5 = v4;

  *(v0 + 48) = v5;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 56) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  v6 = MEMORY[0x277D84F90];
  *(v0 + 120) = MEMORY[0x277D84F90];
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 513;
  *(v0 + 208) = 0;
  *(v0 + 16) = sub_24E608448(v6);
  *(v0 + 24) = &unk_2861C0A50;
  return v0;
}

uint64_t AppLaunchMetricsEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_27F210600 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_27F22D918 + 1);
  v2[4] = xmmword_27F22D918;
  v2[5] = v6;
  v7 = objc_opt_self();

  v8 = [v7 processInfo];
  [v8 ask_launchTime];
  v10 = v9;

  v2[6] = v10;
  v2[8] = 0;
  v2[9] = 0;
  v2[7] = 0;
  *(v2 + 80) = 1;
  v2[11] = 0;
  *(v2 + 96) = 1;
  v2[13] = 0;
  *(v2 + 112) = 1;
  v2[15] = MEMORY[0x277D84F90];
  v2[16] = 0;
  *(v2 + 136) = 1;
  v2[18] = 0;
  *(v2 + 152) = 1;
  v2[20] = 0;
  *(v2 + 168) = 1;
  v2[22] = 0;
  *(v2 + 184) = 1;
  v2[24] = 0;
  *(v2 + 100) = 513;
  v2[26] = 0;
  v11 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v12 = 0xD000000000000015;
  v12[1] = 0x800000024F995900;
  v12[2] = v5;
  (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D22528], v11);
  swift_willThrow();
  v13 = sub_24F9285B8();
  (*(*(v13 - 8) + 8))(a2, v13);
  v14 = sub_24F928388();
  (*(*(v14 - 8) + 8))(a1, v14);

  return swift_deallocPartialClassInstance();
}

uint64_t sub_24ECE060C()
{
  v0 = sub_24F91F6B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F6A8();
  v4 = sub_24F91F668();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  *&xmmword_27F22D918 = v4;
  *(&xmmword_27F22D918 + 1) = v6;
  return result;
}

uint64_t static AppLaunchMetricsEvent.launchCorrelationKey.getter()
{
  if (qword_27F210600 != -1)
  {
    swift_once();
  }

  v0 = xmmword_27F22D918;

  return v0;
}

uint64_t AppLaunchMetricsEvent.launchCorrelationKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AppLaunchMetricsEvent.topic.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

double AppLaunchMetricsEvent.requests.getter()
{
  swift_beginAccess();

  return result;
}

double AppLaunchMetricsEvent.builtDependencies.getter()
{
  swift_beginAccess();

  return result;
}

unint64_t AppLaunchMetricsEvent.description.getter()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppLaunchMetricsEvent.metricsData.getter(v3);
  v4 = sub_24F928688();
  (*(v1 + 8))(v3, v0);
  v10 = v4;
  v11 = sub_24ECE1BD0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D928, &qword_24F9A4D20);
  sub_24ECE1DB8();
  sub_24E600AEC();
  v5 = sub_24F92B4D8();
  v7 = v6;

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_24F92C888();

  v10 = 0xD000000000000016;
  v11 = 0x800000024FA5A190;
  MEMORY[0x253050C20](v5, v7);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v10;
}

void AppLaunchMetricsEvent.metricsData.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v118 = sub_24F92AB48();
  v108 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_24F928698();
  v4 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_24F92A1F8();
  v116 = *(v113 - 1);
  MEMORY[0x28223BE20](v113);
  v112 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 16);
  v8 = MEMORY[0x277D837D0];
  *(&v121[0] + 1) = MEMORY[0x277D837D0];
  *&v120 = 0x636E75614C707061;
  *(&v120 + 1) = 0xE900000000000068;
  sub_24E612B0C(&v120, v134);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133[0] = v7;
  sub_24E81C1D4(v134, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v10 = v133[0];
  v135 = v133[0];
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = sub_24E9421D0();
  *(&v121[0] + 1) = v12;
  *&v120 = v11;
  sub_24E612B0C(&v120, v134);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v133[0] = v10;
  sub_24E81C1D4(v134, 0x726556746E657665, 0xEC0000006E6F6973, v13);
  v14 = v133[0];
  swift_beginAccess();
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  *(&v121[0] + 1) = v8;
  v17 = 0x800000024FA5A1B0;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v15 = 0xD000000000000011;
  }

  *&v120 = v15;
  *(&v120 + 1) = v17;
  sub_24E612B0C(&v120, v134);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v132[0] = v14;
  sub_24E81C1D4(v134, 0x6369706F74, 0xE500000000000000, v18);
  v19 = v132[0];
  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  *(&v121[0] + 1) = v8;
  *&v120 = v20;
  *(&v120 + 1) = v21;
  sub_24E612B0C(&v120, v134);

  v22 = swift_isUniquelyReferenced_nonNull_native();
  v132[0] = v19;
  sub_24E81C1D4(v134, 0xD000000000000014, 0x800000024FA44C30, v22);
  v23 = v132[0];
  v135 = v132[0];
  v24 = *(v2 + 48);
  v109 = v4;
  if (v24 <= 0.0)
  {
    goto LABEL_10;
  }

  v25 = v24 * 1000.0;
  if (*&v25 >> 52 > 0x7FEuLL)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v25 < 9.22337204e18)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    if (v26)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v26;
      sub_24E612B0C(&v120, v134);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v132[0] = v23;
      sub_24E81C1D4(v134, 0xD000000000000010, 0x800000024FA5A1D0, v27);
      v135 = v132[0];
      goto LABEL_11;
    }

LABEL_10:
    sub_24E98EF1C(0xD000000000000010, 0x800000024FA5A1D0, &v120);
    sub_24E857CC8(&v120);
LABEL_11:
    swift_beginAccess();
    v28 = sub_24E99058C(*(v2 + 72), *(v2 + 80));
    if (v28)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v28;
      sub_24E612B0C(&v120, v134);
      v29 = v135;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v131[0] = v29;
      sub_24E81C1D4(v134, 0x7472617453676162, 0xEC000000656D6954, v30);
      v135 = v131[0];
    }

    else
    {
      sub_24E98EF1C(0x7472617453676162, 0xEC000000656D6954, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v31 = sub_24E99058C(*(v2 + 88), *(v2 + 96));
    if (v31)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v31;
      sub_24E612B0C(&v120, v134);
      v32 = v135;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v130[0] = v32;
      sub_24E81C1D4(v134, 0x756C696146676162, 0xEE00656D69546572, v33);
      v135 = v130[0];
    }

    else
    {
      sub_24E98EF1C(0x756C696146676162, 0xEE00656D69546572, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v34 = sub_24E99058C(*(v2 + 104), *(v2 + 112));
    if (v34)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v34;
      sub_24E612B0C(&v120, v134);
      v35 = v135;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v129[0] = v35;
      sub_24E81C1D4(v134, 0x6563637553676162, 0xEE00656D69547373, v36);
      v135 = v129[0];
    }

    else
    {
      sub_24E98EF1C(0x6563637553676162, 0xEE00656D69547373, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v37 = *(v2 + 120);
    v38 = *(v37 + 16);
    if (v38)
    {
      v105 = v12;
      v106 = v2;
      *&v120 = MEMORY[0x277D84F90];

      sub_24F457900(0, v38, 0);
      v39 = v120;
      v40 = *(v116 + 16);
      v41 = *(v116 + 80);
      v104 = v37;
      v42 = v37 + ((v41 + 32) & ~v41);
      v110 = *(v116 + 72);
      v111 = v40;
      ++v109;
      v116 += 16;
      v43 = (v116 - 8);
      do
      {
        v44 = v112;
        v45 = v113;
        (v111)(v112, v42, v113);
        v46 = v114;
        JSNetworkPerformanceMetrics.metricsData.getter();
        v47 = sub_24F928688();
        (*v109)(v46, v115);
        (*v43)(v44, v45);
        *&v120 = v39;
        v49 = *(v39 + 16);
        v48 = *(v39 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_24F457900((v48 > 1), v49 + 1, 1);
          v39 = v120;
        }

        *(v39 + 16) = v49 + 1;
        *(v39 + 8 * v49 + 32) = v47;
        v42 += v110;
        --v38;
      }

      while (v38);

      *(&v121[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
      *&v120 = v39;
      sub_24E612B0C(&v120, v134);
      v50 = v135;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v128[0] = v50;
      sub_24E81C1D4(v134, 0x7374736575716572, 0xE800000000000000, v51);
      v135 = v128[0];
      v12 = v105;
      v2 = v106;
    }

    swift_beginAccess();
    v52 = sub_24E99058C(*(v2 + 128), *(v2 + 136));
    if (v52)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v52;
      sub_24E612B0C(&v120, v134);
      v53 = v135;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v127[0] = v53;
      sub_24E81C1D4(v134, 0xD000000000000010, 0x800000024FA5A1F0, v54);
      v135 = v127[0];
    }

    else
    {
      sub_24E98EF1C(0xD000000000000010, 0x800000024FA5A1F0, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v55 = sub_24E99058C(*(v2 + 144), *(v2 + 152));
    if (v55)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v55;
      sub_24E612B0C(&v120, v134);
      v56 = v135;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v126[0] = v56;
      sub_24E81C1D4(v134, 0x457075746553736ALL, 0xEE00656D6954646ELL, v57);
      v135 = v126[0];
    }

    else
    {
      sub_24E98EF1C(0x457075746553736ALL, 0xEE00656D6954646ELL, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v58 = sub_24E99058C(*(v2 + 160), *(v2 + 168));
    if (v58)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v58;
      sub_24E612B0C(&v120, v134);
      v59 = v135;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v59;
      sub_24E81C1D4(v134, 0xD000000000000011, 0x800000024FA5A210, v60);
      v135 = v125[0];
    }

    else
    {
      sub_24E98EF1C(0xD000000000000011, 0x800000024FA5A210, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v61 = sub_24E99058C(*(v2 + 176), *(v2 + 184));
    if (v61)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v61;
      sub_24E612B0C(&v120, v134);
      v62 = v135;
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v124[0] = v62;
      sub_24E81C1D4(v134, 0xD000000000000011, 0x800000024FA44C50, v63);
      v135 = v124[0];
    }

    else
    {
      sub_24E98EF1C(0xD000000000000011, 0x800000024FA44C50, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v64 = sub_24E99058C(*(v2 + 192), *(v2 + 200));
    if (v64)
    {
      *(&v121[0] + 1) = v12;
      *&v120 = v64;
      sub_24E612B0C(&v120, v134);
      v65 = v135;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v123[0] = v65;
      sub_24E81C1D4(v134, 0xD000000000000019, 0x800000024FA5A230, v66);
      v135 = v123[0];
    }

    else
    {
      sub_24E98EF1C(0xD000000000000019, 0x800000024FA5A230, &v120);
      sub_24E857CC8(&v120);
    }

    swift_beginAccess();
    v67 = *(v2 + 201);
    if (v67 != 2)
    {
      v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      *(&v121[0] + 1) = v12;
      *&v120 = v68;
      sub_24E612B0C(&v120, v134);
      v69 = v135;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v122[0] = v69;
      sub_24E81C1D4(v134, 0xD000000000000014, 0x800000024FA5A270, v70);
      v135 = v122[0];
    }

    swift_beginAccess();
    v71 = *(v2 + 208);
    if (v71)
    {
      v72 = *(v71 + 16);
      v73 = MEMORY[0x277D84F90];
      if (v72)
      {
        *&v134[0] = MEMORY[0x277D84F90];

        sub_24F457900(0, v72, 0);
        v73 = *&v134[0];
        v74 = v108;
        v75 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v110 = v71;
        v76 = v71 + v75;
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135B8, &unk_24F93ADA0);
        v78 = *(v74 + 16);
        v74 += 16;
        v113 = v78;
        v114 = v77;
        v79 = *(v74 + 56);
        v108 = v74;
        v111 = (v74 - 8);
        v112 = v79;
        while (1)
        {
          v115 = v73;
          v116 = v72;
          (v113)(v117, v76, v118);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
          v80 = swift_allocObject();
          v80[4] = 0x656D614E65707974;
          v80[5] = 0xE800000000000000;
          v81 = sub_24F92AB38();
          v80[9] = MEMORY[0x277D837D0];
          v80[6] = v81;
          v80[7] = v82;
          v80[10] = 0x5464657370616C65;
          v80[11] = 0xEB00000000656D69;
          sub_24F92AB28();
          v80[15] = MEMORY[0x277D839F8];
          v80[12] = v83;
          v84 = sub_24F92CB58();

          sub_24EA20328((v80 + 4), &v120);
          v85 = v120;
          v86 = sub_24E76D644(v120, *(&v120 + 1));
          if (v87)
          {
            break;
          }

          *(v84 + ((v86 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v86;
          *(v84[6] + 16 * v86) = v85;
          sub_24E612B0C(v121, (v84[7] + 32 * v86));
          v88 = v84[2];
          v89 = __OFADD__(v88, 1);
          v90 = v88 + 1;
          if (v89)
          {
            goto LABEL_65;
          }

          v84[2] = v90;
          sub_24EA20328((v80 + 10), &v120);
          v91 = v120;
          v92 = sub_24E76D644(v120, *(&v120 + 1));
          if (v93)
          {
            break;
          }

          *(v84 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v92;
          *(v84[6] + 16 * v92) = v91;
          sub_24E612B0C(v121, (v84[7] + 32 * v92));
          v94 = v84[2];
          v89 = __OFADD__(v94, 1);
          v95 = v94 + 1;
          if (v89)
          {
            goto LABEL_65;
          }

          v84[2] = v95;

          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2135C0, &qword_24F970400);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*v111)(v117, v118);
          v73 = v115;
          *&v134[0] = v115;
          v97 = *(v115 + 16);
          v96 = *(v115 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_24F457900((v96 > 1), v97 + 1, 1);
            v73 = *&v134[0];
          }

          *(v73 + 16) = v97 + 1;
          *(v73 + 8 * v97 + 32) = v84;
          v76 += v112;
          v72 = v116 - 1;
          if (v116 == 1)
          {

            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

LABEL_56:
      *(&v121[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98, &unk_24F953660);
      *&v120 = v73;
      sub_24E612B0C(&v120, v134);
      v99 = v135;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v99;
      sub_24E81C1D4(v134, 0xD000000000000011, 0x800000024FA5A250, v100);
      v98 = v119;
      if (*(v119 + 16))
      {
        goto LABEL_57;
      }
    }

    else
    {
      v98 = v135;
      if (*(v135 + 16))
      {
LABEL_57:
        v101 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
        if (v102)
        {
          sub_24E643A9C(*(v98 + 56) + 32 * v101, &v120);
          if (swift_dynamicCast())
          {
            v103 = HIBYTE(*(&v134[0] + 1)) & 0xFLL;
            if ((*(&v134[0] + 1) & 0x2000000000000000) == 0)
            {
              v103 = *&v134[0] & 0xFFFFFFFFFFFFLL;
            }

            if (!v103)
            {
            }
          }
        }
      }
    }

    sub_24F928658();
    return;
  }

LABEL_68:
  __break(1u);
}