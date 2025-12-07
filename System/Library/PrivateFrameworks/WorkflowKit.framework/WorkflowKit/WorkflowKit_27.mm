id sub_1CA52D268(void *a1, void *a2, void *a3, char a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:a1 action:a2 metadata:a3 isAutoShortcut:a4 & 1];

  return v7;
}

uint64_t sub_1CA52D2E0()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 144) = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_1(v2);

  return sub_1CA5F9B38(v3);
}

uint64_t sub_1CA52D36C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA52D48C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_23();
  v2 = v1[20];
  v3 = [objc_allocWithZone(WFWorkflow) init];
  v1[21] = v3;
  [v3 addAction_];
  WFExecutableAppShortcut.name.getter();
  v4 = sub_1CA94C368();

  [v3 setName_];

  v1[2] = v1;
  v1[3] = sub_1CA52D5D0;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  OUTLINED_FUNCTION_0_50(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_7_30();
  [v3 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1CA52D5D0()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA52D6A0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_93();
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v5))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(v0 + 160);
  [v2 setActionCount_];
  v8 = @"ShortcutSourceAppShortcut";
  [v2 setShortcutSource_];

  [v2 track];
  OUTLINED_FUNCTION_2_4();
  v10 = *(v0 + 168);

  return v9(v10);
}

uint64_t sub_1CA52D7EC()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 144) = v1;
  *(v0 + 152) = v2 & 1;
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_6_1(v3);

  return sub_1CA59FD08(v4);
}

uint64_t sub_1CA52D880()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA52D9A0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 168);
  v2 = [objc_allocWithZone(WFWorkflow) init];
  *(v0 + 176) = v2;
  [v2 addAction_];
  if (*(v0 + 152))
  {
    WFExecutableAppShortcut.name.getter();
  }

  else
  {
    v3 = [*(v0 + 144) name];
    sub_1CA94C3A8();
  }

  v4 = sub_1CA94C368();

  [v2 setName_];

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1CA52DB54;
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1CA44E498;
  *(v0 + 104) = &block_descriptor_46_0;
  *(v0 + 112) = v5;
  [v2 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1CA52DB54()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA52DC24()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 176);
  v2 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  OUTLINED_FUNCTION_93();
  v4 = sub_1CA94C658();

  v5 = sub_1CA25B410(v4);

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v5))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = *(v0 + 168);
  [v2 setActionCount_];
  v8 = @"ShortcutSourceAppShortcut";
  [v2 setShortcutSource_];

  [v2 track];
  OUTLINED_FUNCTION_2_4();
  v10 = *(v0 + 176);

  return v9(v10);
}

uint64_t sub_1CA52DD70()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 144) = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_1(v2);

  return sub_1CA5B9724(v3);
}

uint64_t sub_1CA52DDFC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_5();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_90();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1CA52DF1C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_23();
  v2 = v1[20];
  v3 = [objc_allocWithZone(WFWorkflow) init];
  v1[21] = v3;
  [v3 addAction_];
  WFExecutableAppShortcut.name.getter();
  v4 = sub_1CA94C368();

  [v3 setName_];

  v1[2] = v1;
  v1[3] = sub_1CA52E060;
  swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  OUTLINED_FUNCTION_0_50(v5);
  v1[11] = 1107296256;
  OUTLINED_FUNCTION_7_30();
  [v3 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1CA52E060()
{
  OUTLINED_FUNCTION_0();
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA52E130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA27E524();
  *a1 = result;
  return result;
}

uint64_t sub_1CA52E188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446338, &qword_1CA98AFB8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1CA52E25C(v4);
}

uint64_t sub_1CA52E25C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446338, &qword_1CA98AFB8);
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446308, &unk_1CA98AE88);
  sub_1CA94A088();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void sub_1CA52E3B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1CA949C58();
    v8 = sub_1CA949F68();
    v9 = sub_1CA94CC08();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CA256000, v8, v9, "User shortcuts updated, injecting App Shortcuts", v10, 2u);
      MEMORY[0x1CCAA4BF0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = sub_1CA27E524();
    v12 = sub_1CA27BB44();
    v13 = sub_1CA27BF28(v11, v12);

    sub_1CA27C47C(v13);
  }
}

void *sub_1CA52E57C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CA949F78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1CA949C58();
    v8 = sub_1CA949F68();
    v9 = sub_1CA94CC08();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1CA256000, v8, v9, "App Shortcuts updated, processing update", v10, 2u);
      MEMORY[0x1CCAA4BF0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = sub_1CA278F60();
    sub_1CA279010(v11);
  }

  return result;
}

uint64_t sub_1CA52E718(int a1)
{
  v26 = a1;
  v1 = type metadata accessor for AutoShortcutAppSection(0);
  v25 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1CA27E524();
  v5 = 0;
  v6 = 0;
  v28 = *(result + 16);
  v29 = result;
  v27 = result + 32;
  while (1)
  {
    if (v5 == v28)
    {

      return v6;
    }

    if (v5 >= *(v29 + 16))
    {
      break;
    }

    v7 = (v27 + 40 * v5);
    v8 = v7[1];
    v9 = v7[2];
    v10 = v7[3];
    v11 = *(v10 + 16);
    v12 = (v9 >> 62) & 1;
    v30 = v7[4];
    v31 = v8;
    if (v11)
    {
      v13 = v25;
      v14 = v10 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v15 = 0;
      v16 = *(v13 + 72);
      do
      {
        result = sub_1CA53261C(v14, v3);
        v17 = *(*(v3 + 7) + 16);
        v18 = __OFADD__(v15, v17);
        v15 += v17;
        if (v18)
        {
          __break(1u);
          goto LABEL_36;
        }

        sub_1CA532680(v3);
        v14 += v16;
        --v11;
      }

      while (v11);
      v19 = v9 < 0 || (v9 & 0x4000000000000000) != 0;
      if ((v26 & 1) == 0)
      {
        if (v19)
        {
          goto LABEL_32;
        }

LABEL_26:
        v23 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_27;
      }

      if (v19)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v9 < 0)
      {
        LOBYTE(v12) = 1;
      }

      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if ((v26 & 1) == 0)
      {
        v15 = 0;
        if ((v12 & 1) == 0)
        {
          goto LABEL_26;
        }

LABEL_32:
        v23 = sub_1CA94D328();
LABEL_27:

        v22 = v15 + v23;
        if (__OFADD__(v15, v23))
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

      v15 = 0;
      if (v12)
      {
LABEL_24:
        result = sub_1CA94D328();
        goto LABEL_14;
      }
    }

    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
    v20 = v15 + result;
    if (__OFADD__(v15, result))
    {
      goto LABEL_39;
    }

    if (v30 >> 62)
    {
      v21 = sub_1CA94D328();
    }

    else
    {
      v21 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_40;
    }

LABEL_28:
    ++v5;
    v18 = __OFADD__(v6, v22);
    v6 += v22;
    if (v18)
    {
      goto LABEL_37;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1CA52E9E0()
{
  v0 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA949C58();
  v6 = sub_1CA949F68();
  v7 = sub_1CA94CBF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1CA256000, v6, v7, "Received LNAppShortcutsChanged notification, reloading App Shortcuts", v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  (*(v2 + 8))(v5, v0);
  return sub_1CA2737DC(0xD000000000000022, 0x80000001CA9C8EB0, 0, 0);
}

BOOL sub_1CA52EB88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }

  sub_1CA2786EC(v3, v2);
  sub_1CA2786EC(v4, v5);
  sub_1CA27BAF0();
  v6 = sub_1CA94D1D8();

  return v6 == -1;
}

uint64_t sub_1CA52EC80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }

  v6 = sub_1CA2786EC(v3, v2);
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = sub_1CA2786EC(v4, v5);
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  if (v8 == v12 && v9 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_1CA94D7F8();
  }

  return v15 & 1;
}

uint64_t sub_1CA52ED70()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  sub_1CA94C838();
  v1[4] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v4 = sub_1CA94C7C8();
  v1[5] = v4;
  v1[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA52EDF8, v4, v3);
}

uint64_t sub_1CA52EDF8()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_21_17(v1);

  return sub_1CA5F928C();
}

uint64_t sub_1CA52EE8C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[8] = v0;

  if (v0)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_1CA52F000;
  }

  else
  {
    v5[9] = v3;
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_1CA52EFA0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CA52EFA0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_1CA52F000()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA52F05C()
{
  OUTLINED_FUNCTION_14();
  v0[29] = v1;
  v0[30] = v2;
  v0[27] = v3;
  v0[28] = v4;
  sub_1CA94C838();
  v0[31] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v5 = sub_1CA94C7C8();
  v0[32] = v5;
  v0[33] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CA52F11C, v5, v6);
}

uint64_t sub_1CA52F11C()
{
  v1 = *(v0 + 232);
  v2 = [*(v0 + 216) identifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  objc_allocWithZone(MEMORY[0x1E69AC860]);
  sub_1CA94C218();
  v6 = sub_1CA334F5C(v3, v5, v1);
  *(v0 + 272) = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E69ACF58]) initWithOptions_];
  *(v0 + 280) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CA9813B0;
  *(v8 + 32) = v6;
  sub_1CA25B3D0(0, &qword_1EC446320, 0x1E69AC860);
  v9 = v6;
  v10 = sub_1CA94C648();

  *(v0 + 144) = 0;
  v11 = [v7 actionsWithFullyQualifiedIdentifiers:v10 error:v0 + 144];

  v12 = *(v0 + 144);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446328, qword_1CA98C970);
    sub_1CA94C1C8();
    v13 = v12;

    v14 = [v9 bundleIdentifier];
    sub_1CA94C3A8();

    v15 = sub_1CA323E30();

    if (v15 && (v16 = [v9 actionIdentifier], sub_1CA94C3A8(), v16, v17 = sub_1CA323E2C(), *(v0 + 288) = v17, , , v17))
    {
      v18 = *(v0 + 216);
      sub_1CA25B3D0(0, &qword_1EC4454E8, 0x1E69E0B98);
      *(v0 + 296) = sub_1CA52D268(v9, v18, v17, 1);
      *(v0 + 304) = [objc_opt_self() defaultDatabase];
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 208;
      *(v0 + 24) = sub_1CA52F5E8;
      v19 = swift_continuation_init();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
      *(v0 + 200) = v20;
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1CA320A2C;
      *(v0 + 168) = &block_descriptor_20;
      *(v0 + 176) = v19;
      OUTLINED_FUNCTION_26_17(v20, sel_createWorkflowWithEnvironment_database_completionHandler_);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    else
    {

      OUTLINED_FUNCTION_2_4();

      return v21(0);
    }
  }

  else
  {
    v22 = v12;

    sub_1CA948AD8();

    swift_willThrow();
    OUTLINED_FUNCTION_5();

    return v23();
  }
}

uint64_t sub_1CA52F5E8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 312) = v4;
  v5 = v3[33];
  v6 = v3[32];
  if (v4)
  {
    v7 = sub_1CA52FACC;
  }

  else
  {
    v7 = sub_1CA52F73C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA52F73C()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 304);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  *(v0 + 320) = v3;

  if (v2)
  {
    v4 = [*(v0 + 224) localizedPhrase];
    sub_1CA94C3A8();

    v5 = sub_1CA94C368();
  }

  else
  {
    v5 = 0;
  }

  [v3 setName_];

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_1CA52F8EC;
  v6 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1CA44E498;
  *(v0 + 168) = &block_descriptor_9;
  *(v0 + 176) = v6;
  [v3 configureAsSingleStepShortcutIfNecessary_];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1CA52F8EC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  *v1 = v0;
  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1CA52FA18, v4, v3);
}

uint64_t sub_1CA52FA18()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_9_2();

  return v6(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1CA52FACC()
{
  v1 = v0[38];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];

  swift_willThrow();

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA52FB94()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_10_23();
  v0[2] = sub_1CA94C838();
  v0[3] = sub_1CA94C828();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_4_41(v1);
  OUTLINED_FUNCTION_9_2();

  return sub_1CA52F05C();
}

uint64_t sub_1CA52FC3C()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 40) = v0;

  if (v0)
  {
    v6 = sub_1CA94C7C8();
    v8 = v7;
    v9 = sub_1CA52FE10;
  }

  else
  {
    *(v4 + 48) = v3;
    v6 = sub_1CA94C7C8();
    v8 = v10;
    v9 = sub_1CA52FDB0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1CA52FDB0()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1CA52FE10()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v0();
}

uint64_t sub_1CA52FE6C()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  sub_1CA94C838();
  v1[4] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v4 = sub_1CA94C7C8();
  v1[5] = v4;
  v1[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CA52FEF4, v4, v3);
}

uint64_t sub_1CA52FEF4()
{
  OUTLINED_FUNCTION_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_21_17(v1);

  return sub_1CA52D2E0();
}

uint64_t sub_1CA52FF9C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  v5[8] = v0;

  if (v0)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_1CA532EB0;
  }

  else
  {
    v5[9] = v3;
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_1CA532EAC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CA5300B0()
{
  OUTLINED_FUNCTION_0();
  v0[19] = v1;
  sub_1CA94C838();
  v0[20] = OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_87();
  v3 = sub_1CA94C7C8();
  v0[21] = v3;
  v0[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CA530138, v3, v2);
}

uint64_t sub_1CA530138()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16_23();
  v2 = v0[19];
  sub_1CA25B3D0(0, &qword_1EC446330, 0x1E69E0A50);
  v0[23] = sub_1CA5304D8(v2, [objc_allocWithZone(MEMORY[0x1E69E0A30]) initWithSurface_]);
  v0[24] = [objc_opt_self() defaultDatabase];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA5302B4;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4454F0, qword_1CA98AEC0);
  v5 = OUTLINED_FUNCTION_0_50(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1CA320A2C;
  v0[13] = &block_descriptor_16_0;
  v0[14] = v3;
  OUTLINED_FUNCTION_26_17(v5, sel_createWorkflowWithEnvironment_database_completionHandler_);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1CA5302B4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 200) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_1CA530448;
  }

  else
  {
    v7 = sub_1CA5303D8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1CA5303D8()
{
  OUTLINED_FUNCTION_0();
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[18];
  OUTLINED_FUNCTION_2_4();

  return v4(v3);
}

uint64_t sub_1CA530448()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];

  swift_willThrow();

  OUTLINED_FUNCTION_2_4();

  return v4(0);
}

id sub_1CA5304D8(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAction:a1 context:a2];

  return v4;
}

uint64_t sub_1CA530534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = sub_1CA27E524();
  v6 = (v15 + 64);
  v7 = *(v15 + 16) + 1;
  while (1)
  {
    if (!--v7)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v6 - 4);
    v8 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    if (v9 == a1 && v8 == a2)
    {
      break;
    }

    v6 += 5;
    if (sub_1CA94D7F8())
    {
      goto LABEL_11;
    }
  }

  v9 = a1;
LABEL_11:
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();
  sub_1CA94C218();

  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
  return result;
}

id AutoShortcutsAppsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoShortcutsAppsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoShortcutsAppsDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA5307B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AutoShortcutsAppsDataSource(0);
  result = sub_1CA949FE8();
  *a2 = result;
  return result;
}

uint64_t sub_1CA5307F0()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1CA530828(char **result, uint64_t a2, char **a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_132:
    v150 = *result;
    if (!v150)
    {
      goto LABEL_175;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_169:
      v6 = sub_1CA627610();
    }

    v119 = v6 + 16;
    v120 = *(v6 + 2);
    while (v120 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_172;
      }

      v121 = v6;
      v122 = &v6[16 * v120];
      v123 = *v122;
      v124 = &v119[2 * v120];
      v125 = *(v124 + 1);
      sub_1CA531C78(&(*a3)[40 * *v122], &(*a3)[40 * *v124], &(*a3)[40 * v125], v150);
      if (v137)
      {
        break;
      }

      if (v125 < v123)
      {
        goto LABEL_160;
      }

      if (v120 - 2 >= *v119)
      {
        goto LABEL_161;
      }

      *v122 = v123;
      *(v122 + 1) = v125;
      v126 = *v119 - v120;
      if (*v119 < v120)
      {
        goto LABEL_162;
      }

      v120 = *v119 - 1;
      sub_1CA627628(v124 + 16, v126, v124);
      *v119 = v120;
      v6 = v121;
    }

LABEL_144:

    return;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5 + 1;
    v130 = v5;
    if (v5 + 1 >= v4)
    {
      goto LABEL_43;
    }

    v140 = v4;
    v8 = *a3;
    v9 = &(*a3)[40 * v7];
    v10 = v9[1];
    v12 = v9[2];
    v11 = v9[3];
    v13 = v9[4];
    v149[0] = *v9;
    v149[1] = v10;
    v149[2] = v12;
    v149[3] = v11;
    v149[4] = v13;
    v150 = v8;
    v14 = &v8[40 * v5];
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v148[0] = *v14;
    v148[1] = v15;
    v148[2] = v16;
    v148[3] = v17;
    v148[4] = v18;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v134 = sub_1CA52EC80(v149, v148);
    if (v137)
    {

      goto LABEL_144;
    }

    v128 = v6;

    v132 = 40 * v5;
    v19 = &v150[40 * v5 + 56];
    v20 = (v5 + 2);
    v21 = v140;
    while (1)
    {
      v22 = v20;
      if (v7 + 1 >= v21)
      {
        break;
      }

      v150 = v20;
      v23 = *(v19 - 1);
      v142 = *(v19 + 3);
      v144 = *(v19 - 2);
      v24 = qword_1EDB9F960;
      v25 = *(v19 + 4);
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = sub_1CA2786EC(v142, v25);
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v30 = sub_1CA2786EC(v144, v23);
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = 0xE000000000000000;
      }

      if (v28 == v32 && v29 == v33)
      {
        v35 = 0;
      }

      else
      {
        v35 = sub_1CA94D7F8();
      }

      v19 += 40;
      v21 = v140;
      ++v7;
      v22 = v150;
      v20 = v150 + 1;
      if ((v134 ^ v35))
      {
        goto LABEL_30;
      }
    }

    v7 = v21;
LABEL_30:
    if (v134)
    {
      v36 = v130;
      if (v7 < v130)
      {
        goto LABEL_168;
      }

      v6 = v128;
      if (v130 < v7)
      {
        if (v21 >= v22)
        {
          v37 = v22;
        }

        else
        {
          v37 = v21;
        }

        v38 = 40 * v37 - 40;
        v39 = v132 + 24;
        v40 = v7;
        do
        {
          if (v36 != --v40)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_173;
            }

            v42 = &v41[v39];
            v43 = *&v41[v39 - 24];
            v44 = &v41[v38];
            v45 = *(v42 - 1);
            v46 = *v42;
            v47 = *(v44 + 4);
            v48 = *(v44 + 1);
            *(v42 - 24) = *v44;
            *(v42 - 8) = v48;
            *(v42 + 1) = v47;
            *v44 = v43;
            *(v44 + 8) = v45;
            *(v44 + 24) = v46;
          }

          ++v36;
          v38 -= 40;
          v39 += 40;
        }

        while (v36 < v40);
      }
    }

    else
    {
      v6 = v128;
    }

LABEL_43:
    v49 = a3[1];
    if (v7 >= v49)
    {
      goto LABEL_79;
    }

    if (__OFSUB__(v7, v130))
    {
      goto LABEL_165;
    }

    if (v7 - v130 >= a4)
    {
LABEL_79:
      v51 = v130;
      goto LABEL_80;
    }

    if (__OFADD__(v130, a4))
    {
      goto LABEL_166;
    }

    if (v130 + a4 >= v49)
    {
      v50 = a3[1];
    }

    else
    {
      v50 = v130 + a4;
    }

    if (v50 < v130)
    {
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    v51 = v130;
    if (v7 != v50)
    {
      break;
    }

LABEL_80:
    if (v7 < v51)
    {
      goto LABEL_164;
    }

    v139 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v6 + 2) + 1, 1, v6);
      v6 = v117;
    }

    v74 = *(v6 + 2);
    v73 = *(v6 + 3);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      sub_1CA2E49C0(v73 > 1, v74 + 1, 1, v6);
      v6 = v118;
    }

    *(v6 + 2) = v75;
    v76 = v6 + 32;
    v77 = &v6[16 * v74 + 32];
    *v77 = v130;
    *(v77 + 1) = v139;
    v150 = *result;
    if (!v150)
    {
      goto LABEL_174;
    }

    if (v74)
    {
      while (1)
      {
        v78 = v75 - 1;
        v79 = &v76[16 * v75 - 16];
        v80 = &v6[16 * v75];
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v81 = *(v6 + 4);
          v82 = *(v6 + 5);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_100:
          if (v84)
          {
            goto LABEL_151;
          }

          v96 = *v80;
          v95 = *(v80 + 1);
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_154;
          }

          v100 = *(v79 + 1);
          v101 = v100 - *v79;
          if (__OFSUB__(v100, *v79))
          {
            goto LABEL_157;
          }

          if (__OFADD__(v98, v101))
          {
            goto LABEL_159;
          }

          if (v98 + v101 >= v83)
          {
            if (v83 < v101)
            {
              v78 = v75 - 2;
            }

            goto LABEL_122;
          }

          goto LABEL_115;
        }

        if (v75 < 2)
        {
          goto LABEL_153;
        }

        v103 = *v80;
        v102 = *(v80 + 1);
        v91 = __OFSUB__(v102, v103);
        v98 = v102 - v103;
        v99 = v91;
LABEL_115:
        if (v99)
        {
          goto LABEL_156;
        }

        v105 = *v79;
        v104 = *(v79 + 1);
        v91 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v91)
        {
          goto LABEL_158;
        }

        if (v106 < v98)
        {
          goto LABEL_129;
        }

LABEL_122:
        if (v78 - 1 >= v75)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (!*a3)
        {
          goto LABEL_171;
        }

        v110 = &v76[16 * v78 - 16];
        v111 = *v110;
        v112 = &v76[16 * v78];
        v113 = *(v112 + 1);
        sub_1CA531C78(&(*a3)[40 * *v110], &(*a3)[40 * *v112], &(*a3)[40 * v113], v150);
        if (v137)
        {
          goto LABEL_144;
        }

        if (v113 < v111)
        {
          goto LABEL_146;
        }

        v114 = v6;
        v115 = *(v6 + 2);
        if (v78 > v115)
        {
          goto LABEL_147;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        if (v78 >= v115)
        {
          goto LABEL_148;
        }

        v75 = v115 - 1;
        sub_1CA627628(v112 + 16, v115 - 1 - v78, &v76[16 * v78]);
        *(v114 + 2) = v115 - 1;
        v116 = v115 > 2;
        v6 = v114;
        if (!v116)
        {
          goto LABEL_129;
        }
      }

      v85 = &v76[16 * v75];
      v86 = *(v85 - 8);
      v87 = *(v85 - 7);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_149;
      }

      v90 = *(v85 - 6);
      v89 = *(v85 - 5);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_150;
      }

      v92 = *(v80 + 1);
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_152;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_155;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = *(v79 + 1);
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_163;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_100;
    }

LABEL_129:
    v4 = a3[1];
    v5 = v139;
    if (v139 >= v4)
    {
      goto LABEL_132;
    }
  }

  v141 = *a3;
  v52 = &(*a3)[40 * v7];
  v53 = v130 - v7;
  v131 = v50;
LABEL_53:
  v138 = v7;
  v54 = &v141[40 * v7];
  v55 = *v54;
  v56 = v54[1];
  v133 = v53;
  v135 = v52;
  v57 = v53;
  while (1)
  {
    v143 = v57;
    v58 = *(v52 - 4);
    v146 = *(v52 - 5);
    v147 = v55;
    v145 = qword_1EDB9F960;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v150 = v58;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v145 != -1)
    {
      swift_once();
    }

    v59 = sub_1CA2786EC(v147, v56);
    if (v60)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0;
    }

    if (v60)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v63 = sub_1CA2786EC(v146, v150);
    if (v64)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0xE000000000000000;
    }

    if (v61 == v65 && v62 == v66)
    {

LABEL_77:
      v7 = v138 + 1;
      v52 = v135 + 40;
      v53 = v133 - 1;
      if (v138 + 1 == v131)
      {
        v7 = v131;
        goto LABEL_79;
      }

      goto LABEL_53;
    }

    v68 = sub_1CA94D7F8();

    if ((v68 & 1) == 0)
    {
      goto LABEL_77;
    }

    if (!v141)
    {
      break;
    }

    v55 = *v52;
    v56 = *(v52 + 1);
    v69 = *(v52 + 2);
    v70 = *(v52 + 3);
    v71 = *(v52 + 4);
    v72 = *(v52 - 24);
    *v52 = *(v52 - 40);
    *(v52 + 1) = v72;
    *(v52 + 4) = *(v52 - 1);
    *(v52 - 4) = v56;
    *(v52 - 3) = v69;
    *(v52 - 2) = v70;
    *(v52 - 1) = v71;
    *(v52 - 5) = v55;
    v52 -= 40;
    v57 = v143 + 1;
    if (v143 == -1)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
}

