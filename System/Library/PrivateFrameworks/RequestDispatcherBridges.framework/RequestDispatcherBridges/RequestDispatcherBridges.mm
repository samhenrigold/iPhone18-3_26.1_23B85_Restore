uint64_t sub_2236227C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223622868(void *a1)
{
  v2 = sub_22372AC78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22372A548();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v80 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223727408();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_28132B680);
  v15 = sub_22372AC88();
  v16 = sub_22372B268();
  v17 = os_log_type_enabled(v15, v16);
  v78 = v9;
  v79 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v96[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_223623274(0xD00000000000001FLL, 0x8000000223736C00, v96);
    _os_log_impl(&dword_223620000, v15, v16, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x223DE8A80](v19, -1, -1);
    MEMORY[0x223DE8A80](v18, -1, -1);
  }

  v20 = a1;
  v21 = sub_22372AC88();
  v22 = sub_22372B288();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v73 = v2;
    v96[0] = v72;
    *v23 = 136446210;
    sub_223729D58();
    sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v24 = v3;
    v25 = v78;
    v26 = sub_22372B6B8();
    v28 = v27;
    v29 = v25;
    v3 = v24;
    (*(v79 + 8))(v13, v29);
    v30 = sub_223623274(v26, v28, v96);

    *(v23 + 4) = v30;
    _os_log_impl(&dword_223620000, v21, v22, "handleSessionStartedMessage with sessionId: %{public}s", v23, 0xCu);
    v31 = v72;
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    v2 = v73;
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }

  sub_223729D58();
  sub_223728468();
  LODWORD(v73) = sub_223728458();
  v32 = type metadata accessor for TTManagerProxy();
  v33 = swift_allocObject();
  sub_223623470();
  v34 = v74;
  sub_22372A7D8();
  *(v33 + 16) = [objc_allocWithZone(sub_22372AB18()) init];
  sub_22372A7B8();
  (*(v3 + 8))(v34, v2);
  v35 = type metadata accessor for PromptStateManager();
  v69 = v35;
  v36 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EA50, &qword_22372D710);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v36 + 16) = v37;
  *(v36 + 24) = 0;
  v38 = sub_22372AC68();
  swift_allocObject();
  v74 = sub_22372AC58();
  v39 = type metadata accessor for RequestStateInfo();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_223625FB8(MEMORY[0x277D84F90]);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v40 + 24) = v41;
  v96[3] = v32;
  v96[4] = &off_2836C76D8;
  v96[0] = v33;
  v94 = v35;
  v95 = &off_2836C61C0;
  v93[0] = v36;
  v91 = v39;
  v92 = &off_2836C7D58;
  v90[0] = v40;
  type metadata accessor for RequestControllerBridge.SessionContext(0);
  v42 = swift_allocObject();
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v96, v32);
  v72 = &v68;
  MEMORY[0x28223BE20](v43, v43);
  v45 = (&v68 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v71 = &v68;
  MEMORY[0x28223BE20](v47, v47);
  v49 = (&v68 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v70 = &v68;
  MEMORY[0x28223BE20](v51, v51);
  v53 = v13;
  v54 = (&v68 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54);
  v56 = *v45;
  v57 = *v49;
  v58 = *v54;
  v88 = v32;
  v89 = &off_2836C76D8;
  *&v87 = v56;
  v85 = v69;
  v86 = &off_2836C61C0;
  *&v84 = v57;
  v83 = &off_2836C7D58;
  v59 = MEMORY[0x277D84F90];
  *(v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_deferredRequests) = MEMORY[0x277D84F90];
  v82 = v39;
  *&v81 = v58;
  v60 = v78;
  v61 = v79;
  (*(v79 + 56))(v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId, 1, 1, v78);
  v62 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
  *(v42 + v62) = sub_22362654C(v59);
  (*(v61 + 32))(v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId, v53, v60);
  (*(v75 + 32))(v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId, v80, v76);
  *(v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_isSystemAssistantExperienceEnabled) = v73 & 1;
  sub_2236241E8(&v87, v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ttManagerProxy);
  sub_2236241E8(&v84, v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager);
  v63 = v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_contextRetrievalHelper;
  *v63 = v74;
  *(v63 + 8) = v97;
  *(v63 + 24) = v38;
  *(v63 + 32) = &off_2836C58E0;
  v64 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
  v65 = *MEMORY[0x277D5D0D0];
  v66 = sub_22372A298();
  (*(*(v66 - 8) + 104))(v42 + v64, v65, v66);
  sub_2236241E8(&v81, v42 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  *(v77 + qword_28132AB08) = v42;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_223623274(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_223623560(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2236227C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_223623398(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236233E0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_223623428(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223623470()
{
  result = qword_28132AA90;
  if (!qword_28132AA90)
  {
    result = swift_getWitnessTable(aE_4, &type metadata for RequestControllerBridgeLog, v0, v1);
    atomic_store(result, &qword_28132AA90);
  }

  return result;
}

id sub_2236234C4()
{
  if (qword_28132AA98 != -1)
  {
    swift_once();
  }

  v1 = qword_28132B930;

  return v1;
}

unint64_t sub_223623560(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22362EA68(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_22372B4C8();
    a6 = v11;
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

uint64_t sub_22362366C(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_2236237F8(a1, v7, v6, a2);
}

uint64_t sub_223623750(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_223623998(a1, v2, a2);
}

uint64_t sub_2236237F8(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v7 = swift_task_alloc();
  v4[3] = v7;
  v8 = *a1;
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_2236264D8;

  return v11(v8, v7);
}

uint64_t sub_223623934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_223623998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v5 = swift_task_alloc();
  v3[3] = v5;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_223624D18;

  return sub_223623A70(a1, v5);
}

uint64_t sub_223623A70(uint64_t a1, uint64_t a2)
{
  v3[16] = v2;
  v3[17] = a2;
  v3[15] = a1;
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v3[18] = swift_task_alloc();
  v4 = sub_22372A548();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738);
  v3[22] = swift_task_alloc();
  v5 = sub_22372A3B8();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223623C00, v2, 0);
}

uint64_t sub_223623C00()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  sub_223728448();
  v4 = sub_22372A388();
  v5 = *(v3 + 8);
  v0[27] = v5;
  v0[28] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if (v4)
  {
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[15];
    v10 = v0[16];
    sub_223728448();
    (*(v7 + 56))(v8, 0, 1, v6);
    v11 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
    swift_beginAccess();
    sub_223623F04(v8, v10 + v11);
    swift_endAccess();
    v0[29] = *(v10 + 112);
    v12 = *(v10 + 120);
    v0[30] = v12;
    v0[31] = swift_getObjectType();
    v0[5] = sub_223728478();
    v0[6] = &protocol witness table for SessionStartedMessage;
    v0[2] = v9;
    v0[32] = *(v12 + 48);
    v0[33] = (v12 + 48) & 0xFFFFFFFFFFFFLL | 0xBE22000000000000;
    v13 = v9;
    v15 = sub_22372B168();
    v0[34] = v15;
    v0[35] = v14;

    return MEMORY[0x2822009F8](sub_223623F74, v15, v14);
  }

  else
  {
    if (qword_281328E50 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v17 = sub_22372AC98();
    __swift_project_value_buffer(v17, qword_28132B668);
    v18 = v16;
    v19 = sub_22372AC88();
    v20 = sub_22372B268();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[15];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_223620000, v19, v20, "SAE is not enabled. Ignoring %@. Not saving conversationSessionInfo.", v22, 0xCu);
      sub_223626478(v23, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v23, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_223623F04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_223623F74()
{
  v1 = *(v0 + 240);
  (*(v0 + 256))(v0 + 16, *(v0 + 248), v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v0 + 288) = *(v1 + 40);
  *(v0 + 296) = (v1 + 40) & 0xFFFFFFFFFFFFLL | 0xFF31000000000000;
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);

  return MEMORY[0x2822009F8](sub_223623FFC, v2, v3);
}

uint64_t sub_223623FFC()
{
  v1 = *(v0 + 128);
  (*(v0 + 288))(*(v0 + 248), *(v0 + 240));

  return MEMORY[0x2822009F8](sub_223624394, v1, 0);
}

uint64_t sub_223624074()
{
  (*(v0 + 304))(*(v0 + 168), *(v0 + 144), *(v0 + 248), *(v0 + 240));
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for IFSessionMetadata(uint64_t a1)
{
  result = qword_281329B70;
  if (!qword_281329B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2236241E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_223624220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2236242EC;

  return sub_2236251FC(a1, v4, v5, v6);
}

uint64_t sub_2236242F4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_223729DC8();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22362435C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223624394()
{
  v17 = v0;
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 8))(&v16, v1, v2);
  v3 = v16;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (v3 & 1) != 0 || (v4 = v0[27], v5 = v0[26], v6 = v0[23], sub_223728448(), v7 = sub_22372A378(), v4(v5, v6), (v7))
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[30];
    v11 = v0[27];
    v12 = v0[25];
    v13 = v0[23];
    sub_223728448();
    sub_22372A398();
    v11(v12, v13);
    v0[38] = *(v10 + 64);
    v0[39] = (v10 + 64) & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
    v14 = v0[34];
    v15 = v0[35];

    return MEMORY[0x2822009F8](sub_223624074, v14, v15);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_22362457C(char *a1, uint64_t a2)
{
  v6 = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 112))
  {
    v10 = sub_22372AC88();
    v11 = sub_22372B258();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_223623274(0xD000000000000022, 0x8000000223734C40, &v15);
      _os_log_impl(&dword_223620000, v10, v11, "%{public}s Intelligence Flow Session is already being set up, not interfering with it", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x223DE8A80](v13, -1, -1);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }
  }

  else
  {
    sub_223624734(a1, &v15);
    if (v3)
    {
      sub_22366E5FC(v9, a2);
    }

    else
    {
      *(v2 + 112) = v15;
    }
  }
}

uint64_t sub_223624734@<X0>(char *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v47 = a1;
  v7 = sub_22372AC98();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v53 = v10;
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v41 - v18;
  swift_beginAccess();
  sub_223634890(v5 + 120, &v48, &qword_27D08EC00, &unk_22372E0B8);
  if (v49)
  {
    sub_2236241E8(&v48, v50);
    v20 = type metadata accessor for IFSessionMetadata(0);
    v46 = v4;
    v21 = v20;
    v43 = swift_allocBox();
    v44 = v16;
    v23 = v22;
    v42 = v7;
    v24 = v51;
    v25 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    v26 = *(v25 + 8);
    v45 = a3;
    v26(v24, v25);
    v27 = *(v21 + 24);
    v28 = sub_22372A548();
    (*(*(v28 - 8) + 24))(v23 + v27, v47, v28);
    sub_22372B188();
    v29 = sub_22372B1A8();
    (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = *(v8 + 16);
    v47 = v19;
    v32 = v42;
    v31(v11, v5 + OBJC_IVAR____TtC24RequestDispatcherBridges33IntelligenceFlowSessionController_logger, v42);
    sub_223623934(v5 + 160, &v48);
    v33 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v34 = (v53 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v30;
    (*(v8 + 32))(v35 + v33, v11, v32);
    sub_2236241E8(&v48, v35 + v34);
    *(v35 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8)) = v43;
    v36 = v47;
    v37 = v44;
    sub_223634890(v47, v44, &qword_27D08F640, &unk_22372D770);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = &unk_22372E428;
    v38[5] = v35;

    v39 = sub_2236C76B8(0, 0, v37, &unk_22372E438, v38);
    sub_223626478(v36, &qword_27D08F640, &unk_22372D770);

    *v45 = v39;
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    sub_223626478(&v48, &qword_27D08EC00, &unk_22372E0B8);
    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    return swift_willThrowTypedImpl();
  }
}

uint64_t sub_223624BB0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_223624BE8()
{
  v1 = sub_22372AC98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_223624CD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_223624D18()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223675324, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

unint64_t sub_223624E58()
{
  result = qword_281328D38;
  if (!qword_281328D38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281328D38);
  }

  return result;
}

uint64_t sub_223624EA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_223624F98()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    sub_22366E5FC(*(v2 + 24), *(v2 + 16));
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2236250BC(int *a1)
{
  v1[3] = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v1[4] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[5] = v3;
  v6 = a1 + *a1;
  v4 = swift_task_alloc();
  v1[6] = v4;
  *v4 = v1;
  v4[1] = sub_223639880;

  return (v6)(v1 + 2, v3);
}

uint64_t sub_2236251FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_223628910;

  return sub_2236250BC(a4);
}

uint64_t sub_22362529C(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_22372AC98() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_223624EA4;

  return sub_2236253D4(a1, v9, v2 + v7, v2 + v8, v10, a2);
}

uint64_t sub_2236253D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a4;
  v6[32] = a6;
  v6[29] = a2;
  v6[30] = a3;
  v6[28] = a1;
  v7 = sub_223727408();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  type metadata accessor for IFSessionMetadata(0);
  v6[37] = swift_task_alloc();
  v6[38] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2236254F4, 0, 0);
}

uint64_t sub_2236254F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[39] = Strong;
  if (Strong)
  {
    v3 = v0[37];
    v2 = v0[38];
    v4 = v0[31];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_beginAccess();
    sub_22366FCFC(v2, v3, type metadata accessor for IFSessionMetadata);
    v14 = (*(v6 + 24) + **(v6 + 24));
    v7 = swift_task_alloc();
    v0[40] = v7;
    *v7 = v0;
    v7[1] = sub_2236400E8;
    v8 = v0[37];

    return v14(v8, v5, v6);
  }

  else
  {
    v10 = sub_22372AC88();
    v11 = sub_22372B278();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_223620000, v10, v11, "Controller went out of scope while opening session", v12, 2u);
      MEMORY[0x223DE8A80](v12, -1, -1);
    }

    type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2236257B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22363FFE8;

  return LocalIntelligenceFlowClientProvider.openSession(with:)(a1, a2);
}

uint64_t LocalIntelligenceFlowClientProvider.openSession(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v5 = sub_22372A548();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE40, &qword_22372EB28);
  v3[12] = swift_task_alloc();
  v6 = sub_223727408();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE58, &unk_22372EB50);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE48, &unk_22372EB30);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE50, &qword_22372EB60);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE60, &qword_22372EB68);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE68, &qword_22372EB70);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE70, &qword_22372EB78);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE78, &qword_22372EB80);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v7 = sub_223727DD8();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = *(a2 + 16);
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v9 = sub_223727E78();
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_223625C98, 0, 0);
}

uint64_t sub_223625C98(uint64_t a1)
{
  v18 = v1;
  *(v1 + 368) = *(*(v1 + 56) + 36);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, &v17);
    _os_log_impl(&dword_223620000, v2, v3, "%{public}s Creating SessionClient", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = *(v1 + 288);
  v7 = *(v1 + 296);
  v8 = *(v1 + 272);
  v9 = *(v1 + 280);
  v10 = *(v1 + 56);
  sub_223727A48();
  sub_223727E68();
  (*(v9 + 16))(v6, v7, v8);
  v11 = *(v10 + 24);
  *(v1 + 304) = v11;
  v16 = (*(v11 + 16) + **(v11 + 16));
  v12 = swift_task_alloc();
  *(v1 + 312) = v12;
  *v12 = v1;
  v12[1] = sub_223628A20;
  v13 = *(v1 + 288);
  v14 = *(v1 + 264);

  return v16(v14, v13);
}

uint64_t sub_223625ED0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_223624EA4;

  return LocalIFSessionClient.init(configuration:)(a1, a2);
}

unint64_t sub_223625FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F150, &qword_22372FB78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EAF0, &unk_22372D7C0);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v10, v6, &unk_27D08F150, &qword_22372FB78);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2236261A0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for RequestState(0);
      result = sub_2236378A8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for RequestState);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2236261A0(uint64_t a1, uint64_t a2)
{
  sub_22372B7A8();
  sub_22372B078();
  v4 = sub_22372B7C8();

  return sub_22362ED48(a1, a2, v4);
}

uint64_t sub_223626218(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return sub_2236262C8(a1, v6, a2);
}

uint64_t sub_2236262C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_223727E78();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362638C, 0, 0);
}

