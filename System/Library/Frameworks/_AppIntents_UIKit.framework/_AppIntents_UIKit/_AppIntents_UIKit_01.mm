uint64_t sub_1AE8728D8()
{
  OUTLINED_FUNCTION_12_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_1AE872960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1AE87CEA0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[9] = AssociatedTypeWitness;
  v4[10] = *(AssociatedTypeWitness - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE872AA8, 0, 0);
}

uint64_t sub_1AE872AA8()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_48();
  sub_1AE87D120();
  OUTLINED_FUNCTION_63();
  swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  *(v0 + 96) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_54(v1);

  return MEMORY[0x1EEDB3CD8](v3);
}

uint64_t sub_1AE872B60()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 104) = v0;

  v7 = OUTLINED_FUNCTION_51();
  v8(v7);
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AE872CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B38, &qword_1AE87F6A8);
  v4[22] = swift_task_alloc();
  v5 = sub_1AE87D4A0();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE872DC4, 0, 0);
}

uint64_t sub_1AE872DC4()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[20] + 16);
  v0[28] = v1;
  sub_1AE87D7F0();
  v2 = v1;
  v0[29] = sub_1AE87D7E0();
  OUTLINED_FUNCTION_45();
  sub_1AE87D7C0();
  OUTLINED_FUNCTION_57();
  v3 = OUTLINED_FUNCTION_24_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AE872E54()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 224);

  sub_1AE871190();
  *(v0 + 240) = v2;

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AE872EC0()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_18();
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[21];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1AE8730AC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B08, &qword_1AE87F648);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1AE871E84;
    v0[13] = &block_descriptor_82;
    v0[14] = v3;
    [v2 presentOverViewController:v1 completionHandler:v0 + 10];
    OUTLINED_FUNCTION_72();

    return MEMORY[0x1EEE6DEC8](v4);
  }

  else
  {
    sub_1AE87CCE0();
    OUTLINED_FUNCTION_0_5();
    v8 = sub_1AE858140(v6, 255, v7);
    v9 = OUTLINED_FUNCTION_11_0(v8);
    OUTLINED_FUNCTION_39(v9, v10);
    OUTLINED_FUNCTION_8_2();
    (*(v11 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_72();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_1AE8730AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = *(v3 + 48);
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AE8731A8()
{
  v1 = v0[18];
  result = sub_1AE869494();
  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1B2708E80](0, v1);
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v3 = *(v1 + 32);
    }

    v4 = v3;
    v24 = v0[30];
    v5 = v0[26];
    v6 = v0[27];
    v7 = v0[24];
    v8 = v0[23];

    v9 = [v4 url];

    sub_1AE87D490();
    (*(v7 + 32))(v6, v5, v8);
    v10 = OUTLINED_FUNCTION_69();
    v11(v10);
    sub_1AE87D5C0();
    OUTLINED_FUNCTION_0_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_26_0();
    sub_1AE87CE90();

    (*(v7 + 8))(v6, v8);

    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v17 = v0[30];

    sub_1AE87D060();
    OUTLINED_FUNCTION_30();
    v20 = sub_1AE858140(v18, 255, v19);
    v21 = OUTLINED_FUNCTION_11_0(v20);
    OUTLINED_FUNCTION_39(v21, v22);
    OUTLINED_FUNCTION_8_2();
    (*(v23 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_14_0();
  }

  return v16();
}

void sub_1AE87340C()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 240);
  swift_willThrow();

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_77();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1AE8734A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AE8734C0, 0, 0);
}

uint64_t sub_1AE8734C0()
{
  OUTLINED_FUNCTION_12_0();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  OUTLINED_FUNCTION_22_1();
  sub_1AE87D110();
  OUTLINED_FUNCTION_6_2();

  return v1();
}

uint64_t sub_1AE87355C()
{
  OUTLINED_FUNCTION_12_0();
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1AE87366C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B30, &qword_1AE87F6A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AE87375C;
  v0[13] = &block_descriptor_79;
  v0[14] = v2;
  [v1 cancelPresentationWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE87366C()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AE87375C(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t sub_1AE873794@<X0>(uint64_t *a9@<X8>)
{
  sub_1AE87CEA0();
  sub_1AE858140(&qword_1EB5E2B28, 255, MEMORY[0x1E6959ED8]);
  sub_1AE87D350();
  sub_1AE876CF0();

  result = sub_1AE87D340();
  *a9 = result;
  return result;
}

uint64_t sub_1AE8738C0(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B40, &qword_1AE87F6B0);
  v2[9] = swift_task_alloc();
  v3 = sub_1AE87D0E0();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE8739B8, 0, 0);
}

uint64_t sub_1AE8739B8()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_18();
  sub_1AE8578B0(v0[8], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BA0, &qword_1AE87F550);
  if (swift_dynamicCast())
  {
    v2 = v0[11];
    v1 = v0[12];
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[7];
    OUTLINED_FUNCTION_66();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);
    (*(v2 + 32))(v1, v4, v3);
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B48, &qword_1AE87F6B8);
    v5[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v5);
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v0[13] = v9;
    *v9 = v10;
    v9[1] = sub_1AE873C08;
    OUTLINED_FUNCTION_72();

    return MEMORY[0x1EEDB37A8](v11);
  }

  else
  {
    v13 = v0[9];
    v14 = v0[8];
    OUTLINED_FUNCTION_0_0();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    sub_1AE8780EC(v13, &qword_1EB5E2B40);
    sub_1AE87CCE0();
    OUTLINED_FUNCTION_0_5();
    v21 = sub_1AE858140(v19, 255, v20);
    OUTLINED_FUNCTION_11_0(v21);
    v23 = v22;
    sub_1AE8578B0(v14, v22);
    OUTLINED_FUNCTION_8_2();
    (*(v24 + 104))(v23);
    swift_willThrow();

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_72();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_1AE873C08()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AE873D00()
{
  OUTLINED_FUNCTION_9();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_6_2();

  return v1();
}

uint64_t sub_1AE873D7C()
{
  OUTLINED_FUNCTION_9();
  v1 = v0[7];
  (*(v0[11] + 8))(v0[12], v0[10]);
  __swift_deallocate_boxed_opaque_existential_1(v1);

  OUTLINED_FUNCTION_10();

  return v2();
}

uint64_t sub_1AE873E08()
{
  OUTLINED_FUNCTION_9();
  v1[47] = v2;
  v1[48] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2A50, &qword_1AE87F538);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v3 = sub_1AE87D7F0();
  v1[51] = OUTLINED_FUNCTION_76(v3);
  OUTLINED_FUNCTION_45();
  v5 = sub_1AE87D7C0();
  v1[52] = v5;
  v1[53] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AE873ED4, v5, v4);
}

