uint64_t sub_267BEC01C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  if (!a1)
  {
    v6 = sub_267EF93F8();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_267D76104();
    a1 = v8;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_267BEC100()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t OUTLINED_FUNCTION_81_3()
{
  **(v1 + 144) = v0;

  return swift_storeEnumTagMultiPayload();
}

BOOL OUTLINED_FUNCTION_81_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_81_5()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

unint64_t OUTLINED_FUNCTION_81_6()
{

  return sub_267C266B0();
}

void OUTLINED_FUNCTION_81_8()
{
  *(v5 - 136) = v0[160];
  *(v5 - 128) = v4;
  *(v5 - 120) = v2;
  *(v5 - 112) = v3;
  *(v5 - 104) = v0[140];
  *(v5 - 144) = v0[87];
}

uint64_t OUTLINED_FUNCTION_81_12(uint64_t a1, uint64_t a2)
{

  return sub_267EF5638();
}

uint64_t sub_267BEC254()
{
  sub_267BCCFA4(v0, &v16);
  if (v18)
  {
    v1 = *(&v16 + 1);
    v2 = v17;
  }

  else
  {
    sub_267B9A5E8(&v16, v13);
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v3 = OUTLINED_FUNCTION_26_0();
    v4(v3);
    __swift_project_boxed_opaque_existential_0(v13, v14);
    v5 = OUTLINED_FUNCTION_108();
    if (sub_267E583B0(v5, v6))
    {
      sub_267DD2D80();
      OUTLINED_FUNCTION_74_0();
    }

    type metadata accessor for SendMessageState();
    OUTLINED_FUNCTION_59_0();
    v2 = sub_267D60CC0(v7, v8, v9);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_0(v13, v14);
    *(v2 + 145) = (*(v11 + 480))(v10, v11) & 1;
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v2;
}

uint64_t type metadata accessor for SendMessageRCHFlowStrategy(uint64_t a1)
{
  result = qword_28022A938;
  if (!qword_28022A938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_267BEC408(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, void *a4, void *a5, char *a6, uint64_t a7, char *a8)
{
  v89 = a4;
  v90 = a5;
  v88 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v83 = &v75 - v14;
  v15 = sub_267EF7B88();
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_267EF68A8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v87 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v91 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v86 = &v75 - v23;
  v133[3] = &type metadata for CATProvider;
  v133[4] = &off_2878CE7A0;
  v132[3] = &type metadata for MessagesFeatureFlagsImpl;
  v132[4] = off_2878D1228;
  v131[3] = v17;
  v131[4] = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v131);
  v79 = v18;
  v25 = *(v18 + 32);
  v78 = v18 + 32;
  v85 = v25;
  v25(boxed_opaque_existential_0, a6, v17);
  v130[3] = type metadata accessor for StewieStateMonitor();
  v130[4] = &off_2878CE700;
  v130[0] = a7;
  v26 = &a8[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_appName];
  *v26 = 0;
  *(v26 + 1) = 0;
  sub_267B9AFEC(v130, &a8[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_stewieStateMonitor]);
  v27 = &a8[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver];
  sub_267B9AFEC(a4, &a8[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_contextConversationResolver]);
  sub_267B9AFEC(a2, (v27 + 40));
  sub_267B9AFEC(v131, v116);
  v28 = a2;
  v29 = *(a2 + 3);
  v30 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_0(v28, v29);
  v31 = *(v30 + 8);

  v31(v129, v29, v30);
  v32 = v28;
  sub_267EF3838();
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v116, v116[3]);
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  v125 = v17;
  v126 = &off_2878D54D8;
  v37 = __swift_allocate_boxed_opaque_existential_0(v124);
  v38 = v85;
  v85(v37, v35, v17);
  type metadata accessor for SendMessageChangeHandler();
  v39 = swift_allocObject();
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v124, v125);
  MEMORY[0x28223BE20](v40);
  v42 = &v75 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v42);
  v39[6] = v17;
  v39[7] = &off_2878D54D8;
  v44 = __swift_allocate_boxed_opaque_existential_0(v39 + 3);
  v80 = v17;
  v38(v44, v42, v17);
  v78 = a1;
  v39[2] = a1;
  sub_267B9A5E8(v129, (v39 + 8));
  sub_267B9A5E8(&v127, (v39 + 13));
  __swift_destroy_boxed_opaque_existential_0(v124);
  __swift_destroy_boxed_opaque_existential_0(v116);
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow26SendMessageRCHFlowStrategy_changeHandler] = v39;
  v85 = v32;
  sub_267B9AFEC(v32, v129);
  sub_267B9AFEC(v133, &v127);
  sub_267C2FB6C(v88, v86, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v132, v124);
  sub_267B9AFEC(v90, v123);
  sub_267B9AFEC(v89, v122);
  v45 = sub_267EF8938();
  v46 = sub_267EF8928();
  v121[4] = MEMORY[0x277D5FDD8];
  v76 = v45;
  v121[3] = v45;
  v121[0] = v46;
  v77 = sub_267EF3AA8();
  v47 = type metadata accessor for NetworkStatusProvider();
  v48 = swift_allocObject();
  sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v120);
  v49 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v50 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v119 = &off_2878CF540;
  v118 = v50;
  *&v117 = v49;
  v51 = sub_267EF72E8();
  v52 = v87;
  sub_267EF6898();
  ConversationEventStore.init()(v116);
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v53 = qword_280240A10;
  v114 = type metadata accessor for EligibleAppFinder();
  v115 = sub_267B9DEEC(&qword_28022A688, type metadata accessor for EligibleAppFinder, &unk_267F014D4);
  *&v113 = v53;
  v54 = type metadata accessor for ShareSheetProvider();
  v55 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v127, v128);
  __swift_mutable_project_boxed_opaque_existential_1(v124, v125);
  v111 = &type metadata for CATProvider;
  v112 = &off_2878CE7A0;
  v109[3] = &type metadata for MessagesFeatureFlagsImpl;
  v109[4] = off_2878D1228;
  v108[3] = v47;
  v108[4] = &off_2878D2ED0;
  v108[0] = v48;
  v106 = &type metadata for TTSUtil;
  v107 = &off_2878D0CB0;
  *&v105 = v51;
  *(&v105 + 1) = &off_2878D0918;
  v56 = v80;
  v103 = v80;
  v104 = &off_2878D54D8;
  v57 = __swift_allocate_boxed_opaque_existential_0(&v102);
  v58 = v79;
  (*(v79 + 16))(v57, v52, v56);
  v100 = v54;
  v101 = &off_2878D0D48;
  *&v99 = v55;
  *(a8 + 7) = v78;
  sub_267B9AFEC(v110, (a8 + 64));
  type metadata accessor for SendMessageCATs(0);

  sub_267EF7B68();
  *(a8 + 13) = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple(0);
  sub_267EF7B68();
  *&a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple] = sub_267EF79E8();
  type metadata accessor for MessagesCATs(0);
  sub_267EF7B68();
  *(a8 + 15) = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v110, v111);
  *(a8 + 14) = sub_267BB4A3C();
  v59 = v86;
  v60 = v91;
  sub_267C2FB6C(v86, v91, &qword_2802299A8, &unk_267F00CF0);
  v61 = v60;
  v62 = v82;
  v63 = v56;
  if (__swift_getEnumTagSinglePayload(v61, 1, v82) == 1)
  {
    v97 = v56;
    v98 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(&v96);
    sub_267EF6898();
    v64 = v62;
    v65 = v76;
    v66 = sub_267EF8928();
    v95[3] = v65;
    v95[4] = MEMORY[0x277D5FDD8];
    v95[0] = v66;
    sub_267B9AFEC(v129, v94);
    sub_267B9AFEC(&v96, v93);
    sub_267B9AFEC(v95, v92);
    v67 = swift_allocObject();
    sub_267B9A5E8(v94, v67 + 16);
    sub_267B9A5E8(v93, v67 + 56);
    sub_267B9A5E8(v92, v67 + 96);
    sub_267EF4C08();
    sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
    v62 = v64;
    v68 = v83;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v95);
    __swift_destroy_boxed_opaque_existential_0(&v96);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v62);
    v70 = v84;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v91, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v68 = v83;
    v70 = v84;
    (*(v84 + 32))(v83, v91, v62);
  }

  (*(v70 + 32))(&a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer], v68, v62);
  sub_267B9AFEC(v109, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags]);
  sub_267B9AFEC(v121, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver]);
  v71 = &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider];
  *v71 = v77;
  v71[1] = &off_2878D5360;
  sub_267B9AFEC(v123, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender]);
  sub_267B9AFEC(v108, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider]);
  sub_267B9AFEC(v120, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults]);
  v72 = type metadata accessor for SendMessageCATPatternsExecutor(0);
  sub_267EF7B68();
  v73 = sub_267EF78E8();
  v97 = v72;
  v98 = &off_2878D1100;

  *&v96 = v73;
  __swift_destroy_boxed_opaque_existential_0(v90);
  __swift_destroy_boxed_opaque_existential_0(v89);
  sub_267B9F98C(v88, &qword_2802299A8, &unk_267F00CF0);
  (*(v58 + 8))(v87, v63);
  __swift_destroy_boxed_opaque_existential_0(v120);
  __swift_destroy_boxed_opaque_existential_0(v123);
  sub_267B9F98C(v59, &qword_2802299A8, &unk_267F00CF0);
  __swift_destroy_boxed_opaque_existential_0(v130);
  __swift_destroy_boxed_opaque_existential_0(v131);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v133);
  __swift_destroy_boxed_opaque_existential_0(v121);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  sub_267B9A5E8(&v96, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns]);
  sub_267B9A5E8(v122, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService]);
  sub_267B9A5E8(&v117, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService]);
  sub_267B9A5E8(&v105, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil]);
  sub_267B9A5E8(&v102, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver]);
  memcpy(&a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore], v116, 0x60uLL);
  sub_267B9A5E8(&v113, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder]);
  sub_267B9A5E8(&v99, &a8[OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider]);
  sub_267B9A5E8(v129, (a8 + 16));
  __swift_destroy_boxed_opaque_existential_0(v110);
  __swift_destroy_boxed_opaque_existential_0(v124);
  __swift_destroy_boxed_opaque_existential_0(&v127);
  __swift_destroy_boxed_opaque_existential_0(v85);
  return a8;
}

uint64_t sub_267BED0D8()
{
  OUTLINED_FUNCTION_56();
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  v0[3] = __swift_project_value_buffer(v1, qword_280240FB0);
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v3))
  {
    v4 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v4);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_26();
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_267BF1AF4;
  v11 = v0[2];

  return sub_267BED218(v11, sub_267BED378, 0);
}

uint64_t sub_267BED218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267BED230()
{
  OUTLINED_FUNCTION_56();
  v1 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_4_21(v1);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_59_1(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A418, &qword_267F00AE0);
  OUTLINED_FUNCTION_14_3();
  *v0 = v3;
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_2_27();

  return MEMORY[0x2822008A0]();
}

