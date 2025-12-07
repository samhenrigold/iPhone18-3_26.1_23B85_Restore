uint64_t sub_1BC894564()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  *v4 = *v1;
  v3[49] = v0;

  v5 = v2[34];
  v6 = v2[32];
  v7 = v2[31];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v3[52] = v9;
  }

  else
  {
    v3[50] = v9;
    v3[51] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v5, v7);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BC89470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_2();
  v50 = *MEMORY[0x1E69E9840];
  v19 = v16[49];
  v20 = v16[46];
  v21 = v16[33];
  sub_1BC894DAC(v16[24]);
  OUTLINED_FUNCTION_66_2();
  sub_1BC7D9730(0, &unk_1EDC1DDA0, 0x1E6983268);
  v22 = OUTLINED_FUNCTION_29();
  v20(v22);
  v23 = sub_1BC894BF0(v17, v18, v21, 0);
  if (v19)
  {
    v24 = v16[50];
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
    }

    OUTLINED_FUNCTION_37_0(v16[45], qword_1EDC2B208);
    v25 = v19;
    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F81E4();

    if (OUTLINED_FUNCTION_37_8())
    {
      OUTLINED_FUNCTION_9();
      v28 = swift_slowAlloc();
      v29 = OUTLINED_FUNCTION_32_3();
      *v28 = 138543362;
      v30 = v19;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_1BC7A3000, v26, v27, "Got an error while converting screened audio message. Error: %{public}@", v28, 0xCu);
      sub_1BC862F74(v29, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v32 = v16[35];
    v33 = v16[31];

    v24(v32, v33);
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v34 = v23;
    v35 = v16[50];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BC904010;
    v47 = v36;
    *(v36 + 32) = v34;
    v37 = OUTLINED_FUNCTION_81_0();
    v35(v37);
  }

  v48 = v16[30];
  v49 = v16[29];

  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_32_7();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, a12, v50, a14, a15, a16);
}

uint64_t sub_1BC8949D4()
{
  v1 = v0[52];
  v2 = v0[49];
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_1EDC1E1A0);
  }

  OUTLINED_FUNCTION_37_0(v0[45], qword_1EDC2B208);
  v3 = v2;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();

  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_32_3();
    *v5 = 138543362;
    v7 = v2;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  v14 = OUTLINED_FUNCTION_81_0();
  v1(v14);

  OUTLINED_FUNCTION_96();
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

id sub_1BC894BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BC8F7BE4();

  v7 = sub_1BC8F6F44();
  if (a4)
  {
    v8 = sub_1BC8F7A94();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1BC8F7014();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1BC8F6EA4();

    swift_willThrow();
    v15 = sub_1BC8F7014();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  return v9;
}

uint64_t sub_1BC894DAC(uint64_t a1)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v4 = *(a1 + v3);
  if (v4 == 2)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1BC8F85A4();

    strcpy(v19, "video-message-");
    v19[15] = -18;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v5 = OUTLINED_FUNCTION_51_7();
    v6(v5);
    v7 = sub_1BC8F7204();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_45_1();
    v11(v10);
    MEMORY[0x1BFB29120](v7, v9);

    return *v19;
  }

  if (v4 == 1)
  {
LABEL_7:
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v14 = OUTLINED_FUNCTION_51_7();
    v15(v14);
    v12 = sub_1BC8F7204();
    v16 = OUTLINED_FUNCTION_45_1();
    v17(v16);
    return v12;
  }

  if (!*(a1 + v3))
  {
    v13 = a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if ((*(v13 + 4) & 1) == 0)
    {
      *v19 = *v13;
      return sub_1BC8F8A54();
    }

    goto LABEL_7;
  }

  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

uint64_t sub_1BC895034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC7B0248;

  return sub_1BC895374();
}

uint64_t sub_1BC8950D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1BC87C84C(a3, v24 - v10, &qword_1EBCF63D0, &qword_1BC902140);
  v12 = sub_1BC8F7FC4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BC862F74(v11, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BC8F7F54();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BC8F7CA4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
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

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1BC895374()
{
  OUTLINED_FUNCTION_5();
  v1[29] = v2;
  v1[30] = v0;
  v1[31] = *v0;
  v3 = sub_1BC8F7264();
  v1[32] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[33] = v4;
  v1[34] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC895470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v13 = v12[30];
  os_unfair_lock_lock(v13 + 8);

  os_unfair_lock_unlock(v13 + 8);
  sub_1BC8965A8();
  v15 = v14;

  if (v15)
  {
    v16 = sub_1BC8967E4(v12[29]);
    v12[35] = v16;
    v17 = sub_1BC8968A4(v16);
    v12[36] = v17;
    v12[2] = v12;
    v12[3] = sub_1BC8956AC;
    v18 = swift_continuation_init();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
    OUTLINED_FUNCTION_20_12(v19);
    v12[11] = 1107296256;
    OUTLINED_FUNCTION_21_14();
    v12[13] = v20;
    v12[14] = v18;
    [v17 donateInteractionWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v12 + 2, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  else
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
    }

    v28 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v28, qword_1EDC2B3D8);
    v29 = sub_1BC8F7714();
    v30 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v30))
    {
      v31 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v31);
      OUTLINED_FUNCTION_4();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_18_12();
    }

    OUTLINED_FUNCTION_27();

    return v37();
  }
}

uint64_t sub_1BC8956AC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC8957D8()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
  }

  v1 = v0[29];
  v2 = sub_1BC8F7734();
  v0[38] = OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B3D8);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v5 = v0[29];
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    v7 = OUTLINED_FUNCTION_32_3();
    *v6 = 138543362;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1BC862F74(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v14 = swift_task_alloc();
  v0[39] = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_17_10(v14);
  OUTLINED_FUNCTION_28_9(v15);

  return sub_1BC8912F4();
}

uint64_t sub_1BC895954()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = v3;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC895A70()
{
  *(v0 + 216) = 0;
  v1 = [*(v0 + 320) contentByUpdatingWithProvider:*(v0 + 280) error:v0 + 216];
  *(v0 + 328) = v1;
  v2 = *(v0 + 216);
  if (v1)
  {
    v3 = v1;
    v4 = *(v0 + 232);
    sub_1BC7D9730(0, &unk_1EDC1DDD0, 0x1E6983298);
    v5 = v2;
    v6 = sub_1BC894DAC(v4);
    *(v0 + 336) = sub_1BC891064(v6, v7, v3, 0);
    *(v0 + 344) = sub_1BC896904(v4);
    v8 = swift_task_alloc();
    *(v0 + 352) = v8;
    *v8 = v0;
    v8[1] = sub_1BC895E1C;
    v9 = OUTLINED_FUNCTION_29();

    return sub_1BC8969EC(v9, v10, 15);
  }

  else
  {
    v12 = v2;
    v13 = sub_1BC8F6EA4();

    swift_willThrow();
    v14 = v13;
    v15 = sub_1BC8F7714();
    sub_1BC8F81E4();

    v16 = OUTLINED_FUNCTION_137();
    v17 = *(v0 + 280);
    v18 = *(v0 + 288);
    if (v16)
    {
      OUTLINED_FUNCTION_9();
      v38 = v19;
      swift_slowAlloc();
      v39 = OUTLINED_FUNCTION_33();
      *v17 = 136446210;
      swift_getErrorValue();
      v20 = *(v0 + 144);
      v21 = *(v0 + 152);
      sub_1BC8F83F4();
      OUTLINED_FUNCTION_0();
      v22 = OUTLINED_FUNCTION_47_3();
      OUTLINED_FUNCTION_10();
      (*(v23 + 16))();
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v24, v25, v26, v21);
      sub_1BC8073F0(v22, v21);
      v27 = OUTLINED_FUNCTION_56_5();
      v28(v27);

      v29 = OUTLINED_FUNCTION_45_2();
      sub_1BC7A9A4C(v29, v30, v31);
      OUTLINED_FUNCTION_82_3();

      *(v17 + 4) = v20;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_18_12();
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
    }

    OUTLINED_FUNCTION_27();

    return v37();
  }
}

uint64_t sub_1BC895E1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 360) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC895F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_83_3();
  v46 = *MEMORY[0x1E69E9840];
  v21 = v20[42];
  v40 = v20[41];
  v41 = v20[43];
  v42 = v20[40];
  v43 = v20[36];
  v44 = v20[35];
  v22 = v20[33];
  v23 = v20[34];
  v24 = v20[32];
  v25 = v20[29];
  v26 = v20[30];
  os_unfair_lock_lock((v26 + 32));
  v27 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v22 + 16))(v23, v25 + v27, v24);
  v28 = [v21 identifier];
  sub_1BC8F7C24();
  OUTLINED_FUNCTION_66_2();

  OUTLINED_FUNCTION_13();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v26 + 40);
  OUTLINED_FUNCTION_60_6();
  *(v26 + 40) = v45;
  v29 = OUTLINED_FUNCTION_81_0();
  v30(v29);
  os_unfair_lock_unlock((v26 + 32));

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_53();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v21, v40, v41, v42, v43, v44, v45, v46, a18, a19, a20);
}

uint64_t sub_1BC896100(uint64_t a1)
{
  swift_willThrow();
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
  }

  v2 = v1[37];
  v3 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3D8);
  v4 = v2;
  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F81F4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v1[37];
  if (v7)
  {
    OUTLINED_FUNCTION_9();
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_32_3();
    *v9 = 138543362;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BC7A3000, v5, v6, "Failed to donate interaction: %{public}@", v9, 0xCu);
    sub_1BC862F74(v10, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
  }

  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
  }

  v13 = v1[29];
  v1[38] = OUTLINED_FUNCTION_37_0(v3, qword_1EDC2B3D8);
  v14 = v13;
  v15 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v16 = v1[29];
    OUTLINED_FUNCTION_9();
    v17 = swift_slowAlloc();
    v18 = OUTLINED_FUNCTION_32_3();
    *v17 = 138543362;
    *(v17 + 4) = v16;
    *v18 = v16;
    v19 = v16;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    sub_1BC862F74(v18, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v25 = swift_task_alloc();
  v1[39] = v25;
  *v25 = v1;
  OUTLINED_FUNCTION_17_10(v25);
  OUTLINED_FUNCTION_28_9(v26);

  return sub_1BC8912F4();
}

uint64_t sub_1BC896398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_2();
  v54 = *MEMORY[0x1E69E9840];
  v17 = *(v16 + 360);
  v19 = *(v16 + 336);
  v18 = *(v16 + 344);
  v20 = *(v16 + 232);
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = sub_1BC8F7714();
  sub_1BC8F81E4();

  v25 = OUTLINED_FUNCTION_137();
  v26 = *(v16 + 360);
  v28 = *(v16 + 336);
  v27 = *(v16 + 344);
  v30 = *(v16 + 320);
  v29 = *(v16 + 328);
  v31 = *(v16 + 280);
  v32 = *(v16 + 288);
  if (v25)
  {
    a11 = *(v16 + 320);
    v33 = *(v16 + 232);
    swift_slowAlloc();
    a12 = v31;
    a10 = v32;
    v34 = OUTLINED_FUNCTION_33();
    *v31 = 138413058;
    *(v31 + 4) = v28;
    *(v31 + 12) = 2114;
    *(v31 + 14) = v33;
    *v34 = v28;
    v34[1] = v33;
    OUTLINED_FUNCTION_76_5(v34, 2114);
    v35 = v33;
    v36 = v28;
    v37 = v27;
    v38 = v26;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 34) = v39;
    v34[3] = v39;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v40, v41, v42, v43, v44, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32_7();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, v54, a14, a15, a16);
}

void sub_1BC8965A8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v19 = *(v7 + v18);
  if (v19 == 2)
  {
    v20 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v10 + 16))(v14, v7 + v20, v8);
    sub_1BC8E7258(v14, v5);
    OUTLINED_FUNCTION_55_3();
    v22 = v14;
    goto LABEL_9;
  }

  if (v19 == 1)
  {
    if ([v3 phoneLargeFormatUIEnabled])
    {
      if ([v3 LVMEverywhere])
      {
        [v1 deviceType];
      }
    }

LABEL_11:
    OUTLINED_FUNCTION_24();
    return;
  }

  if (!*(v7 + v18))
  {
    v20 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v10 + 16))(v17, v7 + v20, v8);
    sub_1BC8E7258(v17, v5);
    OUTLINED_FUNCTION_55_3();
    v22 = v17;
LABEL_9:
    v21(v22, v8);
    if (v7)
    {
      sub_1BC8997EC(v5, v7, v20, v3);
    }

    goto LABEL_11;
  }

  v23 = *(v7 + v18);
  sub_1BC8F8B04();
  __break(1u);
}

id sub_1BC8967E4(uint64_t a1)
{
  sub_1BC89918C();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC904010;
  *(v4 + 32) = v3;
  v5 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(a1 + v5) == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696EA60]);
  OUTLINED_FUNCTION_15();
  return sub_1BC8995A8(v8, v9, v10, 3, v4, v6, v11);
}

id sub_1BC8968A4(void *a1)
{
  sub_1BC7D9730(0, &qword_1EDC1DE60, 0x1E696E8B8);
  v2 = sub_1BC89935C(a1, 0);
  [v2 setDirection_];
  return v2;
}

id sub_1BC896904(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v2 = *v1 == 0xD00000000000003BLL && 0x80000001BC90BE00 == v1[1];
  if (v2 || (sub_1BC8F8AA4() & 1) != 0)
  {
    if (qword_1EDC1EED8 != -1)
    {
      OUTLINED_FUNCTION_25_12(&qword_1EDC1EED8);
    }

    v3 = &qword_1EDC1EEE8;
  }

  else
  {
    if (qword_1EDC1EEF0 != -1)
    {
      OUTLINED_FUNCTION_24_12(&qword_1EDC1EEF0);
    }

    v3 = &qword_1EDC1EF00;
  }

  v4 = *v3;

  return v4;
}

uint64_t sub_1BC8969EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC896A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  [*(v12 + 152) setDestinations_];
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
  }

  v14 = *(v12 + 144);
  v13 = *(v12 + 152);
  v15 = sub_1BC8F7734();
  *(v12 + 168) = OUTLINED_FUNCTION_37_0(v15, qword_1EDC2B3D8);
  v16 = v13;
  v17 = v14;
  v18 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_137())
  {
    v19 = *(v12 + 144);
    OUTLINED_FUNCTION_8_17();
    v20 = swift_slowAlloc();
    OUTLINED_FUNCTION_49_9(v20, 5.778e-34);
    v21 = v19;
    OUTLINED_FUNCTION_87_3(&dword_1BC7A3000, v22, v23, "MessageStore: Adding %@ to %{public}@");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  v25 = *(v12 + 144);
  v24 = *(v12 + 152);

  *(v12 + 16) = v12;
  *(v12 + 24) = sub_1BC896C00;
  v26 = swift_continuation_init();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  OUTLINED_FUNCTION_20_12(v27);
  *(v12 + 88) = 1107296256;
  OUTLINED_FUNCTION_21_14();
  *(v12 + 104) = v28;
  *(v12 + 112) = v26;
  [v25 addNotificationRequest:v24 withCompletionHandler:v12 + 80];

  return MEMORY[0x1EEE6DEC8](v12 + 16, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_1BC896C00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC896CFC()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_137())
  {
    v5 = *(v0 + 144);
    OUTLINED_FUNCTION_8_17();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_49_9(v6, 5.778e-34);
    v7 = v5;
    OUTLINED_FUNCTION_87_3(&dword_1BC7A3000, v8, v9, "MessageStore: Added %@ to %{public}@");
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_1BC896E0C()
{
  OUTLINED_FUNCTION_32();
  swift_willThrow();
  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC896E90(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_29();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_25(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_61();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v3;
  v16[5] = a1;

  v17 = a1;
  sub_1BC8950D0(0, 0, v11, a3, v16);

  return sub_1BC862F74(v11, &qword_1EBCF63D0, &qword_1BC902140);
}

uint64_t sub_1BC896F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC7B0168;

  return sub_1BC897028();
}

uint64_t sub_1BC897028()
{
  OUTLINED_FUNCTION_5();
  v1[32] = v2;
  v1[33] = v0;
  v1[34] = *v0;
  v3 = sub_1BC8F7264();
  v1[35] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[36] = v4;
  v1[37] = OUTLINED_FUNCTION_38_6();
  v1[38] = swift_task_alloc();
  v5 = sub_1BC8F71E4();
  v1[39] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[40] = v6;
  v1[41] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC897150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_83_3();
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
  }

  v21 = *(v20 + 256);
  v22 = sub_1BC8F7734();
  v23 = __swift_project_value_buffer(v22, qword_1EDC2B3D8);
  *(v20 + 336) = v23;
  v24 = v21;
  v92 = v23;
  v25 = sub_1BC8F7714();
  sub_1BC8F8204();

  if (OUTLINED_FUNCTION_37_8())
  {
    v26 = *(v20 + 256);
    OUTLINED_FUNCTION_9();
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_32_3();
    *v27 = 138543362;
    *(v27 + 4) = v26;
    *v28 = v26;
    v29 = v26;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    sub_1BC862F74(v28, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_18_12();
  }

  v35 = *(v20 + 320);
  v36 = *(v20 + 328);
  v37 = *(v20 + 304);
  v38 = *(v20 + 312);
  v40 = *(v20 + 280);
  v39 = *(v20 + 288);
  v41 = *(v20 + 256);

  v97 = sub_1BC896904(v41);
  *(v20 + 344) = v97;
  v42 = [objc_allocWithZone(MEMORY[0x1E6983220]) init];
  *(v20 + 352) = v42;
  v43 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (*(v35 + 16))(v36, v41 + v43, v38);
  v44 = sub_1BC8F7174();
  (*(v35 + 8))(v36, v38);
  [v42 setDate_];

  OUTLINED_FUNCTION_13();
  swift_beginAccess();

  v45 = sub_1BC8F7BE4();

  [v42 setThreadIdentifier_];

  OUTLINED_FUNCTION_36_11();
  *(v20 + 240) = 0xD000000000000011;
  *(v20 + 248) = v46;
  v47 = MEMORY[0x1E69E6158];
  sub_1BC8F8544();
  v48 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  *(v20 + 360) = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v49 = *(v39 + 16);
  *(v20 + 368) = v49;
  *(v20 + 376) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v94 = v49;
  v95 = v48;
  v49(v37, v41 + v48, v40);
  v50 = sub_1BC8F7204();
  v52 = v51;
  v53 = *(v39 + 8);
  v39 += 8;
  *(v20 + 384) = v53;
  *(v20 + 392) = v39 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v54 = OUTLINED_FUNCTION_45_2();
  v96 = v39;
  v93 = v55;
  (v55)(v54);
  *(v20 + 80) = v47;
  *(v20 + 56) = v50;
  *(v20 + 64) = v52;
  v56 = [v42 userInfo];
  OUTLINED_FUNCTION_30_11();
  v57 = sub_1BC8F7AA4();

  sub_1BC7F0E58((v20 + 56), (v20 + 88));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BC83D6F0((v20 + 88), v20 + 16, isUniquelyReferenced_nonNull_native);
  sub_1BC8037DC(v20 + 16);
  OUTLINED_FUNCTION_30_11();
  v59 = sub_1BC8F7A94();

  [v42 setUserInfo_];

  v60 = [objc_opt_self() soundWithAlertType_];
  [v42 setSound_];

  v61 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v62 = *(v41 + v61);
  if (!*(v41 + v61))
  {
    if (qword_1EDC1EF18 != -1)
    {
      OUTLINED_FUNCTION_1_24(&qword_1EDC1EF18);
    }

    OUTLINED_FUNCTION_19_16(0xD000000000000027, 0x80000001BC90D7D0);
    v78 = sub_1BC8F7BE4();

    [v42 setTitle_];

    v77 = 0xD00000000000002ALL;
    v76 = 0x80000001BC90D800;
    goto LABEL_19;
  }

  if (v62 == 2)
  {
    if (qword_1EDC1EF18 != -1)
    {
      OUTLINED_FUNCTION_1_24(&qword_1EDC1EF18);
    }

    OUTLINED_FUNCTION_19_16(0xD000000000000024, 0x80000001BC90D770);
    v75 = sub_1BC8F7BE4();

    [v42 setTitle_];

    v76 = 0x80000001BC90D7A0;
    v77 = 0xD000000000000027;
LABEL_19:
    OUTLINED_FUNCTION_19_16(v77, v76);
    v79 = sub_1BC8F7BE4();

    [v42 setSubtitle_];
    goto LABEL_20;
  }

  if (v62 == 1)
  {
    v63 = sub_1BC8F7714();
    v64 = sub_1BC8F8204();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = OUTLINED_FUNCTION_36();
      *v65 = 0;
      _os_log_impl(&dword_1BC7A3000, v63, v64, "MessageStore: Not posting notification for voicemail", v65, 2u);
      OUTLINED_FUNCTION_19_0();
    }

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_53();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, v92, v93, v94, v95, v96, v97, v57, a18, a19, a20);
  }

  v79 = sub_1BC8F7714();
  v90 = sub_1BC8F81E4();
  if (os_log_type_enabled(v79, v90))
  {
    v91 = OUTLINED_FUNCTION_36();
    *v91 = 0;
    _os_log_impl(&dword_1BC7A3000, v79, v90, "MessageStore: Unknown message type for notification request!", v91, 2u);
    OUTLINED_FUNCTION_6();
  }

LABEL_20:
  v80 = *(v20 + 296);
  v81 = *(v20 + 280);

  sub_1BC7D9730(0, &unk_1EDC1DDD0, 0x1E6983298);
  v94(v80, v41 + v95, v81);
  v82 = sub_1BC8F7204();
  v84 = v83;
  v93(v80, v81);
  *(v20 + 400) = sub_1BC891064(v82, v84, v42, 0);
  v85 = swift_task_alloc();
  *(v20 + 408) = v85;
  *v85 = v20;
  v85[1] = sub_1BC8978E8;
  OUTLINED_FUNCTION_53();

  return sub_1BC8969EC(v86, v87, v88);
}

uint64_t sub_1BC8978E8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 416) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8979E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_2();
  v17 = v16[50];
  v35 = v16[48];
  v36 = v16[49];
  v19 = v16[45];
  v18 = v16[46];
  v37 = v16[44];
  v38 = v16[43];
  v20 = v16[37];
  v21 = v16[35];
  v22 = v16[32];
  v23 = v16[33];
  os_unfair_lock_lock((v23 + 32));
  v18(v20, v22 + v19, v21);
  v24 = [v17 identifier];
  sub_1BC8F7C24();
  OUTLINED_FUNCTION_66_2();

  OUTLINED_FUNCTION_13();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v23 + 40);
  OUTLINED_FUNCTION_60_6();
  *(v23 + 40) = v39;
  v25 = OUTLINED_FUNCTION_81_0();
  v35(v25);
  os_unfair_lock_unlock((v23 + 32));

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32_7();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_1BC897B34()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 400);
  v3 = *(v0 + 344);
  v4 = *(v0 + 256);
  v5 = v2;
  v6 = v3;
  v7 = v1;
  v8 = sub_1BC8F7714();
  sub_1BC8F81E4();

  v9 = OUTLINED_FUNCTION_137();
  v10 = *(v0 + 416);
  v11 = *(v0 + 400);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  if (v9)
  {
    v14 = *(v0 + 256);
    swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_33();
    *v4 = 138413058;
    *(v4 + 1) = v11;
    *(v4 + 6) = 2114;
    *(v4 + 14) = v14;
    *v15 = v11;
    v15[1] = v14;
    OUTLINED_FUNCTION_76_5(v15, 2114);
    v16 = v14;
    v17 = v11;
    v18 = v12;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 34) = v20;
    v15[3] = v20;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v21, v22, v23, v24, v25, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v26();
}