void sub_1AE873ED4()
{
  if (qword_1ED78F1F0 != -1)
  {
    OUTLINED_FUNCTION_7_2(&qword_1ED78F1F0);
  }

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  sub_1AE8584E8(&xmmword_1ED78F3B0, v0 + 104, &qword_1EB5E2A08, qword_1AE87F1D8);
  if (*(v0 + 128))
  {
    sub_1AE85C918((v0 + 104), v0 + 64);
    if (qword_1ED78F360 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED78F360);
    }

    v1 = *(v0 + 376);
    v2 = sub_1AE87D5F0();
    *(v0 + 432) = __swift_project_value_buffer(v2, qword_1ED78F448);
    sub_1AE8578B0(v1, v0 + 144);
    v3 = sub_1AE87D5D0();
    v4 = sub_1AE87D900();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v5 = 136446210;
      sub_1AE8578B0(v0 + 144, v0 + 264);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BA0, &qword_1AE87F550);
      sub_1AE87D6F0();
      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
      v6 = OUTLINED_FUNCTION_71();
      v9 = sub_1AE85AB3C(v6, v7, v8);

      *(v5 + 4) = v9;
      OUTLINED_FUNCTION_75(&dword_1AE855000, v10, v11, "Invoking navigation for %{public}s");
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 144));
    }

    v18 = *(v0 + 384);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    v19 = *(v18 + 16);
    *(v0 + 440) = v19;
    v20 = v19;
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 448) = v21;
    *v21 = v22;
    v21[1] = sub_1AE8742C0;
    OUTLINED_FUNCTION_60();

    __asm { BRAA            X5, X16 }
  }

  sub_1AE8780EC(v0 + 104, &qword_1EB5E2A08);
  if (qword_1ED78F360 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1ED78F360);
  }

  v12 = sub_1AE87D5F0();
  __swift_project_value_buffer(v12, qword_1ED78F448);
  v13 = sub_1AE87D5D0();
  v14 = sub_1AE87D8D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1AE855000, v13, v14, "App does not adopt IntentSceneConfigurator, skipping", v15, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_60();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1AE8742C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
    v7 = *(v3 + 416);
    v8 = *(v3 + 424);
    v9 = sub_1AE874D5C;
  }

  else
  {

    v7 = *(v3 + 416);
    v8 = *(v3 + 424);
    v9 = sub_1AE8743C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void sub_1AE8743C8()
{
  v1 = v0[45];
  if (v1)
  {
    v0[60] = v1;
    v0[61] = v1;
    __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
    v2 = v1;
    v3 = swift_task_alloc();
    v0[62] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_25_0(v3);
    OUTLINED_FUNCTION_60();

    __asm { BRAA            X4, X16 }
  }

  if ([*(v0[48] + 16) supportsMultipleScenes])
  {
    sub_1AE8578B0(v0[47], (v0 + 23));
    v6 = sub_1AE87D5D0();
    v7 = sub_1AE87D900();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v8 = 136446210;
      sub_1AE8578B0((v0 + 23), (v0 + 28));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BA0, &qword_1AE87F550);
      sub_1AE87D6F0();
      __swift_destroy_boxed_opaque_existential_0(v0 + 23);
      v9 = OUTLINED_FUNCTION_71();
      v12 = sub_1AE85AB3C(v9, v10, v11);

      *(v8 + 4) = v12;
      OUTLINED_FUNCTION_75(&dword_1AE855000, v13, v14, "Requesting new UIscene for %{public}s)");
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 23);
    }

    v19 = *(v0[48] + 16);
    v0[6] = sub_1AE874E58;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1AE874FF0;
    v0[5] = &block_descriptor_1;
    v20 = _Block_copy(v0 + 2);
    v21 = v19;
    OUTLINED_FUNCTION_56();
    [v22 v23];
    _Block_release(v20);

    v24 = [objc_opt_self() defaultCenter];
    v0[58] = sub_1AE87D990();

    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    v0[59] = v25;
    *v25 = v26;
    v25[1] = sub_1AE8747D0;
    OUTLINED_FUNCTION_60();

    __asm { BR              X2 }
  }

  v15 = sub_1AE8774E0();
  OUTLINED_FUNCTION_47(&type metadata for IntentNavigationError, v15);
  *v16 = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_60();

  __asm { BRAA            X1, X16 }
}

void sub_1AE8747D0()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {

    v7 = *(v3 + 416);
    v8 = *(v3 + 424);

    MEMORY[0x1EEE6DFA0](sub_1AE8748F4, v7, v8);
  }
}

uint64_t sub_1AE8748F4()
{
  OUTLINED_FUNCTION_49();
  sub_1AE8584E8(*(v0 + 400), *(v0 + 392), &qword_1EB5E2A50, &qword_1AE87F538);
  v1 = sub_1AE87D410();
  if (OUTLINED_FUNCTION_58() == 1)
  {
    v2 = *(v0 + 400);

    sub_1AE8780EC(v2, &qword_1EB5E2A50);
    v3 = OUTLINED_FUNCTION_51();
    sub_1AE8780EC(v3, v4);
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0u;
LABEL_9:
    sub_1AE8780EC(v0 + 304, &qword_1EB5E2740);
LABEL_10:
    v15 = sub_1AE8774E0();
    v16 = OUTLINED_FUNCTION_47(&type metadata for IntentNavigationError, v15);
    OUTLINED_FUNCTION_74(v16, v17);
    OUTLINED_FUNCTION_50();

    OUTLINED_FUNCTION_10();

    return v18();
  }

  v5 = *(v0 + 392);
  v6 = *(v0 + 400);
  sub_1AE87D400();
  sub_1AE8780EC(v6, &qword_1EB5E2A50);
  OUTLINED_FUNCTION_19_1();
  (*(v7 + 8))(v5, v1);
  if (!*(v0 + 328))
  {

    goto LABEL_9;
  }

  sub_1AE85D620(0, &qword_1EB5E2A18, 0x1E69DCE70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v8 = *(v0 + 368);
  *(v0 + 480) = 0;
  *(v0 + 488) = v8;
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = v8;
  __swift_project_boxed_opaque_existential_1((v0 + 64), v9);
  OUTLINED_FUNCTION_67(v10);
  v19 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v0 + 496) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_25_0(v13);

  return v19(v11);
}

uint64_t sub_1AE874B9C()
{
  OUTLINED_FUNCTION_12_0();
  v2 = *v1;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 504) = v0;

  v5 = *(v2 + 424);
  v6 = *(v2 + 416);
  if (v0)
  {
    v7 = sub_1AE874DD4;
  }

  else
  {
    v7 = sub_1AE874CD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1AE874CD0()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v0[60];
  v1 = v0[61];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  OUTLINED_FUNCTION_6_2();

  return v3();
}

uint64_t sub_1AE874D5C()
{
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 440);

  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_10();

  return v2();
}

uint64_t sub_1AE874DD4()
{
  OUTLINED_FUNCTION_12_0();
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);

  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_10();

  return v3();
}

void sub_1AE874E58(void *a1)
{
  if (qword_1ED78F360 != -1)
  {
    swift_once();
  }

  v2 = sub_1AE87D5F0();
  __swift_project_value_buffer(v2, qword_1ED78F448);
  v3 = a1;
  oslog = sub_1AE87D5D0();
  v4 = sub_1AE87D900();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1AE87DC10();
    v9 = sub_1AE85AB3C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1AE855000, oslog, v4, "Unable to request scene activation. %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2709710](v6, -1, -1);
    MEMORY[0x1B2709710](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1AE874FF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1AE875058(uint64_t a1, void *a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *a2;
  v3 = sub_1AE87D410();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2A50, &qword_1AE87F538);
  v2[9] = swift_task_alloc();
  v4 = sub_1AE87D980();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE8751D4, 0, 0);
}

