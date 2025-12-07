uint64_t sub_267DCBB34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 457) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DCBC20()
{
  sub_267EF4908();
  sub_267EF7C18();
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_44_0();
  sub_267EF8238();
  sub_267EF8348();
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[44];
  v4 = v0[28];
  (*(v0[39] + 8))(v0[40], v0[38]);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  sub_267BD3DDC(v3, v4 + *(v2 + 28));
  OUTLINED_FUNCTION_4_48(v0[30]);
  v8 = OUTLINED_FUNCTION_38_0();
  v9(v8);
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v1) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v1 & 1) != 0 || (OUTLINED_FUNCTION_4_48(v0[30]), v10 = OUTLINED_FUNCTION_38_0(), v11(v10), v12 = v0[21], __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]), OUTLINED_FUNCTION_38_0(), v13 = sub_267EF3C28(), __swift_destroy_boxed_opaque_existential_0(v0 + 17), (v13))
  {
LABEL_3:
    OUTLINED_FUNCTION_36_18();

    OUTLINED_FUNCTION_17();
    goto LABEL_4;
  }

  v16 = OUTLINED_FUNCTION_69_8();
  if (!v17)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  OUTLINED_FUNCTION_48_20(v16, v17);
  OUTLINED_FUNCTION_68_9();
  if (!v12)
  {
    v18 = v0[54];
    v20 = v0[50];
    v19 = v0[51];
    v21 = v0[43];
    v22 = v0[28];
    (*(v0[36] + 8))(v0[37], v0[35]);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v18);
    sub_267BD3DDC(v21, v22 + *(v19 + 44));
    sub_267EF4908();
    v26 = sub_267EF7C18();
    OUTLINED_FUNCTION_312();

    if (v21)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v21)
    {
      v28 = v21;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v29 = sub_267DA133C(v20, v27, v28);

    v0[27] = v29;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v30 = v0[54];
    v31 = v0[51];
    OUTLINED_FUNCTION_49_16();
    v32 = v0[28];

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v30);
    sub_267BD3DDC(v22, v32 + *(v31 + 48));
    v36 = sub_267EF4908();
    sub_267BE84FC(v36);

    v37 = sub_267EF70D8();
    OUTLINED_FUNCTION_79_5(v21, v38, v39, v37);
    OUTLINED_FUNCTION_22_0();
    sub_267EF8478();
    sub_267EF8348();
    v40 = v0[54];
    v41 = v0[51];
    v42 = v0[41];
    v43 = OUTLINED_FUNCTION_58_9();
    v44 = v0[28];
    (*(v45 + 8))(v43);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
    sub_267BD3DDC(v42, v44 + *(v41 + 24));
    goto LABEL_3;
  }

  (*(v0[36] + 8))(v0[37], v0[35]);
  OUTLINED_FUNCTION_35_19();

  OUTLINED_FUNCTION_17();
LABEL_4:

  return v14();
}

uint64_t sub_267DCC0C4()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  v1[25] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[26] = v5;
  v1[27] = *(v6 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v7 = sub_267EF48A8();
  v1[30] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v9);
  v1[33] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v10);
  v1[34] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF84F8();
  v1[35] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[36] = v12;
  v1[37] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v13);
  v1[38] = OUTLINED_FUNCTION_2();
  v14 = sub_267EF2E38();
  v1[39] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[40] = v15;
  v1[41] = OUTLINED_FUNCTION_2();
  v16 = sub_267EF44C8();
  v1[42] = v16;
  OUTLINED_FUNCTION_30_0(v16);
  v1[43] = v17;
  v1[44] = OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267DCC33C()
{
  v62 = v0;
  v4 = v0[43];
  v3 = v0[44];
  OUTLINED_FUNCTION_66_14();
  sub_267EF44B8();
  OUTLINED_FUNCTION_55_13();
  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_26_0();
  v5(v6);
  sub_267C7C6C0(v3, v1);
  OUTLINED_FUNCTION_52_12();
  if (v7)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_5_50();
  if (v3 == v21 && (v20 & 1) == 0)
  {

    goto LABEL_15;
  }

  v31 = sub_267EF9EA8();

  if ((v31 & 1) == 0)
  {
LABEL_3:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v9 = OUTLINED_FUNCTION_108();
    v10(v9);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95E8();
    if (os_log_type_enabled(v11, v12))
    {
      v5 = v0[44];
      v13 = v0[25];
      v14 = v0[26];
      v15 = OUTLINED_FUNCTION_48();
      v60 = OUTLINED_FUNCTION_52();
      v61 = v60;
      OUTLINED_FUNCTION_65_10(4.8149e-34);
      sub_267EF44B8();
      v16 = OUTLINED_FUNCTION_42_19();
      v5(v16);
      (*(v14 + 8))(v13, v13);
      v17 = sub_267BA33E8(v5, v2, &v61);

      *(v15 + 4) = v17;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v18, v19, "#EditMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
      v22 = v0[26];

      v15 = v22 + 8;
      v23 = OUTLINED_FUNCTION_108();
      v24(v23);
    }

    v25 = v0[44];
    OUTLINED_FUNCTION_66_14();
    sub_267EF44B8();
    OUTLINED_FUNCTION_55_13();
    v26 = OUTLINED_FUNCTION_26_0();
    v5(v26);
    v27 = sub_267C4BE60();
    OUTLINED_FUNCTION_61_1(&type metadata for Errors, v27);
    *v28 = v25;
    v28[1] = v15;
    swift_willThrow();
    OUTLINED_FUNCTION_29_22(v0[44]);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

LABEL_15:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v32 = sub_267EF8A08();
  v0[45] = __swift_project_value_buffer(v32, qword_280240FB0);
  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v34))
  {
    v35 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v35);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_26();
  }

  v0[46] = OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sentMessageContext;
  v0[47] = type metadata accessor for TimedSentMessageContext(0);
  v41 = sub_267EF97C8();
  v0[48] = v41;
  v42 = sub_267BCEA0C(v41);
  if (v42)
  {
    v43 = sub_267BAF0DC(v42);

    if (v43 == 1)
    {
      v44 = sub_267BCEA0C(v41);
      if (v44)
      {
        v45 = v44;
        if (sub_267BAF0DC(v44))
        {
          sub_267BBD0EC(0, (v45 & 0xC000000000000001) == 0, v45);
          if ((v45 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x26D609870](0, v45);
          }

          else
          {
            v46 = *(v45 + 32);
          }

          v47 = v46;
          v48 = v0[41];
          v49 = v0[24];

          __swift_project_boxed_opaque_existential_0((v49 + 16), *(v49 + 40));
          v50 = OUTLINED_FUNCTION_20_25();
          v51(v50);
          __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
          OUTLINED_FUNCTION_20_25();
          sub_267EF3B68();
          v52 = sub_267BC20F4(v48, 0, 0, 0, v47);

          v53 = OUTLINED_FUNCTION_63();
          v54(v53);
          __swift_destroy_boxed_opaque_existential_0(v0 + 17);
          goto LABEL_28;
        }
      }
    }
  }

  v52 = 0;
LABEL_28:
  v0[49] = v52;
  type metadata accessor for EditMessageCATsSimple(0);
  sub_267EF7B68();
  v0[50] = sub_267EF79E8();
  type metadata accessor for MessagesGroup(0);
  v0[51] = sub_267D2F9F8(v41);
  v55 = swift_task_alloc();
  v0[52] = v55;
  *v55 = v0;
  v55[1] = sub_267DCC8C0;
  OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_89();

  return sub_267E56644(v56, v57);
}

uint64_t sub_267DCC8C0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  *(v7 + 424) = v6;
  *(v7 + 432) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DCCA08()
{
  v1 = v0[48];
  v2 = v0[24];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v2[5]);
  v3 = OUTLINED_FUNCTION_38_0();
  v4(v3);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider + 24));
  sub_267BB4A3C();
  v5 = [v1 speakableGroupName];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 spokenPhrase];
    v48 = sub_267EF9028();
    v9 = v8;
  }

  else
  {
    v10 = v0[48];
    v9 = v0[6];
    OUTLINED_FUNCTION_62_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_63();
    v11 = sub_267EF3C48();
    v12 = sub_267BCEA0C(v10);
    if (v11)
    {
      v13 = sub_267DA2578(v12);
    }

    else
    {
      sub_267DA2180();
    }

    v48 = v13;
    OUTLINED_FUNCTION_312();
  }

  v47 = v0[53];
  v14 = v0[48];
  v39 = v0[37];
  v42 = v0[35];
  v43 = v0[36];
  v38 = v0[34];
  v15 = v0[33];
  v16 = v0[26];
  v46 = v0[29];
  v40 = v0[24];
  v44 = v0[23];
  v45 = v0[25];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v17 = v2[6];
  OUTLINED_FUNCTION_62_1(v2 + 2, v2[5]);
  v18 = *(v17 + 8);
  v41 = v14;

  v19 = OUTLINED_FUNCTION_44_0();
  v18(v19);
  v20 = v0[11];
  v21 = OUTLINED_FUNCTION_131(v0 + 7);
  sub_267BCD18C(v21, v20);
  sub_267ED9A2C(v41);
  v22 = sub_267EF81F8();
  OUTLINED_FUNCTION_79_5(v38, v23, v24, v22);
  v25 = sub_267EF82A8();
  OUTLINED_FUNCTION_79_5(v15, v26, v27, v25);
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_267DCD5D4();
  v0[15] = v42;
  v0[16] = sub_267DCE67C(&unk_28022BB30, MEMORY[0x277D5D8A8], MEMORY[0x277D5D8A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
  (*(v43 + 16))(boxed_opaque_existential_0, v39, v42);
  (*(v16 + 16))(v46, v44, v45);
  v29 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v30 = swift_allocObject();
  v0[55] = v30;
  *(v30 + 2) = v41;
  *(v30 + 3) = v48;
  *(v30 + 4) = v9;
  *(v30 + 5) = v40;
  (*(v16 + 32))(&v30[v29], v46, v45);
  v31 = v41;
  v32 = v47;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[56] = v33;
  *v33 = v34;
  v33[1] = sub_267DCCE34;
  v35 = v0[32];
  v36 = v0[22];

  return (sub_267ECB114)(v36, v47, v35, v0 + 12, &unk_267F092E8, v30);
}

uint64_t sub_267DCCE34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
    v7 = *(v3 + 424);
  }

  else
  {

    sub_267BF9988(v3 + 96, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267DCCF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v22))
  {
    v23 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v23);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_26();
  }

  v29 = v20[53];
  v30 = v20[48];
  v46 = v20[44];
  v47 = v20[41];
  v31 = v20[37];
  v32 = v20[36];
  v45 = v20[35];
  v48 = v20[38];
  v49 = v20[34];
  v33 = v20[31];
  v34 = v20[32];
  v35 = v20[30];
  v50 = v20[33];
  v51 = v20[29];
  v52 = v20[28];

  (*(v33 + 8))(v34, v35);
  (*(v32 + 8))(v31, v45);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v46, v47, v48, v49, v50, v51, v52, a18, a19, a20);
}

uint64_t sub_267DCD0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();

  OUTLINED_FUNCTION_29_22(*(v12 + 352));

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_267DCD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  v13 = *(v12 + 384);

  v14 = OUTLINED_FUNCTION_44_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_26_0();
  v17(v16);
  sub_267BF9988(v12 + 96, &qword_280229330, &qword_267F092F0);
  OUTLINED_FUNCTION_29_22(*(v12 + 352));

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_267DCD2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DCD380, 0, 0);
}

uint64_t sub_267DCD380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v21 = v20[13];
  v22 = v20[14];
  v23 = v20[11];
  v51 = v20[10];
  v52 = v20[9];
  v24 = v20[7];
  v25 = v20[8];
  v26 = sub_267EF8178();
  v24[3] = v26;
  v24[4] = sub_267DCE67C(qword_280229338, MEMORY[0x277D5D3A0], MEMORY[0x277D5D398]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v27 = v23[6];
  __swift_project_boxed_opaque_existential_0(v23 + 2, v23[5]);
  v28 = OUTLINED_FUNCTION_57_12();
  v29(v28, v27);
  v30 = v20[6];
  v31 = OUTLINED_FUNCTION_131(v20 + 2);
  HIDWORD(a13) = sub_267BCD18C(v31, v30);
  sub_267ED9A2C(v25);
  v49 = v32;
  sub_267EF8308();
  sub_267EF82F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  sub_267EF4908();
  sub_267EF7C18();
  OUTLINED_FUNCTION_312();

  sub_267EF82E8();

  v33 = sub_267EF81F8();
  OUTLINED_FUNCTION_79_5(v22, v34, v35, v33);
  v36 = sub_267EF82A8();
  OUTLINED_FUNCTION_79_5(v21, v37, v38, v36);

  v39 = v25;
  LOBYTE(a9) = 1;
  sub_267EF84C8();
  __swift_destroy_boxed_opaque_existential_0(v20 + 2);
  (*(*(v26 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D370], v26);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v22, v21, 0, a13, v49, boxed_opaque_existential_0, v51, v52, a18, a19, a20);
}

uint64_t sub_267DCD5D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v11[-1] - v3;
  v5 = sub_267EF3CF8();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  sub_267EF3CA8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267DCD750(v4);
  sub_267EF4818();
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v7);
  (*(v8 + 8))(v11, v7, v8);
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  OUTLINED_FUNCTION_108();
  sub_267BCF0D8();
  sub_267EF4898();
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_267DCD750@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6();
  v54 = v6;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v59 = sub_267EF4158();
  OUTLINED_FUNCTION_58();
  v55 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v17 = v16 - v15;
  v18 = v1[5];
  v19 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v18);
  (*(v19 + 8))(v62, v18, v19);
  sub_267EF4148();
  OUTLINED_FUNCTION_62_1(v62, v63);
  sub_267EF3B98();
  sub_267EF4128();
  __swift_destroy_boxed_opaque_existential_0(v62);
  sub_267EF6268();
  swift_allocObject();
  v20 = sub_267EF6258();
  sub_267EF6228();
  sub_267EF6448();
  swift_allocObject();
  v21 = sub_267EF6438();
  v58 = v20;
  sub_267EF61F8();
  v57 = v21;
  OUTLINED_FUNCTION_22_0();
  sub_267DFDDC4();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v22 = sub_267EF8A08();
  v23 = __swift_project_value_buffer(v22, qword_280240FB0);
  v24 = *(v4 + 16);
  v24(v10, v12, v2);
  v25 = sub_267EF89F8();
  v26 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v26))
  {
    v27 = OUTLINED_FUNCTION_48();
    *&v60 = v4;
    v28 = v27;
    v52 = v27;
    v53 = OUTLINED_FUNCTION_52();
    v61 = v53;
    *v28 = 136315138;
    v29 = v54;
    v24(v54, v10, v2);
    sub_267EF5458();
    v51 = v23;
    v63 = v2;
    v64 = sub_267DCE67C(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    v24(boxed_opaque_existential_0, v29, v2);
    v49 = sub_267EF5448();
    v50 = v25;
    v32 = v31;
    v33 = *(v60 + 8);
    v33(v29, v2);
    v33(v10, v2);
    __swift_destroy_boxed_opaque_existential_0(v62);
    sub_267BA33E8(v49, v32, &v61);
    OUTLINED_FUNCTION_43();

    v34 = v52;
    *(v52 + 4) = v24;
    v35 = v50;
    _os_log_impl(&dword_267B93000, v50, v51, "#EditMessageNeedsValueFlowStrategy submitting NLv4 dialog act: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    OUTLINED_FUNCTION_32_0();
    v4 = v60;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v33 = *(v4 + 8);
    v33(v10, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v36 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v37 = swift_allocObject();
  v60 = xmmword_267EFC020;
  *(v37 + 16) = xmmword_267EFC020;
  v24((v37 + v36), v12, v2);
  sub_267EF4088();
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  sub_267BB8DFC();
  sub_267EF40E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v38 = swift_allocObject();
  *(v38 + 16) = v60;
  *(v38 + 32) = sub_267BB90E4(2);
  *(v38 + 40) = v39;
  sub_267EF40B8();
  v40 = swift_allocObject();
  *(v40 + 16) = v60;
  if (qword_280228848 != -1)
  {
    swift_once();
  }

  *(v40 + 32) = sub_267BCEF48();
  *(v40 + 40) = v41;
  sub_267EF40C8();

  v42 = OUTLINED_FUNCTION_61_4();
  (v33)(v42);
  v43 = v59;
  (*(v55 + 32))(v56, v17, v59);
  OUTLINED_FUNCTION_9();
  return __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
}

uint64_t sub_267DCDD38()
{
  OUTLINED_FUNCTION_19_28(OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sharedContextService));
  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags));
}

uint64_t sub_267DCDD98()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_19_28(OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sentMessageContext);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_catProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_sharedContextService));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_featureFlags));
  return v0;
}

uint64_t sub_267DCDE04()
{
  sub_267DCDD98();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditMessageNeedsValueFlowStrategy(uint64_t a1)
{
  result = qword_28022C018;
  if (!qword_28022C018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DCDEB0(uint64_t a1)
{
  result = type metadata accessor for TimedSentMessageContext(319);
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

uint64_t sub_267DCDF80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267DC965C();
}

uint64_t sub_267DCE034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267DC9DE8();
}

uint64_t sub_267DCE0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageNeedsValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_267DCE1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for EditMessageNeedsValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_267DCE270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for EditMessageNeedsValueFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267BBD07C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267DCE350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for EditMessageNeedsValueFlowStrategy(0);
  *v14 = v7;
  v14[1] = sub_267BBD07C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_267DCE480(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C030, &qword_267F092C8);
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_267BAEBEC;

  return sub_267DCD2A4(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_267DCE588()
{
  OUTLINED_FUNCTION_56();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267BAEBEC;
  v4 = OUTLINED_FUNCTION_26_0();

  return sub_267DCAE10(v4, v5, v2);
}

uint64_t sub_267DCE628(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267DCE67C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DCE6DC(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCC90;
  strcpy((inited + 32), "resolutionType");
  *(inited + 47) = -18;
  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6465727265666E49;
  *(inited + 56) = 0xE800000000000000;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000267F1A110;
  v13 = a5();
  *(inited + 120) = v12;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  v15 = sub_267EF8F28();
  v16 = sub_267DCE8E4(a1);
  v17 = sub_267DCEB90(v16, v15);

  v19 = sub_267DCEB90(v18, v17);
  sub_267EF7D48();
  OUTLINED_FUNCTION_1_59();
  (*(v20 + 16))(v10, a1);
  swift_storeEnumTagMultiPayload();
  a3(v10, v19);

  return sub_267B9F98C(v10, &qword_280229558, &unk_267F02FE0);
}

uint64_t sub_267DCE8E4(uint64_t a1)
{
  v2 = sub_267EF7D48();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v2);
  v8 = OUTLINED_FUNCTION_66();
  v10 = v9(v8);
  if (v10 != *MEMORY[0x277D55418])
  {
    if (v10 == *MEMORY[0x277D55420])
    {
      v21 = OUTLINED_FUNCTION_66();
      v22(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
      inited = swift_initStackObject();
      v24 = OUTLINED_FUNCTION_8_44(inited, xmmword_267EFC020);
      v25 = MEMORY[0x277D837D0];
      v24[2].n128_u64[0] = v26;
      v24[2].n128_u64[1] = v27;
      v24[4].n128_u64[1] = v25;
      v24[3].n128_u64[0] = 0x656C7069746C754DLL;
      v24[3].n128_u64[1] = 0xEB00000000707041;
      return sub_267EF8F28();
    }

    if (v10 != *MEMORY[0x277D55428])
    {
      v20 = sub_267EF8F28();
      v28 = OUTLINED_FUNCTION_66();
      v29(v28);
      return v20;
    }
  }

  v11 = OUTLINED_FUNCTION_66();
  v12(v11);
  v13 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
  v14 = swift_initStackObject();
  v15 = OUTLINED_FUNCTION_8_44(v14, xmmword_267EFC020);
  v15[2].n128_u64[0] = v16;
  v15[2].n128_u64[1] = v17;
  v18 = sub_267CBB4E4(v13);
  v14[4].n128_u64[1] = MEMORY[0x277D837D0];
  v14[3].n128_u64[0] = v18;
  v14[3].n128_u64[1] = v19;
  v20 = sub_267EF8F28();

  return v20;
}

uint64_t sub_267DCEB90(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_267DD174C(a1, sub_267DD1714, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_267DCEC14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v25 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_267EF2D28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
    v14 = v13;

    if (v14)
    {
      sub_267EF2CD8();

      if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
      {
        v19 = *(v7 + 32);
        v19(v12, v5, v6);
        sub_267EF93D8();
        v20 = sub_267EF93F8();
        __swift_storeEnumTagSinglePayload(v2, 0, 1, v20);
        (*(v7 + 16))(v10, v12, v6);
        v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v22 = swift_allocObject();
        *(v22 + 2) = 0;
        *(v22 + 3) = 0;
        v23 = v26;
        *(v22 + 4) = v26;
        v19(&v22[v21], v10, v6);
        v24 = v23;
        sub_267E8FA18();

        (*(v7 + 8))(v12, v6);
        return;
      }

      sub_267B9F98C(v5, &qword_280229430, &qword_267EFD2C0);
    }
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_267B93000, v16, v17, "Failed to get the request id for the current execution.", v18, 2u);
    MEMORY[0x26D60A7B0](v18, -1, -1);
  }
}

uint64_t sub_267DCEFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_267DCEFE4, 0, 0);
}

uint64_t sub_267DCEFE4()
{
  v27 = v0;
  sub_267C3D854();
  v1 = sub_267DCF850(0xD000000000000024, 0x8000000267F1A0E0);
  v0[4] = v1;
  if (v1)
  {
    v2 = v1;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v3 = sub_267EF8A08();
    v0[5] = __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = v2;
    v5 = sub_267EF89F8();
    sub_267EF95D8();

    if (OUTLINED_FUNCTION_99())
    {
      v6 = OUTLINED_FUNCTION_48();
      v7 = OUTLINED_FUNCTION_52();
      v26 = v7;
      *v6 = 136315138;
      v8 = [v4 UUIDString];
      v9 = sub_267EF9028();
      v11 = v10;

      v12 = sub_267BA33E8(v9, v11, &v26);

      *(v6 + 4) = v12;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v18 = OUTLINED_FUNCTION_28_0();
    v0[6] = v18;
    *v18 = v0;
    v18[1] = sub_267DCF2B4;

    return v25(v4, &unk_2878CA5B0);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95E8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_267B93000, v21, v22, "#InstrumentSeasTrigger - failed to create UUID for codePath, skip the log for trigger log", v23, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_17();

    return v24();
  }
}

uint64_t sub_267DCF2B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 56) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DCF3B4()
{
  v1 = v0[4];
  v2 = sub_267EF2CF8();
  v0[8] = v2;
  v3 = OUTLINED_FUNCTION_28_0();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_267DCF468;

  return v5(v1, v2);
}

uint64_t sub_267DCF468()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267DCF580()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();

  v4 = OUTLINED_FUNCTION_99();
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_267B9F98C(v7, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267DCF6BC()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267DCF714()
{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();

  v4 = OUTLINED_FUNCTION_99();
  v5 = *(v0 + 32);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_48();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_267B9F98C(v7, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v15();
}

id sub_267DCF850(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_267EF8FF8();

  v4 = [v2 initWithUUIDString_];

  return v4;
}

uint64_t sub_267DCF8C4(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v17 = a1;
    v18 = sub_267DD09B8(a2);
    v19 = swift_allocObject();
    v19[2] = v4;
    v19[3] = v16;
    v19[4] = v18;
    v20 = swift_allocObject();
    v20[2] = v4;
    v20[3] = v18;
    v20[4] = a3;
    v20[5] = a4;
    v21 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = sub_267DD1D20;
    v22[5] = v20;
    v22[6] = &unk_267F09458;
    v22[7] = v19;
    swift_retain_n();

    sub_267E8FA18();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v24 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
    v25 = a1;
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_48();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_267B93000, v26, v27, "#CoreMLAppResolver - It's not INSendMessageIntent: %@", v28, 0xCu);
      sub_267B9F98C(v29, &unk_280229E30, &unk_267EFC270);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v31 = sub_267EF8F28();
    v32 = *MEMORY[0x277D553B0];
    sub_267EF7CC8();
    OUTLINED_FUNCTION_1_59();
    (*(v33 + 104))(v11, v32);
    swift_storeEnumTagMultiPayload();
    a3(v11, v31);

    return sub_267B9F98C(v11, &qword_280229558, &unk_267F02FE0);
  }
}

uint64_t sub_267DCFC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_267BBD07C;

  return sub_267DD0100();
}