void sub_1BC897D10()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v78 = v5;
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = *(v3 + 16);
  if (v9)
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
    }

    v10 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v10, qword_1EDC2B3D8);

    v11 = sub_1BC8F7714();
    v12 = sub_1BC8F8204();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_9();
      v13 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_28();
      v80 = v14;
      *v13 = 136446210;
      v15 = MEMORY[0x1BFB29280](v3, v79);
      v17 = sub_1BC7A9A4C(v15, v16, &v80);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1BC7A3000, v11, v12, "Removing posted notifications with recordUUIDs: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_6();
    }

    v18 = v3 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
    v76 = *(v78 + 72);
    v77 = *(v78 + 16);
    OUTLINED_FUNCTION_36_11();
    v75 = v19;
    v20 = MEMORY[0x1E69E7CC0];
    v73 = MEMORY[0x1E69E7CC0];
    v74 = v1;
    do
    {
      v77(v8, v18, v79);
      os_unfair_lock_lock((v1 + 32));
      v21 = *(v1 + 40);
      if (*(v21 + 16) && (v22 = sub_1BC83C928(), (v23 & 1) != 0))
      {
        v24 = (*(v21 + 56) + 32 * v22);
        v26 = *v24;
        v25 = v24[1];
        v27 = v24[2];
        v28 = v24[3];
      }

      else
      {
        v26 = 0;
        v25 = 0;
        v27 = 0;
        v28 = 0;
      }

      os_unfair_lock_unlock((v1 + 32));
      if (v25)
      {
        v29 = v27 == 0xD00000000000003BLL && v28 == v75;
        if (v29 || (sub_1BC8F8AA4() & 1) != 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BC7F6F9C(0, *(v20 + 16) + 1, 1, v20);
            v20 = v43;
          }

          v30 = v20;
          v31 = *(v20 + 16);
          v32 = v30;
          v33 = *(v30 + 24);
          if (v31 >= v33 >> 1)
          {
            v44 = OUTLINED_FUNCTION_74_3(v33);
            sub_1BC7F6F9C(v44, v45, v46, v32);
            v32 = v47;
          }

          v34 = OUTLINED_FUNCTION_75_2();
          v35(v34);
          *(v32 + 16) = v31 + 1;
          v36 = v32 + 16 * v31;
          v20 = v32;
          v8 = v1;
          *(v36 + 32) = v26;
          *(v36 + 40) = v25;
        }

        else
        {

          v37 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BC7F6F9C(0, *(v73 + 16) + 1, 1, v73);
            v73 = v48;
          }

          v39 = *(v73 + 16);
          v38 = *(v73 + 24);
          if (v39 >= v38 >> 1)
          {
            v49 = OUTLINED_FUNCTION_74_3(v38);
            sub_1BC7F6F9C(v49, v50, v51, v73);
            v73 = v52;
          }

          v40 = OUTLINED_FUNCTION_75_2();
          v41(v40);
          *(v73 + 16) = v39 + 1;
          v42 = v73 + 16 * v39;
          *(v42 + 32) = v26;
          *(v42 + 40) = v25;

          v20 = v37;
          v8 = v1;
        }

        v1 = v74;
      }

      else
      {
        (*(v78 + 8))(v8, v79);
      }

      v18 += v76;
      --v9;
    }

    while (v9);
    v53 = sub_1BC8F7714();
    v54 = sub_1BC8F8204();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_8_17();
      v80 = swift_slowAlloc();
      *v55 = 136446466;

      v57 = MEMORY[0x1E69E6158];
      v58 = MEMORY[0x1BFB29280](v56, MEMORY[0x1E69E6158]);
      v60 = v59;
      v61 = v20;

      v62 = sub_1BC7A9A4C(v58, v60, &v80);

      *(v55 + 4) = v62;
      *(v55 + 12) = 2082;
      v63 = v73;

      v65 = MEMORY[0x1BFB29280](v64, v57);

      v66 = OUTLINED_FUNCTION_45_2();
      sub_1BC7A9A4C(v66, v67, v68);
      OUTLINED_FUNCTION_82_3();

      *(v55 + 14) = v65;
      OUTLINED_FUNCTION_38_11(&dword_1BC7A3000, v69, v70, "Removing posted notifications. FaceTime: %{public}s, MobilePhone: %{public}s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_6();
    }

    else
    {
      v61 = v20;

      v63 = v73;
    }

    v71 = qword_1EDC1EEF0;

    if (v71 != -1)
    {
      OUTLINED_FUNCTION_24_12(&qword_1EDC1EEF0);
    }

    sub_1BC8982C0(v63, qword_1EDC1EF00);

    v72 = qword_1EDC1EED8;

    if (v72 != -1)
    {
      OUTLINED_FUNCTION_25_12(&qword_1EDC1EED8);
    }

    sub_1BC8982C0(v61, qword_1EDC1EEE8);

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC8982C0(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    if (qword_1EDC20740 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
    }

    v4 = sub_1BC8F7734();
    __swift_project_value_buffer(v4, qword_1EDC2B3D8);

    v5 = a2;
    v6 = sub_1BC8F7714();
    v7 = sub_1BC8F8204();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_8_17();
      v9 = OUTLINED_FUNCTION_32_3();
      v10 = OUTLINED_FUNCTION_28();
      v18 = v10;
      *v8 = 136315394;
      v11 = MEMORY[0x1BFB29280](a1, MEMORY[0x1E69E6158]);
      v13 = sub_1BC7A9A4C(v11, v12, &v18);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v5;
      v14 = v5;
      OUTLINED_FUNCTION_38_11(&dword_1BC7A3000, v15, v16, "Removing notifications with identifiers %s from %@");
      sub_1BC862F74(v9, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_6();
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_6();
    }

    v17 = sub_1BC8F7E34();
    [v5 removeDeliveredNotificationsWithIdentifiers_];
  }
}

void sub_1BC898480()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1BC8F7BE4();
  CFNotificationCenterAddObserver(v0, 0, sub_1BC8985FC, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_1BC898514()
{
  if (qword_1EDC20740 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC8F7734();
  __swift_project_value_buffer(v0, qword_1EDC2B3D8);
  v1 = sub_1BC8F7714();
  v2 = sub_1BC8F8204();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BC7A3000, v1, v2, "Exiting due to language change", v3, 2u);
    MEMORY[0x1BFB2AA50](v3, -1, -1);
  }

  return MEMORY[0x1EEE75030]();
}

void sub_1BC8985FC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_1BC898514();
}

uint64_t sub_1BC898698()
{
  swift_unknownObjectRelease();
  sub_1BC862F74(v0 + 40, &qword_1EBCF6288, &qword_1BC9068E8);
  return v0;
}

uint64_t sub_1BC8986D8()
{
  sub_1BC898698();
  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BC898738(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BC898778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BC8987C8(uint64_t a1, uint64_t a2)
{
  sub_1BC7B7A9C();
  v2 = sub_1BC8F8424();

  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1BC89883C()
{
  OUTLINED_FUNCTION_29_0();
  v83 = v1;
  v3 = v2;
  v85 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6278, &unk_1BC9068C0);
  v6 = OUTLINED_FUNCTION_25(v5);
  MEMORY[0x1EEE9AC00](v6);
  v82[1] = v82 - v7;
  if (qword_1EDC20740 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_1EDC20740);
  }

  v8 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v8, qword_1EDC2B3D8);
  v9 = v3;
  v10 = sub_1BC8F7714();
  v11 = sub_1BC8F8204();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_9();
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_28();
    v87[0] = v13;
    *v12 = 136315138;
    v14 = &v9[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_1BC7A9A4C(v15, v16, v87);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BC7A3000, v10, v11, "MessageStore: Looking up contact with matching handle: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC9067D0;
  v19 = *MEMORY[0x1E695C240];
  v20 = *MEMORY[0x1E695C2F0];
  *(v18 + 32) = *MEMORY[0x1E695C240];
  *(v18 + 40) = v20;
  v21 = *MEMORY[0x1E695C230];
  v22 = *MEMORY[0x1E695C310];
  *(v18 + 48) = *MEMORY[0x1E695C230];
  *(v18 + 56) = v22;
  v23 = v9;
  v24 = v19;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = sub_1BC8F7714();
  v29 = sub_1BC8F8204();

  v30 = os_log_type_enabled(v28, v29);
  v84 = v0;
  if (v30)
  {
    OUTLINED_FUNCTION_9();
    v31 = swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_28();
    v87[0] = v32;
    *v31 = 136315138;
    v33 = &v23[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v34 = *v33;
    v35 = v33[1];

    v36 = sub_1BC7A9A4C(v34, v35, v87);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1BC7A3000, v28, v29, "MessageStore: Searching contactStore for contacts matching handle string: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  v37 = v83[3];
  v38 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6280, &qword_1BC904170);
  OUTLINED_FUNCTION_61();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BC8FC230;
  v40 = &v23[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v41 = v40[1];
  *(v39 + 32) = *v40;
  *(v39 + 40) = v41;
  v42 = *(v38 + 32);

  v43 = v42(v39, v18, v37, v38);

  v44 = *v40;
  v45 = v40[1];

  sub_1BC8E73C0(v44, v45, v43);
  v47 = v46;

  if (v47)
  {
    if (sub_1BC7C0454(v47))
    {
      sub_1BC8E2358();
      if ((v47 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x1BFB29A00](0, v47);
      }

      else
      {
        v48 = *(v47 + 32);
      }

      v49 = v48;

      v50 = v49;
      v51 = sub_1BC8F7714();
      v52 = sub_1BC8F8204();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_8_17();
        v86[0] = swift_slowAlloc();
        *v53 = 136315394;
        v54 = [v50 givenName];
        v55 = sub_1BC8F7C24();
        v57 = v56;

        v58 = sub_1BC7A9A4C(v55, v57, v86);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2080;
        v59 = [v50 familyName];
        v60 = sub_1BC8F7C24();
        v62 = v61;

        v63 = sub_1BC7A9A4C(v60, v62, v86);

        *(v53 + 14) = v63;
        _os_log_impl(&dword_1BC7A3000, v51, v52, "MessageStore: Found contact: %s %s", v53, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9_0();
      }

      v64 = [v50 givenName];
      v84 = sub_1BC8F7C24();

      v65 = [v50 middleName];
      sub_1BC8F7C24();
      OUTLINED_FUNCTION_66_2();

      v66 = [v50 familyName];
      sub_1BC8F7C24();

      v67 = [v50 nickname];
      sub_1BC8F7C24();

      v68 = sub_1BC8F6E74();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v68);
      sub_1BC8F6E54();

      OUTLINED_FUNCTION_30_0();
      v75 = v68;
      goto LABEL_18;
    }
  }

  v76 = v23;
  v77 = sub_1BC8F7714();
  v78 = sub_1BC8F8204();

  if (os_log_type_enabled(v77, v78))
  {
    OUTLINED_FUNCTION_9();
    v79 = swift_slowAlloc();
    v80 = OUTLINED_FUNCTION_32_3();
    *v79 = 138543362;
    *(v79 + 4) = v76;
    *v80 = v76;
    v81 = v76;
    _os_log_impl(&dword_1BC7A3000, v77, v78, "MessageStore: No contacts found for message: %{public}@", v79, 0xCu);
    sub_1BC862F74(v80, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_6();
  }

  sub_1BC8F6E74();
  OUTLINED_FUNCTION_122();
LABEL_18:
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_24();
}

id sub_1BC89907C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  v3 = (a1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*v3 != 0xD00000000000003BLL || 0x80000001BC90BE00 != v3[1])
  {
    sub_1BC8F8AA4();
  }

  [v2 setAssumedIdentity_];
  swift_unknownObjectRelease();
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

  return v5;
}

void sub_1BC89918C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6278, &unk_1BC9068C0);
  v3 = OUTLINED_FUNCTION_25(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-1] - v8;
  v10 = sub_1BC89907C(v1);
  v25[3] = sub_1BC7D9730(0, &qword_1EDC1DE50, 0x1E695CE18);
  v25[4] = &off_1F3B3DF68;
  v25[0] = v10;
  v11 = v10;
  sub_1BC89883C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v12 = (v1 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();

  v13 = OUTLINED_FUNCTION_45_2();
  v15 = sub_1BC8987C8(v13, v14);
  v17 = *v12;
  v16 = v12[1];
  objc_allocWithZone(MEMORY[0x1E696E948]);

  sub_1BC8993B8(v17, v16, v15, v18);
  sub_1BC87C84C(v9, v6, &qword_1EBCF6278, &unk_1BC9068C0);
  v19 = objc_allocWithZone(MEMORY[0x1E696E940]);
  OUTLINED_FUNCTION_13();
  sub_1BC899424(v20, v21, v22, v23, 0, 0, 0, 0, 0);

  sub_1BC862F74(v9, &qword_1EBCF6278, &unk_1BC9068C0);
  OUTLINED_FUNCTION_24();
}

id sub_1BC89935C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

id sub_1BC8993B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v6 = sub_1BC8F7BE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 initWithValue:v6 type:a3];

  return v7;
}

id sub_1BC899424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v16 = sub_1BC8F6E74();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v16) != 1)
  {
    v17 = sub_1BC8F6E64();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_1BC8F7BE4();
  }

  else
  {
    v18 = 0;
  }

  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_8;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v19 = sub_1BC8F7BE4();

  if (!a9)
  {
    goto LABEL_10;
  }

LABEL_8:
  v20 = sub_1BC8F7BE4();

LABEL_11:
  v21 = [v10 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20];

  return v21;
}

id sub_1BC8995A8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  if (a5)
  {
    sub_1BC7D9730(0, &qword_1EDC1DD50, 0x1E696E940);
    v14 = sub_1BC8F7E34();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v8 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 contacts:v14 callCapability:a6];

  return v15;
}

uint64_t sub_1BC89969C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_1BC7B0168;
  v7 = OUTLINED_FUNCTION_17();

  return sub_1BC896F8C(v7, v8, v1, v3, v2);
}

uint64_t sub_1BC899748()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  v1[1] = sub_1BC7B0168;
  v3 = OUTLINED_FUNCTION_17();

  return v4(v3);
}

double sub_1BC8997EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_61();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BC899874()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_19(v4);
  *v5 = v6;
  v5[1] = sub_1BC7B0248;
  v7 = OUTLINED_FUNCTION_17();

  return sub_1BC895034(v7, v8, v1, v3, v2);
}

void sub_1BC899920(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F7E34();

  [a2 setRemoteParticipantHandles_];
}

_OWORD *OUTLINED_FUNCTION_61_3()
{
  v4 = (*(v0 + 56) + 32 * v2);

  return sub_1BC7F0E58(v4, v1);
}