uint64_t sub_1AE8751D4()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_18();
  v0[2] = v0[4];
  sub_1AE858140(&qword_1EB5E2A58, 255, MEMORY[0x1E6969F08]);

  sub_1AE87D820();
  v0[13] = *MEMORY[0x1E69DE350];
  OUTLINED_FUNCTION_29();
  sub_1AE858140(v1, 255, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_17_1();
  v0[14] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_20_1(v3);
  OUTLINED_FUNCTION_72();

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1AE8752EC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_16_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
  }

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AE875400()
{
  OUTLINED_FUNCTION_12_0();
  if (OUTLINED_FUNCTION_58() == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_0_0();
    __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);

    OUTLINED_FUNCTION_6_2();

    return v5();
  }

  else
  {
    v7 = v0[7];
    v0[16] = *(v7 + 32);
    v0[17] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    OUTLINED_FUNCTION_41();
    v8();
    v9 = sub_1AE87D7F0();
    v0[18] = OUTLINED_FUNCTION_76(v9);
    OUTLINED_FUNCTION_45();
    sub_1AE87D7C0();
    OUTLINED_FUNCTION_57();
    v10 = OUTLINED_FUNCTION_24_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1AE875524()
{
  OUTLINED_FUNCTION_12_0();

  v1 = sub_1AE87D3F0();
  v2 = sub_1AE87D6E0();
  v4 = v3;
  if (v2 != sub_1AE87D6E0() || v4 != v5)
  {
    *(v0 + 152) = sub_1AE87DBC0() & 1;
  }

  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AE875618()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_18();
  v1 = OUTLINED_FUNCTION_40();
  v2(v1);
  OUTLINED_FUNCTION_41();
  v0();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_66();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_72();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1AE8756B0()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_18();
  if (*(v0 + 152) == 1)
  {
    v2 = OUTLINED_FUNCTION_40();
    v3(v2);
    OUTLINED_FUNCTION_41();
    v1();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_66();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_72();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    OUTLINED_FUNCTION_29();
    sub_1AE858140(v17, 255, v18);
    swift_task_alloc();
    OUTLINED_FUNCTION_17_1();
    *(v0 + 112) = v19;
    *v19 = v20;
    OUTLINED_FUNCTION_20_1(v19);
    OUTLINED_FUNCTION_72();

    return MEMORY[0x1EEE6D8C8](v21);
  }
}

uint64_t sub_1AE8757E8()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t sub_1AE875858()
{
  OUTLINED_FUNCTION_9();
  v0[3] = v1;
  v2 = sub_1AE87CF70();
  v0[4] = v2;
  OUTLINED_FUNCTION_7(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_62();
  v4 = sub_1AE87CD10();
  v0[7] = v4;
  OUTLINED_FUNCTION_7(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_62();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2A38, &unk_1AE87F510);
  v0[10] = OUTLINED_FUNCTION_62();
  v6 = sub_1AE87D140();
  v0[11] = v6;
  OUTLINED_FUNCTION_7(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_62();
  v8 = sub_1AE87D010();
  v0[14] = v8;
  OUTLINED_FUNCTION_7(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_26_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AE875A14()
{
  sub_1AE87D260();
  sub_1AE87D240();
  OUTLINED_FUNCTION_45();

  sub_1AE875DD8(v1);
  v2 = sub_1AE87D250();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[15];
    v5 = *(v4 + 16);
    v4 += 16;
    v26 = v5;
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v24 = (v0[8] + 8);
    v25 = (v0[5] + 8);
    v7 = MEMORY[0x1E69E7CC0];
    v22 = *(v4 + 56);
    v23 = (v4 - 8);
    v20 = v0[12];
    v21 = (v20 + 32);
    do
    {
      v31 = v7;
      v32 = v3;
      v8 = v0[16];
      v9 = v0[14];
      v27 = v0[10];
      v10 = v0[9];
      v11 = v0[6];
      v12 = v0[7];
      v28 = v0[4];
      v29 = v0[11];
      v30 = v6;
      v26(v8);
      v0[2] = MEMORY[0x1E69E7CC0];
      sub_1AE858140(&unk_1ED78F290, 255, MEMORY[0x1E6959D88]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2950, &unk_1AE87F1B0);
      OUTLINED_FUNCTION_27();
      sub_1AE877CB4(&qword_1ED78F270, &qword_1EB5E2950, &unk_1AE87F1B0);
      sub_1AE87DA20();
      sub_1AE87CF60();
      sub_1AE87D000();
      (*v25)(v11, v28);
      (*v24)(v10, v12);
      (*v23)(v8, v9);
      if (__swift_getEnumTagSinglePayload(v27, 1, v29) == 1)
      {
        sub_1AE8780EC(v0[10], &qword_1EB5E2A38);
        v7 = v31;
      }

      else
      {
        v13 = *v21;
        (*v21)(v0[13], v0[10], v0[11]);
        v7 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1AE8775A4(0, *(v31 + 16) + 1, 1, v31);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_1AE8775A4((v14 > 1), v15 + 1, 1, v7);
        }

        v16 = v0[13];
        v17 = v0[11];
        *(v7 + 2) = v15 + 1;
        v13(&v7[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15], v16, v17);
      }

      v6 = v30 + v22;
      v3 = v32 - 1;
    }

    while (v32 != 1);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_53();

  return v18(v7);
}

void *sub_1AE875DD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1AE87778C(*(a1 + 16), 0);
  v4 = sub_1AE8778DC(&v6, v3 + 8, v2, a1);
  sub_1AE87759C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AE875E90()
{
  sub_1AE875E68();
  OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6BDC0]();
}

uint64_t sub_1AE875EC0()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1AE87D7F0();
  v1[4] = sub_1AE87D7E0();
  v3 = sub_1AE87D7C0();

  return MEMORY[0x1EEE6DFA0](sub_1AE875F80, v3, v2);
}

uint64_t sub_1AE875F80()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_4_4();
  sub_1AE858140(v0, v1, v2);
  OUTLINED_FUNCTION_42();
  sub_1AE87CD70();
  OUTLINED_FUNCTION_53();

  return v3();
}

uint64_t sub_1AE87600C()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_1AE87D7F0();
  v1[4] = sub_1AE87D7E0();
  v3 = sub_1AE87D7C0();

  return MEMORY[0x1EEE6DFA0](sub_1AE8760CC, v3, v2);
}

uint64_t sub_1AE8760CC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_4_4();
  sub_1AE858140(v0, v1, v2);
  OUTLINED_FUNCTION_42();
  sub_1AE87CD60();
  OUTLINED_FUNCTION_53();

  return v3();
}

uint64_t sub_1AE876158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AE876214;

  return sub_1AE86F6B4();
}