uint64_t sub_22362638C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_223727B18();
  (*(v2 + 16))(v1, v4, v3);
  **(v0 + 16) = sub_223727AE8();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_223626478(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_22362654C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB20, &qword_22372D7F0);
    v3 = sub_22372B598();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_223626650(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v236 = a7;
  v237 = a8;
  v235 = a6;
  v239 = a4;
  v234 = a3;
  v241 = a1;
  v242 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v231 = &v193 - v14;
  v230 = type metadata accessor for RootRequestController.RequestContext(0);
  MEMORY[0x28223BE20](v230, v15);
  v229 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_223727408();
  v17 = *(v288 - 8);
  v19 = MEMORY[0x28223BE20](v288, v18);
  v238 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v233 = (&v193 - v23);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v193 - v25;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v27 = sub_22372AC98();
  v28 = __swift_project_value_buffer(v27, qword_28132B680);
  v29 = sub_22372AC88();
  v30 = sub_22372B268();
  v31 = os_log_type_enabled(v29, v30);
  v240 = v26;
  v232 = v9;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v287[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_223623274(0xD00000000000005DLL, 0x8000000223736780, v287);
    _os_log_impl(&dword_223620000, v29, v30, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x223DE8A80](v33, -1, -1);
    MEMORY[0x223DE8A80](v32, -1, -1);
  }

  v34 = *(v10 + qword_28132AB08);
  if (!v34)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    (*(v17 + 16))(v44, a5, v288);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v28;
  }

  v35 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;

  if ((sub_2237273D8() & 1) == 0)
  {
    v242 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    v28 = v34;
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v48 = *(v17 + 16);
    v49 = v34 + v35;
    v50 = a5;
    v51 = v288;
    v48(v46, v49, v288);
    v48(v46 + v47, v50, v51);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_29:

    return v28;
  }

  v225 = v35;
  v226 = a5;

  v36 = sub_22372AC88();
  v37 = sub_22372B268();

  v38 = os_log_type_enabled(v36, v37);
  v227 = v17;
  v228 = v34;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v287[0] = v40;
    *v39 = 136315138;
    v41 = __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(v34 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
    if (*(*v41 + 24))
    {
      if (*(*v41 + 24) == 1)
      {
        v42 = 0x6D6F72506C6C6977;
        v43 = 0xEA00000000007470;
      }

      else
      {
        v42 = 0xD000000000000016;
        v43 = 0x8000000223734320;
      }
    }

    else
    {
      v42 = 0x706D6F7250746F6ELL;
      v43 = 0xEC000000676E6974;
    }

    v52 = sub_223623274(v42, v43, v287);

    *(v39 + 4) = v52;
    _os_log_impl(&dword_223620000, v36, v37, "PromptState during RequestProcessor creation: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x223DE8A80](v40, -1, -1);
    MEMORY[0x223DE8A80](v39, -1, -1);

    v17 = v227;
    v34 = v228;
  }

  else
  {
  }

  sub_22372A978();
  __swift_project_boxed_opaque_existential_1(v286, v286[3]);
  v53 = v226;
  sub_22372A4E8();
  if (!v285)
  {
    sub_223626478(&v284, &qword_27D08F650, qword_2237317C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v286);

    v162 = sub_22372AC88();
    v163 = sub_22372B278();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v287[0] = v242;
      *v164 = 136315138;
      v165 = *(v17 + 16);
      LODWORD(v241) = v163;
      v166 = v233;
      v167 = v288;
      v165(v233, v34 + v225, v288);
      sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_22372B6B8();
      v169 = v168;
      (*(v17 + 8))(v166, v167);
      v170 = sub_223623274(v28, v169, v287);

      *(v164 + 4) = v170;
      _os_log_impl(&dword_223620000, v162, v241, "ConversationSessionState not found for sessionId: %s", v164, 0xCu);
      v171 = v242;
      __swift_destroy_boxed_opaque_existential_1Tm(v242);
      MEMORY[0x223DE8A80](v171, -1, -1);
      MEMORY[0x223DE8A80](v164, -1, -1);
    }

    else
    {

      v167 = v288;
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    (*(v17 + 16))(v191, v53, v167);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_29;
  }

  sub_2236241E8(&v284, v287);
  __swift_destroy_boxed_opaque_existential_1Tm(v286);
  v221 = *(v17 + 16);
  v222 = v17 + 16;
  v221(v240, v53, v288);
  v208 = "peech:isCandidateRequest:)";
  sub_22372A958();
  v226 = sub_22372A948();
  sub_223623934(v34 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ttManagerProxy, &v284);
  v54 = *(v10 + qword_28132AC90 + 8);
  v199 = *(v10 + qword_28132AC90);
  v218 = (v10 + qword_28132AC90);
  LODWORD(v211) = v235 ^ 1;
  __swift_project_boxed_opaque_existential_1((v10 + qword_28132AB18), *(v10 + qword_28132AB18 + 24));
  v207 = v54;

  LODWORD(v198) = sub_22372A7F8();
  v224 = *(v10 + qword_28132ACA0);
  sub_223623934(v10 + qword_28132AAF8, v283);
  sub_223623934(v287, v282);
  sub_223623934(v287, &v279);

  v55 = AFIsInternalInstall();
  v56 = type metadata accessor for RequestSummaryUpdater();
  v57 = swift_allocObject();
  sub_2236241E8(&v279, v57 + 16);
  *(v57 + 56) = v55;
  if (qword_28132A8E8 != -1)
  {
    swift_once();
  }

  v196 = *(v10 + qword_28132AAF0);
  v223 = *(v34 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_isSystemAssistantExperienceEnabled);
  LODWORD(v197) = *(v10 + qword_28132AAE8);
  v225 = qword_28132B928;
  v212 = *(v10 + qword_28132AAE0);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(&v284, v285);
  v217 = &v193;
  MEMORY[0x28223BE20](v58, v58);
  v60 = (&v193 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v283, v283[3]);
  v216 = &v193;
  MEMORY[0x28223BE20](v62, v62);
  v64 = (&v193 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v65 + 16))(v64);
  v66 = *v60;
  v67 = *v64;
  v68 = type metadata accessor for TTManagerProxy();
  v281 = &off_2836C76D8;
  v280 = v68;
  *&v279 = v66;
  v219 = type metadata accessor for SiriActivationHelper();
  v278 = &off_2836C75B0;
  v277 = v219;
  v276[0] = v67;
  v275 = &off_2836C6F00;
  v274 = v56;
  v273[0] = v57;
  type metadata accessor for RequestControllerBridgeRequestProcessor(0);
  v69 = swift_allocObject();
  v70 = __swift_mutable_project_boxed_opaque_existential_1(&v279, v68);
  v215 = &v193;
  v205 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v70, v70);
  v206 = ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = (&v193 - v206);
  v74 = *(v73 + 16);
  v203 = v73 + 16;
  v204 = v74;
  v220 = v68;
  (v74)(&v193 - v206);
  v75 = __swift_mutable_project_boxed_opaque_existential_1(v276, v277);
  v214 = &v193;
  MEMORY[0x28223BE20](v75, v75);
  (*(v77 + 16))(&v193 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v273, v274);
  v213 = &v193;
  MEMORY[0x28223BE20](v78, v78);
  v80 = (&v193 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = *v72;
  v83 = *v80;
  v84 = v196;
  v195 = v196;

  v272[4] = &off_2836C76D8;
  v272[3] = v68;
  v272[0] = v82;
  v271[4] = &off_2836C6F00;
  v271[3] = v56;
  v271[0] = v83;
  *(v69 + qword_28132A1C8) = 0;
  v85 = qword_28132A1E0;
  *(v69 + qword_28132A1E0) = 0;
  v86 = qword_28132B8A8;
  v87 = sub_22372A548();
  (*(*(v87 - 8) + 56))(v69 + v86, 1, 1, v87);
  v88 = qword_28132B848;
  v89 = MEMORY[0x277D84F90];
  *(v69 + v88) = sub_2236285A4(MEMORY[0x277D84F90]);
  *(v69 + qword_28132B8A0) = 0;
  v90 = qword_28132B858;
  v91 = sub_223729EE8();
  v92 = *(v91 - 8);
  v93 = *(v92 + 56);
  v193 = v91;
  v209 = v92 + 56;
  v210 = v93;
  (v93)(v69 + v90, 1, 1);
  *(v69 + qword_28132B878) = 0;
  *(v69 + qword_28132B860) = 0;
  *(v69 + qword_28132B8B0) = 2;
  v94 = qword_28132B888;
  v201 = sub_223729F08();
  v95 = *(v201 - 8);
  v200 = *(v95 + 56);
  v202 = v95 + 56;
  v200(v69 + v94, 1, 1, v201);
  v96 = qword_28132B898;
  v97 = sub_22372A218();
  (*(*(v97 - 8) + 56))(v69 + v96, 1, 1, v97);
  *(v69 + qword_28132B880) = MEMORY[0x277D84F98];
  *(v69 + qword_28132B870) = v89;
  *(v69 + qword_28132B8C0) = 0;
  *(v69 + qword_28132B8B8) = 0;
  *(v69 + qword_28132B828) = 0;
  v98 = qword_28132B830;
  *(v69 + v98) = sub_22362A37C(v89);
  v99 = qword_28132B850;
  *(v69 + v99) = sub_22362A568(v89);
  v100 = qword_28132B838;
  *(v69 + v100) = sub_22362A754(v89);
  v101 = (v69 + qword_28132B868);
  *v101 = 0;
  v101[1] = 0;
  v102 = qword_28132B840;
  *(v69 + v102) = sub_2236287D8(v89);
  *(v69 + qword_28132B890) = 2;
  v103 = (v69 + qword_28132A200);
  v104 = v207;
  *v103 = v199;
  v103[1] = v104;
  *(v69 + qword_28132A1B0) = v197;
  *(v69 + qword_28132A1F8) = v198 & 1;
  *(v69 + qword_28132A190) = v223;
  sub_223623934(v271, v69 + qword_28132A1C0);
  *(v69 + qword_28132A1D8) = v225;
  *(v69 + qword_28132A1E8) = v228;
  sub_223623934(v282, v69 + qword_28132A1A0);
  LODWORD(v207) = v211 & 1;
  *(v69 + qword_28132A188) = v211 & 1;
  v105 = *(v69 + v85);
  *(v69 + v85) = v84;

  v211 = v195;

  type metadata accessor for MUXRequestContext();
  swift_allocObject();
  *(v69 + qword_28132A208) = sub_22362A78C(v241, v242);
  v106 = type metadata accessor for MUXUserSelector();
  v107 = swift_allocObject();
  type metadata accessor for MUXNLParseUtils();
  *(v107 + 16) = swift_allocObject();
  v108 = (v69 + qword_28132A1F0);
  v108[3] = v106;
  v108[4] = &off_2836C5AC8;
  *v108 = v107;
  v109 = v240;
  v110 = v288;
  v111 = v221;
  v221(v233, v240, v288);
  sub_223623934(v286, v270);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();

  v112 = sub_22372A718();
  v111(v238, v109, v110);
  sub_223623934(v286, v270);
  sub_223623934(v272, v269);
  v113 = *(v112 + qword_28132A200 + 8);
  v197 = *(v112 + qword_28132A200);
  v195 = v113;
  v114 = v228;
  sub_223623934(v228 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager, v268);
  sub_223623934(v114 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, v267);
  sub_22362A7DC(v114 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_contextRetrievalHelper, v265);
  v115 = v219;
  v116 = swift_allocObject();
  sub_223727C78();
  swift_allocObject();

  swift_unknownObjectRetain();
  v194 = v112;

  v208 = sub_223727C68();
  v117 = __swift_mutable_project_boxed_opaque_existential_1(v269, v269[3]);
  v233 = &v193;
  MEMORY[0x28223BE20](v117, v117);
  v119 = (&v193 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  v121 = __swift_mutable_project_boxed_opaque_existential_1(v268, v268[3]);
  v199 = &v193;
  MEMORY[0x28223BE20](v121, v121);
  v123 = (&v193 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v124 + 16))(v123);
  v125 = __swift_mutable_project_boxed_opaque_existential_1(v267, v267[3]);
  v198 = &v193;
  MEMORY[0x28223BE20](v125, v125);
  v127 = (&v193 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v128 + 16))(v127);
  v129 = *v119;
  v130 = *v123;
  v131 = *v127;
  v264[4] = &off_2836C76D8;
  v132 = v220;
  v264[3] = v220;
  v264[0] = v129;
  v133 = type metadata accessor for PromptStateManager();
  v263 = &off_2836C61C0;
  v262 = v133;
  v261[0] = v130;
  v134 = type metadata accessor for RequestStateInfo();
  v260 = &off_2836C7D58;
  v259 = v134;
  v258[0] = v131;
  v257 = &off_2836C75B0;
  v256 = v115;
  v255[0] = v116;
  type metadata accessor for RootRequestController(0);
  v135 = swift_allocObject();
  v136 = __swift_mutable_project_boxed_opaque_existential_1(v264, v132);
  v196 = &v193;
  MEMORY[0x28223BE20](v136, v136);
  v137 = (&v193 - v206);
  (v204)(&v193 - v206);
  v138 = __swift_mutable_project_boxed_opaque_existential_1(v261, v262);
  v206 = &v193;
  MEMORY[0x28223BE20](v138, v138);
  v140 = (&v193 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v141 + 16))(v140);
  v142 = __swift_mutable_project_boxed_opaque_existential_1(v258, v259);
  v205 = &v193;
  MEMORY[0x28223BE20](v142, v142);
  v144 = (&v193 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v145 + 16))(v144);
  v146 = __swift_mutable_project_boxed_opaque_existential_1(v255, v256);
  v204 = &v193;
  MEMORY[0x28223BE20](v146, v146);
  v148 = (&v193 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v149 + 16))(v148);
  v150 = *v137;
  v151 = *v140;
  v152 = *v144;
  v153 = *v148;
  v254 = &off_2836C76D8;
  v253 = v220;
  *&v252 = v150;
  v250 = v133;
  v251 = &off_2836C61C0;
  v249[0] = v151;
  v247 = v134;
  v248 = &off_2836C7D58;
  *&v246 = v152;
  v244 = v219;
  v245 = &off_2836C75B0;
  *&v243 = v153;
  swift_defaultActor_initialize();
  v200(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType, 1, 1, v201);
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_pendingSpeechRecognizedCommand) = 0;
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) = 0;
  v154 = v238;
  v155 = v239;
  v135[16] = v234;
  v135[17] = v155;
  v156 = v242;
  v135[14] = v241;
  v135[15] = v156;
  v221(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_sessionId, v154, v288);
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_serviceHelper) = v226;
  sub_223623934(v270, v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_messagePublisher);
  v157 = (v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_prevRequestId);
  v158 = v195;
  *v157 = v197;
  v157[1] = v158;
  sub_223623934(v249, v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager);
  v159 = __swift_project_boxed_opaque_existential_1(v249, v250);
  if (*(*v159 + 24) && *(*v159 + 24) == 1)
  {
    v160 = 1;
    v161 = v193;
  }

  else
  {
    v161 = v193;
    v160 = sub_22372B6E8();
  }

  swift_unknownObjectRetain();

  v172 = v230;
  v173 = *(v230 + 60);
  v174 = sub_22372A1D8();
  v175 = v229;
  (*(*(v174 - 8) + 56))(&v229[v173], 1, 1, v174);
  v210(v175 + v172[17], 1, 1, v161);
  v176 = MEMORY[0x277D84F90];
  v177 = sub_22362A858(MEMORY[0x277D84F90]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v270);
  v178 = *(v227 + 8);
  v227 += 8;
  v178(v238, v288);
  *v175 = v235 & 1;
  *(v175 + 1) = 0;
  *(v175 + 2) = v160 & 1;
  *(v175 + 3) = 0;
  *(v175 + 4) = v207;
  *(v175 + 5) = 0;
  *(v175 + 8) = v177;
  *(v175 + 16) = v176;
  *(v175 + 56) = 0u;
  *(v175 + 24) = 0u;
  *(v175 + 40) = 0u;
  v179 = v175 + v172[16];
  *v179 = 0;
  *(v179 + 8) = 1;
  *(v175 + v172[18]) = 0;
  *(v175 + v172[19]) = 0;
  sub_22362AA40(v175, v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context);
  sub_2236241E8(&v252, v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_ttManagerProxy);
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestControllerMitigationHandler) = v224;
  sub_2236241E8(&v243, v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_activationHelper);
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_instrumentationUtil) = v225;
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isSystemAssistantExperienceEnabled) = v223;
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_isPatientSiriSupported) = v212;
  v180 = v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_contextRetrievalHelper;
  v181 = v265[1];
  *v180 = v265[0];
  *(v180 + 1) = v181;
  *(v180 + 4) = v266;
  sub_2236241E8(&v246, v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestStateManager);
  *(v135 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_queryDecorationClient) = v208;
  __swift_destroy_boxed_opaque_existential_1Tm(v249);
  __swift_destroy_boxed_opaque_existential_1Tm(v255);
  __swift_destroy_boxed_opaque_existential_1Tm(v258);
  __swift_destroy_boxed_opaque_existential_1Tm(v261);
  __swift_destroy_boxed_opaque_existential_1Tm(v264);
  __swift_destroy_boxed_opaque_existential_1Tm(v267);
  __swift_destroy_boxed_opaque_existential_1Tm(v268);
  __swift_destroy_boxed_opaque_existential_1Tm(v269);
  sub_22372A8E8();
  v270[0] = 0;
  v270[1] = 0xE000000000000000;

  sub_22372B458();
  MEMORY[0x223DE7AD0](0xD00000000000004ALL, 0x8000000223736730);
  v182 = v236;
  v183 = v237;
  MEMORY[0x223DE7AD0](v236, v237);
  v184 = v231;
  sub_22372B188();
  v185 = sub_22372B1A8();
  (*(*(v185 - 8) + 56))(v184, 0, 1, v185);
  v186 = sub_22372A8B8();
  v187 = qword_28132B848;
  v28 = v194;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v269[0] = *(v28 + v187);
  *(v28 + v187) = 0x8000000000000000;
  sub_22362AAA4(v135, &off_2836C7138, v186, v182, v183, isUniquelyReferenced_nonNull_native);

  *(v28 + v187) = v269[0];
  swift_endAccess();
  sub_22362AC54();
  sub_22362F0D4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v282);
  __swift_destroy_boxed_opaque_existential_1Tm(v286);
  v178(v240, v288);
  __swift_destroy_boxed_opaque_existential_1Tm(v287);
  __swift_destroy_boxed_opaque_existential_1Tm(v271);
  __swift_destroy_boxed_opaque_existential_1Tm(v272);
  __swift_destroy_boxed_opaque_existential_1Tm(v273);
  __swift_destroy_boxed_opaque_existential_1Tm(v276);
  __swift_destroy_boxed_opaque_existential_1Tm(&v279);
  __swift_destroy_boxed_opaque_existential_1Tm(v283);
  __swift_destroy_boxed_opaque_existential_1Tm(&v284);
  v189 = v218;
  v190 = v242;
  *v218 = v241;
  v189[1] = v190;

  return v28;
}

unint64_t sub_2236285A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F190, &qword_22372FBA0);
    v3 = sub_22372B598();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v15 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();

      result = sub_2236261A0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 24 * result;
      *v11 = v15;
      *(v11 + 16) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2236286DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22372B598();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2236261A0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2236287D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F120, &unk_22372FB50);
    v3 = sub_22372B598();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2236261A0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_223628910(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_223628A20()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_2236764C8;
  }

  else
  {
    v2 = sub_223628B34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_223628B34()
{
  v47 = v0;
  v1 = v0[25];
  sub_223727DC8();
  sub_22367692C();
  sub_223676978(v1);
  v2 = sub_223727D58();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[26];
  if (v4 == 1)
  {
    sub_223626478(v0[25], &qword_27D08EE78, &qword_22372EB80);
    (*(v3 + 104))(v5, *MEMORY[0x277D1CE88], v2);
  }

  else
  {
    (*(v3 + 32))(v0[26], v0[25], v2);
  }

  v6 = v0[26];
  v7 = v0[6];
  (*(v3 + 56))(v6, 0, 1, v2);
  MEMORY[0x223DE47B0](v6);
  v8 = type metadata accessor for IFSessionMetadata(0);
  v0[41] = v8;
  v9 = (v7 + *(v8 + 28));
  if ((v9[4] & 1) == 0)
  {
    v11 = v0[23];
    v10 = v0[24];
    v13 = v9[2];
    v12 = v9[3];
    v15 = *v9;
    v14 = v9[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EE80, &qword_22372EB88);
    sub_223727B38();
    *(swift_allocObject() + 16) = xmmword_22372E090;
    MEMORY[0x223DE44B0](v15, v14, v13, v12);
    v16 = sub_223727A58();
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
    v17 = sub_223727CD8();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    sub_223727B28();
  }

  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[19];
  v21 = v0[20];
  v22 = v0[7];
  v23 = v0[6];
  sub_223727CF8();
  v24 = sub_223727D08();
  (*(*(v24 - 8) + 56))(v18, 0, 1, v24);
  sub_223727D78();
  sub_2236291DC(*(v23 + *(v8 + 20)), *(v23 + *(v8 + 20) + 8), v22, &protocol witness table for LocalIntelligenceFlowClientProvider<A>, v19);
  v25 = sub_223727B98();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_223727DA8();
  sub_223629A60();
  v26 = sub_223727B68();
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  sub_223727D88();
  v27 = sub_2237273B8();
  v29 = v28;
  v0[42] = v28;

  sub_223727E58();
  v30 = sub_223727E48();
  (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
  sub_223727DB8();
  v31 = sub_22372AC88();
  v32 = sub_22372B268();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, &v46);
    _os_log_impl(&dword_223620000, v31, v32, "%{public}s Sending startSession to SessionClient", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x223DE8A80](v34, -1, -1);
    MEMORY[0x223DE8A80](v33, -1, -1);
  }

  v35 = v0[38];
  v36 = v0[28];
  v37 = v0[27];
  v38 = v0[12];
  (*(v36 + 16))(v38, v0[29], v37);
  (*(v36 + 56))(v38, 0, 1, v37);
  v39 = *(v35 + 8);
  v0[43] = v39;
  v45 = (*(v39 + 24) + **(v39 + 24));
  v40 = swift_task_alloc();
  v0[44] = v40;
  *v40 = v0;
  v40[1] = sub_22362DF7C;
  v41 = v0[30];
  v42 = v0[17];
  v43 = v0[12];

  return v45(v42, v27, v29, v43, v41, v39);
}