uint64_t sub_267DCFD0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  MEMORY[0x28223BE20](v28);
  v10 = &v27 - v9;
  v11 = sub_267EF7D48();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_267DD0BDC(a1, a3, (&v27 - v16));
  (*(v12 + 16))(v15, v17, v11);
  v18 = (*(v12 + 88))(v15, v11);
  if (v18 == *MEMORY[0x277D55418])
  {
    v19 = *(v12 + 8);
    v19(v15, v11);
    v20 = 4;
LABEL_7:
    sub_267DD00AC(v20);
    v21 = sub_267EF8F28();
    sub_267DCE6DC(v17, v21, a4, a5, sub_267DD1DEC);

    return (v19)(v17, v11);
  }

  if (v18 == *MEMORY[0x277D55420])
  {
    v19 = *(v12 + 8);
    v19(v15, v11);
    v20 = 2;
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x277D55428])
  {
    v19 = *(v12 + 8);
    v19(v15, v11);
    v20 = 1;
    goto LABEL_7;
  }

  if (v18 == *MEMORY[0x277D55410])
  {
    sub_267DD00AC(10);
  }

  v23 = sub_267EF8F28();
  v24 = *MEMORY[0x277D553B0];
  v25 = sub_267EF7CC8();
  (*(*(v25 - 8) + 104))(v10, v24, v25);
  swift_storeEnumTagMultiPayload();
  a4(v10, v23);

  sub_267B9F98C(v10, &qword_280229558, &unk_267F02FE0);
  v26 = *(v12 + 8);
  v26(v17, v11);
  return (v26)(v15, v11);
}

void sub_267DD00AC(int a1)
{
  if ((*(v1 + 144) & 1) == 0)
  {
    v3 = *(v1 + 88);
    v4 = *(v1 + 96);
    __swift_project_boxed_opaque_existential_0((v1 + 64), v3);
    sub_267C31594(a1, v3, v4);
  }
}

uint64_t sub_267DD0100()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_267EF4F78();
  v1[9] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v7 = sub_267EF6A38();
  v1[12] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[13] = v8;
  v1[14] = swift_task_alloc();
  v9 = sub_267EF6BC8();
  v1[15] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[16] = v10;
  v1[17] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267DD025C()
{
  v1 = *(v0 + 56);
  sub_267DD0884();
  v3 = *(v1 + 16);
  if (v3)
  {
    v44 = v2;
    v4 = *(v0 + 104);
    v5 = *(v0 + 56);
    v49 = MEMORY[0x277D84F90];
    sub_267C72694(0, v3, 0);
    result = sub_267BA7F44();
    v9 = result;
    v10 = 0;
    v11 = v5 + 64;
    v43 = v4;
    v41 = v7;
    v42 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v11 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v5 + 36) != v7)
      {
        goto LABEL_27;
      }

      v46 = v10;
      v47 = v7;
      v45 = v8;
      v13 = (*(v5 + 48) + 16 * v9);
      v15 = *v13;
      v14 = v13[1];
      swift_bridgeObjectRetain_n();

      sub_267BC2F78(v15, v14, v44);
      sub_267EF6A28();

      v17 = *(v49 + 16);
      v16 = *(v49 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_267C72694(v16 > 1, v17 + 1, 1);
      }

      v18 = *(v0 + 112);
      v19 = *(v0 + 96);
      *(v49 + 16) = v17 + 1;
      result = (*(v43 + 32))(v49 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v17, v18, v19);
      v20 = 1 << *(v5 + 32);
      if (v9 >= v20)
      {
        goto LABEL_28;
      }

      v11 = v5 + 64;
      v21 = *(v5 + 64 + 8 * v12);
      if ((v21 & (1 << v9)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v5 + 36) != v47)
      {
        goto LABEL_30;
      }

      v22 = v21 & (-2 << (v9 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v12 << 6;
        v24 = (v5 + 72 + 8 * v12);
        v25 = v12 + 1;
        while (v25 < (v20 + 63) >> 6)
        {
          v27 = *v24++;
          v26 = v27;
          v23 += 64;
          ++v25;
          if (v27)
          {
            result = sub_267C96654(v9, v47, v45 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_267C96654(v9, v47, v45 & 1);
      }

LABEL_19:
      v8 = 0;
      v10 = v46 + 1;
      v9 = v20;
      v7 = v41;
      if (v46 + 1 == v42)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_20:

    v28 = sub_267BCEA0C(*(v0 + 48));
    if (v28)
    {
      sub_267BAF0DC(v28);
    }

    v29 = v0;
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    v33 = v0 + 64;
    v32 = *(v0 + 64);
    v34 = v29[6];
    (*(v30 + 104))(v31, *MEMORY[0x277D60318], *(v33 + 8));
    sub_267EF2D48();
    v35 = v34;
    sub_267EF6BB8();
    __swift_project_boxed_opaque_existential_0(v32 + 13, v32[16]);
    sub_267DCEC14();
    swift_beginAccess();
    v36 = v32[5];
    v37 = v32[6];
    __swift_mutable_project_boxed_opaque_existential_1((v32 + 2), v36);
    v48 = (*(v37 + 8) + **(v37 + 8));
    v38 = swift_task_alloc();
    v29[18] = v38;
    *v38 = v29;
    v38[1] = sub_267DD0700;
    v39 = v29[17];
    v40 = v29[5];

    return v48(v40, v39, v36, v37);
  }

  return result;
}

uint64_t sub_267DD0700()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  swift_endAccess();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267DD07F0()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_17();

  return v1();
}

void sub_267DD0884()
{
  v1 = *(*(v0 + 56) + 88);
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    if (v4)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return;
      }

      if (v7 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        do
        {
LABEL_10:
          v4 &= v4 - 1;

          sub_267C9B900(v8);
        }

        while (v4);
        continue;
      }
    }

    sub_267D2F824(v9);
  }
}

void *sub_267DD09B8(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  v20 = MEMORY[0x277D84F98];
LABEL_2:
  for (i = v3; ; ++i)
  {
    if (v2 == i)
    {
      return v20;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v3 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = sub_267EF7C18();
    if (v7)
    {
      v8 = v6;
      v9 = v7;

      swift_isUniquelyReferenced_nonNull_native();
      v22 = v20;
      v19 = sub_267BA9948();
      if (__OFADD__(v20[2], (v10 & 1) == 0))
      {
        goto LABEL_22;
      }

      v21 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C058, &qword_267F09430);
      if (sub_267EF9C68())
      {
        v11 = sub_267BA9948();
        if ((v21 & 1) != (v12 & 1))
        {
          goto LABEL_24;
        }

        v13 = v11;
        if ((v21 & 1) == 0)
        {
LABEL_15:
          v22[(v13 >> 6) + 8] |= 1 << v13;
          v14 = (v22[6] + 16 * v13);
          *v14 = v8;
          v14[1] = v9;
          *(v22[7] + 8 * v13) = v5;

          v15 = v22[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (!v16)
          {
            v20 = v22;
            v22[2] = v17;
            goto LABEL_2;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v13 = v19;
        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v20 = v22;
      *(v22[7] + 8 * v13) = v5;

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267DD0BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_267EF6AC8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, a1, v6);
  v12 = (*(v8 + 88))(v11, v6);
  if (v12 == *MEMORY[0x277D560F0])
  {
    v13 = OUTLINED_FUNCTION_12_31();
    v14(v13);
    if (qword_280228818 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_47;
  }

  if (v12 == *MEMORY[0x277D560E0])
  {
    v29 = OUTLINED_FUNCTION_12_31();
    v30(v29);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v31 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v31, qword_280240FB0);

    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_48();
      v35 = OUTLINED_FUNCTION_52();
      v89 = v35;
      *v34 = 136315138;
      v36 = OUTLINED_FUNCTION_17_4();
      *(v34 + 4) = sub_267BA33E8(v36, v37, v38);
      OUTLINED_FUNCTION_21_23(&dword_267B93000, v39, v40, "#CoreMLAppResolver - AppResolverResult: .needsConfirmation(%s)");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v41 = OUTLINED_FUNCTION_17_4();
    v27 = sub_267C8ED84(v41, v42, a2);
    if (v27)
    {
      goto LABEL_6;
    }

LABEL_13:

    v43 = sub_267EF89F8();
    v44 = sub_267EF95E8();

    if (!OUTLINED_FUNCTION_99())
    {

      goto LABEL_33;
    }

    v45 = OUTLINED_FUNCTION_48();
    v46 = OUTLINED_FUNCTION_52();
    v89 = v46;
    *v45 = 136315138;
    v47 = OUTLINED_FUNCTION_17_4();
    v50 = sub_267BA33E8(v47, v48, v49);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_267B93000, v43, v44, "#CoreMLAppResolver - Failed to match an eligible app with appId %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_32_0();
LABEL_15:
    OUTLINED_FUNCTION_32_0();
LABEL_33:

    sub_267EF7D38();
    OUTLINED_FUNCTION_1_59();
    v68 = OUTLINED_FUNCTION_61_0();
    v69(v68);
    goto LABEL_40;
  }

  if (v12 == *MEMORY[0x277D560E8])
  {
    v51 = OUTLINED_FUNCTION_12_31();
    v52(v51);
    v53 = *v11;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v54 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);

    v55 = sub_267EF89F8();
    v56 = sub_267EF95D8();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_48();
      v58 = OUTLINED_FUNCTION_52();
      v89 = v58;
      *v57 = 136315138;
      v59 = MEMORY[0x26D609000](v53, MEMORY[0x277D837D0]);
      v61 = sub_267BA33E8(v59, v60, &v89);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_267B93000, v55, v56, "#CoreMLAppResolver - AppResolverResult: .needsDisambiguation(%s)", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v62 = 0;
    v63 = MEMORY[0x277D84F90];
    v89 = MEMORY[0x277D84F90];
    v64 = *(v53 + 16);
LABEL_22:
    for (i = v53 + 40 + 16 * v62; ; i += 16)
    {
      if (v64 == v62)
      {

        *a3 = v63;
        goto LABEL_40;
      }

      if (v62 >= *(v53 + 16))
      {
        break;
      }

      if (*(a2 + 16))
      {

        sub_267BA9948();
        if (v66)
        {

          MEMORY[0x26D608F90](v67);
          if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          ++v62;
          sub_267EF9368();
          v63 = v89;
          goto LABEL_22;
        }
      }

      ++v62;
    }

    __break(1u);
LABEL_47:
    OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_3:
    v15 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v15, qword_280240FB0);

    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_48();
      v19 = OUTLINED_FUNCTION_52();
      v89 = v19;
      *v18 = 136315138;
      v20 = OUTLINED_FUNCTION_17_4();
      *(v18 + 4) = sub_267BA33E8(v20, v21, v22);
      OUTLINED_FUNCTION_21_23(&dword_267B93000, v23, v24, "#CoreMLAppResolver - AppResolverResult: .resolved(%s)");
      __swift_destroy_boxed_opaque_existential_0(v19);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v25 = OUTLINED_FUNCTION_17_4();
    v27 = sub_267C8ED84(v25, v26, a2);
    if (v27)
    {
LABEL_6:
      v28 = v27;

      *a3 = v28;
LABEL_40:
      sub_267EF7D48();
      OUTLINED_FUNCTION_1_59();
      v73 = OUTLINED_FUNCTION_61_0();
      return v74(v73);
    }

    goto LABEL_13;
  }

  if (v12 == *MEMORY[0x277D560D8])
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v70 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
    v43 = sub_267EF89F8();
    v71 = sub_267EF95D8();
    if (!os_log_type_enabled(v43, v71))
    {
      goto LABEL_33;
    }

    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_267B93000, v43, v71, "#CoreMLAppResolver - AppResolverResult: .noMatchFound", v72, 2u);
    goto LABEL_15;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v76 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v76, qword_280240FB0);
  v77 = sub_267EF89F8();
  v78 = sub_267EF95E8();
  if (os_log_type_enabled(v77, v78))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v79, v80, v81, v82, v83, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF7D38();
  OUTLINED_FUNCTION_1_59();
  v84 = OUTLINED_FUNCTION_61_0();
  v85(v84);
  sub_267EF7D48();
  OUTLINED_FUNCTION_1_59();
  v86 = OUTLINED_FUNCTION_61_0();
  v87(v86);
  return (*(v8 + 8))(v11, v6);
}

char *sub_267DD13E4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow17CoreMLAppResolver_siriLocale;
  sub_267EF2E38();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(&v0[v1]);
  return v0;
}

uint64_t sub_267DD145C()
{
  sub_267DD13E4();

  return swift_deallocClassInstance();
}

uint64_t sub_267DD14B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C314BC(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_267DD155C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BAEBEC;

  return MEMORY[0x2821B8750](a1, a2);
}

uint64_t type metadata accessor for CoreMLAppResolver(uint64_t a1)
{
  result = qword_28022C048;
  if (!qword_28022C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DD165C(uint64_t a1)
{
  result = sub_267EF2E38();
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

uint64_t sub_267DD1714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267ED96B8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_267DD174C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_267EDB728();
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;

  while (1)
  {
    sub_267DD197C(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_267C095D8(v29);
    }

    v8 = v27;
    sub_267BA7F4C(&v28, v26);
    v9 = *a5;
    v11 = sub_267BA9948();
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
        sub_267EF9C78();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_267CFA060();
      v15 = sub_267BA9948();
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_267BA2E04(v26, v25);
        __swift_destroy_boxed_opaque_existential_0(v26);

        v18 = (v17[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_0(v18);
        sub_267BA7F4C(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_267BA7F4C(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

void sub_267DD197C(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_267BA2E04(*(v3 + 56) + 32 * v10, v17);
    *&v18 = v13;
    *(&v18 + 1) = v12;
    sub_267BA7F4C(v17, &v19);

    v14 = *(&v18 + 1);
    v15 = v18;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v14)
    {
      v16 = v1[5];
      *&v17[0] = v15;
      *(&v17[0] + 1) = v14;
      v17[1] = v19;
      v17[2] = v20;
      v16(v17);
      sub_267B9F98C(v17, &qword_28022C060, &qword_267F09478);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_267DD1ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_267BBD07C;

  return sub_267DCEFC4(a1, a2, a3, v10, a5);
}

uint64_t sub_267DD1B94()
{
  sub_267EF2D28();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  v3 = OUTLINED_FUNCTION_7_38();

  return v4(v3);
}

uint64_t sub_267DD1C80()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_2(v2);
  *v3 = v4;
  v3[1] = sub_267BBD07C;
  v5 = OUTLINED_FUNCTION_7_38();

  return sub_267DCFC54(v5, v6, v7, v1);
}

uint64_t sub_267DD1D2C()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_7_38();

  return sub_267E98FB8();
}

uint64_t sub_267DD1E38()
{
  sub_267EF5628();
  swift_allocObject();
  result = sub_267EF5618();
  qword_280240DC0 = result;
  return result;
}

uint64_t sub_267DD1E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280240DC8 = result;
  return result;
}

uint64_t sub_267DD1EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267EFCC90;
  if (qword_280228788 != -1)
  {
    swift_once();
  }

  v1 = qword_280240DC0;
  v2 = sub_267EF5628();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280228790;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280240DC8;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(v0 + 104) = sub_267DD28E4();
  *(v0 + 72) = v5;
  sub_267EF54C8();
  swift_allocObject();

  result = sub_267EF54A8();
  qword_280240DD0 = result;
  return result;
}

uint64_t sub_267DD204C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267EFC020;
  if (qword_280228798 != -1)
  {
    swift_once();
  }

  v1 = qword_280240DD0;
  v2 = sub_267EF54C8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_267EF5598();
  swift_allocObject();

  result = sub_267EF5588();
  qword_280240DD8 = result;
  return result;
}

uint64_t sub_267DD2140(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow19PhoneCallNLv3Intent_domainOntologyNode;
  if (qword_2802287A0 != -1)
  {
    swift_once();
  }

  *(v2 + v7) = qword_280240DD8;
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow19PhoneCallNLv3Intent_intent;
  v9 = sub_267EF6718();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v2 + v8, a1, v9);
  v13[1] = v2;
  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_0_50(&qword_28022C088);

  sub_267EF5B08();
  (*(v10 + 8))(a1, v9);
  v11 = sub_267EF5B58();
  if (__swift_getEnumTagSinglePayload(v6, 1, v11) == 1)
  {

    v2 = 0;
  }

  sub_267D6E178(v6);
  return v2;
}

BOOL sub_267DD2304()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - v3;
  v11 = v0;
  if (qword_280228788 != -1)
  {
    swift_once();
  }

  type metadata accessor for PhoneCallNLv3Intent(0);
  OUTLINED_FUNCTION_0_50(&qword_28022C088);
  sub_267EF5B08();
  v5 = sub_267EF5B58();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_267D6E178(v4);
  }

  else
  {
    sub_267EC0B90();
    v7 = v6;
    (*(*(v5 - 8) + 8))(v4, v5);
    if (v7)
    {
      return 0;
    }
  }

  v10[1] = v1;
  if (qword_280228790 != -1)
  {
    swift_once();
  }

  sub_267EF5B28();
  v8 = v12 == 0;
  if (v12)
  {
  }

  return v8;
}

uint64_t sub_267DD24D8()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow19PhoneCallNLv3Intent_intent;
  v2 = sub_267EF6718();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhoneCallNLv3Intent(uint64_t a1)
{
  result = qword_28022C078;
  if (!qword_28022C078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DD25D8(uint64_t a1)
{
  result = sub_267EF6718();
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

uint64_t sub_267DD2674@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow19PhoneCallNLv3Intent_intent;
  v5 = sub_267EF6718();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_267DD272C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C78](a1, WitnessTable);
}

uint64_t sub_267DD2790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C68](a1, WitnessTable);
}

uint64_t sub_267DD27E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C70](a1, WitnessTable);
}

uint64_t sub_267DD28A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhoneCallNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267DD28E4()
{
  result = qword_280229758;
  if (!qword_280229758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022CF00, &unk_267EFE460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229758);
  }

  return result;
}