uint64_t sub_1AE876214()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21();
  v4 = *v3;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  v8 = *(v4 + 8);
  if (!v1)
  {
    v6 = v2;
    v7 = v0;
  }

  return v8(v6, v7);
}

uint64_t sub_1AE876310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AE86646C;

  return sub_1AE873E08();
}

uint64_t sub_1AE8763A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AE876438;

  return sub_1AE875858();
}

uint64_t sub_1AE876438()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v4 = *v1;
  OUTLINED_FUNCTION_6();
  *v5 = v4;

  OUTLINED_FUNCTION_53();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1AE87657C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1AE87833C;

  return MEMORY[0x1EEDB2A38](a1, a2, a3, v11, a5);
}

uint64_t sub_1AE876668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1AE876754;

  return MEMORY[0x1EEDB2A30](a1, a2, a3, v11, a5);
}

uint64_t sub_1AE876754()
{
  OUTLINED_FUNCTION_9();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  v3 = *v0;
  OUTLINED_FUNCTION_6();
  *v4 = v3;

  OUTLINED_FUNCTION_53();

  return v5(v2);
}

uint64_t sub_1AE876874(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

id sub_1AE8768BC()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1AE8769EC();
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_42();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 undoManager]) == 0)
  {
    v6 = v2;
    v7 = v6;
    while (1)
    {
      v8 = v7;
      v7 = [v7 nextResponder];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
      }

      else
      {
        v5 = [v8 undoManager];

        if (v5)
        {

          return v5;
        }
      }

      if (!v7)
      {

        return 0;
      }
    }
  }

  v5 = v4;

  return v5;
}

void sub_1AE8769EC()
{
  v3 = [v0 connectedScenes];
  sub_1AE85D620(0, &qword_1EB5E2A18, 0x1E69DCE70);
  v4 = sub_1AE877534();
  OUTLINED_FUNCTION_65();
  v5 = sub_1AE87D830();

  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1AE87DA30();
    OUTLINED_FUNCTION_65();
    v6 = sub_1AE87D840();
    v14 = v39;
    v3 = v40;
    v4 = v41;
    v15 = v42;
    v1 = v43;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31();
    v15 = 0;
    v14 = v5;
  }

  v37 = v4;
  v16 = (v4 + 64) >> 6;
  if (v14 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v17 = v15;
  v18 = v15;
  if (v1)
  {
LABEL_9:
    v6 = OUTLINED_FUNCTION_46();
    v19 = v6;
    if (v6)
    {
      while (1)
      {
        if ([v19 activationState] != -1)
        {
          objc_opt_self();
          OUTLINED_FUNCTION_22_1();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            break;
          }
        }

        v15 = v18;
        v1 = v2;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        v6 = sub_1AE87DA40();
        if (v6)
        {
          v6 = swift_dynamicCast();
          v19 = v38;
          v18 = v15;
          v2 = v1;
          if (v38)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v28 = v20;
      OUTLINED_FUNCTION_10_0(v20, v21, v22, v23, v24, v25, v26, v27, v36, v37);

      v29 = [v28 windows];
      sub_1AE85D620(0, &qword_1EB5E2A28, 0x1E69DD2E8);
      OUTLINED_FUNCTION_42();
      v30 = sub_1AE87D770();

      sub_1AE869494();
      OUTLINED_FUNCTION_55();
      while (1)
      {
        if (v3 == v1)
        {

          goto LABEL_18;
        }

        if (v14)
        {
          v31 = MEMORY[0x1B2708E80](v1, v30);
        }

        else
        {
          if (v1 >= v2[2])
          {
            goto LABEL_36;
          }

          v31 = *(v30 + 8 * v1 + 32);
        }

        v32 = v31;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_35;
        }

        if ([v31 (v18 + 363)])
        {
          break;
        }

        ++v1;
      }

      v33 = [v32 rootViewController];
      if (v33)
      {
        while (1)
        {
          v34 = [v33 presentedViewController];
          if (!v34)
          {
            break;
          }

          v35 = v34;

          v33 = v35;
        }
      }

      else
      {
      }
    }

    else
    {
LABEL_17:
      OUTLINED_FUNCTION_10_0(v6, v7, v8, v9, v10, v11, v12, v13, v36, v37);
LABEL_18:
    }
  }

  else
  {
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        goto LABEL_17;
      }

      ++v17;
      if (*(v3 + v18))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }
}

id sub_1AE876CF0()
{
  v0 = [objc_opt_self() progressWithTotalUnitCount_];

  return v0;
}

void UIView.visualState.getter()
{
  objc_opt_self();
  OUTLINED_FUNCTION_22_1();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v7 = v0;
    [v2 state];
    goto LABEL_6;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_22_1();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v7 = v0;
    [v4 isSelected];
    [v4 isHighlighted];
    [v4 isFocused];
    [v4 isEditing];
LABEL_6:
    sub_1AE87CCF0();

    return;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_22_1();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v0;
    [v6 isSelected];
    [v6 isHighlighted];
    [v6 isFocused];
    goto LABEL_6;
  }

  [v0 isFocused];

  sub_1AE87CCF0();
}

uint64_t UIView.geometry.getter()
{
  v1 = [v0 window];
  if (v1 && (v2 = v1, v3 = [v1 screen], v2, v4 = objc_msgSend(v3, sel_fixedCoordinateSpace), v3, v4))
  {
    [v0 frame];
    [v0 convertPoint:v4 toCoordinateSpace:?];
    v7.origin.x = OUTLINED_FUNCTION_68();
    CGRectGetWidth(v7);
    v8.origin.x = OUTLINED_FUNCTION_68();
    CGRectGetHeight(v8);
    sub_1AE87CF50();

    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1AE87CF60();
  }
}

uint64_t sub_1AE87717C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE8771CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1AE877220(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AE877238(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t dispatch thunk of IntentSceneConfigurator.application(_:sceneFor:)()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v14 = (*(v0 + 8) + **(v0 + 8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_3(v10);
  *v11 = v12;
  v11[1] = sub_1AE878334;

  return v14(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of IntentSceneConfigurator.scene(_:navigateToViewsFor:)()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_67(v1);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v0 + 16) = v10;
  *v10 = v0;
  v10[1] = sub_1AE878334;

  return v12(v8, v6, v4, v2);
}

unint64_t sub_1AE8774E0()
{
  result = qword_1EB5E2A10;
  if (!qword_1EB5E2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2A10);
  }

  return result;
}

unint64_t sub_1AE877534()
{
  result = qword_1EB5E2A20;
  if (!qword_1EB5E2A20)
  {
    sub_1AE85D620(255, &qword_1EB5E2A18, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2A20);
  }

  return result;
}

void *sub_1AE8775A4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1AE877690(v8, v7);
  v10 = *(sub_1AE87D140() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1AE877808(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1AE877690(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2A40, &qword_1AE87F520);
  v4 = *(sub_1AE87D140() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1AE87778C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2A48, &qword_1AE87F528);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 4);
  return v4;
}

uint64_t sub_1AE877808(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1AE87D140(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1AE87D140();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

void *sub_1AE8778DC(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AE8779DC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_6(v2);

  return sub_1AE871FB8(v4, v5, v0);
}

uint64_t sub_1AE877A6C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_6(v2);

  return sub_1AE8707E8(v4, v5, v0);
}

uint64_t sub_1AE877AFC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_6(v2);

  return sub_1AE86FCE4(v4, v5, v0);
}

uint64_t sub_1AE877B8C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_6(v1);
  OUTLINED_FUNCTION_70();

  return sub_1AE86F260(v3, v4, v5, v6);
}

uint64_t sub_1AE877C20()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_6(v1);
  OUTLINED_FUNCTION_70();

  return sub_1AE86F260(v3, v4, v5, v6);
}