uint64_t type metadata accessor for SendMessageCATsSimple(uint64_t a1)
{
  result = qword_28022CE80;
  if (!qword_28022CE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BED408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_267EF7B88();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v12 = OUTLINED_FUNCTION_18(v11);
  MEMORY[0x28223BE20](v12);
  sub_267BB16A4(a1, &v16 - v13, &qword_280229E20, &unk_267EFDCC0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_267EF79C8();
  (*(v7 + 8))(a2, v3);
  sub_267B9FF34(a1, &qword_280229E20, &unk_267EFDCC0);
  return v14;
}

uint64_t type metadata accessor for MessagesCATs(uint64_t a1)
{
  result = qword_28022A570;
  if (!qword_28022A570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BED620(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_267BED800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_192();
  sub_267BC9B04(v32, v33, v34, &unk_267EFDCC0);
  (*(v27 + 16))(v29, v23, v26);
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9FED8(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

void sub_267BED974()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v3 = v2;
  sub_267EF3DE8();
  OUTLINED_FUNCTION_23();
  v316 = v5;
  v317 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_0();
  v315 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802298C8, &unk_267EFEC00);
  OUTLINED_FUNCTION_23();
  v351 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6();
  v311 = v11;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77_0();
  v309 = v13;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v14);
  v320 = v300 - v15;
  OUTLINED_FUNCTION_26_2();
  v16 = sub_267EF7B88();
  v17 = OUTLINED_FUNCTION_18(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_0();
  v340 = v19 - v18;
  OUTLINED_FUNCTION_26_2();
  v20 = sub_267EF68A8();
  OUTLINED_FUNCTION_23();
  v353 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  v336 = v23;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77_0();
  v331 = v25;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v26);
  v28 = v300 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802299A8, &unk_267F00CF0);
  v30 = OUTLINED_FUNCTION_18(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6();
  v310 = v31;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77_0();
  v344 = v33;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_77_0();
  v345 = v35;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_77_0();
  v305 = v37;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77_0();
  v328 = v39;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_77_0();
  v339 = v41;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_77_0();
  v319 = v43;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_77_0();
  v337 = v45;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v46);
  v48 = v300 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C4B0, &qword_267F0AA10);
  OUTLINED_FUNCTION_23();
  v314 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6();
  v313 = v52;
  OUTLINED_FUNCTION_115();
  MEMORY[0x28223BE20](v53);
  v55 = v300 - v54;
  v56 = sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
  v57 = sub_267BA9F38(0, &qword_280229718, 0x277CD4080);
  v318 = v56;
  v312 = v57;
  sub_267EF36C8();
  OUTLINED_FUNCTION_62_0();
  v58 = swift_allocObject();
  *(v58 + 16) = v3;
  *(v58 + 24) = v1;

  sub_267EF3648();
  OUTLINED_FUNCTION_62_0();
  v59 = swift_allocObject();
  *(v59 + 16) = v3;
  *(v59 + 24) = v1;
  v343 = v3;

  v352 = v49;
  v347 = v55;
  sub_267EF36B8();
  v348 = v1;
  sub_267B9AFEC(v1 + 16, &v465);
  OUTLINED_FUNCTION_78();
  v346 = v8;
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v8);
  v63 = sub_267EF8938();
  v64 = sub_267EF8928();
  v463 = v63;
  v464 = MEMORY[0x277D5FDD8];
  v349 = v63;
  *&v462 = v64;
  v342 = sub_267EF3AA8();
  sub_267EF3838();
  v65 = type metadata accessor for NetworkStatusProvider();
  v66 = OUTLINED_FUNCTION_49(v65);
  v330 = sub_267BA9F38(0, &qword_280229280, 0x277CBEBD0);
  sub_267BF0A00(v458);
  sub_267EF8668();
  v67 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v68 = sub_267BA9F38(0, &qword_28022C300, 0x277CEF2E8);
  v456 = &off_2878CF540;
  v329 = v68;
  v455 = v68;
  v454[0] = v67;
  v69 = sub_267EF72E8();
  sub_267EF6898();
  ConversationEventStore.init()(v453);
  if (qword_280228730 != -1)
  {
    OUTLINED_FUNCTION_2_9(&qword_280228730);
  }

  v70 = qword_280240A10;
  v338 = qword_280240A10;
  v327 = type metadata accessor for EligibleAppFinder();
  v451 = v327;
  OUTLINED_FUNCTION_24_28();
  v326 = sub_267B9DEEC(v71, v72, &unk_267F014D4);
  v452 = v326;
  v450[0] = v70;
  v73 = type metadata accessor for ShareSheetProvider();
  v74 = OUTLINED_FUNCTION_49(v73);
  v448 = &type metadata for CATProvider;
  v449 = &off_2878CE7A0;
  v445 = &type metadata for MessagesFeatureFlagsImpl;
  v446 = off_2878D1228;
  v443 = &off_2878D2ED0;
  v442 = v65;
  v441[0] = v66;
  v439 = &type metadata for TTSUtil;
  v440 = &off_2878D0CB0;
  v332 = v69;
  v437 = v69;
  v438 = &off_2878D0918;
  v435 = v20;
  v436 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v434);
  v76 = v353;
  v77 = *(v353 + 16);
  v304 = v28;
  v324 = v77;
  v325 = v353 + 16;
  v77(boxed_opaque_existential_0, v28, v20);
  v433 = &off_2878D0D48;
  v432 = v73;
  v431[0] = v74;
  type metadata accessor for SendMessageNeedsValueFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v302 = v78;
  v79 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v447, v448);
  __swift_mutable_project_boxed_opaque_existential_1(v444, v445);
  __swift_mutable_project_boxed_opaque_existential_1(v441, v442);
  OUTLINED_FUNCTION_28_7();
  v301 = v80;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v81);
  v83 = OUTLINED_FUNCTION_2_56(v82, v300[0]);
  v84(v83);
  v85 = __swift_mutable_project_boxed_opaque_existential_1(&v437, v439);
  v350 = v20;
  __swift_mutable_project_boxed_opaque_existential_1(v434, v435);
  OUTLINED_FUNCTION_28_7();
  v300[5] = v86;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_0_0();
  v341 = v65;
  v90 = v89 - v88;
  v91 = OUTLINED_FUNCTION_60_11();
  v92(v91);
  __swift_mutable_project_boxed_opaque_existential_1(v431, v73);
  OUTLINED_FUNCTION_28_7();
  v300[4] = v93;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v94);
  v96 = (v300 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = *(v97 + 16);
  v307 = v95;
  v308 = v97 + 16;
  v306 = v98;
  v98(v96);
  v99 = *v74;
  v100 = *v96;
  v101 = *v85;
  v429 = &type metadata for CATProvider;
  v430 = &off_2878CE7A0;
  v426 = &type metadata for MessagesFeatureFlagsImpl;
  v427 = off_2878D1228;
  v424 = &off_2878D2ED0;
  v423 = v65;
  v422[0] = v99;
  v420 = &type metadata for TTSUtil;
  v421 = &off_2878D0CB0;
  v419 = v101;
  v417 = v350;
  v418 = &off_2878D54D8;
  v102 = __swift_allocate_boxed_opaque_existential_0(v416);
  v103 = *(v76 + 32);
  v103(v102, v90, v350);
  v415 = &off_2878D0D48;
  v414 = v73;
  v413[0] = v100;
  sub_267B9AFEC(&v465, v412);
  sub_267B9AFEC(&v428, &v410);
  v303 = v48;
  sub_267C2FB6C(v48, v337, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v425, &v407);
  sub_267B9AFEC(&v462, &v404);
  sub_267B9AFEC(&v459, v401);
  sub_267B9AFEC(v422, v398);
  sub_267B9AFEC(v458, v397);
  sub_267B9AFEC(v457, &v394);
  sub_267B9AFEC(v454, &v391);
  sub_267B9AFEC(&v419, &v388);
  sub_267B9AFEC(v416, v385);
  sub_267BEB520(v453, v384);
  sub_267B9AFEC(v450, &v381);
  sub_267B9AFEC(v413, &v379);
  __swift_mutable_project_boxed_opaque_existential_1(&v410, v411);
  __swift_mutable_project_boxed_opaque_existential_1(&v407, v408);
  __swift_mutable_project_boxed_opaque_existential_1(v398, v399);
  OUTLINED_FUNCTION_28_7();
  v300[3] = v104;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v105);
  v107 = OUTLINED_FUNCTION_2_56(v106, v300[0]);
  v108(v107);
  v109 = __swift_mutable_project_boxed_opaque_existential_1(&v388, v389);
  __swift_mutable_project_boxed_opaque_existential_1(v385, v386);
  OUTLINED_FUNCTION_28_7();
  v300[2] = v110;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_3_62();
  v112 = OUTLINED_FUNCTION_60_11();
  v113(v112);
  __swift_mutable_project_boxed_opaque_existential_1(&v379, v380);
  OUTLINED_FUNCTION_28_7();
  v300[1] = v114;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_0_0();
  v118 = (v117 - v116);
  v120 = v350;
  (*(v119 + 16))(v117 - v116);
  v121 = *v100;
  v122 = *v118;
  v123 = *v109;
  v377 = &type metadata for CATProvider;
  v378 = &off_2878CE7A0;
  v374 = &type metadata for MessagesFeatureFlagsImpl;
  v375 = off_2878D1228;
  v372 = &off_2878D2ED0;
  v371 = v341;
  v370[0] = v121;
  v368 = &type metadata for TTSUtil;
  v369 = &off_2878D0CB0;
  v367 = v123;
  v365 = v120;
  v366 = &off_2878D54D8;
  v124 = __swift_allocate_boxed_opaque_existential_0(&v364);
  v333 = v103;
  v334 = v76 + 32;
  v103(v124, v90, v120);
  v363 = &off_2878D0D48;
  v335 = v73;
  v362 = v73;
  *&v361 = v122;
  v125 = v343;
  v79[7] = v343;
  sub_267B9AFEC(&v376, (v79 + 8));
  v126 = type metadata accessor for SendMessageCATs(0);
  swift_retain_n();

  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v323 = v126;
  v79[13] = sub_267EF78E8();
  type metadata accessor for SendMessageCATsSimple(0);
  OUTLINED_FUNCTION_78_15();
  OUTLINED_FUNCTION_18_32();
  v322 = v126;
  *(v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  type metadata accessor for MessagesCATs(0);
  OUTLINED_FUNCTION_78_15();
  OUTLINED_FUNCTION_18_32();
  v321 = v126;
  v79[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(&v376, v377);
  v79[14] = sub_267BB4A3C();
  v127 = v319;
  sub_267C2FB6C(v337, v319, &qword_2802299A8, &unk_267F00CF0);
  v128 = v346;
  OUTLINED_FUNCTION_77_7(v127, 1);
  v129 = v127;
  if (v130)
  {
    v359 = v120;
    v360 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v358);
    sub_267EF6898();
    v131 = sub_267EF8928();
    v135 = MEMORY[0x277D5FDD8];
    v357 = MEMORY[0x277D5FDD8];
    OUTLINED_FUNCTION_75_10(v131);
    sub_267B9AFEC(v358, v355);
    sub_267B9AFEC(v356, v354);
    OUTLINED_FUNCTION_70_10();
    v132 = swift_allocObject();
    OUTLINED_FUNCTION_48_23(v132);
    v134 = v320;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v356);
    __swift_destroy_boxed_opaque_existential_0(v358);
    OUTLINED_FUNCTION_77_7(v127, 1);
    v133 = v351;
    if (!v130)
    {
      sub_267B9F98C(v129, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v133 = v351;
    v134 = v320;
    (*(v351 + 32))(v320, v129, v128);
    v135 = MEMORY[0x277D5FDD8];
  }

  v137 = *(v133 + 32);
  v136 = v133 + 32;
  v351 = v136;
  v320 = v137;
  (v137)(v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v134, v128);
  sub_267B9AFEC(&v373, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(&v404, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v138 = (v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v138 = v342;
  v138[1] = &off_2878D5360;
  sub_267B9AFEC(v401, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v370, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v397, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  type metadata accessor for SendMessageCATPatternsExecutor(0);
  OUTLINED_FUNCTION_78_15();
  OUTLINED_FUNCTION_18_32();
  v139 = sub_267EF78E8();
  v140 = (v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v319 = v136;
  v140[3] = v136;
  v140[4] = &off_2878D1100;
  OUTLINED_FUNCTION_82_9(v139, v140);
  sub_267B9F98C(v337, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9EF14(v453);
  v141 = *(v353 + 8);
  v353 += 8;
  v337 = v141;
  v141(v304, v120);
  __swift_destroy_boxed_opaque_existential_0(v457);
  __swift_destroy_boxed_opaque_existential_0(v458);
  __swift_destroy_boxed_opaque_existential_0(&v459);
  sub_267B9F98C(v303, &qword_2802299A8, &unk_267F00CF0);
  OUTLINED_FUNCTION_19_34();
  sub_267B9A5E8(&v394, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v391, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v367, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v364, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v384, 0x60uLL);
  sub_267B9A5E8(&v381, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v361, v79 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v412, (v79 + 2));
  __swift_destroy_boxed_opaque_existential_0(&v376);
  __swift_destroy_boxed_opaque_existential_0(&v379);
  __swift_destroy_boxed_opaque_existential_0(v385);
  __swift_destroy_boxed_opaque_existential_0(&v388);
  __swift_destroy_boxed_opaque_existential_0(v398);
  __swift_destroy_boxed_opaque_existential_0(&v407);
  __swift_destroy_boxed_opaque_existential_0(&v410);
  __swift_destroy_boxed_opaque_existential_0(v431);
  __swift_destroy_boxed_opaque_existential_0(v434);
  __swift_destroy_boxed_opaque_existential_0(&v437);
  __swift_destroy_boxed_opaque_existential_0(v441);
  __swift_destroy_boxed_opaque_existential_0(v444);
  __swift_destroy_boxed_opaque_existential_0(v447);
  *&v453[0] = v79;
  sub_267B9DEEC(&qword_28022C4B8, type metadata accessor for SendMessageNeedsValueFlowStrategy, &unk_267F0ED90);
  OUTLINED_FUNCTION_71_7();
  sub_267EF3548();

  sub_267EF3628();
  OUTLINED_FUNCTION_62_0();
  v142 = swift_allocObject();
  v143 = v348;
  *(v142 + 16) = v348;
  *(v142 + 24) = v125;

  OUTLINED_FUNCTION_53_16();
  sub_267EF3678();
  OUTLINED_FUNCTION_62_0();
  v144 = swift_allocObject();
  *(v144 + 16) = v125;
  *(v144 + 24) = v143;

  OUTLINED_FUNCTION_53_16();
  sub_267EF3698();
  OUTLINED_FUNCTION_62_0();
  v145 = swift_allocObject();
  *(v145 + 16) = v125;
  *(v145 + 24) = v143;

  OUTLINED_FUNCTION_53_16();
  sub_267EF3658();
  sub_267B9AFEC(v143 + 16, &v465);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v146, v147, v148, v128);
  if (qword_280228710 != -1)
  {
    swift_once();
  }

  v149 = qword_280240640;
  v150 = qword_2802286F0;

  if (v150 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  sub_267B9AFEC(qword_2802405A0, &v462);
  v151 = v349;
  v152 = sub_267EF8928();
  v460 = v151;
  v461 = v135;
  *&v459 = v152;
  sub_267EF3838();
  v153 = v341;
  v154 = OUTLINED_FUNCTION_49(v341);
  sub_267BF0A00(v457);
  ConversationEventStore.init()(v453);
  sub_267EF8668();
  v155 = [objc_opt_self() sharedPreferences];
  v156 = sub_267BA9F38(0, &unk_28022A3B0, 0x277CEF368);
  v452 = &off_2878D7790;
  v451 = v156;
  v450[0] = v155;
  __swift_mutable_project_boxed_opaque_existential_1(&v462, v463);
  v448 = &type metadata for CATProvider;
  v449 = &off_2878CE7A0;
  v445 = &type metadata for MessagesFeatureFlagsImpl;
  v446 = off_2878D1228;
  v443 = &off_2878D2ED0;
  v442 = v153;
  v441[0] = v154;
  type metadata accessor for SendMessageHandleIntentFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v304 = v157;
  v158 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v447, &type metadata for CATProvider);
  __swift_mutable_project_boxed_opaque_existential_1(v444, &type metadata for MessagesFeatureFlagsImpl);
  __swift_mutable_project_boxed_opaque_existential_1(v441, v153);
  OUTLINED_FUNCTION_28_7();
  v303 = v159;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v160);
  v162 = OUTLINED_FUNCTION_2_56(v161, v300[0]);
  v163(v162);
  v439 = &type metadata for CATProvider;
  v440 = &off_2878CE7A0;
  v435 = &type metadata for MessagesFeatureFlagsImpl;
  v436 = off_2878D1228;
  v433 = &off_2878D2ED0;
  v432 = v153;
  v431[0] = type metadata for CATProvider.Kind;
  v164 = (v158 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_sharedContextProvider);
  *v164 = v149;
  v164[1] = &off_2878CF508;
  sub_267B9AFEC(v450, v158 + OBJC_IVAR____TtC16SiriMessagesFlow35SendMessageHandleIntentFlowStrategy_preferences);
  sub_267B9AFEC(&v465, &v428);
  sub_267B9AFEC(&v437, v425);
  v165 = v328;
  sub_267C2FB6C(v339, v328, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v434, v422);
  sub_267B9AFEC(&v459, &v419);
  sub_267B9AFEC(v458, v416);
  sub_267B9AFEC(v431, v413);
  sub_267B9AFEC(v457, v412);
  sub_267B9AFEC(v454, &v410);
  sub_267BEB520(v453, v384);
  v166 = objc_allocWithZone(MEMORY[0x277CEF2E8]);
  v302 = v149;

  v167 = [v166 init];
  v409 = &off_2878CF540;
  v408 = v329;
  *&v407 = v167;
  v168 = v331;
  sub_267EF6898();
  v406 = v326;
  v405 = v327;
  *&v404 = v338;
  v169 = v335;
  v170 = OUTLINED_FUNCTION_49(v335);
  __swift_mutable_project_boxed_opaque_existential_1(v425, v426);
  __swift_mutable_project_boxed_opaque_existential_1(v422, v423);
  __swift_mutable_project_boxed_opaque_existential_1(v413, v414);
  OUTLINED_FUNCTION_28_7();
  v301 = v171;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_3_62();
  v173 = OUTLINED_FUNCTION_60_11();
  v174(v173);
  v402 = &type metadata for CATProvider;
  v403 = &off_2878CE7A0;
  v399 = &type metadata for MessagesFeatureFlagsImpl;
  v400 = off_2878D1228;
  v397[4] = &off_2878D2ED0;
  v397[3] = v153;
  v397[0] = *off_2878D1228;
  v395 = &type metadata for TTSUtil;
  v396 = &off_2878D0CB0;
  *&v394 = v332;
  *(&v394 + 1) = &off_2878D0918;
  v175 = v350;
  v392 = v350;
  v393 = &off_2878D54D8;
  v176 = __swift_allocate_boxed_opaque_existential_0(&v391);
  v324(v176, v168, v175);
  v390 = &off_2878D0D48;
  v389 = v169;
  *&v388 = v170;
  v158[7] = v343;
  sub_267B9AFEC(v401, (v158 + 8));

  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v158[13] = sub_267EF78E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  *(v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v158[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(v401, v402);
  v158[14] = sub_267BB4A3C();
  v177 = v305;
  sub_267C2FB6C(v165, v305, &qword_2802299A8, &unk_267F00CF0);
  v178 = OUTLINED_FUNCTION_64_12();
  v179 = v346;
  OUTLINED_FUNCTION_77_7(v178, v180);
  if (v130)
  {
    v186 = v175;
    v386 = v175;
    v387 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v385);
    sub_267EF6898();
    v181 = v349;
    v182 = sub_267EF8928();
    v383 = MEMORY[0x277D5FDD8];
    v382 = v181;
    *&v381 = v182;
    sub_267B9AFEC(&v428, &v379);
    sub_267B9AFEC(v385, &v376);
    sub_267B9AFEC(&v381, &v373);
    OUTLINED_FUNCTION_70_10();
    v183 = swift_allocObject();
    sub_267B9A5E8(&v379, v183 + 16);
    sub_267B9A5E8(&v376, v183 + 56);
    sub_267B9A5E8(&v373, v183 + 96);
    sub_267EF4C08();
    v187 = v309;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(&v381);
    __swift_destroy_boxed_opaque_existential_0(v385);
    v184 = OUTLINED_FUNCTION_64_12();
    OUTLINED_FUNCTION_77_7(v184, v185);
    v188 = v320;
    if (!v130)
    {
      sub_267B9F98C(v177, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v186 = v175;
    v187 = v309;
    v188 = v320;
    (v320)(v309, v177, v179);
  }

  (v188)(v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v187, v179);
  sub_267B9AFEC(v398, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(&v419, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v189 = (v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v189 = v342;
  v189[1] = &off_2878D5360;
  sub_267B9AFEC(v416, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v397, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v412, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v190 = v319;
  v191 = sub_267EF78E8();
  v192 = (v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v192[3] = v190;
  v192[4] = &off_2878D1100;
  *v192 = v191;

  v193 = v186;
  v337(v331, v186);
  __swift_destroy_boxed_opaque_existential_0(v412);
  __swift_destroy_boxed_opaque_existential_0(v416);
  __swift_destroy_boxed_opaque_existential_0(&v419);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v194, v195, v196);
  __swift_destroy_boxed_opaque_existential_0(v454);
  sub_267B9EF14(v453);
  __swift_destroy_boxed_opaque_existential_0(v457);
  __swift_destroy_boxed_opaque_existential_0(v458);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v197, v198, v199);
  __swift_destroy_boxed_opaque_existential_0(&v465);
  __swift_destroy_boxed_opaque_existential_0(v450);
  __swift_destroy_boxed_opaque_existential_0(&v459);
  __swift_destroy_boxed_opaque_existential_0(v431);
  __swift_destroy_boxed_opaque_existential_0(v434);
  __swift_destroy_boxed_opaque_existential_0(&v437);
  __swift_destroy_boxed_opaque_existential_0(v397);
  __swift_destroy_boxed_opaque_existential_0(v398);
  sub_267B9A5E8(&v410, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v407, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v394, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v391, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v384, 0x60uLL);
  sub_267B9A5E8(&v404, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v388, v158 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(&v428, (v158 + 2));
  __swift_destroy_boxed_opaque_existential_0(v401);
  __swift_destroy_boxed_opaque_existential_0(v413);
  __swift_destroy_boxed_opaque_existential_0(v422);
  __swift_destroy_boxed_opaque_existential_0(v425);
  __swift_destroy_boxed_opaque_existential_0(v441);
  __swift_destroy_boxed_opaque_existential_0(v444);
  __swift_destroy_boxed_opaque_existential_0(v447);
  __swift_destroy_boxed_opaque_existential_0(&v462);
  *&v453[0] = v158;
  sub_267B9DEEC(&qword_28022C4C0, type metadata accessor for SendMessageHandleIntentFlowStrategy, &unk_267EFDBF8);
  OUTLINED_FUNCTION_71_7();
  sub_267EF3558();

  sub_267EF3638();
  sub_267B9AFEC(v348 + 16, &v465);
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v179);
  v203 = v349;
  v204 = sub_267EF8928();
  v463 = v203;
  v464 = MEMORY[0x277D5FDD8];
  *&v462 = v204;
  sub_267EF3838();
  v205 = v341;
  v206 = OUTLINED_FUNCTION_49(v341);
  sub_267BF0A00(v458);
  sub_267EF8668();
  v207 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  v456 = &off_2878CF540;
  v455 = v329;
  v454[0] = v207;
  v208 = v336;
  sub_267EF6898();
  ConversationEventStore.init()(v453);
  v452 = v326;
  v451 = v327;
  v450[0] = v338;
  v209 = v335;
  v210 = OUTLINED_FUNCTION_49(v335);
  v448 = &type metadata for CATProvider;
  v449 = &off_2878CE7A0;
  v445 = &type metadata for MessagesFeatureFlagsImpl;
  v446 = off_2878D1228;
  v443 = &off_2878D2ED0;
  v442 = v205;
  v441[0] = v206;
  v439 = &type metadata for TTSUtil;
  v440 = &off_2878D0CB0;
  v437 = v332;
  v438 = &off_2878D0918;
  v435 = v193;
  v436 = &off_2878D54D8;
  v211 = __swift_allocate_boxed_opaque_existential_0(v434);
  v324(v211, v208, v193);
  v433 = &off_2878D0D48;
  v432 = v209;
  v431[0] = v210;
  type metadata accessor for SendMessageNeedsConfirmationFlowStrategy(0);
  OUTLINED_FUNCTION_27_4();
  v339 = v212;
  v213 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v447, v448);
  __swift_mutable_project_boxed_opaque_existential_1(v444, v445);
  __swift_mutable_project_boxed_opaque_existential_1(v441, v442);
  OUTLINED_FUNCTION_28_7();
  v338 = v214;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v215);
  v217 = OUTLINED_FUNCTION_2_56(v216, v300[0]);
  v218(v217);
  v219 = __swift_mutable_project_boxed_opaque_existential_1(&v437, v439);
  __swift_mutable_project_boxed_opaque_existential_1(v434, v435);
  OUTLINED_FUNCTION_28_7();
  v332 = v220;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_3_62();
  v222 = OUTLINED_FUNCTION_60_11();
  v223(v222);
  __swift_mutable_project_boxed_opaque_existential_1(v431, v209);
  OUTLINED_FUNCTION_28_7();
  v331 = v224;
  MEMORY[0x28223BE20](v225);
  v227 = (v300 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0));
  v306(v227);
  v228 = *v210;
  v229 = *v227;
  v230 = *v219;
  v429 = &type metadata for CATProvider;
  v430 = &off_2878CE7A0;
  v426 = &type metadata for MessagesFeatureFlagsImpl;
  v427 = off_2878D1228;
  v424 = &off_2878D2ED0;
  v423 = v205;
  v422[0] = v228;
  v420 = &type metadata for TTSUtil;
  v421 = &off_2878D0CB0;
  v419 = v230;
  v417 = v193;
  v418 = &off_2878D54D8;
  v231 = __swift_allocate_boxed_opaque_existential_0(v416);
  v333(v231, v175, v193);
  v415 = &off_2878D0D48;
  v414 = v209;
  v413[0] = v229;
  v232 = OBJC_IVAR____TtC16SiriMessagesFlow40SendMessageNeedsConfirmationFlowStrategy_confirmationResponse;
  sub_267EF44F8();
  OUTLINED_FUNCTION_78();
  __swift_storeEnumTagSinglePayload(v233, v234, v235, v236);
  sub_267B9AFEC(&v465, v412);
  sub_267B9AFEC(&v428, &v410);
  sub_267C2FB6C(v345, v344, &qword_2802299A8, &unk_267F00CF0);
  sub_267B9AFEC(v425, &v407);
  sub_267B9AFEC(&v462, &v404);
  sub_267B9AFEC(&v459, v401);
  sub_267B9AFEC(v422, v398);
  sub_267B9AFEC(v458, v397);
  sub_267B9AFEC(v457, &v394);
  sub_267B9AFEC(v454, &v391);
  sub_267B9AFEC(&v419, &v388);
  sub_267B9AFEC(v416, v385);
  sub_267BEB520(v453, v384);
  sub_267B9AFEC(v450, &v381);
  sub_267B9AFEC(v413, &v379);
  __swift_mutable_project_boxed_opaque_existential_1(&v410, v411);
  __swift_mutable_project_boxed_opaque_existential_1(&v407, v408);
  __swift_mutable_project_boxed_opaque_existential_1(v398, v399);
  OUTLINED_FUNCTION_28_7();
  v330 = v237;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v238);
  v240 = OUTLINED_FUNCTION_2_56(v239, v300[0]);
  v241(v240);
  v242 = __swift_mutable_project_boxed_opaque_existential_1(&v388, v389);
  __swift_mutable_project_boxed_opaque_existential_1(v385, v386);
  OUTLINED_FUNCTION_28_7();
  v329 = v243;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v244);
  OUTLINED_FUNCTION_3_62();
  v245 = OUTLINED_FUNCTION_60_11();
  v246(v245);
  __swift_mutable_project_boxed_opaque_existential_1(&v379, v380);
  OUTLINED_FUNCTION_28_7();
  v328 = v247;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v248);
  OUTLINED_FUNCTION_0_0();
  v250 = OUTLINED_FUNCTION_28_29(v249);
  v251(v250);
  v252 = *v232;
  v253 = off_2878D0D48;
  v254 = *v242;
  v377 = &type metadata for CATProvider;
  v378 = &off_2878CE7A0;
  v374 = &type metadata for MessagesFeatureFlagsImpl;
  v375 = off_2878D1228;
  v372 = &off_2878D2ED0;
  v371 = v205;
  v370[0] = v252;
  v368 = &type metadata for TTSUtil;
  v369 = &off_2878D0CB0;
  v367 = v254;
  v365 = v193;
  v366 = &off_2878D54D8;
  v255 = __swift_allocate_boxed_opaque_existential_0(&v364);
  v256 = v175;
  v257 = v193;
  v258 = v346;
  v333(v255, v256, v193);
  v363 = &off_2878D0D48;
  v362 = v209;
  *&v361 = v253;
  v213[7] = v343;
  sub_267B9AFEC(&v376, (v213 + 8));

  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v213[13] = sub_267EF78E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  *(v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageCATsSimple) = sub_267EF79E8();
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v213[15] = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(&v376, v377);
  v213[14] = sub_267BB4A3C();
  v259 = v310;
  sub_267C2FB6C(v344, v310, &qword_2802299A8, &unk_267F00CF0);
  v260 = OUTLINED_FUNCTION_64_12();
  if (__swift_getEnumTagSinglePayload(v260, v261, v258) == 1)
  {
    v359 = v193;
    v360 = &off_2878D54D8;
    __swift_allocate_boxed_opaque_existential_0(v358);
    sub_267EF6898();
    v262 = sub_267EF8928();
    v357 = MEMORY[0x277D5FDD8];
    OUTLINED_FUNCTION_75_10(v262);
    sub_267B9AFEC(v358, v355);
    sub_267B9AFEC(v356, v354);
    OUTLINED_FUNCTION_70_10();
    v263 = swift_allocObject();
    OUTLINED_FUNCTION_48_23(v263);
    v264 = v311;
    sub_267EF7058();
    __swift_destroy_boxed_opaque_existential_0(v356);
    __swift_destroy_boxed_opaque_existential_0(v358);
    v265 = OUTLINED_FUNCTION_64_12();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v265, v266, v258);
    v268 = v320;
    if (EnumTagSinglePayload != 1)
    {
      sub_267B9F98C(v259, &qword_2802299A8, &unk_267F00CF0);
    }
  }

  else
  {
    v264 = v311;
    v269 = OUTLINED_FUNCTION_44_0();
    v268 = v320;
    (v320)(v269);
  }

  (v268)(v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_transformer, v264, v258);
  sub_267B9AFEC(&v373, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_featureFlags);
  sub_267B9AFEC(&v404, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_referenceResolver);
  v270 = (v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_disambiguationSnippetProvider);
  *v270 = v342;
  v270[1] = &off_2878D5360;
  sub_267B9AFEC(v401, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_siriKitEventSender);
  sub_267B9AFEC(v370, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_networkStatusProvider);
  sub_267B9AFEC(v397, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_userDefaults);
  sub_267EF7B68();
  OUTLINED_FUNCTION_18_32();
  v271 = v319;
  v272 = sub_267EF78E8();
  v273 = (v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessagePatterns);
  v273[3] = v271;
  v273[4] = &off_2878D1100;
  OUTLINED_FUNCTION_82_9(v272, v273);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v274, v275, v276);
  sub_267B9EF14(v453);
  v337(v336, v257);
  __swift_destroy_boxed_opaque_existential_0(v457);
  __swift_destroy_boxed_opaque_existential_0(v458);
  __swift_destroy_boxed_opaque_existential_0(&v459);
  OUTLINED_FUNCTION_59_0();
  sub_267B9F98C(v277, v278, v279);
  OUTLINED_FUNCTION_19_34();
  sub_267B9A5E8(&v394, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sharedContextService);
  sub_267B9A5E8(&v391, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_locationService);
  sub_267B9A5E8(&v367, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_ttsUtil);
  sub_267B9A5E8(&v364, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_contactResolver);
  memcpy(v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_sendMessageEventStore, v384, 0x60uLL);
  sub_267B9A5E8(&v381, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_appFinder);
  sub_267B9A5E8(&v361, v213 + OBJC_IVAR____TtC16SiriMessagesFlow27SendMessageBaseFlowStrategy_shareSheetProvider);
  sub_267B9A5E8(v412, (v213 + 2));
  __swift_destroy_boxed_opaque_existential_0(&v376);
  __swift_destroy_boxed_opaque_existential_0(&v379);
  __swift_destroy_boxed_opaque_existential_0(v385);
  __swift_destroy_boxed_opaque_existential_0(&v388);
  __swift_destroy_boxed_opaque_existential_0(v398);
  __swift_destroy_boxed_opaque_existential_0(&v407);
  __swift_destroy_boxed_opaque_existential_0(&v410);
  __swift_destroy_boxed_opaque_existential_0(v431);
  __swift_destroy_boxed_opaque_existential_0(v434);
  __swift_destroy_boxed_opaque_existential_0(&v437);
  __swift_destroy_boxed_opaque_existential_0(v441);
  __swift_destroy_boxed_opaque_existential_0(v444);
  __swift_destroy_boxed_opaque_existential_0(v447);
  *&v453[0] = v213;
  sub_267B9DEEC(&qword_28022C4C8, type metadata accessor for SendMessageNeedsConfirmationFlowStrategy, &unk_267F01BC8);
  OUTLINED_FUNCTION_71_7();
  sub_267EF35A8();
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_108();
  v280 = v347;
  sub_267EF3688();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v281 = sub_267BB4A3C();
  sub_267B9AFEC(v348 + 16, v453);
  v282 = type metadata accessor for CommonTemplateProvider();
  v283 = OUTLINED_FUNCTION_49(v282);
  v284 = type metadata accessor for TCCTemplateProvider();
  v285 = OUTLINED_FUNCTION_49(v284);
  v286 = v315;
  sub_267EF3DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C4D0, &qword_267F0AA18);
  v287 = swift_allocObject();
  *&v384[2] = &off_2878D2530;
  *(&v384[1] + 1) = v282;
  *&v384[0] = v283;
  v466 = v284;
  v467 = &off_2878D0E48;
  *&v465 = v285;
  v288 = v317;
  v463 = v317;
  v464 = &off_2878D0D80;
  v289 = __swift_allocate_boxed_opaque_existential_0(&v462);
  v290 = v316;
  (*(v316 + 16))(v289, v286, v288);
  v460 = &type metadata for MessagesFeatureFlagsImpl;
  v461 = off_2878D1228;
  (*(v290 + 8))(v286, v288);
  *(v287 + 224) = 0;
  *(v287 + 56) = v281;
  sub_267B9A5E8(v384, v287 + 64);
  sub_267B9A5E8(&v465, v287 + 104);
  sub_267B9A5E8(&v462, v287 + 144);
  sub_267B9A5E8(&v459, v287 + 184);
  sub_267B9A5E8(v453, v287 + 16);
  *&v453[0] = v287;
  sub_267BC1E20(&qword_28022C4D8, &qword_28022C4D0, &qword_267F0AA18, &unk_267F01168);
  sub_267EF35C8();
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_108();
  v291 = v352;
  sub_267EF36A8();
  v292 = OUTLINED_FUNCTION_108();
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(v292, v293);
  *&v453[0] = OUTLINED_FUNCTION_49(v294);
  OUTLINED_FUNCTION_59_0();
  sub_267BC1E20(v295, v296, v297, v298);
  OUTLINED_FUNCTION_71_7();
  sub_267EF3598();
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_108();
  sub_267EF3668();
  v299 = v314;
  (*(v314 + 16))(v313, v280, v291);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C4F0, &qword_267F0AA28);
  OUTLINED_FUNCTION_27_4();
  swift_allocObject();
  sub_267EF36D8();
  (*(v299 + 8))(v280, v291);
  OUTLINED_FUNCTION_47();
}

uint64_t type metadata accessor for SendMessageNeedsValueFlowStrategy(uint64_t a1)
{
  result = qword_28022D1F0;
  if (!qword_28022D1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267BF04E0()
{
  OUTLINED_FUNCTION_48_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C8A0, &qword_267F0B898);
  OUTLINED_FUNCTION_58();
  v4 = v3;
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = v10 - v6;
  v10[1] = v1;
  type metadata accessor for SendMessageRCHFlowStrategy(0);
  OUTLINED_FUNCTION_19_36();
  sub_267BC1DB4(v8, v9, &unk_267F025A0);

  sub_267EF3EE8();
  OUTLINED_FUNCTION_66();
  sub_267EF3ED8();
  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267BF0624()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267BF0708()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 304);
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

void OUTLINED_FUNCTION_119_0(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = a1;
  *(v3 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_119_2@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

uint64_t sub_267BF0818()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267BF08FC()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 16);
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for SendMessageNeedsConfirmationFlowStrategy(uint64_t a1)
{
  result = qword_28022A810;
  if (!qword_28022A810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267BF0A00@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_267BEB478(0xD000000000000017, 0x8000000267F18AD0);
  if (v3)
  {
    v4 = v3;
    result = sub_267BEB4DC();
    a1[3] = result;
    a1[4] = &off_2878D36E8;
    *a1 = v4;
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
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_267BA33E8(0xD000000000000037, 0x8000000267F18AF0, &v11);
      _os_log_impl(&dword_267B93000, v7, v8, "Fatal error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26D60A7B0](v10, -1, -1);
      MEMORY[0x26D60A7B0](v9, -1, -1);
    }

    result = sub_267EF9C98();
    __break(1u);
  }

  return result;
}

uint64_t sub_267BF0BD0()
{
  OUTLINED_FUNCTION_56();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_267BF1CB4;

  return sub_267BED0B8(v2);
}

uint64_t sub_267BF0C78()
{
  swift_allocObject();
  OUTLINED_FUNCTION_26_3();
  return sub_267BED408(v0, v1, v2);
}

uint64_t sub_267BF0CC8()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_62();
  sub_267BCDB80(v0 + 448);
  OUTLINED_FUNCTION_4_56();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_125();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_267BF0D5C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

double OUTLINED_FUNCTION_34_4()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_5(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

void *OUTLINED_FUNCTION_34_11()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v2);
}

uint64_t OUTLINED_FUNCTION_34_14()
{
  v2 = v0[144];
  v3 = v0[119];
  v4 = v0[118];
  *(v1 - 160) = v0[152];
  *(v1 - 152) = v4;
  result = v0[114];
  v6 = v0[111];
  *(v1 - 144) = v3;
  *(v1 - 136) = v6;
  *(v1 - 120) = v0[109];
  *(v1 - 112) = v2;
  *(v1 - 128) = v0[91];
  return result;
}

uint64_t OUTLINED_FUNCTION_34_18()
{
  *v1 = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_20()
{
  *(v1 + 368) = v0;
}

uint64_t OUTLINED_FUNCTION_34_22(uint64_t a1)
{
  *(v1 - 104) = a1;

  return sub_267EF6568();
}

uint64_t OUTLINED_FUNCTION_34_23()
{
  *(v1 + 520) = v0;
}

uint64_t OUTLINED_FUNCTION_34_24()
{
}

uint64_t OUTLINED_FUNCTION_34_25()
{

  return sub_267EF79B8();
}

uint64_t OUTLINED_FUNCTION_34_29()
{
}

uint64_t OUTLINED_FUNCTION_34_30()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
}

__n128 *OUTLINED_FUNCTION_34_31(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x64616F6C796170;
  result[2].n128_u64[1] = 0xE700000000000000;
  return result;
}

id OUTLINED_FUNCTION_34_33(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return v2;
}

uint64_t type metadata accessor for SendMessageHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_280229588;
  if (!qword_280229588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267BF1230()
{
  v14 = MEMORY[0x277D84F90];
  sub_267EF9BF8();
  v0 = 0;
  while (2)
  {
    v1 = byte_2878CA9B0[v0 + 32];
    v2 = 0xE900000000000074;
    v3 = 0x6E65697069636572;
    switch(byte_2878CA9B0[v0 + 32])
    {
      case 1u:
        OUTLINED_FUNCTION_19_31();
        v3 = v4 - 4;
        v2 = 0x8000000267F0FD90;
        goto LABEL_10;
      case 2u:
        OUTLINED_FUNCTION_19_31();
        v3 = v5 - 3;
        v2 = 0x8000000267F0FDB0;
        goto LABEL_10;
      case 3u:
        v2 = 0xE700000000000000;
        v3 = 0x746E65746E6F63;
        goto LABEL_10;
      case 4u:
        v2 = 0xE600000000000000;
        v3 = 0x746365666665;
        goto LABEL_10;
      case 5u:
LABEL_38:

        goto LABEL_39;
      case 6u:
        v2 = 0xEB00000000656D61;
        v3 = 0x4E65636976726573;
        goto LABEL_10;
      case 7u:
        v2 = 0xE600000000000000;
        v3 = 0x7265646E6573;
        goto LABEL_10;
      case 8u:
        v2 = 0xEB0000000073746ELL;
        v3 = 0x656D686361747461;
        goto LABEL_10;
      default:
LABEL_10:
        v6 = OUTLINED_FUNCTION_51_14(v3, v2);

        if ((v6 & 1) == 0)
        {
          OUTLINED_FUNCTION_39_18();
          v7 = v1;
          switch(v1)
          {
            case 0u:
              OUTLINED_FUNCTION_38_20();
              goto LABEL_19;
            case 1u:
              OUTLINED_FUNCTION_10_34();
              goto LABEL_19;
            case 2u:
              OUTLINED_FUNCTION_19_31();
              goto LABEL_19;
            case 3u:
              OUTLINED_FUNCTION_15_32();
              goto LABEL_19;
            case 4u:
              OUTLINED_FUNCTION_22_24();
              goto LABEL_19;
            case 5u:
              goto LABEL_19;
            case 6u:
              OUTLINED_FUNCTION_34_21();
              goto LABEL_19;
            case 7u:
              goto LABEL_38;
            case 8u:
              OUTLINED_FUNCTION_33_14();
LABEL_19:
              v8 = v7;
              v9 = sub_267EF9EA8();

              if ((v9 & 1) == 0)
              {
                OUTLINED_FUNCTION_22_24();
                v10 = v1;
                switch(v8)
                {
                  case 0:
                    OUTLINED_FUNCTION_38_20();
                    goto LABEL_28;
                  case 1:
                    OUTLINED_FUNCTION_10_34();
                    goto LABEL_28;
                  case 2:
                    OUTLINED_FUNCTION_19_31();
                    goto LABEL_28;
                  case 3:
                    OUTLINED_FUNCTION_15_32();
                    goto LABEL_28;
                  case 4:
                    goto LABEL_28;
                  case 5:
                    OUTLINED_FUNCTION_39_18();
                    goto LABEL_28;
                  case 6:
                    goto LABEL_38;
                  case 7:
                    OUTLINED_FUNCTION_21_25();
                    goto LABEL_28;
                  case 8:
                    OUTLINED_FUNCTION_33_14();
LABEL_28:
                    v11 = v10;
                    v12 = sub_267EF9EA8();

                    if ((v12 & 1) == 0)
                    {
                      OUTLINED_FUNCTION_22_24();
                      switch(v11)
                      {
                        case 0:
                          OUTLINED_FUNCTION_38_20();
                          goto LABEL_37;
                        case 1:
                          OUTLINED_FUNCTION_10_34();
                          goto LABEL_37;
                        case 2:
                          OUTLINED_FUNCTION_19_31();
                          goto LABEL_37;
                        case 3:
                          OUTLINED_FUNCTION_15_32();
                          goto LABEL_37;
                        case 4:
                          goto LABEL_37;
                        case 5:
                          OUTLINED_FUNCTION_39_18();
                          goto LABEL_37;
                        case 6:
                          OUTLINED_FUNCTION_34_21();
                          goto LABEL_37;
                        case 7:
                          OUTLINED_FUNCTION_21_25();
LABEL_37:
                          sub_267EF9EA8();

                          goto LABEL_39;
                        case 8:
                          goto LABEL_38;
                        default:
                          goto LABEL_41;
                      }
                    }

                    goto LABEL_39;
                  default:
                    goto LABEL_41;
                }
              }

              break;
            default:
LABEL_41:
              JUMPOUT(0);
          }
        }

LABEL_39:
        ++v0;
        sub_267EF3888();
        swift_allocObject();
        sub_267EF3878();
        sub_267EF9BD8();
        sub_267EF9C08();
        sub_267EF9C18();
        sub_267EF9BE8();
        if (v0 != 9)
        {
          continue;
        }

        return v14;
    }
  }
}

uint64_t sub_267BF1710(uint64_t a1)
{
  v2 = sub_267EF8B28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A428, &unk_267F00AF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-v10];
  sub_267BF6CEC(a1, &v17[-v10], &qword_28022A428, &unk_267F00AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v3 + 32);
    v12(v8, v11, v2);
    (*(v3 + 16))(v6, v8, v2);
    sub_267BFEA98(&qword_28022A430, MEMORY[0x277D55948], MEMORY[0x277D55950]);
    v13 = sub_267EF9E78();
    if (v13)
    {
      v14 = v13;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v14 = swift_allocError();
      v12(v16, v6, v2);
    }

    v18[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A420, &qword_267F00AE8);
    sub_267EF93B8();
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_267B9A5E8(v11, v18);
    sub_267B9B050(v18, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A420, &qword_267F00AE8);
    sub_267EF93C8();
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }
}

uint64_t sub_267BF19D8()
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
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_17();

    return v10();
  }
}