uint64_t sub_267DD2948()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE500000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD29C4()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_79_11(v3, v4);
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD2A3C()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_47_15();
  v2 = v2 && v1 == 0xEE006E6F69746361;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_59_0();
    v3 = sub_267EF9EA8();

    return v3 & 1;
  }
}

uint64_t sub_267DD2B14()
{
  sub_267D6D160(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v4 = v4 && v3 == 0xE400000000000000;
  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v2, v0);
    OUTLINED_FUNCTION_43();

    return v1 & 1;
  }
}

uint64_t sub_267DD2B8C()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE900000000000065;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD2C14()
{
  sub_267D6D160(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v4 = v4 && v3 == 0xE400000000000000;
  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v2, v0);
    OUTLINED_FUNCTION_43();

    return v1 & 1;
  }
}

uint64_t sub_267DD2C8C()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE500000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD2D08()
{
  sub_267D6D160(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v4 = v4 && v3 == 0xE400000000000000;
  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v2, v0);
    OUTLINED_FUNCTION_43();

    return v1 & 1;
  }
}

uint64_t sub_267DD2D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_language);
  if (v1)
  {
    v2 = [v1 localeIdentifier];
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267DD2DEC()
{
  v0 = sub_267DD7EA4();
  if (v0 == 8)
  {
    return 0;
  }

  if (sub_267BB9308(v0) != 0x6C65636E6163 || v2 != 0xE600000000000000)
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0(v4, v5);
    OUTLINED_FUNCTION_43();
  }

  return 1;
}

uint64_t sub_267DD2E68()
{
  v1 = v0;
  if (sub_267EF52C8())
  {
    return 1;
  }

  if ((sub_267DD2B14() & 1) == 0 && (sub_267DD2B8C() & 1) == 0)
  {
LABEL_7:
    sub_267D6D160(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
    OUTLINED_FUNCTION_47_15();
    v6 = v6 && v5 == 0xE600000000000000;
    if (!v6)
    {
      OUTLINED_FUNCTION_59_0();
      OUTLINED_FUNCTION_63_0(v7, v8);
      OUTLINED_FUNCTION_229();

      return 0;
    }

    sub_267BB170C(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask, v16, &qword_28022AEF0, &qword_267EFCDE0);
    if (v17)
    {
      sub_267EF5F58();
      if (swift_dynamicCast())
      {

        return 1;
      }
    }

    else
    {
      sub_267B9F98C(v16, &qword_28022AEF0, &qword_267EFCDE0);
    }

    return 0;
  }

  sub_267DD8B50();
  if (v2 != 37)
  {
    sub_267D6C0D4(v2);
    OUTLINED_FUNCTION_47_15();
    if (!v6 || v10 != 0xE300000000000000)
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_229();

      return 1;
    }

    goto LABEL_22;
  }

  sub_267DD8B50();
  if (v3 == 37)
  {
    goto LABEL_6;
  }

  sub_267D6C0D4(v3);
  OUTLINED_FUNCTION_47_15();
  if (v6 && v13 == 0xE400000000000000)
  {
LABEL_22:

    return 1;
  }

  OUTLINED_FUNCTION_81_0(v12, v0);
  OUTLINED_FUNCTION_229();

LABEL_6:
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, &v15);
  if (*(v1 + v4))
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_267DD3068()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE500000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD30E4(uint64_t a1, uint64_t a2)
{
  if (sub_267DD3168(a1, a2))
  {
    return 0;
  }

  sub_267D6D160(*(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v5 = v5 && v4 == 0xE600000000000000;
  if (v5)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_63_0(v6, v7);
    OUTLINED_FUNCTION_43();

    return v2 & 1;
  }
}

BOOL sub_267DD3168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, a2);
  if (!*(v2 + v4) || (, sub_267EF5CB8(), OUTLINED_FUNCTION_361(), !v4) || (, v5 = sub_267EF59B8(), v7 = v6, , !v7))
  {
LABEL_16:
    sub_267DD982C();
    OUTLINED_FUNCTION_43();

    v22 = *(v3 + 16);

    return v22 != 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v8 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_48();
    v12 = OUTLINED_FUNCTION_52();
    v31[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_267BA33E8(v5, v7, v31);
    _os_log_impl(&dword_267B93000, v9, v10, "#SmsNLv4Intent processing operator %s on stringContent", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (v5 == 0x646E65707061 && v7 == 0xE600000000000000)
  {
  }

  else
  {
    v14 = OUTLINED_FUNCTION_63_0(v5, v7);

    if ((v14 & 1) == 0)
    {
      v15 = sub_267EF89F8();
      v16 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v16))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_16_28();
        _os_log_impl(v17, v18, v19, v20, v21, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      goto LABEL_16;
    }
  }

  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v25))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  return 1;
}

uint64_t sub_267DD33E4()
{
  sub_267D6D160(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v4 = v4 && v3 == 0xE400000000000000;
  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v2, v0);
    OUTLINED_FUNCTION_43();

    return v1 & 1;
  }
}

uint64_t sub_267DD345C()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_63_0(v3, v4);
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD34D0()
{
  OUTLINED_FUNCTION_34_19();
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_79_11(v3, v4);
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD353C()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_63_0(v3, v4);
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

uint64_t sub_267DD35B0()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE700000000000000;
  if (v2)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_79_11(v3, v4);
    OUTLINED_FUNCTION_43();

    return v0 & 1;
  }
}

BOOL sub_267DD3628()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C108, &unk_267F09630);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_13_6();
  v4 = sub_267EF6408();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34[-v12 - 8];
  v14 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v34);
  if (!*(v0 + v14))
  {
    goto LABEL_11;
  }

  v15 = sub_267EF5C68();

  if (!v15)
  {
    goto LABEL_11;
  }

  if (!sub_267BAF0DC(v15))
  {

LABEL_11:
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v4);
    goto LABEL_12;
  }

  v16 = OUTLINED_FUNCTION_45_17();
  sub_267BBD0EC(v16, v17, v15);
  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D609870](0, v15);
  }

  else
  {
  }

  sub_267EF5988();

  if (!v33)
  {
    goto LABEL_11;
  }

  v18 = sub_267EF5E98();

  if (!v18)
  {
    goto LABEL_11;
  }

  sub_267EF63F8();

  v19 = OUTLINED_FUNCTION_59_14();
  OUTLINED_FUNCTION_5_1(v19, v20, v4);
  if (v21)
  {
LABEL_12:
    sub_267B9F98C(v1, &qword_28022C108, &unk_267F09630);
    return 0;
  }

  v22 = *(v6 + 32);
  v23 = OUTLINED_FUNCTION_1_10();
  v22(v23);
  (v22)(v10, v13, v4);
  v24 = OUTLINED_FUNCTION_12_4();
  v26 = v25(v24) == *MEMORY[0x277D5F1C8];
  v27 = OUTLINED_FUNCTION_12_4();
  v28(v27);
  return v26;
}

BOOL sub_267DD38A8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb);
  v3 = sub_267D6D160(v2);
  v5 = v4;
  if (v3 == 0x627265566F6ELL && v4 == 0xE600000000000000)
  {

LABEL_10:
    v11 = sub_267DD4A2C(v8, v9);
    if (v11)
    {
      return 0;
    }

    v12 = sub_267DD4488(v11);
    if ((v12 & 1) == 0)
    {
      v14 = sub_267DD89C4(v12, v13);
      sub_267DEAC8C(v14, v15);
      OUTLINED_FUNCTION_229();

      if (v5)
      {
        v16 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
        OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v27);
        if (*(v1 + v16))
        {

          sub_267EF59D8();
          OUTLINED_FUNCTION_78_14();
          if (!v5)
          {
            return 1;
          }

          if (*(v1 + v16))
          {
            return 0;
          }
        }

        sub_267BB170C(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask, v25, &qword_28022AEF0, &qword_267EFCDE0);
        if (!v26)
        {
          sub_267B9F98C(v25, &qword_28022AEF0, &qword_267EFCDE0);
          return 0;
        }

        v17 = sub_267EF6108();
        if ((OUTLINED_FUNCTION_49_17(v17, v18, v19, v17, v20, v21, v22, v23, v24, v25[0]) & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 1;
  }

  v7 = OUTLINED_FUNCTION_63_0(v3, v4);

  if (v7)
  {
    goto LABEL_10;
  }

  return sub_267E58CE8(v2, &unk_2878CA410);
}

void sub_267DD3A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_0();
  v14 = v12;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3D8, &qword_267F08D00) - 8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57_13();
  v17 = *(v14 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb);
  if (sub_267D6D160(v17) == 0x627265566F6ELL && v18 == 0xE600000000000000)
  {

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C138, &unk_267F09660);
    v24 = *(v15 + 72);
    v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_267EFCC90;
    v27 = v26 + v25;
    v28 = *MEMORY[0x277D5EA30];
    v29 = sub_267EF5F28();
    OUTLINED_FUNCTION_22();
    v31 = *(v30 + 104);
    v31(v27, v28, v29);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v29);
    v31(v27 + v24, *MEMORY[0x277D5EA58], v29);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v29);
    v38 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
    OUTLINED_FUNCTION_22_23(v14 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
    if (*(v14 + v38) && (, sub_267EF59D8(), OUTLINED_FUNCTION_80_9(), v28))
    {
      sub_267EF5F18();
    }

    else
    {
      OUTLINED_FUNCTION_78();
      v39 = __swift_storeEnumTagSinglePayload(v40, v41, v42, v29);
    }

    MEMORY[0x28223BE20](v39);
    v43 = sub_267C9B0C8();
    swift_setDeallocating();
    sub_267DB7014();
    v44 = sub_267B9F98C(v13, &qword_28022A3D8, &qword_267F08D00);
    if (!v43)
    {
      sub_267DD4A2C(v44, v45);
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_72_11();
  v22 = OUTLINED_FUNCTION_63_0(v20, v21);

  if (v22)
  {
    goto LABEL_11;
  }

  if (sub_267E58CE8(v17, &unk_2878CA560))
  {
LABEL_18:
    OUTLINED_FUNCTION_47();
    return;
  }

  OUTLINED_FUNCTION_47();

  sub_267DD3EF0();
}

uint64_t sub_267DD3D30()
{
  OUTLINED_FUNCTION_34_19();
  sub_267D6D160(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_79_11(v5, v6);
    OUTLINED_FUNCTION_98_1();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  sub_267BB170C(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask, v17, &qword_28022AEF0, &qword_267EFCDE0);
  if (!v18)
  {
    sub_267B9F98C(v17, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }

  sub_267EF61D8();
  if (swift_dynamicCast())
  {

    sub_267DD7F3C();
    OUTLINED_FUNCTION_95_10();
    if (v4)
    {
      sub_267DD7F3C();
      OUTLINED_FUNCTION_95_10();
      if (v4)
      {
        return 0;
      }

      sub_267D6CE3C(v8);
      OUTLINED_FUNCTION_11_1();
      if (!v4 || v9 != 0xE800000000000000)
      {
        OUTLINED_FUNCTION_394();
        sub_267EF9EA8();
        OUTLINED_FUNCTION_98_1();

LABEL_27:
        if (*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_requestSelectMessage))
        {

          sub_267EF59D8();
          OUTLINED_FUNCTION_361();
          if (v0)
          {

            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      sub_267D6CE3C(v7);
      OUTLINED_FUNCTION_11_1();
      if (v12)
      {
        v14 = v13 == 0xE700000000000000;
      }

      else
      {
        v14 = 0;
      }

      if (!v14)
      {
        OUTLINED_FUNCTION_394();
        OUTLINED_FUNCTION_79_11(v15, v16);
        OUTLINED_FUNCTION_98_1();

        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_267DD3EF0()
{
  v2 = v0;
  OUTLINED_FUNCTION_34_19();
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_47_15();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_59_0();
    OUTLINED_FUNCTION_79_11(v5, v6);
    OUTLINED_FUNCTION_229();

    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_requestSelectMessage) && (, sub_267EF5CE8(), OUTLINED_FUNCTION_78_14(), v1) || (v8 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v7), *(v2 + v8)) && (, sub_267EF5CE8(), OUTLINED_FUNCTION_361(), v2))
  {

    return 1;
  }

  return 0;
}

void sub_267DD3FD0()
{
  OUTLINED_FUNCTION_48_0();
  v5 = sub_267EF5FA8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C150, &qword_267F09678);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_57_13();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C158, &unk_267F09680);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_30_25();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_29_23();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141();
  v15 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_22_23(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
  v37 = v15;
  v38 = v0;
  if (*(v0 + v15) && (, v16 = sub_267EF5CC8(), , v16))
  {
    sub_267EF5F98();
  }

  else
  {
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v5);
  }

  (*(v7 + 104))(v4, *MEMORY[0x277D5EAE8], v5);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v5);
  v23 = *(v9 + 48);
  sub_267BB170C(v3, v1, &qword_28022C158, &unk_267F09680);
  sub_267BB170C(v4, v1 + v23, &qword_28022C158, &unk_267F09680);
  OUTLINED_FUNCTION_5_1(v1, 1, v5);
  if (v28)
  {
    OUTLINED_FUNCTION_67_9(v4);
    OUTLINED_FUNCTION_67_9(v3);
    OUTLINED_FUNCTION_5_1(v1 + v23, 1, v5);
    if (v28)
    {
      sub_267B9F98C(v1, &qword_28022C158, &unk_267F09680);
      goto LABEL_19;
    }
  }

  else
  {
    v24 = OUTLINED_FUNCTION_73_0();
    sub_267BB170C(v24, v25, v26, v27);
    OUTLINED_FUNCTION_5_1(v1 + v23, 1, v5);
    if (!v28)
    {
      (*(v7 + 32))(v2, v1 + v23, v5);
      sub_267DDD5B8(&qword_28022C160, MEMORY[0x277D5EAF0], MEMORY[0x277D5EAF8]);
      v31 = sub_267EF8FE8();
      v32 = *(v7 + 8);
      v7 += 8;
      v33 = OUTLINED_FUNCTION_1_10();
      v32(v33);
      v34 = OUTLINED_FUNCTION_85_11();
      sub_267B9F98C(v34, v35, &unk_267F09680);
      sub_267B9F98C(v3, &qword_28022C158, &unk_267F09680);
      v36 = OUTLINED_FUNCTION_89_0();
      v32(v36);
      sub_267B9F98C(v1, &qword_28022C158, &unk_267F09680);
      if (v31)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_67_9(v4);
    OUTLINED_FUNCTION_67_9(v3);
    v7 += 8;
    v29 = OUTLINED_FUNCTION_89_0();
    v30(v29);
  }

  sub_267B9F98C(v1, &qword_28022C150, &qword_267F09678);
LABEL_14:
  if (*(v38 + v37))
  {

    sub_267EF5CD8();
    OUTLINED_FUNCTION_361();
    if (v7)
    {
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_47();
}

BOOL sub_267DD43B8(uint64_t a1, uint64_t a2)
{
  sub_267DD7D1C(a1, a2);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

BOOL sub_267DD43F0(uint64_t a1)
{
  sub_267DD7F3C();
  OUTLINED_FUNCTION_95_10();
  return !v1;
}

uint64_t sub_267DD4410()
{
  sub_267D6D160(*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb));
  OUTLINED_FUNCTION_11_1();
  v2 = v2 && v1 == 0xE600000000000000;
  if (v2)
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_63_0(v3, v4);
    OUTLINED_FUNCTION_43();

    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_267DD4488(uint64_t a1)
{
  v2 = sub_267DD9798();
  sub_267DD4698(v2);
  OUTLINED_FUNCTION_43();

  if (v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v7))
    {
      goto LABEL_20;
    }

    v8 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v8);
    v11 = "#SmsNLv4Intent:hasContactOrGroupName a recipient has name or address -> true";
LABEL_19:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v9, v10, v11);
    OUTLINED_FUNCTION_26();
LABEL_20:

    return 1;
  }

  if (sub_267DD97C4(v3, v4))
  {
    if (sub_267EAC3A8())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v13 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
      v14 = sub_267EF89F8();
      v15 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v15))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v16, v17, v18, v19, v20, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      return 1;
    }
  }

  v21 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v12);
  if (*(v1 + v21))
  {

    sub_267EAC3E0(v22);
    OUTLINED_FUNCTION_361();
    sub_267BAF0DC(v21);
    OUTLINED_FUNCTION_43();

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
    v6 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v24))
    {
      goto LABEL_20;
    }

    v25 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v25);
    v11 = "#SmsNLv4Intent:hasContactOrGroupName recipient agents with expression -> true";
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_267DD4698(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v7 = MEMORY[0x277D84F90];
  result = sub_267BAF0DC(a1);
  v4 = result;
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      v6 = sub_267BAF0DC(v7);

      return v2 != v6;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_267EACB60())
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      result = sub_267EF9BE8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_267DD47CC(uint64_t a1)
{
  v2 = sub_267DD9798();
  v3 = sub_267BAF0DC(v2);

  if (v3)
  {
    v4 = sub_267DD9798();
    v5 = sub_267BAF0DC(v4);
    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_64_0();
        LOBYTE(v7) = MEMORY[0x26D609870](v9);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_13:
        v10 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
        v11 = sub_267EF89F8();
        v12 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v12))
        {
          v13 = OUTLINED_FUNCTION_32();
          *v13 = 0;
          _os_log_impl(&dword_267B93000, v11, v1, "#SmsNLv4Intent:allRecipientsHaveUsoIdentifier found recipient with no UsoIdentifiers", v13, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_69_9();
      LOBYTE(v1) = v7;
      v8 = sub_267EF5A38();
      if (!v8 || (v1 = *(v8 + 16), , !v1))
      {

        if (qword_280228818 != -1)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v20 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
    v11 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v22);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v23, v24, "#SmsNLv4Intent:allRecipientsHaveUsoIdentifier all recipients had at least one UsoIdentifier");
      OUTLINED_FUNCTION_26();
    }

    v19 = 1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v11 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v17, v18, "#SmsNLv4Intent:allRecipientsHaveUsoIdentifier getRecipients() list is empty, return false");
      OUTLINED_FUNCTION_26();
    }

LABEL_20:
    v19 = 0;
  }

  return v19;
}

uint64_t sub_267DD4A5C(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, a2);
  if (!*(v2 + v4))
  {
    return 0;
  }

  a1(v5);
  OUTLINED_FUNCTION_361();
  if (!a1)
  {
    return 0;
  }

  return 1;
}