uint64_t sub_1AE877CB4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_22_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AE877CF8()
{
  result = qword_1EB5E2A98;
  if (!qword_1EB5E2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2A98);
  }

  return result;
}

unint64_t sub_1AE877D4C()
{
  result = qword_1EB5E2AA0;
  if (!qword_1EB5E2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2AA0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B2709710);
  }

  return result;
}

uint64_t sub_1AE877DF0()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = sub_1AE87D4A0();
  OUTLINED_FUNCTION_7(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_5_3(v10);
  *v11 = v12;
  v11[1] = sub_1AE878334;

  return sub_1AE8718D8(v2, v7, v8, v0 + v5, v9);
}

uint64_t sub_1AE877F28()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_1_6(v1);
  OUTLINED_FUNCTION_70();

  return sub_1AE872CB0(v3, v4, v5, v6);
}

uint64_t sub_1AE877FBC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_33();
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1AE878334;

  return sub_1AE8734A0(v2, v0, v1 + 16);
}

uint64_t sub_1AE87805C()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AE878334;

  return sub_1AE87353C(v2);
}

uint64_t sub_1AE8780EC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_39(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_19_1();
  (*(v5 + 8))(v2);
  return v2;
}

uint64_t getEnumTagSinglePayload for IntentNavigationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentNavigationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1AE8782D0()
{
  result = qword_1EB5E2B50;
  if (!qword_1EB5E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2B50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_31()
{
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_46()
{
  v4 = *(*(v1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v0)))));

  return v4;
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_50()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
}

double OUTLINED_FUNCTION_52()
{
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_58()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_75(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1)
{

  return sub_1AE87D7E0();
}

void sub_1AE8787D0()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E28B0, &unk_1AE87EE10);
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  sub_1AE85DF58(v5, v21 - v9, &qword_1EB5E28B0, &unk_1AE87EE10);
  v11 = sub_1AE87D810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AE87A22C(v10);
  }

  else
  {
    sub_1AE87D800();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1AE87D7C0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v17 = sub_1AE87D700() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v19 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v21[1] = 7;
      v21[2] = v19;
      v21[3] = v17;
      swift_task_create();

      sub_1AE87A22C(v5);

      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1AE87A22C(v5);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v1;
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_19_0();
}

void _AppIntentExecution.callAsFunction<A>(for:handler:)()
{
  OUTLINED_FUNCTION_20_0();
  v30 = v1;
  v31 = v0;
  v3 = v2;
  v29 = v4;
  v27 = v5;
  v28 = sub_1AE87CC60();
  OUTLINED_FUNCTION_1();
  v26 = v6;
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = sub_1AE87D9F0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v25 - v22;
  v24 = type metadata accessor for _AppIntentExecution(0);
  sub_1AE85DF58(v31 + *(v24 + 20), &v32, &unk_1EB5E2B60, &unk_1AE87F7F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2B60, &unk_1AE87F7F0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    (*(v17 + 32))(v23, v15, v3);
    (*(v17 + 16))(v21, v23, v3);
    sub_1AE87CC40();
    v30(v9);
    (*(v26 + 8))(v9, v28);
    (*(v17 + 8))(v23, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v3);
    (*(v12 + 8))(v15, v10);
  }

  OUTLINED_FUNCTION_19_0();
}

uint64_t _AppIntentExecution.withExtendedNavigation(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E28B0, &unk_1AE87EE10);
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (qword_1EB5E2538 != -1)
  {
    OUTLINED_FUNCTION_1_3(&qword_1EB5E2538);
  }

  v7 = sub_1AE87D5F0();
  __swift_project_value_buffer(v7, qword_1EB5E3500);
  v8 = sub_1AE87D5D0();
  v9 = sub_1AE87D8F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1AE855000, v8, v9, "Client requested extended navigation time, API deprecated", v10, 2u);
    MEMORY[0x1B2709710](v10, -1, -1);
  }

  v11 = sub_1AE87D810();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;

  sub_1AE8787D0();
}

uint64_t sub_1AE878EE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1AE86646C;

  return v7();
}

uint64_t static NSPredicate.matchingAnyExecution<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B78, &unk_1AE87F810);
  v4 = OUTLINED_FUNCTION_13_0(v3);
  *(v4 + 16) = xmmword_1AE87EC10;
  sub_1AE87CE10();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1AE879FBC();
  return OUTLINED_FUNCTION_7_3(v5);
}

{
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B78, &unk_1AE87F810);
  v4 = OUTLINED_FUNCTION_13_0(v3);
  *(v4 + 16) = xmmword_1AE87EC10;
  sub_1AE87CE10();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1AE879FBC();
  return OUTLINED_FUNCTION_7_3(v5);
}

id static NSPredicate.matching<A>(intent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2C70, &qword_1AE87F640);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AE87F1C0;
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B78, &unk_1AE87F810);
  v5 = OUTLINED_FUNCTION_13_0(v4);
  *(v5 + 16) = xmmword_1AE87EC10;
  v6 = sub_1AE87CE10();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1AE879FBC();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v3 + 32) = OUTLINED_FUNCTION_19_2(v9, 0x80000001AE8819E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B90, &qword_1AE87F820);
  sub_1AE87CDF0();

  sub_1AE85D620(0, &qword_1EB5E2B98, 0x1E696AB28);
  return sub_1AE879BA0(v11, &selRef_andPredicateWithSubpredicates_);
}

{
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  sub_1AE87CC60();
  sub_1AE87CC50();
  v11 = static NSPredicate.matching<A>(intent:)(v10, a2, a3);
  (*(v6 + 8))(v10, a2);
  return v11;
}

uint64_t sub_1AE8792B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B78, &unk_1AE87F810);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AE87EC10;

  MEMORY[0x1B2708B20](61, 0xE100000000000000);
  MEMORY[0x1B2708B20](a3, a4);
  MEMORY[0x1B2708B20](47, 0xE100000000000000);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1AE879FBC();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  return sub_1AE87D890();
}

