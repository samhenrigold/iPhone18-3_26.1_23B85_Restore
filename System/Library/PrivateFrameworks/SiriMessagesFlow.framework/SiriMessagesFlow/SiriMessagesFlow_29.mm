uint64_t sub_267E27B5C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
  *(*(*(v2 + 216) + 16) + 16) = a1;
  v3 = [*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent) content];
  if (v3)
  {
    v4 = v3;
    v5 = sub_267EF9028();

    v6 = *(*(v2 + 216) + 16);

    OUTLINED_FUNCTION_108();
    sub_267EF9138();
    OUTLINED_FUNCTION_54();

    *(v6 + 40) = v5;
  }

  sub_267EF6FF8();
  result = sub_267EF6FC8();
  if (result)
  {
    sub_267EF6FA8();

    v8 = sub_267EF86A8();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for AutoSendPersonalizationDataRecorder();
      sub_267D0FB70(v9);
      v11 = v10;

      *(*(*(v2 + 216) + 16) + 24) = v11;
      return result;
    }
  }

  *(*(*(v2 + 216) + 16) + 24) = 0;
  return result;
}

uint64_t sub_267E27DE8()
{
  OUTLINED_FUNCTION_1_71();
  sub_267E28EE0(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender));
  v3 = v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore;

  return sub_267B9EF14(v3);
}

uint64_t sub_267E27EAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_1_71();
  sub_267E28EE0(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_preferences));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_siriKitEventSender));
  sub_267B9EF14(v0 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore);
  return v0;
}

uint64_t sub_267E27F70()
{
  sub_267E27EAC();

  return swift_deallocClassInstance();
}

uint64_t sub_267E27FF0(uint64_t a1)
{
  result = type metadata accessor for SendMessageConfirmIntentFlow.State(319);
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

void sub_267E280E4(uint64_t a1)
{
  sub_267D75CF8();
  if (v1 <= 0x3F)
  {
    sub_267E28158(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267E28158(uint64_t a1)
{
  if (!qword_28022C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C750, qword_267F0B260);
    v1 = sub_267EF3D98();
    if (!v2)
    {
      atomic_store(v1, &qword_28022C748);
    }
  }
}

uint64_t sub_267E281F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267E20A10();
}

uint64_t sub_267E282FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267E28344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E283A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_267E28414()
{
  result = qword_28022C770;
  if (!qword_28022C770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C768, &qword_267F0B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C770);
  }

  return result;
}

uint64_t sub_267E28478(uint64_t a1, void *a2)
{
  v81 = a2;
  v4 = sub_267EF70D8();
  OUTLINED_FUNCTION_23();
  v76 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v74 = v8 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB78, &unk_267F08340);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  v75 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v21 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
  v22 = OUTLINED_FUNCTION_14_1();
  sub_267BB170C(v22, v23, v24, v25);
  v80 = v2;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95D8();
  v28 = OUTLINED_FUNCTION_5_2(v27);
  v79 = a1;
  v77 = v17;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_48();
    v30 = OUTLINED_FUNCTION_52();
    v73 = v11;
    v31 = v30;
    v83[0] = v30;
    *v29 = 136315138;
    OUTLINED_FUNCTION_97_12();
    sub_267BB170C(v32, v33, v34, &unk_267EFDCA0);
    v35 = sub_267EF9098();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_89_0();
    sub_267B9F98C(v38, v39, &unk_267EFDCA0);
    v40 = sub_267BA33E8(v35, v37, v83);

    *(v29 + 4) = v40;
    _os_log_impl(&dword_267B93000, v26, v27, "#AutoSendEnablementUtils currentRespondMode is: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v11 = v73;
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    sub_267B9F98C(v20, &qword_2802295B0, &unk_267EFDCA0);
  }

  sub_267B9AFEC(v81, v83);
  v41 = sub_267EF89F8();
  v42 = sub_267EF95D8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_48();
    v82 = OUTLINED_FUNCTION_52();
    *v43 = 136315138;
    OUTLINED_FUNCTION_13_37(v83);
    if (sub_267DBF878())
    {
      v44 = 1702195828;
    }

    else
    {
      v44 = 0x65736C6166;
    }

    __swift_destroy_boxed_opaque_existential_0(v83);
    v45 = OUTLINED_FUNCTION_108();
    sub_267BA33E8(v45, v46, v47);
    OUTLINED_FUNCTION_54();

    *(v43 + 4) = v44;
    _os_log_impl(&dword_267B93000, v41, v42, "#AutoSendEnablementUtils deviceState supports compact view is: %s", v43, 0xCu);
    OUTLINED_FUNCTION_11_42();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  v48 = v77;
  sub_267EF70A8();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v4);
  v52 = *(v78 + 48);
  sub_267BB170C(v79, v11, &qword_2802295B0, &unk_267EFDCA0);
  sub_267BB170C(v48, &v11[v52], &qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_5_1(v11, 1, v4);
  if (!v54)
  {
    v53 = v75;
    sub_267BB170C(v11, v75, &qword_2802295B0, &unk_267EFDCA0);
    OUTLINED_FUNCTION_5_1(&v11[v52], 1, v4);
    if (!v54)
    {
      v55 = v76;
      v56 = &v11[v52];
      v57 = v74;
      (*(v76 + 32))(v74, v56, v4);
      OUTLINED_FUNCTION_2_57();
      sub_267E282FC(v58, v59, MEMORY[0x277D61CD8]);
      v60 = sub_267EF8FE8();
      v61 = *(v55 + 8);
      v61(v57, v4);
      sub_267B9F98C(v48, &qword_2802295B0, &unk_267EFDCA0);
      v61(v53, v4);
      sub_267B9F98C(v11, &qword_2802295B0, &unk_267EFDCA0);
      if ((v60 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

    sub_267B9F98C(v48, &qword_2802295B0, &unk_267EFDCA0);
    (*(v76 + 8))(v53, v4);
LABEL_20:
    sub_267B9F98C(v11, &qword_28022BB78, &unk_267F08340);
    goto LABEL_25;
  }

  sub_267B9F98C(v48, &qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_5_1(&v11[v52], 1, v4);
  if (!v54)
  {
    goto LABEL_20;
  }

  sub_267B9F98C(v11, &qword_2802295B0, &unk_267EFDCA0);
LABEL_22:
  __swift_project_boxed_opaque_existential_0(v81, v81[3]);
  OUTLINED_FUNCTION_61_0();
  if (sub_267DBF878())
  {
    v83[3] = &type metadata for Features;
    v83[4] = sub_267BAFCAC();
    LOBYTE(v83[0]) = 8;
    v62 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0(v83);
    if (v62)
    {
      return 1;
    }

    v64 = sub_267EF89F8();
    sub_267EF95D8();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(v64, v70))
    {
      v71 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_7_10(v71);
      v69 = "#AutoSendEnablementUtils Auto Send Enablement feature flag is not enabled.";
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_25:
  v64 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_10(v66);
    v69 = "#AutoSendEnablementUtils device type and/or response mode is not eligible for auto-enablement.";
LABEL_27:
    OUTLINED_FUNCTION_5_54(&dword_267B93000, v67, v68, v69);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_28:

  return 0;
}

uint64_t sub_267E28B54(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    v7 = sub_267EF70D8();
    v8 = 0;
  }

  else
  {
    v7 = sub_267EF70D8();
    v8 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v8, 1, v7);
  if ((sub_267E28478(v6, a1) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v26 = sub_267EF8A08();
    __swift_project_value_buffer(v26, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "#AutoSendEnablementUtils user is not being considered for AutoEnablement";
    goto LABEL_20;
  }

  ConversationEventStore.init()(v34);
  v19 = sub_267C9810C(v34, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  sub_267B9EF14(v34);
  if ((v19 & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v27 = sub_267EF89F8();
    v28 = sub_267EF95D8();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "#AutoSendEnablementUtils user is not eligible because they have used AutoSend in the past, and turned it off";
LABEL_20:
    _os_log_impl(&dword_267B93000, v27, v28, v30, v29, 2u);
    MEMORY[0x26D60A7B0](v29, -1, -1);
LABEL_21:

    v32 = 0;
    goto LABEL_24;
  }

  sub_267E579A0(v34);
  v20 = sub_267E57BAC(0);
  sub_267C48D80(v34);
  if (v20)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267B93000, v22, v23, "#AutoSendEnablementUtils: In manual testing mode", v24, 2u);
      MEMORY[0x26D60A7B0](v24, -1, -1);
    }

    v25 = -2400.0;
  }

  else
  {
    v25 = -5184000.0;
  }

  v32 = sub_267C981F4(a2, 16, 0.71, v25);
LABEL_24:
  sub_267B9F98C(v6, &qword_2802295B0, &unk_267EFDCA0);
  return v32 & 1;
}

uint64_t sub_267E28EE0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_267E28F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_267E28F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_267BA9F38(0, &qword_28022C788, 0x277D47AE8);
  v6 = sub_267BF88F4();
  v7 = sub_267EF8FF8();
  [v6 setNotificationId_];

  v8 = sub_267EF9028();
  sub_267E2A280(v8, v9, v6);
  v10 = sub_267E298E0();
  if (qword_280228818 != -1)
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
    _os_log_impl(&dword_267B93000, v12, v13, "#PlayNotificationSoundAction Playing notification sound", v14, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v15 = *(v3 + 32);
  v16 = v15[5];
  v17 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v16);
  (*(v17 + 16))(v20, v16, v17);
  __swift_project_boxed_opaque_existential_0(v20, v20[3]);
  v18 = swift_allocObject();
  v18[2] = v10;
  v18[3] = a1;
  v18[4] = a2;
  sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);

  sub_267EF4268();

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_267E29180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_267EF43D8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  sub_267E2A2F0(a1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = a2;
    (*(v14 + 32))(v19, v12, v13);
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);
    (*(v14 + 16))(v17, v19, v13);
    v21 = sub_267EF89F8();
    v22 = sub_267EF95D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v44 = a4;
      v24 = v23;
      v43 = swift_slowAlloc();
      v47 = v43;
      *v24 = 136315138;
      sub_267E2A480(&qword_28022B5B0, 255, MEMORY[0x277D5BE90], MEMORY[0x277D5BEA0]);
      v25 = sub_267EF9E58();
      v42 = a3;
      v27 = v26;
      v28 = *(v14 + 8);
      v28(v17, v13);
      v29 = sub_267BA33E8(v25, v27, &v47);
      a3 = v42;

      *(v24 + 4) = v29;
      _os_log_impl(&dword_267B93000, v21, v22, "#PlayNotificationSoundAction Playing notification sound failed: %s", v24, 0xCu);
      v30 = v43;
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x26D60A7B0](v30, -1, -1);
      v31 = v24;
      a4 = v44;
      MEMORY[0x26D60A7B0](v31, -1, -1);

      v28(v19, v13);
    }

    else
    {

      v32 = *(v14 + 8);
      v32(v17, v13);
      v32(v19, v13);
    }

    a2 = v45;
  }

  else
  {
    sub_267E2A360(v12);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v33 = sub_267EF8A08();
  __swift_project_value_buffer(v33, qword_280240FB0);
  v34 = sub_267EF89F8();
  v35 = sub_267EF95D8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = a3;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_267B93000, v34, v35, "#PlayNotificationSoundAction Finished playing notification sound", v37, 2u);
    v38 = v37;
    a3 = v36;
    MEMORY[0x26D60A7B0](v38, -1, -1);
  }

  v39 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v39);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = a2;
  v40[5] = a3;
  v40[6] = a4;

  sub_267E8FA18();
}

uint64_t sub_267E29690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_267E296B4, 0, 0);
}

uint64_t sub_267E296B4()
{
  v1 = MEMORY[0x277D84F78];
  v2 = MEMORY[0x277D84A98];
  v3 = MEMORY[0x277D84AC0];
  sub_267EF9418();
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_267E29790;
  v5 = *(v0 + 16);

  return MEMORY[0x282200440](v0 + 48, v5, v1 + 8, v2, v3);
}

uint64_t sub_267E29790()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_267E29880, 0, 0);
}

uint64_t sub_267E29880()
{
  OUTLINED_FUNCTION_12();
  (*(v0 + 24))(0);
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E298E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v26[-1] - v2;
  v4 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26[-1] - v13;
  v15 = *(v0 + 32);
  v16 = *(sub_267BE4AD0(v12) + 16);

  v17 = v15[5];
  v18 = v15[6];
  __swift_project_boxed_opaque_existential_0(v15 + 2, v17);
  (*(v18 + 8))(v26, v17, v18);
  __swift_project_boxed_opaque_existential_0(v26, v26[3]);
  sub_267EF3B68();
  __swift_destroy_boxed_opaque_existential_0(v26);
  v19 = sub_267EF93F8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v19);
  (*(v6 + 16))(v11, v14, v4);
  v20 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v16;
  (*(v6 + 32))(&v21[v20], v11, v4);
  *&v21[(v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = v25;

  sub_267E8FA18();
  v23 = v22;
  (*(v6 + 8))(v14, v4);
  return v23;
}

uint64_t sub_267E29B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_267E29B8C, 0, 0);
}

uint64_t sub_267E29B8C()
{
  if (qword_280228818 != -1)
  {
LABEL_24:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[2];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = sub_267BAF0DC(v5);

    _os_log_impl(&dword_267B93000, v2, v3, "#PlayNotificationSoundAction Converting %ld conversation members", v6, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v7 = v0[4];
  v8 = v0[2];
  v9 = sub_267BAF0DC(v8);
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v13 = v8 + 32;
  while (v9 != v10)
  {
    if (v11)
    {
      v14 = MEMORY[0x26D609870](v10, v0[2]);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_23;
      }

      v14 = *(v13 + 8 * v10);
    }

    v15 = v14;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_267EF9448())
    {
      v20 = sub_267EF89F8();
      v21 = sub_267EF95D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_267B93000, v20, v21, "#PlayNotificationSoundAction Converting conversation members cancelled", v22, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      goto LABEL_19;
    }

    v16 = v0[3];
    v17 = *(*(v7 + 32) + 416);

    sub_267BC20F4(v16, 0, 0, v17, v15);

    ++v10;
  }

  v15 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (os_log_type_enabled(v15, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_267B93000, v15, v18, "#PlayNotificationSoundAction Finished converting conversation members", v19, 2u);
    OUTLINED_FUNCTION_32_0();
  }

LABEL_19:

  OUTLINED_FUNCTION_17();

  return v23();
}

uint64_t sub_267E29E68()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_267E29E98()
{
  sub_267E29E68();

  return swift_deallocClassInstance();
}

uint64_t sub_267E29EF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267E29FDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267BF1CB4;

  return MEMORY[0x2821BBC58](a1, a2);
}

uint64_t sub_267E2A160()
{
  v2 = *(sub_267EF2E38() - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267BF1CB4;
  v5 = OUTLINED_FUNCTION_2_58();

  return sub_267E29B68(v5, v6, v7, v8, v9, v3);
}

void sub_267E2A280(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setNotificationType_];
}

uint64_t sub_267E2A2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E2A360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AE08, &unk_267F04210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267E2A3C8()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_267CFB43C;
  v5 = OUTLINED_FUNCTION_2_58();

  return sub_267E29690(v5, v6, v7, v8, v2, v3);
}

uint64_t sub_267E2A480(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_267E2A4D0()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v1[19] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[20] = swift_task_alloc();
  sub_267EF3CF8();
  v1[21] = swift_task_alloc();
  v3 = sub_267EF48A8();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267E2A614()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[18];
  v0[25] = *(*(v1 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_nextConversation) + 128);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns), *(v1 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns + 24));

  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_267E2A6E0;

  return sub_267D4088C();
}

uint64_t sub_267E2A6E0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E2A7E4()
{
  v1 = v0[18];
  sub_267EF3CA8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  sub_267EF7C18();
  v0[29] = v2;
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v3);
  (*(v4 + 8))(v3, v4);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  sub_267EF3B98();
  sub_267EDFEC8((v0 + 7));
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_267E2A984;

  return sub_267BF57AC();
}

uint64_t sub_267E2A984()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E2AA98()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = sub_267EF4158();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  sub_267EF4818();
  sub_267EF4198();
  swift_allocObject();
  v0[31] = sub_267EF4188();
  v4 = v2[5];
  v5 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v4);
  (*(v5 + 8))(v4, v5);
  __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
  v6 = sub_267EF3C48();
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_267E2ABF8;
  v8 = v0[27];
  v9 = v0[24];
  v10 = v0[25];
  v11 = v0[17];

  return sub_267BCF3A4(v11, v8, v9, v10, v6 & 1);
}

uint64_t sub_267E2ABF8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 96));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E2AD24()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267E2ADA4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];

  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E2AE54()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E2AF00()
{
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_confirmedResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_catProvider));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_featureFlags));
  v1 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns);

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_267E2AF70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267BA1B7C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_confirmedResponse);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_catProvider));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow31ContinueToReadOfferFlowStrategy_searchForMessagesPatterns));
  return v0;
}