BOOL sub_267DD4AD0(uint64_t a1, uint64_t a2)
{
  v2 = sub_267DD89C4(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t sub_267DD4B24@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267DD7EA4();
  if (v2 > 5u)
  {
    v3 = MEMORY[0x277D5B960];
  }

  else
  {
    v3 = qword_279C2E5B8[v2];
  }

  v4 = *v3;
  sub_267EF3868();
  OUTLINED_FUNCTION_22();
  v7 = *(v6 + 104);

  return v7(a1, v4, v5);
}

uint64_t sub_267DD4BB4()
{
  v2 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_57_13();
  v6 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoParse;
  sub_267EF4C68();
  OUTLINED_FUNCTION_22();
  (*(v7 + 16))(v1, v0 + v6);
  (*(v4 + 104))(v1, *MEMORY[0x277D5C160], v2);
  return sub_267EF4B98();
}

void sub_267DD4CB4()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v1;
  v90 = sub_267EF5818();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v81 = v8 - v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  v85 = v11;
  OUTLINED_FUNCTION_26_2();
  v12 = sub_267EF5AC8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_60();
  v82 = v14 - v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_64_11();
  v17 = sub_267EF57C8();
  OUTLINED_FUNCTION_58();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_60();
  v87 = v21 - v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_65_11();
  v24 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, &v98);
  v80 = v24;
  if (!*(v1 + v24))
  {
    goto LABEL_9;
  }

  sub_267EF5C58();
  OUTLINED_FUNCTION_361();
  if (!v0)
  {
    goto LABEL_9;
  }

  if (!sub_267BAF0DC(v0))
  {

LABEL_9:

    v0 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v25 = OUTLINED_FUNCTION_45_17();
  sub_267BBD0EC(v25, v26, v0);
  if ((v0 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_106_4();
  }

  else
  {
  }

  sub_267EF5988();

  if (!v97)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_69_9();
  sub_267EF5A38();
  OUTLINED_FUNCTION_361();
LABEL_10:
  v27 = 0;
  v93 = *(v0 + 16);
  v91 = *MEMORY[0x277D5E6F8];
  v83 = *MEMORY[0x277D5E520];
  v89 = (v6 + 104);
  v95 = (v19 + 8);
  v96 = v17;
  v88 = v12;
  v84 = v0;
  while (v93 != v27)
  {
    if (v27 >= *(v0 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_44_16();
    v28(v2);
    v29 = sub_267EF57B8();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_92_9();
    v33(v32, v91, v12);
    sub_267EF5AB8();
    OUTLINED_FUNCTION_102_7();
    v34 = OUTLINED_FUNCTION_92_9();
    v35(v34, v12);
    if (!v31)
    {

LABEL_21:
      v37 = OUTLINED_FUNCTION_56_14();
      v38(v37, v96);
      goto LABEL_28;
    }

    if (v29 == v4 && v31 == v3)
    {
    }

    else
    {
      v4 = OUTLINED_FUNCTION_28_26(v29);

      if ((v4 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v39 = sub_267EF57A8();
    v41 = v40;
    (*v89)(v85, v83, v90);
    sub_267EF5808();
    OUTLINED_FUNCTION_102_7();
    v42 = OUTLINED_FUNCTION_85_11();
    v43(v42);
    if (v39 == v4 && v41 == v85)
    {

      v51 = OUTLINED_FUNCTION_56_14();
      v52(v51);
LABEL_37:

      if (qword_280228818 == -1)
      {
LABEL_38:
        v53 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v53, qword_280240FB0);
        v54 = sub_267EF89F8();
        v55 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v55))
        {
          v56 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v56);
          v59 = "#SmsNLv4Intent request to an emergency service";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

LABEL_72:
      OUTLINED_FUNCTION_0(&qword_280228818);
      goto LABEL_38;
    }

    v4 = OUTLINED_FUNCTION_28_26(v39);

    v45 = OUTLINED_FUNCTION_56_14();
    v46(v45, v96);
    v12 = v88;
    v0 = v84;
    if (v4)
    {
      goto LABEL_37;
    }

LABEL_28:
    ++v27;
  }

  v47 = v82;
  if (*(v1 + v80))
  {

    sub_267EF5C58();
    OUTLINED_FUNCTION_361();
    if (v0)
    {
      if (sub_267BAF0DC(v0))
      {
        v48 = OUTLINED_FUNCTION_45_17();
        sub_267BBD0EC(v48, v49, v0);
        if ((v0 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_106_4();
        }

        else
        {
        }

        sub_267EF5988();

        v50 = v97;
        if (v97)
        {
          sub_267EF5B78();
          OUTLINED_FUNCTION_43();

          sub_267EF5A38();
          OUTLINED_FUNCTION_361();
          goto LABEL_42;
        }
      }

      else
      {
      }
    }
  }

  v50 = MEMORY[0x277D84F90];
LABEL_42:
  v60 = 0;
  v94 = *(v50 + 16);
  v92 = *MEMORY[0x277D5E6D0];
  v86 = *MEMORY[0x277D5E518];
  v61 = v87;
  while (2)
  {
    if (v94 == v60)
    {

      goto LABEL_69;
    }

    if (v60 >= *(v50 + 16))
    {
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_44_16();
    v62(v61);
    v63 = sub_267EF57B8();
    v65 = v64;
    v66 = OUTLINED_FUNCTION_56_14();
    v67(v66, v92, v12);
    sub_267EF5AB8();
    OUTLINED_FUNCTION_102_7();
    v68 = OUTLINED_FUNCTION_56_14();
    v69(v68, v12);
    if (!v65)
    {

LABEL_53:
      v61 = v87;
      (*v95)(v87, v96);
LABEL_60:
      ++v60;
      continue;
    }

    break;
  }

  if (v63 == v4 && v65 == v47)
  {

    goto LABEL_55;
  }

  v4 = OUTLINED_FUNCTION_28_26(v63);

  if ((v4 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_55:
  v61 = v87;
  v71 = sub_267EF57A8();
  v73 = v72;
  (*v89)(v81, v86, v90);
  sub_267EF5808();
  OUTLINED_FUNCTION_102_7();
  v74 = OUTLINED_FUNCTION_56_14();
  v75(v74, v90);
  if (v71 != v4 || v73 != v81)
  {
    v4 = OUTLINED_FUNCTION_28_26(v71);

    (*v95)(v87, v96);
    v12 = v88;
    v47 = v82;
    if (v4)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  (*v95)(v87, v96);
LABEL_63:

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v77 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v77, qword_280240FB0);
  v54 = sub_267EF89F8();
  v78 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v78))
  {
    v79 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v79);
    v59 = "#SmsNLv4Intent request to an emergency number";
LABEL_67:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v57, v58, v59);
    OUTLINED_FUNCTION_26();
  }

LABEL_68:

LABEL_69:
  OUTLINED_FUNCTION_47();
}

void sub_267DD5530()
{
  OUTLINED_FUNCTION_48_0();
  v286 = v3;
  v284 = sub_267EF57C8();
  OUTLINED_FUNCTION_58();
  v280 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v278 = &v252 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_45_0();
  v276 = v8;
  v277 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  v279 = v11;
  OUTLINED_FUNCTION_26_2();
  v269 = sub_267EF6098();
  OUTLINED_FUNCTION_58();
  v271 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_0();
  v266 = v15 - v14;
  *&v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A888, &qword_267F01F90);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v273 = (&v252 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A890, &qword_267F01F98);
  v19 = OUTLINED_FUNCTION_18(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_60();
  v267 = v20 - v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v270 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_45_0();
  v272 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299D0, &unk_267F09690);
  OUTLINED_FUNCTION_18(v26);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_52_0();
  v28 = sub_267EF51F8();
  OUTLINED_FUNCTION_58();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  v34 = v33 - v32;
  v35 = sub_267EF5318();
  OUTLINED_FUNCTION_58();
  v282 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_57_13();
  v274 = v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage) = 0;
  v275 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_language;
  *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_language) = 0;
  v265 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_requestSelectMessage;
  *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_requestSelectMessage) = 0;
  v38 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoParse;
  v39 = sub_267EF4C68();
  v283 = *(v39 - 1);
  v40 = *(v283 + 16);
  v285 = v0;
  v281 = v38;
  v40(v0 + v38, v286, v39);
  sub_267EF4C48();
  sub_267EF51A8();
  (*(v30 + 8))(v34, v28);
  v41 = 0x280228000uLL;
  if (__swift_getEnumTagSinglePayload(v2, 1, v35) != 1)
  {
    v54 = v282;
    (*(v282 + 32))(v1, v2, v35);
    v55 = sub_267EF5288();
    v264 = v35;
    if (v55)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v56 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);
      v43 = sub_267EF89F8();
      v57 = sub_267EF95D8();
      v58 = OUTLINED_FUNCTION_7_2(v57);
      v53 = v281;
      if (v58)
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_16_28();
        _os_log_impl(v59, v60, v61, v62, v63, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      OUTLINED_FUNCTION_83_9();
      (v43)(v286, v39);
      (*(v54 + 8))(v1, v264);
      v47 = &OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_editMessageState;
      goto LABEL_13;
    }

    v65 = v285;
    (*(v54 + 16))(v285 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_userDialogAct, v1, v35);
    v66 = sub_267EF52F8();
    v67 = sub_267BAF0DC(v66);
    v263 = v39;
    if (!v67)
    {

      v258 = 0;
      OUTLINED_FUNCTION_8_45();
      v93 = (v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask);
      *v93 = 0u;
      v93[1] = 0u;
      v261 = 16;
      v259 = MEMORY[0x277D84F90];
      v260 = MEMORY[0x277D84F90];
      v70 = v284;
LABEL_172:
      v79 = v274;
      goto LABEL_173;
    }

    v257 = v1;
    v68 = OUTLINED_FUNCTION_45_17();
    sub_267BBD0EC(v68, v69, v66);
    v70 = v284;
    v71 = v286;
    if ((v66 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v66);
    }

    else
    {
    }

    v35 = 0x4D5F6E6F6D6D6F63;
    v39 = sub_267EF66C8();
    v73 = v72;

    v74 = v39 == 0x4D5F6E6F6D6D6F63 && v73 == 0xEE00656761737365;
    if (!v74 && (sub_267EF9EA8() & 1) == 0)
    {
      v75 = v39 == 0x6E456F4E5F6F7375 && v73 == 0xEC00000079746974;
      v76 = v282;
      if (!v75 && (sub_267EF9EA8() & 1) == 0)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v107 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v107, qword_280240FB0);

        v108 = sub_267EF89F8();
        v109 = sub_267EF95D8();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = OUTLINED_FUNCTION_48();
          v111 = OUTLINED_FUNCTION_52();
          *&v292 = v111;
          *v110 = 136315138;
          v112 = sub_267BA33E8(v39, v73, &v292);

          *(v110 + 4) = v112;
          OUTLINED_FUNCTION_16_28();
          _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v111);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_29_1();
        }

        else
        {
        }

        v120 = *(v283 + 8);
        v121 = v71;
        v122 = v263;
        v120(v121, v263);
        v123 = *(v76 + 8);
        v124 = v264;
        v123(v257, v264);
        v64 = v285;
        v120(&v281[v285], v122);
        v123(v64 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_userDialogAct, v124);
        v47 = &OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_editMessageState;
        goto LABEL_14;
      }
    }

    v77 = OUTLINED_FUNCTION_45_17();
    sub_267BBD0EC(v77, v78, v66);
    v65 = v285;
    if ((v66 & 0xC000000000000001) != 0)
    {
      v79 = MEMORY[0x26D609870](0, v66);
    }

    else
    {
      v79 = *(v66 + 32);
    }

    v41 = 1684956531;

    v80 = v79;
    sub_267EF66B8();
    OUTLINED_FUNCTION_47_15();
    v83 = v74 && v82 == 0xE400000000000000;
    v1 = v257;
    if (v83 || (v84 = v81, (OUTLINED_FUNCTION_7_39(1684956531, 0xE400000000000000) & 1) != 0))
    {

      v258 = 0;
      v85 = 4;
LABEL_36:
      v261 = v85;
      goto LABEL_37;
    }

    v99 = v84 == 0x796C706572 && v79 == 0xE500000000000000;
    if (v99 || (OUTLINED_FUNCTION_7_39(0x796C706572, 0xE500000000000000) & 1) != 0)
    {

      v258 = 0;
      v85 = 5;
      goto LABEL_36;
    }

    v118 = v84 == 1684104562 && v79 == 0xE400000000000000;
    if (v118 || (OUTLINED_FUNCTION_7_39(1684104562, 0xE400000000000000) & 1) != 0)
    {

      v258 = 0;
      v85 = 3;
      goto LABEL_36;
    }

    v129 = v84 == 0x736972616D6D7573 && v79 == 0xE900000000000065;
    if (v129 || (OUTLINED_FUNCTION_7_39(0x736972616D6D7573, 0xE900000000000065) & 1) != 0)
    {

      v258 = 0;
      v85 = 17;
      goto LABEL_36;
    }

    v136 = v84 == 0x657461647075 && v79 == 0xE600000000000000;
    if (v136 || (OUTLINED_FUNCTION_7_39(0x657461647075, 0xE600000000000000) & 1) != 0)
    {

      v258 = 0;
      v85 = 18;
      goto LABEL_36;
    }

    if (v84 == 0x6572616873 && v79 == 0xE500000000000000)
    {

      v258 = 0;
      v85 = 14;
      goto LABEL_36;
    }

    if (OUTLINED_FUNCTION_7_39(0x6572616873, 0xE500000000000000))
    {

      v258 = 0;
      v157 = 14;
    }

    else
    {
LABEL_146:
      v161 = v84 == 0x6574656C6564 && v80 == 0xE600000000000000;
      if (v161 || (OUTLINED_FUNCTION_7_39(0x6574656C6564, 0xE600000000000000) & 1) != 0)
      {

        v258 = 0;
        v157 = 8;
      }

      else
      {
        v164 = v84 == 1886352499 && v80 == 0xE400000000000000;
        if (v164 || (OUTLINED_FUNCTION_7_39(1886352499, 0xE400000000000000) & 1) != 0)
        {

          v258 = 0;
          v157 = 13;
        }

        else
        {
          v241 = v84 == 0x74736575716572 && v80 == 0xE700000000000000;
          if (v241 || (OUTLINED_FUNCTION_7_39(0x74736575716572, 0xE700000000000000) & 1) != 0)
          {

            v258 = 0;
            v157 = 19;
          }

          else
          {
            v242 = v84 == 0x6978456B63656863 && v80 == 0xEE0065636E657473;
            if (v242 || (OUTLINED_FUNCTION_7_39(0x6978456B63656863, 0xEE0065636E657473) & 1) != 0)
            {

              v258 = 0;
              v157 = 20;
            }

            else
            {
              v243 = v84 == 0x77726F4670696B73 && v80 == 0xEB00000000647261;
              if (v243 || (OUTLINED_FUNCTION_7_39(0x77726F4670696B73, 0xEB00000000647261) & 1) != 0)
              {

                v258 = 1;
                v157 = 21;
              }

              else
              {
                v244 = v84 == 0x65726168736E75 && v80 == 0xE700000000000000;
                if (v244 || (OUTLINED_FUNCTION_7_39(0x65726168736E75, 0xE700000000000000) & 1) != 0)
                {

                  v258 = 0;
                  v157 = 22;
                }

                else
                {
                  v245 = v84 == 0x646E65736E75 && v80 == 0xE600000000000000;
                  if (v245 || (OUTLINED_FUNCTION_7_39(0x646E65736E75, 0xE600000000000000) & 1) != 0)
                  {

                    v258 = 0;
                    v157 = 23;
                  }

                  else
                  {
                    v246 = v84 == 2036427888 && v80 == 0xE400000000000000;
                    if (v246 || (OUTLINED_FUNCTION_7_39(2036427888, 0xE400000000000000) & 1) != 0)
                    {

                      v258 = 0;
                      v157 = 15;
                    }

                    else
                    {
                      v247 = v84 == 0x746165706572 && v80 == 0xE600000000000000;
                      if (v247 || (OUTLINED_FUNCTION_7_39(0x746165706572, 0xE600000000000000) & 1) != 0)
                      {

                        v258 = 0;
                        v157 = 24;
                      }

                      else
                      {
                        v248 = v84 == 0x7463616572 && v80 == 0xE500000000000000;
                        if (v248 || (OUTLINED_FUNCTION_7_39(0x7463616572, 0xE500000000000000) & 1) != 0)
                        {

                          v258 = 0;
                          v157 = 25;
                        }

                        else
                        {
                          v249 = v84 == 0x74636165726E75 && v80 == 0xE700000000000000;
                          if (!v249 && (OUTLINED_FUNCTION_7_39(0x74636165726E75, 0xE700000000000000) & 1) == 0)
                          {
                            if (v84 == 0x6552657461647075 && v80 == 0xEE006E6F69746361)
                            {
                            }

                            else
                            {
                              v251 = OUTLINED_FUNCTION_7_39(0x6552657461647075, 0xEE006E6F69746361);

                              if ((v251 & 1) == 0)
                              {
                                v258 = 0;
                                v157 = 16;
                                goto LABEL_152;
                              }
                            }

                            v258 = 0;
                            v157 = 27;
                            goto LABEL_152;
                          }

                          v258 = 0;
                          v157 = 26;
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

LABEL_152:
    v261 = v157;
    v1 = v257;
    v70 = v284;
LABEL_37:

    sub_267EF5CF8();

    v86 = (v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask);
    v87 = v293;
    *v86 = v292;
    v86[1] = v87;
    sub_267BB170C(v86, &v292, &qword_28022AEF0, &qword_267EFCDE0);
    if (*(&v293 + 1))
    {
      sub_267BB170C(&v292, v291, &qword_28022AEF0, &qword_267EFCDE0);
      v88 = sub_267EF5FD8();
      v89 = MEMORY[0x277D84F70];
      if (OUTLINED_FUNCTION_103_7(v88, v90, v91, v88))
      {

        v41 = sub_267EF6608();
        v92 = sub_267EF6608();
LABEL_43:
        v97 = v92;

        if (v97)
        {
          v35 = sub_267EF60D8();
          v39 = v98;
        }

        else
        {

          v35 = 0;
          v39 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0(v291);
        sub_267B9F98C(&v292, &qword_28022AEF0, &qword_267EFCDE0);
LABEL_171:
        v259 = MEMORY[0x277D84F90];
        v260 = MEMORY[0x277D84F90];
        goto LABEL_172;
      }

      v94 = sub_267EF65D8();
      if (OUTLINED_FUNCTION_103_7(v94, v95, v96, v94))
      {

        v41 = sub_267EF5578();
        v92 = sub_267EF5578();
        goto LABEL_43;
      }

      v100 = sub_267EF5F68();
      if (OUTLINED_FUNCTION_3_53(v100))
      {
        v39 = v290;

        sub_267EF5C38();
        v101 = v289;
        v84 = v274;
        swift_beginAccess();
        *v84 = v101;

        sub_267EF5C38();

        if (v289)
        {
          sub_267EF5C58();
          OUTLINED_FUNCTION_80_9();
          v273 = v39;
          v281 = v79;
          v80 = MEMORY[0x277D84F90];
          v289 = MEMORY[0x277D84F90];
          v39 = sub_267BAF0DC(0x4D5F6E6F6D6D6F63);
          v79 = 0;
          v41 = 0x4000000000000001;
          v259 = v80;
          v260 = v80;
          while (v39 != v79)
          {
            v65 = MEMORY[0x26D609870](v79, 0x4D5F6E6F6D6D6F63);
            v102 = (v79 + 1);
            if (__OFADD__(v79, 1))
            {
              __break(1u);
              __break(1u);
LABEL_145:
              __break(1u);
              __break(1u);
              goto LABEL_146;
            }

            sub_267EF5988();
            v80 = v287;
            if (v287)
            {
              v84 = sub_267EF56B8();
            }

            else
            {
              v84 = 0;
            }

            sub_267EF5C28();
            sub_267EF5E08();

            v79 = (v79 + 1);
            if (v287)
            {
              MEMORY[0x26D608F90](v103);
              OUTLINED_FUNCTION_91_10();
              if (v105)
              {
                OUTLINED_FUNCTION_8_2(v104);
                sub_267EF9328();
              }

              v80 = &v289;
              sub_267EF9368();
              v260 = v289;
              v79 = v102;
            }
          }

          v79 = 0;
          v289 = MEMORY[0x277D84F90];
          while (v39 != v79)
          {
            v65 = MEMORY[0x26D609870](v79, 0x4D5F6E6F6D6D6F63);
            v125 = (v79 + 1);
            if (__OFADD__(v79, 1))
            {
              goto LABEL_145;
            }

            sub_267EF5988();
            v84 = v287;
            if (v287)
            {
              v80 = sub_267EF56B8();
            }

            else
            {
              v80 = 0;
            }

            sub_267EF5BC8();
            sub_267EF5E08();

            v79 = (v79 + 1);
            if (v287)
            {
              MEMORY[0x26D608F90](v126);
              OUTLINED_FUNCTION_91_10();
              if (v105)
              {
                OUTLINED_FUNCTION_8_2(v127);
                sub_267EF9328();
              }

              v80 = &v289;
              sub_267EF9368();
              v259 = v289;
              v79 = v125;
            }
          }

          v70 = v284;
          v65 = v285;
          v1 = v257;
        }

        else
        {

          v259 = MEMORY[0x277D84F90];
          v260 = MEMORY[0x277D84F90];
        }

        v79 = v274;
        __swift_destroy_boxed_opaque_existential_0(v291);
        sub_267B9F98C(&v292, &qword_28022AEF0, &qword_267EFCDE0);
        OUTLINED_FUNCTION_8_45();
LABEL_173:
        swift_beginAccess();
        if (!*v79)
        {
          v229 = OUTLINED_FUNCTION_32_16();
          v230(v229, v263);
          v231 = OUTLINED_FUNCTION_90_10();
          v232(v231);
          swift_endAccess();
          v233 = v258;
          v172 = v261;
LABEL_201:
          *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_isNext) = v233 & 1;
          *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb) = v172;
          v239 = v259;
          *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientPersons) = v260;
          *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientGroups) = v239;
          *(v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoReactionType) = v41;
          v240 = (v65 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoReactionName);
          *v240 = v35;
          v240[1] = v39;
          goto LABEL_202;
        }

        v253 = v39;
        v254 = v35;
        v255 = v41;
        swift_endAccess();

        v171 = sub_267EF5C98();

        v172 = v261;
        if (v171)
        {
          OUTLINED_FUNCTION_69_9();
          v173 = sub_267EF5A38();

          if (v173)
          {
            v257 = v1;
            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_280228818);
            }

            v174 = sub_267EF8A08();
            v175 = __swift_project_value_buffer(v174, qword_280240FB0);
            v176 = swift_allocObject();
            *(v176 + 16) = v173;
            OUTLINED_FUNCTION_62_0();
            v177 = swift_allocObject();
            *(v177 + 16) = sub_267CD9BA4;
            *(v177 + 24) = v176;

            v270 = v175;
            v178 = sub_267EF89F8();
            v179 = sub_267EF95D8();
            v180 = OUTLINED_FUNCTION_108_8(&unk_2878D5D38);
            *(v180 + 16) = 32;
            v181 = OUTLINED_FUNCTION_108_8(&unk_2878D5D60);
            *(v181 + 16) = 8;
            OUTLINED_FUNCTION_62_0();
            v182 = swift_allocObject();
            *(v182 + 16) = sub_267DDD558;
            *(v182 + 24) = v177;
            OUTLINED_FUNCTION_62_0();
            v183 = swift_allocObject();
            *(v183 + 16) = sub_267CD9B60;
            *(v183 + 24) = v182;
            v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
            inited = swift_initStackObject();
            v268 = xmmword_267EFCE30;
            *(inited + 16) = xmmword_267EFCE30;
            *(inited + 32) = sub_267CD9B58;
            *(inited + 40) = v180;
            *(inited + 48) = sub_267CD9CCC;
            *(inited + 56) = v181;
            *(inited + 64) = sub_267CD9B68;
            *(inited + 72) = v183;
            swift_setDeallocating();
            sub_267DB6FAC();
            if (os_log_type_enabled(v178, v179))
            {
              v185 = OUTLINED_FUNCTION_48();
              v186 = OUTLINED_FUNCTION_52();
              *&v292 = v186;
              *v185 = 136315138;
              v187 = MEMORY[0x26D608FD0](v173, v70);
              v189 = sub_267BA33E8(v187, v188, &v292);

              *(v185 + 4) = v189;
              _os_log_impl(&dword_267B93000, v178, v179, "#SmsNLv4Intent Language identifiers: %s", v185, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v186);
              OUTLINED_FUNCTION_32_0();
              OUTLINED_FUNCTION_32_0();
            }

            v65 = v285;
            v191 = v279;
            v192 = v278;
            v252 = v173;
            v193 = *(v173 + 16);
            if (v193)
            {
              v281 = *(v280 + 16);
              v194 = *(v280 + 80);
              v195 = v252 + ((v194 + 32) & ~v194);
              v196 = *(v280 + 72);
              v266 = (v194 + 16) & ~v194;
              v267 = v194;
              v265 = (v280 + 32);
              v273 = (v280 + 8);
              v274 = v196;
              *&v190 = 136315138;
              v256 = v190;
              v280 += 16;
              do
              {
                (v281)(v191, v195, v70);
                v197 = sub_267EF57B8();
                if (v198)
                {
                  if (v197 == 0x75676E614C736D73 && v198 == 0xEB00000000656761)
                  {

LABEL_190:
                    v203 = v276;
                    v204 = v281;
                    (v281)(v276, v191, v70);
                    v204(v192, v203, v70);
                    v205 = v266;
                    v206 = swift_allocObject();
                    (*v265)(v206 + v205, v203, v70);
                    v207 = sub_267EF89F8();
                    LODWORD(v205) = sub_267EF95D8();
                    v208 = OUTLINED_FUNCTION_108_8(&unk_2878D5E00);
                    *(v208 + 16) = 32;
                    v209 = OUTLINED_FUNCTION_108_8(&unk_2878D5E28);
                    *(v209 + 16) = 8;
                    OUTLINED_FUNCTION_62_0();
                    v210 = swift_allocObject();
                    *(v210 + 16) = sub_267DDD560;
                    *(v210 + 24) = v206;
                    OUTLINED_FUNCTION_62_0();
                    v211 = swift_allocObject();
                    *(v211 + 16) = sub_267CD9CC4;
                    *(v211 + 24) = v210;
                    v212 = swift_initStackObject();
                    *(v212 + 16) = v268;
                    *(v212 + 32) = sub_267CD9CCC;
                    *(v212 + 40) = v208;
                    *(v212 + 48) = sub_267CD9CCC;
                    *(v212 + 56) = v209;
                    *(v212 + 64) = sub_267CD9CB4;
                    *(v212 + 72) = v211;
                    swift_setDeallocating();
                    sub_267DB6FAC();
                    LODWORD(v271) = v205;
                    v213 = os_log_type_enabled(v207, v205);
                    v214 = v273;
                    if (v213)
                    {
                      v215 = OUTLINED_FUNCTION_48();
                      v216 = OUTLINED_FUNCTION_52();
                      *&v292 = v216;
                      *v215 = v256;
                      v262 = v207;
                      v217 = v278;
                      v218 = sub_267EF57A8();
                      v220 = v219;
                      v272 = *v214;
                      v272(v217, v284);
                      v221 = sub_267BA33E8(v218, v220, &v292);

                      *(v215 + 4) = v221;
                      v222 = v262;
                      _os_log_impl(&dword_267B93000, v262, v271, "#SmsNLv4Intent smsLanguage namespace: %s", v215, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v216);
                      OUTLINED_FUNCTION_32_0();
                      OUTLINED_FUNCTION_32_0();

                      v70 = v284;
                      v65 = v285;
                      v192 = v217;
                    }

                    else
                    {

                      v192 = v278;
                      v70 = v284;
                      v272 = *v214;
                      v272(v278, v284);
                      v65 = v285;
                    }

                    sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);
                    v191 = v279;
                    v223 = sub_267EF57A8();
                    v225 = sub_267BF952C(v223, v224);
                    v272(v191, v70);
                    v226 = *(v65 + v275);
                    *(v65 + v275) = v225;

                    goto LABEL_194;
                  }

                  v200 = sub_267EF9EA8();

                  if (v200)
                  {
                    goto LABEL_190;
                  }
                }

                v201 = OUTLINED_FUNCTION_92_9();
                v202(v201, v70);
LABEL_194:
                v195 += v274;
                --v193;
              }

              while (v193);
            }

            v227 = OUTLINED_FUNCTION_32_16();
            v228(v227, v263);
            (*(v282 + 8))(v257, v264);
            v172 = v261;
            goto LABEL_200;
          }

          v234 = OUTLINED_FUNCTION_32_16();
        }

        else
        {
          v234 = OUTLINED_FUNCTION_32_16();
          v236 = v263;
        }

        v235(v234, v236);
        v237 = OUTLINED_FUNCTION_90_10();
        v238(v237);
LABEL_200:
        v233 = v258;
        v35 = v254;
        v41 = v255;
        v39 = v253;
        goto LABEL_201;
      }

      v106 = sub_267EF5FF8();
      if (OUTLINED_FUNCTION_3_53(v106))
      {
        OUTLINED_FUNCTION_77_6();
        sub_267EF5C38();
LABEL_107:

        OUTLINED_FUNCTION_70_9();
        *v79 = v89;

        __swift_destroy_boxed_opaque_existential_0(v291);
        sub_267B9F98C(&v292, &qword_28022AEF0, &qword_267EFCDE0);
        OUTLINED_FUNCTION_8_45();
        v259 = MEMORY[0x277D84F90];
        v260 = MEMORY[0x277D84F90];
        goto LABEL_173;
      }

      v119 = sub_267EF61E8();
      if (OUTLINED_FUNCTION_3_53(v119))
      {
LABEL_79:
        OUTLINED_FUNCTION_77_6();
        sub_267EF5E28();
        goto LABEL_107;
      }

      v128 = sub_267EF5FE8();
      if (OUTLINED_FUNCTION_3_53(v128))
      {
        OUTLINED_FUNCTION_77_6();
        sub_267EF6358();
        if (v288)
        {

          sub_267EF6348();
          if (!v288)
          {
            sub_267EF6358();
            goto LABEL_107;
          }
        }

        goto LABEL_106;
      }

      v130 = sub_267EF6128();
      if (OUTLINED_FUNCTION_3_53(v130))
      {
        OUTLINED_FUNCTION_77_6();
LABEL_106:
        sub_267EF6348();
        goto LABEL_107;
      }

      v131 = sub_267EF5F48();
      if (OUTLINED_FUNCTION_3_53(v131))
      {
        v132 = v290;

        sub_267EF5E28();
        v133 = v289;
        v134 = v274;
        swift_beginAccess();
        *v134 = v133;

        sub_267EF5E28();

        v265 = v132;
        if (v289 && (v135 = sub_267EF59E8(), , v135))
        {
          sub_267EF6088();

          v39 = v269;
        }

        else
        {
          OUTLINED_FUNCTION_78();
          v39 = v269;
          __swift_storeEnumTagSinglePayload(v141, v142, v143, v269);
        }

        v144 = v268;
        v41 = v270;
        (*(v271 + 104))(v270, *MEMORY[0x277D5EBF0], v39);
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v145, v146, v147, v39);
        v35 = *(v144 + 48);
        v148 = v273;
        OUTLINED_FUNCTION_99_0();
        sub_267BB170C(v149, v150, v151, &qword_267F01F98);
        v281 = v35;
        sub_267BB170C(v41, v148 + v35, &qword_28022A890, &qword_267F01F98);
        OUTLINED_FUNCTION_5_1(v148, 1, v39);
        if (v74)
        {

          OUTLINED_FUNCTION_67_9(v41);
          v152 = v273;
          sub_267B9F98C(v272, &qword_28022A890, &qword_267F01F98);
          OUTLINED_FUNCTION_5_1(&v281[v152], 1, v39);
          if (v74)
          {
            sub_267B9F98C(v152, &qword_28022A890, &qword_267F01F98);
            v258 = 1;
LABEL_140:
            v79 = v274;
            __swift_destroy_boxed_opaque_existential_0(v291);
            sub_267B9F98C(&v292, &qword_28022AEF0, &qword_267EFCDE0);
            OUTLINED_FUNCTION_8_45();
            v259 = MEMORY[0x277D84F90];
            v260 = MEMORY[0x277D84F90];
            v1 = v257;
            goto LABEL_173;
          }
        }

        else
        {
          v35 = v267;
          sub_267BB170C(v148, v267, &qword_28022A890, &qword_267F01F98);
          v41 = v281;
          OUTLINED_FUNCTION_5_1(&v281[v148], 1, v39);
          if (!v153)
          {
            v158 = v271;
            v159 = v266;
            (*(v271 + 32))(v266, v148 + v41, v39);
            sub_267DDD5B8(&qword_28022A8B8, MEMORY[0x277D5EC70], MEMORY[0x277D5EC80]);
            v258 = sub_267EF8FE8();

            v41 = *(v158 + 8);
            (v41)(v159, v39);
            OUTLINED_FUNCTION_67_9(v270);
            OUTLINED_FUNCTION_67_9(v272);
            v160 = OUTLINED_FUNCTION_63();
            (v41)(v160);
            OUTLINED_FUNCTION_67_9(v273);
            goto LABEL_140;
          }

          OUTLINED_FUNCTION_67_9(v270);
          v152 = v273;
          sub_267B9F98C(v272, &qword_28022A890, &qword_267F01F98);
          v154 = OUTLINED_FUNCTION_63();
          v155(v154);
        }

        sub_267B9F98C(v152, &qword_28022A888, &qword_267F01F90);
        v258 = 0;
        goto LABEL_140;
      }

      v137 = sub_267EF6318();
      if (OUTLINED_FUNCTION_3_53(v137))
      {
        goto LABEL_79;
      }

      v138 = sub_267EF60F8();
      if (OUTLINED_FUNCTION_3_53(v138))
      {
        goto LABEL_79;
      }

      v139 = sub_267EF6118();
      if (OUTLINED_FUNCTION_3_53(v139))
      {
        goto LABEL_79;
      }

      v140 = sub_267EF61D8();
      if (OUTLINED_FUNCTION_3_53(v140))
      {
        OUTLINED_FUNCTION_77_6();
        sub_267EF6338();
        v41 = v289;
        v39 = v274;
        swift_beginAccess();
        *v39 = v41;

        sub_267EF6328();

        v79 = v39;

        *&v265[v65] = v289;
LABEL_158:

        __swift_destroy_boxed_opaque_existential_0(v291);
        sub_267B9F98C(&v292, &qword_28022AEF0, &qword_267EFCDE0);
        OUTLINED_FUNCTION_8_45();
        v259 = MEMORY[0x277D84F90];
        v260 = MEMORY[0x277D84F90];
        v1 = v257;
        v70 = v284;
        goto LABEL_173;
      }

      v162 = sub_267EF65C8();
      if (OUTLINED_FUNCTION_3_53(v162))
      {
        OUTLINED_FUNCTION_77_6();
        sub_267EF5E28();
LABEL_157:

        OUTLINED_FUNCTION_70_9();
        *v79 = v89;
        goto LABEL_158;
      }

      v163 = sub_267EF6108();
      if (OUTLINED_FUNCTION_3_53(v163))
      {
        OUTLINED_FUNCTION_77_6();
        sub_267EF54D8();
        goto LABEL_157;
      }

      __swift_destroy_boxed_opaque_existential_0(v291);
      v1 = v257;
      v70 = v284;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v165 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v165, qword_280240FB0);
    v166 = sub_267EF89F8();
    v167 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v167))
    {
      v168 = OUTLINED_FUNCTION_32();
      v281 = v79;
      v35 = v168;
      *v168 = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v169, v170, "#SmsNLv4Intent Unrecognized task");
      OUTLINED_FUNCTION_32_0();
    }

    sub_267B9F98C(&v292, &qword_28022AEF0, &qword_267EFCDE0);
    OUTLINED_FUNCTION_8_45();
    goto LABEL_171;
  }

  sub_267B9F98C(v2, &qword_2802299D0, &unk_267F09690);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v42 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v42, qword_280240FB0);
  v43 = sub_267EF89F8();
  v44 = sub_267EF95E8();
  v45 = OUTLINED_FUNCTION_7_2(v44);
  v46 = v286;
  v47 = &OBJC_IVAR____TtC16SiriMessagesFlow33EditMessageNeedsValueFlowStrategy_editMessageState;
  if (v45)
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_16_28();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_83_9();
  (v43)(v46, v39);
  v53 = v281;