void static NSPredicate.matchingAll<A, B>(intent:parameters:)()
{
  OUTLINED_FUNCTION_20_0();
  v8 = v6;
  v10 = v9;
  v37 = v2;
  v38 = v5;
  v34 = 8 * v9;
  v35 = v7;
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_3_5(v2, v3, 1, v4, v5, v6, v7);
    TupleTypeMetadata = sub_1AE87DC90();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_15_1();
    while (v10 != v1)
    {
      sub_1AE87D050();
      *(v0 + 8 * v1++) = sub_1AE87DC90();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v39 = TupleTypeMetadata;
  OUTLINED_FUNCTION_1();
  v33 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2C70, &qword_1AE87F640);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1AE87F1C0;
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B78, &unk_1AE87F810);
  v19 = OUTLINED_FUNCTION_13_0(v18);
  *(v19 + 16) = xmmword_1AE87EC10;
  v36 = v8;
  v20 = sub_1AE87CE10();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1AE879FBC();
  *(v19 + 64) = v23;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v24 = OUTLINED_FUNCTION_19_2(v23, 0x80000001AE8819E0);
  *(v17 + 32) = v24;
  v40 = v17;
  MEMORY[0x1EEE9AC00](v24);
  if (v10)
  {
    v26 = (v39 + 32);
    v27 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v10;
    do
    {
      if (v10 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v26;
      }

      OUTLINED_FUNCTION_4_5(v29);
      *v27++ = v30;

      v26 += 4;
      --v28;
    }

    while (v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B90, &qword_1AE87F820);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_10_1();
  sub_1AE87CE00();

  (*(v33 + 8))(v16, v39);
  v31 = v41;
  sub_1AE85D620(0, &qword_1EB5E2B98, 0x1E696AB28);
  sub_1AE879BA0(v31, &selRef_andPredicateWithSubpredicates_);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1AE8797B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  sub_1AE8792B0(a2, a3, a4, a5);
  MEMORY[0x1B2708B60]();
  sub_1AE87A200(*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
  return sub_1AE87D7A0();
}

void static NSPredicate.matchingAny<A, B>(intent:parameters:)()
{
  OUTLINED_FUNCTION_20_0();
  v8 = v6;
  v10 = v9;
  v11 = 8 * v9;
  v32[3] = v2;
  v32[4] = v5;
  v32[1] = v7;
  if (v9 == 1)
  {
    OUTLINED_FUNCTION_3_5(v2, v3, 1, v4, v5, v6, v7);
    TupleTypeMetadata = sub_1AE87DC90();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_15_1();
    while (v10 != v1)
    {
      sub_1AE87D050();
      *(v0 + 8 * v1++) = sub_1AE87DC90();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v33 = TupleTypeMetadata;
  OUTLINED_FUNCTION_1();
  v32[0] = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B78, &unk_1AE87F810);
  v19 = OUTLINED_FUNCTION_13_0(v18);
  *(v19 + 16) = xmmword_1AE87EC10;
  v32[2] = v8;
  v20 = sub_1AE87CE10();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1AE879FBC();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_1AE87D890();
  v34 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1EEE9AC00](v23);
  if (v10)
  {
    v24 = (v33 + 32);
    v25 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = v10;
    do
    {
      if (v10 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v24;
      }

      OUTLINED_FUNCTION_4_5(v27);
      *v25++ = v28;

      v24 += 4;
      --v26;
    }

    while (v26);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2B90, &qword_1AE87F820);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_10_1();
  sub_1AE87CE00();
  (*(v32[0] + 8))(v17, v33);
  v29 = v35;
  sub_1AE85D620(0, &qword_1EB5E2B98, 0x1E696AB28);
  v30 = sub_1AE879BA0(v29, &selRef_orPredicateWithSubpredicates_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2C70, &qword_1AE87F640);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AE87F7E0;
  *(v31 + 32) = v23;
  *(v31 + 40) = v30;
  sub_1AE879BA0(v31, &selRef_andPredicateWithSubpredicates_);
  OUTLINED_FUNCTION_19_0();
}

id sub_1AE879BA0(uint64_t a1, SEL *a2)
{
  sub_1AE85D620(0, &qword_1EB5E2B70, 0x1E696AE18);
  v3 = sub_1AE87D760();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

void sub_1AE879C3C()
{
  OUTLINED_FUNCTION_20_0();
  v6 = v4;
  v7 = v2;
  v9 = v8;
  v10 = 8 * v8;
  v37 = v5;
  v38 = v11;
  v35 = v3;
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_3_5(v0, v1, 1, v2, v3, v4, v5);
    TupleTypeMetadata = sub_1AE87DC90();
  }

  else
  {
    v39 = v0;
    v13 = v4;
    MEMORY[0x1EEE9AC00](v0);
    for (i = 0; v9 != i; ++i)
    {
      sub_1AE87D050();
      *(&v33[i] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)) = sub_1AE87DC90();
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = v13;
  }

  v39 = TupleTypeMetadata;
  OUTLINED_FUNCTION_1();
  v34 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3();
  v19 = v18 - v17;
  v33[1] = v33;
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_3();
  v25 = v24 - v23;
  v36 = v6;
  sub_1AE87CC60();
  v26 = sub_1AE87CC50();
  v33[0] = v33;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v28 = (v39 + 32);
    v29 = v27;
    v30 = v9;
    do
    {
      if (v9 == 1)
      {
        v31 = 0;
      }

      else
      {
        v31 = *v28;
      }

      OUTLINED_FUNCTION_4_5(v31);
      *v29++ = v32;

      v28 += 4;
      --v30;
    }

    while (v30);
  }

  v38(v25, v27, v9, v7, v35, v36, v37);
  (*(v21 + 8))(v25, v7);
  (*(v34 + 8))(v19, v39);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1AE879F04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_3(v6);
  *v7 = v8;
  v7[1] = sub_1AE86646C;

  return sub_1AE878EE0(a1, v3, v4, v5);
}

unint64_t sub_1AE879FBC()
{
  result = qword_1EB5E2B80;
  if (!qword_1EB5E2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2B80);
  }

  return result;
}

uint64_t sub_1AE87A024(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AE87A11C;

  return v6(a1);
}

uint64_t sub_1AE87A11C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;

  OUTLINED_FUNCTION_10();

  return v3();
}

uint64_t sub_1AE87A200(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x1EEE69430](v2 > 1);
  }

  return result;
}

uint64_t sub_1AE87A22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E28B0, &unk_1AE87EE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE87A294()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1AE87A32C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

void sub_1AE87A3DC()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E28B0, &unk_1AE87EE10);
  OUTLINED_FUNCTION_1_1(v6);
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  sub_1AE87C378(v3, v18 - v8, &qword_1EB5E28B0, &unk_1AE87EE10);
  v10 = sub_1AE87D810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v10);

  if (EnumTagSinglePayload == 1)
  {
    sub_1AE858478(v9, &qword_1EB5E28B0, &unk_1AE87EE10);
  }

  else
  {
    sub_1AE87D800();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v12 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = sub_1AE87D7C0();
    v15 = v14;
    swift_unknownObjectRelease();
    if (v5)
    {
LABEL_6:
      v16 = sub_1AE87D700() + 32;

      if (v15 | v13)
      {
        v19[0] = 0;
        v19[1] = 0;
        v17 = v19;
        v19[2] = v13;
        v19[3] = v15;
      }

      else
      {
        v17 = 0;
      }

      v18[1] = 7;
      v18[2] = v17;
      v18[3] = v16;
      OUTLINED_FUNCTION_26_1();

      sub_1AE858478(v3, &qword_1EB5E28B0, &unk_1AE87EE10);

      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_1AE858478(v3, &qword_1EB5E28B0, &unk_1AE87EE10);
  if (v15 | v13)
  {
    v19[4] = 0;
    v19[5] = 0;
    v19[6] = v13;
    v19[7] = v15;
  }

  OUTLINED_FUNCTION_26_1();
LABEL_14:
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1AE87A66C(char a1)
{
  sub_1AE87DC60();
  MEMORY[0x1B2709080](a1 & 1);
  return sub_1AE87DC80();
}

void sub_1AE87A72C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1AE85B104(v1);
}

void (*sub_1AE87A75C(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_view;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1AE87A7E0;
}

void sub_1AE87A7E0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1AE85B164();
  }

  free(v3);
}

