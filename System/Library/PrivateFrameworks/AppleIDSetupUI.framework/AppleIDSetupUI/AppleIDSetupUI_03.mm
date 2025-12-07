void sub_240959E60(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50C4C0);
    v5 = sub_240A2AFFC();
    v13 = sub_240A2C2BC();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136315138;
      v16 = sub_240A2C7BC();
      v18 = sub_240925464(v16, v17, v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_2408FE000, v5, v13, "%s has been released and completion was not called.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    goto LABEL_9;
  }

  v5 = Strong;
  v6 = Strong + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v7 = *v6;
  if (!*v6)
  {
LABEL_9:

    return;
  }

  v8 = *(v6 + 8);
  v9 = a2;
  sub_24090C23C(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  v10 = sub_240A2C64C();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = swift_allocError();
    *v19 = a2;
  }

  v7(v11, 0);
  sub_24090C1A0(v7, v8);
}

void sub_24095A0A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24095A224();
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2BC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      v9 = sub_240A2C7BC();
      v11 = sub_240925464(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2408FE000, v5, v6, "%s has been released and unable to handle successful setup.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x245CCDDB0](v8, -1, -1);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }
  }
}

uint64_t sub_24095A224()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_240A2974C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277CED208], v5);
  v9 = sub_240A2973C();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) != 0 && (v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration, swift_beginAccess(), v11 = *&v1[v10], v12 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *(v11 + v12) == 2))
  {
    v13 = sub_240A2C24C();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_240A2C21C();
    v14 = v1;
    v15 = sub_240A2C20C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_2409230D4(0, 0, v4, &unk_240A32F38, v16);
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v19 = sub_240A2B00C();
    __swift_project_value_buffer(v19, qword_27E50C4C0);
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v20, v21, "Calling completion handler for successful setup...age based account is NOT supported or this is not a teen", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v23 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
    result = swift_beginAccess();
    v24 = *v23;
    if (*v23)
    {
      v25 = *(v23 + 1);
      sub_24090C23C(v24, v25);
      v26 = sub_24092624C(MEMORY[0x277D84F90]);
      v24(0, v26);
      sub_24090C1A0(v24, v25);
    }
  }

  return result;
}

void sub_24095A588(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6F0, &unk_240A32F40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_240A2976C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v37 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  v15 = swift_dynamicCast();
  v16 = *(v8 + 56);
  if (v15)
  {
    v16(v6, 0, 1, v7);
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v17 = (*(v8 + 88))(v11, v7);
    v18 = *(v8 + 8);
    if (v17 == *MEMORY[0x277CED2B8])
    {
      v18(v11, v7);
      sub_24095AFEC();
      v18(v13, v7);
      return;
    }

    v18(v13, v7);
    v18(v11, v7);
  }

  else
  {
    v16(v6, 1, 1, v7);
    sub_240919300(v6, &unk_27E50C6F0, &unk_240A32F40);
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v19 = sub_240A2B00C();
  __swift_project_value_buffer(v19, qword_27E50C4C0);
  v20 = a1;
  v21 = sub_240A2AFFC();
  v22 = sub_240A2C2AC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v37 = a1;
    v25 = a1;
    if (sub_240A2C64C())
    {
    }

    else
    {
      swift_allocError();
      *v26 = a1;
    }

    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v27;
    *v24 = v27;
    _os_log_impl(&dword_2408FE000, v21, v22, "Failed to sign in with error: %@", v23, 0xCu);
    sub_240919300(v24, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v24, -1, -1);
    MEMORY[0x245CCDDB0](v23, -1, -1);
  }

  v28 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v29 = *v28;
  if (*v28)
  {
    v30 = *(v28 + 8);
    v36 = a1;
    v31 = a1;
    sub_24090C23C(v29, v30);
    v32 = sub_240A2C64C();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = swift_allocError();
      *v34 = a1;
    }

    v35 = sub_24092624C(MEMORY[0x277D84F90]);
    v29(v33, v35);
    sub_24090C1A0(v29, v30);
  }
}

void sub_24095AA48(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6F0, &unk_240A32F40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35[-2] - v7;
  v9 = sub_240A2976C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35[-2] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35[-2] - v14;
  v35[0] = a1;
  v35[1] = a2;
  sub_240915CD0(a1, a2);
  v16 = swift_dynamicCast();
  v17 = *(v10 + 56);
  if (v16)
  {
    v17(v8, 0, 1, v9);
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v18 = (*(v10 + 88))(v13, v9);
    v19 = *(v10 + 8);
    if (v18 == *MEMORY[0x277CED2B8])
    {
      v19(v13, v9);
      sub_24095AFEC();
      v19(v15, v9);
      return;
    }

    v19(v15, v9);
    v19(v13, v9);
  }

  else
  {
    v17(v8, 1, 1, v9);
    sub_240919300(v8, &unk_27E50C6F0, &unk_240A32F40);
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v20 = sub_240A2B00C();
  __swift_project_value_buffer(v20, qword_27E50C4C0);
  sub_240915CD0(a1, a2);
  v21 = sub_240A2AFFC();
  v22 = sub_240A2C2AC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v35[0] = a1;
    v35[1] = a2;
    sub_240915CD0(a1, a2);
    sub_240915CF8();
    if (sub_240A2C64C())
    {
      sub_240915CE4(v35[0], v35[1]);
    }

    else
    {
      swift_allocError();
      *v25 = *v35;
    }

    v26 = _swift_stdlib_bridgeErrorToNSError();
    sub_240915CE4(a1, a2);
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_2408FE000, v21, v22, "Failed to sign in with error: %@", v23, 0xCu);
    sub_240919300(v24, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v24, -1, -1);
    MEMORY[0x245CCDDB0](v23, -1, -1);
  }

  else
  {
    sub_240915CE4(a1, a2);
  }

  v27 = v3 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v28 = *v27;
  if (*v27)
  {
    v29 = *(v27 + 8);
    *&v34 = a1;
    *(&v34 + 1) = a2;
    sub_240915CD0(a1, a2);
    sub_24090C23C(v28, v29);
    sub_240915CF8();
    v30 = sub_240A2C64C();
    if (v30)
    {
      v31 = v30;
      sub_240915CE4(v34, *(&v34 + 1));
    }

    else
    {
      v31 = swift_allocError();
      *v32 = v34;
    }

    v33 = sub_24092624C(MEMORY[0x277D84F90]);
    v28(v31, v33);
    sub_24090C1A0(v28, v29);
  }
}

uint64_t sub_24095AF3C()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2409559C8;

  return sub_24094F488(0);
}

uint64_t sub_24095AFEC()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = v0;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
    swift_beginAccess();
    v8 = *&v2[v7];
    *(v5 + 4) = v8;
    *v6 = v8;
    v9 = v8;
    _os_log_impl(&dword_2408FE000, v3, v4, "User selected to set up without another device, proceeding with configuration: %@", v5, 0xCu);
    sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for AISSignInSettings();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_240964C04;
  v13[4] = v12;
  v13[5] = sub_240964BB0;
  v13[6] = 0;
  v14 = v11;
  sub_24095267C(v13, 1);
}

void sub_24095B1F8(uint64_t (*a1)(void), const char *a2)
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C4C0);
  oslog = sub_240A2AFFC();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v5, a2, v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }
}

void sub_24095B2F0(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24094E018(a1, a2 & 1);
  }
}

uint64_t sub_24095B360(char a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a1)
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C4C0);
    v7 = a3;
    v8 = sub_240A2AFFC();
    v9 = sub_240A2C28C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_2408FE000, v8, v9, "Removed proto account: %@", v10, 0xCu);
      sub_240919300(v11, &unk_27E50B730, &qword_240A30CE0);
LABEL_10:
      MEMORY[0x245CCDDB0](v11, -1, -1);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50C4C0);
    v15 = a2;
    v8 = sub_240A2AFFC();
    v16 = sub_240A2C28C();

    if (os_log_type_enabled(v8, v16))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v17 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
      v18 = sub_240A2BF9C();
      v20 = sub_240925464(v18, v19, &v24);

      *(v10 + 4) = v20;
      _os_log_impl(&dword_2408FE000, v8, v16, "Failed to remove proto account with erro: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      goto LABEL_10;
    }
  }

  return a4(v21, v22);
}

void sub_24095B6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = [objc_opt_self() sharedBag];
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x277CF0100];
    (*(v3 + 16))(v5, a1, v2);
    v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v10 = swift_allocObject();
    (*(v3 + 32))(v10 + v9, v5, v2);
    sub_240A20798(v8, v7, sub_240964800, v10);
  }

  else
  {
    __break(1u);
  }
}

void sub_24095B854(char a1, void *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v8 = a2;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27E50C4C0);
    v9 = a2;
    v10 = sub_240A2AFFC();
    v11 = sub_240A2C2AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_2408FE000, v10, v11, "Failed to perform stolen device protection check with error - %@", v12, 0xCu);
      sub_240919300(v13, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v13, -1, -1);
      MEMORY[0x245CCDDB0](v12, -1, -1);
    }

    v19[14] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
    sub_240A2C1CC();
  }

  else
  {
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1 & 1;
      _os_log_impl(&dword_2408FE000, v16, v17, "Completed stolen device protection check with success - %{BOOL}d", v18, 8u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19[15] = a1 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
    sub_240A2C1CC();
  }
}

uint64_t sub_24095BB34()
{
  sub_240A2C21C();
  v0[27] = sub_240A2C20C();
  v2 = sub_240A2C1BC();
  v0[28] = v2;
  v0[29] = v1;

  return MEMORY[0x2822009F8](sub_24095BBC8, v2, v1);
}

uint64_t sub_24095BBC8()
{
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  v0[30] = __swift_project_value_buffer(v1, qword_27E50C4C0);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C28C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AgeMigrationViewModel did finish migration step. Clearing pendingDOB which should clear the CFU", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = objc_opt_self();
  v0[31] = v5;
  v6 = [v5 defaultStore];
  v0[32] = v6;
  if (v6)
  {
    v7 = v6;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_24095BDC8;
    v8 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6A8, qword_240A36C50);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_240964C08;
    v0[21] = &block_descriptor_172;
    v0[22] = v8;
    [v7 aa:v0 + 18 primaryAppleAccountWithCompletion:?];
    v6 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_24095BDC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_24095C350;
  }

  else
  {
    v5 = sub_24095BEF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24095BEF8()
{
  v1 = v0[26];
  v2 = v0[32];
  v0[34] = v1;

  if (v1)
  {
    v3 = v0[31];
    [v1 aa:0 setPendingDOB:?];
    v4 = [v3 defaultStore];
    v0[35] = v4;
    if (v4)
    {
      v5 = v4;
      v0[10] = v0;
      v0[15] = v0 + 26;
      v0[11] = sub_24095C124;
      v6 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_240A13784;
      v0[21] = &block_descriptor_176;
      v0[22] = v6;
      [v5 saveVerifiedAccount:v1 withCompletionHandler:v0 + 18];
      v4 = v0 + 10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v4);
  }

  else
  {

    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "There is no primary account to clear the pendingDOB", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_24095C124()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 232);
  v4 = *(v1 + 224);
  if (v2)
  {
    v5 = sub_24095C3C8;
  }

  else
  {
    v5 = sub_24095C254;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24095C254()
{
  v2 = v0[34];
  v1 = v0[35];

  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[34];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Finished saving verified account with nil pendingDOB. CFU should be gone.", v7, 2u);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  else
  {

    v3 = v6;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_24095C350()
{
  v1 = *(v0 + 256);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24095C3C8()
{
  v1 = v0[35];
  v2 = v0[34];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24095C44C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

void sub_24095C51C(void *a1)
{
  v2 = v1;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C4C0);
  v5 = a1;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    v10 = v5;
    v11 = [v10 description];
    v12 = sub_240A2BF4C();
    v14 = v13;

    v15 = sub_240925464(v12, v14, v19);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v6, v7, "AgeMigrationViewModel requested termination. VM: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  v19[4] = sub_240963C40;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2409EC704;
  v19[3] = &block_descriptor_72;
  v17 = _Block_copy(v19);
  v18 = v2;

  [v18 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_24095C764(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);

    v3(0, 0);
    return sub_24090C1A0(v3, v4);
  }

  return result;
}

uint64_t sub_24095C7D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_240A2C24C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_240A2C21C();
  v4 = sub_240A2C20C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_2409F6830(0, 0, v2, &unk_240A32EC0, v5);
}

void sub_24095C948(void *a1, char a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_navigationStackFilter);
  v7 = OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController;
  v8 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController);

  v9 = [v8 viewControllers];
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v10 = sub_240A2C16C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A32D10;
  *(inited + 32) = a1;
  v12 = a1;
  sub_24095D914(inited);
  v6(v10);

  v13 = *(v3 + v7);
  v14 = sub_240A2C15C();

  [v13 setViewControllers:v14 animated:a2 & 1];
}

void sub_24095CB28(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController);
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2409EC704;
    v13[3] = &block_descriptor_56;
    v10 = _Block_copy(v13);
    v11 = v7;
    sub_24090C23C(a3, a4);
  }

  else
  {
    v12 = v7;
    v10 = 0;
  }

  [v7 presentViewController:a1 animated:a2 & 1 completion:v10];
  _Block_release(v10);
}

void sub_24095CD00(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUIP33_1BED1CE7895EABE830B4BDDE905BE8B329FilteringNavigationController_underlyingNavigationController);
  if (a2)
  {
    v11[4] = a2;
    v11[5] = a3;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_2409EC704;
    v11[3] = &block_descriptor_7;
    v8 = _Block_copy(v11);
    v9 = v5;
    sub_24090C23C(a2, a3);
  }

  else
  {
    v10 = v5;
    v8 = 0;
  }

  [v5 dismissViewControllerAnimated:a1 & 1 completion:v8];
  _Block_release(v8);
}

id sub_24095CF58(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_24095CFE0(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration(0));
  swift_unknownObjectRetain();
  v5 = [v4 init];
  v6 = [objc_allocWithZone(MEMORY[0x277D08348]) init];
  v7 = [objc_opt_self() sharedInstance];
  v8 = type metadata accessor for ConnectToFamilyViewController();
  v9 = objc_allocWithZone(v8);
  v37[3] = sub_2409194E8(0, &qword_27E50C6C0, 0x277CF0130);
  v37[4] = MEMORY[0x277CEDE48];
  v37[0] = v7;
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context] = 0;
  v11 = &v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
  *v11 = 0;
  v11[1] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController] = 0;
  v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = 0;
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration] = v5;
  swift_beginAccess();
  v12 = *&v9[v10];
  *&v9[v10] = 0;
  v33 = v7;
  v13 = v5;

  *&v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider] = v6;
  sub_240919A14(v37, &v9[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager]);
  swift_beginAccess();
  v14 = *v11;
  v15 = v11[1];
  *v11 = sub_240964B40;
  v11[1] = v3;
  v32 = v6;

  sub_24090C1A0(v14, v15);
  sub_240919A14(v37, &v36);
  v35[0] = 0;
  v35[1] = 0;
  v35[2] = v13;
  sub_240949ECC();
  v16 = sub_240A2BF1C();

  sub_24094A010();
  v17 = sub_240A2BF1C();

  v34.receiver = v9;
  v34.super_class = v8;
  v18 = objc_msgSendSuper2(&v34, sel_initWithTitle_detailText_symbolName_contentLayout_, v16, v17, 0, 3);

  v19 = v18;
  v20 = [v19 buttonTray];
  v21 = [objc_opt_self() boldButton];
  sub_24094A27C();
  v22 = sub_240A2BF1C();

  [v21 setTitle:v22 forState:0];

  v23 = sub_24094A55C(0);
  [v21 addAction:v23 forControlEvents:64];

  [v20 addButton_];
  v24 = [v19 buttonTray];

  v25 = [objc_opt_self() linkButton];
  sub_24094A874();
  v26 = sub_240A2BF1C();

  [v25 setTitle:v26 forState:0];

  v27 = sub_24094AAD8(0);
  [v25 addAction:v27 forControlEvents:64];

  [v24 addButton_];
  v28 = v19;
  v29 = [v28 navigationItem];
  v30 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v28 action:sel_cancelButtonAction];

  [v29 setLeftBarButtonItem_];

  sub_2409648F0(v35);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v28;
}

void sub_24095D4C0(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CEDE80]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v6 = sub_240A2BE9C();
    v8 = [v5 initWithAuthResults_];

    v7 = v8;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    if (!a3)
    {
      goto LABEL_13;
    }
  }

  v9 = v7;
  if ([a3 respondsToSelector_])
  {
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [a3 shieldSetupDidFinishWithResult:v9 viewControllersToRemove:0 error:a1];
  }

  else
  {
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [a3 shieldSetupDidFinishWithResult:v9 error:a1];
  }

  v7 = a1;
LABEL_13:
}