uint64_t sub_267E2AFE0()
{
  sub_267E2AF70();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContinueToReadOfferFlowStrategy(uint64_t a1)
{
  result = qword_28022C7A8;
  if (!qword_28022C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267E2B08C(uint64_t a1)
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

uint64_t sub_267E2B154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267E2B1EC;

  return sub_267E2A4D0();
}

uint64_t sub_267E2B1EC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E2B2D0()
{
  v1 = *v0;
  v2 = sub_267E2D7A4(*v0, &selRef_conversationIdentifiers);
  if (!v2 || (v3 = *(v2 + 16), , v3 != 1))
  {
    v4 = sub_267E2D7A4(v1, &selRef_notificationIdentifiers);
    if (!v4 || (v5 = *(v4 + 16), , !v5))
    {
      v6 = sub_267E2D71C(v1, &selRef_senders, &qword_28022BB60, 0x277CD3E90);
      if (!v6 || (v7 = sub_267BAF0DC(v6), , !v7))
      {
        v8 = sub_267E2D71C(v1, &selRef_speakableGroupNames, &qword_280229ED0, 0x277CD4188);
        if (!v8 || (v9 = sub_267BAF0DC(v8), , !v9))
        {
          v10 = *(v0 + 8);
          if (*(v0 + 16))
          {
            if (*(v0 + 16) != 1 || v10 != 1)
            {
              return 0;
            }
          }

          else if (v10 != 1)
          {
            return 0;
          }
        }
      }
    }
  }

  return 1;
}

BOOL sub_267E2B428()
{
  v1 = *(v0 + 80) == 2 && *(v0 + 72) == 0;
  result = 0;
  if (v1)
  {
    v2 = *(v0 + 64);
    if (([v2 attributes] & 2) != 0)
    {
      v3 = sub_267E2D7A4(v2, &selRef_conversationIdentifiers);
      if (!v3)
      {
        return 1;
      }

      v4 = *(v3 + 16);

      if (!v4)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL sub_267E2B4DC(uint64_t a1)
{
  if (sub_267BF42CC(a1) == 1 && (sub_267BE4AD0(1), sub_267DE1640(), v2 = sub_267D3281C(), , , v2 == 1))
  {
    return [*(v1 + 64) attributes] == 2;
  }

  else
  {
    return 0;
  }
}

BOOL sub_267E2B564(uint64_t a1)
{
  if (sub_267BF42CC(a1) != 1)
  {
    return 0;
  }

  sub_267BE4AD0(1);
  sub_267DE1640();
  v1 = sub_267D3281C();

  if (v1 == 1)
  {
    return 1;
  }

  sub_267BE4AD0(v2);
  v4 = sub_267BF4920();

  return v4;
}

BOOL sub_267E2B5FC(uint64_t a1)
{
  v1 = sub_267E2B4DC(a1);
  if (v1)
  {
    sub_267BE4AD0(v1);
    v2 = sub_267BF4920();

    return !v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E2B648(uint64_t a1)
{
  if (sub_267BF42CC(a1) == 1)
  {
    OUTLINED_FUNCTION_83(v1 + 56, v7);
    v2 = *(v1 + 56);
    if (sub_267BAF0DC(v2))
    {
      v3 = v2 & 0xC000000000000001;
      sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {

        MEMORY[0x26D609870](0, v2);
        OUTLINED_FUNCTION_43();
      }

      else
      {
        v3 = *(v2 + 32);
      }

      OUTLINED_FUNCTION_83(v3 + 40, &v6);
      sub_267BE4994(v3 + 40, &v8);

      if (*(&v9 + 1))
      {
        v4 = 1;
LABEL_10:
        sub_267B9FF34(&v8, &qword_280229910, &unk_267EFEB70);
        return v4;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    v4 = 0;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_267E2B73C(char a1, void *a2)
{
  v3 = v2;
  *(&v62 + 1) = &type metadata for Features;
  *&v63 = sub_267BAFCAC();
  LOBYTE(v61) = 12;
  v6 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0(&v61);
  if ((v6 & 1) == 0 || (a1 & 1) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_83((a2 + 5), v55);
  sub_267BE4994((a2 + 5), &v58);
  if (!*(&v59 + 1))
  {
    sub_267B9FF34(&v58, &qword_280229910, &unk_267EFEB70);
LABEL_10:
    if (qword_280228818 != -1)
    {
LABEL_32:
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v13 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v15))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v16, v17, "#ConversationStateManager using non-summary components for readableComponents before creating navigation map");
      OUTLINED_FUNCTION_32_0();
    }

    v18 = a2[4];
    OUTLINED_FUNCTION_36_22();
    a2[3] = v18;

    goto LABEL_14;
  }

  sub_267BE58F4(&v58, &v61);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v7 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
  v8 = sub_267EF89F8();
  v9 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v9))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_1_1(&dword_267B93000, v10, v11, "#ConversationStateManager using ConversationSummaryComponent for readableComponents before creating navigation map");
    OUTLINED_FUNCTION_32_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B38, &unk_267F02C60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_267EFC020;
  sub_267BE58F4(&v61, v12 + 32);
  OUTLINED_FUNCTION_36_22();
  a2[3] = v12;
LABEL_14:

  OUTLINED_FUNCTION_83((a2 + 3), v64);
  v51 = a2[3] + 32;
  v52 = a2[3];

  for (i = a2; ; a2 = i)
  {
    *&v20 = OUTLINED_FUNCTION_6_45();
    if (!v23)
    {
      if (v19 >= *(v52 + 16))
      {
        goto LABEL_30;
      }

      *&v58 = v19;
      sub_267B9AFEC(v51 + 40 * v19, &v58 + 8);
      v22 = v58;
      v21 = v59;
      v20 = v60;
    }

    v61 = v22;
    v62 = v21;
    v63 = v20;
    if (!v20)
    {
    }

    v54 = v22;
    sub_267BE58F4((&v61 + 8), &v58);
    __swift_project_boxed_opaque_existential_0(&v58, *(&v59 + 1));
    v24 = OUTLINED_FUNCTION_33();
    v26 = v25(v24);
    v28 = v27;
    v29 = a2[11];
    v30 = a2[12];
    OUTLINED_FUNCTION_66_3(v3 + 392, v57);

    swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v3 + 392);
    a2 = v3;
    *(v3 + 392) = 0x8000000000000000;
    sub_267BA9948();
    OUTLINED_FUNCTION_5_55();
    if (__OFADD__(v33, v34))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v3 = v31;
    v35 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
    if (sub_267EF9C68())
    {
      break;
    }

LABEL_23:
    if (v35)
    {

      v38 = v56;
      OUTLINED_FUNCTION_13_38();
      v41 = (v39 + v3 * v40);
      *v41 = v54;
      v41[1] = v29;
      v41[2] = v30;
    }

    else
    {
      v38 = v56;
      OUTLINED_FUNCTION_7_44(v56 + 8 * (v3 >> 6));
      v43 = (v42 + 16 * v3);
      *v43 = v26;
      v43[1] = v28;
      OUTLINED_FUNCTION_13_38();
      v46 = (v44 + v3 * v45);
      *v46 = v54;
      v46[1] = v29;
      v46[2] = v30;
      v47 = *(v38 + 16);
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_31;
      }

      *(v38 + 16) = v49;
    }

    v3 = a2;
    a2[49] = v38;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(&v58);
  }

  v36 = sub_267BA9948();
  if ((v35 & 1) == (v37 & 1))
  {
    v3 = v36;
    goto LABEL_23;
  }

  result = sub_267EF9F28();
  __break(1u);
  return result;
}

uint64_t sub_267E2BBA0(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = sub_267EF2D28();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = type metadata accessor for ConversationSummaryComponent(0);
  v3[38] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_267E2BC8C()
{
  v2 = v1[33];
  OUTLINED_FUNCTION_83(v2 + 56, (v1 + 22));
  v3 = *(v2 + 56);
  v1[39] = v3;
  if (v3 >> 62)
  {
LABEL_32:
    v4 = OUTLINED_FUNCTION_12_38();
  }

  else
  {
    v4 = OUTLINED_FUNCTION_29_26();
  }

  v1[40] = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = 0;
  while (1)
  {
    if ((v1[39] & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x26D609870](v5);
    }

    else
    {
      OUTLINED_FUNCTION_15_36();
      if (v6)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_23_24();
    }

    v1[41] = v0;
    v1[42] = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_83(v0 + 24, (v1 + 25));
    v7 = *(v0 + 24);
    if (*(v7 + 16))
    {
      break;
    }

LABEL_14:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v13))
    {
      v14 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_2_59(v14);
      OUTLINED_FUNCTION_32_0();
    }

    v5 = v1[42];
    if (v5 == v1[40])
    {

LABEL_27:

      OUTLINED_FUNCTION_40();

      __asm { BRAA            X1, X16 }
    }
  }

  sub_267B9AFEC(v7 + 32, (v1 + 2));
  v8 = OUTLINED_FUNCTION_3_66();
  v9(v8);
  OUTLINED_FUNCTION_17_27();
  if (!v10)
  {
    if (OUTLINED_FUNCTION_29_26())
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (!OUTLINED_FUNCTION_12_38())
  {
LABEL_13:

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    goto LABEL_14;
  }

LABEL_21:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v22 = OUTLINED_FUNCTION_22_27();
    v16 = MEMORY[0x26D609870](v22);
LABEL_24:
    v1[43] = v16;

    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    v17 = swift_task_alloc();
    v1[44] = v17;
    *v17 = v1;
    OUTLINED_FUNCTION_1_72(v17);
    OUTLINED_FUNCTION_40();

    sub_267DE2334(v18);
  }

  else
  {
    OUTLINED_FUNCTION_28_30();
    if (v15)
    {
      v16 = *(v5 + 32);
      goto LABEL_24;
    }

    __break(1u);
  }
}

uint64_t sub_267E2BF20()
{
  OUTLINED_FUNCTION_7();
  *v1 = v0;
  *(v0 + 360) = v2;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_267E2C010()
{
  if (*(v1 + 360) >= 10.0)
  {
    v17 = *(v1 + 264);
    sub_267DE1640();
    *(v1 + 368) = sub_267C8F198(v18);

    __swift_project_boxed_opaque_existential_0((v17 + 472), *(v17 + 496));
    v19 = swift_task_alloc();
    *(v1 + 376) = v19;
    *v19 = v1;
    v19[1] = sub_267E2C33C;
    OUTLINED_FUNCTION_40();

    __asm { BR              X4 }
  }

  while (1)
  {
    v2 = *(v1 + 336);
    if (v2 == *(v1 + 320))
    {

      OUTLINED_FUNCTION_40();

      __asm { BRAA            X1, X16 }
    }

    if ((*(v1 + 312) & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x26D609870](*(v1 + 336));
    }

    else
    {
      OUTLINED_FUNCTION_15_36();
      if (v3)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_23_24();
    }

    *(v1 + 328) = v0;
    *(v1 + 336) = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v24 = OUTLINED_FUNCTION_22_27();
      v13 = MEMORY[0x26D609870](v24);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_83(v0 + 24, v1 + 200);
    v4 = *(v0 + 24);
    if (!*(v4 + 16))
    {
      goto LABEL_13;
    }

    sub_267B9AFEC(v4 + 32, v1 + 16);
    v5 = OUTLINED_FUNCTION_3_66();
    v6(v5);
    OUTLINED_FUNCTION_17_27();
    if (!v7)
    {
      if (OUTLINED_FUNCTION_29_26())
      {
        break;
      }

      goto LABEL_12;
    }

    if (OUTLINED_FUNCTION_12_38())
    {
      break;
    }

LABEL_12:

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
LABEL_13:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v8 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v8, qword_280240FB0);
    v9 = sub_267EF89F8();
    v10 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v10))
    {
      v11 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_2_59(v11);
      OUTLINED_FUNCTION_32_0();
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_28_30();
  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = *(v2 + 32);
LABEL_22:
  *(v1 + 344) = v13;

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  v14 = swift_task_alloc();
  *(v1 + 352) = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_1_72(v14);
  OUTLINED_FUNCTION_40();

  sub_267DE2334(v15);
}

uint64_t sub_267E2C33C()
{
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 384) = v3;
  *(v1 + 392) = v4;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_267E2C42C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 328);
  *(v2 + 152) = *(v0 + 384);
  *(v2 + 160) = v1;

  if (v1)
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 344);
    v5 = *(v0 + 328);
    v6 = *(v0 + 304);
    v37 = v3;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 384);
    v7 = *(v0 + 264);
    v41 = *(v0 + 280);
    v42 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFCA40;
    *(inited + 32) = v4;
    v43 = v4;
    v9 = sub_267BE2268(inited);
    v35 = v10;
    v36 = v9;
    v11 = v7[5];
    v12 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v11);
    v13 = *(v12 + 8);
    v14 = v3;
    v13(v11, v12);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    sub_267EF3B68();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 1;
    *(v6 + 32) = v40;
    *(v6 + 40) = v1;
    *(v6 + 48) = 0;
    *(v6 + 56) = v36;
    *(v6 + 64) = v35;
    sub_267EF2D18();
    v15 = sub_267EF2CE8();
    v17 = v16;
    (*(v41 + 8))(v39, v42);
    *(v6 + 72) = v15;
    *(v6 + 80) = v17;
    *(v6 + 88) = v37;
    *(v6 + 96) = 0;
    __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    v5[4] = v5[3];

    *(v0 + 160) = v38;
    *(v0 + 168) = sub_267BFBF08(&qword_28022C7C0, type metadata accessor for ConversationSummaryComponent, &unk_267F0E648);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
    sub_267E2DFFC(v6, boxed_opaque_existential_0);

    OUTLINED_FUNCTION_66_3((v5 + 5), v0 + 224);
    sub_267E2E060(v0 + 136, (v5 + 5));
    swift_endAccess();
  }

  else
  {
    v5 = *(v0 + 368);
  }

  while (1)
  {
    v19 = *(v0 + 336);
    if (v19 == *(v0 + 320))
    {
      break;
    }

    if ((*(v0 + 312) & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](*(v0 + 336));
    }

    else
    {
      OUTLINED_FUNCTION_15_36();
      if (v20)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_23_24();
    }

    *(v0 + 328) = v5;
    *(v0 + 336) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v34 = OUTLINED_FUNCTION_22_27();
      v30 = MEMORY[0x26D609870](v34);
LABEL_23:
      *(v0 + 344) = v30;

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      v31 = swift_task_alloc();
      *(v0 + 352) = v31;
      *v31 = v0;
      v32 = OUTLINED_FUNCTION_1_72(v31);

      sub_267DE2334(v32);
      return;
    }

    OUTLINED_FUNCTION_83((v5 + 3), v0 + 200);
    v21 = v5[3];
    if (*(v21 + 16))
    {
      sub_267B9AFEC(v21 + 32, v0 + 16);
      v22 = OUTLINED_FUNCTION_3_66();
      v23(v22);
      OUTLINED_FUNCTION_17_27();
      if (v24)
      {
        if (OUTLINED_FUNCTION_12_38())
        {
LABEL_20:
          if ((v19 & 0xC000000000000001) != 0)
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_28_30();
          if (!v29)
          {
            __break(1u);
            return;
          }

          v30 = *(v19 + 32);
          goto LABEL_23;
        }
      }

      else if (OUTLINED_FUNCTION_29_26())
      {
        goto LABEL_20;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v25 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v25, qword_280240FB0);
    v26 = sub_267EF89F8();
    v27 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v27))
    {
      v28 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_2_59(v28);
      OUTLINED_FUNCTION_32_0();
    }
  }

  v33 = *(v0 + 8);

  v33();
}

void sub_267E2C8B0()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_4_58(v3);
  v4 = *(v1 + 56);
  v5 = sub_267BAF0DC(v4);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D609870](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = *(v7 + 112);
    if (v8 && (*(v7 + 104) == v2 ? (v9 = v8 == v0) : (v9 = 0), v9 || (sub_267EF9EA8() & 1) != 0))
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_267E2C9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53[1] = a4;
  OUTLINED_FUNCTION_83(v5 + 384, v68);
  v9 = *(v5 + 384);

  v56 = a1;
  v10 = sub_267BD9C8C(a1, a2, v9);

  v54 = a3;
  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = v54 + 32;
    OUTLINED_FUNCTION_83(v5 + 56, v67);
    v55 = v10;
    do
    {
      sub_267B9AFEC(v12, v64);
      v13 = v65;
      __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
      OUTLINED_FUNCTION_218();
      v14();
      v15 = *(v5 + 56);
      v57 = v11;
      if ((v15 & 0xC000000000000001) != 0)
      {

        v13 = MEMORY[0x26D609870](v10, v15);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        OUTLINED_FUNCTION_28_30();
        if (v10 >= v16)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_23_24();
      }

      sub_267B9AFEC(v64, v61);
      OUTLINED_FUNCTION_66_3(v13 + 24, v60);
      v17 = v62;
      v18 = v63;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
      MEMORY[0x28223BE20](v19);
      v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21);
      sub_267BE2B94(v21, (v13 + 24), v17, v18);
      __swift_destroy_boxed_opaque_existential_0(v61);
      swift_endAccess();

      v23 = v66;
      __swift_project_boxed_opaque_existential_0(v64, v65);
      v24 = OUTLINED_FUNCTION_43();
      v58 = v25(v24, v23);
      v27 = v26;
      v28 = *(v5 + 56);
      if ((v28 & 0xC000000000000001) != 0)
      {

        v17 = MEMORY[0x26D609870](v10, v28);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v10 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_25_31();
      }

      OUTLINED_FUNCTION_83(v17 + 24, v59);
      v29 = *(v17 + 24);

      v30 = *(v29 + 16);

      OUTLINED_FUNCTION_66_3(v5 + 392, v61);
      v31 = a2;

      swift_isUniquelyReferenced_nonNull_native();
      v60[0] = *(v5 + 392);
      v10 = v5;
      *(v5 + 392) = 0x8000000000000000;
      sub_267BA9948();
      OUTLINED_FUNCTION_5_55();
      if (__OFADD__(v34, v35))
      {
        goto LABEL_32;
      }

      v5 = v32;
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
      if (sub_267EF9C68())
      {
        v37 = sub_267BA9948();
        if ((v36 & 1) != (v38 & 1))
        {
          result = sub_267EF9F28();
          __break(1u);
          return result;
        }

        v5 = v37;
      }

      v39 = v30 - 1;
      v40 = v60[0];
      if (v36)
      {
        OUTLINED_FUNCTION_26_29(v39);
        a2 = v31;
      }

      else
      {
        *(v60[0] + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v41 = (*(v40 + 48) + 16 * v5);
        *v41 = v58;
        v41[1] = v27;
        OUTLINED_FUNCTION_26_29(v39);
        v42 = *(v40 + 16);
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_34;
        }

        a2 = v31;
        *(v40 + 16) = v44;
      }

      v5 = v10;
      *(v10 + 392) = v40;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(v64);
      v12 += 40;
      v11 = v57 - 1;
      v10 = v55;
    }

    while (v57 != 1);
  }

  if (qword_280228818 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v45 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v45, qword_280240FB0);
  v46 = sub_267EF89F8();
  v47 = sub_267EF95D8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_61(v48);
    OUTLINED_FUNCTION_90_0(&dword_267B93000, v46, v47, "ConversationStateManager.appendComponentsToConversation Relogging isGroupMessage and readMessageType signals  here. Components are being appended to conversation and the signals logged in Conversation.init need to be logged again");
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_83(v5 + 56, v64);
  v49 = *(v5 + 56);
  sub_267BBD0EC(v10, (v49 & 0xC000000000000001) == 0, v49);
  if ((v49 & 0xC000000000000001) != 0)
  {

    MEMORY[0x26D609870](v10, v49);
    OUTLINED_FUNCTION_43();
  }

  else
  {
    OUTLINED_FUNCTION_25_31();
  }

  v50 = v54;
  sub_267C38060(v54);

  OUTLINED_FUNCTION_66_3(v5 + 144, v61);
  sub_267BE5E38(v50);
  swift_endAccess();
  OUTLINED_FUNCTION_66_3(v5 + 400, v61);

  sub_267E2CFC8(v51);
  return swift_endAccess();
}

