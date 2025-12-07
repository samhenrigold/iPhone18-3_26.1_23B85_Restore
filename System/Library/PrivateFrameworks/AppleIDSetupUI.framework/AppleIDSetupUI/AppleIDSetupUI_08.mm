void sub_2409FDFB4(void *a1)
{
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50EDE0);
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

uint64_t sub_2409FE1C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240968780;

  return sub_2409FFF14(a1);
}

uint64_t sub_2409FE3F4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2409FE4C8;

  return sub_2409FFF14(v6);
}

uint64_t sub_2409FE4C8(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = sub_240A2952C();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v12 = *(v9 + 8);

  return v12();
}

id SafetySettingsFlowPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SafetySettingsFlowPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409FE79C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2409FE7CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2409FE7EC, 0, 0);
}

uint64_t sub_2409FE7EC()
{
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_240A2B00C();
  v0[21] = __swift_project_value_buffer(v2, qword_27E50EDE0);
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
  v0[3] = sub_2409FEA28;
  v12 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_26;
  v0[14] = v12;
  [v11 performWithContext:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2409FEA28()
{

  return MEMORY[0x2822009F8](sub_2409FEB08, 0, 0);
}

uint64_t sub_2409FEB08()
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

void sub_2409FEC40()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 primaryAuthKitAccount];

  if (v1)
  {
    oslog = [objc_allocWithZone(MEMORY[0x277CF02D0]) init];
    [oslog markSafetyScreenSeenForAccount:v1];
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v2 = sub_240A2B00C();
    __swift_project_value_buffer(v2, qword_27E50EDE0);
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
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v6 = sub_240A2B00C();
    __swift_project_value_buffer(v6, qword_27E50EDE0);
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

uint64_t sub_2409FEE7C()
{
  if (sub_240A2A9DC())
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v1 = sub_240A2B00C();
    __swift_project_value_buffer(v1, qword_27E50EDE0);
    v2 = sub_240A2AFFC();
    v3 = sub_240A2C29C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2408FE000, v2, v3, "Safety settings already enabled - not showing safety settings", v4, 2u);
      MEMORY[0x245CCDDB0](v4, -1, -1);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_2409FF10C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v16 = sub_240A2B00C();
    __swift_project_value_buffer(v16, qword_27E50EDE0);
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
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v8 = sub_240A2B00C();
      __swift_project_value_buffer(v8, qword_27E50EDE0);
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
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v21 = sub_240A2B00C();
      __swift_project_value_buffer(v21, qword_27E50EDE0);
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

uint64_t sub_2409FF454(void *a1)
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

  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50EDE0);
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

uint64_t sub_2409FF634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return MEMORY[0x2822009F8](sub_2409FF6FC, 0, 0);
}

uint64_t sub_2409FF6FC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_0(*(v0 + 48), *(*(v0 + 48) + 24));
  (*(v2 + 104))(v1, *MEMORY[0x277CED210], v3);
  v4 = sub_240A2AACC();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    if (qword_27E50AFB0 != -1)
    {
      swift_once();
    }

    v12 = sub_240A2B00C();
    __swift_project_value_buffer(v12, qword_27E50EDE0);
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C29C();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_26;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "ageBasedAccountRestrictions is not enabled - not showing safety settings";
    goto LABEL_25;
  }

  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  v6 = sub_240A2B00C();
  *(v0 + 80) = __swift_project_value_buffer(v6, qword_27E50EDE0);
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

  v17 = *(v0 + 40);

  __swift_project_boxed_opaque_existential_0(v17, v17[3]);
  v18 = sub_240A2AD6C();
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();
  v19 = os_log_type_enabled(v13, v14);
  if (v18)
  {
    if (v19)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "Network reachability check passed", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = *(v0 + 24);

    if (v21)
    {
      v22 = [*(v0 + 24) primaryAuthKitAccount];
      *(v0 + 88) = v22;
      if (v22)
      {
        v23 = sub_240A2AFFC();
        v24 = sub_240A2C29C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_2408FE000, v23, v24, "Primary account check passed", v25, 2u);
          MEMORY[0x245CCDDB0](v25, -1, -1);
        }

        v26 = swift_task_alloc();
        *(v0 + 96) = v26;
        *v26 = v0;
        v26[1] = sub_2409FFB98;
        v27 = *(v0 + 32);

        return sub_2409FEE5C(v27);
      }
    }

    v13 = sub_240A2AFFC();
    v14 = sub_240A2C29C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "No primary account found - not showing safety settings";
      goto LABEL_25;
    }
  }

  else if (v19)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Network is not reachable - not showing safety settings";
LABEL_25:
    _os_log_impl(&dword_2408FE000, v13, v14, v16, v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

LABEL_26:

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_2409FFB98(char a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_2409FFC98, 0, 0);
}

uint64_t sub_2409FFC98(uint64_t a1)
{
  if (*(v1 + 104))
  {
    goto LABEL_8;
  }

  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ScreenTime settings check passed", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = *(v1 + 88);
  v6 = *(v1 + 24);

  v7 = sub_240A2AA1C();
  if ((sub_2409FF10C(v7, v5, v6) & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "Age eligibility check passed", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v11 = *(v1 + 88);

  if (sub_2409FF454(v11))
  {
LABEL_8:
    v12 = 0;
    v13 = *(v1 + 88);
  }

  else
  {
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Safety screen seen check passed", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();
    v21 = os_log_type_enabled(v19, v20);
    v13 = *(v1 + 88);
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "All checks passed - showing safety settings", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    v12 = 1;
  }

  v14 = *(v1 + 8);

  return v14(v12);
}

uint64_t sub_2409FFF34()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 144) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v2 = [objc_opt_self() sharedNetworkObserver];
  v3 = sub_2409194E8(0, &qword_27E50EE10, 0x277CF0278);
  v4 = MEMORY[0x277CEDE58];
  *(v0 + 80) = v3;
  *(v0 + 88) = v4;
  *(v0 + 56) = v2;
  v5 = sub_240A2A12C();
  v6 = sub_240A2A11C();
  v7 = MEMORY[0x277CED7C0];
  *(v0 + 96) = v6;
  *(v0 + 120) = v5;
  *(v0 + 128) = v7;
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_240A000AC;
  v9 = *(v0 + 136);

  return sub_2409FF634(v9, v1, v0 + 16, v0 + 56, v0 + 96);
}

uint64_t sub_240A000AC(char a1)
{
  v4 = *v2;
  v4[20] = v1;

  if (v1)
  {
    v5 = v4[18];
    sub_240919300((v4 + 2), &unk_27E50C950, &qword_240A38240);

    return MEMORY[0x2822009F8](sub_240A00248, 0, 0);
  }

  else
  {
    v6 = v4[18];
    sub_240919300((v4 + 2), &unk_27E50C950, &qword_240A38240);

    __swift_destroy_boxed_opaque_existential_0(v4 + 12);
    __swift_destroy_boxed_opaque_existential_0(v4 + 7);
    v7 = v4[1];

    return v7(a1 & 1);
  }
}

uint64_t sub_240A00248()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[1];

  return v1(0);
}

uint64_t dispatch thunk of SafetySettingsFlowPresenter.shouldPresentSafetySettings(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xD8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24096AC20;

  return v7(a1);
}

uint64_t sub_240A004F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_2409FE3F4(v2, v3, v4);
}

uint64_t sub_240A00620()
{
  v1 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_240A006B8(char a1)
{
  v3 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_240A00768(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_240A007C8()
{
  v1 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_240A00814(uint64_t a1)
{
  v3 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *RepairViewController.init(contextBuilder:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a1;
  v44 = a2;
  v7 = sub_240A29A9C();
  MEMORY[0x28223BE20](v7 - 8);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v9 = MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for RepairView(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss] = 0;
  *&v4[OBJC_IVAR_____AISRepairViewController_hostingController] = 0;
  v20 = type metadata accessor for RepairViewController();
  v49.receiver = v4;
  v49.super_class = v20;
  v21 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a3;
  v40 = a4;
  v23[4] = a4;
  sub_240A2A27C();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v24 = v21;

  sub_240A2C32C();
  v25 = sub_240A2B01C();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v38 = sub_240A2A25C();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  sub_240919298(v12, v39, &qword_27E50C058, &qword_240A31F50);
  sub_240A2BC4C();
  sub_240919300(v12, &qword_27E50C058, &qword_240A31F50);
  v27 = v19 + *(v17 + 44);
  v45 = 0;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
  sub_240A2BC4C();
  v28 = v48;
  *v27 = v47;
  *(v27 + 2) = v28;
  v29 = *(v17 + 48);
  *(v19 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_240A29A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C078, &qword_240A31FA8);
  swift_allocObject();
  v45 = sub_240A29CDC();
  sub_240A2BC4C();

  v30 = *(&v47 + 1);
  v19[5] = v47;
  v19[6] = v30;
  v31 = v44;
  *v19 = v43;
  v19[1] = v31;
  v19[2] = sub_240A010B0;
  v19[3] = v23;
  v19[4] = v38;
  v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C080, qword_240A31FB0));
  v33 = sub_240A2B5EC();

  v34 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v35 = *&v24[v34];
  *&v24[v34] = v33;

  return v24;
}

void sub_240A00E1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_240A2B00C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_240919298(a1, v10, &qword_27E50C088, &unk_240A32000);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    sub_24093BCB8(v10, v18 + v17);

    sub_240A0231C(1, sub_24093BE40, v18);
  }

  else
  {
    sub_240A2AEAC();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "RepairViewContoller report handler called but RepairViewController is nil!", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v12 + 8))(v14, v11);
    a3(a1);
  }
}

char *RepairViewController.__allocating_init(context:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = objc_allocWithZone(type metadata accessor for RepairViewController());
  v11 = RepairViewController.init(contextBuilder:reportHandler:)(sub_240A01574, v8, sub_240A01AA8, v9);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

char *RepairViewController.init(context:reportHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = objc_allocWithZone(type metadata accessor for RepairViewController());
  v9 = RepairViewController.init(contextBuilder:reportHandler:)(sub_240A02C90, v6, sub_240A02C94, v7);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

void sub_240A01278(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_240A29D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2B00C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v7 + 16))(v9, a1, v6);
    v14 = a2;
    sub_240A29D3C();

    (*(v7 + 8))(a1, v6);
  }

  else
  {
    sub_240A2AEAC();
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[1] = a3;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "Client passed in a nil objc context, this is a fatal error.", v17, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    (*(v7 + 16))(v9, a1, v6);
    v19 = sub_240A29A1C();
    sub_240A02C38();
    v20 = swift_allocError();
    *v21 = 0xD000000000000020;
    v21[1] = 0x8000000240A3F260;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277CED440], v19);
    sub_240A29D0C();
    (*(v7 + 8))(a1, v6);
  }
}

void sub_240A0157C(uint64_t a1, void (*a2)(void *, void *), uint64_t a3)
{
  v53 = a3;
  v54 = a2;
  v4 = sub_240A2B00C();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v47 - v8;
  v55 = sub_240A29B9C();
  v9 = *(v55 - 8);
  v10 = MEMORY[0x28223BE20](v55);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000);
  MEMORY[0x28223BE20](v18);
  v20 = (&v47 - v19);
  sub_240919298(a1, &v47 - v19, &qword_27E50C088, &unk_240A32000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_240A2AEAC();
    v22 = v21;
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2AC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_2408FE000, v23, v24, "Returning repair error from vc: %@", v25, 0xCu);
      sub_240919300(v26, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v26, -1, -1);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    (*(v51 + 8))(v7, v52);
    v29 = v21;
    v54(0, v21);
  }

  else
  {
    v30 = v20;
    v31 = v55;
    (*(v9 + 32))(v17, v30, v55);
    sub_240A2AEAC();
    v32 = *(v9 + 16);
    v32(v15, v17, v31);
    v33 = sub_240A2AFFC();
    v34 = sub_240A2C28C();
    v35 = v17;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v49 = v17;
      v37 = v36;
      v48 = swift_slowAlloc();
      v56 = v48;
      *v37 = 136315138;
      v38 = v55;
      v32(v12, v15, v55);
      v39 = sub_240A2BF9C();
      v41 = v40;
      v42 = v38;
      v43 = *(v9 + 8);
      v43(v15, v42);
      v44 = sub_240925464(v39, v41, &v56);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_2408FE000, v33, v34, "Returning repair report from vc converted into objc: %s", v37, 0xCu);
      v45 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x245CCDDB0](v45, -1, -1);
      v35 = v49;
      MEMORY[0x245CCDDB0](v37, -1, -1);
    }

    else
    {

      v43 = *(v9 + 8);
      v43(v15, v55);
    }

    (*(v51 + 8))(v50, v52);
    v46 = sub_240A29B8C();
    v54(v46, 0);

    v43(v35, v55);
  }
}

id RepairViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void RepairViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss) = 0;
  *(v0 + OBJC_IVAR_____AISRepairViewController_hostingController) = 0;
  sub_240A2C58C();
  __break(1u);
}

void sub_240A01CCC()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  MEMORY[0x28223BE20](v2 - 8);
  v63.receiver = v0;
  v63.super_class = type metadata accessor for RepairViewController();
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v3 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = sub_240A2B3BC();
  v10 = sub_240A2B5BC();
  if ((*v9 & v8) != 0)
  {
    *v9 &= ~v8;
  }

  v10(v62, 0);

  v11 = *&v1[v3];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v14 willMoveToParentViewController_];
  if (!*&v1[v3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v15;
  v17 = *&v1[v3];
  if (!v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = [v17 view];
  if (!v18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = v18;
  [v16 addSubview_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_240A318E0;
  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v24 = [v23 view];
  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v21 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 32) = v28;
  v29 = *&v1[v3];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v21 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 40) = v34;
  v35 = *&v1[v3];
  if (!v35)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v21 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v22 + 48) = v40;
  v41 = *&v1[v3];
  if (!v41)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v42 = [v41 view];
  if (!v42)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v21 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v22 + 56) = v46;
  v47 = *&v1[v3];
  if (!v47)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v48 = [v47 view];
  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v48;
  v50 = [v48 centerXAnchor];

  v51 = [v21 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v22 + 64) = v52;
  v53 = *&v1[v3];
  if (!v53)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = [v55 centerYAnchor];

  v58 = [v21 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v22 + 72) = v59;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v60 = sub_240A2C15C();

  [v56 activateConstraints_];

  v61 = *&v1[v3];
  if (v61)
  {
    [v61 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_240A0231C(int a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_240A2B00C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  swift_beginAccess();
  if (*(v3 + v17) == 1)
  {
    v40 = a1;
    sub_240A2AEAC();
    v18 = v3;
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v39 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v23 = v18;
      v24 = v18;
      _os_log_impl(&dword_2408FE000, v19, v20, "Auto dismiss is enabled, dismissing view controller: %@", v22, 0xCu);
      sub_240919300(v23, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      v25 = v22;
      a3 = v39;
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v26 = sub_240A2C24C();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_240A2C21C();
    v27 = v18;
    sub_240964BBC(a2, a3);
    v28 = sub_240A2C20C();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    *(v29 + 16) = v28;
    *(v29 + 24) = v30;
    *(v29 + 32) = v27;
    *(v29 + 40) = v40 & 1;
    *(v29 + 48) = a2;
    *(v29 + 56) = a3;
    sub_2409230D4(0, 0, v9, &unk_240A382E0, v29);
  }

  else
  {
    sub_240A2AEAC();
    v32 = v3;
    v33 = sub_240A2AFFC();
    v34 = sub_240A2C29C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_2408FE000, v33, v34, "Auto dismiss is disabled, leaving view controller up: %@", v35, 0xCu);
      sub_240919300(v36, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v36, -1, -1);
      MEMORY[0x245CCDDB0](v35, -1, -1);
    }

    result = (*(v11 + 8))(v14, v10);
    if (a2)
    {
      return a2(result);
    }
  }

  return result;
}

uint64_t sub_240A02730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 96) = a5;
  *(v7 + 64) = a4;
  sub_240A2C21C();
  *(v7 + 88) = sub_240A2C20C();
  v9 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A027D0, v9, v8);
}

uint64_t sub_240A027D0()
{
  v1 = v0[9];

  if (v1)
  {
    v2 = v0[10];
    v0[6] = v0[9];
    v0[7] = v2;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409EC704;
    v0[5] = &block_descriptor_27;
    v1 = _Block_copy(v0 + 2);
  }

  [v0[8] dismissViewControllerAnimated:*(v0 + 96) completion:v1];
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

id RepairViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id RepairViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RepairViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_240A02B48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_240A02730(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240A02C38()
{
  result = qword_27E50EE28;
  if (!qword_27E50EE28)
  {
    sub_240A29A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EE28);
  }

  return result;
}

uint64_t sub_240A02C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = sub_240A2B00C();
  v5[30] = v6;
  v5[31] = *(v6 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A02D6C, 0, 0);
}

uint64_t sub_240A02D6C(uint64_t a1)
{
  v38 = v1;
  v2 = v1[25];
  v3 = v1[26];
  sub_240A2AE9C();
  v4 = v2;
  v5 = v3;
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[33];
  v11 = v1[30];
  v10 = v1[31];
  if (v8)
  {
    v34 = v1[26];
    v36 = v1[33];
    v12 = v1[25];
    v35 = v1[30];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315394;
    v15 = v12;
    v16 = [v15 description];
    v17 = sub_240A2BF4C();
    v19 = v18;

    v20 = sub_240925464(v17, v19, &v37);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    v21 = v34;
    v22 = [v21 description];
    v23 = sub_240A2BF4C();
    v25 = v24;

    v26 = sub_240925464(v23, v25, &v37);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_2408FE000, v6, v7, "NotifyParentForServicesSetup with context=%s, navigationController=%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);

    (*(v10 + 8))(v36, v35);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v27 = v1[29];
  v28 = v1[25];
  v29 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  v1[34] = v29;
  [v29 setPresentationType_];
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v1[22] = sub_240A086E4;
  v1[23] = v30;
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_2409EC704;
  v1[21] = &block_descriptor_136;
  v31 = _Block_copy(v1 + 18);

  [v29 setPresentationHandler_];
  _Block_release(v31);
  v1[2] = v1;
  v1[7] = v1 + 24;
  v1[3] = sub_240A03148;
  v32 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_240A271E4;
  v1[13] = &block_descriptor_139;
  v1[14] = v32;
  [v29 performWithContext:v28 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_240A03148()
{

  return MEMORY[0x2822009F8](sub_240A03228, 0, 0);
}

uint64_t sub_240A03228(uint64_t a1)
{
  v2 = v1[24];
  v1[35] = v2;
  sub_240A2AE9C();
  v3 = v2;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_2408FE000, v4, v5, "NotifyParentForServicesSetup got response %{mask.hash}@", v6, 0x16u);
    sub_240919300(v7, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v7, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v10 = v1[31];
  v9 = v1[32];
  v11 = v1[30];

  (*(v10 + 8))(v9, v11);
  sub_240A2C21C();
  v1[36] = sub_240A2C20C();
  v13 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A033D8, v13, v12);
}

uint64_t sub_240A033D8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 216);

  sub_240A0350C(v1, v2);

  return MEMORY[0x2822009F8](sub_240A0348C, 0, 0);
}

uint64_t sub_240A0348C()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

void sub_240A0350C(void *a1, void (*a2)(id, id))
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-4] - v9;
  v11 = [a1 userInfo];
  if (!v11)
  {
    v32 = 0u;
    v33 = 0u;
    goto LABEL_12;
  }

  v34 = v10;
  v12 = v11;
  v13 = sub_240A2BEBC();

  strcpy(v30, "userCancelled");
  v30[7] = -4864;
  sub_240A2C44C();
  if (!*(v13 + 16) || (v14 = sub_240925A94(v31), (v15 & 1) == 0))
  {

    sub_2409266D4(v31);
    v32 = 0u;
    v33 = 0u;
    goto LABEL_12;
  }

  sub_240913DC0(*(v13 + 56) + 32 * v14, &v32);
  sub_2409266D4(v31);

  if (!*(&v33 + 1))
  {
LABEL_12:
    sub_240919300(&v32, &qword_27E50C6D0, &unk_240A33620);
    goto LABEL_13;
  }

  if (swift_dynamicCast() && (v31[0] & 1) != 0)
  {
    v16 = v34;
    sub_240A2AE9C();
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C2AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "FACircleStateController user did tap back", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    sub_240915CF8();
    v20 = swift_allocError();
    *v21 = xmmword_240A382F0;
    v22 = 1;
    goto LABEL_18;
  }

LABEL_13:
  if ([a1 loadSuccess])
  {
    v23 = [a1 success];
    v24 = [a1 error];
    a2(v23, v24);

    return;
  }

  sub_240A2AE9C();
  v25 = sub_240A2AFFC();
  v26 = sub_240A2C2AC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2408FE000, v25, v26, "NotifyParentForServicesSetup response: load fail", v27, 2u);
    MEMORY[0x245CCDDB0](v27, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_240915CF8();
  v20 = swift_allocError();
  *v28 = 0xD000000000000038;
  v28[1] = 0x8000000240A3F3B0;
  v22 = 0;
LABEL_18:
  a2(v22, v20);
}

uint64_t sub_240A03A68(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A03B34, 0, 0);
}

uint64_t sub_240A03B34(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[18];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2408FE000, v2, v3, "ShieldSetup proximitySetupSelectedAccount accountType %ld", v5, 0xCu);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v6 = v1[23];
  v7 = v1[20];
  v8 = v1[21];

  v9 = *(v8 + 8);
  v9(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[24] = Strong;
  if (Strong)
  {
    v11 = Strong;
    v12 = v1[18];
    v1[2] = v1;
    v1[7] = v1 + 25;
    v1[3] = sub_240A03E0C;
    v13 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_130_0;
    v1[14] = v13;
    [v11 shieldSetupSelectedAccount:v12 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[22];
    v18 = v1[20];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "ShieldSetup proximitySetupSelectedAccount failed because there is no delegate", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    v9(v17, v18);

    v20 = v1[1];

    return v20(0);
  }
}

uint64_t sub_240A03E0C()
{

  return MEMORY[0x2822009F8](sub_240A03EEC, 0, 0);
}

uint64_t sub_240A03EEC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240A040E8(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_240A041A4;

  return sub_240A03A68(a1);
}

uint64_t sub_240A041A4(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240A042EC()
{
  v1[18] = v0;
  v2 = sub_240A2B00C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A043B8, 0, 0);
}

uint64_t sub_240A043B8(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ShieldSetup setupPasscodeAndBiometric", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[22];
  v6 = v1[19];
  v7 = v1[20];

  v8 = *(v7 + 8);
  v8(v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[23] = Strong;
  if (Strong)
  {
    v10 = Strong;
    v1[2] = v1;
    v1[7] = v1 + 24;
    v1[3] = sub_240A0467C;
    v11 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_112;
    v1[14] = v11;
    [v10 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    sub_240A2AE9C();
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[21];
    v16 = v1[19];
    if (v14)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "ShieldSetup setupPasscodeAndBiometric failed because there is no delegate", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v8(v15, v16);

    v18 = v1[1];

    return v18(0);
  }
}

uint64_t sub_240A0467C()
{

  return MEMORY[0x2822009F8](sub_240A0475C, 0, 0);
}

uint64_t sub_240A0475C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240A04948(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_240A08730;

  return sub_240A042EC();
}

uint64_t sub_240A049F0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240A04ABC, 0, 0);
}

uint64_t sub_240A04ABC(uint64_t a1)
{
  v27 = v1;
  sub_240A2AE9C();

  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[23];
  v6 = v1[20];
  v7 = v1[21];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v10 = sub_240A2BECC();
    v12 = sub_240925464(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v2, v3, "ShieldSetup setupPerformAIDASignIn with authResults %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[24] = Strong;
  if (Strong)
  {
    v15 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v16 = sub_240A2BE9C();
    v1[25] = v16;
    v1[2] = v1;
    v1[7] = v1 + 26;
    v1[3] = sub_240A04E64;
    v17 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_94;
    v1[14] = v17;
    [v15 performAIDASignInWith:v16 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    sub_240A2AE9C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2AC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1[22];
    v22 = v1[20];
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "ShieldSetup setupPerformAIDASignIn failed because there is no delegate", v23, 2u);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v13(v21, v22);

    v24 = v1[1];

    return v24(0);
  }
}

uint64_t sub_240A04E64()
{

  return MEMORY[0x2822009F8](sub_240A04F44, 0, 0);
}

uint64_t sub_240A04F44()
{
  v1 = *(v0 + 200);
  swift_unknownObjectRelease();
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_240A05148(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  v5 = sub_240A2BEBC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_240914ED8;

  return sub_240A049F0(v5);
}

void sub_240A0523C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v43 - v11;
  sub_240A2AE9C();

  v13 = a2;
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43[1] = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46 = a1;
    v47 = v18;
    *v17 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50EEE0, &qword_240A38398);
    v19 = sub_240A2BF9C();
    v44 = v10;
    v21 = sub_240925464(v19, v20, &v47);
    v45 = a1;
    v22 = v6;
    v23 = v7;
    v24 = v21;

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v46 = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v26 = sub_240A2BF9C();
    v28 = sub_240925464(v26, v27, &v47);
    v7 = v23;
    v6 = v22;
    a1 = v45;

    *(v17 + 14) = v28;
    v10 = v44;
    _os_log_impl(&dword_2408FE000, v14, v15, "ShieldSetup proximitySetupCompleted withResult %s, error %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v18, -1, -1);
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  v29 = *(v7 + 8);
  v29(v12, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (a2)
    {
      v32 = [Strong respondsToSelector_];
      v33 = a2;
      if ((v32 & 1) == 0)
      {
        v42 = sub_240A2952C();
        [v31 shieldSetupDidFinishWithResult:0 error:v42];

        if (a1)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }

      v34 = a2;
      swift_unknownObjectRetain();
      v35 = sub_240A2952C();
      [v31 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v35];
      swift_unknownObjectRelease();
    }

    if (a1)
    {
LABEL_8:
      v36 = objc_allocWithZone(MEMORY[0x277CEDE80]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
      v37 = sub_240A2BE9C();
      v38 = [v36 initWithAuthResults_];

      if ([v31 respondsToSelector_])
      {
        [v31 shieldSetupDidFinishWithResult:v38 viewControllersToRemove:0 error:0];
      }

      else
      {
        [v31 shieldSetupDidFinishWithResult:v38 error:0];
      }

      swift_unknownObjectRelease();

      return;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return;
  }

  sub_240A2AE9C();
  v39 = sub_240A2AFFC();
  v40 = sub_240A2C2AC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2408FE000, v39, v40, "ShieldSetup proximitySetupCompleted failed because there is no delegate", v41, 2u);
    MEMORY[0x245CCDDB0](v41, -1, -1);
  }

  v29(v10, v6);
}

id sub_240A057DC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_240A05884(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
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

  return MEMORY[0x2822009F8](sub_240A05990, v5, v4);
}

uint64_t sub_240A05990(uint64_t a1)
{
  v2 = v1[18];
  sub_240A2AE9C();
  v3 = v2;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_2408FE000, v4, v5, "ChildSetup setupPerformAIDASignIn with authResults %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  v10 = v1[24];
  v11 = v1[20];
  v12 = v1[21];

  v13 = *(v12 + 8);
  v13(v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[28] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    sub_240A2BEAC();

    sub_240A2AE9C();
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2AC();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v1[23];
    v27 = v1[20];
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "ChildSetup setupPerformAIDASignIn failed. Unexpected auth response type", v28, 2u);
      MEMORY[0x245CCDDB0](v28, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v21 = v26;
    v22 = v27;
  }

  else
  {

    sub_240A2AE9C();
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C2AC();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[22];
    v19 = v1[20];
    if (v17)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "ChildSetup setupPerformAIDASignIn failed because there is no delegate", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    v21 = v18;
    v22 = v19;
  }

  v13(v21, v22);

  v29 = v1[1];

  return v29(0);
}

uint64_t sub_240A05DF4()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_240A05EFC, v2, v1);
}