LABEL_13:
  v64 = v285;
  (v43)(&v53[v285], v39);
LABEL_14:

  type metadata accessor for SmsNLv4Intent(0);
  swift_deallocPartialClassInstance();
LABEL_202:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DD75BC()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v13);
  if (!*(v0 + v1))
  {
    sub_267BB170C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask, v12, &qword_28022AEF0, &qword_267EFCDE0);
    if (v12[3])
    {
      v3 = sub_267EF5F38();
      if (OUTLINED_FUNCTION_49_17(v3, v4, v5, v3, v6, v7, v8, v9, v11, v12[0]))
      {

        sub_267EF54D8();

        if (v12[0])
        {
          v2 = v12[0];
          sub_267EF56B8();
          OUTLINED_FUNCTION_54();

          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_267B9F98C(v12, &qword_28022AEF0, &qword_267EFCDE0);
    }

    return 0;
  }

  v2 = sub_267EF56B8();
LABEL_3:

  return v2;
}

uint64_t sub_267DD76D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  v3 = OUTLINED_FUNCTION_18(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_60();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v27[-v8 - 8];
  sub_267DDBD84();
  sub_267C8EFD8(v10, v9);

  v11 = sub_267EF5518();
  v12 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v12, v13, v11);
  if (!v14)
  {
    sub_267BB170C(v9, v6, &qword_28022A8C0, &unk_267F0AC60);
    v23 = *(v11 - 8);
    v24 = (*(v23 + 88))(v6, v11);
    if (v24 == *MEMORY[0x277D5E270])
    {
      v22 = 2;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2B0])
    {
      v22 = 7;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E298])
    {
      v22 = 4;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E318])
    {
      v22 = 32;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E280])
    {
      v22 = 6;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E300])
    {
      v22 = 30;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E330])
    {
      v22 = 24;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2D8])
    {
      v22 = 21;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E320])
    {
      v22 = 0;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2F0])
    {
      v22 = 17;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2E0])
    {
      goto LABEL_41;
    }

    if (v24 == *MEMORY[0x277D5E2C8])
    {
      v22 = 5;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E328])
    {
      v22 = 23;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E348])
    {
      v22 = 29;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E350])
    {
      v22 = 16;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E358])
    {
      v22 = 28;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E290])
    {
      v22 = 3;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2C0])
    {
      v22 = 33;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2A0])
    {
      v22 = 11;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E268])
    {
      v22 = 1;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E310])
    {
      v22 = 26;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2D0])
    {
      v22 = 14;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2E8])
    {
LABEL_41:
      v22 = 18;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E338])
    {
      v22 = 27;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2A8])
    {
      v22 = 34;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E278])
    {
      v22 = 8;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2B8])
    {
      v22 = 9;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E288])
    {
      v22 = 10;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E340])
    {
      v22 = 22;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E308])
    {
      v22 = 19;
      goto LABEL_35;
    }

    if (v24 == *MEMORY[0x277D5E2F8])
    {
      v22 = 31;
      goto LABEL_35;
    }

    (*(v23 + 8))(v6, v11);
  }

  if ((sub_267DD2C14() & 1) == 0)
  {
    goto LABEL_34;
  }

  v15 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v27);
  if (!*(v1 + v15))
  {
    goto LABEL_34;
  }

  sub_267EF5C58();
  OUTLINED_FUNCTION_82_8();
  if (!v6)
  {
    goto LABEL_34;
  }

  v16 = sub_267BAF0DC(v6);

  if (v16 != 1)
  {
    goto LABEL_34;
  }

  v17 = *(v1 + v15);
  if (!v17)
  {
    goto LABEL_34;
  }

  sub_267EF5C58();
  OUTLINED_FUNCTION_54();

  if (!sub_267BAF0DC(v17))
  {

    goto LABEL_34;
  }

  v18 = OUTLINED_FUNCTION_45_17();
  sub_267BBD0EC(v18, v19, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D609870](0, v17);
  }

  else
  {
  }

  sub_267EF5988();

  if (!v26)
  {
    goto LABEL_34;
  }

  sub_267EF56B8();
  OUTLINED_FUNCTION_78_14();
  sub_267EF5C28();
  OUTLINED_FUNCTION_54();

  sub_267EF5E08();

  if (!v26)
  {

    goto LABEL_34;
  }

  sub_267EF56B8();

  v20 = sub_267EF6768();

  v21 = *(v20 + 16);

  if (v21)
  {
LABEL_34:
    v22 = 35;
    goto LABEL_35;
  }

  v22 = 13;
LABEL_35:
  sub_267B9F98C(v9, &qword_28022A8C0, &unk_267F0AC60);
  return v22;
}

