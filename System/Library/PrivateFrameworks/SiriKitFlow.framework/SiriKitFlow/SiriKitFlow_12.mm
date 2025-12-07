uint64_t sub_1DCC43838()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCC43944;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2670, &qword_1DD0E5F80);
  OUTLINED_FUNCTION_5_18(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1DCC43AD8;
  v0[13] = &block_descriptor_5;
  v0[14] = v3;
  [v1 retrieveActionForLocalizedPhrase:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCC43944()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1DCC43A70;
  }

  else
  {
    v5 = sub_1DCC43A48;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC43A70()
{
  OUTLINED_FUNCTION_39();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1DCC43AD8(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1DCEA2438();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1DCEA243C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a5;
  v7[24] = a6;
  v7[21] = a3;
  v7[22] = a4;
  v7[19] = a1;
  v7[20] = a2;
  v7[25] = *v6;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC43B8C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[24];
  v2 = sub_1DD0DDF8C();
  v0[26] = v2;
  v3 = sub_1DD0DDF8C();
  v0[27] = v3;
  if (v1)
  {
    v4 = sub_1DD0DDF8C();
  }

  else
  {
    v4 = 0;
  }

  v0[28] = v4;
  v5 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DCC43D04;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2670, &qword_1DD0E5F80);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCC43AD8;
  v0[13] = &block_descriptor_9;
  v0[14] = v6;
  [v5 retrieveActionForBundleIdentifier:v2 appShortcutIdentifier:v3 parameterIdentifier:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCC43D04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_1DCC43E80;
  }

  else
  {
    v5 = sub_1DCC43E08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC43E08()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = *(v0 + 144);

  OUTLINED_FUNCTION_69();

  return v4(v3);
}

uint64_t sub_1DCC43E80()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t AppShortcutProvider.areAppShortcutsEnabled(for:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  *(v1 + 16) = *v0;
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_31_0(v6);

  return AppShortcutProvider.areAppShortcutsEnabled(bundleId:)(v5, v3);
}

uint64_t sub_1DCC43FA4()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_69();

  return v3(v4 & 1);
}

uint64_t AppShortcutProvider.areAppShortcutsEnabled(bundleId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC440B4()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1DCC441A8;

  return MEMORY[0x1EEE6DE38](v0 + 11);
}

uint64_t sub_1DCC441A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_1DCC442D4;
  }

  else
  {

    v7 = sub_1DCC442B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCC442D4()
{
  OUTLINED_FUNCTION_41();
  v18 = v0;

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[10];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);

  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1DCB10E9C(v9, v8, &v17);
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Could not determine if App Shortcuts for %s are enabled %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_69();

  return v15(2);
}

void sub_1DCC444CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - v7;
  v9 = [objc_opt_self() standardClient];
  v10 = sub_1DD0DDF8C();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_1DCC452AC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DCC44744;
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);

  [v9 getSiriAutoShortcutsEnablementForBundleIdentifier:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1DCC446C0(char a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCC447C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC3C670;

  return AppShortcutProvider.appShortcuts(forBundleIdentifier:localeIdentifier:)(a1, a2, a3, a4);
}

uint64_t sub_1DCC4487C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCC453B0;

  return AppShortcutProvider.retrieveAction(for:)(a1);
}

uint64_t sub_1DCC44910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCC453B0;

  return AppShortcutProvider.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC449E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCC44A88;

  return AppShortcutProvider.areAppShortcutsEnabled(for:)();
}

uint64_t sub_1DCC44A88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_27();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_129();

  return v4(v3);
}

uint64_t sub_1DCC44B68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCC44A88;

  return AppShortcutProvider.areAppShortcutsEnabled(bundleId:)(a1, a2);
}

uint64_t dispatch thunk of AppShortcutProviding.appShortcuts(forBundleIdentifier:localeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_8();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_30_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_31_0(v14);

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AppShortcutProviding.retrieveAction(for:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v10 = (*(v0 + 24) + **(v0 + 24));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_30_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_31_0(v7);

  return v10(v5, v3, v1);
}

uint64_t dispatch thunk of AppShortcutProviding.retrieveAction(bundleIdentifier:appShortcutIdentifier:parameterIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_30_1(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_31_0(v18);

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of AppShortcutProviding.areAppShortcutsEnabled(for:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of AppShortcutProviding.areAppShortcutsEnabled(bundleId:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_56_0(v0, v1, v2, v3);
  OUTLINED_FUNCTION_8();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_30_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_10_6(v5);

  return v8(v7);
}

void **assignWithCopy for AppShortcutProvider(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for AppShortcutProvider(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppShortcutProvider(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppShortcutProvider(uint64_t result, int a2, int a3)
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

uint64_t sub_1DCC452AC(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2678, &qword_1DD0E6048);

  return sub_1DCC446C0(a1, a2);
}

void block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_1DD0DCF8C();
}

unint64_t sub_1DCC45350()
{
  result = qword_1ECCA2680;
  if (!qword_1ECCA2680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCA2680);
  }

  return result;
}

void sub_1DCC453D0()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC4551C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v7 = sub_1DCC1F690;
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v7 = sub_1DCC4566C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCC4566C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v3 = v0[10];
  v2 = v0[11];

  return v1(v2, v3);
}

void sub_1DCC456D4()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC458F4(__int128 *a1)
{
  swift_beginAccess();
  sub_1DCC46E98(a1, v1 + 16);
  swift_endAccess();
  sub_1DCC456D4();
}

double AsyncConstructingFlow.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 56) = a1;
  *(v4 + 64) = a2;
  result = 0.0;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  return result;
}

uint64_t AsyncConstructingFlow.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t sub_1DCC459B4()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_151();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_1DD0DF2AC();
    v7 = sub_1DCB10E9C(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "%s - the synchronous version of on was called. Unexpected since we implement onAsync.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

uint64_t sub_1DCC45AFC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC45B3C);
}

uint64_t sub_1DCC45B3C()
{
  v12 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[15] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = sub_1DD0DF2AC();
    v7 = sub_1DCB10E9C(v5, v6, &v11);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1DCB10E9C(0x28636E7973416E6FLL, 0xEF293A7475706E69, &v11);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v10 = (*(v0[13] + 56) + **(v0[13] + 56));
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1DCC45D84;

  return v10(v0 + 2);
}

uint64_t sub_1DCC45D84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCC45E70, 0, 0);
}

uint64_t sub_1DCC45FB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  *(v1 + 144) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1DCC460AC, 0, 0);
}

uint64_t sub_1DCC460AC(uint64_t a1)
{
  v15 = v2;
  if ((*(v2 + 144) & 1) == 0)
  {
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_23(v4))
    {
      OUTLINED_FUNCTION_151();
      v5 = OUTLINED_FUNCTION_10_0();
      v14 = v5;
      v6 = OUTLINED_FUNCTION_8_17(4.8149e-34);
      v8 = sub_1DCB10E9C(v6, v7, &v14);

      *(v1 + 4) = v8;
      OUTLINED_FUNCTION_4_15(&dword_1DCAFC000, v9, v10, "%s - Flow rejected initial input. Since this is the first Flow in the response this should not happen.");
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
  v11 = *(v2 + 8);
  v12 = *(v2 + 144);

  return v11(v12);
}

uint64_t sub_1DCC461B4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC461F4);
}

uint64_t sub_1DCC461F4()
{
  v32 = v1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v0 = swift_slowAlloc();
    *&v29 = swift_slowAlloc();
    *v0 = 136315394;
    v5 = sub_1DD0DF2AC();
    v7 = sub_1DCB10E9C(v5, v6, &v29);

    *(v0 + 4) = v7;
    *(v0 + 12) = 2080;
    *(v0 + 14) = sub_1DCB10E9C(0x2865747563657865, 0xE900000000000029, &v29);
    _os_log_impl(&dword_1DCAFC000, v3, v4, "%s.%s", v0, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  v8 = v1[16];
  swift_beginAccess();
  sub_1DCC46884(v8 + 16, (v1 + 7));
  v9 = (v1 + 7);
  if (v1[10] >= 2uLL)
  {
    sub_1DCB18FF0(v9, (v1 + 2));
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v20))
    {
      OUTLINED_FUNCTION_151();
      v21 = OUTLINED_FUNCTION_10_0();
      *&v29 = v21;
      v22 = OUTLINED_FUNCTION_8_17(4.8149e-34);
      v24 = sub_1DCB10E9C(v22, v23, &v29);

      *(v0 + 4) = v24;
      OUTLINED_FUNCTION_4_15(&dword_1DCAFC000, v25, v26, "%s completing and pushing constructed flow");
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    v29 = 0uLL;
    v30 = 0;
    v31 = xmmword_1DD0E5100;
    sub_1DCC458F4(&v29);
  }

  sub_1DCC468BC(v9);
  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v11))
  {
    OUTLINED_FUNCTION_151();
    v12 = OUTLINED_FUNCTION_10_0();
    *&v29 = v12;
    v13 = OUTLINED_FUNCTION_8_17(4.8149e-34);
    v15 = sub_1DCB10E9C(v13, v14, &v29);

    *(v0 + 4) = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  v18.n128_f64[0] = static ExecuteResponse.complete()();
  v27 = v1[1];

  return v27(v18);
}

uint64_t sub_1DCC4651C()
{
  sub_1DCC46884(v0, v2);
  if (!v3)
  {
    return 0x6E6974696177612ELL;
  }

  if (v3 == 1)
  {
    return 0x74656C706D6F632ELL;
  }

  sub_1DCC468BC(v2);
  return 0x657243776F6C662ELL;
}

uint64_t AsyncConstructingFlow.deinit()
{
  sub_1DCC468BC((v0 + 16));

  return v0;
}

uint64_t AsyncConstructingFlow.__deallocating_deinit()
{
  sub_1DCC468BC((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC4664C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCF434;

  return sub_1DCC45AFC(a1);
}

uint64_t sub_1DCC46708()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1DCC467A0;

  return sub_1DCC461B4(v2);
}

uint64_t sub_1DCC467A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t dispatch thunk of AsyncConstructingFlow.onAsync(input:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCBCF434;

  return v6(a1);
}

uint64_t dispatch thunk of AsyncConstructingFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCC467A0;

  return v6(a1);
}

void *destroy for AsyncConstructingFlow.State(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t initializeWithCopy for AsyncConstructingFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3 < 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    (**(v3 - 8))(a1);
  }

  return a1;
}

uint64_t assignWithCopy for AsyncConstructingFlow.State(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for AsyncConstructingFlow.State(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncConstructingFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AsyncConstructingFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DCC46E44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_1DCC46E5C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t Result<>.init(catching:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DF22C();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1DCC47058;

  return v10(v7);
}

uint64_t sub_1DCC47058()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 56) = v0;

  if (v0)
  {
    v5 = sub_1DCC471F8;
  }

  else
  {
    v5 = sub_1DCC47160;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DCC47160()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCC471F8()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCC47264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v16 - v12;
  v14 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC4737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a6 + *a6);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_1DCC474D4;

  return v13(v10);
}

uint64_t sub_1DCC474D4()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCC475C4, 0, 0);
}

uint64_t sub_1DCC475C4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCC47658(uint64_t a1)
{
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
  v11[1] = sub_1DCB22EC8;

  return sub_1DCC4737C(a1, v4, v5, v7, v8, v9, v10, v6);
}

void sub_1DCC47734()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

uint64_t static AudioOutputContext.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECCA1228 != -1)
  {
    swift_once();
  }

  return sub_1DCB17CA0(&qword_1ECCD2588, a1);
}

uint64_t AudioOutputContextRouteFailure.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC4791C()
{
  result = qword_1ECCA2688;
  if (!qword_1ECCA2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2688);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioOutputContext(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AudioOutputContextRouteFailure(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCC47B0C(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v6 = OUTLINED_FUNCTION_2_28();
  v7(v6);
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v8 = OUTLINED_FUNCTION_2_28();
  v9(v8);
  if (v10)
  {

    __swift_project_boxed_opaque_existential_1(v25, v26);
    v11 = OUTLINED_FUNCTION_2_28();
    v13 = v12(v11);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      v17 = swift_allocObject();
      v17[2] = a1;
      v17[3] = a2;
      v17[4] = v3;
      v17[5] = v15;
      v17[6] = v16;
      sub_1DD0DCF8C();
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v18 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v18, qword_1EDE57E00);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1DCAFC000, v19, v20, "Device does not have an endpoint identifier and therefore not SE, hence returning nil", v21, 2u);
    OUTLINED_FUNCTION_80();
  }

  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  a1(v23);
  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

uint64_t sub_1DCC47CFC(uint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a3;
  v82 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2690, &qword_1DD0E6288);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v78 - v19;
  v21 = type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v80 = (&v78 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v78 - v31);
  v34 = MEMORY[0x1EEE9AC00](v30, v33);
  v36 = &v78 - v35;
  MEMORY[0x1EEE9AC00](v34, v37);
  v41 = (&v78 - v40);
  if (!a1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v46 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v46, qword_1EDE57E00);
    v47 = sub_1DD0DD8EC();
    v48 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1DCAFC000, v47, v48, "The device info list returned is nil indicating some failure in shared context retrieval, returning failure", v49, 2u);
      MEMORY[0x1E12A8390](v49, -1, -1);
    }

    v84 = 0uLL;
    goto LABEL_15;
  }

  v78 = v38;
  v79 = v39;
  sub_1DCC48A5C(a1, a5, a6, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1DCB16D50(v20, &qword_1ECCA2690, &qword_1DD0E6288);
    sub_1DCC48BC0(a1, v17);
    if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
    {
      sub_1DCB16D50(v17, &qword_1ECCA2690, &qword_1DD0E6288);
      sub_1DCC48F44(a1, v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v21) == 1)
      {
        sub_1DCB16D50(v13, &qword_1ECCA2690, &qword_1DD0E6288);
        if (qword_1EDE4F900 != -1)
        {
          swift_once();
        }

        v42 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v42, qword_1EDE57E00);
        v43 = sub_1DD0DD8EC();
        v44 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_1DCAFC000, v43, v44, "No suitable device for playback found, returning failure for no applicable device", v45, 2u);
          MEMORY[0x1E12A8390](v45, -1, -1);
        }

        v84 = xmmword_1DD0E5100;
LABEL_15:
        v85 = 1;
        return v82(&v84);
      }

      v41 = v80;
      sub_1DCC4983C(v13, v80);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v71 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v71, qword_1EDE57E00);
      v64 = v78;
      sub_1DCC4977C(v41, v78);
      v52 = sub_1DD0DD8EC();
      v53 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v83 = v55;
        *v54 = 136315138;
        v72 = v64[1];
        *&v84 = *v64;
        *(&v84 + 1) = v72;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
        v73 = sub_1DD0DE02C();
        v75 = v74;
        sub_1DCC497E0(v64);
        v76 = sub_1DCB10E9C(v73, v75, &v83);

        *(v54 + 4) = v76;
        v61 = "Found most recently playing device, returning following identifier: %s";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v41 = v36;
    sub_1DCC4983C(v17, v36);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v62 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v62, qword_1EDE57E00);
    v63 = v36;
    v64 = v79;
    sub_1DCC4977C(v63, v79);
    v52 = sub_1DD0DD8EC();
    v53 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v52, v53))
    {
LABEL_30:

      v70 = v64;
      goto LABEL_31;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83 = v55;
    *v54 = 136315138;
    v65 = v64[1];
    *&v84 = *v64;
    *(&v84 + 1) = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
    v66 = sub_1DD0DE02C();
    v68 = v67;
    sub_1DCC497E0(v64);
    v69 = sub_1DCB10E9C(v66, v68, &v83);

    *(v54 + 4) = v69;
    v61 = "Device found in immediate vicinity playing content, returning following identifier: %s";
  }

  else
  {
    sub_1DCC4983C(v20, v41);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v51 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v51, qword_1EDE57E00);
    sub_1DCC4977C(v41, v32);
    v52 = sub_1DD0DD8EC();
    v53 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v52, v53))
    {

      v70 = v32;
LABEL_31:
      sub_1DCC497E0(v70);
      goto LABEL_32;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v83 = v55;
    *v54 = 136315138;
    v56 = v32[1];
    *&v84 = *v32;
    *(&v84 + 1) = v56;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
    v57 = sub_1DD0DE02C();
    v59 = v58;
    sub_1DCC497E0(v32);
    v60 = sub_1DCB10E9C(v57, v59, &v83);

    *(v54 + 4) = v60;
    v61 = "Primary device playing content, returning following identifier: %s";
  }