void OUTLINED_FUNCTION_87_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_1BC899A10(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_1BC7F77D4();
  v2 = OUTLINED_FUNCTION_114();
  v3 = type metadata accessor for HistoryItem(v2);
  OUTLINED_FUNCTION_25(v3);
  OUTLINED_FUNCTION_25_1();
  v12 = OUTLINED_FUNCTION_182_0(v4, v5, v6, v7, v8, v9, v10, v11, v26, v28);
  v16 = sub_1BC8B1A04(v12, v13, v14, v15);
  OUTLINED_FUNCTION_101_2(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29);
  if (!v24)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1BC899AAC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_1BC7F7870();
  OUTLINED_FUNCTION_114();
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_25(v2);
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_182_0(v3, v4, v5, v6, MEMORY[0x1E69695A8], v7, v8, v9, v20, v22);
  sub_1BC8B1EFC();
  OUTLINED_FUNCTION_101_2(v10, v11, v12, v13, v14, v15, v16, v17, v21, v23);
  if (!v18)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1BC899B5C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_1BC7F77C0(*(a1 + 16), 0);
  sub_1BC8B1DA4();
  OUTLINED_FUNCTION_101_2(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1BC899BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1BC7F77FC(*(a1 + 16), 0);
  sub_1BC8B1C2C(&v7, (v3 + 4), v2, a1);
  v5 = v4;
  sub_1BC7CAD38(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1BC899C68()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_114();
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  OUTLINED_FUNCTION_3_23();
  sub_1BC8B3DC4(v8, v9, MEMORY[0x1E69695B8]);
  v10 = OUTLINED_FUNCTION_176_0();
  v19[1] = MEMORY[0x1BFB29520](v10, v1);
  v11 = *(v0 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    OUTLINED_FUNCTION_25_1();
    v19[0] = v0;
    v16 = v0 + v15;
    v17 = *(v12 + 56);
    do
    {
      v18 = OUTLINED_FUNCTION_97_1();
      v13(v18);
      sub_1BC8AE558();
      (*(v12 - 8))(v7, v1);
      v16 += v17;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC899DDC(uint64_t a1)
{
  v2 = 0;
  v7[2] = MEMORY[0x1BFB29520](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    ++v2;
    v6 = *(i - 1);
    v5 = *i;

    sub_1BC8AE7D0(v7, v6, v5);
  }

  __break(1u);
}

void sub_1BC899E9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BC8B3ED0();
  v4 = 0;
  v11[4] = MEMORY[0x1BFB29520](v2, &type metadata for Person, v3);
  v5 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;
    v10 = *(i - 3);
    v9 = *(i - 2);

    sub_1BC8AEBE4(v11, v10, v9, v8, v7);
  }

  __break(1u);
}

uint64_t sub_1BC899F98(uint64_t a1)
{
  v2 = sub_1BC8F73D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BC8B3DC4(&qword_1EBCF5678, MEMORY[0x1E6993530], MEMORY[0x1E6993540]);
  v11 = MEMORY[0x1BFB29520](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_1BC8AE91C(v8, v6);
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void sub_1BC89A158()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_172_0();
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  OUTLINED_FUNCTION_3_23();
  sub_1BC8B3DC4(v15, v16, MEMORY[0x1E69695B8]);
  v17 = OUTLINED_FUNCTION_176_0();
  v18 = MEMORY[0x1BFB29520](v17, v2);
  v19 = 0;
  v26 = v1;
  v27 = v18;
  v20 = v1 + 64;
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_171_0();
  v22 = v21 >> 6;
  v25[2] = v4 + 32;
  v25[3] = v4 + 16;
  v25[1] = v4 + 8;
  while (v0)
  {
    v23 = v19;
LABEL_7:
    v24 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    (*(v4 + 16))(v14, *(v26 + 48) + *(v4 + 72) * (v24 | (v23 << 6)), v2);
    (*(v4 + 32))(v8, v14, v2);
    OUTLINED_FUNCTION_27_0();
    sub_1BC8AE558();
    (*(v4 + 8))(v12, v2);
  }

  while (1)
  {
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      OUTLINED_FUNCTION_24();
      return;
    }

    v0 = *(v20 + 8 * v23);
    ++v19;
    if (v0)
    {
      v19 = v23;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1BC89A360()
{
  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_140();
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_139();
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_3_23();
    sub_1BC8B3DC4(v6, v7, MEMORY[0x1E69695B8]);
    OUTLINED_FUNCTION_176_0();
    v8 = sub_1BC8F7B54();
    v9 = v0 + 56;
    v14 = v0;
    v10 = ~(-1 << *(v0 + 32));
    do
    {
      v11 = v8 & v10;
      if (((1 << (v8 & v10)) & *(v9 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v1, *(v14 + 48) + *(v4 + 72) * v11, v2);
      OUTLINED_FUNCTION_3_23();
      sub_1BC8B3DC4(&unk_1EDC205F0, v12, MEMORY[0x1E69695C8]);
      v13 = sub_1BC8F7BC4();
      (*(v4 + 8))(v1, v2);
      v8 = v11 + 1;
    }

    while ((v13 & 1) == 0);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC89A514(uint64_t a1)
{
  v19 = sub_1BC8F7384();
  v2 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC8F73D4();
  v4 = MEMORY[0x1EEE9AC00](v17);
  v16 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v15 = &v13 - v6;
  v7 = *(a1 + 16);
  v14 = *MEMORY[0x1E6993528];
  v9 = (v8 + 8);
  for (i = a1 + 40; v7; --v7)
  {
    (*(v2 + 104))(v18, v14, v19);
    swift_bridgeObjectRetain_n();
    v11 = v16;
    sub_1BC8F73B4();
    v12 = v15;
    sub_1BC8AE91C(v15, v11);
    (*v9)(v12, v17);

    i += 16;
  }
}

void sub_1BC89A734(uint64_t a1)
{
  v23 = sub_1BC8F7384();
  v2 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BC8F73D4();
  v4 = *(v21 - 8);
  v5 = MEMORY[0x1EEE9AC00](v21);
  v20 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v19 = &v16 - v7;
  v27 = sub_1BC7C0454(a1);
  v8 = 0;
  v26 = a1 & 0xC000000000000001;
  v24 = a1 & 0xFFFFFFFFFFFFFF8;
  v25 = a1;
  v18 = *MEMORY[0x1E6993520];
  v17 = (v2 + 104);
  v9 = (v4 + 8);
  while (v27 != v8)
  {
    if (v26)
    {
      v10 = MEMORY[0x1BFB29A00](v8, v25);
    }

    else
    {
      if (v8 >= *(v24 + 16))
      {
        goto LABEL_11;
      }

      v10 = *(v25 + 8 * v8 + 32);
    }

    v11 = v10;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    (*v17)(v22, v18, v23);
    v12 = [v11 value];
    v13 = [v12 digits];

    sub_1BC8F7C24();
    sub_1BC8B15E0([v11 value]);
    v14 = v20;
    sub_1BC8F73B4();
    v15 = v19;
    sub_1BC8AE91C(v19, v14);
    (*v9)(v15, v21);

    ++v8;
  }
}

uint64_t HistoryChangeEvent.description.getter()
{
  switch(*(v0 + 8))
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_54_8();
      sub_1BC8F85A4();

      OUTLINED_FUNCTION_80_4();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_54_8();
      sub_1BC8F85A4();

      OUTLINED_FUNCTION_80_4();
      v2 = v4 | 8;
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_31_0();
      return 0xD000000000000015;
    default:
      OUTLINED_FUNCTION_54_8();
      sub_1BC8F85A4();

      OUTLINED_FUNCTION_80_4();
      v2 = v1 | 1;
LABEL_6:
      v6 = v2;
      v5 = sub_1BC8F8A54();
      MEMORY[0x1BFB29120](v5);

      MEMORY[0x1BFB29120](41, 0xE100000000000000);
      return v6;
  }
}

uint64_t static HistoryChangeEvent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  switch(*(a1 + 8))
  {
    case 1:
      if (v3 == 1)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 2:
      if (v3 != 2)
      {
        goto LABEL_17;
      }

      v7 = sub_1BC7F59BC(v6, v2);
      goto LABEL_14;
    case 3:
      if (v3 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 4:
      if (v3 != 4 || v2 != 0)
      {
        goto LABEL_17;
      }

      v5 = 1;
      goto LABEL_15;
    default:
      if (*(a2 + 8))
      {
LABEL_17:
        v5 = 0;
      }

      else
      {
LABEL_13:

        sub_1BC7DAF10();
LABEL_14:
        v5 = v7;

LABEL_15:
      }

      return v5 & 1;
  }
}

uint64_t sub_1BC89AC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465747265736E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646574656C6564 && a2 == 0xE700000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73746361746E6F63 && a2 == 0xEF6465676E616843;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001BC90DCA0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BC8F8AA4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1BC89ADF4(char a1)
{
  result = 0x6465747265736E69;
  switch(a1)
  {
    case 1:
      v3 = 1633972341;
      goto LABEL_5;
    case 2:
      v3 = 1701602660;
LABEL_5:
      result = v3 | 0x64657400000000;
      break;
    case 3:
      result = 0x73746361746E6F63;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC89AEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC89AC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC89AEC8(uint64_t a1)
{
  v2 = sub_1BC89B738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89AF04(uint64_t a1)
{
  v2 = sub_1BC89B738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89AF40(uint64_t a1)
{
  v2 = sub_1BC89B7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89AF7C(uint64_t a1)
{
  v2 = sub_1BC89B7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89AFB8(uint64_t a1)
{
  v2 = sub_1BC89B90C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89AFF4(uint64_t a1)
{
  v2 = sub_1BC89B90C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89B030(uint64_t a1)
{
  v2 = sub_1BC89B78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89B06C(uint64_t a1)
{
  v2 = sub_1BC89B78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89B0A8(uint64_t a1)
{
  v2 = sub_1BC89BA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89B0E4(uint64_t a1)
{
  v2 = sub_1BC89BA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC89B120(uint64_t a1)
{
  v2 = sub_1BC89BA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89B15C(uint64_t a1)
{
  v2 = sub_1BC89BA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HistoryChangeEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v23;
  a20 = v24;
  v87 = v21;
  v25 = v20;
  v27 = v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6290, &qword_1BC906900);
  OUTLINED_FUNCTION_0();
  v81 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v79 = v30;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6298, &qword_1BC906908);
  OUTLINED_FUNCTION_0();
  v80 = v31;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5_0();
  v78 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62A0, &qword_1BC906910);
  OUTLINED_FUNCTION_0();
  v76 = v35;
  v77 = v34;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62A8, &qword_1BC906918);
  OUTLINED_FUNCTION_0();
  v74 = v38;
  v75 = v37;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v72 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62B0, &qword_1BC906920);
  OUTLINED_FUNCTION_0();
  v73 = v43;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62B8, &qword_1BC906928);
  OUTLINED_FUNCTION_0();
  v85 = v46;
  v86 = v45;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v72 - v48;
  v84 = *v25;
  v50 = *(v25 + 8);
  v51 = v27[3];
  __swift_project_boxed_opaque_existential_1(v27, v51);
  sub_1BC89B738();
  sub_1BC8F8CA4();
  switch(v50)
  {
    case 1:
      LOBYTE(a10) = 1;
      v69 = sub_1BC89BA38();
      OUTLINED_FUNCTION_66_3(&type metadata for HistoryChangeEvent.UpdatedCodingKeys, &a10, v70, v71, v69);
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
      sub_1BC89B834();
      OUTLINED_FUNCTION_27_2();
      v68 = v75;
      sub_1BC8F89F4();
      v63 = *(v74 + 8);
      v61 = v41;
      goto LABEL_7;
    case 2:
      LOBYTE(a10) = 2;
      v58 = sub_1BC89B90C();
      OUTLINED_FUNCTION_66_3(&type metadata for HistoryChangeEvent.DeletedCodingKeys, &a10, v59, v60, v58);
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62F8, &qword_1BC906938);
      sub_1BC89B960();
      OUTLINED_FUNCTION_27_2();
      OUTLINED_FUNCTION_161();
      sub_1BC8F89F4();
      v61 = OUTLINED_FUNCTION_125();
      goto LABEL_8;
    case 3:
      LOBYTE(a10) = 3;
      v64 = sub_1BC89B7E0();
      v65 = v78;
      OUTLINED_FUNCTION_66_3(&type metadata for HistoryChangeEvent.ContactsChangedCodingKeys, &a10, v66, v67, v64);
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
      sub_1BC89B834();
      OUTLINED_FUNCTION_27_2();
      v68 = v82;
      sub_1BC8F89F4();
      v63 = *(v80 + 8);
      v61 = v65;
LABEL_7:
      v62 = v68;
LABEL_8:
      v63(v61, v62);
      goto LABEL_9;
    case 4:
      LOBYTE(a10) = 4;
      sub_1BC89B78C();
      v55 = v79;
      sub_1BC8F8934();
      (*(v81 + 8))(v55, v83);
      v56 = OUTLINED_FUNCTION_143();
      v57(v56);
      goto LABEL_10;
    default:
      LOBYTE(a10) = 0;
      v52 = sub_1BC89BA8C();
      OUTLINED_FUNCTION_66_3(&type metadata for HistoryChangeEvent.InsertedCodingKeys, &a10, v53, v54, v52);
      OUTLINED_FUNCTION_162_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
      sub_1BC89B834();
      OUTLINED_FUNCTION_27_2();
      sub_1BC8F89F4();
      (*(v73 + 8))(v22, v42);
LABEL_9:
      (*(v85 + 8))(v49, v51);
LABEL_10:
      OUTLINED_FUNCTION_23();
      return;
  }
}

unint64_t sub_1BC89B738()
{
  result = qword_1EBCF62C0;
  if (!qword_1EBCF62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62C0);
  }

  return result;
}

unint64_t sub_1BC89B78C()
{
  result = qword_1EBCF62C8;
  if (!qword_1EBCF62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62C8);
  }

  return result;
}

unint64_t sub_1BC89B7E0()
{
  result = qword_1EBCF62D0;
  if (!qword_1EBCF62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62D0);
  }

  return result;
}

unint64_t sub_1BC89B834()
{
  result = qword_1EBCF62E0;
  if (!qword_1EBCF62E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62D8, &qword_1BC906930);
    sub_1BC89B8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62E0);
  }

  return result;
}

unint64_t sub_1BC89B8B8()
{
  result = qword_1EBCF62E8;
  if (!qword_1EBCF62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62E8);
  }

  return result;
}

unint64_t sub_1BC89B90C()
{
  result = qword_1EBCF62F0;
  if (!qword_1EBCF62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF62F0);
  }

  return result;
}

unint64_t sub_1BC89B960()
{
  result = qword_1EBCF6300;
  if (!qword_1EBCF6300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF62F8, &qword_1BC906938);
    sub_1BC89B9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6300);
  }

  return result;
}

unint64_t sub_1BC89B9E4()
{
  result = qword_1EBCF6308;
  if (!qword_1EBCF6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6308);
  }

  return result;
}

unint64_t sub_1BC89BA38()
{
  result = qword_1EBCF6310;
  if (!qword_1EBCF6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6310);
  }

  return result;
}

unint64_t sub_1BC89BA8C()
{
  result = qword_1EBCF6318;
  if (!qword_1EBCF6318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6318);
  }

  return result;
}

void HistoryChangeEvent.hash(into:)(void *a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      v4 = 1;
      goto LABEL_9;
    case 2:
      MEMORY[0x1BFB2A020](2);

      sub_1BC7FB338(a1, v2);
      return;
    case 3:
      v4 = 3;
      goto LABEL_9;
    case 4:
      MEMORY[0x1BFB2A020](4);
      return;
    default:
      v4 = 0;
LABEL_9:
      MEMORY[0x1BFB2A020](v4);

      sub_1BC7DED54();
      return;
  }
}

uint64_t HistoryChangeEvent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BC8F8C04();
  switch(v2)
  {
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      MEMORY[0x1BFB2A020](2);
      sub_1BC7FB338(__src, v1);
      return sub_1BC8F8C64();
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 4:
      MEMORY[0x1BFB2A020](4);
      return sub_1BC8F8C64();
    default:
      v3 = 0;
LABEL_7:
      MEMORY[0x1BFB2A020](v3);
      sub_1BC7DED54();
      return sub_1BC8F8C64();
  }
}

void HistoryChangeEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v106 = v20;
  v24 = v23;
  v102 = v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6320, &qword_1BC906940);
  OUTLINED_FUNCTION_0();
  v98 = v26;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v100 = v28;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6328, &qword_1BC906948);
  OUTLINED_FUNCTION_0();
  v99 = v29;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v101 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6330, &qword_1BC906950);
  OUTLINED_FUNCTION_0();
  v96 = v33;
  v97 = v32;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  v103 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6338, &qword_1BC906958);
  OUTLINED_FUNCTION_0();
  v93 = v37;
  v94 = v36;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v87 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6340, &qword_1BC906960);
  OUTLINED_FUNCTION_0();
  v92 = v42;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_39_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6348, &unk_1BC906968);
  OUTLINED_FUNCTION_0();
  v46 = v45;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v87 - v48;
  v105 = v24;
  v50 = OUTLINED_FUNCTION_12_5();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_1BC89B738();
  v52 = v106;
  sub_1BC8F8C84();
  if (v52)
  {
    goto LABEL_9;
  }

  v89 = v41;
  v90 = v40;
  v91 = 0;
  v106 = v46;
  v53 = sub_1BC8F8914();
  sub_1BC7B85D4(v53, 0);
  v57 = v44;
  if (v55 == v56 >> 1)
  {
LABEL_8:
    sub_1BC8F8624();
    swift_allocError();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v65 = &type metadata for HistoryChangeEvent;
    sub_1BC8F8824();
    sub_1BC8F8614();
    OUTLINED_FUNCTION_10();
    (*(v66 + 104))(v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v106 + 8))(v49, v57);
LABEL_9:
    v67 = v105;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (v55 < (v56 >> 1))
  {
    v88 = *(v54 + v55);
    sub_1BC7B85D0(v55 + 1);
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    if (v59 == v61 >> 1)
    {
      v62 = v102;
      v63 = v91;
      switch(v88)
      {
        case 1:
          LOBYTE(a10) = 1;
          sub_1BC89BA38();
          OUTLINED_FUNCTION_48_9(&type metadata for HistoryChangeEvent.UpdatedCodingKeys, &a10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
          sub_1BC8B1650();
          OUTLINED_FUNCTION_117_1();
          OUTLINED_FUNCTION_161();
          sub_1BC8F88F4();
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_73_6();
          v84(v83);
          v85 = OUTLINED_FUNCTION_18_3();
          v86(v85, v44);
          goto LABEL_18;
        case 2:
          LOBYTE(a10) = 2;
          sub_1BC89B90C();
          OUTLINED_FUNCTION_48_9(&type metadata for HistoryChangeEvent.DeletedCodingKeys, &a10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62F8, &qword_1BC906938);
          sub_1BC8B1728();
          sub_1BC8F88F4();
          OUTLINED_FUNCTION_116_0();
          swift_unknownObjectRelease();
          goto LABEL_17;
        case 3:
          LOBYTE(a10) = 3;
          sub_1BC89B7E0();
          v73 = v101;
          sub_1BC8F8814();
          if (v63)
          {
            v75 = OUTLINED_FUNCTION_18_3();
            v76(v75, v44);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
          sub_1BC8B1650();
          OUTLINED_FUNCTION_117_1();
          v74 = v95;
          OUTLINED_FUNCTION_161();
          sub_1BC8F88F4();
          OUTLINED_FUNCTION_116_0();
          swift_unknownObjectRelease();
          (*(v99 + 8))(v73, v74);
          v77 = OUTLINED_FUNCTION_97_1();
          v78(v77);
          v72 = a10;
          v67 = v105;
          v62 = v102;
LABEL_20:
          *v62 = v72;
          *(v62 + 8) = v88;
          break;
        case 4:
          LOBYTE(a10) = 4;
          sub_1BC89B78C();
          OUTLINED_FUNCTION_48_9(&type metadata for HistoryChangeEvent.FinishedInitialFetchCodingKeys, &a10);
          swift_unknownObjectRelease();
          v68 = OUTLINED_FUNCTION_73_6();
          v69(v68);
          v70 = OUTLINED_FUNCTION_18_3();
          v71(v70, v44);
          v72 = 0;
          goto LABEL_19;
        default:
          LOBYTE(a10) = 0;
          sub_1BC89BA8C();
          OUTLINED_FUNCTION_48_9(&type metadata for HistoryChangeEvent.InsertedCodingKeys, &a10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF62D8, &qword_1BC906930);
          sub_1BC8B1650();
          OUTLINED_FUNCTION_117_1();
          OUTLINED_FUNCTION_161();
          sub_1BC8F88F4();
          OUTLINED_FUNCTION_116_0();
          swift_unknownObjectRelease();
LABEL_17:
          v79 = OUTLINED_FUNCTION_73_6();
          v80(v79);
          v81 = OUTLINED_FUNCTION_97_1();
          v82(v81);
LABEL_18:
          v72 = a10;
LABEL_19:
          v67 = v105;
          goto LABEL_20;
      }

      goto LABEL_10;
    }

    v57 = v44;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BC89C4FC(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1BC8F8C04();
  HistoryChangeEvent.hash(into:)(v4);
  return sub_1BC8F8C64();
}

unint64_t VersionedChange.description.getter()
{
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_54_8();
  sub_1BC8F85A4();

  v2 = sub_1BC8F8A54();
  MEMORY[0x1BFB29120](v2);

  MEMORY[0x1BFB29120](0x73746E657665202CLL, 0xEA0000000000203ALL);
  v3 = MEMORY[0x1BFB29280](v1, &type metadata for HistoryChangeEvent);
  MEMORY[0x1BFB29120](v3);

  return 0xD000000000000019;
}

void static VersionedChange.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_1BC7DB990(a1[1], a2[1]);
  }
}

uint64_t sub_1BC89C65C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC89C720(char a1)
{
  if (a1)
  {
    return 0x73746E657665;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1BC89C75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC89C65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC89C784(uint64_t a1)
{
  v2 = sub_1BC8B1800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC89C7C0(uint64_t a1)
{
  v2 = sub_1BC8B1800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VersionedChange.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6378, &qword_1BC906978);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_33_2();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1BC8B1800();
  sub_1BC8F8CA4();
  sub_1BC8F8A14();
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B1854();
    sub_1BC8F89F4();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_23();
}

void VersionedChange.hash(into:)()
{
  MEMORY[0x1BFB2A060](*v0);

  sub_1BC7DF5CC();
}

uint64_t VersionedChange.hashValue.getter()
{
  v1 = *v0;
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A060](v1);
  sub_1BC7DF5CC();
  return sub_1BC8F8C64();
}

void VersionedChange.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_22();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63A0, &qword_1BC906988);
  OUTLINED_FUNCTION_0();
  v30 = v29;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v36 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1BC8B1800();
  sub_1BC8F8C84();
  if (!v23)
  {
    v34 = sub_1BC8F8904();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6388, &qword_1BC906980);
    sub_1BC8B192C();
    sub_1BC8F88F4();
    (*(v30 + 8))(v33, v28);
    v35 = v36[1];
    *v27 = v34;
    v27[1] = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC89CC04(uint64_t a1)
{
  sub_1BC8F8C04();
  VersionedChange.hash(into:)();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC89CC50@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990) - 8;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_139();
  sub_1BC7D9558(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v2, &qword_1EBCF63B8, &qword_1BC906990);
  v6 = *(v4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
  OUTLINED_FUNCTION_4_1();
  (*(v7 + 32))(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
  OUTLINED_FUNCTION_42();
  return (*(v8 + 8))(v2 + v6);
}

void *sub_1BC89CD6C()
{

  v2 = sub_1BC7F7F60(v0);
  sub_1BC8ABF4C(&v2);

  return v2;
}

uint64_t sub_1BC89CE14()
{
  OUTLINED_FUNCTION_5();
  sub_1BC89E278();
  OUTLINED_FUNCTION_27();

  return v0();
}

void HistoryCoalescingManager.__allocating_init(keyDescriptors:messageRequest:callRequest:pageSize:contactStore:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v33 = v3;
  v34 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v9);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_2();
  v11 = sub_1BC8F7334();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v19 = OUTLINED_FUNCTION_25(Request);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  sub_1BC8B3E70(v8, v0, type metadata accessor for MessageStoreFetchRequest);
  v35 = v6;
  (*(v13 + 16))(v17, v6, v11);
  v20 = [objc_allocWithZone(MEMORY[0x1E6993580]) init];
  v21 = qword_1EDC20D78;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDC20D80;
  if (v2)
  {
    swift_retain_n();
    v24 = v2;
  }

  else
  {
    v25 = objc_allocWithZone(MEMORY[0x1E695CE18]);
    swift_retain_n();
    v24 = [v25 init];
  }

  v26 = v2;
  v27 = sub_1BC8B2318(v33, v0, v17, v34, v22, v23, v24);

  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_41_0();
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v27;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();

  (*(v13 + 8))(v35, v11);
  OUTLINED_FUNCTION_63_5();
  sub_1BC7C0224();
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC89D13C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89DC68(v1);
}

char *HistoryCoalescingManager.deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  OUTLINED_FUNCTION_63_5();
  sub_1BC7C0224();
  v4 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callRequest;
  sub_1BC8F7334();
  OUTLINED_FUNCTION_42();
  (*(v5 + 8))(&v0[v4]);
  swift_unknownObjectRelease();

  sub_1BC7F1790(&v0[OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream], &qword_1EBCF63B8, &qword_1BC906990);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HistoryCoalescingManager.__deallocating_deinit()
{
  HistoryCoalescingManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC89D380()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136446210;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000014, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v14, v15, &protocol conformance descriptor for HistoryCoalescingManager);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_138_1(v16);
  *v17 = v18;
  v17[1] = sub_1BC89D53C;
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1BC89D53C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC89D634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC89D6D4, a3, 0);
}

uint64_t sub_1BC89D6D4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_41_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v6);
  v7 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v7, v8, v6);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  OUTLINED_FUNCTION_41_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v12);
  v13 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v13, v14, v12);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v15, v16, &protocol conformance descriptor for HistoryCoalescingManager);
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_183_0(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6550, &qword_1BC9076D0);
  OUTLINED_FUNCTION_127_0();
  *v1 = v18;
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6D898](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1BC89D850()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC89D94C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89E848();
}

uint64_t sub_1BC89D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_1BC7D9558(a1, v19 - v9, &qword_1EBCF63D0, &qword_1BC902140);
  v11 = sub_1BC8F7FC4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1BC7F1790(v10, &qword_1EBCF63D0, &qword_1BC902140);
  }

  else
  {
    sub_1BC8F7FB4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_1BC8F7F54();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_1BC89DBD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89F3E4();
}

uint64_t sub_1BC89DC80()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136446210;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000015, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v14, v15, &protocol conformance descriptor for HistoryCoalescingManager);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_138_1(v16);
  *v17 = v18;
  v17[1] = sub_1BC89DE3C;
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_40_4();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1BC89DE3C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC89DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v3[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC89DFD4, a3, 0);
}