uint64_t sub_267E2CFC8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_267D302A8(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_267E2D070(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v53 = sub_267BAF0DC(a1);
  if (!v53)
  {
LABEL_23:
    OUTLINED_FUNCTION_66_3((v3 + 50), v64);

    sub_267E2CFC8(v48);
    return swift_endAccess();
  }

  v5 = 0;
  v51 = v4;
  v52 = v4 & 0xC000000000000001;
  v50 = v4 + 32;
  while (2)
  {
    sub_267BBD0EC(v5, v52 == 0, v4);
    if (v52)
    {
      v6 = MEMORY[0x26D609870](v5, v4);
    }

    else
    {
      v6 = *(v50 + 8 * v5);
    }

    v7 = __OFADD__(v5, 1);
    v8 = v5 + 1;
    if (v7)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      v54 = v8;
      *(v6 + 80) = 1;
      OUTLINED_FUNCTION_66_3((v3 + 7), v64);

      MEMORY[0x26D608F90](v9);
      sub_267BDECD0();
      sub_267EF9368();
      v10 = v3[7];
      swift_endAccess();
      if (!__OFSUB__(sub_267BAF0DC(v10), 1))
      {
        OUTLINED_FUNCTION_66_3((v3 + 48), v64);
        swift_isUniquelyReferenced_nonNull_native();
        *&v61 = v3[48];
        OUTLINED_FUNCTION_218();
        sub_267BE4A04(v11, v12, v13);
        v3[48] = v61;
        swift_endAccess();
        OUTLINED_FUNCTION_83(v6 + 24, v65);
        v55 = *(v6 + 24) + 32;
        v56 = *(v6 + 24);

        for (i = v6; ; v6 = i)
        {
          *&v15 = OUTLINED_FUNCTION_6_45();
          if (!v18)
          {
            if (v14 >= *(v56 + 16))
            {
              goto LABEL_25;
            }

            *&v61 = v14;
            sub_267B9AFEC(v55 + 40 * v14, &v61 + 8);
            v17 = v61;
            v16 = v62;
            v15 = v63;
          }

          v64[0] = v17;
          v64[1] = v16;
          v64[2] = v15;
          if (!v15)
          {
            break;
          }

          v58 = v17;
          sub_267BE58F4((v64 + 8), &v61);
          v19 = v63;
          __swift_project_boxed_opaque_existential_0(&v61, *(&v62 + 1));
          v20 = OUTLINED_FUNCTION_43();
          v22 = v21(v20, v19);
          v24 = v23;
          v26 = *(v6 + 88);
          v25 = *(v6 + 96);
          OUTLINED_FUNCTION_66_3((v3 + 49), v60);

          swift_isUniquelyReferenced_nonNull_native();
          v59 = v3[49];
          v27 = v3;
          v3[49] = 0x8000000000000000;
          OUTLINED_FUNCTION_33();
          sub_267BA9948();
          OUTLINED_FUNCTION_5_55();
          if (__OFADD__(v30, v31))
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v32 = v28;
          v33 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C7B8, &qword_267F0B668);
          if (sub_267EF9C68())
          {
            OUTLINED_FUNCTION_33();
            v34 = sub_267BA9948();
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_29;
            }

            v32 = v34;
          }

          if (v33)
          {

            v36 = v59;
            OUTLINED_FUNCTION_13_38();
            v39 = (v37 + v32 * v38);
            *v39 = v58;
            v39[1] = v26;
            v39[2] = v25;
          }

          else
          {
            v36 = v59;
            OUTLINED_FUNCTION_7_44(v59 + 8 * (v32 >> 6));
            v41 = (v40 + 16 * v32);
            *v41 = v22;
            v41[1] = v24;
            OUTLINED_FUNCTION_13_38();
            v44 = (v42 + v32 * v43);
            *v44 = v58;
            v44[1] = v26;
            v44[2] = v25;
            v45 = *(v59 + 16);
            v7 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v7)
            {
              goto LABEL_26;
            }

            *(v59 + 16) = v46;
          }

          v3 = v27;
          v27[49] = v36;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_0(&v61);
        }

        OUTLINED_FUNCTION_66_3((v3 + 18), v64);

        sub_267BE5E38(v47);
        swift_endAccess();

        v5 = v54;
        v4 = v51;
        if (v54 != v53)
        {
          continue;
        }

        goto LABEL_23;
      }
    }

    break;
  }

  __break(1u);
LABEL_29:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

BOOL sub_267E2D478()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_83(v1 + 400, v6);
  v3 = *(v1 + 400);

  v4 = sub_267BC2F78(v2, v0, v3);

  return v4;
}

uint64_t sub_267E2D4E0()
{

  v1 = *(v0 + 64);

  sub_267B9EF14(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0((v0 + 264));
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  sub_267B9FF34(v0 + 344, &qword_280229128, &unk_267EFC860);

  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  return __swift_destroy_boxed_opaque_existential_0((v0 + 472));
}

uint64_t getEnumTagSinglePayload for LongMessageInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LongMessageInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_267E2D648(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_267E2D688(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267E2D71C(void *a1, SEL *a2, uint64_t a3, void *a4)
{
  v5 = [a1 *a2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = OUTLINED_FUNCTION_22_27();
  sub_267BA9F38(v7, v8, a4);
  v9 = sub_267EF92F8();

  return v9;
}

uint64_t sub_267E2D7A4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_267EF92F8();

  return v4;
}

uint64_t sub_267E2D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v4[5] = type metadata accessor for MessageSummaryProvider();
  v4[6] = &off_2878D8D98;
  v4[2] = a1;

  return MEMORY[0x2822009F8](sub_267E2D888, 0, 0);
}

uint64_t sub_267E2D888()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[19];
    OUTLINED_FUNCTION_83(v2 + 24, (v0 + 12));
    sub_267C8F7C0(*(v2 + 24), (v0 + 7));
    if (v0[10])
    {
      __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
      v3 = OUTLINED_FUNCTION_37_1();
      v5 = v4(v3);
      if (sub_267BAF0DC(v5))
      {
        sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v25 = OUTLINED_FUNCTION_22_27();
          v6 = MEMORY[0x26D609870](v25);
        }

        else
        {
          v6 = *(v5 + 32);
        }

        v7 = v6;

        v8 = [v7 identifier];

        sub_267EF9028();
        v10 = v9;

        v0[20] = v10;
        __swift_destroy_boxed_opaque_existential_0(v0 + 7);
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v11 = sub_267EF8A08();
        v0[21] = OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);

        v12 = sub_267EF89F8();
        v13 = sub_267EF95D8();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          *v14 = 136315138;
          v15 = OUTLINED_FUNCTION_37_1();
          *(v14 + 4) = sub_267BA33E8(v15, v16, v17);
          _os_log_impl(&dword_267B93000, v12, v13, "#Conversation: getting message summary for messagesID: %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          OUTLINED_FUNCTION_32_0();
          OUTLINED_FUNCTION_32_0();
        }

        __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
        v18 = swift_task_alloc();
        v0[22] = v18;
        *v18 = v0;
        v18[1] = sub_267E2DB90;
        v19 = OUTLINED_FUNCTION_37_1();

        return sub_267EADC9C(v19, v20, v21, v1);
      }

      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    }

    else
    {
      sub_267B9FF34((v0 + 7), &qword_280229910, &unk_267EFEB70);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v23 = OUTLINED_FUNCTION_27_27();

  return v24(v23);
}

uint64_t sub_267E2DB90()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v5 + 184) = v4;

  if (v0)
  {

    v6 = sub_267E2DE9C;
  }

  else
  {

    v6 = sub_267E2DCD8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_267E2DCD8()
{
  v16 = v0;
  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = [*(v0 + 184) string];

    v3 = sub_267EF9028();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  swift_bridgeObjectRetain_n();
  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v0 + 120) = v3;
    *(v0 + 128) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v10 = sub_267EF9098();
    v12 = sub_267BA33E8(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_267B93000, v6, v7, "#Conversation: summary is %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v13 = *(v0 + 8);

  return v13(v3, v5);
}

uint64_t sub_267E2DE9C(uint64_t a1)
{
  v13 = v1;
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v1[15] = 0;
    v1[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v6 = sub_267EF9098();
    v8 = sub_267BA33E8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_267B93000, v2, v3, "#Conversation: summary is %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v9 = OUTLINED_FUNCTION_27_27();

  return v10(v9);
}

uint64_t sub_267E2DFFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationSummaryComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E2E060(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229910, &unk_267EFEB70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E2E0DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_267E2E12C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_267E2E180(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_267E2E198(void *result, int a2)
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

uint64_t sub_267E2E1C8(uint64_t a1, uint64_t a2, char a3)
{
  sub_267B9AFEC(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if (swift_dynamicCast())
  {
    v16[0] = v11;
    v16[1] = v12;
    v16[2] = v13;
    v17 = v14;
    type metadata accessor for ReadAudioComponentAction();
    swift_allocObject();
    v6 = sub_267E38820(v16, a2);
    v7 = &unk_280229268;
    v8 = type metadata accessor for ReadAudioComponentAction;
    v9 = &unk_267F0B9C8;
  }

  else
  {
    sub_267B9AFEC(a1, v16);
    type metadata accessor for DefaultReadComponentAction();
    swift_allocObject();
    v6 = sub_267BF902C(v16, a2, a3 & 1);
    v7 = &qword_280229258;
    v8 = type metadata accessor for DefaultReadComponentAction;
    v9 = &unk_267F00350;
  }

  sub_267E2E338(v7, v8, v9);

  __swift_destroy_boxed_opaque_existential_0(v15);
  return v6;
}

uint64_t sub_267E2E338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_267E2E380(uint64_t a1)
{
  v1 = a1;
  v2 = sub_267E2E87C(a1);
  if (sub_267BAF0DC(v2) == 1)
  {
    v3 = v2 & 0xC000000000000001;
    sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](0, v2);
    }

    else
    {
    }

    v4 = sub_267EF38F8();

    if (v4)
    {
      goto LABEL_20;
    }

    if (v3)
    {
      MEMORY[0x26D609870](0, v2);
    }

    else
    {
    }

    v20 = sub_267EF3908();

    if (v20)
    {
LABEL_20:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_267EFC020;
      *(v11 + 32) = sub_267EF39E8();
      *(v11 + 40) = v21;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_267EFC020;
      if (v3)
      {
        MEMORY[0x26D609870](0, v2);
      }

      else
      {
      }

      v22 = sub_267EF38E8();
      v24 = v23;

      *(v11 + 32) = v22;
      *(v11 + 40) = v24;
    }

    return v11;
  }

  sub_267EF3998();
  sub_267E2EC7C(v2, v1 & 1);
  v6 = v5;

  v7 = sub_267BAF0DC(v6);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v26 = MEMORY[0x277D84F90];
  result = sub_267BC7934(0, v7 & ~(v7 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v26;
    v25 = v6 & 0xC000000000000001;
    v12 = v6;
    do
    {
      if (v25)
      {
        MEMORY[0x26D609870](v10, v6);
      }

      else
      {
      }

      v13 = v1;
      v14 = sub_267EF38E8();
      v16 = v15;

      v18 = *(v26 + 16);
      v17 = *(v26 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_267BC7934((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v26 + 16) = v18 + 1;
      v19 = v26 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v1 = v13;
      v6 = v12;
    }

    while (v8 != v10);

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E2E664()
{
  v0 = sub_267EF3988();
  v1 = sub_267EAD8DC(v0);

  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = sub_267D32820(v2);

  return v3 & 1;
}

void sub_267E2E6C0(char a1)
{
  if ((a1 & 1) == 0 || (sub_267E2E664() & 1) == 0)
  {

    return;
  }

  v2 = sub_267EF3988();
  v5 = v2;
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v1 = v2;
  sub_267C8F094(v2, &v3);
  if (v4)
  {
    sub_267C0BFFC(&v3);
    if (*(v1 + 16))
    {
      sub_267CF5D98(0, 1);
      v1 = sub_267EF3948();
      *&v3 = v1;
      if (sub_267BAF0DC(v1))
      {
        if (sub_267BAF0DC(v1))
        {
          sub_267BBD0EC(0, (v1 & 0xC000000000000001) == 0, v1);
          if ((v1 & 0xC000000000000001) == 0)
          {

LABEL_10:
            if (sub_267BAF0DC(v1))
            {
              if (sub_267BAF0DC(v1) < 1)
              {
                __break(1u);
              }

              else if (!__OFSUB__(sub_267BAF0DC(v1), 1))
              {
                sub_267CA5F78();
                sub_267C731C8();

                sub_267EF3958();
                sub_267EF3968();
                sub_267EF3998();
                swift_allocObject();
                sub_267EF3978();
                return;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_23;
          }

LABEL_19:
          MEMORY[0x26D609870](0, v1);
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_267E2E87C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_267EF3948();
  v4 = sub_267BAF0DC(v3);

  v5 = sub_267EF3948();
  v6 = v5;
  if (v4 < 2)
  {
    return v6;
  }

  sub_267BBD0EC(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_53:
    MEMORY[0x26D609870](0, v6);
  }

  else
  {
  }

  v7 = sub_267EF3908();

  if (v7)
  {
    v28 = sub_267EF39E8();
    v9 = v8;
  }

  else
  {
    v28 = 0;
    v9 = 0;
  }

  v6 = v2;
  v10 = sub_267EF3948();
  v11 = sub_267BAF0DC(v10);
  v12 = 0;
  v2 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v2)
    {
      v13 = MEMORY[0x26D609870](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (sub_267EF3908())
    {
      v14 = sub_267EF39E8();
      v16 = v15;

      if (v9)
      {
        if (!v16)
        {
          goto LABEL_44;
        }

        if (v28 == v14 && v9 == v16)
        {
        }

        else
        {
          v18 = sub_267EF9EA8();

          if ((v18 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v16)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    else if (v9)
    {
      goto LABEL_44;
    }

    v6 = v13;
    v19 = sub_267EF3908();

    if (!v19)
    {

LABEL_45:

      return sub_267EF3948();
    }

    ++v12;
  }

  v20 = sub_267EF3948();
  v21 = sub_267BAF0DC(v20);
  if (!v21)
  {

    return MEMORY[0x277D84F90];
  }

  v2 = v21;
  v29 = MEMORY[0x277D84F90];
  result = sub_267EF9BF8();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](v23, v20);
      }

      else
      {
      }

      v24 = sub_267EF38D8();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v24 < 0 || (v24 & 0x4000000000000000) != 0)
      {
        v24 = sub_267D60234();
      }

      v6 = v24 & 0xFFFFFFFFFFFFFF8;
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25 < 2)
      {
        break;
      }

      v26 = v25 - 1;
      v27 = v6 + 40;
      memmove(v27, (v27 + 8), 8 * v25 - 16);
      ++v23;
      *(v27 - 24) = v26;

      sub_267EF3918();
      sub_267EF3928();
      swift_allocObject();
      sub_267EF38C8();

      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
      if (v2 == v23)
      {

        return v29;
      }
    }

    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void sub_267E2EC7C(uint64_t a1, int a2)
{
  v35 = a2;
  v2 = a1;
  v3 = sub_267BAF0DC(a1);
  v4 = v2 & 0xC000000000000001;
  v37 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = MEMORY[0x277D84F90];
  v6 = 0;
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v6)
    {
      v16 = 0;
      v39 = v5;
      v31 = xmmword_267EFCA40;
      v33 = v2 & 0xC000000000000001;
      v34 = v2;
      v32 = v3;
      while (1)
      {
        if (v3 == v16)
        {

          return;
        }

        if (v4)
        {
          MEMORY[0x26D609870](v16, v2);
        }

        else
        {
          if (v16 >= *(v37 + 16))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(v16, 1))
        {
          goto LABEL_37;
        }

        v17 = sub_267EF3908();
        if (v17)
        {
          break;
        }

LABEL_30:
        MEMORY[0x26D608F90]();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        ++v16;
      }

      v18 = v17;
      v19 = sub_267EF39E8();
      v21 = v20;
      v22 = v36;
      v23 = sub_267E2F020(v19, v20, v36);
      v25 = v24;
      v38[0] = v19;
      v38[1] = v21;
      MEMORY[0x28223BE20](v23);
      v30[2] = v38;
      v26 = sub_267DF0CE0(sub_267E2F0D8, v30, v22);
      v28 = v27;

      if (v25)
      {
        v3 = v32;
        if ((v28 & 1) == 0)
        {
LABEL_28:

          goto LABEL_29;
        }
      }

      else
      {
        v3 = v32;
        if ((v28 & 1) != 0 || v23 != v26)
        {
          goto LABEL_28;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v29 = swift_allocObject();
      *(v29 + 16) = v31;
      *(v29 + 32) = v18;

      sub_267EF3918();
      sub_267EF3928();
      swift_allocObject();
      sub_267EF38C8();

LABEL_29:
      v4 = v33;
      v2 = v34;
      goto LABEL_30;
    }

    if (v4)
    {
      MEMORY[0x26D609870](v6, v2);
    }

    else
    {
      if (v6 >= *(v37 + 16))
      {
        goto LABEL_36;
      }
    }

    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (sub_267EF3908())
    {
      v8 = sub_267EF39E8();
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v36 = v14;
      }

      v11 = *(v36 + 16);
      if (v11 >= *(v36 + 24) >> 1)
      {
        sub_267BF4EE8();
        v36 = v15;
      }

      v12 = v36;
      *(v36 + 16) = v11 + 1;
      v13 = v12 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v6 = v7;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_267E2F020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_267EF9EA8() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_267E2F0F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8B8, &qword_267F0B8A8);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_26();
  type metadata accessor for UnsendMessagesRCHFlowStrategy(0);
  sub_267BC1DB4(&qword_28022C8C0, type metadata accessor for UnsendMessagesRCHFlowStrategy, &unk_267F0D820);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_30_30();
  sub_267EF3EC8();
  v2 = OUTLINED_FUNCTION_29_27();
  v3(v2);
  return v0;
}

uint64_t sub_267E2F218()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8A8, &qword_267F0B8A0);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_26();
  type metadata accessor for EditMessageRCHFlowStrategy(0);
  sub_267BC1DB4(&qword_28022C8B0, type metadata accessor for EditMessageRCHFlowStrategy, &unk_267F09AC0);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_30_30();
  sub_267EF3EC8();
  v2 = OUTLINED_FUNCTION_29_27();
  v3(v2);
  return v0;
}

uint64_t sub_267E2F338()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8A0, &qword_267F0B898);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_26();
  type metadata accessor for SendMessageRCHFlowStrategy(0);
  OUTLINED_FUNCTION_19_36();
  sub_267BC1DB4(v2, v3, &unk_267F025A0);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_30_30();
  sub_267EF3EC8();
  v4 = OUTLINED_FUNCTION_29_27();
  v5(v4);
  return v0;
}

uint64_t sub_267E2F448(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C890, &qword_267F0B868);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[1] = a1;
  type metadata accessor for SearchForMessagesRCHFlowStrategy(0);
  sub_267BC1DB4(&qword_28022A658, type metadata accessor for SearchForMessagesRCHFlowStrategy, &unk_267F01320);

  sub_267EF3EE8();
  v7 = sub_267EF3EC8();
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_267E2F5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C890, &qword_267F0B868);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v10[1] = a1;
  type metadata accessor for SearchForMessagesRCHFlowStrategy(0);
  sub_267BC1DB4(&qword_28022A658, type metadata accessor for SearchForMessagesRCHFlowStrategy, &unk_267F01320);

  sub_267EF3EE8();
  v8 = sub_267EF3ED8();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_267E2F720(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  OUTLINED_FUNCTION_18(v5);
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_26();
  sub_267EF93F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_46_19();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = &unk_267F0B888;
  v11[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267E2F818()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BBFC38();
}

uint64_t sub_267E2F8B4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E2F998()
{
  OUTLINED_FUNCTION_56();
  sub_267BBF344(v0 + 160);
  OUTLINED_FUNCTION_10_40();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E2FA1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E2FB00()
{
  OUTLINED_FUNCTION_56();
  sub_267BBF344(v0 + 112);
  OUTLINED_FUNCTION_10_40();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E2FB84()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E2FC68()
{
  OUTLINED_FUNCTION_56();
  (*(v0 + 960))(*(v0 + 904), *(v0 + 872));
  sub_267BBF344(v0 + 16);
  OUTLINED_FUNCTION_10_40();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E2FD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*(a1 + 8) == 1)
  {
    v10 = v9;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_267B93000, v12, v13, "#SearchForMessagesFlow request check failed", v14, 2u);
      MEMORY[0x26D60A7B0](v14, -1, -1);
    }
  }

  else
  {
    if (!v9)
    {
      sub_267B9AFEC(a3, v8);
      v8[40] = 0;
      goto LABEL_14;
    }

    v15 = v9;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v12 = sub_267EF89F8();
    v17 = sub_267EF95C8();
    if (os_log_type_enabled(v12, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_267B93000, v12, v17, "#SearchForMessagesFlow request is not supported", v18, 2u);
      MEMORY[0x26D60A7B0](v18, -1, -1);
    }
  }

  *v8 = v9;
LABEL_14:
  swift_storeEnumTagMultiPayload();
  v19 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v8, a2 + v19);
  return swift_endAccess();
}

uint64_t sub_267E2FFA0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchForMessagesFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  OUTLINED_FUNCTION_58();
  v10 = v9;
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_26();
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_83(v1 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, v18);
  sub_267BC0ABC(v1 + v12, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 4u:
      *a1 = *v7;
      *(a1 + 8) = 0;
      goto LABEL_7;
    case 6u:
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C898, &unk_267F0B870);
      v13 = *(v10 + 32);
      v13(v2, &v7[*(v14 + 48)], v8);
      sub_267BBF344(v7);
      goto LABEL_5;
    case 7u:
      v13 = *(v10 + 32);
      v13(v2, v7, v8);
LABEL_5:
      result = (v13)(a1, v2, v8);
      break;
    case 8u:
      *a1 = *v7;
      *(a1 + 8) = 1;
LABEL_7:
      result = (*(v10 + 104))(a1, *MEMORY[0x277D5BC98], v8);
      break;
    default:
      sub_267C4BE60();
      v16 = swift_allocError();
      *v17 = 0;
      v17[1] = 0;
      *a1 = v16;
      *(a1 + 8) = 0;
      (*(v10 + 104))(a1, *MEMORY[0x277D5BC98], v8);
      result = sub_267B9F658(v7);
      break;
  }

  return result;
}

uint64_t sub_267E301F8(uint64_t a1)
{
  type metadata accessor for SearchForMessagesFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_52_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229218, &unk_267EFCBA0);
  v5 = sub_267EF3488();
  OUTLINED_FUNCTION_30_0(v5);
  *(swift_allocObject() + 16) = xmmword_267EFC020;
  sub_267EF3468();
  v6 = sub_267EF2F28();

  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_66_3(v1 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, &v11);
  sub_267B9FF94(v2, v1 + v7);
  swift_endAccess();
  v13 = v6;
  sub_267BBF30C(a1, &v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v9 = v12[0];
  *(v8 + 24) = v11;
  *(v8 + 40) = v9;
  *(v8 + 49) = *(v12 + 9);
  sub_267EF3428();

  sub_267EF3FC8();
}

uint64_t sub_267E303E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, "#SearchForMessagesFlow RCHFlow completed", v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C898, &unk_267F0B870) + 48);
  sub_267BBF30C(a3, v8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  (*(*(v14 - 8) + 16))(&v8[v13], a1, v14);
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v8, a2 + v15);
  return swift_endAccess();
}

uint64_t sub_267E305D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_267EF4A58();
  type metadata accessor for SearchForMessagesAppResolutionOnDeviceFlowStrategy();
  swift_allocObject();
  *&v20[0] = sub_267CDAF98(a3, v9, &off_2878D7FB0);
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267BA9F38(0, &qword_280229680, 0x277CD4050);
  sub_267BC1DB4(&qword_28022A900, type metadata accessor for SearchForMessagesAppResolutionOnDeviceFlowStrategy, &unk_267F02288);
  v10 = a3;
  v11 = sub_267EF3578();

  v11(a1, a2, v10, a4);
  sub_267B9AFEC(a5 + 16, v20);
  type metadata accessor for SiriKitFlowFactoryImpl();
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v12 = swift_allocObject();
  v13 = v10;

  *&v20[0] = sub_267E33E70(v14, v13, v20, v18, v12);
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow(0);
  sub_267BC1DB4(&qword_28022A058, type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow, &unk_267F000F8);
  v15 = sub_267EF36F8();

  return v15;
}

uint64_t sub_267E30808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229690, &unk_267F03B30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  sub_267B9AFEC(a3 + 16, v20);
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(qword_2802405A0, v19);
  type metadata accessor for CommonTemplateProvider();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  v13 = sub_267E34134(v20, v12);
  __swift_destroy_boxed_opaque_existential_0(v19);
  *&v20[0] = v13;
  type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  sub_267BC1DB4(&qword_28022C880, type metadata accessor for SearchForMessageHandleIntentFlowStrategy, &unk_267F03AB8);
  v14 = sub_267EF3558();
  v16 = v15;

  (*(v9 + 16))(v11, a2, v8);
  sub_267B9AFEC(a3 + 16, v20);
  type metadata accessor for SearchForMessagesHandleIntentFlow(0);
  swift_allocObject();

  *&v20[0] = sub_267C4AF2C(a1, v11, v20, a4, v14, v16);
  sub_267BC1DB4(&qword_280229688, type metadata accessor for SearchForMessagesHandleIntentFlow, &unk_267EFDEE8);
  v17 = sub_267EF36F8();

  return v17;
}

uint64_t sub_267E30AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v70 = a1;
  v69 = sub_267EF68A8();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v64 - v6;
  v8 = sub_267EF44C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v71 = a2;
  sub_267EF4938();
  v15 = sub_267EF44B8();
  v17 = v16;
  v18 = *(v9 + 8);
  v18(v14, v8);
  v19 = v15 == 0x6E65697069636572 && v17 == 0xE900000000000074;
  v65 = v7;
  if (v19 || (sub_267EF9EA8() & 1) != 0 || (v15 == 0x7265646E6573 ? (v20 = v17 == 0xE600000000000000) : (v20 = 0), v20 || (sub_267EF9EA8() & 1) != 0))
  {

    sub_267B9AFEC(v66 + 16, &v83);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v21);
    if (qword_2802286F0 != -1)
    {
      swift_once();
    }

    sub_267B9AFEC(qword_2802405A0, v81);
    v22 = sub_267EF3AA8();
    sub_267EF8938();
    v23 = sub_267EF8928();

    v24 = v67;
    sub_267EF6898();
    __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
    v79 = &type metadata for CATProvider;
    v80 = &off_2878CE7A0;
    v76 = &type metadata for MessagesFeatureFlagsImpl;
    v77 = off_2878D1228;
    v25 = v69;
    v73 = v69;
    v74 = &off_2878D54D8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v72);
    v27 = v68;
    (*(v68 + 16))(boxed_opaque_existential_0, v24, v25);
    type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy(0);
    v28 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    MEMORY[0x28223BE20](v29);
    v31 = &v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    v33 = sub_267E34278(&v83, v65, v22, &off_2878D5360, v23, v31, v28);

    (*(v27 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v72);
    __swift_destroy_boxed_opaque_existential_0(v75);
    __swift_destroy_boxed_opaque_existential_0(v78);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v83 = v33;
    v34 = &unk_28022C878;
    v35 = type metadata accessor for SearchForMessagesContactNeedsDisambiguationFlowStrategy;
    v36 = &unk_267F01D60;
    goto LABEL_14;
  }

  if (v15 == 0xD000000000000012 && 0x8000000267F0FD90 == v17)
  {
    goto LABEL_25;
  }

  v41 = sub_267EF9EA8();

  if ((v41 & 1) == 0)
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000040, 0x8000000267F1B9E0);
    sub_267EF4938();
    v42 = sub_267EF44B8();
    v44 = v43;
    v18(v12, v8);
    MEMORY[0x26D608E60](v42, v44);

    v46 = v83;
    v45 = v84;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v47 = sub_267EF8A08();
    __swift_project_value_buffer(v47, qword_280240FB0);

    v48 = sub_267EF89F8();
    v49 = sub_267EF95E8();

    if (os_log_type_enabled(v48, v49))
    {
      v7 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v83 = v50;
      *v7 = 136315138;
      *(v7 + 4) = sub_267BA33E8(v46, v45, &v83);
      _os_log_impl(&dword_267B93000, v48, v49, "Fatal error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x26D60A7B0](v50, -1, -1);
      MEMORY[0x26D60A7B0](v7, -1, -1);
    }

    sub_267EF9C98();
    __break(1u);
LABEL_25:
  }

  sub_267B9AFEC(v66 + 16, &v83);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v51);
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  sub_267B9AFEC(qword_2802405A0, v81);
  v52 = sub_267EF3AA8();
  sub_267EF8938();
  v53 = sub_267EF8928();

  v54 = v67;
  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v79 = &type metadata for CATProvider;
  v80 = &off_2878CE7A0;
  v76 = &type metadata for MessagesFeatureFlagsImpl;
  v77 = off_2878D1228;
  v55 = v69;
  v73 = v69;
  v74 = &off_2878D54D8;
  v56 = __swift_allocate_boxed_opaque_existential_0(v72);
  v57 = v68;
  (*(v68 + 16))(v56, v54, v55);
  type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  v58 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  MEMORY[0x28223BE20](v59);
  v61 = &v64 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v62 + 16))(v61);
  v63 = sub_267E3495C(&v83, v65, v52, &off_2878D5360, v53, v61, v58);

  (*(v57 + 8))(v54, v55);
  __swift_destroy_boxed_opaque_existential_0(v72);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v78);
  __swift_destroy_boxed_opaque_existential_0(v81);
  v83 = v63;
  v34 = &unk_28022AB30;
  v35 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy;
  v36 = &unk_267F02D98;