LABEL_29:
  _os_log_impl(&dword_1DCAFC000, v52, v53, v61, v54, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  MEMORY[0x1E12A8390](v55, -1, -1);
  MEMORY[0x1E12A8390](v54, -1, -1);

LABEL_32:
  v77 = v41[1];
  *&v84 = *v41;
  *(&v84 + 1) = v77;
  v85 = 0;

  v82(&v84);
  sub_1DCC4998C(v84, *(&v84 + 1), v85);
  return sub_1DCC497E0(v41);
}

void sub_1DCC4852C(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = sub_1DD0DDFBC();
  *(inited + 40) = v6;
  sub_1DCB18D80(inited);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1DD0DCF8C();
}

void sub_1DCC48630(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v52 = (&v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    a2(0);
    return;
  }

  v48 = v13;
  v49 = v12;
  v47 = v9;
  v50 = a3;
  v51 = a2;
  v15 = sub_1DCB08B14(a1);
  v16 = 0;
  v55 = a1 & 0xC000000000000001;
  v53 = MEMORY[0x1E69E7CC0];
  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v15 == v16)
    {
      v51(v53);

      return;
    }

    if (v55)
    {
      v17 = MEMORY[0x1E12A72C0](v16, a1);
    }

    else
    {
      if (v16 >= *(v54 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(a1 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v20 = sub_1DCB1C328(v17);
    if (!v20)
    {
      goto LABEL_30;
    }

    v21 = v20;
    v22 = sub_1DD0DDFBC();
    if (!*(v21 + 16))
    {

      goto LABEL_13;
    }

    v24 = sub_1DCB21038(v22, v23);
    v26 = v25;

    if (v26)
    {
      sub_1DCB0DF6C(*(v21 + 56) + 32 * v24, v56);

      sub_1DCB20B30(v56, v57);
      sub_1DCB0DF6C(v57, v56);
      v27 = objc_allocWithZone(MEMORY[0x1E698D190]);
      v28 = sub_1DCB1C2BC(v56);
      if ([v18 proximity] == 4000 || objc_msgSend(v18, sel_proximity) == 3000)
      {
        v29 = sub_1DCC498A8(v18);
        v46 = v30;
        v45 = [v18 proximity];
        v31 = [v28 playbackState];
        v32 = [v28 nowPlayingTimestamp];
        if (v32)
        {
          v33 = v32;
          v34 = v47;
          sub_1DD0DAFAC();

          v35 = 0;
        }

        else
        {
          v35 = 1;
          v34 = v47;
        }

        v36 = sub_1DD0DAFDC();
        __swift_storeEnumTagSinglePayload(v34, v35, 1, v36);
        v37 = v52;
        v38 = v45;
        v39 = v46;
        *v52 = v29;
        v37[1] = v39;
        v37[2] = v38;
        *(v37 + 24) = 0;
        v37[4] = v31;
        *(v37 + 40) = 0;
        sub_1DCC4990C(v34, v37 + *(v49 + 28));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DCE193F4();
          v53 = v43;
        }

        v40 = *(v53 + 16);
        if (v40 >= *(v53 + 24) >> 1)
        {
          sub_1DCE193F4();
          v53 = v44;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        v41 = v52;
        v42 = v53;
        *(v53 + 16) = v40 + 1;
        sub_1DCC4983C(v41, v42 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40);
        v16 = v19;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v57);

        ++v16;
      }
    }

    else
    {
LABEL_13:

      ++v16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1DCC48A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  OUTLINED_FUNCTION_4_16();
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      sub_1DCC4977C(v14, v12);
      if ((v12[24] & 1) == 0 && *(v12 + 2) == 4000)
      {
        v16 = *(v12 + 1);
        if (v16)
        {
          v17 = *v12 == a2 && v16 == a3;
          if (v17 || (sub_1DD0DF0AC()) && (v12[40] & 1) == 0 && *(v12 + 4) == 1)
          {
            break;
          }
        }
      }

      sub_1DCC497E0(v12);
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    sub_1DCC4983C(v12, a4);
    v18 = 0;
  }

  else
  {
LABEL_14:
    v18 = 1;
  }

  return OUTLINED_FUNCTION_7_18(a4, v18);
}

uint64_t sub_1DCC48BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  OUTLINED_FUNCTION_4_16();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v49 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v21 = *(a1 + 16);
  if (!v21)
  {
    v27 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v27, 1, v18);
  }

  v49 = &v49 - v20;
  v50 = v18;
  v51 = a2;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v24 = *(v19 + 72);
  v25 = a1 + v22;
  v26 = v21;
  while (1)
  {
    sub_1DCC4977C(v25, v16);
    if ((v16[40] & 1) == 0 && *(v16 + 4) == 1)
    {
      break;
    }

    sub_1DCC497E0(v16);
    v25 += v24;
    if (!--v26)
    {
      v27 = 1;
      a2 = v51;
      goto LABEL_26;
    }
  }

  sub_1DCC4983C(v16, v49);
  v28 = 0;
  while (1)
  {
    sub_1DCC4977C(v23, v12);
    v29 = *(v12 + 4);
    v30 = v12[40];
    sub_1DCC497E0(v12);
    v31 = v30 | (v29 != 1);
    if ((v31 & 1) == 0)
    {
      break;
    }

    ++v28;
    v23 += v24;
    if (v21 == v28)
    {
      v28 = 0;
      break;
    }
  }

  v32 = v28 - v21;
  v33 = v21 - 1;
  v34 = a1 + v22 + v24 * (v21 - 1);
  v35 = -v24;
  do
  {
    if (v33 >= v21)
    {
      __break(1u);
      goto LABEL_29;
    }

    sub_1DCC4977C(v34, v8);
    v36 = *(v8 + 4);
    v37 = v8[40];
    sub_1DCC497E0(v8);
    LOBYTE(v23) = v37 | (v36 != 1);
    ++v32;
    if (v33-- == 0)
    {
      break;
    }

    v34 += v35;
  }

  while ((v23 & 1) != 0);
  if (qword_1EDE4F900 == -1)
  {
    goto LABEL_18;
  }

LABEL_29:
  OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
LABEL_18:
  v39 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v39, qword_1EDE57E00);
  v40 = sub_1DD0DD8EC();
  v41 = sub_1DD0DE6DC();
  v42 = os_log_type_enabled(v40, v41);
  a2 = v51;
  if (v42)
  {
    v43 = 0xD00000000000001DLL;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    if (v31)
    {
      if ((v23 & 1) == 0)
      {
LABEL_21:
        v46 = "sharedContextService";
        v43 = 0xD000000000000020;
LABEL_24:
        v47 = sub_1DCB10E9C(v43, v46 | 0x8000000000000000, &v52);

        *(v44 + 4) = v47;
        _os_log_impl(&dword_1DCAFC000, v40, v41, "%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
        goto LABEL_25;
      }
    }

    else if ((v32 != 0) | v23 & 1)
    {
      goto LABEL_21;
    }

    v46 = " devices playing";
    goto LABEL_24;
  }

LABEL_25:

  sub_1DCC4983C(v49, a2);
  v27 = 0;
LABEL_26:
  v18 = v50;
  return __swift_storeEnumTagSinglePayload(a2, v27, 1, v18);
}

uint64_t sub_1DCC48F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_1DD0DAFDC();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_44_0();
  v84 = v8;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v84 - v11;
  v12 = type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  OUTLINED_FUNCTION_44_0();
  v88 = v21;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v22, v23);
  v90 = &v84 - v24;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v25, v26);
  v93 = &v84 - v27;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v84 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2690, &qword_1DD0E6288);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  OUTLINED_FUNCTION_44_0();
  v85 = v34;
  OUTLINED_FUNCTION_29_0();
  v37 = MEMORY[0x1EEE9AC00](v35, v36);
  v39 = &v84 - v38;
  MEMORY[0x1EEE9AC00](v37, v40);
  v98 = &v84 - v41;
  OUTLINED_FUNCTION_7_18(&v84 - v41, 1);
  v99 = v31;
  v94 = v3;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v3);
  v42 = *(a1 + 16);
  if (v42)
  {
    v43 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v44 = *(v14 + 72);
    v87 = (v5 + 8);
    v45 = &qword_1ECCA9BA0;
    v96 = v12;
    v97 = v39;
    v91 = (v5 + 32);
    v92 = v44;
    while (1)
    {
      sub_1DCC4977C(v43, v18);
      if (*(v18 + 1))
      {
        break;
      }

      sub_1DCC497E0(v18);
LABEL_11:
      v43 += v44;
      if (!--v42)
      {
        goto LABEL_21;
      }
    }

    v46 = v45;
    sub_1DCB28B08(v98, v39, &qword_1ECCA2690, &qword_1DD0E6288);
    if (__swift_getEnumTagSinglePayload(v39, 1, v12) == 1)
    {
      v47 = v45;
      sub_1DCB16D50(v99, v45, &qword_1DD0E6280);
      OUTLINED_FUNCTION_6_13();
      sub_1DCB16D50(v48, v49, v50);
    }

    else
    {
      v51 = v91;
      OUTLINED_FUNCTION_6_13();
      sub_1DCB16D50(v52, v53, v54);
      v55 = v93;
      sub_1DCB28B08(v99, v93, v45, &qword_1DD0E6280);
      v56 = v94;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v94);
      v58 = v95;
      if (EnumTagSinglePayload != 1)
      {
        OUTLINED_FUNCTION_8_18(v55);
        v89 = *(v96 + 28);
        v63 = v90;
        OUTLINED_FUNCTION_6_13();
        sub_1DCB28B08(v64, v65, v66, &qword_1DD0E6280);
        if (__swift_getEnumTagSinglePayload(v63, 1, v56) == 1)
        {
          sub_1DCC497E0(v18);
          v67 = v63;
        }

        else
        {
          v68 = v63;
          v69 = *v51;
          (*v51)(v58, v68, v56);
          v70 = v88;
          sub_1DCB28B08(v99, v88, v46, &qword_1DD0E6280);
          if (__swift_getEnumTagSinglePayload(v70, 1, v56) != 1)
          {
            v71 = v84;
            v69(v84, v70, v56);
            v72 = sub_1DD0DAF7C();
            v73 = *v87;
            (*v87)(v71, v56);
            v73(v95, v56);
            v12 = v96;
            if (v72)
            {
              v74 = v99;
              sub_1DCB16D50(v99, v46, &qword_1DD0E6280);
              v75 = v98;
              sub_1DCB16D50(v98, &qword_1ECCA2690, &qword_1DD0E6288);
              sub_1DCC4977C(v18, v75);
              OUTLINED_FUNCTION_7_18(v75, 0);
              sub_1DCB28B08(&v18[v89], v74, v46, &qword_1DD0E6280);
            }

            sub_1DCC497E0(v18);
            v44 = v92;
            v45 = v46;
            goto LABEL_10;
          }

          (*v87)(v58, v56);
          sub_1DCC497E0(v18);
          v67 = v70;
          v45 = &qword_1ECCA9BA0;
        }

        OUTLINED_FUNCTION_8_18(v67);
        v12 = v96;
        v44 = v92;
LABEL_10:
        v39 = v97;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_8_18(v99);
      OUTLINED_FUNCTION_8_18(v55);
      v12 = v96;
      v44 = v92;
      v47 = v45;
    }

    v59 = v98;
    OUTLINED_FUNCTION_6_13();
    sub_1DCB16D50(v60, v61, v62);
    sub_1DCC4977C(v18, v59);
    OUTLINED_FUNCTION_7_18(v59, 0);
    sub_1DCB28B08(&v18[*(v12 + 28)], v99, v47, &qword_1DD0E6280);
    sub_1DCC497E0(v18);
    v45 = v47;
    goto LABEL_10;
  }

LABEL_21:
  v76 = v98;
  v77 = v85;
  sub_1DCB28B08(v98, v85, &qword_1ECCA2690, &qword_1DD0E6288);
  v78 = __swift_getEnumTagSinglePayload(v77, 1, v12);
  sub_1DCB16D50(v77, &qword_1ECCA2690, &qword_1DD0E6288);
  if (v78 != 1 && !__swift_getEnumTagSinglePayload(v76, 1, v12) && (*(v76 + 24) & 1) == 0 && *(v76 + 16) == 4000)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v79 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v79, qword_1EDE57E00);
    v80 = sub_1DD0DD8EC();
    v81 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1DCAFC000, v80, v81, "Primary requesting device was most recently playing", v82, 2u);
      OUTLINED_FUNCTION_80();
    }
  }

  sub_1DCB16D50(v99, &qword_1ECCA9BA0, &qword_1DD0E6280);
  sub_1DCB28B08(v76, v86, &qword_1ECCA2690, &qword_1DD0E6288);
  return sub_1DCB16D50(v76, &qword_1ECCA2690, &qword_1DD0E6288);
}

uint64_t sub_1DCC496A8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioOutputContextHelper.DeviceInfo(uint64_t a1)
{
  result = qword_1ECCA2698;
  if (!qword_1ECCA2698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCC4977C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC497E0(uint64_t a1)
{
  v2 = type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCC4983C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioOutputContextHelper.DeviceInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC498A8(void *a1)
{
  v1 = [a1 mediaRouteIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

uint64_t sub_1DCC4990C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4998C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

char *sub_1DCC4999C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 28);
  v7 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v6), a2 + v6, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
    __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t sub_1DCC49AF4(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 28);
  v5 = sub_1DD0DAFDC();
  result = __swift_getEnumTagSinglePayload(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(*(v5 - 8) + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

uint64_t sub_1DCC49B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 28);
  v7 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v6), (a2 + v6), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 16))(a1 + v6, a2 + v6, v7);
    __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v7);
  }

  return a1;
}

uint64_t sub_1DCC49CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v7;
  v8 = *(a3 + 28);
  v9 = sub_1DD0DAFDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v8, 1, v9);
  v11 = __swift_getEnumTagSinglePayload(a2 + v8, 1, v9);
  if (!EnumTagSinglePayload)
  {
    v12 = *(v9 - 8);
    if (!v11)
    {
      (*(v12 + 24))(a1 + v8, a2 + v8, v9);
      return a1;
    }

    (*(v12 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v8), (a2 + v8), *(*(v13 - 8) + 64));
    return a1;
  }

  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  __swift_storeEnumTagSinglePayload(a1 + v8, 0, 1, v9);
  return a1;
}

uint64_t sub_1DCC49E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a3 + 28);
  v6 = sub_1DD0DAFDC();
  if (__swift_getEnumTagSinglePayload(a2 + v5, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v5), (a2 + v5), *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
    __swift_storeEnumTagSinglePayload(a1 + v5, 0, 1, v6);
  }

  return a1;
}

uint64_t sub_1DCC49F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a3 + 28);
  v8 = sub_1DD0DAFDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v7, 1, v8);
  v10 = __swift_getEnumTagSinglePayload(a2 + v7, 1, v8);
  if (!EnumTagSinglePayload)
  {
    v11 = *(v8 - 8);
    if (!v10)
    {
      (*(v11 + 40))(a1 + v7, a2 + v7, v8);
      return a1;
    }

    (*(v11 + 8))(a1 + v7, v8);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v7), (a2 + v7), *(*(v12 - 8) + 64));
    return a1;
  }

  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  __swift_storeEnumTagSinglePayload(a1 + v7, 0, 1, v8);
  return a1;
}

void sub_1DCC4A0F0(uint64_t a1)
{
  sub_1DCC4A194(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1DCC4A194(uint64_t a1)
{
  if (!qword_1EDE4D678)
  {
    sub_1DD0DAFDC();
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE4D678);
    }
  }
}