void sub_1CA531270(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v161 = *result;
    if (!v161)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_119;
    }

    goto LABEL_154;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v145 = v4;
      v130 = v6;
      v9 = *a3;
      v10 = v5;
      v11 = v5 + 1;
      v12 = (*a3 + 40 * v8);
      v13 = v12[1];
      v15 = v12[2];
      v14 = v12[3];
      v16 = v12[4];
      v156 = *v12;
      v157 = v13;
      v158 = v15;
      v159 = v14;
      v160 = v16;
      v17 = (v9 + 40 * v7);
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v21 = v17[4];
      v151 = *v17;
      v152 = v18;
      v153 = v19;
      v154 = v20;
      v155 = v21;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      v143 = sub_1CA52EB88(&v156, &v151);
      if (v137)
      {

LABEL_129:

        return;
      }

      v22 = v9 + 40 * v10 + 56;
      v23 = (v10 + 2);
      v8 = v11;
      v24 = v145;
      while (1)
      {
        v25 = v23;
        if (v8 + 1 >= v24)
        {
          break;
        }

        v161 = v23;
        v138 = v8;
        v26 = *(v22 + 32);
        v27 = *(v22 - 8);
        v146 = *(v22 + 24);
        v148 = *(v22 - 16);
        v28 = qword_1EDB9F960;
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        if (v28 != -1)
        {
          swift_once();
        }

        v29 = sub_1CA2786EC(v146, v26);
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0xE000000000000000;
        if (v30)
        {
          v33 = v30;
        }

        else
        {
          v33 = 0xE000000000000000;
        }

        v156 = v31;
        v157 = v33;
        v34 = sub_1CA2786EC(v148, v27);
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v32 = v35;
        }

        v151 = v36;
        v152 = v32;
        sub_1CA27BAF0();
        v37 = sub_1CA94D1D8();

        v38 = v143 ^ (v37 != -1);
        v22 += 40;
        v8 = v138 + 1;
        v25 = v161;
        v23 = v161 + 1;
        v24 = v145;
        if ((v38 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v8 = v24;
LABEL_23:
      if (v143)
      {
        v7 = v10;
        if (v8 < v10)
        {
          goto LABEL_153;
        }

        v6 = v130;
        if (v10 < v8)
        {
          if (v24 >= v25)
          {
            v39 = v25;
          }

          else
          {
            v39 = v24;
          }

          v40 = 40 * v39 - 40;
          v41 = 40 * v10 + 24;
          v42 = v8;
          v43 = v10;
          do
          {
            if (v43 != --v42)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_158;
              }

              v45 = (v44 + v41);
              v46 = *(v44 + v41 - 24);
              v47 = v44 + v40;
              v48 = *(v45 - 1);
              v49 = *v45;
              v50 = *(v47 + 32);
              v51 = *(v47 + 16);
              *(v45 - 24) = *v47;
              *(v45 - 8) = v51;
              *(v45 + 1) = v50;
              *v47 = v46;
              *(v47 + 8) = v48;
              *(v47 + 24) = v49;
            }

            ++v43;
            v40 -= 40;
            v41 += 40;
          }

          while (v43 < v42);
        }
      }

      else
      {
        v7 = v10;
        v6 = v130;
      }
    }

    v52 = a3[1];
    if (v8 < v52)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_150;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_64:
    if (v8 < v7)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E49C0(0, *(v6 + 2) + 1, 1, v6);
      v6 = v119;
    }

    v77 = *(v6 + 2);
    v76 = *(v6 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      sub_1CA2E49C0(v76 > 1, v77 + 1, 1, v6);
      v6 = v120;
    }

    *(v6 + 2) = v78;
    v79 = v6 + 32;
    v80 = &v6[16 * v77 + 32];
    *v80 = v7;
    *(v80 + 1) = v8;
    v161 = *result;
    if (!v161)
    {
      goto LABEL_159;
    }

    v140 = v8;
    if (v77)
    {
      while (1)
      {
        v81 = v78 - 1;
        v82 = &v79[16 * v78 - 16];
        v83 = &v6[16 * v78];
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v84 = *(v6 + 4);
          v85 = *(v6 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_84:
          if (v87)
          {
            goto LABEL_136;
          }

          v99 = *v83;
          v98 = *(v83 + 1);
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_139;
          }

          v103 = *(v82 + 1);
          v104 = v103 - *v82;
          if (__OFSUB__(v103, *v82))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_144;
          }

          if (v101 + v104 >= v86)
          {
            if (v86 < v104)
            {
              v81 = v78 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v78 < 2)
        {
          goto LABEL_138;
        }

        v106 = *v83;
        v105 = *(v83 + 1);
        v94 = __OFSUB__(v105, v106);
        v101 = v105 - v106;
        v102 = v94;
LABEL_99:
        if (v102)
        {
          goto LABEL_141;
        }

        v108 = *v82;
        v107 = *(v82 + 1);
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_143;
        }

        if (v109 < v101)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v81 - 1 >= v78)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v113 = v6;
        v114 = &v79[16 * v81 - 16];
        v115 = *v114;
        v116 = &v79[16 * v81];
        v117 = *(v116 + 1);
        sub_1CA532160((*a3 + 40 * *v114), (*a3 + 40 * *v116), *a3 + 40 * v117, v161);
        if (v137)
        {
          goto LABEL_129;
        }

        if (v117 < v115)
        {
          goto LABEL_131;
        }

        v118 = *(v113 + 2);
        if (v81 > v118)
        {
          goto LABEL_132;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        if (v81 >= v118)
        {
          goto LABEL_133;
        }

        v78 = v118 - 1;
        sub_1CA627628(v116 + 16, v118 - 1 - v81, &v79[16 * v81]);
        v6 = v113;
        *(v113 + 2) = v118 - 1;
        if (v118 <= 2)
        {
          goto LABEL_113;
        }
      }

      v88 = &v79[16 * v78];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_134;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_135;
      }

      v95 = *(v83 + 1);
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_137;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_140;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = *(v82 + 1);
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_148;
        }

        if (v86 < v112)
        {
          v81 = v78 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

LABEL_113:
    v4 = a3[1];
    v5 = v140;
    if (v140 >= v4)
    {
      goto LABEL_117;
    }
  }

  v53 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_151;
  }

  if (v53 >= v52)
  {
    v53 = a3[1];
  }

  if (v53 < v7)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    v6 = sub_1CA627610();
LABEL_119:
    v121 = v6 + 16;
    v122 = *(v6 + 2);
    while (v122 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_157;
      }

      v123 = v6;
      v124 = &v6[16 * v122];
      v125 = *v124;
      v126 = &v121[2 * v122];
      v127 = *(v126 + 1);
      sub_1CA532160((*a3 + 40 * *v124), (*a3 + 40 * *v126), *a3 + 40 * v127, v161);
      if (v137)
      {
        break;
      }

      if (v127 < v125)
      {
        goto LABEL_145;
      }

      if (v122 - 2 >= *v121)
      {
        goto LABEL_146;
      }

      *v124 = v125;
      *(v124 + 1) = v127;
      v128 = *v121 - v122;
      if (*v121 < v122)
      {
        goto LABEL_147;
      }

      v122 = *v121 - 1;
      sub_1CA627628(v126 + 16, v128, v126);
      *v121 = v122;
      v6 = v123;
    }

    goto LABEL_129;
  }

  if (v8 == v53)
  {
    goto LABEL_64;
  }

  v131 = v6;
  v141 = *a3;
  v54 = (*a3 + 40 * v8);
  v55 = v7 - v8;
  v133 = v53;
LABEL_45:
  v139 = v8;
  v56 = (v141 + 40 * v8);
  v57 = *v56;
  v58 = v56[1];
  v134 = v55;
  v135 = v54;
  v59 = v55;
  while (1)
  {
    v149 = v57;
    v142 = v59;
    v60 = *(v54 - 4);
    v144 = *(v54 - 5);
    v61 = *(v54 - 3);
    v62 = qword_1EDB9F960;
    v147 = v58;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    v150 = v60;
    sub_1CA94C218();
    v161 = v61;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v62 != -1)
    {
      swift_once();
    }

    v63 = sub_1CA2786EC(v149, v147);
    if (v64)
    {
      v65 = v63;
    }

    else
    {
      v65 = 0;
    }

    v66 = 0xE000000000000000;
    if (v64)
    {
      v67 = v64;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    v156 = v65;
    v157 = v67;
    v68 = sub_1CA2786EC(v144, v150);
    if (v69)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0;
    }

    if (v69)
    {
      v66 = v69;
    }

    v151 = v70;
    v152 = v66;
    sub_1CA27BAF0();
    v71 = sub_1CA94D1D8();

    if (v71 != -1)
    {
LABEL_62:
      v8 = v139 + 1;
      v54 = v135 + 5;
      v55 = v134 - 1;
      if (v139 + 1 == v133)
      {
        v8 = v133;
        v6 = v131;
        goto LABEL_64;
      }

      goto LABEL_45;
    }

    if (!v141)
    {
      break;
    }

    v57 = *v54;
    v58 = v54[1];
    v72 = v54[2];
    v73 = v54[3];
    v74 = v54[4];
    v75 = *(v54 - 3);
    *v54 = *(v54 - 5);
    *(v54 + 1) = v75;
    v54[4] = *(v54 - 1);
    *(v54 - 4) = v58;
    *(v54 - 3) = v72;
    *(v54 - 2) = v73;
    *(v54 - 1) = v74;
    *(v54 - 5) = v57;
    v54 -= 5;
    v59 = v142 + 1;
    if (v142 == -1)
    {
      goto LABEL_62;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_1CA531C78(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1CA27B60C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    v59 = v10;
    v61 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_66;
      }

      v12 = v6[1];
      v13 = v4[1];
      v57 = *v6;
      v58 = *v4;
      v64 = v4;
      v14 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_1CA2786EC(v57, v12);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v19 = sub_1CA2786EC(v58, v13);
      if (v20)
      {
        v21 = v19;
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

      if (v17 == v21 && v18 == v22)
      {
      }

      else
      {
        v24 = sub_1CA94D7F8();

        if (v24)
        {
          v25 = v6;
          v26 = v7 == v6;
          v6 += 5;
          v4 = v64;
          goto LABEL_29;
        }
      }

      v25 = v64;
      v4 = v64 + 5;
      v26 = v7 == v64;
LABEL_29:
      v10 = v59;
      v5 = v61;
      if (!v26)
      {
        v27 = *v25;
        v28 = *(v25 + 1);
        *(v7 + 4) = v25[4];
        *v7 = v27;
        *(v7 + 1) = v28;
      }

      v7 += 40;
    }
  }

  sub_1CA27B60C(a2, (a3 - a2) / 40, a4);
  v10 = &v4[5 * v9];
  v65 = v4;
  v63 = v7;
LABEL_33:
  v29 = v5 - 40;
  v53 = v6 - 5;
  v54 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v60 = v10;
    v62 = v29;
    v31 = *(v10 - 5);
    v32 = *(v10 - 4);
    v10 -= 5;
    v55 = v31;
    v56 = *(v6 - 5);
    v33 = *(v6 - 4);
    v34 = qword_1EDB9F960;
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    sub_1CA94C218();
    if (v34 != -1)
    {
      swift_once();
    }

    v35 = sub_1CA2786EC(v55, v32);
    if (v36)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v39 = sub_1CA2786EC(v56, v33);
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    if (v37 == v41 && v38 == v42)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_1CA94D7F8();
    }

    v5 = v62;
    v6 = v54;

    v7 = v63;
    v45 = (v62 + 40);
    if (v44)
    {
      v6 = v53;
      v4 = v65;
      v10 = v60;
      if (v45 != v54)
      {
        v48 = *v53;
        v49 = *(v53 + 1);
        *(v62 + 32) = v53[4];
        *v62 = v48;
        *(v62 + 16) = v49;
        v6 = v53;
      }

      goto LABEL_33;
    }

    v4 = v65;
    if (v60 != v45)
    {
      v46 = *v10;
      v47 = *(v10 + 1);
      *(v62 + 32) = v10[4];
      *v62 = v46;
      *(v62 + 16) = v47;
    }

    v29 = v62 - 40;
  }

LABEL_66:
  v50 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v50])
  {
    memmove(v6, v4, 40 * v50);
  }

  return 1;
}

uint64_t sub_1CA532160(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 >= v9)
  {
    sub_1CA27B60C(a2, (a3 - a2) / 40, a4);
    v10 = &v4[5 * v9];
    v46 = v4;
    v44 = v7;
LABEL_16:
    v20 = v5 - 40;
    v34 = v6 - 5;
    v35 = v6;
    while (v10 > v4 && v6 > v7)
    {
      v41 = v10;
      v43 = v20;
      v22 = *(v10 - 5);
      v23 = *(v10 - 4);
      v10 -= 5;
      v24 = *(v6 - 4);
      v37 = v22;
      v38 = *(v6 - 5);
      v25 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v25 != -1)
      {
        swift_once();
      }

      sub_1CA2786EC(v37, v23);
      sub_1CA2786EC(v38, v24);
      sub_1CA27BAF0();
      v26 = sub_1CA94D1D8();

      if (v26 == -1)
      {
        v5 = v43;
        v7 = v44;
        v6 = v34;
        v4 = v46;
        v10 = v41;
        if ((v43 + 40) != v35)
        {
          v29 = *v34;
          v30 = *(v34 + 1);
          *(v43 + 32) = v34[4];
          *v43 = v29;
          *(v43 + 16) = v30;
          v6 = v34;
        }

        goto LABEL_16;
      }

      v4 = v46;
      v7 = v44;
      v6 = v35;
      if (v41 != (v43 + 40))
      {
        v27 = *v10;
        v28 = *(v10 + 1);
        *(v43 + 32) = v10[4];
        *v43 = v27;
        *(v43 + 16) = v28;
      }

      v20 = v43 - 40;
    }
  }

  else
  {
    sub_1CA27B60C(a1, (a2 - a1) / 40, a4);
    v10 = &v4[5 * v8];
    v40 = v10;
    v42 = v5;
    while (v4 < v10 && v6 < v5)
    {
      v12 = v6[1];
      v36 = *v6;
      v13 = v4[1];
      v39 = *v4;
      v45 = v4;
      v14 = qword_1EDB9F960;
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
      if (v14 != -1)
      {
        swift_once();
      }

      sub_1CA2786EC(v36, v12);
      sub_1CA2786EC(v39, v13);
      sub_1CA27BAF0();
      v15 = sub_1CA94D1D8();

      if (v15 == -1)
      {
        v16 = v6;
        v17 = v7 == v6;
        v6 += 5;
      }

      else
      {
        v16 = v4;
        v4 += 5;
        v17 = v7 == v45;
      }

      v10 = v40;
      v5 = v42;
      if (!v17)
      {
        v18 = *v16;
        v19 = *(v16 + 1);
        *(v7 + 4) = v16[4];
        *v7 = v18;
        *(v7 + 1) = v19;
      }

      v7 += 40;
    }

    v6 = v7;
  }

  v31 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v31])
  {
    memmove(v6, v4, 40 * v31);
  }

  return 1;
}

uint64_t sub_1CA53261C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoShortcutAppSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA532680(uint64_t a1)
{
  v2 = type metadata accessor for AutoShortcutAppSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of AutoShortcutsAppsDataSource.getLNAction(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_1(v3);

  return v7(v5);
}

uint64_t dispatch thunk of static AutoShortcutsAppsDataSource.getWFWorkflow(for:phrase:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_10_23();
  v6 = (*(v0 + 256) + **(v0 + 256));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_4_41(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AutoShortcutsAppsDataSource.getWFWorkflow(for:phrase:bundleIdentifier:)()
{
  OUTLINED_FUNCTION_10_23();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x108);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_41(v3);

  return v7(v5);
}

uint64_t dispatch thunk of AutoShortcutsAppsDataSource.getWFWorkflow(for:)()
{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x110);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_1(v3);

  return v7(v5);
}

{
  OUTLINED_FUNCTION_14();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x118);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_6_1(v3);

  return v7(v5);
}

