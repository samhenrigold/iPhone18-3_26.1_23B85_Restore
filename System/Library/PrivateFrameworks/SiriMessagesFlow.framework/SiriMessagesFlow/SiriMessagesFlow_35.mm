uint64_t type metadata accessor for ConversationSummaryComponent(uint64_t a1)
{
  result = qword_28022CFB0;
  if (!qword_28022CFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267EAEDC0(uint64_t a1)
{
  sub_267DDD74C();
  if (v1 <= 0x3F)
  {
    sub_267C82D18(319);
    if (v2 <= 0x3F)
    {
      sub_267E51E78(319);
      if (v3 <= 0x3F)
      {
        sub_267C82D70(319);
        if (v4 <= 0x3F)
        {
          sub_267C82CB0(319);
          if (v5 <= 0x3F)
          {
            sub_267EF2E38();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_267EAEEB4()
{
  OUTLINED_FUNCTION_12();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_267EF2E38();
  v1[22] = v6;
  v1[23] = *(v6 - 8);
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EAEF74()
{
  v2 = *(v0 + 168);
  if (!v2[1])
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    v11 = OUTLINED_FUNCTION_17_33();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_267EAF468;
    OUTLINED_FUNCTION_15();

    __asm { BR              X2 }
  }

  v45 = *v2;
  v46 = (v0 + 120);
  v3 = *(v0 + 136);
  v4 = *(v3 + 416);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_18_41(v4);
    v6 = [v5 smsContext];
    if (v6)
    {
      v7 = v6;
      [v6 setIsSummarized_];
    }

    v8 = *(v3 + 416);
    if (v8 && (OUTLINED_FUNCTION_72(), swift_beginAccess(), *(*(v8 + 24) + 16) == 1))
    {
      if (v5)
      {
        v9 = [v5 smsContext];
        if (v9)
        {
          v10 = v9;
          [v9 setSummarySourceType_];
LABEL_16:
        }
      }
    }

    else if (v5)
    {
      v14 = [v5 smsContext];
      if (v14)
      {
        v10 = v14;
        [v14 setSummarySourceType_];
        goto LABEL_16;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 232) = v5;
  v15 = *(v0 + 168);
  type metadata accessor for MessagesMessageComponentDialogContext();
  v44 = OUTLINED_FUNCTION_6_58();
  *(v0 + 240) = v44;
  v16 = *(v15 + 88);
  if (v16)
  {
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v19 = *(v0 + 176);
    v20 = *(v0 + 136);
    v21 = v20[5];
    v22 = v20[6];
    __swift_project_boxed_opaque_existential_0(v20 + 2, v21);
    (*(v22 + 8))(v21, v22);
    v1 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    sub_267EF3B68();
    v23 = *(v3 + 416);

    v24 = sub_267BC20F4(v18, 0, 0, v23, v16);

    (*(v17 + 8))(v18, v19);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    OUTLINED_FUNCTION_14_47();
    *(v1 - 1) = v45;

    v25 = [v16 displayName];
    sub_267EF9028();

    LOBYTE(v25) = sub_267EF9118();

    if (v25)
    {
      v26 = [v16 displayName];
      sub_267EF9028();

      v27 = [objc_allocWithZone(sub_267EF67F8()) init];

      v28 = sub_267EF67B8();
      v30 = v29;

      swift_bridgeObjectRelease_n();
      *v46 = v28;
      *v1 = v30;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v31 = sub_267EF8A08();
      __swift_project_value_buffer(v31, qword_280240FB0);
      v32 = sub_267EF89F8();
      v33 = sub_267EF95D8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_267B93000, v32, v33, "#ConversationSummaryComponent message from a shortcode..normalizing", v34, 2u);
        OUTLINED_FUNCTION_32_0();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_47();
    *(v1 - 1) = v45;

    v24 = 0;
  }

  *(v0 + 248) = v1;
  *(v0 + 256) = v24;
  v35 = *(v0 + 168);
  v37 = *(v0 + 144);
  v36 = *(v0 + 152);
  v38 = *(v0 + 136);
  v39 = __swift_project_boxed_opaque_existential_0(*(v0 + 160), *(*(v0 + 160) + 24));
  sub_267BB8364(v39);
  v40 = swift_task_alloc();
  *(v0 + 264) = v40;
  v40[2] = v35;
  v40[3] = v38;
  v40[4] = v36;
  v40[5] = v46;
  v40[6] = v24;
  v40[7] = v44;
  v40[8] = v37;
  v41 = swift_task_alloc();
  *(v0 + 272) = v41;
  *v41 = v0;
  OUTLINED_FUNCTION_3_84(v41);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15();

  return sub_267D425AC();
}

uint64_t sub_267EAF468()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  v7[26] = v0;

  if (!v0)
  {
    v7[27] = v3;
    v7[28] = v5;
  }

  sub_267B9FF34((v7 + 2), &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EAF5AC()
{
  v44 = (v0 + 120);
  **(v0 + 168) = vextq_s8(*(v0 + 216), *(v0 + 216), 8uLL);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 136);
  v5 = *(v4 + 416);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_18_41(v5);
    v7 = [v6 smsContext];
    if (v7)
    {
      v8 = v7;
      [v7 setIsSummarized_];
    }

    v9 = *(v4 + 416);
    if (v9 && (OUTLINED_FUNCTION_72(), swift_beginAccess(), *(*(v9 + 24) + 16) == 1))
    {
      if (v6)
      {
        v10 = [v6 smsContext];
        if (v10)
        {
          v11 = v10;
          [v10 setSummarySourceType_];
LABEL_12:
        }
      }
    }

    else if (v6)
    {
      v12 = [v6 smsContext];
      if (v12)
      {
        v11 = v12;
        [v12 setSummarySourceType_];
        goto LABEL_12;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 232) = v6;
  v13 = *(v0 + 168);
  type metadata accessor for MessagesMessageComponentDialogContext();
  v43 = OUTLINED_FUNCTION_6_58();
  *(v0 + 240) = v43;
  v14 = *(v13 + 88);
  if (v14)
  {
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    v42 = *(v0 + 176);
    v17 = *(v0 + 136);
    v1 = v2;
    v18 = v3;
    v19 = v17[5];
    v20 = v17[6];
    __swift_project_boxed_opaque_existential_0(v17 + 2, v19);
    (*(v20 + 8))(v19, v20);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    sub_267EF3B68();
    v21 = *(v4 + 416);

    v22 = sub_267BC20F4(v16, 0, 0, v21, v14);

    (*(v15 + 8))(v16, v42);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    OUTLINED_FUNCTION_14_47();
    *(v1 - 1) = v18;

    v23 = [v14 displayName];
    sub_267EF9028();

    LOBYTE(v23) = sub_267EF9118();

    if (v23)
    {
      v24 = [v14 displayName];
      sub_267EF9028();

      v25 = [objc_allocWithZone(sub_267EF67F8()) init];

      v26 = sub_267EF67B8();
      v28 = v27;

      *v44 = v26;
      *v1 = v28;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v29 = sub_267EF8A08();
      __swift_project_value_buffer(v29, qword_280240FB0);
      v30 = sub_267EF89F8();
      v31 = sub_267EF95D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_267B93000, v30, v31, "#ConversationSummaryComponent message from a shortcode..normalizing", v32, 2u);
        OUTLINED_FUNCTION_32_0();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_47();
    *(v1 - 1) = v3;

    v22 = 0;
  }

  *(v0 + 248) = v1;
  *(v0 + 256) = v22;
  v33 = *(v0 + 168);
  v35 = *(v0 + 144);
  v34 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = __swift_project_boxed_opaque_existential_0(*(v0 + 160), *(*(v0 + 160) + 24));
  sub_267BB8364(v37);
  v38 = swift_task_alloc();
  *(v0 + 264) = v38;
  v38[2] = v33;
  v38[3] = v36;
  v38[4] = v34;
  v38[5] = v44;
  v38[6] = v22;
  v38[7] = v43;
  v38[8] = v35;
  v39 = swift_task_alloc();
  *(v0 + 272) = v39;
  *v39 = v0;
  OUTLINED_FUNCTION_3_84(v39);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15();

  return sub_267D425AC();
}

uint64_t sub_267EAFA30(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 280) = v1;

  if (!v1)
  {
    *(v4 + 288) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EAFB6C()
{
  OUTLINED_FUNCTION_56();

  v1 = *(v0 + 8);
  v2 = *(v0 + 288);

  return v1(v2);
}

uint64_t sub_267EAFC00()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267EAFC88()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EAFCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  type metadata accessor for ConversationSummaryComponent(0);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EAFD80, 0, 0);
}

uint64_t sub_267EAFD80()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[6];
  sub_267EB0D48(v0[3], v0[10]);
  v3 = *v1;
  v2 = v1[1];
  v0[11] = v2;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_267EAFE50;
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];

  return sub_267EB0014(v10, v8, v9, v3, v2, v6, v7, v5);
}

uint64_t sub_267EAFE50()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 104) = v0;

  sub_267EB0DAC(v4);

  if (v0)
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267EAFFB8()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[14] = a8;
  v9[15] = v8;
  v9[12] = a6;
  v9[13] = a7;
  v9[10] = a4;
  v9[11] = a5;
  v9[8] = a2;
  v9[9] = a3;
  v9[7] = a1;
  v10 = sub_267EF8248();
  v9[16] = v10;
  v9[17] = *(v10 - 8);
  v9[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v9[19] = swift_task_alloc();
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EB0158, 0, 0);
}

uint64_t sub_267EB0158()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  ConversationSummaryParameters = type metadata accessor for SearchForMessagesReadConversationSummaryParameters(0);
  *(v0 + 200) = ConversationSummaryParameters;
  v5 = ConversationSummaryParameters[8];
  sub_267B9FF34(v3 + v5, &unk_28022AE30, &qword_267EFC0B0);
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  v7 = ComponentPatternCommonParameters[5];
  v8 = sub_267EF79B8();
  *(v0 + 208) = v8;
  (*(*(v8 - 8) + 16))(v3 + v5, &v2[v7], v8);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v46 = v2;
  *(v0 + 16) = *&v2[ComponentPatternCommonParameters[6]];
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v12 = *(v0 + 192);
  OUTLINED_FUNCTION_2_71();
  sub_267BD3DDC(v12, v7 + ConversationSummaryParameters[14]);
  *(v0 + 32) = *(v1 + ComponentPatternCommonParameters[7]);
  sub_267EF8348();
  v13 = *(v0 + 184);
  OUTLINED_FUNCTION_2_71();
  sub_267BD3DDC(v13, v7 + ConversationSummaryParameters[15]);
  *(v0 + 40) = *(v1 + ComponentPatternCommonParameters[8]);
  sub_267EF8348();
  v14 = *(v0 + 176);
  OUTLINED_FUNCTION_2_71();
  sub_267BD3DDC(v14, v7 + ConversationSummaryParameters[17]);
  *(v0 + 48) = *(v1 + ComponentPatternCommonParameters[9]);
  sub_267EF8348();
  v41 = *(v0 + 168);
  v42 = *(v0 + 56);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v8);
  sub_267BD3DDC(v41, v42 + ConversationSummaryParameters[18]);
  *(v0 + 216) = 0;
  if (*(v0 + 88))
  {
    sub_267EF90F8();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = *(v0 + 160);
  v17 = *(v0 + 112);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v8);
  sub_267BD3DDC(v16, v21 + ConversationSummaryParameters[7]);
  v22 = ConversationSummaryParameters[16];

  *(v21 + v22) = v19;
  v23 = ConversationSummaryParameters[6];

  *(v21 + v23) = v18;
  v24 = ConversationSummaryParameters[9];

  *(v21 + v24) = v17;
  *(v0 + 224) = sub_267EF7998();
  *(v0 + 232) = v25;
  v26 = *(v20 + 96);
  *(v0 + 240) = v26;
  *(v0 + 248) = sub_267DB46EC();
  v27 = sub_267BDAF74(v26);
  *(v0 + 264) = v27 & 1;
  if (v27)
  {
    v28 = OUTLINED_FUNCTION_17_33();
    *(v0 + 256) = v28;
    *v28 = v0;
    v28[1] = sub_267EB077C;

    return v46(sub_267BDA6DC, 0);
  }

  else
  {
    v30 = *(v0 + 216);
    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    sub_267EF7C18();
    OUTLINED_FUNCTION_72();
    sub_267EF8238();
    sub_267EF8348();
    if (v30)
    {
      v33 = OUTLINED_FUNCTION_8_59();
      v34(v33);
    }

    else
    {
      OUTLINED_FUNCTION_13_51();
      v36 = OUTLINED_FUNCTION_12_51();
      v37(v36);
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v32);
      sub_267BD3DDC(v32, v31 + *(v21 + 20));
    }

    OUTLINED_FUNCTION_17();

    return v35();
  }
}

uint64_t sub_267EB077C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v1 + 265) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267EB0870(uint64_t a1)
{
  v2 = *(v1 + 265);
  v3 = *(v1 + 248);
  v15 = *(v1 + 216);
  v4 = *(v1 + 144);
  v5 = *(v1 + 128);
  sub_267EF7C18();
  OUTLINED_FUNCTION_72();
  sub_267EF8238();
  sub_267EF8348();
  if (v15)
  {
    v6 = OUTLINED_FUNCTION_8_59();
    v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_13_51();
    v9 = OUTLINED_FUNCTION_12_51();
    v10(v9);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
    sub_267BD3DDC(v2, v3 + *(v5 + 20));
  }

  OUTLINED_FUNCTION_17();

  return v8();
}

void *sub_267EB0A28()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t sub_267EB0A50()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_267EB0A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267C85300;

  return sub_267C82E4C();
}

uint64_t sub_267EB0B24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BD5D40;

  return sub_267EAEEB4();
}

uint64_t sub_267EB0BE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConversationSummaryComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267EB0C2C(uint64_t a1)
{
  result = sub_267EB0BE8(&qword_28022CFC0, &unk_267F0E5D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267EB0C70(uint64_t a1)
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
  v11[1] = sub_267BAEBEC;

  return sub_267EAFCE4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267EB0D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationSummaryComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EB0DAC(uint64_t a1)
{
  v2 = type metadata accessor for ConversationSummaryComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_267EB0E0C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v5 = sub_267EF9A68();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 <= a1)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_81_11();
  sub_267BBD0EC(v6, v7, v8);
  if (!v2)
  {
    return *(a2 + 8 * a1 + 32);
  }

LABEL_9:
  v10 = OUTLINED_FUNCTION_66();
  return MEMORY[0x26D609870](v10);
}

uint64_t sub_267EB0E94(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_267EF9A68();
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_81_11();
  sub_267BBD0EC(v5, v6, v7);
  if (!v2)
  {
  }

LABEL_9:
  v9 = OUTLINED_FUNCTION_66();
  return MEMORY[0x26D609870](v9);
}

uint64_t sub_267EB0F1C()
{
  OUTLINED_FUNCTION_12();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v1[25] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4158();
  v1[26] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[27] = v6;
  v1[28] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  OUTLINED_FUNCTION_18(v7);
  v1[29] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v8);
  v1[30] = OUTLINED_FUNCTION_50();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v9 = sub_267EF4228();
  v1[33] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[34] = v10;
  v1[35] = OUTLINED_FUNCTION_50();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v11 = sub_267EF44C8();
  v1[41] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[42] = v12;
  v1[43] = OUTLINED_FUNCTION_50();
  v1[44] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[45] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[46] = v14;
  v1[47] = OUTLINED_FUNCTION_50();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267EB11B4()
{
  v103 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[23];
  v6 = sub_267EF8A08();
  v0[50] = __swift_project_value_buffer(v6, qword_280240FB0);
  v7 = *(v3 + 16);
  v0[51] = v7;
  v0[52] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v4);
  v7(v1, v5, v4);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  v10 = OUTLINED_FUNCTION_10_2(v9);
  v11 = v0[48];
  v12 = v0[49];
  v14 = v0[45];
  v13 = v0[46];
  if (v10)
  {
    v15 = v0[44];
    v100 = v1;
    v16 = v0[42];
    v97 = v0[41];
    v17 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v101 = v99;
    *v17 = 136315394;
    log = v8;
    sub_267EF4938();
    v18 = sub_267EF44B8();
    v20 = v19;
    (*(v16 + 8))(v15, v97);
    v21 = *(v13 + 8);
    v21(v12, v14);
    sub_267BA33E8(v18, v20, &v101);
    OUTLINED_FUNCTION_61_2();

    *(v17 + 4) = v18;
    *(v17 + 12) = 2048;
    v22 = sub_267EF4928();
    v23 = [v22 unsupportedReason];

    v21(v11, v14);
    *(v17 + 14) = v23;
    _os_log_impl(&dword_267B93000, log, v100, "SendUnsupportedStrategy# Generating output for %s, unsupportedReason: %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v99);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v21 = *(v13 + 8);
    v21(v0[48], v0[45]);

    v21(v12, v14);
  }

  v0[53] = v21;
  v24 = v0[42];
  v25 = v0[24];
  type metadata accessor for MessagesApp(0);
  v26 = sub_267EF4908();
  v0[54] = sub_267EC814C(v26);
  sub_267EF4938();
  v27 = sub_267EF44B8();
  v29 = v28;
  v30 = *(v24 + 8);
  v0[55] = v30;
  v0[56] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31 = OUTLINED_FUNCTION_44_0();
  v30(v31);
  v32 = sub_267C7C240(v27, v29);
  v33 = *(v25 + 56);
  v0[57] = v33;
  if (v32)
  {
    *(v33 + 120) = 0;
    *(v33 + 128) = 1;
    switch(v32)
    {
      case 1:
        OUTLINED_FUNCTION_82_10();
        v34 = sub_267EF4918();
        v35 = [v34 speakableGroupName];

        if (v35)
        {
          v36 = [v35 spokenPhrase];

          sub_267EF9028();
          sub_267EF90F8();

          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        v83 = v0[31];
        v84 = sub_267EF79B8();
        __swift_storeEnumTagSinglePayload(v83, v37, 1, v84);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v0[70] = v85;
        *v85 = v86;
        v85[1] = sub_267EB2EE0;
        OUTLINED_FUNCTION_48_29();
        OUTLINED_FUNCTION_63_1();

        result = sub_267E4CE54();
        break;
      case 2:
        OUTLINED_FUNCTION_82_10();
        v73 = sub_267EF4918();
        [v73 outgoingMessageType];

        v88 = v0[32];
        sub_267EF90F8();

        v89 = sub_267EF79B8();
        __swift_storeEnumTagSinglePayload(v88, 0, 1, v89);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v0[66] = v90;
        *v90 = v91;
        v90[1] = sub_267EB265C;
        OUTLINED_FUNCTION_48_29();
        OUTLINED_FUNCTION_63_1();

        result = sub_267E4C09C();
        break;
      case 3:

        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v0[68] = v55;
        *v55 = v56;
        v55[1] = sub_267EB2AC0;
        OUTLINED_FUNCTION_48_29();
        OUTLINED_FUNCTION_63_1();

        result = sub_267E4B574(v57, v58);
        break;
      case 4:
        v60 = v0[29];
        v61 = v0[30];
        v62 = v0[24];
        v63 = sub_267EF4918();
        v64 = [v63 effect];

        INMessageEffectType.description.getter(v64);
        sub_267EF90F8();

        v65 = sub_267EF79B8();
        __swift_storeEnumTagSinglePayload(v61, 0, 1, v65);
        sub_267EF7AE8();
        v66 = v62[6];
        __swift_project_boxed_opaque_existential_0(v62 + 2, v62[5]);
        v67 = *(v66 + 8);

        v68 = OUTLINED_FUNCTION_68_0();
        v67(v68);
        v69 = sub_267EF7118();
        __swift_storeEnumTagSinglePayload(v60, 1, 1, v69);
        v0[72] = sub_267DE77AC(&v101, v60);
        swift_task_alloc();
        OUTLINED_FUNCTION_25();
        v0[73] = v70;
        *v70 = v71;
        v70[1] = sub_267EB3344;
        OUTLINED_FUNCTION_63_1();

        result = sub_267E4B674();
        break;
      default:
        v101 = 0;
        v102 = 0xE000000000000000;
        sub_267EF9B68();

        v101 = 0xD000000000000012;
        v102 = 0x8000000267F1CFE0;
        sub_267EF4938();
        v74 = sub_267EF44B8();
        v76 = v75;
        v77 = OUTLINED_FUNCTION_44_0();
        v30(v77);
        MEMORY[0x26D608E60](v74, v76);

        v78 = v101;
        v79 = v102;
        sub_267C266B0();
        swift_allocError();
        *v80 = v78;
        v80[1] = v79;
        swift_willThrow();

        OUTLINED_FUNCTION_2_72(v0[49]);

        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_63_1();

        __asm { BRAA            X1, X16 }

        return result;
    }

    return result;
  }

  v38 = v0[41];
  sub_267EF4938();
  v39 = sub_267EF44A8();
  v41 = v40;
  v42 = OUTLINED_FUNCTION_26_0();
  v30(v42);
  *(v33 + 120) = v39;
  *(v33 + 128) = v41 & 1;
  if (*(v33 + 213))
  {
    v43 = sub_267EF4918();
    v44 = sub_267EB7470(v43);
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
        v0[58] = v46;

        v48 = *(v33 + 296);
        v0[59] = v48;
        if (v48)
        {

          v49 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_12_3();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = OUTLINED_FUNCTION_32();
            *v51 = 0;
            _os_log_impl(&dword_267B93000, v49, v38, "#SendMessageUnsupportedValueFlowStrategy request triggered by change via snippet, trying to show an error on snippet", v51, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          v52 = swift_task_alloc();
          v0[60] = v52;
          *v52 = v0;
          v52[1] = sub_267EB1CB0;
          OUTLINED_FUNCTION_63_1();

          return sub_267EB5D58();
        }
      }

      else
      {
      }
    }
  }

  v0[62] = OUTLINED_FUNCTION_64_15();
  v0[63] = sub_267EF4928();
  OUTLINED_FUNCTION_75_11();
  sub_267EF4938();
  sub_267EF44A8();
  v93 = OUTLINED_FUNCTION_37_1();
  v30(v93);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[64] = v94;
  *v94 = v95;
  OUTLINED_FUNCTION_33_24(v94);
  OUTLINED_FUNCTION_63_1();

  return sub_267EB4618();
}

uint64_t sub_267EB1CB0(char a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 488) = v1;

  if (!v1)
  {
    *(v5 + 600) = a1 & 1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EB1DEC(uint64_t a1)
{
  if (*(v1 + 600) == 1)
  {
    *(*(v1 + 456) + 320) = 1;
    sub_267BA9F38(0, &qword_28022CFD8, 0x277D47A00);
    v3 = sub_267BF88F4();
    [v3 setPreserveResultSpaceIfPossible_];
    sub_267C47248(0, 0xE000000000000000, v3, &selRef_setText_);
    sub_267C47248(0, 0xE000000000000000, v3, &selRef_setSpeakableText_);
    sub_267C47248(0xD000000000000025, 0x8000000267F11750, v3, &selRef_setDialogIdentifier_);
    sub_267BA9F38(0, &qword_28022CAD0, 0x277D479E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_267EFCA40;
    *(v4 + 32) = v3;
    v5 = sub_267E7ECFC(v4);
    v6 = sub_267EF9028();
    sub_267C47248(v6, v7, v5, &selRef_setDialogPhase_);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_32();
      *v10 = 0;
      _os_log_impl(&dword_267B93000, v8, v9, "#SendMessageUnsupportedValueFlowStrategy returning output with empty text", v10, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v11 = *(v1 + 464);
    v12 = *(v1 + 176);

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_267EFCA40;
    *(v13 + 32) = v5;
    v14 = sub_267EF4CC8();
    v15 = MEMORY[0x277D5C1D8];
    v12[3] = v14;
    v12[4] = v15;
    __swift_allocate_boxed_opaque_existential_0(v12);
    v16 = v5;
    sub_267EF4CA8();

    OUTLINED_FUNCTION_1();

    return v17();
  }

  else
  {
    v19 = sub_267EF89F8();
    v20 = sub_267EF95C8();
    v21 = OUTLINED_FUNCTION_10_2(v20);
    v22 = *(v1 + 464);
    if (v21)
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v23, v24, "#SendMessageUnsupportedValueFlowStrategy view not available, falling back to dialog");
      OUTLINED_FUNCTION_32_0();
    }

    *(v1 + 496) = OUTLINED_FUNCTION_64_15();
    *(v1 + 504) = sub_267EF4928();
    OUTLINED_FUNCTION_75_11();
    sub_267EF4938();
    sub_267EF44A8();
    v25 = OUTLINED_FUNCTION_37_1();
    v2(v25);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 512) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_33_24(v26);

    return sub_267EB4618();
  }
}

uint64_t sub_267EB2214()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 496);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v9 + 520) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EB265C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 536) = v0;

  sub_267B9FF34(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EB2AC0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB2EE0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 568) = v0;

  sub_267B9FF34(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EB3344()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 592) = v0;

  sub_267B9FF34(v5, &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EB37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v21 = *(v20 + 464);

  OUTLINED_FUNCTION_0_77();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267EB38C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_0_77();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267EB39A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_0_77();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267EB3A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_0_77();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267EB3B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_0_77();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267EB3C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();

  OUTLINED_FUNCTION_0_77();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_46_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_267EB3D4C()
{
  OUTLINED_FUNCTION_12();
  v0[25] = v1;
  v2 = sub_267EF44C8();
  v0[26] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v0[27] = v3;
  v0[28] = OUTLINED_FUNCTION_50();
  v0[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v0[30] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v0[31] = v5;
  v0[32] = OUTLINED_FUNCTION_50();
  v0[33] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EB3E64()
{
  v1 = sub_267EF4918();
  v77 = sub_267EF97C8();

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  v6 = *(v0 + 200);
  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v8(v2, v6, v4);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  v11 = OUTLINED_FUNCTION_10_2(v10);
  v12 = *(v0 + 256);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  if (v11)
  {
    v15 = *(v0 + 232);
    v17 = *(v0 + 208);
    v16 = *(v0 + 216);
    v74 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v74 = 136315394;
    log = v9;
    sub_267EF4938();
    v18 = sub_267EF44B8();
    v75 = v2;
    v19 = *(v16 + 8);
    v19(v15, v17);
    v20 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_68_0();
    v22(v21);
    v23 = OUTLINED_FUNCTION_66();
    sub_267BA33E8(v23, v24, v25);
    OUTLINED_FUNCTION_43();

    *(v74 + 4) = v18;
    *(v74 + 12) = 2080;
    sub_267EF4938();
    v26 = sub_267EF44A8();
    v28 = v27;
    v19(v15, v17);
    *(v0 + 176) = v26;
    *(v0 + 184) = v28 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229270, &unk_267EFCDA0);
    v29 = sub_267EF9878();
    v30 = OUTLINED_FUNCTION_68_0();
    v20(v30);
    v31 = OUTLINED_FUNCTION_66();
    sub_267BA33E8(v31, v32, v33);
    OUTLINED_FUNCTION_43();

    *(v74 + 14) = v29;
    _os_log_impl(&dword_267B93000, log, v75, "#SendMessageUnsupportedValueFlowStrategy updating intent for slot '%s' with index '%s'", v74, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v34 = *(v13 + 8);
    v34(v12, v14);
    v35 = OUTLINED_FUNCTION_68_0();
    (v34)(v35);
  }

  v36 = *(v0 + 216);
  sub_267EF4938();
  v37 = sub_267EF44B8();
  v39 = v38;
  v40 = *(v36 + 8);
  v41 = OUTLINED_FUNCTION_26_0();
  v40(v41);
  switch(sub_267C7C240(v37, v39))
  {
    case 0u:
      sub_267EF4938();
      v42 = sub_267EF44A8();
      v44 = v43;
      v45 = OUTLINED_FUNCTION_26_0();
      v40(v45);
      if (v44)
      {
        v46 = 0x8000000267F1CF20;
        v47 = 0xD000000000000060;
        goto LABEL_35;
      }

      v61 = sub_267BCEA0C(v77);
      if (!v61)
      {
        goto LABEL_32;
      }

      v62 = sub_267BAF0DC(v61);

      if (v62 < 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      if (v42 < 0 || v42 >= v62)
      {
LABEL_32:
        OUTLINED_FUNCTION_10_27();
        sub_267EF9B68();
        OUTLINED_FUNCTION_18_1();
        MEMORY[0x26D608E60]();
        *(v0 + 192) = v42;
        v71 = sub_267EF9E58();
        MEMORY[0x26D608E60](v71);

        OUTLINED_FUNCTION_18_1();
        v53 = 0xD000000000000012;
        goto LABEL_33;
      }

      v63 = sub_267BCEA0C(v77);
      if (v63)
      {
        v64 = v63;
      }

      else
      {
        v64 = MEMORY[0x277D84F90];
      }

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!result || v64 < 0 || (v64 & 0x4000000000000000) != 0)
      {
        result = sub_267D60234();
        v64 = result;
      }

      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42 >= v65)
      {
        goto LABEL_41;
      }

      v48 = v0 + 144;
      v66 = v65 - 1;
      v67 = v65 - 1 - v42;
      v68 = (v64 & 0xFFFFFFFFFFFFFF8) + 8 * v42;
      v69 = *(v68 + 0x20);
      sub_267C74A34((v68 + 40), v67, (v68 + 32));
      *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) = v66;

      if (sub_267BAF0DC(v64))
      {
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
      }

      else
      {

        v64 = 0;
        v70 = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 0;
      }

      *(v0 + 144) = v64;
      *(v0 + 168) = v70;
LABEL_15:
      sub_267ECE290();
      sub_267B9FF34(v48, &qword_28022AEF0, &qword_267EFCDE0);

      OUTLINED_FUNCTION_4_3();

      return v59(v77);
    case 1u:
      v48 = v0 + 48;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      goto LABEL_15;
    case 2u:
      v48 = v0 + 112;
      *(v0 + 136) = MEMORY[0x277D83B88];
      *(v0 + 112) = 0;
      goto LABEL_15;
    case 3u:
      v48 = v0 + 80;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      goto LABEL_15;
    case 4u:
      v48 = v0 + 16;
      *(v0 + 40) = MEMORY[0x277D83B88];
      *(v0 + 16) = 0;
      goto LABEL_15;
    case 9u:
      OUTLINED_FUNCTION_10_27();
      sub_267EF9B68();
      OUTLINED_FUNCTION_18_1();
      MEMORY[0x26D608E60]();
      OUTLINED_FUNCTION_75_11();
      sub_267EF4938();
      v49 = sub_267EF44B8();
      v51 = v50;
      v52 = OUTLINED_FUNCTION_37_1();
      v40(v52);
      MEMORY[0x26D608E60](v49, v51);

      v53 = 39;
      v54 = 0xE100000000000000;
LABEL_33:
      MEMORY[0x26D608E60](v53, v54);
      goto LABEL_34;
    default:
      OUTLINED_FUNCTION_10_27();
      sub_267EF9B68();
      OUTLINED_FUNCTION_18_1();
      MEMORY[0x26D608E60]();
      OUTLINED_FUNCTION_75_11();
      sub_267EF4938();
      v55 = sub_267EF44B8();
      v57 = v56;
      v58 = OUTLINED_FUNCTION_37_1();
      v40(v58);
      MEMORY[0x26D608E60](v55, v57);

LABEL_34:
      v47 = v78;
      v46 = v79;
LABEL_35:
      sub_267C266B0();
      swift_allocError();
      *v72 = v47;
      v72[1] = v46;
      swift_willThrow();

      OUTLINED_FUNCTION_17();

      return v73();
  }
}

uint64_t sub_267EB4618()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_267EF2E38();
  v1[14] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EB46C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  v23 = *(v20 + 72);
  v24 = [*(v20 + 80) unsupportedReason];
  v25 = sub_267BCEA0C(v23);
  if (v25 && (v26 = sub_267EB0E0C(*(v20 + 88), v25), , v26))
  {
    v27 = *(v20 + 128);
    v28 = *(v20 + 104);
    v29 = v28[6];
    __swift_project_boxed_opaque_existential_0(v28 + 2, v28[5]);
    v30 = OUTLINED_FUNCTION_43();
    v31(v30, v29);
    __swift_project_boxed_opaque_existential_0((v20 + 16), *(v20 + 40));
    OUTLINED_FUNCTION_43();
    sub_267EF3B68();
    v32 = sub_267BC20F4(v27, 0, 0, 0, v26);

    v33 = OUTLINED_FUNCTION_63();
    v34(v33);
    __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v35 = *(v20 + 72);
    v36 = sub_267EF8A08();
    __swift_project_value_buffer(v36, qword_280240FB0);
    v37 = v35;
    v38 = sub_267EF89F8();
    v39 = sub_267EF95E8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v20 + 88);
      v41 = *(v20 + 72);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      a9 = v43;
      *v42 = 134218242;
      *(v42 + 4) = v40;
      *(v42 + 12) = 2080;
      v44 = sub_267BCEA0C(v41);
      if (v44)
      {
        v45 = sub_267BAF0DC(v44);

        *(v20 + 56) = v45;
        sub_267D60134();
        v46 = sub_267EF99A8();
        v48 = v47;
      }

      else
      {
        v48 = 0xE300000000000000;
        v46 = 7104878;
      }

      v49 = sub_267BA33E8(v46, v48, &a9);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_267B93000, v38, v39, "SendUnsupportedStrategy# recipient not available at index=%ld for %s recipient(s)", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v32 = 0;
  }

  *(v20 + 136) = v32;
  if (v24 == 3)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 176) = v61;
    *v61 = v62;
    OUTLINED_FUNCTION_18_42(v61);
    OUTLINED_FUNCTION_40();

    return sub_267E4C674(v63, v64, v65);
  }

  else if (v24 == 2)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 160) = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_18_42(v56);
    OUTLINED_FUNCTION_40();

    return sub_267E4CB78(v58, v59);
  }

  else if (v24 == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 144) = v50;
    *v50 = v51;
    OUTLINED_FUNCTION_18_42(v50);
    OUTLINED_FUNCTION_40();

    return sub_267E4C798(v52, v53);
  }

  else if (*MEMORY[0x277CD4588] == v24)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 192) = v67;
    *v67 = v68;
    OUTLINED_FUNCTION_18_42(v67);
    OUTLINED_FUNCTION_40();

    return sub_267E4CD9C();
  }

  else if (*MEMORY[0x277CD4580] == v24)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 208) = v70;
    *v70 = v71;
    OUTLINED_FUNCTION_18_42(v70);
    OUTLINED_FUNCTION_40();

    return sub_267E4CAC0();
  }

  else if (*MEMORY[0x277CD4578] == v24)
  {
    v73 = sub_267BCEA0C(*(v20 + 72));
    if (v73)
    {
      sub_267BAF0DC(v73);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 224) = v74;
    *v74 = v75;
    OUTLINED_FUNCTION_18_42(v74);
    OUTLINED_FUNCTION_40();

    return sub_267E4C3F4(v76, v77, v78);
  }

  else if (v24 == 4)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v91 = sub_267EF8A08();
    __swift_project_value_buffer(v91, qword_280240FB0);
    v92 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v92, v93))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v94, v95, "There is no valid way to contact this recipient. You don’t have a number or iMessage address for <recipient>");
      OUTLINED_FUNCTION_29_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 264) = v96;
    *v96 = v97;
    OUTLINED_FUNCTION_18_42(v96);
    OUTLINED_FUNCTION_40();

    return sub_267E4C99C(v98, v99, v100);
  }

  else if (v24 == 6)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v81 = sub_267EF8A08();
    __swift_project_value_buffer(v81, qword_280240FB0);
    v82 = sub_267EF89F8();
    sub_267EF95C8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v82, v83))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v84, v85, "The requested handle for this person isn't available. We need to have a recipient to dialog.");
      OUTLINED_FUNCTION_29_1();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 280) = v86;
    *v86 = v87;
    OUTLINED_FUNCTION_18_42(v86);
    OUTLINED_FUNCTION_40();

    return sub_267E4C898(v88, v89);
  }

  else if (v24 == 5)
  {
    if (v32)
    {

      v80 = v32;
      sub_267EF7648();
      OUTLINED_FUNCTION_43();
    }

    else
    {
      v80 = 0;
    }

    *(v20 + 240) = v80;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 248) = v108;
    *v108 = v109;
    OUTLINED_FUNCTION_18_42(v108);
    OUTLINED_FUNCTION_40();

    return sub_267E4CC7C(v110, v111);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v20 + 296) = v102;
    *v102 = v103;
    OUTLINED_FUNCTION_18_42(v102);
    OUTLINED_FUNCTION_40();

    return sub_267E4C2D0(v104, v105, v106);
  }
}

uint64_t sub_267EB4F44()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB503C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5134()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB522C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5324()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB541C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_267EB547C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5574()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5688()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5780()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5878()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB5970()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB59D4()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5A38()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5A9C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5B00()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5B64()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5BC8()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5C2C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5C90()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5CF4()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EB5D58()
{
  OUTLINED_FUNCTION_12();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[30] = v5;
  v6 = sub_267EF8448();
  v1[35] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[36] = v7;
  v1[37] = OUTLINED_FUNCTION_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v8);
  v1[38] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF84F8();
  v1[39] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[40] = v10;
  v1[41] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v11);
  v1[42] = OUTLINED_FUNCTION_50();
  v1[43] = swift_task_alloc();
  v12 = sub_267EF3F28();
  v1[44] = v12;
  OUTLINED_FUNCTION_30_0(v12);
  v1[45] = v13;
  v1[46] = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A4B0, &unk_267F00CC0);
  OUTLINED_FUNCTION_18(v14);
  v1[47] = OUTLINED_FUNCTION_2();
  v15 = sub_267EF4228();
  v1[48] = v15;
  OUTLINED_FUNCTION_30_0(v15);
  v1[49] = v16;
  v1[50] = OUTLINED_FUNCTION_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v17);
  v1[51] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_267EB5FA8()
{
  v1 = v0[51];
  v2 = v0[31];
  sub_267EF7958();
  v0[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v3 = sub_267EF4908();
  v0[53] = sub_267E80518(v3);
  v4 = sub_267EF7758();
  OUTLINED_FUNCTION_97(v4);
  sub_267EF7748();
  v5 = [v2 displayName];
  sub_267EF9028();

  OUTLINED_FUNCTION_63();
  sub_267EF90F8();

  v6 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  sub_267EF76A8();

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);
  v7 = sub_267EF7738();
  v0[54] = v7;

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[55] = v8;
  *v8 = v9;
  v8[1] = sub_267EB6160;
  OUTLINED_FUNCTION_48_29();

  return sub_267E4C550(v10, v11, v7);
}

uint64_t sub_267EB6160()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EB6274()
{
  v1 = v0[47];
  v2 = sub_267EF4218();
  sub_267C8EFF0(v2, v1);

  v3 = sub_267EF4378();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    sub_267B9FF34(v0[47], &qword_28022A4B0, &unk_267F00CC0);
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  else
  {
    sub_267EF4368();
    v6 = OUTLINED_FUNCTION_66();
    v7(v6);
    v4 = sub_267EF3F18();
    v5 = v8;
    v9 = OUTLINED_FUNCTION_44_0();
    v10(v9);
  }

  v0[57] = v4;
  v0[58] = v5;
  __swift_project_boxed_opaque_existential_0((v0[34] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags), *(v0[34] + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags + 24));
  if (sub_267CC8B28() & 1) != 0 && (__swift_project_boxed_opaque_existential_0((v0[34] + 16), *(v0[34] + 40)), v11 = OUTLINED_FUNCTION_44_0(), v12(v11), __swift_project_boxed_opaque_existential_0(v0 + 9, v0[12]), v13 = sub_267BF30D0(), __swift_destroy_boxed_opaque_existential_0(v0 + 9), (v13))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_32();
      *v17 = 0;
      _os_log_impl(&dword_267B93000, v15, v16, "#SendMessageUnsupportedValueFlowStrategy sending SMART update response command", v17, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v0[59] = sub_267EF4918();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[60] = v18;
    *v18 = v19;
    v18[1] = sub_267EB673C;
    OUTLINED_FUNCTION_48_29();

    return sub_267CA8174(v20, v21);
  }

  else
  {
    sub_267EF4908();
    v23 = sub_267EF7C18();
    v25 = v24;

    if (!v25)
    {
      v23 = 0;
      v25 = 0xE000000000000000;
    }

    v26 = sub_267EF4918();
    v27 = sub_267DA133C(v26, v23, v25);
    v0[63] = v27;

    v28 = v27;
    sub_267EF8438();
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v29 = sub_267EF8A08();
    __swift_project_value_buffer(v29, qword_280240FB0);
    v30 = sub_267EF89F8();
    v31 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v31))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v32, v33, "#SendMessageUnsupportedValueFlowStrategy sending custom canvas action command");
      OUTLINED_FUNCTION_32_0();
    }

    v35 = v0[36];
    v34 = v0[37];
    v36 = v0[35];

    v37 = MEMORY[0x277D5D798];
    v0[5] = v36;
    v0[6] = v37;
    v38 = MEMORY[0x277D5D7A0];
    v0[7] = sub_267EB741C(&qword_28022A4B8, MEMORY[0x277D5D7A0], MEMORY[0x277D5D7B0]);
    v0[8] = sub_267EB741C(&qword_28022A4C0, v38, MEMORY[0x277D5D7A8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    (*(v35 + 16))(boxed_opaque_existential_0, v34, v36);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[64] = v40;
    *v40 = v41;
    v40[1] = sub_267EB6C50;

    return sub_267CA89E8();
  }
}

uint64_t sub_267EB673C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EB683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_66_1();
  v21 = v20[42];
  v22 = v20[43];
  v23 = v20[40];
  v43 = v20[58];
  v44 = v20[41];
  v24 = v20[38];
  v45 = v20[57];
  v46 = v20[39];
  v25 = v20[34];
  sub_267EF4918();
  v26 = v25[6];
  __swift_project_boxed_opaque_existential_0(v25 + 2, v25[5]);
  v27 = OUTLINED_FUNCTION_61_2();
  v28(v27, v26);
  v29 = v20[17];
  v30 = v20[18];
  __swift_project_boxed_opaque_existential_0(v20 + 14, v29);
  sub_267BCD18C(v29, v30);
  v31 = sub_267EF81F8();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v31);
  sub_267EB73AC(v22, v21);
  LOBYTE(a9) = 0;
  OUTLINED_FUNCTION_22_0();
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0(v20 + 14);
  v20[22] = v46;
  v20[23] = sub_267EB741C(&unk_28022BB30, MEMORY[0x277D5D8A8], MEMORY[0x277D5D8A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20 + 19);
  (*(v23 + 16))(boxed_opaque_existential_0, v44, v46);
  v33 = swift_task_alloc();
  v20[61] = v33;
  *v33 = v20;
  v33[1] = sub_267EB6A3C;
  OUTLINED_FUNCTION_46_0();

  return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, 0, v45, v43, a13, v43, v44, v45, sub_267ECFB34, a18, a19, a20);
}

uint64_t sub_267EB6A3C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  *(v3 + 208) = v0;
  *(v3 + 200) = v5;
  *(v3 + 192) = v1;
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v3 + 496) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 152));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EB6B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 344);

  v14 = OUTLINED_FUNCTION_37_1();
  v15(v14);
  sub_267B9FF34(v13, &qword_28022BB20, &unk_267F092D0);
  v16 = OUTLINED_FUNCTION_46_23();
  v17(v16);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_267EB6C50()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  *(v3 + 232) = v0;
  *(v3 + 224) = v5;
  *(v3 + 216) = v1;
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v3 + 520) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EB6D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  v13 = OUTLINED_FUNCTION_37_1();
  v14(v13);
  v15 = OUTLINED_FUNCTION_46_23();
  v16(v15);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_267EB6E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_45_27();

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_267EB6F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12 + 344);

  v14 = OUTLINED_FUNCTION_63();
  v15(v14);
  sub_267B9FF34(v13, &qword_28022BB20, &unk_267F092D0);
  v16 = OUTLINED_FUNCTION_26_0();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_0((v12 + 152));
  OUTLINED_FUNCTION_45_27();

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_267EB7018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  v13 = OUTLINED_FUNCTION_63();
  v14(v13);
  v15 = OUTLINED_FUNCTION_37_1();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  OUTLINED_FUNCTION_45_27();

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_40();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t type metadata accessor for SendMessageUnsupportedValueFlowStrategy(uint64_t a1)
{
  result = qword_28022CFC8;
  if (!qword_28022CFC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EB71A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267EB0F1C();
}

uint64_t sub_267EB7250()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CE6778;

  return sub_267EB3D4C();
}

uint64_t sub_267EB72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageUnsupportedValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_267EB73AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EB741C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EB7470(void *a1)
{
  v2 = [a1 recipients];

  if (!v2)
  {
    return 0;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v3 = sub_267EF92F8();

  return v3;
}

void *sub_267EB74EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow29SpokenConversationActionGroup_conversation) = a1;
  *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow29SpokenConversationActionGroup_shouldSummarize) = a3;
  type metadata accessor for NotificationAppendingAction();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow29SpokenConversationActionGroup_notificationAppendingAction) = sub_267E4DFE8(a1, a2, a3);
  v7 = sub_267BE6C54(a2);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v8 = sub_267BE4B90(a1, a3);
  if (*(v8 + 16))
  {
    v9 = *(*(*(v8 + 40) + 8) + 8);
    v10 = swift_unknownObjectRetain();
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v7[3] = v10;
  v7[4] = v9;

  swift_unknownObjectRelease();
  v11 = sub_267C96D2C();

  if (v11)
  {
    swift_getObjectType();
    sub_267EB8988(&qword_28022C9F0, type metadata accessor for NotificationAppendingAction, &unk_267F0C618);

    sub_267EF3DB8();
    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t sub_267EB76C0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v32 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow29SpokenConversationActionGroup_conversation);
  v4 = *(v32 + 168);

  sub_267EF3838();
  __swift_project_boxed_opaque_existential_0(v33, v34);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (v7)
  {
    sub_267EF3B18();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v4;

    sub_267EF3B08();
    sub_267EF3848();

    __swift_destroy_boxed_opaque_existential_0(v33);
    v9 = *(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow29SpokenConversationActionGroup_notificationAppendingAction) + 56);
    if (v9)
    {
      v10 = qword_280228818;

      if (v10 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v11 = sub_267EF8A08();
      __swift_project_value_buffer(v11, qword_280240FB0);
      v12 = sub_267EF89F8();
      v13 = sub_267EF95D8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_267B93000, v12, v13, "#SpokenNotificationPostAppendingActionGroup continue reading next conversation", v14, 2u);
        MEMORY[0x26D60A7B0](v14, -1, -1);
      }

      v15 = *(v2 + 16);
      v16 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow29SpokenConversationActionGroup_shouldSummarize);
      type metadata accessor for SpokenConversationActionGroup(0);
      swift_allocObject();

      v17 = sub_267EB74EC(v9, v15, v16);

      v18 = &qword_280229138;
      v19 = type metadata accessor for SpokenConversationActionGroup;
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v20 = sub_267EF8A08();
      __swift_project_value_buffer(v20, qword_280240FB0);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_267B93000, v21, v22, "#SpokenNotificationPostAppendingActionGroup no more conversations to read", v23, 2u);
        MEMORY[0x26D60A7B0](v23, -1, -1);
      }

      v24 = *(v2 + 16);
      v25 = *(v24 + 104);
      v26 = qword_280228710;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = qword_280240640;
      v34 = &type metadata for MessagesFeatureFlagsImpl;
      v35 = off_2878D1228;
      type metadata accessor for ReadSpokenHintActionGroup(0);
      v28 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(v33, &type metadata for MessagesFeatureFlagsImpl);

      v17 = sub_267EB7F1C(v24, v32, v25, v27, v28);

      __swift_destroy_boxed_opaque_existential_0(v33);
      v18 = &unk_28022D030;
      v19 = type metadata accessor for ReadSpokenHintActionGroup;
    }

    v29 = sub_267EB8988(v18, v19, &unk_267F0D600);
    *a1 = v17;
    a1[1] = v29;
    v30 = *MEMORY[0x277D5BF58];
    v31 = sub_267EF4548();
    (*(*(v31 - 8) + 104))(a1, v30, v31);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_267EB7B34(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_267EF3AD8();
  v4 = *(a3 + 16);
  return sub_267EF3AB8();
}

uint64_t sub_267EB7B80()
{
}

uint64_t sub_267EB7BC0()
{
  v0 = sub_267BA0068();

  return v0;
}

uint64_t sub_267EB7CB4(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_267EB7D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229440, &qword_267EFD2E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  sub_267EF2CB8();
  v11 = type metadata accessor for TimedSpokenContext(0);
  *&v10[v11[5]] = 0x404E000000000000;
  *&v10[v11[6]] = a3;
  v12 = &v10[v11[7]];
  *v12 = a4;
  *(v12 + 1) = a5;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);

  return sub_267C4C99C(v10, v13, v14, v15, v16, v17, v18, v19, v21);
}

uint64_t sub_267EB7E34()
{
  v0 = sub_267BA0068();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow25ReadSpokenHintActionGroup_featureFlags));

  return swift_deallocClassInstance();
}

void *sub_267EB7F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v9 - 8);
  v72 = (v64 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v69 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v68 = v64 - v12;
  v13 = sub_267EF7B88();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v67 = v64 - v18;
  v87[3] = &type metadata for MessagesFeatureFlagsImpl;
  v87[4] = off_2878D1228;
  sub_267B9AFEC(v87, a5 + OBJC_IVAR____TtC16SiriMessagesFlow25ReadSpokenHintActionGroup_featureFlags);
  v19 = sub_267BE6C54(a1);
  v86 = 0;
  v84 = 0u;
  v85 = 0u;
  swift_retain_n();
  swift_retain_n();

  sub_267EF3838();
  type metadata accessor for ReadSpokenHintAction();
  swift_allocObject();
  v71 = a1;
  v20 = sub_267D05134(a1, a2, a3, &v81, &v84);
  v21 = sub_267EB8988(&qword_28022ACB8, type metadata accessor for ReadSpokenHintAction, &unk_267F03800);
  v19[3] = v20;
  v19[4] = v21;
  swift_unknownObjectRelease();
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v73 = v17;
  v22 = sub_267EF8A08();
  __swift_project_value_buffer(v22, qword_280240FB0);
  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_267B93000, v23, v24, "#ReadSpokenHintActionGroup creating offer transition for native flow", v25, 2u);
    MEMORY[0x26D60A7B0](v25, -1, -1);
  }

  v26 = v11;

  v27 = v19[2];
  sub_267B9AFEC(v27 + 16, &v84);
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v28 = qword_2802286F0;
  swift_retain_n();

  if (v28 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v29 = sub_267BB4A3C();
  v64[0] = sub_267E7FF50(a2, &v84, &v81, v29, v27);
  v30 = v19[2];
  v31 = v67;
  __swift_storeEnumTagSinglePayload(v67, 1, 1, v26);
  v32 = type metadata accessor for SiriKitFlowFactoryImpl();
  v33 = swift_allocObject();
  type metadata accessor for SendMessageCATs(0);

  sub_267EF7B68();
  v65 = sub_267EF78E8();
  *(&v85 + 1) = v32;
  v86 = &off_2878CFE90;
  *&v84 = v33;
  v66 = type metadata accessor for FollowupOfferFlow(0);
  v34 = swift_allocObject();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(&v84, v32);
  v64[1] = v64;
  MEMORY[0x28223BE20](v35);
  v37 = (v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  *(&v82 + 1) = v32;
  v83 = &off_2878CFE90;
  v40 = v31;
  *&v81 = v39;
  *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v41 = (v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  *v42 = v64[0];
  v42[1] = &off_2878D94A8;
  *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = a2;
  *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = v30;
  v43 = v73;
  sub_267EB89D0(v31, v73);
  if (__swift_getEnumTagSinglePayload(v43, 1, v26) == 1)
  {
    v44 = type metadata accessor for EmptyReferenceResolver();
    v45 = swift_allocObject();
    v79 = v44;
    v80 = sub_267EB8988(&qword_2802299B8, type metadata accessor for EmptyReferenceResolver, &unk_267F04AA8);
    *&v78 = v45;
    v77[3] = sub_267EF68A8();
    v77[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v77);

    sub_267EF6898();
    sub_267B9AFEC(v30 + 16, v76);
    sub_267B9AFEC(v77, v75);
    sub_267B9AFEC(&v78, v74);
    v46 = swift_allocObject();
    sub_267B9A5E8(v76, v46 + 16);
    sub_267B9A5E8(v75, v46 + 56);
    sub_267B9A5E8(v74, v46 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v47 = v68;
    v48 = v73;
    sub_267EF7058();
    sub_267EB8A40(v40);
    __swift_destroy_boxed_opaque_existential_0(v77);
    __swift_destroy_boxed_opaque_existential_0(&v78);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v26);
    v50 = v69;
    if (EnumTagSinglePayload != 1)
    {
      sub_267EB8A40(v48);
    }
  }

  else
  {

    sub_267EB8A40(v31);
    v47 = v68;
    v50 = v69;
    (*(v69 + 32))(v68, v43, v26);
  }

  (*(v50 + 32))(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v47, v26);
  sub_267B9A5E8(&v81, v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  type metadata accessor for FollowupOfferFlow.State(0);
  swift_storeEnumTagMultiPayload();
  *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v65;
  sub_267B9AFEC(v30 + 16, &v78);

  sub_267B9A5E8(&v78, v34 + 16);
  __swift_destroy_boxed_opaque_existential_0(&v84);
  v51 = swift_allocObject();
  v52 = v71;
  *(v51 + 2) = v70;
  *(v51 + 3) = &off_2878CF508;
  *(v51 + 4) = a2;
  *(v51 + 5) = v52;
  *(v51 + 6) = a2;
  v53 = (v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  v54 = *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  v55 = *(v34 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished + 8);
  *v53 = sub_267EB8AA8;
  v53[1] = v51;

  sub_267BA1BFC(v54, v55);
  *&v81 = v34;
  *&v84 = v52;
  *(&v84 + 1) = a2;
  sub_267EF33F8();
  swift_allocObject();
  sub_267EB8988(&qword_2802299C0, type metadata accessor for FollowupOfferFlow, &unk_267EFEAE0);
  sub_267EB8AB8();

  v56 = sub_267EF33E8();

  __swift_destroy_boxed_opaque_existential_0(v87);
  v57 = v72;
  *v72 = v56;
  v58 = *MEMORY[0x277D5B898];
  v59 = sub_267EF3758();
  (*(*(v59 - 8) + 104))(v57, v58, v59);
  v60 = *MEMORY[0x277D5BF50];
  v61 = sub_267EF4548();
  (*(*(v61 - 8) + 104))(v57, v60, v61);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v61);
  v62 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v57, v19 + v62);
  swift_endAccess();

  return v19;
}

uint64_t sub_267EB8988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EB89D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EB8A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267EB8AB8()
{
  result = qword_28022D038;
  if (!qword_28022D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D038);
  }

  return result;
}

uint64_t sub_267EB8B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A898, &qword_267F01FA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A8, &qword_267F01FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
  sub_267EF7048();
  v10 = sub_267EF7038();
  v36 = v2;
  v10(&v35, &v36);

  v14 = v35;
  if (v35)
  {
    v33 = a2;

    v15 = sub_267EF56B8();
    v32 = v14;

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v17 = v3;

    v18 = v17;
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();

    v31 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      v29 = swift_slowAlloc();
      v35 = v15;
      v36 = v29;
      *v21 = 138412546;
      *(v21 + 4) = v18;
      *v22 = v3;
      *(v21 + 12) = 2080;
      sub_267EF6798();
      sub_267BF6B78();
      v23 = v19;
      v24 = v18;
      v30 = v15;
      v25 = sub_267EF9E58();
      v27 = sub_267BA33E8(v25, v26, &v36);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_267B93000, v23, v31, "#ReferenceResolution INSpeakableString-RRaaS: Transformed INSpeakableString %@ to USO entity common group %s", v21, 0x16u);
      sub_267C142D4(v28);
      OUTLINED_FUNCTION_18_2();
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_18_2();
      MEMORY[0x26D60A7B0](v21, -1, -1);
    }

    else
    {
    }

    sub_267EB9018(v34, v33);
    (*(v6 + 8))(v8, v5);

    v11 = 0;
    a2 = v33;
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    v11 = 1;
  }

  v12 = sub_267EF8AE8();
  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v12);
}

BOOL sub_267EB8F8C()
{
  sub_267EB91D8(v0);
  if (v1)
  {

    return 0;
  }

  else
  {
    v3 = [v0 spokenPhrase];
    v4 = sub_267EF9028();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    return v7 == 0;
  }
}

uint64_t sub_267EB9018@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v16[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  v9 = sub_267EF2D28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EB91D8(v4);
  if (!v13)
  {
    sub_267EF2D18();
    sub_267EF2CE8();
    (*(v10 + 8))(v12, v9);
  }

  sub_267EB923C(a2, v8);
  sub_267EB92AC();

  v14 = v4;
  return sub_267EF8AB8();
}

uint64_t sub_267EB91D8(void *a1)
{
  v1 = [a1 vocabularyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267EB923C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_267EB92AC()
{
  result = qword_280229ED0;
  if (!qword_280229ED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229ED0);
  }

  return result;
}

void sub_267EB92F0(void *a1)
{
  if (*(v1 + *a1))
  {
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v2 = sub_267EF8A08();
    __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_267BA33E8(0xD00000000000005DLL, 0x8000000267F1D130, &v7);
      _os_log_impl(&dword_267B93000, v3, v4, "Fatal error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF9C98();
    __break(1u);
  }
}

uint64_t sub_267EB9478(void *a1)
{
  v38 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v37 = v5;
  v36 = sub_267EF79B8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v35 = v9;
  sub_267EB92F0(a1);
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12)
  {
    v43 = MEMORY[0x277D84F90];
    sub_267EF9BF8();
    v13 = sub_267BA7F44();
    v15 = v14;
    v16 = v11 + 64;
    sub_267EF3A58();
    result = sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
    v34 = (v3 + 104);
    v33 = *MEMORY[0x277D5D700];
    v32 = (v3 + 8);
    v18 = v12 - 1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v11 + 32))
      {
        if ((*(v16 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        if (v15 != *(v11 + 36))
        {
          goto LABEL_16;
        }

        v40 = v15;
        v39 = v18;
        v19 = (*(v11 + 48) + 16 * v13);
        v20 = v19[1];
        v41 = *v19;
        v21 = *(*(v11 + 56) + 8 * v13);

        v42 = v21;
        sub_267EF9618();
        sub_267EF7998();
        (*(v7 + 8))(v35, v36);
        OUTLINED_FUNCTION_26_0();
        sub_267EF39D8();

        v22 = sub_267EF3A38();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_267EFCA40;
        *(v23 + 32) = v22;
        (*v34)(v37, v33, v38);

        v24 = sub_267EF8418();
        v26 = v25;
        (*v32)(v37, v38);
        v27 = sub_267BEA93C(v24, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA78, &unk_267F08660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267EFC020;
        v29 = MEMORY[0x277D837D0];
        sub_267EF9AE8();
        *(inited + 96) = v29;
        *(inited + 72) = v41;
        *(inited + 80) = v20;

        v30 = sub_267EF8F28();
        sub_267BEA9B0(v30, v27);
        v31 = sub_267EF3928();
        OUTLINED_FUNCTION_97(v31);
        sub_267EF3898();

        sub_267EF9BD8();
        sub_267EF9C08();
        OUTLINED_FUNCTION_26_0();
        sub_267EF9C18();
        result = sub_267EF9BE8();
        if (v13 >= -(-1 << *(v11 + 32)))
        {
          goto LABEL_17;
        }

        v16 = v11 + 64;
        if ((*(v11 + 64 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_18;
        }

        if (v40 != *(v11 + 36))
        {
          goto LABEL_19;
        }

        result = sub_267EF99F8();
        if (!v39)
        {
          goto LABEL_12;
        }

        v13 = result;
        v15 = *(v11 + 36);
        v18 = v39 - 1;
        if (result < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_12:

    return v43;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_267EB99C4(uint64_t a1, void *a2)
{
  v50 = sub_267EF79B8();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v49 = v7;
  sub_267EB92F0(a2);
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v45 = a1;
    v56 = MEMORY[0x277D84F90];
    inited = &v56;
    sub_267C723F4(0, v10, 0);
    v55 = v56;
    v14 = sub_267BA7F44();
    v15 = 0;
    v16 = v9 + 64;
    v48 = (v5 + 8);
    v46 = v12;
    v47 = v10;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v9 + 32))
    {
      v17 = v14 >> 6;
      a1 = 1 << v14;
      if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v9 + 36) != v12)
      {
        goto LABEL_28;
      }

      v52 = v15;
      v53 = v12;
      v51 = v13;
      v18 = (*(v9 + 48) + 16 * v14);
      v19 = v18[1];
      v54 = *v18;
      v20 = *(*(v9 + 56) + 8 * v14);
      swift_bridgeObjectRetain_n();
      v21 = v20;
      sub_267EF9618();
      v22 = sub_267EF7998();
      v24 = v23;
      (*v48)(v49, v50);

      v25 = v55;
      v56 = v55;
      v27 = *(v55 + 16);
      v26 = *(v55 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_267C723F4(v26 > 1, v27 + 1, 1);
        v25 = v56;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (v25 + 32 * v27);
      v28[4] = v54;
      v28[5] = v19;
      v28[6] = v22;
      v28[7] = v24;
      inited = (1 << *(v9 + 32));
      if (v14 >= inited)
      {
        goto LABEL_29;
      }

      v16 = v9 + 64;
      v29 = *(v9 + 64 + 8 * v17);
      if ((v29 & a1) == 0)
      {
        goto LABEL_30;
      }

      v55 = v25;
      if (*(v9 + 36) != v53)
      {
        goto LABEL_31;
      }

      v30 = v29 & (-2 << (v14 & 0x3F));
      if (v30)
      {
        inited = (__clz(__rbit64(v30)) | v14 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v31 = v17 << 6;
        v32 = v17 + 1;
        v33 = (v9 + 72 + 8 * v17);
        while (v32 < (inited + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_267C96654(v14, v53, v51 & 1);
            inited = (__clz(__rbit64(v34)) + v31);
            goto LABEL_19;
          }
        }

        sub_267C96654(v14, v53, v51 & 1);
      }

LABEL_19:
      v13 = 0;
      v15 = v52 + 1;
      v14 = inited;
      v12 = v46;
      if (v52 + 1 == v47)
      {

        a1 = v45;
        v36 = v55;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_22:
  v37 = sub_267DA8380(v36);

  sub_267CF84DC(v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_267EFC020;
  if (qword_280228838 != -1)
  {
LABEL_32:
    swift_once();
  }

  v38 = qword_280240FF0;
  inited[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  inited[8] = sub_267BC1E20(&qword_280229758, &unk_28022CF00, &unk_267EFE460, MEMORY[0x277D5E430]);
  inited[4] = v38;
  v39 = qword_280228830;
  swift_retain_n();
  if (v39 != -1)
  {
    swift_once();
  }

  v40 = OUTLINED_FUNCTION_26_0();
  v43 = sub_267EBB720(v40, v41, v42);

  sub_267C37CA8(inited, v43, a1);

  swift_setDeallocating();
  return sub_267DB70BC();
}

uint64_t sub_267EB9E7C()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267EB9F38, 0, 0);
}

uint64_t sub_267EB9F38()
{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_selectedGroupName);
  if (v1)
  {
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
    v3 = sub_267EF4918();
    v4 = v2;
    v5 = sub_267D29C90(v3, v1);
    sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v6 = v4;
    v7 = v5;
    sub_267EF4388();
    OUTLINED_FUNCTION_26_0();
    sub_267EF4508();

    v8 = OUTLINED_FUNCTION_26_0();
    v9(v8);
  }

  else
  {
    sub_267C266B0();
    swift_allocError();
    *v11 = 0xD000000000000016;
    v11[1] = 0x8000000267F167C0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_17();

  return v10();
}

uint64_t sub_267EBA0FC()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[36] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[37] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[38] = v6;
  v1[39] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF53D8();
  v1[40] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[41] = v8;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v9 = sub_267EF4158();
  v1[45] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[46] = v10;
  v1[47] = OUTLINED_FUNCTION_2();

  return MEMORY[0x2822009F8](sub_267EBA294, 0, 0);
}

uint64_t sub_267EBA294()
{
  v44 = v0;
  v1 = v0[35];
  sub_267EB9478(&OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  sub_267EF4908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB88, &qword_267F02ED0);
  v2 = sub_267EF4698();
  sub_267DA874C(v2);

  v3 = sub_267EF3998();
  OUTLINED_FUNCTION_97(v3);
  sub_267EF3978();
  v5 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v5);
  (*(v4 + 8))(v5, v4);
  sub_267DA149C();
  v0[48] = v6;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v1[5];
  v8 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v7);
  (*(v8 + 8))(v7, v8);
  sub_267EB99C4((v0 + 7), &OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v9 = sub_267EF4698();
  sub_267EBABE8(v9);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[40];
  v13 = v0[41];
  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);
  v15 = *(v13 + 16);
  v15(v10, v11, v12);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[43];
  if (v18)
  {
    v20 = v0[41];
    v21 = v0[42];
    v22 = v0[40];
    buf = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *buf = 136315138;
    v15(v21, v19, v22);
    sub_267EF5458();
    v39 = v17;
    v0[30] = v22;
    v0[31] = sub_267EBB6D8(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 27);
    v15(boxed_opaque_existential_0, v21, v22);
    v24 = sub_267EF5448();
    v42 = v15;
    v26 = v25;
    v27 = *(v20 + 8);
    v28 = OUTLINED_FUNCTION_86();
    v27(v28);
    (v27)(v19, v22);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v29 = sub_267BA33E8(v24, v26, &v43);
    v15 = v42;

    *(buf + 4) = v29;
    _os_log_impl(&dword_267B93000, v16, v39, "#SendMessageGroupNeedsDisambiguationFlowStrategy submitting NLv4 dialog act: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v30 = v0[40];
    v31 = v0[41];

    v27 = *(v31 + 8);
    (v27)(v19, v30);
  }

  v0[49] = v27;
  v32 = v0[44];
  v33 = v0[40];
  v34 = v0[41];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_267EFC020;
  v15((v36 + v35), v32, v33);
  sub_267EF4088();
  v37 = swift_task_alloc();
  v0[50] = v37;
  *v37 = v0;
  v37[1] = sub_267EBA768;

  return sub_267E4ADE8();
}

uint64_t sub_267EBA768()
{
  OUTLINED_FUNCTION_12();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v2 = v5;
  *(v5 + 408) = v0;

  if (v0)
  {

    v3 = sub_267EBAB00;
  }

  else
  {
    v3 = sub_267EBA878;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267EBA878()
{
  v1 = *(v0 + 368);
  v15 = *(v0 + 376);
  v2 = *(v0 + 360);
  v19 = *(v0 + 352);
  v20 = *(v0 + 392);
  v18 = *(v0 + 320);
  v3 = *(v0 + 304);
  v16 = *(v0 + 312);
  v4 = *(v0 + 288);
  v17 = *(v0 + 296);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v7 = OUTLINED_FUNCTION_4_71();
  v8(v7);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v9 = OUTLINED_FUNCTION_4_71();
  v10(v9);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_4_71();
  sub_267EF3BC8();
  (*(v1 + 16))(v4, v15, v2);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
  v11 = sub_267EF4CC8();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v12 = MEMORY[0x277D5C1D8];
  v6[3] = v11;
  v6[4] = v12;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F68();

  sub_267B9FF34(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 8))(v16, v17);
  v20(v19, v18);
  (*(v1 + 8))(v15, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_267EBAB00()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  (*(v0 + 392))(*(v0 + 352), *(v0 + 320));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267EBABE8(uint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 40;
    do
    {
      v3 = qword_280228818;

      if (v3 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v4 = sub_267EF8A08();
      __swift_project_value_buffer(v4, qword_280240FB0);

      v5 = sub_267EF89F8();
      v6 = sub_267EF95D8();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v7 = 136315138;
        v8 = OUTLINED_FUNCTION_86();
        *(v7 + 4) = sub_267BA33E8(v8, v9, v10);
        _os_log_impl(&dword_267B93000, v5, v6, "#SendMessageGroupNeedsDisambiguationFlowStrategy adding context for group %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      v11 = sub_267EF6268();
      OUTLINED_FUNCTION_97(v11);
      sub_267EF6258();
      v12 = sub_267EF6058();
      OUTLINED_FUNCTION_97(v12);
      sub_267EF6048();
      OUTLINED_FUNCTION_86();
      sub_267EF6038();

      sub_267EF6218();

      v13 = sub_267EF6448();
      OUTLINED_FUNCTION_97(v13);
      sub_267EF6438();
      sub_267EF61F8();

      MEMORY[0x26D608F90](v14);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      OUTLINED_FUNCTION_86();
      sub_267EF9368();

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  sub_267BC8938();
}

uint64_t sub_267EBAE70()
{
}

char *sub_267EBAEB0()
{
  v0 = sub_267B9DCC8();

  return v0;
}

uint64_t sub_267EBAEF8()
{
  sub_267EBAEB0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(uint64_t a1)
{
  result = qword_28022D040;
  if (!qword_28022D040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267EBB070()
{
  type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(0);

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267EBB0EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_267CF97A8;

  return (sub_267CF7FDC)(a2);
}

uint64_t sub_267EBB1A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CFB43C;

  return sub_267EB9E7C();
}

uint64_t sub_267EBB24C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BF1CB4;

  return sub_267EBA0FC();
}

uint64_t sub_267EBB300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_267EBB3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_267EBB4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_267EBB568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_267EBB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy(0);

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_267EBB680(uint64_t a1)
{
  result = sub_267EBB6D8(&qword_28022C500, type metadata accessor for SendMessageGroupNeedsDisambiguationFlowStrategy, &unk_267F0E898);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267EBB6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EBB720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = sub_267EF4968();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF40, &unk_267F0CF80);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v38 - v8;
  v50 = sub_267EF3D18();
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_267EF3E38();
  v12 = MEMORY[0x28223BE20](v59);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v38 - v15;
  v62 = a2;
  v16 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v61 = a3;
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v45 = (v14 + 8);
  v46 = (v14 + 16);
  v49 = v9;
  v44 = v9 + 32;
  v54 = a2;

  v53 = a3;

  v52 = a1;

  v22 = 0;
  v42 = v21;
  v43 = a1 + 64;
  v48 = v11;
  if (v20)
  {
    while (1)
    {
      v57 = v16;
LABEL_9:
      v24 = (v22 << 10) | (16 * __clz(__rbit64(v20)));
      v25 = *(*(v52 + 48) + v24 + 8);
      v26 = (*(v52 + 56) + v24);
      v27 = v26[1];
      v55 = *v26;
      swift_bridgeObjectRetain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
      sub_267BC1E20(&qword_280229758, &unk_28022CF00, &unk_267EFE460, MEMORY[0x277D5E430]);
      sub_267EF5658();
      sub_267BCEF48();
      v28 = v58;
      v56 = v25;
      sub_267EF3E18();
      v29 = v51;
      v30 = v59;
      (*v46)(v51, v28, v59);
      __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);

      sub_267EF5658();
      sub_267BCEF48();
      v55 = v27;
      sub_267EF3E18();
      v31 = v48;
      sub_267EF3D08();
      v16 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267C7103C();
        v16 = v33;
      }

      v32 = *(v16 + 16);
      v21 = v42;
      v17 = v43;
      if (v32 >= *(v16 + 24) >> 1)
      {
        sub_267C7103C();
        v16 = v34;
      }

      v20 &= v20 - 1;
      (*v45)(v58, v59);
      *(v16 + 16) = v32 + 1;
      (*(v49 + 32))(v16 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32, v31, v50);

      v60 = v16;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      v57 = v16;
      v22 = v23;
      goto LABEL_9;
    }
  }

  if (qword_2802288E8 == -1)
  {
    goto LABEL_16;
  }

LABEL_18:
  swift_once();
LABEL_16:
  sub_267EF5648();
  v35 = v39;
  sub_267EF4948();
  v36 = sub_267EF4958();
  (*(v40 + 8))(v35, v41);
  sub_267C9B4C4(v36);

  return v60;
}

uint64_t type metadata accessor for UnsendMessagesCATs(uint64_t a1)
{
  result = qword_28022D058;
  if (!qword_28022D058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EBBD9C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBBE4C(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267EBBE64()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  *(v2 + 32) = 0x6552656E4F736168;
  *(v2 + 40) = 0xEF746E6569706963;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BF0];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_1_5(v3);
  *(v0 + 32) = v2;
  *(v2 + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_34_1(v5);

  return v8(v6, 0xD000000000000030);
}

uint64_t sub_267EBBF80()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB7904, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v7();
  }
}

uint64_t sub_267EBC0A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267EBC0B8()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_267EFC020;
  *(v2 + 32) = 7368801;
  *(v2 + 40) = 0xE300000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for MessagesApp(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_267EBC200;
  v5 = v0[2];

  return v7(v5, 0xD000000000000030, 0x8000000267F1D2C0, v2);
}

uint64_t sub_267EBC200()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CE920C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v7();
  }
}

uint64_t sub_267EBC320()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBC3D0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBC480()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_1_5(MEMORY[0x277D55BF0]);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_2(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_11_2();
  OUTLINED_FUNCTION_31_2();

  return v3();
}

uint64_t sub_267EBC530(uint64_t a1, char a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 56) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267EBC54C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_267EFCC90;
  *(v3 + 32) = 0x646E65736E557369;
  *(v3 + 40) = 0xE800000000000000;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x6C65636E61437369;
  *(v3 + 88) = 0xE800000000000000;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v8 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_34_1(v5);

  return v8(v6, 0xD00000000000001DLL);
}

uint64_t sub_267EBC690()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_267CB73B4, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v7();
  }
}

uint64_t sub_267EBC804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_267EF7B88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_267BB3794(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_267EF78B8();
  (*(v6 + 8))(a2, v5);
  sub_267BB2D24(a1);
  return v11;
}

double sub_267EBC978@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  sub_267EF4C68();
  OUTLINED_FUNCTION_58();
  v60 = v4;
  v61 = v3;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  v10 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_267EF6718();
  OUTLINED_FUNCTION_58();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  (*(v12 + 16))(v15, a1, v10);
  v25 = (*(v12 + 88))(v15, v10);
  if (v25 == *MEMORY[0x277D5C128])
  {
    v26 = OUTLINED_FUNCTION_17_28();
    v27(v26);
    goto LABEL_5;
  }

  if (v25 == *MEMORY[0x277D5C158])
  {
    v28 = OUTLINED_FUNCTION_17_28();
    v29(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D50, &qword_267F0C8C0);

LABEL_5:
    v30 = *(v18 + 32);
    v30(v24, v15, v16);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95D8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v35, v36, "PhoneCallIntentHelper# building PhoneCallNLv3Intent");
      MEMORY[0x26D60A7B0](v34, -1, -1);
    }

    v30(v22, v24, v16);
    v37 = type metadata accessor for PhoneCallNLv3Intent(0);
    swift_allocObject();
    v38 = sub_267DD2140(v22);
    if (v38)
    {
      v40 = v62;
      v62[3] = v37;
      v40[4] = &off_2878D5AC8;
      *v40 = v38;
      return result;
    }

    return OUTLINED_FUNCTION_29_29();
  }

  if (v25 == *MEMORY[0x277D5C160])
  {
    v41 = OUTLINED_FUNCTION_17_28();
    v42(v41);
    v44 = v60;
    v43 = v61;
    (*(v60 + 32))(v9, v15, v61);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v45 = sub_267EF8A08();
    __swift_project_value_buffer(v45, qword_280240FB0);
    v46 = sub_267EF89F8();
    v47 = sub_267EF95D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_267B93000, v46, v47, "PhoneCallIntentHelper# building PhoneCallNLv4Intent from usoParse", v48, 2u);
      MEMORY[0x26D60A7B0](v48, -1, -1);
    }

    (*(v44 + 16))(v7, v9, v43);
    v49 = type metadata accessor for PhoneCallNLv4Intent();
    swift_allocObject();
    v50 = sub_267E1F24C(v7);
    if (v50)
    {
      v51 = v62;
      v62[3] = v49;
      v51[4] = &off_2878D7768;
      *v51 = v50;
      (*(v44 + 8))(v9, v43);
      return result;
    }

    (*(v44 + 8))(v9, v43);
    return OUTLINED_FUNCTION_29_29();
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v52 = sub_267EF8A08();
  __swift_project_value_buffer(v52, qword_280240FB0);
  v53 = sub_267EF89F8();
  v54 = sub_267EF95D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v56, v57, "PhoneCallIntentHelper# unrecognized parse type, not building PhoneCallIntent");
    MEMORY[0x26D60A7B0](v55, -1, -1);
  }

  v58 = OUTLINED_FUNCTION_29_29();
  (*(v12 + 8))(v15, v10, v58);
  return result;
}

uint64_t sub_267EBCF28()
{
  v0 = sub_267EF8A08();
  __swift_allocate_value_buffer(v0, qword_280240FB0);
  __swift_project_value_buffer(v0, qword_280240FB0);
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v1 = qword_280240FC8;
  return sub_267EF8A18();
}

uint64_t sub_267EBCFB4()
{
  sub_267EBD01C();
  result = sub_267EF9848();
  qword_280240FC8 = result;
  return result;
}

unint64_t sub_267EBD01C()
{
  result = qword_28022D068;
  if (!qword_28022D068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022D068);
  }

  return result;
}

void sub_267EBD060(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v217 = a3;
  v215 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEC8, &qword_267F04288);
  MEMORY[0x28223BE20](v4 - 8);
  v202 = &v196 - v5;
  v220 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v222 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77_0();
  v219 = v10;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v196 - v13;
  v221 = sub_267EF8A38();
  OUTLINED_FUNCTION_58();
  v205 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0();
  v218 = v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  v206 = &v196 - v21;
  v208 = sub_267EF8AF8();
  OUTLINED_FUNCTION_58();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_77_0();
  v209 = v26;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v27);
  v29 = &v196 - v28;
  sub_267EF8A88();
  OUTLINED_FUNCTION_58();
  v212 = v31;
  v213 = v30;
  MEMORY[0x28223BE20](v30);
  v33 = (&v196 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);
  MEMORY[0x28223BE20](v211);
  OUTLINED_FUNCTION_6();
  v210 = v34;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v35);
  v37 = &v196 - v36;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v38 = sub_267EF8A08();
  v39 = __swift_project_value_buffer(v38, qword_280240FB0);

  v214 = v39;
  v40 = a1;
  v41 = sub_267EF89F8();
  v42 = sub_267EF95D8();

  v43 = os_log_type_enabled(v41, v42);
  v200 = v14;
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_48();
    v204 = v37;
    v45 = v44;
    v46 = OUTLINED_FUNCTION_52();
    v207 = v23;
    v47 = v46;
    v224[0] = v46;
    *v45 = 136315138;
    v48 = sub_267EF66B8();
    v50 = v29;
    v51 = sub_267BA33E8(v48, v49, v224);
    v40 = a1;

    *(v45 + 4) = v51;
    _os_log_impl(&dword_267B93000, v41, v42, "ReferenceResolution# Resolving %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v23 = v207;
    OUTLINED_FUNCTION_32_0();
    v37 = v204;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v50 = v29;
  }

  *v33 = v40;
  v53 = v212;
  v52 = v213;
  (*(v212 + 104))(v33, *MEMORY[0x277D5FEA8], v213);

  sub_267EF8958();
  (*(v53 + 8))(v33, v52);
  v54 = v210;
  sub_267EBF1F8(v37, v210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = *v54;
    v56 = v55;
    v57 = sub_267EF89F8();
    v58 = sub_267EF95E8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_48();
      v60 = OUTLINED_FUNCTION_52();
      v223 = v55;
      v224[0] = v60;
      *v59 = 136315138;
      v61 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v62 = sub_267EF9098();
      v64 = sub_267BA33E8(v62, v63, v224);

      *(v59 + 4) = v64;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

LABEL_13:
    v91 = &qword_28022AED0;
    v92 = &unk_267F04290;
    v93 = v37;
LABEL_14:
    sub_267B9FF34(v93, v91, v92);
    return;
  }

  v70 = v208;
  (*(v23 + 32))(v50, v54, v208);
  v71 = (v23 + 16);
  v72 = *(v23 + 16);
  v73 = v209;
  v72(v209, v50, v70);
  v74 = (*(v23 + 88))(v73, v70);
  if (v74 == *MEMORY[0x277D5FEC0])
  {
    v216 = v50;
    v207 = v23;
    v75 = v209;
    v76 = OUTLINED_FUNCTION_100_0();
    v77(v76);
    v79 = v205;
    v78 = v206;
    v80 = v221;
    (*(v205 + 32))(v206, v75, v221);
    v81 = v203;
    (*(v79 + 16))(v203, v78, v80);
    v82 = sub_267EF89F8();
    v83 = sub_267EF95D8();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = v81;
      v85 = OUTLINED_FUNCTION_48();
      v220 = OUTLINED_FUNCTION_52();
      v224[0] = v220;
      *v85 = 136315138;
      sub_267EBF288(&qword_28022AED8, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v86 = sub_267EF9E58();
      v87 = *(v79 + 8);
      v87(v84, v80);
      v88 = OUTLINED_FUNCTION_100_0();
      sub_267BA33E8(v88, v89, v90);
      OUTLINED_FUNCTION_25_0();
      v70 = v208;

      *(v85 + 4) = v86;
      _os_log_impl(&dword_267B93000, v82, v83, "ReferenceResolution# Found a candidate %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v220);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      v87 = *(v79 + 8);
      v87(v81, v80);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
    *(swift_allocObject() + 16) = xmmword_267EFC020;
    v119 = v206;
    sub_267EF8A28();
    v87(v119, v80);
LABEL_28:
    (*(v207 + 8))(v216, v70);
LABEL_29:
    v120 = v37;
LABEL_46:
    sub_267B9FF34(v120, &qword_28022AED0, &unk_267F04290);
    return;
  }

  if (v74 == *MEMORY[0x277D5FED0])
  {
    v204 = v37;
    v94 = OUTLINED_FUNCTION_4_72();
    v95(v94);
    v96 = *v71;
    v97 = sub_267EF89F8();
    v98 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v98))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v99, v100, v101, v102, v103, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v104 = *(v96 + 16);
    if (v104)
    {
      v207 = v23;
      v105 = *(v205 + 16);
      v216 = v50;
      v217 = v105;
      v106 = *(v205 + 80);
      v215 = v96;
      v107 = v96 + ((v106 + 32) & ~v106);
      v108 = *(v205 + 72);
      v109 = (v205 + 8);
      v110 = MEMORY[0x277D84F90];
      do
      {
        v111 = v218;
        v112 = v221;
        v217(v218, v107, v221);
        sub_267EF8A28();
        (*v109)(v111, v112);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_35();
          v110 = v117;
        }

        v113 = *(v110 + 16);
        if (v113 >= *(v110 + 24) >> 1)
        {
          OUTLINED_FUNCTION_19_47();
          v110 = v118;
        }

        OUTLINED_FUNCTION_11_53();
        (*(v116 + 32))(v114 + v115 * v113, v219, v220);
        v107 += v108;
        --v104;
      }

      while (v104);
    }

    v161 = OUTLINED_FUNCTION_91_2();
    v162(v161);
    v120 = v204;
    goto LABEL_46;
  }

  if (v74 == *MEMORY[0x277D5FEC8])
  {
    v121 = OUTLINED_FUNCTION_4_72();
    v122(v121);
    v123 = *v71;

    v124 = sub_267EF89F8();
    v125 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v125))
    {
      v126 = OUTLINED_FUNCTION_48();
      *v126 = 134217984;
      *(v126 + 4) = *(v123 + 16);

      OUTLINED_FUNCTION_20();
      _os_log_impl(v127, v128, v129, v130, v131, 0xCu);
      OUTLINED_FUNCTION_40_0();
    }

    else
    {
    }

    v163 = v202;
    sub_267C8F038(v123, v202);

    v164 = v221;
    if (__swift_getEnumTagSinglePayload(v163, 1, v221) == 1)
    {
      v165 = OUTLINED_FUNCTION_91_2();
      v166(v165);
      sub_267B9FF34(v37, &qword_28022AED0, &unk_267F04290);
      v91 = &qword_28022AEC8;
      v92 = &qword_267F04288;
      v93 = v202;
      goto LABEL_14;
    }

    v174 = v198;
    v175 = v202;
    sub_267EF8A28();
    (*(v205 + 8))(v175, v164);
    v176 = v50;
    v178 = v222 + 4;
    v177 = v222[4];
    v179 = v200;
    v180 = v220;
    v177(v200, v174, v220);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
    v181 = (*(v178 + 48) + 32) & ~*(v178 + 48);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_267EFC020;
    v177((v182 + v181), v179, v180);
    (*(v23 + 8))(v176, v70);
    goto LABEL_29;
  }

  if (v74 == *MEMORY[0x277D5FED8])
  {
    v216 = v50;
    v207 = v23;
    v132 = OUTLINED_FUNCTION_4_72();
    v133(v132);
    v134 = *v71;
    v135 = sub_267EF89F8();
    v136 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_27(v136))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_20();
      _os_log_impl(v137, v138, v139, v140, v141, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v142 = 0;
    v143 = *(v134 + 16);
    v144 = v205 + 16;
    v219 = v205 + 8;
    v145 = v222 + 4;
    v146 = MEMORY[0x277D84F90];
    v147 = v199;
    while (1)
    {
      if (v143 == v142)
      {

        goto LABEL_28;
      }

      if (v142 >= *(v134 + 16))
      {
        break;
      }

      v148 = *(v134 + 8 * v142++ + 32);
      if (*(v148 + 16))
      {
        v149 = v37;
        v150 = v205;
        v151 = *(v205 + 16);
        v152 = v148 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
        v153 = v197;
        v154 = v221;
        v218 = v144;
        v151(v197, v152, v221);
        sub_267EF8A28();
        (*(v150 + 8))(v153, v154);
        v155 = *v145;
        (*v145)(v201, v147, v220);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_20_35();
          v146 = v159;
        }

        v156 = *(v146 + 16);
        if (v156 >= *(v146 + 24) >> 1)
        {
          OUTLINED_FUNCTION_19_47();
          v146 = v160;
        }

        OUTLINED_FUNCTION_11_53();
        v155(v157 + v158 * v156, v201, v220);
        v37 = v149;
        v70 = v208;
        v144 = v218;
      }
    }

    __break(1u);
  }

  else
  {
    if (v74 == *MEMORY[0x277D5FEE0])
    {
      v167 = sub_267EF89F8();
      v168 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v168))
      {
        v169 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v169);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v170, v171, "ReferenceResolution# No matches found");
        OUTLINED_FUNCTION_26();
      }

      v172 = OUTLINED_FUNCTION_91_2();
      v173(v172);
      goto LABEL_13;
    }

    v183 = v50;
    v184 = v196;
    v72(v196, v183, v70);
    v185 = sub_267EF89F8();
    v186 = v183;
    v187 = sub_267EF95E8();
    if (os_log_type_enabled(v185, v187))
    {
      v188 = OUTLINED_FUNCTION_48();
      v222 = OUTLINED_FUNCTION_52();
      v224[0] = v222;
      *v188 = 136315138;
      sub_267EBF288(qword_28022D070, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
      v216 = v186;
      v189 = sub_267EF9E58();
      v190 = *(v23 + 8);
      v190(v184, v70);
      v191 = OUTLINED_FUNCTION_100_0();
      sub_267BA33E8(v191, v192, v193);
      OUTLINED_FUNCTION_25_0();

      *(v188 + 4) = v189;
      _os_log_impl(&dword_267B93000, v185, v187, "ReferenceResolution# Received unknown result type %s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v222);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_40_0();

      v190(v216, v70);
    }

    else
    {

      v190 = *(v23 + 8);
      v194 = OUTLINED_FUNCTION_91_2();
      (v190)(v194);
      v195 = OUTLINED_FUNCTION_100_0();
      (v190)(v195);
    }

    sub_267B9FF34(v37, &qword_28022AED0, &unk_267F04290);
    v190(v209, v70);
  }
}

void *sub_267EBE108(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!OUTLINED_FUNCTION_23_33(a1))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v20, v21, "#resolveSendRecipientFromRRaaS Intent is not an NLv4, no results");
      OUTLINED_FUNCTION_26();
    }

    return MEMORY[0x277D84F90];
  }

  v7 = sub_267DD9798();
  v8 = sub_267BAF0DC(v7);

  if (!v8)
  {
    v23 = sub_267DD75BC();
    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_267EFCA40;
      *(v15 + 32) = v24;
      goto LABEL_20;
    }

LABEL_19:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v9 = sub_267DD9798();
  v10 = sub_267BAF0DC(v9);
  if (!v10)
  {

    goto LABEL_19;
  }

  v11 = v10;
  v43 = v3;
  v44 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = OUTLINED_FUNCTION_91_2();
        MEMORY[0x26D609870](v14);
      }

      else
      {
      }

      ++v13;
      sub_267EF56B8();

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v11 != v13);

    v15 = v44;
    v4 = v43;
LABEL_20:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = OUTLINED_FUNCTION_52();
      v44 = v43;
      *v28 = 134218242;
      v29 = sub_267BAF0DC(v15);
      v30 = OUTLINED_FUNCTION_29_33(v29);

      v32 = MEMORY[0x26D608FD0](v31, v30);
      v33 = a2;
      v34 = a3;
      v35 = v4;
      v37 = v36;

      v38 = sub_267BA33E8(v32, v37, &v44);
      v4 = v35;
      a3 = v34;
      a2 = v33;

      *(v28 + 14) = v38;
      OUTLINED_FUNCTION_28_36(&dword_267B93000, v39, v40, "#resolveSendRecipientFromRRaaS Found %ld entities to query RRaaS with: %s");
      __swift_destroy_boxed_opaque_existential_0(v43);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    MEMORY[0x28223BE20](v41);
    v22 = v42;
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;

    OUTLINED_FUNCTION_27_36();
    OUTLINED_FUNCTION_25_0();
    swift_bridgeObjectRelease_n();

    return v22;
  }

  __break(1u);
  return result;
}

void *sub_267EBE490(void *a1, os_log_type_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_23_33(a1);
  if (!v8)
  {
    OUTLINED_FUNCTION_58_13();
    if (!v17)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v22, v23, "#resolveReadPersonWithRRaaS Intent is not an NLv4, no results");
      OUTLINED_FUNCTION_26();
    }

    return MEMORY[0x277D84F90];
  }

  v62 = a4;
  v10 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v63 = v4;
  if (a2)
  {
    v11 = sub_267DD9798();
    v12 = sub_267BAF0DC(v11);
    if (!v12)
    {

      v16 = MEMORY[0x277D84F90];
LABEL_20:
      v66 = v16;
      goto LABEL_37;
    }

    v13 = v12;
    v65[0] = v10;
    sub_267EF9BF8();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = OUTLINED_FUNCTION_91_2();
          MEMORY[0x26D609870](v15);
        }

        else
        {
        }

        ++v14;
        sub_267EF56B8();

        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
      }

      while (v13 != v14);

      v16 = v65[0];
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (sub_267DD97C4(v8, v9))
  {
    a2 = sub_267EF56B8();

    MEMORY[0x26D608F90](v25);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_18:
      sub_267EF9368();
      v16 = v66;
      goto LABEL_22;
    }

LABEL_53:
    sub_267EF9328();
    goto LABEL_18;
  }

  v16 = v10;
LABEL_22:
  if (sub_267BAF0DC(v16))
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_58_13();
  if (!v17)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v26 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
  v27 = sub_267EF89F8();
  v28 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v28))
  {
    v29 = OUTLINED_FUNCTION_32();
    *v29 = 0;
    _os_log_impl(&dword_267B93000, v27, a2, "#resolveReadPersonWithRRaaS(rdar://75809822) Sender entity not found, trying send recipients", v29, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v30 = sub_267DD9798();
  v31 = sub_267BAF0DC(v30);
  if (!v31)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_36:
    v66 = v16;
LABEL_37:
    if (!sub_267BAF0DC(v16))
    {
      v35 = sub_267DD75BC();
      if (v35)
      {
        v36 = v35;

        MEMORY[0x26D608F90](v37);
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v16 = v66;
        OUTLINED_FUNCTION_58_13();
        if (!v17)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v38 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);

        v39 = sub_267EF89F8();
        v40 = sub_267EF95D8();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = OUTLINED_FUNCTION_48();
          v42 = OUTLINED_FUNCTION_52();
          v64 = v36;
          v65[0] = v42;
          *v41 = 136315138;
          sub_267EF6798();
          sub_267EBF288(&qword_28022C290, MEMORY[0x277D5F498], MEMORY[0x277D5C328]);
          v43 = sub_267EF9E58();
          v45 = sub_267BA33E8(v43, v44, v65);

          *(v41 + 4) = v45;
          _os_log_impl(&dword_267B93000, v39, v40, "#resolveReadPersonWithRRaaS Agent entity not found, using intent entity: %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v42);
          OUTLINED_FUNCTION_26();
          OUTLINED_FUNCTION_32_0();
        }

        else
        {
        }
      }
    }

    OUTLINED_FUNCTION_58_13();
    if (!v17)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v46 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v46, qword_280240FB0);
    v47 = sub_267EF89F8();
    v48 = sub_267EF95D8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = OUTLINED_FUNCTION_52();
      v65[0] = v50;
      *v49 = 134218242;
      v51 = sub_267BAF0DC(v16);
      v52 = OUTLINED_FUNCTION_29_33(v51);

      v54 = MEMORY[0x26D608FD0](v53, v52);
      v56 = v55;

      v57 = sub_267BA33E8(v54, v56, v65);

      *(v49 + 14) = v57;
      OUTLINED_FUNCTION_28_36(&dword_267B93000, v58, v59, "#resolveSendRecipientFromRRaaS Found %ld entities to query RRaaS with: %s");
      __swift_destroy_boxed_opaque_existential_0(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_32_0();
    }

    MEMORY[0x28223BE20](v60);
    v24 = v61;
    v61[2] = a3;
    v61[3] = v62;
    v61[4] = v63;

    OUTLINED_FUNCTION_27_36();
    OUTLINED_FUNCTION_25_0();
    swift_bridgeObjectRelease_n();

    return v24;
  }

  v32 = v31;
  v65[0] = v10;
  result = sub_267EF9BF8();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v34, v30);
      }

      else
      {
      }

      ++v34;
      sub_267EF56B8();

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    while (v32 != v34);

    v16 = v65[0];
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

void *sub_267EBEB0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_267EBD060(a1, a2, a3);
  v7 = v6;
  if (*(v6 + 16))
  {
    MEMORY[0x28223BE20](v6);
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = v3;
    v8 = sub_267DA4EF8(sub_267EBF2D0, v16, v7);
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v11))
    {
      v12 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v13, v14, "#resolveSendRecipientFromRRaaS Person entity not found");
      OUTLINED_FUNCTION_26();
    }

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void *sub_267EBEC38()
{
  sub_267BCA2C8();
  v0 = sub_267EF8A98();
  v8 = v0;
  if (v0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v1 = sub_267EF8A08();
    __swift_project_value_buffer(v1, qword_280240FB0);
    v2 = v8;
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v8;
      v7 = v2;
      _os_log_impl(&dword_267B93000, v3, v4, "#convertEntityToPerson Using resolved person: %@", v5, 0xCu);
      sub_267B9FF34(v6, &unk_280229E30, &unk_267EFC270);
      MEMORY[0x26D60A7B0](v6, -1, -1);
      MEMORY[0x26D60A7B0](v5, -1, -1);
    }
  }

  else
  {
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
      *v13 = 0;
      _os_log_impl(&dword_267B93000, v11, v12, "#convertEntityToPerson Conversion to INPerson returned nil", v13, 2u);
      MEMORY[0x26D60A7B0](v13, -1, -1);
    }

    return 0;
  }

  return v8;
}

uint64_t sub_267EBEFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v5 = sub_267EBEB0C(*a1, a2, a3);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v6 = sub_267EF8A08();
  __swift_project_value_buffer(v6, qword_280240FB0);

  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    sub_267EF6798();
    sub_267EBF288(&qword_28022C290, MEMORY[0x277D5F498], MEMORY[0x277D5C328]);
    v11 = sub_267EF9E58();
    v13 = sub_267BA33E8(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_267BCA2C8();
    v15 = MEMORY[0x26D608FD0](v5, v14);
    v17 = sub_267BA33E8(v15, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_267B93000, v7, v8, "#resolveSendRecipientFromRRaaS Entity %s is resolved to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  result = sub_267BAF0DC(v5);
  if (!result)
  {

    v5 = 0;
  }

  *a4 = v5;
  return result;
}

uint64_t sub_267EBF1F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AED0, &unk_267F04290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EBF288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_267EBF2D0()
{
  OUTLINED_FUNCTION_24_43();
  result = sub_267EBEC38();
  *v0 = result;
  return result;
}

void *sub_267EBF304()
{
  OUTLINED_FUNCTION_24_43();
  result = sub_267EBEB0C(*v1, v2, v3);
  *v0 = result;
  return result;
}

uint64_t sub_267EBF33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_267EBF390@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v45 - v4;
  sub_267EF8228();
  OUTLINED_FUNCTION_58();
  v46 = v7;
  v47 = v6;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  v13 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_0();
  v19 = v18 - v17;
  v20 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_0();
  v26 = v25 - v24;
  (*(v15 + 16))(v19, v2, v13);
  if ((*(v15 + 88))(v19, v13) != *MEMORY[0x277D5C150])
  {
    (*(v15 + 8))(v19, v13);
    goto LABEL_5;
  }

  (*(v15 + 96))(v19, v13);
  (*(v22 + 32))(v26, v19, v20);
  sub_267B9CC04(v26, v5);
  (*(v22 + 8))(v26, v20);
  v27 = type metadata accessor for DirectInvocationUseCases(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    sub_267B9F98C(v5, &unk_28022BBE0, qword_267EFD030);
LABEL_5:
    sub_267E57DFC(v2, &v49);
    if (v50)
    {
      sub_267BE58F4(&v49, v51);
      v28 = v52;
      v29 = v53;
      __swift_project_boxed_opaque_existential_0(v51, v52);
      (*(v29 + 320))(v28, v29);
      return __swift_destroy_boxed_opaque_existential_0(v51);
    }

    sub_267B9F98C(&v49, &unk_28022BBF0, &unk_267F01C60);
    v31 = MEMORY[0x277D5B960];
    goto LABEL_8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_267CCEDF4(v5);
    goto LABEL_5;
  }

  v37 = v46;
  v38 = *(v46 + 32);
  v39 = v5;
  v40 = v47;
  v38(v12, v39, v47);
  v38(v10, v12, v40);
  v41 = (*(v37 + 88))(v10, v40);
  if (v41 == *MEMORY[0x277D5D4E8])
  {
    v31 = MEMORY[0x277D5B978];
LABEL_8:
    v32 = *v31;
    sub_267EF3868();
    OUTLINED_FUNCTION_22();
    v34 = *(v33 + 104);
    v35 = v48;
    v36 = v32;
    return v34(v35, v36);
  }

  v42 = v41;
  if (v41 == *MEMORY[0x277D5D4F0])
  {
    v31 = MEMORY[0x277D5B968];
    goto LABEL_8;
  }

  v43 = *MEMORY[0x277D5D4D8];
  sub_267EF3868();
  OUTLINED_FUNCTION_22();
  v34 = *(v44 + 104);
  if (v42 != v43)
  {
    v34(v48, *MEMORY[0x277D5B960]);
    return (*(v37 + 8))(v10, v40);
  }

  v36 = *MEMORY[0x277D5B970];
  v35 = v48;
  return v34(v35, v36);
}

BOOL sub_267EBF874()
{
  v1 = v0;
  v2 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  v9 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v16 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  (*(v11 + 16))(v15, v1, v9);
  if ((*(v11 + 88))(v15, v9) != *MEMORY[0x277D5C150])
  {
    (*(v11 + 8))(v15, v9);
    return 0;
  }

  (*(v11 + 96))(v15, v9);
  (*(v18 + 32))(v22, v15, v16);
  (*(v4 + 104))(v8, *MEMORY[0x277D5D6F8], v2);
  v23 = sub_267EF8418();
  v25 = v24;
  (*(v4 + 8))(v8, v2);
  if (v23 != sub_267EF4BC8() || v25 != v26)
  {
    v28 = sub_267EF9EA8();

    (*(v18 + 8))(v22, v16);
    return (v28 & 1) != 0;
  }

  (*(v18 + 8))(v22, v16);
  return 1;
}

unint64_t sub_267EBFB68()
{
  result = qword_28022D0F8;
  if (!qword_28022D0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022D0F8);
  }

  return result;
}

uint64_t sub_267EBFBEC()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_22_38(v1, v2);
  v4 = type metadata accessor for GatekeeperReadSendCallParameters(v3);
  OUTLINED_FUNCTION_79_3(v4);
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EBFC6C()
{
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_25_44();
  OUTLINED_FUNCTION_0_78(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_60(v2);

  return v4(v3);
}

uint64_t sub_267EBFD28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EBFE24()
{
  *(v0 + 72) = sub_267BEAD24(type metadata accessor for GatekeeperReadSendCallParameters);
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 80) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_55_2(v1);
  v2 = OUTLINED_FUNCTION_28_2(23);

  return v3(v2);
}

uint64_t sub_267EBFEEC()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EC0020()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_1_88();
  sub_267BC88E0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267EC0088()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_1_88();
  sub_267BC88E0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EC00F4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_1_88();
  sub_267BC88E0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EC0160()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_85();
  sub_267BC88E0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EC01CC()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_3_85();
  sub_267BC88E0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EC0238()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_22_38(v1, v2);
  Parameters = type metadata accessor for GatekeeperSendReadParameters(v3);
  OUTLINED_FUNCTION_79_3(Parameters);
  *(v0 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EC02B8()
{
  OUTLINED_FUNCTION_62();
  v1 = OUTLINED_FUNCTION_25_44();
  OUTLINED_FUNCTION_0_78(v1);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_6_60(v2);

  return v4(v3);
}

uint64_t sub_267EC0374()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EC0470()
{
  *(v0 + 72) = sub_267BEAD24(type metadata accessor for GatekeeperSendReadParameters);
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 80) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_55_2(v1);
  v2 = OUTLINED_FUNCTION_28_2(19);

  return v3(v2);
}

uint64_t sub_267EC0538()
{
  OUTLINED_FUNCTION_62();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {
    *(v5 + 96) = v3;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267EC066C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_73();
  sub_267BC88E0(v1, v2);

  v3 = OUTLINED_FUNCTION_51_6();

  return v4(v3);
}

uint64_t sub_267EC06D4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_73();
  sub_267BC88E0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EC0740()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_73();
  sub_267BC88E0(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_267EC0918(uint64_t a1)
{
  sub_267C11A54(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_267EC0994(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF5658();
  sub_267BB8F30(v2, v3);
  v5 = v4;

  if (v5)
  {
    sub_267EF8F68();
  }

  v6 = OUTLINED_FUNCTION_91_1();
  MEMORY[0x26D608E60](v6);

  v7 = sub_267EF5658();
  sub_267BB8FCC(1uLL, v7, v8);
  sub_267BB9090();

  sub_267EF9188();

  return 0xD000000000000012;
}

uint64_t sub_267EC0AC4(uint64_t a1)
{
  v1 = sub_267EF5B38();
  v2 = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    sub_267B9AFEC(v2, v8);
    v6 = sub_267EC7A90(v8);
    v2 += 40;
    __swift_destroy_boxed_opaque_existential_0(v8);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_0(v8);
  __break(1u);
  return result;
}

void sub_267EC0B90()
{
  OUTLINED_FUNCTION_48_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v2);
  v4 = &v67 - v3;
  v5 = sub_267EF5B58();
  OUTLINED_FUNCTION_58();
  v71 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v69 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v74 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_34_32();
  v19 = sub_267EF5A88();
  OUTLINED_FUNCTION_58();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v73 = v24 - v23;
  v25 = sub_267EF5B38();
  v26 = 0;
  v75 = *(v25 + 16);
  v27 = v25 + 32;
  v67 = v71 + 1;
  v68 = (v71 + 4);
  v70 = v21 + 8;
  v71 = (v21 + 32);
  v72 = v25;
  while (1)
  {
    if (v75 == v26)
    {
LABEL_20:

      OUTLINED_FUNCTION_47();
      return;
    }

    if (v26 >= *(v25 + 16))
    {
      break;
    }

    sub_267B9AFEC(v27, v76);
    OUTLINED_FUNCTION_80_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
    if (swift_dynamicCast())
    {
      v28 = v5;
      v29 = v4;
      OUTLINED_FUNCTION_37_25();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
      v34 = v73;
      (*v71)(v73, v0, v19);
      sub_267EF5A78();
      OUTLINED_FUNCTION_51_8();
      if (v35)
      {
        v36 = v35 - 1;
        v37 = sub_267EF5958();
        OUTLINED_FUNCTION_22();
        (*(v38 + 16))(v13, v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, v37);
        v39 = v13;
        v40 = 0;
      }

      else
      {
        v37 = sub_267EF5958();
        v39 = v13;
        v40 = 1;
      }

      __swift_storeEnumTagSinglePayload(v39, v40, 1, v37);

      sub_267EF5958();
      OUTLINED_FUNCTION_5_1(v13, 1, v37);
      if (v66)
      {
        v54 = OUTLINED_FUNCTION_70_14();
        v55(v54);
        sub_267B9F98C(v13, &qword_28022BCD8, &unk_267F0ECC0);
        sub_267EF5908();
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
        v4 = v29;
      }

      else
      {
        sub_267EF5918();
        v60 = OUTLINED_FUNCTION_70_14();
        v61(v60);
        OUTLINED_FUNCTION_5_0();
        (*(v62 + 8))(v13, v37);
        sub_267EF5908();
        v48 = 1;
        v63 = OUTLINED_FUNCTION_46_24();
        OUTLINED_FUNCTION_5_1(v63, v64, v65);
        v4 = v29;
        if (!v66)
        {
          goto LABEL_17;
        }
      }

      v48 = 0;
LABEL_17:
      sub_267B9F98C(v74, &qword_28022BCE0, &qword_267F08758);
      v5 = v28;
      v25 = v72;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v19);
    sub_267B9F98C(v0, &qword_28022BCE8, &qword_267F08760);
    OUTLINED_FUNCTION_80_13();
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v5);
      sub_267B9F98C(v4, &qword_280229798, &unk_267EFE4D0);
      __swift_destroy_boxed_opaque_existential_0(v76);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v5);
    (*v68)(v69, v4, v5);
    sub_267EC0B90();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_37_1();
    v50(v49);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v76);
    if (v48)
    {
      goto LABEL_20;
    }

LABEL_19:
    v27 += 40;
    ++v26;
  }

  __break(1u);
}

uint64_t sub_267EC10F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267EFCC90;
  if (qword_280228830 != -1)
  {
    swift_once();
  }

  v1 = qword_280240FE8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(v0 + 56) = v2;
  v3 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280228838;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280240FF0;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  sub_267EF54C8();
  swift_allocObject();

  result = sub_267EF54A8();
  qword_280240FE0 = result;
  return result;
}

uint64_t sub_267EC125C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  v1 = OUTLINED_FUNCTION_20_36();
  v2 = OUTLINED_FUNCTION_57_19(v1);
  result = OUTLINED_FUNCTION_81_12(v2, v3);
  qword_280240FE8 = result;
  return result;
}

uint64_t sub_267EC12A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  v1 = OUTLINED_FUNCTION_20_36();
  OUTLINED_FUNCTION_57_19(v1);
  result = sub_267EF5638();
  qword_280240FF0 = result;
  return result;
}

uint64_t sub_267EC12F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A168, &qword_267F004E8);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280240FF8 = result;
  return result;
}

uint64_t sub_267EC1350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241000 = result;
  return result;
}

uint64_t sub_267EC13AC()
{
  v0 = sub_267EF5628();
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5618();
  qword_280241008 = result;
  return result;
}

uint64_t sub_267EC13F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_10_50();
  result = sub_267EF5638();
  qword_280241010 = result;
  return result;
}

uint64_t sub_267EC1450()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D188, &unk_267F0EC70);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_10_50();
  result = sub_267EF5638();
  qword_280241018 = result;
  return result;
}

uint64_t sub_267EC14A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  v1 = OUTLINED_FUNCTION_10_50();
  result = OUTLINED_FUNCTION_81_12(v1, v2 & 0xFFFFFFFF0000FFFFLL | 0x64490000);
  qword_280241020 = result;
  return result;
}

uint64_t sub_267EC14F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241028 = result;
  return result;
}

uint64_t sub_267EC1554()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241030 = result;
  return result;
}

uint64_t sub_267EC15B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = OUTLINED_FUNCTION_81_12(0x6464416C69616D65, 1936942450);
  qword_280241038 = result;
  return result;
}

uint64_t sub_267EC1614()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241040 = result;
  return result;
}

uint64_t sub_267EC1678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D198, &qword_267F0EC80);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241048 = result;
  return result;
}

uint64_t sub_267EC16E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267F0E130;
  if (qword_280228850 != -1)
  {
    OUTLINED_FUNCTION_23_34();
    swift_once();
  }

  v1 = qword_280241008;
  v2 = sub_267EF5628();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_280228858;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280241010;
  v6 = OUTLINED_FUNCTION_37_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  *(v0 + 96) = v8;
  v9 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 104) = v9;
  *(v0 + 72) = v5;
  v10 = qword_280228860;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_22_39();
    swift_once();
  }

  v11 = qword_280241018;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D188, &unk_267F0EC70);
  *(v0 + 144) = sub_267C586C4(&qword_28022D190, &qword_28022D188, &unk_267F0EC70);
  *(v0 + 112) = v11;
  v12 = qword_280228868;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_280241020;
  *(v0 + 176) = v8;
  *(v0 + 184) = v9;
  *(v0 + 152) = v13;
  v14 = qword_280228870;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280241028;
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229760, &unk_267F004C0);
  *(v0 + 224) = sub_267C586C4(&qword_280229768, &qword_280229760, &unk_267F004C0);
  *(v0 + 192) = v15;
  v16 = qword_280228878;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_30_39(&qword_280228878);
  }

  v17 = qword_280241030;
  *(v0 + 256) = v8;
  *(v0 + 264) = v9;
  *(v0 + 232) = v17;
  v18 = qword_280228880;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280241038;
  *(v0 + 296) = v8;
  *(v0 + 304) = v9;
  *(v0 + 272) = v19;
  v20 = qword_280228888;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280241040;
  *(v0 + 336) = v8;
  *(v0 + 344) = v9;
  *(v0 + 312) = v21;
  v22 = qword_280228890;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_280241048;
  v24 = OUTLINED_FUNCTION_54_0();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  *(v0 + 384) = OUTLINED_FUNCTION_58_19(&qword_28022D1A0);
  *(v0 + 352) = v23;
  v26 = sub_267EF54C8();
  OUTLINED_FUNCTION_97(v26);

  OUTLINED_FUNCTION_10_50();
  OUTLINED_FUNCTION_37_25();
  result = sub_267EF54A8();
  qword_280241050 = result;
  return result;
}

uint64_t sub_267EC1A94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A158, &qword_267F004E0);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241058 = result;
  return result;
}

uint64_t sub_267EC1AF8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241060 = result;
  return result;
}

uint64_t sub_267EC1B54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  result = sub_267EF5638();
  qword_280241068 = result;
  return result;
}

uint64_t sub_267EC1BBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1A8, &unk_267F0EC88);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241070 = result;
  return result;
}

uint64_t sub_267EC1C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267EFCE30;
  if (qword_2802288B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280241068;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  *(v0 + 56) = v2;
  v3 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802288A8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280241060;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_2802288B8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280241070;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1A8, &unk_267F0EC88);
  *(v0 + 144) = sub_267C586C4(&qword_28022D1B0, &qword_28022D1A8, &unk_267F0EC88);
  *(v0 + 112) = v7;
  sub_267EF54C8();
  swift_allocObject();

  result = sub_267EF54A8();
  qword_280241078 = result;
  return result;
}

uint64_t sub_267EC1E08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF20, &qword_267F004D0);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241080 = result;
  return result;
}

uint64_t sub_267EC1E6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_280241088 = result;
  return result;
}

uint64_t sub_267EC1EC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF00, &unk_267EFE460);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241090 = result;
  return result;
}

uint64_t sub_267EC1F28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D168, &qword_267F0EC48);
  swift_allocObject();
  result = sub_267EF5638();
  qword_280241098 = result;
  return result;
}

uint64_t sub_267EC1F8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CF10, &unk_267F0EC50);
  OUTLINED_FUNCTION_97(v0);
  v1 = OUTLINED_FUNCTION_20_36();
  result = OUTLINED_FUNCTION_81_12(v1 | 0x7265666552730000, 1701015141);
  qword_2802410A0 = result;
  return result;
}

uint64_t sub_267EC1FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D178, &unk_267F0EC60);
  swift_allocObject();
  result = sub_267EF5638();
  qword_2802410A8 = result;
  return result;
}

uint64_t sub_267EC2054()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A148, &qword_267F004D8);
  OUTLINED_FUNCTION_97(v0);
  OUTLINED_FUNCTION_20_36();
  result = sub_267EF5638();
  qword_2802410B0 = result;
  return result;
}

uint64_t sub_267EC20AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229750, &unk_267F01E00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_267F0EB80;
  if (qword_2802288C0 != -1)
  {
    swift_once();
  }

  v1 = qword_280241078;
  v2 = sub_267EF54C8();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_2802288A0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_280241058;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A158, &qword_267F004E0);
  *(v0 + 104) = sub_267C586C4(&qword_28022A160, &qword_28022A158, &qword_267F004E0);
  *(v0 + 72) = v5;
  v6 = qword_280228898;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_36_27(&qword_280228898);
  }

  v7 = qword_280241050;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;
  v8 = qword_280228828;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_280240FE0;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 152) = v9;
  v10 = qword_2802288C8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280241080;
  v12 = OUTLINED_FUNCTION_54_0();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  *(v0 + 224) = OUTLINED_FUNCTION_58_19(&qword_28022A130);
  *(v0 + 192) = v11;
  v14 = qword_2802288D0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_280241088;
  v16 = OUTLINED_FUNCTION_37_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  *(v0 + 256) = v18;
  v19 = sub_267C586C4(&qword_280229758, &unk_28022CF00, &unk_267EFE460);
  *(v0 + 264) = v19;
  *(v0 + 232) = v15;
  v20 = qword_2802288D8;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280241090;
  *(v0 + 296) = v18;
  *(v0 + 304) = v19;
  *(v0 + 272) = v21;
  v22 = qword_280228848;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_24_44();
    swift_once();
  }

  v23 = qword_280241000;
  *(v0 + 336) = v18;
  *(v0 + 344) = v19;
  *(v0 + 312) = v23;
  v24 = qword_2802288E0;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_280241098;
  v26 = OUTLINED_FUNCTION_54_0();
  *(v0 + 376) = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  *(v0 + 384) = OUTLINED_FUNCTION_58_19(&qword_28022D170);
  *(v0 + 352) = v25;
  v28 = qword_2802288E8;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_2802410A0;
  v30 = OUTLINED_FUNCTION_54_0();
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  *(v0 + 424) = OUTLINED_FUNCTION_58_19(&qword_28022CF18);
  *(v0 + 392) = v29;
  v32 = qword_2802288F8;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_6_37(&qword_2802288F8);
  }

  v33 = qword_2802410B0;
  v34 = OUTLINED_FUNCTION_54_0();
  *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
  *(v0 + 464) = OUTLINED_FUNCTION_58_19(&qword_28022A150);
  *(v0 + 432) = v33;
  v36 = qword_2802288F0;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_32_24(&qword_2802288F0);
  }

  v37 = qword_2802410A8;
  v38 = OUTLINED_FUNCTION_54_0();
  *(v0 + 496) = __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
  *(v0 + 504) = OUTLINED_FUNCTION_58_19(&qword_28022D180);
  *(v0 + 472) = v37;
  v40 = qword_280228840;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_31_32(&qword_280228840);
  }

  v41 = qword_280240FF8;
  v42 = OUTLINED_FUNCTION_54_0();
  *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  *(v0 + 544) = OUTLINED_FUNCTION_58_19(&qword_28022A170);
  *(v0 + 512) = v41;
  v44 = sub_267EF5598();
  OUTLINED_FUNCTION_97(v44);

  result = sub_267EF5588();
  qword_2802410B8 = result;
  return result;
}

void sub_267EC25F8()
{
  OUTLINED_FUNCTION_48_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1D8, &qword_267F0ECD0);
  OUTLINED_FUNCTION_18(v0);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_105();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1E0, &qword_267F0ECD8);
  OUTLINED_FUNCTION_18(v2);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_105();
  v4 = sub_267EF6718();
  __swift_allocate_value_buffer(v4, qword_2802410C0);
  __swift_project_value_buffer(v4, qword_2802410C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1E8, &unk_267F0ECE0);
  v5 = swift_allocObject();
  v6 = OUTLINED_FUNCTION_26_37(v5, xmmword_267EFC020);
  v7 = OUTLINED_FUNCTION_26_37(v6, xmmword_267EFC020);
  v8 = OUTLINED_FUNCTION_26_37(v7, xmmword_267EFC020);
  v9 = OUTLINED_FUNCTION_26_37(v8, xmmword_267EFC020);
  *(v9 + 16) = xmmword_267EFC020;
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_280228900);
  }

  sub_267EF54B8();

  v10 = sub_267EF5B58();
  v11 = MEMORY[0x277D5E728];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_0((v9 + 32));
  OUTLINED_FUNCTION_439();
  sub_267EF5B48();
  v8[3].n128_u64[1] = v10;
  v8[4].n128_u64[0] = v11;
  __swift_allocate_boxed_opaque_existential_0(&v8[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v7[3].n128_u64[1] = v10;
  v7[4].n128_u64[0] = v11;
  __swift_allocate_boxed_opaque_existential_0(&v7[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v6[3].n128_u64[1] = v10;
  v6[4].n128_u64[0] = v11;
  __swift_allocate_boxed_opaque_existential_0(&v6[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v5[3].n128_u64[1] = v10;
  v5[4].n128_u64[0] = v11;
  __swift_allocate_boxed_opaque_existential_0(&v5[2]);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  v20[3] = v10;
  v20[4] = v11;
  __swift_allocate_boxed_opaque_existential_0(v20);
  OUTLINED_FUNCTION_53_22();
  sub_267EF5B48();
  sub_267EF66A8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_267EF5BD8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_267EF6708();
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC2958()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (!v4)
  {
    sub_267D6D160(v1);
    OUTLINED_FUNCTION_11_1();
    if (v4)
    {
      v7 = v6 == 0xE400000000000000;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_81_0(v5, v0);
    OUTLINED_FUNCTION_79_14();
  }

  v2 = OUTLINED_FUNCTION_6_61();
  if (v4)
  {
    return 0;
  }

  sub_267D6D160(v2);
  OUTLINED_FUNCTION_37_21();
  if (v8)
  {
    v11 = v10 == 0xE400000000000000;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    OUTLINED_FUNCTION_81_0(v9, v0);
    OUTLINED_FUNCTION_20_19();
    return 0;
  }

LABEL_16:

  return 1;
}

uint64_t sub_267EC2A10()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (v3)
  {
    return 0;
  }

  sub_267D6D160(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v6 = v5 == 0xE400000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v4, v0);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2A80()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (v3)
  {
    return 0;
  }

  sub_267D6D160(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v6 = v5 == 0xE400000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v4, v0);
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

uint64_t sub_267EC2AF0()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE500000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2B64()
{
  v1 = sub_267EC4C40();
  if (v1 == 8)
  {
    return 0;
  }

  sub_267BB9308(v1);
  OUTLINED_FUNCTION_37_21();
  v5 = v5 && v4 == 0xE400000000000000;
  if (v5)
  {
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v3, v0);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2BDC()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE700000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_79_11(v5, v6);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2C4C()
{
  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (v3)
  {
    return 0;
  }

  sub_267D6C0D4(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v6 = v5 == 0xE400000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v4, v0);
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

BOOL sub_267EC2CC0()
{
  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (v5)
  {
    return 0;
  }

  v1 = v0;
  v2 = OUTLINED_FUNCTION_6_61();
  if (v5)
  {
    return 0;
  }

  v3 = sub_267D6D160(v2);
  v5 = v3 == 1684104562 && v4 == 0xE400000000000000;
  if (v5)
  {
  }

  else
  {
    v6 = OUTLINED_FUNCTION_81_0(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = sub_267D2F790(&unk_2878CA3C0);
  v8 = sub_267EE9454(v1, v7);

  return v8;
}

uint64_t sub_267EC2D80()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE500000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_439();
    sub_267EF9EA8();
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

uint64_t sub_267EC2DF4()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0(v5, v6);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2E60()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0(v5, v6);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2ECC()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (v3)
  {
    return 0;
  }

  sub_267D6D160(v1);
  OUTLINED_FUNCTION_37_21();
  if (v3)
  {
    v6 = v5 == 0xE400000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
  }

  else
  {
    OUTLINED_FUNCTION_81_0(v4, v0);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC2F3C()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0(v5, v6);
    OUTLINED_FUNCTION_20_19();
    return 0;
  }
}

uint64_t sub_267EC2FA8()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE600000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_63_0(v5, v6);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

uint64_t sub_267EC3014()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    return 0;
  }

  sub_267D6D160(v0);
  OUTLINED_FUNCTION_37_21();
  if (v2)
  {
    v4 = v3 == 0xE700000000000000;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_439();
    OUTLINED_FUNCTION_79_11(v5, v6);
    OUTLINED_FUNCTION_20_19();
  }

  return 1;
}

BOOL sub_267EC3084()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (v2)
  {
    if (sub_267EC3A10())
    {
      v3 = 1;
    }

    else
    {
      v5 = sub_267EC4D94();
      sub_267DEAC8C(v5, v6);
      OUTLINED_FUNCTION_20_19();
      v3 = v0 ^ 1;
    }

    return v3 & 1;
  }

  else
  {

    return sub_267E58CE8(v1, &unk_2878CA3E8);
  }
}

uint64_t sub_267EC30F4()
{
  v0 = OUTLINED_FUNCTION_6_61();
  if (v1)
  {
    return sub_267EC4360() != 35;
  }

  if (sub_267E58CE8(v0, &unk_2878CA4E8))
  {
    return 1;
  }

  return sub_267EC3150();
}

uint64_t sub_267EC3150()
{
  v1 = OUTLINED_FUNCTION_6_61();
  if (v4)
  {
    return 0;
  }

  sub_267D6D160(v1);
  OUTLINED_FUNCTION_11_1();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_63_0(v2, v0);
    OUTLINED_FUNCTION_79_14();
  }

  v5 = sub_267EC4D6C();
  if (v5 == 6)
  {
    goto LABEL_17;
  }

  sub_267D6CE3C(v5);
  if (v6 == 0x746361746E6F63 && v7 == 0xE700000000000000)
  {
  }

  else
  {
    v9 = OUTLINED_FUNCTION_79_11(v6, v7);

    if ((v9 & 1) == 0)
    {
LABEL_17:
      v11 = sub_267EC4D6C();
      if (v11 == 6)
      {
        return 0;
      }

      sub_267D6CE3C(v11);
      OUTLINED_FUNCTION_37_21();
      if (!v4 || v13 != 0xE700000000000000)
      {
        OUTLINED_FUNCTION_439();
        OUTLINED_FUNCTION_79_11(v15, v16);
        OUTLINED_FUNCTION_20_19();
        return 1;
      }

      goto LABEL_31;
    }
  }

  v10 = sub_267EC4360();
  if (v10 == 35)
  {
    goto LABEL_17;
  }

  sub_267D6C8B0(v10);
  if (v17 != 0x746361746E6F63 || v18 != 0xE700000000000000)
  {
    v20 = OUTLINED_FUNCTION_79_11(v17, v18);

    if (v20)
    {
      return 1;
    }

    goto LABEL_17;
  }

LABEL_31:

  return 1;
}

uint64_t sub_267EC3318(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v7);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_26();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_68_2();
  v38 = v4;
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v15, v16, &unk_267F0EBC8);
  sub_267EF5B18();
  v17 = sub_267EF5A88();
  v18 = OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_5_1(v18, v19, v17);
  if (v26)
  {
    v20 = &qword_28022BCE8;
    v21 = &qword_267F08760;
    v22 = v5;
LABEL_12:
    sub_267B9F98C(v22, v20, v21);
    v34 = 0;
    return v34 & 1;
  }

  v23 = sub_267EF5A78();
  OUTLINED_FUNCTION_5_0();
  (*(v24 + 8))(v5, v17);
  sub_267C8F714(v23, v12);

  v25 = sub_267EF5958();
  OUTLINED_FUNCTION_5_1(v12, 1, v25);
  if (v26)
  {
    v20 = &qword_28022BCD8;
    v21 = &unk_267F0ECC0;
    v22 = v12;
    goto LABEL_12;
  }

  sub_267EF58F8();
  OUTLINED_FUNCTION_5_0();
  v27 = OUTLINED_FUNCTION_54_0();
  v28(v27);
  v29 = sub_267EF58E8();
  v30 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v30, v31, v29);
  if (v32)
  {
    v20 = &qword_28022BCD0;
    v21 = &qword_267F08750;
    v22 = v3;
    goto LABEL_12;
  }

  v34 = sub_267EF58D8();
  OUTLINED_FUNCTION_5_0();
  v35 = OUTLINED_FUNCTION_26_0();
  v36(v35);
  return v34 & 1;
}

void sub_267EC35E8()
{
  OUTLINED_FUNCTION_48_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_26();
  v6 = sub_267EF58E8();
  OUTLINED_FUNCTION_58();
  v38 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = sub_267EF5958();
  OUTLINED_FUNCTION_58();
  v39 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_75_12();
  *v40 = v0;
  if (qword_2802288F8 != -1)
  {
    OUTLINED_FUNCTION_6_37(&qword_2802288F8);
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v20, v21, &unk_267F0EBC8);
  sub_267EF5B18();
  v22 = sub_267EF5A88();
  v23 = OUTLINED_FUNCTION_46_24();
  OUTLINED_FUNCTION_5_1(v23, v24, v22);
  if (v30)
  {
    sub_267B9F98C(v12, &qword_28022BCE8, &qword_267F08760);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v17);
LABEL_8:
    sub_267B9F98C(v16, &qword_28022BCD8, &unk_267F0ECC0);
    goto LABEL_13;
  }

  v28 = sub_267EF5A78();
  OUTLINED_FUNCTION_5_0();
  (*(v29 + 8))(v12, v22);
  sub_267C8F714(v28, v16);

  OUTLINED_FUNCTION_8_7(v16);
  if (v30)
  {
    goto LABEL_8;
  }

  v31 = v39;
  (*(v39 + 32))(v3, v16, v17);
  sub_267EF58F8();
  v32 = OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_5_1(v32, v33, v6);
  if (v34)
  {
    sub_267B9F98C(v1, &qword_28022BCD0, &qword_267F08750);
    v35 = sub_267EF58A8();
    strcpy(v40, "StatParserVerb");
    v41 = -18;
    MEMORY[0x28223BE20](v35);
    OUTLINED_FUNCTION_54_16();
    sub_267BC2B54();
  }

  else
  {
    v36 = v38;
    (*(v38 + 32))(v2, v1, v6);
    sub_267EF58D8();
    (*(v36 + 8))(v2, v6);
  }

  (*(v31 + 8))(v3, v17);
LABEL_13:
  OUTLINED_FUNCTION_47();
}

BOOL sub_267EC3A10()
{
  if (sub_267EC3AC4() || sub_267EC3A78())
  {
    return 1;
  }

  v1 = sub_267EC4D20();
  if (v2)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3;
  }

  return v5 != 0;
}

BOOL sub_267EC3AE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_68_2();
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v7, v8, &unk_267F0EBC8);
  OUTLINED_FUNCTION_54_0();
  sub_267EF5B08();
  v9 = sub_267EF5B58();
  v10 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v10, v11, v9);
  if (v12)
  {
    sub_267B9F98C(v3, &qword_280229798, &unk_267EFE4D0);
    return 0;
  }

  else
  {
    v13 = sub_267EF5B38();
    OUTLINED_FUNCTION_5_0();
    v14 = OUTLINED_FUNCTION_26_0();
    v15(v14);
    v16 = *(v13 + 16);

    return v16 != 0;
  }
}

uint64_t sub_267EC3C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EC4C40();
  if (v2 > 5u)
  {
    v3 = MEMORY[0x277D5B960];
  }

  else
  {
    v3 = qword_279C2E5E8[v2];
  }

  v4 = *v3;
  sub_267EF3868();
  OUTLINED_FUNCTION_22();
  v7 = *(v6 + 104);

  return v7(a1, v4, v5);
}

void sub_267EC3D08()
{
  OUTLINED_FUNCTION_48_0();
  v38 = sub_267EF5818();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52_0();
  if (qword_280228878 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    type metadata accessor for SmsNLv3Intent(0);
    OUTLINED_FUNCTION_0_79();
    sub_267EC80E8(v12, v13, &unk_267F0EBC8);
    sub_267EF5B18();
    v14 = sub_267EF5A88();
    OUTLINED_FUNCTION_5_1(v1, 1, v14);
    if (v21)
    {
      v15 = &qword_28022BCE8;
      v16 = &qword_267F08760;
      v17 = v1;
      goto LABEL_8;
    }

    v18 = sub_267EF5A78();
    OUTLINED_FUNCTION_5_0();
    (*(v19 + 8))(v1, v14);
    sub_267C8F714(v18, v0);

    v20 = sub_267EF5958();
    OUTLINED_FUNCTION_5_1(v0, 1, v20);
    if (v21)
    {
      break;
    }

    v22 = sub_267EF58A8();
    OUTLINED_FUNCTION_5_0();
    (*(v23 + 8))(v0, v20);
    v24 = *(v22 + 16);
    v25 = (v3 + 104);
    v35 = *MEMORY[0x277D5E518];
    v37 = v22;
    v26 = (v22 + 40);
    v36 = -v24;
    v1 = -1;
    while (1)
    {
      if (v36 + v1 == -1)
      {
        goto LABEL_20;
      }

      if (++v1 >= *(v37 + 16))
      {
        break;
      }

      v27 = *(v26 - 1);
      v3 = *v26;
      v0 = v38;
      (*v25)(v7, v35, v38);

      v28 = sub_267EF5808();
      v30 = v29;
      v31 = OUTLINED_FUNCTION_37_1();
      v32(v31);
      if (v27 == v28 && v3 == v30)
      {

LABEL_20:

        goto LABEL_9;
      }

      v26 += 2;
      v34 = sub_267EF9EA8();

      if (v34)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    OUTLINED_FUNCTION_30_39(&qword_280228878);
  }

  v15 = &qword_28022BCD8;
  v16 = &unk_267F0ECC0;
  v17 = v0;
LABEL_8:
  sub_267B9F98C(v17, v15, v16);
LABEL_9:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC40A8()
{
  v1 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  sub_267EF6718();
  OUTLINED_FUNCTION_22();
  (*(v9 + 16))(v7, v0 + v8);
  (*(v3 + 104))(v7, *MEMORY[0x277D5C128], v1);
  return sub_267EF4B98();
}

uint64_t sub_267EC41AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  v9 = sub_267EF6718();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v2 + v8, a1, v9);
  v16[1] = v2;
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_280228900);
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v11, v12, &unk_267F0EBC8);
  sub_267EF5B08();
  (*(v10 + 8))(a1, v9);
  v13 = sub_267EF5B58();
  OUTLINED_FUNCTION_5_1(v7, 1, v13);
  if (v14)
  {

    v2 = 0;
  }

  sub_267B9F98C(v7, &qword_280229798, &unk_267EFE4D0);
  return v2;
}

uint64_t sub_267EC43D0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v3, v4, &unk_267F0EBC8);
  OUTLINED_FUNCTION_26_0();
  sub_267EF5B28();
  return v6;
}

void sub_267EC4468()
{
  OUTLINED_FUNCTION_48_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1B8, &qword_267F0EC98);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105();
  v94 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1C0, &unk_267F0ECA0);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_34_32();
  sub_267EF5888();
  OUTLINED_FUNCTION_58();
  v93 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v13);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v14);
  v16 = (&v86 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_26();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_68_2();
  v21 = sub_267EF5958();
  OUTLINED_FUNCTION_58();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_75_12();
  sub_267EC43AC();
  if (v25)
  {
    goto LABEL_11;
  }

  v89 = v16;
  v90 = v4;
  v87 = v3;
  v88 = v5;
  v91 = v23;
  v92 = v21;
  v95 = v1;
  if (qword_2802288A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v26, v27, &unk_267F0EBC8);
  sub_267EF5B18();
  v28 = sub_267EF5A88();
  v29 = OUTLINED_FUNCTION_38_29();
  OUTLINED_FUNCTION_5_1(v29, v30, v28);
  if (v39)
  {
    sub_267B9F98C(v2, &qword_28022BCE8, &qword_267F08760);
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v92);
LABEL_9:
    v40 = &qword_28022BCD8;
    v41 = &unk_267F0ECC0;
    v42 = v0;
LABEL_10:
    sub_267B9F98C(v42, v40, v41);
    goto LABEL_11;
  }

  v34 = sub_267EF5A78();
  sub_267C8F714(v34, v0);

  OUTLINED_FUNCTION_5_0();
  (*(v35 + 8))(v2, v28);
  v36 = OUTLINED_FUNCTION_13_7();
  v37 = v92;
  OUTLINED_FUNCTION_5_1(v36, v38, v92);
  if (v39)
  {
    goto LABEL_9;
  }

  v44 = v90;
  v43 = v91;
  (*(v91 + 32))(v90, v0, v37);
  v45 = v89;
  sub_267EF5918();
  v46 = sub_267EF5908();
  OUTLINED_FUNCTION_8_7(v45);
  if (v47)
  {
    (*(v43 + 8))(v44, v37);
    v40 = &qword_28022BCE0;
    v41 = &qword_267F08758;
    v42 = v45;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23();
  v50 = v49;
  if ((*(v48 + 88))(v45, v46) != *MEMORY[0x277D5E5C8])
  {
    (*(v43 + 8))(v44, v37);
    (*(v50 + 8))(v45, v46);
    goto LABEL_11;
  }

  (*(v50 + 96))(v45, v46);
  v51 = *v45;
  v52 = v45[1];
  v53 = v94;
  sub_267EF5948();
  sub_267EF5938();
  OUTLINED_FUNCTION_8_7(v53);
  if (v39)
  {
    v54 = OUTLINED_FUNCTION_29_34();
    v55(v54);

    sub_267B9F98C(v53, &qword_28022D1B8, &qword_267F0EC98);
    sub_267EF5898();
    v60 = v88;
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
LABEL_23:
    v40 = &qword_28022D1C0;
    v41 = &unk_267F0ECA0;
    v42 = v60;
    goto LABEL_10;
  }

  v60 = v88;
  sub_267EF5928();
  OUTLINED_FUNCTION_5_0();
  v61 = OUTLINED_FUNCTION_66();
  v62(v61);
  v63 = sub_267EF5898();
  OUTLINED_FUNCTION_8_7(v60);
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_29_34();
    v66(v65);

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23();
  v69 = v68;
  if ((*(v67 + 88))(v60, v63) == *MEMORY[0x277D5E588])
  {
    (*(v69 + 96))(v60, v63);
    v70 = v87;
    v71 = OUTLINED_FUNCTION_91_1();
    v72(v71);
    v73 = sub_267EF5858();
    v95 = 0xD000000000000010;
    v96 = 0x8000000267F1D6C0;
    MEMORY[0x28223BE20](v73);
    OUTLINED_FUNCTION_54_16();
    sub_267BC2B54();
    OUTLINED_FUNCTION_20_19();
    if (v70)
    {
      if (sub_267EF9228())
      {
        v74 = sub_267EF9138();
        v75 = sub_267BB9258(v74, v51, v52);
        MEMORY[0x26D608DB0](v75);
      }

      v76 = OUTLINED_FUNCTION_71_11();
      v77(v76);
      v78 = OUTLINED_FUNCTION_52_20();
      v79(v78);
    }

    else
    {

      v82 = OUTLINED_FUNCTION_91_1();
      v83(v82);
      v84 = OUTLINED_FUNCTION_52_20();
      v85(v84);
    }
  }

  else
  {
    v80 = OUTLINED_FUNCTION_29_34();
    v81(v80);

    (*(v69 + 8))(v60, v63);
  }

LABEL_11:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC4C64(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v3, v4, &unk_267F0EBC8);
  OUTLINED_FUNCTION_26_0();
  sub_267EF5B28();
  return v6;
}

void sub_267EC4E04()
{
  OUTLINED_FUNCTION_48_0();
  v1 = type metadata accessor for SmsContactIntentNode(0);
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v25 = v5;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v30 = v0;
  if (qword_280228898 != -1)
  {
LABEL_28:
    OUTLINED_FUNCTION_36_27(&qword_280228898);
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v9, v10, &unk_267F0EBC8);
  OUTLINED_FUNCTION_4_73();
  sub_267EC80E8(v11, v12, &unk_267F07AE0);
  v27 = v1;
  v13 = sub_267EF5AF8();
  v14 = 0;
  v28 = *(v13 + 16);
  v26 = MEMORY[0x277D84F90];
  while (v28 != v14)
  {
    if (v14 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v1 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = *(v3 + 72);
    sub_267DA6FC0(v13 + v1 + v15 * v14, v8);
    if (qword_280228860 != -1)
    {
      OUTLINED_FUNCTION_22_39();
      swift_once();
    }

    OUTLINED_FUNCTION_4_73();
    sub_267EC80E8(&qword_2802297A0, v16, &unk_267F07B20);
    sub_267EF5B28();
    v17 = 0xE200000000000000;
    v18 = 28532;
    switch(v29)
    {
      case 0:
        goto LABEL_14;
      case 1:
        v17 = 0xE400000000000000;
        v18 = 1836020326;
        goto LABEL_14;
      case 2:
        v17 = 0xE700000000000000;
        v18 = 0x6563616C706572;
        goto LABEL_14;
      case 3:
        v17 = 0xE600000000000000;
        v18 = 0x65766F6D6572;
        goto LABEL_14;
      case 4:
        v17 = 0xE600000000000000;
        v18 = 0x65726F6E6769;
        goto LABEL_14;
      case 5:
        v17 = 0xE300000000000000;
        v18 = 7301239;
        goto LABEL_14;
      case 6:
        v17 = 0xE400000000000000;
        v18 = 1953391987;
LABEL_14:
        if (v18 == 28532 && v17 == 0xE200000000000000)
        {
        }

        else
        {
          v20 = sub_267EF9EA8();

          if ((v20 & 1) == 0)
          {
LABEL_19:
            sub_267DA7088(v8);
            ++v14;
            continue;
          }
        }

        sub_267DA7024(v8, v25);
        v21 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_267C7235C(0, *(v21 + 16) + 1, 1);
          v21 = v30;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_267C7235C(v23 > 1, v24 + 1, 1);
          v21 = v30;
        }

        ++v14;
        *(v21 + 16) = v24 + 1;
        v26 = v21;
        sub_267DA7024(v25, v21 + v1 + v24 * v15);
        break;
      default:
        goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_47();
}

void sub_267EC525C()
{
  OUTLINED_FUNCTION_48_0();
  v137 = sub_267EF59A8();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6();
  v136 = v5;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_36_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  v12 = OUTLINED_FUNCTION_18(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v131 - v16;
  v18 = sub_267EF5B58();
  OUTLINED_FUNCTION_58();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v134 = v22;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_45_0();
  v150 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  v26 = OUTLINED_FUNCTION_18(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6();
  v148 = v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v30);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_105();
  v156 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v33);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_26();
  v158 = sub_267EF5A88();
  OUTLINED_FUNCTION_58();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_0_0();
  v160 = v39 - v38;
  v139 = type metadata accessor for SmsContactIntentNode(0);
  OUTLINED_FUNCTION_58();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_0_0();
  v45 = v44 - v43;
  sub_267EC4E04();
  OUTLINED_FUNCTION_51_8();
  v144 = v46;
  if (!v46)
  {
    goto LABEL_49;
  }

  v143 = v0 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v151 = v20 + 8;
  v152 = (v20 + 32);
  v47 = 0;
  v154 = (v36 + 8);
  v155 = (v36 + 32);
  v133 = (v3 + 32);
  v140 = MEMORY[0x277D84F90];
  v132 = (v3 + 8);
  v153 = v18;
  OUTLINED_FUNCTION_69_14();
  v138 = v15;
  v149 = v17;
  v142 = v41;
  v145 = v45;
  v141 = v0;
  while (2)
  {
    if (v47 >= *(v0 + 16))
    {
LABEL_51:
      __break(1u);
      return;
    }

    sub_267DA6FC0(v143 + *(v41 + 72) * v47, v45);
    v147 = v47 + 1;
    v48 = sub_267EF5B38();
    v49 = 0;
    v159 = *(v48 + 16);
    v50 = v48 + 32;
    v51 = v158;
    v157 = v48;
    while (1)
    {
      if (v159 == v49)
      {

        v45 = v145;
        sub_267DA7088(v145);
LABEL_36:
        v41 = v142;
        v0 = v141;
        goto LABEL_37;
      }

      if (v49 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_267B9AFEC(v50, v161);
      OUTLINED_FUNCTION_80_13();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
      if (swift_dynamicCast())
      {
        break;
      }

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v61, v62, v63, v51);
      sub_267B9F98C(v1, &qword_28022BCE8, &qword_267F08760);
      OUTLINED_FUNCTION_80_13();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v18);
        v67 = (*v152)(v150, v17, v18);
        v68 = sub_267EC0AC4(v67);
        v69 = OUTLINED_FUNCTION_77_9();
        v70(v69);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v18);
      sub_267B9F98C(v17, &qword_280229798, &unk_267EFE4D0);
LABEL_23:
      __swift_destroy_boxed_opaque_existential_0(v161);
LABEL_24:
      v50 += 40;
      ++v49;
    }

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    v55 = v160;
    (*v155)(v160, v1, v51);
    sub_267EF5A78();
    OUTLINED_FUNCTION_51_8();
    if (v56)
    {
      v57 = v56 - 1;
      v58 = sub_267EF5958();
      OUTLINED_FUNCTION_22();
      v60 = v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57;
      v51 = v158;
      (*(v59 + 16))(v3, v60, v58);
    }

    else
    {
      v58 = sub_267EF5958();
    }

    OUTLINED_FUNCTION_37_25();
    __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
    v78 = v1;

    sub_267EF5958();
    OUTLINED_FUNCTION_8_7(v3);
    if (v89)
    {
      (*v154)(v160, v51);
      sub_267B9F98C(v3, &qword_28022BCD8, &unk_267F0ECC0);
      sub_267EF5908();
      v83 = v156;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
LABEL_22:
      sub_267B9F98C(v83, &qword_28022BCE0, &qword_267F08758);
      v1 = v78;
      v48 = v157;
      goto LABEL_23;
    }

    v83 = v156;
    sub_267EF5918();
    OUTLINED_FUNCTION_23();
    v17 = v84;
    v18 = *(v85 + 8);
    v51 = v85 + 8;
    v18(v3, v58);
    sub_267EF5908();
    v86 = OUTLINED_FUNCTION_38_29();
    OUTLINED_FUNCTION_5_1(v86, v87, v88);
    if (v89)
    {
      v90 = OUTLINED_FUNCTION_9_58();
      v91(v90);
      OUTLINED_FUNCTION_51_22();
      goto LABEL_22;
    }

    sub_267B9F98C(v83, &qword_28022BCE0, &qword_267F08758);
    v92 = v160;
    sub_267EF5A78();
    OUTLINED_FUNCTION_51_8();
    if (v93)
    {
      v94 = *(v17 + 2);
      v17 += 16;
      v3 = v148;
      v94(v148, v92 + ((v17[64] + 32) & ~v17[64]) + *(v17 + 7) * (v93 - 1), v58);
    }

    else
    {
      v3 = v148;
    }

    v1 = v78;
    OUTLINED_FUNCTION_37_25();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);

    OUTLINED_FUNCTION_8_7(v3);
    v48 = v157;
    if (v89)
    {
      v99 = OUTLINED_FUNCTION_9_58();
      v100(v99);
      v101 = v3;
      v102 = &qword_28022BCD8;
      v103 = &unk_267F0ECC0;
LABEL_34:
      sub_267B9F98C(v101, v102, v103);
      OUTLINED_FUNCTION_51_22();
      OUTLINED_FUNCTION_69_14();
      goto LABEL_23;
    }

    v17 = v146;
    sub_267EF58F8();
    v18(v3, v58);
    v18 = sub_267EF58E8();
    OUTLINED_FUNCTION_5_1(v17, 1, v18);
    if (v104)
    {
      v105 = OUTLINED_FUNCTION_9_58();
      v106(v105);
      v101 = v17;
      v102 = &qword_28022BCD0;
      v103 = &qword_267F08750;
      goto LABEL_34;
    }

    v68 = sub_267EF58D8();
    v107 = OUTLINED_FUNCTION_9_58();
    v108(v107);
    OUTLINED_FUNCTION_5_0();
    (*(v109 + 8))(v17, v18);
    OUTLINED_FUNCTION_51_22();
    OUTLINED_FUNCTION_69_14();
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v161);
    if ((v68 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (qword_280228850 != -1)
    {
      OUTLINED_FUNCTION_23_34();
      swift_once();
    }

    OUTLINED_FUNCTION_4_73();
    sub_267EC80E8(&qword_2802297A0, v110, &unk_267F07B20);
    v111 = v138;
    v45 = v145;
    sub_267EF5B08();
    OUTLINED_FUNCTION_5_1(v111, 1, v18);
    if (v89)
    {
      sub_267DA7088(v45);
      sub_267B9F98C(v111, &qword_280229798, &unk_267EFE4D0);
      goto LABEL_36;
    }

    (*v152)(v134, v111, v18);
    v112 = v136;
    OUTLINED_FUNCTION_66();
    sub_267EF5998();
    v113 = OUTLINED_FUNCTION_77_9();
    v114(v113);
    v115 = v135;
    v116 = v137;
    (*v133)(v135, v112, v137);
    v159 = sub_267EF5D98();
    v157 = v117;
    v118 = sub_267EF5DC8();
    v120 = v119;
    v121 = v45;
    v122 = sub_267EF5DA8();
    v3 = v123;
    (*v132)(v115, v116);
    sub_267DA7088(v121);
    v124 = v140;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_267C7191C();
      v124 = v129;
    }

    v126 = *(v124 + 16);
    v0 = v141;
    if (v126 >= *(v124 + 24) >> 1)
    {
      sub_267C7191C();
      v124 = v130;
    }

    *(v124 + 16) = v126 + 1;
    v140 = v124;
    v127 = (v124 + 48 * v126);
    v128 = v157;
    v127[4] = v159;
    v127[5] = v128;
    v127[6] = v118;
    v127[7] = v120;
    v127[8] = v122;
    v127[9] = v3;
    v18 = v153;
    OUTLINED_FUNCTION_69_14();
    v41 = v142;
    v45 = v145;
LABEL_37:
    v47 = v147;
    if (v147 != v144)
    {
      continue;
    }

    break;
  }

LABEL_49:

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC5E7C()
{
  if (qword_280228840 != -1)
  {
    OUTLINED_FUNCTION_31_32(&qword_280228840);
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v0, v1, &unk_267F0EBC8);
  OUTLINED_FUNCTION_54_0();
  return sub_267EF5B28();
}

uint64_t sub_267EC5F1C()
{
  v0 = sub_267EC4D6C();
  v1 = 1;
  if (v0 == 1)
  {
    v1 = 2;
  }

  if (v0 == 6)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id sub_267EC5F4C()
{
  v0 = sub_267EC4D20();
  v2 = v1;
  if (v1)
  {
    v3 = v0;
    v4 = [objc_allocWithZone(MEMORY[0x277CD4338]) init];
    if (v4)
    {
      sub_267EC8084(v3, v2, v4);
    }

    else
    {
    }

    v2 = INIntentSlotValueTransformFromDataString();
  }

  return v2;
}

uint64_t sub_267EC5FD8()
{
  if (qword_2802288F0 != -1)
  {
    OUTLINED_FUNCTION_32_24(&qword_2802288F0);
  }

  type metadata accessor for SmsNLv3Intent(0);
  OUTLINED_FUNCTION_0_79();
  sub_267EC80E8(v0, v1, &unk_267F0EBC8);
  OUTLINED_FUNCTION_26_0();
  sub_267EF5B28();
  v2 = 0;
  if (v4 == 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_267EFCA40;
    *(v2 + 32) = [objc_opt_self() attachmentWithCurrentLocation];
  }

  return v2;
}

void sub_267EC610C()
{
  OUTLINED_FUNCTION_48_0();
  v4 = v3;
  v103 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1B8, &qword_267F0EC98);
  OUTLINED_FUNCTION_18(v6);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_26();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D1C0, &unk_267F0ECA0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_68_2();
  v111 = sub_267EF5958();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v110 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  v18 = &v97 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  v20 = OUTLINED_FUNCTION_18(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6();
  v22 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v24);
  v25 = sub_267EF5A88();
  OUTLINED_FUNCTION_58();
  v106 = v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_45_0();
  v107 = v31;
  v102 = sub_267EF89E8();
  OUTLINED_FUNCTION_58();
  v101 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  if (qword_280228820 != -1)
  {
LABEL_43:
    swift_once();
  }

  v105 = v30;
  v112 = v0;
  v34 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  v99 = v34;
  v100 = v2;
  sub_267EF89B8();
  sub_267EC7A20(v4, v18);
  v2 = sub_267EF5B58();
  OUTLINED_FUNCTION_5_1(v18, 1, v2);
  if (v46)
  {
    sub_267B9F98C(v18, &qword_280229798, &unk_267EFE4D0);
    goto LABEL_48;
  }

  v4 = sub_267EF5B38();
  OUTLINED_FUNCTION_5_0();
  (*(v35 + 8))(v18, v2);
  v0 = 0;
  v36 = v4 + 32;
  v30 = v4;
  v109 = *(v4 + 16);
  v108 = (v106 + 8);
  while (1)
  {
    if (v109 == v0)
    {
      goto LABEL_47;
    }

    if (v0 >= *(v30 + 2))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_267B9AFEC(v36, v114);
    sub_267B9AFEC(v114, &v113);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v25);
      v4 = sub_267EF5A68();
      v2 = v40;
      (*v108)(v22, v25);
    }

    else
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v25);
      sub_267B9F98C(v22, &qword_28022BCE8, &qword_267F08760);
      v4 = 0;
      v2 = 0;
    }

    if (qword_280228848 != -1)
    {
      OUTLINED_FUNCTION_24_44();
      swift_once();
    }

    v44 = sub_267EF5648();
    v18 = v45;
    if (!v2)
    {

      goto LABEL_19;
    }

    v46 = v4 == v44 && v2 == v45;
    if (v46)
    {
      break;
    }

    v4 = sub_267EF9EA8();

    if (v4)
    {
      goto LABEL_21;
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_0(v114);
    v36 += 40;
    v0 = (v0 + 1);
  }

LABEL_21:

  v47 = v104;
  sub_267B9A5E8(v114, &v115);
  v30 = v107;
  v48 = v105;
  if (!*(&v116 + 1))
  {
    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
  v49 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v47, v49 ^ 1u, 1, v25);
  v50 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_5_1(v50, v51, v25);
  v52 = v106;
  if (v46)
  {
    goto LABEL_50;
  }

  (*(v106 + 4))(v30, v47, v25);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v53 = sub_267EF8A08();
  v54 = __swift_project_value_buffer(v53, qword_280240FB0);
  v52[2](v48, v30, v25);
  v104 = v54;
  v0 = sub_267EF89F8();
  v55 = sub_267EF95D8();
  v56 = os_log_type_enabled(v0, v55);
  v98 = v25;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v115 = v58;
    *v57 = 136315138;
    sub_267EC80E8(&qword_28022D1D0, MEMORY[0x277D5E678], MEMORY[0x277D5E680]);
    v59 = sub_267EF9E58();
    v60 = v48;
    v62 = v61;
    v106 = *v108;
    v106(v60, v25);
    v63 = sub_267BA33E8(v59, v62, &v115);

    *(v57 + 4) = v63;
    _os_log_impl(&dword_267B93000, v0, v55, "#SmsNLv3Intent successfully extracted smsMessage node from NL intent: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    OUTLINED_FUNCTION_26();
    v30 = v107;
    MEMORY[0x26D60A7B0](v57, -1, -1);
  }

  else
  {

    v106 = *v108;
    v106(v48, v25);
  }

  v18 = v30;
  v4 = sub_267EF5A78();
  v2 = 0;
  v64 = *(v4 + 16);
  v25 = v11 + 16;
  v22 = v11 + 8;
  LODWORD(v109) = *MEMORY[0x277D5E588];
  while (2)
  {
    if (v64 == v2)
    {
      v82 = sub_267EF89F8();
      v83 = sub_267EF95E8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&v115 = v85;
        *v84 = 136315138;
        *(v84 + 4) = sub_267BA33E8(0xD000000000000089, 0x8000000267F1D630, &v115);
        OUTLINED_FUNCTION_13_20(&dword_267B93000, v86, v87, "Fatal error: %s");
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x26D60A7B0](v85, -1, -1);
        OUTLINED_FUNCTION_26();
      }

      while (1)
      {

        sub_267EF9C98();
        __break(1u);
LABEL_47:

LABEL_48:
        v117 = 0;
        v115 = 0u;
        v116 = 0u;
        v47 = v104;
LABEL_49:
        sub_267B9F98C(&v115, &qword_28022D1C8, &unk_267F0ECB0);
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v25);
LABEL_50:
        sub_267B9F98C(v47, &qword_28022BCE8, &qword_267F08760);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v25 = 0xD000000000000089;
        v91 = sub_267EF8A08();
        __swift_project_value_buffer(v91, qword_280240FB0);
        v82 = sub_267EF89F8();
        v92 = sub_267EF95E8();
        if (os_log_type_enabled(v82, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *&v115 = v94;
          *v93 = 136315138;
          *(v93 + 4) = sub_267BA33E8(0xD00000000000008CLL, 0x8000000267F1D570, &v115);
          OUTLINED_FUNCTION_13_20(&dword_267B93000, v95, v96, "Fatal error: %s");
          __swift_destroy_boxed_opaque_existential_0(v94);
          MEMORY[0x26D60A7B0](v94, -1, -1);
          OUTLINED_FUNCTION_26();
        }
      }
    }

    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    v18 = v110;
    (*(v11 + 16))(v110, v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v2, v111);
    sub_267EF5948();
    v65 = OUTLINED_FUNCTION_66();
    v66(v65);
    v0 = sub_267EF5938();
    OUTLINED_FUNCTION_8_7(v1);
    if (v46)
    {
      sub_267B9F98C(v1, &qword_28022D1B8, &qword_267F0EC98);
      sub_267EF5898();
      v30 = v112;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
LABEL_36:
      sub_267B9F98C(v30, &qword_28022D1C0, &unk_267F0ECA0);
LABEL_39:
      ++v2;
      continue;
    }

    break;
  }

  v30 = v112;
  sub_267EF5928();
  OUTLINED_FUNCTION_5_0();
  (*(v71 + 8))(v1, v0);
  v18 = sub_267EF5898();
  v72 = OUTLINED_FUNCTION_46_24();
  OUTLINED_FUNCTION_5_1(v72, v73, v18);
  if (v74)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_23();
  v76 = v75;
  v78 = (*(v77 + 88))(v30, v18);
  if (v78 != v109)
  {
    v79 = *(v76 + 8);
    v0 = (v76 + 8);
    v79(v30, v18);
    goto LABEL_39;
  }

  (*(v76 + 96))(v30, v18);
  sub_267EF5888();
  OUTLINED_FUNCTION_22();
  (*(v80 + 32))(v103, v30);
  sub_267EF9688();
  v81 = v100;
  sub_267EF89B8();
  v106(v107, v98);
  (*(v101 + 8))(v81, v102);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EC6DF0()
{
  v1 = OUTLINED_FUNCTION_26_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18(v3);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_26();
  sub_267EF5888();
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_75_12();
  sub_267EF66E8();
  sub_267EC610C();
  sub_267B9F98C(v0, &qword_280229798, &unk_267EFE4D0);
  v6 = sub_267EF5878();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  sub_267EF5868();
  v9 = OUTLINED_FUNCTION_91_1();
  v10(v9);
  return v8;
}

uint64_t sub_267EC6F34()
{
  v1 = sub_267EC60DC();
  if (v1 != 17)
  {
    sub_267D6CFAC(v1);
    OUTLINED_FUNCTION_11_1();
    v4 = v4 && v3 == 0xEA00000000006E6FLL;
    if (v4)
    {
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_79_14();
    }

    return 0;
  }

  if (sub_267EC2AF0())
  {
    return 1;
  }

  if ((sub_267EC2A10() & 1) == 0)
  {
    return 0;
  }

  if (sub_267EC60DC() != 17)
  {
    return 1;
  }

  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (!v4)
  {
    sub_267D6C0D4(v5);
    OUTLINED_FUNCTION_11_1();
    if (v10)
    {
      v12 = v11 == 0xE300000000000000;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_79_14();
      return 1;
    }

LABEL_26:

    return 1;
  }

  sub_267EC4DBC();
  OUTLINED_FUNCTION_68_14();
  if (v4)
  {
    return 0;
  }

  sub_267D6C0D4(v6);
  OUTLINED_FUNCTION_37_21();
  if (v4 && v8 == 0xE400000000000000)
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_81_0(v7, v0);
  OUTLINED_FUNCTION_20_19();
  return 0;
}

uint64_t sub_267EC7084()
{
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_280228900);
  }
}

uint64_t sub_267EC70D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  sub_267EF6718();
  OUTLINED_FUNCTION_22();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_267EC7140()
{
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv3Intent_nlIntent;
  sub_267EF6718();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmsNLv3Intent(uint64_t a1)
{
  result = qword_28022D148;
  if (!qword_28022D148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EC7228(uint64_t a1)
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

uint64_t sub_267EC7884(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C78](a1, WitnessTable);
}

uint64_t sub_267EC78E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C68](a1, WitnessTable);
}

uint64_t sub_267EC793C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C0C70](a1, WitnessTable);
}

uint64_t sub_267EC7A20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267EC7A90(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD0, &qword_267F08750);
  OUTLINED_FUNCTION_18(v4);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v78 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCD8, &unk_267F0ECC0);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v79 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  v81 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE0, &qword_267F08758);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v82 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229798, &unk_267EFE4D0);
  OUTLINED_FUNCTION_18(v15);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34_32();
  v17 = sub_267EF5B58();
  OUTLINED_FUNCTION_58();
  v80 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_0();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCE8, &qword_267F08760);
  OUTLINED_FUNCTION_18(v23);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_52_0();
  v25 = sub_267EF5A88();
  OUTLINED_FUNCTION_58();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_0_0();
  v31 = v30 - v29;
  sub_267B9AFEC(a1, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BCF0, &qword_267F08768);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v25);
    (*(v27 + 32))(v31, v1, v25);
    v35 = sub_267EF5A78();
    sub_267C8F714(v35, v81);

    v36 = sub_267EF5958();
    if (__swift_getEnumTagSinglePayload(v81, 1, v36) == 1)
    {
      v37 = OUTLINED_FUNCTION_18_43();
      v38(v37);
      sub_267B9F98C(v81, &qword_28022BCD8, &unk_267F0ECC0);
      sub_267EF5908();
      v2 = v82;
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    }

    else
    {
      v2 = v82;
      sub_267EF5918();
      OUTLINED_FUNCTION_5_0();
      v55 = *(v54 + 8);
      v56 = OUTLINED_FUNCTION_66();
      v55(v56);
      v57 = sub_267EF5908();
      if (__swift_getEnumTagSinglePayload(v82, 1, v57) != 1)
      {
        sub_267B9F98C(v82, &qword_28022BCE0, &qword_267F08758);
        v67 = sub_267EF5A78();
        v2 = v79;
        sub_267C8F714(v67, v79);

        if (__swift_getEnumTagSinglePayload(v79, 1, v36) != 1)
        {
          sub_267EF58F8();
          (v55)(v79, v36);
          v70 = sub_267EF58E8();
          v71 = OUTLINED_FUNCTION_46_24();
          if (__swift_getEnumTagSinglePayload(v71, v72, v70) != 1)
          {
            v51 = sub_267EF58D8();
            v75 = OUTLINED_FUNCTION_18_43();
            v76(v75);
            OUTLINED_FUNCTION_5_0();
            (*(v77 + 8))(v78, v70);
            return v51 & 1;
          }

          v73 = OUTLINED_FUNCTION_18_43();
          v74(v73);
          v60 = &qword_28022BCD0;
          v61 = &qword_267F08750;
          v65 = v78;
          goto LABEL_11;
        }

        v68 = OUTLINED_FUNCTION_18_43();
        v69(v68);
        v60 = &qword_28022BCD8;
        v61 = &unk_267F0ECC0;
LABEL_10:
        v65 = v2;
LABEL_11:
        sub_267B9F98C(v65, v60, v61);
        v51 = 0;
        return v51 & 1;
      }

      v58 = OUTLINED_FUNCTION_18_43();
      v59(v58);
    }

    v60 = &qword_28022BCE0;
    v61 = &qword_267F08758;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v25);
  sub_267B9F98C(v1, &qword_28022BCE8, &qword_267F08760);
  sub_267B9AFEC(a1, v83);
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v17);
    v60 = &qword_280229798;
    v61 = &unk_267EFE4D0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_37_25();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  v50 = (*(v80 + 32))(v22, v2, v17);
  v51 = sub_267EC0AC4(v50);
  v52 = OUTLINED_FUNCTION_66();
  v53(v52);
  return v51 & 1;
}

void sub_267EC8084(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setLocalizedValue_];
}

uint64_t sub_267EC80E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EC814C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v21 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = sub_267EF7C18();
  if (v12)
  {
    v21[2] = v11;
    v21[3] = v12;
    v21[0] = 0x6C7070612E6D6F63;
    v21[1] = 0xE900000000000065;
    sub_267C7A6BC();
    sub_267C7A710();
    v13 = sub_267EF8FA8();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_267EF41B8();
  if (v14)
  {
    v15 = sub_267EC836C(v14);
    if (v16)
    {
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        sub_267EF90F8();

        sub_267BBD6F0(v9);
        v18 = 0;
      }

      else
      {
        sub_267BBD6F0(v9);

        v18 = 1;
      }

      __swift_storeEnumTagSinglePayload(v7, v18, 1, v10);
      sub_267C12220(v7, v9);
    }
  }

  sub_267C12290(v9, v4);
  v19 = sub_267E4D19C(v4, v13 & 1);

  sub_267BBD6F0(v9);
  return v19;
}

uint64_t sub_267EC836C(void *a1)
{
  v2 = [a1 displayAppName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267EC83DC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v8 = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_217_1(v8);
  v0[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[37] = v10;
  v0[38] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267EC84A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v15 = *(*(v14 + 272) + OBJC_IVAR____TtC16SiriMessagesFlow39UnsendMessagesConfirmIntentFlowStrategy_unsendMessageState);
  *(v14 + 312) = v15;
  v16 = *(v15 + 24);
  *(v14 + 320) = v16;
  if (v16)
  {
    sub_267C6AD4C(*(v14 + 248), v14 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v14 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v17 = qword_280228818;

      if (v17 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v18 = sub_267EF8A08();
      v19 = OUTLINED_FUNCTION_180_2(v18, qword_280240FB0);
      v20 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v20))
      {
        v21 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v21);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v22, v23, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EEC0);
      a10 = v24;
      v25 = swift_task_alloc();
      v26 = OUTLINED_FUNCTION_89_9(v25);
      *v26 = v27;
      OUTLINED_FUNCTION_7_56(v26);
      OUTLINED_FUNCTION_182_2();

      return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v14 + 176, &qword_280229330, &qword_267F092F0);
  }

  v37 = *(v14 + 232);
  if (v37)
  {
    [*(v14 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v37)
    {
      v38 = *(v14 + 232);
      *(v14 + 352) = v38;
      v53 = v38;
      OUTLINED_FUNCTION_437();
      if (!v54)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v55 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v55, qword_280240FB0);
      v56 = sub_267EF89F8();
      v57 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v57))
      {
        v58 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v58);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v59, v60, v61, v62, v63, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v64 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v64);
      v65 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v65);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v67 = OUTLINED_FUNCTION_47_3(v66);
      v68 = OUTLINED_FUNCTION_111_8(v67);
      OUTLINED_FUNCTION_102_9(v68, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v69 = v37;
      v70 = swift_task_alloc();
      v71 = OUTLINED_FUNCTION_32_25(v70);
      *v71 = v72;
      OUTLINED_FUNCTION_3_86(v71);
      OUTLINED_FUNCTION_182_2();

      return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v37)
  {
    OUTLINED_FUNCTION_105_12();
    v40 = v39;
    OUTLINED_FUNCTION_1_89();
    a10 = v41;
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_35_30(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_10_51(v43);
    OUTLINED_FUNCTION_182_2();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v73 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v73, qword_280240FB0);
  v74 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v76);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v77, v78, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v79, v80, v81, v82, v83, v84, v85);
  v86 = sub_267EF4CC8();
  v87 = OUTLINED_FUNCTION_166_3(v86, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v87, v88);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC88F4()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EC8A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v18 = OUTLINED_FUNCTION_213_1(v17);
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v20 = os_log_type_enabled(v18, v19);
  if (v15 == 1)
  {
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4888();
  }

  else
  {
    if (v20)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v29 = v28;
      OUTLINED_FUNCTION_1_89();
      a10 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_35_30(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_10_51(v32);
      OUTLINED_FUNCTION_182_2();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v71 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
    v72 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v74);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v75, v76, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v77, v78, v79, v80, v81, v82, v83);
    v84 = sub_267EF4CC8();
    v85 = OUTLINED_FUNCTION_166_3(v84, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25(v85, v86);
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = *(v16 + 232);
  *(v16 + 352) = v27;
  v43 = v27;
  OUTLINED_FUNCTION_437();
  if (!v44)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v48);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v54 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v54);
  v55 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v57 = OUTLINED_FUNCTION_47_3(v56);
  v58 = OUTLINED_FUNCTION_111_8(v57);
  OUTLINED_FUNCTION_102_9(v58, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v59 = v14;
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_32_25(v60);
  *v61 = v62;
  OUTLINED_FUNCTION_3_86(v61);
  OUTLINED_FUNCTION_182_2();

  return v66(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC8DA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267EC8EC4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267EC8FA8()
{
  OUTLINED_FUNCTION_60_5();
  v23 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  v16 = OUTLINED_FUNCTION_175_2(v15);
  OUTLINED_FUNCTION_152_4(v16, xmmword_267EFCA40);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v17 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_6_62(v18);

  return v21(v20);
}

uint64_t sub_267EC910C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267EC9228()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_131((v0 + 16));
  OUTLINED_FUNCTION_395();
  if (sub_267E619C4(v2, v3))
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_530();
  }

  else
  {

    v4 = 0;
    v1 = 0;
  }

  v6 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_267EC92E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v8 = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_217_1(v8);
  v0[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[37] = v10;
  v0[38] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267EC93A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v15 = *(*(*(v14 + 272) + 112) + 24);
  *(v14 + 312) = v15;
  if (v15)
  {
    sub_267C6AD4C(*(v14 + 248), v14 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v14 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      *(v14 + 320) = __swift_project_value_buffer(v17, qword_280240FB0);
      v18 = sub_267EF89F8();
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE90);
      a10 = v23;
      v24 = swift_task_alloc();
      *(v14 + 328) = v24;
      *v24 = v14;
      OUTLINED_FUNCTION_7_56(v24);
      OUTLINED_FUNCTION_182_2();

      return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v14 + 176, &qword_280229330, &qword_267F092F0);
  }

  v34 = *(v14 + 232);
  if (v34)
  {
    [*(v14 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v34)
    {
      v35 = *(v14 + 232);
      *(v14 + 344) = v35;
      v50 = v35;
      OUTLINED_FUNCTION_437();
      if (!v51)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v52 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v52, qword_280240FB0);
      v53 = sub_267EF89F8();
      v54 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v54))
      {
        v55 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v55);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v56, v57, v58, v59, v60, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v61 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v61);
      *(v14 + 352) = sub_267EF4188();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v63 = OUTLINED_FUNCTION_47_3(v62);
      *(v14 + 360) = v63;
      OUTLINED_FUNCTION_102_9(v63, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v64 = v34;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v14 + 368) = v65;
      *v65 = v66;
      OUTLINED_FUNCTION_3_86(v65);
      OUTLINED_FUNCTION_182_2();

      return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v34)
  {
    OUTLINED_FUNCTION_105_12();
    v37 = v36;
    OUTLINED_FUNCTION_1_89();
    a10 = v38;
    v39 = swift_task_alloc();
    v40 = OUTLINED_FUNCTION_32_25(v39);
    *v40 = v41;
    OUTLINED_FUNCTION_10_51(v40);
    OUTLINED_FUNCTION_182_2();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v67 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v67, qword_280240FB0);
  v68 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v70);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v71, v72, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v73, v74, v75, v76, v77, v78, v79);
  v80 = sub_267EF4CC8();
  v81 = OUTLINED_FUNCTION_166_3(v80, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v81, v82);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC9808()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 336) = v0;

  if (!v0)
  {
    *(v4 + 408) = v1 & 1;
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EC992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v16 = *(v15 + 408);
  v17 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v19 = os_log_type_enabled(v17, v18);
  if (v16 == 1)
  {
    if (v19)
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v21, v22, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4888();
  }

  else
  {
    if (v19)
    {
      v23 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v23);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v24, v25, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v28 = v27;
      OUTLINED_FUNCTION_1_89();
      a10 = v29;
      v30 = swift_task_alloc();
      v31 = OUTLINED_FUNCTION_32_25(v30);
      *v31 = v32;
      OUTLINED_FUNCTION_10_51(v31);
      OUTLINED_FUNCTION_182_2();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v67 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v67, qword_280240FB0);
    v68 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v70);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v71, v72, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v73, v74, v75, v76, v77, v78, v79);
    v80 = sub_267EF4CC8();
    v81 = OUTLINED_FUNCTION_166_3(v80, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25(v81, v82);
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v26 = *(v15 + 232);
  *(v15 + 344) = v26;
  v42 = v26;
  OUTLINED_FUNCTION_437();
  if (!v43)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v44 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v44, qword_280240FB0);
  v45 = sub_267EF89F8();
  v46 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v46))
  {
    v47 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v47);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v53 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v53);
  *(v15 + 352) = sub_267EF4188();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v55 = OUTLINED_FUNCTION_47_3(v54);
  *(v15 + 360) = v55;
  OUTLINED_FUNCTION_102_9(v55, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v56 = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v15 + 368) = v57;
  *v57 = v58;
  OUTLINED_FUNCTION_3_86(v57);
  OUTLINED_FUNCTION_182_2();

  return v62(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EC9E34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267EC9F50()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267EC9FB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECA098()
{
  OUTLINED_FUNCTION_60_5();
  v21 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = v0[29];

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v0[48] = sub_267EF4188();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = OUTLINED_FUNCTION_47_3(v13);
  v0[49] = v14;
  OUTLINED_FUNCTION_152_4(v14, xmmword_267EFCA40);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v15 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[50] = v16;
  *v16 = v17;
  v18 = OUTLINED_FUNCTION_6_62(v16);

  return v19(v18);
}

uint64_t sub_267ECA204()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECA320()
{
  OUTLINED_FUNCTION_56();
  v1 = *(*(v0 + 272) + 112);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));

  v3 = OUTLINED_FUNCTION_108();
  if (sub_267E619C4(v3, v4))
  {
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_74_0();
  }

  else
  {

    v5 = 0;
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  *(v1 + 16) = v5;
  *(v1 + 24) = v2;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_267ECA3FC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v8 = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_217_1(v8);
  v0[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[37] = v10;
  v0[38] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ECA4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_203_0();
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EEB0);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v52 = v37;
      OUTLINED_FUNCTION_437();
      if (!v53)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v57);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v63 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v63);
      v64 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v64);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v66 = OUTLINED_FUNCTION_47_3(v65);
      v67 = OUTLINED_FUNCTION_111_8(v66);
      OUTLINED_FUNCTION_102_9(v67, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v68 = v36;
      v69 = swift_task_alloc();
      v70 = OUTLINED_FUNCTION_32_25(v69);
      *v70 = v71;
      OUTLINED_FUNCTION_3_86(v70);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v39 = v38;
    OUTLINED_FUNCTION_1_89();
    a10 = v40;
    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_35_30(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_10_51(v42);
    OUTLINED_FUNCTION_182_2();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v72 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
  v73 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v75);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_267EF4CC8();
  v86 = OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v86, v87);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECA8FC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECAA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v18 = OUTLINED_FUNCTION_213_1(v17);
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v20 = os_log_type_enabled(v18, v19);
  if (v15 == 1)
  {
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4888();
  }

  else
  {
    if (v20)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v29 = v28;
      OUTLINED_FUNCTION_1_89();
      a10 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_35_30(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_10_51(v32);
      OUTLINED_FUNCTION_182_2();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v71 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
    v72 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v74);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v75, v76, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v77, v78, v79, v80, v81, v82, v83);
    v84 = sub_267EF4CC8();
    v85 = OUTLINED_FUNCTION_166_3(v84, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25(v85, v86);
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = *(v16 + 232);
  *(v16 + 352) = v27;
  v43 = v27;
  OUTLINED_FUNCTION_437();
  if (!v44)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v48);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v54 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v54);
  v55 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v57 = OUTLINED_FUNCTION_47_3(v56);
  v58 = OUTLINED_FUNCTION_111_8(v57);
  OUTLINED_FUNCTION_102_9(v58, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v59 = v14;
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_32_25(v60);
  *v61 = v62;
  OUTLINED_FUNCTION_3_86(v61);
  OUTLINED_FUNCTION_182_2();

  return v66(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECADB0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECAE94()
{
  OUTLINED_FUNCTION_60_5();
  v23 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  v16 = OUTLINED_FUNCTION_175_2(v15);
  OUTLINED_FUNCTION_152_4(v16, xmmword_267EFCA40);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v17 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_6_62(v18);

  return v21(v20);
}

uint64_t sub_267ECAFF8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECB114()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v8 = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_217_1(v8);
  v0[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[37] = v10;
  v0[38] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ECB1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_135_2(*(v15 + 272));
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EEA0);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v52 = v37;
      OUTLINED_FUNCTION_437();
      if (!v53)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v57);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v63 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v63);
      v64 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v64);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v66 = OUTLINED_FUNCTION_47_3(v65);
      v67 = OUTLINED_FUNCTION_111_8(v66);
      OUTLINED_FUNCTION_102_9(v67, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v68 = v36;
      v69 = swift_task_alloc();
      v70 = OUTLINED_FUNCTION_32_25(v69);
      *v70 = v71;
      OUTLINED_FUNCTION_3_86(v70);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v39 = v38;
    OUTLINED_FUNCTION_1_89();
    a10 = v40;
    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_35_30(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_10_51(v42);
    OUTLINED_FUNCTION_182_2();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v72 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
  v73 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v75);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_267EF4CC8();
  v86 = OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v86, v87);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECB620()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v18 = OUTLINED_FUNCTION_213_1(v17);
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v20 = os_log_type_enabled(v18, v19);
  if (v15 == 1)
  {
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4888();
  }

  else
  {
    if (v20)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v29 = v28;
      OUTLINED_FUNCTION_1_89();
      a10 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_35_30(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_10_51(v32);
      OUTLINED_FUNCTION_182_2();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v71 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
    v72 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v74);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v75, v76, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v77, v78, v79, v80, v81, v82, v83);
    v84 = sub_267EF4CC8();
    v85 = OUTLINED_FUNCTION_166_3(v84, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25(v85, v86);
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = *(v16 + 232);
  *(v16 + 352) = v27;
  v43 = v27;
  OUTLINED_FUNCTION_437();
  if (!v44)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v48);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v54 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v54);
  v55 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v57 = OUTLINED_FUNCTION_47_3(v56);
  v58 = OUTLINED_FUNCTION_111_8(v57);
  OUTLINED_FUNCTION_102_9(v58, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v59 = v14;
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_32_25(v60);
  *v61 = v62;
  OUTLINED_FUNCTION_3_86(v61);
  OUTLINED_FUNCTION_182_2();

  return v66(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECBC34()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECBD50()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_267ECBDB4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECBE98()
{
  OUTLINED_FUNCTION_60_5();
  v23 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  v16 = OUTLINED_FUNCTION_175_2(v15);
  OUTLINED_FUNCTION_152_4(v16, xmmword_267EFCA40);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v17 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_6_62(v18);

  return v21(v20);
}

uint64_t sub_267ECBFFC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECC118()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_131((v0 + 16));
  OUTLINED_FUNCTION_395();
  if (sub_267E619C4(v2, v3))
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_530();
  }

  else
  {

    v4 = 0;
    v1 = 0;
  }

  v6 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  *(v6 + 24) = v4;
  *(v6 + 32) = v1;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_267ECC1D0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v8 = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_217_1(v8);
  v0[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[37] = v10;
  v0[38] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ECC298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_135_2(*(v15 + 272));
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE80);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v52 = v37;
      OUTLINED_FUNCTION_437();
      if (!v53)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v57);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v63 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v63);
      v64 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v64);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v66 = OUTLINED_FUNCTION_47_3(v65);
      v67 = OUTLINED_FUNCTION_111_8(v66);
      OUTLINED_FUNCTION_102_9(v67, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v68 = v36;
      v69 = swift_task_alloc();
      v70 = OUTLINED_FUNCTION_32_25(v69);
      *v70 = v71;
      OUTLINED_FUNCTION_3_86(v70);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v39 = v38;
    OUTLINED_FUNCTION_1_89();
    a10 = v40;
    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_35_30(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_10_51(v42);
    OUTLINED_FUNCTION_182_2();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v72 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
  v73 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v75);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_267EF4CC8();
  v86 = OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v86, v87);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECC6DC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECC7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v18 = OUTLINED_FUNCTION_213_1(v17);
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v20 = os_log_type_enabled(v18, v19);
  if (v15 == 1)
  {
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4888();
  }

  else
  {
    if (v20)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v29 = v28;
      OUTLINED_FUNCTION_1_89();
      a10 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_35_30(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_10_51(v32);
      OUTLINED_FUNCTION_182_2();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v71 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
    v72 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v74);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v75, v76, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v77, v78, v79, v80, v81, v82, v83);
    v84 = sub_267EF4CC8();
    v85 = OUTLINED_FUNCTION_166_3(v84, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25(v85, v86);
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = *(v16 + 232);
  *(v16 + 352) = v27;
  v43 = v27;
  OUTLINED_FUNCTION_437();
  if (!v44)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v48);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v54 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v54);
  v55 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v57 = OUTLINED_FUNCTION_47_3(v56);
  v58 = OUTLINED_FUNCTION_111_8(v57);
  OUTLINED_FUNCTION_102_9(v58, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v59 = v14;
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_32_25(v60);
  *v61 = v62;
  OUTLINED_FUNCTION_3_86(v61);
  OUTLINED_FUNCTION_182_2();

  return v66(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECCB90()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECCC74()
{
  OUTLINED_FUNCTION_60_5();
  v23 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  v16 = OUTLINED_FUNCTION_175_2(v15);
  OUTLINED_FUNCTION_152_4(v16, xmmword_267EFCA40);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v17 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_6_62(v18);

  return v21(v20);
}

uint64_t sub_267ECCDD8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECCEF4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39_26(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v7);
  v8 = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_217_1(v8);
  v0[36] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v0[37] = v10;
  v0[38] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ECCFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_135_2(*(v15 + 272));
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE70);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v52 = v37;
      OUTLINED_FUNCTION_437();
      if (!v53)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v57);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v63 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v63);
      v64 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v64);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v66 = OUTLINED_FUNCTION_47_3(v65);
      v67 = OUTLINED_FUNCTION_111_8(v66);
      OUTLINED_FUNCTION_102_9(v67, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v68 = v36;
      v69 = swift_task_alloc();
      v70 = OUTLINED_FUNCTION_32_25(v69);
      *v70 = v71;
      OUTLINED_FUNCTION_3_86(v70);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v39 = v38;
    OUTLINED_FUNCTION_1_89();
    a10 = v40;
    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_35_30(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_10_51(v42);
    OUTLINED_FUNCTION_182_2();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v72 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
  v73 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v75);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_267EF4CC8();
  v86 = OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v86, v87);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECD400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v7[35] = swift_task_alloc();
  v8 = sub_267EF3D88();
  v7[36] = v8;
  v7[37] = *(v8 - 8);
  v7[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ECD504, 0, 0);
}

uint64_t sub_267ECD504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_203_0();
  if (v14)
  {
    sub_267C6AD4C(*(v15 + 248), v15 + 176, &qword_280229330, &qword_267F092F0);
    if (*(v15 + 200))
    {
      OUTLINED_FUNCTION_206_0();
      v16 = qword_280228818;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v17 = sub_267EF8A08();
      v18 = OUTLINED_FUNCTION_180_2(v17, qword_280240FB0);
      v19 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_117_9(v19))
      {
        v20 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_31_5(v20);
        OUTLINED_FUNCTION_6_22(&dword_267B93000, v21, v22, "#MessagesFlowStrategy trying to update existing snippet");
        OUTLINED_FUNCTION_18_2();
      }

      OUTLINED_FUNCTION_10(&unk_267F0EE20);
      a10 = v23;
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_89_9(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_7_56(v25);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }

    sub_267B9F98C(v15 + 176, &qword_280229330, &qword_267F092F0);
  }

  v36 = *(v15 + 232);
  if (v36)
  {
    [*(v15 + 232) catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if (sub_267EF4878())
  {
    if (v36)
    {
      v37 = *(v15 + 232);
      *(v15 + 352) = v37;
      v52 = v37;
      OUTLINED_FUNCTION_437();
      if (!v53)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v54 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v56))
      {
        v57 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_4_2(v57);
        OUTLINED_FUNCTION_14_2();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      v63 = sub_267EF4198();
      OUTLINED_FUNCTION_97(v63);
      v64 = sub_267EF4188();
      OUTLINED_FUNCTION_114_8(v64);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v66 = OUTLINED_FUNCTION_47_3(v65);
      v67 = OUTLINED_FUNCTION_111_8(v66);
      OUTLINED_FUNCTION_102_9(v67, xmmword_267EFCA40);
      OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
      v68 = v36;
      v69 = swift_task_alloc();
      v70 = OUTLINED_FUNCTION_32_25(v69);
      *v70 = v71;
      OUTLINED_FUNCTION_3_86(v70);
      OUTLINED_FUNCTION_182_2();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
    }
  }

  else if (v36)
  {
    OUTLINED_FUNCTION_105_12();
    v39 = v38;
    OUTLINED_FUNCTION_1_89();
    a10 = v40;
    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_35_30(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_10_51(v42);
    OUTLINED_FUNCTION_182_2();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v72 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v72, qword_280240FB0);
  v73 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v75);
    OUTLINED_FUNCTION_21_12(&dword_267B93000, v76, v77, "#MessagesFlowStrategy generating empty output");
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_167_2();
  OUTLINED_FUNCTION_45_28(v78, v79, v80, v81, v82, v83, v84);
  v85 = sub_267EF4CC8();
  v86 = OUTLINED_FUNCTION_166_3(v85, MEMORY[0x277D5C1D8]);
  OUTLINED_FUNCTION_44_25(v86, v87);
  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_182_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECD93C()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_30_13();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_172_4();
  }

  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECDA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_90();
  v18 = OUTLINED_FUNCTION_213_1(v17);
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  v20 = os_log_type_enabled(v18, v19);
  if (v15 == 1)
  {
    if (v20)
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v21);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v22, v23, "#MessagesFlowStrategy snippet updated, generating dialog only output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF4888();
  }

  else
  {
    if (v20)
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v24);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v25, v26, "#MessagesFlowStrategy update failed, falling back to output with snippet");
      OUTLINED_FUNCTION_4_4();
    }
  }

  OUTLINED_FUNCTION_132_3();
  if (v14)
  {
    [v14 catId];
    sub_267EF9028();
    OUTLINED_FUNCTION_168_4();
  }

  else
  {
    OUTLINED_FUNCTION_106_7();
  }

  OUTLINED_FUNCTION_84_12();
  if ((sub_267EF4878() & 1) == 0)
  {
    if (v14)
    {
      OUTLINED_FUNCTION_105_12();
      v29 = v28;
      OUTLINED_FUNCTION_1_89();
      a10 = v30;
      v31 = swift_task_alloc();
      v32 = OUTLINED_FUNCTION_35_30(v31);
      *v32 = v33;
      OUTLINED_FUNCTION_10_51(v32);
      OUTLINED_FUNCTION_182_2();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
    }

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v71 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v71, qword_280240FB0);
    v72 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v74);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v75, v76, "#MessagesFlowStrategy generating empty output");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_167_2();
    OUTLINED_FUNCTION_45_28(v77, v78, v79, v80, v81, v82, v83);
    v84 = sub_267EF4CC8();
    v85 = OUTLINED_FUNCTION_166_3(v84, MEMORY[0x277D5C1D8]);
    OUTLINED_FUNCTION_44_25(v85, v86);
    OUTLINED_FUNCTION_22_40();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_182_2();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v27 = *(v16 + 232);
  *(v16 + 352) = v27;
  v43 = v27;
  OUTLINED_FUNCTION_437();
  if (!v44)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v48);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v49, v50, v51, v52, v53, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v54 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v54);
  v55 = sub_267EF4188();
  OUTLINED_FUNCTION_114_8(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v57 = OUTLINED_FUNCTION_47_3(v56);
  v58 = OUTLINED_FUNCTION_111_8(v57);
  OUTLINED_FUNCTION_102_9(v58, xmmword_267EFCA40);
  OUTLINED_FUNCTION_9_59(MEMORY[0x277D5BD50]);
  v59 = v14;
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_32_25(v60);
  *v61 = v62;
  OUTLINED_FUNCTION_3_86(v61);
  OUTLINED_FUNCTION_182_2();

  return v66(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267ECDDF0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECDED4()
{
  OUTLINED_FUNCTION_60_5();
  v23 = v1;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_205_0();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  v11 = *(v0 + 232);

  v12 = sub_267EF4198();
  OUTLINED_FUNCTION_97(v12);
  v13 = sub_267EF4188();
  OUTLINED_FUNCTION_178_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v15 = OUTLINED_FUNCTION_47_3(v14);
  v16 = OUTLINED_FUNCTION_175_2(v15);
  OUTLINED_FUNCTION_152_4(v16, xmmword_267EFCA40);
  OUTLINED_FUNCTION_20_37(MEMORY[0x277D5BD38]);
  v17 = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 408) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_6_62(v18);

  return v21(v20);
}

uint64_t sub_267ECE038()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ECE154()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_131((v0 + 16));
  OUTLINED_FUNCTION_395();
  if (sub_267E619C4(v2, v3))
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    sub_267EF47C8();
    OUTLINED_FUNCTION_530();
  }

  else
  {

    v4 = 0;
    v1 = 0;
  }

  v6 = *(v0 + 312);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  *(v6 + 288) = v4;
  *(v6 + 296) = v1;

  OUTLINED_FUNCTION_22_40();

  OUTLINED_FUNCTION_1();

  return v7();
}

uint64_t sub_267ECE20C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_267ED9728(a1, sub_267EDA984, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_267ECE2B8(uint64_t a1, char a2)
{
  sub_267C6AD4C(a1, v14, &qword_28022AEF0, &qword_267EFCDE0);
  v4 = v15;
  if (v15)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v14, v15);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    OUTLINED_FUNCTION_0_0();
    (*(v6 + 16))(v8 - v7);
    OUTLINED_FUNCTION_17_4();
    v9 = sub_267EF9E88();
    v10 = OUTLINED_FUNCTION_17_4();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v9 = 0;
  }

  v12 = sub_267ECE984(a2 & 1);
  v13 = [v12 facadePropertyName];

  if (v13)
  {
    [v2 setValue:v9 forKey:v13];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_267ECE45C()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_267C6AD4C(v9, v19, &qword_28022AEF0, &qword_267EFCDE0);
  v10 = v20;
  if (v20)
  {
    v11 = __swift_project_boxed_opaque_existential_0(v19, v20);
    v12 = *(v10 - 8);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_0_0();
    v15 = v14 - v13;
    (*(v12 + 16))(v14 - v13);
    v16 = sub_267EF9E88();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_267ECEB80(v8, v6, v4, v2);
  v18 = [v17 facadePropertyName];

  if (v18)
  {
    [v0 setValue:v16 forKey:v18];
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_47();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_267ECE5F0()
{
  for (i = 0; i != 9; ++i)
  {
    sub_267ECE8D0(byte_2878CA9B0[i + 32], &qword_28022AE60, 0x277CD4078, sub_267C7C28C, &v16);
    v1 = OUTLINED_FUNCTION_258_1();
    v2 = [v1 isEnum];

    if ((v2 & 1) == 0)
    {
      if (!v17)
      {
        goto LABEL_10;
      }

LABEL_8:
      OUTLINED_FUNCTION_5_72();
      OUTLINED_FUNCTION_215_1();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_257_1(v3, v4, v5, v6);
    if (v15)
    {
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_202_1();
      sub_267B9F98C(v7, v8, v9);
    }

LABEL_10:
    OUTLINED_FUNCTION_202_1();
    result = sub_267B9F98C(v10, v11, v12);
  }

  return result;
}

uint64_t sub_267ECE738()
{
  for (i = 0; i != 9; ++i)
  {
    sub_267ECE8D0(byte_2878CA9E0[i + 32], &qword_280229118, 0x277CD4048, sub_267C7C4C8, &v16);
    v1 = OUTLINED_FUNCTION_258_1();
    v2 = [v1 isEnum];

    if ((v2 & 1) == 0)
    {
      if (!v17)
      {
        goto LABEL_10;
      }

LABEL_8:
      OUTLINED_FUNCTION_159_4();
      OUTLINED_FUNCTION_215_1();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_257_1(v3, v4, v5, v6);
    if (v15)
    {
      if ((swift_dynamicCast() & 1) != 0 && v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      OUTLINED_FUNCTION_202_1();
      sub_267B9F98C(v7, v8, v9);
    }

LABEL_10:
    OUTLINED_FUNCTION_202_1();
    result = sub_267B9F98C(v10, v11, v12);
  }

  return result;
}

void sub_267ECE8D0(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, _OWORD *a5@<X8>)
{
  v7 = sub_267ECEB80(a1, a2, a3, a4);
  v8 = [v7 facadePropertyName];

  if (v8)
  {
    v9 = [v5 valueForKey_];

    if (v9)
    {
      sub_267EF99B8();

      swift_unknownObjectRelease();
    }

    else
    {
      *a5 = 0u;
      a5[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_267ECE984(char a1)
{
  v2 = 0xD000000000000011;
  sub_267BA9F38(0, &qword_28022A9F0, 0x277CD3BC0);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [v3 _intentInstanceDescription];

  if (a1)
  {
    v5 = 0x8000000267F0FE60;
  }

  else
  {
    v2 = 0x6F43646574696465;
    v5 = 0xED0000746E65746ELL;
  }

  v6 = sub_267EF8FF8();

  v7 = [v4 slotByName_];

  if (v7)
  {
    return v7;
  }

  sub_267EF9B68();

  MEMORY[0x26D608E60](v2, v5);

  MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F1D7B0);
  v9 = sub_267EFA0E8();
  MEMORY[0x26D608E60](v9);

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

id sub_267ECEB80(uint64_t a1, unint64_t *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  sub_267BA9F38(0, a2, a3);
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = [v7 _intentInstanceDescription];

  a4(a1);
  sub_267EF8FF8();
  OUTLINED_FUNCTION_156_2();

  v9 = [v8 slotByName_];

  if (v9)
  {
    return v9;
  }

  sub_267EF9B68();

  v11 = a4(a1);
  MEMORY[0x26D608E60](v11);

  MEMORY[0x26D608E60](0xD000000000000011, 0x8000000267F1D7B0);
  v12 = sub_267EFA0E8();
  MEMORY[0x26D608E60](v12);

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267ECED10(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_267D302A8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_267ECEE14(unint64_t result)
{
  v1 = result;
  v21 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84FA0];
  if (result >> 62)
  {
    result = sub_267EF9A68();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_22:
    v17 = MEMORY[0x277D84F90];
LABEL_23:

    return v17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v2 >= 1)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v3 = 0;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x26D609870](v3, v1) : *(v1 + 32 + 8 * v3);
      v5 = v4;
      v6 = v20;
      if ((v20 & 0xC000000000000001) == 0)
      {
        break;
      }

      v7 = v4;
      v8 = sub_267EF9AA8();

      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (++v3 == v2)
      {
        v17 = v18;
        goto LABEL_23;
      }
    }

    if (*(v20 + 16))
    {
      v9 = sub_267EF9808();
      v10 = ~(-1 << *(v6 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v6 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = *(*(v6 + 48) + 8 * v11);
        v13 = sub_267EF9818();

        v9 = v11 + 1;
        if (v13)
        {

          goto LABEL_19;
        }
      }
    }

LABEL_16:
    v14 = v5;
    sub_267D2FF60(&v19, v14);

    v15 = v14;
    MEMORY[0x26D608F90]();
    v16 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v16);
      sub_267EF9328();
    }

    sub_267EF9368();

    v18 = v21;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_267ECF070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_267EF43D8();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ECF134, 0, 0);
}

uint64_t sub_267ECF38C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECF484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_267EF43D8();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ECF548, 0, 0);
}

uint64_t sub_267ECF7A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECF898()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[1];

  return v1(1);
}

uint64_t sub_267ECF90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_1();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  __swift_destroy_boxed_opaque_existential_0((v20 + 56));
  v26 = *(v20 + 168);
  *(v20 + 96) = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  v28 = OUTLINED_FUNCTION_47_20();
  v30 = v29(v28);
  v31 = *(v20 + 152);
  if (v30 != *MEMORY[0x277D5BE80])
  {
    v41 = OUTLINED_FUNCTION_26_0();
    v42(v41);
LABEL_8:

    goto LABEL_11;
  }

  v32 = OUTLINED_FUNCTION_26_0();
  v33(v32);
  v34 = *v31;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v35 = OUTLINED_FUNCTION_184_2();
  OUTLINED_FUNCTION_30_1(v35, qword_280240FB0);
  v36 = v34;
  OUTLINED_FUNCTION_185_2();
  v37 = sub_267EF89F8();
  sub_267EF95D8();

  if (OUTLINED_FUNCTION_181_2())
  {
    OUTLINED_FUNCTION_107_10();
    OUTLINED_FUNCTION_108_9();
    OUTLINED_FUNCTION_99_10();
    OUTLINED_FUNCTION_81_1();
    v38 = OUTLINED_FUNCTION_34_33(5.778e-34);
    *(v31 + 14) = sub_267BA33E8(v22, v21, &a10);
    OUTLINED_FUNCTION_53_23(&dword_267B93000, v39, v40, "#MessagesFlowStrategy received %@, snippet with viewId=%s is not available");
    sub_267B9F98C(v23, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_9_11();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_18_44();
LABEL_11:
  OUTLINED_FUNCTION_46();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_267ECFB34()
{
  OUTLINED_FUNCTION_12();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v5 = sub_267EF43D8();
  v1[17] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ECFBDC()
{
  if (*(v0 + 16) - 2 > 3)
  {
    return 0;
  }

  if (*(v0 + 40))
  {
    return 1;
  }

  if (sub_267D60D20())
  {
    return 2;
  }

  return 3;
}

void sub_267ECFC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  v21 = v20;
  v213 = v22;
  v24 = v23;
  v219 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229720, &qword_267EFE108);
  OUTLINED_FUNCTION_18(v26);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v27);
  v29 = &v202 - v28;
  v212 = sub_267EF44C8();
  OUTLINED_FUNCTION_58();
  v211 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v33 - v32);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  OUTLINED_FUNCTION_18(v34);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_1(&v202 - v36);
  v224 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v217 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v42);
  v207 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v209 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_1(v46 - v45);
  v222 = sub_267EF7008();
  OUTLINED_FUNCTION_58();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_60();
  v221 = v50 - v51;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_45_0();
  v220 = v53;
  v54 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_0_0();
  v60 = v59 - v58;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v61 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v61, qword_280240FB0);
  v62 = *(v56 + 16);
  v223 = v24;
  v62(v60, v24, v54);
  v218 = v20;
  v63 = sub_267EF89F8();
  v64 = sub_267EF95C8();
  v65 = os_log_type_enabled(v63, v64);
  v206 = v29;
  if (v65)
  {
    v66 = OUTLINED_FUNCTION_48();
    v67 = OUTLINED_FUNCTION_52();
    v203 = v20;
    v68 = v67;
    v229[0] = v67;
    *v66 = 136315138;
    sub_267EDB6D8(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v69 = sub_267EF9E58();
    v71 = v70;
    v72 = OUTLINED_FUNCTION_37_1();
    v73(v72);
    sub_267BA33E8(v69, v71, v229);
    OUTLINED_FUNCTION_25_0();

    *(v66 + 4) = v69;
    _os_log_impl(&dword_267B93000, v63, v64, "#SendMessageNeedsValueFlowStrategy received input: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    v21 = v203;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v74 = OUTLINED_FUNCTION_37_1();
    v75(v74);
  }

  __swift_project_boxed_opaque_existential_0((v21 + 16), *(v21 + 40));
  v76 = OUTLINED_FUNCTION_7_1();
  v77(v76);
  __swift_project_boxed_opaque_existential_0(v229, v230);
  v78 = v220;
  OUTLINED_FUNCTION_7_1();
  sub_267EF3B78();
  v80 = v221;
  v79 = v222;
  (*(v48 + 104))(v221, *MEMORY[0x277D61C58], v222);
  v81 = sub_267C28F38(v78, v80);
  v82 = *(v48 + 8);
  v83 = OUTLINED_FUNCTION_1_10();
  v82(v83);
  (v82)(v78, v79);
  v84 = __swift_destroy_boxed_opaque_existential_0(v229);
  v85 = v224;
  if (v81)
  {
    v86 = OUTLINED_FUNCTION_183_1(v84);
    v87 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v87))
    {
      v88 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v88);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v89, v90, "#SendMessageNeedsValueFlowStrategy tap-to-edit request, ignoring");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_151_3();
    sub_267EF3E68();
    goto LABEL_79;
  }

  v91 = v216;
  sub_267EF4B88();
  v92 = v217;
  v93 = *(v217 + 88);
  v94 = OUTLINED_FUNCTION_199();
  if (v93(v94) == *MEMORY[0x277D5C150])
  {
    v95 = OUTLINED_FUNCTION_199();
    v96(v95);
    v97 = v209;
    v98 = v214;
    v99 = v207;
    (*(v209 + 32))(v214, v91, v207);
    v100 = v208;
    sub_267B9CC04(v98, v208);
    v101 = type metadata accessor for DirectInvocationUseCases(0);
    if (__swift_getEnumTagSinglePayload(v100, 1, v101) == 1)
    {
      (*(v97 + 8))(v98, v99);
      sub_267B9F98C(v100, &unk_28022BBE0, qword_267EFD030);
    }

    else
    {
      OUTLINED_FUNCTION_12_4();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_267EF8228();
        OUTLINED_FUNCTION_58();
        v122 = OUTLINED_FUNCTION_12_4();
        if (v123(v122) == *MEMORY[0x277D5D4D8])
        {
          v124 = OUTLINED_FUNCTION_12_4();
          v126 = v125(v124);
          v127 = OUTLINED_FUNCTION_183_1(v126);
          v128 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v128))
          {
            v129 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v129);
            OUTLINED_FUNCTION_17_0(&dword_267B93000, v130, v131, "#SendMessageNeedsValueFlowStrategy prompt is cancelled by button press");
            OUTLINED_FUNCTION_26();
          }

          OUTLINED_FUNCTION_151_3();
          sub_267EF3E48();
          v132 = OUTLINED_FUNCTION_169_3();
          v133(v132);
          goto LABEL_79;
        }

        v141 = OUTLINED_FUNCTION_169_3();
        v142(v141);
        v143 = OUTLINED_FUNCTION_12_4();
        v144(v143);
      }

      else
      {
        (*(v97 + 8))(v214, v99);
        sub_267EDB680(v100, type metadata accessor for DirectInvocationUseCases);
      }
    }
  }

  else
  {
    v102 = OUTLINED_FUNCTION_199();
    v103(v102);
  }

  v104 = v215;
  sub_267EF4B88();
  sub_267E57DFC(v104, v229);
  v105 = *(v92 + 8);
  v106 = OUTLINED_FUNCTION_199();
  v105(v106);
  if (v230)
  {
    sub_267B9AFEC(v229, v228);
    OUTLINED_FUNCTION_118_7();
    v107 = OUTLINED_FUNCTION_38_0();
    v109 = v108(v107);
    v110 = __swift_destroy_boxed_opaque_existential_0(v228);
    if (v109 == 2)
    {
      v111 = OUTLINED_FUNCTION_183_1(v110);
      v112 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v112))
      {
        v113 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v113);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v114, v115, "#SendMessageNeedsValueFlowStrategy prompt is cancelled");
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_151_3();
      sub_267EF3E48();
      goto LABEL_78;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  OUTLINED_FUNCTION_170_4();
  sub_267EF4938();
  sub_267EF44B8();
  (*(v211 + 8))(v92, v212);
  v116 = OUTLINED_FUNCTION_61_0();
  v118 = sub_267C7C240(v116, v117);
  if (v118 != 9)
  {
    if (sub_267C7C28C(v118) == 0x746E65746E6F63 && v119 == 0xE700000000000000)
    {
    }

    else
    {
      v121 = sub_267EF9EA8();

      if ((v121 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    OUTLINED_FUNCTION_170_4();
    sub_267EF4B88();
    v134 = (v93)(v92, v85);
    v135 = *MEMORY[0x277D5C160];
    (v105)(v92, v85);
    v136 = v206;
    if (v134 == v135)
    {
      sub_267C6AD4C(v229, &v226, &unk_28022BBF0, &unk_267F01C60);
      if (v227)
      {
        sub_267B9A5E8(&v226, v228);
        OUTLINED_FUNCTION_118_7();
        v137 = OUTLINED_FUNCTION_38_0();
        v138(v137);
        if (v139)
        {

          goto LABEL_73;
        }

        OUTLINED_FUNCTION_118_7();
        v195 = OUTLINED_FUNCTION_38_0();
        v197 = *(v196(v195) + 16);

        if (v197 || (OUTLINED_FUNCTION_118_7(), v198 = OUTLINED_FUNCTION_38_0(), v140 = v199(v198), (v140 & 1) != 0))
        {
LABEL_73:
          v187 = OUTLINED_FUNCTION_183_1(v140);
          v200 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_36(v200))
          {
            v201 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v201);
            v192 = "#SendMessageNeedsValueFlowStrategy top parse is change app or add/remove recipient, ignoring to re-run RCH";
            goto LABEL_75;
          }

          goto LABEL_76;
        }

        __swift_destroy_boxed_opaque_existential_0(v228);
      }

      else
      {
        sub_267B9F98C(&v226, &unk_28022BBF0, &unk_267F01C60);
      }
    }

    sub_267C4D820(v136);
    if (__swift_getEnumTagSinglePayload(v136, 1, v85) == 1)
    {
      sub_267B9F98C(v136, &qword_280229720, &qword_267EFE108);
    }

    else
    {
      v145 = v204;
      OUTLINED_FUNCTION_202_1();
      v147 = v146();
      v148 = OUTLINED_FUNCTION_183_1(v147);
      v149 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v149))
      {
        v150 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v150);
        OUTLINED_FUNCTION_17_0(&dword_267B93000, v151, v152, "#SendMessageNeedsValueFlowStrategy isContentSlot, use ruleBasedParse for remaining checks");
        OUTLINED_FUNCTION_26();
      }

      v153 = sub_267E57DFC(v145, v228);
      (v105)(v145, v85, v153);
      sub_267BF3128(v228, v229, &unk_28022BBF0, &unk_267F01C60);
    }
  }

LABEL_44:
  sub_267C6AD4C(v229, &v226, &unk_28022BBF0, &unk_267F01C60);
  if (!v227)
  {
    v169 = sub_267B9F98C(&v226, &unk_28022BBF0, &unk_267F01C60);
    v170 = OUTLINED_FUNCTION_183_1(v169);
    v171 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v171))
    {
      v172 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v172);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v173, v174, "#SendMessageNeedsValueFlowStrategy unexpected input, ignoring");
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_151_3();
    sub_267EF3E68();
    goto LABEL_78;
  }

  sub_267B9A5E8(&v226, v228);
  sub_267B9AFEC(v228, &v226);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  type metadata accessor for SmsNLv4Intent(0);
  if (swift_dynamicCast())
  {
    v154 = *(v225 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_recipientPersons);
    v155 = sub_267BAF0DC(v154);
    if (v155)
    {
      v156 = v155;

      v157 = 0;
      while (v156 != v157)
      {
        if ((v154 & 0xC000000000000001) != 0)
        {
          v168 = OUTLINED_FUNCTION_1_10();
          v158 = MEMORY[0x26D609870](v168);
        }

        else
        {
          if (v157 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }
        }

        if (__OFADD__(v157, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

        sub_267EACC60(v158, v159, v160, v161, v162, v163, v164, v165, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213);
        v167 = v166;

        ++v157;
        if ((v167 & 1) == 0)
        {

          goto LABEL_63;
        }
      }

      v176 = OUTLINED_FUNCTION_183_1(v175);
      v177 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v177))
      {
        v178 = OUTLINED_FUNCTION_32();
        *v178 = 0;
        _os_log_impl(&dword_267B93000, v176, v154, "#SendMessageNeedsValueFlowStrategy recipient is nobody, cancelling", v178, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      OUTLINED_FUNCTION_151_3();
      sub_267EF3E48();

      goto LABEL_77;
    }
  }

LABEL_63:
  OUTLINED_FUNCTION_118_7();
  v179 = OUTLINED_FUNCTION_38_0();
  if (v180(v179))
  {
    OUTLINED_FUNCTION_118_7();
    v181 = OUTLINED_FUNCTION_38_0();
    v183 = v182(v181);
    if ((v183 & 1) == 0)
    {
      v187 = OUTLINED_FUNCTION_183_1(v183);
      v193 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_36(v193))
      {
        v194 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v194);
        v192 = "#SendMessageNeedsValueFlowStrategy unrelated request, ignoring";
        goto LABEL_75;
      }

LABEL_76:

      OUTLINED_FUNCTION_151_3();
      sub_267EF3E68();
      goto LABEL_77;
    }
  }

  OUTLINED_FUNCTION_118_7();
  v184 = OUTLINED_FUNCTION_38_0();
  v186 = v185(v184);
  if (v186)
  {
    v187 = OUTLINED_FUNCTION_183_1(v186);
    v188 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v188))
    {
      v189 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v189);
      v192 = "#SendMessageNeedsValueFlowStrategy app name is specified, ignoring to treat as change request";
LABEL_75:
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v190, v191, v192);
      OUTLINED_FUNCTION_26();
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  OUTLINED_FUNCTION_151_3();
  sub_267EF3E58();
LABEL_77:
  __swift_destroy_boxed_opaque_existential_0(v228);
LABEL_78:
  sub_267B9F98C(v229, &unk_28022BBF0, &unk_267F01C60);
LABEL_79:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267ED0B20()
{
  OUTLINED_FUNCTION_12();
  v1[53] = v2;
  v1[54] = v0;
  v1[51] = v3;
  v1[52] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[55] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[56] = v6;
  v1[57] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF7008();
  v1[58] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[59] = v8;
  v1[60] = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  OUTLINED_FUNCTION_18(v9);
  v1[61] = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  OUTLINED_FUNCTION_18(v10);
  v1[62] = OUTLINED_FUNCTION_2();
  v11 = sub_267EF44C8();
  v1[63] = v11;
  OUTLINED_FUNCTION_30_0(v11);
  v1[64] = v12;
  v1[65] = OUTLINED_FUNCTION_2();
  v13 = sub_267EF4C08();
  v1[66] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[67] = v14;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_267ED0D30(uint64_t a1)
{
  v193 = v1;
  v2 = *(v1 + 512);
  sub_267EF4B88();
  sub_267EF4938();
  sub_267EF44B8();
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_26_0();
  v3(v4);
  v5 = OUTLINED_FUNCTION_65_5();
  v7 = sub_267C7C240(v5, v6);
  *(v1 + 616) = v7;
  if (v7 == 9)
  {
    OUTLINED_FUNCTION_197_1();
    if (!v8)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v189 = v3;
    v9 = *(v1 + 424);
    v10 = sub_267EF8A08();
    v11 = __swift_project_value_buffer(v10, qword_280240FB0);
    v12 = OUTLINED_FUNCTION_108();
    v13(v12);
    v14 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v1 + 520);
      v184 = *(v1 + 504);
      v18 = *(v1 + 448);
      v17 = *(v1 + 456);
      v181 = *(v1 + 440);
      OUTLINED_FUNCTION_48();
      v186 = OUTLINED_FUNCTION_55_0();
      *&v191 = v186;
      *v11 = 136315138;
      sub_267EF4938();
      sub_267EF44B8();
      v19 = OUTLINED_FUNCTION_186_2();
      (v3)(v19, v184);
      (*(v18 + 8))(v17, v181);
      v20 = sub_267BA33E8(v16, v3, &v191);

      *(v11 + 4) = v20;
      OUTLINED_FUNCTION_52_18(&dword_267B93000, v21, v9, "#SendMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(v186);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v37 = OUTLINED_FUNCTION_108();
      v38(v37);
    }

    v39 = *(v1 + 520);
    v40 = *(v1 + 504);
    sub_267EF4938();
    v41 = sub_267EF44B8();
    v43 = v42;
    v189(v39, v40);
    v44 = sub_267C4BE60();
    OUTLINED_FUNCTION_61_1(&type metadata for Errors, v44);
    *v45 = v41;
    v45[1] = v43;
    swift_willThrow();
    v46 = OUTLINED_FUNCTION_290();
    v47(v46);
LABEL_18:
    OUTLINED_FUNCTION_174_1();

    OUTLINED_FUNCTION_17();

    return v62();
  }

  v22 = v7;
  if (v7 == 3)
  {
    v23 = *(v1 + 536);
    sub_267EF4B88();
    v24 = OUTLINED_FUNCTION_26_0();
    v26 = v25(v24);
    v27 = *MEMORY[0x277D5C160];
    v28 = *(v23 + 8);
    v29 = OUTLINED_FUNCTION_26_0();
    v28(v29);
    if (v26 == v27)
    {
      sub_267ED8F98();
      v30 = OUTLINED_FUNCTION_108();
      v28(v30);
      v31 = OUTLINED_FUNCTION_66();
      v32(v31);
    }
  }

  sub_267E57DFC(*(v1 + 560), (v1 + 56));
  if (!*(v1 + 80))
  {
    sub_267B9F98C(v1 + 56, &unk_28022BBF0, &unk_267F01C60);
    OUTLINED_FUNCTION_197_1();
    if (!v8)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v48 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v48, qword_280240FB0);
    v49 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v51);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_26();
    }

    v57 = *(v1 + 560);
    v58 = *(v1 + 536);
    v59 = *(v1 + 528);

    v60 = sub_267C266B0();
    OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v60);
    *v61 = 0xD000000000000018;
    v61[1] = 0x8000000267F1A040;
    swift_willThrow();
    (*(v58 + 8))(v57, v59);
    goto LABEL_18;
  }

  v33 = *(v1 + 560);
  sub_267B9A5E8((v1 + 56), v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v34 = sub_267EF7068();
  v36 = v35;
  v34(&v191, v33);

  v64 = v191;
  *(v1 + 568) = v191;
  if (v22 == 3)
  {
    *(*(*(v1 + 432) + 56) + 209) = 1;
  }

  v65 = *(*(v1 + 432) + 56);
  *(v1 + 576) = v65;
  v66 = sub_267D60D20();
  if (v22 == 3 && v66)
  {
    v67 = *(v65 + 56);
    if (v67)
    {
      v68 = *(v65 + 48);

      sub_267ED9A2C(v64);
      if (v69)
      {
        v187 = v65;
        v70 = *(v1 + 496);
        v71 = *(v1 + 432);
        v73 = v71[5];
        v72 = v71[6];
        __swift_project_boxed_opaque_existential_0(v71 + 2, v73);
        (*(v72 + 8))(v73, v72);
        __swift_project_boxed_opaque_existential_0((v1 + 256), *(v1 + 280));
        OUTLINED_FUNCTION_290();
        sub_267EF3B68();
        sub_267EF2E38();
        OUTLINED_FUNCTION_9();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
        OUTLINED_FUNCTION_131_2();
        v81 = sub_267D5E5A0(v78, v79, v80, v68, v67);
        v36 = v82;

        sub_267B9F98C(v70, &unk_28022AF10, &unk_267F001E0);
        __swift_destroy_boxed_opaque_existential_0((v1 + 256));
        OUTLINED_FUNCTION_197_1();
        if (!v8)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v83 = MEMORY[0x277D837D0];
        v84 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v84, qword_280240FB0);
        v85 = sub_267EF89F8();
        v86 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_5_2(v86))
        {
          *OUTLINED_FUNCTION_32() = 0;
          OUTLINED_FUNCTION_109_10();
          _os_log_impl(v87, v88, v89, v90, v91, 2u);
          OUTLINED_FUNCTION_32_0();
        }

        *(v1 + 384) = v83;
        *(v1 + 360) = v81;
        *(v1 + 368) = v36;
        OUTLINED_FUNCTION_5_72();
        sub_267ECE45C();
        sub_267B9F98C(v1 + 360, &qword_28022AEF0, &qword_267EFCDE0);
        v65 = v187;
      }

      else
      {
      }
    }
  }

  v92 = *(v1 + 424);
  v93 = sub_267EF4918();
  v94 = v93;
  *(v1 + 584) = v93;
  if (!v22)
  {
    v95 = sub_267BCEA0C(v93);
    if (!v95)
    {
      goto LABEL_80;
    }

    v96 = v95;
    v97 = sub_267BCEA0C(v64);
    if (!v97)
    {
      goto LABEL_38;
    }

    v98 = v97;
    if (*(v65 + 128))
    {

LABEL_38:

      goto LABEL_80;
    }

    v188 = v65;
    v190 = v64;
    v99 = *(v65 + 120);
    OUTLINED_FUNCTION_197_1();
    if (!v8)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v100 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v100, qword_280240FB0);
    v101 = sub_267EF89F8();
    v102 = sub_267EF95D8();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = OUTLINED_FUNCTION_32();
      *v103 = 0;
      _os_log_impl(&dword_267B93000, v101, v102, "#SendMessageNeedsValueFlowStrategy needsValue after unsupported, inserting recipient", v103, 2u);
      OUTLINED_FUNCTION_42_0();
    }

    v65 = v188;
    *(v188 + 120) = 0;
    *(v188 + 128) = 1;
    v104 = sub_267BAF0DC(v96);
    if ((v104 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v105 = v104;
    if (v99 >= v104)
    {
      if (sub_267BAF0DC(v96) != v99)
      {

        v132 = sub_267EF89F8();
        v133 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_5_2(v133))
        {
          v134 = swift_slowAlloc();
          *v134 = 134218240;
          *(v134 + 4) = v99;
          *(v134 + 12) = 2048;
          v135 = sub_267BAF0DC(v96);

          *(v134 + 14) = v135;

          OUTLINED_FUNCTION_109_10();
          _os_log_impl(v136, v137, v138, v139, v140, 0x16u);
          OUTLINED_FUNCTION_42_0();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v64 = v190;
LABEL_80:
        v36 = *(v1 + 488);
        sub_267D293AC(v36);
        v141 = sub_267D295F8(v36);
        sub_267D292FC(v141);
        sub_267D295A8();
        if (sub_267BCEA0C(v64))
        {
        }

        else
        {
          sub_267ED9A2C(v64);
          if (v142)
          {

            OUTLINED_FUNCTION_197_1();
            if (!v8)
            {
              OUTLINED_FUNCTION_0_10();
              swift_once();
            }

            v143 = sub_267EF8A08();
            OUTLINED_FUNCTION_30_1(v143, qword_280240FB0);
            v144 = sub_267EF89F8();
            v145 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_5_2(v145))
            {
              v36 = OUTLINED_FUNCTION_32();
              *v36 = 0;
              OUTLINED_FUNCTION_109_10();
              _os_log_impl(v146, v147, v148, v149, v150, 2u);
              OUTLINED_FUNCTION_42_0();
            }

            *(v1 + 296) = 0u;
            *(v1 + 312) = 0u;
            OUTLINED_FUNCTION_5_72();
            sub_267ECE45C();
            sub_267B9F98C(v1 + 296, &qword_28022AEF0, &qword_267EFCDE0);
          }
        }

        goto LABEL_88;
      }

      if (v99 < 0)
      {
        goto LABEL_108;
      }
    }

    sub_267C74A48();
    sub_267C74A48();
    if ((v96 & 0xC000000000000001) != 0)
    {

      if (v99)
      {
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        v106 = 0;
        do
        {
          v107 = v106 + 1;
          sub_267EF9B98();
          v106 = v107;
        }

        while (v99 != v107);
      }

      if (v96 >> 62)
      {

        v108 = sub_267EF9CC8();
        v180 = v109;
        v182 = v110;
        v112 = v111;
        v113 = 0;
        goto LABEL_55;
      }
    }

    else
    {
    }

    v108 = v96 & 0xFFFFFFFFFFFFFF8;
    v180 = (v96 & 0xFFFFFFFFFFFFFF8) + 32;
    v182 = 0;
    v113 = 1;
    v112 = (2 * v99) | 1;
LABEL_55:
    v114 = sub_267D326D0(v98);
    v115 = sub_267ED99E4(v114, 0);
    *&v191 = v108;
    *(&v191 + 1) = v180;
    *&v192 = v182;
    *(&v192 + 1) = v112;
    v92 = &v191;
    sub_267EDAB3C(v115, v116, v117, v118);
    if (v105 >= v99)
    {
      v183 = v192;
      v185 = v191;
      sub_267C74A48();
      if ((v96 & 0xC000000000000001) == 0 || v99 == v105)
      {

LABEL_63:

        if (v113)
        {
          v121 = (v96 & 0xFFFFFFFFFFFFFF8);
          v122 = (v96 & 0xFFFFFFFFFFFFFF8) + 32;
          v123 = (2 * v105) | 1;
        }

        else
        {
          v121 = sub_267EF9CC8();
          v122 = v124;
          v99 = v125;
          v123 = v126;
        }

        v191 = v185;
        v192 = v183;
        sub_267EDAB3C(v121, v122, v99, v123);
        v127 = *(&v191 + 1);
        v92 = v191;
        v128 = v192;
        if ((BYTE8(v192) & 1) == 0)
        {
          goto LABEL_67;
        }

        sub_267EF9ED8();
        swift_unknownObjectRetain_n();
        v130 = swift_dynamicCastClass();
        v65 = v188;
        if (!v130)
        {
          swift_unknownObjectRelease();
          v130 = MEMORY[0x277D84F90];
        }

        v131 = *(v130 + 16);

        if (!__OFSUB__(*(&v128 + 1) >> 1, v128))
        {
          if (v131 == (*(&v128 + 1) >> 1) - v128)
          {
            swift_dynamicCastClass();
            OUTLINED_FUNCTION_156_2();
            swift_unknownObjectRelease_n();
            v64 = v190;
            if (v127)
            {
LABEL_75:
              sub_267ECEE14(v127);
              OUTLINED_FUNCTION_25_0();

              *(v1 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A340, &unk_267F00A50);
              *(v1 + 328) = v92;
              OUTLINED_FUNCTION_5_72();
              sub_267ECE45C();
              sub_267B9F98C(v1 + 328, &qword_28022AEF0, &qword_267EFCDE0);
              goto LABEL_80;
            }

            v127 = MEMORY[0x277D84F90];
LABEL_74:
            swift_unknownObjectRelease();
            goto LABEL_75;
          }

          goto LABEL_111;
        }

LABEL_110:
        __break(1u);
LABEL_111:
        swift_unknownObjectRelease_n();
LABEL_67:
        sub_267C73BFC();
        v127 = v129;
        v65 = v188;
        v64 = v190;
        goto LABEL_74;
      }

      if (v99 < v105)
      {
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        OUTLINED_FUNCTION_25_0();

        v119 = v99;
        do
        {
          v120 = v119 + 1;
          sub_267EF9B98();
          v119 = v120;
        }

        while (v105 != v120);
        goto LABEL_63;
      }

LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    goto LABEL_107;
  }

LABEL_88:
  sub_267ECE5F0();
  v151 = [v94 speakableGroupName];
  if (v151)
  {

    v153 = sub_267D2904C(v152);
    sub_267D294C0(v153, v154);
  }

  v155 = v64;
  v156 = *(sub_267C7A4A0() + 16);

  v157 = v155;
  if (v156)
  {
    v157 = sub_267EF4918();
    v158 = sub_267C7A4A0();

    sub_267C7A414(v158);
  }

  sub_267BCE788(v94);
  v159 = sub_267BCEA0C(v94);
  if (v159 && (sub_267BAF0DC(v159), v160 = OUTLINED_FUNCTION_20_33(), v36))
  {
    v161 = sub_267D29108(v160);
    if (!v161)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v161 = sub_267EF8F28();
    }

    v162 = v161;
    v163 = sub_267D29108(v161);
    if (!v163)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v163 = sub_267EF8F28();
    }

    v164 = sub_267ECE20C(v163, v162);
    if (*(v65 + 88))
    {
      v165 = *(v65 + 88);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v165 = sub_267EF8F28();
    }

    *(v65 + 88) = sub_267ECE20C(v165, v164);
  }

  else
  {
    *(v65 + 88) = 0;
  }

  v166 = *(v1 + 432);

  v167 = sub_267EF4918();
  [v167 _setLaunchId_];

  v168 = sub_267EF4918();
  *(v1 + 592) = v168;
  __swift_project_boxed_opaque_existential_0(v166 + 2, v166[5]);
  v169 = OUTLINED_FUNCTION_10_3();
  v170(v169);
  OUTLINED_FUNCTION_121_6(v166 + 2);
  v171 = OUTLINED_FUNCTION_10_3();
  v172(v171);
  __swift_project_boxed_opaque_existential_0((v1 + 136), *(v1 + 160));
  OUTLINED_FUNCTION_10_3();
  v173 = sub_267EF3C28();
  v174 = v166[6];
  __swift_project_boxed_opaque_existential_0(v166 + 2, v166[5]);
  v175 = OUTLINED_FUNCTION_25_0();
  v176(v175, v174);
  __swift_project_boxed_opaque_existential_0((v1 + 176), *(v1 + 200));
  OUTLINED_FUNCTION_25_0();
  sub_267EF3B78();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 600) = v177;
  *v177 = v178;
  v177[1] = sub_267ED1DE4;
  v179 = *(v1 + 480);

  return sub_267E0BF50(v1 + 16, v168, v1 + 96, v173 & 1, v179);
}

uint64_t sub_267ED1DE4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 608) = v0;

  v7 = OUTLINED_FUNCTION_108();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ED1F4C()
{
  v68 = v1;
  v2 = *(*(v1 + 576) + 136);
  if (*(v1 + 616) - 1 < 3)
  {
    *(v1 + 216) = 0u;
    v3 = *(v1 + 584);
    v4 = *(v1 + 432);
    *(v1 + 232) = 0u;
    *(v1 + 248) = 0;
    v5 = v2;

    sub_267C3A088();
    sub_267B9F98C(v1 + 216, &qword_280229508, &unk_267EFD960);
    __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender), *(v4 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24));
    sub_267EF3B18();
    v6 = [v3 typeName];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;

    v8 = v3;
    OUTLINED_FUNCTION_230_1();
    OUTLINED_FUNCTION_214_0(11, v9, v10, v11, sub_267E83964);
    sub_267EF3848();
LABEL_5:

    goto LABEL_6;
  }

  if (!*(v1 + 616))
  {
    v12 = *(v1 + 584);
    v13 = *(v1 + 432);
    v14 = *(*(v1 + 576) + 136);

    sub_267C3911C(v12, 1);
    __swift_project_boxed_opaque_existential_0((v13 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender), *(v13 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender + 24));
    sub_267EF3B18();
    v15 = [v12 typeName];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;

    v17 = v12;
    OUTLINED_FUNCTION_230_1();
    OUTLINED_FUNCTION_214_0(20, v18, v19, v20, sub_267E83948);
    sub_267EF3848();
    goto LABEL_5;
  }

  v54 = qword_280228818;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v55 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v55, qword_280240FB0);
  v56 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = *(v1 + 616);
    OUTLINED_FUNCTION_48();
    *&v67[0] = OUTLINED_FUNCTION_64_2();
    *v0 = 136315138;
    v59 = sub_267C7C28C(v58);
    v61 = sub_267BA33E8(v59, v60, v67);

    *(v0 + 4) = v61;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_26();
  }

LABEL_6:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v21 = *(v1 + 584);
  v22 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
  v23 = v21;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v1 + 584);
    v27 = *(v1 + 616);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_52();
    *&v67[0] = v30;
    *v28 = 136315394;
    v31 = sub_267C7C28C(v27);
    v33 = sub_267BA33E8(v31, v32, v67);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2112;
    *(v28 + 14) = v26;
    *v29 = v26;
    v34 = v26;
    _os_log_impl(&dword_267B93000, v24, v25, "#SendMessageNeedsValueFlowStrategy from slot:%s updated intent: %@", v28, 0x16u);
    sub_267B9F98C(v29, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_29_1();
  }

  v35 = *(v1 + 584);
  v36 = sub_267EF89F8();
  v37 = sub_267EF95D8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_48();
    *&v67[0] = OUTLINED_FUNCTION_52();
    *v38 = 136315138;
    *(v1 + 392) = sub_267C7A584();
    *(v1 + 400) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v40 = sub_267EF9098();
    v42 = sub_267BA33E8(v40, v41, v67);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_267B93000, v36, v37, "#SendMessageNeedsValueFlowStrategy updated intent app bundle id: %s", v38, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_42_0();
  }

  v43 = *(v1 + 568);
  OUTLINED_FUNCTION_86_12();
  sub_267ECE8D0(v44, &qword_28022AE60, 0x277CD4078, v45, v67);
  sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  sub_267EF4388();

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v46 = OUTLINED_FUNCTION_290();
  v47(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297B0, &unk_267EFE4E0);
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);

  OUTLINED_FUNCTION_1();

  return v52();
}

uint64_t sub_267ED2584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 568);

  __swift_destroy_boxed_opaque_existential_0((v10 + 16));
  v12 = OUTLINED_FUNCTION_130();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_0((v10 + 176));
  __swift_destroy_boxed_opaque_existential_0((v10 + 136));
  OUTLINED_FUNCTION_174_1();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_267ED2660()
{
  OUTLINED_FUNCTION_12();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v4);
  v1[34] = OUTLINED_FUNCTION_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v1[35] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[36] = v6;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v7 = sub_267EF4228();
  v1[39] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[40] = v8;
  v1[41] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF44C8();
  v1[42] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[43] = v10;
  v1[44] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267ED27EC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 400) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267ED2904()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ED2A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_116();
  a24 = v26;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v30 = *(v26 + 256);
  v31 = sub_267EF8A08();
  v32 = __swift_project_value_buffer(v31, qword_280240FB0);
  v33 = OUTLINED_FUNCTION_108();
  v34(v33);
  v35 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v26 + 352);
    a11 = *(v26 + 336);
    a12 = *(v26 + 360);
    v38 = *(v26 + 304);
    v39 = *(v26 + 280);
    v40 = *(v26 + 288);
    OUTLINED_FUNCTION_48();
    v66 = OUTLINED_FUNCTION_55_0();
    a15 = v66;
    *v32 = 136315138;
    sub_267EF4938();
    sub_267EF44B8();
    v41 = OUTLINED_FUNCTION_186_2();
    a12(v41, a11);
    (*(v40 + 8))(v38, v39);
    v42 = sub_267BA33E8(v37, v27, &a15);

    *(v32 + 4) = v42;
    OUTLINED_FUNCTION_52_18(&dword_267B93000, v43, v30, "#SendMessageNeedsValueFlowStrategy prompting value for parameter %s");
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v44 = OUTLINED_FUNCTION_108();
    v45(v44);
  }

  v47 = *(v26 + 320);
  v46 = *(v26 + 328);
  v67 = *(v26 + 376);
  v68 = *(v26 + 312);
  v49 = *(v26 + 264);
  v48 = *(v26 + 272);
  v50 = *(v26 + 248);
  __swift_project_boxed_opaque_existential_0((v49 + 16), *(v49 + 40));
  OUTLINED_FUNCTION_233_0();
  v51 = OUTLINED_FUNCTION_61_4();
  v52(v51);
  __swift_project_boxed_opaque_existential_0((v49 + 16), *(v49 + 40));
  v53 = OUTLINED_FUNCTION_61_4();
  v54(v53);
  OUTLINED_FUNCTION_62_1((v26 + 56), *(v26 + 80));
  OUTLINED_FUNCTION_61_4();
  sub_267EF3BC8();
  sub_267BB93FC();
  v55 = sub_267EF4CC8();
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0;
  *(v26 + 96) = 0u;
  v56 = MEMORY[0x277D5C1D8];
  v50[3] = v55;
  v50[4] = v56;
  __swift_allocate_boxed_opaque_existential_0(v50);
  sub_267EF3F68();

  sub_267B9F98C(v26 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v48, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v26 + 16));
  (*(v47 + 8))(v46, v68);
  __swift_destroy_boxed_opaque_existential_0((v26 + 56));
  OUTLINED_FUNCTION_164_2();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_89();

  return v58(v57, v58, v59, v60, v61, v62, v63, v64, v26 + 96, a10, a11, a12, v67, v68, a15, a16, a17, a18);
}

uint64_t sub_267ED2D50()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_163_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_267ED2DD8()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_163_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_267ED2E60()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 440);

  OUTLINED_FUNCTION_163_3();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_267ED2EF8()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 376) = v2;
  *(v1 + 160) = v3;
  *(v1 + 168) = v0;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  v6 = sub_267EF48A8();
  *(v1 + 176) = v6;
  OUTLINED_FUNCTION_30_0(v6);
  *(v1 + 184) = v7;
  *(v1 + 192) = OUTLINED_FUNCTION_2();
  v8 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  *(v1 + 200) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v1 + 208) = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ED2FC8()
{
  OUTLINED_FUNCTION_90();
  v45 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v3 = sub_267EF8A08();
  *(v1 + 216) = __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v5))
  {
    v6 = *(v1 + 376);
    OUTLINED_FUNCTION_48();
    v7 = OUTLINED_FUNCTION_55_0();
    v44[0] = v7;
    *v2 = 136315138;
    v8 = sub_267C7C28C(v6);
    v10 = sub_267BA33E8(v8, v9, v44);

    *(v2 + 4) = v10;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v16 = *(v1 + 376);
  *(v1 + 136) = 0;
  if (v16 != 3)
  {
    if (!v16)
    {
      __swift_project_boxed_opaque_existential_0((*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
      OUTLINED_FUNCTION_20_37(&dword_267F017A8);

      v17 = swift_task_alloc();
      *(v1 + 224) = v17;
      *v17 = v1;
      v17[1] = sub_267ED33C4;
      OUTLINED_FUNCTION_46_10();

      __asm { BR              X2 }
    }

    goto LABEL_18;
  }

  if ((sub_267EF96C8() & 1) == 0)
  {
    if (sub_267EF96E8())
    {
      v24 = *(v1 + 160);
      __swift_project_boxed_opaque_existential_0((*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(*(v1 + 168) + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
      OUTLINED_FUNCTION_9_59(dword_267F017B0);

      v25 = v24;
      v26 = swift_task_alloc();
      *(v1 + 288) = v26;
      *v26 = v1;
      v26[1] = sub_267ED3B88;
      OUTLINED_FUNCTION_46_10();

      __asm { BR              X4 }
    }

LABEL_18:
    v29 = sub_267EF89F8();
    sub_267EF95E8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v1 + 376);
      OUTLINED_FUNCTION_48();
      v44[0] = OUTLINED_FUNCTION_64_2();
      *v0 = 136315138;
      v32 = sub_267C7C28C(v31);
      v34 = sub_267BA33E8(v32, v33, v44);

      *(v0 + 4) = v34;
      OUTLINED_FUNCTION_21();
      _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_26();
    }

    v40 = sub_267C4BE60();
    OUTLINED_FUNCTION_61_1(&type metadata for Errors, v40);
    *v41 = xmmword_267EFC050;
    swift_willThrow();
    OUTLINED_FUNCTION_130_2();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_46_10();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 248) = v20;
  *v20 = v21;
  v20[1] = sub_267ED353C;
  OUTLINED_FUNCTION_46_10();

  return sub_267ED8070();
}

uint64_t sub_267ED33C4()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 232) = v0;

  if (!v0)
  {
    *(v5 + 240) = v3;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ED34CC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267ED353C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ED3620()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v1 = v0[26];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  OUTLINED_FUNCTION_62_1((v2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns), *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns + 24));
  v5 = swift_task_alloc();
  v0[32] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v4;
  v5[6] = v0 + 17;
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_267ED3724;
  OUTLINED_FUNCTION_40();

  return sub_267CC2F4C();
}

uint64_t sub_267ED3724()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 272) = v0;

  if (!v0)
  {
    *(v4 + 280) = v3;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED3854()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 208);
  v3 = *(v0 + 280);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v2, v4);
  v5 = *(v0 + 280);
  *(v0 + 312) = v5;
  v6 = v5;
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v9 = [v6 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v10 = OUTLINED_FUNCTION_61_4();
    v13 = sub_267BA33E8(v10, v11, v12);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_210_1();
  OUTLINED_FUNCTION_129_4();
  if (!v19)
  {

LABEL_13:
    if ((sub_267EF4878() & 1) == 0)
    {
      v37 = [*(v0 + 312) visual];
      if (v37)
      {
        OUTLINED_FUNCTION_263_1(v37);
        OUTLINED_FUNCTION_262_1();
        v38 = OUTLINED_FUNCTION_37_1();
        sub_267BBE0DC(v38, v39);
        v37 = sub_267EF47C8();
      }

      else
      {
        v40 = 0;
      }

      OUTLINED_FUNCTION_120_8(v37, v40);
    }

    v41 = OUTLINED_FUNCTION_260_1();
    OUTLINED_FUNCTION_97(v41);
    v42 = sub_267EF4188();
    v43 = OUTLINED_FUNCTION_28_37(v42);
    v44(v43);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_7_1();
    sub_267EF3C48();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 360) = v45;
    *v45 = v46;
    OUTLINED_FUNCTION_8_61(v45);
    OUTLINED_FUNCTION_46();

    return sub_267BCF3A4(v47, v48, v49, v50, v51);
  }

  sub_267ED9A8C(v6);
  OUTLINED_FUNCTION_74_0();

  if (v8 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v20 = OUTLINED_FUNCTION_108();
  sub_267BBE0C8(v20, v21);
  *(v0 + 120) = &type metadata for Features;
  v22 = sub_267BAFCAC();
  OUTLINED_FUNCTION_303_0(v22);
  OUTLINED_FUNCTION_381();
  if ((v7 & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v0 + 136);
  *(v0 + 328) = v23;
  if (!v23)
  {
    goto LABEL_13;
  }

  v23;
  v24 = sub_267EF89F8();
  v25 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v25))
  {
    v26 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v26);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v27, v28, v29, v30, v31, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v32 = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_89_9(v32);
  *v33 = v34;
  OUTLINED_FUNCTION_26_38(v33);
  OUTLINED_FUNCTION_46();

  return sub_267CA9190();
}

uint64_t sub_267ED3B0C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v0, v1);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267ED3B88()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267ED3C90()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v2 = *(v0 + 304);
  *(v0 + 312) = v2;
  v3 = v2;
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_81_1();
    *v1 = 136315138;
    v6 = [v3 patternId];
    sub_267EF9028();
    OUTLINED_FUNCTION_100_2();
    v7 = OUTLINED_FUNCTION_61_4();
    v10 = sub_267BA33E8(v7, v8, v9);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_210_1();
  OUTLINED_FUNCTION_129_4();
  if (!v16)
  {

LABEL_13:
    if ((sub_267EF4878() & 1) == 0)
    {
      v34 = [*(v0 + 312) visual];
      if (v34)
      {
        OUTLINED_FUNCTION_263_1(v34);
        OUTLINED_FUNCTION_262_1();
        v35 = OUTLINED_FUNCTION_37_1();
        sub_267BBE0DC(v35, v36);
        v34 = sub_267EF47C8();
      }

      else
      {
        v37 = 0;
      }

      OUTLINED_FUNCTION_120_8(v34, v37);
    }

    v38 = OUTLINED_FUNCTION_260_1();
    OUTLINED_FUNCTION_97(v38);
    v39 = sub_267EF4188();
    v40 = OUTLINED_FUNCTION_28_37(v39);
    v41(v40);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_7_1();
    sub_267EF3C48();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 360) = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_8_61(v42);
    OUTLINED_FUNCTION_46();

    return sub_267BCF3A4(v44, v45, v46, v47, v48);
  }

  sub_267ED9A8C(v3);
  OUTLINED_FUNCTION_74_0();

  if (v5 >> 60 == 15)
  {
    goto LABEL_13;
  }

  v17 = OUTLINED_FUNCTION_108();
  sub_267BBE0C8(v17, v18);
  *(v0 + 120) = &type metadata for Features;
  v19 = sub_267BAFCAC();
  OUTLINED_FUNCTION_303_0(v19);
  OUTLINED_FUNCTION_381();
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = *(v0 + 136);
  *(v0 + 328) = v20;
  if (!v20)
  {
    goto LABEL_13;
  }

  v20;
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_27(v22))
  {
    v23 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v23);
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_29_1();
  }

  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_89_9(v29);
  *v30 = v31;
  OUTLINED_FUNCTION_26_38(v30);
  OUTLINED_FUNCTION_46();

  return sub_267CA9190();
}

uint64_t sub_267ED3F34()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267ED3FA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_30_13();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v4 + 344) = v0;

  if (!v0)
  {
    *(v4 + 377) = v1 & 1;
  }

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267ED40AC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 377);
  v2 = sub_267EF89F8();
  if (v1 == 1)
  {
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v4);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v5, v6, "#SendMessageNeedsValueFlowStrategy snippet updated, removing visual from pattern execution result");
      OUTLINED_FUNCTION_26();
    }

    v7 = *(v0 + 328);
    v8 = *(v0 + 312);

    [v8 setVisual_];
    sub_267EF4888();
  }

  else
  {
    sub_267EF95C8();
    OUTLINED_FUNCTION_64();
    v10 = os_log_type_enabled(v2, v9);
    v7 = *(v0 + 328);
    if (v10)
    {
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v11);
      OUTLINED_FUNCTION_60_16(&dword_267B93000, v12, v13, "#SendMessageNeedsValueFlowStrategy view not available, falling back to dialog");
      OUTLINED_FUNCTION_4_4();
    }
  }

  if ((sub_267EF4878() & 1) == 0)
  {
    v14 = [*(v0 + 312) visual];
    if (v14)
    {
      OUTLINED_FUNCTION_263_1(v14);
      OUTLINED_FUNCTION_262_1();
      v15 = OUTLINED_FUNCTION_37_1();
      sub_267BBE0DC(v15, v16);
      v14 = sub_267EF47C8();
    }

    else
    {
      v17 = 0;
    }

    OUTLINED_FUNCTION_120_8(v14, v17);
  }

  v18 = OUTLINED_FUNCTION_260_1();
  OUTLINED_FUNCTION_97(v18);
  v19 = sub_267EF4188();
  v20 = OUTLINED_FUNCTION_28_37(v19);
  v21(v20);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_7_1();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 360) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_8_61(v22);
  OUTLINED_FUNCTION_30_2();

  return sub_267BCF3A4(v24, v25, v26, v27, v28);
}

uint64_t sub_267ED4260()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 328);

  v2 = OUTLINED_FUNCTION_130();
  v3(v2);
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267ED42F8()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_130_2();

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267ED4394()
{
  OUTLINED_FUNCTION_12();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v3);
  v0[4] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267ED4418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a5;
  v6[43] = a6;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  v7 = sub_267EF82D8();
  v6[44] = v7;
  v6[45] = *(v7 - 8);
  v6[46] = swift_task_alloc();
  v8 = sub_267EF8598();
  v6[47] = v8;
  v6[48] = *(v8 - 8);
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  v6[50] = swift_task_alloc();
  v9 = sub_267EF8488();
  v6[51] = v9;
  v6[52] = *(v9 - 8);
  v6[53] = swift_task_alloc();
  v10 = sub_267EF8368();
  v6[54] = v10;
  v6[55] = *(v10 - 8);
  v6[56] = swift_task_alloc();
  v11 = sub_267EF8248();
  v6[57] = v11;
  v6[58] = *(v11 - 8);
  v6[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ED4714, 0, 0);
}

void *sub_267ED4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v21 = v20;
  v22 = *(v20 + 320);
  v23 = *(v20 + 328);
  v24 = *(v20 + 304);
  v25 = *(v20 + 312);
  v26 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  *(v20 + 544) = v26;
  *(v24 + v26[9]) = *(v25 + v26[9]);

  *(v24 + v26[14]) = *(v25 + v26[14]);

  sub_267BE855C(v25 + v26[20], v24 + v26[20]);
  v27 = *v24;
  *v24 = *v25;

  v28 = v26[10];
  v29 = *(v25 + v28);
  v30 = *(v25 + v28 + 8);
  v31 = v24 + v28;
  *v31 = v29;
  v31[8] = v30;
  OUTLINED_FUNCTION_121_6((v23 + 16));
  v32 = OUTLINED_FUNCTION_10_3();
  v33(v32);
  v34 = [v22 speakableGroupName];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_74_0();
  }

  else
  {
    v22 = *(v20 + 320);
    OUTLINED_FUNCTION_62_1((v20 + 16), *(v20 + 40));
    v27 = sub_267EF3C48();
    v37 = sub_267BCEA0C(v22);
    if (v27)
    {
      sub_267DA2578(v37);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_74_0();
  }

  v38 = *(v20 + 536);
  v39 = *(v20 + 304);
  *(v20 + 552) = v22;
  *(v20 + 560) = v27;
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  OUTLINED_FUNCTION_108();
  sub_267EF90F8();
  *(v20 + 568) = sub_267EF79B8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  sub_267BF3128(v38, v39 + v26[8], &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_27_11((v23 + 16));
  v44 = OUTLINED_FUNCTION_38_0();
  v45(v44);
  __swift_project_boxed_opaque_existential_0((v20 + 56), *(v20 + 80));
  OUTLINED_FUNCTION_38_0();
  v46 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v20 + 56));
  if (v46)
  {
    v47 = sub_267BCEA0C(*(v20 + 320));
    v48 = MEMORY[0x277D84F90];
    if (v47)
    {
      v49 = v47;
      v50 = sub_267BAF0DC(v47);
      if (v50)
      {
        v51 = v50;
        result = sub_267BE8B74(0, v50 & ~(v50 >> 63), 0);
        if (v51 < 0)
        {
          __break(1u);
          return result;
        }

        do
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v53 = OUTLINED_FUNCTION_17_4();
            v54 = MEMORY[0x26D609870](v53);
          }

          else
          {
            v54 = *(v49 + 32);
          }

          v55 = v54;
          sub_267BBD380(v54);

          a16 = v48;
          v57 = *(v48 + 16);
          v56 = *(v48 + 24);
          if (v57 >= v56 >> 1)
          {
            v59 = OUTLINED_FUNCTION_8_2(v56);
            sub_267BE8B74(v59, v57 + 1, 1);
          }

          OUTLINED_FUNCTION_194_1();
        }

        while (!v58);
      }
    }

    *(v21 + 576) = v48;
    v60 = sub_267BDAF74(*(v21 + 336));
    *(v21 + 616) = v60 & 1;
    if (v60)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v140 = v61;
      v62 = swift_task_alloc();
      *(v21 + 584) = v62;
      *v62 = v21;
      v62[1] = sub_267ED51A8;
      OUTLINED_FUNCTION_46_0();

      return v65(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, v140, a16, a17, a18, a19, a20);
    }

    v71 = *(v21 + 560);
    sub_267EF7C18();
    OUTLINED_FUNCTION_444();
    if (v58)
    {
      v73 = 0xE000000000000000;
    }

    else
    {
      v73 = v72;
    }

    a9 = v73;
    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_72();
    sub_267EF8238();
    OUTLINED_FUNCTION_251();
    if (v71)
    {
      v141 = v71;
      (*(*(v21 + 464) + 8))(*(v21 + 472), *(v21 + 456));

      a11 = *(v21 + 424);
      v137 = *(v21 + 400);
      v138 = *(v21 + 392);
      v139 = *(v21 + 368);

      OUTLINED_FUNCTION_17();
LABEL_39:
      OUTLINED_FUNCTION_46_0();

      return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, v137, v138, v139, v141, a16, a17, a18, a19, a20);
    }

    v74 = *(v21 + 568);
    v75 = *(v21 + 544);
    v76 = *(v21 + 528);
    v77 = *(v21 + 304);
    (*(*(v21 + 464) + 8))(*(v21 + 472), *(v21 + 456));
    v78 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v74);
    sub_267BF3128(v76, v77 + *(v75 + 28), &unk_28022AE30, &qword_267EFC0B0);
  }

  sub_267ED9A2C(*(v21 + 320));
  if (v81)
  {
    sub_267EF90F8();

    v82 = 0;
  }

  else
  {
    v82 = 1;
  }

  v83 = *(v21 + 544);
  v84 = *(v21 + 520);
  v85 = *(v21 + 304);
  __swift_storeEnumTagSinglePayload(v84, v82, 1, *(v21 + 568));
  sub_267BF3128(v84, v85 + *(v83 + 44), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v86 = OUTLINED_FUNCTION_38_0();
  v87(v86);
  __swift_project_boxed_opaque_existential_0((v21 + 96), *(v21 + 120));
  OUTLINED_FUNCTION_38_0();
  LOBYTE(v84) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v21 + 96));
  if (v84)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_27_11((*(v21 + 328) + 16));
  v88 = OUTLINED_FUNCTION_38_0();
  v89(v88);
  __swift_project_boxed_opaque_existential_0((v21 + 136), *(v21 + 160));
  OUTLINED_FUNCTION_38_0();
  v90 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v21 + 136));
  if (v90)
  {
    goto LABEL_34;
  }

  v91 = *(v21 + 320);
  sub_267ED9A2C(v91);
  OUTLINED_FUNCTION_444();
  sub_267ED9A2C(v91);
  if (v92)
  {
  }

  OUTLINED_FUNCTION_66();
  sub_267EF8358();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  v101 = *(v21 + 568);
  v102 = *(v21 + 544);
  v103 = *(v21 + 512);
  v104 = *(v21 + 344);
  v105 = *(v21 + 320);
  v106 = *(v21 + 304);
  (*(*(v21 + 440) + 8))(*(v21 + 448), *(v21 + 432));
  v107 = 1;
  v108 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v101);
  sub_267BF3128(v103, v106 + *(v102 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v111 = sub_267EF7C18();
  if (v112)
  {
    v113 = v111;
  }

  else
  {
    v113 = 0;
  }

  if (v112)
  {
    v114 = v112;
  }

  else
  {
    v114 = 0xE000000000000000;
  }

  sub_267DA133C(v105, v113, v114);
  OUTLINED_FUNCTION_20_33();
  v115 = *v104;
  *v104 = v103;

  if (*v104)
  {
    *(v21 + 296) = *v104;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v107 = 0;
  }

  v116 = *(v21 + 544);
  v117 = *(v21 + 504);
  v118 = *(v21 + 304);
  __swift_storeEnumTagSinglePayload(v117, v107, 1, *(v21 + 568));
  v119 = sub_267BF3128(v117, v118 + *(v116 + 52), &unk_28022AE30, &qword_267EFC0B0);
  sub_267BE84FC(v119);
  sub_267EF70D8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  OUTLINED_FUNCTION_22_0();
  sub_267EF8478();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  *(v21 + 592) = 0;
  v124 = *(v21 + 568);
  v125 = *(v21 + 544);
  v126 = *(v21 + 496);
  v127 = *(v21 + 304);
  (*(*(v21 + 416) + 8))(*(v21 + 424), *(v21 + 408));
  v128 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v124);
  sub_267BF3128(v126, v127 + *(v125 + 24), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v131 = OUTLINED_FUNCTION_38_0();
  v132(v131);
  __swift_project_boxed_opaque_existential_0((v21 + 176), *(v21 + 200));
  OUTLINED_FUNCTION_38_0();
  if ((sub_267EF3C18() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0((v21 + 176));
    goto LABEL_35;
  }

  *(v21 + 240) = &type metadata for Features;
  *(v21 + 248) = sub_267BAFCAC();
  *(v21 + 216) = 7;
  v133 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v21 + 216));
  __swift_destroy_boxed_opaque_existential_0((v21 + 176));
  if ((v133 & 1) == 0)
  {
LABEL_34:

LABEL_35:
    v137 = *(v21 + 424);
    v138 = *(v21 + 400);
    v139 = *(v21 + 392);
    v141 = *(v21 + 368);

    OUTLINED_FUNCTION_1();
    goto LABEL_39;
  }

  v134 = swift_task_alloc();
  *(v21 + 600) = v134;
  *v134 = v21;
  OUTLINED_FUNCTION_113_9(v134);
  OUTLINED_FUNCTION_46_0();

  return sub_267CA7E0C(v135);
}

uint64_t sub_267ED51A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 617) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267ED5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v87 = *(v18 + 528);
  sub_267EF7C18();
  OUTLINED_FUNCTION_444();
  if (v20)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = v19;
  }

  v86 = v21;
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_72();
  sub_267EF8238();
  sub_267EF8348();
  v22 = *(v18 + 568);
  v23 = *(v18 + 544);
  v24 = *(v18 + 528);
  v25 = *(v18 + 304);
  (*(*(v18 + 464) + 8))(*(v18 + 472), *(v18 + 456));
  v26 = 1;
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
  sub_267BF3128(v24, v25 + *(v23 + 28), &unk_28022AE30, &qword_267EFC0B0);
  sub_267ED9A2C(*(v18 + 320));
  if (v30)
  {
    sub_267EF90F8();

    v26 = 0;
  }

  v31 = *(v18 + 544);
  v32 = *(v18 + 520);
  v33 = *(v18 + 304);
  __swift_storeEnumTagSinglePayload(v32, v26, 1, *(v18 + 568));
  sub_267BF3128(v32, v33 + *(v31 + 44), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v34 = OUTLINED_FUNCTION_38_0();
  v35(v34);
  __swift_project_boxed_opaque_existential_0((v18 + 96), *(v18 + 120));
  OUTLINED_FUNCTION_38_0();
  sub_267EF3C48();
  OUTLINED_FUNCTION_381();
  if (v26)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_27_11((*(v18 + 328) + 16));
  v36 = OUTLINED_FUNCTION_38_0();
  v37(v36);
  __swift_project_boxed_opaque_existential_0((v18 + 136), *(v18 + 160));
  OUTLINED_FUNCTION_38_0();
  v38 = sub_267EF3C28();
  __swift_destroy_boxed_opaque_existential_0((v18 + 136));
  if (v38)
  {
    goto LABEL_8;
  }

  v48 = *(v18 + 320);
  sub_267ED9A2C(v48);
  OUTLINED_FUNCTION_444();
  sub_267ED9A2C(v48);
  if (v49)
  {
  }

  OUTLINED_FUNCTION_66();
  sub_267EF8358();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  v87 = 0;
  v50 = *(v18 + 568);
  v51 = *(v18 + 544);
  v52 = *(v18 + 512);
  v53 = *(v18 + 344);
  v54 = *(v18 + 320);
  v55 = *(v18 + 304);
  (*(*(v18 + 440) + 8))(*(v18 + 448), *(v18 + 432));
  v56 = 1;
  v57 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v50);
  sub_267BF3128(v52, v55 + *(v51 + 48), &unk_28022AE30, &qword_267EFC0B0);
  v60 = sub_267EF7C18();
  if (v61)
  {
    v62 = v60;
  }

  else
  {
    v62 = 0;
  }

  if (v61)
  {
    v63 = v61;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  sub_267DA133C(v54, v62, v63);
  OUTLINED_FUNCTION_20_33();
  v64 = *v53;
  *v53 = v52;

  if (*v53)
  {
    *(v18 + 296) = *v53;
    sub_267BA9F38(0, &unk_28022BB50, 0x277D473F0);
    sub_267EF8348();
    v56 = 0;
  }

  v65 = *(v18 + 544);
  v66 = *(v18 + 504);
  v67 = *(v18 + 304);
  __swift_storeEnumTagSinglePayload(v66, v56, 1, *(v18 + 568));
  v68 = sub_267BF3128(v66, v67 + *(v65 + 52), &unk_28022AE30, &qword_267EFC0B0);
  sub_267BE84FC(v68);
  sub_267EF70D8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  OUTLINED_FUNCTION_22_0();
  sub_267EF8478();
  OUTLINED_FUNCTION_228_1();
  sub_267EF8348();
  *(v18 + 592) = 0;
  v73 = *(v18 + 568);
  v74 = *(v18 + 544);
  v75 = *(v18 + 496);
  v76 = *(v18 + 304);
  (*(*(v18 + 416) + 8))(*(v18 + 424), *(v18 + 408));
  v77 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v73);
  sub_267BF3128(v75, v76 + *(v74 + 24), &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_11_54();
  v80 = OUTLINED_FUNCTION_38_0();
  v81(v80);
  __swift_project_boxed_opaque_existential_0((v18 + 176), *(v18 + 200));
  OUTLINED_FUNCTION_38_0();
  if ((sub_267EF3C18() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0((v18 + 176));
    goto LABEL_9;
  }

  *(v18 + 240) = &type metadata for Features;
  *(v18 + 248) = sub_267BAFCAC();
  *(v18 + 216) = 7;
  v82 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v18 + 216));
  __swift_destroy_boxed_opaque_existential_0((v18 + 176));
  if ((v82 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    OUTLINED_FUNCTION_122_6();

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_89();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, v86, a10, a11, a12, a13, v87, a15, a16, a17, a18);
  }

  v83 = swift_task_alloc();
  *(v18 + 600) = v83;
  *v83 = v18;
  OUTLINED_FUNCTION_113_9(v83);
  OUTLINED_FUNCTION_89();

  return sub_267CA7E0C(v84);
}

uint64_t sub_267ED5944()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 608) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267ED5A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  if (!*(v18[76] + 16))
  {
    sub_267EF7C18();
  }

  v19 = v18[74];
  sub_267EF8588();
  sub_267EF8348();
  v51 = v19;
  if (v19)
  {
    (*(v18[48] + 8))(v18[49], v18[47]);

    OUTLINED_FUNCTION_123_3();

    OUTLINED_FUNCTION_17();
  }

  else
  {
    v20 = v18[71];
    a10 = v18[69];
    a11 = v18[70];
    v21 = v18[68];
    v22 = v18[61];
    v23 = v18[43];
    a12 = v18[44];
    a13 = v18[60];
    v24 = v18[41];
    v25 = v18[38];
    (*(v18[48] + 8))(v18[49], v18[47]);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v20);
    sub_267BF3128(v22, v25 + *(v21 + 20), &unk_28022AE30, &qword_267EFC0B0);
    __swift_project_boxed_opaque_existential_0((v24 + 16), *(v24 + 40));
    v29 = OUTLINED_FUNCTION_50_3();
    v30(v29);
    sub_267DA1EB4();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_0(v18 + 32);
    v33 = *v23;
    sub_267EF7C18();
    OUTLINED_FUNCTION_444();
    v34 = v32;
    sub_267EF82C8();
    sub_267EF8348();
    v44 = v18[71];
    v45 = v18[68];
    v46 = v18[60];
    v47 = v18[38];
    (*(v18[45] + 8))(v18[46], v18[44]);

    v48 = OUTLINED_FUNCTION_57_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v44);
    sub_267BF3128(v46, v47 + *(v45 + 60), &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_122_6();

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_89();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, v51, a15, a16, a17, a18);
}

uint64_t sub_267ED5DA8()
{
  OUTLINED_FUNCTION_12();
  v0[19] = v1;
  v0[20] = v2;
  v0[17] = v3;
  v0[18] = v4;
  v5 = sub_267EF8248();
  v0[21] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v0[22] = v6;
  v0[23] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  v0[24] = OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267ED63BC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 241) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267ED64A4()
{
  OUTLINED_FUNCTION_90();
  sub_267EF7C18();
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_72();
  sub_267EF8238();
  sub_267EF8348();
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[17];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_267EF79B8();
  OUTLINED_FUNCTION_240_1();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_267BF3128(v2, v3 + *(v1 + 20), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_267ED6624()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 466) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = v0;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 216) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF84F8();
  *(v1 + 224) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v1 + 232) = v8;
  *(v1 + 240) = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_30_0(v9);
  *(v1 + 248) = v10;
  *(v1 + 256) = *(v11 + 64);
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  v12 = sub_267EF48A8();
  *(v1 + 280) = v12;
  OUTLINED_FUNCTION_30_0(v12);
  *(v1 + 288) = v13;
  *(v1 + 296) = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v14);
  *(v1 + 304) = OUTLINED_FUNCTION_2();
  v15 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 312) = OUTLINED_FUNCTION_2();
  v16 = type metadata accessor for SendMessageAskForPayloadParameters(0);
  *(v1 + 320) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v1 + 328) = OUTLINED_FUNCTION_2();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267ED6828()
{
  OUTLINED_FUNCTION_29();
  v20 = v1;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = sub_267EF8A08();
  *(v1 + 336) = __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 466);
    OUTLINED_FUNCTION_48();
    v6 = OUTLINED_FUNCTION_64_2();
    v19 = v6;
    *v0 = 136315138;
    *(v1 + 465) = v5;
    v7 = sub_267EF9098();
    v9 = sub_267BA33E8(v7, v8, &v19);

    *(v0 + 4) = v9;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_26();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 344) = v15;
  *v15 = v16;
  v15[1] = sub_267ED69A8;
  OUTLINED_FUNCTION_91_0();

  return sub_267ED8070();
}

uint64_t sub_267ED69A8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ED6A8C()
{
  OUTLINED_FUNCTION_57_2();
  v1 = *(v0 + 466);
  if (*(v0 + 466))
  {
    if (v1 == 3)
    {
      type metadata accessor for SendMessageCATsSimple(0);
      sub_267EF7B68();
      *(v0 + 352) = sub_267EF79E8();
      v2 = swift_task_alloc();
      *(v0 + 360) = v2;
      *v2 = v0;
      v2[1] = sub_267ED6E24;
      OUTLINED_FUNCTION_15();

      return sub_267E9AD54();
    }

    else
    {
      v7 = *(v0 + 328);
      sub_267EF9B68();
      MEMORY[0x26D608E60](0xD000000000000031, 0x8000000267F1D740);
      *(v0 + 464) = v1;
      v8 = sub_267EF9098();
      MEMORY[0x26D608E60](v8);

      v9 = sub_267C266B0();
      OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v9);
      *v10 = 0;
      v10[1] = 0xE000000000000000;
      swift_willThrow();
      OUTLINED_FUNCTION_2_74();
      sub_267EDB680(v7, v11);
      OUTLINED_FUNCTION_68_15();

      OUTLINED_FUNCTION_17();

      return v12();
    }
  }

  else
  {
    type metadata accessor for SendMessageCATsSimple(0);
    sub_267EF7B68();
    *(v0 + 376) = sub_267EF79E8();
    sub_267ECFBDC();
    OUTLINED_FUNCTION_424();
    v5 = 1;
    switch(v6)
    {
      case 1:
        OUTLINED_FUNCTION_516();
        goto LABEL_12;
      case 2:
        OUTLINED_FUNCTION_125_7();
        goto LABEL_12;
      case 3:
        goto LABEL_13;
      default:
LABEL_12:
        sub_267EF90F8();

        v5 = 0;
LABEL_13:
        sub_267EF79B8();
        v13 = OUTLINED_FUNCTION_240_1();
        __swift_storeEnumTagSinglePayload(v13, v5, 1, v14);
        v15 = swift_task_alloc();
        *(v0 + 384) = v15;
        *v15 = v0;
        v15[1] = sub_267ED70F4;

        result = sub_267E9B3A4();
        break;
    }
  }

  return result;
}

uint64_t sub_267ED6E24()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_22_2();
  *v5 = *v1;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ED6F40()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 144);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  *(v1 + 400) = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_26_0();
  v6(v8);
  v9 = v4[7];
  v10 = [v3 speakableGroupName];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_238_0();
  }

  else
  {
    OUTLINED_FUNCTION_62_1((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_63();
    sub_267EF3C48();
    v13 = OUTLINED_FUNCTION_54_1();
    v11 = sub_267BCEA0C(v13);
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_1_10();
      sub_267DA2578(v14);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_238_0();
  }

  OUTLINED_FUNCTION_208_1();
  sub_267ED9A2C(v11);
  if (v15)
  {

    LOBYTE(v9) = 0;
  }

  else if (OUTLINED_FUNCTION_207_0() == v9 && v16 == 0xE700000000000000)
  {

    LOBYTE(v9) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_58_1();
  }

  *(v1 + 467) = v9 & 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_101_9(v18);
  OUTLINED_FUNCTION_122();

  return sub_267CA8174(v20, v21);
}

uint64_t sub_267ED70F4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v3[20] = v2;
  v3[21] = v5;
  v3[22] = v0;
  OUTLINED_FUNCTION_22_2();
  *v6 = *v2;
  *(v7 + 392) = v0;

  OUTLINED_FUNCTION_22_2();
  sub_267B9F98C(*(v1 + 304), &unk_28022AE30, &qword_267EFC0B0);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267ED723C()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  *(v1 + 400) = v2;
  v5 = v4[6];
  OUTLINED_FUNCTION_62_1(v4 + 2, v4[5]);
  v6 = *(v5 + 8);
  v7 = v2;
  v8 = OUTLINED_FUNCTION_26_0();
  v6(v8);
  v9 = v4[7];
  v10 = [v3 speakableGroupName];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 spokenPhrase];
    sub_267EF9028();
    OUTLINED_FUNCTION_238_0();
  }

  else
  {
    OUTLINED_FUNCTION_62_1((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_63();
    sub_267EF3C48();
    v13 = OUTLINED_FUNCTION_54_1();
    v11 = sub_267BCEA0C(v13);
    if (v0)
    {
      v14 = OUTLINED_FUNCTION_1_10();
      sub_267DA2578(v14);
    }

    else
    {
      sub_267DA2180();
    }

    OUTLINED_FUNCTION_238_0();
  }

  OUTLINED_FUNCTION_208_1();
  sub_267ED9A2C(v11);
  if (v15)
  {

    LOBYTE(v9) = 0;
  }

  else if (OUTLINED_FUNCTION_207_0() == v9 && v16 == 0xE700000000000000)
  {

    LOBYTE(v9) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_58_1();
  }

  *(v1 + 467) = v9 & 1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 424) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_101_9(v18);
  OUTLINED_FUNCTION_122();

  return sub_267CA8174(v20, v21);
}

uint64_t sub_267ED73F0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267ED74D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  HIDWORD(a15) = *(v20 + 467);
  v72 = *(v20 + 416);
  v21 = *(v20 + 264);
  v70 = *(v20 + 272);
  v71 = *(v20 + 240);
  v22 = *(v20 + 208);
  v23 = *(v20 + 200);
  v24 = v22[6];
  v73 = *(v20 + 466);
  OUTLINED_FUNCTION_62_1(v22 + 2, v22[5]);
  v25 = *(v24 + 8);

  v26 = OUTLINED_FUNCTION_199();
  v25(v26);
  OUTLINED_FUNCTION_131((v20 + 56));
  OUTLINED_FUNCTION_395();
  sub_267BCD18C(v27, v28);
  sub_267EF81F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_267C6AD4C(v70, v21, &qword_28022BB20, &unk_267F092D0);
  v33 = v23;
  LOBYTE(a9) = BYTE4(a15);
  OUTLINED_FUNCTION_243_1();
  sub_267EF84E8();
  __swift_destroy_boxed_opaque_existential_0((v20 + 56));
  if (sub_267ED7FE4(v73))
  {
    v34 = *(v20 + 467);
    v36 = *(v20 + 408);
    v35 = *(v20 + 416);
    v37 = *(v20 + 264);
    v38 = *(v20 + 248);
    v40 = *(v20 + 200);
    v39 = *(v20 + 208);
    v41 = *(v20 + 192);
    sub_267C6AD4C(*(v20 + 272), v37, &qword_28022BB20, &unk_267F092D0);
    v42 = (*(v38 + 80) + 57) & ~*(v38 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    *(v43 + 24) = v35;
    *(v43 + 32) = v36;
    *(v43 + 40) = v39;
    *(v43 + 48) = v41;
    *(v43 + 56) = v34;
    sub_267BBE184(v37, v43 + v42, &qword_28022BB20, &unk_267F092D0);
    v44 = v40;

    v45 = &unk_267F0EE10;
  }

  else
  {

    v46 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v48);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_26();
    }

    v45 = 0;
    v43 = 0;
  }

  *(v20 + 432) = v45;
  *(v20 + 440) = v43;
  v54 = *(v20 + 232);
  v55 = *(v20 + 240);
  v56 = *(v20 + 224);
  *(v20 + 120) = v56;
  *(v20 + 128) = sub_267EDB6D8(&unk_28022BB30, MEMORY[0x277D5D8A8], MEMORY[0x277D5D8A0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v20 + 96));
  (*(v54 + 16))(boxed_opaque_existential_0, v55, v56);
  OUTLINED_FUNCTION_10(&unk_267F0EDF8);
  v74 = v58;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v20 + 448) = v59;
  *v59 = v60;
  v59[1] = sub_267ED77F4;
  OUTLINED_FUNCTION_46_0();

  return v67(v61, v62, v63, v64, v65, v66, v67, v68, a9, 0, 0, 0, v70, v71, a15, v72, v74, a18, a19, a20);
}

uint64_t sub_267ED77F4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (!v0)
  {
    sub_267B9F98C(v3 + 96, &qword_280229330, &qword_267F092F0);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267ED7914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_57_2();
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_36(v18))
  {
    v19 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v19);
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v20, v21, "#SendMessageNeedsValueFlowStrategy returning SMART output");
    OUTLINED_FUNCTION_26();
  }

  v22 = v16[50];
  v23 = v16[41];
  v40 = v16[39];
  v41 = v16[38];
  v25 = v16[36];
  v24 = v16[37];
  v26 = v16[34];
  v39 = v16[35];
  v42 = v16[33];
  v43 = v16[27];
  sub_267BA1BFC(v16[54], v16[55]);

  v27 = OUTLINED_FUNCTION_65_5();
  v28(v27);
  sub_267B9F98C(v26, &qword_28022BB20, &unk_267F092D0);
  (*(v25 + 8))(v24, v39);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v23, v29);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_15();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, a14, a15, a16);
}

uint64_t sub_267ED7A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v10, v11);
  OUTLINED_FUNCTION_68_15();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267ED7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v10, v11);
  OUTLINED_FUNCTION_68_15();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_122();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_267ED7BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = v12[50];
  v14 = v12[41];
  v15 = v12[34];
  sub_267BA1BFC(v12[54], v12[55]);

  v16 = OUTLINED_FUNCTION_63();
  v17(v16);
  sub_267B9F98C(v15, &qword_28022BB20, &unk_267F092D0);
  v18 = OUTLINED_FUNCTION_26_0();
  v19(v18);
  OUTLINED_FUNCTION_2_74();
  sub_267EDB680(v14, v20);
  sub_267B9F98C((v12 + 12), &qword_280229330, &qword_267F092F0);
  OUTLINED_FUNCTION_68_15();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_267ED7CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 96) = a6;
  *(v8 + 104) = a8;
  *(v8 + 128) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB28, &qword_267F082B0);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267ED7DBC, 0, 0);
}

uint64_t sub_267ED7DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_0();
  v21 = *(v20 + 112);
  v22 = *(v20 + 120);
  HIDWORD(a17) = *(v20 + 128);
  v23 = *(v20 + 88);
  v46 = *(v20 + 104);
  v47 = *(v20 + 80);
  v48 = *(v20 + 64);
  v49 = *(v20 + 72);
  v24 = *(v20 + 56);
  v25 = sub_267EF8178();
  v24[3] = v25;
  v24[4] = sub_267EDB6D8(qword_280229338, MEMORY[0x277D5D3A0], MEMORY[0x277D5D398]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v24);
  v28 = v23[5];
  v27 = v23[6];
  __swift_project_boxed_opaque_existential_0(v23 + 2, v28);
  OUTLINED_FUNCTION_233_0();
  v29(v28, v27);
  v30 = *(v20 + 48);
  v31 = OUTLINED_FUNCTION_131((v20 + 16));
  sub_267BCD18C(v31, v30);
  sub_267EF8308();
  sub_267EF82F8();
  sub_267EF7C18();
  sub_267EF82E8();

  sub_267EF81F8();
  OUTLINED_FUNCTION_2_44();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_267C6AD4C(v46, v21, &qword_28022BB20, &unk_267F092D0);

  v36 = v48;
  LOBYTE(a9) = BYTE4(a17);
  OUTLINED_FUNCTION_243_1();
  sub_267EF84C8();
  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  (*(*(v25 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D5D370], v25);

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_46_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v22, v21, 0, v46, v47, v48, v49, a17, a18, a19, a20);
}

uint64_t sub_267ED7FE4(char a1)
{
  if (sub_267C7C28C(a1) == 0x6E65697069636572 && v1 == 0xE900000000000074)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267EF9EA8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267ED8070()
{
  OUTLINED_FUNCTION_12();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_267EF79B8();
  v1[11] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v7);
  v1[14] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF2CC8();
  v1[15] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267ED8190()
{
  OUTLINED_FUNCTION_29();
  v12 = v1;
  v2 = sub_267CA7914();
  *(v1 + 172) = v2 & 1;
  if (v2)
  {
    sub_267CA7D2C();
  }

  *(v1 + 144) = *(*(v1 + 80) + 56);
  switch(sub_267ECFBDC())
  {
    case 1u:

      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_125_7();
      goto LABEL_6;
    case 3u:
      goto LABEL_8;
    default:
LABEL_6:
      sub_267EF9EA8();
      OUTLINED_FUNCTION_58_1();

      if (v0)
      {
LABEL_7:
        v3 = *(v1 + 136);
        v10 = xmmword_267EFDDB0;
        v11 = 4;
        sub_267EF2CB8();
        sub_267C5BD60(&v10, v3);
        v4 = OUTLINED_FUNCTION_26_0();
        v5(v4);
      }

LABEL_8:
      v6 = type metadata accessor for SendMessageAskForPayloadParameters(0);
      *(v1 + 152) = v6;
      OUTLINED_FUNCTION_52_21(v6[5]);
      OUTLINED_FUNCTION_52_21(v6[6]);
      OUTLINED_FUNCTION_52_21(v6[7]);
      OUTLINED_FUNCTION_52_21(v6[8]);
      OUTLINED_FUNCTION_52_21(v6[11]);
      OUTLINED_FUNCTION_52_21(v6[12]);
      OUTLINED_FUNCTION_52_21(v6[13]);
      OUTLINED_FUNCTION_52_21(v6[15]);
      v7 = v6[16];
      *(v1 + 168) = v7;
      OUTLINED_FUNCTION_52_21(v7);
      v8 = swift_task_alloc();
      *(v1 + 160) = v8;
      *v8 = v1;
      v8[1] = sub_267ED8388;

      return sub_267ED8BF0();
  }
}

uint64_t sub_267ED8388()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 173) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267ED88A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 48) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267ED88D0()
{
  OUTLINED_FUNCTION_29();
  v27 = v1;
  v2 = *(v1 + 48);
  if (v2 == 2)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 40) = v7;
    *v7 = v8;
    v7[1] = sub_267C53C1C;
    OUTLINED_FUNCTION_91_0();

    return sub_267E4B0E8();
  }

  else
  {
    if (v2 != 1)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v10 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v10, qword_280240FB0);
      v11 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v1 + 48);
        OUTLINED_FUNCTION_48();
        OUTLINED_FUNCTION_64_2();
        OUTLINED_FUNCTION_69_11();
        *v0 = 136315138;
        v14 = sub_267C7C28C(v13);
        v16 = sub_267BA33E8(v14, v15, &v26);

        *(v0 + 4) = v16;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_26();
      }

      v22 = sub_267CCECC0();
      OUTLINED_FUNCTION_61_1(&type metadata for MessagesSlotValidationError, v22);
      *v23 = 2;
      swift_willThrow();
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_91_0();

      __asm { BRAA            X1, X16 }
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v1 + 32) = v3;
    *v3 = v4;
    v3[1] = sub_267ED8B10;
    OUTLINED_FUNCTION_91_0();

    return sub_267E4B1A0();
  }
}

uint64_t sub_267ED8B10()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267ED8BF0()
{
  OUTLINED_FUNCTION_12();
  v1[7] = v0;
  v2 = sub_267EF2CC8();
  v1[8] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_267ED8F98()
{
  OUTLINED_FUNCTION_48_0();
  v38 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229720, &qword_267EFE108);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v2);
  v4 = &v36[-v3];
  v5 = sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v36[-v13];
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v15 = sub_267EF8A08();
  __swift_project_value_buffer(v15, qword_280240FB0);
  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v17))
  {
    v18 = OUTLINED_FUNCTION_32();
    *v18 = 0;
    _os_log_impl(&dword_267B93000, v16, v17, "#SendMessageNeedsValueFlowStrategy we are prompting for content with corrections during payload support, checking for corrections parse", v18, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  sub_267C4D820(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_267B9F98C(v4, &qword_280229720, &qword_267EFE108);
    v19 = sub_267EF89F8();
    v20 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v20))
    {
      v21 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v21);
      _os_log_impl(&dword_267B93000, v19, v20, "#SendMessageNeedsValueFlowStrategy input.ruleBasedParse is missing, must use input.parse", v14, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    sub_267EF4B88();
    goto LABEL_20;
  }

  v22 = *(v7 + 32);
  v23 = OUTLINED_FUNCTION_50_3();
  v22(v23);
  sub_267EF4B88();
  v24 = sub_267E57DFC(v11, v39);
  v25 = *(v7 + 8);
  v25(v11, v5, v24);
  if (!v39[3])
  {
    sub_267B9F98C(v39, &unk_28022BBF0, &unk_267F01C60);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229210, &qword_267EFCB98);
  type metadata accessor for SmsNLv4Intent(0);
  v26 = swift_dynamicCast();
  if ((v26 & 1) == 0)
  {
LABEL_19:
    (v22)(v38, v14, v5);
    goto LABEL_20;
  }

  v27 = sub_267DD4488(v26);
  if ((v27 & 1) == 0 || (v28 = sub_267DD47CC(v27), (v28 & 1) == 0) || (v30 = sub_267DD89C4(v28, v29), v37 = sub_267DEAC8C(v30, v31), , !v37))
  {

    goto LABEL_19;
  }

  v32 = sub_267EF89F8();
  v33 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v33))
  {
    v34 = OUTLINED_FUNCTION_32();
    *v34 = 0;
    _os_log_impl(&dword_267B93000, v32, v33, "#SendMessageNeedsValueFlowStrategy top parse represents contact correction, use it", v34, 2u);
    OUTLINED_FUNCTION_9_11();
  }

  sub_267EF4B88();

  v35 = OUTLINED_FUNCTION_17_4();
  (v25)(v35);
LABEL_20:
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267ED93C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267ED0B20();
}

uint64_t sub_267ED947C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267ED2660();
}

uint64_t sub_267ED9528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageNeedsValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9BF8](a1, a2, v9, a4);
}

uint64_t sub_267ED95F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageNeedsValueFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BBD07C;

  return MEMORY[0x2821B9C00](a1, a2, v9, a4);
}

uint64_t sub_267ED96B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_267BA2E04(a4, a1);

  return OUTLINED_FUNCTION_66();
}

uint64_t sub_267ED96F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return OUTLINED_FUNCTION_66();
}

uint64_t sub_267ED9728(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v68 = a5;
  v7 = a1;
  sub_267EDA948(a1, a2, a3, &v60);
  v8 = v61;
  v9 = v63;
  v10 = v64;
  v51 = v65;
  v52 = v60;
  v53 = v66;
  v45 = v62;
  v11 = (v62 + 64) >> 6;
  v47 = v7;

  v46 = a3;

  v49 = v11;
  v50 = v8;
  if (v10)
  {
    while (1)
    {
      v12 = v9;
LABEL_7:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v52 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v52 + 56) + 8 * v14);
      v57 = *v15;
      v58 = v16;
      v59 = v17;

      v51(&v54, &v57);

      v18 = v54;
      v19 = v55;
      v20 = v56;
      v21 = *v68;
      v29 = sub_267BA9948();
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A970, &unk_267F02620);
          sub_267EF9C78();
        }
      }

      else
      {
        sub_267CFA774(v32, a4 & 1, v23, v24, v25, v26, v27, v28, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
        v34 = sub_267BA9948();
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_23;
        }

        v29 = v34;
      }

      v10 &= v10 - 1;
      v36 = *v68;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        v38 = sub_267ECED10(v20, v37);

        *(v36[7] + 8 * v29) = v38;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v39 = (v36[6] + 16 * v29);
        *v39 = v18;
        v39[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v40 = v36[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_22;
        }

        v36[2] = v42;
      }

      a4 = 1;
      v9 = v12;
      v11 = v49;
      v8 = v50;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_267C095D8(v52);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267ED99E4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_267ED9A2C(void *a1)
{
  v1 = [a1 content];
  if (v1)
  {
    v2 = v1;
    sub_267EF9028();
  }

  return OUTLINED_FUNCTION_61_0();
}

uint64_t sub_267ED9A8C(void *a1)
{
  v1 = [a1 visual];
  if (v1)
  {
    v2 = v1;
    sub_267EF2BE8();
  }

  return OUTLINED_FUNCTION_61_0();
}

void sub_267ED9AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  v207 = v21;
  v208 = v20;
  v23 = v22;
  v197 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v28 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCA0, &unk_267EFD990);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_60();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_36_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v39 = OUTLINED_FUNCTION_18(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_60();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v44);
  v209 = sub_267EF7168();
  OUTLINED_FUNCTION_58();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_36_3(v49 - v48);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D208, &qword_267F0EDE8);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v50);
  v210 = v186 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_28022C758, &qword_267F0EDF0);
  v53 = OUTLINED_FUNCTION_18(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_60();
  v202 = v54 - v55;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_77_0();
  v204 = v57;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_45_0();
  v206 = v59;
  v212 = MEMORY[0x277D84F90];
  v198 = v23;
  v60 = sub_267BCEA0C(v23);
  if (!v60)
  {
LABEL_67:
    OUTLINED_FUNCTION_47();
    return;
  }

  v61 = v60;
  v186[1] = v42;
  v187 = v33;
  v205 = sub_267BAF0DC(v60);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v62 = 0;
  v200 = v61 & 0xFFFFFFFFFFFFFF8;
  v201 = v61 & 0xC000000000000001;
  v192 = (v46 + 32);
  v195 = (v46 + 8);
  v196 = (v25 + 8);
  *&v63 = 136315138;
  v189 = v63;
  v64 = v206;
  for (i = v61; ; v61 = i)
  {
    if (v205 == v62)
    {

      goto LABEL_67;
    }

    if (v201)
    {
      v185 = OUTLINED_FUNCTION_290();
      v66 = MEMORY[0x26D609870](v185);
      v65 = v204;
    }

    else
    {
      v65 = v204;
      if (v62 >= *(v200 + 16))
      {
        goto LABEL_69;
      }

      v66 = *(v61 + 8 * v62 + 32);
    }

    if (__OFADD__(v62, 1))
    {
      break;
    }

    sub_267EF6FF8();
    if (sub_267EF6FC8())
    {
      sub_267EF6FA8();

      sub_267EF86B8();
    }

    else
    {
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v209);
    }

    v70 = v202;
    sub_267EF7138();
    OUTLINED_FUNCTION_9();
    v71 = v209;
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v209);
    v75 = *(v203 + 48);
    v76 = v210;
    sub_267C6AD4C(v64, v210, &dword_28022C758, &qword_267F0EDF0);
    sub_267C6AD4C(v65, v76 + v75, &dword_28022C758, &qword_267F0EDF0);
    if (__swift_getEnumTagSinglePayload(v76, 1, v71) != 1)
    {
      v87 = v210;
      sub_267C6AD4C(v210, v70, &dword_28022C758, &qword_267F0EDF0);
      if (__swift_getEnumTagSinglePayload(v87 + v75, 1, v209) != 1)
      {
        v94 = v209;
        v64 = v193;
        (*v192)(v193, v210 + v75, v209);
        sub_267EDB6D8(&qword_28022D210, MEMORY[0x277D61DB0], MEMORY[0x277D61DB8]);
        OUTLINED_FUNCTION_1_10();
        v86 = sub_267EF8FE8();
        v194 = v62;
        v95 = *v195;
        (*v195)(v64, v94);
        OUTLINED_FUNCTION_131_2();
        sub_267B9F98C(v96, v97, v98);
        OUTLINED_FUNCTION_131_2();
        sub_267B9F98C(v99, v100, v101);
        v102 = OUTLINED_FUNCTION_50_3();
        (v95)(v102);
        v62 = v194;
        OUTLINED_FUNCTION_131_2();
        sub_267B9F98C(v103, v104, v105);
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_131_2();
      sub_267B9F98C(v88, v89, v90);
      OUTLINED_FUNCTION_131_2();
      sub_267B9F98C(v91, v92, v93);
      (*v195)(v70, v209);
LABEL_16:
      sub_267B9F98C(v210, &qword_28022D208, &qword_267F0EDE8);
      v86 = 0;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_131_2();
    sub_267B9F98C(v77, v78, v79);
    OUTLINED_FUNCTION_131_2();
    sub_267B9F98C(v80, v81, v82);
    if (__swift_getEnumTagSinglePayload(v210 + v75, 1, v209) != 1)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_131_2();
    sub_267B9F98C(v83, v84, v85);
    v86 = 1;
LABEL_18:
    v106 = v66;
    v107 = v207[4];
    v108 = OUTLINED_FUNCTION_131(v207);
    v109 = sub_267BCD18C(v108, v107);
    v110 = *(v208 + 80);
    if (!*(v110 + 16) || (v111 = v109, v112 = sub_267C94B6C(v62), (v113 & 1) == 0))
    {
      v117 = 0;
LABEL_28:
      sub_267DE9B04();
      v131 = *(v208 + 192);
      if (*(v131 + 16) && (OUTLINED_FUNCTION_156_2(), , v132 = sub_267BA9948(), v134 = v133, , (v134 & 1) != 0))
      {
        v135 = *(v131 + 56) + 24 * v132;
        v136 = *v135;
        v138 = *(v135 + 8);
        v137 = *(v135 + 16);

        v140 = v136 != 4 && v138 == 0;
      }

      else
      {

        v137 = 0;
        v140 = 1;
      }

      if (sub_267EF96F8())
      {

        goto LABEL_41;
      }

      if (v137)
      {
      }

      else
      {
LABEL_41:
        v140 = 0;
      }

      v141 = *(v208 + 80);
      if (*(v141 + 16) && (v142 = sub_267C94B6C(v62), (v143 & 1) != 0))
      {
        v144 = v117;
        v145 = *(*(v141 + 56) + 8 * v142);
        v146 = sub_267DE9BAC();
      }

      else
      {
        v144 = v117;
        v146 = 0;
      }

      v147 = v207;
      v148 = OUTLINED_FUNCTION_61_4();
      __swift_project_boxed_opaque_existential_0(v148, v149);
      OUTLINED_FUNCTION_170_4();
      sub_267EF3B68();
      v150 = v147[4];
      v151 = OUTLINED_FUNCTION_131(v147);
      v152 = sub_267BCD18C(v151, v150);
      sub_267BC20F4(v64, v140, v146 & ~v152 & 1, 0, v106);
      (*v196)(v64, v197);
      v117 = v144;
      goto LABEL_47;
    }

    v114 = *(*(v110 + 56) + 8 * v112);
    v115 = v111 | v86 | (v114 == 0);
    v116 = v114;
    v117 = v116;
    if (v115)
    {
      goto LABEL_28;
    }

    v118 = [v116 relationship];
    if (v118)
    {
      v119 = v118;
      v120 = sub_267EAEBF4(v118);
      v122 = v121;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v123 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v123, qword_280240FB0);

      v124 = sub_267EF89F8();
      v125 = sub_267EF95D8();

      if (OUTLINED_FUNCTION_181_2())
      {
        OUTLINED_FUNCTION_48();
        v211 = OUTLINED_FUNCTION_99_10();
        dword_28022C758 = v189;
        *algn_28022C75C = sub_267BA33E8(v120, v122, &v211);
        _os_log_impl(&dword_267B93000, v124, v125, "#SendMessageConfirmIntentFlowStrategy Using relationship name %s", &dword_28022C758, 0xCu);
        OUTLINED_FUNCTION_26_4();
        OUTLINED_FUNCTION_32_0();
      }

      v126 = sub_267EF7758();
      OUTLINED_FUNCTION_97(v126);
      sub_267EF7748();
      OUTLINED_FUNCTION_170_4();
      OUTLINED_FUNCTION_50_3();
      sub_267EF90F8();

      sub_267EF79B8();
      OUTLINED_FUNCTION_2_44();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
      sub_267EF76F8();

      sub_267B9F98C(v120, &unk_28022AE30, &qword_267EFC0B0);
      sub_267EF7708();

      sub_267EF7738();
      OUTLINED_FUNCTION_156_2();
    }

    else
    {
      v155 = [v117 nameComponents];
      v156 = v191;
      v157 = v190;
      if (v155)
      {
        v158 = v155;
        sub_267EF2A18();

        v159 = 0;
      }

      else
      {
        v159 = 1;
      }

      v160 = sub_267EF2A58();
      __swift_storeEnumTagSinglePayload(v156, v159, 1, v160);
      v161 = OUTLINED_FUNCTION_37_1();
      v64 = &unk_267EFD990;
      sub_267BBE184(v161, v162, &unk_28022BCA0, &unk_267EFD990);
      if (__swift_getEnumTagSinglePayload(v157, 1, v160))
      {
        v163 = OUTLINED_FUNCTION_17_4();
        sub_267B9F98C(v163, v164, &unk_267EFD990);
        goto LABEL_28;
      }

      v165 = sub_267EF2A28();
      v167 = v166;
      v168 = OUTLINED_FUNCTION_17_4();
      sub_267B9F98C(v168, v169, &unk_267EFD990);
      if (!v167)
      {
        goto LABEL_28;
      }

      v194 = v165;
      v170 = sub_267EF7758();
      OUTLINED_FUNCTION_97(v170);
      sub_267EF7748();
      v171 = [v106 nameComponents];
      if (v171)
      {
        v172 = v171;
        OUTLINED_FUNCTION_170_4();
        sub_267EF2A18();

        v173 = 0;
      }

      else
      {
        v173 = 1;
        v64 = v187;
      }

      __swift_storeEnumTagSinglePayload(v64, v173, 1, v160);
      v174 = v64;
      v175 = v188;
      v176 = &unk_267EFD990;
      sub_267BBE184(v174, v188, &unk_28022BCA0, &unk_267EFD990);
      if (__swift_getEnumTagSinglePayload(v175, 1, v160))
      {
        v177 = OUTLINED_FUNCTION_65_5();
        sub_267B9F98C(v177, v178, &unk_267EFD990);
      }

      else
      {
        v176 = v175;
        sub_267EF2A28();
        v180 = v179;
        sub_267B9F98C(v175, &unk_28022BCA0, &unk_267EFD990);
        if (v180)
        {
        }
      }

      OUTLINED_FUNCTION_170_4();
      sub_267EF90F8();

      sub_267EF79B8();
      OUTLINED_FUNCTION_2_44();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
      sub_267EF76B8();
      OUTLINED_FUNCTION_53_0();

      sub_267B9F98C(v176, &unk_28022AE30, &qword_267EFC0B0);
      sub_267EF7738();
      OUTLINED_FUNCTION_156_2();
    }

LABEL_47:

    MEMORY[0x26D608F90](v153);
    v154 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v64 = v206;
    if (*((v212 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v154 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v154);
      sub_267EF9328();
    }

    OUTLINED_FUNCTION_44_0();
    sub_267EF9368();

    ++v62;
  }

  __break(1u);
LABEL_69:
  __break(1u);
}

uint64_t sub_267EDA788()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB20, &unk_267F092D0);
  OUTLINED_FUNCTION_18(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_40();

  return sub_267ED7CD8(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_267EDA88C()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_267BAEBEC;
  v7 = OUTLINED_FUNCTION_26_0();

  return sub_267ED4418(v7, v8, v2, v3, v4, v5);
}

uint64_t sub_267EDA948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_267EDA984@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267C08F3C(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_267EDA9C8(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_267C74A44(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
        swift_arrayInitWithCopy();
        v5 = sub_267ED99E4(v15, v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        result = swift_unknownObjectRelease();
        v1[1] = v17;
        v1[2] = v19;
        v1[3] = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[1];
  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v6 + 8 * v7 != v9 + 8 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_267EDAB3C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  result = sub_267EDAF90((a4 >> 1) - a3);
  v11 = v4[2];
  v10 = v4[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v4[1] + 8 * v11 + 8 * v12;
  if ((v10 & 1) == 0)
  {
LABEL_8:
    v16 = v12;
    goto LABEL_10;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);
  if (v13 != v14 + 8 * v15 + 32)
  {

    goto LABEL_8;
  }

  v17 = *(v14 + 24);

  v18 = (v17 >> 1) - v15;
  v19 = __OFADD__(v12, v18);
  v16 = v12 + v18;
  if (v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v20 = v16 - v12;
  if (__OFSUB__(v16, v12))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (v20 < v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v12 + v6);
    if (__OFADD__(v12, v6))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    sub_267EDB098(result);
  }

LABEL_18:
  if (v6 == v20)
  {
    v22[0] = v9;
    v22[1] = a2;
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = v5;
    return sub_267EDB150(v22);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t *sub_267EDAD14(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v29 = (v18 + 8 * a3);
  result = sub_267EDB528(v7);
  v30 = v9;
  if (result)
  {
    v19 = result;
    v28 = v4[2];
    v20 = &v4[1][v28];
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    swift_arrayDestroy();
    sub_267C74A34(v20, a2, v17);
    swift_arrayDestroy();
    a4(v18, a3);
    sub_267C74A34(&v20[8 * a2 + 8 * v31], v13, v29);
    swift_arrayDestroy();
    *(v19 + 16) = 0;
    v21 = v28;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_267ED99E4(v30, v21);
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  swift_arrayInitWithCopy();
  result = a4(&v17[8 * a2], a3);
  v23 = v22 + v31;
  if (__OFADD__(v22, v31))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_267EDAF90(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v1[1];
  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);
  if (v6 + 8 * v3 + 8 * v4 != v7 + 8 * v8 + 32)
  {

LABEL_7:
    v9 = v4;
    goto LABEL_9;
  }

  v10 = *(v7 + 24);

  v11 = (v10 >> 1) - v8;
  v12 = __OFADD__(v4, v11);
  v9 = v4 + v11;
  if (v12)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < result)
  {
    if (v9 + 0x4000000000000000 >= 0)
    {
      v13 = 2 * v9;
      if (v13 > result)
      {
        result = v13;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_267EDA9C8(result);
}

uint64_t sub_267EDB098(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_267EDB150(void *result)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = result[3];
  v5 = result[4];
  v25 = result;
  if (v5 == v6 >> 1)
  {
    return sub_267B9F98C(v25, &qword_28022D218, &qword_267F0EE58);
  }

  v7 = result[2];
  v8 = v6 >> 1;
  if (v5 >= v7 && v5 < v8)
  {
    v10 = result[1];
    v11 = v5 + 1;
    v12 = *(v10 + 8 * v5);
    result = v12;
    v26 = v1;
    while (!__OFADD__(v4, 1))
    {
      v27 = sub_267EDB34C(v4, v4 + 1, *v1, v1[1], v1[2], v1[3]);
      v13 = sub_267EDB50C();
      sub_267EDAD14(&v27, v4, 0, v13);

      v15 = v26[2];
      v14 = v26[3];
      v16 = (v14 >> 1) - v15;
      if (__OFSUB__(v14 >> 1, v15))
      {
        goto LABEL_30;
      }

      v17 = v26[1] + 8 * v15;
      if (v14)
      {
        sub_267EF9ED8();
        swift_unknownObjectRetain();
        v18 = swift_dynamicCastClass();
        if (!v18)
        {
          swift_unknownObjectRelease();
          v18 = MEMORY[0x277D84F90];
        }

        v19 = *(v18 + 16);
        if (v17 + 8 * v16 == v18 + 8 * v19 + 32)
        {
          v20 = *(v18 + 24);

          v21 = (v20 >> 1) - v19;
          v22 = __OFADD__(v16, v21);
          v16 += v21;
          if (v22)
          {
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v23 = v11;
      while (v4 < v16)
      {
        *(v17 + 8 * v4) = v12;
        if (v8 == v23)
        {
          v12 = 0;
          ++v4;
          v23 = v8;
          break;
        }

        if (v11 < v7 || v23 >= v8)
        {
          __break(1u);
          goto LABEL_29;
        }

        v12 = *(v10 + 8 * v23);
        result = v12;
        ++v4;
        ++v23;
      }

      v1 = v26;
      result = sub_267EDB098(v4);
      v11 = v23;
      if (!v12)
      {
        return sub_267B9F98C(v25, &qword_28022D218, &qword_267F0EE58);
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_267EDB34C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_267C74A44(v6, v25);
}

uint64_t sub_267EDB528(uint64_t a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v1[1] + 8 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 8 * v7 != v9 + 8 * v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v14 = (v12 >> 1) - v10;
  v15 = __OFADD__(v7, v14);
  v11 = v7 + v14;
  if (!v15)
  {
LABEL_10:
    if (v11 < a1)
    {
      return 0;
    }

    sub_267EF9ED8();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = MEMORY[0x277D84F90];
    }

    v16 = (v8 - a1 - 32) / 8;
    isUniquelyReferenced_nonNull = v7 + v16;
    if (!__OFADD__(v7, v16))
    {
      v4 = *(a1 + 16);
      if (isUniquelyReferenced_nonNull >= v4)
      {
        return a1;
      }

LABEL_19:
      sub_267C738B8(isUniquelyReferenced_nonNull, v4, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_267EDB680(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267EDB6D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_130_2()
{
  v2 = *(v0 + 136);
}

void OUTLINED_FUNCTION_135_2(uint64_t a1@<X8>)
{
  v3 = *(a1 + v1);
  *(v2 + 312) = v3;
  *(v2 + 320) = *(v3 + 32);
}

__n128 *OUTLINED_FUNCTION_152_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_163_3()
{
}

uint64_t OUTLINED_FUNCTION_164_2()
{
}

void OUTLINED_FUNCTION_167_2()
{
}

void OUTLINED_FUNCTION_168_4()
{
}

uint64_t OUTLINED_FUNCTION_174_1()
{
}

uint64_t OUTLINED_FUNCTION_180_2(uint64_t a1, uint64_t a2)
{
  *(v2 + 328) = __swift_project_value_buffer(a1, a2);

  return sub_267EF89F8();
}

BOOL OUTLINED_FUNCTION_181_2()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_183_1(uint64_t a1)
{

  return sub_267EF89F8();
}

uint64_t OUTLINED_FUNCTION_184_2()
{

  return sub_267EF8A08();
}

double OUTLINED_FUNCTION_185_2()
{

  return result;
}

uint64_t OUTLINED_FUNCTION_187_2()
{
}

void OUTLINED_FUNCTION_188_2()
{
  v2 = *(v0 + 96);
}

__n128 OUTLINED_FUNCTION_191_1(__n128 *a1)
{
  result = *(v1 - 192);
  a1[1] = result;
  return result;
}

void OUTLINED_FUNCTION_194_1()
{
  *(v4 + 16) = v3;
  v5 = v4 + 16 * v0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_203_0()
{
  v1 = *(v0[34] + 56);
  v0[39] = v1;
  v0[40] = *(v1 + 296);
}

uint64_t OUTLINED_FUNCTION_205_0()
{

  return sub_267B9A5E8((v0 + 96), v0 + 56);
}

uint64_t OUTLINED_FUNCTION_206_0()
{

  return sub_267B9A5E8((v0 + 176), v0 + 136);
}

uint64_t OUTLINED_FUNCTION_207_0()
{
  v2 = *(v0 + 466);

  return sub_267C7C28C(v2);
}

id OUTLINED_FUNCTION_209(id a1)
{
  *(v1 + 216) = a1;

  return a1;
}

uint64_t OUTLINED_FUNCTION_212_1(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_213_1(uint64_t a1)
{

  return sub_267EF89F8();
}

uint64_t OUTLINED_FUNCTION_214_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_267EF3B08();
}

void OUTLINED_FUNCTION_215_1()
{

  sub_267ECE45C();
}

uint64_t OUTLINED_FUNCTION_225_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_250_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_267EF4C98();
}

uint64_t OUTLINED_FUNCTION_252_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x2821BB850](a1, a2, a3, a4, a5, a6, a7);
}

void OUTLINED_FUNCTION_253_1()
{
}

uint64_t OUTLINED_FUNCTION_256_0()
{

  return sub_267EF9EA8();
}

uint64_t OUTLINED_FUNCTION_257_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_267C6AD4C(va1, va, v4, v5);
}

id OUTLINED_FUNCTION_258_1()
{

  return sub_267ECEB80(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_260_1()
{

  return sub_267EF4198();
}

void OUTLINED_FUNCTION_262_1()
{
}

uint64_t OUTLINED_FUNCTION_263_1(uint64_t a1)
{

  return sub_267EF2BE8();
}

uint64_t sub_267EDBC50(char a1)
{
  result = 28532;
  switch(a1)
  {
    case 1:
      result = 1836020326;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x65726F6E6769;
      break;
    case 5:
      result = 7301239;
      break;
    case 6:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267EDBCF0(char a1)
{
  result = 0x6567617373656DLL;
  switch(a1)
  {
    case 1:
      v3 = 1768191329;
      goto LABEL_6;
    case 2:
      v4 = 0x5F6567616D69;
      goto LABEL_7;
    case 3:
      v3 = 1701079414;
LABEL_6:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x5F6F00000000;
LABEL_7:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 4:
      result = 0x736567617373656DLL;
      break;
    case 5:
      result = 0x746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_267EDBD98(void *a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v4 = v3;
  v192 = a3;
  v193 = a2;
  v6 = sub_267EF7008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v192 - v11;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  v14 = __swift_project_value_buffer(v13, qword_280240FB0);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    v17 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_59(v17);
    OUTLINED_FUNCTION_23_7(&dword_267B93000, v18, v16, "SendMessageUnsupportedUseCaseCheckFlowStrategy# Checking support for request");
    OUTLINED_FUNCTION_42_0();
  }

  v19 = a1[4];
  OUTLINED_FUNCTION_11_55();
  v20 = OUTLINED_FUNCTION_43();
  v22 = v21(v20, v19);
  if (v22 != 28)
  {
    sub_267D6D160(v22);
    OUTLINED_FUNCTION_20_38();
    v24 = v24 && v23 == 0xE700000000000000;
    if (v24)
    {
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_20_33();
    }

    v196 = &type metadata for Features;
    v197 = sub_267BAFCAC();
    LOBYTE(v195[0]) = 1;
    v25 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v195);
    if ((v25 & 1) == 0)
    {
      v48 = sub_267EF89F8();
      v49 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v49))
      {
        v50 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v50);
        OUTLINED_FUNCTION_23_7(&dword_267B93000, v51, a1, "SendSupportCheck# necessary feature flag to process verb=unshare requests not enabled, support for request is not implemented");
        OUTLINED_FUNCTION_42_0();
      }

      v52 = sub_267E09FE8();
      v40 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v52);
      v41 = xmmword_267F0A870;
      goto LABEL_116;
    }
  }

  v26 = a1[4];
  OUTLINED_FUNCTION_11_55();
  v27 = OUTLINED_FUNCTION_43();
  v29 = v28(v27, v26);
  if (v29 != 6)
  {
    sub_267D6CE3C(v29);
    OUTLINED_FUNCTION_20_38();
    if (v24 && v30 == 0xED00006567617373)
    {
    }

    else
    {
      sub_267EF9EA8();
      OUTLINED_FUNCTION_20_33();
    }

    __swift_project_boxed_opaque_existential_0((v4 + 16), *(v4 + 40));
    OUTLINED_FUNCTION_43();
    sub_267EF3B78();
    (*(v7 + 104))(v10, *MEMORY[0x277D61C48], v6);
    v32 = sub_267C28F38(v12, v10);
    v33 = *(v7 + 8);
    v33(v10, v6);
    v33(v12, v6);
    if (v32)
    {
      v34 = sub_267EF89F8();
      v35 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_7_2(v35))
      {
        v36 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_59(v36);
        OUTLINED_FUNCTION_23_7(&dword_267B93000, v37, a1, "SendSupportCheck# Unable to send audio messages with manual input");
        OUTLINED_FUNCTION_42_0();
      }

      v38 = sub_267E09FE8();
      v40 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v38);
      v41 = xmmword_267F083C0;
      goto LABEL_116;
    }
  }

  v42 = *(v4 + 40);
  OUTLINED_FUNCTION_2_75((v4 + 16));
  if ((sub_267DBF8D8() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_60();
    v43 = OUTLINED_FUNCTION_4_75();
    v45 = v44(v43);
    if (v45 != 28)
    {
      sub_267D6D160(v45);
      OUTLINED_FUNCTION_20_38();
      if (v24 && v46 == 0xE400000000000000)
      {
      }

      else
      {
        sub_267EF9EA8();
        OUTLINED_FUNCTION_20_33();
      }

      v42 = a1[3];
      v53 = OUTLINED_FUNCTION_2_75(a1);
      if (sub_267E583B0(v53, v54))
      {
        v55 = a1[4];
        OUTLINED_FUNCTION_11_55();
        v56 = OUTLINED_FUNCTION_43();
        v58 = v57(v56, v55);
        LOBYTE(v42) = v58;
        v59 = sub_267DDBCBC(v58);

        if (v59)
        {
          v60 = sub_267EF89F8();
          v61 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_7_2(v61))
          {
            v62 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_59(v62);
            v64 = "SendSupportCheck# Unable to send/share requests on mac with intent containing definite reference";
LABEL_114:
            OUTLINED_FUNCTION_23_7(&dword_267B93000, v63, a1, v64);
            OUTLINED_FUNCTION_42_0();
            goto LABEL_115;
          }

          goto LABEL_115;
        }
      }
    }
  }

  OUTLINED_FUNCTION_9_60();
  v65 = OUTLINED_FUNCTION_4_75();
  v67 = v66(v65);
  OUTLINED_FUNCTION_9_60();
  v68 = OUTLINED_FUNCTION_4_75();
  v70 = v69(v68);
  if (v70 == 6)
  {
    goto LABEL_40;
  }

  v80 = v70;
  LOBYTE(v42) = 105;
  sub_267D6CE3C(v70);
  if (v81 != 0x656D5F6567616D69 || v82 != 0xED00006567617373)
  {
    LOBYTE(v42) = OUTLINED_FUNCTION_24_45(v81);

    if (v42)
    {
      goto LABEL_77;
    }

    LOBYTE(v42) = 118;
    sub_267D6CE3C(v80);
    if (v84 != 0x656D5F6F65646976 || v85 != 0xED00006567617373)
    {
      LOBYTE(v42) = OUTLINED_FUNCTION_24_45(v84);

      if (!(v67 & 1 | ((v42 & 1) == 0)))
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }
  }

LABEL_77:
  if ((v67 & 1) == 0)
  {
LABEL_79:
    v104 = sub_267EF89F8();
    v105 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v105))
    {
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v195[0] = v107;
      *v106 = 136315138;
      v108 = sub_267EDBCF0(v80);
      v110 = sub_267BA33E8(v108, v109, v195);

      *(v106 + 4) = v110;
      OUTLINED_FUNCTION_27_37(&dword_267B93000, v111, v112, "SendSupportCheck# Unable to send %s");
      __swift_destroy_boxed_opaque_existential_0(v107);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_32_0();
    }

    v113 = v193;
    v114 = sub_267E09FE8();
    v115 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v114);
    v40 = v115;
    *v116 = v80;
    v116[1] = 0;
    goto LABEL_82;
  }

LABEL_78:
  if (sub_267EDCC70(v80, v67 & 1))
  {
    goto LABEL_79;
  }

LABEL_40:
  OUTLINED_FUNCTION_9_60();
  v71 = OUTLINED_FUNCTION_4_75();
  v73 = v72(v71);
  if (v73 == 17)
  {
    goto LABEL_41;
  }

  v87 = v73;
  OUTLINED_FUNCTION_2_75((v4 + 16));
  if (sub_267DBF878())
  {
    v42 = a1[3];
    v88 = a1[4];
    OUTLINED_FUNCTION_11_55();
    v89 = OUTLINED_FUNCTION_43();
    v90(v89, v88);
    if (!v91)
    {
      goto LABEL_41;
    }

    v42 = a1[3];
    v92 = a1[4];
    OUTLINED_FUNCTION_11_55();
    v93 = OUTLINED_FUNCTION_43();
    v95 = v94(v93, v92);
    if (v96)
    {
      if (v95 == 0xD000000000000013 && v96 == 0x8000000267F10280)
      {

        goto LABEL_41;
      }

      sub_267EF9EA8();
      OUTLINED_FUNCTION_20_33();
      if (v42)
      {
        goto LABEL_41;
      }
    }
  }

  sub_267D6CFAC(v87);
  OUTLINED_FUNCTION_20_38();
  v100 = v24 && v99 == 0xE500000000000000;
  if (v100 || ((OUTLINED_FUNCTION_26_39(v98), OUTLINED_FUNCTION_20_33(), LOBYTE(v42) = 118, sub_267D6CFAC(v87), OUTLINED_FUNCTION_20_38(), v24) ? (v103 = v102 == 0xE500000000000000) : (v103 = 0), v103))
  {

    sub_267B9AFEC(a1, v195);
    v117 = v14;
    v118 = sub_267EF89F8();
    v119 = sub_267EF95D8();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v120 = 136315394;
      v121 = sub_267D6CFAC(v87);
      sub_267BA33E8(v121, v122, &v194);
      OUTLINED_FUNCTION_43();

      *(v120 + 4) = v117;
      *(v120 + 12) = 2080;
      v123 = v197;
      __swift_project_boxed_opaque_existential_0(v195, v196);
      v124 = OUTLINED_FUNCTION_43();
      v126 = v125(v124, v123);
      if (v127)
      {
        v128 = v126;
      }

      else
      {
        v128 = 7104878;
      }

      if (v127)
      {
        v129 = v127;
      }

      else
      {
        v129 = 0xE300000000000000;
      }

      __swift_destroy_boxed_opaque_existential_0(v195);
      v130 = sub_267BA33E8(v128, v129, &v194);

      *(v120 + 14) = v130;
      _os_log_impl(&dword_267B93000, v118, v119, "SendSupportCheck# Unable to send %s with app= %s", v120, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v195);
    }

    sub_267EF7C38();
    v163 = a1[3];
    v164 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v163);
    (*(v164 + 368))(v163, v164);
    v165 = sub_267EF7C08() | 0x4000000000000000;
    v166 = sub_267E09FE8();
    v40 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v166);
    *v167 = v87;
    v167[1] = v165;
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_26_39(v101);
  OUTLINED_FUNCTION_20_33();
LABEL_41:
  OUTLINED_FUNCTION_9_60();
  v74 = OUTLINED_FUNCTION_4_75();
  v76 = v75(v74);
  if (v76 == 28)
  {
    goto LABEL_93;
  }

  v77 = sub_267D6D160(v76);
  if (v77 == 0x6572616873 && v78 == 0xE500000000000000)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_46(v77);
    OUTLINED_FUNCTION_20_33();
    if ((v42 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  OUTLINED_FUNCTION_2_75((v4 + 16));
  if ((sub_267DBF8D8() & 1) == 0)
  {
    v60 = sub_267EF89F8();
    v178 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_7_2(v178))
    {
      v179 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_59(v179);
      v64 = "SendSupportCheck# Unable to process .share utterances";
      goto LABEL_114;
    }

LABEL_115:

    v180 = sub_267E09FE8();
    v40 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v180);
    v41 = xmmword_267F0EED0;
    goto LABEL_116;
  }

LABEL_93:
  v131 = a1[4];
  OUTLINED_FUNCTION_11_55();
  v132 = OUTLINED_FUNCTION_43();
  v134 = v133(v132, v131);
  if ((v134 - 14) > 0x14u)
  {
    v151 = OUTLINED_FUNCTION_2_75(a1);
    if (sub_267E583B0(v151, v152))
    {
      sub_267DD2D80();
      v154 = v153;

      if (v154)
      {

        v155 = sub_267E09FE8();
        v40 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v155);
        v41 = xmmword_267F0EEE0;
LABEL_116:
        *v39 = v41;
LABEL_117:
        OUTLINED_FUNCTION_23_36();
        v182(v181);
        goto LABEL_118;
      }
    }

    v156 = OUTLINED_FUNCTION_2_75(a1);
    v158 = sub_267E583B0(v156, v157);
    if (v158)
    {
      if (sub_267DD4A44(v158, v159))
      {
        v196 = &type metadata for Features;
        v197 = sub_267BAFCAC();
        LOBYTE(v195[0]) = 20;
        v160 = sub_267EF5128();
        __swift_destroy_boxed_opaque_existential_0(v195);
        if ((v160 & 1) == 0)
        {
          v183 = sub_267EF89F8();
          v184 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_5_2(v184))
          {
            v185 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_59(v185);
            OUTLINED_FUNCTION_23_7(&dword_267B93000, v186, v184, "SendSupportCheck# Unsupported scheduled send request");
            OUTLINED_FUNCTION_42_0();
          }

          v187 = sub_267E09FE8();
          v188 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v187);
          *v189 = xmmword_267F0EEF0;
          OUTLINED_FUNCTION_23_36();
          v191(v190);

          return;
        }
      }
    }

    OUTLINED_FUNCTION_23_36();
    v162(v161);
    return;
  }

  v135 = v134;
  v136 = sub_267EDCC00(v134);
  v138 = v137;
  v139 = sub_267EF89F8();
  v140 = sub_267EF95D8();
  v141 = OUTLINED_FUNCTION_5_2(v140);
  if (v136 >> 5 == 0xFFFFFFFF && (v138 & 0xF000000000000007) == 0)
  {
    if (v141)
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v195[0] = v143;
      *v142 = 136315138;
      sub_267D6C8B0(v135);
      v146 = sub_267BA33E8(v144, v145, v195);

      *(v142 + 4) = v146;
      OUTLINED_FUNCTION_27_37(&dword_267B93000, v147, v148, "SendSupportCheck# Unsupported effect %s");
      __swift_destroy_boxed_opaque_existential_0(v143);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_32_0();
    }

    v113 = v193;
    v149 = sub_267E09FE8();
    v115 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v149);
    v40 = v115;
    *v150 = xmmword_267F0EF00;
LABEL_82:
    v113(v115, 0);
LABEL_118:

    return;
  }

  if (v141)
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v195[0] = v169;
    *v168 = 136315138;
    sub_267D6C8B0(v135);
    v172 = sub_267BA33E8(v170, v171, v195);

    *(v168 + 4) = v172;
    _os_log_impl(&dword_267B93000, v139, v140, "SendSupportCheck# Can't send %s", v168, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v169);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_32_0();
  }

  v173 = sub_267E09FE8();
  v174 = OUTLINED_FUNCTION_61_1(&type metadata for SendMessageUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason, v173);
  *v175 = v136;
  v175[1] = v138;
  sub_267EDD6BC(v136, v138);
  OUTLINED_FUNCTION_23_36();
  v177(v176);

  sub_267EDD6D4(v136, v138);
}

uint64_t sub_267EDCC00(char a1)
{
  if (a1 == 14)
  {
    return 1;
  }

  v1 = 4;
  v2 = 3;
  v3 = 0x1FFFFFFFE0;
  if (a1 == 15)
  {
    v3 = 2;
  }

  if (a1 != 30)
  {
    v2 = v3;
  }

  if (a1 != 20)
  {
    v1 = v2;
  }

  if (a1 == 31)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_267EDCC70(char a1, char a2)
{
  switch(a1)
  {
    case 1:

      goto LABEL_4;
    default:
      v4 = sub_267EF9EA8();

      v5 = 0;
      if (v4)
      {
LABEL_4:
        __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
        if (sub_267EF3BE8())
        {
          v5 = 1;
        }

        else
        {
          __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
          v5 = sub_267DBF878() & a2;
        }
      }

      return v5 & 1;
  }
}

uint64_t sub_267EDCDD4(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAC0, &unk_267EFE470);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v71 - v11);
  v78 = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (!swift_dynamicCast())
  {
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000015, 0x8000000267F18A80);
    v78 = a1;
    sub_267EF9C58();
    v24 = v72;
    v25 = v73;
    v26 = sub_267C266B0();
    v27 = OUTLINED_FUNCTION_61_1(&type metadata for RuntimeError, v26);
    *v28 = v24;
    v28[1] = v25;
    v72 = v27;
    LOBYTE(v77) = 1;
    a2(&v72);
    v29 = &unk_28022A480;
    v30 = &unk_267F029F0;
    v31 = &v72;
    return sub_267B9FF34(v31, v29, v30);
  }

  v14 = v72;
  v15 = v73;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v3;
  if (!(v15 >> 62))
  {
    sub_267EDBCF0(v14);

    sub_267EF90F8();

    sub_267EF79B8();
    v32 = OUTLINED_FUNCTION_21_38();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
LABEL_7:
    v34 = OUTLINED_FUNCTION_3_87();
    sub_267E4BABC(v34, 0, v35, v16, v36, v37, v38, v39, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
LABEL_8:

    goto LABEL_9;
  }

  if (v15 >> 62 == 1)
  {
    sub_267D6CFAC(v14);

    sub_267EF90F8();

    sub_267EF79B8();
    v17 = OUTLINED_FUNCTION_21_38();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
    type metadata accessor for MessagesApp(0);

    sub_267EC814C(v15 & 0x3FFFFFFFFFFFFFFFLL);
    OUTLINED_FUNCTION_0_80();
    sub_267E4BABC(v12, a3, v23, v16, v19, v20, v21, v22, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);

    sub_267EDD6A4(v14, v15);
LABEL_9:
    v29 = &unk_28022AE30;
    v30 = &qword_267EFC0B0;
    v31 = v12;
    return sub_267B9FF34(v31, v29, v30);
  }

  switch(v14)
  {
    case 1:

      OUTLINED_FUNCTION_1_90();
      sub_267E4A1C4();

    case 2:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v55 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v9, v56, v57, v55);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4A1EC();
      goto LABEL_21;
    case 3:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v48 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v9, v49, v50, v48);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4AC8C();
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v41 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v9, v42, v43, v41);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4AFA0();
      goto LABEL_21;
    case 5:
      OUTLINED_FUNCTION_28_38();
      OUTLINED_FUNCTION_15_46();
      v58 = sub_267EF7118();
      OUTLINED_FUNCTION_5_73(v9, v59, v60, v58);

      OUTLINED_FUNCTION_13_52();
      OUTLINED_FUNCTION_0_80();
      OUTLINED_FUNCTION_8_62();
      sub_267E4B044();
LABEL_21:

      break;
    case 7:
      sub_267EF79B8();
      v61 = OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_5_73(v61, v62, v63, v64);

      v65 = OUTLINED_FUNCTION_3_87();
      sub_267E4B2A8(v65, 0, v66, v16, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
      goto LABEL_8;
    case 9:
      sub_267EF79B8();
      v51 = OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_5_73(v51, v52, v53, v54);

      sub_267E4BC68();
      goto LABEL_8;
    case 10:

      OUTLINED_FUNCTION_1_90();
      sub_267E4B258();
      break;
    case 11:
      sub_267EF79B8();
      v44 = OUTLINED_FUNCTION_21_38();
      OUTLINED_FUNCTION_5_73(v44, v45, v46, v47);

      goto LABEL_7;
    default:

      OUTLINED_FUNCTION_1_90();
      sub_267E4B54C();
      sub_267EDD6A4(v14, v15);
      break;
  }
}

uint64_t sub_267EDD338(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = sub_267EF4228();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_267C6D464(a1, v22 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24[0] = *v16;
    v17 = v24[0];
    v25 = 1;
    v18 = v24[0];
    a2(v24);
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    __swift_project_boxed_opaque_existential_0((a4 + 16), *(a4 + 40));
    sub_267EF3BC8();
    v19 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
    v20 = sub_267EF4CC8();
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    v24[3] = v20;
    v24[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_0(v24);
    sub_267EF3F48();
    sub_267B9FF34(v22, &unk_28022CF80, &unk_267EFED50);
    sub_267B9FF34(v9, &unk_28022AE40, &unk_267EFCB60);
    v25 = 0;
    a2(v24);
    (*(v11 + 8))(v13, v10);
  }

  return sub_267B9FF34(v24, &unk_28022A480, &unk_267F029F0);
}

uint64_t sub_267EDD6A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_267EDD6BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  return result;
}

uint64_t sub_267EDD6D4(uint64_t a1, unint64_t a2)
{
  if (a1 >> 5 != 0xFFFFFFFF || (a2 & 0xF000000000000007) != 0)
  {
    return sub_267EDD6A4(a1, a2);
  }

  return a1;
}

unint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow034SendMessageUnsupportedUseCaseCheckC8StrategyC0F6ReasonO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return ((4 * v1) & 0xFFFFFFE0 | *a1 & 0x1F) + 2;
  }
}

uint64_t sub_267EDD714(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 5;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_267EDD75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 32 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_267EDD7AC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0x1FuLL;
    result[1] = v2;
  }

  else
  {
    *result = (a2 - 2) & 0x1F;
    result[1] = ((a2 - 2) >> 2) & 0x3FFFFFF8 | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_267EDD7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v47 = a3;
  v53 = type metadata accessor for FollowupOfferFlow.State(0);
  MEMORY[0x28223BE20](v53);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v52 = v10;
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - v12;
  v13 = sub_267EF7B88();
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_3_55();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v56 = a1;
  v57 = v4;
  *(v4 + 80) = xmmword_267EFE6F0;
  sub_267B9AFEC(a1, v66);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v20 = qword_2802286F0;

  if (v20 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v21 = sub_267BB4A3C();
  v45 = sub_267E7FF50(a2, v66, &v63, v21, 0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v9);
  v22 = type metadata accessor for SiriKitFlowFactoryImpl();
  v23 = swift_allocObject();
  v46 = v19;
  v24 = a2;
  v25 = v23;
  type metadata accessor for SendMessageCATs(0);
  v26 = v47;

  sub_267EF7B68();
  v49 = sub_267EF78E8();
  v66[3] = v22;
  v66[4] = &off_2878CFE90;
  v50 = v25;
  v66[0] = v25;
  type metadata accessor for FollowupOfferFlow(0);
  v27 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v66, v22);
  v48 = &v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_55();
  (*(v29 + 16))(v5);
  v30 = *v5;
  *(&v64 + 1) = v22;
  v65 = &off_2878CFE90;
  *&v63 = v30;
  *(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackResponseProvider) = 0;
  *(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow__sendTapbackState) = 0;
  v31 = (v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_onPromptForOfferPublished);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_strategy);
  v33 = v46;
  *v32 = v45;
  v32[1] = &off_2878D94A8;
  *(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversation) = v24;
  *(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_conversationManager) = v26;
  sub_267EB89D0(v33, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v9) == 1)
  {
    v34 = type metadata accessor for EmptyReferenceResolver();
    v35 = swift_allocObject();
    v62[3] = v34;
    v62[4] = sub_267EDEC78(&qword_2802299B8, 255, type metadata accessor for EmptyReferenceResolver, &unk_267F04AA8);
    v62[0] = v35;
    v61[3] = sub_267EF68A8();
    v61[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v61);

    sub_267EF6898();
    sub_267B9AFEC(v26 + 16, v60);
    sub_267B9AFEC(v61, v59);
    sub_267B9AFEC(v62, v58);
    v36 = swift_allocObject();
    sub_267B9A5E8(v60, v36 + 16);
    sub_267B9A5E8(v59, v36 + 56);
    sub_267B9A5E8(v58, v36 + 96);
    sub_267EF4C08();
    sub_267BB7170();
    v37 = v51;
    sub_267EF7058();
    sub_267B9FF34(v33, &qword_2802299A8, &unk_267F00CF0);
    __swift_destroy_boxed_opaque_existential_0(v61);
    __swift_destroy_boxed_opaque_existential_0(v62);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v9);
    v39 = v52;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9FF34(v17, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {

    sub_267B9FF34(v33, &qword_2802299A8, &unk_267F00CF0);
    v37 = v51;
    v39 = v52;
    (*(v52 + 32))(v51, v17, v9);
  }

  (*(v39 + 32))(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_transformer, v37, v9);
  sub_267B9A5E8(&v63, v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_siriKitFlowFactory);
  v40 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  swift_storeEnumTagMultiPayload();
  v41 = v54;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_267BF8DEC(v41, v27 + v40);
  swift_endAccess();
  *(v27 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_sendMessageCATs) = v49;
  sub_267B9AFEC(v26 + 16, v27 + 16);

  __swift_destroy_boxed_opaque_existential_0(v66);

  v42 = v56;
  v43 = v57;
  *(v57 + 56) = v27;
  *(v43 + 64) = v26;
  *(v43 + 72) = v55;
  sub_267B9A5E8(v42, v43 + 16);
  return v43;
}

uint64_t sub_267EDDEBC(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_7_2(v5))
  {
    v6 = OUTLINED_FUNCTION_32();
    *v6 = 0;
    _os_log_impl(&dword_267B93000, v4, v1, "#DelayedSpokenFollowupFlow: received input, forwarding to followupOfferFlow", v6, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  return sub_267C5F164(a1) & 1;
}

uint64_t sub_267EDDF88(void (*a1)(void))
{
  v4 = v1;
  v6 = sub_267EF4028();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_55();
  v10 = v1[10];
  if ((v10 - 2) < 2)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v18 = sub_267EF8A08();
    __swift_project_value_buffer(v18, qword_280240FB0);

    v19 = sub_267EF89F8();
    v20 = sub_267EF95E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 136315138;
      sub_267EDEC60(v4[10], v4[11]);
      v23 = sub_267EF9098();
      v25 = a1;
      v26 = sub_267BA33E8(v23, v24, &v62);

      *(v21 + 4) = v26;
      a1 = v25;
      _os_log_impl(&dword_267B93000, v19, v20, "#DelayedSpokenFollowupFlow.action() is called when it is in unexpected state: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF4018();
    a1(v2);
  }

  else
  {
    v11 = v1[11];
    if (!v10)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v27 = sub_267EF8A08();
      __swift_project_value_buffer(v27, qword_280240FB0);
      v28 = sub_267EF89F8();
      v29 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v29))
      {
        v30 = OUTLINED_FUNCTION_32();
        *v30 = 0;
        _os_log_impl(&dword_267B93000, v28, v3, "#DelayedSpokenFollowupFlow: No action group to run, completing", v30, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267EF4018();
      a1(v2);
      v17 = 0;
      goto LABEL_19;
    }

    if (v10 == 1)
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v12 = sub_267EF8A08();
      __swift_project_value_buffer(v12, qword_280240FB0);
      v13 = sub_267EF89F8();
      v14 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_7_2(v14))
      {
        v15 = OUTLINED_FUNCTION_32();
        *v15 = 0;
        _os_log_impl(&dword_267B93000, v13, v3, "#DelayedSpokenFollowupFlow: letting FollowupOfferFlow handle the request", v15, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v16 = v4[10];
      *(v4 + 5) = xmmword_267EFDDB0;
      sub_267EDEC4C(v16);
      type metadata accessor for FollowupOfferFlow(0);
      sub_267EDEC78(&qword_2802299C0, 255, type metadata accessor for FollowupOfferFlow, &unk_267EFEAE0);

      sub_267EF3FC8();

      a1(v2);
      v17 = 1;
LABEL_19:
      sub_267EDEC4C(v17);
      return (*(v8 + 8))(v2, v6);
    }

    v61 = v6;
    v31 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC60(v31, v32);
    v33 = qword_280228818;
    swift_unknownObjectRetain();
    if (v33 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v60 = v8;
    v34 = sub_267EF8A08();
    __swift_project_value_buffer(v34, qword_280240FB0);
    v35 = sub_267EF89F8();
    v36 = sub_267EF95C8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_32();
      *v37 = 0;
      _os_log_impl(&dword_267B93000, v35, v36, "#DelayedSpokenFollowupFlow: Running action group", v37, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v38 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC60(v38, v39);
    v40 = sub_267EF89F8();
    v41 = sub_267EF95D8();
    v42 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC4C(v42);
    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v62 = v44;
      *v43 = 136315138;
      v45 = OUTLINED_FUNCTION_91_2();
      sub_267EDEC60(v45, v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D230, &unk_267F0F1F0);
      v47 = sub_267EF9098();
      v49 = sub_267BA33E8(v47, v48, &v62);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_267B93000, v40, v41, "#DelayedSpokenFollowupFlow: Running action group: %s)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    v50 = v4[8];
    type metadata accessor for StaticReadingFlowSource();
    v51 = swift_allocObject();
    v51[2] = v10;
    v51[3] = v11;
    v51[4] = v50;
    sub_267EDEC78(&qword_28022D220, v52, type metadata accessor for StaticReadingFlowSource, &unk_267F0F158);
    sub_267EDEC78(&qword_28022D228, v53, type metadata accessor for StaticReadingFlowSource, &unk_267F0F100);
    sub_267EF34B8();
    swift_allocObject();

    v54 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC60(v54, v55);

    sub_267EF34A8();
    v56 = v4[10];
    *(v4 + 5) = xmmword_267EFDDC0;
    sub_267EDEC4C(v56);
    sub_267EF3FF8();
    a1(v2);

    v57 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC4C(v57);

    v58 = OUTLINED_FUNCTION_91_2();
    sub_267EDEC4C(v58);
    v8 = v60;
    v6 = v61;
  }

  return (*(v8 + 8))(v2, v6);
}

uint64_t sub_267EDE690(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BC68, &unk_267F08710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v7 = sub_267EF8A08();
  __swift_project_value_buffer(v7, qword_280240FB0);

  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[1] = v1;
    v29[0] = v11;
    *v10 = 136315138;
    type metadata accessor for DelayedSpokenFollowupFlow();
    sub_267EDEC78(&qword_280229488, v12, type metadata accessor for DelayedSpokenFollowupFlow, &unk_267F0F190);
    sub_267EF3748();
    v13 = sub_267EF9098();
    v15 = sub_267BA33E8(v13, v14, v29);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_267B93000, v8, v9, "#DelayedSpokenFollowupFlow Received exitValue from FollowupOfferFlow: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v16 = *(v1 + 72);
  v29[0] = *(v1 + 64);
  v29[1] = v16;
  sub_267E0BAE4(a1, v6);
  v17 = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v17);
  sub_267EB8AB8();

  v18 = sub_267EF44D8();
  v20 = v19;
  sub_267B9FF34(v6, &qword_28022BC68, &unk_267F08710);

  v21 = sub_267EF89F8();
  v22 = sub_267EF95C8();
  if (os_log_type_enabled(v21, v22))
  {
    if (v18)
    {
      v23 = "#DelayedSpokenFollowupFlow Received action group after returning from FollowupOfferFlow";
    }

    else
    {
      v23 = "#DelayedSpokenFollowupFlow No action group after returning from FollowupOfferFlow";
    }

    v24 = OUTLINED_FUNCTION_32();
    *v24 = 0;
    _os_log_impl(&dword_267B93000, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  if (v18)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v2 + 80);
  *(v2 + 80) = v18;
  *(v2 + 88) = v25;
  return sub_267EDEC4C(v26);
}

uint64_t sub_267EDE994()
{

  v1 = *(v0 + 80);

  return sub_267EDEC4C(v1);
}

uint64_t sub_267EDE9DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_267EDEC4C(*(v0 + 80));
  return v0;
}

uint64_t sub_267EDEA24()
{
  sub_267EDE9DC();

  return swift_deallocClassInstance();
}

uint64_t sub_267EDEAC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DelayedSpokenFollowupFlow();

  return sub_267EF3748();
}

uint64_t get_enum_tag_for_layout_string_16SiriMessagesFlow021DelayedSpokenFollowupC0C5State33_30B94A3D683270584293124EC07DA7F9LLO(unint64_t *a1)
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

uint64_t sub_267EDEB48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267EDEBA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_267EDEC00(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_267EDEC4C(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_267EDEC60(uint64_t result, uint64_t a2)
{
  if ((result - 1) >= 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_267EDEC78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_267EDECC0(uint64_t a1)
{
  v2 = sub_267BAF0DC(a1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v6 = sub_267EF7C18();
    v8 = v7;

    ++v3;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v4 = v11;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_267BF4EE8();
        v4 = v12;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      v3 = v5;
    }
  }
}

uint64_t sub_267EDEDFC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_267EF4FC8();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B08, &qword_267F0F240);
  v12 = sub_267EF4D38();
  OUTLINED_FUNCTION_58();
  v14 = v13;
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_267EFC020;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277D601C8], v12);
  sub_267EF4FB8();
  v17 = sub_267EF4F98();
  (*(v8 + 8))(v11, v6);
  *a3 = v17;
  sub_267B9A5E8(a2, (a3 + 1));
  return sub_267B9A5E8(a1, (a3 + 6));
}

uint64_t sub_267EDEFC8()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v0;
  v2 = sub_267EF4F58();
  v1[13] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[14] = v3;
  v1[15] = swift_task_alloc();
  v1[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  v1[17] = swift_task_alloc();
  v4 = sub_267EF4D68();
  v1[18] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[19] = v5;
  v1[20] = swift_task_alloc();
  v6 = sub_267EF4E88();
  v1[21] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267EDF17C()
{
  sub_267BBD3E4();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    sub_267B9A5E8((v0 + 56), v0 + 16);
    v3 = v1[9];
    v2 = v1[10];
    __swift_project_boxed_opaque_existential_0(v1 + 6, v3);
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    *v4 = v0;
    v4[1] = sub_267EDF358;

    return sub_267CB8088(v3, v2);
  }

  else
  {
    sub_267EDFD54(v0 + 56);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v9, v10, "#UserPersonaSignalCollector signal is not available");
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_76();

    OUTLINED_FUNCTION_4_3();

    return v11(0);
  }
}

uint64_t sub_267EDF358()
{
  OUTLINED_FUNCTION_12();
  *(*v0 + 224) = v1;

  v2 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267EDF44C()
{
  sub_267EDECC0(v0[28]);
  v2 = v1;
  v0[29] = v1;

  if (v2[2] == 1 && (v2[4] == 0xD000000000000013 ? (v3 = 0x8000000267F10280 == v2[5]) : (v3 = 0), v3 || (sub_267EF9EA8() & 1) != 0))
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    __swift_project_value_buffer(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v7, v8, "#UserPersonaSignalCollector only Messages app in candidate apps, returning 1p exclusive");
      OUTLINED_FUNCTION_32_0();
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_4_76();

    OUTLINED_FUNCTION_4_3();

    return v9(1);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    v0[30] = __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267B93000, v12, v13, "#UserPersonaSignalCollector calling signal gatherer", v14, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v15 = v0[12];

    v16 = swift_task_alloc();
    v0[31] = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v2;
    v17 = swift_task_alloc();
    v0[32] = v17;
    *(v17 + 16) = sub_267EDFDBC;
    *(v17 + 24) = v16;
    v18 = swift_task_alloc();
    v0[33] = v18;
    *v18 = v0;
    v18[1] = sub_267EDF760;
    v20 = v0[16];
    v19 = v0[17];

    return MEMORY[0x2822007B8](v19, 0, 0, 0xD000000000000010, 0x8000000267F13E50, sub_267EDFDC4, v17, v20);
  }
}

uint64_t sub_267EDF760()
{
  OUTLINED_FUNCTION_12();

  v0 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_267EDF888()
{
  v49 = v0;
  v1 = v0[17];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[25];
    v2 = v0[26];
    v4 = v0[24];
    v5 = v0[21];
    v6 = v0[22];

    v7 = *(v6 + 32);
    v7(v2, v1, v5);
    sub_267EDFDCC();
    swift_willThrowTypedImpl();
    v7(v3, v2, v5);
    v8 = *(v6 + 16);
    v8(v4, v3, v5);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();
    v11 = OUTLINED_FUNCTION_5_2(v10);
    v13 = v0[24];
    v12 = v0[25];
    if (v11)
    {
      v14 = v0[23];
      v44 = v0[22];
      v45 = v10;
      v15 = v0[21];
      v46 = v0[25];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48 = v17;
      *v16 = 136315138;
      v8(v14, v13, v15);
      v18 = sub_267EF9098();
      v20 = v19;
      v21 = *(v44 + 8);
      v21(v13, v15);
      v22 = sub_267BA33E8(v18, v20, &v48);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_267B93000, v9, v45, "#UserPersonaSignalCollector failed to gather signal: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      v21(v46, v15);
    }

    else
    {
      v40 = v0[21];
      v39 = v0[22];

      v41 = *(v39 + 8);
      v41(v13, v40);
      v41(v12, v40);
    }
  }

  else
  {
    v24 = v0[19];
    v23 = v0[20];
    v25 = v0[18];
    (*(v24 + 32))(v23, v1, v25);
    sub_267EF4D58();
    (*(v24 + 8))(v23, v25);
    sub_267EF4F38();
    v26 = v0[5];
    v27 = v0[6];
    __swift_project_boxed_opaque_existential_0(v0 + 2, v26);
    MEMORY[0x26D604A80](v26, v27);
    sub_267EF4F48();

    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    v30 = OUTLINED_FUNCTION_5_2(v29);
    v31 = v0[14];
    v32 = v0[15];
    v33 = v0[13];
    if (v30)
    {
      v47 = v0[15];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      v36 = sub_267EF97B8();
      v38 = sub_267BA33E8(v36, v37, &v48);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_267B93000, v28, v29, "#UserPersonaSignalCollector user persona value: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v31 + 8))(v47, v33);
    }

    else
    {

      (*(v31 + 8))(v32, v33);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_4_3();

  return v42(0);
}

uint64_t sub_267EDFCD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_0(a3 + 1, a3[4]);
  sub_267DA893C(*a3);
  sub_267EF0A6C();
}

uint64_t sub_267EDFD54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D238, &qword_267F0F238);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_267EDFDCC()
{
  result = qword_28022D240;
  if (!qword_28022D240)
  {
    sub_267EF4E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D240);
  }

  return result;
}

uint64_t sub_267EDFE24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_267EDFE64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267EDFEE0()
{
  OUTLINED_FUNCTION_12();
  v1[29] = v2;
  v1[30] = v0;
  v1[31] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[32] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v4);
  v1[33] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF48A8();
  v1[34] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[35] = v6;
  v1[36] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EDFFF8()
{
  v1 = *(v0[30] + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_37:
    v0[37] = v6;
    v0[38] = *(v1 + 128);

    v29 = swift_task_alloc();
    v0[39] = v29;
    *v29 = v0;
    v29[1] = sub_267EE03A0;
    OUTLINED_FUNCTION_93();

    return sub_267EE0B94();
  }

  v31 = v1;
  v4 = v0 + 22;
  v35 = v2 + 32;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v32 = v3;
  v33 = v0;
  while (1)
  {
    sub_267B9AFEC(v35 + 40 * v5, (v0 + 2));
    OUTLINED_FUNCTION_117_10();
    v7 = OUTLINED_FUNCTION_115_6();
    v9 = v8(v7);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v36 = v5;
    v10 = v9 >> 62 ? sub_267EF9A68() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v6 >> 62;
    result = v6 >> 62 ? sub_267EF9A68() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = result + v10;
    if (__OFADD__(result, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (!result)
    {
      if (!v11)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_267EF9A68();
      goto LABEL_15;
    }

    if (v11)
    {
      goto LABEL_14;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v15 >= v13)
    {
      v38 = v6;
      goto LABEL_16;
    }

LABEL_15:
    result = sub_267EF9BB8();
    v38 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
    v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_16:
    v16 = v15 - *(v14 + 16);
    if (v9 >> 62)
    {
      v18 = sub_267EF9A68();
      if (v18)
      {
        v19 = v18;
        result = sub_267EF9A68();
        if (v16 < result)
        {
          goto LABEL_43;
        }

        if (v19 < 1)
        {
          goto LABEL_45;
        }

        v34 = result;
        sub_267CF6EF8();
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
          v20 = OUTLINED_FUNCTION_75_13();
          v22 = sub_267C73FD8(v20, v21, v9);
          v24 = *v23;
          v22(v4, 0);
          OUTLINED_FUNCTION_104_9();
        }

        while (!v25);
        v3 = v32;
        v0 = v33;
        v17 = v34;
        goto LABEL_27;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        if (v16 < v17)
        {
          goto LABEL_44;
        }

        sub_267BA9F38(0, &qword_28022A350, 0x277CD3DE0);
        swift_arrayInitWithCopy();
LABEL_27:

        v6 = v38;
        if (v17 < v37)
        {
          goto LABEL_41;
        }

        if (v17 > 0)
        {
          v26 = *(v14 + 16);
          v27 = __OFADD__(v26, v17);
          v28 = v26 + v17;
          if (v27)
          {
            goto LABEL_42;
          }

          *(v14 + 16) = v28;
        }

        goto LABEL_32;
      }
    }

    v6 = v38;
    if (v10 > 0)
    {
      goto LABEL_41;
    }

LABEL_32:
    v5 = v36 + 1;
    if (v36 + 1 == v3)
    {

      v1 = v31;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_267EE03A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 320) = v4;
  *(v2 + 328) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EE04A4(uint64_t a1)
{
  v2 = v1[30];
  sub_267EF3C98();
  OUTLINED_FUNCTION_11_18();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EF7C18();
  v1[42] = v3;
  __swift_project_boxed_opaque_existential_0((v2 + 16), *(v2 + 40));
  v4 = OUTLINED_FUNCTION_68_0();
  v5(v4);
  __swift_project_boxed_opaque_existential_0(v1 + 7, v1[10]);
  OUTLINED_FUNCTION_68_0();
  sub_267EF3B98();
  v1[15] = &type metadata for MessagesFeatureFlagsImpl;
  v1[16] = off_2878D1228;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[43] = v6;
  *v6 = v7;
  v6[1] = sub_267EE062C;

  return sub_267BF57AC();
}

uint64_t sub_267EE062C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE0758()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[30];
  sub_267EF4158();
  v2 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_267EF4818();
  sub_267EF4198();
  swift_allocObject();
  v0[44] = sub_267EF4188();
  OUTLINED_FUNCTION_11_6((v1 + 16), *(v1 + 40));
  v6 = OUTLINED_FUNCTION_7_1();
  v7(v6);
  __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
  OUTLINED_FUNCTION_7_1();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[45] = v8;
  *v8 = v9;
  v8[1] = sub_267EE088C;
  OUTLINED_FUNCTION_30_2();

  return sub_267BCF3A4(v10, v11, v12, v13, v14);
}

uint64_t sub_267EE088C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 136));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EE09B0()
{
  OUTLINED_FUNCTION_62();

  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267EE0A5C()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EE0AE4()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EE0B94()
{
  OUTLINED_FUNCTION_12();
  v1[74] = v0;
  v2 = sub_267EF8228();
  v1[75] = v2;
  OUTLINED_FUNCTION_30_0(v2);
  v1[76] = v3;
  v1[77] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF79B8();
  v1[78] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[79] = v5;
  v1[80] = OUTLINED_FUNCTION_50();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE0CCC()
{
  v1 = *(*(v0 + 592) + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v1 + 24), v0 + 112);
  if (!*(v0 + 136))
  {
    sub_267B9F98C(v0 + 112, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v17, v18, "#ReplyOfferFlowStrategy no component to reply to");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v19 = 0xD000000000000030;
    v19[1] = 0x8000000267F1D920;
    swift_willThrow();
LABEL_22:
    OUTLINED_FUNCTION_114_9();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_93();

    __asm { BRAA            X1, X16 }
  }

  sub_267BE58F4((v0 + 112), v0 + 72);
  sub_267B9AFEC(v0 + 72, v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
  }

  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  sub_267B9AFEC(v0 + 72, v0 + 192);

  sub_267E7EE1C(v7, v0 + 192);

  sub_267B9F98C(v0 + 192, &qword_280229910, &unk_267EFEB70);
  (*(v4 + 104))(v3, *MEMORY[0x277D5D450], v5);
  OUTLINED_FUNCTION_8_63(v6 + 2);
  v8 = OUTLINED_FUNCTION_31();
  v9(v8);
  v10 = sub_267BEA714(v3, (v0 + 232));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_105_13();
  v11(v12);
  *(v0 + 536) = v10;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v98 = (v0 + 72);
  v20 = *(v0 + 680);
  v21 = *(v0 + 616);
  v22 = *(v0 + 600);

  OUTLINED_FUNCTION_70_15();
  v23();
  v24 = v6;
  v99 = v11;
  v26 = v6[5];
  v25 = v6[6];
  __swift_project_boxed_opaque_existential_0(v24 + 2, v24[5]);
  (*(v25 + 8))(v26, v25);
  v27 = sub_267BEA714(v21, (v0 + 272));
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_35_31();
  v28();
  *(v0 + 544) = v27;
  OUTLINED_FUNCTION_57_20();
  if (v20)
  {

    v29 = OUTLINED_FUNCTION_108();
    v30(v29);
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(v98);
    goto LABEL_22;
  }

  v31 = *(v0 + 672);
  OUTLINED_FUNCTION_89_14();

  OUTLINED_FUNCTION_70_15();
  v33(v32);
  v35 = v24[5];
  v34 = v24[6];
  __swift_project_boxed_opaque_existential_0(v24 + 2, v35);
  (*(v34 + 8))(v35, v34);
  v36 = sub_267BEA714(v25, (v0 + 312));
  OUTLINED_FUNCTION_109_11((v0 + 312));
  OUTLINED_FUNCTION_35_31();
  v38(v37);
  *(v0 + 552) = v36;
  OUTLINED_FUNCTION_57_20();
  if (v31)
  {
    v39 = *(v0 + 688);
    v40 = *(v0 + 680);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);

    v43 = *(v41 + 8);
    v43(v40, v42);
    v43(v39, v42);
    goto LABEL_21;
  }

  v44 = *(v0 + 664);
  OUTLINED_FUNCTION_89_14();

  OUTLINED_FUNCTION_70_15();
  v46(v45);
  OUTLINED_FUNCTION_8_63(v24 + 2);
  v47 = OUTLINED_FUNCTION_31();
  v48(v47);
  v49 = sub_267BEA714(v25, (v0 + 352));
  OUTLINED_FUNCTION_109_11((v0 + 352));
  OUTLINED_FUNCTION_35_31();
  v51(v50);
  *(v0 + 560) = v49;
  OUTLINED_FUNCTION_57_20();
  if (v44)
  {
    OUTLINED_FUNCTION_82_11();
    v52 = *(v0 + 632);
    v53 = *(v0 + 624);

    v54 = *(v52 + 8);
    v54(v44, v53);
    v55 = OUTLINED_FUNCTION_63();
    (v54)(v55);
    v54(v0 + 560, v53);
    goto LABEL_21;
  }

  v56 = *(v0 + 656);
  OUTLINED_FUNCTION_89_14();

  OUTLINED_FUNCTION_70_15();
  v58(v57);
  OUTLINED_FUNCTION_8_63(v24 + 2);
  v59 = OUTLINED_FUNCTION_31();
  v60(v59);
  v61 = sub_267BEA714(v25, (v0 + 392));
  OUTLINED_FUNCTION_109_11((v0 + 392));
  OUTLINED_FUNCTION_35_31();
  v63(v62);
  *(v0 + 568) = v61;
  OUTLINED_FUNCTION_57_20();
  if (v56)
  {
    OUTLINED_FUNCTION_82_11();
    v64 = *(v0 + 632);

    v65 = *(v64 + 8);
    v66 = OUTLINED_FUNCTION_106_8();
    v65(v66);
    v67 = OUTLINED_FUNCTION_68_0();
    v65(v67);
    v68 = OUTLINED_FUNCTION_90_12();
    v65(v68);
    v69 = OUTLINED_FUNCTION_401();
    (v65)(v69, v70);
    goto LABEL_21;
  }

  v71 = *(v0 + 648);
  OUTLINED_FUNCTION_89_14();

  OUTLINED_FUNCTION_70_15();
  v73(v72);
  OUTLINED_FUNCTION_8_63(v24 + 2);
  v74 = OUTLINED_FUNCTION_31();
  v75(v74);
  v76 = sub_267BEA714(v25, (v0 + 432));
  v77 = OUTLINED_FUNCTION_109_11((v0 + 432));
  (v99)(v77, v22);
  *(v0 + 576) = v76;
  OUTLINED_FUNCTION_57_20();
  if (v71)
  {
    OUTLINED_FUNCTION_82_11();
    v78 = *(v0 + 632);
    v79 = *(v0 + 624);

    v80 = *(v78 + 8);
    v80(v71, v79);
    v81 = OUTLINED_FUNCTION_68_16();
    (v80)(v81);
    v82 = OUTLINED_FUNCTION_79_15();
    (v80)(v82);
    v83 = OUTLINED_FUNCTION_50_1();
    (v80)(v83);
    v80(v0 + 576, v79);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_89_14();

  OUTLINED_FUNCTION_70_15();
  v84();
  OUTLINED_FUNCTION_8_63(v24 + 2);
  v85 = OUTLINED_FUNCTION_31();
  v86(v85);
  v87 = sub_267BEA714(v99, (v0 + 472));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  v88 = OUTLINED_FUNCTION_63();
  v99(v88);
  *(v0 + 584) = v87;
  sub_267EF8348();
  v89 = *(v0 + 688);
  v92 = *(v0 + 656);
  v93 = *(v0 + 592);
  v100 = *(v0 + 640);
  v101 = *(v0 + 664);

  __swift_project_boxed_opaque_existential_0((v93 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns), *(v93 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns + 24));
  v94 = swift_task_alloc();
  *(v0 + 696) = v94;
  *(v94 + 16) = v93;
  *(v94 + 24) = v89;
  *(v94 + 32) = v101;
  *(v94 + 48) = vextq_s8(v100, v100, 8uLL);
  *(v94 + 64) = v92;
  *(v94 + 72) = v98;
  v95 = swift_task_alloc();
  *(v0 + 704) = v95;
  *v95 = v0;
  v95[1] = sub_267EE16EC;
  OUTLINED_FUNCTION_93();

  return sub_267D40ACC();
}

uint64_t sub_267EE16EC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 712) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 720) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EE1810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = v14[80];
  v33 = v14[84];
  v16 = v14[78];
  v34 = v14[77];
  v17 = *(v14[79] + 8);
  v18 = OUTLINED_FUNCTION_68_16();
  v17(v18);
  (v17)(v15, v16);
  v19 = OUTLINED_FUNCTION_75_13();
  v17(v19);
  v20 = OUTLINED_FUNCTION_50_1();
  v17(v20);
  v21 = OUTLINED_FUNCTION_65_2();
  v17(v21);
  v22 = OUTLINED_FUNCTION_65_2();
  v17(v22);
  v23 = OUTLINED_FUNCTION_79_15();
  v17(v23);
  __swift_destroy_boxed_opaque_existential_0(v14 + 9);

  OUTLINED_FUNCTION_64_3();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, v33, v15, v34, a12, a13, a14);
}

uint64_t sub_267EE196C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v13 = *(v12[79] + 8);
  (v13)(v12[85], v12[78]);
  v14 = OUTLINED_FUNCTION_68_0();
  v13(v14);
  v15 = OUTLINED_FUNCTION_90_12();
  v13(v15);
  v16 = OUTLINED_FUNCTION_105_13();
  v13(v16);
  v17 = OUTLINED_FUNCTION_106_8();
  v13(v17);
  v18 = OUTLINED_FUNCTION_199();
  v13(v18);
  v19 = OUTLINED_FUNCTION_401();
  v13(v19);
  __swift_destroy_boxed_opaque_existential_0(v12 + 9);
  OUTLINED_FUNCTION_114_9();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_267EE1AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v11;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE1BA4, 0, 0);
}

uint64_t sub_267EE1BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v25 = OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_22();
  v27 = *(v26 + 16);
  v27(v22, v19, v25);
  OUTLINED_FUNCTION_17_34(v22);
  v27(v23, v18, v25);
  OUTLINED_FUNCTION_17_34(v23);
  v28 = OUTLINED_FUNCTION_83_10();
  (v27)(v28);
  OUTLINED_FUNCTION_17_34(v24);
  v27(v21, a11, v25);
  OUTLINED_FUNCTION_17_34(v21);
  v29 = OUTLINED_FUNCTION_33_25();
  (v27)(v29);
  OUTLINED_FUNCTION_12_53();
  v30 = OUTLINED_FUNCTION_33_25();
  (v27)(v30);
  OUTLINED_FUNCTION_12_53();
  v31 = swift_task_alloc();
  *(v20 + 136) = v31;
  *v31 = v20;
  v31[1] = sub_267EE1D00;
  OUTLINED_FUNCTION_92_12();
  OUTLINED_FUNCTION_89();

  return sub_267EE56DC();
}

uint64_t sub_267EE1D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_9_1();
  *v16 = v15;
  OUTLINED_FUNCTION_36_28();
  v18 = *(v17 + 120);
  v20 = *(v19 + 104);
  v21 = *v13;
  OUTLINED_FUNCTION_5();
  *v22 = v21;
  *(v15 + 144) = v12;

  v23 = OUTLINED_FUNCTION_65_2();
  sub_267B9F98C(v23, v24, &qword_267EFC0B0);
  v25 = OUTLINED_FUNCTION_68_16();
  sub_267B9F98C(v25, v26, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v20);
  v27 = OUTLINED_FUNCTION_50_1();
  sub_267B9F98C(v27, v28, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v18);
  OUTLINED_FUNCTION_74_13(a9);
  if (v12)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }

  else
  {

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_267EE1F18()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_30_2();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_267EE1FAC()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[37] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v4);
  v1[38] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF48A8();
  v1[39] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[40] = v6;
  v1[41] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EE20C4()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0[35] + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  v0[42] = v1;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v1 + 24), (v0 + 2));
  v2 = v0[5];
  sub_267B9F98C((v0 + 2), &qword_280229910, &unk_267EFEB70);
  if (v2)
  {
    v0[43] = *(v1 + 128);

    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_267BDC3FC;

    return sub_267EE23E8();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v9, v10, "#ReplyOfferFlowStrategy no component to reply to");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v11 = 0xD000000000000030;
    v11[1] = 0x8000000267F1D920;
    swift_willThrow();

    OUTLINED_FUNCTION_17();

    return v12();
  }
}

uint64_t sub_267EE22B8()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EE2338()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EE23E8()
{
  OUTLINED_FUNCTION_12();
  v1[129] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v2);
  v1[130] = OUTLINED_FUNCTION_2();
  v3 = sub_267EF8228();
  v1[131] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[132] = v4;
  v1[133] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF79B8();
  v1[134] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[135] = v6;
  v1[136] = OUTLINED_FUNCTION_50();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v1[140] = swift_task_alloc();
  v1[141] = swift_task_alloc();
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EE2558()
{
  v1 = *(*(v0 + 1032) + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  *(v0 + 1152) = v1;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v1 + 24), v0 + 632);
  if (!*(v0 + 656))
  {
    sub_267B9F98C(v0 + 632, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v17, v18, "#ReplyOfferFlowStrategy no component to reply to");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    swift_allocError();
    *v19 = 0xD000000000000030;
    v19[1] = 0x8000000267F1D920;
    swift_willThrow();
    OUTLINED_FUNCTION_13_53();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_63_1();

    __asm { BRAA            X1, X16 }
  }

  sub_267BE58F4((v0 + 632), v0 + 912);
  v83 = sub_267EE64F4();
  sub_267B9AFEC(v0 + 912, v0 + 432);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  v2 = swift_dynamicCast();
  *(v0 + 169) = v2;
  if (v2)
  {
    v3 = *(v0 + 336);
  }

  v4 = *(v0 + 1064);
  v5 = *(v0 + 1056);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 1032);
  sub_267B9AFEC(v0 + 912, v0 + 472);

  *(v0 + 170) = sub_267E7EE1C(v8, v0 + 472) & 1;

  sub_267B9F98C(v0 + 472, &qword_280229910, &unk_267EFEB70);
  *(v0 + 171) = sub_267EE68F0() & 1;
  (*(v5 + 104))(v4, *MEMORY[0x277D5D450], v6);
  v84 = v7;
  OUTLINED_FUNCTION_8_63(v7 + 2);
  v9 = OUTLINED_FUNCTION_31();
  v10(v9);
  v11 = sub_267BEA714(v4, (v0 + 512));
  __swift_destroy_boxed_opaque_existential_0((v0 + 512));
  v12 = *(v5 + 8);
  v12(v4, v6);
  *(v0 + 976) = v11;
  sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
  sub_267EF8348();
  v82 = v0 + 912;
  v20 = *(v0 + 1136);
  v87 = v12;
  v21 = *(v0 + 1064);
  v22 = *(v0 + 1048);

  OUTLINED_FUNCTION_71_12();
  v23();
  v25 = v7[5];
  v24 = v7[6];
  __swift_project_boxed_opaque_existential_0(v84 + 2, v84[5]);
  (*(v24 + 8))(v25, v24);
  v26 = sub_267BEA714(v21, (v0 + 552));
  __swift_destroy_boxed_opaque_existential_0((v0 + 552));
  v87(v21, v22);
  *(v0 + 984) = v26;
  sub_267EF8348();
  OUTLINED_FUNCTION_94_11();

  OUTLINED_FUNCTION_71_12();
  v29();
  v31 = v7[5];
  v30 = v7[6];
  __swift_project_boxed_opaque_existential_0(v84 + 2, v84[5]);
  (*(v30 + 8))(v31, v30);
  v32 = sub_267BEA714(v20, (v0 + 592));
  __swift_destroy_boxed_opaque_existential_0((v0 + 592));
  v33 = OUTLINED_FUNCTION_27_38();
  (v87)(v33);
  *(v0 + 992) = v32;
  sub_267EF8348();
  OUTLINED_FUNCTION_94_11();

  OUTLINED_FUNCTION_71_12();
  v34();
  OUTLINED_FUNCTION_8_63(v7 + 2);
  v35 = OUTLINED_FUNCTION_31();
  v36(v35);
  v37 = sub_267BEA714(v20, (v0 + 392));
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  v38 = OUTLINED_FUNCTION_27_38();
  (v87)(v38);
  *(v0 + 1000) = v37;
  OUTLINED_FUNCTION_116_8();
  OUTLINED_FUNCTION_94_11();

  OUTLINED_FUNCTION_71_12();
  v39();
  OUTLINED_FUNCTION_8_63(v7 + 2);
  v40 = OUTLINED_FUNCTION_31();
  v41(v40);
  v42 = sub_267BEA714(v20, (v0 + 672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 672));
  v43 = OUTLINED_FUNCTION_27_38();
  (v87)(v43);
  *(v0 + 1008) = v42;
  OUTLINED_FUNCTION_116_8();
  OUTLINED_FUNCTION_94_11();

  OUTLINED_FUNCTION_71_12();
  v44();
  OUTLINED_FUNCTION_8_63(v7 + 2);
  v45 = OUTLINED_FUNCTION_31();
  v46(v45);
  v47 = sub_267BEA714(v20, (v0 + 712));
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  v48 = OUTLINED_FUNCTION_27_38();
  (v87)(v48);
  *(v0 + 1016) = v47;
  OUTLINED_FUNCTION_116_8();
  OUTLINED_FUNCTION_94_11();

  OUTLINED_FUNCTION_71_12();
  v49();
  OUTLINED_FUNCTION_8_63(v7 + 2);
  v50 = OUTLINED_FUNCTION_31();
  v51(v50);
  v52 = sub_267BEA714(v20, (v0 + 752));
  __swift_destroy_boxed_opaque_existential_0((v0 + 752));
  v53 = OUTLINED_FUNCTION_27_38();
  (v87)(v53);
  *(v0 + 1024) = v52;
  OUTLINED_FUNCTION_116_8();

  if (v83)
  {
    v54 = *(v0 + 1128);
    v55 = *(v0 + 1120);
    v56 = *(v0 + 1032);
    v57 = OUTLINED_FUNCTION_45_29();
    v85 = v58;
    v88 = v57;
    __swift_project_boxed_opaque_existential_0(v59, v60);
    v61 = swift_task_alloc();
    *(v0 + 1160) = v61;
    *(v61 + 16) = v56;
    *(v61 + 24) = v85;
    *(v61 + 40) = v54;
    *(v61 + 48) = vextq_s8(v88, v88, 8uLL);
    *(v61 + 64) = v55;
    *(v61 + 72) = v82;
    v62 = swift_task_alloc();
    *(v0 + 1168) = v62;
    *v62 = v0;
    v62[1] = sub_267EE3220;
    OUTLINED_FUNCTION_63_1();

    return sub_267D4107C();
  }

  __swift_project_boxed_opaque_existential_0(v7 + 2, v7[5]);
  v65 = OUTLINED_FUNCTION_26_0();
  v66(v65);
  __swift_project_boxed_opaque_existential_0((v0 + 792), *(v0 + 816));
  OUTLINED_FUNCTION_26_0();
  v67 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 792));
  if (v67)
  {
    *(v0 + 856) = &type metadata for Features;
    *(v0 + 864) = sub_267BAFCAC();
    *(v0 + 832) = 22;
    v68 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v0 + 832));
    if (v68)
    {
      sub_267B9AFEC(v82, v0 + 872);
      if (swift_dynamicCast())
      {
        memcpy((v0 + 16), (v0 + 176), 0x99uLL);
        v69 = swift_task_alloc();
        *(v0 + 1192) = v69;
        *v69 = v0;
        v69[1] = sub_267EE36C0;
        OUTLINED_FUNCTION_63_1();

        return sub_267C0C914();
      }

      bzero((v0 + 176), 0x99uLL);
      sub_267B9F98C(v0 + 176, &qword_28022D260, &qword_267F0F368);
    }
  }

  v71 = *(v0 + 1128);
  v72 = *(v0 + 1120);
  v73 = *(v0 + 1096);
  v74 = *(v0 + 1032);
  v75 = OUTLINED_FUNCTION_45_29();
  v86 = v76;
  v89 = v75;
  __swift_project_boxed_opaque_existential_0(v77, v78);
  sub_267BF4920();
  v79 = swift_task_alloc();
  *(v0 + 1232) = v79;
  *(v79 + 16) = v74;
  *(v79 + 24) = v86;
  *(v79 + 40) = v71;
  *(v79 + 48) = vextq_s8(v89, v89, 8uLL);
  *(v79 + 64) = v72;
  *(v79 + 72) = v73;
  *(v79 + 80) = v82;
  v80 = swift_task_alloc();
  *(v0 + 1240) = v80;
  *v80 = v0;
  OUTLINED_FUNCTION_19_48(v80);
  OUTLINED_FUNCTION_63_1();

  return sub_267D415EC();
}

uint64_t sub_267EE3220()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1176) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 1184) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EE3580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_6_63();
  v14 = OUTLINED_FUNCTION_95_12();
  v13(v14);
  v15 = OUTLINED_FUNCTION_68_0();
  v13(v15);
  v16 = OUTLINED_FUNCTION_90_12();
  v13(v16);
  v17 = OUTLINED_FUNCTION_105_13();
  v13(v17);
  v18 = OUTLINED_FUNCTION_106_8();
  v13(v18);
  v19 = OUTLINED_FUNCTION_199();
  v13(v19);
  v20 = OUTLINED_FUNCTION_401();
  v13(v20);
  __swift_destroy_boxed_opaque_existential_0((v12 + 912));
  v30 = *(v12 + 1176);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_37_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_267EE36C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 172) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EE37AC()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v1 = v0 + 57;
  if (v0[10].i8[12] != 1)
  {
    sub_267C10274(v0[1].i64);
    goto LABEL_5;
  }

  v2 = v0[67].i64[0];
  v3 = v0[65].i64[0];
  sub_267C0C2B8(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[65].i64[0];
    sub_267C10274(v0[1].i64);
    sub_267B9F98C(v4, &unk_28022AE30, &qword_267EFC0B0);
LABEL_5:
    v5 = v0[70].i64[1];
    v6 = v0[70].i64[0];
    v7 = v0[68].i64[1];
    v8 = v0[64].i64[1];
    v9 = OUTLINED_FUNCTION_45_29();
    v23 = v10;
    v25 = v9;
    __swift_project_boxed_opaque_existential_0(v11, v12);
    sub_267BF4920();
    v13 = swift_task_alloc();
    v0[77].i64[0] = v13;
    *(v13 + 16) = v8;
    *(v13 + 24) = v23;
    *(v13 + 40) = v5;
    *(v13 + 48) = vextq_s8(v25, v25, 8uLL);
    *(v13 + 64) = v6;
    *(v13 + 72) = v7;
    *(v13 + 80) = v1;
    v14 = swift_task_alloc();
    v0[77].i64[1] = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_19_48(v14);
    goto LABEL_7;
  }

  v15 = v0[70].i64[1];
  v16 = v0[70].i64[0];
  v17 = v0[64].i64[1];
  v24 = vextq_s8(v0[69], v0[69], 8uLL);
  v26 = vextq_s8(v0[71], v0[71], 8uLL);
  v22 = v0[68];
  (*(v0[67].i64[1] + 32))(v0[68].i64[0], v0[65].i64[0], v0[67].i64[0]);
  __swift_project_boxed_opaque_existential_0((v17 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns), *(v17 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns + 24));
  sub_267BF4920();
  v18 = swift_task_alloc();
  v0[75].i64[0] = v18;
  *(v18 + 16) = v17;
  *(v18 + 24) = v26;
  *(v18 + 40) = v15;
  *(v18 + 48) = v24;
  *(v18 + 64) = v16;
  *(v18 + 72) = vextq_s8(v22, v22, 8uLL);
  *(v18 + 88) = v1;
  v19 = swift_task_alloc();
  v0[75].i64[1] = v19;
  *v19 = v0;
  v19[1] = sub_267EE3A14;
LABEL_7:
  OUTLINED_FUNCTION_89();

  return sub_267D415EC();
}

uint64_t sub_267EE3A14()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 1216) = v0;

  OUTLINED_FUNCTION_76_2();
  if (!v0)
  {
    *(v3 + 1224) = v1;
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267EE3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v33 = v14[142];
  v34 = v14[143];
  v15 = v14[141];
  OUTLINED_FUNCTION_13_53();
  v16 = v14[135];
  v17 = v14[134];
  sub_267C10274((v14 + 2));
  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_65_2();
  v18(v19);
  v20 = OUTLINED_FUNCTION_68_16();
  v18(v20);
  v21 = OUTLINED_FUNCTION_79_15();
  v18(v21);
  v22 = OUTLINED_FUNCTION_50_1();
  v18(v22);
  v23 = OUTLINED_FUNCTION_75_13();
  v18(v23);
  (v18)(v15, v17);
  (v18)(v33, v17);
  (v18)(v34, v17);
  __swift_destroy_boxed_opaque_existential_0(v14 + 114);
  v35 = v14[152];
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_37_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, v33, v35, a12, a13, a14);
}

uint64_t sub_267EE3F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_6_63();
  v14 = OUTLINED_FUNCTION_95_12();
  v13(v14);
  v15 = OUTLINED_FUNCTION_68_0();
  v13(v15);
  v16 = OUTLINED_FUNCTION_90_12();
  v13(v16);
  v17 = OUTLINED_FUNCTION_105_13();
  v13(v17);
  v18 = OUTLINED_FUNCTION_106_8();
  v13(v18);
  v19 = OUTLINED_FUNCTION_199();
  v13(v19);
  v20 = OUTLINED_FUNCTION_401();
  v13(v20);
  __swift_destroy_boxed_opaque_existential_0((v12 + 912));
  v30 = *(v12 + 1248);
  OUTLINED_FUNCTION_6_63();
  OUTLINED_FUNCTION_37_26();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_267EE4058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v11;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE4148, 0, 0);
}

uint64_t sub_267EE4148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v25 = OUTLINED_FUNCTION_40_27();
  OUTLINED_FUNCTION_22();
  v27 = *(v26 + 16);
  v27(v22, v19, v25);
  OUTLINED_FUNCTION_17_34(v22);
  v27(v23, v18, v25);
  OUTLINED_FUNCTION_17_34(v23);
  v28 = OUTLINED_FUNCTION_83_10();
  (v27)(v28);
  OUTLINED_FUNCTION_17_34(v24);
  v27(v21, a11, v25);
  OUTLINED_FUNCTION_17_34(v21);
  v29 = OUTLINED_FUNCTION_33_25();
  (v27)(v29);
  OUTLINED_FUNCTION_12_53();
  v30 = OUTLINED_FUNCTION_33_25();
  (v27)(v30);
  OUTLINED_FUNCTION_12_53();
  v31 = swift_task_alloc();
  *(v20 + 136) = v31;
  *v31 = v20;
  v31[1] = sub_267EE42A4;
  OUTLINED_FUNCTION_92_12();
  OUTLINED_FUNCTION_89();

  return sub_267EE5CB0();
}

uint64_t sub_267EE42A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  OUTLINED_FUNCTION_9_1();
  *v16 = v15;
  OUTLINED_FUNCTION_36_28();
  v18 = *(v17 + 120);
  v20 = *(v19 + 104);
  v21 = *v13;
  OUTLINED_FUNCTION_5();
  *v22 = v21;
  *(v15 + 144) = v12;

  v23 = OUTLINED_FUNCTION_65_2();
  sub_267B9F98C(v23, v24, &qword_267EFC0B0);
  v25 = OUTLINED_FUNCTION_68_16();
  sub_267B9F98C(v25, v26, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v20);
  v27 = OUTLINED_FUNCTION_50_1();
  sub_267B9F98C(v27, v28, &qword_267EFC0B0);
  OUTLINED_FUNCTION_74_13(v18);
  OUTLINED_FUNCTION_74_13(a9);
  if (v12)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }

  else
  {

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_267EE44BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v12;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE45CC, 0, 0);
}

uint64_t sub_267EE45CC()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v21 = v0[7];
  v20 = v0[6];
  v6 = v0[4];
  v5 = v0[5];
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v9 = *(v8 + 16);
  v9(v2, v6, v7);
  OUTLINED_FUNCTION_17_34(v2);
  v9(v1, v5, v7);
  v10 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
  v9(v3, v20, v7);
  OUTLINED_FUNCTION_17_34(v3);
  v9(v4, v21, v7);
  OUTLINED_FUNCTION_17_34(v4);
  v13 = OUTLINED_FUNCTION_33_25();
  (v9)(v13);
  OUTLINED_FUNCTION_12_53();
  v14 = OUTLINED_FUNCTION_33_25();
  (v9)(v14);
  OUTLINED_FUNCTION_12_53();
  v15 = OUTLINED_FUNCTION_33_25();
  (v9)(v15);
  OUTLINED_FUNCTION_12_53();
  v16 = OUTLINED_FUNCTION_33_25();
  (v9)(v16);
  OUTLINED_FUNCTION_12_53();
  v17 = swift_task_alloc();
  v0[21] = v17;
  *v17 = v0;
  v17[1] = sub_267EE47C0;
  OUTLINED_FUNCTION_102_10();
  OUTLINED_FUNCTION_93();

  return sub_267EE50D8();
}

uint64_t sub_267EE47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  OUTLINED_FUNCTION_9_1();
  *v18 = v17;
  v44 = *(v19 + 160);
  OUTLINED_FUNCTION_84();
  v43 = *(v20 + 152);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_36_28();
  v22 = *(v21 + 136);
  v24 = v23[16];
  v25 = v23[15];
  v26 = v23[14];
  v27 = v23[13];
  v28 = *v15;
  OUTLINED_FUNCTION_5();
  *v29 = v28;
  *(v17 + 176) = v14;

  OUTLINED_FUNCTION_60_17(v27);
  OUTLINED_FUNCTION_60_17(v26);
  OUTLINED_FUNCTION_60_17(v25);
  OUTLINED_FUNCTION_60_17(v24);
  OUTLINED_FUNCTION_60_17(v22);
  OUTLINED_FUNCTION_60_17(a9);
  OUTLINED_FUNCTION_60_17(v43);
  OUTLINED_FUNCTION_60_17(v44);
  if (v14)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_64_3();

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  else
  {

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_64_3();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, a12, a13, a14);
  }
}

uint64_t sub_267EE4A18()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EE4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v11;
  v8[11] = v12;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267EE4BDC, 0, 0);
}

uint64_t sub_267EE4BDC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v17 = v0[12];
  v5 = v0[5];
  v16 = v0[6];
  v6 = v0[4];
  v7 = sub_267EF79B8();
  OUTLINED_FUNCTION_22();
  v9 = *(v8 + 16);
  v9(v1, v6, v7);
  OUTLINED_FUNCTION_17_34(v1);
  v9(v2, v5, v7);
  OUTLINED_FUNCTION_17_34(v2);
  v9(v3, v16, v7);
  OUTLINED_FUNCTION_12_53();
  v10 = OUTLINED_FUNCTION_83_10();
  (v9)(v10);
  OUTLINED_FUNCTION_17_34(v4);
  v11 = OUTLINED_FUNCTION_33_25();
  (v9)(v11);
  OUTLINED_FUNCTION_12_53();
  v12 = OUTLINED_FUNCTION_33_25();
  (v9)(v12);
  OUTLINED_FUNCTION_12_53();
  v13 = OUTLINED_FUNCTION_33_25();
  (v9)(v13);
  OUTLINED_FUNCTION_12_53();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v7);
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_267EE4DC4;
  OUTLINED_FUNCTION_102_10();

  return sub_267EE50D8();
}

uint64_t sub_267EE4DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_14();
  v17 = v16;
  OUTLINED_FUNCTION_9_1();
  *v18 = v17;
  v44 = *(v19 + 152);
  OUTLINED_FUNCTION_84();
  v43 = *(v20 + 144);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_36_28();
  v22 = *(v21 + 128);
  v24 = v23[15];
  v25 = v23[14];
  v26 = v23[13];
  v27 = v23[12];
  v28 = *v15;
  OUTLINED_FUNCTION_5();
  *v29 = v28;
  *(v17 + 168) = v14;

  OUTLINED_FUNCTION_60_17(v27);
  OUTLINED_FUNCTION_60_17(v26);
  OUTLINED_FUNCTION_60_17(v25);
  OUTLINED_FUNCTION_60_17(v24);
  OUTLINED_FUNCTION_60_17(v22);
  OUTLINED_FUNCTION_60_17(a9);
  OUTLINED_FUNCTION_60_17(v43);
  OUTLINED_FUNCTION_60_17(v44);
  if (v14)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_64_3();

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  else
  {

    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_64_3();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, v43, v44, a12, a13, a14);
  }
}

uint64_t sub_267EE501C()
{

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267EE50D8()
{
  OUTLINED_FUNCTION_12();
  v1[16] = v19;
  v1[17] = v0;
  v1[14] = v2;
  v1[15] = v18;
  v10 = OUTLINED_FUNCTION_100_9(v3, v4, v5, v6, v7, v8, v9);
  v1[18] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v12);
  v1[21] = OUTLINED_FUNCTION_50();
  v1[22] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_267EE51BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_116();
  v19 = *(v18 + 176);
  v20 = *(v18 + 136);
  v65 = *(v18 + 112);
  v66 = *(v18 + 120);
  v63 = *(v18 + 96);
  v64 = *(v18 + 104);
  v21 = *(v18 + 80);
  v22 = *(v18 + 88);
  v24 = *(v18 + 64);
  v23 = *(v18 + 72);
  v25 = *(v18 + 56);
  v62 = *(v20 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  *(v18 + 184) = sub_267EE6290(v62);
  *(v18 + 192) = v26;
  sub_267EF90F8();
  v27 = sub_267EF79B8();
  *(v18 + 200) = v27;
  v30 = OUTLINED_FUNCTION_115_8(v19, v28, v29, v27);
  v31 = type metadata accessor for SearchForMessagesOfferReplyParameters(v30);
  *(v18 + 208) = v31;
  sub_267BD3DDC(v19, v25 + v31[6]);
  sub_267BE855C(v24, v25);
  sub_267BE855C(v23, v25 + v31[17]);
  sub_267BE855C(v21, v25 + v31[16]);
  sub_267BE855C(v22, v25 + v31[7]);
  sub_267BE855C(v63, v25 + v31[14]);
  sub_267BE855C(v64, v25 + v31[15]);
  sub_267BE855C(v65, v25 + v31[18]);
  sub_267BE855C(v66, v25 + v31[13]);
  OUTLINED_FUNCTION_11_6((v20 + 16), *(v20 + 40));
  v32 = OUTLINED_FUNCTION_6_4();
  v33(v32);
  OUTLINED_FUNCTION_117_10();
  OUTLINED_FUNCTION_6_4();
  LOBYTE(v20) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  if (v20)
  {
    v34 = *(v18 + 128);
    v35 = *(v62 + 128);
    *(v18 + 216) = v35;
    OUTLINED_FUNCTION_85_13(v34);
    v36 = OUTLINED_FUNCTION_108();
    *(v18 + 224) = sub_267E3A014(v36, v37);
    v38 = sub_267BDAF74(v35);
    *(v18 + 240) = v38 & 1;
    if (v38)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v67 = v39;
      v40 = swift_task_alloc();
      *(v18 + 232) = v40;
      *v40 = v18;
      v40[1] = sub_267EE54D8;
      OUTLINED_FUNCTION_89();

      return v43(v41, v42, v43, v44, v45, v46, v47, v48, a9, v62, v63, v64, v65, v67, a15, a16, a17, a18);
    }

    v50 = *(v18 + 192);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_16_41();

    OUTLINED_FUNCTION_251();
    if (v50)
    {
      v51 = OUTLINED_FUNCTION_77_10();
      v52(v51);

      OUTLINED_FUNCTION_17();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_76_15();
    v61();
    OUTLINED_FUNCTION_2_76();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();
LABEL_10:
  OUTLINED_FUNCTION_89();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, v62, v63, v64, v65, v66, a15, a16, a17, a18);
}

uint64_t sub_267EE54D8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 241) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EE55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 224);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_15_47();

  OUTLINED_FUNCTION_63_15();
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_77_10();
    v17(v16);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    OUTLINED_FUNCTION_76_15();
    v18();
    OUTLINED_FUNCTION_2_76();

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_64_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EE56DC()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v1[7] = v7;
  v1[8] = v8;
  v9 = sub_267EF8248();
  v1[15] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v11);
  v1[18] = OUTLINED_FUNCTION_50();
  v1[19] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_267EE57C4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v31 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  v32 = *(v0 + 96);
  *(v0 + 160) = sub_267EE6290(v31);
  *(v0 + 168) = v7;
  sub_267EF90F8();
  v8 = sub_267EF79B8();
  *(v0 + 176) = v8;
  v11 = OUTLINED_FUNCTION_115_8(v1, v9, v10, v8);
  Parameters = type metadata accessor for SearchForMessagesOfferFullMessageReadParameters(v11);
  *(v0 + 184) = Parameters;
  sub_267BD3DDC(v1, v6 + Parameters[6]);
  v13 = OUTLINED_FUNCTION_115_6();
  sub_267BE855C(v13, v14);
  sub_267BE855C(v5, v6 + Parameters[13]);
  sub_267BE855C(v4, v6 + Parameters[11]);
  sub_267BE855C(v3, v6 + Parameters[9]);
  sub_267BE855C(v32, v6 + Parameters[10]);
  OUTLINED_FUNCTION_11_6((v2 + 16), *(v2 + 40));
  v15 = OUTLINED_FUNCTION_6_4();
  v16(v15);
  OUTLINED_FUNCTION_117_10();
  OUTLINED_FUNCTION_6_4();
  LOBYTE(v2) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v2)
  {
    v17 = *(v0 + 104);
    v18 = *(v31 + 128);
    *(v0 + 192) = v18;
    OUTLINED_FUNCTION_85_13(v17);
    v19 = OUTLINED_FUNCTION_108();
    *(v0 + 200) = sub_267E3A014(v19, v20);
    v21 = sub_267BDAF74(v18);
    *(v0 + 216) = v21 & 1;
    if (v21)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v22 = swift_task_alloc();
      *(v0 + 208) = v22;
      *v22 = v0;
      v22[1] = sub_267EE5AAC;
      OUTLINED_FUNCTION_15();

      __asm { BR              X2 }
    }

    v25 = *(v0 + 168);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_16_41();

    OUTLINED_FUNCTION_251();
    if (v25)
    {
      v26 = OUTLINED_FUNCTION_77_10();
      v27(v26);

      OUTLINED_FUNCTION_17();
LABEL_10:
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_76_15();
    v30();
    OUTLINED_FUNCTION_2_76();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();
  goto LABEL_10;
}

uint64_t sub_267EE5AAC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 217) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EE5B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 200);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_15_47();

  OUTLINED_FUNCTION_63_15();
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_77_10();
    v17(v16);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    OUTLINED_FUNCTION_76_15();
    v18();
    OUTLINED_FUNCTION_2_76();

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_64_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EE5CB0()
{
  OUTLINED_FUNCTION_12();
  v1[14] = v2;
  v1[15] = v0;
  v10 = OUTLINED_FUNCTION_100_9(v3, v4, v5, v6, v7, v8, v9);
  v1[16] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_18(v12);
  v1[19] = OUTLINED_FUNCTION_50();
  v1[20] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_267EE5D88()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  v30 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  *(v0 + 168) = sub_267EE6290(v30);
  *(v0 + 176) = v8;
  sub_267EF90F8();
  v9 = sub_267EF79B8();
  *(v0 + 184) = v9;
  v12 = OUTLINED_FUNCTION_115_8(v1, v10, v11, v9);
  v13 = type metadata accessor for SearchForMessagesOfferMultilingualReplyParameters(v12);
  *(v0 + 192) = v13;
  sub_267BD3DDC(v1, v7 + v13[6]);
  sub_267BE855C(v6, v7);
  sub_267BE855C(v5, v7 + v13[16]);
  sub_267BE855C(v4, v7 + v13[15]);
  sub_267BE855C(v3, v7 + v13[7]);
  sub_267BE855C(v31, v7 + v13[13]);
  sub_267BE855C(v32, v7 + v13[14]);
  OUTLINED_FUNCTION_11_6((v2 + 16), *(v2 + 40));
  v14 = OUTLINED_FUNCTION_6_4();
  v15(v14);
  OUTLINED_FUNCTION_117_10();
  OUTLINED_FUNCTION_6_4();
  LOBYTE(v2) = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v2)
  {
    v16 = *(v0 + 112);
    v17 = *(v30 + 128);
    *(v0 + 200) = v17;
    OUTLINED_FUNCTION_85_13(v16);
    v18 = OUTLINED_FUNCTION_108();
    *(v0 + 208) = sub_267E3A014(v18, v19);
    v20 = sub_267BDAF74(v17);
    *(v0 + 224) = v20 & 1;
    if (v20)
    {
      OUTLINED_FUNCTION_10(&dword_267F00478);
      v21 = swift_task_alloc();
      *(v0 + 216) = v21;
      *v21 = v0;
      v21[1] = sub_267EE608C;
      OUTLINED_FUNCTION_15();

      __asm { BR              X2 }
    }

    v24 = *(v0 + 176);
    sub_267EF7C18();
    OUTLINED_FUNCTION_234();
    OUTLINED_FUNCTION_16_41();

    OUTLINED_FUNCTION_251();
    if (v24)
    {
      v25 = OUTLINED_FUNCTION_77_10();
      v26(v25);

      OUTLINED_FUNCTION_17();
LABEL_10:
      OUTLINED_FUNCTION_15();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_76_15();
    v29();
    OUTLINED_FUNCTION_2_76();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();
  goto LABEL_10;
}

uint64_t sub_267EE608C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 225) = v3;

  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EE6178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 208);
  sub_267EF7C18();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_15_47();

  OUTLINED_FUNCTION_63_15();
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_77_10();
    v17(v16);

    OUTLINED_FUNCTION_17();
  }

  else
  {
    OUTLINED_FUNCTION_76_15();
    v18();
    OUTLINED_FUNCTION_2_76();

    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_64_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_267EE6290(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = v5;
    v7 = [v6 spokenPhrase];
    v8 = sub_267EF9028();

    return v8;
  }

  v10 = *(a1 + 16);
  if (sub_267BAF0DC(v10) >= 2)
  {
    sub_267C7FEA8();
    v8 = sub_267EFA028();
    v12 = v11;
    sub_267B9F98C(v4, &qword_2802295B8, &qword_267EFDCB0);
    if (v12)
    {
      return v8;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v15))
    {
LABEL_19:

      return 0;
    }

    v16 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v16);
    v19 = "#ReplyOfferFlowStrategy Unable to get group conversation label";
LABEL_18:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v17, v18, v19);
    OUTLINED_FUNCTION_26();
    goto LABEL_19;
  }

  if (!sub_267BAF0DC(v10))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
    v14 = sub_267EF89F8();
    v24 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v24))
    {
      goto LABEL_19;
    }

    v25 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v25);
    v19 = "#ReplyOfferFlowStrategy Unable to get personal conversation label";
    goto LABEL_18;
  }

  sub_267BBD0EC(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26D609870](0, v10);
  }

  else
  {
    v20 = *(v10 + 32);
  }

  v21 = v20;
  v22 = [v20 displayName];

  v8 = sub_267EF9028();
  return v8;
}

uint64_t sub_267EE64F4()
{
  v1 = sub_267EF2CC8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &type metadata for Features;
  v29 = sub_267BAFCAC();
  LOBYTE(v27) = 14;
  v5 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  if ((v5 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_5_2(v13))
    {
      goto LABEL_17;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v16 = "#ReplyOfferFlowStrategy not specifying language as mulitlingual feature flag is off";
    goto LABEL_16;
  }

  v6 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v6 + 24), &v27);
  if (!v28)
  {
    sub_267B9F98C(&v27, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v17 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
    v12 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_5_2(v18))
    {
      goto LABEL_17;
    }

    *OUTLINED_FUNCTION_32() = 0;
    v16 = "#ReplyOfferFlowStrategy no component to reply to";
LABEL_16:
    OUTLINED_FUNCTION_28_11(&dword_267B93000, v14, v15, v16);
    OUTLINED_FUNCTION_32_0();
LABEL_17:

    return 0;
  }

  sub_267BE58F4(&v27, v30);
  v7 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager);
  if (!v7)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v21))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_28_11(&dword_267B93000, v22, v23, "#ReplyOfferFlowStrategy conversationManager is nil, cannot specify message language");
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_23;
  }

  v8 = v30[4];
  __swift_project_boxed_opaque_existential_0(v30, v30[3]);
  v9 = *(v8 + 32);

  v10 = OUTLINED_FUNCTION_63();
  v9(v10);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();

  sub_267BB7A18();

  if (v32 != 1)
  {
    if (v32 != 255)
    {
      sub_267B9F98C(v31, &qword_280229918, &qword_267F003B0);
    }

LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(v30);
    return 0;
  }

  sub_267BEB520(v7 + 152, &v27);
  v25 = xmmword_267F00B80;
  v26 = 4;
  sub_267EF2CB8();
  sub_267C5BD60(&v25, v4);

  (*(v2 + 8))(v4, v1);
  sub_267B9EF14(&v27);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return 1;
}

uint64_t sub_267EE68F0()
{
  v36 = &type metadata for Features;
  v37 = sub_267BAFCAC();
  LOBYTE(v35[0]) = 24;
  v1 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(v35);
  if ((v1 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (!OUTLINED_FUNCTION_36(v18))
    {
      goto LABEL_23;
    }

    v19 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v19);
    v22 = "#ReplyOfferFlowStrategy: CarPlay Tapback feature flag is off, not offering Tapback button";
    goto LABEL_22;
  }

  v2 = *(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267C8F7C0(*(v2 + 24), &v33);
  if (!v34)
  {
    sub_267B9F98C(&v33, &qword_280229910, &unk_267EFEB70);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v23 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v23, qword_280240FB0);
    v17 = sub_267EF89F8();
    v24 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v24))
    {
      goto LABEL_23;
    }

    v25 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v25);
    v22 = "#ReplyOfferFlowStrategy: Unable to get readable component for a tapback target";
LABEL_22:
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v20, v21, v22);
    OUTLINED_FUNCTION_26();
LABEL_23:

LABEL_30:
    v15 = 0;
    return v15 & 1;
  }

  sub_267BE58F4(&v33, v35);
  __swift_project_boxed_opaque_existential_0(v35, v36);
  v3 = OUTLINED_FUNCTION_26_0();
  v5 = v4(v3);
  if (!sub_267BAF0DC(v5))
  {

LABEL_25:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v26 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v28))
    {
      v29 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v29);
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v30, v31, "#ReplyOfferFlowStrategy: Tapback button is only offered for message services available in 1P Messages app");
      OUTLINED_FUNCTION_26();
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
    goto LABEL_30;
  }

  sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D609870](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = sub_267EE7060(v7);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  *&v33 = v10;
  *(&v33 + 1) = v11;
  MEMORY[0x28223BE20](v8);
  v12 = sub_267BC2B54();

  if (!v12)
  {
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_0(v35, v36);
  v13 = OUTLINED_FUNCTION_26_0();
  v15 = v14(v13);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v15 & 1;
}

uint64_t sub_267EE6C44()
{
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_confirmedResponse);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_catProvider));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_searchForMessagesPatterns));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_featureFlags));
}

uint64_t type metadata accessor for ReplyOfferFlowStrategy(uint64_t a1)
{
  result = qword_28022D250;
  if (!qword_28022D250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267EE6D28(uint64_t a1)
{
  result = type metadata accessor for ReadingOfferBehaviorFlowFrameResult(319);
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

uint64_t sub_267EE6E18(uint64_t a1)
{
  v6 = (*(*v1 + 248) + **(*v1 + 248));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267BAEBEC;

  return v6(a1);
}

uint64_t sub_267EE6F3C(uint64_t a1)
{
  v6 = (*(*v1 + 232) + **(*v1 + 232));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267BBD07C;

  return v6(a1);
}

uint64_t sub_267EE7060(void *a1)
{
  v1 = [a1 serviceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

uint64_t sub_267EE70C4()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_40();

  return sub_267EE4AD4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267EE7170()
{
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_64_3();

  return sub_267EE44BC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267EE7238()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BBD07C;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_40();

  return sub_267EE4058(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267EE72E0()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_28_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v1[1] = sub_267BAEBEC;
  OUTLINED_FUNCTION_26_25();
  OUTLINED_FUNCTION_40();

  return sub_267EE1AB4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_267EE738C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BAD8, &qword_267F08298);
  OUTLINED_FUNCTION_18(v3);
  v2[9] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF4298();
  v2[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v2[11] = v5;
  v2[12] = OUTLINED_FUNCTION_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v6);
  v2[13] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v7);
  v2[14] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF48A8();
  v2[15] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v2[16] = v9;
  v2[17] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267EE74FC()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0[8] + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversationManager);
  if (v1 && (v2 = *(v1 + 112), v0[18] = v2, (v2 - 1) <= 1))
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_267EE769C;

    return sub_267EE0B94();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v8);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v9, v10, "#SpokenReplyOfferFlowStrategy Not offering full read prompt for CarPlay announce. Returning empty output");
      OUTLINED_FUNCTION_26();
    }

    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_23_37();

    OUTLINED_FUNCTION_1();

    return v11();
  }
}

uint64_t sub_267EE769C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_267EE7804(uint64_t a1)
{
  if (v1[18] == 2)
  {
    v2 = v1[20];
    sub_267EE9344();
    v3 = sub_267EF92D8();
    [v2 setDialog_];
  }

  v4 = v1[13];
  sub_267EF3C98();
  OUTLINED_FUNCTION_294();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EE7DA8(v4);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_267EF4818();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v11))
  {
    v12 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v12);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v13, v14, "#SpokenReplyOfferFlowStrategy update dimissal settings");
    OUTLINED_FUNCTION_26();
  }

  v16 = v1[11];
  v15 = v1[12];
  v18 = v1[9];
  v17 = v1[10];
  v19 = v1[8];

  sub_267EF42A8();
  sub_267EF4288();
  (*(v16 + 16))(v18, v15, v17);
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v17);
  sub_267EF4828();
  sub_267EF4198();
  swift_allocObject();
  v1[21] = sub_267EF4188();
  v23 = *(*(v19 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) + 128);
  v1[22] = v23;
  v24 = v19[5];
  v25 = v19[6];
  __swift_project_boxed_opaque_existential_0(v19 + 2, v24);
  v26 = *(v25 + 8);

  v26(v24, v25);
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v27 = sub_267EF3C48();
  v28 = swift_task_alloc();
  v1[23] = v28;
  *v28 = v1;
  v28[1] = sub_267EE7AE4;
  v29 = v1[20];
  v30 = v1[17];
  v31 = v1[7];

  return sub_267BCF3A4(v31, v29, v30, v23, v27 & 1);
}

uint64_t sub_267EE7AE4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *(v2 + 192) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267EE7C2C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_16_42();
  v0 = OUTLINED_FUNCTION_37_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_66();
  v3(v2);
  OUTLINED_FUNCTION_23_37();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_267EE7CDC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_16_42();
  v1 = OUTLINED_FUNCTION_37_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_66();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267EE7DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267EF53D8();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v15))
  {
    v16 = OUTLINED_FUNCTION_32();
    *v16 = 0;
    _os_log_impl(&dword_267B93000, v14, v15, "#SpokenOfferFullReadingStrategy submitting context update for spoken follow-up", v16, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_280228900);
  }

  sub_267BB8DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_267F00200;
  *(v17 + 32) = sub_267BB90E4(0);
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_267BB90E4(1);
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_267BB90E4(2);
  *(v17 + 72) = v20;
  *(v17 + 80) = sub_267BB90E4(5);
  *(v17 + 88) = v21;
  *(v17 + 96) = sub_267BB90E4(6);
  *(v17 + 104) = v22;
  *(v17 + 112) = sub_267C8F86C(4);
  *(v17 + 120) = v23;
  sub_267EF4148();
  sub_267EF40D8();
  sub_267EF4108();
  v24 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v25 = sub_267EF9028();
  sub_267BF64EC(v25, v26, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_267EFCA40;
  *(v27 + 32) = v24;
  sub_267EF40F8();
  sub_267EF4098();
  sub_267EF6488();
  swift_allocObject();
  sub_267EF6478();
  sub_267BBB050();

  v28 = *(v4 + 16);
  v28(v10, v12, v2);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v30))
  {
    v31 = swift_slowAlloc();
    v51 = v12;
    v32 = v31;
    v49 = v31;
    v50 = swift_slowAlloc();
    v55 = v50;
    *v32 = 136315138;
    v33 = v53;
    v28(v53, v10, v2);
    sub_267EF5458();
    v48 = v29;
    v54[3] = v2;
    v54[4] = sub_267BF65C0();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
    v28(boxed_opaque_existential_0, v33, v2);
    v46 = sub_267EF5448();
    v52 = a1;
    v36 = v35;
    v37 = v10;
    v38 = *(v4 + 8);
    v47 = v30;
    v38(v33, v2);
    v38(v37, v2);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v39 = sub_267BA33E8(v46, v36, &v55);

    v41 = v48;
    v40 = v49;
    *(v49 + 4) = v39;
    _os_log_impl(&dword_267B93000, v41, v47, "#makeContextForConfirmIntent submitting NLv4 dialog act: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    OUTLINED_FUNCTION_32_0();
    v12 = v51;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    v42 = v10;
    v38 = *(v4 + 8);
    v38(v42, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v43 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_267EFC020;
  v28((v44 + v43), v12, v2);
  sub_267EF4088();
  return (v38)(v12, v2);
}

uint64_t sub_267EE82E0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v2[14] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v4);
  v2[15] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF48A8();
  v2[16] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v2[17] = v6;
  v2[18] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267EE83D8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    *v4 = 0;
    _os_log_impl(&dword_267B93000, v2, v3, "#SpokenReplyOfferFlowStrategy submitting context update for spoken follow-up", v4, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v5 = v0[13];

  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v6 = OUTLINED_FUNCTION_37_1();
  v7(v6);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_37_1();
  v8 = sub_267EF3C48();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v12);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v13, v14, "#SpokenReplyOfferFlowStrategy CarPlay, executing pattern without dialog");
      OUTLINED_FUNCTION_26();
    }

    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_267EE8694;

    return sub_267EE23E8();
  }

  else
  {
    if (v11)
    {
      v17 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v17);
      OUTLINED_FUNCTION_21_12(&dword_267B93000, v18, v19, "#SpokenReplyOfferFlowStrategy not CarPlay, returning NLContextUpdate only output");
      OUTLINED_FUNCTION_26();
    }

    v20 = v0[14];
    v21 = v0[12];

    sub_267EE8C84(v20);
    sub_267EF4158();
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = sub_267EF4CC8();
    v27 = MEMORY[0x277D5C1D8];
    v21[3] = v26;
    v21[4] = v27;
    __swift_allocate_boxed_opaque_existential_0(v21);
    sub_267EF4C98();

    OUTLINED_FUNCTION_1();

    return v28();
  }
}

uint64_t sub_267EE8694()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_267EE87D8()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[13];
  sub_267EE9344();
  v4 = v1;
  v5 = sub_267EF92D8();
  [v4 setDialog_];

  sub_267EF3CA8();
  OUTLINED_FUNCTION_294();
  sub_267EF47A8();
  sub_267EF4858();
  sub_267EE8C84(v2);
  sub_267EF4158();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_267EF4818();
  sub_267EF4198();
  swift_allocObject();
  v0[21] = sub_267EF4188();
  v10 = *(*(v3 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation) + 128);
  v0[22] = v10;
  v11 = v3[5];
  v12 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v11);
  v13 = *(v12 + 8);

  v13(v11, v12);
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  v14 = sub_267EF3C48();
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_267EE89DC;
  v16 = v0[20];
  v17 = v0[18];
  v18 = v0[12];

  return sub_267BCF3A4(v18, v16, v17, v10, v14 & 1);
}

uint64_t sub_267EE89DC()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  *(v2 + 192) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267EE8B48()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267EE8BE0()
{
  OUTLINED_FUNCTION_56();

  v1 = OUTLINED_FUNCTION_66();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267EE8C84@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = sub_267EF4158();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_267EF8AE8();
  OUTLINED_FUNCTION_58();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow22ReplyOfferFlowStrategy_conversation);
  swift_beginAccess();
  sub_267C8F7C0(*(v20 + 24), v50);
  v21 = v51;
  v22 = 0x280228000;
  if (!v51)
  {
    sub_267B9FF34(v50, &qword_280229910, &unk_267EFEB70);
LABEL_11:
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    goto LABEL_12;
  }

  v23 = v52;
  __swift_project_boxed_opaque_existential_0(v50, v51);
  v24 = (*(v23 + 16))(v21, v23);
  if (!sub_267BAF0DC(v24))
  {

    __swift_destroy_boxed_opaque_existential_0(v50);
    v22 = 0x280228000uLL;
    goto LABEL_11;
  }

  sub_267BBD0EC(0, (v24 & 0xC000000000000001) == 0, v24);
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x26D609870](0, v24);
  }

  else
  {
    v25 = *(v24 + 32);
  }

  v26 = v25;

  sub_267E61584(v10);

  __swift_destroy_boxed_opaque_existential_0(v50);
  v22 = 0x280228000;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v47 = *(v13 + 32);
    v47(v19, v10, v11);
    (*(v13 + 16))(v17, v19, v11);
    sub_267C70CB0();
    v28 = v27;
    v29 = *(v27 + 16);
    if (v29 >= *(v27 + 24) >> 1)
    {
      sub_267C70CB0();
      v28 = v45;
    }

    (*(v13 + 8))(v19, v11);
    *(v28 + 16) = v29 + 1;
    v47((v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29), v17, v11);
    v22 = 0x280228000;
    goto LABEL_17;
  }

LABEL_12:
  sub_267B9FF34(v10, &qword_2802294B0, &qword_267F001F0);
  if (*(v22 + 2072) != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v30 = sub_267EF8A08();
  __swift_project_value_buffer(v30, qword_280240FB0);
  v31 = sub_267EF89F8();
  v32 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v32))
  {
    v33 = OUTLINED_FUNCTION_32();
    *v33 = 0;
    _os_log_impl(&dword_267B93000, v31, v32, "#SpokenReplyOfferFlowStrategy No RR entity to donate", v33, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v28 = MEMORY[0x277D84F90];
LABEL_17:
  sub_267EF4148();
  if (qword_280228900 != -1)
  {
    OUTLINED_FUNCTION_7_3(&qword_280228900);
  }

  sub_267BB8DFC();
  sub_267EF40D8();
  sub_267EF4088();
  if (*(v28 + 16))
  {

    sub_267EF4058();
  }

  if (*(v22 + 2072) != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v34 = sub_267EF8A08();
  __swift_project_value_buffer(v34, qword_280240FB0);
  v35 = sub_267EF89F8();
  v36 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v50[0] = v38;
    *v37 = 134218242;
    *(v37 + 4) = *(v28 + 16);
    *(v37 + 12) = 2080;

    v40 = MEMORY[0x26D608FD0](v39, v11);
    v42 = v41;

    v43 = sub_267BA33E8(v40, v42, v50);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_267B93000, v35, v36, "#SpokenReplyOfferFlowStrategy submitting %ld entities: %s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  (*(v3 + 32))(v49, v6, v48);
}

uint64_t sub_267EE9264()
{
  sub_267BA1AEC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpokenReplyOfferFlowStrategy(uint64_t a1)
{
  result = qword_28022D268;
  if (!qword_28022D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267EE9344()
{
  result = qword_2802295A0;
  if (!qword_2802295A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802295A0);
  }

  return result;
}

BOOL sub_267EE9388(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  sub_267EF9AC8();
  OUTLINED_FUNCTION_12_54();
  v6 = ~v5;
  do
  {
    v7 = v4 & v6;
    v8 = (1 << (v4 & v6)) & *(a2 + (((v4 & v6) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v9 = v8 != 0;
    if (!v8)
    {
      break;
    }

    sub_267C96570(a2[6] + 40 * v7, v12);
    v10 = MEMORY[0x26D6097A0](v12, a1);
    sub_267C965CC(v12);
    v4 = v7 + 1;
  }

  while ((v10 & 1) == 0);
  return v9;
}

BOOL sub_267EE9454(char a1, void *a2)
{
  if (!a2[2])
  {
    return 0;
  }

  sub_267EF9FC8();
  sub_267D6C0D4(a1);
  OUTLINED_FUNCTION_39_27(v4, v5, v6);

  sub_267EFA018();
  OUTLINED_FUNCTION_12_54();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a2 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    sub_267D6C0D4(*(a2[6] + v10));
    v14 = v13;
    v16 = v15;
    sub_267D6C0D4(a1);
    if (v14 == v18 && v16 == v17)
    {

      return 1;
    }

    OUTLINED_FUNCTION_91_1();
    v20 = sub_267EF9EA8();

    v7 = v10 + 1;
  }

  while ((v20 & 1) == 0);
  return v12;
}

uint64_t sub_267EE9580(unsigned __int8 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v4 = a1;
    sub_267EF9FC8();
    MEMORY[0x26D609CA0](v4);
    sub_267EFA018();
    OUTLINED_FUNCTION_24_46();
    do
    {
      OUTLINED_FUNCTION_23_38();
    }

    while (v6 && *(a2[6] + v5) != v4);
  }

  return v2;
}

uint64_t sub_267EE9604(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    sub_267EF9FB8();
    OUTLINED_FUNCTION_24_46();
    do
    {
      OUTLINED_FUNCTION_23_38();
    }

    while (v6 && *(a2[6] + 8 * v5) != a1);
  }

  return v2;
}

uint64_t sub_267EE9664(char a1, void *a2)
{
  if (a2[2] && (sub_267EF9FC8(), v4 = sub_267D6CFAC(a1), OUTLINED_FUNCTION_39_27(v4, v5, v6), , sub_267EFA018(), OUTLINED_FUNCTION_12_54(), v9 = v8 & ~v7, ((*(a2 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) != 0))
  {
    v10 = ~v7;
    while (1)
    {
      v11 = 0xE500000000000000;
      v12 = 0x6D75626C61;
      switch(*(a2[6] + v9))
      {
        case 1:
          v11 = 0xE300000000000000;
          v12 = 7368801;
          break;
        case 2:
          v11 = 0xE700000000000000;
          v13 = 0x6C6369747261;
          goto LABEL_18;
        case 3:
          v11 = 0xE600000000000000;
          v12 = 0x747369747261;
          break;
        case 4:
          v11 = 0xE400000000000000;
          v12 = 1802465122;
          break;
        case 5:
          v11 = 0xE700000000000000;
          v13 = 0x646F73697065;
          goto LABEL_18;
        case 6:
          v12 = 0x6569766F6DLL;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v12 = 0x6E6F697461636F6CLL;
          break;
        case 8:
          v12 = 0x697461636F4C796DLL;
          v11 = 0xEA00000000006E6FLL;
          break;
        case 9:
          v14 = 1953458288;
          goto LABEL_14;
        case 0xA:
          v11 = 0xE800000000000000;
          v12 = 0x7473696C79616C70;
          break;
        case 0xB:
          v11 = 0xE700000000000000;
          v12 = 0x74736163646F70;
          break;
        case 0xC:
          v11 = 0xEA0000000000746FLL;
          v12 = 0x68736E6565726373;
          break;
        case 0xD:
          v11 = 0xE400000000000000;
          v12 = 2003789939;
          break;
        case 0xE:
          v11 = 0xE400000000000000;
          v12 = 1735290739;
          break;
        case 0xF:
          v14 = 1701079414;
LABEL_14:
          v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 0x10:
          v11 = 0xE700000000000000;
          v13 = 0x676170626577;
LABEL_18:
          v12 = v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        default:
          break;
      }

      v15 = 0xE500000000000000;
      v16 = 0x6D75626C61;
      switch(a1)
      {
        case 1:
          v15 = 0xE300000000000000;
          v16 = 7368801;
          break;
        case 2:
          v15 = 0xE700000000000000;
          v17 = 0x6C6369747261;
          goto LABEL_37;
        case 3:
          v15 = 0xE600000000000000;
          v16 = 0x747369747261;
          break;
        case 4:
          v15 = 0xE400000000000000;
          v16 = 1802465122;
          break;
        case 5:
          v15 = 0xE700000000000000;
          v17 = 0x646F73697065;
          goto LABEL_37;
        case 6:
          v16 = 0x6569766F6DLL;
          break;
        case 7:
          v15 = 0xE800000000000000;
          v16 = 0x6E6F697461636F6CLL;
          break;
        case 8:
          v16 = 0x697461636F4C796DLL;
          v15 = 0xEA00000000006E6FLL;
          break;
        case 9:
          v18 = 1953458288;
          goto LABEL_33;
        case 10:
          v15 = 0xE800000000000000;
          v16 = 0x7473696C79616C70;
          break;
        case 11:
          v15 = 0xE700000000000000;
          v16 = 0x74736163646F70;
          break;
        case 12:
          v15 = 0xEA0000000000746FLL;
          v16 = 0x68736E6565726373;
          break;
        case 13:
          v15 = 0xE400000000000000;
          v16 = 2003789939;
          break;
        case 14:
          v15 = 0xE400000000000000;
          v16 = 1735290739;
          break;
        case 15:
          v18 = 1701079414;
LABEL_33:
          v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
          break;
        case 16:
          v15 = 0xE700000000000000;
          v17 = 0x676170626577;
LABEL_37:
          v16 = v17 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
          break;
        default:
          break;
      }

      if (v12 == v16 && v11 == v15)
      {
        break;
      }

      v20 = sub_267EF9EA8();

      if ((v20 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
        {
          continue;
        }
      }

      return v20 & 1;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void sub_267EE9A5C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = sub_267EF6288();
  OUTLINED_FUNCTION_58();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_0();
  v8 = v7 - v6;
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_16_43();
    sub_267EF1ACC(v9, v10, MEMORY[0x277D5EF88]);
    sub_267EF8F48();
    v11 = v1 + 56;
    v18 = v1;
    OUTLINED_FUNCTION_12_54();
    v14 = ~v13;
    do
    {
      v15 = v12 & v14;
      if (((1 << (v12 & v14)) & *(v11 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      (*(v4 + 16))(v8, *(v18 + 48) + *(v4 + 72) * v15, v2);
      OUTLINED_FUNCTION_16_43();
      sub_267EF1ACC(&qword_28022C118, v16, MEMORY[0x277D5EF90]);
      v17 = sub_267EF8FE8();
      (*(v4 + 8))(v8, v2);
      v12 = v15 + 1;
    }

    while ((v17 & 1) == 0);
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EE9C14()
{
  v7 = sub_267EF9648();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_267EF9638();
  MEMORY[0x28223BE20](v3);
  v4 = sub_267EF8EA8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_267BA9F38(0, &qword_280229038, 0x277D85C78);
  sub_267EF8E68();
  v8 = MEMORY[0x277D84F90];
  sub_267EF1ACC(&qword_280229040, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229048, &unk_267EFC400);
  sub_267C16E7C(&qword_280229050, &qword_280229048, &unk_267EFC400);
  sub_267EF99C8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_267EF9668();
  qword_28022D278 = result;
  return result;
}

uint64_t sub_267EE9EA4(uint64_t a1, uint64_t a2)
{
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_62_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_267CB8FE8(0xD000000000000013, 0x8000000267F0F820, sub_267EF1AC4, v4);
}

void sub_267EE9F78(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_267BAF0DC(a1);
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v7 = sub_267EF7C18();
    v9 = v8;

    ++v4;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v5 = v12;
      }

      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_267BF4EE8();
        v5 = v13;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
      v4 = v6;
    }
  }

  a2(v5);
}

void sub_267EEA0E0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_267EF8E58();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v14 = v13 - v12;
  v28 = sub_267EF8EA8();
  OUTLINED_FUNCTION_58();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v20 = v19 - v18;
  if (qword_280228910 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_65_3();
  v21 = swift_allocObject();
  v21[2] = v1;
  v21[3] = v7;
  v21[4] = v5;
  v21[5] = v3;
  v29[4] = sub_267EF19B4;
  v29[5] = v21;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 1107296256;
  v29[2] = sub_267C16DE4;
  v29[3] = &block_descriptor_22;
  v22 = _Block_copy(v29);

  sub_267EF8E78();
  sub_267EF1ACC(&qword_280229180, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v23 = OUTLINED_FUNCTION_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_28_39();
  sub_267C16E7C(v25, v26, v27);
  sub_267EF99C8();
  MEMORY[0x26D609320](0, v20, v14, v22);
  _Block_release(v22);
  (*(v10 + 8))(v14, v8);
  (*(v16 + 8))(v20, v28);

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EEA3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;

  v8(sub_267EF1A04, v9);
}

void sub_267EEA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v54 = a5;
  v53 = sub_267EF89E8();
  v52 = *(v53 - 8);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  MEMORY[0x28223BE20](v9);
  v57 = &v50 - v12;
  if (*(a2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_appResolutionType) == 3)
  {
    sub_267EEB180(a3, a4, a1);
  }

  sub_267B9AFEC(a2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory, v65);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v55 = a2;
  MEMORY[0x28223BE20](v13);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for ExperimentSignalFactory();
  v63 = v18;
  v64 = &off_2878D94F8;
  *&v62 = v17;
  type metadata accessor for SignalInstrumentation();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(&v62, v18);
  MEMORY[0x28223BE20](v20);
  v56 = a1;
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v19[5] = v18;
  v19[6] = &off_2878D94F8;
  v19[2] = v24;
  v25 = MEMORY[0x277D84F90];
  v19[7] = MEMORY[0x277D84F90];
  v26 = v19 + 7;
  __swift_destroy_boxed_opaque_existential_0(&v62);
  __swift_destroy_boxed_opaque_existential_0(v65);
  v27 = v55;
  sub_267EEBAD4();
  if (v28)
  {
    v54 = v28;
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    v29 = qword_280240FC8;
    sub_267EF89C8();
    sub_267EF9698();
    sub_267EF89A8();
    sub_267B9AFEC(v27 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer, v65);
    __swift_project_boxed_opaque_existential_0(v65, v66);
    swift_beginAccess();
    v30 = *v26;
    v31 = *(*v26 + 16);
    if (v31)
    {
      v61 = v25;

      sub_267C7279C(0, v31, 0);
      v32 = v61;
      v33 = v30 + 32;
      do
      {
        sub_267B9AFEC(v33, v58);
        v34 = v59;
        v35 = v60;
        __swift_project_boxed_opaque_existential_0(v58, v59);
        (*(v35 + 16))(&v62, v34, v35);
        __swift_destroy_boxed_opaque_existential_0(v58);
        v61 = v32;
        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_267C7279C((v36 > 1), v37 + 1, 1);
          v32 = v61;
        }

        *(v32 + 16) = v37 + 1;
        sub_267B9A5E8(&v62, v32 + 40 * v37 + 32);
        v33 += 40;
        --v31;
      }

      while (v31);
    }

    v38 = v52;
    v39 = v53;
    (*(v52 + 16))(v11, v57, v53);
    v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v41 = (v51 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    (*(v38 + 32))(v43 + v40, v11, v39);
    *(v43 + v41) = v55;
    *(v43 + v42) = v19;
    v44 = v54;
    *(v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;

    v45 = v44;
    sub_267EF0A6C();

    (*(v38 + 8))(v57, v39);
    __swift_destroy_boxed_opaque_existential_0(v65);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v46 = sub_267EF8A08();
    __swift_project_value_buffer(v46, qword_280240FB0);
    v47 = sub_267EF89F8();
    v48 = sub_267EF95E8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_267B93000, v47, v48, "#AppSelectionSignalCollection: failed to create SELF message", v49, 2u);
      MEMORY[0x26D60A7B0](v49, -1, -1);
    }
  }
}

uint64_t sub_267EEAB14(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v56 = a1;
  v52 = a4;
  v53 = a3;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v49 - v6;
  v7 = sub_267EF4D68();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_267EF4E88();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A118, &qword_267F004A0);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  sub_267C2FB6C(v56, &v49 - v20, &qword_28022A118, &qword_267F004A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v18, v21, v10);
    v22 = v11;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v23 = sub_267EF8A08();
    __swift_project_value_buffer(v23, qword_280240FB0);
    v24 = *(v11 + 16);
    v24(v16, v18, v10);
    v25 = sub_267EF89F8();
    v26 = sub_267EF95E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = v28;
      *v27 = 136315138;
      v56 = v18;
      v24(v50, v16, v10);
      v29 = sub_267EF9098();
      v31 = v30;
      v32 = *(v22 + 8);
      v32(v16, v10);
      v33 = sub_267BA33E8(v29, v31, &v58);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_267B93000, v25, v26, "#AppSelectionSignalCollection: SignalGatherer#gatherValuesAndTimings error: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v27, -1, -1);

      v32(v56, v10);
    }

    else
    {

      v47 = *(v22 + 8);
      v47(v16, v10);
      v47(v18, v10);
    }
  }

  else
  {
    v34 = v51;
    (*(v51 + 32))(v9, v21, v7);
    v35 = v9;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v36 = sub_267EF8A08();
    __swift_project_value_buffer(v36, qword_280240FB0);
    v37 = sub_267EF89F8();
    v38 = sub_267EF95D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_267B93000, v37, v38, "#AppSelectionSignalCollection: SignalGatherer#gatherValuesAndTimings complete gatherAndSave success", v39, 2u);
      MEMORY[0x26D60A7B0](v39, -1, -1);
    }

    sub_267EF4D58();
    sub_267EEFE64();

    v40 = v53;
    v41 = *(v53 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 24);
    v42 = *(v53 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 32);
    __swift_project_boxed_opaque_existential_0((v53 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream), v41);
    v43 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_isolatedID;
    v44 = sub_267EF2D28();
    v45 = v40 + v43;
    v46 = v54;
    (*(*(v44 - 8) + 16))(v54, v45, v44);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v44);
    (*(v42 + 8))(v55, v46, v41, v42);
    sub_267B9F98C(v46, &qword_280229430, &qword_267EFD2C0);
    (*(v34 + 8))(v35, v7);
  }

  sub_267EF9688();
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  return sub_267EF89B8();
}

void sub_267EEB180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v3 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_shadowAppResolution);
  if (v10)
  {

    sub_267EF93D8();
    v11 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = v3;
    v12[6] = a1;
    v12[7] = a2;
    v12[8] = a3;

    sub_267E8FA18();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v18 = sub_267EF89F8();
    v14 = sub_267EF95E8();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = OUTLINED_FUNCTION_32();
      *v15 = 0;
      _os_log_impl(&dword_267B93000, v18, v14, "No shadow app resolution task running", v15, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v16 = v18;
  }
}

uint64_t sub_267EEB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v8[6] = swift_task_alloc();
  v8[7] = swift_task_alloc();
  v8[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D350, &unk_267F0F5C0);
  v10 = swift_task_alloc();
  v8[9] = v10;
  v11 = sub_267EF7D48();
  v8[10] = v11;
  v8[11] = *(v11 - 8);
  v8[12] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[13] = v12;
  *v12 = v8;
  v12[1] = sub_267EEB528;
  v13 = MEMORY[0x277D84A98];
  v14 = MEMORY[0x277D84AC0];

  return MEMORY[0x282200440](v10, a4, v11, v13, v14);
}

uint64_t sub_267EEB528()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_267EEB61C, 0, 0);
}

uint64_t sub_267EEB61C()
{
  v1 = v0[9];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_267B9F98C(v1, &qword_28022D350, &unk_267F0F5C0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    __swift_project_value_buffer(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "Shadow app resolution task failed", v5, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[6];
    v9 = v0[7];
    v10 = v0[2];
    (*(v0[11] + 32))(v0[12], v1, v0[10]);
    __swift_project_boxed_opaque_existential_0((v10 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream), *(v10 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream + 24));
    v11 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
    v12 = sub_267EF2D28();
    OUTLINED_FUNCTION_22();
    v14 = *(v13 + 16);
    v14(v9, v10 + v11, v12);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    v14(v8, v10 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_inferenceID, v12);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_267EEB8E8;

    return sub_267C3275C();
  }
}

uint64_t sub_267EEB8E8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_271();
  sub_267B9F98C(v3, v4, v5);
  OUTLINED_FUNCTION_271();
  sub_267B9F98C(v6, v7, v8);

  return MEMORY[0x2822009F8](sub_267EEBA34, 0, 0);
}

uint64_t sub_267EEBA34()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

void sub_267EEBAD4()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v0;
  v167 = v3;
  v161 = v5;
  v162 = v4;
  v163 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_60();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_45_30();
  sub_267EF4F78();
  OUTLINED_FUNCTION_58();
  v165 = v15;
  v166 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_0();
  v164 = v17 - v16;
  OUTLINED_FUNCTION_26_2();
  v18 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_60();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v143 - v26;
  v168 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (!v168)
  {
LABEL_16:
    if (qword_280228818 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
  if (!v28)
  {
    v65 = v168;
LABEL_15:

    goto LABEL_16;
  }

  v160 = v28;
  v157 = v1;
  v29 = [objc_allocWithZone(MEMORY[0x277D58220]) init];
  if (!v29)
  {

    v65 = v160;
    goto LABEL_15;
  }

  v30 = v29;
  v151 = v8;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v31 = sub_267EF8A08();
  v32 = __swift_project_value_buffer(v31, qword_280240FB0);

  v158 = v32;
  v33 = sub_267EF89F8();
  v34 = sub_267EF95D8();

  v35 = os_log_type_enabled(v33, v34);
  v156 = v27;
  v159 = v30;
  v148 = v24;
  if (v35)
  {
    v36 = OUTLINED_FUNCTION_48();
    v37 = OUTLINED_FUNCTION_52();
    v169[0] = v37;
    *v36 = 136315138;
    v38 = sub_267EF97A8();
    v153 = v12;
    v40 = v20;
    v41 = v2;
    v42 = sub_267BA33E8(v38, v39, v169);
    v12 = v153;

    *(v36 + 4) = v42;
    v2 = v41;
    v20 = v40;
    _os_log_impl(&dword_267B93000, v33, v34, "#AppSelectionSignalCollection: generating top-level SELF message for type %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    v30 = v159;
    OUTLINED_FUNCTION_32_0();
    v27 = v156;
    OUTLINED_FUNCTION_32_0();
  }

  v43 = sub_267BA9F38(0, &qword_2802294F0, 0x277D5AC78);
  v155 = v20;
  v44 = v20 + 16;
  v146 = *(v20 + 16);
  v146(v27, v2 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_isolatedID, v18);
  v45 = sub_267BBC890(v27);
  v46 = v160;
  [v160 setInferenceId_];

  [v168 setEventMetadata_];
  v47 = sub_267D29748();
  v51 = v47;
  v52 = v18;
  v147 = v44;
  if (!v50)
  {
    OUTLINED_FUNCTION_42_25(v47, v48, v49);
    v145 = v43;
    v69 = v161;

    v70 = sub_267EF89F8();
    v71 = sub_267EF95D8();

    v72 = os_log_type_enabled(v70, v71);
    v153 = v12;
    v154 = v2;
    if (v72)
    {
      v73 = OUTLINED_FUNCTION_48();
      v74 = OUTLINED_FUNCTION_52();
      v144 = v18;
      v75 = v71;
      v76 = v74;
      v169[0] = v74;
      *v73 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
      v77 = sub_267EF8F18();
      v79 = sub_267BA33E8(v77, v78, v169);

      *(v73 + 4) = v79;
      v80 = v75;
      v52 = v144;
      _os_log_impl(&dword_267B93000, v70, v80, "#AppSelectionSignalCollection: span matched recipients in apps %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    if (!sub_267BAF0DC(v51))
    {
      v130 = sub_267EF89F8();
      v131 = sub_267EF95E8();
      if (os_log_type_enabled(v130, v131))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v132, v133, v134, v135, v136, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      v126 = v51;
LABEL_61:
      v127 = v149;
      v128 = v150;
      v129 = 0;
      goto LABEL_62;
    }

    sub_267BBD0EC(0, (v51 & 0xC000000000000001) == 0, v51);
    v152 = v51;
    if ((v51 & 0xC000000000000001) != 0)
    {
      v81 = MEMORY[0x26D609870](0, v51);
    }

    else
    {
      v81 = *(v51 + 32);
    }

    v82 = v81;
    v83 = 1 << *(v69 + 32);
    v84 = -1;
    if (v83 < 64)
    {
      v84 = ~(-1 << v83);
    }

    v85 = v84 & *(v69 + 64);
    v86 = (v83 + 63) >> 6;

    v87 = 0;
    if (v85)
    {
      while (1)
      {
        v88 = v87;
LABEL_34:

        OUTLINED_FUNCTION_51_24();
        sub_267DEB810();
        if (v89)
        {
          break;
        }

        v85 &= v85 - 1;

        v87 = v88;
        if (!v85)
        {
          goto LABEL_31;
        }
      }

LABEL_41:
      v94 = v164;
      v95 = v165;
      v96 = v166;
      (*(v165 + 104))(v164, *MEMORY[0x277D60318], v166);
      v2 = v154;
      sub_267EEC760();
      v98 = v97;
      (*(v95 + 8))(v94, v96);
      v30 = v159;
      v12 = v153;
      if (v98)
      {
        sub_267EECDF8();
        v100 = v99;

        if (v100)
        {
          [v30 setInferenceCommsAppSelectionTrainingAppIndependentSignals_];
          v101 = OUTLINED_FUNCTION_73();
          sub_267BA8944(v101, v102);

          v61 = OUTLINED_FUNCTION_2_77();
          v64 = 0;
          goto LABEL_44;
        }

        v140 = OUTLINED_FUNCTION_2_77();
        sub_267DF6BA0(v140, v141, v142, 0);

LABEL_20:
        v168 = 0;
        goto LABEL_21;
      }

      v126 = v152;
      goto LABEL_61;
    }

LABEL_31:
    while (1)
    {
      v88 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v88 >= v86)
      {

        goto LABEL_41;
      }

      v85 = *(v69 + 64 + 8 * v88);
      ++v87;
      if (v85)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_66:
    OUTLINED_FUNCTION_0(&qword_280228818);
LABEL_17:
    v66 = sub_267EF8A08();
    __swift_project_value_buffer(v66, qword_280240FB0);
    v57 = sub_267EF89F8();
    v67 = sub_267EF95E8();
    if (os_log_type_enabled(v57, v67))
    {
      v68 = OUTLINED_FUNCTION_32();
      *v68 = 0;
      _os_log_impl(&dword_267B93000, v57, v67, "#AppSelectionSignalCollection: failed to generate top-level SELF message", v68, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    goto LABEL_19;
  }

  v152 = v47;
  if (v50 != 1)
  {
    v145 = v43;
    v90 = sub_267EF89F8();
    v91 = sub_267EF95E8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = OUTLINED_FUNCTION_32();
      *v92 = 0;
      _os_log_impl(&dword_267B93000, v90, v91, "#AppSelectionSignalCollection: recipientType is empty", v92, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v93 = &unk_267EFC000;
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_42_25(v47, v48, v49);
  v53 = v164;
  v54 = v165;
  v55 = v166;
  (*(v165 + 104))(v164, *MEMORY[0x277D60310], v166);
  sub_267EEC760();
  v57 = v56;
  (*(v54 + 8))(v53, v55);
  if (!v57)
  {

    v126 = OUTLINED_FUNCTION_2_77();
    v129 = 1;
LABEL_62:
    sub_267DF6BA0(v126, v127, v128, v129);
    goto LABEL_20;
  }

  sub_267EECDF8();
  v30 = v159;
  if (!v58)
  {

    v137 = OUTLINED_FUNCTION_2_77();
    sub_267DF6BA0(v137, v138, v139, 1);
LABEL_19:

    goto LABEL_20;
  }

  v145 = v43;
  [v159 setInferenceCommsAppSelectionTrainingAppIndependentSignals_];
  v59 = OUTLINED_FUNCTION_73();
  sub_267BA8944(v59, v60);

  v61 = OUTLINED_FUNCTION_2_77();
  v64 = 1;
LABEL_44:
  sub_267DF6BA0(v61, v62, v63, v64);
  v93 = &unk_267EFC000;
LABEL_45:

  v103 = sub_267EF89F8();
  v104 = sub_267EF95D8();

  v105 = os_log_type_enabled(v103, v104);
  v154 = v2;
  if (v105)
  {
    v106 = v2;
    v107 = OUTLINED_FUNCTION_48();
    v108 = OUTLINED_FUNCTION_52();
    v170 = v108;
    *v107 = v93[9];
    v109 = v106 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId;
    v110 = v157;
    sub_267C2FB6C(v109, v157, &qword_280229430, &qword_267EFD2C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v110, 1, v52);
    v144 = v52;
    if (EnumTagSinglePayload == 1)
    {
      sub_267B9F98C(v110, &qword_280229430, &qword_267EFD2C0);
      v112 = 0;
      v113 = 0;
    }

    else
    {
      v112 = sub_267EF2CE8();
      v113 = v114;
      (*(v155 + 8))(v110, v52);
    }

    v169[0] = v112;
    v169[1] = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v115 = sub_267EF9098();
    v117 = sub_267BA33E8(v115, v116, &v170);

    *(v107 + 4) = v117;
    _os_log_impl(&dword_267B93000, v103, v104, "#AppSelectionSignalCollection: crrCommsAppSelectionJointId:%s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v108);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();

    v52 = v144;
  }

  else
  {
  }

  sub_267C2FB6C(v154 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId, v12, &qword_280229430, &qword_267EFD2C0);
  v118 = __swift_getEnumTagSinglePayload(v12, 1, v52);
  v119 = v160;
  v120 = v155;
  if (v118 == 1)
  {
    sub_267B9F98C(v12, &qword_280229430, &qword_267EFD2C0);
  }

  else
  {
    v121 = v148;
    v122 = OUTLINED_FUNCTION_49_26();
    v123(v122);
    v124 = v156;
    v146(v156, v121, v52);
    v125 = sub_267BBC890(v124);
    [v30 setCrrCommsAppSelectionJointId_];

    (*(v120 + 8))(v121, v52);
  }

  [v168 setCommsAppSelectionGroundTruthGenerated_];

LABEL_21:
  OUTLINED_FUNCTION_47();
}

void sub_267EEC760()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D2F0, &qword_267F0F558);
  OUTLINED_FUNCTION_58();
  v60 = v5;
  MEMORY[0x28223BE20](v6);
  v63 = v55 - v7;
  OUTLINED_FUNCTION_26_2();
  v8 = sub_267EF4D38();
  OUTLINED_FUNCTION_58();
  v62 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v61 = v12 - v11;
  OUTLINED_FUNCTION_26_2();
  v13 = sub_267EF4F78();
  OUTLINED_FUNCTION_58();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_60();
  v58 = v17 - v18;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_45_30();
  v20 = sub_267EF4F88();
  OUTLINED_FUNCTION_58();
  v59 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_0();
  v25 = v24 - v23;
  v26 = [objc_allocWithZone(MEMORY[0x277D58240]) init];
  v27 = v26;
  if (v26)
  {
    [v26 setAppResolutionType_];
    v28 = sub_267EF4E18();
    OUTLINED_FUNCTION_6_0();
    v29 = swift_allocObject();
    v56 = v8;
    v30 = v29;
    *(v29 + 16) = v27;
    v31 = v27;
    v57 = v4;
    v32 = v31;
    v33 = v28;
    v34 = v3;
    sub_267E8A1C8(v33, MEMORY[0x277D60280], sub_267EF16D0, v30);

    v35 = sub_267EF4ED8();
    v55[0] = v20;
    v36 = v35;
    OUTLINED_FUNCTION_6_0();
    v37 = swift_allocObject();
    *(v37 + 16) = v32;
    v38 = v32;
    v55[1] = v34;
    sub_267E8A1C8(v36, MEMORY[0x277D602C8], sub_267EF16D8, v37);

    (*(v15 + 104))(v1, *MEMORY[0x277D60318], v13);
    (*(v15 + 16))(v58, v1, v13);
    sub_267EF4F68();
    (*(v15 + 8))(v1, v13);
    OUTLINED_FUNCTION_6_0();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = v38;
    sub_267EF16E8(v25, sub_267EF16E0, v39, v34);

    (*(v59 + 8))(v25, v55[0]);
    v59 = sub_267EF4FA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D340, &qword_267F0F598);
    v41 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_267EFC020;
    v43 = v42 + v41;
    v45 = v61;
    v44 = v62;
    v46 = v56;
    (*(v62 + 104))(v61, *MEMORY[0x277D601C8], v56);
    OUTLINED_FUNCTION_6_0();
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    v48 = *(v44 + 32);
    v49 = v63;
    v48(v63, v45, v46);
    v48(v43, v49, v46);
    v50 = (v43 + *(v57 + 48));
    OUTLINED_FUNCTION_62_0();
    v51 = swift_allocObject();
    *(v51 + 16) = sub_267EF17E8;
    *(v51 + 24) = v47;
    *v50 = sub_267D242D4;
    v50[1] = v51;
    v52 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D348, &unk_267F0F5A0);
    OUTLINED_FUNCTION_14_49();
    sub_267EF1ACC(v53, v54, MEMORY[0x277D60228]);
    sub_267EF8F28();
    sub_267E8A24C();
  }

  OUTLINED_FUNCTION_47();
}

id sub_267EECCC8(void *a1, void *a2)
{
  v3 = [a1 longLongValue];

  return [a2 setRequestOriginLocale_];
}

id sub_267EECD14(void *a1, void *a2)
{
  v3 = [a1 longLongValue];

  return [a2 setRequestOriginLanguage_];
}

id sub_267EECD60(void *a1, void *a2)
{
  v3 = [a1 longLongValue];

  return [a2 setCommunicationType_];
}

id sub_267EECDAC(void *a1, void *a2)
{
  v3 = [a1 intValue];

  return [a2 setUserPersona_];
}

void sub_267EECDF8()
{
  OUTLINED_FUNCTION_48_0();
  v476 = v0;
  v489 = v3;
  v490 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v492 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D2F0, &qword_267F0F558);
  OUTLINED_FUNCTION_58();
  v475 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_60();
  v480 = v12 - v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v479 = v15;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_77_0();
  v484 = v17;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77_0();
  v483 = v19;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_77_0();
  v486 = v21;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v22);
  v488 = &v458 - v23;
  OUTLINED_FUNCTION_26_2();
  v474 = sub_267EF4D38();
  OUTLINED_FUNCTION_58();
  v493 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_60();
  v478 = v26 - v27;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_77_0();
  v477 = v29;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_77_0();
  v482 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v481 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v485 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  v487 = &v458 - v37;
  if (qword_280228818 != -1)
  {
LABEL_73:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v38 = sub_267EF8A08();
  v39 = __swift_project_value_buffer(v38, qword_280240FB0);

  v497 = v39;
  v40 = sub_267EF89F8();
  v41 = sub_267EF95D8();

  v42 = os_log_type_enabled(v40, v41);
  v496 = v9;
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_48();
    v1 = OUTLINED_FUNCTION_52();
    v505[0] = v1;
    *v43 = 136315138;
    if (v5)
    {
      v44 = sub_267EF94E8();
      v46 = v45;
    }

    else
    {
      v46 = 0xE300000000000000;
      v44 = 7104878;
    }

    v47 = sub_267BA33E8(v44, v46, v505);

    *(v43 + 4) = v47;
    OUTLINED_FUNCTION_20();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_40_0();
  }

  sub_267BA9F38(0, &qword_28022D2F8, 0x277D58238);
  v53 = sub_267EF8F28();
  v54 = (v490 + 40);
  v55 = *(v490 + 16);
  *&v56 = 136315650;
  v491 = v56;
  v494 = v5;
  v495 = v7;
  while (1)
  {
    v502 = v53;
    if (!v55)
    {
      v467 = sub_267EF5108();
      v496 = *(v476 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_intent);
      *&v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D308, &qword_267F0F568);
      v500 = *(v475 + 72);
      v475 = *(v475 + 80);
      v471 = ((v475 + 32) & ~v475) + 6 * v500;
      v97 = (v475 + 32) & ~v475;
      v494 = v97;
      v98 = swift_allocObject();
      v470 = xmmword_267F00200;
      v476 = v98;
      *(v98 + 16) = xmmword_267F00200;
      v99 = v98 + v97;
      HIDWORD(v473) = *MEMORY[0x277D601F0];
      v100 = v493;
      v101 = (v493 + 104);
      v498 = *(v493 + 104);
      v102 = v474;
      v498(v487);
      OUTLINED_FUNCTION_6_0();
      v103 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v103);
      v104 = v100 + 32;
      v105 = *(v100 + 32);
      v493 = v104;
      v501 = v105;
      v106 = OUTLINED_FUNCTION_61_6();
      (v105)(v106);
      OUTLINED_FUNCTION_28_39();
      v105();
      OUTLINED_FUNCTION_19_49();
      v108 = (v99 + v107);
      v497 = v99;
      OUTLINED_FUNCTION_62_0();
      v109 = swift_allocObject();
      *(v109 + 16) = sub_267EF0E78;
      *(v109 + 24) = v1;
      *v108 = sub_267EF0EA4;
      v108[1] = v109;
      v110 = v500 + v99;
      LODWORD(v464) = *MEMORY[0x277D601B0];
      v499 = v101;
      v111 = v498;
      v498(v485);
      OUTLINED_FUNCTION_6_0();
      v112 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v112);
      v113 = v486;
      OUTLINED_FUNCTION_28_39();
      v114 = v501;
      v501();
      (v114)(v110, v113, v102);
      OUTLINED_FUNCTION_19_49();
      v116 = &v110[v115];
      OUTLINED_FUNCTION_62_0();
      v117 = swift_allocObject();
      *(v117 + 16) = sub_267EF0EA8;
      *(v117 + 24) = v108;
      *v116 = sub_267EF1B14;
      *(v116 + 1) = v117;
      v118 = v497 + 2 * v500;
      (v111)(v481, *MEMORY[0x277D60200], v102);
      OUTLINED_FUNCTION_6_0();
      v119 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v119);
      v120 = OUTLINED_FUNCTION_51_24();
      v121 = v501;
      (v501)(v120);
      OUTLINED_FUNCTION_28_39();
      v121();
      OUTLINED_FUNCTION_19_49();
      v123 = (v118 + v122);
      OUTLINED_FUNCTION_62_0();
      v124 = swift_allocObject();
      *(v124 + 16) = sub_267EF0ED4;
      *(v124 + 24) = v108;
      *v123 = sub_267EF1B14;
      v123[1] = v124;
      v125 = v500;
      v472 = 3 * v500;
      v126 = v497;
      v127 = v497 + 3 * v500;
      HIDWORD(v468) = *MEMORY[0x277D601E8];
      v498(v482);
      OUTLINED_FUNCTION_6_0();
      v128 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v128);

      v129 = OUTLINED_FUNCTION_61_6();
      v130 = v501;
      (v501)(v129);
      OUTLINED_FUNCTION_28_39();
      v130();
      OUTLINED_FUNCTION_19_49();
      v132 = (v127 + v131);
      OUTLINED_FUNCTION_62_0();
      v133 = swift_allocObject();
      *(v133 + 16) = sub_267EF0F00;
      *(v133 + 24) = v108;
      *v132 = sub_267EF1B14;
      v132[1] = v133;
      v134 = v126 + 4 * v125;
      LODWORD(v463) = *MEMORY[0x277D601A8];
      v135 = v477;
      v136 = v498;
      v498(v477);
      OUTLINED_FUNCTION_6_0();
      v137 = swift_allocObject();
      OUTLINED_FUNCTION_50_19(v137);

      v138 = v479;
      v139 = v135;
      v140 = v501;
      (v501)(v479, v139, v102);
      (v140)(v134, v138, v102);
      v141 = v492;
      v142 = (v134 + *(v492 + 48));
      OUTLINED_FUNCTION_62_0();
      v143 = swift_allocObject();
      *(v143 + 16) = sub_267EF0F2C;
      *(v143 + 24) = v108;
      *v142 = sub_267EF1B14;
      v142[1] = v143;
      v469 = 5 * v500;
      v144 = v497 + 5 * v500;
      v145 = v478;
      (v136)(v478, *MEMORY[0x277D60210], v102);
      OUTLINED_FUNCTION_6_0();
      v146 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v146);
      v147 = v480;
      v148 = v501;
      (v501)(v480, v145, v102);
      (v148)(v144, v147, v102);
      v149 = (v144 + *(v141 + 48));
      OUTLINED_FUNCTION_62_0();
      v150 = swift_allocObject();
      *(v150 + 16) = sub_267EF0F58;
      *(v150 + 24) = v142;
      *v149 = sub_267EF1B14;
      v149[1] = v150;
      swift_bridgeObjectRetain_n();
      v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D310, &qword_267F0F570);
      OUTLINED_FUNCTION_14_49();
      v497 = sub_267EF1ACC(v151, v152, MEMORY[0x277D60228]);
      v153 = sub_267EF8F28();
      v476 = sub_267BA9F38(0, &qword_280229538, 0x277CCABB0);
      v154 = sub_267EF97F8();
      sub_267E8B378();

      v467 = sub_267EF50D8();
      v462 = sub_267EF97F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D318, &qword_267F0F578);
      v155 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D320, &qword_267F0F580) - 8);
      v156 = *v155;
      v460 = *(*v155 + 72);
      v157 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v158 = swift_allocObject();
      v465 = xmmword_267EFCC90;
      v461 = v158;
      *(v158 + 16) = xmmword_267EFCC90;
      v159 = v158 + v157;
      v459 = v155[14];
      v160 = v498;
      (v498)(v158 + v157, HIDWORD(v473), v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D328, &qword_267F0F588);
      inited = swift_initStackObject();
      v458 = xmmword_267F02660;
      *(inited + 16) = xmmword_267F02660;
      OUTLINED_FUNCTION_6_0();
      v162 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v162);
      OUTLINED_FUNCTION_62_0();
      v163 = swift_allocObject();
      *(v163 + 16) = sub_267EF0F84;
      *(v163 + 24) = v153;
      *(inited + 32) = 0;
      *(inited + 40) = sub_267EF1B14;
      *(inited + 48) = v163;
      OUTLINED_FUNCTION_6_0();
      v164 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v164);
      OUTLINED_FUNCTION_62_0();
      v165 = swift_allocObject();
      *(v165 + 16) = sub_267EF0FB0;
      *(v165 + 24) = v153;
      *(inited + 56) = 1;
      *(inited + 64) = sub_267EF1B14;
      *(inited + 72) = v165;
      OUTLINED_FUNCTION_6_0();
      v166 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v166);
      OUTLINED_FUNCTION_62_0();
      v167 = swift_allocObject();
      *(v167 + 16) = sub_267EF0FDC;
      *(v167 + 24) = v153;
      *(inited + 80) = 2;
      *(inited + 88) = sub_267EF1B14;
      *(inited + 96) = v167;
      OUTLINED_FUNCTION_6_0();
      v168 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v168);
      OUTLINED_FUNCTION_62_0();
      v169 = swift_allocObject();
      *(v169 + 16) = sub_267EF1008;
      *(v169 + 24) = v153;
      *(inited + 104) = 3;
      *(inited + 112) = sub_267EF1B14;
      *(inited + 120) = v169;
      OUTLINED_FUNCTION_6_0();
      v170 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v170);
      OUTLINED_FUNCTION_62_0();
      v171 = swift_allocObject();
      *(v171 + 16) = sub_267EF1034;
      *(v171 + 24) = v153;
      *(inited + 128) = 4;
      *(inited + 136) = sub_267EF1B14;
      *(inited + 144) = v171;
      OUTLINED_FUNCTION_6_0();
      v172 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v172);
      OUTLINED_FUNCTION_62_0();
      v173 = swift_allocObject();
      *(v173 + 16) = sub_267EF1060;
      *(v173 + 24) = v153;
      *(inited + 152) = 5;
      *(inited + 160) = sub_267EF1B14;
      *(inited + 168) = v173;
      OUTLINED_FUNCTION_6_0();
      v174 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v174);
      OUTLINED_FUNCTION_62_0();
      v175 = swift_allocObject();
      *(v175 + 16) = sub_267EF108C;
      *(v175 + 24) = v153;
      *(inited + 176) = 6;
      *(inited + 184) = sub_267EF1B14;
      *(inited + 192) = v175;
      OUTLINED_FUNCTION_6_0();
      v176 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v176);
      OUTLINED_FUNCTION_62_0();
      v177 = swift_allocObject();
      *(v177 + 16) = sub_267EF10B8;
      *(v177 + 24) = v153;
      *(inited + 200) = 7;
      *(inited + 208) = sub_267EF1B14;
      *(inited + 216) = v177;
      sub_267EF10E4();
      swift_bridgeObjectRetain_n();
      v178 = sub_267EF8F28();
      v179 = v460;
      *(v159 + v459) = v178;
      v180 = v159 + v179;
      v181 = v155[14];
      (v160)(v180, HIDWORD(v468), v102);
      v182 = swift_initStackObject();
      *(v182 + 16) = v458;
      OUTLINED_FUNCTION_6_0();
      v183 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v183);
      OUTLINED_FUNCTION_62_0();
      v184 = swift_allocObject();
      *(v184 + 16) = sub_267EF1138;
      *(v184 + 24) = v155;
      *(v182 + 32) = 0;
      *(v182 + 40) = sub_267EF1B14;
      *(v182 + 48) = v184;
      OUTLINED_FUNCTION_6_0();
      v185 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v185);
      OUTLINED_FUNCTION_62_0();
      v186 = swift_allocObject();
      *(v186 + 16) = sub_267EF1164;
      *(v186 + 24) = v155;
      *(v182 + 56) = 1;
      *(v182 + 64) = sub_267EF1B14;
      *(v182 + 72) = v186;
      OUTLINED_FUNCTION_6_0();
      v187 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v187);
      OUTLINED_FUNCTION_62_0();
      v188 = swift_allocObject();
      *(v188 + 16) = sub_267EF1190;
      *(v188 + 24) = v155;
      *(v182 + 80) = 2;
      *(v182 + 88) = sub_267EF1B14;
      *(v182 + 96) = v188;
      OUTLINED_FUNCTION_6_0();
      v189 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v189);
      OUTLINED_FUNCTION_62_0();
      v190 = swift_allocObject();
      *(v190 + 16) = sub_267EF11BC;
      *(v190 + 24) = v155;
      *(v182 + 104) = 3;
      *(v182 + 112) = sub_267EF1B14;
      *(v182 + 120) = v190;
      OUTLINED_FUNCTION_6_0();
      v191 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v191);
      OUTLINED_FUNCTION_62_0();
      v192 = swift_allocObject();
      *(v192 + 16) = sub_267EF11E8;
      *(v192 + 24) = v155;
      *(v182 + 128) = 4;
      *(v182 + 136) = sub_267EF1B14;
      *(v182 + 144) = v192;
      OUTLINED_FUNCTION_6_0();
      v193 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v193);
      OUTLINED_FUNCTION_62_0();
      v194 = swift_allocObject();
      *(v194 + 16) = sub_267EF1214;
      *(v194 + 24) = v155;
      *(v182 + 152) = 5;
      *(v182 + 160) = sub_267EF1B14;
      *(v182 + 168) = v194;
      OUTLINED_FUNCTION_6_0();
      v195 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v195);
      OUTLINED_FUNCTION_62_0();
      v196 = swift_allocObject();
      *(v196 + 16) = sub_267EF1240;
      *(v196 + 24) = v155;
      *(v182 + 176) = 6;
      *(v182 + 184) = sub_267EF1B14;
      *(v182 + 192) = v196;
      OUTLINED_FUNCTION_6_0();
      v197 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v197);
      OUTLINED_FUNCTION_62_0();
      v198 = swift_allocObject();
      *(v198 + 16) = sub_267EF126C;
      *(v198 + 24) = v155;
      *(v182 + 200) = 7;
      *(v182 + 208) = sub_267EF1B14;
      *(v182 + 216) = v198;
      swift_bridgeObjectRetain_n();
      *(v180 + v181) = sub_267EF8F28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D338, &qword_267F0F590);
      sub_267EF8F28();
      v199 = v462;
      sub_267E8B974();

      v462 = sub_267EF5118();
      v461 = sub_267EF97F8();
      OUTLINED_FUNCTION_11_56();
      v200 = swift_allocObject();
      v460 = v200;
      *(v200 + 16) = v470;
      v201 = v200 + v494;
      v202 = v160;
      (v160)(v487, HIDWORD(v473), v102);
      OUTLINED_FUNCTION_6_0();
      v203 = swift_allocObject();
      v204 = v501;
      *(v203 + 16) = v502;
      v205 = v488;
      v206 = OUTLINED_FUNCTION_54_0();
      (v204)(v206);
      v207 = v201;
      (v204)(v201, v205, v102);
      v208 = v492;
      v209 = (v201 + *(v492 + 48));
      v467 = v201;
      OUTLINED_FUNCTION_62_0();
      v210 = swift_allocObject();
      *(v210 + 16) = sub_267EF1298;
      *(v210 + 24) = v203;
      *v209 = sub_267EF1B14;
      v209[1] = v210;
      v211 = v500;
      v212 = v500 + v207;
      (v202)(v485, v464, v102);
      OUTLINED_FUNCTION_6_0();
      v213 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v213);
      v214 = OUTLINED_FUNCTION_61_6();
      v215 = v501;
      (v501)(v214);
      OUTLINED_FUNCTION_28_39();
      v216 = v102;
      v215();
      v217 = &v212[*(v208 + 48)];
      OUTLINED_FUNCTION_62_0();
      v218 = swift_allocObject();
      *(v218 + 16) = sub_267EF12C4;
      *(v218 + 24) = v209;
      *v217 = sub_267EF1B14;
      *(v217 + 1) = v218;
      v219 = v467;
      v220 = v467 + 2 * v211;
      v221 = v481;
      v222 = v498;
      (v498)(v481, *MEMORY[0x277D60208], v216);
      OUTLINED_FUNCTION_6_0();
      v223 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v223);
      v224 = v501;
      (v501)(v483, v221, v216);
      OUTLINED_FUNCTION_271();
      v224();
      OUTLINED_FUNCTION_19_49();
      v226 = (v220 + v225);
      OUTLINED_FUNCTION_62_0();
      v227 = swift_allocObject();
      *(v227 + 16) = sub_267EF12F0;
      *(v227 + 24) = v209;
      *v226 = sub_267EF1B14;
      v226[1] = v227;
      v228 = v219 + v472;
      v229 = v482;
      (v222)(v482, HIDWORD(v468), v216);
      OUTLINED_FUNCTION_6_0();
      v230 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v230);

      v231 = v484;
      v232 = v229;
      v233 = v501;
      (v501)(v484, v232, v216);
      (v233)(v228, v231, v216);
      v234 = v492;
      v235 = (v228 + *(v492 + 48));
      OUTLINED_FUNCTION_62_0();
      v236 = swift_allocObject();
      *(v236 + 16) = sub_267EF131C;
      *(v236 + 24) = v209;
      *v235 = sub_267EF1B14;
      v235[1] = v236;
      v237 = v219 + 4 * v500;
      v238 = v477;
      (v222)(v477, v463, v216);
      OUTLINED_FUNCTION_6_0();
      v239 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v239);

      v240 = v479;
      v241 = v238;
      v242 = v216;
      v243 = v216;
      v244 = v501;
      (v501)(v479, v241, v243);
      (v244)(v237, v240, v242);
      v245 = v244;
      v246 = (v237 + *(v234 + 48));
      OUTLINED_FUNCTION_62_0();
      v247 = swift_allocObject();
      *(v247 + 16) = sub_267EF1348;
      *(v247 + 24) = v209;
      *v246 = sub_267EF1B14;
      v246[1] = v247;
      v248 = v467 + v469;
      v249 = v478;
      (v222)(v478, *MEMORY[0x277D601F8], v242);
      OUTLINED_FUNCTION_6_0();
      v250 = swift_allocObject();
      *(v250 + 16) = v502;
      v251 = v480;
      (v245)(v480, v249, v242);
      v252 = v242;
      (v245)(v248, v251, v242);
      OUTLINED_FUNCTION_19_49();
      v254 = (v248 + v253);
      OUTLINED_FUNCTION_62_0();
      v255 = swift_allocObject();
      *(v255 + 16) = sub_267EF1374;
      *(v255 + 24) = v250;
      *v254 = sub_267EF1B14;
      v254[1] = v255;
      swift_bridgeObjectRetain_n();
      sub_267EF8F28();
      v256 = v461;
      sub_267E8B378();

      v464 = sub_267EF4FD8();
      OUTLINED_FUNCTION_11_56();
      v257 = swift_allocObject();
      v463 = v257;
      *(v257 + 16) = v470;
      v258 = v257 + v494;
      LODWORD(v470) = *MEMORY[0x277D601C8];
      v222(v487);
      OUTLINED_FUNCTION_6_0();
      v259 = swift_allocObject();
      v260 = v501;
      *(v259 + 16) = v502;
      v261 = v488;
      OUTLINED_FUNCTION_35_32();
      v260();
      v262 = v258;
      (v260)(v258, v261, v252);
      v263 = v492;
      v264 = (v262 + *(v492 + 48));
      v265 = v262;
      v471 = v262;
      OUTLINED_FUNCTION_62_0();
      v266 = swift_allocObject();
      *(v266 + 16) = sub_267EF13A0;
      *(v266 + 24) = v259;
      *v264 = sub_267EF1B14;
      v264[1] = v266;
      v267 = v500;
      v268 = v500 + v265;
      LODWORD(v467) = *MEMORY[0x277D601A0];
      v269 = v485;
      v222(v485);
      OUTLINED_FUNCTION_6_0();
      v270 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v270);
      v271 = v486;
      v272 = v269;
      v273 = v252;
      v274 = v252;
      v275 = v501;
      (v501)(v486, v272, v274);
      (v275)(v268, v271, v273);
      v276 = &v268[*(v263 + 48)];
      OUTLINED_FUNCTION_62_0();
      v277 = swift_allocObject();
      *(v277 + 16) = sub_267EF13CC;
      *(v277 + 24) = v264;
      *v276 = sub_267EF1B14;
      *(v276 + 1) = v277;
      v278 = v471;
      v279 = v471 + 2 * v267;
      v280 = v481;
      v281 = v273;
      (v222)(v481, *MEMORY[0x277D601D8], v273);
      OUTLINED_FUNCTION_6_0();
      v282 = swift_allocObject();
      OUTLINED_FUNCTION_3_88(v282);
      v283 = v483;
      v284 = v280;
      v285 = v275;
      (v275)(v483, v284, v281);
      v286 = v281;
      (v285)(v279, v283, v281);
      OUTLINED_FUNCTION_19_49();
      v288 = (v279 + v287);
      OUTLINED_FUNCTION_62_0();
      v289 = swift_allocObject();
      *(v289 + 16) = sub_267EF13F8;
      *(v289 + 24) = v264;
      *v288 = sub_267EF1B14;
      v288[1] = v289;
      v290 = v278 + v472;
      HIDWORD(v468) = *MEMORY[0x277D60218];
      v291 = v498;
      v498(v482);
      OUTLINED_FUNCTION_6_0();
      v292 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v292);

      v293 = OUTLINED_FUNCTION_61_6();
      (v285)(v293);
      OUTLINED_FUNCTION_35_32();
      v285();
      v294 = v492;
      v295 = (v290 + *(v492 + 48));
      OUTLINED_FUNCTION_62_0();
      v296 = swift_allocObject();
      *(v296 + 16) = sub_267EF1424;
      *(v296 + 24) = v283;
      *v295 = sub_267EF1B14;
      v295[1] = v296;
      v297 = v471 + 4 * v500;
      LODWORD(v462) = *MEMORY[0x277D601B8];
      v291(v477);
      OUTLINED_FUNCTION_6_0();
      v298 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v298);

      v299 = v479;
      OUTLINED_FUNCTION_35_32();
      v285();
      (v285)(v297, v299, v286);
      v300 = v294;
      v301 = (v297 + *(v294 + 48));
      OUTLINED_FUNCTION_62_0();
      v302 = swift_allocObject();
      *(v302 + 16) = sub_267EF1450;
      *(v302 + 24) = v283;
      *v301 = sub_267EF1B14;
      v301[1] = v302;
      v303 = v471 + v469;
      (v291)(v478, *MEMORY[0x277D601E0], v286);
      OUTLINED_FUNCTION_6_0();
      v304 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v304);
      OUTLINED_FUNCTION_35_32();
      v285();
      v305 = OUTLINED_FUNCTION_54_0();
      (v285)(v305);
      v306 = (v303 + *(v294 + 48));
      OUTLINED_FUNCTION_62_0();
      v307 = swift_allocObject();
      *(v307 + 16) = sub_267EF147C;
      *(v307 + 24) = v283;
      *v306 = sub_267EF1B14;
      v306[1] = v307;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_38_31(v463);
      v308 = sub_267EF97F8();
      sub_267E8B378();

      v480 = sub_267EF4FF8();
      v479 = sub_267EF97F8();
      v309 = v494;
      v310 = v500;
      OUTLINED_FUNCTION_11_56();
      v311 = swift_allocObject();
      v478 = v311;
      *(v311 + 16) = xmmword_267F01440;
      v312 = v311 + v309;
      (v291)(v487, v470, v286);
      OUTLINED_FUNCTION_6_0();
      v313 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v313);
      OUTLINED_FUNCTION_35_32();
      v285();
      OUTLINED_FUNCTION_47_21();
      v314 = v286;
      v285();
      v315 = v312;
      v316 = (v312 + *(v300 + 48));
      OUTLINED_FUNCTION_62_0();
      v317 = swift_allocObject();
      *(v317 + 16) = sub_267EF14A8;
      *(v317 + 24) = v308;
      *v316 = sub_267EF1B14;
      v316[1] = v317;
      v318 = v310 + v312;
      v477 = v312;
      v319 = v485;
      v320 = v291;
      (v291)(v485, v467, v314);
      OUTLINED_FUNCTION_6_0();
      v321 = swift_allocObject();
      v322 = v501;
      *(v321 + 16) = v502;
      v323 = v486;
      (v322)(v486, v319, v314);
      (v322)(v318, v323, v314);
      v324 = v492;
      v325 = (v318 + *(v492 + 48));
      OUTLINED_FUNCTION_62_0();
      v326 = swift_allocObject();
      *(v326 + 16) = sub_267EF14D4;
      *(v326 + 24) = v321;
      *v325 = sub_267EF1B14;
      v325[1] = v326;
      v327 = v315 + 2 * v500;
      v328 = v481;
      (v320)(v481, HIDWORD(v468), v314);
      v329 = v320;
      OUTLINED_FUNCTION_6_0();
      v330 = swift_allocObject();
      v331 = v501;
      *(v330 + 16) = v502;
      v332 = v483;
      (v331)(v483, v328, v314);
      (v331)(v327, v332, v314);
      v333 = (v327 + *(v324 + 48));
      OUTLINED_FUNCTION_62_0();
      v334 = swift_allocObject();
      *(v334 + 16) = sub_267EF1500;
      *(v334 + 24) = v330;
      *v333 = sub_267EF1B14;
      v333[1] = v334;
      v335 = &v477[v472];
      v336 = v482;
      (v329)(v482, v462, v314);
      OUTLINED_FUNCTION_6_0();
      v337 = swift_allocObject();
      OUTLINED_FUNCTION_5_74(v337);
      v338 = v484;
      (v331)(v484, v336, v314);
      v339 = v314;
      (v331)(v335, v338, v314);
      v340 = &v335[*(v324 + 48)];
      OUTLINED_FUNCTION_62_0();
      v341 = swift_allocObject();
      *(v341 + 16) = sub_267EF152C;
      *(v341 + 24) = v333;
      *v340 = sub_267EF1B14;
      *(v340 + 1) = v341;
      swift_bridgeObjectRetain_n();
      v342 = v339;
      sub_267EF8F28();
      v343 = v479;
      sub_267E8B378();

      v484 = sub_267EF50F8();
      v483 = sub_267EF97F8();
      v344 = v494;
      v345 = v500;
      OUTLINED_FUNCTION_11_56();
      v346 = swift_allocObject();
      v482 = v346;
      *(v346 + 16) = v465;
      v347 = v346 + v344;
      v348 = v498;
      (v498)(v487, v470, v342);
      OUTLINED_FUNCTION_6_0();
      v349 = swift_allocObject();
      OUTLINED_FUNCTION_4_77(v349);
      v350 = OUTLINED_FUNCTION_54_0();
      v351 = v501;
      (v501)(v350);
      OUTLINED_FUNCTION_47_21();
      v351();
      v352 = v492;
      v353 = (v347 + *(v492 + 48));
      OUTLINED_FUNCTION_62_0();
      v354 = swift_allocObject();
      *(v354 + 16) = sub_267EF1558;
      *(v354 + 24) = v335;
      v355 = v502;
      *v353 = sub_267EF1B14;
      v353[1] = v354;
      v356 = v345 + v347;
      v357 = v485;
      (v348)(v485, HIDWORD(v468), v342);
      OUTLINED_FUNCTION_6_0();
      v358 = swift_allocObject();
      *(v358 + 16) = v355;
      v359 = v357;
      v360 = v501;
      (v501)(v486, v359, v342);
      OUTLINED_FUNCTION_47_21();
      v360();
      v361 = (v356 + *(v352 + 48));
      OUTLINED_FUNCTION_62_0();
      v362 = swift_allocObject();
      *(v362 + 16) = sub_267EF1584;
      *(v362 + 24) = v358;
      *v361 = sub_267EF1B14;
      v361[1] = v362;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_38_31(v482);
      v363 = v483;
      v364 = v490;
      sub_267E8B378();

      sub_267EF4E78();
      OUTLINED_FUNCTION_6_0();
      v365 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v365);
      v366 = sub_267EF97F8();
      OUTLINED_FUNCTION_13_54(v366, MEMORY[0x277D602A0], v367, v368, v369, v370, v371, v372, v458, SBYTE8(v458), v459, v460, v461, v462, v463, v464, v465, *(&v465 + 1), v466, v467, v468, v469, v470, *(&v470 + 1), v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482);

      sub_267EF5048();
      OUTLINED_FUNCTION_6_0();
      v373 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v373);
      v374 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_13_54(v374, MEMORY[0x277D603B8], v375, v376, v377, v378, v379, v380, v458, SBYTE8(v458), v459, v460, v461, v462, v463, v464, v465, *(&v465 + 1), v466, v467, v468, v469, v470, *(&v470 + 1), v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482);

      sub_267EF5038();
      OUTLINED_FUNCTION_6_0();
      v381 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v381);
      v382 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_13_54(v382, MEMORY[0x277D603B0], v383, v384, v385, v386, v387, v388, v458, SBYTE8(v458), v459, v460, v461, v462, v463, v464, v465, *(&v465 + 1), v466, v467, v468, v469, v470, *(&v470 + 1), v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482);

      sub_267EF4F28();
      OUTLINED_FUNCTION_6_0();
      v389 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v389);
      v390 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_32_26();
      sub_267E8B170(v391, v392, v393, v394, v395, v396, v397);

      sub_267EF5028();
      OUTLINED_FUNCTION_6_0();
      v398 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v398);
      v399 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_32_26();
      sub_267E8B170(v400, v401, v402, v403, v404, v405, v406);

      sub_267EF4FE8();
      OUTLINED_FUNCTION_6_0();
      v407 = swift_allocObject();
      OUTLINED_FUNCTION_18_45(v407);
      v408 = OUTLINED_FUNCTION_41_21();
      OUTLINED_FUNCTION_32_26();
      sub_267E8B170(v409, v410, v411, v412, v413, v414, v415);

      v416 = sub_267EF4E98();
      v417 = sub_267EF97F8();
      OUTLINED_FUNCTION_6_0();
      v418 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v418);
      sub_267E8AEDC(v416, MEMORY[0x277D602B0], v364, v417, sub_267EF166C, v408, v419, v420, v458, SBYTE8(v458), v459, v460, v461, v462, v463, v464, v465, *(&v465 + 1), v466, v467, v468, v469, v470, *(&v470 + 1), v471, v472, v473, v474, v475, v476, v477, v478, v479, v480, v481, v482);

      v486 = sub_267EF50E8();
      v421 = v494;
      OUTLINED_FUNCTION_11_56();
      v422 = swift_allocObject();
      *(v422 + 16) = xmmword_267EFC020;
      v423 = v487;
      v424 = v474;
      (v498)(v487, HIDWORD(v473), v474);
      OUTLINED_FUNCTION_6_0();
      v425 = swift_allocObject();
      OUTLINED_FUNCTION_52_22(v425);
      v426 = v501;
      (v501)(v488, v423, v424);
      OUTLINED_FUNCTION_47_21();
      v426();
      OUTLINED_FUNCTION_19_49();
      v428 = (v422 + v421 + v427);
      OUTLINED_FUNCTION_62_0();
      v429 = swift_allocObject();
      *(v429 + 16) = sub_267EF1674;
      *(v429 + 24) = v408;
      *v428 = sub_267EF1B14;
      v428[1] = v429;

      OUTLINED_FUNCTION_38_31(v422);
      v430 = sub_267EF97F8();
      sub_267E8B378();

      v431 = *(v355 + 16);
      if (v431)
      {
        v505[0] = MEMORY[0x277D84F90];
        sub_267EF9BF8();
        v1 = sub_267BA7F5C(v355);
        v5 = v433;
        v434 = 0;
        v7 = v355 + 64;
        v499 = (v355 + 72);
        v9 = 1;
        if ((v1 & 0x8000000000000000) == 0)
        {
          while (v1 < 1 << *(v355 + 32))
          {
            v435 = v1 >> 6;
            if ((*(v7 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
            {
              goto LABEL_67;
            }

            if (*(v355 + 36) != v5)
            {
              goto LABEL_68;
            }

            LODWORD(v500) = v432;
            v501 = v434;
            v436 = *(*(v355 + 56) + 8 * v1);
            sub_267EF9BD8();
            sub_267EF9C08();
            v355 = v502;
            v9 = 1;
            sub_267EF9C18();
            sub_267EF9BE8();
            v437 = 1 << *(v355 + 32);
            if (v1 >= v437)
            {
              goto LABEL_69;
            }

            v438 = *(v7 + 8 * v435);
            if ((v438 & (1 << v1)) == 0)
            {
              goto LABEL_70;
            }

            if (*(v355 + 36) != v5)
            {
              goto LABEL_71;
            }

            v439 = v438 & (-2 << (v1 & 0x3F));
            if (v439)
            {
              v437 = __clz(__rbit64(v439)) | v1 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v440 = v435 << 6;
              v441 = v435 + 1;
              v442 = &v499[8 * v435];
              while (v441 < (v437 + 63) >> 6)
              {
                v444 = *v442++;
                v443 = v444;
                v440 += 64;
                ++v441;
                if (v444)
                {
                  v445 = OUTLINED_FUNCTION_49_26();
                  sub_267C96654(v445, v446, v447);
                  v437 = __clz(__rbit64(v443)) + v440;
                  goto LABEL_54;
                }
              }

              v448 = OUTLINED_FUNCTION_49_26();
              sub_267C96654(v448, v449, v450);
            }

LABEL_54:
            v434 = (v501 + 1);
            if ((v501 + 1) == v431)
            {
              goto LABEL_64;
            }

            v432 = 0;
            v5 = *(v355 + 36);
            v1 = v437;
            if (v437 < 0)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_57:

        goto LABEL_60;
      }

LABEL_64:

LABEL_63:
      OUTLINED_FUNCTION_47();
      return;
    }

    v57 = v7;
    v501 = v55;
    v58 = *(v54 - 1);
    v1 = *v54;
    v59 = objc_allocWithZone(MEMORY[0x277D58238]);

    v60 = [v59 init];
    if (!v60)
    {
      goto LABEL_57;
    }

    v61 = v60;
    v62 = [objc_allocWithZone(MEMORY[0x277D58228]) init];
    if (!v62)
    {
      goto LABEL_59;
    }

    v63 = v62;
    v64 = [objc_allocWithZone(MEMORY[0x277D58230]) init];
    if (!v64)
    {

LABEL_59:

LABEL_60:

      v451 = sub_267EF89F8();
      v452 = sub_267EF95E8();
      if (os_log_type_enabled(v451, v452))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_20();
        _os_log_impl(v453, v454, v455, v456, v457, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      goto LABEL_63;
    }

    v65 = v64;
    v499 = v63;
    v500 = v54;
    [v61 setMessageSignals_];
    [v61 setPhoneCallSignals_];
    v505[0] = v58;
    v505[1] = v1;
    v503 = 0x6C7070612E6D6F63;
    v504 = 0xE900000000000065;
    sub_267C7A6BC();
    sub_267C7A710();
    [v61 setIsFirstPartyApp_];
    if (v58 == v496 && v1 == v57)
    {
      v67 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_91_1();
      v67 = sub_267EF9EA8();
    }

    [v61 setIsResolvedApp_];
    if (v5)
    {
      v68 = OUTLINED_FUNCTION_91_1();
      v70 = sub_267BC2F78(v68, v69, v5);
    }

    else
    {
      v70 = 0;
    }

    [v61 setIsResolvedContactInApp_];

    v71 = v61;
    v72 = sub_267EF89F8();
    v9 = sub_267EF95D8();

    v73 = os_log_type_enabled(v72, v9);
    v498 = v65;
    if (v73)
    {
      v5 = swift_slowAlloc();
      v74 = OUTLINED_FUNCTION_52();
      v505[0] = v74;
      *v5 = v491;
      v75 = OUTLINED_FUNCTION_91_1();
      *(v5 + 4) = sub_267BA33E8(v75, v76, v77);
      *(v5 + 12) = 1024;
      *(v5 + 14) = [v71 isResolvedApp];
      *(v5 + 18) = 1024;
      *(v5 + 20) = [v71 isResolvedContactInApp];

      _os_log_impl(&dword_267B93000, v72, v9, "#AppSelectionSignalCollection: app %s: isResolvedApp=%{BOOL}d, isResolvedContactInApp=%{BOOL}d", v5, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v74);
      v53 = v502;
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    else
    {
    }

    v78 = [objc_allocWithZone(MEMORY[0x277D58258]) init];
    if (v78)
    {
      v79 = v78;
      v80 = [objc_allocWithZone(MEMORY[0x277D58248]) init];
      if (v80)
      {
        v9 = v80;
        v81 = [objc_allocWithZone(MEMORY[0x277D58250]) init];
        if (v81)
        {
          v82 = v81;
          [v79 setContactDependentMessageSignals_];
          [v79 setContactDependentPhoneCallSignals_];
          [v71 setContactDependentSignals_];

          v79 = v9;
          v9 = v82;
        }

        v79 = v9;
        v53 = v502;
      }
    }

    v83 = v495;
    v84 = v71;
    swift_isUniquelyReferenced_nonNull_native();
    v505[0] = v53;
    OUTLINED_FUNCTION_91_1();
    v85 = sub_267BA9948();
    v87 = v53[2];
    v88 = (v86 & 1) == 0;
    v7 = v87 + v88;
    if (__OFADD__(v87, v88))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v9 = v85;
    v5 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D300, &qword_267F0F560);
    if (sub_267EF9C68())
    {
      break;
    }

LABEL_34:
    v7 = v83;
    v53 = v505[0];
    if (v5)
    {
      v91 = *(v505[0] + 56);
      v92 = *(v91 + 8 * v9);
      *(v91 + 8 * v9) = v84;

      v84 = v92;
    }

    else
    {
      *(v505[0] + 8 * (v9 >> 6) + 64) |= 1 << v9;
      v93 = (v53[6] + 16 * v9);
      *v93 = v58;
      v93[1] = v1;
      *(v53[7] + 8 * v9) = v84;
      v94 = v53[2];
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
        goto LABEL_72;
      }

      v53[2] = v96;
    }

    v54 = v500 + 2;
    v55 = (v501 - 1);
    v5 = v494;
  }

  OUTLINED_FUNCTION_91_1();
  v89 = sub_267BA9948();
  if ((v5 & 1) == (v90 & 1))
  {
    v9 = v89;
    goto LABEL_34;
  }

  sub_267EF9F28();
  __break(1u);
}

void sub_267EEF93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = OUTLINED_FUNCTION_17_35();
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_53_24(v6);
      v9 = [v8 contactDependentSignals];
      v21 = [v9 *v5];

      if (v21)
      {
        v10 = [v4 floatValue];
        v18 = OUTLINED_FUNCTION_25_47(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
        [v18 v19];
      }
    }
  }
}

void sub_267EEFA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = OUTLINED_FUNCTION_17_35();
    if (v7)
    {
      v8 = OUTLINED_FUNCTION_53_24(v6);
      v9 = [v8 contactDependentSignals];
      v20 = [v9 *v5];

      if (v20)
      {
        v10 = [v4 intValue];
        v17 = OUTLINED_FUNCTION_25_47(v10, v11, v10, v12, v13, v14, v15, v16, v19, v20);
        [v17 v18];
      }
    }
  }
}

void sub_267EEFAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = OUTLINED_FUNCTION_17_35();
    if (v8)
    {
      v9 = [*(*(v4 + 56) + 8 * v7) *v6];
      if (v9)
      {
        v21 = v9;
        v10 = [v5 floatValue];
        v18 = OUTLINED_FUNCTION_25_47(v10, v11, v12, v13, v14, v15, v16, v17, v20, v21);
        [v18 v19];
      }
    }
  }
}

void sub_267EEFB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v7 = OUTLINED_FUNCTION_17_35();
    if (v8)
    {
      v9 = [*(*(v4 + 56) + 8 * v7) *v6];
      if (v9)
      {
        v20 = v9;
        v10 = [v5 intValue];
        v17 = OUTLINED_FUNCTION_25_47(v10, v11, v10, v12, v13, v14, v15, v16, v19, v20);
        [v17 v18];
      }
    }
  }
}

void sub_267EEFC14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = sub_267BA9948();
    if (v7)
    {
      v8 = *(*(a4 + 56) + 8 * v6);
      [a3 floatValue];
      [v8 setAppTimeSpentAffinityScore_];
    }
  }
}

void sub_267EEFCA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v5 = sub_267BA9948();
    if (v6)
    {
      v17 = OUTLINED_FUNCTION_53_24(v5);
      v7 = [a3 integerValue];
      v14 = OUTLINED_FUNCTION_25_47(v7, v8, v7 == 1, v9, v10, v11, v12, v13, v16, v17);
      [v14 v15];
    }
  }
}

void sub_267EEFD3C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = sub_267BA9948();
    if (v7)
    {
      v8 = *(*(a4 + 56) + 8 * v6);
      [v8 setAppTimeSpentInSec_];
    }
  }
}

void sub_267EEFDD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v5 = sub_267BA9948();
    if (v6)
    {
      v17 = OUTLINED_FUNCTION_53_24(v5);
      v7 = [a3 intValue];
      v14 = OUTLINED_FUNCTION_25_47(v7, v8, v7, v9, v10, v11, v12, v13, v16, v17);
      [v14 v15];
    }
  }
}

void sub_267EEFE64()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF4D18();
  OUTLINED_FUNCTION_58();
  v78 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v79 = v69 - v11;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v12 = sub_267EF8A08();
  v13 = __swift_project_value_buffer(v12, qword_280240FB0);

  v14 = sub_267EF89F8();
  v15 = sub_267EF95D8();

  v16 = os_log_type_enabled(v14, v15);
  v80 = v4;
  v76 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v17 = 136315394;
    swift_beginAccess();
    LODWORD(v77) = v15;
    v18 = *(v1 + 56);

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A70, &qword_267EFEEF0);
    MEMORY[0x26D608FD0](v18, v19);

    v20 = OUTLINED_FUNCTION_49_26();
    v23 = sub_267BA33E8(v20, v21, v22);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = sub_267EF8F08();
    v26 = sub_267BA33E8(v24, v25, v84);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_267B93000, v14, v77, "#AppSelectionSignalCollection: instrumenting instrumentations=%s, signalValues=%s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_32_0();
    v4 = v80;
    OUTLINED_FUNCTION_32_0();
  }

  swift_beginAccess();
  v27 = *(v1 + 56);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;
    v73 = v78 + 16;
    v72 = (v78 + 8);
    v69[1] = v27;

    *&v30 = 136315138;
    v77 = v30;
    *&v30 = 136315394;
    v70 = v30;
    v75 = v3;
    v74 = v13;
    while (1)
    {
      sub_267B9AFEC(v29, v84);
      __swift_project_boxed_opaque_existential_0(v84, v85);
      v31 = OUTLINED_FUNCTION_61_6();
      sub_267E886DC(v31, v32);
      if (*(v3 + 16))
      {
        v33 = sub_267BA9948();
        v35 = v34;

        if (v35)
        {
          v36 = *(v3 + 56) + *(v78 + 72) * v33;
          v37 = *(v78 + 16);
          v38 = v79;
          v37(v79, v36, v4);
          sub_267B9AFEC(v84, v82);
          v39 = v76;
          v37(v76, v38, v4);
          v40 = sub_267EF89F8();
          v41 = sub_267EF95D8();
          v42 = os_log_type_enabled(v40, v41);
          v43 = v72;
          if (v42)
          {
            v44 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v81 = v71;
            *v44 = v70;
            __swift_project_boxed_opaque_existential_0(v82, v83);
            v45 = OUTLINED_FUNCTION_73();
            sub_267E886DC(v45, v46);
            __swift_destroy_boxed_opaque_existential_0(v82);
            v47 = OUTLINED_FUNCTION_73();
            v50 = sub_267BA33E8(v47, v48, v49);

            *(v44 + 4) = v50;
            *(v44 + 12) = 2080;
            sub_267EF4D08();
            v51 = *v43;
            v51(v39, v80);
            v52 = OUTLINED_FUNCTION_73();
            v55 = sub_267BA33E8(v52, v53, v54);

            *(v44 + 14) = v55;
            _os_log_impl(&dword_267B93000, v40, v41, "#AppSelectionSignalCollection signal=[%s]: instrumenting value=%s", v44, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_32_0();
            v4 = v80;
            OUTLINED_FUNCTION_32_0();
          }

          else
          {

            v51 = *v43;
            v51(v39, v4);
            __swift_destroy_boxed_opaque_existential_0(v82);
          }

          v66 = v85;
          v67 = v86;
          __swift_project_boxed_opaque_existential_0(v84, v85);
          v68 = v79;
          (*(v67 + 24))(v79, v66, v67);
          v51(v68, v4);
          v3 = v75;
          goto LABEL_17;
        }
      }

      else
      {
      }

      sub_267B9AFEC(v84, v82);
      v56 = sub_267EF89F8();
      v57 = sub_267EF95D8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = OUTLINED_FUNCTION_48();
        v59 = OUTLINED_FUNCTION_52();
        v81 = v59;
        *v58 = v77;
        __swift_project_boxed_opaque_existential_0(v82, v83);
        v60 = OUTLINED_FUNCTION_51_24();
        sub_267E886DC(v60, v61);
        __swift_destroy_boxed_opaque_existential_0(v82);
        v62 = OUTLINED_FUNCTION_51_24();
        v65 = sub_267BA33E8(v62, v63, v64);
        v4 = v80;

        *(v58 + 4) = v65;
        _os_log_impl(&dword_267B93000, v56, v57, "#AppSelectionSignalCollection signal=[%s]: cannot find collected value", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_40_0();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v82);
      }

LABEL_17:
      __swift_destroy_boxed_opaque_existential_0(v84);
      v29 += 40;
      if (!--v28)
      {

        break;
      }
    }
  }

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EF0520()
{

  v1 = OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_requestID;
  v2 = sub_267EF2D28();
  OUTLINED_FUNCTION_22();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_inferenceID, v2);
  v4(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_isolatedID, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_messageStream));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalGatherer));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_signalFactory));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userDefaults, &qword_280229840, &qword_267EFE9E0);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_userPresonaSignalCollector));

  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow27AppSelectionSignalCollector_crrCommsAppSelectionJointId, &qword_280229430, &qword_267EFD2C0);
  return v0;
}

uint64_t sub_267EF066C()
{
  sub_267EF0520();

  return swift_deallocClassInstance();
}

uint64_t sub_267EF06C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  OUTLINED_FUNCTION_54_0();
  sub_267EF50C8();
  v3 = sub_267EF4E78();
  swift_allocObject();
  result = sub_267EF4E68();
  v5 = MEMORY[0x277D602A0];
  a2[3] = v3;
  a2[4] = v5;
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AppSelectionSignalCollector(uint64_t a1)
{
  result = qword_28022D2D8;
  if (!qword_28022D2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267EF07B8(uint64_t a1)
{
  sub_267EF2D28();
  if (v1 <= 0x3F)
  {
    sub_267EF08D0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267EF08D0(uint64_t a1)
{
  if (!qword_28022D2E8)
  {
    sub_267EF2D28();
    v1 = sub_267EF9888();
    if (!v2)
    {
      atomic_store(v1, &qword_28022D2E8);
    }
  }
}

void sub_267EF094C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_267C2FB6C(a2, &v11 - v7, &qword_280229430, &qword_267EFD2C0);
  v9 = sub_267EF2D28();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    v10 = sub_267EF2CF8();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  [v3 emitMessage:a1 isolatedStreamUUID:v10];
}

void sub_267EF0A6C()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF2D28();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  sub_267EF2D18();
  v11 = sub_267EF2CE8();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v14 = sub_267EF8A08();
  __swift_project_value_buffer(v14, qword_280240FB0);

  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_48();
    v18 = OUTLINED_FUNCTION_52();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_267BA33E8(v11, v13, &v20);
    _os_log_impl(&dword_267B93000, v15, v16, "#AppSelectionSignalCollection: starting SignalGatherer#gatherValuesAndTimings (%s)...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF4DA8();
  swift_allocObject();

  sub_267EF4D98();
  OUTLINED_FUNCTION_65_3();
  v19 = swift_allocObject();
  v19[2] = v11;
  v19[3] = v13;
  v19[4] = v3;
  v19[5] = v1;

  sub_267EF4D88();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267EF0CA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);

  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_267BA33E8(a2, a3, &v14);
    _os_log_impl(&dword_267B93000, v9, v10, "#AppSelectionSignalCollection: starting SignalGatherer#gatherValuesAndTimings (%s) complete", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D60A7B0](v12, -1, -1);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  return a4(a1);
}

uint64_t sub_267EF0E68(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_267EF10E4()
{
  result = qword_28022D330;
  if (!qword_28022D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D330);
  }

  return result;
}

uint64_t sub_267EF16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_267EF4F88();
  v12[3] = v8;
  v12[4] = MEMORY[0x277D60320];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A78, &qword_267EFEEF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  sub_267B9AFEC(v12, inited + 32);

  sub_267E8CF78(inited, a4, a2, a3);
  swift_setDeallocating();
  sub_267DB717C();
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_267EF17F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_267EF18C8;
  OUTLINED_FUNCTION_271();

  return sub_267EEB37C(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_267EF18C8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t objectdestroy_353Tm()
{

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_267EF1A10(char *a1)
{
  v3 = *(sub_267EF89E8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_267EEAB14(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_267EF1ACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267EF1B18()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

double sub_267EF1B24@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (!v7 && (sub_267EF9EA8() & 1) == 0)
  {
    v11 = a1 == 0x52676E6964616572 && a2 == 0xEE00747365757165;
    if (v11 || (sub_267EF9EA8() & 1) != 0)
    {
      v8 = *(v3 + 32);
      if (v8)
      {
        v9 = type metadata accessor for MessagesReadingRequestDialogContext();
        goto LABEL_8;
      }
    }

LABEL_18:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = *(v3 + 24);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = type metadata accessor for MessagesConversationDialogContext();
LABEL_8:
  *(a3 + 24) = v9;
  *a3 = v8;

  return result;
}

uint64_t sub_267EF1C28(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D368, &qword_267F0F6D8);
  OUTLINED_FUNCTION_58();
  MEMORY[0x28223BE20](v4);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267EF2398();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for MessagesConversationDialogContext();
    OUTLINED_FUNCTION_1_92();
    v7 = sub_267EF23EC(v5, 255, v6, &unk_267F0CBB0);
    OUTLINED_FUNCTION_2_78(v7);
    *(v1 + 24) = v14;
    type metadata accessor for MessagesReadingRequestDialogContext();
    OUTLINED_FUNCTION_0_81();
    v11 = sub_267EF23EC(v9, 255, v10, &unk_267F0A200);
    OUTLINED_FUNCTION_2_78(v11);
    v12 = OUTLINED_FUNCTION_8_32();
    v13(v12);
    *(v1 + 32) = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_267EF1E48(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022D378, &qword_267F0F6E0);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267EF2398();
  sub_267EFA088();
  v19 = *(v3 + 24);
  HIBYTE(v18) = 0;
  type metadata accessor for MessagesConversationDialogContext();
  OUTLINED_FUNCTION_1_92();
  v13 = sub_267EF23EC(v11, 255, v12, &unk_267F0CB88);
  OUTLINED_FUNCTION_3_89(v13);
  if (!v2)
  {
    v19 = *(v3 + 32);
    HIBYTE(v18) = 1;
    type metadata accessor for MessagesReadingRequestDialogContext();
    OUTLINED_FUNCTION_0_81();
    v16 = sub_267EF23EC(v14, 255, v15, &unk_267F0A1D8);
    OUTLINED_FUNCTION_3_89(v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_267EF200C(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267EF2060(char a1)
{
  if (a1)
  {
    return 0x52676E6964616572;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_267EF20D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267EF200C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267EF2100@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267EF2060(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267EF2134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267EF200C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267EF215C(uint64_t a1)
{
  v2 = sub_267EF2398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267EF2198(uint64_t a1)
{
  v2 = sub_267EF2398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267EF21D4(void *a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  sub_267EF1C28(a1);
  return v2;
}

uint64_t sub_267EF2288@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_267EF2398()
{
  result = qword_28022D370;
  if (!qword_28022D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D370);
  }

  return result;
}

uint64_t sub_267EF23EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MessagesDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_267EF2514()
{
  result = qword_28022D380;
  if (!qword_28022D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D380);
  }

  return result;
}

unint64_t sub_267EF256C()
{
  result = qword_28022D388;
  if (!qword_28022D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D388);
  }

  return result;
}

unint64_t sub_267EF25C4()
{
  result = qword_28022D390;
  if (!qword_28022D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022D390);
  }

  return result;
}