uint64_t static AuthenticationRequirements.== infix(_:_:)(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DCC4A238(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      if (a2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (a2 == 0x8000000000000000)
    {
      return 1;
    }
  }

  else if (!(a2 >> 62))
  {
    return 1;
  }

  return 0;
}

uint64_t AuthenticationRequirements.description.getter()
{
  OUTLINED_FUNCTION_8_19();
  if (v0 != 1)
  {
    v2 |= 9uLL;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DCC4A2FC()
{
  OUTLINED_FUNCTION_8_19();
  if (v0 != 1)
  {
    v2 |= 9uLL;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t static CommonAuthenticationRequirementHelper.authenticateOrHandoff(deviceState:outputPublisher:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X8>)
{
  if (a3())
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    if ((*(v8 + 8))(v7, v8) & 1) != 0 || (v9 = a1[3], v10 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v9), ((*(v10 + 16))(v9, v10)))
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v11 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v11, qword_1EDE57E00);
      v12 = sub_1DD0DD8EC();
      v13 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1DCAFC000, v12, v13, "CommonAuthenticationRequirementHelper cannot request device unlock. Initiating Handoff", v14, 2u);
        OUTLINED_FUNCTION_80();
      }

      type metadata accessor for SimpleHandoffSessionToCompanionFlowHelper.SimpleHandoffSessionToCompanionFlowStrategyAsync();
      v15 = swift_allocObject();
      sub_1DCB17CA0(a1, &v29);
      sub_1DCB17CA0(a2, v28);
      type metadata accessor for HandoffSessionToCompanionFlowAsync();
      swift_allocObject();
      v16 = sub_1DCC4AF54(v15, &v29, v28, &unk_1DD0E6460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
      swift_allocObject();
      sub_1DCB80900(v16, sub_1DCBD27A8, sub_1DCC4BC10, &qword_1ECCA1DC8, &qword_1DD0E21E0);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v26, v27, "CommonAuthenticationRequirementHelper requires that the device is authenticated. Building guard flow with .ensuringDeviceIsAuthenticated guard.");
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for GuardFlow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26A8, &unk_1DD0E62D0);
    *(swift_initStackObject() + 16) = xmmword_1DD0E07C0;
    v29 = 6;
    v31 = &type metadata for FeatureFlagDefinitions.Core;
    v32 = &off_1F585CB38;
    v30 = 0;
    static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)(&v29);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v18, v19))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v20, v21, "CommonAuthenticationRequirementHelper no authentication required based on provided decision maker.");
    OUTLINED_FUNCTION_80();
  }

  result = 0x8000000000000000;
  *a4 = 0x8000000000000000;
  return result;
}

uint64_t sub_1DCC4A744@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = sub_1DCC4B830(v1 + 24, &v7);
  if (v10 != 1)
  {
    sub_1DCC4B8A0(&v7);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v6 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v6, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v4 = v8;
  v5 = v9;
  *a1 = v7;
  *(a1 + 8) = v4;
  *(a1 + 9) = v5;
  return result;
}

id sub_1DCC4ACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  v3 = *(a1 + 24);
  *(a2 + 8) = v3;
  v4 = *(a1 + 25);
  *(a2 + 9) = v4;
  return sub_1DCBF9BE8(v2, v3, v4);
}

unint64_t sub_1DCC4AD58@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
  return sub_1DCBF4C98(v3, v2);
}

void *sub_1DCC4AD68(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  sub_1DCB8D4CC(v2, *(a1 + 24));
  return v2;
}

uint64_t sub_1DCC4AE60()
{
  sub_1DCFE7148(v2);
  v0 = v2[0];

  return v0;
}

void *sub_1DCC4AEA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DCB8D4CC(v1, *(a1 + 24));
  return v1;
}

uint64_t sub_1DCC4AF54(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  type metadata accessor for AnyHandoffSessionToCompanionFlowStrategyAsync();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v4 + 32) = v9;
  sub_1DCB17CA0(a2, v4 + 40);
  sub_1DCB17CA0(a3, v4 + 80);
  sub_1DCC4B974();
  v10 = swift_allocError();
  *v11 = 1;
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v4 + 16) = v10;
  *(v4 + 24) = 1;
  return v4;
}

uint64_t sub_1DCC4B008(uint64_t a1)
{
  *(v1 + 16) = &unk_1DD0E6440;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_1DCC4B024(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return sub_1DCD80FD8(a1);
}

uint64_t sub_1DCC4B0D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return sub_1DCD854B8(a1);
}

uint64_t sub_1DCC4B16C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return SimpleHandoffSessionToCompanionFlowHelper.PeerToPeerHandoffToCompanionFlowStrategyAsync.makeHandoffResponse()(a1);
}

_BYTE *storeEnumTagSinglePayload for CommonAuthenticationRequirementHelper(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1DCC4B354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DCC4B3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1DCC4B3F8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC4B42C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCC4AD04(*a1);
  *a2 = result & 1;
  return result;
}

void *sub_1DCC4B45C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1DCC4AD30();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1DCC4B4B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return sub_1DCC4B024(a1);
}

void *sub_1DCC4B554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCC4AD68(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

BOOL sub_1DCC4B588@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC4ADC0();
  *a1 = result;
  return result;
}

BOOL sub_1DCC4B5B8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC4ADE8();
  *a1 = result;
  return result;
}

BOOL sub_1DCC4B5E8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC4AE10();
  *a1 = result;
  return result;
}

BOOL sub_1DCC4B618@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC4AE38();
  *a1 = result;
  return result;
}

uint64_t sub_1DCC4B648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCC4AE60();
  *a1 = result & 1;
  return result;
}

void *sub_1DCC4B678@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCC4AEA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCC4B6E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4A548;

  return sub_1DCC4B0D0(a1);
}

uint64_t sub_1DCC4B780(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCC4B16C(a1);
}

uint64_t sub_1DCC4B830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F60, &unk_1DD0E5250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4B8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F60, &unk_1DD0E5250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DCC4B908()
{
  result = qword_1ECCA26C0;
  if (!qword_1ECCA26C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA26B8, &unk_1DD0E6410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA26C0);
  }

  return result;
}

unint64_t sub_1DCC4B974()
{
  result = qword_1ECCA26C8;
  if (!qword_1ECCA26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA26C8);
  }

  return result;
}

uint64_t sub_1DCC4B9C8()
{
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCC4BA5C()
{
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCC4BC34()
{
  OUTLINED_FUNCTION_25_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_34_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_2(v1);

  return v4(v3);
}

uint64_t sub_1DCC4BCF4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4BD18, 0, 0);
}

uint64_t sub_1DCC4BD18()
{
  v41 = v0;
  v1 = v0[21];
  type metadata accessor for ParameterWrapper();
  inited = swift_initStackObject();
  v0[23] = inited;
  *(inited + 16) = v1;

  v3 = sub_1DCD149A8(0);
  v0[24] = v4;
  v5 = v3;
  v6 = v4;
  v7 = sub_1DCD14BB4(*(v0[22] + 88));
  v0[25] = v7;
  v8 = v7;
  v9 = sub_1DCC69D70();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v13 = v0[22];
    v11 = *(v13 + 96);
    v12 = *(v13 + 104);
  }

  v0[26] = v12;
  v14 = qword_1EDE4F900;

  v15 = v8;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1EDE57E00);

  v17 = v15;
  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6CC();

  if (os_log_type_enabled(v18, v19))
  {
    v37 = v19;
    v38 = v11;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v20 = 136315394;
    v21 = sub_1DCD43E34(v17);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v25 = [v17 bundlePath];
      v23 = sub_1DD0DDFBC();
      v24 = v26;
    }

    v27 = sub_1DCB10E9C(v23, v24, v40);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = sub_1DCB10E9C(v5, v6, v40);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_1DCAFC000, v18, v37, "Pushing child authored flow for bundle: %s flowId: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v36, -1, -1);
    MEMORY[0x1E12A8390](v20, -1, -1);

    v11 = v38;
  }

  else
  {
  }

  v29 = v0[22];
  if (v12)
  {
    v30 = v11;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29[7];
  v32 = v29[8];
  __swift_project_boxed_opaque_existential_1(v29 + 4, v31);
  v0[7] = v5;
  v0[8] = v6;
  v0[9] = v17;
  v0[10] = v30;
  v0[11] = v12;
  v39 = (*(v32 + 40) + **(v32 + 40));
  v33 = swift_task_alloc();
  v0[27] = v33;
  *v33 = v0;
  v33[1] = sub_1DCC4C15C;
  v34 = v0[22];

  return v39(v0 + 2, v0 + 7, &unk_1DD0E64E0, v34, v31, v32);
}

uint64_t sub_1DCC4C15C()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCC4C24C, 0, 0);
}

uint64_t sub_1DCC4C24C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v8 = *(v0 + 40);
  v3 = *(v0 + 40);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 120) = v8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 96));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v3);

  swift_setDeallocating();

  sub_1DCB17CA0(v0 + 96, v2);
  *(v2 + 40) = 1;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC4C370(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4C390, 0, 0);
}

uint64_t sub_1DCC4C390()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC4C5E4(*(v0 + 24) + 112, *(v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC4C3EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  sub_1DCC4C654(v0 + 112);
  return v0;
}

uint64_t sub_1DCC4C448()
{
  sub_1DCC4C3EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC4C4A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB22EC8;

  return sub_1DCC4BCF4(a1, a2);
}

uint64_t sub_1DCC4C54C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DCB22EC8;

  return sub_1DCC4C370(v3, v0);
}

uint64_t sub_1DCC4C5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26D0, &qword_1DD0E6540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC4C654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26D0, &qword_1DD0E6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AuthoredFlowDescriptor.init(flowId:bundle:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void *)@<X3>, void *a5@<X8>)
{
  a5[3] = 0;
  a5[4] = 0;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v7 = a3;
  a4(a5);
}

uint64_t AuthoredFlowExtensions.userInputParsers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AuthoredFlowExtensions.nlRepresentationProducers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AuthoredFlowExtensions.behaviorResponseHandlers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AuthoredFlowExtensions.init(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v4;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  return a1();
}

uint64_t AuthoredFlowDescriptor.templateDir.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

unint64_t AuthoredFlowDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[4];
  if (v4)
  {
    v5 = v0[3];
    v11 = 0;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000018, 0x80000001DD115610);
    MEMORY[0x1E12A6780](v1, v2);
    MEMORY[0x1E12A6780](0x616C706D65742027, 0xEF273D7269446574);
    MEMORY[0x1E12A6780](v5, v4);
  }

  else
  {
    sub_1DD0DEC1C();

    v11 = 0xD000000000000018;
    MEMORY[0x1E12A6780](v1, v2);
  }

  OUTLINED_FUNCTION_57_3();
  v6 = [v3 description];
  v7 = sub_1DD0DDFBC();
  v9 = v8;

  MEMORY[0x1E12A6780](v7, v9);

  MEMORY[0x1E12A6780](39, 0xE100000000000000);
  return v11;
}

BOOL sub_1DCC4CBC8(SiriKitFlow::AuthoredFlowDescriptor *a1)
{
  v1 = AuthoredFlowFactory.authoredFlowPath(flowDescriptor:)(a1);
  if (!v1.value._object)
  {
    return 0;
  }

  v2 = (v1.value._object >> 56) & 0xF;
  if ((v1.value._object & 0x2000000000000000) == 0)
  {
    v2 = v1.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

Swift::Bool __swiftcall AuthoredFlowProviding.authoredFlowIsPresent(flowDescriptor:)(SiriKitFlow::AuthoredFlowDescriptor *flowDescriptor)
{
  countAndFlagsBits = flowDescriptor->flowId._countAndFlagsBits;
  templateDir = flowDescriptor->templateDir;
  v10 = *&flowDescriptor->flowId._object;
  v11 = templateDir;
  v3 = (*(v1 + 8))(&countAndFlagsBits);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

uint64_t sub_1DCC4CCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:)(a1, a2, a3, a4);
}

uint64_t sub_1DCC4CD60(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4CD84, 0, 0);
}

uint64_t sub_1DCC4CD84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_8();
  *(v0 + 80) = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  v1[1] = sub_1DCC4CE48;
  v3 = OUTLINED_FUNCTION_45_5();

  return v5(v3);
}

uint64_t sub_1DCC4CE48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  *(v5 + 88) = *a2;
  v6 = *(a2 + 24);
  *(v5 + 96) = *(a2 + 8);
  *(v5 + 112) = v6;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC4CF70()
{
  *(v0 + 16) = *(v0 + 88);
  v1 = *(v0 + 112);
  *(v0 + 24) = *(v0 + 96);
  *(v0 + 40) = v1;
  v2 = sub_1DD0DDE9C();
  *(v0 + 128) = v2;
  OUTLINED_FUNCTION_24_0();
  v10 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 136) = v4;
  *v4 = v5;
  v4[1] = sub_1DCC4D0EC;
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);

  return (v10)(v7, v0 + 16, v2, &unk_1DD0E6508, 0, v8, v6);
}

uint64_t sub_1DCC4D0EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC4D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1DCB4AE1C;

  return AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:)();
}

uint64_t sub_1DCC4D2B0(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = *a2;
  v8 = a2[1];
  *(v4 + 48) = *(a2 + 4);
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_1DCC516C0;

  return sub_1DCC4F85C(a1, v4 + 16, a3, v3);
}

uint64_t AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 16) = *v9;
  *(v0 + 24) = *(v9 + 8);
  *(v0 + 40) = *(v9 + 24);
  OUTLINED_FUNCTION_24_0();
  v14 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 56) = v11;
  *v11 = v12;
  v11[1] = sub_1DCC516C0;

  return (v14)(v8, v0 + 16, v6, &unk_1DD0E6518, 0, v4, v2);
}

uint64_t sub_1DCC4D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCC4D5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC4D5EC, 0, 0);
}

uint64_t sub_1DCC4D5EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_8();
  *(v0 + 96) = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_54_2();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1DCC4D6B4;
  v3 = OUTLINED_FUNCTION_45_5();

  return v5(v3);
}

uint64_t sub_1DCC4D6B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 56) = a1;
  *(v7 + 64) = a3;
  *(v7 + 104) = *a2;
  v8 = *(a2 + 24);
  *(v7 + 112) = *(a2 + 8);
  *(v7 + 128) = v8;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCC4D7E0()
{
  OUTLINED_FUNCTION_41();
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 128);
  *(v0 + 24) = *(v0 + 112);
  *(v0 + 40) = v1;
  v11 = *(v0 + 64);
  v2 = sub_1DD0DDE9C();
  *(v0 + 144) = v2;
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v11;
  OUTLINED_FUNCTION_24_0();
  v12 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 160) = v5;
  *v5 = v6;
  v5[1] = sub_1DCC4D984;
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v9 = *(v0 + 56);

  return v12(v9, v0 + 16, v2, &unk_1DD0E6530, v3, v8, v7);
}

uint64_t sub_1DCC4D984()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC4DADC()
{
  v1 = *(v0 + 16);
  *(v1 + 96) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  OUTLINED_FUNCTION_29();
  return v2();
}

uint64_t sub_1DCC4DB14(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AE1C;

  return v6(a1);
}

uint64_t sub_1DCC4DC0C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCC4DB14(a1, v3);
}

uint64_t sub_1DCC4DCB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2700, &unk_1DD0E6730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E32B0;
  v1 = type metadata accessor for AppIntentBehaviorResponseHandler();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x6E65746E49707061;
  *(v2 + 24) = 0xE900000000000074;
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1F5853B88;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for DirectInvocationBehaviorResponseHandler();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000010;
  *(result + 24) = 0x80000001DD110040;
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_1F585B750;
  *(v0 + 72) = result;
  qword_1ECCD25B0 = v0;
  return result;
}

void *sub_1DCC4DD8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26F8, &qword_1DD0E6728);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E4000;
  v1 = type metadata accessor for CATIUserInputParser();
  v2 = swift_allocObject();
  *(v2 + 16) = 1769234787;
  *(v2 + 24) = 0xE400000000000000;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1F58561F0;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for DirectInvocationUserInputParser();
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000010;
  *(v4 + 24) = 0x80000001DD110040;
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_1F585B808;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for UsoLiteralUserInputParser();
  v6 = swift_allocObject();
  *(v6 + 16) = 0x726574694C6F7375;
  *(v6 + 24) = 0xEA00000000006C61;
  *(v0 + 136) = v5;
  *(v0 + 144) = &off_1F587BA78;
  *(v0 + 112) = v6;
  sub_1DCC516B8(v10);
  v7 = type metadata accessor for UsoMatchingUserInputParser();
  v8 = swift_allocObject();
  v8[2] = 0x686374614D6F7375;
  v8[3] = 0xEA00000000007265;
  result = memcpy(v8 + 4, v10, 0xB0uLL);
  *(v0 + 176) = v7;
  *(v0 + 184) = &off_1F587BAD0;
  *(v0 + 152) = v8;
  qword_1ECCD25B8 = v0;
  return result;
}

double sub_1DCC4DF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26F0, &qword_1DD0E6720);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E07C0;
  v1 = type metadata accessor for CATINLRepresentationProducer();
  v2 = swift_allocObject();
  *(v2 + 16) = 1769234787;
  *(v2 + 24) = 0xE400000000000000;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1F5856130;
  *(v0 + 32) = v2;
  qword_1ECCD25C0 = v0;
  return result;
}

uint64_t AuthoredFlowFactory.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 40) = &type metadata for AuthoredFlowFactory.DefaultDependencies;
  *(result + 48) = &off_1F58551B8;
  return result;
}

uint64_t AuthoredFlowFactory.init()()
{
  result = v0;
  *(v0 + 40) = &type metadata for AuthoredFlowFactory.DefaultDependencies;
  *(v0 + 48) = &off_1F58551B8;
  return result;
}