uint64_t sub_24095D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240964AEC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24095D66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240964AEC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24095D6D0(uint64_t a1)
{
  sub_240964AEC();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_24095D6F8()
{
  result = sub_240A2BFEC();
  qword_27E5161F0 = result;
  *algn_27E5161F8 = v1;
  return result;
}

uint64_t sub_24095D734()
{
  result = sub_240A2BFEC();
  qword_27E516200 = result;
  *algn_27E516208 = v1;
  return result;
}

uint64_t sub_24095D770()
{
  result = sub_240A2BFEC();
  qword_27E516210 = result;
  *algn_27E516218 = v1;
  return result;
}

uint64_t sub_24095D7AC()
{
  result = sub_240A2BFDC();
  qword_27E516220 = result;
  *algn_27E516228 = v1;
  return result;
}

uint64_t sub_24095D7E8()
{
  result = sub_240A2BFEC();
  qword_27E516230 = result;
  *algn_27E516238 = v1;
  return result;
}

uint64_t sub_24095D824()
{
  result = sub_240A2BFEC();
  qword_27E516240 = result;
  *algn_27E516248 = v1;
  return result;
}

uint64_t sub_24095D860()
{
  result = sub_240A2BFEC();
  qword_27E516250 = result;
  *algn_27E516258 = v1;
  return result;
}

uint64_t sub_24095D89C()
{
  result = sub_240A2BFEC();
  qword_27E516260 = result;
  *algn_27E516268 = v1;
  return result;
}

uint64_t sub_24095D8D8()
{
  result = sub_240A2BFEC();
  qword_27E516270 = result;
  *algn_27E516278 = v1;
  return result;
}

uint64_t sub_24095D914(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_240A2C59C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_240A2C59C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_24095DA04(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_24095DAC0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_24095DA04(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_240A2C59C();
    }

    result = sub_240A2C49C();
    *v2 = result;
  }

  return result;
}

uint64_t sub_24095DAC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_240A2C59C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_240A2C59C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24091CE28(&qword_27E50C5F8, &qword_27E50C5F0, &qword_240A32E08, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C5F0, &qword_240A32E08);
            v9 = sub_24095DC74(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_24095DC74(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CCD150](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_24095DCF4;
  }

  __break(1u);
  return result;
}

id sub_24095DCFC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  v47[3] = a9;
  v47[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a5, a9);
  v18 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context] = 0;
  v19 = &a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler];
  *v19 = 0;
  v19[1] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_originatingNavController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_onboardingSignInController] = 0;
  a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_isFamilyInviteAvailable] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_childSetupController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_signInController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_animationController] = 0;
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_shieldFlowContext] = 0;
  swift_unknownObjectWeakInit();
  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration] = a1;
  swift_beginAccess();
  v20 = *&a8[v18];
  *&a8[v18] = a2;
  v21 = a1;
  v22 = a2;

  *&a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider] = a4;
  sub_240919A14(v47, &a8[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_accountManager]);
  swift_beginAccess();
  v23 = *v19;
  v24 = v19[1];
  *v19 = a6;
  v19[1] = a7;
  swift_unknownObjectRetain();
  v43 = a7;
  sub_24090C23C(a6, a7);
  sub_24090C1A0(v23, v24);
  sub_240919A14(v47, &v46);
  v45[0] = a2;
  v45[1] = a3;
  v45[2] = v21;
  v41 = a3;
  sub_240949ECC();
  v25 = sub_240A2BF1C();

  sub_24094A010();
  v26 = sub_240A2BF1C();

  v44.receiver = a8;
  v44.super_class = type metadata accessor for ConnectToFamilyViewController();
  v27 = objc_msgSendSuper2(&v44, sel_initWithTitle_detailText_symbolName_contentLayout_, v25, v26, 0, 3);

  v28 = v27;
  v29 = [v28 buttonTray];
  v30 = [objc_opt_self() boldButton];
  sub_24094A27C();
  v31 = sub_240A2BF1C();

  [v30 setTitle:v31 forState:0];

  v32 = sub_24094A55C(a3);
  [v30 addAction:v32 forControlEvents:64];

  [v29 addButton_];
  v33 = [v28 buttonTray];

  v34 = [objc_opt_self() linkButton];
  sub_24094A874();
  v35 = sub_240A2BF1C();

  [v34 setTitle:v35 forState:0];

  v36 = sub_24094AAD8(a3);
  [v34 addAction:v36 forControlEvents:64];

  [v33 addButton_];
  if (a3)
  {
    v37 = v41;
  }

  else
  {
    v38 = v28;
    v39 = [v38 navigationItem];
    v37 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v38 action:sel_cancelButtonAction];

    [v39 setLeftBarButtonItem_];
  }

  sub_24090C1A0(a6, v43);
  sub_2409648F0(v45);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v28;
}

uint64_t sub_24095E1A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_24094B690(a1, v4, v5, v6);
}

uint64_t sub_24095E258(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_240A295AC();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_240A2C21C();
  v2[25] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[26] = v5;
  v2[27] = v4;

  return MEMORY[0x2822009F8](sub_24095E364, v5, v4);
}

uint64_t sub_24095E364()
{
  v17 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = sub_240A2B00C();
  v0[28] = __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_240A2BF4C();
    v10 = sub_240925464(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2408FE000, v4, v5, "Checking if endpoint: %s is available", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v11 = v0[23];
  v13 = v0[18];
  v12 = v0[19];
  v0[2] = v0;
  v0[7] = v11;
  v0[3] = sub_24095E5B4;
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C618, &qword_240A32E18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24094BD9C;
  v0[13] = &block_descriptor_60;
  v0[14] = v14;
  [v13 URLForEndpoint:v12 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24095E5B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_24095E9A0;
  }

  else
  {
    v5 = sub_24095E6E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24095E6E4()
{
  v31 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];

  (*(v5 + 32))(v1, v2, v4);
  (*(v5 + 16))(v3, v1, v4);
  v7 = v6;
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  if (v10)
  {
    v29 = v0[24];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v15 = 136315394;
    v16 = sub_240A2BF4C();
    v18 = sub_240925464(v16, v17, &v30);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    sub_24096471C(&qword_27E50C628, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_240A2C62C();
    v21 = v20;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = sub_240925464(v19, v21, &v30);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_2408FE000, v8, v9, "Endpoint %s is available: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v28, -1, -1);
    MEMORY[0x245CCDDB0](v15, -1, -1);

    v22(v29, v14);
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v12, v14);
    v24(v11, v14);
  }

  v25 = v0[1];
  v26 = v0[29] == 0;

  return v25(v26);
}

uint64_t sub_24095E9A0()
{
  v21 = v0;
  v1 = v0[29];
  v2 = v0[19];

  swift_willThrow();
  v3 = v2;
  v4 = v1;
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C2AC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[29];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    v12 = sub_240A2BF4C();
    v14 = sub_240925464(v12, v13, &v20);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_2408FE000, v5, v6, "Unable to check if endpoint: %s is available: %@", v9, 0x16u);
    sub_240919300(v10, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x245CCDDB0](v11, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];
  v18 = v0[29] == 0;

  return v17(v18);
}

void sub_24095EBB0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_240A2BF4C();
  if (*(a1 + 16))
  {
    v6 = sub_240925A1C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a1 + 56) + 8 * v6);
      v10 = [v9 error];
      if (v10)
      {
        v11 = v10;
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v12 = sub_240A2B00C();
        __swift_project_value_buffer(v12, qword_27E50C4C0);
        v13 = v11;
        v14 = sub_240A2AFFC();
        v15 = sub_240A2C2AC();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          v18 = v13;
          v19 = _swift_stdlib_bridgeErrorToNSError();
          *(v16 + 4) = v19;
          *v17 = v19;
          _os_log_impl(&dword_2408FE000, v14, v15, "ConnectToFamilyViewController - Sign in controller came back with %@", v16, 0xCu);
          sub_240919300(v17, &unk_27E50B730, &qword_240A30CE0);
          MEMORY[0x245CCDDB0](v17, -1, -1);
          MEMORY[0x245CCDDB0](v16, -1, -1);
        }

        v20 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
        swift_beginAccess();
        v21 = *v20;
        if (*v20)
        {
          v22 = *(v20 + 8);

          v23 = [v9 error];
          v21();

          sub_24090C1A0(v21, v22);
        }

        else
        {
        }
      }

      else
      {
        if (qword_27E50AEE0 != -1)
        {
          swift_once();
        }

        v34 = sub_240A2B00C();
        __swift_project_value_buffer(v34, qword_27E50C4C0);

        v35 = sub_240A2AFFC();
        v36 = sub_240A2C28C();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v45[0] = v38;
          *v37 = 136315138;
          sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);
          v39 = sub_240A2BECC();
          v41 = sub_240925464(v39, v40, v45);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_2408FE000, v35, v36, "ConnectToFamilyViewController - Sign in controller succeeded with results: %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x245CCDDB0](v38, -1, -1);
          MEMORY[0x245CCDDB0](v37, -1, -1);
        }

        v42 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
        swift_beginAccess();
        v43 = *v42;
        if (*v42)
        {
          v44 = *(v42 + 8);

          v43(0, MEMORY[0x277D84F98]);
          sub_24090C1A0(v43, v44);
        }
      }

      return;
    }
  }

  else
  {
  }

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v24 = sub_240A2B00C();
  __swift_project_value_buffer(v24, qword_27E50C4C0);
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C2AC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2408FE000, v25, v26, "ConnectToFamilyViewController - Sign in controller called back without cloud result.", v27, 2u);
    MEMORY[0x245CCDDB0](v27, -1, -1);
  }

  v28 = v2 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v29 = *v28;
  if (*v28)
  {
    v30 = *(v28 + 8);
    v31 = sub_240A2976C();
    sub_24096471C(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277CED2D0], v31);

    v29(v32, 0);
    sub_24090C1A0(v29, v30);
  }
}

void _s14AppleIDSetupUI29ConnectToFamilyViewControllerC016onboardingSignInH9DidCancelyySo012UINavigationH0CF_0()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "ConnectToFamilyViewController - Sign in controller skipped.", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
  }
}

uint64_t sub_24095F278()
{
  v1[4] = v0;
  v1[5] = sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_24095F314, v3, v2);
}

uint64_t sub_24095F314()
{
  p_super_class = [objc_opt_self() defaultStore];
  if (p_super_class)
  {
    v9 = p_super_class;
    receiver = v0[2].receiver;
    v11 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];
    v0[4].super_class = v11;

    [(objc_class *)v11 setDelegate:receiver];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_240A32D10;
    v13 = objc_allocWithZone(MEMORY[0x277CF0390]);
    v14 = v11;
    *(v12 + 32) = [v13 init];
    v15 = objc_allocWithZone(MEMORY[0x277CECA58]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7B8, &unk_240A33140);
    v16 = sub_240A2C15C();

    v17 = [v15 initWithAccountManager:v14 presenter:receiver hooks:v16];
    v0[5].receiver = v17;

    v18 = type metadata accessor for StolenDeviceProtectionViewModel();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
    *v20 = 0;
    *(v20 + 1) = 0;
    *&v19[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_remoteUIPresenter] = v17;
    v0[1].receiver = v19;
    v0[1].super_class = v18;
    v21 = v17;
    v22 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[5].super_class = v22;
    [v21 setDelegate_];
    v23 = sub_240A2C20C();
    v0[6].receiver = v23;
    v24 = swift_task_alloc();
    v0[6].super_class = v24;
    *(v24 + 16) = v22;
    v25 = swift_task_alloc();
    v0[7].receiver = v25;
    *v25 = v0;
    v25[1] = sub_24095F5C0;
    v3 = MEMORY[0x277D85700];
    v8 = MEMORY[0x277D839B0];
    v6 = sub_240964764;
    p_super_class = &v0[7].super_class;
    v5 = 0x8000000240A3C630;
    v2 = v23;
    v4 = 0xD000000000000029;
    v7 = v24;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822007B8](p_super_class, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24095F5C0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24095F720, v3, v2);
}

uint64_t sub_24095F720()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);

  v3 = *(v0 + 120);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24095F7A4(uint64_t a1)
{
  v2 = sub_240A2AC2C();
  if (!*(a1 + 16))
  {

LABEL_8:
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v14 = sub_240A2B00C();
    __swift_project_value_buffer(v14, qword_27E50C4C0);
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "No IDMS tokens. Cannot get PLT", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    return 0;
  }

  v4 = sub_240925A1C(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_240913DC0(*(a1 + 56) + 32 * v4, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7B0, &unk_240A33130);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = sub_240A2AC3C();
  if (*(v18 + 16))
  {
    v9 = sub_240925A1C(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v18 + 56) + 16 * v9);

      return v12;
    }
  }

  else
  {
  }

  return 0;
}

char *sub_24095F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelUpdate;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7A0, &qword_240A33100);
  v11 = *(*(v10 - 8) + 56);
  v11(&a5[v9], 1, 1, v10);
  v11(&a5[v9], 1, 1, v10);
  v12 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__modelSender];
  *v12 = 0;
  v12[1] = 0;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v14 = result;
    v31 = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v32 = MEMORY[0x277CEDE68];
    *&v30 = v14;
    sub_24090C218(&v30, &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__urlBag]);
    v15 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
    v16 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
    v17 = *(*(v16 - 8) + 56);
    v17(&a5[v15], 1, 1, v16);
    v17(&a5[v15], 1, 1, v16);
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter] = 0;
    v18 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate];
    *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *(v18 + 1) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    sub_240A2971C();
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v19 = result;
      v20 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

      *&a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager] = v20;
      v21 = &a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel_ageMigrationController];
      v22 = MEMORY[0x277CEDCE0];
      *v21 = a1;
      v21[1] = v22;
      v23 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
      v24 = sub_240A2A39C();
      v25 = *(v24 - 8);
      (*(v25 + 16))(&a5[v23], a2, v24);
      swift_unknownObjectRetain();
      sub_24090C1F0(v18);
      *(v18 + 1) = a4;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      a5[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay] = 0;
      v29.receiver = a5;
      v29.super_class = type metadata accessor for AgeMigrationViewModel(0);
      v26 = objc_msgSendSuper2(&v29, sel_init);
      swift_getKeyPath();
      *&v30 = v26;
      sub_24096471C(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
      v27 = v26;
      sub_240A296EC();

      v28 = *&v27[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager];
      [v28 setDelegate_];

      (*(v25 + 8))(a2, v24);
      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24095FD70(uint64_t a1)
{
  v50 = a1;
  v48 = type metadata accessor for AgeMigrationView(0) - 8;
  v1 = MEMORY[0x28223BE20](v48);
  v49 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v46 = (&v44 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v44 - v5;
  v6 = sub_240A2975C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C790, &unk_240A35770);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_240A2A39C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  sub_240A2A38C();
  v20 = sub_240A29A0C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12, v50, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_240A2A37C();
  (*(v7 + 104))(v9, *MEMORY[0x277CED258], v6);
  sub_240A2A2CC();
  sub_240A2AABC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  v22 = sub_240A2B01C();
  (*(*(v22 - 8) + 56))(v51, 1, 1, v22);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v23 = sub_240A2AAAC();
  v50 = v14;
  v51 = v13;
  (*(v14 + 16))(v17, v19, v13);
  v24 = objc_allocWithZone(type metadata accessor for AgeMigrationViewModel(0));

  v25 = v45;
  v26 = v45;
  v47 = v23;
  v27 = sub_24095F97C(v23, v17, v25, &off_28528D990, v24);

  v28 = *&v26[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel];
  *&v26[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationViewModel] = v27;
  v29 = v27;

  KeyPath = swift_getKeyPath();
  v31 = v46;
  *v46 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_24096471C(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  v32 = v29;
  sub_240A2BD9C();
  v33 = objc_allocWithZone(type metadata accessor for AgeMigrationHostingController(0));
  sub_24092F130(v31, v49);
  v34 = sub_240A2B5EC();
  sub_24092F194(v31);
  v35 = *&v26[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController];
  *&v26[OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_ageMigrationHostingController] = v34;
  v36 = v34;

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v37 = sub_240A2B00C();
  __swift_project_value_buffer(v37, qword_27E50C4C0);
  v38 = sub_240A2AFFC();
  v39 = sub_240A2C29C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2408FE000, v38, v39, "Pushing AgeMigrationView", v40, 2u);
    MEMORY[0x245CCDDB0](v40, -1, -1);
  }

  v41 = [v26 navigationController];
  if (v41)
  {
    v42 = v41;
    [v41 pushViewController:v36 animated:1];

    return (*(v50 + 8))(v19, v51);
  }

  else
  {
    (*(v50 + 8))(v19, v51);
  }
}

uint64_t sub_2409603D0()
{
  v1[25] = v0;
  v2 = sub_240A2B00C();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C760, &qword_240A330C8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C768, &qword_240A330D0);
  v1[31] = swift_task_alloc();
  v3 = sub_240A298BC();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v4 = sub_240A2986C();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();
  v5 = sub_240A2998C();
  v1[38] = v5;
  v1[39] = *(v5 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v6 = sub_240A2987C();
  v1[42] = v6;
  v1[43] = *(v6 - 8);
  v1[44] = swift_task_alloc();
  sub_240A294BC();
  v1[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C770, &qword_240A330D8);
  v1[46] = swift_task_alloc();
  v7 = sub_240A29A0C();
  v1[47] = v7;
  v1[48] = *(v7 - 8);
  v1[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB78, &qword_240A32E80);
  v1[50] = swift_task_alloc();
  v8 = sub_240A299DC();
  v1[51] = v8;
  v1[52] = *(v8 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  sub_240A2C21C();
  v1[55] = sub_240A2C20C();
  v10 = sub_240A2C1BC();
  v1[56] = v10;
  v1[57] = v9;

  return MEMORY[0x2822009F8](sub_24096081C, v10, v9);
}

uint64_t sub_24096081C()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  sub_240950F64(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[50];

    sub_240919300(v4, &qword_27E50BB78, &qword_240A32E80);
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[26], qword_27E50C4C0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v5, v6, "No primary account ID, cannot begin age migration", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v8 = v0[25];

    v9 = v8 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);
      sub_240926FD4();
      v12 = swift_allocError();
      *v13 = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0;

      v10(v12, 0);
      sub_24090C1A0(v10, v11);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[52] + 32))(v0[54], v0[50], v0[51]);
    v16 = swift_task_alloc();
    v0[58] = v16;
    *v16 = v0;
    v16[1] = sub_240960B60;

    return sub_24095F278();
  }
}

uint64_t sub_240960B60()
{
  v1 = *v0;

  v2 = *(v1 + 456);
  v3 = *(v1 + 448);

  return MEMORY[0x2822009F8](sub_240960C80, v3, v2);
}

uint64_t sub_240960C80()
{
  v1 = [*(v0 + 200) buttonTray];
  v2 = [v1 allButtons];

  *(v0 + 472) = sub_2409194E8(0, &qword_27E50C6D8, 0x277D37690);
  v3 = sub_240A2C16C();

  if (v3 >> 62)
  {
    result = sub_240A2C59C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245CCD150](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
LABEL_9:

  [v6 showsBusyIndicator];

  v7 = swift_task_alloc();
  *(v0 + 480) = v7;
  *v7 = v0;
  v7[1] = sub_240960E00;
  v8 = *(v0 + 432);

  return sub_24095215C(v8);
}

uint64_t sub_240960E00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 456);
  v6 = *(v3 + 448);
  if (v1)
  {
    v7 = sub_2409620D0;
  }

  else
  {
    v7 = sub_240960F44;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_240960F44()
{
  v36 = v0;
  v1 = v0[61];
  if (!v1)
  {
    v1 = sub_24092624C(MEMORY[0x277D84F90]);
  }

  v2 = sub_240A1E87C(v1);
  v0[63] = v2;

  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[26], qword_27E50C4C0);

  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v35 = v6;
    *v5 = 136315138;
    v7 = sub_240A2BECC();
    v9 = sub_240925464(v7, v8, &v35);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2408FE000, v3, v4, "Silent auth completed successfully with results: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v10 = v0[46];
  v12 = v0[43];
  v11 = v0[44];
  v13 = v0[42];
  (*(v0[52] + 16))(v0[53], v0[54], v0[51]);
  v14 = sub_240A298DC();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_240A294AC();
  v15 = *MEMORY[0x277CED3A0];
  v16 = *(v12 + 104);
  v0[64] = v16;
  v0[65] = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v11, v15, v13);
  sub_240A299EC();
  v0[66] = sub_24095F7A4(v2);
  v0[67] = v17;
  if (v17)
  {
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C29C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Silent auth obtained PLT from response", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    v0[68] = v21;
    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_24096154C;
    v22 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C780, &qword_240A330E8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240964C08;
    v0[13] = &block_descriptor_266;
    v0[14] = v22;
    [v21 anisetteDataWithCompletion_];
    v23 = (v0 + 2);

    return MEMORY[0x282200938](v23);
  }

  v24 = v0[25];
  sub_24095FD70(v0[49]);
  v25 = [v24 buttonTray];
  v26 = [v25 allButtons];

  v27 = sub_240A2C16C();
  if (v27 >> 62)
  {
    v23 = sub_240A2C59C();
    if (v23)
    {
      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  v23 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x245CCD150](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x282200938](v23);
    }

    v28 = *(v27 + 32);
  }

  v29 = v28;

  [v29 hidesBusyIndicator];