uint64_t sub_267DD7D4C(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, a2);
  if (*(v2 + v4))
  {

    sub_267EF59F8();
    v5 = OUTLINED_FUNCTION_78_14();
    if (v4)
    {
      a1(v5);
    }
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267DD7DDC()
{
  v1 = sub_267DDA204();
  v2 = v1;
  if (v1 >> 62)
  {
    if (sub_267EF9A68())
    {
      goto LABEL_3;
    }

LABEL_8:

    return OUTLINED_FUNCTION_61_0();
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_106_4();
  }

  else
  {
  }

  sub_267EF5EB8();
  OUTLINED_FUNCTION_78_14();
  if (v0)
  {
    sub_267EABD04();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267DD7EA4()
{
  if (sub_267EF5258())
  {
    return 0;
  }

  if (sub_267EF5268())
  {
    return 1;
  }

  if (sub_267EF5278())
  {
    return 2;
  }

  if (sub_267EF52D8())
  {
    return 6;
  }

  if (sub_267EF52B8())
  {
    return 5;
  }

  return 8;
}

void sub_267DD7F3C()
{
  OUTLINED_FUNCTION_48_0();
  v4 = sub_267EF5F28();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3E0, &qword_267F00AA0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_30_25();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_45_0();
  v141 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A3D8, &qword_267F08D00);
  v15 = OUTLINED_FUNCTION_18(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_60();
  v136 = v16 - v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v138 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v143 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0();
  v137 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v139 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_45_0();
  v140 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  v29 = OUTLINED_FUNCTION_18(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_60();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v135 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  v37 = OUTLINED_FUNCTION_18(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29_23();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_141();
  sub_267DDC05C();
  sub_267C8EFC0(v39, v2);

  v40 = sub_267EF6288();
  OUTLINED_FUNCTION_5_1(v2, 1, v40);
  if (!v81)
  {
    v135 = v1;
    v46 = v10;
    v47 = v6;
    v48 = v4;
    v49 = OUTLINED_FUNCTION_68_0();
    sub_267BB170C(v49, v50, v51, v52);
    v53 = *(v40 - 8);
    v54 = (*(v53 + 88))(v3, v40);
    if (v54 == *MEMORY[0x277D5EEF8])
    {
      v55 = &qword_28022AF08;
      v56 = &unk_267F09620;
      v57 = v2;
LABEL_33:
      sub_267B9F98C(v57, v55, v56);
      goto LABEL_51;
    }

    if (v54 == *MEMORY[0x277D5EF38])
    {
      v55 = &qword_28022AF08;
      v56 = &unk_267F09620;
      v57 = v2;
      goto LABEL_33;
    }

    if (v54 == *MEMORY[0x277D5EF30])
    {
      v55 = &qword_28022AF08;
      v56 = &unk_267F09620;
      v57 = v2;
      goto LABEL_33;
    }

    (*(v53 + 8))(v3, v40);
    v4 = v48;
    v6 = v47;
    v10 = v46;
    v1 = v135;
  }

  sub_267B9F98C(v2, &qword_28022AF08, &unk_267F09620);
  sub_267DDBD84();
  sub_267C8EFD8(v41, v35);

  v42 = sub_267EF5518();
  OUTLINED_FUNCTION_5_1(v35, 1, v42);
  v43 = v143;
  if (!v81)
  {
    v58 = OUTLINED_FUNCTION_12_4();
    sub_267BB170C(v58, v59, v60, v61);
    v62 = *(v42 - 8);
    v63 = (*(v62 + 88))(v32, v42);
    if (v63 == *MEMORY[0x277D5E368])
    {
      v55 = &qword_28022A8C0;
      v56 = &unk_267F0AC60;
      v57 = v35;
      goto LABEL_33;
    }

    if (v63 == *MEMORY[0x277D5E370])
    {
      v55 = &qword_28022A8C0;
      v56 = &unk_267F0AC60;
      v57 = v35;
      goto LABEL_33;
    }

    if (v63 == *MEMORY[0x277D5E378])
    {
      v55 = &qword_28022A8C0;
      v56 = &unk_267F0AC60;
      v57 = v35;
      goto LABEL_33;
    }

    (*(v62 + 8))(v32, v42);
  }

  sub_267B9F98C(v35, &qword_28022A8C0, &unk_267F0AC60);
  v44 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_22_23(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
  if (!*(v0 + v44))
  {
    v141 = v10;
    if (!*(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_requestSelectMessage))
    {
      goto LABEL_51;
    }

    v64 = v1;
    OUTLINED_FUNCTION_98_8();
    swift_retain_n();
    if (sub_267EF59D8())
    {
      sub_267EF5F18();
    }

    else
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v4);
    }

    v96 = v136;
    v97 = v138;
    (*(v6 + 104))(v138, *MEMORY[0x277D5EA58], v4);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v4);
    v101 = *(v142 + 48);
    OUTLINED_FUNCTION_107_8(v43, v64);
    OUTLINED_FUNCTION_107_8(v97, v64 + v101);
    OUTLINED_FUNCTION_12_32(v64);
    if (v81)
    {
      OUTLINED_FUNCTION_439();
      sub_267B9F98C(v102, v103, v104);
      OUTLINED_FUNCTION_439();
      sub_267B9F98C(v105, v106, v107);
      OUTLINED_FUNCTION_12_32(v64 + v101);
      if (v81)
      {
        sub_267B9F98C(v64, &qword_28022A3D8, &qword_267F08D00);
LABEL_50:
        OUTLINED_FUNCTION_98_8();

        goto LABEL_51;
      }
    }

    else
    {
      v108 = OUTLINED_FUNCTION_68_0();
      sub_267BB170C(v108, v109, v110, v111);
      OUTLINED_FUNCTION_12_32(v64 + v101);
      if (!v112)
      {
        v120 = v64 + v101;
        v121 = v141;
        (*(v6 + 32))(v141, v120, v4);
        OUTLINED_FUNCTION_25_27();
        sub_267DDD5B8(v122, v123, MEMORY[0x277D5EA70]);
        v124 = sub_267EF8FE8();
        v125 = *(v6 + 8);
        v125(v121, v4);
        OUTLINED_FUNCTION_99_0();
        sub_267B9F98C(v126, v127, v128);
        OUTLINED_FUNCTION_99_0();
        sub_267B9F98C(v129, v130, v131);
        v125(v96, v4);
        OUTLINED_FUNCTION_99_0();
        sub_267B9F98C(v132, v133, v134);
        if (v124)
        {
          goto LABEL_50;
        }

LABEL_46:
        v119 = sub_267EF59D8();
        OUTLINED_FUNCTION_98_8();

        if (v119)
        {
        }

        goto LABEL_51;
      }

      OUTLINED_FUNCTION_439();
      sub_267B9F98C(v113, v114, v115);
      OUTLINED_FUNCTION_439();
      sub_267B9F98C(v116, v117, v118);
      (*(v6 + 8))(v96, v4);
    }

    sub_267B9F98C(v64, &qword_28022A3E0, &qword_267F00AA0);
    goto LABEL_46;
  }

  if (sub_267EF59D8())
  {
    v45 = v140;
    sub_267EF5F18();
  }

  else
  {
    v45 = v140;
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v4);
  }

  v68 = v141;
  v69 = v139;
  (*(v6 + 104))(v139, *MEMORY[0x277D5EA58], v4);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v4);
  v73 = *(v142 + 48);
  sub_267BB170C(v45, v68, &qword_28022A3D8, &qword_267F08D00);
  sub_267BB170C(v69, v68 + v73, &qword_28022A3D8, &qword_267F08D00);
  OUTLINED_FUNCTION_12_32(v68);
  if (!v81)
  {
    v80 = v137;
    sub_267BB170C(v68, v137, &qword_28022A3D8, &qword_267F08D00);
    OUTLINED_FUNCTION_12_32(v68 + v73);
    if (!v81)
    {
      (*(v6 + 32))(v10, v68 + v73, v4);
      OUTLINED_FUNCTION_25_27();
      sub_267DDD5B8(v88, v89, MEMORY[0x277D5EA70]);
      sub_267EF8FE8();
      OUTLINED_FUNCTION_43();

      v90 = *(v6 + 8);
      v91 = OUTLINED_FUNCTION_97_10();
      v90(v91);
      sub_267B9F98C(v69, &qword_28022A3D8, &qword_267F08D00);
      sub_267B9F98C(v45, &qword_28022A3D8, &qword_267F08D00);
      v92 = OUTLINED_FUNCTION_97_10();
      v90(v92);
      sub_267B9F98C(v68, &qword_28022A3D8, &qword_267F08D00);
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_439();
    sub_267B9F98C(v82, v83, v84);
    OUTLINED_FUNCTION_439();
    sub_267B9F98C(v85, v86, v87);
    (*(v6 + 8))(v80, v4);
LABEL_30:
    sub_267B9F98C(v68, &qword_28022A3E0, &qword_267F00AA0);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_439();
  sub_267B9F98C(v74, v75, v76);
  OUTLINED_FUNCTION_439();
  sub_267B9F98C(v77, v78, v79);
  OUTLINED_FUNCTION_12_32(v68 + v73);
  if (!v81)
  {
    goto LABEL_30;
  }

  sub_267B9F98C(v68, &qword_28022A3D8, &qword_267F08D00);
LABEL_51:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DD89C4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, a2);
  if (!*(v2 + v3))
  {
    return 0;
  }

  v4 = sub_267EF5C88();

  return v4;
}

uint64_t sub_267DD8A38()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v13);
  if (!*(v0 + v1))
  {
    sub_267BB170C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask, v12, &qword_28022AEF0, &qword_267EFCDE0);
    if (v12[3])
    {
      v3 = sub_267EF5F38();
      if (OUTLINED_FUNCTION_49_17(v3, v4, v5, v3, v6, v7, v8, v9, v11, v12[0]))
      {

        sub_267EF54D8();

        if (v12[0])
        {
          v2 = v12[0];
          sub_267EF59E8();
          OUTLINED_FUNCTION_54();

          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_267B9F98C(v12, &qword_28022AEF0, &qword_267EFCDE0);
    }

    return 0;
  }

  v2 = sub_267EF59E8();
LABEL_3:

  return v2;
}

uint64_t sub_267DD97C4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, a2);
  if (!*(v2 + v3))
  {
    return 0;
  }

  sub_267EF5CE8();
  OUTLINED_FUNCTION_361();
  return v3;
}

void *sub_267DD9868(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_21_24(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, a2);
  v5 = *(v2 + v4);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = OUTLINED_FUNCTION_12_4();
  sub_267EAD4F4(v7, v8);
  OUTLINED_FUNCTION_361();
  v9 = sub_267BAF0DC(a2);
  if (!v9)
  {
LABEL_11:

    return v6;
  }

  v10 = v9;
  result = sub_267C7252C(0, v9 & ~(v9 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = OUTLINED_FUNCTION_64_0();
        MEMORY[0x26D609870](v13);
      }

      else
      {
      }

      v14 = sub_267EF5C18();
      v16 = v15;

      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_267C7252C((v17 > 1), v18 + 1, 1);
      }

      ++v12;
      *(v6 + 16) = v18 + 1;
      v19 = v6 + 48 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      *(v19 + 48) = 0u;
      *(v19 + 64) = 0u;
    }

    while (v10 != v12);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_267DD99C4()
{
  OUTLINED_FUNCTION_48_0();
  v1 = sub_267EF6288();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_60();
  v24 = v5 - v6;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_141();
  sub_267DDC05C();
  v9 = v8;
  v10 = 0;
  v25 = *(v8 + 16);
  v23 = *MEMORY[0x277D5EEF8];
  v11 = (v3 + 8);
  while (1)
  {
    if (v25 == v10)
    {

      sub_267DD7F3C();
      OUTLINED_FUNCTION_95_10();
      if (!v13)
      {
        sub_267D6CE3C(v17);
        OUTLINED_FUNCTION_11_1();
        if (v20)
        {
          v22 = v21 == 0xED00006567617373;
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
LABEL_14:
        }

        else
        {
          OUTLINED_FUNCTION_394();
          sub_267EF9EA8();
          OUTLINED_FUNCTION_43();
        }
      }

      OUTLINED_FUNCTION_47();
      return;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    (*(v3 + 16))(v0, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v1);
    (*(v3 + 104))(v24, v23, v1);
    OUTLINED_FUNCTION_27_23();
    sub_267DDD5B8(&qword_280229420, v12, MEMORY[0x277D5EF98]);
    OUTLINED_FUNCTION_97_10();
    sub_267EF9298();
    OUTLINED_FUNCTION_97_10();
    sub_267EF9298();
    v13 = v28 == v26 && v29 == v27;
    if (v13)
    {
      v18 = *v11;
      v19 = OUTLINED_FUNCTION_89_0();
      v18(v19);
      (v18)(v0, v1);

      goto LABEL_14;
    }

    ++v10;
    v14 = sub_267EF9EA8();
    v15 = v9;
    v16 = *v11;
    (*v11)(v24, v1);
    (v16)(v0, v1);
    v9 = v15;

    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_267DD9CA0()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_60();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_65_11();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_22_23(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
  v13 = *(v0 + v12);
  if (v13 && (, sub_267EF5C68(), OUTLINED_FUNCTION_82_8(), v2))
  {
    v34 = v10;
    v35 = v1;
    v14 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
    v15 = sub_267BAF0DC(v2);
    v16 = v15;
    v17 = 0;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    while (v16 != v17)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        LODWORD(v15) = MEMORY[0x26D609870](v17, v2);
      }

      else
      {
        if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }
      }

      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        if (v15 == *MEMORY[0x277D5EF20] || v15 == *MEMORY[0x277D5EF60])
        {
LABEL_39:
          sub_267B9F98C(v18, &qword_28022AF08, &unk_267F09620);
          goto LABEL_28;
        }

        (*(v12 + 8))(v16, v13);
LABEL_26:
        v23 = &qword_28022AF08;
        v24 = &unk_267F09620;
        v25 = v18;
        goto LABEL_20;
      }

      sub_267EF5988();
      if (v36)
      {
        v13 = sub_267EF56B8();
      }

      else
      {
        v13 = 0;
      }

      sub_267EF5EC8();
      OUTLINED_FUNCTION_105_10();

      ++v17;
      if (v36)
      {
        v13 = &v37;
        MEMORY[0x26D608F90](v15);
        v19 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
        {
          OUTLINED_FUNCTION_8_2(v19);
          sub_267EF9328();
        }

        LODWORD(v15) = sub_267EF9368();
        v14 = v37;
        v17 = v12;
      }
    }

    if (sub_267BAF0DC(v14))
    {
      v26 = OUTLINED_FUNCTION_45_17();
      sub_267BBD0EC(v26, v27, v14);
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](0, v14);
      }

      else
      {
      }

      v16 = v34;
      v18 = v35;

      sub_267EF5EA8();
      OUTLINED_FUNCTION_82_8();
      sub_267EF6278();

      v13 = sub_267EF6288();
      v28 = OUTLINED_FUNCTION_59_14();
      OUTLINED_FUNCTION_5_1(v28, v29, v13);
      if (!v22)
      {
        sub_267BB170C(v35, v34, &qword_28022AF08, &unk_267F09620);
        v12 = *(v13 - 1);
        LODWORD(v15) = (*(v12 + 88))(v34, v13);
        if (v15 != *MEMORY[0x277D5EEE8] && v15 != *MEMORY[0x277D5EEE0] && v15 != *MEMORY[0x277D5EF38] && v15 != *MEMORY[0x277D5EF30])
        {
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      goto LABEL_26;
    }
  }

  else
  {
    sub_267DDBD84();
    sub_267C8EFD8(v20, v3);

    v21 = sub_267EF5518();
    OUTLINED_FUNCTION_5_1(v3, 1, v21);
    if (v22)
    {
      v23 = &qword_28022A8C0;
      v24 = &unk_267F0AC60;
      v25 = v3;
LABEL_20:
      sub_267B9F98C(v25, v23, v24);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_64_0();
      v31(v30);
      v32 = OUTLINED_FUNCTION_64_0();
      v33(v32);
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DDA230(unint64_t a1, uint64_t (*a2)(unint64_t))
{
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v2 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v15);
  if (!*(v2 + v5))
  {
    return MEMORY[0x277D84F90];
  }

  (a1)(v6);
  OUTLINED_FUNCTION_361();
  v7 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v7;
  }

  v14 = MEMORY[0x277D84F90];
  result = a2(a1);
  v9 = result;
  v10 = 0;
  while (1)
  {
    if (v9 == v10)
    {

      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = OUTLINED_FUNCTION_64_0();
      result = MEMORY[0x26D609870](v12);
    }

    else
    {
      if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_267EF5988();

    ++v10;
    if (v13)
    {
      MEMORY[0x26D608F90](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      OUTLINED_FUNCTION_73_0();
      result = sub_267EF9368();
      v7 = v14;
      v10 = v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_267DDA3A4()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C128, &qword_267F09648);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_57_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C130, &unk_267F09650);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_6();
  v7 = sub_267EF57F8();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v37);
  if (!*(v0 + v9) || (, sub_267EF56A8(), OUTLINED_FUNCTION_80_9(), !v9))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v14 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v16))
    {
      goto LABEL_17;
    }

    v17 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v17);
    v20 = "#SmsNLv4Intent Cannot get content timestamp since alignments were not found on usoCommonMessage";
    goto LABEL_16;
  }

  sub_267C8EF78(v9, v2);

  v10 = sub_267EF5AA8();
  OUTLINED_FUNCTION_5_1(v2, 1, v10);
  if (v26)
  {
    sub_267B9F98C(v2, &qword_28022C128, &qword_267F09648);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v7);
LABEL_12:
    sub_267B9F98C(v1, &qword_28022C130, &unk_267F09650);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v27 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
    v15 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v28))
    {
      goto LABEL_17;
    }

    v29 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v29);
    v20 = "#SmsNLv4Intent Cannot get content timestamp since spans are missing";
LABEL_16:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v18, v19, v20);
    OUTLINED_FUNCTION_26();
LABEL_17:

    return 0;
  }

  v21 = sub_267EF5A98();
  v22 = OUTLINED_FUNCTION_73_0();
  v23(v22);
  sub_267C8EF90(v21, v1);

  v24 = OUTLINED_FUNCTION_59_14();
  OUTLINED_FUNCTION_5_1(v24, v25, v7);
  if (v26)
  {
    goto LABEL_12;
  }

  v30 = OUTLINED_FUNCTION_1_10();
  v31(v30);
  result = sub_267EF57E8();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v33 = result;
    v34 = sub_267EF57D8();
    v35 = OUTLINED_FUNCTION_64_0();
    result = v36(v35);
    if ((v34 & 0x80000000) == 0)
    {
      return v33;
    }
  }

  __break(1u);
  return result;
}

void *sub_267DDA718(void *a1)
{
  v2 = sub_267DDA3A4();
  if (!v2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v13))
    {
      goto LABEL_21;
    }

    v14 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v14);
    v17 = "#SmsNLv4Intent startTimeMs is 0 indicating an NLX error parsing token timestamps";
LABEL_20:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v15, v16, v17);
    OUTLINED_FUNCTION_26();
LABEL_21:

    return 0;
  }

  v4 = v2;
  v5 = v3;
  if (v2 >= v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v5;
      *(OUTLINED_FUNCTION_94_8(v21) + 14) = v4;
      OUTLINED_FUNCTION_16_28();
      _os_log_impl(v22, v23, v24, v25, v26, 0x16u);
      OUTLINED_FUNCTION_29_1();
    }

    return 0;
  }

  result = [a1 rawRecognition];
  if (result)
  {
    result = sub_267DDD4C4(result);
    if (result)
    {
      if (result[2])
      {

        OUTLINED_FUNCTION_394();
        v10 = sub_267DDA940(v7, v8, v9);

        return v10;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v27 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v27, qword_280240FB0);
      v12 = sub_267EF89F8();
      v28 = sub_267EF95D8();
      if (!OUTLINED_FUNCTION_36(v28))
      {
        goto LABEL_21;
      }

      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v29);
      v17 = "#SmsNLv4Intent rawRecognition.nBestTokenLists() is empty, cannot determine message content tokens";
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_267DDA940(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280228818 != -1)
  {
LABEL_63:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v5 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);

  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_52();
    *v8 = 134218496;
    *(v8 + 4) = a2;
    v9 = OUTLINED_FUNCTION_94_8(v8);
    *(v9 + 14) = v10;
    *(v9 + 22) = v11;
    *(v8 + 24) = sub_267BAF0DC(a1);

    _os_log_impl(&dword_267B93000, v6, v7, "#SmsNLv4Intent extacting AFTokens from %llu to %llu from preINTTokenList with size: %ld", v8, 0x20u);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v12 = sub_267BAF0DC(a1);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v12)
    {
      v15 = 0;
      v16 = 0;
      v17 = 1;
LABEL_29:
      v36 = 1;
LABEL_30:
      v37 = sub_267EF89F8();
      v38 = sub_267EF95E8();
      if (os_log_type_enabled(v37, v38))
      {
        v81 = v17;
        v39 = 7104878;
        v40 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v40 = 136315394;
        if (v36)
        {
          v41 = 0xE300000000000000;
          v42 = 7104878;
        }

        else
        {
          v82 = v16;
          sub_267D60134();
          v3 = &v82;
          v42 = sub_267EF99A8();
          v41 = v43;
        }

        sub_267BA33E8(v42, v41, &v83);
        OUTLINED_FUNCTION_43();

        *(v40 + 4) = v3;
        *(v40 + 12) = 2080;
        if (v81)
        {
          v44 = 0xE300000000000000;
        }

        else
        {
          v82 = v15;
          sub_267D60134();
          v3 = &v82;
          v39 = sub_267EF99A8();
          v44 = v45;
        }

        sub_267BA33E8(v39, v44, &v83);
        OUTLINED_FUNCTION_43();

        *(v40 + 14) = v3;
        _os_log_impl(&dword_267B93000, v37, v38, "#SmsNLv4Intent invalid indices, startIndex: %s, endIndex: %s", v40, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      return 0;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v76 = a1 & 0xC000000000000001;
    v17 = 1;
    *&v13 = 134218496;
    v73 = v13;
    v18 = 1;
    v74 = v12;
    v75 = a1;
    do
    {
      if (v76)
      {
        v19 = OUTLINED_FUNCTION_68_0();
        v20 = MEMORY[0x26D609870](v19);
      }

      else
      {
        v20 = *(a1 + 8 * v14 + 32);
      }

      v21 = v20;
      [v20 startTime];
      v23 = v22 * 1000.0;
      if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (v23 <= -1.0)
      {
        goto LABEL_58;
      }

      if (v23 >= 1.84467441e19)
      {
        goto LABEL_59;
      }

      [v21 endTime];
      v25 = v24 * 1000.0;
      if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_60;
      }

      if (v25 <= -1.0)
      {
        goto LABEL_61;
      }

      if (v25 >= 1.84467441e19)
      {
        goto LABEL_62;
      }

      v80 = v17;
      v79 = v15;
      v26 = v16;
      v27 = v23;
      v28 = v25;
      v29 = sub_267EF89F8();
      v30 = sub_267EF95D8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_52();
        *v31 = v73;
        *(v31 + 4) = v14;
        v32 = OUTLINED_FUNCTION_94_8(v31);
        *(v32 + 14) = v27;
        *(v32 + 22) = v33;
        *(v32 + 24) = v28;
        _os_log_impl(&dword_267B93000, v29, v30, "#SmsNLv4Intent checking token %ld: startTime=%llu, endTime=%llu", v31, 0x20u);
        OUTLINED_FUNCTION_26();
      }

      v34 = v14 + 1;

      v35 = v27 != a2;
      if (v27 == a2)
      {
        v16 = v14;
      }

      else
      {
        v16 = v26;
      }

      v18 &= v35;
      v15 = v79;
      if (v28 == a3)
      {
        v15 = v14;
      }

      v17 = (v28 != a3) & v80;
      ++v14;
      a1 = v75;
    }

    while (v74 != v34);
    if (v18)
    {
      goto LABEL_29;
    }

    if (v17)
    {
      v36 = 0;
      v17 = 1;
      goto LABEL_30;
    }

    if (v15 < v16)
    {
      v17 = 0;
      v36 = 0;
      goto LABEL_30;
    }

    v48 = v15;
    v49 = sub_267EF89F8();
    v50 = sub_267EF95D8();
    if (os_log_type_enabled(v49, v50))
    {
      v34 = swift_slowAlloc();
      *v34 = 134218240;
      *(v34 + 4) = v16;
      *(OUTLINED_FUNCTION_94_8(v34) + 14) = v48;
      _os_log_impl(&dword_267B93000, v49, v50, "#SmsNLv4Intent returning messageContent tokens from startIndex: %ld to endIndex: %ld", v34, 0x16u);
      OUTLINED_FUNCTION_26();
    }

    v51 = v16;

    v52 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
      OUTLINED_FUNCTION_68_0();
      sub_267C74A48();
      result = sub_267C74A48();
      if (!v76)
      {
        goto LABEL_48;
      }

      if (v52 < v51)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (v51 != v52)
      {
        if (v51 >= v52)
        {
          __break(1u);
          return result;
        }

        v50 = sub_267BA9F38(0, &qword_280229BA8, 0x277CEF4B0);

        v53 = v51;
        do
        {
          v54 = v53 + 1;
          sub_267EF9B98();
          v53 = v54;
        }

        while (v52 != v54);
      }

      else
      {
LABEL_48:
      }

      if (v75 >> 62)
      {
        goto LABEL_66;
      }

      if ((v52 & 0x8000000000000000) == 0)
      {
        v34 = v75 & 0xFFFFFFFFFFFFFF8;
        v50 = (v75 & 0xFFFFFFFFFFFFFF8) + 32;
        v52 = (2 * v52) | 1;
        if (v52)
        {
          goto LABEL_67;
        }

        goto LABEL_56;
      }

      __break(1u);
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_66:

  v34 = sub_267EF9CC8();
  v50 = v56;
  v51 = v57;
  v52 = v58;
  if ((v58 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_67:
  sub_267EF9ED8();
  OUTLINED_FUNCTION_98_8();
  swift_unknownObjectRetain_n();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v59 = MEMORY[0x277D84F90];
  }

  v60 = *(v59 + 16);

  if (__OFSUB__(v52 >> 1, v51))
  {
    goto LABEL_79;
  }

  if (v60 != (v52 >> 1) - v51)
  {
LABEL_80:
    swift_unknownObjectRelease();
LABEL_56:
    sub_267C73A00(v34, v50, v51, v52);
    v46 = v55;
LABEL_73:
    swift_unknownObjectRelease();
    goto LABEL_74;
  }

  v46 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v46)
  {
    v46 = MEMORY[0x277D84F90];
    goto LABEL_73;
  }

LABEL_74:

  v61 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_98_1();

  if (os_log_type_enabled(v61, v34))
  {
    v62 = OUTLINED_FUNCTION_48();
    v63 = OUTLINED_FUNCTION_52();
    v83 = v63;
    *v62 = 136642819;
    v64 = sub_267BA9F38(0, &qword_280229BA8, 0x277CEF4B0);
    v65 = MEMORY[0x26D608FD0](v46, v64);
    v67 = sub_267BA33E8(v65, v66, &v83);

    *(v62 + 4) = v67;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v68, v69, v70, v71, v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_32_0();
  }

  return v46;
}