Swift::String_optional __swiftcall AuthoredFlowFactory.authoredFlowPath(flowDescriptor:)(SiriKitFlow::AuthoredFlowDescriptor *flowDescriptor)
{
  if (flowDescriptor->templateDir.value._object)
  {
    v1 = [objc_allocWithZone(MEMORY[0x1E69A8DE8]) init];
    v2 = sub_1DD0DDF8C();
    OUTLINED_FUNCTION_33_1();
    v3 = sub_1DD0DDF8C();
    v4 = [v1 findInTemplateDir:v2 withId:v3];

    v5 = sub_1DD0DDFBC();
    v7 = v6;

    if ((v7 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    isa = flowDescriptor->bundle.super.isa;
    v9 = [objc_allocWithZone(MEMORY[0x1E69A8DE8]) init];
    OUTLINED_FUNCTION_33_1();
    v10 = sub_1DD0DDF8C();
    v11 = [v9 find:isa withId:v10];

    v5 = sub_1DD0DDFBC();
    v7 = v12;

    if ((v7 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v5 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  if ((v7 & 0xF00000000000000) == 0)
  {
LABEL_7:

    v5 = 0;
    v7 = 0;
  }

LABEL_8:
  v13 = v5;
  v14 = v7;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t sub_1DCC4E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  *(v5 + 1256) = a4;
  *(v5 + 1248) = a3;
  *(v5 + 1240) = a1;
  *(v5 + 1264) = *a2;
  v6 = *(a2 + 24);
  *(v5 + 1272) = *(a2 + 8);
  *(v5 + 1288) = v6;
  v9 = (a5 + *a5);
  v7 = swift_task_alloc();
  *(v5 + 1304) = v7;
  *v7 = v5;
  v7[1] = sub_1DCC4E344;

  return v9(v5 + 16);
}

uint64_t sub_1DCC4E344()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCC4E430, 0, 0);
}

uint64_t sub_1DCC4ED58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 1248) = a3;
  *(v4 + 1256) = a4;
  *(v4 + 1240) = a1;
  *(v4 + 1264) = *a4;
  *(v4 + 1272) = *a2;
  *(v4 + 1280) = *(a2 + 8);
  *(v4 + 1296) = *(a2 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCC4EDC0, 0, 0);
}

uint64_t sub_1DCC4F85C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 1248) = a3;
  *(v4 + 1256) = a4;
  *(v4 + 1240) = a1;
  *(v4 + 1264) = *a4;
  *(v4 + 1272) = *a2;
  *(v4 + 1280) = *(a2 + 8);
  *(v4 + 1296) = *(a2 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1DCC516C8, 0, 0);
}

uint64_t AuthoredFlowFactory.makeAuthoredFlow(flowDescriptor:initialState:extensions:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 1248) = v2;
  *(v1 + 1256) = v0;
  *(v1 + 1240) = v3;
  *(v1 + 1264) = *v0;
  *(v1 + 1272) = *v4;
  *(v1 + 1280) = *(v4 + 8);
  *(v1 + 1296) = *(v4 + 24);
  v9 = (v5 + *v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 1312) = v6;
  *v6 = v7;
  v6[1] = sub_1DCC4F9F8;

  return v9(v1 + 16);
}

uint64_t sub_1DCC4F9F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DCC4FAE4, 0, 0);
}

uint64_t AuthoredFlowFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

BOOL sub_1DCC504A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3.flowId = *a1;
  *&v3.bundle.super.isa = v1;
  v3.templateDir.value._object = *(a1 + 32);
  return sub_1DCC4CBC8(&v3);
}

uint64_t sub_1DCC504EC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(v2 + 48) = *(a2 + 4);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  *v6 = v2;
  v6[1] = sub_1DCC516C0;

  return sub_1DCC4CD60(a1, v2 + 16);
}

uint64_t sub_1DCC505B4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  *(v3 + 48) = *(a2 + 4);
  *(v3 + 16) = v6;
  *(v3 + 32) = v7;
  v8 = swift_task_alloc();
  *(v3 + 56) = v8;
  *v8 = v3;
  v8[1] = sub_1DCC516C0;

  return sub_1DCC4D2B0(a1, (v3 + 16), a3);
}

uint64_t sub_1DCC50688(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  *(v4 + 48) = *(a2 + 4);
  *(v4 + 16) = v8;
  *(v4 + 32) = v9;
  v10 = swift_task_alloc();
  *(v4 + 56) = v10;
  *v10 = v4;
  v10[1] = sub_1DCC50768;

  return sub_1DCC4D5C4(a1, v4 + 16, a3, a4);
}

uint64_t sub_1DCC50768()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC50848()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return AuthoredFlowFactory.makeAuthoredFlow(flowDescriptor:initialState:extensions:)();
}

uint64_t sub_1DCC5094C(uint64_t a1)
{
  v14[3] = type metadata accessor for ResponseFactory();
  v14[4] = &protocol witness table for ResponseFactory;
  v14[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26E8, &qword_1DD0E6718);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD0E4000;
  v3 = type metadata accessor for NLOnlyOutputElementConverter();
  v4 = swift_allocObject();
  *(v2 + 56) = v3;
  *(v2 + 64) = &off_1F5865C50;
  *(v2 + 32) = v4;
  sub_1DCB17CA0(v14, v13);
  v5 = type metadata accessor for ResponseFrameworkOutputElementConverter();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v13, v6 + 16);
  *(v2 + 96) = v5;
  *(v2 + 104) = &off_1F5871E40;
  *(v2 + 72) = v6;
  sub_1DCB17CA0(v14, v13);
  v7 = type metadata accessor for PatternOutputElementConverter();
  v8 = swift_allocObject();
  sub_1DCAFF9E8(v13, v8 + 16);
  *(v2 + 136) = v7;
  *(v2 + 144) = &off_1F5867910;
  *(v2 + 112) = v8;
  v9 = type metadata accessor for LegacyOutputElementConverter();
  v10 = swift_allocObject();
  *(v2 + 176) = v9;
  *(v2 + 184) = &off_1F5862C08;
  *(v2 + 152) = v10;
  type metadata accessor for AccumulatingOutputProducer(0);
  swift_allocObject();
  v11 = sub_1DCBB1358(v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

uint64_t destroy for AuthoredFlowExtensions(void *a1)
{

  if (a1[6])
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1 + 3);
  }

  if (a1[11])
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 8);
  }

  return result;
}

uint64_t initializeWithCopy for AuthoredFlowExtensions(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[2];
  v5 = a2[6];

  if (v5)
  {
    v6 = a2[7];
    *(a1 + 48) = v5;
    *(a1 + 56) = v6;
    (**(v5 - 8))(a1 + 24, a2 + 3, v5);
  }

  else
  {
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 56) = a2[7];
  }

  v7 = a2[11];
  if (v7)
  {
    v8 = a2[12];
    *(a1 + 88) = v7;
    *(a1 + 96) = v8;
    (**(v7 - 8))(a1 + 64, a2 + 8);
  }

  else
  {
    v9 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v9;
    *(a1 + 96) = a2[12];
  }

  return a1;
}

uint64_t assignWithCopy for AuthoredFlowExtensions(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  *(a1 + 16) = a2[2];

  v4 = a2[6];
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, a2 + 3);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = a2[7];
    (**(v4 - 8))(a1 + 24, a2 + 3);
    goto LABEL_8;
  }

  v6 = *(a2 + 3);
  v7 = *(a2 + 5);
  *(a1 + 56) = a2[7];
  *(a1 + 40) = v7;
  *(a1 + 24) = v6;
LABEL_8:
  v8 = a2[11];
  if (!*(a1 + 88))
  {
    if (v8)
    {
      *(a1 + 88) = v8;
      *(a1 + 96) = a2[12];
      (**(v8 - 8))(a1 + 64, a2 + 8);
      return a1;
    }

LABEL_14:
    v10 = *(a2 + 4);
    v11 = *(a2 + 5);
    *(a1 + 96) = a2[12];
    *(a1 + 64) = v10;
    *(a1 + 80) = v11;
    return a1;
  }

  v9 = (a1 + 64);
  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_1(v9, a2 + 8);
  return a1;
}