LABEL_21:
  v30 = v0[54];
  v31 = v0[51];
  v32 = v0[52];
  (*(v0[48] + 8))(v0[49], v0[47]);
  (*(v32 + 8))(v30, v31);

  v33 = v0[1];

  return v33();
}

uint64_t sub_24096154C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 552) = v2;
  if (v2)
  {

    v3 = *(v1 + 448);
    v4 = *(v1 + 456);
    v5 = sub_240962474;
  }

  else
  {
    v3 = *(v1 + 448);
    v4 = *(v1 + 456);
    v5 = sub_240961670;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

id sub_240961670()
{
  v1 = *(v0 + 192);
  if (!v1)
  {

    sub_240A2AE9C();
    v29 = sub_240A2AFFC();
    v30 = sub_240A2C2AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2408FE000, v29, v30, "Unable to get anisette data", v31, 2u);
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    v32 = *(v0 + 544);
    v34 = *(v0 + 384);
    v33 = *(v0 + 392);
    v35 = *(v0 + 376);
    v37 = *(v0 + 216);
    v36 = *(v0 + 224);
    v38 = *(v0 + 208);

    (*(v37 + 8))(v36, v38);
    sub_240926FD4();
    v27 = swift_allocError();
    *v39 = xmmword_240A32D20;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0;
    *(v39 + 16) = 0;
    swift_willThrow();

    (*(v34 + 8))(v33, v35);
LABEL_12:
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 208), qword_27E50C4C0);
    v40 = v27;
    v41 = sub_240A2AFFC();
    v42 = sub_240A2C2AC();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v27;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_2408FE000, v41, v42, "Failed to perform authentication or migration: %@", v43, 0xCu);
      sub_240919300(v44, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v44, -1, -1);
      MEMORY[0x245CCDDB0](v43, -1, -1);
    }

    v47 = *(v0 + 200);

    v48 = [v47 buttonTray];
    v49 = [v48 allButtons];

    v50 = sub_240A2C16C();
    if (v50 >> 62)
    {
      if (sub_240A2C59C())
      {
        goto LABEL_18;
      }
    }

    else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v50 & 0xC000000000000001) != 0)
      {
        v51 = MEMORY[0x245CCD150](0, v50);
        goto LABEL_21;
      }

      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v51 = *(v50 + 32);
LABEL_21:
        v52 = v51;
LABEL_30:
        v68 = *(v0 + 200);

        [v52 hidesBusyIndicator];

        v69 = v68 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
        swift_beginAccess();
        v70 = *v69;
        v71 = *(v0 + 432);
        v72 = *(v0 + 408);
        v73 = *(v0 + 416);
        if (*v69)
        {
          v74 = *(v69 + 8);
          v75 = v27;
          sub_24090C23C(v70, v74);
          v70(v27, 0);

          sub_24090C1A0(v70, v74);
        }

        (*(v73 + 8))(v71, v72);
        goto LABEL_38;
      }

      __break(1u);
LABEL_35:
      result = sub_240A2C59C();
      if (!result)
      {
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v52 = 0;
    goto LABEL_30;
  }

  result = [*(v0 + 192) machineID];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = result;
  sub_240A2BF4C();

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v4 = result;
  v6 = *(v0 + 320);
  v5 = *(v0 + 328);
  v8 = *(v0 + 304);
  v7 = *(v0 + 312);
  sub_240A2BF4C();

  v89 = v1;
  [v1 routingInfo];
  sub_240A2997C();
  (*(v7 + 16))(v6, v5, v8);
  sub_240A2984C();
  result = [objc_opt_self() currentDevice];
  if (!result)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v13 = *(v0 + 240);
  v12 = *(v0 + 248);

  v14 = sub_240A29AAC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_240A2C36C();

  sub_240919300(v13, &qword_27E50C760, &qword_240A330C8);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v15 = *(v0 + 248);

    sub_240919300(v15, &qword_27E50C768, &qword_240A330D0);
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Unable to get device info", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v19 = *(v0 + 384);
    v90 = *(v0 + 376);
    v92 = *(v0 + 392);
    v86 = *(v0 + 328);
    v20 = *(v0 + 312);
    v84 = *(v0 + 544);
    v85 = *(v0 + 304);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);
    v23 = *(v0 + 280);
    v24 = *(v0 + 232);
    v26 = *(v0 + 208);
    v25 = *(v0 + 216);

    (*(v25 + 8))(v24, v26);
    sub_240926FD4();
    v27 = swift_allocError();
    *v28 = xmmword_240A32D20;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 16) = 0;
    swift_willThrow();

    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v86, v85);
    (*(v19 + 8))(v92, v90);
    goto LABEL_12;
  }

  v82 = *(v0 + 536);
  v83 = *(v0 + 512);
  v53 = *(v0 + 352);
  v80 = *(v0 + 528);
  v81 = *(v0 + 336);
  v93 = *(v0 + 328);
  v87 = *(v0 + 312);
  v88 = *(v0 + 544);
  v91 = *(v0 + 304);
  v54 = *(v0 + 288);
  v55 = *(v0 + 296);
  v57 = *(v0 + 272);
  v56 = *(v0 + 280);
  v58 = *(v0 + 256);
  v59 = *(v0 + 264);
  (*(v59 + 32))(v57, *(v0 + 248), v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DD00, &unk_240A330F0);
  v61 = *(v60 + 48);
  v62 = (v53 + *(v60 + 64));
  (*(v54 + 16))(v53, v55, v56);
  (*(v59 + 16))(v53 + v61, v57, v58);
  *v62 = v80;
  v62[1] = v82;
  v83(v53, *MEMORY[0x277CED390], v81);
  sub_240A298FC();

  (*(v59 + 8))(v57, v58);
  (*(v54 + 8))(v55, v56);
  (*(v87 + 8))(v93, v91);
  v63 = *(v0 + 200);
  sub_24095FD70(*(v0 + 392));
  v64 = [v63 buttonTray];
  v65 = [v64 allButtons];

  v50 = sub_240A2C16C();
  if (v50 >> 62)
  {
    goto LABEL_35;
  }

  result = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_24:
  if ((v50 & 0xC000000000000001) != 0)
  {
    v66 = MEMORY[0x245CCD150](0, v50);
    goto LABEL_27;
  }

  if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  v66 = *(v50 + 32);
LABEL_27:
  v67 = v66;

  [v67 hidesBusyIndicator];

LABEL_37:
  v76 = *(v0 + 432);
  v77 = *(v0 + 408);
  v78 = *(v0 + 416);
  (*(*(v0 + 384) + 8))(*(v0 + 392), *(v0 + 376));
  (*(v78 + 8))(v76, v77);
LABEL_38:

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_2409620D0()
{

  v1 = v0[62];
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[26], qword_27E50C4C0);
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2408FE000, v3, v4, "Failed to perform authentication or migration: %@", v5, 0xCu);
    sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v9 = v0[25];

  v10 = [v9 buttonTray];
  v11 = [v10 allButtons];

  v12 = sub_240A2C16C();
  if (v12 >> 62)
  {
    result = sub_240A2C59C();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x245CCD150](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;
LABEL_13:
  v16 = v0[25];

  [v15 hidesBusyIndicator];

  v17 = v16 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v18 = *v17;
  v19 = v0[54];
  v20 = v0[51];
  v21 = v0[52];
  if (*v17)
  {
    v22 = *(v17 + 8);
    v23 = v1;
    sub_24090C23C(v18, v22);
    v18(v1, 0);

    sub_24090C1A0(v18, v22);
  }

  (*(v21 + 8))(v19, v20);

  v24 = v0[1];

  return v24();
}

uint64_t sub_240962474()
{
  v1 = v0[68];
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];

  swift_willThrow();

  (*(v3 + 8))(v2, v4);
  v5 = v0[69];
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[26], qword_27E50C4C0);
  v6 = v5;
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C2AC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2408FE000, v7, v8, "Failed to perform authentication or migration: %@", v9, 0xCu);
    sub_240919300(v10, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  v13 = v0[25];

  v14 = [v13 buttonTray];
  v15 = [v14 allButtons];

  v16 = sub_240A2C16C();
  if (v16 >> 62)
  {
    result = sub_240A2C59C();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    v19 = 0;
    goto LABEL_13;
  }

  result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x245CCD150](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(v16 + 32);
  }

  v19 = v18;
LABEL_13:
  v20 = v0[25];

  [v19 hidesBusyIndicator];

  v21 = v20 + OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_completionHandler;
  swift_beginAccess();
  v22 = *v21;
  v23 = v0[54];
  v24 = v0[51];
  v25 = v0[52];
  if (*v21)
  {
    v26 = *(v21 + 8);
    v27 = v5;
    sub_24090C23C(v22, v26);
    v22(v5, 0);

    sub_24090C1A0(v22, v26);
  }

  (*(v25 + 8))(v23, v24);

  v28 = v0[1];

  return v28();
}

void sub_240962848(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  v9 = a3;
  v10 = [a1 protoAccount];
  if (v10)
  {
    v11 = v10;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50C4C0);
    v13 = v11;
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C29C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v11;
      v18 = v13;
      _os_log_impl(&dword_2408FE000, v14, v15, "Attempting to remove proto account: %@", v16, 0xCu);
      sub_240919300(v17, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    v19 = [v13 accountStore];
    if (v19)
    {
      v20 = v19;
      v21 = swift_allocObject();
      v21[2] = v13;
      v21[3] = sub_240963F68;
      v21[4] = v8;
      v28[4] = sub_240963F74;
      v28[5] = v21;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 1107296256;
      v28[2] = sub_240A1EFE0;
      v28[3] = &block_descriptor_130;
      v22 = _Block_copy(v28);
      v23 = v13;

      [v20 removeAccount:v23 withCompletionHandler:v22];
      _Block_release(v22);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v24 = sub_240A2B00C();
    __swift_project_value_buffer(v24, qword_27E50C4C0);
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C29C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "Asked to remove proto account but none exists, returning early", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    sub_240959044(a2, v9, a4);
  }
}

uint64_t sub_240962BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C740, &unk_240A33098);
    v3 = sub_240A2C45C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_240A2BF4C();
      sub_240A2C72C();
      v27 = v7;
      sub_240A2C09C();
      v8 = sub_240A2C74C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_240A2BF4C();
        v18 = v17;
        if (v16 == sub_240A2BF4C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_240A2C66C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_240962DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = [a1 protoAccount];
  if (v7)
  {
    v8 = v7;
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50C4C0);
    v10 = v8;
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C29C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v8;
      v15 = v10;
      _os_log_impl(&dword_2408FE000, v11, v12, "Attempting to remove proto account: %@", v13, 0xCu);
      sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v14, -1, -1);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    v16 = [v10 accountStore];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v10;
      v18[3] = sub_2409643A4;
      v18[4] = v6;
      v25[4] = sub_240964BC0;
      v25[5] = v18;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 1107296256;
      v25[2] = sub_240A1EFE0;
      v25[3] = &block_descriptor_206;
      v19 = _Block_copy(v25);
      v20 = v10;

      [v17 removeAccount:v20 withCompletionHandler:v19];
      _Block_release(v19);
    }

    else
    {

      __break(1u);
    }
  }

  else
  {
    if (qword_27E50AEE0 != -1)
    {
      swift_once();
    }

    v21 = sub_240A2B00C();
    __swift_project_value_buffer(v21, qword_27E50C4C0);
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2408FE000, v22, v23, "Asked to remove proto account but none exists, returning early", v24, 2u);
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    sub_24095A0A8(a2, a3);
  }
}

id sub_240963180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v38[3] = sub_2409194E8(0, &qword_27E50C6C0, 0x277CF0130);
  v38[4] = MEMORY[0x277CEDE48];
  v38[0] = a2;
  v37[3] = sub_2409194E8(0, &qword_27E50C6C8, 0x277CB8F48);
  v37[4] = MEMORY[0x277CEDE40];
  v37[0] = a3;
  v12 = &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  sub_240919298(a1, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_pendingDOB], &unk_27E50DCE0, &qword_240A32E20);
  sub_240919A14(v38, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountManager]);
  sub_240919A14(v37, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore]);
  *v12 = a4;
  *(v12 + 1) = a5;
  sub_24090C23C(a4, a5);
  sub_240A2BFEC();
  [objc_opt_self() deviceIsiPad];
  sub_240A2BFEC();
  sub_240A2BFEC();
  v13 = sub_240A2BF1C();

  v14 = sub_240A2BF1C();

  v15 = sub_240A2BF1C();
  v36.receiver = a6;
  v36.super_class = type metadata accessor for ChildSafetyFeaturesViewController(0);
  v16 = objc_msgSendSuper2(&v36, sel_initWithTitle_detailText_symbolName_contentLayout_, v13, v14, v15, 2);

  v17 = v16;
  v18 = [v17 buttonTray];
  v19 = [objc_opt_self() boldButton];
  sub_240A2BFEC();
  v20 = sub_240A2BF1C();

  [v19 setTitle:v20 forState:0];

  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_240A2C39C();
  [v19 addAction:v22 forControlEvents:{64, 0, 0, 0, sub_2409642C4, v21}];

  [v18 addButton_];
  sub_240A2BFEC();
  v23 = sub_240A2BF1C();

  sub_240A2BFEC();
  v24 = sub_240A2BF1C();

  v25 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v23 description:v24 symbolName:v25];

  sub_240A2BFEC();
  v26 = sub_240A2BF1C();

  sub_240A2BFEC();
  v27 = sub_240A2BF1C();

  v28 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v26 description:v27 symbolName:v28];

  sub_240A2BFEC();
  v29 = sub_240A2BF1C();

  sub_240A2BFEC();
  v30 = sub_240A2BF1C();

  v31 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v29 description:v30 symbolName:v31];

  sub_240A2BFEC();
  v32 = sub_240A2BF1C();

  v33 = sub_240A2BF1C();

  v34 = sub_240A2BF1C();
  [v17 addBulletedListItemWithTitle:v32 description:v33 symbolName:v34];

  sub_240919300(a1, &unk_27E50DCE0, &qword_240A32E20);
  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return v17;
}

unint64_t _s14AppleIDSetupUI29ConnectToFamilyViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0(void *a1)
{
  v1 = [a1 accountStore];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7D0, &unk_240A315C0);
    inited = swift_initStackObject();
    v4 = MEMORY[0x277CED1A0];
    *(inited + 16) = xmmword_240A305D0;
    v5 = *v4;
    *(inited + 32) = v5;
    *(inited + 40) = v2;
    v6 = v5;
    v7 = sub_2409265DC(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50B9D0, &unk_240A356C0);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];

    return sub_2409265DC(v9);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240963BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void sub_240963C5C()
{
  v1 = v0;
  if (qword_27E50AEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C4C0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Age migration view model requested other options. Presenting secondary action view controller", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = sub_240956298(1);
  [v1 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_240963DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240915E50;

  return sub_240957704(a1, v4, v5, v7, v6);
}

uint64_t sub_240963E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_240963EF4()
{
  result = qword_27E50C650;
  if (!qword_27E50C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C650);
  }

  return result;
}

uint64_t sub_240963F80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_240959BE0(a1, v4, v5, v7, v6);
}

uint64_t sub_240964048(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  return sub_240A2C1CC();
}

void sub_240964124(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >= 0x14)
  {
  }
}

uint64_t objectdestroy_148Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_2409641C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240915E50;

  return sub_24095BB34();
}

uint64_t sub_2409642DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_24095590C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_126Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24096442C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240916360;

  return sub_24095AF3C();
}

uint64_t objectdestroy_123Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24096453C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_240916360;

  return sub_240987D08(a1, a2, v2);
}

uint64_t objectdestroy_99Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24096465C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240916360;

  return sub_24094DB10();
}

uint64_t sub_24096471C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_140Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_240964800(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);

  sub_24095B854(a1, a2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_240964920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_240964968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2409649D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_240964A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_240964A98()
{
  result = qword_27E50C7F0;
  if (!qword_27E50C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C7F0);
  }

  return result;
}

unint64_t sub_240964AEC()
{
  result = qword_27E50C7F8[0];
  if (!qword_27E50C7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E50C7F8);
  }

  return result;
}

uint64_t sub_240964C6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewControllerRepresentable.Coordinator(0, v13, v14, v12);

  a3(v15);
  v17 = sub_240965618(a1, a2, v11, v16);
  (*(v9 + 8))(v11, a5);
  return v17;
}

uint64_t sub_240964D80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + qword_27E516280 + 16));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_240964E4C(void *a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v2;
  v25 = sub_240A2B00C();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ViewControllerRepresentable.Coordinator(0, *(v7 + qword_27E516280), *(v7 + qword_27E516280 + 8), v11);
  v26.receiver = v3;
  v26.super_class = v12;
  v13 = a2 & 1;
  objc_msgSendSuper2(&v26, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  sub_240A2AE7C();
  v14 = a1;
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C28C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v18 = a1;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v13;
    v19 = v14;
    _os_log_impl(&dword_2408FE000, v15, v16, "View did move to window (%@), shouldAppear: %{BOOL}d", v17, 0x12u);
    sub_240915C68(v18);
    MEMORY[0x245CCDDB0](v18, -1, -1);
    v20 = v17;
    v6 = MEMORY[0x277D85000];
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }

  result = (*(v8 + 8))(v10, v25);
  if (a1)
  {
    v22 = *(v3 + *((*v6 & *v3) + qword_27E516280 + 16));

    v22(v3);

    v23 = (v3 + *((*v6 & *v3) + qword_27E516280 + 16));
    *v23 = nullsub_1;
    v23[1] = 0;
  }

  return result;
}

void sub_240965128(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_240964E4C(a3, a4);
}