uint64_t sub_2236291DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a1;
  v92 = a2;
  v99 = a5;
  v105 = sub_223727448();
  v7 = *(v105 - 8);
  v9 = MEMORY[0x28223BE20](v105, v8);
  v98 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9, v11);
  v97 = &v88[-v13];
  v15 = MEMORY[0x28223BE20](v12, v14);
  v96 = &v88[-v16];
  v18 = MEMORY[0x28223BE20](v15, v17);
  v101 = &v88[-v19];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v94 = &v88[-v22];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v93 = &v88[-v25];
  v27 = MEMORY[0x28223BE20](v24, v26);
  v104 = &v88[-v28];
  MEMORY[0x28223BE20](v27, v29);
  v103 = &v88[-v30];
  v31 = sub_22372AC98();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v88[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v88[-v39];
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v88[-v42];
  v44 = _AFPreferencesOutputVoice();
  v95 = v31;
  v100 = v32;
  v102 = v36;
  if (v44)
  {
    v45 = v44;
    v46 = [v44 languageCode];
    if (v46)
    {
      v47 = v46;
      sub_22372AFE8();

      v48 = a4;
    }

    else
    {
      (*(a4 + 16))(a3, a4);
      v53 = sub_22372AC88();
      v54 = sub_22372B268();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v7;
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_223620000, v53, v54, "AFVoiceInfo does not contain a valid language code, responseLocale will default to the Siri locale.", v56, 2u);
        v57 = v56;
        v7 = v55;
        v32 = v100;
        MEMORY[0x223DE8A80](v57, -1, -1);
      }

      (*(v32 + 8))(v43, v31);

      v48 = a4;
    }
  }

  else
  {
    (*(a4 + 16))(a3, a4);
    v49 = sub_22372AC88();
    v50 = sub_22372B268();
    v48 = a4;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_223620000, v49, v50, "AFVoiceInfo is nil, responseLocale will default to the Siri locale.", v51, 2u);
      v52 = v51;
      v48 = a4;
      MEMORY[0x223DE8A80](v52, -1, -1);
    }

    (*(v32 + 8))(v40, v31);
  }

  v58 = v103;
  sub_223727418();
  v59 = v104;
  sub_223727418();
  (*(v48 + 16))(a3, v48);
  v60 = *(v7 + 16);
  v61 = v93;
  v62 = v105;
  v60(v93, v58, v105);
  v63 = v94;
  v60(v94, v58, v62);
  v64 = v101;
  v60(v101, v59, v62);
  v65 = sub_22372AC88();
  v66 = sub_22372B268();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v106 = v91;
    *v67 = 136315650;
    sub_223629A08();
    v90 = v65;
    v68 = sub_22372B6B8();
    v69 = v7;
    v71 = v70;
    v89 = v66;
    v72 = *(v69 + 8);
    v92 = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v61, v105);
    v73 = sub_223623274(v68, v71, &v106);

    *(v67 + 4) = v73;
    *(v67 + 12) = 2080;
    v74 = sub_22372B6B8();
    v76 = v75;
    v72(v63, v105);
    v77 = sub_223623274(v74, v76, &v106);

    *(v67 + 14) = v77;
    *(v67 + 22) = 2080;
    v78 = v101;
    v79 = sub_22372B6B8();
    v81 = v80;
    v72(v78, v105);
    v62 = v105;
    v82 = sub_223623274(v79, v81, &v106);

    *(v67 + 24) = v82;
    v83 = v90;
    _os_log_impl(&dword_223620000, v90, v89, "LocaleSettings: deviceLocale = %s, userLocale = %s, responseLocale = %s", v67, 0x20u);
    v84 = v91;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v84, -1, -1);
    MEMORY[0x223DE8A80](v67, -1, -1);
  }

  else
  {

    v72 = *(v7 + 8);
    v92 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v64, v62);
    v72(v63, v62);
    v72(v61, v62);
  }

  (*(v100 + 8))(v102, v95);
  v85 = v103;
  v60(v96, v103, v62);
  v60(v97, v85, v62);
  v86 = v104;
  v60(v98, v104, v62);
  sub_223727B78();
  v72(v86, v62);
  return (v72)(v85, v62);
}

unint64_t sub_223629A08()
{
  result = qword_28132B5E8;
  if (!qword_28132B5E8)
  {
    v3 = sub_223727448();
    result = swift_getWitnessTable(MEMORY[0x277CC97B0], v3, v0, v1);
    atomic_store(result, &qword_28132B5E8);
  }

  return result;
}

uint64_t sub_223629A60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED28, &qword_22372E558);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v7 - v2;
  v4 = _AFPreferencesOutputVoice();
  sub_223727108();
  v5 = sub_223727118();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_223629B64(v4, v3);

  return sub_223626478(v3, &qword_27D08ED28, &qword_22372E558);
}

uint64_t sub_223629B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_223727B58();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](a1, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v27 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v27 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v27 - v20;
  if (v19)
  {
    v22 = [v19 gender];
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v23 = MEMORY[0x277D1C608];
        goto LABEL_11;
      }

      if (v22 == 3)
      {
        v23 = MEMORY[0x277D1C610];
        goto LABEL_11;
      }
    }

    else if (v22 == 1)
    {
      v23 = MEMORY[0x277D1C600];
LABEL_11:
      (*(v5 + 104))(v21, *v23, v4);
      goto LABEL_12;
    }

    v23 = MEMORY[0x277D1C5F8];
    goto LABEL_11;
  }

  (*(v5 + 104))(v21, *MEMORY[0x277D1C5F8], v4);
LABEL_12:
  sub_223629DA4(a2, v17);
  v24 = *(v5 + 16);
  v24(v13, v21, v4);
  v24(v9, v17, v4);
  sub_223727B48();
  v25 = *(v5 + 8);
  v25(v17, v4);
  return (v25)(v21, v4);
}

uint64_t sub_223629DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED28, &qword_22372E558);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED30, &qword_22372E560);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v34 - v10;
  v12 = sub_2237270E8();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v34 - v19;
  sub_22362E738(a1, v7);
  v21 = sub_223727118();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    sub_223626478(v7, &qword_27D08ED28, &qword_22372E558);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_223626478(v11, &qword_27D08ED30, &qword_22372E560);
    v23 = MEMORY[0x277D1C5F8];
LABEL_5:
    v24 = *v23;
    v25 = sub_223727B58();
    v26 = *(*(v25 - 8) + 104);
    v27 = a2;
    v28 = v24;
    return v26(v27, v28, v25);
  }

  sub_2237270F8();
  (*(v22 + 8))(v7, v21);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v30 = *(v13 + 32);
  v30(v20, v11, v12);
  v30(v17, v20, v12);
  v31 = (*(v13 + 88))(v17, v12);
  if (v31 == *MEMORY[0x277CC8638])
  {
    v23 = MEMORY[0x277D1C608];
    goto LABEL_5;
  }

  if (v31 == *MEMORY[0x277CC8640])
  {
    v23 = MEMORY[0x277D1C600];
    goto LABEL_5;
  }

  v32 = *MEMORY[0x277CC8630];
  v33 = v31;
  v25 = sub_223727B58();
  v26 = *(*(v25 - 8) + 104);
  if (v33 == v32)
  {
    v28 = *MEMORY[0x277D1C610];
    v27 = a2;
    return v26(v27, v28, v25);
  }

  v26(a2, *MEMORY[0x277D1C5F8], v25);
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_22362A188(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2236242EC;

  return sub_22362A250(a1, v6, v7, v9, v8, a2);
}

uint64_t sub_22362A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22362A278, 0, 0);
}

uint64_t sub_22362A278()
{
  sub_223727AD8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for RequestControllerBridgeRequestProcessor(uint64_t a1)
{
  result = qword_28132A178;
  if (!qword_28132A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22362A37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1A8, &qword_22372FBB8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA80, qword_22372D730);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v10, v6, &qword_27D08F1A8, &qword_22372FBB8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2236261A0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_2237287C8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22362A568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F1A0, &qword_22372FBB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F130, &unk_22372D750);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v10, v6, &qword_27D08F1A0, &qword_22372FBB0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2236261A0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_223729D78();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22362A78C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v3 = MEMORY[0x277D84F98];
  *(v2 + 48) = MEMORY[0x277D84F98];
  *(v2 + 56) = v3;
  *(v2 + 64) = v3;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_22362A858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F198, &qword_22372FBA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA70, &unk_22372D720);
    v8 = sub_22372B598();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_223634890(v10, v6, &qword_27D08F198, &qword_22372FBA8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2236261A0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for RootRequestController.TRPCache(0);
      result = sub_2236378A8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for RootRequestController.TRPCache);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22362AA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootRequestController.RequestContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22362AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2236261A0(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_22362EE00(v20, a6 & 1);
      v15 = sub_2236261A0(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_22372B708();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_22365F2C4();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 24 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;

    return swift_unknownObjectRelease();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a4;
  v28[1] = a5;
  v29 = (v25[7] + 24 * v15);
  *v29 = a1;
  v29[1] = a2;
  v29[2] = a3;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

uint64_t sub_22362AC54()
{
  v1 = v0;
  v2 = *(v0 + qword_28132A1E8);
  v3 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_deferredRequests;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); result >= 1; result = sub_22372B558())
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v6 = sub_22372AC98();
    __swift_project_value_buffer(v6, qword_28132B680);

    v7 = sub_22372AC88();
    v8 = sub_22372B268();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      v10 = *(v2 + v3);
      if (v10 >> 62)
      {
        v11 = sub_22372B558();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v9 + 4) = v11;

      _os_log_impl(&dword_223620000, v7, v8, "Recovering %ld deferred requests from prior conjunctions, for execution in this turn", v9, 0xCu);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    else
    {
    }

    v12 = *(v2 + v3);
    v17 = v3;
    v18 = v2;
    if (v12 >> 62)
    {
      v13 = sub_22372B558();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = qword_28132B870;

    if (!v13)
    {
LABEL_24:

      *(v18 + v17) = MEMORY[0x277D84F90];
    }

    v2 = 0;
    while ((v12 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x223DE7ED0](v2, v12);
      v15 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_26;
      }

LABEL_17:
      swift_beginAccess();

      MEMORY[0x223DE7B50](v16);
      if (*((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v14) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22372B148();
      }

      sub_22372B158();
      swift_endAccess();
      sub_2236402A0(*(v3 + 16), *(v3 + 24));

      ++v2;
      if (v15 == v13)
      {
        goto LABEL_24;
      }
    }

    if (v2 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v3 = *(v12 + 8 * v2 + 32);

    v15 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_17;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  return result;
}

void sub_22362AFF8(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - v12;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_28132B680);
  v15 = sub_22372AC88();
  v16 = sub_22372B268();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = a1;
    v41[0] = v18;
    v19 = v6;
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223736AF0, v41);
    _os_log_impl(&dword_223620000, v15, v16, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v21 = v20;
    v6 = v19;
    v3 = v2;
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  sub_223729D58();
  v22 = sub_223729D98();
  sub_22362B4E0(v13, v22, v23, 8);
  if (v3)
  {
    (*(v7 + 8))(v13, v6);

    return;
  }

  v39 = *(v7 + 8);
  v40 = v7 + 8;
  v39(v13, v6);

  v24 = sub_22372A658();
  v25 = v6;
  v27 = v26;

  *v27 = MEMORY[0x277D84F98];
  v24(v41, 0);
  v28 = v42;
  sub_223729D58();
  v29 = qword_28132AB08;
  v30 = *(v4 + qword_28132AB08);
  if (v30)
  {
    v31 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;

    if (sub_2237273D8())
    {
      v39(v28, v25);

      *(v4 + v29) = 0;

      v32 = *(v4 + qword_28132AAF0);
      *(v4 + qword_28132AAF0) = 0;

      return;
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v37 = *(v7 + 16);
    v37(v35, v30 + v31, v25);
    v38 = v35 + v36;
    v28 = v42;
    v37(v38, v42, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    (*(v7 + 16))(v33, v28, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v39(v28, v25);
}

void sub_22362B4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_22372A668();
  v5 = 0;
  v7 = v4 + 64;
  v6 = *(v4 + 64);
  v30[6] = v4;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v28 = v11;
  v29 = v4 + 64;
  while (v10)
  {
    v12 = v5;
LABEL_11:

    v13 = sub_22372A768();
    MEMORY[0x28223BE20](v13, v14);
    v15 = objc_allocWithZone(sub_223728188());
    v16 = sub_223728118();

    if (!v16)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v26 = 0xD000000000000014;
      v26[1] = 0x8000000223736AD0;
LABEL_20:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return;
    }

    sub_22372A958();
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v17 = sub_223729D88();
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    if ((v17 & 1) == 0)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
      swift_allocError();
      *v27 = v16;
      goto LABEL_20;
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v10 &= v10 - 1;
    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);

    v19 = sub_22372AC88();
    v20 = sub_22372B268();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315138;
      v23 = sub_22372A768();
      v25 = sub_223623274(v23, v24, v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_223620000, v19, v20, "Posted CancelRequestMessage for requestId: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    else
    {
    }

    v5 = v12;
    v11 = v28;
    v7 = v29;
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22362B914()
{
  sub_22362B96C();

  return swift_deallocClassInstance();
}

uint64_t sub_22362B96C()
{
  v1 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;
  v2 = sub_223727408();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId;
  v4 = sub_22372A548();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
  v6 = sub_22372A298();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ttManagerProxy));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager));
  sub_22362CB14(v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_contextRetrievalHelper);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager));

  sub_223626478(v0 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId, &unk_27D08E530, &unk_22372CB10);

  return v0;
}

uint64_t sub_22362BACC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22362BB04(uint64_t *a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_2236237F8(a1, v7, v6, a2);
}

uint64_t sub_22362BBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v3[3] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_223624D18;

  return sub_22362BD30();
}

uint64_t sub_22362BC88(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2236242EC;

  return sub_22362BBC8(a1, v2, a2);
}

uint64_t sub_22362BD30()
{
  *(v1 + 88) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EDA8, &qword_22372E738);
  *(v1 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362BDCC, v0, 0);
}

uint64_t sub_22362BDCC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_externalAgentEventPublishers;
  swift_beginAccess();
  v3 = MEMORY[0x277D84F90];
  *(v1 + v2) = MEMORY[0x277D84F90];

  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
  swift_beginAccess();
  *(v1 + v4) = v3;

  v0[13] = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[14] = v5;
  ObjectType = swift_getObjectType();
  v0[15] = ObjectType;
  v9 = (*(v5 + 72) + **(v5 + 72));
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_22362CD14;

  return v9(ObjectType, v5);
}

uint64_t sub_22362BF58()
{
  v1[17] = v0;
  v2 = sub_223727408();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EC08, &qword_22372E0D0);
  v1[22] = swift_task_alloc();
  v1[23] = type metadata accessor for IntelligenceFlowSessionBridge.Error(0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362C0B4, v0, 0);
}

uint64_t sub_22362C0B4()
{
  v14 = v0;
  v1 = v0[17];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v0[29] = v2;
  if (v2)
  {
    *(v1 + 112) = 0;
    v3 = type metadata accessor for SessionClientBox(0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
    v0[30] = v4;
    v5 = MEMORY[0x277D84950];
    sub_22372B1B8();
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = sub_22362C338;

    return MEMORY[0x282200440](v0 + 13, v2, v3, v4, v5);
  }

  else
  {
    v7 = sub_22372AC88();
    v8 = sub_22372B258();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_223623274(0xD000000000000024, 0x8000000223734C70, &v13);
      _os_log_impl(&dword_223620000, v7, v8, "%{public}s Intelligence Flow Session Client does not exist, nothing to end.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x223DE8A80](v10, -1, -1);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_22362C338()
{

  return MEMORY[0x2822009F8](sub_22362C434, 0, 0);
}

uint64_t sub_22362C434()
{
  v1 = *(v0 + 104);
  if (*(v0 + 112))
  {
    *(v0 + 120) = v1;
    swift_dynamicCast();
  }

  else
  {
    **(v0 + 176) = v1;
  }

  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 176);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 136);
    sub_22366E5FC(v2, v4);
    sub_22366FCFC(v4, v3, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    *(v0 + 280) = sub_22366FDD0(&unk_281329528, type metadata accessor for IntelligenceFlowSessionBridge.Error, protocol conformance descriptor for IntelligenceFlowSessionBridge.Error);
    swift_willThrowTypedImpl();
    sub_223640240(v4, type metadata accessor for IntelligenceFlowSessionBridge.Error);
    v6 = sub_223668A8C;
    v7 = v5;
  }

  else
  {
    v7 = *(v0 + 136);
    *(v0 + 256) = *v2;
    v6 = sub_223668784;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22362C5B8(uint64_t a1)
{
  v2[3] = a1;
  v3 = sub_22372AE98();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[6] = v4;
  v2[7] = v5;

  return MEMORY[0x2822009F8](sub_22362C67C, 0, 0);
}

uint64_t sub_22362C67C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  v0[8] = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v9 = v0;
  v9[1] = sub_22362C9A0;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200828](v10, v6, v7, 0, 0, &unk_22372EE00, v8, v11);
}

uint64_t sub_22362C83C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2236242EC;

  return sub_22362C8F0(a1, v7, v6, a2);
}

uint64_t sub_22362C8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x2822009F8](sub_22362C914, 0, 0);
}