uint64_t sub_240A05EFC()
{
  v1 = *(v0 + 232);

  swift_unknownObjectRelease();
  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_240A06120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A061BC, v5, v4);
}

uint64_t sub_240A061BC()
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
  v6[1] = sub_240A06280;
  v7 = v0[2];

  return sub_240A05884(v7);
}

uint64_t sub_240A06280(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_240A0656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A06608, v5, v4);
}

uint64_t sub_240A06608()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_240A066C8;

  return sub_240A07194();
}

uint64_t sub_240A066C8(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v7 = *v1;

  swift_unknownObjectRelease();
  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_240A069C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_240A2C21C();
  v4[6] = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A06A5C, v6, v5);
}

uint64_t sub_240A06A5C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = v3;
  swift_unknownObjectRetain();
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_240A06B24;

  return sub_240A07644();
}

uint64_t sub_240A06B24(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 16);
  v8 = *v1;

  swift_unknownObjectRelease();
  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_240A06D90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_240A06DC0(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUIP33_C3572E3C1D8DC9EF23BF6901B87D7EFD10ChildSetup_childFlowPresenter] = [objc_allocWithZone(type metadata accessor for AISChildSetupPresenter()) init];
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ChildSetup();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v2;
}

id sub_240A06E90(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_authContext] = 0;
  v7 = &v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetup];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetup] = 0;
  v8 = &v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetupController];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_childSetupController] = 0;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_signInOptionsAuthController] = a1;
  v9 = OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_context;
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI11ShieldSetup_context] = a2;
  swift_unknownObjectWeakAssign();
  v10 = *&v4[v9];
  v11 = a1;
  v12 = a2;
  v13 = [v10 signInFlowType];
  if (v13 == 1)
  {
    v21 = objc_allocWithZone(type metadata accessor for ChildSetup());
    v22 = swift_unknownObjectRetain();
    v20 = sub_240A06DC0(v22);
    swift_unknownObjectRelease();
    v8 = v7;
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_7:
    v24.receiver = v4;
    v24.super_class = type metadata accessor for ShieldSetup();
    return objc_msgSendSuper2(&v24, sel_init);
  }

  v14 = *&v11[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings];
  v15 = objc_opt_self();

  result = [v15 defaultStore];
  if (result)
  {
    v17 = result;
    v18 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v19 = objc_allocWithZone(type metadata accessor for SignInOptionChildSetupController());
    v20 = sub_240A0B5C4(v14, v18, 0);

LABEL_6:
    v23 = *v8;
    *v8 = v20;

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_240A07060()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "NotifyParentView familyCirclePresentationHandler", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_240A07194()
{
  v1[18] = v0;
  v2 = sub_240A2B00C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x2822009F8](sub_240A07288, v4, v3);
}

uint64_t sub_240A07288()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector_])
    {
      v0[2] = v0;
      v0[7] = v0 + 26;
      v0[3] = sub_240A074C0;
      v3 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2409F972C;
      v0[13] = &block_descriptor_58;
      v0[14] = v3;
      [v2 setupLocationServicesWithCompletion_];

      return MEMORY[0x282200938](v0 + 2);
    }

    swift_unknownObjectRelease();
  }

  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  if (v6)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "ChildSetup skip location services setup", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v8 + 8))(v7, v9);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_240A074C0()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_240A075C8, v2, v1);
}

uint64_t sub_240A075C8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240A07644()
{
  v1[18] = v0;
  v2 = sub_240A2B00C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  sub_240A2C21C();
  v1[23] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v1[24] = v4;
  v1[25] = v3;

  return MEMORY[0x2822009F8](sub_240A07744, v4, v3);
}

uint64_t sub_240A07744(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ChildSetup setupPasscodeAndBiometric", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[22];
  v6 = v1[19];
  v7 = v1[20];

  v8 = *(v7 + 8);
  v8(v5, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[26] = Strong;
  if (Strong)
  {
    v10 = Strong;
    v1[2] = v1;
    v1[7] = v1 + 27;
    v1[3] = sub_240A07A10;
    v11 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_28;
    v1[14] = v11;
    [v10 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {

    sub_240A2AE9C();
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v1[21];
    v16 = v1[19];
    if (v14)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v12, v13, "ChildSetup setupPasscodeAndBiometric failed because there is no delegate", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    v8(v15, v16);

    v18 = v1[1];

    return v18(0);
  }
}

uint64_t sub_240A07A10()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x2822009F8](sub_240A07B18, v2, v1);
}

uint64_t sub_240A07B18()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_240A07B9C(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v49 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v49 - v12;
  sub_240A2AE9C();
  v14 = a1;
  v15 = sub_240A2AFFC();
  v16 = sub_240A2C2CC();

  v17 = os_log_type_enabled(v15, v16);
  v52 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v51 = v11;
    v19 = v18;
    v49[0] = swift_slowAlloc();
    v53 = v49[0];
    *v19 = 136315138;
    v20 = v14;
    v49[1] = v2;
    v21 = v20;
    v22 = [v20 description];
    v23 = sub_240A2BF4C();
    v50 = v8;
    v24 = v23;
    v25 = v5;
    v26 = v4;
    v28 = v27;

    v29 = sub_240925464(v24, v28, &v53);
    v4 = v26;
    v5 = v25;

    *(v19 + 4) = v29;
    v8 = v50;
    _os_log_impl(&dword_2408FE000, v15, v16, "ChildSetup completed withResult %s", v19, 0xCu);
    v30 = v49[0];
    __swift_destroy_boxed_opaque_existential_0(v49[0]);
    MEMORY[0x245CCDDB0](v30, -1, -1);
    v31 = v19;
    v11 = v51;
    MEMORY[0x245CCDDB0](v31, -1, -1);
  }

  v32 = *(v5 + 8);
  v32(v13, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_240A2AE9C();
    v41 = sub_240A2AFFC();
    v42 = sub_240A2C2AC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v8;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_2408FE000, v41, v42, "ChildSetup failed because there is no delegate", v44, 2u);
      MEMORY[0x245CCDDB0](v44, -1, -1);

      v45 = v43;
    }

    else
    {

      v45 = v8;
    }

LABEL_16:
    v32(v45, v4);
    return;
  }

  v34 = Strong;
  v35 = sub_240A2AAFC();
  v36 = sub_240A2ABFC();

  v37 = sub_240A09534(v36);

  if (!v37)
  {
    sub_240A2AE9C();
    v46 = sub_240A2AFFC();
    v47 = sub_240A2C2AC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2408FE000, v46, v47, "ChildSetup setupPerformAIDASignIn failed. Unexpected auth response type", v48, 2u);
      MEMORY[0x245CCDDB0](v48, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v45 = v11;
    goto LABEL_16;
  }

  v38 = objc_allocWithZone(MEMORY[0x277CEDE80]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  v39 = sub_240A2BE9C();

  v40 = [v38 initWithAuthResults_];

  if ([v34 respondsToSelector_])
  {
    [v34 shieldSetupDidFinishWithResult:v40 viewControllersToRemove:0 error:0];
  }

  else
  {
    [v34 shieldSetupDidFinishWithResult:v40 error:0];
  }

  swift_unknownObjectRelease();
}

void sub_240A08044(uint64_t a1)
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      swift_unknownObjectRetain();
      v12 = sub_240A2952C();
      [v6 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v12];
      swift_unknownObjectRelease_n();
    }

    else
    {
      v12 = sub_240A2952C();
      [v6 shieldSetupDidFinishWithResult:0 error:v12];
      swift_unknownObjectRelease();
    }

    v10 = v12;
  }

  else
  {
    sub_240A2AE9C();
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C2AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2408FE000, v7, v8, "ChildSetup failed because there is no delegate", v9, 2u);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_240A08248()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_240915E50;

  return sub_240A069C0(v2, v3, v5, v4);
}

uint64_t sub_240A08320()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A0656C(v2, v3, v4);
}

uint64_t sub_240A083D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A06120(v2, v3, v4);
}

uint64_t objectdestroy_60Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240A084D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A05148(v2, v3, v4);
}

uint64_t sub_240A08584()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return sub_240A04948(v2, v3);
}

uint64_t sub_240A08630()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A040E8(v2, v3, v4);
}

uint64_t block_copy_helper_134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A0874C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A0883C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240A087B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A0883C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240A08814(uint64_t a1)
{
  sub_240A0883C();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_240A0883C()
{
  result = qword_27E50EF00;
  if (!qword_27E50EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EF00);
  }

  return result;
}

void sub_240A08890()
{
  v0 = sub_240A2B52C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A29DBC();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF08, qword_240A38538);
  sub_240A2B82C();
  sub_2409989F4();
  sub_240A2B53C();
  (*(v1 + 8))(v3, v0);
  v7 = [objc_allocWithZone(MEMORY[0x277CF03C0]) initWithType_];
  sub_240A2BFCC();
  v8 = sub_240A2BF1C();

  [v7 setTitleText_];

  sub_240A2C02C();
  v9 = sub_240A2BF1C();

  [v7 setDetailedText_];

  [v7 setShowHeaderView_];
  v10 = [objc_allocWithZone(MEMORY[0x277CF03B8]) initWithViewModel_];
  v11 = [v10 view];
  if (v11)
  {
    v12 = v11;
    [v11 layoutIfNeeded];

    v13 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v14 = v10;
    v15 = [v14 contentView];
    [v15 addSubview_];

    v31 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_240A38420;
    v17 = [v14 contentView];
    v18 = [v17 heightAnchor];

    [v14 availableContentViewHeight];
    v19 = [v18 constraintEqualToConstant_];

    *(v16 + 32) = v19;
    v20 = [v13 topAnchor];
    v21 = [v14 contentView];
    v22 = [v21 topAnchor];

    v23 = [v20 constraintEqualToAnchor_];
    *(v16 + 40) = v23;
    v24 = [v13 centerXAnchor];

    v25 = [v14 contentView];
    v26 = [v25 centerXAnchor];

    v27 = [v24 constraintEqualToAnchor_];
    *(v16 + 48) = v27;
    sub_24092F234();
    v28 = sub_240A2C15C();

    [v31 activateConstraints_];

    [v13 startAnimating];
    v29 = [v14 view];

    if (v29)
    {
      [v29 layoutIfNeeded];

      (*(v32 + 8))(v6, v33);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_240A08E20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF10, &qword_240A385C0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF18, &qword_240A385C8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v22[0] = swift_getKeyPath();
    v12 = &v9[*(v7 + 36)];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF40, &qword_240A385D8);
    v22[1] = a2;
    v14 = *(v13 + 28);
    v15 = *MEMORY[0x277CE0560];
    v16 = sub_240A2B73C();
    v17 = a1;
    v18 = *(v16 - 8);
    (*(v18 + 104))(&v12[v14], v15, v16);
    (*(v18 + 56))(&v12[v14], 0, 1, v16);
    *v12 = v22[0];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF20, &qword_240A385D0);
    (*(*(v19 - 8) + 16))(v9, v17, v19);
    sub_240A09298(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_240A091B4();
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0, MEMORY[0x277CE04B0]);
    sub_240A2B6EC();
    return sub_240A09308(v9);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF20, &qword_240A385D0);
    (*(*(v21 - 8) + 16))(v6, a1, v21);
    swift_storeEnumTagMultiPayload();
    sub_240A091B4();
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0, MEMORY[0x277CE04B0]);
    return sub_240A2B6EC();
  }
}

unint64_t sub_240A091B4()
{
  result = qword_27E50EF28;
  if (!qword_27E50EF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EF18, &qword_240A385C8);
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0, MEMORY[0x277CE04B0]);
    sub_24091CE28(&qword_27E50EF38, &qword_27E50EF40, &qword_240A385D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EF28);
  }

  return result;
}

uint64_t sub_240A09298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF18, &qword_240A385C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A09308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF18, &qword_240A385C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240A09370()
{
  result = qword_27E50EF48;
  if (!qword_27E50EF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50EF50, &qword_240A38610);
    sub_240A091B4();
    sub_24091CE28(&qword_27E50EF30, &qword_27E50EF20, &qword_240A385D0, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EF48);
  }

  return result;
}

void sub_240A09428(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_navController);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_navController) = a1;

  v4 = objc_allocWithZone(MEMORY[0x277CFDAE0]);
  v5 = a1;
  v6 = [v4 initWithPresentingViewController_];
  v7 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_cdpUIController);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_cdpUIController) = v6;

  sub_240A0B390(v5, *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_childFlowPresenter));
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_240A2BF1C();
  [v8 _setIdleTimerDisabled_forReason_];
}

unint64_t sub_240A09534(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_240913DC0(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_24091C780(v22, v21);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_240925A1C(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;
          result = swift_unknownObjectRelease();
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_240A09798()
{
  ObjectType = swift_getObjectType();
  v0 = sub_240A2BE4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_240A2BE6C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240979B08();
  v8 = sub_240A2C32C();
  aBlock[4] = sub_240A0B52C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_29;
  v9 = _Block_copy(aBlock);
  sub_240A2BE5C();
  v15 = MEMORY[0x277D84F90];
  sub_240A0C0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24098546C();
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v7, v3, v9);
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);

  v14.receiver = v13;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t sub_240A09B28(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_240A2974C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_240A2B00C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_240A2C21C();
  v2[18] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v2[19] = v6;
  v2[20] = v5;

  return MEMORY[0x2822009F8](sub_240A09C9C, v6, v5);
}

uint64_t sub_240A09C9C(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "ChildSetupController: Begin AIDA sign-in.", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[17];
  v6 = v1[12];
  v7 = v1[13];

  v8 = *(v7 + 8);
  v8(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  sub_240A2BEAC();
  v1[21] = 0;

  sub_240A2AE9C();
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C28C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v1[14];
  v13 = v1[12];
  if (v11)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "AIDA sign-in missing authResponse.", v14, 2u);
    MEMORY[0x245CCDDB0](v14, -1, -1);
  }

  v8(v12, v13);

  v15 = v1[1];

  return v15(0);
}

uint64_t sub_240A0A1D8(char a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_240A0A324, v4, v3);
}

uint64_t sub_240A0A324()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  v3 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_240A0A560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_240A2C21C();
  v3[5] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0A5FC, v5, v4);
}

uint64_t sub_240A0A5FC()
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
  v6[1] = sub_240A06280;
  v7 = v0[2];

  return sub_240A09B28(v7);
}

uint64_t sub_240A0A854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = sub_240A2C21C();
  v3[4] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0A8F0, v5, v4);
}

uint64_t sub_240A0A8F0()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_240A2C20C();
  v0[7] = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0A998, v3, v2);
}

uint64_t sub_240A0A998()
{

  v1 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0AA1C, v1, v0);
}

uint64_t sub_240A0AA1C()
{
  v1 = *(v0 + 40);

  v1[2](v1, 1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240A0AC24(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0ACC0, v4, v3);
}

uint64_t sub_240A0ACC0()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_240A2C20C();
  v0[7] = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0AD68, v3, v2);
}

uint64_t sub_240A0AD68()
{

  v1 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A0C12C, v1, v0);
}

uint64_t sub_240A0AED4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_240916360;

  return v6();
}

uint64_t sub_240A0AFBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_240915E50;

  return v7();
}

uint64_t sub_240A0B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2409FC880(a3, v23 - v10);
  v12 = sub_240A2C24C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_240919300(v11, &unk_27E50B420, &qword_240A30800);
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

  sub_240A2C23C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_240A2C1BC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_240A2BFBC() + 32;
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

    sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

    return v21;
  }

LABEL_8:
  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
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

id sub_240A0B390(void *a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler) = a1;

  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    sub_240A2AE9C();
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "AISChildSetupPresenter will handle navigation delegate callbacks", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    [v10 setDelegate_];
  }

  return sub_2409F79DC();
}

void sub_240A0B52C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_240A2BF1C();
  [v0 _setIdleTimerDisabled_forReason_];
}

char *sub_240A0B5C4(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_aidaSignInController;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_aidaSignInController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_cdpUIController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_navController] = 0;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings] = a1;
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_aidaOwnersManager] = a2;
  *&v3[v8] = a3;
  v9 = objc_allocWithZone(type metadata accessor for AISChildSetupPresenter());
  v10 = a3;

  v11 = a2;
  v12 = [v9 init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_childFlowPresenter] = v12;
  *&v12[OBJC_IVAR___AISChildSetupPresenter_settings] = a1;

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v13;
}

uint64_t sub_240A0B708()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = sub_240A2BF1C();
  [v9 _setIdleTimerDisabled_forReason_];

  v11 = sub_240A2AAFC();
  v12 = sub_240A2ABFC();

  v13 = sub_240A09534(v12);

  if (v13)
  {
    sub_240A2AE9C();

    v14 = sub_240A2AFFC();
    v15 = sub_240A2C29C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33 = v1;
      v34 = v17;
      v18 = v17;
      *v16 = 136642819;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
      v19 = sub_240A2BECC();
      v21 = sub_240925464(v19, v20, &v34);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2408FE000, v14, v15, "ChildSetupController: Child setup complete with  result: %{sensitive}s.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      v22 = v18;
      v1 = v33;
      MEMORY[0x245CCDDB0](v22, -1, -1);
      MEMORY[0x245CCDDB0](v16, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v23 = objc_allocWithZone(sub_240A2AA9C());
    v24 = sub_240A2AA7C();
    v25 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings) + 24);

    v25(v24, 0);
  }

  else
  {
    sub_240A2AE9C();
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C2AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v26, v27, "Missing auth results for the child auth.", v28, 2u);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v29 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings) + 24);
    sub_240977EF8();
    v30 = swift_allocError();
    *v31 = 1;

    v29(v30, 1);
  }
}

uint64_t sub_240A0BADC(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() sharedApplication];
  v9 = sub_240A2BF1C();
  [v8 _setIdleTimerDisabled_forReason_];

  sub_240A2AE9C();
  v10 = a1;
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2408FE000, v11, v12, "Failed child setup with error: %@", v13, 0xCu);
    sub_240919300(v14, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v14, -1, -1);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = *(*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI32SignInOptionChildSetupController_signInSettings) + 24);

  v17(a1, 1);
}

uint64_t sub_240A0BD24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return sub_240A0AC24(v2, v3);
}

uint64_t sub_240A0BDD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240916360;

  return sub_2409251F0(a1, v4);
}

uint64_t sub_240A0BE90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240915E50;

  return sub_2409251F0(a1, v4);
}

uint64_t sub_240A0BF48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A0A854(v2, v3, v4);
}

uint64_t sub_240A0C008()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_240A0A560(v2, v3, v4);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240A0C0D4()
{
  result = qword_27E50CF10;
  if (!qword_27E50CF10)
  {
    sub_240A2BE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CF10);
  }

  return result;
}

void *ProxCardView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getFunctionTypeMetadata1();
  *(a3 + 8) = sub_240A2C18C();
  result = sub_240A2BD3C();
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *a3 = a1;
  return result;
}

id static ProxCardViewController.newSignInSetupImageCardViewControllerForOOB(deviceModel:)(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SetupStartViewController();
  v5 = objc_allocWithZone(started);
  v6 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = started;

  return objc_msgSendSuper2(&v8, sel_initWithContentView_, 0);
}

__n128 ProxCardView.activityIndicator(withStatus:)@<Q0>(__n128 *a3@<X8>)
{
  v5 = v3[1].n128_u64[0];
  v6 = v3[1].n128_u64[1];
  v7 = v3[2].n128_u8[0];
  v11 = *v3;
  v8 = v3->n128_u64[0];
  v9 = sub_240A2BF1C();
  [v8 showActivityIndicatorWithStatus_];

  result = v11;
  *a3 = v11;
  a3[1].n128_u64[0] = v5;
  a3[1].n128_u64[1] = v6;
  a3[2].n128_u8[0] = v7;
  return result;
}

uint64_t ProxCardView<>.init(contentView:title:subtitle:dismissalType:isPrimaryButtonEnabled:)@<X0>(void *a1@<X0>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  *(a9 + 8) = MEMORY[0x277D84F90];
  sub_240A2BD3C();
  *(a9 + 16) = v19;
  *(a9 + 24) = v20;
  *(a9 + 32) = v21;
  v13 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  *a9 = v13;
  [v13 setDismissalType_];
  v14 = sub_240A2BF1C();

  [v13 setTitle_];

  v15 = sub_240A2BF1C();

  [v13 setSubtitle_];

  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  return result;
}

__n128 ProxCardView.action(withTitle:style:_:)@<Q0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X8>)
{
  v23 = v7[1].n128_u64[1];
  v24 = v7[1].n128_u64[0];
  v22 = v7[2].n128_u8[0];
  v12 = swift_allocObject();
  v21 = *v7;
  v13 = v7->n128_u64[0];
  swift_unknownObjectUnownedInit();
  v14 = swift_allocObject();
  v14[2] = *(a6 + 16);
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v12;
  v15 = v13;

  v16 = sub_240A2BF1C();
  aBlock[4] = sub_240A0DFA0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409DFF20;
  aBlock[3] = &block_descriptor_30;
  v17 = _Block_copy(aBlock);
  v18 = [objc_opt_self() actionWithTitle:v16 style:a3 handler:v17];

  _Block_release(v17);

  result = v21;
  *a7 = v21;
  a7[1].n128_u64[0] = v24;
  a7[1].n128_u64[1] = v23;
  a7[2].n128_u8[0] = v22;
  return result;
}

uint64_t ProxCardView<>.init(title:subtitle:dismissalType:isPrimaryButtonEnabled:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_240A2BD3C();
  v12 = [objc_allocWithZone(MEMORY[0x277D43330]) initWithContentView_];
  [v12 setDismissalType_];
  v13 = sub_240A2BF1C();

  [v12 setTitle_];

  v14 = sub_240A2BF1C();

  [v12 setSubtitle_];

  v16 = MEMORY[0x277D84F90];
  *a9 = v12;
  *(a9 + 8) = v16;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  return result;
}