id sub_24096524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ViewControllerRepresentable.Coordinator(0, *((*MEMORY[0x277D85000] & *v4) + qword_27E516280), *((*MEMORY[0x277D85000] & *v4) + qword_27E516280 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_240965330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409653AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_240964C6C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_2409653E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_240965460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2409654DC(uint64_t a1)
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_24096551C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = (v1 + *(v3 + 16));
  *v4 = v2;
  v4[1] = v5;
  (*(v6 + 16))(&v10 - v7, v8);
  return sub_240A2B5EC();
}

uint64_t sub_240965678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ViewControllerRepresentable(255, a2, a3, a4);
  swift_getWitnessTable();
  sub_240A2B83C();
  sub_240A2B81C();
  return v5;
}

id sub_240965770(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AISDeviceImage();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2409657C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A2969C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[2] = sub_240A2BFAC();
  v16[3] = v8;
  v16[0] = 6513005;
  v16[1] = 0xE300000000000000;
  sub_24091C4F8();
  v9 = sub_240A2C3CC();

  if (v9)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D426A8], v4);
    sub_240A2968C();
    (*(v5 + 8))(v7, v4);
    sub_240A2967C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v12 = sub_240A2BF1C();

    [objc_opt_self() imageNamed:v12 inBundle:v11 compatibleWithTraitCollection:a3];
  }

  else
  {
    if (qword_27E50AFA0 != -1)
    {
      swift_once();
    }

    v13 = qword_27E516340;
    v14 = sub_240A2BF1C();
    v15 = [objc_opt_self() imageNamed:v14 inBundle:v13];

    if (!v15)
    {
      __break(1u);
    }
  }
}

void sub_240965A54(id a1, id a2, uint64_t a3)
{
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C900, &unk_240A334B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_240A296BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    sub_240A296CC();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_240965E64(v12);
LABEL_11:
      sub_240A2AE9C();
      v21 = sub_240A2AFFC();
      v22 = sub_240A2C2AC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2408FE000, v21, v22, "Unable to fetch device image.", v23, 2u);
        MEMORY[0x245CCDDB0](v23, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
      sub_2409657C8(a1, a2, 0);
      return;
    }

LABEL_8:
    v25 = a3;
    (*(v14 + 32))(v16, v12, v13);
    sub_240A296AC();
    if (v17)
    {
      sub_240A2967C();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      v20 = sub_240A2BF1C();

      [objc_opt_self() imageNamed:v20 inBundle:v19 compatibleWithTraitCollection:v25];

      (*(v14 + 8))(v16, v13);
      return;
    }

    (*(v14 + 8))(v16, v13);
    goto LABEL_11;
  }

  if (qword_27E50AFA0 != -1)
  {
    swift_once();
  }

  a2 = qword_27E516340;
  v16 = sub_240A2BF1C();
  a1 = [objc_opt_self() imageNamed:v16 inBundle:a2];

  if (!a1)
  {
    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_240965E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C900, &unk_240A334B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240965EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_240915E50;

  return v9(a1, a2, a3);
}

uint64_t sub_24096602C(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = *v2;
  sub_240A2C21C();
  v3[6] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409660CC, v5, v4);
}

uint64_t sub_2409660CC()
{
  v1 = v0[4];

  v0[3] = off_28528BFC8(v1);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C908, &qword_240A33520));
  v3 = sub_240A2B5EC();
  [v1 showViewController:v3 animated:1];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2409661B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = *v2;
  sub_240A2C21C();
  v3[6] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240966254, v5, v4);
}

uint64_t sub_240966254()
{
  v1 = v0[4];

  v0[3] = off_28528D710(v1);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C908, &qword_240A33520));
  v3 = sub_240A2B5EC();
  [v1 showViewController:v3 animated:1];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24096633C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50C910);
  __swift_project_value_buffer(v0, qword_27E50C910);
  return sub_240A2AE6C();
}

uint64_t sub_240966488(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2409664E8(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___AISSafetySettingsViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

void sub_240966580(void **a1, char a2)
{
  v3 = *a1;
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

id SafetySettingsViewController.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v3[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v3[OBJC_IVAR___AISSafetySettingsViewController_configuration] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v1[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v1[OBJC_IVAR___AISSafetySettingsViewController_configuration] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SafetySettingsViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.__allocating_init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v5[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v5[OBJC_IVAR___AISSafetySettingsViewController_configuration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = 0;
  *&v2[OBJC_IVAR___AISSafetySettingsViewController_context] = a1;
  *&v2[OBJC_IVAR___AISSafetySettingsViewController_configuration] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SafetySettingsViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0, 0);
}

id SafetySettingsViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SafetySettingsViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___AISSafetySettingsViewController_progressHostingController) = 0;
  sub_240A2C58C();
  __break(1u);
}

void sub_240966A24()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for SafetySettingsViewController();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2409674C8();
}

void sub_240966AB4(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SafetySettingsViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  sub_240A2AA1C();
  v4 = sub_240A2AAEC();
  if (v4 == sub_240A2AAEC())
  {
    v5 = [v2 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 isNavigationBarHidden];

      if (v7)
      {
        v8 = [v2 navigationController];
        if (v8)
        {
          v9 = v8;
          [v8 setNavigationBarHidden:0 animated:0];
        }
      }
    }
  }
}

uint64_t sub_240966BEC(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for SafetySettingsViewController();
  v13.receiver = v1;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, sel_viewDidAppear_, a1 & 1);
  v7 = sub_240A2C24C();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_240A2C21C();
  v8 = v1;
  v9 = sub_240A2C20C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_2409230D4(0, 0, v5, &unk_240A33560, v10);
}

uint64_t sub_240966D34()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_240966F38();
}

uint64_t sub_240966F38()
{
  v1[2] = v0;
  sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_240966FD0, v3, v2);
}

uint64_t sub_240966FD0()
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50C910);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Starting to present safety settings...", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = [v5 navigationController];
  v7 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  v0[6] = v7;

  [v7 setPresentationType_];
  v8 = *&v5[OBJC_IVAR___AISSafetySettingsViewController_context];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_240967188;

  return sub_240967B8C(v8);
}

uint64_t sub_240967188(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[8] = a1;

  v5 = swift_task_alloc();
  v3[9] = v5;
  *v5 = v4;
  v5[1] = sub_2409672D8;
  v6 = v3[6];

  return sub_240968EA8(v6, a1);
}

uint64_t sub_2409672D8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_240967400, v4, v3);
}

uint64_t sub_240967400()
{
  v1 = *(v0 + 80);

  if ([v1 success])
  {
    sub_24096835C(1);
  }

  else
  {
    v2 = [*(v0 + 80) error];
    sub_2409684C8(v2);
  }

  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

void sub_2409674C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v57 - v7;
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 systemBackgroundColor];
  [v10 setBackgroundColor_];

  sub_240A2B22C();
  (*(v3 + 16))(v6, v8, v2);
  sub_24096ADFC();
  v57[1] = sub_240A2BCDC();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C908, &qword_240A33520));
  v14 = sub_240A2B5EC();
  v15 = [v14 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v11 clearColor];
  [v16 setBackgroundColor_];

  v18 = [v14 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v14 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  [v21 addSubview_];

  [v14 didMoveToParentViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_240A33530;
  v25 = [v14 view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v57[0] = v8;
  v27 = [v25 topAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v24 + 32) = v31;
  v32 = [v14 view];
  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v1 view];
  if (!v35)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  *(v24 + 40) = v38;
  v39 = [v14 view];
  if (!v39)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = v39;
  v41 = v3;
  v42 = [v39 trailingAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v44 = v43;
  v45 = v2;
  v46 = [v43 trailingAnchor];

  v47 = [v42 constraintEqualToAnchor_];
  *(v24 + 48) = v47;
  v48 = [v14 view];

  if (!v48)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = [v48 bottomAnchor];

  v50 = [v1 view];
  if (v50)
  {
    v51 = v50;
    v52 = objc_opt_self();
    v53 = [v51 bottomAnchor];

    v54 = [v49 constraintEqualToAnchor_];
    *(v24 + 56) = v54;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v55 = sub_240A2C15C();

    [v52 activateConstraints_];

    (*(v41 + 8))(v57[0], v45);
    v56 = *&v1[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController];
    *&v1[OBJC_IVAR___AISSafetySettingsViewController_progressHostingController] = v14;

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_240967AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240916360;

  return sub_240966D34();
}

uint64_t sub_240967B8C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_240A2C21C();
  v2[23] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240967C24, v4, v3);
}

uint64_t sub_240967C24()
{
  v28 = v0;

  v1 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v2 = sub_240968020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = 0x5265674172657375;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xEC00000065676E61;
  *(inited + 48) = v2;
  sub_240926374(inited);
  swift_setDeallocating();
  sub_240919300(v4, &qword_27E50BB00, &unk_240A38260);
  v5 = MEMORY[0x277D837D0];
  v6 = sub_240A2BE9C();

  [v1 setAdditionalParameters_];

  v7 = [v1 additionalParameters];
  if (v7)
  {
    v8 = v7;
    v9 = sub_240A2BEBC();

    sub_240A2AA1C();
    *(v0 + 96) = sub_240A2AADC();
    *(v0 + 120) = v5;
    *(v0 + 104) = v10;
    sub_24091C780((v0 + 96), (v0 + 128));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v9;
    sub_2409F6038((v0 + 128), 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
    if (v9)
    {
      v12 = sub_240A2BE9C();
    }

    else
    {
      v12 = 0;
    }

    [v1 setAdditionalParameters_];
  }

  else
  {
    [v1 setAdditionalParameters_];
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v13 = sub_240A2B00C();
  __swift_project_value_buffer(v13, qword_27E50C910);
  v14 = v1;
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C29C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315138;
    v19 = [v14 additionalParameters];
    if (v19)
    {
      v20 = v19;
      v21 = sub_240A2BEBC();
    }

    else
    {
      v21 = 0;
    }

    *(v0 + 160) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C980, &unk_240A33640);
    v22 = sub_240A2BF9C();
    v24 = sub_240925464(v22, v23, &v27);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2408FE000, v15, v16, "Created circle context with parameters: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x245CCDDB0](v18, -1, -1);
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  v25 = *(v0 + 8);

  return v25(v14);
}

id sub_240968020()
{
  v1 = *(v0 + OBJC_IVAR___AISSafetySettingsViewController_configuration);
  if (v1 && (v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *&v1[v2]))
  {
    v3 = qword_27E50AF30;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50C910);
    v6 = v4;
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *&v1[v2];

      _os_log_impl(&dword_2408FE000, v7, v8, "Using userAgeRange from configuration: %lu", v9, 0xCu);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v12 = *&v1[v2];
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 primaryAuthKitAccount];
    if (v11)
    {
      v6 = v11;
      v12 = [v10 userAgeRangeForAccount:v11];
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v13 = sub_240A2B00C();
      __swift_project_value_buffer(v13, qword_27E50C910);
      v14 = sub_240A2AFFC();
      v15 = sub_240A2C29C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v12;
        _os_log_impl(&dword_2408FE000, v14, v15, "Fetched userAgeRange from primary account: %lu", v16, 0xCu);
        MEMORY[0x245CCDDB0](v16, -1, -1);
      }
    }

    else
    {
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v17 = sub_240A2B00C();
      __swift_project_value_buffer(v17, qword_27E50C910);
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C29C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "No primary account found for age range", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      v12 = 0;
      v6 = v10;
    }
  }

  return v12;
}

void sub_24096835C(char a1)
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C910);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully configured safety settings", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  sub_2409693C4();
  v6 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong safetySettingsDidFinishWithResult:v6 viewControllersToRemove:0 error:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2409684C8(void *a1)
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50C910);
  v3 = a1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = a1;
    v16[0] = v7;
    *v6 = 136315138;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v9 = sub_240A2BF9C();
    v11 = sub_240925464(v9, v10, v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to configure safety settings with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a1)
    {
      a1 = sub_240A2952C();
    }

    [v14 safetySettingsDidFinishWithResult:v12 viewControllersToRemove:0 error:{a1, v15, v16[0]}];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2409686D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240968780;

  return sub_24096A488(a1);
}

uint64_t sub_240968780(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_240968A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240968AAC, v5, v4);
}

uint64_t sub_240968AAC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_240968B80;
  v7 = v0[2];

  return sub_24096A488(v7);
}

uint64_t sub_240968B80(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 48);
  if (v3)
  {
    v11 = sub_240A2952C();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 48), a1 & 1, 0);
  }

  _Block_release(*(v6 + 48));
  v12 = *(v9 + 8);

  return v12();
}

id SafetySettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SafetySettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240968EA8(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  sub_240A2C21C();
  v2[21] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x2822009F8](sub_240968F40, v4, v3);
}

uint64_t sub_240968F40()
{
  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_240A2B00C();
  v0[24] = __swift_project_value_buffer(v2, qword_27E50C910);
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2408FE000, v4, v5, "Performing circle request with context: %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v11 = v0[19];
  v10 = v0[20];

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24096917C;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_8;
  v0[14] = v12;
  [v11 performWithContext:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24096917C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_240969284, v2, v1);
}

uint64_t sub_240969284()
{

  v1 = *(v0 + 144);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    *(v4 + 4) = v1;
    *v5 = v1;
    v6 = v1;
    _os_log_impl(&dword_2408FE000, v2, v3, "Finished performing circle request with response: %@", v4, 0xCu);
    sub_240919300(v5, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v5, -1, -1);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(v1);
}

void sub_2409693C4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 primaryAuthKitAccount];

  if (v1)
  {
    oslog = [objc_allocWithZone(MEMORY[0x277CF02D0]) init];
    [oslog markSafetyScreenSeenForAccount:v1];
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50C910);
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C29C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Successfully marked safety screen as seen for account", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50C910);
    oslog = sub_240A2AFFC();
    v7 = sub_240A2C2AC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v7, "No primary account found to mark safety screen as seen", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }
  }
}

uint64_t sub_2409695E0()
{
  if ((sub_240A2A9DC() & 1) == 0)
  {
    return 0;
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50C910);
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C29C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Safety settings already enabled - not showing safety settings", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_240969834(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C910);
    v5 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v5, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v5, v17, "No account manager provided - not eligible for any flow", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    goto LABEL_23;
  }

  v5 = a3;
  v6 = [v5 userAgeRangeForAccount:a2];
  if (!a1 || a1 == 2)
  {
    if (v6 != 2 && v6 != 1)
    {
      v7 = v6;
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v8 = sub_240A2B00C();
      __swift_project_value_buffer(v8, qword_27E50C910);
      v9 = sub_240A2AFFC();
      v10 = sub_240A2C29C();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 134218242;
      *(v11 + 4) = v7;
      *(v11 + 12) = 2080;
      v13 = sub_240A2AADC();
      v15 = sub_240925464(v13, v14, &v23);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_2408FE000, v9, v10, "Age range %lu not eligible for %s flow - not showing safety settings", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x245CCDDB0](v12, -1, -1);
LABEL_21:
      MEMORY[0x245CCDDB0](v11, -1, -1);
LABEL_22:

LABEL_23:
      return 0;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    if (v6 != 2)
    {
      v20 = v6;
      if (qword_27E50AF30 != -1)
      {
        swift_once();
      }

      v21 = sub_240A2B00C();
      __swift_project_value_buffer(v21, qword_27E50C910);
      v9 = sub_240A2AFFC();
      v22 = sub_240A2C29C();
      if (!os_log_type_enabled(v9, v22))
      {
        goto LABEL_22;
      }

      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v20;
      _os_log_impl(&dword_2408FE000, v9, v22, "Age range %lu not eligible for mini-buddy flow - not showing safety settings", v11, 0xCu);
      goto LABEL_21;
    }

LABEL_16:

    return 1;
  }

  result = sub_240A2C67C();
  __break(1u);
  return result;
}

uint64_t sub_240969B7C(void *a1)
{
  v2 = sub_240A2BF1C();
  v3 = [a1 accountPropertyForKey_];

  if (v3)
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_240919300(v14, &qword_27E50C6D0, &unk_240A33620);
    goto LABEL_13;
  }

  sub_2409194E8(0, &unk_27E50C960, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  v4 = v11;
  if (![v11 BOOLValue])
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50C910);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "User has already seen safety screen - not showing safety settings", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = 1;
LABEL_15:

  return v9;
}

uint64_t sub_240969D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_240A2974C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_240A2C21C();
  v5[10] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240969E58, v8, v7);
}

uint64_t sub_240969E58()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);

  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  (*(v3 + 104))(v1, *MEMORY[0x277CED210], v2);
  LOBYTE(v4) = sub_240A2AACC();
  (*(v3 + 8))(v1, v2);
  if ((v4 & 1) == 0)
  {
    if (qword_27E50AF30 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50C910);
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C29C();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_35;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "ageBasedAccountRestrictions is not enabled - not showing safety settings";
    goto LABEL_34;
  }

  if (qword_27E50AF30 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50C910);
  v7 = v5;
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 16);
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    sub_240A2AA1C();
    *(v11 + 4) = sub_240A2AAEC();

    _os_log_impl(&dword_2408FE000, v8, v9, "Starting shouldPresentSafetySettings checks for flow type: %ld", v11, 0xCu);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  else
  {

    v8 = *(v0 + 16);
  }

  v17 = *(v0 + 32);

  __swift_project_boxed_opaque_existential_0(v17, v17[3]);
  v18 = sub_240A2AD6C();
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();
  v19 = os_log_type_enabled(v13, v14);
  if ((v18 & 1) == 0)
  {
    if (v19)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Network is not reachable - not showing safety settings";
LABEL_34:
      _os_log_impl(&dword_2408FE000, v13, v14, v16, v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

LABEL_35:
    v40 = 0;
    goto LABEL_36;
  }

  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "Network reachability check passed", v20, 2u);
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }

  v21 = *(v0 + 24);

  if (!v21 || (v22 = [*(v0 + 24) primaryAuthKitAccount]) == 0)
  {
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C29C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "No primary account found - not showing safety settings";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v13 = v22;
  v23 = sub_240A2AFFC();
  v24 = sub_240A2C29C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2408FE000, v23, v24, "Primary account check passed", v25, 2u);
    MEMORY[0x245CCDDB0](v25, -1, -1);
  }

  if (sub_2409695E0())
  {
    goto LABEL_35;
  }

  v26 = sub_240A2AFFC();
  v27 = sub_240A2C29C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2408FE000, v26, v27, "ScreenTime settings check passed", v28, 2u);
    MEMORY[0x245CCDDB0](v28, -1, -1);
  }

  v29 = *(v0 + 24);

  v30 = sub_240A2AA1C();
  if ((sub_240969834(v30, v13, v29) & 1) == 0)
  {
    goto LABEL_35;
  }

  v31 = sub_240A2AFFC();
  v32 = sub_240A2C29C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2408FE000, v31, v32, "Age eligibility check passed", v33, 2u);
    MEMORY[0x245CCDDB0](v33, -1, -1);
  }

  if (sub_240969B7C(v13))
  {
    goto LABEL_35;
  }

  v34 = sub_240A2AFFC();
  v35 = sub_240A2C29C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2408FE000, v34, v35, "Safety screen seen check passed", v36, 2u);
    MEMORY[0x245CCDDB0](v36, -1, -1);
  }

  v37 = sub_240A2AFFC();
  v38 = sub_240A2C29C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_2408FE000, v37, v38, "All checks passed - showing safety settings", v39, 2u);
    MEMORY[0x245CCDDB0](v39, -1, -1);
  }

  v40 = 1;
