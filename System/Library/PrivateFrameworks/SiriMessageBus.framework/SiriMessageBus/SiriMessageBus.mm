void sub_2237613A8(uint64_t a1)
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_250();
  sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_112();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27_1();
  v38 = v1;
  v39 = v1;
  v12 = sub_223761B80();
  v36 = v2;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_363(v13, v14, v15, v16, v17, v18, 32);
  v19 = OUTLINED_FUNCTION_169(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  (v12)(v19);
  OUTLINED_FUNCTION_170();
  v12();
  v20 = v4;
  v34 = v4;
  OUTLINED_FUNCTION_53_0();
  v22 = v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = *(v20 + 32);
  OUTLINED_FUNCTION_139();
  v24();
  v25 = OUTLINED_FUNCTION_67();
  (v24)(v25);
  OUTLINED_FUNCTION_76((&type metadata for Logger + v23));
  *(v26 + 8) = 0x80000002237BA380;
  v27 = (v23 + v22);
  *v27 = sub_223762ACC;
  v27[1] = &v37;
  OUTLINED_FUNCTION_5_3();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_223761F8C;
  *(v28 + 24) = v23;
  v40[4] = sub_223761F78;
  v40[5] = v28;
  OUTLINED_FUNCTION_7_5();
  v40[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v40[2] = v29;
  v40[3] = &block_descriptor_102;
  v30 = _Block_copy(v40);

  dispatch_sync(v35, v30);
  _Block_release(v30);
  v31 = *(v34 + 8);
  v32 = OUTLINED_FUNCTION_231();
  v31(v32);
  v33 = (v31)(v36, v8);
  OUTLINED_FUNCTION_22_1(v33, "");
  OUTLINED_FUNCTION_90();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_2()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_2237B53DC();
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_104(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *(a4 - 256) = a3;
  *(v4 - 328) = a2;
  *(v4 - 336) = a1;
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_26_0(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

BOOL OUTLINED_FUNCTION_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_15_2()
{

  return sub_2237B5DBC();
}

BOOL OUTLINED_FUNCTION_15_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_15_4()
{
  *(v7 - 256) = v6;
  *(v7 - 248) = v0;
  *(v7 - 240) = v2;
  *(v7 - 232) = v4;
  *(v7 - 280) = v4;
  *(v7 - 224) = v5;
  *(v7 - 216) = v3;
  *(v7 - 208) = v1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_15_7()
{

  return [v0 (v2 + 888)];
}

unint64_t sub_223761B80()
{
  result = qword_28131A9F0;
  if (!qword_28131A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A9F0);
  }

  return result;
}

id sub_223761BD4()
{
  if (qword_28131AA00 != -1)
  {
    swift_once();
  }

  v1 = qword_28131B548;

  return v1;
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *OUTLINED_FUNCTION_5_4@<X0>(unint64_t a1@<X8>, uint64_t a2@<X4>, void *a3@<X5>, void *a4@<X6>, void *a5@<X7>)
{

  return sub_2237A69B8((a1 > 1), v6, 1, v5, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_74()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_74_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_137()
{

  return swift_slowAlloc();
}

uint64_t sub_223761F94()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_270(v1);
  OUTLINED_FUNCTION_268();
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);

  return sub_223762034(v0 + v3, v0 + v2, v7, v8, v9);
}

uint64_t sub_223762034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v14 = a5;
  v7 = sub_2237B5C7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223761B80();
  sub_2237B572C();
  sub_2237B572C();
  v12 = sub_2237B573C("MessageBusMessagePostingTime", 28, 2, "%{public}s", 10, 2, a3, a4, &type metadata for Logger, v11);
  v14(v12);
  sub_2237B572C();
  return (*(v8 + 8))(v10, v7);
}

void sub_2237621E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_191();
  sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v151 = v27;
  v152 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v28);
  v29 = sub_2237B5D0C();
  v30 = OUTLINED_FUNCTION_8_6(v29, &a18);
  v148 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v32);
  sub_2237B559C();
  OUTLINED_FUNCTION_0_2();
  v156 = v34;
  v157 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  v155 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v36);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4_6();
  v154 = v38;
  OUTLINED_FUNCTION_12();
  v160 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v153 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_20_0();
  v161 = v42;
  OUTLINED_FUNCTION_12();
  sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_17_4();
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v163 = v47;
  v164 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_39_0();
  v158 = v48;
  OUTLINED_FUNCTION_204(&a14);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_50_0();
  v50 = [v22 assistantId];
  sub_2237B5E2C();
  v52 = v51;

  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_14_3();
  sub_223764358(v53, v54, v55, v56, 1, 0, v57, v58, v146[0], v146[1], v147, v148, v149, v150, v151, v152, v153, v154, v155, v156);
  v52, v59, v60, v61, v62, v63, v64, v65;
  v159 = v20;
  v66 = [v22 assistantId];
  sub_2237B5E2C();
  v68 = v67;

  OUTLINED_FUNCTION_355();
  v69(v23);
  v162 = v21;
  v70 = OUTLINED_FUNCTION_186();
  sub_223763E48(v70, v71, v23);
  v68, v72, v73, v74, v75, v76, v77, v78;
  v79 = v44 + 8;
  v80 = OUTLINED_FUNCTION_240();
  v81 = v22;
  v82(v80);
  sub_223767020(v22, &selRef_sharedUserId);
  if (v83)
  {
    OUTLINED_FUNCTION_298();
    v84 = v153;
  }

  else
  {
    OUTLINED_FUNCTION_296();
    sub_2237B56CC();
    sub_2237B56BC();
    OUTLINED_FUNCTION_298();
    v84 = v153;
    (*(v153 + 8))(v79, v160);
  }

  OUTLINED_FUNCTION_19_2();
  sub_2237B56AC();
  v85 = v154;
  v86 = OUTLINED_FUNCTION_16();
  v87(v86);
  v88 = [v81 languageCode];
  v89 = sub_2237B5E2C();
  v91 = v90;

  LOBYTE(v88) = [v81 isSystemAssistantExperienceEnabled];
  v92 = type metadata accessor for RequestDispatcher.SessionContext(0);
  v93 = (v154 + *(v92 + 20));
  *v93 = v89;
  v93[1] = v91;
  *(v85 + *(v92 + 24)) = v88;
  OUTLINED_FUNCTION_12_4();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
  v99 = v159;
  swift_beginAccess();
  sub_22376C89C(v85, v159 + v98);
  swift_endAccess();
  v100 = v162;
  v101 = *(v163 + 16);
  v101(v158, v162, v164);
  v102 = v81;
  v103 = v155;
  OUTLINED_FUNCTION_193();
  v104 = sub_2237B558C();
  MEMORY[0x28223BE20](v104);
  v146[-2] = v100;
  v146[-1] = v103;
  v105 = objc_allocWithZone(sub_2237B44EC());
  OUTLINED_FUNCTION_34_0();
  v106 = sub_2237B44AC();
  if (v106)
  {
    v107 = v106;
    v108 = *(v99 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
    if ((*(v108 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v109))
    {
      v154 = *(v108 + 16);
      v110 = v158;
      v111 = v164;
      v101(v158, v162, v164);
      v112 = v163;
      v113 = ((*(v163 + 80) + 24) & ~*(v163 + 80));
      v114 = swift_allocObject();
      *(v114 + 16) = v108;
      (*(v112 + 32))(&v113[v114], v110, v111);
      v166[4] = sub_22376CCA0;
      v166[5] = v114;
      OUTLINED_FUNCTION_7_5();
      v166[1] = 1107296256;
      OUTLINED_FUNCTION_6_6();
      v166[2] = v115;
      v166[3] = &block_descriptor_435;
      _Block_copy(v166);
      OUTLINED_FUNCTION_249();

      v116 = v147;
      sub_2237B5CEC();
      v165 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_5();
      sub_223766F90(v117, v118, MEMORY[0x277D851A0]);
      v119 = OUTLINED_FUNCTION_256();
      __swift_instantiateConcreteTypeFromMangledNameV2(v119, v120);
      OUTLINED_FUNCTION_4_8();
      sub_223766FD8(v121, &unk_27D097C90, qword_2237B7940, v122);
      OUTLINED_FUNCTION_287();
      v123 = v152;
      sub_2237B60FC();
      MEMORY[0x223DEACD0](0, v116, v99, v113);
      _Block_release(v113);
      (*(v151 + 8))(v99, v123);
      OUTLINED_FUNCTION_96();
      v124(v116, v150);
    }

    sub_2237654A4(v107);

    goto LABEL_15;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v125 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v125, qword_28131B550);
  v126 = v102;
  v127 = sub_2237B5C8C();
  sub_2237B5FFC();

  if (!OUTLINED_FUNCTION_218())
  {

LABEL_15:
    (*(v84 + 8))(v161, v160);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_20();
  v166[0] = OUTLINED_FUNCTION_32();
  *v100 = 136315138;
  v128 = [v126 assistantId];
  v129 = sub_2237B5E2C();
  v130 = v84;
  v132 = v131;

  v133 = sub_223763694(v129, v132, v166);
  v132, v134, v135, v136, v137, v138, v139, v140;
  *(v100 + 4) = v133;
  OUTLINED_FUNCTION_33();
  _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_3_0();

  (*(v130 + 8))(v161, v160);
LABEL_16:
  (*(v156 + 8))(v103, v157);
  (*(v163 + 8))(v162, v164);
  OUTLINED_FUNCTION_14_2();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return sub_2237B627C();
}

uint64_t OUTLINED_FUNCTION_11_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2237B606C();
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return swift_getObjectType();
}

unint64_t OUTLINED_FUNCTION_11_8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a6 + 8 * (result >> 6) + 64) |= 1 << result;
  v6 = (*(a6 + 48) + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (*(a6 + 56) + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  return result;
}

double OUTLINED_FUNCTION_60_0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_56(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_223762CDC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_0(v2 + 40, v14);
  v3 = *(v2 + 40);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_22376504C();
  if (v5)
  {
    v12 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v12 = 0;
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  return v12;
}

uint64_t sub_223762D6C(char *a1, char *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v82 = a3;
  v75 = a1;
  v80 = sub_2237B40DC();
  OUTLINED_FUNCTION_0_2();
  v76 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v78 = v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v67 - v11;
  v74 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v81 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v79 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  v18 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  sub_2237B411C();
  v25 = OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime;
  sub_2237B40CC();
  v26 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
  v27 = *MEMORY[0x277D5D0D0];
  sub_2237B551C();
  OUTLINED_FUNCTION_4();
  (*(v28 + 104))(v5 + v26, v27);
  v29 = (v5 + OBJC_IVAR____TtC14SiriMessageBus7Session_assistantId);
  *v29 = v75;
  v29[1] = a2;
  v70 = v24;
  v71 = v20;
  v30 = *(v20 + 16);
  v72 = v18;
  v69 = v20 + 16;
  v68 = v30;
  v30(v23, v5 + v24, v18);
  v73 = *(v81 + 16);
  v31 = v74;
  v73(v17, v82, v74);
  type metadata accessor for ConversationSession(0);
  swift_allocObject();

  v75 = v23;
  sub_223766280();
  v32 = OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession;
  *(v5 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession) = v33;
  swift_beginAccess();
  v34 = v76;
  v35 = v5 + v25;
  v36 = v31;
  v37 = v78;
  v38 = v80;
  (*(v76 + 16))(v78, v35, v80);
  v39 = v77;
  sub_2237B409C();
  (*(v34 + 8))(v37, v38);
  (*(v34 + 32))(v5 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v39, v38);
  v73(v17, *(v5 + v32) + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType, v36);
  v40 = v81;
  v41 = v79;
  (*(v81 + 104))(v79, *MEMORY[0x277D5D258], v36);
  LOBYTE(v23) = sub_223766744();
  v42 = *(v40 + 8);
  v42(v41, v36);
  v42(v17, v36);
  if (v23)
  {
    v83 = 0;
    v84 = 0xE000000000000000;
    sub_2237B613C();
    v84, v43, v44, v45, v46, v47, v48, v49;
    v83 = 0xD00000000000002ALL;
    v84 = 0x80000002237BB2A0;
    v50 = v75;
    v51 = v72;
    v68(v75, v5 + v70, v72);
    sub_22376514C(&qword_28131B4D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = sub_2237B627C();
    v54 = v53;
    MEMORY[0x223DEAAD0](v52);
    v54, v55, v56, v57, v58, v59, v60, v61;
    (*(v71 + 8))(v50, v51);
    v62 = v84;
    v63 = (v5 + OBJC_IVAR____TtC14SiriMessageBus7Session_transactionName);
    *v63 = v83;
    v63[1] = v62;
    sub_2237B5E4C();
    v64 = os_transaction_create();
    v42(v82, v36);
  }

  else
  {
    v42(v82, v36);
    v64 = 0;
    v65 = (v5 + OBJC_IVAR____TtC14SiriMessageBus7Session_transactionName);
    *v65 = 0;
    v65[1] = 0xE000000000000000;
  }

  *(v5 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionTransaction) = v64;
  return v5;
}

uint64_t sub_223763314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6(unint64_t *a1)
{
  v2 = MEMORY[0x277CC9610];

  return sub_2237650C0(a1, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return MEMORY[0x2821FD9B8](a1, v3 - 216, v2, a1, v1);
}

uint64_t OUTLINED_FUNCTION_9_1()
{
}

uint64_t OUTLINED_FUNCTION_9_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

void OUTLINED_FUNCTION_3_0()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_2237B5C8C();
}

uint64_t sub_223763694(uint64_t a1, SRDRequestDispatcherInternal *a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_17();
  v9 = sub_22376AF24(v6, v7, v8, 1, a1, a2);
  v17 = v21[0];
  if (v9)
  {
    v18 = v9;
    a2, v10, v11, v12, v13, v14, v15, v16;
    ObjectType = swift_getObjectType();
    v21[0] = v18;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v21[0] = a1;
    v21[1] = a2;
  }

  v19 = *a3;
  if (*a3)
  {
    sub_22376AEC8(v21, *a3);
    *a3 = v19 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v17;
}

uint64_t OUTLINED_FUNCTION_21()
{
  v2 = *(v0 + 104);

  return sub_2237818D8(v2);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_21_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 72);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  v3 = *(v1 - 304);

  return __swift_getEnumTagSinglePayload(v0, 1, v3);
}

char *OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 16) + 1;

  return sub_2237A69B8(0, v10, 1, v8, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2)
{

  return sub_2237B58AC();
}

uint64_t OUTLINED_FUNCTION_4_9()
{
}

uint64_t type metadata accessor for ConversationSession(uint64_t a1)
{
  result = qword_28131AFF0;
  if (!qword_28131AFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2237639EC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void OUTLINED_FUNCTION_36(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FDAF0](v6 - 96, v6 - 65, v4, a4, v5);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2237B606C();
}

void OUTLINED_FUNCTION_10_3(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_223763694(v5, v4, va);
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  return MEMORY[0x28211B658](va, v15, a1);
}

uint64_t OUTLINED_FUNCTION_12_6(float a1)
{
  *v1 = a1;

  return sub_223763694(v3, v2, (v4 - 152));
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1)
{

  return MEMORY[0x28211B570](v2, v3, v1, v2, a1);
}

void OUTLINED_FUNCTION_8_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_8_3()
{
}

uint64_t type metadata accessor for Session(uint64_t a1)
{
  result = qword_28131A9D8;
  if (!qword_28131A9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  v5 = *(v3 + a3);
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  return sub_22377B32C(v5, v6);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_223763E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_20_6();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v47 = v11;
  sub_2237B40DC();
  OUTLINED_FUNCTION_0_2();
  v45 = v13;
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v44 = v15 - v14;
  v16 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  v26 = v25 - v24;
  v27 = v4[2];
  (*(v28 + 16))(v25 - v24, v6);
  type metadata accessor for Session(0);
  swift_allocObject();

  v29 = sub_223762D6C(v10, v8, v26, v27);
  OUTLINED_FUNCTION_17_0((v4 + 5), &v51);
  v30 = *(*(v4 + 5) + 16);
  v31 = *(v4 + 8);
  *(v4 + 7) = v10;
  *(v4 + 8) = v8;

  v31, v32, v33, v34, v35, v36, v37, v38;
  OUTLINED_FUNCTION_19_6((v4 + 5), v50);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v4 + 5);
  sub_223766824(v29, v10, v8, isUniquelyReferenced_nonNull_native);
  *(v4 + 5) = v48;
  swift_endAccess();
  v40 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v41 = *(v18 + 16);
  v41(v22, v29 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v16);
  OUTLINED_FUNCTION_19_6((v4 + 6), v50);
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v4 + 6);
  sub_2237669A8(v29, v22, v42);
  *(v4 + 6) = v49;
  (*(v18 + 8))(v22, v16);
  swift_endAccess();
  if (!v30)
  {
    v43 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
    OUTLINED_FUNCTION_17_0(v29 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v50);
    (*(v45 + 16))(v44, v29 + v43, v46);
    sub_223766C20();
    (*(v45 + 8))(v44, v46);
  }

  v41(v47, v29 + v40, v16);

  OUTLINED_FUNCTION_21_5();
}

id OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return v2;
}

uint64_t OUTLINED_FUNCTION_17_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_24_0()
{

  return sub_2237B5DBC();
}

void OUTLINED_FUNCTION_24_1(void *a1)
{

  _os_log_impl(a1, v1, v2, v3, v4, 0xCu);
}

void OUTLINED_FUNCTION_3_2(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>, void *a4@<X2>, void *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  v10 = (v9 + a3);
  v11 = *(v9 + a3 + 8);
  *v10 = a1;
  v10[1] = a2;
  v11, a2, a4, a5, a6, a7, a8, a9;
}

uint64_t OUTLINED_FUNCTION_3_5(uint64_t a1, uint64_t a2)
{

  return sub_2237B623C();
}

id OUTLINED_FUNCTION_27(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  v3 = *(v1 - 312);

  return sub_22378ED08(v0, v3);
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_getObjectType();
}

void sub_223764358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  LODWORD(v230) = v26;
  LODWORD(v223) = v27;
  v222 = v28;
  v225 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_174();
  v32 = sub_2237B5CCC();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v216 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v35);
  v36 = sub_2237B5D0C();
  v37 = OUTLINED_FUNCTION_8_6(v36, &a15);
  v214 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v39);
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v219 = v41;
  v220 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v218 = &v211[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  OUTLINED_FUNCTION_12();
  v44 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_272();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_345();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_29_1();
  v217 = v20;
  v50 = *(v20 + OBJC_IVAR___SRDRequestDispatcherInternal_sessionsManager);
  v51 = v31;
  v224 = v21;
  v52 = OUTLINED_FUNCTION_136();
  v221 = v50;
  v226 = sub_223762CDC(v52, v53);
  if (!v226)
  {
    v96 = v225;
    if ((v230 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (!v225)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_304();
    v98 = v97(v22);
    MEMORY[0x28223BE20](v98);
    OUTLINED_FUNCTION_279();
    *(v99 - 16) = v22;
    v101 = sub_2237A6E28(sub_2237A8EF4, v100, v96);
    v102 = OUTLINED_FUNCTION_171();
    v104 = v103(v102);
    if (!v101)
    {
      goto LABEL_30;
    }

    MEMORY[0x28223BE20](v104);
    v105 = v224;
    v106 = objc_allocWithZone(sub_2237B55EC());
    OUTLINED_FUNCTION_144();
    v107 = sub_2237B55AC();
    if (v107)
    {
      v108 = v107;
      sub_2237654A4(v107);
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v197 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v197, qword_28131B550);

      v108 = sub_2237B5C8C();
      sub_2237B5FFC();
      v51, v198, v199, v200, v201, v202, v203, v204;
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_20();
        v232[0] = OUTLINED_FUNCTION_32();
        v210 = 136315138;
        *v211 = sub_223763694(v105, v51, v232);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v205, v206, v207, v208, v209, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
      }
    }

LABEL_29:

    goto LABEL_30;
  }

  v54 = v225;
  if (v225)
  {
    *&v211[4] = OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession;
    v55 = OUTLINED_FUNCTION_81();
    v229 = v57;
    v230 = v56;
    v58 = (v57)(v55);
    v212 = v51;
    MEMORY[0x28223BE20](v58);
    OUTLINED_FUNCTION_279();
    *(v59 - 16) = v22;
    v61 = sub_2237A6E28(sub_2237A93F4, v60, v54);
    v62 = v212;
    v63 = OUTLINED_FUNCTION_171();
    v227 = v65;
    v228 = v64;
    v65(v63);
    if (!v61)
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v109 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v109, qword_28131B550);
      v110 = v226;

      v111 = sub_2237B5C8C();
      v112 = sub_2237B5FFC();
      v62, v113, v114, v115, v116, v117, v118, v119;

      v54, v120, v121, v122, v123, v124, v125, v126;
      v223 = v111;
      if (!os_log_type_enabled(v111, v112))
      {

        goto LABEL_30;
      }

      LODWORD(v222) = v112;
      v127 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v232[0] = v217;
      *v127 = 136315906;
      v229(v22, *(v110 + *&v211[4]) + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType, v44);
      v128 = sub_2237B562C();
      v130 = v129;
      v131 = OUTLINED_FUNCTION_171();
      v227(v131);
      v132 = sub_223763694(v128, v130, v232);
      v130, v133, v134, v135, v136, v137, v138, v139;
      *(v127 + 4) = v132;
      v221 = v127;
      *(v127 + 12) = 2080;
      v140 = *(v54 + 16);
      if (v140)
      {
        v141 = v54 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
        v142 = *(v46 + 72);
        v143 = MEMORY[0x277D84F90];
        do
        {
          v144 = OUTLINED_FUNCTION_19_3();
          (v229)(v144);
          v145 = sub_2237B562C();
          v147 = v146;
          v148 = OUTLINED_FUNCTION_292();
          v227(v148);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v143 = sub_2237A68B0(0, *(v143 + 2) + 1, 1, v143, v149, v150, v151, v152);
          }

          v154 = *(v143 + 2);
          v153 = *(v143 + 3);
          if (v154 >= v153 >> 1)
          {
            v143 = sub_2237A68B0((v153 > 1), v154 + 1, 1, v143, v149, v150, v151, v152);
          }

          *(v143 + 2) = v154 + 1;
          v155 = &v143[16 * v154];
          *(v155 + 4) = v145;
          *(v155 + 5) = v147;
          v141 += v142;
          --v140;
        }

        while (v140);
      }

      else
      {
        v143 = MEMORY[0x277D84F90];
      }

      v231 = v143;
      v156 = OUTLINED_FUNCTION_193();
      __swift_instantiateConcreteTypeFromMangledNameV2(v156, v157);
      OUTLINED_FUNCTION_291();
      sub_223766FD8(v158, v159, v160, v161);
      sub_2237B5DFC();
      v163 = v162;
      v143, v162, v164, v165, v166, v167, v168, v169;
      v170 = OUTLINED_FUNCTION_193();
      v173 = sub_223763694(v170, v171, v172);
      v163, v174, v175, v176, v177, v178, v179, v180;
      v181 = v220;
      v182 = v221;
      *(v221 + 14) = v173;
      *(v182 + 22) = 2080;
      (*(v219 + 16))(v218, v226 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v181);
      sub_223766F90(&qword_28131B4D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v183 = sub_2237B627C();
      v184 = OUTLINED_FUNCTION_119();
      v185(v184);
      v186 = OUTLINED_FUNCTION_1_1();
      sub_223763694(v186, v187, v188);
      v189 = OUTLINED_FUNCTION_249();
      v189, v190, v191, v192, v193, v194, v195, v196;
      *(v182 + 24) = v183;
      *(v182 + 32) = 2080;
      *(v182 + 34) = sub_223763694(v224, v212, v232);
      v108 = v223;
      _os_log_impl(&dword_22375F000, v223, v222, "Current session type: %s is different from given types: %s not ending sessionId: %s for assistantId: %s", v182, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_13_5();

      goto LABEL_29;
    }
  }

  v66 = v226;
  v67 = v223;
  if (v223)
  {
    v68 = OUTLINED_FUNCTION_81();
    v69(v68);
    OUTLINED_FUNCTION_304();
    v70(v23);
    OUTLINED_FUNCTION_352();
    v71 = sub_223766744();
    v72 = *(v46 + 8);
    v73 = OUTLINED_FUNCTION_100();
    v72(v73);
    v74 = OUTLINED_FUNCTION_171();
    v72(v74);
    if (v71)
    {
      v75 = *(v217 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
      if ((*(v75 + 32) & 1) != 0 || *(v75 + 33) == 1)
      {
        v77 = v218;
        v76 = v219;
        v78 = v66 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
        v79 = v220;
        (*(v219 + 16))(v218, v78, v220);
        v80 = (*(v76 + 80) + 24) & ~*(v76 + 80);
        v81 = swift_allocObject();
        v82 = OUTLINED_FUNCTION_192(v81);
        (*(v76 + 32))(v82 + v80, v77, v79);
        v232[4] = sub_223775ED4;
        v232[5] = v67;
        OUTLINED_FUNCTION_1_7();
        v232[1] = 1107296256;
        OUTLINED_FUNCTION_6_6();
        v232[2] = v83;
        v232[3] = &block_descriptor_428;
        _Block_copy(v232);
        OUTLINED_FUNCTION_254();

        v84 = v213;
        sub_2237B5CEC();
        v231 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_5_5();
        sub_223766F90(v85, v86, MEMORY[0x277D851A0]);
        v87 = OUTLINED_FUNCTION_19_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v87, v88);
        OUTLINED_FUNCTION_4_8();
        OUTLINED_FUNCTION_209();
        sub_223766FD8(v89, v90, v91, v92);
        sub_2237B60FC();
        OUTLINED_FUNCTION_173();
        _Block_release(v67);
        OUTLINED_FUNCTION_96();
        v93 = OUTLINED_FUNCTION_233();
        v94(v93);
        OUTLINED_FUNCTION_96();
        v95(v84, v215);
      }
    }
  }

  sub_2237697FC();