LABEL_14:
  sub_267BC1DB4(v34, v35, v36);
  v37 = sub_267EF35B8();

  v38 = v37(v70, v71);

  return v38;
}

uint64_t sub_267E31510()
{
  OUTLINED_FUNCTION_56();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;
  v6 = *v0;
  v1[57] = v3;

  __swift_destroy_boxed_opaque_existential_0(v1 + 17);

  v4 = swift_task_alloc();
  v1[58] = v4;
  *v4 = v6;
  v4[1] = sub_267E31674;

  return sub_267E31DBC();
}

uint64_t sub_267E31674()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E31758()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  sub_267E31818();

  OUTLINED_FUNCTION_17();

  return v3();
}

void sub_267E31818()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v19 = v2;
  v20 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  type metadata accessor for SearchForMessagesFlow.State(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_0();
  v13 = v12 - v11;
  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  OUTLINED_FUNCTION_66_3(v1 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state, &v21);
  sub_267B9FF94(v13, v1 + v14);
  swift_endAccess();
  sub_267BC1DB4(&qword_28022C820, type metadata accessor for SearchForMessagesFlowSource, &unk_267F04E04);
  sub_267BC1DB4(&qword_28022C828, type metadata accessor for SearchForMessagesFlowSource, &unk_267F04DAC);
  v15 = sub_267EF34B8();
  OUTLINED_FUNCTION_97(v15);
  OUTLINED_FUNCTION_43();
  swift_retain_n();
  v21 = sub_267EF34A8();
  (*(v6 + 16))(v9, v19, v4);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v6 + 32))(v17 + v16, v9, v4);

  sub_267EF3FC8();

  OUTLINED_FUNCTION_47();
}

uint64_t sub_267E31A84(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchForMessagesFlow.State(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  if (*a1)
  {
    v10 = v9;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v11 = sub_267EF8A08();
    __swift_project_value_buffer(v11, qword_280240FB0);
    v12 = v9;
    v13 = sub_267EF89F8();
    v14 = sub_267EF95E8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v9;
      v29[0] = v16;
      *v15 = 136315138;
      v17 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
      v18 = sub_267EF9098();
      v20 = sub_267BA33E8(v18, v19, v29);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_267B93000, v13, v14, "#SearchForMessagesFlow reading flow failed: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D60A7B0](v16, -1, -1);
      MEMORY[0x26D60A7B0](v15, -1, -1);
    }

    *v8 = v9;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v21 = sub_267EF8A08();
    __swift_project_value_buffer(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_267B93000, v22, v23, "#SearchForMessagesFlow reading flow successfully completed", v24, 2u);
      MEMORY[0x26D60A7B0](v24, -1, -1);
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
    (*(*(v25 - 8) + 16))(v8, a3, v25);
  }

  swift_storeEnumTagMultiPayload();
  v26 = OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state;
  swift_beginAccess();
  sub_267B9FF94(v8, a2 + v26);
  return swift_endAccess();
}

uint64_t sub_267E31DBC()
{
  *(v1 + 104) = v0;
  v2 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267E31DE4()
{
  v1 = v0[13];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = OUTLINED_FUNCTION_43();
  v4(v3, v2);
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_43();
  v5 = sub_267EF3BC8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v5)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
    v7 = sub_267EF89F8();
    v8 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v8))
    {
      v9 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v9);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_17();

    return v15();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v17 = sub_267EF8A08();
    v0[14] = __swift_project_value_buffer(v17, qword_280240FB0);
    v18 = sub_267EF89F8();
    v19 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v19))
    {
      v20 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v20);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v21, v22, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_26();
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D477D8]) init];
    v0[15] = v26;
    [v26 setTextToSpeechIsMuted_];
    OUTLINED_FUNCTION_76_12(v1 + 2);
    v27 = OUTLINED_FUNCTION_7_1();
    v28(v27);
    v29 = v0[11];
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v30 = swift_task_alloc();
    v0[16] = v30;
    sub_267BA9F38(0, &qword_28022A320, 0x277D471B0);
    *v30 = v0;
    v30[1] = sub_267E32090;
    v31 = OUTLINED_FUNCTION_61_0();

    return MEMORY[0x2821BB6A0](v31, v32, v33, v29);
  }
}

uint64_t sub_267E32090()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_267E32248;
  }

  else
  {

    v7 = sub_267E3219C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_267E3219C()
{
  OUTLINED_FUNCTION_56();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = sub_267EF89F8();
  v2 = sub_267EF95C8();
  v3 = OUTLINED_FUNCTION_10_2(v2);
  v4 = *(v0 + 120);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v5);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267E32248()
{
  v23 = v0;
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v4 = v3;
  v5 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    v6 = v0[17];
    v7 = v0[15];
    OUTLINED_FUNCTION_48();
    v8 = OUTLINED_FUNCTION_55_0();
    v22 = v8;
    *v1 = 136315138;
    v0[12] = v6;
    v9 = v6;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v11 = OUTLINED_FUNCTION_110_1(v10);
    sub_267BA33E8(v11, v12, &v22);
    OUTLINED_FUNCTION_79();
    *(v1 + 4) = v2;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v18 = v0[17];
    v19 = v0[15];
  }

  OUTLINED_FUNCTION_17();

  return v20();
}

uint64_t sub_267E323A8()
{
  sub_267B9F658(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_siriKitFlowFactory));
  sub_267B9F98C(v0 + OBJC_IVAR____TtC16SiriMessagesFlow21SearchForMessagesFlow_smsIntent, &unk_28022BBF0, &unk_267F01C60);
}

uint64_t sub_267E32420(uint64_t a1)
{
  result = type metadata accessor for SearchForMessagesFlow.State(319);
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

unint64_t sub_267E324D0(uint64_t a1)
{
  v1 = sub_267C1B358();
  if (v2 <= 0x3F)
  {
    sub_267E3257C(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_267E325F0(319);
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_267E3257C(uint64_t a1)
{
  if (!qword_28022C808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022C810, &qword_267F0B718);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022C808);
    }
  }
}

void sub_267E325F0(uint64_t a1)
{
  if (!qword_28022C818)
  {
    sub_267BA9F38(255, &qword_280229118, 0x277CD4048);
    sub_267BA9F38(255, &qword_280229680, 0x277CD4050);
    v1 = sub_267EF3E08();
    if (!v2)
    {
      atomic_store(v1, &qword_28022C818);
    }
  }
}

uint64_t sub_267E326F8(void **a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C810, &qword_267F0B718);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_267E31A84(a1, v5, v6);
}

uint64_t sub_267E32774(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - v7;
  v8 = sub_267EF7B88();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_267EF68A8();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v55[3] = &type metadata for CATProvider;
  v55[4] = &off_2878CE7A0;
  v54[3] = type metadata accessor for CommonTemplateProvider();
  v54[4] = &off_2878D2530;
  v54[0] = a2;
  sub_267B9AFEC(v54, a3 + OBJC_IVAR____TtC16SiriMessagesFlow40SearchForMessageHandleIntentFlowStrategy_commonTemplateProvider);
  v31 = a1;
  sub_267B9AFEC(a1, v53);
  sub_267B9AFEC(v55, v52);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v6);
  v29 = sub_267EF3AA8();
  v18 = sub_267EF8938();
  v19 = sub_267EF8928();
  v50 = v18;
  v51 = MEMORY[0x277D5FDD8];
  *&v49 = v19;
  sub_267EF6898();
  __swift_mutable_project_boxed_opaque_existential_1(v52, v52[3]);
  v47 = &type metadata for CATProvider;
  v48 = &off_2878CE7A0;
  v44 = &type metadata for MessagesFeatureFlagsImpl;
  v45 = off_2878D1228;
  v41 = v9;
  v42 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (*(v34 + 16))(boxed_opaque_existential_0, v11, v9);
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(a3 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v46, v47);
  *(a3 + 64) = sub_267BB4A3C();
  sub_267BB170C(v17, v15, &qword_28022A660, &unk_267F013A0);
  v30 = v15;
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) == 1)
  {
    v39[3] = v9;
    v39[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v39);
    sub_267EF6898();
    v21 = sub_267EF8928();
    v38[3] = v18;
    v38[4] = MEMORY[0x277D5FDD8];
    v38[0] = v21;
    sub_267B9AFEC(v53, v37);
    sub_267B9AFEC(v39, v36);
    sub_267B9AFEC(v38, v35);
    v22 = swift_allocObject();
    sub_267B9A5E8(v37, v22 + 16);
    sub_267B9A5E8(v36, v22 + 56);
    sub_267B9A5E8(v35, v22 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v23 = v32;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v31);
    (*(v34 + 8))(v11, v9);
    sub_267B9F98C(v17, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v55);
    __swift_destroy_boxed_opaque_existential_0(v38);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v24 = v30;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v6);
    v26 = v33;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v24, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v31);
    (*(v34 + 8))(v11, v9);
    sub_267B9F98C(v17, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v54);
    __swift_destroy_boxed_opaque_existential_0(v55);
    v23 = v32;
    v26 = v33;
    (*(v33 + 32))(v32, v30, v6);
  }

  (*(v26 + 32))(a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v23, v6);
  v27 = (a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  *v27 = v29;
  v27[1] = &off_2878D5360;
  sub_267B9A5E8(&v43, a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(&v49, a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v40, a3 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v53, a3 + 16);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v52);
  return a3;
}

void *sub_267E32D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v18 - v5);
  v7 = sub_267EF7B88();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_267BC1DB4(&unk_28022BC80, type metadata accessor for ConversationActionGroup, &unk_267F0D600);
  v9 = sub_267BE6C54(a1);
  v10 = qword_2802286F0;

  if (v10 != -1)
  {
    swift_once();
  }

  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  v11 = sub_267EF78E8();
  type metadata accessor for DeviceOfflineNotificationAction();
  swift_allocObject();
  v12 = sub_267CD2414(a1, v11);
  v13 = sub_267BC1DB4(&qword_28022A868, type metadata accessor for DeviceOfflineNotificationAction, &unk_267F01E90);
  v9[3] = v12;
  v9[4] = v13;
  swift_unknownObjectRelease();
  *v6 = a2;
  v6[1] = v8;
  v14 = *MEMORY[0x277D5BF58];
  v15 = sub_267EF4548();
  (*(*(v15 - 8) + 104))(v6, v14, v15);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v15);
  v16 = OBJC_IVAR____TtC16SiriMessagesFlow25MessageReadingActionGroup_staticTransition;
  swift_beginAccess();
  sub_267C13844(v6, v9 + v16);
  swift_endAccess();

  return v9;
}

uint64_t sub_267E3302C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267E3312C()
{
  v68 = v1;
  OUTLINED_FUNCTION_59_16();
  sub_267BE43E8(1);
  if (!v0)
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v23))
    {
      v24 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v24);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_26();
    }

    v30 = v1[98];

    v31 = sub_267E2D6E4(v30);
    if (v31)
    {
      v32 = v31;
      if (sub_267BAF0DC(v31))
      {
        OUTLINED_FUNCTION_1_9();
        if (v30)
        {
          v33 = MEMORY[0x26D609870](0, v32);
        }

        else
        {
          v33 = *(v32 + 32);
        }

        v34 = v33;

        goto LABEL_25;
      }
    }

    v34 = 0;