uint64_t sub_267BF1AF4()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_17();

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267BF1C14, 0, 0);
  }
}

uint64_t sub_267BF1C14()
{
  OUTLINED_FUNCTION_56();
  v0 = sub_267EF89F8();
  v1 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v1))
  {
    v2 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v2);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_26();
  }

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267BF1CB4()
{
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

unint64_t sub_267BF1D98()
{
  result = qword_28022A430;
  if (!qword_28022A430)
  {
    sub_267EF8B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A430);
  }

  return result;
}

uint64_t sub_267BF1DF0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));
  return v0;
}

uint64_t sub_267BF1E20()
{
  sub_267BF1DF0();

  return swift_deallocClassInstance();
}

uint64_t sub_267BF1E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendMessageRCHFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BF1F28;

  return MEMORY[0x2821BBB48](a1, a2, v9, a4);
}

uint64_t sub_267BF1F28()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_14();
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  OUTLINED_FUNCTION_4_3();

  return v5(v2);
}

uint64_t sub_267BF2010()
{
  OUTLINED_FUNCTION_56();
  *(v0 + 56) = sub_267BF326C(0x65736143657375, 0xE700000000000000);
  v1 = OUTLINED_FUNCTION_28_0();
  v2 = OUTLINED_FUNCTION_115_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_108_0(v2);
  v4 = OUTLINED_FUNCTION_28_2(27);

  return v5(v4);
}

uint64_t sub_267BF20D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_267EF4CC8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v4, a1);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
    (*(v16 + 32))(v18, v11, v15);
    v22 = sub_267EF4CB8();
    MEMORY[0x28223BE20](v22);
    *(&v21 - 4) = a1;
    *(&v21 - 3) = a2;
    *(&v21 - 2) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A328, &qword_267F00A48);
    sub_267BF23A4();
    v19 = sub_267EF9288();

    (*(v16 + 8))(v18, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
    sub_267E62030(v11);
    return sub_267EF9348();
  }

  return v19;
}

unint64_t sub_267BF23A4()
{
  result = qword_28022CAE0;
  if (!qword_28022CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022A328, &qword_267F00A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAE0);
  }

  return result;
}

void sub_267BF2428(void *a1, uint64_t a2)
{
  v4 = [a1 views];
  if (!v4)
  {
    v15 = 0;
    [a1 setViews_];
LABEL_16:

    return;
  }

  v5 = v4;
  sub_267BA9F38(0, &unk_28022BBA0, 0x277D47140);
  v6 = sub_267EF92F8();

  v7 = sub_267BAF0DC(v6);
  if (!v7)
  {
LABEL_15:

    v15 = sub_267EF92D8();

    [a1 setViews_];
    goto LABEL_16;
  }

  v8 = v7;
  sub_267EF9BF8();
  if (v8 < 0)
  {
    goto LABEL_21;
  }

  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D609870](v9, v6);
      goto LABEL_10;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v10 = *(v6 + 8 * v9 + 32);
LABEL_10:
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      sub_267BF86F0(v13, a2);
    }

    ++v9;
    sub_267EF9BD8();
    sub_267EF9C08();
    sub_267EF9C18();
    sub_267EF9BE8();
    if (v8 == v9)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_267BF2624()
{
  OUTLINED_FUNCTION_62();
  v1 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v3);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  v9 = *(v0 + 144);

  v10 = OUTLINED_FUNCTION_37_1();
  v11(v10);
  sub_267B9A5E8((v0 + 16), v9);

  OUTLINED_FUNCTION_1();

  return v12();
}

double OUTLINED_FUNCTION_217()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_217_1(uint64_t a1)
{
  *(v1 + 280) = a1;

  return sub_267EF3D88();
}

uint64_t sub_267BF2768()
{
  OUTLINED_FUNCTION_56();
  sub_267ECFBDC();
  OUTLINED_FUNCTION_424();
  v0 = 1;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_516();
      goto LABEL_4;
    case 2:
      OUTLINED_FUNCTION_125_7();
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      sub_267EF90F8();

      v0 = 0;
LABEL_5:
      sub_267EF79B8();
      v2 = OUTLINED_FUNCTION_240_1();
      __swift_storeEnumTagSinglePayload(v2, v0, 1, v3);
      v4 = OUTLINED_FUNCTION_108();
      sub_267BF3128(v4, v5, v6, v7);

      OUTLINED_FUNCTION_1();

      return v8();
  }
}

uint64_t sub_267BF2870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  a25 = v28;
  a26 = v29;
  OUTLINED_FUNCTION_116();
  a24 = v26;
  v30 = *(v26 + 344);
  v31 = *(v26 + 336);
  OUTLINED_FUNCTION_241_1();
  sub_267EF4938();
  sub_267EF44B8();
  v32 = *(v30 + 8);
  *(v26 + 360) = v32;
  *(v26 + 368) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33 = OUTLINED_FUNCTION_26_0();
  v32(v33);
  v34 = OUTLINED_FUNCTION_65_5();
  v36 = sub_267C7C240(v34, v35);
  *(v26 + 464) = v36;
  if (v36 == 9)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v37 = sub_267EF8A08();
    v38 = __swift_project_value_buffer(v37, qword_280240FB0);
    v39 = OUTLINED_FUNCTION_108();
    v40(v39);
    v41 = sub_267EF89F8();
    v42 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_36(v42))
    {
      v43 = *(v26 + 352);
      HIDWORD(a12) = v38;
      v45 = *(v26 + 288);
      v44 = *(v26 + 296);
      a10 = *(v26 + 280);
      a11 = *(v26 + 336);
      OUTLINED_FUNCTION_48();
      a13 = OUTLINED_FUNCTION_55_0();
      a14 = a13;
      *v38 = 136315138;
      sub_267EF4938();
      sub_267EF44B8();
      v46 = OUTLINED_FUNCTION_186_2();
      (v32)(v46, a11);
      (*(v45 + 8))(v44, a10);
      v47 = sub_267BA33E8(v43, v27, &a14);

      *(v38 + 4) = v47;
      OUTLINED_FUNCTION_52_18(&dword_267B93000, v48, v38, "#SendMessageNeedsValueFlowStrategy unknown parameter: %s");
      __swift_destroy_boxed_opaque_existential_0(a13);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v58 = OUTLINED_FUNCTION_108();
      v59(v58);
    }

    OUTLINED_FUNCTION_241_1();
    sub_267EF4938();
    v60 = sub_267EF44B8();
    v62 = v61;
    v63 = OUTLINED_FUNCTION_26_0();
    v32(v63);
    v64 = sub_267C4BE60();
    OUTLINED_FUNCTION_61_1(&type metadata for Errors, v64);
    *v65 = v60;
    v65[1] = v62;
    swift_willThrow();

    OUTLINED_FUNCTION_17();
LABEL_14:
    OUTLINED_FUNCTION_89();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v49 = v36;
  v50 = *(*(v26 + 264) + 56);
  if (*(v50 + 320) == 1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v51 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v51, qword_280240FB0);
    v52 = sub_267EF89F8();
    v53 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v53))
    {
      OUTLINED_FUNCTION_48();
      v54 = OUTLINED_FUNCTION_64_2();
      a14 = v54;
      *v31 = 136315138;
      v55 = sub_267C7C28C(v49);
      v57 = sub_267BA33E8(v55, v56, &a14);

      *(v31 + 4) = v57;
      _os_log_impl(&dword_267B93000, v52, v53, "#SendMessageNeedsValueFlowStrategy request triggered by change via snippet, supressing prompt for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    *(v50 + 320) = 0;
    sub_267EF3D38();
    sub_267EF3D28();
    OUTLINED_FUNCTION_164_2();

    OUTLINED_FUNCTION_1();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_241_1();
  v75 = sub_267EF4918();
  v76 = sub_267EF97C8();
  *(v26 + 376) = v76;

  if (v49 == 3 && sub_267D60D20())
  {
    v77 = *(v50 + 56);
    if (v77)
    {
      v78 = *(v50 + 48);
      *(v26 + 240) = MEMORY[0x277D837D0];
      *(v26 + 216) = v78;
      *(v26 + 224) = v77;

      OUTLINED_FUNCTION_5_72();
      sub_267ECE45C();
      sub_267B9F98C(v26 + 216, &qword_28022AEF0, &qword_267EFCDE0);
    }
  }

  v80 = sub_267C7C28C(v49) == 0x6E65697069636572 && v79 == 0xE900000000000074;
  if (v80 || ((sub_267EF9EA8(), OUTLINED_FUNCTION_54_1(), , sub_267C7C28C(v49) == 0x746E65746E6F63) ? (v82 = v81 == 0xE700000000000000) : (v82 = 0), v82))
  {

    v89 = *(v26 + 264);
    OUTLINED_FUNCTION_121_6(v89 + 2);
    v90 = OUTLINED_FUNCTION_10_3();
    v91(v90);
    OUTLINED_FUNCTION_131((v26 + 136));
    if (sub_267BF30D0())
    {
      v92 = sub_267EF96C8();
    }

    else
    {
      v92 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0((v26 + 136));
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v93 = sub_267EF8A08();
    __swift_project_value_buffer(v93, qword_280240FB0);
    OUTLINED_FUNCTION_156_2();

    v94 = v76;
    v95 = sub_267EF89F8();
    v96 = sub_267EF95D8();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 67109632;
      *(v97 + 4) = v92 & 1;
      *(v97 + 8) = 1024;
      v98 = v92;
      v100 = v89[5];
      v99 = v89[6];
      v101 = v89 + 2;
      v102 = v98;
      __swift_project_boxed_opaque_existential_0(v101, v100);
      v110 = v96;
      (*(v99 + 8))(v100, v99);
      OUTLINED_FUNCTION_131((v26 + 176));
      v103 = sub_267BF30D0();
      __swift_destroy_boxed_opaque_existential_0((v26 + 176));
      *(v97 + 10) = v103 & 1;

      *(v97 + 14) = 1024;
      *(v97 + 16) = sub_267EF96C8() & 1;

      _os_log_impl(&dword_267B93000, v95, v110, "#SendMessageNeedsValueFlowStrategy shouldReturnSMARTOutput : %{BOOL}d because device supports smart : %{BOOL}d and isTextMessage : %{BOOL}d ", v97, 0x14u);
      OUTLINED_FUNCTION_32_0();
    }

    else
    {

      v95 = v94;
      v102 = v92;
    }

    *(v26 + 384) = sub_267EF4908();
    if (v102)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v26 + 392) = v104;
      *v104 = v105;
      OUTLINED_FUNCTION_155_4(v104);
      OUTLINED_FUNCTION_89();

      return sub_267ED6624();
    }

    else
    {
      OUTLINED_FUNCTION_241_1();
      *(v26 + 408) = sub_267EF4928();
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v26 + 416) = v107;
      *v107 = v108;
      OUTLINED_FUNCTION_155_4(v107);
      OUTLINED_FUNCTION_89();

      return sub_267ED2EF8();
    }
  }

  else
  {
    sub_267EF9EA8();
    OUTLINED_FUNCTION_54_1();

    *(v26 + 432) = sub_267EF4908();
    *(v26 + 440) = sub_267EF4918();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v26 + 448) = v83;
    *v83 = v84;
    v83[1] = sub_267ED2904;
    OUTLINED_FUNCTION_89();

    return sub_267ED88A4(v85, v86, v87, v88);
  }
}

uint64_t sub_267BF30D0()
{
  OUTLINED_FUNCTION_7_5();
  if (sub_267DBF878())
  {
    return 1;
  }

  OUTLINED_FUNCTION_3();

  return sub_267EF3BE8();
}

uint64_t sub_267BF3128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_123(a1, a2, a3, a4);
  OUTLINED_FUNCTION_22();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return v4;
}

uint64_t sub_267BF3174()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BF326C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v5 = OUTLINED_FUNCTION_18(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802292A8, &unk_267EFCE00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_267EFCC90;
  OUTLINED_FUNCTION_12_1();
  *(v9 + 32) = 0xD000000000000017;
  *(v9 + 40) = v10;
  v11 = MEMORY[0x277D839B0];
  *(v9 + 48) = 0;
  *(v9 + 72) = v11;
  *(v9 + 80) = a1;
  *(v9 + 88) = a2;
  OUTLINED_FUNCTION_178();
  sub_267BC9B04(v12, v13, v14, &qword_267EFC0B0);
  v15 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
  {
    sub_267B9FED8(v7, &unk_28022AE30, &qword_267EFC0B0);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v15;
    __swift_allocate_boxed_opaque_existential_0((v8 + 96));
    OUTLINED_FUNCTION_5_0();
    (*(v16 + 32))();
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_114_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = (v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000) + 1;
  *(a1 + 40) = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_114_4()
{

  return sub_267EF8A08();
}

void OUTLINED_FUNCTION_114_5()
{
}

void OUTLINED_FUNCTION_114_7()
{

  JUMPOUT(0x26D609870);
}

uint64_t OUTLINED_FUNCTION_114_9()
{
}

uint64_t sub_267BF34C8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_267BF35F8, 0, 0);
  }
}