LABEL_36:

  v41 = *(v0 + 8);

  return v41(v40);
}

uint64_t sub_24096A488(uint64_t a1)
{
  v1[17] = a1;
  sub_240A2C21C();
  v1[18] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[19] = v3;
  v1[20] = v2;

  return MEMORY[0x2822009F8](sub_24096A520, v3, v2);
}

uint64_t sub_24096A520()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 168) = v1;
  v2 = [objc_opt_self() sharedNetworkObserver];
  v3 = sub_2409194E8(0, &qword_27E50EE10, 0x277CF0278);
  v4 = MEMORY[0x277CEDE58];
  *(v0 + 40) = v3;
  *(v0 + 48) = v4;
  *(v0 + 16) = v2;
  v5 = sub_240A2A12C();
  v6 = sub_240A2A11C();
  v7 = MEMORY[0x277CED7C0];
  *(v0 + 56) = v6;
  *(v0 + 80) = v5;
  *(v0 + 88) = v7;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_24096A694;
  v9 = *(v0 + 136);

  return sub_240969D5C(v9, v1, v0 + 16, v0 + 56, v0 + 96);
}

uint64_t sub_24096A694(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = *(v4 + 168);
    sub_240919300(v4 + 96, &unk_27E50C950, &qword_240A38240);

    v6 = *(v4 + 152);
    v7 = *(v4 + 160);
    v8 = sub_24096A874;
  }

  else
  {
    v9 = *(v4 + 168);
    *(v4 + 192) = a1 & 1;
    sub_240919300(v4 + 96, &unk_27E50C950, &qword_240A38240);

    __swift_destroy_boxed_opaque_existential_0((v4 + 56));
    __swift_destroy_boxed_opaque_existential_0((v4 + 16));
    v6 = *(v4 + 152);
    v7 = *(v4 + 160);
    v8 = sub_24096A80C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24096A80C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 192);

  return v1(v2);
}

uint64_t sub_24096A874()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];

  return v1(0);
}

uint64_t dispatch thunk of SafetySettingsViewController.presentSafetySettings()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240916360;

  return v5();
}

uint64_t dispatch thunk of SafetySettingsViewController.shouldPresentSafetySettings(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24096AC20;

  return v7(a1);
}

uint64_t sub_24096AC20(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24096AD1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_240968A10(v2, v3, v4);
}

unint64_t sub_24096ADFC()
{
  result = qword_27E50C990;
  if (!qword_27E50C990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BDD0, &unk_240A35010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50C990);
  }

  return result;
}

uint64_t AISFlowStepComplete.prepareForPresentation()()
{
  v1[5] = v0;
  sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_24096AEF8, v3, v2);
}

uint64_t sub_24096AEF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = v0[5];
    v3 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI19AISFlowStepComplete_authResponse);
    v6 = objc_allocWithZone(sub_240A2AB2C());
    v7 = v5;
    v8 = sub_240A2AB0C();
    v0[10] = v8;
    v12 = (*(v3 + 48) + **(v3 + 48));
    v9 = swift_task_alloc();
    v0[11] = v9;
    *v9 = v0;
    v9[1] = sub_24096B0C4;

    return v12(v8, ObjectType, v3);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24096B0C4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  swift_unknownObjectRelease();

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24096B220, v4, v3);
}

uint64_t sub_24096B220()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AISFlowStepComplete.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AISFlowStepComplete.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AISFlowStepComplete(uint64_t a1)
{
  result = qword_27E50C9B0;
  if (!qword_27E50C9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for AgeMigrationView(uint64_t a1)
{
  result = qword_27E50C9E8;
  if (!qword_27E50C9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24096B528(uint64_t a1)
{
  sub_24096B60C(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24096B60C(319, &qword_27E50CA00, type metadata accessor for AgeMigrationViewModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24096B60C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24096B68C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50C9C0);
  __swift_project_value_buffer(v0, qword_27E50C9C0);
  return sub_240A2AE5C();
}

uint64_t sub_24096B6D8@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v69 = sub_240A2A10C();
  v82 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &OpaqueTypeConformance2 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v63 = &OpaqueTypeConformance2 - v3;
  v4 = type metadata accessor for AgeMigrationView(0);
  v5 = v4 - 8;
  v75 = *(v4 - 8);
  v76 = *(v75 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v66 = &OpaqueTypeConformance2 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &OpaqueTypeConformance2 - v8;
  v72 = sub_240A2A39C();
  v83 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v10 = &OpaqueTypeConformance2 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA08, &qword_240A33728);
  MEMORY[0x28223BE20](v58);
  v12 = (&OpaqueTypeConformance2 - v11);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA10, &qword_240A33730);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &OpaqueTypeConformance2 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA18, &qword_240A33738);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v74 = &OpaqueTypeConformance2 - v14;
  sub_24096C20C(v12);
  v15 = sub_240972764();
  sub_240A2BA7C();
  sub_240919300(v12, &qword_27E50CA08, &qword_240A33728);
  v77 = *(v5 + 28);
  v16 = v1;
  v70 = v1;
  sub_240A2BD7C();
  v17 = v86;
  swift_getKeyPath();
  v86 = v17;
  v80 = sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v18 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v19 = v83;
  v20 = *(v83 + 16);
  v78 = v83 + 16;
  v79 = v20;
  v21 = v10;
  v22 = v10;
  v23 = v72;
  v20(v21, &v17[v18], v72);

  v24 = v73;
  sub_240974F30(v16, v73, type metadata accessor for AgeMigrationView);
  v25 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v26 = swift_allocObject();
  sub_240974EC8(v24, v26 + v25, type metadata accessor for AgeMigrationView);
  v86 = v58;
  v87 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = sub_240975108(&unk_27E50DD50, MEMORY[0x277CED960], MEMORY[0x277CED968]);
  v61 = v22;
  v27 = v60;
  v28 = v59;
  sub_240A2BAFC();

  v29 = *(v19 + 8);
  v83 = v19 + 8;
  v75 = v29;
  v29(v22, v23);
  (*(v62 + 8))(v28, v27);
  v30 = v70;
  v31 = v63;
  v32 = v71;
  sub_240A2BD8C();
  swift_getKeyPath();
  sub_240A2BDAC();

  (*(v67 + 8))(v31, v32);
  v63 = v84;
  LODWORD(v67) = v85;
  v33 = v73;
  sub_240974F30(v30, v73, type metadata accessor for AgeMigrationView);
  v34 = swift_allocObject();
  sub_240974EC8(v33, v34 + v25, type metadata accessor for AgeMigrationView);
  v35 = v66;
  sub_240974F30(v30, v66, type metadata accessor for AgeMigrationView);
  v36 = swift_allocObject();
  sub_240974EC8(v35, v36 + v25, type metadata accessor for AgeMigrationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB00, &qword_240A33820);
  v37 = v72;
  v86 = v27;
  v87 = v72;
  v88 = OpaqueTypeConformance2;
  v89 = v58;
  swift_getOpaqueTypeConformance2();
  sub_2409741C8();
  v38 = v64;
  v39 = v74;
  sub_240A2BABC();

  (*(v65 + 8))(v39, v38);
  KeyPath = swift_getKeyPath();
  sub_240A2BD7C();
  v41 = v86;
  swift_getKeyPath();
  v86 = v41;
  sub_240A296EC();

  v42 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v43 = v61;
  v44 = v37;
  v79(v61, &v41[v42], v37);
  v45 = v68;
  sub_240A2A29C();
  v75(v43, v44);
  v46 = sub_240A2A03C();

  v47 = *(v82 + 8);
  v82 += 8;
  v76 = v47;
  v48 = v69;
  v47(v45, v69);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB40, &qword_240A33860);
  v50 = v81;
  v51 = (v81 + *(v49 + 36));
  *v51 = KeyPath;
  v51[1] = v46;
  v52 = swift_getKeyPath();
  sub_240A2BD7C();
  v53 = v84;
  swift_getKeyPath();
  v84 = v53;
  sub_240A296EC();

  v54 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v79(v43, &v53[v54], v44);
  sub_240A2A29C();
  v75(v43, v44);
  v55 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB48, &unk_240A33890) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE68, &qword_240A31CF8);
  sub_240A29FAC();

  result = v76(v45, v48);
  *v55 = v52;
  return result;
}

uint64_t sub_24096C20C@<X0>(void *a1@<X8>)
{
  v127 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAE8, &qword_240A337A8);
  MEMORY[0x28223BE20](v108);
  v88 = (&v77 - v2);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB60, &qword_240A33900);
  MEMORY[0x28223BE20](v106);
  v107 = &v77 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAD8, &qword_240A337A0);
  MEMORY[0x28223BE20](v120);
  v110 = &v77 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v87 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v86 = &v77 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAC8, &qword_240A33798);
  MEMORY[0x28223BE20](v103);
  v85 = (&v77 - v6);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB68, &qword_240A33908);
  MEMORY[0x28223BE20](v117);
  v119 = &v77 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB70, &qword_240A33910);
  MEMORY[0x28223BE20](v100);
  v102 = &v77 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAB8, &qword_240A33790);
  MEMORY[0x28223BE20](v118);
  v104 = &v77 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CAA8, &qword_240A33788);
  MEMORY[0x28223BE20](v126);
  v121 = &v77 - v10;
  v101 = sub_240A2A46C();
  v84 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v83 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA98, &qword_240A33780);
  MEMORY[0x28223BE20](v114);
  v105 = (&v77 - v12);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB78, &qword_240A33918);
  MEMORY[0x28223BE20](v94);
  v98 = &v77 - v13;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA68, &qword_240A33760);
  MEMORY[0x28223BE20](v116);
  v99 = &v77 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA78, &qword_240A33768);
  MEMORY[0x28223BE20](v95);
  v82 = (&v77 - v15);
  v97 = sub_240A2A31C();
  v81 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for DiscoveryView(0);
  MEMORY[0x28223BE20](v93);
  v80 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB80, &qword_240A33920);
  MEMORY[0x28223BE20](v123);
  v125 = &v77 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB88, &qword_240A33928);
  MEMORY[0x28223BE20](v111);
  v113 = &v77 - v19;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB90, &unk_240A33930);
  MEMORY[0x28223BE20](v90);
  v91 = &v77 - v20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA40, &qword_240A33748);
  MEMORY[0x28223BE20](v112);
  v92 = &v77 - v21;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA30, &qword_240A33740);
  MEMORY[0x28223BE20](v124);
  v115 = &v77 - v22;
  v23 = type metadata accessor for AgeMigrationView(0);
  v78 = *(v23 - 8);
  v24 = *(v78 + 64);
  MEMORY[0x28223BE20](v23);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v89);
  v79 = &v77 - v25;
  v26 = sub_240A2A39C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_240A2A33C();
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v122 = v1;
  sub_240A2BD7C();
  v33 = *&v128[0];
  swift_getKeyPath();
  *&v128[0] = v33;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v34 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v27 + 16))(v29, &v33[v34], v26);
  sub_240A2A34C();

  (*(v27 + 8))(v29, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v72 = v86;
        sub_240A2B22C();
        v73 = v87;
        v74 = v109;
        (*(v87 + 16))(v107, v72, v109);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
        sub_240972EC8();
        v75 = v110;
        sub_240A2B6EC();
        sub_240919298(v75, v119, &qword_27E50CAD8, &qword_240A337A0);
        swift_storeEnumTagMultiPayload();
        sub_240972D84();
        sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
        v76 = v121;
        sub_240A2B6EC();
        sub_240919300(v75, &qword_27E50CAD8, &qword_240A337A0);
        sub_240919298(v76, v125, &qword_27E50CAA8, &qword_240A33788);
        swift_storeEnumTagMultiPayload();
        sub_2409727F0();
        sub_240972CCC();
        sub_240A2B6EC();
        sub_240919300(v76, &qword_27E50CAA8, &qword_240A33788);
        return (*(v73 + 8))(v72, v74);
      }

      v53 = v85;
      sub_240970494(v85);
      v48 = &qword_27E50CAC8;
      v49 = &qword_240A33798;
      sub_240919298(v53, v102, &qword_27E50CAC8, &qword_240A33798);
      swift_storeEnumTagMultiPayload();
      sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
      sub_240972E3C();
      v54 = v104;
      sub_240A2B6EC();
      sub_240919298(v54, v119, &qword_27E50CAB8, &qword_240A33790);
      swift_storeEnumTagMultiPayload();
      sub_240972D84();
      sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
      v55 = v121;
      sub_240A2B6EC();
      sub_240919300(v54, &qword_27E50CAB8, &qword_240A33790);
      v56 = &qword_27E50CAA8;
      v57 = &qword_240A33788;
      sub_240919298(v55, v125, &qword_27E50CAA8, &qword_240A33788);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v43 = v80;
        sub_24096F3CC(v80);
        sub_240974F30(v43, v91, type metadata accessor for DiscoveryView);
        swift_storeEnumTagMultiPayload();
        sub_240972938();
        sub_240975108(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
        v44 = v92;
        sub_240A2B6EC();
        sub_240919298(v44, v113, &qword_27E50CA40, &qword_240A33748);
        swift_storeEnumTagMultiPayload();
        sub_24097287C();
        sub_2409729F0();
        v45 = v115;
        sub_240A2B6EC();
        sub_240919300(v44, &qword_27E50CA40, &qword_240A33748);
        sub_240919298(v45, v125, &qword_27E50CA30, &qword_240A33740);
        swift_storeEnumTagMultiPayload();
        sub_2409727F0();
        sub_240972CCC();
        sub_240A2B6EC();
        sub_240919300(v45, &qword_27E50CA30, &qword_240A33740);
        return sub_240975090(v43, type metadata accessor for DiscoveryView);
      }

      v53 = v105;
      sub_240970040(v105);
      v48 = &qword_27E50CA98;
      v49 = &qword_240A33780;
      sub_240919298(v53, v98, &qword_27E50CA98, &qword_240A33780);
      swift_storeEnumTagMultiPayload();
      sub_240972AA8();
      sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
      v63 = v99;
      sub_240A2B6EC();
      sub_240919298(v63, v113, &qword_27E50CA68, &qword_240A33760);
      swift_storeEnumTagMultiPayload();
      sub_24097287C();
      sub_2409729F0();
      v55 = v115;
      sub_240A2B6EC();
      sub_240919300(v63, &qword_27E50CA68, &qword_240A33760);
      v56 = &qword_27E50CA30;
      v57 = &qword_240A33740;
      sub_240919298(v55, v125, &qword_27E50CA30, &qword_240A33740);
    }

    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v55, v56, v57);
    v52 = v53;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v66 = v79;
      sub_240A2B22C();
      sub_240974F30(v122, &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
      v67 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v68 = swift_allocObject();
      sub_240974EC8(&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v68 + v67, type metadata accessor for AgeMigrationView);
      v69 = (v66 + *(v89 + 36));
      *v69 = sub_2409744E4;
      v69[1] = v68;
      v69[2] = 0;
      v69[3] = 0;
      sub_240919298(v66, v91, &qword_27E50CA50, &unk_240A33750);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      sub_240975108(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
      v70 = v92;
      sub_240A2B6EC();
      sub_240919298(v70, v113, &qword_27E50CA40, &qword_240A33748);
      swift_storeEnumTagMultiPayload();
      sub_24097287C();
      sub_2409729F0();
      v71 = v115;
      sub_240A2B6EC();
      sub_240919300(v70, &qword_27E50CA40, &qword_240A33748);
      sub_240919298(v71, v125, &qword_27E50CA30, &qword_240A33740);
      swift_storeEnumTagMultiPayload();
      sub_2409727F0();
      sub_240972CCC();
      sub_240A2B6EC();
      sub_240919300(v71, &qword_27E50CA30, &qword_240A33740);
      v52 = v66;
      v64 = &qword_27E50CA50;
      v65 = &unk_240A33750;
      return sub_240919300(v52, v64, v65);
    }

    v46 = *(v32 + 1);
    v128[0] = *v32;
    v128[1] = v46;
    v129 = *(v32 + 4);
    v47 = v88;
    sub_240970960(v128, v88);
    sub_240974490(v128);
    v48 = &qword_27E50CAE8;
    v49 = &qword_240A337A8;
    sub_240919298(v47, v107, &qword_27E50CAE8, &qword_240A337A8);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_240972EC8();
    v50 = v110;
    sub_240A2B6EC();
    sub_240919298(v50, v119, &qword_27E50CAD8, &qword_240A337A0);
    swift_storeEnumTagMultiPayload();
    sub_240972D84();
    sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
    v51 = v121;
    sub_240A2B6EC();
    sub_240919300(v50, &qword_27E50CAD8, &qword_240A337A0);
    sub_240919298(v51, v125, &qword_27E50CAA8, &qword_240A33788);
    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v51, &qword_27E50CAA8, &qword_240A33788);
    v52 = v47;
LABEL_15:
    v64 = v48;
    v65 = v49;
    return sub_240919300(v52, v64, v65);
  }

  if (EnumCaseMultiPayload)
  {
    v58 = v84;
    v59 = v83;
    (*(v84 + 32))(v83, v32, v101);
    v60 = v105;
    sub_240970040(v105);
    sub_240919298(v60, v102, &qword_27E50CA98, &qword_240A33780);
    swift_storeEnumTagMultiPayload();
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    sub_240972E3C();
    v61 = v104;
    sub_240A2B6EC();
    sub_240919298(v61, v119, &qword_27E50CAB8, &qword_240A33790);
    swift_storeEnumTagMultiPayload();
    sub_240972D84();
    sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
    v62 = v121;
    sub_240A2B6EC();
    sub_240919300(v61, &qword_27E50CAB8, &qword_240A33790);
    sub_240919298(v62, v125, &qword_27E50CAA8, &qword_240A33788);
    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v62, &qword_27E50CAA8, &qword_240A33788);
    sub_240919300(v60, &qword_27E50CA98, &qword_240A33780);
    return (*(v58 + 8))(v59, v101);
  }

  else
  {
    v36 = v81;
    (*(v81 + 32))(v96, v32, v97);
    v37 = sub_240A2A2EC();
    v38 = v82;
    sub_24096FB08(v37, v39, v82);

    sub_240919298(v38, v98, &qword_27E50CA78, &qword_240A33768);
    swift_storeEnumTagMultiPayload();
    sub_240972AA8();
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    v40 = v99;
    sub_240A2B6EC();
    sub_240919298(v40, v113, &qword_27E50CA68, &qword_240A33760);
    swift_storeEnumTagMultiPayload();
    sub_24097287C();
    sub_2409729F0();
    v41 = v115;
    sub_240A2B6EC();
    sub_240919300(v40, &qword_27E50CA68, &qword_240A33760);
    sub_240919298(v41, v125, &qword_27E50CA30, &qword_240A33740);
    swift_storeEnumTagMultiPayload();
    sub_2409727F0();
    sub_240972CCC();
    sub_240A2B6EC();
    sub_240919300(v41, &qword_27E50CA30, &qword_240A33740);
    sub_240919300(v38, &qword_27E50CA78, &qword_240A33768);
    return (*(v36 + 8))(v96, v97);
  }
}