LABEL_25:
    v64 = v1[109];
    v65 = v1[99];
    v42 = v1[98];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229B10, &qword_267EFEFB0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_267EFC020;
    [v42 attributes];
    sub_267EF7958();
    v63 = v34;

    sub_267E80518(v44);
    type metadata accessor for ReadingSummaryAction();
    memset(v66, 0, sizeof(v66));
    v67 = 0;
    swift_allocObject();

    v51 = OUTLINED_FUNCTION_49_21(v45, v46, v47, v48, v49, v50, v66);
    OUTLINED_FUNCTION_23_25();
    v54 = sub_267BC1DB4(v52, v53, &unk_267F09CD0);
    *(v43 + 32) = v51;
    *(v43 + 40) = v54;
    sub_267EF4548();
    OUTLINED_FUNCTION_78();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    v59 = sub_267EF4338();
    OUTLINED_FUNCTION_97(v59);
    OUTLINED_FUNCTION_50_15();

    OUTLINED_FUNCTION_22_28();
    v37 = MEMORY[0x277D5BDC8];
    goto LABEL_26;
  }

  v5 = sub_267BE6268();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v6 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);
  v7 = sub_267EF89F8();
  v8 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v9[1] = v5 & 1;
    OUTLINED_FUNCTION_70_11(&dword_267B93000, v10, v11, "#SearchForMessagesFlowSource Initial group is summary? %{BOOL}d");
    OUTLINED_FUNCTION_29_1();
  }

  sub_267BE4AD0(v12);
  v13 = type metadata accessor for ConversationActionGroup(0);
  OUTLINED_FUNCTION_97(v13);

  v14 = OUTLINED_FUNCTION_66();
  v16 = sub_267BE6480(v14, v15, 1, 1);
  if (v5)
  {
    if (*(v1[111] + 408))
    {
      v17 = sub_267BF42CC(v16);

      if (v17 != 1)
      {
        v18 = type metadata accessor for DeviceOfflineNotificationActionGroup(0);
        OUTLINED_FUNCTION_97(v18);

        v19 = OUTLINED_FUNCTION_66();
        sub_267E32D98(v19, v20);
LABEL_22:
        v38 = OUTLINED_FUNCTION_48_25();
        OUTLINED_FUNCTION_97(v38);
        OUTLINED_FUNCTION_72_13();

        OUTLINED_FUNCTION_77_8();

        OUTLINED_FUNCTION_24_30();
        v41 = sub_267BC1DB4(v39, v40, &unk_267F0D600);
        goto LABEL_27;
      }
    }

    else
    {
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_77_8();

  OUTLINED_FUNCTION_18_33();
  v37 = &unk_267F0D600;
LABEL_26:
  v41 = sub_267BC1DB4(v35, v36, v37);
LABEL_27:
  OUTLINED_FUNCTION_44_22(v41);

  v60 = v1[1];
  v61 = v1[103];

  return v60(v61);
}

uint64_t sub_267E335F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a3;
  v49 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v47 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v40 - v12;
  v13 = sub_267EF7B88();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v42 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v73 = sub_267EF8938();
  v74 = MEMORY[0x277D5FDD8];
  v41 = v73;
  v72[0] = a5;
  v71[3] = &type metadata for CATProvider;
  v71[4] = &off_2878CE7A0;
  v70[3] = &type metadata for MessagesFeatureFlagsImpl;
  v70[4] = off_2878D1228;
  v19 = sub_267EF68A8();
  v69[3] = v19;
  v69[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v69);
  v21 = *(*(v19 - 8) + 32);
  v21(boxed_opaque_existential_0, a6, v19);
  v22 = OBJC_IVAR____TtC16SiriMessagesFlow45SearchForMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  v23 = sub_267EF44F8();
  __swift_storeEnumTagSinglePayload(a7 + v22, 1, 1, v23);
  v45 = a1;
  sub_267B9AFEC(a1, v68);
  sub_267B9AFEC(v71, v67);
  sub_267B9AFEC(v70, v66);
  v44 = a2;
  sub_267BB170C(a2, v18, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v72, v65);
  sub_267B9AFEC(v69, v64);
  __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v66, v66[3]);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v64, v64[3]);
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v62 = &type metadata for CATProvider;
  v63 = &off_2878CE7A0;
  v59 = &type metadata for MessagesFeatureFlagsImpl;
  v60 = off_2878D1228;
  v56 = v19;
  v57 = &off_2878D54D8;
  v28 = __swift_allocate_boxed_opaque_existential_0(&v55);
  v21(v28, v26, v19);
  v30 = v42;
  v29 = v43;
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(a7 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v61, v62);
  *(a7 + 64) = sub_267BB4A3C();
  sub_267BB170C(v18, v30, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
  {
    v54[3] = v19;
    v54[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v54);
    sub_267EF6898();
    v31 = v41;
    v32 = sub_267EF8928();
    v53[3] = v31;
    v53[4] = MEMORY[0x277D5FDD8];
    v53[0] = v32;
    sub_267B9AFEC(v68, v52);
    sub_267B9AFEC(v54, v51);
    sub_267B9AFEC(v53, v50);
    v33 = swift_allocObject();
    sub_267B9A5E8(v52, v33 + 16);
    sub_267B9A5E8(v51, v33 + 56);
    sub_267B9A5E8(v50, v33 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v34 = v46;
    sub_267EF7058();
    sub_267B9F98C(v44, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_267B9F98C(v18, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v72);
    __swift_destroy_boxed_opaque_existential_0(v69);
    __swift_destroy_boxed_opaque_existential_0(v70);
    __swift_destroy_boxed_opaque_existential_0(v71);
    __swift_destroy_boxed_opaque_existential_0(v53);
    __swift_destroy_boxed_opaque_existential_0(v54);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v29);
    v36 = v47;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v30, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    sub_267B9F98C(v44, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v45);
    sub_267B9F98C(v18, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v72);
    __swift_destroy_boxed_opaque_existential_0(v69);
    __swift_destroy_boxed_opaque_existential_0(v70);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v34 = v46;
    v36 = v47;
    (*(v47 + 32))(v46, v30, v29);
  }

  (*(v36 + 32))(a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v34, v29);
  v37 = (a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v38 = v49;
  *v37 = v48;
  v37[1] = v38;
  sub_267B9A5E8(&v58, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v65, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v55, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v68, a7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v64);
  __swift_destroy_boxed_opaque_existential_0(v66);
  __swift_destroy_boxed_opaque_existential_0(v67);
  return a7;
}

uint64_t sub_267E33CE4(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = sub_267EF7B88();
  MEMORY[0x28223BE20](v8 - 8);
  v17[3] = &type metadata for CATProvider;
  v17[4] = &off_2878CE7A0;
  type metadata accessor for ReportMessageCountFlow();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v17, &type metadata for CATProvider);
  v15 = &type metadata for CATProvider;
  v16 = &off_2878CE7A0;
  *(v9 + 112) = 0;
  *(v9 + 56) = 0;
  sub_267C4BE60();
  v10 = swift_allocError();
  *v11 = 0;
  v11[1] = 0;
  *(v9 + 136) = v10;
  *(v9 + 144) = 1;
  sub_267B9AFEC(a1, v9 + 64);
  *(v9 + 104) = a2;
  *(v9 + 112) = a3;
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(v9 + 120) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v14, v15);
  v12 = sub_267BB4A3C();
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v9 + 128) = v12;
  sub_267B9A5E8(a4, v9 + 16);
  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v9;
}

uint64_t sub_267E33E70(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SiriKitFlowFactoryImpl();
  v34[3] = v10;
  v34[4] = &off_2878CFE90;
  v34[0] = a5;
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow(0);
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v34, v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v32 = v10;
  v33 = &off_2878CFE90;
  *&v31 = v16;
  *(v11 + 56) = a2;
  sub_267BB170C(a4, &v26, &qword_28022C888, &qword_267F0B860);
  if (v27)
  {
    sub_267B9F98C(a4, &qword_28022C888, &qword_267F0B860);
    sub_267B9A5E8(&v26, &v28);
  }

  else
  {
    v17 = *(a3 + 3);
    v18 = *(a3 + 4);
    __swift_project_boxed_opaque_existential_0(a3, v17);
    v19 = *(v18 + 8);
    v29 = &type metadata for SearchForMessagesAuthenticationHandler;
    v30 = &off_2878D7F40;
    v20 = swift_allocObject();
    *&v28 = v20;
    v19(v17, v18);
    v21 = *(a3 + 3);
    v22 = *(a3 + 4);
    __swift_project_boxed_opaque_existential_0(a3, v21);
    (*(v22 + 16))(v21, v22);
    v23 = [objc_allocWithZone(MEMORY[0x277CEF258]) init];
    sub_267B9F98C(a4, &qword_28022C888, &qword_267F0B860);
    *(v20 + 96) = v23;
    if (v27)
    {
      sub_267B9F98C(&v26, &qword_28022C888, &qword_267F0B860);
    }
  }

  sub_267B9A5E8(&v28, v11 + 64);
  sub_267B9A5E8(&v31, v11 + 104);
  *(v11 + OBJC_IVAR____TtC16SiriMessagesFlow48SearchForMessagesAppResolutionAndPreRCHCheckFlow_state) = a1;
  type metadata accessor for SearchForMessagesAppResolutionAndPreRCHCheckFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8(a3, v11 + 16);
  __swift_destroy_boxed_opaque_existential_0(v34);
  return v11;
}

uint64_t sub_267E34134(void *a1, uint64_t a2)
{
  v14[3] = &type metadata for CATProvider;
  v14[4] = &off_2878CE7A0;
  v12 = type metadata accessor for CommonTemplateProvider();
  v13 = &off_2878D2530;
  v11[0] = a2;
  type metadata accessor for SearchForMessageHandleIntentFlowStrategy(0);
  v4 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for CATProvider);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x28223BE20](v5);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_267E32774(a1, *v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v9;
}

uint64_t sub_267E34278(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v40 = a6;
  v43 = a3;
  v44 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v37 - v11;
  v12 = sub_267EF7B88();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v68 = sub_267EF8938();
  v69 = MEMORY[0x277D5FDD8];
  v37 = v68;
  v67[0] = a5;
  v66[3] = &type metadata for CATProvider;
  v66[4] = &off_2878CE7A0;
  v65[3] = &type metadata for MessagesFeatureFlagsImpl;
  v65[4] = off_2878D1228;
  v19 = sub_267EF68A8();
  v64[3] = v19;
  v64[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  v21 = *(*(v19 - 8) + 32);
  v21(boxed_opaque_existential_0, v40, v19);
  *(a7 + OBJC_IVAR____TtC16SiriMessagesFlow55SearchForMessagesContactNeedsDisambiguationFlowStrategy_selectedPersons) = MEMORY[0x277D84F90];
  v40 = a1;
  sub_267B9AFEC(a1, v63);
  sub_267B9AFEC(v66, v62);
  sub_267B9AFEC(v65, v61);
  v39 = a2;
  sub_267BB170C(a2, v18, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v67, v60);
  sub_267B9AFEC(v64, v59);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v57 = &type metadata for CATProvider;
  v58 = &off_2878CE7A0;
  v54 = &type metadata for MessagesFeatureFlagsImpl;
  v55 = off_2878D1228;
  v51 = v19;
  v52 = &off_2878D54D8;
  v26 = __swift_allocate_boxed_opaque_existential_0(&v50);
  v21(v26, v24, v19);
  v27 = v38;
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(a7 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v56, v57);
  *(a7 + 64) = sub_267BB4A3C();
  sub_267BB170C(v18, v16, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v27) == 1)
  {
    v49[3] = v19;
    v49[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v49);
    sub_267EF6898();
    v28 = v37;
    v29 = sub_267EF8928();
    v48[3] = v28;
    v48[4] = MEMORY[0x277D5FDD8];
    v48[0] = v29;
    sub_267B9AFEC(v63, v47);
    sub_267B9AFEC(v49, v46);
    sub_267B9AFEC(v48, v45);
    v30 = swift_allocObject();
    sub_267B9A5E8(v47, v30 + 16);
    sub_267B9A5E8(v46, v30 + 56);
    sub_267B9A5E8(v45, v30 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v31 = v41;
    sub_267EF7058();
    sub_267B9F98C(v39, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_267B9F98C(v18, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v64);
    __swift_destroy_boxed_opaque_existential_0(v65);
    __swift_destroy_boxed_opaque_existential_0(v66);
    __swift_destroy_boxed_opaque_existential_0(v48);
    __swift_destroy_boxed_opaque_existential_0(v49);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v27);
    v33 = v42;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v16, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    sub_267B9F98C(v39, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_267B9F98C(v18, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v64);
    __swift_destroy_boxed_opaque_existential_0(v65);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v31 = v41;
    v33 = v42;
    (*(v42 + 32))(v41, v16, v27);
  }

  (*(v33 + 32))(a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v31, v27);
  v34 = (a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v35 = v44;
  *v34 = v43;
  v34[1] = v35;
  sub_267B9A5E8(&v53, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v60, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v50, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v63, a7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v62);
  return a7;
}

uint64_t sub_267E3495C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v40 = a6;
  v43 = a3;
  v44 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295F0, &unk_267F0B840);
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v37 - v11;
  v12 = sub_267EF7B88();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A660, &unk_267F013A0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  v68 = sub_267EF8938();
  v69 = MEMORY[0x277D5FDD8];
  v37 = v68;
  v67[0] = a5;
  v66[3] = &type metadata for CATProvider;
  v66[4] = &off_2878CE7A0;
  v65[3] = &type metadata for MessagesFeatureFlagsImpl;
  v65[4] = off_2878D1228;
  v19 = sub_267EF68A8();
  v64[3] = v19;
  v64[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
  v21 = *(*(v19 - 8) + 32);
  v21(boxed_opaque_existential_0, v40, v19);
  *(a7 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_selectedGroupName) = 0;
  *(a7 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = 0;
  v40 = a1;
  sub_267B9AFEC(a1, v63);
  sub_267B9AFEC(v66, v62);
  sub_267B9AFEC(v65, v61);
  v39 = a2;
  sub_267BB170C(a2, v18, &qword_28022A660, &unk_267F013A0);
  sub_267B9AFEC(v67, v60);
  sub_267B9AFEC(v64, v59);
  __swift_mutable_project_boxed_opaque_existential_1(v62, v62[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v61, v61[3]);
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v59, v59[3]);
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  v57 = &type metadata for CATProvider;
  v58 = &off_2878CE7A0;
  v54 = &type metadata for MessagesFeatureFlagsImpl;
  v55 = off_2878D1228;
  v51 = v19;
  v52 = &off_2878D54D8;
  v26 = __swift_allocate_boxed_opaque_existential_0(&v50);
  v21(v26, v24, v19);
  v27 = v38;
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  *(a7 + 56) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v56, v57);
  *(a7 + 64) = sub_267BB4A3C();
  sub_267BB170C(v18, v16, &qword_28022A660, &unk_267F013A0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v27) == 1)
  {
    v49[3] = v19;
    v49[4] = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v49);
    sub_267EF6898();
    v28 = v37;
    v29 = sub_267EF8928();
    v48[3] = v28;
    v48[4] = MEMORY[0x277D5FDD8];
    v48[0] = v29;
    sub_267B9AFEC(v63, v47);
    sub_267B9AFEC(v49, v46);
    sub_267B9AFEC(v48, v45);
    v30 = swift_allocObject();
    sub_267B9A5E8(v47, v30 + 16);
    sub_267B9A5E8(v46, v30 + 56);
    sub_267B9A5E8(v45, v30 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v31 = v41;
    sub_267EF7058();
    sub_267B9F98C(v39, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_267B9F98C(v18, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v64);
    __swift_destroy_boxed_opaque_existential_0(v65);
    __swift_destroy_boxed_opaque_existential_0(v66);
    __swift_destroy_boxed_opaque_existential_0(v48);
    __swift_destroy_boxed_opaque_existential_0(v49);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v27);
    v33 = v42;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v16, &qword_28022A660, &unk_267F013A0);
    }
  }

  else
  {
    sub_267B9F98C(v39, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v40);
    sub_267B9F98C(v18, &qword_28022A660, &unk_267F013A0);
    __swift_destroy_boxed_opaque_existential_0(v67);
    __swift_destroy_boxed_opaque_existential_0(v64);
    __swift_destroy_boxed_opaque_existential_0(v65);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v31 = v41;
    v33 = v42;
    (*(v42 + 32))(v41, v16, v27);
  }

  (*(v33 + 32))(a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_transformer, v31, v27);
  v34 = (a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_disambiguationSnippetProvider);
  v35 = v44;
  *v34 = v43;
  v34[1] = v35;
  sub_267B9A5E8(&v53, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_featureFlags);
  sub_267B9A5E8(v60, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_referenceResolver);
  sub_267B9A5E8(&v50, a7 + OBJC_IVAR____TtC16SiriMessagesFlow33SearchForMessagesBaseFlowStrategy_contactResolver);
  sub_267B9A5E8(v63, a7 + 16);
  __swift_destroy_boxed_opaque_existential_0(v56);
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v62);
  return a7;
}

uint64_t objectdestroy_50Tm()
{

  if (*(v0 + 64))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_267E350BC()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E2F818();
}

uint64_t sub_267E35168@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v3;
  v8[2] = *(v1 + 48);
  v9 = *(v1 + 64);
  a1[3] = &type metadata for AudioComponent;
  a1[4] = sub_267DB6C84();
  v4 = swift_allocObject();
  *a1 = v4;
  v5 = *(v1 + 32);
  *(v4 + 16) = *(v1 + 16);
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v1 + 48);
  *(v4 + 64) = *(v1 + 64);
  return sub_267DBC244(v8, v7);
}