uint64_t assignWithTake for AuthoredFlowExtensions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 64));
  }

  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowExtensions(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthoredFlowExtensions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AuthoredFlowDescriptor(uint64_t a1)
{
}

void *initializeWithCopy for AuthoredFlowDescriptor(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v5 = a2[2];
  v4 = a2[3];
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = a2[4];

  v6 = v5;

  return a1;
}

void *assignWithCopy for AuthoredFlowDescriptor(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  a1[3] = a2[3];
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for AuthoredFlowDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for AuthoredFlowDescriptor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AuthoredFlowDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_24_0();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_24_0();
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_11_0(v11);
  *v12 = v13;
  v12[1] = sub_1DCB4AE1C;

  return v15(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_24_0();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_0(v13);
  *v14 = v15;
  v14[1] = sub_1DCB4AD3C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AuthoredFlowProviding.makeAuthoredFlow(flowDescriptor:initialState:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_24_0();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_0(v15);
  *v16 = v17;
  v16[1] = sub_1DCB4AE1C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCC516CC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_1DCE19FF0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_98_3();
  v6 = sub_1DCC5CF70(v3, v4, v5, a1);
  OUTLINED_FUNCTION_55_8(v6, v7, v8, v9, v10, v11, v12, v13, v16, v17);
  if (!v14)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

char *sub_1DCC5173C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DCE1A06C();
  v4 = *(sub_1DD0DB3AC() - 8);
  v5 = sub_1DCC5D100(v16, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  OUTLINED_FUNCTION_55_8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16[0]);
  if (!v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DCC517F0(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_98_3();
  v5 = a3();
  OUTLINED_FUNCTION_55_8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  if (!v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

id sub_1DCC51870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = sub_1DCB08B14(a1);
  v15 = result;
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12A72C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v7 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = [result eventId];
    v9 = sub_1DD0DDFBC();
    v11 = v10;

    v12 = [v7 parsers];
    sub_1DCB10E5C(0, &qword_1ECCA2768, 0x1E69A8DF8);
    v13 = sub_1DD0DE2EC();

    sub_1DCC51CC8(v13, a2, a3, v9, v11);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1DCC519FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD0DEAFC();
    sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
    sub_1DCC5CE28();
    sub_1DD0DE5AC();
    v5 = v34;
    v6 = v35;
    v7 = v36;
    v8 = v37;
    v9 = v38;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v11 = ~v10;
    v12 = -v10;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v7 = v11;
    v8 = 0;
  }

  v14 = (v7 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v8;
    v16 = v9;
    v17 = v8;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_18:
      sub_1DCB2BCE4(v5);

      return;
    }

    while (1)
    {
      v20 = [v19 eventId];
      v32 = sub_1DD0DDFBC();
      v22 = v21;

      v33 = v18;
      v23 = v14;
      v24 = v6;
      v25 = v5;
      v26 = v4;
      v27 = [v19 parsers];
      sub_1DCB10E5C(0, &qword_1ECCA2768, 0x1E69A8DF8);
      v28 = sub_1DD0DE2EC();

      v29 = v26;
      v5 = v25;
      v6 = v24;
      v14 = v23;
      sub_1DCC51CC8(v28, a2, a3, v32, v22);
      v4 = v29;

      v8 = v17;
      v9 = v33;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DD0DEB6C())
      {
        sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
        swift_dynamicCast();
        v19 = v39;
        v17 = v8;
        v18 = v9;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1DCC51CC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1DCB08B14(a1);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E12A72C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 8 * i + 32);
    }

    v12 = v11;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = v11;
    sub_1DCE3631C(&v15, a2, a3, a4, a5);
    if (v5)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1DCC51DD8()
{
  sub_1DCC5BEEC(v0, v2);
  result = 0x656C6C65636E6163;
  switch(v4)
  {
    case 1:
      sub_1DCB16D50(v2, &qword_1ECCA1810, &dword_1DD0E0F78);
      result = 0x49726F4674696177;
      break;
    case 2:
      sub_1DCB16D50(v2, &qword_1ECCA1810, &dword_1DD0E0F78);
      result = 0x6574656C706D6F63;
      break;
    case 3:
      sub_1DCC5BF24(v2);
      result = 0x726F727265;
      break;
    case 4:
      return result;
    default:

      __swift_destroy_boxed_opaque_existential_1Tm(v3);
      sub_1DCB16D50(v2, &qword_1ECCA1810, &dword_1DD0E0F78);
      result = 0x4665747563657865;
      break;
  }

  return result;
}

uint64_t sub_1DCC51F14(uint64_t *a1, void *a2, void *a3, uint64_t a4, const void *a5, const void *a6, uint64_t a7, char a8)
{
  v14 = a1;
  v15 = *a1;
  v17 = a1[3];
  v16 = a1[4];
  *(v8 + 16) = a3;
  sub_1DCB17CA0(a2, v8 + 24);
  *(v8 + 64) = v15;
  *(v8 + 72) = *(v14 + 1);
  *(v8 + 88) = v17;
  *(v8 + 96) = v16;
  *(v8 + 104) = a4;
  sub_1DCB28B08(a5, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    a4 = __dst[2];
    v18 = a3;

    sub_1DCC50ACC(__dst);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2790, &qword_1DD0E68B8);
    OUTLINED_FUNCTION_1_8();
    v20 = sub_1DCC5DEBC(v19, &qword_1ECCA2790, &qword_1DD0E68B8);
  }

  else
  {
    v21 = a3;
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v20 = OUTLINED_FUNCTION_43_8();
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = a4;
  *(&v54 + 1) = v14;
  v55 = v20;
  sub_1DCB28B08(a6, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    a4 = __dst[2];

    sub_1DCC50ACC(__dst);
    v14 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v23 = OUTLINED_FUNCTION_85_3(v22);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v23 = OUTLINED_FUNCTION_43_8();
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = a4;
  __dst[3] = v14;
  __dst[4] = v23;
  v24 = OUTLINED_FUNCTION_42_7();
  v26 = sub_1DCC52564(v24, v25);
  if (__dst[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  if (*(&v54 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  *(v8 + 112) = v26;
  sub_1DCB28B08(a5, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  v27 = __dst[0];
  if (__dst[0])
  {

    sub_1DCC50ACC(__dst);
    v28 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v30 = OUTLINED_FUNCTION_85_3(v29);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v28 = 0;
    v30 = 0;
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = v27;
  *(&v54 + 1) = v28;
  v55 = v30;
  sub_1DCB28B08(a6, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  v31 = __dst[0];
  if (__dst[0])
  {

    sub_1DCC50ACC(__dst);
    v32 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v34 = OUTLINED_FUNCTION_85_3(v33);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v32 = 0;
    v34 = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v31;
  __dst[3] = v32;
  __dst[4] = v34;
  v35 = OUTLINED_FUNCTION_42_7();
  v37 = sub_1DCC528F8(v35, v36);
  if (__dst[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  if (*(&v54 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  *(v8 + 128) = v37;
  sub_1DCB28B08(a5, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    v37 = __dst[1];

    sub_1DCC50ACC(__dst);
    v32 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v39 = OUTLINED_FUNCTION_85_3(v38);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v39 = OUTLINED_FUNCTION_43_8();
    *(&v53 + 1) = 0;
    *&v54 = 0;
  }

  *&v53 = v37;
  *(&v54 + 1) = v32;
  v55 = v39;
  sub_1DCB28B08(a6, __dst, &qword_1ECCA26D0, &qword_1DD0E6540);
  if (__dst[0])
  {
    v37 = __dst[1];

    sub_1DCC50ACC(__dst);
    v32 = OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_1_8();
    v41 = OUTLINED_FUNCTION_85_3(v40);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v41 = OUTLINED_FUNCTION_43_8();
    __dst[1] = 0;
    __dst[2] = 0;
  }

  __dst[0] = v37;
  __dst[3] = v32;
  __dst[4] = v41;
  v42 = OUTLINED_FUNCTION_42_7();
  v44 = sub_1DCC52C8C(v42, v43);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  if (__dst[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(__dst);
  }

  if (*(&v54 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  }

  *(v8 + 120) = v44;
  memcpy(__dst, a6, sizeof(__dst));
  if (__dst[0])
  {
    sub_1DCB28B08(&__dst[8], &v49, &qword_1ECCA26E0, &qword_1DD0E64F8);
    sub_1DCC50ACC(__dst);
    if (*(&v50 + 1))
    {
      sub_1DCB16D50(a5, &qword_1ECCA26D0, &qword_1DD0E6540);
      sub_1DCAFF9E8(&v49, &v53);
      goto LABEL_40;
    }
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
  }

  memcpy(__dst, a5, sizeof(__dst));
  if (__dst[0])
  {
    sub_1DCB28B08(&__dst[8], &v53, &qword_1ECCA26E0, &qword_1DD0E64F8);
    sub_1DCC50ACC(__dst);
  }

  else
  {
    sub_1DCB16D50(__dst, &qword_1ECCA26D0, &qword_1DD0E6540);
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
  }

  if (*(&v50 + 1))
  {
    sub_1DCB16D50(&v49, &qword_1ECCA26E0, &qword_1DD0E64F8);
  }

LABEL_40:
  v45 = v54;
  *(v8 + 136) = v53;
  *(v8 + 152) = v45;
  *(v8 + 168) = v55;
  *(v8 + 176) = a7;
  *(v8 + 184) = a8 & 1;
  return v8;
}

uint64_t sub_1DCC52514(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DCC52564(__int128 *a1, __int128 *a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = &off_1DD0E0000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(0xD000000000000017, 0x80000001DD115A10, &v21);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Mapping standard extensions of type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = &off_1DD0E0000;
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v24 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 3))
  {
    sub_1DCB17CA0(a1, &v21);
  }

  else
  {
    v10 = a1[1];
    v21 = *a1;
    v22 = v10;
    v23 = *(a1 + 4);
  }

  if (*(&v22 + 1))
  {
    v11 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v21 = v16;
    *v15 = *(v7 + 246);
    *(v15 + 4) = sub_1DCB10E9C(0xD000000000000017, 0x80000001DD115A10, &v21);
    _os_log_impl(&dword_1DCAFC000, v13, v14, "Adding custom extensions of type %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A8390](v16, -1, -1);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  if (*(a2 + 3))
  {
    sub_1DCB17CA0(a2, &v21);
  }

  else
  {
    v17 = a2[1];
    v21 = *a2;
    v22 = v17;
    v23 = *(a2 + 4);
  }

  if (*(&v22 + 1))
  {
    v18 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v18, v19);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  return v24;
}

uint64_t sub_1DCC528F8(__int128 *a1, __int128 *a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = &off_1DD0E0000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(0xD000000000000010, 0x80000001DD1159F0, &v21);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Mapping standard extensions of type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = &off_1DD0E0000;
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v24 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 3))
  {
    sub_1DCB17CA0(a1, &v21);
  }

  else
  {
    v10 = a1[1];
    v21 = *a1;
    v22 = v10;
    v23 = *(a1 + 4);
  }

  if (*(&v22 + 1))
  {
    v11 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v21 = v16;
    *v15 = *(v7 + 246);
    *(v15 + 4) = sub_1DCB10E9C(0xD000000000000010, 0x80000001DD1159F0, &v21);
    _os_log_impl(&dword_1DCAFC000, v13, v14, "Adding custom extensions of type %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A8390](v16, -1, -1);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  if (*(a2 + 3))
  {
    sub_1DCB17CA0(a2, &v21);
  }

  else
  {
    v17 = a2[1];
    v21 = *a2;
    v22 = v17;
    v23 = *(a2 + 4);
  }

  if (*(&v22 + 1))
  {
    v18 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v18, v19);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  return v24;
}

uint64_t sub_1DCC52C8C(__int128 *a1, __int128 *a2)
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  v7 = &off_1DD0E0000;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v21 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1DCB10E9C(0xD000000000000019, 0x80000001DD1159D0, &v21);
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Mapping standard extensions of type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v7 = &off_1DD0E0000;
    MEMORY[0x1E12A8390](v9, -1, -1);
    MEMORY[0x1E12A8390](v8, -1, -1);
  }

  v24 = MEMORY[0x1E69E7CC8];
  if (*(a1 + 3))
  {
    sub_1DCB17CA0(a1, &v21);
  }

  else
  {
    v10 = a1[1];
    v21 = *a1;
    v22 = v10;
    v23 = *(a1 + 4);
  }

  if (*(&v22 + 1))
  {
    v11 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v21 = v16;
    *v15 = *(v7 + 246);
    *(v15 + 4) = sub_1DCB10E9C(0xD000000000000019, 0x80000001DD1159D0, &v21);
    _os_log_impl(&dword_1DCAFC000, v13, v14, "Adding custom extensions of type %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E12A8390](v16, -1, -1);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  if (*(a2 + 3))
  {
    sub_1DCB17CA0(a2, &v21);
  }

  else
  {
    v17 = a2[1];
    v21 = *a2;
    v22 = v17;
    v23 = *(a2 + 4);
  }

  if (*(&v22 + 1))
  {
    v18 = __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    MEMORY[0x1EEE9AC00](v18, v19);
    sub_1DD0DE24C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  }

  return v24;
}

uint64_t sub_1DCC53020(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DCC53070(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1DCC530C0()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v1[5] = sub_1DD0DD85C();
  OUTLINED_FUNCTION_24_0();
  v1[6] = v3;
  v1[7] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC53190()
{
  OUTLINED_FUNCTION_51_4();
  v21 = v0;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v2 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_start", 24);
  *(v0 + 64) = v3;
  v4 = OUTLINED_FUNCTION_38_1();
  v5(v4);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v8 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_42_3();
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_93();
    *v10 = 136315394;
    v11 = OUTLINED_FUNCTION_105_4();
    sub_1DCB10E9C(v11, v12, &v20);
    OUTLINED_FUNCTION_92_1();
    *(v10 + 4) = v1;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1DCB10E9C(0x29287472617473, 0xE700000000000000, &v20);
    OUTLINED_FUNCTION_68_5();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  if ((sub_1DCC56E98() & 1) == 0)
  {
    sub_1DD0DCF8C();
  }

  v18 = swift_task_alloc();
  *(v0 + 72) = v18;
  *v18 = v0;
  v18[1] = sub_1DCC53570;

  return sub_1DCC558C0();
}

uint64_t sub_1DCC53570()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC53654()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[3];
  v2 = *(v1 + 16);
  sub_1DCDA0B44(*(v1 + 104));
  v3 = [v2 startConversation];
  sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
  OUTLINED_FUNCTION_75_0();
  v0[10] = sub_1DD0DE2EC();

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[11] = v4;
  *v4 = v5;
  v4[1] = sub_1DCC53738;
  OUTLINED_FUNCTION_62_1();

  return sub_1DCC56F3C();
}

uint64_t sub_1DCC53738()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC53838()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC55678(*(v0 + 64), "AuthoredFlowRunner_start");

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC538AC()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[7] = *v0;
  v1[8] = sub_1DD0DD85C();
  OUTLINED_FUNCTION_24_0();
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC5397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v21 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v21, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_makeParsingFunctionForInput", 46);
  v18[11] = v22;
  v23 = OUTLINED_FUNCTION_38_1();
  v24(v23);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v25 = sub_1DD0DD8FC();
  v18[12] = __swift_project_value_buffer(v25, qword_1EDE57E00);
  v26 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v27 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_42_3();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    a10 = swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_80_0(4.8151e-34);
    sub_1DCB10E9C(v30, v31, &a10);
    OUTLINED_FUNCTION_96_1();

    OUTLINED_FUNCTION_37_10();
    OUTLINED_FUNCTION_57_0();
    *(v29 + 14) = sub_1DCB10E9C(0xD000000000000023, v32, &a10);
    OUTLINED_FUNCTION_13_12();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v38 = v18[6];
  v39 = *(v38 + 16);
  v18[13] = v39;
  v40 = [v39 activeEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  v18[14] = sub_1DD0DE57C();

  v18[15] = *(v38 + 128);
  v41 = swift_task_alloc();
  v18[16] = v41;
  *v41 = v18;
  v41[1] = sub_1DCC53C04;
  OUTLINED_FUNCTION_48();

  return v45(v42, v43, v44, v45, v46, v47, v48, v49, sub_1DCC5D64C, a10);
}

uint64_t sub_1DCC53C04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v8 + 136) = v7;

  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCC53D10()
{
  OUTLINED_FUNCTION_145();
  v18 = v1;
  OUTLINED_FUNCTION_41();
  if (*(v0 + 136))
  {
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_13;
    }

    v4 = "Successfully produced a parsing function for input";
    goto LABEL_12;
  }

  v5 = [*(v0 + 104) hasActiveFallback];
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  v6 = os_log_type_enabled(v2, v3);
  if (!v5)
  {
    if (!v6)
    {
LABEL_13:
      v15 = *(v0 + 88);

      sub_1DCC55678(v15, "AuthoredFlowRunner_makeParsingFunctionForInput");

      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_48();

      __asm { BRAA            X3, X16 }
    }

    v4 = "Received input that we cannot process and there is no active fallback. Ignoring...";
LABEL_12:
    v14 = OUTLINED_FUNCTION_50_0();
    *v14 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, v4, v14, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    goto LABEL_13;
  }

  if (v6)
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Engine indicates that there is an active fallback. Attempting to match...", v7, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  sub_1DCDA0C98();
  v9 = v8;
  *(v0 + 144) = v8;
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_1DCC53F40;
  v11 = *(v0 + 120);
  v12 = *(v0 + 40);

  return sub_1DCC5D8C0(v12, v9, v11);
}

uint64_t sub_1DCC53F40()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *(v7 + 160) = v5;
  *(v7 + 168) = v6;

  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCC54044()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 160);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  v4 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v4, v5))
  {
    if (v1)
    {
      v6 = "Parser indicates that it will produce a fallback event for the current input. Will process input.";
    }

    else
    {
      v6 = "Unable to match input to fallback events. Input is not for us, ignoring...";
    }

    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, v6, v7, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v8 = *(v0 + 88);

  sub_1DCC55678(v8, "AuthoredFlowRunner_makeParsingFunctionForInput");

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_121();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1DCC5415C()
{
  OUTLINED_FUNCTION_42();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[10] = *v0;
  v1[11] = sub_1DD0DD85C();
  OUTLINED_FUNCTION_24_0();
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC54230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v21 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v21, qword_1EDE57DD0);
  sub_1DD0DD84C();
  OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_handleInput", 30);
  v18[14] = v22;
  v23 = OUTLINED_FUNCTION_38_1();
  v24(v23);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v25 = sub_1DD0DD8FC();
  v18[15] = __swift_project_value_buffer(v25, qword_1EDE57E00);
  v26 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v27 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_42_3();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    a10 = swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_80_0(4.8151e-34);
    sub_1DCB10E9C(v30, v31, &a10);
    OUTLINED_FUNCTION_96_1();

    OUTLINED_FUNCTION_37_10();
    OUTLINED_FUNCTION_57_0();
    *(v29 + 14) = sub_1DCB10E9C(0xD000000000000021, v32, &a10);
    OUTLINED_FUNCTION_13_12();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v49 = v18[7] + *v18[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v18[16] = v38;
  *v38 = v39;
  v38[1] = sub_1DCC54490;
  OUTLINED_FUNCTION_48();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, v49, a10);
}

uint64_t sub_1DCC54490()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC54574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  if (*(v22 + 40))
  {
    if (*(v22 + 40) == 1)
    {
      v28 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v29 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v31);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v32, v33, v34, v35, v36, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v37 = *(v22 + 48);

      *v37 = v25;
      *(v37 + 8) = 0;
      *(v37 + 88) = 3;
    }

    else
    {
      if (v27 | v26 | v25)
      {
        if (v25 == 1 && (v27 | v26) == 0)
        {
          v89 = sub_1DD0DD8EC();
          sub_1DD0DE6DC();
          v90 = OUTLINED_FUNCTION_19_2();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v92);
            OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v93, v94, "UserInputParser indicated that the Parse is not understood.");
            OUTLINED_FUNCTION_18();
            MEMORY[0x1E12A8390]();
          }

          v78 = *(v22 + 48);

          v95 = sub_1DCC5CD04();
          v80 = OUTLINED_FUNCTION_34(&type metadata for AuthoredFlowRunner.AuthoredFlowError, v95);
          *v81 = 0xD000000000000013;
          v81[1] = 0x80000001DD115900;
        }

        else
        {
          v72 = sub_1DD0DD8EC();
          sub_1DD0DE6DC();
          v73 = OUTLINED_FUNCTION_19_2();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v75);
            OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v76, v77, "UserInputParser indicated that the Parse is empty.");
            OUTLINED_FUNCTION_18();
            MEMORY[0x1E12A8390]();
          }

          v78 = *(v22 + 48);

          v79 = sub_1DCC5CD04();
          v80 = OUTLINED_FUNCTION_34(&type metadata for AuthoredFlowRunner.AuthoredFlowError, v79);
          *v81 = xmmword_1DD0E6740;
        }

        OUTLINED_FUNCTION_91_1(v80, v81);
        *v78 = v96;
        *(v78 + 8) = 0;
        v88 = 3;
      }

      else
      {
        v82 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        v83 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v85);
          OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v86, v87, "User cancelled the conversation.");
          OUTLINED_FUNCTION_18();
          MEMORY[0x1E12A8390]();
        }

        v78 = *(v22 + 48);

        *(v78 + 80) = 0;
        *(v78 + 48) = 0u;
        *(v78 + 64) = 0u;
        *(v78 + 16) = 0u;
        *(v78 + 32) = 0u;
        *v78 = 0u;
        v88 = 4;
      }

      *(v78 + 88) = v88;
    }

    sub_1DCC55678(*(v22 + 112), "AuthoredFlowRunner_handleInput");

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_76();

    return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v38 = [objc_allocWithZone(MEMORY[0x1E69A8DE0]) init];
    *(v22 + 136) = v38;
    OUTLINED_FUNCTION_20();
    v39 = sub_1DD0DDF8C();
    [v38 setEventId_];

    v40 = sub_1DD0DDE4C();
    v41 = OUTLINED_FUNCTION_20();
    sub_1DCC5DE5C(v41, v42, v27, 0);
    [v38 setSlots_];

    v43 = v38;
    v44 = sub_1DD0DD8EC();
    v45 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_83();
      a11 = swift_slowAlloc();
      *v46 = 136315650;
      v47 = [v43 eventId];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_64_2();

      OUTLINED_FUNCTION_83_3(v48, v49, v50, v51);
      OUTLINED_FUNCTION_88_4();
      *(v46 + 4) = v47;
      *(v46 + 12) = 2080;
      v52 = [v43 name];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_64_2();

      OUTLINED_FUNCTION_83_3(v53, v54, v55, v56);
      OUTLINED_FUNCTION_88_4();
      *(v46 + 14) = v52;
      *(v46 + 22) = 2080;
      v57 = [v43 slots];
      sub_1DD0DDE6C();

      sub_1DD0DDE7C();
      OUTLINED_FUNCTION_61_4();

      v60 = OUTLINED_FUNCTION_87_3(v58, v59, &a11);

      *(v46 + 24) = v60;
      OUTLINED_FUNCTION_68_5();
      _os_log_impl(v61, v62, v63, v64, v65, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v66 = [*(*(v22 + 72) + 16) processEvent_];
    sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
    OUTLINED_FUNCTION_75_0();
    *(v22 + 144) = sub_1DD0DE2EC();

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v22 + 152) = v67;
    *v67 = v68;
    v67[1] = sub_1DCC54AE8;
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_76();

    return sub_1DCC56F3C();
  }
}

uint64_t sub_1DCC54AE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC54BE8()
{
  OUTLINED_FUNCTION_42();

  sub_1DCC55678(*(v0 + 112), "AuthoredFlowRunner_handleInput");

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC54C64()
{
  OUTLINED_FUNCTION_42();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[34] = *v0;
  v1[35] = sub_1DD0DD85C();
  OUTLINED_FUNCTION_24_0();
  v1[36] = v5;
  v1[37] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCC54D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v94 = v14;
  if (qword_1EDE4EC80 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
LABEL_2:
    v15 = sub_1DD0DD88C();
    OUTLINED_FUNCTION_92(v15, qword_1EDE57DD0);
    sub_1DD0DD84C();
    OUTLINED_FUNCTION_104_2("AuthoredFlowRunner_processVariables", 35);
    *(v14 + 304) = v16;
    v17 = OUTLINED_FUNCTION_38_1();
    v18(v17);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v21 = OUTLINED_FUNCTION_19_2();
    v91 = v14;
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_42_3();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_35_9();
      v93 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_80_0(4.8151e-34);
      sub_1DCB10E9C(v24, v25, &v93);
      OUTLINED_FUNCTION_96_1();

      OUTLINED_FUNCTION_37_10();
      OUTLINED_FUNCTION_57_0();
      *(v23 + 14) = sub_1DCB10E9C(0xD000000000000038, v26, &v93);
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v32 = *(v14 + 248);
    v92 = *(v14 + 256);
    v33 = sub_1DD0DDE9C();
    v34 = v32 + 64;
    OUTLINED_FUNCTION_5_20();
    v37 = v36 & v35;
    OUTLINED_FUNCTION_74_4();
    v39 = v38 >> 6;
    v90 = v32;

    v40 = 0;
    v88 = v39;
    v89 = v32 + 64;
    if (v37)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v39)
      {
        v66 = *(v14 + 264);

        v67 = *(v66 + 16);
        sub_1DCDA0B44(v33);

        v68 = [v67 getRemainingResponses];
        sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
        OUTLINED_FUNCTION_75_0();
        v69 = sub_1DD0DE2EC();
        *(v14 + 312) = v69;

        if (sub_1DCB08B14(v69))
        {

          v70 = sub_1DD0DD8EC();
          sub_1DD0DE6DC();
          v71 = OUTLINED_FUNCTION_19_2();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = OUTLINED_FUNCTION_151();
            *v73 = 134217984;
            *(v73 + 4) = sub_1DCB08B14(v69);

            OUTLINED_FUNCTION_15_8();
            _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
            OUTLINED_FUNCTION_18();
            MEMORY[0x1E12A8390]();
          }

          else
          {
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_45();
          *(v14 + 328) = v84;
          *v84 = v85;
          v84[1] = sub_1DCC55578;
          OUTLINED_FUNCTION_62_1();
          OUTLINED_FUNCTION_33_5();

          return sub_1DCC56F3C();
        }

        else
        {

          swift_task_alloc();
          OUTLINED_FUNCTION_45();
          *(v14 + 320) = v79;
          *v79 = v80;
          v79[1] = sub_1DCC55420;
          OUTLINED_FUNCTION_33_5();

          return sub_1DCC5B740(v81);
        }
      }

      v37 = *(v34 + 8 * v41);
      ++v40;
      if (v37)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  while (1)
  {
    v41 = v40;
LABEL_11:
    v42 = __clz(__rbit64(v37)) | (v41 << 6);
    v43 = (*(v90 + 48) + 16 * v42);
    v44 = *v43;
    v45 = v43[1];
    sub_1DCB0DF6C(*(v90 + 56) + 32 * v42, v14 + 32);
    *(v14 + 16) = v44;
    *(v14 + 24) = v45;
    sub_1DCB28B08(v14 + 16, v14 + 64, &qword_1ECCA2760, &unk_1DD0E6A30);
    v46 = *(v14 + 72);
    if (*(v92 + 16))
    {
      v47 = *(v14 + 64);

      v48 = sub_1DCB21038(v47, v46);
      v50 = v49;

      if (v50)
      {
        v51 = (*(v92 + 56) + 16 * v48);
        v52 = *v51;
        v53 = v51[1];

        goto LABEL_16;
      }
    }

    else
    {
    }

    sub_1DCB28B08(v14 + 16, v14 + 112, &qword_1ECCA2760, &unk_1DD0E6A30);
    v52 = *(v14 + 112);
    v53 = *(v14 + 120);
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 128));
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 80));
    sub_1DCB28B08(v14 + 16, v14 + 160, &qword_1ECCA2760, &unk_1DD0E6A30);

    sub_1DCB20B30((v14 + 176), (v14 + 208));
    swift_isUniquelyReferenced_nonNull_native();
    v93 = v33;
    v54 = sub_1DCB21038(v52, v53);
    if (__OFADD__(v33[2], (v55 & 1) == 0))
    {
      goto LABEL_41;
    }

    v56 = v54;
    v57 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
    if (sub_1DD0DEDCC())
    {
      break;
    }

    v58 = v53;
LABEL_21:
    v37 &= v37 - 1;
    v14 = v91;
    if (v57)
    {

      v33 = v93;
      v61 = (v93[7] + 32 * v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      sub_1DCB20B30((v91 + 208), v61);
      sub_1DCB16D50(v91 + 16, &qword_1ECCA2760, &unk_1DD0E6A30);
    }

    else
    {
      v33 = v93;
      v93[(v56 >> 6) + 8] |= 1 << v56;
      v62 = (v33[6] + 16 * v56);
      *v62 = v52;
      v62[1] = v58;
      sub_1DCB20B30((v91 + 208), (v33[7] + 32 * v56));
      sub_1DCB16D50(v91 + 16, &qword_1ECCA2760, &unk_1DD0E6A30);
      v63 = v33[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_42;
      }

      v33[2] = v65;
    }

    v40 = v41;
    v39 = v88;
    v34 = v89;
    if (!v37)
    {
      goto LABEL_8;
    }
  }

  v58 = v53;
  v59 = sub_1DCB21038(v52, v53);
  if ((v57 & 1) == (v60 & 1))
  {
    v56 = v59;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_33_5();

  return sub_1DD0DF12C();
}

uint64_t sub_1DCC55420()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC55504()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC55678(*(v0 + 304), "AuthoredFlowRunner_processVariables");

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC55578()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC55678(uint64_t a1, const char *a2)
{
  sub_1DD0DD89C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  v4 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v12 = sub_1DD0DD88C();
  OUTLINED_FUNCTION_92(v12, qword_1EDE57DD0);
  v13 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_1DCC558D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100();
  a23 = v27;
  a24 = v28;
  OUTLINED_FUNCTION_51_4();
  a22 = v24;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v29 = sub_1DD0DD8FC();
  v30 = __swift_project_value_buffer(v29, qword_1EDE57E00);
  *(v24 + 304) = v30;
  v31 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v33);
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v39 = *(v24 + 296);

  sub_1DCB28B08(v39 + 136, v24 + 152, &qword_1ECCA26E0, &qword_1DD0E64F8);
  if (*(v24 + 176))
  {
    a11 = v30;
    v40 = *(v24 + 296);
    sub_1DCAFF9E8((v24 + 152), v24 + 112);
    v41 = *(v40 + 16);
    *(v24 + 312) = v41;
    v42 = [v41 getVariables];
    sub_1DCB10E5C(0, &qword_1ECCA2748, 0x1E69A8E08);
    v43 = sub_1DD0DDE6C();

    v44 = sub_1DCC517F0(v43, sub_1DCE1A29C, sub_1DCC5D398);
    result = sub_1DCB08B14(v44);
    a12 = v24;
    if (result)
    {
      v46 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v47 = 0;
      v48 = MEMORY[0x1E69E7CC0];
      v49 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      do
      {
        if ((v44 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x1E12A72C0](v47, v44);
        }

        else
        {
          v50 = *(v44 + 8 * v47 + 32);
        }

        v51 = v50;
        if ([v50 v49[148]])
        {
          v52 = [v51 name];
          sub_1DD0DDFBC();
          OUTLINED_FUNCTION_64_2();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DCB34108(0, *(v48 + 16) + 1, 1, v48);
            v48 = v56;
          }

          v54 = *(v48 + 16);
          v53 = *(v48 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1DCB34108(v53 > 1, v54 + 1, 1, v48);
            v48 = v57;
          }

          *(v48 + 16) = v54 + 1;
          v55 = v48 + 16 * v54;
          *(v55 + 32) = v25;
          *(v55 + 40) = v26;
          v49 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
        }

        else
        {
        }

        ++v47;
      }

      while (v46 != v47);
    }

    else
    {
      v48 = MEMORY[0x1E69E7CC0];
    }

    a12[40] = v48;

    v58 = *(v48 + 16);
    v59 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v60 = OUTLINED_FUNCTION_19_2();
    v62 = os_log_type_enabled(v60, v61);
    if (v58)
    {
      if (v62)
      {
        OUTLINED_FUNCTION_151();
        v63 = OUTLINED_FUNCTION_52_0();
        a13 = v63;
        *v58 = 136315138;

        MEMORY[0x1E12A6960](v64, MEMORY[0x1E69E6158]);
        OUTLINED_FUNCTION_61_4();

        v67 = OUTLINED_FUNCTION_87_3(v65, v66, &a13);

        *(v58 + 4) = v67;
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v73 = a12[37];
      v74 = a12[18];
      __swift_project_boxed_opaque_existential_1(a12 + 14, a12[17]);
      v75 = v73[8];
      v76 = v73[9];
      v78 = v73[10];
      v77 = v73[11];
      v79 = v73[12];
      a12[24] = v75;
      a12[25] = v76;
      a12[26] = v78;
      a12[27] = v77;
      a12[28] = v79;
      v80 = *(v74 + 16);

      v81 = v78;

      v105 = v80 + *v80;
      v82 = swift_task_alloc();
      a12[41] = v82;
      *v82 = a12;
      v82[1] = sub_1DCC55E1C;
      OUTLINED_FUNCTION_73();

      return v87(v83, v84, v85, v86, v87, v88, v89, v90, a9, v105, v74 + 16, a12, a13, a14, a15, a16);
    }

    if (v62)
    {
      v91 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v91);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a12 + 14);
  }

  else
  {
    sub_1DCB16D50(v24 + 152, &qword_1ECCA26E0, &qword_1DD0E64F8);
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCC55E1C()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v7 + 336) = v6;

  v8 = *(v1 + 208);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCC55F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_4();
  a22 = v24;
  v27 = 0;
  v28 = *(v24 + 336) + 64;
  v60 = *(v24 + 336);
  OUTLINED_FUNCTION_5_20();
  v31 = v30 & v29;
  OUTLINED_FUNCTION_74_4();
  v33 = v32 >> 6;
  *&v34 = 136315138;
  v58 = v34;
  v35 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  v59 = v28;
  if (!v31)
  {
    goto LABEL_3;
  }

  do
  {
    v36 = v27;
LABEL_7:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v36 << 6);
    v39 = (*(v60 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    sub_1DCB0DF6C(*(v60 + 56) + 32 * v38, v24 + 232);
    *(v24 + 64) = v41;
    *(v24 + 72) = v40;
    sub_1DCB20B30((v24 + 232), (v24 + 80));

LABEL_8:
    v42 = *(v24 + 80);
    *(v24 + 16) = *(v24 + 64);
    *(v24 + 32) = v42;
    *(v24 + 48) = *(v24 + 96);
    v43 = *(v24 + 24);
    if (!v43)
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 112));
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      v51(v50, v51, v52, v53, v54, v55, v56, v57, v58, *(&v58 + 1), v59, v60, a13, a14, a15, a16);
      return;
    }

    v44 = *(v24 + 16);
    sub_1DCB20B30((v24 + 32), (v24 + 264));

    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_151();
      v48 = OUTLINED_FUNCTION_83();
      a13 = v48;
      *v47 = v58;
      *(v47 + 4) = sub_1DCB10E9C(v44, v43, &a13);
      _os_log_impl(&dword_1DCAFC000, v45, v46, "Restoring value for variable %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      v35 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v28 = v59;
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v49 = *(v24 + 312);
    sub_1DD0DDF8C();
    OUTLINED_FUNCTION_94_2();

    __swift_project_boxed_opaque_existential_1((v24 + 264), *(v24 + 288));
    [v49 v35[149]];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 264));
  }

  while (v31);
LABEL_3:
  while (1)
  {
    v36 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      v31 = 0;
      *(v24 + 80) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 64) = 0u;
      goto LABEL_8;
    }

    v31 = *(v28 + 8 * v36);
    ++v27;
    if (v31)
    {
      v27 = v36;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1DCC56214()
{
  v75 = v0;
  v1 = v0;
  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v2 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v5);
      OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v6, v7, "Checking if we need to save persistent variable values");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v8 = *(v1 + 240);

    sub_1DCB28B08(v8 + 136, v1 + 56, &qword_1ECCA26E0, &qword_1DD0E64F8);
    if (!*(v1 + 80))
    {
      sub_1DCB16D50(v1 + 56, &qword_1ECCA26E0, &qword_1DD0E64F8);
      goto LABEL_31;
    }

    v9 = *(v1 + 240);
    sub_1DCAFF9E8((v1 + 56), v1 + 16);
    v10 = [*(v9 + 16) getChangedPersistentVariables];
    sub_1DCB10E5C(0, &qword_1ECCA2748, 0x1E69A8E08);
    v11 = sub_1DD0DDE6C();

    if (!v11[2])
    {

      v51 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v52 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v54);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v55, v56, "No persistent variable values changed during this turn");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