uint64_t sub_1CA532DCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CA532E30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_2();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_1CA532EEC()
{
  v220 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7041746975514657;
  *(inited + 48) = 0xEF6E6F6974634170;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("kill|close", 10);
  v6 = v5;
  v7 = sub_1CA94C438("kill|close", 10);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v236 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v237 = v11;
  v12 = &v209 - v236;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v233 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v234 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v235 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v209 - v235;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v232 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v230 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  v224 = xmmword_1CA981310;
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Quits one or all open applications. You can choose a list of apps to keep open.", 79);
  v25 = v24;
  v26 = sub_1CA94C438("Quits one or all open applications. You can choose a list of apps to keep open.", 79);
  v28 = v27;
  v229 = &v209;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v209 - v236;
  sub_1CA948D98();
  v30 = [v233 bundleURL];
  v231 = inited;
  v31 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v209 - v235;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v34 = sub_1CA2F9F14(v23, v25, v26, v28, 0, 0, v29, v32);
  *(v20 + 64) = v232;
  *(v20 + 40) = v34;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v35 = sub_1CA94C1E8();
  v36 = v230;
  v37 = sub_1CA6B3784(v35);
  v38 = v231;
  *(v231 + 15) = v37;
  *(v38 + 18) = v36;
  *(v38 + 19) = @"IconColor";
  *(v38 + 20) = 0x6F6769646E49;
  *(v38 + 21) = 0xE600000000000000;
  v39 = MEMORY[0x1E69E6158];
  *(v38 + 23) = MEMORY[0x1E69E6158];
  *(v38 + 24) = @"IconSymbol";
  strcpy(v38 + 200, "xmark.app.fill");
  v38[215] = -18;
  *(v38 + 28) = v39;
  *(v38 + 29) = @"Name";
  v40 = @"IconColor";
  v41 = @"IconSymbol";
  v42 = @"Name";
  v43 = sub_1CA94C438("Quit App (Action Name)", 22);
  v45 = v44;
  v46 = sub_1CA94C438("Quit App", 8);
  v48 = v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v209 - v236;
  sub_1CA948D98();
  v50 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v209 - v235;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v43, v45, v46, v48, 0, 0, v49, v51);
  v54 = v231;
  *(v231 + 30) = v53;
  *(v54 + 33) = v232;
  *(v54 + 34) = @"Parameters";
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_1CA981570;
  v229 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_1CA981370;
  *(v55 + 32) = @"Class";
  *(v55 + 40) = 0xD000000000000016;
  *(v55 + 48) = 0x80000001CA99C4A0;
  v56 = MEMORY[0x1E69E6158];
  *(v55 + 64) = MEMORY[0x1E69E6158];
  *(v55 + 72) = @"DefaultValue";
  *(v55 + 80) = 7368769;
  *(v55 + 88) = 0xE300000000000000;
  *(v55 + 104) = v56;
  *(v55 + 112) = @"Items";
  v227 = swift_allocObject();
  v219 = xmmword_1CA981360;
  *(v227 + 1) = xmmword_1CA981360;
  v57 = @"Class";
  v58 = @"DefaultValue";
  v223 = v57;
  v218 = v58;
  v59 = @"Parameters";
  v60 = @"Items";
  v61 = sub_1CA94C438("App (WFQuitAppMode)", 19);
  v221 = v62;
  v222 = v61;
  v63 = sub_1CA94C438("App", 3);
  *&v217 = v64;
  v226 = &v209;
  MEMORY[0x1EEE9AC00](v63);
  v65 = v236;
  sub_1CA948D98();
  v66 = v233;
  v67 = [v233 bundleURL];
  v216 = &v209;
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v209 - v235;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v70 = sub_1CA2F9F14(v222, v221, v63, v217, 0, 0, &v209 - v65, v68);
  v71 = v227;
  v227[4] = v70;
  v72 = sub_1CA94C438("All Apps (WFQuitAppMode)", 24);
  v221 = v73;
  v222 = v72;
  v74 = sub_1CA94C438("All Apps", 8);
  *&v217 = v75;
  v226 = &v209;
  MEMORY[0x1EEE9AC00](v74);
  sub_1CA948D98();
  v76 = [v66 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v209 - v235;
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71[5] = sub_1CA2F9F14(v222, v221, v74, v217, 0, 0, &v209 - v65, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v55 + 120) = v71;
  *(v55 + 144) = v79;
  *(v55 + 152) = @"Key";
  strcpy((v55 + 160), "WFQuitAppMode");
  *(v55 + 174) = -4864;
  *(v55 + 184) = MEMORY[0x1E69E6158];
  *(v55 + 192) = @"Label";
  v80 = @"Key";
  v81 = @"Label";
  v82 = v80;
  v83 = v81;
  v222 = v82;
  v215 = v83;
  v84 = sub_1CA94C438("Mode (WFQuitAppMode)", 20);
  v86 = v85;
  v87 = sub_1CA94C438("Mode", 4);
  v89 = v88;
  v227 = &v209;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v209 - v236;
  sub_1CA948D98();
  v91 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v209 - v235;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v84, v86, v87, v89, 0, 0, v90, v92);
  *(v55 + 224) = v232;
  *(v55 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  v227 = v95;
  v226 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  *(v230 + 32) = v97;
  v98 = swift_initStackObject();
  v217 = xmmword_1CA981400;
  *(v98 + 16) = xmmword_1CA981400;
  *(v98 + 32) = @"AllowsMultipleValues";
  v99 = MEMORY[0x1E69E6370];
  *(v98 + 40) = 1;
  *(v98 + 64) = v99;
  *(v98 + 72) = @"AppSearchType";
  *(v98 + 80) = 0x7070416E65704FLL;
  *(v98 + 88) = 0xE700000000000000;
  v100 = MEMORY[0x1E69E6158];
  v102 = v222;
  v101 = v223;
  *(v98 + 104) = MEMORY[0x1E69E6158];
  *(v98 + 112) = v101;
  v216 = 0x80000001CA99B070;
  *(v98 + 120) = 0xD000000000000014;
  *(v98 + 128) = 0x80000001CA99B070;
  *(v98 + 144) = v100;
  *(v98 + 152) = v102;
  strcpy((v98 + 160), "WFAppsExcept");
  *(v98 + 173) = 0;
  *(v98 + 174) = -5120;
  v103 = v215;
  *(v98 + 184) = v100;
  *(v98 + 192) = v103;
  v104 = @"AllowsMultipleValues";
  v105 = @"AppSearchType";
  v221 = v101;
  v222 = v102;
  v223 = v103;
  v214 = v104;
  v213 = v105;
  v106 = sub_1CA94C438("Apps (WFAppsExcept)", 19);
  v211 = v107;
  v212 = v106;
  v108 = sub_1CA94C438("Apps", 4);
  v110 = v109;
  v215 = &v209;
  MEMORY[0x1EEE9AC00](v108);
  v111 = &v209 - v236;
  sub_1CA948D98();
  v112 = v233;
  v113 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v235;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 200) = sub_1CA2F9F14(v212, v211, v108, v110, 0, 0, v111, &v209 - v114);
  v116 = v232;
  *(v98 + 224) = v232;
  *(v98 + 232) = @"Placeholder";
  v215 = @"Placeholder";
  v117 = sub_1CA94C438("Choose (WFAppsExcept)", 21);
  v210 = v118;
  v211 = v117;
  v119 = sub_1CA94C438("Choose", 6);
  v209 = v120;
  v212 = &v209;
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v209 - v236;
  sub_1CA948D98();
  v122 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 240) = sub_1CA2F9F14(v211, v210, v119, v209, 0, 0, v121, &v209 - v114);
  *(v98 + 264) = v116;
  *(v98 + 272) = @"RequiredResources";
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v124 = swift_allocObject();
  *(v124 + 16) = v224;
  v211 = @"RequiredResources";
  v125 = MEMORY[0x1E69E6158];
  *(v124 + 32) = sub_1CA94C1E8();
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v98 + 304) = v210;
  *(v98 + 280) = v124;
  v126 = sub_1CA94C1E8();
  v127 = sub_1CA2F864C(v126);
  *(v230 + 40) = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = v217;
  *(v128 + 32) = v214;
  *(v128 + 40) = 0;
  v129 = v213;
  *(v128 + 64) = MEMORY[0x1E69E6370];
  *(v128 + 72) = v129;
  *(v128 + 80) = 0x7070416E65704FLL;
  *(v128 + 88) = 0xE700000000000000;
  v130 = v221;
  *(v128 + 104) = v125;
  *(v128 + 112) = v130;
  *(v128 + 120) = 0xD000000000000014;
  *(v128 + 128) = v216;
  v131 = v222;
  *(v128 + 144) = v125;
  *(v128 + 152) = v131;
  *(v128 + 160) = 0x7070414657;
  *(v128 + 168) = 0xE500000000000000;
  v132 = v223;
  *(v128 + 184) = v125;
  *(v128 + 192) = v132;
  v216 = sub_1CA94C438("App (WFApp)", 11);
  v214 = v133;
  v134 = sub_1CA94C438("App", 3);
  v213 = v135;
  *&v217 = &v209;
  MEMORY[0x1EEE9AC00](v134);
  v136 = v236;
  sub_1CA948D98();
  v137 = [v112 bundleURL];
  MEMORY[0x1EEE9AC00](v137);
  v138 = v235;
  sub_1CA948B68();

  v139 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 200) = sub_1CA2F9F14(v216, v214, v134, v213, 0, 0, &v209 - v136, &v209 - v138);
  v140 = v232;
  v141 = v215;
  *(v128 + 224) = v232;
  *(v128 + 232) = v141;
  v142 = sub_1CA94C438("Choose (WFApp)", 14);
  v215 = v143;
  v216 = v142;
  v144 = sub_1CA94C438("Choose", 6);
  v214 = v145;
  *&v217 = &v209;
  MEMORY[0x1EEE9AC00](v144);
  sub_1CA948D98();
  v146 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v146);
  sub_1CA948B68();

  v147 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 240) = sub_1CA2F9F14(v216, v215, v144, v214, 0, 0, &v209 - v136, &v209 - v138);
  v148 = v211;
  *(v128 + 264) = v140;
  *(v128 + 272) = v148;
  v149 = swift_allocObject();
  *(v149 + 16) = v224;
  v150 = MEMORY[0x1E69E6158];
  *(v149 + 32) = sub_1CA94C1E8();
  *(v128 + 304) = v210;
  *(v128 + 280) = v149;
  v151 = sub_1CA94C1E8();
  v152 = sub_1CA2F864C(v151);
  *(v230 + 48) = v152;
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_1CA981350;
  *(v153 + 32) = v221;
  *(v153 + 40) = 0xD000000000000011;
  *(v153 + 48) = 0x80000001CA99E620;
  v154 = v218;
  *(v153 + 64) = v150;
  *(v153 + 72) = v154;
  *(v153 + 80) = 1;
  v155 = v222;
  *(v153 + 104) = MEMORY[0x1E69E6370];
  *(v153 + 112) = v155;
  *(v153 + 120) = 0xD000000000000012;
  *(v153 + 128) = 0x80000001CA9C8FE0;
  v156 = v223;
  *(v153 + 144) = v150;
  *(v153 + 152) = v156;
  v157 = sub_1CA94C438("Ask to Save Changes (WFAskToSaveChanges)", 40);
  *&v224 = v158;
  v159 = sub_1CA94C438("Ask to Save Changes", 19);
  v161 = v160;
  v228 = &v209;
  MEMORY[0x1EEE9AC00](v159);
  v162 = &v209 - v236;
  sub_1CA948D98();
  v163 = v233;
  v164 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v209 - v235;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v167 = sub_1CA2F9F14(v157, v224, v159, v161, 0, 0, v162, v165);
  *(v153 + 184) = v232;
  *(v153 + 160) = v167;
  v168 = sub_1CA94C1E8();
  v169 = sub_1CA2F864C(v168);
  v170 = v230;
  *(v230 + 56) = v169;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v172 = v231;
  *(v231 + 35) = v170;
  *(v172 + 38) = v171;
  *(v172 + 39) = @"ParameterSummary";
  v230 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v232 = swift_allocObject();
  *(v232 + 16) = v219;
  v229 = "Ask to Save Changes";
  v173 = @"ParameterSummary";
  v174 = sub_1CA94C438("Quit ${WFQuitAppMode} ${WFApp}", 30);
  v176 = v175;
  v177 = sub_1CA94C438("Quit ${WFQuitAppMode} ${WFApp}", 30);
  v179 = v178;
  v228 = &v209;
  MEMORY[0x1EEE9AC00](v177);
  v180 = &v209 - v236;
  sub_1CA948D98();
  v181 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v209 - v235;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v184 = sub_1CA2F9F14(v174, v176, v177, v179, 0, 0, v180, v182);
  v185 = objc_allocWithZone(WFActionParameterSummaryValue);
  v186 = sub_1CA65DD78(0xD000000000000026, v229 | 0x8000000000000000, v184);
  *(v232 + 32) = v186;
  v229 = "Quit ${WFQuitAppMode} ${WFApp}";
  v187 = sub_1CA94C438("Quit ${WFQuitAppMode} except ${WFAppsExcept}", 44);
  v189 = v188;
  v190 = sub_1CA94C438("Quit ${WFQuitAppMode} except ${WFAppsExcept}", 44);
  v192 = v191;
  v228 = &v209;
  MEMORY[0x1EEE9AC00](v190);
  v193 = &v209 - v236;
  sub_1CA948D98();
  v194 = [v233 bundleURL];
  MEMORY[0x1EEE9AC00](v194);
  v195 = &v209 - v235;
  sub_1CA948B68();

  v196 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v197 = sub_1CA2F9F14(v187, v189, v190, v192, 0, 0, v193, v195);
  v198 = objc_allocWithZone(WFActionParameterSummaryValue);
  v199 = sub_1CA65DD78(0xD00000000000002DLL, v229 | 0x8000000000000000, v197);
  v200 = v232;
  *(v232 + 40) = v199;
  v201 = v230;
  v202 = sub_1CA65AF90(v200);
  v203 = v231;
  *(v231 + 40) = v202;
  *(v203 + 43) = v201;
  *(v203 + 44) = @"RequiredResources";
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_1CA9813B0;
  v238 = 2;
  v239 = 0;
  v205 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v206 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v238);
  *(v204 + 32) = v207;
  *(v203 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(v203 + 45) = v204;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA534704()
{
  v43 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("photo|video|media", 17);
  v44 = v5;
  v45 = v4;
  v6 = sub_1CA94C438("photo|video|media", 17);
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v39 - v42;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v40 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v39 - v40;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v45, v44, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v45 = v18;
  *(inited + 80) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 1702194242;
  *(inited + 128) = 0xE400000000000000;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0x69662E6F746F6870;
  *(inited + 168) = 0xEA00000000006C6CLL;
  *(inited + 184) = v19;
  *(inited + 192) = @"Input";
  v44 = 0x80000001CA9933B0;
  v20 = @"IconColor";
  v21 = @"IconSymbol";
  v22 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 200) = v23;
  *(inited + 224) = v24;
  *(inited + 232) = @"Name";
  v25 = @"Name";
  v26 = sub_1CA94C438("Get Details of Images (Action Name)", 35);
  v28 = v27;
  v29 = sub_1CA94C438("Get Details of Images", 21);
  v31 = v30;
  v39 = &v39;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v39 - v42;
  sub_1CA948D98();
  v33 = [v41 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v39 - v40;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v34);
  *(inited + 264) = v45;
  *(inited + 272) = @"ResidentCompatible";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v36 = @"ResidentCompatible";
  v37 = sub_1CA94C368();
  *(inited + 344) = MEMORY[0x1E69E6158];
  *(inited + 312) = v37;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = v44;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA534C48()
{
  sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001DLL;
  *(inited + 48) = 0x80000001CA9A1270;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"Name";
  v6 = sub_1CA94C438("Get Details of Shazam (Action Name)", 35);
  v8 = v7;
  v9 = sub_1CA94C438("Get Details of Shazam", 21);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v14, v18);
  *(inited + 144) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 120) = v20;
  v21 = sub_1CA94C368();
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 152) = v21;
  *(inited + 160) = 0xD000000000000018;
  *(inited + 168) = 0x80000001CA9C9210;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA534FA4()
{
  v150 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9C9240;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("url|share", 9);
  v6 = v5;
  v7 = sub_1CA94C438("url|share", 9);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v157 = v11;
  v160 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v143 - v160;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v159 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v156 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v158 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v143 - v158;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v154 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v153 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Gets a link to the Evernote note passed into the action, which can be shared.", 77);
  v151 = v27;
  v28 = sub_1CA94C438("Gets a link to the Evernote note passed into the action, which can be shared.", 77);
  v30 = v29;
  v152 = &v143;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v143 - v160;
  sub_1CA948D98();
  v32 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v143 - v158;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v151, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v154;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v153;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v149 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  *(v38 + 184) = 0xE500000000000000;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v153;
  *(v38 + 192) = &unk_1F4A036D0;
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v152 = v42;
  v155 = inited;
  *(inited + 200) = v41;
  *(inited + 224) = v42;
  *(inited + 232) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Get Note Link (Action Name)", 27);
  v146 = v45;
  v147 = v44;
  v46 = sub_1CA94C438("Get Note Link", 13);
  v48 = v47;
  v148 = &v143;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v160;
  sub_1CA948D98();
  v50 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v143 - v158;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v147, v146, v46, v48, 0, 0, &v143 - v49, v51);
  v55 = v154;
  v54 = v155;
  v155[30] = v53;
  v54[33] = v55;
  v54[34] = @"Output";
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_1CA9813C0;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  *(v56 + 48) = 1;
  *(v56 + 72) = MEMORY[0x1E69E6370];
  *(v56 + 80) = 0x614E74757074754FLL;
  *(v56 + 88) = 0xEA0000000000656DLL;
  v57 = @"Output";
  v58 = sub_1CA94C438("Note Link (Default Output Name)", 31);
  v147 = v59;
  v148 = v58;
  v60 = sub_1CA94C438("Note Link", 9);
  v146 = v61;
  v151 = &v143;
  MEMORY[0x1EEE9AC00](v60);
  sub_1CA948D98();
  v62 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v143 - v158;
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 96) = sub_1CA2F9F14(v148, v147, v60, v146, 0, 0, &v143 - v49, v63);
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x7365707954;
  *(v56 + 168) = v153;
  *(v56 + 136) = 0xE500000000000000;
  *(v56 + 144) = &unk_1F4A03700;
  v65 = MEMORY[0x1E69E6158];
  v66 = sub_1CA94C1E8();
  v67 = v155;
  v155[35] = v66;
  v67[38] = v152;
  v67[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v152 = swift_allocObject();
  *(v152 + 1) = xmmword_1CA981360;
  v151 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1CA981370;
  *(v68 + 32) = @"Class";
  *(v68 + 40) = 0xD000000000000011;
  *(v68 + 48) = 0x80000001CA99E620;
  *(v68 + 64) = v65;
  *(v68 + 72) = @"DefaultValue";
  *(v68 + 80) = 0;
  *(v68 + 104) = MEMORY[0x1E69E6370];
  *(v68 + 112) = @"Description";
  v147 = @"Class";
  v69 = @"Parameters";
  v70 = @"DefaultValue";
  v71 = @"Description";
  v72 = sub_1CA94C438("When enabled, an evernote:// URL will be generated, suitable for opening the note in the Evernote app. (WFEvernoteShareInAppLink)", 129);
  v74 = v73;
  v75 = sub_1CA94C438("When enabled, an evernote:// URL will be generated, suitable for opening the note in the Evernote app.", 102);
  v77 = v76;
  v146 = &v143;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v143 - v160;
  sub_1CA948D98();
  v79 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v143 - v158;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v68 + 120) = sub_1CA2F9F14(v72, v74, v75, v77, 0, 0, v78, v80);
  v82 = v154;
  *(v68 + 144) = v154;
  *(v68 + 152) = @"Key";
  *(v68 + 160) = 0xD000000000000018;
  *(v68 + 168) = 0x80000001CA9C9420;
  *(v68 + 184) = MEMORY[0x1E69E6158];
  *(v68 + 192) = @"Label";
  v83 = @"Key";
  v84 = @"Label";
  v144 = v83;
  v143 = v84;
  v85 = sub_1CA94C438("In-App Link (WFEvernoteShareInAppLink)", 38);
  v145 = v86;
  v87 = sub_1CA94C438("In-App Link", 11);
  v89 = v88;
  v146 = &v143;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v143 - v160;
  sub_1CA948D98();
  v91 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v143 - v158;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v85, v145, v87, v89, 0, 0, v90, v92);
  *(v68 + 224) = v82;
  *(v68 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  v146 = v95;
  v145 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v96 = sub_1CA94C1E8();
  v97 = sub_1CA2F864C(v96);
  v152[4] = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = v149;
  *(v98 + 32) = v147;
  *(v98 + 40) = 0xD000000000000019;
  *(v98 + 48) = 0x80000001CA99B030;
  v99 = MEMORY[0x1E69E6158];
  v100 = v144;
  *(v98 + 64) = MEMORY[0x1E69E6158];
  *(v98 + 72) = v100;
  *(v98 + 80) = 0x7475706E494657;
  *(v98 + 88) = 0xE700000000000000;
  v101 = v143;
  *(v98 + 104) = v99;
  *(v98 + 112) = v101;
  v102 = sub_1CA94C438("Note (WFInput)", 14);
  v147 = v103;
  v148 = v102;
  v144 = sub_1CA94C438("Note", 4);
  v105 = v104;
  *&v149 = &v143;
  MEMORY[0x1EEE9AC00](v144);
  v106 = &v143 - v160;
  sub_1CA948D98();
  v107 = v159;
  v108 = [v159 bundleURL];
  v143 = &v143;
  MEMORY[0x1EEE9AC00](v108);
  v109 = v158;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v98 + 120) = sub_1CA2F9F14(v148, v147, v144, v105, 0, 0, v106, &v143 - v109);
  v111 = v154;
  *(v98 + 144) = v154;
  *(v98 + 152) = @"Placeholder";
  v112 = @"Placeholder";
  v113 = sub_1CA94C438("Note (WFInput)", 14);
  v147 = v114;
  v148 = v113;
  v144 = sub_1CA94C438("Note", 4);
  v116 = v115;
  *&v149 = &v143;
  MEMORY[0x1EEE9AC00](v144);
  v117 = &v143 - v160;
  sub_1CA948D98();
  v118 = [v107 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v120 = sub_1CA2F9F14(v148, v147, v144, v116, 0, 0, v117, &v143 - v109);
  *(v98 + 184) = v111;
  *(v98 + 160) = v120;
  v121 = sub_1CA94C1E8();
  v122 = sub_1CA2F864C(v121);
  v123 = v152;
  v152[5] = v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v125 = v155;
  v155[40] = v123;
  v125[43] = v124;
  v125[44] = @"ParameterSummary";
  v126 = @"ParameterSummary";
  v127 = sub_1CA94C438("Get link for ${WFInput} (Parameter Summary)", 43);
  v129 = v128;
  v130 = sub_1CA94C438("Get link for ${WFInput}", 23);
  v132 = v131;
  MEMORY[0x1EEE9AC00](v130);
  v133 = &v143 - v160;
  sub_1CA948D98();
  v134 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = &v143 - v158;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, v135);
  v138 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v139 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v140 = v155;
  v155[45] = v138;
  v140[48] = v139;
  v140[49] = @"RequiredResources";
  v140[53] = v153;
  v140[50] = &unk_1F4A03730;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v141 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA53618C()
{
  v146 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9C9510;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("label|file|document|tag|color", 29);
  v6 = v5;
  v7 = sub_1CA94C438("label|file|document|tag|color", 29);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v152 = v11;
  v155 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v134 - v155;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v154 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v153 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v134 - v151;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v150 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v149 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Applies a label to the specified files.", 39);
  v145 = v27;
  v28 = sub_1CA94C438("Applies a label to the specified files.", 39);
  v30 = v29;
  v148 = &v134;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v134 - v155;
  sub_1CA948D98();
  v32 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v134 - v151;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v145, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v150;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v149;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1953392980;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x6C6C69662E676174;
  *(inited + 248) = 0xE800000000000000;
  *(inited + 264) = v38;
  *(inited + 272) = @"IconSymbolColor";
  *(inited + 280) = 1702194242;
  *(inited + 288) = 0xE400000000000000;
  *(inited + 304) = v38;
  *(inited + 312) = @"Input";
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v40 = swift_initStackObject();
  v144 = xmmword_1CA981350;
  *(v40 + 16) = xmmword_1CA981350;
  *(v40 + 32) = 0x656C7069746C754DLL;
  *(v40 + 40) = 0xE800000000000000;
  v41 = MEMORY[0x1E69E6370];
  *(v40 + 48) = 1;
  *(v40 + 72) = v41;
  strcpy((v40 + 80), "ParameterKey");
  *(v40 + 93) = 0;
  *(v40 + 94) = -5120;
  *(v40 + 96) = 0x7475706E494657;
  *(v40 + 104) = 0xE700000000000000;
  *(v40 + 120) = v39;
  *(v40 + 128) = 0x6465726975716552;
  *(v40 + 136) = 0xE800000000000000;
  *(v40 + 144) = 1;
  *(v40 + 168) = v41;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v40 + 216) = v142;
  *(v40 + 192) = &unk_1F4A037B0;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"IconSymbolColor";
  v45 = @"Input";
  v46 = sub_1CA94C1E8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v46;
  *(inited + 344) = v47;
  *(inited + 352) = @"Name";
  v48 = @"Name";
  v49 = sub_1CA94C438("Label Files (Action Name)", 25);
  v51 = v50;
  v52 = sub_1CA94C438("Label Files", 11);
  v54 = v53;
  v149 = &v134;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v134 - v155;
  sub_1CA948D98();
  v56 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v134 - v151;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v57);
  *(inited + 384) = v150;
  *(inited + 392) = @"Parameters";
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v149 = swift_allocObject();
  *(v149 + 1) = xmmword_1CA981360;
  v148 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1CA981380;
  *(v59 + 32) = @"AllowsMultipleValues";
  *(v59 + 40) = 1;
  *(v59 + 64) = MEMORY[0x1E69E6370];
  *(v59 + 72) = @"Class";
  *(v59 + 80) = 0xD000000000000015;
  *(v59 + 88) = 0x80000001CA99B1E0;
  v60 = MEMORY[0x1E69E6158];
  *(v59 + 104) = MEMORY[0x1E69E6158];
  *(v59 + 112) = @"FilePickerSupportedTypes";
  *(v59 + 120) = &unk_1F4A037E0;
  *(v59 + 144) = v142;
  *(v59 + 152) = @"Key";
  *(v59 + 160) = 0x7475706E494657;
  *(v59 + 168) = 0xE700000000000000;
  *(v59 + 184) = v60;
  *(v59 + 192) = @"Label";
  v61 = @"Class";
  v62 = @"Key";
  v63 = @"Label";
  v141 = v61;
  v140 = v62;
  v142 = v63;
  v64 = @"Parameters";
  v65 = @"AllowsMultipleValues";
  v66 = @"FilePickerSupportedTypes";
  v67 = sub_1CA94C438("Files (WFInput)", 15);
  v137 = v68;
  v138 = v67;
  v136 = sub_1CA94C438("Files", 5);
  v70 = v69;
  v139 = &v134;
  MEMORY[0x1EEE9AC00](v136);
  v71 = &v134 - v155;
  sub_1CA948D98();
  v72 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v151;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 200) = sub_1CA2F9F14(v138, v137, v136, v70, 0, 0, v71, &v134 - v73);
  v75 = v150;
  *(v59 + 224) = v150;
  *(v59 + 232) = @"Placeholder";
  v139 = @"Placeholder";
  v76 = sub_1CA94C438("Files (WFInput)", 15);
  v136 = v77;
  v137 = v76;
  v78 = sub_1CA94C438("Files", 5);
  v135 = v79;
  v138 = &v134;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v134 - v155;
  sub_1CA948D98();
  v81 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  sub_1CA948B68();

  v82 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v83 = sub_1CA2F9F14(v137, v136, v78, v135, 0, 0, v80, &v134 - v73);
  *(v59 + 264) = v75;
  *(v59 + 240) = v83;
  _s3__C3KeyVMa_0(0);
  v138 = v84;
  v137 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v85 = sub_1CA94C1E8();
  v86 = sub_1CA2F864C(v85);
  v149[4] = v86;
  v87 = swift_initStackObject();
  *(v87 + 16) = v144;
  *(v87 + 32) = v141;
  *(v87 + 40) = 0xD00000000000001FLL;
  *(v87 + 48) = 0x80000001CA9C95B0;
  v88 = MEMORY[0x1E69E6158];
  v89 = v140;
  *(v87 + 64) = MEMORY[0x1E69E6158];
  *(v87 + 72) = v89;
  *(v87 + 80) = 0xD000000000000012;
  *(v87 + 88) = 0x80000001CA9C95D0;
  v90 = v142;
  *(v87 + 104) = v88;
  *(v87 + 112) = v90;
  v91 = sub_1CA94C438("Label Color (WFLabelColorNumber)", 32);
  v142 = v92;
  v143 = v91;
  v93 = sub_1CA94C438("Label Color", 11);
  v141 = v94;
  *&v144 = &v134;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v155;
  sub_1CA948D98();
  v96 = v154;
  v97 = [v154 bundleURL];
  v140 = &v134;
  v147 = inited;
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v134 - v151;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v87 + 120) = sub_1CA2F9F14(v143, v142, v93, v141, 0, 0, &v134 - v95, v98);
  v100 = v150;
  v101 = v139;
  *(v87 + 144) = v150;
  *(v87 + 152) = v101;
  v102 = sub_1CA94C438("Color (WFLabelColorNumber)", 26);
  v142 = v103;
  v143 = v102;
  v104 = sub_1CA94C438("Color", 5);
  v141 = v105;
  *&v144 = &v134;
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948D98();
  v106 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = v151;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v143, v142, v104, v141, 0, 0, &v134 - v95, &v134 - v107);
  *(v87 + 184) = v100;
  *(v87 + 160) = v109;
  v110 = sub_1CA94C1E8();
  v111 = sub_1CA2F864C(v110);
  v112 = v149;
  v149[5] = v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v114 = v147;
  v147[50] = v112;
  v114[53] = v113;
  v114[54] = @"ParameterSummary";
  v115 = @"ParameterSummary";
  v116 = sub_1CA94C438("Label ${WFInput} with ${WFLabelColorNumber} (Parameter Summary)", 63);
  v118 = v117;
  v119 = sub_1CA94C438("Label ${WFInput} with ${WFLabelColorNumber}", 43);
  v121 = v120;
  v150 = &v134;
  MEMORY[0x1EEE9AC00](v119);
  v122 = &v134 - v155;
  sub_1CA948D98();
  v123 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v123);
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v116, v118, v119, v121, 0, 0, v122, &v134 - v107);
  v126 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v127 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v128 = v147;
  v147[55] = v126;
  v128[58] = v127;
  v128[59] = @"RequiredResources";
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1CA9813B0;
  v156 = 2;
  v157 = 0;
  v130 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v131 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v156);
  *(v129 + 32) = v132;
  v128[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  v128[60] = v129;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA537260()
{
  v104 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9C96F0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("workout|watch|fitness", 21);
  v6 = v5;
  v7 = sub_1CA94C438("workout|watch|fitness", 21);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = v11;
  v12 = &v98 - v109;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v108 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v106 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v98 - v107;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v105 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v103 = v22;
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v102 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Ends the active workout on your Apple Watch.", 44);
  v100 = v27;
  v28 = sub_1CA94C438("Ends the active workout on your Apple Watch.", 44);
  v30 = v29;
  v101 = &v98;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v98 - v109;
  sub_1CA948D98();
  v32 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v98 - v107;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v26, v100, v28, v30, 0, 0, v31, v33);
  *(v23 + 64) = v105;
  *(v23 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v36 = sub_1CA94C1E8();
  v37 = v102;
  *(inited + 160) = sub_1CA6B3784(v36);
  *(inited + 184) = v37;
  *(inited + 192) = @"IconName";
  *(inited + 200) = 0x74756F6B726F57;
  *(inited + 208) = 0xE700000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"InputPassthrough";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  v39 = @"IconName";
  v40 = @"InputPassthrough";
  v41 = sub_1CA94C368();
  *(inited + 304) = v38;
  *(inited + 272) = v41;
  *(inited + 280) = 0xD000000000000027;
  *(inited + 288) = 0x80000001CA9C9760;
  v42 = sub_1CA94C368();
  v100 = 0x80000001CA9C9790;
  *(inited + 312) = v42;
  *(inited + 320) = 0xD000000000000012;
  *(inited + 328) = 0x80000001CA9C9790;
  *(inited + 344) = v38;
  *(inited + 352) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("End Workout (Action Name)", 25);
  v46 = v45;
  v47 = sub_1CA94C438("End Workout", 11);
  v49 = v48;
  v102 = &v98;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v98 - v109;
  sub_1CA948D98();
  v51 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v98 - v107;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v44, v46, v47, v49, 0, 0, v50, v52);
  *(inited + 384) = v105;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v102 = swift_allocObject();
  *(v102 + 1) = xmmword_1CA9813B0;
  v101 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA981380;
  *(v54 + 32) = @"Class";
  *(v54 + 40) = 0xD00000000000001ALL;
  *(v54 + 48) = 0x80000001CA99B690;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 64) = MEMORY[0x1E69E6158];
  *(v54 + 72) = @"DefaultValue";
  v56 = @"Parameters";
  v57 = @"Class";
  v58 = @"DefaultValue";
  *(v54 + 80) = sub_1CA94C1E8();
  *(v54 + 104) = v103;
  *(v54 + 112) = @"Hidden";
  *(v54 + 144) = MEMORY[0x1E69E6370];
  *(v54 + 120) = 1;
  v59 = @"Hidden";
  *(v54 + 152) = sub_1CA94C368();
  *(v54 + 160) = 0xD000000000000012;
  *(v54 + 168) = v100;
  *(v54 + 184) = v55;
  *(v54 + 192) = @"Key";
  v103 = 0xD000000000000013;
  *(v54 + 200) = 0xD000000000000013;
  *(v54 + 208) = 0x80000001CA99B6D0;
  *(v54 + 224) = v55;
  *(v54 + 232) = @"Label";
  v60 = @"Key";
  v61 = @"Label";
  v62 = sub_1CA94C438("App (IntentAppDefinition)", 25);
  v99 = v63;
  v64 = sub_1CA94C438("App", 3);
  v66 = v65;
  v100 = &v98;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v98 - v109;
  sub_1CA948D98();
  v68 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v98 - v107;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v71 = sub_1CA2F9F14(v62, v99, v64, v66, 0, 0, v67, v69);
  *(v54 + 264) = v105;
  *(v54 + 240) = v71;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v72 = sub_1CA94C1E8();
  v73 = sub_1CA2F864C(v72);
  v74 = v102;
  v102[4] = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v74;
  *(inited + 424) = v75;
  *(inited + 432) = @"ParameterSummary";
  v76 = @"ParameterSummary";
  v77 = sub_1CA94C438("End workout (Parameter Summary)", 31);
  v79 = v78;
  v80 = sub_1CA94C438("End workout", 11);
  v82 = v81;
  v105 = &v98;
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v98 - v109;
  sub_1CA948D98();
  v84 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v84);
  v85 = &v98 - v107;
  sub_1CA948B68();

  v86 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v87 = sub_1CA2F9F14(v77, v79, v80, v82, 0, 0, v83, v85);
  v88 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v89 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v88;
  *(inited + 464) = v89;
  *(inited + 472) = @"RemoteExecuteOnPlatforms";
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 480) = &unk_1F4A03890;
  *(inited + 504) = v90;
  *(inited + 512) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1CA97EDF0;
  *(v91 + 56) = MEMORY[0x1E69E6158];
  *(v91 + 32) = v103;
  *(v91 + 40) = 0x80000001CA99A9A0;
  v111 = 2;
  v112 = 1;
  v92 = type metadata accessor for WFDeviceIdiomResource();
  v93 = objc_allocWithZone(v92);
  v94 = @"RemoteExecuteOnPlatforms";
  v95 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v111);
  *(v91 + 88) = v92;
  *(v91 + 64) = v96;
  *(inited + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 520) = v91;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

WFVariableString __swiftcall WFVariableString._bridgeToObjectiveC()()
{
  v1 = *v0;
  result._stringsAndVariables = v2;
  result.super.isa = v1;
  return result;
}

id static WFVariableString._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = [objc_allocWithZone(WFVariableString) init];
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

uint64_t WFVariableString.variables.getter()
{
  v1 = [*v0 variables];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  OUTLINED_FUNCTION_93();
  v2 = sub_1CA94C658();

  return v2;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(WFVariableString) init];
  *v1 = v2;
  result.variableString._stringsAndVariables = v3;
  result.variableString.super.isa = v2;
  return result;
}

id sub_1CA538038(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1CA94C368();

  v3 = [v1 initWithString_];

  return v3;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init(variable:)(WFVariable variable)
{
  isa = variable.super.isa;
  v3 = v1;
  v4 = [objc_allocWithZone(WFVariableString) initWithVariable_];

  *v3 = v4;
  result.variableString._stringsAndVariables = v6;
  result.variableString.super.isa = v5;
  return result;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init(stringsAndVariables:)(Swift::OpaquePointer stringsAndVariables)
{
  v2 = v1;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  v3 = sub_1CA538154();
  *v2 = v3;
  result.variableString._stringsAndVariables = v4;
  result.variableString.super.isa = v3;
  return result;
}

id sub_1CA538154()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446360, &qword_1CA98AFF8);
  OUTLINED_FUNCTION_93();
  v1 = sub_1CA94C648();

  v2 = [v0 initWithStringsAndVariables_];

  return v2;
}

WorkflowKit::WFVariableString __swiftcall WFVariableString.init(stringLiteral:)(Swift::String stringLiteral)
{
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v3 = v1;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  v4 = sub_1CA538038(countAndFlagsBits);
  *v3 = v4;
  result.variableString._stringsAndVariables = v5;
  result.variableString.super.isa = v4;
  return result;
}

id WFVariableString.init(stringInterpolation:)@<X0>(void *a1@<X8>)
{
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  result = sub_1CA538154();
  *a1 = result;
  return result;
}

uint64_t WFVariableString.stringsAndVariables.getter()
{
  v1 = [*v0 stringsAndVariables];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446360, &qword_1CA98AFF8);
  OUTLINED_FUNCTION_93();
  v2 = sub_1CA94C658();

  return v2;
}

uint64_t sub_1CA5382FC(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_1CA94C3A8();

  return v3;
}

uint64_t WFVariableString.process(context:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = a2;
  v3[10] = *v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA538370()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  v1[1] = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446368, &qword_1CA98B008);
  *v2 = v0;
  v2[1] = sub_1CA53847C;

  return MEMORY[0x1EEE6DE38](v0 + 16);
}

uint64_t sub_1CA53847C()
{
  OUTLINED_FUNCTION_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    v6 = sub_1CA5385C8;
  }

  else
  {

    v6 = sub_1CA53858C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CA53858C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1CA5385C8()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CA538628(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_1CA539514;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CA5388C0;
  aBlock[3] = &block_descriptor_16_1;
  v12 = _Block_copy(aBlock);

  [a2 processWithContext:a3 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1CA5387E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  if (a6)
  {
    v6 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
    return sub_1CA94C7D8();
  }

  else
  {
    sub_1CA94C218();
    sub_1CA948778();
    sub_1CA94C218();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);
    return sub_1CA94C7E8();
  }
}

uint64_t sub_1CA5388C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v8 = *(a1 + 32);
  if (a2)
  {
    v9 = sub_1CA94C3A8();
    v11 = v10;
    if (v6)
    {
LABEL_3:
      v12 = sub_1CA94C3A8();
      v6 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:

  v14 = a5;
  v8(v9, v11, a3, v12, v6, a5);
}

uint64_t WFVariableString.processIntoContentItems(context:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA5389B8()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA538ABC;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
  OUTLINED_FUNCTION_3_0(v4);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_44();
  v0[13] = v5;
  v0[14] = v3;
  [v1 processIntoContentItemsWithContext:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA538ABC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1CA538BE0;
  }

  else
  {
    v5 = sub_1CA538BC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA538BE0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t WFVariableString.processIntoStringsAndAttachments(context:options:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = *v2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_1CA538C80()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA538D8C;
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
  OUTLINED_FUNCTION_3_0(v5);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_44();
  v0[13] = v6;
  v0[14] = v4;
  [v1 processIntoStringsAndAttachmentsWithContext:v3 options:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA538D8C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1CA538E94;
  }

  else
  {
    v5 = sub_1CA5395FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA538E94(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t WFVariableString.variables(ofType:)(uint64_t a1)
{
  v2 = [*v1 variablesOfType_];
  sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
  OUTLINED_FUNCTION_93();
  v3 = sub_1CA94C658();

  return v3;
}

uint64_t WFVariableString.hashValue.getter()
{
  sub_1CA94D918();
  v0 = sub_1CA94CFF8();
  MEMORY[0x1CCAA2780](v0);
  return sub_1CA94D968();
}

uint64_t sub_1CA53905C(uint64_t a1)
{
  sub_1CA94D918();
  v1 = sub_1CA94CFF8();
  MEMORY[0x1CCAA2780](v1);
  return sub_1CA94D968();
}

id sub_1CA5390B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  result = sub_1CA538038(v3);
  *a2 = result;
  return result;
}

id WFVariableString.init(serializedRepresentation:variableProvider:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1CA25B3D0(0, &qword_1EC446960, off_1E836F4D8);
  result = sub_1CA399E74(a1, a2, a3);
  *a4 = result;
  return result;
}

id WFVariableString.serializedRepresentation()()
{
  v1 = [*v0 serializedRepresentation];

  return v1;
}

uint64_t sub_1CA5391C4(uint64_t a1)
{
  sub_1CA94C368();
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_6_35();

  return sub_1CA94C6E8();
}

Swift::Void __swiftcall WFVariableStringInterpolation.appendInterpolation(_:)(WFVariable a1)
{
  v1 = a1.super.isa;
  MEMORY[0x1CCAA1490]();
  OUTLINED_FUNCTION_6_35();

  sub_1CA94C6E8();
}

id static WFVariableString._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t static WFVariableString._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

unint64_t sub_1CA53931C()
{
  result = qword_1EC446378;
  if (!qword_1EC446378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446378);
  }

  return result;
}

unint64_t sub_1CA539374()
{
  result = qword_1EC446380;
  if (!qword_1EC446380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446380);
  }

  return result;
}

unint64_t sub_1CA5393CC()
{
  result = qword_1EC446388;
  if (!qword_1EC446388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446388);
  }

  return result;
}

unint64_t sub_1CA539424()
{
  result = qword_1EC446390;
  if (!qword_1EC446390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446390);
  }

  return result;
}

unint64_t sub_1CA539488()
{
  result = qword_1EC446398;
  if (!qword_1EC446398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC446398);
  }

  return result;
}

uint64_t sub_1CA539514(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4463A0, &qword_1CA98B2A0);

  return sub_1CA5387E8(a1, a2, a3, a4, a5, a6);
}