uint64_t sub_267BF35F8()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);
    v3 = v1[3];
    v2 = v1[4];
    __swift_project_boxed_opaque_existential_0(v1, v3);
    v4 = sub_267BA9F38(0, &qword_28022CAD0, 0x277D479E8);
    v5 = sub_267BF20D0(v3, v4, v2);
    if (sub_267BAF0DC(v5))
    {
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
      v8 = *(v0 + 24);

      sub_267BF2428(v7, v8);
    }

    else
    {
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

id sub_267BF3718@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  result = swift_dynamicCastUnknownClass();
  v6 = result;
  if (result)
  {
    result = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_267BF3768()
{
  OUTLINED_FUNCTION_12();
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
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BF3878()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 424) = v0;

  OUTLINED_FUNCTION_22_2();

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267BF39AC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_164_2();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t *OUTLINED_FUNCTION_158_0()
{
  *(v0 + 264) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 240));
}

uint64_t sub_267BF3A80(uint64_t a1)
{
  v2 = sub_267EF6D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267EF6F58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v10 = sub_267EF8A08();
  __swift_project_value_buffer(v10, qword_280240FB0);
  (*(v7 + 16))(v9, a1, v6);
  v11 = sub_267EF89F8();
  v12 = sub_267EF95D8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v2;
    v14 = v13;
    v22 = swift_slowAlloc();
    v24 = v22;
    *v14 = 136315138;
    sub_267EF6F28();
    v15 = sub_267EF6D08();
    v23 = a1;
    v17 = v16;
    (*(v3 + 8))(v5, v21);
    (*(v7 + 8))(v9, v6);
    v18 = sub_267BA33E8(v15, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_267B93000, v11, v12, "#Donation+Utilities: Donating %s to Siri Remembers", v14, 0xCu);
    v19 = v22;
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26D60A7B0](v19, -1, -1);
    MEMORY[0x26D60A7B0](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_267EF6F38();
}

uint64_t _s11SiriKitFlow12StaticActionP0a8MessagesC0E16debugDescriptionSSvg_0(uint64_t a1)
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  return sub_267EF9098();
}

uint64_t sub_267BF3DC4()
{
  v14 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = v0[50];
  v0[54] = __swift_project_value_buffer(v0[51], qword_280240FB0);
  swift_unknownObjectRetain();
  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[50];
    swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_55_0();
    v13 = v5;
    *v1 = 136315138;
    v0[47] = v4;
    v6 = sub_267EF9EB8();
    v8 = sub_267BA33E8(v6, v7, &v13);

    *(v1 + 4) = v8;
    _os_log_impl(&dword_267B93000, v2, v3, "#ReadAction %s is running", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v12 = (*(v0[49] + 80) + **(v0[49] + 80));
  v9 = swift_task_alloc();
  v0[55] = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_18_6(v9);

  return v12(v10);
}

uint64_t sub_267BF3FE0(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  v5 = v1[8];
  sub_267EF2CB8();
  sub_267BD974C(v5, (v1 + 2));
  v6 = v1[5];
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v6);
  OUTLINED_FUNCTION_42_7();
  v9 = v8(v6, v7);

  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  sub_267BF95F4(sub_267BF98FC, v10, v9);

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_17();

  return v11();
}

uint64_t sub_267BF4118()
{

  return swift_deallocClassInstance();
}

uint64_t sub_267BF4170(uint64_t a1)
{
  v1 = sub_267BF42CC(a1);
  v2 = sub_267BE6268();
  v3 = v2;
  v4 = (v2 & 1) != 0 && sub_267E2B4DC(v2);
  type metadata accessor for MessagesReadingRequestDialogContext();
  v5 = sub_267BF4314(*&v1, 0, v3 & 1, v4);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v6 = qword_280240FC8;
  v7 = sub_267EF95D8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v9 = OUTLINED_FUNCTION_9_14(v8);
  *(v9 + 16) = xmmword_267EFC020;
  sub_267EF9C58();
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_267BFBEB4();
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  sub_267EF8998("#MessagesDialogContextFactory ReadingRequestDialogContext: %@", 61, 2, &dword_267B93000, v6, v7, v9);

  return v5;
}

uint64_t sub_267BF42CC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_58(a1);
  v2 = *(v1 + 56);
  if (v2 >> 62)
  {
    return sub_267EF9A68();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_267BF4314(uint64_t a1, char a2, char a3, char a4)
{
  type metadata accessor for MessagesReadingRequestDialogContext.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2 & 1;
  *(inited + 25) = a3;
  *(inited + 26) = a4;
  type metadata accessor for MessagesReadingRequestDialogContext();
  v9 = swift_allocObject();
  sub_267BFBF74(inited);
  return v9;
}

uint64_t sub_267BF43D0(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_267BF47B8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  swift_getWitnessTable();
  *v2 = v1;
  v2[1] = sub_267BBD07C;

  return sub_267BF9538();
}

uint64_t sub_267BF4878()
{
  OUTLINED_FUNCTION_12();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_267EF2CC8();
  v1[10] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

BOOL sub_267BF4920()
{
  if (*(v0 + 120))
  {
    return 1;
  }

  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    v3 = sub_267EF9A68();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > 1;
}

void *sub_267BF4998(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = *(a1 + 16);
  v2 = *(a1 + 24);

  v1[4] = v2;
  return v1;
}

uint64_t sub_267BF49F0()
{
  sub_267BFC094();

  return swift_deallocClassInstance();
}

void *sub_267BF4A24(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = OUTLINED_FUNCTION_8_16();
  v9(v8);
  OUTLINED_FUNCTION_76();
  if (!sub_267BAF0DC(v10))
  {

    return 0;
  }

  OUTLINED_FUNCTION_97_3();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x26D609870](0, v2);
  }

  else
  {
    v11 = *(v2 + 32);
  }

  v12 = v11;

  v13 = v12;
  if ((sub_267BE8214() & 1) == 0)
  {
    v16 = [v12 sender];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_74_0();

      return v13;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v19 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v19, qword_280240FB0);
    v20 = sub_267EF89F8();
    v21 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v21))
    {
      goto LABEL_20;
    }

LABEL_19:
    v24 = OUTLINED_FUNCTION_32();
    *v24 = 0;
    OUTLINED_FUNCTION_45();
    _os_log_impl(v25, v26, v27, v28, v24, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_20:

    return 0;
  }

  v14 = [v12 groupName];
  if (!v14)
  {
    sub_267C7FEA8();
    v13 = v7;
    sub_267EFA028();
    OUTLINED_FUNCTION_74_0();
    sub_267BD6C8C(v7, &qword_2802295B8);
    if (a2)
    {

      return v13;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v20 = sub_267EF89F8();
    v23 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_27(v23))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v13 = v14;
  v15 = [v14 spokenPhrase];

  sub_267EF9028();
  OUTLINED_FUNCTION_74_0();

  return v13;
}

uint64_t sub_267BF4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_267BD5D40;

  return sub_267BFC0BC();
}

uint64_t sub_267BF4DDC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  *v4 = *v1;
  v3[16] = v5;
  v3[17] = v6;
  v3[18] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267BF4EE8()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    _swift_stdlib_malloc_size(v8);
    OUTLINED_FUNCTION_7_14();
    v8[2] = v2;
    v8[3] = v9;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v8 != v0 || &v11[16 * v2] <= v10)
    {
      memmove(v10, v11, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_267BF4FB8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  swift_getWitnessTable();
  *v2 = v1;
  v2[1] = sub_267BBD07C;

  return sub_267BF4878();
}

uint64_t sub_267BF5078(char a1, char a2, char a3, char a4, char a5, char a6, uint64_t a7, char a8, char a9)
{
  type metadata accessor for MessagesConversationDialogContext.Builder();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = a1;
  *(inited + 17) = a2;
  *(inited + 18) = a3;
  *(inited + 19) = a4;
  *(inited + 20) = a5;
  *(inited + 21) = a6;
  sub_267BFB984(a7);

  *(inited + 32) = a8;
  *(inited + 33) = a9;
  type metadata accessor for MessagesConversationDialogContext();
  v18 = swift_allocObject();
  sub_267BFB9C8(inited);

  return v18;
}

uint64_t sub_267BF5154()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v0[2] = v1;
    v0[3] = v2;
    if (qword_2802287D0 != -1)
    {
      OUTLINED_FUNCTION_38_17();
      swift_once();
    }

    __swift_project_value_buffer(v0[10], qword_280240EC0);
    sub_267BB5034();
    OUTLINED_FUNCTION_54_11();
    sub_267EF9908();
    if ((v4 & 1) != 0 && (v5 = v0[17], v7 = v0[11], v6 = v0[12], v8 = v0[10], v0[4] = v0[16], v0[5] = v5, sub_267DE9348(v6), sub_267EF9908(), v10 = v9, (*(v7 + 8))(v6, v8), (v10 & 1) == 0))
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v22 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
      v23 = sub_267EF89F8();
      v24 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v24))
      {
        v25 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v25);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v26, v27, v28, v29, v30, 2u);
        OUTLINED_FUNCTION_26();
      }

      v31 = v0[9];

      v12 = sub_267D5EA7C(v31);
      v2 = v32;

      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = v0[16];
    }
  }

  else
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
      v11 = 2;
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_26();

      v12 = 0;
      v2 = 0;
    }

    else
    {

      v12 = 0;
      v2 = 0;
      v11 = 2;
    }
  }

  v33 = v0[6];

  *v33 = v12;
  *(v33 + 8) = v2;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v11;
  OUTLINED_FUNCTION_17();

  return v34();
}

void sub_267BF5414(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v34 = a6;
  v30 = a4;
  v31 = a5;
  v9 = sub_267EF2E38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  sub_267BA9F38(0, &qword_28022A0B8, 0x277CBEAF8);

  v32 = v14;
  v33 = v13;
  v15 = sub_267BF952C(v14, v13);
  v16 = [v15 languageCode];

  sub_267EF9028();

  v17 = sub_267BF952C(a2, a3);
  sub_267EF2D38();
  v18 = sub_267EF2D98();
  (*(v10 + 8))(v12, v9);
  LODWORD(v12) = [v17 isEquivalentTo_];

  if (v12)
  {
    v19 = v34;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v20 = sub_267EF8A08();
    __swift_project_value_buffer(v20, qword_280240FB0);
    v21 = v33;

    v22 = v31;

    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v32;
    if (v25)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_267BA33E8(v30, v22, &v35);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_267BA33E8(v26, v21, &v35);
      _os_log_impl(&dword_267B93000, v23, v24, "#TTSUtil match for %s and %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D60A7B0](v28, -1, -1);
      MEMORY[0x26D60A7B0](v27, -1, -1);
    }

    *v19 = v26;
    v19[1] = v21;
  }

  else
  {
    v29 = v34;
    *v34 = 0;
    v29[1] = 0;
  }
}

unint64_t sub_267BF5748()
{
  result = qword_280229168;
  if (!qword_280229168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28022BCB0, &unk_267EFCA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280229168);
  }

  return result;
}

uint64_t sub_267BF57AC()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 168) = v1;
  *(v0 + 176) = v14;
  *(v0 + 337) = v2;
  *(v0 + 152) = v3;
  *(v0 + 160) = v4;
  *(v0 + 336) = v5;
  *(v0 + 136) = v6;
  *(v0 + 144) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  OUTLINED_FUNCTION_18(v8);
  *(v0 + 184) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294B0, &qword_267F001F0);
  OUTLINED_FUNCTION_18(v9);
  *(v0 + 192) = swift_task_alloc();
  *(v0 + 200) = swift_task_alloc();
  *(v0 + 208) = sub_267EF8AE8();
  OUTLINED_FUNCTION_34_2();
  *(v0 + 216) = v10;
  *(v0 + 224) = swift_task_alloc();
  *(v0 + 232) = swift_task_alloc();
  *(v0 + 240) = sub_267EF53D8();
  OUTLINED_FUNCTION_34_2();
  *(v0 + 248) = v11;
  *(v0 + 256) = swift_task_alloc();
  *(v0 + 264) = swift_task_alloc();
  *(v0 + 272) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BF596C, 0, 0);
}

uint64_t sub_267BF596C()
{
  v119 = v0;
  if (qword_280228900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = sub_267BB8DFC();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022B100, &unk_267EFC850);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_267EFCE30;
  *(v5 + 32) = sub_267BB90E4(1);
  *(v5 + 40) = v6;
  *(v5 + 48) = sub_267BB90E4(0);
  *(v5 + 56) = v7;
  *(v5 + 64) = sub_267BB90E4(7);
  *(v5 + 72) = v8;
  sub_267BF641C(v2, v4, v5, v1 & 1);
  sub_267BF6550(v1 & 1);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248);
  v13 = sub_267EF8A08();
  *(v0 + 280) = __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = *(v12 + 16);
  v14(v10, v9, v11);
  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 264);
  if (v17)
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 240);
    log = v15;
    v22 = OUTLINED_FUNCTION_48();
    v117 = OUTLINED_FUNCTION_52();
    v118 = v117;
    *v22 = 136315138;
    v14(v20, v18, v21);
    sub_267EF5458();
    *(v0 + 40) = v21;
    *(v0 + 48) = sub_267BF65C0();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    v14(boxed_opaque_existential_0, v20, v21);
    v24 = sub_267EF5448();
    v25 = v14;
    v27 = v26;
    v115 = v16;
    v28 = *(v19 + 8);
    v29 = v20;
    v30 = v25;
    v28(v29, v21);
    v28(v18, v21);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v31 = sub_267BA33E8(v24, v27, &v118);

    *(v22 + 4) = v31;
    _os_log_impl(&dword_267B93000, log, v115, "#makeOfferNLContextUpdate submitting NLv4 dialog act: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v117);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v30 = v14;
    v33 = *(v0 + 240);
    v32 = *(v0 + 248);

    v28 = *(v32 + 8);
    v28(v18, v33);
  }

  *(v0 + 288) = v28;
  v34 = *(v0 + 272);
  v35 = *(v0 + 240);
  v36 = *(v0 + 144);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v38 = OUTLINED_FUNCTION_30_21(v37);
  *(v38 + 16) = xmmword_267EFC020;
  v30(v18 + v38, v34, v35);
  sub_267EF4088();
  if (!v36)
  {
    goto LABEL_27;
  }

  v39 = *(v0 + 144);
  v40 = sub_267BF6698();
  if (v40)
  {
    v41 = v40;
    v42 = sub_267BE8214();

    if (v42)
    {
      v43 = sub_267BF6698();
      if (v43 && (v44 = v43, v45 = [v43 groupName], v44, v45))
      {
        v47 = *(v0 + 200);
        v46 = *(v0 + 208);
        v48 = *(v0 + 184);
        sub_267EF8A78();
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
        sub_267EB8B0C(v48, v47);

        sub_267B9FF34(v48, &unk_28022BAE0, &unk_267F07D80);
        if (__swift_getEnumTagSinglePayload(v47, 1, v46) != 1)
        {
          v53 = *(v0 + 232);
          v54 = *(v0 + 208);
          v55 = *(v0 + 216);
          (*(v55 + 32))(v53, *(v0 + 200), v54);
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
          v57 = OUTLINED_FUNCTION_30_21(v56);
          *(v57 + 16) = xmmword_267EFC020;
          (*(v55 + 16))(v18 + v57, v53, v54);
          sub_267EF4058();
          v58 = sub_267EF89F8();
          v59 = sub_267EF95D8();
          v60 = os_log_type_enabled(v58, v59);
          v61 = *(v0 + 232);
          v62 = *(v0 + 208);
          v63 = *(v0 + 216);
          if (v60)
          {
            v64 = OUTLINED_FUNCTION_32();
            *v64 = 0;
            _os_log_impl(&dword_267B93000, v58, v59, "#makeOfferNLContextUpdate #ReferenceResolution Donating group message entity to SRR", v64, 2u);
            OUTLINED_FUNCTION_32_0();
          }

          (*(v63 + 8))(v61, v62);
          goto LABEL_24;
        }
      }

      else
      {
        OUTLINED_FUNCTION_78();
        __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
      }

      sub_267B9FF34(*(v0 + 200), &qword_2802294B0, &qword_267F001F0);
    }
  }

  v69 = sub_267BF6698();
  if (v69)
  {
    v70 = v69;
    v71 = [v69 sender];

    if (v71)
    {
      v72 = *(v0 + 184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
      *(swift_allocObject() + 16) = xmmword_267EFC020;
      sub_267EF8A78();
      OUTLINED_FUNCTION_78();
      __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
      sub_267BF66B0();
      sub_267B9FF34(v72, &unk_28022BAE0, &unk_267F07D80);
      sub_267EF4058();
      v77 = v71;
      v78 = sub_267EF89F8();
      v79 = sub_267EF95D8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = OUTLINED_FUNCTION_48();
        v81 = OUTLINED_FUNCTION_52();
        v118 = v81;
        *v80 = 136315138;
        v82 = [v77 displayName];
        v83 = sub_267EF9028();
        v30 = v84;

        v85 = sub_267BA33E8(v83, v30, &v118);

        *(v80 + 4) = v85;
        _os_log_impl(&dword_267B93000, v78, v79, "#makeOfferNLContextUpdate #ReferenceResolution Donating sender %s to SRR", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        OUTLINED_FUNCTION_32_0();
        OUTLINED_FUNCTION_32_0();
      }

      else
      {
      }
    }
  }

LABEL_24:
  result = sub_267BAF0DC(v39);
  *(v0 + 296) = result;
  if (!result)
  {
LABEL_27:
    sub_267EF4098();
    v89 = sub_267EF4748();
    OUTLINED_FUNCTION_97(v89);
    sub_267EF4738();
    if (qword_2802288F8 != -1)
    {
      OUTLINED_FUNCTION_6_37(&qword_2802288F8);
    }

    v90 = sub_267EF5648();
    OUTLINED_FUNCTION_17_20(v90, v91);

    if (qword_2802288B0 != -1)
    {
      OUTLINED_FUNCTION_5_43(&qword_2802288B0);
    }

    OUTLINED_FUNCTION_3_45();
    v92 = sub_267EF5648();
    OUTLINED_FUNCTION_27_20(v92, v93);

    sub_267EF4728();

    sub_267EF4138();
    sub_267EF4128();
    v114(v30);

    OUTLINED_FUNCTION_17();

    return v94();
  }

  v87 = *(v0 + 144);
  if ((v87 & 0xC000000000000001) != 0)
  {
    v88 = MEMORY[0x26D609870](0);
  }

  else
  {
    if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v88 = *(v87 + 32);
  }

  *(v0 + 304) = v88;
  *(v0 + 312) = 1;
  v95 = [v88 content];
  if (v95)
  {
    v96 = v95;
    sub_267EF9028();
    v98 = v97;

    v99 = OUTLINED_FUNCTION_29_17();
    if (OUTLINED_FUNCTION_12_25(v0 + 72, MEMORY[0x277D837D0]))
    {
      OUTLINED_FUNCTION_16_23();
      v100 = OUTLINED_FUNCTION_12_25(v0 + 104, MEMORY[0x277D837D0]);

      if (v100)
      {
        OUTLINED_FUNCTION_28_23();
        if (__swift_getEnumTagSinglePayload(v99, 1, v98) == 1)
        {
          sub_267B9FF34(*(v0 + 192), &qword_2802294B0, &qword_267F001F0);
        }

        else
        {
          v102 = OUTLINED_FUNCTION_15_27();
          v103(v102);
          v104 = sub_267EF89F8();
          v105 = sub_267EF95D8();
          if (os_log_type_enabled(v104, v105))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_26_22(&dword_267B93000, v106, v107, "#makeOfferNLContextUpdate #ReferenceResolution Donating music RREntity to SRR");
            OUTLINED_FUNCTION_32_0();
          }

          v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
          v109 = OUTLINED_FUNCTION_13_30(v108);
          v110 = OUTLINED_FUNCTION_14_29(v109, xmmword_267EFC020);
          v111(v110);
          v112 = sub_267EF4048();
          if (v112)
          {
            *(v0 + 128) = v112;

            sub_267C9B520(v113);
            sub_267EF4058();
          }

          else
          {
            sub_267EF4058();
          }

          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
        }
      }
    }

    else
    {
    }
  }

  v101 = swift_task_alloc();
  *(v0 + 320) = v101;
  *v101 = v0;
  OUTLINED_FUNCTION_4_43(v101);

  return sub_267BF6D4C();
}

uint64_t sub_267BF641C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_267EF4148();
  sub_267EF40D8();
  sub_267EF4108();
  v4 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v5 = sub_267EF9028();
  sub_267BF64EC(v5, v6, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_267EFCA40;
  *(v7 + 32) = v4;
  return sub_267EF40F8();
}

void sub_267BF64EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setReason_];
}

uint64_t sub_267BF6550(char a1)
{
  if (a1)
  {
    v1 = sub_267EF6428();
    OUTLINED_FUNCTION_97(v1);
    sub_267EF6418();
  }

  else
  {
    v2 = sub_267EF6488();
    OUTLINED_FUNCTION_97(v2);
    sub_267EF6478();
  }

  sub_267BBB050();
}

unint64_t sub_267BF65C0()
{
  result = qword_28022BAF0;
  if (!qword_28022BAF0)
  {
    sub_267EF53D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BAF0);
  }

  return result;
}

char *sub_267BF6618()
{
  OUTLINED_FUNCTION_53_5();
  if (!v2)
  {
    result = OUTLINED_FUNCTION_85_3();
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v1(result - 1, (v0 & 0xC000000000000001) == 0, v0);
      if ((v0 & 0xC000000000000001) == 0)
      {
        return *(v0 + 8 * v4 + 32);
      }
    }

    v5 = OUTLINED_FUNCTION_3();
    return MEMORY[0x26D609870](v5);
  }

  result = OUTLINED_FUNCTION_63_4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_267BF66B0()
{
  OUTLINED_FUNCTION_48_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C288, &unk_267F09BF0);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  OUTLINED_FUNCTION_104();
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  sub_267EF7028();
  v11 = sub_267EF7038();
  v39 = v0;
  v12 = 0;
  v11(&v41, &v39);
  v37 = v10;
  v38 = v4;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = v0;

  v15 = sub_267EF89F8();
  v16 = sub_267EF95D8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v2;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = v19;
    v34 = swift_slowAlloc();
    v39 = v34;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v20 = v14;
    v41 = sub_267EF56B8();
    sub_267EF6798();
    v36 = 0;
    v21 = v5;
    sub_267BF6B78();
    v22 = sub_267EF9E58();
    v24 = v23;

    v25 = sub_267BA33E8(v22, v24, &v39);
    v5 = v21;
    v12 = v36;

    *(v18 + 14) = v25;
    _os_log_impl(&dword_267B93000, v15, v16, "INPerson-RRaaS: Transformed person %@ to USO entity %s", v18, 0x16u);
    sub_267B9FED8(v33, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_32_0();
    v2 = v35;
    OUTLINED_FUNCTION_32_0();
  }

  sub_267EF56B8();

  sub_267BF6BD0(v2, v38);
  if (v12)
  {

    v39 = 0;
    v40 = 0xE000000000000000;
    sub_267EF9B68();
    MEMORY[0x26D608E60](0xD00000000000002ELL, 0x8000000267F1A850);
    v41 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    sub_267EF9C58();
    v27 = v39;
    v26 = v40;
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);

    v29 = sub_267EF89F8();
    v30 = sub_267EF95E8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_267BA33E8(v27, v26, &v39);
      _os_log_impl(&dword_267B93000, v29, v30, "Fatal error: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }

    sub_267EF9C98();
    __break(1u);
  }

  else
  {
    (*(v7 + 8))(v37, v5);

    OUTLINED_FUNCTION_47();
  }
}