LABEL_31:
      OUTLINED_FUNCTION_33_5();

      __asm { BRAA            X1, X16 }
    }

    v12 = sub_1DD0DDE9C();
    v13 = 0;
    v14 = v11 + 8;
    OUTLINED_FUNCTION_5_20();
    v17 = v16 & v15;
    OUTLINED_FUNCTION_74_4();
    v19 = v18 >> 6;
    v71 = v1;
    v72 = v18 >> 6;
LABEL_7:
    *(v1 + 248) = v12;
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_8:
    v20 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  if (v20 >= v19)
  {

    *(v1 + 232) = sub_1DCC517F0(v42, sub_1DCE19F88, sub_1DCC5D4F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCC5DEBC(&qword_1EDE46280, &qword_1ECCA2758, &unk_1DD0E6880);
    v43 = sub_1DD0DDF6C();
    v45 = v44;

    v46 = sub_1DD0DD8EC();
    v47 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_151();
      v49 = OUTLINED_FUNCTION_83();
      v74 = v49;
      *v48 = 136315138;
      sub_1DCB10E9C(v43, v45, &v74);
      OUTLINED_FUNCTION_94_2();

      *(v48 + 4) = v43;
      OUTLINED_FUNCTION_103_3(&dword_1DCAFC000, v46, v47, "Calling handler to save persistent values for variables %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v50 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v50);
    }

    else
    {
    }

    v59 = *(v1 + 240);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v61 = v59[8];
    v60 = v59[9];
    v62 = v1;
    v64 = v59[10];
    v63 = v59[11];
    v65 = v59[12];
    v62[12] = v61;
    v62[13] = v60;
    v62[14] = v64;
    v62[15] = v63;
    v62[16] = v65;

    v66 = v64;

    v67 = swift_task_alloc();
    v62[32] = v67;
    *v67 = v62;
    v67[1] = sub_1DCC56A10;
    OUTLINED_FUNCTION_33_5();

    __asm { BRAA            X4, X16 }
  }

  v17 = v14[v20];
  ++v13;
  if (!v17)
  {
    goto LABEL_8;
  }

  v13 = v20;
LABEL_12:
  v21 = __clz(__rbit64(v17));
  v17 &= v17 - 1;
  v22 = v21 | (v13 << 6);
  v23 = (v11[6] + 16 * v22);
  v24 = *v23;
  v25 = v23[1];
  v26 = *(v11[7] + 8 * v22);

  v73 = v26;
  if (![v73 value])
  {
    v35 = sub_1DCB21038(v24, v25);
    v37 = v36;

    if (v37)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v74 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
      v19 = v72;
      sub_1DD0DEDCC();

      sub_1DCB20B30((v12[7] + 32 * v35), (v1 + 168));
      sub_1DD0DEDEC();
    }

    else
    {

      *(v1 + 184) = 0u;
      *(v1 + 168) = 0u;
    }

    sub_1DCB16D50(v1 + 168, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_7;
  }

  sub_1DD0DEA6C();
  swift_unknownObjectRelease();
  sub_1DCB20B30((v1 + 136), (v1 + 200));
  swift_isUniquelyReferenced_nonNull_native();
  v74 = v12;
  v27 = v24;
  v28 = sub_1DCB21038(v24, v25);
  if (__OFADD__(v12[2], (v29 & 1) == 0))
  {
    __break(1u);
    goto LABEL_44;
  }

  v30 = v28;
  v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2750, &qword_1DD0E6878);
  if ((sub_1DD0DEDCC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v32 = sub_1DCB21038(v27, v25);
  if ((v31 & 1) == (v33 & 1))
  {
    v30 = v32;
LABEL_17:
    v19 = v72;
    if (v31)
    {

      v12 = v74;
      v34 = (v74[7] + 32 * v30);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v1 = v71;
      sub_1DCB20B30((v71 + 200), v34);

      v14 = v11 + 8;
      goto LABEL_7;
    }

    v12 = v74;
    v74[(v30 >> 6) + 8] |= 1 << v30;
    v38 = (v12[6] + 16 * v30);
    *v38 = v27;
    v38[1] = v25;
    v1 = v71;
    sub_1DCB20B30((v71 + 200), (v12[7] + 32 * v30));

    v39 = v12[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (!v40)
    {
      v12[2] = v41;
      v14 = v11 + 8;
      goto LABEL_7;
    }

LABEL_44:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_33_5();

    sub_1DD0DF12C();
  }
}

uint64_t sub_1DCC56A10()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v4 = *(v1 + 112);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCC56B70()
{
  sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_16();
  if (qword_1EDE4EC80 != -1)
  {
    OUTLINED_FUNCTION_14_5(&qword_1EDE4EC80);
  }

  v2 = sub_1DD0DD88C();
  __swift_project_value_buffer(v2, qword_1EDE57DD0);
  sub_1DD0DCF8C();
}

void sub_1DCC56CC0(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  if ([v4 isActive])
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6EC();
    v8 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_42_3();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_35_9();
      v17 = swift_slowAlloc();
      *v10 = 136315394;
      v11 = sub_1DD0DF2AC();
      v13 = sub_1DCB10E9C(v11, v12, &v17);

      *(v10 + 4) = v13;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1DCB10E9C(0x756C615674697865, 0xEB00000000292865, &v17);
      _os_log_impl(&dword_1DCAFC000, v6, v7, "%s.%s called while engine is still active.", v10, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v14 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v14);
    }
  }

  v15 = [v4 getExitValue];
  v16 = sub_1DD0DDE6C();

  *a3 = v16;
}