uint64_t sub_22362C914()
{
  sub_223727AB8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22362C9A0()
{
  v2 = *(*v1 + 64);

  if (v0)
  {
    v3 = sub_223688190;
  }

  else
  {

    v3 = sub_22362CAD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22362CADC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22362CB68()
{

  return swift_deallocClassInstance();
}

uint64_t SessionClientBox.__deallocating_deinit()
{
  if (*(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask))
  {

    sub_22372B1B8();
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_conversationSessionID;
  v2 = sub_223727408();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, v2);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
  v5 = sub_22372A548();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_22362CD14()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  *(v1 + 136) = *(v2 + 56);
  *(v1 + 144) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xAAE4000000000000;
  v4 = sub_22372B168();

  return MEMORY[0x2822009F8](sub_22362CE78, v4, v3);
}

uint64_t sub_22362CE78()
{
  v1 = *(v0 + 88);
  (*(v0 + 136))(*(v0 + 120), *(v0 + 112));

  return MEMORY[0x2822009F8](sub_22362CEEC, v1, 0);
}

uint64_t sub_22362CEEC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = sub_22372A3B8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_conversationSessionInfo;
  swift_beginAccess();
  sub_223623F04(v2, v1 + v4);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_genAIPreWarmInitiated) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_22362CFEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22362D128(uint64_t a1)
{
  v2 = v1;
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v77 = &v64 - v5;
  v6 = sub_2237287C8();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v79 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v78 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22372A548();
  v70 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v12);
  v75 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v74 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v64 - v23;
  v25 = sub_223727408();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v64 - v32;
  sub_2237273F8();
  v34 = sub_2237273B8();
  v36 = v35;
  v37 = *(v26 + 8);
  v38 = v33;
  v72 = v26 + 8;
  v71 = v37;
  v37(v33, v25);
  v67 = v34;
  v66 = v36;
  sub_2236402A0(v34, v36);
  v73 = v2;
  v39 = *(v2 + qword_28132A1E8);
  v40 = v25;
  v41 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId;
  swift_beginAccess();
  sub_223634890(v39 + v41, v24, &unk_27D08E530, &unk_22372CB10);
  v42 = *(v26 + 48);
  if (v42(v24, 1, v25) == 1)
  {
    sub_2237273F8();
    if (v42(v24, 1, v25) != 1)
    {
      sub_223626478(v24, &unk_27D08E530, &unk_22372CB10);
    }
  }

  else
  {
    (*(v26 + 32))(v30, v24, v25);
  }

  v43 = *(v26 + 16);
  v68 = v30;
  v43(v21, v30, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  swift_beginAccess();
  sub_2236719F4(v21, v39 + v41, &unk_27D08E530, &unk_22372CB10);
  swift_endAccess();
  v65 = v38;
  v43(v38, v30, v25);
  sub_2236397B0(v69, v74, type metadata accessor for RequestInfo.UserInput);
  v44 = v70;
  (*(v70 + 16))(v75, v39 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId, v76);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
  (*(v80 + 104))(v79, *MEMORY[0x277D5CB80], v81);
  v46 = sub_223729D68();
  (*(*(v46 - 8) + 56))(v77, 1, 1, v46);
  type metadata accessor for RequestInfo(0);
  v47 = swift_allocObject();
  v48 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  v49 = MEMORY[0x277D84F90];
  *(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
  v50 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  *(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v49;
  v51 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  v52 = sub_22372A098();
  v53 = v40;
  v54 = *(*(v52 - 8) + 56);
  v54(v47 + v51, 1, 1, v52);
  v54(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v52);
  v55 = v66;
  *(v47 + 16) = v67;
  *(v47 + 24) = v55;
  (*(v26 + 32))(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v65, v53);
  sub_223639818(v74, v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  (*(v44 + 32))(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v75, v76);
  swift_beginAccess();
  v56 = MEMORY[0x277D84F90];
  *(v47 + v48) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v47 + v50) = v56;
  sub_223639818(v78, v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  (*(v80 + 32))(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v79, v81);
  v57 = v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
  *v57 = 0;
  *(v57 + 8) = 1;
  v58 = v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
  *v58 = 0;
  *(v58 + 8) = 1;
  *(v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 0;
  sub_2236EA450(v77, v47 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_22372FCE0;
  *(v59 + 32) = v47;
  v60 = qword_28132B870;
  v61 = v73;
  swift_beginAccess();
  v82 = v59;

  sub_22363AFB8(v62);
  v71(v68, v53);
  *(v61 + v60) = v82;

  *(v61 + qword_28132B8C0) = v47;

  return v47;
}

uint64_t sub_22362DA4C()
{
  v32 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v31 = v10;
    v12 = 0xEB0000000064657ALL;
    v13 = 0x696C616974696E69;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0xEC00000064657A69;
    v17 = 0x6C616E6946707274;
    if (v11 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v11)
    {
      v13 = 0x6E69766965636572;
      v12 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v11 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, &v31);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  sub_223728FA8();
  v27 = sub_223729EE8();
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  v28 = sub_223728F98();
  (*(v26 + 104))(v23, *MEMORY[0x277D5CF30], v25);
  sub_22363DF70(v24, v28, v23);

  (*(v26 + 8))(v23, v25);
  sub_223626478(v24, &unk_27D08F6F0, &qword_223732CD0);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_22362DE10()
{
  v2 = *(*v1 + 88);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_223688194, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22362DF7C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  sub_223626478(*(v2 + 96), &qword_27D08EE40, &qword_22372EB28);

  if (v0)
  {
    v3 = sub_223676634;
  }

  else
  {
    v3 = sub_22362E0DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22362E0DC()
{
  v40 = v0;
  v33 = v0[41];
  v37 = v0[43];
  v1 = v0[32];
  v3 = v0[30];
  v2 = v0[31];
  v25 = v0[33];
  v4 = v0[18];
  v26 = v0[16];
  v28 = v0[15];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  v31 = v0[9];
  v9 = v0[6];
  (*(v5 + 32))(v4, v0[17], v6);
  type metadata accessor for SessionClientBox(0);
  (*(v2 + 16))(v1, v25, v3);
  v10 = *(v5 + 16);
  v10(v26, v9, v6);
  v10(v28, v4, v6);
  (*(v7 + 16))(v8, v9 + *(v33 + 24), v31);
  v38 = sub_22362E4DC(v1, v26, v28, v8, v3, v37);
  v11 = sub_22372AC88();
  v12 = sub_22372B268();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[35];
  v17 = v0[31];
  v35 = v0[30];
  v36 = v0[33];
  v18 = v0[28];
  v32 = v0[27];
  v34 = v0[29];
  v30 = v0[18];
  v19 = v0[13];
  v20 = v0[14];
  if (v13)
  {
    v29 = v0[37];
    v21 = swift_slowAlloc();
    v27 = v15;
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_223623274(0xD000000000000012, 0x8000000223735080, &v39);
    _os_log_impl(&dword_223620000, v11, v12, "%{public}s Set up InteligenceFlow Session successfully", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v21, -1, -1);

    (*(v20 + 8))(v30, v19);
    (*(v18 + 8))(v34, v32);
    (*(v17 + 8))(v36, v35);
    (*(v16 + 8))(v29, v27);
  }

  else
  {

    (*(v20 + 8))(v30, v19);
    (*(v18 + 8))(v34, v32);
    (*(v17 + 8))(v36, v35);
    (*(v16 + 8))(v14, v15);
  }

  v23 = v0[1];

  return v23(v38);
}

uint64_t sub_22362E4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_22362E55C(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t *sub_22362E55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_jsonEncoder;
  sub_223727178();
  swift_allocObject();
  *(v6 + v14) = sub_223727168();
  *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_messageDispatchTask) = 0;
  v6[5] = a5;
  v6[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v16 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_conversationSessionID;
  v17 = sub_223727408();
  v18 = *(*(v17 - 8) + 32);
  v18(v7 + v16, a2, v17);
  v18(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_intelligenceFlowSessionID, a3, v17);
  v19 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
  v20 = sub_22372A548();
  (*(*(v20 - 8) + 32))(v7 + v19, a4, v20);
  return v7;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22362E738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08ED28, &qword_22372E558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22362E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_22372AE98();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *v4;
  v5[9] = v7;
  v5[10] = v8;

  return MEMORY[0x2822009F8](sub_22362E870, 0, 0);
}

uint64_t sub_22362E870()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v13 = *(v0 + 32);
  sub_223624E58();
  (*(v4 + 104))(v1, *MEMORY[0x277D851B8], v3);
  v6 = sub_22372B2F8();
  *(v0 + 88) = v6;
  (*(v4 + 8))(v1, v3);
  v7 = sub_223687724(&unk_281328D40, sub_223624E58, MEMORY[0x277D85270]);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v13;
  *(v8 + 40) = v5;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  v10 = sub_223727408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EAD0, &qword_22372CA80);
  *v9 = v0;
  v9[1] = sub_22362DE10;
  v11 = *(v0 + 24);

  return MEMORY[0x282200828](v11, v6, v7, 0, 0, &unk_22372EE08, v8, v10);
}

void *sub_22362EA68(uint64_t a1, unint64_t a2)
{
  v3 = sub_22362EBA0(a1, a2);
  sub_22362EAB4(&unk_2836C3FA0);
  return v3;
}

uint64_t sub_22362EAB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22370DDD4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22362EBA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22362ECD0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22372B4C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22372B098();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22362ECD0(v10, 0);
        result = sub_22372B448();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_22362ECD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08FA08, &unk_223733200);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_22362ED48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22372B6E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22362EE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F190, &qword_22372FBA0);
  v36 = v4;
  result = sub_22372B588();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_22372B7A8();
      sub_22372B078();
      result = sub_22372B7C8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_22362F0D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = *(v0 + qword_28132A1E0);
  if (!v6)
  {
    return;
  }

  v7 = *(v0 + qword_28132A1E8);
  v8 = v6;
  v9 = sub_22372A768();
  v11 = v10;
  v12 = *(v0 + qword_28132A208);
  v13 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestIdToMuxRequestContext;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v7 + v13);
  *(v7 + v13) = 0x8000000000000000;
  sub_22368D88C(v12, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v7 + v13) = v29;
  swift_endAccess();
  sub_223727F08();
  sub_22372A9D8();

  v15 = qword_28132B8A8;
  swift_beginAccess();
  sub_2236719F4(v5, v0 + v15, &unk_27D08E990, &qword_22372FCF0);
  swift_endAccess();
  v16 = sub_223727F08();
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = sub_22369C0C4();
  v19 = sub_22369BC24(&v28, (v18 + 32), v17, v16);
  sub_223685A24(v28);
  if (v19 != v17)
  {
    __break(1u);
LABEL_5:
  }

  v20 = sub_223727EF8();
  sub_223634890(v1 + v15, v5, &unk_27D08E990, &qword_22372FCF0);
  v21 = sub_22372AA58();

  sub_223626478(v5, &unk_27D08E990, &qword_22372FCF0);
  if (v20)
  {

    v8 = v21;
  }

  else
  {

    sub_2236B3B58(v21);

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v22 = sub_22372AC98();
    __swift_project_value_buffer(v22, qword_28132B680);
    v23 = v21;
    v24 = sub_22372AC88();
    v25 = sub_22372B268();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      *(v26 + 4) = v23;
      *v27 = v21;
      *(v26 + 12) = 1024;
      *(v26 + 14) = 0;
      v23 = v23;
      _os_log_impl(&dword_223620000, v24, v25, "MUX: Generated default voice id score card : %@ when RMV=%{BOOL}d.", v26, 0x12u);
      sub_223626478(v27, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }
  }
}

void sub_22362F498(void *a1)
{
  v2 = v1;
  v73 = a1;
  v3 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223729F08();
  v72 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v68 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v68 - v15;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v17 = sub_22372AC98();
  v68 = __swift_project_value_buffer(v17, qword_28132B680);
  v18 = sub_22372AC88();
  v19 = sub_22372B268();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_223620000, v18, v19, "RequestControllerBridgeRequestProcessor: Handling StartRootLocalRequestMessage", v20, 2u);
    MEMORY[0x223DE8A80](v20, -1, -1);
  }

  v21 = *MEMORY[0x277D5CF30];
  v22 = v72;
  v23 = *(v72 + 104);
  v23(v16, v21, v6);
  (*(v22 + 56))(v16, 0, 1, v6);
  v24 = qword_28132B888;
  swift_beginAccess();
  sub_2236719F4(v16, v2 + v24, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v25 = sub_223729D38();
  v27 = v26;
  if (v25 == sub_22372A708() && v27 == v28)
  {

    v29 = v73;
  }

  else
  {
    v30 = sub_22372B6E8();

    v29 = v73;
    if ((v30 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_223728FA8();
  v31 = sub_223729EE8();
  (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
  v32 = qword_28132B858;
  swift_beginAccess();
  sub_2236719F4(v12, v2 + v32, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
LABEL_10:
  if (*(v2 + qword_28132A1F8) == 1)
  {
    v33 = sub_223729D38();
    v35 = v34;
    v36 = v70;
    v23(v70, v21, v6);
    sub_223676D90(v33, v35, v36);

    (*(v72 + 8))(v36, v6);
  }

  v37 = v71;
  sub_223630694(v29, sub_223635D6C, 0);
  if (!v37)
  {
    v38 = sub_223728F98();
    if (v38)
    {
      v39 = v38;
      v40 = qword_28132B870;
      swift_beginAccess();
      v42 = *(v2 + v40);
      if (v42 >> 62)
      {
        v43 = sub_22372B558();
        if (v43 >= 2)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43 >= 2)
        {
LABEL_16:
          v44 = objc_allocWithZone(sub_22372A408());
          v43 = sub_22372A3D8();
          v45 = v43;
          goto LABEL_22;
        }
      }

      v45 = 0;
LABEL_22:
      MEMORY[0x28223BE20](v43, v41);
      *(&v68 - 2) = v39;
      *(&v68 - 1) = v45;
      v53 = objc_allocWithZone(sub_22372A328());
      v54 = sub_22372A2E8();

      v55 = *(v2 + qword_28132B8A0);
      *(v2 + qword_28132B8A0) = v54;

      v56 = type metadata accessor for RequestInfo.UserQuery(0);
      v57 = v69;
      (*(*(v56 - 8) + 56))(v69, 1, 1, v56);
      v58 = sub_22362D128(v57);
      v59 = sub_22363B214(v57, type metadata accessor for RequestInfo.UserInput);
      MEMORY[0x28223BE20](v59, v60);
      v61 = v73;
      *(&v68 - 4) = v58;
      *(&v68 - 3) = v61;
      *(&v68 - 2) = v2;
      v62 = objc_allocWithZone(sub_223729138());
      v63 = sub_2237290B8();
      if (v63)
      {
        v64 = v63;
        sub_22363B540(v63, 1, v2, MEMORY[0x277D5CC70]);
      }

      else
      {
        v65 = sub_22372AC88();
        v66 = sub_22372B278();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_223620000, v65, v66, "Could not construct StartChildLocalRequestMessage. Missing fields?", v67, 2u);
          MEMORY[0x223DE8A80](v67, -1, -1);
        }
      }

      return;
    }

    v46 = v29;
    v47 = sub_22372AC88();
    v48 = sub_22372B278();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = v46;
      v51 = v46;
      _os_log_impl(&dword_223620000, v47, v48, "Message %@ didn't contain requestContextData", v49, 0xCu);
      sub_223626478(v50, &unk_27D08F250, &unk_22372D1D0);
      MEMORY[0x223DE8A80](v50, -1, -1);
      MEMORY[0x223DE8A80](v49, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v52 = xmmword_22372CE90;
    *(v52 + 16) = 2;
    swift_willThrow();
  }
}

void sub_22362FD58(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v5 = v4;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_223620000, v10, v11, "Handling RunSiriKitExecutor command", v12, 2u);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  if (sub_2236303D4(a1))
  {
    v52 = sub_22372AC88();
    v13 = sub_22372B268();
    if (!os_log_type_enabled(v52, v13))
    {
LABEL_9:

      return;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "🫨 Gesture invocation detected, ignoring RunSiriKitExecutor command";
LABEL_8:
    _os_log_impl(&dword_223620000, v52, v13, v15, v14, 2u);
    MEMORY[0x223DE8A80](v14, -1, -1);
    goto LABEL_9;
  }

  v16 = [a2 originPeerInfo];
  if (v16)
  {

    goto LABEL_26;
  }

  if (sub_22372A688())
  {
    v17 = type metadata accessor for RequestControllerBridgeRequestProcessor(0);
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v49 = v18;
      v50 = v17;
      v19 = sub_22372A768();
      v21 = v20;
      v22 = [a1 refId];
      if (v22)
      {
        v23 = v22;
        v47 = sub_22372AFE8();
        v48 = v21;
        v25 = v24;

        if (v19 == v47 && v48 == v25)
        {

LABEL_22:
          sub_223630584(0, &qword_281328D20, 0x277D47438);
          sub_22372A6A8();

          return;
        }

        v26 = sub_22372B6E8();

        if (v26)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }
  }

LABEL_26:
  v27 = [a1 refId];
  if (!v27)
  {
    v27 = [a2 requestID];
    if (!v27)
    {
      v52 = sub_22372AC88();
      v13 = sub_22372B278();
      if (!os_log_type_enabled(v52, v13))
      {
        goto LABEL_9;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Could not find a refId in the RSKE command, dropping.";
      goto LABEL_8;
    }
  }

  v28 = v27;
  v29 = sub_22372AFE8();
  v31 = v30;

  if (a3)
  {
    v32 = swift_allocObject();
    v33 = a4;
    *(v32 + 16) = a3;
    *(v32 + 24) = a4;
    v34 = sub_22363FFA0;
  }

  else
  {
    v34 = 0;
    v32 = 0;
    v33 = a4;
  }

  v35 = qword_28132AC88;
  swift_beginAccess();
  sub_22363038C(a3, v33);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(v5 + v35);
  *(v5 + v35) = 0x8000000000000000;
  sub_22363C35C(v34, v32, v29, v31, isUniquelyReferenced_nonNull_native);

  *(v5 + v35) = v54;
  swift_endAccess();
  v37 = sub_22372AC88();
  v38 = sub_22372B268();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_223620000, v37, v38, "RCB has no active request processor with matching requestId, will post RSKE Message to be handled by Conversation Bridge.", v39, 2u);
    MEMORY[0x223DE8A80](v39, -1, -1);
  }

  MEMORY[0x28223BE20](v40, v41);
  v42 = objc_allocWithZone(sub_223729C88());
  v43 = sub_223729C18();

  if (v43)
  {
    sub_22372A958();
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  else
  {
    v44 = sub_22372AC88();
    v45 = sub_22372B278();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_223620000, v44, v45, "Could not build RunSiriKitExecutorMessage. Missing fields?", v46, 2u);
      MEMORY[0x223DE8A80](v46, -1, -1);
    }
  }
}

uint64_t sub_22363038C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22363039C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2236303D4(void *a1)
{
  v1 = [a1 parse];
  if (v1 && (v2 = v1, v3 = [v1 directInvocation], v2, v3) && (v4 = objc_msgSend(v3, sel_invocationIdentifier), v3, v4))
  {
    v5 = sub_22372AFE8();
    v7 = v6;

    if (v5 == sub_2237274E8() && v7 == v8)
    {

      return 1;
    }

    else
    {
      v10 = sub_22372B6E8();

      return v10 & 1;
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    v13 = sub_22372AC88();
    v14 = sub_22372B268();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "Not a gesture invocation, unable to get the payload identifier", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_223630584(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2236305CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_223635D44(v2, v3, v4, v5, v6);
}

id sub_223630694(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737720, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

uint64_t sub_223630AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_22372A308();
  (*(*(v5 - 8) + 8))(a1, v5);
  sub_22372A318();
  v6 = a3;
  return sub_22372A2F8();
}

uint64_t sub_223630B48(uint64_t a1)
{
  v1 = sub_22372A738();
  sub_22372B2C8();

  return v3;
}

uint64_t sub_223630BD8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = qword_28132B848;
  swift_beginAccess();
  v4 = *(a1 + v3);
  v20 = v4 + 64;
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v21 = v4;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = (*(v21 + 48) + 16 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v14 = *v12;
    v13 = v12[1];

    swift_unknownObjectRetain();

    if (v14 == sub_223729D38() && v13 == v15)
    {

      swift_unknownObjectRelease();

LABEL_17:

      v18 = 1;
LABEL_18:
      *a2 = v18;
      return result;
    }

    v7 &= v7 - 1;
    v17 = sub_22372B6E8();

    swift_unknownObjectRelease();

    if (v17)
    {
      goto LABEL_17;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v18 = 0;
      goto LABEL_18;
    }

    v7 = *(v20 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223630DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_223630E28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = sub_22372A548();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236310E8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_223626478(v6, &unk_27D08E990, &qword_22372FCF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    v13 = sub_22372AC88();
    v14 = sub_22372B278();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_223620000, v13, v14, "Need selectedUserId in order to update SessionState", v15, 2u);
      MEMORY[0x223DE8A80](v15, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_project_boxed_opaque_existential_1((v1 + qword_28132A1C0), *(v1 + qword_28132A1C0 + 24));
    sub_223631398(v11, a1);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_2236310E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22372A3C8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_28132A1F8) == 1)
  {
    __swift_project_boxed_opaque_existential_1((v1 + qword_28132A1A0), *(v1 + qword_28132A1A0 + 24));
    (*(v4 + 104))(v7, *MEMORY[0x277D5D1C0], v3);
    sub_22372A478();
    (*(v4 + 8))(v7, v3);
    if (v19)
    {
      v8 = sub_22372A548();
      v9 = swift_dynamicCast();
      return (*(*(v8 - 8) + 56))(a1, v9 ^ 1u, 1, v8);
    }

    else
    {
      sub_223626478(v18, &unk_27D08F750, &qword_22372C960);
      v15 = sub_22372A548();
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  else
  {
    v11 = *(v1 + qword_28132A1E8);
    v12 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionUserId;
    v13 = sub_22372A548();
    v17 = *(v13 - 8);
    (*(v17 + 16))(a1, v11 + v12, v13);
    v14 = *(v17 + 56);

    return v14(a1, 0, 1, v13);
  }
}

uint64_t sub_223631398(uint64_t a1, uint64_t a2)
{
  v529 = a2;
  v520 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E4F0, &qword_22372C958);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v512 = &v491 - v5;
  v6 = sub_22372A1B8();
  v7 = *(v6 - 8);
  v515 = v6;
  v516 = v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v508 = &v491 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v499 = &v491 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v498 = &v491 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v497 = &v491 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v507 = &v491 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v514 = &v491 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F798, &qword_223731E90);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v521 = &v491 - v27;
  v536 = sub_223727198();
  v523 = *(v536 - 1);
  MEMORY[0x28223BE20](v536, v28);
  v535 = &v491 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v534 = sub_22372A058();
  v517 = *(v534 - 8);
  v31 = MEMORY[0x28223BE20](v534, v30);
  v530 = &v491 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v531 = &v491 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v532 = (&v491 - v38);
  MEMORY[0x28223BE20](v37, v39);
  *&v533 = &v491 - v40;
  v524 = sub_22372A138();
  v526 = *(v524 - 8);
  MEMORY[0x28223BE20](v524, v41);
  v522 = &v491 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7E8, &qword_2237325D8);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v513 = &v491 - v45;
  v510 = sub_22372A188();
  v528 = *(v510 - 8);
  MEMORY[0x28223BE20](v510, v46);
  v509 = &v491 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for RequestInfo.UserQuery(0);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v50);
  v518 = &v491 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v55 = &v491 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F0, &qword_2237325E0);
  v58 = MEMORY[0x28223BE20](v56 - 8, v57);
  v527 = &v491 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v60);
  v525 = &v491 - v61;
  v62 = sub_22372A3C8();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v64);
  v66 = &v491 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v2 + 40);
  v511 = v2;
  __swift_project_boxed_opaque_existential_1((v2 + 16), v67);
  v68 = *(v63 + 104);
  v502 = *MEMORY[0x277D5D1E0];
  v503 = v63 + 104;
  v501 = v68;
  v68(v66);
  sub_22372A4C8();
  v69 = *(v63 + 8);
  v504 = v66;
  v505 = v63 + 8;
  v69(v66, v62);
  if (*&v539[8])
  {
    v70 = swift_dynamicCast();
    v72 = v528;
    v71 = v529;
    if (v70)
    {
      v73 = v537[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_223626478(&v538, &unk_27D08F750, &qword_22372C960);
    v72 = v528;
    v71 = v529;
  }

  v73 = MEMORY[0x277D84F90];
LABEL_6:
  v519 = v73;
  v74 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();
  sub_2236346D0(v71 + v74, v55);
  if ((*(v49 + 48))(v55, 1, v48) == 1)
  {
    v76 = v525;
    v75 = v526;
    v77 = v524;
    (*(v526 + 104))(v525, *MEMORY[0x277D5D058], v524);
LABEL_8:
    v78 = 0;
    goto LABEL_17;
  }

  v79 = v55;
  v80 = v518;
  v81 = sub_2236F1E0C(v79, v518);
  v77 = v524;
  if (*(v80 + 8) && *(v80 + 24))
  {
    MEMORY[0x28223BE20](v81, v82);
    *(&v491 - 4) = v84;
    *(&v491 - 3) = v83;
    *(&v491 - 2) = v86;
    *(&v491 - 1) = v85;
    v87 = v513;
    sub_22372A158();
    v88 = v87;
    v89 = v87;
    v90 = v510;
    if ((*(v72 + 48))(v89, 1, v510) == 1)
    {

      sub_223626478(v88, &qword_27D08F7E8, &qword_2237325D8);
      if (qword_281328E58 == -1)
      {
LABEL_13:
        v91 = sub_22372AC98();
        __swift_project_value_buffer(v91, qword_28132B680);
        v92 = sub_22372AC88();
        v93 = sub_22372B278();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          *v94 = 0;
          _os_log_impl(&dword_223620000, v92, v93, "Couldn't construct UserQuery. Missing required fields?", v94, 2u);
          MEMORY[0x223DE8A80](v94, -1, -1);
        }

        return sub_2236F1E70(v80);
      }

LABEL_366:
      swift_once();
      goto LABEL_13;
    }

    sub_2236F1E70(v80);
    v292 = *(v72 + 32);
    v293 = v509;
    v292(v509, v88, v90);
    v76 = v525;
    v292(v525, v293, v90);
    v75 = v526;
    (*(v526 + 104))(v76, *MEMORY[0x277D5D060], v77);
    goto LABEL_8;
  }

  sub_2236F1E70(v80);
  v78 = 1;
  v76 = v525;
  v75 = v526;
LABEL_17:
  (*(v75 + 56))(v76, v78, 1, v77);
  v96 = v527;
  sub_223634890(v76, v527, &qword_27D08F7F0, &qword_2237325E0);
  if ((*(v75 + 48))(v96, 1, v77) == 1)
  {

    sub_223626478(v96, &qword_27D08F7F0, &qword_2237325E0);
    if (qword_281328E58 == -1)
    {
LABEL_19:
      v97 = sub_22372AC98();
      __swift_project_value_buffer(v97, qword_28132B680);
      v98 = sub_22372AC88();
      v99 = sub_22372B278();
      v100 = os_log_type_enabled(v98, v99);
      v101 = v525;
      if (v100)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_223620000, v98, v99, "Empty userInput. Can't create RequestSummary.", v102, 2u);
        MEMORY[0x223DE8A80](v102, -1, -1);
      }

      return sub_223626478(v101, &qword_27D08F7F0, &qword_2237325E0);
    }

LABEL_359:
    swift_once();
    goto LABEL_19;
  }

  v494 = v69;
  v495 = v62;
  (*(v75 + 32))(v522, v96, v77);
  v103 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  swift_beginAccess();
  v513 = v103;
  v104 = *(v71 + v103);
  v105 = *(v104 + 16);
  if (v105)
  {
    v106 = *(v517 + 16);
    v107 = v104 + ((*(v517 + 80) + 32) & ~*(v517 + 80));
    v527 = *(v517 + 72);
    v528 = v106;
    v108 = (v517 + 8);
    v518 = v104;

    v109 = MEMORY[0x277D84F90];
    do
    {
      v111 = v533;
      v112 = v534;
      (v528)(v533, v107, v534);
      v113 = sub_22372A038();
      v115 = v114;
      (*v108)(v111, v112);
      if (v115)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_223637D3C(0, *(v109 + 2) + 1, 1, v109);
        }

        v117 = *(v109 + 2);
        v116 = *(v109 + 3);
        if (v117 >= v116 >> 1)
        {
          v109 = sub_223637D3C((v116 > 1), v117 + 1, 1, v109);
        }

        *(v109 + 2) = v117 + 1;
        v110 = &v109[16 * v117];
        *(v110 + 4) = v113;
        *(v110 + 5) = v115;
      }

      v107 += v527;
      --v105;
    }

    while (v105);

    v118 = *(v109 + 2);
    if (v118)
    {
      goto LABEL_32;
    }