uint64_t sub_1AE87A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BC0, &qword_1AE87F8A0);
  v5[7] = swift_task_alloc();
  sub_1AE87D7F0();
  v5[8] = sub_1AE87D7E0();
  v7 = sub_1AE87D7C0();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AE87A934, v7, v6);
}

uint64_t sub_1AE87A934()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  v4 = __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1AE87D370();
  v0[11] = sub_1AE87D360();
  OUTLINED_FUNCTION_16_2(MEMORY[0x1E695A698]);
  v9 = v5;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1AE87AA14;
  v7 = v0[7];

  return v9(v7, v4, v2, v3);
}

uint64_t sub_1AE87AA14()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1AE87ABE8;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1AE87AB18;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1AE87AB18()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = sub_1AE87D280();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_donateIdentifier;
  swift_beginAccess();
  sub_1AE87C328(v1, v2 + v4, &unk_1EB5E2BC0, &qword_1AE87F8A0);
  swift_endAccess();

  OUTLINED_FUNCTION_10();

  return v5();
}

uint64_t sub_1AE87ABE8()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t sub_1AE87AC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1AE87D7F0();
  v4[3] = sub_1AE87D7E0();
  v6 = sub_1AE87D7C0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1AE87ACF0, v6, v5);
}

uint64_t sub_1AE87ACF0()
{
  OUTLINED_FUNCTION_9();
  sub_1AE87D370();
  *(v0 + 48) = sub_1AE87D360();
  OUTLINED_FUNCTION_16_2(MEMORY[0x1E695A6A0]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_0(v1);

  return v3(v2);
}

uint64_t sub_1AE87AD94()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_1AE87AEF4;
  }

  else
  {

    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_1AE87AE98;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1AE87AE98()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t sub_1AE87AEF4()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t sub_1AE87AF5C()
{
  OUTLINED_FUNCTION_18();
  v0 = sub_1AE87D280();
  OUTLINED_FUNCTION_1_1(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_3(v1);
  *v2 = v3;
  v2[1] = sub_1AE86646C;
  v4 = OUTLINED_FUNCTION_23();

  return sub_1AE87AC58(v4, v5, v6, v7);
}

uint64_t sub_1AE87B030()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_3(v2);
  *v3 = v4;
  v3[1] = sub_1AE878334;
  v5 = OUTLINED_FUNCTION_23();

  return sub_1AE87A864(v5, v6, v7, v1, v8);
}

void UIAppIntentInteraction.init<A>(intent:perform:suggestedIntent:)()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v25 = v6;
  v27 = v7;
  v9 = v8;
  v10 = sub_1AE87CCD0();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = &v0[OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_suggestedIntent];
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_donateIdentifier;
  v19 = sub_1AE87D280();
  OUTLINED_FUNCTION_22_2(&v1[v18], v20, v21, v19);
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_forSuggestion] = 1;
  v26 = v9;
  sub_1AE859E04(v9, v27);
  sub_1AE87CCB0();
  v22 = OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_viewActionNode;
  (*(v12 + 32))(&v1[OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_viewActionNode], v16, v10);
  v29[3] = v5;
  v29[4] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  v24 = *(v5 - 8);
  (*(v24 + 16))(boxed_opaque_existential_1, v25, v5);
  swift_beginAccess();
  sub_1AE87C328(v29, v17, &unk_1EB5E2B60, &unk_1AE87F7F0);
  swift_endAccess();
  sub_1AE87CE70();
  sub_1AE87CE50();
  (*(v12 + 16))(v16, &v1[v22], v10);
  sub_1AE87CCC0();
  (*(v12 + 8))(v16, v10);
  sub_1AE87CE40();

  v28.receiver = v1;
  v28.super_class = type metadata accessor for UIAppIntentInteraction(0);
  objc_msgSendSuper2(&v28, sel_init);
  sub_1AE85AD7C(v26, v27);
  (*(v24 + 8))(v25, v5);
  OUTLINED_FUNCTION_19_0();
}