id sub_1DCC56E98()
{
  v1 = v0[2];
  if (v0[12])
  {
    v2 = sub_1DD0DDF8C();
    v3 = sub_1DD0DDF8C();
    v4 = [v1 load:v2 withFlowId:v3];
  }

  else
  {
    v5 = v0[10];
    v3 = sub_1DD0DDF8C();
    v4 = [v1 load:v5 withId:v3];
  }

  return v4;
}

uint64_t sub_1DCC56F3C()
{
  OUTLINED_FUNCTION_39();
  *(v0 + 48) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 56) = v2;
  *v2 = v3;
  v2[1] = sub_1DCC56FDC;
  OUTLINED_FUNCTION_62_1();

  return sub_1DCC5725C(v4, v5);
}

uint64_t sub_1DCC56FDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCC570F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v22 = v18[8];
  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  if (OUTLINED_FUNCTION_86_4())
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    *v22 = 136315138;
    swift_getErrorValue();
    v26 = sub_1DD0DF18C();
    v28 = sub_1DCB10E9C(v26, v27, &a10);

    *(v22 + 1) = v28;
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v34 = v18[6];
  *v34 = v18[8];
  *(v34 + 8) = 0;
  *(v34 + 88) = 3;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_48();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

uint64_t sub_1DCC5725C(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  v3[44] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCC572A0);
}

uint64_t sub_1DCC5765C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 400) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC57B74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC5808C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 448) = v10;
    *v10 = v5;
    v10[1] = sub_1DCC581E0;

    return sub_1DCC561FC();
  }
}

uint64_t sub_1DCC581E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC582C4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 424);
  v2 = *(v0 + 328);

  sub_1DCC5CE90((v0 + 16));
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  *v2 = *(v0 + 288);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  sub_1DCAFF9E8((v0 + 248), v2 + 40);
  *(v2 + 80) = v1;
  *(v2 + 88) = 0;
  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCC58350()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 464) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 472) = v10;
    *v10 = v5;
    v10[1] = sub_1DCC584A0;

    return sub_1DCC561FC();
  }
}

uint64_t sub_1DCC584A0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC58584()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 328);

  sub_1DCC5CE90((v0 + 16));
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  *v1 = *(v0 + 208);
  *(v1 + 16) = v3;
  *(v1 + 32) = v2;
  *(v1 + 88) = 1;
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1DCC58600()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCC586E4()
{
  OUTLINED_FUNCTION_41();
  v36 = v0;
  v2 = [*(v0[43] + 16) getRemainingResponses];
  sub_1DCB10E5C(0, &qword_1ECCA2740, 0x1E69A8E00);
  OUTLINED_FUNCTION_75_0();
  v3 = sub_1DD0DE2EC();
  v0[61] = v3;

  if (sub_1DCB08B14(v3))
  {
    swift_bridgeObjectRetain_n();
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v5 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_35_9();
      v35 = swift_slowAlloc();
      *v7 = 136315650;
      v8 = OUTLINED_FUNCTION_105_4();
      sub_1DCB10E9C(v8, v9, &v35);
      OUTLINED_FUNCTION_92_1();
      *(v7 + 4) = v1;
      *(v7 + 12) = 2080;
      OUTLINED_FUNCTION_57_0();
      *(v7 + 14) = sub_1DCB10E9C(0xD00000000000001DLL, v10, &v35);
      *(v7 + 22) = 2048;
      v11 = sub_1DCB08B14(v3);

      *(v7 + 24) = v11;

      OUTLINED_FUNCTION_68_5();
      _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390](v17);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390](v18);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[63] = v30;
    *v30 = v31;
    v30[1] = sub_1DCC58A8C;
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_121();

    return sub_1DCC5725C(v32, v33);
  }

  else
  {

    v19 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v20 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v22);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v23, v24, "Finished processing responses. Returning complete");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[62] = v25;
    *v25 = v26;
    v25[1] = sub_1DCC589AC;
    OUTLINED_FUNCTION_121();

    return sub_1DCC5B740(v27);
  }
}

uint64_t sub_1DCC589AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1DCC58A8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCC58B88()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC58BE4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC58C40()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 248));
  sub_1DCC5CE90((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC58CAC()
{
  OUTLINED_FUNCTION_42();

  sub_1DCC5CE90((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCC58D10()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  type metadata accessor for PresentationElements(0);
  v1[6] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC58DB8()
{
  v34 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = sub_1DD0DD8FC();
  *(v0 + 56) = OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  v4 = v2;
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 24);
    v8 = OUTLINED_FUNCTION_83();
    v32 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = OUTLINED_FUNCTION_105_4();
    sub_1DCB10E9C(v9, v10, &v32);
    OUTLINED_FUNCTION_92_1();
    *(v8 + 4) = v1;
    *(v8 + 12) = 2080;
    OUTLINED_FUNCTION_57_0();
    *(v8 + 14) = sub_1DCB10E9C(0xD000000000000020, v11, &v32);
    *(v8 + 22) = 2080;
    v12 = [v7 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    v15 = OUTLINED_FUNCTION_87_3(v13, v14, &v32);

    *(v8 + 24) = v15;
    OUTLINED_FUNCTION_13_12();
    _os_log_impl(v16, v17, v18, v19, v20, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v21 = [*(v0 + 24) dialogPhase];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_84_3();
  v22 = OUTLINED_FUNCTION_20();
  sub_1DCCE6DBC(v22, v23, v24);

  v25 = v33;
  if (v33)
  {
    v26 = v32;
  }

  else
  {
    if (qword_1EDE4EBA8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EDE4EBB0;
  }

  *(v0 + 64) = v26;
  *(v0 + 72) = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 80) = v27;
  *v27 = v28;
  v27[1] = sub_1DCC59060;
  v29 = *(v0 + 48);
  v30 = *(v0 + 24);

  return sub_1DCC5A924(v29, v30);
}

uint64_t sub_1DCC59060()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC59160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_51_4();
  a22 = v24;
  v27 = *(*(v24 + 32) + 16);
  v28 = [*(v24 + 24) inputGroupId];
  if (!v28)
  {
    sub_1DD0DDFBC();
    v28 = sub_1DD0DDF8C();
  }

  v29 = [v27 getInputGroup_];

  if (v29)
  {
    v30 = *(v24 + 72);
    v32 = *(v24 + 24);
    v31 = *(v24 + 32);
    a11 = *(v24 + 64);
    a12 = v30;
    [v29 listenAfterSpeaking];
    [v32 sensitiveData];
    [v29 immersiveExperience];
    OUTLINED_FUNCTION_92_2();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v29;
    v33[4] = v31;
    v34 = v32;
    v35 = v29;
    sub_1DD0DCF8C();
  }

  v36 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v37 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v39);
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v40, v41, "No input group found for DialogResponse. Will continue processing.");
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v42 = *(v24 + 88);
  v44 = *(v24 + 64);
  v43 = *(v24 + 72);
  v45 = *(v24 + 48);
  v46 = *(v24 + 24);

  a11 = v44;
  a12 = v43;
  sub_1DCBB1498(&a11, v45, 0, [v46 sensitiveData], 0, 0, 0);
  sub_1DCC5DD68(v45);

  if (v42)
  {

    OUTLINED_FUNCTION_29();
  }

  else
  {
    v47 = *(v24 + 16);
    *v47 = 0;
    v47[1] = 0;
    v47[2] = 0;
    v47[3] = 1;
    v47[4] = 0;
    v47[5] = 0;

    OUTLINED_FUNCTION_43();
  }

  OUTLINED_FUNCTION_73();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1DCC59424()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCC59480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCC594A4, 0, 0);
}

uint64_t sub_1DCC594A4()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 112);
  v2 = [*(v0 + 96) response_id];
  sub_1DD0DDFBC();
  v4 = v3;

  *(v0 + 120) = v4;
  v5 = [*(v1 + 16) getEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  OUTLINED_FUNCTION_124();
  v6 = sub_1DD0DE57C();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2720, &qword_1DD0E6858);
  *(v0 + 48) = OUTLINED_FUNCTION_34_9(&qword_1ECCA2728);
  *(v0 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_49_5(v7);

  return sub_1DCE06FC8();
}

uint64_t sub_1DCC595F8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

void sub_1DCC5973C()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_83();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1DD0DF18C();
    v12 = sub_1DCB10E9C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "Unable to make SystemDialogAct: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v13 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v13);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v14);
  }

  else
  {
  }

  v15 = v0[11];
  v16 = sub_1DD0DB6EC();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCC598E8(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v3[50] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCC5992C);
}

uint64_t sub_1DCC5992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v25 = *(v22 + 384);
  v26 = sub_1DD0DD8FC();
  *(v22 + 408) = OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
  v27 = v25;
  v28 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();

  v29 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
  if (OUTLINED_FUNCTION_86_4())
  {
    v30 = *(v22 + 384);
    v31 = OUTLINED_FUNCTION_83();
    a11 = swift_slowAlloc();
    *v31 = 136315650;
    v32 = sub_1DD0DF2AC();
    v34 = sub_1DCB10E9C(v32, v33, &a11);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD1157D0, &a11);
    *(v31 + 22) = 2080;
    v35 = [v30 name];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    v29 = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
    sub_1DCB10E9C(2080, v34, &a11);
    OUTLINED_FUNCTION_88_4();
    *(v31 + 24) = v35;
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v36, v37, v38, v39, v40, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v41 = [*(v22 + 384) v29[83]];
  sub_1DD0DDFBC();

  OUTLINED_FUNCTION_124();
  sub_1DCC18004();

  if (*(v22 + 320))
  {
    v42 = *(v22 + 384);
    sub_1DCAFF9E8((v22 + 296), v22 + 256);
    *(v22 + 416) = sub_1DCC6A4A0(0xD000000000000015, 0x80000001DD1157B0, MEMORY[0x1E69E7CC8]);
    __swift_project_boxed_opaque_existential_1((v22 + 256), *(v22 + 280));
    v43 = [v42 parameters];
    *(v22 + 424) = sub_1DD0DDE6C();

    OUTLINED_FUNCTION_25_1();
    v86 = v44 + *v44;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v22 + 432) = v45;
    *v45 = v46;
    v45[1] = sub_1DCC59E2C;
    OUTLINED_FUNCTION_76();

    return v51(v47, v48, v49, v50, v51, v52, v53, v54, a9, v86, a11, a12, a13, a14);
  }

  else
  {
    v56 = *(v22 + 384);
    sub_1DCB16D50(v22 + 296, &qword_1ECCA2730, &qword_1DD0E6860);
    v57 = v56;
    v58 = sub_1DD0DD8EC();
    v59 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v22 + 384);
      OUTLINED_FUNCTION_42_3();
      v61 = swift_slowAlloc();
      OUTLINED_FUNCTION_35_9();
      a11 = swift_slowAlloc();
      *v61 = 136315394;
      v62 = [v60 response_id];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_64_2();

      OUTLINED_FUNCTION_83_3(v63, v64, v65, v66);
      OUTLINED_FUNCTION_88_4();
      OUTLINED_FUNCTION_37_10();
      v67 = [v60 v29[83]];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_61_4();

      v70 = OUTLINED_FUNCTION_87_3(v68, v69, &a11);

      *(v61 + 14) = v70;
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v71, v72, v73, v74, v75, 0x16u);
      OUTLINED_FUNCTION_60_1();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v76 = *(v22 + 384);
    v77 = *(v22 + 376);
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 16) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 40) = 1;
    sub_1DCC5A3E4(v76, v22 + 16, v77);
    sub_1DCC5CE90((v22 + 16));
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_76();

    return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1DCC59E2C()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCC59F60()
{
  OUTLINED_FUNCTION_33();
  sub_1DCC5CEC0(v0 + 160, v0 + 208);
  switch(*(v0 + 248))
  {
    case 1:
      sub_1DCAFF9E8((v0 + 208), v0 + 336);
      v48 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v49 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v51);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v52, v53, "BehaviorResponsHandler elected to execute a flow. Pushing and waiting for response.");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v54 = *(v0 + 384);

      v55 = [v54 inputGroupId];
      sub_1DD0DDFBC();
      OUTLINED_FUNCTION_84_3();

      OUTLINED_FUNCTION_24_10();
      if (v56)
      {
        v57 = sub_1DD0DD8EC();
        sub_1DD0DE6EC();
        v58 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v60);
          OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v61, v62, "BehaviorResponse defined an input group but is attempting to execute a Flow. InputGroup ignored.");
          OUTLINED_FUNCTION_18();
          MEMORY[0x1E12A8390]();
        }
      }

      v63 = *(v0 + 416);
      v65 = *(v0 + 368);
      v64 = *(v0 + 376);
      v66 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 336), v66);
      sub_1DCC05848(v66, v65, v64);
      sub_1DCC5CF1C(v0 + 160);
      v64[5] = v63;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
      break;
    case 2:

      v28 = *(v0 + 208);
      v29 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v30 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v32);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v33, v34, v35, v36, v37, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v38 = *(v0 + 384);
      v39 = *(v0 + 376);

      sub_1DCDA0B44(v28);

      *(v0 + 64) = 0;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = 1;
      *(v0 + 96) = 0;
      *(v0 + 104) = 0;
      sub_1DCC5A3E4(v38, v0 + 64, v39);
      v40 = (v0 + 64);
      goto LABEL_17;
    case 3:

      v41 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v43);
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v44, v45, "BehaviorResponsHandler is complete.");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v46 = *(v0 + 384);
      v47 = *(v0 + 376);

      *(v0 + 112) = 0;
      *(v0 + 120) = 0;
      *(v0 + 128) = 0;
      *(v0 + 136) = 1;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      sub_1DCC5A3E4(v46, v0 + 112, v47);
      v40 = (v0 + 112);
LABEL_17:
      sub_1DCC5CE90(v40);
      sub_1DCC5CF1C(v0 + 160);
      break;
    default:
      v1 = *(v0 + 224);
      v2 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v3 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v5);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v6, v7, "BehaviorResponsHandler elected to execute a flow with DirectInvocation. Pushing and waiting for response.");
        v8 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v8);
      }

      v9 = *(v0 + 384);

      v10 = [v9 inputGroupId];
      v11 = sub_1DD0DDFBC();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = sub_1DD0DD8EC();
        sub_1DD0DE6EC();
        v16 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_97_0(v18);
          OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v19, v20, "BehaviorResponse defined an input group but is attempting to execute a DirectAction. InputGroup ignored.");
          v21 = OUTLINED_FUNCTION_11_3();
          MEMORY[0x1E12A8390](v21);
        }
      }

      v22 = *(v0 + 416);
      v23 = *(v0 + 376);
      type metadata accessor for FlowLocatorWrapper();
      swift_allocObject();
      v24 = OUTLINED_FUNCTION_20();
      v27 = sub_1DCC5DBE0(v24, v25, v1, v26);
      v23[3] = type metadata accessor for DirectInvocationExecutingFlow();
      v23[4] = &off_1EECFCB70;
      *v23 = v27;
      sub_1DCC5CF1C(v0 + 160);
      v23[5] = v22;
      break;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  OUTLINED_FUNCTION_43();

  return v67();
}

uint64_t sub_1DCC5A388()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCC5A3E4(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v9 = *(v3 + 16);
  v10 = [a1 inputGroupId];
  if (!v10)
  {
    sub_1DD0DDFBC();
    v10 = sub_1DD0DDF8C();
  }

  v11 = [v9 getInputGroup_];

  if (v11)
  {
    [v11 listenAfterSpeaking];
    OUTLINED_FUNCTION_92_2();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = v11;
    v12[4] = v3;
    v13 = a1;
    v14 = v11;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v15 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
  v16 = a1;
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    MEMORY[0] = 136315138;
    v19 = [v16 response_id];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_64_2();

    sub_1DCB10E9C(v4, v5, &v20);
    OUTLINED_FUNCTION_88_4();
    MEMORY[4] = v19;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "No input group found for behaviorResponse %s", 0, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  sub_1DCC5CD58(a2, a3);
}

uint64_t sub_1DCC5A668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCC5A68C, 0, 0);
}