LABEL_47:
    v510 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v109 = MEMORY[0x277D84F90];
  v118 = *(MEMORY[0x277D84F90] + 16);
  if (!v118)
  {
    goto LABEL_47;
  }

LABEL_32:
  v119 = 0;
  *&v533 = v523 + 8;
  v120 = (v109 + 40);
  v528 = v118;
  v518 = v118 - 1;
  v510 = MEMORY[0x277D84F90];
  v527 = (v109 + 40);
  v121 = v535;
  do
  {
    v122 = (v120 + 16 * v119);
    v123 = v119;
    while (1)
    {
      if (v123 >= *(v109 + 2))
      {
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
        goto LABEL_351;
      }

      v124 = *(v122 - 1);
      v125 = *v122;
      v119 = v123 + 1;
      *&v538 = v124;
      *(&v538 + 1) = v125;

      sub_223727188();
      sub_223637E48();
      v126 = sub_22372B3B8();
      v128 = v127;
      (*v533)(v121, v536);

      v129 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v129 = v126 & 0xFFFFFFFFFFFFLL;
      }

      if (v129)
      {
        break;
      }

      v122 += 2;
      ++v123;
      if (v528 == v119)
      {
        goto LABEL_48;
      }
    }

    v130 = v510;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v537[0] = v130;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2236387B4(0, *(v130 + 16) + 1, 1);
      v130 = v537[0];
    }

    v133 = *(v130 + 16);
    v132 = *(v130 + 24);
    if (v133 >= v132 >> 1)
    {
      sub_2236387B4((v132 > 1), v133 + 1, 1);
      v130 = v537[0];
    }

    *(v130 + 16) = v133 + 1;
    v510 = v130;
    v134 = v130 + 16 * v133;
    *(v134 + 32) = v124;
    *(v134 + 40) = v125;
    v120 = v527;
  }

  while (v518 != v123);
LABEL_48:

  *&v538 = v510;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  v136 = sub_2236348F8();
  v527 = v135;
  v518 = v136;
  v137 = sub_22372AFA8();
  v139 = v138;

  v509 = v139;
  v510 = v137;
  v546 = v137;
  v547 = v139;
  v140 = *&v513[v529];
  v141 = *(v140 + 16);
  if (v141)
  {
    *&v533 = *(v517 + 16);
    v142 = v140 + ((*(v517 + 80) + 32) & ~*(v517 + 80));
    v528 = *(v517 + 72);
    v143 = (v517 + 8);

    v506 = v140;

    v144 = MEMORY[0x277D84F90];
    do
    {
      v146 = v532;
      v147 = v534;
      (v533)(v532, v142, v534);
      v148 = sub_22372A048();
      v150 = v149;
      (*v143)(v146, v147);
      if (v150)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_223637D3C(0, *(v144 + 2) + 1, 1, v144);
        }

        v152 = *(v144 + 2);
        v151 = *(v144 + 3);
        if (v152 >= v151 >> 1)
        {
          v144 = sub_223637D3C((v151 > 1), v152 + 1, 1, v144);
        }

        *(v144 + 2) = v152 + 1;
        v145 = &v144[16 * v152];
        *(v145 + 4) = v148;
        *(v145 + 5) = v150;
      }

      v142 += v528;
      --v141;
    }

    while (v141);

    v153 = *(v144 + 2);
    if (v153)
    {
      goto LABEL_58;
    }

LABEL_73:
    v528 = MEMORY[0x277D84F90];
  }

  else
  {

    v144 = MEMORY[0x277D84F90];
    v153 = *(MEMORY[0x277D84F90] + 16);
    if (!v153)
    {
      goto LABEL_73;
    }

LABEL_58:
    v154 = 0;
    v532 = v153;
    *&v533 = v523 + 8;
    v155 = v144 + 40;
    v500 = &v153[-1].isa + 7;
    v528 = MEMORY[0x277D84F90];
    v506 = v144 + 40;
    do
    {
      v156 = &v155[16 * v154];
      v157 = v154;
      while (1)
      {
        if (v157 >= *(v144 + 2))
        {
          goto LABEL_348;
        }

        v158 = *(v156 - 1);
        v159 = *v156;
        v154 = (&v157->isa + 1);
        *&v538 = v158;
        *(&v538 + 1) = v159;

        v160 = v535;
        sub_223727188();
        sub_223637E48();
        v161 = sub_22372B3B8();
        v163 = v162;
        (*v533)(v160, v536);

        v164 = HIBYTE(v163) & 0xF;
        if ((v163 & 0x2000000000000000) == 0)
        {
          v164 = v161 & 0xFFFFFFFFFFFFLL;
        }

        if (v164)
        {
          break;
        }

        v156 += 16;
        v157 = (v157 + 1);
        if (v532 == v154)
        {
          goto LABEL_74;
        }
      }

      v165 = v528;
      v166 = swift_isUniquelyReferenced_nonNull_native();
      v537[0] = v165;
      if ((v166 & 1) == 0)
      {
        sub_2236387B4(0, *(v165 + 2) + 1, 1);
        v165 = v537[0];
      }

      v168 = *(v165 + 2);
      v167 = *(v165 + 3);
      if (v168 >= v167 >> 1)
      {
        sub_2236387B4((v167 > 1), v168 + 1, 1);
        v165 = v537[0];
      }

      *(v165 + 2) = v168 + 1;
      v528 = v165;
      v169 = &v165[16 * v168];
      *(v169 + 4) = v158;
      *(v169 + 5) = v159;
      v155 = v506;
    }

    while (v500 != v157);
  }

LABEL_74:

  *&v538 = v528;
  v170 = sub_22372AFA8();
  v172 = v171;

  v496 = v170;
  v544 = v170;
  v545 = v172;
  v506 = v172;
  v173 = *&v513[v529];
  v174 = *(v173 + 16);
  if (v174)
  {
    v175 = *(v517 + 16);
    v176 = v173 + ((*(v517 + 80) + 32) & ~*(v517 + 80));
    v532 = *(v517 + 72);
    *&v533 = v175;
    v177 = (v517 + 8);
    v528 = v173;

    v178 = MEMORY[0x277D84F90];
    do
    {
      v180 = v531;
      v181 = v534;
      (v533)(v531, v176, v534);
      v182 = sub_223729FC8();
      v184 = v183;
      (*v177)(v180, v181);
      if (v184)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_223637D3C(0, *(v178 + 2) + 1, 1, v178);
        }

        v186 = *(v178 + 2);
        v185 = *(v178 + 3);
        if (v186 >= v185 >> 1)
        {
          v178 = sub_223637D3C((v185 > 1), v186 + 1, 1, v178);
        }

        *(v178 + 2) = v186 + 1;
        v179 = &v178[16 * v186];
        *(v179 + 4) = v182;
        *(v179 + 5) = v184;
      }

      v176 += v532;
      --v174;
    }

    while (v174);

    v187 = *(v178 + 2);
    if (v187)
    {
      goto LABEL_84;
    }

LABEL_99:
    v531 = MEMORY[0x277D84F90];
  }

  else
  {
    v178 = MEMORY[0x277D84F90];
    v187 = *(MEMORY[0x277D84F90] + 16);
    if (!v187)
    {
      goto LABEL_99;
    }

LABEL_84:
    v188 = 0;
    v532 = v187;
    *&v533 = v523 + 8;
    v189 = v178 + 40;
    v500 = &v187[-1].isa + 7;
    v531 = MEMORY[0x277D84F90];
    v528 = (v178 + 40);
    do
    {
      v190 = &v189[16 * v188];
      v191 = v188;
      while (1)
      {
        if (v191 >= *(v178 + 2))
        {
          goto LABEL_349;
        }

        v192 = *(v190 - 1);
        v193 = *v190;
        v188 = (&v191->isa + 1);
        *&v538 = v192;
        *(&v538 + 1) = v193;

        v194 = v535;
        sub_223727188();
        sub_223637E48();
        v195 = sub_22372B3B8();
        v197 = v196;
        (*v533)(v194, v536);

        v198 = HIBYTE(v197) & 0xF;
        if ((v197 & 0x2000000000000000) == 0)
        {
          v198 = v195 & 0xFFFFFFFFFFFFLL;
        }

        if (v198)
        {
          break;
        }

        v190 += 16;
        v191 = (v191 + 1);
        if (v532 == v188)
        {
          goto LABEL_100;
        }
      }

      v199 = v531;
      v200 = swift_isUniquelyReferenced_nonNull_native();
      v537[0] = v199;
      if ((v200 & 1) == 0)
      {
        sub_2236387B4(0, *(v199 + 2) + 1, 1);
        v199 = v537[0];
      }

      v202 = *(v199 + 2);
      v201 = *(v199 + 3);
      if (v202 >= v201 >> 1)
      {
        sub_2236387B4((v201 > 1), v202 + 1, 1);
        v199 = v537[0];
      }

      *(v199 + 2) = v202 + 1;
      v531 = v199;
      v203 = &v199[16 * v202];
      *(v203 + 4) = v192;
      *(v203 + 5) = v193;
      v189 = v528;
    }

    while (v500 != v191);
  }

LABEL_100:

  *&v538 = v531;
  v204 = sub_22372AFA8();
  v206 = v205;

  v500 = v204;
  v542 = v204;
  v543 = v206;
  v528 = v206;
  v207 = *&v513[v529];
  v208 = *(v207 + 2);
  if (v208)
  {
    v209 = *(v517 + 16);
    v210 = &v207[(*(v517 + 80) + 32) & ~*(v517 + 80)];
    v532 = *(v517 + 72);
    *&v533 = v209;
    v211 = (v517 + 8);
    v531 = v207;

    v212 = MEMORY[0x277D84F90];
    do
    {
      v214 = v530;
      v215 = v534;
      (v533)(v530, v210, v534);
      v216 = sub_223729FD8();
      v218 = v217;
      (*v211)(v214, v215);
      if (v218)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v212 = sub_223637D3C(0, *(v212 + 2) + 1, 1, v212);
        }

        v220 = *(v212 + 2);
        v219 = *(v212 + 3);
        if (v220 >= v219 >> 1)
        {
          v212 = sub_223637D3C((v219 > 1), v220 + 1, 1, v212);
        }

        *(v212 + 2) = v220 + 1;
        v213 = &v212[16 * v220];
        *(v213 + 4) = v216;
        *(v213 + 5) = v218;
      }

      v210 = v532 + v210;
      --v208;
    }

    while (v208);

    v221 = *(v212 + 2);
    if (v221)
    {
      goto LABEL_110;
    }

LABEL_125:
    v532 = MEMORY[0x277D84F90];
  }

  else
  {
    v212 = MEMORY[0x277D84F90];
    v221 = *(MEMORY[0x277D84F90] + 16);
    if (!v221)
    {
      goto LABEL_125;
    }

LABEL_110:
    v222 = 0;
    *&v534 = v523 + 8;
    v223 = v212 + 40;
    *&v533 = v221;
    v530 = (v221 - 1);
    v531 = v212 + 40;
    v532 = MEMORY[0x277D84F90];
    v224 = v535;
    do
    {
      v225 = &v223[16 * v222];
      v226 = v222;
      while (1)
      {
        if (v226 >= *(v212 + 2))
        {
          goto LABEL_350;
        }

        v227 = *(v225 - 1);
        v228 = *v225;
        v222 = v226 + 1;
        *&v538 = v227;
        *(&v538 + 1) = v228;

        sub_223727188();
        sub_223637E48();
        v229 = sub_22372B3B8();
        v231 = v230;
        (*v534)(v224, v536);

        v232 = HIBYTE(v231) & 0xF;
        if ((v231 & 0x2000000000000000) == 0)
        {
          v232 = v229 & 0xFFFFFFFFFFFFLL;
        }

        if (v232)
        {
          break;
        }

        v225 += 2;
        ++v226;
        if (v533 == v222)
        {
          goto LABEL_126;
        }
      }

      v233 = v532;
      v234 = swift_isUniquelyReferenced_nonNull_native();
      v537[0] = v233;
      if ((v234 & 1) == 0)
      {
        sub_2236387B4(0, v233[2].isa + 1, 1);
        v233 = v537[0];
      }

      isa = v233[2].isa;
      v235 = v233[3].isa;
      if (isa >= v235 >> 1)
      {
        sub_2236387B4((v235 > 1), isa + 1, 1);
        v233 = v537[0];
      }

      v233[2].isa = (isa + 1);
      v532 = v233;
      v237 = &v233[2 * isa];
      v237[4].isa = v227;
      v237[5].isa = v228;
      v223 = v531;
    }

    while (v530 != v226);
  }