uint64_t block_copy_helper_14_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA539620(uint64_t a1)
{
  v14 = v1;
  sub_1CA94AAA8();
  v2 = sub_1CA94D048();
  v3 = sub_1CA94AA88();
  v4 = objc_allocWithZone(MEMORY[0x1E696E7E8]);
  v5 = sub_1CA471124(v2, v3);
  v13[3] = sub_1CA25B3D0(0, &qword_1EC4463B8, 0x1E696E7E8);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 currencyAmountValueType];
  v9 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v10 = sub_1CA320AB4(v13, v8);

  v11 = *(v1 + 8);

  return v11(v10);
}

uint64_t sub_1CA539750()
{
  OUTLINED_FUNCTION_0();
  v0[12] = v1;
  v0[13] = v2;
  v0[11] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  v0[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA5397EC, 0, 0);
}

uint64_t sub_1CA5397EC()
{
  v5 = [*(v0 + 96) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v6 = sub_1CA55BC3C(v0 + 16);
  *(v0 + 120) = v6;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v8 = [v6 amount];
  v9 = v8;
  if (!v8)
  {
    sub_1CA25B3D0(0, &qword_1EC4463B0, 0x1E696AB90);
    v9 = sub_1CA94CFB8();
  }

  v10 = *(v0 + 96);
  *(v0 + 48) = sub_1CA94D068();
  *(v0 + 56) = v11;
  *(v0 + 64) = v12;

  *(v0 + 72) = sub_1CA5EF428(v6);
  *(v0 + 80) = v13;
  *(v0 + 128) = v13;
  v14 = [v10 displayRepresentation];
  *(v0 + 136) = v14;
  if (v14)
  {
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_1CA539A20;

    return sub_1CA3BC4F4();
  }

  else
  {
    OUTLINED_FUNCTION_0_51();
    v16 = sub_1CA94B458();
    v17 = __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
    if (v2)
    {
      v20 = v2;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    if (v2)
    {
      v21 = v3;
    }

    else
    {
      v21 = 0;
    }

    OUTLINED_FUNCTION_3_38(v17, v18, v19, v21, v20);

    OUTLINED_FUNCTION_5();

    return v22();
  }
}

uint64_t sub_1CA539A20()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 152) = v0;

  if (v0)
  {

    v5 = sub_1CA539C14;
  }

  else
  {
    v5 = sub_1CA539B64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CA539B64()
{
  OUTLINED_FUNCTION_0_51();
  v4 = sub_1CA94B458();
  v5 = __swift_storeEnumTagSinglePayload(v0, 0, 1, v4);
  if (v1)
  {
    v8 = v1;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_3_38(v5, v6, v7, v9, v8);

  OUTLINED_FUNCTION_5();

  return v10();
}

uint64_t sub_1CA539C14()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_5();

  return v1();
}

uint64_t sub_1CA539C78()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA30A15C;

  return sub_1CA539750();
}

uint64_t sub_1CA539D28()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1CA30A2D4;

  return sub_1CA539600(v2);
}