unint64_t sub_267BF6B78()
{
  result = qword_28022C290;
  if (!qword_28022C290)
  {
    sub_267EF6798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022C290);
  }

  return result;
}

uint64_t sub_267BF6BD0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_267BBDEAC();
  sub_267BF6CEC(a2, v7, &unk_28022BAE0, &unk_267F07D80);
  sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);

  v8 = v3;
  return sub_267EF8AB8();
}

uint64_t sub_267BF6CEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0();
  v5 = OUTLINED_FUNCTION_61_0();
  v6(v5);
  return a2;
}

uint64_t sub_267BF6D4C()
{
  OUTLINED_FUNCTION_12();
  v1[62] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BAE0, &unk_267F07D80);
  v1[63] = swift_task_alloc();
  v2 = sub_267EF2D28();
  v1[64] = v2;
  v1[65] = *(v2 - 8);
  v1[66] = swift_task_alloc();
  v3 = sub_267EF8AE8();
  v1[67] = v3;
  v1[68] = *(v3 - 8);
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_267BF6EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, unint64_t a21, uint64_t a22, void *a23, void (*a24)(uint64_t, uint64_t), uint64_t a25, unint64_t a26, unint64_t a27, uint64_t a28, uint64_t (**a29)(uint64_t, uint64_t, uint64_t), uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  OUTLINED_FUNCTION_48_22();
  a44 = v48;
  a45 = v49;
  OUTLINED_FUNCTION_59_15();
  a43 = v46;
  v50 = v46;
  v51 = [*(v46 + 496) linkMetadata];
  *(v46 + 576) = v51;
  if (v51)
  {
    v52 = v51;
    *(v46 + 584) = sub_267EF42D8();
    *(v46 + 592) = sub_267EF6FF8();
    v53 = v52;
    sub_267EF6FE8();
    sub_267EF6FB8();

    sub_267EF42C8();

    type metadata accessor for AppleMapsLinkParser();
    *(v46 + 600) = swift_initStackObject();
    v54 = sub_267C77354(v53, (v46 + 288));
    *(v46 + 608) = v54;
    if (v54)
    {
      if (sub_267BF7B18())
      {
        v55 = swift_task_alloc();
        *(v46 + 616) = v55;
        *v55 = v46;
        v55[1] = sub_267DEF520;
LABEL_9:
        OUTLINED_FUNCTION_17_26();

        return sub_267C773E4();
      }
    }

    v45 = *(v46 + 576);
    sub_267EF6FE8();
    sub_267EF6FB8();

    sub_267EF42C8();

    type metadata accessor for GoogleMapsLinkParser();
    swift_allocObject();
    v66 = sub_267E76A44(v45, (v46 + 328));
    *(v46 + 624) = v66;
    if (v66)
    {
      if (sub_267E76A70())
      {
        v67 = swift_task_alloc();
        *(v46 + 632) = v67;
        *v67 = v46;
        OUTLINED_FUNCTION_10_36(v67);
        OUTLINED_FUNCTION_17_26();

        return sub_267E76C98(v68);
      }
    }

    else
    {
    }

    v58 = 0;
    v59 = 0xE000000000000000;
    goto LABEL_26;
  }

  v56 = sub_267BB8214(*(v46 + 496));
  *(v46 + 640) = v56;
  *(v46 + 648) = v57;
  if (v57)
  {
    v58 = v56;
    v59 = v57;
    type metadata accessor for AppleMapsLinkParser();
    swift_allocObject();

    v60 = OUTLINED_FUNCTION_86_1();
    v62 = sub_267BF792C(v60, v61);
    v50[82] = v62;
    if (v62)
    {
      if (sub_267BF7B18())
      {
        v63 = swift_task_alloc();
        v50[83] = v63;
        *v63 = v50;
        v63[1] = sub_267DF0554;
        goto LABEL_9;
      }
    }

LABEL_26:
    v76 = objc_allocWithZone(MEMORY[0x277CCA948]);
    v77 = OUTLINED_FUNCTION_39_19();
    if (v45)
    {

      if (qword_280228818 != -1)
      {
LABEL_62:
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v78 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v78, qword_280240FB0);
      v79 = v45;
      v80 = sub_267EF89F8();
      sub_267EF95E8();
      OUTLINED_FUNCTION_65_12();
      if (OUTLINED_FUNCTION_68_10())
      {
        OUTLINED_FUNCTION_48();
        v81 = OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_56_16(v81);
        *v47 = 136315138;
        swift_getErrorValue();
        v82 = sub_267EF9F68();
        OUTLINED_FUNCTION_67_10(v82, v83);
        OUTLINED_FUNCTION_125_1();
        *(v47 + 4) = v59;
        OUTLINED_FUNCTION_14_37(&dword_267B93000, v84, v85, "#INMessage+RREntityHelpers extractAddressEntities NSDataDetector failed: %s.");
        OUTLINED_FUNCTION_18_30();
        OUTLINED_FUNCTION_32_0();
      }
    }

    else
    {
      v94 = v77;
      OUTLINED_FUNCTION_86_1();
      v95 = sub_267EF8FF8();

      v96 = OUTLINED_FUNCTION_86_1();
      v97 = MEMORY[0x26D608EC0](v96);

      a11 = v94;
      v98 = [v94 matchesInString:v95 options:0 range:{0, v97}];

      sub_267BA9F38(0, &qword_280229D10, 0x277CCACC0);
      OUTLINED_FUNCTION_37_18();
      v45 = sub_267EF92F8();

      a22 = sub_267BAF0DC(v45);
      if (a22)
      {
        v100 = 0;
        a21 = v45 & 0xC000000000000001;
        a12 = v45 & 0xFFFFFFFFFFFFFF8;
        a17 = v50[65] + 8;
        v101 = v50[68];
        a28 = v101 + 8;
        a29 = (v101 + 16);
        a16 = v101;
        a15 = v101 + 32;
        v102 = MEMORY[0x277D84F90];
        *&v99 = 136642819;
        a13 = v99;
        a23 = v50;
        a19 = v58;
        a20 = v59;
        a18 = v45;
        while (1)
        {
          if (a21)
          {
            v103 = MEMORY[0x26D609870](v100, v45);
          }

          else
          {
            if (v100 >= *(a12 + 16))
            {
              goto LABEL_61;
            }

            v103 = *(v45 + 8 * v100 + 32);
          }

          v104 = v103;
          if (__OFADD__(v100, 1))
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          a26 = v100 + 1;
          a27 = v100;
          OUTLINED_FUNCTION_86_1();
          v105 = sub_267EF8FF8();
          a31 = v104;
          [v104 range];
          OUTLINED_FUNCTION_63_11();
          v106 = [v105 substringWithRange_];

          sub_267EF9028();
          OUTLINED_FUNCTION_66_15();
          v107 = sub_267EF6588();
          OUTLINED_FUNCTION_97(v107);
          v108 = sub_267EF6578();
          sub_267EF6568();

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v109 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v109, qword_280240FB0);
          v110 = sub_267EF89F8();
          sub_267EF95D8();
          OUTLINED_FUNCTION_64();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_19_33(v112);
            OUTLINED_FUNCTION_460(&dword_267B93000, v110, v113, "#INMessage+RREntityHelpers extractAddressEntities Finished building postal address.");
            OUTLINED_FUNCTION_29_1();
          }

          a30 = v108;
          v114 = MEMORY[0x26D6059D0](v108);
          if (!v114)
          {
            break;
          }

          v115 = v114;
          a25 = v102;
          v116 = v50[71];
          v117 = v50[70];
          v118 = v50[67];
          sub_267EF2D18();
          sub_267EF2CE8();
          v119 = OUTLINED_FUNCTION_16_33();
          v120(v119);
          v121 = sub_267EF8A78();
          OUTLINED_FUNCTION_11_20(v121);

          OUTLINED_FUNCTION_6_43();
          v50 = a23;
          OUTLINED_FUNCTION_1_65();
          OUTLINED_FUNCTION_29_24(v122, v123, v124, v125, v115);
          v126 = *a29;
          (*a29)(v117, v116, v118);
          v127 = sub_267EF89F8();
          v128 = sub_267EF95D8();
          v129 = os_log_type_enabled(v127, v128);
          v130 = a23[70];
          v131 = a23[67];
          if (v129)
          {
            v132 = OUTLINED_FUNCTION_48();
            v133 = OUTLINED_FUNCTION_52();
            a32 = v133;
            *v132 = a13;
            sub_267DF0E90();
            OUTLINED_FUNCTION_37_18();
            sub_267EF9E58();
            OUTLINED_FUNCTION_57_14();
            v134 = OUTLINED_FUNCTION_27_25();
            a24 = v135;
            v135(v134, v131);
            sub_267BA33E8(v126, a23, &a32);
            OUTLINED_FUNCTION_61_2();
            v50 = a23;

            *(v132 + 4) = v130;
            _os_log_impl(&dword_267B93000, v127, v128, "#INMessage+RREntityHelpers extractAddressEntities Extracted address entity: %{sensitive}s.", v132, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v133);
            OUTLINED_FUNCTION_32_0();
            OUTLINED_FUNCTION_29_1();
          }

          else
          {

            v136 = OUTLINED_FUNCTION_27_25();
            a24 = v137;
            v137(v136, v131);
          }

          v126(v50[69], v50[71], v50[67]);
          v102 = a25;
          v59 = a20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_4_7();
            sub_267C70CB0();
            v102 = v142;
          }

          v139 = *(v102 + 16);
          v138 = *(v102 + 24);
          if (v139 >= v138 >> 1)
          {
            OUTLINED_FUNCTION_5_6(v138);
            sub_267C70CB0();
            v102 = v143;
          }

          v47 = v50[71];
          v140 = v50[69];
          v141 = v50[67];

          a24(v47, v141);
          *(v102 + 16) = v139 + 1;
          (*(a16 + 32))(v102 + ((*(a16 + 80) + 32) & ~*(a16 + 80)) + *(a16 + 72) * v139, v140, v141);
          v100 = a27 + 1;
          v45 = a18;
          if (a26 == a22)
          {
            goto LABEL_56;
          }
        }

        v144 = sub_267EF89F8();
        sub_267EF95D8();
        OUTLINED_FUNCTION_64();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v146);
          OUTLINED_FUNCTION_3_0(&dword_267B93000, v147, v148, "#INMessage+RREntityHelpers extractAddressEntities Unable to build usoEntity for PostalAddress.");
          OUTLINED_FUNCTION_26();
        }
      }

      else
      {
LABEL_56:
      }
    }

    goto LABEL_31;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v70 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v70, qword_280240FB0);
  v71 = sub_267EF89F8();
  sub_267EF95D8();
  OUTLINED_FUNCTION_64();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v73);
    OUTLINED_FUNCTION_3_0(&dword_267B93000, v74, v75, "#INMessage+RREntityHelpers extractAddressEntities INMessage has no content. Unable to perform search for location address. RREntity cannot be created.");
    OUTLINED_FUNCTION_26();
  }

LABEL_31:

  OUTLINED_FUNCTION_17_26();

  return v88(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37);
}

void *sub_267BF792C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  sub_267EF2B88();
  v10 = sub_267EF2BA8();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {

    sub_267BF9988(v9, &qword_280229E20, &unk_267EFDCC0);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v11 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
    v12 = sub_267EF89F8();
    v13 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v13))
    {
      v14 = OUTLINED_FUNCTION_32();
      *v14 = 0;
      _os_log_impl(&dword_267B93000, v12, a1, "#AppleMapsLinkParser URL missing", v14, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    type metadata accessor for AppleMapsLinkParser();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_267BF9988(v9, &qword_280229E20, &unk_267EFDCC0);
    v3[2] = 0;
    v3[3] = a1;
    v3[4] = a2;
    sub_267EF42D8();
    sub_267EF6FF8();
    sub_267EF6FE8();
    sub_267EF6FB8();

    sub_267EF42C8();

    sub_267B9A5E8(&v17, (v3 + 5));
  }

  return v3;
}

uint64_t sub_267BF7B18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v2 = OUTLINED_FUNCTION_18(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = sub_267EF2BA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 32))
  {
    goto LABEL_4;
  }

  sub_267EF2B88();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_267BF9988(v4, &qword_280229E20, &unk_267EFDCC0);
LABEL_4:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v12);
      _os_log_impl(&dword_267B93000, v10, v11, "#AppleMapsLinkParser URL missing", v8, 2u);
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  v14 = objc_opt_self();
  v15 = sub_267EF2AF8();
  LODWORD(v14) = [v14 isValidMapURL_];

  if (!v14)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v24))
    {
      v25 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_4_2(v25);
      OUTLINED_FUNCTION_1_1(&dword_267B93000, v26, v27, "#AppleMapsLinkParser invalid apple maps location link");
      OUTLINED_FUNCTION_29_1();
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v16 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_5_2(v18))
  {
    v19 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_4_2(v19);
    OUTLINED_FUNCTION_1_1(&dword_267B93000, v20, v21, "#AppleMapsLinkParser valid apple maps location link");
    OUTLINED_FUNCTION_29_1();
  }

  (*(v6 + 8))(v8, v5);
  return 1;
}

uint64_t sub_267BF7E44()
{
  sub_267BF7E78();

  return swift_deallocClassInstance();
}

uint64_t sub_267BF7E78()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  return v0;
}

uint64_t sub_267BF7EA8()
{
  OUTLINED_FUNCTION_12();
  *(*v0 + 328) = v1;

  return MEMORY[0x2822009F8](sub_267BF7FA4, 0, 0);
}

id sub_267BF7FA4(uint64_t a1)
{
  if (*(*(v1 + 328) + 16))
  {
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "#makeOfferNLContextUpdate #ReferenceResolution Donating address RREntity to SRR", v5, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v6 = sub_267EF4048();
    v7 = *(v1 + 304);
    if (v6)
    {
      *(v1 + 120) = v6;

      sub_267C9B520(v8);
    }

    else
    {
    }

    sub_267EF4058();
  }

  else
  {
  }

  v10 = *(v1 + 312);
  if (v10 == *(v1 + 296))
  {
    sub_267EF4098();
    v11 = sub_267EF4748();
    OUTLINED_FUNCTION_97(v11);
    sub_267EF4738();
    if (qword_2802288F8 != -1)
    {
      OUTLINED_FUNCTION_6_37(&qword_2802288F8);
    }

    v12 = sub_267EF5648();
    OUTLINED_FUNCTION_17_20(v12, v13);

    if (qword_2802288B0 != -1)
    {
      OUTLINED_FUNCTION_5_43(&qword_2802288B0);
    }

    OUTLINED_FUNCTION_3_45();
    v14 = sub_267EF5648();
    OUTLINED_FUNCTION_27_20(v14, v15);

    sub_267EF4728();

    sub_267EF4138();
    sub_267EF4128();
    v37(v2);

    OUTLINED_FUNCTION_17();

    return v16();
  }

  v17 = *(v1 + 144);
  if ((v17 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x26D609870](*(v1 + 312));
  }

  else
  {
    if (v10 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_38:
      __break(1u);
      return result;
    }

    result = *(v17 + 8 * v10 + 32);
  }

  *(v1 + 304) = result;
  *(v1 + 312) = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  v18 = [result content];
  if (v18)
  {
    v19 = v18;
    sub_267EF9028();
    v21 = v20;

    v22 = OUTLINED_FUNCTION_29_17();
    if (OUTLINED_FUNCTION_12_25(v1 + 72, MEMORY[0x277D837D0]))
    {
      OUTLINED_FUNCTION_16_23();
      v23 = OUTLINED_FUNCTION_12_25(v1 + 104, MEMORY[0x277D837D0]);

      if (v23)
      {
        OUTLINED_FUNCTION_28_23();
        if (__swift_getEnumTagSinglePayload(v22, 1, v21) == 1)
        {
          sub_267B9FF34(*(v1 + 192), &qword_2802294B0, &qword_267F001F0);
        }

        else
        {
          v25 = OUTLINED_FUNCTION_15_27();
          v26(v25);
          v27 = sub_267EF89F8();
          v28 = sub_267EF95D8();
          if (os_log_type_enabled(v27, v28))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_26_22(&dword_267B93000, v29, v30, "#makeOfferNLContextUpdate #ReferenceResolution Donating music RREntity to SRR");
            OUTLINED_FUNCTION_32_0();
          }

          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229A80, &qword_267F00430);
          v32 = OUTLINED_FUNCTION_13_30(v31);
          v33 = OUTLINED_FUNCTION_14_29(v32, xmmword_267EFC020);
          v34(v33);
          v35 = sub_267EF4048();
          if (v35)
          {
            *(v1 + 128) = v35;

            sub_267C9B520(v36);
            sub_267EF4058();
          }

          else
          {
            sub_267EF4058();
          }

          (*(*(v1 + 216) + 8))(*(v1 + 224), *(v1 + 208));
        }
      }
    }

    else
    {
    }
  }

  v24 = swift_task_alloc();
  *(v1 + 320) = v24;
  *v24 = v1;
  OUTLINED_FUNCTION_4_43(v24);

  return sub_267BF6D4C();
}

uint64_t sub_267BF8490()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267BF85BC()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_62();
  v1 = v0[35];
  sub_267EF4158();
  v2 = OUTLINED_FUNCTION_57_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_267EF4818();
  sub_267EF4198();
  swift_allocObject();
  v0[50] = sub_267EF4188();
  OUTLINED_FUNCTION_11_6((v1 + 16), *(v1 + 40));
  v6 = OUTLINED_FUNCTION_7_1();
  v7(v6);
  __swift_project_boxed_opaque_existential_0(v0 + 22, v0[25]);
  OUTLINED_FUNCTION_7_1();
  sub_267EF3C48();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[51] = v8;
  *v8 = v9;
  v8[1] = sub_267BF8A60;
  OUTLINED_FUNCTION_30_2();

  return sub_267BCF3A4(v10, v11, v12, v13, v14);
}

void sub_267BF86F0(void *a1, uint64_t a2)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);

  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_267EF7C18();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v8 = 7104878;
      v10 = 0xE300000000000000;
    }

    v11 = sub_267BA33E8(v8, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_267B93000, v4, v5, "#ResponseFramework+Utilities adding sash for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26D60A7B0](v7, -1, -1);
    MEMORY[0x26D60A7B0](v6, -1, -1);
  }

  sub_267BA9F38(0, &qword_28022CAD8, 0x277D47B08);
  v14 = sub_267BF88F4();
  sub_267EF7C18();
  if (v12)
  {
    v13 = sub_267EF8FF8();
  }

  else
  {
    v13 = 0;
  }

  [v14 setApplicationBundleIdentifier_];

  [a1 setSash_];
}

id sub_267BF88F4()
{
  v0 = sub_267EF2D28();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_267EF2D18();
  v5 = sub_267EF2CE8();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  sub_267BF89FC(v5, v7, v4);
  return v4;
}

void sub_267BF89FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setAceId_];
}

uint64_t sub_267BF8A60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 416) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BF8B70()
{
  OUTLINED_FUNCTION_62();

  v1 = OUTLINED_FUNCTION_26_0();
  v2(v1);

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_267BF8C1C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BF8D18()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[17];
  v2 = v0[15];
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state;
  OUTLINED_FUNCTION_66_3(v2 + OBJC_IVAR____TtC16SiriMessagesFlow17FollowupOfferFlow_state, (v0 + 10));
  sub_267BF8DEC(v1, v2 + v3);
  swift_endAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[20] = v4;
  *v4 = v5;
  v4[1] = sub_267C65BF8;

  return sub_267BF8E50();
}

uint64_t sub_267BF8DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BF8E50()
{
  OUTLINED_FUNCTION_12();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = type metadata accessor for FollowupOfferFlow.State(0);
  v1[15] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[16] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF3D88();
  v1[17] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BF8F1C()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[14];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v3 = OUTLINED_FUNCTION_43();
  v4(v3, v2);
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_267C65F54;
  v8 = v0[13];

  return MEMORY[0x2821BB5D0](v8, v5, v6);
}

uint64_t sub_267BF902C(__int128 *a1, uint64_t a2, char a3)
{
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  sub_267B9A5E8(a1, v3 + 48);
  *(v3 + 16) = a2;
  *(v3 + 88) = a3;
  return v3;
}

uint64_t sub_267BF9074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_267BF90D0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_267BF911C()
{
  result = qword_280228C20;
  if (!qword_280228C20)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228C20);
  }

  return result;
}

void sub_267BF9174(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v7 << 9) | (8 * v10);
    v12 = *(*(a1 + 56) + v11);
    v13 = *(*(a1 + 48) + v11);
    v14 = sub_267BF9318(v13, v12);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_4_7();
        sub_267C70F4C();
        v8 = v19;
      }

      v17 = *(v8 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v8 + 24) >> 1)
      {
        sub_267C70F4C();
        v18 = v17 + 1;
        v8 = v20;
      }

      *(v8 + 16) = v18;
      *(v8 + 8 * v17 + 32) = v14;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  v21 = *(v8 + 16);
  if (v21)
  {
    v22 = (v8 + 32);
    v23 = 0.0;
    do
    {
      v24 = *v22++;
      v23 = v23 + v24;
      --v21;
    }

    while (v21);
  }
}