LABEL_30:
  OUTLINED_FUNCTION_14_2();
}

BOOL OUTLINED_FUNCTION_315(os_log_type_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t oslog)
{

  return os_log_type_enabled(oslog, a1);
}

void OUTLINED_FUNCTION_17_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_2(unint64_t *a1)
{
  v2 = MEMORY[0x277CC9628];

  return sub_2237650C0(a1, v2);
}

uint64_t OUTLINED_FUNCTION_1_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2)
{

  return sub_2237B61DC();
}

unint64_t sub_22376504C()
{
  OUTLINED_FUNCTION_31_2();
  sub_2237B634C();
  sub_2237B5E6C();
  v2 = sub_2237B636C();

  return sub_22376535C(v1, v0, v2);
}

uint64_t sub_2237650C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2237B412C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223765104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22376514C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223765194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2237651DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_223765224()
{
  result = qword_28131A820;
  if (!qword_28131A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D097C90, qword_2237B7940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A820);
  }

  return result;
}

void sub_223765288(uint64_t a1)
{
  sub_2237B412C();
  sub_2237651DC(&qword_28131B4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2237B5DDC();
  sub_22376AD50();
}

unint64_t sub_22376535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2237B629C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void OUTLINED_FUNCTION_20_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_20_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2237654A4(void *a1)
{
  v2 = v1;
  v4 = sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_4();
  v269 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  v268 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_4();
  v266 = v12;
  OUTLINED_FUNCTION_12();
  v274 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v267 = v13;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v16);
  v265 = &v252[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20_0();
  v264 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_20_0();
  v272 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  v271 = v22;
  OUTLINED_FUNCTION_12();
  v263 = sub_2237B540C();
  OUTLINED_FUNCTION_0_2();
  v262 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v252[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v270 = v27;
  MEMORY[0x28223BE20](v28);
  aBlock[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
  v275 = sub_2237B5E3C();
  v30 = v29;
  v273 = v2;
  if ((*(v2 + 32) & 1) == 0)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v77 = sub_2237B5C9C();
    __swift_project_value_buffer(v77, qword_28131B550);
    OUTLINED_FUNCTION_8_2();

    v78 = a1;
    v33 = sub_2237B5C8C();
    v34 = sub_2237B5FFC();

    v30, v79, v80, v81, v82, v83, v84, v85;
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_25_0();
      aBlock[0] = OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      sub_223763694(v275, v30, v86);
      v87 = OUTLINED_FUNCTION_8_2();
      v87, v88, v89, v90, v91, v92, v93, v94;
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_1_4();
      v97 = sub_223765194(v95, v96, MEMORY[0x277CC9628]);
      v98 = OUTLINED_FUNCTION_11_2(v97);
      v100 = v99;
      v101 = OUTLINED_FUNCTION_4_3();
      v102(v101);
      v103 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v103, v100, v104);
      v105 = OUTLINED_FUNCTION_8_2();
      v105, v106, v107, v108, v109, v110, v111, v112;
      *(v4 + 14) = v98;
      v76 = "MessageBus was not started rejected posting message type %s, message id: %s";
      goto LABEL_11;
    }

LABEL_12:
    v30, v42, v43, v44, v45, v46, v47, v48;
    goto LABEL_13;
  }

  v261 = v9;
  if (sub_2237B53AC())
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v31 = sub_2237B5C9C();
    __swift_project_value_buffer(v31, qword_28131B550);
    OUTLINED_FUNCTION_8_2();

    v32 = a1;
    v33 = sub_2237B5C8C();
    v34 = sub_2237B5FFC();

    v30, v35, v36, v37, v38, v39, v40, v41;
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_25_0();
      aBlock[0] = OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_23_0(4.8151e-34);
      sub_223763694(v275, v30, v49);
      v50 = OUTLINED_FUNCTION_8_2();
      v50, v51, v52, v53, v54, v55, v56, v57;
      OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_1_4();
      v60 = sub_223765194(v58, v59, MEMORY[0x277CC9628]);
      v61 = OUTLINED_FUNCTION_11_2(v60);
      v63 = v62;
      v64 = OUTLINED_FUNCTION_4_3();
      v65(v64);
      v66 = OUTLINED_FUNCTION_13_2();
      sub_223763694(v66, v63, v67);
      v68 = OUTLINED_FUNCTION_8_2();
      v68, v69, v70, v71, v72, v73, v74, v75;
      *(v4 + 14) = v61;
      v76 = "Ignoring posting again message type: %s with msgId: %s back to the bus";
LABEL_11:
      _os_log_impl(&dword_22375F000, v33, v34, v76, v4, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();
LABEL_13:

      return 0;
    }

    goto LABEL_12;
  }

  v260 = v4;
  sub_2237B53BC();
  sub_2237B536C();
  v114 = swift_dynamicCastClass();
  v115 = qword_28131AA10;
  v259 = v6;
  v258 = a1;
  if (!v114)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v175 = sub_2237B5C9C();
    __swift_project_value_buffer(v175, qword_28131B550);
    OUTLINED_FUNCTION_8_2();

    v176 = a1;
    v177 = sub_2237B5C8C();
    v178 = sub_2237B601C();

    v30, v179, v180, v181, v182, v183, v184, v185;
    if (os_log_type_enabled(v177, v178))
    {
      v186 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      aBlock[0] = v257;
      OUTLINED_FUNCTION_23_0(4.8754e-34);
      LODWORD(v256) = v178;
      v161 = v275;
      v188 = sub_223763694(v275, v30, v187);
      OUTLINED_FUNCTION_21_0(v188);
      v255 = v177;
      sub_2237B53DC();
      OUTLINED_FUNCTION_1_4();
      v191 = sub_223765194(v189, v190, MEMORY[0x277CC9628]);
      v192 = OUTLINED_FUNCTION_11_2(v191);
      v194 = v193;
      v195 = OUTLINED_FUNCTION_4_3();
      v196(v195);
      v197 = OUTLINED_FUNCTION_13_2();
      v199 = sub_223763694(v197, v194, v198);
      OUTLINED_FUNCTION_26_0(v199, v200, v201, v202, v203, v204, v205, v206);
      *(v186 + 14) = v192;
      *(v186 + 22) = 2082;
      sub_2237B53CC();
      sub_2237B53FC();
      v207 = OUTLINED_FUNCTION_9_2();
      v208(v207);
      v209 = OUTLINED_FUNCTION_13_2();
      v211 = sub_223763694(v209, v194, v210);
      OUTLINED_FUNCTION_26_0(v211, v212, v213, v214, v215, v216, v217, v218);
      *(v186 + 24) = v26;
      v219 = v255;
      _os_log_impl(&dword_22375F000, v255, v256, "Posting message type: %{public}s with msgId: %{public}s from source: %{public}s to the message bus", v186, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();

      goto LABEL_26;
    }

LABEL_25:
    v161 = v275;
    goto LABEL_26;
  }

  v257 = v114;
  v116 = a1;
  if (v115 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_28131AA10);
  }

  v117 = sub_2237B5C9C();
  __swift_project_value_buffer(v117, qword_28131B550);

  v118 = v116;
  v119 = sub_2237B5C8C();
  v120 = sub_2237B601C();

  v30, v121, v122, v123, v124, v125, v126, v127;
  if (!os_log_type_enabled(v119, v120))
  {

    goto LABEL_25;
  }

  v128 = swift_slowAlloc();
  v256 = swift_slowAlloc();
  aBlock[0] = v256;
  OUTLINED_FUNCTION_23_0(4.8755e-34);
  v254 = v119;
  v129 = v275;
  v131 = sub_223763694(v275, v30, v130);
  OUTLINED_FUNCTION_21_0(v131);
  v253 = v120;
  sub_2237B53DC();
  OUTLINED_FUNCTION_1_4();
  v134 = sub_223765194(v132, v133, MEMORY[0x277CC9628]);
  v135 = OUTLINED_FUNCTION_11_2(v134);
  v255 = v118;
  v137 = v136;
  v138 = OUTLINED_FUNCTION_4_3();
  v139(v138);
  v140 = OUTLINED_FUNCTION_13_2();
  v142 = sub_223763694(v140, v137, v141);
  OUTLINED_FUNCTION_26_0(v142, v143, v144, v145, v146, v147, v148, v149);
  *(v128 + 14) = v135;
  *(v128 + 22) = 2082;
  v150 = sub_2237B535C();
  v152 = v151;
  v153 = sub_223763694(v150, v151, aBlock);
  v152, v154, v155, v156, v157, v158, v159, v160;
  *(v128 + 24) = v153;
  *(v128 + 32) = 2082;
  v161 = v129;
  sub_2237B53CC();
  sub_2237B53FC();
  v162 = OUTLINED_FUNCTION_9_2();
  v163(v162);
  v164 = OUTLINED_FUNCTION_13_2();
  v166 = sub_223763694(v164, v153, v165);
  OUTLINED_FUNCTION_26_0(v166, v167, v168, v169, v170, v171, v172, v173);
  *(v128 + 34) = v26;
  v174 = v254;
  _os_log_impl(&dword_22375F000, v254, v253, "Posting message type: %{public}s with msgId: %{public}s for requestId: %{public}s from source: %{public}s to the message bus", v128, 0x2Au);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_10();

LABEL_26:
  v220 = sub_223761B80();
  v221 = v271;
  sub_2237B574C();
  v222 = v272;
  sub_2237B573C("MessageBusQueueLatency", 22, 2, "%{public}s", 10, 2, v161, v30, &type metadata for Logger, v220);
  v30, v223, v224, v225, v226, v227, v228, v229;
  v275 = *(v273 + 16);
  v230 = v267;
  v231 = *(v267 + 16);
  v232 = v264;
  v233 = v221;
  v234 = v274;
  v231(v264, v233, v274);
  v235 = v265;
  v231(v265, v222, v234);
  v236 = *(v230 + 80);
  v237 = (v236 + 16) & ~v236;
  v238 = (v15 + v236 + v237) & ~v236;
  OUTLINED_FUNCTION_18_2();
  v239 = swift_allocObject();
  v240 = *(v230 + 32);
  v241 = v232;
  v242 = v274;
  v240(v239 + v237, v241, v274);
  v240(v239 + v238, v235, v242);
  *(v239 + v15) = v273;
  v243 = v258;
  *(v239 + v222) = v258;
  aBlock[4] = sub_22376C630;
  aBlock[5] = v239;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2237639EC;
  aBlock[3] = &block_descriptor_19;
  v244 = _Block_copy(aBlock);
  v245 = v243;

  v246 = v266;
  sub_2237B5CEC();
  v276 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_2();
  sub_223765194(v247, v248, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
  sub_223765224();
  v249 = v269;
  v250 = v260;
  sub_2237B60FC();
  MEMORY[0x223DEACD0](0, v246, v249, v244);
  _Block_release(v244);
  (*(v259 + 8))(v249, v250);
  (*(v268 + 8))(v246, v261);
  v251 = *(v230 + 8);
  v251(v272, v242);
  v251(v271, v242);

  return 1;
}

uint64_t sub_223766144()
{
  v2 = sub_2237B5C7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = *(v3 + 80);
  v6 = (*(v3 + 64) + v5 + ((v5 + 16) & ~v5)) & ~v5;
  OUTLINED_FUNCTION_18_2();
  v4(v0 + v7, v2);
  v4(v0 + v6, v2);

  return MEMORY[0x2821FE8E8](v0, v1 + 8, v5 | 7);
}

uint64_t sub_223766240(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_223766280()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v46 = v2;
  v4 = v3;
  v42 = v3;
  v6 = v5;
  v8 = v7;
  sub_2237B603C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_4();
  sub_2237B605C();
  OUTLINED_FUNCTION_0_2();
  v44 = v11;
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_4();
  v43 = v12;
  v13 = sub_2237B5D0C();
  v14 = OUTLINED_FUNCTION_1(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_4();
  v15 = (v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  sub_2237B560C();
  sub_223766698(qword_28131A8A8, 255, MEMORY[0x277D5D1F0], MEMORY[0x277D5D1F8]);
  v16 = MEMORY[0x277D84F90];
  v17 = OUTLINED_FUNCTION_15_2();
  v18 = OUTLINED_FUNCTION_15_2();
  *v15 = v17;
  v15[1] = v18;
  v19 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots;
  *(v1 + v19) = sub_2237B5DBC();
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshotRequestIds) = v16;
  v20 = (v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_assistantId);
  *v20 = v8;
  v20[1] = v6;
  v21 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionId;
  v41 = sub_2237B412C();
  v22 = *(v41 - 8);
  (*(v22 + 16))(v1 + v21, v4, v41);
  v23 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType;
  v24 = sub_2237B563C();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v1 + v23, v46, v24);
  sub_223766240(0, &qword_28131A7D8, 0x277D85C78);

  sub_2237B613C();
  0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x223DEAAD0](v8, v6);
  v6, v33, v34, v35, v36, v37, v38, v39;
  sub_2237B5CFC();
  (*(v44 + 104))(v43, *MEMORY[0x277D85268], v45);
  sub_223766698(&qword_28131A7E0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0979A8, &qword_2237B8500);
  sub_2237666E0();
  sub_2237B60FC();
  v40 = sub_2237B608C();
  (*(v25 + 8))(v46, v24);
  (*(v22 + 8))(v42, v41);
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue) = v40;
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_223766698(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2237666E0()
{
  result = qword_28131A810;
  if (!qword_28131A810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0979A8, &qword_2237B8500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A810);
  }

  return result;
}

uint64_t sub_223766744()
{
  sub_2237B563C();
  sub_22376514C(&unk_28131A888, MEMORY[0x277D5D268], MEMORY[0x277D5D278]);
  sub_2237B5EFC();
  sub_2237B5EFC();
  v6 = v17;
  if (v19 == v17 && v20 == v18)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2237B629C();
  }

  v20, v0, v6, v1, v2, v3, v4, v5;
  v18, v9, v10, v11, v12, v13, v14, v15;
  return v8 & 1;
}

uint64_t sub_223766824(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_22376504C();
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E78, &qword_2237B9478);
  if ((sub_2237B618C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_22376504C();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_223766960(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_223766960(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_2237669A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_2237B412C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_223765288(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E80, &qword_2237B9480);
  if ((sub_2237B618C() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_223765288(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_2237B62CC();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(v18[7] + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    return sub_223766B68(v14, v10, a1, v18);
  }
}

uint64_t sub_223766B68(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2237B412C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_223766C20()
{
  OUTLINED_FUNCTION_20_6();
  v1 = v0;
  v25 = v2;
  v26 = sub_2237B5D2C();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  OUTLINED_FUNCTION_1(v12);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  sub_2237B5CCC();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v28[4] = sub_223767224;
  v29 = v0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_2237639EC;
  v28[3] = &block_descriptor_3;
  _Block_copy(v28);
  v27 = MEMORY[0x277D84F90];
  sub_2237651DC(&qword_28131A840, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
  sub_223765224();
  sub_2237B60FC();
  sub_2237B5D5C();
  swift_allocObject();
  v17 = sub_2237B5D3C();

  *(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask) = v17;

  v18 = sub_2237B40DC();
  OUTLINED_FUNCTION_4();
  (*(v19 + 16))(v15, v25, v18);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
  v20 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  OUTLINED_FUNCTION_19_6(v1 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck, v28);
  sub_223763314(v15, v1 + v20, &qword_27D097E70, &qword_2237B9470);
  swift_endAccess();
  sub_2237B5D1C();
  sub_2237B5D7C();
  v21 = *(v4 + 8);
  v22 = v8;
  v23 = v26;
  v21(v22, v26);
  sub_2237B604C();

  v21(v11, v23);
  OUTLINED_FUNCTION_21_5();
}

uint64_t sub_223766F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223766FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223767020(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2237B5E2C();
  }

  return OUTLINED_FUNCTION_1_1();
}

uint64_t sub_2237670BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_250();
  result = sub_2237B56DC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_223767178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_297();
  v6 = sub_2237B56DC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_223767228()
{
  OUTLINED_FUNCTION_20_6();
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = sub_2237B40DC();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v152 = v12 - v13;
  v15 = MEMORY[0x28223BE20](v14);
  v146 = &v135 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_29_2(v17, v18, v19, v20, v21, v22, v23, v24, v135);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  OUTLINED_FUNCTION_1(v25);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - v27;
  v147 = v8;
  __swift_storeEnumTagSinglePayload(&v135 - v27, 1, 1, v8);
  v29 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  OUTLINED_FUNCTION_19_6(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck, v156);
  sub_223763314(v28, v0 + v29, &qword_27D097E70, &qword_2237B9470);
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask) = 0;

  OUTLINED_FUNCTION_38_0(v0 + 40, v156);
  v153 = v0;
  if (*(*(v0 + 40) + 16))
  {
    if (!swift_weakLoadStrong())
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v110 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v110, qword_28131B550);
      v111 = sub_2237B5C8C();
      v112 = sub_2237B601C();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = OUTLINED_FUNCTION_7_3();
        *v113 = 0;
        _os_log_impl(&dword_22375F000, v111, v112, "Broker does not exist anymore so just remove all sessions", v113, 2u);
        OUTLINED_FUNCTION_8();
      }

      type metadata accessor for Session(0);
      v114 = sub_2237B5DBC();
      v115 = v153;
      v116 = *(v153 + 40);
      *(v153 + 40) = v114;
      v116, v117, v118, v119, v120, v121, v122, v123;
      OUTLINED_FUNCTION_1_8();
      sub_2237651DC(v124, v125, MEMORY[0x277CC9600]);
      v126 = sub_2237B5DBC();
      OUTLINED_FUNCTION_38_0(v115 + 48, v155);
      v127 = *(v115 + 48);
      *(v115 + 48) = v126;
      v127, v128, v129, v130, v131, v132, v133, v134;
      goto LABEL_35;
    }

    v140 = v7;
    v141 = v1;

    v30 = v153;
    v31 = *(v153 + 16);
    sub_2237B40CC();
    sub_2237B409C();
    v32 = *(v30 + 40);
    v33 = v32 + 64;
    v34 = 1 << *(v32 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v32 + 64);
    v37 = (v34 + 63) >> 6;
    v148 = (v10 + 16);
    v38 = (v10 + 8);
    v136 = (v10 + 32);
    v139 = (v3 + 16);
    v138 = v3 + 8;
    v150 = v32;

    v39 = 0;
    *&v40 = 136315394;
    v137 = v40;
    v41 = v147;
    v149 = (v10 + 8);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v36)
          {
            while (1)
            {
              v42 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                __break(1u);
                goto LABEL_37;
              }

              if (v42 >= v37)
              {
                break;
              }

              v36 = *(v33 + 8 * v42);
              ++v39;
              if (v36)
              {
                v39 = v42;
                goto LABEL_11;
              }
            }

            v98 = v146;
            if (*(*(v153 + 40) + 16))
            {
              sub_223766C20();
            }

            v99 = *v38;
            (*v38)(v98, v41);
            v100 = OUTLINED_FUNCTION_19_2();
            v99(v100);
            goto LABEL_35;
          }

LABEL_11:
          v43 = __clz(__rbit64(v36));
          v36 &= v36 - 1;
          v44 = v43 | (v39 << 6);
          v45 = *(v150 + 56);
          v46 = (*(v150 + 48) + 16 * v44);
          v47 = v46[1];
          v151 = *v46;
          v48 = *(v45 + 8 * v44);
          v49 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
          OUTLINED_FUNCTION_17_0(v48 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v155);
          v50 = v152;
          (*v148)(v152, v48 + v49, v41);

          if ((sub_2237B40AC() & 1) == 0)
          {
            break;
          }

          if (qword_28131AA10 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v58 = sub_2237B5C9C();
          OUTLINED_FUNCTION_13(v58, qword_28131B550);

          v59 = sub_2237B5C8C();
          v60 = sub_2237B601C();
          v47, v61, v62, v63, v64, v65, v66, v67;

          if (os_log_type_enabled(v59, v60))
          {
            v68 = OUTLINED_FUNCTION_25_0();
            v144 = v60;
            v69 = v68;
            v145 = swift_slowAlloc();
            v154 = v145;
            *v69 = v137;
            v70 = *v139;
            v143 = v59;
            v70(v140, v48 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v141);
            OUTLINED_FUNCTION_1_8();
            sub_2237651DC(&qword_28131B4D0, v71, MEMORY[0x277CC9628]);
            v142 = sub_2237B627C();
            v73 = v72;
            v74 = OUTLINED_FUNCTION_19_2();
            v75(v74);
            v76 = sub_223763694(v142, v73, &v154);
            v73, v77, v78, v79, v80, v81, v82, v83;
            *(v69 + 4) = v76;
            *(v69 + 12) = 2080;
            *(v69 + 14) = sub_223763694(v151, v47, &v154);
            v84 = v143;
            _os_log_impl(&dword_22375F000, v143, v144, "Session id: %s for assistant Id: %s is expired", v69, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_8();

            v41 = v147;
          }

          else
          {
          }

          sub_2237697FC();

          v47, v91, v92, v93, v94, v95, v96, v97;
          v38 = v149;
          (*v149)(v152, v41);
        }

        v47, v51, v52, v53, v54, v55, v56, v57;
        sub_2237B40BC();
        v86 = v85;

        if (v86 > 0.0)
        {
          break;
        }

        v38 = v149;
        v87 = *v149;
LABEL_22:
        v87(v50, v41);
      }

      v38 = v149;
      v87 = *v149;
      if (v86 >= v31)
      {
        goto LABEL_22;
      }

      v88 = v146;
      v89 = OUTLINED_FUNCTION_19_2();
      v90(v89);
      (*v136)(v88, v50, v41);
      v31 = v86;
    }
  }

  if (qword_28131AA10 != -1)
  {
LABEL_37:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v101 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v101, qword_28131B550);
  v102 = sub_2237B5C8C();
  v103 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_5(v103))
  {
    v104 = OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_4(v104);
    OUTLINED_FUNCTION_33();
    _os_log_impl(v105, v106, v107, v108, v109, 2u);
    OUTLINED_FUNCTION_3_0();
  }