void sub_267DDB09C()
{
  OUTLINED_FUNCTION_48_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C108, &unk_267F09630);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_68_2();
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_22_23(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
  v6 = MEMORY[0x277D84F90];
  if (*(v1 + v5))
  {

    sub_267EF5C68();
    OUTLINED_FUNCTION_82_8();
    v7 = MEMORY[0x277D84F90];
    if (v2)
    {
      v26 = MEMORY[0x277D84F90];
      v8 = sub_267BAF0DC(v2);
      v9 = 0;
      while (v8 != v9)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D609870](v9, v2);
        }

        else
        {
          if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }

        sub_267EF5988();
        if (v25)
        {
          sub_267EF56B8();
        }

        sub_267EF5EC8();
        OUTLINED_FUNCTION_105_10();

        ++v9;
        if (v25)
        {
          MEMORY[0x26D608F90](v11);
          v12 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v12 >> 1)
          {
            OUTLINED_FUNCTION_8_2(v12);
            sub_267EF9328();
          }

          sub_267EF9368();
          v7 = v26;
          v9 = v10;
        }
      }

      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v27 = v6;
  v13 = sub_267BAF0DC(v7);
  v14 = 0;
  v24 = v0;
  while (1)
  {
    if (v13 == v14)
    {

      sub_267BAF0DC(v27);
      OUTLINED_FUNCTION_43();

      OUTLINED_FUNCTION_47();
      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v23 = OUTLINED_FUNCTION_1_10();
      MEMORY[0x26D609870](v23);
    }

    else
    {
      if (v14 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (sub_267EF5E98())
    {
      sub_267EF63F8();

      sub_267EF6408();
      v15 = OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_5_1(v15, v16, v17);
      if (!v18)
      {
        sub_267B9F98C(v0, &qword_28022C108, &unk_267F09630);
        sub_267EF9BD8();
        sub_267EF9C08();
        v0 = v24;
        sub_267EF9C18();
        sub_267EF9BE8();
        goto LABEL_30;
      }
    }

    else
    {

      sub_267EF6408();
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    }

    sub_267B9F98C(v0, &qword_28022C108, &unk_267F09630);
LABEL_30:
    ++v14;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_267DDB3F8()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C108, &unk_267F09630);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v76 = &v74[-v6];
  OUTLINED_FUNCTION_26_2();
  v7 = sub_267EF6288();
  OUTLINED_FUNCTION_58();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v79 = v12 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C110, &unk_267F0AC80);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  v15 = &v74[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_30_25();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_0();
  v84 = v20;
  v77 = v0;
  sub_267DD9CA0();
  if (v21 != 17)
  {
    sub_267D6CFAC(v21);
    OUTLINED_FUNCTION_47_15();
    v34 = v34 && v33 == 0xEA00000000006E6FLL;
    if (v34)
    {

      goto LABEL_67;
    }

    OUTLINED_FUNCTION_59_0();
    v35 = sub_267EF9EA8();

    v1 = 0;
    if (v35)
    {
LABEL_67:
      OUTLINED_FUNCTION_47();
      return;
    }
  }

  v22 = v77;
  v75 = *(v77 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb);
  v23 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v77 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, &v93);
  v24 = *(v22 + v23);
  v25 = MEMORY[0x277D84F90];
  v83 = v2;
  v81 = v9;
  if (v24)
  {

    sub_267EF5C68();
    OUTLINED_FUNCTION_78_14();
    v26 = MEMORY[0x277D84F90];
    if (v1)
    {
      v87 = MEMORY[0x277D84F90];
      v92 = MEMORY[0x277D84F90];
      v27 = sub_267BAF0DC(v1);
      v28 = 0;
      v89 = v1 & 0xFFFFFFFFFFFFFF8;
      v90 = v1 & 0xC000000000000001;
      while (v27 != v28)
      {
        if (v90)
        {
          v32 = OUTLINED_FUNCTION_89_0();
          MEMORY[0x26D609870](v32);
        }

        else
        {
          if (v28 >= *(v89 + 16))
          {
            goto LABEL_73;
          }
        }

        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_72;
        }

        sub_267EF5988();
        if (v91)
        {
          sub_267EF56B8();
        }

        sub_267EF5EC8();
        sub_267EF5E08();

        ++v28;
        if (v91)
        {
          MEMORY[0x26D608F90](v30);
          v31 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v31 >> 1)
          {
            OUTLINED_FUNCTION_8_2(v31);
            sub_267EF9328();
          }

          OUTLINED_FUNCTION_63();
          sub_267EF9368();
          v87 = v92;
          v28 = v29;
        }
      }

      v26 = v87;
    }

    v25 = MEMORY[0x277D84F90];
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v92 = v25;
  v36 = sub_267BAF0DC(v26);
  v37 = 0;
  v89 = v26 & 0xC000000000000001;
  v90 = v36;
  v87 = v26;
  v88 = v26 & 0xFFFFFFFFFFFFFF8;
  v38 = *MEMORY[0x277D5EEF8];
  v85 = (v81 + 13);
  v78 = (v81 + 4);
  ++v81;
  v39 = v84;
  v82 = v38;
  while (1)
  {
    if (v90 == v37)
    {
      sub_267BAF0DC(v92);
      OUTLINED_FUNCTION_361();
      v66 = 0;
      v92 = MEMORY[0x277D84F90];
      v67 = v76;
      v68 = v87;
      while (1)
      {
        if (v90 == v66)
        {
          sub_267BAF0DC(v92);

          sub_267DDBCBC(v68);

          if (v75 == 14 && !v39)
          {
            sub_267DDC05C();
          }

          goto LABEL_67;
        }

        if (v89)
        {
          MEMORY[0x26D609870](v66, v68);
        }

        else
        {
          if (v66 >= *(v88 + 16))
          {
            goto LABEL_71;
          }
        }

        if (__OFADD__(v66, 1))
        {
          goto LABEL_70;
        }

        if (sub_267EF5E98())
        {
          sub_267EF63F8();

          v69 = sub_267EF6408();
          OUTLINED_FUNCTION_5_1(v67, 1, v69);
          if (!v34)
          {
            sub_267B9F98C(v67, &qword_28022C108, &unk_267F09630);
            sub_267EF9BD8();
            sub_267EF9C08();
            OUTLINED_FUNCTION_63();
            sub_267EF9C18();
            sub_267EF9BE8();
            goto LABEL_62;
          }
        }

        else
        {

          sub_267EF6408();
          OUTLINED_FUNCTION_78();
          __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
        }

        sub_267B9F98C(v67, &qword_28022C108, &unk_267F09630);
LABEL_62:
        ++v66;
      }
    }

    if (v89)
    {
      MEMORY[0x26D609870](v37, v87);
    }

    else
    {
      if (v37 >= *(v88 + 16))
      {
        goto LABEL_69;
      }
    }

    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (sub_267EF5EA8())
    {
      sub_267EF6278();
    }

    else
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v7);
    }

    (*v85)(v3, v38, v7);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v7);
    v46 = *(v86 + 48);
    sub_267BB170C(v39, v15, &qword_28022AF08, &unk_267F09620);
    sub_267BB170C(v3, &v15[v46], &qword_28022AF08, &unk_267F09620);
    OUTLINED_FUNCTION_5_1(v15, 1, v7);
    if (v34)
    {
      OUTLINED_FUNCTION_72_11();
      sub_267B9F98C(v47, v48, v49);
      OUTLINED_FUNCTION_72_11();
      sub_267B9F98C(v50, v51, v52);
      OUTLINED_FUNCTION_5_1(&v15[v46], 1, v7);
      if (!v34)
      {
        goto LABEL_44;
      }

      sub_267B9F98C(v15, &qword_28022AF08, &unk_267F09620);
    }

    else
    {
      v53 = v83;
      sub_267BB170C(v15, v83, &qword_28022AF08, &unk_267F09620);
      OUTLINED_FUNCTION_5_1(&v15[v46], 1, v7);
      if (v54)
      {
        OUTLINED_FUNCTION_72_11();
        sub_267B9F98C(v55, v56, v57);
        v39 = v84;
        OUTLINED_FUNCTION_72_11();
        sub_267B9F98C(v58, v59, v60);
        v61 = OUTLINED_FUNCTION_92_9();
        v62(v61, v7);
        v38 = v82;
LABEL_44:
        sub_267B9F98C(v15, &qword_28022C110, &unk_267F0AC80);
LABEL_45:
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        goto LABEL_48;
      }

      (*v78)(v79, &v15[v46], v7);
      OUTLINED_FUNCTION_27_23();
      sub_267DDD5B8(&qword_28022C118, v63, MEMORY[0x277D5EF90]);
      v80 = sub_267EF8FE8();
      v64 = *v81;
      v65 = OUTLINED_FUNCTION_61_0();
      v64(v65);
      sub_267B9F98C(v3, &qword_28022AF08, &unk_267F09620);
      v39 = v84;
      sub_267B9F98C(v84, &qword_28022AF08, &unk_267F09620);
      (v64)(v53, v7);
      sub_267B9F98C(v15, &qword_28022AF08, &unk_267F09620);
      v38 = v82;
      if ((v80 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    ++v37;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_267DDBCBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_267EF9A68();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return sub_267DDC79C();
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 == 1)
  {
    if (sub_267BAF0DC(a1))
    {
      v1 = a1 & 1;
      sub_267BBD0EC(0, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {

LABEL_7:
        sub_267DDC314();
        OUTLINED_FUNCTION_43();

        return v1 & 1;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_106_4();
    goto LABEL_7;
  }

  return 0;
}

void sub_267DDBD84()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_68_2();
  sub_267EF5518();
  OUTLINED_FUNCTION_58();
  v28 = v7;
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_57_13();
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_22_23(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
  if (!*(v1 + v8) || (, sub_267EF5C48(), OUTLINED_FUNCTION_80_9(), !v3))
  {
LABEL_23:
    OUTLINED_FUNCTION_47();
    return;
  }

  v26 = v2;
  v9 = sub_267BAF0DC(v3);
  v10 = 0;
  v25 = (v28 + 32);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v10)
    {

      goto LABEL_23;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v22 = OUTLINED_FUNCTION_73_0();
      MEMORY[0x26D609870](v22);
    }

    else
    {
      if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_267EF5988();
    if (v30)
    {
      sub_267EF56B8();
    }

    sub_267EF5528();
    sub_267EF5E08();

    if (v31)
    {
      sub_267EF54F8();

      v12 = OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_5_1(v12, v13, v29);
      if (v14)
      {
        goto LABEL_19;
      }

      v15 = *v25;
      (*v25)(v26, v0, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_40();
        sub_267C709E0();
        v27 = v23;
      }

      v17 = *(v27 + 16);
      v16 = *(v27 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v16);
        sub_267C709E0();
        v27 = v24;
      }

      *(v27 + 16) = v17 + 1;
      v18 = OUTLINED_FUNCTION_54_14();
      v15(v18, v26, v29);
      v10 = v11;
    }

    else
    {

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v19, v20, v21, v29);
LABEL_19:
      sub_267B9F98C(v0, &qword_28022A8C0, &unk_267F0AC60);
      ++v10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_267DDC05C()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_68_2();
  v31 = sub_267EF6288();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v9 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_22_23(v1 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage);
  if (!*(v1 + v9) || (, sub_267EF5C68(), OUTLINED_FUNCTION_80_9(), !v3))
  {
LABEL_22:
    OUTLINED_FUNCTION_47();
    return;
  }

  v29 = v2;
  v10 = sub_267BAF0DC(v3);
  v11 = v7;
  v12 = 0;
  v28 = (v11 + 32);
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 == v12)
    {

      goto LABEL_22;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v25 = OUTLINED_FUNCTION_73_0();
      MEMORY[0x26D609870](v25);
    }

    else
    {
      if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }
    }

    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_267EF5988();
    if (v32 && (v14 = sub_267EF5EA8(), , v14))
    {
      sub_267EF6278();

      v15 = OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_5_1(v15, v16, v31);
      if (v17)
      {
        goto LABEL_18;
      }

      v18 = *v28;
      (*v28)(v29, v0, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_40();
        sub_267C70908();
        v30 = v26;
      }

      v20 = *(v30 + 16);
      v19 = *(v30 + 24);
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v19);
        sub_267C70908();
        v30 = v27;
      }

      *(v30 + 16) = v20 + 1;
      v21 = OUTLINED_FUNCTION_54_14();
      v18(v21);
      v12 = v13;
    }

    else
    {

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v31);
LABEL_18:
      sub_267B9F98C(v0, &qword_28022AF08, &unk_267F09620);
      ++v12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_267DDC314()
{
  OUTLINED_FUNCTION_48_0();
  v2 = 0x7974706D65;
  v3 = sub_267EF61C8();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C100, &qword_267F09618);
  v14 = OUTLINED_FUNCTION_18(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_29_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_64_11();
  if (sub_267EF5A08())
  {
    sub_267EF61A8();

    OUTLINED_FUNCTION_5_1(v1, 1, v3);
    if (!v16)
    {
      v2 = sub_267EF61B8();
      v18 = v17;
      (*(v5 + 8))(v1, v3);
      goto LABEL_6;
    }

    sub_267B9F98C(v1, &qword_28022C100, &qword_267F09618);
  }

  v18 = 0xE500000000000000;
LABEL_6:
  if (sub_267EF5A08())
  {
    sub_267EF61A8();
    OUTLINED_FUNCTION_5_1(v0, 1, v3);
    if (v16)
    {

      sub_267B9F98C(v0, &qword_28022C100, &qword_267F09618);
    }

    else
    {
      (*(v5 + 32))(v12, v0, v3);
      (*(v5 + 104))(v9, *MEMORY[0x277D5EE50], v3);
      v19 = sub_267C28F80(v12, v9);
      v20 = *(v5 + 8);
      v20(v9, v3);
      if (v19)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v21 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);

        v22 = sub_267EF89F8();
        v23 = sub_267EF95D8();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = OUTLINED_FUNCTION_48();
          v25 = OUTLINED_FUNCTION_52();
          v40 = v22;
          v41 = v25;
          v26 = v25;
          *v24 = 136315138;
          v27 = sub_267BA33E8(v2, v18, &v41);

          *(v24 + 4) = v27;
          v28 = v40;
          _os_log_impl(&dword_267B93000, v40, v23, "attachmentContainsDefiniteReference: %s true", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {
        }

        v20(v12, v3);
        goto LABEL_22;
      }

      v20(v12, v3);
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v29 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v29, qword_280240FB0);

  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_48();
    v33 = OUTLINED_FUNCTION_52();
    v41 = v33;
    *v32 = 136315138;
    v34 = sub_267BA33E8(v2, v18, &v41);

    *(v32 + 4) = v34;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

LABEL_22:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267DDC79C()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C100, &qword_267F09618);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_52_0();
  v6 = sub_267EF61C8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_30_25();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_65_11();
  v11 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage;
  OUTLINED_FUNCTION_83(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoCommonMessage, v27);
  if (*(v0 + v11))
  {

    sub_267EF5A08();
    OUTLINED_FUNCTION_82_8();
    if (v11)
    {
      sub_267EF61A8();
      OUTLINED_FUNCTION_5_1(v2, 1, v6);
      if (v12)
      {

        sub_267B9F98C(v2, &qword_28022C100, &qword_267F09618);
      }

      else
      {
        (*(v8 + 32))(v1, v2, v6);
        (*(v8 + 104))(v3, *MEMORY[0x277D5EE50], v6);
        v13 = sub_267C28F80(v1, v3);
        v14 = *(v8 + 8);
        v14(v3, v6);
        if (v13)
        {
          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_280228818);
          }

          v15 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v15, qword_280240FB0);
          v16 = sub_267EF89F8();
          v17 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v17))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_6_22(&dword_267B93000, v18, v19, "messageContainsDefiniteReference: true");
            OUTLINED_FUNCTION_32_0();
          }

          v14(v1, v6);
          return 1;
        }

        v14(v1, v6);
      }
    }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v23))
  {
    v24 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v24);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v25, v26, "messageContainsDefiniteReference: false");
    OUTLINED_FUNCTION_26();
  }

  return 0;
}

uint64_t sub_267DDCA9C()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_usoParse;
  sub_267EF4C68();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_userDialogAct;
  sub_267EF5318();
  OUTLINED_FUNCTION_22();
  (*(v4 + 8))(v0 + v3);
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_convertedTask, &qword_28022AEF0, &qword_267EFCDE0);

  return v0;
}