void UIAppIntentInteraction.__deallocating_deinit()
{
  OUTLINED_FUNCTION_20_0();
  v1 = sub_1AE87CCD0();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = sub_1AE87D010();
  OUTLINED_FUNCTION_5();
  v72 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  v71 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E28B0, &unk_1AE87EE10);
  OUTLINED_FUNCTION_1_1(v13);
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BC0, &qword_1AE87F8A0);
  OUTLINED_FUNCTION_1_1(v16);
  OUTLINED_FUNCTION_20();
  MEMORY[0x1EEE9AC00](v17);
  v77 = (&v67 - v18);
  v19 = sub_1AE87D280();
  OUTLINED_FUNCTION_5();
  v75 = v20;
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v73 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v74 = &v67 - v25;
  if (qword_1ED78F360 != -1)
  {
    swift_once();
  }

  v26 = sub_1AE87D5F0();
  __swift_project_value_buffer(v26, qword_1ED78F448);
  v27 = v0;
  v28 = sub_1AE87D5D0();
  v29 = sub_1AE87D8D0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v70 = v1;
    v31 = v30;
    v68 = swift_slowAlloc();
    v69 = v8;
    v81[0] = v68;
    *v31 = 136315138;
    sub_1AE87CCC0();
    v32 = sub_1AE87DCA0();
    v34 = v27;
    v35 = v19;
    v36 = v7;
    v37 = v3;
    v38 = sub_1AE85AB3C(v32, v33, v81);

    *(v31 + 4) = v38;
    v3 = v37;
    v7 = v36;
    v19 = v35;
    v27 = v34;
    _os_log_impl(&dword_1AE855000, v28, v29, "AppIntent %s unassociated from view", v31, 0xCu);
    v39 = v68;
    __swift_destroy_boxed_opaque_existential_0(v68);
    v8 = v69;
    MEMORY[0x1B2709710](v39, -1, -1);
    v40 = v31;
    v1 = v70;
    MEMORY[0x1B2709710](v40, -1, -1);
  }

  if (*(v27 + OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_forSuggestion) == 1)
  {
    v41 = OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_donateIdentifier;
    OUTLINED_FUNCTION_7_1(v27 + OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_donateIdentifier, v81);
    v42 = v77;
    sub_1AE87C378(v27 + v41, v77, &unk_1EB5E2BC0, &qword_1AE87F8A0);
    if (__swift_getEnumTagSinglePayload(v42, 1, v19) == 1)
    {
      sub_1AE858478(v42, &unk_1EB5E2BC0, &qword_1AE87F8A0);
    }

    else
    {
      v57 = v74;
      v56 = v75;
      v58 = *(v75 + 32);
      v58(v74, v42, v19);
      v59 = sub_1AE87D810();
      OUTLINED_FUNCTION_22_2(v76, v60, v61, v59);
      v62 = v73;
      (*(v56 + 16))(v73, v57, v19);
      v63 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v64 = v19;
      v65 = swift_allocObject();
      *(v65 + 16) = 0;
      *(v65 + 24) = 0;
      v58((v65 + v63), v62, v64);
      OUTLINED_FUNCTION_15_2();
      sub_1AE87A3DC();

      (*(v56 + 8))(v57, v64);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1(v27 + OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_view, v81);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v44 = Strong;
      v80 = Strong;
      sub_1AE857B54();
      OUTLINED_FUNCTION_6_4();
      sub_1AE85BE9C(v45, v46, &protocol conformance descriptor for UIView);
      v47 = sub_1AE87D300();

      if (v47)
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BB0, &unk_1AE87F890);
        v49 = v71;
        v77 = (v71 + *(v48 + 48));
        (*(v3 + 16))(v71, v27 + OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_viewActionNode, v1);
        v50 = swift_unknownObjectWeakLoadStrong();
        v78 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2BD0, &qword_1AE87F8D8);
        OUTLINED_FUNCTION_6_4();
        sub_1AE85BE9C(v51, v52, MEMORY[0x1E69E81B8]);
        v53 = sub_1AE87DA00();

        v54 = v77;
        *v77 = v53;
        *(v54 + 8) = 0;
        v55 = v72;
        (*(v72 + 104))(v49, *MEMORY[0x1E695A0A8], v8);
        sub_1AE87D210();

        (*(v55 + 8))(v49, v8);
      }
    }

    sub_1AE87CE70();
    sub_1AE87CE50();
    (*(v3 + 16))(v7, v27 + OBJC_IVAR____TtC17_AppIntents_UIKit22UIAppIntentInteraction_viewActionNode, v1);
    sub_1AE87CCC0();
    (*(v3 + 8))(v7, v1);
    sub_1AE87CE30();
  }

  v66 = type metadata accessor for UIAppIntentInteraction(0);
  v79.receiver = v27;
  v79.super_class = v66;
  objc_msgSendSuper2(&v79, sel_dealloc);
  OUTLINED_FUNCTION_19_0();
}

uint64_t sub_1AE87BB18()
{
  OUTLINED_FUNCTION_9();
  sub_1AE87D370();
  *(v0 + 24) = sub_1AE87D360();
  OUTLINED_FUNCTION_16_2(MEMORY[0x1E695A6A0]);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_18_0(v1);

  return v3(v2);
}

uint64_t sub_1AE87BBBC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE87BCDC, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_10();

    return v7();
  }
}

uint64_t sub_1AE87BCDC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t objectdestroyTm()
{
  v1 = sub_1AE87D280();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1AE87BDF0()
{
  OUTLINED_FUNCTION_18();
  v0 = sub_1AE87D280();
  OUTLINED_FUNCTION_1_1(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_3(v1);
  *v2 = v3;
  v2[1] = sub_1AE878334;
  v4 = OUTLINED_FUNCTION_23();

  return sub_1AE87BAF8(v4, v5, v6, v7);
}

id UIAppIntentInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t getEnumTagSinglePayload for ViewIntentError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewIntentError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AE87C2D4()
{
  result = qword_1EB5E2BE0;
  if (!qword_1EB5E2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2BE0);
  }

  return result;
}

uint64_t sub_1AE87C328(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_27_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1AE87C378(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_27_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1AE87C408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1AE87CF80();
  swift_getAssociatedConformanceWitness();
  AppEntity.copyToPasteboard(_:localOnly:expirationDate:)(a1, 0, v12, AssociatedTypeWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

void AppEntity.copyToPasteboard(_:localOnly:expirationDate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v21 = sub_1AE87C9C8(v4, v19, v20);
  if (v21)
  {
    v47 = v16;
    v48 = v21;
    v49 = a1;
    if (qword_1ED78F360 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED78F360);
    }

    v22 = sub_1AE87D5F0();
    __swift_project_value_buffer(v22, qword_1ED78F448);
    v23 = *(v9 + 16);
    v23(v18, v4, a4);
    v24 = sub_1AE87D5D0();
    v25 = sub_1AE87D900();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v46 = v5;
      v27 = v26;
      v45 = swift_slowAlloc();
      v50 = v45;
      *v27 = 136315138;
      v23(v47, v18, a4);
      v28 = sub_1AE87D6F0();
      v30 = v29;
      (*(v9 + 8))(v18, a4);
      v31 = sub_1AE85AB3C(v28, v30, &v50);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1AE855000, v24, v25, "Putting content for %s on pasteboard", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      (*(v9 + 8))(v18, a4);
    }

    sub_1AE87CBF8();
    v42 = sub_1AE87D760();

    [v49 setItemProviders:v42 localOnly:0 expirationDate:0];
  }

  else
  {
    if (qword_1ED78F360 != -1)
    {
      OUTLINED_FUNCTION_2_0(&qword_1ED78F360);
    }

    v32 = sub_1AE87D5F0();
    __swift_project_value_buffer(v32, qword_1ED78F448);
    v33 = *(v9 + 16);
    v33(v13, v4, a4);
    v34 = sub_1AE87D5D0();
    v35 = sub_1AE87D8E0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v16;
      v37 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v37 = 136315138;
      v33(v36, v13, a4);
      v38 = sub_1AE87D6F0();
      v40 = v39;
      (*(v9 + 8))(v13, a4);
      v41 = sub_1AE85AB3C(v38, v40, &v50);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_1AE855000, v34, v35, "%s does not support NSItemProvider", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      (*(v9 + 8))(v13, a4);
    }

    sub_1AE87CBA4();
    swift_allocError();
    *v43 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1AE87C9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2C60, &qword_1AE87FA20);
  OUTLINED_FUNCTION_2_4();
  if (swift_dynamicCast())
  {
    v9 = [v13 itemProvidersForActivityItemsConfiguration];
    sub_1AE87CBF8();
    v10 = sub_1AE87D770();
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E2C68, &qword_1AE87FA28);
    OUTLINED_FUNCTION_2_4();
    if (swift_dynamicCast())
    {
      sub_1AE85C918(&v13, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E2C70, &qword_1AE87F640);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AE87F1C0;
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      *(v10 + 32) = sub_1AE87CFF0();
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {
      v10 = 0;
    }
  }

  (*(v5 + 8))(v8, a3);
  return v10;
}

unint64_t sub_1AE87CBA4()
{
  result = qword_1EB5E2BF0;
  if (!qword_1EB5E2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E2BF0);
  }

  return result;
}

unint64_t sub_1AE87CBF8()
{
  result = qword_1EB5E26F8;
  if (!qword_1EB5E26F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E26F8);
  }

  return result;
}