id sub_1CA539DF0()
{
  v0 = sub_1CA949D18();
  v148 = *(v0 - 8);
  v149 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v147 = &v140 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFMarkupAction");
  *(inited + 55) = -18;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = inited;
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v7 = sub_1CA94C438("edit|photo|modify|picture|aviary|adobe|pdf|sign|draw|document", 61);
  v9 = v8;
  v10 = sub_1CA94C438("edit|photo|modify|picture|aviary|adobe|pdf|sign|draw|document", 61);
  v12 = v11;
  v13 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = v14;
  v158 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v140 - v158;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v154 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v155 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v157 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v140 - v157;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v151 = v4;
  v152 = v22;
  v4[10] = v21;
  v4[13] = v22;
  v4[14] = @"Description";
  v153 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA97EDF0;
  *(v23 + 32) = @"DescriptionResult";
  v24 = @"Description";
  v25 = @"DescriptionResult";
  v145 = sub_1CA94C438("The edited content", 18);
  *&v144 = v26;
  v143 = sub_1CA94C438("The edited content", 18);
  v28 = v27;
  v146 = &v140;
  MEMORY[0x1EEE9AC00](v143);
  v29 = &v140 - v158;
  sub_1CA948D98();
  v30 = v154;
  v31 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v157;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v23 + 40) = sub_1CA2F9F14(v145, v144, v143, v28, 0, 0, v29, &v140 - v32);
  v34 = v152;
  *(v23 + 64) = v152;
  *(v23 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v145 = sub_1CA94C438("Edits an image or PDF with Markup.", 34);
  *&v144 = v36;
  v143 = sub_1CA94C438("Edits an image or PDF with Markup.", 34);
  v38 = v37;
  v146 = &v140;
  MEMORY[0x1EEE9AC00](v143);
  v39 = &v140 - v158;
  sub_1CA948D98();
  v40 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v145, v144, v143, v38, 0, 0, v39, &v140 - v32);
  *(v23 + 104) = v34;
  *(v23 + 80) = v42;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v43 = sub_1CA94C1E8();
  v44 = v153;
  v45 = sub_1CA6B3784(v43);
  v46 = v151;
  v151[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 2036429383;
  v46[21] = 0xE400000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD00000000000001BLL;
  v46[26] = 0x80000001CA9C98E0;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v144 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x656D75636F444657;
  *(v49 + 104) = 0xEA0000000000746ELL;
  *(v49 + 120) = v48;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v153;
  *(v49 + 192) = &unk_1F4A038C0;
  v51 = @"IconColor";
  v52 = @"IconSymbol";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v146 = v55;
  v46[30] = v54;
  v46[33] = v55;
  v46[34] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438("Markup (Action Name)", 20);
  v142 = v58;
  v59 = sub_1CA94C438("Markup", 6);
  v61 = v60;
  v143 = &v140;
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v140 - v158;
  sub_1CA948D98();
  v63 = v154;
  v64 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v140 - v157;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v57, v142, v59, v61, 0, 0, v62, v65);
  v68 = v151;
  v69 = v152;
  v151[35] = v67;
  v68[38] = v69;
  v68[39] = @"Output";
  v70 = swift_allocObject();
  *(v70 + 16) = v144;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438("Markup Result (Default Output Name)", 35);
  v143 = v73;
  *&v144 = v72;
  v74 = sub_1CA94C438("Markup Result", 13);
  v76 = v75;
  v145 = &v140;
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v140 - v158;
  sub_1CA948D98();
  v78 = [v63 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v140 - v157;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v144, v143, v74, v76, 0, 0, v77, v79);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v153;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F4A03900;
  v81 = MEMORY[0x1E69E6158];
  v82 = sub_1CA94C1E8();
  v83 = v151;
  v151[40] = v82;
  v83[43] = v146;
  v83[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_1CA9813B0;
  v145 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1CA981370;
  *(v84 + 32) = @"Class";
  *(v84 + 40) = 0xD000000000000019;
  *(v84 + 48) = 0x80000001CA99B030;
  *(v84 + 64) = v81;
  *(v84 + 72) = @"Key";
  *(v84 + 80) = 0x656D75636F444657;
  *(v84 + 88) = 0xEA0000000000746ELL;
  *(v84 + 104) = v81;
  *(v84 + 112) = @"Label";
  v85 = @"Parameters";
  v86 = @"Class";
  v87 = @"Key";
  v88 = @"Label";
  v89 = sub_1CA94C438("Document (WFDocument)", 21);
  v142 = v90;
  v143 = v89;
  v91 = sub_1CA94C438("Document", 8);
  v141 = v92;
  *&v144 = &v140;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v140 - v158;
  sub_1CA948D98();
  v94 = v154;
  v95 = [v154 bundleURL];
  v140 = &v140;
  MEMORY[0x1EEE9AC00](v95);
  v96 = v83;
  v97 = &v140 - v157;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 120) = sub_1CA2F9F14(v143, v142, v91, v141, 0, 0, v93, v97);
  v99 = v152;
  *(v84 + 144) = v152;
  *(v84 + 152) = @"Placeholder";
  v100 = @"Placeholder";
  v101 = sub_1CA94C438("Document (WFDocument)", 21);
  v142 = v102;
  v143 = v101;
  v141 = sub_1CA94C438("Document", 8);
  v104 = v103;
  *&v144 = &v140;
  MEMORY[0x1EEE9AC00](v141);
  v105 = &v140 - v158;
  sub_1CA948D98();
  v106 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v140 - v157;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v84 + 160) = sub_1CA2F9F14(v143, v142, v141, v104, 0, 0, v105, v107);
  *(v84 + 184) = v99;
  *(v84 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1CA981310;
  v110 = @"PreferredTypes";
  v111 = v147;
  sub_1CA949CA8();
  v112 = sub_1CA949C68();
  v114 = v113;
  (*(v148 + 8))(v111, v149);
  *(v109 + 32) = v112;
  *(v109 + 40) = v114;
  *(v84 + 224) = v153;
  *(v84 + 200) = v109;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v115 = sub_1CA94C1E8();
  v116 = sub_1CA2F864C(v115);
  v117 = v146;
  v146[4] = v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v96[45] = v117;
  v96[48] = v118;
  v96[49] = @"ParameterSummary";
  v119 = @"ParameterSummary";
  v120 = sub_1CA94C438("Mark up ${WFDocument} (Parameter Summary)", 41);
  v122 = v121;
  v123 = sub_1CA94C438("Mark up ${WFDocument}", 21);
  v125 = v124;
  v152 = &v140;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v140 - v158;
  sub_1CA948D98();
  v127 = [v154 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v140 - v157;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  v131 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v132 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v96[50] = v131;
  v96[53] = v132;
  v96[54] = @"RequiredResources";
  v96[55] = &unk_1F4A03940;
  v133 = v153;
  v96[58] = v153;
  v96[59] = @"UserInterfaceClasses";
  v134 = @"RequiredResources";
  v135 = @"UserInterfaceClasses";
  v136 = sub_1CA94C1E8();
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v96[60] = v136;
  v96[63] = v137;
  v96[64] = @"UserInterfaces";
  v96[68] = v133;
  v96[65] = &unk_1F4A039D0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v138 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA53AFB4()
{
  v237 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7365726464414657;
  *(inited + 48) = 0xEF6E6F6974634173;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("maps|search|query|place|location|find", 37);
  v6 = v5;
  v7 = sub_1CA94C438("maps|search|query|place|location|find", 37);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v256 = v11;
  v257 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v230 - v257;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v252 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v254 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v255 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v230 - v255;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v253 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AppDefinition";
  v20 = @"AppDefinition";
  v21 = sub_1CA94C1E8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v21;
  *(inited + 144) = v22;
  *(inited + 152) = @"Description";
  v251 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438("Passes the specified address to the next action.", 48);
  v28 = v27;
  v29 = sub_1CA94C438("Passes the specified address to the next action.", 48);
  v31 = v30;
  v250 = &v230;
  MEMORY[0x1EEE9AC00](v29);
  v246 = inited;
  v32 = &v230 - v257;
  sub_1CA948D98();
  v33 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v230 - v255;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v34);
  *(v23 + 64) = v253;
  *(v23 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v37 = sub_1CA94C1E8();
  v38 = v251;
  v39 = sub_1CA6B3784(v37);
  v40 = v246;
  v246[20] = v39;
  v40[23] = v38;
  v40[24] = @"IconColor";
  v40[25] = 1953392980;
  v40[26] = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  v40[28] = MEMORY[0x1E69E6158];
  v40[29] = @"IconSymbol";
  v40[30] = 0x6E697070616DLL;
  v40[31] = 0xE600000000000000;
  v40[33] = v41;
  v40[34] = @"IconSymbolColor";
  v40[35] = 0x6E65657247;
  v40[36] = 0xE500000000000000;
  v40[38] = v41;
  v40[39] = @"InputPassthrough";
  v42 = MEMORY[0x1E69E6370];
  *(v40 + 320) = 0;
  v40[43] = v42;
  v40[44] = @"LocallyProcessesData";
  *(v40 + 360) = 1;
  v40[48] = v42;
  v40[49] = @"Name";
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"IconSymbolColor";
  v46 = @"InputPassthrough";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438("Street Address (Action Name)", 28);
  v51 = v50;
  v52 = sub_1CA94C438("Street Address", 14);
  v54 = v53;
  v251 = &v230;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v230 - v257;
  sub_1CA948D98();
  v56 = v252;
  v57 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v230 - v255;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = sub_1CA2F9F14(v49, v51, v52, v54, 0, 0, v55, v58);
  v61 = v246;
  v246[50] = v60;
  v62 = v253;
  v61[53] = v253;
  v61[54] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_1CA981350;
  *(v63 + 32) = 0x75736F6C63736944;
  *(v63 + 40) = 0xEF6C6576654C6572;
  *(v63 + 48) = 0x63696C627550;
  *(v63 + 56) = 0xE600000000000000;
  *(v63 + 72) = MEMORY[0x1E69E6158];
  *(v63 + 80) = 0x656C7069746C754DLL;
  *(v63 + 88) = 0xE800000000000000;
  *(v63 + 96) = 0;
  *(v63 + 120) = MEMORY[0x1E69E6370];
  *(v63 + 128) = 0x614E74757074754FLL;
  *(v63 + 136) = 0xEA0000000000656DLL;
  v64 = @"Output";
  v65 = sub_1CA94C438("Street Address (Default Output Name)", 36);
  v250 = v66;
  v67 = sub_1CA94C438("Street Address", 14);
  v69 = v68;
  v251 = &v230;
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v230 - v257;
  sub_1CA948D98();
  v71 = [v56 bundleURL];
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v230 - v255;
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v63 + 144) = sub_1CA2F9F14(v65, v250, v67, v69, 0, 0, v70, v72);
  *(v63 + 168) = v62;
  *(v63 + 176) = 0x7365707954;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v63 + 192) = &unk_1F4A03A40;
  v74 = MEMORY[0x1E69E6158];
  v75 = sub_1CA94C1E8();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v77 = v246;
  v246[55] = v75;
  v77[58] = v76;
  v77[59] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v251 = swift_allocObject();
  *(v251 + 1) = xmmword_1CA981410;
  v250 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v78 = swift_allocObject();
  v244 = xmmword_1CA981380;
  *(v78 + 16) = xmmword_1CA981380;
  *(v78 + 32) = @"AutocapitalizationType";
  *(v78 + 40) = 0x7364726F57;
  *(v78 + 48) = 0xE500000000000000;
  *(v78 + 64) = v74;
  *(v78 + 72) = @"Class";
  v245 = 0x80000001CA99B500;
  *(v78 + 80) = 0xD000000000000014;
  *(v78 + 88) = 0x80000001CA99B500;
  *(v78 + 104) = v74;
  *(v78 + 112) = @"Key";
  strcpy((v78 + 120), "WFAddressLine1");
  *(v78 + 135) = -18;
  *(v78 + 144) = v74;
  *(v78 + 152) = @"Label";
  v79 = @"AutocapitalizationType";
  v80 = @"Class";
  v81 = @"Key";
  v82 = @"Label";
  v83 = v79;
  v84 = v80;
  v85 = v81;
  v86 = v82;
  v241 = v83;
  v240 = v84;
  v239 = v85;
  v243 = v86;
  v87 = @"Parameters";
  v247 = sub_1CA94C438("Line 1 (WFAddressLine1)", 23);
  v242 = v88;
  v89 = sub_1CA94C438("Line 1", 6);
  v91 = v90;
  v248 = &v230;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v230 - v257;
  sub_1CA948D98();
  v93 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v230 - v255;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 160) = sub_1CA2F9F14(v247, v242, v89, v91, 0, 0, v92, v94);
  v96 = v253;
  *(v78 + 184) = v253;
  *(v78 + 192) = @"Placeholder";
  v242 = @"Placeholder";
  v247 = sub_1CA94C438("One Apple Park Way (WFAddressLine1)", 35);
  v238 = v97;
  v98 = sub_1CA94C438("One Apple Park Way", 18);
  *&v236 = v99;
  v248 = &v230;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v230 - v257;
  sub_1CA948D98();
  v101 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v230 - v255;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v78 + 200) = sub_1CA2F9F14(v247, v238, v98, v236, 0, 0, v100, v102);
  *(v78 + 224) = v96;
  *(v78 + 232) = @"TextContentType";
  v104 = MEMORY[0x1E69E6158];
  *(v78 + 264) = MEMORY[0x1E69E6158];
  v238 = 0xD000000000000012;
  *(v78 + 240) = 0xD000000000000012;
  *(v78 + 248) = 0x80000001CA9C9B20;
  _s3__C3KeyVMa_0(0);
  v248 = v105;
  v247 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v235 = @"TextContentType";
  v106 = sub_1CA94C1E8();
  v107 = sub_1CA2F864C(v106);
  v251[4] = v107;
  v108 = swift_allocObject();
  v236 = xmmword_1CA981370;
  *(v108 + 16) = xmmword_1CA981370;
  v110 = v240;
  v109 = v241;
  *(v108 + 32) = v241;
  *(v108 + 40) = 0x7364726F57;
  *(v108 + 48) = 0xE500000000000000;
  *(v108 + 64) = v104;
  *(v108 + 72) = v110;
  v111 = v245;
  *(v108 + 80) = 0xD000000000000014;
  *(v108 + 88) = v111;
  v112 = v239;
  *(v108 + 104) = v104;
  *(v108 + 112) = v112;
  strcpy((v108 + 120), "WFAddressLine2");
  *(v108 + 135) = -18;
  v113 = v243;
  *(v108 + 144) = v104;
  *(v108 + 152) = v113;
  v234 = v109;
  v240 = v110;
  v233 = v112;
  v239 = v113;
  v114 = sub_1CA94C438("Line 2 (WFAddressLine2)", 23);
  v116 = v115;
  v117 = sub_1CA94C438("Line 2", 6);
  v119 = v118;
  v243 = &v230;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v230 - v257;
  sub_1CA948D98();
  v121 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v230 - v255;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v108 + 160) = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  v124 = v235;
  *(v108 + 184) = v253;
  *(v108 + 192) = v124;
  v125 = MEMORY[0x1E69E6158];
  *(v108 + 224) = MEMORY[0x1E69E6158];
  *(v108 + 200) = v238;
  *(v108 + 208) = 0x80000001CA9C9B60;
  v241 = v124;
  v126 = sub_1CA94C1E8();
  v127 = sub_1CA2F864C(v126);
  v251[5] = v127;
  v128 = swift_allocObject();
  *(v128 + 16) = v244;
  v129 = v234;
  *(v128 + 32) = v234;
  *(v128 + 40) = 0x7364726F57;
  *(v128 + 48) = 0xE500000000000000;
  v130 = v125;
  v132 = v239;
  v131 = v240;
  *(v128 + 64) = v125;
  *(v128 + 72) = v131;
  *(v128 + 80) = 0xD000000000000014;
  *(v128 + 88) = v245;
  *(v128 + 104) = v125;
  v133 = v233;
  *(v128 + 112) = v233;
  *(v128 + 120) = 0x797469434657;
  *(v128 + 128) = 0xE600000000000000;
  *(v128 + 144) = v130;
  *(v128 + 152) = v132;
  v243 = v129;
  v240 = v131;
  v234 = v133;
  v235 = v132;
  v238 = sub_1CA94C438("City (WFCity)", 13);
  v233 = v134;
  v232 = sub_1CA94C438("City", 4);
  v136 = v135;
  v239 = &v230;
  MEMORY[0x1EEE9AC00](v232);
  v137 = v257;
  sub_1CA948D98();
  v138 = v252;
  v139 = [v252 bundleURL];
  v231 = &v230;
  MEMORY[0x1EEE9AC00](v139);
  v140 = v255;
  sub_1CA948B68();

  v141 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v128 + 160) = sub_1CA2F9F14(v238, v233, v232, v136, 0, 0, &v230 - v137, &v230 - v140);
  v142 = v253;
  v143 = v242;
  *(v128 + 184) = v253;
  *(v128 + 192) = v143;
  v238 = v143;
  v239 = sub_1CA94C438("Cupertino (WFCity)", 18);
  v233 = v144;
  v145 = sub_1CA94C438("Cupertino", 9);
  v232 = v146;
  v242 = &v230;
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948D98();
  v147 = [v138 bundleURL];
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v239, v233, v145, v232, 0, 0, &v230 - v137, &v230 - v140);
  v150 = v241;
  *(v128 + 200) = v149;
  *(v128 + 224) = v142;
  *(v128 + 232) = v150;
  v151 = MEMORY[0x1E69E6158];
  *(v128 + 264) = MEMORY[0x1E69E6158];
  *(v128 + 240) = 0x4373736572646441;
  *(v128 + 248) = 0xEB00000000797469;
  v242 = v150;
  v152 = sub_1CA94C1E8();
  v153 = sub_1CA2F864C(v152);
  v251[6] = v153;
  v154 = swift_allocObject();
  *(v154 + 16) = v244;
  *(v154 + 32) = v243;
  *(v154 + 40) = 0x7364726F57;
  *(v154 + 48) = 0xE500000000000000;
  v155 = v240;
  *(v154 + 64) = v151;
  *(v154 + 72) = v155;
  *(v154 + 80) = 0xD000000000000014;
  *(v154 + 88) = v245;
  v156 = v234;
  *(v154 + 104) = v151;
  *(v154 + 112) = v156;
  *(v154 + 120) = 0x65746174534657;
  *(v154 + 128) = 0xE700000000000000;
  *(v154 + 144) = v151;
  v157 = v235;
  *(v154 + 152) = v235;
  v239 = v155;
  v240 = v156;
  v241 = v157;
  v158 = sub_1CA94C438("State (WFState)", 15);
  v233 = v159;
  v234 = v158;
  v160 = sub_1CA94C438("State", 5);
  v232 = v161;
  v235 = &v230;
  MEMORY[0x1EEE9AC00](v160);
  v162 = &v230 - v257;
  sub_1CA948D98();
  v163 = v252;
  v164 = [v252 bundleURL];
  v231 = &v230;
  MEMORY[0x1EEE9AC00](v164);
  v165 = v255;
  sub_1CA948B68();

  v166 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v154 + 160) = sub_1CA2F9F14(v234, v233, v160, v232, 0, 0, v162, &v230 - v165);
  v167 = v253;
  v168 = v238;
  *(v154 + 184) = v253;
  *(v154 + 192) = v168;
  v238 = v168;
  v169 = sub_1CA94C438("California (WFState)", 20);
  v233 = v170;
  v234 = v169;
  v232 = sub_1CA94C438("California", 10);
  v172 = v171;
  v235 = &v230;
  MEMORY[0x1EEE9AC00](v232);
  v173 = &v230 - v257;
  sub_1CA948D98();
  v174 = [v163 bundleURL];
  MEMORY[0x1EEE9AC00](v174);
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v154 + 200) = sub_1CA2F9F14(v234, v233, v232, v172, 0, 0, v173, &v230 - v165);
  v176 = v242;
  *(v154 + 224) = v167;
  *(v154 + 232) = v176;
  v177 = MEMORY[0x1E69E6158];
  *(v154 + 264) = MEMORY[0x1E69E6158];
  strcpy((v154 + 240), "AddressState");
  *(v154 + 253) = 0;
  *(v154 + 254) = -5120;
  v178 = sub_1CA94C1E8();
  v179 = sub_1CA2F864C(v178);
  v251[7] = v179;
  v180 = swift_allocObject();
  *(v180 + 16) = v244;
  *(v180 + 32) = v239;
  *(v180 + 40) = 0xD000000000000014;
  *(v180 + 48) = v245;
  v181 = v240;
  *(v180 + 64) = v177;
  *(v180 + 72) = v181;
  strcpy((v180 + 80), "WFPostalCode");
  *(v180 + 93) = 0;
  *(v180 + 94) = -5120;
  *(v180 + 104) = v177;
  *(v180 + 112) = @"KeyboardType";
  *(v180 + 120) = 0xD000000000000015;
  *(v180 + 128) = 0x80000001CA9C9BE0;
  v182 = v241;
  *(v180 + 144) = v177;
  *(v180 + 152) = v182;
  v183 = @"KeyboardType";
  *&v244 = sub_1CA94C438("Postal Code (WFPostalCode)", 26);
  v235 = v184;
  v185 = sub_1CA94C438("Postal Code", 11);
  v234 = v186;
  v245 = &v230;
  MEMORY[0x1EEE9AC00](v185);
  v187 = v257;
  sub_1CA948D98();
  v188 = v252;
  v189 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v189);
  v190 = &v230 - v255;
  sub_1CA948B68();

  v191 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 160) = sub_1CA2F9F14(v244, v235, v185, v234, 0, 0, &v230 - v187, v190);
  v192 = v253;
  v193 = v238;
  *(v180 + 184) = v253;
  *(v180 + 192) = v193;
  *&v244 = sub_1CA94C438("95014 (WFPostalCode)", 20);
  v235 = v194;
  v195 = sub_1CA94C438("95014", 5);
  v234 = v196;
  v245 = &v230;
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948D98();
  v197 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v197);
  v198 = &v230 - v255;
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v180 + 200) = sub_1CA2F9F14(v244, v235, v195, v234, 0, 0, &v230 - v187, v198);
  v200 = v242;
  *(v180 + 224) = v192;
  *(v180 + 232) = v200;
  v201 = MEMORY[0x1E69E6158];
  *(v180 + 264) = MEMORY[0x1E69E6158];
  *(v180 + 240) = 0x6F436C6174736F50;
  *(v180 + 248) = 0xEA00000000006564;
  v202 = sub_1CA94C1E8();
  v203 = sub_1CA2F864C(v202);
  v251[8] = v203;
  v204 = swift_allocObject();
  *(v204 + 16) = v236;
  *(v204 + 32) = v243;
  *(v204 + 40) = 0x7364726F57;
  *(v204 + 48) = 0xE500000000000000;
  v205 = v239;
  *(v204 + 64) = v201;
  *(v204 + 72) = v205;
  *(v204 + 80) = 0xD000000000000017;
  *(v204 + 88) = 0x80000001CA9C9C50;
  v206 = v240;
  *(v204 + 104) = v201;
  *(v204 + 112) = v206;
  *(v204 + 120) = 0x72746E756F434657;
  *(v204 + 128) = 0xE900000000000079;
  v207 = v241;
  *(v204 + 144) = v201;
  *(v204 + 152) = v207;
  v245 = sub_1CA94C438("Region (WFCountry)", 18);
  *&v244 = v208;
  v209 = sub_1CA94C438("Region", 6);
  v243 = v210;
  v249 = &v230;
  MEMORY[0x1EEE9AC00](v209);
  v211 = &v230 - v257;
  sub_1CA948D98();
  v212 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v212);
  v213 = v255;
  sub_1CA948B68();

  v214 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v204 + 160) = sub_1CA2F9F14(v245, v244, v209, v243, 0, 0, v211, &v230 - v213);
  v215 = v238;
  *(v204 + 184) = v253;
  *(v204 + 192) = v215;
  v245 = sub_1CA94C438("United States (WFCountry)", 25);
  *&v244 = v216;
  v217 = sub_1CA94C438("United States", 13);
  v243 = v218;
  v249 = &v230;
  MEMORY[0x1EEE9AC00](v217);
  v219 = &v230 - v257;
  sub_1CA948D98();
  v220 = [v188 bundleURL];
  MEMORY[0x1EEE9AC00](v220);
  sub_1CA948B68();

  v221 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v222 = sub_1CA2F9F14(v245, v244, v217, v243, 0, 0, v219, &v230 - v213);
  *(v204 + 224) = v253;
  *(v204 + 200) = v222;
  v223 = sub_1CA94C1E8();
  v224 = sub_1CA2F864C(v223);
  v225 = v251;
  v251[9] = v224;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v227 = v246;
  v246[60] = v225;
  v227[63] = v226;
  v227[64] = @"ResidentCompatible";
  v227[68] = MEMORY[0x1E69E6370];
  *(v227 + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v228 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA53CBE4()
{
  v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  v674 = xmmword_1CA981350;
  *(inited + 16) = xmmword_1CA981350;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001CA9A8AD0;
  v1 = sub_1CA94C1E8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 48) = v1;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000011;
  v671 = 0xD000000000000011;
  *(inited + 88) = 0x80000001CA9AC960;
  *(inited + 96) = sub_1CA94C1E8();
  v672 = v2;
  *(inited + 120) = v2;
  *(inited + 128) = 1701667150;
  *(inited + 136) = 0xE400000000000000;
  v3 = sub_1CA94C438("2Do (App Name)", 14);
  v5 = v4;
  v6 = sub_1CA94C438("2Do", 3);
  v8 = v7;
  v9 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v691 = v10;
  v692 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v646 - v692;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v690 = qword_1EDB9F690;
  v12 = [qword_1EDB9F690 bundleURL];
  v13 = sub_1CA948BA8();
  v694 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v693 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v646 - v693;
  sub_1CA948B68();

  v16 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v17 = sub_1CA2F9F14(v3, v5, v6, v8, 0, 0, v11, v15);
  v18 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v689 = v18;
  *(inited + 144) = v17;
  *(inited + 168) = v18;
  *(inited + 176) = 0x6D656863534C5255;
  v657 = 0xEA00000000007365;
  *(inited + 184) = 0xEA00000000007365;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v19 = swift_allocObject();
  v661 = v19;
  v662 = xmmword_1CA97EDF0;
  *(v19 + 16) = xmmword_1CA97EDF0;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 32) = 0x6F646F7774;
  *(v19 + 40) = 0xE500000000000000;
  v20 = swift_initStackObject();
  v660 = v20;
  v673 = xmmword_1CA9813C0;
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = 0x736E6F69746341;
  *(v20 + 40) = 0xE700000000000000;
  v687 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v659 = swift_allocObject();
  v665 = xmmword_1CA981310;
  *(v659 + 16) = xmmword_1CA981310;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA9813E0;
  strcpy((v21 + 32), "ActionKeywords");
  *(v21 + 47) = -18;
  v22 = sub_1CA94C438("todo|to-do", 10);
  v24 = v23;
  v25 = sub_1CA94C438("todo|to-do", 10);
  v27 = v26;
  v686 = &v646;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v646 - v692;
  sub_1CA948D98();
  v29 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v658 = inited;
  v30 = &v646 - v693;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v21 + 48) = sub_1CA2F9F14(v22, v24, v25, v27, 0, 0, v28, v30);
  *(v21 + 72) = v689;
  strcpy((v21 + 80), "CreationDate");
  *(v21 + 93) = 0;
  *(v21 + 94) = -5120;
  v656 = sub_1CA948CB8();
  *(v21 + 120) = v656;
  __swift_allocate_boxed_opaque_existential_1((v21 + 96));
  sub_1CA948C28();
  *(v21 + 128) = 0x7470697263736544;
  *(v21 + 136) = 0xEB000000006E6F69;
  v686 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v32 = swift_initStackObject();
  *(v32 + 16) = v665;
  *(v32 + 32) = @"DescriptionSummary";
  v33 = @"DescriptionSummary";
  v34 = sub_1CA94C438("Adds a new task to 2Do.", 23);
  v684 = v35;
  v36 = sub_1CA94C438("Adds a new task to 2Do.", 23);
  v38 = v37;
  v685 = &v646;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v646 - v692;
  sub_1CA948D98();
  v40 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v646 - v693;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v34, v684, v36, v38, 0, 0, v39, v41);
  *(v32 + 64) = v689;
  *(v32 + 40) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA35B280(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v44 = sub_1CA94C1E8();
  v45 = v686;
  v46 = sub_1CA6B3784(v44);
  v655 = v21;
  *(v21 + 144) = v46;
  *(v21 + 168) = v45;
  *(v21 + 176) = 0x74616D726F46;
  *(v21 + 184) = 0xE600000000000000;
  *(v21 + 192) = 0xD00000000000003FLL;
  *(v21 + 200) = 0x80000001CA9C9D10;
  v47 = MEMORY[0x1E69E6158];
  *(v21 + 216) = MEMORY[0x1E69E6158];
  *(v21 + 224) = 0x696669746E656449;
  *(v21 + 232) = 0xEA00000000007265;
  *(v21 + 240) = 6579297;
  *(v21 + 248) = 0xE300000000000000;
  *(v21 + 264) = v47;
  strcpy((v21 + 272), "InputMapping");
  *(v21 + 285) = 0;
  *(v21 + 286) = -5120;
  v687 = swift_allocObject();
  *(v687 + 1) = xmmword_1CA981340;
  v48 = swift_allocObject();
  v679 = xmmword_1CA981380;
  *(v48 + 16) = xmmword_1CA981380;
  strcpy((v48 + 32), "DestinationKey");
  *(v48 + 47) = -18;
  *(v48 + 48) = 1802723700;
  *(v48 + 56) = 0xE400000000000000;
  *(v48 + 72) = v47;
  *(v48 + 80) = 0x74616E6974736544;
  *(v48 + 88) = 0xEF657079546E6F69;
  strcpy((v48 + 96), "URLQueryValue");
  *(v48 + 110) = -4864;
  *(v48 + 120) = v47;
  *(v48 + 128) = 0x73616C436D657449;
  v680 = 0x80000001CA993390;
  *(v48 + 136) = 0xE900000000000073;
  *(v48 + 144) = 0xD000000000000013;
  *(v48 + 152) = 0x80000001CA993390;
  *(v48 + 168) = v47;
  *(v48 + 176) = 0x6574656D61726150;
  *(v48 + 184) = 0xEB00000000495572;
  v686 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v685 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v49 = swift_allocObject();
  *(v49 + 16) = v674;
  v677 = 0x80000001CA99B500;
  v678 = 0xD000000000000014;
  *(v49 + 32) = @"Class";
  *(v49 + 40) = 0xD000000000000014;
  *(v49 + 48) = 0x80000001CA99B500;
  *(v49 + 64) = v47;
  *(v49 + 72) = @"Label";
  v50 = @"Class";
  v51 = @"Label";
  v52 = v50;
  v53 = v51;
  v663 = v52;
  v666 = v53;
  v54 = sub_1CA94C438("Title (Parameter Label)", 23);
  v682 = v55;
  v683 = v54;
  v56 = sub_1CA94C438("Title", 5);
  v681 = v57;
  v684 = &v646;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v646 - v692;
  sub_1CA948D98();
  v59 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = v693;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 80) = sub_1CA2F9F14(v683, v682, v56, v681, 0, 0, v58, &v646 - v60);
  v62 = v689;
  *(v49 + 104) = v689;
  *(v49 + 112) = @"Placeholder";
  v664 = @"Placeholder";
  v63 = sub_1CA94C438("Buy soup (Parameter Placeholder)", 32);
  v682 = v64;
  v683 = v63;
  v65 = sub_1CA94C438("Buy soup", 8);
  v681 = v66;
  v684 = &v646;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v646 - v692;
  sub_1CA948D98();
  v68 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 120) = sub_1CA2F9F14(v683, v682, v65, v681, 0, 0, v67, &v646 - v60);
  *(v49 + 144) = v62;
  *(v49 + 152) = @"TextAlignment";
  v70 = MEMORY[0x1E69E6158];
  *(v49 + 184) = MEMORY[0x1E69E6158];
  *(v49 + 160) = 0x7468676952;
  *(v49 + 168) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v684 = v71;
  v683 = sub_1CA35B280(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  *&v654 = @"TextAlignment";
  v72 = sub_1CA94C1E8();
  v73 = v686;
  *(v48 + 192) = sub_1CA2F864C(v72);
  *(v48 + 216) = v73;
  *(v48 + 224) = 0x654B656372756F53;
  v682 = 0xE900000000000079;
  *(v48 + 232) = 0xE900000000000079;
  *(v48 + 240) = 0x7361546F646F7774;
  *(v48 + 248) = 0xE90000000000006BLL;
  *(v48 + 264) = v70;
  *(v48 + 272) = 0x7954656372756F53;
  *(v48 + 312) = v70;
  *(v48 + 280) = 0xEA00000000006570;
  *(v48 + 288) = 0x6574656D61726150;
  v681 = 0xE900000000000072;
  *(v48 + 296) = 0xE900000000000072;
  v687[4] = sub_1CA94C1E8();
  v74 = swift_allocObject();
  v676 = xmmword_1CA981300;
  *(v74 + 16) = xmmword_1CA981300;
  v675 = 0x80000001CA9ACAF0;
  *(v74 + 32) = 0xD000000000000013;
  *(v74 + 40) = 0x80000001CA9ACAF0;
  v669 = 0x80000001CA9ACCF0;
  v75 = v678;
  *(v74 + 48) = v678;
  *(v74 + 56) = 0x80000001CA9ACCF0;
  *(v74 + 72) = v70;
  *(v74 + 80) = 0x6D726F4665746144;
  v670 = 0xEA00000000007461;
  *(v74 + 88) = 0xEA00000000007461;
  *(v74 + 96) = 0x2D4D4D2D79797979;
  *(v74 + 104) = 0xEA00000000006464;
  *(v74 + 120) = v70;
  strcpy((v74 + 128), "DestinationKey");
  *(v74 + 143) = -18;
  *(v74 + 144) = 6649188;
  *(v74 + 152) = 0xE300000000000000;
  *(v74 + 168) = v70;
  *(v74 + 176) = 0x74616E6974736544;
  *(v74 + 184) = 0xEF657079546E6F69;
  strcpy((v74 + 192), "URLQueryValue");
  *(v74 + 206) = -4864;
  *(v74 + 216) = v70;
  *(v74 + 224) = 0x73616C436D657449;
  v668 = 0x80000001CA993AC0;
  v76 = v671;
  *(v74 + 232) = 0xE900000000000073;
  *(v74 + 240) = v76;
  *(v74 + 248) = 0x80000001CA993AC0;
  *(v74 + 264) = v70;
  *(v74 + 272) = 0x6574656D61726150;
  *(v74 + 280) = 0xEB00000000495572;
  v77 = swift_allocObject();
  *(v77 + 16) = v679;
  *(v77 + 64) = v70;
  v667 = 0x80000001CA9AB710;
  v78 = v663;
  *(v77 + 32) = v663;
  *(v77 + 40) = v75;
  *(v77 + 48) = 0x80000001CA9AB710;
  v663 = v78;
  *(v77 + 72) = sub_1CA94C368();
  *(v77 + 80) = 1702125892;
  *(v77 + 88) = 0xE400000000000000;
  v79 = v666;
  *(v77 + 104) = v70;
  *(v77 + 112) = v79;
  v653 = v79;
  v80 = sub_1CA94C438("Due Date (Parameter Label)", 26);
  v651 = v81;
  v652 = v80;
  v82 = sub_1CA94C438("Due Date", 8);
  v650 = v83;
  v666 = &v646;
  MEMORY[0x1EEE9AC00](v82);
  v84 = v692;
  sub_1CA948D98();
  v85 = v690;
  v86 = [v690 bundleURL];
  v649 = &v646;
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v646 - v693;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 120) = sub_1CA2F9F14(v652, v651, v82, v650, 0, 0, &v646 - v84, v87);
  v89 = v689;
  v90 = v664;
  *(v77 + 144) = v689;
  *(v77 + 152) = v90;
  v664 = v90;
  v91 = sub_1CA94C438("May 23, 2015 (Parameter Placeholder)", 36);
  v651 = v92;
  v652 = v91;
  v93 = sub_1CA94C438("May 23, 2015", 12);
  v650 = v94;
  v666 = &v646;
  MEMORY[0x1EEE9AC00](v93);
  sub_1CA948D98();
  v95 = [v85 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v646 - v693;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v77 + 160) = sub_1CA2F9F14(v652, v651, v93, v650, 0, 0, &v646 - v84, v96);
  *(v77 + 184) = v89;
  *(v77 + 192) = @"ResultType";
  *(v77 + 200) = 0x676E69727453;
  *(v77 + 208) = 0xE600000000000000;
  v98 = MEMORY[0x1E69E6158];
  v99 = v654;
  *(v77 + 224) = MEMORY[0x1E69E6158];
  *(v77 + 232) = v99;
  *(v77 + 264) = v98;
  v100 = v98;
  *(v77 + 240) = 0x7468676952;
  *(v77 + 248) = 0xE500000000000000;
  v101 = @"ResultType";
  *&v654 = v99;
  v666 = v101;
  v102 = sub_1CA94C1E8();
  v103 = v686;
  *(v74 + 288) = sub_1CA2F864C(v102);
  *(v74 + 312) = v103;
  *(v74 + 320) = 0x654B656372756F53;
  *(v74 + 328) = v682;
  strcpy((v74 + 336), "twodoDueDate");
  *(v74 + 349) = 0;
  *(v74 + 350) = -5120;
  *(v74 + 360) = v100;
  *(v74 + 368) = 0x7954656372756F53;
  *(v74 + 408) = v100;
  *(v74 + 376) = 0xEA00000000006570;
  *(v74 + 384) = 0x6574656D61726150;
  *(v74 + 392) = v681;
  v687[5] = sub_1CA94C1E8();
  v104 = swift_allocObject();
  *(v104 + 16) = v676;
  *(v104 + 32) = 0xD000000000000013;
  v105 = v678;
  *(v104 + 40) = v675;
  *(v104 + 48) = v105;
  v106 = v670;
  *(v104 + 56) = v669;
  *(v104 + 72) = v100;
  *(v104 + 80) = 0x6D726F4665746144;
  *(v104 + 88) = v106;
  *(v104 + 96) = 0x6D6D3A4848;
  *(v104 + 104) = 0xE500000000000000;
  *(v104 + 120) = v100;
  strcpy((v104 + 128), "DestinationKey");
  *(v104 + 143) = -18;
  *(v104 + 144) = 0x656D6954657564;
  *(v104 + 152) = 0xE700000000000000;
  *(v104 + 168) = v100;
  *(v104 + 176) = 0x74616E6974736544;
  *(v104 + 184) = 0xEF657079546E6F69;
  strcpy((v104 + 192), "URLQueryValue");
  *(v104 + 206) = -4864;
  *(v104 + 216) = v100;
  *(v104 + 224) = 0x73616C436D657449;
  *(v104 + 232) = 0xE900000000000073;
  v107 = v668;
  *(v104 + 240) = v671;
  *(v104 + 248) = v107;
  *(v104 + 264) = v100;
  *(v104 + 272) = 0x6574656D61726150;
  v108 = v100;
  *(v104 + 280) = 0xEB00000000495572;
  v109 = swift_allocObject();
  *(v109 + 16) = v679;
  *(v109 + 64) = v108;
  v110 = v663;
  *(v109 + 32) = v663;
  *(v109 + 40) = v105;
  *(v109 + 48) = v667;
  v663 = v110;
  *(v109 + 72) = sub_1CA94C368();
  *(v109 + 80) = 1701669204;
  *(v109 + 88) = 0xE400000000000000;
  v111 = v653;
  *(v109 + 104) = v108;
  *(v109 + 112) = v111;
  v653 = v111;
  v112 = sub_1CA94C438("Due Time (Parameter Label)", 26);
  v650 = v113;
  v651 = v112;
  v114 = sub_1CA94C438("Due Time", 8);
  v649 = v115;
  v652 = &v646;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v692;
  sub_1CA948D98();
  v117 = [v85 bundleURL];
  v648 = &v646;
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v646 - v693;
  sub_1CA948B68();

  v119 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v109 + 120) = sub_1CA2F9F14(v651, v650, v114, v649, 0, 0, &v646 - v116, v118);
  v120 = v689;
  v121 = v664;
  *(v109 + 144) = v689;
  *(v109 + 152) = v121;
  v664 = v121;
  v122 = sub_1CA94C438("11AM (Parameter Placeholder)", 28);
  v650 = v123;
  v651 = v122;
  v649 = sub_1CA94C438("11AM", 4);
  v125 = v124;
  v652 = &v646;
  MEMORY[0x1EEE9AC00](v649);
  sub_1CA948D98();
  v126 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v646 - v693;
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v109 + 160) = sub_1CA2F9F14(v651, v650, v649, v125, 0, 0, &v646 - v116, v127);
  v129 = v666;
  *(v109 + 184) = v120;
  *(v109 + 192) = v129;
  *(v109 + 200) = 0x676E69727453;
  *(v109 + 208) = 0xE600000000000000;
  v130 = MEMORY[0x1E69E6158];
  v131 = v654;
  *(v109 + 224) = MEMORY[0x1E69E6158];
  *(v109 + 232) = v131;
  *(v109 + 264) = v130;
  *(v109 + 240) = 0x7468676952;
  *(v109 + 248) = 0xE500000000000000;
  *&v654 = v131;
  v132 = sub_1CA94C1E8();
  v133 = v686;
  *(v104 + 288) = sub_1CA2F864C(v132);
  *(v104 + 312) = v133;
  *(v104 + 320) = 0x654B656372756F53;
  *(v104 + 328) = v682;
  strcpy((v104 + 336), "twodoDueTime");
  *(v104 + 349) = 0;
  *(v104 + 350) = -5120;
  *(v104 + 360) = v130;
  *(v104 + 368) = 0x7954656372756F53;
  *(v104 + 408) = v130;
  *(v104 + 376) = 0xEA00000000006570;
  *(v104 + 384) = 0x6574656D61726150;
  *(v104 + 392) = v681;
  v687[6] = sub_1CA94C1E8();
  v134 = swift_allocObject();
  *(v134 + 16) = v676;
  v135 = v675;
  *(v134 + 32) = 0xD000000000000013;
  *(v134 + 40) = v135;
  v136 = v678;
  v137 = v669;
  v138 = v670;
  *(v134 + 48) = v678;
  *(v134 + 56) = v137;
  *(v134 + 72) = v130;
  *(v134 + 80) = 0x6D726F4665746144;
  v675 = 0xD000000000000010;
  *(v134 + 88) = v138;
  *(v134 + 96) = 0xD000000000000010;
  *(v134 + 104) = 0x80000001CA9C9DE0;
  *(v134 + 120) = v130;
  strcpy((v134 + 128), "DestinationKey");
  *(v134 + 143) = -18;
  *(v134 + 144) = 0x7472617473;
  *(v134 + 152) = 0xE500000000000000;
  *(v134 + 168) = v130;
  *(v134 + 176) = 0x74616E6974736544;
  *(v134 + 184) = 0xEF657079546E6F69;
  strcpy((v134 + 192), "URLQueryValue");
  *(v134 + 206) = -4864;
  *(v134 + 216) = v130;
  *(v134 + 224) = 0x73616C436D657449;
  *(v134 + 232) = 0xE900000000000073;
  v139 = v668;
  *(v134 + 240) = v671;
  *(v134 + 248) = v139;
  *(v134 + 264) = v130;
  *(v134 + 272) = 0x6574656D61726150;
  *(v134 + 280) = 0xEB00000000495572;
  v140 = swift_allocObject();
  *(v140 + 16) = v679;
  *(v140 + 64) = v130;
  v141 = v663;
  *(v140 + 32) = v663;
  *(v140 + 40) = v136;
  *(v140 + 48) = v667;
  v669 = v141;
  *(v140 + 72) = sub_1CA94C368();
  *(v140 + 80) = 1702125892;
  *(v140 + 88) = 0xE400000000000000;
  v142 = v653;
  *(v140 + 104) = v130;
  *(v140 + 112) = v142;
  v668 = v142;
  v667 = sub_1CA94C438("Start Date (Parameter Label)", 28);
  v663 = v143;
  v144 = sub_1CA94C438("Start Date", 10);
  v653 = v145;
  v670 = &v646;
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v646 - v692;
  sub_1CA948D98();
  v147 = v690;
  v148 = [v690 bundleURL];
  v652 = &v646;
  MEMORY[0x1EEE9AC00](v148);
  v149 = v693;
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v140 + 120) = sub_1CA2F9F14(v667, v663, v144, v653, 0, 0, v146, &v646 - v149);
  v151 = v689;
  v152 = v664;
  *(v140 + 144) = v689;
  *(v140 + 152) = v152;
  v670 = v152;
  v153 = sub_1CA94C438("May 22, 2015 (Parameter Placeholder)", 36);
  v663 = v154;
  v664 = v153;
  v155 = sub_1CA94C438("May 22, 2015", 12);
  v653 = v156;
  v667 = &v646;
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v646 - v692;
  sub_1CA948D98();
  v158 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v140 + 160) = sub_1CA2F9F14(v664, v663, v155, v653, 0, 0, v157, &v646 - v149);
  v160 = v666;
  *(v140 + 184) = v151;
  *(v140 + 192) = v160;
  *(v140 + 200) = 0x676E69727453;
  *(v140 + 208) = 0xE600000000000000;
  v161 = MEMORY[0x1E69E6158];
  v162 = v654;
  *(v140 + 224) = MEMORY[0x1E69E6158];
  *(v140 + 232) = v162;
  *(v140 + 264) = v161;
  v163 = v161;
  *(v140 + 240) = 0x7468676952;
  *(v140 + 248) = 0xE500000000000000;
  v664 = v162;
  v164 = sub_1CA94C1E8();
  v165 = v686;
  *(v134 + 288) = sub_1CA2F864C(v164);
  *(v134 + 312) = v165;
  *(v134 + 320) = 0x654B656372756F53;
  *(v134 + 328) = v682;
  *(v134 + 336) = 0x6174536F646F7774;
  *(v134 + 344) = 0xEA00000000007472;
  *(v134 + 360) = v163;
  *(v134 + 368) = 0x7954656372756F53;
  *(v134 + 408) = v163;
  *(v134 + 376) = 0xEA00000000006570;
  *(v134 + 384) = 0x6574656D61726150;
  *(v134 + 392) = v681;
  v687[7] = sub_1CA94C1E8();
  v166 = swift_allocObject();
  *(v166 + 16) = v679;
  strcpy((v166 + 32), "DestinationKey");
  *(v166 + 47) = -18;
  *(v166 + 48) = 0x7473694C726F66;
  *(v166 + 56) = 0xE700000000000000;
  *(v166 + 72) = v163;
  *(v166 + 80) = 0x74616E6974736544;
  *(v166 + 88) = 0xEF657079546E6F69;
  strcpy((v166 + 96), "URLQueryValue");
  *(v166 + 110) = -4864;
  *(v166 + 120) = v163;
  *(v166 + 128) = 0x73616C436D657449;
  *(v166 + 136) = 0xE900000000000073;
  *(v166 + 144) = 0xD000000000000013;
  *(v166 + 152) = v680;
  *(v166 + 168) = v163;
  *(v166 + 176) = 0x6574656D61726150;
  *(v166 + 184) = 0xEB00000000495572;
  v167 = swift_allocObject();
  *(v167 + 16) = v673;
  v169 = v668;
  v168 = v669;
  v170 = v677;
  v171 = v678;
  *(v167 + 32) = v669;
  *(v167 + 40) = v171;
  *(v167 + 48) = v170;
  *(v167 + 64) = v163;
  *(v167 + 72) = v169;
  v666 = v168;
  v667 = v169;
  v172 = sub_1CA94C438("List (Parameter Label)", 22);
  v668 = v173;
  v174 = sub_1CA94C438("List", 4);
  v176 = v175;
  v669 = &v646;
  MEMORY[0x1EEE9AC00](v174);
  v177 = &v646 - v692;
  sub_1CA948D98();
  v178 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v178);
  v179 = &v646 - v693;
  sub_1CA948B68();

  v180 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v167 + 80) = sub_1CA2F9F14(v172, v668, v174, v176, 0, 0, v177, v179);
  v181 = v664;
  *(v167 + 104) = v689;
  *(v167 + 112) = v181;
  v182 = MEMORY[0x1E69E6158];
  *(v167 + 144) = MEMORY[0x1E69E6158];
  *(v167 + 120) = 0x7468676952;
  *(v167 + 128) = 0xE500000000000000;
  v669 = v181;
  v183 = sub_1CA94C1E8();
  v184 = v686;
  *(v166 + 192) = sub_1CA2F864C(v183);
  *(v166 + 216) = v184;
  *(v166 + 224) = 0x654B656372756F53;
  *(v166 + 232) = v682;
  *(v166 + 240) = 0x73694C6F646F7774;
  *(v166 + 248) = 0xE900000000000074;
  *(v166 + 264) = v182;
  *(v166 + 272) = 0x7954656372756F53;
  *(v166 + 312) = v182;
  *(v166 + 280) = 0xEA00000000006570;
  *(v166 + 288) = 0x6574656D61726150;
  *(v166 + 296) = v681;
  v687[8] = sub_1CA94C1E8();
  v185 = swift_allocObject();
  *(v185 + 16) = v679;
  strcpy((v185 + 32), "DestinationKey");
  *(v185 + 47) = -18;
  strcpy((v185 + 48), "forParentName");
  *(v185 + 62) = -4864;
  *(v185 + 72) = v182;
  *(v185 + 80) = 0x74616E6974736544;
  *(v185 + 88) = 0xEF657079546E6F69;
  strcpy((v185 + 96), "URLQueryValue");
  *(v185 + 110) = -4864;
  *(v185 + 120) = v182;
  *(v185 + 128) = 0x73616C436D657449;
  *(v185 + 136) = 0xE900000000000073;
  *(v185 + 144) = 0xD000000000000013;
  *(v185 + 152) = v680;
  *(v185 + 168) = v182;
  *(v185 + 176) = 0x6574656D61726150;
  *(v185 + 184) = 0xEB00000000495572;
  v186 = swift_allocObject();
  *(v186 + 16) = v674;
  v187 = v666;
  v188 = v667;
  v189 = v677;
  v190 = v678;
  *(v186 + 32) = v666;
  *(v186 + 40) = v190;
  *(v186 + 48) = v189;
  *(v186 + 64) = v182;
  *(v186 + 72) = v188;
  v668 = v187;
  v667 = v188;
  v191 = sub_1CA94C438("Project Name (Parameter Label)", 30);
  v663 = v192;
  v664 = v191;
  *&v654 = sub_1CA94C438("Project Name", 12);
  v194 = v193;
  v666 = &v646;
  MEMORY[0x1EEE9AC00](v654);
  v195 = v692;
  sub_1CA948D98();
  v196 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v196);
  v197 = &v646 - v693;
  sub_1CA948B68();

  v198 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 80) = sub_1CA2F9F14(v664, v663, v654, v194, 0, 0, &v646 - v195, v197);
  v199 = v689;
  v200 = v670;
  *(v186 + 104) = v689;
  *(v186 + 112) = v200;
  v670 = v200;
  v201 = sub_1CA94C438("optional (Parameter Placeholder)", 32);
  v663 = v202;
  v664 = v201;
  v203 = sub_1CA94C438("optional", 8);
  v205 = v204;
  v666 = &v646;
  MEMORY[0x1EEE9AC00](v203);
  sub_1CA948D98();
  v206 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v646 - v693;
  sub_1CA948B68();

  v208 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v186 + 120) = sub_1CA2F9F14(v664, v663, v203, v205, 0, 0, &v646 - v195, v207);
  v209 = v669;
  *(v186 + 144) = v199;
  *(v186 + 152) = v209;
  v210 = MEMORY[0x1E69E6158];
  *(v186 + 184) = MEMORY[0x1E69E6158];
  *(v186 + 160) = 0x7468676952;
  *(v186 + 168) = 0xE500000000000000;
  v669 = v209;
  v211 = sub_1CA94C1E8();
  v212 = v686;
  *(v185 + 192) = sub_1CA2F864C(v211);
  *(v185 + 216) = v212;
  *(v185 + 224) = 0x654B656372756F53;
  *(v185 + 232) = v682;
  *(v185 + 240) = 0x7261506F646F7774;
  *(v185 + 248) = 0xEF656D614E746E65;
  *(v185 + 264) = v210;
  *(v185 + 272) = 0x7954656372756F53;
  *(v185 + 312) = v210;
  *(v185 + 280) = 0xEA00000000006570;
  *(v185 + 288) = 0x6574656D61726150;
  *(v185 + 296) = v681;
  v687[9] = sub_1CA94C1E8();
  v213 = swift_allocObject();
  *(v213 + 16) = v679;
  strcpy((v213 + 32), "DestinationKey");
  *(v213 + 47) = -18;
  *(v213 + 48) = 1936154996;
  *(v213 + 56) = 0xE400000000000000;
  *(v213 + 72) = v210;
  *(v213 + 80) = 0x74616E6974736544;
  *(v213 + 88) = 0xEF657079546E6F69;
  strcpy((v213 + 96), "URLQueryValue");
  *(v213 + 110) = -4864;
  *(v213 + 120) = v210;
  *(v213 + 128) = 0x73616C436D657449;
  *(v213 + 136) = 0xE900000000000073;
  *(v213 + 144) = 0xD000000000000013;
  *(v213 + 152) = v680;
  *(v213 + 168) = v210;
  *(v213 + 176) = 0x6574656D61726150;
  *(v213 + 184) = 0xEB00000000495572;
  v214 = swift_allocObject();
  *(v214 + 16) = v674;
  v216 = v667;
  v215 = v668;
  v217 = v677;
  v218 = v678;
  *(v214 + 32) = v668;
  *(v214 + 40) = v218;
  *(v214 + 48) = v217;
  *(v214 + 64) = v210;
  *(v214 + 72) = v216;
  v668 = v215;
  v667 = v216;
  v219 = sub_1CA94C438("Tags (Parameter Label)", 22);
  v663 = v220;
  v664 = v219;
  v221 = sub_1CA94C438("Tags", 4);
  *&v654 = v222;
  v666 = &v646;
  MEMORY[0x1EEE9AC00](v221);
  v223 = v692;
  sub_1CA948D98();
  v224 = [v690 bundleURL];
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v224);
  v225 = v693;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v214 + 80) = sub_1CA2F9F14(v664, v663, v221, v654, 0, 0, &v646 - v223, &v646 - v225);
  v227 = v689;
  v228 = v670;
  *(v214 + 104) = v689;
  *(v214 + 112) = v228;
  v670 = v228;
  v229 = sub_1CA94C438("groceries, errands (Parameter Placeholder)", 42);
  v663 = v230;
  v664 = v229;
  v231 = sub_1CA94C438("groceries, errands", 18);
  *&v654 = v232;
  v666 = &v646;
  MEMORY[0x1EEE9AC00](v231);
  sub_1CA948D98();
  v233 = [v690 bundleURL];
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v233);
  sub_1CA948B68();

  v234 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v214 + 120) = sub_1CA2F9F14(v664, v663, v231, v654, 0, 0, &v646 - v223, &v646 - v225);
  v235 = v669;
  *(v214 + 144) = v227;
  *(v214 + 152) = v235;
  v236 = MEMORY[0x1E69E6158];
  *(v214 + 184) = MEMORY[0x1E69E6158];
  *(v214 + 160) = 0x7468676952;
  *(v214 + 168) = 0xE500000000000000;
  v663 = v235;
  v237 = sub_1CA94C1E8();
  v238 = v686;
  *(v213 + 192) = sub_1CA2F864C(v237);
  *(v213 + 216) = v238;
  *(v213 + 224) = 0x654B656372756F53;
  *(v213 + 232) = v682;
  *(v213 + 240) = 0x6761546F646F7774;
  *(v213 + 248) = 0xE900000000000073;
  *(v213 + 264) = v236;
  *(v213 + 272) = 0x7954656372756F53;
  *(v213 + 312) = v236;
  *(v213 + 280) = 0xEA00000000006570;
  *(v213 + 288) = 0x6574656D61726150;
  *(v213 + 296) = v681;
  v687[10] = sub_1CA94C1E8();
  v239 = swift_allocObject();
  *(v239 + 16) = v679;
  strcpy((v239 + 32), "DestinationKey");
  *(v239 + 47) = -18;
  *(v239 + 48) = 0x6E6F697461636F6CLL;
  *(v239 + 56) = 0xE900000000000073;
  *(v239 + 72) = v236;
  *(v239 + 80) = 0x74616E6974736544;
  *(v239 + 88) = 0xEF657079546E6F69;
  strcpy((v239 + 96), "URLQueryValue");
  *(v239 + 110) = -4864;
  *(v239 + 120) = v236;
  *(v239 + 128) = 0x73616C436D657449;
  *(v239 + 136) = 0xE900000000000073;
  *(v239 + 144) = 0xD000000000000013;
  *(v239 + 152) = v680;
  *(v239 + 168) = v236;
  *(v239 + 176) = 0x6574656D61726150;
  *(v239 + 184) = 0xEB00000000495572;
  v240 = swift_allocObject();
  *(v240 + 16) = v674;
  v242 = v667;
  v241 = v668;
  v243 = v677;
  v244 = v678;
  *(v240 + 32) = v668;
  *(v240 + 40) = v244;
  *(v240 + 48) = v243;
  *(v240 + 64) = v236;
  *(v240 + 72) = v242;
  v669 = v241;
  v668 = v242;
  v666 = sub_1CA94C438("Locations (Parameter Label)", 27);
  v664 = v245;
  *&v654 = sub_1CA94C438("Locations", 9);
  v247 = v246;
  v667 = &v646;
  MEMORY[0x1EEE9AC00](v654);
  v248 = &v646 - v692;
  sub_1CA948D98();
  v249 = v690;
  v250 = [v690 bundleURL];
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v250);
  v251 = &v646 - v693;
  sub_1CA948B68();

  v252 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v240 + 80) = sub_1CA2F9F14(v666, v664, v654, v247, 0, 0, v248, v251);
  v253 = v689;
  v254 = v670;
  *(v240 + 104) = v689;
  *(v240 + 112) = v254;
  v664 = v254;
  v255 = sub_1CA94C438("home, work (Parameter Placeholder)", 34);
  v666 = v256;
  v667 = v255;
  v257 = sub_1CA94C438("home, work", 10);
  *&v654 = v258;
  v670 = &v646;
  MEMORY[0x1EEE9AC00](v257);
  v259 = &v646 - v692;
  sub_1CA948D98();
  v260 = [v249 bundleURL];
  MEMORY[0x1EEE9AC00](v260);
  v261 = &v646 - v693;
  sub_1CA948B68();

  v262 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v240 + 120) = sub_1CA2F9F14(v667, v666, v257, v654, 0, 0, v259, v261);
  v263 = v663;
  *(v240 + 144) = v253;
  *(v240 + 152) = v263;
  v264 = MEMORY[0x1E69E6158];
  *(v240 + 184) = MEMORY[0x1E69E6158];
  *(v240 + 160) = 0x7468676952;
  *(v240 + 168) = 0xE500000000000000;
  v265 = sub_1CA94C1E8();
  v266 = v686;
  *(v239 + 192) = sub_1CA2F864C(v265);
  *(v239 + 216) = v266;
  *(v239 + 224) = 0x654B656372756F53;
  *(v239 + 232) = v682;
  strcpy((v239 + 240), "twodoLocations");
  *(v239 + 255) = -18;
  *(v239 + 264) = v264;
  *(v239 + 272) = 0x7954656372756F53;
  *(v239 + 312) = v264;
  *(v239 + 280) = 0xEA00000000006570;
  *(v239 + 288) = 0x6574656D61726150;
  *(v239 + 296) = v681;
  v687[11] = sub_1CA94C1E8();
  v267 = swift_allocObject();
  v654 = xmmword_1CA981370;
  *(v267 + 16) = xmmword_1CA981370;
  strcpy((v267 + 32), "DestinationKey");
  *(v267 + 47) = -18;
  *(v267 + 48) = 0x64657272617473;
  *(v267 + 56) = 0xE700000000000000;
  *(v267 + 72) = v264;
  *(v267 + 80) = 0x74616E6974736544;
  *(v267 + 88) = 0xEF657079546E6F69;
  strcpy((v267 + 96), "URLQueryValue");
  *(v267 + 110) = -4864;
  *(v267 + 120) = v264;
  *(v267 + 128) = 0x6574656D61726150;
  *(v267 + 136) = 0xEB00000000495572;
  v268 = swift_allocObject();
  *(v268 + 16) = v662;
  v270 = v668;
  v269 = v669;
  v271 = v671;
  *(v268 + 32) = v669;
  *(v268 + 40) = v271;
  *(v268 + 48) = 0x80000001CA99E620;
  *(v268 + 64) = v264;
  *(v268 + 72) = v270;
  v670 = v269;
  *&v662 = v270;
  v272 = sub_1CA94C438("Starred (Parameter Label)", 25);
  v669 = v273;
  v274 = sub_1CA94C438("Starred", 7);
  v276 = v275;
  v671 = &v646;
  MEMORY[0x1EEE9AC00](v274);
  v277 = &v646 - v692;
  sub_1CA948D98();
  v278 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v278);
  v279 = &v646 - v693;
  sub_1CA948B68();

  v280 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v281 = sub_1CA2F9F14(v272, v669, v274, v276, 0, 0, v277, v279);
  *(v268 + 104) = v689;
  *(v268 + 80) = v281;
  v282 = sub_1CA94C1E8();
  v283 = v686;
  *(v267 + 144) = sub_1CA2F864C(v282);
  *(v267 + 168) = v283;
  *(v267 + 176) = 0x654B656372756F53;
  *(v267 + 184) = v682;
  strcpy((v267 + 192), "twodoStarred");
  *(v267 + 205) = 0;
  *(v267 + 206) = -5120;
  v284 = MEMORY[0x1E69E6158];
  *(v267 + 216) = MEMORY[0x1E69E6158];
  *(v267 + 224) = 0x7954656372756F53;
  *(v267 + 264) = v284;
  *(v267 + 232) = 0xEA00000000006570;
  *(v267 + 240) = 0x6574656D61726150;
  *(v267 + 248) = v681;
  v687[12] = sub_1CA94C1E8();
  v285 = swift_allocObject();
  *(v285 + 16) = v676;
  strcpy((v285 + 32), "DestinationKey");
  *(v285 + 47) = -18;
  *(v285 + 48) = 1701869940;
  *(v285 + 56) = 0xE400000000000000;
  *(v285 + 72) = v284;
  *(v285 + 80) = 0x74616E6974736544;
  *(v285 + 88) = 0xEF657079546E6F69;
  strcpy((v285 + 96), "URLQueryValue");
  *(v285 + 110) = -4864;
  *(v285 + 120) = v284;
  *(v285 + 128) = 0x73616C436D657449;
  *(v285 + 136) = 0xE900000000000073;
  *(v285 + 144) = 0xD000000000000013;
  *(v285 + 152) = v680;
  v669 = 0x80000001CA9A8C50;
  v286 = v675;
  *(v285 + 168) = v284;
  *(v285 + 176) = v286;
  *(v285 + 184) = 0x80000001CA9A8C50;
  *(v285 + 192) = 1802723668;
  *(v285 + 200) = 0xE400000000000000;
  *(v285 + 216) = v284;
  *(v285 + 224) = 0x6574656D61726150;
  *(v285 + 232) = 0xEB00000000495572;
  v287 = swift_allocObject();
  v651 = v287;
  *(v287 + 16) = v673;
  v667 = 0xD000000000000016;
  v668 = 0x80000001CA99C4A0;
  v288 = v670;
  *(v287 + 32) = v670;
  *(v287 + 40) = 0xD000000000000016;
  *(v287 + 48) = 0x80000001CA99C4A0;
  *(v287 + 64) = v284;
  *(v287 + 72) = @"Items";
  v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v671 = swift_allocObject();
  *(v671 + 1) = xmmword_1CA981470;
  v289 = @"Items";
  v652 = v288;
  v650 = v289;
  v653 = sub_1CA94C438("Task (twodoType)", 16);
  v649 = v290;
  v291 = sub_1CA94C438("Task", 4);
  v648 = v292;
  v670 = &v646;
  MEMORY[0x1EEE9AC00](v291);
  v293 = v692;
  sub_1CA948D98();
  v294 = v690;
  v295 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v295);
  v296 = &v646 - v693;
  sub_1CA948B68();

  v297 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v298 = sub_1CA2F9F14(v653, v649, v291, v648, 0, 0, &v646 - v293, v296);
  v299 = v671;
  v671[4] = v298;
  v653 = sub_1CA94C438("Project (twodoType)", 19);
  v649 = v300;
  v301 = sub_1CA94C438("Project", 7);
  v648 = v302;
  v670 = &v646;
  MEMORY[0x1EEE9AC00](v301);
  sub_1CA948D98();
  v303 = [v294 bundleURL];
  v647 = &v646;
  MEMORY[0x1EEE9AC00](v303);
  v304 = v693;
  sub_1CA948B68();

  v305 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v299[5] = sub_1CA2F9F14(v653, v649, v301, v648, 0, 0, &v646 - v293, &v646 - v304);
  v653 = sub_1CA94C438("Checklist (twodoType)", 21);
  v649 = v306;
  v307 = sub_1CA94C438("Checklist", 9);
  v648 = v308;
  v670 = &v646;
  MEMORY[0x1EEE9AC00](v307);
  sub_1CA948D98();
  v309 = v690;
  v310 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v310);
  sub_1CA948B68();

  v311 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v312 = sub_1CA2F9F14(v653, v649, v307, v648, 0, 0, &v646 - v293, &v646 - v304);
  v313 = v671;
  v671[6] = v312;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v670 = v314;
  v315 = v651;
  v651[10] = v313;
  v316 = v662;
  v315[13] = v314;
  v315[14] = v316;
  v653 = v316;
  *&v662 = sub_1CA94C438("Type (Parameter Label)", 22);
  v649 = v317;
  v318 = sub_1CA94C438("Type", 4);
  v320 = v319;
  v671 = &v646;
  MEMORY[0x1EEE9AC00](v318);
  v321 = &v646 - v692;
  sub_1CA948D98();
  v322 = [v309 bundleURL];
  MEMORY[0x1EEE9AC00](v322);
  v323 = &v646 - v693;
  sub_1CA948B68();

  v324 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v325 = sub_1CA2F9F14(v662, v649, v318, v320, 0, 0, v321, v323);
  v315[18] = v689;
  v315[15] = v325;
  v326 = sub_1CA94C1E8();
  v327 = v686;
  *(v285 + 240) = sub_1CA2F864C(v326);
  *(v285 + 264) = v327;
  *(v285 + 272) = 0x654B656372756F53;
  *(v285 + 280) = v682;
  *(v285 + 288) = 0x7079546F646F7774;
  *(v285 + 296) = 0xE900000000000065;
  v328 = MEMORY[0x1E69E6158];
  *(v285 + 312) = MEMORY[0x1E69E6158];
  *(v285 + 320) = 0x7954656372756F53;
  *(v285 + 328) = 0xEA00000000006570;
  *(v285 + 336) = 0x6574656D61726150;
  *(v285 + 344) = v681;
  *(v285 + 360) = v328;
  strcpy((v285 + 368), "ValueMapping");
  *(v285 + 381) = 0;
  *(v285 + 382) = -5120;
  v329 = v328;
  v330 = sub_1CA94C1E8();
  *(v285 + 408) = v672;
  *(v285 + 384) = v330;
  v687[13] = sub_1CA94C1E8();
  v331 = swift_allocObject();
  *(v331 + 16) = v676;
  strcpy((v331 + 32), "DestinationKey");
  *(v331 + 47) = -18;
  *(v331 + 48) = 0x79546E6F69746361;
  *(v331 + 56) = 0xEA00000000006570;
  *(v331 + 72) = v329;
  *(v331 + 80) = 0x74616E6974736544;
  *(v331 + 88) = 0xEF657079546E6F69;
  *(v331 + 96) = 0x74736275534C5255;
  *(v331 + 104) = 0xEF6E6F6974757469;
  *(v331 + 120) = v329;
  *(v331 + 128) = 0x73616C436D657449;
  *(v331 + 136) = 0xE900000000000073;
  *(v331 + 144) = 0xD000000000000013;
  *(v331 + 152) = v680;
  v332 = v675;
  *(v331 + 168) = v329;
  *(v331 + 176) = v332;
  *(v331 + 184) = v669;
  *(v331 + 192) = 1701736270;
  *(v331 + 200) = 0xE400000000000000;
  *(v331 + 216) = v329;
  *(v331 + 224) = 0x6574656D61726150;
  *(v331 + 232) = 0xEB00000000495572;
  v333 = swift_allocObject();
  v651 = v333;
  *(v333 + 16) = v673;
  v334 = v652;
  v336 = v667;
  v335 = v668;
  *(v333 + 32) = v652;
  *(v333 + 40) = v336;
  *(v333 + 48) = v335;
  v337 = v650;
  *(v333 + 64) = v329;
  *(v333 + 72) = v337;
  v671 = swift_allocObject();
  *(v671 + 1) = xmmword_1CA98B2D0;
  v652 = v334;
  *&v662 = v337;
  v338 = sub_1CA94C438("None (twodoActionType)", 22);
  v648 = v339;
  v649 = v338;
  v340 = sub_1CA94C438("None", 4);
  v647 = v341;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v340);
  v342 = v692;
  sub_1CA948D98();
  v343 = v690;
  v344 = [v690 bundleURL];
  v646 = &v646;
  MEMORY[0x1EEE9AC00](v344);
  v345 = &v646 - v693;
  sub_1CA948B68();

  v346 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v347 = sub_1CA2F9F14(v649, v648, v340, v647, 0, 0, &v646 - v342, v345);
  v348 = v671;
  v671[4] = v347;
  v349 = sub_1CA94C438("Call (twodoActionType)", 22);
  v648 = v350;
  v649 = v349;
  v647 = sub_1CA94C438("Call", 4);
  v352 = v351;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v647);
  sub_1CA948D98();
  v353 = [v343 bundleURL];
  MEMORY[0x1EEE9AC00](v353);
  v354 = v693;
  sub_1CA948B68();

  v355 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v356 = v348;
  v348[5] = sub_1CA2F9F14(v649, v648, v647, v352, 0, 0, &v646 - v342, &v646 - v354);
  v357 = sub_1CA94C438("Send Message (twodoActionType)", 30);
  v648 = v358;
  v649 = v357;
  v359 = sub_1CA94C438("Send Message", 12);
  v647 = v360;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v359);
  v361 = v692;
  sub_1CA948D98();
  v362 = v690;
  v363 = [v690 bundleURL];
  v646 = &v646;
  MEMORY[0x1EEE9AC00](v363);
  sub_1CA948B68();

  v364 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v356[6] = sub_1CA2F9F14(v649, v648, v359, v647, 0, 0, &v646 - v361, &v646 - v354);
  v365 = sub_1CA94C438("Send Email (twodoActionType)", 28);
  v648 = v366;
  v649 = v365;
  v367 = sub_1CA94C438("Send Email", 10);
  v647 = v368;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v367);
  v369 = &v646 - v361;
  sub_1CA948D98();
  v370 = [v362 bundleURL];
  MEMORY[0x1EEE9AC00](v370);
  v371 = v693;
  sub_1CA948B68();

  v372 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v373 = sub_1CA2F9F14(v649, v648, v367, v647, 0, 0, v369, &v646 - v371);
  v374 = v671;
  v671[7] = v373;
  v375 = sub_1CA94C438("Visit URL (twodoActionType)", 27);
  v648 = v376;
  v649 = v375;
  v377 = sub_1CA94C438("Visit URL", 9);
  v647 = v378;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v377);
  v379 = &v646 - v692;
  sub_1CA948D98();
  v380 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v380);
  sub_1CA948B68();

  v381 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v374[8] = sub_1CA2F9F14(v649, v648, v377, v647, 0, 0, v379, &v646 - v371);
  v382 = sub_1CA94C438("Visit Address (twodoActionType)", 31);
  v648 = v383;
  v649 = v382;
  v384 = sub_1CA94C438("Visit Address", 13);
  v647 = v385;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v384);
  v386 = v692;
  sub_1CA948D98();
  v387 = v690;
  v388 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v388);
  v389 = &v646 - v693;
  sub_1CA948B68();

  v390 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v391 = sub_1CA2F9F14(v649, v648, v384, v647, 0, 0, &v646 - v386, v389);
  v671[9] = v391;
  v392 = sub_1CA94C438("Google Search (twodoActionType)", 31);
  v648 = v393;
  v649 = v392;
  v394 = sub_1CA94C438("Google Search", 13);
  v647 = v395;
  v650 = &v646;
  MEMORY[0x1EEE9AC00](v394);
  v396 = &v646 - v386;
  sub_1CA948D98();
  v397 = [v387 bundleURL];
  MEMORY[0x1EEE9AC00](v397);
  v398 = v693;
  sub_1CA948B68();

  v399 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v400 = sub_1CA2F9F14(v649, v648, v394, v647, 0, 0, v396, &v646 - v398);
  v401 = v651;
  v403 = v670;
  v402 = v671;
  v671[10] = v400;
  v401[10] = v402;
  v404 = v653;
  v401[13] = v403;
  v401[14] = v404;
  v671 = v404;
  v405 = sub_1CA94C438("Action (Parameter Label)", 24);
  v649 = v406;
  v650 = v405;
  v407 = sub_1CA94C438("Action", 6);
  v648 = v408;
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v407);
  v409 = &v646 - v692;
  sub_1CA948D98();
  v410 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v410);
  sub_1CA948B68();

  v411 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v412 = sub_1CA2F9F14(v650, v649, v407, v648, 0, 0, v409, &v646 - v398);
  v401[18] = v689;
  v401[15] = v412;
  v413 = sub_1CA94C1E8();
  v414 = v686;
  *(v331 + 240) = sub_1CA2F864C(v413);
  *(v331 + 264) = v414;
  *(v331 + 272) = 0x654B656372756F53;
  *(v331 + 280) = v682;
  *(v331 + 288) = 0x7463416F646F7774;
  *(v331 + 296) = 0xEF657079546E6F69;
  v415 = MEMORY[0x1E69E6158];
  *(v331 + 312) = MEMORY[0x1E69E6158];
  *(v331 + 320) = 0x7954656372756F53;
  *(v331 + 328) = 0xEA00000000006570;
  *(v331 + 336) = 0x6574656D61726150;
  *(v331 + 344) = v681;
  *(v331 + 360) = v415;
  strcpy((v331 + 368), "ValueMapping");
  *(v331 + 381) = 0;
  *(v331 + 382) = -5120;
  v416 = v415;
  v417 = sub_1CA94C1E8();
  *(v331 + 408) = v672;
  *(v331 + 384) = v417;
  v687[14] = sub_1CA94C1E8();
  v418 = swift_allocObject();
  *(v418 + 16) = v679;
  strcpy((v418 + 32), "DestinationKey");
  *(v418 + 47) = -18;
  *(v418 + 48) = 0x61566E6F69746361;
  *(v418 + 56) = 0xEB0000000065756CLL;
  *(v418 + 72) = v416;
  *(v418 + 80) = 0x74616E6974736544;
  *(v418 + 88) = 0xEF657079546E6F69;
  *(v418 + 96) = 0x74736275534C5255;
  *(v418 + 104) = 0xEF6E6F6974757469;
  *(v418 + 120) = v416;
  *(v418 + 128) = 0x73616C436D657449;
  *(v418 + 136) = 0xE900000000000073;
  *(v418 + 144) = 0xD000000000000013;
  *(v418 + 152) = v680;
  *(v418 + 168) = v416;
  *(v418 + 176) = 0x6574656D61726150;
  v419 = v416;
  *(v418 + 184) = 0xEB00000000495572;
  v420 = swift_allocObject();
  *(v420 + 16) = v654;
  v421 = v652;
  v422 = v677;
  v423 = v678;
  *(v420 + 32) = v652;
  *(v420 + 40) = v423;
  *(v420 + 48) = v422;
  *(v420 + 64) = v419;
  v424 = v671;
  *(v420 + 72) = v671;
  v653 = v421;
  *&v654 = v424;
  v425 = sub_1CA94C438("Action Value (Parameter Label)", 30);
  v651 = v426;
  v652 = v425;
  v427 = sub_1CA94C438("Action Value", 12);
  v650 = v428;
  v671 = &v646;
  MEMORY[0x1EEE9AC00](v427);
  v429 = &v646 - v692;
  sub_1CA948D98();
  v430 = v690;
  v431 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v431);
  v432 = &v646 - v693;
  sub_1CA948B68();

  v433 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v420 + 80) = sub_1CA2F9F14(v652, v651, v427, v650, 0, 0, v429, v432);
  v434 = v689;
  v435 = v664;
  *(v420 + 104) = v689;
  *(v420 + 112) = v435;
  v436 = sub_1CA94C438("phone number, URL, etc. (Parameter Placeholder)", 47);
  v651 = v437;
  v652 = v436;
  v650 = sub_1CA94C438("phone number, URL, etc.", 23);
  v439 = v438;
  v671 = &v646;
  MEMORY[0x1EEE9AC00](v650);
  v440 = &v646 - v692;
  sub_1CA948D98();
  v441 = [v430 bundleURL];
  MEMORY[0x1EEE9AC00](v441);
  v442 = &v646 - v693;
  sub_1CA948B68();

  v443 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v420 + 120) = sub_1CA2F9F14(v652, v651, v650, v439, 0, 0, v440, v442);
  *(v420 + 144) = v434;
  *(v420 + 152) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v444 = swift_allocObject();
  *(v444 + 16) = v665;
  v445 = @"RequiredResources";
  v446 = MEMORY[0x1E69E6158];
  *(v444 + 32) = sub_1CA94C1E8();
  v447 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v420 + 160) = v444;
  v448 = v663;
  *(v420 + 184) = v447;
  *(v420 + 192) = v448;
  *(v420 + 224) = v446;
  *(v420 + 200) = 0x7468676952;
  *(v420 + 208) = 0xE500000000000000;
  v449 = sub_1CA94C1E8();
  v450 = v686;
  *(v418 + 192) = sub_1CA2F864C(v449);
  *(v418 + 216) = v450;
  *(v418 + 224) = 0x654B656372756F53;
  v451 = v675;
  *(v418 + 232) = v682;
  *(v418 + 240) = v451;
  *(v418 + 248) = 0x80000001CA9CA130;
  *(v418 + 264) = v446;
  *(v418 + 272) = 0x7954656372756F53;
  *(v418 + 312) = v446;
  *(v418 + 280) = 0xEA00000000006570;
  *(v418 + 288) = 0x6574656D61726150;
  *(v418 + 296) = v681;
  v687[15] = sub_1CA94C1E8();
  v452 = swift_allocObject();
  *(v452 + 16) = v676;
  strcpy((v452 + 32), "DestinationKey");
  *(v452 + 47) = -18;
  *(v452 + 48) = 0x797469726F697270;
  *(v452 + 56) = 0xE800000000000000;
  *(v452 + 72) = v446;
  *(v452 + 80) = 0x74616E6974736544;
  *(v452 + 88) = 0xEF657079546E6F69;
  strcpy((v452 + 96), "URLQueryValue");
  *(v452 + 110) = -4864;
  *(v452 + 120) = v446;
  *(v452 + 128) = 0x73616C436D657449;
  *(v452 + 136) = 0xE900000000000073;
  *(v452 + 144) = 0xD000000000000013;
  *(v452 + 152) = v680;
  *(v452 + 168) = v446;
  *(v452 + 176) = v451;
  *(v452 + 184) = v669;
  *(v452 + 192) = 1701736270;
  *(v452 + 200) = 0xE400000000000000;
  *(v452 + 216) = v446;
  *(v452 + 224) = 0x6574656D61726150;
  *(v452 + 232) = 0xEB00000000495572;
  v453 = swift_allocObject();
  v663 = v453;
  *(v453 + 16) = v673;
  v454 = v653;
  v456 = v667;
  v455 = v668;
  *(v453 + 32) = v653;
  *(v453 + 40) = v456;
  *(v453 + 48) = v455;
  v457 = v662;
  *(v453 + 64) = v446;
  *(v453 + 72) = v457;
  v671 = swift_allocObject();
  *(v671 + 1) = xmmword_1CA981570;
  *&v665 = v454;
  v458 = sub_1CA94C438("None (twodoPriority)", 20);
  v651 = v459;
  v652 = v458;
  v460 = sub_1CA94C438("None", 4);
  v650 = v461;
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v460);
  v462 = v692;
  sub_1CA948D98();
  v463 = v690;
  v464 = [v690 bundleURL];
  v649 = &v646;
  MEMORY[0x1EEE9AC00](v464);
  v465 = &v646 - v693;
  sub_1CA948B68();

  v466 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v467 = sub_1CA2F9F14(v652, v651, v460, v650, 0, 0, &v646 - v462, v465);
  v671[4] = v467;
  v468 = sub_1CA94C438("Low (twodoPriority)", 19);
  v651 = v469;
  v652 = v468;
  v470 = sub_1CA94C438("Low", 3);
  v650 = v471;
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v470);
  sub_1CA948D98();
  v472 = [v463 bundleURL];
  MEMORY[0x1EEE9AC00](v472);
  v473 = v693;
  sub_1CA948B68();

  v474 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v475 = sub_1CA2F9F14(v652, v651, v470, v650, 0, 0, &v646 - v462, &v646 - v473);
  v476 = v671;
  v671[5] = v475;
  v477 = sub_1CA94C438("Medium (twodoPriority)", 22);
  v651 = v478;
  v652 = v477;
  v479 = sub_1CA94C438("Medium", 6);
  v650 = v480;
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v479);
  v481 = v692;
  sub_1CA948D98();
  v482 = [v690 bundleURL];
  v649 = &v646;
  MEMORY[0x1EEE9AC00](v482);
  sub_1CA948B68();

  v483 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v476[6] = sub_1CA2F9F14(v652, v651, v479, v650, 0, 0, &v646 - v481, &v646 - v473);
  v484 = sub_1CA94C438("High (twodoPriority)", 20);
  v651 = v485;
  v652 = v484;
  v650 = sub_1CA94C438("High", 4);
  v487 = v486;
  v653 = &v646;
  MEMORY[0x1EEE9AC00](v650);
  sub_1CA948D98();
  v488 = v690;
  v489 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v489);
  v490 = &v646 - v693;
  sub_1CA948B68();

  v491 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v492 = sub_1CA2F9F14(v652, v651, v650, v487, 0, 0, &v646 - v481, v490);
  v494 = v670;
  v493 = v671;
  v671[7] = v492;
  v495 = v663;
  v663[2].data = v493;
  v496 = v654;
  v495[3].info = v494;
  v495[3].data = v496;
  v671 = v496;
  v497 = sub_1CA94C438("Priority (Parameter Label)", 26);
  v652 = v498;
  v653 = v497;
  v499 = sub_1CA94C438("Priority", 8);
  v651 = v500;
  *&v654 = &v646;
  MEMORY[0x1EEE9AC00](v499);
  v501 = &v646 - v692;
  sub_1CA948D98();
  v502 = [v488 bundleURL];
  MEMORY[0x1EEE9AC00](v502);
  v503 = v693;
  sub_1CA948B68();

  v504 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v505 = sub_1CA2F9F14(v653, v652, v499, v651, 0, 0, v501, &v646 - v503);
  v495[4].data = v689;
  v495[3].length = v505;
  v506 = sub_1CA94C1E8();
  v507 = v686;
  *(v452 + 240) = sub_1CA2F864C(v506);
  *(v452 + 264) = v507;
  *(v452 + 272) = 0x654B656372756F53;
  *(v452 + 280) = v682;
  strcpy((v452 + 288), "twodoPriority");
  *(v452 + 302) = -4864;
  v508 = MEMORY[0x1E69E6158];
  *(v452 + 312) = MEMORY[0x1E69E6158];
  *(v452 + 320) = 0x7954656372756F53;
  *(v452 + 328) = 0xEA00000000006570;
  *(v452 + 336) = 0x6574656D61726150;
  *(v452 + 344) = v681;
  *(v452 + 360) = v508;
  strcpy((v452 + 368), "ValueMapping");
  *(v452 + 381) = 0;
  *(v452 + 382) = -5120;
  v509 = v508;
  v510 = sub_1CA94C1E8();
  *(v452 + 408) = v672;
  *(v452 + 384) = v510;
  v687[16] = sub_1CA94C1E8();
  v511 = swift_allocObject();
  *(v511 + 16) = v676;
  strcpy((v511 + 32), "DestinationKey");
  *(v511 + 47) = -18;
  *(v511 + 48) = 0x746165706572;
  *(v511 + 56) = 0xE600000000000000;
  *(v511 + 72) = v509;
  *(v511 + 80) = 0x74616E6974736544;
  *(v511 + 88) = 0xEF657079546E6F69;
  strcpy((v511 + 96), "URLQueryValue");
  *(v511 + 110) = -4864;
  *(v511 + 120) = v509;
  *(v511 + 128) = 0x73616C436D657449;
  *(v511 + 136) = 0xE900000000000073;
  *(v511 + 144) = 0xD000000000000013;
  *(v511 + 152) = v680;
  v512 = v675;
  *(v511 + 168) = v509;
  *(v511 + 176) = v512;
  *(v511 + 184) = v669;
  *(v511 + 192) = 0x726576654ELL;
  *(v511 + 200) = 0xE500000000000000;
  *(v511 + 216) = v509;
  *(v511 + 224) = 0x6574656D61726150;
  *(v511 + 232) = 0xEB00000000495572;
  v513 = swift_allocObject();
  v669 = v513;
  *(v513 + 16) = v673;
  v515 = v667;
  v514 = v668;
  *(v513 + 32) = v665;
  *(v513 + 40) = v515;
  *(v513 + 48) = v514;
  v516 = v662;
  *(v513 + 64) = v509;
  *(v513 + 72) = v516;
  *&v676 = swift_allocObject();
  *(v676 + 16) = xmmword_1CA981560;
  v517 = sub_1CA94C438("Never (twodoRepeat)", 19);
  v667 = v518;
  v668 = v517;
  v519 = sub_1CA94C438("Never", 5);
  v666 = v520;
  *&v673 = &v646;
  MEMORY[0x1EEE9AC00](v519);
  v521 = v692;
  sub_1CA948D98();
  v522 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v522);
  sub_1CA948B68();

  v523 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v524 = sub_1CA2F9F14(v668, v667, v519, v666, 0, 0, &v646 - v521, &v646 - v503);
  v525 = v676;
  *(v676 + 32) = v524;
  v526 = sub_1CA94C438("Daily (twodoRepeat)", 19);
  v667 = v527;
  v668 = v526;
  v528 = sub_1CA94C438("Daily", 5);
  v666 = v529;
  *&v673 = &v646;
  MEMORY[0x1EEE9AC00](v528);
  v530 = &v646 - v521;
  sub_1CA948D98();
  v531 = v690;
  v532 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v532);
  sub_1CA948B68();

  v533 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v525 + 40) = sub_1CA2F9F14(v668, v667, v528, v666, 0, 0, v530, &v646 - v503);
  v534 = sub_1CA94C438("Weekly (twodoRepeat)", 20);
  v667 = v535;
  v668 = v534;
  v536 = sub_1CA94C438("Weekly", 6);
  v666 = v537;
  *&v673 = &v646;
  MEMORY[0x1EEE9AC00](v536);
  v538 = v692;
  sub_1CA948D98();
  v539 = [v531 bundleURL];
  MEMORY[0x1EEE9AC00](v539);
  v540 = v693;
  sub_1CA948B68();

  v541 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v542 = sub_1CA2F9F14(v668, v667, v536, v666, 0, 0, &v646 - v538, &v646 - v540);
  v543 = v676;
  *(v676 + 48) = v542;
  v544 = sub_1CA94C438("Biweekly (twodoRepeat)", 22);
  v667 = v545;
  v668 = v544;
  v546 = sub_1CA94C438("Biweekly", 8);
  v666 = v547;
  *&v673 = &v646;
  MEMORY[0x1EEE9AC00](v546);
  v548 = &v646 - v538;
  sub_1CA948D98();
  v549 = v690;
  v550 = [v690 bundleURL];
  v663 = &v646;
  MEMORY[0x1EEE9AC00](v550);
  sub_1CA948B68();

  v551 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v543 + 56) = sub_1CA2F9F14(v668, v667, v546, v666, 0, 0, v548, &v646 - v540);
  v552 = sub_1CA94C438("Monthly (twodoRepeat)", 21);
  v667 = v553;
  v668 = v552;
  v554 = sub_1CA94C438("Monthly", 7);
  v666 = v555;
  *&v673 = &v646;
  MEMORY[0x1EEE9AC00](v554);
  v556 = v692;
  sub_1CA948D98();
  v557 = [v549 bundleURL];
  v663 = &v646;
  MEMORY[0x1EEE9AC00](v557);
  v558 = v693;
  sub_1CA948B68();

  v559 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v560 = sub_1CA2F9F14(v668, v667, v554, v666, 0, 0, &v646 - v556, &v646 - v558);
  v561 = v676;
  *(v676 + 64) = v560;
  v562 = v669;
  v669[2].data = v561;
  v563 = v671;
  *(v562 + 104) = v670;
  *(v562 + 112) = v563;
  *&v673 = sub_1CA94C438("Repeat (Parameter Label)", 24);
  v670 = v564;
  v565 = sub_1CA94C438("Repeat", 6);
  v668 = v566;
  *&v676 = &v646;
  MEMORY[0x1EEE9AC00](v565);
  sub_1CA948D98();
  v567 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v567);
  sub_1CA948B68();

  v568 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v569 = sub_1CA2F9F14(v673, v670, v565, v668, 0, 0, &v646 - v556, &v646 - v558);
  v570 = v669;
  v669[4].data = v689;
  *(v570 + 120) = v569;
  v571 = sub_1CA94C1E8();
  v572 = v686;
  *(v511 + 240) = sub_1CA2F864C(v571);
  *(v511 + 264) = v572;
  *(v511 + 272) = 0x654B656372756F53;
  *(v511 + 280) = v682;
  *(v511 + 288) = 0x7065526F646F7774;
  *(v511 + 296) = 0xEB00000000746165;
  v573 = MEMORY[0x1E69E6158];
  *(v511 + 312) = MEMORY[0x1E69E6158];
  *(v511 + 320) = 0x7954656372756F53;
  *(v511 + 328) = 0xEA00000000006570;
  *(v511 + 336) = 0x6574656D61726150;
  *(v511 + 344) = v681;
  *(v511 + 360) = v573;
  strcpy((v511 + 368), "ValueMapping");
  *(v511 + 381) = 0;
  *(v511 + 382) = -5120;
  v574 = v573;
  v575 = sub_1CA94C1E8();
  *(v511 + 408) = v672;
  *(v511 + 384) = v575;
  v687[17] = sub_1CA94C1E8();
  v576 = swift_allocObject();
  *(v576 + 16) = v679;
  strcpy((v576 + 32), "DestinationKey");
  *(v576 + 47) = -18;
  *(v576 + 48) = 1702129518;
  *(v576 + 56) = 0xE400000000000000;
  *(v576 + 72) = v574;
  *(v576 + 80) = 0x74616E6974736544;
  *(v576 + 88) = 0xEF657079546E6F69;
  strcpy((v576 + 96), "URLQueryValue");
  *(v576 + 110) = -4864;
  *(v576 + 120) = v574;
  *(v576 + 128) = 0x73616C436D657449;
  *(v576 + 136) = 0xE900000000000073;
  *(v576 + 144) = 0xD000000000000013;
  *(v576 + 152) = v680;
  *(v576 + 168) = v574;
  *(v576 + 176) = 0x6574656D61726150;
  v577 = v574;
  *(v576 + 184) = 0xEB00000000495572;
  v578 = swift_allocObject();
  *(v578 + 16) = v674;
  v579 = v677;
  v580 = v678;
  *(v578 + 32) = v665;
  *(v578 + 40) = v580;
  *(v578 + 48) = v579;
  v581 = v671;
  *(v578 + 64) = v577;
  *(v578 + 72) = v581;
  v685 = sub_1CA94C438("Notes (Parameter Label)", 23);
  v680 = v582;
  v583 = sub_1CA94C438("Notes", 5);
  v585 = v584;
  v688 = &v646;
  MEMORY[0x1EEE9AC00](v583);
  v586 = &v646 - v692;
  sub_1CA948D98();
  v587 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v587);
  v588 = &v646 - v693;
  sub_1CA948B68();

  v589 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v590 = sub_1CA2F9F14(v685, v680, v583, v585, 0, 0, v586, v588);
  v591 = v689;
  *(v578 + 80) = v590;
  *(v578 + 104) = v591;
  *(v578 + 112) = @"Multiline";
  v592 = MEMORY[0x1E69E6370];
  *(v578 + 120) = 1;
  v593 = v664;
  *(v578 + 144) = v592;
  *(v578 + 152) = v593;
  v594 = @"Multiline";
  v685 = sub_1CA94C438("Notes (Parameter Placeholder)", 29);
  v680 = v595;
  v596 = sub_1CA94C438("Notes", 5);
  v598 = v597;
  v688 = &v646;
  MEMORY[0x1EEE9AC00](v596);
  v599 = &v646 - v692;
  sub_1CA948D98();
  v600 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v600);
  v601 = &v646 - v693;
  sub_1CA948B68();

  v602 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v603 = sub_1CA2F9F14(v685, v680, v596, v598, 0, 0, v599, v601);
  *(v578 + 184) = v591;
  *(v578 + 160) = v603;
  v604 = sub_1CA94C1E8();
  v605 = v686;
  *(v576 + 192) = sub_1CA2F864C(v604);
  *(v576 + 216) = v605;
  *(v576 + 224) = 0x654B656372756F53;
  *(v576 + 232) = v682;
  *(v576 + 240) = 0x746F4E6F646F7774;
  *(v576 + 248) = v657;
  v606 = MEMORY[0x1E69E6158];
  *(v576 + 264) = MEMORY[0x1E69E6158];
  *(v576 + 272) = 0x7954656372756F53;
  *(v576 + 312) = v606;
  *(v576 + 280) = 0xEA00000000006570;
  *(v576 + 288) = 0x6574656D61726150;
  *(v576 + 296) = v681;
  v607 = sub_1CA94C1E8();
  v608 = v687;
  v687[18] = v607;
  v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  v688 = v609;
  v610 = v655;
  v655[36] = v608;
  v611 = v675;
  v610[39] = v609;
  v610[40] = v611;
  v610[41] = 0x80000001CA9B8B90;
  v610[45] = v656;
  __swift_allocate_boxed_opaque_existential_1(v610 + 42);
  sub_1CA948C28();
  v610[46] = 1701667150;
  v610[47] = 0xE400000000000000;
  v612 = sub_1CA94C438("Add 2Do Task (Action Name)", 26);
  v686 = v613;
  v614 = sub_1CA94C438("Add 2Do Task", 12);
  v616 = v615;
  v687 = &v646;
  MEMORY[0x1EEE9AC00](v614);
  v617 = &v646 - v692;
  sub_1CA948D98();
  v618 = v690;
  v619 = [v690 bundleURL];
  MEMORY[0x1EEE9AC00](v619);
  v620 = &v646 - v693;
  sub_1CA948B68();

  v621 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v610[48] = sub_1CA2F9F14(v612, v686, v614, v616, 0, 0, v617, v620);
  v622 = v675;
  v610[51] = v689;
  v610[52] = v622;
  v610[53] = 0x80000001CA9A8F60;
  v623 = sub_1CA94C438("Add ${twodoTask} as ${twodoType} to ${twodoList} (Parameter Summary)", 68);
  v687 = v624;
  v625 = sub_1CA94C438("Add ${twodoTask} as ${twodoType} to ${twodoList}", 48);
  v627 = v626;
  v689 = &v646;
  MEMORY[0x1EEE9AC00](v625);
  v628 = &v646 - v692;
  sub_1CA948D98();
  v629 = [v618 bundleURL];
  MEMORY[0x1EEE9AC00](v629);
  v630 = &v646 - v693;
  sub_1CA948B68();

  v631 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v632 = sub_1CA2F9F14(v623, v687, v625, v627, 0, 0, v628, v630);
  v633 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v610[57] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v610[54] = v633;
  v634 = MEMORY[0x1E69E6158];
  v635 = sub_1CA94C1E8();
  v636 = v659;
  v637 = v660;
  *(v659 + 32) = v635;
  *(v637 + 48) = v636;
  *(v637 + 72) = v688;
  strcpy((v637 + 80), "Capabilities");
  *(v637 + 93) = 0;
  *(v637 + 94) = -5120;
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v637 + 96) = &unk_1F4A03EB0;
  *(v637 + 120) = v638;
  *(v637 + 128) = 0x656D65686353;
  *(v637 + 168) = v634;
  *(v637 + 136) = 0xE600000000000000;
  *(v637 + 144) = 0x6F646F7774;
  *(v637 + 152) = 0xE500000000000000;
  v639 = sub_1CA94C1E8();
  v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v641 = v661;
  *(v661 + 88) = v640;
  *(v641 + 64) = v639;
  v642 = v641;
  v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v644 = v658;
  *(v658 + 216) = v643;
  *(v644 + 192) = v642;
  return sub_1CA94C1E8();
}