id static ProxCardViewController.newSignInSetupIOSUpdateNeededViewController()()
{
  v0 = [objc_opt_self() labelColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD00000000000001CLL;
  v12[1] = 0x8000000240A3F570;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();
  [v7 setTitle_];

  v9 = sub_240A2BF1C();
  [v7 setSubtitle_];

  return v7;
}

id ProxCardViewController.__allocating_init(title:subtitle:imageDefiniton:imageTintColor:dismissalType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v12 = objc_allocWithZone(v8);
  v13 = *(a5 + 2);
  v14 = *(a5 + 24);
  v24 = *a5;
  v25 = v13;
  v26 = v14;
  v15 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v16 = sub_2409E0A0C(&v24);
  v17 = *&v16[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v16[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = a6;
  v18 = a6;

  [*&v16[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v23.receiver = v12;
  v23.super_class = v8;
  v19 = objc_msgSendSuper2(&v23, sel_initWithContentView_, v16);
  [v19 setDismissalType_];
  v20 = sub_240A2BF1C();

  [v19 setTitle_];

  v21 = sub_240A2BF1C();

  [v19 setSubtitle_];

  return v19;
}

char *AuthenticateAccountsStartViewController.__allocating_init(connect:listAccounts:flowKind:deviceClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a5;
  v13 = objc_allocWithZone(v6);
  return AuthenticateAccountsStartViewController.init(connect:listAccounts:flowKind:deviceClass:)(a1, a2, a3, a4, v8, a6);
}

uint64_t ProxCardView.subtitle.getter()
{
  v1 = [*v0 subtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_240A2BF4C();

  return v3;
}

uint64_t sub_240A0CB9C@<X0>(uint64_t *a1@<X8>)
{
  result = ProxCardView.subtitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_240A0CBE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ProxCardView.subtitle.setter(v1, v2);
}

void ProxCardView.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  [v3 setSubtitle_];
}

void (*ProxCardView.subtitle.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = ProxCardView.subtitle.getter();
  a1[1] = v4;
  return sub_240A0CD04;
}

void sub_240A0CD04(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    ProxCardView.subtitle.setter(v3, v2);
  }

  else
  {
    ProxCardView.subtitle.setter(*a1, v2);
  }
}

uint64_t ProxCardView.isPrimaryButtonEnabled.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProxCardView.isPrimaryButtonEnabled.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

id ProxCardView.makeUIViewController(context:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_240A0EC08(a2);

  return v2;
}

id sub_240A0CE60(uint64_t a1, uint64_t a2)
{
  v2 = sub_240A0EC08(a2);

  return v2;
}

uint64_t sub_240A0CE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_240A0CF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_240A0CF90(uint64_t a1)
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

char *AuthenticateAccountsStartViewController.init(connect:listAccounts:flowKind:deviceClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v6[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] = 0;
  v9 = &v6[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect];
  *v9 = a1;
  v9[1] = a2;
  v10 = &v6[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_listAccounts];
  *v10 = a3;
  v10[1] = a4;
  v11 = "AGEMIGRATION_PAIRED_PARENT";
  if (a5 <= 1u)
  {
    if (a5)
    {
      v11 = "CLIENT_REPAIR_DESCRIPTION";
      v12 = 0xD000000000000012;
    }

    else
    {
      v12 = 0xD000000000000022;
    }

    v46 = v12;
    goto LABEL_8;
  }

  if (a5 == 3)
  {
    v46 = 0xD000000000000022;
LABEL_8:

    sub_240A2C05C();
    v47 = a6;
    v13 = sub_240A2C06C();
    v44 = v14;
    v45 = v13;

    sub_240A2C05C();
    v15 = sub_240A2C06C();
    v17 = v16;

    v18 = v11 | 0x8000000000000000;
    v19 = sub_240A2C06C();
    v21 = v20;
    v22 = sub_240A2C06C();
    v24 = v23;
    v25 = sub_240A2C06C();
    v27 = v26;
    v28 = [objc_opt_self() labelColor];
    v29 = &v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
    *v29 = v45;
    *(v29 + 1) = v44;
    *(v29 + 2) = v15;
    *(v29 + 3) = v17;
    *(v29 + 4) = v46;
    *(v29 + 5) = v18;
    *(v29 + 6) = 0;
    v29[56] = 0;
    *(v29 + 8) = v28;
    *(v29 + 72) = xmmword_240A35900;
    v29[88] = 0;
    *(v29 + 12) = v19;
    *(v29 + 13) = v21;
    *(v29 + 14) = v22;
    *(v29 + 15) = v24;
    *(v29 + 16) = v25;
    *(v29 + 17) = v27;
    v30 = *&v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 40];
    v31 = *&v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 48];
    LOBYTE(v25) = v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 56];
    v49[0] = *&v7[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 32];
    v49[1] = v30;
    v49[2] = v31;
    v50 = v25;
    objc_allocWithZone(type metadata accessor for ImageCardContentView());
    sub_2409E12F0(v49[0], v30, v31, v25);
    v32 = sub_2409E0A0C(v49);
    v48.receiver = v7;
    v48.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
    v33 = objc_msgSendSuper2(&v48, sel_initWithContentView_, v32);
    v34 = &v33[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
    v35 = *&v33[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 72];
    v36 = v33;
    [v36 setDismissalType_];

    v37 = sub_240A2BF1C();

    [v36 setTitle_];

    v38 = sub_240A2BF1C();

    [v36 setSubtitle_];

    v39 = *(v34 + 8);
    v40 = *&v32[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
    *&v32[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v39;
    v41 = v39;

    [*&v32[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];

    v42 = sub_240A29DBC();
    (*(*(v42 - 8) + 8))(v47, v42);

    return v36;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

void sub_240A0D474(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v3 = sub_240A2BF1C();
  v15 = sub_240A0EE6C;
  v16 = v2;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2409DFF20;
  v14 = &block_descriptor_9_0;
  v4 = _Block_copy(&v11);
  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v3 style:0 handler:v4];

  _Block_release(v4);

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_240A2BF1C();
  v15 = sub_240A0EE74;
  v16 = v7;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2409DFF20;
  v14 = &block_descriptor_13;
  v9 = _Block_copy(&v11);
  v10 = [v5 actionWithTitle:v8 style:1 handler:v9];

  _Block_release(v9);
}

void sub_240A0D6FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((Strong[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] & 1) == 0)
    {
      Strong[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] = 1;
      [Strong setDismissalType_];
      v4 = sub_240A2BF1C();
      [v3 showActivityIndicatorWithStatus_];

      (*&v3[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect])();
    }
  }
}

char *sub_240A0D7C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_listAccounts];
    v4 = result;

    v3();
  }

  return result;
}

id sub_240A0D888(uint64_t a1)
{
  v2 = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  result = objc_msgSendSuper2(&v6, sel_viewWillAppear_, v2 & 1);
  v4 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel];
  if (v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_viewModel + 88] == 1 && (v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_started] = 1;
    [v1 setDismissalType_];
    v5 = sub_240A2BF1C();
    [v1 showActivityIndicatorWithStatus_];

    return (*&v1[OBJC_IVAR____TtC14AppleIDSetupUI39AuthenticateAccountsStartViewController_connect])();
  }

  return result;
}

id sub_240A0D9A0(uint64_t a1)
{
  v2 = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AuthenticateAccountsStartViewController();
  return objc_msgSendSuper2(&v4, sel_viewDidDisappear_, v2 & 1);
}

id ProxCardViewController.init(title:subtitle:imageDefiniton:imageTintColor:dismissalType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v11 = *(a5 + 2);
  v12 = *(a5 + 24);
  v22 = *a5;
  v23 = v11;
  v24 = v12;
  v13 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v14 = sub_2409E0A0C(&v22);
  v15 = *&v14[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v14[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = a6;
  v16 = a6;

  [*&v14[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v21.receiver = v8;
  v21.super_class = type metadata accessor for ProxCardViewController();
  v17 = objc_msgSendSuper2(&v21, sel_initWithContentView_, v14);
  [v17 setDismissalType_];
  v18 = sub_240A2BF1C();

  [v17 setTitle_];

  v19 = sub_240A2BF1C();

  [v17 setSubtitle_];

  return v17;
}

id ProxCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id sub_240A0DD74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  v0 = [objc_opt_self() labelColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD000000000000022;
  v12[1] = 0x8000000240A3B260;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();

  [v7 setTitle_];

  v9 = sub_240A2BF1C();

  [v7 setSubtitle_];

  return v7;
}

void sub_240A0DFA0(uint64_t a1)
{
  v3 = *(v1 + 24);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3(Strong, a1);
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC037newAuthenticationFailedMissingAccountefG0ACyFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  v0 = [objc_opt_self() systemRedColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD00000000000002DLL;
  v12[1] = 0x8000000240A3D770;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();

  [v7 setTitle_];

  v9 = sub_240A2BF1C();

  [v7 setSubtitle_];

  return v7;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC014newSetupFailedefG011deviceClassAC0aB009AISDeviceL0O_tFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_240A305D0;
  v1 = sub_240A29D9C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_240913AEC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_240A2BF6C();

  v4 = [objc_opt_self() systemRedColor];
  v5 = type metadata accessor for ProxCardViewController();
  v6 = objc_allocWithZone(v5);
  v16[0] = 0xD00000000000002DLL;
  v16[1] = 0x8000000240A3D770;
  v16[2] = 0;
  v17 = 0;
  v7 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v8 = sub_2409E0A0C(v16);
  v9 = *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v4;
  v10 = v4;

  [*&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v15.receiver = v6;
  v15.super_class = v5;
  v11 = objc_msgSendSuper2(&v15, sel_initWithContentView_, v8);
  [v11 setDismissalType_];
  v12 = sub_240A2BF1C();

  [v11 setTitle_];

  v13 = sub_240A2BF1C();

  [v11 setSubtitle_];

  return v11;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC024newRepairAccountCompleteefG0ACyFZ_0()
{
  v0 = sub_240A29DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2C06C();
  (*(v1 + 104))(v3, *MEMORY[0x277CED640], v0);
  sub_240A2C05C();
  (*(v1 + 8))(v3, v0);
  sub_240A2C06C();

  v4 = [objc_opt_self() systemBlueColor];
  v5 = type metadata accessor for ProxCardViewController();
  v6 = objc_allocWithZone(v5);
  v16[0] = 0xD000000000000014;
  v16[1] = 0x8000000240A3F930;
  v16[2] = 0;
  v17 = 0;
  v7 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v8 = sub_2409E0A0C(v16);
  v9 = *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v4;
  v10 = v4;

  [*&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v15.receiver = v6;
  v15.super_class = v5;
  v11 = objc_msgSendSuper2(&v15, sel_initWithContentView_, v8);
  [v11 setDismissalType_];
  v12 = sub_240A2BF1C();

  [v11 setTitle_];

  v13 = sub_240A2BF1C();

  [v11 setSubtitle_];

  return v11;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC022newRepairAccountFailedefG0ACyFZ_0()
{
  sub_240A2C06C();
  sub_240A2C06C();
  v0 = [objc_opt_self() systemRedColor];
  v1 = type metadata accessor for ProxCardViewController();
  v2 = objc_allocWithZone(v1);
  v12[0] = 0xD00000000000002DLL;
  v12[1] = 0x8000000240A3D770;
  v12[2] = 0;
  v13 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v4 = sub_2409E0A0C(v12);
  v5 = *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v0;
  v6 = v0;

  [*&v4[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v11.receiver = v2;
  v11.super_class = v1;
  v7 = objc_msgSendSuper2(&v11, sel_initWithContentView_, v4);
  [v7 setDismissalType_];
  v8 = sub_240A2BF1C();

  [v7 setTitle_];

  v9 = sub_240A2BF1C();

  [v7 setSubtitle_];

  return v7;
}

id _s14AppleIDSetupUI22ProxCardViewControllerC026newRepairAccountInProgressefG0ACyFZ_0()
{
  v0 = sub_240A29DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2C06C();
  (*(v1 + 104))(v3, *MEMORY[0x277CED640], v0);
  sub_240A2C05C();
  (*(v1 + 8))(v3, v0);
  sub_240A2C06C();

  v4 = [objc_opt_self() labelColor];
  v5 = type metadata accessor for ProxCardViewController();
  v6 = objc_allocWithZone(v5);
  v16 = xmmword_240A386F0;
  v17 = 0;
  v18 = 0;
  v7 = objc_allocWithZone(type metadata accessor for ImageCardContentView());
  v8 = sub_2409E0A0C(&v16);
  v9 = *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v4;
  v10 = v4;

  [*&v8[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];
  v15.receiver = v6;
  v15.super_class = v5;
  v11 = objc_msgSendSuper2(&v15, sel_initWithContentView_, v8);
  [v11 setDismissalType_];
  v12 = sub_240A2BF1C();

  [v11 setTitle_];

  v13 = sub_240A2BF1C();

  [v11 setSubtitle_];

  return v11;
}

uint64_t sub_240A0EC08(uint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 1);
  swift_getFunctionTypeMetadata1();
  v2 = sub_240A2C1AC();

  swift_getWitnessTable();
  sub_240A2C12C();
  (*(*(v2 - 8) + 8))(&v5, v2);
  return v4;
}

void sub_240A0ED08(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = [a1 actions];
  sub_240A0F0FC();
  v6 = sub_240A2C16C();

  if (v6 >> 62)
  {
    if (sub_240A2C59C())
    {
      goto LABEL_3;
    }

LABEL_8:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x245CCD150](0, v6);
    goto LABEL_6;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_6:
    v8 = v7;

    v11 = v2;
    v12 = v3;
    v13 = v4;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
    MEMORY[0x245CCC9B0](&v10, v9);
    [v8 setEnabled_];

    return;
  }

  __break(1u);
}

uint64_t sub_240A0EE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_240A0EEE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_240A0EF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_240A0F010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_240A0F058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_240A0F0FC()
{
  result = qword_27E50BF78;
  if (!qword_27E50BF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50BF78);
  }

  return result;
}

uint64_t sub_240A0F148(uint64_t (**a1)(uint64_t *))
{
  v2 = *a1;
  v4 = **(v1 + 24);
  return v2(&v4);
}

id sub_240A0F1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v3[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView] = v9;
  if (a3)
  {
    v10 = sub_240A2BF1C();
  }

  else
  {
    v10 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for SignInOptionCell();
  v11 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = v11;
  sub_240A0F370();
  sub_240A0F4A8();

  return v12;
}

void sub_240A0F370()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView;
  [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView] addSubview_];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title;
  [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title] setTextAlignment_];
  [*&v0[v2] setNumberOfLines_];
  [*&v0[v2] setLineBreakMode_];
  [*&v0[v1] addSubview_];
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  [*&v0[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle] setTextAlignment_];
  [*&v0[v3] setNumberOfLines_];
  [*&v0[v3] setLineBreakMode_];
  [*&v0[v1] addSubview_];
  v4 = [v0 contentView];
  [v4 addSubview_];
}

void sub_240A0F4A8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon) setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title) setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  v52 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle) setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView) setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1144750080;
  [*(v0 + v3) setContentHuggingPriority:1 forAxis:v5];
  LODWORD(v6) = 1144750080;
  [*(v0 + v2) setContentHuggingPriority:1 forAxis:v6];
  v51 = [v0 contentView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_240A389D0;
  v8 = [*(v0 + v4) topAnchor];
  v9 = [v0 contentView];
  v10 = [v9 &selRef_tableView_targetIndexPathForMoveFromRowAtIndexPath_toProposedIndexPath_];

  v11 = [v8 constraintEqualToAnchor:v10 constant:15.0];
  *(v7 + 32) = v11;
  v12 = [*(v0 + v4) bottomAnchor];
  v13 = [v0 contentView];
  v14 = [v13 0x278CB2D25];

  v15 = [v12 constraintEqualToAnchor:v14 constant:-15.0];
  *(v7 + 40) = v15;
  v16 = [*(v0 + v4) leadingAnchor];
  v17 = [v0 contentView];
  v18 = [v17 &selRef_remoteUIRequestComplete_error_ + 1];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v7 + 48) = v19;
  v20 = [*(v0 + v4) trailingAnchor];
  v21 = [v0 contentView];
  v22 = [v21 &selRef_tableView_previewForHighlightingContextMenuWithConfiguration_ + 4];

  v23 = [v20 constraintEqualToAnchor:v22 constant:16.0];
  *(v7 + 56) = v23;
  v24 = [*(v0 + v4) heightAnchor];
  v25 = [v24 constraintGreaterThanOrEqualToConstant_];

  *(v7 + 64) = v25;
  v26 = [*(v0 + v1) widthAnchor];
  v27 = [v26 constraintEqualToConstant_];

  *(v7 + 72) = v27;
  v28 = [*(v0 + v1) heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v7 + 80) = v29;
  v30 = [*(v0 + v1) leadingAnchor];
  v31 = [*(v0 + v4) leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:0.0];

  *(v7 + 88) = v32;
  v33 = [*(v0 + v1) trailingAnchor];
  v34 = [*(v0 + v2) leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-10.0];

  *(v7 + 96) = v35;
  v36 = [*(v0 + v2) topAnchor];
  v37 = [*(v0 + v4) topAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v7 + 104) = v38;
  v39 = [*(v0 + v2) trailingAnchor];
  v40 = [*(v0 + v4) trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-14.0];

  *(v7 + 112) = v41;
  v42 = [*&v52[v0] topAnchor];
  v43 = [*(v0 + v2) bottomAnchor];
  v44 = [v42 &selRef:v43 addConstraint:2.0 + 6];

  *(v7 + 120) = v44;
  v45 = [*&v52[v0] trailingAnchor];
  v46 = [*(v0 + v4) trailingAnchor];
  v47 = [v45 &selRef:v46 addConstraint:-14.0 + 6];

  *(v7 + 128) = v47;
  v48 = [*&v52[v0] leadingAnchor];
  v49 = [*(v0 + v2) leadingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v7 + 136) = v50;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v53 = sub_240A2C15C();

  [v51 addConstraints_];
}

void sub_240A0FBB4(int a1)
{
  v2 = v1;
  v4 = sub_240A2974C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CED220];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  v10 = sub_240A2973C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if (v10)
  {
    v28 = [v2 contentView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v12 = swift_allocObject();
    v26 = a1;
    v13 = v12;
    *(v12 + 16) = xmmword_240A32D10;
    v27 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon] topAnchor];
    v14 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title] topAnchor];
    v15 = 0.0;
    if (v26)
    {
      (v9)(v7, v8, v4, 0.0);
      v16 = sub_240A2973C();
      v11(v7, v4);
      v15 = 0.0;
      if (v16)
      {
        v15 = -8.0;
      }
    }

    v17 = v27;
    v18 = [v27 constraintEqualToAnchor:v14 constant:v15];

    *(v13 + 32) = v18;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v19 = sub_240A2C15C();

    v20 = v28;
    [v28 addConstraints_];
  }

  else
  {
    v20 = [v2 contentView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_240A32D10;
    v22 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon] centerYAnchor];
    v23 = [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView] centerYAnchor];
    v24 = [v22 constraintEqualToAnchor_];

    *(v21 + 32) = v24;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v19 = sub_240A2C15C();

    [v20 addConstraints_];
  }
}

void sub_240A0FF20(int a1)
{
  v2 = v1;
  v44 = sub_240A2974C();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D76988];
  v7 = [v5 _preferredFontForTextStyle_weight_];
  if (!v7)
  {
    v7 = [v5 preferredFontForTextStyle_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CE98, &unk_240A345E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v10 = sub_2409194E8(0, &unk_27E50CEA0, 0x277D74300);
  *(inited + 64) = v10;
  *(inited + 40) = v7;
  v11 = v9;
  v49 = v7;
  sub_240926DE0(inited);
  swift_setDeallocating();
  sub_240A10984(inited + 32);
  v50 = a1;
  v45 = a1 & 1;
  sub_240A2C06C();
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_240A2BF1C();

  type metadata accessor for Key(0);
  v15 = v14;
  sub_240A109EC();
  v46 = v15;
  v16 = sub_240A2BE9C();

  v17 = [v12 initWithString:v13 attributes:v16];

  v18 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title];
  v48 = v17;
  [v18 setAttributedText_];
  v19 = [v5 preferredFontForTextStyle_];
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_240A32540;
  *(v20 + 32) = v11;
  *(v20 + 40) = v19;
  v21 = *MEMORY[0x277D740C0];
  *(v20 + 64) = v10;
  *(v20 + 72) = v21;
  v22 = objc_opt_self();
  v47 = v19;
  v23 = v21;
  v24 = [v22 secondaryLabelColor];
  *(v20 + 104) = sub_2409194E8(0, &unk_27E50CEB8, 0x277D75348);
  *(v20 + 80) = v24;
  sub_240926DE0(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB18, &unk_240A316A0);
  swift_arrayDestroy();
  if (!v45)
  {
    v25 = v43;
    v26 = v42;
    v27 = v44;
    (*(v43 + 104))(v42, *MEMORY[0x277CED220], v44);
    sub_240A2973C();
    (*(v25 + 8))(v26, v27);
  }

  sub_240A2C06C();
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_240A2BF1C();

  v30 = sub_240A2BE9C();

  v31 = [v28 initWithString:v29 attributes:v30];

  [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle] setAttributedText_];
  v32 = v50;
  v33 = sub_2409E693C(v50 & 1);
  if (v33)
  {
    v34 = v33;
    v35 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon;
    v36 = *&v2[OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_icon];
    v37 = [v22 systemBlueColor];
    v38 = [v34 imageWithTintColor_];

    [v36 setImage_];
    v39 = *&v2[v35];
    [v39 setContentMode_];
  }

  sub_240A0FBB4(v32 & 1);
  sub_240A1059C();
  v40 = sub_240A2BF1C();

  [v2 setAccessibilityIdentifier_];
}

void sub_240A1059C()
{
  [v0 layoutIfNeeded];
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_title) bounds];
  Height = CGRectGetHeight(v23);
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle;
  [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_subTitle) bounds];
  v3 = Height + CGRectGetHeight(v24) + 2.0 + 4.0;
  if (v3 <= 90.0)
  {
    return;
  }

  v20 = v2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView;
  v5 = [*(v0 + OBJC_IVAR____TtC14AppleIDSetupUI16SignInOptionCell_containerView) constraints];
  v19 = sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v6 = sub_240A2C16C();

  if (v6 >> 62)
  {
    v7 = sub_240A2C59C();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      if (v7 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x245CCD150](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9;
        if ([v9 firstAttribute] == 8)
        {
          v11 = *(v0 + v4);
          [v11 removeConstraint_];
        }
      }
    }
  }

  v12 = [v0 contentView];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_240A308E0;
  v14 = [*(v0 + v4) heightAnchor];
  v15 = [v14 constraintGreaterThanOrEqualToConstant_];

  *(v13 + 32) = v15;
  v16 = [*&v20[v0] bottomAnchor];
  v17 = [*(v0 + v4) bottomAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v13 + 40) = v18;
  v21 = sub_240A2C15C();

  [v12 addConstraints_];
}

id sub_240A108C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SignInOptionCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_240A10984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB18, &unk_240A316A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240A109EC()
{
  result = qword_27E50CEB0;
  if (!qword_27E50CEB0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50CEB0);
  }

  return result;
}

uint64_t AISFlowStepFamilyPicker.__allocating_init(guardianAuthResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_getObjectType();

  return sub_240A13138(a1, a2, a3, v6);
}

uint64_t AISFlowStepFamilyPicker.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id AISFlowStepFamilyPicker.guardianAuthResponse.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AISFlowStepFamilyPicker.selectedFamilyOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  swift_beginAccess();
  return sub_240A132A0(v1 + v3, a1);
}

uint64_t AISFlowStepFamilyPicker.init(guardianAuthResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_240A13138(a1, a2, a3, v3);
}

uint64_t AISFlowStepFamilyPicker.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEDAB0];
  v3 = sub_240A2A4AC();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t AISFlowStepFamilyPicker.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  swift_beginAccess();
  sub_240A132A0(v1 + v15, &v52);
  if (!v53)
  {
    sub_240919300(&v52, &qword_27E50F058, &qword_240A38A10);
    sub_240A2AE9C();
    v31 = sub_240A2AFFC();
    v32 = sub_240A2C2AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2408FE000, v31, v32, "AISFlowStepFamilyPicker.nextStep selectedFamilyOption is nil", v33, 2u);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_240A13310();
    v34 = swift_allocError();
    *v35 = 1;
    type metadata accessor for AISFlowStepChildSetupError(0);
    v30 = swift_allocObject();
    *(v30 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = v34;
    *(v30 + 24) = 0;
    swift_unknownObjectWeakInit();
    LOBYTE(v54[0]) = 0;
    sub_240A2B0DC();
    *(v30 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
    return v30;
  }

  sub_24090C218(&v52, v54);
  v16 = v55;
  v17 = v56;
  __swift_project_boxed_opaque_existential_0(v54, v55);
  if ((AISFamilyPickerSelectionProtocol.isValid.getter(v16, v17) & 1) == 0)
  {
    sub_240A2AE9C();
    v36 = sub_240A2AFFC();
    v37 = sub_240A2C2AC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2408FE000, v36, v37, "AISFlowStepFamilyPicker.nextStep invalid selection", v38, 2u);
      MEMORY[0x245CCDDB0](v38, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    sub_240A13310();
    v39 = swift_allocError();
    *v40 = 1;
    type metadata accessor for AISFlowStepChildSetupError(0);
    v30 = swift_allocObject();
    *(v30 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = v39;
    *(v30 + 24) = 0;
    swift_unknownObjectWeakInit();
    LOBYTE(v52) = 0;
    sub_240A2B0DC();
    *(v30 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
    goto LABEL_17;
  }

  v18 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings);
  v19 = *(v18 + 16);
  v20 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  v21 = *(v19 + v20);
  if (!v21)
  {
    sub_240A2AE9C();
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C2CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2408FE000, v22, v23, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting next account step while in settings context.", v24, 2u);
      MEMORY[0x245CCDDB0](v24, -1, -1);
    }

    (*(v3 + 8))(v12, v2);
    v25 = v55;
    v26 = v56;
    v27 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v28 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
    swift_beginAccess();
    v29 = *(v1 + v28);
    v30 = sub_240A114FC(v27, v18, v29, v25, v26);

    __swift_destroy_boxed_opaque_existential_0(v54);
    return v30;
  }

  if (v21 == 1)
  {
    sub_240A2AE9C();
    v41 = sub_240A2AFFC();
    v42 = sub_240A2C2CC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2408FE000, v41, v42, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting passcode step while in buddy.", v43, 2u);
      MEMORY[0x245CCDDB0](v43, -1, -1);
    }

    (*(v3 + 8))(v14, v2);
    v44 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
    swift_beginAccess();
    v45 = *(v1 + v44);
    sub_240919A14(v54, &v52);
    type metadata accessor for AISFlowStepPasscodeSetup(0);
    swift_allocObject();
    v46 = v45;

    v30 = sub_2409751A0(v46, &v52, v18);
    v47 = (v30 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
    v48 = *(v30 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride);
    v49 = *(v30 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_nextStepOverride + 8);
    *v47 = sub_240A11464;
    v47[1] = 0;
    sub_24090C1A0(v48, v49);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v54);
    return v30;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

uint64_t sub_240A11464(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_selectedFamilyOption);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_0(v2, v3);
  type metadata accessor for AISFlowStepFamilyPicker(0);
  return sub_240A114FC(v5, *(a1 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_settings), *(a1 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepPasscodeSetup_guardianAuthResponse), v3, v4);
}