LABEL_35:
  OUTLINED_FUNCTION_21_5();
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_223767B00(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2237B5E8C())
  {
    result = sub_223767C18(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2237B612C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2237B617C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_223767C18(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097338, &qword_2237B77F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_223767CBC(void *a1, char a2, uint64_t a3, void *a4)
{
  v7 = [a1 level];
  if (!v7)
  {
    __break(1u);
    goto LABEL_58;
  }

  v8 = v7;
  v9 = [v7 directoryValue];

  if (!v9)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v10 = sub_223768704(v9, &selRef_path);
  if (!v11)
  {
    return;
  }

  v18 = v11;
  v19 = (v11 >> 56) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v19 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    v11, v11, v12, v13, v14, v15, v16, v17;
    return;
  }

  v20 = [a1 level];
  if (!v20)
  {
    goto LABEL_59;
  }

  v21 = v20;
  v22 = [v20 metadata];

  if (!v22)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *&v228 = 0x6E6F6973726576;
  *(&v228 + 1) = 0xE700000000000000;
  v23 = [v22 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v23)
  {
    sub_2237B60EC();
    swift_unknownObjectRelease();
  }

  else
  {
    v228 = 0u;
    v229 = 0u;
  }

  v230 = v228;
  v231 = v229;
  if (*(&v229 + 1))
  {
    if (swift_dynamicCast())
    {
      v225 = a4;
      v226 = a2;
      v38 = v227;
      if (qword_28131A9F8 != -1)
      {
        swift_once();
      }

      v39 = sub_2237B5C9C();
      __swift_project_value_buffer(v39, qword_28131B530);
      v40 = a1;

      v41 = sub_2237B5C8C();
      v42 = sub_2237B5FEC();
      if (!os_log_type_enabled(v41, v42))
      {
        *(&v227 + 1), v43, v44, v45, v46, v47, v48, v49;

        goto LABEL_32;
      }

      v50 = v40;
      v51 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      *&v228 = v223;
      *v51 = 136315650;
      v52 = [v50 factor];
      v224 = v50;

      *(&v227 + 1), v53, v54, v55, v56, v57, v58, v59;
      if (v52)
      {
        *&v230 = sub_223768704(v52, &selRef_name);
        *(&v230 + 1) = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
        v61 = sub_2237B5E3C();
        v63 = v62;
        v64 = sub_223763694(v61, v62, &v228);
        v63, v65, v66, v67, v68, v69, v70, v71;
        *(v51 + 4) = v64;
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_223763694(v227, *(&v227 + 1), &v228);
        *(v51 + 22) = 2080;
        v72 = sub_22376AC64(v226);
        v74 = v73;
        v75 = sub_223763694(v72, v73, &v228);
        v74, v76, v77, v78, v79, v80, v81, v82;
        *(v51 + 24) = v75;
        v38 = v227;
        _os_log_impl(&dword_22375F000, v41, v42, "Found asset=%s, version=%s, namespace=%s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DEB690](v223, -1, -1);
        MEMORY[0x223DEB690](v51, -1, -1);

        v40 = v224;
LABEL_32:
        v105 = sub_223768770(v38, *(&v227 + 1), v83, v84);
        if (v105)
        {
          v113 = v105;
          v114 = [objc_allocWithZone(MEMORY[0x277D5A798]) init];
          if (!v114)
          {
            *(&v227 + 1), v115, v116, v117, v118, v119, v120, v121;
            v18, v169, v170, v171, v172, v173, v174, v175;
            v176 = sub_2237B5C8C();
            v177 = sub_2237B5FFC();
            if (os_log_type_enabled(v176, v177))
            {
              v178 = v113;
              v179 = swift_slowAlloc();
              *v179 = 0;
              _os_log_impl(&dword_22375F000, v176, v177, "Failed to create an event for asset", v179, 2u);
              MEMORY[0x223DEB690](v179, -1, -1);

              return;
            }

            goto LABEL_56;
          }

          v122 = v114;
          v123 = [v40 factor];
          if (v123)
          {
            sub_223768704(v123, &selRef_name);
            if (v124)
            {
              v125 = v124;
              v126 = sub_2237B5E1C();
              v125, v127, v128, v129, v130, v131, v132, v133;
            }

            else
            {
              v126 = 0;
            }

            [v122 setAssetName_];

            [v122 setAssetVersion_];
            v180 = [v40 level];
            if (v180)
            {
              v181 = v180;
              v182 = [v180 metadata];

              if (v182)
              {
                *(&v227 + 1), v183, v184, v185, v186, v187, v188, v189;
                v18, v190, v191, v192, v193, v194, v195, v196;
                *&v228 = 0x656C61636F6CLL;
                *(&v228 + 1) = 0xE600000000000000;
                v197 = [v182 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();

                if (v197)
                {
                  sub_2237B60EC();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v228 = 0u;
                  v229 = 0u;
                }

                v230 = v228;
                v231 = v229;
                if (*(&v229 + 1))
                {
                  v198 = MEMORY[0x277D837D0];
                  if (swift_dynamicCast())
                  {
                    v230 = v227;
                    *&v228 = 95;
                    *(&v228 + 1) = 0xE100000000000000;
                    v221 = v198;
                    v222 = sub_223768F34();
                    sub_2237B60DC();
                    v199 = v113;
                    v201 = v200;
                    *(&v227 + 1), v200, v202, v203, v204, v205, v206, v207;
                    v208 = objc_opt_self();
                    v209 = sub_2237B5E1C();
                    v210 = v201;
                    v113 = v199;
                    v210, v211, v212, v213, v214, v215, v216, v217;
                    v218 = [v208 convertLanguageCodeToSchemaLocale_];

LABEL_54:
                    [v122 setAssetLocale_];
                    v219 = sub_22376AC64(v226);
                    sub_223769350(v219, v220, v122, &selRef_setTrialNamespace_);
                    MEMORY[0x223DEAB60]();
                    sub_2237693BC(*((*v225 & 0xFFFFFFFFFFFFFF8) + 0x10));
                    sub_2237B5F5C();
LABEL_56:

                    return;
                  }
                }

                else
                {
                  sub_2237692F0(&v230, &qword_27D097350, qword_2237B7EC0);
                }

                v218 = 0;
                goto LABEL_54;
              }

              goto LABEL_65;
            }

LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        *(&v227 + 1), v106, v107, v108, v109, v110, v111, v112;
        v18, v134, v135, v136, v137, v138, v139, v140;
        v141 = v40;
        v87 = sub_2237B5C8C();
        v142 = sub_2237B5FFC();
        if (!os_log_type_enabled(v87, v142))
        {

          goto LABEL_29;
        }

        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *&v228 = v144;
        *v143 = 136315394;
        v145 = sub_22376AC64(v226);
        v147 = v146;
        v148 = sub_223763694(v145, v146, &v228);
        v147, v149, v150, v151, v152, v153, v154, v155;
        *(v143 + 4) = v148;
        *(v143 + 12) = 2080;
        v156 = [v141 factor];

        if (!v156)
        {
LABEL_66:
          __break(1u);
          return;
        }

        *&v230 = sub_223768704(v156, &selRef_name);
        *(&v230 + 1) = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
        v158 = sub_2237B5E3C();
        v160 = v159;
        v161 = sub_223763694(v158, v159, &v228);
        v160, v162, v163, v164, v165, v166, v167, v168;
        *(v143 + 14) = v161;
        _os_log_impl(&dword_22375F000, v87, v142, "Failed to find version for namespace %s and asset %s", v143, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DEB690](v144, -1, -1);
        v104 = v143;
        goto LABEL_27;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v18, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v18, v24, v25, v26, v27, v28, v29, v30;
    sub_2237692F0(&v230, &qword_27D097350, qword_2237B7EC0);
  }

  if (qword_28131A9F8 != -1)
  {
    swift_once();
  }

  v85 = sub_2237B5C9C();
  __swift_project_value_buffer(v85, qword_28131B530);
  v86 = a1;
  v87 = sub_2237B5C8C();
  v88 = sub_2237B5FFC();
  if (!os_log_type_enabled(v87, v88))
  {

    goto LABEL_29;
  }

  v89 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  *&v228 = v90;
  *v89 = 136315138;
  v91 = [v86 factor];

  if (!v91)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *&v230 = sub_223768704(v91, &selRef_name);
  *(&v230 + 1) = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
  v93 = sub_2237B5E3C();
  v95 = v94;
  v96 = sub_223763694(v93, v94, &v228);
  v95, v97, v98, v99, v100, v101, v102, v103;
  *(v89 + 4) = v96;
  _os_log_impl(&dword_22375F000, v87, v88, "Failed to find the version for asset: %s", v89, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  MEMORY[0x223DEB690](v90, -1, -1);
  v104 = v89;
LABEL_27:
  MEMORY[0x223DEB690](v104, -1, -1);
LABEL_29:
}

uint64_t sub_223768704(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2237B5E2C();

  return v4;
}

NSObject *sub_223768770(void *a1, SRDRequestDispatcherInternal *a2, uint64_t a3, uint64_t a4)
{
  v181 = a1;
  v182 = a2;
  sub_223768F34();
  v7 = &v181;
  v8 = sub_2237B60CC();
  v16 = v8;
  v17 = *(v8 + 16);
  if (v17 <= 1)
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
    }

    v18 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v18, qword_28131B530);

    v4 = sub_2237B5C8C();
    v19 = sub_2237B5FFC();
    a2, v20, v21, v22, v23, v24, v25, v26;
    if (!os_log_type_enabled(v4, v19))
    {
      goto LABEL_104;
    }

    v27 = OUTLINED_FUNCTION_20();
    v28 = OUTLINED_FUNCTION_19_0();
    v181 = v28;
    *v27 = 136315138;
    *(v27 + 4) = OUTLINED_FUNCTION_12_0(v28, v29, v30, v31, 46, 0xE100000000000000, v181, v182);
    _os_log_impl(&dword_22375F000, v4, v19, "The assertVersion=%s doesn't follow semantic version scheme", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    OUTLINED_FUNCTION_8();
LABEL_32:
    OUTLINED_FUNCTION_8();
LABEL_104:

    return 0;
  }

  v32 = objc_allocWithZone(MEMORY[0x277D5ACA0]);
  v33 = [v32 init];
  if (!v33)
  {
    v16, v34, v35, v36, v37, v38, v39, v40;
    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
    }

    v52 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v52, qword_28131B530);
    v4 = sub_2237B5C8C();
    v53 = sub_2237B5FFC();
    if (!os_log_type_enabled(v4, v53))
    {
      goto LABEL_104;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22375F000, v4, v53, "Failed to create SISchemaVersion", v54, 2u);
    goto LABEL_32;
  }

  if (!*(v16 + 16))
  {
    __break(1u);
    goto LABEL_87;
  }

  v4 = v33;
  v7 = *(v16 + 32);
  v5 = *(v16 + 40);
  v41 = HIBYTE(v5) & 0xF;
  v42 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v43 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
LABEL_82:
    v16, v42, v35, v36, v37, v38, v39, v40;
    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
    }

    v65 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v65, qword_28131B530);

    v66 = sub_2237B5C8C();
    v67 = sub_2237B5FFC();
    a2, v68, v69, v70, v71, v72, v73, v74;
    if (os_log_type_enabled(v66, v67))
    {
      v75 = OUTLINED_FUNCTION_20();
      v76 = OUTLINED_FUNCTION_19_0();
      v181 = v76;
      *v75 = 136315138;
      *(v75 + 4) = OUTLINED_FUNCTION_12_0(v76, v77, v78, v79);
      v80 = "Failed to convert major version to UInt for version=%s";
LABEL_101:
      _os_log_impl(&dword_22375F000, v66, v67, v80, v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      OUTLINED_FUNCTION_8();
LABEL_102:
      OUTLINED_FUNCTION_8();
    }

LABEL_103:

    goto LABEL_104;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
LABEL_87:

    sub_223779500(v7, v5, 10);
    v46 = v81;
    v5, v82, v83, v84, v85, v86, v87, v88;
    if ((v46 & 0x100000000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_82;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v181 = *(v16 + 32);
    v182 = (v5 & 0xFFFFFFFFFFFFFFLL);
    if (v7 == 43)
    {
      if (v41)
      {
        if (v41 != 1)
        {
          OUTLINED_FUNCTION_18();
          while (1)
          {
            OUTLINED_FUNCTION_4_0();
            if (!v48 & v47)
            {
              break;
            }

            OUTLINED_FUNCTION_11();
            if (!v48)
            {
              break;
            }

            v46 = v60 + v59;
            if (__CFADD__(v60, v59))
            {
              break;
            }

            OUTLINED_FUNCTION_10_0();
            if (v48)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if (v7 != 45)
      {
        if (v41)
        {
          while (1)
          {
            OUTLINED_FUNCTION_4_0();
            if (!v48 & v47)
            {
              break;
            }

            OUTLINED_FUNCTION_11();
            if (!v48)
            {
              break;
            }

            v46 = v64 + v63;
            if (__CFADD__(v64, v63))
            {
              break;
            }

            OUTLINED_FUNCTION_10_0();
            if (v48)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

      if (v41)
      {
        if (v41 != 1)
        {
          OUTLINED_FUNCTION_18();
          while (1)
          {
            OUTLINED_FUNCTION_4_0();
            if (!v48 & v47)
            {
              break;
            }

            OUTLINED_FUNCTION_11();
            if (!v48)
            {
              break;
            }

            v46 = v56 - v55;
            if (v56 < v55)
            {
              break;
            }

            OUTLINED_FUNCTION_10_0();
            if (v48)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
    goto LABEL_108;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_112;
  }

  for (i = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_2237B617C())
  {
    v45 = *i;
    if (v45 == 43)
    {
      if (v42 < 1)
      {
        goto LABEL_115;
      }

      if (v42 != 1)
      {
        v46 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v48 & v47)
          {
            break;
          }

          OUTLINED_FUNCTION_11();
          if (!v48)
          {
            break;
          }

          v46 = v58 + v57;
          if (__CFADD__(v58, v57))
          {
            break;
          }

          OUTLINED_FUNCTION_10_0();
          if (v48)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v45 == 45)
    {
      if (v42 < 1)
      {
        __break(1u);
        goto LABEL_114;
      }

      if (v42 != 1)
      {
        v46 = 0;
        if (!i)
        {
          goto LABEL_71;
        }

        while (1)
        {
          OUTLINED_FUNCTION_4_0();
          if (!v48 & v47)
          {
            break;
          }

          OUTLINED_FUNCTION_11();
          if (!v48)
          {
            break;
          }

          v46 = v50 - v49;
          if (v50 < v49)
          {
            break;
          }

          OUTLINED_FUNCTION_10_0();
          if (v48)
          {
            goto LABEL_81;
          }
        }
      }
    }

    else if (v42)
    {
      v46 = 0;
      if (!i)
      {
LABEL_71:
        v51 = 0;
        goto LABEL_81;
      }

      while (1)
      {
        v61 = *i - 48;
        if (v61 > 9)
        {
          break;
        }

        v62 = 10 * v46;
        if ((v62 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        v46 = v62 + v61;
        if (__CFADD__(v62, v61))
        {
          break;
        }

        ++i;
        if (!--v42)
        {
          goto LABEL_71;
        }
      }
    }

LABEL_80:
    v46 = 0;
    v51 = 1;
LABEL_81:
    LOBYTE(v180) = v51;
    if (v51)
    {
      goto LABEL_82;
    }

LABEL_88:
    if (*(v16 + 16) >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_112:
    ;
  }

  v89 = *(v16 + 48);
  v90 = *(v16 + 56);

  v98 = sub_223769010(v89, v90, v97, v91, v92, v93, v94, v95, v96);
  if ((v98 & 0x100000000) != 0)
  {
    v16, v99, v100, v101, v102, v103, v104, v105;
    if (qword_28131A9F8 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
    }

    v133 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v133, qword_28131B530);

    v66 = sub_2237B5C8C();
    v67 = sub_2237B5FFC();
    a2, v134, v135, v136, v137, v138, v139, v140;
    if (os_log_type_enabled(v66, v67))
    {
      v75 = OUTLINED_FUNCTION_20();
      v76 = OUTLINED_FUNCTION_19_0();
      v181 = v76;
      *v75 = 136315138;
      *(v75 + 4) = OUTLINED_FUNCTION_12_0(v76, v141, v142, v143);
      v80 = "Failed to convert minor version to UInt for version=%s";
      goto LABEL_101;
    }

    goto LABEL_103;
  }

  v106 = v98;
  if (v17 != 2)
  {
    if (*(v16 + 16) < 3uLL)
    {
      goto LABEL_117;
    }

    v107 = *(v16 + 64);
    v108 = *(v16 + 72);

    v116 = sub_223769010(v107, v108, v115, v109, v110, v111, v112, v113, v114);
    if ((v116 & 0x100000000) == 0)
    {
      [v4 setPatch:v116];
      goto LABEL_94;
    }

    if (qword_28131A9F8 != -1)
    {
      goto LABEL_119;
    }

LABEL_108:
    v145 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v145, qword_28131B530);

    v66 = sub_2237B5C8C();
    v146 = sub_2237B5FFC();
    v16, v147, v148, v149, v150, v151, v152, v153;
    if (os_log_type_enabled(v66, v146))
    {
      v161 = OUTLINED_FUNCTION_20();
      v162 = OUTLINED_FUNCTION_19_0();
      v181 = v162;
      *v161 = 136315138;
      v163 = *(v16 + 64);
      v164 = *(v16 + 72);

      v16, v165, v166, v167, v168, v169, v170, v171;
      v172 = sub_223763694(v163, v164, &v181);
      v164, v173, v174, v175, v176, v177, v178, v179;
      *(v161 + 4) = v172;
      _os_log_impl(&dword_22375F000, v66, v146, "Malformed value for patch=%s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v162);
      OUTLINED_FUNCTION_8();
      goto LABEL_102;
    }

    v16, v154, v155, v156, v157, v158, v159, v160;
    goto LABEL_103;
  }

LABEL_94:
  [v4 setMajor:v46, v180];
  [v4 setMinor:v106];
  if (v17 == 4)
  {
    if (*(v16 + 16) < 4uLL)
    {
      goto LABEL_118;
    }

    v124 = *(v16 + 80);
    v125 = *(v16 + 88);

    v16, v126, v127, v128, v129, v130, v131, v132;
    sub_223769350(v124, v125, v4, &selRef_setPrerelease_);
  }

  else
  {
    v16, v117, v118, v119, v120, v121, v122, v123;
  }

  return v4;
}

unint64_t sub_223768F34()
{
  result = qword_28131A830;
  if (!qword_28131A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131A830);
  }

  return result;
}

void OUTLINED_FUNCTION_13_1()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_13_5()
{

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{

  return sub_2237B618C();
}

unint64_t sub_223769010(unint64_t result, unint64_t a2, __n128 a3, void *a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v10 = HIBYTE(a2) & 0xF;
  v11 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    a2, v11, a4, a5, a6, a7, a8, a9;
    v33 = 0;
    LOBYTE(v32) = 1;
LABEL_65:
    LOBYTE(v42[0]) = v32;
    return v33 | ((v32 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_223779500(result, a2, 10);
    v14 = v34;
    a2, v35, v36, v37, v38, v39, v40, v41;
    v32 = HIDWORD(v14) & 1;
LABEL_63:
    v33 = v14;
    if (v32)
    {
      v33 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2237B617C();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          LODWORD(v14) = 0;
          if (result)
          {
            v21 = (result + 1);
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                goto LABEL_61;
              }

              v23 = 10 * v14;
              if ((v23 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v14) = v23 + v22;
              if (__CFADD__(v23, v22))
              {
                goto LABEL_61;
              }

              ++v21;
              if (!--v10)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v13 != 45)
    {
      if (v11)
      {
        LODWORD(v14) = 0;
        if (result)
        {
          while (1)
          {
            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_61;
            }

            v28 = 10 * v14;
            if ((v28 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v14) = v28 + v27;
            if (__CFADD__(v28, v27))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v11)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v14) = 0;
      LOBYTE(v10) = 1;
      goto LABEL_62;
    }

    if (v11 >= 1)
    {
      v10 = v11 - 1;
      if (v11 != 1)
      {
        LODWORD(v14) = 0;
        if (result)
        {
          v15 = (result + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v14;
            if ((v17 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v14) = v17 - v16;
            if (v17 < v16)
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v10) = 0;
LABEL_62:
        v43 = v10;
        LOBYTE(v32) = v10;
        a2, v11, a4, a5, a6, a7, a8, a9;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v42[0] = result;
  v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v10)
      {
        LODWORD(v14) = 0;
        v29 = v42;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v14;
          if ((v31 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v14) = v31 + v30;
          if (__CFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v10)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v10)
    {
      if (--v10)
      {
        LODWORD(v14) = 0;
        v18 = v42 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v14;
          if ((v20 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v14) = v20 - v19;
          if (v20 < v19)
          {
            break;
          }

          ++v18;
          if (!--v10)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v10)
  {
    if (--v10)
    {
      LODWORD(v14) = 0;
      v24 = v42 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v14;
        if ((v26 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v14) = v26 + v25;
        if (__CFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v10)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_2237692F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_223769350(uint64_t a1, SRDRequestDispatcherInternal *a2, void *a3, SEL *a4)
{
  v14 = sub_2237B5E1C();
  a2, v7, v8, v9, v10, v11, v12, v13;
  [a3 *a4];
}

uint64_t sub_2237693BC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t sub_223769410(void *a1)
{
  swift_unownedRetainStrong();
  LOBYTE(a1) = sub_2237654A4(a1);

  return a1 & 1;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_23(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_223769618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22376504C();
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_223769668@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_17_0(v2 + 48, v24);
  v5 = *(v2 + 48);
  if (*(v5 + 16))
  {

    sub_223765288(a1);
    if (v7)
    {
      v14 = *(*(v5 + 56) + 8 * v6);

      v5, v15, v16, v17, v18, v19, v20, v21;
      v22 = *(v14 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession);

      *(a2 + 24) = type metadata accessor for ConversationSession(0);
      *(a2 + 32) = sub_2237651DC(&unk_28131B000, type metadata accessor for ConversationSession, &unk_2237B8468);
      *a2 = v22;
      return result;
    }

    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_229(uint64_t a1)
{

  return sub_2237B60FC();
}

void sub_2237697FC()
{
  OUTLINED_FUNCTION_20_6();
  v1 = v0;
  v3 = v2;
  v222 = v4;
  v6 = v5;
  v8 = v7;
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v226 = v9;
  v227 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v229 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v225 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v223 = v16 - v17;
  v19 = MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_29_2(v19, v20, v21, v22, v23, v24, v25, v26, v213);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E70, &qword_2237B9470);
  OUTLINED_FUNCTION_1(v27);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v213 - v29;
  v31 = sub_2237B40DC();
  OUTLINED_FUNCTION_0_2();
  v221 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v36 = (v34 - v35);
  MEMORY[0x28223BE20](v37);
  v39 = &v213 - v38;
  OUTLINED_FUNCTION_38_0((v1 + 5), &v231);
  v40 = v1[5];

  v224 = v8;
  v41 = v8;
  v42 = v6;
  v43 = sub_223769618(v41, v6, v40);
  v44 = v40;
  v45 = v43;
  v44, v46, v47, v48, v49, v50, v51, v52;
  if (!v45)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v72 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v72, qword_28131B550);
    v73 = sub_2237B5C8C();
    v74 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_5(v74))
    {
      v75 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v75);
      OUTLINED_FUNCTION_33();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_3_0();
    }

    goto LABEL_50;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v116 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v116, qword_28131B550);
    v117 = sub_2237B5C8C();
    v118 = sub_2237B601C();
    if (OUTLINED_FUNCTION_5(v118))
    {
      v119 = OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_4_4(v119);
      OUTLINED_FUNCTION_33();
      _os_log_impl(v120, v121, v122, v123, v124, 2u);
      OUTLINED_FUNCTION_3_0();
    }

    type metadata accessor for Session(0);
    OUTLINED_FUNCTION_1_8();
    sub_2237651DC(v125, v126, MEMORY[0x277CC9600]);
    v127 = sub_2237B5DBC();
    OUTLINED_FUNCTION_38_0((v1 + 6), v230);
    v128 = v1[6];
    v1[6] = v127;
    v128, v129, v130, v131, v132, v133, v134, v135;
    v136 = v1[8];
    v1[7] = 0;
    v1[8] = 0;
    v136, v137, v138, v139, v140, v141, v142, v143;
    v144 = sub_2237B5DBC();

    v145 = v1[5];
    v1[5] = v144;
    v145, v146, v147, v148, v149, v150, v151, v152;
    goto LABEL_50;
  }

  v219 = Strong;
  v220 = v45;
  if ((v3 & 1) != 0 || v222 <= 0.0)
  {
    v81 = v225;
    v82 = *(v45 + OBJC_IVAR____TtC14SiriMessageBus7Session_conversationSession) + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType;
    v221 = *(v225 + 16);
    *&v222 = v225 + 16;
    (v221)(v228, v82, v229);
    v83 = v227;
    v84 = *(v227 + 16);
    v216 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
    v85 = v226;
    v218 = v84;
    v84(v13, v45 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v226);
    OUTLINED_FUNCTION_19_6((v1 + 6), v230);
    sub_22376A5A0(v13);
    v86 = *(v83 + 8);
    v227 = v83 + 8;
    v217 = v86;
    v86(v13, v85);
    swift_endAccess();

    OUTLINED_FUNCTION_19_6((v1 + 5), v230);
    v87 = v224;
    sub_22376A6E0();
    swift_endAccess();

    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v88 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v88, qword_28131B550);
    swift_retain_n();

    v215 = v1 + 5;
    v89 = sub_2237B5C8C();
    v90 = sub_2237B5FEC();
    v42, v91, v92, v93, v94, v95, v96, v97;

    if (os_log_type_enabled(v89, v90))
    {
      v98 = v45;
      v99 = OUTLINED_FUNCTION_19_0();
      v214 = swift_slowAlloc();
      v230[0] = v214;
      *v99 = 136315650;
      v100 = v87;
      v101 = v226;
      v218(v13, v98 + v216, v226);
      OUTLINED_FUNCTION_1_8();
      sub_2237651DC(v102, v103, MEMORY[0x277CC9628]);
      v104 = sub_2237B627C();
      v106 = v105;
      v217(v13, v101);
      v107 = sub_223763694(v104, v106, v230);
      v106, v108, v109, v110, v111, v112, v113, v114;
      *(v99 + 4) = v107;
      *(v99 + 12) = 2080;
      *(v99 + 14) = sub_223763694(v100, v42, v230);
      *(v99 + 22) = 2048;
      v115 = *(v1[6] + 16);

      *(v99 + 24) = v115;

      _os_log_impl(&dword_22375F000, v89, v90, "Remove session id: %s for assistantId: %s, remaining sessions: %ld", v99, 0x20u);
      swift_arrayDestroy();
      v81 = v225;
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    else
    {
    }

    v153 = v223;
    v154 = v229;
    (v221)(v223, v228, v229);
    v155 = (*(v81 + 88))(v153, v154);
    if (v155 == *MEMORY[0x277D5D258])
    {
      MEMORY[0x28223BE20](v155);
      OUTLINED_FUNCTION_8_8();
      *(v156 - 16) = v220;
      v157 = objc_allocWithZone(sub_2237B433C());
      v158 = sub_2237B432C();
      if (!v158)
      {

        v160 = OUTLINED_FUNCTION_39_1(v159);
        v161 = sub_2237B5FFC();
        v42, v162, v163, v164, v165, v166, v167, v168;
        if (os_log_type_enabled(v160, v161))
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }
    }

    else
    {
      v169 = v220;
      if (v155 == *MEMORY[0x277D5D260])
      {
        MEMORY[0x28223BE20](v155);
        OUTLINED_FUNCTION_8_8();
        *(v170 - 16) = v169;
        v171 = objc_allocWithZone(sub_2237B4D0C());
        v158 = sub_2237B432C();
        if (!v158)
        {

          v160 = OUTLINED_FUNCTION_39_1(v172);
          v173 = sub_2237B5FFC();
          v42, v174, v175, v176, v177, v178, v179, v180;
          if (os_log_type_enabled(v160, v173))
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v155 != *MEMORY[0x277D5D250])
        {
          v187 = OUTLINED_FUNCTION_39_1(v155);
          v188 = sub_2237B5FFC();
          if (OUTLINED_FUNCTION_5(v188))
          {
            v189 = OUTLINED_FUNCTION_7_3();
            OUTLINED_FUNCTION_4_4(v189);
            OUTLINED_FUNCTION_33();
            _os_log_impl(v190, v191, v192, v193, v194, 2u);
            OUTLINED_FUNCTION_3_0();
          }

          else
          {
          }

          v195 = *(v81 + 8);
          v196 = v229;
          v195(v228, v229);
          v195(v153, v196);
          goto LABEL_50;
        }

        MEMORY[0x28223BE20](v155);
        OUTLINED_FUNCTION_8_8();
        *(v181 - 16) = v169;
        v182 = objc_allocWithZone(sub_2237B513C());
        v158 = sub_2237B432C();
        if (!v158)
        {

          v160 = OUTLINED_FUNCTION_39_1(v197);
          v198 = sub_2237B5FFC();
          v42, v199, v200, v201, v202, v203, v204, v205;
          if (os_log_type_enabled(v160, v198))
          {
LABEL_47:
            v206 = OUTLINED_FUNCTION_20();
            v207 = OUTLINED_FUNCTION_19_0();
            v230[0] = v207;
            *(v206 + 4) = OUTLINED_FUNCTION_12_6(4.8149e-34);
            OUTLINED_FUNCTION_33();
            _os_log_impl(v208, v209, v210, v211, v212, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v207);
            OUTLINED_FUNCTION_8();
            OUTLINED_FUNCTION_3_0();

            goto LABEL_49;
          }

LABEL_48:

          goto LABEL_49;
        }
      }
    }

    v183 = v158;
    sub_2237654A4(v158);

LABEL_49:

    (*(v81 + 8))(v228, v229);
    goto LABEL_50;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v54 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v54, qword_28131B550);

  v55 = sub_2237B5C8C();
  v56 = sub_2237B5FEC();
  v6, v57, v58, v59, v60, v61, v62, v63;
  v64 = v31;
  if (os_log_type_enabled(v55, v56))
  {
    v65 = OUTLINED_FUNCTION_25_0();
    v66 = OUTLINED_FUNCTION_19_0();
    v230[0] = v66;
    *v65 = 136315394;
    *(v65 + 4) = sub_223763694(v224, v42, v230);
    *(v65 + 12) = 2048;
    *(v65 + 14) = v222;
    _os_log_impl(&dword_22375F000, v55, v56, "Asked to endSession for assistantId: %s with a delay of %f seconds, so not ending it now", v65, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    OUTLINED_FUNCTION_8();
    v64 = v31;
    OUTLINED_FUNCTION_8();
  }

  sub_2237B40CC();
  sub_2237B409C();
  v67 = v221;
  v229 = *(v221 + 8);
  v229(v36, v64);
  v68 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
  v69 = v220;
  OUTLINED_FUNCTION_19_6(v220 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v230);
  (*(v67 + 40))(v69 + v68, v39, v64);
  swift_endAccess();
  v70 = OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck;
  OUTLINED_FUNCTION_17_0(v1 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_nextExpirationTaskTimeCheck, v230);
  sub_2237B2754(v1 + v70, v30);
  if (__swift_getEnumTagSinglePayload(v30, 1, v64))
  {
    sub_2237B27C4(v30);
    v71 = v229;
  }

  else
  {
    v184 = *(v67 + 16);
    v184(v39, v30, v64);
    sub_2237B27C4(v30);
    v184(v36, (v69 + v68), v64);
    v67 = v221;
    sub_2237B40BC();
    v186 = v185;
    v71 = v229;
    v229(v36, v64);
    v71(v39, v64);
    if (v186 > 0.0)
    {

      goto LABEL_50;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC14SiriMessageBus15SessionsManager_expirationScheduleTask))
  {

    sub_2237B5D4C();
  }

  (*(v67 + 16))(v39, v220 + v68, v64);
  sub_223766C20();

  v71(v39, v64);
LABEL_50:
  OUTLINED_FUNCTION_21_5();
}

uint64_t sub_22376A5A0(uint64_t a1)
{
  v2 = v1;
  sub_223765288(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E80, &qword_2237B9480);
  sub_2237B618C();
  v6 = *(v10 + 48);
  v7 = sub_2237B412C();
  (*(*(v7 - 8) + 8))(v6 + *(*(v7 - 8) + 72) * v5, v7);
  v8 = *(*(v10 + 56) + 8 * v5);
  type metadata accessor for Session(0);
  sub_2237651DC(&qword_28131B4E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2237B619C();
  *v2 = v10;
  return v8;
}

uint64_t sub_22376A6E0()
{
  v1 = v0;
  v2 = sub_22376504C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E78, &qword_2237B9478);
  sub_2237B618C();
  *(*(v14 + 48) + 16 * v4 + 8), v5, v6, v7, v8, v9, v10, v11;
  v12 = *(*(v14 + 56) + 8 * v4);
  type metadata accessor for Session(0);
  sub_2237B619C();
  *v1 = v14;
  return v12;
}

uint64_t sub_22376A7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v5);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  OUTLINED_FUNCTION_1(v9);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = *MEMORY[0x277D5CDC8];
  v14 = sub_2237B540C();
  OUTLINED_FUNCTION_4();
  (*(v15 + 104))(v12, v13, v14);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  sub_2237B538C();

  sub_2237B537C();
  v16 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  v17 = sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v18 + 16))(v8, a4 + v16, v17);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v17);
  return sub_2237B539C();
}

uint64_t sub_22376A984()
{
  sub_22376A9DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22376A9DC()
{
  v1 = OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId;
  sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_assistantId + 8), v3, v4, v5, v6, v7, v8, v9;
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_transactionName + 8), v10, v11, v12, v13, v14, v15, v16;
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime;
  v18 = sub_2237B40DC();
  OUTLINED_FUNCTION_4();
  v20 = *(v19 + 8);
  v20(v0 + v17, v18);
  v20(v0 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v18);

  v21 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
  sub_2237B551C();
  OUTLINED_FUNCTION_4();
  (*(v22 + 8))(v0 + v21);
  return v0;
}

void sub_22376AB1C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = sub_22376AC64(v6);
  v11 = v10;
  v12 = (*(v8 + 8))(v9);
  v11, v13, v14, v15, v16, v17, v18, v19;
  v27 = sub_223767CB4();
  for (i = 0; ; ++i)
  {
    if (v27 == i)
    {
      v12, v20, v21, v22, v23, v24, v25, v26;
      return;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x223DEADA0](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v29 = *(v12 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = MEMORY[0x223DEB0D0]();
    sub_223767CBC(v30, v6, a3, a4);
    if (v5)
    {
      goto LABEL_13;
    }

    v5 = 0;
    objc_autoreleasePoolPop(v7);
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  objc_autoreleasePoolPop(v7);
  __break(1u);
}

unint64_t sub_22376AC64(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 6:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

void sub_22376AD50()
{
  OUTLINED_FUNCTION_16_3();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v5 = v4;
  v17 = v6;
  v8 = v7(0);
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v22 = v0 + 64;
  v18 = v0;
  v14 = ~(-1 << *(v0 + 32));
  for (i = v5 & v14; ((1 << i) & *(v22 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v10 + 16))(v13, *(v18 + 48) + *(v10 + 72) * i, v8);
    sub_2237651DC(v19, v20, v21);
    v16 = sub_2237B5E0C();
    (*(v10 + 8))(v13, v8);
    if (v16)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22376AEC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22376AF24(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22376B024(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2237B617C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22376B024(uint64_t a1, unint64_t a2)
{
  v3 = sub_223767B00(a1, a2);
  sub_22376B070(&unk_2836D1888);
  return v3;
}

void sub_22376B070(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v15 = v4 + v2;
    }

    else
    {
      v15 = v4;
    }

    v3 = sub_2237B15B8(isUniquelyReferenced_nonNull_native, v15, 1, v3, v11, v12, v13, v14);
  }

  if (!*(result + 16))
  {
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v16 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v16 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v16 + 32], (result + 32), v2);
  result, v17, v18, v19, v20, v21, v22, v23;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v24 = *(v3 + 2);
  v25 = __OFADD__(v24, v2);
  v26 = v24 + v2;
  if (!v25)
  {
    *(v3 + 2) = v26;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_22376B158(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (qword_28131A9F8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v6 = sub_2237B5C9C();
  __swift_project_value_buffer(v6, qword_28131B530);
  v7 = sub_2237B5C8C();
  v8 = sub_2237B5FEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22375F000, v7, v8, "Requesting asset factors for logging from Trial client", v9, 2u);
    MEMORY[0x223DEB690](v9, -1, -1);
  }

  sub_2237791F4(v22);
  v23 = MEMORY[0x277D84F90];
  v17 = sub_22376C77C();
  v18 = 0;
  v19 = *(v17 + 2);
  while (1)
  {
    if (v19 == v18)
    {
      v17, v10, v11, v12, v13, v14, v15, v16;
      *a2 = v23;
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      return;
    }

    if (v18 >= *(v17 + 2))
    {
      __break(1u);
      goto LABEL_11;
    }

    v20 = v17[v18 + 32];
    v21 = MEMORY[0x223DEB0D0]();
    sub_22376AB1C(v22, v20, a1, &v23);
    if (v3)
    {
      break;
    }

    v3 = 0;
    ++v18;
    objc_autoreleasePoolPop(v21);
  }

  objc_autoreleasePoolPop(v21);
  __break(1u);
}

uint64_t sub_22376B30C(_DWORD *a1)
{
  v191 = sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v199 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_4();
  v190 = v5;
  OUTLINED_FUNCTION_12();
  v189 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_4();
  v188 = v9;
  OUTLINED_FUNCTION_12();
  v197 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v184 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_4();
  v185 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v178 - v14;
  OUTLINED_FUNCTION_12();
  v194 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v201 = v16;
  v18 = MEMORY[0x28223BE20](v17);
  v187 = v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_20_0();
  v200 = v20;
  v198 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = v178 - v23;
  ObjectType = swift_getObjectType();
  aBlock = ObjectType;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
  v25 = sub_2237B5E3C();
  v27 = v26;
  v193 = sub_223761B80();
  sub_2237B573C("MessageBusMessagePostingTime", 28, 2, "%{public}s", 10, 2, v25, v27, &type metadata for Logger, v193);
  OUTLINED_FUNCTION_17_0(v1 + 40, v211);
  v28 = *(v1 + 40);

  sub_22376C774(v25, v27, v28, v29);
  v31 = v30;
  v28, v32, v33, v34, v35, v36, v37, v38;
  v196 = v31;
  if (v31)
  {
    v27, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v210 = MEMORY[0x277D84F90];
    v209 = MEMORY[0x277D84FA0];
    v205 = sub_2237B53EC();
    aBlock = a1;
    v53 = a1;
    sub_2237B638C();
    v54 = sub_2237B63AC();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v54);
    sub_2237769B4(v15, &v209, &v210);
    sub_223777F4C(v15);
    v209, v55, v56, v57, v58, v59, v60, v61;
    v62 = v210;
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v208 = *(v1 + 40);
    v196 = v62;
    sub_223777FC0(v62, v25, v27);
    *(v1 + 40) = v208;
    v27, v63, v64, v65, v66, v67, v68, v69;
    swift_endAccess();
  }

  v195 = *&v196->afPreferences[7];
  if (v195)
  {
    if (qword_28131AA10 != -1)
    {
LABEL_25:
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v70 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v70, qword_28131B550);
    v71 = a1;
    v72 = sub_2237B5C8C();
    v73 = sub_2237B5FEC();

    v74 = os_log_type_enabled(v72, v73);
    v185 = v71;
    v178[0] = v24;
    if (v74)
    {
      v75 = swift_slowAlloc();
      a1 = swift_slowAlloc();
      aBlock = a1;
      *v75 = 136315138;
      v76 = [v71 debugDescription];
      v77 = v7;
      v78 = sub_2237B5E2C();
      v80 = v79;

      v71 = v185;
      v81 = sub_223763694(v78, v80, &aBlock);
      v80, v82, v83, v84, v85, v86, v87, v88;
      *(v75 + 4) = v81;
      v7 = v77;
      _os_log_impl(&dword_22375F000, v72, v73, "Posting following message to bus %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_8();
    }

    v24 = 0;
    v184 = v201 + 16;
    v183 = v198 + 7;
    v182 = v201 + 32;
    v181 = &v204;
    v180 = (v199 + 8);
    v179 = (v7 + 8);
    v178[1] = v201 + 8;
    v89 = &v196->messagePublisher[7];
    v90 = v194;
    do
    {
      if (v24 >= *&v196->afPreferences[7])
      {
        __break(1u);
        goto LABEL_25;
      }

      v92 = *(v89 - 1);
      v91 = *v89;
      v93 = swift_getObjectType();
      v94 = dynamic_cast_existential_1_conditional(v92, v93, MEMORY[0x277D5D138]);
      if (v94)
      {
        v96 = v94;
        v97 = v95;
        swift_getObjectType();
        swift_unknownObjectRetain();
        OUTLINED_FUNCTION_22();
        aBlock = sub_2237B568C();
        v203 = v98;
        MEMORY[0x223DEAAD0](58, 0xE100000000000000);
        v210 = ObjectType;
        v99 = sub_2237B5E3C();
        v101 = v100;
        MEMORY[0x223DEAAD0](v99);
        v101, v102, v103, v104, v105, v106, v107, v108;
        v109 = v203;
        v197 = v92;
        v110 = v200;
        sub_2237B573C("BridgeQueueLatency", 18, 2, "%{public}s", 10, 2, aBlock, v203, &type metadata for Logger, v193);
        v109, v111, v112, v113, v114, v115, v116, v117;
        v198 = sub_2237B555C();
        v118 = v201;
        v119 = v187;
        (*(v201 + 16))(v187, v110, v90);
        v120 = v118;
        v121 = (*(v118 + 80) + 16) & ~*(v118 + 80);
        v122 = (v183 + v121) & 0xFFFFFFFFFFFFFFF8;
        v199 = v24;
        v123 = swift_allocObject();
        v124 = v123 + v121;
        v125 = v119;
        v126 = MEMORY[0x277D84F90];
        v71 = v185;
        (*(v120 + 32))(v124, v125, v90);
        v127 = (v123 + v122);
        *v127 = v96;
        v127[1] = v97;
        *(v123 + ((v122 + 23) & 0xFFFFFFFFFFFFFFF8)) = v71;
        v206 = sub_22376C06C;
        v207 = v123;
        aBlock = MEMORY[0x277D85DD0];
        v203 = 1107296256;
        v204 = sub_2237639EC;
        v205 = &block_descriptor_0;
        v128 = _Block_copy(&aBlock);
        v129 = v71;
        swift_unknownObjectRetain();
        v7 = v188;
        sub_2237B5CEC();
        v210 = v126;
        OUTLINED_FUNCTION_5_2();
        a1 = sub_223765194(&qword_28131A840, v130, MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
        sub_223765224();
        v131 = v190;
        v132 = v191;
        sub_2237B60FC();
        v133 = v198;
        MEMORY[0x223DEACD0](0, v7, v131, v128);
        _Block_release(v128);

        v134 = v131;
        v24 = v199;
        (*v180)(v134, v132);
        (*v179)(v7, v189);
        (*(v201 + 8))(v200, v90);
        swift_unknownObjectRelease();
      }

      else
      {
        v142 = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(v92, v142, MEMORY[0x277D60050]))
        {
          v144 = v143;
          a1 = swift_getObjectType();
          v7 = *(v144 + 8);
          swift_unknownObjectRetain();
          sub_2237B564C();
        }

        else
        {
          v145 = swift_getObjectType();
          v146 = swift_unknownObjectRetain();
          sub_22376C158(v146, v71, v145, v91);
        }

        swift_unknownObjectRelease();
      }

      ++v24;
      v89 += 2;
    }

    while (v195 != v24);
    v196, v135, v136, v137, v138, v139, v140, v141;
    v24 = v178[0];
  }

  else
  {
    v196, v46, v47, v48, v49, v50, v51, v52;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v147 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v147, qword_28131B550);
    v148 = a1;
    v149 = sub_2237B5C8C();
    v150 = sub_2237B601C();

    if (os_log_type_enabled(v149, v150))
    {
      OUTLINED_FUNCTION_25_0();
      aBlock = OUTLINED_FUNCTION_15_1();
      *a1 = 136446466;
      v151 = sub_2237B63FC();
      v153 = v152;
      v154 = sub_223763694(v151, v152, &aBlock);
      v153, v155, v156, v157, v158, v159, v160, v161;
      *(a1 + 1) = v154;
      *(a1 + 6) = 2082;
      v162 = v185;
      sub_2237B53DC();
      OUTLINED_FUNCTION_1_4();
      sub_223765194(v163, v164, MEMORY[0x277CC9628]);
      v165 = v197;
      v166 = sub_2237B627C();
      v168 = v167;
      (*(v184 + 8))(v162, v165);
      v169 = sub_223763694(v166, v168, &aBlock);
      v168, v170, v171, v172, v173, v174, v175, v176;
      *(a1 + 14) = v169;
      _os_log_impl(&dword_22375F000, v149, v150, "There is no bridge that registered to consume message type %{public}s and message id: %{public}s", a1, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_10();
    }
  }

  sub_2237B572C();
  return (*(v201 + 8))(v24, v194);
}

uint64_t sub_22376BF38()
{
  v1 = sub_2237B5C7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22376BFE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_223761B80();
  sub_2237B572C();
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 8);

  return sub_22376C158(a2, a4, ObjectType, v8);
}

uint64_t sub_22376C06C()
{
  v1 = *(sub_2237B5C7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_22376BFE4(v0 + v2, v6, v7, v8);
}

void sub_22376C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_22376504C();
    if (v3)
    {
    }
  }
}

uint64_t sub_22376C158(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v74 = v5;
  v75 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v77 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  v78 = sub_2237B568C();
  v79 = v16;
  MEMORY[0x223DEAAD0](58, 0xE100000000000000);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097458, &qword_2237B7938);
  v17 = sub_2237B5E3C();
  v19 = v18;
  MEMORY[0x223DEAAD0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v76 = sub_223761B80();
  sub_2237B573C("BridgeMessageHandlingTime", 25, 2, "%{public}s", 10, 2, v78, v79, &type metadata for Logger, v76);
  v79, v27, v28, v29, v30, v31, v32, v33;
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v34 = sub_2237B5C9C();
  __swift_project_value_buffer(v34, qword_28131B550);
  v35 = a2;
  swift_unknownObjectRetain();
  v36 = sub_2237B5C8C();
  v37 = sub_2237B601C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v78 = v73;
    *v38 = 136446722;
    sub_2237B53DC();
    sub_223765104(&qword_28131B4D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v39 = sub_2237B627C();
    v41 = v40;
    (*(v75 + 8))(v9, v74);
    v42 = sub_223763694(v39, v41, &v78);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    v50 = sub_2237B63FC();
    v52 = v51;
    v53 = sub_223763694(v50, v51, &v78);
    v52, v54, v55, v56, v57, v58, v59, v60;
    *(v38 + 14) = v53;
    *(v38 + 22) = 2082;
    v61 = sub_2237B568C();
    v63 = v62;
    v64 = sub_223763694(v61, v62, &v78);
    v63, v65, v66, v67, v68, v69, v70, v71;
    *(v38 + 24) = v64;
    _os_log_impl(&dword_22375F000, v36, v37, "Posting messageId: %{public}s of type %{public}s to bridge %{public}s", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DEB690](v73, -1, -1);
    MEMORY[0x223DEB690](v38, -1, -1);
  }

  sub_2237B564C();
  sub_2237B572C();
  return (*(v77 + 8))(v15, v10);
}

double OUTLINED_FUNCTION_73(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return result;
}

BOOL OUTLINED_FUNCTION_28()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22376C630()
{
  v1 = *(sub_2237B5C7C() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22376C6D8(v0 + v4, v0 + v5, v7, v8);
}

uint64_t sub_22376C6D8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  sub_223761B80();
  sub_2237B572C();
  sub_2237B572C();
  return sub_22376B30C(a4);
}

unsigned __int8 *sub_22376C77C()
{
  if (*(v0 + 33) == 1)
  {
    v1 = 0;
    v2 = MEMORY[0x277D84F90];
    do
    {
      v3 = byte_2836D1860[v1 + 32];
      if (v3 > 7 || ((1 << v3) & 0x8C) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_223779F04(0, *(v2 + 16) + 1, 1);
        }

        v6 = *(v2 + 16);
        v5 = *(v2 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_223779F04((v5 > 1), v6 + 1, 1);
        }

        *(v2 + 16) = v6 + 1;
        *(v2 + v6 + 32) = v3;
      }

      ++v1;
    }

    while (v1 != 8);
  }

  else if (*(v0 + 32))
  {
    return byte_2836D1860;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_22376C89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22376C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097CE0, &unk_2237B9290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = *MEMORY[0x277D5CDC8];
  v15 = sub_2237B540C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_2237B44CC();
  v16 = sub_2237B412C();
  (*(*(v16 - 8) + 16))(v10, a2, v16);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  sub_2237B44DC();
  v17 = sub_2237B559C();
  (*(*(v17 - 8) + 16))(v7, a3, v17);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v17);
  return sub_2237B44BC();
}

uint64_t sub_22376CBEC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22376CC24()
{
  v1 = MEMORY[0x223DEB0D0]();
  sub_22376B158(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_22376CCB8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_2237B412C();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

void sub_22376CD2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_2237B412C();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  swift_beginAccess();
  sub_22376CE70(v5, v1 + v7);
  swift_endAccess();
  v8 = sub_22376CC24();
  v9 = *(v1 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging);
  *(v1 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging) = v8;
  v9, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_22376CE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_22_0()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x223DEB690);
}

uint64_t OUTLINED_FUNCTION_22_1(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t objectdestroyTm()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_2237B5C7C();
  OUTLINED_FUNCTION_4();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);
  *(v0 + v8 + 8), v9, v10, v11, v12, v13, v14, v15;

  return MEMORY[0x2821FE8E8](v0, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

void sub_22376D090()
{
  v1 = sub_2237B412C();
  OUTLINED_FUNCTION_270(v1);
  OUTLINED_FUNCTION_268();
  v3 = *(v0 + 16);
  v5 = (v0 + v4);
  v6 = *v5;
  v7 = v5[1];

  sub_22376D8E0(v3, v0 + v2, v6, v7);
}

void sub_22376D114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v109 = a2;
  v110 = a3;
  sub_2237B412C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v117 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v108 = &v106[-v12];
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v113 = &v106[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097340, &qword_2237B77F8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v106[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_2();
  v112 = v20;
  OUTLINED_FUNCTION_7();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v106[-v23];
  MEMORY[0x28223BE20](v22);
  v26 = &v106[-v25];
  v27 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  swift_beginAccess();
  v28 = *(v8 + 16);
  v114 = a1;
  v116 = v28;
  v28(v26, a1, v3);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v3);
  v29 = *(v16 + 56);
  v111 = v27;
  sub_22376D910(v5 + v27, v18);
  sub_22376D910(v26, &v18[v29]);
  OUTLINED_FUNCTION_3_1(v18);
  v115 = v8;
  if (!v31)
  {
    sub_22376D910(v18, v24);
    OUTLINED_FUNCTION_3_1(&v18[v29]);
    if (!v31)
    {
      (*(v8 + 32))(v113, &v18[v29], v3);
      OUTLINED_FUNCTION_6(&qword_28131B4D8);
      v107 = sub_2237B5E0C();
      v34 = *(v8 + 8);
      v35 = OUTLINED_FUNCTION_14();
      v34(v35);
      sub_2237692F0(v26, &qword_27D097A50, &unk_2237B7800);
      v36 = OUTLINED_FUNCTION_16();
      v34(v36);
      v30 = v117;
      sub_2237692F0(v18, &qword_27D097A50, &unk_2237B7800);
      if ((v107 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    sub_2237692F0(v26, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_15();
    v32 = OUTLINED_FUNCTION_16();
    v33(v32);
    v30 = v117;
LABEL_9:
    sub_2237692F0(v18, &unk_27D097340, &qword_2237B77F8);
    goto LABEL_14;
  }

  sub_2237692F0(v26, &qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_3_1(&v18[v29]);
  v30 = v117;
  if (!v31)
  {
    goto LABEL_9;
  }

  sub_2237692F0(v18, &qword_27D097A50, &unk_2237B7800);
LABEL_11:
  v37 = *(v5 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging);
  if (v37)
  {
    if (sub_223767CB4())
    {

      sub_22376D980(v38);
      v37, v39, v40, v41, v42, v43, v44, v45;
    }

    else
    {
      if (qword_28131A9F8 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
      }

      v79 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v79, qword_28131B530);
      v116(v108, v114, v3);
      v80 = v110;

      v81 = sub_2237B5C8C();
      v82 = sub_2237B5FFC();
      v80, v83, v84, v85, v86, v87, v88, v89;
      if (os_log_type_enabled(v81, v82))
      {
        v90 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v90 = 136315394;
        OUTLINED_FUNCTION_1_2(&qword_28131B4D0);
        v91 = sub_2237B627C();
        v93 = v92;
        v94 = OUTLINED_FUNCTION_17_1();
        v95(v94);
        v96 = sub_223763694(v91, v93, &v118);
        v93, v97, v98, v99, v100, v101, v102, v103;
        *(v90 + 4) = v96;
        *(v90 + 12) = 2080;
        *(v90 + 14) = sub_223763694(v109, v80, &v118);
        _os_log_impl(&dword_22375F000, v81, v82, "Failed to find any assets for instrumentation, for sessionId: %s and requestId: %s", v90, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_8();
      }

      else
      {

        v104 = OUTLINED_FUNCTION_17_1();
        v105(v104);
      }
    }

    return;
  }

LABEL_14:
  if (qword_28131A9F8 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
  }

  v46 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v46, qword_28131B530);
  v116(v30, v114, v3);

  v47 = sub_2237B5C8C();
  v48 = v30;
  v49 = sub_2237B5FFC();

  v50 = os_log_type_enabled(v47, v49);
  v51 = v115;
  if (v50)
  {
    v52 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v52 = 136315394;
    v53 = v112;
    sub_22376D910(v5 + v111, v112);
    if (__swift_getEnumTagSinglePayload(v53, 1, v3))
    {
      sub_2237692F0(v53, &qword_27D097A50, &unk_2237B7800);
      v54 = 0xE300000000000000;
      v55 = 7104878;
    }

    else
    {
      v116(v113, v53, v3);
      sub_2237692F0(v53, &qword_27D097A50, &unk_2237B7800);
      v55 = sub_2237B40FC();
      v54 = v56;
      OUTLINED_FUNCTION_15();
      v57 = OUTLINED_FUNCTION_14();
      v58(v57);
    }

    v59 = sub_223763694(v55, v54, &v118);
    v54, v60, v61, v62, v63, v64, v65, v66;
    *(v52 + 4) = v59;
    *(v52 + 12) = 2080;
    OUTLINED_FUNCTION_1_2(&qword_28131B4D0);
    v67 = v117;
    v68 = sub_2237B627C();
    v70 = v69;
    (*(v51 + 8))(v67, v3);
    v71 = sub_223763694(v68, v70, &v118);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v52 + 14) = v71;
    _os_log_impl(&dword_22375F000, v47, v49, "currentSessionId: %s is not the same as sessionId: %s", v52, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v51 + 8))(v48, v3);
  }
}

uint64_t sub_22376D910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22376D980(uint64_t a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_14_3();
  v5 = sub_2237B583C();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D595C0]) init];
    if (v7)
    {
      oslog = v7;
      sub_22376DBBC(a1, v7);
      [v6 setAvailableAssets_];
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_28131AA10);
      }

      v8 = sub_2237B5C9C();
      v9 = OUTLINED_FUNCTION_9_4(v8, qword_28131B550);
      v10 = sub_2237B5FEC();
      if (OUTLINED_FUNCTION_15_3(v10))
      {
        *OUTLINED_FUNCTION_7_3() = 0;
        OUTLINED_FUNCTION_20_3(&dword_22375F000, v11, v12, "ORCHAssetsReported event is being emitted now");
        OUTLINED_FUNCTION_8();
      }

      [*(v3 + 16) emitMessage_];
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_28131AA10);
      }

      v16 = sub_2237B5C9C();
      oslog = OUTLINED_FUNCTION_9_4(v16, qword_28131B550);
      v17 = sub_2237B5FFC();
      if (os_log_type_enabled(oslog, v17))
      {
        v18 = OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_4_4(v18);
        OUTLINED_FUNCTION_10_3(&dword_22375F000, oslog, v17, "Failed to create message to report assets");
        OUTLINED_FUNCTION_3_0();
      }
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v13 = sub_2237B5C9C();
    oslog = OUTLINED_FUNCTION_9_4(v13, qword_28131B550);
    sub_2237B5FFC();
    OUTLINED_FUNCTION_12_3();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = OUTLINED_FUNCTION_7_3();
      *v15 = 0;
      _os_log_impl(&dword_22375F000, oslog, v1, "The Orchestration SELF Assets event wrapper failed to build", v15, 2u);
      OUTLINED_FUNCTION_8();
    }
  }
}

void sub_22376DBBC(uint64_t a1, void *a2)
{
  sub_223766240(0, &unk_28131A7F8, 0x277D5A798);
  v3 = sub_2237B5F1C();
  [a2 setAssets_];
}

uint64_t sub_22376DC38@<X0>(uint64_t *a1@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  a2(0);
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 16);

  return v9(a3, v5 + v6, v7);
}

void sub_22376DCCC()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_2237B5E2C();
  v7 = v6;
  v8 = sub_2237B5E2C();
  v10 = v9;
  v11 = sub_2237B5E2C();
  v13 = v12;
  v14 = v3;
  v15 = v5;
  v16 = OUTLINED_FUNCTION_148();
  v1(v16, v7, v8, v10, v11, v13, v14);

  v7, v17, v18, v19, v20, v21, v22, v23;
  v10, v24, v25, v26, v27, v28, v29, v30;
  OUTLINED_FUNCTION_14_2();

  v31, v32, v33, v34, v35, v36, v37, v38;
}

void sub_22376DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_51_0(v26, v27, v28, v29, v30, v31);
  OUTLINED_FUNCTION_250();
  v32 = sub_2237B5C7C();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a17);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_28_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_28_1(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_27_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_29_1();
  v65 = v22;
  v66 = v23;
  v67 = v20;
  v68 = v63;
  OUTLINED_FUNCTION_42_0();
  v43 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_364(v44, v45, v46, v47, v48, v49, 76);
  v50 = OUTLINED_FUNCTION_43_0(OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  v22(v50);
  v51 = OUTLINED_FUNCTION_111();
  v22(v51);
  OUTLINED_FUNCTION_21_3();
  v52 = OUTLINED_FUNCTION_260();
  v53 = OUTLINED_FUNCTION_54_0(v52);
  (v21)(v53);
  OUTLINED_FUNCTION_230();
  v21();
  OUTLINED_FUNCTION_76((v52 + v37));
  OUTLINED_FUNCTION_84(v54);
  v55 = (&type metadata for Logger + v52);
  *v55 = sub_22376E26C;
  v55[1] = &v64;
  OUTLINED_FUNCTION_5_3();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_223761F8C;
  *(v56 + 24) = v52;
  v69[4] = sub_223761F78;
  v69[5] = v56;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v69[2] = v57;
  v69[3] = &block_descriptor_124;
  _Block_copy(v69);
  OUTLINED_FUNCTION_175();

  v58 = OUTLINED_FUNCTION_335();
  dispatch_sync(v58, v59);
  _Block_release(v43);
  v60 = OUTLINED_FUNCTION_83();
  (type metadata for Logger.Kind)(v60);
  v61 = OUTLINED_FUNCTION_324();
  v62 = (type metadata for Logger.Kind)(v61);
  OUTLINED_FUNCTION_22_1(v62, "");
  OUTLINED_FUNCTION_90();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return swift_getObjectType();
}

BOOL OUTLINED_FUNCTION_41()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_29()
{
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_42(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2237B58AC();
}

void OUTLINED_FUNCTION_42_0()
{
  v1 = *(v0 - 304);
  *(v0 - 192) = *(v0 - 312);
  *(v0 - 184) = v1;
}

void OUTLINED_FUNCTION_87(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  *(v2 - 192) = v1;
  *(v2 - 184) = v3;
}

double OUTLINED_FUNCTION_54()
{

  return result;
}

uint64_t sub_22376E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SRDRequestDispatcherInternal *a7, uint64_t a8)
{
  v21 = a8;
  v13 = sub_2237B544C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22376E3D4(a7, v16);
  sub_22376E5FC(a2, a3, a4, a5, v16, v21, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_22376E3D4@<X0>(SRDRequestDispatcherInternal *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  OUTLINED_FUNCTION_1(v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_299();
  OUTLINED_FUNCTION_19_3();
  sub_2237B543C();
  sub_2237B544C();
  v9 = OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_312(v9, 1, v3);
  if (v10)
  {
    sub_2237710FC(v2, &qword_27D097C70, &qword_2237B9250);
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v11 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v11, qword_28131B550);

    v12 = sub_2237B5C8C();
    v13 = sub_2237B5FFC();
    a1, v14, v15, v16, v17, v18, v19, v20;
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_44();
      *v4 = 136315138;
      v21 = OUTLINED_FUNCTION_19_3();
      *(v4 + 4) = sub_223763694(v21, v22, v23);
      OUTLINED_FUNCTION_308(&dword_22375F000, v12, v13, "Unknown input origin %s, using default .homeButton", v27);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_13_5();
    }

    return (*(*(v3 - 8) + 104))(a2, *MEMORY[0x277D5CE88], v3);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_1_1();
    return v25(v24);
  }
}

uint64_t OUTLINED_FUNCTION_271(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22376E5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v253 = v26;
  v252 = v27;
  v259 = v28;
  v260 = v29;
  v31 = v30;
  OUTLINED_FUNCTION_297();
  v32 = sub_2237B5CCC();
  v33 = OUTLINED_FUNCTION_8_6(v32, &a14);
  v249 = v34;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_25_2(v35);
  v36 = sub_2237B5D0C();
  v37 = OUTLINED_FUNCTION_8_6(v36, &a12);
  v246 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_62(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  OUTLINED_FUNCTION_1(v40);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v42);
  v255 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v257 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_62(v45);
  OUTLINED_FUNCTION_204(&v264);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_158(v47);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v48);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_25_2(v50);
  v51 = sub_2237B563C();
  OUTLINED_FUNCTION_0_2();
  v256 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_3();
  v56 = v54 - v55;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_50_0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C80, &unk_2237B9260);
  OUTLINED_FUNCTION_1(v58);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v59);
  v61 = &v240 - v60;
  v62 = type metadata accessor for RequestDispatcher.SessionContext(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_1_0();
  v66 = v65 - v64;
  v258 = v20;
  v261 = v31;
  sub_22376F45C();
  if (v67)
  {
    v68 = v67;
    v69 = OBJC_IVAR___SRDRequestDispatcherInternal_sessionContext;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v242 = v25;
    sub_22376F91C(v25 + v69, v61, &unk_27D097C80, &unk_2237B9260);
    OUTLINED_FUNCTION_312(v61, 1, v62);
    if (v70)
    {
      sub_2237710FC(v61, &unk_27D097C80, &unk_2237B9260);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v71 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v71, qword_28131B550);
      v72 = v260;

      v73 = v261;

      v74 = sub_2237B5C8C();
      v75 = sub_2237B5FFC();
      OUTLINED_FUNCTION_26_0(v75, v76, v77, v78, v79, v80, v81, v82);
      v73, v83, v84, v85, v86, v87, v88, v89;
      if (OUTLINED_FUNCTION_218())
      {
        OUTLINED_FUNCTION_25_0();
        v263[0] = OUTLINED_FUNCTION_137();
        OUTLINED_FUNCTION_302(4.8151e-34);
        v91 = sub_223763694(v258, v73, v90);
        OUTLINED_FUNCTION_56_0(v91);
        *(v22 + 14) = sub_223763694(v259, v72, v263);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v92, v93, v94, v95, v96, 0x16u);
        OUTLINED_FUNCTION_310();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_3_0();
      }

      goto LABEL_39;
    }

    sub_22376F978(v61, v66);
    v109 = v256;
    OUTLINED_FUNCTION_141();
    v110(v22);
    v111 = *(v109 + 104);
    LODWORD(v241) = *MEMORY[0x277D5D258];
    *(&v240 + 1) = v111;
    v111(v56);
    v112 = sub_223766744();
    v113 = v66;
    v114 = *(v109 + 8);
    v114(v56, v51);
    v115 = OUTLINED_FUNCTION_356();
    (v114)(v115);
    if ((v112 & 1) == 0)
    {
      v258 = v113;
      v261 = v68;
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v161 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v161, qword_28131B550);
      v162 = sub_2237B5C8C();
      v163 = sub_2237B5FFC();
      if (os_log_type_enabled(v162, v163))
      {
        v164 = OUTLINED_FUNCTION_20();
        v165 = OUTLINED_FUNCTION_19_0();
        v263[0] = v165;
        *v164 = 136315138;
        (*(&v240 + 1))(v22, v241, v51);
        v166 = sub_2237B562C();
        v168 = v167;
        v169 = OUTLINED_FUNCTION_356();
        (v114)(v169);
        v170 = sub_223763694(v166, v168, v263);
        v168, v171, v172, v173, v174, v175, v176, v177;
        *(v164 + 4) = v170;
        OUTLINED_FUNCTION_317(&dword_22375F000, v178, v163, "Current session is not of type %s, cannot start local request");
        __swift_destroy_boxed_opaque_existential_0Tm(v165);
        OUTLINED_FUNCTION_13_1();
        OUTLINED_FUNCTION_71();
      }

      sub_223771D44(v258);
      goto LABEL_39;
    }

    v121 = v258;
    v122 = v261;
    v123 = v242;
    sub_22376F9F8(v68, v258, v261, v116, v117, v118, v119, v120, v240, *(&v240 + 1), v241, v242, v243, v244, v245, v246, v247, v248, v249, v250);
    v124 = *(v123 + OBJC_IVAR___SRDRequestDispatcherInternal_instrumentationUtil);
    v125 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
    OUTLINED_FUNCTION_14_3();
    swift_beginAccess();
    v126 = sub_2237B551C();
    OUTLINED_FUNCTION_4();
    v128 = v68 + v125;
    v129 = v251;
    (*(v127 + 16))(v251, v128, v126);
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v126);
    v133 = v259;
    p_super = &v260->super;
    OUTLINED_FUNCTION_230();
    *(&v240 + 1) = v124;
    sub_223770A64(v135, v136, v137, 0);
    sub_2237710FC(v129, &unk_27D097A40, &unk_2237B8850);
    v138 = *(v257 + 16);
    v139 = v254;
    v140 = v255;
    v256 = v257 + 16;
    v251 = v138;
    v138(v254, v68 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v255);
    OUTLINED_FUNCTION_347();
    MEMORY[0x28223BE20](v141);
    OUTLINED_FUNCTION_277();
    *(v142 - 64) = v121;
    *(v142 - 56) = v122;
    *(v142 - 48) = v139;
    *(v142 - 40) = v133;
    OUTLINED_FUNCTION_210();
    *(v143 - 32) = p_super;
    *(v143 - 24) = v144;
    *(v143 - 16) = v253;
    LODWORD(v253) = v145;
    v146 = v113;
    if (v145 == 1)
    {
      v147 = objc_allocWithZone(sub_2237B49EC());
      OUTLINED_FUNCTION_144();
      v148 = sub_2237B497C();
      if (!v148)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v149 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v149, qword_28131B550);
        v150 = v260;

        v151 = sub_2237B5C8C();
        sub_2237B5FFC();
        v150, v152, v153, v154, v155, v156, v157, v158;
        if (!OUTLINED_FUNCTION_218())
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v179 = objc_allocWithZone(sub_2237B45DC());
      OUTLINED_FUNCTION_144();
      v148 = sub_2237B451C();
      if (!v148)
      {
        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v222 = sub_2237B5C9C();
        OUTLINED_FUNCTION_13(v222, qword_28131B550);
        v150 = v260;

        v151 = sub_2237B5C8C();
        sub_2237B5FFC();
        v150, v223, v224, v225, v226, v227, v228, v229;
        if (!OUTLINED_FUNCTION_218())
        {
          goto LABEL_37;
        }

LABEL_36:
        OUTLINED_FUNCTION_20();
        v230 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_333(v230);
        OUTLINED_FUNCTION_302(4.8149e-34);
        *(&v240 + 4) = sub_223763694(v259, v150, v231);
        OUTLINED_FUNCTION_33();
        _os_log_impl(v232, v233, v234, v235, v236, 0xCu);
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_3_0();
        v140 = v122;
LABEL_37:

        sub_223771D44(v146);
        (*(v257 + 8))(v139, v140);
        goto LABEL_39;
      }
    }

    v180 = v148;
    v261 = v68;
    v181 = v242;
    sub_2237654A4(v148);

    OUTLINED_FUNCTION_185(&a15);
    OUTLINED_FUNCTION_227();
    v182();
    OUTLINED_FUNCTION_12_4();
    __swift_storeEnumTagSinglePayload(v183, v184, v185, v140);
    LODWORD(v252) = AFDeviceSupportsSiriUOD();
    DWORD1(v240) = AFShouldRunAsrOnServerForUOD();
    v186 = (v181 + OBJC_IVAR___SRDRequestDispatcherInternal_serverFallbackDisablingUtils);
    OUTLINED_FUNCTION_259(v186, v186[3]);
    v258 = v113;
    v187 = v259;
    v188 = &v260->super;
    OUTLINED_FUNCTION_295();
    sub_2237B58AC();
    v189 = v186[4];
    v190 = OUTLINED_FUNCTION_171();
    OUTLINED_FUNCTION_259(v190, v191);
    OUTLINED_FUNCTION_295();
    sub_2237B58AC();
    v239 = v253;
    OUTLINED_FUNCTION_295();
    sub_223771484(v192, v193, v194, 5, v252, SBYTE4(v240), v195, v196, v239);
    sub_2237710FC(v140, &qword_27D097A50, &unk_2237B7800);
    v197 = *(v242 + OBJC_IVAR___SRDRequestDispatcherInternal_assetLogger);
    if ((*(v197 + 32) & 1) != 0 || (OUTLINED_FUNCTION_138(), v70))
    {
      v253 = *(v197 + 16);
      OUTLINED_FUNCTION_155(&v265);
      v198 = v255;
      OUTLINED_FUNCTION_227();
      v199();
      OUTLINED_FUNCTION_228();
      v202 = v201 & ~v200;
      OUTLINED_FUNCTION_85();
      v203 = OUTLINED_FUNCTION_309();
      v204 = OUTLINED_FUNCTION_89(v203);
      v205(v204 + v202, v189, v198);
      v206 = (v187 + v140);
      *v206 = v259;
      v206[1] = v188;
      OUTLINED_FUNCTION_127();
      v263[1] = 1107296256;
      OUTLINED_FUNCTION_6_6();
      v263[2] = v207;
      v263[3] = &block_descriptor_422;
      v208 = _Block_copy(v263);

      OUTLINED_FUNCTION_296();
      sub_2237B5CEC();
      v262 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_5_5();
      sub_223766F90(v209, v210, MEMORY[0x277D851A0]);
      v211 = OUTLINED_FUNCTION_19_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v211, v212);
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_209();
      sub_223766FD8(v213, v214, v215, v216);
      OUTLINED_FUNCTION_263();
      OUTLINED_FUNCTION_197(v217, v218);
      MEMORY[0x223DEACD0](0, v189, v188, v208);
      _Block_release(v208);

      OUTLINED_FUNCTION_96();
      v219 = OUTLINED_FUNCTION_238();
      v220(v219);
      OUTLINED_FUNCTION_96();
      v221(v189, v248);
    }

    else
    {
    }

    sub_223771D44(v258);
    v237 = OUTLINED_FUNCTION_340();
    v238(v237);
    goto LABEL_39;
  }

  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v97 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v97, qword_28131B550);
  v98 = v261;

  v260 = sub_2237B5C8C();
  v99 = sub_2237B600C();
  OUTLINED_FUNCTION_282(v99, v100, v101, v102, v103, v104, v105, v106);
  if (os_log_type_enabled(&v260->super, v20))
  {
    v107 = OUTLINED_FUNCTION_20();
    v108 = OUTLINED_FUNCTION_19_0();
    v263[0] = v108;
    *v107 = 136315138;
    *(v107 + 4) = sub_223763694(v258, v98, v263);
    OUTLINED_FUNCTION_360(&dword_22375F000, &v260->super, v20, "No active session for assistantId: %s cannot start local request", v240);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_74();

LABEL_39:
    OUTLINED_FUNCTION_14_2();
    return;
  }

  OUTLINED_FUNCTION_14_2();
}

void sub_22376F45C()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_31_2();
  v3 = sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v76 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v75 = v7 - v6;
  v8 = sub_2237B40DC();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v71 - v16;
  OUTLINED_FUNCTION_17_0(v0 + 40, &v78);
  v18 = *(v0 + 40);

  v19 = sub_223769618(v2, v1, v18);
  v18, v20, v21, v22, v23, v24, v25, v26;
  if (v19)
  {
    v73 = v2;
    v74 = v3;
    sub_2237B40CC();
    v27 = OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime;
    OUTLINED_FUNCTION_19_6(v19 + OBJC_IVAR____TtC14SiriMessageBus7Session_lastAccessedTime, v77);
    v28 = *(v10 + 40);
    v28(v19 + v27, v17, v8);
    swift_endAccess();
    (*(v10 + 16))(v14, v19 + v27, v8);
    sub_2237B409C();
    (*(v10 + 8))(v14, v8);
    v29 = OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime;
    OUTLINED_FUNCTION_19_6(v19 + OBJC_IVAR____TtC14SiriMessageBus7Session_expirationTime, v77);
    v28(v19 + v29, v17, v8);
    swift_endAccess();
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v30 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v30, qword_28131B550);

    v31 = sub_2237B5C8C();
    v32 = sub_2237B5FEC();
    v1, v33, v34, v35, v36, v37, v38, v39;

    v40 = os_log_type_enabled(v31, v32);
    v41 = v74;
    if (v40)
    {
      v42 = OUTLINED_FUNCTION_25_0();
      v72 = swift_slowAlloc();
      v77[0] = v72;
      *v42 = 136315394;
      (*(v76 + 16))(v75, v19 + OBJC_IVAR____TtC14SiriMessageBus7Session_sessionId, v41);
      OUTLINED_FUNCTION_1_8();
      sub_2237651DC(v43, v44, MEMORY[0x277CC9628]);
      v45 = sub_2237B627C();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_19_2();
      v49(v48);
      v50 = sub_223763694(v45, v47, v77);
      v47, v51, v52, v53, v54, v55, v56, v57;
      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_223763694(v73, v1, v77);
      _os_log_impl(&dword_22375F000, v31, v32, "Extending session id: %s for assistant id: %s", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v58 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v58, qword_28131B550);

    v59 = sub_2237B5C8C();
    v60 = sub_2237B601C();
    v1, v61, v62, v63, v64, v65, v66, v67;
    if (os_log_type_enabled(v59, v60))
    {
      v68 = v2;
      v69 = OUTLINED_FUNCTION_20();
      v70 = OUTLINED_FUNCTION_19_0();
      v77[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_223763694(v68, v1, v77);
      _os_log_impl(&dword_22375F000, v59, v60, "Cannot find session for assistant id: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }
  }

  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_22376F91C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_1_1();
  v6(v5);
  return a2;
}

uint64_t sub_22376F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestDispatcher.SessionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SRDRequestDispatcherInternal *OUTLINED_FUNCTION_306(SRDRequestDispatcherInternal *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 - 280);

  return sub_223776EFC(a1, a2, 1, v10, a5, a6, a7, a8);
}

void sub_22376F9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v286 = v27;
  v285 = v28;
  v293 = v29;
  v30 = sub_2237B561C();
  v31 = OUTLINED_FUNCTION_8_6(v30, &a18);
  v289 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_62(v34);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C30, ">-");
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_6();
  v294 = v36;
  OUTLINED_FUNCTION_12();
  v291 = sub_2237B551C();
  OUTLINED_FUNCTION_0_2();
  v296 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_69();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13_4();
  v292 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_345();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v274 - v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_13_4();
  v295 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_35();
  v48 = sub_2237B5D6C();
  OUTLINED_FUNCTION_0_2();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_348();
  v52 = *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
  *v21 = v52;
  OUTLINED_FUNCTION_355();
  v53(v21);
  v54 = v52;
  v55 = sub_2237B5D8C();
  (*(v50 + 8))(v21, v48);
  if ((v55 & 1) == 0)
  {
    __break(1u);
LABEL_57:
    OUTLINED_FUNCTION_0_6();
    swift_once();
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker), *(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_featureChecker + 24));
  OUTLINED_FUNCTION_8_2();
  if (sub_2237B57BC())
  {
    v280 = v26;
    sub_22376F91C(v26 + OBJC_IVAR___SRDRequestDispatcherInternal_activeUserSessionObserver, &v298, &qword_27D097C38, "&-");
    if (v299)
    {
      sub_2237709BC(&v298, v300);
      v56 = v301[1];
      __swift_project_boxed_opaque_existential_1(v300, v301[0]);
      v57 = OUTLINED_FUNCTION_8_2();
      v58(v57, v56);
      v59 = OBJC_IVAR____TtC14SiriMessageBus7Session_userSessionState;
      v60 = v293;
      OUTLINED_FUNCTION_14_3();
      swift_beginAccess();
      v61 = v296 + 2;
      isa = v296[2].isa;
      v278 = v59;
      v63 = v295;
      v64 = v291;
      isa(v295, v60 + v59, v291);
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v65 = sub_2237B5C9C();
      OUTLINED_FUNCTION_13(v65, qword_28131B550);
      isa(v45, v22, v64);
      v66 = OUTLINED_FUNCTION_100();
      (isa)(v66);
      v281 = v59;
      v67 = sub_2237B5C8C();
      v68 = sub_2237B5FEC();
      v69 = OUTLINED_FUNCTION_5(v68);
      v283 = v22;
      v279 = isa;
      if (v69)
      {
        v70 = OUTLINED_FUNCTION_25_0();
        v277 = OUTLINED_FUNCTION_198();
        v297 = v277;
        *v70 = 136315394;
        v22 = sub_223766F90(&qword_27D097C58, MEMORY[0x277D5D0E0], MEMORY[0x277D5D0E8]);
        LODWORD(v276) = v59;
        v71 = sub_2237B627C();
        v275 = v67;
        v72 = v296[1].isa;
        v73 = OUTLINED_FUNCTION_13_3();
        v72(v73);
        v74 = OUTLINED_FUNCTION_193();
        sub_223763694(v74, v75, v76);
        v77 = OUTLINED_FUNCTION_8_2();
        v77, v78, v79, v80, v81, v82, v83, v84;
        *(v70 + 4) = v71;
        *(v70 + 12) = 2080;
        OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_245();
        v85 = sub_2237B627C();
        v86 = OUTLINED_FUNCTION_100();
        v282 = v72;
        v72(v86);
        v87 = OUTLINED_FUNCTION_193();
        sub_223763694(v87, v88, v89);
        v90 = OUTLINED_FUNCTION_8_2();
        v63 = v295;
        v90, v91, v92, v93, v94, v95, v96, v97;
        *(v70 + 14) = v85;
        v98 = v275;
        _os_log_impl(&dword_22375F000, v275, v276, "#user-session: Current UserSessionState=%s. Previous UserSessionState=%s", v70, 0x16u);
        OUTLINED_FUNCTION_155(v301);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_116();
        isa = v279;
        OUTLINED_FUNCTION_8();
      }

      else
      {

        v109 = v296[1].isa;
        v109(v23, v64);
        v110 = OUTLINED_FUNCTION_342();
        v282 = v109;
        (v109)(v110);
      }

      v111 = v294;
      v112 = v294 + *(v290 + 48);
      v113 = OUTLINED_FUNCTION_332();
      (isa)(v113);
      isa(v112, v22, v64);
      v114 = v296;
      v115 = &v296[11];
      v116 = v296[11].isa;
      v117 = OUTLINED_FUNCTION_119();
      v118 = v116(v117);
      v119 = v61;
      v120 = v118;
      v121 = *MEMORY[0x277D5D0D8];
      v122 = isa;
      v123 = v114;
      v124 = v292;
      if (v118 == *MEMORY[0x277D5D0D8])
      {
        v275 = v119;
        v122(v292, v111, v64);
        v125 = v64;
        v126 = v123[12].isa;
        v126(v124, v125);
        v127 = *(v124 + 1);
        v276 = *v124;
        v277 = v127;
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C40, &unk_2237B9230);
        v290 = *(v128 + 48);
        v129 = *(v128 + 64);
        v130 = OUTLINED_FUNCTION_13_3();
        if (v116(v130) != v120)
        {
          v277, v131, v132, v133, v134, v135, v136, v137;
          (*(v289 + 8))(&v124[v129], v288);
          v64 = v125;
          v111 = v294;
LABEL_34:
          sub_2237710FC(&v124[v290], &qword_27D097900, &qword_2237B8860);
          v63 = v295;
          goto LABEL_35;
        }

        v138 = v287;
        v274 = v112;
        v279(v287, v112, v125);
        v139 = OUTLINED_FUNCTION_100();
        (v126)(v139);
        v115 = *v138;
        v140 = v138[1];
        v141 = *(v128 + 48);
        v142 = *(v128 + 64);
        v143 = *(v289 + 32);
        v144 = OUTLINED_FUNCTION_101();
        v145 = v288;
        v143(v144);
        v146 = v138 + v142;
        v147 = v284;
        (v143)(v284, v146, v145);
        v155 = v277;
        if (v276 == v115 && v277 == v140)
        {
          v140, v148, v149, v150, v151, v152, v153, v154;
          v155, v191, v192, v193, v194, v195, v196, v197;
          v111 = v294;
          v123 = v296;
        }

        else
        {
          v157 = sub_2237B629C();
          v140, v158, v159, v160, v161, v162, v163, v164;
          v155, v165, v166, v167, v168, v169, v170, v171;
          v111 = v294;
          v123 = v296;
          if ((v157 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        sub_223766F90(&qword_27D097C50, MEMORY[0x277D5D240], MEMORY[0x277D5D248]);
        OUTLINED_FUNCTION_101();
        if (sub_2237B5E0C())
        {
LABEL_33:
          v198 = *(v289 + 8);
          v198(v147, v145);
          v199 = OUTLINED_FUNCTION_101();
          v198(v199, v145);
          OUTLINED_FUNCTION_211();
          sub_2237710FC(v200 + v141, v201, v202);
          v64 = v291;
          v124 = v292;
          goto LABEL_34;
        }

        v218 = sub_2237B5C8C();
        v219 = sub_2237B5FEC();
        v220 = OUTLINED_FUNCTION_261(v219);
        v221 = v291;
        if (v220)
        {
          v115 = v123;
          *OUTLINED_FUNCTION_7_3() = 0;
          OUTLINED_FUNCTION_157();
          _os_log_impl(v222, v223, v224, v225, v226, 2u);
          OUTLINED_FUNCTION_8();
        }

        v227 = *(v289 + 8);
        v228 = v147;
        v229 = v288;
        v227(v228, v288);
        v230 = OUTLINED_FUNCTION_101();
        v227(v230, v229);
        OUTLINED_FUNCTION_211();
        OUTLINED_FUNCTION_291();
        sub_2237710FC(v231, v232, v233);
        OUTLINED_FUNCTION_291();
        sub_2237710FC(v234, v235, v236);
        v64 = v221;
        v282(v274, v221);
        OUTLINED_FUNCTION_245();
      }

      else
      {
        if (v118 != *MEMORY[0x277D5D0D0])
        {
LABEL_35:
          v203 = sub_2237B5C8C();
          v204 = sub_2237B5FFC();
          if (OUTLINED_FUNCTION_261(v204))
          {
            *OUTLINED_FUNCTION_7_3() = 0;
            OUTLINED_FUNCTION_163();
            _os_log_impl(v205, v206, v207, v208, v209, 2u);
            v63 = v295;
            OUTLINED_FUNCTION_8();
          }

          v210 = v282;
          v282(v63, v64);
          sub_2237710FC(v111, &qword_27D097C30, ">-");
          v210(v283, v64);
LABEL_54:
          __swift_destroy_boxed_opaque_existential_0Tm(v300);
          goto LABEL_55;
        }

        v172 = OUTLINED_FUNCTION_342();
        v173 = v116(v172);
        if (v173 == v121)
        {
          (v123[12].isa)(v112, v64);
          *(v112 + 8), v174, v175, v176, v177, v178, v179, v180;
          v181 = sub_2237B5C8C();
          v182 = sub_2237B5FEC();
          OUTLINED_FUNCTION_261(v182);
          OUTLINED_FUNCTION_245();
          if (v183)
          {
            *OUTLINED_FUNCTION_7_3() = 0;
            OUTLINED_FUNCTION_157();
            _os_log_impl(v184, v185, v186, v187, v188, 2u);
            OUTLINED_FUNCTION_8();
          }

          v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C40, &unk_2237B9230);
          v190 = *(v189 + 48);
          (*(v289 + 8))(v112 + *(v189 + 64), v288);
          sub_2237710FC(v112 + v190, &qword_27D097900, &qword_2237B8860);
        }

        else
        {
          if (v173 != *MEMORY[0x277D5D0C8])
          {
            goto LABEL_35;
          }

          v211 = sub_2237B5C8C();
          v212 = sub_2237B5FEC();
          if (OUTLINED_FUNCTION_261(v212))
          {
            *OUTLINED_FUNCTION_7_3() = 0;
            OUTLINED_FUNCTION_163();
            _os_log_impl(v213, v214, v215, v216, v217, 2u);
            OUTLINED_FUNCTION_8();
          }

          OUTLINED_FUNCTION_245();
        }
      }

      v237 = OUTLINED_FUNCTION_119();
      v238 = v282;
      (v282)(v237);
      v239 = v293;
      v240 = v278;
      swift_beginAccess();
      v241 = v64;
      (v123[3].isa)(v239 + v240, v115, v64);
      v242 = swift_endAccess();
      MEMORY[0x28223BE20](v242);
      OUTLINED_FUNCTION_275();
      v243 = v285;
      *(v244 - 32) = v115;
      *(v244 - 24) = v243;
      *(v244 - 16) = v286;
      *(v244 - 8) = v239;
      v245 = objc_allocWithZone(sub_2237B4CEC());
      OUTLINED_FUNCTION_34_0();
      v246 = sub_2237B4C9C();
      if (v246)
      {
        v247 = v246;
        v248 = sub_2237B5C8C();
        v249 = sub_2237B5FEC();
        if (OUTLINED_FUNCTION_261(v249))
        {
          v250 = OUTLINED_FUNCTION_20();
          v251 = OUTLINED_FUNCTION_19_0();
          v297 = v251;
          *v250 = 136315138;
          v252 = [v247 debugDescription];
          v253 = v241;
          v254 = sub_2237B5E2C();
          v256 = v255;

          v115 = sub_223763694(v254, v256, &v297);
          v256, v257, v258, v259, v260, v261, v262, v263;
          *(v250 + 4) = v115;
          OUTLINED_FUNCTION_245();
          _os_log_impl(&dword_22375F000, v248, v249, "#user-session: Posting message=%s", v250, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v251);
          v238 = v282;
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_71();
        }

        else
        {

          v253 = v64;
        }

        sub_2237654A4(v247);

        v273 = OUTLINED_FUNCTION_352();
        v238(v273);
        v271 = v115;
        v272 = v253;
      }

      else
      {
        v264 = sub_2237B5C8C();
        v265 = sub_2237B5FEC();
        if (OUTLINED_FUNCTION_261(v265))
        {
          *OUTLINED_FUNCTION_7_3() = 0;
          OUTLINED_FUNCTION_163();
          _os_log_impl(v266, v267, v268, v269, v270, 2u);
          OUTLINED_FUNCTION_71();
        }

        (v238)(v295, v64);
        v271 = OUTLINED_FUNCTION_234();
      }

      (v238)(v271, v272);
      goto LABEL_54;
    }

    sub_2237710FC(&v298, &qword_27D097C38, "&-");
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v102 = sub_2237B5C9C();
    OUTLINED_FUNCTION_13(v102, qword_28131B550);
    v100 = sub_2237B5C8C();
    v103 = sub_2237B5FEC();
    if (OUTLINED_FUNCTION_5(v103))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (qword_28131AA10 != -1)
  {
    goto LABEL_57;
  }

LABEL_9:
  v99 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v99, qword_28131B550);
  v100 = sub_2237B5C8C();
  v101 = sub_2237B5FEC();
  if (OUTLINED_FUNCTION_5(v101))
  {
LABEL_14:
    *OUTLINED_FUNCTION_7_3() = 0;
    OUTLINED_FUNCTION_33();
    _os_log_impl(v104, v105, v106, v107, v108, 2u);
    OUTLINED_FUNCTION_3_0();
  }

LABEL_15:

LABEL_55:
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237709BC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_316@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return sub_2237B5C7C();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_223770A64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v42 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A38, &qword_2237B8848);
  OUTLINED_FUNCTION_1(v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v41[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097A40, &unk_2237B8850);
  OUTLINED_FUNCTION_1(v11);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41[-v13];
  sub_2237B551C();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = v19 - v18;
  v22 = v21;
  sub_223770E88(a1, v14, &unk_27D097A40, &unk_2237B8850);
  if (__swift_getEnumTagSinglePayload(v14, 1, v22) == 1)
  {
    return sub_223770EE8(v14, &unk_27D097A40, &unk_2237B8850);
  }

  v24 = v16;
  (*(v16 + 32))(v20, v14, v22);
  OUTLINED_FUNCTION_14_3();
  v25 = sub_2237B583C();
  if (!v25)
  {
    v31 = v20;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v32 = sub_2237B5C9C();
    v33 = OUTLINED_FUNCTION_9_4(v32, qword_28131B550);
    v34 = sub_2237B5FFC();
    if (OUTLINED_FUNCTION_15_3(v34))
    {
      *OUTLINED_FUNCTION_7_3() = 0;
      OUTLINED_FUNCTION_20_3(&dword_22375F000, v35, v36, "The Orchestration SELF event wrapper failed to build");
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_15;
  }

  v26 = v25;
  v27 = [objc_allocWithZone(MEMORY[0x277D596E8]) init];
  if (!v27)
  {
    v31 = v20;
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_28131AA10);
    }

    v37 = sub_2237B5C9C();
    v33 = OUTLINED_FUNCTION_9_4(v37, qword_28131B550);
    v38 = sub_2237B5FFC();
    if (!OUTLINED_FUNCTION_15_3(v38))
    {

      return (*(v24 + 8))(v31, v22);
    }

    v39 = OUTLINED_FUNCTION_7_3();
    *v39 = 0;
    _os_log_impl(&dword_22375F000, v33, v20, "The Orchestration UserSessionState event wrapper failed to build", v39, 2u);
    OUTLINED_FUNCTION_8();

LABEL_15:
    return (*(v24 + 8))(v31, v22);
  }

  v28 = v27;
  [v27 setIsEndOfRequest_];
  sub_2237B550C();
  v29 = sub_2237B561C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
  {
    sub_223770EE8(v10, &qword_27D097A38, &qword_2237B8848);
    v30 = 0;
  }

  else
  {
    v30 = sub_22378675C();
    OUTLINED_FUNCTION_8_4();
    (*(v40 + 8))(v10, v29);
  }

  [v28 setAccessLevel_];
  [v28 setState_];
  [v26 setUserSessionState_];
  [*(v5 + 16) emitMessage_];

  return (*(v24 + 8))(v20, v22);
}

uint64_t sub_223770E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_8_4();
  v5 = OUTLINED_FUNCTION_1_1();
  v6(v5);
  return a2;
}

uint64_t sub_223770EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_223770F44()
{
  v1 = v0;
  v2 = sub_2237B551C();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = OUTLINED_FUNCTION_1_1();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x277D5D0D8])
  {
    v12 = OUTLINED_FUNCTION_1_1();
    v13(v12);
    *(v8 + 8), v14, v15, v16, v17, v18, v19, v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C40, &unk_2237B9230);
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    sub_2237B561C();
    OUTLINED_FUNCTION_8_4();
    (*(v24 + 8))(v8 + v23);
    sub_223770EE8(v8 + v22, &qword_27D097900, &qword_2237B8860);
    return 3;
  }

  else if (v11 == *MEMORY[0x277D5D0D0])
  {
    return 1;
  }

  else if (v11 == *MEMORY[0x277D5D0C8])
  {
    return 2;
  }

  else
  {
    v26 = OUTLINED_FUNCTION_1_1();
    v27(v26);
    return 0;
  }
}

uint64_t sub_2237710FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_223771198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v27 = a5;
  v28 = a7;
  v26 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C70, &qword_2237B9250);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097C60, &qword_2237B9240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = *MEMORY[0x277D5CDC8];
  v19 = sub_2237B540C();
  (*(*(v19 - 8) + 104))(v17, v18, v19);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
  sub_2237B49BC();

  sub_2237B498C();
  v20 = sub_2237B412C();
  (*(*(v20 - 8) + 16))(v14, v26, v20);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  sub_2237B49DC();

  sub_2237B49CC();
  v21 = sub_2237B544C();
  (*(*(v21 - 8) + 16))(v11, v28, v21);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v21);
  result = sub_2237B499C();
  if (a8)
  {
    v23 = objc_allocWithZone(sub_2237B553C());
    v24 = a8;
    sub_2237B552C();
    return sub_2237B49AC();
  }

  return result;
}

BOOL OUTLINED_FUNCTION_318()
{

  return os_log_type_enabled(v0, v1);
}

void sub_223771484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7, int a8, os_log_type_t a9)
{
  v88 = a2;
  v90 = a7;
  LODWORD(v91) = a8;
  v89 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  v14 = OUTLINED_FUNCTION_1(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v86 = v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v85 - v17;
  sub_2237B412C();
  OUTLINED_FUNCTION_0_2();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v85 - v25;
  v28 = v27;
  sub_223770E88(a1, v18, &qword_27D097A50, &unk_2237B7800);
  if (__swift_getEnumTagSinglePayload(v18, 1, v28) != 1)
  {
    (*(v20 + 32))(v26, v18, v28);
    sub_223766240(0, &qword_28131A808, 0x277D5AC78);
    (*(v20 + 16))(v24, v26, v28);
    v35 = sub_223771C3C(v24);
    v36 = [objc_allocWithZone(MEMORY[0x277D597D0]) init];
    if (v36)
    {
      v37 = v36;
      [v36 setOrchestratorSessionId_];
      [v37 setRequestType_];
      if (a5)
      {
        LODWORD(v38) = 2;
      }

      else
      {
        LODWORD(v38) = 1;
      }

      [v37 setSiriUODEnabled_];
      if (a6)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      if (a6)
      {
        v38 = 2;
      }

      else
      {
        v38 = v38;
      }

      [v37 setSiriAsrMode_];
      [v37 setSiriNlMode_];
      v40 = [objc_allocWithZone(MEMORY[0x277D59710]) init];
      if (v40)
      {
        v41 = v40;
        v85[1] = v26;
        v42 = v20;
        [v40 setIsNLServerFallbackDisabled_];
        [v41 setIsDomainServerFallbackDisabled_];
        [v37 setNlv3DeprecationFlags_];
        [v37 setIsAssistantEngineRequest_];
        v43 = [objc_allocWithZone(MEMORY[0x277D597B0]) init];
        if (v43)
        {
          v44 = v43;
          [v43 setStartedOrChanged_];
          v45 = v87;
          OUTLINED_FUNCTION_14_3();
          v46 = sub_2237B583C();
          if (v46)
          {
            v47 = v46;
            [v46 setRequestContext_];
            [*(v45 + 16) emitMessage_];
            v48 = sub_2237B582C();
            if (!v48 || (v49 = v48, v50 = [v48 captureSnapshot], v49, !v50))
            {
              v78 = OUTLINED_FUNCTION_16_4();
              v79(v78, v28);

              return;
            }

            v91 = v41;
            v51 = [objc_opt_self() context];
            if (!v51)
            {
              __break(1u);
              return;
            }

            v52 = v51;
            v53 = v86;
            sub_2237B40EC();
            if (__swift_getEnumTagSinglePayload(v53, 1, v28) == 1)
            {
              v54 = 0;
            }

            else
            {
              v84 = v53;
              v54 = sub_2237B410C();
              (*(v42 + 8))(v84, v28);
            }

            [v50 logWithEventContext:v52 requestIdentifier:v54];

            goto LABEL_52;
          }

          if (qword_28131AA10 != -1)
          {
            OUTLINED_FUNCTION_0_4(&qword_28131AA10);
          }

          v80 = sub_2237B5C9C();
          v81 = OUTLINED_FUNCTION_9_4(v80, qword_28131B550);
          sub_2237B5FFC();
          OUTLINED_FUNCTION_12_3();
          if (os_log_type_enabled(v81, v82))
          {
            v83 = OUTLINED_FUNCTION_7_3();
            OUTLINED_FUNCTION_4_4(v83);
            OUTLINED_FUNCTION_10_3(&dword_22375F000, v81, v45, "The Orchestration SELF event wrapper failed to build");
            OUTLINED_FUNCTION_3_0();

            v64 = OUTLINED_FUNCTION_16_4();
            v73 = v28;
            goto LABEL_41;
          }

LABEL_49:
LABEL_52:
          v64 = OUTLINED_FUNCTION_16_4();
          v73 = v28;
          goto LABEL_41;
        }

        if (qword_28131AA10 != -1)
        {
          OUTLINED_FUNCTION_0_4(&qword_28131AA10);
        }

        v74 = sub_2237B5C9C();
        v75 = OUTLINED_FUNCTION_9_4(v74, qword_28131B550);
        sub_2237B5FFC();
        OUTLINED_FUNCTION_12_3();
        if (!os_log_type_enabled(v75, v76))
        {

          goto LABEL_49;
        }

        v77 = OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_4_4(v77);
        OUTLINED_FUNCTION_10_3(&dword_22375F000, v75, a9, "Failed to create the RequestContext message for start of request");
        OUTLINED_FUNCTION_3_0();

        v64 = OUTLINED_FUNCTION_16_4();
        v73 = v28;
LABEL_41:
        v63(v64, v73);
        return;
      }

      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_28131AA10);
      }

      v65 = sub_2237B5C9C();
      v66 = OUTLINED_FUNCTION_9_4(v65, qword_28131B550);
      v67 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_5(v67))
      {
        v68 = OUTLINED_FUNCTION_7_3();
        v69 = v35;
        v70 = v26;
        v60 = v28;
        OUTLINED_FUNCTION_4_4(v68);
        OUTLINED_FUNCTION_2_4(&dword_22375F000, v71, v72, "Failed to create the nlClassicDeprecationFlags message");
        OUTLINED_FUNCTION_3_0();

        v63 = *(v20 + 8);
        v64 = v70;
        goto LABEL_33;
      }
    }

    else
    {
      if (qword_28131AA10 != -1)
      {
        OUTLINED_FUNCTION_0_4(&qword_28131AA10);
      }

      v55 = sub_2237B5C9C();
      v56 = OUTLINED_FUNCTION_9_4(v55, qword_28131B550);
      v57 = sub_2237B5FFC();
      if (OUTLINED_FUNCTION_5(v57))
      {
        v58 = OUTLINED_FUNCTION_7_3();
        v59 = v26;
        v60 = v28;
        OUTLINED_FUNCTION_4_4(v58);
        OUTLINED_FUNCTION_2_4(&dword_22375F000, v61, v62, "Failed to create the RequestStarted message");
        OUTLINED_FUNCTION_3_0();

        v63 = *(v20 + 8);
        v64 = v59;
LABEL_33:
        v73 = v60;
        goto LABEL_41;
      }
    }

    v63 = *(v20 + 8);
    v64 = v26;
    v73 = v28;
    goto LABEL_41;
  }

  sub_223770EE8(v18, &qword_27D097A50, &unk_2237B7800);
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_28131AA10);
  }

  v29 = sub_2237B5C9C();
  v30 = OUTLINED_FUNCTION_9_4(v29, qword_28131B550);
  v31 = sub_2237B5FFC();
  if (OUTLINED_FUNCTION_5(v31))
  {
    v32 = OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_4_4(v32);
    OUTLINED_FUNCTION_2_4(&dword_22375F000, v33, v34, "Starting a request without a sessinId");
    OUTLINED_FUNCTION_3_0();
  }
}