void sub_24096DC7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_2409B0528(a1, a2);
}

uint64_t sub_24096DCF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  *a2 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay);
  return result;
}

void sub_24096DDCC(uint64_t a1)
{
  v2 = sub_240A2A33C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - v6;
  v8 = sub_240A2A39C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for AgeMigrationView(0) + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v25[2] = v12;
  v25[3] = a1;
  v25[1] = v13;
  sub_240A2BD7C();
  v14 = v27;
  swift_getKeyPath();
  v27 = v14;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v15 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v14[v15], v8);

  sub_240A2A34C();
  (*(v9 + 8))(v11, v8);
  LODWORD(v15) = swift_getEnumCaseMultiPayload();
  sub_240975090(v7, MEMORY[0x277CED950]);
  if (v15 == 2)
  {
    if (qword_27E50AF38 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50C9C0);
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C29C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "Sheet was dismissed because of another error. Allowing existing error to continue showing.", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AF38 != -1)
    {
      swift_once();
    }

    v20 = sub_240A2B00C();
    __swift_project_value_buffer(v20, qword_27E50C9C0);
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C28C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "User dragged down to dismiss. Ending flow", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    sub_240A2BD7C();
    v24 = v26;
    *v5 = xmmword_240A315B0;
    *(v5 + 3) = 0;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v26 = v24;
    sub_240A296EC();

    v26 = v24;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v26 = v24;
    swift_getKeyPath();
    sub_240A296FC();
  }
}

uint64_t sub_24096E29C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for AgeMigrationView(0);
  v4 = v3 - 8;
  v74 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v76 = v5;
  v78 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_240A2A10C();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for FamilyRepairView(0);
  MEMORY[0x28223BE20](v83);
  v70 = (&v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_240A2A46C();
  v81 = *(v8 - 8);
  v82 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v63 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB50, &qword_240A338A0);
  MEMORY[0x28223BE20](v85);
  v87 = (&v63 - v12);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB58, &qword_240A338A8);
  MEMORY[0x28223BE20](v73);
  v77 = (&v63 - v13);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB18, &qword_240A33828);
  MEMORY[0x28223BE20](v86);
  v80 = &v63 - v14;
  v15 = sub_240A2A33C();
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_240A2A39C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v66 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v24 = *(v4 + 28);
  v75 = a1;
  v25 = a1 + v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v71 = v25;
  sub_240A2BD7C();
  v26 = v93;
  swift_getKeyPath();
  v93 = v26;
  v65 = sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v27 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v28 = *(v19 + 16);
  v28(v23, &v26[v27], v18);

  sub_240A2A34C();
  v29 = *(v19 + 8);
  v29(v23, v18);
  v84 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v35 = v81;
    v34 = v82;
    v36 = v79;
    (*(v81 + 32))(v79, v84, v82);
    v84 = sub_240A2C06C();
    v64 = v37;
    v63 = *(v35 + 16);
    v63(v72, v36, v34);
    sub_240A2BD7C();
    v38 = v92;
    swift_getKeyPath();
    v92 = v38;
    sub_240A296EC();

    v39 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v40 = &v38[v39];
    v41 = v66;
    v28(v66, v40, v18);
    v42 = v67;
    sub_240A2A29C();
    v29(v41, v18);
    v43 = sub_240A2A07C();

    (*(v68 + 8))(v42, v69);
    v44 = v78;
    sub_240974F30(v75, v78, type metadata accessor for AgeMigrationView);
    v45 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v46 = swift_allocObject();
    sub_240974EC8(v44, v46 + v45, type metadata accessor for AgeMigrationView);
    KeyPath = swift_getKeyPath();
    v48 = v70;
    *v70 = KeyPath;
    *(v48 + 8) = 0;
    *(v48 + 16) = swift_getKeyPath();
    *(v48 + 24) = 0;
    v49 = v83;
    v50 = v64;
    *(v48 + 32) = v84;
    *(v48 + 40) = v50;
    v51 = v72;
    v52 = v82;
    v63((v48 + v49[7]), v72, v82);
    v89 = v43 & 1;
    sub_240A2BC4C();
    v53 = *(v81 + 8);
    v53(v51, v52);
    v54 = v91;
    v55 = v48 + v49[8];
    *v55 = v90;
    *(v55 + 8) = v54;
    v56 = (v48 + v49[9]);
    *v56 = sub_240974400;
    v56[1] = v46;
    sub_240974F30(v48, v77, type metadata accessor for FamilyRepairView);
    swift_storeEnumTagMultiPayload();
    sub_240974310();
    sub_240975108(&qword_27E50CB28, type metadata accessor for FamilyRepairView, &unk_240A30C20);
    v57 = v80;
    sub_240A2B6EC();
    sub_240919298(v57, v87, &qword_27E50CB18, &qword_240A33828);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB38, &qword_240A33830);
    sub_240974254();
    sub_240974364();
    sub_240A2B6EC();
    sub_240919300(v57, &qword_27E50CB18, &qword_240A33828);
    sub_240975090(v48, type metadata accessor for FamilyRepairView);
    return (v53)(v79, v52);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v59 = v78;
      sub_240974F30(v75, v78, type metadata accessor for AgeMigrationView);
      v60 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v61 = swift_allocObject();
      sub_240974EC8(v59, v61 + v60, type metadata accessor for AgeMigrationView);
      v62 = v87;
      *v87 = sub_2409743E8;
      v62[1] = v61;
      v62[2] = 0;
      v62[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB38, &qword_240A33830);
      sub_240974254();
      sub_240974364();
      sub_240A2B6EC();
    }

    else
    {
      sub_240A2BD7C();
      v31 = v92;
      *v77 = v92;
      swift_storeEnumTagMultiPayload();
      sub_240974310();
      sub_240975108(&qword_27E50CB28, type metadata accessor for FamilyRepairView, &unk_240A30C20);
      v32 = v31;
      v33 = v80;
      sub_240A2B6EC();
      sub_240919298(v33, v87, &qword_27E50CB18, &qword_240A33828);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB38, &qword_240A33830);
      sub_240974254();
      sub_240974364();
      sub_240A2B6EC();

      sub_240919300(v33, &qword_27E50CB18, &qword_240A33828);
    }

    return sub_240975090(v84, MEMORY[0x277CED950]);
  }
}

void sub_24096EE50(uint64_t a1)
{
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_2409B1F30();
}

void sub_24096EEC0(uint64_t a1)
{
  v2 = sub_240A2A39C();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2A33C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AgeMigrationView(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF38 != -1)
  {
    swift_once();
  }

  v11 = sub_240A2B00C();
  __swift_project_value_buffer(v11, qword_27E50C9C0);
  sub_240974F30(a1, v10, type metadata accessor for AgeMigrationView);
  v12 = sub_240A2AFFC();
  v13 = sub_240A2C2AC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v15 = v14;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v15 = 136315138;
    v32 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    sub_240A2BD7C();
    v30 = a1;
    v16 = v33;
    swift_getKeyPath();
    v33 = v16;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296EC();

    v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v18 = v31;
    v19 = &v16[v17];
    v20 = v28;
    (*(v31 + 16))(v4, v19, v28);

    sub_240A2A34C();
    (*(v18 + 8))(v4, v20);
    v21 = sub_240A2A32C();
    v23 = v22;
    sub_240975090(v7, MEMORY[0x277CED950]);
    sub_240975090(v10, type metadata accessor for AgeMigrationView);
    v24 = sub_240925464(v21, v23, &v34);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_2408FE000, v12, v13, "presentingOverlay should not be true in state %s", v15, 0xCu);
    v25 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x245CCDDB0](v25, -1, -1);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  else
  {

    sub_240975090(v10, type metadata accessor for AgeMigrationView);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v26 = v34;
  if (*(v34 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v28 - 2) = v26;
    *(&v28 - 8) = 0;
    v34 = v26;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296DC();
  }

  else
  {
    *(v34 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__presentingOverlay) = 0;
  }
}

uint64_t sub_24096F3CC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_240A2975C();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - v5;
  v6 = sub_240A2A39C();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v48 - v9;
  v10 = type metadata accessor for AgeMigrationView(0);
  v11 = *(v10 - 8);
  v50 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = v1;
  v60 = &v48 - v14;
  sub_240974F30(v1, &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  sub_240A2C21C();
  v15 = sub_240A2C20C();
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_240974EC8(&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AgeMigrationView);
  sub_240974F30(v1, &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  v19 = sub_240A2C20C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = MEMORY[0x277D85700];
  sub_240974EC8(&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v16, type metadata accessor for AgeMigrationView);
  sub_240A2A10C();
  sub_240A2BD2C();
  v21 = v59;
  sub_240974F30(v59, &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  v22 = sub_240A2C20C();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = MEMORY[0x277D85700];
  *(v23 + 24) = MEMORY[0x277D85700];
  sub_240974EC8(&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v16, type metadata accessor for AgeMigrationView);
  sub_240974F30(v21, &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
  v25 = sub_240A2C20C();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  sub_240974EC8(&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v16, type metadata accessor for AgeMigrationView);
  sub_240A297DC();
  v27 = v49;
  sub_240A2BD2C();
  v28 = v60;
  v29 = v51;
  sub_240919298(v60, v51, &qword_27E50BD18, &qword_240A33940);
  v30 = type metadata accessor for DiscoveryView(0);
  sub_240919298(v27, v29 + v30[8], &qword_27E50BD20, &qword_240A31BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v31 = v65;
  swift_getKeyPath();
  v65 = v31;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v32 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v34 = v53;
  v33 = v54;
  v35 = &v31[v32];
  v36 = v52;
  (*(v53 + 16))(v52, v35, v54);

  v37 = v55;
  sub_240A2A2BC();
  (*(v34 + 8))(v36, v33);
  v38 = v29 + v30[5];
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_240A2BC4C();
  v39 = v64;
  *v38 = v63;
  *(v38 + 16) = v39;
  v40 = v29;
  *(v29 + v30[6]) = 1;
  *(v29 + v30[7]) = 0;
  v41 = v57;
  v42 = v58;
  (*(v57 + 16))(v56, v37, v58);
  sub_240A2BC4C();
  (*(v41 + 8))(v37, v42);
  sub_240919300(v27, &qword_27E50BD20, &qword_240A31BC0);
  sub_240919300(v28, &qword_27E50BD18, &qword_240A33940);
  v43 = v30[10];
  *(v40 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v44 = v30[11];
  *(v40 + v44) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v45 = v40 + v30[12];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v40 + v30[13];
  result = swift_getKeyPath();
  *v46 = result;
  *(v46 + 8) = 0;
  return result;
}

void *sub_24096FB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v37 = a3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CB98, &qword_240A339A8);
  MEMORY[0x28223BE20](v35);
  v36 = &v27 - v4;
  v5 = type metadata accessor for AgeMigrationView(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA88, &unk_240A33770);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - v7;
  v8 = sub_240A2A10C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A39C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v30 = v3;
  sub_240A2BD7C();
  v16 = v40;
  swift_getKeyPath();
  v40 = v16;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v13 + 16))(v15, &v16[v17], v12);
  sub_240A2A29C();
  (*(v13 + 8))(v15, v12);
  LOBYTE(v17) = sub_240A2A07C();

  (*(v9 + 8))(v11, v8);
  if (v17)
  {
    swift_storeEnumTagMultiPayload();
    sub_240972B34();
    sub_240936F7C();
    return sub_240A2B6EC();
  }

  else
  {
    v38 = sub_240A2BFDC();
    v39 = v19;
    sub_24091C4F8();
    v20 = v31;
    sub_240A2B24C();
    v21 = v29;
    sub_240974F30(v30, v29, type metadata accessor for AgeMigrationView);
    v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v23 = swift_allocObject();
    sub_240974EC8(v21, v23 + v22, type metadata accessor for AgeMigrationView);
    v24 = (v23 + ((v6 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    v25 = v33;
    *v24 = v32;
    v24[1] = v25;
    v26 = (v20 + *(v34 + 36));
    sub_240A2B2CC();

    sub_240A2C22C();
    *v26 = &unk_240A339B8;
    v26[1] = v23;
    sub_240919298(v20, v36, &qword_27E50CA88, &unk_240A33770);
    swift_storeEnumTagMultiPayload();
    sub_240972B34();
    sub_240936F7C();
    sub_240A2B6EC();
    return sub_240919300(v20, &qword_27E50CA88, &unk_240A33770);
  }
}

void *sub_240970040@<X0>(void *a1@<X8>)
{
  v22 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CBA0, &qword_240A339C0);
  MEMORY[0x28223BE20](v20);
  v2 = &v18 - v1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v18 = &v18 - v3;
  v4 = sub_240A2A10C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A39C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v12 = v23;
  swift_getKeyPath();
  v23 = v12;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v13 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v12[v13], v8);
  sub_240A2A29C();
  (*(v9 + 8))(v11, v8);
  LOBYTE(v13) = sub_240A2A07C();

  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_240936F7C();
    return sub_240A2B6EC();
  }

  else
  {
    v15 = v18;
    sub_240A2B22C();
    v16 = v19;
    v17 = v21;
    (*(v19 + 16))(v2, v15, v21);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_240936F7C();
    sub_240A2B6EC();
    return (*(v16 + 8))(v15, v17);
  }
}

void *sub_240970494@<X0>(void *a1@<X8>)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CBA8, &qword_240A339C8);
  MEMORY[0x28223BE20](v28);
  v29 = &v22 - v2;
  v3 = type metadata accessor for AgeMigrationView(0);
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = v4;
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v27);
  v6 = &v22 - v5;
  v7 = sub_240A2A10C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A39C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  v26 = v1;
  sub_240A2BD7C();
  v15 = v31;
  swift_getKeyPath();
  v31 = v15;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v16 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v15[v16], v11);
  sub_240A2A29C();
  (*(v12 + 8))(v14, v11);
  LOBYTE(v16) = sub_240A2A07C();

  (*(v8 + 8))(v10, v7);
  if (v16)
  {
    swift_storeEnumTagMultiPayload();
    sub_240972938();
    sub_240936F7C();
    return sub_240A2B6EC();
  }

  else
  {
    sub_240A2B22C();
    v18 = v25;
    sub_240974F30(v26, v25, type metadata accessor for AgeMigrationView);
    v19 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v20 = swift_allocObject();
    sub_240974EC8(v18, v20 + v19, type metadata accessor for AgeMigrationView);
    v21 = &v6[*(v27 + 36)];
    *v21 = sub_240974950;
    *(v21 + 1) = v20;
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    sub_240919298(v6, v29, &qword_27E50CA50, &unk_240A33750);
    swift_storeEnumTagMultiPayload();
    sub_240972938();
    sub_240936F7C();
    sub_240A2B6EC();
    return sub_240919300(v6, &qword_27E50CA50, &unk_240A33750);
  }
}

void *sub_240970960@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v4 = sub_240A2A10C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A39C();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CBB0, &unk_240A339D0);
  MEMORY[0x28223BE20](v37);
  v11 = v32 - v10;
  v12 = type metadata accessor for AgeMigrationView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  MEMORY[0x28223BE20](v38);
  v16 = v32 - v15;
  if (*(a1 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    sub_240A2B21C();
    sub_240974F30(v2, v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AgeMigrationView);
    v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v18 = swift_allocObject();
    sub_240974EC8(v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AgeMigrationView);
    v19 = &v16[*(v38 + 36)];
    *v19 = sub_240975150;
    *(v19 + 1) = v18;
    *(v19 + 2) = 0;
    *(v19 + 3) = 0;
    sub_240919298(v16, v11, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972F80();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    sub_240A2B6EC();
    return sub_240919300(v16, &unk_27E50D720, &unk_240A337B0);
  }

  else
  {
    v32[0] = sub_240A2BFDC();
    v32[1] = sub_240A2BFDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    sub_240A2BD7C();
    v21 = v44;
    swift_getKeyPath();
    v44 = v21;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296EC();

    v22 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
    swift_beginAccess();
    v24 = v33;
    v23 = v34;
    (*(v33 + 16))(v9, &v21[v22], v34);
    sub_240A2A29C();
    (*(v24 + 8))(v9, v23);
    sub_240A2A07C();

    (*(v35 + 8))(v6, v36);
    LOBYTE(v24) = ~sub_240A2A05C();
    v40 = 1;
    sub_240A2BD3C();
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v40 = 1;
    sub_240A2BD3C();
    v28 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
    [v28 setDismissalType_];
    v29 = sub_240A2BF1C();

    [v28 setTitle_];

    v30 = sub_240A2BF1C();

    [v28 setSubtitle_];

    v31 = MEMORY[0x277D84F90];
    *v11 = v28;
    *(v11 + 1) = v31;
    *(v11 + 2) = v25;
    *(v11 + 3) = v26;
    v11[32] = v27;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BF40, &qword_240A337C0);
    sub_240972F80();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    return sub_240A2B6EC();
  }
}

void sub_240971028()
{
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_2409AF530();
}

uint64_t sub_240971088()
{
  v0 = sub_240A2A39C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v4 = v8;
  swift_getKeyPath();
  v8 = v4;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v5 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v4[v5], v0);

  sub_240A2A29C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_240971244(uint64_t a1)
{
  v2 = sub_240A2A10C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v6 = v9;
  (*(v3 + 16))(v5, a1, v2);
  swift_getKeyPath();
  v9 = v6;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v9 = v6;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A2AC();
  swift_endAccess();
  v9 = v6;
  swift_getKeyPath();
  sub_240A296FC();
}

uint64_t sub_24097144C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A2A33C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2A39C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v9 = v13;
  swift_getKeyPath();
  v13 = v9;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v10 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v9[v10], v5);

  sub_240A2A34C();
  (*(v6 + 8))(v8, v5);
  sub_240971674(a1);
  return sub_240975090(v4, MEMORY[0x277CED950]);
}