uint64_t sub_240A114FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (**a5)(uint64_t, uint64_t))
{
  v66 = a3;
  v67 = a2;
  v7 = sub_240A2B00C();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v63 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v63 - v16;
  v18 = sub_240A2974C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v21, *MEMORY[0x277CED208], v18);
  v22 = sub_240A2973C();
  v23 = v18;
  v24 = a4;
  (*(v19 + 8))(v21, v23);
  if (v22 & 1) != 0 && (a5[3](a4, a5))
  {
    sub_240A2AE9C();
    v25 = sub_240A2AFFC();
    v26 = sub_240A2C2CC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2408FE000, v25, v26, "AISFlowStepPasscodeSetup.nextStep with addExistingTeen", v27, 2u);
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    (*(v64 + 8))(v17, v65);
    type metadata accessor for AISFlowStepChildSignIn(0);
    swift_allocObject();
    v28 = v66;
    v29 = v67;

    v30 = 0;
    v31 = v28;
    v32 = v29;
    return sub_240911894(v30, v31, v32);
  }

  if (a5[1](a4, a5))
  {
    sub_240A2AE9C();
    v33 = sub_240A2AFFC();
    v34 = sub_240A2C2CC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v66;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2408FE000, v33, v34, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting child create step.", v37, 2u);
      MEMORY[0x245CCDDB0](v37, -1, -1);
    }

    (*(v64 + 8))(v15, v65);
    v38 = [objc_allocWithZone(sub_240A2983C()) init];
    type metadata accessor for AISFlowStepChildCreate(0);
    v39 = swift_allocObject();
    v40 = v36;
    v41 = v67;

    return sub_240976868(v40, v41, v38, v39);
  }

  v43 = a5[2];
  v44 = v43(a4, a5);
  v45 = v66;
  if (!v44)
  {
LABEL_16:
    sub_240A2AE9C();
    v55 = sub_240A2AFFC();
    v56 = sub_240A2C2CC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v24;
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2408FE000, v55, v56, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting child sign step.", v58, 2u);
      v59 = v58;
      v24 = v57;
      MEMORY[0x245CCDDB0](v59, -1, -1);
    }

    (*(v64 + 8))(v10, v65);
    v60 = v43(v24, a5);
    type metadata accessor for AISFlowStepChildSignIn(0);
    swift_allocObject();
    v61 = v45;
    v62 = v67;

    v30 = v60;
    v31 = v61;
    v32 = v62;
    return sub_240911894(v30, v31, v32);
  }

  v46 = v44;
  sub_240A2AC0C();
  if (!v47)
  {

    goto LABEL_16;
  }

  v48 = v63;
  sub_240A2AE9C();
  v49 = sub_240A2AFFC();
  v50 = sub_240A2C2CC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2408FE000, v49, v50, "AISFlowStepFamilyPicker: Interactive auth is successful. Starting child silent sign step.", v51, 2u);
    MEMORY[0x245CCDDB0](v51, -1, -1);
  }

  (*(v64 + 8))(v48, v65);
  v52 = [objc_allocWithZone(sub_240A2983C()) init];
  type metadata accessor for AISFlowStepSilentChildSignIn(0);
  v53 = swift_allocObject();
  *(v53 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_silentAuthResponse) = 0;
  *(v53 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_guardianAuthResponse) = v45;
  *(v53 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_selectedMember) = v46;
  *(v53 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_settings) = v67;
  *(v53 + OBJC_IVAR____TtC14AppleIDSetupUI28AISFlowStepSilentChildSignIn_stepLoadTask) = v52;
  *(v53 + 24) = 0;
  swift_unknownObjectWeakInit();
  v68 = 0;
  v54 = v45;

  sub_240A2B0DC();
  result = v53;
  *(v53 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return result;
}

uint64_t sub_240A11BA0()
{
  swift_unknownObjectRelease();

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption, &qword_27E50F058, &qword_240A38A10);
}

uint64_t AISFlowStepFamilyPicker.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption, &qword_27E50F058, &qword_240A38A10);

  return v0;
}

uint64_t AISFlowStepFamilyPicker.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  sub_240919300(v0 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption, &qword_27E50F058, &qword_240A38A10);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_240A11E74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_240A11F2C(uint64_t a1)
{
  v2[58] = a1;
  v2[59] = v1;
  v3 = sub_240A2B00C();
  v2[60] = v3;
  v2[61] = *(v3 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  sub_240A2C21C();
  v2[65] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[66] = v5;
  v2[67] = v4;

  return MEMORY[0x2822009F8](sub_240A1203C, v5, v4);
}

uint64_t sub_240A1203C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (*(v0 + 560))
  {

    sub_240A2AE9C();
    v1 = sub_240A2AFFC();
    v2 = sub_240A2C29C();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 504);
    v5 = *(v0 + 480);
    v6 = *(v0 + 488);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2408FE000, v1, v2, "AISFlowStepFamilyPicker familyPicker trying to run a step that already finished", v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    (*(v6 + 8))(v4, v5);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 464);
    v11 = sub_240A129E8();
    *(v0 + 544) = v11;
    v12 = sub_240A12CB4(v10);
    *(v0 + 552) = v12;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_240A122C0;
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_240A271E4;
    *(v0 + 104) = &block_descriptor_31;
    *(v0 + 112) = v13;
    [v12 performWithContext:v11 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_240A122C0()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_240A123C8, v2, v1);
}

uint64_t sub_240A123C8()
{
  v52 = v0;

  v1 = *(v0 + 448);
  sub_240A2AE9C();
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_2408FE000, v3, v4, "AISFlowStepFamilyPicker familyPicker got response %@", v5, 0xCu);
    sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v8 = *(v0 + 512);
  v9 = *(v0 + 480);
  v10 = *(v0 + 488);

  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = [v2 userInfo];
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v14 = sub_240A2BEBC();

  sub_240A2AF0C();
  *(v0 + 432) = sub_240A2AEFC();
  *(v0 + 440) = v15;
  sub_240A2C44C();
  if (!*(v14 + 16) || (v16 = sub_240925A94(v0 + 264), (v17 & 1) == 0))
  {

    sub_2409266D4(v0 + 264);
LABEL_10:
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
    goto LABEL_11;
  }

  sub_240913DC0(*(v14 + 56) + 32 * v16, v0 + 304);
  sub_2409266D4(v0 + 264);

  if (!*(v0 + 328))
  {
LABEL_11:
    sub_240919300(v0 + 304, &qword_27E50C6D0, &unk_240A33620);
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F088, qword_240A38C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 176) = 0;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
  }

LABEL_12:
  v18 = *(v0 + 472);
  v19 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  swift_beginAccess();
  sub_240A13514(v0 + 144, v18 + v19);
  swift_endAccess();
  sub_240A132A0(v18 + v19, v0 + 224);
  if (*(v0 + 248))
  {
    v20 = *(v0 + 472);
    sub_24090C218((v0 + 224), v0 + 184);
    v21 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
    swift_beginAccess();
    if (*(v20 + v21))
    {
      v22 = *(*(*(v0 + 472) + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) + 16);
      v23 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
      swift_beginAccess();
      if ((*(v22 + v23) - 1) > 1)
      {
      }

      else
      {
        v24 = *(v0 + 208);
        v25 = *(v0 + 216);
        __swift_project_boxed_opaque_existential_0((v0 + 184), v24);
        v26 = *(v25 + 8);

        v26(v24, v25);
      }

      sub_240A2ACDC();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  }

  else
  {
    sub_240919300(v0 + 224, &qword_27E50F058, &qword_240A38A10);
  }

  v27 = [v2 loadSuccess];
  v28 = *(v0 + 552);
  v29 = *(v0 + 544);
  if (v27)
  {
  }

  else
  {
    v30 = [v2 error];
    sub_240A13310();
    v31 = swift_allocError();
    *v32 = v30;
    swift_willThrow();

    v33 = v31;
    sub_240A2AE9C();
    v34 = v31;
    v35 = sub_240A2AFFC();
    v36 = sub_240A2C2AC();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 496);
    v39 = *(v0 + 480);
    if (v37)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315138;
      *(v0 + 456) = v31;
      v42 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      v43 = sub_240A2BF9C();
      v50 = v11;
      v45 = sub_240925464(v43, v44, &v51);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2408FE000, v35, v36, "AISFlowStepFamilyPicker familyPicker failed: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x245CCDDB0](v41, -1, -1);
      MEMORY[0x245CCDDB0](v40, -1, -1);

      v50(v38, v39);
    }

    else
    {

      v11(v38, v39);
    }

    v46 = *(v0 + 472);
    v47 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
    swift_beginAccess();
    [*(v46 + v47) complete];
  }

  sub_2409F4DB4();

  v48 = *(v0 + 8);

  return v48();
}

id sub_240A129E8()
{
  v1 = v0;
  v2 = sub_240A2974C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v7 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = sub_240A2ABFC();

  sub_240A1EADC(v9);

  v10 = sub_240A2BE9C();

  [v6 setEphemeralAuthResults_];

  (*(v3 + 104))(v5, *MEMORY[0x277CED208], v2);
  LOBYTE(v8) = sub_240A2973C();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240A305D0;
    strcpy((inited + 32), "userAgeRange");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v12 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) + 16);
    v13 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(inited + 72) = MEMORY[0x277D83E88];
    *(inited + 48) = v14;
    sub_240926374(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50BB00, &unk_240A38260);
    v15 = sub_240A2BE9C();

    [v6 setAdditionalParameters_];
  }

  return v6;
}

id sub_240A12CB4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  [v2 setPresentationType_];
  v5[4] = sub_240A13584;
  v6 = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2409EC704;
  v5[3] = &block_descriptor_11_0;
  v3 = _Block_copy(v5);

  [v2 setPresentationHandler_];
  _Block_release(v3);
  return v2;
}

id sub_240A12DAC()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISFlowStepFamilyPicker familyCirclePresentationHandler", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask;
  swift_beginAccess();
  return [*(v1 + v9) complete];
}

uint64_t sub_240A12F1C(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_2409F5208;

  return sub_240A11F2C(a1);
}

unint64_t AISFlowStepFamilyPickerError.description.getter()
{
  v1 = 0xD000000000000018;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_240A2C47C();

    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0xD00000000000002FLL;
  }

  return v1;
}

uint64_t AISFlowStepError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t sub_240A13138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  v12 = a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_selectedFamilyOption;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_guardianAuthResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepFamilyPicker_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v15[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v13, v11, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

uint64_t sub_240A132A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F058, &qword_240A38A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_240A13310()
{
  result = qword_27E50F060;
  if (!qword_27E50F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F060);
  }

  return result;
}

unint64_t sub_240A13368()
{
  result = qword_27E50F070;
  if (!qword_27E50F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F070);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepFamilyPicker(uint64_t a1)
{
  result = qword_27E50F078;
  if (!qword_27E50F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI28AISFlowStepFamilyPickerErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_240A13514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F058, &qword_240A38A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ChildSafetyFeaturesViewController.__allocating_init(pendingDOB:accountManager:accountStore:completionHandler:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a1;
  v25 = objc_allocWithZone(v6);
  v12 = a2[3];
  v11 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  v18 = a3[3];
  v17 = a3[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a3, v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_240A16294(v26, v15, v21, a4, a5, v25, v12, v18, v11, v17);
  sub_240964BB8(a4, a5);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v23;
}

uint64_t sub_240A13784(uint64_t a1, char a2, void *a3)
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

    return swift_continuation_throwingResume();
  }
}

id ChildSafetyFeaturesViewController.init(pendingDOB:accountManager:accountStore:completionHandler:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v23[0] = a1;
  v10 = a2[3];
  v9 = a2[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a2, v10);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v16 = a3[3];
  v15 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  MEMORY[0x28223BE20](v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  v21 = sub_240A16294(v23[0], v13, v19, a4, a5, v23[1], v10, v16, v9, v15);
  sub_240964BB8(a4, a5);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v21;
}

uint64_t sub_240A13A24()
{
  sub_2409E0948();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_240A2C39C();
}

void sub_240A13AC4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_240A2C24C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_240A2C21C();
    v8 = v6;
    v9 = sub_240A2C20C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_2409230D4(0, 0, v4, &unk_240A38D40, v10);
  }
}

uint64_t sub_240A13C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_240A2C21C();
  v4[3] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_240A13CB0, v6, v5);
}

uint64_t sub_240A13CB0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08308]) init];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_240A13D64;

  return sub_240A13EA4(v1);
}

uint64_t sub_240A13D64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_24094DCF8, v4, v3);
}

uint64_t sub_240A13EA4(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_240A2B00C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v2[25] = swift_task_alloc();
  v4 = sub_240A2962C();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = sub_240A2C21C();
  v2[30] = sub_240A2C20C();
  v5 = swift_task_alloc();
  v2[31] = v5;
  *v5 = v2;
  v5[1] = sub_240A1405C;

  return sub_240A156CC();
}

uint64_t sub_240A1405C()
{
  v1 = *v0;

  v3 = sub_240A2C1BC();
  *(v1 + 256) = v3;
  *(v1 + 264) = v2;

  return MEMORY[0x2822009F8](sub_240A141A0, v3, v2);
}

uint64_t sub_240A141A0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  sub_2409BF428(v0[19] + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_pendingDOB, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240919300(v0[25], &unk_27E50DCE0, &qword_240A32E20);
    sub_240A2AE9C();
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "Setting screentimes features", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v7 = v0[24];
    v8 = v0[20];
    v9 = v0[21];
    v10 = v0[18];

    v11 = *(v9 + 8);
    v0[35] = v11;
    v11(v7, v8);
    v0[2] = v0;
    v0[7] = v0 + 37;
    v0[3] = sub_240A14750;
    v12 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240A13784;
    v0[13] = &block_descriptor_32;
    v0[14] = v12;
    [v10 setRestrictionsWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    v13 = swift_task_alloc();
    v0[34] = v13;
    *v13 = v0;
    v13[1] = sub_240A14454;
    v14 = v0[28];

    return sub_240A14C64(v14);
  }
}

uint64_t sub_240A14454()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_240A14574, v3, v2);
}

uint64_t sub_240A14574()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C2CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Setting screentimes features", v3, 2u);
    MEMORY[0x245CCDDB0](v3, -1, -1);
  }

  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[18];

  v8 = *(v6 + 8);
  v0[35] = v8;
  v8(v4, v5);
  v0[2] = v0;
  v0[7] = v0 + 37;
  v0[3] = sub_240A14750;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A13784;
  v0[13] = &block_descriptor_32;
  v0[14] = v9;
  [v7 setRestrictionsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_240A14750()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_240A14A30;
  }

  else
  {
    v5 = sub_240A14880;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240A14880()
{

  v1 = *(v0 + 296);
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_2408FE000, v2, v3, "Updated ScreenTime settings for child account with success - %{BOOL}d", v4, 8u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = *(v0 + 152);
  (*(v0 + 280))(*(v0 + 184), *(v0 + 160));
  v6 = *(v5 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler + 8);
    sub_240915CF8();
    v8 = swift_allocError();
    *v9 = xmmword_240A32CF0;

    v6(v8, 0);
    sub_240964BB8(v6, v7);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_240A14A30()
{
  v1 = *(v0 + 288);

  swift_willThrow();
  sub_240A2AE9C();
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2408FE000, v3, v4, "Failed to update ScreenTime settings for child account with error - %@", v7, 0xCu);
    sub_240919300(v8, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 152);
  (*(v0 + 280))(*(v0 + 176), *(v0 + 160));
  v12 = *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler);
  if (v12)
  {
    v13 = *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler + 8);
    sub_240915CF8();
    v14 = swift_allocError();
    *v15 = xmmword_240A32CF0;

    v12(v14, 0);
    sub_240964BB8(v12, v13);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_240A14C64(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_240A2B00C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_240A2C21C();
  v2[13] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[14] = v5;
  v2[15] = v4;

  return MEMORY[0x2822009F8](sub_240A14D70, v5, v4);
}

uint64_t sub_240A14D70()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore;
  v0[16] = OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_0((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_240A14E34;

  return MEMORY[0x28213FCB0](v3, v4);
}

uint64_t sub_240A14E34(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  if (v1)
  {

    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = sub_240A1539C;
  }

  else
  {
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = sub_240A14F5C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_240A14F5C()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = (v0[7] + v0[16]);
    v3 = sub_240A295EC();
    [v1 aa:v3 setPendingDOB:?];

    v4 = v2[3];
    v5 = v2[4];
    __swift_project_boxed_opaque_existential_0(v2, v4);
    v6 = v1;
    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_240A15150;
    v8 = v0[18];

    return MEMORY[0x28213FCC0](v8, v4, v5);
  }

  else
  {

    sub_240A2AE9C();
    v9 = sub_240A2AFFC();
    v10 = sub_240A2C2AC();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[11];
    v13 = v0[8];
    v14 = v0[9];
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v9, v10, "No primary Apple Account available.", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    (*(v14 + 8))(v12, v13);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_240A15150()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_240A154C0;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_240A1526C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_240A1526C()
{

  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C2CC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[8];
  v7 = v0[9];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Successfully saved pending DOB", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_240A1539C()
{

  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C2AC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "No primary Apple Account available.", v7, 2u);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_240A154C0()
{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  sub_240A2AE9C();
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 72);
    v20 = *(v0 + 64);
    v21 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_240A2C6CC();
    v13 = sub_240925464(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to save pending DOB: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x245CCDDB0](v10, -1, -1);
    MEMORY[0x245CCDDB0](v9, -1, -1);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v14 = *(v0 + 160);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_240A156CC()
{
  v1[6] = v0;
  v2 = sub_240A2B00C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_240A2C21C();
  v1[13] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x2822009F8](sub_240A157E4, v4, v3);
}

uint64_t sub_240A157E4()
{
  v1 = (v0[6] + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountManager);
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v2 = sub_240A2AB6C();
  if (v2)
  {
    v3 = v2;

    sub_240A2AE9C();
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2CC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "Primary account found, skipping saving proto account", v10, 2u);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);

    v11 = v0[1];

    return v11();
  }

  else
  {
    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "Creating new proto account for child", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    v16 = v0[12];
    v17 = v0[7];
    v18 = v0[8];

    v19 = *(v18 + 8);
    v0[16] = v19;
    v19(v16, v17);
    __swift_project_boxed_opaque_existential_0(v1, v1[3]);
    v20 = sub_240A2AB5C();
    v21 = [objc_allocWithZone(MEMORY[0x277CB8F30]) initWithAccountType_];
    v0[17] = v21;

    if (v21)
    {
      [v21 proto:1 setAgeRange:?];
    }

    v22 = (v0[6] + OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore);
    v23 = v22[3];
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_0(v22, v23);
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_240A15AF0;

    return MEMORY[0x28213FCC0](v21, v23, v24);
  }
}

uint64_t sub_240A15AF0()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_240A15D78;
  }

  else
  {
    v5 = sub_240A15C2C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240A15C2C()
{

  sub_240A2AE9C();
  v1 = sub_240A2AFFC();
  v2 = sub_240A2C2CC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[11];
  v7 = v0[7];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v1, v2, "Successfully saved proto account", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    v9 = v1;
  }

  else
  {
    v9 = v0[17];
    v5 = v1;
  }

  v4(v6, v7);

  v10 = v0[1];

  return v10();
}

uint64_t sub_240A15D78()
{
  v22 = v0;
  v1 = *(v0 + 152);

  sub_240A2AE9C();
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 152);
    v20 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = *(v0 + 72);
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_240A2C6CC();
    v11 = sub_240925464(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v3, v4, "Failed to save proto account: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);

    v20(v19, v6);
  }

  else
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 128);
    v14 = *(v0 + 72);
    v15 = *(v0 + 56);

    v13(v14, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

id ChildSafetyFeaturesViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ChildSafetyFeaturesViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id ChildSafetyFeaturesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChildSafetyFeaturesViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240A16294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46[3] = a7;
  v46[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  v45[3] = a8;
  v45[4] = a10;
  v19 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a8 - 8) + 32))(v19, a3, a8);
  v20 = &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_completionHandler];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_2409BF428(a1, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_pendingDOB]);
  sub_240919A14(v46, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountManager]);
  sub_240919A14(v45, &a6[OBJC_IVAR____TtC14AppleIDSetupUI33ChildSafetyFeaturesViewController_accountStore]);
  *v20 = a4;
  *(v20 + 1) = a5;
  sub_240964BBC(a4, a5);
  sub_240A2BFEC();
  [objc_opt_self() deviceIsiPad];
  sub_240A2BFEC();
  sub_240A2BFEC();
  v21 = sub_240A2BF1C();

  v22 = sub_240A2BF1C();

  v23 = sub_240A2BF1C();
  v44.receiver = a6;
  v44.super_class = type metadata accessor for ChildSafetyFeaturesViewController(0);
  v24 = objc_msgSendSuper2(&v44, sel_initWithTitle_detailText_symbolName_contentLayout_, v21, v22, v23, 2);

  v25 = v24;
  v26 = [v25 buttonTray];
  v27 = [objc_opt_self() boldButton];
  sub_240A2BFEC();
  v28 = sub_240A2BF1C();

  [v27 setTitle:v28 forState:0];

  sub_2409E0948();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_240A2C39C();
  [v27 addAction:v30 forControlEvents:{64, 0, 0, 0, sub_240A16B40, v29}];

  [v26 addButton_];
  sub_240A2BFEC();
  v31 = sub_240A2BF1C();

  sub_240A2BFEC();
  v32 = sub_240A2BF1C();

  v33 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v31 description:v32 symbolName:v33];

  sub_240A2BFEC();
  v34 = sub_240A2BF1C();

  sub_240A2BFEC();
  v35 = sub_240A2BF1C();

  v36 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v34 description:v35 symbolName:v36];

  sub_240A2BFEC();
  v37 = sub_240A2BF1C();

  sub_240A2BFEC();
  v38 = sub_240A2BF1C();

  v39 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v37 description:v38 symbolName:v39];

  sub_240A2BFEC();
  v40 = sub_240A2BF1C();

  v41 = sub_240A2BF1C();

  v42 = sub_240A2BF1C();
  [v25 addBulletedListItemWithTitle:v40 description:v41 symbolName:v42];

  sub_240919300(a1, &unk_27E50DCE0, &qword_240A32E20);
  __swift_destroy_boxed_opaque_existential_0(v45);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v25;
}

uint64_t type metadata accessor for ChildSafetyFeaturesViewController(uint64_t a1)
{
  result = qword_27E50F0C0;
  if (!qword_27E50F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240A16900(uint64_t a1)
{
  sub_240A16A08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_240A16A08(uint64_t a1)
{
  if (!qword_27E50F0D0)
  {
    sub_240A2962C();
    v1 = sub_240A2C3BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50F0D0);
    }
  }
}

uint64_t sub_240A16A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_240A13C18(a1, v4, v5, v6);
}

id SetupStartViewController.__allocating_init(deviceModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithContentView_, 0);
}

id SetupStartViewController.init(deviceModel:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SetupStartViewController();
  return objc_msgSendSuper2(&v5, sel_initWithContentView_, 0);
}

id sub_240A16C14()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetupStartViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_240A305D0;

  v2 = sub_240A2A9BC();
  v4 = v3;

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_240913AEC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_240A2BF6C();

  v5 = sub_240A2BF1C();

  [v0 setTitle_];

  sub_240A16DC0();
  return [v0 setDismissalType_];
}

void sub_240A16DC0()
{
  v1 = [objc_allocWithZone(type metadata accessor for AISDeviceImage()) init];
  v2 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
  v3 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel + 8];
  v41 = &v0[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];

  v4 = [v0 traitCollection];
  sub_240965A54(v2, v3, v4);
  v42 = v5;

  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v6 setContentMode_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 contentView];
  [v7 addSubview_];

  if (v42)
  {
    [v42 size];
    if (v9 > 0.0)
    {
      v10 = [objc_opt_self() constraintWithItem:v6 attribute:7 relatedBy:0 toItem:v6 attribute:8 multiplier:v8 / v9 constant:0.0];
      [v6 addConstraint_];
    }
  }

  v40 = objc_opt_self();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_240A33530;
  v12 = [v6 centerXAnchor];
  v13 = [v0 contentView];
  v14 = [v13 mainContentGuide];

  v15 = [v14 centerXAnchor];
  v16 = [v12 constraintEqualToAnchor_];

  *(v11 + 32) = v16;
  v17 = [v6 centerYAnchor];
  v18 = [v0 &selRef_configurationWithTextStyle_];
  v19 = [v18 mainContentGuide];

  v20 = [v19 centerYAnchor];
  v21 = [v17 constraintEqualToAnchor_];

  *(v11 + 40) = v21;
  v22 = [v6 topAnchor];
  v23 = [v0 &selRef_configurationWithTextStyle_];
  v24 = [v23 mainContentGuide];

  v25 = [v24 topAnchor];
  v26 = [v22 constraintGreaterThanOrEqualToAnchor_];

  *(v11 + 48) = v26;
  v27 = [v6 bottomAnchor];
  v28 = [v0 &selRef_configurationWithTextStyle_];
  v29 = [v28 mainContentGuide];

  v30 = [v29 bottomAnchor];
  v31 = [v27 constraintLessThanOrEqualToAnchor_];

  *(v11 + 56) = v31;
  sub_24092F234();
  v32 = sub_240A2C15C();

  [v40 activateConstraints_];

  v33 = *(v41 + 1);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_240A32D10;
  v35 = [v6 heightAnchor];

  v36 = 150.0;
  if (!v33)
  {
    v36 = 75.0;
  }

  v37 = [v35 constraintEqualToConstant_];

  *(v34 + 32) = v37;
  v38 = sub_240A2C15C();

  [v40 activateConstraints_];
}

id SetupStartViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id SetupStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupStartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_240A17438(void *a1, void (*a2)(uint64_t, unint64_t))
{
  if ([a1 sender])
  {
    sub_240A2C3DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    sub_2409194E8(0, &qword_27E50F0E0, 0x277D43378);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    [v9 resignFirstResponder];
    v3 = [v9 text];
    if (v3)
    {
      v4 = v3;
      v5 = sub_240A2BF4C();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        a2(v5, v7);

        return;
      }
    }
  }

  else
  {
    sub_240A17ABC(v12);
  }
}

void sub_240A175B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [a3 performWithSender:Strong target:0];
}

void sub_240A17618(void *a1, id a2, uint64_t a3)
{
  v6 = [a2 superview];
  if (!v6)
  {
    [a2 addAction:a3 forControlEvents:0x2000];
    [a2 setTextContentType_];
    [a2 setAutocorrectionType_];
    [a2 setSecureTextEntry_];
    [a2 setAutocapitalizationType_];
    [a2 setEnablesReturnKeyAutomatically_];
    [a2 setReturnKeyType_];
    v7 = [objc_opt_self() systemFontOfSize:18.0 weight:*MEMORY[0x277D74410]];
    [a2 setFont_];

    [a2 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = [objc_opt_self() secondarySystemBackgroundColor];
    [a2 setBackgroundColor_];

    sub_240A2C06C();
    v9 = sub_240A2BF1C();

    [a2 setPlaceholder_];

    v10 = [a1 contentView];
    [v10 addSubview_];

    v11 = [a1 contentView];
    v12 = [v11 mainContentGuide];

    v13 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_240A308F0;
    v15 = [a2 topAnchor];
    v16 = [v12 topAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    *(v14 + 32) = v17;
    v18 = [a2 centerXAnchor];
    v19 = [v12 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v14 + 40) = v20;
    v21 = [a2 bottomAnchor];
    v22 = [v12 bottomAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor_];

    *(v14 + 48) = v23;
    v24 = [a2 heightAnchor];
    v25 = [v24 constraintEqualToConstant_];

    *(v14 + 56) = v25;
    v26 = [a2 widthAnchor];
    v27 = [v12 widthAnchor];
    v28 = [v26 constraintEqualToAnchor_];

    *(v14 + 64) = v28;
    sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
    v29 = sub_240A2C15C();

    [v13 activateConstraints_];

    v6 = v29;
  }
}

uint64_t sub_240A17ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6D0, &unk_240A33620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DiscoveringSetupView(uint64_t a1)
{
  result = qword_27E50F0E8;
  if (!qword_27E50F0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240A17B98(uint64_t a1)
{
  sub_24093CE9C(319);
  if (v1 <= 0x3F)
  {
    sub_240A17E4C(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_240A17E4C(319, &qword_27E50C0D0, MEMORY[0x277CED688], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_240A17DFC(319, &qword_27E50C0D8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_240A17DFC(319, &unk_27E50D8E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_240A17E4C(319, &qword_27E50BD60, sub_2409E0948, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_240A17E4C(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
              if (v7 <= 0x3F)
              {
                sub_240A17E4C(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_240A17DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240A17E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_240A17ECC()
{
  v0 = sub_240A2B73C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C190, &qword_240A32228);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_2409460C4((&v23 - v14));
  (*(v1 + 104))(v13, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_240919298(v15, v6, &qword_27E50C0C8, &qword_240A32740);
  sub_240919298(v13, &v6[v16], &qword_27E50C0C8, &qword_240A32740);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_240919298(v6, v10, &qword_27E50C0C8, &qword_240A32740);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = &v6[v16];
      v20 = v24;
      (*(v1 + 32))(v24, v19, v0);
      sub_240A1B968(&qword_27E50C198, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v18 = sub_240A2BF0C();
      v21 = *(v1 + 8);
      v21(v20, v0);
      sub_240919300(v13, &qword_27E50C0C8, &qword_240A32740);
      sub_240919300(v15, &qword_27E50C0C8, &qword_240A32740);
      v21(v10, v0);
      sub_240919300(v6, &qword_27E50C0C8, &qword_240A32740);
      return v18 & 1;
    }

    sub_240919300(v13, &qword_27E50C0C8, &qword_240A32740);
    sub_240919300(v15, &qword_27E50C0C8, &qword_240A32740);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_240919300(v13, &qword_27E50C0C8, &qword_240A32740);
  sub_240919300(v15, &qword_27E50C0C8, &qword_240A32740);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_240919300(v6, &qword_27E50C190, &qword_240A32228);
    v18 = 0;
    return v18 & 1;
  }

  sub_240919300(v6, &qword_27E50C0C8, &qword_240A32740);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_240A18314()
{
  v1 = sub_240A29EFC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_240A29EEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DiscoveringSetupView(0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v10);
  sub_240A29E8C();
  (*(v6 + 8))(v8, v5);
  v11 = (*(v2 + 88))(v4, v1);
  if (v11 != *MEMORY[0x277CED6A0])
  {
    if (v11 == *MEMORY[0x277CED698] || v11 == *MEMORY[0x277CED6A8])
    {
      (*(v2 + 8))(v4, v1);
      return 1;
    }

    if (v11 != *MEMORY[0x277CED6B0])
    {
      if (v11 == *MEMORY[0x277CED6B8])
      {
        (*(v2 + 8))(v4, v1);
      }

      else if (v11 != *MEMORY[0x277CED690])
      {
        result = sub_240A2C58C();
        __break(1u);
        return result;
      }

      v15 = (v0 + *(v9 + 36));
      v16 = *v15;
      v17 = *(v15 + 1);
      v18[16] = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
      sub_240A2BC5C();
      return v18[15];
    }
  }

  (*(v2 + 96))(v4, v1);

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v13 = sub_240A2A0DC();
  (*(*(v13 - 8) + 8))(&v4[v12], v13);
  return 1;
}

double sub_240A18664@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_240A2975C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for DiscoveringSetupView(0) + 24)))
  {
    sub_240A18A9C(v32);
    LOBYTE(v28) = 1;
    v34 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    sub_240A2BC5C();
    v7 = (*(v4 + 88))(v6, v3);
    v8 = (v4 + 8);
    if (v7 == *MEMORY[0x277CED240])
    {
      (*v8)(v6, v3);
      started = type metadata accessor for SetupStartViewController();
      v10 = objc_allocWithZone(started);
      v11 = &v10[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
      *v11 = 0;
      *(v11 + 1) = 0;
      v26.receiver = v10;
      v26.super_class = started;
      v12 = objc_msgSendSuper2(&v26, sel_initWithContentView_, 0);
      LOBYTE(v32[0]) = 1;
      sub_240A2BD3C();
      v13 = v35;
      v14 = v36;
      sub_240A2C06C();
      v15 = v12;
      v16 = sub_240A2BF1C();

      [v15 showActivityIndicatorWithStatus_];

      LOBYTE(v16) = sub_240A2B88C();
      v17 = sub_240A2B3AC();
      v27 = 0;
      *&v35 = v15;
      *(&v35 + 1) = MEMORY[0x277D84F90];
      v36 = v13;
      v37[0] = v14;
      *&v37[1] = v32[0];
      *&v37[4] = *(v32 + 3);
      *&v37[8] = v17;
      v37[16] = v16;
      v37[17] = 0;
    }

    else
    {
      (*v8)(v6, v3);
      v18 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
      LOBYTE(v32[0]) = 1;
      sub_240A2BD3C();
      v19 = v35;
      v20 = v36;
      sub_240A2C06C();
      v21 = v18;
      v22 = sub_240A2BF1C();

      [v21 showActivityIndicatorWithStatus_];

      LOBYTE(v22) = sub_240A2B88C();
      v23 = sub_240A2B3AC();
      v27 = 1;
      *&v35 = v21;
      *(&v35 + 1) = MEMORY[0x277D84F90];
      v36 = v19;
      v37[0] = v20;
      *&v37[1] = v32[0];
      *&v37[4] = *(v32 + 3);
      *&v37[8] = v23;
      v37[16] = v22;
      v37[17] = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
    sub_240936BEC();
    sub_240936CA4();
    sub_240A2B6EC();
    v32[0] = v28;
    v32[1] = v29;
    v32[2] = v30;
    v33 = v31;
    v27 = 0;
    v34 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
  sub_240936B60();
  sub_240A2B6EC();
  v24 = v36;
  *a1 = v35;
  *(a1 + 16) = v24;
  result = *v37;
  *(a1 + 32) = *v37;
  *(a1 + 47) = *&v37[15];
  return result;
}

uint64_t sub_240A18A9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F0F8, &qword_240A38E48);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  v6 = sub_240A29EFC();
  v32 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = sub_240A29EEC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DiscoveringSetupView(0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v16);
  sub_240A29E8C();
  v17 = v12;
  v18 = v32;
  (*(v13 + 8))(v15, v17);
  v19 = v6;
  if ((*(v18 + 88))(v11, v6) != *MEMORY[0x277CED6A0])
  {
    goto LABEL_7;
  }

  v30 = v1;
  v31 = v11;
  (*(v18 + 16))(v9, v11, v6);
  v20 = v18;
  v21 = v19;
  (*(v18 + 96))(v9, v19);
  v23 = *v9;
  v22 = *(v9 + 1);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v25 = sub_240A2A0DC();
  v26 = *(v25 - 8);
  if ((*(v26 + 88))(&v9[v24], v25) != *MEMORY[0x277CED780])
  {
    (*(v26 + 8))(&v9[v24], v25);
    goto LABEL_6;
  }

  (*(v26 + 96))(&v9[v24], v25);
  if (*&v9[v24] != 4)
  {
LABEL_6:

    v19 = v21;
    v2 = v30;
    v11 = v31;
    v18 = v20;
LABEL_7:
    *v5 = sub_240A2B55C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F100, &unk_240A38E50);
    sub_240A18EB4(v2, &v5[*(v28 + 44)]);
    sub_24091CE28(&qword_27E50F108, &qword_27E50F0F8, &qword_240A38E48, MEMORY[0x277CE1138]);
    v27 = sub_240A2BCDC();
    goto LABEL_8;
  }

  v34 = v23;
  v35 = v22;
  sub_24094032C();
  v27 = sub_240A2BCDC();
  v19 = v21;
  v11 = v31;
  v18 = v20;
LABEL_8:
  result = (*(v18 + 8))(v11, v19);
  *v33 = v27;
  return result;
}

uint64_t sub_240A18EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F110, &qword_240A38E60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F118, &qword_240A38E68);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F120, &qword_240A38E70);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v58 - v16;
  if ((sub_240A18314() & 1) != 0 && (sub_240A17ECC() & 1) == 0)
  {
    v18 = sub_240A2B59C();
  }

  else
  {
    v18 = sub_240A2B58C();
  }

  *v5 = v18;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F128, &qword_240A38E78);
  sub_240A19904(a1, &v5[*(v19 + 44)]);
  v20 = sub_240A2B86C();
  sub_24093A86C(v5, v8, &qword_27E50F110, &qword_240A38E60);
  v21 = &v8[*(v6 + 36)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  v22 = sub_240A2B85C();
  sub_24093A86C(v8, v15, &qword_27E50F118, &qword_240A38E68);
  v23 = &v15[*(v9 + 36)];
  *v23 = v22;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  v24 = v17;
  sub_24093A86C(v15, v17, &qword_27E50F120, &qword_240A38E70);
  v25 = sub_240A17ECC();
  v68 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if ((v25 & 1) == 0)
  {
    sub_240A19368(v79);
    v68 = v79[0];
    sub_240A2BDEC();
    sub_240A2B42C();
    v26 = v83;
    v27 = v84;
    v28 = v85;
    v29 = v86;
    v30 = v87;
    v31 = v88;
    v32 = v89;
    v33 = v90;
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v38 = v95;
    v39 = v96;
  }

  v59 = v31;
  v60 = v39;
  *&v69 = v35;
  *(&v69 + 1) = v36;
  *&v70 = v37;
  *(&v70 + 1) = v38;
  v40 = v24;
  v65 = v24;
  v66 = v12;
  v41 = v12;
  v42 = v12;
  v43 = v26;
  v61 = v26;
  v62 = v27;
  v44 = v30;
  v63 = v32;
  v64 = v33;
  v45 = v34;
  sub_240919298(v40, v42, &qword_27E50F120, &qword_240A38E70);
  v46 = v41;
  v47 = v67;
  sub_240919298(v46, v67, &qword_27E50F120, &qword_240A38E70);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F130, &unk_240A38E80) + 48);
  v49 = v68;
  *&v71 = v68;
  *(&v71 + 1) = v43;
  *&v72 = v27;
  *(&v72 + 1) = v28;
  *&v73 = v29;
  *(&v73 + 1) = v44;
  v50 = v59;
  *&v74 = v59;
  *(&v74 + 1) = v32;
  *&v75 = v33;
  *(&v75 + 1) = v45;
  v76 = v69;
  v77 = v70;
  v51 = v60;
  v78 = v60;
  *(v48 + 112) = v60;
  v52 = v76;
  *(v48 + 64) = v75;
  *(v48 + 80) = v52;
  *(v48 + 96) = v77;
  v53 = v71;
  v54 = v72;
  v55 = v74;
  *(v48 + 32) = v73;
  *(v48 + 48) = v55;
  *v48 = v53;
  *(v48 + 16) = v54;
  v56 = v49;
  sub_240919298(&v71, v79, &qword_27E50C150, &unk_240A321B0);
  sub_240919300(v65, &qword_27E50F120, &qword_240A38E70);
  v79[0] = v56;
  v79[1] = v61;
  v79[2] = v62;
  v79[3] = v28;
  v79[4] = v29;
  v79[5] = v44;
  v79[6] = v50;
  v79[7] = v63;
  v79[8] = v64;
  v79[9] = v45;
  v80 = v69;
  v81 = v70;
  v82 = v51;
  sub_240919300(v79, &qword_27E50C150, &unk_240A321B0);
  return sub_240919300(v66, &qword_27E50F120, &qword_240A38E70);
}

uint64_t sub_240A19368@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v3;
  v37 = type metadata accessor for PairingView(0);
  v4 = MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C158, &qword_240A38E90);
  v8 = MEMORY[0x28223BE20](v33);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v10;
  v11 = sub_240A29EFC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_240A29EEC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DiscoveringSetupView(0);
  v38 = v1;
  MEMORY[0x245CCC9B0](v2);
  sub_240A29E8C();
  (*(v16 + 8))(v18, v15);
  v19 = (*(v12 + 88))(v14, v11);
  if (v19 == *MEMORY[0x277CED6A0])
  {
    goto LABEL_2;
  }

  if (v19 == *MEMORY[0x277CED698] || v19 == *MEMORY[0x277CED6A8])
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_6;
  }

  if (v19 == *MEMORY[0x277CED6B0])
  {
LABEL_2:
    (*(v12 + 96))(v14, v11);

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    v21 = sub_240A2A0DC();
    (*(*(v21 - 8) + 8))(&v14[v20], v21);
LABEL_6:
    v22 = v38;
    v23 = v35;
    sub_240A2BD1C();
    swift_getKeyPath();
    sub_240A2BD0C();

    sub_240919300(v23, &qword_27E50BE28, qword_240A320C0);
    v24 = *(v22 + *(v34 + 28));
    v25 = v37;
    v26 = *(v37 + 24);
    *&v7[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    v7[*(v25 + 20)] = v24;
    sub_240A1B884(v7, v36, type metadata accessor for PairingView);
    sub_240A1B968(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
    v27 = sub_240A2BCDC();
    result = sub_240940380(v7);
LABEL_7:
    *v39 = v27;
    return result;
  }

  if (v19 == *MEMORY[0x277CED6B8])
  {
    (*(v12 + 8))(v14, v11);
LABEL_12:
    v29 = v32;
    sub_240A1B538(v32);
    sub_240919298(v29, v31, &qword_27E50C158, &qword_240A38E90);
    sub_2409403DC();
    v27 = sub_240A2BCDC();
    result = sub_240919300(v29, &qword_27E50C158, &qword_240A38E90);
    goto LABEL_7;
  }

  if (v19 == *MEMORY[0x277CED690])
  {
    goto LABEL_12;
  }

  result = sub_240A2C65C();
  __break(1u);
  return result;
}

uint64_t sub_240A19904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v210 = a2;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F140, &qword_240A38F00);
  MEMORY[0x28223BE20](v209);
  v190 = &v165 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F148, &qword_240A38F08);
  v188 = *(v4 - 8);
  v189 = v4;
  MEMORY[0x28223BE20](v4);
  v171 = &v165 - v5;
  v184 = sub_240A29EEC();
  v182 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v181 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F150, &unk_240A38F10);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v187 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v196 = &v165 - v10;
  v11 = sub_240A2B75C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for DiscoveringSetupView(0);
  v175 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v191 = v15;
  v192 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v169 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v179 = &v165 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B0, &unk_240A38F20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v170 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v176 = &v165 - v25;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1B8, &unk_240A32250);
  MEMORY[0x28223BE20](v178);
  v177 = &v165 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C0, &qword_240A38F30);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v183 = &v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v200 = &v165 - v30;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F158, &qword_240A38F38);
  MEMORY[0x28223BE20](v203);
  v205 = &v165 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F160, &qword_240A38F40);
  v173 = *(v32 - 8);
  v174 = v32;
  MEMORY[0x28223BE20](v32);
  v168 = &v165 - v33;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F168, &qword_240A38F48);
  v34 = MEMORY[0x28223BE20](v165);
  v167 = &v165 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v166 = &v165 - v36;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F170, &qword_240A38F50);
  MEMORY[0x28223BE20](v201);
  v172 = (&v165 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F178, &unk_240A38F58);
  v39 = MEMORY[0x28223BE20](v38 - 8);
  v208 = &v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = &v165 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1C8, &qword_240A32260);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v207 = &v165 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v214 = &v165 - v46;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F180, &qword_240A38F68);
  v47 = MEMORY[0x28223BE20](v197);
  v204 = &v165 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v212 = &v165 - v49;
  v50 = sub_240A18314();
  v206 = v42;
  v185 = v14;
  v186 = v11;
  v199 = v12;
  v194 = v21;
  v195 = v16;
  v193 = v22;
  v180 = v17;
  if ((v50 & 1) != 0 || (sub_240A17ECC() & 1) == 0)
  {
    v202 = 0;
  }

  else
  {
    sub_240A19368(v224);
    v202 = *&v224[0];
  }

  *&v224[0] = sub_240A1B010();
  *(&v224[0] + 1) = v51;
  v211 = sub_24091C4F8();
  v52 = sub_240A2B9CC();
  v54 = v53;
  v56 = v55;
  sub_240A2B8BC();
  v57 = sub_240A2B9AC();
  v213 = a1;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  sub_240920658(v52, v54, v56 & 1);

  v63 = sub_240A2B99C();
  v65 = v64;
  LOBYTE(v54) = v66;
  v68 = v67;
  sub_240920658(v58, v60, v62 & 1);

  v69 = sub_240A2B86C();
  LOBYTE(v54) = v54 & 1;
  LOBYTE(v224[0]) = v54;
  LOBYTE(v221) = 1;
  v70 = sub_240A2B70C();
  *&v221 = v63;
  *(&v221 + 1) = v65;
  LOBYTE(v222) = v54;
  *(&v222 + 1) = v68;
  LOBYTE(v223[0]) = v69;
  *(v223 + 8) = 0u;
  *(&v223[1] + 8) = 0u;
  BYTE8(v223[2]) = 1;
  HIDWORD(v223[2]) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1D8, &qword_240A32270);
  sub_24094055C();
  v71 = v212;
  sub_240A2BA6C();
  v224[2] = v223[0];
  v224[3] = v223[1];
  v224[4] = v223[2];
  v224[0] = v221;
  v224[1] = v222;
  sub_240919300(v224, &qword_27E50C1D8, &qword_240A32270);
  KeyPath = swift_getKeyPath();
  v73 = v71 + *(v197 + 36);
  *v73 = KeyPath;
  *(v73 + 8) = 1;
  *&v221 = sub_240A1B234();
  *(&v221 + 1) = v74;
  v75 = sub_240A2B9CC();
  v77 = v76;
  v79 = v78;
  sub_240A2B96C();
  v80 = sub_240A2B9AC();
  v82 = v81;
  LOBYTE(v58) = v83;

  sub_240920658(v75, v77, v79 & 1);

  LODWORD(v221) = sub_240A2B72C();
  v84 = sub_240A2B98C();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v58 & 1;
  v92 = v213;
  sub_240920658(v80, v82, v91);

  v93 = (sub_240A18314() & 1) == 0;
  v94 = swift_getKeyPath();
  if (sub_240A18314())
  {
    v95 = 12.0;
  }

  else
  {
    v95 = 0.0;
  }

  v96 = swift_getKeyPath();
  v220 = v88 & 1;
  *&v216 = v84;
  *(&v216 + 1) = v86;
  LOBYTE(v217) = v88 & 1;
  *(&v217 + 1) = v90;
  *&v218 = v94;
  BYTE8(v218) = v93;
  *&v219 = v96;
  *(&v219 + 1) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C1F8, &unk_240A38FD0);
  sub_2409406EC();
  sub_240A2BA6C();
  v221 = v216;
  v222 = v217;
  v223[0] = v218;
  v223[1] = v219;
  sub_240919300(&v221, &qword_27E50C1F8, &unk_240A38FD0);
  if (sub_240A18314())
  {
    v97 = sub_240A17ECC();
    v98 = 1;
    v99 = v206;
    v100 = v172;
    if (v97)
    {
      v101 = v166;
      sub_240A2BD5C();
      sub_240A2BDEC();
      sub_240A2B28C();
      v102 = (v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1B0, &qword_240A39000) + 36));
      v103 = v217;
      *v102 = v216;
      v102[1] = v103;
      v102[2] = v218;
      v104 = sub_240A2B72C();
      *(v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1B8, &qword_240A39008) + 36)) = v104;
      v105 = v101 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1C0, &qword_240A39010) + 36);
      v106 = *MEMORY[0x277CE0118];
      v107 = sub_240A2B57C();
      (*(*(v107 - 8) + 104))(v105, v106, v107);
      *(v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1C8, &qword_240A39018) + 36)) = 256;
      v108 = sub_240A2B86C();
      v109 = v101 + *(v165 + 36);
      *v109 = v108;
      *(v109 + 8) = 0u;
      *(v109 + 24) = 0u;
      *(v109 + 40) = 1;
      sub_240A19368(&v215);
      v110 = v215;
      v111 = v167;
      sub_240919298(v101, v167, &qword_27E50F168, &qword_240A38F48);
      v112 = v168;
      sub_240919298(v111, v168, &qword_27E50F168, &qword_240A38F48);
      *(v112 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1D0, &unk_240A39020) + 48)) = v110;

      sub_240919300(v101, &qword_27E50F168, &qword_240A38F48);

      sub_240919300(v111, &qword_27E50F168, &qword_240A38F48);
      sub_240A1BE54(v112, v100);
      v98 = 0;
    }

    (*(v173 + 56))(v100, v98, 1, v174);
    sub_240919298(v100, v205, &qword_27E50F170, &qword_240A38F50);
    swift_storeEnumTagMultiPayload();
    sub_240A1B9B0();
    sub_24091CE28(&qword_27E50F1A0, &qword_27E50F140, &qword_240A38F00, MEMORY[0x277CE14C0]);
    sub_240A2B6EC();
    sub_240919300(v100, &qword_27E50F170, &qword_240A38F50);
  }

  else
  {
    v113 = (v92 + *(v198 + 40));
    v114 = v113[1];
    v115 = v185;
    if (v114)
    {
      v116 = *v113;

      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_240A305D0;
      *(v117 + 56) = MEMORY[0x277D837D0];
      *(v117 + 64) = sub_240913AEC();
      *(v117 + 32) = v116;
      *(v117 + 40) = v114;
      v118 = sub_240A2BF6C();
      v120 = v119;
    }

    else
    {
      v118 = sub_240A2C06C();
      v120 = v121;
    }

    v122 = v192;
    *&v216 = v118;
    *(&v216 + 1) = v120;
    sub_240A1B884(v92, v192, type metadata accessor for DiscoveringSetupView);
    v123 = (*(v175 + 80) + 16) & ~*(v175 + 80);
    v174 = *(v175 + 80);
    v124 = swift_allocObject();
    v197 = v123;
    sub_240A1B8EC(v122, v124 + v123);
    v125 = v179;
    sub_240A2BCCC();
    sub_240A2B74C();
    v126 = sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
    v127 = sub_240A1B968(&qword_27E50C228, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    v128 = v176;
    v129 = v195;
    v130 = v186;
    v175 = v126;
    v173 = v127;
    sub_240A2BA1C();
    v131 = v199 + 8;
    v172 = *(v199 + 8);
    v172(v115, v130);
    v180 = *(v180 + 8);
    (v180)(v125, v129);
    LOBYTE(v129) = sub_240A2B86C();
    v132 = v177;
    (*(v193 + 32))(v177, v128, v194);
    v133 = v132 + *(v178 + 36);
    *v133 = v129;
    *(v133 + 8) = 0u;
    *(v133 + 24) = 0u;
    v134 = v115;
    v135 = 1;
    *(v133 + 40) = 1;
    sub_240940888();
    sub_240A2BA6C();
    sub_240919300(v132, &qword_27E50C1B8, &unk_240A32250);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    v137 = v181;
    MEMORY[0x245CCC9B0](v136);
    LOBYTE(v132) = sub_240A29E7C();
    (*(v182 + 8))(v137, v184);
    if (v132)
    {
      *&v216 = sub_240A2C06C();
      *(&v216 + 1) = v138;
      v199 = v131;
      v139 = v130;
      v140 = v134;
      v141 = v192;
      sub_240A1B884(v92, v192, type metadata accessor for DiscoveringSetupView);
      v142 = v197;
      v143 = swift_allocObject();
      sub_240A1B8EC(v141, v143 + v142);
      v144 = v169;
      sub_240A2BCCC();
      sub_240A2B74C();
      v145 = v170;
      v146 = v195;
      v147 = v175;
      v148 = v173;
      sub_240A2BA1C();
      v172(v140, v139);
      (v180)(v144, v146);
      *&v216 = v146;
      *(&v216 + 1) = v139;
      *&v217 = v147;
      *(&v217 + 1) = v148;
      swift_getOpaqueTypeConformance2();
      v149 = v171;
      v150 = v194;
      sub_240A2BA6C();
      (*(v193 + 8))(v145, v150);
      sub_24093A86C(v149, v196, &qword_27E50F148, &qword_240A38F08);
      v135 = 0;
    }

    v151 = v196;
    (*(v188 + 56))(v196, v135, 1, v189);
    v152 = v200;
    v153 = v183;
    sub_240919298(v200, v183, &qword_27E50C1C0, &qword_240A38F30);
    v154 = v187;
    sub_240919298(v151, v187, &qword_27E50F150, &unk_240A38F10);
    v155 = v190;
    sub_240919298(v153, v190, &qword_27E50C1C0, &qword_240A38F30);
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F188, &qword_240A38FE8);
    sub_240919298(v154, v155 + *(v156 + 48), &qword_27E50F150, &unk_240A38F10);
    sub_240919300(v154, &qword_27E50F150, &unk_240A38F10);
    sub_240919300(v153, &qword_27E50C1C0, &qword_240A38F30);
    sub_240919298(v155, v205, &qword_27E50F140, &qword_240A38F00);
    swift_storeEnumTagMultiPayload();
    sub_240A1B9B0();
    sub_24091CE28(&qword_27E50F1A0, &qword_27E50F140, &qword_240A38F00, MEMORY[0x277CE14C0]);
    v99 = v206;
    sub_240A2B6EC();
    sub_240919300(v155, &qword_27E50F140, &qword_240A38F00);
    sub_240919300(v151, &qword_27E50F150, &unk_240A38F10);
    sub_240919300(v152, &qword_27E50C1C0, &qword_240A38F30);
  }

  v157 = v212;
  v158 = v204;
  sub_240919298(v212, v204, &qword_27E50F180, &qword_240A38F68);
  v159 = v214;
  v160 = v207;
  sub_240919298(v214, v207, &qword_27E50C1C8, &qword_240A32260);
  v161 = v208;
  sub_240919298(v99, v208, &qword_27E50F178, &unk_240A38F58);
  v162 = v210;
  *v210 = v202;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F1A8, &unk_240A38FF0);
  sub_240919298(v158, v162 + v163[12], &qword_27E50F180, &qword_240A38F68);
  sub_240919298(v160, v162 + v163[16], &qword_27E50C1C8, &qword_240A32260);
  sub_240919298(v161, v162 + v163[20], &qword_27E50F178, &unk_240A38F58);
  sub_240919300(v99, &qword_27E50F178, &unk_240A38F58);
  sub_240919300(v159, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v157, &qword_27E50F180, &qword_240A38F68);
  sub_240919300(v161, &qword_27E50F178, &unk_240A38F58);
  sub_240919300(v160, &qword_27E50C1C8, &qword_240A32260);
  sub_240919300(v158, &qword_27E50F180, &qword_240A38F68);
}