uint64_t sub_267BF9318(uint64_t a1, double a2)
{
  v18[0] = sub_267EF9028();
  v18[1] = v3;
  sub_267BB5034();
  v4 = sub_267EF98C8();

  if (!v4[2])
  {

    return 0;
  }

  v6 = v4[4];
  v5 = v4[5];

  if (v6 != 26746 || v5 != 0xE200000000000000)
  {
    v8 = sub_267EF9EA8();

    if (v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

LABEL_11:
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
    v18[0] = v14;
    *v13 = 136315138;
    v15 = sub_267EF9498();
    v17 = sub_267BA33E8(v15, v16, v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_267B93000, v11, v12, "#ContentProcessor key adding %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D60A7B0](v14, -1, -1);
    MEMORY[0x26D60A7B0](v13, -1, -1);
  }

  return *&a2;
}

uint64_t sub_267BF9538()
{
  OUTLINED_FUNCTION_12();
  v1[49] = v2;
  v1[50] = v0;
  v1[48] = v3;
  v4 = sub_267EF8A08();
  v1[51] = v4;
  v1[52] = *(v4 - 8);
  v1[53] = swift_task_alloc();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_267BF95F4(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v6 = sub_267BAF0DC(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D609870](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

uint64_t sub_267BF96CC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-v5 - 8];
  sub_267BF9918(a1, &v11[-v5 - 8]);
  v7 = sub_267EF2CC8();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v8 = sub_267EF2C48();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  OUTLINED_FUNCTION_102(&unk_28022B580, v11);
  objc_setAssociatedObject(v2, &unk_28022B580, v8, 0x303);
  swift_endAccess();

  return sub_267BF9988(a1, &qword_28022BD90, &unk_267EFCDD0);
}

uint64_t sub_267BF9810(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_267EF2CC8();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_267BF96CC(v5);
}

uint64_t sub_267BF9918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267BF9988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_9();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267BF99DC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;

  if (v0)
  {

    v4 = *(v2 + 8);

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_267BF9B14()
{
  OUTLINED_FUNCTION_56();
  v1 = (*(v0[49] + 64))(v0[48]);
  OUTLINED_FUNCTION_2_17();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_267BBC3F8;
  v4 = v0[49];
  v5 = v0[48];

  return (v7)(v0 + 2, v1 & 1, v5, v4);
}

uint64_t sub_267BF9C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v3;
  v7[1] = sub_267BBD07C;

  return sub_267BF9D28(a1, a2, a3, WitnessTable);
}

uint64_t sub_267BF9D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_267BAEBEC;

  return sub_267BF9DE8();
}

uint64_t sub_267BF9DE8()
{
  OUTLINED_FUNCTION_56();
  *(v1 + 856) = v0;
  *(v1 + 848) = v2;
  *(v1 + 840) = v3;
  *(v1 + 258) = v4;
  *(v1 + 832) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB70, &unk_267F0BA10);
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 864) = OUTLINED_FUNCTION_2();
  v7 = sub_267EF4CC8();
  *(v1 + 872) = v7;
  OUTLINED_FUNCTION_30_0(v7);
  *(v1 + 880) = v8;
  *(v1 + 888) = OUTLINED_FUNCTION_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 896) = OUTLINED_FUNCTION_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 904) = OUTLINED_FUNCTION_2();
  v11 = sub_267EF3CF8();
  OUTLINED_FUNCTION_18(v11);
  *(v1 + 912) = OUTLINED_FUNCTION_2();
  v12 = sub_267EF48A8();
  *(v1 + 920) = v12;
  OUTLINED_FUNCTION_30_0(v12);
  *(v1 + 928) = v13;
  *(v1 + 936) = OUTLINED_FUNCTION_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  OUTLINED_FUNCTION_18(v14);
  *(v1 + 944) = OUTLINED_FUNCTION_2();
  v15 = type metadata accessor for TextComponent(0);
  *(v1 + 952) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v1 + 960) = OUTLINED_FUNCTION_2();
  v16 = sub_267EF2CC8();
  *(v1 + 968) = v16;
  OUTLINED_FUNCTION_30_0(v16);
  *(v1 + 976) = v17;
  *(v1 + 984) = swift_task_alloc();
  *(v1 + 992) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18(v18);
  *(v1 + 1000) = swift_task_alloc();
  *(v1 + 1008) = swift_task_alloc();
  v19 = sub_267EF6EB8();
  *(v1 + 1016) = v19;
  OUTLINED_FUNCTION_30_0(v19);
  *(v1 + 1024) = v20;
  *(v1 + 1032) = OUTLINED_FUNCTION_2();
  v21 = sub_267EF8228();
  *(v1 + 1040) = v21;
  OUTLINED_FUNCTION_30_0(v21);
  *(v1 + 1048) = v22;
  *(v1 + 1056) = OUTLINED_FUNCTION_2();
  v23 = sub_267EF79B8();
  *(v1 + 1064) = v23;
  OUTLINED_FUNCTION_30_0(v23);
  *(v1 + 1072) = v24;
  *(v1 + 1080) = OUTLINED_FUNCTION_2();
  ComponentPatternCommonParameters = type metadata accessor for ReadComponentPatternCommonParameters(0);
  *(v1 + 1088) = ComponentPatternCommonParameters;
  OUTLINED_FUNCTION_18(ComponentPatternCommonParameters);
  *(v1 + 1096) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_118_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 1104) = AssociatedTypeWitness;
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  *(v1 + 1112) = swift_task_alloc();
  *(v1 + 1120) = swift_task_alloc();
  v27 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_267BFA1E0()
{
  v68 = v0;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v1 = *(v0 + 856);
  v2 = sub_267EF8A08();
  *(v0 + 1128) = OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
  swift_unknownObjectRetain();
  v3 = sub_267EF89F8();
  v4 = sub_267EF95D8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 848);
    OUTLINED_FUNCTION_48();
    v67 = OUTLINED_FUNCTION_55_0();
    *v1 = 136315138;
    sub_267BD974C(v5, v0 + 264);
    v6 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_0((v0 + 264), v6);
    v7 = *(v6 - 8);
    OUTLINED_FUNCTION_2();
    (*(v7 + 16))();
    v8 = sub_267EF90A8();
    v10 = v9;

    __swift_destroy_boxed_opaque_existential_0((v0 + 264));
    sub_267BA33E8(v8, v10, &v67);
    OUTLINED_FUNCTION_75_2();

    *(v1 + 4) = v8;
    _os_log_impl(&dword_267B93000, v3, v4, "#ReadComponentAction Running RF patterns for %s", v1, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v11 = *(v0 + 848);
  v12 = *(v0 + 840);
  *(v0 + 816) = *(v0 + 856);
  v13 = *(v11 + 8);
  *(v0 + 1136) = v13;
  v14 = *(v13 + 8);
  *(v0 + 1144) = v14;
  *(v0 + 1152) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0xB001000000000000;
  v61 = v13;
  v54 = v14;
  v15 = (v14)(v12);
  __swift_project_boxed_opaque_existential_0((v15 + 16), *(v15 + 40));
  v16 = OUTLINED_FUNCTION_37_1();
  v17(v16);

  v59 = sub_267BFA8F4((v0 + 424));
  *(v0 + 1160) = v59;
  if (qword_2802286F0 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 848);
  v19 = *(v0 + 840);
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v53 = sub_267BB4A3C();
  *(v0 + 1168) = v53;
  v20 = *(v18 + 32);
  *(v0 + 1176) = v20;
  *(v0 + 1184) = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x701000000000000;
  v20(v19, v18);
  v57 = swift_dynamicCast();
  if (v57)
  {
    v21 = *(v0 + 208);
  }

  v64 = *(v0 + 1096);
  v66 = *(v0 + 1088);
  v60 = *(v0 + 1080);
  v63 = *(v0 + 1072);
  v51 = *(v0 + 1064);
  v52 = *(v0 + 1048);
  v22 = *(v0 + 856);
  v23 = *(v0 + 840);
  OUTLINED_FUNCTION_107_0();
  sub_267BD974C(v24, v25);
  *(v0 + 744) = v22;
  v26 = v54(v23, v61);
  type metadata accessor for MessagesDialogContext();
  v27 = sub_267BFB110((v0 + 384), v26);
  v28 = sub_267BF4170(v26);
  v58 = sub_267BFBFBC(v27, v28);
  *(v0 + 1192) = v58;

  *(v0 + 752) = v22;
  v62 = v54(v23, v61);
  *(v0 + 1200) = v62;
  sub_267BF4A24((v0 + 384), v53);
  sub_267EF90F8();

  (*(v63 + 16))(&v64[v66[5]], v60, v51);
  v29 = *(v52 + 104);
  v30 = OUTLINED_FUNCTION_90_3();
  v29(v30);
  v56 = OUTLINED_FUNCTION_103_1();
  v31 = *(v52 + 8);
  v32 = OUTLINED_FUNCTION_65_2();
  v31(v32);
  v33 = OUTLINED_FUNCTION_90_3();
  v29(v33);
  v55 = OUTLINED_FUNCTION_103_1();
  v34 = OUTLINED_FUNCTION_65_2();
  v31(v34);
  v35 = OUTLINED_FUNCTION_90_3();
  v29(v35);
  v36 = OUTLINED_FUNCTION_103_1();
  v37 = OUTLINED_FUNCTION_65_2();
  v31(v37);
  v38 = OUTLINED_FUNCTION_90_3();
  v29(v38);
  v39 = OUTLINED_FUNCTION_103_1();
  v40 = OUTLINED_FUNCTION_65_2();
  v31(v40);
  v41 = OUTLINED_FUNCTION_90_3();
  v29(v41);
  v42 = OUTLINED_FUNCTION_103_1();
  v43 = OUTLINED_FUNCTION_65_2();
  v31(v43);
  (*(v63 + 8))(v60, v51);
  *v64 = v57;
  *&v64[v66[6]] = v56;
  *&v64[v66[7]] = v55;
  *&v64[v66[8]] = v36;
  *&v64[v66[9]] = v39;
  *&v64[v66[10]] = v42;
  *(v0 + 328) = type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
  *(v0 + 336) = &off_2878D3460;
  *(v0 + 304) = v59;
  v44 = *(v0 + 408);
  v45 = *(v0 + 416);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 384, v44);
  v46 = *(OUTLINED_FUNCTION_119_1() + 72);

  v65 = (v46 + *v46);
  v47 = swift_task_alloc();
  *(v0 + 1208) = v47;
  *v47 = v0;
  v47[1] = sub_267BD5E30;
  v48 = *(v0 + 1096);
  v49 = *(v0 + 258);

  return v65(v62, v58, v48, v49, v0 + 304, v44, v45);
}

uint64_t sub_267BFA8F4(void *a1)
{
  v3 = sub_267EF7B88();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-v5 - 8];
  sub_267EF70D8();
  OUTLINED_FUNCTION_2_29();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-v13 - 8];
  sub_267EF6FF8();
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8698();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v1);
    (*(v8 + 32))(v12, v6, v1);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v1);
    sub_267EF70A8();
    if (__swift_getEnumTagSinglePayload(v6, 1, v1) != 1)
    {
      sub_267B9FF34(v6, &qword_2802295B0, &unk_267EFDCA0);
    }
  }

  sub_267BFABE0(v12, a1, v14);
  v15 = *(v8 + 8);
  v15(v12, v1);
  sub_267EF78A8();
  sub_267B9AFEC(a1, v19);
  sub_267EF7868();
  sub_267B9FF34(v19, &qword_28022A620, &qword_267F08EC0);
  sub_267EF7888();

  sub_267EF7898();

  type metadata accessor for SearchForMessagesCATPatternsExecutor(0);
  sub_267EF7B68();
  v16 = sub_267EF78E8();
  v15(v14, v1);
  return v16;
}

uint64_t sub_267BFABE0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_267EF70D8();
  OUTLINED_FUNCTION_2_29();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  (*(v8 + 16))(a3, a1, v3);
  v10 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  if ((sub_267EF3C48() & 1) != 0 && (sub_267EF7098(), sub_267BFAE7C(), OUTLINED_FUNCTION_5_29(), v10 = v3, sub_267EF8FE8(), v11 = OUTLINED_FUNCTION_3_27(), v12(v11), (v3 & 1) == 0))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v22 = sub_267EF8A08();
    __swift_project_value_buffer(v22, qword_280240FB0);
    v23 = sub_267EF89F8();
    v24 = sub_267EF95D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v26, v27, "#MessageReadingUtils overriding mode to voiceForward for CarPlay");
      MEMORY[0x26D60A7B0](v25, -1, -1);
    }

    sub_267EF7098();
  }

  else
  {
    sub_267EF7088();
    OUTLINED_FUNCTION_5_29();
    sub_267EF70B8();
    v13 = OUTLINED_FUNCTION_3_27();
    result = v14(v13);
    if ((v10 & 1) == 0)
    {
      return result;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    __swift_project_value_buffer(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      OUTLINED_FUNCTION_6_22(&dword_267B93000, v20, v21, "#MessageReadingUtils overriding mode to displayForward for reading");
      MEMORY[0x26D60A7B0](v19, -1, -1);
    }

    sub_267EF70A8();
  }

  v28 = OUTLINED_FUNCTION_5_29();
  return v29(v28);
}

unint64_t sub_267BFAE7C()
{
  result = qword_28022BB90;
  if (!qword_28022BB90)
  {
    sub_267EF70D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022BB90);
  }

  return result;
}

void sub_267BFAF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_267EF7B88();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  sub_267C2FB6C(v25, &a9 - v32, &qword_280229E20, &unk_267EFDCC0);
  (*(v27 + 16))(v29, v23, v26);
  OUTLINED_FUNCTION_193();
  sub_267EF78B8();
  (*(v27 + 8))(v23, v26);
  sub_267B9F98C(v25, &qword_280229E20, &unk_267EFDCC0);
  OUTLINED_FUNCTION_47();
}

uint64_t OUTLINED_FUNCTION_136_1()
{

  return sub_267EF92F8();
}

uint64_t OUTLINED_FUNCTION_136_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_267EF7E18();
}

uint64_t sub_267BFB110(void *a1, void *a2)
{
  v4 = sub_267EF2E38();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v7 = qword_280240FC8;
  v8 = sub_267EF95D8();
  v55 = v7;
  sub_267EF8998("Beginning to create ConversationDialogContext..", 47, 2, &dword_267B93000, v7, v8, MEMORY[0x277D84F90]);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v9 = OUTLINED_FUNCTION_26_0();
  v11 = v10(v9);
  v13 = v12;
  v14 = sub_267BFB6B4();
  v15 = *(v14 + 88);
  v16 = *(v14 + 96);

  v17 = sub_267BFB790(v15, v16, 1);

  v54 = sub_267BFB860();

  swift_beginAccess();
  sub_267BBD3E4();
  v18 = *(&v58 + 1);
  if (!*(&v58 + 1))
  {
    sub_267B9FF34(&v57, &qword_280229910, &unk_267EFEB70);

    v25 = 0;
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_15:
    v53 = 0;
    goto LABEL_16;
  }

  v19 = v59;
  __swift_project_boxed_opaque_existential_0(&v57, *(&v58 + 1));
  OUTLINED_FUNCTION_2_22();
  v21 = v20(v18, v19);
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_0(&v57);
  if (v21 == v11 && v23 == v13)
  {

    v25 = 1;
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v25 = sub_267EF9EA8();

  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_11:
  v26 = *(v17 + 88);
  v27 = *(v17 + 96);

  v28 = sub_267BFB790(v26, v27, 1);

  HIDWORD(v53) = v28 == 0;
  if (v28)
  {
  }

  LODWORD(v53) = *(v17 + 80);
LABEL_16:
  if (sub_267BF4920())
  {
    sub_267B9AFEC(a1, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    v29 = v6;
    if (swift_dynamicCast())
    {
      v30 = *(&v58 + 1);
      v31 = v59;
      __swift_project_boxed_opaque_existential_0(&v57, *(&v58 + 1));
      v32 = (*(v31 + 16))(v30, v31);
      __swift_destroy_boxed_opaque_existential_0(&v57);
    }

    else
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      sub_267B9FF34(&v57, &qword_280229CE0, &qword_267F00410);
      v32 = 0;
    }

    type metadata accessor for MessagesGroup(0);
    v34 = a2[5];
    v35 = a2[6];
    __swift_project_boxed_opaque_existential_0(a2 + 2, v34);
    (*(v35 + 8))(&v57, v34, v35);
    __swift_project_boxed_opaque_existential_0(&v57, *(&v58 + 1));
    sub_267EF3B68();

    sub_267D2EBEC(v36, v32, v29);
    v33 = v37;
    __swift_destroy_boxed_opaque_existential_0(&v57);
  }

  else
  {
    v33 = 0;
  }

  v38 = v17 == 0;
  v39 = (v17 == 0) & v25;
  v52 = v17;
  v40 = v54;
  type metadata accessor for MessagesConversationDialogContext();
  v41 = *(v14 + 80);
  v42 = sub_267BF4920();

  v43 = sub_267BF5078(v38, SBYTE4(v53), v40 == 0, v41, v53, v42, v33, v25 & 1, v39);
  v44 = sub_267EF95D8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v46 = OUTLINED_FUNCTION_9_14(v45);
  *(v46 + 16) = xmmword_267EFC020;
  *&v57 = v43;
  sub_267BFBA4C(&qword_280229CD0, type metadata accessor for MessagesConversationDialogContext, &unk_267F0CBD8);
  sub_267EF7B58();
  v47 = MEMORY[0x277D837D0];
  v48 = sub_267EF8F08();
  v50 = v49;

  *(v46 + 56) = v47;
  *(v46 + 64) = sub_267BFBEB4();
  *(v46 + 32) = v48;
  *(v46 + 40) = v50;
  sub_267EF8998("#MessagesDialogContextFactory ConversationDialogContext: %@", 59, 2, &dword_267B93000, v55, v44, v46, v52);

  return v43;
}

uint64_t sub_267BFB6B4()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_83(v0 + 392, v13);

  OUTLINED_FUNCTION_218();
  sub_267BD9AD4(v1, v2, v3);
  v5 = v4;
  v7 = v6;

  OUTLINED_FUNCTION_83(v0 + 384, v12);
  v8 = *(v0 + 384);

  v9 = sub_267BD9C8C(v5, v7, v8);

  OUTLINED_FUNCTION_4_58(v10);
  OUTLINED_FUNCTION_24_29();
  if (v7)
  {

    v9 = MEMORY[0x26D609870](v9, v0);
  }

  else
  {
    OUTLINED_FUNCTION_23_24();
  }

  return v9;
}

uint64_t sub_267BFB790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_83(v3 + 384, v13);

  v5 = OUTLINED_FUNCTION_19_35();
  v8 = sub_267BD9C8C(v5, v6, v7);

  v9 = __OFSUB__(v8, a3);
  v10 = v8 - a3;
  if (v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_83(v3 + 56, &v12);
  OUTLINED_FUNCTION_24_29();
  if (v8)
  {
LABEL_9:

    v10 = MEMORY[0x26D609870](v10, v3);

    return v10;
  }

  OUTLINED_FUNCTION_23_24();
  return v10;
}

unint64_t sub_267BFB860()
{
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_83(v0 + 384, v9);

  OUTLINED_FUNCTION_218();
  v5 = sub_267BD9C8C(v2, v3, v4);

  OUTLINED_FUNCTION_83(v0 + 56, &v8);
  v6 = sub_267BAF0DC(*(v0 + 56));
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 >= v6 - 1)
  {
    return 0;
  }

  v1 = v5 + 1;
  v5 = *(v0 + 56);
  v0 = v5 & 0xC000000000000001;
  sub_267BBD0EC(v1, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_8:

    MEMORY[0x26D609870](v1, v5);
    OUTLINED_FUNCTION_43();

    return v0;
  }

  OUTLINED_FUNCTION_25_31();
  return v0;
}

uint64_t sub_267BFB984(uint64_t a1)
{
  *(v1 + 24) = a1;
}

uint64_t sub_267BFB9C8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 25) = *(a1 + 17);
  *(v1 + 26) = *(a1 + 18);
  *(v1 + 27) = *(a1 + 19);
  *(v1 + 28) = *(a1 + 20);
  *(v1 + 29) = *(a1 + 21);
  *(v1 + 32) = *(a1 + 24);
  *(v1 + 40) = *(a1 + 32);
  v2 = *(a1 + 33);

  *(v1 + 41) = v2;
  return v1;
}

uint64_t sub_267BFBA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BFBA94(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CAB0, &qword_267F0CC48);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BFBCE0();
  sub_267EFA088();
  LOBYTE(v15) = 0;
  sub_267EF9E18();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_4(1);
    OUTLINED_FUNCTION_1_4(2);
    OUTLINED_FUNCTION_1_4(3);
    OUTLINED_FUNCTION_1_4(4);
    OUTLINED_FUNCTION_1_4(5);
    v15 = *(v3 + 32);
    v14[7] = 6;
    type metadata accessor for MessagesGroup(0);
    OUTLINED_FUNCTION_3_75();
    sub_267BFBE6C(v11, 255, v12, &unk_267F05F40);
    sub_267EF9DF8();
    OUTLINED_FUNCTION_1_4(7);
    OUTLINED_FUNCTION_1_4(8);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_267BFBCE0()
{
  result = qword_28022CAA8;
  if (!qword_28022CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022CAA8);
  }

  return result;
}

uint64_t sub_267BFBD50(char a1)
{
  result = 0x74737269467369;
  switch(a1)
  {
    case 1:
      v3 = 0x6F6365537369;
      goto LABEL_6;
    case 2:
      result = 0x7473614C7369;
      break;
    case 3:
      v3 = 0x657070417369;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x646E000000000000;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0x70756F72477369;
      break;
    case 6:
      result = 0x70756F7267;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267BFBE6C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_267BFBEB4()
{
  result = qword_28022A2E0;
  if (!qword_28022A2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A2E0);
  }

  return result;
}

uint64_t sub_267BFBF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BFBF74(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v2;
  *(v1 + 33) = *(a1 + 25);
  v3 = *(a1 + 26);

  *(v1 + 34) = v3;
  return v1;
}

uint64_t sub_267BFBFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MessagesDialogContext.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  sub_267BF43D0(a1);

  sub_267BFB984(a2);

  v7 = (*(v3 + 144))(inited);

  return v7;
}

uint64_t sub_267BFC05C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  sub_267BF4998(a1);
  return v2;
}

uint64_t sub_267BFC094()
{

  return v0;
}