LABEL_126:

  *&v538 = v532;
  v238 = sub_22372AFA8();
  v240 = v239;

  v540 = v238;
  v541 = v240;
  v517 = v240;
  v241 = v509;

  if ((v241 & 0x2000000000000000) != 0)
  {
    v244 = HIBYTE(v241) & 0xF;
  }

  else
  {
    v244 = v510 & 0xFFFFFFFFFFFFLL;
  }

  if (v244)
  {
    v245 = v496 & 0xFFFFFFFFFFFFLL;
    if ((v506 & 0x2000000000000000) != 0)
    {
      v245 = (v506 >> 56) & 0xF;
    }

    if (v245)
    {
      v246 = v526;
      v247 = v529;
      goto LABEL_304;
    }
  }

  v513 = v244;
  v492 = v238;
  v493 = (v506 >> 56) & 0xF;
  v246 = v526;
  v247 = v529;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v248 = sub_22372AC98();
  __swift_project_value_buffer(v248, qword_28132B680);
  v249 = sub_22372AC88();
  v250 = sub_22372B268();
  if (os_log_type_enabled(v249, v250))
  {
    v251 = swift_slowAlloc();
    *v251 = 0;
    _os_log_impl(&dword_223620000, v249, v250, "Empty DialogEngineOutput. Falling back to AceCommands for RequestSummary.", v251, 2u);
    MEMORY[0x223DE8A80](v251, -1, -1);
  }

  v252 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  swift_beginAccess();
  v253 = *(v247 + v252);
  if (v253 >> 62)
  {
    v490 = *(v247 + v252);
    v254 = sub_22372B558();
    v253 = v490;
  }

  else
  {
    v254 = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v255 = MEMORY[0x277D84F90];
  if (!v254)
  {
LABEL_164:
    v278 = v510;
    if (v513)
    {
      v279 = v509;
LABEL_198:
      v509 = v279;
      v510 = v278;
      v546 = v278;
      v547 = v279;
      v312 = v496 & 0xFFFFFFFFFFFFLL;
      if ((v506 & 0x2000000000000000) != 0)
      {
        v312 = v493;
      }

      if (v312)
      {
        v544 = v496;
        v545 = v506;
LABEL_233:
        v345 = v500;
        if ((v528 & 0x2000000000000000) != 0)
        {
          if ((v528 & 0xF00000000000000) != 0)
          {
            goto LABEL_235;
          }
        }

        else if ((v500 & 0xFFFFFFFFFFFFLL) != 0)
        {
LABEL_235:
          v346 = v528;
LABEL_268:
          v500 = v345;
          v542 = v345;
          v543 = v346;
          v528 = v346;
          v377 = v517;
          v378 = HIBYTE(v517) & 0xF;
          v379 = v492;
          if ((v517 & 0x2000000000000000) == 0)
          {
            v378 = v492 & 0xFFFFFFFFFFFFLL;
          }

          if (v378)
          {

LABEL_303:
            v540 = v379;
            v541 = v377;
LABEL_304:
            v411 = v512;
            if (*(v511 + 56) == 1)
            {
              *&v538 = v510;
              *(&v538 + 1) = v509;
              v412 = sub_223637E48();

              v413 = MEMORY[0x223DE7E10](0xD000000000000015, 0x8000000223737D10, 1, 1, MEMORY[0x277D837D0], v412);

              if (v413[2])
              {
                v414 = v413[4];
                v415 = v413[5];
                v416 = v413[6];
                v417 = v413[7];

                v418 = MEMORY[0x223DE7AB0](v414, v415, v416, v417);
                v420 = v419;
                v247 = v529;

                v546 = v418;
                v547 = v420;
              }

              else
              {
              }

              *&v538 = v500;
              *(&v538 + 1) = v528;

              v421 = MEMORY[0x223DE7E10](0xD000000000000015, 0x8000000223737D10, 1, 1, MEMORY[0x277D837D0], v412);

              if (v421[2])
              {
                v422 = v421[4];
                v423 = v421[5];
                v424 = v421[6];
                v425 = v421[7];

                v426 = MEMORY[0x223DE7AB0](v422, v423, v424, v425);
                v428 = v427;

                v542 = v426;
                v543 = v428;
              }

              else
              {
              }

              v411 = v512;
            }

            MEMORY[0x28223BE20](v242, v243);
            *(&v491 - 4) = &v546;
            *(&v491 - 3) = &v544;
            *(&v491 - 2) = &v542;
            *(&v491 - 1) = &v540;
            v429 = sub_223729FE8();
            if (*(v247 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex + 8) & 1) != 0 || (*(v247 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount + 8))
            {
              v431 = 0;
            }

            else
            {
              MEMORY[0x28223BE20](v429, v430);
              *(&v491 - 2) = v433;
              *(&v491 - 1) = v432;
              v434 = objc_allocWithZone(sub_22372A408());
              v431 = sub_22372A3D8();
              v429 = v431;
            }

            MEMORY[0x28223BE20](v429, v430);
            v435 = v521;
            v436 = v522;
            *(&v491 - 4) = v247;
            *(&v491 - 3) = v436;
            *(&v491 - 2) = v435;
            *(&v491 - 1) = v431;
            sub_22372A0C8();

            v437 = v515;
            v438 = v516;
            if ((*(v516 + 48))(v411, 1, v515) == 1)
            {

              sub_223626478(v411, &unk_27D08E4F0, &qword_22372C958);
              if (qword_281328E58 != -1)
              {
                swift_once();
              }

              v439 = sub_22372AC98();
              __swift_project_value_buffer(v439, qword_28132B680);
              v440 = sub_22372AC88();
              v441 = sub_22372B278();
              if (os_log_type_enabled(v440, v441))
              {
                v442 = swift_slowAlloc();
                *v442 = 0;
                _os_log_impl(&dword_223620000, v440, v441, "Couldn't create RequestSummary. Missing required fields?", v442, 2u);
                MEMORY[0x223DE8A80](v442, -1, -1);
              }

              sub_223626478(v525, &qword_27D08F7F0, &qword_2237325E0);
              sub_223626478(v521, &qword_27D08F798, &qword_223731E90);

              return (*(v246 + 8))(v522, v524);
            }

            *&v533 = *(v438 + 32);
            (v533)(v514, v411, v437);
            v443 = v519[2];
            v535 = v431;
            *&v534 = v438 + 32;
            if (v443)
            {
              v444 = *(v438 + 16);
              v445 = (*(v438 + 80) + 32) & ~*(v438 + 80);
              v532 = *(v438 + 72);
              v536 = v444;
              v444(v507, v519 + v445 + v532 * (v443 - 1), v437);
              v446 = sub_22372A198();
              v448 = *(v247 + 16);
              v80 = *(v247 + 24);
              if (v446 == v448 && v447 == v80)
              {

                goto LABEL_327;
              }

              v449 = sub_22372B6E8();

              if (v449)
              {
LABEL_327:
                v531 = v445;
                if (qword_281328E58 != -1)
                {
                  swift_once();
                }

                v450 = sub_22372AC98();
                __swift_project_value_buffer(v450, qword_28132B680);
                v451 = v497;
                v452 = v515;
                v453 = v536;
                v536(v497, v514, v515);

                v454 = sub_22372AC88();
                v455 = sub_22372B268();

                if (os_log_type_enabled(v454, v455))
                {
                  v456 = swift_slowAlloc();
                  v530 = swift_slowAlloc();
                  *&v538 = v530;
                  *v456 = 136315395;
                  *(v456 + 4) = sub_223623274(v448, v80, &v538);
                  *(v456 + 12) = 2081;
                  v453(v498, v451, v452);
                  v457 = sub_22372B038();
                  v80 = v458;
                  v459 = *(v516 + 8);
                  v459(v451, v452);
                  v460 = sub_223623274(v457, v80, &v538);

                  *(v456 + 14) = v460;
                  _os_log_impl(&dword_223620000, v454, v455, "Updating request summary for requestId %s to %{private}s", v456, 0x16u);
                  v461 = v530;
                  swift_arrayDestroy();
                  MEMORY[0x223DE8A80](v461, -1, -1);
                  MEMORY[0x223DE8A80](v456, -1, -1);
                }

                else
                {

                  v459 = *(v516 + 8);
                  v459(v451, v452);
                }

                v462 = v519;
                if (v519[2])
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v463 = v462[2];
                    if (v463)
                    {
LABEL_335:
                      v464 = v463 - 1;
                      v465 = &v531[v462 + v464 * v532];
                      v462[2] = v464;
                      v466 = v515;
                      v459(v465, v515);
                      v459(v507, v466);
                      v467 = v466;
                      goto LABEL_342;
                    }

                    goto LABEL_365;
                  }
                }

                else
                {
                  __break(1u);
                }

                v462 = sub_2236388E0(v462);
                v463 = v462[2];
                if (v463)
                {
                  goto LABEL_335;
                }

LABEL_365:
                __break(1u);
                goto LABEL_366;
              }

              (*(v516 + 8))(v507, v515);
            }

            if (qword_281328E58 != -1)
            {
              goto LABEL_362;
            }

            goto LABEL_338;
          }

          v380 = v255[2].isa;
          if (!v380)
          {
            v383 = MEMORY[0x277D84F90];
LABEL_286:

            v392 = *(v383 + 2);
            *&v534 = v383;
            if (!v392)
            {
              v532 = MEMORY[0x277D84F90];
LABEL_302:

              *&v538 = v532;
              v379 = sub_22372AFA8();
              v377 = v410;

              v246 = v526;
              v247 = v529;
              goto LABEL_303;
            }

            v393 = 0;
            v394 = (v523 + 8);
            v395 = v383 + 40;
            *&v533 = v392;
            v530 = (v392 - 1);
            v531 = v383 + 40;
            v532 = MEMORY[0x277D84F90];
            v396 = v535;
LABEL_288:
            v397 = &v395[16 * v393];
            v398 = v393;
            while (v398 < *(v534 + 16))
            {
              v399 = *(v397 - 1);
              v400 = *v397;
              v393 = v398 + 1;
              *&v538 = v399;
              *(&v538 + 1) = v400;

              sub_223727188();
              sub_223637E48();
              v401 = sub_22372B3B8();
              v403 = v402;
              (*v394)(v396, v536);

              v404 = HIBYTE(v403) & 0xF;
              if ((v403 & 0x2000000000000000) == 0)
              {
                v404 = v401 & 0xFFFFFFFFFFFFLL;
              }

              if (v404)
              {
                v405 = v532;
                v406 = swift_isUniquelyReferenced_nonNull_native();
                v537[0] = v405;
                if ((v406 & 1) == 0)
                {
                  sub_2236387B4(0, v405[2].isa + 1, 1);
                  v405 = v537[0];
                }

                v408 = v405[2].isa;
                v407 = v405[3].isa;
                if (v408 >= v407 >> 1)
                {
                  sub_2236387B4((v407 > 1), v408 + 1, 1);
                  v405 = v537[0];
                }

                v405[2].isa = (v408 + 1);
                v532 = v405;
                v409 = &v405[2 * v408];
                v409[4].isa = v399;
                v409[5].isa = v400;
                v395 = v531;
                if (v530 != v398)
                {
                  goto LABEL_288;
                }

                goto LABEL_302;
              }

              v397 += 2;
              ++v398;
              if (v533 == v393)
              {
                goto LABEL_302;
              }
            }

LABEL_358:
            __break(1u);
            goto LABEL_359;
          }

          v381 = 0;
          v382 = v255 + 4;
          *&v533 = v255[2];
          v531 = v380 - 1;
          v383 = MEMORY[0x277D84F90];
          v532 = v255 + 4;
LABEL_274:
          *&v534 = v383;
          v384 = &v382[8 * v381];
          v385 = v381;
          while (v385 < v255[2].isa)
          {
            v386 = *&v384[2].isa;
            v387 = *&v384[4].isa;
            v388 = *&v384[6].isa;
            v538 = *&v384->isa;
            *v539 = v386;
            *&v539[16] = v387;
            *&v539[32] = v388;
            v389 = v388;
            v381 = v385 + 1;
            sub_223634890(&v538, v537, &qword_27D08F7F8, &qword_2237325E8);

            if (*(&v389 + 1))
            {
              v383 = v534;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v383 = sub_223637D3C(0, *(v383 + 2) + 1, 1, v383);
              }

              v391 = *(v383 + 2);
              v390 = *(v383 + 3);
              if (v391 >= v390 >> 1)
              {
                v383 = sub_223637D3C((v390 > 1), v391 + 1, 1, v383);
              }

              *(v383 + 2) = v391 + 1;
              *&v383[16 * v391 + 32] = v389;
              v382 = v532;
              if (v531 != v385)
              {
                goto LABEL_274;
              }

              goto LABEL_286;
            }

            v384 += 8;
            ++v385;
            if (v533 == v381)
            {
              v383 = v534;
              goto LABEL_286;
            }
          }

          goto LABEL_356;
        }

        v347 = v255[2].isa;
        if (!v347)
        {
          v350 = MEMORY[0x277D84F90];
LABEL_251:
          v359 = *(v350 + 2);
          *&v534 = v350;
          if (v359)
          {
            v360 = 0;
            v532 = v359;
            *&v533 = v523 + 8;
            v361 = v350 + 40;
            v513 = &v359[-1].isa + 7;
            v530 = v350 + 40;
            v531 = MEMORY[0x277D84F90];
LABEL_253:
            v362 = &v361[16 * v360];
            v363 = v360;
            while (v363 < *(v534 + 16))
            {
              v364 = *(v362 - 1);
              v365 = *v362;
              v360 = (&v363->isa + 1);
              *&v538 = v364;
              *(&v538 + 1) = v365;

              v366 = v535;
              sub_223727188();
              sub_223637E48();
              v367 = sub_22372B3B8();
              v369 = v368;
              (*v533)(v366, v536);

              v370 = HIBYTE(v369) & 0xF;
              if ((v369 & 0x2000000000000000) == 0)
              {
                v370 = v367 & 0xFFFFFFFFFFFFLL;
              }

              if (v370)
              {
                v371 = v531;
                v372 = swift_isUniquelyReferenced_nonNull_native();
                v537[0] = v371;
                if ((v372 & 1) == 0)
                {
                  sub_2236387B4(0, *(v371 + 2) + 1, 1);
                  v371 = v537[0];
                }

                v374 = *(v371 + 2);
                v373 = *(v371 + 3);
                if (v374 >= v373 >> 1)
                {
                  sub_2236387B4((v373 > 1), v374 + 1, 1);
                  v371 = v537[0];
                }

                *(v371 + 2) = v374 + 1;
                v531 = v371;
                v375 = &v371[16 * v374];
                *(v375 + 4) = v364;
                *(v375 + 5) = v365;
                v361 = v530;
                if (v513 != v363)
                {
                  goto LABEL_253;
                }

                goto LABEL_267;
              }

              v362 += 16;
              v363 = (v363 + 1);
              if (v532 == v360)
              {
                goto LABEL_267;
              }
            }

            goto LABEL_357;
          }

          v531 = MEMORY[0x277D84F90];
LABEL_267:

          *&v538 = v531;
          v345 = sub_22372AFA8();
          v346 = v376;

          v246 = v526;
          v247 = v529;
          goto LABEL_268;
        }

        v348 = 0;
        v349 = v255 + 4;
        *&v533 = v255[2];
        v531 = v347 - 1;
        v350 = MEMORY[0x277D84F90];
        v532 = v255 + 4;
LABEL_239:
        *&v534 = v350;
        v351 = &v349[8 * v348];
        v352 = v348;
        while (v352 < v255[2].isa)
        {
          v353 = *&v351[2].isa;
          v355 = *&v351[4].isa;
          v354 = *&v351[6].isa;
          v538 = *&v351->isa;
          *v539 = v353;
          *&v539[16] = v355;
          *&v539[32] = v354;
          v356 = v355;
          v348 = v352 + 1;
          sub_223634890(&v538, v537, &qword_27D08F7F8, &qword_2237325E8);

          if (*(&v356 + 1))
          {
            v350 = v534;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v350 = sub_223637D3C(0, *(v350 + 2) + 1, 1, v350);
            }

            v349 = v532;
            v358 = *(v350 + 2);
            v357 = *(v350 + 3);
            if (v358 >= v357 >> 1)
            {
              v350 = sub_223637D3C((v357 > 1), v358 + 1, 1, v350);
            }

            *(v350 + 2) = v358 + 1;
            *&v350[16 * v358 + 32] = v356;
            if (v531 != v352)
            {
              goto LABEL_239;
            }

            goto LABEL_251;
          }

          v351 += 8;
          ++v352;
          if (v533 == v348)
          {
            v350 = v534;
            goto LABEL_251;
          }
        }

        goto LABEL_354;
      }

      v313 = v255[2].isa;
      if (!v313)
      {
        v316 = MEMORY[0x277D84F90];
LABEL_216:
        v325 = *(v316 + 2);
        *&v534 = v316;
        if (v325)
        {
          v326 = 0;
          v532 = v325;
          *&v533 = v523 + 8;
          v327 = v316 + 40;
          v513 = &v325[-1].isa + 7;
          v530 = v316 + 40;
          v531 = MEMORY[0x277D84F90];
LABEL_218:
          v328 = &v327[16 * v326];
          v329 = v326;
          while (v329 < *(v534 + 16))
          {
            v330 = *(v328 - 1);
            v331 = *v328;
            v326 = (&v329->isa + 1);
            *&v538 = v330;
            *(&v538 + 1) = v331;

            v332 = v535;
            sub_223727188();
            sub_223637E48();
            v333 = sub_22372B3B8();
            v335 = v334;
            (*v533)(v332, v536);

            v336 = HIBYTE(v335) & 0xF;
            if ((v335 & 0x2000000000000000) == 0)
            {
              v336 = v333 & 0xFFFFFFFFFFFFLL;
            }

            if (v336)
            {
              v337 = v531;
              v338 = swift_isUniquelyReferenced_nonNull_native();
              v537[0] = v337;
              if ((v338 & 1) == 0)
              {
                sub_2236387B4(0, *(v337 + 2) + 1, 1);
                v337 = v537[0];
              }

              v340 = *(v337 + 2);
              v339 = *(v337 + 3);
              if (v340 >= v339 >> 1)
              {
                sub_2236387B4((v339 > 1), v340 + 1, 1);
                v337 = v537[0];
              }

              *(v337 + 2) = v340 + 1;
              v531 = v337;
              v341 = &v337[16 * v340];
              *(v341 + 4) = v330;
              *(v341 + 5) = v331;
              v327 = v530;
              if (v513 != v329)
              {
                goto LABEL_218;
              }

              goto LABEL_232;
            }

            v328 += 16;
            v329 = (v329 + 1);
            if (v532 == v326)
            {
              goto LABEL_232;
            }
          }

          goto LABEL_355;
        }

        v531 = MEMORY[0x277D84F90];
LABEL_232:

        *&v538 = v531;
        v342 = sub_22372AFA8();
        v344 = v343;

        v544 = v342;
        v545 = v344;
        v246 = v526;
        v247 = v529;
        goto LABEL_233;
      }

      v314 = 0;
      v315 = v255 + 4;
      *&v533 = v255[2];
      v531 = v313 - 1;
      v316 = MEMORY[0x277D84F90];
      v532 = v255 + 4;
LABEL_204:
      *&v534 = v316;
      v317 = &v315[8 * v314];
      v318 = v314;
      while (v318 < v255[2].isa)
      {
        v320 = *&v317[4].isa;
        v319 = *&v317[6].isa;
        v321 = *&v317[2].isa;
        v538 = *&v317->isa;
        *v539 = v321;
        *&v539[16] = v320;
        *&v539[32] = v319;
        v314 = v318 + 1;
        v322 = v321;
        sub_223634890(&v538, v537, &qword_27D08F7F8, &qword_2237325E8);

        if (*(&v322 + 1))
        {
          v316 = v534;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v316 = sub_223637D3C(0, *(v316 + 2) + 1, 1, v316);
          }

          v324 = *(v316 + 2);
          v323 = *(v316 + 3);
          if (v324 >= v323 >> 1)
          {
            v316 = sub_223637D3C((v323 > 1), v324 + 1, 1, v316);
          }

          *(v316 + 2) = v324 + 1;
          *&v316[16 * v324 + 32] = v322;
          v315 = v532;
          if (v531 != v318)
          {
            goto LABEL_204;
          }

          goto LABEL_216;
        }

        v317 += 8;
        ++v318;
        if (v533 == v314)
        {
          v316 = v534;
          goto LABEL_216;
        }
      }

      goto LABEL_352;
    }

    v280 = v255[2].isa;
    if (!v280)
    {
      v283 = MEMORY[0x277D84F90];
LABEL_181:
      v294 = *(v283 + 2);
      *&v534 = v283;
      if (v294)
      {
        v295 = 0;
        v532 = v294;
        *&v533 = v523 + 8;
        v296 = v283 + 40;
        v513 = &v294[-1].isa + 7;
        v530 = v283 + 40;
        v531 = MEMORY[0x277D84F90];
LABEL_183:
        v297 = &v296[16 * v295];
        v298 = v295;
        while (v298 < *(v534 + 16))
        {
          v299 = *(v297 - 1);
          v300 = *v297;
          v295 = (&v298->isa + 1);
          *&v538 = v299;
          *(&v538 + 1) = v300;

          v301 = v535;
          sub_223727188();
          sub_223637E48();
          v302 = sub_22372B3B8();
          v304 = v303;
          (*v533)(v301, v536);

          v305 = HIBYTE(v304) & 0xF;
          if ((v304 & 0x2000000000000000) == 0)
          {
            v305 = v302 & 0xFFFFFFFFFFFFLL;
          }

          if (v305)
          {
            v306 = v531;
            v307 = swift_isUniquelyReferenced_nonNull_native();
            v537[0] = v306;
            if ((v307 & 1) == 0)
            {
              sub_2236387B4(0, *(v306 + 2) + 1, 1);
              v306 = v537[0];
            }

            v309 = *(v306 + 2);
            v308 = *(v306 + 3);
            if (v309 >= v308 >> 1)
            {
              sub_2236387B4((v308 > 1), v309 + 1, 1);
              v306 = v537[0];
            }

            *(v306 + 2) = v309 + 1;
            v531 = v306;
            v310 = &v306[16 * v309];
            *(v310 + 4) = v299;
            *(v310 + 5) = v300;
            v296 = v530;
            if (v513 != v298)
            {
              goto LABEL_183;
            }

            goto LABEL_197;
          }

          v297 += 16;
          v298 = (v298 + 1);
          if (v532 == v295)
          {
            goto LABEL_197;
          }
        }

        goto LABEL_353;
      }

      v531 = MEMORY[0x277D84F90];
LABEL_197:

      *&v538 = v531;
      v278 = sub_22372AFA8();
      v279 = v311;

      v246 = v526;
      v247 = v529;
      goto LABEL_198;
    }

    v281 = 0;
    v282 = v255 + 4;
    *&v533 = v255[2];
    v531 = v280 - 1;
    v283 = MEMORY[0x277D84F90];
    v532 = v255 + 4;
LABEL_168:
    *&v534 = v283;
    v284 = &v282[8 * v281];
    v285 = v281;
    while (v285 < v255[2].isa)
    {
      v287 = *&v284[4].isa;
      v286 = *&v284[6].isa;
      v288 = *&v284[2].isa;
      v538 = *&v284->isa;
      *v539 = v288;
      *&v539[16] = v287;
      *&v539[32] = v286;
      v289 = v538;
      v281 = v285 + 1;
      sub_223634890(&v538, v537, &qword_27D08F7F8, &qword_2237325E8);

      if (*(&v289 + 1))
      {
        v283 = v534;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v283 = sub_223637D3C(0, *(v283 + 2) + 1, 1, v283);
        }

        v282 = v532;
        v291 = *(v283 + 2);
        v290 = *(v283 + 3);
        if (v291 >= v290 >> 1)
        {
          v283 = sub_223637D3C((v290 > 1), v291 + 1, 1, v283);
        }

        *(v283 + 2) = v291 + 1;
        *&v283[16 * v291 + 32] = v289;
        if (v531 != v285)
        {
          goto LABEL_168;
        }

        goto LABEL_181;
      }

      v284 += 8;
      ++v285;
      if (v533 == v281)
      {
        v283 = v534;
        goto LABEL_181;
      }
    }

LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v537[0] = MEMORY[0x277D84F90];
  v256 = v253;

  sub_223634A90(0, v254 & ~(v254 >> 63), 0);
  if ((v254 & 0x8000000000000000) == 0)
  {
    v257 = 0;
    v258 = v256;
    v530 = (v256 & 0xC000000000000001);
    v531 = v254;
    v255 = v537[0];
    v532 = v258;
    while (1)
    {
      v259 = v530 ? MEMORY[0x223DE7ED0](v257) : v258[v257 + 4].isa;
      v260 = v259;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v261 = v260;
        sub_22370E3E0(&v538);
        goto LABEL_150;
      }

      objc_opt_self();
      v264 = swift_dynamicCastObjCClass();
      if (!v264)
      {

        v262 = 0;
        v263 = 0;
LABEL_163:
        v265 = 0;
        v533 = 0u;
        v534 = 0u;
        goto LABEL_151;
      }

      v270 = v260;
      v271 = [v264 message];
      if (v271)
      {
        v272 = v271;
        v262 = sub_22372AFE8();
        v263 = v273;
      }

      else
      {
        v262 = 0;
        v263 = 0;
      }

      v274 = [v264 message];
      if (!v274)
      {

        v264 = 0;
        goto LABEL_163;
      }

      v275 = v274;
      v264 = sub_22372AFE8();
      v277 = v276;

      v265 = 0;
      v533 = 0u;
      v534 = v277;
LABEL_151:
      v537[0] = v255;
      v267 = v255[2].isa;
      v266 = v255[3].isa;
      if (v267 >= v266 >> 1)
      {
        sub_223634A90((v266 > 1), v267 + 1, 1);
        v255 = v537[0];
      }

      ++v257;
      v255[2].isa = (v267 + 1);
      v268 = &v255[8 * v267];
      v268[4].isa = v262;
      v268[5].isa = v263;
      v268[6].isa = v264;
      v269 = v533;
      *&v268[7].isa = v534;
      *&v268[9].isa = v269;
      v268[11].isa = v265;
      v258 = v532;
      v246 = v526;
      v247 = v529;
      if (v531 == v257)
      {

        goto LABEL_164;
      }
    }

    v261 = v260;
    sub_223634AB0(&v538);
LABEL_150:
    v263 = *(&v538 + 1);
    v262 = v538;
    v264 = *v539;
    v533 = *&v539[24];
    v534 = *&v539[8];
    v265 = *&v539[40];

    goto LABEL_151;
  }

  __break(1u);
LABEL_362:
  swift_once();
LABEL_338:
  v468 = sub_22372AC98();
  __swift_project_value_buffer(v468, qword_28132B680);
  v469 = v515;
  v470 = *(v516 + 16);
  v471 = v499;
  v470(v499, v514, v515);
  v472 = v529;

  v473 = sub_22372AC88();
  v474 = sub_22372B268();

  LODWORD(v531) = v474;
  v532 = v473;
  v475 = os_log_type_enabled(v473, v474);
  v536 = v470;
  if (v475)
  {
    v476 = v471;
    v477 = swift_slowAlloc();
    v530 = swift_slowAlloc();
    *&v538 = v530;
    *v477 = 136315394;
    *(v477 + 4) = sub_223623274(*(v472 + 16), *(v472 + 24), &v538);
    *(v477 + 12) = 2080;
    v470(v498, v476, v469);
    v478 = sub_22372B038();
    v480 = v479;
    v459 = *(v516 + 8);
    v459(v476, v469);
    v481 = sub_223623274(v478, v480, &v538);

    *(v477 + 14) = v481;
    v482 = v532;
    _os_log_impl(&dword_223620000, v532, v531, "Adding new request summary for requestId %s: %s", v477, 0x16u);
    v483 = v530;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v483, -1, -1);
    MEMORY[0x223DE8A80](v477, -1, -1);
  }

  else
  {

    v459 = *(v516 + 8);
    v459(v471, v469);
  }

  v467 = v469;
  v462 = v519;
LABEL_342:
  v536(v508, v514, v467);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v462 = sub_22363878C(0, v462[2] + 1, 1, v462);
  }

  v484 = v525;
  v486 = v462[2];
  v485 = v462[3];
  if (v486 >= v485 >> 1)
  {
    v462 = sub_22363878C((v485 > 1), v486 + 1, 1, v462);
  }

  v462[2] = v486 + 1;
  v487 = v515;
  (v533)(v462 + ((*(v516 + 80) + 32) & ~*(v516 + 80)) + *(v516 + 72) * v486, v508, v515);
  __swift_project_boxed_opaque_existential_1((v511 + 16), *(v511 + 40));
  *&v539[8] = &type metadata for RequestSummaryContainerImpl;
  *&v538 = v462;
  v488 = v504;
  v489 = v495;
  v501(v504, v502, v495);
  sub_22372A488();

  v494(v488, v489);
  v459(v514, v487);
  sub_223626478(v484, &qword_27D08F7F0, &qword_2237325E0);
  sub_223626478(&v538, &unk_27D08F750, &qword_22372C960);
  sub_223626478(v521, &qword_27D08F798, &qword_223731E90);

  return (*(v526 + 8))(v522, v524);
}

uint64_t sub_2236346D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.UserInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223634748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_223634890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2236348F8()
{
  result = qword_281328DC8;
  if (!qword_281328DC8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08EB98, &qword_22372DE50);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_281328DC8);
  }

  return result;
}

void *sub_22363495C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F800, &qword_2237325F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F8, &qword_2237325E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_223634A90(void *a1, int64_t a2, char a3)
{
  result = sub_22363495C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_223634AB0@<X0>(uint64_t *a1@<X8>)
{
  v182 = a1;
  v192 = sub_223727198();
  v185 = *(v192 - 8);
  MEMORY[0x28223BE20](v192, v2);
  v4 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 views];
  if (result)
  {
    v6 = result;
    sub_223630584(0, &qword_281328D00, 0x277D47140);
    v7 = sub_22372B128();

    if (v7 >> 62)
    {
      result = sub_22372B558();
      if (result)
      {
LABEL_4:
        if (result >= 1)
        {
          v8 = 0;
          v188 = v7 & 0xC000000000000001;
          v9 = MEMORY[0x277D84F90];
          v10 = MEMORY[0x277D84F90];
          v190 = MEMORY[0x277D84F90];
          v191 = MEMORY[0x277D84F90];
          v187 = v7;
          v189 = result;
          while (1)
          {
            if (v188)
            {
              v11 = MEMORY[0x223DE7ED0](v8, v7);
            }

            else
            {
              v11 = *(v7 + 8 * v8 + 32);
            }

            v12 = v11;
            objc_opt_self();
            v13 = swift_dynamicCastObjCClass();
            if (v13)
            {
              v14 = v13;
              v15 = v12;
            }

            else
            {
              objc_opt_self();
              v26 = swift_dynamicCastObjCClass();
              if (!v26 || (v14 = [v26 utteranceView]) == 0)
              {
                objc_opt_self();
                v27 = swift_dynamicCastObjCClass();
                if (v27 && (v28 = v27, v29 = v12, v30 = [v28 dialog], v29, v30))
                {
                  v31 = [v30 content];
                  if (!v31)
                  {

                    goto LABEL_9;
                  }

                  v32 = v31;
                  sub_22370E8FC(&v193);
                  v33 = v194;
                  v181 = v193;
                  v34 = v196;
                  v183 = v195;
                  v184 = v197;

                  if (v33)
                  {
                    v186 = v10;
                    v35 = v9;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v36 = v190;
                    }

                    else
                    {
                      v36 = sub_223637D3C(0, *(v190 + 2) + 1, 1, v190);
                    }

                    v38 = *(v36 + 2);
                    v37 = *(v36 + 3);
                    if (v38 >= v37 >> 1)
                    {
                      v36 = sub_223637D3C((v37 > 1), v38 + 1, 1, v36);
                    }

                    *(v36 + 2) = v38 + 1;
                    v190 = v36;
                    v39 = &v36[16 * v38];
                    *(v39 + 4) = v181;
                    *(v39 + 5) = v33;
                    v9 = v35;
                    v10 = v186;
                  }

                  if (v34)
                  {
                    v40 = v34;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v7 = v187;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v42 = v191;
                    }

                    else
                    {
                      v42 = sub_223637D3C(0, *(v191 + 2) + 1, 1, v191);
                    }

                    v44 = *(v42 + 2);
                    v43 = *(v42 + 3);
                    v191 = v42;
                    if (v44 >= v43 >> 1)
                    {
                      v191 = sub_223637D3C((v43 > 1), v44 + 1, 1, v191);
                    }

                    v45 = v191;
                    *(v191 + 2) = v44 + 1;
                    v46 = &v45[16 * v44];
                    *(v46 + 4) = v183;
                    *(v46 + 5) = v40;
                    goto LABEL_9;
                  }
                }

                else
                {
                  v75 = [v12 dialog];
                  if (!v75)
                  {

                    goto LABEL_9;
                  }

                  v76 = v75;
                  v77 = [v75 content];
                  if (!v77)
                  {

                    goto LABEL_9;
                  }

                  v186 = v10;
                  v184 = v9;
                  v78 = v77;
                  sub_22370E8FC(&v193);
                  v80 = v193;
                  v79 = v194;
                  v82 = v195;
                  v81 = v196;
                  v181 = v197;

                  v183 = v81;
                  if (v79)
                  {
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v83 = v190;
                    }

                    else
                    {
                      v83 = sub_223637D3C(0, *(v190 + 2) + 1, 1, v190);
                    }

                    v85 = *(v83 + 2);
                    v84 = *(v83 + 3);
                    if (v85 >= v84 >> 1)
                    {
                      v83 = sub_223637D3C((v84 > 1), v85 + 1, 1, v83);
                    }

                    *(v83 + 2) = v85 + 1;
                    v190 = v83;
                    v86 = &v83[16 * v85];
                    *(v86 + 4) = v80;
                    *(v86 + 5) = v79;
                    v81 = v183;
                  }

                  v9 = v184;
                  if (v81)
                  {
                    v87 = swift_isUniquelyReferenced_nonNull_native();
                    v10 = v186;
                    v7 = v187;
                    if (v87)
                    {
                      v88 = v191;
                    }

                    else
                    {
                      v88 = sub_223637D3C(0, *(v191 + 2) + 1, 1, v191);
                    }

                    v90 = *(v88 + 2);
                    v89 = *(v88 + 3);
                    v191 = v88;
                    if (v90 >= v89 >> 1)
                    {
                      v191 = sub_223637D3C((v89 > 1), v90 + 1, 1, v191);
                    }

                    v91 = v191;
                    *(v191 + 2) = v90 + 1;
                    v92 = &v91[16 * v90];
                    v93 = v183;
                    *(v92 + 4) = v82;
                    *(v92 + 5) = v93;
                    goto LABEL_9;
                  }

                  v10 = v186;
                }

                goto LABEL_8;
              }
            }

            v16 = [v14 text];
            if (v16)
            {
              v17 = v16;
              v18 = sub_22372AFE8();
              v20 = v19;

              v21 = HIBYTE(v20) & 0xF;
              if ((v20 & 0x2000000000000000) == 0)
              {
                v21 = v18 & 0xFFFFFFFFFFFFLL;
              }

              if (v21)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v22 = v190;
                }

                else
                {
                  v22 = sub_223637D3C(0, *(v190 + 2) + 1, 1, v190);
                }

                v24 = *(v22 + 2);
                v23 = *(v22 + 3);
                if (v24 >= v23 >> 1)
                {
                  v22 = sub_223637D3C((v23 > 1), v24 + 1, 1, v22);
                }

                *(v22 + 2) = v24 + 1;
                v190 = v22;
                v25 = &v22[16 * v24];
                *(v25 + 4) = v18;
                *(v25 + 5) = v20;
              }

              else
              {
              }
            }

            v47 = v14;
            v48 = [v47 speakableText];
            if (v48)
            {
              v49 = v48;
              v50 = sub_22372AFE8();
              v52 = v51;

              v53 = HIBYTE(v52) & 0xF;
              if ((v52 & 0x2000000000000000) == 0)
              {
                v53 = v50 & 0xFFFFFFFFFFFFLL;
              }

              if (v53)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v54 = v191;
                }

                else
                {
                  v54 = sub_223637D3C(0, *(v191 + 2) + 1, 1, v191);
                }

                v56 = *(v54 + 2);
                v55 = *(v54 + 3);
                if (v56 >= v55 >> 1)
                {
                  v54 = sub_223637D3C((v55 > 1), v56 + 1, 1, v54);
                }

                *(v54 + 2) = v56 + 1;
                v191 = v54;
                v57 = &v54[16 * v56];
                *(v57 + 4) = v50;
                *(v57 + 5) = v52;
              }

              else
              {
              }
            }

            v58 = [v47 redactedText];
            if (v58)
            {
              v59 = v58;
              v60 = sub_22372AFE8();
              v62 = v61;

              v63 = HIBYTE(v62) & 0xF;
              if ((v62 & 0x2000000000000000) == 0)
              {
                v63 = v60 & 0xFFFFFFFFFFFFLL;
              }

              if (v63)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v10 = sub_223637D3C(0, *(v10 + 2) + 1, 1, v10);
                }

                v65 = *(v10 + 2);
                v64 = *(v10 + 3);
                if (v65 >= v64 >> 1)
                {
                  v10 = sub_223637D3C((v64 > 1), v65 + 1, 1, v10);
                }

                *(v10 + 2) = v65 + 1;
                v66 = &v10[16 * v65];
                *(v66 + 4) = v60;
                *(v66 + 5) = v62;
              }

              else
              {
              }
            }

            v67 = [v47 redactedSpeakableText];

            if (v67)
            {
              v68 = sub_22372AFE8();
              v70 = v69;

              v71 = HIBYTE(v70) & 0xF;
              if ((v70 & 0x2000000000000000) == 0)
              {
                v71 = v68 & 0xFFFFFFFFFFFFLL;
              }

              if (v71)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v9 = sub_223637D3C(0, *(v9 + 2) + 1, 1, v9);
                }

                v73 = *(v9 + 2);
                v72 = *(v9 + 3);
                if (v73 >= v72 >> 1)
                {
                  v9 = sub_223637D3C((v72 > 1), v73 + 1, 1, v9);
                }

                *(v9 + 2) = v73 + 1;
                v74 = &v9[16 * v73];
                *(v74 + 4) = v68;
                *(v74 + 5) = v70;
                goto LABEL_8;
              }
            }

LABEL_8:
            v7 = v187;
LABEL_9:
            if (v189 == ++v8)
            {
              goto LABEL_99;
            }
          }
        }

        goto LABEL_169;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
    v190 = MEMORY[0x277D84F90];
    v191 = MEMORY[0x277D84F90];
LABEL_99:

    v94 = v190;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v10 = MEMORY[0x277D84F90];
    v191 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
  }

  v186 = v10;
  v184 = v9;
  v95 = *(v94 + 2);
  v189 = v95;
  v190 = v94;
  if (v95)
  {
    v96 = 0;
    v97 = (v185 + 8);
    v98 = v94 + 40;
    v183 = v95 - 1;
    v99 = MEMORY[0x277D84F90];
    v187 = (v94 + 40);
    do
    {
      v188 = v99;
      v100 = &v98[16 * v96];
      v101 = v96;
      while (1)
      {
        if (v101 >= *(v94 + 2))
        {
          __break(1u);
          goto LABEL_166;
        }

        v102 = *(v100 - 1);
        v103 = *v100;
        v96 = v101 + 1;
        v193 = v102;
        v194 = v103;

        sub_223727188();
        sub_223637E48();
        v104 = sub_22372B3B8();
        v106 = v105;
        (*v97)(v4, v192);

        v107 = HIBYTE(v106) & 0xF;
        if ((v106 & 0x2000000000000000) == 0)
        {
          v107 = v104 & 0xFFFFFFFFFFFFLL;
        }

        if (v107)
        {
          break;
        }

        v100 += 16;
        ++v101;
        v94 = v190;
        if (v189 == v96)
        {
          v99 = v188;
          goto LABEL_116;
        }
      }

      v99 = v188;
      result = swift_isUniquelyReferenced_nonNull_native();
      v198 = v99;
      if ((result & 1) == 0)
      {
        result = sub_2236387B4(0, *(v99 + 16) + 1, 1);
        v99 = v198;
      }

      v109 = *(v99 + 16);
      v108 = *(v99 + 24);
      if (v109 >= v108 >> 1)
      {
        result = sub_2236387B4((v108 > 1), v109 + 1, 1);
        v99 = v198;
      }

      *(v99 + 16) = v109 + 1;
      v110 = v99 + 16 * v109;
      *(v110 + 32) = v102;
      *(v110 + 40) = v103;
      v94 = v190;
      v98 = v187;
    }

    while (v183 != v101);
  }

  else
  {
    v99 = MEMORY[0x277D84F90];
  }