uint64_t sub_240A1B010()
{
  v1 = sub_240A29DBC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_240A18314() & 1) != 0 || (v5 = (v0 + *(type metadata accessor for DiscoveringSetupView(0) + 40)), (v6 = v5[1]) == 0))
  {

    return sub_240A2C06C();
  }

  else
  {
    v7 = *v5;

    sub_240945D78(v4);
    sub_240A2C05C();
    (*(v2 + 8))(v4, v1);
    sub_240A2C06C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_240A305D0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_240913AEC();
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    v9 = sub_240A2BF6C();

    return v9;
  }
}

uint64_t sub_240A1B234()
{
  v0 = sub_240A29DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_240A18314())
  {
    v4 = sub_240A2BF1C();
    v5 = SFLocalizableWAPIStringKeyForKey();

    sub_240A2BF4C();
    type metadata accessor for DiscoveringSetupView(0);
    sub_240945D78(v3);
    sub_240A2C05C();
  }

  else
  {
    type metadata accessor for DiscoveringSetupView(0);
    sub_240945D78(v3);
    sub_240A2C05C();
  }

  (*(v1 + 8))(v3, v0);
  v6 = sub_240A2C06C();

  return v6;
}

uint64_t sub_240A1B3F0(uint64_t a1)
{
  type metadata accessor for DiscoveringSetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  return sub_240A2BC6C();
}

uint64_t sub_240A1B46C()
{
  v0 = sub_240A29EEC();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for DiscoveringSetupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0]();
  sub_240A29EBC();
  return sub_240A2BCFC();
}

uint64_t sub_240A1B538@<X0>(uint64_t a1@<X8>)
{
  v26[0] = a1;
  v1 = sub_240A2BBDC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F138, &unk_240A38EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C168, &qword_240A32218);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  sub_240A18314();
  sub_240A2BBCC();
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v1);
  v13 = sub_240A2BC1C();

  (*(v2 + 8))(v4, v1);
  v26[1] = v13;
  v26[2] = 0;
  v27 = 1;
  sub_240A2B8FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B830, &qword_240A31320);
  sub_2409208F0();
  sub_240A2BA0C();

  v14 = sub_240A2B72C();
  (*(v6 + 32))(v12, v8, v5);
  *&v12[*(v10 + 44)] = v14;
  LOBYTE(v14) = sub_240A2B85C();
  sub_240A2B1AC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v26[0];
  sub_24093A86C(v12, v26[0], &qword_27E50C168, &qword_240A32218);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C158, &qword_240A38E90);
  v25 = v23 + *(result + 36);
  *v25 = v14;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_240A1B884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240A1B8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveringSetupView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A1B968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_240A1B9B0()
{
  result = qword_27E50F190;
  if (!qword_27E50F190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F170, &qword_240A38F50);
    sub_24091CE28(&qword_27E50F198, &qword_27E50F160, &qword_240A38F40, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F190);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for DiscoveringSetupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_240A2B73C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_240A29DBC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v1[8];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0) + 32);
  v12 = sub_240A29EEC();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);

  v13 = v5 + v1[12];

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v15 = sub_240A2976C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v13 + v14, 6, v15))
  {
    (*(v16 + 8))(v13 + v14, v15);
  }

  v17 = v5 + v1[13];
  v18 = sub_240A2975C();
  (*(*(v18 - 8) + 8))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240A1BE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F160, &qword_240A38F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_240A1BEFC()
{
  result = qword_27E50F1D8;
  if (!qword_27E50F1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F1E0, &unk_240A39030);
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F1D8);
  }

  return result;
}

id AISAppleIDSignInConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AISAppleIDSignInConfiguration.username.getter()
{
  v1 = (v0 + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t AISAppleIDSignInConfiguration.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AISAppleIDSignInConfiguration.canEditUsername.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.canEditUsername.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.allowSkip.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.allowSkip.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.shouldShowSystemBackButton.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.shouldShowSystemBackButton.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.isProximitySetupEnabled.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.isProximitySetupEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_240A1CAD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void *AISAppleIDSignInConfiguration.aidaServiceContext.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AISAppleIDSignInConfiguration.aidaServiceContext.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AISAppleIDSignInConfiguration.signInFlowType.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.signInFlowType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AISAppleIDSignInConfiguration.ageMigrationPendingDOB.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  return sub_2409BF428(v1 + v3, a1);
}

uint64_t AISAppleIDSignInConfiguration.ageMigrationPendingDOB.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_240963E78(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t AISAppleIDSignInConfiguration.userAgeRange.getter()
{
  v1 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISAppleIDSignInConfiguration.userAgeRange.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id AISAppleIDSignInConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___AISAppleIDSignInConfiguration_username];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername] = 1;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip] = 0;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton] = 1;
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_serviceTypes;
  if (qword_27E50AFB8 != -1)
  {
    swift_once();
  }

  *&v0[v3] = qword_27E516368;
  v0[OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled] = 0;
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers] = &unk_28528BC30;
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext] = 0;
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType] = 0;
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  v5 = sub_240A2962C();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  *&v0[OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id AISAppleIDSignInConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240A1D624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C738, &qword_240A33090);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_240A30BE0;
  v1 = *MEMORY[0x277CED1A0];
  v2 = *MEMORY[0x277CED1A8];
  *(v0 + 32) = *MEMORY[0x277CED1A0];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CED1B8];
  v4 = *MEMORY[0x277CED1B0];
  *(v0 + 48) = *MEMORY[0x277CED1B8];
  *(v0 + 56) = v4;
  v10 = *MEMORY[0x277CED1C0];
  *(v0 + 64) = *MEMORY[0x277CED1C0];
  qword_27E516368 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return v10;
}

uint64_t type metadata accessor for AISAppleIDSignInConfiguration(uint64_t a1)
{
  result = qword_27E50F230;
  if (!qword_27E50F230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240A1D748(uint64_t a1)
{
  sub_240A16A08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_240A1D8D4()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F240);
  __swift_project_value_buffer(v0, qword_27E50F240);
  return sub_240A2AE9C();
}

__int128 *sub_240A1D920(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a1[5];
  v10 = a1[7];
  v47 = a1[6];
  v11 = v47;
  v48 = v10;
  v12 = a1[7];
  v49 = a1[8];
  v13 = a1[1];
  v14 = a1[3];
  v43 = a1[2];
  v15 = v43;
  v44 = v14;
  v16 = a1[3];
  v17 = a1[5];
  v45 = a1[4];
  v18 = v45;
  v46 = v17;
  v19 = a1[1];
  v42[0] = *a1;
  v20 = v42[0];
  v42[1] = v19;
  v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started] = 0;
  v21 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel];
  *(v21 + 6) = v11;
  *(v21 + 7) = v12;
  *(v21 + 8) = a1[8];
  *(v21 + 2) = v15;
  *(v21 + 3) = v16;
  *(v21 + 4) = v18;
  *(v21 + 5) = v9;
  *v21 = v20;
  *(v21 + 1) = v13;
  v22 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts];
  *v22 = a2;
  *(v22 + 1) = a3;
  v23 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_connect];
  *v23 = a4;
  *(v23 + 1) = a5;
  v24 = v43;
  v25 = v44;
  v26 = BYTE8(v44);
  v39 = v43;
  v40 = v44;
  v41 = BYTE8(v44);
  objc_allocWithZone(type metadata accessor for ImageCardContentView());
  sub_240A1E2A8(v42, v38);
  sub_240964BBC(a2, a3);

  sub_2409E12F0(v24, *(&v24 + 1), v25, v26);
  v27 = sub_2409E0A0C(&v39);
  v37.receiver = v6;
  v37.super_class = type metadata accessor for StartCardViewController();
  v28 = objc_msgSendSuper2(&v37, sel_initWithContentView_, v27);
  v29 = *(&v45 + 1);
  v30 = v28;
  [v30 setDismissalType_];
  v31 = sub_240A2BF1C();
  [v30 setTitle_];

  v32 = sub_240A2BF1C();
  [v30 setSubtitle_];

  v33 = v45;
  v34 = *&v27[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor];
  *&v27[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = v45;
  v35 = v33;

  [*&v27[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] setTintColor_];

  sub_24090C1A0(a2, a3);
  sub_240A1E278(v42);

  return v30;
}

void sub_240A1DB68(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for StartCardViewController();
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v2 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = sub_240A2BF1C();
  v16 = sub_240A1E250;
  v17 = v3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_2409DFF20;
  v15 = &block_descriptor_33;
  v5 = _Block_copy(&v12);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  if (*(v2 + 17))
  {
    if (*&v1[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts])
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v9 = sub_240A2BF1C();
      v16 = sub_240A1E270;
      v17 = v8;
      v12 = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      v14 = sub_2409DFF20;
      v15 = &block_descriptor_9_1;
      v10 = _Block_copy(&v12);
      v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

      _Block_release(v10);
    }
  }
}

void sub_240A1DE0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_240A1DFA8();
  }
}

void sub_240A1DE60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started] & 1) == 0)
    {
      v3 = *&Strong[OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_listAccounts];
      if (v3)
      {
        v4 = Strong;
        v3();
        Strong = v4;
      }
    }
  }
}

void sub_240A1DFA8()
{
  if (qword_27E50AFC0 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50F240);
  v2 = v0;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started);

    _os_log_impl(&dword_2408FE000, v3, v4, "Calling handleStartAction with started=%{BOOL}d", v5, 8u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  if ((*(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started) & 1) == 0)
  {
    *(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_started) = 1;
    [v2 setDismissalType:*(&v2[10].isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_viewModel)];
    v6 = sub_240A2BF1C();
    [v2 showActivityIndicatorWithStatus:v6];

    (*(&v2->isa + OBJC_IVAR____TtC14AppleIDSetupUI23StartCardViewController_connect))();
  }
}

id sub_240A1E15C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StartCardViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A1E2E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24091C780(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24091C780(v29, v30);
    result = sub_240A2C42C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24091C780(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_240A1E5B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24091C780(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24091C780(v29, v30);
    result = sub_240A2C42C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24091C780(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_240A1E87C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C010, &unk_240A31650);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
        swift_dynamicCast();
        sub_24091C780(&v22, v24);
        sub_24091C780(v24, v25);
        sub_24091C780(v25, &v23);
        result = sub_240925A1C(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_24091C780(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_24091C780(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_240A1EADC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB40, &unk_240A39250);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_240913DC0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_24091C780(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_24091C780(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_24091C780(v31, v32);
    result = sub_240A2C42C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_24091C780(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_240A1EDA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BB20, qword_240A39260);
    v2 = sub_240A2C5CC();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);

        v18 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
        swift_dynamicCast();
        result = sub_240925A1C(v16, v15);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v24;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * result) = v24;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_240A1EFE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_240A1F058(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_240A2B00C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = sub_240A2C21C();
  v2[9] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x2822009F8](sub_240A1F15C, v5, v4);
}

uint64_t sub_240A1F15C(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AIDASignInViewController: Begin AIDA sign-in.", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[7];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_240A1E2E8(v8);
  v10 = objc_allocWithZone(MEMORY[0x277CFD4A8]);
  v11 = sub_240A2BE9C();

  v12 = [v10 initWithAuthenticationResults_];
  v1[12] = v12;

  if (v12)
  {
    v13 = v1[3];
    v14 = sub_240A1F6F0(v12, *(v13 + OBJC_IVAR___AISAIDASignInViewController_navController));
    v1[13] = v14;
    [v14 setShouldForceOperation_];
    [v14 setOperationUIPermissions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
    v15 = sub_240A2BE9C();
    [v14 setAuthenticationResults_];

    v16 = sub_240A2C20C();
    v1[14] = v16;
    v17 = swift_task_alloc();
    v1[15] = v17;
    *(v17 + 16) = v13;
    *(v17 + 24) = v14;
    v18 = swift_task_alloc();
    v1[16] = v18;
    *v18 = v1;
    v18[1] = sub_240A1F508;
    v19 = MEMORY[0x277D85700];
    v20 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v1 + 17, v16, v19, 0xD000000000000018, 0x8000000240A40440, sub_240A20694, v17, v20);
  }

  else
  {

    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v22 = sub_240A2C28C();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v1[6];
    v25 = v1[4];
    if (v23)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2408FE000, v21, v22, "AIDA sign-in missing cdpContext.", v26, 2u);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    v9(v24, v25);

    v27 = v1[1];

    return v27(0);
  }
}

uint64_t sub_240A1F508()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_240A1F668, v3, v2);
}

uint64_t sub_240A1F668()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_240A1F6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "AIDASignInViewController: creating AIDA context.", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = sub_240A1FE3C(a1, a2);
  v12 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F308, &unk_240A39240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v14 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  *(inited + 64) = sub_2409194E8(0, &unk_27E50F310, 0x277CECAD0);
  *(inited + 40) = v11;
  v15 = v14;
  v16 = v11;
  sub_240926350(inited);
  swift_setDeallocating();
  sub_240919300(inited + 32, &qword_27E50BAD8, &qword_240A31640);
  type metadata accessor for AIDAServiceType(0);
  sub_240A20740();
  v17 = sub_240A2BE9C();

  [v12 setSignInContexts_];

  [v12 setViewController_];
  sub_240A200E0(v12, a2);

  return v12;
}

void sub_240A1F988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = *(a2 + OBJC_IVAR___AISAIDASignInViewController_aidaOwnersManager);
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_240A2069C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240A1EFE0;
  aBlock[3] = &block_descriptor_34;
  v13 = _Block_copy(aBlock);

  [v10 signInToAllServicesInBackgroundUsingContext:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_240A1FB4C(char a1, void *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_240A2AE9C();
  v8 = a2;
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_2408FE000, v9, v10, "AIDASignInViewController: AIDA sign-in done with result: %{BOOL}d error: %@.", v11, 0x12u);
    sub_240919300(v12, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17[15] = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  return sub_240A2C1CC();
}

id sub_240A1FD88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AIDASignInViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_240A1FE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2974C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CECAD0]) initWithPresentingViewController_];
  [v14 setBackgroundDataclassEnablement_];
  [v14 setFindMyActivationAction_];
  (*(v11 + 104))(v13, *MEMORY[0x277CED208], v10);
  LOBYTE(a2) = sub_240A2973C();
  (*(v11 + 8))(v13, v10);
  if ((a2 & 1) != 0 && *(v3 + OBJC_IVAR___AISAIDASignInViewController_isTeenFlow) == 1)
  {
    sub_240A2AE9C();
    v15 = sub_240A2AFFC();
    v16 = sub_240A2C29C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2408FE000, v15, v16, "AIDASignInViewController: Skipping CDP enablement for teen flow - will instrument post sign-in/setup.", v17, 2u);
      MEMORY[0x245CCDDB0](v17, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    [v14 setSkipCDPEnablement_];
  }

  else
  {
    [v14 setCdpContext_];
  }

  return v14;
}

void sub_240A200E0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A2974C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277CED208], v10);
  v14 = sub_240A2973C();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0 || (*(v3 + OBJC_IVAR___AISAIDASignInViewController_isTeenFlow) & 1) == 0)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CFDAE0]) initWithPresentingViewController_];
    if (v15)
    {
      v16 = v15;
      [v15 setDelegate_];
      [a1 setCdpUiProvider_];
      v17 = *(v3 + OBJC_IVAR___AISAIDASignInViewController_cdpUIController);
      *(v3 + OBJC_IVAR___AISAIDASignInViewController_cdpUIController) = v16;
    }

    else
    {
      sub_240A2AE9C();
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C2AC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "Failed to create CDPUIController for AIDA context.", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_240A20384(void *a1, int a2, void *a3, void *aBlock, const char *a5)
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  sub_240A20544(v8, a5);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_240A20544(uint64_t a1, const char *a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, a2, v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*(a1 + 16))(a1);
}

uint64_t sub_240A2069C(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);

  return sub_240A1FB4C(a1, a2);
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_240A20740()
{
  result = qword_27E50BAF0;
  if (!qword_27E50BAF0)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BAF0);
  }

  return result;
}

void sub_240A20798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_27E50AFC8 != -1)
  {
    swift_once();
  }

  v10 = sub_240A2B00C();
  __swift_project_value_buffer(v10, qword_27E50F320);
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v11, v12, "Begin remoteUI flow for stolen device protection", v13, 2u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  v14 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v15 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v16 = *&v5[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler + 8];
  *v14 = a3;
  *(v14 + 1) = a4;

  sub_24090C1A0(v15, v16);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v5;
  v20[4] = sub_240A219DC;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_240A21718;
  v20[3] = &block_descriptor_35;
  v18 = _Block_copy(v20);

  v19 = v5;

  [a2 urlForKey:a1 completion:v18];
  _Block_release(v18);
}

uint64_t sub_240A2097C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F320);
  __swift_project_value_buffer(v0, qword_27E50F320);
  return sub_240A2AE9C();
}

id sub_240A209C8()
{
  v1 = v0;
  if (qword_27E50AFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50F320);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Deinit StolenDeviceProtectionViewModel", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  [*&v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_remoteUIPresenter] setDelegate_];
  v6 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v7 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
  v8 = *&v1[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler + 8];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_24090C1A0(v7, v8);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for StolenDeviceProtectionViewModel();
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t sub_240A20BC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v29 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_240A2C24C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_240A21A00(a1, v12);
  sub_240A2C21C();

  v17 = a2;
  v18 = a5;
  v19 = sub_240A2C20C();
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v19;
  *(v23 + 24) = v24;
  sub_240A21A70(v12, v23 + v20);
  v25 = (v23 + v21);
  v26 = v28;
  *v25 = v29;
  v25[1] = v26;
  *(v23 + v22) = a2;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_2409230D4(0, 0, v15, &unk_240A392A8, v23);
}

uint64_t sub_240A20DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v9 = sub_240A2946C();
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v8[26] = swift_task_alloc();
  v10 = sub_240A295AC();
  v8[27] = v10;
  v8[28] = *(v10 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  sub_240A2C21C();
  v8[31] = sub_240A2C20C();
  v12 = sub_240A2C1BC();
  v8[32] = v12;
  v8[33] = v11;

  return MEMORY[0x2822009F8](sub_240A20F94, v12, v11);
}

uint64_t sub_240A20F94()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  sub_240A21A00(v0[18], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[26];

    sub_240919300(v4, &qword_27E50C7E0, &qword_240A33150);
    if (qword_27E50AFC8 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50F320);
    v6 = sub_240A2AFFC();
    v7 = sub_240A2C2CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2408FE000, v6, v7, "Missing criticalAccountEditURL", v8, 2u);
      MEMORY[0x245CCDDB0](v8, -1, -1);
    }

    v9 = v0[21];
    v10 = v0[19];

    v10(0, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[27];
    v16 = v0[28];
    v17 = v0[22];
    (*(v16 + 32))(v13, v0[26], v15);
    (*(v16 + 16))(v14, v13, v15);
    sub_240A2945C();
    v18 = *(v17 + OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_remoteUIPresenter);
    v19 = sub_240A2943C();
    v0[34] = v19;
    v0[2] = v0;
    v0[7] = v0 + 36;
    v0[3] = sub_240A212CC;
    v20 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240A13784;
    v0[13] = &block_descriptor_11_1;
    v0[14] = v20;
    [v18 loadRequest:v19 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_240A212CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_240A214DC;
  }

  else
  {
    v5 = sub_240A213FC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_240A213FC()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_240A214DC()
{
  v1 = v0[34];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];

  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  if (qword_27E50AFC8 != -1)
  {
    swift_once();
  }

  v5 = v0[35];
  v6 = sub_240A2B00C();
  __swift_project_value_buffer(v6, qword_27E50F320);
  v7 = v5;
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2AC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[35];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2408FE000, v8, v9, "Failed to load stolen device protection request with error: %@", v11, 0xCu);
    sub_240919300(v12, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  v15 = v0[35];
  v16 = v0[30];
  v17 = v0[27];
  v18 = v0[28];
  v19 = v0[19];

  v20 = v15;
  v19(0, v15);

  (*(v18 + 8))(v16, v17);

  v21 = v0[1];

  return v21();
}

uint64_t sub_240A21718(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_240A2958C();
    v10 = sub_240A295AC();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_240A295AC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_240919300(v8, &qword_27E50C7E0, &qword_240A33150);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A21A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A21A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A21AE0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_240915E50;

  return sub_240A20DF8(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

uint64_t sub_240A21C60(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_240A2C21C();
  v2[16] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A21CF8, v4, v3);
}

uint64_t sub_240A21CF8()
{
  v1 = v0 + 2;
  v2 = v0[15];
  v3 = v0[14];

  v4 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v5 setPresentingViewController_];
  v6 = v5;
  [v6 setIsUsernameEditable_];
  [v6 setForceInlinePresentation_];

  sub_24091D0CC(v6);
  v7 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  if (*(v2 + v7))
  {

    sub_240A2ACDC();
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v25 = v4;
    v8 = v0[15];
    v9 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
    swift_beginAccess();
    v10 = *(v8 + v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    type metadata accessor for AISNavigationPushMonitor();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[3] = 0;
    swift_unknownObjectWeakAssign();
    v12[4] = sub_2409FC74C;
    v12[5] = v11;
    *(swift_allocObject() + 16) = v12;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = v0[14];
      v0[2] = Strong;
      v24 = Strong;
      swift_getKeyPath();
      swift_unknownObjectRetain_n();

      v15 = v14;

      v16 = sub_240A2955C();

      v1 = v0 + 2;
    }

    else
    {
      swift_unknownObjectRetain_n();

      v16 = 0;
    }

    v17 = v12[3];
    v12[3] = v16;

    swift_unknownObjectRelease();

    v4 = v25;
  }

  if (v4)
  {
    v18 = v0[15];
    v0[6] = sub_240A2245C;
    v0[7] = v18;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_240976B34;
    v0[5] = &block_descriptor_36;
    v19 = _Block_copy(v1);
    v20 = v6;
    v21 = v4;

    [v21 authenticateWithContext:v20 completion:v19];

    _Block_release(v19);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_240A220C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_240A2C24C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_240A2C21C();

  v10 = a2;
  v11 = sub_240A2C20C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = a1;
  v12[6] = a2;

  sub_2409233D4(0, 0, v7, &unk_240A39310, v12);
}

uint64_t sub_240A22240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  sub_240A2C21C();
  v6[9] = sub_240A2C20C();
  v8 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A222DC, v8, v7);
}