uint64_t sub_1BC89DFD4()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_204_0();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_41_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v6);
  v7 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v7, v8, v6);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v2);
  OUTLINED_FUNCTION_41_0();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_107_1(v12);
  v13 = OUTLINED_FUNCTION_177_0();
  sub_1BC89D9E0(v13, v14, v12);
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v15, v16, &protocol conformance descriptor for HistoryCoalescingManager);
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_183_0(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6550, &qword_1BC9076D0);
  OUTLINED_FUNCTION_127_0();
  *v1 = v18;
  OUTLINED_FUNCTION_118_0();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6D898](v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1BC89E150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89E848();
}

uint64_t sub_1BC89E1E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89F3E4();
}

uint64_t sub_1BC89E278()
{
  v1 = v0;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EBD067C8);
  v3 = sub_1BC8F7714();
  sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_9();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136446210;
    OUTLINED_FUNCTION_31_0();
    *(v6 + 4) = sub_1BC7A9A4C(0xD000000000000016, v8, aBlock);
    OUTLINED_FUNCTION_25_9();
    _os_log_impl(v9, v10, v11, v12, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = __swift_project_boxed_opaque_existential_1((v1 + 152), *(v1 + 176));
  v15 = *(*v14 + 72);
  v16 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v16);
  os_unfair_lock_lock(v15 + 4);
  sub_1BC7A9F74(v17);
  os_unfair_lock_unlock(v15 + 4);
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1EBCF4770 != -1)
  {
    swift_once();
  }

  v19 = qword_1EBD067F0;
  OUTLINED_FUNCTION_21_4();
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BC8B4380;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BC8E7474;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  v22 = [v18 addObserverForName:v19 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);

  *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callHistoryObserver) = v22;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BC89E54C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_1BC8F7FC4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_1BC8333D4();
  }

  return result;
}

uint64_t sub_1BC89E648()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC89E6D8(v1);
}

uint64_t sub_1BC89E6F0()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD000000000000022, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_138_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_78_5(v15);
  OUTLINED_FUNCTION_40_4();

  return sub_1BC89F3E4();
}

uint64_t sub_1BC89E848()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 80) = v0;
  *(v1 + 168) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_25(v3);
  *(v1 + 96) = OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  *(v1 + 104) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 112) = v5;
  *(v1 + 120) = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v6);
  *(v1 + 128) = OUTLINED_FUNCTION_47_3();
  v7 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC89E958()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 80);
  v2 = *(v0 + 168);
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask;
  *(v0 + 136) = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageFetchTask;
  v4 = *(v1 + v3);
  if (v2 == 1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_191_0(v1);

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_190();

      __asm { BRAA            X1, X16 }
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
  }

  else
  {
    if (v4)
    {

      sub_1BC8F8024();

      v1 = *(v0 + 80);
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
  }

  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v11, v12, &protocol conformance descriptor for HistoryCoalescingManager);
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_104_1(v13);
  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
  OUTLINED_FUNCTION_194_0(v14);

  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_166_0(v15);
  OUTLINED_FUNCTION_190();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BC89EB3C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC89EC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_185_0();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38();
  a20 = v23;
  OUTLINED_FUNCTION_148_0();
  if ((v22 & 1) == 0)
  {
    v28 = v23[10];
    v29 = v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch;
    *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch) = 1;
    if ((*(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) & 1) == 0 && *(v29 + 1) == 1)
    {
      v30 = v23[10];
      *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) = 1;
      OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
      v31 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      OUTLINED_FUNCTION_9_14();
      sub_1BC7AA12C(v32);
      v33 = *(*(v30 + v31) + 16);
      v34 = OUTLINED_FUNCTION_103_0();
      sub_1BC7AA600(v34, v24);
      OUTLINED_FUNCTION_102_0();
      if (v33 >= 0x64)
      {
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();
        v35 = OUTLINED_FUNCTION_103_0();
        sub_1BC8ABD58(v35);
        swift_endAccess();
      }

      if (qword_1EBCF4760 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v36 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v36, qword_1EBD067C8);

      v37 = sub_1BC8F7714();
      v38 = sub_1BC8F8204();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        v60 = swift_slowAlloc();
        a11 = v25;
        *v30 = 136315138;
        a12 = &unk_1F3B36C30;

        VersionedChange.description.getter();
        OUTLINED_FUNCTION_37_3();

        v39 = OUTLINED_FUNCTION_12_5();
        sub_1BC7A9A4C(v39, v40, v41);
        OUTLINED_FUNCTION_100();

        *(v30 + 4) = &a11;
        OUTLINED_FUNCTION_205();
        _os_log_impl(v42, v43, v44, v45, v46, v47);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v48 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v48);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v49 = v23[12];
      v50 = v23[11];
      sub_1BC7D9558(v23[10] + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v49, &qword_1EBCF63B8, &qword_1BC906990);
      v51 = *(v50 + 48);
      v23[8] = v25;
      v23[9] = &unk_1F3B36C30;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      OUTLINED_FUNCTION_152(v52);
      v53 = OUTLINED_FUNCTION_57_3();
      v54(v53);
      OUTLINED_FUNCTION_10();
      (*(v55 + 8))(v49 + v51, &unk_1F3B36C30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42();
      (*(v56 + 8))(v49);
    }
  }

  v57 = swift_task_alloc();
  v23[20] = v57;
  *v57 = v23;
  v57[1] = sub_1BC89EF80;
  OUTLINED_FUNCTION_186_0();

  return sub_1BC8A46A8(v58);
}

uint64_t sub_1BC89EF80()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BC89F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1BC89F0E8, a4, 0);
}

uint64_t sub_1BC89F0E8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_34();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_183_0(v4);
  *(v5 + 16) = sub_1BC8B4350;
  *(v5 + 24) = 0;

  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_133(v6);
  *v7 = v8;
  v7[1] = sub_1BC89F218;
  OUTLINED_FUNCTION_112();

  return v15(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BC89F218()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

id sub_1BC89F388@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for HistoryItem(0);
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_1BC89F3E4()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 80) = v0;
  *(v1 + 168) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v1 + 88) = v3;
  OUTLINED_FUNCTION_25(v3);
  *(v1 + 96) = OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  *(v1 + 104) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 112) = v5;
  *(v1 + 120) = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v6);
  *(v1 + 128) = OUTLINED_FUNCTION_47_3();
  v7 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC89F4F4()
{
  OUTLINED_FUNCTION_71();
  v1 = *(v0 + 80);
  v2 = *(v0 + 168);
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask;
  *(v0 + 136) = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_callFetchTask;
  v4 = *(v1 + v3);
  if (v2 == 1)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_191_0(v1);

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_190();

      __asm { BRAA            X1, X16 }
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) = 0;
  }

  else
  {
    if (v4)
    {

      sub_1BC8F8024();

      v1 = *(v0 + 80);
    }

    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) = 0;
  }

  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v11, v12, &protocol conformance descriptor for HistoryCoalescingManager);
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_104_1(v13);
  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
  OUTLINED_FUNCTION_194_0(v14);

  v15 = swift_task_alloc();
  *(v0 + 152) = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_166_0(v15);
  OUTLINED_FUNCTION_190();

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BC89F6D8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC89F7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_185_0();
  a21 = v26;
  a22 = v27;
  OUTLINED_FUNCTION_38();
  a20 = v23;
  OUTLINED_FUNCTION_148_0();
  if ((v22 & 1) == 0)
  {
    v28 = v23[10];
    v29 = (v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch);
    *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_initialFetch + 1) = 1;
    if ((*(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) & 1) == 0 && *v29 == 1)
    {
      v30 = v23[10];
      *(v28 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_didEmitFinishedInitialFetch) = 1;
      OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
      v31 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      OUTLINED_FUNCTION_9_14();
      sub_1BC7AA12C(v32);
      v33 = *(*(v30 + v31) + 16);
      v34 = OUTLINED_FUNCTION_103_0();
      sub_1BC7AA600(v34, v24);
      OUTLINED_FUNCTION_102_0();
      if (v33 >= 0x64)
      {
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();
        v35 = OUTLINED_FUNCTION_103_0();
        sub_1BC8ABD58(v35);
        swift_endAccess();
      }

      if (qword_1EBCF4760 != -1)
      {
        OUTLINED_FUNCTION_0_25();
        swift_once();
      }

      v36 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v36, qword_1EBD067C8);

      v37 = sub_1BC8F7714();
      v38 = sub_1BC8F8204();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        v60 = swift_slowAlloc();
        a11 = v25;
        *v30 = 136315138;
        a12 = &unk_1F3B36C60;

        VersionedChange.description.getter();
        OUTLINED_FUNCTION_37_3();

        v39 = OUTLINED_FUNCTION_12_5();
        sub_1BC7A9A4C(v39, v40, v41);
        OUTLINED_FUNCTION_100();

        *(v30 + 4) = &a11;
        OUTLINED_FUNCTION_205();
        _os_log_impl(v42, v43, v44, v45, v46, v47);
        __swift_destroy_boxed_opaque_existential_1(v60);
        v48 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v48);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v49 = v23[12];
      v50 = v23[11];
      sub_1BC7D9558(v23[10] + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v49, &qword_1EBCF63B8, &qword_1BC906990);
      v51 = *(v50 + 48);
      v23[8] = v25;
      v23[9] = &unk_1F3B36C60;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      OUTLINED_FUNCTION_152(v52);
      v53 = OUTLINED_FUNCTION_57_3();
      v54(v53);
      OUTLINED_FUNCTION_10();
      (*(v55 + 8))(v49 + v51, &unk_1F3B36C60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42();
      (*(v56 + 8))(v49);
    }
  }

  v57 = swift_task_alloc();
  v23[20] = v57;
  *v57 = v23;
  v57[1] = sub_1BC8B4804;
  OUTLINED_FUNCTION_186_0();

  return sub_1BC8A46A8(v58);
}

uint64_t sub_1BC89FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1BC89FB40, a4, 0);
}

uint64_t sub_1BC89FB40()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1BC89FC4C;
  v5 = *(v0 + 48);

  return sub_1BC8A0E9C(0, v5, sub_1BC8B4298, v3, sub_1BC8B42A0, 0);
}

uint64_t sub_1BC89FC4C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC89FDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7324();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for HistoryItem(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC89FE3C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 56) = a3;
  *(v7 + 273) = a2;
  *(v7 + 272) = a1;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v7 + 104) = swift_task_alloc();
  v8 = sub_1BC8F7F84();
  *(v7 + 112) = v8;
  *(v7 + 120) = *(v8 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = *(type metadata accessor for HistoryItem(0) - 8);
  *(v7 + 144) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6588, &qword_1BC907760);
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6590, &qword_1BC907768);
  *(v7 + 176) = v10;
  *(v7 + 184) = *(v10 - 8);
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8A0070, v6, 0);
}

uint64_t sub_1BC8A0070()
{
  v27 = v1;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_100_1();
  *(v1 + 200) = __swift_project_value_buffer(v4, qword_1EBD067C8);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 272);
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_147();
    *v9 = 136315394;
    if (v8)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v10 = 0xE500000000000000;
    }

    sub_1BC7A9A4C(v0, v10, &v26);

    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v16 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v16);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {
    v18 = *(v1 + 272);

    if (v18)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v10 = 0xE500000000000000;
    }
  }

  *(v1 + 208) = v10;
  *(v1 + 216) = v0;
  (*(v1 + 56))();
  sub_1BC8F7FF4();
  v19 = OUTLINED_FUNCTION_81_0();
  v20(v19);
  OUTLINED_FUNCTION_1_25();
  *(v1 + 224) = sub_1BC8B3DC4(v21, v22, &protocol conformance descriptor for HistoryCoalescingManager);
  v23 = swift_task_alloc();
  *(v1 + 232) = v23;
  *v23 = v1;
  OUTLINED_FUNCTION_19_17(v23);
  v24 = OUTLINED_FUNCTION_134_1();

  return MEMORY[0x1EEE6DB90](v24);
}

uint64_t sub_1BC8A029C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 240) = v0;

  v7 = *(v3 + 88);
  if (v0)
  {
    v8 = sub_1BC8A0990;
  }

  else
  {
    v8 = sub_1BC8A039C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1BC8A039C()
{
  OUTLINED_FUNCTION_38();
  v85 = v0;
  v3 = *(v0 + 16);
  if (!v3)
  {
    v24 = OUTLINED_FUNCTION_126_0();
    v25(v24);
    goto LABEL_22;
  }

  v4 = *(v0 + 240);
  sub_1BC8F8044();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_126_0();
    v6(v5);

    *(v0 + 32) = v4;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (swift_dynamicCast())
    {

      v8 = sub_1BC8F7714();
      sub_1BC8F8204();
      v9 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v0 + 216);
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        swift_slowAlloc();
        OUTLINED_FUNCTION_147();
        *v1 = 136315138;
        v12 = OUTLINED_FUNCTION_81_0();
        sub_1BC7A9A4C(v12, v13, v14);
        OUTLINED_FUNCTION_157();
        *(v1 + 4) = v11;
        OUTLINED_FUNCTION_49_10();
        OUTLINED_FUNCTION_205();
        _os_log_impl(v15, v16, v17, v18, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v2);
        v21 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v21);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      v22 = OUTLINED_FUNCTION_124_0();
      v23(v22);
    }

    else
    {
      v39 = *(v0 + 96);
      v38 = *(v0 + 104);
      v40 = *(v0 + 88);

      sub_1BC7D9558(v40 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v38, &qword_1EBCF63B8, &qword_1BC906990);
      v41 = *(v39 + 48);
      *(v0 + 40) = v4;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      sub_1BC8F8074();
      OUTLINED_FUNCTION_30_12();
      (*(v43 + 8))(v38 + v41, v42);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42();
      (*(v44 + 8))(v38);
    }

LABEL_22:
    OUTLINED_FUNCTION_149_0();

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_62_1();

    __asm { BRAA            X1, X16 }
  }

  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
LABEL_10:
    *(v0 + 48) = MEMORY[0x1E69E7CC0];
    sub_1BC7DDA7C();
    if (v26 < 0)
    {
      __break(1u);
      return;
    }

    v27 = 0;
    v28 = *(v0 + 48);
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v29 = OUTLINED_FUNCTION_27_0();
        v30 = MEMORY[0x1BFB29A00](v29);
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v26 = sub_1BC8F8504();
          if (!v26)
          {
            break;
          }

          goto LABEL_10;
        }

        if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v30 = *(v3 + 8 * v27 + 32);
      }

      v31 = v30;
      v32 = *(v0 + 72);
      v84 = v30;
      v32(&v84);

      *(v0 + 48) = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_37(v33);
        sub_1BC7DDA7C();
        v28 = *(v0 + 48);
      }

      ++v27;
      *(v28 + 16) = v34 + 1;
      OUTLINED_FUNCTION_123();
      sub_1BC7FBC68(v37, v36 + *(v35 + 72) * v34);
      if (v26 == v27)
      {

        goto LABEL_29;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_29:
  *(v0 + 248) = v28;

  v47 = sub_1BC8F7714();
  sub_1BC8F8204();
  v48 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v48, v49))
  {
    OUTLINED_FUNCTION_11_2();
    v50 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v51 = swift_slowAlloc();
    v84 = v51;
    OUTLINED_FUNCTION_192_0(3.8521e-34);
    *(v50 + 12) = 2080;
    v52 = OUTLINED_FUNCTION_125();
    v55 = sub_1BC7A9A4C(v52, v53, v54);

    *(v50 + 14) = v55;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v61 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v61);
  }

  else
  {
  }

  v62 = *(v0 + 272);

  v63 = sub_1BC8F7714();
  sub_1BC8F8204();
  v64 = OUTLINED_FUNCTION_36_0();
  v66 = os_log_type_enabled(v64, v65);
  if (v62)
  {
    if (v66)
    {
      OUTLINED_FUNCTION_9();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_67_3(v67, 3.852e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
      v73 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v73);
    }

    else
    {
    }

    v81 = swift_task_alloc();
    *(v0 + 264) = v81;
    *v81 = v0;
    OUTLINED_FUNCTION_167_0(v81);
  }

  else
  {
    if (v66)
    {
      OUTLINED_FUNCTION_9();
      v74 = swift_slowAlloc();
      OUTLINED_FUNCTION_67_3(v74, 3.852e-34);
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
      v80 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v80);
    }

    else
    {
    }

    v82 = swift_task_alloc();
    *(v0 + 256) = v82;
    *v82 = v0;
    OUTLINED_FUNCTION_167_0(v82);
  }

  OUTLINED_FUNCTION_62_1();

  sub_1BC8A2454();
}

uint64_t sub_1BC8A0990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  v13 = OUTLINED_FUNCTION_126_0();
  v14(v13);
  OUTLINED_FUNCTION_131_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (OUTLINED_FUNCTION_151(v15))
  {

    v16 = sub_1BC8F7714();
    sub_1BC8F8204();
    v17 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v10 + 216);
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      swift_slowAlloc();
      OUTLINED_FUNCTION_147();
      *v11 = 136315138;
      v20 = OUTLINED_FUNCTION_81_0();
      sub_1BC7A9A4C(v20, v21, v22);
      OUTLINED_FUNCTION_157();
      *(v11 + 1) = v19;
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_205();
      _os_log_impl(v23, v24, v25, v26, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v29 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v29);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v30 = OUTLINED_FUNCTION_124_0();
    v31(v30);
  }

  else
  {
    v33 = *(v10 + 96);
    v32 = *(v10 + 104);
    v34 = *(v10 + 88);

    sub_1BC7D9558(v34 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v32, &qword_1EBCF63B8, &qword_1BC906990);
    v35 = *(v33 + 48);
    *(v10 + 40) = v11;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_81_0();
    sub_1BC8F8074();
    OUTLINED_FUNCTION_10();
    (*(v37 + 8))(v32 + v35, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42();
    (*(v38 + 8))(v32);
  }

  OUTLINED_FUNCTION_149_0();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48_4();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10);
}

uint64_t sub_1BC8A0BBC()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  *(v0 + 232) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_19_17(v3);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v5);
}

uint64_t sub_1BC8A0D2C()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  *(v0 + 232) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_19_17(v3);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v5);
}

uint64_t sub_1BC8A0E9C(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 56) = a3;
  *(v7 + 297) = a2;
  *(v7 + 296) = a1;
  *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v7 + 104) = swift_task_alloc();
  v8 = sub_1BC8F7F84();
  *(v7 + 112) = v8;
  *(v7 + 120) = *(v8 - 8);
  *(v7 + 128) = swift_task_alloc();
  v9 = sub_1BC8F7324();
  *(v7 + 136) = v9;
  *(v7 + 144) = *(v9 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = *(type metadata accessor for HistoryItem(0) - 8);
  *(v7 + 168) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6578, &qword_1BC907738);
  *(v7 + 176) = v10;
  *(v7 + 184) = *(v10 - 8);
  *(v7 + 192) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6580, &qword_1BC907740);
  *(v7 + 200) = v11;
  *(v7 + 208) = *(v11 - 8);
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8A112C, v6, 0);
}

uint64_t sub_1BC8A112C()
{
  v27 = v1;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v4 = OUTLINED_FUNCTION_100_1();
  *(v1 + 224) = __swift_project_value_buffer(v4, qword_1EBD067C8);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 296);
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_147();
    *v9 = 136315394;
    if (v8)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v10 = 0xE500000000000000;
    }

    sub_1BC7A9A4C(v0, v10, &v26);

    OUTLINED_FUNCTION_174();
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v16 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v16);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {
    v18 = *(v1 + 296);

    if (v18)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v0 = v2;
      v10 = 0xE500000000000000;
    }
  }

  *(v1 + 232) = v10;
  *(v1 + 240) = v0;
  (*(v1 + 56))();
  sub_1BC8F7FF4();
  v19 = OUTLINED_FUNCTION_81_0();
  v20(v19);
  OUTLINED_FUNCTION_1_25();
  *(v1 + 248) = sub_1BC8B3DC4(v21, v22, &protocol conformance descriptor for HistoryCoalescingManager);
  v23 = swift_task_alloc();
  *(v1 + 256) = v23;
  *v23 = v1;
  OUTLINED_FUNCTION_18_14(v23);
  v24 = OUTLINED_FUNCTION_134_1();

  return MEMORY[0x1EEE6DB90](v24);
}