id sub_223771C3C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2237B410C();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_2237B412C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_223771D44(uint64_t a1)
{
  v2 = type metadata accessor for RequestDispatcher.SessionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_217(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_223771EBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_223771EF4()
{
  OUTLINED_FUNCTION_16_3();
  v5 = v4;
  v56 = v7;
  v57 = v6;
  v9 = v8;
  v10 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v58 = v11;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_50_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_29_1();
  v18 = sub_223767020(v9, &selRef_encodedClassName);
  v59 = v18;
  if (v19)
  {
    v20 = v19;
    v53 = &v53;
    MEMORY[0x28223BE20](v18);
    v55 = (&v53 - 8);
    *(&v53 - 6) = v0;
    *(&v53 - 5) = v9;
    *(&v53 - 4) = v56;
    *(&v53 - 3) = v5;
    v21 = sub_223761B80();
    OUTLINED_FUNCTION_15_5();
    sub_2237B574C();
    v51 = &type metadata for Logger;
    v52 = v21;
    OUTLINED_FUNCTION_14_6();
    sub_2237B573C(v22, v23, v24, v25);
    v57 = *(v0 + OBJC_IVAR___SRDRequestDispatcherInternal_rdmbQueue);
    v26 = v58;
    v27 = *(v58 + 16);
    OUTLINED_FUNCTION_139();
    v27();
    OUTLINED_FUNCTION_147();
    v27();
    v28 = *(v26 + 80);
    v29 = (v28 + 16) & ~v28;
    v56 = v2;
    v30 = (v13 + ((v13 + v28 + v29) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = v1;
    v31 = OUTLINED_FUNCTION_305();
    v32 = v10;
    v33 = v20;
    v34 = *(v26 + 32);
    v35 = v31 + v29;
    v36 = v32;
    (v34)(v35, v3);
    OUTLINED_FUNCTION_230();
    v34();
    v37 = (v31 + v30);
    *v37 = v59;
    v37[1] = v33;
    v38 = (v31 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8));
    v39 = v55;
    *v38 = sub_2237725A0;
    v38[1] = v39;
    OUTLINED_FUNCTION_5_3();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_223761F8C;
    *(v40 + 24) = v31;
    v60[4] = sub_223761F78;
    v60[5] = v40;
    OUTLINED_FUNCTION_7_5();
    v60[1] = 1107296256;
    OUTLINED_FUNCTION_0_5();
    v60[2] = v41;
    v60[3] = &block_descriptor_36;
    v42 = _Block_copy(v60);

    dispatch_sync(v57, v42);
    _Block_release(v42);
    v33, v43, v44, v45, v46, v47, v48, v49;
    v50 = *(v26 + 8);
    v50(v54, v36);
    v50(v56, v36);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if ((v33 & 1) == 0)
    {
      OUTLINED_FUNCTION_14_2();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_82(uint64_t a1@<X8>)
{
  *(v5 - 192) = v4;
  *(v5 - 184) = v2;
  *(v5 - 264) = (a1 - 32) | 0x8000000000000000;
  *(v5 - 176) = v1;
  *(v5 - 168) = v3;
}

void OUTLINED_FUNCTION_317(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_281(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_223772394(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_223767020(a2, &selRef_groupIdentifier);
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = result;
  v13 = v11;
  v14 = OBJC_IVAR___SRDRequestDispatcherInternal_aceCommandDispatcher;
  swift_beginAccess();
  v15 = *(a1 + v14);

  sub_22376C774(v12, v13, v15, v16);
  v18 = v17;
  v13, v19, v20, v21, v22, v23, v24, v25;
  v15, v26, v27, v28, v29, v30, v31, v32;
  if (v18)
  {
    result = sub_223767020(a2, &selRef_encodedClassName);
    if (v33)
    {
      v34 = v33;
      v35 = sub_2237725B0(result, v33, v18);
      v37 = v36;
      v34, v36, v38, v39, v40, v41, v42, v43;
      v18, v44, v45, v46, v47, v48, v49, v50;
      if (v35)
      {
        sub_223772600(v35, v37, a2, a5, a3, a4);
        return swift_unknownObjectRelease();
      }

      if (a3)
      {
        v51 = swift_allocObject();
        *(v51 + 16) = a3;
        *(v51 + 24) = a4;
        v52 = sub_2237A9418;
        goto LABEL_10;
      }

LABEL_11:
      v53 = 0;
      v51 = 0;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v51 = swift_allocObject();
  *(v51 + 16) = a3;
  *(v51 + 24) = a4;
  v52 = sub_2237A9284;
LABEL_10:
  v53 = v52;
LABEL_12:
  sub_223772C60(a3, a4);
  sub_2237929D8();
  return sub_223772558(v53, v51);
}

uint64_t sub_223772558(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223772568()
{

  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_2237725B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_22376504C(), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223772600(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v89 = a5;
  v90 = a6;
  v88 = a4;
  v9 = sub_2237B5CCC();
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v87 = v14 - v13;
  v15 = sub_2237B5D0C();
  OUTLINED_FUNCTION_0_2();
  v86 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v85 = v19 - v18;
  v92 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v21 = v20;
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v91 = &v79 - v27;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1, ObjectType, MEMORY[0x277D5D138]))
  {
    v81 = v29;
    swift_getObjectType();
    v84 = v11;
    swift_unknownObjectRetain();
    v83 = v9;
    v80 = a2;
    aBlock = sub_2237B568C();
    v94 = v30;
    MEMORY[0x223DEAAD0](58, 0xE100000000000000);
    v79 = a3;
    v99 = sub_223772C54(a3);
    v100 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
    v32 = sub_2237B5E3C();
    v34 = v33;
    MEMORY[0x223DEAAD0](v32);
    v34, v35, v36, v37, v38, v39, v40, v41;
    v82 = v15;
    v43 = aBlock;
    v42 = v94;
    v44 = sub_223761B80();
    v45 = v91;
    sub_2237B573C("BridgeQueueLatency", 18, 2, "%{public}s", 10, 2, v43, v42, &type metadata for Logger, v44);
    v42, v46, v47, v48, v49, v50, v51, v52;
    swift_getObjectType();
    v81 = sub_2237B555C();
    v53 = *(v21 + 16);
    v54 = v21;
    v55 = v92;
    v53(v26, v45);
    v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v57 = (v23 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 23) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    (*(v54 + 32))(v60 + v56, v26, v55);
    v61 = (v60 + v57);
    v62 = v80;
    *v61 = a1;
    v61[1] = v62;
    v63 = v79;
    *(v60 + v58) = v79;
    v65 = v88;
    v64 = v89;
    *(v60 + v59) = v88;
    v66 = (v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8));
    v67 = v90;
    *v66 = v64;
    v66[1] = v67;
    v97 = sub_223772D18;
    v98 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v94 = 1107296256;
    v95 = sub_2237639EC;
    v96 = &block_descriptor;
    v68 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v69 = v63;
    v70 = v65;
    sub_223772C60(v64, v67);
    v71 = v85;
    sub_2237B5CEC();
    v99 = MEMORY[0x277D84F90];
    sub_223765104(&qword_28131A840, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097C90, qword_2237B7940);
    sub_223765224();
    v72 = v87;
    v73 = v83;
    sub_2237B60FC();
    v74 = v81;
    MEMORY[0x223DEACD0](0, v71, v72, v68);
    _Block_release(v68);
    swift_unknownObjectRelease();

    (*(v84 + 8))(v72, v73);
    (*(v86 + 8))(v71, v82);
    (*(v54 + 8))(v91, v92);
  }

  else
  {
    v76 = v88;
    v77 = v89;
    v78 = v90;

    return sub_223772DD0(a1, a2, a3, v76, v77, v78);
  }
}

uint64_t sub_223772B74()
{
  v1 = sub_2237B5C7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  if (*(v0 + v7))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_223772C60(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_223772C74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_223761B80();
  sub_2237B572C();

  return sub_223772DD0(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_223772D18()
{
  v1 = *(sub_2237B5C7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_223772C74(v0 + v2, v7, v8, v9, v10, v12, v13);
}

uint64_t sub_223772DD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v77 = a5;
  v78 = a6;
  v76 = a4;
  v7 = sub_2237B5C7C();
  v79 = *(v7 - 8);
  v80 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28131AA10 != -1)
  {
    swift_once();
  }

  v9 = sub_2237B5C9C();
  __swift_project_value_buffer(v9, qword_28131B550);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = sub_2237B5C8C();
  v12 = sub_2237B5FEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v81[0] = v14;
    *v13 = 136315650;
    v82 = sub_223772C54(v10);
    v83 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
    v16 = sub_2237B5E3C();
    v18 = v17;
    v19 = sub_223763694(v16, v17, v81);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v82 = sub_223773198(v10);
    v83 = v27;
    v28 = sub_2237B5E3C();
    v30 = v29;
    v31 = sub_223763694(v28, v29, v81);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v13 + 14) = v31;
    *(v13 + 22) = 2080;
    swift_getObjectType();
    v39 = sub_2237B568C();
    v41 = v40;
    v42 = sub_223763694(v39, v40, v81);
    v41, v43, v44, v45, v46, v47, v48, v49;
    *(v13 + 24) = v42;
    _os_log_impl(&dword_22375F000, v11, v12, "Forwarding ace command %s with aceId: %s to bridge: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DEB690](v14, -1, -1);
    MEMORY[0x223DEB690](v13, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v82 = sub_2237B568C();
  v83 = v50;
  MEMORY[0x223DEAAD0](58, 0xE100000000000000);
  v81[0] = sub_223772C54(v10);
  v81[1] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097358, &qword_2237B7810);
  v52 = sub_2237B5E3C();
  v54 = v53;
  MEMORY[0x223DEAAD0](v52);
  v54, v55, v56, v57, v58, v59, v60, v61;
  v62 = v82;
  v63 = v83;
  v64 = sub_223761B80();
  v65 = v75;
  sub_2237B573C("BridgeCommandHandlingTime", 25, 2, "%{public}s", 10, 2, v62, v63, &type metadata for Logger, v64);
  v63, v66, v67, v68, v69, v70, v71, v72;
  sub_2237B569C();
  sub_2237B572C();
  return (*(v79 + 8))(v65, v80);
}

uint64_t sub_2237731A4()
{
  sub_2237731FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2237731FC()
{
  v1 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionId;
  sub_2237B412C();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_assistantId + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionType;
  sub_2237B563C();
  OUTLINED_FUNCTION_4();
  (*(v11 + 8))(v0 + v10);

  v12 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState + 8), v13, v14, v15, v16, v17, v18, v19;
  v12, v20, v21, v22, v23, v24, v25, v26;
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshots), v27, v28, v29, v30, v31, v32, v33;
  *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_snapshotRequestIds), v34, v35, v36, v37, v38, v39, v40;
  return v0;
}

void sub_2237733A0(uint64_t a1@<X0>, _OWORD *x8_0@<X8>)
{
  v5 = (a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  sub_223773444(v7, v6, x8_0);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
}

double sub_223773444@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  if (*(a2 + 16) && (sub_223774D10(), (v8 & 1) != 0))
  {
    sub_22376AEC8(*(a2 + 56) + 32 * v7, v17);
    sub_223774DE4(v17, a4);
  }

  else
  {
    if (qword_28131AA10 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v10 = sub_2237B5C9C();
    __swift_project_value_buffer(v10, qword_28131B550);
    v11 = sub_2237B5C8C();
    v12 = sub_2237B601C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22375F000, v11, v12, "Could not find key in user-specific session data. Falling back to shared space", v13, 2u);
      OUTLINED_FUNCTION_8();
    }

    if (*(a3 + 16) && (sub_223774D10(), (v15 & 1) != 0))
    {
      v16 = *(a3 + 56) + 32 * v14;

      sub_22376AEC8(v16, a4);
    }

    else
    {
      result = 0.0;
      *a4 = 0u;
      a4[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_223773664(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  OUTLINED_FUNCTION_5_3();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  OUTLINED_FUNCTION_5_3();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2237738C0;
  *(v6 + 24) = v5;
  v9[4] = sub_2237750B8;
  v9[5] = v6;
  OUTLINED_FUNCTION_2_3();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v9[2] = v7;
  v9[3] = &block_descriptor_59;
  _Block_copy(v9);
  OUTLINED_FUNCTION_8_3();

  dispatch_sync(v4, v2);
  _Block_release(v2);
  LOBYTE(v4) = OUTLINED_FUNCTION_9_3(v6, "", 101, 67);

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223773794()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;
  OUTLINED_FUNCTION_5_3();

  return MEMORY[0x2821FE8E8](v8, v9, v10);
}

double sub_2237737F4@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_sessionState;
  swift_beginAccess();
  v5 = *(v4 + 8);
  if (*(v5 + 16))
  {
    v6 = *v4;

    sub_223774D10();
    if (v8)
    {
      sub_22376AEC8(*(v5 + 56) + 32 * v7, a3);
      v5, v15, v16, v17, v18, v19, v20, v21;
      v6, v22, v23, v24, v25, v26, v27, v28;
      return result;
    }

    v5, v8, v9, v10, v11, v12, v13, v14;
    v6, v30, v31, v32, v33, v34, v35, v36;
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

void sub_2237738C8()
{
  OUTLINED_FUNCTION_16_3();
  v23 = v0;
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v5 = sub_2237B56DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v0 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  sub_223773DA0(v4, v28);
  (*(v10 + 16))(v14, v24, v8);
  v15 = v5;
  (*(v6 + 16))(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v5);
  v16 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v17 = (v12 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  v19 = v28[1];
  *(v18 + 24) = v28[0];
  *(v18 + 40) = v19;
  (*(v10 + 32))(v18 + v16, v14, v8);
  (*(v6 + 32))(v18 + v17, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  OUTLINED_FUNCTION_5_3();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_223774BD8;
  *(v20 + 24) = v18;
  v27[4] = sub_2237750B8;
  v27[5] = v20;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  v27[2] = v21;
  v27[3] = &block_descriptor_49;
  v22 = _Block_copy(v27);

  dispatch_sync(v26, v22);
  _Block_release(v22);
  LOBYTE(v22) = OUTLINED_FUNCTION_9_3(v20, "", 101, 85);

  if (v22)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223773BB4()
{
  OUTLINED_FUNCTION_16_3();
  v1 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  v10 = *(v8 + 80);

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  }

  v11 = (v4 + 56) & ~v4;
  v12 = (v11 + v6 + v10) & ~v10;
  (*(v3 + 8))(v0 + v11, v1);
  (*(v9 + 8))(v0 + v12, v7);
  OUTLINED_FUNCTION_14_2();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_223773D18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_223773E10();
  return swift_endAccess();
}

uint64_t sub_223773DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_223773E10()
{
  OUTLINED_FUNCTION_16_3();
  v155 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB0, &qword_2237B94F8);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  isUniquelyReferenced_nonNull_native = &v144 - v9;
  MEMORY[0x28223BE20](v8);
  v159 = &v144 - v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20_0();
  v152 = v13;
  v14 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v157 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v144 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_20_0();
  v151 = v24;
  if (qword_28131AA10 != -1)
  {
    goto LABEL_72;
  }

  while (1)
  {
    v25 = sub_2237B5C9C();
    __swift_project_value_buffer(v25, qword_28131B550);

    v26 = sub_2237B5C8C();
    v27 = sub_2237B5FEC();
    v2, v28, v29, v30, v31, v32, v33, v34;
    v35 = os_log_type_enabled(v26, v27);
    v146 = v6;
    v145 = isUniquelyReferenced_nonNull_native;
    v150 = v19;
    v158 = v14;
    v154 = v23;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v164 = v37;
      *v36 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
      OUTLINED_FUNCTION_0_8();
      sub_223774B1C(v38, v39, MEMORY[0x277D5D1F8]);
      v40 = sub_2237B5DCC();
      v42 = v41;
      v43 = sub_223763694(v40, v41, &v164);
      v42, v44, v45, v46, v47, v48, v49, v50;
      *(v36 + 4) = v43;
      _os_log_impl(&dword_22375F000, v26, v27, "Updating shared value for keys: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();
    }

    v19 = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097EC0, qword_2237B9508);
    sub_2237B61BC();
    v6 = 0;
    v147 = v2;
    v2 += 64;
    v148 = v2;
    OUTLINED_FUNCTION_8_9();
    isUniquelyReferenced_nonNull_native = (v51 >> 6);
    v156 = v157 + 16;
    v53 = v52 + 64;
    v160 = (v157 + 32);
    v149 = v52;
    v54 = v157;
    if (!v2)
    {
      break;
    }

    while (1)
    {
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
LABEL_11:
      v19 = v55 | (v6 << 6);
      v23 = *(v54 + 72) * v19;
      v58 = v151;
      v14 = v158;
      (*(v54 + 16))(v151, *(v147 + 48) + v23, v158);
      *(v53 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v59 = v58;
      v60 = v149;
      (*(v54 + 32))(*(v149 + 48) + v23, v59, v14);
      v61 = (*(v60 + 56) + 32 * v19);
      *v61 = 0u;
      v61[1] = 0u;
      v62 = *(v60 + 16);
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        break;
      }

      *(v60 + 16) = v64;
      v19 = v152;
      if (!v2)
      {
        goto LABEL_6;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

LABEL_6:
  v56 = v6;
  while (1)
  {
    v6 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
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

    if (v6 >= isUniquelyReferenced_nonNull_native)
    {
      break;
    }

    v57 = *(v148 + 8 * v6);
    ++v56;
    if (v57)
    {
      v55 = __clz(__rbit64(v57));
      v2 = (v57 - 1) & v57;
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_22_2();
  v2 = v66 & v65;
  v6 = (v67 + 63) >> 6;
  v153 = (v157 + 8);

  v23 = 0;
  v14 = &qword_27D097EB8;
  isUniquelyReferenced_nonNull_native = v159;
  v144 = v53;
  while (1)
  {
    while (1)
    {
      if (!v2)
      {
        while (1)
        {
          v68 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v68 >= v6)
          {
            v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
            __swift_storeEnumTagSinglePayload(isUniquelyReferenced_nonNull_native, 1, 1, v107);
            v2 = 0;
            goto LABEL_21;
          }

          v2 = *(v53 + 8 * v68);
          ++v23;
          if (v2)
          {
            v23 = v68;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_65;
      }

LABEL_20:
      OUTLINED_FUNCTION_19_7();
      v71 = v70 | (v69 << 6);
      v72 = v149;
      v73 = v157;
      v74 = v158;
      v75 = v151;
      (*(v157 + 16))(v151, *(v149 + 48) + *(v157 + 72) * v71, v158);
      sub_223773DA0(*(v72 + 56) + 32 * v71, &v164);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      v77 = &v159[*(v76 + 48)];
      (*(v73 + 32))(v159, v75, v74);
      v78 = v165;
      *v77 = v164;
      *(v77 + 1) = v78;
      isUniquelyReferenced_nonNull_native = v159;
      __swift_storeEnumTagSinglePayload(v159, 0, 1, v76);
      v19 = v152;
      v53 = v144;
LABEL_21:
      sub_223774B68(isUniquelyReferenced_nonNull_native, v19);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB8, &qword_2237B9500);
      if (__swift_getEnumTagSinglePayload(v19, 1, v79) == 1)
      {

        OUTLINED_FUNCTION_22_2();
        v6 = v109 & v108;
        v111 = (v110 + 63) >> 6;

        v2 = 0;
        OUTLINED_FUNCTION_7_7();
        v14 = v158;
        v23 = v155;
        v159 = v111;
        while (v6)
        {
          v113 = v2;
LABEL_45:
          v114 = __clz(__rbit64(v6));
          v6 &= v6 - 1;
          v115 = v114 | (v113 << 6);
          v116 = v147;
          v117 = v157;
          v14 = v158;
          v118 = v151;
          (*(v157 + 16))(v151, *(v147 + 48) + *(v157 + 72) * v115, v158);
          sub_223773DA0(*(v116 + 56) + 32 * v115, &v164);
          v119 = (v19 + *(v79 + 48));
          (*(v117 + 32))(v19, v118, v14);
          v120 = v165;
          *v119 = v164;
          v119[1] = v120;
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v79);
LABEL_46:
          isUniquelyReferenced_nonNull_native = v145;
          sub_223774B68(v19, v145);
          if (__swift_getEnumTagSinglePayload(isUniquelyReferenced_nonNull_native, 1, v79) == 1)
          {

            OUTLINED_FUNCTION_14_2();
            return;
          }

          v121 = &isUniquelyReferenced_nonNull_native[*(v79 + 48)];
          v122 = v150;
          (*v160)(v150, isUniquelyReferenced_nonNull_native, v14);
          v123 = *(v121 + 1);
          v164 = *v121;
          v165 = v123;
          if (*(&v123 + 1))
          {
            sub_223774DE4(&v164, &v162);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v161 = *(v23 + 8);
            sub_223774D10();
            OUTLINED_FUNCTION_11_9();
            if (__OFADD__(v126, v127))
            {
              goto LABEL_68;
            }

            v128 = v124;
            v19 = v125;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
            OUTLINED_FUNCTION_6_7();
            if (sub_2237B618C())
            {
              sub_223774D10();
              v23 = v155;
              if ((v19 & 1) != (v130 & 1))
              {
                goto LABEL_73;
              }

              v128 = v129;
            }

            else
            {
              v23 = v155;
            }

            isUniquelyReferenced_nonNull_native = v161;
            if (v19)
            {
              v139 = (*(v161 + 7) + 32 * v128);
              __swift_destroy_boxed_opaque_existential_0Tm(v139);
              sub_223774DE4(&v162, v139);
              (*v153)(v150, v14);
            }

            else
            {
              OUTLINED_FUNCTION_4_10(&v161[8 * (v128 >> 6)]);
              v19 = v150;
              (*(v157 + 16))(*(isUniquelyReferenced_nonNull_native + 6) + *(v157 + 72) * v128, v150, v14);
              sub_223774DE4(&v162, (*(isUniquelyReferenced_nonNull_native + 7) + 32 * v128));
              v140 = OUTLINED_FUNCTION_20_7();
              v141(v140);
              v142 = *(isUniquelyReferenced_nonNull_native + 2);
              v63 = __OFADD__(v142, 1);
              v143 = v142 + 1;
              if (v63)
              {
                goto LABEL_70;
              }

              *(isUniquelyReferenced_nonNull_native + 2) = v143;
            }

            *(v23 + 8) = isUniquelyReferenced_nonNull_native;
            OUTLINED_FUNCTION_7_7();
            v111 = v159;
          }

          else
          {
            sub_223774CA8(&v164);
            v131 = *(v23 + 8);
            sub_223774D10();
            if (v133)
            {
              v134 = v132;
              swift_isUniquelyReferenced_nonNull_native();
              v161 = *(v23 + 8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
              OUTLINED_FUNCTION_6_7();
              sub_2237B618C();
              OUTLINED_FUNCTION_16_7();
              isUniquelyReferenced_nonNull_native = *(v137 + 8);
              v19 = v153;
              (isUniquelyReferenced_nonNull_native)(v135 + v136 * v134, v14);
              sub_223774DE4((*(v131 + 56) + 32 * v134), &v162);
              OUTLINED_FUNCTION_0_8();
              sub_223774B1C(qword_28131A8A8, v138, MEMORY[0x277D5D1F8]);
              sub_2237B619C();
              (isUniquelyReferenced_nonNull_native)(v122, v14);
              *(v23 + 8) = v131;
            }

            else
            {
              (*v153)(v122, v14);
              v162 = 0u;
              v163 = 0u;
            }

            v111 = v159;
            sub_223774CA8(&v162);
            OUTLINED_FUNCTION_7_7();
          }
        }

        while (1)
        {
          v113 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v113 >= v111)
          {
            __swift_storeEnumTagSinglePayload(v19, 1, 1, v79);
            v6 = 0;
            goto LABEL_46;
          }

          v6 = *(v112 + 8 * v113);
          ++v2;
          if (v6)
          {
            v2 = v113;
            goto LABEL_45;
          }
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v80 = (v19 + *(v79 + 48));
      v81 = v154;
      v14 = v158;
      (*v160)(v154, v19, v158);
      v82 = v80[1];
      v164 = *v80;
      v165 = v82;
      v83 = v155;
      if (*(&v82 + 1))
      {
        break;
      }

      sub_223774CA8(&v164);
      v93 = *v83;
      sub_223774D10();
      if (v95)
      {
        v96 = v94;
        swift_isUniquelyReferenced_nonNull_native();
        v161 = *v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
        OUTLINED_FUNCTION_6_7();
        sub_2237B618C();
        OUTLINED_FUNCTION_16_7();
        v100 = *(v99 + 8);
        v100(v97 + v98 * v96, v14);
        sub_223774DE4((*(v93 + 7) + 32 * v96), &v162);
        OUTLINED_FUNCTION_0_8();
        sub_223774B1C(qword_28131A8A8, v101, MEMORY[0x277D5D1F8]);
        sub_2237B619C();
        v100(v154, v14);
        v19 = v152;
        isUniquelyReferenced_nonNull_native = v159;
        *v83 = v93;
      }

      else
      {
        (*v153)(v81, v14);
        v162 = 0u;
        v163 = 0u;
      }

      v14 = &qword_27D097EB8;
      sub_223774CA8(&v162);
    }

    sub_223774DE4(&v164, &v162);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *v83;
    sub_223774D10();
    OUTLINED_FUNCTION_11_9();
    if (__OFADD__(v86, v87))
    {
      goto LABEL_67;
    }

    v88 = v84;
    v89 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    OUTLINED_FUNCTION_6_7();
    if (sub_2237B618C())
    {
      break;
    }

    v92 = v155;
LABEL_30:
    isUniquelyReferenced_nonNull_native = v161;
    if (v89)
    {
      v102 = (*(v161 + 7) + 32 * v88);
      __swift_destroy_boxed_opaque_existential_0Tm(v102);
      sub_223774DE4(&v162, v102);
      (*v153)(v154, v14);
    }

    else
    {
      *&v161[8 * (v88 >> 6) + 64] |= 1 << v88;
      v19 = v154;
      (*(v157 + 16))(*(isUniquelyReferenced_nonNull_native + 6) + *(v157 + 72) * v88, v154, v14);
      sub_223774DE4(&v162, (*(isUniquelyReferenced_nonNull_native + 7) + 32 * v88));
      v103 = OUTLINED_FUNCTION_20_7();
      v104(v103);
      v105 = *(isUniquelyReferenced_nonNull_native + 2);
      v63 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v63)
      {
        goto LABEL_69;
      }

      *(isUniquelyReferenced_nonNull_native + 2) = v106;
    }

    *v92 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = v159;
    v19 = v152;
    v14 = &qword_27D097EB8;
  }

  sub_223774D10();
  v92 = v155;
  if ((v89 & 1) == (v91 & 1))
  {
    v88 = v90;
    goto LABEL_30;
  }

LABEL_73:
  sub_2237B62CC();
  __break(1u);
}

uint64_t sub_223774B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223774B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097EB0, &qword_2237B94F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_223774BD8()
{
  v1 = *(sub_2237B560C() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2237B56DC();
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v0 + 16);
  v7 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_2237751BC(v6, v0 + 24, v0 + v2, v7);
}

uint64_t sub_223774CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097350, qword_2237B7EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223774D10()
{
  sub_2237B560C();
  sub_2237651DC(qword_28131A8A8, MEMORY[0x277D5D1F0], MEMORY[0x277D5D1F8]);
  sub_2237B5DDC();
  sub_22376AD50();
}

_OWORD *sub_223774DE4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_223774DF4()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v16 = sub_2237B5C9C();
  __swift_project_value_buffer(v16, qword_28131B550);
  v45 = *(v8 + 16);
  v45(v15, v3, v6);
  v17 = v6;
  v18 = sub_2237B5C8C();
  v19 = sub_2237B5FEC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v43 = v5;
    v23 = v22;
    v47[0] = v22;
    *v21 = 136315138;
    v41 = v12;
    v24 = v17;
    v25 = sub_2237B55FC();
    v44 = v1;
    v27 = v26;
    (*(v8 + 8))(v15, v24);
    v28 = sub_223763694(v25, v27, v47);
    v27, v29, v30, v31, v32, v33, v34, v35;
    *(v21 + 4) = v28;
    _os_log_impl(&dword_22375F000, v18, v19, "Updating shared value for key: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v5 = v43;
    OUTLINED_FUNCTION_8();
    v3 = v42;
    OUTLINED_FUNCTION_8();

    v36 = v24;
    v12 = v41;
  }

  else
  {

    (*(v8 + 8))(v15, v17);
    v36 = v17;
  }

  memset(v47, 0, sizeof(v47));
  v37 = v45;
  v45(v12, v3, v36);
  v38 = OUTLINED_FUNCTION_15_8();
  sub_223773DA0(v38, v39);
  sub_2237750BC(&v46, v12);
  sub_223774CA8(v47);
  v37(v12, v3, v36);
  sub_223773DA0(v5, v47);
  sub_2237750BC(v47, v12);
  OUTLINED_FUNCTION_14_2();
}

uint64_t sub_2237750BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_223774DE4(a1, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_2237755FC();
    *v2 = v7;
    v4 = sub_2237B560C();
    return (*(*(v4 - 8) + 8))(a2, v4);
  }

  else
  {
    sub_223774CA8(a1);
    sub_223775C50(v8);
    v6 = sub_2237B560C();
    (*(*(v6 - 8) + 8))(a2, v6);
    return sub_223774CA8(v8);
  }
}

uint64_t sub_2237751BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_223775238();
  return swift_endAccess();
}

void sub_223775238()
{
  OUTLINED_FUNCTION_16_3();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v63 = v6;
  v7 = sub_2237B56DC();
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  v64 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v61 = v17 - v18;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - v20;
  if (qword_28131AA10 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v22 = sub_2237B5C9C();
  __swift_project_value_buffer(v22, qword_28131B550);
  v23 = *(v15 + 16);
  v62 = v5;
  v60 = v23;
  v23(v21, v5, v64);
  (*(v9 + 16))(v13, v3, v7);
  v24 = sub_2237B5C8C();
  v25 = sub_2237B5FEC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    HIDWORD(v57) = v25;
    v27 = v26;
    v58 = swift_slowAlloc();
    v65[0] = v58;
    *v27 = 136315394;
    v28 = sub_2237B55FC();
    v59 = v1;
    v30 = v29;
    v31 = v21;
    v32 = v64;
    (*(v15 + 8))(v31, v64);
    v33 = sub_223763694(v28, v30, v65);
    v30, v34, v35, v36, v37, v38, v39, v40;
    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    OUTLINED_FUNCTION_5_8();
    sub_223774B1C(v41, v42, MEMORY[0x277D5D2C0]);
    v43 = sub_2237B627C();
    v45 = v44;
    (*(v9 + 8))(v13, v7);
    v46 = sub_223763694(v43, v45, v65);
    v45, v47, v48, v49, v50, v51, v52, v53;
    *(v27 + 14) = v46;
    _os_log_impl(&dword_22375F000, v24, BYTE4(v57), "Updating value for key: %s userId: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();

    v54 = v32;
  }

  else
  {

    (*(v9 + 8))(v13, v7);
    v55 = v64;
    (*(v15 + 8))(v21, v64);
    v54 = v55;
  }

  v56 = v61;
  v60(v61, v62, v54);
  sub_223773DA0(v63, v65);
  sub_2237750BC(v65, v56);
  OUTLINED_FUNCTION_14_2();
}

void OUTLINED_FUNCTION_239(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_2237755FC()
{
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_23_4();
  sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_30_3();
  sub_223774D10();
  OUTLINED_FUNCTION_5_7();
  if (v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v2;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
  if ((OUTLINED_FUNCTION_13_6(v7) & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_223774D10();
  if ((v6 & 1) != (v9 & 1))
  {
LABEL_11:
    sub_2237B62CC();
    __break(1u);
    return;
  }

  v5 = v8;
LABEL_5:
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v0 + 56) + 32 * v5));
    OUTLINED_FUNCTION_14_2();

    sub_223774DE4(v10, v11);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_32_1();
    v14(v13);
    v15 = OUTLINED_FUNCTION_34_1();
    sub_223775AD8(v15, v16, v17, v18);
    OUTLINED_FUNCTION_14_2();
  }
}

uint64_t sub_223775770(uint64_t a1, uint64_t a2)
{
  v6 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_2();
  v10 = *(v2 + OBJC_IVAR____TtC14SiriMessageBus19ConversationSession_syncQueue);
  sub_223773DA0(a1, v19);
  (*(v8 + 16))(v3, a2, v6);
  v11 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  v13 = v19[1];
  *(v12 + 24) = v19[0];
  *(v12 + 40) = v13;
  (*(v8 + 32))(v12 + v11, v3, v6);
  OUTLINED_FUNCTION_5_3();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_223775BE8;
  *(v14 + 24) = v12;
  aBlock[4] = sub_2237750B8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_5();
  aBlock[2] = v15;
  aBlock[3] = &block_descriptor_69;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v10, v16);
  _Block_release(v16);
  LOBYTE(v10) = OUTLINED_FUNCTION_9_3(v14, "", 101, 61);

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_223775998()
{
  v1 = sub_2237B560C();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = *(v5 + 64);

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  }

  v7 = (v4 + 56) & ~v4;
  (*(v3 + 8))(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v6, v4 | 7);
}

uint64_t sub_223775A6C(uint64_t a1)
{
  swift_beginAccess();
  sub_223774DF4();
  return swift_endAccess();
}

_OWORD *sub_223775AD8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_31_2();
  *(v9 + 8 * (v8 >> 6) + 64) |= 1 << v8;
  v10 = *(v9 + 48);
  sub_2237B560C();
  OUTLINED_FUNCTION_4();
  (*(v11 + 32))(v10 + *(v11 + 72) * v5, v4);
  result = sub_223774DE4(a3, (*(a4 + 56) + 32 * v5));
  v13 = *(a4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_223775BE8()
{
  v1 = sub_2237B560C();
  OUTLINED_FUNCTION_1(v1);
  v2 = *(v0 + 16);

  return sub_223775A6C(v2);
}

double sub_223775C50@<D0>(_OWORD *a1@<X8>)
{
  sub_223774D10();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097E90, &qword_2237B9490);
    sub_2237B618C();
    v6 = *(v10 + 48);
    v7 = sub_2237B560C();
    OUTLINED_FUNCTION_4();
    (*(v8 + 8))(v6 + *(v8 + 72) * v5, v7);
    sub_223774DE4((*(v10 + 56) + 32 * v5), a1);
    sub_2237651DC(qword_28131A8A8, MEMORY[0x277D5D1F0], MEMORY[0x277D5D1F8]);
    sub_2237B619C();
    *v1 = v10;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void sub_223775DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2237B405C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_223775E28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_2237B5E2C();
  v10 = v9;
  sub_2237B5E2C();
  OUTLINED_FUNCTION_357();
  v11 = a1;
  v12 = OUTLINED_FUNCTION_358();
  a5(v12, v10, a4, v5);

  v10, v13, v14, v15, v16, v17, v18, v19;

  v5, v20, v21, v22, v23, v24, v25, v26;
}

void OUTLINED_FUNCTION_321(uint64_t a1, const char *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8)
{

  v8, a2, a3, a4, a5, a6, a7, a8;
}

void sub_223775EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_3();
  a19 = v24;
  a20 = v25;
  v61 = v26;
  v59 = v27;
  OUTLINED_FUNCTION_214(v28, &a18);
  v29 = sub_2237B5C7C();
  OUTLINED_FUNCTION_0_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_31_0();
  v60 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_27_1();
  v37 = sub_223761B80();
  sub_2237B575C();
  v63 = v21;
  v64 = v20;
  v65 = v58;
  v66 = v59;
  v67 = v61;
  OUTLINED_FUNCTION_15_5();
  sub_2237B574C();
  OUTLINED_FUNCTION_12_5();
  OUTLINED_FUNCTION_223(v38, v39, v40, v41, v42, v43, 44);
  v44 = OUTLINED_FUNCTION_203();
  v37(v44, v23, v29);
  v45 = OUTLINED_FUNCTION_119();
  (v37)(v45);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_79();
  v46 = OUTLINED_FUNCTION_221();
  v47 = OUTLINED_FUNCTION_46_0(v46);
  v23(v47);
  v48 = OUTLINED_FUNCTION_52_0();
  v23(v48);
  OUTLINED_FUNCTION_76((v31 + v46));
  OUTLINED_FUNCTION_84(v49);
  v50 = (v46 + v22);
  *v50 = sub_223777208;
  v50[1] = &v62;
  OUTLINED_FUNCTION_5_3();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_223761F8C;
  *(v51 + 24) = v46;
  v68[4] = sub_223761F78;
  v68[5] = v51;
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_2_6(COERCE_DOUBLE(1107296256));
  v68[2] = v52;
  v68[3] = &block_descriptor_58;
  _Block_copy(v68);
  OUTLINED_FUNCTION_195();

  v53 = OUTLINED_FUNCTION_285();
  dispatch_sync(v53, v54);
  _Block_release(v60);
  v55 = OUTLINED_FUNCTION_160();
  v31(v55);
  v56 = OUTLINED_FUNCTION_202();
  v57 = (v31)(v56);
  OUTLINED_FUNCTION_22_1(v57, "");
  OUTLINED_FUNCTION_121();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
  }
}

void sub_223776240(uint64_t a1)
{
  v3 = v2;
  sub_2237B412C();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v85 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v81 = &v77[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D097340, &qword_2237B77F8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v77[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097A50, &unk_2237B7800);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_2();
  v80 = v16;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v82 = &v77[-v18];
  OUTLINED_FUNCTION_7();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v77[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v77[-v23];
  v25 = OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_currentSessionId;
  swift_beginAccess();
  v83 = v6[2];
  v83(v24, a1, v1);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v1);
  v26 = *(v12 + 56);
  v84 = v25;
  sub_22376D910(v3 + v25, v14);
  sub_22376D910(v24, &v14[v26]);
  OUTLINED_FUNCTION_3_1(v14);
  if (v27)
  {
    sub_2237692F0(v24, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_3_1(&v14[v26]);
    if (v27)
    {
      sub_2237692F0(v14, &qword_27D097A50, &unk_2237B7800);
LABEL_17:
      v43 = v82;
      __swift_storeEnumTagSinglePayload(v82, 1, 1, v1);
      v44 = v84;
      swift_beginAccess();
      sub_22376CE70(v43, v3 + v44);
      swift_endAccess();
      v45 = *(v3 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging);
      *(v3 + OBJC_IVAR____TtC14SiriMessageBus26AssetInstrumentationLogger_assetsForLogging) = 0;
      v45, v46, v47, v48, v49, v50, v51, v52;
      return;
    }

    goto LABEL_9;
  }

  sub_22376D910(v14, v22);
  OUTLINED_FUNCTION_3_1(&v14[v26]);
  if (v27)
  {
    sub_2237692F0(v24, &qword_27D097A50, &unk_2237B7800);
    OUTLINED_FUNCTION_15();
    v28 = OUTLINED_FUNCTION_14();
    v29(v28);
LABEL_9:
    sub_2237692F0(v14, &unk_27D097340, &qword_2237B77F8);
    goto LABEL_10;
  }

  v38 = v6[4];
  v79 = a1;
  v39 = v81;
  v38(v81, &v14[v26], v1);
  OUTLINED_FUNCTION_6(&qword_28131B4D8);
  v78 = sub_2237B5E0C();
  v40 = v6[1];
  v41 = v39;
  a1 = v79;
  (v40)(v41, v1);
  sub_2237692F0(v24, &qword_27D097A50, &unk_2237B7800);
  v42 = OUTLINED_FUNCTION_14();
  v40(v42);
  sub_2237692F0(v14, &qword_27D097A50, &unk_2237B7800);
  if (v78)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (qword_28131A9F8 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_28131A9F8);
  }

  v30 = sub_2237B5C9C();
  OUTLINED_FUNCTION_13(v30, qword_28131B530);
  v31 = v83;
  v83(v85, a1, v1);

  v32 = sub_2237B5C8C();
  v33 = sub_2237B5FFC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    *v34 = 136315394;
    v35 = v80;
    sub_22376D910(v3 + v84, v80);
    if (__swift_getEnumTagSinglePayload(v35, 1, v1))
    {
      sub_2237692F0(v35, &qword_27D097A50, &unk_2237B7800);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      v31(v81, v35, v1);
      sub_2237692F0(v35, &qword_27D097A50, &unk_2237B7800);
      v37 = sub_2237B40FC();
      v36 = v53;
      OUTLINED_FUNCTION_15();
      v54 = OUTLINED_FUNCTION_16();
      v55(v54);
    }

    v56 = sub_223763694(v37, v36, v86);
    v36, v57, v58, v59, v60, v61, v62, v63;
    *(v34 + 4) = v56;
    *(v34 + 12) = 2080;
    OUTLINED_FUNCTION_1_2(&qword_28131B4D0);
    v64 = sub_2237B627C();
    v66 = v65;
    v67 = OUTLINED_FUNCTION_16();
    v68(v67);
    v69 = sub_223763694(v64, v66, v86);
    v66, v70, v71, v72, v73, v74, v75, v76;
    *(v34 + 14) = v69;
    _os_log_impl(&dword_22375F000, v32, v33, "currentSessionId: %s is not the same as sessionId: %s", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (v6[1])(v85, v1);
  }
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1, uint64_t a2)
{

  return sub_2237B60FC();
}

void OUTLINED_FUNCTION_71()
{

  JUMPOUT(0x223DEB690);
}

void OUTLINED_FUNCTION_71_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

BOOL OUTLINED_FUNCTION_261(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_2237769B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v86 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v81 - v8;
  v10 = sub_2237B63AC();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_4();
  v85 = v14;
  v90 = a2;
  v15 = *(*a2 + 16);
  OUTLINED_FUNCTION_17_0(v3 + 24, v94);
  if (v15 == *(*(v3 + 24) + 16))
  {
    return;
  }

  v16 = OUTLINED_FUNCTION_19_2();
  sub_223776E00(v16, v17);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_223777F4C(v9);
    return;
  }

  v81 = v12;
  v18 = OUTLINED_FUNCTION_19_2();
  v82 = v10;
  v19(v18);
  v92[0] = sub_2237B639C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097990, &qword_2237B8330);
  sub_2237B5E3C();
  v21 = v20;
  OUTLINED_FUNCTION_17_0(v3 + 48, v93);
  v83 = v3;
  v22 = *(v3 + 48);

  v23 = OUTLINED_FUNCTION_19_2();
  sub_22376C774(v23, v24, v22, v25);
  v27 = v26;
  v21, v28, v29, v30, v31, v32, v33, v34;
  v22, v35, v36, v37, v38, v39, v40, v41;
  if (!v27)
  {
LABEL_20:
    v79 = v84;
    v80 = v85;
    sub_2237B637C();
    sub_2237769B4(v79, v90, v86);
    sub_223777F4C(v79);
    (*(v81 + 8))(v80, v82);
    return;
  }

  v89 = *(v27 + 16);
  if (!v89)
  {
LABEL_19:
    v27, v42, v43, v44, v45, v46, v47, v48;
    goto LABEL_20;
  }

  v49 = 0;
  v87 = v27 + 32;
  v88 = v27;
  while (v49 < *(v27 + 16))
  {
    v91 = *(v87 + 16 * v49);
    v50 = *v90;
    swift_getObjectType();
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_22();
    v51 = sub_2237B568C();
    v59 = v52;
    if (*(v50 + 16))
    {
      v60 = v51;
      sub_2237B634C();
      sub_2237B5E6C();
      v61 = sub_2237B636C();
      v62 = ~(-1 << *(v50 + 32));
      while (1)
      {
        v63 = v61 & v62;
        if (((*(v50 + 56 + (((v61 & v62) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v61 & v62)) & 1) == 0)
        {
          break;
        }

        v64 = (*(v50 + 48) + 16 * v63);
        v52 = v64[1];
        if (*v64 != v60 || v52 != v59)
        {
          v66 = sub_2237B629C();
          v61 = v63 + 1;
          if ((v66 & 1) == 0)
          {
            continue;
          }
        }

        v59, v52, v53, v54, v55, v56, v57, v58;
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    v59, v52, v53, v54, v55, v56, v57, v58;
    swift_unknownObjectRetain();
    v67 = v86;
    sub_223776E88();
    v68 = *(*v67 + 16);
    sub_22377702C(v68);
    v69 = *v67;
    *(v69 + 16) = v68 + 1;
    *(v69 + 16 * v68 + 32) = v91;
    *v67 = v69;
    OUTLINED_FUNCTION_22();
    v70 = sub_2237B568C();
    sub_22377708C(v92, v70, v71);
    swift_unknownObjectRelease();
    v92[1], v72, v73, v74, v75, v76, v77, v78;
LABEL_18:
    ++v49;
    v27 = v88;
    if (v49 == v89)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_223776E00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D097988, &qword_2237B8328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_257(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_223776EA0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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