uint64_t sub_267BFC0BC()
{
  OUTLINED_FUNCTION_12();
  *(v1 + 256) = v2;
  *(v1 + 264) = v0;
  *(v1 + 89) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  *(v1 + 232) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  *(v1 + 272) = swift_task_alloc();
  v7 = sub_267EF2E38();
  *(v1 + 280) = v7;
  *(v1 + 288) = *(v7 - 8);
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = type metadata accessor for TextComponent(0);
  *(v1 + 312) = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_267BFC1E4()
{
  v3 = *(v1 + 264);
  v4 = v3[1];
  if (!v4)
  {
    OUTLINED_FUNCTION_10(&unk_267F062F8);
    v13 = swift_task_alloc();
    *(v1 + 320) = v13;
    *v13 = v1;
    v13[1] = sub_267BFF414;
    OUTLINED_FUNCTION_98();

    __asm { BR              X2 }
  }

  v99 = *v3;
  v5 = *(*(v1 + 232) + 416);
  *(v1 + 344) = v5;
  if (!v5)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v16 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
    v17 = sub_267EF89F8();
    v18 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_10_2(v18))
    {
      v19 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v19);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v20, v21, "#TextComponent Current conversation is nil!!");
      OUTLINED_FUNCTION_26();
    }

    sub_267C266B0();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_44_17(v22, v23);
    OUTLINED_FUNCTION_30_26();

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_98();

    __asm { BRAA            X1, X16 }
  }

  v95 = v4;
  v6 = *(v1 + 312);
  sub_267BFF55C(v3, v6);

  sub_267BFF5C0();
  *(v1 + 352) = v7;
  sub_267C00468(v6);
  if (v3[9])
  {
    v8 = *(v1 + 288);
    __swift_project_boxed_opaque_existential_0((*(v1 + 232) + 16), *(*(v1 + 232) + 40));
    v9 = OUTLINED_FUNCTION_10_0();
    v10(v9);
    v2 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
    OUTLINED_FUNCTION_10_0();
    sub_267EF3B68();

    OUTLINED_FUNCTION_42_20();

    v0 = v8 + 8;
    v11 = OUTLINED_FUNCTION_63();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  OUTLINED_FUNCTION_45_18();
  if ((v26 & 1) == 0)
  {
    INMessageEffectType.description.getter(*(v0 + 80));
    sub_267EF90F8();

    v0 = *(v1 + 264);
  }

  v27 = *(v1 + 232);
  sub_267EF79B8();
  OUTLINED_FUNCTION_521();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = *(v0 + 56);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  v33 = *(v27 + 256);

  v34 = OUTLINED_FUNCTION_63();
  v36 = sub_267BBF2B0(v34, v35, v33);

  OUTLINED_FUNCTION_34_20();
  v37 = OUTLINED_FUNCTION_63();
  v39 = sub_267BBF2B0(v37, v38, v2);
  v41 = v40;

  *(v1 + 376) = v39;
  *(v1 + 384) = v41;
  if (v39 == 2)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v41;
  }

  if (v97)
  {
    v43 = [v97 displayName];
    sub_267EF9028();

    v44 = sub_267EF9118();
  }

  else
  {
    v44 = 0;
  }

  OUTLINED_FUNCTION_25_28();
  if (v39 != 2 && (v45 & 1) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v42 <= -1.0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v42 >= 1.84467441e19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_267BB78E4(BYTE4(v93) & v36, v44 & 1, v42);

  OUTLINED_FUNCTION_53_14(v46, v47, v48, v49, v50, v51, v52, v53, v93, v95, v97, v99);
  OUTLINED_FUNCTION_72();
  swift_beginAccess();

  OUTLINED_FUNCTION_63();
  sub_267BB7A18();

  v54 = *(v1 + 88);
  if (v54 == 1)
  {
    OUTLINED_FUNCTION_40_16();
    if (!v55)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v56 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v56, qword_280240FB0);

    v57 = sub_267EF89F8();
    v58 = sub_267EF95D8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_48();
      v60 = OUTLINED_FUNCTION_52();
      *v59 = 136315138;
      v61 = OUTLINED_FUNCTION_44_0();
      *(v59 + 4) = sub_267BA33E8(v61, v62, v63);
      _os_log_impl(&dword_267B93000, v57, v58, "#TextComponent processedContent is .differentLanguage(%s)", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      OUTLINED_FUNCTION_11_11();
      OUTLINED_FUNCTION_26();
    }

    OUTLINED_FUNCTION_46_17(v64, v65, v66, v67, v68, v69, v70, v71, v94, v96, v98, v100);
  }

  else
  {
    if (v54 != 255)
    {
      sub_267B9FF34(v1 + 56, &qword_280229918, &qword_267F003B0);
    }

    v5 = 0;
    v32 = 0;
  }

  *(v1 + 392) = v5;
  *(v1 + 400) = v32;
  if (v98)
  {
    v72 = [v98 displayName];
    sub_267EF9028();
    OUTLINED_FUNCTION_359();

    LOBYTE(v72) = sub_267EF9118();

    if (v72)
    {
      v73 = [v98 displayName];
      sub_267EF9028();
      OUTLINED_FUNCTION_359();

      v74 = [objc_allocWithZone(sub_267EF67F8()) init];

      v75 = sub_267EF67B8();
      v77 = v76;

      *(v1 + 208) = v75;
      *(v1 + 216) = v77;
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v78 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v78, qword_280240FB0);
      v79 = sub_267EF89F8();
      v80 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_10_2(v80))
      {
        v81 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v81);
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v82, v83, "#TextComponent message from a shortcode..normalizing");
        OUTLINED_FUNCTION_26();
      }
    }
  }

  v36 = *(*(v1 + 264) + 40);
  if (sub_267BAF0DC(v36))
  {
    OUTLINED_FUNCTION_1_9();
    if (!v98)
    {
      v84 = *(v36 + 32);
LABEL_46:
      *(v1 + 408) = v84;
      v85 = swift_task_alloc();
      *(v1 + 416) = v85;
      *v85 = v1;
      OUTLINED_FUNCTION_12_33(v85);
      OUTLINED_FUNCTION_98();

      return sub_267BB7B40();
    }

LABEL_55:
    v84 = MEMORY[0x26D609870](0, v36);
    goto LABEL_46;
  }

  *(v1 + 440) = 0;
  *(v1 + 448) = 0;
  *(*(v1 + 344) + 82) = 0;
  v88 = swift_task_alloc();
  *(v1 + 456) = v88;
  *v88 = v1;
  OUTLINED_FUNCTION_1_60(v88);
  OUTLINED_FUNCTION_98();

  return sub_267BB8698(v89, v90, v91);
}

uint64_t sub_267BFC988()
{
  OUTLINED_FUNCTION_56();
  v2 = OUTLINED_FUNCTION_52_9(v1);
  OUTLINED_FUNCTION_18(v2);
  *(v0 + 200) = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10(&unk_267F06300);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_49_12(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_9_32(v4);

  return v7(v6);
}

uint64_t sub_267BFCA34()
{
  OUTLINED_FUNCTION_12();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v5 = sub_267EF89E8();
  v1[23] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_2();
  v7 = type metadata accessor for TextComponent(0);
  v1[26] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v8 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v8);
  v1[29] = OUTLINED_FUNCTION_2();
  v9 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BFCB34()
{
  OUTLINED_FUNCTION_56();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  type metadata accessor for SearchForMessagesCATs(0);
  OUTLINED_FUNCTION_133();
  v0[30] = OUTLINED_FUNCTION_56_10();
  v0[5] = &type metadata for MessagesFeatureFlagsImpl;
  v0[6] = off_2878D1228;
  OUTLINED_FUNCTION_10(&unk_267F06308);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[31] = v1;
  *v1 = v2;
  v1[1] = sub_267D5A34C;
  OUTLINED_FUNCTION_19_18();

  return v3();
}

uint64_t sub_267BFCC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a2;
  v6[55] = a3;
  v6[53] = a1;
  v7 = sub_267EF89E8();
  v6[58] = v7;
  v6[59] = *(v7 - 8);
  v6[60] = swift_task_alloc();
  v8 = sub_267EF2E38();
  v6[61] = v8;
  v6[62] = *(v8 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BD2E2C, 0, 0);
}

uint64_t OUTLINED_FUNCTION_87_2(uint64_t result, __n128 a2)
{
  *(result + 16) = v2;
  *(result + 24) = a2;
  return result;
}

void OUTLINED_FUNCTION_87_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

unint64_t sub_267BFCDCC()
{
  result = qword_280229D10;
  if (!qword_280229D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280229D10);
  }

  return result;
}

uint64_t sub_267BFCE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v3[17] = swift_task_alloc();
  v4 = sub_267EF2BA8();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267BFCF18, 0, 0);
}

void sub_267BFCF18()
{
  v1 = *(v0 + 128);
  v94 = MEMORY[0x277D84F90];
  v2 = sub_267BAF0DC(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D609870](i, v93[16]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if ([v4 resultType] == 32 || objc_msgSend(v5, sel_resultType) == 2048 || objc_msgSend(v5, sel_resultType) == 16)
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

  v7 = v93;
  v6 = v94;
  v93[22] = v94;
  v8 = sub_267BAF0DC(v94);
  v9 = 0;
  v93[23] = v8;
  v92 = v8;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v7[24] = v10;
    if (v92 == v9)
    {
      v26 = v7[14];
      v25 = v7[15];

      for (j = 0; ; j = v7[28])
      {
        v7[25] = v26;
        v7[26] = v25;
        for (k = 32 * j; ; k += 32)
        {
          OUTLINED_FUNCTION_62_5();
          if (v29)
          {

            goto LABEL_60;
          }

          OUTLINED_FUNCTION_60_6();
          if (v29)
          {
            OUTLINED_FUNCTION_59_9();
            if (v33)
            {
              goto LABEL_74;
            }

            v56 = OUTLINED_FUNCTION_72_5(v30, v31);
          }

          else
          {
            v56 = MEMORY[0x26D609870](j);
          }

          v32 = v56;
          v7[27] = v56;
          v7[28] = j + 1;
          if (__OFADD__(j, 1))
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            return;
          }

          v34 = OUTLINED_FUNCTION_26_14();
          if (v29)
          {

LABEL_60:
            OUTLINED_FUNCTION_40_10();

            OUTLINED_FUNCTION_23_12();
            OUTLINED_FUNCTION_93();

            __asm { BRAA            X3, X16 }
          }

          if (v33)
          {
            goto LABEL_75;
          }

          v35 = *(v34 + k + 32);
          v7[29] = v35;
          v36 = *(v34 + k + 40);
          v7[30] = v36;
          v37 = *(v34 + k + 48);
          v7[31] = v37;
          v38 = *(v34 + k + 56);
          v7[32] = v38;

          v39 = [v32 URL];
          if (!v39)
          {
            break;
          }

          v40 = v39;
          v41 = v7[20];
          v42 = v7[21];
          v44 = v7[18];
          v43 = v7[19];
          sub_267EF2B48();

          (*(v43 + 32))(v42, v41, v44);
          v45 = sub_267EF2B78();
          if (!v46 || (v47 = v46, v48 = OUTLINED_FUNCTION_6_25(v45, v46), OUTLINED_FUNCTION_22_14(v48), sub_267BB5034(), OUTLINED_FUNCTION_4_31(), sub_267EF9968(), v49 = OUTLINED_FUNCTION_61_2(), sub_267B9FF34(v49, &unk_28022AF10, &unk_267F001E0), , v42))
          {
            v71 = swift_task_alloc();
            v72 = OUTLINED_FUNCTION_55_9(v71);
            *v72 = v73;
            OUTLINED_FUNCTION_2_32(v72);
            OUTLINED_FUNCTION_93();

            sub_267D027C0(v74);
            return;
          }

          if (qword_280228818 != -1)
          {
            OUTLINED_FUNCTION_0_10();
            swift_once();
          }

          v50 = sub_267EF8A08();
          OUTLINED_FUNCTION_30_1(v50, qword_280240FB0);
          v51 = sub_267EF89F8();
          v52 = sub_267EF95D8();
          if (OUTLINED_FUNCTION_10_2(v52))
          {
            *OUTLINED_FUNCTION_32() = 0;
            OUTLINED_FUNCTION_69_4(&dword_267B93000, v51, v47, "#MessageReadingDataDetector Found link match to an email address, skipping");
            OUTLINED_FUNCTION_32_0();
          }

          v53 = v7[21];
          v55 = v7[18];
          v54 = v7[19];

          (*(v54 + 8))(v53, v55);
          ++j;
        }

        sub_267D04504(v32);
        v7[37] = v57;
        if (v57)
        {
          goto LABEL_67;
        }

        if (sub_267E77C48(v32))
        {

          v84 = MEMORY[0x26D608DB0](v35, v36, v37, v38);
          OUTLINED_FUNCTION_27_13(v84, v85);
          v86 = swift_task_alloc();
          v87 = OUTLINED_FUNCTION_56_8(v86);
          *v87 = v88;
          OUTLINED_FUNCTION_1_34(v87);
          OUTLINED_FUNCTION_93();

          sub_267D03DF0(v89, v90);
          return;
        }

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0_10();
          swift_once();
        }

        v58 = sub_267EF8A08();
        OUTLINED_FUNCTION_30_1(v58, qword_280240FB0);
        v59 = sub_267EF89F8();
        v60 = sub_267EF95E8();
        if (OUTLINED_FUNCTION_10_2(v60))
        {
          v61 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v61);
          _os_log_impl(&dword_267B93000, v59, v36, "#MessageReadingDataDetector cannot decipher data type", v32, 2u);
          OUTLINED_FUNCTION_26();
        }

        v62 = v7[31];
        v63 = v7[32];
        v64 = v7[26];
        v65 = v7[27];
        v7[6] = v7[25];
        v7[7] = v64;
        *(v7 + 1) = *(v7 + 29);
        v7[4] = v62;
        v7[5] = v63;
        v7[8] = 0;
        v7[9] = 0xE000000000000000;
        sub_267BB5034();
        sub_267D04568();
        v26 = sub_267EF9938();
        v25 = v66;
      }
    }

    if ((v94 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x26D609870](v9, v6);
    }

    else
    {
      if (v9 >= *(v6 + 16))
      {
        goto LABEL_66;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    [v11 range];
    sub_267EF9578();
    if (v13)
    {

      v67 = sub_267D044B0();
      OUTLINED_FUNCTION_61_1(&type metadata for DataDetectorError, v67);
      *v68 = 1;
      swift_willThrow();

      OUTLINED_FUNCTION_73_4();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_93();

      __asm { BRAA            X1, X16 }
    }

    v14 = sub_267EF9278();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C70D88();
      v10 = v23;
    }

    v21 = *(v10 + 16);
    if (v21 >= *(v10 + 24) >> 1)
    {
      sub_267C70D88();
      v10 = v24;
    }

    *(v10 + 16) = v21 + 1;
    v22 = (v10 + 32 * v21);
    v22[4] = v14;
    v22[5] = v16;
    v22[6] = v18;
    v22[7] = v20;
    ++v9;
    v7 = v93;
    v6 = v94;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  v78 = swift_task_alloc();
  v79 = OUTLINED_FUNCTION_57_1(v78);
  *v79 = v80;
  OUTLINED_FUNCTION_3_30(v79);
  OUTLINED_FUNCTION_93();

  sub_267D036E8(v81, v82);
}

uint64_t sub_267BFD69C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  v3[17] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267BFD7A8()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_267EF2CB8();
  sub_267EF2C88();
  v5 = v4;
  v1(v2, v3);
  v6 = sub_267EF89F8();
  v7 = sub_267EF95D8();
  if (OUTLINED_FUNCTION_10_2(v7))
  {
    v8 = *(v0 + 96);
    v9 = OUTLINED_FUNCTION_48();
    *v9 = 134217984;
    *(v9 + 4) = v5 - v8;
    OUTLINED_FUNCTION_21();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_26();
  }

  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  OUTLINED_FUNCTION_23_12();

  return v17(v15, v16);
}

uint64_t sub_267BFD8B0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 112) = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X1, X16 }
  }

  v10 = swift_task_alloc();
  *(v3 + 120) = v10;
  *v10 = v5;
  v10[1] = sub_267BF4DDC;
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_30_2();

  return sub_267BFDA28(v11, v12, v13, v14, v15);
}

uint64_t sub_267BFDA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  return OUTLINED_FUNCTION_1_2();
}

uint64_t sub_267BFDA44()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[8];
  if (v1 && *(v1 + 16))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v5);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_26();
    }

    v11 = v0[10];

    sub_267EF8FF8();
    OUTLINED_FUNCTION_108_6();
    v0[11] = sub_267DAE6FC(v12, v13, v11);

    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v14[1] = sub_267DAE278;
    OUTLINED_FUNCTION_30_2();

    return sub_267DAF228(v15, v16, v17);
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
    v22 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_5_2(v22))
    {
      v23 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v23);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      OUTLINED_FUNCTION_26();
    }

    v30 = v0[6];
    v29 = v0[7];

    sub_267BFDCA0(v30, v29);
    v0[14] = v31;
    v32 = swift_task_alloc();
    v0[15] = v32;
    *v32 = v0;
    v32[1] = sub_267BFE75C;
    OUTLINED_FUNCTION_30_2();

    return sub_267BFE324(v33, v34, v35);
  }
}

void sub_267BFDCA0(uint64_t a1, uint64_t a2)
{
  sub_267EF2D48();
  v2 = sub_267EF8FF8();

  v3 = CEMCreateEmojiLocaleData();

  v4 = sub_267EF8FF8();
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = v4;
  CFStringGetLength(v8);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v5;
  aBlock[4] = sub_267C16484;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267C14628;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  CEMEnumerateEmojiTokensInStringWithLocaleAndBlock();
  _Block_release(v10);
  swift_beginAccess();
  v12 = *(v7 + 16);
  Length = CFStringGetLength(v11);

  if (__OFSUB__(Length, v12))
  {
    __break(1u);
    goto LABEL_10;
  }

  v24.location = v12;
  v24.length = Length - v12;
  v14 = CFStringCreateWithSubstring(0, v11, v24);
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  MutableCopy = CFStringCreateMutableCopy(0, 0, v14);
  CFStringTrimWhitespace(MutableCopy);
  if (!MutableCopy)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (CFStringGetLength(MutableCopy))
  {
    v17 = sub_267EF9028();
    v19 = v18;
    swift_beginAccess();
    sub_267BFE184();
    v20 = *(*v6 + 16);
    sub_267BFE2C4(v20);
    v21 = *v6;
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 32 * v20;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *v6 = v21;
    swift_endAccess();
  }

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
}

uint64_t sub_267BFDF6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267BFDFB4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267BFE19C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_267BFE1F8()
{
  OUTLINED_FUNCTION_26_7();
  if (v4)
  {
    OUTLINED_FUNCTION_2_21();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_18_10();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_24();
    }
  }

  OUTLINED_FUNCTION_10_14();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229170, &unk_267EFEEC0);
    v8 = OUTLINED_FUNCTION_37_3(v7);
    OUTLINED_FUNCTION_16_7(v8);
    OUTLINED_FUNCTION_13_10(v9);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = OUTLINED_FUNCTION_42_5();
  if (v1)
  {
    if (v3 != v0 || &v11[32 * v2] <= v10)
    {
      memmove(v10, v11, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_267BFE2DC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_267BFE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_267BFE348, 0, 0);
}

uint64_t sub_267BFE348()
{
  if (qword_280228818 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v1 = sub_267EF8A08();
  __swift_project_value_buffer(v1, qword_280240FB0);

  v2 = sub_267EF89F8();
  v3 = sub_267EF95D8();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_267B93000, v2, v3, "Beginning to create String from given %ld EmojiStringTokens", v6, 0xCu);
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
  }

  v7 = v0[4];
  v8 = *(v7 + 16);
  if (v8 == 1 && (*(v7 + 56) & 1) == 0)
  {
    v35 = *(v7 + 32);
    v36 = *(v7 + 40);
    v40 = v0[1];

    return v40(v35, v36);
  }

  else
  {
    v9 = 0;
    v10 = v7 + 56;
    v39 = v8;
    v37 = v10;
    v38 = MEMORY[0x277D84F90];
LABEL_8:
    v11 = (v10 + 32 * v9);
    while (v8 != v9)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_32;
      }

      v13 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      if (*v11)
      {

LABEL_20:
        v23 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_4_7();
          sub_267BFE1F8();
          v23 = v26;
        }

        v24 = *(v23 + 16);
        if (v24 >= *(v23 + 24) >> 1)
        {
          sub_267BFE1F8();
          v23 = v27;
        }

        *(v23 + 16) = v24 + 1;
        v38 = v23;
        v25 = v23 + 32 * v24;
        *(v25 + 32) = v13;
        *(v25 + 40) = v14;
        *(v25 + 48) = v15;
        *(v25 + 56) = v16;
        v9 = v12;
        v8 = v39;
        v10 = v37;
        goto LABEL_8;
      }

      v0[2] = v13;
      v0[3] = v14;
      v17 = qword_2802287D0;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_267EF2728();
      __swift_project_value_buffer(v18, qword_280240EC0);
      sub_267BB5034();
      sub_267EF9908();
      if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }

      v20 = sub_267EF89F8();
      v21 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_5_2(v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_267B93000, v20, v21, "#EmojiUtils Text content is not readable - skipping", v22, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      sub_267BFE17C(v13, v14);

      ++v9;
      v11 += 32;
      v8 = v39;
    }

    sub_267C148A0(v38);
    v29 = v28;

    v30 = sub_267C14D28(v29);
    v0[7] = v30;

    v31 = swift_task_alloc();
    v0[8] = v31;
    *v31 = v0;
    v31[1] = sub_267C146A0;
    v32 = v0[5];
    v33 = v0[6];

    return sub_267C15008(v30, v32, v33);
  }
}

uint64_t sub_267BFE75C()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {

    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BFE8AC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 576) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_42_14();
    v8(v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_48();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_267BFE9D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setString_];
}

id sub_267BFEA28(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_46_2();
  v5 = sub_267EF8FF8();

  v6 = [v4 *a3];

  return v6;
}

uint64_t sub_267BFEA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267BFEB08(uint64_t a1, uint64_t a2)
{
  sub_267EF9FC8();
  MEMORY[0x26D609CA0](a2);
  return sub_267EFA018();
}