uint64_t sub_240A222DC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(v0 + 56))
    {
      v2 = *(v0 + 56);
    }

    else
    {
      v2 = sub_24092624C(MEMORY[0x277D84F90]);
    }

    v3 = *(v0 + 64);

    sub_24091D5C4(v2, v3);
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_240A223C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return sub_240A21C60(a1);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240A2247C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240915E50;

  return sub_240A22240(a1, v4, v5, v6, v7, v8);
}

void sub_240A2255C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50B430, &qword_240A30820);
  sub_240A2C76C();
  if (v1 <= 0x3F)
  {
    sub_240A22900(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_240A225F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 9;
  if (v3 + 1 > 9)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_240A22720(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 9;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_240A22900(uint64_t a1)
{
  if (!qword_27E50F3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50B430, &qword_240A30820);
    v1 = sub_240A2C76C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50F3C8);
    }
  }
}

unint64_t sub_240A22978()
{
  result = qword_27E50F3D0;
  if (!qword_27E50F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F3D0);
  }

  return result;
}

uint64_t sub_240A229CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = *(v4 + 32);

    v5(v6);
  }

  swift_beginAccess();
  *(a3 + 16) = 0;
}

uint64_t sub_240A22A54()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

__n128 sub_240A22AC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_240A29EFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != *MEMORY[0x277CED6A0])
  {
    if (v9 == *MEMORY[0x277CED6A8])
    {
      (*(v6 + 96))(v8, v5);
      v19 = sub_240A2A0DC();
      v20 = *(v19 - 8);
      if ((*(v20 + 88))(v8, v19) != *MEMORY[0x277CED788])
      {
        v34 = v2[1];
        v54 = *v2;
        v55 = v34;
        v57[0] = *(v2 + 40);
        v35 = v57[0];
        *(v57 + 9) = *(v2 + 49);
        v51 = v54;
        v52 = v34;
        *&v53[0] = 2;
        *(&v53[1] + 1) = *(v57 + 9);
        *(v53 + 8) = v35;
        v56 = 2;
        sub_240A24770(&v51, &v44);
        sub_240A247A8(&v54);
        (*(v20 + 8))(v8, v19);
        goto LABEL_12;
      }

      v21 = v2[1];
      v54 = *v2;
      v55 = v21;
      v22 = *(v2 + 40);
      v57[0] = v22;
      v23 = *(v2 + 49);
      *(v57 + 9) = v23;
      v51 = v54;
      v52 = v21;
      v24 = 1;
    }

    else
    {
      if (v9 != *MEMORY[0x277CED690])
      {
        v36 = v2[1];
        v54 = *v2;
        v55 = v36;
        v57[0] = *(v2 + 40);
        v37 = v57[0];
        *(v57 + 9) = *(v2 + 49);
        v51 = v54;
        v52 = v36;
        *&v53[0] = 4;
        *(&v53[1] + 1) = *(v57 + 9);
        *(v53 + 8) = v37;
        v56 = 4;
        sub_240A24770(&v51, &v44);
        sub_240A247A8(&v54);
        (*(v6 + 8))(v8, v5);
        goto LABEL_12;
      }

      v28 = v2[1];
      v54 = *v2;
      v55 = v28;
      v22 = *(v2 + 40);
      v57[0] = v22;
      v23 = *(v2 + 49);
      *(v57 + 9) = v23;
      v51 = v54;
      v52 = v28;
      v24 = 5;
    }

    *&v53[0] = v24;
    *(&v53[1] + 1) = v23;
    *(v53 + 8) = v22;
    v56 = v24;
    v18 = &v44;
    goto LABEL_11;
  }

  (*(v6 + 96))(v8, v5);
  v11 = *v8;
  v10 = *(v8 + 1);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v13 = sub_240A2A0DC();
  v14 = *(v13 - 8);
  if ((*(v14 + 88))(&v8[v12], v13) == *MEMORY[0x277CED788])
  {
    v58[0] = *(v2 + 40);
    sub_240919300(v58, &unk_27E50C3E0, &unk_240A30960);
    v15 = v2[1];
    v44 = *v2;
    v45 = v15;
    v16 = *(v2 + 4);
    v17 = *(v2 + 7);
    v50 = *(v2 + 64);
    v40 = v44;
    v41 = v15;
    v42 = v16;
    *&v43[0] = v11;
    *(&v43[0] + 1) = v10;
    *&v43[1] = v17;
    BYTE8(v43[1]) = v50;
    v46 = v16;
    v47 = v11;
    v48 = v10;
    v49 = v17;
    sub_240A24770(&v40, &v54);
    sub_240A247A8(&v44);
    v54 = v40;
    v55 = v41;
    v57[0] = v43[0];
    *(v57 + 9) = *(v43 + 9);
    v51 = v40;
    v52 = v41;
    *&v53[0] = 1;
    *(&v53[1] + 1) = *(v43 + 9);
    *(v53 + 8) = v43[0];
    v56 = 1;
    v18 = v39;
LABEL_11:
    sub_240A24770(&v51, v18);
    sub_240A247A8(&v54);
    goto LABEL_12;
  }

  v58[0] = *(v2 + 40);
  sub_240919300(v58, &unk_27E50C3E0, &unk_240A30960);
  v25 = v2[1];
  v44 = *v2;
  v45 = v25;
  v26 = *(v2 + 4);
  v27 = *(v2 + 7);
  v50 = *(v2 + 64);
  v40 = v44;
  v41 = v25;
  v42 = v26;
  *&v43[0] = v11;
  *(&v43[0] + 1) = v10;
  *&v43[1] = v27;
  BYTE8(v43[1]) = v50;
  v46 = v26;
  v47 = v11;
  v48 = v10;
  v49 = v27;
  sub_240A24770(&v40, &v54);
  sub_240A247A8(&v44);
  v54 = v40;
  v55 = v41;
  v57[0] = v43[0];
  *(v57 + 9) = *(v43 + 9);
  v51 = v40;
  v52 = v41;
  *&v53[0] = 2;
  *(&v53[1] + 1) = *(v43 + 9);
  *(v53 + 8) = v43[0];
  v56 = 2;
  sub_240A24770(&v51, v39);
  sub_240A247A8(&v54);
  (*(v14 + 8))(&v8[v12], v13);
LABEL_12:
  v29 = v53[2];
  v31 = v53[0];
  result = v53[1];
  v32 = v52;
  v33 = *(&v51 + 1);
  LOBYTE(v54) = v53[2];
  *a2 = v51;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = result;
  *(a2 + 64) = v29;
  return result;
}

id sub_240A22FC8()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C29C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "making new prox auth vc", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1[3];
  v48 = v1[2];
  v49 = v9;
  v50 = v1[4];
  v51 = *(v1 + 80);
  v10 = v1[1];
  v46 = *v1;
  v47 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E0, &qword_240A39688);
  MEMORY[0x245CCC9B0](v53);
  v12 = sub_240A23444();
  sub_240A247A8(v53);
  v13 = [objc_allocWithZone(MEMORY[0x277CF03B8]) initWithViewModel_];

  v14 = v1[3];
  v48 = v1[2];
  v49 = v14;
  v50 = v1[4];
  v51 = *(v1 + 80);
  v15 = v1[1];
  v46 = *v1;
  v47 = v15;
  MEMORY[0x245CCC9B0](v52, v11);

  sub_240A247A8(v52);
  v16 = sub_240A2BF1C();

  [v13 setVerificationCode_];

  v17 = *(v1 + 14);
  *&v48 = *(v1 + 13);
  *(&v48 + 1) = v17;
  *&v46 = MEMORY[0x277D85DD0];
  *(&v46 + 1) = 1107296256;
  *&v47 = sub_2409EC704;
  *(&v47 + 1) = &block_descriptor_37;
  v18 = _Block_copy(&v46);

  [v13 setAlternateButtonAction_];
  _Block_release(v18);
  v19 = v1[3];
  v48 = v1[2];
  v49 = v19;
  v50 = v1[4];
  v51 = *(v1 + 80);
  v20 = v1[1];
  v46 = *v1;
  v47 = v20;
  MEMORY[0x245CCC9B0](v39, v11);
  v43 = v39[2];
  v44 = v40;
  v45 = v41;
  v42[0] = v39[0];
  v42[1] = v39[1];
  sub_240A247A8(v42);
  if (v43 == 1)
  {
    v21 = v1[3];
    v48 = v1[2];
    v49 = v21;
    v50 = v1[4];
    v51 = *(v1 + 80);
    v22 = v1[1];
    v46 = *v1;
    v47 = v22;
    MEMORY[0x245CCC9B0](v39, v11);
    v23 = v40;

    sub_240A247A8(v39);
    if (v23)
    {

      v46 = *(v1 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E8, &qword_240A39690);
      sub_240A2BC5C();
      v24 = v34;
      v25 = v1[3];
      v48 = v1[2];
      v49 = v25;
      v50 = v1[4];
      v51 = *(v1 + 80);
      v26 = v1[1];
      v46 = *v1;
      v47 = v26;
      MEMORY[0x245CCC9B0](v32, v11);
      v36 = v32[2];
      v37 = v32[3];
      v38 = v33;
      v34 = v32[0];
      v35 = v32[1];
      swift_beginAccess();
      v27 = *(v24 + 32);
      v28 = *(v24 + 64);
      v48 = *(v24 + 48);
      v49 = v28;
      LOBYTE(v50) = *(v24 + 80);
      v47 = v27;
      v46 = *(v24 + 16);
      *(v24 + 80) = v38;
      *(v24 + 16) = v34;
      v29 = v35;
      *(v24 + 48) = v36;
      *(v24 + 64) = v37;
      *(v24 + 32) = v29;
      sub_240919300(&v46, &qword_27E50F3F0, &qword_240A39698);
    }
  }

  return v13;
}

id sub_240A23444()
{
  v1 = v0;
  v22 = sub_240A2B00C();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A29DBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277CF03C0]) initWithType_];
  v10 = sub_240A2BF1C();
  [v9 setTitleText_];

  v11 = *(v1 + 64);
  if (v11)
  {
    sub_240A29DAC();
    sub_240A2BFCC();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_240A2C03C();
  }

  v12 = sub_240A2BF1C();

  [v9 setDetailedText_];

  v13 = sub_240A2BF1C();
  [v9 setSecondaryButtonTitle_];

  if (v11)
  {
    [v9 setShowHeaderView_];
  }

  sub_240A2AE9C();
  sub_240A24770(v1, v23);
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C29C();
  sub_240A247A8(v1);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315138;
    v18 = sub_240A242C0();
    v20 = sub_240925464(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2408FE000, v14, v15, "Converted BringParentDeviceNearbyView.ViewModel to AKProximityMessageViewModel. Current state is %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245CCDDB0](v17, -1, -1);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  (*(v2 + 8))(v4, v22);
  return v9;
}

void sub_240A2379C(void *a1)
{
  v2 = v1;
  v62 = a1;
  v63 = sub_240A2B00C();
  v3 = *(v63 - 8);
  v4 = MEMORY[0x28223BE20](v63);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v61 = &v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  MEMORY[0x28223BE20](v9);
  v59 = &v58 - v12;
  v13 = *(v1 + 48);
  v14 = *(v1 + 16);
  v87 = *(v1 + 32);
  v88 = v13;
  v15 = *(v1 + 48);
  v89 = *(v1 + 64);
  v16 = *(v1 + 16);
  v85 = *v1;
  v86 = v16;
  v73 = v87;
  v74 = v15;
  *v75 = *(v1 + 64);
  v90 = *(v1 + 80);
  v75[16] = *(v1 + 80);
  v71 = v85;
  v72 = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E0, &qword_240A39688);
  MEMORY[0x245CCC9B0](&v105);
  v18 = v105;
  v80 = v106;
  v81 = v107;
  v82 = v108;
  v83 = v109;
  v84 = *(v1 + 88);
  v71 = *(v1 + 88);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3E8, &qword_240A39690);
  sub_240A2BC5C();
  v19 = v105;
  swift_beginAccess();
  v20 = *(v19 + 48);
  v106 = *(v19 + 32);
  v107 = v20;
  v108 = *(v19 + 64);
  v109 = *(v19 + 80);
  v105 = *(v19 + 16);
  sub_240A248F0(&v105, &v71);

  if (!*(&v18 + 1))
  {
    if (!*(&v105 + 1))
    {
      v71 = v18;
      v72 = v80;
      v73 = v81;
      v74 = v82;
      v75[0] = v83;
      sub_240919300(&v71, &qword_27E50F3F0, &qword_240A39698);
LABEL_22:
      v54 = v59;
      sub_240A2AE9C();
      v55 = sub_240A2AFFC();
      v56 = sub_240A2C29C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_2408FE000, v55, v56, "BringParentDeviceNearbyView - Ignoring duplicate view model update", v57, 2u);
        MEMORY[0x245CCDDB0](v57, -1, -1);
      }

      (*(v3 + 8))(v54, v63);
      return;
    }

    goto LABEL_6;
  }

  if (!*(&v105 + 1))
  {
LABEL_6:
    v72 = v80;
    v73 = v81;
    v74 = v82;
    v76 = v106;
    v71 = v18;
    v75[0] = v83;
    *&v75[8] = v105;
    v77 = v107;
    v78 = v108;
    v79 = v109;
    sub_240919300(&v71, &unk_27E50F3F8, &unk_240A396A0);
    goto LABEL_7;
  }

  v96 = v105;
  v97 = v106;
  v98 = v107;
  v99 = v108;
  v100 = v109;
  v104 = v109;
  v103[2] = v107;
  v103[3] = v108;
  v103[0] = v105;
  v103[1] = v106;
  v102 = v83;
  v101[2] = v81;
  v101[3] = v82;
  v101[1] = v80;
  v101[0] = v18;
  v21 = sub_240A244DC(v101, v103);
  sub_240919300(&v96, &qword_27E50F3F0, &qword_240A39698);
  v71 = v18;
  v72 = v80;
  v73 = v81;
  v74 = v82;
  v75[0] = v83;
  sub_240919300(&v71, &qword_27E50F3F0, &qword_240A39698);
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_7:
  v73 = v87;
  v74 = v88;
  *v75 = v89;
  v75[16] = v90;
  v71 = v85;
  v72 = v86;
  MEMORY[0x245CCC9B0](&v96, v17);
  v68 = v98;
  v69 = v99;
  v70 = v100;
  v67[0] = v96;
  v67[1] = v97;
  sub_240A247A8(v67);
  v22 = v63;
  v23 = v61;
  v58 = v3;
  if (v68 == 1 && (v73 = v87, v74 = v88, *v75 = v89, v75[16] = v90, v71 = v85, v72 = v86, MEMORY[0x245CCC9B0](&v96, v17), v24 = v99, , sub_240A247A8(&v96), v24))
  {

    sub_240A2AE9C();
    v25 = v11;
    v26 = sub_240A2AFFC();
    v27 = sub_240A2C29C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2408FE000, v26, v27, "Saving first pairing view model", v28, 2u);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    v29 = *(v3 + 8);
    v29(v25, v22);
    v71 = v84;
    sub_240A2BC5C();
    v30 = v91;
    v73 = v87;
    v74 = v88;
    *v75 = v89;
    v75[16] = v90;
    v71 = v85;
    v72 = v86;
    MEMORY[0x245CCC9B0](v64, v17);
    v93 = v64[2];
    v94 = v65;
    v95 = v66;
    v91 = v64[0];
    v92 = v64[1];
    swift_beginAccess();
    v31 = *(v30 + 32);
    v32 = *(v30 + 64);
    v73 = *(v30 + 48);
    v74 = v32;
    v75[0] = *(v30 + 80);
    v72 = v31;
    v71 = *(v30 + 16);
    *(v30 + 80) = v95;
    *(v30 + 16) = v91;
    v33 = v92;
    *(v30 + 48) = v93;
    *(v30 + 64) = v94;
    *(v30 + 32) = v33;
    sub_240919300(&v71, &qword_27E50F3F0, &qword_240A39698);
  }

  else
  {
    sub_240A2AE9C();
    v34 = sub_240A2AFFC();
    v35 = sub_240A2C29C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2408FE000, v34, v35, "Updated view model is not pairing with code. Clearing saved state", v36, 2u);
      MEMORY[0x245CCDDB0](v36, -1, -1);
    }

    v29 = *(v3 + 8);
    v29(v23, v22);
    v71 = v84;
    sub_240A2BC5C();
    v37 = v96;
    swift_beginAccess();
    v38 = *(v37 + 48);
    v72 = *(v37 + 32);
    v73 = v38;
    v39 = *(v37 + 64);
    v75[0] = *(v37 + 80);
    v74 = v39;
    v71 = *(v37 + 16);
    *(v37 + 80) = 0;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0u;
    sub_240919300(&v71, &qword_27E50F3F0, &qword_240A39698);
  }

  sub_240A2AE9C();
  sub_240A24960(v2, &v71);
  v40 = sub_240A2AFFC();
  v41 = v6;
  v42 = sub_240A2C29C();
  sub_2409E5088(v2);
  if (os_log_type_enabled(v40, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v91 = v44;
    *v43 = 136315138;
    v73 = v87;
    v74 = v88;
    *v75 = v89;
    v75[16] = v90;
    v71 = v85;
    v72 = v86;
    MEMORY[0x245CCC9B0](&v96, v17);
    v45 = sub_240A242C0();
    v46 = v29;
    v48 = v47;
    sub_240A247A8(&v96);
    v49 = sub_240925464(v45, v48, &v91);

    *(v43 + 4) = v49;
    _os_log_impl(&dword_2408FE000, v40, v42, "Update uiview controller called with viewmodel: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x245CCDDB0](v44, -1, -1);
    MEMORY[0x245CCDDB0](v43, -1, -1);

    v46(v41, v63);
  }

  else
  {

    v29(v41, v22);
  }

  v73 = v87;
  v74 = v88;
  *v75 = v89;
  v75[16] = v90;
  v71 = v85;
  v72 = v86;
  MEMORY[0x245CCC9B0](v64, v17);
  v50 = v65;

  sub_240A247A8(v64);
  v51 = sub_240A2BF1C();
  if (v50)
  {
  }

  v52 = v62;
  [v62 setVerificationCode_];

  v73 = v87;
  v74 = v88;
  *v75 = v89;
  v75[16] = v90;
  v71 = v85;
  v72 = v86;
  MEMORY[0x245CCC9B0](&v91, v17);
  v53 = sub_240A23444();
  sub_240A247A8(&v91);
  [v52 updateViewWithViewModel_];
}

uint64_t sub_240A241A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2489C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240A2420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2489C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_240A24270(uint64_t a1)
{
  sub_240A2489C();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_240A24298(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t sub_240A242C0()
{
  v1 = v0;
  sub_240A2C47C();
  MEMORY[0x245CCCD90](0xD000000000000031, 0x8000000240A405A0);
  MEMORY[0x245CCCD90](*v1, v1[1]);
  MEMORY[0x245CCCD90](0xD000000000000018, 0x8000000240A405E0);
  MEMORY[0x245CCCD90](v1[2], v1[3]);
  MEMORY[0x245CCCD90](0xD000000000000012, 0x8000000240A40600);
  v2 = sub_240A2C62C();
  MEMORY[0x245CCCD90](v2);

  MEMORY[0x245CCCD90](0x6F63202020200A2CLL, 0xEB000000003D6564);
  if (v0[6])
  {
    v3 = v0[5];
    v4 = v0[6];
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x245CCCD90](v3, v4);

  MEMORY[0x245CCCD90](0x6C66202020200A2CLL, 0xEF3D65707954776FLL);
  v5 = sub_240A2BF9C();
  MEMORY[0x245CCCD90](v5);

  MEMORY[0x245CCCD90](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_240A24480(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_240A244DC(v7, v9) & 1;
}

uint64_t sub_240A244DC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_240A2C66C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_240A2C66C() & 1) == 0 || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (a1[5] != *(a2 + 40) || v6 != v7) && (sub_240A2C66C() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    if (a1[8])
    {
      if ((*(a2 + 64) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 64) & 1) != 0 || a1[7] != *(a2 + 56))
    {
      return 0;
    }

    return 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_240A245C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = sub_240A2BFDC();
    v8 = v7;
    result = sub_240A2BFDC();
    v11 = 6;
  }

  else
  {
    v6 = sub_240A2C01C();
    v8 = v12;
    result = sub_240A2C01C();
    v11 = 5;
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = result;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = a1;
  *(a3 + 64) = a2 & 1;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_240A246C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_240A2470C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProxViewModel.FlowType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProxViewModel.FlowType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_240A2484C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240A24868(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_240A2489C()
{
  result = qword_27E50F3D8;
  if (!qword_27E50F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F3D8);
  }

  return result;
}

uint64_t sub_240A248F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F3F0, &qword_240A39698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t ShieldError.description.getter()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0xD000000000000022;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0xD000000000000018;
      }

      goto LABEL_12;
    }

    return 0xD000000000000054;
  }

  else
  {
    if (!v1)
    {
      return 0xD000000000000041;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0xD000000000000019;
      }

LABEL_12:
      v3 = *v0;
      sub_240A2C47C();

      MEMORY[0x245CCCD90](v3, v1);
      return 0xD000000000000017;
    }

    return 0xD000000000000032;
  }
}

uint64_t ShieldError.errorCode.getter()
{
  v1 = *(v0 + 8);
  if (v1 > 5)
  {
    return 3004;
  }

  else
  {
    return qword_240A398B0[v1];
  }
}

uint64_t sub_240A24B4C(uint64_t a1)
{
  v2 = sub_240A24CE8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_240A24B88(uint64_t a1)
{
  v2 = sub_240A24CE8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_240A24BCC()
{
  v1 = *(v0 + 8);
  if (v1 > 5)
  {
    return 3004;
  }

  else
  {
    return qword_240A398B0[v1];
  }
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI11ShieldErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_240A24C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240A24C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_240A24CB8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_240A24CE8()
{
  result = qword_27E50F408;
  if (!qword_27E50F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F408);
  }

  return result;
}

double sub_240A24D68@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  if (([v3 forceOfferAgeRangePicker] & 1) != 0 || (v4 = objc_msgSend(objc_opt_self(), sel_sharedInstance), v5 = objc_msgSend(v4, sel_protoAccount), v4, !v5) || (v5, objc_msgSend(v3, sel_skipSetupWithGuardian)))
  {
    v6 = *v1;
    swift_unknownObjectWeakLoadStrong();
    v6;
    v3;
    sub_240A2B87C();
  }

  else
  {
    swift_unknownObjectWeakLoadStrong();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F478, &qword_240A39898);
  sub_240A253F4();
  sub_240964A98();
  sub_240A2B6EC();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 25) = v11;
  return result;
}

uint64_t sub_240A24EC8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_240A2B00C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_240A2C21C();
  v1[6] = sub_240A2C20C();
  v4 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_240A24FBC, v4, v3);
}

uint64_t sub_240A24FBC()
{

  v1 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {

    sub_240A2AE9C();
    v3 = sub_240A2AFFC();
    v4 = sub_240A2C2CC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2408FE000, v3, v4, "Theres a primary Apple Account on the device, skipping setup", v5, 2u);
      MEMORY[0x245CCDDB0](v5, -1, -1);
    }

    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];

    (*(v7 + 8))(v6, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if ([Strong respondsToSelector_])
      {
        sub_240915CF8();
        v11 = swift_allocError();
        *v12 = xmmword_240A315B0;
        v13 = sub_240A2952C();
        [v10 shieldSetupDidFinishWithResult:0 viewControllersToRemove:0 error:v13];

        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      swift_unknownObjectRelease();
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_240915CF8();
      v16 = swift_allocError();
      *v17 = xmmword_240A315B0;
      v18 = sub_240A2952C();

      [v15 shieldSetupDidFinishWithResult:0 error:v18];
      swift_unknownObjectRelease();
    }
  }

LABEL_10:

  v19 = v0[1];

  return v19();
}

__n128 sub_240A25214@<Q0>(__n128 *a1@<X8>)
{
  sub_240A24D68(&v11);
  v9 = v11;
  v3 = v12;
  v4 = v13;
  v5 = v14;
  sub_240A252F0(v1, v10);
  v6 = swift_allocObject();
  sub_240A25328(v10, v6 + 16);
  v7 = (a1->n128_u64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50F470, &qword_240A39890) + 36));
  sub_240A2B2CC();
  sub_240A2C22C();
  *v7 = &unk_240A39888;
  v7[1] = v6;
  result = v9;
  *a1 = v9;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u8[8] = v4;
  a1[1].n128_u8[9] = v5;
  return result;
}

uint64_t sub_240A25360()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_240915E50;

  return sub_240A24EC8(v0 + 16);
}