id sub_1CA542800()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  OUTLINED_FUNCTION_93();
  v1 = sub_1CA94C648();

  v2 = [v0 initWithParameterStates_];

  return v2;
}

void WFURLParameter.userVisibleStrings(in:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  if (a2 == 1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      swift_unknownObjectRetain();
      v11 = [v10 variableString];
      v12 = [v11 userVisibleStringsForUseCase_];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      sub_1CA94C8F8();

      swift_unknownObjectRelease();
LABEL_4:

      return;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      swift_unknownObjectRetain();
      v15 = [v14 variable];
      if (v15)
      {
        v16 = v15;
        v12 = [v15 userVisibleStringsForUseCase_];
        type metadata accessor for WFUserVisibleString();
        sub_1CA3434EC();
        sub_1CA94C8F8();
        swift_unknownObjectRelease();

        goto LABEL_4;
      }

      v20 = sub_1CA543244(v14);
      if (v20)
      {
        v21 = v20;
        v22 = sub_1CA25B410(v20);
        if (!v22)
        {
LABEL_23:
          swift_unknownObjectRelease();

          return;
        }

        v23 = v22;
        if (v22 >= 1)
        {
          v24 = 0;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x1CCAA22D0](v24, v21);
            }

            else
            {
              v25 = *(v21 + 8 * v24 + 32);
              swift_unknownObjectRetain();
            }

            ++v24;
            v26 = [v3 userVisibleStringsInParameterState:v25 forUseCase:1];
            type metadata accessor for WFUserVisibleString();
            sub_1CA3434EC();
            v27 = sub_1CA94C8F8();

            sub_1CA342840(v27);
            swift_unknownObjectRelease();
          }

          while (v23 != v24);
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_34;
      }

      if (sub_1CA25B410(MEMORY[0x1E69E7CC0]))
      {
        sub_1CA2E85F8();
        OUTLINED_FUNCTION_87();
      }

      swift_unknownObjectRelease();
      return;
    }

    sub_1CA949C58();
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC28();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1CA256000, v17, v18, "Incorrect parameter state class", v19, 2u);
      MEMORY[0x1CCAA4BF0](v19, -1, -1);
    }

    (*(v7 + 8))(v2, v5);
    if (!sub_1CA25B410(MEMORY[0x1E69E7CC0]))
    {
      return;
    }