uint64_t sub_1DCC5A68C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 112);
  v2 = [*(v0 + 96) response_id];
  sub_1DD0DDFBC();
  v4 = v3;

  *(v0 + 120) = v4;
  v5 = [*(v1 + 16) getEvents];
  sub_1DCB10E5C(0, &qword_1ECCA2710, 0x1E69A8DE0);
  sub_1DCC5CE28();
  OUTLINED_FUNCTION_124();
  v6 = sub_1DD0DE57C();

  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2720, &qword_1DD0E6858);
  *(v0 + 48) = OUTLINED_FUNCTION_34_9(&qword_1ECCA2728);
  *(v0 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_49_5(v7);

  return sub_1DCE06FC8();
}

uint64_t sub_1DCC5A7E0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCC5A924(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC5A940);
}

uint64_t sub_1DCC5A940()
{
  v3 = [*(v2 + 24) catId];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_84_3();

  OUTLINED_FUNCTION_24_10();
  if (v4 || (v5 = [*(v2 + 24) patternId], sub_1DD0DDFBC(), OUTLINED_FUNCTION_84_3(), , OUTLINED_FUNCTION_24_10(), v6) || (v52 = objc_msgSend(*(v2 + 24), sel_text), sub_1DD0DDFBC(), OUTLINED_FUNCTION_84_3(), , OUTLINED_FUNCTION_24_10(), !v53))
  {
    v7 = [*(v2 + 24) patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_84_3();

    v8 = v0 & 0xFFFFFFFFFFFFLL;
    if ((v1 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v1) & 0xF;
    }

    if (!v8)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v34 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v36);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v37, v38, "Building PresentationElements from CAT");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v40 = *(v2 + 24);
      v39 = *(v2 + 32);

      __swift_project_boxed_opaque_existential_1((v39 + 24), *(v39 + 48));
      v41 = [v40 response_id];
      sub_1DD0DDFBC();
      v43 = v42;

      *(v2 + 40) = v43;
      v44 = [v40 catId];
      sub_1DD0DDFBC();
      v46 = v45;

      *(v2 + 48) = v46;
      v47 = [v40 catParameters];
      *(v2 + 56) = sub_1DD0DDE6C();

      v48 = [v40 visualParameters];
      *(v2 + 64) = sub_1DD0DDE6C();

      OUTLINED_FUNCTION_24_0();
      v86 = v49 + *v49;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v2 + 72) = v50;
      *v50 = v51;
      v50[1] = sub_1DCC5B3DC;

      __asm { BRAA            X8, X16 }
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v9, qword_1EDE57E00);
    v10 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v11 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v13);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v14, v15, "Building PresentationElements from Pattern");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v17 = *(v2 + 24);
    v16 = *(v2 + 32);

    v18 = v16[6];
    v19 = v16[7];
    __swift_project_boxed_opaque_existential_1(v16 + 3, v18);
    v20 = [v17 response_id];
    v21 = sub_1DD0DDFBC();
    v23 = v22;

    *(v2 + 88) = v23;
    v24 = [v17 patternId];
    sub_1DD0DDFBC();
    OUTLINED_FUNCTION_61_4();

    *(v2 + 96) = &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct;
    v25 = [v17 patternParameters];
    v26 = sub_1DD0DDE6C();
    *(v2 + 104) = v26;

    OUTLINED_FUNCTION_24_0();
    v87 = (v27 + *v27);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v2 + 112) = v28;
    *v28 = v29;
    v28[1] = sub_1DCC5B520;
    v30 = *(v2 + 16);

    return v87(v30, v21, v23, v20, &_OBJC_LABEL_PROTOCOL___SIRINLUSystemDialogAct, v26, v18, v19);
  }

  else
  {
    if (*(*(v2 + 32) + 184) != 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v83 = *(v2 + 24);
      v84 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v84, qword_1EDE57E00);
      v85 = v83;
      OUTLINED_FUNCTION_94_2();
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v54 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
    v55 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v56 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v58);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v59, v60, "DialogResponse does not have a configured pattern Id");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v61 = *(v2 + 24);

    v62 = [objc_allocWithZone(MEMORY[0x1E699A0C0]) init];
    v63 = [v61 text];
    if (!v63)
    {
      sub_1DD0DDFBC();
      v63 = sub_1DD0DDF8C();
    }

    v64 = *(v2 + 24);
    v65 = OUTLINED_FUNCTION_76_0();
    [v65 v66];

    v67 = [v64 text];
    if (!v67)
    {
      sub_1DD0DDFBC();
      v67 = sub_1DD0DDF8C();
    }

    v68 = *(v2 + 16);
    v69 = *(v2 + 24);
    v70 = OUTLINED_FUNCTION_76_0();
    [v70 v71];

    sub_1DD0DEC1C();

    v72 = [v69 text];
    sub_1DD0DDFBC();

    v73 = OUTLINED_FUNCTION_124();
    MEMORY[0x1E12A6780](v73);

    v74 = sub_1DD0DDF8C();
    [v62 setFullPrint_];

    v75 = sub_1DD0DDF8C();

    v76 = OUTLINED_FUNCTION_76_0();
    [v76 v77];

    v78 = [objc_allocWithZone(MEMORY[0x1E699A0C8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    OUTLINED_FUNCTION_92_2();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1DD0E15D0;
    *(v79 + 32) = v62;
    v80 = sub_1DCB10E5C(0, &qword_1EDE46168, 0x1E699A0C0);
    v81 = v62;
    OUTLINED_FUNCTION_124();
    sub_1DD0DE2DC();
    OUTLINED_FUNCTION_94_2();

    [v78 setDialog_];

    *v68 = v78;
    type metadata accessor for PresentationElements.PresentationElementsBase(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_43();

    return v82();
  }
}

uint64_t sub_1DCC5B3DC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1DCC5B520()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1DCC5B650()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCC5B6C0()
{
  OUTLINED_FUNCTION_39();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCC5B740(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCC5B758);
}

uint64_t sub_1DCC5B758()
{
  v14 = v0;
  v1 = *(v0[17] + 16);
  v0[18] = v1;
  v2 = [v1 getUndo];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 identifier];
    v5 = sub_1DD0DDFBC();
    v7 = v6;

    v8 = [v3 userData];
    v9 = sub_1DD0DDE6C();

    v13[0] = v5;
    v13[1] = v7;
    v13[2] = v9;
    sub_1DCBB20BC(v13);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[19] = v10;
  *v10 = v11;
  v10[1] = sub_1DCC5B8C8;

  return sub_1DCBB2154();
}

uint64_t sub_1DCC5B8C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCC5B9C4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 88);
  if ([v1 isActive])
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v3 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v5 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v5, v6))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      v12 = 1;
LABEL_10:
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      goto LABEL_12;
    }

    v12 = 1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v14 = OUTLINED_FUNCTION_19_2();
    v12 = 2;
    if (os_log_type_enabled(v14, v15))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_13_12();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      goto LABEL_10;
    }
  }

LABEL_12:
  v21 = *(v0 + 128);

  v22 = *(v0 + 16);
  v23 = *(v0 + 32);
  *(v21 + 32) = *(v0 + 48);
  *v21 = v22;
  *(v21 + 16) = v23;
  *(*(v0 + 128) + 88) = v12;
  OUTLINED_FUNCTION_29();

  return v24();
}

uint64_t sub_1DCC5BB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_145();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v22 = v18[20];
  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = v22;
  v25 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_86_4())
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    *v22 = 136315138;
    swift_getErrorValue();
    v26 = sub_1DD0DF18C();
    v28 = sub_1DCB10E9C(v26, v27, &a10);

    *(v22 + 1) = v28;
    OUTLINED_FUNCTION_22_1();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v34 = v18[16];
  *v34 = v18[20];
  *(v34 + 8) = 0;
  *(v18[16] + 88) = 3;
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_48();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10);
}

unint64_t sub_1DCC5BCDC()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[5])
  {
    sub_1DD0DEC1C();

    strcpy(v5, ".unsupported(");
    HIWORD(v5[1]) = -4864;
    MEMORY[0x1E12A6780](v2, v1);
    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return v5[0];
  }

  else
  {
    sub_1DD0DEC1C();

    v4 = AuthoredFlowDescriptor.description.getter();
    MEMORY[0x1E12A6780](v4);

    MEMORY[0x1E12A6780](41, 0xE100000000000000);
    return 0xD000000000000012;
  }
}

uint64_t sub_1DCC5BE00()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  sub_1DCB16D50(v0 + 136, &qword_1ECCA26E0, &qword_1DD0E64F8);

  return v0;
}

uint64_t sub_1DCC5BE94()
{
  sub_1DCC5BE00();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCC5BF54(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t (*a8)(void *, uint64_t, unint64_t))
{
  v24 = a2();
  v13 = v12;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  sub_1DCB17CA0(a1, v27);

  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_42_3();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    v28 = swift_slowAlloc();
    *v17 = 136315394;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v25[0] = swift_allocObject();
    sub_1DCB17CA0(v27, v25[0] + 16);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v18 = sub_1DD0DF2AC();
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v21 = sub_1DCB10E9C(v18, v20, &v28);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v24;
    *(v17 + 14) = sub_1DCB10E9C(v24, v13, &v28);
    _os_log_impl(&dword_1DCAFC000, v15, v16, "Mapping standard type %s to '%s'", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v22 = v24;
  }

  sub_1DCB17CA0(a1, v27);
  return a8(v27, v22, v13);
}

void sub_1DCC5C1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v5 = v4;
  sub_1DCC18004();
  v6 = v24[3];
  sub_1DCB16D50(v24, &qword_1ECCA27A8, &qword_1DD0E68C8);
  if (v6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);

    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      v12 = sub_1DCB10E9C(v3, v5, v24);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "An extension mapped to '%s' already exists. Custom extension will not be used.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A8390](v11, -1, -1);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    sub_1DCB17CA0(a1, v24);

    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v16 = 136315394;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27A0, &qword_1DD0E68C0);
      v22[0] = swift_allocObject();
      sub_1DCB17CA0(v24, v22[0] + 16);
      __swift_project_boxed_opaque_existential_1(v22, v23);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v17 = sub_1DD0DF2AC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v20 = sub_1DCB10E9C(v17, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1DCB10E9C(v3, v5, &v25);
      _os_log_impl(&dword_1DCAFC000, v14, v15, "Mapping custom type %s to '%s'", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v21, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    sub_1DCB17CA0(a1, v24);
    sub_1DD06E0F8();
  }
}

void sub_1DCC5C584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v5 = v4;
  sub_1DCC18004();
  v6 = v24[3];
  sub_1DCB16D50(v24, &qword_1ECCA27B8, qword_1DD10DE10);
  if (v6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);

    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      v12 = sub_1DCB10E9C(v3, v5, v24);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "An extension mapped to '%s' already exists. Custom extension will not be used.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A8390](v11, -1, -1);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    sub_1DCB17CA0(a1, v24);

    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v16 = 136315394;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27B0, &unk_1DD0E68D0);
      v22[0] = swift_allocObject();
      sub_1DCB17CA0(v24, v22[0] + 16);
      __swift_project_boxed_opaque_existential_1(v22, v23);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v17 = sub_1DD0DF2AC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v20 = sub_1DCB10E9C(v17, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1DCB10E9C(v3, v5, &v25);
      _os_log_impl(&dword_1DCAFC000, v14, v15, "Mapping custom type %s to '%s'", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v21, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    sub_1DCB17CA0(a1, v24);
    sub_1DD06E190();
  }
}

void sub_1DCC5C944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v5 = v4;
  sub_1DCC18004();
  v6 = v24[3];
  sub_1DCB16D50(v24, &qword_1ECCA2730, &qword_1DD0E6860);
  if (v6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);

    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      v12 = sub_1DCB10E9C(v3, v5, v24);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "An extension mapped to '%s' already exists. Custom extension will not be used.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E12A8390](v11, -1, -1);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    sub_1DCB17CA0(a1, v24);

    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v16 = 136315394;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA27C0, &unk_1DD0E68E0);
      v22[0] = swift_allocObject();
      sub_1DCB17CA0(v24, v22[0] + 16);
      __swift_project_boxed_opaque_existential_1(v22, v23);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v17 = sub_1DD0DF2AC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v20 = sub_1DCB10E9C(v17, v19, &v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1DCB10E9C(v3, v5, &v25);
      _os_log_impl(&dword_1DCAFC000, v14, v15, "Mapping custom type %s to '%s'", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v21, -1, -1);
      MEMORY[0x1E12A8390](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    sub_1DCB17CA0(a1, v24);
    sub_1DD06E228();
  }
}

unint64_t sub_1DCC5CD04()
{
  result = qword_1ECCA2708;
  if (!qword_1ECCA2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2708);
  }

  return result;
}

uint64_t sub_1DCC5CD90()
{
  OUTLINED_FUNCTION_39();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_63_2(v1);

  return sub_1DCC5A668(v3, v4, v5, v6);
}

unint64_t sub_1DCC5CE28()
{
  result = qword_1ECCA2718;
  if (!qword_1ECCA2718)
  {
    sub_1DCB10E5C(255, &qword_1ECCA2710, 0x1E69A8DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2718);
  }

  return result;
}

void *sub_1DCC5CF70(void *result, char *__dst, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (*(a4 + 48) + ((v15 << 12) | (v16 << 6)));
      v19 = v17[1];
      v18 = v17[2];
      v20 = *v17;
      *&v23[9] = *(v17 + 41);
      v22[1] = v19;
      *v23 = v18;
      v22[0] = v20;
      memmove(v11, v17, 0x39uLL);
      if (v14 == v10)
      {
        sub_1DCB32880(v22, v21);
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 64;
      result = sub_1DCB32880(v22, v21);
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DCC5D100(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB3AC();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v42 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v41 = &v34 - v14;
  v16 = a4 + 56;
  v15 = *(a4 + 56);
  v40 = -1 << *(a4 + 32);
  if (-v40 < 64)
  {
    v17 = ~(-1 << -v40);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  if (!a2)
  {
    v21 = 0;
    result = 0;
LABEL_22:
    v33 = ~v40;
    *a1 = a4;
    a1[1] = v16;
    a1[2] = v33;
    a1[3] = v21;
    a1[4] = v18;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a4 + 56;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = result;
    while (v20 < result)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        v16 = v36;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v18 = 0;
            result = v20;
            a1 = v35;
            goto LABEL_22;
          }

          v18 = *(v36 + 8 * v23);
          ++v21;
          if (v18)
          {
            v45 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v21;
LABEL_17:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = a4;
      v26 = *(a4 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v32 = v41;
      v31(v41, v30, v28);
      v31(a2, v32, v28);
      result = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v21 = v23;
        a1 = v35;
        v16 = v36;
        a4 = v25;
        goto LABEL_22;
      }

      a2 += v29;
      v21 = v23;
      a4 = v25;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DCC5D398(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DCC5D4F0(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DCC5D64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC5D670, 0, 0);
}

uint64_t sub_1DCC5D670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v55 = MEMORY[0x1E69E7CC8];

  v15 = OUTLINED_FUNCTION_76_0();
  sub_1DCC519FC(v15, v16, v17);
  OUTLINED_FUNCTION_5_20();
  v20 = v19 & v18;
  OUTLINED_FUNCTION_74_4();
  v22 = v21 >> 6;

  v23 = 0;
  while (v20)
  {
    v24 = v23;
LABEL_8:
    OUTLINED_FUNCTION_46_7(v24);
    __swift_project_boxed_opaque_existential_1((v14 + 16), *(v14 + 40));
    v25 = OUTLINED_FUNCTION_44_5();
    v27 = v26(v25);

    __swift_destroy_boxed_opaque_existential_1Tm((v14 + 16));
    if (v27)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v30 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_97_0(v32);
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v33, v34, "Parser indicates that it will produce an event for the current input. Will process input.");
        v35 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v35);
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v24 >= v22)
    {
      break;
    }

    v20 = *(v55 + 64 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_8;
    }
  }

  if (qword_1EDE4F900 == -1)
  {
    goto LABEL_15;
  }

LABEL_22:
  OUTLINED_FUNCTION_1_2();
  swift_once();
LABEL_15:
  v36 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v36, qword_1EDE57E00);
  v37 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v38 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v40);
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v41, v42, v43, v44, v45, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

LABEL_18:
  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_76();

  return v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, v55, a11, a12, a13, a14);
}