uint64_t sub_1BC8A1358()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 264) = v0;

  v7 = *(v3 + 88);
  if (v0)
  {
    v8 = sub_1BC8A1AA4;
  }

  else
  {
    v8 = sub_1BC8A1458;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1BC8A1458()
{
  v2 = *(v0 + 16);
  if (!v2)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    goto LABEL_16;
  }

  v3 = *(v0 + 264);
  sub_1BC8F8044();
  if (v3)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    *(v0 + 32) = v3;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (swift_dynamicCast())
    {

      v5 = sub_1BC8F7714();
      sub_1BC8F8204();
      v6 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 240);
        OUTLINED_FUNCTION_9();
        swift_slowAlloc();
        OUTLINED_FUNCTION_23_11();
        v79 = swift_slowAlloc();
        *v1 = 136315138;
        v9 = OUTLINED_FUNCTION_81_0();
        sub_1BC7A9A4C(v9, v10, v11);
        OUTLINED_FUNCTION_157();
        *(v1 + 4) = v8;
        OUTLINED_FUNCTION_49_10();
        OUTLINED_FUNCTION_205();
        _os_log_impl(v12, v13, v14, v15, v16, v17);
        __swift_destroy_boxed_opaque_existential_1(v79);
        v18 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v18);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    }

    else
    {
      v33 = *(v0 + 96);
      v32 = *(v0 + 104);
      v34 = *(v0 + 88);

      sub_1BC7D9558(v34 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v32, &qword_1EBCF63B8, &qword_1BC906990);
      v35 = *(v33 + 48);
      *(v0 + 40) = v3;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
      sub_1BC8F8074();
      OUTLINED_FUNCTION_30_12();
      (*(v37 + 8))(v32 + v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
      OUTLINED_FUNCTION_42();
      (*(v38 + 8))(v32);
    }

LABEL_16:

    OUTLINED_FUNCTION_32_7();

    __asm { BRAA            X1, X16 }
  }

  v19 = *(v2 + 16);
  if (v19)
  {
    *(v0 + 48) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_14_3();
    sub_1BC7DDA7C();
    v20 = 0;
    v21 = *(v0 + 48);
    OUTLINED_FUNCTION_25_1();
    v77 = v2 + v22;
    v78 = v2;
    while (v20 < *(v2 + 16))
    {
      v23 = *(v0 + 152);
      v24 = *(v0 + 72);
      (*(*(v0 + 144) + 16))(v23, v77 + *(*(v0 + 144) + 72) * v20, *(v0 + 136));
      v24(v23);
      v25 = OUTLINED_FUNCTION_125();
      v26(v25);
      *(v0 + 48) = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_37(v27);
        sub_1BC7DDA7C();
        v21 = *(v0 + 48);
      }

      ++v20;
      *(v21 + 16) = v28 + 1;
      OUTLINED_FUNCTION_123();
      sub_1BC7FBC68(v31, v30 + *(v29 + 72) * v28);
      v2 = v78;
      if (v19 == v20)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
    *(v0 + 272) = v21;

    v41 = sub_1BC8F7714();
    sub_1BC8F8204();
    v42 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v42, v43))
    {
      OUTLINED_FUNCTION_11_2();
      v44 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v80 = swift_slowAlloc();
      OUTLINED_FUNCTION_192_0(3.8521e-34);
      *(v44 + 12) = 2080;
      v45 = OUTLINED_FUNCTION_125();
      v48 = sub_1BC7A9A4C(v45, v46, v47);

      *(v44 + 14) = v48;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v49, v50, v51, v52, v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v54 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v54);
    }

    else
    {
    }

    v55 = *(v0 + 296);

    v56 = sub_1BC8F7714();
    sub_1BC8F8204();
    v57 = OUTLINED_FUNCTION_36_0();
    v59 = os_log_type_enabled(v57, v58);
    if (v55)
    {
      if (v59)
      {
        OUTLINED_FUNCTION_9();
        v60 = swift_slowAlloc();
        OUTLINED_FUNCTION_67_3(v60, 3.852e-34);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
        v66 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x1BFB2AA50](v66);
      }

      else
      {
      }

      v74 = swift_task_alloc();
      *(v0 + 288) = v74;
      *v74 = v0;
      OUTLINED_FUNCTION_168_0(v74);
    }

    else
    {
      if (v59)
      {
        OUTLINED_FUNCTION_9();
        v67 = swift_slowAlloc();
        OUTLINED_FUNCTION_67_3(v67, 3.852e-34);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
        v73 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x1BFB2AA50](v73);
      }

      else
      {
      }

      v75 = swift_task_alloc();
      *(v0 + 280) = v75;
      *v75 = v0;
      OUTLINED_FUNCTION_168_0(v75);
    }

    OUTLINED_FUNCTION_32_7();

    sub_1BC8A2454();
  }
}

uint64_t sub_1BC8A1AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  (*(*(v10 + 208) + 8))(*(v10 + 216), *(v10 + 200));
  OUTLINED_FUNCTION_131_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (OUTLINED_FUNCTION_151(v13))
  {

    v14 = sub_1BC8F7714();
    sub_1BC8F8204();
    v15 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v10 + 240);
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      swift_slowAlloc();
      OUTLINED_FUNCTION_147();
      *v11 = 136315138;
      v18 = OUTLINED_FUNCTION_81_0();
      sub_1BC7A9A4C(v18, v19, v20);
      OUTLINED_FUNCTION_157();
      *(v11 + 1) = v17;
      OUTLINED_FUNCTION_49_10();
      OUTLINED_FUNCTION_205();
      _os_log_impl(v21, v22, v23, v24, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v27 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v27);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v28 = OUTLINED_FUNCTION_124_0();
    v29(v28);
  }

  else
  {
    v31 = *(v10 + 96);
    v30 = *(v10 + 104);
    v32 = *(v10 + 88);

    sub_1BC7D9558(v32 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_resultStream, v30, &qword_1EBCF63B8, &qword_1BC906990);
    v33 = *(v31 + 48);
    *(v10 + 40) = v11;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_81_0();
    sub_1BC8F8074();
    OUTLINED_FUNCTION_10();
    (*(v35 + 8))(v30 + v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42();
    (*(v36 + 8))(v30);
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_48_4();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1BC8A1CF8()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  *(v0 + 256) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_18_14(v3);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v5);
}

uint64_t sub_1BC8A1E68()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_170_0();
  OUTLINED_FUNCTION_3_1();
  *v2 = v0;
  *v2 = *v1;

  OUTLINED_FUNCTION_164_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_173();
  *(v0 + 256) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_18_14(v3);
  OUTLINED_FUNCTION_27_9();
  OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6DB90](v5);
}

uint64_t (*sub_1BC8A1FD8(char a1, uint64_t a2))()
{
  if (a1)
  {
    v3 = sub_1BC8A214C;
  }

  else
  {
    v3 = sub_1BC8A208C;
  }

  if (a1)
  {
    v4 = sub_1BC8B47F8;
  }

  else
  {
    v4 = sub_1BC8B41D0;
  }

  OUTLINED_FUNCTION_41_0();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = a2;

  return v4;
}

BOOL sub_1BC8A208C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryItem(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BC8B3E70(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoryItem);
  v4 = swift_getEnumCaseMultiPayload() != 1;
  sub_1BC7C0224();
  return v4;
}

BOOL sub_1BC8A214C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryItem(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BC8B3E70(a1, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HistoryItem);
  v4 = swift_getEnumCaseMultiPayload() == 1;
  sub_1BC7C0224();
  return v4;
}

void sub_1BC8A220C()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v21 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_0();
  v13 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_139();
  if (v3(v5))
  {
    sub_1BC8B3E70(v5, v1, type metadata accessor for HistoryItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v1;
      v18 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      (*(v15 + 16))(v0, &v17[v18], v13);
    }

    else
    {
      (*(v21 + 32))(v11, v1, v6);
      sub_1BC8F7314();
      v19 = OUTLINED_FUNCTION_143();
      v20(v19);
    }

    sub_1BC89A360();
    (*(v15 + 8))(v0, v13);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8A2454()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 249) = v2;
  *(v1 + 112) = v3;
  *(v1 + 120) = v0;
  *(v1 + 248) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  *(v1 + 128) = v5;
  OUTLINED_FUNCTION_25(v5);
  *(v1 + 136) = OUTLINED_FUNCTION_47_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  *(v1 + 144) = v6;
  OUTLINED_FUNCTION_26(v6);
  *(v1 + 152) = v7;
  *(v1 + 160) = OUTLINED_FUNCTION_47_3();
  v8 = sub_1BC8F7324();
  *(v1 + 168) = v8;
  OUTLINED_FUNCTION_26(v8);
  *(v1 + 176) = v9;
  *(v1 + 184) = OUTLINED_FUNCTION_47_3();
  v10 = type metadata accessor for HistoryItem(0);
  *(v1 + 192) = v10;
  OUTLINED_FUNCTION_26(v10);
  *(v1 + 200) = v11;
  *(v1 + 208) = OUTLINED_FUNCTION_200_0();
  *(v1 + 216) = swift_task_alloc();
  v12 = sub_1BC8F7264();
  *(v1 + 224) = v12;
  OUTLINED_FUNCTION_26(v12);
  *(v1 + 232) = v13;
  *(v1 + 240) = OUTLINED_FUNCTION_47_3();
  v14 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BC8A262C()
{
  v92 = v0;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EBD067C8);

  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 249);
    v6 = *(v0 + 112);
    v7 = *(v0 + 248);
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v91[0] = v9;
    *v8 = 134218498;
    *(v8 + 4) = *(v6 + 16);

    *(v8 + 12) = 2080;
    if (v7)
    {
      v10 = 0x736567617373656DLL;
    }

    else
    {
      v10 = 0x736C6C6163;
    }

    if (v7)
    {
      v11 = 0xE800000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_1BC7A9A4C(v10, v11, v91);

    *(v8 + 14) = v12;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v5;
    OUTLINED_FUNCTION_15_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v18 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v18);
    v19 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v19);
  }

  else
  {
  }

  if (*(v0 + 249) == 1)
  {
    v20 = *(v0 + 112);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = *(v0 + 232);
      v23 = *(v0 + 200);
      v24 = *(v0 + 176);
      v91[0] = MEMORY[0x1E69E7CC0];
      v25 = OUTLINED_FUNCTION_14_3();
      sub_1BC7DDB5C(v25, v26, v27);
      v28 = v91[0];
      OUTLINED_FUNCTION_25_1();
      v30 = v20 + v29;
      v87 = (v24 + 32);
      v88 = *(v23 + 72);
      do
      {
        v32 = *(v0 + 208);
        v31 = *(v0 + 216);
        sub_1BC8B3E70(v30, v31, type metadata accessor for HistoryItem);
        sub_1BC8B3E70(v31, v32, type metadata accessor for HistoryItem);
        OUTLINED_FUNCTION_45_2();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v34 = *(v0 + 240);
        if (EnumCaseMultiPayload == 1)
        {
          v35 = *(v0 + 224);
          v36 = **(v0 + 208);
          v37 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          (*(v22 + 16))(v34, &v36[v37], v35);
        }

        else
        {
          (*v87)(*(v0 + 184), *(v0 + 208), *(v0 + 168));
          sub_1BC8F7314();
          v38 = OUTLINED_FUNCTION_45_2();
          v39(v38);
        }

        OUTLINED_FUNCTION_10_21();
        sub_1BC7C0224();
        v91[0] = v28;
        v41 = *(v28 + 16);
        v40 = *(v28 + 24);
        if (v41 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_37(v40);
          sub_1BC7DDB5C(v43, v41 + 1, 1);
          v28 = v91[0];
        }

        *(v28 + 16) = v41 + 1;
        OUTLINED_FUNCTION_25_1();
        (*(v22 + 32))(v28 + v42 + *(v22 + 72) * v41);
        v30 += v88;
        --v21;
      }

      while (v21);
    }

    v46 = *(v0 + 248);
    sub_1BC899C68();
    v44 = sub_1BC8A1FD8(v46 & 1, v47);
    v45 = v48;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v50 = *(v0 + 112);
  v49 = *(v0 + 120);
  v51 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;

  v53 = sub_1BC8A2DEC(v52, v44, v45);
  v54 = sub_1BC8A30E8(v50, v53);

  OUTLINED_FUNCTION_45_2();
  sub_1BC8A38C0();
  v56 = v55;

  if (*(v56 + 16))
  {
    v57 = *(v0 + 120);
    *(v49 + v51) = v54;

    v58 = *(v57 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) + 1;
    *(v57 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = v58;
    v59 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();

    sub_1BC7AA12C(sub_1BC7F723C);
    v60 = *(*(v57 + v59) + 16);
    v61 = OUTLINED_FUNCTION_45_2();
    sub_1BC7AA600(v61, v62);
    v63 = *(v57 + v59);
    *(v63 + 16) = v60 + 1;
    v64 = v63 + 16 * v60;
    *(v64 + 32) = v58;
    *(v64 + 40) = v56;
    *(v57 + v59) = v63;
    swift_endAccess();
    if (v60 >= 0x64)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      sub_1BC8ABD58(v60 - 99);
      swift_endAccess();
    }

    v65 = sub_1BC8F7714();
    v66 = sub_1BC8F8204();

    v89 = v58;
    if (os_log_type_enabled(v65, v66))
    {
      OUTLINED_FUNCTION_9();
      v67 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v68 = swift_slowAlloc();
      v90 = v68;
      v91[0] = v58;
      *v67 = 136315138;
      v91[1] = v56;

      v69 = VersionedChange.description.getter();
      v71 = v70;

      v72 = sub_1BC7A9A4C(v69, v71, &v90);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_1BC7A3000, v65, v66, "Emitting event: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v73 = *(v0 + 136);
    v74 = *(v0 + 128);
    OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, *(v0 + 120));
    v75 = *(v74 + 48);
    *(v0 + 88) = v89;
    *(v0 + 96) = v56;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    sub_1BC8F8064();
    v77 = OUTLINED_FUNCTION_27_0();
    sub_1BC7BE108(v77, v78);
    v79 = OUTLINED_FUNCTION_45_2();
    v80(v79);
    OUTLINED_FUNCTION_30_12();
    (*(v81 + 8))(v73 + v75, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42();
    (*(v82 + 8))(v73);
  }

  else
  {
    v85 = OUTLINED_FUNCTION_27_0();
    sub_1BC7BE108(v85, v86);
  }

  OUTLINED_FUNCTION_27();

  return v83();
}

void *sub_1BC8A2DEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBCF4760 != -1)
  {
LABEL_21:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v4 = sub_1BC8F7734();
  __swift_project_value_buffer(v4, qword_1EBD067C8);

  v5 = sub_1BC8F7714();
  v6 = sub_1BC8F8204();
  v7 = OUTLINED_FUNCTION_36_0();
  v9 = &unk_1BC8FE000;
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_9();
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1[2];

    _os_log_impl(&dword_1BC7A3000, v5, v6, "Pruning %ld buckets", v10, 0xCu);
    v11 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v11);
  }

  else
  {
  }

  if (a2)
  {
    sub_1BC8B2D98();

    v12 = sub_1BC8F7AD4();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_171_0();
    v14 = v13 >> 6;

    v15 = 0;
    while (1)
    {
      v16 = v15;
      if (!v9)
      {
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_178_0();
      v18 = *(a1[6] + 8 * (v17 | (v15 << 6)));

      sub_1BC7F3D28();

      if (v35)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v35 = v12;
        v19 = OUTLINED_FUNCTION_48_1();
        sub_1BC83DE8C(v19, v20, v18);
      }
    }

    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v15 >= v14)
      {
        break;
      }

      v9 = a1[v15 + 8];
      ++v16;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    v21 = sub_1BC8F7714();
    sub_1BC8F8204();
    v22 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_9();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_121_1(v24, 3.852e-34);

      OUTLINED_FUNCTION_88_3();
      _os_log_impl(v25, v26, v27, v28, v29, v30);
      v31 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v31);
    }

    else
    {
    }

    sub_1BC7BE108(a2, a3);
  }

  else
  {

    return a1;
  }

  return v12;
}