uint64_t sub_267E351F8()
{
  sub_267E35168(v5);
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  v2 = *(v1 + 32);

  v2(v0, v1);
  v3 = sub_267BFB6B4();

  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t sub_267E3529C()
{
  sub_267E35168(v13);
  v0 = v14;
  v1 = v15;
  __swift_project_boxed_opaque_existential_0(v13, v14);
  v2 = *(v1 + 32);

  v2(v0, v1);
  swift_beginAccess();

  sub_267BB7A18();

  v4 = v16[0];
  v3 = v16[1];
  v5 = v17;
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v5 == 255)
  {
    return 0;
  }

  if (v5 != 1)
  {
    sub_267B9FF34(v16, &qword_280229918, &qword_267F003B0);
    return 0;
  }

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
    v13[0] = v10;
    *v9 = 136315138;
    v11 = sub_267BA33E8(v4, v3, v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_267B93000, v7, v8, "#ReadComponentAction processedContent is .differentLanguage(%s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_267E354DC()
{
  sub_267E35168(v12);
  v0 = v13;
  v1 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  v2 = *(v1 + 32);

  v2(v0, v1);
  swift_beginAccess();

  sub_267BB7A18();

  v3 = v15[0];
  v4 = v15[1];
  v5 = v16;
  __swift_destroy_boxed_opaque_existential_0(v12);
  if (v5 == 255)
  {
    return 0;
  }

  if (v5 != 1)
  {
    sub_267B9FF34(v15, &qword_280229918, &qword_267F003B0);
    return 0;
  }

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
    v12[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_267BA33E8(v3, v4, v12);
    _os_log_impl(&dword_267B93000, v7, v8, "#ReadComponentAction processedContent is .differentLanguage(%s)", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D60A7B0](v10, -1, -1);
    MEMORY[0x26D60A7B0](v9, -1, -1);
  }

  return v3;
}

uint64_t sub_267E3570C(uint64_t a1, char a2)
{
  *(v3 + 616) = v2;
  *(v3 + 936) = a2;
  *(v3 + 608) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  *(v3 + 624) = swift_task_alloc();
  v4 = sub_267EF4CC8();
  *(v3 + 632) = v4;
  *(v3 + 640) = *(v4 - 8);
  *(v3 + 648) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  *(v3 + 656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  *(v3 + 664) = swift_task_alloc();
  sub_267EF3CF8();
  *(v3 + 672) = swift_task_alloc();
  v5 = sub_267EF48A8();
  *(v3 + 680) = v5;
  *(v3 + 688) = *(v5 - 8);
  *(v3 + 696) = swift_task_alloc();
  v6 = sub_267EF2CC8();
  *(v3 + 704) = v6;
  *(v3 + 712) = *(v6 - 8);
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  *(v3 + 736) = swift_task_alloc();
  *(v3 + 744) = swift_task_alloc();
  v7 = sub_267EF6EB8();
  *(v3 + 752) = v7;
  *(v3 + 760) = *(v7 - 8);
  *(v3 + 768) = swift_task_alloc();
  v8 = sub_267EF8228();
  *(v3 + 776) = v8;
  *(v3 + 784) = *(v8 - 8);
  *(v3 + 792) = swift_task_alloc();
  v9 = sub_267EF79B8();
  *(v3 + 800) = v9;
  *(v3 + 808) = *(v9 - 8);
  *(v3 + 816) = swift_task_alloc();
  *(v3 + 824) = type metadata accessor for ReadComponentPatternCommonParameters(0);
  *(v3 + 832) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E35AF4, 0, 0);
}

uint64_t sub_267E35AF4()
{
  v57 = v0;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v1 = sub_267EF8A08();
  *(v0 + 840) = __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v56 = v5;
    *v4 = 136315138;
    sub_267E35168((v0 + 552));
    v6 = *(v0 + 576);
    __swift_project_boxed_opaque_existential_0((v0 + 552), v6);
    v7 = *(v6 - 8);
    swift_task_alloc();
    (*(v7 + 16))();
    v8 = sub_267EF90A8();
    v10 = v9;

    __swift_destroy_boxed_opaque_existential_0((v0 + 552));
    v11 = sub_267BA33E8(v8, v10, &v56);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_267B93000, v2, v3, "#ReadComponentAction Running RF patterns for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v12 = *(v0 + 616);
  v13 = *(v12 + 72);
  v14 = v13[5];
  v15 = v13[6];
  __swift_project_boxed_opaque_existential_0(v13 + 2, v14);
  v16 = *(v15 + 8);

  v16(v14, v15);

  v50 = sub_267BFA8F4((v0 + 112));
  *(v0 + 848) = v50;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 832);
  v51 = *(v0 + 816);
  v52 = *(v0 + 824);
  v53 = *(v0 + 808);
  v55 = *(v0 + 800);
  v18 = *(v0 + 784);
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v19 = sub_267BB4A3C();
  *(v0 + 856) = v19;
  sub_267E35168((v0 + 152));
  v20 = *(v12 + 72);
  type metadata accessor for MessagesDialogContext();

  v21 = v12;
  v22 = sub_267BFB110((v0 + 152), v20);
  v23 = sub_267BF4170(v20);
  v49 = sub_267BFBFBC(v22, v23);
  *(v0 + 864) = v49;

  v48 = *(v21 + 72);
  *(v0 + 872) = v48;

  sub_267BF4A24((v0 + 152), v19);
  sub_267EF90F8();

  (*(v53 + 16))(&v17[v52[5]], v51, v55);
  v24 = *(v18 + 104);
  v25 = OUTLINED_FUNCTION_5_56();
  v24(v25);
  v47 = OUTLINED_FUNCTION_7_45();
  v26 = *(v18 + 8);
  v27 = OUTLINED_FUNCTION_68_0();
  v26(v27);
  v28 = OUTLINED_FUNCTION_5_56();
  v24(v28);
  v46 = OUTLINED_FUNCTION_7_45();
  v29 = OUTLINED_FUNCTION_68_0();
  v26(v29);
  v30 = OUTLINED_FUNCTION_5_56();
  v24(v30);
  v31 = OUTLINED_FUNCTION_7_45();
  v32 = OUTLINED_FUNCTION_68_0();
  v26(v32);
  v33 = OUTLINED_FUNCTION_5_56();
  v24(v33);
  v34 = OUTLINED_FUNCTION_7_45();
  v35 = OUTLINED_FUNCTION_68_0();
  v26(v35);
  v36 = OUTLINED_FUNCTION_5_56();
  v24(v36);
  v37 = OUTLINED_FUNCTION_7_45();
  v38 = OUTLINED_FUNCTION_68_0();
  v26(v38);
  (*(v53 + 8))(v51, v55);
  *v17 = 1;
  *&v17[v52[6]] = v47;
  *&v17[v52[7]] = v46;
  *&v17[v52[8]] = v31;
  *&v17[v52[9]] = v34;
  *&v17[v52[10]] = v37;
  *(v0 + 216) = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
  *(v0 + 224) = &off_2878D3460;
  *(v0 + 192) = v50;
  v39 = *(v0 + 176);
  v40 = *(v0 + 184);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 152, v39);
  v41 = *(v40 + 72);

  v54 = (v41 + *v41);
  v42 = swift_task_alloc();
  *(v0 + 880) = v42;
  *v42 = v0;
  v42[1] = sub_267E3611C;
  v43 = *(v0 + 832);
  v44 = *(v0 + 936);

  return v54(v48, v49, v43, v44, v0 + 192, v39, v40);
}

uint64_t sub_267E3611C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  v2[111] = v4;
  v2[112] = v0;

  sub_267E39618(v2[104]);

  if (v0)
  {
    v5 = sub_267E36E10;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 24);
    v5 = sub_267E3625C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267E3625C()
{
  v101 = v0;
  v1 = *(*(*(v0 + 616) + 72) + 416);
  if (!v1 || !*(v1 + 112))
  {
    v4 = *(v0 + 896);
    goto LABEL_22;
  }

  v2 = *(*(v0 + 864) + 24);
  if (!v2 || !*(v2 + 32))
  {
    v4 = *(v0 + 896);
    goto LABEL_10;
  }

  v3 = sub_267BF4920();
  v4 = *(v0 + 896);
  if (!v3)
  {
LABEL_10:

    goto LABEL_11;
  }

  v5 = *(v0 + 768);
  v6 = *(v0 + 744);
  v7 = *(v0 + 728);
  (*(*(v0 + 760) + 104))(v5, *MEMORY[0x277D5FFB8], *(v0 + 752));
  v8 = sub_267EF6EA8();
  OUTLINED_FUNCTION_9_46(v8);

  sub_267EF2CB8();
  v9 = OUTLINED_FUNCTION_117();
  sub_267DA8A74(v9, v10, v11, v12, v5, v6, v7);
  if (v4)
  {
    v13 = *(v0 + 888);
    v96 = *(v0 + 768);
    v14 = *(v0 + 760);
    v94 = *(v0 + 744);
    v95 = *(v0 + 752);
    v93 = *(v0 + 728);
    v15 = *(v0 + 712);
    v16 = *(v0 + 704);

    (*(v15 + 8))(v93, v16);
    sub_267B9FF34(v94, &unk_28022BD40, &unk_267F003E0);
    (*(v14 + 8))(v96, v95);
LABEL_29:
    OUTLINED_FUNCTION_0_64();
    __swift_destroy_boxed_opaque_existential_0((v0 + 152));
    __swift_destroy_boxed_opaque_existential_0((v0 + 112));

    OUTLINED_FUNCTION_17();

    return v57();
  }

  v84 = *(v0 + 760);
  v98 = *(v0 + 752);
  v99 = *(v0 + 768);
  v85 = *(v0 + 744);
  v86 = *(v0 + 728);
  v87 = *(v0 + 712);
  v88 = *(v0 + 704);

  (*(v87 + 8))(v86, v88);
  sub_267B9FF34(v85, &unk_28022BD40, &unk_267F003E0);
  (*(v84 + 8))(v99, v98);
  v4 = 0;
LABEL_11:
  if ((sub_267E3794C() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_0((v0 + 152), *(v0 + 176));
  v17 = OUTLINED_FUNCTION_68_0();
  v19 = v18(v17);
  if (!sub_267BAF0DC(v19))
  {

    goto LABEL_21;
  }

  sub_267BBD0EC(0, (v19 & 0xC000000000000001) == 0, v19);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x26D609870](0, v19);
  }

  else
  {
    v20 = *(v19 + 32);
  }

  v21 = v20;

  v22 = [v21 sender];

  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = sub_267EF89F8();
  v24 = sub_267EF95D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_267B93000, v23, v24, "#ReadComponentAction First message from sender, recording", v25, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  v26 = *(v0 + 736);
  v27 = *(v0 + 720);

  v28 = sub_267EF6EA8();
  OUTLINED_FUNCTION_9_46(v28);
  sub_267EF2CB8();
  v29 = OUTLINED_FUNCTION_117();
  sub_267BD5008(v29, v30, v31, v32, v26, v27);
  if (v4)
  {
    v33 = *(v0 + 888);
    v97 = *(v0 + 736);
    v34 = *(v0 + 720);
    v35 = *(v0 + 712);
    v36 = *(v0 + 704);

    (*(v35 + 8))(v34, v36);
    sub_267B9FF34(v97, &unk_28022BD40, &unk_267F003E0);
    goto LABEL_29;
  }

  v89 = *(v0 + 736);
  v90 = *(v0 + 720);
  v91 = *(v0 + 712);
  v92 = *(v0 + 704);

  (*(v91 + 8))(v90, v92);
  sub_267B9FF34(v89, &unk_28022BD40, &unk_267F003E0);
  v4 = 0;
LABEL_22:
  v37 = *(v0 + 888);
  v38 = sub_267EF89F8();
  v39 = sub_267EF95D8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 888);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v100 = v42;
    *v41 = 136315138;
    v43 = [v40 patternId];
    v44 = sub_267EF9028();
    v46 = v45;

    v47 = sub_267BA33E8(v44, v46, &v100);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_267B93000, v38, v39, "#ReadComponentAction pattern %s successfully executed", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v48 = &type metadata for Features;
  *(v0 + 256) = &type metadata for Features;
  v49 = sub_267BAFCAC();
  *(v0 + 264) = v49;
  *(v0 + 232) = 2;
  v50 = sub_267EF5128();
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  if ((v50 & 1) == 0)
  {
    v51 = *(*(*(v0 + 616) + 72) + 426);
    v52 = sub_267E354DC();
    v54 = v53;
    ConversationEventStore.init()(v0 + 16);
    sub_267C917B0(v51, v52, v54, 0, v0 + 16, 1);

    sub_267B9EF14(v0 + 16);
  }

  v55 = MEMORY[0x277D84F90];
  *(v0 + 592) = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  if ((sub_267EF3C48() & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_267E37F40(*(v0 + 888));
  if (v4)
  {
    v56 = *(v0 + 888);

    goto LABEL_29;
  }

  v59 = v0 + 592;
  MEMORY[0x26D608F90]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    sub_267EF9368();
    v55 = *v59;
LABEL_34:
    v60 = (v0 + 600);
    *(v0 + 296) = v48;
    *(v0 + 304) = v49;
    *(v0 + 272) = 14;
    v49 = sub_267EF5128();
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));
    v61 = sub_267EF89F8();
    v62 = sub_267EF95D8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 67109120;
      *(v63 + 4) = v49 & 1;
      _os_log_impl(&dword_267B93000, v61, v62, "#ReadComponentAction multilingualMessageReading feature enabled : %{BOOL}d", v63, 8u);
      OUTLINED_FUNCTION_32_0();
    }

    if (v49 & 1) != 0 && *(*(*(v0 + 616) + 72) + 425) == 1 && (sub_267E3529C())
    {
      sub_267E37718();
      if (v64)
      {
      }
    }

    *v60 = v55;
    v59 = sub_267BAF0DC(v55);
    v48 = 0x277D47000;
    if (!v59)
    {
      break;
    }

    while (!__OFSUB__(v59--, 1))
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x26D609870](v59, v55);
      }

      else
      {
        if ((v59 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v59 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v66 = *(v55 + 32 + 8 * v59);
      }

      v67 = v66;
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      v49 = v68 == 0;

      if (v68 || !v59)
      {
        v60 = (v0 + 600);
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    sub_267EF9328();
  }

  LOBYTE(v49) = 1;
LABEL_52:
  v69 = swift_task_alloc();
  *(v69 + 16) = v60;
  v70 = sub_267C956D0(sub_267C96444, v69, v59, v49);

  if (v70)
  {
    objc_opt_self();
    v71 = swift_dynamicCastObjCClass();
    if (v71)
    {
      sub_267E382E4(v71);
    }
  }

  v72 = *(v0 + 616);
  sub_267EF3CB8();
  sub_267EF47A8();
  sub_267EF47F8();
  sub_267EF4858();
  if (!*(*(v72 + 72) + 88))
  {
    v73 = *(v0 + 664);
    v74 = *(v0 + 176);
    v75 = *(v0 + 184);
    __swift_project_boxed_opaque_existential_0((v0 + 152), v74);
    v76 = (*(v75 + 16))(v74, v75);
    v77 = sub_267C904F0(v76);

    __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
    sub_267EF3B98();
    *(v0 + 336) = &type metadata for MessagesFeatureFlagsImpl;
    *(v0 + 344) = off_2878D1228;
    sub_267BBB55C();

    __swift_destroy_boxed_opaque_existential_0((v0 + 312));
    v78 = sub_267EF4158();
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v78);
    sub_267EF4818();
  }

  sub_267EF4838();
  sub_267EF4198();
  swift_allocObject();
  *(v0 + 904) = sub_267EF4188();
  v79 = *(sub_267E351F8() + 128);
  *(v0 + 912) = v79;

  __swift_project_boxed_opaque_existential_0((v0 + 112), *(v0 + 136));
  v80 = sub_267EF3C48();
  v81 = swift_task_alloc();
  *(v0 + 920) = v81;
  *v81 = v0;
  v81[1] = sub_267E36F24;
  v82 = *(v0 + 888);
  v83 = *(v0 + 696);

  return sub_267BCF3A4(v0 + 392, v82, v83, v79, v80 & 1);
}

uint64_t sub_267E36E10()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  OUTLINED_FUNCTION_0_64();
  OUTLINED_FUNCTION_1_73();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267E36F24()
{
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 928) = v0;

  if (v0)
  {
    v4 = sub_267E375E0;
  }

  else
  {
    v4 = sub_267E3706C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_267E3706C()
{
  sub_267BE58F4((v0 + 392), v0 + 352);
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_0((v0 + 152), v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = sub_267C904F0(v3);

  if (v4)
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 656);
    v7 = objc_allocWithZone(MEMORY[0x277D47918]);
    v8 = v4;
    v9 = [v7 init];
    sub_267D60504(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = *(v0 + 712);
      v12 = *(v0 + 704);
      v13 = *(v0 + 656);
      v10 = sub_267EF2C48();
      (*(v11 + 8))(v13, v12);
    }

    [v9 setDateReadingStarted_];

    sub_267BA9F38(0, &qword_28022A098, 0x277D47B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A0A0, &unk_267F003F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_267EFCA40;
    *(v15 + 32) = v9;
    *(inited + 32) = v15;
    sub_267E7EA58(inited);
    v17 = v16;

    sub_267B9AFEC(v0 + 352, v0 + 472);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 648);
      v19 = *(v0 + 640);
      v20 = *(v0 + 632);
      v21 = *(v0 + 624);
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v20);
      (*(v19 + 32))(v18, v21, v20);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_267EFCA40;
      *(v22 + 32) = v17;
      *(v0 + 536) = v20;
      *(v0 + 544) = MEMORY[0x277D5C1D8];
      __swift_allocate_boxed_opaque_existential_0((v0 + 512));
      v23 = v17;
      sub_267D76034(v22);

      (*(v19 + 8))(v18, v20);
      __swift_destroy_boxed_opaque_existential_0((v0 + 352));
      sub_267BE58F4((v0 + 512), v0 + 352);
    }

    else
    {
      v24 = *(v0 + 632);
      v25 = *(v0 + 624);

      __swift_storeEnumTagSinglePayload(v25, 1, 1, v24);
      sub_267B9FF34(v25, &qword_28022BB70, &unk_267F0BA10);
    }
  }

  v26 = sub_267E38694();
  if (v26)
  {
    v27 = v26;
    v28 = sub_267EF89F8();
    v29 = sub_267EF95D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_267B93000, v28, v29, "#ReadComponentAction adding a command to mark as read", v30, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v31 = *(v0 + 608);

    sub_267B9AFEC(v0 + 352, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_267EFCA40;
    *(v32 + 32) = v27;
  }

  else
  {
    sub_267B9AFEC(v0 + 352, *(v0 + 608));
    v32 = MEMORY[0x277D84F90];
  }

  v33 = *(v0 + 888);
  v34 = *(v0 + 696);
  v35 = *(v0 + 688);
  v36 = *(v0 + 680);
  v37 = *(v0 + 608);

  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  (*(v35 + 8))(v34, v36);
  *(v37 + 40) = MEMORY[0x277D84F90];
  *(v37 + 48) = v32;
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  OUTLINED_FUNCTION_17();

  return v38();
}

uint64_t sub_267E375E0()
{
  v1 = v0[111];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_0_64();
  OUTLINED_FUNCTION_1_73();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E37718()
{
  sub_267E35168(v11);
  v0 = v12;
  v1 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  v2 = *(v1 + 32);

  v2(v0, v1);
  swift_beginAccess();

  sub_267BB7A18();

  if (v15 == 255)
  {
    goto LABEL_9;
  }

  if (v15 != 1)
  {
    sub_267B9FF34(v14, &qword_280229918, &qword_267F003B0);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v11);
    return 0;
  }

  v3 = v14[0];
  v4 = v14[1];

  __swift_destroy_boxed_opaque_existential_0(v11);
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
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_267BA33E8(v3, v4, v11);
    _os_log_impl(&dword_267B93000, v6, v7, "#ReadComponentAction processedContent is .differentLanguage(%s)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D60A7B0](v9, -1, -1);
    MEMORY[0x26D60A7B0](v8, -1, -1);
  }

  return v3;
}

uint64_t sub_267E3794C()
{
  sub_267E35168(&v35);
  v0 = *(&v36 + 1);
  v1 = v37;
  __swift_project_boxed_opaque_existential_0(&v35, *(&v36 + 1));
  v2 = *(v1 + 32);

  v2(v0, v1);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v35);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
    }
  }

  else
  {
    sub_267B9FF34(&v24, &qword_280229910, &unk_267EFEB70);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
  }

  sub_267E35168(&v32);
  v3 = *(&v33 + 1);
  v4 = v34;
  __swift_project_boxed_opaque_existential_0(&v32, *(&v33 + 1));
  v5 = *(v4 + 32);

  v5(v3, v4);
  sub_267BD9E24();

  __swift_destroy_boxed_opaque_existential_0(&v32);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }
  }

  else
  {
    sub_267B9FF34(&v24, &qword_280229910, &unk_267EFEB70);
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
  }

  sub_267E35168(&v24);
  v6 = v25;
  v7 = v26;
  __swift_project_boxed_opaque_existential_0(&v24, v25);
  v8 = (*(v7 + 16))(v6, v7);
  if (sub_267BAF0DC(v8))
  {
    sub_267BBD0EC(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D609870](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v10 = v9;

    v11 = [v10 sender];
  }

  else
  {

    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(&v24);
  sub_267E39674(&v35, &v24);
  v12 = v25;
  if (v25)
  {
    v13 = v26;
    __swift_project_boxed_opaque_existential_0(&v24, v25);
    v12 = (*(v13 + 16))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  else
  {
    sub_267B9FF34(&v24, &qword_280229CE0, &qword_267F00410);
  }

  sub_267E35168(&v24);
  v14 = v25;
  v15 = v26;
  __swift_project_boxed_opaque_existential_0(&v24, v25);
  v16 = *(v15 + 32);

  v16(v14, v15);
  sub_267BD997C();

  __swift_destroy_boxed_opaque_existential_0(&v24);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      if (*(v28 + 16) == 1)
      {
        v23 = v29;
        if (v27)
        {
        }

        else
        {
          v22 = sub_267C904B4(v28);

          if (v22 != 1)
          {

            v12 = v22;
          }
        }
      }

      else
      {
        v17 = v29;
      }
    }
  }

  else
  {
    sub_267B9FF34(v30, &qword_280229910, &unk_267EFEB70);
  }

  if (!v12)
  {

LABEL_29:
    v20 = 1;
    goto LABEL_30;
  }

  if (!v11)
  {

    goto LABEL_29;
  }

  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
  v18 = v11;
  v19 = sub_267EF9818();

  v20 = v19 ^ 1;
LABEL_30:
  sub_267B9FF34(&v32, &qword_280229CE0, &qword_267F00410);
  sub_267B9FF34(&v35, &qword_280229CE0, &qword_267F00410);
  return v20 & 1;
}