uint64_t sub_240971674@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2976C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_240A2A33C();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240974F30(v2, v10, MEMORY[0x277CED950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        goto LABEL_14;
      }

      v12 = 5;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_12;
      }

      v12 = 2;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_240975090(v10, MEMORY[0x277CED950]);
LABEL_12:
        v12 = 3;
        return (*(v5 + 56))(a1, v12, 6, v4);
      }

      sub_240975090(v10, MEMORY[0x277CED950]);
LABEL_14:
      v12 = 4;
      return (*(v5 + 56))(a1, v12, 6, v4);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v13 = *(v10 + 4);
      sub_240926FD4();
      v14 = *v10;
      v29 = *(v10 + 1);
      v30 = v14;
      v15 = swift_allocError();
      v16 = v29;
      *v17 = v30;
      *(v17 + 16) = v16;
      *(v17 + 32) = v13;
      v18 = sub_240A2952C();

      v19 = [v18 domain];
      v20 = sub_240A2BF4C();
      *&v30 = v21;

      v22 = [v18 code];
      v23 = [v18 localizedDescription];
      v24 = sub_240A2BF4C();
      v26 = v25;

      v27 = v30;
      *v7 = v20;
      v7[1] = v27;
      v7[2] = v22;
      v7[3] = v24;
      v7[4] = v26;
      (*(v5 + 104))(v7, *MEMORY[0x277CED2C8], v4);
      (*(v5 + 32))(a1, v7, v4);
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  return (*(v5 + 56))(a1, v12, 6, v4);
}

uint64_t sub_240971978()
{
  v0 = sub_240A2A33C();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AgeMigrationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  v3 = v6;
  sub_240971B3C(v2);
  swift_getKeyPath();
  v6 = v3;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v6 = v3;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  v6 = v3;
  swift_getKeyPath();
  sub_240A296FC();
}

uint64_t sub_240971B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2976C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50B658, &unk_240A30CF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-v9];
  v11 = sub_240A2962C();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_240A297DC();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_240974F30(v2, v14, MEMORY[0x277CED338]);
  v15 = (*(v5 + 48))(v14, 6, v4);
  if (v15 > 2)
  {
    if ((v15 - 5) >= 2)
    {
      if (v15 == 3)
      {
        sub_240A2960C();
        sub_240A2A2DC();
      }

      else
      {
        v19 = sub_240A2A45C();
        (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
        sub_240A2A3FC();
      }
    }
  }

  else if (!v15)
  {
    (*(v5 + 32))(v7, v14, v4);
    sub_240975108(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    v16 = swift_allocError();
    (*(v5 + 16))(v17, v7, v4);
    sub_240A2A47C();
    (*(v5 + 8))(v7, v4);

    v18 = v22;
    *a1 = *&v21[8];
    *(a1 + 16) = v18;
    *(a1 + 32) = v23;
  }

  sub_240A2A33C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_240971EF0()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3 & 1;
  sub_240A2BA6C();
  sub_240920658(v0, v2, v4);
}

uint64_t sub_240971FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v3[18] = sub_240A2A33C();
  v3[19] = swift_task_alloc();
  sub_240A2C21C();
  v3[20] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v3[21] = v5;
  v3[22] = v4;

  return MEMORY[0x2822009F8](sub_240972098, v5, v4);
}

uint64_t sub_240972098()
{
  *(v0 + 216) = *(type metadata accessor for AgeMigrationView(0) + 20);
  *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  *(v0 + 192) = *(v0 + 80);
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_24097216C;
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  return sub_2409AFBE0(v3, v2);
}

uint64_t sub_24097216C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_2409722F0;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_240972288;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_240972288()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409722F0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);

  sub_240A2BD7C();
  v4 = *(v0 + 88);
  sub_240A2A47C();
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v5;
  *(v3 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 96) = v4;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  *(v0 + 104) = v4;
  swift_getKeyPath();
  sub_240A2970C();

  swift_beginAccess();
  sub_240A2A35C();
  swift_endAccess();
  *(v0 + 112) = v4;
  swift_getKeyPath();
  sub_240A296FC();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2409724E4(uint64_t a1)
{
  v15 = sub_240A2B52C();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = sub_240A2B2AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240919298(a1, v7, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_240A2C2BC();
    v12 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_240A2B29C();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_240972764()
{
  result = qword_27E50CA20;
  if (!qword_27E50CA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA08, &qword_240A33728);
    sub_2409727F0();
    sub_240972CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA20);
  }

  return result;
}

unint64_t sub_2409727F0()
{
  result = qword_27E50CA28;
  if (!qword_27E50CA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA30, &qword_240A33740);
    sub_24097287C();
    sub_2409729F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA28);
  }

  return result;
}

unint64_t sub_24097287C()
{
  result = qword_27E50CA38;
  if (!qword_27E50CA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA40, &qword_240A33748);
    sub_240972938();
    sub_240975108(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA38);
  }

  return result;
}

unint64_t sub_240972938()
{
  result = qword_27E50CA48;
  if (!qword_27E50CA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA50, &unk_240A33750);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA48);
  }

  return result;
}

unint64_t sub_2409729F0()
{
  result = qword_27E50CA60;
  if (!qword_27E50CA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA68, &qword_240A33760);
    sub_240972AA8();
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA60);
  }

  return result;
}

unint64_t sub_240972AA8()
{
  result = qword_27E50CA70;
  if (!qword_27E50CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA78, &qword_240A33768);
    sub_240972B34();
    sub_240936F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA70);
  }

  return result;
}

unint64_t sub_240972B34()
{
  result = qword_27E50CA80;
  if (!qword_27E50CA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA88, &unk_240A33770);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240975108(&qword_27E50F4A0, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CA80);
  }

  return result;
}

uint64_t sub_240972C1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240972CCC()
{
  result = qword_27E50CAA0;
  if (!qword_27E50CAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAA8, &qword_240A33788);
    sub_240972D84();
    sub_240972C1C(&qword_27E50CAD0, &qword_27E50CAD8, &qword_240A337A0, sub_240972EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAA0);
  }

  return result;
}

unint64_t sub_240972D84()
{
  result = qword_27E50CAB0;
  if (!qword_27E50CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAB8, &qword_240A33790);
    sub_240972C1C(&qword_27E50CA90, &qword_27E50CA98, &qword_240A33780, sub_240936F7C);
    sub_240972E3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAB0);
  }

  return result;
}

unint64_t sub_240972E3C()
{
  result = qword_27E50CAC0;
  if (!qword_27E50CAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAC8, &qword_240A33798);
    sub_240972938();
    sub_240936F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAC0);
  }

  return result;
}

unint64_t sub_240972EC8()
{
  result = qword_27E50CAE0;
  if (!qword_27E50CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CAE8, &qword_240A337A8);
    sub_240972F80();
    sub_24091CE28(&unk_27E50D830, &unk_27E50BF40, &qword_240A337C0, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAE0);
  }

  return result;
}

unint64_t sub_240972F80()
{
  result = qword_27E50CAF0;
  if (!qword_27E50CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D720, &unk_240A337B0);
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CAF0);
  }

  return result;
}

id sub_240973038(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCD0, &qword_240A33AF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v35 = &v35 - v11;
  if (qword_27E50AF38 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50C9C0);
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C28C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "Making MigrationRemoteUIView. If this is called more than once, you have a problem!", v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  swift_getKeyPath();
  v40 = a2;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v17 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__serverUIContext;
  swift_beginAccess();
  sub_240919298(&a2[v17], v7, &unk_27E50DCD0, &qword_240A33AF0);
  if ((*(v38 + 48))(v7, 1, v8) == 1)
  {
    sub_240919300(v7, &unk_27E50DCD0, &qword_240A33AF0);
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Age migration serverUIContext is not available", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }
  }

  else
  {
    v21 = v7;
    v22 = v35;
    sub_240974EC8(v21, v35, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    swift_getKeyPath();
    v39 = a2;
    sub_240A296EC();

    sub_2409AE678([objc_allocWithZone(MEMORY[0x277CECA58]) initWithAccountManager:*&a2[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__accountManager] presenter:v16]);
    swift_getKeyPath();
    v39 = a2;
    sub_240A296EC();

    v23 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter;
    v24 = *&a2[OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter];
    if (v24)
    {
      [v24 configureWithSessionConfiguration_];
    }

    swift_getKeyPath();
    v39 = a2;
    sub_240A296EC();

    v25 = *&a2[v23];
    if (v25)
    {
      [v25 setDelegate_];
    }

    v26 = sub_240A2C24C();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    v28 = v36;
    sub_240974F30(v22, v36, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    sub_240A2C21C();
    v29 = a2;
    v30 = sub_240A2C20C();
    v31 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v30;
    v32[3] = v33;
    v32[4] = v29;
    sub_240974EC8(v28, v32 + v31, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    sub_2409F6830(0, 0, v27, &unk_240A33B78, v32);

    sub_240975090(v22, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  }

  return v16;
}

uint64_t sub_240973638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  type metadata accessor for AgeMigrationViewModel.ServerUIContext(0);
  v5[22] = swift_task_alloc();
  sub_240A2C21C();
  v5[23] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v5[24] = v7;
  v5[25] = v6;

  return MEMORY[0x2822009F8](sub_2409736FC, v7, v6);
}

uint64_t sub_2409736FC()
{
  v30 = v0;
  if (qword_27E50AF38 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50C9C0);
  sub_240974F30(v1, v2, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  v5 = v3;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[22];
  p_opt_class_meths = &OBJC_PROTOCOL___AAUISignInViewControllerDelegate.opt_class_meths;
  if (v8)
  {
    v11 = v0[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v12 = 138412546;
    swift_getKeyPath();
    v0[19] = v11;
    sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
    sub_240A296EC();

    v15 = *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__remoteUIPresenter);
    *(v12 + 4) = v15;
    *v13 = v15;
    *(v12 + 12) = 2080;
    sub_240A2946C();
    sub_240975108(&qword_27E50CBF0, MEMORY[0x277CC8678], MEMORY[0x277CC8698]);
    v16 = v15;
    v17 = sub_240A2C62C();
    v19 = v18;
    sub_240975090(v9, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
    v20 = sub_240925464(v17, v19, &v29);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_2408FE000, v6, v7, "Using remoteUIPresenter %@ to load age migration request %s", v12, 0x16u);
    sub_240919300(v13, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v21 = v14;
    p_opt_class_meths = (&OBJC_PROTOCOL___AAUISignInViewControllerDelegate + 48);
    MEMORY[0x245CCDDB0](v21, -1, -1);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  else
  {

    sub_240975090(v9, type metadata accessor for AgeMigrationViewModel.ServerUIContext);
  }

  v22 = v0[20];
  swift_getKeyPath();
  v0[18] = v22;
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v23 = *(p_opt_class_meths[393] + v22);
  v0[26] = v23;
  if (v23)
  {
    v24 = v23;
    v25 = sub_240A2943C();
    v0[27] = v25;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_240973BCC;
    v26 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240A13784;
    v0[13] = &block_descriptor_9;
    v0[14] = v26;
    [v24 loadRequest:v25 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_240973BCC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_240973D74;
  }

  else
  {
    v5 = sub_240973CFC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240973CFC()
{
  v1 = v0[26];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_240973D74()
{
  v1 = v0[27];
  v2 = v0[26];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_240973E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240974E74();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240973E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240974E74();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240973ED4(uint64_t a1)
{
  sub_240974E74();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240973EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_240975108(&qword_27E50BC78, type metadata accessor for AgeMigrationViewModel, &unk_240A35698);
  sub_240A296EC();

  v4 = OBJC_IVAR____TtC14AppleIDSetupUI21AgeMigrationViewModel__model;
  swift_beginAccess();
  v5 = sub_240A2A39C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_240973FF4(uint64_t a1)
{
  v2 = sub_240A2A39C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_2409AEEC4(v4);
}

void sub_2409740C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AgeMigrationView(0);

  sub_24096DC7C(a1, a2);
}

uint64_t sub_240974158@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AgeMigrationView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24096E29C(v4, a1);
}

unint64_t sub_2409741C8()
{
  result = qword_27E50CB08;
  if (!qword_27E50CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB00, &qword_240A33820);
    sub_240974254();
    sub_240974364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB08);
  }

  return result;
}

unint64_t sub_240974254()
{
  result = qword_27E50CB10;
  if (!qword_27E50CB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB18, &qword_240A33828);
    sub_240974310();
    sub_240975108(&qword_27E50CB28, type metadata accessor for FamilyRepairView, &unk_240A30C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB10);
  }

  return result;
}

unint64_t sub_240974310()
{
  result = qword_27E50CB20;
  if (!qword_27E50CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB20);
  }

  return result;
}

unint64_t sub_240974364()
{
  result = qword_27E50CB30;
  if (!qword_27E50CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB38, &qword_240A33830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CB30);
  }

  return result;
}

void sub_240974400(uint64_t a1)
{
  type metadata accessor for AgeMigrationView(0);

  sub_24096EE50(a1);
}

uint64_t sub_2409744FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AgeMigrationView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2409745B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AgeMigrationView(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for AgeMigrationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_240A2B2AC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409747BC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AgeMigrationView(0) - 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a2(a1, v5, v6, v7);
}

uint64_t sub_240974844()
{
  v2 = *(type metadata accessor for AgeMigrationView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_240915E50;

  return sub_240971FCC(v0 + v3, v5, v6);
}

unint64_t sub_240974954()
{
  result = qword_27E50CBB8;
  if (!qword_27E50CBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240975108(&qword_27E50CBC0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBB8);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for AgeMigrationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_240A2B2AC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_240974BD0()
{
  result = qword_27E50CBC8;
  if (!qword_27E50CBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB48, &unk_240A33890);
    sub_240974C88();
    sub_24091CE28(&qword_27E50BE60, &qword_27E50BE68, &qword_240A31CF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBC8);
  }

  return result;
}

unint64_t sub_240974C88()
{
  result = qword_27E50CBD0;
  if (!qword_27E50CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB40, &qword_240A33860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA18, &qword_240A33738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CB00, &qword_240A33820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA10, &qword_240A33730);
    sub_240A2A39C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50CA08, &qword_240A33728);
    sub_240972764();
    swift_getOpaqueTypeConformance2();
    sub_240975108(&unk_27E50DD50, MEMORY[0x277CED960], MEMORY[0x277CED968]);
    swift_getOpaqueTypeConformance2();
    sub_2409741C8();
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50CBD8, &qword_27E50CBE0, &qword_240A33A18, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBD0);
  }

  return result;
}

unint64_t sub_240974E74()
{
  result = qword_27E50CBE8;
  if (!qword_27E50CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CBE8);
  }

  return result;
}

uint64_t sub_240974EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240974F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240974F98(uint64_t a1)
{
  v4 = *(type metadata accessor for AgeMigrationViewModel.ServerUIContext(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240915E50;

  return sub_240973638(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_240975090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240975108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_240975154()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50CBF8);
  __swift_project_value_buffer(v0, qword_27E50CBF8);
  return sub_240A2AE9C();
}

uint64_t sub_2409751A0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  v11 = (v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse) = a1;
  sub_240919A14(a2, v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings) = a3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v14[15] = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(a2);
  (*(v8 + 32))(v3 + v12, v10, v7);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v3;
}

uint64_t sub_24097530C()
{
  v1[5] = v0;
  sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2409753A4, v3, v2);
}

uint64_t sub_2409753A4()
{
  v1 = [objc_allocWithZone(sub_240A2983C()) init];
  v0[9] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = v0[5];
    v4 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v6 = (v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
    v7 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption + 24);
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v9 = AISFamilyPickerSelectionProtocol.account.getter(v7, v8);
    v0[11] = v9;
    v10 = *(v4 + 16);
    v11 = v1;
    v15 = (v10 + *v10);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_2409755F0;

    return v15(v9, v11, ObjectType, v4);
  }

  else
  {
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_24097579C;

    return sub_240912D7C();
  }
}

uint64_t sub_2409755F0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 72);
  v4 = *v0;

  swift_unknownObjectRelease();

  v5 = swift_task_alloc();
  *(v1 + 104) = v5;
  *v5 = v4;
  v5[1] = sub_24097579C;

  return sub_240912D7C();
}

uint64_t sub_24097579C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2409758BC, v3, v2);
}