void *sub_1BC8A30E8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1EBCF4760 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v6 = sub_1BC8F7734();
    __swift_project_value_buffer(v6, qword_1EBD067C8);

    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F8204();
    v9 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_11_2();
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = *(a1 + 16);

      *(v11 + 12) = 2048;
      *(v11 + 14) = a2[2];

      _os_log_impl(&dword_1BC7A3000, v7, v8, "Merging %ld items into %ld existing buckets", v11, 0x16u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    else
    {
    }

    sub_1BC8A4F64();
    isUniquelyReferenced_nonNull_native = v3;
    if (v3)
    {
      break;
    }

    v3 = v12;
    v14 = v12 + 64;
    OUTLINED_FUNCTION_64_4();
    if (v19 != v20)
    {
      v17 = ~v18;
    }

    a1 = v17 & v15;
    v21 = (v16 + 63) >> 6;

    v23 = a1;
    v24 = 0;
    v72 = v14;
    v73 = v22;
    v74 = v21;
    if (a1)
    {
      do
      {
LABEL_15:
        v77 = v23;
        v75 = v24;
        v26 = (v24 << 9) | (8 * __clz(__rbit64(v23)));
        v27 = *(*(v3 + 48) + v26);
        a1 = *(v27 + 16);
        v76 = *(*(v3 + 56) + v26);
        if (a1)
        {
          v70 = isUniquelyReferenced_nonNull_native;
          v71 = a2;
          *&v86 = MEMORY[0x1E69E7CC0];

          sub_1BC7AD404(0, a1, 0);
          v28 = v86;
          v3 = sub_1BC83053C();
          v31 = 0;
          v83 = v27 + 56;
          v79 = v27 + 64;
          v80 = v27;
          if ((v3 & 0x8000000000000000) == 0)
          {
            while (v3 < 1 << *(v27 + 32))
            {
              v32 = v3 >> 6;
              if ((*(v83 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
              {
                goto LABEL_66;
              }

              if (*(v27 + 36) != v29)
              {
                goto LABEL_67;
              }

              v87 = v30;
              v81 = v31;
              v82 = v29;
              v33 = *(v27 + 48) + 32 * v3;
              a2 = *v33;
              isUniquelyReferenced_nonNull_native = *(v33 + 8);
              *&v86 = v28;
              v35 = *(v28 + 16);
              v34 = *(v28 + 24);

              if (v35 >= v34 >> 1)
              {
                sub_1BC7AD404(v34 > 1, v35 + 1, 1);
                v28 = v86;
              }

              *(v28 + 16) = v35 + 1;
              v36 = v28 + 16 * v35;
              *(v36 + 32) = a2;
              *(v36 + 40) = isUniquelyReferenced_nonNull_native;
              if (v87)
              {
                goto LABEL_78;
              }

              v27 = v80;
              v37 = 1 << *(v80 + 32);
              if (v3 >= v37)
              {
                goto LABEL_68;
              }

              v38 = *(v83 + 8 * v32);
              if ((v38 & (1 << v3)) == 0)
              {
                goto LABEL_69;
              }

              if (*(v80 + 36) != v82)
              {
                goto LABEL_70;
              }

              v39 = v38 & (-2 << (v3 & 0x3F));
              if (v39)
              {
                v37 = __clz(__rbit64(v39)) | v3 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                a2 = (v32 << 6);
                v40 = v32 + 1;
                v41 = (v79 + 8 * v32);
                while (v40 < (v37 + 63) >> 6)
                {
                  v43 = *v41++;
                  v42 = v43;
                  a2 += 8;
                  ++v40;
                  if (v43)
                  {
                    sub_1BC7FBED8(v3, v82, 0);
                    v37 = a2 + __clz(__rbit64(v42));
                    goto LABEL_33;
                  }
                }

                sub_1BC7FBED8(v3, v82, 0);
              }

LABEL_33:
              v31 = v81 + 1;
              if (v81 + 1 == a1)
              {
                isUniquelyReferenced_nonNull_native = v70;
                a2 = v71;
                goto LABEL_38;
              }

              v30 = 0;
              v29 = *(v80 + 36);
              v3 = v37;
              if (v37 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v28 = MEMORY[0x1E69E7CC0];
LABEL_38:
        *&v86 = v28;

        sub_1BC7F8024(&v86);
        v78 = (v77 - 1) & v77;

        v44 = v86;
        if (a2[2] && (sub_1BC83CAE8(v86), (v45 & 1) != 0))
        {

          sub_1BC7F3F64();

          v84 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1BC83CAE8(v44);
          OUTLINED_FUNCTION_159_0();
          if (v20)
          {
            goto LABEL_76;
          }

          v48 = v46;
          a1 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
          if (sub_1BC8F8734())
          {
            v49 = sub_1BC83CAE8(v44);
            if ((a1 & 1) != (v50 & 1))
            {
              goto LABEL_79;
            }

            v48 = v49;
          }

          isUniquelyReferenced_nonNull_native = 0;
          v21 = v74;
          if ((a1 & 1) == 0)
          {
            OUTLINED_FUNCTION_37_10(&a2[v48 >> 6]);
            *(a2[6] + 8 * v48) = v44;
            *(a2[7] + 16 * v48) = v84;
            OUTLINED_FUNCTION_160_0();
            if (v20)
            {
              goto LABEL_77;
            }

            goto LABEL_58;
          }

          *(a2[7] + 16 * v48) = v84;
        }

        else
        {
          if (!*(v76 + 16))
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);

            __break(1u);
LABEL_79:
            result = sub_1BC8F8B44();
            __break(1u);
            return result;
          }

          a1 = v44;
          *&v86 = v76;

          sub_1BC7F80E4(&v86);

          v85 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v86 = a2;
          sub_1BC83CAE8(v44);
          OUTLINED_FUNCTION_159_0();
          if (v20)
          {
            goto LABEL_74;
          }

          v53 = v51;
          v54 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
          if (sub_1BC8F8734())
          {
            v55 = sub_1BC83CAE8(v44);
            if ((v54 & 1) != (v56 & 1))
            {
              goto LABEL_79;
            }

            v53 = v55;
          }

          isUniquelyReferenced_nonNull_native = 0;
          v21 = v74;
          if ((v54 & 1) == 0)
          {
            a2 = v86;
            OUTLINED_FUNCTION_37_10(v86 + 8 * (v53 >> 6));
            *(a2[6] + 8 * v53) = v44;
            v58 = (a2[7] + 16 * v53);
            *v58 = v27;
            v58[1] = v85;
            OUTLINED_FUNCTION_160_0();
            if (v20)
            {
              goto LABEL_75;
            }

LABEL_58:
            a2[2] = v59;
            goto LABEL_59;
          }

          a2 = v86;
          v57 = (*(v86 + 56) + 16 * v53);
          *v57 = v27;
          v57[1] = v85;
        }

LABEL_59:
        v14 = v72;
        v3 = v73;
        v24 = v75;
        v23 = v78;
      }

      while (v78);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v21)
      {

        v60 = sub_1BC8F7714();
        v61 = sub_1BC8F8204();
        if (os_log_type_enabled(v60, v61))
        {
          OUTLINED_FUNCTION_9();
          v62 = swift_slowAlloc();
          OUTLINED_FUNCTION_121_1(v62, 3.852e-34);
          OUTLINED_FUNCTION_88_3();
          _os_log_impl(v63, v64, v65, v66, v67, v68);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        return a2;
      }

      v23 = *(v14 + 8 * v25);
      ++v24;
      if (v23)
      {
        v24 = v25;
        goto LABEL_15;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  return a2;
}

void sub_1BC8A38C0()
{
  OUTLINED_FUNCTION_29_0();
  v125 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_172_0();
  v137 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v133 = v9 - v8;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v124[-v11];
  v13 = type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_0();
  v148 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  v136 = (v16 - v17);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_4();
  v138 = v19;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_4();
  v151 = v21;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v124[-v23];
  v153 = MEMORY[0x1E69E7CD0];
  v25 = (v4 + 8);
  OUTLINED_FUNCTION_45_0();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  v132 = (v6 + 32);
  v135 = (v6 + 8);
  v129 = v4;

  v31 = v30;
  v32 = 0;
  v130 = MEMORY[0x1E69E7CC8];
  v134 = MEMORY[0x1E69E7CC8];
  v139 = v13;
  v149 = v24;
  v128 = v4 + 8;
  v127 = v31;
  v126 = v1;
  if (v28)
  {
    while (1)
    {
LABEL_6:
      v34 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v35 = v34 | (v32 << 6);
      v25 = *(v129[6] + 8 * v35);
      v142 = *(v129[7] + 16 * v35);
      v36 = v1[2];

      v140 = v142;

      v150 = *(&v142 + 1);

      v141 = v25;
      if (v36 && (v37 = sub_1BC83CAE8(v25), (v38 & 1) != 0))
      {
        v39 = (v1[7] + 16 * v37);
        v40 = *v39;
        v4 = v39[1];

        v131 = v40;
        sub_1BC7F5C04(v140, v40);
        if (v41)
        {
          v6 = v150[2];
          if (v6 == v4[2])
          {
            if (v6 && v150 != v4)
            {
              v42 = 0;
              OUTLINED_FUNCTION_25_1();
              v146 = v4;
              v147 = v150 + v43;
              v145 = v4 + v43;
              v143 = v6;
              do
              {
                v33 = v150[2];
                if (v42 >= v33)
                {
                  goto LABEL_100;
                }

                v0 = *(v148 + 72) * v42;
                OUTLINED_FUNCTION_6_18();
                sub_1BC8B3E70(&v147[v0], v24, v44);
                v33 = v4[2];
                if (v42 >= v33)
                {
                  goto LABEL_101;
                }

                OUTLINED_FUNCTION_20_13();
                v45 = v151;
                sub_1BC8B3E70(&v145[v0], v151, v46);
                v0 = *(v144 + 48);
                sub_1BC8B3E70(v24, v12, v4);
                sub_1BC8B3E70(v45, &v12[v0], v4);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  OUTLINED_FUNCTION_6_18();
                  v47 = v136;
                  sub_1BC8B3E70(v12, v136, v48);
                  v49 = *v47;
                  if (swift_getEnumCaseMultiPayload() != 1)
                  {

                    OUTLINED_FUNCTION_20_13();
                    sub_1BC7C0224();
                    sub_1BC7C0224();
                    goto LABEL_32;
                  }

                  v50 = *&v12[v0];
                  sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
                  OUTLINED_FUNCTION_27_0();
                  v51 = sub_1BC8F83A4();

                  v0 = type metadata accessor for HistoryItem;
                  sub_1BC7C0224();
                  v24 = v149;
                  OUTLINED_FUNCTION_27_0();
                  sub_1BC7C0224();
                  if ((v51 & 1) == 0)
                  {
                    goto LABEL_23;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_6_18();
                  v52 = v138;
                  sub_1BC8B3E70(v12, v138, v53);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    OUTLINED_FUNCTION_20_13();
                    sub_1BC7C0224();
                    sub_1BC7C0224();
                    (*v135)(v138, v137);
LABEL_32:
                    v6 = v131;
                    sub_1BC7F1790(v12, &qword_1EBCF4FC8, &qword_1BC9083B0);
                    v1 = v126;
                    goto LABEL_33;
                  }

                  v54 = v133;
                  v55 = v137;
                  (*v132)(v133, &v12[v0], v137);
                  v56 = MEMORY[0x1BFB28700](v52, v54);
                  v0 = *v135;
                  v57 = OUTLINED_FUNCTION_125();
                  (v0)(v57);
                  sub_1BC7C0224();
                  v24 = v149;
                  sub_1BC7C0224();
                  (v0)(v52, v55);
                  v25 = v141;
                  if ((v56 & 1) == 0)
                  {
LABEL_23:
                    OUTLINED_FUNCTION_10_21();
                    sub_1BC7C0224();
                    v1 = v126;
                    v6 = v131;
LABEL_33:

                    goto LABEL_35;
                  }
                }

                ++v42;
                OUTLINED_FUNCTION_10_21();
                sub_1BC7C0224();
                v6 = v143;
                v4 = v146;
              }

              while (v143 != v42);
            }

            v1 = v126;
            goto LABEL_45;
          }
        }

        v6 = v131;
LABEL_35:

        v4 = v134;
        swift_isUniquelyReferenced_nonNull_native();
        v152 = v4;
        sub_1BC83CAE8(v25);
        OUTLINED_FUNCTION_52_5();
        if (__OFADD__(v33, v69))
        {
          goto LABEL_103;
        }

        v6 = v67;
        v25 = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
        OUTLINED_FUNCTION_144_0();
        if (sub_1BC8F8734())
        {
          v4 = v152;
          v70 = sub_1BC83CAE8(v141);
          v24 = v149;
          if ((v25 & 1) != (v71 & 1))
          {
            goto LABEL_108;
          }

          v6 = v70;
          if (v25)
          {
LABEL_43:

            v72 = v152;
            v134 = v152;
LABEL_44:
            v73 = (v72[7] + 16 * v6);
            v6 = *v73;
            *v73 = v142;

            goto LABEL_45;
          }
        }

        else
        {
          v24 = v149;
          if (v25)
          {
            goto LABEL_43;
          }
        }

        OUTLINED_FUNCTION_37_10(&v152[v6 >> 6]);
        OUTLINED_FUNCTION_87_4();
        if (v66)
        {
          goto LABEL_104;
        }

        v134 = v65;
      }

      else
      {
        v4 = v130;
        swift_isUniquelyReferenced_nonNull_native();
        v152 = v4;
        sub_1BC83CAE8(v25);
        OUTLINED_FUNCTION_52_5();
        if (__OFADD__(v60, v61))
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          sub_1BC8F8B44();
          __break(1u);
          return;
        }

        v6 = v58;
        v62 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
        OUTLINED_FUNCTION_144_0();
        if (sub_1BC8F8734())
        {
          v4 = v152;
          v63 = sub_1BC83CAE8(v141);
          v24 = v149;
          if ((v62 & 1) != (v64 & 1))
          {
            goto LABEL_108;
          }

          v6 = v63;
          if (v62)
          {
LABEL_48:

            v72 = v152;
            v130 = v152;
            goto LABEL_44;
          }
        }

        else
        {
          v24 = v149;
          if (v62)
          {
            goto LABEL_48;
          }
        }

        OUTLINED_FUNCTION_37_10(&v152[v6 >> 6]);
        OUTLINED_FUNCTION_87_4();
        if (v66)
        {
          goto LABEL_107;
        }

        v130 = v65;
      }

      v65[2] = v33;
LABEL_45:
      v25 = v128;
      v31 = v127;
      if (!v28)
      {
        goto LABEL_2;
      }
    }
  }

  while (1)
  {
LABEL_2:
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (v33 >= v31)
    {
      break;
    }

    v28 = *(v25 + 8 * v33);
    ++v32;
    if (v28)
    {
      v32 = v33;
      goto LABEL_6;
    }
  }

  v28 = v129;

  isUniquelyReferenced_nonNull_native = v130;
  if ((v125 & 1) == 0)
  {
LABEL_61:
    v28 = isUniquelyReferenced_nonNull_native + 64;
    OUTLINED_FUNCTION_45_0();
    v25 = v83 & v82;
    v85 = (v84 + 63) >> 6;

    v6 = 0;
    v32 = &unk_1EBCF6560;
    v0 = &type metadata for GroupedHistoryItem;
    while (v25)
    {
LABEL_67:
      v25 &= v25 - 1;
      v86 = OUTLINED_FUNCTION_196_0();
      v87 = sub_1BC83CAE8(v86);
      v4 = v88;

      if (v4)
      {
        v89 = v134;
        LODWORD(v151) = swift_isUniquelyReferenced_nonNull_native();
        v152 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
        OUTLINED_FUNCTION_144_0();
        sub_1BC8F8734();
        isUniquelyReferenced_nonNull_native = v152;

        v4 = *(*(isUniquelyReferenced_nonNull_native + 56) + 16 * v87);

        sub_1BC8B2D98();
        v134 = isUniquelyReferenced_nonNull_native;
        sub_1BC8F8754();
      }
    }

    while (1)
    {
      v33 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_98;
      }

      if (v33 >= v85)
      {
        v90 = v130;

        v0 = v153;
        v25 = v153 + 56;
        OUTLINED_FUNCTION_45_0();
        v93 = v92 & v91;
        v32 = (v94 + 63) >> 6;

        v6 = 0;
        v28 = v134;
        v151 = v0;
        while (v93)
        {
LABEL_75:
          v95 = OUTLINED_FUNCTION_196_0();
          sub_1BC83CAE8(v95);
          if (v96)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v152 = v90;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
            OUTLINED_FUNCTION_144_0();
            v0 = v151;
            sub_1BC8F8734();
            v90 = v152;

            sub_1BC8B2D98();
            sub_1BC8F8754();
          }

          v93 &= v93 - 1;
          v97 = sub_1BC83CAE8(isUniquelyReferenced_nonNull_native);
          v4 = v98;

          if (v4)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v152 = v28;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6560, &qword_1BC907710);
            OUTLINED_FUNCTION_144_0();
            sub_1BC8F8734();
            v28 = v152;

            v4 = *(*(v28 + 56) + 16 * v97);

            sub_1BC8B2D98();
            OUTLINED_FUNCTION_48_1();
            sub_1BC8F8754();
          }
        }

        while (1)
        {
          v33 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_99;
          }

          if (v33 >= v32)
          {

            if (!v90[2])
            {
              v6 = MEMORY[0x1E69E7CC0];
              goto LABEL_83;
            }

            v4 = sub_1BC899BD8(v99);
            sub_1BC7F73FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v6 = v100;
            v25 = *(v100 + 16);
            v33 = *(v100 + 24);
            v32 = v25 + 1;
            if (v25 >= v33 >> 1)
            {
              goto LABEL_105;
            }

            goto LABEL_81;
          }

          v93 = *(v25 + 8 * v33);
          ++v6;
          if (v93)
          {
            v6 = v33;
            goto LABEL_75;
          }
        }
      }

      v25 = *(v28 + 8 * v33);
      ++v6;
      if (v25)
      {
        v6 = v33;
        goto LABEL_67;
      }
    }
  }

  v25 = (v1 + 8);
  OUTLINED_FUNCTION_45_0();
  v0 = v76 & v75;
  v32 = (v77 + 63) >> 6;

  v78 = 0;
  while (v0)
  {
LABEL_56:
    v79 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v6 = *(v1[6] + ((v78 << 9) | (8 * v79)));
    v80 = *(v28 + 16);

    if (v80 && (v4 = v28, sub_1BC83CAE8(v6), (v81 & 1) != 0))
    {
    }

    else
    {
      v4 = &v153;
      sub_1BC8AEE10(&v152, v6);
    }
  }

  while (1)
  {
    v33 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
      break;
    }

    if (v33 >= v32)
    {

      goto LABEL_61;
    }

    v0 = *(v25 + 8 * v33);
    ++v78;
    if (v0)
    {
      v78 = v33;
      goto LABEL_56;
    }
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  v110 = OUTLINED_FUNCTION_37(v33);
  sub_1BC7F73FC(v110, v32, 1, v6);
  v6 = v111;
LABEL_81:
  *(v6 + 16) = v32;
  v101 = v6 + 16 * v25;
  *(v101 + 32) = v4;
  *(v101 + 40) = 0;
LABEL_83:
  if (*(v28 + 16))
  {

    v103 = sub_1BC899BD8(v102);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v112 = OUTLINED_FUNCTION_128_1();
      sub_1BC7F73FC(v112, v113, v114, v6);
      v6 = v115;
    }

    v105 = *(v6 + 16);
    v104 = *(v6 + 24);
    if (v105 >= v104 >> 1)
    {
      v116 = OUTLINED_FUNCTION_37(v104);
      sub_1BC7F73FC(v116, v105 + 1, 1, v6);
      v6 = v117;
    }

    *(v6 + 16) = v105 + 1;
    v106 = v6 + 16 * v105;
    *(v106 + 32) = v103;
    *(v106 + 40) = 1;
  }

  if (*(v0 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = OUTLINED_FUNCTION_128_1();
      sub_1BC7F73FC(v118, v119, v120, v6);
      v6 = v121;
    }

    v108 = *(v6 + 16);
    v107 = *(v6 + 24);
    if (v108 >= v107 >> 1)
    {
      v122 = OUTLINED_FUNCTION_37(v107);
      sub_1BC7F73FC(v122, v108 + 1, 1, v6);
      v6 = v123;
    }

    *(v6 + 16) = v108 + 1;
    v109 = v6 + 16 * v108;
    *(v109 + 32) = v0;
    *(v109 + 40) = 2;
  }

  else
  {
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8A46C0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch);
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch;
  if ((v2 & 1) != 0 || *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch))
  {
    v6 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingCallRefetch) | ~v2;
    *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_pendingMessageRefetch) = 0;
    *(v1 + v3) = 0;
    OUTLINED_FUNCTION_1_25();
    sub_1BC8B3DC4(v7, v8, &protocol conformance descriptor for HistoryCoalescingManager);
    v9 = swift_task_alloc();
    v0[3] = v9;
    *(v9 + 16) = v2;
    *(v9 + 24) = v1;
    *(v9 + 32) = v6 & 1;
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_1BC8A4830;
    OUTLINED_FUNCTION_53_7();
    OUTLINED_FUNCTION_112();

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_1BC8A4830()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_120_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8A4944(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 49) = a5;
  *(v5 + 48) = a3;
  *(v5 + 16) = a2;
  *(v5 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8A49EC, a4, 0);
}

uint64_t sub_1BC8A49EC()
{
  OUTLINED_FUNCTION_32();
  if (*(v1 + 48) == 1)
  {
    v0 = *(v1 + 24);
    v3 = *(v1 + 32);
    OUTLINED_FUNCTION_204_0();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
    OUTLINED_FUNCTION_41_0();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_188(v8);
    sub_1BC89D9E0(v3, &unk_1BC9076F0, v2);
    sub_1BC7F1790(v3, &qword_1EBCF63D0, &qword_1BC902140);
  }

  if (*(v1 + 49) == 1)
  {
    v0 = *(v1 + 24);
    v9 = *(v1 + 32);
    OUTLINED_FUNCTION_204_0();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    OUTLINED_FUNCTION_41_0();
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_188(v14);
    sub_1BC89D9E0(v9, &unk_1BC9076E0, v2);
    sub_1BC7F1790(v9, &qword_1EBCF63D0, &qword_1BC902140);
  }

  OUTLINED_FUNCTION_1_25();
  sub_1BC8B3DC4(v15, v16, &protocol conformance descriptor for HistoryCoalescingManager);
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_183_0(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6550, &qword_1BC9076D0);
  OUTLINED_FUNCTION_127_0();
  *v0 = v18;
  OUTLINED_FUNCTION_118_0();
  v19 = OUTLINED_FUNCTION_143();

  return MEMORY[0x1EEE6D898](v19, v20, v21, v22, v23, v24, v25, v26);
}