LABEL_14:
    sub_1CA2E85F8();
    return;
  }

  if (a2)
  {
LABEL_34:
    type metadata accessor for WFUserStringUseCase(0);
    sub_1CA94D838();
    __break(1u);
    return;
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1CA94D328())
  {

    goto LABEL_14;
  }
}

id WFURLParameter.rewrite(_:withStrings:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1CA949F78();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    sub_1CA25B3D0(0, &qword_1EC4463D0, off_1E836F458);
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRetain();
    v11 = [v10 variableString];
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    v12 = sub_1CA94C1A8();
    v13 = [v11 rewrittenWithStrings_];

    v35 = v13;
    v14.variableString.super.isa = &v35;
    WFVariableStringParameterState.init(variableString:)(v14);
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRelease();
    return v2;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_93();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    sub_1CA949C58();
    v23 = sub_1CA949F68();
    v24 = sub_1CA94CC28();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1CA256000, v23, v24, "Incorrect parameter state class", v25, 2u);
      MEMORY[0x1CCAA4BF0](v25, -1, -1);
    }

    (*(v7 + 8))(v2, v5);
    swift_unknownObjectRetain();
    return a1;
  }

  v17 = v16;
  swift_unknownObjectRetain();
  v18 = [v17 variable];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for WFUserVisibleString();
    sub_1CA3434EC();
    v20 = sub_1CA94C1A8();
    v21 = [v19 rewrittenWithStrings_];

    v22 = [objc_allocWithZone(WFMultipleValueParameterState) initWithVariable_];
    swift_unknownObjectRelease();

    return v22;
  }

  v26 = sub_1CA543244(v17);
  if (!v26)
  {
    return a1;
  }

  v27 = v26;
  v28 = sub_1CA25B410(v26);
  if (!v28)
  {
    goto LABEL_18;
  }

  v29 = v28;
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1CA94D508();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1CCAA22D0](v30, v27);
      }

      else
      {
        v31 = *(v27 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      ++v30;
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v32 = sub_1CA94C1A8();
      v33 = [v3 rewriteParameterState:v31 withStrings:v32];
      swift_unknownObjectRelease();

      sub_1CA94D4D8();
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
    }

    while (v29 != v30);
LABEL_18:

    v34 = sub_1CA25B3D0(0, &qword_1EC446DB0, off_1E836EBE0);
    sub_1CA542800();
    OUTLINED_FUNCTION_87();
    swift_unknownObjectRelease();
    return v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA543244(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
  v3 = sub_1CA94C658();

  return v3;
}

id sub_1CA5432E4()
{
  v116 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000010;
  *(inited + 48) = 0x80000001CA99BD90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("json|xml|plist|www|urlencoded|form|query|string", 47);
  v6 = v5;
  v7 = sub_1CA94C438("json|xml|plist|www|urlencoded|form|query|string", 47);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v122 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v123 = v11;
  v12 = &v109 - v122;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v121 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v120 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v119 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v109 - v119;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v118 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 104) = v118;
  *(inited + 80) = v18;
  *(inited + 112) = sub_1CA94C368();
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA993AA0;
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 152) = @"Description";
  *&v117 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1CA981310;
  *(v19 + 32) = @"DescriptionSummary";
  v20 = @"Description";
  v21 = @"DescriptionSummary";
  v22 = sub_1CA94C438("Makes a dictionary from the text passed as input. JSON (like {foo: bar}), key-value pairs (like foo=bar&baz=biz), and XML-based plist are supported.", 152);
  v114 = v23;
  v24 = sub_1CA94C438("Makes a dictionary from the text passed as input. JSON (like {foo: bar}), key-value pairs (like foo=bar&baz=biz), and XML-based plist are supported.", 152);
  v26 = v25;
  v115 = &v109;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v109 - v122;
  sub_1CA948D98();
  v28 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v109 - v119;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v22, v114, v24, v26, 0, 0, v27, v29);
  *(v19 + 64) = v118;
  *(v19 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v32 = sub_1CA94C1E8();
  v33 = v117;
  *(inited + 160) = sub_1CA6B3784(v32);
  *(inited + 184) = v33;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x65676E61724FLL;
  *(inited + 208) = 0xE600000000000000;
  v34 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000010;
  *(inited + 248) = 0x80000001CA9CA420;
  *(inited + 264) = v34;
  *(inited + 272) = @"Input";
  v35 = v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  v117 = xmmword_1CA981350;
  *(v36 + 16) = xmmword_1CA981350;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  strcpy((v36 + 80), "ParameterKey");
  *(v36 + 93) = 0;
  *(v36 + 94) = -5120;
  *(v36 + 96) = 0x7475706E494657;
  *(v36 + 104) = 0xE700000000000000;
  *(v36 + 120) = v35;
  *(v36 + 128) = 0x6465726975716552;
  *(v36 + 136) = 0xE800000000000000;
  *(v36 + 144) = 1;
  *(v36 + 168) = v37;
  *(v36 + 176) = 0x7365707954;
  *(v36 + 184) = 0xE500000000000000;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 216) = v115;
  *(v36 + 192) = &unk_1F4A03EE0;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v114 = v42;
  *(inited + 280) = v41;
  *(inited + 304) = v42;
  *(inited + 312) = @"Name";
  v43 = @"Name";
  v44 = sub_1CA94C438("Get Dictionary from Input (Action Name)", 39);
  v110 = v45;
  v111 = v44;
  v46 = sub_1CA94C438("Get Dictionary from Input", 25);
  v48 = v47;
  v112 = &v109;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v109 - v122;
  sub_1CA948D98();
  v50 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v119;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v111, v110, v46, v48, 0, 0, v49, &v109 - v51);
  v53 = v118;
  *(inited + 344) = v118;
  *(inited + 352) = @"Output";
  v54 = swift_allocObject();
  *(v54 + 16) = v117;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 1;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438("Dictionary (Default Output Name)", 32);
  v111 = v57;
  v112 = v56;
  v110 = sub_1CA94C438("Dictionary", 10);
  v59 = v58;
  v113 = &v109;
  MEMORY[0x1EEE9AC00](v110);
  v60 = &v109 - v122;
  sub_1CA948D98();
  v61 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v112, v111, v110, v59, 0, 0, v60, &v109 - v51);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v115;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F4A03F10;
  v63 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v114;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v115 = swift_allocObject();
  *(v115 + 1) = xmmword_1CA9813B0;
  v114 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_initStackObject();
  *(v64 + 16) = v117;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD000000000000019;
  *(v64 + 48) = 0x80000001CA99B030;
  *(v64 + 64) = v63;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7475706E494657;
  *(v64 + 88) = 0xE700000000000000;
  *(v64 + 104) = v63;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438("Input (WFInput)", 15);
  v112 = v70;
  v113 = v69;
  v71 = sub_1CA94C438("Input", 5);
  v111 = v72;
  *&v117 = &v109;
  MEMORY[0x1EEE9AC00](v71);
  v73 = v122;
  sub_1CA948D98();
  v74 = v121;
  v75 = [v121 bundleURL];
  v110 = &v109;
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v109 - v119;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v64 + 120) = sub_1CA2F9F14(v113, v112, v71, v111, 0, 0, &v109 - v73, v76);
  v78 = v118;
  *(v64 + 144) = v118;
  *(v64 + 152) = @"Placeholder";
  v79 = @"Placeholder";
  v80 = sub_1CA94C438("Input (WFInput)", 15);
  v112 = v81;
  v113 = v80;
  v111 = sub_1CA94C438("Input", 5);
  v83 = v82;
  *&v117 = &v109;
  MEMORY[0x1EEE9AC00](v111);
  v84 = &v109 - v73;
  sub_1CA948D98();
  v85 = [v74 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v109 - v119;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v113, v112, v111, v83, 0, 0, v84, v86);
  *(v64 + 184) = v78;
  *(v64 + 160) = v88;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  v91 = v115;
  v115[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 400) = v91;
  *(inited + 424) = v92;
  *(inited + 432) = @"ParameterSummary";
  v93 = @"ParameterSummary";
  v94 = sub_1CA94C438("Get dictionary from ${WFInput} (Parameter Summary)", 50);
  v96 = v95;
  v97 = sub_1CA94C438("Get dictionary from ${WFInput}", 30);
  v99 = v98;
  v118 = &v109;
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v109 - v122;
  sub_1CA948D98();
  v101 = [v121 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v109 - v119;
  sub_1CA948B68();

  v103 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v104 = sub_1CA2F9F14(v94, v96, v97, v99, 0, 0, v100, v102);
  v105 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v106 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 440) = v105;
  *(inited + 464) = v106;
  *(inited + 472) = @"ResidentCompatible";
  *(inited + 504) = MEMORY[0x1E69E6370];
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v107 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA544234()
{
  v50 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9CA560;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"InputPassthrough";
  *(inited + 120) = 1;
  *(inited + 144) = v2;
  *(inited + 152) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"InputPassthrough";
  v6 = @"Name";
  v7 = sub_1CA94C438("Unknown Intent (Action Name)", 28);
  v51 = v8;
  v52 = v7;
  v9 = sub_1CA94C438("Unknown Intent", 14);
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v43 - v49;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v48 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v47 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v43 - v47;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v52, v51, v9, v11, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v46 = v21;
  *(inited + 160) = v20;
  *(inited + 184) = v21;
  *(inited + 192) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CA9813B0;
  v51 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA981350;
  *(v22 + 32) = @"Class";
  *(v22 + 40) = 0xD000000000000011;
  *(v22 + 48) = 0x80000001CA99E620;
  v23 = MEMORY[0x1E69E6158];
  *(v22 + 64) = MEMORY[0x1E69E6158];
  *(v22 + 72) = @"DefaultValue";
  *(v22 + 80) = 1;
  *(v22 + 104) = MEMORY[0x1E69E6370];
  *(v22 + 112) = @"Key";
  *(v22 + 120) = 0x6E656857776F6853;
  *(v22 + 128) = 0xEB000000006E7552;
  *(v22 + 144) = v23;
  *(v22 + 152) = @"Label";
  v24 = @"Parameters";
  v25 = @"Class";
  v26 = @"DefaultValue";
  v27 = @"Key";
  v28 = @"Label";
  v29 = sub_1CA94C438("Show When Run (ShowWhenRun)", 27);
  v44 = v30;
  v31 = sub_1CA94C438("Show When Run", 13);
  v33 = v32;
  v45 = &v43;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v43 - v49;
  sub_1CA948D98();
  v35 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v43 - v47;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v29, v44, v31, v33, 0, 0, v34, v36);
  *(v22 + 184) = v46;
  *(v22 + 160) = v38;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v39 = sub_1CA94C1E8();
  v40 = sub_1CA2F864C(v39);
  v41 = v52;
  *(v52 + 32) = v40;
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 200) = v41;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA544854()
{
  v142 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x7079547465474657;
  *(inited + 48) = 0xEF6E6F6974634165;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v149 = inited;
  v2 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1CA981310;
  *(v3 + 32) = @"DescriptionSummary";
  v4 = @"ActionClass";
  v5 = @"Description";
  v6 = @"DescriptionSummary";
  v7 = sub_1CA94C438("Returns a particular file type from the input.", 46);
  v146 = v8;
  v9 = sub_1CA94C438("Returns a particular file type from the input.", 46);
  v11 = v10;
  v12 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v151 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v152 = v13;
  v14 = &v133 - v151;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v147 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v150 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v148 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v133 - v148;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v7, v146, v9, v11, 0, 0, v14, v18);
  v146 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v3 + 64) = v146;
  *(v3 + 40) = v20;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v21 = sub_1CA94C1E8();
  v22 = v2;
  v23 = sub_1CA6B3784(v21);
  v24 = v149;
  v149[10] = v23;
  v24[13] = v22;
  v24[14] = @"IconColor";
  v24[15] = 2036429383;
  v24[16] = 0xE400000000000000;
  v25 = MEMORY[0x1E69E6158];
  v24[18] = MEMORY[0x1E69E6158];
  v24[19] = @"IconSymbol";
  v24[20] = 0xD000000000000017;
  v24[21] = 0x80000001CA9ABBD0;
  v24[23] = v25;
  v24[24] = @"Input";
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v26 = swift_initStackObject();
  v145 = xmmword_1CA981350;
  *(v26 + 16) = xmmword_1CA981350;
  *(v26 + 32) = 0x656C7069746C754DLL;
  *(v26 + 40) = 0xE800000000000000;
  v27 = MEMORY[0x1E69E6370];
  *(v26 + 48) = 1;
  *(v26 + 72) = v27;
  strcpy((v26 + 80), "ParameterKey");
  *(v26 + 93) = 0;
  *(v26 + 94) = -5120;
  *(v26 + 96) = 0x7475706E494657;
  *(v26 + 104) = 0xE700000000000000;
  *(v26 + 120) = v25;
  *(v26 + 128) = 0x6465726975716552;
  *(v26 + 136) = 0xE800000000000000;
  *(v26 + 144) = 1;
  *(v26 + 168) = v27;
  *(v26 + 176) = 0x7365707954;
  v28 = v27;
  *(v26 + 184) = 0xE500000000000000;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v26 + 216) = v144;
  *(v26 + 192) = &unk_1F4A03F40;
  v29 = @"IconColor";
  v30 = @"IconSymbol";
  v31 = @"Input";
  v32 = sub_1CA94C1E8();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v143 = v33;
  v24[25] = v32;
  v24[28] = v33;
  v24[29] = @"Discoverable";
  *(v24 + 240) = 0;
  v24[33] = v28;
  v24[34] = @"Name";
  v34 = @"Discoverable";
  v35 = @"Name";
  v36 = sub_1CA94C438("Get File of Type (Action Name)", 30);
  v138 = v37;
  v139 = v36;
  v38 = sub_1CA94C438("Get File of Type", 16);
  v40 = v39;
  v140 = &v133;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v133 - v151;
  sub_1CA948D98();
  v42 = v147;
  v43 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v43);
  v44 = v148;
  sub_1CA948B68();

  v45 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v46 = sub_1CA2F9F14(v139, v138, v38, v40, 0, 0, v41, &v133 - v44);
  v47 = v149;
  v149[35] = v46;
  v48 = v146;
  v47[38] = v146;
  v47[39] = @"Output";
  v49 = swift_initStackObject();
  *(v49 + 16) = v145;
  *(v49 + 32) = 0x75736F6C63736944;
  *(v49 + 40) = 0xEF6C6576654C6572;
  *(v49 + 48) = 0x63696C627550;
  *(v49 + 56) = 0xE600000000000000;
  *(v49 + 72) = MEMORY[0x1E69E6158];
  *(v49 + 80) = 0x656C7069746C754DLL;
  *(v49 + 88) = 0xE800000000000000;
  *(v49 + 96) = 1;
  *(v49 + 120) = MEMORY[0x1E69E6370];
  *(v49 + 128) = 0x614E74757074754FLL;
  *(v49 + 136) = 0xEA0000000000656DLL;
  v50 = @"Output";
  v51 = sub_1CA94C438("File of Type (Default Output Name)", 34);
  v139 = v52;
  v140 = v51;
  v138 = sub_1CA94C438("File of Type", 12);
  v54 = v53;
  v141 = &v133;
  MEMORY[0x1EEE9AC00](v138);
  v55 = &v133 - v151;
  sub_1CA948D98();
  v56 = [v42 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 144) = sub_1CA2F9F14(v140, v139, v138, v54, 0, 0, v55, &v133 - v44);
  *(v49 + 168) = v48;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 216) = v144;
  *(v49 + 184) = 0xE500000000000000;
  *(v49 + 192) = &unk_1F4A03F70;
  v58 = MEMORY[0x1E69E6158];
  v59 = sub_1CA94C1E8();
  v60 = v149;
  v149[40] = v59;
  v60[43] = v143;
  v60[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v144 = swift_allocObject();
  *(v144 + 16) = xmmword_1CA981360;
  v143 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CA981300;
  *(v61 + 32) = @"AutocapitalizationType";
  *(v61 + 40) = 1701736270;
  *(v61 + 48) = 0xE400000000000000;
  *(v61 + 64) = v58;
  *(v61 + 72) = @"Class";
  *(v61 + 80) = 0xD000000000000014;
  *(v61 + 88) = 0x80000001CA99B500;
  *(v61 + 104) = v58;
  *(v61 + 112) = @"DefaultValue";
  *(v61 + 120) = 0x722E63696C627570;
  *(v61 + 128) = 0xEA00000000006674;
  *(v61 + 144) = v58;
  *(v61 + 152) = @"DisableAutocorrection";
  *(v61 + 160) = 1;
  *(v61 + 184) = MEMORY[0x1E69E6370];
  *(v61 + 192) = @"Key";
  *(v61 + 200) = 0x7954656C69464657;
  *(v61 + 208) = 0xEA00000000006570;
  *(v61 + 224) = v58;
  *(v61 + 232) = @"KeyboardType";
  *(v61 + 240) = 5001813;
  *(v61 + 248) = 0xE300000000000000;
  *(v61 + 264) = v58;
  *(v61 + 272) = @"Label";
  v62 = @"Class";
  v63 = @"Key";
  v64 = @"Label";
  v140 = v62;
  v139 = v63;
  v138 = v64;
  v65 = @"Parameters";
  v66 = @"AutocapitalizationType";
  v67 = @"DefaultValue";
  v68 = @"DisableAutocorrection";
  v69 = @"KeyboardType";
  v70 = sub_1CA94C438("Type (WFFileType)", 17);
  v135 = v71;
  v136 = v70;
  v72 = sub_1CA94C438("Type", 4);
  v74 = v73;
  v137 = &v133;
  MEMORY[0x1EEE9AC00](v72);
  v75 = &v133 - v151;
  sub_1CA948D98();
  v76 = v147;
  v77 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v133 - v148;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v61 + 280) = sub_1CA2F9F14(v136, v135, v72, v74, 0, 0, v75, v78);
  v80 = v146;
  *(v61 + 304) = v146;
  *(v61 + 312) = @"Placeholder";
  v137 = @"Placeholder";
  v81 = sub_1CA94C438("UTI (WFFileType)", 16);
  v134 = v82;
  v135 = v81;
  v83 = sub_1CA94C438("UTI", 3);
  v133 = v84;
  v136 = &v133;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v133 - v151;
  sub_1CA948D98();
  v86 = [v76 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v148;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v89 = sub_1CA2F9F14(v135, v134, v83, v133, 0, 0, v85, &v133 - v87);
  *(v61 + 344) = v80;
  *(v61 + 320) = v89;
  _s3__C3KeyVMa_0(0);
  v136 = v90;
  v135 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v91 = sub_1CA94C1E8();
  v92 = sub_1CA2F864C(v91);
  *(v144 + 32) = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = v145;
  *(v93 + 32) = v140;
  *(v93 + 40) = 0xD000000000000019;
  *(v93 + 48) = 0x80000001CA99B030;
  v94 = MEMORY[0x1E69E6158];
  v95 = v139;
  *(v93 + 64) = MEMORY[0x1E69E6158];
  *(v93 + 72) = v95;
  *(v93 + 80) = 0x7475706E494657;
  *(v93 + 88) = 0xE700000000000000;
  v96 = v138;
  *(v93 + 104) = v94;
  *(v93 + 112) = v96;
  v97 = sub_1CA94C438("Input (WFInput)", 15);
  v140 = v98;
  v141 = v97;
  v139 = sub_1CA94C438("Input", 5);
  v100 = v99;
  *&v145 = &v133;
  MEMORY[0x1EEE9AC00](v139);
  v101 = v151;
  sub_1CA948D98();
  v102 = v147;
  v103 = [v147 bundleURL];
  v138 = &v133;
  MEMORY[0x1EEE9AC00](v103);
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v93 + 120) = sub_1CA2F9F14(v141, v140, v139, v100, 0, 0, &v133 - v101, &v133 - v87);
  v105 = v146;
  v106 = v137;
  *(v93 + 144) = v146;
  *(v93 + 152) = v106;
  v107 = sub_1CA94C438("Input (WFInput)", 15);
  v140 = v108;
  v141 = v107;
  v139 = sub_1CA94C438("Input", 5);
  v110 = v109;
  *&v145 = &v133;
  MEMORY[0x1EEE9AC00](v139);
  sub_1CA948D98();
  v111 = [v102 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  sub_1CA948B68();

  v112 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v113 = sub_1CA2F9F14(v141, v140, v139, v110, 0, 0, &v133 - v101, &v133 - v87);
  *(v93 + 184) = v105;
  *(v93 + 160) = v113;
  v114 = sub_1CA94C1E8();
  v115 = sub_1CA2F864C(v114);
  v116 = v144;
  *(v144 + 40) = v115;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v118 = v149;
  v149[45] = v116;
  v118[48] = v117;
  v118[49] = @"ParameterSummary";
  v119 = @"ParameterSummary";
  v120 = sub_1CA94C438("Get file of type ${WFFileType} from ${WFInput} (Parameter Summary)", 66);
  v122 = v121;
  v123 = sub_1CA94C438("Get file of type ${WFFileType} from ${WFInput}", 46);
  v125 = v124;
  v146 = &v133;
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v133 - v151;
  sub_1CA948D98();
  v127 = [v147 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v133 - v148;
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v130 = sub_1CA2F9F14(v120, v122, v123, v125, 0, 0, v126, v128);
  v131 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v118[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v118[50] = v131;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA5459B8()
{
  v100 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFTextAction");
  *(inited + 53) = 0;
  *(inited + 54) = -5120;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438("text|such text|very speech|much words|so wow|string", 51);
  v6 = v5;
  v7 = sub_1CA94C438("text|such text|very speech|much words|so wow|string", 51);
  v9 = v8;
  v10 = sub_1CA948E58();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v105 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = v11;
  v12 = &v95 - v105;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v104 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v102 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v103 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v95 - v103;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v101 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v99 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA981310;
  *(v20 + 32) = @"DescriptionSummary";
  v21 = @"Description";
  v22 = @"DescriptionSummary";
  v23 = sub_1CA94C438("Passes the specified text to the next action.", 45);
  v97 = v24;
  v25 = sub_1CA94C438("Passes the specified text to the next action.", 45);
  v27 = v26;
  v98 = &v95;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v95 - v105;
  sub_1CA948D98();
  v29 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v95 - v103;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v32 = sub_1CA2F9F14(v23, v97, v25, v27, 0, 0, v28, v30);
  *(v20 + 64) = v101;
  *(v20 + 40) = v32;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey, &unk_1CA981294);
  v33 = sub_1CA94C1E8();
  v34 = v99;
  *(inited + 120) = sub_1CA6B3784(v33);
  *(inited + 144) = v34;
  *(inited + 152) = @"IconName";
  *(inited + 160) = 1954047316;
  *(inited + 168) = 0xE400000000000000;
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"Name";
  v35 = @"IconName";
  v36 = @"Name";
  v37 = sub_1CA94C438("Text (Action Name)", 18);
  v39 = v38;
  v40 = sub_1CA94C438("Text", 4);
  v42 = v41;
  v99 = &v95;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v95 - v105;
  sub_1CA948D98();
  v44 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v95 - v103;
  sub_1CA948B68();

  v46 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 200) = sub_1CA2F9F14(v37, v39, v40, v42, 0, 0, v43, v45);
  *(inited + 224) = v101;
  *(inited + 232) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1CA981350;
  *(v47 + 32) = 0x75736F6C63736944;
  *(v47 + 40) = 0xEF6C6576654C6572;
  *(v47 + 48) = 0x63696C627550;
  *(v47 + 56) = 0xE600000000000000;
  *(v47 + 72) = MEMORY[0x1E69E6158];
  *(v47 + 80) = 0x656C7069746C754DLL;
  *(v47 + 88) = 0xE800000000000000;
  v48 = MEMORY[0x1E69E6370];
  *(v47 + 96) = 0;
  *(v47 + 120) = v48;
  *(v47 + 128) = 0x614E74757074754FLL;
  *(v47 + 136) = 0xEA0000000000656DLL;
  v49 = @"Output";
  v50 = sub_1CA94C438("Text (Default Output Name)", 26);
  v98 = v51;
  v52 = sub_1CA94C438("Text", 4);
  v54 = v53;
  v99 = &v95;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v95 - v105;
  sub_1CA948D98();
  v56 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v95 - v103;
  sub_1CA948B68();

  v58 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v47 + 144) = sub_1CA2F9F14(v50, v98, v52, v54, 0, 0, v55, v57);
  *(v47 + 168) = v101;
  *(v47 + 176) = 0x7365707954;
  *(v47 + 184) = 0xE500000000000000;
  *(v47 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v47 + 192) = &unk_1F4A03FA0;
  v59 = MEMORY[0x1E69E6158];
  v60 = sub_1CA94C1E8();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 240) = v60;
  *(inited + 264) = v61;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v99 = swift_allocObject();
  *(v99 + 1) = xmmword_1CA9813B0;
  v98 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1CA981380;
  *(v62 + 32) = @"Class";
  *(v62 + 40) = 0xD000000000000014;
  *(v62 + 48) = 0x80000001CA99B500;
  *(v62 + 64) = v59;
  *(v62 + 72) = @"DefaultValue";
  *(v62 + 80) = 0;
  *(v62 + 88) = 0xE000000000000000;
  *(v62 + 104) = v59;
  *(v62 + 112) = @"Key";
  *(v62 + 120) = 0xD000000000000010;
  *(v62 + 128) = 0x80000001CA9CA7C0;
  *(v62 + 144) = v59;
  *(v62 + 152) = @"Label";
  v63 = @"Parameters";
  v64 = @"Class";
  v65 = @"DefaultValue";
  v66 = @"Key";
  v67 = @"Label";
  v68 = sub_1CA94C438("Text (WFTextActionText)", 23);
  v96 = v69;
  v70 = sub_1CA94C438("Text", 4);
  v72 = v71;
  v97 = &v95;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v95 - v105;
  sub_1CA948D98();
  v74 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v95 - v103;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v62 + 160) = sub_1CA2F9F14(v68, v96, v70, v72, 0, 0, v73, v75);
  *(v62 + 184) = v101;
  *(v62 + 192) = @"Multiline";
  *(v62 + 200) = 1;
  *(v62 + 224) = MEMORY[0x1E69E6370];
  *(v62 + 232) = @"Placeholder";
  v77 = @"Multiline";
  v78 = @"Placeholder";
  v79 = sub_1CA94C438("Text (WFTextActionText)", 23);
  v96 = v80;
  v81 = sub_1CA94C438("Text", 4);
  v83 = v82;
  v97 = &v95;
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v95 - v105;
  sub_1CA948D98();
  v85 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v95 - v103;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v88 = sub_1CA2F9F14(v79, v96, v81, v83, 0, 0, v84, v86);
  *(v62 + 264) = v101;
  *(v62 + 240) = v88;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0, &unk_1CA980550);
  v89 = sub_1CA94C1E8();
  v90 = sub_1CA2F864C(v89);
  v91 = v99;
  v99[4] = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 280) = v91;
  *(inited + 304) = v92;
  *(inited + 312) = @"ResidentCompatible";
  *(inited + 344) = MEMORY[0x1E69E6370];
  *(inited + 320) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key, &unk_1CA98050C);
  v93 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t ContentPropertyPossibleValue.label.getter()
{
  switch(*(v0 + 8))
  {
    case 1:
      v1 = [*v0 spokenPhrase];
      goto LABEL_6;
    case 2:
      return sub_1CA94C3A8();
    case 3:
      v3 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:*v0 indentationLevel:0];
      v4 = [v3 title];

      v5 = [v4 wf_localizedString];
      goto LABEL_7;
    default:
      v1 = [*v0 stringValue];
LABEL_6:
      v5 = v1;
LABEL_7:
      v6 = sub_1CA94C3A8();

      return v6;
  }
}