uint64_t sub_267DDCBC0()
{
  sub_267DDCA9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmsNLv4Intent(uint64_t a1)
{
  result = qword_28022C0F0;
  if (!qword_28022C0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DDCC6C(uint64_t a1)
{
  result = sub_267EF4C68();
  if (v2 <= 0x3F)
  {
    result = sub_267EF5318();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_267DDD4C4(void *a1)
{
  v2 = [a1 nBestTokenLists];

  if (!v2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C120, &qword_267F09640);
  v3 = sub_267EF92F8();

  return v3;
}

uint64_t sub_267DDD560()
{
  v0 = sub_267EF57C8();
  OUTLINED_FUNCTION_18(v0);
  return sub_267EF57A8();
}

uint64_t sub_267DDD5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267DDD600(uint64_t a1)
{
  sub_267DDD74C();
  if (v1 <= 0x3F)
  {
    sub_267DDD79C(319, &qword_28022C178, &qword_28022C180, &qword_267F096B0);
    if (v2 <= 0x3F)
    {
      sub_267C82D70(319);
      if (v3 <= 0x3F)
      {
        sub_267C82CB0(319);
        if (v4 <= 0x3F)
        {
          sub_267C82D18(319);
          if (v5 <= 0x3F)
          {
            sub_267EF2E38();
            if (v6 <= 0x3F)
            {
              sub_267DDD79C(319, &qword_28022C188, &qword_28022C190, &qword_267F096B8);
              if (v7 <= 0x3F)
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

void sub_267DDD74C()
{
  if (!qword_280229C18)
  {
    v0 = sub_267EF9888();
    if (!v1)
    {
      atomic_store(v0, &qword_280229C18);
    }
  }
}

void sub_267DDD79C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_267EF9888();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_267DDD7F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  v4 = *(v3 + 312);
  v5 = *v0;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v8 + 488) = v7;

  sub_267C00468(v4);
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DDD8F0()
{
  OUTLINED_FUNCTION_62();
  if (*(v0 + 89) == 1)
  {
    v1 = *(v0 + 400) != 0;
  }

  else
  {

    v1 = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 0;
  }

  v2 = *(v0 + 384);
  v3 = *(v0 + 376);
  v4 = *(v0 + 368);
  v5 = *(v0 + 344);
  v6 = swift_task_alloc();
  *(v0 + 496) = v6;
  *v6 = v0;
  v6[1] = sub_267DDD9F8;
  v7 = 0.0;
  if (v3 != 2)
  {
    v7 = v2;
  }

  v8 = *(v0 + 90);
  v9 = *(v0 + 89);
  v10 = *(v0 + 232);

  return sub_267DDE7FC(v5, v9, v1, v10, v8, (v4 != 2) & v4, v7);
}

uint64_t sub_267DDD9F8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 504) = v3;
  *(v1 + 512) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DDDAE0()
{
  v2 = *(v0 + 368);
  v30 = *(*(v0 + 344) + 81);
  if (v2 != 2 && (v2 & 1) != 0 && *(v0 + 89))
  {
    if ((*(*(v0 + 344) + 81) & 1) == 0)
    {
      *(*(v0 + 232) + 425) = 0;
      v3 = 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*(*(v0 + 344) + 81))
  {
LABEL_7:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = *(*(v0 + 232) + 424);
LABEL_9:
  v4 = *(v0 + 232);
  *(v4 + 424) = v3;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v5 = sub_267EF8A08();
  __swift_project_value_buffer(v5, qword_280240FB0);
  swift_retain_n();

  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 488);
    v27 = (*(v0 + 368) != 2) & *(v0 + 368);
    v28 = *(v0 + 89);
    v9 = swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_52();
    v31 = v10;
    *v9 = 136316162;
    *(v0 + 224) = v8;
    v11 = type metadata accessor for MessagesSpokenDialogContext();
    sub_267DDFFA0(&qword_280228FB8, type metadata accessor for MessagesSpokenDialogContext, &unk_267F0F670);
    sub_267EF7B58();
    sub_267EF8F08();
    OUTLINED_FUNCTION_359();

    v12 = sub_267BA33E8(v11, v1, &v31);

    *(v9 + 4) = v12;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v30;
    *(v9 + 18) = 1024;
    *(v9 + 20) = v27;
    *(v9 + 24) = 1024;
    *(v9 + 26) = v28;
    *(v9 + 30) = 1024;
    LODWORD(v12) = *(v4 + 424);

    *(v9 + 32) = v12;

    _os_log_impl(&dword_267B93000, v6, v7, "#TextComponent SpokenDialogContext: %s, shouldCaptionShortMessage=%{BOOL}d, isLongMessage=%{BOOL}d, shouldSummarize=%{BOOL}d, hasShortenedMessage=%{BOOL}d", v9, 0x24u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_11_11();
  }

  else
  {
  }

  v26 = *(v0 + 488);
  v25 = *(v0 + 464);
  v13 = *(v0 + 360);
  v24 = *(v0 + 352);
  v14 = *(v0 + 264);
  v15 = *(v0 + 272);
  v16 = *(v0 + 248);
  v17 = *(v0 + 232);
  v23 = *(v0 + 440);
  v22 = *(v0 + 504);
  v18 = __swift_project_boxed_opaque_existential_0(*(v0 + 256), *(*(v0 + 256) + 24));
  sub_267BB8364(v18);
  v19 = swift_task_alloc();
  *(v0 + 520) = v19;
  *(v19 + 16) = v14;
  *(v19 + 24) = v17;
  *(v19 + 32) = v16;
  *(v19 + 40) = v0 + 208;
  *(v19 + 48) = v22;
  *(v19 + 64) = v23;
  *(v19 + 80) = v13;
  *(v19 + 88) = v15;
  *(v19 + 96) = v0 + 192;
  *(v19 + 104) = v25;
  *(v19 + 120) = v24;
  *(v19 + 128) = v26;
  v20 = swift_task_alloc();
  *(v0 + 528) = v20;
  *v20 = v0;
  v20[1] = sub_267DDDEE8;

  return sub_267D47A8C();
}

uint64_t sub_267DDDEE8()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 536) = v0;

  OUTLINED_FUNCTION_22_2();

  if (v0)
  {
    v7 = sub_267DDE138;
  }

  else
  {
    v7 = sub_267DDE070;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267DDE070()
{
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_60_9(*(v0 + 488));

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);

  v2 = OUTLINED_FUNCTION_18_7();

  return v3(v2);
}

uint64_t sub_267DDE138()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 272);

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_30_26();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DDE1FC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 272);

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_30_26();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267DDE2B4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *(v2 + 216) = v4;
  *(v2 + 208) = v0;
  v6 = *(v5 + 280);
  v7 = *v0;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  sub_267B9FF34(v2 + 16, &qword_28022A310, &qword_267F00400);
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267DDE3F0()
{
  v45 = v0;
  v1 = *(*(v0 + 248) + 72);
  if (v1)
  {
    if (*(v0 + 216) == 1)
    {
      v2 = qword_280228818;
      v3 = v1;
      if (v2 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v4 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
      v5 = sub_267EF89F8();
      v6 = sub_267EF95D8();
      if (os_log_type_enabled(v5, v6))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v7, v8, v9, v10, v11, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v12 = *(v0 + 240);

      v13 = 0;
      v14 = 0;
      v15 = 1;
      *(v12 + 425) = 1;
    }

    else
    {
      v22 = *(v0 + 264);
      v23 = *(v0 + 272);
      v24 = *(v0 + 240);
      v42 = *(v0 + 256);
      sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);
      v25 = v24[5];
      v14 = v24[6];
      __swift_project_boxed_opaque_existential_0(v24 + 2, v25);
      v26 = *(v14 + 8);
      v43 = v1;
      v26(v25, v14);
      __swift_project_boxed_opaque_existential_0((v0 + 152), *(v0 + 176));
      sub_267EF3B68();
      v27 = sub_267EF2D48();
      v29 = v28;
      (*(v22 + 8))(v23, v42);
      v30 = sub_267BF952C(v27, v29);
      __swift_destroy_boxed_opaque_existential_0((v0 + 152));
      v13 = sub_267EF8FF8();
      v31 = [v30 localizedStringForLanguageCode_];

      if (v31)
      {
        sub_267EF9028();
        OUTLINED_FUNCTION_359();
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v32 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v32, qword_280240FB0);

      v33 = sub_267EF89F8();
      v34 = sub_267EF95D8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_48();
        v36 = OUTLINED_FUNCTION_52();
        v44 = v36;
        *v35 = 136315138;
        *(v0 + 192) = v13;
        *(v0 + 200) = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
        v37 = sub_267EF9878();
        v39 = sub_267BA33E8(v37, v38, &v44);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_267B93000, v33, v34, "#TextComponent content is in a different language that we don't support, reading %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_11_11();
      }

      v15 = 0;
      *(*(v0 + 240) + 424) = 1;
    }
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v20, v21, "#TextComponent sender is nil, don't omit content from CAT");
      OUTLINED_FUNCTION_26();
    }

    v15 = 0;
    v13 = 0;
    v14 = 0;
  }

  v40 = *(v0 + 8);

  return v40(v15, v13, v14);
}

uint64_t sub_267DDE7FC(uint64_t a1, char a2, char a3, uint64_t a4, char a5, char a6, double a7)
{
  *(v8 + 96) = v7;
  *(v8 + 88) = a7;
  *(v8 + 139) = a6;
  *(v8 + 138) = a5;
  *(v8 + 137) = a3;
  *(v8 + 136) = a2;
  *(v8 + 72) = a1;
  *(v8 + 80) = a4;
  return MEMORY[0x2822009F8](sub_267DDE834, 0, 0);
}

uint64_t sub_267DDE834()
{
  OUTLINED_FUNCTION_56();
  *(*(v0 + 72) + 81) = 0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  *(v0 + 104) = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v5, v6, "#TextComponent getting summary for spoken message");
    OUTLINED_FUNCTION_26();
  }

  v7 = *(v0 + 137);
  v8 = *(v0 + 136);

  if (v8 == 1 && (v7 & 1) == 0 && (*(v0 + 40) = &type metadata for Features, *(v0 + 48) = sub_267BAFCAC(), *(v0 + 16) = 12, v9 = sub_267EF5128(), __swift_destroy_boxed_opaque_existential_0((v0 + 16)), (v9 & 1) != 0) && (v10 = sub_267DDFAB0(*(v0 + 80), *(v0 + 138), *(v0 + 139)), v10 != 2))
  {
    v13 = v10;
    v14 = *(v0 + 72);
    v15 = swift_task_alloc();
    *(v0 + 112) = v15;
    *v15 = v0;
    v15[1] = sub_267DDE9FC;

    return sub_267DDFDC8(v14, v13);
  }

  else
  {
    v11 = *(v0 + 8);

    return v11(0, 0);
  }
}

uint64_t sub_267DDE9FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;
  *(v1 + 128) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267DDEAE4()
{
  v31 = v0;
  swift_bridgeObjectRetain_n();
  v1 = sub_267EF89F8();
  v2 = sub_267EF95D8();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_52();
    v30 = v6;
    *v5 = 136315138;
    *(v0 + 56) = v4;
    *(v0 + 64) = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v30);

    *(v5 + 4) = v9;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  if (*(v0 + 128))
  {
    v15 = *(v0 + 72);

    *(v15 + 81) = 1;
    v16 = *(v15 + 168);
    v17 = [*(v16 + 16) smsContext];
    [v17 setIsSummarized_];

    v18 = [*(v16 + 16) smsContext];
    if (v18)
    {
      v19 = v18;
      [v18 setSummarySourceType_];
    }
  }

  if ((*(*(v0 + 72) + 81) & 1) != 0 || *(v0 + 139))
  {
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v21))
    {
      v22 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v22);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v23, v24, "#TextComponent setup to offer full read");
      OUTLINED_FUNCTION_26();
    }

    v25 = *(v0 + 72);

    *(v25 + 82) = 1;
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 128);
  v28 = *(v0 + 8);

  return v28(v26, v27);
}

uint64_t sub_267DDED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 176) = v16;
  *(v8 + 152) = v14;
  *(v8 + 136) = v13;
  *(v8 + 120) = v12;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  v9 = sub_267EF8248();
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  type metadata accessor for TextComponent(0);
  *(v8 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267DDEEDC, 0, 0);
}

uint64_t sub_267DDEEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  v23 = *(v22 + 144);
  v24 = *(v22 + 88);
  sub_267BFF55C(*(v22 + 64), *(v22 + 288));
  v25 = *(v24 + 8);
  *(v22 + 296) = v25;
  v26 = *(v23 + 8);
  v27 = *(v22 + 280);
  if (v26)
  {

    sub_267EF90F8();

    sub_267EF79B8();
    v28 = OUTLINED_FUNCTION_118();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }

  else
  {
    v32 = sub_267EF79B8();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v32);
  }

  v133 = v25;
  if (*(v22 + 160))
  {
    sub_267EF90F8();
  }

  v33 = *(v22 + 80);
  v34 = *(v22 + 56);
  v35 = sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  SpokenTextComponentParameters = type metadata accessor for SearchForMessagesReadSpokenTextComponentParameters(0);
  *(v22 + 304) = SpokenTextComponentParameters;
  v40 = SpokenTextComponentParameters[11];
  sub_267B9FF34(v34 + v40, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v42 = ComponentPatternCommonParameters[5];
  *(v22 + 312) = v35;
  v136 = v42;
  (*(*(v35 - 8) + 16))(v34 + v40, v33 + v42, v35);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v35);
  v138 = v33;
  *(v22 + 16) = *(v33 + ComponentPatternCommonParameters[6]);
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v140 = SpokenTextComponentParameters;
  v142 = v35;
  v46 = *(v22 + 80);
  v47 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v35);
  OUTLINED_FUNCTION_46_1(SpokenTextComponentParameters[21]);
  *(v22 + 32) = *(v46 + ComponentPatternCommonParameters[7]);
  sub_267EF8348();
  v50 = *(v22 + 80);
  v51 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v35);
  OUTLINED_FUNCTION_46_1(SpokenTextComponentParameters[22]);
  *(v22 + 40) = *(v50 + ComponentPatternCommonParameters[8]);
  sub_267EF8348();
  v54 = *(v22 + 80);
  v55 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v35);
  OUTLINED_FUNCTION_46_1(SpokenTextComponentParameters[25]);
  *(v22 + 48) = *(v54 + ComponentPatternCommonParameters[9]);
  sub_267EF8348();
  v123 = *(v22 + 240);
  v124 = *(v22 + 56);
  v125 = OUTLINED_FUNCTION_118();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v35);
  sub_267BD3DDC(v123, v124 + SpokenTextComponentParameters[27]);
  v128 = v35;
  *(v22 + 320) = 0;
  if (v133)
  {
    sub_267EF90F8();
    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = *(v22 + 232);
  v60 = *(v22 + 120);
  v61 = *(v22 + 56);
  __swift_storeEnumTagSinglePayload(v59, v58, 1, v35);
  sub_267BD3DDC(v59, v61 + SpokenTextComponentParameters[8]);
  if (v60)
  {
    sub_267EF90F8();
  }

  v62 = *(v22 + 224);
  v63 = *(v22 + 104);
  v64 = *(v22 + 56);
  v65 = 1;
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v128);
  sub_267BD3DDC(v62, v64);
  if (v63)
  {
    sub_267EF90F8();
    v65 = 0;
  }

  v69 = *(v22 + 280);
  v130 = *(v22 + 272);
  v70 = *(v22 + 216);
  v72 = *(v22 + 168);
  v71 = *(v22 + 176);
  v74 = *(v22 + 128);
  v73 = *(v22 + 136);
  v131 = *(v22 + 72);
  v134 = *(v22 + 288);
  v75 = *(v22 + 56);
  __swift_storeEnumTagSinglePayload(v70, v65, 1, v142);
  sub_267BD3DDC(v70, v75 + v140[19]);
  v76 = v140[23];

  *(v75 + v76) = v74;
  sub_267BE855C(v73, v75 + v140[12]);
  v77 = v140[7];

  *(v75 + v77) = v72;
  v78 = v140[26];

  *(v75 + v78) = v71;
  sub_267BE855C(v69, v75 + v140[9]);
  sub_267BE855C(v130, v75 + v140[10]);
  v79 = sub_267EF7998();
  *(v22 + 328) = v79;
  *(v22 + 336) = v80;
  v81 = *(v131 + 96);
  *(v22 + 344) = v81;
  *(v22 + 352) = sub_267BE85CC(v79);
  v82 = sub_267BDAF74(v81);
  *(v22 + 368) = v82 & 1;
  if (v82)
  {
    OUTLINED_FUNCTION_10(&dword_267F00478);
    v143 = v83;
    v84 = swift_task_alloc();
    *(v22 + 360) = v84;
    *v84 = v22;
    v84[1] = sub_267DDF770;
    OUTLINED_FUNCTION_93();

    return v87(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, v130, v131, v134, v136, v138, v140, v143, a18, a19, a20, a21, a22);
  }

  else
  {
    v94 = *(v22 + 352);
    v95 = *(v22 + 336);
    v96 = *(v22 + 320);
    v97 = *(v22 + 208);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    v99 = 0xE000000000000000;
    if (!v100)
    {
      v99 = v98;
    }

    v129 = v99;
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_72();
    sub_267EF8238();
    sub_267EF8348();
    if (v96)
    {
      OUTLINED_FUNCTION_52_13();
      v132 = v102;
      v135 = v101;
      v137 = *(v22 + 232);
      v139 = *(v22 + 224);
      v141 = *(v22 + 216);
      v144 = *(v22 + 208);
      OUTLINED_FUNCTION_49_18();

      v103 = OUTLINED_FUNCTION_16_29();
      v104(v103);
      OUTLINED_FUNCTION_35_20();
      OUTLINED_FUNCTION_38_19(v94);
      sub_267C00468(v72);
    }

    else
    {
      OUTLINED_FUNCTION_48_21();
      a10 = v105;
      v130 = v106;
      v132 = v107;
      v135 = *(v22 + 248);
      v137 = *(v22 + 240);
      v139 = *(v22 + 232);
      v108 = *(v22 + 208);
      v141 = *(v22 + 224);
      v144 = *(v22 + 216);
      OUTLINED_FUNCTION_49_18();
      v109 = *(v22 + 56);

      v110 = OUTLINED_FUNCTION_16_29();
      v111(v110);
      OUTLINED_FUNCTION_38_19(0);
      OUTLINED_FUNCTION_35_20();
      sub_267C00468(v95);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v112, v113, v114, v97);
      sub_267BD3DDC(v108, v109 + *(a10 + 24));
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_93();

    return v116(v115, v116, v117, v118, v119, v120, v121, v122, v129, a10, v130, v132, v135, v137, v139, v141, v144, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_267DDF770()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 369) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DDF858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_377();
  v23 = *(v22 + 368);
  v24 = *(v22 + 352);
  v25 = *(v22 + 328);
  v55 = *(v22 + 320);
  v26 = *(v22 + 184);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_19_29();
  sub_267EF8348();
  if (v55)
  {
    OUTLINED_FUNCTION_52_13();
    v50 = v28;
    v51 = v27;
    v52 = *(v22 + 232);
    v53 = *(v22 + 224);
    v54 = *(v22 + 216);
    v56 = *(v22 + 208);
    OUTLINED_FUNCTION_49_18();

    v29 = OUTLINED_FUNCTION_16_29();
    v30(v29);
    OUTLINED_FUNCTION_35_20();
    OUTLINED_FUNCTION_38_19(v23);
    sub_267C00468(v26);
  }

  else
  {
    OUTLINED_FUNCTION_48_21();
    a11 = v31;
    a12 = v32;
    v50 = v33;
    v51 = *(v22 + 248);
    v52 = *(v22 + 240);
    v53 = *(v22 + 232);
    v34 = *(v22 + 208);
    v54 = *(v22 + 224);
    v56 = *(v22 + 216);
    OUTLINED_FUNCTION_49_18();
    v35 = *(v22 + 56);

    v36 = OUTLINED_FUNCTION_16_29();
    v37(v36);
    OUTLINED_FUNCTION_38_19(0);
    OUTLINED_FUNCTION_35_20();
    sub_267C00468(v25);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
    sub_267BD3DDC(v34, v35 + *(a11 + 24));
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_93();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, v50, v51, v52, v53, v54, v56, a19, a20, a21, a22);
}

uint64_t sub_267DDFAB0(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    if (*(a1 + 416))
    {
      v4 = sub_267BF4920();
    }

    else
    {
      v4 = 0;
    }

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v11 = sub_267EF89F8();
    v12 = sub_267EF95D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136315138;
      if (v4)
      {
        v15 = 0x70756F7267;
      }

      else
      {
        v15 = 19780;
      }

      if (v4)
      {
        v16 = 0xE500000000000000;
      }

      else
      {
        v16 = 0xE200000000000000;
      }

      v17 = sub_267BA33E8(v15, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_267B93000, v11, v12, "#TextComponent is a long message in a %s .. get topic", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x26D60A7B0](v14, -1, -1);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    return 1;
  }

  else if ((a2 & 1) != 0 || *(v3 + 72) && sub_267DEAC40())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_267B93000, v6, v7, "#TextComponent is a message from unknown contact .. get summary", v8, 2u);
      MEMORY[0x26D60A7B0](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95D8();
    if (os_log_type_enabled(v20, v21))
    {
      v9 = 2;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_267B93000, v20, v21, "#TextComponent DM or relevant group with no long message.. dont caption", v22, 2u);
      MEMORY[0x26D60A7B0](v22, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v9;
}

uint64_t sub_267DDFDC8(uint64_t a1, char a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_267DDFDEC, 0, 0);
}

uint64_t sub_267DDFDEC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  if (!v1 || *(v0 + 24) == 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v6, v7, "#TextComponent invalid input to getTopicOrSummary");
      OUTLINED_FUNCTION_26();
    }

LABEL_8:
    v8 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v9 = *(v1 + 160);
  if (!v9)
  {
    v12 = qword_280228818;

    if (v12 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (os_log_type_enabled(v14, v15))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_14_2();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_8;
  }

  v8 = *(v1 + 152);

LABEL_9:
  v10 = *(v0 + 8);

  return v10(v8, v9);
}

uint64_t sub_267DDFFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267DDFFE8(uint64_t a1)
{
  result = sub_267DDFFA0(&qword_28022C198, type metadata accessor for TextComponent, &unk_267F096C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267DE0040()
{
  OUTLINED_FUNCTION_31_19();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_26_25();

  return sub_267DDED20(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t type metadata accessor for UnsendMessagesCATsSimple(uint64_t a1)
{
  result = qword_28022C1A0;
  if (!qword_28022C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267DE01BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v3[5] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DE0258()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[6] = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267EFCC90);
  sub_267BC9B04(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v4);
  if (v5)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_5_0();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_0_51();
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v2;
  OUTLINED_FUNCTION_4_49();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_1_61(v7);

  return v9(v8);
}

uint64_t sub_267DE03E4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    v9 = OUTLINED_FUNCTION_5_3();

    return v10(v9);
  }
}

uint64_t sub_267DE0528(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v3[5] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267DE05C4()
{
  v1 = v0[5];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  v0[6] = v3;
  OUTLINED_FUNCTION_2_8(v3, xmmword_267EFCC90);
  sub_267BC9B04(v2, v1, &unk_28022AE30, &qword_267EFC0B0);
  v4 = sub_267EF79B8();
  OUTLINED_FUNCTION_2_10(v4);
  if (v5)
  {
    sub_267B9FED8(v1, &unk_28022AE30, &qword_267EFC0B0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_5_0();
    (*(v6 + 32))();
  }

  OUTLINED_FUNCTION_0_51();
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v3 + 96) = v2;
  OUTLINED_FUNCTION_4_49();
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_1_61(v7);

  return v9(v8);
}

uint64_t sub_267DE0750()
{
  v2 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    v9 = OUTLINED_FUNCTION_5_3();

    return v10(v9);
  }
}

uint64_t sub_267DE0894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_267DE0954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_267BC9B04(a1, &v15 - v12, &qword_280229E20, &unk_267EFDCC0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_267EF79C8();
  (*(v7 + 8))(a2, v3);
  sub_267B9FED8(a1, &qword_280229E20, &unk_267EFDCC0);
  return v13;
}

uint64_t sub_267DE0AD0(uint64_t a1, uint64_t a2)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_267EF79D8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

double sub_267DE0BDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v4 = *(a1 + 32 + 8 * v2++);
      v3 = v3 + v4;
    }

    while (v1 != v2);
    return v3 / v1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_267B93000, v7, v8, "Array is empty", v9, 2u);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    return 0.0;
  }
}