void sub_1BC8A4B9C()
{
  OUTLINED_FUNCTION_22();
  v63 = v1;
  OUTLINED_FUNCTION_114();
  v3 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v55 = (v7 - v8);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_4();
  v54 = v10;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_4();
  v61 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v48 - v21;
  v22 = MEMORY[0x1E69E7CD0];
  v66 = MEMORY[0x1E69E7CD0];
  v52 = *(v0 + 16);
  if (!v52)
  {
    goto LABEL_21;
  }

  v49 = v2;
  v62 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;
  v23 = type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_26(v23);
  OUTLINED_FUNCTION_123();
  v51 = v24;
  v65 = v5 + 16;
  v56 = v5 + 32;
  v57 = (v5 + 8);
  OUTLINED_FUNCTION_42_12();
  v50 = *(v26 + 72);
  v27 = v61;
  v58 = v3;
  v59 = v5;
  while (2)
  {
    v53 = v25 + 1;
    HistoryItem.handles.getter();
    v30 = v28 + 56;
    v29 = *(v28 + 56);
    v64 = v28;
    v31 = 1 << *(v28 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & v29;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v34 = 0;
    v35 = (v31 + 63) >> 6;
    while (v33)
    {
LABEL_12:
      v37 = *(v5 + 16);
      v38 = v60;
      v37(v60, *(v64 + 48) + *(v5 + 72) * (__clz(__rbit64(v33)) | (v34 << 6)), v3);
      (*(v5 + 32))(v27, v38, v3);
      sub_1BC8F73A4();
      if (!v39)
      {
        sub_1BC8F73C4();
      }

      v40 = sub_1BC8F7C84();
      v42 = v41;

      v33 &= v33 - 1;
      if (*(*(v63 + v62) + 16))
      {

        sub_1BC803CBC(v40, v42);
        v44 = v43;

        if ((v44 & 1) == 0)
        {
          goto LABEL_18;
        }

        v3 = v58;
        v27 = v61;
        (*v57)(v61, v58);
        v5 = v59;
      }

      else
      {

LABEL_18:
        v45 = v55;
        v27 = v61;
        v3 = v58;
        v37(v55, v61, v58);
        v46 = v54;
        sub_1BC8AE91C(v54, v45);
        v47 = *v57;
        (*v57)(v46, v3);
        v47(v27, v3);
        v5 = v59;
      }
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        return;
      }

      if (v36 >= v35)
      {
        break;
      }

      v33 = *(v30 + 8 * v36);
      ++v34;
      if (v33)
      {
        v34 = v36;
        goto LABEL_12;
      }
    }

    v25 = v53;
    if (v53 != v52)
    {
      continue;
    }

    break;
  }

  v22 = v66;
LABEL_21:
  if (*(v22 + 16))
  {
    sub_1BC8A5C20(v22, v14, v15, v16, v17, v18, v19, v20, v48, v49);
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC8A4F64()
{
  OUTLINED_FUNCTION_22();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v102 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v99 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  isUniquelyReferenced_nonNull_native = v10 - v9;
  v12 = type metadata accessor for HistoryItem(0);
  v13 = OUTLINED_FUNCTION_26(v12);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v80 - v17;
  if (qword_1EBCF4760 != -1)
  {
LABEL_43:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v19 = sub_1BC8F7734();
  v20 = __swift_project_value_buffer(v19, qword_1EBD067C8);

  v85 = v20;
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F8204();
  v23 = OUTLINED_FUNCTION_36_0();
  v25 = os_log_type_enabled(v23, v24);
  v96 = v4;
  v101 = isUniquelyReferenced_nonNull_native;
  if (v25)
  {
    OUTLINED_FUNCTION_11_2();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v27 = swift_slowAlloc();
    v103 = v27;
    *v26 = 136315394;
    OUTLINED_FUNCTION_31_0();
    *(v26 + 4) = sub_1BC7A9A4C(0xD000000000000018, v28, &v103);
    *(v26 + 12) = 2048;
    *(v26 + 14) = *(v6 + 16);

    _os_log_impl(&dword_1BC7A3000, v21, v22, "%s: Creating map for %ld items", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v4 = v96;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {
  }

  sub_1BC8A4B9C();
  if (v3)
  {
LABEL_40:
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v29 = v15;
    v80[1] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6520, &unk_1BC9076A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55E0, &qword_1BC900680);
    sub_1BC8B3E0C();
    v31 = sub_1BC8F7AD4();
    v91 = *(v6 + 16);
    if (!v91)
    {
      v32 = 0;
      goto LABEL_37;
    }

    v80[0] = v30;
    v32 = 0;
    v100 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;
    OUTLINED_FUNCTION_25_1();
    v87 = v34;
    v88 = v18;
    v89 = v2;
    v90 = v6 + v34;
    v35 = *(v29 + 72);
    v97 = (v99 + 8);
    v98 = v99 + 16;
    v86 = v35;
    while (1)
    {
      v93 = v32;
      v94 = v31;
      v92 = v33 + 1;
      OUTLINED_FUNCTION_6_18();
      sub_1BC8B3E70(v36, v18, v37);
      HistoryItem.handles.getter();
      v2 = v38;
      v6 = v38 + 56;
      OUTLINED_FUNCTION_108_1();
      v3 = v40 & v39;

      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v15 = 0;
      v18 = ((v35 + 63) >> 6);
      v95 = MEMORY[0x1E69E7CC0];
LABEL_9:
      isUniquelyReferenced_nonNull_native = v101;
      if (v3)
      {
        goto LABEL_14;
      }

      while (1)
      {
LABEL_10:
        v41 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v41 >= v18)
        {
          break;
        }

        v3 = *(v6 + 8 * v41);
        ++v15;
        if (v3)
        {
          v15 = v41;
          while (1)
          {
LABEL_14:
            (*(v99 + 16))(isUniquelyReferenced_nonNull_native, *(v2 + 48) + *(v99 + 72) * (__clz(__rbit64(v3)) | (v15 << 6)), v102);
            sub_1BC8F73A4();
            if (!v42)
            {
              sub_1BC8F73C4();
            }

            v43 = sub_1BC8F7C84();
            v45 = v44;

            v3 &= v3 - 1;
            v46 = *(v4 + v100);
            if (*(v46 + 16))
            {

              v47 = sub_1BC803CBC(v43, v45);
              v49 = v48;

              if (v49)
              {
                v50 = (*(v46 + 56) + 32 * v47);
                v51 = v50[1];
                v84 = *v50;
                v53 = v50[2];
                v52 = v50[3];
                v54 = *v97;
                v83 = v51;

                v82 = v53;

                v81 = v52;

                v54(v101, v102);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_128_1();
                  sub_1BC7F7334();
                  v95 = v61;
                }

                v4 = v96;
                v56 = *(v95 + 16);
                v55 = *(v95 + 24);
                if (v56 >= v55 >> 1)
                {
                  OUTLINED_FUNCTION_37(v55);
                  sub_1BC7F7334();
                  v95 = v62;
                }

                v57 = v95;
                *(v95 + 16) = v56 + 1;
                v58 = (v57 + 32 * v56);
                v59 = v83;
                v58[4] = v84;
                v58[5] = v59;
                v60 = v81;
                v58[6] = v82;
                v58[7] = v60;
                goto LABEL_9;
              }

              v4 = v96;
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = v101;
            (*v97)(v101, v102);
            if (!v3)
            {
              goto LABEL_10;
            }
          }
        }
      }

      sub_1BC899E9C(v95);
      v6 = v63;
      OUTLINED_FUNCTION_6_18();
      v18 = v88;
      v2 = v89;
      sub_1BC8B3E70(v88, v89, v64);
      sub_1BC7BE108(v93, 0);
      v65 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BC83CB14(v6);
      OUTLINED_FUNCTION_52_5();
      v3 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_42;
      }

      v70 = v66;
      v71 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6538, &unk_1BC9076B0);
      v31 = v65;
      if ((sub_1BC8F8734() & 1) == 0)
      {
        goto LABEL_31;
      }

      v72 = sub_1BC83CB14(v6);
      if ((v71 & 1) != (v73 & 1))
      {
        break;
      }

      v70 = v72;
LABEL_31:
      if (v71)
      {
      }

      else
      {
        sub_1BC83E8D0(v70, v6, MEMORY[0x1E69E7CC0], v65);
      }

      v74 = *(v65 + 56) + 8 * v70;
      sub_1BC7AA12C(sub_1BC7F726C);
      v75 = *(*v74 + 16);
      sub_1BC7AA600(v75, sub_1BC7F726C);
      OUTLINED_FUNCTION_10_21();
      sub_1BC7C0224();
      v76 = *v74;
      *(v76 + 16) = v75 + 1;
      v35 = v86;
      sub_1BC7FBC68(v2, v76 + v87 + v75 * v86);
      v32 = sub_1BC8A56EC;
      v33 = v92;
      v4 = v96;
      if (v92 == v91)
      {
LABEL_37:
        v77 = sub_1BC8F7714();
        v78 = sub_1BC8F8204();
        if (os_log_type_enabled(v77, v78))
        {
          OUTLINED_FUNCTION_9();
          v79 = swift_slowAlloc();
          OUTLINED_FUNCTION_121_1(v79, 3.852e-34);
          _os_log_impl(&dword_1BC7A3000, v77, v78, "Created map with %ld key/value pairs", v79, 0xCu);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        sub_1BC7BE108(v32, 0);
        goto LABEL_40;
      }
    }

    sub_1BC8F8B44();
    __break(1u);
  }
}

void sub_1BC8A56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_29_0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v61 = *MEMORY[0x1E69E9840];
  if (!sub_1BC7C0454(v12))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B0, &unk_1BC9083A0);
    v49 = sub_1BC8F73D4();
    OUTLINED_FUNCTION_0();
    v51 = v50;
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1BC8FC230;
    (*(v51 + 16))(v53 + v52, v15, v49);
    sub_1BC8C1870();
    OUTLINED_FUNCTION_24();

    Person.init(contacts:handles:)(v54, v55, v56);
    return;
  }

  v18 = v13 & 0xC000000000000001;
  sub_1BC8E2358();
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v19 = MEMORY[0x1BFB29A00](0, v13);
  }

  else
  {
    v19 = *(v13 + 32);
  }

  v20 = v19;
  v21 = sub_1BC7C0454(v13);
  v22 = MEMORY[0x1E69E7CC0];
  v58[1] = v13;
  v59 = v17;
  if (v21)
  {
    v23 = v21;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDD64(0, v21 & ~(v21 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
    }

    v24 = 0;
    v22 = v60;
    do
    {
      if (v18)
      {
        v25 = MEMORY[0x1BFB29A00](v24, v13);
      }

      else
      {
        v25 = *(v13 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = sub_1BC8A5B44();

      v60 = v22;
      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        v30 = OUTLINED_FUNCTION_37(v28);
        sub_1BC7DDD64(v30, v29 + 1, 1);
        v22 = v60;
      }

      ++v24;
      *(v22 + 16) = v29 + 1;
      *(v22 + 8 * v29 + 32) = v27;
    }

    while (v23 != v24);
  }

  v58[0] = v20;
  v17 = sub_1BC8A5B44();
  v31 = 0;
  v18 = *(v22 + 16);
  v13 = 1;
  while (1)
  {
    if (v18 == v31)
    {

      Person.init(contacts:handles:)(v48, v17, v59);

      OUTLINED_FUNCTION_24();
      return;
    }

    if (v31 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v32 = *(v17 + 32);
    v33 = v32 & 0x3F;
    v34 = ((1 << v32) + 63) >> 6;
    swift_bridgeObjectRetain_n();

    if (v33 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();

    OUTLINED_FUNCTION_175();
    v47 = sub_1BC8B1550(v43, v44, v45, v46);
    v41 = v34;
    if (v34)
    {
      goto LABEL_31;
    }

    v42 = v47;

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
LABEL_19:
    v17 = v42;

    ++v31;
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1BC8D83A8(0, v34, v58 - ((8 * v34 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_175();
  sub_1BC8D9EA4(v36, v37, v38, v39);
  v41 = v34;
  if (!v34)
  {
    v42 = v40;

    goto LABEL_19;
  }

  swift_willThrow();

  __break(1u);
LABEL_31:

  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1BFB2AA50]();
  __break(1u);
}

uint64_t sub_1BC8A5B44()
{
  v6 = MEMORY[0x1E69E7CD0];
  v1 = [v0 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6500, &qword_1BC907690);
  v2 = sub_1BC8F7E54();

  sub_1BC89A734(v2);

  v3 = [v0 emailAddressStrings];
  v4 = sub_1BC8F7E54();

  sub_1BC89A514(v4);

  return v6;
}

void sub_1BC8A5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_22();
  v166 = v11;
  v14 = v10;
  OUTLINED_FUNCTION_172_0();
  v15 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  v146 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_4();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_4();
  v149 = v23;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v24);
  v145 = &v139 - v25;
  v26 = v10[27];
  v27 = v10[28];
  __swift_project_boxed_opaque_existential_1(v10 + 24, v26);
  v28 = v166;
  v29 = (*(v27 + 24))(v13, v10[29], v26, v27);
  if (v28)
  {
    goto LABEL_53;
  }

  v142 = v29;
  v140 = 0;
  v152 = v12;
  v30 = v13;
  v31 = v13 + 56;
  OUTLINED_FUNCTION_108_1();
  v148 = v33 & v32;
  v34 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_handleToPerson;

  v166 = v34;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v35 = 0;
  v36 = (v13 + 63) >> 6;
  v37 = v146;
  v157 = v146 + 32;
  v158 = v146 + 16;
  v156 = (v146 + 8);
  v160 = v14;
  v161 = v20;
  v38 = v145;
  v144 = v31;
  v143 = v36;
  v141 = v30;
  v150 = v15;
  while (1)
  {
    v39 = v148;
    if (!v148)
    {
      while (1)
      {
        v40 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_55;
        }

        if (v40 >= v36)
        {
          break;
        }

        v39 = *(v31 + 8 * v40);
        ++v35;
        if (v39)
        {
          goto LABEL_8;
        }
      }

LABEL_53:
      OUTLINED_FUNCTION_23();
      return;
    }

    v40 = v35;
LABEL_8:
    v41 = v39;
    v147 = v40;
    v42 = v37[9];
    v43 = *(v30 + 48) + v42 * (__clz(__rbit64(v39)) | (v40 << 6));
    v154 = v37[2];
    v155 = v42;
    v154(v38, v43, v15);
    v44 = v37[4];
    v45 = v149;
    v153 = v44;
    v44(v149, v38, v15);
    sub_1BC8F73A4();
    if (!v46)
    {
      sub_1BC8F73C4();
    }

    v47 = sub_1BC8F7C84();
    v49 = v48;

    v148 = (v41 - 1) & v41;
    if (!*(*(v14 + v166) + 16))
    {
      break;
    }

    sub_1BC803CBC(v47, v49);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      goto LABEL_14;
    }

    v52 = OUTLINED_FUNCTION_48_1();
    v53(v52);
    v35 = v147;
LABEL_51:
    v37 = v146;
    v38 = v145;
    v31 = v144;
    v36 = v143;
  }

LABEL_14:
  sub_1BC8F73A4();
  if (!v54)
  {
    sub_1BC8F73C4();
  }

  v55 = sub_1BC8F7C84();
  v57 = v56;

  sub_1BC8E73C0(v55, v57, v142);
  v59 = v58;

  if (v59)
  {
    v66 = v59;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  sub_1BC8A56FC(v45, v66, v60, v61, v62, v63, v64, v65, v139, v140, v141, v142);

  v67 = v168;
  v163 = v167;
  v69 = v169;
  v68 = v170;
  v70 = sub_1BC8F73A4();
  v162 = v68;
  v164 = v69;
  v165 = v67;
  if (v71)
  {
    v72 = v70;
    v73 = v71;
    OUTLINED_FUNCTION_158_0();
    if (v74)
    {
      v75 = v166;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();

      v68 = v162;

      swift_isUniquelyReferenced_nonNull_native();
      v76 = OUTLINED_FUNCTION_86_1();
      sub_1BC83DFD0(v76, v77, v78, v79, v72, v73);
      *(v14 + v75) = a10;

      swift_endAccess();
    }

    else
    {

      v68 = v162;
    }
  }

  v80 = sub_1BC8F73C4();
  v82 = v81;
  v83 = v166;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_isUniquelyReferenced_nonNull_native();
  v84 = OUTLINED_FUNCTION_86_1();
  sub_1BC83DFD0(v84, v85, v86, v87, v80, v82);
  *(v14 + v83) = a10;

  swift_endAccess();
  v88 = v68 + 56;
  OUTLINED_FUNCTION_40_10();
  OUTLINED_FUNCTION_171_0();
  v159 = v89 >> 6;

  v90 = 0;
  v91 = v152;
  v92 = v161;
  v151 = v68 + 56;
  while (2)
  {
    if (v83)
    {
LABEL_29:
      v154(v91, *(v68 + 48) + (__clz(__rbit64(v83)) | (v90 << 6)) * v155, v15);
      v153(v92, v91, v15);
      v94 = sub_1BC8F73A4();
      if (!v95)
      {
        goto LABEL_41;
      }

      v96 = v94;
      v97 = v95;
      OUTLINED_FUNCTION_158_0();
      if (!v98)
      {

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_133_1();
      v99 = OUTLINED_FUNCTION_48_1();
      sub_1BC803CBC(v99, v100);
      OUTLINED_FUNCTION_52_5();
      if (__OFADD__(v103, v104))
      {
        goto LABEL_58;
      }

      v105 = v101;
      v106 = v102;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF65A0, &qword_1BC9077C0);
      if (OUTLINED_FUNCTION_193_0(v107))
      {
        v108 = OUTLINED_FUNCTION_48_1();
        v110 = sub_1BC803CBC(v108, v109);
        if ((v106 & 1) != (v111 & 1))
        {
          goto LABEL_60;
        }

        v105 = v110;
        if ((v106 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if ((v106 & 1) == 0)
      {
LABEL_35:
        OUTLINED_FUNCTION_37_10(&a10[v105 >> 6]);
        v112 = (a10[6] + 16 * v105);
        *v112 = v96;
        v112[1] = v97;
        v113 = v164;
        OUTLINED_FUNCTION_184_0((a10[7] + 32 * v105));
        v114 = v162;
        *(v115 + 16) = v113;
        *(v115 + 24) = v114;
        OUTLINED_FUNCTION_160_0();
        if (v117)
        {
          goto LABEL_59;
        }

        a10[2] = v116;

        goto LABEL_40;
      }

      OUTLINED_FUNCTION_137_0();
      v118 = v164;
      OUTLINED_FUNCTION_184_0(v119);
      v120 = v162;
      *(v121 + 16) = v118;
      *(v121 + 24) = v120;

LABEL_40:
      OUTLINED_FUNCTION_195_0();
LABEL_41:
      v122 = sub_1BC8F73C4();
      v124 = v123;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_133_1();
      sub_1BC803CBC(v122, v124);
      OUTLINED_FUNCTION_52_5();
      if (__OFADD__(v127, v128))
      {
        goto LABEL_56;
      }

      v129 = v125;
      v14 = v126;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF65A0, &qword_1BC9077C0);
      if (OUTLINED_FUNCTION_193_0(v130))
      {
        v131 = sub_1BC803CBC(v122, v124);
        v92 = v161;
        if ((v14 & 1) != (v132 & 1))
        {
          goto LABEL_60;
        }

        v129 = v131;
        if ((v14 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v92 = v161;
        if ((v14 & 1) == 0)
        {
LABEL_45:
          OUTLINED_FUNCTION_37_10(&a10[v129 >> 6]);
          v133 = (a10[6] + 16 * v129);
          *v133 = v122;
          v133[1] = v124;
          v134 = v164;
          OUTLINED_FUNCTION_184_0((a10[7] + 32 * v129));
          v68 = v162;
          *(v135 + 16) = v134;
          *(v135 + 24) = v68;
          OUTLINED_FUNCTION_160_0();
          if (v117)
          {
            goto LABEL_57;
          }

          a10[2] = v136;

          goto LABEL_49;
        }
      }

      OUTLINED_FUNCTION_137_0();
      v14 = v164;
      OUTLINED_FUNCTION_184_0(v137);
      v68 = v162;
      *(v138 + 16) = v14;
      *(v138 + 24) = v68;

LABEL_49:
      v83 &= v83 - 1;
      OUTLINED_FUNCTION_195_0();
      v15 = v150;
      (*v156)(v92, v150);
      v91 = v152;
      v88 = v151;
      continue;
    }

    break;
  }

  while (1)
  {
    v93 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v93 >= v159)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (*v156)(v149, v15);

      v35 = v147;
      v30 = v141;
      goto LABEL_51;
    }

    v83 = *(v88 + 8 * v93);
    ++v90;
    if (v83)
    {
      v90 = v93;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1BC8F8B44();
  __break(1u);
}

uint64_t sub_1BC8A65A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC7B0248;

  return sub_1BC8A6644();
}

uint64_t sub_1BC8A6644()
{
  OUTLINED_FUNCTION_5();
  v1[13] = v2;
  v1[14] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  v1[15] = v3;
  OUTLINED_FUNCTION_25(v3);
  v1[16] = OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  v1[17] = v4;
  OUTLINED_FUNCTION_26(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_47_3();
  v6 = type metadata accessor for HistoryItem(0);
  v1[20] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_47_3();
  v8 = sub_1BC8F7264();
  v1[23] = v8;
  OUTLINED_FUNCTION_26(v8);
  v1[24] = v9;
  v1[25] = OUTLINED_FUNCTION_47_3();
  v10 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1BC8A67BC()
{
  v108 = v1;
  if (qword_1EBCF4760 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v3 = sub_1BC8F7734();
    v4 = __swift_project_value_buffer(v3, qword_1EBD067C8);

    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();

    v101 = v4;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v1 + 104);
      OUTLINED_FUNCTION_11_2();
      swift_slowAlloc();
      v8 = OUTLINED_FUNCTION_153_0();
      v107[0] = v8;
      *v0 = 136446466;
      OUTLINED_FUNCTION_31_0();
      v10 = sub_1BC7A9A4C(0xD000000000000017, v9, v107);
      OUTLINED_FUNCTION_119_1(v10);
      v11 = sub_1BC7C0454(v7);
      v12 = MEMORY[0x1E69E7CC0];
      if (v11)
      {
        v13 = v11;
        v105 = MEMORY[0x1E69E7CC0];
        v14 = OUTLINED_FUNCTION_75_3();
        sub_1BC7DDB5C(v14, v15, v16);
        if (v13 < 0)
        {
          goto LABEL_46;
        }

        v97 = v8;
        HIDWORD(v98) = v6;
        v99 = v0;
        v100 = v5;
        v17 = 0;
        v18 = *(v1 + 192);
        OUTLINED_FUNCTION_179_0();
        v103 = v18 + 32;
        v104 = v19;
        do
        {
          if (v104)
          {
            v20 = MEMORY[0x1BFB29A00](v17, *(v1 + 104));
          }

          else
          {
            v20 = *(v102 + 8 * v17);
          }

          v21 = v20;
          v22 = *(v1 + 200);
          v23 = *(v1 + 184);
          v24 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          (*(v18 + 16))(v22, &v21[v24], v23);

          OUTLINED_FUNCTION_180_0();
          if (v26)
          {
            sub_1BC7DDB5C(v25 > 1, v21, 1);
            v12 = v105;
          }

          ++v17;
          *(v12 + 16) = v21;
          OUTLINED_FUNCTION_25_1();
          (*(v18 + 32))(v12 + v27 + *(v18 + 72) * v22);
        }

        while (v13 != v17);
        v5 = v100;
        v0 = v99;
        LOBYTE(v6) = BYTE4(v98);
      }

      MEMORY[0x1BFB29280](v12, *(v1 + 184));
      v2 = v28;

      v29 = OUTLINED_FUNCTION_48_1();
      v32 = sub_1BC7A9A4C(v29, v30, v31);

      *(v0 + 14) = v32;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "%{public}s: %s", v0, 0x16u);
      OUTLINED_FUNCTION_82_4();
      v33 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v33);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v34 = *(v1 + 104);
    v35 = *(v1 + 112) + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest;
    v105 = *(v35 + *(type metadata accessor for MessageStoreFetchRequest(0) + 20));
    sub_1BC7A5AB4(v105);
    sub_1BC7E70B4(v34, v36, v37, v38, v39, v40, v41, v42, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107[0], v107[1], v107[2], v107[3], v107[4]);
    v0 = v43;
    sub_1BC7B0EFC(v105);
    if (!sub_1BC7C0454(v0))
    {

      v54 = sub_1BC8F7714();
      sub_1BC8F8204();
      v55 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v55, v56))
      {
        OUTLINED_FUNCTION_45();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_4();
        _os_log_impl(v57, v58, v59, v60, v61, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      goto LABEL_39;
    }

    v44 = sub_1BC7C0454(v0);
    if (!v44)
    {
      break;
    }

    v45 = v44;
    v105 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_75_3();
    sub_1BC7DDA7C();
    if (v45 < 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    v46 = 0;
    v47 = *(v1 + 168);
    v48 = v105;
    v2 = v0 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v49 = MEMORY[0x1BFB29A00](v46, v0);
        goto LABEL_23;
      }

      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v46 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v49 = *(v0 + 8 * v46 + 32);
LABEL_23:
      **(v1 + 176) = v49;
      swift_storeEnumTagMultiPayload();
      v105 = v48;
      v51 = *(v48 + 16);
      v50 = *(v48 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_37(v50);
        sub_1BC7DDA7C();
        v48 = v105;
      }

      ++v46;
      *(v48 + 16) = v51 + 1;
      OUTLINED_FUNCTION_25_1();
      sub_1BC7FBC68(v53, v48 + v52 + *(v47 + 72) * v51);
      if (v45 == v46)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v62 = *(v1 + 112);
  v63 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v64 = *(v62 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);

  v65 = sub_1BC8A30E8(v48, v64);

  OUTLINED_FUNCTION_125();
  sub_1BC8A38C0();
  v67 = v66;

  if (*(v67 + 16))
  {
    v68 = *(v1 + 112);
    *(v62 + v63) = v65;

    OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
    v69 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();

    OUTLINED_FUNCTION_60_7();
    sub_1BC7AA12C(v70);
    v71 = *(*(v68 + v69) + 16);
    v72 = OUTLINED_FUNCTION_143();
    sub_1BC7AA600(v72, v73);
    OUTLINED_FUNCTION_109_1();
    swift_endAccess();
    if (v71 >= 0x64)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      v74 = OUTLINED_FUNCTION_103_0();
      sub_1BC8ABD58(v74);
      swift_endAccess();
    }

    v75 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_199_0();
    if (os_log_type_enabled(v75, v71))
    {
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      v76 = swift_slowAlloc();
      v106 = v67;
      v107[0] = v76;
      *v68 = 136315138;
      v105 = v2;

      VersionedChange.description.getter();
      OUTLINED_FUNCTION_37_3();

      v77 = OUTLINED_FUNCTION_12_5();
      sub_1BC7A9A4C(v77, v78, v79);
      OUTLINED_FUNCTION_100();

      *(v68 + 4) = &v105;
      OUTLINED_FUNCTION_205();
      _os_log_impl(v80, v81, v82, v83, v84, v85);
      __swift_destroy_boxed_opaque_existential_1(v76);
      v86 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v86);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v87 = *(v1 + 128);
    v88 = *(v1 + 120);
    OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, *(v1 + 112));
    v89 = *(v88 + 48);
    *(v1 + 88) = v2;
    *(v1 + 96) = v67;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_150_0(v1 + 88);
    v91 = OUTLINED_FUNCTION_57_3();
    v92(v91);
    OUTLINED_FUNCTION_30_12();
    (*(v93 + 8))(v87 + v89, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42();
    (*(v94 + 8))(v87);
  }

  else
  {
  }

LABEL_39:

  OUTLINED_FUNCTION_27();

  v95();
}

uint64_t sub_1BC8A705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC7B0248;

  return sub_1BC8A70F8();
}

uint64_t sub_1BC8A70F8()
{
  OUTLINED_FUNCTION_5();
  v1[16] = v2;
  v1[17] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  v1[18] = v3;
  OUTLINED_FUNCTION_25(v3);
  v1[19] = OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  v1[20] = v4;
  OUTLINED_FUNCTION_26(v4);
  v1[21] = v5;
  v1[22] = OUTLINED_FUNCTION_47_3();
  v6 = type metadata accessor for HistoryItem(0);
  v1[23] = v6;
  OUTLINED_FUNCTION_26(v6);
  v1[24] = v7;
  v1[25] = OUTLINED_FUNCTION_47_3();
  v8 = sub_1BC8F7264();
  v1[26] = v8;
  OUTLINED_FUNCTION_26(v8);
  v1[27] = v9;
  v1[28] = OUTLINED_FUNCTION_200_0();
  v1[29] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1BC8A727C()
{
  v126 = v2;
  if (qword_1EBCF4760 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v3 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v3, qword_1EBD067C8);

    v119 = v0;
    v4 = sub_1BC8F7714();
    v5 = sub_1BC8F8204();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v2 + 128);
      OUTLINED_FUNCTION_11_2();
      swift_slowAlloc();
      v7 = OUTLINED_FUNCTION_153_0();
      v125[0] = v7;
      *v1 = 136446466;
      OUTLINED_FUNCTION_31_0();
      v9 = sub_1BC7A9A4C(0xD000000000000019, v8, v125);
      OUTLINED_FUNCTION_119_1(v9);
      v10 = sub_1BC7C0454(v6);
      v11 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v12 = v10;
        v123 = MEMORY[0x1E69E7CC0];
        v13 = OUTLINED_FUNCTION_75_3();
        sub_1BC7DDB5C(v13, v14, v15);
        if (v12 < 0)
        {
          goto LABEL_55;
        }

        v115 = v7;
        HIDWORD(v116) = v5;
        v117 = v1;
        v118 = v4;
        v16 = 0;
        v17 = *(v2 + 216);
        OUTLINED_FUNCTION_179_0();
        v121 = v17 + 32;
        v122 = v18;
        do
        {
          if (v122)
          {
            v19 = MEMORY[0x1BFB29A00](v16, *(v2 + 128));
          }

          else
          {
            v19 = *(v120 + 8 * v16);
          }

          v20 = v19;
          v21 = *(v2 + 232);
          v22 = *(v2 + 208);
          v23 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          (*(v17 + 16))(v21, &v20[v23], v22);

          OUTLINED_FUNCTION_180_0();
          if (v25)
          {
            sub_1BC7DDB5C(v24 > 1, v20, 1);
            v11 = v123;
          }

          ++v16;
          *(v11 + 16) = v20;
          OUTLINED_FUNCTION_25_1();
          (*(v17 + 32))(v11 + v26 + *(v17 + 72) * v21);
        }

        while (v12 != v16);
        v1 = v117;
        v4 = v118;
      }

      MEMORY[0x1BFB29280](v11, *(v2 + 208));

      v27 = OUTLINED_FUNCTION_48_1();
      v30 = sub_1BC7A9A4C(v27, v28, v29);

      *(v1 + 14) = v30;
      _os_log_impl(&dword_1BC7A3000, v4, v5, "%{public}s: %s", v1, 0x16u);
      OUTLINED_FUNCTION_82_4();
      v31 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v31);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v32 = *(v2 + 128);
    v33 = *(v2 + 136) + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest;
    v123 = *(v33 + *(type metadata accessor for MessageStoreFetchRequest(0) + 20));
    sub_1BC7A5AB4(v123);
    sub_1BC7E70B4(v32, v34, v35, v36, v37, v38, v39, v40, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0], v125[1], v125[2], v125[3], v125[4]);
    v42 = v41;
    sub_1BC7B0EFC(v123);
    if (!sub_1BC7C0454(v42))
    {
      break;
    }

    v121 = v42;
    v43 = sub_1BC7C0454(v42);
    v44 = MEMORY[0x1E69E7CC0];
    v122 = v43;
    if (v43)
    {
      v123 = MEMORY[0x1E69E7CC0];
      v45 = OUTLINED_FUNCTION_14_3();
      sub_1BC7DDB5C(v45, v46, v47);
      if (v43 < 0)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      v48 = 0;
      v49 = *(v2 + 216);
      v50 = v123;
      do
      {
        if ((v121 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x1BFB29A00](v48, v121);
        }

        else
        {
          v51 = *(v121 + 8 * v48 + 32);
        }

        v52 = v51;
        v53 = *(v2 + 224);
        v54 = *(v2 + 208);
        v55 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*(v49 + 16))(v53, &v52[v55], v54);

        v123 = v50;
        v57 = *(v50 + 16);
        v56 = *(v50 + 24);
        if (v57 >= v56 >> 1)
        {
          v59 = OUTLINED_FUNCTION_37(v56);
          sub_1BC7DDB5C(v59, v57 + 1, 1);
          v50 = v123;
        }

        ++v48;
        *(v50 + 16) = v57 + 1;
        OUTLINED_FUNCTION_25_1();
        (*(v49 + 32))(v50 + v58 + *(v49 + 72) * v57);
        v43 = v122;
      }

      while (v122 != v48);
      v44 = MEMORY[0x1E69E7CC0];
    }

    v68 = *(v2 + 136);
    sub_1BC899C68();
    v70 = v69;
    v120 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
    OUTLINED_FUNCTION_21_4();
    v71 = swift_allocObject();
    *(v71 + 16) = v70;

    sub_1BC8A2DEC(v72, sub_1BC8B45E8, v71);

    if (!v43)
    {
LABEL_38:

      v81 = OUTLINED_FUNCTION_125();
      v83 = sub_1BC8A30E8(v81, v82);

      sub_1BC8A38C0();
      v85 = v84;

      if (*(v85 + 16))
      {
        v86 = *(v2 + 136);
        *(v68 + v120) = v83;

        OUTLINED_FUNCTION_70_4(OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion);
        v87 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();

        OUTLINED_FUNCTION_60_7();
        sub_1BC7AA12C(v88);
        v89 = *(*(v86 + v87) + 16);
        v90 = OUTLINED_FUNCTION_143();
        sub_1BC7AA600(v90, v91);
        OUTLINED_FUNCTION_109_1();
        swift_endAccess();
        if (v89 >= 0x64)
        {
          OUTLINED_FUNCTION_37_5();
          swift_beginAccess();
          v92 = OUTLINED_FUNCTION_103_0();
          sub_1BC8ABD58(v92);
          swift_endAccess();
        }

        v93 = sub_1BC8F7714();
        sub_1BC8F8204();
        OUTLINED_FUNCTION_199_0();
        if (os_log_type_enabled(v93, v89))
        {
          OUTLINED_FUNCTION_9();
          swift_slowAlloc();
          OUTLINED_FUNCTION_23_11();
          v94 = swift_slowAlloc();
          v124 = v85;
          v125[0] = v94;
          *v86 = 136315138;
          v123 = v44;

          VersionedChange.description.getter();
          OUTLINED_FUNCTION_37_3();

          v95 = OUTLINED_FUNCTION_12_5();
          sub_1BC7A9A4C(v95, v96, v97);
          OUTLINED_FUNCTION_100();

          *(v86 + 4) = &v123;
          OUTLINED_FUNCTION_205();
          _os_log_impl(v98, v99, v100, v101, v102, v103);
          __swift_destroy_boxed_opaque_existential_1(v94);
          v104 = OUTLINED_FUNCTION_17_11();
          MEMORY[0x1BFB2AA50](v104);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        v105 = *(v2 + 152);
        v106 = *(v2 + 144);
        OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, *(v2 + 136));
        v107 = *(v106 + 48);
        *(v2 + 112) = v44;
        *(v2 + 120) = v85;
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
        OUTLINED_FUNCTION_150_0(v2 + 112);
        v109 = OUTLINED_FUNCTION_57_3();
        v110(v109);
        OUTLINED_FUNCTION_30_12();
        (*(v111 + 8))(v105 + v107, v108);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
        OUTLINED_FUNCTION_42();
        (*(v112 + 8))(v105);
      }

      else
      {
      }

      goto LABEL_47;
    }

    v123 = v44;
    OUTLINED_FUNCTION_14_3();
    sub_1BC7DDA7C();
    if (v43 < 0)
    {
      goto LABEL_54;
    }

    v118 = v68;
    v73 = 0;
    v74 = *(v2 + 192);
    v75 = v123;
    v0 = v121;
    v1 = v121 & 0xC000000000000001;
    while (1)
    {
      if (v1)
      {
        v76 = MEMORY[0x1BFB29A00](v73, v0);
        goto LABEL_35;
      }

      if ((v73 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v73 >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v76 = *(v0 + 8 * v73 + 32);
LABEL_35:
      **(v2 + 200) = v76;
      swift_storeEnumTagMultiPayload();
      v123 = v75;
      v78 = *(v75 + 16);
      v77 = *(v75 + 24);
      v44 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        OUTLINED_FUNCTION_37(v77);
        sub_1BC7DDA7C();
        v0 = v121;
        v75 = v123;
      }

      ++v73;
      *(v75 + 16) = v44;
      OUTLINED_FUNCTION_25_1();
      sub_1BC7FBC68(v80, v75 + v79 + *(v74 + 72) * v78);
      if (v122 == v73)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v60 = sub_1BC8F7714();
  sub_1BC8F8204();
  v61 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_45();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_4();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

LABEL_47:

  OUTLINED_FUNCTION_27();

  v113();
}

double sub_1BC8A7CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v6 = sub_1BC8F7E54();

  a5(v6);

  return result;
}

uint64_t sub_1BC8A7D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC7B0248;

  return sub_1BC8A7DF8();
}