id sub_267E37F40(void *a1)
{
  v2 = [a1 dialog];
  sub_267BA9F38(0, &qword_2802295A0, 0x277D052C8);
  v3 = sub_267EF92F8();

  v4 = sub_267BAF0DC(v3);
  v5 = 0;
  v31 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D609870](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v2 = v6;
    v1 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v22 = MEMORY[0x26D609870](0, v2);
      goto LABEL_24;
    }

    v7 = [v6 fullSpeak];
    v8 = sub_267EF9028();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      goto LABEL_15;
    }

    v12 = [v2 supportingSpeak];
    v8 = sub_267EF9028();
    v10 = v13;

    v14 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
LABEL_15:
      v15 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v15 = v18;
      }

      v16 = *(v15 + 16);
      v2 = v16 + 1;
      if (v16 >= *(v15 + 24) >> 1)
      {
        sub_267BF4EE8();
        v15 = v19;
      }

      *(v15 + 16) = v2;
      v31 = v15;
      v17 = v15 + 16 * v16;
      *(v17 + 32) = v8;
      *(v17 + 40) = v10;
      v5 = v1;
    }

    else
    {

      ++v5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
  sub_267BF5748();
  v3 = sub_267EF8FC8();
  v4 = v20;

  v1 = a1;
  v21 = [a1 dialog];
  v2 = sub_267EF92F8();

  if (sub_267BAF0DC(v2))
  {
    sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    v22 = *(v2 + 32);
LABEL_24:
    v23 = v22;

    v24 = [v23 dialogId];

    v25 = sub_267EF9028();
    v27 = v26;

    goto LABEL_26;
  }

  v25 = 0;
  v27 = 0xE000000000000000;
LABEL_26:
  v28 = sub_267EF92D8();
  [v1 setDialog_];

  sub_267BA9F38(0, &qword_28022A0B0, 0x277D47B10);
  return sub_267E7E88C(v3, v4, v25, v27, 0, 0, 0);
}

void sub_267E382E4(void *a1)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = v1;
  v36 = &v34 - v3;
  sub_267E35168(v39);
  v4 = v40;
  v5 = v41;
  __swift_project_boxed_opaque_existential_0(v39, v40);
  v6 = (*(v5 + 16))(v4, v5);

  v7 = sub_267BAF0DC(v6);
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D609870](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v13 = sub_267D60420();
    v15 = v14;

    ++v8;
    if (v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267BF4EE8();
        v9 = v18;
      }

      v16 = *(v9 + 16);
      if (v16 >= *(v9 + 24) >> 1)
      {
        sub_267BF4EE8();
        v9 = v19;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v8 = v12;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  if (*(v9 + 16))
  {
    sub_267BA9F38(0, &qword_28022A0C8, 0x277D47918);
    sub_267E351F8();

    v20 = sub_267EF7C18();
    v22 = v21;

    v23 = sub_267E7E7F0(v20, v22);
    v39[0] = sub_267EF9028();
    v39[1] = v24;
    MEMORY[0x26D608E60](3092282, 0xE300000000000000);
    v38 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BCB0, &unk_267EFCA30);
    sub_267BF5748();
    v25 = sub_267EF8FC8();
    v27 = v26;

    MEMORY[0x26D608E60](v25, v27);

    v28 = v36;
    sub_267EF2B88();

    v29 = sub_267EF2BA8();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v29);
    v31 = 0;
    v32 = v37;
    if (EnumTagSinglePayload != 1)
    {
      v31 = sub_267EF2AF8();
      (*(*(v29 - 8) + 8))(v28, v29);
    }

    [v23 setIdentifier_];

    v33 = v23;
  }

  else
  {

    v33 = 0;
    v32 = v37;
  }

  [v32 setContext_];
  swift_unknownObjectRelease();
}

uint64_t sub_267E38694()
{
  if (([*(*(v0 + 72) + 64) attributes] & 2) == 0)
  {
    return 0;
  }

  sub_267E35168(v10);
  swift_beginAccess();

  sub_267E86600(v10);
  v2 = v1;
  __swift_destroy_boxed_opaque_existential_0(v10);
  swift_endAccess();

  if (!*(v2 + 16))
  {

    return 0;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CD40E0]);
  v4 = sub_267C94A44(v2, 1);
  sub_267E351F8();

  sub_267EF7C18();
  v6 = v5;

  if (v6)
  {
    v7 = sub_267EF8FF8();
  }

  else
  {
    v7 = 0;
  }

  [v4 _setLaunchId_];

  sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
  v8 = sub_267EF9768();

  return v8;
}

uint64_t sub_267E38820(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  *(v2 + 72) = a2;
  return v2;
}

uint64_t sub_267E38850(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E38870, 0, 0);
}

void sub_267E38870()
{
  v23 = v0;
  v1 = v0[8];
  sub_267E351F8();

  v19 = sub_267BB6154(0xD000000000000018, 0x8000000267F1BAA0);

  v2 = *(v1 + 72);
  v3 = v2[5];
  v4 = v2[6];
  __swift_project_boxed_opaque_existential_0(v2 + 2, v3);
  v5 = *(v4 + 8);

  v5(v3, v4);

  v6 = v0[5];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v6);
  LOBYTE(v2) = sub_267DBF930(v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = *(v0[8] + 24);
    v20 = MEMORY[0x277D84F90];
    v9 = sub_267BAF0DC(v8);

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        goto LABEL_15;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D609870](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v21 = v11;
      sub_267E38CF8(&v21, v19, &v22);

      if (v22)
      {
        MEMORY[0x26D608F90]();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v7 = v20;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:
    v0[9] = v7;
    v13 = v0[8];
    v14 = sub_267BAF0DC(v7);
    v0[10] = v14;
    v15 = sub_267BAF0DC(*(v13 + 24));
    v0[11] = v15;
    v16 = v14 != v15;
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_267E38B38;
    v18 = v0[7];

    sub_267E3570C(v18, v16);
  }
}

uint64_t sub_267E38B38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;

  if (v0)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267E38C7C, 0, 0);
  }
}

uint64_t sub_267E38C7C()
{
  if (v0[10] == v0[11])
  {
    sub_267C9B4AC(v0[9]);
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();

  return v1();
}

void sub_267E38CF8(void **a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_267E51BAC(*a1);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  if (!sub_267BAF0DC(v7))
  {

LABEL_11:
    if ((a2 & 1) == 0)
    {
      v30 = 0;
      goto LABEL_20;
    }

    v22 = [v6 identifier];
    v23 = sub_267EF9028();
    v25 = v24;

    v26 = objc_allocWithZone(MEMORY[0x277CD3EB0]);
    v10 = sub_267E395B4(v23, v25);
    sub_267E351F8();

    sub_267EF7C18();
    v28 = v27;

    if (v28)
    {
      v29 = sub_267EF8FF8();
    }

    else
    {
      v29 = 0;
    }

    [v10 _setLaunchId_];

    sub_267BA9F38(0, &qword_28022BB80, 0x277D473D0);
    v11 = sub_267EF9768();
LABEL_19:
    v30 = v11;

    goto LABEL_20;
  }

  sub_267BBD0EC(0, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x26D609870](0, v8);
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = sub_267E0E360();
  if (!v3)
  {
    goto LABEL_19;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = v3;
  v14 = sub_267EF89F8();
  v15 = sub_267EF95E8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136315138;
    v18 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    v19 = sub_267EF9098();
    v21 = sub_267BA33E8(v19, v20, &v31);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_267B93000, v14, v15, "#ReadAudioComponentAction error building audioMessageSayIt: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x26D60A7B0](v17, -1, -1);
    MEMORY[0x26D60A7B0](v16, -1, -1);
  }

  else
  {
  }

  v30 = 0;
LABEL_20:
  *a3 = v30;
}

uint64_t sub_267E3903C()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_267E39098()
{
  sub_267E3903C();

  return swift_deallocClassInstance();
}

uint64_t sub_267E390F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_267DBC244(v7, v6);
}

uint64_t sub_267E39174(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_267E3918C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_267CDE0E8;

  return sub_267E38850(a1);
}

uint64_t sub_267E39228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return j__OUTLINED_FUNCTION_5_10(a1, a2, a3, WitnessTable);
}

void (*sub_267E39294(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v5;
  v5[2] = v2;
  v5[3] = a2;
  WitnessTable = swift_getWitnessTable();
  v5[4] = WitnessTable;
  *v5 = sub_267C3698C(a2, WitnessTable);
  v5[1] = v7;
  return sub_267C94288;
}

uint64_t sub_267E39324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_267C3698C(a1, WitnessTable);
}

uint64_t sub_267E39378(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  swift_getWitnessTable();
  *v2 = v1;
  v2[1] = sub_267CDDF34;

  return sub_267BF9538();
}

uint64_t sub_267E394EC(uint64_t a1)
{
  result = sub_267E39574(&qword_28022C8D8, &unk_267F0B978);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267E39530(uint64_t a1)
{
  result = sub_267E39574(&qword_280229268, &unk_267F0B9C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_267E39574(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadAudioComponentAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_267E395B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithMessageIdentifier_];

  return v4;
}

uint64_t sub_267E39618(uint64_t a1)
{
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  (*(*(ComponentPatternCommonParameters - 8) + 8))(a1, ComponentPatternCommonParameters);
  return a1;
}

uint64_t sub_267E39674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CE0, &qword_267F00410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267E396E4(void *a1, uint64_t (*a2)(void *, void))
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_267B93000, v5, v6, "SearchForMessagesUnsupportedUseCaseCheckFlowStrategy# Checking support for request", v7, 2u);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  v10 = sub_267E583B0(v8, v9);
  if (!v10)
  {
    return a2(0, 0);
  }

  if (sub_267D6D160(*(v10 + OBJC_IVAR____TtC16SiriMessagesFlow13SmsNLv4Intent_verb)) == 1684104562 && v11 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_267EF9EA8();

    if ((v13 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((sub_267DD4A44(v14, v15) & 1) == 0)
  {
LABEL_19:

    return a2(0, 0);
  }

  v16 = sub_267EF89F8();
  v17 = sub_267EF95D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_267B93000, v16, v17, "SendSupportCheck# Unsupported read scheduled message request", v18, 2u);
    MEMORY[0x26D60A7B0](v18, -1, -1);
  }

  sub_267E39EBC();
  v19 = swift_allocError();
  a2(v19, 0);
}

uint64_t sub_267E39964(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v11[0] = a1;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if (swift_dynamicCast())
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a3;
    v7[4] = v3;

    sub_267CEBA78();
  }

  else
  {
    v11[1] = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD000000000000015, 0x8000000267F18A80);
    sub_267EF9C58();
    sub_267C266B0();
    v9 = swift_allocError();
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v11[0] = v9;
    v12 = 1;
    a2(v11);
    return sub_267B9FF34(v11, &unk_28022A480, &unk_267F029F0);
  }
}

uint64_t sub_267E39AF8(uint64_t a1, void (*a2)(id *), uint64_t a3, uint64_t a4)
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

uint64_t sub_267E39DEC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  return v0;
}

uint64_t sub_267E39E1C()
{
  sub_267E39DEC();

  return swift_deallocClassInstance();
}

unint64_t sub_267E39EBC()
{
  result = qword_28022C8E0;
  if (!qword_28022C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C8E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchForMessagesUnsupportedUseCaseCheckFlowStrategy.UnsupportedReason(_BYTE *result, int a2, int a3)
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

unint64_t sub_267E39FC0()
{
  result = qword_28022C8E8;
  if (!qword_28022C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C8E8);
  }

  return result;
}

uint64_t sub_267E3A014(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = *(v5 + 16);
  v14(&v52 - v12, v2, a1);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_24_31(v15))
  {
    sub_267B9A5E8(v58, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BE40, &unk_267F08CB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_267EFC020;
    v17 = v56;
    v18 = v57;
    __swift_project_boxed_opaque_existential_0(v55, v56);
    *(inited + 32) = (*(v18 + 16))(v17, v18);
    v19 = (*(a2 + 16))(a1, a2);
    if (sub_267BAF0DC(v19))
    {
      OUTLINED_FUNCTION_30_31();
      if (v18)
      {
        v20 = MEMORY[0x26D609870](0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;

      v22 = [v21 recipients];

      if (v22)
      {
        sub_267BCA2C8();
        sub_267EF92F8();
      }
    }

    else
    {
    }

    v44 = OUTLINED_FUNCTION_23_26();
    sub_267DB6D08(v44, v45);
    v47 = v46;

    swift_setDeallocating();
    sub_267DB6FC0();
LABEL_23:
    __swift_destroy_boxed_opaque_existential_0(v55);
    goto LABEL_24;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8F0, qword_267F0BBF8);
  if (OUTLINED_FUNCTION_24_31(v23))
  {
    sub_267B9A5E8(v58, v55);
    __swift_project_boxed_opaque_existential_0(v55, v56);
    v24 = *(a2 + 16);

    v25 = v24(a1, a2);
    if (sub_267BAF0DC(v25))
    {
      OUTLINED_FUNCTION_30_31();
      if (v24)
      {
        v26 = MEMORY[0x26D609870](0, v25);
      }

      else
      {
        v26 = *(v25 + 32);
      }

      v27 = v26;

      v28 = [v27 recipients];

      if (v28)
      {
        sub_267BCA2C8();
        sub_267EF92F8();
      }
    }

    else
    {
    }

    v48 = OUTLINED_FUNCTION_23_26();
    sub_267DB6D08(v48, v49);
    v47 = v50;

    goto LABEL_23;
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v14(v11, v2, a1);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v53 = v30;
    v33 = v32;
    v54 = swift_slowAlloc();
    *&v58[0] = v54;
    *v33 = 136315138;
    v34 = OUTLINED_FUNCTION_23_26();
    (v14)(v34);
    v35 = *(v5 + 8);
    v35(v11, a1);
    v36 = v31;
    v37 = sub_267EF9E58();
    v39 = v38;
    v35(v8, a1);
    v40 = sub_267BA33E8(v37, v39, v58);

    v41 = v33;
    *(v33 + 4) = v40;
    v30 = v53;
    v42 = v41;
    _os_log_impl(&dword_267B93000, v53, v36, "#ReadableComponent#conversationContactIdentifiers unknown component type %s", v41, 0xCu);
    v43 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x26D60A7B0](v43, -1, -1);
    MEMORY[0x26D60A7B0](v42, -1, -1);
  }

  else
  {
    (*(v5 + 8))(v11, a1);
  }

  v47 = MEMORY[0x277D84F90];
LABEL_24:
  (*(v5 + 8))(v13, a1);
  return v47;
}

void sub_267E3A5A4()
{
  v1 = *v0;
  v2 = sub_267BAF0DC(*v0);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BF4EE8();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3A6F0()
{
  v1 = *(v0 + 8);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BF4EE8();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3A83C()
{
  v4 = *(v0 + 40);
  sub_267BAF0DC(v4);
  OUTLINED_FUNCTION_28_31();
  v5 = MEMORY[0x277D84F90];
  while (v0 != v1)
  {
    if (v2)
    {
      v6 = MEMORY[0x26D609870](v1, v4);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v6 = *(v4 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = [v6 identifier];
    sub_267EF9028();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_27_28();
      v5 = v9;
    }

    if (*(v5 + 16) >= *(v5 + 24) >> 1)
    {
      sub_267BF4EE8();
      v5 = v10;
    }

    OUTLINED_FUNCTION_29_28();
  }
}

void sub_267E3A95C()
{
  v1 = *(v0 + 16);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BF4EE8();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3AAA8()
{
  v1 = *(v0 + 32);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BF4EE8();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

void sub_267E3ABF4()
{
  v1 = *(v0 + 56);
  v2 = sub_267BAF0DC(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D609870](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v7 = [v5 identifier];
    v8 = sub_267EF9028();
    v10 = v9;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267BF4EE8();
      v4 = v13;
    }

    v11 = *(v4 + 16);
    if (v11 >= *(v4 + 24) >> 1)
    {
      sub_267BF4EE8();
      v4 = v14;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v10;
    ++v3;
  }
}

uint64_t sub_267E3AD80()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_26();
  v1 = OUTLINED_FUNCTION_10_1();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_267E3C960;
  v2 = OUTLINED_FUNCTION_7_46();

  return v3(v2);
}

uint64_t sub_267E3AE14(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3AE34, 0, 0);
}

uint64_t sub_267E3AE34()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3AEBC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  OUTLINED_FUNCTION_1_74(v6);
  sub_267B9FF34(v2 + 64, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3AFC8(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3AFE8, 0, 0);
}

uint64_t sub_267E3AFE8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B070(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3B090, 0, 0);
}

uint64_t sub_267E3B090()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B118(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3B138, 0, 0);
}

uint64_t sub_267E3B138()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B1C0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_267E3B1E0, 0, 0);
}

uint64_t sub_267E3B1E0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_5_57();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_14_40(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_65(v1);

  return v4(v3);
}

uint64_t sub_267E3B268()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  OUTLINED_FUNCTION_1_74(v6);
  sub_267B9FF34(v2 + 64, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3B374()
{
  OUTLINED_FUNCTION_12();
  sub_267BFF0F4(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 58));
  OUTLINED_FUNCTION_4_3();
  v2 = *(v0 + 57);

  return v1(v2);
}

uint64_t sub_267E3B404()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3B48C(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_267E3B4AC, 0, 0);
}

uint64_t sub_267E3B4AC()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  if (v2[1])
  {

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v4.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v3(v4);
  }

  else
  {
    OUTLINED_FUNCTION_12_40(v1, v2);
    v6 = OUTLINED_FUNCTION_10_1();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_267E3B594;
    v7 = OUTLINED_FUNCTION_9_47(v0[24]);

    return v8(v7);
  }
}

uint64_t sub_267E3B594()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_22_29();
  }

  sub_267B9FF34(v3 + 136, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3B6C8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E3B6E8, 0, 0);
}

uint64_t sub_267E3B6E8()
{
  OUTLINED_FUNCTION_56();
  if (*(v0[8] + 8))
  {

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v2.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
    v4 = OUTLINED_FUNCTION_10_1();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_267E3B7CC;
    v5 = OUTLINED_FUNCTION_9_47(v0[7]);

    return v6(v5);
  }
}