LABEL_116:
  v193 = v99;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB98, &qword_22372DE50);
  v187 = sub_2236348F8();
  v188 = v111;
  v181 = sub_22372AFA8();
  v180 = v112;

  v113 = v191;
  v114 = *(v191 + 2);
  if (v114)
  {
    v115 = 0;
    v116 = (v185 + 8);
    v117 = v191 + 40;
    v178 = (v114 - 1);
    v118 = MEMORY[0x277D84F90];
    v179 = v191 + 40;
LABEL_118:
    v183 = v118;
    v119 = &v117[16 * v115];
    v120 = v115;
    while (v120 < *(v113 + 2))
    {
      v122 = *(v119 - 1);
      v121 = *v119;
      v115 = v120 + 1;
      v193 = v122;
      v194 = v121;

      sub_223727188();
      sub_223637E48();
      v123 = sub_22372B3B8();
      v125 = v124;
      (*v116)(v4, v192);

      v126 = HIBYTE(v125) & 0xF;
      if ((v125 & 0x2000000000000000) == 0)
      {
        v126 = v123 & 0xFFFFFFFFFFFFLL;
      }

      if (v126)
      {
        v127 = v183;
        result = swift_isUniquelyReferenced_nonNull_native();
        v118 = v127;
        v198 = v127;
        if ((result & 1) == 0)
        {
          result = sub_2236387B4(0, *(v127 + 16) + 1, 1);
          v118 = v198;
        }

        v129 = *(v118 + 16);
        v128 = *(v118 + 24);
        if (v129 >= v128 >> 1)
        {
          result = sub_2236387B4((v128 > 1), v129 + 1, 1);
          v118 = v198;
        }

        *(v118 + 16) = v129 + 1;
        v130 = v118 + 16 * v129;
        *(v130 + 32) = v122;
        *(v130 + 40) = v121;
        v113 = v191;
        v117 = v179;
        if (v178 != v120)
        {
          goto LABEL_118;
        }

        goto LABEL_132;
      }

      v119 += 16;
      ++v120;
      v113 = v191;
      if (v114 == v115)
      {
        v118 = v183;
        goto LABEL_132;
      }
    }

LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  v118 = MEMORY[0x277D84F90];
LABEL_132:
  v179 = v114;
  v193 = v118;
  v178 = sub_22372AFA8();
  v177 = v131;

  if (v189)
  {
    v132 = 0;
    v133 = (v185 + 8);
    v134 = v190;
    v135 = v190 + 40;
    v136 = v189;
    v175 = (v189 - 1);
    v137 = MEMORY[0x277D84F90];
    v176 = v190 + 40;
LABEL_134:
    v183 = v137;
    v138 = &v135[16 * v132];
    v139 = v132;
    while (v139 < *(v134 + 2))
    {
      v141 = *(v138 - 1);
      v140 = *v138;
      v132 = v139 + 1;
      v193 = v141;
      v194 = v140;

      sub_223727188();
      sub_223637E48();
      v142 = sub_22372B3B8();
      v144 = v143;
      (*v133)(v4, v192);

      v145 = HIBYTE(v144) & 0xF;
      if ((v144 & 0x2000000000000000) == 0)
      {
        v145 = v142 & 0xFFFFFFFFFFFFLL;
      }

      if (v145)
      {
        v146 = v183;
        result = swift_isUniquelyReferenced_nonNull_native();
        v137 = v146;
        v198 = v146;
        if ((result & 1) == 0)
        {
          result = sub_2236387B4(0, *(v146 + 16) + 1, 1);
          v137 = v198;
        }

        v148 = *(v137 + 16);
        v147 = *(v137 + 24);
        if (v148 >= v147 >> 1)
        {
          result = sub_2236387B4((v147 > 1), v148 + 1, 1);
          v137 = v198;
        }

        *(v137 + 16) = v148 + 1;
        v149 = v137 + 16 * v148;
        *(v149 + 32) = v141;
        *(v149 + 40) = v140;
        v134 = v190;
        v135 = v176;
        if (v175 != v139)
        {
          goto LABEL_134;
        }

        goto LABEL_148;
      }

      v138 += 16;
      ++v139;
      v134 = v190;
      if (v136 == v132)
      {
        v137 = v183;
        goto LABEL_148;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    return result;
  }

  v137 = MEMORY[0x277D84F90];
LABEL_148:
  v193 = v137;
  v183 = sub_22372AFA8();
  v176 = v150;

  v151 = v179;
  if (v179)
  {
    v152 = 0;
    v153 = (v185 + 8);
    v154 = v191 + 40;
    v175 = v179 - 1;
    v189 = MEMORY[0x277D84F90];
    v185 = v191 + 40;
LABEL_150:
    v155 = &v154[16 * v152];
    v156 = v152;
    while (v156 < *(v191 + 2))
    {
      v157 = *(v155 - 1);
      v158 = *v155;
      v152 = v156 + 1;
      v193 = v157;
      v194 = v158;

      sub_223727188();
      sub_223637E48();
      v159 = sub_22372B3B8();
      v161 = v160;
      (*v153)(v4, v192);

      v162 = HIBYTE(v161) & 0xF;
      if ((v161 & 0x2000000000000000) == 0)
      {
        v162 = v159 & 0xFFFFFFFFFFFFLL;
      }

      if (v162)
      {
        v163 = v189;
        result = swift_isUniquelyReferenced_nonNull_native();
        v164 = v163;
        v198 = v163;
        if ((result & 1) == 0)
        {
          result = sub_2236387B4(0, *(v163 + 16) + 1, 1);
          v164 = v198;
        }

        v166 = *(v164 + 16);
        v165 = *(v164 + 24);
        if (v166 >= v165 >> 1)
        {
          result = sub_2236387B4((v165 > 1), v166 + 1, 1);
          v164 = v198;
        }

        *(v164 + 16) = v166 + 1;
        v189 = v164;
        v167 = v164 + 16 * v166;
        *(v167 + 32) = v157;
        *(v167 + 40) = v158;
        v154 = v185;
        if (v175 != v156)
        {
          goto LABEL_150;
        }

        goto LABEL_164;
      }

      v155 += 16;
      ++v156;
      if (v151 == v152)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_168;
  }

  v189 = MEMORY[0x277D84F90];
LABEL_164:

  v193 = v189;
  v168 = sub_22372AFA8();
  v170 = v169;

  v171 = v182;
  v172 = v180;
  *v182 = v181;
  v171[1] = v172;
  v173 = v177;
  v171[2] = v178;
  v171[3] = v173;
  v174 = v176;
  v171[4] = v183;
  v171[5] = v174;
  v171[6] = v168;
  v171[7] = v170;
  return result;
}

uint64_t sub_223635AD4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_223635B24()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737720, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_223635D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_223635B24, 0, 0);
}

void *sub_223635D6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732040;
}

uint64_t sub_223635DD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_223635E14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223635EBC(a1, v5, v4);
}

uint64_t sub_223635EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

uint64_t sub_223635FF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223636084(a1);
}

uint64_t sub_223636084(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22362DA4C, v1, 0);
}

id sub_2236361D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737350, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

uint64_t sub_223636604()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236366C0(v2, v3, v4, v5, v6);
}

uint64_t sub_2236366C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236366E8, 0, 0);
}

uint64_t sub_2236366E8()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737350, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_223637BE0;
  v9 = *(v0 + 48);

  return v11(v9);
}

void *sub_223636908(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731E88;
}

uint64_t sub_223636978(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223636A20(a1, v5, v4);
}

uint64_t sub_223636A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, ObjectType, a3);
}

uint64_t sub_223636B54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2236242EC;

  return sub_223636BE8(a1);
}

uint64_t sub_223636BE8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_223636DBC, v1, 0);
}

uint64_t sub_223636C08(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  swift_beginAccess();
  v11 = a1;
  MEMORY[0x223DE7B50]();
  if (*((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22372B148();
  }

  sub_22372B158();
  swift_endAccess();
  v12 = sub_22372A098();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v9, a2, v12);
  (*(v13 + 56))(v9, 0, 1, v12);
  v14 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource;
  swift_beginAccess();
  sub_223630DB8(v9, v3 + v14);
  return swift_endAccess();
}

uint64_t sub_223636DBC()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "ChildRequestController received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = v0[8];

  sub_223623934(*(v10 + 192) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_requestStateInfoManager, (v0 + 2));
  v11 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = sub_223729D38();
  v14 = v13;
  v15 = sub_223727ED8();
  v16 = *v11;
  v17 = *(*v11 + 24);
  v18 = swift_task_alloc();
  v18[2] = v12;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;
  v19 = swift_task_alloc();
  *(v19 + 16) = sub_223645988;
  *(v19 + 24) = v18;
  os_unfair_lock_lock(v17 + 4);
  sub_223637034(v20);
  os_unfair_lock_unlock(v17 + 4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v21 = v0[1];

  return v21();
}

void sub_22363704C(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F930, &qword_223733380);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v49 = &v48 - v8;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);

  sub_2236377FC(a3);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();

  sub_223637810(a3);
  v12 = os_log_type_enabled(v10, v11);
  v51 = a3;
  v50 = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53[0] = v14;
    *v13 = 136315650;
    *(v13 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v53);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_223623274(v54, a2, v53);
    *(v13 + 22) = 2080;
    v52[0] = a3;
    sub_2236377FC(a3);
    v15 = sub_22372B038();
    v17 = sub_223623274(v15, v16, v53);

    *(v13 + 24) = v17;
    _os_log_impl(&dword_223620000, v10, v11, "%s ProcessingState: requestId: %s, with state: %s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v14, -1, -1);
    MEMORY[0x223DE8A80](v13, -1, -1);
  }

  v18 = sub_22372AC88();
  v19 = sub_22372B268();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v53[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v53);
    *(v20 + 12) = 2080;
    swift_beginAccess();
    type metadata accessor for RequestState(0);

    v22 = sub_22372AF68();
    v24 = v23;

    v25 = sub_223623274(v22, v24, v53);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_223620000, v18, v19, "%s Pre updateProcessingState processing: %s ", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v20, -1, -1);
  }

  v26 = v51;
  if ((v51 - 1) <= 1)
  {
    v27 = sub_22371A788(v53);
    v28 = sub_22371BA00(v52, v54, v50);
    v30 = v29;
    v31 = type metadata accessor for RequestState(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {
      v32 = *v30;
      v33 = v51;
      *v30 = v51;
      sub_2236377FC(v33);
      sub_223637810(v32);
    }

    (v28)(v52, 0);
    (v27)(v53, 0);
LABEL_18:

    v36 = sub_22372AC88();
    v37 = sub_22372B268();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v52[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v52);
      *(v38 + 12) = 2080;
      swift_beginAccess();
      type metadata accessor for RequestState(0);

      v40 = sub_22372AF68();
      v42 = v41;

      v43 = sub_223623274(v40, v42, v52);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_223620000, v36, v37, "%s Post updateProcessingState processing: %s ", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v39, -1, -1);
      MEMORY[0x223DE8A80](v38, -1, -1);
    }

    return;
  }

  if (v51)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      swift_beginAccess();
      v34 = v26;
      v35 = v49;
      sub_223718E98(v54, v50, v49);
      sub_223626478(v35, &qword_27D08F930, &qword_223733380);
      swift_endAccess();
      sub_223637810(v26);
    }

    goto LABEL_18;
  }

  v44 = sub_22372AC88();
  v45 = sub_22372B278();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53[0] = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_223623274(0xD000000000000033, 0x8000000223738550, v53);
    _os_log_impl(&dword_223620000, v44, v45, "%s executionResult command is nil! ", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x223DE8A80](v47, -1, -1);
    MEMORY[0x223DE8A80](v46, -1, -1);
  }
}

id sub_2236377FC(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

void sub_223637810(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges15ProcessingStateO(unint64_t *a1)
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

uint64_t type metadata accessor for RequestState(uint64_t a1)
{
  result = qword_28132A390;
  if (!qword_28132A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2236378A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_223637928(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22372B408() + 1) & ~v6;
    while (1)
    {
      sub_22372B7A8();

      sub_22372B078();
      v11 = sub_22372B7C8();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

void *sub_223637B30(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483644)
  {
    *result = (a2 + 2);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_223637BE0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2236E2920;
  }

  else
  {
    v2 = sub_2236E28BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t objectdestroy_18Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

char *sub_223637D3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F808, &qword_2237325F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_223637E48()
{
  result = qword_281328E30;
  if (!qword_281328E30)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_281328E30);
  }

  return result;
}

uint64_t sub_223637EA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = a2[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
  }

  sub_22372A018();
  v11 = *a3;
  v10 = a3[1];
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
  }

  sub_22372A028();
  v14 = *a4;
  v13 = a4[1];
  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
  }

  sub_223729FF8();
  v17 = *a5;
  v16 = a5[1];
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
  }

  return sub_22372A008();
}

uint64_t sub_223637FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v32 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F798, &qword_223731E90);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7F0, &qword_2237325E0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v32 - v22;
  v24 = a5;

  sub_22372A118();
  v25 = sub_22372A138();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v23, a3, v25);
  (*(v26 + 56))(v23, 0, 1, v25);
  sub_22372A128();
  sub_223634890(v32, v19, &qword_27D08F798, &qword_223731E90);
  sub_22372A0D8();
  sub_22363831C(v15);
  v27 = sub_22372A098();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  sub_22372A0F8();
  sub_22372A0E8();
  v28 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  v29 = sub_2237287C8();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v11, a2 + v28, v29);
  (*(v30 + 56))(v11, 0, 1, v29);
  return sub_22372A108();
}

uint64_t sub_22363831C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource;
  swift_beginAccess();
  sub_223634890(v1 + v15, v14, &unk_27D08E9C0, &qword_223731E30);
  v16 = sub_22372A098();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) != 1)
  {
    return (*(v17 + 32))(a1, v14, v16);
  }

  v22 = a1;
  sub_223626478(v14, &unk_27D08E9C0, &qword_223731E30);
  v19 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  swift_beginAccess();
  sub_223634890(v1 + v19, v11, &unk_27D08E9C0, &qword_223731E30);
  if (v18(v11, 1, v16) != 1)
  {
    return (*(v17 + 32))(v22, v11, v16);
  }

  sub_223626478(v11, &unk_27D08E9C0, &qword_223731E30);
  v20 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route;
  swift_beginAccess();
  sub_2236F16E0(v1 + v20, v6, type metadata accessor for RequestInfo.RequestRoute);
  return sub_2236EFE0C(v6, v22);
}

void *sub_2236385B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2236387B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2236387D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2236387D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F808, &qword_2237325F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2236388F4(void *a1)
{
  v2 = v1;
  v110 = sub_22372A098();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v4);
  v109 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223729F08();
  v112 = *(v6 - 8);
  v113 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v102 - v20;
  v22 = a1;
  v23 = v2;
  v24 = v115;
  sub_2236361D4(a1, sub_223636908, 0);
  if (v24)
  {
    return;
  }

  v106 = v21;
  v107 = 0;
  v103 = v9;
  v104 = v18;
  v25 = v112;
  v26 = v113;
  v115 = v13;
  v27 = sub_223729D38();
  v29 = v28;
  v111 = v23;
  v30 = sub_22372A768();
  v105 = a1;
  if (v27 == v30 && v29 == v31)
  {

    v32 = v26;
    v33 = v25;
  }

  else
  {
    v34 = sub_22372B6E8();

    v32 = v26;
    v33 = v25;
    if ((v34 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v35 = qword_28132B888;
  v36 = v111;
  swift_beginAccess();
  v37 = v106;
  v33[13](v106, *MEMORY[0x277D5CF30], v32);
  (v33[7])(v37, 0, 1, v32);
  v38 = *(v10 + 48);
  v39 = v36 + v35;
  v40 = v37;
  v41 = v115;
  sub_223634890(v39, v115, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v40, v41 + v38, &qword_27D08E9D0, &qword_22372D1E0);
  v42 = v33[6];
  if (v42(v41, 1, v32) == 1)
  {
    sub_223626478(v40, &qword_27D08E9D0, &qword_22372D1E0);
    if (v42(v41 + v38, 1, v32) == 1)
    {
      sub_223626478(v41, &qword_27D08E9D0, &qword_22372D1E0);
      v22 = v105;
      goto LABEL_13;
    }

LABEL_11:
    sub_223626478(v41, &qword_27D08F740, &unk_223731DC0);
    return;
  }

  v43 = v104;
  sub_223634890(v41, v104, &qword_27D08E9D0, &qword_22372D1E0);
  if (v42(v41 + v38, 1, v32) == 1)
  {
    sub_223626478(v40, &qword_27D08E9D0, &qword_22372D1E0);
    (v33[1])(v43, v32);
    goto LABEL_11;
  }

  v44 = v41 + v38;
  v45 = v103;
  v33[4](v103, v44, v32);
  sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58], MEMORY[0x277D5CF60]);
  v46 = sub_22372AFC8();
  v47 = v33[1];
  v47(v45, v32);
  sub_223626478(v40, &qword_27D08E9D0, &qword_22372D1E0);
  v47(v43, v32);
  sub_223626478(v41, &qword_27D08E9D0, &qword_22372D1E0);
  v22 = v105;
  if ((v46 & 1) == 0)
  {
    return;
  }

LABEL_13:
  v48 = sub_223727ED8();
  if (!v48)
  {
    goto LABEL_42;
  }

  v49 = v48;
  if (qword_281328E58 != -1)
  {
LABEL_65:
    swift_once();
  }

  v50 = sub_22372AC98();
  __swift_project_value_buffer(v50, qword_28132B680);
  v51 = v22;
  v52 = v49;
  v53 = sub_22372AC88();
  v54 = sub_22372B268();

  v55 = os_log_type_enabled(v53, v54);
  v115 = v51;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v114[0] = v58;
    *v56 = 138412802;
    *(v56 + 4) = v52;
    *v57 = v49;
    v49 = 2080;
    *(v56 + 12) = 2080;
    v59 = v52;
    sub_223727EC8();
    v60 = sub_22372B038();
    v62 = sub_223623274(v60, v61, v114);

    *(v56 + 14) = v62;
    *(v56 + 22) = 2080;
    v63 = sub_223729D38();
    v65 = sub_223623274(v63, v64, v114);

    *(v56 + 24) = v65;
    _os_log_impl(&dword_223620000, v53, v54, "Adding aceCommand: %@ with executionSource: %s to request with requestId: %s", v56, 0x20u);
    sub_223626478(v57, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v58, -1, -1);
    MEMORY[0x223DE8A80](v56, -1, -1);
  }

  v66 = v111;
  v67 = qword_28132B870;
  swift_beginAccess();
  v106 = v67;
  v68 = *(v66 + v67);
  v112 = v52;
  v113 = v68 & 0xFFFFFFFFFFFFFF8;
  if (v68 >> 62)
  {
    v69 = sub_22372B558();
  }

  else
  {
    v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = -v69;
  v70 = 4;
  while (1)
  {
    if (v70 - v69 == 4)
    {

      v22 = v105;
      goto LABEL_42;
    }

    v71 = v70 - 4;
    if ((v68 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x223DE7ED0](v70 - 4, v68);
    }

    else
    {
      if (v71 >= *(v113 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v49 = *(v68 + 8 * v70);
    }

    v72 = *(v49 + 16);
    v73 = *(v49 + 24);
    if (v72 == sub_223729D38() && v73 == v74)
    {
      break;
    }

    v76 = sub_22372B6E8();

    if (v76)
    {
      goto LABEL_35;
    }

    ++v70;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_64;
    }
  }

LABEL_35:
  v77 = v110;
  v78 = v108;

  v79 = v111;
  v22 = v105;
  v80 = *&v106[v111];
  v81 = v109;
  if ((v80 & 0xC000000000000001) != 0)
  {

    MEMORY[0x223DE7ED0](v70 - 4, v80);
  }

  else
  {
    if (v71 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_70;
    }
  }

  sub_223727EC8();
  sub_223636C08(v112, v81);

  (*(v78 + 8))(v81, v77);
  v80 = *&v106[v79];
  if ((v80 & 0xC000000000000001) != 0)
  {

    v82 = MEMORY[0x223DE7ED0](v70 - 4, v80);

    goto LABEL_41;
  }

  if (v71 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v82 = *(v80 + 8 * v70);

LABEL_41:
  v83 = v112;
  sub_223630E28(v82);

LABEL_42:
  v84 = sub_223727ED8();
  if (!v84)
  {
    return;
  }

  if (*(v111 + qword_28132A1B0) == 1)
  {
    v85 = qword_28132B870;
    swift_beginAccess();
    v86 = *(v111 + v85);
    v80 = v111;
    if (!(v86 >> 62))
    {
      v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_46;
    }

LABEL_71:
    v87 = sub_22372B558();
LABEL_46:
    if (v87 >= 2 && *(v80 + qword_28132A1C8) == 1)
    {
      v88 = v80;
      v89 = sub_223727ED8();
      if (v89)
      {
        v90 = v89;
        objc_opt_self();
        v91 = swift_dynamicCastObjCClass();
        if (v91)
        {
          v92 = v91;
          if (qword_281328E58 != -1)
          {
            swift_once();
          }

          v93 = sub_22372AC98();
          __swift_project_value_buffer(v93, qword_28132B680);
          v94 = sub_22372AC88();
          v95 = sub_22372B268();
          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            *v96 = 0;
            _os_log_impl(&dword_223620000, v94, v95, "Got AddViews from supplemental child request as part of multi-request conjunction. Setting supplemental field", v96, 2u);
            v97 = v96;
            v88 = v111;
            MEMORY[0x223DE8A80](v97, -1, -1);
          }

          [v92 setSupplemental_];
          v80 = v88;
        }
      }
    }

    *(v80 + qword_28132A1C8) = 1;
    sub_2236E732C(v22);
    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v98 = sub_22372AC98();
  __swift_project_value_buffer(v98, qword_28132B680);
  v99 = sub_22372AC88();
  v100 = sub_22372B268();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    *v101 = 0;
    _os_log_impl(&dword_223620000, v99, v100, "Not handling FlowOutput here: output capturing is disabled by feature flag", v101, 2u);
    MEMORY[0x223DE8A80](v101, -1, -1);
  }
}

uint64_t sub_22363951C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483644)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = v5;
    }

    v7 = v6 - 1;
    if (v5 >= 2)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2236395EC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
  v0[12] = OBJC_IVAR____TtC24RequestDispatcherBridges29IntelligenceFlowSessionBridge_postponedExternalAgentEventPublishers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[13] = v3;
  v4 = *(v3 + 16);
  v0[14] = v4;
  if (v4)
  {
    v5 = v0[10];
    v6 = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
    v0[15] = OBJC_IVAR____TtC24RequestDispatcherBridges16SessionClientBox_userID;
    v0[16] = 0;

    sub_223623934(v7 + 32, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_2236742C4;
    v9 = v0[10];

    return sub_223646C78(v5 + v6, v9);
  }

  else
  {
    *(v0[11] + v0[12]) = MEMORY[0x277D84F90];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_223639740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236397B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_223639818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223639880()
{

  if (v0)
  {
    v1 = sub_22366FBE8;
  }

  else
  {
    v1 = sub_223639990;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}