uint64_t static ContentPropertyPossibleValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v4 != 1)
      {
        return 0;
      }

      goto LABEL_5;
    case 2:
      if (v4 == 2)
      {
        goto LABEL_5;
      }

      return 0;
    case 3:
      if (v4 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    default:
      if (*(a2 + 8))
      {
        return 0;
      }

LABEL_5:
      sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
      v6 = v3;
      v7 = v2;
      v8 = sub_1CA94CFD8();

      return v8 & 1;
  }
}

uint64_t ContentPropertyPossibleValue.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](v1);
  sub_1CA94CFE8();
  return sub_1CA94D968();
}

uint64_t sub_1CA5468D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1CA94D918();
  ContentPropertyPossibleValue.hash(into:)(v4);
  return sub_1CA94D968();
}

uint64_t sub_1CA546944()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1CA546A60;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4463D8, &qword_1CA98B2E8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA546D74;
  v0[13] = &block_descriptor_22;
  v0[14] = v2;
  [v1 getValuesWithCompletionBlock_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA546A60()
{

  return MEMORY[0x1EEE6DFA0](sub_1CA546B40, 0, 0);
}

uint64_t sub_1CA546B40()
{
  v2 = v0 + 208;
  v1 = *(v0 + 208);
  v3 = *(v1 + 16);
  if (v3)
  {
    v30 = (v0 + 80);
    v4 = (v0 + 144);
    v5 = v1 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = v0 + 208;
    while (1)
    {
      sub_1CA25B374(v5, v30);
      sub_1CA2C0A20(v30, v4);
      v8 = OUTLINED_FUNCTION_70();
      sub_1CA25B374(v8, v9);
      v10 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      if (OUTLINED_FUNCTION_0_52(v10))
      {
        break;
      }

      v12 = OUTLINED_FUNCTION_70();
      sub_1CA25B374(v12, v13);
      v14 = sub_1CA25B3D0(0, &qword_1EDB9F758, 0x1E696EA50);
      if (OUTLINED_FUNCTION_0_52(v14))
      {
        v11 = 1;
        goto LABEL_9;
      }

      v15 = OUTLINED_FUNCTION_70();
      sub_1CA25B374(v15, v16);
      v17 = sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
      if (OUTLINED_FUNCTION_0_52(v17))
      {
        v11 = 2;
        goto LABEL_9;
      }

      v22 = OUTLINED_FUNCTION_70();
      sub_1CA2C0A20(v22, v23);
      v24 = sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
      if (OUTLINED_FUNCTION_0_52(v24))
      {
        v11 = 3;
        goto LABEL_10;
      }

LABEL_15:
      v5 += 32;
      if (!--v3)
      {

        v0 = v29;
        goto LABEL_20;
      }
    }

    v11 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v4);
LABEL_10:
    v18 = *(v2 + 8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E6D6C();
      v6 = v25;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_3_39(v19);
      sub_1CA2E6D6C();
      v6 = v26;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v11;
    v2 = v7;
    goto LABEL_15;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v27 = *(v0 + 8);

  return v27(v6);
}

uint64_t sub_1CA546D74(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = sub_1CA94C658();
  return sub_1CA546634(v2, v3);
}

uint64_t WFContentPropertyPossibleValuesGetter.unsafeTypedValues.getter()
{
  v0 = sub_1CA94CF48();
  v1 = *(v0 + 16);
  if (!v1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v60 = v0;
  v2 = v0 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1CA25B374(v2, v67);
    v4 = sub_1CA2C0A20(v67, v66);
    v12 = OUTLINED_FUNCTION_2_45(v4, v5, v6, v7, v8, v9, v10, v11, v60, v61, v62, v63, v64, v65, v66[0]);
    sub_1CA25B374(v12, v13);
    v14 = sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
    v16 = OUTLINED_FUNCTION_1_38(v14, v15);
    if (v16)
    {
      __swift_destroy_boxed_opaque_existential_0(v66);
      v24 = 0;
      v25 = v61;
    }

    else
    {
      v26 = OUTLINED_FUNCTION_2_45(v16, v17, v18, v19, v20, v21, v22, v23, v60, v61, v62, v63, v64, v65, v66[0]);
      sub_1CA25B374(v26, v27);
      v28 = sub_1CA25B3D0(0, &qword_1EDB9F758, 0x1E696EA50);
      v30 = OUTLINED_FUNCTION_1_38(v28, v29);
      if (v30)
      {
        __swift_destroy_boxed_opaque_existential_0(v66);
        v25 = v61;
        v24 = 1;
      }

      else
      {
        v38 = OUTLINED_FUNCTION_2_45(v30, v31, v32, v33, v34, v35, v36, v37, v60, v61, v62, v63, v64, v65, v66[0]);
        sub_1CA25B374(v38, v39);
        v40 = sub_1CA25B3D0(0, &qword_1EDB9FAC0, 0x1E696AEC0);
        v42 = OUTLINED_FUNCTION_1_38(v40, v41);
        if (v42)
        {
          __swift_destroy_boxed_opaque_existential_0(v66);
          v25 = v61;
          v24 = 2;
        }

        else
        {
          v50 = OUTLINED_FUNCTION_2_45(v42, v43, v44, v45, v46, v47, v48, v49, v60, v61, v62, v63, v64, v65, v66[0]);
          sub_1CA2C0A20(v50, v51);
          v52 = sub_1CA25B3D0(0, &unk_1EDB9F6B0, 0x1E69ACA90);
          if (!OUTLINED_FUNCTION_1_38(v52, v53))
          {
            goto LABEL_16;
          }

          v25 = v61;
          v24 = 3;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1CA2E6D6C();
      v3 = v57;
    }

    v55 = *(v3 + 16);
    v54 = *(v3 + 24);
    if (v55 >= v54 >> 1)
    {
      OUTLINED_FUNCTION_3_39(v54);
      sub_1CA2E6D6C();
      v3 = v58;
    }

    *(v3 + 16) = v55 + 1;
    v56 = v3 + 16 * v55;
    *(v56 + 32) = v25;
    *(v56 + 40) = v24;
LABEL_16:
    v2 += 32;
    --v1;
  }

  while (v1);

  return v3;
}

unint64_t sub_1CA546FD8()
{
  result = qword_1EC4463E0;
  if (!qword_1EC4463E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4463E0);
  }

  return result;
}

uint64_t sub_1CA547038(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA547078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}