uint64_t sub_267E3B7CC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v2;
    v5[12] = v0;
  }

  sub_267B9FF34((v5 + 2), &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3B900()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 88);
  **(v0 + 64) = vextq_s8(v1, v1, 8uLL);
  if (v1.i64[0])
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
  }

  else
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  sub_267C9DA84(v3, v2);

  v5.n128_f64[0] = OUTLINED_FUNCTION_3_67();

  return v4(v5);
}

uint64_t sub_267E3B9BC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E3B9DC, 0, 0);
}

uint64_t sub_267E3B9DC()
{
  OUTLINED_FUNCTION_56();
  if (*(v0[8] + 8))
  {

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v2.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
    v4 = OUTLINED_FUNCTION_10_1();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_267E3BAC0;
    v5 = OUTLINED_FUNCTION_9_47(v0[7]);

    return v6(v5);
  }
}

uint64_t sub_267E3BAC0()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v5 = v4;
  OUTLINED_FUNCTION_9_1();
  *v6 = v5;
  v7 = *v3;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v5[10] = v1;

  if (!v1)
  {
    v5[11] = v2;
    v5[12] = v0;
  }

  sub_267B9FF34((v5 + 2), &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3BBF4(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_267E3BC14, 0, 0);
}

uint64_t sub_267E3BC14()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  if (v2[1])
  {

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v4.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v3(v4);
  }

  else
  {
    OUTLINED_FUNCTION_12_40(v1, v2);
    v6 = OUTLINED_FUNCTION_10_1();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_267E3B594;
    v7 = OUTLINED_FUNCTION_9_47(v0[24]);

    return v8(v7);
  }
}

uint64_t sub_267E3BCFC(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_267E3BD1C, 0, 0);
}

uint64_t sub_267E3BD1C()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[25];
  if (v2[1])
  {

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v4.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v3(v4);
  }

  else
  {
    OUTLINED_FUNCTION_12_40(v1, v2);
    v6 = OUTLINED_FUNCTION_10_1();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_267E3BE04;
    v7 = OUTLINED_FUNCTION_9_47(v0[24]);

    return v8(v7);
  }
}

uint64_t sub_267E3BE04()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_10_41();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_22_29();
  }

  sub_267B9FF34(v3 + 136, &qword_28022B0F0, &qword_267F0E670);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3BF38()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  sub_267B9FF34((v0 + 22), &qword_28022A300, &qword_267EFEEE0);
  *v3 = v2;
  v3[1] = v1;
  if (v1)
  {
    v4 = v0[28];
    v5 = v0[29];
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  sub_267C9DA84(v5, v4);

  v7.n128_f64[0] = OUTLINED_FUNCTION_3_67();

  return v6(v7);
}

uint64_t sub_267E3C004(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_267E3C024, 0, 0);
}

uint64_t sub_267E3C024()
{
  OUTLINED_FUNCTION_56();
  if (*(v0[8] + 8))
  {

    OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_26_31();
    v2.n128_f64[0] = OUTLINED_FUNCTION_3_67();

    return v1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_15_37();
    v4 = OUTLINED_FUNCTION_10_1();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_267E3BAC0;
    v5 = OUTLINED_FUNCTION_9_47(v0[7]);

    return v6(v5);
  }
}

uint64_t sub_267E3C108()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_26();
  v1 = OUTLINED_FUNCTION_10_1();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_267E3C960;
  v2 = OUTLINED_FUNCTION_7_46();

  return v3(v2);
}

uint64_t sub_267E3C19C()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C268()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C2F0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6.n128_u64[0] = v3;
  }

  return v7(v6);
}

uint64_t sub_267E3C3E0()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C468()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_4_3();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_267E3C55C()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C620()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_26();
  v1 = OUTLINED_FUNCTION_10_1();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_267E3C6B4;
  v2 = OUTLINED_FUNCTION_7_46();

  return v3(v2);
}

uint64_t sub_267E3C6B4()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  OUTLINED_FUNCTION_4_3();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_267E3C7A8()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C830()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C8B8()
{
  OUTLINED_FUNCTION_56();
  v0 = OUTLINED_FUNCTION_10_1();
  v1 = OUTLINED_FUNCTION_60_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_60(v1);

  return v4(v3);
}

uint64_t sub_267E3C970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_267E3C994, 0, 0);
}

uint64_t sub_267E3C994()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  if (sub_267BCD18C(v2, v3))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Device is authenticated, don't require unlock";
LABEL_11:
    _os_log_impl(&dword_267B93000, v5, v6, v8, v7, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_12:

    OUTLINED_FUNCTION_4_3();

    return v10(0);
  }

  __swift_project_boxed_opaque_existential_0(v0[4], v1[3]);
  if (sub_267EF3C58())
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Request is from HomePod, don't require unlock";
    goto LABEL_11;
  }

  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_267E3CBC8;
  v13 = v0[3];

  return sub_267E3CFB0(v13);
}

uint64_t sub_267E3CBC8(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_267E3CCC8, 0, 0);
}

uint64_t sub_267E3CCC8(uint64_t a1)
{
  v3 = *(v1 + 48);
  sub_267EF7C18();
  if (v3)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v4 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v4, qword_280240FB0);

    v5 = sub_267EF89F8();
    v6 = sub_267EF95D8();

    if (os_log_type_enabled(v5, v6))
    {
      OUTLINED_FUNCTION_48();
      v24 = OUTLINED_FUNCTION_5_4();
      v8 = OUTLINED_FUNCTION_1_75(4.8149e-34, v24, v7);

      *(v2 + 4) = v8;
      v11 = "Preview is restricted for app %s, require unlock";
LABEL_12:
      OUTLINED_FUNCTION_22_1(&dword_267B93000, v9, v10, v11);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_32_0();

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([*(v1 + 16) attributes] != 2 || (sub_267DA7A98(*(v1 + 16)) & 1) != 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);

    v5 = sub_267EF89F8();
    v13 = sub_267EF95D8();

    if (os_log_type_enabled(v5, v13))
    {
      OUTLINED_FUNCTION_48();
      v25 = OUTLINED_FUNCTION_5_4();
      v15 = OUTLINED_FUNCTION_1_75(4.8149e-34, v25, v14);

      *(v2 + 4) = v15;
      v11 = "Preview is not restricted for app %s and intent may return read messages, require unlock";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v18 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v18, qword_280240FB0);

  v5 = sub_267EF89F8();
  v19 = sub_267EF95D8();

  if (!os_log_type_enabled(v5, v19))
  {
LABEL_13:

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_48();
  v26 = OUTLINED_FUNCTION_5_4();
  v21 = OUTLINED_FUNCTION_1_75(4.8149e-34, v26, v20);

  *(v2 + 4) = v21;
  OUTLINED_FUNCTION_22_1(&dword_267B93000, v22, v23, "Preview is not restricted for app %s and intent won't return read messages, don't require unlock");
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_32_0();

LABEL_14:
  OUTLINED_FUNCTION_4_3();

  return v16();
}

uint64_t sub_267E3CFB0(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_267E3CFD0, 0, 0);
}

uint64_t sub_267E3CFD0(uint64_t a1)
{
  v16 = v1;
  v1[21] = sub_267EF7C18();
  v1[22] = v2;
  if (v2)
  {
    v3 = *(v1[20] + 80);
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_267E3D244;
    v4 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8F8, &qword_267F0BD10);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_267E3D4A0;
    v1[13] = &block_descriptor_18;
    v1[14] = v4;
    [v3 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion_];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v5 = v1[19];
    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v1[19];
      OUTLINED_FUNCTION_48();
      v15 = OUTLINED_FUNCTION_5_4();
      *v5 = 136315138;
      v1[10] = v9;
      sub_267EF7C38();
      sub_267E3D504();
      v10 = sub_267EF9E58();
      v12 = sub_267BA33E8(v10, v11, &v15);

      *(v5 + 4) = v12;
      _os_log_impl(&dword_267B93000, v7, v8, "appIdentifier is missing, treat as not restricted: %s", v5, 0xCu);
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_32_0();
    }

    OUTLINED_FUNCTION_4_3();

    return v13(0);
  }
}

uint64_t sub_267E3D244()
{

  return MEMORY[0x2822009F8](sub_267E3D324, 0, 0);
}

uint64_t sub_267E3D324()
{
  if (v0[18])
  {
    v0[10] = v0[21];
    v0[11] = v0[22];
    *(swift_task_alloc() + 16) = v0 + 10;
    v1 = sub_267BC2B54();
  }

  else
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95E8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictions() returned nil, assuming preview is restricted", v5, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v1 = 1;
  }

  OUTLINED_FUNCTION_4_3();

  return v6(v1);
}

uint64_t sub_267E3D4A0(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_267EF92F8();
  }

  else
  {
    v4 = 0;
  }

  return sub_267EADB78(v3, v4);
}

unint64_t sub_267E3D504()
{
  result = qword_28022A060;
  if (!qword_28022A060)
  {
    sub_267EF7C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A060);
  }

  return result;
}

uint64_t sub_267E3D55C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_267E3D59C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_267E3D660(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v4 = OUTLINED_FUNCTION_18(v3);
  MEMORY[0x28223BE20](v4);
  v72 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_77_0();
  v71 = v7;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0();
  v70 = v9;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0();
  v69 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v68 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77_0();
  v67 = v15;
  OUTLINED_FUNCTION_115();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v67 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v67 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v67 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_267F016D0;
  *(v31 + 32) = 7368801;
  *(v31 + 40) = 0xE300000000000000;
  v32 = *v1;
  if (*v1)
  {
    v33 = sub_267EF7958();
    v34 = v32;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
  }

  *(v31 + 48) = v34;
  *(v31 + 72) = v33;
  *(v31 + 80) = 0x4468736153707061;
  *(v31 + 88) = 0xEB00000000617461;
  v35 = a1(0);
  sub_267BC9B04(v1 + v35[5], v30, &unk_28022AE30, &qword_267EFC0B0);
  v36 = sub_267EF79B8();
  OUTLINED_FUNCTION_0_11(v30);
  if (v37)
  {

    sub_267B9FED8(v30, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 96) = 0u;
    *(v31 + 112) = 0u;
  }

  else
  {
    *(v31 + 120) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 96));
    OUTLINED_FUNCTION_2_2();
    (*(v38 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 128) = 0xD000000000000012;
  *(v31 + 136) = v39;
  sub_267BC9B04(v1 + v35[6], v28, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v28);
  if (v37)
  {
    sub_267B9FED8(v28, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 144) = 0u;
    *(v31 + 160) = 0u;
  }

  else
  {
    *(v31 + 168) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 144));
    OUTLINED_FUNCTION_2_2();
    (*(v40 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 176) = 0xD000000000000012;
  *(v31 + 184) = v41;
  sub_267BC9B04(v1 + v35[7], v25, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v25);
  v42 = v67;
  if (v37)
  {
    sub_267B9FED8(v25, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 192) = 0u;
    *(v31 + 208) = 0u;
  }

  else
  {
    *(v31 + 216) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 192));
    OUTLINED_FUNCTION_2_2();
    (*(v43 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 224) = 0xD000000000000016;
  *(v31 + 232) = v44;
  sub_267BC9B04(v1 + v35[8], v22, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v22);
  v45 = v69;
  if (v37)
  {
    sub_267B9FED8(v22, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 240) = 0u;
    *(v31 + 256) = 0u;
  }

  else
  {
    *(v31 + 264) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 240));
    OUTLINED_FUNCTION_2_2();
    (*(v46 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 272) = 0xD000000000000014;
  *(v31 + 280) = v47;
  sub_267BC9B04(v1 + v35[9], v19, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v19);
  v48 = v68;
  if (v37)
  {
    sub_267B9FED8(v19, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 288) = 0u;
    *(v31 + 304) = 0u;
  }

  else
  {
    *(v31 + 312) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 288));
    OUTLINED_FUNCTION_2_2();
    (*(v49 + 32))();
  }

  *(v31 + 320) = 0x4E746361746E6F63;
  *(v31 + 328) = 0xEB00000000656D61;
  sub_267BC9B04(v1 + v35[10], v42, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v42);
  v50 = v70;
  if (v37)
  {
    sub_267B9FED8(v42, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 336) = 0u;
    *(v31 + 352) = 0u;
  }

  else
  {
    *(v31 + 360) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 336));
    OUTLINED_FUNCTION_2_2();
    (*(v51 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 368) = 0xD000000000000017;
  *(v31 + 376) = v52;
  *(v31 + 384) = 0;
  OUTLINED_FUNCTION_28_32();
  *(v31 + 408) = v53;
  *(v31 + 416) = v54;
  *(v31 + 424) = 0xE900000000000065;
  sub_267BC9B04(v1 + v35[11], v48, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v48);
  if (v37)
  {
    sub_267B9FED8(v48, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 432) = 0u;
    *(v31 + 448) = 0u;
  }

  else
  {
    *(v31 + 456) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 432));
    OUTLINED_FUNCTION_2_2();
    (*(v55 + 32))();
  }

  *(v31 + 464) = 0x7463617265746E69;
  *(v31 + 472) = 0xEF617461446E6F69;
  sub_267BC9B04(v1 + v35[12], v45, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v45);
  if (v37)
  {
    sub_267B9FED8(v45, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 480) = 0u;
    *(v31 + 496) = 0u;
  }

  else
  {
    *(v31 + 504) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 480));
    OUTLINED_FUNCTION_2_2();
    (*(v56 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 512) = 0xD000000000000013;
  *(v31 + 520) = v57;
  sub_267BC9B04(v1 + v35[13], v50, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v50);
  if (v37)
  {
    sub_267B9FED8(v50, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 528) = 0u;
    *(v31 + 544) = 0u;
  }

  else
  {
    *(v31 + 552) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 528));
    OUTLINED_FUNCTION_2_2();
    (*(v58 + 32))();
  }

  OUTLINED_FUNCTION_22_3();
  *(v31 + 560) = v59;
  *(v31 + 568) = 0xEA00000000007374;
  v60 = *(v1 + v35[14]);
  *(v31 + 600) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v31 + 576) = v60;
  *(v31 + 608) = 0x6C6C614274786574;
  *(v31 + 616) = 0xEF617461446E6F6FLL;
  v61 = v71;
  sub_267BC9B04(v1 + v35[15], v71, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v61);
  if (v37)
  {

    sub_267B9FED8(v61, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 624) = 0u;
    *(v31 + 640) = 0u;
  }

  else
  {
    *(v31 + 648) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 624));
    OUTLINED_FUNCTION_2_2();
    (*(v62 + 32))();
  }

  OUTLINED_FUNCTION_12_1();
  *(v31 + 656) = 0xD000000000000016;
  *(v31 + 664) = v63;
  v64 = v72;
  sub_267BC9B04(v1 + v35[16], v72, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_0_11(v64);
  if (v37)
  {
    sub_267B9FED8(v64, &unk_28022AE30, &qword_267EFC0B0);
    *(v31 + 672) = 0u;
    *(v31 + 688) = 0u;
  }

  else
  {
    *(v31 + 696) = v36;
    __swift_allocate_boxed_opaque_existential_0((v31 + 672));
    OUTLINED_FUNCTION_2_2();
    (*(v65 + 32))();
  }

  return v31;
}

uint64_t sub_267E3DFFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267EFCE30;
  OUTLINED_FUNCTION_12_1();
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = v7;
  *(v6 + 48) = 0;
  OUTLINED_FUNCTION_28_32();
  v8[9] = v9;
  v8[10] = v10;
  v8[11] = 0xE900000000000065;
  sub_267BC9B04(v0, v4, &unk_28022AE30, &qword_267EFC0B0);
  v11 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
  {
    sub_267B9FED8(v4, &unk_28022AE30, &qword_267EFC0B0);
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
  }

  else
  {
    *(v5 + 120) = v11;
    __swift_allocate_boxed_opaque_existential_0((v5 + 96));
    OUTLINED_FUNCTION_5_0();
    (*(v12 + 32))();
  }

  OUTLINED_FUNCTION_22_3();
  *(v5 + 128) = v13;
  *(v5 + 136) = 0xEA00000000007374;
  v14 = *(v0 + *(type metadata accessor for UnsendMessagesMessagesUnsentParameters(0) + 20));
  *(v5 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802297C8, &qword_267F017C0);
  *(v5 + 144) = v14;

  return v5;
}

uint64_t sub_267E3E1C0()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UnsendMessagesConfirmDeleteParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E3E24C()
{
  OUTLINED_FUNCTION_113();
  v10 = v4;
  OUTLINED_FUNCTION_29();
  v5 = OUTLINED_FUNCTION_34_25();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v5);
  OUTLINED_FUNCTION_3_13(v2[6]);
  OUTLINED_FUNCTION_3_13(v2[7]);
  OUTLINED_FUNCTION_3_13(v2[8]);
  OUTLINED_FUNCTION_3_13(v2[9]);
  OUTLINED_FUNCTION_3_13(v2[10]);
  OUTLINED_FUNCTION_3_13(v2[11]);
  OUTLINED_FUNCTION_3_13(v2[12]);
  OUTLINED_FUNCTION_3_13(v2[13]);
  OUTLINED_FUNCTION_3_13(v2[15]);
  OUTLINED_FUNCTION_3_13(v2[16]);
  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_1_3();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_20_27(v6);

  return v8(v7);
}

uint64_t sub_267E3E374()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3E470()
{
  OUTLINED_FUNCTION_56();
  *(v0 + 80) = sub_267E3D660(type metadata accessor for UnsendMessagesConfirmDeleteParameters);
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_38(v1);

  return v3(v2);
}

uint64_t sub_267E3E52C(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 96) = v1;

  if (!v1)
  {
    *(v5 + 104) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3E664()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_2_61();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267E3E6D4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_2_61();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E3E740()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_2_61();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E3E7AC()
{
  OUTLINED_FUNCTION_12();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for UnsendMessagesConfirmUnsendParameters(0);
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E3E838()
{
  OUTLINED_FUNCTION_113();
  v10 = v4;
  OUTLINED_FUNCTION_29();
  v5 = OUTLINED_FUNCTION_34_25();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v5);
  OUTLINED_FUNCTION_3_13(v2[6]);
  OUTLINED_FUNCTION_3_13(v2[7]);
  OUTLINED_FUNCTION_3_13(v2[8]);
  OUTLINED_FUNCTION_3_13(v2[9]);
  OUTLINED_FUNCTION_3_13(v2[10]);
  OUTLINED_FUNCTION_3_13(v2[11]);
  OUTLINED_FUNCTION_3_13(v2[12]);
  OUTLINED_FUNCTION_3_13(v2[13]);
  OUTLINED_FUNCTION_3_13(v2[15]);
  OUTLINED_FUNCTION_3_13(v2[16]);
  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_1_3();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_20_27(v6);

  return v8(v7);
}

uint64_t sub_267E3E960()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267E3EA5C()
{
  OUTLINED_FUNCTION_56();
  *(v0 + 80) = sub_267E3D660(type metadata accessor for UnsendMessagesConfirmUnsendParameters);
  v1 = OUTLINED_FUNCTION_28_0();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_15_38(v1);

  return v3(v2);
}

uint64_t sub_267E3EB18(uint64_t a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 96) = v1;

  if (!v1)
  {
    *(v5 + 104) = a1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E3EC50()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5_58();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_4_3();
  v4 = *(v0 + 104);

  return v3(v4);
}

uint64_t sub_267E3ECC0()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5_58();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E3ED2C()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5_58();
  sub_267E3F590(v1, v2);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_267E3ED98()
{
  OUTLINED_FUNCTION_12();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = type metadata accessor for UnsendMessagesMessagesUnsentParameters(0);
  v0[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E3EE24()
{
  OUTLINED_FUNCTION_56();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = v3;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_267E3EEF8;

  return sub_267DBD4A8();
}