void OUTLINED_FUNCTION_116_3(uint64_t a1@<X8>)
{
  *(v1 + a1) = 0;
  v4 = v1 + *(v2 + 28);
  *v4 = 0;
  *(v4 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_116_4()
{

  return type metadata accessor for SearchForMessagesCATs(0);
}

void *OUTLINED_FUNCTION_116_7()
{

  return sub_267BE8B74(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_116_8()
{

  return sub_267EF8348();
}

void sub_267BFEC0C(char a1, uint64_t a2, uint64_t a3, double a4)
{
  OUTLINED_FUNCTION_4_65();
  OUTLINED_FUNCTION_0_73();
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_267EF9F28();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022CD30, &unk_267F0D8E0);
  OUTLINED_FUNCTION_2_67();
  if (sub_267EF9C68())
  {
    sub_267BA9948();
    OUTLINED_FUNCTION_3_80();
    if (!v15)
    {
      goto LABEL_12;
    }

    v12 = v14;
  }

  v16 = *v4;
  if (v13)
  {
    v17 = v16[7] + 16 * v12;
    *v17 = a1 & 1;
    *(v17 + 8) = a4;
  }

  else
  {
    sub_267BFED2C(v12, a2, a3, a1 & 1, v16, a4);
  }
}

unint64_t sub_267BFED2C(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5, double a6)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v6 = (a5[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a5[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a6;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_99_2(char a1, char a2, char a3, char a4)
{
  v4[115] = a4;
  v4[114] = a3;
  v4[113] = a2;
  v4[112] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_99_3()
{
}

void OUTLINED_FUNCTION_99_6()
{
  v2 = *(v0 + 288);
}

uint64_t OUTLINED_FUNCTION_99_7()
{

  return CEMEmojiTokenCopyNameWithCount();
}

uint64_t OUTLINED_FUNCTION_99_9(uint64_t a1)
{

  return sub_267EF9098();
}

uint64_t OUTLINED_FUNCTION_99_10()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_99_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_267BA33E8(v12, v13, va);
}

uint64_t sub_267BFEEA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  OUTLINED_FUNCTION_20_16(v7);
  if (v0)
  {

    OUTLINED_FUNCTION_36_4();

    return v8();
  }

  else
  {
    OUTLINED_FUNCTION_26_1();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_267BFEFC8()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_46_13();
  if (v6)
  {
    if (v5)
    {
      OUTLINED_FUNCTION_93_4(v1, v2, v3, v4, v5);
      OUTLINED_FUNCTION_114();
    }

    v14 = OUTLINED_FUNCTION_15_23();

    return v15(v14);
  }

  else
  {
    OUTLINED_FUNCTION_93_4(v1, v2, v3, v4, v5);
    OUTLINED_FUNCTION_45_13();
    if (qword_2802286F0 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_133();
    v7 = OUTLINED_FUNCTION_56_10();
    OUTLINED_FUNCTION_88_3(v7);
    *(v0 + 128) = &type metadata for MessagesFeatureFlagsImpl;
    *(v0 + 136) = off_2878D1228;
    OUTLINED_FUNCTION_10(&unk_267F06308);
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_48_17(v8);
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_6_33(v9);

    return v12(v11);
  }
}

void sub_267BFF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_90_5(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_6()
{
  v1 = *(v0 + 744);
  v2 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_0((v1 + 16), v2);
  return v2;
}

void OUTLINED_FUNCTION_90_11()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D60A7B0);
}

uint64_t sub_267BFF244()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 264) = v0;

  sub_267B9F98C(v3 + 64, &qword_28022B0F0, &qword_267F0E670);

  __swift_destroy_boxed_opaque_existential_0((v3 + 104));
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267BFF380()
{
  OUTLINED_FUNCTION_12();
  if (*(v0 + 176))
  {
    if (*(v0 + 176) == 1)
    {
      sub_267D5D300(v0 + 144);
    }

    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
  }

  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_267BFF414()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;

  if (v0)
  {

    OUTLINED_FUNCTION_17();

    return v11();
  }

  else
  {
    *(v7 + 328) = v3;
    *(v7 + 336) = v5;
    v13 = OUTLINED_FUNCTION_4();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_267BFF55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267BFF5C0()
{
  OUTLINED_FUNCTION_48_0();
  v3 = v2;
  v4 = type metadata accessor for TextComponent(0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_151_1();
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_43_18(v7, v8, v9, v10, v11, v12, v13, v14, v129);
  OUTLINED_FUNCTION_23();
  v137 = v16;
  v138 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11_37(v17, v130);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A090, &unk_267F08CC0);
  v19 = OUTLINED_FUNCTION_18(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_60();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_141();
  v140 = v4;
  v156 = v4;
  OUTLINED_FUNCTION_22_22();
  v157 = sub_267C00310(v24, v25, &unk_267F09704);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v155);
  OUTLINED_FUNCTION_26_24(boxed_opaque_existential_0);
  if (qword_280228820 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280228820);
  }

  v27 = qword_280240FC8;
  v28 = sub_267EF95D8();
  v139 = v27;
  sub_267EF8998("Beginning to create MessageComponentDialogContext..", 51, 2, &dword_267B93000, v27, v28, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_139_1();
  v29 = OUTLINED_FUNCTION_54();
  v30(v29);
  sub_267BD997C();
  if (v149)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_42_17(v31) & 1) == 0)
    {
      OUTLINED_FUNCTION_64_10();
    }
  }

  else
  {
    sub_267B9F98C(&v147, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_63_10();
  }

  sub_267BD9E24();
  if (v149)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if ((OUTLINED_FUNCTION_41_14(v32) & 1) == 0)
    {
      OUTLINED_FUNCTION_61_13();
    }
  }

  else
  {
    sub_267B9F98C(&v147, &qword_280229910, &unk_267EFEB70);
    OUTLINED_FUNCTION_62_8();
  }

  OUTLINED_FUNCTION_139_1();
  v33 = OUTLINED_FUNCTION_65_8();
  v35 = v34(v33);
  v36 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v36, v37, v38, v39);
  if (v149)
  {
    __swift_project_boxed_opaque_existential_0(&v147, v149);
    v40 = OUTLINED_FUNCTION_65_8();
    v145 = v41(v40);
    __swift_destroy_boxed_opaque_existential_0(&v147);
  }

  else
  {
    sub_267B9F98C(&v147, &qword_280229CE0, &qword_267F00410);
    v145 = 0;
  }

  sub_267BD997C();
  v143 = v35;
  if (!v153[3])
  {
    sub_267B9F98C(v153, &qword_280229910, &unk_267EFEB70);
    goto LABEL_20;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  if ((OUTLINED_FUNCTION_92_8(v42, v43, v42, &type metadata for ReactionComponent) & 1) == 0)
  {
LABEL_20:
    v44 = v4;
    goto LABEL_26;
  }

  v1 = v149;
  if (*(v151 + 16) != 1)
  {
    v45 = v152;

    goto LABEL_22;
  }

  v131 = v149;
  v141 = v152;
  if (v150)
  {

LABEL_22:
    v44 = v140;
    goto LABEL_26;
  }

  v1 = sub_267C904B4(v151);

  if (v1 != 1)
  {

    v145 = v1;
  }

  v44 = v4;
LABEL_26:
  v46 = OUTLINED_FUNCTION_74_8();
  sub_267C2FB6C(v46, v47, v48, v49);
  if (v149)
  {
    __swift_project_boxed_opaque_existential_0(&v147, v149);
    v50 = OUTLINED_FUNCTION_65_8();
    v144 = v51(v50);
    __swift_destroy_boxed_opaque_existential_0(&v147);
  }

  else
  {
    sub_267B9F98C(&v147, &qword_280229CE0, &qword_267F00410);
    v144 = 0;
  }

  OUTLINED_FUNCTION_139_1();
  v52 = OUTLINED_FUNCTION_54();
  v53(v52);
  v146 = 1;
  if (v145 && v35)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v54 = v35;
    v55 = v145;
    v56 = sub_267EF9818();

    v146 = v56 ^ 1;
  }

  v57 = 1;
  if (v144 && v35)
  {
    sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
    v58 = v35;
    v59 = v144;
    v60 = sub_267EF9818();

    v57 = v60 ^ 1;
  }

  v142 = v57;
  v61 = OUTLINED_FUNCTION_54_12();
  sub_267C2FB6C(v61, v62, v63, v64);
  if (!v149)
  {
    sub_267B9F98C(&v147, &qword_280229CE0, &qword_267F00410);
    v76 = OUTLINED_FUNCTION_49_15();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v44);
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  v65 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v0, v65 ^ 1u, 1, v44);
  if (__swift_getEnumTagSinglePayload(v0, 1, v44) == 1)
  {
LABEL_40:
    sub_267B9F98C(v0, &qword_28022A090, &unk_267F08CC0);
    goto LABEL_41;
  }

  v66 = *(v0 + 16);
  v67 = *(v0 + 24);

  sub_267C00468(v0);
  v147 = v66;
  v148 = v67;
  sub_267EF26D8();
  sub_267BB5034();
  v68 = sub_267EF9918();
  v70 = v69;
  (*(v137 + 8))(v136, v138);

  sub_267C00618(v68, v70);
  v72 = v71;

  if (v72)
  {
    v73 = sub_267EF8FF8();
    IsSingleEmoji = CEMStringIsSingleEmoji();

    v75 = IsSingleEmoji != 0;
    goto LABEL_42;
  }

LABEL_41:
  v75 = 0;
LABEL_42:
  OUTLINED_FUNCTION_110_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v44);
    sub_267B9F98C(v22, &qword_28022A090, &unk_267F08CC0);
    v93 = 0;
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v44);
  sub_267C00778(v22, v135);
  v82 = v135[3];
  v147 = v135[2];
  v148 = v82;

  OUTLINED_FUNCTION_143_2(v83, v84);
  sub_267BB5034();
  v85 = OUTLINED_FUNCTION_146_2();
  v87 = v86;
  (*(v137 + 8))(v44, v138);

  sub_267BB8F30(v85, v87);
  v89 = v88;

  if (v89)
  {
    v90 = sub_267EF8FF8();
    v91 = CEMStringIsSingleEmoji();

    v92 = v91 != 0;
  }

  else
  {
    v92 = 0;
  }

  v94 = v135[4];
  if (!v94 || !*(v94 + 16))
  {
    goto LABEL_53;
  }

  v95 = *(v94 + 32);
  sub_267EF9028();

  sub_267BB40A0();

  if (!v149)
  {
    sub_267B9F98C(&v147, &qword_28022AEF0, &qword_267EFCDE0);
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_128_4();
  if ((OUTLINED_FUNCTION_4_11() & 1) == 0)
  {
LABEL_53:
    LOBYTE(v95) = 0;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_68_8();
LABEL_54:
  sub_267C00468(v135);
  v93 = v92 | v95;
LABEL_55:
  if (v154)
  {
    v96 = OUTLINED_FUNCTION_37_15();
    v97 = OUTLINED_FUNCTION_54_12();
    sub_267C2FB6C(v97, v98, v99, v100);
    if (!v149)
    {
      __break(1u);
      return;
    }

    __swift_project_boxed_opaque_existential_0(&v147, v149);
    v101 = v96 == swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v147);
    v102 = v101 & (v75 ^ v93 ^ 1);
  }

  else
  {

    v102 = 0;
  }

  v103 = v156;
  v104 = v157;
  OUTLINED_FUNCTION_139_1();
  OUTLINED_FUNCTION_23();
  v106 = v105;
  MEMORY[0x28223BE20](v107);
  v109 = OUTLINED_FUNCTION_3_50(v108, v131);
  v110(v109);
  sub_267C00940(v1, v3, v103, *(v104 + 8));
  v111 = *(v106 + 8);
  v106 += 8;
  v111(v1, v103);
  v112 = v156;
  v113 = v157;
  OUTLINED_FUNCTION_139_1();
  OUTLINED_FUNCTION_23();
  v115 = v114;
  MEMORY[0x28223BE20](v116);
  v118 = OUTLINED_FUNCTION_2_49(v117, v132);
  v119(v118);
  sub_267C00EC4(v106, v3, v112, *(v113 + 8));
  (*(v115 + 8))(v106, v112);
  if (v146 & 1) == 0 && (v102 & 1) != 0 && (v142)
  {
    OUTLINED_FUNCTION_110_7();
    if (swift_dynamicCast())
    {
      sub_267C00468(v134);
    }
  }

  if (v154)
  {
    OUTLINED_FUNCTION_51_12();
  }

  sub_267C00EDC(v155);
  OUTLINED_FUNCTION_80_7();
  v120 = OUTLINED_FUNCTION_5_48();
  OUTLINED_FUNCTION_9_37(v120, v146, v133[0], v133[1], v133[2]);
  v121 = OUTLINED_FUNCTION_132_2();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229260, &unk_267EFCD90);
  v123 = OUTLINED_FUNCTION_9_14(v122);
  OUTLINED_FUNCTION_127_5(v123, xmmword_267EFC020);
  OUTLINED_FUNCTION_1_58();
  v126 = sub_267C00310(v124, v125, &unk_267F032C8);
  OUTLINED_FUNCTION_96_7(v126);
  v127 = MEMORY[0x277D837D0];
  sub_267EF8F08();
  OUTLINED_FUNCTION_82_7();
  v123[3].n128_u64[1] = v127;
  v128 = sub_267BFBEB4();
  OUTLINED_FUNCTION_102_6(v128);
  sub_267EF8998("#MessagesDialogContextFactory MessageComponentDialogContext: %@", 63, 2, &dword_267B93000, v139, v121, v123);

  OUTLINED_FUNCTION_91_9();
  OUTLINED_FUNCTION_93_7();
  OUTLINED_FUNCTION_104_7(v155);
  OUTLINED_FUNCTION_47();
}

uint64_t sub_267C00310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_267C00358()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_143_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_267BC9B04(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_143_2(uint64_t a1, uint64_t a2)
{

  return sub_267EF26D8();
}

uint64_t sub_267C003E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2E38();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C00468(uint64_t a1)
{
  v2 = type metadata accessor for TextComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267C004D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_267EF2E38();
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t OUTLINED_FUNCTION_141_2()
{
}

uint64_t OUTLINED_FUNCTION_140_1()
{

  return sub_267C904B4(v0);
}

uint64_t sub_267C00618(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_89_4();
  OUTLINED_FUNCTION_92_2();
  sub_267EF9158();
  OUTLINED_FUNCTION_92_2();
  return sub_267EF9258();
}

uint64_t OUTLINED_FUNCTION_111_1(uint64_t a1)
{

  return sub_267EF9978();
}

uint64_t OUTLINED_FUNCTION_111_2@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[18] = a2;
  v2[21] = result;
  v2[22] = 0x746E65746E6F63;
  v2[23] = 0xE700000000000000;
  return result;
}

void OUTLINED_FUNCTION_111_3()
{

  JUMPOUT(0x26D609870);
}

uint64_t OUTLINED_FUNCTION_111_5()
{

  return sub_267EF8FF8();
}

void OUTLINED_FUNCTION_111_6()
{
  v2 = *(v0 + 2216);
}

uint64_t sub_267C00778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextComponent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_267C007DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *__return_ptr, uint64_t))
{
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_267B9AFEC(v26, v23);
  while (1)
  {
    v9 = v24;
    v10 = v25;
    __swift_project_boxed_opaque_existential_0(v23, v24);
    OUTLINED_FUNCTION_2_22();
    v12 = v11(v9, v10);
    a5(&v18, v12);

    v13 = v19;
    if (!v19)
    {
      sub_267B9FF34(&v18, &qword_280229910, &unk_267EFEB70);
      goto LABEL_7;
    }

    sub_267B9A5E8(&v18, &v20);
    v14 = v21;
    v15 = v22;
    v16 = __swift_project_boxed_opaque_existential_0(&v20, v21);
    if ((sub_267C00958(v23, v16, v14, v15) & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0(v23);
    sub_267B9A5E8(&v20, v23);
  }

  __swift_destroy_boxed_opaque_existential_0(&v20);
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v13 == 0;
}

uint64_t sub_267C00958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[3] = a3;
  v43[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  sub_267B9AFEC(a1, v41);
  sub_267B9AFEC(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
  if (OUTLINED_FUNCTION_4_28(v38, v42))
  {
    if (OUTLINED_FUNCTION_4_28(__src, v41))
    {
      sub_267BE58F4(__src, __dst);
      sub_267BE58F4(v38, v37);
      __swift_project_boxed_opaque_existential_0(__dst, __dst[3]);
      v8 = OUTLINED_FUNCTION_0_23();
      v10 = v9(v8);
      __swift_project_boxed_opaque_existential_0(v37, v37[3]);
      v11 = OUTLINED_FUNCTION_5_29();
      v13 = v12(v11);
      v14 = v13;
      if (v10)
      {
        if (v13)
        {
          sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
          v15 = sub_267EF9818();
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        if (!v13)
        {
          v15 = 1;
          goto LABEL_34;
        }

        v15 = 0;
        v10 = v13;
      }

LABEL_34:
      __swift_destroy_boxed_opaque_existential_0(v37);
      v33 = __dst;
LABEL_39:
      __swift_destroy_boxed_opaque_existential_0(v33);
      goto LABEL_40;
    }

    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, 0x71uLL);
      sub_267BE58F4(v38, v37);
      v16 = __dst[9];
      if (*(__dst[9] + 16) == 1)
      {
        __swift_project_boxed_opaque_existential_0(v37, v37[3]);
        v17 = OUTLINED_FUNCTION_0_23();
        v19 = v18(v17);
        v20 = v19;
        if (*(v16 + 16))
        {
          v21 = *(v16 + 32);
          if (v19)
          {
            if (!v21)
            {
LABEL_11:
              sub_267C77240(__dst);

LABEL_37:
              v15 = 0;
              goto LABEL_38;
            }

LABEL_19:
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            v26 = v21;
            v15 = sub_267EF9818();
            sub_267C77240(__dst);

LABEL_38:
            v33 = v37;
            goto LABEL_39;
          }

          goto LABEL_43;
        }

LABEL_35:

        goto LABEL_36;
      }

      goto LABEL_36;
    }

    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  if (swift_dynamicCast())
  {
    memcpy(__dst, __src, 0x71uLL);
    if (OUTLINED_FUNCTION_4_28(v38, v41))
    {
      sub_267BE58F4(v38, v37);
      v22 = __dst[9];
      if (*(__dst[9] + 16) == 1)
      {
        __swift_project_boxed_opaque_existential_0(v37, v37[3]);
        v23 = OUTLINED_FUNCTION_0_23();
        v25 = v24(v23);
        v20 = v25;
        if (*(v22 + 16))
        {
          v21 = *(v22 + 32);
          if (v25)
          {
            if (!v21)
            {
              goto LABEL_11;
            }

            goto LABEL_19;
          }

LABEL_43:
          v35 = v21;
          sub_267C77240(__dst);
          if (!v21)
          {
            v15 = 1;
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

LABEL_36:
      sub_267C77240(__dst);
      goto LABEL_37;
    }

    if (swift_dynamicCast())
    {
      memcpy(v37, v38, 0x71uLL);
      if (*(v37[9] + 16) == 1 && *(__dst[9] + 16) == 1)
      {
        v27 = *(v37[9] + 32);
        v28 = *(__dst[9] + 32);
        v29 = v27;
        v30 = v28;
        if (v27 == 1)
        {
          sub_267C77240(__dst);
          sub_267C77240(v37);
          if (v28 == 1)
          {
LABEL_25:
            v15 = 1;
LABEL_40:
            __swift_destroy_boxed_opaque_existential_0(v42);
            __swift_destroy_boxed_opaque_existential_0(v41);
            goto LABEL_41;
          }

          goto LABEL_54;
        }

        if (v28 != 1)
        {
          if (v27)
          {
            if (v28)
            {
              sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
              v15 = sub_267EF9818();
              sub_267C77240(__dst);
              sub_267C77240(v37);
              sub_267C77344(v28);
              sub_267C77344(v27);
              goto LABEL_40;
            }

            sub_267C77240(__dst);
            sub_267C77240(v37);
            v36 = v27;
            goto LABEL_55;
          }

          sub_267C77240(__dst);
          sub_267C77240(v37);
          if (!v28)
          {
            goto LABEL_25;
          }

LABEL_54:
          v36 = v28;
LABEL_55:
          sub_267C77344(v36);
          goto LABEL_49;
        }

        sub_267C77344(v27);
      }

      sub_267C77240(__dst);
      sub_267C77240(v37);
LABEL_49:
      v15 = 0;
      goto LABEL_40;
    }

    sub_267C77240(__dst);
  }

  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v31 = qword_280240FC8;
  v32 = sub_267EF95E8();
  sub_267EF8998("Tried comparing unknown type of component senders", 49, 2, &dword_267B93000, v31, v32, MEMORY[0x277D84F90]);
  sub_267B9FF34(v41, &qword_280229D00, &unk_267EFF350);
  v15 = 0;
LABEL_41:
  __swift_destroy_boxed_opaque_existential_0(v43);
  return v15 & 1;
}

uint64_t sub_267C00EDC(void *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  (*(*(v1 + 8) + 32))(v2);
  sub_267BD9E24();

  if (v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229CD8, &qword_267F08CD0);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {
        sub_267B9A5E8(&v25, v28);
        v3 = OUTLINED_FUNCTION_26_0();
        __swift_project_boxed_opaque_existential_0(v3, v4);
        v5 = OUTLINED_FUNCTION_16_1();
        v7 = v6(v5);
        v8 = v29;
        v9 = v30;
        __swift_project_boxed_opaque_existential_0(v28, v29);
        v10 = (*(v9 + 16))(v8, v9);
        v11 = v10;
        if (v7)
        {
          if (v10)
          {
            sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90);
            OUTLINED_FUNCTION_16_1();
            v12 = sub_267EF9818();

            if ((v12 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_14;
          }

          v11 = v7;
        }

        else if (!v10)
        {
LABEL_14:
          v14 = OUTLINED_FUNCTION_26_0();
          __swift_project_boxed_opaque_existential_0(v14, v15);
          v16 = OUTLINED_FUNCTION_16_1();
          v18 = v17(v16);
          v20 = v19;
          v21 = v29;
          v22 = v30;
          __swift_project_boxed_opaque_existential_0(v28, v29);
          v23 = (*(v22 + 24))(v21, v22);
          if ((v20 & 1) == 0)
          {
            if ((v24 & 1) != 0 || v18 != v23)
            {
              goto LABEL_19;
            }

LABEL_22:
            __swift_destroy_boxed_opaque_existential_0(v28);
            return 0;
          }

          if (v24)
          {
            goto LABEL_22;
          }

LABEL_19:
          __swift_destroy_boxed_opaque_existential_0(v28);
          return 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    sub_267B9FF34(v28, &qword_280229910, &unk_267EFEB70);
    v25 = 0u;
    v26 = 0u;
    v27 = 0;
  }

  sub_267B9FF34(&v25, &qword_280229CE0, &qword_267F00410);
  return 1;
}

uint64_t sub_267C01144(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11)
{
  type metadata accessor for MessagesMessageComponentDialogContext.Builder();
  inited = swift_initStackObject();
  inited[16] = a1;
  inited[17] = a2;
  inited[18] = a3;
  inited[19] = a4;
  inited[20] = a5;
  inited[21] = a6;
  inited[22] = a7;
  inited[23] = a8;
  inited[24] = a9;
  inited[25] = a10;
  inited[26] = a11;
  type metadata accessor for MessagesMessageComponentDialogContext();
  v18 = swift_allocObject();
  sub_267C013CC(inited);
  return v18;
}

double OUTLINED_FUNCTION_75_5()
{
  result = 0.0;
  *(v0 + 776) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_6()
{
  sub_267B9A5E8(v0, v1 + 336);
  __swift_project_boxed_opaque_existential_0((v1 + 336), *(v1 + 360));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_75_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_267DB37C4(a1, a2, a3, v17, a16, a17, 1u);
}

uint64_t OUTLINED_FUNCTION_75_8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = v5;

  return sub_267EF8998(a1, 51, 2, a4, v5);
}

uint64_t OUTLINED_FUNCTION_75_10(uint64_t a1)
{
  *(v1 + 616) = v2;
  *(v1 + 592) = a1;

  return sub_267B9AFEC(v1 + 1496, v1 + 552);
}

uint64_t sub_267C013CC(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  *(v1 + 26) = a1[18];
  *(v1 + 27) = a1[19];
  *(v1 + 28) = a1[20];
  *(v1 + 29) = a1[21];
  *(v1 + 30) = a1[22];
  *(v1 + 31) = a1[23];
  *(v1 + 32) = a1[24];
  *(v1 + 33) = a1[25];
  v2 = a1[26];

  *(v1 + 34) = v2;
  return v1;
}

void sub_267C0150C(uint64_t a2@<X8>)
{
  sub_267C01540();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_267C015BC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_267C0BBFC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_267C01608@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_267C0163C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_267C0165C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C0174C()
{
  v1 = sub_267EF6F58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_267C017F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C01840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C018A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
    v11 = &a1[*(a3 + 24)];

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

_BYTE *sub_267C01938(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BD90, &unk_267EFCDD0);
    v8 = &v5[*(a4 + 24)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C019C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C01A00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C01DC8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C01E10()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C01E48()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_47();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_267C01FC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C01FF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02030()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C020BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C02124()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C02164()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_94();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_267C021BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C021F4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_267C0222C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C02284()
{
  v1 = sub_267EF4228();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_267EF4158();
  OUTLINED_FUNCTION_58();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
  v17 = *(v12 + 64);
  v15 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v7));

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v15 | 7);
}

uint64_t sub_267C023F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_32_4();
    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_267C02488(void *result, unsigned int a2, int a3)
{
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
    v3 = OUTLINED_FUNCTION_15_2();

    return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_267C02504(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_44_5();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_32_4();
    return (v8 + 1);
  }
}

void sub_267C025A8()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 72)) = (v0 - 1);
  }
}

uint64_t sub_267C02640(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1();
  if (*(v3 + 84) == a2)
  {
    v4 = OUTLINED_FUNCTION_44_5();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_32_4();
    return (v8 + 1);
  }
}

void sub_267C026E4()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_40_1();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_15_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 48)) = (v0 - 1);
  }
}

uint64_t sub_267C028FC()
{
  v1 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_267C029B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C029F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C02A44()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_267C02AE0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_29_5(a3, result);
  }

  return result;
}

uint64_t sub_267C02B00()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C02B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2CC8();
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267C02C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2CC8();
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C02CE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02D1C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_267C02D6C()
{

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_267C02DF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C02F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_267EF2BA8();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_267C02FE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_267EF2BA8();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_267C03104()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C031C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C031FC()
{
  v1 = (type metadata accessor for ComponentReadingRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[15];
  sub_267EF2CC8();
  OUTLINED_FUNCTION_22();
  (*(v7 + 8))(v5 + v6);

  return MEMORY[0x2821FE8E8](v0, ((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_267C033D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF79B8();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_267C03480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_267EF79B8();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_267C035A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_267C035F4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C0363C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C036D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_267C03720(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A500, &qword_267F00DD0);
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_267C03780()
{

  OUTLINED_FUNCTION_65_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_267C037BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267C037F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267C03834()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_267C0387C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_267C038C0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267C03910()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_267C03958()
{

  OUTLINED_FUNCTION_6_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_267C0398C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}