uint64_t sub_1BC8A7DF8()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1BC8F7264();
  v1[7] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[8] = v4;
  v1[9] = OUTLINED_FUNCTION_47_3();
  v5 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8A7E9C()
{
  v1 = v0[5];
  v2 = v0[6] + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_messageRequest;
  v45 = *(v2 + *(type metadata accessor for MessageStoreFetchRequest(0) + 20));
  sub_1BC7A5AB4(v45);
  sub_1BC7E70B4(v1, v3, v4, v5, v6, v7, v8, v9, v39, v40, v41, v43, v45, v48, v49, v50, v51, v52, v53, v54, v55, v0, v56, v57);
  v11 = v10;
  sub_1BC7B0EFC(v46);
  if (!sub_1BC7C0454(v11))
  {

    if (qword_1EBCF4760 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  v12 = sub_1BC7C0454(v11);
  if (!v12)
  {

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v13 = v12;
  v47 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDB5C(0, v12 & ~(v12 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_0_25();
    swift_once();
LABEL_13:
    v25 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v25, qword_1EBD067C8);
    v26 = sub_1BC8F7714();
    sub_1BC8F8204();
    v27 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_45();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_4();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_32_7();

    __asm { BRAA            X1, X16 }
  }

  v14 = 0;
  v15 = v0[8];
  v16 = v47;
  v42 = v11 & 0xC000000000000001;
  v44 = v11;
  do
  {
    if (v42)
    {
      v17 = MEMORY[0x1BFB29A00](v14, v11);
    }

    else
    {
      v17 = *(v11 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v0[9];
    v20 = v0[7];
    v21 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    (*(v15 + 16))(v19, &v18[v21], v20);

    v23 = *(v47 + 16);
    v22 = *(v47 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1BC7DDB5C(v22 > 1, v23 + 1, 1);
    }

    ++v14;
    *(v47 + 16) = v23 + 1;
    OUTLINED_FUNCTION_25_1();
    (*(v15 + 32))(v47 + v24 + *(v15 + 72) * v23);
    v11 = v44;
  }

  while (v13 != v14);

LABEL_19:
  v0[10] = v16;
  v36 = swift_task_alloc();
  v0[11] = v36;
  *v36 = v0;
  v36[1] = sub_1BC8A81C0;
  OUTLINED_FUNCTION_32_7();

  return sub_1BC8A84B0();
}

uint64_t sub_1BC8A81C0()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BC8A8334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;

  sub_1BC8333D4();
}

uint64_t sub_1BC8A8414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC7B0248;

  return sub_1BC8A84B0();
}

uint64_t sub_1BC8A84B0()
{
  OUTLINED_FUNCTION_5();
  v1[10] = v2;
  v1[11] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63B8, &qword_1BC906990);
  v1[12] = v3;
  OUTLINED_FUNCTION_25(v3);
  v1[13] = OUTLINED_FUNCTION_47_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63E8, &qword_1BC906A60);
  v1[14] = v4;
  OUTLINED_FUNCTION_26(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_47_3();
  v6 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8A8590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_185_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38();
  a20 = v22;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v26 = v22[10];
  v27 = sub_1BC8F7734();
  __swift_project_value_buffer(v27, qword_1EBD067C8);

  v28 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_199_0();
  if (os_log_type_enabled(v28, v23))
  {
    v29 = v22[10];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    a11 = OUTLINED_FUNCTION_153_0();
    *v26 = 136446466;
    OUTLINED_FUNCTION_31_0();
    v31 = sub_1BC7A9A4C(0xD00000000000001DLL, v30, &a11);
    OUTLINED_FUNCTION_119_1(v31);
    v32 = sub_1BC8F7264();
    v33 = MEMORY[0x1BFB29280](v29, v32);
    v35 = sub_1BC7A9A4C(v33, v34, &a11);

    *(v26 + 14) = v35;
    _os_log_impl(&dword_1BC7A3000, v28, v23, "%{public}s: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v36 = v22[10];
  v37 = v22[11];
  v38 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets;
  v39 = *(v37 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_buckets);
  OUTLINED_FUNCTION_21_4();
  v40 = swift_allocObject();
  *(v40 + 16) = v36;

  v42 = sub_1BC8A2DEC(v41, sub_1BC8B45E0, v40);

  sub_1BC8A38C0();
  OUTLINED_FUNCTION_157();
  if (*(v39 + 16))
  {
    v43 = v22[11];
    *(v37 + v38) = v42;

    v44 = *(v43 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) + 1;
    *(v43 + OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventVersion) = v44;
    v45 = OBJC_IVAR____TtC20FaceTimeMessageStore24HistoryCoalescingManager_eventLog;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();

    OUTLINED_FUNCTION_9_14();
    sub_1BC7AA12C(v46);
    v47 = *(*(v43 + v45) + 16);
    v48 = OUTLINED_FUNCTION_27_0();
    sub_1BC7AA600(v48, v49);
    v50 = *(v43 + v45);
    *(v50 + 16) = v47 + 1;
    v51 = v50 + 16 * v47;
    *(v51 + 32) = v44;
    *(v51 + 40) = v39;
    *(v43 + v45) = v50;
    swift_endAccess();
    if (v47 > 0x63)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      sub_1BC8ABD58(v47 - 99);
      swift_endAccess();
    }

    v52 = sub_1BC8F7714();
    sub_1BC8F8204();
    OUTLINED_FUNCTION_199_0();
    if (os_log_type_enabled(v52, (v47 - 99)))
    {
      OUTLINED_FUNCTION_9();
      swift_slowAlloc();
      OUTLINED_FUNCTION_23_11();
      a10 = swift_slowAlloc();
      a11 = v44;
      *v47 = 136315138;
      a12 = v39;

      VersionedChange.description.getter();
      OUTLINED_FUNCTION_37_3();

      v53 = OUTLINED_FUNCTION_12_5();
      sub_1BC7A9A4C(v53, v54, v55);
      OUTLINED_FUNCTION_100();

      *(v47 + 4) = &a11;
      OUTLINED_FUNCTION_205();
      _os_log_impl(v56, v57, v58, v59, v60, v61);
      __swift_destroy_boxed_opaque_existential_1(a10);
      v62 = OUTLINED_FUNCTION_17_11();
      MEMORY[0x1BFB2AA50](v62);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v63 = v22[13];
    v64 = v22[12];
    OUTLINED_FUNCTION_205_0(&qword_1EBCF63B8, &qword_1BC906990, v22[11]);
    v65 = *(v64 + 48);
    v22[8] = v44;
    v22[9] = v39;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C8, &unk_1BC9069A0);
    OUTLINED_FUNCTION_150_0((v22 + 8));
    v67 = OUTLINED_FUNCTION_57_3();
    v68(v67);
    OUTLINED_FUNCTION_30_12();
    (*(v69 + 8))(v63 + v65, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63C0, &qword_1BC906998);
    OUTLINED_FUNCTION_42();
    (*(v70 + 8))(v63);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_186_0();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BC8A8A5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0168;

  return sub_1BC8A8AEC(v1);
}

uint64_t sub_1BC8A8B04()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD00000000000001DLL, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_138_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_78_5(v15);
  OUTLINED_FUNCTION_40_4();

  return sub_1BC89E848();
}

uint64_t sub_1BC8A8C94()
{
  OUTLINED_FUNCTION_140();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_2();
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_0();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_1BC8333D4();
}

uint64_t sub_1BC8A8D50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0248;

  return sub_1BC8A8DE0(v1);
}

uint64_t sub_1BC8A8DF8()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EBD067C8);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v5 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v5 + 4) = sub_1BC7A9A4C(0xD00000000000001BLL, v6, v7);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v0);
    v13 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v13);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_138_1(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_78_5(v15);
  OUTLINED_FUNCTION_40_4();

  return sub_1BC89E848();
}

uint64_t sub_1BC8A8F68(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1BC8A8FAC(uint64_t a1)
{
  v2 = sub_1BC8F7324();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoryItem(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BC8F7264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8B3E70(a1, v8, type metadata accessor for HistoryItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v8;
    v14 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v13[v14], v9);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BC8F7314();
    (*(v3 + 8))(v5, v2);
  }

  sub_1BC89A360();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  return v16 & 1;
}

BOOL sub_1BC8A9220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F7324();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BC8F7264();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8B3E70(a1, v10, type metadata accessor for HistoryItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v10;
    v16 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v15[v16], v11);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1BC8F7314();
    v17 = (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x1EEE9AC00](v17);
  *(&v20 - 2) = v14;
  v18 = sub_1BC7ECB3C(sub_1BC7E8C64, (&v20 - 4), a2);
  (*(v12 + 8))(v14, v11);
  return v18;
}

uint64_t HistoryCoalescingManager.deleteAllRecentCalls()()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_1BC8F7344();
  v1[3] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC8A9578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_71();
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v12, qword_1EBD067C8);
  v13 = sub_1BC8F7714();
  sub_1BC8F8204();
  v14 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_5();
    *v16 = 136315138;
    OUTLINED_FUNCTION_9_3();
    *(v16 + 4) = sub_1BC7A9A4C(0xD000000000000016, v17, v18);
    OUTLINED_FUNCTION_4();
    _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v24 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v24);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v26 = v10[4];
  v25 = v10[5];
  v27 = v10[3];
  __swift_project_boxed_opaque_existential_1((v10[2] + 112), *(v10[2] + 136));
  (*(v26 + 104))(v25, *MEMORY[0x1E69934F8], v27);
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_133(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_8_4(v29);
  OUTLINED_FUNCTION_48_4();

  return MEMORY[0x1EEDF2730](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1BC8A9720()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  v5[7] = v0;

  if (v0)
  {
    (*(v5[4] + 8))(v5[5], v5[3]);
    v9 = OUTLINED_FUNCTION_16_13();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    (*(v5[4] + 8))(v5[5], v5[3]);

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t HistoryCoalescingManager.deleteRecentCalls(uniqueIDs:)()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1BC8F7344();
  v1[4] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_47_3();
  v5 = OUTLINED_FUNCTION_16_13();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8A992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_71();
  v44 = v10;
  if (qword_1EBCF4760 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = v10[2];
  v13 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v13, qword_1EBD067C8);

  v14 = sub_1BC8F7714();
  sub_1BC8F8204();
  OUTLINED_FUNCTION_202_0();
  if (OUTLINED_FUNCTION_137())
  {
    v15 = v10[2];
    OUTLINED_FUNCTION_11_2();
    swift_slowAlloc();
    v43 = OUTLINED_FUNCTION_115_1();
    *v12 = 136315394;
    OUTLINED_FUNCTION_31_0();
    v17 = sub_1BC7A9A4C(0xD00000000000001DLL, v16, &v43);
    OUTLINED_FUNCTION_74_4(v17);
    v18 = sub_1BC8F7264();
    v19 = MEMORY[0x1BFB29280](v15, v18);
    sub_1BC7A9A4C(v19, v20, &v43);
    OUTLINED_FUNCTION_206_0();
    *(v12 + 14) = v11;
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_203_0(v21, v22, v23, v24);
    OUTLINED_FUNCTION_82_4();
    v25 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v25);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50](v26);
  }

  v28 = v10[5];
  v27 = v10[6];
  v29 = v10[3];
  v30 = v10[4];
  v31 = v10[2];
  v32 = v29[17];
  v33 = v29[18];
  __swift_project_boxed_opaque_existential_1(v29 + 14, v32);
  OUTLINED_FUNCTION_21_4();
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *v27 = v34;
  (*(v28 + 104))(v27, *MEMORY[0x1E6993508], v30);

  v35 = swift_task_alloc();
  v10[7] = v35;
  *v35 = v10;
  v35[1] = sub_1BC8A9B50;
  v41 = v10[6];

  return MEMORY[0x1EEDF2730](v41, v32, v33, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_1BC8A9B50()
{
  OUTLINED_FUNCTION_73_4();
  OUTLINED_FUNCTION_22_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;
  *v4 = *v1;
  v3[8] = v0;

  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {
    (*(v5 + 8))(v2[6], v6);
    OUTLINED_FUNCTION_71_3();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    (*(v5 + 8))(v2[6], v6);

    OUTLINED_FUNCTION_71_3();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}