unint64_t sub_240A253F4()
{
  result = qword_27E50F480;
  if (!qword_27E50F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F478, &qword_240A39898);
    sub_240985580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F480);
  }

  return result;
}

unint64_t sub_240A25480()
{
  result = qword_27E50F488;
  if (!qword_27E50F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F470, &qword_240A39890);
    sub_240A2550C();
    sub_240A25598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F488);
  }

  return result;
}

unint64_t sub_240A2550C()
{
  result = qword_27E50F490;
  if (!qword_27E50F490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50F498, &unk_240A398A0);
    sub_240A253F4();
    sub_240964A98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F490);
  }

  return result;
}

unint64_t sub_240A25598()
{
  result = qword_27E50F4A0;
  if (!qword_27E50F4A0)
  {
    sub_240A2B2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F4A0);
  }

  return result;
}

uint64_t sub_240A255F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TermsView(0);
  v7 = a3 + v6[5];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
  sub_240A2BC4C();
  *(a3 + v8) = v15;
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  __swift_project_value_buffer(v9, qword_27E50F4B0);
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C28C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "init terms view", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  v13 = sub_240A2A18C();
  result = (*(*(v13 - 8) + 32))(a3, a1, v13);
  *(a3 + v6[6]) = a2;
  return result;
}

uint64_t sub_240A25784()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F4B0);
  __swift_project_value_buffer(v0, qword_27E50F4B0);
  return sub_240A2AE7C();
}

uint64_t sub_240A257D0@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1)@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v79 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v77 = v8;
  v78 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v64 - v9;
  v10 = sub_240A2A18C();
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v73 = v11;
  v74 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TermsView(0);
  v13 = *(v12 - 8);
  v69 = v12;
  v70 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v64 - v17;
  v71 = v19;
  MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v22 = sub_240A2B00C();
  v23 = __swift_project_value_buffer(v22, qword_27E50F4B0);
  sub_240A26EC0(v3, v21);
  v67 = v23;
  v24 = sub_240A2AFFC();
  v25 = sub_240A2C28C();
  v26 = os_log_type_enabled(v24, v25);
  v72 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v65 = v6;
    v28 = v27;
    v29 = swift_slowAlloc();
    v66 = a2;
    v30 = v29;
    v80[0] = v29;
    *v28 = 136315138;
    sub_240A26EC0(v21, v18);
    v31 = sub_240A2BF9C();
    v32 = v10;
    v33 = a1;
    v34 = v3;
    v36 = v35;
    sub_240A26F24(v21);
    v37 = sub_240925464(v31, v36, v80);
    v3 = v34;
    a1 = v33;
    v10 = v32;

    *(v28 + 4) = v37;
    _os_log_impl(&dword_2408FE000, v24, v25, "Showing terms view: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v38 = v30;
    a2 = v66;
    MEMORY[0x245CCDDB0](v38, -1, -1);
    v39 = v28;
    v6 = v65;
    MEMORY[0x245CCDDB0](v39, -1, -1);
  }

  else
  {

    sub_240A26F24(v21);
  }

  v40 = v68;
  sub_240A26EC0(v3, v68);
  v41 = sub_240A2AFFC();
  v42 = sub_240A2C28C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v3;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    v46 = *(v40 + *(v69 + 24));
    v47 = v40;
    v48 = v46;
    sub_240A26F24(v47);
    *(v44 + 4) = v48;
    *v45 = v48;
    _os_log_impl(&dword_2408FE000, v41, v42, "Terms view's delegate: %@", v44, 0xCu);
    sub_240919300(v45, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v45, -1, -1);
    v49 = v44;
    v3 = v43;
    MEMORY[0x245CCDDB0](v49, -1, -1);
  }

  else
  {

    sub_240A26F24(v40);
  }

  v51 = v74;
  v50 = v75;
  (*(v75 + 16))(v74, a1, v10);
  v52 = v72;
  sub_240A26EC0(v3, v72);
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v73 + *(v70 + 80) + v53) & ~*(v70 + 80);
  v55 = swift_allocObject();
  (*(v50 + 32))(v55 + v53, v51, v10);
  sub_240A26F80(v52, v55 + v54);
  v80[0] = sub_240A2C06C();
  v80[1] = v56;
  sub_24091C4F8();
  v57 = v76;
  sub_240A2B24C();
  v58 = v78;
  v60 = v79 + 32;
  v59 = *(v79 + 32);
  v59(v78, v57, v6);
  v61 = (*(v60 + 48) + 16) & ~*(v60 + 48);
  v62 = swift_allocObject();
  result = (v59)(v62 + v61, v58, v6);
  *a2 = sub_240A26FE4;
  a2[1] = v55;
  a2[2] = sub_240A270B8;
  a2[3] = v62;
  return result;
}

void sub_240A25DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A2A17C();
  sub_240A2A14C();
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v5 = sub_240A2B00C();
  __swift_project_value_buffer(v5, qword_27E50F4B0);
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C28C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "Running as client, attempting to show terms if necessary.", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  v9 = sub_240A2A13C();
  v11 = v10;
  v12 = objc_opt_self();
  v13 = v4;
  v14 = [v12 defaultStore];
  v15 = objc_allocWithZone(MEMORY[0x277CECA50]);
  type metadata accessor for AATermsEntry(0);
  sub_240A27138(&qword_27E50B2D0, type metadata accessor for AATermsEntry, &unk_240A3027C);
  v16 = sub_240A2C27C();
  v17 = [v15 initWithAccount:v13 inStore:v14 termsEntries:v16];

  if (v17)
  {
    v18 = v17;
    sub_240926CA4(MEMORY[0x277D84F90]);
    v19 = sub_240A2BE9C();

    [v18 setAdditionalHeaders_];

    v20 = v18;
    v21 = MEMORY[0x277D837D0];
    sub_240A2C44C();
    v51 = v21;
    strcpy(&v49, "PreProxSetup");
    BYTE13(v49) = 0;
    HIWORD(v49) = -5120;
    v22 = [v20 additionalHeaders];
    if (v22)
    {
      v23 = v22;
      v24 = sub_240A2BEBC();

      sub_24091C780(&v49, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v24;
      sub_2409F6508(v47, v52, isUniquelyReferenced_nonNull_native);
      sub_2409266D4(v52);
      if (v48)
      {
        v26 = sub_240A2BE9C();
      }

      else
      {
        v26 = 0;
      }

      [v20 setAdditionalHeaders_];

      *&v49 = 0xD000000000000019;
      *(&v49 + 1) = 0x8000000240A40880;
      v27 = v20;
      sub_240A2C44C();
      if (v11)
      {
        v28 = MEMORY[0x277D837D0];
        v29 = v11;
        v30 = v45;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v28 = 0;
        v50 = 0;
      }

      *&v49 = v30;
      *(&v49 + 1) = v29;
      v51 = v28;

      v31 = [v27 additionalHeaders];
      if (v31)
      {
        v32 = v31;
        v33 = sub_240A2BEBC();

        v48 = v33;
        if (v11)
        {
          sub_24091C780(&v49, v47);
          v34 = swift_isUniquelyReferenced_nonNull_native();
          sub_2409F6508(v47, v52, v34);
          sub_2409266D4(v52);
          if (v33)
          {
LABEL_17:
            v35 = sub_240A2BE9C();

LABEL_20:
            [v27 setAdditionalHeaders_];

            [v27 setDelegate_];
            goto LABEL_21;
          }
        }

        else
        {
          sub_240919300(&v49, &qword_27E50C6D0, &unk_240A33620);
          sub_240A28A88(v52, v47);
          sub_240919300(v47, &qword_27E50C6D0, &unk_240A33620);
          sub_2409266D4(v52);
          if (v48)
          {
            goto LABEL_17;
          }
        }

        v35 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_21:
  v36 = v17;
  v37 = sub_240A2AFFC();
  v38 = sub_240A2C28C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v52[0] = v40;
    *v39 = 136315138;
    *&v49 = [v36 delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F580, &qword_240A399D8);
    v41 = sub_240A2BF9C();
    v43 = sub_240925464(v41, v42, v52);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_2408FE000, v37, v38, "AAUIGenericTermsRemoteUI's delegate: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x245CCDDB0](v40, -1, -1);
    MEMORY[0x245CCDDB0](v39, -1, -1);
  }

  if (v17)
  {
    v44 = v36;
    [v44 presentFromViewController:a1 modal:1];
  }
}

double sub_240A264AC@<D0>(_OWORD *a1@<X8>)
{
  sub_240A257D0(v1, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_240A264EC()
{
  sub_240A2C72C();
  sub_240A2A18C();
  sub_240A27138(&qword_27E50F590, MEMORY[0x277CED7C8], MEMORY[0x277CED7D0]);
  sub_240A2BEFC();
  return sub_240A2C74C();
}

uint64_t sub_240A26574(uint64_t a1)
{
  sub_240A2A18C();
  sub_240A27138(&qword_27E50F590, MEMORY[0x277CED7C8], MEMORY[0x277CED7D0]);

  return sub_240A2BEFC();
}

uint64_t sub_240A265F8()
{
  sub_240A2C72C();
  sub_240A2A18C();
  sub_240A27138(&qword_27E50F590, MEMORY[0x277CED7C8], MEMORY[0x277CED7D0]);
  sub_240A2BEFC();
  return sub_240A2C74C();
}

id sub_240A267B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TermsDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for TermsView(uint64_t a1)
{
  result = qword_27E50F550;
  if (!qword_27E50F550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240A268A8(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_27E50AFD0 != -1)
    {
      swift_once();
    }

    v4 = sub_240A2B00C();
    __swift_project_value_buffer(v4, qword_27E50F4B0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C28C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Terms agreement successful, finished";
LABEL_10:
      _os_log_impl(&dword_2408FE000, v5, v6, v8, v7, 2u);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_27E50AFD0 != -1)
    {
      swift_once();
    }

    v9 = sub_240A2B00C();
    __swift_project_value_buffer(v9, qword_27E50F4B0);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2AC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "Terms agreement was not successful.";
      goto LABEL_10;
    }
  }

  v10 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_finishedCompletion);

  v10(a1 & 1);
}

void sub_240A26A50(uint64_t a1)
{
  if (qword_27E50AFD0 != -1)
  {
    swift_once();
  }

  v3 = sub_240A2B00C();
  __swift_project_value_buffer(v3, qword_27E50F4B0);

  v4 = sub_240A2AFFC();
  v5 = sub_240A2C28C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    if (!a1)
    {
      goto LABEL_18;
    }

    v8 = v7;

    v9 = sub_240A2BECC();
    v11 = sub_240925464(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v4, v5, "Received accepted terms: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_acceptedCompletion);
  if (v12)
  {
    if (a1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_acceptedCompletion + 8);

      v12(a1);

      sub_24090C1A0(v12, v13);
      return;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  oslog = sub_240A2AFFC();
  v14 = sub_240A2C2AC();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v14, "No completion handler provided", v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }
}

void sub_240A26CF8(uint64_t a1)
{
  sub_240A2A18C();
  if (v1 <= 0x3F)
  {
    sub_240A26DF8(319, &qword_27E50F560, &qword_27E50F568, qword_240A39910, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TermsDelegate();
      sub_240A26DF8(319, &qword_27E50F570, &unk_27E50F540, &unk_240A34F50, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_240A26DF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_240A26EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TermsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240A26F24(uint64_t a1)
{
  v2 = type metadata accessor for TermsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240A26F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TermsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_240A26FE4(uint64_t a1)
{
  v3 = *(sub_240A2A18C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TermsView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_240A25DE8(a1, v1 + v4, v7);
}

uint64_t sub_240A270B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_240A27138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_240A27180()
{
  result = qword_27E50F598;
  if (!qword_27E50F598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50F5A0, qword_240A399E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F598);
  }

  return result;
}

uint64_t sub_240A271E4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_240A27248()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50F5B0);
  __swift_project_value_buffer(v0, qword_27E50F5B0);
  return sub_240A2AE9C();
}

uint64_t sub_240A27294()
{
  result = sub_240A2BF4C();
  qword_27E516380 = result;
  *algn_27E516388 = v1;
  return result;
}

uint64_t sub_240A272C4(uint64_t a1)
{
  v2[105] = v1;
  v2[104] = a1;
  v3 = sub_240A2974C();
  v2[106] = v3;
  v2[107] = *(v3 - 8);
  v2[108] = swift_task_alloc();
  v4 = sub_240A2B00C();
  v2[109] = v4;
  v2[110] = *(v4 - 8);
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v2[114] = swift_task_alloc();
  sub_240A2C21C();
  v2[115] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v2[116] = v6;
  v2[117] = v5;

  return MEMORY[0x2822009F8](sub_240A2746C, v6, v5);
}

uint64_t sub_240A2746C()
{
  v79 = v0;
  v1 = *(v0 + 832);
  v2 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  *(v0 + 944) = v2;
  v3 = sub_24097B140();
  [v2 setAuthContext_];

  v4 = sub_240A2ABFC();
  sub_240A1EADC(v4);

  v5 = sub_240A2BE9C();

  [v2 setEphemeralAuthResults_];

  v6 = sub_240A2858C(v1);
  *(v0 + 952) = v6;
  sub_240A2ABCC();
  if (*(v0 + 512))
  {
    sub_24091C780((v0 + 488), (v0 + 456));
    v7 = sub_240A2ABEC();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v76 = v6;
      v11 = *(v0 + 912);
      v12 = *(v0 + 840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_240A30BE0;
      *(inited + 32) = 0x64497265626D656DLL;
      *(inited + 40) = 0xE800000000000000;
      sub_240913DC0(v0 + 456, inited + 48);
      *(inited + 80) = 0x44495344746C61;
      *(inited + 88) = 0xE700000000000000;
      v14 = MEMORY[0x277D837D0];
      *(inited + 96) = v9;
      *(inited + 104) = v10;
      *(inited + 120) = v14;
      *(inited + 128) = 0x6574736575716572;
      *(inited + 136) = 0xE900000000000072;
      v15 = *MEMORY[0x277CEFF40];
      type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
      v17 = v16;
      *(inited + 144) = v15;
      *(inited + 168) = v16;
      *(inited + 176) = 0xD000000000000010;
      *(inited + 184) = 0x8000000240A3A9F0;
      *(inited + 192) = v15;
      *(inited + 216) = v16;
      *(inited + 224) = 0xD000000000000017;
      *(inited + 232) = 0x8000000240A3AA10;
      v18 = *(v12 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled);
      *(inited + 264) = MEMORY[0x277D839B0];
      *(inited + 240) = v18;
      v19 = v15;
      v20 = sub_240926374(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
      swift_arrayDestroy();
      *(v0 + 808) = v20;
      v21 = *(v12 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings);
      v22 = *(v21 + 16);
      v23 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
      swift_beginAccess();
      sub_2409BF428(v22 + v23, v11);
      v24 = sub_240A2962C();
      v25 = (*(*(v24 - 8) + 48))(v11, 1, v24);
      sub_240919300(v11, &unk_27E50DCE0, &qword_240A32E20);
      if (v25 != 1)
      {
        sub_240A2AE9C();
        v26 = sub_240A2AFFC();
        v27 = sub_240A2C2CC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_2408FE000, v26, v27, "AISFlowStepChildAccountRepair: adding requester as migration", v28, 2u);
          MEMORY[0x245CCDDB0](v28, -1, -1);
        }

        v29 = *(v0 + 904);
        v30 = *(v0 + 880);
        v31 = *(v0 + 872);

        (*(v30 + 8))(v29, v31);
        v32 = *MEMORY[0x277CEFF20];
        *(v0 + 672) = v17;
        *(v0 + 648) = v32;
        sub_24091C780((v0 + 648), (v0 + 680));
        v33 = v32;
        v34 = *(v0 + 808);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v34;
        sub_2409F6038((v0 + 680), 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
        *(v0 + 808) = v34;
      }

      v36 = *(v21 + 16);
      v37 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
      swift_beginAccess();
      if (*(v36 + v37) == 2 && (v38 = *(v0 + 864), v39 = *(v0 + 856), v40 = *(v0 + 848), (*(v39 + 104))(v38, *MEMORY[0x277CED208], v40), v41 = sub_240A2973C(), (*(v39 + 8))(v38, v40), (v41 & 1) != 0))
      {
        if (qword_27E50AFD8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 872), qword_27E50F5B0);
        v42 = sub_240A2AFFC();
        v43 = sub_240A2C29C();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_2408FE000, v42, v43, "Adding family token of teen to additionalParams for family repair", v44, 2u);
          MEMORY[0x245CCDDB0](v44, -1, -1);
        }

        if (qword_27E50AFE0 != -1)
        {
          swift_once();
        }

        v45 = qword_27E516380;
        v46 = *algn_27E516388;
        v47 = sub_240A2AB9C();
        if (v48)
        {
          *(v0 + 576) = MEMORY[0x277D837D0];
          *(v0 + 552) = v47;
          *(v0 + 560) = v48;
          sub_24091C780((v0 + 552), (v0 + 616));
          v49 = *(v0 + 808);
          v50 = swift_isUniquelyReferenced_nonNull_native();
          sub_2409F6038((v0 + 616), v45, v46, v50);
          *(v0 + 808) = v49;
        }

        else
        {
          sub_240A289E4(v45, v46, (v0 + 584));
          sub_240919300(v0 + 584, &qword_27E50C6D0, &unk_240A33620);
        }
      }

      else
      {
        if (qword_27E50AFD8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 872), qword_27E50F5B0);
        v51 = sub_240A2AFFC();
        v52 = sub_240A2C29C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_2408FE000, v51, v52, "Age range not applicable for token to be added to additional params", v53, 2u);
          MEMORY[0x245CCDDB0](v53, -1, -1);
        }
      }

      v54 = sub_240A2BE9C();

      [v2 setAdditionalParameters_];

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 816;
      *(v0 + 24) = sub_240A27F58;
      v55 = swift_continuation_init();
      *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
      *(v0 + 352) = MEMORY[0x277D85DD0];
      *(v0 + 360) = 1107296256;
      *(v0 + 368) = sub_240A271E4;
      *(v0 + 376) = &block_descriptor_38;
      *(v0 + 384) = v55;
      [v76 performWithContext:v2 completion:v0 + 352];

      return MEMORY[0x282200938](v0 + 16);
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  }

  else
  {

    sub_240919300(v0 + 488, &qword_27E50C6D0, &unk_240A33620);
  }

  sub_240A28990();
  v56 = swift_allocError();
  *v57 = 1;
  swift_willThrow();

  v58 = *(v0 + 840);
  v59 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  [*(v58 + v59) complete];
  v60 = v56;
  sub_24097C6F0(0, v56);

  sub_240A2AE9C();
  v61 = v56;
  v62 = sub_240A2AFFC();
  v63 = sub_240A2C2AC();

  v64 = os_log_type_enabled(v62, v63);
  v65 = *(v0 + 888);
  v66 = *(v0 + 880);
  v67 = *(v0 + 872);
  if (v64)
  {
    v77 = *(v0 + 888);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v78 = v69;
    *v68 = 136315138;
    *(v0 + 800) = v56;
    v70 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v71 = sub_240A2BF9C();
    v73 = sub_240925464(v71, v72, &v78);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_2408FE000, v62, v63, "AISFlowStepChildAccountRepair familyRepair failed: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x245CCDDB0](v69, -1, -1);
    MEMORY[0x245CCDDB0](v68, -1, -1);

    (*(v66 + 8))(v77, v67);
  }

  else
  {

    (*(v66 + 8))(v65, v67);
  }

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_240A27F58()
{
  v1 = *(*v0 + 936);
  v2 = *(*v0 + 928);

  return MEMORY[0x2822009F8](sub_240A28060, v2, v1);
}

uint64_t sub_240A28060()
{
  v44 = v0;

  v1 = *(v0 + 816);
  sub_240A2AE9C();
  v2 = v1;
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C2CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_2408FE000, v3, v4, "AISFlowStepChildAccountRepair got circleController response %@", v5, 0xCu);
    sub_240919300(v6, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v6, -1, -1);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  v8 = *(v0 + 896);
  v9 = *(v0 + 880);
  v10 = *(v0 + 872);

  (*(v9 + 8))(v8, v10);
  if ([v2 loadSuccess])
  {
    v11 = [v2 userInfo];
    if (v11)
    {
      v12 = v11;
      v13 = sub_240A2BEBC();

      *(v0 + 784) = 0xD000000000000013;
      *(v0 + 792) = 0x8000000240A40910;
      sub_240A2C44C();
      if (*(v13 + 16))
      {
        v14 = sub_240925A94(v0 + 416);
        if (v15)
        {
          sub_240913DC0(*(v13 + 56) + 32 * v14, v0 + 520);
          sub_2409266D4(v0 + 416);

          if (*(v0 + 544))
          {
            sub_240A29348();
            if (swift_dynamicCast())
            {
              v16 = *(v0 + 824);
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_18;
          }

LABEL_17:
          sub_240919300(v0 + 520, &qword_27E50C6D0, &unk_240A33620);
          v16 = 0;
LABEL_18:
          v38 = *(v0 + 952);
          v39 = *(v0 + 944);
          sub_24097C6F0(v16, 0);

          __swift_destroy_boxed_opaque_existential_0((v0 + 456));
          goto LABEL_19;
        }
      }

      sub_2409266D4(v0 + 416);
    }

    *(v0 + 520) = 0u;
    *(v0 + 536) = 0u;
    goto LABEL_17;
  }

  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v19 = [v2 error];
  sub_240A28990();
  v20 = swift_allocError();
  *v21 = v19;
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v0 + 456));
  v22 = *(v0 + 840);
  v23 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  [*(v22 + v23) complete];
  v24 = v20;
  sub_24097C6F0(0, v20);

  sub_240A2AE9C();
  v25 = v20;
  v26 = sub_240A2AFFC();
  v27 = sub_240A2C2AC();

  v28 = os_log_type_enabled(v26, v27);
  v29 = *(v0 + 888);
  v30 = *(v0 + 880);
  v31 = *(v0 + 872);
  if (v28)
  {
    v42 = *(v0 + 888);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    *(v0 + 800) = v20;
    v34 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v35 = sub_240A2BF9C();
    v37 = sub_240925464(v35, v36, &v43);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_2408FE000, v26, v27, "AISFlowStepChildAccountRepair familyRepair failed: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x245CCDDB0](v33, -1, -1);
    MEMORY[0x245CCDDB0](v32, -1, -1);

    (*(v30 + 8))(v42, v31);
  }

  else
  {

    (*(v30 + 8))(v29, v31);
  }

LABEL_19:

  v40 = *(v0 + 8);

  return v40();
}

id sub_240A2858C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  [v2 setPresentationType_];
  v5[4] = sub_240A29394;
  v6 = v1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2409EC704;
  v5[3] = &block_descriptor_4;
  v3 = _Block_copy(v5);

  [v2 setPresentationHandler_];
  _Block_release(v3);
  return v2;
}

uint64_t sub_240A28684()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask;
  swift_beginAccess();
  [*(v0 + v5) complete];
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISFlowStepFamilyPicker familyCirclePresentationHandler", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_240A287F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2409252E8;

  return sub_240A272C4(a1);
}

unint64_t AISFlowStepChildAccountRepairError.description.getter()
{
  v1 = 0xD00000000000002FLL;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_240A2C47C();
    MEMORY[0x245CCCD90](0xD000000000000031, 0x8000000240A408A0);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI34AISFlowStepChildAccountRepairErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_240A28990()
{
  result = qword_27E50F5C8;
  if (!qword_27E50F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50F5C8);
  }

  return result;
}

double sub_240A289E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_240925A1C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2409389C0();
      v10 = v12;
    }

    sub_24091C780((*(v10 + 56) + 32 * v8), a3);
    sub_240A28B2C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_240A28A88@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_240925A94(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_240939028();
      v9 = v11;
    }

    sub_2409266D4(*(v9 + 48) + 40 * v7);
    sub_24091C780((*(v9 + 56) + 32 * v7), a2);
    sub_240A2918C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_240A28B2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_240A2C41C() + 1) & ~v5;
    do
    {
      sub_240A2C72C();

      sub_240A2C09C();
      v10 = sub_240A2C74C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_240A28CDC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_240A2C41C() + 1) & ~v5;
    do
    {
      sub_240A2C72C();

      sub_240A2C09C();
      v9 = sub_240A2C74C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_240A28E8C(int64_t a1, uint64_t a2)
{
  v4 = sub_240A299DC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_240A2C41C();
    v14 = v12;
    v41 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v42 = *(v15 + 56);
    v39 = (v15 - 8);
    v40 = v16;
    do
    {
      v17 = v9;
      v18 = v42 * v11;
      v19 = v14;
      v20 = v15;
      v40(v8, *(a2 + 48) + v42 * v11, v4);
      sub_240A293B0();
      v21 = sub_240A2BEEC();
      result = (*v39)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v41)
      {
        if (v22 >= v41 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v42 * a1;
          v27 = v25 + v18 + v42;
          v28 = v42 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v42 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(sub_240A2995C() - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v11;
          v33 = v29 + v30 * v11 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v17;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v35 = v31 == v32;
            v9 = v17;
            v14 = v19;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v41 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_240A2918C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_240A2C41C() + 1) & ~v5;
    do
    {
      sub_24092702C(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_240A2C42C();
      result = sub_2409266D4(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_240A29348()
{
  result = qword_27E50F5D0;
  if (!qword_27E50F5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50F5D0);
  }

  return result;
}

unint64_t sub_240A293B0()
{
  result = qword_27E50BAC0;
  if (!qword_27E50BAC0)
  {
    sub_240A299DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BAC0);
  }

  return result;
}