uint64_t sub_2409758BC()
{
  v1 = *(v0 + 72);

  sub_240A2982C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24097592C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDAE8];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t (*sub_240975A04())@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_240A2B00C();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v93 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v93 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = &v93 - v16;
  v18 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
  if (v18)
  {
    v19 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);
    v20 = qword_27E50AF40;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v5, qword_27E50CBF8);

    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    sub_24090C1A0(v18, v19);
    v24 = os_log_type_enabled(v22, v23);
    v95 = v4;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v94 = v21;
      v26 = v25;
      v27 = swift_slowAlloc();
      v99 = v27;
      *v26 = 136315394;
      v28 = sub_240A2C7BC();
      v96 = v2;
      v30 = sub_240925464(v28, v29, &v99);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = swift_allocObject();
      *(v31 + 16) = v18;
      *(v31 + 24) = v19;
      v97 = sub_2409769E0;
      v98 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC38, qword_240A33CE8);
      v32 = sub_240A2BF9C();
      v34 = sub_240925464(v32, v33, &v99);

      *(v26 + 14) = v34;
      v2 = v96;
      _os_log_impl(&dword_2408FE000, v22, v23, "%s Calling next step override: %s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CCDDB0](v27, -1, -1);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    v35 = v18(v3);
    if (v2)
    {
      return sub_24090C1A0(v18, v19);
    }

    else
    {
      v50 = v36;
      v51 = v35;
      swift_unknownObjectRetain();
      v52 = sub_240A2AFFC();
      v53 = sub_240A2C29C();
      v54 = v51;
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v52, v53))
      {
        v55 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v99 = v94;
        *v55 = 136315394;
        v56 = sub_240A2C7BC();
        v96 = 0;
        v58 = sub_240925464(v56, v57, &v99);

        *(v55 + 4) = v58;
        *(v55 + 12) = 2080;
        v97 = v54;
        v98 = v50;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
        v59 = sub_240A2BF9C();
        v61 = sub_240925464(v59, v60, &v99);

        *(v55 + 14) = v61;
        _os_log_impl(&dword_2408FE000, v52, v53, "%s Returning next step from override: %s", v55, 0x16u);
        v62 = v94;
        swift_arrayDestroy();
        MEMORY[0x245CCDDB0](v62, -1, -1);
        MEMORY[0x245CCDDB0](v55, -1, -1);
        sub_24090C1A0(v18, v19);

        return v54;
      }

      else
      {
        sub_24090C1A0(v18, v19);

        return v51;
      }
    }
  }

  else
  {
    v94 = v15;
    v95 = v5;
    v96 = v1;
    v38 = (v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
    v40 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption + 24);
    v39 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption + 32);
    __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption), v40);
    if ((*(v39 + 8))(v40, v39))
    {
      sub_240A2AE9C();
      v41 = sub_240A2AFFC();
      v42 = sub_240A2C2CC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2408FE000, v41, v42, "AISFlowStepPasscodeSetup.nextStep with newChild or newTeen", v43, 2u);
        MEMORY[0x245CCDDB0](v43, -1, -1);
      }

      (*(v94 + 8))(v17, v95);
      v44 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse);
      v45 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);
      v46 = objc_allocWithZone(sub_240A2983C());
      v47 = v44;

      v48 = [v46 init];
      type metadata accessor for AISFlowStepChildCreate(0);
      v49 = swift_allocObject();
      return sub_240976868(v47, v45, v48, v49);
    }

    else
    {
      v63 = v38[3];
      v64 = v38[4];
      __swift_project_boxed_opaque_existential_0(v38, v63);
      v65 = (*(v64 + 16))(v63, v64);
      if (v65)
      {
        v66 = v65;
        v67 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse);
        sub_240A2AC0C();
        if (v68)
        {

          sub_240A2AE9C();
          v69 = v66;
          v70 = sub_240A2AFFC();
          v71 = sub_240A2C2CC();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            *v72 = 138412290;
            *(v72 + 4) = v69;
            *v73 = v66;
            v74 = v69;
            _os_log_impl(&dword_2408FE000, v70, v71, "AISFlowStepPasscodeSetup.nextStep with member %@. Starting silent auth step.", v72, 0xCu);
            sub_240915C68(v73);
            MEMORY[0x245CCDDB0](v73, -1, -1);
            MEMORY[0x245CCDDB0](v72, -1, -1);
          }

          (*(v94 + 8))(v11, v95);
          v75 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);
          v76 = objc_allocWithZone(sub_240A2983C());
          v77 = v67;

          v78 = [v76 init];
          type metadata accessor for AISFlowStepSilentChildSignIn(0);
          v79 = swift_allocObject();
          *(v79 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse) = 0;
          *(v79 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse) = v77;
          *(v79 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember) = v69;
          *(v79 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings) = v75;
          *(v79 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask) = v78;
          *(v79 + 24) = 0;
          swift_unknownObjectWeakInit();
          LOBYTE(v97) = 0;
          sub_240A2B0DC();
          result = v79;
          *(v79 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
        }

        else
        {
          sub_240A2AE9C();
          v85 = v66;
          v86 = sub_240A2AFFC();
          v87 = sub_240A2C2CC();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *v88 = 138412290;
            *(v88 + 4) = v85;
            *v89 = v66;
            v90 = v85;
            _os_log_impl(&dword_2408FE000, v86, v87, "AISFlowStepPasscodeSetup.nextStep with member %@. Starting interative auth step.", v88, 0xCu);
            sub_240915C68(v89);
            MEMORY[0x245CCDDB0](v89, -1, -1);
            MEMORY[0x245CCDDB0](v88, -1, -1);
          }

          (*(v94 + 8))(v14, v95);
          v91 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings);
          type metadata accessor for AISFlowStepChildSignIn(0);
          swift_allocObject();
          v92 = v67;

          return sub_240911894(v66, v92, v91);
        }
      }

      else
      {
        sub_240A2AE9C();
        v80 = sub_240A2AFFC();
        v81 = sub_240A2C2AC();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_2408FE000, v80, v81, "AISFlowStepPasscodeSetup.nextStep invalid selectedFamilyOption", v82, 2u);
          MEMORY[0x245CCDDB0](v82, -1, -1);
        }

        (*(v94 + 8))(v8, v95);
        sub_2409767D8();
        v83 = swift_allocError();
        type metadata accessor for AISFlowStepChildSetupError(0);
        v84 = swift_allocObject();
        *(v84 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = v83;
        *(v84 + 24) = 0;
        swift_unknownObjectWeakInit();
        LOBYTE(v97) = 0;
        sub_240A2B0DC();
        result = v84;
        *(v84 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_240976490()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption));

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);

  return sub_24090C1A0(v1, v2);
}

uint64_t sub_2409764F4()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption));

  sub_24090C1A0(*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride), *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t AISFlowStepPasscodeSetupError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

unint64_t sub_2409766B8()
{
  result = qword_27E50CC10;
  if (!qword_27E50CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CC10);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepPasscodeSetup(uint64_t a1)
{
  result = qword_27E50CC18;
  if (!qword_27E50CC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2409767D8()
{
  result = qword_27E50CC28;
  if (!qword_27E50CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CC28);
  }

  return result;
}

uint64_t sub_24097682C(uint64_t (*a1)(void))
{
  a1();

  return sub_240A2C7BC();
}

uint64_t sub_240976868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v14[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v12, v11, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

uint64_t sub_2409769E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

void sub_240976A18(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = a1;
    v10[4] = sub_240976FE8;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_240976B34;
    v10[3] = &block_descriptor_10;
    v6 = _Block_copy(v10);
    v7 = v4;
    v8 = v1;
    v9 = a1;

    [v7 authenticateWithContext:v9 completion:v6];

    _Block_release(v6);
  }
}

uint64_t sub_240976B34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v4 = sub_240A2BEBC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_240976BE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t type metadata accessor for SignInOptionAuthenticationController(uint64_t a1)
{
  result = qword_27E50CC90;
  if (!qword_27E50CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240976DB8(uint64_t a1)
{
  sub_240948458();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_240976E88(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_240A2C24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_240A2C21C();
  v12 = a2;

  v13 = a4;
  v14 = a3;
  v15 = sub_240A2C20C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a2;
  v16[5] = v14;
  v16[6] = a1;
  v16[7] = v13;
  sub_2409230D4(0, 0, v10, &unk_240A33DB0, v16);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240977008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_240A2B00C();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  sub_240A2C21C();
  v7[18] = sub_240A2C20C();
  v10 = sub_240A2C1BC();
  v7[19] = v10;
  v7[20] = v9;

  return MEMORY[0x2822009F8](sub_24097716C, v10, v9);
}

uint64_t sub_24097716C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;

    sub_240A2AE9C();
    v3 = v1;
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2AC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2408FE000, v4, v5, "Failed to authenticate with error: %@", v6, 0xCu);
      sub_240915C68(v7);
      MEMORY[0x245CCDDB0](v7, -1, -1);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v10 = *(v0 + 136);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);
    v13 = *(v0 + 16);

    v14 = *(v12 + 8);
    v14(v10, v11);
    v15 = v1;
    if (sub_240978628(v13))
    {
    }

    else if (sub_24097887C(*(v0 + 16)))
    {

      sub_240A2AE9C();
      v33 = sub_240A2AFFC();
      v34 = sub_240A2C28C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2408FE000, v33, v34, "Received Bluetooth error from Authkit", v35, 2u);
        MEMORY[0x245CCDDB0](v35, -1, -1);
      }

      v36 = *(v0 + 128);
      v37 = *(v0 + 48);
      v38 = *(v0 + 24);

      v14(v36, v37);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 184) = 1;
      v39 = v38;
      sub_240A2B12C();
    }

    else
    {
      v40 = sub_2409789B8(*(v0 + 16));

      if ((v40 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_240A2AE9C();
      v41 = sub_240A2AFFC();
      v42 = sub_240A2C28C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2408FE000, v41, v42, "Received Secondary error from Authkit", v43, 2u);
        MEMORY[0x245CCDDB0](v43, -1, -1);
      }

      v44 = *(v0 + 120);
      v45 = *(v0 + 48);
      v46 = *(v0 + 24);

      v14(v44, v45);
      v47 = *(v46 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback);
      if (v47)
      {
        v48 = *(v46 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback + 8);

        sub_240A2AE9C();
        v49 = sub_240A2AFFC();
        v50 = sub_240A2C28C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_2408FE000, v49, v50, "We have a valid setup fallback completion, calling it", v51, 2u);
          MEMORY[0x245CCDDB0](v51, -1, -1);
        }

        v52 = *(v0 + 112);
        v53 = *(v0 + 48);

        v54 = (v14)(v52, v53);
        v47(v54);
        sub_24090C1A0(v47, v48);
      }

      else
      {
LABEL_32:
        v74 = *(v0 + 16);
        v75 = *(*(*(v0 + 24) + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings) + 24);
        v76 = v1;

        v75(v74, 1);
      }
    }

LABEL_34:

    v77 = *(v0 + 8);

    return v77();
  }

  v16 = *(v0 + 32);
  if (!v16)
  {

    sub_240A2AE9C();
    v55 = sub_240A2AFFC();
    v56 = sub_240A2C2AC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2408FE000, v55, v56, "Missing auth results for the auth.", v57, 2u);
      MEMORY[0x245CCDDB0](v57, -1, -1);
    }

    v58 = *(v0 + 104);
    v59 = *(v0 + 48);
    v60 = *(v0 + 56);
    v61 = *(v0 + 24);

    (*(v60 + 8))(v58, v59);
    v62 = *(*(v61 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings) + 24);
    sub_240977EF8();
    v63 = swift_allocError();
    *v64 = 1;

    v62(v63, 1);

    goto LABEL_34;
  }

  sub_240A2AE9C();
  v17 = sub_240A2AFFC();
  v18 = sub_240A2C28C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2408FE000, v17, v18, "Authentication was successful", v19, 2u);
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  v20 = *(v0 + 96);
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v23 = *(v0 + 24);

  v24 = *(v22 + 8);
  *(v0 + 168) = v24;
  v24(v20, v21);
  if (*(v23 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled) != 1)
  {

    sub_240A2AE9C();
    v65 = sub_240A2AFFC();
    v66 = sub_240A2C28C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2408FE000, v65, v66, "Skipping AIDA sign-in. SignIn completed successfully.", v67, 2u);
      MEMORY[0x245CCDDB0](v67, -1, -1);
    }

    v68 = *(v0 + 64);
    v69 = *(v0 + 48);
    v70 = *(v0 + 24);

    v24(v68, v69);
    v71 = objc_allocWithZone(sub_240A2AA9C());
    v72 = sub_240A2AA7C();
    v73 = *(*(v70 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings) + 24);

    v73(v72, 0);

    goto LABEL_34;
  }

  sub_240A2AE9C();
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C28C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2408FE000, v25, v26, "AIDA sign-in is required.", v27, 2u);
    MEMORY[0x245CCDDB0](v27, -1, -1);
  }

  v28 = *(v0 + 88);
  v29 = *(v0 + 48);

  v24(v28, v29);
  v30 = swift_task_alloc();
  *(v0 + 176) = v30;
  *v30 = v0;
  v30[1] = sub_240977A14;
  v31 = *(v0 + 40);

  return sub_240977F4C(v31, v16);
}

uint64_t sub_240977A14(char a1)
{
  v2 = *v1;
  *(*v1 + 185) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_240977B3C, v4, v3);
}

uint64_t sub_240977B3C()
{
  v1 = *(v0 + 185);

  if (v1 == 1)
  {
    sub_240A2AE9C();
    v2 = sub_240A2AFFC();
    v3 = sub_240A2C28C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2408FE000, v2, v3, "AIDA sign-in completed successfully.", v4, 2u);
      MEMORY[0x245CCDDB0](v4, -1, -1);
    }

    v5 = *(v0 + 168);
    v6 = *(v0 + 80);
    v7 = *(v0 + 48);
    v8 = *(v0 + 24);

    v5(v6, v7);
    v9 = objc_allocWithZone(sub_240A2AA9C());
    v10 = sub_240A2AA7C();
    v11 = *(*(v8 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings) + 24);

    v11(v10, 0);
  }

  else
  {

    sub_240A2AE9C();
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "Failed AIDA sign-in for the auth.", v14, 2u);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    v15 = *(v0 + 168);
    v16 = *(v0 + 72);
    v17 = *(v0 + 48);
    v18 = *(v0 + 24);

    v15(v16, v17);
    v19 = *(*(v18 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings) + 24);
    sub_240977EF8();
    v20 = swift_allocError();
    *v21 = 4;

    v19(v20, 1);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_240977E24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_240977008(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_240977EF8()
{
  result = qword_27E50D530;
  if (!qword_27E50D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50D530);
  }

  return result;
}

uint64_t sub_240977F4C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_240A2B00C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_240A2C21C();
  v3[11] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v3[12] = v6;
  v3[13] = v5;

  return MEMORY[0x2822009F8](sub_240978050, v6, v5);
}

uint64_t sub_240978050(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "SignInOptionAuthenticationController: Begin AIDA sign-in.", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  receiver = v1[5].receiver;
  super_class = v1[3].super_class;
  v7 = v1[4].receiver;
  v8 = v1[2].receiver;

  v9 = v7[1];
  v9(receiver, super_class);
  v10 = [v8 presentingViewController];
  v1[7].receiver = v10;
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v1[3].receiver;
      v15 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager];
      v16 = type metadata accessor for AIDASignInViewController();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR___AISAIDASignInViewController_cdpUIController] = 0;
      *&v17[OBJC_IVAR___AISAIDASignInViewController_navController] = v13;
      *&v17[OBJC_IVAR___AISAIDASignInViewController_aidaOwnersManager] = v15;
      v17[OBJC_IVAR___AISAIDASignInViewController_isTeenFlow] = 0;
      v1[1].receiver = v17;
      v1[1].super_class = v16;
      v18 = v11;
      v19 = v15;
      v20 = objc_msgSendSuper2(v1 + 1, sel_init);
      v1[7].super_class = v20;
      v21 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController];
      *&v14[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = v20;
      v20;

      v22 = swift_task_alloc();
      v1[8].receiver = v22;
      *v22 = v1;
      v22[1] = sub_240978388;
      v23 = v1[2].super_class;

      return sub_240A1F058(v23);
    }
  }

  sub_240A2AE9C();
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C2AC();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v1[4].super_class;
  v29 = v1[3].super_class;
  if (v27)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2408FE000, v25, v26, "AIDA sign-in missing navController.", v30, 2u);
    MEMORY[0x245CCDDB0](v30, -1, -1);
  }

  v9(v28, v29);

  v31 = v1->super_class;

  return v31(0);
}

uint64_t sub_240978388(char a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_2409784B0, v4, v3);
}

uint64_t sub_2409784B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_240978538@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v4;
  return result;
}

uint64_t sub_2409785B8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_240A2B12C();
}

uint64_t sub_240978628(uint64_t a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v19[1] = result;
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    sub_240978C0C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v8 = v19[0];
    v9 = [v19[0] domain];
    v10 = sub_240A2BF4C();
    v12 = v11;

    if (v10 == sub_240A2BF4C() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_240A2C66C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v8 code] != -13006)
    {
LABEL_14:

      return 0;
    }

    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2CC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Proximity auth invalidated", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }

  return result;
}

BOOL sub_24097887C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
  sub_240978C0C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = [v11 domain];
  v3 = sub_240A2BF4C();
  v5 = v4;

  if (v3 == sub_240A2BF4C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_240A2C66C();

    if ((v8 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v11 code];

  return v9 == -13010;
}

uint64_t sub_2409789B8(uint64_t a1)
{
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v19[1] = result;
    v7 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    sub_240978C0C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v8 = v19[0];
    v9 = [v19[0] domain];
    v10 = sub_240A2BF4C();
    v12 = v11;

    if (v10 == sub_240A2BF4C() && v12 == v13)
    {
    }

    else
    {
      v15 = sub_240A2C66C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v8 code] != -13009)
    {
LABEL_14:

      return 0;
    }

    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2CC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Secondary action error", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 1;
  }

  return result;
}

unint64_t sub_240978C0C()
{
  result = qword_27E50CCB0;
  if (!qword_27E50CCB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50CCB0);
  }

  return result;
}

uint64_t sub_240978C58(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AISAppleIDAuthContextProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_presentingViewController] = a2;
  v15.receiver = v5;
  v15.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  v8 = *(a1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember);
  v9 = v8;
  v10 = v7;

  v13 = sub_240919754(v10, a1, v8);
  type metadata accessor for AISSignInViewModel();
  v11 = v13;
  sub_240A2BC4C();

  return v14;
}

uint64_t sub_240978D84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  return v1;
}

uint64_t sub_240978DF8@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v4;
  return result;
}

uint64_t sub_240978E78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_240A2B12C();
}

uint64_t sub_240978EF0(uint64_t a1, unint64_t a2, double a3)
{
  v4 = v3;
  v41 = a2;
  v36 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CD00, &qword_240A33F68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_240A2C31C();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CD08, &qword_240A33F70);
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CCF8, &qword_240A33F60);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v19 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator__image;
  v43[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CCF0, &qword_240A33ED8);
  sub_240A2B0DC();
  (*(v16 + 32))(v4 + v19, v18, v15);
  v20 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_context;
  *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_context) = 0;
  v21 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_publisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CD10, &qword_240A33F78);
  swift_allocObject();
  *(v4 + v21) = sub_240A2B0CC();
  v22 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_cancellationToken);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = MTLCreateSystemDefaultDevice();
  if (v23)
  {
    v24 = [objc_opt_self() contextWithMTLDevice_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2409264A4(MEMORY[0x277D84F90]);
    v25 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_240979B54(&qword_27E50B310, type metadata accessor for CIContextOption, &unk_240A303F4);
    v26 = sub_240A2BE9C();

    v24 = [v25 initWithOptions_];
  }

  v27 = *(v4 + v20);
  *(v4 + v20) = v24;

  v28 = (v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);
  *v28 = a3;
  v28[1] = a3;
  v43[0] = *(v4 + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_publisher);

  sub_240A2C30C();
  sub_240979B08();
  v29 = sub_240A2C32C();
  v42 = v29;
  v30 = sub_240A2C2FC();
  (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  sub_24091CE28(&qword_27E50CD18, &qword_27E50CD10, &qword_240A33F78, MEMORY[0x277CBCE20]);
  sub_240979B54(&qword_27E50CD20, sub_240979B08, MEMORY[0x277D85228]);
  sub_240A2B14C();
  sub_240919300(v8, &qword_27E50CD00, &qword_240A33F68);

  (*(v37 + 8))(v11, v38);

  swift_allocObject();
  swift_weakInit();
  sub_24091CE28(&qword_27E50CD28, &qword_27E50CD08, &qword_240A33F70, MEMORY[0x277CBCCF8]);
  v31 = v40;
  v32 = sub_240A2B15C();

  (*(v39 + 8))(v14, v31);
  v43[3] = sub_240A2B09C();
  v43[0] = v32;
  v33 = OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_cancellationToken;
  swift_beginAccess();
  sub_240979BA4(v43, v4 + v33);
  swift_endAccess();
  if (v41)
  {
    sub_240979570(v36, v41);
  }

  return v4;
}